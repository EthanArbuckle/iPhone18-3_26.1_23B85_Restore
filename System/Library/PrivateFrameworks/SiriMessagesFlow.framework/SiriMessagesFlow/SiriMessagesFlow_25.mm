uint64_t sub_267D9FFA0(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    *(result + 16) = v2;
  }

  else
  {
    *result = 8 * (a2 - 2);
    *(result + 8) = xmmword_267F083C0;
  }

  return result;
}

uint64_t sub_267D9FFF0()
{
  v1 = *v0;
  sub_267D9BB48();
  return v2 & 1;
}

uint64_t sub_267DA0018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267DA00C8;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_267DA00C8()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 16);
  v7 = *v0;

  OUTLINED_FUNCTION_4_3();

  return v5(v2);
}

uint64_t sub_267DA01DC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267DA0278;

  return sub_267D9BE78();
}

uint64_t sub_267DA0278()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 16);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void *sub_267DA0364@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = sub_267D9BA50();
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

void sub_267DA0398(void *a1, void *a2, unint64_t a3)
{
  if (a3 >> 62 == 1)
  {
  }

  else if (!(a3 >> 62))
  {
  }
}

unint64_t sub_267DA0408()
{
  result = qword_28022BC38;
  if (!qword_28022BC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022BC30, &unk_267F08538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BC38);
  }

  return result;
}

id sub_267DA048C(id result, void *a2, unint64_t a3)
{
  if (a3 >> 62 == 1)
  {

    return result;
  }

  else if (!(a3 >> 62))
  {

    v5 = a2;
  }

  return result;
}

uint64_t sub_267DA0518()
{
  v0 = sub_267EF2FC8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void *sub_267DA0570()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ConversationActionGroup();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  v6 = sub_267BE6480(v1, v2, 0, 1);
  sub_267DA0EC8(&unk_28022BC80, type metadata accessor for ConversationActionGroup);
  return v6;
}

uint64_t sub_267DA0618@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_267EF4548();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  MEMORY[0x28223BE20](v4);
  v77 = (&v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC68, &unk_267F08710);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v76 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v76 - v15;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v17 = sub_267EF8A08();
  __swift_project_value_buffer(v17, qword_280240FB0);
  sub_267DA0E58(a1, v16);
  v18 = sub_267EF89F8();
  v19 = sub_267EF95D8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v76 = a2;
    v22 = v21;
    v81[0] = v21;
    *v20 = 136315138;
    sub_267DA0E58(v16, v14);
    v23 = sub_267EF9098();
    v25 = v24;
    sub_267B9FF34(v16, &qword_28022BC68, &unk_267F08710);
    v26 = sub_267BA33E8(v23, v25, v81);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_267B93000, v18, v19, "#OfferContinueReadingReturnGroup acting on exit value for offer reply: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    a2 = v76;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    sub_267B9FF34(v16, &qword_28022BC68, &unk_267F08710);
  }

  v27 = v80;
  sub_267DA0E58(a1, v11);
  v28 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
  if (__swift_getEnumTagSinglePayload(v11, 1, v28) == 1)
  {
LABEL_7:
    v29 = sub_267EF89F8();
    v30 = sub_267EF95D8();
    if (os_log_type_enabled(v29, v30))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v31, v32, "#OfferContinueReadingReturnGroup moving to ReadingTerminatedActionGroup");
      OUTLINED_FUNCTION_32_0();
    }

    v33 = *(v27 + 24);
    v34 = type metadata accessor for ReadingTerminatedActionGroup(0);
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();

    v38 = sub_267DFA1D0(v37, 0);
    v39 = &unk_28022BC70;
    v40 = type metadata accessor for ReadingTerminatedActionGroup;
LABEL_10:
    v41 = sub_267DA0EC8(v39, v40);
    *a2 = v38;
    a2[1] = v41;
LABEL_15:
    v48 = v79;
    (*(v78 + 104))(a2, *MEMORY[0x277D5BF58], v79);
    v49 = a2;
    v50 = v48;
  }

  else
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    switch(__swift_getEnumTagSinglePayload(v11, 9, v42))
    {
      case 1u:
      case 2u:
        goto LABEL_7;
      case 3u:
        goto LABEL_24;
      case 4u:
      case 5u:
      case 6u:
      case 9u:
        goto LABEL_12;
      case 7u:
        v62 = *(v27 + 16);
        v61 = *(v27 + 24);
        v63 = *(v62 + 88);
        v64 = *(v62 + 96);

        v65 = sub_267BFB790(v63, v64, 1);

        if (v65)
        {
          v66 = type metadata accessor for FlowLocatorPhoneFlowFinder();
          inited = swift_initStackObject();
          v81[3] = v66;
          v81[4] = &off_2878D76D0;
          v81[0] = inited;
          sub_267CAA984(a2);

          return __swift_destroy_boxed_opaque_existential_0(v81);
        }

        v68 = sub_267EF89F8();
        v69 = sub_267EF95E8();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v81[0] = v71;
          *v70 = 136315138;
          v72 = a2;
          v73 = *(v62 + 88);
          v74 = *(v62 + 96);

          v75 = sub_267BA33E8(v73, v74, v81);

          *(v70 + 4) = v75;
          a2 = v72;
          _os_log_impl(&dword_267B93000, v68, v69, "#OfferContinueReadingReturnGroup Unable to get previous conversation from next conversation %s -> repeat the prompt", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v71);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_32_0();
        }

LABEL_24:
        sub_267DA0CDC(a2);
        v49 = a2;
        v50 = v79;
        break;
      case 8u:
        v52 = *(v27 + 16);
        v53 = *(v27 + 24);
        v54 = *(v52 + 88);
        v55 = *(v52 + 96);

        v56 = sub_267BFB790(v54, v55, 1);

        v57 = v77;
        sub_267DA0CDC(v77);
        SenderInfoActionGroup = type metadata accessor for ReadSenderInfoActionGroup();
        v59 = *(SenderInfoActionGroup + 48);
        v60 = *(SenderInfoActionGroup + 52);
        swift_allocObject();
        v38 = sub_267C4BF48(v53, v56, v57);
        v39 = &unk_28022BC78;
        v40 = type metadata accessor for ReadSenderInfoActionGroup;
        goto LABEL_10;
      default:
        sub_267B9FF34(v11, &qword_280229920, &unk_267F0ABD0);
LABEL_12:
        v43 = sub_267EF89F8();
        v44 = sub_267EF95D8();
        if (os_log_type_enabled(v43, v44))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v45, v46, "#OfferContinueReadingReturnGroup moving to next group");
          OUTLINED_FUNCTION_32_0();
        }

        *a2 = sub_267DA0570();
        a2[1] = v47;
        goto LABEL_15;
    }
  }

  return __swift_storeEnumTagSinglePayload(v49, 0, 1, v50);
}

uint64_t sub_267DA0CDC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);
  v5 = sub_267EF89F8();
  v6 = sub_267EF95D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_267B93000, v5, v6, "#OfferContinueReadingReturnGroup creating continue-to-read offer transition again for native flow", v7, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v8 = *(v2 + 16);
  v9 = *(v2 + 24);

  return sub_267CAA1C0(v8, v9, a1);
}

uint64_t sub_267DA0DE8()
{
  type metadata accessor for OfferContinueReadingReturnGroup();

  return sub_267EF44D8();
}

uint64_t sub_267DA0E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC68, &unk_267F08710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DA0EC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_267DA0F10(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267EF3F28();
  v7 = OUTLINED_FUNCTION_58(v6);
  v48 = v8;
  v49 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v47 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A4B0, &unk_267F00CC0);
  OUTLINED_FUNCTION_18(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v16);
  v52 = &v46 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v21);
  v23 = (&v46 - v22);
  v24 = sub_267EF4228();
  v25 = OUTLINED_FUNCTION_58(v24);
  v50 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_0_0();
  v31 = v30 - v29;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267BB4A3C();
  type metadata accessor for MessagesApp(0);
  sub_267EF7C38();

  v51 = a2;
  v32 = a3;
  sub_267EF7C08();
  v33 = sub_267EC814C();
  sub_267C7FD8C(v33);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = *v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    swift_willThrowTypedImpl();
  }

  else
  {
    v34 = v50;
    (*(v50 + 32))(v31, v23, v24);
    v23 = [objc_allocWithZone(MEMORY[0x277D47A18]) init];
    v35 = sub_267EF4218();
    v36 = v52;
    sub_267C8EFF0(v35, v52);

    v37 = sub_267EF4378();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v37);
    v39 = v34;
    if (EnumTagSinglePayload == 1)
    {
      sub_267B9F98C(v52, &qword_28022A4B0, &unk_267F00CC0);
      v40 = 0;
    }

    else
    {
      v41 = v47;
      v42 = v52;
      sub_267EF4368();
      (*(*(v37 - 8) + 8))(v42, v37);
      sub_267EF3F18();
      (*(v48 + 8))(v41, v49);
      v40 = sub_267EF8FF8();
    }

    [v23 setText_];

    v43 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
    sub_267DA34BC(v51, v32, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_267EFCA40;
    *(v44 + 32) = v43;
    sub_267DA3648(v44, v23, &selRef_setCommands_);
    (*(v39 + 8))(v31, v24);
  }

  return v23;
}

id sub_267DA133C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267EF2D28();
  v7 = OUTLINED_FUNCTION_58(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v14 = v13 - v12;
  v15 = [objc_allocWithZone(MEMORY[0x277D473F0]) init];
  sub_267BA9F38(0, &qword_28022BCC0, 0x277D47418);
  v16 = a1;
  v17 = sub_267EF9788();
  [v15 setHandledIntent_];

  v18 = v15;
  sub_267DA3520(a2, a3, v18);
  sub_267EF2D18();
  sub_267EF2CE8();
  OUTLINED_FUNCTION_74_0();
  (*(v9 + 8))(v14, v6);
  v19 = OUTLINED_FUNCTION_108();
  sub_267E7F030(v19, v20, v18);

  return v18;
}

void sub_267DA149C()
{
  OUTLINED_FUNCTION_48_0();
  v37 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_267EF4CD8();
  v6 = OUTLINED_FUNCTION_58(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v13 = v12 - v11;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v14 = sub_267EF8A08();
  __swift_project_value_buffer(v14, qword_280240FB0);
  v15 = sub_267EF89F8();
  v16 = sub_267EF95D8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_267B93000, v15, v16, "#AceViewProviderUtils building disambiguation snippet", v17, 2u);
    MEMORY[0x26D60A7B0](v17, -1, -1);
  }

  v18 = v4[3];
  v19 = v4[4];
  OUTLINED_FUNCTION_131(v4);
  v20 = sub_267BCD18C() ^ 1;
  OUTLINED_FUNCTION_5_45();
  if (sub_267EF3BE8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_267EFCA40;
    v22 = sub_267EF3948();
    v23 = (*(v37 + 24))(v22, v20 & 1, v2);
LABEL_11:
    v28 = v23;

    *(v21 + 32) = v28;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_45();
  if (sub_267EF3C28())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_267EFCA40;
    v24 = sub_267EF3948();
    v25 = v4[4];
    __swift_project_boxed_opaque_existential_0(v4, v4[3]);
    v26 = sub_267EF3BC8();
    v23 = (*(v37 + 32))(v24, v26 & 1, v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_5_45();
  if (sub_267EF3C48())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_267EFCA40;
    v27 = sub_267EF3948();
    v23 = (*(v37 + 16))(v27, v20 & 1, v2);
    goto LABEL_11;
  }

  v29 = sub_267EF3948();
  (*(v8 + 104))(v13, *MEMORY[0x277D5C1E0], v5);
  v30 = (*(v37 + 8))(v29, v20 & 1, v13, v2);

  (*(v8 + 8))(v13, v5);
  v31 = sub_267EF7C18();
  if (v32)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0x6C7070612E6D6F63;
  }

  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0xEE00697269732E65;
  }

  v35 = [objc_allocWithZone(MEMORY[0x277D47B08]) init];
  if (sub_267BAF0DC(MEMORY[0x277D84F90]))
  {
    sub_267DA35D0(MEMORY[0x277D84F90], v35);
  }

  sub_267DA3578(v33, v34, v35);

  [v30 setSash_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  OUTLINED_FUNCTION_94();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_267EFCA40;
  *(v36 + 32) = v30;
LABEL_12:
  OUTLINED_FUNCTION_47();
}

void sub_267DA18D4()
{
  OUTLINED_FUNCTION_48_0();
  v36 = v0;
  v37 = v1;
  v38 = v2;
  v35 = sub_267EF8228();
  v3 = OUTLINED_FUNCTION_58(v35);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_60();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_60();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v34 - v22;
  sub_267C7FE88();
  v24 = sub_267EFA028();
  v26 = v25;
  sub_267B9F98C(v23, &qword_2802295B8, &qword_267EFDCB0);
  if (v26)
  {
    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  v34[1] = v27;
  sub_267EF78D8();
  sub_267EFA028();
  sub_267B9F98C(v20, &qword_2802295B8, &qword_267EFDCB0);
  v28 = *(v5 + 104);
  v29 = v35;
  v28(v13, *MEMORY[0x277D5D4E8], v35);
  v28(v10, *MEMORY[0x277D5D4F0], v29);

  v30 = v37;
  sub_267EF8538();
  v31 = *MEMORY[0x277D5D388];
  v32 = sub_267EF8178();
  OUTLINED_FUNCTION_22(v32);
  (*(v33 + 104))(v30, v31);
  OUTLINED_FUNCTION_47();
}

id sub_267DA1B74()
{
  sub_267BA9F38(0, &qword_28022A0B0, 0x277D47B10);
  sub_267EF4208();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  sub_267BF5748();
  sub_267EF8FC8();
  OUTLINED_FUNCTION_104_0();

  v2 = sub_267EF41E8();
  return sub_267E7E88C(v1, v0, v2, v3, 0, 0, 0);
}

id sub_267DA1C44(uint64_t a1)
{
  v2 = sub_267EF2D28();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_267D99844(a1, v11);
  sub_267EF2D18();
  sub_267EF2CE8();
  OUTLINED_FUNCTION_74_0();
  (*(v5 + 8))(v10, v2);
  v12 = OUTLINED_FUNCTION_108();
  sub_267E7F030(v12, v13, v11);

  return v11;
}

id sub_267DA1D4C()
{
  v2 = sub_267EF2D28();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  v11 = [objc_allocWithZone(MEMORY[0x277D47AE0]) init];
  sub_267EF2D18();
  sub_267EF2CE8();
  OUTLINED_FUNCTION_104_0();
  (*(v5 + 8))(v10, v2);
  sub_267E7F030(v0, v1, v11);

  v12 = sub_267EF9508();
  [v11 setToneLibraryAlertType_];

  sub_267EF83A8();
  if (v13)
  {
    v14 = sub_267EF8FF8();
  }

  else
  {
    v14 = 0;
  }

  [v11 setItemURL_];

  return v11;
}

void sub_267DA1EB4()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v2 = sub_267EF8428();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  v11 = sub_267EF2D28();
  v12 = OUTLINED_FUNCTION_58(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v19 = v18 - v17;
  v20 = v1[3];
  v21 = v1[4];
  OUTLINED_FUNCTION_131(v1);
  if ((sub_267BCD18C() & 1) == 0)
  {
    v22 = [objc_allocWithZone(MEMORY[0x277D47B40]) init];
    sub_267EF2D18();
    v23 = sub_267EF2CE8();
    v25 = v24;
    (*(v14 + 8))(v19, v11);
    sub_267E7F030(v23, v25, v22);

    v26 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
    [v26 setEyesFree_];
    sub_267BA9F38(0, &unk_28022BC90, 0x277D5C220);
    (*(v5 + 104))(v10, *MEMORY[0x277D5D778], v2);
    sub_267EF8418();
    (*(v5 + 8))(v10, v2);
    v27 = sub_267BEA93C();
    v28 = objc_opt_self();
    v29 = [v28 runSiriKitExecutorCommandWithContext:v26 payload:v27];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_267EFCA40;
    *(v30 + 32) = [v28 wrapCommandInStartLocalRequest_];
    sub_267DA3648(v30, v22, &selRef_setSuccessCommands_);
  }

  OUTLINED_FUNCTION_47();
}

void sub_267DA2180()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v50 = v4;
  v51 = v3;
  v5 = sub_267EF2A58();
  v6 = OUTLINED_FUNCTION_58(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_60();
  v48 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  if (!v2)
  {
    goto LABEL_26;
  }

  v16 = sub_267BAF0DC(v2);
  v17 = MEMORY[0x277D84F90];
  if (!v16)
  {
LABEL_25:
    v55 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
    sub_267BF5748();
    sub_267EF8FC8();

LABEL_26:
    OUTLINED_FUNCTION_47();
    return;
  }

  v18 = v16;
  v55 = MEMORY[0x277D84F90];
  sub_267BC7934(0, v16 & ~(v16 >> 63), 0);
  if (v18 < 0)
  {
    goto LABEL_30;
  }

  v47 = v15;
  v17 = v55;
  v19 = sub_267BAF0DC(v2);
  v20 = 0;
  v49 = v2 & 0xFFFFFFFFFFFFFF8;
  v45 = v2;
  v46 = v8 + 32;
  v44 = v8 + 8;
  v53 = v2 & 0xC000000000000001;
  v54 = v19 & ~(v19 >> 63);
  v21 = v50;
  v52 = v18;
  while (v54 != v20)
  {
    if (v53)
    {
      v22 = MEMORY[0x26D609870](v20, v2);
    }

    else
    {
      if (v20 >= *(v49 + 16))
      {
        goto LABEL_29;
      }

      v22 = *(v2 + 8 * v20 + 32);
    }

    v23 = v22;
    v24 = v21[3];
    v25 = v21[4];
    OUTLINED_FUNCTION_131(v21);
    if ((sub_267BCD18C() & 1) == 0)
    {
      sub_267DA2864();
      OUTLINED_FUNCTION_104_0();

      goto LABEL_18;
    }

    v26 = [v23 nameComponents];
    if (!v26)
    {
      v37 = [v23 displayName];
      sub_267EF9028();
      OUTLINED_FUNCTION_104_0();

      goto LABEL_18;
    }

    v27 = v26;
    sub_267EF2A18();

    v28 = OUTLINED_FUNCTION_11_34();
    v29(v28);
    v30 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
    v31 = sub_267EF29E8();
    v32 = v5;
    v33 = [v30 stringFromPersonNameComponents_];

    sub_267EF9028();
    OUTLINED_FUNCTION_104_0();

    v34 = HIBYTE(v0) & 0xF;
    if ((v0 & 0x2000000000000000) == 0)
    {
      v34 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      v35 = OUTLINED_FUNCTION_11_34();
      v36(v35);

      v5 = v32;
      v2 = v45;
      v21 = v50;
LABEL_18:
      v55 = v17;
      goto LABEL_19;
    }

    v41 = [v23 displayName];
    sub_267EF9028();
    OUTLINED_FUNCTION_104_0();

    v42 = OUTLINED_FUNCTION_11_34();
    v43(v42);

    v55 = v17;
    v5 = v32;
    v2 = v45;
    v21 = v50;
LABEL_19:
    v39 = *(v17 + 16);
    v38 = *(v17 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_267BC7934((v38 > 1), v39 + 1, 1);
      v17 = v55;
    }

    *(v17 + 16) = v39 + 1;
    v40 = v17 + 16 * v39;
    *(v40 + 32) = v25;
    *(v40 + 40) = v0;
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_28;
    }

    if (v52 == ++v20)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_267DA2578(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v3 = OUTLINED_FUNCTION_18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_60();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  if (!a1)
  {
    return 0;
  }

  if (!(a1 >> 62))
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 > 1)
    {
      goto LABEL_4;
    }

LABEL_8:
    if (v18)
    {
      sub_267BBD0EC(0, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x26D609870](0, a1);
      }

      else
      {
        v22 = *(a1 + 32);
      }

      v23 = v22;
      v24 = [objc_opt_self() sharedDefaults];
      v25 = [v24 shortNameFormatPrefersNicknames];

      if (v25)
      {
        v26 = [v23 nameComponents];
        if (v26)
        {
          v27 = v26;
          sub_267EF2A18();

          sub_267EF2A58();
          v28 = 0;
        }

        else
        {
          sub_267EF2A58();
          v28 = 1;
        }

        OUTLINED_FUNCTION_18_24(v8, v28);
        sub_267D2E49C(v8, v11);
        sub_267EF2A58();
        v19 = 0;
        v29 = 0;
        if (!OUTLINED_FUNCTION_17_22(v11))
        {
          v19 = sub_267EF2A28();
          v29 = v30;
        }

        sub_267B9F98C(v11, &unk_28022BCA0, &unk_267EFD990);
      }

      else
      {
        v19 = 0;
        v29 = 0;
      }

      if (sub_267DEAC8C(v19, v29))
      {

        v31 = [v23 displayName];
        v19 = sub_267EF9028();

        return v19;
      }

      if (v29)
      {
        return v19;
      }
    }

    return 0;
  }

  if (sub_267EF9A68() < 2)
  {
    v18 = sub_267EF9A68();
    goto LABEL_8;
  }

LABEL_4:
  sub_267C7FEA8();
  v19 = sub_267EFA028();
  v21 = v20;
  sub_267B9F98C(v17, &qword_2802295B8, &qword_267EFDCB0);
  if (!v21)
  {
    return 0;
  }

  return v19;
}

void sub_267DA2864()
{
  OUTLINED_FUNCTION_48_0();
  v85 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_60();
  v83 = v11 - v12;
  v14 = MEMORY[0x28223BE20](v13);
  v84 = &v82 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v82 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v82 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  OUTLINED_FUNCTION_18(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v24);
  v26 = &v82 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v28 = OUTLINED_FUNCTION_18(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_60();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v82 - v35;
  v37 = sub_267EF79B8();
  v38 = OUTLINED_FUNCTION_58(v37);
  v87 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_60();
  v44 = v42 - v43;
  MEMORY[0x28223BE20](v45);
  v86 = &v82 - v46;
  swift_beginAccess();
  v47 = sub_267C8EB50(v4, *(v2 + 80));
  if (!v47)
  {
    v48 = [v6 displayName];
    sub_267EF9028();
LABEL_10:
    OUTLINED_FUNCTION_14_32();

    goto LABEL_21;
  }

  v48 = v47;
  v82 = v6;
  v49 = [v47 relationship];
  if (v49)
  {
    v50 = v49;
    sub_267EAEBF4();
    OUTLINED_FUNCTION_74_0();

    OUTLINED_FUNCTION_108();
    sub_267EF90F8();

    v52 = v86;
    v51 = v87;
    (*(v87 + 32))(v86, v44, v37);
    v53 = sub_267EF7758();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    sub_267EF7748();
    (*(v51 + 16))(v36, v52, v37);
    OUTLINED_FUNCTION_18_24(v36, 0);
    sub_267EF76F8();

    sub_267B9F98C(v36, &unk_28022AE30, &qword_267EFC0B0);
    sub_267EF7708();

    v56 = sub_267EF7738();

    sub_267EF78A8();
    v57 = v85;
    sub_267B9AFEC(v85, &v88);
    sub_267EF7878();
    sub_267EF7638();
    sub_267EF77A8();
    if (OUTLINED_FUNCTION_17_22(v33) == 1)
    {
      sub_267B9F98C(v33, &unk_28022AE30, &qword_267EFC0B0);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v58 = sub_267EF8A08();
      __swift_project_value_buffer(v58, qword_280240FB0);
      v59 = sub_267EF89F8();
      v60 = sub_267EF95E8();
      v61 = os_log_type_enabled(v59, v60);
      v62 = v82;
      v63 = v86;
      if (v61)
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_267B93000, v59, v60, "Unable to get relationship name from DialogPerson", v64, 2u);
        MEMORY[0x26D60A7B0](v64, -1, -1);
      }

      v65 = [v62 displayName];
      sub_267EF9028();
      OUTLINED_FUNCTION_14_32();

      (*(v87 + 8))(v63, v37);
    }

    else
    {
      v83 = sub_267EF7998();
      v84 = v56;
      v70 = v69;
      v71 = *(v51 + 8);
      v71(v33, v37);
      v72 = v57[4];
      __swift_project_boxed_opaque_existential_0(v57, v57[3]);
      sub_267EF3B68();
      v73 = sub_267EF2E38();
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v73);
      sub_267D5ECBC(v26, v83, v70);
      OUTLINED_FUNCTION_14_32();

      sub_267B9F98C(v26, &unk_28022AF10, &unk_267F001E0);
      v71(v52, v37);
    }

    goto LABEL_21;
  }

  v66 = [v48 nameComponents];
  if (v66)
  {
    v67 = v66;
    sub_267EF2A18();

    v68 = 0;
  }

  else
  {
    v68 = 1;
  }

  sub_267EF2A58();
  OUTLINED_FUNCTION_18_24(v18, v68);
  sub_267D2E49C(v18, v20);
  if (OUTLINED_FUNCTION_17_22(v20))
  {
    sub_267B9F98C(v20, &unk_28022BCA0, &unk_267EFD990);
LABEL_17:
    if ((sub_267DE9BAC() & 1) == 0 || (v74 = [v48 personHandle]) == 0 || (sub_267BBE048(v74), !v75))
    {
      v76 = [v82 displayName];
      sub_267EF9028();
      OUTLINED_FUNCTION_14_32();

      goto LABEL_21;
    }

    goto LABEL_10;
  }

  sub_267EF2A28();
  OUTLINED_FUNCTION_14_32();
  sub_267B9F98C(v20, &unk_28022BCA0, &unk_267EFD990);
  if (!v33)
  {
    goto LABEL_17;
  }

  v77 = [v82 nameComponents];
  if (v77)
  {
    v78 = v77;
    v79 = v83;
    sub_267EF2A18();

    v80 = 0;
  }

  else
  {
    v80 = 1;
    v79 = v83;
  }

  v81 = v84;
  OUTLINED_FUNCTION_18_24(v79, v80);
  sub_267D2E49C(v79, v81);
  if (OUTLINED_FUNCTION_17_22(v81))
  {

    sub_267B9F98C(v81, &unk_28022BCA0, &unk_267EFD990);
  }

  else
  {
    sub_267EF2A28();
    OUTLINED_FUNCTION_74_0();

    sub_267B9F98C(v81, &unk_28022BCA0, &unk_267EFD990);
    if (v79)
    {
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_47();
}

void sub_267DA2FC4()
{
  OUTLINED_FUNCTION_48_0();
  v0 = sub_267EF3F28();
  v1 = OUTLINED_FUNCTION_58(v0);
  v49 = v2;
  v50 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_0();
  v48 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A4B0, &unk_267F00CC0);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v22);
  v24 = &v47 - v23;
  v25 = sub_267EF4228();
  v26 = OUTLINED_FUNCTION_58(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_0();
  v33 = v32 - v31;
  sub_267C7FE68();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_267B9F98C(v24, &qword_2802295B8, &qword_267EFDCB0);
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
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_267B93000, v35, v36, "Unable to get label for Siri Settings button", v37, 2u);
      MEMORY[0x26D60A7B0](v37, -1, -1);
    }
  }

  else
  {
    (*(v28 + 32))(v33, v24, v25);
    v38 = [objc_allocWithZone(MEMORY[0x277D47AC8]) init];
    sub_267EF2B88();
    v39 = sub_267EF2BA8();
    v40 = 0;
    if (__swift_getEnumTagSinglePayload(v18, 1, v39) != 1)
    {
      v40 = sub_267EF2AF8();
      (*(*(v39 - 8) + 8))(v18, v39);
    }

    [v38 setRef_];

    v41 = [objc_allocWithZone(MEMORY[0x277D47A18]) init];
    v42 = sub_267EF4218();
    sub_267C8EFF0(v42, v12);

    v43 = sub_267EF4378();
    if (__swift_getEnumTagSinglePayload(v12, 1, v43) == 1)
    {
      sub_267B9F98C(v12, &qword_28022A4B0, &unk_267F00CC0);
      v44 = 0;
    }

    else
    {
      v45 = v48;
      sub_267EF4368();
      (*(*(v43 - 8) + 8))(v12, v43);
      sub_267EF3F18();
      (*(v49 + 8))(v45, v50);
      v44 = sub_267EF8FF8();
    }

    [v41 setText_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_267EFCA40;
    *(v46 + 32) = v38;
    sub_267DA3648(v46, v41, &selRef_setCommands_);
    (*(v28 + 8))(v33, v25);
  }

  OUTLINED_FUNCTION_47();
}

void sub_267DA34BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();
  [a3 setBundleId_];
}

void sub_267DA3520(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();
  [a3 setAppId_];
}

void sub_267DA3578(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();
  [a3 setApplicationBundleIdentifier_];
}

void sub_267DA35D0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A400, &qword_267F08350);
  v3 = sub_267EF92D8();
  [a2 setCommands_];
}

void sub_267DA3648(uint64_t a1, void *a2, SEL *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A400, &qword_267F08350);
  v5 = sub_267EF92D8();

  [a2 *a3];
}

uint64_t sub_267DA36E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 280) = a4;
  *(v5 + 288) = a5;
  return MEMORY[0x2822009F8](sub_267DA3700, 0, 0);
}

uint64_t sub_267DA3700()
{
  OUTLINED_FUNCTION_62();
  sub_267C2FB6C(v0[35], (v0 + 26), &qword_280229910, &unk_267EFEB70);
  v1 = v0[29];
  if (v1)
  {
    v2 = v0[30];
    __swift_project_boxed_opaque_existential_0(v0 + 26, v0[29]);
    v3 = *(v2 + 64);
    v9 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[37] = v5;
    *v5 = v0;
    v5[1] = sub_267DA3894;
    v6 = v0[36];

    return v9(v6, v1, v2);
  }

  else
  {
    sub_267B9F98C((v0 + 26), &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_17();

    return v8();
  }
}

uint64_t sub_267DA3894(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v7 = sub_267DA3A84;
  }

  else
  {
    *(v4 + 312) = a1 & 1;
    v7 = sub_267DA39C0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267DA39C0()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 312);
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 288);
    sub_267BEB520(v2 + 152, v0 + 16);
    ConversationEventStore.setDisabled(event:)();
    sub_267B9EF14(v0 + 16);
    sub_267BEB520(v2 + 152, v0 + 112);
    ConversationEventStore.setDisabled(event:)();
    sub_267B9EF14(v0 + 112);
  }

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267DA3A84()
{
  v19 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 26);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[38];
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[38];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[31];
    v10 = v0[32];
    v12 = v0[33];
    v13 = sub_267EF9F68();
    v15 = sub_267BA33E8(v13, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_267B93000, v4, v5, "#SpokenMessagesFollowupReturnGroup Long message check failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();

  return v16();
}

uint64_t sub_267DA3C28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v133 = a2;
  v134 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v129 = &v127 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v132 = &v127 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC68, &unk_267F08710);
  v13 = OUTLINED_FUNCTION_22(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v127 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v127 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v127 - v25;
  if (qword_280228818 != -1)
  {
    goto LABEL_57;
  }

LABEL_2:
  v27 = sub_267EF8A08();
  v28 = __swift_project_value_buffer(v27, qword_280240FB0);
  sub_267C2FB6C(a1, v26, &qword_28022BC68, &unk_267F08710);
  v29 = sub_267EF89F8();
  v30 = sub_267EF95D8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v131 = v28;
    v128 = v18;
    v127 = a1;
    v32 = v31;
    v33 = swift_slowAlloc();
    v130 = a3;
    v34 = v33;
    v135[0] = v33;
    *v32 = 136315138;
    sub_267C2FB6C(v26, v24, &qword_28022BC68, &unk_267F08710);
    v35 = sub_267EF9098();
    v24 = v36;
    v37 = v26;
    v26 = v134;
    sub_267B9F98C(v37, &qword_28022BC68, &unk_267F08710);
    v38 = sub_267BA33E8(v35, v24, v135);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_267B93000, v29, v30, "#SpokenMessagesFollowupReturnGroup getNextGroupTransition %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    a3 = v130;
    OUTLINED_FUNCTION_32_0();
    a1 = v127;
    v18 = v128;
    v28 = v131;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    sub_267B9F98C(v26, &qword_28022BC68, &unk_267F08710);
    v26 = v134;
  }

  sub_267C2FB6C(a1, v21, &qword_28022BC68, &unk_267F08710);
  v39 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
  if (__swift_getEnumTagSinglePayload(v21, 1, v39) == 1)
  {
    goto LABEL_6;
  }

  sub_267C2FB6C(v21, v18, &qword_28022BC68, &unk_267F08710);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
  switch(__swift_getEnumTagSinglePayload(v18, 9, v43))
  {
    case 1u:
      v44 = sub_267EF89F8();
      v45 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v45))
      {
        v46 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v46);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v47, v48, "#SpokenMessagesFollowupReturnGroup Rejecting request to reply");
        OUTLINED_FUNCTION_26();
      }

      OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_20_21();
      v49 = sub_267EF93F8();
      OUTLINED_FUNCTION_5_46(v49);
      OUTLINED_FUNCTION_2_47();
      OUTLINED_FUNCTION_17_23();
      v50 = swift_allocObject();
      OUTLINED_FUNCTION_1_56(v50);
      OUTLINED_FUNCTION_16_25(v51, v52);
      swift_retain_n();

      OUTLINED_FUNCTION_10_5();
      sub_267E8FA18();

      OUTLINED_FUNCTION_12_27();
      v53 = type metadata accessor for ReadingTerminatedActionGroup(0);
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      swift_allocObject();

      v57 = sub_267DFA1D0(v56, a3);
      v58 = &unk_28022BC70;
      v59 = type metadata accessor for ReadingTerminatedActionGroup;
      goto LABEL_38;
    case 3u:
      v75 = sub_267EF89F8();
      v76 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v76))
      {
        v77 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v77);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v78, v79, "#SpokenMessagesFollowupReturnGroup Re-reading conversation");
        OUTLINED_FUNCTION_26();
      }

      OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_20_21();
      v80 = sub_267EF93F8();
      OUTLINED_FUNCTION_5_46(v80);
      OUTLINED_FUNCTION_2_47();
      OUTLINED_FUNCTION_17_23();
      v81 = swift_allocObject();
      OUTLINED_FUNCTION_1_56(v81);
      OUTLINED_FUNCTION_16_25(v82, v83);
      swift_retain_n();

      OUTLINED_FUNCTION_10_5();
      sub_267E8FA18();

      OUTLINED_FUNCTION_12_27();
      v84 = *(v24 + 52);
      if (v84)
      {
        *(v84 + 82) = 0;
      }

      v136 = &type metadata for Features;
      v137 = sub_267BAFCAC();
      LOBYTE(v135[0]) = 12;

      v85 = sub_267EF5128();
      __swift_destroy_boxed_opaque_existential_0(v135);
      if (v85)
      {
        v86 = *(v24 + 52);
        if (v86)
        {
          v87 = *(v24 + 52);

          sub_267E2B73C(0, v86);
          v24 = v133;
        }
      }

      v88 = type metadata accessor for SpokenConversationActionGroup(0);
      v89 = *(v88 + 48);
      v90 = *(v88 + 52);
      swift_allocObject();
      v57 = sub_267EB74EC(a3, v24, 0);
      v58 = &qword_280229138;
      v59 = type metadata accessor for SpokenConversationActionGroup;
LABEL_38:
      v91 = sub_267DA49DC(v58, v59);
      *v26 = v57;
      *(v26 + 1) = v91;
      v92 = *MEMORY[0x277D5BF58];
      v93 = sub_267EF4548();
      OUTLINED_FUNCTION_22(v93);
      (*(v94 + 104))(v26, v92, v93);
      v41 = v26;
      v42 = 0;
      v40 = v93;
      goto LABEL_50;
    case 5u:
      v131 = v28;
      OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_20_21();
      v60 = sub_267EF93F8();
      OUTLINED_FUNCTION_5_46(v60);
      OUTLINED_FUNCTION_2_47();
      OUTLINED_FUNCTION_17_23();
      v61 = swift_allocObject();
      OUTLINED_FUNCTION_1_56(v61);
      OUTLINED_FUNCTION_16_25(v62, v63);

      OUTLINED_FUNCTION_10_5();
      sub_267E8FA18();

      OUTLINED_FUNCTION_12_27();
      if (*(a3 + 112))
      {
        v132 = v21;
        v130 = a3;
        v64 = *(a3 + 104);

        a3 = sub_267E2C8B0();
        v21 = sub_267BAF0DC(a3);
        v65 = 0;
        v24 = (a3 & 0xC000000000000001);
        v66 = MEMORY[0x277D84F90];
        while (v21 != v65)
        {
          if (v24)
          {
            MEMORY[0x26D609870](v65, a3);
          }

          else
          {
            if (v65 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_53;
            }

            v67 = *(a3 + 8 * v65 + 32);
          }

          if (__OFADD__(v65, 1))
          {
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            OUTLINED_FUNCTION_0();
            goto LABEL_2;
          }

          sub_267DE2198();
          a1 = v68;

          v69 = a1[2];
          v18 = *(v66 + 16);
          v26 = &v18[v69];
          if (__OFADD__(v18, v69))
          {
            goto LABEL_54;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v26 > *(v66 + 24) >> 1)
          {
            sub_267BF4EE8();
            v66 = v70;
          }

          if (a1[2])
          {
            if ((*(v66 + 24) >> 1) - *(v66 + 16) < v69)
            {
              goto LABEL_56;
            }

            swift_arrayInitWithCopy();

            if (v69)
            {
              v72 = *(v66 + 16);
              v73 = __OFADD__(v72, v69);
              v74 = v72 + v69;
              if (v73)
              {
                __break(1u);
                return result;
              }

              *(v66 + 16) = v74;
            }
          }

          else
          {

            if (v69)
            {
              goto LABEL_55;
            }
          }

          ++v65;
        }

        v106 = *(v130 + 128);
        type metadata accessor for MarkMessagesAsReadAction();
        swift_allocObject();
        v107 = sub_267C138B4(v66, v106, v133);
        swift_bridgeObjectRetain_n();

        v108 = sub_267EF89F8();
        v109 = sub_267EF95D8();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          *v110 = 134217984;
          v111 = *(v66 + 16);

          *(v110 + 4) = v111;

          _os_log_impl(&dword_267B93000, v108, v109, "#SpokenMessagesFollowupReturnGroup Marking %ld messages as read", v110, 0xCu);
          OUTLINED_FUNCTION_32_0();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v117 = v134;
        v21 = v132;
        v118 = v129;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B10, &qword_267EFEFB0);
        v119 = swift_allocObject();
        *(v119 + 16) = xmmword_267EFC020;
        v120 = sub_267DA49DC(&qword_28022BCC8, type metadata accessor for MarkMessagesAsReadAction);
        *(v119 + 32) = v107;
        *(v119 + 40) = v120;
        v121 = sub_267EF4548();
        __swift_storeEnumTagSinglePayload(v118, 1, 1, v121);
        v122 = sub_267EF4338();
        v123 = *(v122 + 48);
        v124 = *(v122 + 52);
        swift_allocObject();
        v125 = sub_267EF4328();
        v126 = sub_267DA49DC(&qword_280229148, MEMORY[0x277D5BDD0]);
        *v117 = v125;
        v117[1] = v126;
        (*(*(v121 - 8) + 104))(v117, *MEMORY[0x277D5BF58], v121);
        v41 = v117;
        v42 = 0;
        v40 = v121;
      }

      else
      {
        v112 = sub_267EF89F8();
        v113 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v113))
        {
          v114 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v114);
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v115, v116, "#SpokenMessagesFollowupReturnGroup App conversation identifier is not available");
          OUTLINED_FUNCTION_26();
        }

LABEL_6:
        v40 = sub_267EF4548();
        v41 = v26;
        v42 = 1;
      }

LABEL_50:
      __swift_storeEnumTagSinglePayload(v41, v42, 1, v40);
      return sub_267B9F98C(v21, &qword_28022BC68, &unk_267F08710);
    case 7u:
      v95 = sub_267EF89F8();
      v96 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v96))
      {
        v97 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v97);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v98, v99, "#SpokenMessagesFollowupReturnGroup Call requested, moving to CallSenderActionGroup");
        OUTLINED_FUNCTION_26();
      }

      OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_20_21();
      v100 = sub_267EF93F8();
      __swift_storeEnumTagSinglePayload(v132, 1, 1, v100);
      OUTLINED_FUNCTION_2_47();
      OUTLINED_FUNCTION_17_23();
      v101 = swift_allocObject();
      OUTLINED_FUNCTION_1_56(v101);
      *(v102 + 64) = v103;
      a1[9] = v133;
      a1[10] = a3;

      OUTLINED_FUNCTION_10_5();
      sub_267E8FA18();

      OUTLINED_FUNCTION_12_27();
      v104 = type metadata accessor for FlowLocatorPhoneFlowFinder();
      inited = swift_initStackObject();
      v136 = v104;
      v137 = &off_2878D76D0;
      v135[0] = inited;
      sub_267CAA984(v26);
      __swift_destroy_boxed_opaque_existential_0(v135);
      return sub_267B9F98C(v21, &qword_28022BC68, &unk_267F08710);
    default:
      sub_267BA1B7C(v18);
      goto LABEL_6;
  }
}

uint64_t sub_267DA48B4()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_6_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_44(v1);

  return sub_267DA36E0(v3, v4, v5, v6, v7);
}

uint64_t sub_267DA4948()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_6_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_44(v1);

  return sub_267DA36E0(v3, v4, v5, v6, v7);
}

uint64_t sub_267DA49DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267DA4A24(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC50, &qword_267F08558);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_267EF6A08();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v34 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v32 = v15;
  v33 = &v28 - v14;
  v16 = 0;
  v17 = *(a3 + 16);
  v35 = (v15 + 32);
  v36 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v17 == v16)
    {
      return v36;
    }

    v18 = *(type metadata accessor for SmsContactIntentNode() - 8);
    a1(a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_267B9FED8(v9, &qword_28022BC50, &qword_267F08558);
      ++v16;
    }

    else
    {
      v19 = *v35;
      (*v35)(v33, v9, v10);
      v31 = v19;
      v19(v34, v33, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = *(v36 + 16);
        sub_267C711EC();
        v36 = v24;
      }

      v20 = *(v36 + 16);
      v21 = v20 + 1;
      if (v20 >= *(v36 + 24) >> 1)
      {
        v29 = *(v36 + 16);
        v30 = v20 + 1;
        sub_267C711EC();
        v20 = v29;
        v21 = v30;
        v36 = v25;
      }

      ++v16;
      v22 = v36;
      *(v36 + 16) = v21;
      v31((v22 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v20), v34, v10);
    }
  }

  v26 = v36;

  return v26;
}

void sub_267DA4D44(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = sub_267BAF0DC(a3);
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D609870](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v16 = v8;
    a1(&v15, &v16);
    if (v3)
    {

      return;
    }

    v9 = v15;
    if (v15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v7 + 16);
        sub_267C71474();
        v7 = v12;
      }

      v10 = *(v7 + 16);
      if (v10 >= *(v7 + 24) >> 1)
      {
        sub_267C71474();
        v7 = v13;
      }

      *(v7 + 16) = v10 + 1;
      *(v7 + 8 * v10 + 32) = v9;
    }

    ++v6;
  }
}

void *sub_267DA4F24(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = result;
  v7 = 0;
  v14 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v8 = *(a3 + 16);
  while (1)
  {
    if (v8 == v7)
    {
      return v14;
    }

    if (v7 >= v8)
    {
      break;
    }

    v9 = a4(0);
    v11 = *(v9 - 8);
    result = (v9 - 8);
    v10 = v11;
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_14;
    }

    result = v6(&v16, a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v7);
    if (v4)
    {
      v13 = v14;

      return v13;
    }

    ++v7;
    if (v16)
    {
      MEMORY[0x26D608F90](result);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      result = sub_267EF9368();
      v14 = v17;
      v7 = v12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_267DA509C(uint64_t a1, uint64_t a2)
{
  v125 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD0, &qword_267F08750);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_105();
  v134 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v11);
  v13 = &v124 - v12;
  v14 = sub_267EF5B58();
  v15 = OUTLINED_FUNCTION_58(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_0();
  v140 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD8, &unk_267F0ECC0);
  v23 = OUTLINED_FUNCTION_18(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v124 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE0, &qword_267F08758);
  OUTLINED_FUNCTION_18(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_105();
  v145 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  OUTLINED_FUNCTION_18(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v37);
  v39 = &v124 - v38;
  v40 = sub_267EF5A88();
  v41 = OUTLINED_FUNCTION_58(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_0_0();
  v148 = v47 - v46;
  v48 = type metadata accessor for SmsContactIntentNode();
  v129 = *(v48 - 8);
  v49 = *(v129 + 64);
  MEMORY[0x28223BE20](v48 - 8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  v51 = MEMORY[0x28223BE20](v50);
  v53 = &v124 - v52;
  v54 = 0;
  v130 = a2;
  v131 = *(a2 + 16);
  v139 = (v17 + 32);
  v138 = (v17 + 8);
  v143 = v43 + 8;
  v144 = (v43 + 32);
  v127 = MEMORY[0x277D84F90];
  v141 = v14;
  v142 = v13;
  v136 = v28;
  v128 = &v124 - v52;
LABEL_2:
  v55 = v54;
LABEL_3:
  if (v55 != v131)
  {
    v56 = (*(v129 + 80) + 32) & ~*(v129 + 80);
    v57 = *(v129 + 72);
    v135 = v55 + 1;
    v133 = v56;
    v132 = v57;
    sub_267DA6FC0(v130 + v56 + v57 * v55, v53);
    result = sub_267EF5B38();
    v59 = result;
    v60 = 0;
    v61 = *(result + 16);
    v146 = result;
    v147 = v61;
    for (i = result + 32; ; i += 40)
    {
      if (v147 == v60)
      {

        v53 = v128;
        v51 = sub_267DA7088(v128);
        v55 = v135;
        goto LABEL_3;
      }

      if (v60 >= *(v59 + 16))
      {
        __break(1u);
        return result;
      }

      sub_267B9AFEC(i, v150);
      sub_267B9AFEC(v150, v149);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCF0, &qword_267F08768);
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v63, v64, v65, v40);
        (*v144)(v148, v39, v40);
        v66 = sub_267EF5A78();
        v67 = *(v66 + 16);
        if (v67)
        {
          v68 = v67 - 1;
          v69 = sub_267EF5958();
          OUTLINED_FUNCTION_5_0(v69);
          (*(v70 + 16))(v28, v66 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v68, v69);
          v71 = v28;
          v72 = 0;
        }

        else
        {
          v69 = sub_267EF5958();
          v71 = OUTLINED_FUNCTION_19_24();
        }

        __swift_storeEnumTagSinglePayload(v71, v72, 1, v69);

        sub_267EF5958();
        v84 = OUTLINED_FUNCTION_19_24();
        OUTLINED_FUNCTION_5_1(v84, v85, v69);
        if (v97)
        {
          v86 = OUTLINED_FUNCTION_2_48();
          v87(v86);
          sub_267B9FED8(v28, &qword_28022BCD8, &unk_267F0ECC0);
          sub_267EF5908();
          v93 = v145;
          OUTLINED_FUNCTION_78();
          __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
          goto LABEL_22;
        }

        v92 = v145;
        sub_267EF5918();
        v93 = v92;
        v94 = *(v69 - 8);
        v95 = *(v94 + 8);
        v95(v28, v69);
        v96 = sub_267EF5908();
        OUTLINED_FUNCTION_5_1(v92, 1, v96);
        if (v97)
        {
          v98 = OUTLINED_FUNCTION_2_48();
          v99(v98);
          v14 = v141;
          v13 = v142;
LABEL_22:
          sub_267B9FED8(v93, &qword_28022BCE0, &qword_267F08758);
LABEL_23:
          v59 = v146;
LABEL_24:
          result = __swift_destroy_boxed_opaque_existential_0(v150);
          goto LABEL_25;
        }

        sub_267B9FED8(v92, &qword_28022BCE0, &qword_267F08758);
        v100 = sub_267EF5A78();
        v101 = *(v100 + 16);
        if (v101)
        {
          v102 = v137;
          (*(v94 + 16))(v137, v100 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * (v101 - 1), v69);
          v103 = 0;
        }

        else
        {
          v103 = 1;
          v102 = v137;
        }

        __swift_storeEnumTagSinglePayload(v102, v103, 1, v69);

        v104 = OUTLINED_FUNCTION_19_24();
        OUTLINED_FUNCTION_5_1(v104, v105, v69);
        if (v97)
        {
          v106 = OUTLINED_FUNCTION_2_48();
          v107(v106);
          v108 = v102;
          v109 = &qword_28022BCD8;
          v110 = &unk_267F0ECC0;
LABEL_35:
          sub_267B9FED8(v108, v109, v110);
          v14 = v141;
          v13 = v142;
          v28 = v136;
          goto LABEL_23;
        }

        v111 = v134;
        sub_267EF58F8();
        v95(v102, v69);
        v112 = sub_267EF58E8();
        OUTLINED_FUNCTION_5_1(v111, 1, v112);
        if (v113)
        {
          v114 = OUTLINED_FUNCTION_2_48();
          v115(v114);
          v108 = v111;
          v109 = &qword_28022BCD0;
          v110 = &qword_267F08750;
          goto LABEL_35;
        }

        v80 = sub_267EF58D8();
        v116 = OUTLINED_FUNCTION_2_48();
        v117(v116);
        OUTLINED_FUNCTION_5_0(v112);
        (*(v118 + 8))(v111, v112);
        v14 = v141;
        v13 = v142;
        v28 = v136;
        v59 = v146;
      }

      else
      {
        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v73, v74, v75, v40);
        sub_267B9FED8(v39, &qword_28022BCE8, &qword_267F08760);
        sub_267B9AFEC(v150, v149);
        if ((swift_dynamicCast() & 1) == 0)
        {
          OUTLINED_FUNCTION_78();
          __swift_storeEnumTagSinglePayload(v81, v82, v83, v14);
          sub_267B9FED8(v13, &qword_280229798, &unk_267EFE4D0);
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v76, v77, v78, v14);
        v79 = v140;
        (*v139)(v140, v13, v14);
        v80 = sub_267EC0AC4();
        (*v138)(v79, v14);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v150);
      if (v80)
      {

        v53 = v128;
        sub_267DA7024(v128, v126);
        v119 = v127;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v151 = v119;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v121 = *(v119 + 16);
          sub_267C7235C();
          v119 = v151;
        }

        v54 = v135;
        v122 = *(v119 + 16);
        if (v122 >= *(v119 + 24) >> 1)
        {
          sub_267C7235C();
          v119 = v151;
        }

        *(v119 + 16) = v122 + 1;
        v127 = v119;
        v51 = sub_267DA7024(v126, v119 + v133 + v122 * v132);
        goto LABEL_2;
      }

LABEL_25:
      ++v60;
    }
  }

  MEMORY[0x28223BE20](v51);
  *(&v124 - 2) = v125;
  v123 = sub_267DA4A24(sub_267DA70E4, (&v124 - 4), v127);

  return v123;
}

uint64_t sub_267DA5ADC@<X0>(uint64_t a1@<X8>)
{
  v180 = a1;
  v2 = type metadata accessor for SmsContactIntentNode();
  OUTLINED_FUNCTION_5_0(v2);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6();
  v166 = v6;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v7);
  v173 = v165 - v8;
  v184 = sub_267EF6AE8();
  v9 = OUTLINED_FUNCTION_58(v184);
  v172 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  v171 = v14 - v13;
  v15 = sub_267EF6A18();
  v16 = OUTLINED_FUNCTION_58(v15);
  v175 = v17;
  v176 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v21);
  v170 = v165 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229EC0, &qword_267EFF9A8);
  v24 = OUTLINED_FUNCTION_18(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6();
  v179 = v27;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_77_0();
  v174 = v29;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77_0();
  v169 = v32;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v33);
  v183 = v165 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC50, &qword_267F08558);
  OUTLINED_FUNCTION_18(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCF8, &qword_267F08770);
  OUTLINED_FUNCTION_18(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD00, &qword_267F08778);
  OUTLINED_FUNCTION_18(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_105();
  v168 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD08, &qword_267F08780);
  OUTLINED_FUNCTION_18(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_105();
  v167 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD10, &qword_267F08788);
  OUTLINED_FUNCTION_18(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v56);
  v58 = v165 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD18, &unk_267F08790);
  OUTLINED_FUNCTION_18(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v62);
  v64 = v165 - v63;
  v65 = sub_267EF59A8();
  v66 = OUTLINED_FUNCTION_58(v65);
  v68 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_0_0();
  v73 = v72 - v71;
  v182 = sub_267EF6A08();
  v74 = OUTLINED_FUNCTION_58(v182);
  v178 = v75;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_6();
  v177 = v78;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v79);
  v81 = v165 - v80;
  sub_267EF69F8();
  v181 = v1;
  sub_267D6BECC(v64);
  OUTLINED_FUNCTION_5_1(v64, 1, v65);
  if (v87)
  {
    sub_267B9FED8(v64, &qword_28022BD18, &unk_267F08790);
    v82 = v181;
    v83 = v183;
  }

  else
  {
    (*(v68 + 32))(v73, v64, v65);
    OUTLINED_FUNCTION_7_35();
    sub_267EF5D48();
    v84 = sub_267EF55E8();
    v85 = OUTLINED_FUNCTION_19_24();
    OUTLINED_FUNCTION_5_1(v85, v86, v84);
    v165[0] = v68;
    if (v87)
    {
      sub_267B9FED8(v58, &qword_28022BD10, &qword_267F08788);
    }

    else
    {
      sub_267EF55D8();
      OUTLINED_FUNCTION_5_0(v84);
      (*(v88 + 8))(v58, v84);
      sub_267EF6928();
    }

    OUTLINED_FUNCTION_7_35();
    sub_267EF5DC8();
    v89 = v167;
    if (v90 || (OUTLINED_FUNCTION_7_35(), sub_267EF5D98(), v91))
    {
      sub_267EF69E8();
    }

    OUTLINED_FUNCTION_7_35();
    sub_267EF5D38();
    if (v92)
    {
      sub_267EF6918();
    }

    OUTLINED_FUNCTION_7_35();
    sub_267EF5DA8();
    if (v93)
    {
      sub_267EF68F8();
    }

    OUTLINED_FUNCTION_7_35();
    sub_267EF5DB8();
    if (v94)
    {
      sub_267EF69C8();
    }

    OUTLINED_FUNCTION_7_35();
    sub_267EF5D58();
    v95 = sub_267EF55F8();
    OUTLINED_FUNCTION_5_1(v89, 1, v95);
    if (v87)
    {
      sub_267B9FED8(v89, &qword_28022BD08, &qword_267F08780);
    }

    else
    {
      sub_267DA71E0(&qword_28022BD20, MEMORY[0x277D5E408]);
      sub_267EF9298();
      OUTLINED_FUNCTION_5_0(v95);
      (*(v96 + 8))(v89, v95);
      sub_267EF6938();
    }

    v82 = v181;
    OUTLINED_FUNCTION_7_35();
    sub_267EF5D88();
    v83 = v183;
    if (v97)
    {
      sub_267EF6958();
    }

    v98 = v168;
    OUTLINED_FUNCTION_7_35();
    sub_267EF5D78();
    v99 = sub_267EF5608();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v98, 1, v99);
    sub_267B9FED8(v98, &qword_28022BD00, &qword_267F08778);
    if (EnumTagSinglePayload != 1)
    {
      OUTLINED_FUNCTION_7_35();
      sub_267EF5D68();
      if (v101)
      {
      }
    }

    sub_267EF6998();
    OUTLINED_FUNCTION_7_35();
    sub_267EF5D68();
    if (v102)
    {
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v182);
      sub_267EF6B98();
      sub_267EF6BA8();
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v106, v107, v108, v109);
      sub_267EF6948();
    }

    (*(v165[0] + 8))(v73, v65);
  }

  if (qword_280228858 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_8_39();
  sub_267DA71E0(v110, v111);
  sub_267EF5B28();
  if (v186)
  {
    sub_267EF69D8();
    OUTLINED_FUNCTION_16_26();
    OUTLINED_FUNCTION_11_35();
    if (v112 || (sub_267EF6908(), OUTLINED_FUNCTION_16_26(), OUTLINED_FUNCTION_11_35(), v113) || (sub_267EF68E8(), OUTLINED_FUNCTION_16_26(), OUTLINED_FUNCTION_11_35(), v114))
    {
    }

    else
    {
      sub_267EF69E8();
    }
  }

  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v184);
  if (qword_280228878 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_48();
  v118 = sub_267DEAC8C(v185, v186);

  if ((v118 & 1) == 0)
  {
    (*(v175 + 104))(v170, *MEMORY[0x277D56010], v176);
    OUTLINED_FUNCTION_3_48();
    v127 = v169;
LABEL_51:
    sub_267EF6AD8();
    sub_267B9FED8(v83, &qword_280229EC0, &qword_267EFF9A8);
    OUTLINED_FUNCTION_9();
    v121 = v184;
    __swift_storeEnumTagSinglePayload(v128, v129, v130, v184);
    v131 = v127;
LABEL_52:
    sub_267DA7100(v131, v83);
    goto LABEL_53;
  }

  if (qword_280228880 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_48();
  v119 = sub_267DEAC8C(v185, v186);

  if ((v119 & 1) == 0)
  {
    (*(v175 + 104))(v165[3], *MEMORY[0x277D56008], v176);
    OUTLINED_FUNCTION_3_48();
    v127 = v165[2];
    goto LABEL_51;
  }

  if (qword_280228888 != -1)
  {
    swift_once();
  }

  sub_267EF5B28();
  v120 = v186;
  v121 = v184;
  if (v186)
  {
    v122 = v185;
    v123 = HIBYTE(v186) & 0xF;
    if ((v186 & 0x2000000000000000) == 0)
    {
      v123 = v185 & 0xFFFFFFFFFFFFLL;
    }

    if (v123)
    {

      v124 = sub_267D6DC7C();
      if (v124 == 41 || (v125 = sub_267D6DC24(v124)) == 0)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v156 = sub_267EF8A08();
        __swift_project_value_buffer(v156, qword_280240FB0);

        v157 = sub_267EF89F8();
        v158 = sub_267EF95D8();

        if (os_log_type_enabled(v157, v158))
        {
          v159 = swift_slowAlloc();
          v160 = swift_slowAlloc();
          v185 = v160;
          *v159 = 136315138;
          *(v159 + 4) = sub_267BA33E8(v122, v120, &v185);
          _os_log_impl(&dword_267B93000, v157, v158, "ContactMapping# Unable to map provided contact type %s", v159, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v160);
          v82 = v181;
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_32_0();
        }
      }

      else
      {
        v126 = v125;
        sub_267EF9028();
      }

      (*(v175 + 104))(v165[1], *MEMORY[0x277D56018], v176);
      v161 = v174;
      sub_267EF6AD8();
      sub_267B9FED8(v83, &qword_280229EC0, &qword_267EFF9A8);
      OUTLINED_FUNCTION_9();
      v121 = v184;
      __swift_storeEnumTagSinglePayload(v162, v163, v164, v184);
      v131 = v161;
      goto LABEL_52;
    }

    v121 = v184;
  }

LABEL_53:
  v132 = v179;
  sub_267DA7170(v83, v179);
  if (__swift_getEnumTagSinglePayload(v132, 1, v121) == 1)
  {
    sub_267B9FED8(v132, &qword_280229EC0, &qword_267EFF9A8);
  }

  else
  {
    v134 = v171;
    v133 = v172;
    (*(v172 + 32))(v171, v132, v121);
    (*(v133 + 16))(v174, v134, v121);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v135, v136, v137, v121);
    sub_267EF69A8();
    (*(v133 + 8))(v134, v121);
  }

  v138 = v182;
  v139 = v177;
  sub_267EF69F8();
  v140 = sub_267EF6968();
  v141 = v178;
  v142 = *(v178 + 8);
  v142(v139, v138);
  if (v140)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v143 = sub_267EF8A08();
    __swift_project_value_buffer(v143, qword_280240FB0);
    v144 = v173;
    sub_267DA6FC0(v82, v173);
    v145 = sub_267EF89F8();
    v146 = sub_267EF95D8();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v185 = v148;
      *v147 = 136315138;
      sub_267DA6FC0(v144, v166);
      v149 = sub_267EF9098();
      v151 = v150;
      sub_267DA7088(v144);
      v152 = sub_267BA33E8(v149, v151, &v185);

      *(v147 + 4) = v152;
      _os_log_impl(&dword_267B93000, v145, v146, "ContactMapping# converted contact is empty: %s", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v148);
      OUTLINED_FUNCTION_32_0();
      v138 = v182;
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      sub_267DA7088(v144);
    }

    sub_267B9FED8(v183, &qword_280229EC0, &qword_267EFF9A8);
    v142(v81, v138);
    v154 = 1;
    v153 = v180;
  }

  else
  {
    sub_267B9FED8(v183, &qword_280229EC0, &qword_267EFF9A8);
    v153 = v180;
    (*(v141 + 32))(v180, v81, v138);
    v154 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v153, v154, 1, v138);
}

uint64_t sub_267DA6AEC()
{
  v0 = sub_267EF61C8();
  v1 = OUTLINED_FUNCTION_58(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_0();
  v8 = v7 - v6;
  if (qword_280228870 != -1)
  {
    swift_once();
  }

  type metadata accessor for SmsContactIntentNode();
  OUTLINED_FUNCTION_8_39();
  sub_267DA71E0(v9, v10);
  sub_267EF5B28();
  v11 = 0;
  if (v20 - 31 <= 1)
  {
    v12 = sub_267EF65B8();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_267EF65A8();
    (*(v3 + 104))(v8, *MEMORY[0x277D5EE50], v0);
    sub_267EF6598();
    (*(v3 + 8))(v8, v0);
    v15 = sub_267EF6168();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = sub_267EF6158();

    sub_267EF5DE8();

    v11 = MEMORY[0x26D6059D0](v18);
  }

  return v11;
}

uint64_t sub_267DA6CE0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_267DA6AEC();
  if (!v5)
  {
    return sub_267DA5ADC(a2);
  }

  v6 = v5;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v7 = sub_267EF8A08();
  __swift_project_value_buffer(v7, qword_280240FB0);
  v8 = sub_267EF89F8();
  v9 = sub_267EF95D8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_267B93000, v8, v9, "ContactMapping# resolving contact reference", v10, 2u);
    MEMORY[0x26D60A7B0](v10, -1, -1);
  }

  v11 = sub_267D270C4(v6, a1);
  if (v2)
  {
    v13 = v2;
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      v18 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v19 = sub_267EF9098();
      v21 = sub_267BA33E8(v19, v20, &v26);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_267B93000, v14, v15, "ContactMapping# failed to resolve reference: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x26D60A7B0](v17, -1, -1);
      MEMORY[0x26D60A7B0](v16, -1, -1);
    }

    else
    {
    }

    v25 = sub_267EF6A08();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v25);
  }

  else
  {
    v23 = v11;
    if (v11 == 1)
    {
      v24 = sub_267EF6A08();
      __swift_storeEnumTagSinglePayload(a2, 1, 1, v24);
    }

    else
    {
      sub_267D27798(v11, v12, a2);
    }
  }
}

uint64_t sub_267DA6FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsContactIntentNode();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DA7024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsContactIntentNode();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DA7088(uint64_t a1)
{
  v2 = type metadata accessor for SmsContactIntentNode();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267DA7100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229EC0, &qword_267EFF9A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DA7170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229EC0, &qword_267EFF9A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DA71E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267DA7228()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_267DA7284()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return result;
}

uint64_t sub_267DA7298@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v79 = a8;
  v88 = a6;
  v77 = a4;
  v81 = a9;
  v87 = sub_267EF6A88();
  v14 = OUTLINED_FUNCTION_58(v87);
  v85 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v86 = v18;
  v19 = sub_267EF6B88();
  v20 = OUTLINED_FUNCTION_58(v19);
  v82 = v21;
  v83 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v84 = v24;
  v25 = sub_267EF6B38();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_2_0();
  v80 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229428, &unk_267F00E50);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v90 = &v73 - v30;
  v31 = sub_267EF2E38();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  OUTLINED_FUNCTION_2_0();
  v89 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v76 = &v73 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v73 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v73 - v41;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v43 = sub_267EF8A08();
  __swift_project_value_buffer(v43, qword_280240FB0);
  sub_267BB16A4(a7, v42, &qword_280229430, &qword_267EFD2C0);

  v44 = sub_267EF89F8();
  v45 = sub_267EF95D8();

  v46 = os_log_type_enabled(v44, v45);
  v78 = a1;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v74 = a5;
    v48 = v47;
    v49 = swift_slowAlloc();
    v75 = a3;
    v73 = v49;
    v92 = a2;
    v93[0] = v49;
    *v48 = 136315394;
    v91 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v50 = sub_267EF9098();
    v52 = a7;
    v53 = sub_267BA33E8(v50, v51, v93);

    *(v48 + 4) = v53;
    a7 = v52;
    *(v48 + 12) = 2080;
    sub_267BB16A4(v42, v40, &qword_280229430, &qword_267EFD2C0);
    v54 = sub_267EF9098();
    v56 = v55;
    sub_267C334FC(v42);
    v57 = sub_267BA33E8(v54, v56, v93);

    *(v48 + 14) = v57;
    _os_log_impl(&dword_267B93000, v44, v45, "#SiriKitContactResolving CRR config creation with appIdentifier:%s, crrCommsAppSelectionJointId:%s", v48, 0x16u);
    v58 = v73;
    swift_arrayDestroy();
    v59 = v58;
    a3 = v75;
    MEMORY[0x26D60A7B0](v59, -1, -1);
    v60 = v48;
    v61 = v74;
    MEMORY[0x26D60A7B0](v60, -1, -1);

    if (!v61)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_267EF6F98();
    sub_267EF37B8();
    v63 = v62;

    if (v63)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_267C334FC(v42);
  if (a5)
  {
    goto LABEL_7;
  }

LABEL_8:

LABEL_9:
  v91 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229438, &unk_267F01FB0);
  sub_267EF9098();
  v64 = v77[4];
  __swift_project_boxed_opaque_existential_0(v77, v77[3]);
  sub_267EF3B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_267EFC020;
  v66 = 0x8000000267F10280;
  v67 = 0xD000000000000013;
  if (a2)
  {
    v67 = v78;
    v66 = a2;
  }

  *(v65 + 32) = v67;
  *(v65 + 40) = v66;
  sub_267BB16A4(v79, v90, &qword_280229428, &unk_267F00E50);
  v68 = a7;
  v69 = v76;
  sub_267BB16A4(v68, v76, &qword_280229430, &qword_267EFD2C0);
  v70 = sub_267EF2D28();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, 1, v70);

  if (EnumTagSinglePayload == 1)
  {
    sub_267C334FC(v69);
  }

  else
  {
    sub_267EF2CE8();
    (*(*(v70 - 8) + 8))(v69, v70);
  }

  sub_267EF6B28();
  (*(v82 + 104))(v84, *MEMORY[0x277D56148], v83);
  (*(v85 + 104))(v86, *MEMORY[0x277D560D0], v87);
  return sub_267EF6AF8();
}

void sub_267DA798C(void *a1)
{
  if (![a1 attributes])
  {
    v3 = sub_267DA7B4C(a1);
    if (!v3 || (v4 = *(v3 + 16), , !v4))
    {
      v5 = sub_267DE92F0(a1);
      if (!v5 || (v6 = *(v5 + 16), , !v6))
      {
        v7 = sub_267E2D798(a1);
        if (!v7 || (v8 = *(v7 + 16), , !v8))
        {
          v9 = sub_267BCEA0C(a1);
          if (!v9 || (sub_267BAF0DC(v9), OUTLINED_FUNCTION_45_3(), !v1))
          {
            v10 = sub_267E43628(a1);
            if (!v10 || (v11 = *(v10 + 16), , !v11))
            {
              sub_267BC1E68();
              [a1 copy];
              sub_267EF99B8();
              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_0_45();
              sub_267DE9088();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_267DA7A98(void *a1)
{
  if (([a1 attributes] & 2) == 0)
  {
    return 0;
  }

  v4 = sub_267E2D6E4(a1);
  if (!v4 || (sub_267BAF0DC(v4), OUTLINED_FUNCTION_45_3(), !v1))
  {
    v5 = sub_267E2D700(a1);
    if (!v5 || (sub_267BAF0DC(v5), OUTLINED_FUNCTION_45_3(), !v1))
    {
      v6 = sub_267E2D78C(a1);
      if (!v6 || (v7 = *(v6 + 16), , !v7))
      {
        result = [a1 dateTimeRange];
        if (!result)
        {
          return result;
        }
      }
    }
  }

  return 1;
}

uint64_t sub_267DA7B4C(void *a1)
{
  v1 = [a1 contents];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF92F8();

  return v3;
}

void *sub_267DA7BA4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v24 - v8);
  type metadata accessor for ConversationAppendingAction();
  swift_allocObject();
  v10 = sub_267D27A0C(a1, a2);
  v11 = sub_267BE6C54(a2);
  v12 = sub_267DA8268(&qword_28022B0B8, type metadata accessor for ConversationAppendingAction);
  v13 = v11[3];
  v11[3] = v10;
  v11[4] = v12;
  swift_retain_n();

  swift_unknownObjectRelease();
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = a2;
  v14[4] = v5;
  v15 = type metadata accessor for OfferTransitionActionGroup();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_267CFB440(sub_267DA8238, v14);

  v19 = sub_267DA8268(&qword_280229990, type metadata accessor for OfferTransitionActionGroup);
  *v9 = v18;
  v9[1] = v19;
  v20 = *MEMORY[0x277D5BF58];
  v21 = sub_267EF4548();
  (*(*(v21 - 8) + 104))(v9, v20, v21);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v21);
  v22 = OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition;
  swift_beginAccess();
  sub_267C13844(v9, v11 + v22);
  swift_endAccess();

  return v11;
}

uint64_t sub_267DA7E3C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v6 = sub_267EF4548();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = qword_280228818;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_267B93000, v14, v15, "#ConversationAppendingActionGroup creating offer transition for native flow", v16, 2u);
      MEMORY[0x26D60A7B0](v16, -1, -1);
    }

    sub_267CAA1C0(v11, a2, v10);
    a3(v10);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v17 = sub_267EF8A08();
    __swift_project_value_buffer(v17, qword_280240FB0);
    v18 = sub_267EF89F8();
    v19 = sub_267EF95D8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_267B93000, v18, v19, "#ConversationAppendingActionGroup no more conversation", v20, 2u);
      MEMORY[0x26D60A7B0](v20, -1, -1);
    }

    v21 = type metadata accessor for RequestConclusionActionGroup(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();

    v25 = sub_267DFA04C(v24);
    v26 = sub_267DA8268(&qword_28022BD38, type metadata accessor for RequestConclusionActionGroup);
    *v10 = v25;
    v10[1] = v26;
    (*(v7 + 104))(v10, *MEMORY[0x277D5BF58], v6);
    a3(v10);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_267DA8158()
{
  v0 = *sub_267BA0068();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConversationAppendingActionGroup()
{
  result = qword_28022BD28;
  if (!qword_28022BD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267DA8238(void (*a1)(uint64_t *))
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  return sub_267DA7E3C(v3, v4, a1);
}

uint64_t sub_267DA8268(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267DA82B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_267BC7934(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_267BC7934((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_267DA8380(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_267C723B4();
    v4 = (a1 + 56);
    v2 = v16;
    do
    {
      v8 = *(v4 - 3);
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229AC8, &qword_267EFEF58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BE00, &qword_267EFEF48);
      swift_dynamicCast();
      v5 = *(v16 + 16);
      if (v5 >= *(v16 + 24) >> 1)
      {
        sub_267C723B4();
      }

      *(v16 + 16) = v5 + 1;
      v6 = (v16 + 32 * v5);
      v6[4] = v12;
      v6[5] = v13;
      v6[6] = v14;
      v6[7] = v15;
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_267DA84BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_267EF9A68();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x277D84F90];
  result = sub_267C72434(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D609870](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      swift_dynamicCast();
      v10 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_267C72434((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      sub_267BA7F4C(&v9, (v3 + 32 * v8 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_267DA8624(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    OUTLINED_FUNCTION_4_46();
    sub_267C72454();
    v4 = (v1 + 32);
    v3 = v10;
    do
    {
      v8 = *v4;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BE10, &qword_267EFEED0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B18, &qword_267EFEFB8);
      swift_dynamicCast();
      v5 = v9;
      v6 = *(v10 + 16);
      if (v6 >= *(v10 + 24) >> 1)
      {
        sub_267C72454();
        v5 = v9;
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 16 * v6 + 32) = v5;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_267DA874C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = OUTLINED_FUNCTION_4_46();
    sub_267C72434(v4, v5, v6);
    v3 = v14;
    v7 = (v1 + 40);
    do
    {
      v11 = *(v7 - 1);
      v12 = *v7;

      swift_dynamicCast();
      v14 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_267C72434((v8 > 1), v9 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v9 + 1;
      sub_267BA7F4C(&v13, (v3 + 32 * v9 + 32));
      v7 += 2;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_267DA8838(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = OUTLINED_FUNCTION_4_46();
    sub_267BE8B74(v4, v5, v6);
    v3 = v15;
    v7 = (v1 + 40);
    do
    {
      v12 = *(v7 - 1);
      v13 = *v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
      swift_dynamicCast();
      v8 = v14;
      v10 = *(v15 + 16);
      v9 = *(v15 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_267BE8B74((v9 > 1), v10 + 1, 1);
        v8 = v14;
      }

      *(v15 + 16) = v10 + 1;
      *(v15 + 16 * v10 + 32) = v8;
      v7 += 2;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_267DA893C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_267C7279C(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_267B9AFEC(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDE8, &qword_267F08928);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BDF0, &unk_267EFEF00);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_267C7279C((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_267B9A5E8(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_267DA8A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v129 = a7;
  v133 = a6;
  v122 = a5;
  *&v142 = a2;
  v119 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD40, &unk_267F003E0);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  v134 = v12;
  OUTLINED_FUNCTION_26_2();
  v137 = sub_267EF6EA8();
  v13 = OUTLINED_FUNCTION_58(v137);
  v114 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v19 = v18 - v17;
  v138 = sub_267EF6F58();
  v20 = OUTLINED_FUNCTION_58(v138);
  v136 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_0();
  v26 = v25 - v24;
  v126 = sub_267EF2CC8();
  v27 = OUTLINED_FUNCTION_58(v126);
  v125 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_0();
  v124 = v32 - v31;
  OUTLINED_FUNCTION_26_2();
  v123 = sub_267EF2D28();
  v33 = OUTLINED_FUNCTION_58(v123);
  v121 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_0_0();
  v120 = v38 - v37;
  OUTLINED_FUNCTION_26_2();
  v117 = sub_267EF6EB8();
  v39 = OUTLINED_FUNCTION_58(v117);
  v116 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_0_0();
  v115 = v44 - v43;
  OUTLINED_FUNCTION_26_2();
  v45 = sub_267EF6D88();
  v46 = OUTLINED_FUNCTION_58(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v52);
  v54 = &v112 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v58);
  v60 = &v112 - v59;
  v128 = sub_267EF6F08();
  v61 = OUTLINED_FUNCTION_58(v128);
  v141 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_0_0();
  v67 = v66 - v65;
  if (qword_280228818 != -1)
  {
LABEL_26:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v130 = v54;
  v131 = v48;
  v132 = v45;
  v113 = v19;
  v135 = v26;
  v68 = sub_267EF8A08();
  __swift_project_value_buffer(v68, qword_280240FB0);
  v69 = sub_267EF89F8();
  v19 = sub_267EF95D8();
  v70 = OUTLINED_FUNCTION_13_0();
  if (os_log_type_enabled(v70, v71))
  {
    OUTLINED_FUNCTION_14_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_24_23();
    _os_log_impl(v72, v73, v74, v75, v76, v77);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  sub_267EF6EF8();
  v26 = v67;
  sub_267EF6EE8();

  v140 = v67;
  sub_267EF6ED8();
  v48 = *(a4 + OBJC_IVAR____TtC16SiriMessagesFlow13MessagesGroup_membersOtherThanYou);
  a4 = sub_267BAF0DC(v48);
  v54 = 0;
  *&v142 = v48 & 0xC000000000000001;
  v45 = v48 & 0xFFFFFFFFFFFFFF8;
  v143 = MEMORY[0x277D84F90];
  while (a4 != v54)
  {
    if (v142)
    {
      v67 = MEMORY[0x26D609870](v54, v48);
    }

    else
    {
      if (v54 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v67 = *(v48 + 8 * v54 + 32);
    }

    v19 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v26 = v67;
    sub_267EF7788();
    v78 = sub_267EF79B8();
    if (__swift_getEnumTagSinglePayload(v60, 1, v78) == 1)
    {

      sub_267B9F98C(v60, &unk_28022AE30, &qword_267EFC0B0);
      ++v54;
    }

    else
    {
      v26 = sub_267EF7998();
      v80 = v79;

      (*(*(v78 - 8) + 8))(v60, v78);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = *(v143 + 16);
        sub_267BF4EE8();
        v143 = v84;
      }

      v67 = *(v143 + 16);
      if (v67 >= *(v143 + 24) >> 1)
      {
        sub_267BF4EE8();
        v143 = v85;
      }

      v81 = v143;
      *(v143 + 16) = v67 + 1;
      v82 = v81 + 16 * v67;
      *(v82 + 32) = v26;
      *(v82 + 40) = v80;
      v54 = v19;
    }
  }

  v86 = v118;
  sub_267EF6D78();
  v87 = *(v119 + 128);
  sub_267EF7C18();
  sub_267EF6D48();
  (*(v116 + 16))(v115, v122, v117);
  sub_267EF6D58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD50, &qword_267F088B8);
  v88 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD58, &qword_267F088C0) - 8);
  v89 = *(*v88 + 72);
  v90 = *(*v88 + 80);
  OUTLINED_FUNCTION_20_22();
  v91 = swift_allocObject();
  v142 = xmmword_267EFC020;
  *(v91 + 16) = xmmword_267EFC020;
  v92 = (v91 + v19);
  v93 = v88[14];
  *v92 = 0xD000000000000018;
  v92[1] = 0x8000000267F19D80;
  sub_267EF9318();

  sub_267EF6F88();
  sub_267EF8F28();
  sub_267EF6D38();
  v94 = v120;
  sub_267EF2D18();
  sub_267EF2CE8();
  (*(v121 + 8))(v94, v123);
  sub_267EF6CF8();
  sub_267EF6CE8();
  (*(v125 + 16))(v124, v129, v126);
  sub_267EF6D68();
  sub_267EF6D18();
  v96 = v130;
  v95 = v131;
  v97 = v132;
  (*(v131 + 32))(v130, v86, v132);
  (*(v95 + 16))(v127, v96, v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD60, &qword_267F088C8);
  inited = swift_initStackObject();
  *(inited + 16) = v142;
  *(inited + 32) = 0x746E4570756F7247;
  *(inited + 40) = 0xEB00000000797469;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD68, &qword_267F088D0);
  v99 = v141;
  v100 = *(v141 + 72);
  v101 = (*(v141 + 80) + 32) & ~*(v141 + 80);
  v102 = swift_allocObject();
  *(v102 + 16) = v142;
  v103 = *(v99 + 16);
  v104 = v128;
  v103(v102 + v101, v140, v128);
  *(inited + 48) = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD70, &qword_267F00648);
  sub_267EF8F28();
  v105 = v135;
  sub_267EF6F18();
  v106 = v134;
  sub_267B9A598(v133, v134, &unk_28022BD40, &unk_267F003E0);
  v107 = v137;
  if (__swift_getEnumTagSinglePayload(v106, 1, v137) == 1)
  {
    sub_267B9F98C(v106, &unk_28022BD40, &unk_267F003E0);
  }

  else
  {
    v108 = v114;
    v109 = v113;
    (*(v114 + 32))(v113, v106, v107);
    v110 = v139;
    sub_267EF6F48();
    if (v110)
    {
    }

    (*(v108 + 8))(v109, v107);
  }

  sub_267C167B0();
  (*(v136 + 8))(v105, v138);
  (*(v95 + 8))(v96, v97);
  return (*(v141 + 8))(v140, v104);
}

uint64_t sub_267DA9594(uint64_t a1, int a2)
{
  v4 = sub_267EF2E38();
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v12 = v11 - v10;
  v39 = sub_267EF2D48();
  v40 = v13;
  sub_267BB5034();
  v14 = OUTLINED_FUNCTION_23_19();

  if (v14)
  {
    v15 = 1;
    if ((a2 & 1) == 0)
    {
LABEL_3:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v16 = sub_267EF8A08();
      __swift_project_value_buffer(v16, qword_280240FB0);
      (*(v7 + 16))(v12, a1, v4);
      v17 = sub_267EF89F8();
      v18 = sub_267EF95C8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        OUTLINED_FUNCTION_48_7();
        v20 = swift_slowAlloc();
        v39 = v20;
        *v19 = 136315394;
        v21 = sub_267EF2D48();
        v38 = v15;
        v22 = a2;
        v24 = v23;
        (*(v7 + 8))(v12, v4);
        v25 = sub_267BA33E8(v21, v24, &v39);
        a2 = v22;
        v15 = v38;

        *(v19 + 4) = v25;
        *(v19 + 12) = 1024;
        *(v19 + 14) = v38 & 1;
        _os_log_impl(&dword_267B93000, v17, v18, "#RecentInteractionUtils Using RecentInteractionUtils enabled for %s - %{BOOL}d ", v19, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v20);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      else
      {

        (*(v7 + 8))(v12, v4);
      }

      return (v15 | a2) & 1;
    }
  }

  else
  {
    v39 = sub_267EF2D48();
    v40 = v26;
    v15 = OUTLINED_FUNCTION_23_19();

    if ((a2 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v27 = sub_267EF8A08();
  __swift_project_value_buffer(v27, qword_280240FB0);
  v28 = sub_267EF89F8();
  sub_267EF95C8();
  v29 = OUTLINED_FUNCTION_13_0();
  if (os_log_type_enabled(v29, v30))
  {
    OUTLINED_FUNCTION_14_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_24_23();
    _os_log_impl(v31, v32, v33, v34, v35, v36);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  return (v15 | a2) & 1;
}

uint64_t sub_267DA98DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v163 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD80, &qword_267F088E0);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v164 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A1F0, &qword_267F00640);
  v12 = OUTLINED_FUNCTION_58(v11);
  v170 = v13;
  v171 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_105();
  v169 = v17;
  OUTLINED_FUNCTION_26_2();
  v18 = sub_267EF6E88();
  v172 = OUTLINED_FUNCTION_58(v18);
  v173 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_6();
  v166 = v22;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v23);
  v167 = &v160 - v24;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v25);
  v168 = &v160 - v26;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_45_0();
  v174 = v28;
  OUTLINED_FUNCTION_26_2();
  v177 = sub_267EF6CD8();
  v29 = OUTLINED_FUNCTION_58(v177);
  v184 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_45_0();
  v176 = v34;
  OUTLINED_FUNCTION_26_2();
  v35 = sub_267EF2E88();
  v36 = OUTLINED_FUNCTION_58(v35);
  v182 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_0_0();
  v179 = v41 - v40;
  OUTLINED_FUNCTION_26_2();
  v180 = sub_267EF2E98();
  v42 = OUTLINED_FUNCTION_58(v180);
  v178 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_0_0();
  v48 = v47 - v46;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_105();
  v181 = v53;
  OUTLINED_FUNCTION_26_2();
  v183 = sub_267EF2CC8();
  v54 = OUTLINED_FUNCTION_58(v183);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_14_33();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_45_0();
  v175 = v60;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v61 = sub_267EF8A08();
  v62 = __swift_project_value_buffer(v61, qword_280240FB0);
  v63 = sub_267EF89F8();
  v64 = sub_267EF95D8();
  v65 = OUTLINED_FUNCTION_13_0();
  if (os_log_type_enabled(v65, v66))
  {
    OUTLINED_FUNCTION_14_0();
    v67 = swift_slowAlloc();
    v162 = v35;
    *v67 = 0;
    _os_log_impl(&dword_267B93000, v63, v64, "#RecentInteractionUtils determining if we can refer to group as the group", v67, 2u);
    v35 = v162;
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  if (!a2)
  {
    v74 = sub_267EF89F8();
    sub_267EF95D8();
    v77 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v77, v78))
    {
LABEL_10:
      OUTLINED_FUNCTION_14_0();
      v79 = swift_slowAlloc();
      *v79 = 0;
      OUTLINED_FUNCTION_12_28();
      _os_log_impl(v80, v81, v82, v83, v79, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

LABEL_11:

LABEL_14:
    v110 = 0;
    return v110 & 1;
  }

  v161 = a2;
  v162 = a3;
  sub_267EF2E78();
  v68 = v182;
  v69 = v179;
  (*(v182 + 13))(v179, *MEMORY[0x277CC9980], v35);
  sub_267EF2CB8();
  v70 = v181;
  sub_267EF2E68();
  v71 = *(v56 + 8);
  v72 = v3;
  v73 = v183;
  v71(v72, v183);
  v68[1](v69, v35);
  (*(v178 + 8))(v48, v180);
  if (__swift_getEnumTagSinglePayload(v70, 1, v73) == 1)
  {
    sub_267B9F98C(v70, &qword_28022BD90, &unk_267EFCDD0);
    v74 = sub_267EF89F8();
    sub_267EF95E8();
    v75 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v75, v76))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v179 = v56 + 8;
  v180 = v62;
  v182 = v71;
  v84 = v175;
  (*(v56 + 32))(v175, v70, v73);
  v85 = v165;
  sub_267EF6CC8();
  sub_267EF6CA8();
  v181 = *(v184 + 8);
  v184 += 8;
  v181(v85, v177);
  v86 = v166;
  sub_267EF6E78();
  v87 = v167;
  sub_267EF6E18();
  v88 = v172;
  v90 = v173 + 8;
  v89 = *(v173 + 8);
  v89(v86, v172);
  v91 = v168;
  sub_267EF6E08();
  v89(v87, v88);
  v92 = v169;
  (*(v56 + 16))(v169, v84, v73);
  v94 = v170;
  v93 = v171;
  (*(v170 + 104))(v92, *MEMORY[0x277D5FF18], v171);
  v95 = v174;
  sub_267EF6E48();
  (*(v94 + 8))(v92, v93);
  v96 = v91;
  v97 = v89;
  v89(v96, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD98, &qword_267F088E8);
  v98 = sub_267EF6DD8();
  OUTLINED_FUNCTION_58(v98);
  v100 = v99;
  v102 = *(v101 + 72);
  v103 = *(v99 + 80);
  OUTLINED_FUNCTION_20_22();
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_267EFC020;
  (*(v100 + 104))(v104 + v92, *MEMORY[0x277D5FF98], v98);
  v106 = sub_267EF6DE8();

  v107 = v164;
  sub_267C8EAAC(v163, v161, v106);
  v108 = sub_267EF6DC8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v107, 1, v108);
  v110 = EnumTagSinglePayload != 1;
  sub_267B9F98C(v107, &unk_28022BD80, &qword_267F088E0);
  v111 = *(v106 + 16);
  if (v111 != 2)
  {
    if (v111 == 1)
    {

      v112 = sub_267EF89F8();
      v113 = sub_267EF95D8();
      v114 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 67109120;
        *(v116 + 4) = EnumTagSinglePayload != 1;
        _os_log_impl(&dword_267B93000, v112, v113, "#RecentInteractionUtils can shorten group description : %{BOOL}d", v116, 8u);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v117 = OUTLINED_FUNCTION_19_25();
      v97(v117);
      v181(v176, v177);
LABEL_21:
      v182(v175, v183);
      return v110 & 1;
    }

    v118 = sub_267EF89F8();
    sub_267EF95D8();
    v119 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v119, v120))
    {
      OUTLINED_FUNCTION_21_0();
      v121 = swift_slowAlloc();
      *v121 = 134217984;
      v122 = *(v106 + 16);

      *(v121 + 4) = v122;

      OUTLINED_FUNCTION_12_28();
      _os_log_impl(v123, v124, v125, v126, v121, 0xCu);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v138 = OUTLINED_FUNCTION_19_25();
    v97(v138);
    v139 = OUTLINED_FUNCTION_25_23();
    v140(v139);
LABEL_13:
    v182(v175, v183);
    goto LABEL_14;
  }

  if (EnumTagSinglePayload == 1)
  {

    v127 = sub_267EF89F8();
    sub_267EF95D8();
    v128 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v128, v129))
    {
      OUTLINED_FUNCTION_14_0();
      v130 = swift_slowAlloc();
      *v130 = 0;
      OUTLINED_FUNCTION_12_28();
      _os_log_impl(v131, v132, v133, v134, v130, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v135 = OUTLINED_FUNCTION_19_25();
    v97(v135);
    v136 = OUTLINED_FUNCTION_25_23();
    v137(v136);
    goto LABEL_13;
  }

  v141 = sub_267DAA7E4(v162, v106, v95);

  v142 = *(v141 + 16);
  if (v142)
  {
    v173 = v90;
    v185 = MEMORY[0x277D84F90];
    sub_267C722DC();
    v143 = 32;
    v144 = v185;
    do
    {
      v145 = *(v141 + v143);

      v147 = sub_267D2F824(v146);
      v185 = v144;
      v148 = v144[2];
      if (v148 >= v144[3] >> 1)
      {
        sub_267C722DC();
        v144 = v185;
      }

      v144[2] = v148 + 1;
      v144[v148 + 4] = v147;
      v143 += 8;
      --v142;
    }

    while (v142);
  }

  else
  {

    v144 = MEMORY[0x277D84F90];
  }

  v149 = v144[2];
  if (v149)
  {
    if (v149 != 1)
    {
      v150 = v144[4];
      v151 = v144[5];

      v110 = sub_267DAB32C(v151, v150);

      v152 = sub_267EF89F8();
      v153 = sub_267EF95D8();
      v154 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        *v156 = 67109376;
        *(v156 + 4) = v110 & 1;
        *(v156 + 8) = 1024;
        *(v156 + 10) = v110 & 1;
        _os_log_impl(&dword_267B93000, v152, v153, "#RecentInteractionUtils groups are disjoint : %{BOOL}d, can shorten group description : %{BOOL}d", v156, 0xEu);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v157 = OUTLINED_FUNCTION_19_25();
      v97(v157);
      v158 = OUTLINED_FUNCTION_25_23();
      v159(v158);
      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_267DAA6C8(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B110, &qword_267F04E38);
  v3 = sub_267EF92D8();
  v10[0] = 0;
  v4 = [v1 unifiedContactsMatchingPredicate:a1 keysToFetch:v3 error:v10];

  v5 = v10[0];
  if (v4)
  {
    sub_267BA9F38(0, &unk_28022B120, 0x277CBDA58);
    a1 = sub_267EF92F8();
    v6 = v5;
  }

  else
  {
    v7 = v10[0];
    sub_267EF2A78();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_267DAA7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v110 = a3;
  v109 = a1;
  v6 = sub_267EF6F88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v128 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDA8, &qword_267F088F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v104 = &v92 - v12;
  v112 = sub_267EF6E88();
  v13 = *(v112 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v112);
  v108 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDB0, &qword_267F088F8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v105 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v125 = &v92 - v20;
  v123 = sub_267EF6CD8();
  v21 = *(v123 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v123);
  v107 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v122 = &v92 - v25;
  v115 = sub_267EF6DC8();
  v26 = *(v115 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v115);
  v99 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDB8, &qword_267F08900);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v113 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = (&v92 - v33);
  v35 = a2 + 64;
  v36 = 1 << *(a2 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(a2 + 64);
  v95 = (v36 + 63) >> 6;
  v98 = v26 + 16;
  v97 = v26 + 32;
  v121 = (v21 + 8);
  v111 = (v13 + 8);
  v96 = "tionAppendingActionGroup";
  v129 = v7 + 16;
  v102 = v7;
  v131 = (v7 + 8);
  v100 = v26;
  v106 = (v26 + 8);
  v101 = a2;

  v39 = 0;
  v40 = MEMORY[0x277D84F90];
  v94 = &qword_267F088F8;
  v93 = &qword_28022BDB0;
  v114 = v34;
  v103 = a2 + 64;
  v127 = v6;
  while (1)
  {
    v124 = v40;
    if (!v38)
    {
      break;
    }

    v126 = v4;
    v120 = v39;
    v41 = v39;
LABEL_11:
    v119 = (v38 - 1) & v38;
    v44 = __clz(__rbit64(v38)) | (v41 << 6);
    v45 = (*(v101 + 48) + 16 * v44);
    v47 = *v45;
    v46 = v45[1];
    v48 = v100;
    v49 = v99;
    v50 = v115;
    (*(v100 + 16))(v99, *(v101 + 56) + *(v100 + 72) * v44, v115);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDC0, &qword_267F08908);
    v52 = *(v51 + 48);
    v53 = v113;
    *v113 = v47;
    *(v53 + 1) = v46;
    v42 = v53;
    (*(v48 + 32))(&v53[v52], v49, v50);
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v51);

    v43 = v125;
    v4 = v126;
    v34 = v114;
LABEL_12:
    sub_267BBE134(v42, v34, &qword_28022BDB8, &qword_267F08900);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDC0, &qword_267F08908);
    if (__swift_getEnumTagSinglePayload(v34, 1, v54) == 1)
    {

      return v124;
    }

    v55 = *v34;
    v56 = v34[1];
    v57 = *(v54 + 48);
    v58 = v107;
    sub_267EF6CC8();
    sub_267EF6C88();

    v59 = *v121;
    (*v121)(v58, v123);
    v60 = v108;
    sub_267EF6E08();
    sub_267EF6E68();
    if (v4)
    {

      (*v111)(v60, v112);
      v59(v122, v123);
      v91 = v124;

      (*v106)(v34 + v57, v115);
      return v91;
    }

    v118 = v59;
    (*v111)(v60, v112);
    v61 = v105;
    sub_267B9A598(v43, v105, &qword_28022BDB0, &qword_267F088F8);
    v62 = sub_267EF6D88();
    if (__swift_getEnumTagSinglePayload(v61, 1, v62) == 1)
    {
      goto LABEL_44;
    }

    v63 = sub_267EF6D28();
    (*(*(v62 - 8) + 8))(v61, v62);
    v64 = v127;
    if (*(v63 + 16))
    {
      v65 = sub_267BA9948();
      v21 = v104;
      if (v66)
      {
        (*(v102 + 16))(v104, *(v63 + 56) + *(v102 + 72) * v65, v64);
        v67 = 0;
      }

      else
      {
        v67 = 1;
      }
    }

    else
    {
      v67 = 1;
      v21 = v104;
    }

    __swift_storeEnumTagSinglePayload(v21, v67, 1, v64);

    if (__swift_getEnumTagSinglePayload(v21, 1, v64) == 1)
    {
      goto LABEL_43;
    }

    v68 = sub_267EF6F68();
    v130 = *v131;
    result = v130(v21, v64);
    if (!v68)
    {
      goto LABEL_45;
    }

    v116 = v68;
    v117 = v57;
    v126 = 0;
    v70 = *(v68 + 16);
    if (v70)
    {
      v71 = v68 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
      v72 = *(v102 + 72);
      v73 = *(v102 + 16);
      v74 = MEMORY[0x277D84F90];
      do
      {
        v75 = v128;
        v73(v128, v71, v64);
        v76 = sub_267EF6F78();
        v78 = v77;
        v130(v75, v64);
        if (v78)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = *(v74 + 16);
            sub_267BF4EE8();
            v74 = v82;
          }

          v79 = *(v74 + 16);
          if (v79 >= *(v74 + 24) >> 1)
          {
            sub_267BF4EE8();
            v74 = v83;
          }

          *(v74 + 16) = v79 + 1;
          v80 = v74 + 16 * v79;
          *(v80 + 32) = v76;
          *(v80 + 40) = v78;
          v64 = v127;
        }

        v71 += v72;
        --v70;
      }

      while (v70);
    }

    else
    {
      v74 = MEMORY[0x277D84F90];
    }

    v21 = sub_267DA82B0(v74);

    v84 = v124;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = *(v84 + 16);
      sub_267C71018();
      v84 = v89;
    }

    v4 = v126;
    v34 = v114;
    v38 = v119;
    v85 = *(v84 + 16);
    v86 = v84;
    if (v85 >= *(v84 + 24) >> 1)
    {
      sub_267C71018();
      v86 = v90;
    }

    sub_267B9F98C(v125, &qword_28022BDB0, &qword_267F088F8);
    v118(v122, v123);
    *(v86 + 16) = v85 + 1;
    v40 = v86;
    *(v86 + 8 * v85 + 32) = v21;
    (*v106)(v34 + v117, v115);
    v35 = v103;
    v39 = v120;
  }

  v42 = v113;
  v43 = v125;
  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v41 >= v95)
    {
      v120 = v39;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDC0, &qword_267F08908);
      __swift_storeEnumTagSinglePayload(v42, 1, 1, v87);
      v119 = 0;
      goto LABEL_12;
    }

    v38 = *(v35 + 8 * v41);
    ++v39;
    if (v38)
    {
      v126 = v4;
      v120 = v41;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_43:
  v94 = &qword_267F088F0;
  v93 = &qword_28022BDA8;
  v105 = v21;
LABEL_44:
  result = sub_267B9F98C(v105, v93, v94);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_267DAB32C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v25 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v6 + 40);
      sub_267EF9FC8();

      sub_267EF9128();
      v19 = sub_267EFA018();
      v20 = ~(-1 << *(v6 + 32));
      do
      {
        v21 = v19 & v20;
        if (((*(v6 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {

          v4 = v25;
          goto LABEL_13;
        }

        v22 = (*(v6 + 48) + 16 * v21);
        if (*v22 == v17 && v22[1] == v16)
        {
          break;
        }

        v24 = sub_267EF9EA8();
        v19 = v21 + 1;
      }

      while ((v24 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_267DAB504(uint64_t a1, uint64_t a2)
{
  v31 = sub_267EF2CC8();
  v3 = OUTLINED_FUNCTION_58(v31);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  v11 = sub_267EF2D28();
  v12 = OUTLINED_FUNCTION_58(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v19 = v18 - v17;
  v20 = sub_267EF6EB8();
  v21 = OUTLINED_FUNCTION_58(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_0();
  v28 = v27 - v26;
  sub_267EF6D78();
  v29 = *(a1 + 128);
  sub_267EF7C18();
  sub_267EF6D48();
  (*(v23 + 104))(v28, *MEMORY[0x277D5FFB0], v20);
  sub_267EF6D58();
  sub_267EF2D18();
  sub_267EF2CE8();
  (*(v14 + 8))(v19, v11);
  sub_267EF6CF8();
  sub_267EF6CE8();
  (*(v5 + 16))(v10, a2, v31);
  sub_267EF6D68();
  return sub_267EF6D18();
}

uint64_t sub_267DAB760(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int16x4_t *a6)
{
  v264 = a6;
  v275 = a5;
  v269 = a3;
  v9 = sub_267EF2CC8();
  v247 = *(v9 - 8);
  v10 = *(v247 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v240 = &v240 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v242 = &v240 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v244 = &v240 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v276 = &v240 - v18;
  MEMORY[0x28223BE20](v17);
  v277 = &v240 - v19;
  v285 = sub_267EF6DC8();
  v283 = *(v285 - 8);
  v20 = *(v283 + 64);
  v21 = MEMORY[0x28223BE20](v285);
  v246 = &v240 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v248 = &v240 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v274 = &v240 - v26;
  MEMORY[0x28223BE20](v25);
  v270 = &v240 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDB8, &qword_267F08900);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v281 = &v240 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v279 = (&v240 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD80, &qword_267F088E0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v241 = &v240 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v245 = &v240 - v38;
  MEMORY[0x28223BE20](v37);
  v243 = &v240 - v39;
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDC0, &qword_267F08908);
  v40 = *(*(v284 - 8) + 64);
  MEMORY[0x28223BE20](v284);
  v286 = (&v240 - v41);
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDC8, &qword_267F08910);
  *&v262 = *(v263 - 8);
  v42 = *(v262 + 64);
  MEMORY[0x28223BE20](v263);
  v261 = (&v240 - v43);
  v44 = sub_267EF6E88();
  v272 = *(v44 - 1);
  v273 = v44;
  v45 = *(v272 + 64);
  v46 = MEMORY[0x28223BE20](v44);
  v257 = (&v240 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = MEMORY[0x28223BE20](v46);
  v259 = &v240 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v260 = (&v240 - v51);
  MEMORY[0x28223BE20](v50);
  v271 = &v240 - v52;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDD0, &qword_267F08918);
  v282 = *(v280 - 1);
  v53 = *(v282 + 64);
  MEMORY[0x28223BE20](v280);
  v258 = (&v240 - v54);
  v55 = sub_267EF6CD8();
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  v58 = MEMORY[0x28223BE20](v55);
  v60 = &v240 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v58);
  v256 = &v240 - v62;
  MEMORY[0x28223BE20](v61);
  v268 = &v240 - v63;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v64 = sub_267EF8A08();
  v65 = __swift_project_value_buffer(v64, qword_280240FB0);

  v265 = v65;
  v66 = sub_267EF89F8();
  v67 = sub_267EF95D8();

  v68 = os_log_type_enabled(v66, v67);
  v278 = v9;
  v267 = v55;
  v250 = a4;
  v266 = a1;
  if (v68)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v287 = v70;
    *v69 = 136315394;
    *(v69 + 4) = sub_267BA33E8(v266, a2, &v287);
    *(v69 + 12) = 2080;
    *(v69 + 14) = sub_267BA33E8(v269, a4, &v287);
    _os_log_impl(&dword_267B93000, v66, v67, "#RecentInteractionUtils determining if name is identifying: %s : %s", v69, 0x16u);
    swift_arrayDestroy();
    v71 = v70;
    v55 = v267;
    MEMORY[0x26D60A7B0](v71, -1, -1);
    MEMORY[0x26D60A7B0](v69, -1, -1);
  }

  v249 = a2;
  v72 = sub_267DAD6E4();
  sub_267EF6CC8();
  v73 = v258;
  *v258 = v72;
  v252 = *MEMORY[0x277D5FF28];
  v74 = v282;
  v75 = *(v282 + 104);
  v254 = v282 + 104;
  v255 = v75;
  v76 = v280;
  v75(v73);
  v264 = v72;

  v77 = v256;
  sub_267EF6C98();
  v78 = *(v74 + 8);
  v282 = v74 + 8;
  v253 = v78;
  v78(v73, v76);
  v79 = *(v56 + 8);
  v251 = v56 + 8;
  v79(v60, v55);
  sub_267EF6CA8();
  v256 = v79;
  v79(v77, v55);
  v80 = v257;
  sub_267EF6E78();
  v81 = v259;
  sub_267EF6E08();
  v82 = v273;
  v272 = *(v272 + 8);
  (v272)(v80, v273);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BDD8, &qword_267F08920);
  v83 = sub_267EF6EB8();
  v84 = *(v83 - 8);
  v85 = *(v84 + 72);
  v86 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_267EFCC90;
  v88 = v87 + v86;
  v89 = *(v84 + 104);
  v89(v88, *MEMORY[0x277D5FFC0], v83);
  v90 = v88 + v85;
  v91 = v82;
  v89(v90, *MEMORY[0x277D5FFB0], v83);
  v92 = v261;
  *v261 = v87;
  v93 = v262;
  v94 = v252;
  v95 = v263;
  (*(v262 + 104))(v92, v252, v263);
  v96 = v260;
  sub_267EF6E38();
  (*(v93 + 8))(v92, v95);
  v97 = v272;
  (v272)(v81, v91);
  *v73 = &unk_2878CA280;
  v98 = v280;
  (v255)(v73, v94, v280);
  v99 = v271;
  sub_267EF6E28();
  v100 = v73;
  v101 = v97;
  v253(v100, v98);
  v97(v96, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD98, &qword_267F088E8);
  v102 = sub_267EF6DD8();
  v103 = *(v102 - 8);
  v104 = *(v103 + 72);
  v105 = (*(v103 + 80) + 32) & ~*(v103 + 80);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_267EFC020;
  (*(v103 + 104))(v106 + v105, *MEMORY[0x277D5FF98], v102);
  v107 = sub_267EF6DE8();
  v101(v99, v91);

  v108 = v107 + 64;
  v109 = 1 << *(v107 + 32);
  v110 = -1;
  if (v109 < 64)
  {
    v110 = ~(-1 << v109);
  }

  v111 = v110 & *(v107 + 64);
  v112 = (v109 + 63) >> 6;
  v280 = (v283 + 16);

  v113 = 0;
  v273 = MEMORY[0x277D84F90];
  v114 = v250;
  v115 = v281;
  v275 = v107;
  v282 = v107 + 64;
  v116 = v264;
  v117 = v264;
  while (v111)
  {
LABEL_13:
    v119 = __clz(__rbit64(v111));
    v111 &= v111 - 1;
    v120 = v119 | (v113 << 6);
    v121 = (*(v107 + 48) + 16 * v120);
    v91 = *v121;
    v122 = v121[1];
    v123 = v286;
    (*(v283 + 16))(v286 + *(v284 + 48), *(v107 + 56) + *(v283 + 72) * v120, v285);
    *v123 = v91;
    v123[1] = v122;
    v124 = v91 == v269 && v122 == v114;
    if (v124 || (sub_267EF9EA8() & 1) != 0)
    {

      sub_267B9F98C(v286, &qword_28022BDC0, &qword_267F08908);
      v108 = v282;
      v116 = v117;
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_267B9F98C(v286, &qword_28022BDC0, &qword_267F08908);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108 = v282;
      v126 = v114;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v131 = v273[2];
        sub_267BF4EE8();
        v273 = v132;
      }

      v127 = v273[2];
      v128 = v127 + 1;
      if (v127 >= v273[3] >> 1)
      {
        v272 = v127 + 1;
        sub_267BF4EE8();
        v128 = v272;
        v273 = v133;
      }

      v129 = v273;
      v273[2] = v128;
      v130 = &v129[2 * v127];
      v130[4] = v91;
      v130[5] = v122;
      v114 = v126;
      v107 = v275;
      v116 = v117;
    }
  }

  while (1)
  {
    v118 = v113 + 1;
    if (__OFADD__(v113, 1))
    {
      __break(1u);
LABEL_89:
      (*v272)(v244, v107);
LABEL_56:
      v201 = v256;
      v202 = v264;

      v203 = v249;

      v204 = sub_267EF89F8();
      v205 = sub_267EF95D8();

      if (!os_log_type_enabled(v204, v205))
      {

        v213 = v268;
        v209 = v202;
        v210 = v263;
        if (!v209)
        {
LABEL_81:
          v192 = 0;
          v193 = 0;
          goto LABEL_82;
        }

LABEL_65:
        if (v210 == v114 && v209 == v111)
        {
          v193 = 1;
        }

        else
        {
          v193 = sub_267EF9EA8();
          if (v210 != v114)
          {
            goto LABEL_74;
          }
        }

        if (v209 == v111)
        {

          v192 = 256;
LABEL_82:
          v201(v213, v91);
          return v192 | v193 & 1u;
        }

LABEL_74:
        v215 = sub_267EF9EA8();

        if (v215)
        {
          v192 = 256;
        }

        else
        {
          v192 = 0;
        }

        goto LABEL_82;
      }

      v206 = v201;
      v207 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      v287 = v208;
      *v207 = v262;
      *(v207 + 4) = sub_267BA33E8(v266, v203, &v287);
      *(v207 + 12) = 1024;
      v209 = v202;
      if (v202)
      {
        v210 = v263;
        if (v263 == v114 && v209 == v111)
        {
          v212 = 1;
          *(v207 + 14) = 1;
          *(v207 + 18) = 1024;
LABEL_80:
          *(v207 + 20) = v212;

          _os_log_impl(&dword_267B93000, v204, v205, "#RecentInteractionUtils sender is the only contact with %s that we've interacted with today : %{BOOL}d, use conversational name : %{BOOL}d", v207, 0x18u);
          __swift_destroy_boxed_opaque_existential_0(v208);
          MEMORY[0x26D60A7B0](v208, -1, -1);
          MEMORY[0x26D60A7B0](v207, -1, -1);

          v213 = v268;
          v201 = v206;
          v91 = v267;
          if (!v209)
          {
            goto LABEL_81;
          }

          goto LABEL_65;
        }

        *(v207 + 14) = sub_267EF9EA8() & 1;
        *(v207 + 18) = 1024;
        if (sub_267EF9EA8())
        {
          v212 = 1;
          goto LABEL_80;
        }
      }

      else
      {
        *(v207 + 14) = 0;
        *(v207 + 18) = 1024;
        v210 = v263;
      }

      v212 = 0;
      goto LABEL_80;
    }

    if (v118 >= v112)
    {
      break;
    }

    v111 = *(v108 + 8 * v118);
    ++v113;
    if (v111)
    {
      v113 = v118;
      goto LABEL_13;
    }
  }

  sub_267BD2558(v273);

  v134 = *(v107 + 16);
  v135 = v285;
  if (v134 && (v134 != 1 || (v136 = v243, sub_267C8EAAC(v269, v114, v107), v137 = __swift_getEnumTagSinglePayload(v136, 1, v135), v138 = v136, v108 = v282, sub_267B9F98C(v138, &unk_28022BD80, &qword_267F088E0), v137 == 1)))
  {
    v139 = 1 << *(v107 + 32);
    v140 = -1;
    if (v139 < 64)
    {
      v140 = ~(-1 << v139);
    }

    v141 = v140 & *(v107 + 64);
    v114 = (v139 + 63) >> 6;
    v286 = (v283 + 32);
    v272 = v247 + 8;
    v273 = (v283 + 8);

    v263 = 0;
    v264 = 0;
    v111 = 0;
    *&v142 = 136315650;
    v262 = v142;
    v143 = v274;
    v271 = v114;
    while (1)
    {
      if (!v141)
      {
        while (1)
        {
          v144 = v111 + 1;
          if (__OFADD__(v111, 1))
          {
            break;
          }

          if (v144 >= v114)
          {
            v152 = v284;
            __swift_storeEnumTagSinglePayload(v115, 1, 1, v284);
            v141 = 0;
            goto LABEL_37;
          }

          v141 = *(v108 + 8 * v144);
          ++v111;
          if (v141)
          {
            v111 = v144;
            goto LABEL_36;
          }
        }

        __break(1u);
        goto LABEL_85;
      }

      v144 = v111;
LABEL_36:
      v145 = __clz(__rbit64(v141));
      v141 &= v141 - 1;
      v146 = v145 | (v144 << 6);
      v147 = (*(v107 + 48) + 16 * v146);
      v149 = *v147;
      v148 = v147[1];
      v150 = v283;
      v151 = v270;
      (*(v283 + 16))(v270, *(v107 + 56) + *(v283 + 72) * v146, v135);
      v152 = v284;
      v153 = *(v284 + 48);
      *v115 = v149;
      *(v115 + 1) = v148;
      (*(v150 + 32))(&v115[v153], v151, v135);
      __swift_storeEnumTagSinglePayload(v115, 0, 1, v152);

      v143 = v274;
LABEL_37:
      v154 = v279;
      sub_267BBE134(v115, v279, &qword_28022BDB8, &qword_267F08900);
      if (__swift_getEnumTagSinglePayload(v154, 1, v152) == 1)
      {
        break;
      }

      v91 = *v154;
      v116 = v154[1];
      (*v286)(v143, v154 + *(v152 + 48), v135);
      v155 = v277;
      sub_267EF2CA8();
      v156 = v276;
      sub_267EF6DA8();
      sub_267EF2C38();
      v158 = v157;
      v159 = *v272;
      v160 = v278;
      (*v272)(v156, v278);
      v159(v155, v160);
      if (v158 <= 86400.0)
      {
        v263 = v91;
        v161 = *v280;
        v91 = v285;
        (*v280)(v248, v143, v285);
        v162 = v246;
        v161(v246, v143, v91);
        v163 = v116;

        v164 = sub_267EF89F8();
        v165 = sub_267EF95D8();

        v166 = os_log_type_enabled(v164, v165);
        v114 = v271;
        if (v166)
        {
          v167 = swift_slowAlloc();
          v259 = swift_slowAlloc();
          v287 = v259;
          *v167 = v262;
          v168 = sub_267BA33E8(v263, v163, &v287);
          v255 = v167;
          *(v167 + 4) = v168;
          *(v167 + 12) = 2080;
          v169 = v277;
          v260 = v163;
          v170 = v248;
          sub_267EF6DA8();
          sub_267C5EDC0();
          v171 = v278;
          v261 = sub_267EF9E58();
          v173 = v172;
          LODWORD(v258) = v165;
          v174 = v246;
          v159(v169, v171);
          v257 = v164;
          v175 = *v273;
          v176 = v285;
          (*v273)(v170, v285);
          v177 = sub_267BA33E8(v261, v173, &v287);

          v91 = v255;
          *(v255 + 14) = v177;
          *(v91 + 22) = 2048;
          v178 = sub_267EF6DB8();
          v261 = v175;
          (v175)(v174, v176);
          *(v91 + 24) = v178;
          v179 = v257;
          _os_log_impl(&dword_267B93000, v257, v258, "#RecentInteractionUtils contactId: %s interacted with most recently on %s with frequency %ld", v91, 0x20u);
          v180 = v259;
          swift_arrayDestroy();
          MEMORY[0x26D60A7B0](v180, -1, -1);
          MEMORY[0x26D60A7B0](v91, -1, -1);

          v135 = v176;
          v116 = v260;
        }

        else
        {
          v181 = *v273;
          v135 = v285;
          (*v273)(v162, v285);

          v261 = v181;
          (v181)(v248, v135);
          v116 = v163;
        }

        v143 = v274;
        v107 = v275;
        v115 = v281;
        if (v264)
        {

          v228 = v249;

          v229 = sub_267EF89F8();
          v230 = sub_267EF95D8();

          if (os_log_type_enabled(v229, v230))
          {
            v231 = v135;
            v232 = swift_slowAlloc();
            v233 = swift_slowAlloc();
            v287 = v233;
            *v232 = 136315138;
            *(v232 + 4) = sub_267BA33E8(v266, v228, &v287);
            _os_log_impl(&dword_267B93000, v229, v230, "#RecentInteractionUtils at least two interactions within the last day for %s, use full name", v232, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v233);
            MEMORY[0x26D60A7B0](v233, -1, -1);
            MEMORY[0x26D60A7B0](v232, -1, -1);

            v234 = v274;
            v235 = v231;
          }

          else
          {

            v234 = v274;
            v235 = v135;
          }

          (v261)(v234, v235);
          (v256)(v268, v267);
          v193 = 0;
          v192 = 0;
          return v192 | v193 & 1u;
        }

        (v261)(v274, v135);
        v264 = v116;
        v108 = v282;
      }

      else
      {
        v135 = v285;
        (*v273)(v143, v285);

        v115 = v281;
        v108 = v282;
        v107 = v275;
        v114 = v271;
      }
    }

    v190 = v275;

    v191 = v245;
    v114 = v269;
    v111 = v250;
    sub_267C8EAAC(v269, v250, v190);
    if (__swift_getEnumTagSinglePayload(v191, 1, v135) == 1)
    {

      sub_267B9F98C(v191, &unk_28022BD80, &qword_267F088E0);
      v91 = v267;
      goto LABEL_56;
    }

    v194 = v242;
    sub_267EF6DA8();
    v195 = *v273;
    (*v273)(v191, v135);
    v196 = v244;
    v107 = v278;
    (*(v247 + 32))(v244, v194, v278);
    v197 = v241;
    sub_267C8EAAC(v114, v111, v190);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v197, 1, v135);
    v91 = v267;
    if (EnumTagSinglePayload == 1)
    {
      (*v272)(v196, v107);
      sub_267B9F98C(v197, &unk_28022BD80, &qword_267F088E0);
      goto LABEL_56;
    }

    v199 = sub_267EF6D98();
    v200 = v197;
    v116 = v199;
    v195(v200, v135);
    if (sub_267DE0CF0(v116))
    {
      (*v272)(v244, v107);

      goto LABEL_56;
    }

LABEL_85:
    v217 = sub_267DE0D1C(v116);

    if (v217 <= 0)
    {
      goto LABEL_89;
    }

    v218 = v240;
    (*(v247 + 16))(v240, v244, v107);
    v219 = sub_267EF89F8();
    v220 = sub_267EF95D8();
    v221 = &unk_267F08000;
    if (os_log_type_enabled(v219, v220))
    {
      v222 = swift_slowAlloc();
      *v222 = 67109120;
      v223 = v277;
      sub_267EF2CA8();
      sub_267EF2C38();
      v225 = v224;
      v226 = *v272;
      (*v272)(v223, v107);
      v226(v218, v107);
      *(v222 + 4) = v225 < 172800.0;
      _os_log_impl(&dword_267B93000, v219, v220, "#RecentInteractionUtils no context for user - using conversational name : %{BOOL}d", v222, 8u);
      v227 = v222;
      v221 = &unk_267F08000;
      MEMORY[0x26D60A7B0](v227, -1, -1);
    }

    else
    {
      v226 = *v272;
      (*v272)(v218, v107);
      v223 = v277;
    }

    v236 = v256;

    sub_267EF2CA8();
    v237 = v244;
    sub_267EF2C38();
    v239 = v238;
    v226(v223, v107);
    v226(v237, v107);
    v236(v268, v267);
    v192 = 0;
    v193 = v239 < v221[278];
  }

  else
  {
    v182 = v249;

    v183 = sub_267EF89F8();
    v184 = sub_267EF95D8();

    v185 = os_log_type_enabled(v183, v184);
    v186 = v267;
    if (v185)
    {
      v187 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v287 = v188;
      *v187 = 136315394;
      *(v187 + 4) = sub_267BA33E8(v266, v182, &v287);
      *(v187 + 12) = 2048;
      v189 = *(v107 + 16);

      *(v187 + 14) = v189;

      _os_log_impl(&dword_267B93000, v183, v184, "#RecentInteractionUtils 1 day interaction count with %s is %ld, use conversational name", v187, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v188);
      MEMORY[0x26D60A7B0](v188, -1, -1);
      MEMORY[0x26D60A7B0](v187, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (v256)(v268, v186);
    v192 = 256;
    v193 = 1;
  }

  return v192 | v193 & 1u;
}

char *sub_267DAD6E4()
{
  v0 = objc_opt_self();
  v1 = sub_267EF8FF8();
  v2 = [v0 predicateForContactsMatchingName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_267EFCA40;
  *(v3 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v4 = sub_267DAA6C8(v2);

  v5 = sub_267BAF0DC(v4);
  if (!v5)
  {

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v19 = MEMORY[0x277D84F90];
  result = sub_267BC7934(0, v5 & ~(v5 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v19;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D609870](v8, v4);
      }

      else
      {
        v10 = *(v4 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 identifier];
      v13 = sub_267EF9028();
      v15 = v14;

      v17 = *(v19 + 16);
      v16 = *(v19 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_267BC7934((v16 > 1), v17 + 1, 1);
      }

      ++v8;
      *(v19 + 16) = v17 + 1;
      v18 = v19 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v6 != v8);

    return v9;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_267DAD92C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_267DAD974(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_267DAD99C(uint64_t *a1, int8x16_t *a2)
{
  v2 = a2[2].u8[0];
  v3 = *a1;
  v4 = a1[1];
  if (!*(a1 + 32))
  {
    if (!a2[2].i8[0])
    {
      if (v3 != a2->i64[0] || v4 != a2->i64[1])
      {
        OUTLINED_FUNCTION_24_24();
        if ((sub_267EF9EA8() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_24();
          goto LABEL_35;
        }
      }

      return 0;
    }

    v11 = 0;
    goto LABEL_23;
  }

  if (*(a1 + 32) != 1)
  {
    if (v2 == 2)
    {
      OUTLINED_FUNCTION_114_6(a2[1], *a2);
      if (!v12)
      {
        return 0;
      }

      v11 = 1;
      goto LABEL_25;
    }

    v11 = 1;
    if (!a2[2].i8[0])
    {
      return v11 < v2;
    }

LABEL_23:
    if (v2 == 1)
    {
      v2 = 2;
      return v11 < v2;
    }

LABEL_25:
    v2 = 1;
    return v11 < v2;
  }

  if (v2 != 1)
  {
    v11 = 2;
    if (!a2[2].i8[0])
    {
      return v11 < v2;
    }

    goto LABEL_23;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = a2[1].i64[0];
  v8 = a2[1].i64[1];
  if (v3 != a2->i64[0] || v4 != a2->i64[1])
  {
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_117_0();
    if ((sub_267EF9EA8() & 1) == 0)
    {
      OUTLINED_FUNCTION_61_0();
      OUTLINED_FUNCTION_117_0();
      goto LABEL_35;
    }
  }

  if (v5 == v7 && v6 == v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_116_6();
  if (sub_267EF9EA8())
  {
    return 0;
  }

  OUTLINED_FUNCTION_116_6();
LABEL_35:

  return sub_267EF9EA8();
}

uint64_t sub_267DADB00(uint64_t *a1, int8x16_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (!*(a1 + 32))
  {
    if (!a2[2].i8[0])
    {
      if (v4 != a2->i64[0] || v5 != a2->i64[1])
      {
        goto LABEL_19;
      }

      return 1;
    }

    return 0;
  }

  if (*(a1 + 32) != 1)
  {
    if (a2[2].i8[0] == 2)
    {
      OUTLINED_FUNCTION_114_6(a2[1], *a2);
      if (!v15)
      {
        return 1;
      }
    }

    return 0;
  }

  if (a2[2].i8[0] != 1)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[1].i64[0];
  v9 = a2[1].i64[1];
  v10 = v4 == a2->i64[0] && v5 == a2->i64[1];
  if (v10 || (v11 = sub_267EF9EA8(), result = 0, (v11 & 1) != 0))
  {
    if (v6 != v8 || v7 != v9)
    {
      OUTLINED_FUNCTION_24_24();
LABEL_19:

      return sub_267EF9EA8();
    }

    return 1;
  }

  return result;
}

BOOL sub_267DADBF4(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6 = a1[2].i8[0];
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_267DADC40(v5, v7);
}

BOOL sub_267DADC40(int8x16_t *a1, uint64_t *a2)
{
  v2 = a1[2].u8[0];
  v3 = *a2;
  v4 = a2[1];
  if (!*(a2 + 32))
  {
    if (a1[2].i8[0])
    {
      v13 = 0;
      goto LABEL_23;
    }

    if (v3 != a1->i64[0] || v4 != a1->i64[1])
    {
      v17 = *a2;
      v18 = a2[1];
      if ((sub_267EF9EA8() & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_32:
    v15 = 0;
    return (v15 & 1) == 0;
  }

  if (*(a2 + 32) != 1)
  {
    if (v2 != 2)
    {
      v13 = 1;
      if (!a1[2].i8[0])
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    v14 = vorrq_s8(*a1, a1[1]);
    if (vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))
    {
      v13 = 1;
      goto LABEL_25;
    }

    goto LABEL_32;
  }

  if (v2 == 1)
  {
    v5 = a2[2];
    v6 = a2[3];
    v7 = a1[1].i64[0];
    v8 = a1[1].i64[1];
    v9 = v3 == a1->i64[0] && v4 == a1->i64[1];
    if (!v9 && (v10 = *a2, v11 = a2[1], (sub_267EF9EA8() & 1) == 0) || (v5 == v7 ? (v12 = v6 == v8) : (v12 = 0), !v12 && (sub_267EF9EA8() & 1) == 0))
    {
LABEL_33:
      v15 = sub_267EF9EA8();
      return (v15 & 1) == 0;
    }

    goto LABEL_32;
  }

  v13 = 2;
  if (a1[2].i8[0])
  {
LABEL_23:
    if (v2 == 1)
    {
      v2 = 2;
      goto LABEL_26;
    }

LABEL_25:
    v2 = 1;
  }

LABEL_26:
  v15 = v13 < v2;
  return (v15 & 1) == 0;
}

BOOL sub_267DADDD8(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_267DADE24(v5, v7);
}

BOOL sub_267DADE24(uint64_t *a1, int8x16_t *a2)
{
  v2 = a2[2].u8[0];
  v3 = *a1;
  v4 = a1[1];
  if (!*(a1 + 32))
  {
    if (a2[2].i8[0])
    {
      v12 = 0;
      goto LABEL_23;
    }

    if (v3 != a2->i64[0] || v4 != a2->i64[1])
    {
      v16 = *a1;
      if ((sub_267EF9EA8() & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_32:
    v14 = 0;
    return (v14 & 1) == 0;
  }

  if (*(a1 + 32) != 1)
  {
    if (v2 != 2)
    {
      v12 = 1;
      if (!a2[2].i8[0])
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    v13 = vorrq_s8(*a2, a2[1]);
    if (vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)))
    {
      v12 = 1;
      goto LABEL_25;
    }

    goto LABEL_32;
  }

  if (v2 == 1)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = a2[1].i64[0];
    v8 = a2[1].i64[1];
    v9 = v3 == a2->i64[0] && v4 == a2->i64[1];
    if (!v9 && (v10 = *a1, (sub_267EF9EA8() & 1) == 0) || (v5 == v7 ? (v11 = v6 == v8) : (v11 = 0), !v11 && (sub_267EF9EA8() & 1) == 0))
    {
LABEL_33:
      v14 = sub_267EF9EA8();
      return (v14 & 1) == 0;
    }

    goto LABEL_32;
  }

  v12 = 2;
  if (a2[2].i8[0])
  {
LABEL_23:
    if (v2 == 1)
    {
      v2 = 2;
      goto LABEL_26;
    }

LABEL_25:
    v2 = 1;
  }

LABEL_26:
  v14 = v12 < v2;
  return (v14 & 1) == 0;
}

uint64_t sub_267DADFBC(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6 = a1[2].i8[0];
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_267DAE008(v5, v7) & 1;
}

uint64_t sub_267DAE008(int8x16_t *a1, uint64_t *a2)
{
  v2 = a1[2].u8[0];
  v3 = *a2;
  v4 = a2[1];
  if (!*(a2 + 32))
  {
    if (a1[2].i8[0])
    {
      v13 = 0;
      goto LABEL_23;
    }

    if (v3 != a1->i64[0] || v4 != a1->i64[1])
    {
      v17 = *a2;
      v18 = a2[1];
      if ((sub_267EF9EA8() & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    return 0;
  }

  if (*(a2 + 32) != 1)
  {
    if (v2 != 2)
    {
      v13 = 1;
      if (!a1[2].i8[0])
      {
        return v13 < v2;
      }

      goto LABEL_23;
    }

    v14 = vorrq_s8(*a1, a1[1]);
    if (vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))
    {
      v13 = 1;
      goto LABEL_25;
    }

    return 0;
  }

  if (v2 != 1)
  {
    v13 = 2;
    if (!a1[2].i8[0])
    {
      return v13 < v2;
    }

LABEL_23:
    if (v2 == 1)
    {
      v2 = 2;
      return v13 < v2;
    }

LABEL_25:
    v2 = 1;
    return v13 < v2;
  }

  v5 = a2[2];
  v6 = a2[3];
  v7 = a1[1].i64[0];
  v8 = a1[1].i64[1];
  v9 = v3 == a1->i64[0] && v4 == a1->i64[1];
  if (v9 || (v10 = *a2, v11 = a2[1], (sub_267EF9EA8() & 1) != 0))
  {
    v12 = v5 == v7 && v6 == v8;
    if (v12 || (sub_267EF9EA8() & 1) != 0)
    {
      return 0;
    }
  }

LABEL_33:

  return sub_267EF9EA8();
}

unint64_t sub_267DAE1C0()
{
  result = qword_28022BE18;
  if (!qword_28022BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BE18);
  }

  return result;
}

uint64_t sub_267DAE214()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[14];

  v2 = v0[18];
  v3 = v0[12];

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267DAE278()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v4;
  v3[5] = v0;
  v5 = v3[12];
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DAE380()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[11];

  v2 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_23_12();

  return v4();
}

uint64_t sub_267DAE3E0()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267DAE43C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267DAE498()
{
  result = 1954047348;
  switch(*(v0 + 48))
  {
    case 1:
      result = 0x696A6F6D65;
      break;
    case 2:
      result = 0x696A6F6D6E6567;
      break;
    case 3:
      result = 0x696A6F6D656DLL;
      break;
    case 4:
      result = 0x636972656E6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267DAE520(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  switch(*(a1 + 48))
  {
    case 1:
      if (*(a2 + 48) != 1)
      {
        return 0;
      }

      v24 = *(a2 + 16);
      v25 = v4 == *a2 && v5 == *(a2 + 8);
      if (!v25 && (sub_267EF9EA8() & 1) == 0)
      {
        return 0;
      }

      return v6 == v24;
    case 2:
      if (*(a2 + 48) != 2)
      {
        return 0;
      }

      v14 = *(a2 + 16);
      v13 = *(a2 + 24);
      if (v4 == *a2 && v5 == *(a2 + 8))
      {
        if (v6 != v14)
        {
          return 0;
        }

        return v7 == v13;
      }

      v16 = sub_267EF9EA8();
      result = 0;
      if ((v16 & 1) != 0 && v6 == v14)
      {
        return v7 == v13;
      }

      return result;
    case 3:
      if (*(a2 + 48) != 3)
      {
        return 0;
      }

      v17 = *(a2 + 16);
      v18 = *(a2 + 24);
      v20 = *(a2 + 32);
      v19 = *(a2 + 40);
      v21 = v4 == *a2 && v5 == *(a2 + 8);
      if (!v21 && (sub_267EF9EA8() & 1) == 0)
      {
        return 0;
      }

      if (v6 == v17 && v7 == v18)
      {
        if (v8 != v20)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_24_24();
        v23 = sub_267EF9EA8();
        result = 0;
        if ((v23 & 1) == 0 || v8 != v20)
        {
          return result;
        }
      }

      return v9 == v19;
    case 4:
      if (*(a2 + 48) != 4)
      {
        return 0;
      }

      return v4 == *a2 && v5 == *(a2 + 8);
    default:
      if (*(a2 + 48))
      {
        return 0;
      }

      if (v4 == *a2 && v5 == *(a2 + 8))
      {
        return 1;
      }

      return sub_267EF9EA8();
  }
}

NSObject *sub_267DAE6FC(NSObject *a1, uint64_t a2, void *a3)
{
  if (qword_280228818 != -1)
  {
LABEL_106:
    OUTLINED_FUNCTION_0();
  }

  v5 = sub_267EF8A08();
  __swift_project_value_buffer(v5, qword_280240FB0);
  v6 = a1;
  v7 = sub_267EF89F8();
  v8 = sub_267EF95D8();
  v116 = v6;
  if (OUTLINED_FUNCTION_27(v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v116;
    *v10 = v116;
    *(v9 + 12) = 2048;
    *(v9 + 14) = [v116 length];
    OUTLINED_FUNCTION_45();
    _os_log_impl(v11, v12, v13, v14, v9, 0x16u);
    sub_267B9FF34(v10, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v7 = v6;
  }

  v126 = MEMORY[0x277D84F90];
  if (a2)
  {
    v121 = *(a2 + 16);
    if (v121)
    {
      v15 = sub_267EF89F8();
      v16 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v16))
      {
        v17 = OUTLINED_FUNCTION_32();
        *v17 = 0;
        OUTLINED_FUNCTION_45();
        _os_log_impl(v18, v19, v20, v21, v17, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v22 = 0;
      v114 = *MEMORY[0x277CD45A0];
      v23 = (a2 + 32);
      v119 = *MEMORY[0x277CD44D8];
      v120 = *MEMORY[0x277CD44C0];
      v118 = *MEMORY[0x277CD44E0];
      v112 = *MEMORY[0x277CD45A8];
      v111 = *MEMORY[0x277CD44D0];
      v113 = *MEMORY[0x277CD44B0];
      v110 = *MEMORY[0x277CD44C8];
      while (1)
      {
        v24 = *v23;
        sub_267EF9028();
        OUTLINED_FUNCTION_72_10();
        if (v25)
        {

          v26 = OUTLINED_FUNCTION_97_8();
          if (v27)
          {
            OUTLINED_FUNCTION_51_11(v26);
          }

          else
          {
            OUTLINED_FUNCTION_61_12();
          }
        }

        else
        {
          OUTLINED_FUNCTION_61_12();
        }

        if (!v125)
        {
          break;
        }

        OUTLINED_FUNCTION_74_7();
        if (!swift_dynamicCast())
        {
          goto LABEL_19;
        }

        v28 = v122;
LABEL_20:
        sub_267EF9028();
        OUTLINED_FUNCTION_72_10();
        if (v29 && (v30 = OUTLINED_FUNCTION_97_8(), (v31 & 1) != 0))
        {
          OUTLINED_FUNCTION_51_11(v30);
        }

        else
        {
          OUTLINED_FUNCTION_61_12();
        }

        if (v125)
        {
          OUTLINED_FUNCTION_74_7();
          if (swift_dynamicCast())
          {
            v32 = v122;
            goto LABEL_29;
          }
        }

        else
        {
          sub_267B9FF34(v124, &qword_28022AEF0, &qword_267EFCDE0);
        }

        v32 = -100;
LABEL_29:

        v33 = sub_267EF89F8();
        v34 = sub_267EF95D8();

        if (OUTLINED_FUNCTION_99())
        {
          v117 = v32;
          v35 = OUTLINED_FUNCTION_48();
          a2 = OUTLINED_FUNCTION_52();
          v124[0] = a2;
          *v35 = 136315138;
          v36 = sub_267EF8F08();
          v38 = v22;
          v39 = sub_267BA33E8(v36, v37, v124);

          *(v35 + 4) = v39;
          v22 = v38;
          _os_log_impl(&dword_267B93000, v33, v34, "#ContentProcessor.convertContentToTokens glyph dictionary: %s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(a2);
          OUTLINED_FUNCTION_42_0();
          v32 = v117;
          OUTLINED_FUNCTION_32_0();
        }

        a1 = sub_267EF89F8();
        v40 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_27(v40))
        {
          a2 = swift_slowAlloc();
          *a2 = 134218752;
          *(a2 + 4) = v32;
          *(a2 + 12) = 2048;
          *(a2 + 14) = v22;
          *(a2 + 22) = 2048;
          *(a2 + 24) = v32;
          *(a2 + 32) = 2048;
          *(a2 + 34) = v28;
          _os_log_impl(&dword_267B93000, a1, v34, "#ContentProcessor.convertContentToTokens glyphIndex: %ld, startIndex: %ld, endIndex: %ld, count: %ld", a2, 0x2Au);
          OUTLINED_FUNCTION_42_0();
        }

        if (__OFSUB__(v32, v22))
        {
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        if (v32 - v22 >= 1)
        {
          v41 = sub_267EF89F8();
          v42 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_5_2(v42))
          {
            *OUTLINED_FUNCTION_32() = 0;
            OUTLINED_FUNCTION_102_5(&dword_267B93000, v41, v42, "#ContentProcessor.convertContentToTokens appending text before glyph");
            OUTLINED_FUNCTION_42_0();
          }

          v43 = [v116 substringWithRange:v22, v32 - v22];
          v44 = sub_267EF9028();
          v46 = v45;

          sub_267DAF858(v44, v46, a3);
          v48 = v47;

          sub_267C9B3F8(v48);
        }

        sub_267EF9028();
        OUTLINED_FUNCTION_72_10();
        if (v49 && (v50 = OUTLINED_FUNCTION_97_8(), (v51 & 1) != 0))
        {
          OUTLINED_FUNCTION_51_11(v50);
        }

        else
        {
          OUTLINED_FUNCTION_61_12();
        }

        if (!v125)
        {
          sub_267B9FF34(v124, &qword_28022AEF0, &qword_267EFCDE0);
LABEL_49:

LABEL_50:
          v55 = sub_267EF89F8();
          v56 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v56))
          {
            v57 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_79_9(v57);
            OUTLINED_FUNCTION_102_5(&dword_267B93000, v55, v58, "#ContentProcessor.convertContentToTokens appending ContentToken.generic");
            OUTLINED_FUNCTION_42_0();
          }

          a1 = v126;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            isa = a1[2].isa;
            OUTLINED_FUNCTION_4_7();
            sub_267C70E54();
            a1 = v84;
          }

          a2 = a1[2].isa;
          v59 = a1[3].isa;
          OUTLINED_FUNCTION_60_8();
          if (v61)
          {
            OUTLINED_FUNCTION_7_36(v60);
            sub_267C70E54();
            a1 = v85;
          }

          OUTLINED_FUNCTION_80_6();
          *(v62 + 32) = v32;
          *(v62 + 40) = v28;
          *(v62 + 48) = 0u;
          *(v62 + 64) = 0u;
          *(v62 + 80) = 4;
          v126 = a1;
          goto LABEL_57;
        }

        OUTLINED_FUNCTION_74_7();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_49;
        }

        if (v114 == v122)
        {
          sub_267EF9028();
          OUTLINED_FUNCTION_72_10();
          if (v52 && (v53 = OUTLINED_FUNCTION_97_8(), (v54 & 1) != 0))
          {
            OUTLINED_FUNCTION_51_11(v53);
          }

          else
          {
            OUTLINED_FUNCTION_61_12();
          }

          if (v125)
          {
            OUTLINED_FUNCTION_74_7();
            if (swift_dynamicCast())
            {

              v63 = sub_267EF89F8();
              v64 = sub_267EF95D8();
              if (OUTLINED_FUNCTION_27(v64))
              {
                v65 = OUTLINED_FUNCTION_32();
                OUTLINED_FUNCTION_79_9(v65);
                OUTLINED_FUNCTION_102_5(&dword_267B93000, v63, v66, "#ContentProcessor.convertContentToTokens appending ContentToken.genmoji");
                OUTLINED_FUNCTION_42_0();
              }

              a1 = v126;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v86 = a1[2].isa;
                OUTLINED_FUNCTION_4_7();
                sub_267C70E54();
                a1 = v87;
              }

              a2 = a1[2].isa;
              v67 = a1[3].isa;
              OUTLINED_FUNCTION_60_8();
              if (v61)
              {
                OUTLINED_FUNCTION_7_36(v68);
                sub_267C70E54();
                a1 = v88;
              }

              OUTLINED_FUNCTION_80_6();
              *(v69 + 32) = v122;
              *(v69 + 40) = v123;
              *(v69 + 48) = v32;
              *(v69 + 56) = v28;
              *(v69 + 64) = 0;
              *(v69 + 72) = 0;
              *(v69 + 80) = 2;
              goto LABEL_93;
            }
          }

          else
          {
            sub_267B9FF34(v124, &qword_28022AEF0, &qword_267EFCDE0);
          }
        }

        else if (v112 != v122)
        {
          goto LABEL_49;
        }

        sub_267EF9028();
        OUTLINED_FUNCTION_72_10();
        if (v70 && (v71 = OUTLINED_FUNCTION_97_8(), (v72 & 1) != 0))
        {
          OUTLINED_FUNCTION_51_11(v71);
        }

        else
        {
          OUTLINED_FUNCTION_61_12();
        }

        if (!v125)
        {
          goto LABEL_82;
        }

        OUTLINED_FUNCTION_74_7();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_49;
        }

        sub_267EF9028();
        OUTLINED_FUNCTION_72_10();
        if (v73 && (v74 = OUTLINED_FUNCTION_97_8(), (v75 & 1) != 0))
        {
          OUTLINED_FUNCTION_51_11(v74);
        }

        else
        {
          OUTLINED_FUNCTION_61_12();
        }

        if (!v125)
        {
LABEL_82:

          sub_267B9FF34(v124, &qword_28022AEF0, &qword_267EFCDE0);
          goto LABEL_50;
        }

        OUTLINED_FUNCTION_74_7();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_49;
        }

        v76 = sub_267EF89F8();
        v77 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_27(v77))
        {
          v78 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_79_9(v78);
          OUTLINED_FUNCTION_102_5(&dword_267B93000, v76, v79, "#ContentProcessor.convertContentToTokens appending ContentToken.memoji");
          OUTLINED_FUNCTION_42_0();
        }

        a1 = v126;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = a1[2].isa;
          OUTLINED_FUNCTION_4_7();
          sub_267C70E54();
          a1 = v90;
        }

        a2 = a1[2].isa;
        v80 = a1[3].isa;
        OUTLINED_FUNCTION_60_8();
        if (v61)
        {
          OUTLINED_FUNCTION_7_36(v81);
          sub_267C70E54();
          a1 = v91;
        }

        OUTLINED_FUNCTION_80_6();
        *(v82 + 32) = v122;
        *(v82 + 40) = v123;
        *(v82 + 48) = v122;
        *(v82 + 56) = v123;
        *(v82 + 64) = v32;
        *(v82 + 72) = v28;
        *(v82 + 80) = 3;
LABEL_93:
        v126 = a1;
LABEL_57:
        v22 = v32 + v28;
        if (__OFADD__(v32, v28))
        {
          goto LABEL_105;
        }

        ++v23;
        if (!--v121)
        {
          if (v22 < [v116 length])
          {
            v98 = sub_267EF89F8();
            v99 = sub_267EF95D8();
            if (os_log_type_enabled(v98, v99))
            {
              v100 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_42(v100);
              OUTLINED_FUNCTION_17_0(&dword_267B93000, v101, v102, "#ContentProcessor.convertContentToTokens appending trailing ContentToken.text");
              OUTLINED_FUNCTION_26();
            }

            v103 = [v116 substringFromIndex:v32 + v28];
            v104 = sub_267EF9028();
            v106 = v105;

            sub_267DAF858(v104, v106, a3);
            v108 = v107;

            sub_267C9B3F8(v108);
            return v126;
          }

          return a1;
        }
      }

      sub_267B9FF34(v124, &qword_28022AEF0, &qword_267EFCDE0);
LABEL_19:
      v28 = 1;
      goto LABEL_20;
    }
  }

  v92 = sub_267EF89F8();
  a1 = sub_267EF95D8();
  if (os_log_type_enabled(v92, a1))
  {
    v93 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v93);
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v94, v95, "#ContentProcessor.convertContentToTokens no inlineGlyphContent to unpack");
    OUTLINED_FUNCTION_26();
  }

  v96 = sub_267EF9028();
  sub_267DAF858(v96, v97, a3);
  OUTLINED_FUNCTION_43();

  return a1;
}

uint64_t sub_267DAF228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267DAF240()
{
  v53 = v0;
  if (qword_280228818 != -1)
  {
LABEL_33:
    OUTLINED_FUNCTION_0();
  }

  v1 = *(v0 + 32);
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);

  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();
  v5 = OUTLINED_FUNCTION_27(v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_52();
    v52 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v6 + 16);

    *(v7 + 12) = 2080;
    v9 = MEMORY[0x26D608FD0](v6, &unk_2878D5700);
    v11 = sub_267BA33E8(v9, v10, &v52);

    *(v7 + 14) = v11;
    OUTLINED_FUNCTION_45();
    _os_log_impl(v12, v13, v14, v15, v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v16 = *(v0 + 32);
  }

  v17 = *(v0 + 32);
  v18 = *(v17 + 16);
  if (v18 == 1 && !*(v17 + 80))
  {
    v41 = *(v17 + 32);
    v42 = *(v17 + 40);
    OUTLINED_FUNCTION_17();

    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_470();

    return v43();
  }

  else
  {
    v47 = v0;
    v0 = 0;
    v19 = v17 + 80;
    v45 = v17 + 80;
    v46 = MEMORY[0x277D84F90];
LABEL_8:
    v20 = (v19 + 56 * v0);
    while (v18 != v0)
    {
      if (v0 >= v18)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (__OFADD__(v0, 1))
      {
        goto LABEL_32;
      }

      v22 = *(v20 - 6);
      v21 = *(v20 - 5);
      v23 = *(v20 - 4);
      v24 = *v20;
      v50 = *(v20 - 2);
      v51 = *(v20 - 1);
      v48 = (v0 + 1);
      v49 = *(v20 - 3);
      if (*v20)
      {
        sub_267DB3764(v22, v21, v23, *(v20 - 3), *(v20 - 2), *(v20 - 1), v24);
LABEL_20:
        v29 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = *(v46 + 16);
          OUTLINED_FUNCTION_4_7();
          sub_267C70E54();
          v29 = v33;
        }

        v19 = v45;
        v30 = *(v29 + 16);
        v3 = (v30 + 1);
        if (v30 >= *(v29 + 24) >> 1)
        {
          sub_267C70E54();
          v29 = v34;
        }

        *(v29 + 16) = v3;
        v46 = v29;
        v31 = v29 + 56 * v30;
        *(v31 + 32) = v22;
        *(v31 + 40) = v21;
        *(v31 + 48) = v23;
        *(v31 + 56) = v49;
        *(v31 + 64) = v50;
        *(v31 + 72) = v51;
        *(v31 + 80) = v24;
        v0 = v48;
        goto LABEL_8;
      }

      v47[2] = v22;
      v47[3] = v21;
      v25 = qword_2802287D0;

      if (v25 != -1)
      {
        OUTLINED_FUNCTION_38_17();
        swift_once();
      }

      v26 = sub_267EF2728();
      __swift_project_value_buffer(v26, qword_280240EC0);
      sub_267BB5034();
      OUTLINED_FUNCTION_54_11();
      sub_267EF9908();
      if ((v27 & 1) == 0)
      {
        goto LABEL_20;
      }

      v3 = sub_267EF89F8();
      v28 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v28))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_102_5(&dword_267B93000, v3, v28, "#ContentProcessor.makeTextFromTokens Text content is not readable - skipping");
        OUTLINED_FUNCTION_42_0();
      }

      sub_267DB37C4(v22, v21, v23, v49, v50, v51, 0);

      ++v0;
      v20 += 56;
    }

    v35 = v47[6];
    sub_267DAFD14(v46);
    OUTLINED_FUNCTION_43();

    v47[7] = sub_267DB09D8(v3);

    v36 = swift_task_alloc();
    v47[8] = v36;
    *v36 = v47;
    v36[1] = sub_267DAF688;
    v37 = v47[5];
    v38 = v47[6];
    OUTLINED_FUNCTION_470();

    return sub_267DB0E48();
  }
}

uint64_t sub_267DAF688()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_9_1();
  *v8 = v7;
  v10 = *(v9 + 64);
  v11 = *v1;
  OUTLINED_FUNCTION_5();
  *v12 = v11;
  v7[9] = v0;

  if (!v0)
  {
    v7[10] = v3;
    v7[11] = v5;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267DAF79C()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[7];

  v3 = v0[10];
  v2 = v0[11];
  OUTLINED_FUNCTION_23_12();

  return v4();
}

uint64_t sub_267DAF7FC()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_17();
  v3 = *(v0 + 72);

  return v2();
}

void sub_267DAF858(uint64_t a1, uint64_t a2, void *a3)
{
  sub_267EF2D48();
  sub_267EF8FF8();
  OUTLINED_FUNCTION_43();

  v4 = CEMCreateEmojiLocaleData();

  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F90];
  v6 = v5 + 16;
  v7 = sub_267EF8FF8();
  CFStringGetLength(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v5;
  aBlock[4] = sub_267DB3824;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267C14628;
  aBlock[3] = &block_descriptor_16;
  v10 = _Block_copy(aBlock);
  v11 = v7;

  CEMEnumerateEmojiTokensInStringWithLocaleAndBlock();
  _Block_release(v10);
  swift_beginAccess();
  v12 = *(v8 + 16);
  Length = CFStringGetLength(v11);

  if (__OFSUB__(Length, v12))
  {
    __break(1u);
    goto LABEL_10;
  }

  v25.location = v12;
  v25.length = Length - v12;
  v14 = CFStringCreateWithSubstring(0, v11, v25);
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  MutableCopy = CFStringCreateMutableCopy(0, 0, v14);
  CFStringTrimWhitespace(MutableCopy);
  if (!MutableCopy)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (CFStringGetLength(MutableCopy))
  {
    v17 = sub_267EF9028();
    v19 = v18;
    swift_beginAccess();
    sub_267C705FC();
    v20 = *(*v6 + 16);
    sub_267C7062C(v20);
    v21 = *v6;
    *(v21 + 16) = v20 + 1;
    v22 = v21 + 56 * v20;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 80) = 0;
    *v6 = v21;
    swift_endAccess();
  }

  if (v4)
  {
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v23 = *(v5 + 16);
}

void sub_267DAFB28(uint64_t a1, CFIndex a2, CFIndex a3, uint64_t a4, const __CFString *a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v12.location = *(a6 + 16);
  if (__OFSUB__(a2, v12.location))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12.length = a2 - v12.location;
  v13 = CFStringCreateWithSubstring(0, a5, v12);
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  MutableCopy = CFStringCreateMutableCopy(0, 0, v13);
  CFStringTrimWhitespace(MutableCopy);
  if (MutableCopy)
  {

    if (CFStringGetLength(MutableCopy))
    {
      v16 = sub_267EF9028();
      v18 = v17;
      swift_beginAccess();
      sub_267C705FC();
      v19 = *(*(a7 + 16) + 16);
      sub_267C7062C(v19);
      v20 = *(a7 + 16);
      *(v20 + 16) = v19 + 1;
      v21 = v20 + 56 * v19;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      *(v21 + 48) = 0u;
      *(v21 + 64) = 0u;
      *(v21 + 80) = 0;
      *(a7 + 16) = v20;
      swift_endAccess();
    }

    v30.location = a2;
    v30.length = a3;
    v22 = CFStringCreateWithSubstring(0, a5, v30);
    if (v22)
    {
      v23 = v22;
      v24 = sub_267EF9028();
      v26 = v25;
      swift_beginAccess();
      sub_267C705FC();
      v27 = *(*(a7 + 16) + 16);
      sub_267C7062C(v27);
      v28 = *(a7 + 16);
      *(v28 + 16) = v27 + 1;
      v29 = v28 + 56 * v27;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      *(v29 + 48) = 1;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      *(v29 + 72) = 0;
      *(v29 + 80) = 1;
      *(a7 + 16) = v28;
      swift_endAccess();
    }

    if (!__OFADD__(a2, a3))
    {
      swift_beginAccess();
      *(a6 + 16) = a2 + a3;
      return;
    }

    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
}

void sub_267DAFD14(uint64_t a1)
{
  if (qword_280228818 != -1)
  {
LABEL_129:
    OUTLINED_FUNCTION_0();
  }

  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  OUTLINED_FUNCTION_43();

  v3 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    v4 = OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_52();
    v250 = v5;
    *v4 = 136315138;
    v6 = MEMORY[0x26D608FD0](a1, &unk_2878D5700);
    v8 = sub_267BA33E8(v6, v7, &v250);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_20();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  if (!*(a1 + 16))
  {
    return;
  }

  v14 = (a1 + 80);
  v249 = MEMORY[0x277D84F90];
  while (1)
  {
    v16 = *(v14 - 6);
    v15 = *(v14 - 5);
    v17 = *(v14 - 4);
    v18 = *(v14 - 3);
    v20 = *(v14 - 2);
    v19 = *(v14 - 1);
    v21 = *v14;
    OUTLINED_FUNCTION_49_14();
    v248 = v26;
    if (!v24)
    {
      v63 = v20;
      v64 = v22;
      v65 = v25;
      v66 = v18;
      v67 = v18;
      v68 = v21;
      v69 = v63;
      v70 = v23;
      v242 = v68;
      sub_267DB3764(v16, v22, v25, v67, v63, v23, v68);
      v71 = v249;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267C70E54();
        v71 = v219;
      }

      v73 = *(v71 + 16);
      v72 = *(v71 + 24);
      if (v73 >= v72 >> 1)
      {
        OUTLINED_FUNCTION_13_33(v72);
        sub_267C70E54();
        v74 = v64;
        v71 = v220;
      }

      else
      {
        v74 = v64;
      }

      v249 = v71;
      *(v71 + 16) = v73 + 1;
      v75 = v71 + 56 * v73;
      *(v75 + 32) = v16;
      *(v75 + 40) = v74;
      *(v75 + 48) = v65;
      *(v75 + 56) = v66;
      *(v75 + 64) = v69;
      *(v75 + 72) = v70;
      v76 = v242;
LABEL_24:
      *(v75 + 80) = v76;
      goto LABEL_112;
    }

    v27 = v16;
    v28 = v249 + 56 * v24;
    v29 = *(v28 - 24);
    a1 = *(v28 - 16);
    v30 = *(v28 - 8);
    v246 = v22;
    v247 = *v28;
    v31 = *(v28 + 8);
    v32 = *(v28 + 16);
    v33 = *(v28 + 24);
    v244 = v25;
    v245 = v23;
    if (v21 == 3)
    {
      break;
    }

    if (v21 == 2)
    {
      if (v33 != 2)
      {
        v77 = v27;
        OUTLINED_FUNCTION_111_4();
        sub_267DB3764(v118, v119, v120, v121, v122, v123, 2u);
        goto LABEL_107;
      }

      v233 = *(v28 - 8);
      v77 = v27;
      v78 = v27 == v29 && v22 == a1;
      v33 = v18;
      if (v78)
      {
        sub_267DB3764(v27, v22, v25, v18, v20, v23, 2u);
      }

      else
      {
        a1 = v22;
        v79 = v23;
        v80 = v25;
        v81 = sub_267EF9EA8();
        v82 = OUTLINED_FUNCTION_66();
        sub_267DB3764(v82, v83, v80, v33, v20, v79, 2u);
        if ((v81 & 1) == 0)
        {
          goto LABEL_107;
        }
      }

      OUTLINED_FUNCTION_49_14();
      if (!v129)
      {
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267D5FFC8(v249);
        v249 = v221;
      }

      OUTLINED_FUNCTION_49_14();
      if (!v130)
      {
        goto LABEL_127;
      }

      OUTLINED_FUNCTION_11_36(v130);
      if (__OFADD__(v33, v247))
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_20();
      if (v117)
      {
        OUTLINED_FUNCTION_13_33(v131);
        sub_267C70E54();
        v249 = v222;
      }

      OUTLINED_FUNCTION_25_24();
      *(v75 + 32) = v77;
      *(v75 + 40) = v246;
      *(v75 + 48) = v233;
      *(v75 + 56) = v33 + v247;
      *(v75 + 64) = 0;
      *(v75 + 72) = 0;
      v76 = 2;
      goto LABEL_24;
    }

    if (v21 != 1)
    {
      v108 = v20;
      v109 = *(v28 - 24);
      v235 = v108;
      sub_267DB3764(v27, v22, v25, v18, v108, v23, v21);
      OUTLINED_FUNCTION_46_15();
      sub_267DB3764(v110, v111, v112, v113, v31, v32, v33);
      if (v21 != 4 || v33 != 4)
      {
        goto LABEL_105;
      }

      OUTLINED_FUNCTION_49_14();
      if (!v114)
      {
        goto LABEL_133;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267D5FFC8(v249);
        v249 = v225;
      }

      OUTLINED_FUNCTION_49_14();
      if (!v115)
      {
        goto LABEL_134;
      }

      OUTLINED_FUNCTION_11_36(v115);
      if (__OFADD__(v246, a1))
      {
        goto LABEL_135;
      }

      OUTLINED_FUNCTION_23_20();
      if (v117)
      {
        OUTLINED_FUNCTION_13_33(v116);
        sub_267C70E54();
        v249 = v226;
      }

      OUTLINED_FUNCTION_25_24();
      *(v75 + 32) = v109;
      *(v75 + 40) = v246 + a1;
      *(v75 + 48) = 0u;
      *(v75 + 64) = 0u;
      v76 = 4;
      goto LABEL_24;
    }

    if (v33 != 1)
    {

      goto LABEL_106;
    }

    v238 = *(v28 + 16);
    v240 = *(v28 + 8);
    v34 = *(v28 - 24);
    sub_267EF2D48();
    OUTLINED_FUNCTION_59_12();
    sub_267DB3764(v35, v36, v37, v38, v39, v40, v41);
    OUTLINED_FUNCTION_46_15();
    sub_267DB3764(v42, v43, v44, v45, v31, v32, 1u);
    v229 = v18;
    v235 = v20;
    OUTLINED_FUNCTION_59_12();
    sub_267DB3764(v46, v47, v48, v49, v50, v51, v52);
    v236 = v34;
    OUTLINED_FUNCTION_46_15();
    sub_267DB3764(v53, v54, v55, v56, v31, v32, 1u);
    sub_267EF8FF8();
    OUTLINED_FUNCTION_43();

    v57 = CEMCreateEmojiLocaleData();

    v230 = v27;
    v58 = sub_267EF8FF8();
    v59 = CEMEmojiTokenCreateWithString();

    v60 = CEMEmojiTokenCopyNameWithCount();
    if (v57)
    {
      swift_unknownObjectRelease();
    }

    if (v59)
    {
      swift_unknownObjectRelease();
    }

    if (v60)
    {
      objc_opt_self();
      if (OUTLINED_FUNCTION_92_7())
      {
        v250 = 0;
        v251 = 0;
        sub_267EF9018();

        if (v251)
        {
          v61 = v251;
          v62 = v250;
          goto LABEL_81;
        }
      }

      else
      {
      }
    }

    v62 = 0;
    v61 = 0;
LABEL_81:
    sub_267EF2D48();
    v167 = v166;
    v168 = sub_267EF8FF8();

    v169 = CEMCreateEmojiLocaleData();

    sub_267EF8FF8();
    v170 = OUTLINED_FUNCTION_43();
    sub_267DB37C4(v170, a1, v30, v247, v240, v32, 1u);
    v171 = CEMEmojiTokenCreateWithString();

    v173 = CEMEmojiTokenCopyNameWithCount();
    if (v169)
    {
      swift_unknownObjectRelease();
    }

    v174 = v61;
    if (v171)
    {
      swift_unknownObjectRelease();
    }

    LOBYTE(v21) = 1;
    if (!v173)
    {
      v175 = 0;
      v177 = v244;
      v176 = v245;
      if (v61)
      {
        goto LABEL_95;
      }

      goto LABEL_90;
    }

    objc_opt_self();
    if (OUTLINED_FUNCTION_92_7())
    {
      v250 = 0;
      v251 = 0;
      sub_267EF9018();

      v173 = v251;
      if (v251)
      {
        v175 = v250;
        goto LABEL_94;
      }
    }

    else
    {
    }

    v175 = 0;
    v173 = 0;
LABEL_94:
    v176 = v245;
    v177 = v244;
    if (v61)
    {
LABEL_95:
      if (!v173)
      {
        v27 = v230;
        v18 = v229;
        OUTLINED_FUNCTION_123_1(v230, v246, v177, v229, v172, v176);

        goto LABEL_104;
      }

      v178 = v177;
      if (v62 == v175 && v174 == v173)
      {
      }

      else
      {
        v186 = sub_267EF9EA8();

        if ((v186 & 1) == 0)
        {
          v27 = v230;
          OUTLINED_FUNCTION_82_6();
          v18 = v187;
          OUTLINED_FUNCTION_123_1(v188, v189, v190, v187, v191, v192);
LABEL_102:
          LOBYTE(v21) = 1;
LABEL_104:
          v32 = v238;
          LOBYTE(v33) = 1;
          v31 = v240;
LABEL_105:
          OUTLINED_FUNCTION_46_15();
          sub_267DB37C4(v193, v194, v195, v196, v31, v32, v33);
          v20 = v235;
LABEL_106:
          v33 = v18;
          v77 = v27;
LABEL_107:
          v197 = v33;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v201 = v77;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_6_40(isUniquelyReferenced_nonNull_native, v199, v200, v249);
            sub_267C70E54();
            v249 = v217;
          }

          v203 = *(v249 + 16);
          v202 = *(v249 + 24);
          v205 = v245;
          v204 = v246;
          if (v203 >= v202 >> 1)
          {
            OUTLINED_FUNCTION_13_33(v202);
            sub_267C70E54();
            v205 = v245;
            v204 = v246;
            v249 = v218;
          }

          *(v249 + 16) = v203 + 1;
          v206 = v249 + 56 * v203;
          *(v206 + 32) = v201;
          *(v206 + 40) = v204;
          *(v206 + 48) = v244;
          *(v206 + 56) = v197;
          *(v206 + 64) = v20;
          *(v206 + 72) = v205;
          *(v206 + 80) = v21;
          goto LABEL_112;
        }
      }

      goto LABEL_115;
    }

LABEL_90:
    v178 = v177;
    if (v173)
    {
      v27 = v230;
      OUTLINED_FUNCTION_82_6();
      OUTLINED_FUNCTION_123_1(v179, v180, v181, v182, v183, v184);
      v18 = v229;

      goto LABEL_102;
    }

LABEL_115:
    sub_267DB37C4(v236, a1, v30, v247, v240, v238, 1u);
    OUTLINED_FUNCTION_82_6();
    OUTLINED_FUNCTION_123_1(v207, v208, v209, v210, v211, v212);
    OUTLINED_FUNCTION_49_14();
    if (!v213)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267D5FFC8(v249);
      v249 = v227;
    }

    OUTLINED_FUNCTION_49_14();
    if (!v214)
    {
      goto LABEL_137;
    }

    OUTLINED_FUNCTION_11_36(v214);
    if (__OFADD__(v178, v30))
    {
      goto LABEL_138;
    }

    OUTLINED_FUNCTION_23_20();
    if (v117)
    {
      OUTLINED_FUNCTION_13_33(v215);
      sub_267C70E54();
      v249 = v228;
    }

    OUTLINED_FUNCTION_25_24();
    *(v216 + 32) = v230;
    *(v216 + 40) = v246;
    *(v216 + 48) = v178 + v30;
    *(v216 + 56) = 0;
    *(v216 + 64) = 0;
    *(v216 + 72) = 0;
    *(v216 + 80) = 1;
LABEL_112:
    v14 += 56;
    if (v248 == 1)
    {
      return;
    }
  }

  v232 = *(v28 - 16);
  v234 = *(v28 - 8);
  v239 = *(v28 + 16);
  v241 = *(v28 + 8);
  v237 = *(v28 - 24);
  if (v33 != 3)
  {
    v124 = v27;
    v231 = v27;
    v125 = v23;
    v126 = v25;
    sub_267DB3764(v124, v22, v25, v18, v20, v23, 3u);
    v127 = OUTLINED_FUNCTION_66();
    sub_267DB3764(v127, v128, v126, v18, v20, v125, 3u);
    sub_267DB3764(v237, a1, v234, v247, v31, v32, v33);

    v101 = v237;
    v103 = a1;
    v77 = v231;
    v104 = v234;
    v105 = v247;
    v106 = v241;
    v102 = v32;
    v107 = v33;
    v33 = v18;
    goto LABEL_51;
  }

  v77 = v27;
  if (v27 == v29 && v22 == a1)
  {
    OUTLINED_FUNCTION_111_4();
    v133 = v132;
    v86 = v134;
    sub_267DB3764(v135, v136, v137, v138, v139, v132, 3u);
    v140 = OUTLINED_FUNCTION_66();
    sub_267DB3764(v140, v141, v234, v247, v241, v32, 3u);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_64_9();
    sub_267DB3764(v142, v143, v144, v145, v20, v133, 3u);
    v146 = OUTLINED_FUNCTION_66();
    sub_267DB3764(v146, v147, v234, v247, v241, v32, 3u);

    v88 = v234;
  }

  else
  {
    v85 = v22;
    v86 = v25;
    v243 = sub_267EF9EA8();
    v87 = v85;
    v33 = v18;
    v88 = v30;
    sub_267DB3764(v77, v87, v86, v18, v20, v245, 3u);
    v89 = OUTLINED_FUNCTION_113_6();
    sub_267DB3764(v89, v90, v91, v92, v241, v32, 3u);
    OUTLINED_FUNCTION_64_9();
    sub_267DB3764(v93, v94, v95, v96, v20, v245, 3u);
    v97 = OUTLINED_FUNCTION_113_6();
    sub_267DB3764(v97, v98, v99, v100, v241, v32, 3u);

    if ((v243 & 1) == 0)
    {

      v101 = v237;
      v102 = v32;
      v103 = v232;
      v104 = v30;
      v105 = v247;
      v106 = v241;
      v107 = 3;
LABEL_51:
      sub_267DB37C4(v101, v103, v104, v105, v106, v102, v107);
      goto LABEL_107;
    }
  }

  if (v86 == v88 && v33 == v247)
  {

    OUTLINED_FUNCTION_64_9();
    v153 = v158;
    sub_267DB37C4(v159, v160, v161, v162, v20, v158, 3u);
    v152 = v86;
    OUTLINED_FUNCTION_64_9();
  }

  else
  {
    v149 = v86;
    v150 = v88;
    v151 = sub_267EF9EA8();

    if ((v151 & 1) == 0)
    {

      sub_267DB37C4(v237, v232, v150, v247, v241, v32, 3u);
      goto LABEL_107;
    }

    v152 = v149;
    v153 = v245;
    sub_267DB37C4(v77, v246, v149, v33, v20, v245, 3u);
    v154 = v237;
    v155 = v232;
    v156 = v150;
    v157 = v247;
  }

  sub_267DB37C4(v154, v155, v156, v157, v241, v32, 3u);
  OUTLINED_FUNCTION_49_14();
  if (v163)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267D5FFC8(v249);
      v249 = v223;
    }

    OUTLINED_FUNCTION_49_14();
    if (!v164)
    {
      goto LABEL_131;
    }

    OUTLINED_FUNCTION_11_36(v164);
    if (__OFADD__(v153, v32))
    {
      goto LABEL_132;
    }

    OUTLINED_FUNCTION_23_20();
    if (v117)
    {
      OUTLINED_FUNCTION_13_33(v165);
      sub_267C70E54();
      v249 = v224;
    }

    OUTLINED_FUNCTION_25_24();
    *(v75 + 32) = v77;
    *(v75 + 40) = v246;
    *(v75 + 48) = v152;
    *(v75 + 56) = v33;
    *(v75 + 64) = v241;
    *(v75 + 72) = v153 + v32;
    v76 = 3;
    goto LABEL_24;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
}

uint64_t sub_267DB09D8(uint64_t a1)
{
  if (qword_280228818 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v2 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);

    v3 = sub_267EF89F8();
    sub_267EF95D8();

    if (OUTLINED_FUNCTION_99())
    {
      v4 = OUTLINED_FUNCTION_48();
      v5 = OUTLINED_FUNCTION_52();
      v77 = v5;
      *v4 = 136315138;
      v6 = MEMORY[0x26D608FD0](a1, &unk_2878D5700);
      v8 = sub_267BA33E8(v6, v7, &v77);

      *(v4 + 4) = v8;
      OUTLINED_FUNCTION_20();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v14 = *(a1 + 16);
    if (!v14)
    {
      break;
    }

    v15 = (a1 + 80);
    v72 = xmmword_267EFCC90;
    a1 = MEMORY[0x277D84F90];
    v73 = MEMORY[0x277D84F90];
    while (1)
    {
      v16 = *(v15 - 6);
      v17 = *(v15 - 5);
      v18 = *(v15 - 4);
      v19 = *(v15 - 2);
      v20 = *(v15 - 1);
      v21 = *v15;
      if (*v15)
      {
        v74 = *(v15 - 3);
        v75 = v14;
        sub_267DB3764(v16, v17, v18, v74, v19, v20, v21);
        v22 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = *(a1 + 16);
          OUTLINED_FUNCTION_4_7();
          sub_267C70E54();
          a1 = v59;
        }

        v24 = *(a1 + 16);
        v23 = *(a1 + 24);
        if (v24 >= v23 >> 1)
        {
          OUTLINED_FUNCTION_7_36(v23);
          sub_267C70E54();
          a1 = v60;
        }

        *(a1 + 16) = v24 + 1;
        v25 = a1 + 56 * v24;
        *(v25 + 32) = v16;
        *(v25 + 40) = v17;
        *(v25 + 48) = v18;
        *(v25 + 56) = v74;
        *(v25 + 64) = v19;
        *(v25 + 72) = v22;
        *(v25 + 80) = v21;
        v14 = v75;
        goto LABEL_26;
      }

      if (*(a1 + 16))
      {
        break;
      }

      v44 = *(v15 - 5);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229C98, &qword_267EFF200);
      v45 = swift_allocObject();
      OUTLINED_FUNCTION_112_6(v45, v46, v47, v48, v49, v50, v51, v52, v72, *(&v72 + 1), v53);
      *(v54 + 64) = v19;
      *(v54 + 72) = v20;
      *(v54 + 80) = 0;
      v55 = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = *(v73 + 16);
        OUTLINED_FUNCTION_4_7();
        sub_267C70F28();
        v55 = v62;
      }

      v57 = *(v55 + 16);
      v56 = *(v55 + 24);
      if (v57 >= v56 >> 1)
      {
        OUTLINED_FUNCTION_7_36(v56);
        sub_267C70F28();
        v55 = v63;
      }

      *(v55 + 16) = v57 + 1;
      v73 = v55;
      *(v55 + 8 * v57 + 32) = v45;
LABEL_25:
      a1 = MEMORY[0x277D84F90];
LABEL_26:
      v15 += 56;
      if (!--v14)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229C88, &unk_267EFF1F0);
    v76 = v19;
    inited = swift_initStackObject();
    *(inited + 16) = v72;
    *(inited + 32) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229C98, &qword_267EFF200);
    v27 = swift_allocObject();
    OUTLINED_FUNCTION_112_6(v27, v28, v29, v30, v31, v32, v33, v34, v72, *(&v72 + 1), v35);
    *(v36 + 64) = v76;
    *(v36 + 72) = v20;
    *(v36 + 80) = 0;
    *(inited + 40) = v36;
    v37 = v73;
    v38 = *(v73 + 16);
    if (!__OFADD__(v38, 2))
    {

      if (!swift_isUniquelyReferenced_nonNull_native() || (v39 = *(v73 + 24) >> 1, v39 < v38 + 2))
      {
        sub_267C70F28();
        v37 = v40;
        v39 = *(v40 + 24) >> 1;
      }

      if (v39 - *(v37 + 16) < 2)
      {
        goto LABEL_37;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229C90, &unk_267F08A70);
      swift_arrayInitWithCopy();

      v41 = *(v37 + 16);
      v42 = __OFADD__(v41, 2);
      v43 = v41 + 2;
      if (v42)
      {
        goto LABEL_38;
      }

      v73 = v37;
      *(v37 + 16) = v43;
      goto LABEL_25;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    OUTLINED_FUNCTION_0();
  }

  a1 = MEMORY[0x277D84F90];
  v73 = MEMORY[0x277D84F90];
LABEL_29:
  if (*(a1 + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_6_40(isUniquelyReferenced_nonNull_native, v65, v66, v73);
      sub_267C70F28();
      v73 = v70;
    }

    v68 = *(v73 + 16);
    v67 = *(v73 + 24);
    if (v68 >= v67 >> 1)
    {
      OUTLINED_FUNCTION_8_2(v67);
      sub_267C70F28();
      v73 = v71;
    }

    result = v73;
    *(v73 + 16) = v68 + 1;
    *(v73 + 8 * v68 + 32) = a1;
  }

  else
  {

    return v73;
  }

  return result;
}

uint64_t sub_267DB0E48()
{
  OUTLINED_FUNCTION_12();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = sub_267EF79B8();
  v0[11] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v0[12] = v5;
  v7 = *(v6 + 64);
  v0[13] = OUTLINED_FUNCTION_2();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64);
  v0[14] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF4228();
  v0[15] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v0[16] = v10;
  v12 = *(v11 + 64);
  v0[17] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267DB0F70()
{
  v141 = v0;
  if (qword_280228818 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v1 = v0[8];
    v2 = sub_267EF8A08();
    v0[18] = OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);

    v3 = sub_267EF89F8();
    v4 = sub_267EF95D8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[8];
      v6 = OUTLINED_FUNCTION_48();
      v7 = OUTLINED_FUNCTION_52();
      v140 = v7;
      *v6 = 136315138;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229C90, &unk_267F08A70);
      v9 = MEMORY[0x26D608FD0](v5, v8);
      v11 = sub_267BA33E8(v9, v10, &v140);

      *(v6 + 4) = v11;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    v17 = v0[8];
    v18 = *(v17 + 16);
    v19 = MEMORY[0x277D84F90];
    v0[20] = 0;
    v0[21] = v19;
    v0[19] = v18;
    if (!v18)
    {
      break;
    }

    OUTLINED_FUNCTION_106_3(v17);
    v20 = MEMORY[0x277D84F90];
    if (!v21)
    {
      LOBYTE(v22) = 0;
      v19 = MEMORY[0x277D84F90];
LABEL_43:
      v89 = *(v19 + 16);
      if (v89)
      {
        v0[4] = v20;
        sub_267C7220C();
        v90 = v0[4];
        v91 = (v19 + 40);
        do
        {
          v92 = v0[13];
          v93 = *(v91 - 1);
          v94 = *v91;

          OUTLINED_FUNCTION_290();
          sub_267EF90F8();

          v0[4] = v90;
          v96 = *(v90 + 16);
          v95 = *(v90 + 24);
          if (v96 >= v95 >> 1)
          {
            OUTLINED_FUNCTION_8_2(v95);
            sub_267C7220C();
            v90 = v0[4];
          }

          v98 = v0[12];
          v97 = v0[13];
          v99 = v0[11];
          *(v90 + 16) = v96 + 1;
          OUTLINED_FUNCTION_9_4(v98);
          v102(v90 + v100 + *(v101 + 40) * v96);
          v91 += 2;
          --v89;
        }

        while (v89);
      }

      else
      {

        v90 = MEMORY[0x277D84F90];
      }

      v0[45] = v90;
      v104 = v0[19];
      v103 = v0[20];
      v105 = v0[14];
      v106 = v0[11];
      v107 = v0[23];
      sub_267EF90F8();

      __swift_storeEnumTagSinglePayload(v105, 0, 1, v106);
      v108 = swift_task_alloc();
      v109 = OUTLINED_FUNCTION_32_14(v108);
      *v109 = v110;
      OUTLINED_FUNCTION_3_49(v109);
      v111 = v0[17];
      v112 = v0[14];
      v113 = v0[9];
      LOBYTE(v145) = v22;
      v144 = v112;
      v142 = 0;
      OUTLINED_FUNCTION_470();

      return sub_267CE99E4();
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0xE000000000000000;
    while (2)
    {
      v0[26] = v24;
      v0[27] = v19;
      v0[24] = v23;
      v0[25] = v25;
      OUTLINED_FUNCTION_15_29();
      if (!v28)
      {
        v29 = v27 + 56 * v26;
        v30 = *(v29 + 32);
        v0[28] = v30;
        v31 = *(v29 + 40);
        v0[29] = v31;
        v0[30] = *(v29 + 48);
        v32 = *(v29 + 56);
        v0[31] = v32;
        v33 = *(v29 + 64);
        v0[32] = v33;
        v34 = *(v29 + 72);
        v0[33] = v34;
        switch(*(v29 + 80))
        {
          case 1:
            v137 = v33;
            v138 = v34;
            v139 = v19;
            v136 = v23;
            v37 = v0[10];
            sub_267EF2D48();
            OUTLINED_FUNCTION_94_7();
            OUTLINED_FUNCTION_66();
            sub_267EF8FF8();
            OUTLINED_FUNCTION_43();

            v38 = CEMCreateEmojiLocaleData();

            v39 = sub_267EF8FF8();
            v40 = CEMEmojiTokenCreateWithString();

            v41 = CEMEmojiTokenCopyNameWithCount();
            if (v38)
            {
              swift_unknownObjectRelease();
            }

            if (v40)
            {
              swift_unknownObjectRelease();
            }

            if (!v41)
            {
              goto LABEL_27;
            }

            objc_opt_self();
            if (!OUTLINED_FUNCTION_92_7())
            {

LABEL_27:
              OUTLINED_FUNCTION_128_3();
              v53 = sub_267EF89F8();
              v54 = sub_267EF95E8();
              if (OUTLINED_FUNCTION_5_2(v54))
              {
                v55 = OUTLINED_FUNCTION_48();
                v56 = OUTLINED_FUNCTION_52();
                v143 = v22;
                v140 = v56;
                *v55 = 136315138;
                v134 = v32;
                v57 = v25;
                v58 = sub_267BA33E8(v30, v31, &v140);
                v59 = OUTLINED_FUNCTION_35_17();
                sub_267DB37C4(v59, v60, v61, v62, v137, v138, 1u);
                *(v55 + 4) = v58;
                v25 = v57;
                OUTLINED_FUNCTION_125_4(&dword_267B93000, v53, v54, "#ContentProcessor.makeTextFromGroupedContentTokens Failed to get description of emoji: %s");
                OUTLINED_FUNCTION_86_8();
                v22 = v143;
                OUTLINED_FUNCTION_32_0();
                OUTLINED_FUNCTION_42_0();

                v63 = OUTLINED_FUNCTION_35_17();
                v66 = v134;
              }

              else
              {

                v67 = OUTLINED_FUNCTION_35_17();
                sub_267DB37C4(v67, v68, v69, v32, v137, v138, 1u);
                v63 = OUTLINED_FUNCTION_35_17();
                v66 = v32;
              }

              sub_267DB37C4(v63, v64, v65, v66, v137, v138, 1u);
              v23 = v136;
              v19 = v139;
              goto LABEL_31;
            }

            OUTLINED_FUNCTION_126_5();

            v42 = v0[3];
            if (!v42)
            {
              goto LABEL_27;
            }

            OUTLINED_FUNCTION_104_6();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v135 = v25;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_6_40(isUniquelyReferenced_nonNull_native, v44, v45, v139);
              sub_267BF4EE8();
              v139 = v71;
            }

            v47 = *(v139 + 16);
            v46 = *(v139 + 24);
            if (v47 >= v46 >> 1)
            {
              OUTLINED_FUNCTION_8_2(v46);
              sub_267BF4EE8();
              v139 = v72;
            }

            *(v139 + 16) = v47 + 1;
            v48 = v139 + 16 * v47;
            *(v48 + 32) = v40;
            *(v48 + 40) = v42;
            v19 = v139;
            v49 = OUTLINED_FUNCTION_35_17();
            sub_267DB37C4(v49, v50, v51, v32, v137, v52, 1u);
            v25 = v135;
            v23 = v136;
LABEL_31:
            OUTLINED_FUNCTION_18_26();
            if (!v70)
            {
              continue;
            }

            v88 = v0[22];

            v20 = MEMORY[0x277D84F90];
            break;
          case 2:

            v119 = swift_task_alloc();
            v120 = OUTLINED_FUNCTION_90_7(v119);
            *v120 = v121;
            OUTLINED_FUNCTION_1_57(v120);
            goto LABEL_56;
          case 3:

            v115 = swift_task_alloc();
            v116 = OUTLINED_FUNCTION_57_1(v115);
            *v116 = v117;
            OUTLINED_FUNCTION_4_47(v116);
            v145 = v32;
            v146 = v118;
            OUTLINED_FUNCTION_8_40();
            OUTLINED_FUNCTION_43_17();
            goto LABEL_57;
          case 4:
            v122 = swift_task_alloc();
            v123 = OUTLINED_FUNCTION_89_9(v122);
            *v123 = v124;
            OUTLINED_FUNCTION_0_46(v123);
            OUTLINED_FUNCTION_43_17();
LABEL_56:
            OUTLINED_FUNCTION_29_20();
LABEL_57:
            OUTLINED_FUNCTION_470();

            return sub_267D1374C(v125, v126, v127, v128, v129, v130, v131, v132);
          default:
            OUTLINED_FUNCTION_127_4();

            v22 = !v23 || (OUTLINED_FUNCTION_10_31(), !v36) || *(v35 + 56 * v36 + 24) != 0;
            v23 = v30;
            v25 = v31;
            goto LABEL_31;
        }

        goto LABEL_43;
      }

      break;
    }

    __break(1u);
LABEL_61:
    OUTLINED_FUNCTION_0();
  }

  v73 = v0[10];
  if (sub_267E43718())
  {
    v0[7] = v19;
  }

  else
  {
    v0[6] = v19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  sub_267BF5748();
  sub_267EF8FC8();

  v74 = v0[18];

  v75 = sub_267EF89F8();
  v76 = sub_267EF95D8();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = OUTLINED_FUNCTION_48();
    v78 = OUTLINED_FUNCTION_52();
    v140 = v78;
    *v77 = 136315138;
    v79 = OUTLINED_FUNCTION_26_0();
    *(v77 + 4) = sub_267BA33E8(v79, v80, v81);
    _os_log_impl(&dword_267B93000, v75, v76, "#ContentProcessor.makeTextFromGroupedContentTokens resulting string: %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v78);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v82 = v0[17];
  v84 = v0[13];
  v83 = v0[14];

  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_470();

  return v85();
}

uint64_t sub_267DB184C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 272);
  *v4 = *v1;
  v3[35] = v7;
  v3[36] = v8;
  v3[37] = v0;

  if (v0)
  {
    v9 = v3[27];
    v10 = v3[25];
    v13 = v3 + 21;
    v11 = v3[21];
    v12 = v13[1];
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267DB1980()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 304);
  *v4 = *v1;
  v3[39] = v7;
  v3[40] = v8;
  v3[41] = v0;

  if (v0)
  {
    v9 = v3[27];
    v10 = v3[25];
    v13 = v3 + 21;
    v11 = v3[21];
    v12 = v13[1];
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267DB24E4()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 336);
  *v4 = *v1;
  v3[43] = v7;
  v3[44] = v8;

  if (v0)
  {
    v9 = v3[27];
    v10 = v3[25];
    v12 = v3[21];
    v11 = v3[22];

    v13 = v3[17];
    v16 = v3 + 13;
    v14 = v3[13];
    v15 = v16[1];

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_30_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_267DB2654()
{
  OUTLINED_FUNCTION_85_8();
  OUTLINED_FUNCTION_120_4();
  v3 = *(v1 + 352);
  v116 = *(v1 + 216);
  if (v3)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = *(v1 + 216);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_49:
      OUTLINED_FUNCTION_6_40(isUniquelyReferenced_nonNull_native, v5, v6, v116);
      sub_267BF4EE8();
      v116 = v111;
    }

    v8 = *(v116 + 16);
    v7 = *(v116 + 24);
    OUTLINED_FUNCTION_60_8();
    if (v10)
    {
      OUTLINED_FUNCTION_7_36(v9);
      sub_267BF4EE8();
      v116 = v112;
    }

    v11 = *(v1 + 344);

    *(v116 + 16) = v0;
    v12 = v116 + 16 * v8;
    *(v12 + 32) = v11;
    *(v12 + 40) = v3;
  }

  v13 = *(v1 + 192);
  v0 = *(v1 + 200);
  v118 = *(v1 + 384);
LABEL_7:
  v115 = v0;
  v113 = v13;
  while (1)
  {
    OUTLINED_FUNCTION_18_26();
    if (v15)
    {
      break;
    }

    *(v1 + 208) = v14;
    *(v1 + 216) = v116;
    *(v1 + 192) = v13;
    *(v1 + 200) = v0;
    OUTLINED_FUNCTION_15_29();
    if (v10)
    {
      __break(1u);
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_105_8();
    v17 = v16[4];
    *(v1 + 224) = v17;
    OUTLINED_FUNCTION_19_26(v16);
    *(v1 + 264) = *(v18 + 72);
    switch(*(v18 + 80))
    {
      case 1:
        v19 = *(v1 + 80);
        v20 = sub_267EF2D48();

        OUTLINED_FUNCTION_66();
        sub_267EF8FF8();
        OUTLINED_FUNCTION_43();

        v21 = CEMCreateEmojiLocaleData();

        v117 = v17;
        OUTLINED_FUNCTION_91_2();
        sub_267EF8FF8();
        OUTLINED_FUNCTION_108_6();
        v22 = CEMEmojiTokenCreateWithString();

        v23 = OUTLINED_FUNCTION_99_7();
        if (v21)
        {
          swift_unknownObjectRelease();
        }

        if (v22)
        {
          swift_unknownObjectRelease();
        }

        if (!v23)
        {
          goto LABEL_24;
        }

        objc_opt_self();
        if (OUTLINED_FUNCTION_92_7())
        {
          OUTLINED_FUNCTION_126_5();

          v3 = *(v1 + 24);
          if (v3)
          {
            OUTLINED_FUNCTION_104_6();
            v24 = swift_isUniquelyReferenced_nonNull_native();
            if ((v24 & 1) == 0)
            {
              OUTLINED_FUNCTION_6_40(v24, v25, v26, v116);
              sub_267BF4EE8();
              v116 = v77;
            }

            OUTLINED_FUNCTION_78_11(v116);
            if (v10)
            {
              OUTLINED_FUNCTION_7_36(v27);
              sub_267BF4EE8();
              v116 = v78;
            }

            OUTLINED_FUNCTION_84_7(v116);
            OUTLINED_FUNCTION_193();
            OUTLINED_FUNCTION_59_12();
            sub_267DB37C4(v28, v29, v30, v31, v32, v33, v34);
            v13 = v113;
            goto LABEL_27;
          }
        }

        else
        {
        }

LABEL_24:
        OUTLINED_FUNCTION_128_3();
        v3 = sub_267EF89F8();
        v35 = sub_267EF95E8();
        if (OUTLINED_FUNCTION_27(v35))
        {
          v36 = OUTLINED_FUNCTION_48();
          v37 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_33_12(v37, v38, v39, v40, v41, v42, v43, v44, v45);
          v46 = OUTLINED_FUNCTION_91_2();
          v114 = sub_267BA33E8(v46, v47, v48);
          OUTLINED_FUNCTION_193();
          OUTLINED_FUNCTION_59_12();
          sub_267DB37C4(v49, v50, v51, v52, v53, v54, v55);
          v13 = v113;
          *(v36 + 4) = v114;
          OUTLINED_FUNCTION_125_4(&dword_267B93000, v3, v21, "#ContentProcessor.makeTextFromGroupedContentTokens Failed to get description of emoji: %s");
          OUTLINED_FUNCTION_86_8();
          v0 = v115;
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_42_0();

          OUTLINED_FUNCTION_59_12();
          sub_267DB37C4(v56, v57, v58, v59, v60, v61, v62);
          continue;
        }

        v3 = v117;
        OUTLINED_FUNCTION_12_29();
        OUTLINED_FUNCTION_59_12();
        sub_267DB37C4(v63, v64, v65, v66, v67, v68, v69);
        OUTLINED_FUNCTION_12_29();
        OUTLINED_FUNCTION_59_12();
        sub_267DB37C4(v70, v71, v72, v73, v74, v75, v76);
LABEL_27:
        v0 = v115;
        break;
      case 2:

        v94 = swift_task_alloc();
        v95 = OUTLINED_FUNCTION_90_7(v94);
        *v95 = v96;
        OUTLINED_FUNCTION_1_57(v95);
        goto LABEL_40;
      case 3:

        v88 = swift_task_alloc();
        v89 = OUTLINED_FUNCTION_57_1(v88);
        *v89 = v90;
        OUTLINED_FUNCTION_4_47(v89);
        OUTLINED_FUNCTION_8_40();
        OUTLINED_FUNCTION_43_17();
        goto LABEL_41;
      case 4:
        v91 = swift_task_alloc();
        v92 = OUTLINED_FUNCTION_89_9(v91);
        *v92 = v93;
        OUTLINED_FUNCTION_0_46();
        OUTLINED_FUNCTION_43_17();
LABEL_40:
        OUTLINED_FUNCTION_29_20();
LABEL_41:
        OUTLINED_FUNCTION_63_9();

        return sub_267D1374C(v97, v98, v99, v100, v101, v102, v103, v104);
      default:
        OUTLINED_FUNCTION_127_4();

        OUTLINED_FUNCTION_83_7();
        v13 = v17;
        v0 = v2;
        if (v3)
        {
          OUTLINED_FUNCTION_10_31();
          v13 = v17;
          v0 = v2;
          if (v80)
          {
            OUTLINED_FUNCTION_21_21(v79);
            v13 = v17;
            v0 = v2;
          }
        }

        goto LABEL_7;
    }
  }

  v81 = *(v1 + 176);

  v82 = *(v116 + 16);
  if (v82)
  {
    OUTLINED_FUNCTION_53_12(MEMORY[0x277D84F90]);
    v83 = *(v1 + 32);
    v84 = v116 + 40;
    do
    {
      OUTLINED_FUNCTION_98_7();
      OUTLINED_FUNCTION_26_0();
      sub_267EF90F8();

      OUTLINED_FUNCTION_52_11();
      if (v10)
      {
        OUTLINED_FUNCTION_8_2(v85);
        OUTLINED_FUNCTION_95_7();
        v83 = *(v1 + 32);
      }

      v86 = OUTLINED_FUNCTION_14_34();
      v87(v86);
      v84 += 16;
      --v82;
    }

    while (v82);
  }

  else
  {

    v83 = MEMORY[0x277D84F90];
  }

  *(v1 + 360) = v83;
  OUTLINED_FUNCTION_16_27();
  sub_267EF90F8();

  OUTLINED_FUNCTION_45_15();
  v107 = swift_task_alloc();
  v108 = OUTLINED_FUNCTION_32_14(v107);
  *v108 = v109;
  OUTLINED_FUNCTION_3_49(v108);
  OUTLINED_FUNCTION_5_47();
  OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_62_7();

  return sub_267CE99E4();
}

uint64_t sub_267DB2BE0()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v2[46];
  *v4 = *v1;
  v3[47] = v0;

  v6 = v2[45];
  if (v0)
  {
    v7 = v3[21];
    sub_267B9FF34(v3[14], &unk_28022AE30, &qword_267EFC0B0);
  }

  else
  {
    sub_267B9FF34(v3[14], &unk_28022AE30, &qword_267EFC0B0);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DB2D4C()
{
  OUTLINED_FUNCTION_85_8();
  v135 = v1;
  v136 = v2;
  OUTLINED_FUNCTION_120_4();
  v134 = v0;
  v3 = v0[21];
  v4 = v0[17];
  v0[5] = sub_267EF41F8();
  v5 = v0 + 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  sub_267BF5748();
  v6 = sub_267EF8FC8();
  v8 = v7;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v0[21];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v11 = *(v10 + 16);
    if (v11 >= *(v10 + 24) >> 1)
    {
      sub_267BF4EE8();
      v10 = v125;
    }

    (*(v0[16] + 8))(v0[17], v0[15]);
    *(v10 + 16) = v11 + 1;
    v12 = v10 + 16 * v11;
    *(v12 + 32) = v6;
    *(v12 + 40) = v8;
    v13 = v0[19];
    v14 = v0[20] + 1;
    v0[20] = v14;
    v0[21] = v10;
    if (v14 == v13)
    {
      v15 = v0[10];
      if (sub_267E43718())
      {
        v5[2] = v10;
      }

      else
      {
        v5[1] = v10;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
      sub_267EF8FC8();

      v68 = v0[18];

      v69 = sub_267EF89F8();
      sub_267EF95D8();

      if (OUTLINED_FUNCTION_99())
      {
        v70 = OUTLINED_FUNCTION_48();
        v71 = OUTLINED_FUNCTION_52();
        v133 = v71;
        *v70 = 136315138;
        v72 = OUTLINED_FUNCTION_290();
        *(v70 + 4) = sub_267BA33E8(v72, v73, v74);
        OUTLINED_FUNCTION_45();
        _os_log_impl(v75, v76, v77, v78, v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      v79 = v0[17];
      v81 = v0[13];
      v80 = v0[14];

      OUTLINED_FUNCTION_23_12();
      v82 = OUTLINED_FUNCTION_290();

      return v83(v82);
    }

    OUTLINED_FUNCTION_106_3(v0[8] + 8 * v14);
    v16 = MEMORY[0x277D84F90];
    if (!v17)
    {
      LODWORD(v6) = 0;
      v20 = MEMORY[0x277D84F90];
      goto LABEL_45;
    }

    v127 = v5 - 3;

    v6 = 0;
    v18 = 0;
    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    v10 = 0xE000000000000000;
    v126 = v5;
LABEL_9:
    v0[26] = v19;
    v0[27] = v20;
    v0[24] = v18;
    v0[25] = v10;
    OUTLINED_FUNCTION_15_29();
    if (!v21)
    {
      break;
    }

    __break(1u);
LABEL_63:
    v123 = *(v10 + 16);
    OUTLINED_FUNCTION_4_7();
    sub_267BF4EE8();
    v10 = v124;
  }

  v132 = v20;
  OUTLINED_FUNCTION_105_8();
  v8 = *(v22 + 32);
  v0[28] = v8;
  v23 = *(v22 + 40);
  v0[29] = v23;
  v0[30] = *(v22 + 48);
  v24 = *(v22 + 56);
  v0[31] = v24;
  v25 = *(v22 + 64);
  v0[32] = v25;
  v26 = *(v22 + 72);
  v0[33] = v26;
  switch(*(v22 + 80))
  {
    case 1:
      v130 = v10;
      v131 = v26;
      v129 = v18;
      v137 = v6;
      v30 = v0[10];
      sub_267EF2D48();

      v31 = sub_267EF8FF8();

      v32 = CEMCreateEmojiLocaleData();

      v33 = sub_267EF8FF8();
      v34 = CEMEmojiTokenCreateWithString();

      v35 = CEMEmojiTokenCopyNameWithCount();
      if (v32)
      {
        swift_unknownObjectRelease();
      }

      if (v34)
      {
        swift_unknownObjectRelease();
      }

      if (!v35)
      {
        goto LABEL_30;
      }

      objc_opt_self();
      if (!OUTLINED_FUNCTION_92_7())
      {

LABEL_30:
        v49 = v0[18];

        v50 = sub_267EF89F8();
        v51 = sub_267EF95E8();
        if (OUTLINED_FUNCTION_5_2(v51))
        {
          v52 = OUTLINED_FUNCTION_48();
          v133 = OUTLINED_FUNCTION_52();
          *v52 = 136315138;
          v128 = v24;
          v53 = sub_267BA33E8(v8, v23, &v133);
          v54 = OUTLINED_FUNCTION_30_23();
          sub_267DB37C4(v54, v55, v56, v57, v25, v131, 1u);
          *(v52 + 4) = v53;
          _os_log_impl(&dword_267B93000, v50, v51, "#ContentProcessor.makeTextFromGroupedContentTokens Failed to get description of emoji: %s", v52, 0xCu);
          OUTLINED_FUNCTION_86_8();
          v5 = v126;
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_26();

          v58 = OUTLINED_FUNCTION_30_23();
          v61 = v128;
        }

        else
        {

          v62 = OUTLINED_FUNCTION_30_23();
          sub_267DB37C4(v62, v63, v64, v24, v25, v131, 1u);
          v58 = OUTLINED_FUNCTION_30_23();
          v61 = v24;
        }

        sub_267DB37C4(v58, v59, v60, v61, v25, v131, 1u);
        v6 = v137;
        v18 = v129;
        v10 = v130;
        goto LABEL_34;
      }

      *v127 = 0;
      v127[1] = 0;
      sub_267EF9018();

      v36 = v0[3];
      if (!v36)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_104_6();
      v37 = swift_isUniquelyReferenced_nonNull_native();
      if ((v37 & 1) == 0)
      {
        OUTLINED_FUNCTION_6_40(v37, v38, v39, v132);
        sub_267BF4EE8();
        v132 = v66;
      }

      v41 = *(v132 + 16);
      v40 = *(v132 + 24);
      if (v41 >= v40 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v40);
        sub_267BF4EE8();
        v132 = v67;
      }

      *(v132 + 16) = v41 + 1;
      v42 = v132 + 16 * v41;
      *(v42 + 32) = v24;
      *(v42 + 40) = v36;
      v43 = OUTLINED_FUNCTION_30_23();
      v44 = v25;
      v20 = v45;
      sub_267DB37C4(v43, v46, v47, v24, v44, v48, 1u);
      v6 = v137;
      v18 = v129;
      v10 = v130;
LABEL_35:
      OUTLINED_FUNCTION_18_26();
      if (!v65)
      {
        goto LABEL_9;
      }

      v85 = v0[22];

      v16 = MEMORY[0x277D84F90];
      break;
    case 2:

      v108 = swift_task_alloc();
      v109 = OUTLINED_FUNCTION_90_7(v108);
      *v109 = v110;
      OUTLINED_FUNCTION_1_57(v109);
      goto LABEL_58;
    case 3:

      v104 = swift_task_alloc();
      v105 = OUTLINED_FUNCTION_57_1(v104);
      *v105 = v106;
      OUTLINED_FUNCTION_4_47(v105);
      v138 = v24;
      v139 = v107;
      OUTLINED_FUNCTION_8_40();
      OUTLINED_FUNCTION_43_17();
      goto LABEL_59;
    case 4:
      v111 = swift_task_alloc();
      v112 = OUTLINED_FUNCTION_89_9(v111);
      *v112 = v113;
      OUTLINED_FUNCTION_0_46();
      OUTLINED_FUNCTION_43_17();
LABEL_58:
      OUTLINED_FUNCTION_29_20();
LABEL_59:
      OUTLINED_FUNCTION_63_9();

      return sub_267D1374C(v114, v115, v116, v117, v118, v119, v120, v121);
    default:
      v27 = v0[20];

      if (v27)
      {
        OUTLINED_FUNCTION_10_31();
        v20 = v132;
        if (v29)
        {
          v6 = *(v28 + 56 * v29 + 24) != 0;
        }

        else
        {
          v6 = 1;
        }

        v18 = v8;
        v10 = v23;
      }

      else
      {
        v6 = 1;
        v18 = v8;
        v10 = v23;
LABEL_34:
        v20 = v132;
      }

      goto LABEL_35;
  }

LABEL_45:
  v137 = v6;
  v86 = *(v20 + 16);
  if (v86)
  {
    v0[4] = v16;
    sub_267C7220C();
    v87 = v0[4];
    v88 = (v20 + 40);
    do
    {
      v89 = v0[13];
      v90 = *(v88 - 1);
      v91 = *v88;

      sub_267EF90F8();

      v0[4] = v87;
      v93 = *(v87 + 16);
      v92 = *(v87 + 24);
      if (v93 >= v92 >> 1)
      {
        OUTLINED_FUNCTION_7_36(v92);
        sub_267C7220C();
        v87 = *(v5 - 1);
      }

      v95 = v0[12];
      v94 = v0[13];
      v96 = v0[11];
      *(v87 + 16) = v93 + 1;
      OUTLINED_FUNCTION_9_4(v95);
      v99(v87 + v97 + *(v98 + 40) * v93);
      v88 += 2;
      --v86;
    }

    while (v86);
  }

  else
  {

    v87 = MEMORY[0x277D84F90];
  }

  v0[45] = v87;
  OUTLINED_FUNCTION_16_27();
  sub_267EF90F8();

  OUTLINED_FUNCTION_45_15();
  v100 = swift_task_alloc();
  v101 = OUTLINED_FUNCTION_32_14(v100);
  *v101 = v102;
  OUTLINED_FUNCTION_3_49();
  OUTLINED_FUNCTION_5_47();
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_62_7();

  return sub_267CE99E4();
}

uint64_t sub_267DB35E4()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_47_14();
  sub_267DB37C4(v1, v2, v3, v4, v5, v6, 2u);
  v7 = v0[37];
  v8 = v0[17];
  v10 = v0[13];
  v9 = v0[14];

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_267DB3668()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_47_14();
  sub_267DB37C4(v1, v2, v3, v4, v5, v6, 3u);
  v7 = v0[41];
  v8 = v0[17];
  v10 = v0[13];
  v9 = v0[14];

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_267DB36EC()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[47];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267DB3764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >= 3u)
  {
    if (a7 != 3)
    {
      return result;
    }
  }
}

uint64_t sub_267DB37C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >= 3u)
  {
    if (a7 != 3)
    {
      return result;
    }
  }
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

uint64_t sub_267DB3864(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 49))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 4)
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

uint64_t sub_267DB38A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_267DB3928(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_267DB3968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267DB3B04()
{
  v26 = &type metadata for GenericCountableComponent;
  v27 = sub_267C82904();
  OUTLINED_FUNCTION_160_1();
  *&v25 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_89_10(v25);
  memcpy(v3, v4, 0x42uLL);
  sub_267B9A5E8(&v25, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BE40, &unk_267F08CB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  v6 = __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  if (!OUTLINED_FUNCTION_168_2(v6))
  {
    v15 = OUTLINED_FUNCTION_103_6();
    sub_267DBC288(v15, v16);
    v17 = v1;
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_39_14();
  if (v2)
  {
    v21 = OUTLINED_FUNCTION_103_6();
    sub_267DBC288(v21, v22);
    v23 = v1;
    OUTLINED_FUNCTION_114_7();
  }

  else
  {
    v7 = *(v0 + 32);
    v8 = OUTLINED_FUNCTION_103_6();
    sub_267DBC288(v8, v9);
    v10 = v1;
    v11 = v7;
  }

  v12 = v11;
  v13 = [v11 recipients];

  if (!v13)
  {
    goto LABEL_7;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v14 = sub_267EF92F8();

LABEL_8:
  sub_267BE881C(inited, v14);
  v19 = v18;

  swift_setDeallocating();
  sub_267DB7190(&qword_280229790, &qword_267EFE4C0);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v19;
}