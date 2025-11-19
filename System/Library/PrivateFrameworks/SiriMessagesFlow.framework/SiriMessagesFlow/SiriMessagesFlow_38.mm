uint64_t sub_267EB9E7C()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297B0, &unk_267EFE4E0);
  v1[5] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_2();

  return MEMORY[0x2822009F8](sub_267EB9F38, 0, 0);
}

uint64_t sub_267EB9F38()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC16SiriMessagesFlow47SendMessageGroupNeedsDisambiguationFlowStrategy_selectedGroupName);
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[5];
    v6 = v0[2];
    v5 = v0[3];
    sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
    v8 = sub_267EF4918();
    v9 = v7;
    v10 = sub_267D29C90(v8, v1);
    sub_267BA9F38(0, &qword_280229ED0, 0x277CD4188);
    v11 = v9;
    v12 = v10;
    sub_267EF4388();
    OUTLINED_FUNCTION_26_0();
    sub_267EF4508();

    v13 = *(v3 + 8);
    v14 = OUTLINED_FUNCTION_26_0();
    v15(v14);
  }

  else
  {
    v17 = v0[7];
    sub_267C266B0();
    swift_allocError();
    *v18 = 0xD000000000000016;
    v18[1] = 0x8000000267F167C0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_17();

  return v16();
}

uint64_t sub_267EBA0FC()
{
  OUTLINED_FUNCTION_12();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60) - 8) + 64);
  v1[36] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4228();
  v1[37] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[38] = v7;
  v9 = *(v8 + 64);
  v1[39] = OUTLINED_FUNCTION_2();
  v10 = sub_267EF53D8();
  v1[40] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[41] = v11;
  v13 = *(v12 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v14 = sub_267EF4158();
  v1[45] = v14;
  OUTLINED_FUNCTION_30_0(v14);
  v1[46] = v15;
  v17 = *(v16 + 64);
  v1[47] = OUTLINED_FUNCTION_2();

  return MEMORY[0x2822009F8](sub_267EBA294, 0, 0);
}

uint64_t sub_267EBA294()
{
  v55 = v0;
  v1 = v0[47];
  v52 = v0[44];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  sub_267EB9478(&OBJC_IVAR____TtC16SiriMessagesFlow47SendMessageGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  sub_267EF4908();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB88, &qword_267F02ED0);
  v5 = sub_267EF4698();
  sub_267DA874C(v5);

  v6 = sub_267EF3998();
  OUTLINED_FUNCTION_97(v6);
  sub_267EF3978();
  v8 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v8);
  (*(v7 + 8))(v8, v7);
  v9 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider);
  v10 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider + 8);
  sub_267DA149C();
  v0[48] = v11;

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v12 = v2[5];
  v13 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v12);
  (*(v13 + 8))(v12, v13);
  sub_267EB99C4((v0 + 7), &OBJC_IVAR____TtC16SiriMessagesFlow47SendMessageGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v14 = sub_267EF4698();
  sub_267EBABE8(v14);

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v15 = v0[43];
  v16 = v0[44];
  v17 = v0[40];
  v18 = v0[41];
  v19 = sub_267EF8A08();
  __swift_project_value_buffer(v19, qword_280240FB0);
  v20 = *(v18 + 16);
  v20(v15, v16, v17);
  v21 = sub_267EF89F8();
  v22 = sub_267EF95D8();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[43];
  if (v23)
  {
    v25 = v0[41];
    v26 = v0[42];
    v27 = v0[40];
    buf = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v54 = v51;
    *buf = 136315138;
    v20(v26, v24, v27);
    sub_267EF5458();
    v49 = v22;
    v0[30] = v27;
    v0[31] = sub_267EBB6D8(&qword_28022BAF0, MEMORY[0x277D5DC70]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 27);
    v20(boxed_opaque_existential_0, v26, v27);
    v29 = sub_267EF5448();
    v53 = v20;
    v31 = v30;
    v32 = *(v25 + 8);
    v33 = OUTLINED_FUNCTION_86();
    v32(v33);
    (v32)(v24, v27);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
    v34 = sub_267BA33E8(v29, v31, &v54);
    v20 = v53;

    *(buf + 4) = v34;
    _os_log_impl(&dword_267B93000, v21, v49, "#SendMessageGroupNeedsDisambiguationFlowStrategy submitting NLv4 dialog act: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v35 = v0[40];
    v36 = v0[41];

    v32 = *(v36 + 8);
    (v32)(v24, v35);
  }

  v0[49] = v32;
  v37 = v0[47];
  v38 = v0[44];
  v39 = v0[40];
  v40 = v0[41];
  v41 = v0[35];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v42 = *(v40 + 72);
  v43 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_267EFC020;
  v20(v44 + v43, v38, v39);
  sub_267EF4088();
  v45 = *(v41 + 104);
  v46 = swift_task_alloc();
  v0[50] = v46;
  *v46 = v0;
  v46[1] = sub_267EBA768;
  v47 = v0[39];

  return sub_267E4ADE8();
}

uint64_t sub_267EBA768()
{
  OUTLINED_FUNCTION_12();
  v3 = *(*v1 + 400);
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v2;
  *(v2 + 408) = v0;

  if (v0)
  {
    v5 = *(v2 + 384);

    v6 = sub_267EBAB00;
  }

  else
  {
    v6 = sub_267EBA878;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_267EBA878()
{
  v1 = *(v0 + 368);
  v20 = *(v0 + 376);
  v2 = *(v0 + 360);
  v26 = *(v0 + 352);
  v27 = *(v0 + 392);
  v28 = *(v0 + 344);
  v29 = *(v0 + 336);
  v24 = *(v0 + 328);
  v25 = *(v0 + 320);
  v3 = *(v0 + 304);
  v21 = *(v0 + 312);
  v22 = *(v0 + 384);
  v4 = *(v0 + 288);
  v23 = *(v0 + 296);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_4_71();
  v10(v9);
  v11 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_4_71();
  v14(v13);
  v15 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
  OUTLINED_FUNCTION_4_71();
  sub_267EF3BC8();
  (*(v1 + 16))(v4, v20, v2);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v2);
  v16 = sub_267EF4CC8();
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  v17 = MEMORY[0x277D5C1D8];
  v6[3] = v16;
  v6[4] = v17;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_267EF3F68();

  sub_267B9FF34(v0 + 176, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  (*(v3 + 8))(v21, v23);
  v27(v26, v25);
  (*(v1 + 8))(v20, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  OUTLINED_FUNCTION_17();

  return v18();
}

uint64_t sub_267EBAB00()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 360);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v6 = *(v0 + 312);
  v7 = *(v0 + 288);
  v8 = *(v0 + 328) + 8;
  (*(v0 + 392))(*(v0 + 352), *(v0 + 320));
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_17();
  v10 = *(v0 + 408);

  return v9();
}

uint64_t sub_267EBABE8(uint64_t a1)
{
  v19 = MEMORY[0x277D84F90];
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      v5 = qword_280228818;

      if (v5 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v6 = sub_267EF8A08();
      __swift_project_value_buffer(v6, qword_280240FB0);

      v7 = sub_267EF89F8();
      v8 = sub_267EF95D8();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v9 = 136315138;
        v10 = OUTLINED_FUNCTION_86();
        *(v9 + 4) = sub_267BA33E8(v10, v11, v12);
        _os_log_impl(&dword_267B93000, v7, v8, "#SendMessageGroupNeedsDisambiguationFlowStrategy adding context for group %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      v13 = sub_267EF6268();
      OUTLINED_FUNCTION_97(v13);
      sub_267EF6258();
      v14 = sub_267EF6058();
      OUTLINED_FUNCTION_97(v14);
      sub_267EF6048();
      OUTLINED_FUNCTION_86();
      sub_267EF6038();

      sub_267EF6218();

      v15 = sub_267EF6448();
      OUTLINED_FUNCTION_97(v15);
      sub_267EF6438();
      sub_267EF61F8();

      MEMORY[0x26D608F90](v16);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      OUTLINED_FUNCTION_86();
      sub_267EF9368();

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  sub_267BC8938();
}

uint64_t sub_267EBAE70()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow47SendMessageGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict);
}

uint64_t *sub_267EBAEB0()
{
  v0 = sub_267B9DCC8();

  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow47SendMessageGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict);

  return v0;
}

uint64_t sub_267EBAEF8()
{
  v0 = *sub_267EBAEB0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy()
{
  result = qword_28022D040;
  if (!qword_28022D040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267EBB070()
{
  type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy();

  JUMPOUT(0x26D602E30);
}

uint64_t sub_267EBB0EC(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_267CF97A8;

  return (sub_267CF7FDC)(a2);
}

uint64_t sub_267EBB1A0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267CFB43C;

  return sub_267EB9E7C();
}

uint64_t sub_267EBB24C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BF1CB4;

  return sub_267EBA0FC();
}

uint64_t sub_267EBB300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B588] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267CFB43C;

  return MEMORY[0x2821B9F38](a1, a2, a3, v12, a5);
}

uint64_t sub_267EBB3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B598] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267CFB43C;

  return MEMORY[0x2821B9F48](a1, a2, a3, v12, a5);
}

uint64_t sub_267EBB4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B590] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267CFB43C;

  return MEMORY[0x2821B9F40](a1, a2, v10, a4);
}

uint64_t sub_267EBB568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B5A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267CFB43C;

  return MEMORY[0x2821B9F58](a1, a2, v10, a4);
}

uint64_t sub_267EBB630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy();

  return MEMORY[0x2821B9F50](a1, v5, a3);
}

uint64_t sub_267EBB680(uint64_t a1)
{
  result = sub_267EBB6D8(&qword_28022C500, type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267EBB6D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267EBB720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = sub_267EF4968();
  v47 = *(v48 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v48);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF40, &unk_267F0CF80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v45 - v10;
  v57 = sub_267EF3D18();
  v11 = *(v57 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v57);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_267EF3E38();
  v15 = *(*(v66 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v66);
  v54 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v65 = &v45 - v19;
  v69 = a2;
  v20 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  v68 = a3;
  v21 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a1 + 64);
  v25 = (v22 + 63) >> 6;
  v52 = (v18 + 8);
  v53 = (v18 + 16);
  v56 = v11;
  v51 = v11 + 32;
  v61 = a2;

  v60 = a3;

  v59 = a1;

  v26 = 0;
  v49 = v25;
  v50 = a1 + 64;
  v55 = v14;
  if (v24)
  {
    while (1)
    {
      v64 = v20;
LABEL_9:
      v28 = (v26 << 10) | (16 * __clz(__rbit64(v24)));
      v29 = (*(v59 + 48) + v28);
      v30 = *v29;
      v31 = v29[1];
      v32 = (*(v59 + 56) + v28);
      v33 = v32[1];
      v62 = *v32;
      swift_bridgeObjectRetain_n();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
      sub_267BC1E20(&qword_280229758, &unk_28022CF00, &unk_267EFE460);
      sub_267EF5658();
      sub_267BCEF48();
      v34 = v65;
      v63 = v31;
      sub_267EF3E18();
      v35 = v58;
      v36 = v66;
      (*v53)(v58, v34, v66);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v36);

      sub_267EF5658();
      sub_267BCEF48();
      v62 = v33;
      sub_267EF3E18();
      v37 = v55;
      sub_267EF3D08();
      v20 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = *(v20 + 16);
        sub_267C7103C();
        v20 = v40;
      }

      v38 = *(v20 + 16);
      v25 = v49;
      v21 = v50;
      if (v38 >= *(v20 + 24) >> 1)
      {
        sub_267C7103C();
        v20 = v41;
      }

      v24 &= v24 - 1;
      (*v52)(v65, v66);
      *(v20 + 16) = v38 + 1;
      (*(v56 + 32))(v20 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v38, v37, v57);

      v67 = v20;
      if (!v24)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v27 >= v25)
    {
      break;
    }

    v24 = *(v21 + 8 * v27);
    ++v26;
    if (v24)
    {
      v64 = v20;
      v26 = v27;
      goto LABEL_9;
    }
  }

  if (qword_2802288E8 == -1)
  {
    goto LABEL_16;
  }

LABEL_18:
  swift_once();
LABEL_16:
  sub_267EF5648();
  v42 = v46;
  sub_267EF4948();
  v43 = sub_267EF4958();
  (*(v47 + 8))(v42, v48);
  sub_267C9B4C4(v43);

  return v67;
}

uint64_t type metadata accessor for UnsendMessagesCATs()
{
  result = qword_28022D058;
  if (!qword_28022D058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267EBBD9C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BAEBEC;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267EBBE4C(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267EBBE64()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  *(v2 + 32) = 0x6552656E4F736168;
  *(v2 + 40) = 0xEF746E6569706963;
  *(v2 + 72) = MEMORY[0x277D839B0];
  v3 = MEMORY[0x277D55BF0];
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_1_5(v3);
  *(v0 + 32) = v2;
  *(v2 + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_34_1(v5);

  return v8(v6, 0xD000000000000030);
}

uint64_t sub_267EBBF80()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_267CB7904, 0, 0);
  }

  else
  {
    v9 = *(v3 + 32);

    OUTLINED_FUNCTION_17();

    return v10();
  }
}

uint64_t sub_267EBC0A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267EBC0B8()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_267EFC020;
  *(v2 + 32) = 7368801;
  *(v2 + 40) = 0xE300000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v9 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_267EBC200;
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, 0xD000000000000030, 0x8000000267F1D2C0, v2);
}

uint64_t sub_267EBC200()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_267CE920C, 0, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    OUTLINED_FUNCTION_17();

    return v10();
  }
}

uint64_t sub_267EBC320()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267EBC3D0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267EBC480()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267EBC530(uint64_t a1, char a2, char a3)
{
  *(v4 + 57) = a3;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267EBC54C()
{
  v1 = *(v0 + 57);
  v2 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 16) = xmmword_267EFCC90;
  *(v3 + 32) = 0x646E65736E557369;
  *(v3 + 40) = 0xE800000000000000;
  v4 = MEMORY[0x277D839B0];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0x6C65636E61437369;
  *(v3 + 88) = 0xE800000000000000;
  *(v3 + 120) = v4;
  *(v3 + 96) = v1;
  v5 = *(MEMORY[0x277D55BF0] + 4);
  v9 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_34_1(v6);

  return v9(v7, 0xD00000000000001DLL);
}

uint64_t sub_267EBC690()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_267CB73B4, 0, 0);
  }

  else
  {
    v9 = *(v3 + 32);

    OUTLINED_FUNCTION_17();

    return v10();
  }
}

uint64_t sub_267EBC7B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_267EBC804(a1, a2);
}

uint64_t sub_267EBC804(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF7B88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_267BB3794(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_267EF78B8();
  (*(v5 + 8))(a2, v4);
  sub_267BB2D24(a1);
  return v12;
}

double sub_267EBC978@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v72 = a2;
  v3 = sub_267EF4C68();
  v4 = OUTLINED_FUNCTION_58(v3);
  v70 = v5;
  v71 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v69 - v11;
  v13 = sub_267EF4C08();
  v14 = OUTLINED_FUNCTION_58(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_267EF6718();
  v22 = OUTLINED_FUNCTION_58(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v22);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v69 - v30;
  (*(v16 + 16))(v20, a1, v13);
  v32 = (*(v16 + 88))(v20, v13);
  if (v32 == *MEMORY[0x277D5C128])
  {
    v33 = OUTLINED_FUNCTION_17_28();
    v34(v33);
    goto LABEL_5;
  }

  if (v32 == *MEMORY[0x277D5C158])
  {
    v35 = OUTLINED_FUNCTION_17_28();
    v36(v35);
    v37 = *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D50, &qword_267F0C8C0) + 48)];

LABEL_5:
    v38 = *(v24 + 32);
    v38(v31, v20, v21);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v39 = sub_267EF8A08();
    __swift_project_value_buffer(v39, qword_280240FB0);
    v40 = sub_267EF89F8();
    v41 = sub_267EF95D8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v43, v44, "PhoneCallIntentHelper# building PhoneCallNLv3Intent");
      MEMORY[0x26D60A7B0](v42, -1, -1);
    }

    v38(v29, v31, v21);
    v45 = type metadata accessor for PhoneCallNLv3Intent();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v48 = sub_267DD2140(v29);
    if (v48)
    {
      v50 = v72;
      v72[3] = v45;
      v50[4] = &off_2878D5AC8;
      *v50 = v48;
      return result;
    }

    return OUTLINED_FUNCTION_29_29();
  }

  if (v32 == *MEMORY[0x277D5C160])
  {
    v51 = OUTLINED_FUNCTION_17_28();
    v52(v51);
    v54 = v70;
    v53 = v71;
    (*(v70 + 32))(v12, v20, v71);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v55 = sub_267EF8A08();
    __swift_project_value_buffer(v55, qword_280240FB0);
    v56 = sub_267EF89F8();
    v57 = sub_267EF95D8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_267B93000, v56, v57, "PhoneCallIntentHelper# building PhoneCallNLv4Intent from usoParse", v58, 2u);
      MEMORY[0x26D60A7B0](v58, -1, -1);
    }

    (*(v54 + 16))(v10, v12, v53);
    v59 = type metadata accessor for PhoneCallNLv4Intent();
    swift_allocObject();
    v60 = sub_267E1F24C(v10);
    if (v60)
    {
      v61 = v72;
      v72[3] = v59;
      v61[4] = &off_2878D7768;
      *v61 = v60;
      (*(v54 + 8))(v12, v53);
      return result;
    }

    (*(v54 + 8))(v12, v53);
    return OUTLINED_FUNCTION_29_29();
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v62 = sub_267EF8A08();
  __swift_project_value_buffer(v62, qword_280240FB0);
  v63 = sub_267EF89F8();
  v64 = sub_267EF95D8();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    OUTLINED_FUNCTION_28_11(&dword_267B93000, v66, v67, "PhoneCallIntentHelper# unrecognized parse type, not building PhoneCallIntent");
    MEMORY[0x26D60A7B0](v65, -1, -1);
  }

  v68 = OUTLINED_FUNCTION_29_29();
  (*(v16 + 8))(v20, v13, v68);
  return result;
}

uint64_t sub_267EBCF28()
{
  v0 = sub_267EF8A08();
  __swift_allocate_value_buffer(v0, qword_280240FB0);
  __swift_project_value_buffer(v0, qword_280240FB0);
  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v1 = qword_280240FC8;
  return sub_267EF8A18();
}

uint64_t sub_267EBCFB4()
{
  sub_267EBD01C();
  result = sub_267EF9848();
  qword_280240FC8 = result;
  return result;
}

unint64_t sub_267EBD01C()
{
  result = qword_28022D068;
  if (!qword_28022D068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022D068);
  }

  return result;
}

void sub_267EBD060(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v235 = a3;
  v233 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEC8, &qword_267F04288);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v220 = &v214 - v6;
  v238 = sub_267EF8AE8();
  v7 = OUTLINED_FUNCTION_58(v238);
  v240 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0();
  v237 = v13;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v214 - v16;
  v239 = sub_267EF8A38();
  v18 = OUTLINED_FUNCTION_58(v239);
  v223 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  v236 = v23;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v25);
  v224 = &v214 - v26;
  v226 = sub_267EF8AF8();
  v27 = OUTLINED_FUNCTION_58(v226);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77_0();
  v227 = v33;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v34);
  v36 = &v214 - v35;
  v37 = sub_267EF8A88();
  v38 = OUTLINED_FUNCTION_58(v37);
  v230 = v39;
  v231 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  v43 = (&v214 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AED0, &unk_267F04290);
  v44 = *(*(v229 - 8) + 64);
  MEMORY[0x28223BE20](v229);
  OUTLINED_FUNCTION_6();
  v228 = v45;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v46);
  v48 = &v214 - v47;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v49 = sub_267EF8A08();
  v50 = __swift_project_value_buffer(v49, qword_280240FB0);

  v232 = v50;
  v51 = a1;
  v52 = sub_267EF89F8();
  v53 = sub_267EF95D8();

  v54 = os_log_type_enabled(v52, v53);
  v218 = v17;
  if (v54)
  {
    v55 = OUTLINED_FUNCTION_48();
    v222 = v48;
    v56 = v55;
    v57 = OUTLINED_FUNCTION_52();
    v225 = v29;
    v58 = v57;
    v242[0] = v57;
    *v56 = 136315138;
    v59 = sub_267EF66B8();
    v61 = v36;
    v62 = sub_267BA33E8(v59, v60, v242);
    v51 = a1;

    *(v56 + 4) = v62;
    _os_log_impl(&dword_267B93000, v52, v53, "ReferenceResolution# Resolving %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    v29 = v225;
    OUTLINED_FUNCTION_32_0();
    v48 = v222;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v61 = v36;
  }

  *v43 = v51;
  v64 = v230;
  v63 = v231;
  (*(v230 + 104))(v43, *MEMORY[0x277D5FEA8], v231);

  sub_267EF8958();
  (*(v64 + 8))(v43, v63);
  v65 = v228;
  sub_267EBF1F8(v48, v228);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v66 = *v65;
    v67 = v66;
    v68 = sub_267EF89F8();
    v69 = sub_267EF95E8();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = OUTLINED_FUNCTION_48();
      v71 = OUTLINED_FUNCTION_52();
      v241 = v66;
      v242[0] = v71;
      *v70 = 136315138;
      v72 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v73 = sub_267EF9098();
      v75 = sub_267BA33E8(v73, v74, v242);

      *(v70 + 4) = v75;
      OUTLINED_FUNCTION_20();
      _os_log_impl(v76, v77, v78, v79, v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_40_0();
    }

    else
    {
    }

LABEL_13:
    v103 = &qword_28022AED0;
    v104 = &unk_267F04290;
    v105 = v48;
LABEL_14:
    sub_267B9FF34(v105, v103, v104);
    return;
  }

  v81 = v226;
  (*(v29 + 32))(v61, v65, v226);
  v82 = (v29 + 16);
  v83 = *(v29 + 16);
  v84 = v227;
  v83(v227, v61, v81);
  v85 = (*(v29 + 88))(v84, v81);
  if (v85 == *MEMORY[0x277D5FEC0])
  {
    v234 = v61;
    v225 = v29;
    v86 = *(v29 + 96);
    v87 = v227;
    v88 = OUTLINED_FUNCTION_100_0();
    v89(v88);
    v91 = v223;
    v90 = v224;
    v92 = v239;
    (*(v223 + 32))(v224, v87, v239);
    v93 = v221;
    (*(v91 + 16))(v221, v90, v92);
    v94 = sub_267EF89F8();
    v95 = sub_267EF95D8();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = v93;
      v97 = OUTLINED_FUNCTION_48();
      v238 = OUTLINED_FUNCTION_52();
      v242[0] = v238;
      *v97 = 136315138;
      sub_267EBF288(&qword_28022AED8, MEMORY[0x277D5FE08]);
      v98 = sub_267EF9E58();
      v99 = *(v91 + 8);
      v99(v96, v92);
      v100 = OUTLINED_FUNCTION_100_0();
      sub_267BA33E8(v100, v101, v102);
      OUTLINED_FUNCTION_25_0();
      v81 = v226;

      *(v97 + 4) = v98;
      _os_log_impl(&dword_267B93000, v94, v95, "ReferenceResolution# Found a candidate %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v238);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      v99 = *(v91 + 8);
      v99(v93, v92);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A80, &qword_267F00430);
    v131 = v240[9];
    v132 = (*(v240 + 80) + 32) & ~*(v240 + 80);
    *(swift_allocObject() + 16) = xmmword_267EFC020;
    v133 = v224;
    sub_267EF8A28();
    v99(v133, v92);
LABEL_28:
    (*(v225 + 8))(v234, v81);
LABEL_29:
    v134 = v48;
LABEL_47:
    sub_267B9FF34(v134, &qword_28022AED0, &unk_267F04290);
    return;
  }

  if (v85 == *MEMORY[0x277D5FED0])
  {
    v222 = v48;
    v106 = OUTLINED_FUNCTION_4_72();
    v107(v106);
    v108 = *v82;
    v109 = sub_267EF89F8();
    v110 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v110))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_20();
      _os_log_impl(v111, v112, v113, v114, v115, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    v116 = *(v108 + 16);
    if (v116)
    {
      v225 = v29;
      v117 = *(v223 + 16);
      v234 = v61;
      v235 = v117;
      v118 = *(v223 + 80);
      v233 = v108;
      v119 = v108 + ((v118 + 32) & ~v118);
      v120 = *(v223 + 72);
      v121 = (v223 + 8);
      v122 = MEMORY[0x277D84F90];
      do
      {
        v123 = v236;
        v124 = v239;
        v235(v236, v119, v239);
        sub_267EF8A28();
        (*v121)(v123, v124);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_20_35();
          v122 = v129;
        }

        v125 = *(v122 + 16);
        if (v125 >= *(v122 + 24) >> 1)
        {
          OUTLINED_FUNCTION_19_47();
          v122 = v130;
        }

        OUTLINED_FUNCTION_11_53();
        (*(v128 + 32))(v126 + v127 * v125, v237, v238);
        v119 += v120;
        --v116;
      }

      while (v116);

      v29 = v225;
    }

    else
    {
    }

    v175 = *(v29 + 8);
    v176 = OUTLINED_FUNCTION_91_2();
    v177(v176);
    v134 = v222;
    goto LABEL_47;
  }

  if (v85 == *MEMORY[0x277D5FEC8])
  {
    v135 = OUTLINED_FUNCTION_4_72();
    v136(v135);
    v137 = *v82;

    v138 = sub_267EF89F8();
    v139 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v139))
    {
      v140 = OUTLINED_FUNCTION_48();
      *v140 = 134217984;
      *(v140 + 4) = *(v137 + 16);

      OUTLINED_FUNCTION_20();
      _os_log_impl(v141, v142, v143, v144, v145, 0xCu);
      OUTLINED_FUNCTION_40_0();
    }

    else
    {
    }

    v178 = v220;
    sub_267C8F038(v137, v220);

    v179 = v239;
    if (__swift_getEnumTagSinglePayload(v178, 1, v239) == 1)
    {
      v180 = *(v29 + 8);
      v181 = OUTLINED_FUNCTION_91_2();
      v182(v181);
      sub_267B9FF34(v48, &qword_28022AED0, &unk_267F04290);
      v103 = &qword_28022AEC8;
      v104 = &qword_267F04288;
      v105 = v220;
      goto LABEL_14;
    }

    v191 = v216;
    v192 = v220;
    sub_267EF8A28();
    (*(v223 + 8))(v192, v179);
    v193 = v61;
    v195 = v240 + 4;
    v194 = v240[4];
    v196 = v218;
    v197 = v238;
    v194(v218, v191, v238);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A80, &qword_267F00430);
    v198 = v195[5];
    v199 = (*(v195 + 48) + 32) & ~*(v195 + 48);
    v200 = swift_allocObject();
    *(v200 + 16) = xmmword_267EFC020;
    v194((v200 + v199), v196, v197);
    (*(v29 + 8))(v193, v81);
    goto LABEL_29;
  }

  if (v85 == *MEMORY[0x277D5FED8])
  {
    v234 = v61;
    v225 = v29;
    v146 = OUTLINED_FUNCTION_4_72();
    v147(v146);
    v148 = *v82;
    v149 = sub_267EF89F8();
    v150 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v150))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_20();
      _os_log_impl(v151, v152, v153, v154, v155, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    v156 = 0;
    v157 = *(v148 + 16);
    v158 = v223 + 16;
    v237 = v223 + 8;
    v159 = v240 + 4;
    v160 = MEMORY[0x277D84F90];
    v161 = v217;
    while (1)
    {
      if (v157 == v156)
      {

        goto LABEL_28;
      }

      if (v156 >= *(v148 + 16))
      {
        break;
      }

      v162 = *(v148 + 8 * v156++ + 32);
      if (*(v162 + 16))
      {
        v163 = v48;
        v164 = v223;
        v165 = *(v223 + 16);
        v166 = v162 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
        v167 = v215;
        v168 = v239;
        v236 = v158;
        v165(v215, v166, v239);
        sub_267EF8A28();
        (*(v164 + 8))(v167, v168);
        v169 = *v159;
        (*v159)(v219, v161, v238);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_20_35();
          v160 = v173;
        }

        v170 = *(v160 + 16);
        if (v170 >= *(v160 + 24) >> 1)
        {
          OUTLINED_FUNCTION_19_47();
          v160 = v174;
        }

        OUTLINED_FUNCTION_11_53();
        v169(v171 + v172 * v170, v219, v238);
        v48 = v163;
        v81 = v226;
        v158 = v236;
      }
    }

    __break(1u);
  }

  else
  {
    if (v85 == *MEMORY[0x277D5FEE0])
    {
      v183 = sub_267EF89F8();
      v184 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v184))
      {
        v185 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v185);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v186, v187, "ReferenceResolution# No matches found");
        OUTLINED_FUNCTION_26();
      }

      v188 = *(v29 + 8);
      v189 = OUTLINED_FUNCTION_91_2();
      v190(v189);
      goto LABEL_13;
    }

    v201 = v61;
    v202 = v214;
    v83(v214, v201, v81);
    v203 = sub_267EF89F8();
    v204 = v201;
    v205 = sub_267EF95E8();
    if (os_log_type_enabled(v203, v205))
    {
      v206 = OUTLINED_FUNCTION_48();
      v240 = OUTLINED_FUNCTION_52();
      v242[0] = v240;
      *v206 = 136315138;
      sub_267EBF288(qword_28022D070, MEMORY[0x277D5FEE8]);
      v234 = v204;
      v207 = sub_267EF9E58();
      v208 = *(v29 + 8);
      v208(v202, v81);
      v209 = OUTLINED_FUNCTION_100_0();
      sub_267BA33E8(v209, v210, v211);
      OUTLINED_FUNCTION_25_0();

      *(v206 + 4) = v207;
      _os_log_impl(&dword_267B93000, v203, v205, "ReferenceResolution# Received unknown result type %s", v206, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v240);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_40_0();

      v208(v234, v81);
    }

    else
    {

      v208 = *(v29 + 8);
      v212 = OUTLINED_FUNCTION_91_2();
      (v208)(v212);
      v213 = OUTLINED_FUNCTION_100_0();
      (v208)(v213);
    }

    sub_267B9FF34(v48, &qword_28022AED0, &unk_267F04290);
    v208(v227, v81);
  }
}

uint64_t sub_267EBE108(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (!OUTLINED_FUNCTION_23_33(a1))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v18 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
    v19 = sub_267EF89F8();
    v20 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v20))
    {
      v21 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v21);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v22, v23, "#resolveSendRecipientFromRRaaS Intent is not an NLv4, no results");
      OUTLINED_FUNCTION_26();
    }

    return MEMORY[0x277D84F90];
  }

  v7 = sub_267DD9798();
  v8 = sub_267BAF0DC(v7);

  if (!v8)
  {
    v25 = sub_267DD75BC();
    if (v25)
    {
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v17 = swift_allocObject();
      *(v17 + 1) = xmmword_267EFCA40;
      v17[4] = v26;
      goto LABEL_20;
    }

LABEL_19:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v9 = sub_267DD9798();
  v10 = sub_267BAF0DC(v9);
  if (!v10)
  {

    goto LABEL_19;
  }

  v11 = v10;
  v45 = v3;
  v46 = MEMORY[0x277D84F90];
  result = sub_267EF9BF8();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = OUTLINED_FUNCTION_91_2();
        MEMORY[0x26D609870](v14);
      }

      else
      {
        v15 = *(v9 + 8 * v13 + 32);
      }

      ++v13;
      sub_267EF56B8();

      sub_267EF9BD8();
      v16 = v46[2];
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    while (v11 != v13);

    v17 = v46;
    v4 = v45;
LABEL_20:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v27 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v27, qword_280240FB0);
    v28 = sub_267EF89F8();
    v29 = sub_267EF95D8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v45 = OUTLINED_FUNCTION_52();
      v46 = v45;
      *v30 = 134218242;
      v31 = sub_267BAF0DC(v17);
      v32 = OUTLINED_FUNCTION_29_33(v31);

      v34 = MEMORY[0x26D608FD0](v33, v32);
      v35 = a2;
      v36 = a3;
      v37 = v4;
      v39 = v38;

      v40 = sub_267BA33E8(v34, v39, &v46);
      v4 = v37;
      a3 = v36;
      a2 = v35;

      *(v30 + 14) = v40;
      OUTLINED_FUNCTION_28_36(&dword_267B93000, v41, v42, "#resolveSendRecipientFromRRaaS Found %ld entities to query RRaaS with: %s");
      __swift_destroy_boxed_opaque_existential_0(v45);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    MEMORY[0x28223BE20](v43);
    v24 = v44;
    v44[2] = a2;
    v44[3] = a3;
    v44[4] = v4;

    OUTLINED_FUNCTION_27_36();
    OUTLINED_FUNCTION_25_0();
    swift_bridgeObjectRelease_n();

    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_267EBE490(void *a1, os_log_type_t a2, uint64_t a3, uint64_t a4)
{
  if (!OUTLINED_FUNCTION_23_33(a1))
  {
    OUTLINED_FUNCTION_58_13();
    if (!v17)
    {
      OUTLINED_FUNCTION_0();
    }

    v18 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
    v19 = sub_267EF89F8();
    v20 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v20))
    {
      v21 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v21);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v22, v23, "#resolveReadPersonWithRRaaS Intent is not an NLv4, no results");
      OUTLINED_FUNCTION_26();
    }

    return MEMORY[0x277D84F90];
  }

  v64 = a4;
  v8 = MEMORY[0x277D84F90];
  v68 = MEMORY[0x277D84F90];
  v65 = v4;
  if (a2)
  {
    v9 = sub_267DD9798();
    v10 = sub_267BAF0DC(v9);
    if (!v10)
    {

      v16 = MEMORY[0x277D84F90];
LABEL_20:
      v68 = v16;
      goto LABEL_37;
    }

    v11 = v10;
    v67[0] = v8;
    sub_267EF9BF8();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = OUTLINED_FUNCTION_91_2();
          MEMORY[0x26D609870](v13);
        }

        else
        {
          v14 = *(v9 + 8 * v12 + 32);
        }

        ++v12;
        sub_267EF56B8();

        sub_267EF9BD8();
        v15 = *(v67[0] + 16);
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }

      while (v11 != v12);

      v16 = v67[0];
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_53;
  }

  if (sub_267DD97C4())
  {
    a2 = sub_267EF56B8();

    MEMORY[0x26D608F90](v25);
    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_18:
      sub_267EF9368();
      v16 = v68;
      goto LABEL_22;
    }

LABEL_53:
    sub_267EF9328();
    goto LABEL_18;
  }

  v16 = v8;
LABEL_22:
  if (sub_267BAF0DC(v16))
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_58_13();
  if (!v17)
  {
    OUTLINED_FUNCTION_0();
  }

  v26 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v26, qword_280240FB0);
  v27 = sub_267EF89F8();
  v28 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v28))
  {
    v29 = OUTLINED_FUNCTION_32();
    *v29 = 0;
    _os_log_impl(&dword_267B93000, v27, a2, "#resolveReadPersonWithRRaaS(rdar://75809822) Sender entity not found, trying send recipients", v29, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v30 = sub_267DD9798();
  v31 = sub_267BAF0DC(v30);
  if (!v31)
  {

    v16 = MEMORY[0x277D84F90];
LABEL_36:
    v68 = v16;
LABEL_37:
    if (!sub_267BAF0DC(v16))
    {
      v37 = sub_267DD75BC();
      if (v37)
      {
        v38 = v37;

        MEMORY[0x26D608F90](v39);
        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v16 = v68;
        OUTLINED_FUNCTION_58_13();
        if (!v17)
        {
          OUTLINED_FUNCTION_0();
        }

        v40 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v40, qword_280240FB0);

        v41 = sub_267EF89F8();
        v42 = sub_267EF95D8();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = OUTLINED_FUNCTION_48();
          v44 = OUTLINED_FUNCTION_52();
          v66 = v38;
          v67[0] = v44;
          *v43 = 136315138;
          sub_267EF6798();
          sub_267EBF288(&qword_28022C290, MEMORY[0x277D5F498]);
          v45 = sub_267EF9E58();
          v47 = sub_267BA33E8(v45, v46, v67);

          *(v43 + 4) = v47;
          _os_log_impl(&dword_267B93000, v41, v42, "#resolveReadPersonWithRRaaS Agent entity not found, using intent entity: %s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v44);
          OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_32_0();
        }

        else
        {
        }
      }
    }

    OUTLINED_FUNCTION_58_13();
    if (!v17)
    {
      OUTLINED_FUNCTION_0();
    }

    v48 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v48, qword_280240FB0);
    v49 = sub_267EF89F8();
    v50 = sub_267EF95D8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = OUTLINED_FUNCTION_52();
      v67[0] = v52;
      *v51 = 134218242;
      v53 = sub_267BAF0DC(v16);
      v54 = OUTLINED_FUNCTION_29_33(v53);

      v56 = MEMORY[0x26D608FD0](v55, v54);
      v58 = v57;

      v59 = sub_267BA33E8(v56, v58, v67);

      *(v51 + 14) = v59;
      OUTLINED_FUNCTION_28_36(&dword_267B93000, v60, v61, "#resolveSendRecipientFromRRaaS Found %ld entities to query RRaaS with: %s");
      __swift_destroy_boxed_opaque_existential_0(v52);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_32_0();
    }

    MEMORY[0x28223BE20](v62);
    v24 = v63;
    v63[2] = a3;
    v63[3] = v64;
    v63[4] = v65;

    OUTLINED_FUNCTION_27_36();
    OUTLINED_FUNCTION_25_0();
    swift_bridgeObjectRelease_n();

    return v24;
  }

  v32 = v31;
  v67[0] = v8;
  result = sub_267EF9BF8();
  if ((v32 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D609870](v34, v30);
      }

      else
      {
        v35 = *(v30 + 8 * v34 + 32);
      }

      ++v34;
      sub_267EF56B8();

      sub_267EF9BD8();
      v36 = *(v67[0] + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    while (v32 != v34);

    v16 = v67[0];
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

void *sub_267EBEB0C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_267EBD060(a1, a2, a3);
  v7 = v6;
  if (*(v6 + 16))
  {
    MEMORY[0x28223BE20](v6);
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = v3;
    v8 = sub_267DA4EF8(sub_267EBF2D0, v16, v7);
  }

  else
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v9 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);
    v10 = sub_267EF89F8();
    v11 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_36(v11))
    {
      v12 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v12);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v13, v14, "#resolveSendRecipientFromRRaaS Person entity not found");
      OUTLINED_FUNCTION_26();
    }

    return MEMORY[0x277D84F90];
  }

  return v8;
}

void *sub_267EBEC38()
{
  sub_267BCA2C8();
  v0 = sub_267EF8A98();
  v8 = v0;
  if (v0)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v1 = sub_267EF8A08();
    __swift_project_value_buffer(v1, qword_280240FB0);
    v2 = v8;
    v3 = sub_267EF89F8();
    v4 = sub_267EF95D8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      *(v5 + 4) = v2;
      *v6 = v8;
      v7 = v2;
      _os_log_impl(&dword_267B93000, v3, v4, "#convertEntityToPerson Using resolved person: %@", v5, 0xCu);
      sub_267B9FF34(v6, &unk_280229E30, &unk_267EFC270);
      MEMORY[0x26D60A7B0](v6, -1, -1);
      MEMORY[0x26D60A7B0](v5, -1, -1);
    }
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v10 = sub_267EF8A08();
    __swift_project_value_buffer(v10, qword_280240FB0);
    v11 = sub_267EF89F8();
    v12 = sub_267EF95D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_267B93000, v11, v12, "#convertEntityToPerson Conversion to INPerson returned nil", v13, 2u);
      MEMORY[0x26D60A7B0](v13, -1, -1);
    }

    return 0;
  }

  return v8;
}

uint64_t sub_267EBEFB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void (*a3)(uint64_t, uint64_t, uint64_t)@<X3>, void *a4@<X8>)
{
  v5 = sub_267EBEB0C(*a1, a2, a3);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);

  v7 = sub_267EF89F8();
  v8 = sub_267EF95D8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    sub_267EF6798();
    sub_267EBF288(&qword_28022C290, MEMORY[0x277D5F498]);
    v11 = sub_267EF9E58();
    v13 = sub_267BA33E8(v11, v12, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = sub_267BCA2C8();
    v15 = MEMORY[0x26D608FD0](v5, v14);
    v17 = sub_267BA33E8(v15, v16, &v19);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_267B93000, v7, v8, "#resolveSendRecipientFromRRaaS Entity %s is resolved to %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D60A7B0](v10, -1, -1);
    MEMORY[0x26D60A7B0](v9, -1, -1);
  }

  result = sub_267BAF0DC(v5);
  if (!result)
  {

    v5 = 0;
  }

  *a4 = v5;
  return result;
}

uint64_t sub_267EBF1F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AED0, &unk_267F04290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267EBF288(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_267EBF2D0()
{
  OUTLINED_FUNCTION_24_43();
  result = sub_267EBEC38();
  *v0 = result;
  return result;
}

void *sub_267EBF304()
{
  OUTLINED_FUNCTION_24_43();
  result = sub_267EBEB0C(*v1, v2, v3);
  *v0 = result;
  return result;
}

uint64_t sub_267EBF33C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_267EBF390@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v55 - v5;
  v7 = sub_267EF8228();
  v8 = OUTLINED_FUNCTION_58(v7);
  v56 = v9;
  v57 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  v17 = sub_267EF4C08();
  v18 = OUTLINED_FUNCTION_58(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_0();
  v25 = v24 - v23;
  v26 = sub_267EF4BE8();
  v27 = OUTLINED_FUNCTION_58(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_0();
  v34 = v33 - v32;
  (*(v20 + 16))(v25, v2, v17);
  if ((*(v20 + 88))(v25, v17) != *MEMORY[0x277D5C150])
  {
    (*(v20 + 8))(v25, v17);
    goto LABEL_5;
  }

  (*(v20 + 96))(v25, v17);
  (*(v29 + 32))(v34, v25, v26);
  sub_267B9CC04(v34, v6);
  (*(v29 + 8))(v34, v26);
  v35 = type metadata accessor for DirectInvocationUseCases();
  if (__swift_getEnumTagSinglePayload(v6, 1, v35) == 1)
  {
    sub_267B9F98C(v6, &unk_28022BBE0, qword_267EFD030);
LABEL_5:
    sub_267E57DFC(v2, &v59);
    if (v60)
    {
      sub_267BE58F4(&v59, v61);
      v36 = v62;
      v37 = v63;
      __swift_project_boxed_opaque_existential_0(v61, v62);
      (*(v37 + 320))(v36, v37);
      return __swift_destroy_boxed_opaque_existential_0(v61);
    }

    sub_267B9F98C(&v59, &unk_28022BBF0, &unk_267F01C60);
    v39 = MEMORY[0x277D5B960];
    goto LABEL_8;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_267CCEDF4(v6);
    goto LABEL_5;
  }

  v46 = v56;
  v47 = *(v56 + 32);
  v48 = v6;
  v49 = v57;
  v47(v16, v48, v57);
  v47(v14, v16, v49);
  v50 = (*(v46 + 88))(v14, v49);
  if (v50 == *MEMORY[0x277D5D4E8])
  {
    v39 = MEMORY[0x277D5B978];
LABEL_8:
    v40 = *v39;
    v41 = sub_267EF3868();
    OUTLINED_FUNCTION_22(v41);
    v43 = *(v42 + 104);
    v44 = v58;
    v45 = v40;
    return v43(v44, v45);
  }

  v51 = v50;
  if (v50 == *MEMORY[0x277D5D4F0])
  {
    v39 = MEMORY[0x277D5B968];
    goto LABEL_8;
  }

  v52 = *MEMORY[0x277D5D4D8];
  v53 = sub_267EF3868();
  OUTLINED_FUNCTION_22(v53);
  v43 = *(v54 + 104);
  if (v51 != v52)
  {
    v43(v58, *MEMORY[0x277D5B960]);
    return (*(v46 + 8))(v14, v49);
  }

  v45 = *MEMORY[0x277D5B970];
  v44 = v58;
  return v43(v44, v45);
}

BOOL sub_267EBF874()
{
  v1 = v0;
  v2 = sub_267EF8428();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  v11 = sub_267EF4C08();
  v12 = OUTLINED_FUNCTION_58(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v19 = v18 - v17;
  v20 = sub_267EF4BE8();
  v21 = OUTLINED_FUNCTION_58(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_0();
  v28 = v27 - v26;
  (*(v14 + 16))(v19, v1, v11);
  if ((*(v14 + 88))(v19, v11) != *MEMORY[0x277D5C150])
  {
    (*(v14 + 8))(v19, v11);
    return 0;
  }

  (*(v14 + 96))(v19, v11);
  (*(v23 + 32))(v28, v19, v20);
  (*(v5 + 104))(v10, *MEMORY[0x277D5D6F8], v2);
  v29 = sub_267EF8418();
  v31 = v30;
  (*(v5 + 8))(v10, v2);
  if (v29 != sub_267EF4BC8() || v31 != v32)
  {
    v34 = sub_267EF9EA8();

    (*(v23 + 8))(v28, v20);
    return (v34 & 1) != 0;
  }

  (*(v23 + 8))(v28, v20);
  return 1;
}

unint64_t sub_267EBFB68()
{
  result = qword_28022D0F8;
  if (!qword_28022D0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022D0F8);
  }

  return result;
}

uint64_t sub_267EBFBEC()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_22_38(v1, v2);
  v4 = type metadata accessor for GatekeeperReadSendCallParameters(v3);
  OUTLINED_FUNCTION_79_3(v4);
  v6 = *(v5 + 64) + 15;
  *(v0 + 48) = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EBFC6C()
{
  OUTLINED_FUNCTION_62();
  v2 = OUTLINED_FUNCTION_25_44();
  OUTLINED_FUNCTION_0_78(v2);
  v3 = *(v0 + 4);
  v4 = swift_task_alloc();
  *(v1 + 56) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_6_60(v4);

  return v6(v5);
}

uint64_t sub_267EBFD28()
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

uint64_t sub_267EBFE24()
{
  v1 = v0[6];
  v0[9] = sub_267BEAD24(type metadata accessor for GatekeeperReadSendCallParameters);
  v2 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v0[10] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_55_2(v2);
  v3 = OUTLINED_FUNCTION_28_2(23);

  return v4(v3);
}

uint64_t sub_267EBFEEC()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *(v7 + 72);
  v10 = *v1;
  OUTLINED_FUNCTION_5();
  *v11 = v10;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267EC0020()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_1_88();
  sub_267BC88E0(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267EC0088()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_1_88();
  sub_267BC88E0(v2, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267EC00F4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_1_88();
  sub_267BC88E0(v2, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267EC0160()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_3_85();
  sub_267BC88E0(v2, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267EC01CC()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_3_85();
  sub_267BC88E0(v2, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267EC0238()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_22_38(v1, v2);
  Parameters = type metadata accessor for GatekeeperSendReadParameters(v3);
  OUTLINED_FUNCTION_79_3(Parameters);
  v6 = *(v5 + 64) + 15;
  *(v0 + 48) = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EC02B8()
{
  OUTLINED_FUNCTION_62();
  v2 = OUTLINED_FUNCTION_25_44();
  OUTLINED_FUNCTION_0_78(v2);
  v3 = *(v0 + 4);
  v4 = swift_task_alloc();
  *(v1 + 56) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_6_60(v4);

  return v6(v5);
}

uint64_t sub_267EC0374()
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

uint64_t sub_267EC0470()
{
  v1 = v0[6];
  v0[9] = sub_267BEAD24(type metadata accessor for GatekeeperSendReadParameters);
  v2 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v0[10] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_55_2(v2);
  v3 = OUTLINED_FUNCTION_28_2(19);

  return v4(v3);
}

uint64_t sub_267EC0538()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *(v7 + 72);
  v10 = *v1;
  OUTLINED_FUNCTION_5();
  *v11 = v10;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267EC066C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_2_73();
  sub_267BC88E0(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267EC06D4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_2_73();
  sub_267BC88E0(v2, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267EC0740()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_2_73();
  sub_267BC88E0(v2, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void sub_267EC0918()
{
  sub_267C11A54();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_267EC0994()
{
  v0 = sub_267EF5658();
  sub_267BB8F30(v0, v1);
  v3 = v2;

  if (v3)
  {
    sub_267EF8F68();
  }

  v4 = OUTLINED_FUNCTION_91_1();
  MEMORY[0x26D608E60](v4);

  v5 = sub_267EF5658();
  sub_267BB8FCC(1uLL, v5, v6);
  sub_267BB9090();

  sub_267EF9188();

  return 0xD000000000000012;
}

uint64_t sub_267EC0AC4()
{
  v0 = sub_267EF5B38();
  v1 = v0 + 32;
  v2 = -*(v0 + 16);
  v3 = -1;
  while (1)
  {
    v4 = v2 + v3;
    if (v2 + v3 == -1)
    {
LABEL_5:

      return v4 != -1;
    }

    if (++v3 >= *(v0 + 16))
    {
      break;
    }

    sub_267B9AFEC(v1, v7);
    v5 = sub_267EC7A90(v7);
    v1 += 40;
    __swift_destroy_boxed_opaque_existential_0(v7);
    if (v5)
    {
      goto LABEL_5;
    }
  }

  __break(1u);

  result = __swift_destroy_boxed_opaque_existential_0(v7);
  __break(1u);
  return result;
}

void sub_267EC0B90()
{
  OUTLINED_FUNCTION_48_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  OUTLINED_FUNCTION_18(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  v6 = &v81 - v5;
  v7 = sub_267EF5B58();
  v8 = OUTLINED_FUNCTION_58(v7);
  v85 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v83 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD8, &unk_267F0ECC0);
  OUTLINED_FUNCTION_18(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE0, &qword_267F08758);
  OUTLINED_FUNCTION_18(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_105();
  v88 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  OUTLINED_FUNCTION_18(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_34_32();
  v29 = sub_267EF5A88();
  v30 = OUTLINED_FUNCTION_58(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_0_0();
  v87 = v36 - v35;
  v37 = sub_267EF5B38();
  v38 = 0;
  v89 = *(v37 + 16);
  v39 = v37 + 32;
  v81 = (v85 + 1);
  v82 = (v85 + 4);
  v84 = v32 + 8;
  v85 = (v32 + 32);
  v86 = v37;
  while (1)
  {
    if (v89 == v38)
    {
LABEL_20:

      OUTLINED_FUNCTION_47();
      return;
    }

    if (v38 >= *(v37 + 16))
    {
      break;
    }

    sub_267B9AFEC(v39, v90);
    OUTLINED_FUNCTION_80_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCF0, &qword_267F08768);
    if (swift_dynamicCast())
    {
      v40 = v7;
      v41 = v6;
      OUTLINED_FUNCTION_37_25();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
      v46 = v87;
      (*v85)(v87, v0, v29);
      v47 = sub_267EF5A78();
      OUTLINED_FUNCTION_51_8(v47);
      if (v48)
      {
        v49 = v48 - 1;
        v50 = sub_267EF5958();
        OUTLINED_FUNCTION_22(v50);
        (*(v51 + 16))(v19, v46 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v49, v50);
        v52 = v19;
        v53 = 0;
      }

      else
      {
        v50 = sub_267EF5958();
        v52 = v19;
        v53 = 1;
      }

      __swift_storeEnumTagSinglePayload(v52, v53, 1, v50);

      sub_267EF5958();
      OUTLINED_FUNCTION_5_1(v19, 1, v50);
      if (v80)
      {
        v68 = OUTLINED_FUNCTION_70_14();
        v69(v68);
        sub_267B9F98C(v19, &qword_28022BCD8, &unk_267F0ECC0);
        sub_267EF5908();
        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
        v6 = v41;
      }

      else
      {
        sub_267EF5918();
        v74 = OUTLINED_FUNCTION_70_14();
        v75(v74);
        OUTLINED_FUNCTION_5_0(v50);
        (*(v76 + 8))(v19, v50);
        sub_267EF5908();
        v61 = 1;
        v77 = OUTLINED_FUNCTION_46_24();
        OUTLINED_FUNCTION_5_1(v77, v78, v79);
        v6 = v41;
        if (!v80)
        {
          goto LABEL_17;
        }
      }

      v61 = 0;
LABEL_17:
      sub_267B9F98C(v88, &qword_28022BCE0, &qword_267F08758);
      v7 = v40;
      v37 = v86;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v29);
    sub_267B9F98C(v0, &qword_28022BCE8, &qword_267F08760);
    OUTLINED_FUNCTION_80_13();
    if ((swift_dynamicCast() & 1) == 0)
    {
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v7);
      sub_267B9F98C(v6, &qword_280229798, &unk_267EFE4D0);
      __swift_destroy_boxed_opaque_existential_0(v90);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v7);
    v60 = (*v82)(v83, v6, v7);
    v61 = sub_267EC0B90(v60);
    v62 = *v81;
    v63 = OUTLINED_FUNCTION_37_1();
    v64(v63);
LABEL_18:
    __swift_destroy_boxed_opaque_existential_0(v90);
    if (v61)
    {
      goto LABEL_20;
    }

LABEL_19:
    v39 += 40;
    ++v38;
  }

  __break(1u);
}

uint64_t sub_267EC10F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229750, &unk_267F01E00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_267EFCC90;
  if (qword_280228830 != -1)
  {
    swift_once();
  }

  v1 = qword_280240FE8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  *(v0 + 56) = v2;
  v3 = sub_267C586C4(&qword_280229758, &unk_28022CF00, &unk_267EFE460);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_280228838;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_280240FF0;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  v6 = sub_267EF54C8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  result = sub_267EF54A8();
  qword_280240FE0 = result;
  return result;
}

uint64_t sub_267EC125C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  v1 = OUTLINED_FUNCTION_20_36();
  OUTLINED_FUNCTION_57_19(v1);
  result = OUTLINED_FUNCTION_81_12();
  qword_280240FE8 = result;
  return result;
}

uint64_t sub_267EC12A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  v1 = OUTLINED_FUNCTION_20_36();
  OUTLINED_FUNCTION_57_19(v1);
  result = sub_267EF5638();
  qword_280240FF0 = result;
  return result;
}

uint64_t sub_267EC12F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A168, &qword_267F004E8);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_20_36();
  result = sub_267EF5638();
  qword_280240FF8 = result;
  return result;
}

uint64_t sub_267EC1350()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_20_36();
  result = sub_267EF5638();
  qword_280241000 = result;
  return result;
}

uint64_t sub_267EC13AC()
{
  v0 = sub_267EF5628();
  OUTLINED_FUNCTION_97(v0);
  result = sub_267EF5618();
  qword_280241008 = result;
  return result;
}

uint64_t sub_267EC13F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_10_50();
  result = sub_267EF5638();
  qword_280241010 = result;
  return result;
}

uint64_t sub_267EC1450()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D188, &unk_267F0EC70);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_10_50();
  result = sub_267EF5638();
  qword_280241018 = result;
  return result;
}

uint64_t sub_267EC14A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_10_50();
  result = OUTLINED_FUNCTION_81_12();
  qword_280241020 = result;
  return result;
}

uint64_t sub_267EC14F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229760, &unk_267F004C0);
  OUTLINED_FUNCTION_97(v0);
  result = sub_267EF5638();
  qword_280241028 = result;
  return result;
}

uint64_t sub_267EC1554()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  result = sub_267EF5638();
  qword_280241030 = result;
  return result;
}

uint64_t sub_267EC15B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  result = OUTLINED_FUNCTION_81_12();
  qword_280241038 = result;
  return result;
}

uint64_t sub_267EC1614()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  result = sub_267EF5638();
  qword_280241040 = result;
  return result;
}

uint64_t sub_267EC1678()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D198, &qword_267F0EC80);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_267EF5638();
  qword_280241048 = result;
  return result;
}

uint64_t sub_267EC16E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229750, &unk_267F01E00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_267F0E130;
  if (qword_280228850 != -1)
  {
    OUTLINED_FUNCTION_23_34();
    swift_once();
  }

  v1 = qword_280241008;
  v2 = sub_267EF5628();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_280228858;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_280241010;
  v6 = OUTLINED_FUNCTION_37_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  *(v0 + 96) = v8;
  v9 = sub_267C586C4(&qword_280229758, &unk_28022CF00, &unk_267EFE460);
  *(v0 + 104) = v9;
  *(v0 + 72) = v5;
  v10 = qword_280228860;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_22_39();
    swift_once();
  }

  v11 = qword_280241018;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D188, &unk_267F0EC70);
  *(v0 + 144) = sub_267C586C4(&qword_28022D190, &qword_28022D188, &unk_267F0EC70);
  *(v0 + 112) = v11;
  v12 = qword_280228868;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_280241020;
  *(v0 + 176) = v8;
  *(v0 + 184) = v9;
  *(v0 + 152) = v13;
  v14 = qword_280228870;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_280241028;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229760, &unk_267F004C0);
  *(v0 + 224) = sub_267C586C4(&qword_280229768, &qword_280229760, &unk_267F004C0);
  *(v0 + 192) = v15;
  v16 = qword_280228878;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_30_39();
  }

  v17 = qword_280241030;
  *(v0 + 256) = v8;
  *(v0 + 264) = v9;
  *(v0 + 232) = v17;
  v18 = qword_280228880;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_280241038;
  *(v0 + 296) = v8;
  *(v0 + 304) = v9;
  *(v0 + 272) = v19;
  v20 = qword_280228888;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_280241040;
  *(v0 + 336) = v8;
  *(v0 + 344) = v9;
  *(v0 + 312) = v21;
  v22 = qword_280228890;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_280241048;
  v24 = OUTLINED_FUNCTION_54_0();
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  *(v0 + 384) = OUTLINED_FUNCTION_58_19(&qword_28022D1A0);
  *(v0 + 352) = v23;
  v26 = sub_267EF54C8();
  OUTLINED_FUNCTION_97(v26);

  OUTLINED_FUNCTION_10_50();
  OUTLINED_FUNCTION_37_25();
  result = sub_267EF54A8();
  qword_280241050 = result;
  return result;
}

uint64_t sub_267EC1A94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A158, &qword_267F004E0);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_20_36();
  result = sub_267EF5638();
  qword_280241058 = result;
  return result;
}

uint64_t sub_267EC1AF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  result = sub_267EF5638();
  qword_280241060 = result;
  return result;
}

uint64_t sub_267EC1B54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  result = sub_267EF5638();
  qword_280241068 = result;
  return result;
}

uint64_t sub_267EC1BBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1A8, &unk_267F0EC88);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_267EF5638();
  qword_280241070 = result;
  return result;
}

uint64_t sub_267EC1C2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229750, &unk_267F01E00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_267EFCE30;
  if (qword_2802288B0 != -1)
  {
    swift_once();
  }

  v1 = qword_280241068;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  *(v0 + 56) = v2;
  v3 = sub_267C586C4(&qword_280229758, &unk_28022CF00, &unk_267EFE460);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_2802288A8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_280241060;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  v6 = qword_2802288B8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_280241070;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1A8, &unk_267F0EC88);
  *(v0 + 144) = sub_267C586C4(&qword_28022D1B0, &qword_28022D1A8, &unk_267F0EC88);
  *(v0 + 112) = v7;
  v8 = sub_267EF54C8();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  result = sub_267EF54A8();
  qword_280241078 = result;
  return result;
}

uint64_t sub_267EC1E08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF20, &qword_267F004D0);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_20_36();
  result = sub_267EF5638();
  qword_280241080 = result;
  return result;
}

uint64_t sub_267EC1E6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_20_36();
  result = sub_267EF5638();
  qword_280241088 = result;
  return result;
}

uint64_t sub_267EC1EC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_267EF5638();
  qword_280241090 = result;
  return result;
}

uint64_t sub_267EC1F28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D168, &qword_267F0EC48);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_267EF5638();
  qword_280241098 = result;
  return result;
}

uint64_t sub_267EC1F8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CF10, &unk_267F0EC50);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_20_36();
  result = OUTLINED_FUNCTION_81_12();
  qword_2802410A0 = result;
  return result;
}

uint64_t sub_267EC1FE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D178, &unk_267F0EC60);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_267EF5638();
  qword_2802410A8 = result;
  return result;
}

uint64_t sub_267EC2054()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A148, &qword_267F004D8);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_20_36();
  result = sub_267EF5638();
  qword_2802410B0 = result;
  return result;
}

uint64_t sub_267EC20AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229750, &unk_267F01E00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_267F0EB80;
  if (qword_2802288C0 != -1)
  {
    swift_once();
  }

  v1 = qword_280241078;
  v2 = sub_267EF54C8();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_2802288A0;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_280241058;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A158, &qword_267F004E0);
  *(v0 + 104) = sub_267C586C4(&qword_28022A160, &qword_28022A158, &qword_267F004E0);
  *(v0 + 72) = v5;
  v6 = qword_280228898;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_36_27();
  }

  v7 = qword_280241050;
  *(v0 + 136) = v2;
  *(v0 + 144) = v3;
  *(v0 + 112) = v7;
  v8 = qword_280228828;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_280240FE0;
  *(v0 + 176) = v2;
  *(v0 + 184) = v3;
  *(v0 + 152) = v9;
  v10 = qword_2802288C8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_280241080;
  v12 = OUTLINED_FUNCTION_54_0();
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  *(v0 + 224) = OUTLINED_FUNCTION_58_19(&qword_28022A130);
  *(v0 + 192) = v11;
  v14 = qword_2802288D0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_280241088;
  v16 = OUTLINED_FUNCTION_37_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  *(v0 + 256) = v18;
  v19 = sub_267C586C4(&qword_280229758, &unk_28022CF00, &unk_267EFE460);
  *(v0 + 264) = v19;
  *(v0 + 232) = v15;
  v20 = qword_2802288D8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_280241090;
  *(v0 + 296) = v18;
  *(v0 + 304) = v19;
  *(v0 + 272) = v21;
  v22 = qword_280228848;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_24_44();
    swift_once();
  }

  v23 = qword_280241000;
  *(v0 + 336) = v18;
  *(v0 + 344) = v19;
  *(v0 + 312) = v23;
  v24 = qword_2802288E0;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_280241098;
  v26 = OUTLINED_FUNCTION_54_0();
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  *(v0 + 384) = OUTLINED_FUNCTION_58_19(&qword_28022D170);
  *(v0 + 352) = v25;
  v28 = qword_2802288E8;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_2802410A0;
  v30 = OUTLINED_FUNCTION_54_0();
  *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  *(v0 + 424) = OUTLINED_FUNCTION_58_19(&qword_28022CF18);
  *(v0 + 392) = v29;
  v32 = qword_2802288F8;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_6_37();
  }

  v33 = qword_2802410B0;
  v34 = OUTLINED_FUNCTION_54_0();
  *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
  *(v0 + 464) = OUTLINED_FUNCTION_58_19(&qword_28022A150);
  *(v0 + 432) = v33;
  v36 = qword_2802288F0;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_32_24();
  }

  v37 = qword_2802410A8;
  v38 = OUTLINED_FUNCTION_54_0();
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
  *(v0 + 504) = OUTLINED_FUNCTION_58_19(&qword_28022D180);
  *(v0 + 472) = v37;
  v40 = qword_280228840;

  if (v40 != -1)
  {
    OUTLINED_FUNCTION_31_32();
  }

  v41 = qword_280240FF8;
  v42 = OUTLINED_FUNCTION_54_0();
  *(v0 + 536) = __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
  *(v0 + 544) = OUTLINED_FUNCTION_58_19(&qword_28022A170);
  *(v0 + 512) = v41;
  v44 = sub_267EF5598();
  OUTLINED_FUNCTION_97(v44);

  result = sub_267EF5588();
  qword_2802410B8 = result;
  return result;
}

void sub_267EC25F8()
{
  OUTLINED_FUNCTION_48_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1D8, &qword_267F0ECD0);
  OUTLINED_FUNCTION_18(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1E0, &qword_267F0ECD8);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  v8 = sub_267EF6718();
  __swift_allocate_value_buffer(v8, qword_2802410C0);
  __swift_project_value_buffer(v8, qword_2802410C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1E8, &unk_267F0ECE0);
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_26_37(v9, xmmword_267EFC020);
  v11 = OUTLINED_FUNCTION_26_37(v10, xmmword_267EFC020);
  v12 = OUTLINED_FUNCTION_26_37(v11, xmmword_267EFC020);
  v13 = OUTLINED_FUNCTION_26_37(v12, xmmword_267EFC020);
  *(v13 + 16) = xmmword_267EFC020;
  if (qword_280228900 != -1)
  {
    OUTLINED_FUNCTION_7_3();
  }

  sub_267EF54B8();

  v14 = sub_267EF5B58();
  v15 = MEMORY[0x277D5E728];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  __swift_allocate_boxed_opaque_existential_0((v13 + 32));
  OUTLINED_FUNCTION_439();
  sub_267EF5B48();
  v12[3].n128_u64[1] = v14;
  v12[4].n128_u64[0] = v15;
  __swift_allocate_boxed_opaque_existential_0(&v12[2]);
  OUTLINED_FUNCTION_53_22();
  sub_267EF5B48();
  v11[3].n128_u64[1] = v14;
  v11[4].n128_u64[0] = v15;
  __swift_allocate_boxed_opaque_existential_0(&v11[2]);
  OUTLINED_FUNCTION_53_22();
  sub_267EF5B48();
  v10[3].n128_u64[1] = v14;
  v10[4].n128_u64[0] = v15;
  __swift_allocate_boxed_opaque_existential_0(&v10[2]);
  OUTLINED_FUNCTION_53_22();
  sub_267EF5B48();
  v9[3].n128_u64[1] = v14;
  v9[4].n128_u64[0] = v15;
  __swift_allocate_boxed_opaque_existential_0(&v9[2]);
  OUTLINED_FUNCTION_53_22();
  sub_267EF5B48();
  v24[3] = v14;
  v24[4] = v15;
  __swift_allocate_boxed_opaque_existential_0(v24);
  OUTLINED_FUNCTION_53_22();
  sub_267EF5B48();
  sub_267EF66A8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  sub_267EF5BD8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  sub_267EF6708();
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EC2958()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (!v3)
  {
    sub_267D6D160(v0);
    OUTLINED_FUNCTION_11_1();
    if (v3)
    {
      v5 = v4 == 0xE400000000000000;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_79_14();
  }

  v1 = OUTLINED_FUNCTION_6_61();
  if (v3)
  {
    return 0;
  }

  sub_267D6D160(v1);
  OUTLINED_FUNCTION_37_21();
  if (v6)
  {
    v8 = v7 == 0xE400000000000000;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_20_19();
    return 0;
  }

LABEL_16:

  return 1;
}

uint64_t sub_267EC2A10()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE400000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267EC2A80()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE400000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_20_19();
    return 0;
  }
}

uint64_t sub_267EC2AF0()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE500000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_439();
    sub_267EF9EA8();
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267EC2B64()
{
  v0 = sub_267EC4C40();
  if (v0 == 8)
  {
    return 0;
  }

  sub_267BB9308(v0);
  OUTLINED_FUNCTION_37_21();
  v3 = v3 && v2 == 0xE400000000000000;
  if (v3)
  {
  }

  else
  {
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267EC2BDC()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE700000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_439();
    OUTLINED_FUNCTION_79_11();
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267EC2C4C()
{
  sub_267EC4DBC();
  OUTLINED_FUNCTION_68_14();
  if (v2)
  {
    return 0;
  }

  sub_267D6C0D4(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE400000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_20_19();
    return 0;
  }
}

BOOL sub_267EC2CC0()
{
  sub_267EC4DBC();
  OUTLINED_FUNCTION_68_14();
  if (v4)
  {
    return 0;
  }

  v1 = v0;
  v2 = OUTLINED_FUNCTION_6_61();
  if (v4)
  {
    return 0;
  }

  v4 = sub_267D6D160(v2) == 1684104562 && v3 == 0xE400000000000000;
  if (v4)
  {
  }

  else
  {
    v5 = OUTLINED_FUNCTION_81_0();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = sub_267D2F790(&unk_2878CA3C0);
  v7 = sub_267EE9454(v1, v6);

  return (v7 & 1) != 0;
}

uint64_t sub_267EC2D80()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE500000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_439();
    sub_267EF9EA8();
    OUTLINED_FUNCTION_20_19();
    return 0;
  }
}

uint64_t sub_267EC2DF4()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE600000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_439();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267EC2E60()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE600000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_439();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267EC2ECC()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE400000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267EC2F3C()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE600000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_439();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_20_19();
    return 0;
  }
}

uint64_t sub_267EC2FA8()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE600000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_439();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267EC3014()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE700000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_439();
    OUTLINED_FUNCTION_79_11();
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

BOOL sub_267EC3084()
{
  v1 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    if (sub_267EC3A10())
    {
      v3 = 1;
    }

    else
    {
      v5 = sub_267EC4D94();
      sub_267DEAC8C(v5, v6);
      OUTLINED_FUNCTION_20_19();
      v3 = v0 ^ 1;
    }

    return v3 & 1;
  }

  else
  {

    return sub_267E58CE8(v1, &unk_2878CA3E8);
  }
}

uint64_t sub_267EC30F4()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v1)
  {
    return sub_267EC4360() != 35;
  }

  if (sub_267E58CE8(v0, &unk_2878CA4E8))
  {
    return 1;
  }

  return sub_267EC3150();
}

uint64_t sub_267EC3150()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_11_1();
  v2 = v2 && v1 == 0xE600000000000000;
  if (v2)
  {
  }

  else
  {
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_79_14();
  }

  v3 = sub_267EC4D6C();
  if (v3 == 6)
  {
    goto LABEL_17;
  }

  sub_267D6CE3C(v3);
  if (v5 == 0x746361746E6F63 && v4 == 0xE700000000000000)
  {
  }

  else
  {
    v7 = OUTLINED_FUNCTION_79_11();

    if ((v7 & 1) == 0)
    {
LABEL_17:
      v9 = sub_267EC4D6C();
      if (v9 == 6)
      {
        return 0;
      }

      sub_267D6CE3C(v9);
      OUTLINED_FUNCTION_37_21();
      if (!v2 || v11 != 0xE700000000000000)
      {
        OUTLINED_FUNCTION_439();
        OUTLINED_FUNCTION_79_11();
        OUTLINED_FUNCTION_20_19();
        return 1;
      }

      goto LABEL_31;
    }
  }

  v8 = sub_267EC4360();
  if (v8 == 35)
  {
    goto LABEL_17;
  }

  sub_267D6C8B0(v8);
  if (v14 != 0x746361746E6F63 || v13 != 0xE700000000000000)
  {
    v16 = OUTLINED_FUNCTION_79_11();

    if (v16)
    {
      return 1;
    }

    goto LABEL_17;
  }

LABEL_31:

  return 1;
}

uint64_t sub_267EC3318(void *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_26();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD8, &unk_267F0ECC0);
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD0, &qword_267F08750);
  OUTLINED_FUNCTION_18(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_68_2();
  v49 = v3;
  if (*a1 != -1)
  {
    swift_once();
  }

  v21 = *a2;
  type metadata accessor for SmsNLv3Intent();
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v22, v23);
  sub_267EF5B18();
  v24 = sub_267EF5A88();
  v25 = OUTLINED_FUNCTION_38_29();
  OUTLINED_FUNCTION_5_1(v25, v26, v24);
  if (v33)
  {
    v27 = &qword_28022BCE8;
    v28 = &qword_267F08760;
    v29 = v4;
LABEL_12:
    sub_267B9F98C(v29, v27, v28);
    v43 = 0;
    return v43 & 1;
  }

  v30 = sub_267EF5A78();
  OUTLINED_FUNCTION_5_0(v24);
  (*(v31 + 8))(v4, v24);
  sub_267C8F714(v30, v16);

  v32 = sub_267EF5958();
  OUTLINED_FUNCTION_5_1(v16, 1, v32);
  if (v33)
  {
    v27 = &qword_28022BCD8;
    v28 = &unk_267F0ECC0;
    v29 = v16;
    goto LABEL_12;
  }

  sub_267EF58F8();
  OUTLINED_FUNCTION_5_0(v32);
  v35 = *(v34 + 8);
  v36 = OUTLINED_FUNCTION_54_0();
  v37(v36);
  v38 = sub_267EF58E8();
  v39 = OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_5_1(v39, v40, v38);
  if (v41)
  {
    v27 = &qword_28022BCD0;
    v28 = &qword_267F08750;
    v29 = v2;
    goto LABEL_12;
  }

  v43 = sub_267EF58D8();
  OUTLINED_FUNCTION_5_0(v38);
  v45 = *(v44 + 8);
  v46 = OUTLINED_FUNCTION_26_0();
  v47(v46);
  return v43 & 1;
}

void sub_267EC35E8()
{
  OUTLINED_FUNCTION_48_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD0, &qword_267F08750);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_26();
  v8 = sub_267EF58E8();
  v9 = OUTLINED_FUNCTION_58(v8);
  v48 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_52_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  OUTLINED_FUNCTION_18(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD8, &unk_267F0ECC0);
  OUTLINED_FUNCTION_18(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v22);
  v24 = &v47 - v23;
  v25 = sub_267EF5958();
  v26 = OUTLINED_FUNCTION_58(v25);
  v49 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_75_12();
  *v50 = v0;
  if (qword_2802288F8 != -1)
  {
    OUTLINED_FUNCTION_6_37();
  }

  type metadata accessor for SmsNLv3Intent();
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v30, v31);
  sub_267EF5B18();
  v32 = sub_267EF5A88();
  v33 = OUTLINED_FUNCTION_46_24();
  OUTLINED_FUNCTION_5_1(v33, v34, v32);
  if (v40)
  {
    sub_267B9F98C(v18, &qword_28022BCE8, &qword_267F08760);
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v25);
LABEL_8:
    sub_267B9F98C(v24, &qword_28022BCD8, &unk_267F0ECC0);
    goto LABEL_13;
  }

  v38 = sub_267EF5A78();
  OUTLINED_FUNCTION_5_0(v32);
  (*(v39 + 8))(v18, v32);
  sub_267C8F714(v38, v24);

  OUTLINED_FUNCTION_8_7(v24);
  if (v40)
  {
    goto LABEL_8;
  }

  v41 = v49;
  (*(v49 + 32))(v3, v24, v25);
  sub_267EF58F8();
  v42 = OUTLINED_FUNCTION_38_29();
  OUTLINED_FUNCTION_5_1(v42, v43, v8);
  if (v44)
  {
    sub_267B9F98C(v1, &qword_28022BCD0, &qword_267F08750);
    v45 = sub_267EF58A8();
    strcpy(v50, "StatParserVerb");
    v51 = -18;
    MEMORY[0x28223BE20](v45);
    OUTLINED_FUNCTION_54_16();
    sub_267BC2B54();
  }

  else
  {
    v46 = v48;
    (*(v48 + 32))(v2, v1, v8);
    sub_267EF58D8();
    (*(v46 + 8))(v2, v8);
  }

  (*(v41 + 8))(v3, v25);
LABEL_13:
  OUTLINED_FUNCTION_47();
}

BOOL sub_267EC3A10()
{
  if (sub_267EC3AC4() || sub_267EC3A78())
  {
    return 1;
  }

  v1 = sub_267EC4D20();
  if (v2)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3;
  }

  return v5 != 0;
}

BOOL sub_267EC3AE8(void *a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_68_2();
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = *a2;
  type metadata accessor for SmsNLv3Intent();
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v10, v11);
  OUTLINED_FUNCTION_54_0();
  sub_267EF5B08();
  v12 = sub_267EF5B58();
  v13 = OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_5_1(v13, v14, v12);
  if (v15)
  {
    sub_267B9F98C(v2, &qword_280229798, &unk_267EFE4D0);
    return 0;
  }

  else
  {
    v16 = sub_267EF5B38();
    OUTLINED_FUNCTION_5_0(v12);
    v18 = *(v17 + 8);
    v19 = OUTLINED_FUNCTION_26_0();
    v20(v19);
    v21 = *(v16 + 16);

    return v21 != 0;
  }
}

uint64_t sub_267EC3C78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267EC4C40();
  if (v2 > 5u)
  {
    v3 = MEMORY[0x277D5B960];
  }

  else
  {
    v3 = qword_279C2E5E8[v2];
  }

  v4 = *v3;
  v5 = sub_267EF3868();
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = *(v7 + 104);

  return v8(a1, v4, v6);
}

void sub_267EC3D08()
{
  OUTLINED_FUNCTION_48_0();
  v46 = sub_267EF5818();
  v2 = OUTLINED_FUNCTION_58(v46);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  OUTLINED_FUNCTION_18(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_75_12();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD8, &unk_267F0ECC0);
  OUTLINED_FUNCTION_18(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_52_0();
  if (qword_280228878 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    type metadata accessor for SmsNLv3Intent();
    OUTLINED_FUNCTION_0_79();
    sub_267EC80E8(v18, v19);
    sub_267EF5B18();
    v20 = sub_267EF5A88();
    OUTLINED_FUNCTION_5_1(v1, 1, v20);
    if (v27)
    {
      v21 = &qword_28022BCE8;
      v22 = &qword_267F08760;
      v23 = v1;
      goto LABEL_8;
    }

    v24 = sub_267EF5A78();
    OUTLINED_FUNCTION_5_0(v20);
    (*(v25 + 8))(v1, v20);
    sub_267C8F714(v24, v0);

    v26 = sub_267EF5958();
    OUTLINED_FUNCTION_5_1(v0, 1, v26);
    if (v27)
    {
      break;
    }

    v28 = sub_267EF58A8();
    OUTLINED_FUNCTION_5_0(v26);
    (*(v29 + 8))(v0, v26);
    v30 = *(v28 + 16);
    v31 = (v4 + 104);
    v43 = *MEMORY[0x277D5E518];
    v32 = (v4 + 8);
    v45 = v28;
    v33 = (v28 + 40);
    v44 = -v30;
    v1 = -1;
    while (1)
    {
      if (v44 + v1 == -1)
      {
        goto LABEL_20;
      }

      if (++v1 >= *(v45 + 16))
      {
        break;
      }

      v34 = *(v33 - 1);
      v4 = *v33;
      v0 = v46;
      (*v31)(v9, v43, v46);

      v35 = sub_267EF5808();
      v37 = v36;
      v38 = *v32;
      v39 = OUTLINED_FUNCTION_37_1();
      v40(v39);
      if (v34 == v35 && v4 == v37)
      {

LABEL_20:

        goto LABEL_9;
      }

      v33 += 2;
      v42 = sub_267EF9EA8();

      if (v42)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    OUTLINED_FUNCTION_30_39();
  }

  v21 = &qword_28022BCD8;
  v22 = &unk_267F0ECC0;
  v23 = v0;
LABEL_8:
  sub_267B9F98C(v23, v21, v22);
LABEL_9:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EC40A8()
{
  v1 = sub_267EF4C08();
  v2 = OUTLINED_FUNCTION_58(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v10 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv3Intent_nlIntent;
  v11 = sub_267EF6718();
  OUTLINED_FUNCTION_22(v11);
  (*(v12 + 16))(v9, v0 + v10);
  (*(v4 + 104))(v9, *MEMORY[0x277D5C128], v1);
  return sub_267EF4B98();
}

uint64_t sub_267EC41AC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  v10 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv3Intent_nlIntent;
  v11 = sub_267EF6718();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v2 + v10, a1, v11);
  v18[1] = v2;
  if (qword_280228900 != -1)
  {
    OUTLINED_FUNCTION_7_3();
  }

  type metadata accessor for SmsNLv3Intent();
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v13, v14);
  sub_267EF5B08();
  (*(v12 + 8))(a1, v11);
  v15 = sub_267EF5B58();
  OUTLINED_FUNCTION_5_1(v9, 1, v15);
  if (v16)
  {

    v2 = 0;
  }

  sub_267B9F98C(v9, &qword_280229798, &unk_267EFE4D0);
  return v2;
}

uint64_t sub_267EC43D0(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
  type metadata accessor for SmsNLv3Intent();
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v4, v5);
  OUTLINED_FUNCTION_26_0();
  sub_267EF5B28();
  return v7;
}

void sub_267EC4468()
{
  OUTLINED_FUNCTION_48_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1B8, &qword_267F0EC98);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v115 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1C0, &unk_267F0ECA0);
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_34_32();
  v15 = sub_267EF5888();
  v16 = OUTLINED_FUNCTION_58(v15);
  v114 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_52_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE0, &qword_267F08758);
  OUTLINED_FUNCTION_18(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v23);
  v25 = &v107 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  OUTLINED_FUNCTION_18(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_26();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD8, &unk_267F0ECC0);
  OUTLINED_FUNCTION_18(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_68_2();
  v34 = sub_267EF5958();
  v35 = OUTLINED_FUNCTION_58(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_75_12();
  sub_267EC43AC();
  if (v40)
  {
    goto LABEL_11;
  }

  v110 = v25;
  v111 = v4;
  v108 = v3;
  v109 = v5;
  v112 = v37;
  v113 = v34;
  v116 = v1;
  if (qword_2802288A8 != -1)
  {
    swift_once();
  }

  type metadata accessor for SmsNLv3Intent();
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v41, v42);
  sub_267EF5B18();
  v43 = sub_267EF5A88();
  v44 = OUTLINED_FUNCTION_38_29();
  OUTLINED_FUNCTION_5_1(v44, v45, v43);
  if (v54)
  {
    sub_267B9F98C(v2, &qword_28022BCE8, &qword_267F08760);
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v113);
LABEL_9:
    v55 = &qword_28022BCD8;
    v56 = &unk_267F0ECC0;
    v57 = v0;
LABEL_10:
    sub_267B9F98C(v57, v55, v56);
    goto LABEL_11;
  }

  v49 = sub_267EF5A78();
  sub_267C8F714(v49, v0);

  OUTLINED_FUNCTION_5_0(v43);
  (*(v50 + 8))(v2, v43);
  v51 = OUTLINED_FUNCTION_13_7();
  v52 = v113;
  OUTLINED_FUNCTION_5_1(v51, v53, v113);
  if (v54)
  {
    goto LABEL_9;
  }

  v59 = v111;
  v58 = v112;
  (*(v112 + 32))(v111, v0, v52);
  v60 = v110;
  sub_267EF5918();
  v61 = sub_267EF5908();
  OUTLINED_FUNCTION_8_7(v60);
  if (v62)
  {
    (*(v58 + 8))(v59, v52);
    v55 = &qword_28022BCE0;
    v56 = &qword_267F08758;
    v57 = v60;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_23();
  v65 = v64;
  if ((*(v63 + 88))(v60, v61) != *MEMORY[0x277D5E5C8])
  {
    (*(v58 + 8))(v59, v52);
    (*(v65 + 8))(v60, v61);
    goto LABEL_11;
  }

  (*(v65 + 96))(v60, v61);
  v66 = *v60;
  v67 = v60[1];
  v68 = v115;
  sub_267EF5948();
  v69 = sub_267EF5938();
  OUTLINED_FUNCTION_8_7(v68);
  if (v54)
  {
    v70 = OUTLINED_FUNCTION_29_34();
    v71(v70);

    sub_267B9F98C(v68, &qword_28022D1B8, &qword_267F0EC98);
    sub_267EF5898();
    v76 = v109;
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
LABEL_23:
    v55 = &qword_28022D1C0;
    v56 = &unk_267F0ECA0;
    v57 = v76;
    goto LABEL_10;
  }

  v76 = v109;
  sub_267EF5928();
  OUTLINED_FUNCTION_5_0(v69);
  v78 = *(v77 + 8);
  v79 = OUTLINED_FUNCTION_66();
  v80(v79);
  v81 = sub_267EF5898();
  OUTLINED_FUNCTION_8_7(v76);
  if (v82)
  {
    v83 = OUTLINED_FUNCTION_29_34();
    v84(v83);

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_23();
  v87 = v86;
  if ((*(v85 + 88))(v76, v81) == *MEMORY[0x277D5E588])
  {
    (*(v87 + 96))(v76, v81);
    v88 = v114;
    v89 = *(v114 + 32);
    v90 = v108;
    v91 = OUTLINED_FUNCTION_91_1();
    v92(v91);
    v93 = sub_267EF5858();
    v116 = 0xD000000000000010;
    v117 = 0x8000000267F1D6C0;
    MEMORY[0x28223BE20](v93);
    OUTLINED_FUNCTION_54_16();
    sub_267BC2B54();
    OUTLINED_FUNCTION_20_19();
    if (v90)
    {
      if (sub_267EF9228())
      {
        v94 = sub_267EF9138();
        v95 = sub_267BB9258(v94);
        MEMORY[0x26D608DB0](v95);
      }

      v96 = OUTLINED_FUNCTION_71_11();
      v97(v96);
      v98 = OUTLINED_FUNCTION_52_20();
      v99(v98);
    }

    else
    {

      v102 = *(v88 + 8);
      v103 = OUTLINED_FUNCTION_91_1();
      v104(v103);
      v105 = OUTLINED_FUNCTION_52_20();
      v106(v105);
    }
  }

  else
  {
    v100 = OUTLINED_FUNCTION_29_34();
    v101(v100);

    (*(v87 + 8))(v76, v81);
  }

LABEL_11:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EC4C64(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
  type metadata accessor for SmsNLv3Intent();
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v4, v5);
  OUTLINED_FUNCTION_26_0();
  sub_267EF5B28();
  return v7;
}

void sub_267EC4E04()
{
  OUTLINED_FUNCTION_48_0();
  v1 = type metadata accessor for SmsContactIntentNode();
  v2 = OUTLINED_FUNCTION_58(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6();
  v27 = v7;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v32 = v0;
  if (qword_280228898 != -1)
  {
LABEL_28:
    OUTLINED_FUNCTION_36_27();
  }

  type metadata accessor for SmsNLv3Intent();
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v11, v12);
  OUTLINED_FUNCTION_4_73();
  sub_267EC80E8(v13, v14);
  v29 = v1;
  v15 = sub_267EF5AF8();
  v16 = 0;
  v30 = *(v15 + 16);
  v28 = MEMORY[0x277D84F90];
  while (v30 != v16)
  {
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v1 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v17 = *(v4 + 72);
    sub_267DA6FC0(v15 + v1 + v17 * v16, v10);
    if (qword_280228860 != -1)
    {
      OUTLINED_FUNCTION_22_39();
      swift_once();
    }

    OUTLINED_FUNCTION_4_73();
    sub_267EC80E8(&qword_2802297A0, v18);
    sub_267EF5B28();
    v19 = 0xE200000000000000;
    v20 = 28532;
    switch(v31)
    {
      case 0:
        goto LABEL_14;
      case 1:
        v19 = 0xE400000000000000;
        v20 = 1836020326;
        goto LABEL_14;
      case 2:
        v19 = 0xE700000000000000;
        v20 = 0x6563616C706572;
        goto LABEL_14;
      case 3:
        v19 = 0xE600000000000000;
        v20 = 0x65766F6D6572;
        goto LABEL_14;
      case 4:
        v19 = 0xE600000000000000;
        v20 = 0x65726F6E6769;
        goto LABEL_14;
      case 5:
        v19 = 0xE300000000000000;
        v20 = 7301239;
        goto LABEL_14;
      case 6:
        v19 = 0xE400000000000000;
        v20 = 1953391987;
LABEL_14:
        if (v20 == 28532 && v19 == 0xE200000000000000)
        {
        }

        else
        {
          v22 = sub_267EF9EA8();

          if ((v22 & 1) == 0)
          {
LABEL_19:
            sub_267DA7088(v10);
            ++v16;
            continue;
          }
        }

        sub_267DA7024(v10, v27);
        v23 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = *(v23 + 16);
          sub_267C7235C();
          v23 = v32;
        }

        v26 = *(v23 + 16);
        if (v26 >= *(v23 + 24) >> 1)
        {
          sub_267C7235C();
          v23 = v32;
        }

        ++v16;
        *(v23 + 16) = v26 + 1;
        v28 = v23;
        sub_267DA7024(v27, v23 + v1 + v26 * v17);
        break;
      default:
        goto LABEL_19;
    }
  }

  OUTLINED_FUNCTION_47();
}

void sub_267EC525C()
{
  OUTLINED_FUNCTION_48_0();
  v158 = sub_267EF59A8();
  v2 = OUTLINED_FUNCTION_58(v158);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6();
  v157 = v7;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_36_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD0, &qword_267F08750);
  OUTLINED_FUNCTION_18(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_36_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  v16 = OUTLINED_FUNCTION_18(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v152 - v22;
  v24 = sub_267EF5B58();
  v25 = OUTLINED_FUNCTION_58(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6();
  v155 = v30;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_45_0();
  v171 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD8, &unk_267F0ECC0);
  v34 = OUTLINED_FUNCTION_18(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6();
  v169 = v37;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_36_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE0, &qword_267F08758);
  OUTLINED_FUNCTION_18(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_105();
  v177 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  OUTLINED_FUNCTION_18(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_4_26();
  v179 = sub_267EF5A88();
  v49 = OUTLINED_FUNCTION_58(v179);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_0_0();
  v181 = v55 - v54;
  v160 = type metadata accessor for SmsContactIntentNode();
  v56 = OUTLINED_FUNCTION_58(v160);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_0_0();
  v63 = v62 - v61;
  sub_267EC4E04();
  OUTLINED_FUNCTION_51_8(v64);
  v165 = v65;
  if (!v65)
  {
    goto LABEL_49;
  }

  v164 = v0 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
  v172 = v27 + 8;
  v173 = (v27 + 32);
  v66 = 0;
  v175 = (v51 + 8);
  v176 = (v51 + 32);
  v154 = (v4 + 32);
  v161 = MEMORY[0x277D84F90];
  v153 = (v4 + 8);
  v174 = v24;
  OUTLINED_FUNCTION_69_14();
  v159 = v21;
  v170 = v23;
  v163 = v58;
  v166 = v63;
  v162 = v0;
  while (2)
  {
    if (v66 >= *(v0 + 16))
    {
LABEL_51:
      __break(1u);
      return;
    }

    sub_267DA6FC0(v164 + *(v58 + 72) * v66, v63);
    v168 = v66 + 1;
    v67 = sub_267EF5B38();
    v68 = 0;
    v180 = *(v67 + 16);
    v69 = v67 + 32;
    v70 = v179;
    v178 = v67;
    while (1)
    {
      if (v180 == v68)
      {

        v63 = v166;
        sub_267DA7088(v166);
LABEL_36:
        v58 = v163;
        v0 = v162;
        goto LABEL_37;
      }

      if (v68 >= *(v67 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      sub_267B9AFEC(v69, v182);
      OUTLINED_FUNCTION_80_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCF0, &qword_267F08768);
      if (swift_dynamicCast())
      {
        break;
      }

      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v81, v82, v83, v70);
      sub_267B9F98C(v1, &qword_28022BCE8, &qword_267F08760);
      OUTLINED_FUNCTION_80_13();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v84, v85, v86, v24);
        (*v173)(v171, v23, v24);
        v87 = sub_267EC0AC4();
        v88 = OUTLINED_FUNCTION_77_9();
        v89(v88);
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v90, v91, v92, v24);
      sub_267B9F98C(v23, &qword_280229798, &unk_267EFE4D0);
LABEL_23:
      __swift_destroy_boxed_opaque_existential_0(v182);
LABEL_24:
      v69 += 40;
      ++v68;
    }

    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v70);
    v74 = v181;
    (*v176)(v181, v1, v70);
    v75 = sub_267EF5A78();
    OUTLINED_FUNCTION_51_8(v75);
    if (v76)
    {
      v77 = v76 - 1;
      v78 = sub_267EF5958();
      OUTLINED_FUNCTION_22(v78);
      v80 = v74 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v77;
      v70 = v179;
      (*(v79 + 16))(v4, v80, v78);
    }

    else
    {
      v78 = sub_267EF5958();
    }

    OUTLINED_FUNCTION_37_25();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
    v97 = v1;

    sub_267EF5958();
    OUTLINED_FUNCTION_8_7(v4);
    if (v108)
    {
      (*v175)(v181, v70);
      sub_267B9F98C(v4, &qword_28022BCD8, &unk_267F0ECC0);
      sub_267EF5908();
      v102 = v177;
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
LABEL_22:
      sub_267B9F98C(v102, &qword_28022BCE0, &qword_267F08758);
      v1 = v97;
      v67 = v178;
      goto LABEL_23;
    }

    v102 = v177;
    sub_267EF5918();
    OUTLINED_FUNCTION_23();
    v23 = v103;
    v24 = *(v104 + 8);
    v70 = v104 + 8;
    v24(v4, v78);
    sub_267EF5908();
    v105 = OUTLINED_FUNCTION_38_29();
    OUTLINED_FUNCTION_5_1(v105, v106, v107);
    if (v108)
    {
      v109 = OUTLINED_FUNCTION_9_58();
      v110(v109);
      OUTLINED_FUNCTION_51_22();
      goto LABEL_22;
    }

    sub_267B9F98C(v102, &qword_28022BCE0, &qword_267F08758);
    v111 = v181;
    v112 = sub_267EF5A78();
    OUTLINED_FUNCTION_51_8(v112);
    if (v113)
    {
      v114 = *(v23 + 2);
      v23 += 16;
      v4 = v169;
      v114(v169, v111 + ((v23[64] + 32) & ~v23[64]) + *(v23 + 7) * (v113 - 1), v78);
    }

    else
    {
      v4 = v169;
    }

    v1 = v97;
    OUTLINED_FUNCTION_37_25();
    __swift_storeEnumTagSinglePayload(v115, v116, v117, v118);

    OUTLINED_FUNCTION_8_7(v4);
    v67 = v178;
    if (v108)
    {
      v119 = OUTLINED_FUNCTION_9_58();
      v120(v119);
      v121 = v4;
      v122 = &qword_28022BCD8;
      v123 = &unk_267F0ECC0;
LABEL_34:
      sub_267B9F98C(v121, v122, v123);
      OUTLINED_FUNCTION_51_22();
      OUTLINED_FUNCTION_69_14();
      goto LABEL_23;
    }

    v23 = v167;
    sub_267EF58F8();
    v24(v4, v78);
    v24 = sub_267EF58E8();
    OUTLINED_FUNCTION_5_1(v23, 1, v24);
    if (v124)
    {
      v125 = OUTLINED_FUNCTION_9_58();
      v126(v125);
      v121 = v23;
      v122 = &qword_28022BCD0;
      v123 = &qword_267F08750;
      goto LABEL_34;
    }

    v87 = sub_267EF58D8();
    v127 = OUTLINED_FUNCTION_9_58();
    v128(v127);
    OUTLINED_FUNCTION_5_0(v24);
    (*(v129 + 8))(v23, v24);
    OUTLINED_FUNCTION_51_22();
    OUTLINED_FUNCTION_69_14();
LABEL_12:
    __swift_destroy_boxed_opaque_existential_0(v182);
    if ((v87 & 1) == 0)
    {
      goto LABEL_24;
    }

    if (qword_280228850 != -1)
    {
      OUTLINED_FUNCTION_23_34();
      swift_once();
    }

    OUTLINED_FUNCTION_4_73();
    sub_267EC80E8(&qword_2802297A0, v130);
    v131 = v159;
    v63 = v166;
    sub_267EF5B08();
    OUTLINED_FUNCTION_5_1(v131, 1, v24);
    if (v108)
    {
      sub_267DA7088(v63);
      sub_267B9F98C(v131, &qword_280229798, &unk_267EFE4D0);
      goto LABEL_36;
    }

    (*v173)(v155, v131, v24);
    v132 = v157;
    OUTLINED_FUNCTION_66();
    sub_267EF5998();
    v133 = OUTLINED_FUNCTION_77_9();
    v134(v133);
    v135 = v156;
    v136 = v158;
    (*v154)(v156, v132, v158);
    v180 = sub_267EF5D98();
    v178 = v137;
    v138 = sub_267EF5DC8();
    v140 = v139;
    v141 = v63;
    v142 = sub_267EF5DA8();
    v4 = v143;
    (*v153)(v135, v136);
    sub_267DA7088(v141);
    v144 = v161;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v149 = *(v144 + 16);
      sub_267C7191C();
      v144 = v150;
    }

    v146 = *(v144 + 16);
    v0 = v162;
    if (v146 >= *(v144 + 24) >> 1)
    {
      sub_267C7191C();
      v144 = v151;
    }

    *(v144 + 16) = v146 + 1;
    v161 = v144;
    v147 = (v144 + 48 * v146);
    v148 = v178;
    v147[4] = v180;
    v147[5] = v148;
    v147[6] = v138;
    v147[7] = v140;
    v147[8] = v142;
    v147[9] = v4;
    v24 = v174;
    OUTLINED_FUNCTION_69_14();
    v58 = v163;
    v63 = v166;
LABEL_37:
    v66 = v168;
    if (v168 != v165)
    {
      continue;
    }

    break;
  }

LABEL_49:

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EC5E7C()
{
  if (qword_280228840 != -1)
  {
    OUTLINED_FUNCTION_31_32();
  }

  type metadata accessor for SmsNLv3Intent();
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v0, v1);
  OUTLINED_FUNCTION_54_0();
  return sub_267EF5B28();
}

uint64_t sub_267EC5F1C()
{
  v0 = sub_267EC4D6C();
  v1 = 1;
  if (v0 == 1)
  {
    v1 = 2;
  }

  if (v0 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

id sub_267EC5F4C()
{
  v0 = sub_267EC4D20();
  v2 = v1;
  if (v1)
  {
    v3 = v0;
    v4 = [objc_allocWithZone(MEMORY[0x277CD4338]) init];
    if (v4)
    {
      sub_267EC8084(v3, v2, v4);
    }

    else
    {
    }

    v2 = INIntentSlotValueTransformFromDataString();
  }

  return v2;
}

uint64_t sub_267EC5FD8()
{
  if (qword_2802288F0 != -1)
  {
    OUTLINED_FUNCTION_32_24();
  }

  type metadata accessor for SmsNLv3Intent();
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v0, v1);
  OUTLINED_FUNCTION_26_0();
  sub_267EF5B28();
  v2 = 0;
  if (v4 == 8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_267EFCA40;
    *(v2 + 32) = [objc_opt_self() attachmentWithCurrentLocation];
  }

  return v2;
}

void sub_267EC610C()
{
  OUTLINED_FUNCTION_48_0();
  v4 = v3;
  v119 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1B8, &qword_267F0EC98);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_26();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1C0, &unk_267F0ECA0);
  OUTLINED_FUNCTION_18(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_68_2();
  v127 = sub_267EF5958();
  v14 = OUTLINED_FUNCTION_58(v127);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v126 = (v20 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  OUTLINED_FUNCTION_18(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v24);
  v26 = &v113 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  v28 = OUTLINED_FUNCTION_18(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6();
  v32 = v31;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_36_3(v34);
  v35 = sub_267EF5A88();
  v36 = OUTLINED_FUNCTION_58(v35);
  v122 = v37;
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v36);
  v42 = &v113 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_45_0();
  v123 = v43;
  v118 = sub_267EF89E8();
  v44 = OUTLINED_FUNCTION_58(v118);
  v117 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_52_0();
  if (qword_280228820 != -1)
  {
LABEL_43:
    swift_once();
  }

  v121 = v42;
  v128 = v0;
  v48 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  v115 = v48;
  v116 = v2;
  sub_267EF89B8();
  sub_267EC7A20(v4, v26);
  v2 = sub_267EF5B58();
  OUTLINED_FUNCTION_5_1(v26, 1, v2);
  if (v60)
  {
    sub_267B9F98C(v26, &qword_280229798, &unk_267EFE4D0);
    goto LABEL_48;
  }

  v4 = sub_267EF5B38();
  OUTLINED_FUNCTION_5_0(v2);
  (*(v49 + 8))(v26, v2);
  v0 = 0;
  v50 = v4 + 32;
  v42 = v4;
  v125 = *(v4 + 16);
  v124 = (v122 + 8);
  while (1)
  {
    if (v125 == v0)
    {
      goto LABEL_47;
    }

    if (v0 >= *(v42 + 2))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    sub_267B9AFEC(v50, v130);
    sub_267B9AFEC(v130, &v129);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCF0, &qword_267F08768);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v51, v52, v53, v35);
      v4 = sub_267EF5A68();
      v2 = v54;
      (*v124)(v32, v35);
    }

    else
    {
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v35);
      sub_267B9F98C(v32, &qword_28022BCE8, &qword_267F08760);
      v4 = 0;
      v2 = 0;
    }

    if (qword_280228848 != -1)
    {
      OUTLINED_FUNCTION_24_44();
      swift_once();
    }

    v58 = sub_267EF5648();
    v26 = v59;
    if (!v2)
    {

      goto LABEL_19;
    }

    v60 = v4 == v58 && v2 == v59;
    if (v60)
    {
      break;
    }

    v4 = sub_267EF9EA8();

    if (v4)
    {
      goto LABEL_21;
    }

LABEL_19:
    __swift_destroy_boxed_opaque_existential_0(v130);
    v50 += 40;
    v0 = (v0 + 1);
  }

LABEL_21:

  v61 = v120;
  sub_267B9A5E8(v130, &v131);
  v42 = v123;
  v62 = v121;
  if (!*(&v132 + 1))
  {
    goto LABEL_49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCF0, &qword_267F08768);
  v63 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v61, v63 ^ 1u, 1, v35);
  v64 = OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_5_1(v64, v65, v35);
  v66 = v122;
  if (v60)
  {
    goto LABEL_50;
  }

  (*(v122 + 4))(v42, v61, v35);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v67 = sub_267EF8A08();
  v68 = __swift_project_value_buffer(v67, qword_280240FB0);
  v66[2](v62, v42, v35);
  v120 = v68;
  v0 = sub_267EF89F8();
  v69 = sub_267EF95D8();
  v70 = os_log_type_enabled(v0, v69);
  v114 = v35;
  if (v70)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *&v131 = v72;
    *v71 = 136315138;
    sub_267EC80E8(&qword_28022D1D0, MEMORY[0x277D5E678]);
    v73 = sub_267EF9E58();
    v74 = v62;
    v76 = v75;
    v122 = *v124;
    v122(v74, v35);
    v77 = sub_267BA33E8(v73, v76, &v131);

    *(v71 + 4) = v77;
    _os_log_impl(&dword_267B93000, v0, v69, "#SmsNLv3Intent successfully extracted smsMessage node from NL intent: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    OUTLINED_FUNCTION_26();
    v42 = v123;
    MEMORY[0x26D60A7B0](v71, -1, -1);
  }

  else
  {

    v122 = *v124;
    v122(v62, v35);
  }

  v26 = v42;
  v4 = sub_267EF5A78();
  v2 = 0;
  v78 = *(v4 + 16);
  v35 = v16 + 16;
  v32 = v16 + 8;
  LODWORD(v125) = *MEMORY[0x277D5E588];
  while (2)
  {
    if (v78 == v2)
    {
      v98 = sub_267EF89F8();
      v99 = sub_267EF95E8();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *&v131 = v101;
        *v100 = 136315138;
        *(v100 + 4) = sub_267BA33E8(0xD000000000000089, 0x8000000267F1D630, &v131);
        OUTLINED_FUNCTION_13_20(&dword_267B93000, v102, v103, "Fatal error: %s");
        __swift_destroy_boxed_opaque_existential_0(v101);
        MEMORY[0x26D60A7B0](v101, -1, -1);
        OUTLINED_FUNCTION_26();
      }

      while (1)
      {

        sub_267EF9C98();
        __break(1u);
LABEL_47:

LABEL_48:
        v133 = 0;
        v131 = 0u;
        v132 = 0u;
        v61 = v120;
LABEL_49:
        sub_267B9F98C(&v131, &qword_28022D1C8, &unk_267F0ECB0);
        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v104, v105, v106, v35);
LABEL_50:
        sub_267B9F98C(v61, &qword_28022BCE8, &qword_267F08760);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v35 = 0xD000000000000089;
        v107 = sub_267EF8A08();
        __swift_project_value_buffer(v107, qword_280240FB0);
        v98 = sub_267EF89F8();
        v108 = sub_267EF95E8();
        if (os_log_type_enabled(v98, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          *&v131 = v110;
          *v109 = 136315138;
          *(v109 + 4) = sub_267BA33E8(0xD00000000000008CLL, 0x8000000267F1D570, &v131);
          OUTLINED_FUNCTION_13_20(&dword_267B93000, v111, v112, "Fatal error: %s");
          __swift_destroy_boxed_opaque_existential_0(v110);
          MEMORY[0x26D60A7B0](v110, -1, -1);
          OUTLINED_FUNCTION_26();
        }
      }
    }

    if (v2 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    v26 = v126;
    (*(v16 + 16))(v126, v4 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v2, v127);
    sub_267EF5948();
    v79 = *(v16 + 8);
    v80 = OUTLINED_FUNCTION_66();
    v81(v80);
    v0 = sub_267EF5938();
    OUTLINED_FUNCTION_8_7(v1);
    if (v60)
    {
      sub_267B9F98C(v1, &qword_28022D1B8, &qword_267F0EC98);
      sub_267EF5898();
      v42 = v128;
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
LABEL_36:
      sub_267B9F98C(v42, &qword_28022D1C0, &unk_267F0ECA0);
LABEL_39:
      ++v2;
      continue;
    }

    break;
  }

  v42 = v128;
  sub_267EF5928();
  OUTLINED_FUNCTION_5_0(v0);
  (*(v86 + 8))(v1, v0);
  v26 = sub_267EF5898();
  v87 = OUTLINED_FUNCTION_46_24();
  OUTLINED_FUNCTION_5_1(v87, v88, v26);
  if (v89)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_23();
  v91 = v90;
  v93 = (*(v92 + 88))(v42, v26);
  if (v93 != v125)
  {
    v94 = *(v91 + 8);
    v0 = (v91 + 8);
    v94(v42, v26);
    goto LABEL_39;
  }

  (*(v91 + 96))(v42, v26);
  v95 = sub_267EF5888();
  OUTLINED_FUNCTION_22(v95);
  (*(v96 + 32))(v119, v42);
  sub_267EF9688();
  v97 = v116;
  sub_267EF89B8();
  v122(v123, v114);
  (*(v117 + 8))(v97, v118);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EC6DF0()
{
  v1 = OUTLINED_FUNCTION_26_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_26();
  v7 = sub_267EF5888();
  v8 = OUTLINED_FUNCTION_58(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_75_12();
  sub_267EF66E8();
  sub_267EC610C();
  sub_267B9F98C(v0, &qword_280229798, &unk_267EFE4D0);
  v13 = sub_267EF5878();
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  sub_267EF5868();
  v16 = *(v10 + 8);
  v17 = OUTLINED_FUNCTION_91_1();
  v18(v17);
  return v15;
}

uint64_t sub_267EC6F34()
{
  v0 = sub_267EC60DC();
  if (v0 != 17)
  {
    sub_267D6CFAC(v0);
    OUTLINED_FUNCTION_11_1();
    v3 = v3 && v2 == 0xEA00000000006E6FLL;
    if (v3)
    {
    }

    else
    {
      sub_267EF9EA8();
      OUTLINED_FUNCTION_79_14();
    }

    return 0;
  }

  if (sub_267EC2AF0())
  {
    return 1;
  }

  if ((sub_267EC2A10() & 1) == 0)
  {
    return 0;
  }

  if (sub_267EC60DC() != 17)
  {
    return 1;
  }

  sub_267EC4DBC();
  OUTLINED_FUNCTION_68_14();
  if (!v3)
  {
    sub_267D6C0D4(v4);
    OUTLINED_FUNCTION_11_1();
    if (v8)
    {
      v10 = v9 == 0xE300000000000000;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      sub_267EF9EA8();
      OUTLINED_FUNCTION_79_14();
      return 1;
    }

LABEL_26:

    return 1;
  }

  sub_267EC4DBC();
  OUTLINED_FUNCTION_68_14();
  if (v3)
  {
    return 0;
  }

  sub_267D6C0D4(v5);
  OUTLINED_FUNCTION_37_21();
  if (v3 && v6 == 0xE400000000000000)
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_20_19();
  return 0;
}

uint64_t sub_267EC7084()
{
  if (qword_280228900 != -1)
  {
    OUTLINED_FUNCTION_7_3();
  }
}

uint64_t sub_267EC70D0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv3Intent_nlIntent;
  v4 = sub_267EF6718();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_267EC7140()
{
  v1 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv3Intent_nlIntent;
  v2 = sub_267EF6718();
  OUTLINED_FUNCTION_22(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SmsNLv3Intent()
{
  result = qword_28022D148;
  if (!qword_28022D148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267EC7228()
{
  result = sub_267EF6718();
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

uint64_t sub_267EC75E8()
{
  v1 = *v0;
  sub_267EC35E8();
  return v2 & 1;
}

uint64_t sub_267EC785C()
{
  v1 = *v0;
  sub_267EC3D08();
  return v2 & 1;
}

uint64_t sub_267EC7884(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C0C78](a1, WitnessTable);
}

uint64_t sub_267EC78E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C0C68](a1, WitnessTable);
}

uint64_t sub_267EC793C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C0C70](a1, WitnessTable);
}

uint64_t sub_267EC7A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267EC7A90(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD0, &qword_267F08750);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  v93 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD8, &unk_267F0ECC0);
  v10 = OUTLINED_FUNCTION_18(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6();
  v94 = v13;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_45_0();
  v96 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE0, &qword_267F08758);
  OUTLINED_FUNCTION_18(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  v97 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  OUTLINED_FUNCTION_18(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_34_32();
  v25 = sub_267EF5B58();
  v26 = OUTLINED_FUNCTION_58(v25);
  v95 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_0();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  OUTLINED_FUNCTION_18(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_52_0();
  v37 = sub_267EF5A88();
  v38 = OUTLINED_FUNCTION_58(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_0_0();
  v45 = v44 - v43;
  sub_267B9AFEC(a1, v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCF0, &qword_267F08768);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v37);
    (*(v40 + 32))(v45, v1, v37);
    v49 = sub_267EF5A78();
    sub_267C8F714(v49, v96);

    v50 = sub_267EF5958();
    if (__swift_getEnumTagSinglePayload(v96, 1, v50) == 1)
    {
      v51 = OUTLINED_FUNCTION_18_43();
      v52(v51);
      sub_267B9F98C(v96, &qword_28022BCD8, &unk_267F0ECC0);
      sub_267EF5908();
      v2 = v97;
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
    }

    else
    {
      v2 = v97;
      sub_267EF5918();
      OUTLINED_FUNCTION_5_0(v50);
      v70 = *(v69 + 8);
      v71 = OUTLINED_FUNCTION_66();
      v70(v71);
      v72 = sub_267EF5908();
      if (__swift_getEnumTagSinglePayload(v97, 1, v72) != 1)
      {
        sub_267B9F98C(v97, &qword_28022BCE0, &qword_267F08758);
        v82 = sub_267EF5A78();
        v2 = v94;
        sub_267C8F714(v82, v94);

        if (__swift_getEnumTagSinglePayload(v94, 1, v50) != 1)
        {
          sub_267EF58F8();
          (v70)(v94, v50);
          v85 = sub_267EF58E8();
          v86 = OUTLINED_FUNCTION_46_24();
          if (__swift_getEnumTagSinglePayload(v86, v87, v85) != 1)
          {
            v65 = sub_267EF58D8();
            v90 = OUTLINED_FUNCTION_18_43();
            v91(v90);
            OUTLINED_FUNCTION_5_0(v85);
            (*(v92 + 8))(v93, v85);
            return v65 & 1;
          }

          v88 = OUTLINED_FUNCTION_18_43();
          v89(v88);
          v75 = &qword_28022BCD0;
          v76 = &qword_267F08750;
          v80 = v93;
          goto LABEL_11;
        }

        v83 = OUTLINED_FUNCTION_18_43();
        v84(v83);
        v75 = &qword_28022BCD8;
        v76 = &unk_267F0ECC0;
LABEL_10:
        v80 = v2;
LABEL_11:
        sub_267B9F98C(v80, v75, v76);
        v65 = 0;
        return v65 & 1;
      }

      v73 = OUTLINED_FUNCTION_18_43();
      v74(v73);
    }

    v75 = &qword_28022BCE0;
    v76 = &qword_267F08758;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v37);
  sub_267B9F98C(v1, &qword_28022BCE8, &qword_267F08760);
  sub_267B9AFEC(a1, v98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v25);
    v75 = &qword_280229798;
    v76 = &unk_267EFE4D0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_25();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  v64 = (*(v95 + 32))(v32, v2, v25);
  v65 = sub_267EC0AC4(v64);
  v66 = *(v95 + 8);
  v67 = OUTLINED_FUNCTION_66();
  v68(v67);
  return v65 & 1;
}

void sub_267EC8084(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setLocalizedValue_];
}

uint64_t sub_267EC80E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267EC814C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v21 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = sub_267EF7C18();
  if (v12)
  {
    v21[2] = v11;
    v21[3] = v12;
    v21[0] = 0x6C7070612E6D6F63;
    v21[1] = 0xE900000000000065;
    sub_267C7A6BC();
    sub_267C7A710();
    v13 = sub_267EF8FA8();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_267EF41B8();
  if (v14)
  {
    v15 = sub_267EC836C(v14);
    if (v16)
    {
      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        sub_267EF90F8();

        sub_267BBD6F0(v9);
        v18 = 0;
      }

      else
      {
        sub_267BBD6F0(v9);

        v18 = 1;
      }

      __swift_storeEnumTagSinglePayload(v7, v18, 1, v10);
      sub_267C12220(v7, v9);
    }
  }

  sub_267C12290(v9, v4);
  v19 = sub_267E4D19C(v4, v13 & 1);

  sub_267BBD6F0(v9);
  return v19;
}

uint64_t sub_267EC836C(void *a1)
{
  v2 = [a1 displayAppName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267EC83DC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_26(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_217_1(v10);
  v0[36] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v0[37] = v12;
  v14 = *(v13 + 64);
  v0[38] = OUTLINED_FUNCTION_2();
  v15 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267EC84A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  v15 = *(*(v14 + 272) + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_unsendMessageState);
  *(v14 + 312) = v15;
  v16 = *(v15 + 16);
  v17 = *(v15 + 24);
  *(v14 + 320) = v17;
  if (v17)
  {
    sub_267C6AD4C(*(v14 + 248), v14 + 176, &qword_280229330, &qword_267F092F0);
    if (*(v14 + 200))
    {
      OUTLINED_FUNCTION_206_0();
      v18 = qword_280228818;

      if (v18 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v19 = sub_267EF8A08();
      v20 = OUTLINED_FUNCTION_180_2(v19, qword_280240FB0);
      v21 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_117_9(v21))
      {
        v22 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v22);
        OUTLINED_FUNCTION_6_22(&dword_267B93000, v23, v24, "#MessagesFlowStrategy trying to update existing snippet");
        OUTLINED_FUNCTION_18_2();
      }

      OUTLINED_FUNCTION_10(dword_267F0EEC0);
      a10 = v25;
      v26 = swift_task_alloc();
      v27 = OUTLINED_FUNCTION_89_9(v26);
      *v27 = v28;
      OUTLINED_FUNCTION_7_56(v27);
      OUTLINED_FUNCTION_182_2();

      return v32(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14);
    }

    sub_267B9F98C(v14 + 176, &qword_280229330, &qword_267F092F0);
  }

  v38 = *(v14 + 232);
  if (v38)
  {
    [*(v14 + 232) catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if (sub_267EF4878())
  {
    if (v38)
    {
      v39 = *(v14 + 232);
      *(v14 + 352) = v39;
      v56 = v39;
      OUTLINED_FUNCTION_437();
      if (!v57)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v58 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v58, qword_280240FB0);
      v59 = sub_267EF89F8();
      v60 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v60))
      {
        v61 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v61);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v62, v63, v64, v65, v66, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v67 = sub_267EF4198();
      OUTLINED_FUNCTION_97(v67);
      v68 = sub_267EF4188();
      OUTLINED_FUNCTION_114_8(v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v69 = OUTLINED_FUNCTION_47_3();
      v70 = OUTLINED_FUNCTION_111_8(v69);
      OUTLINED_FUNCTION_102_9(v70, xmmword_267EFCA40);
      OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
      v71 = v38;
      v72 = swift_task_alloc();
      v73 = OUTLINED_FUNCTION_32_25(v72);
      *v73 = v74;
      OUTLINED_FUNCTION_3_86(v73);
      OUTLINED_FUNCTION_182_2();

      return v32(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14);
    }
  }

  else if (v38)
  {
    OUTLINED_FUNCTION_105_12();
    v40 = *(v14 + 264);
    v42 = v41;
    OUTLINED_FUNCTION_1_89();
    a10 = v43;
    v44 = v38[1];
    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_35_30(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_10_51(v46);
    OUTLINED_FUNCTION_182_2();

    return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v75 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v75, qword_280240FB0);
  v76 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v78);
    OUTLINED_FUNCTION_21_12(&dword_267B93000, v79, v80, "#MessagesFlowStrategy generating empty output");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_167_2();
  OUTLINED_FUNCTION_45_28(v81, v82, v83, v84, v85, v86, v87);
  v88 = sub_267EF4CC8();
  OUTLINED_FUNCTION_166_3(v88, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_44_25();
  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_182_2();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267EC88F4()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *(v5 + 320);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v3 + 344) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_172_4();
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267EC8A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  v17 = OUTLINED_FUNCTION_213_1();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  v19 = os_log_type_enabled(v17, v18);
  if (v15 == 1)
  {
    if (v19)
    {
      v20 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v20);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v21, v22, "#MessagesFlowStrategy snippet updated, generating dialog only output");
      OUTLINED_FUNCTION_26();
    }

    v23 = v16[30];

    sub_267EF4888();
  }

  else
  {
    if (v19)
    {
      v24 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v24);
      OUTLINED_FUNCTION_60_16(&dword_267B93000, v25, v26, "#MessagesFlowStrategy update failed, falling back to output with snippet");
      OUTLINED_FUNCTION_4_4();
    }
  }

  OUTLINED_FUNCTION_132_3();
  if (v14)
  {
    [v14 catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if ((sub_267EF4878() & 1) == 0)
  {
    if (v14)
    {
      OUTLINED_FUNCTION_105_12();
      v28 = v16[33];
      v30 = v29;
      OUTLINED_FUNCTION_1_89();
      a10 = v31;
      v32 = v14[1];
      v33 = swift_task_alloc();
      v34 = OUTLINED_FUNCTION_35_30(v33);
      *v34 = v35;
      OUTLINED_FUNCTION_10_51(v34);
      OUTLINED_FUNCTION_182_2();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
    }

LABEL_25:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v72 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v72, qword_280240FB0);
    v73 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v75);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v76, v77, "#MessagesFlowStrategy generating empty output");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_167_2();
    OUTLINED_FUNCTION_45_28(v78, v79, v80, v81, v82, v83, v84);
    v85 = sub_267EF4CC8();
    OUTLINED_FUNCTION_166_3(v85, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_44_25();
    OUTLINED_FUNCTION_22_40();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_182_2();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }

  if (!v14)
  {
    goto LABEL_25;
  }

  v27 = v16[29];
  v16[44] = v27;
  v45 = v27;
  OUTLINED_FUNCTION_437();
  if (!v46)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v47 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v47, qword_280240FB0);
  v48 = sub_267EF89F8();
  v49 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v49))
  {
    v50 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v50);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v51, v52, v53, v54, v55, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v56 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v56);
  v57 = sub_267EF4188();
  OUTLINED_FUNCTION_114_8(v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v58 = OUTLINED_FUNCTION_47_3();
  v59 = OUTLINED_FUNCTION_111_8(v58);
  OUTLINED_FUNCTION_102_9(v59, xmmword_267EFCA40);
  OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
  v60 = v14;
  v61 = swift_task_alloc();
  v62 = OUTLINED_FUNCTION_32_25(v61);
  *v62 = v63;
  OUTLINED_FUNCTION_3_86(v62);
  OUTLINED_FUNCTION_182_2();

  return v67(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267EC8DA8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1[47];
  v3 = v1[46];
  v4 = v1[45];
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EC8EC4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 384);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267EC8FA8()
{
  OUTLINED_FUNCTION_60_5();
  v24 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_205_0();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v5);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_26();
  }

  v11 = *(v0 + 232);

  v12 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v12);
  v13 = sub_267EF4188();
  OUTLINED_FUNCTION_178_3(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v14 = OUTLINED_FUNCTION_47_3();
  v15 = OUTLINED_FUNCTION_175_2(v14);
  OUTLINED_FUNCTION_152_4(v15, xmmword_267EFCA40);
  v16 = *MEMORY[0x277D5BD38];
  v17 = *(MEMORY[0x277D5BD38] + 4);
  OUTLINED_FUNCTION_20_37(MEMORY[0x277D5BD38]);
  v18 = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 408) = v19;
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_6_62(v19);

  return v22(v21);
}

uint64_t sub_267EC910C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1[51];
  v3 = v1[50];
  v4 = v1[49];
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EC9228()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_131((v0 + 16));
  OUTLINED_FUNCTION_395();
  if (sub_267E619C4(v3, v4))
  {
    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
    sub_267EF47C8();
    OUTLINED_FUNCTION_530();
  }

  else
  {

    v5 = 0;
    v1 = 0;
  }

  v7 = *(v0 + 312);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v8 = *(v7 + 24);
  *(v7 + 16) = v5;
  *(v7 + 24) = v1;

  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();

  return v9();
}

uint64_t sub_267EC92E0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_26(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_217_1(v10);
  v0[36] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v0[37] = v12;
  v14 = *(v13 + 64);
  v0[38] = OUTLINED_FUNCTION_2();
  v15 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267EC93A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  v15 = *(*(v14 + 272) + 112);
  v16 = *(v15 + 16);
  v17 = *(v15 + 24);
  *(v14 + 312) = v17;
  if (v17)
  {
    sub_267C6AD4C(*(v14 + 248), v14 + 176, &qword_280229330, &qword_267F092F0);
    if (*(v14 + 200))
    {
      OUTLINED_FUNCTION_206_0();
      v18 = qword_280228818;

      if (v18 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v19 = sub_267EF8A08();
      *(v14 + 320) = __swift_project_value_buffer(v19, qword_280240FB0);
      v20 = sub_267EF89F8();
      v21 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_117_9(v21))
      {
        v22 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v22);
        OUTLINED_FUNCTION_6_22(&dword_267B93000, v23, v24, "#MessagesFlowStrategy trying to update existing snippet");
        OUTLINED_FUNCTION_18_2();
      }

      OUTLINED_FUNCTION_10(&unk_267F0EE90);
      a10 = v25;
      v26 = swift_task_alloc();
      *(v14 + 328) = v26;
      *v26 = v14;
      OUTLINED_FUNCTION_7_56(v26);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }

    sub_267B9F98C(v14 + 176, &qword_280229330, &qword_267F092F0);
  }

  v36 = *(v14 + 232);
  if (v36)
  {
    [*(v14 + 232) catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if (sub_267EF4878())
  {
    if (v36)
    {
      v37 = *(v14 + 232);
      *(v14 + 344) = v37;
      v54 = v37;
      OUTLINED_FUNCTION_437();
      if (!v55)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v56 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v56, qword_280240FB0);
      v57 = sub_267EF89F8();
      v58 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v58))
      {
        v59 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v59);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v60, v61, v62, v63, v64, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v65 = sub_267EF4198();
      OUTLINED_FUNCTION_97(v65);
      *(v14 + 352) = sub_267EF4188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v66 = OUTLINED_FUNCTION_47_3();
      *(v14 + 360) = v66;
      OUTLINED_FUNCTION_102_9(v66, xmmword_267EFCA40);
      OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
      v67 = v36;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v14 + 368) = v68;
      *v68 = v69;
      OUTLINED_FUNCTION_3_86(v68);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }
  }

  else if (v36)
  {
    OUTLINED_FUNCTION_105_12();
    v38 = *(v14 + 264);
    v40 = v39;
    OUTLINED_FUNCTION_1_89();
    a10 = v41;
    v42 = v36[1];
    v43 = swift_task_alloc();
    v44 = OUTLINED_FUNCTION_32_25(v43);
    *v44 = v45;
    OUTLINED_FUNCTION_10_51(v44);
    OUTLINED_FUNCTION_182_2();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v70 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v70, qword_280240FB0);
  v71 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v73);
    OUTLINED_FUNCTION_21_12(&dword_267B93000, v74, v75, "#MessagesFlowStrategy generating empty output");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_167_2();
  OUTLINED_FUNCTION_45_28(v76, v77, v78, v79, v80, v81, v82);
  v83 = sub_267EF4CC8();
  OUTLINED_FUNCTION_166_3(v83, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_44_25();
  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_182_2();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267EC9808()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v7 = *(v6 + 328);
  v8 = *(v6 + 312);
  v9 = *v2;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v4 + 336) = v0;

  if (!v0)
  {
    *(v4 + 408) = v1 & 1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267EC992C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  v16 = *(v15 + 408);
  v17 = *(v15 + 320);
  v18 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  v20 = os_log_type_enabled(v18, v19);
  if (v16 == 1)
  {
    if (v20)
    {
      v21 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v21);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v22, v23, "#MessagesFlowStrategy snippet updated, generating dialog only output");
      OUTLINED_FUNCTION_26();
    }

    v24 = *(v15 + 240);

    sub_267EF4888();
  }

  else
  {
    if (v20)
    {
      v25 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v25);
      OUTLINED_FUNCTION_60_16(&dword_267B93000, v26, v27, "#MessagesFlowStrategy update failed, falling back to output with snippet");
      OUTLINED_FUNCTION_4_4();
    }
  }

  OUTLINED_FUNCTION_132_3();
  if (v14)
  {
    [v14 catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if ((sub_267EF4878() & 1) == 0)
  {
    if (v14)
    {
      OUTLINED_FUNCTION_105_12();
      v29 = *(v15 + 264);
      v31 = v30;
      OUTLINED_FUNCTION_1_89();
      a10 = v32;
      v33 = v14[1];
      v34 = swift_task_alloc();
      v35 = OUTLINED_FUNCTION_32_25(v34);
      *v35 = v36;
      OUTLINED_FUNCTION_10_51(v35);
      OUTLINED_FUNCTION_182_2();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
    }

LABEL_25:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v70 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v70, qword_280240FB0);
    v71 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v73);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v74, v75, "#MessagesFlowStrategy generating empty output");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_167_2();
    OUTLINED_FUNCTION_45_28(v76, v77, v78, v79, v80, v81, v82);
    v83 = sub_267EF4CC8();
    OUTLINED_FUNCTION_166_3(v83, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_44_25();
    OUTLINED_FUNCTION_22_40();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_182_2();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
  }

  if (!v14)
  {
    goto LABEL_25;
  }

  v28 = *(v15 + 232);
  *(v15 + 344) = v28;
  v46 = v28;
  OUTLINED_FUNCTION_437();
  if (!v47)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v48 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v48, qword_280240FB0);
  v49 = sub_267EF89F8();
  v50 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v50))
  {
    v51 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v51);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v52, v53, v54, v55, v56, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v57 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v57);
  *(v15 + 352) = sub_267EF4188();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v58 = OUTLINED_FUNCTION_47_3();
  *(v15 + 360) = v58;
  OUTLINED_FUNCTION_102_9(v58, xmmword_267EFCA40);
  OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
  v59 = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v15 + 368) = v60;
  *v60 = v61;
  OUTLINED_FUNCTION_3_86(v60);
  OUTLINED_FUNCTION_182_2();

  return v65(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267EC9CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_248_0();
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_209(*(v17 + 336));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if (OUTLINED_FUNCTION_212_1())
  {
    v20 = *(v17 + 320);

    v21 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v23);
      OUTLINED_FUNCTION_26_22(&dword_267B93000, v24, v25, "#MessagesFlowStrategy snippet update failed due to barge-in, generating empty output");
      OUTLINED_FUNCTION_29_1();
    }

    OUTLINED_FUNCTION_253_1();
    OUTLINED_FUNCTION_252_1(v26, v27, v28, v29, v30, v31, v32);
    v33 = sub_267EF4CC8();
    v34 = MEMORY[0x277D5C1D8];
    v18[3] = v33;
    v18[4] = v34;
    __swift_allocate_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_250_0();
    __swift_destroy_boxed_opaque_existential_0(v16);
    v35 = *(v19 + 8);
    v36 = OUTLINED_FUNCTION_37_1();
    v37(v36);

    v38 = *(v17 + 304);
    v39 = *(v17 + 280);

    OUTLINED_FUNCTION_1();
  }

  else
  {
    v40 = *(v17 + 304);
    v41 = *(v17 + 280);
    __swift_destroy_boxed_opaque_existential_0(v16);

    OUTLINED_FUNCTION_17();
    v42 = *(v17 + 336);
  }

  OUTLINED_FUNCTION_244_0();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_267EC9E34()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1[46];
  v3 = v1[45];
  v4 = v1[44];
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EC9F50()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_267EC9FB4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 376);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267ECA098()
{
  OUTLINED_FUNCTION_60_5();
  v22 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_205_0();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v5);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_26();
  }

  v11 = v0[29];

  v12 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v12);
  v0[48] = sub_267EF4188();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v13 = OUTLINED_FUNCTION_47_3();
  v0[49] = v13;
  OUTLINED_FUNCTION_152_4(v13, xmmword_267EFCA40);
  v14 = *MEMORY[0x277D5BD38];
  v15 = *(MEMORY[0x277D5BD38] + 4);
  OUTLINED_FUNCTION_20_37(MEMORY[0x277D5BD38]);
  v16 = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[50] = v17;
  *v17 = v18;
  v19 = OUTLINED_FUNCTION_6_62(v17);

  return v20(v19);
}

uint64_t sub_267ECA204()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1[50];
  v3 = v1[49];
  v4 = v1[48];
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267ECA320()
{
  OUTLINED_FUNCTION_56();
  v1 = *(*(v0 + 272) + 112);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));

  v3 = OUTLINED_FUNCTION_108();
  if (sub_267E619C4(v3, v4))
  {
    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
    sub_267EF47C8();
    OUTLINED_FUNCTION_74_0();
  }

  else
  {

    v5 = 0;
    v2 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v7 = *(v1 + 24);
  *(v1 + 16) = v5;
  *(v1 + 24) = v2;

  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();

  return v8();
}

uint64_t sub_267ECA3FC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_26(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_217_1(v10);
  v0[36] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v0[37] = v12;
  v14 = *(v13 + 64);
  v0[38] = OUTLINED_FUNCTION_2();
  v15 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267ECA4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_203_0();
  if (v14)
  {
    sub_267C6AD4C(*(v15 + 248), v15 + 176, &qword_280229330, &qword_267F092F0);
    if (*(v15 + 200))
    {
      OUTLINED_FUNCTION_206_0();
      v16 = qword_280228818;

      if (v16 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v17 = sub_267EF8A08();
      v18 = OUTLINED_FUNCTION_180_2(v17, qword_280240FB0);
      v19 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_117_9(v19))
      {
        v20 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v20);
        OUTLINED_FUNCTION_6_22(&dword_267B93000, v21, v22, "#MessagesFlowStrategy trying to update existing snippet");
        OUTLINED_FUNCTION_18_2();
      }

      OUTLINED_FUNCTION_10(&unk_267F0EEB0);
      a10 = v23;
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_89_9(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_7_56(v25);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }

    sub_267B9F98C(v15 + 176, &qword_280229330, &qword_267F092F0);
  }

  v36 = *(v15 + 232);
  if (v36)
  {
    [*(v15 + 232) catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if (sub_267EF4878())
  {
    if (v36)
    {
      v37 = *(v15 + 232);
      *(v15 + 352) = v37;
      v54 = v37;
      OUTLINED_FUNCTION_437();
      if (!v55)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v56 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v56, qword_280240FB0);
      v57 = sub_267EF89F8();
      v58 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v58))
      {
        v59 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v59);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v60, v61, v62, v63, v64, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v65 = sub_267EF4198();
      OUTLINED_FUNCTION_97(v65);
      v66 = sub_267EF4188();
      OUTLINED_FUNCTION_114_8(v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v67 = OUTLINED_FUNCTION_47_3();
      v68 = OUTLINED_FUNCTION_111_8(v67);
      OUTLINED_FUNCTION_102_9(v68, xmmword_267EFCA40);
      OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
      v69 = v36;
      v70 = swift_task_alloc();
      v71 = OUTLINED_FUNCTION_32_25(v70);
      *v71 = v72;
      OUTLINED_FUNCTION_3_86(v71);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }
  }

  else if (v36)
  {
    OUTLINED_FUNCTION_105_12();
    v38 = *(v15 + 264);
    v40 = v39;
    OUTLINED_FUNCTION_1_89();
    a10 = v41;
    v42 = v36[1];
    v43 = swift_task_alloc();
    v44 = OUTLINED_FUNCTION_35_30(v43);
    *v44 = v45;
    OUTLINED_FUNCTION_10_51(v44);
    OUTLINED_FUNCTION_182_2();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v73 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v73, qword_280240FB0);
  v74 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v76);
    OUTLINED_FUNCTION_21_12(&dword_267B93000, v77, v78, "#MessagesFlowStrategy generating empty output");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_167_2();
  OUTLINED_FUNCTION_45_28(v79, v80, v81, v82, v83, v84, v85);
  v86 = sub_267EF4CC8();
  OUTLINED_FUNCTION_166_3(v86, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_44_25();
  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_182_2();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECA8FC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *(v5 + 320);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v3 + 344) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_172_4();
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267ECAA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  v17 = OUTLINED_FUNCTION_213_1();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  v19 = os_log_type_enabled(v17, v18);
  if (v15 == 1)
  {
    if (v19)
    {
      v20 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v20);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v21, v22, "#MessagesFlowStrategy snippet updated, generating dialog only output");
      OUTLINED_FUNCTION_26();
    }

    v23 = v16[30];

    sub_267EF4888();
  }

  else
  {
    if (v19)
    {
      v24 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v24);
      OUTLINED_FUNCTION_60_16(&dword_267B93000, v25, v26, "#MessagesFlowStrategy update failed, falling back to output with snippet");
      OUTLINED_FUNCTION_4_4();
    }
  }

  OUTLINED_FUNCTION_132_3();
  if (v14)
  {
    [v14 catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if ((sub_267EF4878() & 1) == 0)
  {
    if (v14)
    {
      OUTLINED_FUNCTION_105_12();
      v28 = v16[33];
      v30 = v29;
      OUTLINED_FUNCTION_1_89();
      a10 = v31;
      v32 = v14[1];
      v33 = swift_task_alloc();
      v34 = OUTLINED_FUNCTION_35_30(v33);
      *v34 = v35;
      OUTLINED_FUNCTION_10_51(v34);
      OUTLINED_FUNCTION_182_2();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
    }

LABEL_25:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v72 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v72, qword_280240FB0);
    v73 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v75);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v76, v77, "#MessagesFlowStrategy generating empty output");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_167_2();
    OUTLINED_FUNCTION_45_28(v78, v79, v80, v81, v82, v83, v84);
    v85 = sub_267EF4CC8();
    OUTLINED_FUNCTION_166_3(v85, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_44_25();
    OUTLINED_FUNCTION_22_40();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_182_2();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }

  if (!v14)
  {
    goto LABEL_25;
  }

  v27 = v16[29];
  v16[44] = v27;
  v45 = v27;
  OUTLINED_FUNCTION_437();
  if (!v46)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v47 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v47, qword_280240FB0);
  v48 = sub_267EF89F8();
  v49 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v49))
  {
    v50 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v50);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v51, v52, v53, v54, v55, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v56 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v56);
  v57 = sub_267EF4188();
  OUTLINED_FUNCTION_114_8(v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v58 = OUTLINED_FUNCTION_47_3();
  v59 = OUTLINED_FUNCTION_111_8(v58);
  OUTLINED_FUNCTION_102_9(v59, xmmword_267EFCA40);
  OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
  v60 = v14;
  v61 = swift_task_alloc();
  v62 = OUTLINED_FUNCTION_32_25(v61);
  *v62 = v63;
  OUTLINED_FUNCTION_3_86(v62);
  OUTLINED_FUNCTION_182_2();

  return v67(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECADB0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 384);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267ECAE94()
{
  OUTLINED_FUNCTION_60_5();
  v24 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_205_0();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v5);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_26();
  }

  v11 = *(v0 + 232);

  v12 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v12);
  v13 = sub_267EF4188();
  OUTLINED_FUNCTION_178_3(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v14 = OUTLINED_FUNCTION_47_3();
  v15 = OUTLINED_FUNCTION_175_2(v14);
  OUTLINED_FUNCTION_152_4(v15, xmmword_267EFCA40);
  v16 = *MEMORY[0x277D5BD38];
  v17 = *(MEMORY[0x277D5BD38] + 4);
  OUTLINED_FUNCTION_20_37(MEMORY[0x277D5BD38]);
  v18 = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 408) = v19;
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_6_62(v19);

  return v22(v21);
}

uint64_t sub_267ECAFF8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1[51];
  v3 = v1[50];
  v4 = v1[49];
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267ECB114()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_26(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_217_1(v10);
  v0[36] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v0[37] = v12;
  v14 = *(v13 + 64);
  v0[38] = OUTLINED_FUNCTION_2();
  v15 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267ECB1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_135_2(*(v15 + 272));
  if (v14)
  {
    sub_267C6AD4C(*(v15 + 248), v15 + 176, &qword_280229330, &qword_267F092F0);
    if (*(v15 + 200))
    {
      OUTLINED_FUNCTION_206_0();
      v16 = qword_280228818;

      if (v16 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v17 = sub_267EF8A08();
      v18 = OUTLINED_FUNCTION_180_2(v17, qword_280240FB0);
      v19 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_117_9(v19))
      {
        v20 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v20);
        OUTLINED_FUNCTION_6_22(&dword_267B93000, v21, v22, "#MessagesFlowStrategy trying to update existing snippet");
        OUTLINED_FUNCTION_18_2();
      }

      OUTLINED_FUNCTION_10(&unk_267F0EEA0);
      a10 = v23;
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_89_9(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_7_56(v25);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }

    sub_267B9F98C(v15 + 176, &qword_280229330, &qword_267F092F0);
  }

  v36 = *(v15 + 232);
  if (v36)
  {
    [*(v15 + 232) catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if (sub_267EF4878())
  {
    if (v36)
    {
      v37 = *(v15 + 232);
      *(v15 + 352) = v37;
      v54 = v37;
      OUTLINED_FUNCTION_437();
      if (!v55)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v56 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v56, qword_280240FB0);
      v57 = sub_267EF89F8();
      v58 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v58))
      {
        v59 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v59);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v60, v61, v62, v63, v64, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v65 = sub_267EF4198();
      OUTLINED_FUNCTION_97(v65);
      v66 = sub_267EF4188();
      OUTLINED_FUNCTION_114_8(v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v67 = OUTLINED_FUNCTION_47_3();
      v68 = OUTLINED_FUNCTION_111_8(v67);
      OUTLINED_FUNCTION_102_9(v68, xmmword_267EFCA40);
      OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
      v69 = v36;
      v70 = swift_task_alloc();
      v71 = OUTLINED_FUNCTION_32_25(v70);
      *v71 = v72;
      OUTLINED_FUNCTION_3_86(v71);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }
  }

  else if (v36)
  {
    OUTLINED_FUNCTION_105_12();
    v38 = *(v15 + 264);
    v40 = v39;
    OUTLINED_FUNCTION_1_89();
    a10 = v41;
    v42 = v36[1];
    v43 = swift_task_alloc();
    v44 = OUTLINED_FUNCTION_35_30(v43);
    *v44 = v45;
    OUTLINED_FUNCTION_10_51(v44);
    OUTLINED_FUNCTION_182_2();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v73 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v73, qword_280240FB0);
  v74 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v76);
    OUTLINED_FUNCTION_21_12(&dword_267B93000, v77, v78, "#MessagesFlowStrategy generating empty output");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_167_2();
  OUTLINED_FUNCTION_45_28(v79, v80, v81, v82, v83, v84, v85);
  v86 = sub_267EF4CC8();
  OUTLINED_FUNCTION_166_3(v86, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_44_25();
  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_182_2();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECB620()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *(v5 + 320);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v3 + 344) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_172_4();
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267ECB740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  v17 = OUTLINED_FUNCTION_213_1();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  v19 = os_log_type_enabled(v17, v18);
  if (v15 == 1)
  {
    if (v19)
    {
      v20 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v20);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v21, v22, "#MessagesFlowStrategy snippet updated, generating dialog only output");
      OUTLINED_FUNCTION_26();
    }

    v23 = v16[30];

    sub_267EF4888();
  }

  else
  {
    if (v19)
    {
      v24 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v24);
      OUTLINED_FUNCTION_60_16(&dword_267B93000, v25, v26, "#MessagesFlowStrategy update failed, falling back to output with snippet");
      OUTLINED_FUNCTION_4_4();
    }
  }

  OUTLINED_FUNCTION_132_3();
  if (v14)
  {
    [v14 catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if ((sub_267EF4878() & 1) == 0)
  {
    if (v14)
    {
      OUTLINED_FUNCTION_105_12();
      v28 = v16[33];
      v30 = v29;
      OUTLINED_FUNCTION_1_89();
      a10 = v31;
      v32 = v14[1];
      v33 = swift_task_alloc();
      v34 = OUTLINED_FUNCTION_35_30(v33);
      *v34 = v35;
      OUTLINED_FUNCTION_10_51(v34);
      OUTLINED_FUNCTION_182_2();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
    }

LABEL_25:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v72 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v72, qword_280240FB0);
    v73 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v75);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v76, v77, "#MessagesFlowStrategy generating empty output");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_167_2();
    OUTLINED_FUNCTION_45_28(v78, v79, v80, v81, v82, v83, v84);
    v85 = sub_267EF4CC8();
    OUTLINED_FUNCTION_166_3(v85, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_44_25();
    OUTLINED_FUNCTION_22_40();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_182_2();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }

  if (!v14)
  {
    goto LABEL_25;
  }

  v27 = v16[29];
  v16[44] = v27;
  v45 = v27;
  OUTLINED_FUNCTION_437();
  if (!v46)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v47 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v47, qword_280240FB0);
  v48 = sub_267EF89F8();
  v49 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v49))
  {
    v50 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v50);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v51, v52, v53, v54, v55, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v56 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v56);
  v57 = sub_267EF4188();
  OUTLINED_FUNCTION_114_8(v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v58 = OUTLINED_FUNCTION_47_3();
  v59 = OUTLINED_FUNCTION_111_8(v58);
  OUTLINED_FUNCTION_102_9(v59, xmmword_267EFCA40);
  OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
  v60 = v14;
  v61 = swift_task_alloc();
  v62 = OUTLINED_FUNCTION_32_25(v61);
  *v62 = v63;
  OUTLINED_FUNCTION_3_86(v62);
  OUTLINED_FUNCTION_182_2();

  return v67(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECBAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_248_0();
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_209(*(v17 + 344));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if (OUTLINED_FUNCTION_212_1())
  {
    v20 = *(v17 + 328);

    v21 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v23);
      OUTLINED_FUNCTION_26_22(&dword_267B93000, v24, v25, "#MessagesFlowStrategy snippet update failed due to barge-in, generating empty output");
      OUTLINED_FUNCTION_29_1();
    }

    OUTLINED_FUNCTION_253_1();
    OUTLINED_FUNCTION_252_1(v26, v27, v28, v29, v30, v31, v32);
    v33 = sub_267EF4CC8();
    v34 = MEMORY[0x277D5C1D8];
    v18[3] = v33;
    v18[4] = v34;
    __swift_allocate_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_250_0();
    __swift_destroy_boxed_opaque_existential_0(v16);
    v35 = *(v19 + 8);
    v36 = OUTLINED_FUNCTION_37_1();
    v37(v36);

    v38 = *(v17 + 304);
    v39 = *(v17 + 280);

    OUTLINED_FUNCTION_1();
  }

  else
  {
    v40 = *(v17 + 304);
    v41 = *(v17 + 280);
    __swift_destroy_boxed_opaque_existential_0(v16);

    OUTLINED_FUNCTION_17();
    v42 = *(v17 + 344);
  }

  OUTLINED_FUNCTION_244_0();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_267ECBC34()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1[47];
  v3 = v1[46];
  v4 = v1[45];
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267ECBD50()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_267ECBDB4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 384);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267ECBE98()
{
  OUTLINED_FUNCTION_60_5();
  v24 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_205_0();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v5);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_26();
  }

  v11 = *(v0 + 232);

  v12 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v12);
  v13 = sub_267EF4188();
  OUTLINED_FUNCTION_178_3(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v14 = OUTLINED_FUNCTION_47_3();
  v15 = OUTLINED_FUNCTION_175_2(v14);
  OUTLINED_FUNCTION_152_4(v15, xmmword_267EFCA40);
  v16 = *MEMORY[0x277D5BD38];
  v17 = *(MEMORY[0x277D5BD38] + 4);
  OUTLINED_FUNCTION_20_37(MEMORY[0x277D5BD38]);
  v18 = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 408) = v19;
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_6_62(v19);

  return v22(v21);
}

uint64_t sub_267ECBFFC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1[51];
  v3 = v1[50];
  v4 = v1[49];
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267ECC118()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_131((v0 + 16));
  OUTLINED_FUNCTION_395();
  if (sub_267E619C4(v3, v4))
  {
    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
    sub_267EF47C8();
    OUTLINED_FUNCTION_530();
  }

  else
  {

    v5 = 0;
    v1 = 0;
  }

  v7 = *(v0 + 312);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v8 = *(v7 + 32);
  *(v7 + 24) = v5;
  *(v7 + 32) = v1;

  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();

  return v9();
}

uint64_t sub_267ECC1D0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_26(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_217_1(v10);
  v0[36] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v0[37] = v12;
  v14 = *(v13 + 64);
  v0[38] = OUTLINED_FUNCTION_2();
  v15 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267ECC298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_135_2(*(v15 + 272));
  if (v14)
  {
    sub_267C6AD4C(*(v15 + 248), v15 + 176, &qword_280229330, &qword_267F092F0);
    if (*(v15 + 200))
    {
      OUTLINED_FUNCTION_206_0();
      v16 = qword_280228818;

      if (v16 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v17 = sub_267EF8A08();
      v18 = OUTLINED_FUNCTION_180_2(v17, qword_280240FB0);
      v19 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_117_9(v19))
      {
        v20 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v20);
        OUTLINED_FUNCTION_6_22(&dword_267B93000, v21, v22, "#MessagesFlowStrategy trying to update existing snippet");
        OUTLINED_FUNCTION_18_2();
      }

      OUTLINED_FUNCTION_10(&unk_267F0EE80);
      a10 = v23;
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_89_9(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_7_56(v25);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }

    sub_267B9F98C(v15 + 176, &qword_280229330, &qword_267F092F0);
  }

  v36 = *(v15 + 232);
  if (v36)
  {
    [*(v15 + 232) catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if (sub_267EF4878())
  {
    if (v36)
    {
      v37 = *(v15 + 232);
      *(v15 + 352) = v37;
      v54 = v37;
      OUTLINED_FUNCTION_437();
      if (!v55)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v56 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v56, qword_280240FB0);
      v57 = sub_267EF89F8();
      v58 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v58))
      {
        v59 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v59);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v60, v61, v62, v63, v64, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v65 = sub_267EF4198();
      OUTLINED_FUNCTION_97(v65);
      v66 = sub_267EF4188();
      OUTLINED_FUNCTION_114_8(v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v67 = OUTLINED_FUNCTION_47_3();
      v68 = OUTLINED_FUNCTION_111_8(v67);
      OUTLINED_FUNCTION_102_9(v68, xmmword_267EFCA40);
      OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
      v69 = v36;
      v70 = swift_task_alloc();
      v71 = OUTLINED_FUNCTION_32_25(v70);
      *v71 = v72;
      OUTLINED_FUNCTION_3_86(v71);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }
  }

  else if (v36)
  {
    OUTLINED_FUNCTION_105_12();
    v38 = *(v15 + 264);
    v40 = v39;
    OUTLINED_FUNCTION_1_89();
    a10 = v41;
    v42 = v36[1];
    v43 = swift_task_alloc();
    v44 = OUTLINED_FUNCTION_35_30(v43);
    *v44 = v45;
    OUTLINED_FUNCTION_10_51(v44);
    OUTLINED_FUNCTION_182_2();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v73 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v73, qword_280240FB0);
  v74 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v76);
    OUTLINED_FUNCTION_21_12(&dword_267B93000, v77, v78, "#MessagesFlowStrategy generating empty output");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_167_2();
  OUTLINED_FUNCTION_45_28(v79, v80, v81, v82, v83, v84, v85);
  v86 = sub_267EF4CC8();
  OUTLINED_FUNCTION_166_3(v86, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_44_25();
  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_182_2();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECC6DC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *(v5 + 320);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v3 + 344) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_172_4();
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267ECC7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  v17 = OUTLINED_FUNCTION_213_1();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  v19 = os_log_type_enabled(v17, v18);
  if (v15 == 1)
  {
    if (v19)
    {
      v20 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v20);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v21, v22, "#MessagesFlowStrategy snippet updated, generating dialog only output");
      OUTLINED_FUNCTION_26();
    }

    v23 = v16[30];

    sub_267EF4888();
  }

  else
  {
    if (v19)
    {
      v24 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v24);
      OUTLINED_FUNCTION_60_16(&dword_267B93000, v25, v26, "#MessagesFlowStrategy update failed, falling back to output with snippet");
      OUTLINED_FUNCTION_4_4();
    }
  }

  OUTLINED_FUNCTION_132_3();
  if (v14)
  {
    [v14 catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if ((sub_267EF4878() & 1) == 0)
  {
    if (v14)
    {
      OUTLINED_FUNCTION_105_12();
      v28 = v16[33];
      v30 = v29;
      OUTLINED_FUNCTION_1_89();
      a10 = v31;
      v32 = v14[1];
      v33 = swift_task_alloc();
      v34 = OUTLINED_FUNCTION_35_30(v33);
      *v34 = v35;
      OUTLINED_FUNCTION_10_51(v34);
      OUTLINED_FUNCTION_182_2();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
    }

LABEL_25:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v72 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v72, qword_280240FB0);
    v73 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v75);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v76, v77, "#MessagesFlowStrategy generating empty output");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_167_2();
    OUTLINED_FUNCTION_45_28(v78, v79, v80, v81, v82, v83, v84);
    v85 = sub_267EF4CC8();
    OUTLINED_FUNCTION_166_3(v85, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_44_25();
    OUTLINED_FUNCTION_22_40();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_182_2();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }

  if (!v14)
  {
    goto LABEL_25;
  }

  v27 = v16[29];
  v16[44] = v27;
  v45 = v27;
  OUTLINED_FUNCTION_437();
  if (!v46)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v47 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v47, qword_280240FB0);
  v48 = sub_267EF89F8();
  v49 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v49))
  {
    v50 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v50);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v51, v52, v53, v54, v55, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v56 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v56);
  v57 = sub_267EF4188();
  OUTLINED_FUNCTION_114_8(v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v58 = OUTLINED_FUNCTION_47_3();
  v59 = OUTLINED_FUNCTION_111_8(v58);
  OUTLINED_FUNCTION_102_9(v59, xmmword_267EFCA40);
  OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
  v60 = v14;
  v61 = swift_task_alloc();
  v62 = OUTLINED_FUNCTION_32_25(v61);
  *v62 = v63;
  OUTLINED_FUNCTION_3_86(v62);
  OUTLINED_FUNCTION_182_2();

  return v67(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECCB90()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 384);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267ECCC74()
{
  OUTLINED_FUNCTION_60_5();
  v24 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_205_0();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v5);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_26();
  }

  v11 = *(v0 + 232);

  v12 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v12);
  v13 = sub_267EF4188();
  OUTLINED_FUNCTION_178_3(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v14 = OUTLINED_FUNCTION_47_3();
  v15 = OUTLINED_FUNCTION_175_2(v14);
  OUTLINED_FUNCTION_152_4(v15, xmmword_267EFCA40);
  v16 = *MEMORY[0x277D5BD38];
  v17 = *(MEMORY[0x277D5BD38] + 4);
  OUTLINED_FUNCTION_20_37(MEMORY[0x277D5BD38]);
  v18 = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 408) = v19;
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_6_62(v19);

  return v22(v21);
}

uint64_t sub_267ECCDD8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1[51];
  v3 = v1[50];
  v4 = v1[49];
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267ECCEF4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_26(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_217_1(v10);
  v0[36] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v0[37] = v12;
  v14 = *(v13 + 64);
  v0[38] = OUTLINED_FUNCTION_2();
  v15 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267ECCFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_135_2(*(v15 + 272));
  if (v14)
  {
    sub_267C6AD4C(*(v15 + 248), v15 + 176, &qword_280229330, &qword_267F092F0);
    if (*(v15 + 200))
    {
      OUTLINED_FUNCTION_206_0();
      v16 = qword_280228818;

      if (v16 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v17 = sub_267EF8A08();
      v18 = OUTLINED_FUNCTION_180_2(v17, qword_280240FB0);
      v19 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_117_9(v19))
      {
        v20 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v20);
        OUTLINED_FUNCTION_6_22(&dword_267B93000, v21, v22, "#MessagesFlowStrategy trying to update existing snippet");
        OUTLINED_FUNCTION_18_2();
      }

      OUTLINED_FUNCTION_10(&unk_267F0EE70);
      a10 = v23;
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_89_9(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_7_56(v25);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }

    sub_267B9F98C(v15 + 176, &qword_280229330, &qword_267F092F0);
  }

  v36 = *(v15 + 232);
  if (v36)
  {
    [*(v15 + 232) catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if (sub_267EF4878())
  {
    if (v36)
    {
      v37 = *(v15 + 232);
      *(v15 + 352) = v37;
      v54 = v37;
      OUTLINED_FUNCTION_437();
      if (!v55)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v56 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v56, qword_280240FB0);
      v57 = sub_267EF89F8();
      v58 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v58))
      {
        v59 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v59);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v60, v61, v62, v63, v64, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v65 = sub_267EF4198();
      OUTLINED_FUNCTION_97(v65);
      v66 = sub_267EF4188();
      OUTLINED_FUNCTION_114_8(v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v67 = OUTLINED_FUNCTION_47_3();
      v68 = OUTLINED_FUNCTION_111_8(v67);
      OUTLINED_FUNCTION_102_9(v68, xmmword_267EFCA40);
      OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
      v69 = v36;
      v70 = swift_task_alloc();
      v71 = OUTLINED_FUNCTION_32_25(v70);
      *v71 = v72;
      OUTLINED_FUNCTION_3_86(v71);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }
  }

  else if (v36)
  {
    OUTLINED_FUNCTION_105_12();
    v38 = *(v15 + 264);
    v40 = v39;
    OUTLINED_FUNCTION_1_89();
    a10 = v41;
    v42 = v36[1];
    v43 = swift_task_alloc();
    v44 = OUTLINED_FUNCTION_35_30(v43);
    *v44 = v45;
    OUTLINED_FUNCTION_10_51(v44);
    OUTLINED_FUNCTION_182_2();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v73 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v73, qword_280240FB0);
  v74 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v76);
    OUTLINED_FUNCTION_21_12(&dword_267B93000, v77, v78, "#MessagesFlowStrategy generating empty output");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_167_2();
  OUTLINED_FUNCTION_45_28(v79, v80, v81, v82, v83, v84, v85);
  v86 = sub_267EF4CC8();
  OUTLINED_FUNCTION_166_3(v86, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_44_25();
  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_182_2();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECD400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[33] = a6;
  v7[34] = v6;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60) - 8) + 64) + 15;
  v7[35] = swift_task_alloc();
  v9 = sub_267EF3D88();
  v7[36] = v9;
  v10 = *(v9 - 8);
  v7[37] = v10;
  v11 = *(v10 + 64) + 15;
  v7[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267ECD504, 0, 0);
}

uint64_t sub_267ECD504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_203_0();
  if (v14)
  {
    sub_267C6AD4C(*(v15 + 248), v15 + 176, &qword_280229330, &qword_267F092F0);
    if (*(v15 + 200))
    {
      OUTLINED_FUNCTION_206_0();
      v16 = qword_280228818;

      if (v16 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v17 = sub_267EF8A08();
      v18 = OUTLINED_FUNCTION_180_2(v17, qword_280240FB0);
      v19 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_117_9(v19))
      {
        v20 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v20);
        OUTLINED_FUNCTION_6_22(&dword_267B93000, v21, v22, "#MessagesFlowStrategy trying to update existing snippet");
        OUTLINED_FUNCTION_18_2();
      }

      OUTLINED_FUNCTION_10(dword_267F0EE20);
      a10 = v23;
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_89_9(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_7_56(v25);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }

    sub_267B9F98C(v15 + 176, &qword_280229330, &qword_267F092F0);
  }

  v36 = *(v15 + 232);
  if (v36)
  {
    [*(v15 + 232) catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if (sub_267EF4878())
  {
    if (v36)
    {
      v37 = *(v15 + 232);
      *(v15 + 352) = v37;
      v54 = v37;
      OUTLINED_FUNCTION_437();
      if (!v55)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v56 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v56, qword_280240FB0);
      v57 = sub_267EF89F8();
      v58 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v58))
      {
        v59 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v59);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v60, v61, v62, v63, v64, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v65 = sub_267EF4198();
      OUTLINED_FUNCTION_97(v65);
      v66 = sub_267EF4188();
      OUTLINED_FUNCTION_114_8(v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v67 = OUTLINED_FUNCTION_47_3();
      v68 = OUTLINED_FUNCTION_111_8(v67);
      OUTLINED_FUNCTION_102_9(v68, xmmword_267EFCA40);
      OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
      v69 = v36;
      v70 = swift_task_alloc();
      v71 = OUTLINED_FUNCTION_32_25(v70);
      *v71 = v72;
      OUTLINED_FUNCTION_3_86(v71);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }
  }

  else if (v36)
  {
    OUTLINED_FUNCTION_105_12();
    v38 = *(v15 + 264);
    v40 = v39;
    OUTLINED_FUNCTION_1_89();
    a10 = v41;
    v42 = v36[1];
    v43 = swift_task_alloc();
    v44 = OUTLINED_FUNCTION_35_30(v43);
    *v44 = v45;
    OUTLINED_FUNCTION_10_51(v44);
    OUTLINED_FUNCTION_182_2();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v73 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v73, qword_280240FB0);
  v74 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v76);
    OUTLINED_FUNCTION_21_12(&dword_267B93000, v77, v78, "#MessagesFlowStrategy generating empty output");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_167_2();
  OUTLINED_FUNCTION_45_28(v79, v80, v81, v82, v83, v84, v85);
  v86 = sub_267EF4CC8();
  OUTLINED_FUNCTION_166_3(v86, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_44_25();
  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_182_2();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECD93C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *(v5 + 320);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v3 + 344) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_172_4();
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267ECDA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  v17 = OUTLINED_FUNCTION_213_1();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  v19 = os_log_type_enabled(v17, v18);
  if (v15 == 1)
  {
    if (v19)
    {
      v20 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v20);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v21, v22, "#MessagesFlowStrategy snippet updated, generating dialog only output");
      OUTLINED_FUNCTION_26();
    }

    v23 = v16[30];

    sub_267EF4888();
  }

  else
  {
    if (v19)
    {
      v24 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v24);
      OUTLINED_FUNCTION_60_16(&dword_267B93000, v25, v26, "#MessagesFlowStrategy update failed, falling back to output with snippet");
      OUTLINED_FUNCTION_4_4();
    }
  }

  OUTLINED_FUNCTION_132_3();
  if (v14)
  {
    [v14 catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if ((sub_267EF4878() & 1) == 0)
  {
    if (v14)
    {
      OUTLINED_FUNCTION_105_12();
      v28 = v16[33];
      v30 = v29;
      OUTLINED_FUNCTION_1_89();
      a10 = v31;
      v32 = v14[1];
      v33 = swift_task_alloc();
      v34 = OUTLINED_FUNCTION_35_30(v33);
      *v34 = v35;
      OUTLINED_FUNCTION_10_51(v34);
      OUTLINED_FUNCTION_182_2();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
    }

LABEL_25:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v72 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v72, qword_280240FB0);
    v73 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v75);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v76, v77, "#MessagesFlowStrategy generating empty output");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_167_2();
    OUTLINED_FUNCTION_45_28(v78, v79, v80, v81, v82, v83, v84);
    v85 = sub_267EF4CC8();
    OUTLINED_FUNCTION_166_3(v85, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_44_25();
    OUTLINED_FUNCTION_22_40();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_182_2();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }

  if (!v14)
  {
    goto LABEL_25;
  }

  v27 = v16[29];
  v16[44] = v27;
  v45 = v27;
  OUTLINED_FUNCTION_437();
  if (!v46)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v47 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v47, qword_280240FB0);
  v48 = sub_267EF89F8();
  v49 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v49))
  {
    v50 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v50);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v51, v52, v53, v54, v55, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v56 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v56);
  v57 = sub_267EF4188();
  OUTLINED_FUNCTION_114_8(v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v58 = OUTLINED_FUNCTION_47_3();
  v59 = OUTLINED_FUNCTION_111_8(v58);
  OUTLINED_FUNCTION_102_9(v59, xmmword_267EFCA40);
  OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
  v60 = v14;
  v61 = swift_task_alloc();
  v62 = OUTLINED_FUNCTION_32_25(v61);
  *v62 = v63;
  OUTLINED_FUNCTION_3_86(v62);
  OUTLINED_FUNCTION_182_2();

  return v67(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECDDF0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 384);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267ECDED4()
{
  OUTLINED_FUNCTION_60_5();
  v24 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_205_0();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v5);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_26();
  }

  v11 = *(v0 + 232);

  v12 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v12);
  v13 = sub_267EF4188();
  OUTLINED_FUNCTION_178_3(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v14 = OUTLINED_FUNCTION_47_3();
  v15 = OUTLINED_FUNCTION_175_2(v14);
  OUTLINED_FUNCTION_152_4(v15, xmmword_267EFCA40);
  v16 = *MEMORY[0x277D5BD38];
  v17 = *(MEMORY[0x277D5BD38] + 4);
  OUTLINED_FUNCTION_20_37(MEMORY[0x277D5BD38]);
  v18 = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 408) = v19;
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_6_62(v19);

  return v22(v21);
}

uint64_t sub_267ECE038()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1[51];
  v3 = v1[50];
  v4 = v1[49];
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267ECE154()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_131((v0 + 16));
  OUTLINED_FUNCTION_395();
  if (sub_267E619C4(v3, v4))
  {
    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
    sub_267EF47C8();
    OUTLINED_FUNCTION_530();
  }

  else
  {

    v5 = 0;
    v1 = 0;
  }

  v7 = *(v0 + 312);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v8 = *(v7 + 296);
  *(v7 + 288) = v5;
  *(v7 + 296) = v1;

  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();

  return v9();
}

uint64_t sub_267ECE20C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_267ED9728(a1, sub_267EDA984, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_267ECE2B8(uint64_t a1, char a2)
{
  sub_267C6AD4C(a1, v16, &qword_28022AEF0, &qword_267EFCDE0);
  v4 = v17;
  if (v17)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v16, v17);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    MEMORY[0x28223BE20](v5);
    OUTLINED_FUNCTION_0_0();
    (*(v6 + 16))(v9 - v8);
    OUTLINED_FUNCTION_17_4();
    v10 = sub_267EF9E88();
    v11 = *(v6 + 8);
    v12 = OUTLINED_FUNCTION_17_4();
    v13(v12);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v10 = 0;
  }

  v14 = sub_267ECE984(a2 & 1);
  v15 = [v14 facadePropertyName];

  if (v15)
  {
    [v2 setValue:v10 forKey:v15];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_267ECE45C()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_267C6AD4C(v9, v20, &qword_28022AEF0, &qword_267EFCDE0);
  v10 = v21;
  if (v21)
  {
    v11 = __swift_project_boxed_opaque_existential_0(v20, v21);
    v12 = *(v10 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_0_0();
    v16 = v15 - v14;
    (*(v12 + 16))(v15 - v14);
    v17 = sub_267EF9E88();
    (*(v12 + 8))(v16, v10);
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_267ECEB80(v8, v6, v4, v2);
  v19 = [v18 facadePropertyName];

  if (v19)
  {
    [v0 setValue:v17 forKey:v19];
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_47();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_267ECE5F0()
{
  for (i = 0; i != 9; ++i)
  {
    sub_267ECE8D0(byte_2878CA9B0[i + 32], &qword_28022AE60, 0x277CD4078, sub_267C7C28C, &v14);
    v1 = OUTLINED_FUNCTION_258_1();
    v2 = [v1 isEnum];

    if ((v2 & 1) == 0)
    {
      if (!v15)
      {
        goto LABEL_10;
      }

LABEL_8:
      OUTLINED_FUNCTION_5_72();
      OUTLINED_FUNCTION_215_1();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_257_1(v3, v4);
    if (v13)
    {
      if ((swift_dynamicCast() & 1) != 0 && v12)
      {
        goto LABEL_8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_202_1();
      sub_267B9F98C(v5, v6, v7);
    }

LABEL_10:
    OUTLINED_FUNCTION_202_1();
    result = sub_267B9F98C(v8, v9, v10);
  }

  return result;
}

uint64_t sub_267ECE738()
{
  for (i = 0; i != 9; ++i)
  {
    sub_267ECE8D0(byte_2878CA9E0[i + 32], &qword_280229118, 0x277CD4048, sub_267C7C4C8, &v14);
    v1 = OUTLINED_FUNCTION_258_1();
    v2 = [v1 isEnum];

    if ((v2 & 1) == 0)
    {
      if (!v15)
      {
        goto LABEL_10;
      }

LABEL_8:
      OUTLINED_FUNCTION_159_4();
      OUTLINED_FUNCTION_215_1();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_257_1(v3, v4);
    if (v13)
    {
      if ((swift_dynamicCast() & 1) != 0 && v12)
      {
        goto LABEL_8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_202_1();
      sub_267B9F98C(v5, v6, v7);
    }

LABEL_10:
    OUTLINED_FUNCTION_202_1();
    result = sub_267B9F98C(v8, v9, v10);
  }

  return result;
}

void sub_267ECE8D0(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, _OWORD *a5@<X8>)
{
  v7 = sub_267ECEB80(a1, a2, a3, a4);
  v8 = [v7 facadePropertyName];

  if (v8)
  {
    v9 = [v5 valueForKey_];

    if (v9)
    {
      sub_267EF99B8();

      swift_unknownObjectRelease();
    }

    else
    {
      *a5 = 0u;
      a5[1] = 0u;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_267ECE984(char a1)
{
  v2 = 0xD000000000000011;
  sub_267BA9F38(0, &qword_28022A9F0, 0x277CD3BC0);
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = [v3 _intentInstanceDescription];

  if (a1)
  {
    v5 = 0x8000000267F0FE60;
  }

  else
  {
    v2 = 0x6F43646574696465;
    v5 = 0xED0000746E65746ELL;
  }

  v6 = sub_267EF8FF8();

  v7 = [v4 slotByName_];

  if (v7)
  {
    return v7;
  }

  sub_267EF9B68();

  MEMORY[0x26D608E60](v2, v5);

  MEMORY[0x26D608E60](0xD000000000000011, 0x8000000267F1D7B0);
  v9 = sub_267EFA0E8();
  MEMORY[0x26D608E60](v9);

  result = sub_267EF9C98();
  __break(1u);
  return result;
}

uint64_t sub_267ECEB80(uint64_t a1, unint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  sub_267BA9F38(0, a2, a3);
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = [v7 _intentInstanceDescription];

  a4(a1);
  sub_267EF8FF8();
  OUTLINED_FUNCTION_156_2();

  v9 = [v8 slotByName_];

  if (v9)
  {
    return v9;
  }

  sub_267EF9B68();

  v11 = (a4)(a1);
  MEMORY[0x26D608E60](v11);

  MEMORY[0x26D608E60](0xD000000000000011, 0x8000000267F1D7B0);
  v12 = sub_267EFA0E8();
  MEMORY[0x26D608E60](v12);

  result = sub_267EF9C98();
  __break(1u);
  return result;
}

uint64_t sub_267ECED10(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_267D302A8(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_267ECEE14(unint64_t result)
{
  v1 = result;
  v22 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84FA0];
  if (result >> 62)
  {
    result = sub_267EF9A68();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_22:
    v18 = MEMORY[0x277D84F90];
LABEL_23:

    return v18;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v2 >= 1)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v3 = 0;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      v4 = (v1 & 0xC000000000000001) != 0 ? MEMORY[0x26D609870](v3, v1) : *(v1 + 32 + 8 * v3);
      v5 = v4;
      v6 = v21;
      if ((v21 & 0xC000000000000001) == 0)
      {
        break;
      }

      v7 = v4;
      v8 = sub_267EF9AA8();

      if ((v8 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_19:
      if (++v3 == v2)
      {
        v18 = v19;
        goto LABEL_23;
      }
    }

    if (*(v21 + 16))
    {
      v9 = *(v21 + 40);
      v10 = sub_267EF9808();
      v11 = ~(-1 << *(v6 + 32));
      while (1)
      {
        v12 = v10 & v11;
        if (((*(v6 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v13 = *(*(v6 + 48) + 8 * v12);
        v14 = sub_267EF9818();

        v10 = v12 + 1;
        if (v14)
        {

          goto LABEL_19;
        }
      }
    }

LABEL_16:
    v15 = v5;
    sub_267D2FF60(&v20, v15);

    v16 = v15;
    MEMORY[0x26D608F90]();
    v17 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v17 >> 1)
    {
      OUTLINED_FUNCTION_8_2(v17);
      sub_267EF9328();
    }

    sub_267EF9368();

    v19 = v22;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_267ECF070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_267EF43D8();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267ECF134, 0, 0);
}

uint64_t sub_267ECF38C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267ECF484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_267EF43D8();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267ECF548, 0, 0);
}

uint64_t sub_267ECF7A0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267ECF898()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[19];

  v2 = v0[1];

  return v2(1);
}

uint64_t sub_267ECF90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_1();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_53();
  a18 = v20;
  __swift_destroy_boxed_opaque_existential_0((v20 + 16));
  __swift_destroy_boxed_opaque_existential_0((v20 + 56));
  v26 = *(v20 + 168);
  *(v20 + 96) = v26;
  v27 = *(v20 + 152);
  v28 = *(v20 + 136);
  v29 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  v30 = OUTLINED_FUNCTION_47_20();
  v32 = v31(v30);
  v34 = *(v20 + 144);
  v33 = *(v20 + 152);
  v35 = *(v20 + 136);
  if (v32 != *MEMORY[0x277D5BE80])
  {
    v46 = *(v34 + 8);
    v47 = OUTLINED_FUNCTION_26_0();
    v48(v47);
LABEL_8:
    v49 = *(v20 + 152);

    v50 = *(v20 + 8);
    goto LABEL_11;
  }

  v36 = *(v34 + 96);
  v37 = OUTLINED_FUNCTION_26_0();
  v38(v37);
  v39 = *v33;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v40 = OUTLINED_FUNCTION_184_2();
  OUTLINED_FUNCTION_30_1(v40, qword_280240FB0);
  v41 = v39;
  OUTLINED_FUNCTION_185_2();
  v42 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_181_2())
  {
    OUTLINED_FUNCTION_107_10();
    OUTLINED_FUNCTION_108_9();
    OUTLINED_FUNCTION_99_10();
    OUTLINED_FUNCTION_81_1();
    v43 = OUTLINED_FUNCTION_34_33(5.778e-34);
    *(v33 + 14) = sub_267BA33E8(v22, v21, &a10);
    OUTLINED_FUNCTION_53_23(&dword_267B93000, v44, v45, "#MessagesFlowStrategy received %@, snippet with viewId=%s is not available");
    sub_267B9F98C(v23, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_9_11();
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

  v51 = *(v20 + 152);

  OUTLINED_FUNCTION_18_44();
LABEL_11:
  OUTLINED_FUNCTION_46();

  return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
}

uint64_t sub_267ECFB34()
{
  OUTLINED_FUNCTION_12();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v5 = sub_267EF43D8();
  v1[17] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[18] = v6;
  v8 = *(v7 + 64);
  v1[19] = OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267ECFBDC()
{
  if (*(v0 + 16) - 2 > 3)
  {
    return 0;
  }

  if (*(v0 + 40))
  {
    return 1;
  }

  if (sub_267D60D20())
  {
    return 2;
  }

  return 3;
}

void sub_267ECFC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v239 = v24;
  v26 = v25;
  v245 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229720, &qword_267EFE108);
  OUTLINED_FUNCTION_18(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v31);
  v33 = &v228 - v32;
  v238 = sub_267EF44C8();
  v34 = OUTLINED_FUNCTION_58(v238);
  v237 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_36_3(v39 - v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  OUTLINED_FUNCTION_18(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3_1(&v228 - v44);
  v250 = sub_267EF4C08();
  v45 = OUTLINED_FUNCTION_58(v250);
  v243 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v52);
  v233 = sub_267EF4BE8();
  v53 = OUTLINED_FUNCTION_58(v233);
  v235 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v58 - v57);
  v248 = sub_267EF7008();
  v59 = OUTLINED_FUNCTION_58(v248);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_60();
  v247 = v64 - v65;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_45_0();
  v246 = v67;
  v68 = sub_267EF4BA8();
  v69 = OUTLINED_FUNCTION_58(v68);
  v71 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_0_0();
  v76 = v75 - v74;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v77 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v77, qword_280240FB0);
  v78 = *(v71 + 16);
  v249 = v26;
  v78(v76, v26, v68);
  v244 = v20;
  v79 = sub_267EF89F8();
  v80 = sub_267EF95C8();
  v81 = os_log_type_enabled(v79, v80);
  v232 = v33;
  if (v81)
  {
    v82 = OUTLINED_FUNCTION_48();
    v83 = OUTLINED_FUNCTION_52();
    v229 = v20;
    v84 = v83;
    v255 = v83;
    *v82 = 136315138;
    sub_267EDB6D8(&qword_28022AF50, MEMORY[0x277D5C118]);
    v85 = sub_267EF9E58();
    v87 = v86;
    v88 = *(v71 + 8);
    v89 = OUTLINED_FUNCTION_37_1();
    v90(v89);
    sub_267BA33E8(v85, v87, &v255);
    OUTLINED_FUNCTION_25_0();

    *(v82 + 4) = v85;
    _os_log_impl(&dword_267B93000, v79, v80, "#SendMessageNeedsValueFlowStrategy received input: %s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v84);
    v23 = v229;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v91 = *(v71 + 8);
    v92 = OUTLINED_FUNCTION_37_1();
    v93(v92);
  }

  v94 = v23[6];
  __swift_project_boxed_opaque_existential_0(v23 + 2, v23[5]);
  v95 = *(v94 + 8);
  v96 = OUTLINED_FUNCTION_7_1();
  v97(v96);
  __swift_project_boxed_opaque_existential_0(&v255, v257);
  v98 = v246;
  OUTLINED_FUNCTION_7_1();
  sub_267EF3B78();
  v100 = v247;
  v99 = v248;
  (*(v61 + 104))(v247, *MEMORY[0x277D61C58], v248);
  v101 = sub_267C28F38(v98, v100);
  v102 = *(v61 + 8);
  v103 = OUTLINED_FUNCTION_1_10();
  v102(v103);
  (v102)(v98, v99);
  __swift_destroy_boxed_opaque_existential_0(&v255);
  v104 = v250;
  if (v101)
  {
    v105 = OUTLINED_FUNCTION_183_1();
    v106 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v106))
    {
      v107 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v107);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v108, v109, "#SendMessageNeedsValueFlowStrategy tap-to-edit request, ignoring");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_151_3();
    sub_267EF3E68();
    goto LABEL_79;
  }

  v110 = v242;
  sub_267EF4B88();
  v111 = v243;
  v112 = v243[11];
  v113 = OUTLINED_FUNCTION_199();
  if (v112(v113) == *MEMORY[0x277D5C150])
  {
    v114 = *(v111 + 96);
    v115 = OUTLINED_FUNCTION_199();
    v116(v115);
    v117 = v235;
    v118 = v240;
    v119 = v233;
    (*(v235 + 32))(v240, v110, v233);
    v120 = v234;
    sub_267B9CC04(v118, v234);
    v121 = type metadata accessor for DirectInvocationUseCases();
    if (__swift_getEnumTagSinglePayload(v120, 1, v121) == 1)
    {
      (*(v117 + 8))(v118, v119);
      sub_267B9F98C(v120, &unk_28022BBE0, qword_267EFD030);
    }

    else
    {
      OUTLINED_FUNCTION_12_4();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v141 = sub_267EF8228();
        OUTLINED_FUNCTION_58(v141);
        v143 = v142;
        v145 = *(v144 + 88);
        v146 = OUTLINED_FUNCTION_12_4();
        if (v147(v146) == *MEMORY[0x277D5D4D8])
        {
          v148 = *(v143 + 8);
          v149 = OUTLINED_FUNCTION_12_4();
          v150(v149);
          v151 = OUTLINED_FUNCTION_183_1();
          v152 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_36(v152))
          {
            v153 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v153);
            OUTLINED_FUNCTION_17_0(&dword_267B93000, v154, v155, "#SendMessageNeedsValueFlowStrategy prompt is cancelled by button press");
            OUTLINED_FUNCTION_26();
          }

          OUTLINED_FUNCTION_151_3();
          sub_267EF3E48();
          v156 = OUTLINED_FUNCTION_169_3();
          v157(v156);
          goto LABEL_79;
        }

        v165 = OUTLINED_FUNCTION_169_3();
        v166(v165);
        v167 = *(v143 + 8);
        v168 = OUTLINED_FUNCTION_12_4();
        v169(v168);
      }

      else
      {
        (*(v117 + 8))(v240, v119);
        sub_267EDB680(v120, type metadata accessor for DirectInvocationUseCases);
      }
    }
  }

  else
  {
    v122 = *(v111 + 8);
    v123 = OUTLINED_FUNCTION_199();
    v124(v123);
  }

  v125 = v241;
  sub_267EF4B88();
  sub_267E57DFC(v125, &v255);
  v126 = *(v111 + 8);
  v127 = OUTLINED_FUNCTION_199();
  v126(v127);
  if (v257)
  {
    sub_267B9AFEC(&v255, v254);
    OUTLINED_FUNCTION_118_7();
    v128 = *(v111 + 384);
    v129 = OUTLINED_FUNCTION_38_0();
    v131 = v130(v129);
    __swift_destroy_boxed_opaque_existential_0(v254);
    if (v131 == 2)
    {
      v132 = OUTLINED_FUNCTION_183_1();
      v133 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v133))
      {
        v134 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v134);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v135, v136, "#SendMessageNeedsValueFlowStrategy prompt is cancelled");
        OUTLINED_FUNCTION_26();
      }

      OUTLINED_FUNCTION_151_3();
      sub_267EF3E48();
      goto LABEL_78;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  OUTLINED_FUNCTION_170_4(&a9);
  sub_267EF4938();
  sub_267EF44B8();
  (*(v237 + 8))(v111, v238);
  OUTLINED_FUNCTION_61_0();
  v137 = sub_267C7C240();
  if (v137 != 9)
  {
    if (sub_267C7C28C(v137) == 0x746E65746E6F63 && v138 == 0xE700000000000000)
    {
    }

    else
    {
      v140 = sub_267EF9EA8();

      if ((v140 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    OUTLINED_FUNCTION_170_4(&v256);
    sub_267EF4B88();
    v158 = (v112)(v111, v104);
    v159 = *MEMORY[0x277D5C160];
    (v126)(v111, v104);
    v160 = v232;
    if (v158 == v159)
    {
      sub_267C6AD4C(&v255, &v252, &unk_28022BBF0, &unk_267F01C60);
      if (v253)
      {
        sub_267B9A5E8(&v252, v254);
        OUTLINED_FUNCTION_118_7();
        v161 = *(v111 + 368);
        v162 = OUTLINED_FUNCTION_38_0();
        v163(v162);
        if (v164)
        {

          goto LABEL_73;
        }

        OUTLINED_FUNCTION_118_7();
        v219 = *(v111 + 424);
        v220 = OUTLINED_FUNCTION_38_0();
        v222 = *(v221(v220) + 16);

        if (v222 || (OUTLINED_FUNCTION_118_7(), v223 = *(v111 + 160), v224 = OUTLINED_FUNCTION_38_0(), (v225(v224) & 1) != 0))
        {
LABEL_73:
          v211 = OUTLINED_FUNCTION_183_1();
          v226 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_36(v226))
          {
            v227 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v227);
            v216 = "#SendMessageNeedsValueFlowStrategy top parse is change app or add/remove recipient, ignoring to re-run RCH";
            goto LABEL_75;
          }

          goto LABEL_76;
        }

        __swift_destroy_boxed_opaque_existential_0(v254);
      }

      else
      {
        sub_267B9F98C(&v252, &unk_28022BBF0, &unk_267F01C60);
      }
    }

    sub_267C4D820(v160);
    if (__swift_getEnumTagSinglePayload(v160, 1, v104) == 1)
    {
      sub_267B9F98C(v160, &qword_280229720, &qword_267EFE108);
    }

    else
    {
      v170 = v243[4];
      v171 = v230;
      OUTLINED_FUNCTION_202_1();
      v172();
      v173 = OUTLINED_FUNCTION_183_1();
      v174 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v174))
      {
        v175 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v175);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v176, v177, "#SendMessageNeedsValueFlowStrategy isContentSlot, use ruleBasedParse for remaining checks");
        OUTLINED_FUNCTION_26();
      }

      v178 = sub_267E57DFC(v171, v254);
      (v126)(v171, v104, v178);
      sub_267BF3128(v254, &v255, &unk_28022BBF0, &unk_267F01C60);
    }
  }

LABEL_44:
  sub_267C6AD4C(&v255, &v252, &unk_28022BBF0, &unk_267F01C60);
  if (!v253)
  {
    sub_267B9F98C(&v252, &unk_28022BBF0, &unk_267F01C60);
    v194 = OUTLINED_FUNCTION_183_1();
    v195 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v195))
    {
      v196 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v196);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v197, v198, "#SendMessageNeedsValueFlowStrategy unexpected input, ignoring");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_151_3();
    sub_267EF3E68();
    goto LABEL_78;
  }

  sub_267B9A5E8(&v252, v254);
  sub_267B9AFEC(v254, &v252);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229210, &qword_267EFCB98);
  type metadata accessor for SmsNLv4Intent();
  if (swift_dynamicCast())
  {
    v111 = *(v251 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_recipientPersons);
    v179 = sub_267BAF0DC(v111);
    if (v179)
    {
      v180 = v179;

      v181 = 0;
      while (v180 != v181)
      {
        if ((v111 & 0xC000000000000001) != 0)
        {
          v193 = OUTLINED_FUNCTION_1_10();
          v183 = MEMORY[0x26D609870](v193);
        }

        else
        {
          if (v181 >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_82;
          }

          v182 = *(v111 + 8 * v181 + 32);
        }

        if (__OFADD__(v181, 1))
        {
          __break(1u);
LABEL_82:
          __break(1u);
          return;
        }

        sub_267EACC60(v183, v184, v185, v186, v187, v188, v189, v190, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239);
        v192 = v191;

        ++v181;
        if ((v192 & 1) == 0)
        {

          goto LABEL_63;
        }
      }

      v199 = OUTLINED_FUNCTION_183_1();
      v200 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v200))
      {
        v201 = OUTLINED_FUNCTION_32();
        *v201 = 0;
        _os_log_impl(&dword_267B93000, v199, v111, "#SendMessageNeedsValueFlowStrategy recipient is nobody, cancelling", v201, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      OUTLINED_FUNCTION_151_3();
      sub_267EF3E48();

      goto LABEL_77;
    }
  }

LABEL_63:
  OUTLINED_FUNCTION_118_7();
  v202 = *(v111 + 288);
  v203 = OUTLINED_FUNCTION_38_0();
  if (v204(v203))
  {
    OUTLINED_FUNCTION_118_7();
    v205 = *(v111 + 208);
    v206 = OUTLINED_FUNCTION_38_0();
    if ((v207(v206) & 1) == 0)
    {
      v211 = OUTLINED_FUNCTION_183_1();
      v217 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v217))
      {
        v218 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v218);
        v216 = "#SendMessageNeedsValueFlowStrategy unrelated request, ignoring";
        goto LABEL_75;
      }

LABEL_76:

      OUTLINED_FUNCTION_151_3();
      sub_267EF3E68();
      goto LABEL_77;
    }
  }

  OUTLINED_FUNCTION_118_7();
  v208 = *(v111 + 272);
  v209 = OUTLINED_FUNCTION_38_0();
  if (v210(v209))
  {
    v211 = OUTLINED_FUNCTION_183_1();
    v212 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v212))
    {
      v213 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v213);
      v216 = "#SendMessageNeedsValueFlowStrategy app name is specified, ignoring to treat as change request";
LABEL_75:
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v214, v215, v216);
      OUTLINED_FUNCTION_26();
      goto LABEL_76;
    }

    goto LABEL_76;
  }

  OUTLINED_FUNCTION_151_3();
  sub_267EF3E58();
LABEL_77:
  __swift_destroy_boxed_opaque_existential_0(v254);
LABEL_78:
  sub_267B9F98C(&v255, &unk_28022BBF0, &unk_267F01C60);
LABEL_79:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267ED0B20()
{
  OUTLINED_FUNCTION_12();
  v1[53] = v2;
  v1[54] = v0;
  v1[51] = v3;
  v1[52] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  v1[55] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[56] = v6;
  v8 = *(v7 + 64);
  v1[57] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF7008();
  v1[58] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[59] = v10;
  v12 = *(v11 + 64);
  v1[60] = OUTLINED_FUNCTION_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  OUTLINED_FUNCTION_18(v13);
  v15 = *(v14 + 64);
  v1[61] = OUTLINED_FUNCTION_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  OUTLINED_FUNCTION_18(v16);
  v18 = *(v17 + 64);
  v1[62] = OUTLINED_FUNCTION_2();
  v19 = sub_267EF44C8();
  v1[63] = v19;
  OUTLINED_FUNCTION_30_0(v19);
  v1[64] = v20;
  v22 = *(v21 + 64);
  v1[65] = OUTLINED_FUNCTION_2();
  v23 = sub_267EF4C08();
  v1[66] = v23;
  OUTLINED_FUNCTION_30_0(v23);
  v1[67] = v24;
  v26 = *(v25 + 64) + 15;
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_267ED0D30()
{
  v232 = v0;
  v1 = *(v0 + 560);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = *(v0 + 440);
  v6 = *(v0 + 416);
  v7 = *(v0 + 424);
  sub_267EF4B88();
  sub_267EF4938();
  sub_267EF44B8();
  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_26_0();
  v8(v9);
  OUTLINED_FUNCTION_65_5();
  v10 = sub_267C7C240();
  *(v0 + 616) = v10;
  if (v10 == 9)
  {
    OUTLINED_FUNCTION_197_1();
    if (!v11)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v228 = v8;
    v13 = *(v0 + 448);
    v12 = *(v0 + 456);
    v14 = *(v0 + 440);
    v15 = *(v0 + 424);
    v16 = sub_267EF8A08();
    v17 = __swift_project_value_buffer(v16, qword_280240FB0);
    v18 = *(v13 + 16);
    v19 = OUTLINED_FUNCTION_108();
    v20(v19);
    v21 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 520);
      v223 = *(v0 + 504);
      v25 = *(v0 + 448);
      v24 = *(v0 + 456);
      v220 = *(v0 + 440);
      OUTLINED_FUNCTION_48();
      v225 = OUTLINED_FUNCTION_55_0();
      *&v230 = v225;
      *v17 = 136315138;
      sub_267EF4938();
      sub_267EF44B8();
      v26 = OUTLINED_FUNCTION_186_2();
      (v8)(v26, v223);
      (*(v25 + 8))(v24, v220);
      v27 = sub_267BA33E8(v23, v8, &v230);

      *(v17 + 4) = v27;
      OUTLINED_FUNCTION_52_18(&dword_267B93000, v28, v15, "#SendMessageNeedsValueFlowStrategy unknown parameter: %s");
      __swift_destroy_boxed_opaque_existential_0(v225);
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {
      v55 = *(v0 + 448);
      v54 = *(v0 + 456);
      v56 = *(v0 + 440);

      v57 = *(v55 + 8);
      v58 = OUTLINED_FUNCTION_108();
      v59(v58);
    }

    v60 = *(v0 + 560);
    v61 = *(v0 + 536);
    v62 = *(v0 + 528);
    v63 = *(v0 + 520);
    v64 = *(v0 + 504);
    v65 = *(v0 + 440);
    v66 = *(v0 + 424);
    sub_267EF4938();
    v67 = sub_267EF44B8();
    v69 = v68;
    v228(v63, v64);
    sub_267C4BE60();
    OUTLINED_FUNCTION_61_1();
    *v70 = v67;
    v70[1] = v69;
    swift_willThrow();
    v71 = *(v61 + 8);
    v72 = OUTLINED_FUNCTION_290();
    v73(v72);
LABEL_18:
    OUTLINED_FUNCTION_174_1();

    OUTLINED_FUNCTION_17();

    return v87();
  }

  v29 = v10;
  if (v10 == 3)
  {
    v30 = *(v0 + 552);
    v31 = *(v0 + 536);
    v32 = *(v0 + 528);
    v33 = *(v0 + 416);
    sub_267EF4B88();
    v34 = *(v31 + 88);
    v35 = OUTLINED_FUNCTION_26_0();
    LODWORD(v33) = v36(v35);
    v37 = *MEMORY[0x277D5C160];
    v38 = *(v31 + 8);
    v39 = OUTLINED_FUNCTION_26_0();
    v38(v39);
    if (v33 == v37)
    {
      v40 = *(v0 + 560);
      v41 = *(v0 + 544);
      v42 = *(v0 + 536);
      v43 = *(v0 + 528);
      v44 = *(v0 + 416);
      sub_267ED8F98();
      v45 = OUTLINED_FUNCTION_108();
      v38(v45);
      v46 = *(v42 + 32);
      v47 = OUTLINED_FUNCTION_66();
      v48(v47);
    }
  }

  sub_267E57DFC(*(v0 + 560), (v0 + 56));
  if (!*(v0 + 80))
  {
    sub_267B9F98C(v0 + 56, &unk_28022BBF0, &unk_267F01C60);
    OUTLINED_FUNCTION_197_1();
    if (!v11)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v74 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v74, qword_280240FB0);
    v75 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v77);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v78, v79, v80, v81, v82, 2u);
      OUTLINED_FUNCTION_26();
    }

    v83 = *(v0 + 560);
    v84 = *(v0 + 536);
    v85 = *(v0 + 528);

    sub_267C266B0();
    OUTLINED_FUNCTION_61_1();
    *v86 = 0xD000000000000018;
    v86[1] = 0x8000000267F1A040;
    swift_willThrow();
    (*(v84 + 8))(v83, v85);
    goto LABEL_18;
  }

  v49 = *(v0 + 560);
  v50 = *(v0 + 432);
  sub_267B9A5E8((v0 + 56), v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  v51 = sub_267EF7068();
  v53 = v52;
  v51(&v230, v49);

  v89 = v230;
  *(v0 + 568) = v230;
  if (v29 == 3)
  {
    *(*(*(v0 + 432) + 56) + 209) = 1;
  }

  v90 = *(*(v0 + 432) + 56);
  *(v0 + 576) = v90;
  v91 = sub_267D60D20();
  if (v29 == 3 && v91)
  {
    v92 = *(v90 + 56);
    if (v92)
    {
      v93 = *(v90 + 48);
      v94 = *(v90 + 56);

      sub_267ED9A2C(v89);
      if (v95)
      {
        v226 = v90;
        v96 = *(v0 + 496);
        v97 = *(v0 + 432);
        v99 = v97[5];
        v98 = v97[6];
        __swift_project_boxed_opaque_existential_0(v97 + 2, v99);
        (*(v98 + 8))(v99, v98);
        v100 = *(v0 + 288);
        __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
        OUTLINED_FUNCTION_290();
        sub_267EF3B68();
        sub_267EF2E38();
        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
        OUTLINED_FUNCTION_131_2();
        v108 = sub_267D5E5A0(v105, v106, v107, v93, v92);
        v53 = v109;

        sub_267B9F98C(v96, &unk_28022AF10, &unk_267F001E0);
        __swift_destroy_boxed_opaque_existential_0((v0 + 256));
        OUTLINED_FUNCTION_197_1();
        if (!v11)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v110 = MEMORY[0x277D837D0];
        v111 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v111, qword_280240FB0);
        v112 = sub_267EF89F8();
        v113 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v113))
        {
          *OUTLINED_FUNCTION_32() = 0;
          OUTLINED_FUNCTION_109_10();
          _os_log_impl(v114, v115, v116, v117, v118, 2u);
          OUTLINED_FUNCTION_32_0();
        }

        *(v0 + 384) = v110;
        *(v0 + 360) = v108;
        *(v0 + 368) = v53;
        OUTLINED_FUNCTION_5_72();
        sub_267ECE45C();
        sub_267B9F98C(v0 + 360, &qword_28022AEF0, &qword_267EFCDE0);
        v90 = v226;
      }

      else
      {
      }
    }
  }

  v119 = *(v0 + 440);
  v120 = *(v0 + 424);
  v121 = sub_267EF4918();
  v122 = v121;
  *(v0 + 584) = v121;
  if (!v29)
  {
    v123 = sub_267BCEA0C(v121);
    if (!v123)
    {
      goto LABEL_80;
    }

    v124 = v123;
    v125 = sub_267BCEA0C(v89);
    if (!v125)
    {
      goto LABEL_38;
    }

    v126 = v125;
    if (*(v90 + 128))
    {

LABEL_38:

      goto LABEL_80;
    }

    v227 = v90;
    v229 = v89;
    v127 = *(v90 + 120);
    OUTLINED_FUNCTION_197_1();
    if (!v11)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v128 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v128, qword_280240FB0);
    v129 = sub_267EF89F8();
    v130 = sub_267EF95D8();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = OUTLINED_FUNCTION_32();
      *v131 = 0;
      _os_log_impl(&dword_267B93000, v129, v130, "#SendMessageNeedsValueFlowStrategy needsValue after unsupported, inserting recipient", v131, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v90 = v227;
    *(v227 + 120) = 0;
    *(v227 + 128) = 1;
    v132 = sub_267BAF0DC(v124);
    if ((v132 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v133 = v132;
    if (v127 >= v132)
    {
      if (sub_267BAF0DC(v124) != v127)
      {

        v160 = sub_267EF89F8();
        v161 = sub_267EF95E8();
        if (OUTLINED_FUNCTION_5_2(v161))
        {
          v162 = swift_slowAlloc();
          *v162 = 134218240;
          *(v162 + 4) = v127;
          *(v162 + 12) = 2048;
          v163 = sub_267BAF0DC(v124);

          *(v162 + 14) = v163;

          OUTLINED_FUNCTION_109_10();
          _os_log_impl(v164, v165, v166, v167, v168, 0x16u);
          OUTLINED_FUNCTION_42_0();
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v89 = v229;
LABEL_80:
        v53 = *(v0 + 488);
        sub_267D293AC(v53);
        sub_267D295F8(v53);
        sub_267D292FC();
        sub_267D295A8();
        if (sub_267BCEA0C(v89))
        {
        }

        else
        {
          sub_267ED9A2C(v89);
          if (v169)
          {

            OUTLINED_FUNCTION_197_1();
            if (!v11)
            {
              OUTLINED_FUNCTION_0_10();
              swift_once();
            }

            v170 = sub_267EF8A08();
            OUTLINED_FUNCTION_30_1(v170, qword_280240FB0);
            v171 = sub_267EF89F8();
            v172 = sub_267EF95D8();
            if (OUTLINED_FUNCTION_5_2(v172))
            {
              v53 = OUTLINED_FUNCTION_32();
              *v53 = 0;
              OUTLINED_FUNCTION_109_10();
              _os_log_impl(v173, v174, v175, v176, v177, 2u);
              OUTLINED_FUNCTION_42_0();
            }

            *(v0 + 296) = 0u;
            *(v0 + 312) = 0u;
            OUTLINED_FUNCTION_5_72();
            sub_267ECE45C();
            sub_267B9F98C(v0 + 296, &qword_28022AEF0, &qword_267EFCDE0);
          }
        }

        goto LABEL_88;
      }

      if (v127 < 0)
      {
        goto LABEL_108;
      }
    }

    sub_267C74A48(0, v124);
    sub_267C74A48(v127, v124);
    if ((v124 & 0xC000000000000001) != 0)
    {

      if (v127)
      {
        sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
        v134 = 0;
        do
        {
          v135 = v134 + 1;
          sub_267EF9B98();
          v134 = v135;
        }

        while (v127 != v135);
      }

      if (v124 >> 62)
      {

        v136 = sub_267EF9CC8();
        v219 = v137;
        v221 = v138;
        v140 = v139;
        v141 = 0;
        goto LABEL_55;
      }
    }

    else
    {
    }

    v136 = v124 & 0xFFFFFFFFFFFFFF8;
    v219 = (v124 & 0xFFFFFFFFFFFFFF8) + 32;
    v221 = 0;
    v141 = 1;
    v140 = (2 * v127) | 1;
LABEL_55:
    v142 = sub_267D326D0(v126);
    v143 = sub_267ED99E4(v142, 0);
    *&v230 = v136;
    *(&v230 + 1) = v219;
    *&v231 = v221;
    *(&v231 + 1) = v140;
    v120 = &v230;
    sub_267EDAB3C(v143, v144, v145, v146);
    if (v133 >= v127)
    {
      v222 = v231;
      v224 = v230;
      sub_267C74A48(v133, v124);
      if ((v124 & 0xC000000000000001) == 0 || v127 == v133)
      {

LABEL_63:

        if (v141)
        {
          v149 = (v124 & 0xFFFFFFFFFFFFFF8);
          v150 = (v124 & 0xFFFFFFFFFFFFFF8) + 32;
          v151 = (2 * v133) | 1;
        }

        else
        {
          v149 = sub_267EF9CC8();
          v150 = v152;
          v127 = v153;
          v151 = v154;
        }

        v230 = v224;
        v231 = v222;
        sub_267EDAB3C(v149, v150, v127, v151);
        v155 = *(&v230 + 1);
        v120 = v230;
        v156 = v231;
        if ((BYTE8(v231) & 1) == 0)
        {
          goto LABEL_67;
        }

        sub_267EF9ED8();
        swift_unknownObjectRetain_n();
        v158 = swift_dynamicCastClass();
        v90 = v227;
        if (!v158)
        {
          swift_unknownObjectRelease();
          v158 = MEMORY[0x277D84F90];
        }

        v159 = *(v158 + 16);

        if (!__OFSUB__(*(&v156 + 1) >> 1, v156))
        {
          if (v159 == (*(&v156 + 1) >> 1) - v156)
          {
            swift_dynamicCastClass();
            OUTLINED_FUNCTION_156_2();
            swift_unknownObjectRelease_n();
            v89 = v229;
            if (v155)
            {
LABEL_75:
              sub_267ECEE14(v155);
              OUTLINED_FUNCTION_25_0();

              *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A340, &unk_267F00A50);
              *(v0 + 328) = v120;
              OUTLINED_FUNCTION_5_72();
              sub_267ECE45C();
              sub_267B9F98C(v0 + 328, &qword_28022AEF0, &qword_267EFCDE0);
              goto LABEL_80;
            }

            v155 = MEMORY[0x277D84F90];
LABEL_74:
            swift_unknownObjectRelease();
            goto LABEL_75;
          }

          goto LABEL_111;
        }

LABEL_110:
        __break(1u);
LABEL_111:
        swift_unknownObjectRelease_n();
LABEL_67:
        sub_267C73BFC();
        v155 = v157;
        v90 = v227;
        v89 = v229;
        goto LABEL_74;
      }

      if (v127 < v133)
      {
        sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
        OUTLINED_FUNCTION_25_0();

        v147 = v127;
        do
        {
          v148 = v147 + 1;
          sub_267EF9B98();
          v147 = v148;
        }

        while (v133 != v148);
        goto LABEL_63;
      }

LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    goto LABEL_107;
  }

LABEL_88:
  sub_267ECE5F0();
  v178 = [v122 speakableGroupName];
  if (v178)
  {

    v179 = sub_267D2904C();
    sub_267D294C0(v179, v180);
  }

  v181 = v89;
  v182 = *(sub_267C7A4A0() + 16);

  v183 = v181;
  if (v182)
  {
    v184 = *(v0 + 440);
    v185 = *(v0 + 424);
    v183 = sub_267EF4918();
    sub_267C7A4A0();

    sub_267C7A414();
  }

  sub_267BCE788(v122);
  v186 = sub_267BCEA0C(v122);
  if (v186 && (sub_267BAF0DC(v186), OUTLINED_FUNCTION_20_33(), v53))
  {
    v187 = sub_267D29108();
    if (!v187)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
      v187 = sub_267EF8F28();
    }

    v188 = v187;
    v189 = sub_267D29108();
    if (!v189)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
      v189 = sub_267EF8F28();
    }

    v190 = sub_267ECE20C(v189, v188);
    if (*(v90 + 88))
    {
      v191 = *(v90 + 88);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
      v191 = sub_267EF8F28();
    }

    v193 = sub_267ECE20C(v191, v190);
    v194 = *(v90 + 88);
    *(v90 + 88) = v193;
  }

  else
  {
    v192 = *(v90 + 88);
    *(v90 + 88) = 0;
  }

  v195 = *(v0 + 480);
  v197 = *(v0 + 432);
  v196 = *(v0 + 440);
  v198 = *(v0 + 424);

  v199 = sub_267EF4918();
  [v199 _setLaunchId_];

  v200 = sub_267EF4918();
  *(v0 + 592) = v200;
  v201 = v197[6];
  __swift_project_boxed_opaque_existential_0(v197 + 2, v197[5]);
  v202 = *(v201 + 24);
  v203 = OUTLINED_FUNCTION_10_3();
  v204(v203);
  v205 = v197[5];
  v206 = v197[6];
  OUTLINED_FUNCTION_121_6(v197 + 2);
  v207 = OUTLINED_FUNCTION_10_3();
  v208(v207);
  v209 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
  OUTLINED_FUNCTION_10_3();
  v210 = sub_267EF3C28();
  v211 = v197[6];
  __swift_project_boxed_opaque_existential_0(v197 + 2, v197[5]);
  v212 = *(v211 + 8);
  v213 = OUTLINED_FUNCTION_25_0();
  v214(v213, v211);
  v215 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_0((v0 + 176), *(v0 + 200));
  OUTLINED_FUNCTION_25_0();
  sub_267EF3B78();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 600) = v216;
  *v216 = v217;
  v216[1] = sub_267ED1DE4;
  v218 = *(v0 + 480);

  return sub_267E0BF50(v0 + 16, v200, v0 + 96, v210 & 1, v218);
}

uint64_t sub_267ED1DE4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 600);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 608) = v0;

  if (v0)
  {
    v10 = *(v3 + 472);
    v9 = *(v3 + 480);
    v11 = *(v3 + 464);

    v12 = *(v10 + 8);
    v13 = OUTLINED_FUNCTION_108();
    v14(v13);
    __swift_destroy_boxed_opaque_existential_0((v3 + 96));
  }

  else
  {
    v16 = *(v3 + 472);
    v15 = *(v3 + 480);
    v17 = *(v3 + 464);

    v18 = *(v16 + 8);
    v19 = OUTLINED_FUNCTION_108();
    v20(v19);
    __swift_destroy_boxed_opaque_existential_0((v3 + 96));
    __swift_destroy_boxed_opaque_existential_0((v3 + 176));
    __swift_destroy_boxed_opaque_existential_0((v3 + 136));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_267ED1F4C()
{
  v79 = v1;
  v2 = *(*(v1 + 576) + 136);
  if (*(v1 + 616) - 1 < 3)
  {
    *(v1 + 216) = 0u;
    v3 = *(v1 + 584);
    v4 = *(v1 + 432);
    *(v1 + 232) = 0u;
    *(v1 + 248) = 0;
    v5 = v2;

    sub_267C3A088();
    sub_267B9F98C(v1 + 216, &qword_280229508, &unk_267EFD960);
    v6 = *(v4 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender + 32);
    __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender), *(v4 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender + 24));
    sub_267EF3B18();
    v7 = [v3 typeName];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;

    v9 = v3;
    OUTLINED_FUNCTION_230_1();
    OUTLINED_FUNCTION_214_0();
    sub_267EF3848();
LABEL_5:

    goto LABEL_6;
  }

  if (!*(v1 + 616))
  {
    v10 = *(v1 + 584);
    v11 = *(v1 + 432);
    v12 = *(*(v1 + 576) + 136);

    sub_267C3911C(v10, 1);
    v13 = *(v11 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender + 32);
    __swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender), *(v11 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender + 24));
    sub_267EF3B18();
    v14 = [v10 typeName];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    v15 = swift_allocObject();
    *(v15 + 16) = v10;
    *(v15 + 24) = v12;

    v16 = v10;
    OUTLINED_FUNCTION_230_1();
    OUTLINED_FUNCTION_214_0();
    sub_267EF3848();
    goto LABEL_5;
  }

  v59 = qword_280228818;

  if (v59 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v60 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v60, qword_280240FB0);
  v61 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = *(v1 + 616);
    OUTLINED_FUNCTION_48();
    *&v78[0] = OUTLINED_FUNCTION_64_2();
    *v0 = 136315138;
    v64 = sub_267C7C28C(v63);
    v66 = sub_267BA33E8(v64, v65, v78);

    *(v0 + 4) = v66;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v67, v68, v69, v70, v71, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_26();
  }

LABEL_6:
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v17 = *(v1 + 584);
  v18 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
  v19 = v17;
  v20 = sub_267EF89F8();
  v21 = sub_267EF95D8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v1 + 584);
    v23 = *(v1 + 616);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = OUTLINED_FUNCTION_52();
    *&v78[0] = v26;
    *v24 = 136315394;
    v27 = sub_267C7C28C(v23);
    v29 = sub_267BA33E8(v27, v28, v78);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2112;
    *(v24 + 14) = v22;
    *v25 = v22;
    v30 = v22;
    _os_log_impl(&dword_267B93000, v20, v21, "#SendMessageNeedsValueFlowStrategy from slot:%s updated intent: %@", v24, 0x16u);
    sub_267B9F98C(v25, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_29_1();
  }

  v31 = *(v1 + 584);
  v32 = sub_267EF89F8();
  v33 = sub_267EF95D8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v1 + 584);
    v35 = OUTLINED_FUNCTION_48();
    *&v78[0] = OUTLINED_FUNCTION_52();
    *v35 = 136315138;
    *(v1 + 392) = sub_267C7A584();
    *(v1 + 400) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v37 = sub_267EF9098();
    v39 = sub_267BA33E8(v37, v38, v78);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_267B93000, v32, v33, "#SendMessageNeedsValueFlowStrategy updated intent app bundle id: %s", v35, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_42_0();
  }

  v40 = *(v1 + 584);
  v41 = *(v1 + 568);
  v42 = *(v1 + 560);
  v43 = *(v1 + 552);
  v44 = *(v1 + 536);
  v45 = *(v1 + 528);
  v72 = *(v1 + 544);
  v73 = *(v1 + 520);
  v74 = *(v1 + 496);
  v75 = *(v1 + 488);
  v76 = *(v1 + 480);
  v77 = *(v1 + 456);
  v46 = *(v1 + 408);
  v47 = *(v1 + 616);
  OUTLINED_FUNCTION_86_12();
  sub_267ECE8D0(v48, &qword_28022AE60, 0x277CD4078, v49, v78);
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  sub_267EF4388();

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  v50 = *(v44 + 8);
  v51 = OUTLINED_FUNCTION_290();
  v52(v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297B0, &unk_267EFE4E0);
  OUTLINED_FUNCTION_2_44();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);

  OUTLINED_FUNCTION_1();

  return v57();
}

uint64_t sub_267ED2584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 568);
  v12 = *(v10 + 560);
  v13 = *(v10 + 536);
  v14 = *(v10 + 528);

  __swift_destroy_boxed_opaque_existential_0((v10 + 16));
  v15 = OUTLINED_FUNCTION_130();
  v16(v15);
  __swift_destroy_boxed_opaque_existential_0((v10 + 176));
  __swift_destroy_boxed_opaque_existential_0((v10 + 136));
  v17 = *(v10 + 608);
  OUTLINED_FUNCTION_174_1();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_267ED2660()
{
  OUTLINED_FUNCTION_12();
  v1[32] = v2;
  v1[33] = v0;
  v1[31] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[34] = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  v1[35] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[36] = v8;
  v10 = *(v9 + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v11 = sub_267EF4228();
  v1[39] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v1[40] = v12;
  v14 = *(v13 + 64);
  v1[41] = OUTLINED_FUNCTION_2();
  v15 = sub_267EF44C8();
  v1[42] = v15;
  OUTLINED_FUNCTION_30_0(v15);
  v1[43] = v16;
  v18 = *(v17 + 64);
  v1[44] = OUTLINED_FUNCTION_2();
  v19 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_267ED27EC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *(v1 + 392);
  *v4 = *v2;
  *(v3 + 400) = v0;

  OUTLINED_FUNCTION_22_2();
  v7 = *(v6 + 384);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267ED2904()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 448);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 456) = v0;

  if (!v0)
  {
    v9 = *(v3 + 432);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267ED2A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_91();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_116();
  a24 = v26;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v30 = *(v26 + 304);
  v31 = *(v26 + 280);
  v32 = *(v26 + 288);
  v33 = *(v26 + 256);
  v34 = sub_267EF8A08();
  v35 = __swift_project_value_buffer(v34, qword_280240FB0);
  v36 = *(v32 + 16);
  v37 = OUTLINED_FUNCTION_108();
  v38(v37);
  v39 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_12_3();
  if (os_log_type_enabled(v39, v40))
  {
    v81 = *(v26 + 368);
    v41 = *(v26 + 352);
    a11 = *(v26 + 336);
    a12 = *(v26 + 360);
    v42 = *(v26 + 304);
    v43 = *(v26 + 280);
    v44 = *(v26 + 288);
    OUTLINED_FUNCTION_48();
    v79 = OUTLINED_FUNCTION_55_0();
    a15 = v79;
    *v35 = 136315138;
    sub_267EF4938();
    sub_267EF44B8();
    v45 = OUTLINED_FUNCTION_186_2();
    a12(v45, a11);
    (*(v44 + 8))(v42, v43);
    v46 = sub_267BA33E8(v41, v27, &a15);

    *(v35 + 4) = v46;
    OUTLINED_FUNCTION_52_18(&dword_267B93000, v47, v33, "#SendMessageNeedsValueFlowStrategy prompting value for parameter %s");
    __swift_destroy_boxed_opaque_existential_0(v79);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    v48 = *(v26 + 304);
    v49 = *(v26 + 280);
    v50 = *(v26 + 288);

    v51 = *(v50 + 8);
    v52 = OUTLINED_FUNCTION_108();
    v53(v52);
  }

  v55 = *(v26 + 320);
  v54 = *(v26 + 328);
  v80 = *(v26 + 376);
  v82 = *(v26 + 312);
  v57 = *(v26 + 264);
  v56 = *(v26 + 272);
  v58 = *(v26 + 248);
  v59 = v57[6];
  v60 = *(v26 + 464);
  __swift_project_boxed_opaque_existential_0(v57 + 2, v57[5]);
  OUTLINED_FUNCTION_233_0();
  v61 = OUTLINED_FUNCTION_61_4();
  v62(v61);
  v63 = v57[6];
  __swift_project_boxed_opaque_existential_0(v57 + 2, v57[5]);
  v64 = *(v63 + 8);
  v65 = OUTLINED_FUNCTION_61_4();
  v66(v65);
  v67 = *(v26 + 88);
  OUTLINED_FUNCTION_62_1((v26 + 56), *(v26 + 80));
  OUTLINED_FUNCTION_61_4();
  sub_267EF3BC8();
  sub_267BB93FC();
  v68 = sub_267EF4CC8();
  *(v26 + 112) = 0u;
  *(v26 + 128) = 0;
  *(v26 + 96) = 0u;
  v69 = MEMORY[0x277D5C1D8];
  v58[3] = v68;
  v58[4] = v69;
  __swift_allocate_boxed_opaque_existential_0(v58);
  sub_267EF3F68();

  sub_267B9F98C(v26 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v56, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v26 + 16));
  (*(v55 + 8))(v54, v82);
  __swift_destroy_boxed_opaque_existential_0((v26 + 56));
  OUTLINED_FUNCTION_164_2();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v71(v70, v71, v72, v73, v74, v75, v76, v77, v26 + 96, a10, a11, a12, v80, v82, a15, a16, a17, a18);
}

uint64_t sub_267ED2D50()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();

  v1 = *(v0 + 400);
  OUTLINED_FUNCTION_163_3();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_267ED2DD8()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();

  v1 = *(v0 + 424);
  OUTLINED_FUNCTION_163_3();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_267ED2E60()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);

  v3 = *(v0 + 456);
  OUTLINED_FUNCTION_163_3();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_267ED2EF8()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 376) = v2;
  *(v1 + 160) = v3;
  *(v1 + 168) = v0;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  v6 = sub_267EF48A8();
  *(v1 + 176) = v6;
  OUTLINED_FUNCTION_30_0(v6);
  *(v1 + 184) = v7;
  v9 = *(v8 + 64);
  *(v1 + 192) = OUTLINED_FUNCTION_2();
  v10 = type metadata accessor for SendMessageAskForPayloadParameters(0);
  *(v1 + 200) = v10;
  OUTLINED_FUNCTION_18(v10);
  v12 = *(v11 + 64);
  *(v1 + 208) = OUTLINED_FUNCTION_2();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267ED2FC8()
{
  OUTLINED_FUNCTION_90();
  v57 = v1;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v3 = sub_267EF8A08();
  *(v1 + 216) = __swift_project_value_buffer(v3, qword_280240FB0);
  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v5))
  {
    v6 = *(v1 + 376);
    OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_55_0();
    v56[0] = v7;
    *v2 = 136315138;
    v8 = sub_267C7C28C(v6);
    v10 = sub_267BA33E8(v8, v9, v56);

    *(v2 + 4) = v10;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  v16 = *(v1 + 376);
  *(v1 + 136) = 0;
  if (v16 != 3)
  {
    if (!v16)
    {
      v17 = *__swift_project_boxed_opaque_existential_0((*(v1 + 168) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns), *(*(v1 + 168) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24));
      OUTLINED_FUNCTION_20_37(&dword_267F017A8);

      v18 = swift_task_alloc();
      *(v1 + 224) = v18;
      *v18 = v1;
      v18[1] = sub_267ED33C4;
      v19 = *(v1 + 168);
      OUTLINED_FUNCTION_46_10();

      __asm { BR              X2 }
    }

    goto LABEL_18;
  }

  v22 = *(v1 + 160);
  if ((sub_267EF96C8() & 1) == 0)
  {
    v31 = *(v1 + 160);
    if (sub_267EF96E8())
    {
      v32 = *(v1 + 160);
      v33 = *(v1 + 152);
      v34 = *__swift_project_boxed_opaque_existential_0((*(v1 + 168) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns), *(*(v1 + 168) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24));
      OUTLINED_FUNCTION_9_59(dword_267F017B0);

      v35 = v32;
      v36 = swift_task_alloc();
      *(v1 + 288) = v36;
      *v36 = v1;
      v36[1] = sub_267ED3B88;
      v37 = *(v1 + 160);
      v38 = *(v1 + 168);
      v39 = *(v1 + 152);
      OUTLINED_FUNCTION_46_10();

      __asm { BR              X4 }
    }

LABEL_18:
    v42 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = *(v1 + 376);
      OUTLINED_FUNCTION_48();
      v56[0] = OUTLINED_FUNCTION_64_2();
      *v0 = 136315138;
      v45 = sub_267C7C28C(v44);
      v47 = sub_267BA33E8(v45, v46, v56);

      *(v0 + 4) = v47;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_26();
    }

    sub_267C4BE60();
    OUTLINED_FUNCTION_61_1();
    *v53 = xmmword_267EFC050;
    swift_willThrow();
    OUTLINED_FUNCTION_130_2();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_46_10();

    __asm { BRAA            X1, X16 }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 248) = v23;
  *v23 = v24;
  v23[1] = sub_267ED353C;
  v25 = *(v1 + 208);
  v26 = *(v1 + 160);
  v27 = *(v1 + 168);
  v28 = *(v1 + 152);
  OUTLINED_FUNCTION_46_10();

  return sub_267ED8070();
}

uint64_t sub_267ED33C4()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v8 = *(v7 + 224);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v5 + 232) = v0;

  if (!v0)
  {
    *(v5 + 240) = v3;
  }

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267ED34CC()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 232);
  OUTLINED_FUNCTION_130_2();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267ED353C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 248);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267ED3620()
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v2 = v1[25];
  v3 = v1[26];
  v5 = v1[20];
  v4 = v1[21];
  v6 = v1[19];
  OUTLINED_FUNCTION_62_1((v4 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns), *(v4 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24));
  v7 = *(v2 + 76);
  v8 = *(v3 + *(v2 + 72));
  v9 = *(v3 + v7);
  v10 = swift_task_alloc();
  v1[32] = v10;
  v10[2] = v3;
  v10[3] = v5;
  v10[4] = v4;
  v10[5] = v6;
  v10[6] = v1 + 17;
  v11 = *v0;
  v12 = swift_task_alloc();
  v1[33] = v12;
  *v12 = v1;
  v12[1] = sub_267ED3724;
  OUTLINED_FUNCTION_40();

  return sub_267CC2F4C();
}

uint64_t sub_267ED3724()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v7 = *(v4 + 264);
  *v6 = *v1;
  *(v5 + 272) = v0;

  v8 = *(v4 + 256);
  if (!v0)
  {
    *(v5 + 280) = v3;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267ED3854()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v2 = *(v0 + 208);
  v3 = *(v0 + 280);
  OUTLINED_FUNCTION_2_74();
  sub_267EDB680(v2, v4);
  v5 = *(v0 + 280);
  *(v0 + 312) = v5;
  v6 = *(v0 + 216);
  v7 = v5;
  v8 = sub_267EF89F8();
  v9 = sub_267EF95D8();

  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    *v1 = 136315138;
    v10 = [v7 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    v11 = OUTLINED_FUNCTION_61_4();
    v14 = sub_267BA33E8(v11, v12, v13);

    *(v1 + 4) = v14;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_210_1();
  OUTLINED_FUNCTION_129_4();
  if (!v20)
  {

LABEL_13:
    v39 = *(v0 + 192);
    if ((sub_267EF4878() & 1) == 0)
    {
      v40 = [*(v0 + 312) visual];
      if (v40)
      {
        OUTLINED_FUNCTION_263_1();
        OUTLINED_FUNCTION_262_1();
        v41 = OUTLINED_FUNCTION_37_1();
        sub_267BBE0DC(v41, v42);
        v40 = sub_267EF47C8();
      }

      else
      {
        v43 = 0;
      }

      OUTLINED_FUNCTION_120_8(v40, v43);
    }

    v44 = OUTLINED_FUNCTION_260_1();
    OUTLINED_FUNCTION_97(v44);
    v45 = sub_267EF4188();
    v46 = OUTLINED_FUNCTION_28_37(v45);
    v47(v46);
    v48 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    OUTLINED_FUNCTION_7_1();
    sub_267EF3C48();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 360) = v49;
    *v49 = v50;
    OUTLINED_FUNCTION_8_61(v49);
    OUTLINED_FUNCTION_46();

    return sub_267BCF3A4(v51, v52, v53, v54, v55);
  }

  sub_267ED9A8C(v7);
  OUTLINED_FUNCTION_74_0();

  if (v9 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v21 = OUTLINED_FUNCTION_108();
  sub_267BBE0C8(v21, v22);
  *(v0 + 120) = &type metadata for Features;
  v23 = sub_267BAFCAC();
  OUTLINED_FUNCTION_303_0(v23);
  OUTLINED_FUNCTION_381();
  if ((v8 & 1) == 0)
  {
    goto LABEL_13;
  }

  v24 = *(v0 + 136);
  *(v0 + 328) = v24;
  if (!v24)
  {
    goto LABEL_13;
  }

  v25 = *(v0 + 216);
  v24;
  v26 = sub_267EF89F8();
  v27 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v27))
  {
    v28 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v28);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v29, v30, v31, v32, v33, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v34 = swift_task_alloc();
  v35 = OUTLINED_FUNCTION_89_9(v34);
  *v35 = v36;
  OUTLINED_FUNCTION_26_38(v35);
  OUTLINED_FUNCTION_46();

  return sub_267CA9190();
}

uint64_t sub_267ED3B0C()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 208);
  OUTLINED_FUNCTION_2_74();
  sub_267EDB680(v2, v3);
  v4 = *(v0 + 272);
  OUTLINED_FUNCTION_130_2();

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267ED3B88()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v8 = *(v7 + 288);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v5 + 296) = v0;

  if (!v0)
  {
    *(v5 + 304) = v3;
  }

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267ED3C90()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v2 = *(v0 + 304);
  *(v0 + 312) = v2;
  v3 = *(v0 + 216);
  v4 = v2;
  v5 = sub_267EF89F8();
  v6 = sub_267EF95D8();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    *v1 = 136315138;
    v7 = [v4 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    v8 = OUTLINED_FUNCTION_61_4();
    v11 = sub_267BA33E8(v8, v9, v10);

    *(v1 + 4) = v11;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_210_1();
  OUTLINED_FUNCTION_129_4();
  if (!v17)
  {

LABEL_13:
    v36 = *(v0 + 192);
    if ((sub_267EF4878() & 1) == 0)
    {
      v37 = [*(v0 + 312) visual];
      if (v37)
      {
        OUTLINED_FUNCTION_263_1();
        OUTLINED_FUNCTION_262_1();
        v38 = OUTLINED_FUNCTION_37_1();
        sub_267BBE0DC(v38, v39);
        v37 = sub_267EF47C8();
      }

      else
      {
        v40 = 0;
      }

      OUTLINED_FUNCTION_120_8(v37, v40);
    }

    v41 = OUTLINED_FUNCTION_260_1();
    OUTLINED_FUNCTION_97(v41);
    v42 = sub_267EF4188();
    v43 = OUTLINED_FUNCTION_28_37(v42);
    v44(v43);
    v45 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    OUTLINED_FUNCTION_7_1();
    sub_267EF3C48();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 360) = v46;
    *v46 = v47;
    OUTLINED_FUNCTION_8_61(v46);
    OUTLINED_FUNCTION_46();

    return sub_267BCF3A4(v48, v49, v50, v51, v52);
  }

  sub_267ED9A8C(v4);
  OUTLINED_FUNCTION_74_0();

  if (v6 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v18 = OUTLINED_FUNCTION_108();
  sub_267BBE0C8(v18, v19);
  *(v0 + 120) = &type metadata for Features;
  v20 = sub_267BAFCAC();
  OUTLINED_FUNCTION_303_0(v20);
  OUTLINED_FUNCTION_381();
  if ((v5 & 1) == 0)
  {
    goto LABEL_13;
  }

  v21 = *(v0 + 136);
  *(v0 + 328) = v21;
  if (!v21)
  {
    goto LABEL_13;
  }

  v22 = *(v0 + 216);
  v21;
  v23 = sub_267EF89F8();
  v24 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v24))
  {
    v25 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v25);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v31 = swift_task_alloc();
  v32 = OUTLINED_FUNCTION_89_9(v31);
  *v32 = v33;
  OUTLINED_FUNCTION_26_38(v32);
  OUTLINED_FUNCTION_46();

  return sub_267CA9190();
}

uint64_t sub_267ED3F34()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 296);
  OUTLINED_FUNCTION_130_2();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267ED3FA4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v7 = *(v6 + 336);
  v8 = *v2;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v4 + 344) = v0;

  if (!v0)
  {
    *(v4 + 377) = v1 & 1;
  }

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267ED40AC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 377);
  v2 = *(v0 + 216);
  v3 = sub_267EF89F8();
  if (v1 == 1)
  {
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v5);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v6, v7, "#SendMessageNeedsValueFlowStrategy snippet updated, removing visual from pattern execution result");
      OUTLINED_FUNCTION_26();
    }

    v8 = *(v0 + 328);
    v9 = *(v0 + 312);
    v10 = *(v0 + 192);

    [v9 setVisual_];
    sub_267EF4888();
  }

  else
  {
    sub_267EF95C8();
    OUTLINED_FUNCTION_64();
    v12 = os_log_type_enabled(v3, v11);
    v8 = *(v0 + 328);
    if (v12)
    {
      v13 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v13);
      OUTLINED_FUNCTION_60_16(&dword_267B93000, v14, v15, "#SendMessageNeedsValueFlowStrategy view not available, falling back to dialog");
      OUTLINED_FUNCTION_4_4();
    }
  }

  v16 = *(v0 + 192);
  if ((sub_267EF4878() & 1) == 0)
  {
    v17 = [*(v0 + 312) visual];
    if (v17)
    {
      OUTLINED_FUNCTION_263_1();
      OUTLINED_FUNCTION_262_1();
      v18 = OUTLINED_FUNCTION_37_1();
      sub_267BBE0DC(v18, v19);
      v17 = sub_267EF47C8();
    }

    else
    {
      v20 = 0;
    }

    OUTLINED_FUNCTION_120_8(v17, v20);
  }

  v21 = OUTLINED_FUNCTION_260_1();
  OUTLINED_FUNCTION_97(v21);
  v22 = sub_267EF4188();
  v23 = OUTLINED_FUNCTION_28_37(v22);
  v24(v23);
  v25 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_7_1();
  sub_267EF3C48();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 360) = v26;
  *v26 = v27;
  OUTLINED_FUNCTION_8_61(v26);
  OUTLINED_FUNCTION_30_2();

  return sub_267BCF3A4(v28, v29, v30, v31, v32);
}

uint64_t sub_267ED4260()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 328);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);

  v5 = OUTLINED_FUNCTION_130();
  v6(v5);
  v7 = *(v0 + 344);
  OUTLINED_FUNCTION_130_2();

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_267ED42F8()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_66();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v7 = *(v0 + 368);
  OUTLINED_FUNCTION_130_2();

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_267ED4394()
{
  OUTLINED_FUNCTION_12();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v0[4] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267ED4418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[42] = a5;
  v6[43] = a6;
  v6[40] = a3;
  v6[41] = a4;
  v6[38] = a1;
  v6[39] = a2;
  v7 = sub_267EF82D8();
  v6[44] = v7;
  v8 = *(v7 - 8);
  v6[45] = v8;
  v9 = *(v8 + 64) + 15;
  v6[46] = swift_task_alloc();
  v10 = sub_267EF8598();
  v6[47] = v10;
  v11 = *(v10 - 8);
  v6[48] = v11;
  v12 = *(v11 + 64) + 15;
  v6[49] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0) - 8) + 64) + 15;
  v6[50] = swift_task_alloc();
  v14 = sub_267EF8488();
  v6[51] = v14;
  v15 = *(v14 - 8);
  v6[52] = v15;
  v16 = *(v15 + 64) + 15;
  v6[53] = swift_task_alloc();
  v17 = sub_267EF8368();
  v6[54] = v17;
  v18 = *(v17 - 8);
  v6[55] = v18;
  v19 = *(v18 + 64) + 15;
  v6[56] = swift_task_alloc();
  v20 = sub_267EF8248();
  v6[57] = v20;
  v21 = *(v20 - 8);
  v6[58] = v21;
  v22 = *(v21 + 64) + 15;
  v6[59] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267ED4714, 0, 0);
}

void *sub_267ED4714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  v21 = v20;
  v22 = *(v20 + 320);
  v23 = *(v20 + 328);
  v24 = *(v20 + 304);
  v25 = *(v20 + 312);
  v26 = type metadata accessor for SendMessageAskForPayloadParameters(0);
  *(v20 + 544) = v26;
  v27 = v26[9];
  v28 = *(v24 + v27);
  *(v24 + v27) = *(v25 + v27);

  v29 = v26[14];
  v30 = *(v24 + v29);
  *(v24 + v29) = *(v25 + v29);

  sub_267BE855C(v25 + v26[20], v24 + v26[20]);
  v31 = *v24;
  *v24 = *v25;

  v32 = v26[10];
  v33 = *(v25 + v32);
  v34 = *(v25 + v32 + 8);
  v35 = v24 + v32;
  *v35 = v33;
  v35[8] = v34;
  v36 = v23[5];
  v37 = v23[6];
  OUTLINED_FUNCTION_121_6(v23 + 2);
  v38 = OUTLINED_FUNCTION_10_3();
  v39(v38);
  v40 = v23[7];
  v41 = v23[14];
  v42 = [v22 speakableGroupName];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 spokenPhrase];
    sub_267EF9028();
    OUTLINED_FUNCTION_74_0();
  }

  else
  {
    v22 = *(v20 + 320);
    v45 = *(v20 + 48);
    OUTLINED_FUNCTION_62_1((v20 + 16), *(v20 + 40));
    v31 = sub_267EF3C48();
    v46 = sub_267BCEA0C(v22);
    if (v31)
    {
      sub_267DA2578(v46);
    }

    else
    {
      sub_267DA2180();
    }

    OUTLINED_FUNCTION_74_0();
  }

  v47 = *(v20 + 536);
  v48 = *(v20 + 304);
  *(v20 + 552) = v22;
  *(v20 + 560) = v31;
  __swift_destroy_boxed_opaque_existential_0((v20 + 16));
  OUTLINED_FUNCTION_108();
  sub_267EF90F8();
  *(v20 + 568) = sub_267EF79B8();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  sub_267BF3128(v47, v48 + v26[8], &unk_28022AE30, &qword_267EFC0B0);
  v53 = v23[5];
  v54 = v23[6];
  OUTLINED_FUNCTION_27_11(v23 + 2);
  v56 = *(v55 + 8);
  v57 = OUTLINED_FUNCTION_38_0();
  v58(v57);
  v59 = *(v20 + 88);
  __swift_project_boxed_opaque_existential_0((v20 + 56), *(v20 + 80));
  OUTLINED_FUNCTION_38_0();
  v60 = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v20 + 56));
  if (v60)
  {
    v61 = sub_267BCEA0C(*(v20 + 320));
    v62 = MEMORY[0x277D84F90];
    if (v61)
    {
      v63 = v61;
      v64 = sub_267BAF0DC(v61);
      if (v64)
      {
        v65 = v64;
        result = sub_267BE8B74(0, v64 & ~(v64 >> 63), 0);
        if (v65 < 0)
        {
          __break(1u);
          return result;
        }

        do
        {
          if ((v63 & 0xC000000000000001) != 0)
          {
            v67 = OUTLINED_FUNCTION_17_4();
            v68 = MEMORY[0x26D609870](v67);
          }

          else
          {
            v68 = *(v63 + 32);
          }

          v69 = v68;
          sub_267BBD380(v68);

          a16 = v62;
          v71 = *(v62 + 16);
          v70 = *(v62 + 24);
          if (v71 >= v70 >> 1)
          {
            v73 = OUTLINED_FUNCTION_8_2(v70);
            sub_267BE8B74(v73, v71 + 1, 1);
          }

          OUTLINED_FUNCTION_194_1();
        }

        while (!v72);
      }
    }

    *(v21 + 576) = v62;
    v74 = *(v21 + 336);
    v75 = sub_267BDAF74();
    *(v21 + 616) = v75 & 1;
    if (v75)
    {
      OUTLINED_FUNCTION_10(&dword_267F00478);
      v212 = v76;
      v77 = swift_task_alloc();
      *(v21 + 584) = v77;
      *v77 = v21;
      v77[1] = sub_267ED51A8;
      OUTLINED_FUNCTION_46_0();

      return v80(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, v212, a16, a17, a18, a19, a20);
    }

    v86 = *(v21 + 576);
    v87 = *(v21 + 560);
    v88 = *(v21 + 552);
    v89 = *(v21 + 528);
    v90 = *(v21 + 472);
    v91 = *(v21 + 456);
    v92 = *(v21 + 336);
    sub_267EF7C18();
    OUTLINED_FUNCTION_444();
    if (v72)
    {
      v94 = 0xE000000000000000;
    }

    else
    {
      v94 = v93;
    }

    a9 = v94;
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_72();
    sub_267EF8238();
    OUTLINED_FUNCTION_251();
    if (v87)
    {
      v213 = v87;
      v95 = *(v21 + 552);
      (*(*(v21 + 464) + 8))(*(v21 + 472), *(v21 + 456));

      v141 = *(v21 + 536);
      v142 = *(v21 + 528);
      v143 = *(v21 + 520);
      v145 = *(v21 + 504);
      v144 = *(v21 + 512);
      v147 = *(v21 + 488);
      v146 = *(v21 + 496);
      v148 = v21;
      v151 = v21 + 472;
      v150 = *(v21 + 472);
      v149 = *(v151 + 8);
      v152 = v148[56];
      a11 = v148[53];
      v209 = v148[50];
      v210 = v148[49];
      v211 = v148[46];

      OUTLINED_FUNCTION_17();
LABEL_39:
      OUTLINED_FUNCTION_46_0();

      return v154(v153, v154, v155, v156, v157, v158, v159, v160, a9, a10, a11, v209, v210, v211, v213, a16, a17, a18, a19, a20);
    }

    v96 = *(v21 + 568);
    v97 = *(v21 + 544);
    v98 = *(v21 + 528);
    v99 = *(v21 + 304);
    (*(*(v21 + 464) + 8))(*(v21 + 472), *(v21 + 456));
    v100 = OUTLINED_FUNCTION_57_0();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v96);
    sub_267BF3128(v98, v99 + *(v97 + 28), &unk_28022AE30, &qword_267EFC0B0);
  }

  sub_267ED9A2C(*(v21 + 320));
  if (v103)
  {
    v104 = *(v21 + 520);
    sub_267EF90F8();

    v105 = 0;
  }

  else
  {
    v105 = 1;
  }

  v106 = *(v21 + 544);
  v107 = *(v21 + 520);
  v108 = *(v21 + 328);
  v109 = *(v21 + 304);
  __swift_storeEnumTagSinglePayload(v107, v105, 1, *(v21 + 568));
  sub_267BF3128(v107, v109 + *(v106 + 44), &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_11_54();
  v111 = *(v110 + 8);
  v112 = OUTLINED_FUNCTION_38_0();
  v113(v112);
  v114 = *(v21 + 128);
  __swift_project_boxed_opaque_existential_0((v21 + 96), *(v21 + 120));
  OUTLINED_FUNCTION_38_0();
  LOBYTE(v107) = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v21 + 96));
  if (v107)
  {
    goto LABEL_34;
  }

  v115 = *(v21 + 328);
  v116 = v115[5];
  v117 = v115[6];
  OUTLINED_FUNCTION_27_11(v115 + 2);
  v119 = *(v118 + 8);
  v120 = OUTLINED_FUNCTION_38_0();
  v121(v120);
  v122 = *(v21 + 168);
  __swift_project_boxed_opaque_existential_0((v21 + 136), *(v21 + 160));
  OUTLINED_FUNCTION_38_0();
  v123 = sub_267EF3C28();
  __swift_destroy_boxed_opaque_existential_0((v21 + 136));
  if (v123)
  {
    goto LABEL_34;
  }

  v136 = *(v21 + 320);
  sub_267ED9A2C(v136);
  OUTLINED_FUNCTION_444();
  sub_267ED9A2C(v136);
  if (v137)
  {
  }

  v138 = *(v21 + 512);
  v139 = *(v21 + 448);
  v140 = *(v21 + 432);
  OUTLINED_FUNCTION_66();
  sub_267EF8358();
  OUTLINED_FUNCTION_228_1();
  sub_267EF8348();
  v161 = *(v21 + 568);
  v162 = *(v21 + 544);
  v163 = *(v21 + 512);
  v164 = *(v21 + 336);
  v165 = *(v21 + 344);
  v166 = *(v21 + 320);
  v167 = *(v21 + 304);
  (*(*(v21 + 440) + 8))(*(v21 + 448), *(v21 + 432));
  v168 = 1;
  v169 = OUTLINED_FUNCTION_57_0();
  __swift_storeEnumTagSinglePayload(v169, v170, v171, v161);
  sub_267BF3128(v163, v167 + *(v162 + 48), &unk_28022AE30, &qword_267EFC0B0);
  v172 = sub_267EF7C18();
  if (v173)
  {
    v174 = v172;
  }

  else
  {
    v174 = 0;
  }

  if (v173)
  {
    v175 = v173;
  }

  else
  {
    v175 = 0xE000000000000000;
  }

  sub_267DA133C(v166, v174, v175);
  OUTLINED_FUNCTION_20_33();
  v176 = *v165;
  *v165 = v163;

  if (*v165)
  {
    v177 = *(v21 + 504);
    *(v21 + 296) = *v165;
    sub_267BA9F38(0, &unk_28022BB50, 0x277D473F0);
    sub_267EF8348();
    v168 = 0;
  }

  v178 = *(v21 + 544);
  v179 = *(v21 + 504);
  v180 = *(v21 + 424);
  v182 = *(v21 + 400);
  v181 = *(v21 + 408);
  v183 = *(v21 + 336);
  v184 = *(v21 + 304);
  __swift_storeEnumTagSinglePayload(v179, v168, 1, *(v21 + 568));
  sub_267BF3128(v179, v184 + *(v178 + 52), &unk_28022AE30, &qword_267EFC0B0);
  sub_267BE84FC();
  sub_267EF70D8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v185, v186, v187, v188);
  OUTLINED_FUNCTION_22_0();
  sub_267EF8478();
  OUTLINED_FUNCTION_228_1();
  sub_267EF8348();
  *(v21 + 592) = 0;
  v189 = *(v21 + 568);
  v190 = *(v21 + 544);
  v191 = *(v21 + 496);
  v192 = *(v21 + 328);
  v193 = *(v21 + 304);
  (*(*(v21 + 416) + 8))(*(v21 + 424), *(v21 + 408));
  v194 = OUTLINED_FUNCTION_57_0();
  __swift_storeEnumTagSinglePayload(v194, v195, v196, v189);
  sub_267BF3128(v191, v193 + *(v190 + 24), &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_11_54();
  v198 = *(v197 + 8);
  v199 = OUTLINED_FUNCTION_38_0();
  v200(v199);
  v201 = *(v21 + 208);
  __swift_project_boxed_opaque_existential_0((v21 + 176), *(v21 + 200));
  OUTLINED_FUNCTION_38_0();
  if ((sub_267EF3C18() & 1) == 0)
  {
    v208 = *(v21 + 552);

    __swift_destroy_boxed_opaque_existential_0((v21 + 176));
    goto LABEL_35;
  }

  *(v21 + 240) = &type metadata for Features;
  *(v21 + 248) = sub_267BAFCAC();
  *(v21 + 216) = 7;
  v202 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0((v21 + 216));
  __swift_destroy_boxed_opaque_existential_0((v21 + 176));
  if ((v202 & 1) == 0)
  {
LABEL_34:
    v124 = *(v21 + 552);

LABEL_35:
    v125 = *(v21 + 536);
    v126 = *(v21 + 528);
    v127 = *(v21 + 520);
    v129 = *(v21 + 504);
    v128 = *(v21 + 512);
    v131 = *(v21 + 488);
    v130 = *(v21 + 496);
    v133 = *(v21 + 472);
    v132 = *(v21 + 480);
    v134 = v21;
    v135 = *(v21 + 448);
    v209 = v134[53];
    v210 = v134[50];
    v211 = v134[49];
    v213 = v134[46];

    OUTLINED_FUNCTION_1();
    goto LABEL_39;
  }

  v203 = swift_task_alloc();
  *(v21 + 600) = v203;
  *v203 = v21;
  OUTLINED_FUNCTION_113_9(v203);
  v204 = *(v21 + 320);
  v205 = *(v21 + 328);
  OUTLINED_FUNCTION_46_0();

  return sub_267CA7E0C(v206);
}

uint64_t sub_267ED51A8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 584);
  *v2 = *v0;
  *(v1 + 617) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267ED5290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v19 = *(v18 + 617);
  v20 = *(v18 + 616);
  v21 = *(v18 + 576);
  v22 = *(v18 + 560);
  v23 = *(v18 + 552);
  v122 = *(v18 + 528);
  v24 = *(v18 + 472);
  v25 = *(v18 + 456);
  v26 = *(v18 + 336);
  sub_267EF7C18();
  OUTLINED_FUNCTION_444();
  if (v28)
  {
    v29 = 0xE000000000000000;
  }

  else
  {
    v29 = v27;
  }

  v121 = v29;
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_72();
  sub_267EF8238();
  sub_267EF8348();
  v30 = *(v18 + 568);
  v31 = *(v18 + 544);
  v32 = *(v18 + 528);
  v33 = *(v18 + 304);
  (*(*(v18 + 464) + 8))(*(v18 + 472), *(v18 + 456));
  v34 = 1;
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v30);
  sub_267BF3128(v32, v33 + *(v31 + 28), &unk_28022AE30, &qword_267EFC0B0);
  sub_267ED9A2C(*(v18 + 320));
  if (v38)
  {
    v39 = *(v18 + 520);
    sub_267EF90F8();

    v34 = 0;
  }

  v40 = *(v18 + 544);
  v41 = *(v18 + 520);
  v42 = *(v18 + 328);
  v43 = *(v18 + 304);
  __swift_storeEnumTagSinglePayload(v41, v34, 1, *(v18 + 568));
  sub_267BF3128(v41, v43 + *(v40 + 44), &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_11_54();
  v45 = *(v44 + 8);
  v46 = OUTLINED_FUNCTION_38_0();
  v47(v46);
  v48 = *(v18 + 128);
  __swift_project_boxed_opaque_existential_0((v18 + 96), *(v18 + 120));
  OUTLINED_FUNCTION_38_0();
  sub_267EF3C48();
  OUTLINED_FUNCTION_381();
  if (v34)
  {
    goto LABEL_8;
  }

  v49 = *(v18 + 328);
  v50 = v49[5];
  v51 = v49[6];
  OUTLINED_FUNCTION_27_11(v49 + 2);
  v53 = *(v52 + 8);
  v54 = OUTLINED_FUNCTION_38_0();
  v55(v54);
  v56 = *(v18 + 168);
  __swift_project_boxed_opaque_existential_0((v18 + 136), *(v18 + 160));
  OUTLINED_FUNCTION_38_0();
  v57 = sub_267EF3C28();
  __swift_destroy_boxed_opaque_existential_0((v18 + 136));
  if (v57)
  {
    goto LABEL_8;
  }

  v68 = *(v18 + 320);
  sub_267ED9A2C(v68);
  OUTLINED_FUNCTION_444();
  sub_267ED9A2C(v68);
  if (v69)
  {
  }

  v70 = *(v18 + 512);
  v71 = *(v18 + 448);
  v72 = *(v18 + 432);
  OUTLINED_FUNCTION_66();
  sub_267EF8358();
  OUTLINED_FUNCTION_228_1();
  sub_267EF8348();
  v122 = 0;
  v73 = *(v18 + 568);
  v74 = *(v18 + 544);
  v75 = *(v18 + 512);
  v76 = *(v18 + 336);
  v77 = *(v18 + 344);
  v78 = *(v18 + 320);
  v79 = *(v18 + 304);
  (*(*(v18 + 440) + 8))(*(v18 + 448), *(v18 + 432));
  v80 = 1;
  v81 = OUTLINED_FUNCTION_57_0();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v73);
  sub_267BF3128(v75, v79 + *(v74 + 48), &unk_28022AE30, &qword_267EFC0B0);
  v84 = sub_267EF7C18();
  if (v85)
  {
    v86 = v84;
  }

  else
  {
    v86 = 0;
  }

  if (v85)
  {
    v87 = v85;
  }

  else
  {
    v87 = 0xE000000000000000;
  }

  sub_267DA133C(v78, v86, v87);
  OUTLINED_FUNCTION_20_33();
  v88 = *v77;
  *v77 = v75;

  if (*v77)
  {
    v89 = *(v18 + 504);
    *(v18 + 296) = *v77;
    sub_267BA9F38(0, &unk_28022BB50, 0x277D473F0);
    sub_267EF8348();
    v80 = 0;
  }

  v90 = *(v18 + 544);
  v91 = *(v18 + 504);
  v92 = *(v18 + 424);
  v94 = *(v18 + 400);
  v93 = *(v18 + 408);
  v95 = *(v18 + 336);
  v96 = *(v18 + 304);
  __swift_storeEnumTagSinglePayload(v91, v80, 1, *(v18 + 568));
  sub_267BF3128(v91, v96 + *(v90 + 52), &unk_28022AE30, &qword_267EFC0B0);
  sub_267BE84FC();
  sub_267EF70D8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
  OUTLINED_FUNCTION_22_0();
  sub_267EF8478();
  OUTLINED_FUNCTION_228_1();
  sub_267EF8348();
  *(v18 + 592) = 0;
  v101 = *(v18 + 568);
  v102 = *(v18 + 544);
  v103 = *(v18 + 496);
  v104 = *(v18 + 328);
  v105 = *(v18 + 304);
  (*(*(v18 + 416) + 8))(*(v18 + 424), *(v18 + 408));
  v106 = OUTLINED_FUNCTION_57_0();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v101);
  sub_267BF3128(v103, v105 + *(v102 + 24), &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_11_54();
  v110 = *(v109 + 8);
  v111 = OUTLINED_FUNCTION_38_0();
  v112(v111);
  v113 = *(v18 + 208);
  __swift_project_boxed_opaque_existential_0((v18 + 176), *(v18 + 200));
  OUTLINED_FUNCTION_38_0();
  if ((sub_267EF3C18() & 1) == 0)
  {
    v120 = *(v18 + 552);

    __swift_destroy_boxed_opaque_existential_0((v18 + 176));
    goto LABEL_9;
  }

  *(v18 + 240) = &type metadata for Features;
  *(v18 + 248) = sub_267BAFCAC();
  *(v18 + 216) = 7;
  v114 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0((v18 + 216));
  __swift_destroy_boxed_opaque_existential_0((v18 + 176));
  if ((v114 & 1) == 0)
  {
LABEL_8:
    v58 = *(v18 + 552);

LABEL_9:
    OUTLINED_FUNCTION_122_6();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_89();

    return v60(v59, v60, v61, v62, v63, v64, v65, v66, v121, a10, a11, a12, a13, v122, a15, a16, a17, a18);
  }

  v115 = swift_task_alloc();
  *(v18 + 600) = v115;
  *v115 = v18;
  OUTLINED_FUNCTION_113_9(v115);
  v116 = *(v18 + 320);
  v117 = *(v18 + 328);
  OUTLINED_FUNCTION_89();

  return sub_267CA7E0C(v118);
}

uint64_t sub_267ED5944()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 600);
  *v2 = *v0;
  *(v1 + 608) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267ED5A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  if (!*(v18[76] + 16))
  {
    v19 = v18[42];
    sub_267EF7C18();
  }

  v20 = v18[74];
  v21 = v18[61];
  v22 = v18[49];
  v23 = v18[47];
  sub_267EF8588();
  sub_267EF8348();
  v24 = v18[76];
  v61 = v20;
  if (v20)
  {
    v25 = v18[69];
    (*(v18[48] + 8))(v18[49], v18[47]);

    OUTLINED_FUNCTION_123_3();

    OUTLINED_FUNCTION_17();
  }

  else
  {
    v26 = v18[71];
    a10 = v18[69];
    a11 = v18[70];
    v27 = v18[68];
    v28 = v18[61];
    v29 = v18[46];
    v30 = v18[43];
    a12 = v18[44];
    a13 = v18[60];
    v31 = v18[41];
    v32 = v18[42];
    v33 = v18[38];
    (*(v18[48] + 8))(v18[49], v18[47]);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v26);
    sub_267BF3128(v28, v33 + *(v27 + 20), &unk_28022AE30, &qword_267EFC0B0);
    v37 = v31[6];
    __swift_project_boxed_opaque_existential_0(v31 + 2, v31[5]);
    v38 = *(v37 + 8);
    v39 = OUTLINED_FUNCTION_50_3();
    v40(v39);
    sub_267DA1EB4();
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_0(v18 + 32);
    v43 = *v30;
    sub_267EF7C18();
    OUTLINED_FUNCTION_444();
    v44 = v42;
    sub_267EF82C8();
    sub_267EF8348();
    v54 = v18[71];
    v55 = v18[68];
    v56 = v18[60];
    v57 = v18[38];
    (*(v18[45] + 8))(v18[46], v18[44]);

    v58 = OUTLINED_FUNCTION_57_0();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v54);
    sub_267BF3128(v56, v57 + *(v55 + 60), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_122_6();

    OUTLINED_FUNCTION_1();
  }

  OUTLINED_FUNCTION_89();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, v61, a15, a16, a17, a18);
}

uint64_t sub_267ED5DA8()
{
  OUTLINED_FUNCTION_12();
  v0[19] = v1;
  v0[20] = v2;
  v0[17] = v3;
  v0[18] = v4;
  v5 = sub_267EF8248();
  v0[21] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v0[22] = v6;
  v8 = *(v7 + 64);
  v0[23] = OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64);
  v0[24] = OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267ED63BC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 232);
  *v2 = *v0;
  *(v1 + 241) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267ED64A4()
{
  OUTLINED_FUNCTION_90();
  v1 = *(v0 + 241);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 208);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 168);
  v9 = *(v0 + 144);
  sub_267EF7C18();
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_72();
  sub_267EF8238();
  sub_267EF8348();
  v11 = *(v0 + 192);
  v10 = *(v0 + 200);
  v12 = *(v0 + 136);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
  sub_267EF79B8();
  OUTLINED_FUNCTION_240_1();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_267BF3128(v11, v12 + *(v10 + 20), &unk_28022AE30, &qword_267EFC0B0);
  v18 = *(v0 + 184);
  v17 = *(v0 + 192);

  OUTLINED_FUNCTION_1();

  return v19();
}

uint64_t sub_267ED6624()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 466) = v2;
  *(v1 + 200) = v3;
  *(v1 + 208) = v0;
  *(v1 + 184) = v4;
  *(v1 + 192) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB28, &qword_267F082B0);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  *(v1 + 216) = OUTLINED_FUNCTION_2();
  v9 = sub_267EF84F8();
  *(v1 + 224) = v9;
  OUTLINED_FUNCTION_30_0(v9);
  *(v1 + 232) = v10;
  v12 = *(v11 + 64);
  *(v1 + 240) = OUTLINED_FUNCTION_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0);
  OUTLINED_FUNCTION_30_0(v13);
  *(v1 + 248) = v14;
  *(v1 + 256) = *(v15 + 64);
  *(v1 + 264) = swift_task_alloc();
  *(v1 + 272) = swift_task_alloc();
  v16 = sub_267EF48A8();
  *(v1 + 280) = v16;
  OUTLINED_FUNCTION_30_0(v16);
  *(v1 + 288) = v17;
  v19 = *(v18 + 64);
  *(v1 + 296) = OUTLINED_FUNCTION_2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v20);
  v22 = *(v21 + 64);
  *(v1 + 304) = OUTLINED_FUNCTION_2();
  v23 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v23);
  v25 = *(v24 + 64);
  *(v1 + 312) = OUTLINED_FUNCTION_2();
  v26 = type metadata accessor for SendMessageAskForPayloadParameters(0);
  *(v1 + 320) = v26;
  OUTLINED_FUNCTION_18(v26);
  v28 = *(v27 + 64);
  *(v1 + 328) = OUTLINED_FUNCTION_2();
  v29 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_267ED6828()
{
  OUTLINED_FUNCTION_29();
  v24 = v1;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v2 = sub_267EF8A08();
  *(v1 + 336) = __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v1 + 466);
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_64_2();
    v23 = v6;
    *v0 = 136315138;
    *(v1 + 465) = v5;
    v7 = sub_267EF9098();
    v9 = sub_267BA33E8(v7, v8, &v23);

    *(v0 + 4) = v9;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_26();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 344) = v15;
  *v15 = v16;
  v15[1] = sub_267ED69A8;
  v17 = *(v1 + 328);
  v18 = *(v1 + 200);
  v19 = *(v1 + 208);
  v20 = *(v1 + 192);
  OUTLINED_FUNCTION_91_0();

  return sub_267ED8070();
}

uint64_t sub_267ED69A8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 344);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267ED6A8C()
{
  OUTLINED_FUNCTION_57_2();
  v1 = *(v0 + 466);
  if (*(v0 + 466))
  {
    if (v1 == 3)
    {
      v2 = *(v0 + 320);
      v3 = *(v0 + 328);
      v4 = *(v0 + 312);
      type metadata accessor for SendMessageCATsSimple();
      sub_267EF7B68();
      *(v0 + 352) = sub_267EF79E8();
      v5 = v2[10];
      v34 = *(v3 + v2[14]);
      v35 = *(v3 + v2[9]);
      v33 = *v3;
      v6 = v2[20];
      v37 = *(v3 + v2[19]);
      v7 = *(v3 + v2[18]);
      v8 = v2[16];
      v9 = v3 + v2[17];
      v10 = *v9;
      v11 = v9[8];
      v12 = *(v3 + v5);
      v13 = *(v3 + v5 + 8);
      v14 = swift_task_alloc();
      *(v0 + 360) = v14;
      *v14 = v0;
      v14[1] = sub_267ED6E24;
      OUTLINED_FUNCTION_15();

      return sub_267E9AD54();
    }

    else
    {
      v22 = *(v0 + 328);
      sub_267EF9B68();
      MEMORY[0x26D608E60](0xD000000000000031, 0x8000000267F1D740);
      *(v0 + 464) = v1;
      v23 = sub_267EF9098();
      MEMORY[0x26D608E60](v23);

      sub_267C266B0();
      OUTLINED_FUNCTION_61_1();
      *v24 = 0;
      v24[1] = 0xE000000000000000;
      swift_willThrow();
      OUTLINED_FUNCTION_2_74();
      sub_267EDB680(v22, v25);
      OUTLINED_FUNCTION_68_15();

      OUTLINED_FUNCTION_17();

      return v26();
    }
  }

  else
  {
    v17 = *(v0 + 312);
    v18 = *(v0 + 208);
    type metadata accessor for SendMessageCATsSimple();
    sub_267EF7B68();
    *(v0 + 376) = sub_267EF79E8();
    v19 = *(v18 + 56);
    sub_267ECFBDC();
    OUTLINED_FUNCTION_424();
    v20 = 1;
    switch(v21)
    {
      case 1:
        OUTLINED_FUNCTION_516();
        goto LABEL_12;
      case 2:
        OUTLINED_FUNCTION_125_7();
        goto LABEL_12;
      case 3:
        goto LABEL_13;
      default:
LABEL_12:
        v27 = *(v0 + 304);
        sub_267EF90F8();

        v20 = 0;
LABEL_13:
        v28 = *(v0 + 304);
        sub_267EF79B8();
        v29 = OUTLINED_FUNCTION_240_1();
        __swift_storeEnumTagSinglePayload(v29, v20, 1, v30);
        v31 = swift_task_alloc();
        *(v0 + 384) = v31;
        *v31 = v0;
        v31[1] = sub_267ED70F4;
        v32 = *(v0 + 304);

        result = sub_267E9B3A4();
        break;
    }
  }

  return result;
}

uint64_t sub_267ED6E24()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  OUTLINED_FUNCTION_22_2();
  v6 = *(v5 + 360);
  *v7 = *v1;
  *(v8 + 368) = v0;

  OUTLINED_FUNCTION_22_2();
  v10 = *(v9 + 352);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267ED6F40()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 144);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  *(v1 + 400) = v2;
  v5 = v4[6];
  OUTLINED_FUNCTION_62_1(v4 + 2, v4[5]);
  v6 = *(v5 + 8);
  v7 = v2;
  v8 = OUTLINED_FUNCTION_26_0();
  v6(v8);
  v9 = v4[7];
  v10 = v4[14];
  v11 = [v3 speakableGroupName];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 spokenPhrase];
    sub_267EF9028();
    OUTLINED_FUNCTION_238_0();
  }

  else
  {
    v14 = *(v1 + 200);
    v15 = *(v1 + 48);
    OUTLINED_FUNCTION_62_1((v1 + 16), *(v1 + 40));
    OUTLINED_FUNCTION_63();
    sub_267EF3C48();
    v16 = OUTLINED_FUNCTION_54_1();
    v12 = sub_267BCEA0C(v16);
    if (v0)
    {
      v17 = OUTLINED_FUNCTION_1_10();
      sub_267DA2578(v17);
    }

    else
    {
      sub_267DA2180();
    }

    OUTLINED_FUNCTION_238_0();
  }

  OUTLINED_FUNCTION_208_1();
  sub_267ED9A2C(v12);
  if (v18)
  {

    LOBYTE(v9) = 0;
  }

  else if (OUTLINED_FUNCTION_207_0() == v9 && v19 == 0xE700000000000000)
  {

    LOBYTE(v9) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_256_0();
    OUTLINED_FUNCTION_58_1();
  }

  *(v1 + 467) = v9 & 1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 424) = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_101_9(v21);
  OUTLINED_FUNCTION_122();

  return sub_267CA8174(v23, v24);
}

uint64_t sub_267ED70F4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v3[20] = v2;
  v3[21] = v5;
  v3[22] = v0;
  OUTLINED_FUNCTION_22_2();
  v7 = *(v6 + 384);
  *v8 = *v2;
  *(v9 + 392) = v0;

  OUTLINED_FUNCTION_22_2();
  v11 = *(v10 + 376);
  sub_267B9F98C(*(v1 + 304), &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267ED723C()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 168);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  *(v1 + 400) = v2;
  v5 = v4[6];
  OUTLINED_FUNCTION_62_1(v4 + 2, v4[5]);
  v6 = *(v5 + 8);
  v7 = v2;
  v8 = OUTLINED_FUNCTION_26_0();
  v6(v8);
  v9 = v4[7];
  v10 = v4[14];
  v11 = [v3 speakableGroupName];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 spokenPhrase];
    sub_267EF9028();
    OUTLINED_FUNCTION_238_0();
  }

  else
  {
    v14 = *(v1 + 200);
    v15 = *(v1 + 48);
    OUTLINED_FUNCTION_62_1((v1 + 16), *(v1 + 40));
    OUTLINED_FUNCTION_63();
    sub_267EF3C48();
    v16 = OUTLINED_FUNCTION_54_1();
    v12 = sub_267BCEA0C(v16);
    if (v0)
    {
      v17 = OUTLINED_FUNCTION_1_10();
      sub_267DA2578(v17);
    }

    else
    {
      sub_267DA2180();
    }

    OUTLINED_FUNCTION_238_0();
  }

  OUTLINED_FUNCTION_208_1();
  sub_267ED9A2C(v12);
  if (v18)
  {

    LOBYTE(v9) = 0;
  }

  else if (OUTLINED_FUNCTION_207_0() == v9 && v19 == 0xE700000000000000)
  {

    LOBYTE(v9) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_256_0();
    OUTLINED_FUNCTION_58_1();
  }

  *(v1 + 467) = v9 & 1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 424) = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_101_9(v21);
  OUTLINED_FUNCTION_122();

  return sub_267CA8174(v23, v24);
}

uint64_t sub_267ED73F0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 424);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267ED74D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  HIDWORD(a15) = *(v20 + 467);
  v21 = *(v20 + 408);
  v81 = *(v20 + 416);
  v22 = *(v20 + 264);
  v79 = *(v20 + 272);
  v80 = *(v20 + 240);
  v23 = *(v20 + 208);
  v24 = *(v20 + 216);
  v25 = *(v20 + 200);
  v26 = v23[6];
  v82 = *(v20 + 466);
  OUTLINED_FUNCTION_62_1(v23 + 2, v23[5]);
  v27 = *(v26 + 8);

  v28 = OUTLINED_FUNCTION_199();
  v27(v28);
  v30 = *(v20 + 80);
  v29 = *(v20 + 88);
  OUTLINED_FUNCTION_131((v20 + 56));
  OUTLINED_FUNCTION_395();
  sub_267BCD18C();
  sub_267EF81F8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  sub_267C6AD4C(v79, v22, &qword_28022BB20, &unk_267F092D0);
  v35 = v25;
  LOBYTE(a9) = BYTE4(a15);
  OUTLINED_FUNCTION_243_1();
  sub_267EF84E8();
  __swift_destroy_boxed_opaque_existential_0((v20 + 56));
  if (sub_267ED7FE4(v82))
  {
    v36 = *(v20 + 467);
    v38 = *(v20 + 408);
    v37 = *(v20 + 416);
    v39 = *(v20 + 264);
    v40 = *(v20 + 248);
    v41 = *(v20 + 256);
    v43 = *(v20 + 200);
    v42 = *(v20 + 208);
    v44 = *(v20 + 192);
    sub_267C6AD4C(*(v20 + 272), v39, &qword_28022BB20, &unk_267F092D0);
    v45 = (*(v40 + 80) + 57) & ~*(v40 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = v43;
    *(v46 + 24) = v37;
    *(v46 + 32) = v38;
    *(v46 + 40) = v42;
    *(v46 + 48) = v44;
    *(v46 + 56) = v36;
    sub_267BBE184(v39, v46 + v45, &qword_28022BB20, &unk_267F092D0);
    v47 = v43;

    v48 = &unk_267F0EE10;
  }

  else
  {
    v49 = *(v20 + 408);
    v50 = *(v20 + 336);

    v51 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v53);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v54, v55, v56, v57, v58, 2u);
      OUTLINED_FUNCTION_26();
    }

    v48 = 0;
    v46 = 0;
  }

  *(v20 + 432) = v48;
  *(v20 + 440) = v46;
  v59 = *(v20 + 400);
  v60 = *(v20 + 232);
  v61 = *(v20 + 240);
  v62 = *(v20 + 224);
  *(v20 + 120) = v62;
  *(v20 + 128) = sub_267EDB6D8(&unk_28022BB30, MEMORY[0x277D5D8A8]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v20 + 96));
  (*(v60 + 16))(boxed_opaque_existential_0, v61, v62);
  OUTLINED_FUNCTION_10(dword_267F0EDF8);
  v83 = v64;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v20 + 448) = v65;
  *v65 = v66;
  v65[1] = sub_267ED77F4;
  v67 = *(v20 + 296);
  v68 = *(v20 + 208);
  v69 = *(v20 + 184);
  OUTLINED_FUNCTION_46_0();

  return v76(v70, v71, v72, v73, v74, v75, v76, v77, a9, 0, 0, 0, v79, v80, a15, v81, v83, a18, a19, a20);
}

uint64_t sub_267ED77F4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 448);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 456) = v0;

  if (!v0)
  {
    sub_267B9F98C(v3 + 96, &qword_280229330, &qword_267F092F0);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267ED7914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_57_2();
  v17 = v16[42];
  v18 = sub_267EF89F8();
  v19 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_36(v19))
  {
    v20 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v20);
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v21, v22, "#SendMessageNeedsValueFlowStrategy returning SMART output");
    OUTLINED_FUNCTION_26();
  }

  v23 = v16[55];
  v24 = v16[50];
  v25 = v16[41];
  v46 = v16[39];
  v47 = v16[38];
  v27 = v16[36];
  v26 = v16[37];
  v28 = v16[34];
  v45 = v16[35];
  v30 = v16[29];
  v29 = v16[30];
  v31 = v16[28];
  v48 = v16[33];
  v49 = v16[27];
  sub_267BA1BFC(v16[54]);

  v32 = *(v30 + 8);
  v33 = OUTLINED_FUNCTION_65_5();
  v34(v33);
  sub_267B9F98C(v28, &qword_28022BB20, &unk_267F092D0);
  (*(v27 + 8))(v26, v45);
  OUTLINED_FUNCTION_2_74();
  sub_267EDB680(v25, v35);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_15();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, v45, v46, v47, v48, v49, a14, a15, a16);
}

uint64_t sub_267ED7A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 328);
  OUTLINED_FUNCTION_2_74();
  sub_267EDB680(v12, v13);
  v14 = *(v10 + 368);
  OUTLINED_FUNCTION_68_15();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_267ED7B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 328);
  OUTLINED_FUNCTION_2_74();
  sub_267EDB680(v12, v13);
  v14 = *(v10 + 392);
  OUTLINED_FUNCTION_68_15();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_267ED7BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = v12[55];
  v14 = v12[50];
  v15 = v12[41];
  v17 = v12[36];
  v16 = v12[37];
  v19 = v12[34];
  v18 = v12[35];
  v21 = v12[29];
  v20 = v12[30];
  v22 = v12[28];
  sub_267BA1BFC(v12[54]);

  v23 = *(v21 + 8);
  v24 = OUTLINED_FUNCTION_63();
  v25(v24);
  sub_267B9F98C(v19, &qword_28022BB20, &unk_267F092D0);
  v26 = *(v17 + 8);
  v27 = OUTLINED_FUNCTION_26_0();
  v28(v27);
  OUTLINED_FUNCTION_2_74();
  sub_267EDB680(v15, v29);
  sub_267B9F98C((v12 + 12), &qword_280229330, &qword_267F092F0);
  v30 = v12[57];
  OUTLINED_FUNCTION_68_15();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_267ED7CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 96) = a6;
  *(v8 + 104) = a8;
  *(v8 + 128) = a7;
  *(v8 + 80) = a4;
  *(v8 + 88) = a5;
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  *(v8 + 56) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0) - 8) + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB28, &qword_267F082B0) - 8) + 64) + 15;
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267ED7DBC, 0, 0);
}

uint64_t sub_267ED7DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  v21 = *(v20 + 112);
  v22 = *(v20 + 120);
  v23 = *(v20 + 96);
  HIDWORD(a17) = *(v20 + 128);
  v24 = *(v20 + 88);
  v47 = *(v20 + 104);
  v48 = *(v20 + 80);
  v49 = *(v20 + 64);
  v50 = *(v20 + 72);
  v25 = *(v20 + 56);
  v26 = sub_267EF8178();
  v25[3] = v26;
  v25[4] = sub_267EDB6D8(qword_280229338, MEMORY[0x277D5D3A0]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  v29 = v24[5];
  v28 = v24[6];
  __swift_project_boxed_opaque_existential_0(v24 + 2, v29);
  OUTLINED_FUNCTION_233_0();
  v30(v29, v28);
  v31 = *(v20 + 40);
  v32 = *(v20 + 48);
  OUTLINED_FUNCTION_131((v20 + 16));
  sub_267BCD18C();
  sub_267EF8308();
  sub_267EF82F8();
  sub_267EF7C18();
  sub_267EF82E8();

  sub_267EF81F8();
  OUTLINED_FUNCTION_2_44();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  sub_267C6AD4C(v47, v21, &qword_28022BB20, &unk_267F092D0);

  v37 = v49;
  LOBYTE(a9) = BYTE4(a17);
  OUTLINED_FUNCTION_243_1();
  sub_267EF84C8();
  __swift_destroy_boxed_opaque_existential_0((v20 + 16));
  (*(*(v26 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D5D370], v26);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, v22, v21, 0, v47, v48, v49, v50, a17, a18, a19, a20);
}

uint64_t sub_267ED7FE4(char a1)
{
  if (sub_267C7C28C(a1) == 0x6E65697069636572 && v1 == 0xE900000000000074)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_267EF9EA8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_267ED8070()
{
  OUTLINED_FUNCTION_12();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_267EF79B8();
  v1[11] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[12] = v6;
  v8 = *(v7 + 64);
  v1[13] = OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64);
  v1[14] = OUTLINED_FUNCTION_2();
  v12 = sub_267EF2CC8();
  v1[15] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[16] = v13;
  v15 = *(v14 + 64);
  v1[17] = OUTLINED_FUNCTION_2();
  v16 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_267ED8190()
{
  OUTLINED_FUNCTION_29();
  v21 = v1;
  v2 = *(v1 + 80);
  v3 = sub_267CA7914();
  *(v1 + 172) = v3 & 1;
  if (v3)
  {
    v4 = *(v1 + 80);
    sub_267CA7D2C();
  }

  *(v1 + 144) = *(*(v1 + 80) + 56);
  switch(sub_267ECFBDC())
  {
    case 1u:

      goto LABEL_7;
    case 2u:
      OUTLINED_FUNCTION_125_7();
      goto LABEL_6;
    case 3u:
      goto LABEL_8;
    default:
LABEL_6:
      sub_267EF9EA8();
      OUTLINED_FUNCTION_58_1();

      if (v0)
      {
LABEL_7:
        v6 = *(v1 + 128);
        v5 = *(v1 + 136);
        v7 = *(v1 + 120);
        v8 = *(v1 + 80);
        v19 = xmmword_267EFDDB0;
        v20 = 4;
        sub_267EF2CB8();
        sub_267C5BD60(&v19, v5);
        v9 = *(v6 + 8);
        v10 = OUTLINED_FUNCTION_26_0();
        v11(v10);
      }

LABEL_8:
      v12 = *(v1 + 88);
      v13 = *(v1 + 56);
      v14 = type metadata accessor for SendMessageAskForPayloadParameters(0);
      *(v1 + 152) = v14;
      OUTLINED_FUNCTION_52_21(v14[5]);
      OUTLINED_FUNCTION_52_21(v14[6]);
      OUTLINED_FUNCTION_52_21(v14[7]);
      OUTLINED_FUNCTION_52_21(v14[8]);
      OUTLINED_FUNCTION_52_21(v14[11]);
      OUTLINED_FUNCTION_52_21(v14[12]);
      OUTLINED_FUNCTION_52_21(v14[13]);
      OUTLINED_FUNCTION_52_21(v14[15]);
      v15 = v14[16];
      *(v1 + 168) = v15;
      OUTLINED_FUNCTION_52_21(v15);
      v16 = swift_task_alloc();
      *(v1 + 160) = v16;
      *v16 = v1;
      v16[1] = sub_267ED8388;
      v17 = *(v1 + 80);

      return sub_267ED8BF0();
  }
}

uint64_t sub_267ED8388()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 160);
  *v2 = *v0;
  *(v1 + 173) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267ED88A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 48) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v6 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267ED88D0()
{
  OUTLINED_FUNCTION_29();
  v30 = v1;
  v2 = *(v1 + 48);
  if (v2 == 2)
  {
    v9 = *(*(v1 + 24) + 104);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v1 + 40) = v10;
    *v10 = v11;
    v10[1] = sub_267C53C1C;
    v12 = *(v1 + 16);
    OUTLINED_FUNCTION_91_0();

    return sub_267E4B0E8();
  }

  else
  {
    if (v2 != 1)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v14 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v14, qword_280240FB0);
      v15 = sub_267EF89F8();
      sub_267EF95E8();
      OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = *(v1 + 48);
        OUTLINED_FUNCTION_48();
        OUTLINED_FUNCTION_64_2();
        OUTLINED_FUNCTION_69_11();
        *v0 = 136315138;
        v18 = sub_267C7C28C(v17);
        v20 = sub_267BA33E8(v18, v19, &v29);

        *(v0 + 4) = v20;
        OUTLINED_FUNCTION_21();
        _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
        OUTLINED_FUNCTION_26_4();
        OUTLINED_FUNCTION_26();
      }

      sub_267CCECC0();
      OUTLINED_FUNCTION_61_1();
      *v26 = 2;
      swift_willThrow();
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_91_0();

      __asm { BRAA            X1, X16 }
    }

    v3 = *(*(v1 + 24) + 104);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v1 + 32) = v4;
    *v4 = v5;
    v4[1] = sub_267ED8B10;
    v6 = *(v1 + 16);
    OUTLINED_FUNCTION_91_0();

    return sub_267E4B1A0();
  }
}

uint64_t sub_267ED8B10()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267ED8BF0()
{
  OUTLINED_FUNCTION_12();
  v1[7] = v0;
  v2 = sub_267EF2CC8();
  v1[8] = v2;
  OUTLINED_FUNCTION_30_0(v2);
  v1[9] = v3;
  v5 = *(v4 + 64);
  v1[10] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_267ED8F98()
{
  OUTLINED_FUNCTION_48_0();
  v38 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229720, &qword_267EFE108);
  OUTLINED_FUNCTION_18(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  v6 = &v36[-v5];
  v7 = sub_267EF4C08();
  v8 = OUTLINED_FUNCTION_58(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_60();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v36[-v17];
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v19 = sub_267EF8A08();
  __swift_project_value_buffer(v19, qword_280240FB0);
  v20 = sub_267EF89F8();
  v21 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v21))
  {
    v22 = OUTLINED_FUNCTION_32();
    *v22 = 0;
    _os_log_impl(&dword_267B93000, v20, v21, "#SendMessageNeedsValueFlowStrategy we are prompting for content with corrections during payload support, checking for corrections parse", v22, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  sub_267C4D820(v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_267B9F98C(v6, &qword_280229720, &qword_267EFE108);
    v23 = sub_267EF89F8();
    v24 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v24))
    {
      v25 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v25);
      _os_log_impl(&dword_267B93000, v23, v24, "#SendMessageNeedsValueFlowStrategy input.ruleBasedParse is missing, must use input.parse", v18, 2u);
      OUTLINED_FUNCTION_29_1();
    }

    sub_267EF4B88();
    goto LABEL_20;
  }

  v26 = *(v10 + 32);
  v27 = OUTLINED_FUNCTION_50_3();
  v26(v27);
  sub_267EF4B88();
  v28 = sub_267E57DFC(v15, v39);
  v29 = *(v10 + 8);
  v29(v15, v7, v28);
  if (!v39[3])
  {
    sub_267B9F98C(v39, &unk_28022BBF0, &unk_267F01C60);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229210, &qword_267EFCB98);
  type metadata accessor for SmsNLv4Intent();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    (v26)(v38, v18, v7);
    goto LABEL_20;
  }

  if ((sub_267DD4488() & 1) == 0 || (sub_267DD47CC() & 1) == 0 || (v30 = sub_267DD89C4(), v37 = sub_267DEAC8C(v30, v31), , (v37 & 1) == 0))
  {

    goto LABEL_19;
  }

  v32 = sub_267EF89F8();
  v33 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v33))
  {
    v34 = OUTLINED_FUNCTION_32();
    *v34 = 0;
    _os_log_impl(&dword_267B93000, v32, v33, "#SendMessageNeedsValueFlowStrategy top parse represents contact correction, use it", v34, 2u);
    OUTLINED_FUNCTION_9_11();
  }

  sub_267EF4B88();

  v35 = OUTLINED_FUNCTION_17_4();
  (v29)(v35);
LABEL_20:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267ED93C8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267ED0B20();
}

uint64_t sub_267ED947C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267ED2660();
}

uint64_t sub_267ED9528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B370] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendMessageNeedsValueFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9BF8](a1, a2, v10, a4);
}

uint64_t sub_267ED95F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B378] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendMessageNeedsValueFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C00](a1, a2, v10, a4);
}

uint64_t sub_267ED96B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_267BA2E04(a4, a1);

  return OUTLINED_FUNCTION_66();
}

uint64_t sub_267ED96F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return OUTLINED_FUNCTION_66();
}

uint64_t sub_267ED9728(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v46 = a5;
  sub_267EDA948(a1, a2, a3, v45);
  v6 = v45[1];
  v7 = v45[3];
  v8 = v45[4];
  v41 = v45[5];
  v42 = v45[0];
  v9 = (v45[2] + 64) >> 6;

  v39 = v9;
  v40 = v6;
  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v42 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v42 + 56) + 8 * v12);
      v44[0] = *v13;
      v44[1] = v14;
      v44[2] = v15;

      v41(v43, v44);

      v16 = v43[0];
      v17 = v43[1];
      v18 = v43[2];
      v19 = *v46;
      v21 = sub_267BA9948();
      v22 = *(v19 + 16);
      v23 = (v20 & 1) == 0;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v24 = v20;
      if (*(v19 + 24) >= v22 + v23)
      {
        if ((a4 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A970, &unk_267F02620);
          sub_267EF9C78();
        }
      }

      else
      {
        v25 = v46;
        sub_267CFA774();
        v26 = *v25;
        v27 = sub_267BA9948();
        if ((v24 & 1) != (v28 & 1))
        {
          goto LABEL_23;
        }

        v21 = v27;
      }

      v8 &= v8 - 1;
      v29 = *v46;
      if (v24)
      {
        v30 = *(v29[7] + 8 * v21);

        v31 = sub_267ECED10(v18, v30);

        v32 = v29[7];
        v33 = *(v32 + 8 * v21);
        *(v32 + 8 * v21) = v31;
      }

      else
      {
        v29[(v21 >> 6) + 8] |= 1 << v21;
        v34 = (v29[6] + 16 * v21);
        *v34 = v16;
        v34[1] = v17;
        *(v29[7] + 8 * v21) = v18;
        v35 = v29[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_22;
        }

        v29[2] = v37;
      }

      a4 = 1;
      v7 = v10;
      v9 = v39;
      v6 = v40;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_267C095D8();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

uint64_t sub_267ED99E4(uint64_t result, uint64_t a2)
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

uint64_t sub_267ED9A2C(void *a1)
{
  v1 = [a1 content];
  if (v1)
  {
    v2 = v1;
    sub_267EF9028();
  }

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267ED9A8C(void *a1)
{
  v1 = [a1 visual];
  if (v1)
  {
    v2 = v1;
    sub_267EF2BE8();
  }

  return OUTLINED_FUNCTION_61_0();
}

void sub_267ED9AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v20;
  a20 = v21;
  v223 = v23;
  v224 = v22;
  v25 = v24;
  v213 = sub_267EF2E38();
  v26 = OUTLINED_FUNCTION_58(v213);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_36_3(v32 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v34 = OUTLINED_FUNCTION_18(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_60();
  v39 = (v37 - v38);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_36_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v45 = OUTLINED_FUNCTION_18(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_60();
  v50 = v48 - v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v52);
  v225 = sub_267EF7168();
  v53 = OUTLINED_FUNCTION_58(v225);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_36_3(v59 - v58);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D208, &qword_267F0EDE8);
  OUTLINED_FUNCTION_22(v219);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v62);
  v226 = v202 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_28022C758, &qword_267F0EDF0);
  v65 = OUTLINED_FUNCTION_18(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_60();
  v218 = v68 - v69;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_77_0();
  v220 = v71;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_45_0();
  v222 = v73;
  v230 = MEMORY[0x277D84F90];
  v214 = v25;
  v74 = sub_267BCEA0C(v25);
  if (!v74)
  {
LABEL_67:
    OUTLINED_FUNCTION_47();
    return;
  }

  v75 = v74;
  v202[1] = v50;
  v203 = v39;
  v221 = sub_267BAF0DC(v74);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  v76 = 0;
  v216 = v75 & 0xFFFFFFFFFFFFFF8;
  v217 = v75 & 0xC000000000000001;
  v208 = (v55 + 32);
  v211 = (v55 + 8);
  v212 = (v28 + 8);
  *&v77 = 136315138;
  v205 = v77;
  v78 = v222;
  for (i = v75; ; v75 = i)
  {
    if (v221 == v76)
    {

      goto LABEL_67;
    }

    if (v217)
    {
      v201 = OUTLINED_FUNCTION_290();
      v80 = MEMORY[0x26D609870](v201);
      v79 = v220;
    }

    else
    {
      v79 = v220;
      if (v76 >= *(v216 + 16))
      {
        goto LABEL_69;
      }

      v80 = *(v75 + 8 * v76 + 32);
    }

    if (__OFADD__(v76, 1))
    {
      break;
    }

    sub_267EF6FF8();
    if (sub_267EF6FC8())
    {
      sub_267EF6FA8();

      sub_267EF86B8();
    }

    else
    {
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v81, v82, v83, v225);
    }

    v84 = v218;
    sub_267EF7138();
    OUTLINED_FUNCTION_9();
    v85 = v225;
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v225);
    v89 = *(v219 + 48);
    v90 = v226;
    sub_267C6AD4C(v78, v226, &dword_28022C758, &qword_267F0EDF0);
    sub_267C6AD4C(v79, v90 + v89, &dword_28022C758, &qword_267F0EDF0);
    if (__swift_getEnumTagSinglePayload(v90, 1, v85) != 1)
    {
      v101 = v226;
      sub_267C6AD4C(v226, v84, &dword_28022C758, &qword_267F0EDF0);
      if (__swift_getEnumTagSinglePayload(v101 + v89, 1, v225) != 1)
      {
        v108 = v225;
        v78 = v209;
        (*v208)(v209, v226 + v89, v225);
        sub_267EDB6D8(&qword_28022D210, MEMORY[0x277D61DB0]);
        OUTLINED_FUNCTION_1_10();
        v100 = sub_267EF8FE8();
        v210 = v76;
        v109 = *v211;
        (*v211)(v78, v108);
        OUTLINED_FUNCTION_131_2();
        sub_267B9F98C(v110, v111, v112);
        OUTLINED_FUNCTION_131_2();
        sub_267B9F98C(v113, v114, v115);
        v116 = OUTLINED_FUNCTION_50_3();
        (v109)(v116);
        v76 = v210;
        OUTLINED_FUNCTION_131_2();
        sub_267B9F98C(v117, v118, v119);
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_131_2();
      sub_267B9F98C(v102, v103, v104);
      OUTLINED_FUNCTION_131_2();
      sub_267B9F98C(v105, v106, v107);
      (*v211)(v84, v225);
LABEL_16:
      sub_267B9F98C(v226, &qword_28022D208, &qword_267F0EDE8);
      v100 = 0;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_131_2();
    sub_267B9F98C(v91, v92, v93);
    OUTLINED_FUNCTION_131_2();
    sub_267B9F98C(v94, v95, v96);
    if (__swift_getEnumTagSinglePayload(v226 + v89, 1, v225) != 1)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_131_2();
    sub_267B9F98C(v97, v98, v99);
    v100 = 1;
LABEL_18:
    v120 = v80;
    v121 = v223[3];
    v122 = v223[4];
    OUTLINED_FUNCTION_131(v223);
    v123 = sub_267BCD18C();
    v124 = *(v224 + 80);
    if (!*(v124 + 16) || (v125 = v123, v126 = sub_267C94B6C(v76), (v127 & 1) == 0))
    {
      v131 = 0;
LABEL_28:
      sub_267DE9B04();
      v145 = *(v224 + 192);
      if (*(v145 + 16) && (OUTLINED_FUNCTION_156_2(), , v146 = sub_267BA9948(), v148 = v147, , (v148 & 1) != 0))
      {
        v149 = *(v145 + 56) + 24 * v146;
        v150 = *v149;
        v152 = *(v149 + 8);
        v151 = *(v149 + 16);

        v154 = v150 != 4 && v152 == 0;
      }

      else
      {

        v151 = 0;
        v154 = 1;
      }

      if (sub_267EF96F8())
      {

        goto LABEL_41;
      }

      if (v151)
      {
      }

      else
      {
LABEL_41:
        v154 = 0;
      }

      v155 = *(v224 + 80);
      if (*(v155 + 16) && (v156 = sub_267C94B6C(v76), (v157 & 1) != 0))
      {
        v158 = v131;
        v159 = *(*(v155 + 56) + 8 * v156);
        v160 = sub_267DE9BAC();
      }

      else
      {
        v158 = v131;
        v160 = 0;
      }

      v161 = v223;
      v163 = v223[3];
      v162 = v223[4];
      v164 = OUTLINED_FUNCTION_61_4();
      __swift_project_boxed_opaque_existential_0(v164, v165);
      OUTLINED_FUNCTION_170_4(&a17);
      sub_267EF3B68();
      v166 = v161[3];
      v167 = v161[4];
      OUTLINED_FUNCTION_131(v161);
      v168 = sub_267BCD18C();
      sub_267BC20F4(v78, v154, v160 & ~v168 & 1, 0, v120);
      (*v212)(v78, v213);
      v131 = v158;
      goto LABEL_47;
    }

    v128 = *(*(v124 + 56) + 8 * v126);
    v129 = v125 | v100 | (v128 == 0);
    v130 = v128;
    v131 = v130;
    if (v129)
    {
      goto LABEL_28;
    }

    v132 = [v130 relationship];
    if (v132)
    {
      v133 = v132;
      v134 = sub_267EAEBF4();
      v136 = v135;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v137 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v137, qword_280240FB0);

      v138 = sub_267EF89F8();
      v139 = sub_267EF95D8();

      if (OUTLINED_FUNCTION_181_2())
      {
        OUTLINED_FUNCTION_48();
        v227 = OUTLINED_FUNCTION_99_10();
        dword_28022C758 = v205;
        *algn_28022C75C = sub_267BA33E8(v134, v136, &v227);
        _os_log_impl(&dword_267B93000, v138, v139, "#SendMessageConfirmIntentFlowStrategy Using relationship name %s", &dword_28022C758, 0xCu);
        OUTLINED_FUNCTION_26_4();
        OUTLINED_FUNCTION_32_0();
      }

      v140 = sub_267EF7758();
      OUTLINED_FUNCTION_97(v140);
      sub_267EF7748();
      OUTLINED_FUNCTION_170_4(&a11);
      OUTLINED_FUNCTION_50_3();
      sub_267EF90F8();

      sub_267EF79B8();
      OUTLINED_FUNCTION_2_44();
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v141, v142, v143, v144);
      sub_267EF76F8();

      sub_267B9F98C(v134, &unk_28022AE30, &qword_267EFC0B0);
      sub_267EF7708();

      sub_267EF7738();
      OUTLINED_FUNCTION_156_2();
    }

    else
    {
      v171 = [v131 nameComponents];
      v172 = v207;
      v173 = v206;
      if (v171)
      {
        v174 = v171;
        sub_267EF2A18();

        v175 = 0;
      }

      else
      {
        v175 = 1;
      }

      v176 = sub_267EF2A58();
      __swift_storeEnumTagSinglePayload(v172, v175, 1, v176);
      v177 = OUTLINED_FUNCTION_37_1();
      v78 = &unk_267EFD990;
      sub_267BBE184(v177, v178, &unk_28022BCA0, &unk_267EFD990);
      if (__swift_getEnumTagSinglePayload(v173, 1, v176))
      {
        v179 = OUTLINED_FUNCTION_17_4();
        sub_267B9F98C(v179, v180, &unk_267EFD990);
        goto LABEL_28;
      }

      v181 = sub_267EF2A28();
      v183 = v182;
      v184 = OUTLINED_FUNCTION_17_4();
      sub_267B9F98C(v184, v185, &unk_267EFD990);
      if (!v183)
      {
        goto LABEL_28;
      }

      v210 = v181;
      v186 = sub_267EF7758();
      OUTLINED_FUNCTION_97(v186);
      sub_267EF7748();
      v187 = [v120 nameComponents];
      if (v187)
      {
        v188 = v187;
        OUTLINED_FUNCTION_170_4(&v229);
        sub_267EF2A18();

        v189 = 0;
      }

      else
      {
        v189 = 1;
        v78 = v203;
      }

      __swift_storeEnumTagSinglePayload(v78, v189, 1, v176);
      v190 = v78;
      v191 = v204;
      v192 = &unk_267EFD990;
      sub_267BBE184(v190, v204, &unk_28022BCA0, &unk_267EFD990);
      if (__swift_getEnumTagSinglePayload(v191, 1, v176))
      {
        v193 = OUTLINED_FUNCTION_65_5();
        sub_267B9F98C(v193, v194, &unk_267EFD990);
      }

      else
      {
        v192 = v191;
        sub_267EF2A28();
        v196 = v195;
        sub_267B9F98C(v191, &unk_28022BCA0, &unk_267EFD990);
        if (v196)
        {
        }
      }

      OUTLINED_FUNCTION_170_4(&v228);
      sub_267EF90F8();

      sub_267EF79B8();
      OUTLINED_FUNCTION_2_44();
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v197, v198, v199, v200);
      sub_267EF76B8();
      OUTLINED_FUNCTION_53_0();

      sub_267B9F98C(v192, &unk_28022AE30, &qword_267EFC0B0);
      sub_267EF7738();
      OUTLINED_FUNCTION_156_2();
    }

LABEL_47:

    MEMORY[0x26D608F90](v169);
    v170 = *((v230 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v78 = v222;
    if (*((v230 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v170 >> 1)
    {
      OUTLINED_FUNCTION_8_2(v170);
      sub_267EF9328();
    }

    OUTLINED_FUNCTION_44_0();
    sub_267EF9368();

    ++v76;
  }

  __break(1u);
LABEL_69:
  __break(1u);
}

uint64_t sub_267EDA788()
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0);
  OUTLINED_FUNCTION_18(v2);
  v4 = (*(v3 + 80) + 57) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_267BAEBEC;
  OUTLINED_FUNCTION_40();

  return sub_267ED7CD8(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_267EDA88C()
{
  OUTLINED_FUNCTION_62();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_267BAEBEC;
  v8 = OUTLINED_FUNCTION_26_0();

  return sub_267ED4418(v8, v9, v3, v4, v5, v6);
}

uint64_t sub_267EDA948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_267EDA984@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267C08F3C(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_267EDA9C8(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0 || (v5 = *v1, result = swift_isUniquelyReferenced_nonNull(), *v1 = v5, (result & 1) == 0))
  {
LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_267C74A44(v4 - v14, v2);
      if (v4 >= v14)
      {
        v15 = result;
        v16 = v1[1] + 8 * v14;
        sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
        swift_arrayInitWithCopy();
        v5 = sub_267ED99E4(v15, v14);
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v23 = *v1;
        result = swift_unknownObjectRelease();
        v1[1] = v18;
        v1[2] = v20;
        v1[3] = v22;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v1[1];
  sub_267EF9ED8();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + 8 * v6 + 8 * v7 != v9 + 8 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_13:
      *v1 = v5;
      return result;
    }

    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_267EDAB3C(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = result;
  result = sub_267EDAF90((a4 >> 1) - a3);
  v11 = v4[2];
  v10 = v4[3];
  v12 = (v10 >> 1) - v11;
  if (__OFSUB__(v10 >> 1, v11))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = v4[1] + 8 * v11 + 8 * v12;
  if ((v10 & 1) == 0)
  {
LABEL_8:
    v17 = v12;
    goto LABEL_10;
  }

  v14 = *v4;
  sub_267EF9ED8();
  swift_unknownObjectRetain();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v15 + 16);
  if (v13 != v15 + 8 * v16 + 32)
  {

    goto LABEL_8;
  }

  v18 = *(v15 + 24);

  v19 = (v18 >> 1) - v16;
  v20 = __OFADD__(v12, v19);
  v17 = v12 + v19;
  if (v20)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_10:
  v21 = v17 - v12;
  if (__OFSUB__(v17, v12))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_18;
    }

    goto LABEL_26;
  }

  if (v21 < v6)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  swift_arrayInitWithCopy();
  if (v6 > 0)
  {
    result = (v12 + v6);
    if (__OFADD__(v12, v6))
    {
LABEL_29:
      __break(1u);
      return result;
    }

    sub_267EDB098(result);
  }

LABEL_18:
  if (v6 == v21)
  {
    v23[0] = v9;
    v23[1] = a2;
    v23[2] = a3;
    v23[3] = a4;
    v23[4] = v5;
    return sub_267EDB150(v23);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_267EDAD14(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = v4;
  v37 = v15;
  v18 = v9 + 32 + 8 * a2;
  result = sub_267EDB528(v7);
  v36 = v9;
  if (result)
  {
    v19 = result;
    v34 = v13;
    v35 = v4[2];
    v20 = v4[1] + 8 * v35;
    v21 = result + 32;
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    swift_arrayDestroy();
    sub_267C74A34(v20, a2);
    swift_arrayDestroy();
    a4(v18, a3);
    sub_267C74A34(v20 + 8 * a2 + 8 * v37, v34);
    v22 = v21 + 8 * *(v19 + 16) - (v20 + 8 * v7);
    swift_arrayDestroy();
    *(v19 + 16) = 0;
    v23 = v35;

LABEL_15:
    v30 = *v16;

    swift_unknownObjectRelease();
    result = sub_267ED99E4(v36, v23);
    *v16 = result;
    v16[1] = v31;
    v16[2] = v32;
    v16[3] = v33;
    return result;
  }

  v23 = v4[2];
  v24 = v23 + a2;
  if (__OFADD__(v23, a2))
  {
    goto LABEL_21;
  }

  v25 = a2;
  if (v24 < v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v24, v23))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = a4;
  v27 = v16[1];
  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  swift_arrayInitWithCopy();
  result = v26(v9 + 32 + 8 * v25, a3);
  v28 = v24 + v37;
  if (__OFADD__(v24, v37))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = v16[3] >> 1;
  if (v29 < v28)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!__OFSUB__(v29, v28))
  {
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_267EDAF90(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = *v1;
  v7 = v1[1];
  sub_267EF9ED8();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(v8 + 16);
  if (v7 + 8 * v3 + 8 * v4 != v8 + 8 * v9 + 32)
  {

LABEL_7:
    v10 = v4;
    goto LABEL_9;
  }

  v11 = *(v8 + 24);

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v4, v12);
  v10 = v4 + v12;
  if (v13)
  {
LABEL_20:
    __break(1u);
    return result;
  }

LABEL_9:
  result = v4 + v5;
  if (__OFADD__(v4, v5))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10 < result)
  {
    if (v10 + 0x4000000000000000 >= 0)
    {
      v14 = 2 * v10;
      if (v14 > result)
      {
        result = v14;
      }

      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_14:

  return sub_267EDA9C8(result);
}

uint64_t sub_267EDB098(uint64_t result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  v8 = *v1;
  sub_267EF9ED8();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v9 = *(result + 16);
  v5 = __OFADD__(v9, v7);
  v10 = v9 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v10;

  v11 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v1[3] = v3 & 1 | (2 * v11);
  return result;
}

void *sub_267EDB150(void *result)
{
  v2 = v1[2];
  v3 = v1[3] >> 1;
  v4 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = result[3];
  v5 = result[4];
  v26 = result;
  if (v5 == v6 >> 1)
  {
    return sub_267B9F98C(v26, &qword_28022D218, &qword_267F0EE58);
  }

  v7 = result[2];
  v8 = v6 >> 1;
  if (v5 >= v7 && v5 < v8)
  {
    v10 = result[1];
    v11 = v5 + 1;
    v12 = *(v10 + 8 * v5);
    result = v12;
    v27 = v1;
    while (!__OFADD__(v4, 1))
    {
      v28 = sub_267EDB34C(v4, v4 + 1, *v1, v1[1], v1[2], v1[3]);
      v13 = sub_267EDB50C();
      sub_267EDAD14(&v28, v4, 0, v13);

      v15 = v27[2];
      v14 = v27[3];
      v16 = (v14 >> 1) - v15;
      if (__OFSUB__(v14 >> 1, v15))
      {
        goto LABEL_30;
      }

      v17 = v27[1] + 8 * v15;
      if (v14)
      {
        v18 = *v27;
        sub_267EF9ED8();
        swift_unknownObjectRetain();
        v19 = swift_dynamicCastClass();
        if (!v19)
        {
          swift_unknownObjectRelease();
          v19 = MEMORY[0x277D84F90];
        }

        v20 = *(v19 + 16);
        if (v17 + 8 * v16 == v19 + 8 * v20 + 32)
        {
          v21 = *(v19 + 24);

          v22 = (v21 >> 1) - v20;
          v23 = __OFADD__(v16, v22);
          v16 += v22;
          if (v23)
          {
            goto LABEL_31;
          }
        }

        else
        {
        }
      }

      v24 = v11;
      while (v4 < v16)
      {
        *(v17 + 8 * v4) = v12;
        if (v8 == v24)
        {
          v12 = 0;
          ++v4;
          v24 = v8;
          break;
        }

        if (v11 < v7 || v24 >= v8)
        {
          __break(1u);
          goto LABEL_29;
        }

        v12 = *(v10 + 8 * v24);
        result = v12;
        ++v4;
        ++v24;
      }

      v1 = v27;
      result = sub_267EDB098(v4);
      v11 = v24;
      if (!v12)
      {
        return sub_267B9F98C(v26, &qword_28022D218, &qword_267F0EE58);
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
  return result;
}

void *sub_267EDB34C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_267EF9ED8();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 8 * a5 + 8 * v8;
  if (v13 == v11 + 8 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 8 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 8 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_267C74A44(v6, v25);
}

uint64_t sub_267EDB528(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  if (!isUniquelyReferenced_nonNull)
  {
    return 0;
  }

  v7 = v1[2];
  v6 = v1[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = *v1;
  v10 = v1[1] + 8 * v7;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_267EF9ED8();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  if (v10 + 8 * v8 != v11 + 8 * v12 + 32)
  {

LABEL_8:
    v13 = v8;
    goto LABEL_10;
  }

  v14 = *(v11 + 24);

  v16 = (v14 >> 1) - v12;
  v17 = __OFADD__(v8, v16);
  v13 = v8 + v16;
  if (!v17)
  {
LABEL_10:
    if (v13 < a1)
    {
      return 0;
    }

    sub_267EF9ED8();
    swift_unknownObjectRetain();
    a1 = swift_dynamicCastClass();
    if (!a1)
    {
      swift_unknownObjectRelease();
      a1 = MEMORY[0x277D84F90];
    }

    v18 = (v10 - a1 - 32) / 8;
    isUniquelyReferenced_nonNull = v8 + v18;
    if (!__OFADD__(v8, v18))
    {
      v5 = *(a1 + 16);
      if (isUniquelyReferenced_nonNull >= v5)
      {
        return a1;
      }

LABEL_19:
      sub_267C738B8(isUniquelyReferenced_nonNull, v5, 0);
      return a1;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_267EDB680(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267EDB6D8(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_130_2()
{
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[17];
}

void OUTLINED_FUNCTION_135_2(uint64_t a1@<X8>)
{
  v3 = *(a1 + v1);
  *(v2 + 312) = v3;
  v4 = *(v3 + 24);
  *(v2 + 320) = *(v3 + 32);
}

__n128 *OUTLINED_FUNCTION_152_4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_163_3()
{
  v2 = v0[44];
  v3 = v0[41];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[34];
}

uint64_t OUTLINED_FUNCTION_164_2()
{
  v2 = v0[44];
  v3 = v0[41];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[34];
}

void OUTLINED_FUNCTION_167_2()
{
  v3 = *(v0 + 280);
  v4 = *(v0 + 240);
}

void OUTLINED_FUNCTION_168_4()
{
}

uint64_t OUTLINED_FUNCTION_174_1()
{
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[65];
  v7 = v0[61];
  v6 = v0[62];
  v8 = v0[60];
  v9 = v0[57];
}

uint64_t OUTLINED_FUNCTION_180_2(uint64_t a1, uint64_t a2)
{
  *(v2 + 328) = __swift_project_value_buffer(a1, a2);

  return sub_267EF89F8();
}

BOOL OUTLINED_FUNCTION_181_2()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_183_1()
{
  v2 = *(v0 - 272);

  return sub_267EF89F8();
}

uint64_t OUTLINED_FUNCTION_184_2()
{
  v2 = *(v0 + 112);

  return sub_267EF8A08();
}

uint64_t OUTLINED_FUNCTION_185_2()
{
}

uint64_t OUTLINED_FUNCTION_187_2()
{
  v2 = *(v0 + 128);
}

void OUTLINED_FUNCTION_188_2()
{
  v2 = *(v0 + 152);
  v3 = *(v0 + 96);
}

__n128 OUTLINED_FUNCTION_191_1(__n128 *a1)
{
  result = *(v1 - 192);
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_194_1()
{
  *(v4 + 16) = v3;
  v5 = v4 + 16 * v0;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_203_0()
{
  v1 = *(v0[34] + 56);
  v0[39] = v1;
  v2 = *(v1 + 288);
  v0[40] = *(v1 + 296);
}

uint64_t OUTLINED_FUNCTION_205_0()
{

  return sub_267B9A5E8((v0 + 96), v0 + 56);
}

uint64_t OUTLINED_FUNCTION_206_0()
{

  return sub_267B9A5E8((v0 + 176), v0 + 136);
}

uint64_t OUTLINED_FUNCTION_207_0()
{
  v2 = *(v0 + 466);

  return sub_267C7C28C(v2);
}

id OUTLINED_FUNCTION_209(id a1)
{
  v1[27] = a1;
  v3 = v1[38];
  v4 = v1[36];

  return a1;
}

uint64_t OUTLINED_FUNCTION_212_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_213_1()
{
  v2 = *(v0 + 416);
  v3 = *(v0 + 328);

  return sub_267EF89F8();
}

uint64_t OUTLINED_FUNCTION_214_0()
{

  return sub_267EF3B08();
}

void OUTLINED_FUNCTION_215_1()
{

  sub_267ECE45C();
}

uint64_t OUTLINED_FUNCTION_225_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_241_1()
{
  result = *(v0 + 280);
  v2 = *(v0 + 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_250_0()
{

  return sub_267EF4C98();
}

uint64_t OUTLINED_FUNCTION_252_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return MEMORY[0x2821BB850](a1, a2, a3, a4, a5, a6, a7);
}

void OUTLINED_FUNCTION_253_1()
{
  v4 = v0[37];
  v3 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[30];
  v8 = v0[28];
}

uint64_t OUTLINED_FUNCTION_256_0()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_257_1(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  return sub_267C6AD4C(va1, va, v2, v3);
}

uint64_t OUTLINED_FUNCTION_258_1()
{

  return sub_267ECEB80(v2, v0, v1, v3);
}

uint64_t OUTLINED_FUNCTION_260_1()
{
  v2 = *(v0 + 168);

  return sub_267EF4198();
}

void OUTLINED_FUNCTION_262_1()
{
}

uint64_t OUTLINED_FUNCTION_263_1()
{
  v2 = *(v0 + 192);

  return sub_267EF2BE8();
}

uint64_t sub_267EDBC50(char a1)
{
  result = 28532;
  switch(a1)
  {
    case 1:
      result = 1836020326;
      break;
    case 2:
      result = 0x6563616C706572;
      break;
    case 3:
      result = 0x65766F6D6572;
      break;
    case 4:
      result = 0x65726F6E6769;
      break;
    case 5:
      result = 7301239;
      break;
    case 6:
      result = 1953391987;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267EDBCF0(char a1)
{
  result = 0x6567617373656DLL;
  switch(a1)
  {
    case 1:
      v3 = 1768191329;
      goto LABEL_6;
    case 2:
      v4 = 0x5F6567616D69;
      goto LABEL_7;
    case 3:
      v3 = 1701079414;
LABEL_6:
      v4 = v3 & 0xFFFF0000FFFFFFFFLL | 0x5F6F00000000;
LABEL_7:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 4:
      result = 0x736567617373656DLL;
      break;
    case 5:
      result = 0x746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

void sub_267EDBD98(void *a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v4 = v3;
  v204 = a3;
  v205 = a2;
  v6 = sub_267EF7008();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v204 - v12;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v14 = sub_267EF8A08();
  v15 = __swift_project_value_buffer(v14, qword_280240FB0);
  v16 = sub_267EF89F8();
  v17 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v17))
  {
    v18 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_59(v18);
    OUTLINED_FUNCTION_23_7(&dword_267B93000, v19, v17, "SendMessageUnsupportedUseCaseCheckFlowStrategy# Checking support for request");
    OUTLINED_FUNCTION_42_0();
  }

  v20 = a1[3];
  v21 = a1[4];
  OUTLINED_FUNCTION_11_55();
  v22 = *(v21 + 416);
  v23 = OUTLINED_FUNCTION_43();
  v25 = v24(v23, v21);
  if (v25 != 28)
  {
    sub_267D6D160(v25);
    OUTLINED_FUNCTION_20_38();
    v27 = v27 && v26 == 0xE700000000000000;
    if (v27)
    {
    }

    else
    {
      sub_267EF9EA8();
      OUTLINED_FUNCTION_20_33();
    }

    v208 = &type metadata for Features;
    v209 = sub_267BAFCAC();
    LOBYTE(v207[0]) = 1;
    v28 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0(v207);
    if ((v28 & 1) == 0)
    {
      v55 = sub_267EF89F8();
      v56 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_7_2(v56))
      {
        v57 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_59(v57);
        OUTLINED_FUNCTION_23_7(&dword_267B93000, v58, a1, "SendSupportCheck# necessary feature flag to process verb=unshare requests not enabled, support for request is not implemented");
        OUTLINED_FUNCTION_42_0();
      }

      sub_267E09FE8();
      v45 = OUTLINED_FUNCTION_61_1();
      v46 = xmmword_267F0A870;
      goto LABEL_116;
    }
  }

  v29 = a1[3];
  v30 = a1[4];
  OUTLINED_FUNCTION_11_55();
  v31 = *(v30 + 392);
  v32 = OUTLINED_FUNCTION_43();
  v34 = v33(v32, v30);
  if (v34 != 6)
  {
    sub_267D6CE3C(v34);
    OUTLINED_FUNCTION_20_38();
    if (v27 && v35 == 0xED00006567617373)
    {
    }

    else
    {
      sub_267EF9EA8();
      OUTLINED_FUNCTION_20_33();
    }

    v37 = v4[6];
    __swift_project_boxed_opaque_existential_0(v4 + 2, v4[5]);
    OUTLINED_FUNCTION_43();
    sub_267EF3B78();
    (*(v7 + 104))(v11, *MEMORY[0x277D61C48], v6);
    v38 = sub_267C28F38(v13, v11);
    v39 = *(v7 + 8);
    v39(v11, v6);
    v39(v13, v6);
    if (v38)
    {
      v40 = sub_267EF89F8();
      v41 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_7_2(v41))
      {
        v42 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_59(v42);
        OUTLINED_FUNCTION_23_7(&dword_267B93000, v43, a1, "SendSupportCheck# Unable to send audio messages with manual input");
        OUTLINED_FUNCTION_42_0();
      }

      sub_267E09FE8();
      v45 = OUTLINED_FUNCTION_61_1();
      v46 = xmmword_267F083C0;
      goto LABEL_116;
    }
  }

  v47 = v4[5];
  v48 = v4[6];
  OUTLINED_FUNCTION_2_75(v4 + 2);
  if ((sub_267DBF8D8() & 1) == 0)
  {
    OUTLINED_FUNCTION_9_60();
    v49 = *(v11 + 52);
    v50 = OUTLINED_FUNCTION_4_75();
    v52 = v51(v50);
    if (v52 != 28)
    {
      v11 = v52;
      sub_267D6D160(v52);
      OUTLINED_FUNCTION_20_38();
      if (v27 && v53 == 0xE400000000000000)
      {
      }

      else
      {
        sub_267EF9EA8();
        OUTLINED_FUNCTION_20_33();
      }

      v47 = a1[3];
      v59 = a1[4];
      v60 = OUTLINED_FUNCTION_2_75(a1);
      v62 = sub_267E583B0(v60, v61);
      if (v62)
      {
        v11 = v62;
        v47 = a1[3];
        v63 = a1[4];
        OUTLINED_FUNCTION_11_55();
        v64 = *(v63 + 448);
        v65 = OUTLINED_FUNCTION_43();
        v67 = v66(v65, v63);
        LOBYTE(v47) = v67;
        v68 = sub_267DDBCBC(v67);

        if (v68)
        {
          v69 = sub_267EF89F8();
          v70 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_7_2(v70))
          {
            v71 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_59(v71);
            v73 = "SendSupportCheck# Unable to send/share requests on mac with intent containing definite reference";
LABEL_114:
            OUTLINED_FUNCTION_23_7(&dword_267B93000, v72, a1, v73);
            OUTLINED_FUNCTION_42_0();
            goto LABEL_115;
          }

          goto LABEL_115;
        }
      }
    }
  }

  OUTLINED_FUNCTION_9_60();
  v74 = *(v11 + 60);
  v75 = OUTLINED_FUNCTION_4_75();
  v77 = v76(v75);
  OUTLINED_FUNCTION_9_60();
  v78 = *(v11 + 49);
  v79 = OUTLINED_FUNCTION_4_75();
  v81 = v80(v79);
  if (v81 == 6)
  {
    goto LABEL_40;
  }

  v11 = v81;
  LOBYTE(v47) = 105;
  sub_267D6CE3C(v81);
  if (v93 != 0x656D5F6567616D69 || v92 != 0xED00006567617373)
  {
    LOBYTE(v47) = OUTLINED_FUNCTION_24_45();

    if (v47)
    {
      goto LABEL_77;
    }

    LOBYTE(v47) = 118;
    sub_267D6CE3C(v11);
    if (v96 != 0x656D5F6F65646976 || v95 != 0xED00006567617373)
    {
      LOBYTE(v47) = OUTLINED_FUNCTION_24_45();

      if (!(v77 & 1 | ((v47 & 1) == 0)))
      {
        goto LABEL_79;
      }

      goto LABEL_78;
    }
  }

LABEL_77:
  if ((v77 & 1) == 0)
  {
LABEL_79:
    v116 = sub_267EF89F8();
    v117 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v207[0] = v119;
      *v118 = 136315138;
      v120 = sub_267EDBCF0(v11);
      v122 = sub_267BA33E8(v120, v121, v207);

      *(v118 + 4) = v122;
      OUTLINED_FUNCTION_27_37(&dword_267B93000, v123, v124, "SendSupportCheck# Unable to send %s");
      __swift_destroy_boxed_opaque_existential_0(v119);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_32_0();
    }

    v125 = v205;
    sub_267E09FE8();
    v126 = OUTLINED_FUNCTION_61_1();
    v45 = v126;
    *v127 = v11;
    v127[1] = 0;
    goto LABEL_82;
  }

LABEL_78:
  if (sub_267EDCC70(v11, v77 & 1))
  {
    goto LABEL_79;
  }

LABEL_40:
  OUTLINED_FUNCTION_9_60();
  v82 = *(v11 + 55);
  v83 = OUTLINED_FUNCTION_4_75();
  v85 = v84(v83);
  if (v85 == 17)
  {
    goto LABEL_41;
  }

  v11 = v85;
  v98 = v4[5];
  v99 = v4[6];
  OUTLINED_FUNCTION_2_75(v4 + 2);
  if (sub_267DBF878())
  {
    v47 = a1[3];
    v100 = a1[4];
    OUTLINED_FUNCTION_11_55();
    v101 = *(v100 + 368);
    v102 = OUTLINED_FUNCTION_43();
    v103(v102, v100);
    if (!v104)
    {
      goto LABEL_41;
    }

    v47 = a1[3];
    v105 = a1[4];
    OUTLINED_FUNCTION_11_55();
    v106 = *(v105 + 368);
    v107 = OUTLINED_FUNCTION_43();
    v109 = v108(v107, v105);
    if (v110)
    {
      if (v109 == 0xD000000000000013 && v110 == 0x8000000267F10280)
      {

        goto LABEL_41;
      }

      sub_267EF9EA8();
      OUTLINED_FUNCTION_20_33();
      if (v47)
      {
        goto LABEL_41;
      }
    }
  }

  sub_267D6CFAC(v11);
  OUTLINED_FUNCTION_20_38();
  v113 = v27 && v112 == 0xE500000000000000;
  if (v113 || ((OUTLINED_FUNCTION_26_39(), OUTLINED_FUNCTION_20_33(), LOBYTE(v47) = 118, sub_267D6CFAC(v11), OUTLINED_FUNCTION_20_38(), v27) ? (v115 = v114 == 0xE500000000000000) : (v115 = 0), v115))
  {

    sub_267B9AFEC(a1, v207);
    v128 = v15;
    v129 = sub_267EF89F8();
    v130 = sub_267EF95D8();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      *v131 = 136315394;
      v132 = sub_267D6CFAC(v11);
      sub_267BA33E8(v132, v133, &v206);
      OUTLINED_FUNCTION_43();

      *(v131 + 4) = v128;
      *(v131 + 12) = 2080;
      v134 = v209;
      __swift_project_boxed_opaque_existential_0(v207, v208);
      v135 = *(v134 + 368);
      v136 = OUTLINED_FUNCTION_43();
      v138 = v137(v136, v134);
      if (v139)
      {
        v140 = v138;
      }

      else
      {
        v140 = 7104878;
      }

      if (v139)
      {
        v141 = v139;
      }

      else
      {
        v141 = 0xE300000000000000;
      }

      __swift_destroy_boxed_opaque_existential_0(v207);
      v142 = sub_267BA33E8(v140, v141, &v206);

      *(v131 + 14) = v142;
      _os_log_impl(&dword_267B93000, v129, v130, "SendSupportCheck# Unable to send %s with app= %s", v131, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v207);
    }

    sub_267EF7C38();
    v179 = a1[3];
    v180 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v179);
    (*(v180 + 368))(v179, v180);
    v181 = sub_267EF7C08() | 0x4000000000000000;
    sub_267E09FE8();
    v45 = OUTLINED_FUNCTION_61_1();
    *v182 = v11;
    v182[1] = v181;
    goto LABEL_117;
  }

  OUTLINED_FUNCTION_26_39();
  OUTLINED_FUNCTION_20_33();
LABEL_41:
  OUTLINED_FUNCTION_9_60();
  v86 = *(v11 + 52);
  v87 = OUTLINED_FUNCTION_4_75();
  v89 = v88(v87);
  if (v89 == 28)
  {
    goto LABEL_93;
  }

  if (sub_267D6D160(v89) == 0x6572616873 && v90 == 0xE500000000000000)
  {
  }

  else
  {
    OUTLINED_FUNCTION_25_46();
    OUTLINED_FUNCTION_20_33();
    if ((v47 & 1) == 0)
    {
      goto LABEL_93;
    }
  }

  v143 = v4[5];
  v144 = v4[6];
  OUTLINED_FUNCTION_2_75(v4 + 2);
  if ((sub_267DBF8D8() & 1) == 0)
  {
    v69 = sub_267EF89F8();
    v192 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_7_2(v192))
    {
      v193 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_59(v193);
      v73 = "SendSupportCheck# Unable to process .share utterances";
      goto LABEL_114;
    }

LABEL_115:

    sub_267E09FE8();
    v45 = OUTLINED_FUNCTION_61_1();
    v46 = xmmword_267F0EED0;
    goto LABEL_116;
  }

LABEL_93:
  v145 = a1[3];
  v146 = a1[4];
  OUTLINED_FUNCTION_11_55();
  v147 = *(v146 + 352);
  v148 = OUTLINED_FUNCTION_43();
  v150 = v149(v148, v146);
  if ((v150 - 14) > 0x14u)
  {
    v166 = a1[3];
    v167 = a1[4];
    v168 = OUTLINED_FUNCTION_2_75(a1);
    if (sub_267E583B0(v168, v169))
    {
      sub_267DD2D80();
      v171 = v170;

      if (v171)
      {

        sub_267E09FE8();
        v45 = OUTLINED_FUNCTION_61_1();
        v46 = xmmword_267F0EEE0;
LABEL_116:
        *v44 = v46;
LABEL_117:
        OUTLINED_FUNCTION_23_36();
        v195(v194);
        goto LABEL_118;
      }
    }

    v172 = a1[3];
    v173 = a1[4];
    v174 = OUTLINED_FUNCTION_2_75(a1);
    if (sub_267E583B0(v174, v175))
    {
      if (sub_267DD4A44())
      {
        v208 = &type metadata for Features;
        v209 = sub_267BAFCAC();
        LOBYTE(v207[0]) = 20;
        v176 = sub_267EF5128();
        __swift_destroy_boxed_opaque_existential_0(v207);
        if ((v176 & 1) == 0)
        {
          v196 = sub_267EF89F8();
          v197 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_5_2(v197))
          {
            v198 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_59(v198);
            OUTLINED_FUNCTION_23_7(&dword_267B93000, v199, v197, "SendSupportCheck# Unsupported scheduled send request");
            OUTLINED_FUNCTION_42_0();
          }

          sub_267E09FE8();
          v200 = OUTLINED_FUNCTION_61_1();
          *v201 = xmmword_267F0EEF0;
          OUTLINED_FUNCTION_23_36();
          v203(v202);

          return;
        }
      }
    }

    OUTLINED_FUNCTION_23_36();
    v178(v177);
    return;
  }

  v151 = v150;
  v152 = sub_267EDCC00(v150);
  v154 = v153;
  v155 = sub_267EF89F8();
  v156 = sub_267EF95D8();
  v157 = OUTLINED_FUNCTION_5_2(v156);
  if (v152 >> 5 == 0xFFFFFFFF && (v154 & 0xF000000000000007) == 0)
  {
    if (v157)
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v207[0] = v159;
      *v158 = 136315138;
      sub_267D6C8B0(v151);
      v162 = sub_267BA33E8(v160, v161, v207);

      *(v158 + 4) = v162;
      OUTLINED_FUNCTION_27_37(&dword_267B93000, v163, v164, "SendSupportCheck# Unsupported effect %s");
      __swift_destroy_boxed_opaque_existential_0(v159);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_32_0();
    }

    v125 = v205;
    sub_267E09FE8();
    v126 = OUTLINED_FUNCTION_61_1();
    v45 = v126;
    *v165 = xmmword_267F0EF00;
LABEL_82:
    v125(v126, 0);
LABEL_118:

    return;
  }

  if (v157)
  {
    v183 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v207[0] = v184;
    *v183 = 136315138;
    sub_267D6C8B0(v151);
    v187 = sub_267BA33E8(v185, v186, v207);

    *(v183 + 4) = v187;
    _os_log_impl(&dword_267B93000, v155, v156, "SendSupportCheck# Can't send %s", v183, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v184);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_32_0();
  }

  sub_267E09FE8();
  v188 = OUTLINED_FUNCTION_61_1();
  *v189 = v152;
  v189[1] = v154;
  sub_267EDD6BC(v152, v154);
  OUTLINED_FUNCTION_23_36();
  v191(v190);

  sub_267EDD6D4(v152, v154);
}

uint64_t sub_267EDCC00(char a1)
{
  if (a1 == 14)
  {
    return 1;
  }

  v1 = 4;
  v2 = 3;
  v3 = 0x1FFFFFFFE0;
  if (a1 == 15)
  {
    v3 = 2;
  }

  if (a1 != 30)
  {
    v2 = v3;
  }

  if (a1 != 20)
  {
    v1 = v2;
  }

  if (a1 == 31)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_267EDCC70(char a1, char a2)
{
  switch(a1)
  {
    case 1:

      goto LABEL_4;
    default:
      v4 = sub_267EF9EA8();

      v5 = 0;
      if (v4)
      {
LABEL_4:
        v6 = v2[6];
        __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
        if (sub_267EF3BE8())
        {
          v5 = 1;
        }

        else
        {
          v7 = v2[6];
          __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
          v5 = sub_267DBF878() & a2;
        }
      }

      return v5 & 1;
  }
}

uint64_t sub_267EDCDD4(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v80 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v80 - v13);
  v87 = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if (!swift_dynamicCast())
  {
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_267EF9B68();
    MEMORY[0x26D608E60](0xD000000000000015, 0x8000000267F18A80);
    v87 = a1;
    sub_267EF9C58();
    v27 = v81;
    v28 = v82;
    sub_267C266B0();
    v29 = OUTLINED_FUNCTION_61_1();
    *v30 = v27;
    v30[1] = v28;
    v81 = v29;
    LOBYTE(v86) = 1;
    a2(&v81);
    v31 = &unk_28022A480;
    v32 = &unk_267F029F0;
    v33 = &v81;
    return sub_267B9FF34(v33, v31, v32);
  }

  v16 = v81;
  v17 = v82;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v3;
  if (!(v17 >> 62))
  {
    v34 = *(v3 + 56);
    sub_267EDBCF0(v16);

    sub_267EF90F8();

    sub_267EF79B8();
    v35 = OUTLINED_FUNCTION_21_38();
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v36);
LABEL_7:
    v37 = OUTLINED_FUNCTION_3_87();
    sub_267E4BABC(v37, 0, v38, v18, v39, v40, v41, v42, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
LABEL_8:

    goto LABEL_9;
  }

  if (v17 >> 62 == 1)
  {
    v19 = *(v3 + 56);
    sub_267D6CFAC(v16);

    sub_267EF90F8();

    sub_267EF79B8();
    v20 = OUTLINED_FUNCTION_21_38();
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
    type metadata accessor for MessagesApp(0);

    sub_267EC814C();
    OUTLINED_FUNCTION_0_80();
    sub_267E4BABC(v14, a3, v26, v18, v22, v23, v24, v25, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);

    sub_267EDD6A4(v16, v17);
LABEL_9:
    v31 = &unk_28022AE30;
    v32 = &qword_267EFC0B0;
    v33 = v14;
    return sub_267B9FF34(v33, v31, v32);
  }

  switch(v16)
  {
    case 1:
      v61 = *(v3 + 56);

      OUTLINED_FUNCTION_1_90();
      sub_267E4A1C4();

    case 2:
      OUTLINED_FUNCTION_28_38();
      OUTLINED_FUNCTION_15_46();
      v62 = sub_267EF7118();
      OUTLINED_FUNCTION_5_73(v10, v63, v64, v62);

      OUTLINED_FUNCTION_13_52();
      OUTLINED_FUNCTION_0_80();
      OUTLINED_FUNCTION_8_62();
      sub_267E4A1EC();
      goto LABEL_21;
    case 3:
      OUTLINED_FUNCTION_28_38();
      OUTLINED_FUNCTION_15_46();
      v53 = sub_267EF7118();
      OUTLINED_FUNCTION_5_73(v10, v54, v55, v53);

      OUTLINED_FUNCTION_13_52();
      OUTLINED_FUNCTION_0_80();
      OUTLINED_FUNCTION_8_62();
      sub_267E4AC8C();
      goto LABEL_21;
    case 4:
      OUTLINED_FUNCTION_28_38();
      OUTLINED_FUNCTION_15_46();
      v45 = sub_267EF7118();
      OUTLINED_FUNCTION_5_73(v10, v46, v47, v45);

      OUTLINED_FUNCTION_13_52();
      OUTLINED_FUNCTION_0_80();
      OUTLINED_FUNCTION_8_62();
      sub_267E4AFA0();
      goto LABEL_21;
    case 5:
      OUTLINED_FUNCTION_28_38();
      OUTLINED_FUNCTION_15_46();
      v65 = sub_267EF7118();
      OUTLINED_FUNCTION_5_73(v10, v66, v67, v65);

      OUTLINED_FUNCTION_13_52();
      OUTLINED_FUNCTION_0_80();
      OUTLINED_FUNCTION_8_62();
      sub_267E4B044();
LABEL_21:

      break;
    case 7:
      v69 = *(v3 + 56);
      sub_267EF79B8();
      v70 = OUTLINED_FUNCTION_21_38();
      OUTLINED_FUNCTION_5_73(v70, v71, v72, v73);

      v74 = OUTLINED_FUNCTION_3_87();
      sub_267E4B2A8(v74, 0, v75, v18, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
      goto LABEL_8;
    case 9:
      v56 = *(v3 + 56);
      sub_267EF79B8();
      v57 = OUTLINED_FUNCTION_21_38();
      OUTLINED_FUNCTION_5_73(v57, v58, v59, v60);

      sub_267E4BC68();
      goto LABEL_8;
    case 10:
      v68 = *(v3 + 56);

      OUTLINED_FUNCTION_1_90();
      sub_267E4B258();
      break;
    case 11:
      v48 = *(v3 + 56);
      sub_267EF79B8();
      v49 = OUTLINED_FUNCTION_21_38();
      OUTLINED_FUNCTION_5_73(v49, v50, v51, v52);

      goto LABEL_7;
    default:
      v44 = *(v3 + 56);

      OUTLINED_FUNCTION_1_90();
      sub_267E4B54C();
      sub_267EDD6A4(v16, v17);
      break;
  }
}

uint64_t sub_267EDD338(uint64_t a1, void (*a2)(id *), uint64_t a3, void *a4)
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

uint64_t sub_267EDD6A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }

  return result;
}

uint64_t sub_267EDD6BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }

  return result;
}

uint64_t sub_267EDD6D4(uint64_t a1, unint64_t a2)
{
  if (a1 >> 5 != 0xFFFFFFFF || (a2 & 0xF000000000000007) != 0)
  {
    return sub_267EDD6A4(a1, a2);
  }

  return a1;
}

unint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow034SendMessageUnsupportedUseCaseCheckC8StrategyC0F6ReasonO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return ((4 * v1) & 0xFFFFFFE0 | *a1 & 0x1F) + 2;
  }
}

uint64_t sub_267EDD714(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1 >> 5;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_267EDD75C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = 32 * -a2;
      *(result + 8) = 0;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_267EDD7AC(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0x1FuLL;
    result[1] = v2;
  }

  else
  {
    *result = (a2 - 2) & 0x1F;
    result[1] = ((a2 - 2) >> 2) & 0x3FFFFFF8 | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_267EDD7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v57 = a3;
  v63 = type metadata accessor for FollowupOfferFlow.State(0);
  v8 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v64 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  OUTLINED_FUNCTION_23();
  v62 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v61 = &v55 - v15;
  v16 = sub_267EF7B88();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_3_55();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v55 - v23;
  v66 = a1;
  v67 = v4;
  *(v4 + 80) = xmmword_267EFE6F0;
  sub_267B9AFEC(a1, v76);
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v25 = qword_2802286F0;

  if (v25 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
  v26 = sub_267BB4A3C();
  v55 = sub_267E7FF50(a2, v76, &v73, v26, 0);
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v10);
  v27 = type metadata accessor for SiriKitFlowFactoryImpl();
  v28 = swift_allocObject();
  v56 = v24;
  v29 = a2;
  v30 = v28;
  type metadata accessor for SendMessageCATs();
  v31 = v57;

  sub_267EF7B68();
  v59 = sub_267EF78E8();
  v76[3] = v27;
  v76[4] = &off_2878CFE90;
  v60 = v30;
  v76[0] = v30;
  v32 = type metadata accessor for FollowupOfferFlow(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v76, v27);
  v58 = &v55;
  OUTLINED_FUNCTION_23();
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_55();
  (*(v39 + 16))(v5);
  v40 = *v5;
  *(&v74 + 1) = v27;
  v75 = &off_2878CFE90;
  *&v73 = v40;
  *(v35 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackResponseProvider) = 0;
  *(v35 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackState) = 0;
  v41 = (v35 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished);
  *v41 = 0;
  v41[1] = 0;
  v42 = (v35 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_strategy);
  v43 = v56;
  *v42 = v55;
  v42[1] = &off_2878D94A8;
  *(v35 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversation) = v29;
  *(v35 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversationManager) = v31;
  sub_267EB89D0(v43, v22);
  if (__swift_getEnumTagSinglePayload(v22, 1, v10) == 1)
  {
    v44 = type metadata accessor for EmptyReferenceResolver();
    v45 = swift_allocObject();
    v72[3] = v44;
    v72[4] = sub_267EDEC78(&qword_2802299B8, 255, type metadata accessor for EmptyReferenceResolver);
    v72[0] = v45;
    v71[3] = sub_267EF68A8();
    v71[4] = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v71);

    sub_267EF6898();
    sub_267B9AFEC(v31 + 16, v70);
    sub_267B9AFEC(v71, v69);
    sub_267B9AFEC(v72, v68);
    v46 = swift_allocObject();
    sub_267B9A5E8(v70, v46 + 16);
    sub_267B9A5E8(v69, v46 + 56);
    sub_267B9A5E8(v68, v46 + 96);
    sub_267EF4C08();
    sub_267BB7170();
    v47 = v61;
    sub_267EF7058();
    sub_267B9FF34(v43, &qword_2802299A8, &unk_267F00CF0);
    __swift_destroy_boxed_opaque_existential_0(v71);
    __swift_destroy_boxed_opaque_existential_0(v72);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v10);
    v49 = v62;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9FF34(v22, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {

    sub_267B9FF34(v43, &qword_2802299A8, &unk_267F00CF0);
    v47 = v61;
    v49 = v62;
    (*(v62 + 32))(v61, v22, v10);
  }

  (*(v49 + 32))(v35 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_transformer, v47, v10);
  sub_267B9A5E8(&v73, v35 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_siriKitFlowFactory);
  v50 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  swift_storeEnumTagMultiPayload();
  v51 = v64;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_267BF8DEC(v51, v35 + v50);
  swift_endAccess();
  *(v35 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_sendMessageCATs) = v59;
  sub_267B9AFEC(v31 + 16, v35 + 16);

  __swift_destroy_boxed_opaque_existential_0(v76);

  v52 = v66;
  v53 = v67;
  *(v67 + 56) = v35;
  *(v53 + 64) = v31;
  *(v53 + 72) = v65;
  sub_267B9A5E8(v52, v53 + 16);
  return v53;
}

uint64_t sub_267EDDEBC(uint64_t a1)
{
  v3 = v1;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v5 = sub_267EF8A08();
  __swift_project_value_buffer(v5, qword_280240FB0);
  v6 = sub_267EF89F8();
  v7 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_7_2(v7))
  {
    v8 = OUTLINED_FUNCTION_32();
    *v8 = 0;
    _os_log_impl(&dword_267B93000, v6, v2, "#DelayedSpokenFollowupFlow: received input, forwarding to followupOfferFlow", v8, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v9 = *(v3 + 56);
  return sub_267C5F164(a1) & 1;
}

uint64_t sub_267EDDF88(void (*a1)(void))
{
  v4 = v1;
  v6 = sub_267EF4028();
  OUTLINED_FUNCTION_23();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_55();
  v12 = v1[10];
  if ((v12 - 2) < 2)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v21 = sub_267EF8A08();
    __swift_project_value_buffer(v21, qword_280240FB0);

    v22 = sub_267EF89F8();
    v23 = sub_267EF95E8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v67 = v25;
      *v24 = 136315138;
      v66 = v4[11];
      sub_267EDEC60(v4[10]);
      v26 = sub_267EF9098();
      v28 = a1;
      v29 = sub_267BA33E8(v26, v27, &v67);

      *(v24 + 4) = v29;
      a1 = v28;
      _os_log_impl(&dword_267B93000, v22, v23, "#DelayedSpokenFollowupFlow.action() is called when it is in unexpected state: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF4018();
    a1(v2);
  }

  else
  {
    v13 = v1[11];
    if (!v12)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v30 = sub_267EF8A08();
      __swift_project_value_buffer(v30, qword_280240FB0);
      v31 = sub_267EF89F8();
      v32 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_7_2(v32))
      {
        v33 = OUTLINED_FUNCTION_32();
        *v33 = 0;
        _os_log_impl(&dword_267B93000, v31, v3, "#DelayedSpokenFollowupFlow: No action group to run, completing", v33, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      sub_267EF4018();
      a1(v2);
      v20 = 0;
      goto LABEL_19;
    }

    if (v12 == 1)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v14 = sub_267EF8A08();
      __swift_project_value_buffer(v14, qword_280240FB0);
      v15 = sub_267EF89F8();
      v16 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_7_2(v16))
      {
        v17 = OUTLINED_FUNCTION_32();
        *v17 = 0;
        _os_log_impl(&dword_267B93000, v15, v3, "#DelayedSpokenFollowupFlow: letting FollowupOfferFlow handle the request", v17, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v18 = v4[10];
      v19 = v4[11];
      *(v4 + 5) = xmmword_267EFDDB0;
      sub_267EDEC4C(v18);
      v65 = v4[7];
      type metadata accessor for FollowupOfferFlow(0);
      sub_267EDEC78(&qword_2802299C0, 255, type metadata accessor for FollowupOfferFlow);

      sub_267EF3FC8();

      a1(v2);
      v20 = 1;
LABEL_19:
      sub_267EDEC4C(v20);
      return (*(v8 + 8))(v2, v6);
    }

    v64 = v6;
    v34 = OUTLINED_FUNCTION_91_2();
    sub_267EDEC60(v34);
    v35 = qword_280228818;
    swift_unknownObjectRetain();
    if (v35 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v63 = v8;
    v36 = sub_267EF8A08();
    __swift_project_value_buffer(v36, qword_280240FB0);
    v37 = sub_267EF89F8();
    v38 = sub_267EF95C8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_32();
      *v39 = 0;
      _os_log_impl(&dword_267B93000, v37, v38, "#DelayedSpokenFollowupFlow: Running action group", v39, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v40 = OUTLINED_FUNCTION_91_2();
    sub_267EDEC60(v40);
    v41 = sub_267EF89F8();
    v42 = sub_267EF95D8();
    v43 = OUTLINED_FUNCTION_91_2();
    sub_267EDEC4C(v43);
    if (os_log_type_enabled(v41, v42))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v67 = v45;
      *v44 = 136315138;
      v46 = OUTLINED_FUNCTION_91_2();
      sub_267EDEC60(v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D230, &unk_267F0F1F0);
      v47 = sub_267EF9098();
      v49 = sub_267BA33E8(v47, v48, &v67);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_267B93000, v41, v42, "#DelayedSpokenFollowupFlow: Running action group: %s)", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v50 = v4[8];
    type metadata accessor for StaticReadingFlowSource();
    v51 = swift_allocObject();
    v51[2] = v12;
    v51[3] = v13;
    v51[4] = v50;
    sub_267EDEC78(&qword_28022D220, v52, type metadata accessor for StaticReadingFlowSource);
    sub_267EDEC78(&qword_28022D228, v53, type metadata accessor for StaticReadingFlowSource);
    v54 = sub_267EF34B8();
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();

    v57 = OUTLINED_FUNCTION_91_2();
    sub_267EDEC60(v57);

    sub_267EF34A8();
    v58 = v4[10];
    v59 = v4[11];
    *(v4 + 5) = xmmword_267EFDDC0;
    sub_267EDEC4C(v58);
    sub_267EF3FF8();
    a1(v2);

    v60 = OUTLINED_FUNCTION_91_2();
    sub_267EDEC4C(v60);

    v61 = OUTLINED_FUNCTION_91_2();
    sub_267EDEC4C(v61);
    v8 = v63;
    v6 = v64;
  }

  return (*(v8 + 8))(v2, v6);
}

uint64_t sub_267EDE690(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC68, &unk_267F08710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v30 - v6;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);

  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30[1] = v1;
    v31[0] = v12;
    *v11 = 136315138;
    type metadata accessor for DelayedSpokenFollowupFlow();
    sub_267EDEC78(&qword_280229488, v13, type metadata accessor for DelayedSpokenFollowupFlow);
    sub_267EF3748();
    v14 = sub_267EF9098();
    v16 = sub_267BA33E8(v14, v15, v31);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_267B93000, v9, v10, "#DelayedSpokenFollowupFlow Received exitValue from FollowupOfferFlow: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v17 = *(v1 + 72);
  v31[0] = *(v1 + 64);
  v31[1] = v17;
  sub_267E0BAE4(a1, v7);
  v18 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v18);
  sub_267EB8AB8();

  v19 = sub_267EF44D8();
  v21 = v20;
  sub_267B9FF34(v7, &qword_28022BC68, &unk_267F08710);

  v22 = sub_267EF89F8();
  v23 = sub_267EF95C8();
  if (os_log_type_enabled(v22, v23))
  {
    if (v19)
    {
      v24 = "#DelayedSpokenFollowupFlow Received action group after returning from FollowupOfferFlow";
    }

    else
    {
      v24 = "#DelayedSpokenFollowupFlow No action group after returning from FollowupOfferFlow";
    }

    v25 = OUTLINED_FUNCTION_32();
    *v25 = 0;
    _os_log_impl(&dword_267B93000, v22, v23, v24, v25, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  if (v19)
  {
    v26 = v21;
  }

  else
  {
    v26 = 0;
  }

  v27 = *(v2 + 80);
  v28 = *(v2 + 88);
  *(v2 + 80) = v19;
  *(v2 + 88) = v26;
  return sub_267EDEC4C(v27);
}

uint64_t sub_267EDE994()
{
  v1 = v0[7];

  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[10];
  v5 = v0[11];

  return sub_267EDEC4C(v4);
}

uint64_t *sub_267EDE9DC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[11];
  sub_267EDEC4C(v0[10]);
  return v0;
}

uint64_t sub_267EDEA24()
{
  sub_267EDE9DC();

  return swift_deallocClassInstance();
}

uint64_t sub_267EDEAC8()
{
  type metadata accessor for DelayedSpokenFollowupFlow();

  return sub_267EF3748();
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow021DelayedSpokenFollowupC0C5State33_30B94A3D683270584293124EC07DA7F9LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_267EDEB48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267EDEBA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_267EDEC00(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_267EDEC4C(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_267EDEC60(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_267EDEC78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_267EDECC0(uint64_t a1)
{
  v2 = sub_267BAF0DC(a1);
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D609870](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v7 = sub_267EF7C18();
    v9 = v8;

    ++v3;
    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = *(v4 + 16);
        sub_267BF4EE8();
        v4 = v13;
      }

      v10 = *(v4 + 16);
      if (v10 >= *(v4 + 24) >> 1)
      {
        sub_267BF4EE8();
        v4 = v14;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v9;
      v3 = v6;
    }
  }
}

uint64_t sub_267EDEDFC@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_267EF4FC8();
  v7 = OUTLINED_FUNCTION_58(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B08, &qword_267F0F240);
  v14 = sub_267EF4D38();
  OUTLINED_FUNCTION_58(v14);
  v16 = v15;
  v18 = *(v17 + 72);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_267EFC020;
  (*(v16 + 104))(v20 + v19, *MEMORY[0x277D601C8], v14);
  sub_267EF4FB8();
  v21 = sub_267EF4F98();
  (*(v9 + 8))(v13, v6);
  *a3 = v21;
  sub_267B9A5E8(a2, (a3 + 1));
  return sub_267B9A5E8(a1, (a3 + 6));
}

uint64_t sub_267EDEFC8()
{
  OUTLINED_FUNCTION_12();
  v1[12] = v0;
  v2 = sub_267EF4F58();
  v1[13] = v2;
  OUTLINED_FUNCTION_30_0(v2);
  v1[14] = v3;
  v5 = *(v4 + 64) + 15;
  v1[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A118, &qword_267F004A0);
  v1[16] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v8 = sub_267EF4D68();
  v1[18] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[19] = v9;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v12 = sub_267EF4E88();
  v1[21] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[22] = v13;
  v15 = *(v14 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_267EDF17C()
{
  sub_267BBD3E4((v0 + 56), **(v0 + 96));
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_267B9A5E8((v0 + 56), v0 + 16);
    v3 = v1[9];
    v2 = v1[10];
    __swift_project_boxed_opaque_existential_0(v1 + 6, v3);
    v4 = swift_task_alloc();
    *(v0 + 216) = v4;
    *v4 = v0;
    v4[1] = sub_267EDF358;

    return sub_267CB8088(v3, v2);
  }

  else
  {
    sub_267EDFD54(v0 + 56);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);
    v7 = sub_267EF89F8();
    v8 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v9, v10, "#UserPersonaSignalCollector signal is not available");
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_4_76();

    OUTLINED_FUNCTION_4_3();

    return v11(0);
  }
}

uint64_t sub_267EDF358()
{
  OUTLINED_FUNCTION_12();
  v1 = *(*v0 + 216);
  v7 = *v0;
  *(*v0 + 224) = v2;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267EDF44C()
{
  sub_267EDECC0(v0[28]);
  v2 = v1;
  v0[29] = v1;

  if (v2[2] == 1 && (v2[4] == 0xD000000000000013 ? (v3 = 0x8000000267F10280 == v2[5]) : (v3 = 0), v3 || (sub_267EF9EA8() & 1) != 0))
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v4 = sub_267EF8A08();
    __swift_project_value_buffer(v4, qword_280240FB0);
    v5 = sub_267EF89F8();
    v6 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v6))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v7, v8, "#UserPersonaSignalCollector only Messages app in candidate apps, returning 1p exclusive");
      OUTLINED_FUNCTION_32_0();
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    OUTLINED_FUNCTION_4_76();

    OUTLINED_FUNCTION_4_3();

    return v9(1);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v11 = sub_267EF8A08();
    v0[30] = __swift_project_value_buffer(v11, qword_280240FB0);
    v12 = sub_267EF89F8();
    v13 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_267B93000, v12, v13, "#UserPersonaSignalCollector calling signal gatherer", v14, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v15 = v0[12];

    v16 = swift_task_alloc();
    v0[31] = v16;
    *(v16 + 16) = v15;
    *(v16 + 24) = v2;
    v17 = swift_task_alloc();
    v0[32] = v17;
    *(v17 + 16) = sub_267EDFDBC;
    *(v17 + 24) = v16;
    v18 = *(MEMORY[0x277D859E0] + 4);
    v19 = swift_task_alloc();
    v0[33] = v19;
    *v19 = v0;
    v19[1] = sub_267EDF760;
    v21 = v0[16];
    v20 = v0[17];

    return MEMORY[0x2822007B8](v20, 0, 0, 0xD000000000000010, 0x8000000267F13E50, sub_267EDFDC4, v17, v21);
  }
}

uint64_t sub_267EDF760()
{
  OUTLINED_FUNCTION_12();
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v8 = *v0;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267EDF888()
{
  v62 = v0;
  v1 = v0[16];
  v2 = v0[17];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[29];
  v5 = v0[30];
  if (EnumCaseMultiPayload == 1)
  {
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[24];
    v9 = v0[21];
    v10 = v0[22];
    v11 = v0[29];

    v12 = *(v10 + 32);
    v12(v6, v2, v9);
    sub_267EDFDCC();
    swift_willThrowTypedImpl();
    v12(v7, v6, v9);
    v13 = *(v10 + 16);
    v13(v8, v7, v9);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();
    v16 = OUTLINED_FUNCTION_5_2(v15);
    v18 = v0[24];
    v17 = v0[25];
    if (v16)
    {
      v19 = v0[23];
      v57 = v0[22];
      v58 = v15;
      v20 = v0[21];
      v59 = v0[25];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v61 = v22;
      *v21 = 136315138;
      v13(v19, v18, v20);
      v23 = sub_267EF9098();
      v25 = v24;
      v26 = *(v57 + 8);
      v26(v18, v20);
      v27 = sub_267BA33E8(v23, v25, &v61);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_267B93000, v14, v58, "#UserPersonaSignalCollector failed to gather signal: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();

      v26(v59, v20);
    }

    else
    {
      v46 = v0[21];
      v45 = v0[22];

      v47 = *(v45 + 8);
      v47(v18, v46);
      v47(v17, v46);
    }
  }

  else
  {
    v29 = v0[19];
    v28 = v0[20];
    v30 = v0[18];
    v31 = v0[15];
    (*(v29 + 32))(v28, v2, v30);
    sub_267EF4D58();
    (*(v29 + 8))(v28, v30);
    sub_267EF4F38();
    v32 = v0[5];
    v33 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v32);
    MEMORY[0x26D604A80](v32, v33);
    sub_267EF4F48();

    v34 = sub_267EF89F8();
    v35 = sub_267EF95D8();
    v36 = OUTLINED_FUNCTION_5_2(v35);
    v37 = v0[14];
    v38 = v0[15];
    v39 = v0[13];
    if (v36)
    {
      v60 = v0[15];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61 = v41;
      *v40 = 136315138;
      v42 = sub_267EF97B8();
      v44 = sub_267BA33E8(v42, v43, &v61);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_267B93000, v34, v35, "#UserPersonaSignalCollector user persona value: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();

      (*(v37 + 8))(v60, v39);
    }

    else
    {

      (*(v37 + 8))(v38, v39);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v49 = v0[25];
  v48 = v0[26];
  v51 = v0[23];
  v50 = v0[24];
  v52 = v0[20];
  v53 = v0[17];
  v54 = v0[15];

  OUTLINED_FUNCTION_4_3();

  return v55(0);
}

uint64_t sub_267EDFCD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = __swift_project_boxed_opaque_existential_0(a3 + 1, a3[4]);
  sub_267DA893C(*a3);
  v5 = *v4;
  sub_267EF0A6C();
}

uint64_t sub_267EDFD54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D238, &qword_267F0F238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267EDFDCC()
{
  result = qword_28022D240;
  if (!qword_28022D240)
  {
    sub_267EF4E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022D240);
  }

  return result;
}

uint64_t sub_267EDFE24(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_267EDFE64(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_267EDFEE0()
{
  OUTLINED_FUNCTION_12();
  v1[29] = v2;
  v1[30] = v0;
  v1[31] = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[32] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  v1[33] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF48A8();
  v1[34] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[35] = v10;
  v12 = *(v11 + 64);
  v1[36] = OUTLINED_FUNCTION_2();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267EDFFF8()
{
  v1 = *(v0[30] + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_38:
    v0[37] = v6;
    v0[38] = *(v1 + 128);

    v33 = swift_task_alloc();
    v0[39] = v33;
    *v33 = v0;
    v33[1] = sub_267EE03A0;
    v34 = v0[30];
    OUTLINED_FUNCTION_93();

    return sub_267EE0B94();
  }

  v36 = *(v1 + 24);
  v37 = v1;
  v4 = v0 + 22;
  v41 = v2 + 32;

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v38 = v3;
  v39 = v0;
  while (1)
  {
    sub_267B9AFEC(v41 + 40 * v5, (v0 + 2));
    v7 = v0[5];
    v8 = v0[6];
    OUTLINED_FUNCTION_117_10();
    v9 = *(v8 + 16);
    v10 = OUTLINED_FUNCTION_115_6();
    v12 = v11(v10);

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v42 = v5;
    v13 = v12 >> 62 ? sub_267EF9A68() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v6 >> 62;
    result = v6 >> 62 ? sub_267EF9A68() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = result + v13;
    if (__OFADD__(result, v13))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v43 = v13;
    if (result)
    {
      if (v14)
      {
        goto LABEL_15;
      }

      v17 = v6 & 0xFFFFFFFFFFFFFF8;
      v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      if (v18 >= v16)
      {
        v44 = v6;
        goto LABEL_17;
      }
    }

    else
    {
      if (v14)
      {
LABEL_15:
        sub_267EF9A68();
        goto LABEL_16;
      }

      v17 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v19 = *(v17 + 16);
LABEL_16:
    result = sub_267EF9BB8();
    v44 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
    v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_17:
    v20 = v18 - *(v17 + 16);
    if (v12 >> 62)
    {
      v22 = sub_267EF9A68();
      if (v22)
      {
        v23 = v22;
        result = sub_267EF9A68();
        if (v20 < result)
        {
          goto LABEL_44;
        }

        if (v23 < 1)
        {
          goto LABEL_46;
        }

        v40 = result;
        sub_267CF6EF8();
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
          v24 = OUTLINED_FUNCTION_75_13();
          v26 = sub_267C73FD8(v24, v25, v12);
          v28 = *v27;
          v26(v4, 0);
          OUTLINED_FUNCTION_104_9();
        }

        while (!v29);
        v3 = v38;
        v0 = v39;
        v21 = v40;
        goto LABEL_28;
      }
    }

    else
    {
      v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        if (v20 < v21)
        {
          goto LABEL_45;
        }

        sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
        swift_arrayInitWithCopy();
LABEL_28:

        v6 = v44;
        if (v21 < v43)
        {
          goto LABEL_42;
        }

        if (v21 > 0)
        {
          v30 = *(v17 + 16);
          v31 = __OFADD__(v30, v21);
          v32 = v30 + v21;
          if (v31)
          {
            goto LABEL_43;
          }

          *(v17 + 16) = v32;
        }

        goto LABEL_33;
      }
    }

    v6 = v44;
    if (v13 > 0)
    {
      goto LABEL_42;
    }

LABEL_33:
    v5 = v42 + 1;
    if (v42 + 1 == v3)
    {

      v1 = v37;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_267EE03A0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 312);
  *v3 = *v1;
  *(v2 + 320) = v6;
  *(v2 + 328) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EE04A4()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  sub_267EF3C98();
  OUTLINED_FUNCTION_11_18();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  sub_267EF7C18();
  v0[42] = v7;
  v8 = v6[6];
  __swift_project_boxed_opaque_existential_0(v6 + 2, v6[5]);
  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_68_0();
  v11(v10);
  v12 = v0[11];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
  OUTLINED_FUNCTION_68_0();
  sub_267EF3B98();
  v0[15] = &type metadata for MessagesFeatureFlagsImpl;
  v0[16] = off_2878D1228;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[43] = v13;
  *v13 = v14;
  v13[1] = sub_267EE062C;
  v15 = v0[32];

  return sub_267BF57AC();
}

uint64_t sub_267EE062C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v5 = v4[43];
  v6 = v4[42];
  v7 = v4[37];
  v8 = *v0;
  OUTLINED_FUNCTION_5();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267EE0758()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[30];
  sub_267EF4158();
  v4 = OUTLINED_FUNCTION_57_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  sub_267EF4818();
  v8 = sub_267EF4198();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v0[44] = sub_267EF4188();
  v11 = v3[6];
  OUTLINED_FUNCTION_11_6(v3 + 2, v3[5]);
  v12 = OUTLINED_FUNCTION_7_1();
  v13(v12);
  v14 = v0[21];
  __swift_project_boxed_opaque_existential_0(v0 + 17, v0[20]);
  OUTLINED_FUNCTION_7_1();
  sub_267EF3C48();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[45] = v15;
  *v15 = v16;
  v15[1] = sub_267EE088C;
  v17 = v0[40];
  v18 = v0[38];
  v19 = v0[36];
  v20 = v0[29];
  OUTLINED_FUNCTION_30_2();

  return sub_267BCF3A4(v21, v22, v23, v24, v25);
}

uint64_t sub_267EE088C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 360);
  v7 = *(v5 + 352);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v3 + 368) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 136));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267EE09B0()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 304);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);

  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_26_0();
  v9(v8);

  OUTLINED_FUNCTION_1();

  return v10();
}

uint64_t sub_267EE0A5C()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[37];
  v1 = v0[38];

  v3 = v0[41];
  v4 = v0[36];
  v6 = v0[32];
  v5 = v0[33];

  OUTLINED_FUNCTION_17();

  return v7();
}

uint64_t sub_267EE0AE4()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 304);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 272);

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_26_0();
  v7(v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  v8 = *(v0 + 368);
  v9 = *(v0 + 288);
  v11 = *(v0 + 256);
  v10 = *(v0 + 264);

  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_267EE0B94()
{
  OUTLINED_FUNCTION_12();
  v1[74] = v0;
  v2 = sub_267EF8228();
  v1[75] = v2;
  OUTLINED_FUNCTION_30_0(v2);
  v1[76] = v3;
  v5 = *(v4 + 64);
  v1[77] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF79B8();
  v1[78] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[79] = v7;
  v9 = *(v8 + 64);
  v1[80] = OUTLINED_FUNCTION_50();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267EE0CCC()
{
  v1 = *(*(v0 + 592) + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  sub_267C8F7C0(*(v1 + 24), v0 + 112);
  if (!*(v0 + 136))
  {
    sub_267B9F98C(v0 + 112, &qword_280229910, &unk_267EFEB70);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v20 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v20, qword_280240FB0);
    v21 = sub_267EF89F8();
    v22 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v22))
    {
      v23 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v23);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v24, v25, "#ReplyOfferFlowStrategy no component to reply to");
      OUTLINED_FUNCTION_26();
    }

    sub_267C266B0();
    swift_allocError();
    *v26 = 0xD000000000000030;
    v26[1] = 0x8000000267F1D920;
    swift_willThrow();
LABEL_22:
    v117 = *(v0 + 688);
    v118 = *(v0 + 680);
    v119 = *(v0 + 672);
    v120 = *(v0 + 664);
    OUTLINED_FUNCTION_114_9();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_93();

    __asm { BRAA            X1, X16 }
  }

  sub_267BE58F4((v0 + 112), v0 + 72);
  sub_267B9AFEC(v0 + 72, v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 48);
  }

  v6 = *(v0 + 688);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 592);
  v11 = *(v1 + 128);
  sub_267B9AFEC(v0 + 72, v0 + 192);

  sub_267E7EE1C(v12, v0 + 192);

  sub_267B9F98C(v0 + 192, &qword_280229910, &unk_267EFEB70);
  (*(v8 + 104))(v7, *MEMORY[0x277D5D450], v9);
  v13 = v10[5];
  v14 = v10[6];
  OUTLINED_FUNCTION_8_63(v10 + 2);
  v15 = OUTLINED_FUNCTION_31();
  v16(v15);
  v17 = sub_267BEA714(v7, (v0 + 232));
  __swift_destroy_boxed_opaque_existential_0((v0 + 232));
  v18 = *(v8 + 8);
  v19 = OUTLINED_FUNCTION_105_13();
  v18(v19);
  *(v0 + 536) = v17;
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v133 = (v0 + 72);
  v27 = *(v0 + 680);
  v28 = *(v0 + 616);
  v29 = *(v0 + 600);

  v30 = *MEMORY[0x277D5D4D0];
  OUTLINED_FUNCTION_70_15();
  v31();
  v32 = v10;
  v134 = v18;
  v34 = v10[5];
  v33 = v10[6];
  __swift_project_boxed_opaque_existential_0(v32 + 2, v32[5]);
  (*(v33 + 8))(v34, v33);
  v35 = sub_267BEA714(v28, (v0 + 272));
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  OUTLINED_FUNCTION_35_31();
  v36();
  *(v0 + 544) = v35;
  OUTLINED_FUNCTION_57_20();
  if (v27)
  {
    v37 = *(v0 + 688);
    v38 = *(v0 + 632);
    v39 = *(v0 + 624);

    v40 = *(v38 + 8);
    v41 = OUTLINED_FUNCTION_108();
    v42(v41);
LABEL_21:
    __swift_destroy_boxed_opaque_existential_0(v133);
    goto LABEL_22;
  }

  v43 = *(v0 + 672);
  OUTLINED_FUNCTION_89_14();

  v131 = *MEMORY[0x277D5D508];
  OUTLINED_FUNCTION_70_15();
  v45(v44);
  v47 = v32[5];
  v46 = v32[6];
  __swift_project_boxed_opaque_existential_0(v32 + 2, v47);
  (*(v46 + 8))(v47, v46);
  v48 = sub_267BEA714(v33, (v0 + 312));
  OUTLINED_FUNCTION_109_11((v0 + 312));
  OUTLINED_FUNCTION_35_31();
  v50(v49);
  *(v0 + 552) = v48;
  OUTLINED_FUNCTION_57_20();
  if (v43)
  {
    v51 = *(v0 + 688);
    v52 = *(v0 + 680);
    v53 = *(v0 + 632);
    v54 = *(v0 + 624);

    v55 = *(v53 + 8);
    v55(v52, v54);
    v55(v51, v54);
    goto LABEL_21;
  }

  v56 = *(v0 + 664);
  OUTLINED_FUNCTION_89_14();

  v57 = *MEMORY[0x277D5D4C0];
  OUTLINED_FUNCTION_70_15();
  v59(v58);
  v60 = v32[5];
  v61 = v32[6];
  OUTLINED_FUNCTION_8_63(v32 + 2);
  v62 = OUTLINED_FUNCTION_31();
  v63(v62);
  v64 = sub_267BEA714(v33, (v0 + 352));
  OUTLINED_FUNCTION_109_11((v0 + 352));
  OUTLINED_FUNCTION_35_31();
  v66(v65);
  *(v0 + 560) = v64;
  OUTLINED_FUNCTION_57_20();
  if (v56)
  {
    OUTLINED_FUNCTION_82_11();
    v67 = *(v0 + 632);
    v68 = *(v0 + 624);

    v69 = *(v67 + 8);
    v69(v56, v68);
    v70 = OUTLINED_FUNCTION_63();
    (v69)(v70);
    v69(v0 + 560, v68);
    goto LABEL_21;
  }

  v71 = *(v0 + 656);
  OUTLINED_FUNCTION_89_14();

  OUTLINED_FUNCTION_70_15();
  v73(v72);
  v74 = v32[5];
  v75 = v32[6];
  OUTLINED_FUNCTION_8_63(v32 + 2);
  v76 = OUTLINED_FUNCTION_31();
  v77(v76);
  v78 = sub_267BEA714(v33, (v0 + 392));
  OUTLINED_FUNCTION_109_11((v0 + 392));
  OUTLINED_FUNCTION_35_31();
  v80(v79);
  *(v0 + 568) = v78;
  OUTLINED_FUNCTION_57_20();
  if (v71)
  {
    OUTLINED_FUNCTION_82_11();
    v81 = *(v0 + 664);
    v82 = *(v0 + 632);
    v83 = *(v0 + 624);

    v84 = *(v82 + 8);
    v85 = OUTLINED_FUNCTION_106_8();
    v84(v85);
    v86 = OUTLINED_FUNCTION_68_0();
    v84(v86);
    v87 = OUTLINED_FUNCTION_90_12();
    v84(v87);
    v88 = OUTLINED_FUNCTION_401();
    (v84)(v88, v89);
    goto LABEL_21;
  }

  v90 = *(v0 + 648);
  OUTLINED_FUNCTION_89_14();

  v91 = *MEMORY[0x277D5D4F0];
  OUTLINED_FUNCTION_70_15();
  v93(v92);
  v94 = v32[5];
  v95 = v32[6];
  OUTLINED_FUNCTION_8_63(v32 + 2);
  v96 = OUTLINED_FUNCTION_31();
  v97(v96);
  v98 = sub_267BEA714(v33, (v0 + 432));
  v99 = OUTLINED_FUNCTION_109_11((v0 + 432));
  (v134)(v99, v29);
  *(v0 + 576) = v98;
  OUTLINED_FUNCTION_57_20();
  if (v90)
  {
    OUTLINED_FUNCTION_82_11();
    v100 = *(v0 + 664);
    v101 = *(v0 + 656);
    v102 = *(v0 + 632);
    v103 = *(v0 + 624);

    v104 = *(v102 + 8);
    v104(v90, v103);
    v105 = OUTLINED_FUNCTION_68_16();
    (v104)(v105);
    v106 = OUTLINED_FUNCTION_79_15();
    (v104)(v106);
    v107 = OUTLINED_FUNCTION_50_1();
    (v104)(v107);
    v104(v0 + 576, v103);
    goto LABEL_21;
  }

  v132 = *(v0 + 640);
  OUTLINED_FUNCTION_89_14();

  v108 = *MEMORY[0x277D5D4B8];
  OUTLINED_FUNCTION_70_15();
  v109();
  v110 = v32[5];
  v111 = v32[6];
  OUTLINED_FUNCTION_8_63(v32 + 2);
  v112 = OUTLINED_FUNCTION_31();
  v113(v112);
  v114 = sub_267BEA714(v134, (v0 + 472));
  __swift_destroy_boxed_opaque_existential_0((v0 + 472));
  v115 = OUTLINED_FUNCTION_63();
  v134(v115);
  *(v0 + 584) = v114;
  sub_267EF8348();
  v116 = *(v0 + 688);
  v123 = *(v0 + 656);
  v124 = *(v0 + 592);
  v135 = *(v0 + 640);
  v136 = *(v0 + 664);

  v125 = __swift_project_boxed_opaque_existential_0((v124 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns), *(v124 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns + 24));
  v126 = swift_task_alloc();
  *(v0 + 696) = v126;
  *(v126 + 16) = v124;
  *(v126 + 24) = v116;
  *(v126 + 32) = v136;
  *(v126 + 48) = vextq_s8(v135, v135, 8uLL);
  *(v126 + 64) = v123;
  *(v126 + 72) = v133;
  v127 = *v125;
  v128 = swift_task_alloc();
  *(v0 + 704) = v128;
  *v128 = v0;
  v128[1] = sub_267EE16EC;
  OUTLINED_FUNCTION_93();

  return sub_267D40ACC();
}

uint64_t sub_267EE16EC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v3[88];
  *v4 = *v2;
  v3[89] = v0;

  OUTLINED_FUNCTION_76_2();
  v7 = *(v6 + 696);
  if (!v0)
  {
    v3[90] = v1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267EE1810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = v14[86];
  v16 = v14[85];
  v17 = v14[83];
  v18 = v14[82];
  v19 = v14[81];
  v20 = v14[80];
  v40 = v14[84];
  v21 = v14[78];
  v41 = v14[77];
  v22 = *(v14[79] + 8);
  v23 = OUTLINED_FUNCTION_68_16();
  v22(v23);
  (v22)(v20, v21);
  v24 = OUTLINED_FUNCTION_75_13();
  v22(v24);
  v25 = OUTLINED_FUNCTION_50_1();
  v22(v25);
  v26 = OUTLINED_FUNCTION_65_2();
  v22(v26);
  v27 = OUTLINED_FUNCTION_65_2();
  v22(v27);
  v28 = OUTLINED_FUNCTION_79_15();
  v22(v28);
  __swift_destroy_boxed_opaque_existential_0(v14 + 9);

  v29 = v14[1];
  v30 = v14[90];
  OUTLINED_FUNCTION_64_3();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, v40, v20, v41, a12, a13, a14);
}

uint64_t sub_267EE196C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = v12[86];
  v14 = v12[84];
  v15 = v12[83];
  v16 = v12[82];
  v17 = v12[81];
  v18 = v12[80];
  v19 = *(v12[79] + 8);
  v19(v12[85], v12[78]);
  v20 = OUTLINED_FUNCTION_68_0();
  (v19)(v20);
  v21 = OUTLINED_FUNCTION_90_12();
  (v19)(v21);
  v22 = OUTLINED_FUNCTION_105_13();
  (v19)(v22);
  v23 = OUTLINED_FUNCTION_106_8();
  (v19)(v23);
  v24 = OUTLINED_FUNCTION_199();
  (v19)(v24);
  v25 = OUTLINED_FUNCTION_401();
  (v19)(v25);
  __swift_destroy_boxed_opaque_existential_0(v12 + 9);
  v26 = v12[89];
  v27 = v12[86];
  v28 = v12[85];
  v29 = v12[84];
  v30 = v12[83];
  OUTLINED_FUNCTION_114_9();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_267EE1AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267EE1BA4, 0, 0);
}

uint64_t sub_267EE1BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v18 = OUTLINED_FUNCTION_40_27();
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 16);
  v20(v15, v12, v18);
  OUTLINED_FUNCTION_17_34(v15);
  v20(v16, v11, v18);
  OUTLINED_FUNCTION_17_34(v16);
  v21 = OUTLINED_FUNCTION_83_10();
  (v20)(v21);
  OUTLINED_FUNCTION_17_34(v17);
  v20(v14, a11, v18);
  OUTLINED_FUNCTION_17_34(v14);
  v22 = OUTLINED_FUNCTION_33_25();
  (v20)(v22);
  OUTLINED_FUNCTION_12_53();
  v23 = OUTLINED_FUNCTION_33_25();
  (v20)(v23);
  OUTLINED_FUNCTION_12_53();
  v24 = swift_task_alloc();
  v13[17] = v24;
  *v24 = v13;
  v24[1] = sub_267EE1D00;
  v26 = v13[15];
  v25 = v13[16];
  v27 = v13[14];
  OUTLINED_FUNCTION_92_12();
  OUTLINED_FUNCTION_89();

  return sub_267EE56DC();
}

uint64_t sub_267EE1D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_14();
  v15 = v14;
  OUTLINED_FUNCTION_9_1();
  *v16 = v15;
  v18 = *(v17 + 136);
  v19 = *(v17 + 128);
  OUTLINED_FUNCTION_36_28();
  v21 = *(v20 + 120);
  v23 = v22[14];
  v24 = v22[13];
  v25 = v22[12];
  v26 = v22[11];
  v27 = *v13;
  OUTLINED_FUNCTION_5();
  *v28 = v27;
  v15[18] = v12;

  v29 = OUTLINED_FUNCTION_65_2();
  sub_267B9F98C(v29, v30, &qword_267EFC0B0);
  v31 = OUTLINED_FUNCTION_68_16();
  sub_267B9F98C(v31, v32, &qword_267EFC0B0);
  OUTLINED_FUNCTION_74_13(v24);
  v33 = OUTLINED_FUNCTION_50_1();
  sub_267B9F98C(v33, v34, &qword_267EFC0B0);
  OUTLINED_FUNCTION_74_13(v21);
  OUTLINED_FUNCTION_74_13(a9);
  if (v12)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_40();

    return MEMORY[0x2822009F8](v35, v36, v37);
  }

  else
  {
    v40 = v15[15];
    v39 = v15[16];
    v42 = v15[13];
    v41 = v15[14];
    v45 = v15 + 11;
    v43 = v15[11];
    v44 = v45[1];

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_40();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
  }
}

uint64_t sub_267EE1F18()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];

  OUTLINED_FUNCTION_17();
  v7 = v0[18];
  OUTLINED_FUNCTION_30_2();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_267EE1FAC()
{
  OUTLINED_FUNCTION_12();
  v1[34] = v2;
  v1[35] = v0;
  v1[36] = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[37] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  v1[38] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF48A8();
  v1[39] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[40] = v10;
  v12 = *(v11 + 64);
  v1[41] = OUTLINED_FUNCTION_2();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267EE20C4()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0[35] + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  v0[42] = v1;
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  sub_267C8F7C0(*(v1 + 24), (v0 + 2));
  v2 = v0[5];
  sub_267B9F98C((v0 + 2), &qword_280229910, &unk_267EFEB70);
  if (v2)
  {
    v0[43] = *(v1 + 128);

    v3 = swift_task_alloc();
    v0[44] = v3;
    *v3 = v0;
    v3[1] = sub_267BDC3FC;
    v4 = v0[35];

    return sub_267EE23E8();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v6 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v6, qword_280240FB0);
    v7 = sub_267EF89F8();
    v8 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v8))
    {
      v9 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v9);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v10, v11, "#ReplyOfferFlowStrategy no component to reply to");
      OUTLINED_FUNCTION_26();
    }

    sub_267C266B0();
    swift_allocError();
    *v12 = 0xD000000000000030;
    v12[1] = 0x8000000267F1D920;
    swift_willThrow();
    v13 = v0[41];
    v15 = v0[37];
    v14 = v0[38];

    OUTLINED_FUNCTION_17();

    return v16();
  }
}

uint64_t sub_267EE22B8()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[43];

  v2 = v0[46];
  v3 = v0[41];
  v5 = v0[37];
  v4 = v0[38];

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267EE2338()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 344);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v4 = *(v0 + 312);

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_26_0();
  v7(v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v8 = *(v0 + 416);
  v9 = *(v0 + 328);
  v11 = *(v0 + 296);
  v10 = *(v0 + 304);

  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_267EE23E8()
{
  OUTLINED_FUNCTION_12();
  v1[129] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v2);
  v4 = *(v3 + 64);
  v1[130] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF8228();
  v1[131] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[132] = v6;
  v8 = *(v7 + 64);
  v1[133] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF79B8();
  v1[134] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[135] = v10;
  v12 = *(v11 + 64);
  v1[136] = OUTLINED_FUNCTION_50();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267EE2558()
{
  v1 = *(*(v0 + 1032) + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  *(v0 + 1152) = v1;
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  sub_267C8F7C0(*(v1 + 24), v0 + 632);
  if (!*(v0 + 656))
  {
    sub_267B9F98C(v0 + 632, &qword_280229910, &unk_267EFEB70);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v20 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v20, qword_280240FB0);
    v21 = sub_267EF89F8();
    v22 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v22))
    {
      v23 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v23);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v24, v25, "#ReplyOfferFlowStrategy no component to reply to");
      OUTLINED_FUNCTION_26();
    }

    sub_267C266B0();
    swift_allocError();
    *v26 = 0xD000000000000030;
    v26[1] = 0x8000000267F1D920;
    swift_willThrow();
    v35 = *(v0 + 1144);
    v36 = *(v0 + 1136);
    v37 = *(v0 + 1128);
    v38 = *(v0 + 1120);
    OUTLINED_FUNCTION_13_53();
    v39 = *(v0 + 1064);
    v40 = *(v0 + 1040);

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_63_1();

    __asm { BRAA            X1, X16 }
  }

  v2 = *(v0 + 1032);
  sub_267BE58F4((v0 + 632), v0 + 912);
  v122 = sub_267EE64F4();
  sub_267B9AFEC(v0 + 912, v0 + 432);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  v3 = swift_dynamicCast();
  *(v0 + 169) = v3;
  if (v3)
  {
    v5 = *(v0 + 336);
    v4 = *(v0 + 344);
    v6 = *(v0 + 352);
    v7 = *(v0 + 368);
  }

  v126 = *(v0 + 1144);
  v8 = *(v0 + 1064);
  v9 = *(v0 + 1056);
  v10 = *(v0 + 1048);
  v11 = *(v0 + 1032);
  v12 = *(v1 + 128);
  sub_267B9AFEC(v0 + 912, v0 + 472);

  *(v0 + 170) = sub_267E7EE1C(v13, v0 + 472) & 1;

  sub_267B9F98C(v0 + 472, &qword_280229910, &unk_267EFEB70);
  *(v0 + 171) = sub_267EE68F0() & 1;
  (*(v9 + 104))(v8, *MEMORY[0x277D5D450], v10);
  v14 = v11[5];
  v15 = v11[6];
  v123 = v11;
  OUTLINED_FUNCTION_8_63(v11 + 2);
  v16 = OUTLINED_FUNCTION_31();
  v17(v16);
  v18 = sub_267BEA714(v8, (v0 + 512));
  __swift_destroy_boxed_opaque_existential_0((v0 + 512));
  v19 = *(v9 + 8);
  v19(v8, v10);
  *(v0 + 976) = v18;
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v121 = v0 + 912;
  v27 = *(v0 + 1136);
  v127 = v19;
  v28 = *(v0 + 1064);
  v29 = *(v0 + 1048);

  v30 = *MEMORY[0x277D5D4D0];
  OUTLINED_FUNCTION_71_12();
  v31();
  v33 = v11[5];
  v32 = v11[6];
  __swift_project_boxed_opaque_existential_0(v123 + 2, v123[5]);
  (*(v32 + 8))(v33, v32);
  v34 = sub_267BEA714(v28, (v0 + 552));
  __swift_destroy_boxed_opaque_existential_0((v0 + 552));
  v127(v28, v29);
  *(v0 + 984) = v34;
  sub_267EF8348();
  v120 = *(v0 + 1128);
  OUTLINED_FUNCTION_94_11();

  v43 = *MEMORY[0x277D5D508];
  OUTLINED_FUNCTION_71_12();
  v44();
  v46 = v11[5];
  v45 = v11[6];
  __swift_project_boxed_opaque_existential_0(v123 + 2, v123[5]);
  (*(v45 + 8))(v46, v45);
  v47 = sub_267BEA714(v27, (v0 + 592));
  __swift_destroy_boxed_opaque_existential_0((v0 + 592));
  v48 = OUTLINED_FUNCTION_27_38();
  (v127)(v48);
  *(v0 + 992) = v47;
  sub_267EF8348();
  v49 = *(v0 + 1120);
  OUTLINED_FUNCTION_94_11();

  OUTLINED_FUNCTION_71_12();
  v50();
  v51 = v11[5];
  v52 = v11[6];
  OUTLINED_FUNCTION_8_63(v11 + 2);
  v53 = OUTLINED_FUNCTION_31();
  v54(v53);
  v55 = sub_267BEA714(v27, (v0 + 392));
  __swift_destroy_boxed_opaque_existential_0((v0 + 392));
  v56 = OUTLINED_FUNCTION_27_38();
  (v127)(v56);
  *(v0 + 1000) = v55;
  OUTLINED_FUNCTION_116_8();
  v57 = *(v0 + 1112);
  OUTLINED_FUNCTION_94_11();

  v58 = *MEMORY[0x277D5D4F0];
  OUTLINED_FUNCTION_71_12();
  v59();
  v60 = v11[5];
  v61 = v11[6];
  OUTLINED_FUNCTION_8_63(v11 + 2);
  v62 = OUTLINED_FUNCTION_31();
  v63(v62);
  v64 = sub_267BEA714(v27, (v0 + 672));
  __swift_destroy_boxed_opaque_existential_0((v0 + 672));
  v65 = OUTLINED_FUNCTION_27_38();
  (v127)(v65);
  *(v0 + 1008) = v64;
  OUTLINED_FUNCTION_116_8();
  v66 = *(v0 + 1104);
  OUTLINED_FUNCTION_94_11();

  v67 = *MEMORY[0x277D5D4B8];
  OUTLINED_FUNCTION_71_12();
  v68();
  v69 = v11[5];
  v70 = v11[6];
  OUTLINED_FUNCTION_8_63(v11 + 2);
  v71 = OUTLINED_FUNCTION_31();
  v72(v71);
  v73 = sub_267BEA714(v27, (v0 + 712));
  __swift_destroy_boxed_opaque_existential_0((v0 + 712));
  v74 = OUTLINED_FUNCTION_27_38();
  (v127)(v74);
  *(v0 + 1016) = v73;
  OUTLINED_FUNCTION_116_8();
  v75 = *(v0 + 1096);
  OUTLINED_FUNCTION_94_11();

  v76 = *MEMORY[0x277D5D500];
  OUTLINED_FUNCTION_71_12();
  v77();
  v78 = v11[5];
  v79 = v11[6];
  OUTLINED_FUNCTION_8_63(v11 + 2);
  v80 = OUTLINED_FUNCTION_31();
  v81(v80);
  v82 = sub_267BEA714(v27, (v0 + 752));
  __swift_destroy_boxed_opaque_existential_0((v0 + 752));
  v83 = OUTLINED_FUNCTION_27_38();
  (v127)(v83);
  *(v0 + 1024) = v82;
  OUTLINED_FUNCTION_116_8();

  if (v122)
  {
    v84 = *(v0 + 1128);
    v85 = *(v0 + 1120);
    v86 = *(v0 + 1032);
    v87 = OUTLINED_FUNCTION_45_29(v86 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns);
    v124 = v88;
    v128 = v87;
    v91 = __swift_project_boxed_opaque_existential_0(v89, v90);
    v92 = swift_task_alloc();
    *(v0 + 1160) = v92;
    *(v92 + 16) = v86;
    *(v92 + 24) = v124;
    *(v92 + 40) = v84;
    *(v92 + 48) = vextq_s8(v128, v128, 8uLL);
    *(v92 + 64) = v85;
    *(v92 + 72) = v121;
    v93 = *v91;
    v94 = swift_task_alloc();
    *(v0 + 1168) = v94;
    *v94 = v0;
    v94[1] = sub_267EE3220;
    OUTLINED_FUNCTION_63_1();

    return sub_267D4107C();
  }

  v97 = v11[6];
  __swift_project_boxed_opaque_existential_0(v123 + 2, v123[5]);
  v98 = *(v97 + 8);
  v99 = OUTLINED_FUNCTION_26_0();
  v100(v99);
  v101 = *(v0 + 824);
  __swift_project_boxed_opaque_existential_0((v0 + 792), *(v0 + 816));
  OUTLINED_FUNCTION_26_0();
  v102 = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v0 + 792));
  if (v102)
  {
    *(v0 + 856) = &type metadata for Features;
    *(v0 + 864) = sub_267BAFCAC();
    *(v0 + 832) = 22;
    v103 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0((v0 + 832));
    if (v103)
    {
      sub_267B9AFEC(v121, v0 + 872);
      if (swift_dynamicCast())
      {
        memcpy((v0 + 16), (v0 + 176), 0x99uLL);
        v104 = swift_task_alloc();
        *(v0 + 1192) = v104;
        *v104 = v0;
        v104[1] = sub_267EE36C0;
        OUTLINED_FUNCTION_63_1();

        return sub_267C0C914();
      }

      bzero((v0 + 176), 0x99uLL);
      sub_267B9F98C(v0 + 176, &qword_28022D260, &qword_267F0F368);
    }
  }

  v106 = *(v0 + 1152);
  v107 = *(v0 + 1128);
  v108 = *(v0 + 1120);
  v109 = *(v0 + 1096);
  v110 = *(v0 + 1032);
  v111 = OUTLINED_FUNCTION_45_29(v110 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns);
  v125 = v112;
  v129 = v111;
  v115 = __swift_project_boxed_opaque_existential_0(v113, v114);
  sub_267BF4920();
  v116 = swift_task_alloc();
  *(v0 + 1232) = v116;
  *(v116 + 16) = v110;
  *(v116 + 24) = v125;
  *(v116 + 40) = v107;
  *(v116 + 48) = vextq_s8(v129, v129, 8uLL);
  *(v116 + 64) = v108;
  *(v116 + 72) = v109;
  *(v116 + 80) = v121;
  v117 = *v115;
  v118 = swift_task_alloc();
  *(v0 + 1240) = v118;
  *v118 = v0;
  OUTLINED_FUNCTION_19_48(v118);
  OUTLINED_FUNCTION_63_1();

  return sub_267D415EC();
}

uint64_t sub_267EE3220()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v3[146];
  *v4 = *v2;
  v3[147] = v0;

  OUTLINED_FUNCTION_76_2();
  v7 = *(v6 + 1160);
  if (!v0)
  {
    v3[148] = v1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267EE3580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v14 = v12[143];
  OUTLINED_FUNCTION_6_63();
  v15 = OUTLINED_FUNCTION_95_12();
  v13(v15);
  v16 = OUTLINED_FUNCTION_68_0();
  v13(v16);
  v17 = OUTLINED_FUNCTION_90_12();
  v13(v17);
  v18 = OUTLINED_FUNCTION_105_13();
  v13(v18);
  v19 = OUTLINED_FUNCTION_106_8();
  v13(v19);
  v20 = OUTLINED_FUNCTION_199();
  v13(v20);
  v21 = OUTLINED_FUNCTION_401();
  v13(v21);
  __swift_destroy_boxed_opaque_existential_0(v12 + 114);
  v33 = v12[147];
  v22 = v12[143];
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_37_26();
  v23 = v12[130];

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, a10, a11, a12);
}

uint64_t sub_267EE36C0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 1192);
  *v2 = *v0;
  *(v1 + 172) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267EE37AC()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v1 = v0 + 57;
  if (v0[10].i8[12] != 1)
  {
    sub_267C10274(v0[1].i64);
    goto LABEL_5;
  }

  v2 = v0[67].i64[0];
  v3 = v0[65].i64[0];
  sub_267C0C2B8(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    v4 = v0[65].i64[0];
    sub_267C10274(v0[1].i64);
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
LABEL_5:
    v5 = v0[72].i64[0];
    v6 = v0[70].i64[1];
    v7 = v0[70].i64[0];
    v8 = v0[68].i64[1];
    v9 = v0[64].i64[1];
    v10 = OUTLINED_FUNCTION_45_29(v9 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns);
    v32 = v11;
    v34 = v10;
    v14 = __swift_project_boxed_opaque_existential_0(v12, v13);
    sub_267BF4920();
    v15 = swift_task_alloc();
    v0[77].i64[0] = v15;
    *(v15 + 16) = v9;
    *(v15 + 24) = v32;
    *(v15 + 40) = v6;
    *(v15 + 48) = vextq_s8(v34, v34, 8uLL);
    *(v15 + 64) = v7;
    *(v15 + 72) = v8;
    *(v15 + 80) = v1;
    v16 = *v14;
    v17 = swift_task_alloc();
    v0[77].i64[1] = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_19_48(v17);
    goto LABEL_7;
  }

  v18 = v0[72].i64[0];
  v19 = v0[70].i64[1];
  v20 = v0[70].i64[0];
  v21 = v0[64].i64[1];
  v33 = vextq_s8(v0[69], v0[69], 8uLL);
  v35 = vextq_s8(v0[71], v0[71], 8uLL);
  v31 = v0[68];
  (*(v0[67].i64[1] + 32))(v0[68].i64[0], v0[65].i64[0], v0[67].i64[0]);
  v22 = __swift_project_boxed_opaque_existential_0((v21 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns), *(v21 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns + 24));
  sub_267BF4920();
  v23 = swift_task_alloc();
  v0[75].i64[0] = v23;
  *(v23 + 16) = v21;
  *(v23 + 24) = v35;
  *(v23 + 40) = v19;
  *(v23 + 48) = v33;
  *(v23 + 64) = v20;
  *(v23 + 72) = vextq_s8(v31, v31, 8uLL);
  *(v23 + 88) = v1;
  v24 = *v22;
  v25 = swift_task_alloc();
  v0[75].i64[1] = v25;
  *v25 = v0;
  v25[1] = sub_267EE3A14;
  v26 = v0[10].u8[11];
  v27 = v0[10].u8[10];
  v28 = v0[10].u8[9];
LABEL_7:
  OUTLINED_FUNCTION_89();

  return sub_267D415EC();
}

uint64_t sub_267EE3A14()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v3[151];
  *v4 = *v2;
  v3[152] = v0;

  OUTLINED_FUNCTION_76_2();
  v7 = *(v6 + 1200);
  if (!v0)
  {
    v3[153] = v1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267EE3D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v36 = v14[142];
  v37 = v14[143];
  v15 = v14[141];
  v16 = v14[140];
  OUTLINED_FUNCTION_13_53();
  v17 = v14[135];
  v18 = v14[134];
  sub_267C10274((v14 + 2));
  v19 = *(v17 + 8);
  v20 = OUTLINED_FUNCTION_65_2();
  v19(v20);
  v21 = OUTLINED_FUNCTION_68_16();
  v19(v21);
  v22 = OUTLINED_FUNCTION_79_15();
  v19(v22);
  v23 = OUTLINED_FUNCTION_50_1();
  v19(v23);
  v24 = OUTLINED_FUNCTION_75_13();
  v19(v24);
  (v19)(v15, v18);
  (v19)(v36, v18);
  (v19)(v37, v18);
  __swift_destroy_boxed_opaque_existential_0(v14 + 114);
  v38 = v14[152];
  v25 = v14[143];
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_37_26();
  v26 = v14[130];

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v38, a12, a13, a14);
}

uint64_t sub_267EE3F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v14 = v12[143];
  OUTLINED_FUNCTION_6_63();
  v15 = OUTLINED_FUNCTION_95_12();
  v13(v15);
  v16 = OUTLINED_FUNCTION_68_0();
  v13(v16);
  v17 = OUTLINED_FUNCTION_90_12();
  v13(v17);
  v18 = OUTLINED_FUNCTION_105_13();
  v13(v18);
  v19 = OUTLINED_FUNCTION_106_8();
  v13(v19);
  v20 = OUTLINED_FUNCTION_199();
  v13(v20);
  v21 = OUTLINED_FUNCTION_401();
  v13(v21);
  __swift_destroy_boxed_opaque_existential_0(v12 + 114);
  v33 = v12[156];
  v22 = v12[143];
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_37_26();
  v23 = v12[130];

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, a10, a11, a12);
}

uint64_t sub_267EE4058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267EE4148, 0, 0);
}

uint64_t sub_267EE4148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v18 = OUTLINED_FUNCTION_40_27();
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 16);
  v20(v15, v12, v18);
  OUTLINED_FUNCTION_17_34(v15);
  v20(v16, v11, v18);
  OUTLINED_FUNCTION_17_34(v16);
  v21 = OUTLINED_FUNCTION_83_10();
  (v20)(v21);
  OUTLINED_FUNCTION_17_34(v17);
  v20(v14, a11, v18);
  OUTLINED_FUNCTION_17_34(v14);
  v22 = OUTLINED_FUNCTION_33_25();
  (v20)(v22);
  OUTLINED_FUNCTION_12_53();
  v23 = OUTLINED_FUNCTION_33_25();
  (v20)(v23);
  OUTLINED_FUNCTION_12_53();
  v24 = swift_task_alloc();
  v13[17] = v24;
  *v24 = v13;
  v24[1] = sub_267EE42A4;
  v26 = v13[15];
  v25 = v13[16];
  v28 = v13[13];
  v27 = v13[14];
  OUTLINED_FUNCTION_92_12();
  OUTLINED_FUNCTION_89();

  return sub_267EE5CB0();
}

uint64_t sub_267EE42A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_14();
  v15 = v14;
  OUTLINED_FUNCTION_9_1();
  *v16 = v15;
  v18 = *(v17 + 136);
  v19 = *(v17 + 128);
  OUTLINED_FUNCTION_36_28();
  v21 = *(v20 + 120);
  v23 = v22[14];
  v24 = v22[13];
  v25 = v22[12];
  v26 = v22[11];
  v27 = *v13;
  OUTLINED_FUNCTION_5();
  *v28 = v27;
  v15[18] = v12;

  v29 = OUTLINED_FUNCTION_65_2();
  sub_267B9F98C(v29, v30, &qword_267EFC0B0);
  v31 = OUTLINED_FUNCTION_68_16();
  sub_267B9F98C(v31, v32, &qword_267EFC0B0);
  OUTLINED_FUNCTION_74_13(v24);
  v33 = OUTLINED_FUNCTION_50_1();
  sub_267B9F98C(v33, v34, &qword_267EFC0B0);
  OUTLINED_FUNCTION_74_13(v21);
  OUTLINED_FUNCTION_74_13(a9);
  if (v12)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_40();

    return MEMORY[0x2822009F8](v35, v36, v37);
  }

  else
  {
    v40 = v15[15];
    v39 = v15[16];
    v42 = v15[13];
    v41 = v15[14];
    v45 = v15 + 11;
    v43 = v15[11];
    v44 = v45[1];

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_40();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
  }
}

uint64_t sub_267EE44BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v13;
  *(v8 + 80) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267EE45CC, 0, 0);
}

uint64_t sub_267EE45CC()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v36 = v0[14];
  v37 = v0[13];
  v38 = v0[11];
  v34 = v0[15];
  v35 = v0[10];
  v32 = v0[16];
  v33 = v0[9];
  v30 = v0[7];
  v31 = v0[8];
  v29 = v0[6];
  v6 = v0[4];
  v5 = v0[5];
  v7 = sub_267EF79B8();
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 16);
  v9(v2, v6, v7);
  OUTLINED_FUNCTION_17_34(v2);
  v9(v1, v5, v7);
  v10 = OUTLINED_FUNCTION_57_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v7);
  v9(v3, v29, v7);
  OUTLINED_FUNCTION_17_34(v3);
  v9(v4, v30, v7);
  OUTLINED_FUNCTION_17_34(v4);
  v13 = OUTLINED_FUNCTION_33_25();
  (v9)(v13);
  OUTLINED_FUNCTION_12_53();
  v14 = OUTLINED_FUNCTION_33_25();
  (v9)(v14);
  OUTLINED_FUNCTION_12_53();
  v15 = OUTLINED_FUNCTION_33_25();
  (v9)(v15);
  OUTLINED_FUNCTION_12_53();
  v16 = OUTLINED_FUNCTION_33_25();
  (v9)(v16);
  OUTLINED_FUNCTION_12_53();
  v17 = swift_task_alloc();
  v0[21] = v17;
  *v17 = v0;
  v17[1] = sub_267EE47C0;
  v19 = v0[19];
  v18 = v0[20];
  v21 = v0[17];
  v20 = v0[18];
  v23 = v0[15];
  v22 = v0[16];
  v25 = v0[13];
  v24 = v0[14];
  v26 = v0[12];
  OUTLINED_FUNCTION_102_10();
  OUTLINED_FUNCTION_93();

  return sub_267EE50D8();
}

uint64_t sub_267EE47C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14();
  v17 = v16;
  OUTLINED_FUNCTION_9_1();
  *v18 = v17;
  v20 = *(v19 + 168);
  v56 = *(v19 + 160);
  OUTLINED_FUNCTION_84();
  v55 = *(v21 + 152);
  OUTLINED_FUNCTION_84();
  v23 = *(v22 + 144);
  OUTLINED_FUNCTION_36_28();
  v25 = *(v24 + 136);
  v27 = v26[16];
  v28 = v26[15];
  v29 = v26[14];
  v30 = v26[13];
  v31 = *v15;
  OUTLINED_FUNCTION_5();
  *v32 = v31;
  v17[22] = v14;

  OUTLINED_FUNCTION_60_17(v30);
  OUTLINED_FUNCTION_60_17(v29);
  OUTLINED_FUNCTION_60_17(v28);
  OUTLINED_FUNCTION_60_17(v27);
  OUTLINED_FUNCTION_60_17(v25);
  OUTLINED_FUNCTION_60_17(a9);
  OUTLINED_FUNCTION_60_17(v55);
  OUTLINED_FUNCTION_60_17(v56);
  if (v14)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_64_3();

    return MEMORY[0x2822009F8](v33, v34, v35);
  }

  else
  {
    v38 = v17[19];
    v37 = v17[20];
    v40 = v17[17];
    v39 = v17[18];
    v42 = v17[15];
    v41 = v17[16];
    v45 = v17 + 13;
    v43 = v17[13];
    v44 = v45[1];

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_64_3();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, v55, v56, a12, a13, a14);
  }
}

uint64_t sub_267EE4A18()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];

  OUTLINED_FUNCTION_17();
  v10 = v0[22];

  return v9();
}

uint64_t sub_267EE4AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v12;
  v8[11] = v13;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267EE4BDC, 0, 0);
}

uint64_t sub_267EE4BDC()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v32 = v0[13];
  v33 = v0[12];
  v30 = v0[14];
  v31 = v0[10];
  v28 = v0[15];
  v29 = v0[9];
  v26 = v0[7];
  v27 = v0[8];
  v5 = v0[5];
  v25 = v0[6];
  v6 = v0[4];
  v7 = sub_267EF79B8();
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 16);
  v9(v1, v6, v7);
  OUTLINED_FUNCTION_17_34(v1);
  v9(v2, v5, v7);
  OUTLINED_FUNCTION_17_34(v2);
  v9(v3, v25, v7);
  OUTLINED_FUNCTION_12_53();
  v10 = OUTLINED_FUNCTION_83_10();
  (v9)(v10);
  OUTLINED_FUNCTION_17_34(v4);
  v11 = OUTLINED_FUNCTION_33_25();
  (v9)(v11);
  OUTLINED_FUNCTION_12_53();
  v12 = OUTLINED_FUNCTION_33_25();
  (v9)(v12);
  OUTLINED_FUNCTION_12_53();
  v13 = OUTLINED_FUNCTION_33_25();
  (v9)(v13);
  OUTLINED_FUNCTION_12_53();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v7);
  v14 = swift_task_alloc();
  v0[20] = v14;
  *v14 = v0;
  v14[1] = sub_267EE4DC4;
  v16 = v0[18];
  v15 = v0[19];
  v18 = v0[16];
  v17 = v0[17];
  v20 = v0[14];
  v19 = v0[15];
  v22 = v0[12];
  v21 = v0[13];
  v23 = v0[11];
  OUTLINED_FUNCTION_102_10();

  return sub_267EE50D8();
}

uint64_t sub_267EE4DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14();
  v17 = v16;
  OUTLINED_FUNCTION_9_1();
  *v18 = v17;
  v20 = *(v19 + 160);
  v56 = *(v19 + 152);
  OUTLINED_FUNCTION_84();
  v55 = *(v21 + 144);
  OUTLINED_FUNCTION_84();
  v23 = *(v22 + 136);
  OUTLINED_FUNCTION_36_28();
  v25 = *(v24 + 128);
  v27 = v26[15];
  v28 = v26[14];
  v29 = v26[13];
  v30 = v26[12];
  v31 = *v15;
  OUTLINED_FUNCTION_5();
  *v32 = v31;
  v17[21] = v14;

  OUTLINED_FUNCTION_60_17(v30);
  OUTLINED_FUNCTION_60_17(v29);
  OUTLINED_FUNCTION_60_17(v28);
  OUTLINED_FUNCTION_60_17(v27);
  OUTLINED_FUNCTION_60_17(v25);
  OUTLINED_FUNCTION_60_17(a9);
  OUTLINED_FUNCTION_60_17(v55);
  OUTLINED_FUNCTION_60_17(v56);
  if (v14)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_64_3();

    return MEMORY[0x2822009F8](v33, v34, v35);
  }

  else
  {
    v38 = v17[18];
    v37 = v17[19];
    v40 = v17[16];
    v39 = v17[17];
    v42 = v17[14];
    v41 = v17[15];
    v45 = v17 + 12;
    v43 = v17[12];
    v44 = v45[1];

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_64_3();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, v55, v56, a12, a13, a14);
  }
}

uint64_t sub_267EE501C()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];

  OUTLINED_FUNCTION_17();
  v10 = v0[21];

  return v9();
}

uint64_t sub_267EE50D8()
{
  OUTLINED_FUNCTION_12();
  v1[16] = v23;
  v1[17] = v0;
  v1[14] = v2;
  v1[15] = v22;
  v10 = OUTLINED_FUNCTION_100_9(v3, v4, v5, v6, v7, v8, v9);
  v1[18] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[19] = v11;
  v13 = *(v12 + 64);
  v1[20] = OUTLINED_FUNCTION_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v14);
  v16 = *(v15 + 64);
  v1[21] = OUTLINED_FUNCTION_50();
  v1[22] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_267EE51BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v19 = *(v18 + 176);
  v20 = *(v18 + 136);
  v85 = *(v18 + 112);
  v86 = *(v18 + 120);
  v83 = *(v18 + 96);
  v84 = *(v18 + 104);
  v21 = *(v18 + 80);
  v22 = *(v18 + 88);
  v24 = *(v18 + 64);
  v23 = *(v18 + 72);
  v25 = *(v18 + 56);
  v82 = *(v20 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  *(v18 + 184) = sub_267EE6290(v82);
  *(v18 + 192) = v26;
  sub_267EF90F8();
  v27 = sub_267EF79B8();
  *(v18 + 200) = v27;
  v30 = OUTLINED_FUNCTION_115_8(v19, v28, v29, v27);
  v31 = type metadata accessor for SearchForMessagesOfferReplyParameters(v30);
  *(v18 + 208) = v31;
  sub_267BD3DDC(v19, v25 + v31[6]);
  sub_267BE855C(v24, v25);
  sub_267BE855C(v23, v25 + v31[17]);
  sub_267BE855C(v21, v25 + v31[16]);
  sub_267BE855C(v22, v25 + v31[7]);
  sub_267BE855C(v83, v25 + v31[14]);
  sub_267BE855C(v84, v25 + v31[15]);
  sub_267BE855C(v85, v25 + v31[18]);
  sub_267BE855C(v86, v25 + v31[13]);
  v32 = v20[6];
  OUTLINED_FUNCTION_11_6(v20 + 2, v20[5]);
  v33 = OUTLINED_FUNCTION_6_4();
  v34(v33);
  v35 = *(v18 + 40);
  v36 = *(v18 + 48);
  OUTLINED_FUNCTION_117_10();
  OUTLINED_FUNCTION_6_4();
  LOBYTE(v20) = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v18 + 16));
  if (v20)
  {
    v37 = *(v18 + 128);
    *(v18 + 216) = *(v82 + 128);
    OUTLINED_FUNCTION_85_13(v37);
    v38 = OUTLINED_FUNCTION_108();
    *(v18 + 224) = sub_267E3A014(v38, v39);
    v40 = sub_267BDAF74();
    *(v18 + 240) = v40 & 1;
    if (v40)
    {
      OUTLINED_FUNCTION_10(&dword_267F00478);
      v87 = v41;
      v42 = swift_task_alloc();
      *(v18 + 232) = v42;
      *v42 = v18;
      v42[1] = sub_267EE54D8;
      OUTLINED_FUNCTION_89();

      return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, v82, v83, v84, v85, v87, a15, a16, a17, a18);
    }

    v56 = *(v18 + 216);
    v55 = *(v18 + 224);
    v58 = *(v18 + 184);
    v57 = *(v18 + 192);
    v60 = *(v18 + 160);
    v59 = *(v18 + 168);
    v61 = *(v18 + 144);
    sub_267EF7C18();
    OUTLINED_FUNCTION_234();
    OUTLINED_FUNCTION_16_41();

    OUTLINED_FUNCTION_251();
    if (v57)
    {
      v62 = *(v18 + 168);
      v63 = *(v18 + 176);
      v64 = *(v18 + 160);
      v65 = *(v18 + 144);
      v66 = OUTLINED_FUNCTION_77_10(*(v18 + 152));
      v67(v66);

      OUTLINED_FUNCTION_17();
      goto LABEL_10;
    }

    v76 = *(v18 + 200);
    v77 = *(v18 + 208);
    v78 = *(v18 + 160);
    v79 = *(v18 + 168);
    v80 = *(v18 + 144);
    OUTLINED_FUNCTION_76_15(*(v18 + 152));
    v81();
    OUTLINED_FUNCTION_2_76();
  }

  else
  {
  }

  v53 = *(v18 + 168);
  v52 = *(v18 + 176);
  v54 = *(v18 + 160);

  OUTLINED_FUNCTION_1();
LABEL_10:
  OUTLINED_FUNCTION_89();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, v82, v83, v84, v85, v86, a15, a16, a17, a18);
}

uint64_t sub_267EE54D8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 232);
  *v2 = *v0;
  *(v1 + 241) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267EE55C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 241);
  v16 = *(v14 + 240);
  v17 = *(v14 + 216);
  v18 = *(v14 + 224);
  v20 = *(v14 + 184);
  v19 = *(v14 + 192);
  v22 = *(v14 + 160);
  v21 = *(v14 + 168);
  v23 = *(v14 + 144);
  sub_267EF7C18();
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_15_47();

  OUTLINED_FUNCTION_63_15();
  if (v18)
  {
    v24 = *(v14 + 168);
    v25 = *(v14 + 176);
    v26 = *(v14 + 160);
    v27 = *(v14 + 144);
    v28 = OUTLINED_FUNCTION_77_10(*(v14 + 152));
    v29(v28);

    OUTLINED_FUNCTION_17();
  }

  else
  {
    v30 = *(v14 + 200);
    v31 = *(v14 + 208);
    v32 = *(v14 + 160);
    v33 = *(v14 + 168);
    v34 = *(v14 + 144);
    OUTLINED_FUNCTION_76_15(*(v14 + 152));
    v35();
    OUTLINED_FUNCTION_2_76();
    v37 = *(v14 + 168);
    v36 = *(v14 + 176);
    v38 = *(v14 + 160);

    OUTLINED_FUNCTION_1();
  }

  OUTLINED_FUNCTION_64_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267EE56DC()
{
  OUTLINED_FUNCTION_12();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[9] = v5;
  v1[10] = v6;
  v1[7] = v7;
  v1[8] = v8;
  v9 = sub_267EF8248();
  v1[15] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[16] = v10;
  v12 = *(v11 + 64);
  v1[17] = OUTLINED_FUNCTION_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v13);
  v15 = *(v14 + 64);
  v1[18] = OUTLINED_FUNCTION_50();
  v1[19] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

void sub_267EE57C4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v52 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  v53 = *(v0 + 96);
  *(v0 + 160) = sub_267EE6290(v52);
  *(v0 + 168) = v8;
  sub_267EF90F8();
  v9 = sub_267EF79B8();
  *(v0 + 176) = v9;
  v12 = OUTLINED_FUNCTION_115_8(v1, v10, v11, v9);
  Parameters = type metadata accessor for SearchForMessagesOfferFullMessageReadParameters(v12);
  *(v0 + 184) = Parameters;
  sub_267BD3DDC(v1, v7 + Parameters[6]);
  v14 = OUTLINED_FUNCTION_115_6();
  sub_267BE855C(v14, v15);
  sub_267BE855C(v5, v7 + Parameters[13]);
  sub_267BE855C(v4, v7 + Parameters[11]);
  sub_267BE855C(v3, v7 + Parameters[9]);
  sub_267BE855C(v53, v7 + Parameters[10]);
  v16 = v2[6];
  OUTLINED_FUNCTION_11_6(v2 + 2, v2[5]);
  v17 = OUTLINED_FUNCTION_6_4();
  v18(v17);
  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  OUTLINED_FUNCTION_117_10();
  OUTLINED_FUNCTION_6_4();
  LOBYTE(v2) = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v2)
  {
    v21 = *(v0 + 104);
    *(v0 + 192) = *(v52 + 128);
    OUTLINED_FUNCTION_85_13(v21);
    v22 = OUTLINED_FUNCTION_108();
    *(v0 + 200) = sub_267E3A014(v22, v23);
    v24 = sub_267BDAF74();
    *(v0 + 216) = v24 & 1;
    if (v24)
    {
      OUTLINED_FUNCTION_10(&dword_267F00478);
      v25 = swift_task_alloc();
      *(v0 + 208) = v25;
      *v25 = v0;
      v25[1] = sub_267EE5AAC;
      OUTLINED_FUNCTION_15();

      __asm { BR              X2 }
    }

    v32 = *(v0 + 192);
    v31 = *(v0 + 200);
    v34 = *(v0 + 160);
    v33 = *(v0 + 168);
    v36 = *(v0 + 136);
    v35 = *(v0 + 144);
    v37 = *(v0 + 120);
    sub_267EF7C18();
    OUTLINED_FUNCTION_234();
    OUTLINED_FUNCTION_16_41();

    OUTLINED_FUNCTION_251();
    if (v33)
    {
      v38 = *(v0 + 144);
      v39 = *(v0 + 152);
      v40 = *(v0 + 136);
      v41 = *(v0 + 120);
      v42 = OUTLINED_FUNCTION_77_10(*(v0 + 128));
      v43(v42);

      OUTLINED_FUNCTION_17();
LABEL_10:
      OUTLINED_FUNCTION_15();

      __asm { BRAA            X1, X16 }
    }

    v46 = *(v0 + 176);
    v47 = *(v0 + 184);
    v48 = *(v0 + 136);
    v49 = *(v0 + 144);
    v50 = *(v0 + 120);
    OUTLINED_FUNCTION_76_15(*(v0 + 128));
    v51();
    OUTLINED_FUNCTION_2_76();
  }

  else
  {
  }

  v29 = *(v0 + 144);
  v28 = *(v0 + 152);
  v30 = *(v0 + 136);

  OUTLINED_FUNCTION_1();
  goto LABEL_10;
}

uint64_t sub_267EE5AAC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 208);
  *v2 = *v0;
  *(v1 + 217) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267EE5B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 217);
  v16 = *(v14 + 216);
  v17 = *(v14 + 192);
  v18 = *(v14 + 200);
  v20 = *(v14 + 160);
  v19 = *(v14 + 168);
  v22 = *(v14 + 136);
  v21 = *(v14 + 144);
  v23 = *(v14 + 120);
  sub_267EF7C18();
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_15_47();

  OUTLINED_FUNCTION_63_15();
  if (v18)
  {
    v24 = *(v14 + 144);
    v25 = *(v14 + 152);
    v26 = *(v14 + 136);
    v27 = *(v14 + 120);
    v28 = OUTLINED_FUNCTION_77_10(*(v14 + 128));
    v29(v28);

    OUTLINED_FUNCTION_17();
  }

  else
  {
    v30 = *(v14 + 176);
    v31 = *(v14 + 184);
    v32 = *(v14 + 136);
    v33 = *(v14 + 144);
    v34 = *(v14 + 120);
    OUTLINED_FUNCTION_76_15(*(v14 + 128));
    v35();
    OUTLINED_FUNCTION_2_76();
    v37 = *(v14 + 144);
    v36 = *(v14 + 152);
    v38 = *(v14 + 136);

    OUTLINED_FUNCTION_1();
  }

  OUTLINED_FUNCTION_64_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267EE5CB0()
{
  OUTLINED_FUNCTION_12();
  v1[14] = v2;
  v1[15] = v0;
  v10 = OUTLINED_FUNCTION_100_9(v3, v4, v5, v6, v7, v8, v9);
  v1[16] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[17] = v11;
  v13 = *(v12 + 64);
  v1[18] = OUTLINED_FUNCTION_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v14);
  v16 = *(v15 + 64);
  v1[19] = OUTLINED_FUNCTION_50();
  v1[20] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

void sub_267EE5D88()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v51 = *(v0 + 96);
  v52 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);
  v50 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  *(v0 + 168) = sub_267EE6290(v50);
  *(v0 + 176) = v8;
  sub_267EF90F8();
  v9 = sub_267EF79B8();
  *(v0 + 184) = v9;
  v12 = OUTLINED_FUNCTION_115_8(v1, v10, v11, v9);
  v13 = type metadata accessor for SearchForMessagesOfferMultilingualReplyParameters(v12);
  *(v0 + 192) = v13;
  sub_267BD3DDC(v1, v7 + v13[6]);
  sub_267BE855C(v6, v7);
  sub_267BE855C(v5, v7 + v13[16]);
  sub_267BE855C(v4, v7 + v13[15]);
  sub_267BE855C(v3, v7 + v13[7]);
  sub_267BE855C(v51, v7 + v13[13]);
  sub_267BE855C(v52, v7 + v13[14]);
  v14 = v2[6];
  OUTLINED_FUNCTION_11_6(v2 + 2, v2[5]);
  v15 = OUTLINED_FUNCTION_6_4();
  v16(v15);
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);
  OUTLINED_FUNCTION_117_10();
  OUTLINED_FUNCTION_6_4();
  LOBYTE(v2) = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v2)
  {
    v19 = *(v0 + 112);
    *(v0 + 200) = *(v50 + 128);
    OUTLINED_FUNCTION_85_13(v19);
    v20 = OUTLINED_FUNCTION_108();
    *(v0 + 208) = sub_267E3A014(v20, v21);
    v22 = sub_267BDAF74();
    *(v0 + 224) = v22 & 1;
    if (v22)
    {
      OUTLINED_FUNCTION_10(&dword_267F00478);
      v23 = swift_task_alloc();
      *(v0 + 216) = v23;
      *v23 = v0;
      v23[1] = sub_267EE608C;
      OUTLINED_FUNCTION_15();

      __asm { BR              X2 }
    }

    v30 = *(v0 + 200);
    v29 = *(v0 + 208);
    v32 = *(v0 + 168);
    v31 = *(v0 + 176);
    v34 = *(v0 + 144);
    v33 = *(v0 + 152);
    v35 = *(v0 + 128);
    sub_267EF7C18();
    OUTLINED_FUNCTION_234();
    OUTLINED_FUNCTION_16_41();

    OUTLINED_FUNCTION_251();
    if (v31)
    {
      v36 = *(v0 + 152);
      v37 = *(v0 + 160);
      v38 = *(v0 + 144);
      v39 = *(v0 + 128);
      v40 = OUTLINED_FUNCTION_77_10(*(v0 + 136));
      v41(v40);

      OUTLINED_FUNCTION_17();
LABEL_10:
      OUTLINED_FUNCTION_15();

      __asm { BRAA            X1, X16 }
    }

    v44 = *(v0 + 184);
    v45 = *(v0 + 192);
    v46 = *(v0 + 144);
    v47 = *(v0 + 152);
    v48 = *(v0 + 128);
    OUTLINED_FUNCTION_76_15(*(v0 + 136));
    v49();
    OUTLINED_FUNCTION_2_76();
  }

  else
  {
  }

  v27 = *(v0 + 152);
  v26 = *(v0 + 160);
  v28 = *(v0 + 144);

  OUTLINED_FUNCTION_1();
  goto LABEL_10;
}

uint64_t sub_267EE608C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 216);
  *v2 = *v0;
  *(v1 + 225) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267EE6178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 225);
  v16 = *(v14 + 224);
  v17 = *(v14 + 200);
  v18 = *(v14 + 208);
  v20 = *(v14 + 168);
  v19 = *(v14 + 176);
  v22 = *(v14 + 144);
  v21 = *(v14 + 152);
  v23 = *(v14 + 128);
  sub_267EF7C18();
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_15_47();

  OUTLINED_FUNCTION_63_15();
  if (v18)
  {
    v24 = *(v14 + 152);
    v25 = *(v14 + 160);
    v26 = *(v14 + 144);
    v27 = *(v14 + 128);
    v28 = OUTLINED_FUNCTION_77_10(*(v14 + 136));
    v29(v28);

    OUTLINED_FUNCTION_17();
  }

  else
  {
    v30 = *(v14 + 184);
    v31 = *(v14 + 192);
    v32 = *(v14 + 144);
    v33 = *(v14 + 152);
    v34 = *(v14 + 128);
    OUTLINED_FUNCTION_76_15(*(v14 + 136));
    v35();
    OUTLINED_FUNCTION_2_76();
    v37 = *(v14 + 152);
    v36 = *(v14 + 160);
    v38 = *(v14 + 144);

    OUTLINED_FUNCTION_1();
  }

  OUTLINED_FUNCTION_64_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267EE6290(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = *(a1 + 120);
  if (v9)
  {
    v10 = v9;
    v11 = [v10 spokenPhrase];
    v12 = sub_267EF9028();

    return v12;
  }

  v14 = *(a1 + 16);
  if (sub_267BAF0DC(v14) >= 2)
  {
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_labelsCATs);
    sub_267C7FEA8();
    v12 = sub_267EFA028();
    v17 = v16;
    sub_267B9F98C(v8, &qword_2802295B8, &qword_267EFDCB0);
    if (v17)
    {
      return v12;
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v18 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
    v19 = sub_267EF89F8();
    v20 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_36(v20))
    {
LABEL_19:

      return 0;
    }

    v21 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v21);
    v24 = "#ReplyOfferFlowStrategy Unable to get group conversation label";
LABEL_18:
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v22, v23, v24);
    OUTLINED_FUNCTION_26();
    goto LABEL_19;
  }

  if (!sub_267BAF0DC(v14))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v28 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v28, qword_280240FB0);
    v19 = sub_267EF89F8();
    v29 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_36(v29))
    {
      goto LABEL_19;
    }

    v30 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v30);
    v24 = "#ReplyOfferFlowStrategy Unable to get personal conversation label";
    goto LABEL_18;
  }

  sub_267BBD0EC(0, (v14 & 0xC000000000000001) == 0, v14);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x26D609870](0, v14);
  }

  else
  {
    v25 = *(v14 + 32);
  }

  v26 = v25;
  v27 = [v25 displayName];

  v12 = sub_267EF9028();
  return v12;
}

uint64_t sub_267EE64F4()
{
  v1 = sub_267EF2CC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = &type metadata for Features;
  v34 = sub_267BAFCAC();
  LOBYTE(v32) = 14;
  v6 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(&v32);
  if ((v6 & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v16 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
    v17 = sub_267EF89F8();
    v18 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_5_2(v18))
    {
      goto LABEL_17;
    }

    *OUTLINED_FUNCTION_32() = 0;
    v21 = "#ReplyOfferFlowStrategy not specifying language as mulitlingual feature flag is off";
    goto LABEL_16;
  }

  v7 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  sub_267C8F7C0(*(v7 + 24), &v32);
  if (!v33)
  {
    sub_267B9F98C(&v32, &qword_280229910, &unk_267EFEB70);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v22 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
    v17 = sub_267EF89F8();
    v23 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_5_2(v23))
    {
      goto LABEL_17;
    }

    *OUTLINED_FUNCTION_32() = 0;
    v21 = "#ReplyOfferFlowStrategy no component to reply to";
LABEL_16:
    OUTLINED_FUNCTION_28_11(&dword_267B93000, v19, v20, v21);
    OUTLINED_FUNCTION_32_0();
LABEL_17:

    return 0;
  }

  sub_267BE58F4(&v32, v35);
  v8 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversationManager);
  if (!v8)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v24 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v24, qword_280240FB0);
    v25 = sub_267EF89F8();
    v26 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v26))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v27, v28, "#ReplyOfferFlowStrategy conversationManager is nil, cannot specify message language");
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_23;
  }

  v9 = v35[4];
  __swift_project_boxed_opaque_existential_0(v35, v35[3]);
  v10 = *(v9 + 32);

  v11 = OUTLINED_FUNCTION_63();
  v12 = v10(v11);
  v14 = v13;
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  v15 = *(v8 + 248);

  sub_267BB7A18(v12, v14, v15);

  if (v37 != 1)
  {
    if (v37 != 255)
    {
      sub_267B9F98C(v36, &qword_280229918, &qword_267F003B0);
    }

LABEL_23:
    __swift_destroy_boxed_opaque_existential_0(v35);
    return 0;
  }

  sub_267BEB520(v8 + 152, &v32);
  v30 = xmmword_267F00B80;
  v31 = 4;
  sub_267EF2CB8();
  sub_267C5BD60(&v30, v5);

  (*(v2 + 8))(v5, v1);
  sub_267B9EF14(&v32);
  __swift_destroy_boxed_opaque_existential_0(v35);
  return 1;
}

uint64_t sub_267EE68F0()
{
  v40 = &type metadata for Features;
  v41 = sub_267BAFCAC();
  LOBYTE(v39[0]) = 24;
  v1 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(v39);
  if ((v1 & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v20 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v20, qword_280240FB0);
    v21 = sub_267EF89F8();
    v22 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_36(v22))
    {
      goto LABEL_23;
    }

    v23 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v23);
    v26 = "#ReplyOfferFlowStrategy: CarPlay Tapback feature flag is off, not offering Tapback button";
    goto LABEL_22;
  }

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  sub_267C8F7C0(*(v2 + 24), &v37);
  if (!v38)
  {
    sub_267B9F98C(&v37, &qword_280229910, &unk_267EFEB70);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v27 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v27, qword_280240FB0);
    v21 = sub_267EF89F8();
    v28 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_36(v28))
    {
      goto LABEL_23;
    }

    v29 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v29);
    v26 = "#ReplyOfferFlowStrategy: Unable to get readable component for a tapback target";
LABEL_22:
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v24, v25, v26);
    OUTLINED_FUNCTION_26();
LABEL_23:

LABEL_30:
    v19 = 0;
    return v19 & 1;
  }

  sub_267BE58F4(&v37, v39);
  v3 = v41;
  __swift_project_boxed_opaque_existential_0(v39, v40);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_26_0();
  v7 = v6(v5);
  if (!sub_267BAF0DC(v7))
  {

LABEL_25:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v30 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v30, qword_280240FB0);
    v31 = sub_267EF89F8();
    v32 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_36(v32))
    {
      v33 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v33);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v34, v35, "#ReplyOfferFlowStrategy: Tapback button is only offered for message services available in 1P Messages app");
      OUTLINED_FUNCTION_26();
    }

    __swift_destroy_boxed_opaque_existential_0(v39);
    goto LABEL_30;
  }

  sub_267BBD0EC(0, (v7 & 0xC000000000000001) == 0, v7);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x26D609870](0, v7);
  }

  else
  {
    v8 = *(v7 + 32);
  }

  v9 = v8;

  v10 = sub_267EE7060(v9);
  if (v11)
  {
    v12 = v10;
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

  *&v37 = v12;
  *(&v37 + 1) = v13;
  MEMORY[0x28223BE20](v10);
  v14 = sub_267BC2B54();

  if (!v14)
  {
    goto LABEL_25;
  }

  v15 = v41;
  __swift_project_boxed_opaque_existential_0(v39, v40);
  v16 = *(v15 + 88);
  v17 = OUTLINED_FUNCTION_26_0();
  v19 = v18(v17);
  __swift_destroy_boxed_opaque_existential_0(v39);
  return v19 & 1;
}

uint64_t sub_267EE6C44()
{
  sub_267BA1B7C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_confirmedResponse);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_catProvider));
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_labelsCATs);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_featureFlags));
  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversationManager);
}

uint64_t type metadata accessor for ReplyOfferFlowStrategy()
{
  result = qword_28022D250;
  if (!qword_28022D250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267EE6D28()
{
  result = type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
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

uint64_t sub_267EE6E18(uint64_t a1)
{
  v4 = *(*v1 + 248);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_267BAEBEC;

  return v8(a1);
}

uint64_t sub_267EE6F3C(uint64_t a1)
{
  v4 = *(*v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_267BBD07C;

  return v8(a1);
}

uint64_t sub_267EE7060(void *a1)
{
  v1 = [a1 serviceName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267EE70C4()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_28_6();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[10];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_60_1(v4);
  *v5 = v6;
  v5[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_26_25();
  OUTLINED_FUNCTION_40();

  return sub_267EE4AD4(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_267EE7170()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_28_6();
  v1 = *(v0 + 64);
  v16 = *(v0 + 72);
  v2 = *(v0 + 88);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_60_1(v3);
  *v4 = v5;
  v4[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_26_25();
  OUTLINED_FUNCTION_64_3();

  return sub_267EE44BC(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_267EE7238()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_60_1(v3);
  *v4 = v5;
  v4[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_26_25();
  OUTLINED_FUNCTION_40();

  return sub_267EE4058(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_267EE72E0()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_60_1(v3);
  *v4 = v5;
  v4[1] = sub_267BAEBEC;
  OUTLINED_FUNCTION_26_25();
  OUTLINED_FUNCTION_40();

  return sub_267EE1AB4(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_267EE738C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD8, &qword_267F08298);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v2[9] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4298();
  v2[10] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v2[11] = v7;
  v9 = *(v8 + 64);
  v2[12] = OUTLINED_FUNCTION_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v10);
  v12 = *(v11 + 64);
  v2[13] = OUTLINED_FUNCTION_2();
  v13 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v13);
  v15 = *(v14 + 64);
  v2[14] = OUTLINED_FUNCTION_2();
  v16 = sub_267EF48A8();
  v2[15] = v16;
  OUTLINED_FUNCTION_30_0(v16);
  v2[16] = v17;
  v19 = *(v18 + 64);
  v2[17] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_267EE74FC()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0[8] + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversationManager);
  if (v1 && (v2 = *(v1 + 112), v0[18] = v2, (v2 - 1) <= 1))
  {
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_267EE769C;
    v4 = v0[8];

    return sub_267EE0B94();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);
    v7 = sub_267EF89F8();
    v8 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v8))
    {
      v9 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v9);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v10, v11, "#SpokenReplyOfferFlowStrategy Not offering full read prompt for CarPlay announce. Returning empty output");
      OUTLINED_FUNCTION_26();
    }

    v12 = v0[7];

    sub_267EF3D38();
    sub_267EF3D28();
    OUTLINED_FUNCTION_23_37();

    OUTLINED_FUNCTION_1();

    return v13();
  }
}

uint64_t sub_267EE769C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 152);
  *v4 = *v1;
  v3[20] = v7;

  if (v0)
  {
    v8 = v3[17];
    v10 = v3[13];
    v9 = v3[14];
    v11 = v3[12];
    v12 = v3[9];

    OUTLINED_FUNCTION_17();

    return v13();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }
}

uint64_t sub_267EE7804()
{
  if (v0[18] == 2)
  {
    v1 = v0[20];
    sub_267EE9344();
    v2 = sub_267EF92D8();
    [v1 setDialog_];
  }

  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  sub_267EF3C98();
  OUTLINED_FUNCTION_294();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EE7DA8(v5);
  sub_267EF4158();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  sub_267EF4818();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v10 = sub_267EF8A08();
  __swift_project_value_buffer(v10, qword_280240FB0);
  v11 = sub_267EF89F8();
  v12 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v12))
  {
    v13 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v13);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v14, v15, "#SpokenReplyOfferFlowStrategy update dimissal settings");
    OUTLINED_FUNCTION_26();
  }

  v16 = v0[17];
  v18 = v0[11];
  v17 = v0[12];
  v20 = v0[9];
  v19 = v0[10];
  v21 = v0[8];

  sub_267EF42A8();
  sub_267EF4288();
  (*(v18 + 16))(v20, v17, v19);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v19);
  sub_267EF4828();
  v25 = sub_267EF4198();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v0[21] = sub_267EF4188();
  v28 = *(*(v21 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation) + 128);
  v0[22] = v28;
  v29 = v21[5];
  v30 = v21[6];
  __swift_project_boxed_opaque_existential_0(v21 + 2, v29);
  v31 = *(v30 + 8);

  v31(v29, v30);
  v32 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v33 = sub_267EF3C48();
  v34 = swift_task_alloc();
  v0[23] = v34;
  *v34 = v0;
  v34[1] = sub_267EE7AE4;
  v35 = v0[20];
  v36 = v0[17];
  v37 = v0[7];

  return sub_267BCF3A4(v37, v35, v36, v28, v33 & 1);
}

uint64_t sub_267EE7AE4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = v5[23];
  v7 = v5[22];
  v8 = v5[21];
  v13 = *v1;
  *(v3 + 192) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 16));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267EE7C2C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_16_42();
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_37_1();
  v4(v3);
  v5 = *(v0 + 8);
  v6 = OUTLINED_FUNCTION_66();
  v7(v6);
  OUTLINED_FUNCTION_23_37();

  OUTLINED_FUNCTION_1();

  return v8();
}

uint64_t sub_267EE7CDC()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_16_42();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_37_1();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_66();
  v8(v7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v9 = v0[24];
  v10 = v0[17];
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[12];
  v14 = v0[9];

  OUTLINED_FUNCTION_17();

  return v15();
}

uint64_t sub_267EE7DA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267EF53D8();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v15 = sub_267EF8A08();
  __swift_project_value_buffer(v15, qword_280240FB0);
  v16 = sub_267EF89F8();
  v17 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v17))
  {
    v18 = OUTLINED_FUNCTION_32();
    *v18 = 0;
    _os_log_impl(&dword_267B93000, v16, v17, "#SpokenOfferFullReadingStrategy submitting context update for spoken follow-up", v18, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  if (qword_280228900 != -1)
  {
    OUTLINED_FUNCTION_7_3();
  }

  sub_267BB8DFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_267F00200;
  *(v19 + 32) = sub_267BB90E4(0);
  *(v19 + 40) = v20;
  *(v19 + 48) = sub_267BB90E4(1);
  *(v19 + 56) = v21;
  *(v19 + 64) = sub_267BB90E4(2);
  *(v19 + 72) = v22;
  *(v19 + 80) = sub_267BB90E4(5);
  *(v19 + 88) = v23;
  *(v19 + 96) = sub_267BB90E4(6);
  *(v19 + 104) = v24;
  *(v19 + 112) = sub_267C8F86C(4);
  *(v19 + 120) = v25;
  sub_267EF4148();
  sub_267EF40D8();
  sub_267EF4108();
  v26 = [objc_allocWithZone(MEMORY[0x277D47128]) init];
  v27 = *MEMORY[0x277D47C10];
  v28 = sub_267EF9028();
  sub_267BF64EC(v28, v29, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_267EFCA40;
  *(v30 + 32) = v26;
  sub_267EF40F8();
  sub_267EF4098();
  v31 = sub_267EF6488();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_267EF6478();
  sub_267BBB050();

  v34 = *(v5 + 16);
  v34(v12, v14, v2);
  v35 = sub_267EF89F8();
  v36 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v36))
  {
    v37 = swift_slowAlloc();
    v58 = v14;
    v38 = v37;
    v56 = v37;
    v57 = swift_slowAlloc();
    v62 = v57;
    *v38 = 136315138;
    v39 = v60;
    v34(v60, v12, v2);
    sub_267EF5458();
    v55 = v35;
    v61[3] = v2;
    v61[4] = sub_267BF65C0();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v61);
    v34(boxed_opaque_existential_0, v39, v2);
    v53 = sub_267EF5448();
    v59 = a1;
    v42 = v41;
    v43 = v12;
    v44 = *(v5 + 8);
    v54 = v36;
    v44(v39, v2);
    v44(v43, v2);
    __swift_destroy_boxed_opaque_existential_0(v61);
    v45 = sub_267BA33E8(v53, v42, &v62);

    v47 = v55;
    v46 = v56;
    *(v56 + 4) = v45;
    _os_log_impl(&dword_267B93000, v47, v54, "#makeContextForConfirmIntent submitting NLv4 dialog act: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    OUTLINED_FUNCTION_32_0();
    v14 = v58;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v48 = v12;
    v44 = *(v5 + 8);
    v44(v48, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v49 = *(v5 + 72);
  v50 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_267EFC020;
  v34((v51 + v50), v14, v2);
  sub_267EF4088();
  return (v44)(v14, v2);
}

uint64_t sub_267EE82E0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v2[14] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  v2[15] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF48A8();
  v2[16] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v2[17] = v10;
  v12 = *(v11 + 64);
  v2[18] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267EE83D8()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    *v4 = 0;
    _os_log_impl(&dword_267B93000, v2, v3, "#SpokenReplyOfferFlowStrategy submitting context update for spoken follow-up", v4, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v5 = v0[13];

  v6 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v7 = *(v6 + 8);
  v8 = OUTLINED_FUNCTION_37_1();
  v9(v8);
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_37_1();
  v11 = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v12 = sub_267EF89F8();
  v13 = sub_267EF95D8();
  v14 = os_log_type_enabled(v12, v13);
  if (v11)
  {
    if (v14)
    {
      v15 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v15);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v16, v17, "#SpokenReplyOfferFlowStrategy CarPlay, executing pattern without dialog");
      OUTLINED_FUNCTION_26();
    }

    v18 = swift_task_alloc();
    v0[19] = v18;
    *v18 = v0;
    v18[1] = sub_267EE8694;
    v19 = v0[13];

    return sub_267EE23E8();
  }

  else
  {
    if (v14)
    {
      v21 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v21);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v22, v23, "#SpokenReplyOfferFlowStrategy not CarPlay, returning NLContextUpdate only output");
      OUTLINED_FUNCTION_26();
    }

    v25 = v0[13];
    v24 = v0[14];
    v26 = v0[12];

    sub_267EE8C84(v24);
    sub_267EF4158();
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    v31 = sub_267EF4CC8();
    v32 = MEMORY[0x277D5C1D8];
    v26[3] = v31;
    v26[4] = v32;
    __swift_allocate_boxed_opaque_existential_0(v26);
    sub_267EF4C98();
    v33 = v0[18];
    v34 = v0[14];
    v35 = v0[15];

    OUTLINED_FUNCTION_1();

    return v36();
  }
}

uint64_t sub_267EE8694()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 152);
  *v4 = *v1;
  v3[20] = v7;

  if (v0)
  {
    v8 = v3[18];
    v11 = v3 + 14;
    v9 = v3[14];
    v10 = v11[1];

    OUTLINED_FUNCTION_17();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_267EE87D8()
{
  v1 = v0[20];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  sub_267EE9344();
  v6 = v1;
  v7 = sub_267EF92D8();
  [v6 setDialog_];

  sub_267EF3CA8();
  OUTLINED_FUNCTION_294();
  sub_267EF47A8();
  sub_267EF4858();
  sub_267EE8C84(v4);
  sub_267EF4158();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_267EF4818();
  v12 = sub_267EF4198();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[21] = sub_267EF4188();
  v15 = *(*(v5 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation) + 128);
  v0[22] = v15;
  v16 = v5[5];
  v17 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v16);
  v18 = *(v17 + 8);

  v18(v16, v17);
  v19 = v0[11];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
  v20 = sub_267EF3C48();
  v21 = swift_task_alloc();
  v0[23] = v21;
  *v21 = v0;
  v21[1] = sub_267EE89DC;
  v22 = v0[20];
  v23 = v0[18];
  v24 = v0[12];

  return sub_267BCF3A4(v24, v22, v23, v15, v20 & 1);
}

uint64_t sub_267EE89DC()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = v5[23];
  v7 = v5[22];
  v8 = v5[21];
  v9 = v5[20];
  v10 = *v1;
  *(v3 + 192) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 56));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267EE8B48()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_66();
  v6(v5);
  v7 = *(v0 + 144);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);

  OUTLINED_FUNCTION_1();

  return v10();
}

uint64_t sub_267EE8BE0()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_66();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v7 = *(v0 + 192);
  v8 = *(v0 + 144);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_267EE8C84@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v54 = sub_267EF4158();
  v2 = OUTLINED_FUNCTION_58(v54);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294B0, &qword_267F001F0);
  v10 = OUTLINED_FUNCTION_18(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v52 - v13;
  v15 = sub_267EF8AE8();
  v16 = OUTLINED_FUNCTION_58(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - v24;
  v26 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  swift_beginAccess();
  sub_267C8F7C0(*(v26 + 24), v56);
  v27 = v57;
  v28 = 0x280228000;
  if (!v57)
  {
    sub_267B9FF34(v56, &qword_280229910, &unk_267EFEB70);
LABEL_11:
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
    goto LABEL_12;
  }

  v29 = v58;
  __swift_project_boxed_opaque_existential_0(v56, v57);
  v30 = (*(v29 + 16))(v27, v29);
  if (!sub_267BAF0DC(v30))
  {

    __swift_destroy_boxed_opaque_existential_0(v56);
    v28 = 0x280228000uLL;
    goto LABEL_11;
  }

  sub_267BBD0EC(0, (v30 & 0xC000000000000001) == 0, v30);
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x26D609870](0, v30);
  }

  else
  {
    v31 = *(v30 + 32);
  }

  v32 = v31;

  sub_267E61584(v14);

  __swift_destroy_boxed_opaque_existential_0(v56);
  v28 = 0x280228000;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
  {
    v53 = *(v18 + 32);
    v53(v25, v14, v15);
    (*(v18 + 16))(v23, v25, v15);
    sub_267C70CB0();
    v34 = v33;
    v35 = *(v33 + 16);
    if (v35 >= *(v33 + 24) >> 1)
    {
      sub_267C70CB0();
      v34 = v51;
    }

    (*(v18 + 8))(v25, v15);
    *(v34 + 16) = v35 + 1;
    v53((v34 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v35), v23, v15);
    v28 = 0x280228000;
    goto LABEL_17;
  }

LABEL_12:
  sub_267B9FF34(v14, &qword_2802294B0, &qword_267F001F0);
  if (*(v28 + 2072) != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v36 = sub_267EF8A08();
  __swift_project_value_buffer(v36, qword_280240FB0);
  v37 = sub_267EF89F8();
  v38 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v38))
  {
    v39 = OUTLINED_FUNCTION_32();
    *v39 = 0;
    _os_log_impl(&dword_267B93000, v37, v38, "#SpokenReplyOfferFlowStrategy No RR entity to donate", v39, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v34 = MEMORY[0x277D84F90];
LABEL_17:
  sub_267EF4148();
  if (qword_280228900 != -1)
  {
    OUTLINED_FUNCTION_7_3();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  sub_267EF4088();
  if (*(v34 + 16))
  {

    sub_267EF4058();
  }

  if (*(v28 + 2072) != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v40 = sub_267EF8A08();
  __swift_project_value_buffer(v40, qword_280240FB0);
  v41 = sub_267EF89F8();
  v42 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v56[0] = v44;
    *v43 = 134218242;
    *(v43 + 4) = *(v34 + 16);
    *(v43 + 12) = 2080;

    v46 = MEMORY[0x26D608FD0](v45, v15);
    v48 = v47;

    v49 = sub_267BA33E8(v46, v48, v56);

    *(v43 + 14) = v49;
    _os_log_impl(&dword_267B93000, v41, v42, "#SpokenReplyOfferFlowStrategy submitting %ld entities: %s", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v44);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  (*(v4 + 32))(v55, v8, v54);
}

uint64_t sub_267EE9264()
{
  v0 = *sub_267BA1AEC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SpokenReplyOfferFlowStrategy()
{
  result = qword_28022D268;
  if (!qword_28022D268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_267EE9344()
{
  result = qword_2802295A0;
  if (!qword_2802295A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802295A0);
  }

  return result;
}

BOOL sub_267EE9388(uint64_t a1, void *a2)
{
  if (!a2[2])
  {
    return 0;
  }

  v4 = a2[5];
  sub_267EF9AC8();
  OUTLINED_FUNCTION_12_54();
  v7 = ~v6;
  do
  {
    v8 = v5 & v7;
    v9 = (1 << (v5 & v7)) & *(a2 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    sub_267C96570(a2[6] + 40 * v8, v13);
    v11 = MEMORY[0x26D6097A0](v13, a1);
    sub_267C965CC(v13);
    v5 = v8 + 1;
  }

  while ((v11 & 1) == 0);
  return v10;
}

uint64_t sub_267EE9454(char a1, void *a2)
{
  if (!a2[2])
  {
    return 0;
  }

  v4 = a2[5];
  sub_267EF9FC8();
  sub_267D6C0D4(a1);
  OUTLINED_FUNCTION_39_27();

  sub_267EFA018();
  OUTLINED_FUNCTION_12_54();
  v7 = ~v6;
  do
  {
    v8 = v5 & v7;
    v9 = (1 << (v5 & v7)) & *(a2 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    sub_267D6C0D4(*(a2[6] + v8));
    v12 = v11;
    v14 = v13;
    sub_267D6C0D4(a1);
    if (v12 == v16 && v14 == v15)
    {

      return 1;
    }

    OUTLINED_FUNCTION_91_1();
    v18 = sub_267EF9EA8();

    v5 = v8 + 1;
  }

  while ((v18 & 1) == 0);
  return v10;
}

uint64_t sub_267EE9580(unsigned __int8 a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v4 = a1;
    v5 = a2[5];
    sub_267EF9FC8();
    MEMORY[0x26D609CA0](v4);
    sub_267EFA018();
    OUTLINED_FUNCTION_24_46();
    do
    {
      OUTLINED_FUNCTION_23_38(v6);
      if (!v8)
      {
        break;
      }

      v6 = v7 + 1;
    }

    while (*(a2[6] + v7) != v4);
  }

  return v2;
}

uint64_t sub_267EE9604(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v5 = a2[5];
    sub_267EF9FB8();
    OUTLINED_FUNCTION_24_46();
    do
    {
      OUTLINED_FUNCTION_23_38(v6);
      if (!v8)
      {
        break;
      }

      v6 = v7 + 1;
    }

    while (*(a2[6] + 8 * v7) != a1);
  }

  return v2;
}

uint64_t sub_267EE9664(char a1, void *a2)
{
  if (!a2[2])
  {
    goto LABEL_49;
  }

  v4 = a2[5];
  sub_267EF9FC8();
  sub_267D6CFAC(a1);
  OUTLINED_FUNCTION_39_27();

  sub_267EFA018();
  OUTLINED_FUNCTION_12_54();
  v7 = v6 & ~v5;
  if ((*(a2 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7))
  {
    v8 = ~v5;
    while (1)
    {
      v9 = 0xE500000000000000;
      v10 = 0x6D75626C61;
      switch(*(a2[6] + v7))
      {
        case 1:
          v9 = 0xE300000000000000;
          v10 = 7368801;
          break;
        case 2:
          v9 = 0xE700000000000000;
          v11 = 0x6C6369747261;
          goto LABEL_18;
        case 3:
          v9 = 0xE600000000000000;
          v10 = 0x747369747261;
          break;
        case 4:
          v9 = 0xE400000000000000;
          v10 = 1802465122;
          break;
        case 5:
          v9 = 0xE700000000000000;
          v11 = 0x646F73697065;
          goto LABEL_18;
        case 6:
          v10 = 0x6569766F6DLL;
          break;
        case 7:
          v9 = 0xE800000000000000;
          v10 = 0x6E6F697461636F6CLL;
          break;
        case 8:
          v10 = 0x697461636F4C796DLL;
          v9 = 0xEA00000000006E6FLL;
          break;
        case 9:
          v12 = 1953458288;
          goto LABEL_14;
        case 0xA:
          v9 = 0xE800000000000000;
          v10 = 0x7473696C79616C70;
          break;
        case 0xB:
          v9 = 0xE700000000000000;
          v10 = 0x74736163646F70;
          break;
        case 0xC:
          v9 = 0xEA0000000000746FLL;
          v10 = 0x68736E6565726373;
          break;
        case 0xD:
          v9 = 0xE400000000000000;
          v10 = 2003789939;
          break;
        case 0xE:
          v9 = 0xE400000000000000;
          v10 = 1735290739;
          break;
        case 0xF:
          v12 = 1701079414;
LABEL_14:
          v10 = v12 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
          break;
        case 0x10:
          v9 = 0xE700000000000000;
          v11 = 0x676170626577;
LABEL_18:
          v10 = v11 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
          break;
        default:
          break;
      }

      v13 = 0xE500000000000000;
      v14 = 0x6D75626C61;
      switch(a1)
      {
        case 1:
          v13 = 0xE300000000000000;
          v14 = 7368801;
          break;
        case 2:
          v13 = 0xE700000000000000;
          v15 = 0x6C6369747261;
          goto LABEL_37;
        case 3:
          v13 = 0xE600000000000000;
          v14 = 0x747369747261;
          break;
        case 4:
          v13 = 0xE400000000000000;
          v14 = 1802465122;
          break;
        case 5:
          v13 = 0xE700000000000000;
          v15 = 0x646F73697065;
          goto LABEL_37;
        case 6:
          v14 = 0x6569766F6DLL;
          break;
        case 7:
          v13 = 0xE800000000000000;
          v14 = 0x6E6F697461636F6CLL;
          break;
        case 8:
          v14 = 0x697461636F4C796DLL;
          v13 = 0xEA00000000006E6FLL;
          break;
        case 9:
          v16 = 1953458288;
          goto LABEL_33;
        case 10:
          v13 = 0xE800000000000000;
          v14 = 0x7473696C79616C70;
          break;
        case 11:
          v13 = 0xE700000000000000;
          v14 = 0x74736163646F70;
          break;
        case 12:
          v13 = 0xEA0000000000746FLL;
          v14 = 0x68736E6565726373;
          break;
        case 13:
          v13 = 0xE400000000000000;
          v14 = 2003789939;
          break;
        case 14:
          v13 = 0xE400000000000000;
          v14 = 1735290739;
          break;
        case 15:
          v16 = 1701079414;
LABEL_33:
          v14 = v16 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
          break;
        case 16:
          v13 = 0xE700000000000000;
          v15 = 0x676170626577;
LABEL_37:
          v14 = v15 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
          break;
        default:
          break;
      }

      if (v10 == v14 && v9 == v13)
      {
        break;
      }

      v18 = sub_267EF9EA8();

      if ((v18 & 1) == 0)
      {
        v7 = (v7 + 1) & v8;
        if ((*(a2 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7))
        {
          continue;
        }
      }

      return v18 & 1;
    }

    v18 = 1;
  }

  else
  {
LABEL_49:
    v18 = 0;
  }

  return v18 & 1;
}

void sub_267EE9A5C()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v2 = sub_267EF6288();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  if (*(v1 + 16))
  {
    v11 = *(v1 + 40);
    OUTLINED_FUNCTION_16_43();
    sub_267EF1ACC(v12, v13);
    sub_267EF8F48();
    v14 = v1 + 56;
    v21 = v1;
    OUTLINED_FUNCTION_12_54();
    v17 = ~v16;
    do
    {
      v18 = v15 & v17;
      if (((1 << (v15 & v17)) & *(v14 + (((v15 & v17) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v5 + 16))(v10, *(v21 + 48) + *(v5 + 72) * v18, v2);
      OUTLINED_FUNCTION_16_43();
      sub_267EF1ACC(&qword_28022C118, v19);
      v20 = sub_267EF8FE8();
      (*(v5 + 8))(v10, v2);
      v15 = v18 + 1;
    }

    while ((v20 & 1) == 0);
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EE9C14()
{
  v10 = sub_267EF9648();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_267EF9638();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_267EF8EA8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_267BA9F38(0, &qword_280229038, 0x277D85C78);
  sub_267EF8E68();
  v11 = MEMORY[0x277D84F90];
  sub_267EF1ACC(&qword_280229040, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229048, &unk_267EFC400);
  sub_267C16E7C(&qword_280229050, &qword_280229048, &unk_267EFC400);
  sub_267EF99C8();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_267EF9668();
  qword_28022D278 = result;
  return result;
}

uint64_t sub_267EE9EA4(uint64_t a1, uint64_t a2)
{
  if (qword_280228730 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_62_0();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_267CB8FE8(0xD000000000000013, 0x8000000267F0F820, sub_267EF1AC4, v4);
}

void sub_267EE9F78(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_267BAF0DC(a1);
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D609870](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v8 = sub_267EF7C18();
    v10 = v9;

    ++v4;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v5 + 16);
        sub_267BF4EE8();
        v5 = v14;
      }

      v11 = *(v5 + 16);
      if (v11 >= *(v5 + 24) >> 1)
      {
        sub_267BF4EE8();
        v5 = v15;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v10;
      v4 = v7;
    }
  }

  a2(v5);
}

void sub_267EEA0E0()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_267EF8E58();
  v9 = OUTLINED_FUNCTION_58(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  v16 = v15 - v14;
  v32 = sub_267EF8EA8();
  v17 = OUTLINED_FUNCTION_58(v32);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  v24 = v23 - v22;
  if (qword_280228910 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_65_3();
  v25 = swift_allocObject();
  v25[2] = v1;
  v25[3] = v7;
  v25[4] = v5;
  v25[5] = v3;
  v33[4] = sub_267EF19B4;
  v33[5] = v25;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 1107296256;
  v33[2] = sub_267C16DE4;
  v33[3] = &block_descriptor_22;
  v26 = _Block_copy(v33);

  sub_267EF8E78();
  sub_267EF1ACC(&qword_280229180, MEMORY[0x277D85198]);
  v27 = OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_28_39();
  sub_267C16E7C(v29, v30, v31);
  sub_267EF99C8();
  MEMORY[0x26D609320](0, v24, v16, v26);
  _Block_release(v26);
  (*(v11 + 8))(v16, v8);
  (*(v19 + 8))(v24, v32);

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EEA3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;

  v9(sub_267EF1A04, v10);
}

void sub_267EEA460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v58 = a5;
  v57 = sub_267EF89E8();
  v56 = *(v57 - 8);
  v9 = *(v56 + 64);
  v10 = MEMORY[0x28223BE20](v57);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v11;
  MEMORY[0x28223BE20](v10);
  v61 = &v54 - v13;
  if (*(a2 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_appResolutionType) == 3)
  {
    sub_267EEB180(a3, a4, a1);
  }

  sub_267B9AFEC(a2 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_signalFactory, v69);
  v14 = v70;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
  v59 = a2;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v21 = type metadata accessor for ExperimentSignalFactory();
  v67 = v21;
  v68 = &off_2878D94F8;
  *&v66 = v20;
  type metadata accessor for SignalInstrumentation();
  v22 = swift_allocObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v66, v21);
  v24 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v60 = a1;
  v26 = (&v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;
  v22[5] = v21;
  v22[6] = &off_2878D94F8;
  v22[2] = v28;
  v29 = MEMORY[0x277D84F90];
  v22[7] = MEMORY[0x277D84F90];
  v30 = v22 + 7;
  __swift_destroy_boxed_opaque_existential_0(&v66);
  __swift_destroy_boxed_opaque_existential_0(v69);
  v31 = v59;
  sub_267EEBAD4();
  if (v32)
  {
    v58 = v32;
    if (qword_280228820 != -1)
    {
      swift_once();
    }

    v33 = qword_280240FC8;
    sub_267EF89C8();
    sub_267EF9698();
    sub_267EF89A8();
    sub_267B9AFEC(v31 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_signalGatherer, v69);
    __swift_project_boxed_opaque_existential_0(v69, v70);
    swift_beginAccess();
    v34 = *v30;
    v35 = *(*v30 + 16);
    if (v35)
    {
      v65 = v29;

      sub_267C7279C(0, v35, 0);
      v36 = v65;
      v37 = v34 + 32;
      do
      {
        sub_267B9AFEC(v37, v62);
        v38 = v63;
        v39 = v64;
        __swift_project_boxed_opaque_existential_0(v62, v63);
        (*(v39 + 16))(&v66, v38, v39);
        __swift_destroy_boxed_opaque_existential_0(v62);
        v65 = v36;
        v41 = *(v36 + 16);
        v40 = *(v36 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_267C7279C((v40 > 1), v41 + 1, 1);
          v36 = v65;
        }

        *(v36 + 16) = v41 + 1;
        sub_267B9A5E8(&v66, v36 + 40 * v41 + 32);
        v37 += 40;
        --v35;
      }

      while (v35);
    }

    v42 = v56;
    v43 = v57;
    (*(v56 + 16))(v12, v61, v57);
    v44 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v45 = (v55 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    (*(v42 + 32))(v47 + v44, v12, v43);
    *(v47 + v45) = v59;
    *(v47 + v46) = v22;
    v48 = v58;
    *(v47 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8)) = v58;

    v49 = v48;
    sub_267EF0A6C();

    (*(v42 + 8))(v61, v43);
    __swift_destroy_boxed_opaque_existential_0(v69);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v50 = sub_267EF8A08();
    __swift_project_value_buffer(v50, qword_280240FB0);
    v51 = sub_267EF89F8();
    v52 = sub_267EF95E8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_267B93000, v51, v52, "#AppSelectionSignalCollection: failed to create SELF message", v53, 2u);
      MEMORY[0x26D60A7B0](v53, -1, -1);
    }
  }
}

uint64_t sub_267EEAB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v60 = a1;
  v56 = a4;
  v57 = a3;
  v61 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v53 - v7;
  v8 = sub_267EF4D68();
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_267EF4E88();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v54 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A118, &qword_267F004A0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v53 - v24;
  sub_267C2FB6C(v60, &v53 - v24, &qword_28022A118, &qword_267F004A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v21, v25, v12);
    v26 = v13;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v27 = sub_267EF8A08();
    __swift_project_value_buffer(v27, qword_280240FB0);
    v28 = *(v13 + 16);
    v28(v19, v21, v12);
    v29 = sub_267EF89F8();
    v30 = sub_267EF95E8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v62 = v32;
      *v31 = 136315138;
      v60 = v21;
      v28(v54, v19, v12);
      v33 = sub_267EF9098();
      v35 = v34;
      v36 = *(v26 + 8);
      v36(v19, v12);
      v37 = sub_267BA33E8(v33, v35, &v62);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_267B93000, v29, v30, "#AppSelectionSignalCollection: SignalGatherer#gatherValuesAndTimings error: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x26D60A7B0](v32, -1, -1);
      MEMORY[0x26D60A7B0](v31, -1, -1);

      v36(v60, v12);
    }

    else
    {

      v51 = *(v26 + 8);
      v51(v19, v12);
      v51(v21, v12);
    }
  }

  else
  {
    v38 = v55;
    (*(v55 + 32))(v11, v25, v8);
    v39 = v11;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v40 = sub_267EF8A08();
    __swift_project_value_buffer(v40, qword_280240FB0);
    v41 = sub_267EF89F8();
    v42 = sub_267EF95D8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_267B93000, v41, v42, "#AppSelectionSignalCollection: SignalGatherer#gatherValuesAndTimings complete gatherAndSave success", v43, 2u);
      MEMORY[0x26D60A7B0](v43, -1, -1);
    }

    sub_267EF4D58();
    sub_267EEFE64();

    v44 = v57;
    v45 = *(v57 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_messageStream + 24);
    v46 = *(v57 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_messageStream + 32);
    __swift_project_boxed_opaque_existential_0((v57 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_messageStream), v45);
    v47 = OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_isolatedID;
    v48 = sub_267EF2D28();
    v49 = v44 + v47;
    v50 = v58;
    (*(*(v48 - 8) + 16))(v58, v49, v48);
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v48);
    (*(v46 + 8))(v59, v50, v45, v46);
    sub_267B9F98C(v50, &qword_280229430, &qword_267EFD2C0);
    (*(v38 + 8))(v39, v8);
  }

  sub_267EF9688();
  if (qword_280228820 != -1)
  {
    swift_once();
  }

  return sub_267EF89B8();
}

void sub_267EEB180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_shadowAppResolution);
  if (v11)
  {
    v12 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_shadowAppResolution);

    sub_267EF93D8();
    v13 = sub_267EF93F8();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v11;
    v14[5] = v3;
    v14[6] = a1;
    v14[7] = a2;
    v14[8] = a3;

    sub_267E8FA18();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v15 = sub_267EF8A08();
    __swift_project_value_buffer(v15, qword_280240FB0);
    v20 = sub_267EF89F8();
    v16 = sub_267EF95E8();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = OUTLINED_FUNCTION_32();
      *v17 = 0;
      _os_log_impl(&dword_267B93000, v20, v16, "No shadow app resolution task running", v17, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v18 = v20;
  }
}

uint64_t sub_267EEB37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0) - 8) + 64) + 15;
  v8[6] = swift_task_alloc();
  v8[7] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D350, &unk_267F0F5C0);
  v8[8] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v13 = swift_task_alloc();
  v8[9] = v13;
  v14 = sub_267EF7D48();
  v8[10] = v14;
  v15 = *(v14 - 8);
  v8[11] = v15;
  v16 = *(v15 + 64) + 15;
  v8[12] = swift_task_alloc();
  v17 = *(MEMORY[0x277D857D0] + 4);
  v18 = swift_task_alloc();
  v8[13] = v18;
  *v18 = v8;
  v18[1] = sub_267EEB528;
  v19 = MEMORY[0x277D84A98];
  v20 = MEMORY[0x277D84AC0];

  return MEMORY[0x282200440](v13, a4, v14, v19, v20);
}

uint64_t sub_267EEB528()
{
  v1 = *(*v0 + 104);
  v2 = *v0;
  OUTLINED_FUNCTION_5();
  *v3 = v2;

  return MEMORY[0x2822009F8](sub_267EEB61C, 0, 0);
}

uint64_t sub_267EEB61C()
{
  v1 = v0[8];
  v2 = v0[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_267B9F98C(v2, &qword_28022D350, &unk_267F0F5C0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v3 = sub_267EF8A08();
    __swift_project_value_buffer(v3, qword_280240FB0);
    v4 = sub_267EF89F8();
    v5 = sub_267EF95E8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_32();
      *v6 = 0;
      _os_log_impl(&dword_267B93000, v4, v5, "Shadow app resolution task failed", v6, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v7 = v0[12];
    v8 = v0[9];
    v10 = v0[6];
    v9 = v0[7];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[6];
    v14 = v0[7];
    v15 = v0[2];
    (*(v0[11] + 32))(v0[12], v2, v0[10]);
    v16 = *(v15 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_messageStream + 32);
    __swift_project_boxed_opaque_existential_0((v15 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_messageStream), *(v15 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_messageStream + 24));
    v17 = OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_requestID;
    v18 = sub_267EF2D28();
    OUTLINED_FUNCTION_22(v18);
    v20 = *(v19 + 16);
    v20(v14, v15 + v17, v18);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v18);
    v20(v13, v15 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_inferenceID, v18);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v18);
    v21 = swift_task_alloc();
    v0[14] = v21;
    *v21 = v0;
    v21[1] = sub_267EEB8E8;
    v22 = v0[12];
    v24 = v0[6];
    v23 = v0[7];
    v25 = v0[4];
    v26 = v0[5];
    v27 = v0[3];

    return sub_267C3275C();
  }
}

uint64_t sub_267EEB8E8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  OUTLINED_FUNCTION_271();
  sub_267B9F98C(v6, v7, v8);
  OUTLINED_FUNCTION_271();
  sub_267B9F98C(v9, v10, v11);

  return MEMORY[0x2822009F8](sub_267EEBA34, 0, 0);
}

uint64_t sub_267EEBA34()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[12];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

void sub_267EEBAD4()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v0;
  v181 = v3;
  v175 = v5;
  v176 = v4;
  v177 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_60();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_45_30();
  v15 = sub_267EF4F78();
  v16 = OUTLINED_FUNCTION_58(v15);
  v179 = v17;
  v180 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_0();
  v178 = v21 - v20;
  OUTLINED_FUNCTION_26_2();
  v22 = sub_267EF2D28();
  v23 = OUTLINED_FUNCTION_58(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_60();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v157 - v32;
  v182 = [objc_allocWithZone(MEMORY[0x277D581F0]) init];
  if (!v182)
  {
LABEL_16:
    if (qword_280228818 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

  v34 = [objc_allocWithZone(MEMORY[0x277D581F8]) init];
  if (!v34)
  {
    v73 = v182;
LABEL_15:

    goto LABEL_16;
  }

  v174 = v34;
  v171 = v1;
  v35 = [objc_allocWithZone(MEMORY[0x277D58220]) init];
  if (!v35)
  {

    v73 = v174;
    goto LABEL_15;
  }

  v36 = v35;
  v165 = v8;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v37 = sub_267EF8A08();
  v38 = __swift_project_value_buffer(v37, qword_280240FB0);

  v172 = v38;
  v39 = sub_267EF89F8();
  v40 = sub_267EF95D8();

  v41 = os_log_type_enabled(v39, v40);
  v170 = v33;
  v173 = v36;
  v162 = v30;
  if (v41)
  {
    v42 = OUTLINED_FUNCTION_48();
    v43 = OUTLINED_FUNCTION_52();
    v183[0] = v43;
    *v42 = 136315138;
    v44 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_appResolutionType);
    v45 = sub_267EF97A8();
    v167 = v13;
    v47 = v25;
    v48 = v2;
    v49 = sub_267BA33E8(v45, v46, v183);
    v13 = v167;

    *(v42 + 4) = v49;
    v2 = v48;
    v25 = v47;
    _os_log_impl(&dword_267B93000, v39, v40, "#AppSelectionSignalCollection: generating top-level SELF message for type %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    v36 = v173;
    OUTLINED_FUNCTION_32_0();
    v33 = v170;
    OUTLINED_FUNCTION_32_0();
  }

  v50 = sub_267BA9F38(0, &qword_2802294F0, 0x277D5AC78);
  v169 = v25;
  v51 = v25 + 16;
  v160 = *(v25 + 16);
  v160(v33, v2 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_isolatedID, v22);
  v52 = sub_267BBC890(v33);
  v53 = v174;
  [v174 setInferenceId_];

  [v182 setEventMetadata_];
  v54 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_intent);
  v55 = sub_267D29748();
  v59 = v55;
  v60 = v22;
  v161 = v51;
  if (!v58)
  {
    OUTLINED_FUNCTION_42_25(v55, v56, v57);
    v159 = v50;
    v77 = v175;

    v78 = sub_267EF89F8();
    v79 = sub_267EF95D8();

    v80 = os_log_type_enabled(v78, v79);
    v167 = v13;
    v168 = v2;
    if (v80)
    {
      v81 = OUTLINED_FUNCTION_48();
      v82 = OUTLINED_FUNCTION_52();
      v158 = v22;
      v83 = v79;
      v84 = v82;
      v183[0] = v82;
      *v81 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
      v85 = sub_267EF8F18();
      v87 = sub_267BA33E8(v85, v86, v183);

      *(v81 + 4) = v87;
      v88 = v83;
      v60 = v158;
      _os_log_impl(&dword_267B93000, v78, v88, "#AppSelectionSignalCollection: span matched recipients in apps %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    if (!sub_267BAF0DC(v59))
    {
      v144 = sub_267EF89F8();
      v145 = sub_267EF95E8();
      if (os_log_type_enabled(v144, v145))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_20();
        _os_log_impl(v146, v147, v148, v149, v150, 2u);
        OUTLINED_FUNCTION_40_0();
      }

      v140 = v59;
LABEL_61:
      v141 = v163;
      v142 = v164;
      v143 = 0;
      goto LABEL_62;
    }

    sub_267BBD0EC(0, (v59 & 0xC000000000000001) == 0, v59);
    v166 = v59;
    if ((v59 & 0xC000000000000001) != 0)
    {
      v89 = MEMORY[0x26D609870](0, v59);
    }

    else
    {
      v89 = *(v59 + 32);
    }

    v90 = v89;
    v91 = 1 << *(v77 + 32);
    v92 = -1;
    if (v91 < 64)
    {
      v92 = ~(-1 << v91);
    }

    v93 = v92 & *(v77 + 64);
    v94 = (v91 + 63) >> 6;

    v95 = 0;
    if (v93)
    {
      while (1)
      {
        v96 = v95;
LABEL_34:
        v97 = __clz(__rbit64(v93)) | (v96 << 6);
        v98 = (*(v77 + 48) + 16 * v97);
        v99 = *v98;
        v100 = v98[1];
        v101 = *(*(v77 + 56) + 8 * v97);

        OUTLINED_FUNCTION_51_24();
        sub_267DEB810();
        if (v102)
        {
          break;
        }

        v93 &= v93 - 1;

        v95 = v96;
        if (!v93)
        {
          goto LABEL_31;
        }
      }

LABEL_41:
      v107 = v178;
      v108 = v179;
      v109 = v180;
      (*(v179 + 104))(v178, *MEMORY[0x277D60318], v180);
      v2 = v168;
      sub_267EEC760();
      v111 = v110;
      (*(v108 + 8))(v107, v109);
      v36 = v173;
      v13 = v167;
      if (v111)
      {
        sub_267EECDF8();
        v113 = v112;

        if (v113)
        {
          [v36 setInferenceCommsAppSelectionTrainingAppIndependentSignals_];
          v114 = OUTLINED_FUNCTION_73();
          sub_267BA8944(v114, v115);

          v69 = OUTLINED_FUNCTION_2_77();
          v72 = 0;
          goto LABEL_44;
        }

        v154 = OUTLINED_FUNCTION_2_77();
        sub_267DF6BA0(v154, v155, v156, 0);

LABEL_20:
        v182 = 0;
        goto LABEL_21;
      }

      v140 = v166;
      goto LABEL_61;
    }

LABEL_31:
    while (1)
    {
      v96 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        break;
      }

      if (v96 >= v94)
      {

        goto LABEL_41;
      }

      v93 = *(v77 + 64 + 8 * v96);
      ++v95;
      if (v93)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_66:
    OUTLINED_FUNCTION_0();
LABEL_17:
    v74 = sub_267EF8A08();
    __swift_project_value_buffer(v74, qword_280240FB0);
    v65 = sub_267EF89F8();
    v75 = sub_267EF95E8();
    if (os_log_type_enabled(v65, v75))
    {
      v76 = OUTLINED_FUNCTION_32();
      *v76 = 0;
      _os_log_impl(&dword_267B93000, v65, v75, "#AppSelectionSignalCollection: failed to generate top-level SELF message", v76, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_19;
  }

  v166 = v55;
  if (v58 != 1)
  {
    v159 = v50;
    v103 = sub_267EF89F8();
    v104 = sub_267EF95E8();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = OUTLINED_FUNCTION_32();
      *v105 = 0;
      _os_log_impl(&dword_267B93000, v103, v104, "#AppSelectionSignalCollection: recipientType is empty", v105, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    v106 = &unk_267EFC000;
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_42_25(v55, v56, v57);
  v61 = v178;
  v62 = v179;
  v63 = v180;
  (*(v179 + 104))(v178, *MEMORY[0x277D60310], v180);
  sub_267EEC760();
  v65 = v64;
  (*(v62 + 8))(v61, v63);
  if (!v65)
  {

    v140 = OUTLINED_FUNCTION_2_77();
    v143 = 1;
LABEL_62:
    sub_267DF6BA0(v140, v141, v142, v143);
    goto LABEL_20;
  }

  sub_267EECDF8();
  v36 = v173;
  if (!v66)
  {

    v151 = OUTLINED_FUNCTION_2_77();
    sub_267DF6BA0(v151, v152, v153, 1);
LABEL_19:

    goto LABEL_20;
  }

  v159 = v50;
  [v173 setInferenceCommsAppSelectionTrainingAppIndependentSignals_];
  v67 = OUTLINED_FUNCTION_73();
  sub_267BA8944(v67, v68);

  v69 = OUTLINED_FUNCTION_2_77();
  v72 = 1;
LABEL_44:
  sub_267DF6BA0(v69, v70, v71, v72);
  v106 = &unk_267EFC000;
LABEL_45:

  v116 = sub_267EF89F8();
  v117 = sub_267EF95D8();

  v118 = os_log_type_enabled(v116, v117);
  v168 = v2;
  if (v118)
  {
    v119 = v2;
    v120 = OUTLINED_FUNCTION_48();
    v121 = OUTLINED_FUNCTION_52();
    v184 = v121;
    *v120 = v106[9];
    v122 = v119 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_crrCommsAppSelectionJointId;
    v123 = v171;
    sub_267C2FB6C(v122, v171, &qword_280229430, &qword_267EFD2C0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v123, 1, v60);
    v158 = v60;
    if (EnumTagSinglePayload == 1)
    {
      sub_267B9F98C(v123, &qword_280229430, &qword_267EFD2C0);
      v125 = 0;
      v126 = 0;
    }

    else
    {
      v125 = sub_267EF2CE8();
      v126 = v127;
      (*(v169 + 8))(v123, v60);
    }

    v183[0] = v125;
    v183[1] = v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v128 = sub_267EF9098();
    v130 = sub_267BA33E8(v128, v129, &v184);

    *(v120 + 4) = v130;
    _os_log_impl(&dword_267B93000, v116, v117, "#AppSelectionSignalCollection: crrCommsAppSelectionJointId:%s", v120, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v121);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    v60 = v158;
  }

  else
  {
  }

  sub_267C2FB6C(v168 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_crrCommsAppSelectionJointId, v13, &qword_280229430, &qword_267EFD2C0);
  v131 = __swift_getEnumTagSinglePayload(v13, 1, v60);
  v132 = v174;
  v133 = v169;
  if (v131 == 1)
  {
    sub_267B9F98C(v13, &qword_280229430, &qword_267EFD2C0);
  }

  else
  {
    v134 = *(v169 + 32);
    v135 = v162;
    v136 = OUTLINED_FUNCTION_49_26();
    v137(v136);
    v138 = v170;
    v160(v170, v135, v60);
    v139 = sub_267BBC890(v138);
    [v36 setCrrCommsAppSelectionJointId_];

    (*(v133 + 8))(v135, v60);
  }

  [v182 setCommsAppSelectionGroundTruthGenerated_];

LABEL_21:
  OUTLINED_FUNCTION_47();
}

void sub_267EEC760()
{
  OUTLINED_FUNCTION_48_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D2F0, &qword_267F0F558);
  v5 = OUTLINED_FUNCTION_58(v4);
  v69 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v72 = v64 - v9;
  OUTLINED_FUNCTION_26_2();
  v10 = sub_267EF4D38();
  v11 = OUTLINED_FUNCTION_58(v10);
  v71 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_0();
  v70 = v16 - v15;
  OUTLINED_FUNCTION_26_2();
  v17 = sub_267EF4F78();
  v18 = OUTLINED_FUNCTION_58(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_60();
  v67 = v23 - v24;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_45_30();
  v26 = sub_267EF4F88();
  v27 = OUTLINED_FUNCTION_58(v26);
  v68 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_0();
  v33 = v32 - v31;
  v34 = [objc_allocWithZone(MEMORY[0x277D58240]) init];
  v35 = v34;
  if (v34)
  {
    [v34 setAppResolutionType_];
    v36 = sub_267EF4E18();
    OUTLINED_FUNCTION_6_0();
    v37 = swift_allocObject();
    v65 = v10;
    v38 = v37;
    *(v37 + 16) = v35;
    v39 = v35;
    v66 = v4;
    v40 = v39;
    v41 = v36;
    v42 = v3;
    sub_267E8A1C8(v41, MEMORY[0x277D60280], sub_267EF16D0, v38);

    v43 = sub_267EF4ED8();
    v64[0] = v26;
    v44 = v43;
    OUTLINED_FUNCTION_6_0();
    v45 = swift_allocObject();
    *(v45 + 16) = v40;
    v46 = v40;
    v64[1] = v42;
    sub_267E8A1C8(v44, MEMORY[0x277D602C8], sub_267EF16D8, v45);

    (*(v20 + 104))(v1, *MEMORY[0x277D60318], v17);
    (*(v20 + 16))(v67, v1, v17);
    sub_267EF4F68();
    (*(v20 + 8))(v1, v17);
    OUTLINED_FUNCTION_6_0();
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    v48 = v46;
    sub_267EF16E8(v33, sub_267EF16E0, v47, v42);

    (*(v68 + 8))(v33, v64[0]);
    v68 = sub_267EF4FA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D340, &qword_267F0F598);
    v49 = *(v69 + 72);
    v50 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_267EFC020;
    v52 = v51 + v50;
    v54 = v70;
    v53 = v71;
    v55 = v65;
    (*(v71 + 104))(v70, *MEMORY[0x277D601C8], v65);
    OUTLINED_FUNCTION_6_0();
    v56 = swift_allocObject();
    *(v56 + 16) = v48;
    v57 = *(v53 + 32);
    v58 = v72;
    v57(v72, v54, v55);
    v57(v52, v58, v55);
    v59 = (v52 + *(v66 + 48));
    OUTLINED_FUNCTION_62_0();
    v60 = swift_allocObject();
    *(v60 + 16) = sub_267EF17E8;
    *(v60 + 24) = v56;
    *v59 = sub_267D242D4;
    v59[1] = v60;
    v61 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D348, &unk_267F0F5A0);
    OUTLINED_FUNCTION_14_49();
    sub_267EF1ACC(v62, v63);
    sub_267EF8F28();
    sub_267E8A24C();
  }

  OUTLINED_FUNCTION_47();
}

id sub_267EECCC8(void *a1, void *a2)
{
  v3 = [a1 longLongValue];

  return [a2 setRequestOriginLocale_];
}

id sub_267EECD14(void *a1, void *a2)
{
  v3 = [a1 longLongValue];

  return [a2 setRequestOriginLanguage_];
}

id sub_267EECD60(void *a1, void *a2)
{
  v3 = [a1 longLongValue];

  return [a2 setCommunicationType_];
}

id sub_267EECDAC(void *a1, void *a2)
{
  v3 = [a1 intValue];

  return [a2 setUserPersona_];
}

void sub_267EECDF8()
{
  OUTLINED_FUNCTION_48_0();
  v440 = v0;
  v453 = v3;
  v454 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D2F0, &qword_267F0F558);
  v10 = OUTLINED_FUNCTION_58(v456);
  v439 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_60();
  v444 = v14 - v15;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0();
  v443 = v17;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0();
  v448 = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  v447 = v21;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  v450 = v23;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v24);
  v452 = &v423 - v25;
  OUTLINED_FUNCTION_26_2();
  v438 = sub_267EF4D38();
  v26 = OUTLINED_FUNCTION_58(v438);
  v457 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_60();
  v442 = v30 - v31;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77_0();
  v441 = v33;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_77_0();
  v446 = v35;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_77_0();
  v445 = v37;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_77_0();
  v449 = v39;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v40);
  v451 = &v423 - v41;
  if (qword_280228818 != -1)
  {
LABEL_73:
    OUTLINED_FUNCTION_0();
  }

  v42 = sub_267EF8A08();
  v43 = __swift_project_value_buffer(v42, qword_280240FB0);

  v461 = v43;
  v44 = sub_267EF89F8();
  v45 = sub_267EF95D8();

  v46 = os_log_type_enabled(v44, v45);
  v460 = v9;
  if (v46)
  {
    v47 = OUTLINED_FUNCTION_48();
    v1 = OUTLINED_FUNCTION_52();
    v469[0] = v1;
    *v47 = 136315138;
    if (v5)
    {
      v48 = sub_267EF94E8();
      v50 = v49;
    }

    else
    {
      v50 = 0xE300000000000000;
      v48 = 7104878;
    }

    v51 = sub_267BA33E8(v48, v50, v469);

    *(v47 + 4) = v51;
    OUTLINED_FUNCTION_20();
    _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v1);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_40_0();
  }

  sub_267BA9F38(0, &qword_28022D2F8, 0x277D58238);
  v57 = sub_267EF8F28();
  v58 = (v454 + 40);
  v59 = *(v454 + 16);
  *&v60 = 136315650;
  v455 = v60;
  v458 = v5;
  v459 = v7;
  while (1)
  {
    v466 = v57;
    if (!v59)
    {
      v431 = sub_267EF5108();
      v460 = *(v440 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_intent);
      *&v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D308, &qword_267F0F568);
      v464 = *(v439 + 72);
      v439 = *(v439 + 80);
      v435 = ((v439 + 32) & ~v439) + 6 * v464;
      v101 = (v439 + 32) & ~v439;
      v458 = v101;
      v102 = swift_allocObject();
      v434 = xmmword_267F00200;
      v440 = v102;
      *(v102 + 16) = xmmword_267F00200;
      v103 = v102 + v101;
      v437 = *MEMORY[0x277D601F0];
      v104 = v457;
      v105 = (v457 + 104);
      v462 = *(v457 + 104);
      v106 = v438;
      v462(v451);
      OUTLINED_FUNCTION_6_0();
      v107 = swift_allocObject();
      OUTLINED_FUNCTION_52_22(v107);
      v108 = v104 + 32;
      v109 = *(v104 + 32);
      v457 = v108;
      v465 = v109;
      v110 = OUTLINED_FUNCTION_61_6();
      (v109)(v110);
      OUTLINED_FUNCTION_28_39();
      v109();
      OUTLINED_FUNCTION_19_49();
      v112 = (v103 + v111);
      v461 = v103;
      OUTLINED_FUNCTION_62_0();
      v113 = swift_allocObject();
      *(v113 + 16) = sub_267EF0E78;
      *(v113 + 24) = v1;
      *v112 = sub_267EF0EA4;
      v112[1] = v113;
      v114 = v464 + v103;
      LODWORD(v429) = *MEMORY[0x277D601B0];
      v463 = v105;
      v115 = v462;
      v462(v449);
      OUTLINED_FUNCTION_6_0();
      v116 = swift_allocObject();
      OUTLINED_FUNCTION_50_19(v116);
      v117 = v450;
      OUTLINED_FUNCTION_28_39();
      v118 = v465;
      v465();
      (v118)(v114, v117, v106);
      OUTLINED_FUNCTION_19_49();
      v120 = &v114[v119];
      OUTLINED_FUNCTION_62_0();
      v121 = swift_allocObject();
      *(v121 + 16) = sub_267EF0EA8;
      *(v121 + 24) = v112;
      *v120 = sub_267EF1B14;
      *(v120 + 1) = v121;
      v122 = v461 + 2 * v464;
      (v115)(v445, *MEMORY[0x277D60200], v106);
      OUTLINED_FUNCTION_6_0();
      v123 = swift_allocObject();
      OUTLINED_FUNCTION_50_19(v123);
      v124 = OUTLINED_FUNCTION_51_24();
      v125 = v465;
      (v465)(v124);
      OUTLINED_FUNCTION_28_39();
      v125();
      OUTLINED_FUNCTION_19_49();
      v127 = (v122 + v126);
      OUTLINED_FUNCTION_62_0();
      v128 = swift_allocObject();
      *(v128 + 16) = sub_267EF0ED4;
      *(v128 + 24) = v112;
      *v127 = sub_267EF1B14;
      v127[1] = v128;
      v129 = v464;
      v436 = 3 * v464;
      v130 = v461;
      v131 = v461 + 3 * v464;
      v432 = *MEMORY[0x277D601E8];
      v462(v446);
      OUTLINED_FUNCTION_6_0();
      v132 = swift_allocObject();
      OUTLINED_FUNCTION_50_19(v132);

      v133 = OUTLINED_FUNCTION_61_6();
      v134 = v465;
      (v465)(v133);
      OUTLINED_FUNCTION_28_39();
      v134();
      OUTLINED_FUNCTION_19_49();
      v136 = (v131 + v135);
      OUTLINED_FUNCTION_62_0();
      v137 = swift_allocObject();
      *(v137 + 16) = sub_267EF0F00;
      *(v137 + 24) = v112;
      *v136 = sub_267EF1B14;
      v136[1] = v137;
      v138 = v130 + 4 * v129;
      LODWORD(v428) = *MEMORY[0x277D601A8];
      v139 = v441;
      v140 = v462;
      v462(v441);
      OUTLINED_FUNCTION_6_0();
      v141 = swift_allocObject();
      OUTLINED_FUNCTION_50_19(v141);

      v142 = v443;
      v143 = v139;
      v144 = v465;
      (v465)(v443, v143, v106);
      (v144)(v138, v142, v106);
      v145 = v456;
      v146 = (v138 + *(v456 + 48));
      OUTLINED_FUNCTION_62_0();
      v147 = swift_allocObject();
      *(v147 + 16) = sub_267EF0F2C;
      *(v147 + 24) = v112;
      *v146 = sub_267EF1B14;
      v146[1] = v147;
      v433 = 5 * v464;
      v148 = v461 + 5 * v464;
      v149 = v442;
      (v140)(v442, *MEMORY[0x277D60210], v106);
      OUTLINED_FUNCTION_6_0();
      v150 = swift_allocObject();
      OUTLINED_FUNCTION_52_22(v150);
      v151 = v444;
      v152 = v465;
      (v465)(v444, v149, v106);
      (v152)(v148, v151, v106);
      v153 = (v148 + *(v145 + 48));
      OUTLINED_FUNCTION_62_0();
      v154 = swift_allocObject();
      *(v154 + 16) = sub_267EF0F58;
      *(v154 + 24) = v146;
      *v153 = sub_267EF1B14;
      v153[1] = v154;
      swift_bridgeObjectRetain_n();
      v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D310, &qword_267F0F570);
      OUTLINED_FUNCTION_14_49();
      v461 = sub_267EF1ACC(v155, v156);
      v157 = sub_267EF8F28();
      v440 = sub_267BA9F38(0, &qword_280229538, 0x277CCABB0);
      v158 = sub_267EF97F8();
      sub_267E8B378();

      v431 = sub_267EF50D8();
      v427 = sub_267EF97F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D318, &qword_267F0F578);
      v159 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D320, &qword_267F0F580) - 8);
      v160 = *v159;
      v425 = *(*v159 + 72);
      v161 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      v162 = swift_allocObject();
      v430 = xmmword_267EFCC90;
      v426 = v162;
      *(v162 + 16) = xmmword_267EFCC90;
      v163 = v162 + v161;
      v424 = v159[14];
      v164 = v462;
      (v462)(v162 + v161, v437, v106);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D328, &qword_267F0F588);
      inited = swift_initStackObject();
      v423 = xmmword_267F02660;
      *(inited + 16) = xmmword_267F02660;
      OUTLINED_FUNCTION_6_0();
      v166 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v166);
      OUTLINED_FUNCTION_62_0();
      v167 = swift_allocObject();
      *(v167 + 16) = sub_267EF0F84;
      *(v167 + 24) = v157;
      *(inited + 32) = 0;
      *(inited + 40) = sub_267EF1B14;
      *(inited + 48) = v167;
      OUTLINED_FUNCTION_6_0();
      v168 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v168);
      OUTLINED_FUNCTION_62_0();
      v169 = swift_allocObject();
      *(v169 + 16) = sub_267EF0FB0;
      *(v169 + 24) = v157;
      *(inited + 56) = 1;
      *(inited + 64) = sub_267EF1B14;
      *(inited + 72) = v169;
      OUTLINED_FUNCTION_6_0();
      v170 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v170);
      OUTLINED_FUNCTION_62_0();
      v171 = swift_allocObject();
      *(v171 + 16) = sub_267EF0FDC;
      *(v171 + 24) = v157;
      *(inited + 80) = 2;
      *(inited + 88) = sub_267EF1B14;
      *(inited + 96) = v171;
      OUTLINED_FUNCTION_6_0();
      v172 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v172);
      OUTLINED_FUNCTION_62_0();
      v173 = swift_allocObject();
      *(v173 + 16) = sub_267EF1008;
      *(v173 + 24) = v157;
      *(inited + 104) = 3;
      *(inited + 112) = sub_267EF1B14;
      *(inited + 120) = v173;
      OUTLINED_FUNCTION_6_0();
      v174 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v174);
      OUTLINED_FUNCTION_62_0();
      v175 = swift_allocObject();
      *(v175 + 16) = sub_267EF1034;
      *(v175 + 24) = v157;
      *(inited + 128) = 4;
      *(inited + 136) = sub_267EF1B14;
      *(inited + 144) = v175;
      OUTLINED_FUNCTION_6_0();
      v176 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v176);
      OUTLINED_FUNCTION_62_0();
      v177 = swift_allocObject();
      *(v177 + 16) = sub_267EF1060;
      *(v177 + 24) = v157;
      *(inited + 152) = 5;
      *(inited + 160) = sub_267EF1B14;
      *(inited + 168) = v177;
      OUTLINED_FUNCTION_6_0();
      v178 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v178);
      OUTLINED_FUNCTION_62_0();
      v179 = swift_allocObject();
      *(v179 + 16) = sub_267EF108C;
      *(v179 + 24) = v157;
      *(inited + 176) = 6;
      *(inited + 184) = sub_267EF1B14;
      *(inited + 192) = v179;
      OUTLINED_FUNCTION_6_0();
      v180 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v180);
      OUTLINED_FUNCTION_62_0();
      v181 = swift_allocObject();
      *(v181 + 16) = sub_267EF10B8;
      *(v181 + 24) = v157;
      *(inited + 200) = 7;
      *(inited + 208) = sub_267EF1B14;
      *(inited + 216) = v181;
      sub_267EF10E4();
      swift_bridgeObjectRetain_n();
      v182 = sub_267EF8F28();
      v183 = v425;
      *(v163 + v424) = v182;
      v184 = v163 + v183;
      v185 = v159[14];
      (v164)(v184, v432, v106);
      v186 = swift_initStackObject();
      *(v186 + 16) = v423;
      OUTLINED_FUNCTION_6_0();
      v187 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v187);
      OUTLINED_FUNCTION_62_0();
      v188 = swift_allocObject();
      *(v188 + 16) = sub_267EF1138;
      *(v188 + 24) = v159;
      *(v186 + 32) = 0;
      *(v186 + 40) = sub_267EF1B14;
      *(v186 + 48) = v188;
      OUTLINED_FUNCTION_6_0();
      v189 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v189);
      OUTLINED_FUNCTION_62_0();
      v190 = swift_allocObject();
      *(v190 + 16) = sub_267EF1164;
      *(v190 + 24) = v159;
      *(v186 + 56) = 1;
      *(v186 + 64) = sub_267EF1B14;
      *(v186 + 72) = v190;
      OUTLINED_FUNCTION_6_0();
      v191 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v191);
      OUTLINED_FUNCTION_62_0();
      v192 = swift_allocObject();
      *(v192 + 16) = sub_267EF1190;
      *(v192 + 24) = v159;
      *(v186 + 80) = 2;
      *(v186 + 88) = sub_267EF1B14;
      *(v186 + 96) = v192;
      OUTLINED_FUNCTION_6_0();
      v193 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v193);
      OUTLINED_FUNCTION_62_0();
      v194 = swift_allocObject();
      *(v194 + 16) = sub_267EF11BC;
      *(v194 + 24) = v159;
      *(v186 + 104) = 3;
      *(v186 + 112) = sub_267EF1B14;
      *(v186 + 120) = v194;
      OUTLINED_FUNCTION_6_0();
      v195 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v195);
      OUTLINED_FUNCTION_62_0();
      v196 = swift_allocObject();
      *(v196 + 16) = sub_267EF11E8;
      *(v196 + 24) = v159;
      *(v186 + 128) = 4;
      *(v186 + 136) = sub_267EF1B14;
      *(v186 + 144) = v196;
      OUTLINED_FUNCTION_6_0();
      v197 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v197);
      OUTLINED_FUNCTION_62_0();
      v198 = swift_allocObject();
      *(v198 + 16) = sub_267EF1214;
      *(v198 + 24) = v159;
      *(v186 + 152) = 5;
      *(v186 + 160) = sub_267EF1B14;
      *(v186 + 168) = v198;
      OUTLINED_FUNCTION_6_0();
      v199 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v199);
      OUTLINED_FUNCTION_62_0();
      v200 = swift_allocObject();
      *(v200 + 16) = sub_267EF1240;
      *(v200 + 24) = v159;
      *(v186 + 176) = 6;
      *(v186 + 184) = sub_267EF1B14;
      *(v186 + 192) = v200;
      OUTLINED_FUNCTION_6_0();
      v201 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v201);
      OUTLINED_FUNCTION_62_0();
      v202 = swift_allocObject();
      *(v202 + 16) = sub_267EF126C;
      *(v202 + 24) = v159;
      *(v186 + 200) = 7;
      *(v186 + 208) = sub_267EF1B14;
      *(v186 + 216) = v202;
      swift_bridgeObjectRetain_n();
      *(v184 + v185) = sub_267EF8F28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D338, &qword_267F0F590);
      sub_267EF8F28();
      v203 = v427;
      sub_267E8B974();

      v427 = sub_267EF5118();
      v426 = sub_267EF97F8();
      OUTLINED_FUNCTION_11_56();
      v204 = swift_allocObject();
      v425 = v204;
      *(v204 + 16) = v434;
      v205 = v204 + v458;
      v206 = v164;
      (v164)(v451, v437, v106);
      OUTLINED_FUNCTION_6_0();
      v207 = swift_allocObject();
      v208 = v465;
      *(v207 + 16) = v466;
      v209 = v452;
      v210 = OUTLINED_FUNCTION_54_0();
      (v208)(v210);
      v211 = v205;
      (v208)(v205, v209, v106);
      v212 = v456;
      v213 = (v205 + *(v456 + 48));
      v431 = v205;
      OUTLINED_FUNCTION_62_0();
      v214 = swift_allocObject();
      *(v214 + 16) = sub_267EF1298;
      *(v214 + 24) = v207;
      *v213 = sub_267EF1B14;
      v213[1] = v214;
      v215 = v464;
      v216 = v464 + v211;
      (v206)(v449, v429, v106);
      OUTLINED_FUNCTION_6_0();
      v217 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v217);
      v218 = OUTLINED_FUNCTION_61_6();
      v219 = v465;
      (v465)(v218);
      OUTLINED_FUNCTION_28_39();
      v220 = v106;
      v219();
      v221 = &v216[*(v212 + 48)];
      OUTLINED_FUNCTION_62_0();
      v222 = swift_allocObject();
      *(v222 + 16) = sub_267EF12C4;
      *(v222 + 24) = v213;
      *v221 = sub_267EF1B14;
      *(v221 + 1) = v222;
      v223 = v431;
      v224 = v431 + 2 * v215;
      v225 = v445;
      v226 = v462;
      (v462)(v445, *MEMORY[0x277D60208], v220);
      OUTLINED_FUNCTION_6_0();
      v227 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v227);
      v228 = v465;
      (v465)(v447, v225, v220);
      OUTLINED_FUNCTION_271();
      v228();
      OUTLINED_FUNCTION_19_49();
      v230 = (v224 + v229);
      OUTLINED_FUNCTION_62_0();
      v231 = swift_allocObject();
      *(v231 + 16) = sub_267EF12F0;
      *(v231 + 24) = v213;
      *v230 = sub_267EF1B14;
      v230[1] = v231;
      v232 = v223 + v436;
      v233 = v446;
      (v226)(v446, v432, v220);
      OUTLINED_FUNCTION_6_0();
      v234 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v234);

      v235 = v448;
      v236 = v233;
      v237 = v465;
      (v465)(v448, v236, v220);
      (v237)(v232, v235, v220);
      v238 = v456;
      v239 = (v232 + *(v456 + 48));
      OUTLINED_FUNCTION_62_0();
      v240 = swift_allocObject();
      *(v240 + 16) = sub_267EF131C;
      *(v240 + 24) = v213;
      *v239 = sub_267EF1B14;
      v239[1] = v240;
      v241 = v223 + 4 * v464;
      v242 = v441;
      (v226)(v441, v428, v220);
      OUTLINED_FUNCTION_6_0();
      v243 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v243);

      v244 = v443;
      v245 = v242;
      v246 = v220;
      v247 = v220;
      v248 = v465;
      (v465)(v443, v245, v247);
      (v248)(v241, v244, v246);
      v249 = v248;
      v250 = (v241 + *(v238 + 48));
      OUTLINED_FUNCTION_62_0();
      v251 = swift_allocObject();
      *(v251 + 16) = sub_267EF1348;
      *(v251 + 24) = v213;
      *v250 = sub_267EF1B14;
      v250[1] = v251;
      v252 = v431 + v433;
      v253 = v442;
      (v226)(v442, *MEMORY[0x277D601F8], v246);
      OUTLINED_FUNCTION_6_0();
      v254 = swift_allocObject();
      *(v254 + 16) = v466;
      v255 = v444;
      (v249)(v444, v253, v246);
      v256 = v246;
      (v249)(v252, v255, v246);
      OUTLINED_FUNCTION_19_49();
      v258 = (v252 + v257);
      OUTLINED_FUNCTION_62_0();
      v259 = swift_allocObject();
      *(v259 + 16) = sub_267EF1374;
      *(v259 + 24) = v254;
      *v258 = sub_267EF1B14;
      v258[1] = v259;
      swift_bridgeObjectRetain_n();
      sub_267EF8F28();
      v260 = v426;
      sub_267E8B378();

      v429 = sub_267EF4FD8();
      OUTLINED_FUNCTION_11_56();
      v261 = swift_allocObject();
      v428 = v261;
      *(v261 + 16) = v434;
      v262 = v261 + v458;
      LODWORD(v434) = *MEMORY[0x277D601C8];
      v226(v451);
      OUTLINED_FUNCTION_6_0();
      v263 = swift_allocObject();
      v264 = v465;
      *(v263 + 16) = v466;
      v265 = v452;
      OUTLINED_FUNCTION_35_32();
      v264();
      v266 = v262;
      (v264)(v262, v265, v256);
      v267 = v456;
      v268 = (v266 + *(v456 + 48));
      v269 = v266;
      v435 = v266;
      OUTLINED_FUNCTION_62_0();
      v270 = swift_allocObject();
      *(v270 + 16) = sub_267EF13A0;
      *(v270 + 24) = v263;
      *v268 = sub_267EF1B14;
      v268[1] = v270;
      v271 = v464;
      v272 = v464 + v269;
      LODWORD(v431) = *MEMORY[0x277D601A0];
      v273 = v449;
      v226(v449);
      OUTLINED_FUNCTION_6_0();
      v274 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v274);
      v275 = v450;
      v276 = v273;
      v277 = v256;
      v278 = v256;
      v279 = v465;
      (v465)(v450, v276, v278);
      (v279)(v272, v275, v277);
      v280 = &v272[*(v267 + 48)];
      OUTLINED_FUNCTION_62_0();
      v281 = swift_allocObject();
      *(v281 + 16) = sub_267EF13CC;
      *(v281 + 24) = v268;
      *v280 = sub_267EF1B14;
      *(v280 + 1) = v281;
      v282 = v435;
      v283 = v435 + 2 * v271;
      v284 = v445;
      v285 = v277;
      (v226)(v445, *MEMORY[0x277D601D8], v277);
      OUTLINED_FUNCTION_6_0();
      v286 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v286);
      v287 = v447;
      v288 = v284;
      v289 = v279;
      (v279)(v447, v288, v285);
      v290 = v285;
      (v289)(v283, v287, v285);
      OUTLINED_FUNCTION_19_49();
      v292 = (v283 + v291);
      OUTLINED_FUNCTION_62_0();
      v293 = swift_allocObject();
      *(v293 + 16) = sub_267EF13F8;
      *(v293 + 24) = v268;
      *v292 = sub_267EF1B14;
      v292[1] = v293;
      v294 = v282 + v436;
      v432 = *MEMORY[0x277D60218];
      v295 = v462;
      v462(v446);
      OUTLINED_FUNCTION_6_0();
      v296 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v296);

      v297 = OUTLINED_FUNCTION_61_6();
      (v289)(v297);
      OUTLINED_FUNCTION_35_32();
      v289();
      v298 = v456;
      v299 = (v294 + *(v456 + 48));
      OUTLINED_FUNCTION_62_0();
      v300 = swift_allocObject();
      *(v300 + 16) = sub_267EF1424;
      *(v300 + 24) = v287;
      *v299 = sub_267EF1B14;
      v299[1] = v300;
      v301 = v435 + 4 * v464;
      LODWORD(v427) = *MEMORY[0x277D601B8];
      v295(v441);
      OUTLINED_FUNCTION_6_0();
      v302 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v302);

      v303 = v443;
      OUTLINED_FUNCTION_35_32();
      v289();
      (v289)(v301, v303, v290);
      v304 = v298;
      v305 = (v301 + *(v298 + 48));
      OUTLINED_FUNCTION_62_0();
      v306 = swift_allocObject();
      *(v306 + 16) = sub_267EF1450;
      *(v306 + 24) = v287;
      *v305 = sub_267EF1B14;
      v305[1] = v306;
      v307 = v435 + v433;
      (v295)(v442, *MEMORY[0x277D601E0], v290);
      OUTLINED_FUNCTION_6_0();
      v308 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v308);
      OUTLINED_FUNCTION_35_32();
      v289();
      v309 = OUTLINED_FUNCTION_54_0();
      (v289)(v309);
      v310 = (v307 + *(v298 + 48));
      OUTLINED_FUNCTION_62_0();
      v311 = swift_allocObject();
      *(v311 + 16) = sub_267EF147C;
      *(v311 + 24) = v287;
      *v310 = sub_267EF1B14;
      v310[1] = v311;
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_38_31();
      v312 = sub_267EF97F8();
      sub_267E8B378();

      v444 = sub_267EF4FF8();
      v443 = sub_267EF97F8();
      v313 = v458;
      v314 = v464;
      OUTLINED_FUNCTION_11_56();
      v315 = swift_allocObject();
      v442 = v315;
      *(v315 + 16) = xmmword_267F01440;
      v316 = v315 + v313;
      (v295)(v451, v434, v290);
      OUTLINED_FUNCTION_6_0();
      v317 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v317);
      OUTLINED_FUNCTION_35_32();
      v289();
      OUTLINED_FUNCTION_47_21();
      v318 = v290;
      v289();
      v319 = v316;
      v320 = (v316 + *(v304 + 48));
      OUTLINED_FUNCTION_62_0();
      v321 = swift_allocObject();
      *(v321 + 16) = sub_267EF14A8;
      *(v321 + 24) = v312;
      *v320 = sub_267EF1B14;
      v320[1] = v321;
      v322 = v314 + v316;
      v441 = v316;
      v323 = v449;
      v324 = v295;
      (v295)(v449, v431, v318);
      OUTLINED_FUNCTION_6_0();
      v325 = swift_allocObject();
      v326 = v465;
      *(v325 + 16) = v466;
      v327 = v450;
      (v326)(v450, v323, v318);
      (v326)(v322, v327, v318);
      v328 = v456;
      v329 = (v322 + *(v456 + 48));
      OUTLINED_FUNCTION_62_0();
      v330 = swift_allocObject();
      *(v330 + 16) = sub_267EF14D4;
      *(v330 + 24) = v325;
      *v329 = sub_267EF1B14;
      v329[1] = v330;
      v331 = v319 + 2 * v464;
      v332 = v445;
      (v324)(v445, v432, v318);
      v333 = v324;
      OUTLINED_FUNCTION_6_0();
      v334 = swift_allocObject();
      v335 = v465;
      *(v334 + 16) = v466;
      v336 = v447;
      (v335)(v447, v332, v318);
      (v335)(v331, v336, v318);
      v337 = (v331 + *(v328 + 48));
      OUTLINED_FUNCTION_62_0();
      v338 = swift_allocObject();
      *(v338 + 16) = sub_267EF1500;
      *(v338 + 24) = v334;
      *v337 = sub_267EF1B14;
      v337[1] = v338;
      v339 = &v441[v436];
      v340 = v446;
      (v333)(v446, v427, v318);
      OUTLINED_FUNCTION_6_0();
      v341 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v341);
      v342 = v448;
      (v335)(v448, v340, v318);
      v343 = v318;
      (v335)(v339, v342, v318);
      v344 = &v339[*(v328 + 48)];
      OUTLINED_FUNCTION_62_0();
      v345 = swift_allocObject();
      *(v345 + 16) = sub_267EF152C;
      *(v345 + 24) = v337;
      *v344 = sub_267EF1B14;
      *(v344 + 1) = v345;
      swift_bridgeObjectRetain_n();
      v346 = v343;
      sub_267EF8F28();
      v347 = v443;
      sub_267E8B378();

      v448 = sub_267EF50F8();
      v447 = sub_267EF97F8();
      v348 = v458;
      v349 = v464;
      OUTLINED_FUNCTION_11_56();
      v350 = swift_allocObject();
      v446 = v350;
      *(v350 + 16) = v430;
      v351 = v350 + v348;
      v352 = v462;
      (v462)(v451, v434, v346);
      OUTLINED_FUNCTION_6_0();
      v353 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v353);
      v354 = OUTLINED_FUNCTION_54_0();
      v355 = v465;
      (v465)(v354);
      OUTLINED_FUNCTION_47_21();
      v355();
      v356 = v456;
      v357 = (v351 + *(v456 + 48));
      OUTLINED_FUNCTION_62_0();
      v358 = swift_allocObject();
      *(v358 + 16) = sub_267EF1558;
      *(v358 + 24) = v339;
      v359 = v466;
      *v357 = sub_267EF1B14;
      v357[1] = v358;
      v360 = v349 + v351;
      v361 = v449;
      (v352)(v449, v432, v346);
      OUTLINED_FUNCTION_6_0();
      v362 = swift_allocObject();
      *(v362 + 16) = v359;
      v363 = v361;
      v364 = v465;
      (v465)(v450, v363, v346);
      OUTLINED_FUNCTION_47_21();
      v364();
      v365 = (v360 + *(v356 + 48));
      OUTLINED_FUNCTION_62_0();
      v366 = swift_allocObject();
      *(v366 + 16) = sub_267EF1584;
      *(v366 + 24) = v362;
      *v365 = sub_267EF1B14;
      v365[1] = v366;
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_38_31();
      v367 = v447;
      v368 = v454;
      sub_267E8B378();

      sub_267EF4E78();
      OUTLINED_FUNCTION_6_0();
      v369 = swift_allocObject();
      OUTLINED_FUNCTION_18_45(v369);
      v370 = sub_267EF97F8();
      OUTLINED_FUNCTION_13_54(v370, MEMORY[0x277D602A0]);

      sub_267EF5048();
      OUTLINED_FUNCTION_6_0();
      v371 = swift_allocObject();
      OUTLINED_FUNCTION_18_45(v371);
      v372 = OUTLINED_FUNCTION_41_21();
      OUTLINED_FUNCTION_13_54(v372, MEMORY[0x277D603B8]);

      sub_267EF5038();
      OUTLINED_FUNCTION_6_0();
      v373 = swift_allocObject();
      OUTLINED_FUNCTION_18_45(v373);
      v374 = OUTLINED_FUNCTION_41_21();
      OUTLINED_FUNCTION_13_54(v374, MEMORY[0x277D603B0]);

      sub_267EF4F28();
      OUTLINED_FUNCTION_6_0();
      v375 = swift_allocObject();
      OUTLINED_FUNCTION_18_45(v375);
      v376 = OUTLINED_FUNCTION_41_21();
      OUTLINED_FUNCTION_32_26();
      sub_267E8B170();

      sub_267EF5028();
      OUTLINED_FUNCTION_6_0();
      v377 = swift_allocObject();
      OUTLINED_FUNCTION_18_45(v377);
      v378 = OUTLINED_FUNCTION_41_21();
      OUTLINED_FUNCTION_32_26();
      sub_267E8B170();

      sub_267EF4FE8();
      OUTLINED_FUNCTION_6_0();
      v379 = swift_allocObject();
      OUTLINED_FUNCTION_18_45(v379);
      v380 = OUTLINED_FUNCTION_41_21();
      OUTLINED_FUNCTION_32_26();
      sub_267E8B170();

      v381 = sub_267EF4E98();
      v382 = sub_267EF97F8();
      OUTLINED_FUNCTION_6_0();
      v383 = swift_allocObject();
      OUTLINED_FUNCTION_52_22(v383);
      sub_267E8AEDC(v381, MEMORY[0x277D602B0], v368, v382, sub_267EF166C, v380);

      v450 = sub_267EF50E8();
      v384 = v458;
      OUTLINED_FUNCTION_11_56();
      v385 = swift_allocObject();
      *(v385 + 16) = xmmword_267EFC020;
      v386 = v385 + v384;
      v387 = v451;
      v388 = v438;
      (v462)(v451, v437, v438);
      OUTLINED_FUNCTION_6_0();
      v389 = swift_allocObject();
      OUTLINED_FUNCTION_52_22(v389);
      v390 = v465;
      (v465)(v452, v387, v388);
      OUTLINED_FUNCTION_47_21();
      v390();
      OUTLINED_FUNCTION_19_49();
      v392 = (v386 + v391);
      OUTLINED_FUNCTION_62_0();
      v393 = swift_allocObject();
      *(v393 + 16) = sub_267EF1674;
      *(v393 + 24) = v380;
      *v392 = sub_267EF1B14;
      v392[1] = v393;

      OUTLINED_FUNCTION_38_31();
      v394 = sub_267EF97F8();
      sub_267E8B378();

      v395 = *(v359 + 16);
      if (v395)
      {
        v469[0] = MEMORY[0x277D84F90];
        sub_267EF9BF8();
        v1 = sub_267BA7F5C(v359);
        v5 = v397;
        v398 = 0;
        v7 = v359 + 64;
        v463 = (v359 + 72);
        v9 = 1;
        if ((v1 & 0x8000000000000000) == 0)
        {
          while (v1 < 1 << *(v359 + 32))
          {
            v399 = v1 >> 6;
            if ((*(v7 + 8 * (v1 >> 6)) & (1 << v1)) == 0)
            {
              goto LABEL_67;
            }

            if (*(v359 + 36) != v5)
            {
              goto LABEL_68;
            }

            LODWORD(v464) = v396;
            v465 = v398;
            v400 = *(*(v359 + 56) + 8 * v1);
            sub_267EF9BD8();
            v401 = *(v469[0] + 16);
            sub_267EF9C08();
            v359 = v466;
            v9 = 1;
            sub_267EF9C18();
            sub_267EF9BE8();
            v402 = 1 << *(v359 + 32);
            if (v1 >= v402)
            {
              goto LABEL_69;
            }

            v403 = *(v7 + 8 * v399);
            if ((v403 & (1 << v1)) == 0)
            {
              goto LABEL_70;
            }

            if (*(v359 + 36) != v5)
            {
              goto LABEL_71;
            }

            v404 = v403 & (-2 << (v1 & 0x3F));
            if (v404)
            {
              v402 = __clz(__rbit64(v404)) | v1 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v405 = v399 << 6;
              v406 = v399 + 1;
              v407 = &v463[8 * v399];
              while (v406 < (v402 + 63) >> 6)
              {
                v409 = *v407++;
                v408 = v409;
                v405 += 64;
                ++v406;
                if (v409)
                {
                  v410 = OUTLINED_FUNCTION_49_26();
                  sub_267C96654(v410, v411, v412);
                  v402 = __clz(__rbit64(v408)) + v405;
                  goto LABEL_54;
                }
              }

              v413 = OUTLINED_FUNCTION_49_26();
              sub_267C96654(v413, v414, v415);
            }

LABEL_54:
            v398 = (v465 + 1);
            if ((v465 + 1) == v395)
            {
              goto LABEL_64;
            }

            v396 = 0;
            v5 = *(v359 + 36);
            v1 = v402;
            if (v402 < 0)
            {
              break;
            }
          }
        }

        __break(1u);
LABEL_57:

        goto LABEL_60;
      }

LABEL_64:

LABEL_63:
      OUTLINED_FUNCTION_47();
      return;
    }

    v61 = v7;
    v465 = v59;
    v62 = *(v58 - 1);
    v1 = *v58;
    v63 = objc_allocWithZone(MEMORY[0x277D58238]);

    v64 = [v63 init];
    if (!v64)
    {
      goto LABEL_57;
    }

    v65 = v64;
    v66 = [objc_allocWithZone(MEMORY[0x277D58228]) init];
    if (!v66)
    {
      goto LABEL_59;
    }

    v67 = v66;
    v68 = [objc_allocWithZone(MEMORY[0x277D58230]) init];
    if (!v68)
    {

LABEL_59:

LABEL_60:

      v416 = sub_267EF89F8();
      v417 = sub_267EF95E8();
      if (os_log_type_enabled(v416, v417))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_20();
        _os_log_impl(v418, v419, v420, v421, v422, 2u);
        OUTLINED_FUNCTION_40_0();
      }

      goto LABEL_63;
    }

    v69 = v68;
    v463 = v67;
    v464 = v58;
    [v65 setMessageSignals_];
    [v65 setPhoneCallSignals_];
    v469[0] = v62;
    v469[1] = v1;
    v467 = 0x6C7070612E6D6F63;
    v468 = 0xE900000000000065;
    sub_267C7A6BC();
    sub_267C7A710();
    [v65 setIsFirstPartyApp_];
    if (v62 == v460 && v1 == v61)
    {
      v71 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_91_1();
      v71 = sub_267EF9EA8();
    }

    [v65 setIsResolvedApp_];
    if (v5)
    {
      v72 = OUTLINED_FUNCTION_91_1();
      v74 = sub_267BC2F78(v72, v73, v5);
    }

    else
    {
      v74 = 0;
    }

    [v65 setIsResolvedContactInApp_];

    v75 = v65;
    v76 = sub_267EF89F8();
    v9 = sub_267EF95D8();

    v77 = os_log_type_enabled(v76, v9);
    v462 = v69;
    if (v77)
    {
      v5 = swift_slowAlloc();
      v78 = OUTLINED_FUNCTION_52();
      v469[0] = v78;
      *v5 = v455;
      v79 = OUTLINED_FUNCTION_91_1();
      *(v5 + 4) = sub_267BA33E8(v79, v80, v81);
      *(v5 + 12) = 1024;
      *(v5 + 14) = [v75 isResolvedApp];
      *(v5 + 18) = 1024;
      *(v5 + 20) = [v75 isResolvedContactInApp];

      _os_log_impl(&dword_267B93000, v76, v9, "#AppSelectionSignalCollection: app %s: isResolvedApp=%{BOOL}d, isResolvedContactInApp=%{BOOL}d", v5, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v78);
      v57 = v466;
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

    v82 = [objc_allocWithZone(MEMORY[0x277D58258]) init];
    if (v82)
    {
      v83 = v82;
      v84 = [objc_allocWithZone(MEMORY[0x277D58248]) init];
      if (v84)
      {
        v9 = v84;
        v85 = [objc_allocWithZone(MEMORY[0x277D58250]) init];
        if (v85)
        {
          v86 = v85;
          [v83 setContactDependentMessageSignals_];
          [v83 setContactDependentPhoneCallSignals_];
          [v75 setContactDependentSignals_];

          v83 = v9;
          v9 = v86;
        }

        v83 = v9;
        v57 = v466;
      }
    }

    v87 = v459;
    v88 = v75;
    swift_isUniquelyReferenced_nonNull_native();
    v469[0] = v57;
    OUTLINED_FUNCTION_91_1();
    v89 = sub_267BA9948();
    v91 = v57[2];
    v92 = (v90 & 1) == 0;
    v7 = v91 + v92;
    if (__OFADD__(v91, v92))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v9 = v89;
    v5 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D300, &qword_267F0F560);
    if (sub_267EF9C68())
    {
      break;
    }

LABEL_34:
    v7 = v87;
    v57 = v469[0];
    if (v5)
    {
      v95 = *(v469[0] + 56);
      v96 = *(v95 + 8 * v9);
      *(v95 + 8 * v9) = v88;

      v88 = v96;
    }

    else
    {
      *(v469[0] + 8 * (v9 >> 6) + 64) |= 1 << v9;
      v97 = (v57[6] + 16 * v9);
      *v97 = v62;
      v97[1] = v1;
      *(v57[7] + 8 * v9) = v88;
      v98 = v57[2];
      v99 = __OFADD__(v98, 1);
      v100 = v98 + 1;
      if (v99)
      {
        goto LABEL_72;
      }

      v57[2] = v100;
    }

    v58 = v464 + 2;
    v59 = (v465 - 1);
    v5 = v458;
  }

  OUTLINED_FUNCTION_91_1();
  v93 = sub_267BA9948();
  if ((v5 & 1) == (v94 & 1))
  {
    v9 = v93;
    goto LABEL_34;
  }

  sub_267EF9F28();
  __break(1u);
}

void sub_267EEF93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v6 = OUTLINED_FUNCTION_17_35();
    if (v7)
    {
      v8 = OUTLINED_FUNCTION_53_24(v6);
      v9 = [v8 contactDependentSignals];
      v21 = [v9 *v5];

      if (v21)
      {
        v10 = [v4 floatValue];
        v18 = OUTLINED_FUNCTION_25_47(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21);
        [v18 v19];
      }
    }
  }
}

void sub_267EEFA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v6 = OUTLINED_FUNCTION_17_35();
    if (v7)
    {
      v8 = OUTLINED_FUNCTION_53_24(v6);
      v9 = [v8 contactDependentSignals];
      v20 = [v9 *v5];

      if (v20)
      {
        v10 = [v4 intValue];
        v17 = OUTLINED_FUNCTION_25_47(v10, v11, v10, v12, v13, v14, v15, v16, v19, v20);
        [v17 v18];
      }
    }
  }
}

void sub_267EEFAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = OUTLINED_FUNCTION_17_35();
    if (v8)
    {
      v9 = [*(*(v4 + 56) + 8 * v7) *v6];
      if (v9)
      {
        v21 = v9;
        v10 = [v5 floatValue];
        v18 = OUTLINED_FUNCTION_25_47(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21);
        [v18 v19];
      }
    }
  }
}

void sub_267EEFB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = OUTLINED_FUNCTION_17_35();
    if (v8)
    {
      v9 = [*(*(v4 + 56) + 8 * v7) *v6];
      if (v9)
      {
        v20 = v9;
        v10 = [v5 intValue];
        v17 = OUTLINED_FUNCTION_25_47(v10, v11, v10, v12, v13, v14, v15, v16, v19, v20);
        [v17 v18];
      }
    }
  }
}

void sub_267EEFC14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v6 = sub_267BA9948();
    if (v7)
    {
      v8 = *(*(a4 + 56) + 8 * v6);
      [a3 floatValue];
      [v8 setAppTimeSpentAffinityScore_];
    }
  }
}

void sub_267EEFCA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v5 = sub_267BA9948();
    if (v6)
    {
      v17 = OUTLINED_FUNCTION_53_24(v5);
      v7 = [a3 integerValue];
      v14 = OUTLINED_FUNCTION_25_47(v7, v8, v7 == 1, v9, v10, v11, v12, v13, v16, v17);
      [v14 v15];
    }
  }
}

void sub_267EEFD3C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v6 = sub_267BA9948();
    if (v7)
    {
      v8 = *(*(a4 + 56) + 8 * v6);
      [v8 setAppTimeSpentInSec_];
    }
  }
}

void sub_267EEFDD0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v5 = sub_267BA9948();
    if (v6)
    {
      v17 = OUTLINED_FUNCTION_53_24(v5);
      v7 = [a3 intValue];
      v14 = OUTLINED_FUNCTION_25_47(v7, v8, v7, v9, v10, v11, v12, v13, v16, v17);
      [v14 v15];
    }
  }
}

void sub_267EEFE64()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_267EF4D18();
  v5 = OUTLINED_FUNCTION_58(v4);
  v80 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v81 = v71 - v13;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v14 = sub_267EF8A08();
  v15 = __swift_project_value_buffer(v14, qword_280240FB0);

  v16 = sub_267EF89F8();
  v17 = sub_267EF95D8();

  v18 = os_log_type_enabled(v16, v17);
  v82 = v4;
  v78 = v11;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v86[0] = swift_slowAlloc();
    *v19 = 136315394;
    swift_beginAccess();
    LODWORD(v79) = v17;
    v20 = *(v1 + 56);

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A70, &qword_267EFEEF0);
    MEMORY[0x26D608FD0](v20, v21);

    v22 = OUTLINED_FUNCTION_49_26();
    v25 = sub_267BA33E8(v22, v23, v24);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    v26 = sub_267EF8F08();
    v28 = sub_267BA33E8(v26, v27, v86);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_267B93000, v16, v79, "#AppSelectionSignalCollection: instrumenting instrumentations=%s, signalValues=%s", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    v4 = v82;
    OUTLINED_FUNCTION_32_0();
  }

  swift_beginAccess();
  v29 = *(v1 + 56);
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = v29 + 32;
    v75 = v80 + 16;
    v74 = (v80 + 8);
    v71[1] = v29;

    *&v32 = 136315138;
    v79 = v32;
    *&v32 = 136315394;
    v72 = v32;
    v77 = v3;
    v76 = v15;
    while (1)
    {
      sub_267B9AFEC(v31, v86);
      __swift_project_boxed_opaque_existential_0(v86, v87);
      v33 = OUTLINED_FUNCTION_61_6();
      sub_267E886DC(v33, v34);
      if (*(v3 + 16))
      {
        v35 = sub_267BA9948();
        v37 = v36;

        if (v37)
        {
          v38 = *(v3 + 56) + *(v80 + 72) * v35;
          v39 = *(v80 + 16);
          v40 = v81;
          v39(v81, v38, v4);
          sub_267B9AFEC(v86, v84);
          v41 = v78;
          v39(v78, v40, v4);
          v42 = sub_267EF89F8();
          v43 = sub_267EF95D8();
          v44 = os_log_type_enabled(v42, v43);
          v45 = v74;
          if (v44)
          {
            v46 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v83 = v73;
            *v46 = v72;
            __swift_project_boxed_opaque_existential_0(v84, v85);
            v47 = OUTLINED_FUNCTION_73();
            sub_267E886DC(v47, v48);
            __swift_destroy_boxed_opaque_existential_0(v84);
            v49 = OUTLINED_FUNCTION_73();
            v52 = sub_267BA33E8(v49, v50, v51);

            *(v46 + 4) = v52;
            *(v46 + 12) = 2080;
            sub_267EF4D08();
            v53 = *v45;
            v53(v41, v82);
            v54 = OUTLINED_FUNCTION_73();
            v57 = sub_267BA33E8(v54, v55, v56);

            *(v46 + 14) = v57;
            _os_log_impl(&dword_267B93000, v42, v43, "#AppSelectionSignalCollection signal=[%s]: instrumenting value=%s", v46, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_32_0();
            v4 = v82;
            OUTLINED_FUNCTION_32_0();
          }

          else
          {

            v53 = *v45;
            v53(v41, v4);
            __swift_destroy_boxed_opaque_existential_0(v84);
          }

          v68 = v87;
          v69 = v88;
          __swift_project_boxed_opaque_existential_0(v86, v87);
          v70 = v81;
          (*(v69 + 24))(v81, v68, v69);
          v53(v70, v4);
          v3 = v77;
          goto LABEL_17;
        }
      }

      else
      {
      }

      sub_267B9AFEC(v86, v84);
      v58 = sub_267EF89F8();
      v59 = sub_267EF95D8();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = OUTLINED_FUNCTION_48();
        v61 = OUTLINED_FUNCTION_52();
        v83 = v61;
        *v60 = v79;
        __swift_project_boxed_opaque_existential_0(v84, v85);
        v62 = OUTLINED_FUNCTION_51_24();
        sub_267E886DC(v62, v63);
        __swift_destroy_boxed_opaque_existential_0(v84);
        v64 = OUTLINED_FUNCTION_51_24();
        v67 = sub_267BA33E8(v64, v65, v66);
        v4 = v82;

        *(v60 + 4) = v67;
        _os_log_impl(&dword_267B93000, v58, v59, "#AppSelectionSignalCollection signal=[%s]: cannot find collected value", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v61);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_40_0();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v84);
      }

LABEL_17:
      __swift_destroy_boxed_opaque_existential_0(v86);
      v31 += 40;
      if (!--v30)
      {

        break;
      }
    }
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EF0520()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_requestID;
  v3 = sub_267EF2D28();
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 8);
  v5(v0 + v2, v3);
  v5(v0 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_inferenceID, v3);
  v5(v0 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_isolatedID, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_messageStream));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_signalGatherer));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_signalFactory));
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_userDefaults, &qword_280229840, &qword_267EFE9E0);
  v6 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_shadowAppResolution);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_userPresonaSignalCollector));

  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_crrCommsAppSelectionJointId, &qword_280229430, &qword_267EFD2C0);
  return v0;
}

uint64_t sub_267EF066C()
{
  sub_267EF0520();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267EF06C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_54_0();
  sub_267EF50C8();
  v4 = sub_267EF4E78();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = sub_267EF4E68();
  v8 = MEMORY[0x277D602A0];
  a2[3] = v4;
  a2[4] = v8;
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for AppSelectionSignalCollector()
{
  result = qword_28022D2D8;
  if (!qword_28022D2D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267EF07B8()
{
  v0 = sub_267EF2D28();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_267EF08D0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_267EF08D0()
{
  if (!qword_28022D2E8)
  {
    sub_267EF2D28();
    v0 = sub_267EF9888();
    if (!v1)
    {
      atomic_store(v0, &qword_28022D2E8);
    }
  }
}

void sub_267EF094C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_267C2FB6C(a2, &v12 - v8, &qword_280229430, &qword_267EFD2C0);
  v10 = sub_267EF2D28();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    v11 = sub_267EF2CF8();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  [v3 emitMessage:a1 isolatedStreamUUID:v11];
}

void sub_267EF0A6C()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_267EF2D28();
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v12 = v11 - v10;
  sub_267EF2D18();
  v13 = sub_267EF2CE8();
  v15 = v14;
  (*(v7 + 8))(v12, v4);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v16 = sub_267EF8A08();
  __swift_project_value_buffer(v16, qword_280240FB0);

  v17 = sub_267EF89F8();
  v18 = sub_267EF95D8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_48();
    v20 = OUTLINED_FUNCTION_52();
    v25 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_267BA33E8(v13, v15, &v25);
    _os_log_impl(&dword_267B93000, v17, v18, "#AppSelectionSignalCollection: starting SignalGatherer#gatherValuesAndTimings (%s)...", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v21 = sub_267EF4DA8();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  sub_267EF4D98();
  OUTLINED_FUNCTION_65_3();
  v24 = swift_allocObject();
  v24[2] = v13;
  v24[3] = v15;
  v24[4] = v3;
  v24[5] = v1;

  sub_267EF4D88();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EF0CA8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);

  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_267BA33E8(a2, a3, &v14);
    _os_log_impl(&dword_267B93000, v9, v10, "#AppSelectionSignalCollection: starting SignalGatherer#gatherValuesAndTimings (%s) complete", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D60A7B0](v12, -1, -1);
    MEMORY[0x26D60A7B0](v11, -1, -1);
  }

  return a4(a1);
}

uint64_t sub_267EF0E68(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

unint64_t sub_267EF10E4()
{
  result = qword_28022D330;
  if (!qword_28022D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022D330);
  }

  return result;
}

uint64_t sub_267EF1698(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], *a2);
}

uint64_t sub_267EF16E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_267EF4F88();
  v12[3] = v8;
  v12[4] = MEMORY[0x277D60320];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A78, &qword_267EFEEF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  sub_267B9AFEC(v12, inited + 32);

  sub_267E8CF78(inited, a4, a2, a3);
  swift_setDeallocating();
  sub_267DB717C();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_267EF17F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_267EF18C8;
  OUTLINED_FUNCTION_271();

  return sub_267EEB37C(v10, v11, v12, v4, v5, v6, v7, v8);
}

uint64_t sub_267EF18C8()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_5();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t objectdestroy_353Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  OUTLINED_FUNCTION_65_3();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_267EF1A10(uint64_t a1)
{
  v3 = *(sub_267EF89E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_267EEAB14(a1, v1 + v4, v7, v8, v9);
}

uint64_t sub_267EF1ACC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267EF1B18()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

double sub_267EF1B24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1 == 0x61737265766E6F63 && a2 == 0xEC0000006E6F6974;
  if (!v7 && (sub_267EF9EA8() & 1) == 0)
  {
    v11 = a1 == 0x52676E6964616572 && a2 == 0xEE00747365757165;
    if (v11 || (sub_267EF9EA8() & 1) != 0)
    {
      v8 = *(v3 + 32);
      if (v8)
      {
        v9 = type metadata accessor for MessagesReadingRequestDialogContext();
        goto LABEL_8;
      }
    }

LABEL_18:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v8 = *(v3 + 24);
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = type metadata accessor for MessagesConversationDialogContext();
LABEL_8:
  *(a3 + 24) = v9;
  *a3 = v8;

  return result;
}

uint64_t sub_267EF1C28(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D368, &qword_267F0F6D8);
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  *(v1 + 16) = 0;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267EF2398();
  sub_267EFA078();
  if (v2)
  {

    type metadata accessor for MessagesDialogContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for MessagesConversationDialogContext();
    OUTLINED_FUNCTION_1_92();
    sub_267EF23EC(v9, 255, v10);
    OUTLINED_FUNCTION_2_78();
    *(v1 + 24) = v16;
    type metadata accessor for MessagesReadingRequestDialogContext();
    OUTLINED_FUNCTION_0_81();
    sub_267EF23EC(v12, 255, v13);
    OUTLINED_FUNCTION_2_78();
    v14 = OUTLINED_FUNCTION_8_32();
    v15(v14);
    *(v1 + 32) = v16;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_267EF1E48(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D378, &qword_267F0F6E0);
  v6 = OUTLINED_FUNCTION_58(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267EF2398();
  sub_267EFA088();
  v20 = *(v3 + 24);
  HIBYTE(v19) = 0;
  type metadata accessor for MessagesConversationDialogContext();
  OUTLINED_FUNCTION_1_92();
  sub_267EF23EC(v14, 255, v15);
  OUTLINED_FUNCTION_3_89();
  if (!v2)
  {
    v20 = *(v3 + 32);
    HIBYTE(v19) = 1;
    type metadata accessor for MessagesReadingRequestDialogContext();
    OUTLINED_FUNCTION_0_81();
    sub_267EF23EC(v16, 255, v17);
    OUTLINED_FUNCTION_3_89();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_267EF200C()
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

uint64_t sub_267EF2060(char a1)
{
  if (a1)
  {
    return 0x52676E6964616572;
  }

  else
  {
    return 0x61737265766E6F63;
  }
}

uint64_t sub_267EF20D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267EF200C();
  *a2 = result;
  return result;
}

uint64_t sub_267EF2100@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267EF2060(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267EF2134@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267EF200C();
  *a1 = result;
  return result;
}

uint64_t sub_267EF215C(uint64_t a1)
{
  v2 = sub_267EF2398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267EF2198(uint64_t a1)
{
  v2 = sub_267EF2398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267EF21D4(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_75();
  v2 = swift_allocObject();
  sub_267EF1C28(a1);
  return v2;
}

uint64_t sub_267EF2288@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_267EF2398()
{
  result = qword_28022D370;
  if (!qword_28022D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022D370);
  }

  return result;
}

uint64_t sub_267EF23EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for MessagesDialogContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267EF2514()
{
  result = qword_28022D380;
  if (!qword_28022D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022D380);
  }

  return result;
}

unint64_t sub_267EF256C()
{
  result = qword_28022D388;
  if (!qword_28022D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022D388);
  }

  return result;
}

unint64_t sub_267EF25C4()
{
  result = qword_28022D390;
  if (!qword_28022D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022D390);
  }

  return result;
}