uint64_t sub_22FADB9F8()
{
  v44 = v0;
  v1 = *(v0 + 192);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_28;
  }

  v3 = 1701736302;
  v4 = *(*(v0 + 184) + OBJC_IVAR____TtC13PhotoAnalysis16FastPassActivity_processingTaskIdentifiers);
  v5 = MEMORY[0x277D837D0];
  v42 = v0;
  if (v4)
  {
    *(v0 + 176) = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
    sub_22FA2CF90(&qword_28147AF28, &qword_27DAD7448);
    v6 = sub_22FCC8A24();
    v8 = v7;

    *(v0 + 40) = v5;
    if (v8)
    {
      v3 = v6;
    }

    else
    {
      v8 = 0xE400000000000000;
    }
  }

  else
  {
    *(v0 + 40) = MEMORY[0x277D837D0];
    v8 = 0xE400000000000000;
  }

  v9 = *(v0 + 208);
  v10 = *(v0 + 184);
  *(v0 + 16) = v3;
  *(v0 + 24) = v8;
  sub_22FA4FE00((v0 + 16), (v0 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = v9;
  v12 = *(v0 + 72);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 48, v12);
  v14 = *(v12 - 8);
  v15 = swift_task_alloc();
  (*(v14 + 16))(v15, v13, v12);
  sub_22FADC9DC(v15, 0xD000000000000018, 0x800000022FCE2BB0, isUniquelyReferenced_nonNull_native, &v43, v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);

  v41 = v43;
  v16 = OBJC_IVAR____TtC13PhotoAnalysis16FastPassActivity_featureCodes;
  swift_beginAccess();
  v1 = *(v10 + v16);
  if (v1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22FCC92C4())
  {

    if (!i)
    {
      break;
    }

    v18 = 0;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x231908810](v18, v1);
      }

      else
      {
        if (v18 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v20 = *(v1 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v23 = [v20 stringValue];
      v24 = sub_22FCC8A84();
      v26 = v25;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_22FAC1D0C(0, *(v19 + 2) + 1, 1, v19);
      }

      v28 = *(v19 + 2);
      v27 = *(v19 + 3);
      if (v28 >= v27 >> 1)
      {
        v19 = sub_22FAC1D0C((v27 > 1), v28 + 1, 1, v19);
      }

      *(v19 + 2) = v28 + 1;
      v29 = &v19[16 * v28];
      *(v29 + 4) = v24;
      *(v29 + 5) = v26;
      ++v18;
      if (v22 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_23:

  v30 = v42;
  v42[21] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
  sub_22FA2CF90(&qword_28147AF28, &qword_27DAD7448);
  v31 = sub_22FCC8A24();
  v33 = v32;

  v42[13] = MEMORY[0x277D837D0];
  v42[10] = v31;
  v42[11] = v33;
  sub_22FA4FE00(v30 + 5, v30 + 7);
  LOBYTE(v31) = swift_isUniquelyReferenced_nonNull_native();
  v43 = v41;
  v34 = v42[17];
  v35 = __swift_mutable_project_boxed_opaque_existential_1((v30 + 14), v30[17]);
  v36 = *(v34 - 8);
  v37 = swift_task_alloc();
  (*(v36 + 16))(v37, v35, v34);
  sub_22FC49C38(*v37, v37[1], 0x2065727574616546, 0xED00007365646F43, v31, &v43);
  __swift_destroy_boxed_opaque_existential_0((v42 + 14));

  v38 = v43;
  v39 = v42[1];

  return v39(v38);
}

uint64_t sub_22FADBF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v39 = a7;
  v45 = a5;
  v44 = a4;
  v43 = a3;
  v48 = a2;
  v46 = a1;
  v55 = sub_22FCC8F84();
  MEMORY[0x28223BE20](v55);
  v54 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FCC8F94();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  v53 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22FCC8684();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22FCC8914();
  v51 = *(v13 - 8);
  v52 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v47 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v56 = &v38 - v16;
  v17 = sub_22FCC77B4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC13PhotoAnalysis16FastPassActivity_featureCodes;
  *(v7 + OBJC_IVAR____TtC13PhotoAnalysis16FastPassActivity_featureCodes) = MEMORY[0x277D84F90];
  v58 = *(a6 + 16);
  v59 = v7;
  if (v58)
  {
    v22 = 0;
    v57 = v18 + 16;
    while (v22 < *(a6 + 16))
    {
      (*(v18 + 16))(v20, a6 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v22, v17);
      if ((sub_22FCC7784() & 1) == 0)
      {
        goto LABEL_10;
      }

      sub_22FCC77A4();
      v23 = v59;
      v24 = swift_beginAccess();
      MEMORY[0x231908070](v24);
      if (*((*(v23 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v23 + v21) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22FCC8C64();
      }

      ++v22;
      sub_22FCC8C84();
      swift_endAccess();
      (*(v18 + 8))(v20, v17);
      if (v58 == v22)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    v62[0] = 0;
    v62[1] = 0xE000000000000000;
    sub_22FCC9384();
    MEMORY[0x231907FA0](0xD00000000000001BLL, 0x800000022FCE2C00);
    sub_22FCC94A4();
    MEMORY[0x231907FA0](0xD00000000000001ALL, 0x800000022FCE2C20);
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
LABEL_8:

    v25 = v59;
    *(v59 + OBJC_IVAR____TtC13PhotoAnalysis16FastPassActivity_processingTaskIdentifiers) = v39;
    v26 = type metadata accessor for BackgroundSystemTask();
    v27 = swift_allocObject();
    v27[1] = 0u;
    v27[2] = 0u;
    v27[3] = 0u;
    *(v27 + 57) = 0u;
    v62[3] = v26;
    v62[4] = &off_2844A92C8;
    v62[0] = v27;
    v28 = v56;
    sub_22FCC88E4();
    *(v25 + 16) = 0;
    *(v25 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_delegate + 8) = 0;
    swift_unknownObjectUnownedInit();
    *(v25 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_monitorTimer) = 0;
    v29 = v25 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralRequestTime;
    *v29 = 0;
    *(v29 + 8) = 1;
    *(v25 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralHasTimedOut) = 0;
    *(v25 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_taskSchedulingTask) = 0;
    *(v25 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_cancellationTask) = 0;
    *(v25 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_runtimeError) = 0;
    *(v25 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_isActive) = 0;
    v60 = 0xD000000000000019;
    v61 = 0x800000022FCE2C40;
    MEMORY[0x231907FA0](v46, v48);
    v31 = v60;
    v30 = v61;
    *(v25 + 24) = v60;
    *(v25 + 32) = v30;
    v32 = v44;
    *(v25 + 40) = v43;
    *(v25 + 48) = v32;
    *(v25 + 56) = v45;
    sub_22FA2D328(v62, v25 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask);

    v33 = v40;
    sub_22FCC8674();
    (*(v41 + 32))(v25 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_logger, v33, v42);
    v58 = sub_22FA5191C();
    v60 = v31;
    v61 = v30;
    MEMORY[0x231907FA0](0x65756575712ELL, 0xE600000000000000);
    v57 = v60;
    v34 = v51;
    v35 = v52;
    (*(v51 + 16))(v47, v28, v52);
    (*(v49 + 104))(v53, *MEMORY[0x277D85268], v50);
    v60 = MEMORY[0x277D84F90];
    sub_22FADCCD0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7360);
    sub_22FA2CF90(&qword_28147AF20, &qword_27DAD7360);
    sub_22FCC9264();
    v36 = sub_22FCC8FC4();
    (*(v34 + 8))(v56, v35);
    __swift_destroy_boxed_opaque_existential_0(v62);
    *(v25 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_queue) = v36;
    return v25;
  }

  return result;
}

uint64_t sub_22FADC70C()
{
}

uint64_t sub_22FADC74C()
{
  sub_22FBB8090();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FastPassActivity()
{
  result = qword_281480640;
  if (!qword_281480640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FADC888(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FA2C030;

  return sub_22FBBAAF8(a1, v1);
}

uint64_t sub_22FADC924(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA2C21C;

  return sub_22FBBB7A8(a1, v4);
}

_OWORD *sub_22FADC9DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  v31 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v13 = *a5;
  v15 = sub_22FA2DB54(a2, a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a4 & 1) != 0)
  {
LABEL_7:
    v21 = *a5;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
      return sub_22FA4FE00(v30, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a4 & 1) == 0)
  {
    sub_22FA7086C();
    goto LABEL_7;
  }

  sub_22FA6C730(v18, a4 & 1);
  v24 = sub_22FA2DB54(a2, a3);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_22FCC9774();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  MEMORY[0x28223BE20](v26);
  v28 = v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);
  sub_22FADCBFC(v15, a2, a3, v28, v21, a6);

  return __swift_destroy_boxed_opaque_existential_0(v30);
}

_OWORD *sub_22FADCBFC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_22FA4FE00(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

unint64_t sub_22FADCCD0()
{
  result = qword_28147AEA0;
  if (!qword_28147AEA0)
  {
    sub_22FCC8F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147AEA0);
  }

  return result;
}

uint64_t sub_22FADCD48()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 processIdentifier];

  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_22FA28000, v3, v4, "MemoryCreationQU prewarm signal sent from PromptSuggestionAnnotator with originatorPID=%ld", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  if ([objc_opt_self() enableQueryAnnotationPipelineInPhotos])
  {
    sub_22FCC7544();
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 16);
    *(v0 + 40) = 1;
    v9 = *(v8 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionAnnotator_queryAnnotatorSessionManager);
    v10 = swift_task_alloc();
    *(v0 + 24) = v10;
    *v10 = v0;
    v10[1] = sub_22FADCF3C;

    return (sub_22FBC2390)(v0 + 40, v9, v2);
  }
}

uint64_t sub_22FADCF3C()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FADD070, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t PromptSuggestionAnnotator.annotatePromptsWithPreComputedQU(_:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_22FCC84E4();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FADD14C, 0, 0);
}

uint64_t sub_22FADD14C()
{
  v2 = v0[11];
  v1 = v0[12];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_22FCC8414();
  v3 = *(v2 + 16);
  v4 = sub_22FCC8664();
  if (v3)
  {
    v5 = sub_22FCC8F34();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22FA28000, v4, v5, "Requesting query annotations that is called from PromptSuggestionAnnotator", v6, 2u);
      MEMORY[0x23190A000](v6, -1, -1);
    }

    if ([objc_opt_self() enableQueryAnnotationPipelineInPhotos])
    {
      __swift_project_boxed_opaque_existential_1(v0[12], v1[3]);
      sub_22FCC83E4();
      v7 = swift_task_alloc();
      v0[18] = v7;
      *v7 = v0;
      v7[1] = sub_22FADD4CC;
      v8 = v0[13];
      v9 = v0[11];

      return sub_22FADD8A0(v9, (v0 + 2), v8);
    }

    else
    {
      v21 = swift_task_alloc();
      v0[19] = v21;
      *v21 = v0;
      v21[1] = sub_22FADD69C;
      v22 = v0[11];

      return sub_22FADEB88(v22);
    }
  }

  else
  {
    v11 = sub_22FCC8F14();
    if (os_log_type_enabled(v4, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v4, v11, "No annotations because no QU provided", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    v14 = v0[16];
    v13 = v0[17];
    v15 = v0[15];
    v17 = v0[12];
    v16 = v0[13];

    __swift_project_boxed_opaque_existential_1(v17, v1[3]);
    sub_22FCC83F4();
    (*(v14 + 8))(v13, v15);
    v18 = sub_22FCC8494();
    (*(*(v18 - 8) + 8))(v16, v18);

    v19 = v0[1];
    v20 = MEMORY[0x277D84F90];

    return v19(v20);
  }
}

uint64_t sub_22FADD4CC(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 56) = v1;
  *(v2 + 64) = a1;

  return MEMORY[0x2822009F8](sub_22FADD5CC, 0, 0);
}

uint64_t sub_22FADD5CC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = *(v0 + 64);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  sub_22FCC83F4();
  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_22FADD69C(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 72) = v1;
  *(v2 + 80) = a1;

  return MEMORY[0x2822009F8](sub_22FADD79C, 0, 0);
}

uint64_t sub_22FADD79C()
{
  v1 = *(v0 + 104);
  v2 = sub_22FCC8494();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = *(v0 + 80);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  sub_22FCC83F4();
  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7(v3);
}

uint64_t sub_22FADD8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22FCC8494();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8308);
  v4[9] = swift_task_alloc();
  v6 = sub_22FCC71A4();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_22FCC7F54();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FADDA60, 0, 0);
}

uint64_t sub_22FADDA60()
{
  *(v0 + 136) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionAnnotator_logger;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8EF4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22FA28000, v1, v2, "Using the new Query Annotator V2 to parse and ground the QU completion", v3, 2u);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v4 = *(v0 + 16);

  v5 = *(v4 + 32);
  *(v0 + 232) = v5;
  v6 = 1 << v5;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 64);
  *(v0 + 144) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionAnnotator_queryAnnotator;

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  *(v0 + 152) = 0;
  *(v0 + 160) = v18;
  if (v8)
  {
    v19 = *(v0 + 16);
LABEL_12:
    *(v0 + 168) = v8;
    *(v0 + 176) = v17;
    v21 = *(v19 + 48);
    v22 = (v17 << 10) | (16 * __clz(__rbit64(v8)));
    v23 = *(v21 + v22);
    *(v0 + 184) = v23;
    v24 = *(v21 + v22 + 8);
    *(v0 + 192) = v24;
    v25 = (*(v19 + 56) + v22);
    *(v0 + 200) = *v25;
    *(v0 + 208) = v25[1];
    swift_bridgeObjectRetain_n();

    sub_22FCC7F44();
    v31 = *(v0 + 72);
    v32 = sub_22FCC70C4();
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
    sub_22FCC8434();
    v33 = swift_task_alloc();
    *(v0 + 216) = v33;
    *v33 = v0;
    v33[1] = sub_22FADDFD4;
    v10 = *(v0 + 128);
    v9 = *(v0 + 104);
    v13 = *(v0 + 72);
    v16 = *(v0 + 24);
    v11 = v23;
    v12 = v24;
    v14 = 0;
    v15 = 1;

    return MEMORY[0x28219C010](v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        __break(1u);
        return MEMORY[0x28219C010](v9, v10, v11, v12, v13, v14, v15, v16);
      }

      if (v20 >= (((1 << *(v0 + 232)) + 63) >> 6))
      {
        break;
      }

      v19 = *(v0 + 16);
      v8 = *(v19 + 8 * v20 + 64);
      ++v17;
      if (v8)
      {
        v17 = v20;
        goto LABEL_12;
      }
    }

    v26 = *(v0 + 48);
    v27 = *(v0 + 56);
    v28 = *(v0 + 32);

    (*(v27 + 8))(v28, v26);

    v29 = *(v0 + 8);

    return v29(v18);
  }
}

uint64_t sub_22FADDFD4()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  sub_22FA2B420(*(v2 + 72), &unk_27DAD8308);
  if (v0)
  {
    v3 = sub_22FADE6D4;
  }

  else
  {

    v3 = sub_22FADE138;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FADE138()
{
  v53 = v0;
  (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 104), *(v0 + 80));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 160);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = sub_22FAC2068(v3 > 1, v4 + 1, 1, v2);
    }

    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(v0 + 112);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);
    (*(v9 + 8))(*(v0 + 104), v10);
    (*(v6 + 8))(v5, v7);
    v2[2] = v4 + 1;
    (*(v9 + 32))(v2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v4, v8, v10);
    v11 = *(v0 + 152);
    v12 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      break;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    v2 = sub_22FAC2068(0, v2[2] + 1, 1, v2);
  }

  v13 = *(v0 + 224);
  while (1)
  {
    v25 = *(v0 + 168);
    v24 = *(v0 + 176);
    *(v0 + 152) = v12;
    *(v0 + 160) = v2;
    v26 = (v25 - 1) & v25;
    if (!v26)
    {
      break;
    }

    v27 = *(v0 + 16);
LABEL_14:
    *(v0 + 168) = v26;
    *(v0 + 176) = v24;
    v29 = *(v27 + 48);
    v30 = (v24 << 10) | (16 * __clz(__rbit64(v26)));
    v31 = *(v29 + v30);
    *(v0 + 184) = v31;
    v32 = *(v29 + v30 + 8);
    *(v0 + 192) = v32;
    v33 = (*(v27 + 56) + v30);
    *(v0 + 200) = *v33;
    *(v0 + 208) = v33[1];
    swift_bridgeObjectRetain_n();

    sub_22FCC7F44();
    if (!v13)
    {
      v44 = *(v0 + 72);
      v45 = sub_22FCC70C4();
      (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
      sub_22FCC8434();
      v46 = swift_task_alloc();
      *(v0 + 216) = v46;
      *v46 = v0;
      v46[1] = sub_22FADDFD4;
      v47 = *(v0 + 128);
      v48 = *(v0 + 104);
      v49 = *(v0 + 72);
      v50 = *(v0 + 24);
      v55 = *(v0 + 64);

      return MEMORY[0x28219C010](v48, v47, v31, v32, v49, 0, 1, v50);
    }

    v34 = v13;
    v35 = sub_22FCC8664();
    v36 = sub_22FCC8F14();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 208);
    if (v37)
    {
      v14 = *(v0 + 192);
      v51 = *(v0 + 200);
      v15 = *(v0 + 184);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v52 = v18;
      *v16 = 136381187;
      v19 = sub_22FA2F600(v15, v14, &v52);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2081;
      v20 = sub_22FA2F600(v51, v38, &v52);

      *(v16 + 14) = v20;
      *(v16 + 22) = 2112;
      v21 = v13;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v22;
      *v17 = v22;
      _os_log_impl(&dword_22FA28000, v35, v36, "Unable to convert query %{private}s and query response JSON string %{private}s to QueryUnderstandingCompletion: %@", v16, 0x20u);
      sub_22FA2B420(v17, &unk_27DAD7B10);
      MEMORY[0x23190A000](v17, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v18, -1, -1);
      MEMORY[0x23190A000](v16, -1, -1);
    }

    else
    {
    }

    v13 = 0;
    v23 = *(v0 + 152);
    v2 = *(v0 + 160);
    v12 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_24;
    }
  }

  while (1)
  {
    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v28 >= (((1 << *(v0 + 232)) + 63) >> 6))
    {
      break;
    }

    v27 = *(v0 + 16);
    v26 = *(v27 + 8 * v28 + 64);
    ++v24;
    if (v26)
    {
      v24 = v28;
      goto LABEL_14;
    }
  }

  v39 = *(v0 + 48);
  v40 = *(v0 + 56);
  v41 = *(v0 + 32);

  (*(v40 + 8))(v41, v39);

  v42 = *(v0 + 8);

  return v42(v2);
}

uint64_t sub_22FADE6D4()
{
  v47 = v0;
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  v1 = *(v0 + 224);

  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 208);
  if (v5)
  {
    v7 = *(v0 + 192);
    v45 = *(v0 + 200);
    v8 = *(v0 + 184);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v46 = v11;
    *v9 = 136381187;
    v12 = sub_22FA2F600(v8, v7, &v46);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2081;
    v13 = sub_22FA2F600(v45, v6, &v46);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v15;
    *v10 = v15;
    _os_log_impl(&dword_22FA28000, v3, v4, "Unable to convert query %{private}s and query response JSON string %{private}s to QueryUnderstandingCompletion: %@", v9, 0x20u);
    sub_22FA2B420(v10, &unk_27DAD7B10);
    MEMORY[0x23190A000](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 152);
  v25 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x28219C010](v16, v17, v18, v19, v20, v21, v22, v23);
  }

  v27 = *(v0 + 168);
  v26 = *(v0 + 176);
  v28 = *(v0 + 160);
  *(v0 + 152) = v25;
  v29 = (v27 - 1) & v27;
  if (v29)
  {
    v30 = *(v0 + 16);
LABEL_11:
    *(v0 + 168) = v29;
    *(v0 + 176) = v26;
    v32 = *(v30 + 48);
    v33 = (v26 << 10) | (16 * __clz(__rbit64(v29)));
    v34 = *(v32 + v33);
    *(v0 + 184) = v34;
    v35 = *(v32 + v33 + 8);
    *(v0 + 192) = v35;
    v36 = (*(v30 + 56) + v33);
    *(v0 + 200) = *v36;
    *(v0 + 208) = v36[1];
    swift_bridgeObjectRetain_n();

    sub_22FCC7F44();
    v37 = *(v0 + 72);
    v38 = sub_22FCC70C4();
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
    sub_22FCC8434();
    v39 = swift_task_alloc();
    *(v0 + 216) = v39;
    *v39 = v0;
    v39[1] = sub_22FADDFD4;
    v17 = *(v0 + 128);
    v16 = *(v0 + 104);
    v20 = *(v0 + 72);
    v23 = *(v0 + 24);
    v49 = *(v0 + 64);
    v18 = v34;
    v19 = v35;
    v21 = 0;
    v22 = 1;

    return MEMORY[0x28219C010](v16, v17, v18, v19, v20, v21, v22, v23);
  }

  while (1)
  {
    v31 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v31 >= (((1 << *(v0 + 232)) + 63) >> 6))
    {
      break;
    }

    v30 = *(v0 + 16);
    v29 = *(v30 + 8 * v31 + 64);
    ++v26;
    if (v29)
    {
      v26 = v31;
      goto LABEL_11;
    }
  }

  v40 = *(v0 + 48);
  v41 = *(v0 + 56);
  v42 = *(v0 + 32);

  (*(v41 + 8))(v42, v40);

  v43 = *(v0 + 8);

  return v43(v28);
}

uint64_t sub_22FADEB88(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FADEBA8, 0, 0);
}

uint64_t sub_22FADEBA8()
{
  *(v0 + 32) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionAnnotator_logger;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8EF4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22FA28000, v1, v2, "Using the new Query Annotator V2 to parse and ground the QU completion", v3, 2u);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v4 = *(v0 + 24);

  *(v0 + 64) = 1;
  v5 = *(v4 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionAnnotator_queryAnnotatorSessionManager);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_22FADECFC;
  v7 = *(v0 + 16);

  return sub_22FBC3804(v7, (v0 + 64), v5);
}

uint64_t sub_22FADECFC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_22FADEF50;
  }

  else
  {
    v4 = sub_22FADEE10;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FADEE10()
{

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[6];
  v5 = v0[2];
  if (v3)
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = *(v5 + 16);

    *(v6 + 12) = 2048;
    *(v6 + 14) = *(v4 + 16);

    _os_log_impl(&dword_22FA28000, v1, v2, "Requested Query annotations for %ld prompts, received %ld annotations", v6, 0x16u);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  else
  {
  }

  v7 = v0[6];
  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_22FADEF50()
{
  v19 = v0;
  v1 = *(v0 + 56);

  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 56);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 138412547;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v11;
    *v8 = v11;
    *(v7 + 12) = 2081;
    v12 = sub_22FCC89E4();
    v14 = sub_22FA2F600(v12, v13, &v18);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_22FA28000, v3, v4, "Error requesting annotations for prompts with qu %@ : %{private}s", v7, 0x16u);
    sub_22FA2B420(v8, &unk_27DAD7B10);
    MEMORY[0x23190A000](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v15 = *(v0 + 8);
  v16 = MEMORY[0x277D84F90];

  return v15(v16);
}

uint64_t PromptSuggestionAnnotator.deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionAnnotator_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionAnnotator_queryAnnotator;
  v4 = sub_22FCC7554();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PromptSuggestionAnnotator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionAnnotator_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionAnnotator_queryAnnotator;
  v4 = sub_22FCC7554();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_22FADF2FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA2C030;

  return PromptSuggestionAnnotator.prewarm()();
}

uint64_t sub_22FADF38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FA52F04;

  return PromptSuggestionAnnotator.annotatePromptsWithPreComputedQU(_:eventRecorder:progressReporter:)(a1, a2, a3);
}

uint64_t sub_22FADF43C(void *a1)
{
  v2 = v1;
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22FCC7554();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ECRPersonGroundingProcessor(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FA812F8();
  v14 = sub_22FCC91C4();
  *(v1 + 16) = a1;
  *(v1 + 24) = v14;
  type metadata accessor for QueryAnnotatorSessionManager();
  v15 = swift_allocObject();
  v16 = a1;
  swift_defaultActor_initialize();
  *(v15 + 112) = MEMORY[0x277D84F98];
  *(v15 + 120) = 0;
  *(v15 + 128) = 0;
  *(v2 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionAnnotator_queryAnnotatorSessionManager) = v15;
  if (qword_28147CEC0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_28147CEC8);
  (*(v5 + 16))(v13, v17, v4);
  v22[3] = v11;
  v22[4] = sub_22FADFAEC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  sub_22FADFB44(v13, boxed_opaque_existential_1);
  sub_22FCC7534();
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionAnnotator_queryAnnotator, v10, v21);
  v19 = *(v2 + 24);
  sub_22FCC8694();
  sub_22FADFBA8(v13);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionAnnotator_logger, v7, v4);
  return v2;
}

uint64_t dispatch thunk of PromptSuggestionAnnotationProvider.prewarm()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA2C030;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PromptSuggestionAnnotationProvider.annotatePromptsWithPreComputedQU(_:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FAA2728;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t type metadata accessor for PromptSuggestionAnnotator()
{
  result = qword_28147E6D8;
  if (!qword_28147E6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FADF9EC()
{
  result = sub_22FCC8684();
  if (v1 <= 0x3F)
  {
    result = sub_22FCC7554();
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

unint64_t sub_22FADFAEC()
{
  result = qword_28147DB80;
  if (!qword_28147DB80)
  {
    type metadata accessor for ECRPersonGroundingProcessor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147DB80);
  }

  return result;
}

uint64_t sub_22FADFB44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ECRPersonGroundingProcessor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FADFBA8(uint64_t a1)
{
  v2 = type metadata accessor for ECRPersonGroundingProcessor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FADFC04(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = *v2;
  return MEMORY[0x2822009F8](sub_22FADFC50, 0, 0);
}

uint64_t sub_22FADFC50()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v1;
  v6[5] = v4;
  v0[6] = sub_22FAE126C;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA2B268;
  v0[5] = &block_descriptor_29_0;
  v7 = _Block_copy(v0 + 2);

  v8 = NSExecuteCatchingObjCException(v7);
  _Block_release(v7);
  if (v8)
  {
    v9 = v0[10];
    v10 = v0[11];
    sub_22FAE11BC();
    swift_allocError();
    v12 = v11;
    *(v11 + 24) = v10;
    v13 = sub_22FAE1494(&qword_281481AE0, v11, type metadata accessor for LegacyTask);
    *v12 = v9;
    *(v12 + 32) = v13;
    *(v12 + 40) = v8;
    *(v12 + 48) = 0;

LABEL_5:
    swift_willThrow();

    v15 = v0[1];
    goto LABEL_6;
  }

  swift_beginAccess();
  if (*v5)
  {
    v14 = *v5;
    goto LABEL_5;
  }

  v15 = v0[1];
LABEL_6:

  return v15();
}

void sub_22FADFE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v6 = sub_22FAE0048(a2, a3);
  v7 = *(a1 + 16);
  v8 = *(a1 + 64);
  v15[0] = 0;
  if ([v7 runWithGraphManager:v8 progressReporter:v6 error:v15])
  {
    v9 = v15[0];
  }

  else
  {
    v10 = v15[0];
    v11 = sub_22FCC6514();

    swift_willThrow();
    v12 = sub_22FCC6504();
    if ([v12 code] == -4 || objc_msgSend(v12, sel_code) == -4 || objc_msgSend(v6, sel_isCancelled))
    {
      sub_22FCC8CF4();
      sub_22FAE1494(&qword_28147AFC0, 255, MEMORY[0x277D85678]);
      v13 = swift_allocError();
      sub_22FCC89B4();

      swift_beginAccess();
      v14 = *(a4 + 16);
      *(a4 + 16) = v13;
    }

    else
    {

      swift_beginAccess();
      v14 = *(a4 + 16);
      *(a4 + 16) = v11;
    }
  }
}

id sub_22FAE0048(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_22FA4ED4C;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FA51A14;
  aBlock[3] = &block_descriptor_17_0;
  v6 = _Block_copy(aBlock);
  v10[4] = sub_22FAE1264;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_22FAE0870;
  v10[3] = &block_descriptor_20;
  v7 = _Block_copy(v10);

  v8 = [objc_opt_self() progressReporterWithProgressBlock:v6 throughputReportBlock:v7];
  _Block_release(v7);
  _Block_release(v6);

  return v8;
}

uint64_t sub_22FAE0200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = *v3;
  return MEMORY[0x2822009F8](sub_22FAE024C, 0, 0);
}

uint64_t sub_22FAE024C()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = (v5 + 16);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v1;
  v7[5] = v4;
  v7[6] = v5;
  v0[6] = sub_22FAE11A4;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA2B268;
  v0[5] = &block_descriptor_16;
  v8 = _Block_copy(v0 + 2);

  v9 = v4;

  v10 = NSExecuteCatchingObjCException(v8);
  _Block_release(v8);
  if (v10)
  {
    v11 = v0[11];
    v12 = v0[12];
    sub_22FAE11BC();
    swift_allocError();
    v14 = v13;
    *(v13 + 24) = v12;
    v15 = sub_22FAE1494(&qword_281481AE0, v13, type metadata accessor for LegacyTask);
    *v14 = v11;
    *(v14 + 32) = v15;
    *(v14 + 40) = v10;
    *(v14 + 48) = 0;

LABEL_5:
    swift_willThrow();

    v17 = v0[1];
    goto LABEL_6;
  }

  swift_beginAccess();
  if (*v6)
  {
    v16 = *v6;
    goto LABEL_5;
  }

  v17 = v0[1];
LABEL_6:

  return v17();
}

void sub_22FAE0480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v8 = sub_22FAE0048(a2, a3);
  v9 = *(a1 + 16);
  if ([v9 respondsToSelector_])
  {
    v10 = *(a1 + 64);
    v18[0] = 0;
    if ([v9 runWithGraphManager:v10 withIncrementalChange:a4 progressReporter:v8 error:v18])
    {
      v11 = v18[0];

      return;
    }

    v14 = v18[0];
    v12 = sub_22FCC6514();
  }

  else
  {
    sub_22FAE1210();
    v12 = swift_allocError();
    *v13 = 0xD00000000000001CLL;
    *(v13 + 8) = 0x800000022FCE2D60;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
  }

  swift_willThrow();
  v15 = sub_22FCC6504();
  if ([v15 code] == -4 || objc_msgSend(v15, sel_code) == -4 || objc_msgSend(v8, sel_isCancelled))
  {
    sub_22FCC8CF4();
    sub_22FAE1494(&qword_28147AFC0, 255, MEMORY[0x277D85678]);
    v16 = swift_allocError();
    sub_22FCC89B4();

    swift_beginAccess();
    v17 = *(a5 + 16);
    *(a5 + 16) = v16;
  }

  else
  {

    swift_beginAccess();
    v17 = *(a5 + 16);
    *(a5 + 16) = v12;
  }
}

uint64_t sub_22FAE06C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    return sub_22FA518B4(&v15);
  }

  sub_22FA2E6E4(Strong + 96, &v15);

  if (!*(&v16 + 1))
  {
    return sub_22FA518B4(&v15);
  }

  sub_22FA2CF78(&v15, v18);
  swift_beginAccess();
  v7 = swift_weakLoadStrong();
  if (v7)
  {
    v8 = [*(v7 + 16) name];
    v9 = sub_22FCC8A84();
    v11 = v10;

    if (a3)
    {
      MEMORY[0x231907FA0](a2, a3);

      MEMORY[0x231907FA0](46, 0xE100000000000000);
    }

    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v13 + 16))(a1, v9, v11, v12, v13);
  }

  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_22FAE0870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_22FCC8A84();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4(a2, v5, v7);
}

id sub_22FAE08FC(char a1)
{
  v3 = *(v1 + 16);
  result = [v3 timeoutFatal_];
  if (a1)
  {
    sub_22FCC9384();

    v5 = [v3 name];
    v6 = sub_22FCC8A84();
    v8 = v7;

    MEMORY[0x231907FA0](v6, v8);

    MEMORY[0x231907FA0](0xD000000000000022, 0x800000022FCE2DC0);
    result = sub_22FCC94D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22FAE0A14()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  sub_22FA518B4(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_22FAE0AA0()
{
  v1 = [*(*v0 + 16) name];
  v2 = sub_22FCC8A84();

  return v2;
}

id sub_22FAE0AFC()
{
  v1 = *(*v0 + 16);
  if (([v1 respondsToSelector_] & 1) == 0)
  {
    return 0;
  }

  return [v1 version];
}

uint64_t sub_22FAE0B78()
{
  result = sub_22FBB2208([*(*v0 + 16) priority]);
  if (v2)
  {
    return 2;
  }

  return result;
}

uint64_t sub_22FAE0BB4()
{
  v1 = [*(*v0 + 16) taskClassDependencies];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8320);
  v2 = sub_22FCC8C44();

  return v2;
}

uint64_t sub_22FAE0C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FADFC04(a2, a3);
}

id sub_22FAE0D34()
{
  v1 = *(*v0 + 16);
  if ([v1 respondsToSelector_])
  {
    return [v1 featureCode];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FAE0D9C()
{
  v2 = *(*v0 + 16);
  if ([v2 respondsToSelector_])
  {
    v3 = [v2 featureAvailable];
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_22FAE0E2C()
{
  v2 = *(*v0 + 16);
  if ([v2 respondsToSelector_])
  {
    v3 = [v2 featureComplete];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_22FAE0EE0()
{
  v1 = [*(*v0 + 16) incrementalKey];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22FCC8A84();

  return v3;
}

double sub_22FAE0F4C()
{
  v1 = *(*v0 + 16);
  if (([v1 respondsToSelector_] & 1) == 0)
  {
    return 0.0;
  }

  [v1 incrementalWindow];
  return result;
}

uint64_t sub_22FAE0FB4(uint64_t a1, double a2)
{
  v5 = *v2;
  v6 = *(*v2 + 16);
  if ([v6 respondsToSelector_])
  {
    return [v6 shouldRunIncrementallyWithGraphManager:*(v5 + 64) incrementalChange:a1 timeIntervalSinceNonIncrementalRun:a2];
  }

  result = [v6 incrementalKey];
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t sub_22FAE104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22FA2C21C;

  return sub_22FAE0200(a2, a3, a4);
}

uint64_t sub_22FAE1120(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_22FAE1494(&qword_281481AE8, a2, type metadata accessor for LegacyTask);
  result = sub_22FAE1494(&qword_281481AF0, v3, type metadata accessor for LegacyTask);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22FAE11BC()
{
  result = qword_281481320;
  if (!qword_281481320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281481320);
  }

  return result;
}

unint64_t sub_22FAE1210()
{
  result = qword_27DAD8318;
  if (!qword_27DAD8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8318);
  }

  return result;
}

uint64_t sub_22FAE1278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22FCC67F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MomentGraphWorker();
  v21 = sub_22FAE1494(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  *&v19 = a2;
  type metadata accessor for LegacyTask();
  v12 = swift_allocObject();
  sub_22FCC67E4();
  v13 = sub_22FCC67B4();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  *(v12 + 72) = v13;
  *(v12 + 80) = v15;
  *(v12 + 88) = 1;
  *(v12 + 16) = a1;
  sub_22FA2CF78(&v19, v12 + 24);
  *(v12 + 64) = a3;
  v16 = *(a4 + 16);
  *(v12 + 96) = *a4;
  *(v12 + 112) = v16;
  *(v12 + 128) = *(a4 + 32);
  return v12;
}

uint64_t sub_22FAE1408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 + 112) + 112);
  sub_22FA2E6E4(a3, v9);

  v7 = sub_22FAE1278(a1, a2, v6, v9);
  sub_22FA518B4(a3);
  return v7;
}

uint64_t sub_22FAE1494(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22FAE14F4()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_281487EC0);
  __swift_project_value_buffer(v0, qword_281487EC0);
  return sub_22FCC8674();
}

uint64_t sub_22FAE1574(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_22FAE1598, 0, 0);
}

uint64_t sub_22FAE1598()
{
  v1 = v0[9];
  v2 = v0[8];
  v3 = *(*(v0[10] + 136) + 112);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v0[6] = sub_22FAE1C44;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FAE17C8;
  v0[5] = &block_descriptor_17;
  v6 = _Block_copy(v0 + 2);
  v7 = v3;

  v8 = [v4 computeFTESocialGroupsWithPhotoLibrary:v7 updateBlock:v6];
  _Block_release(v6);
  if (qword_28147FC48 != -1)
  {
    swift_once();
  }

  v9 = sub_22FCC8684();
  __swift_project_value_buffer(v9, qword_281487EC0);
  v10 = sub_22FCC8664();
  v11 = sub_22FCC8F34();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v8 != 0;
    _os_log_impl(&dword_22FA28000, v10, v11, "Social Groups FTE Task completed with success %{BOOL}d", v12, 8u);
    MEMORY[0x23190A000](v12, -1, -1);
  }

  byte_28147FC50 = v8 != 0;
  v13 = v0[1];

  return v13();
}

uint64_t sub_22FAE17C8(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_22FAE182C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22FAE18B4()
{
  v1 = *(*(*v0 + 136) + 112);
  v2 = sub_22FAE1C88(v1);

  return v2 & 1;
}

uint64_t sub_22FAE18F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FAE1574(a2, a3);
}

uint64_t sub_22FAE199C()
{
  v0 = sub_22FCC77B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3C258], v0);
  v4 = sub_22FCC7794();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void sub_22FAE1AA8(char a1)
{
  if (a1)
  {
    sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    sub_22FCC8F24();
    sub_22FA812F8();
    v1 = sub_22FCC91B4();
    sub_22FCC85A4();
  }
}

uint64_t sub_22FAE1B9C(uint64_t a1)
{
  *(a1 + 8) = sub_22FAE1C04(&unk_28147FC38);
  result = sub_22FAE1C04(&qword_27DAD8328);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FAE1C04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SocialGroupsFTETask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FAE1C44(BOOL *a1, float a2)
{
  result = (*(v2 + 16))(a2);
  *a1 = (result & 1) == 0;
  return result;
}

uint64_t sub_22FAE1C88(void *a1)
{
  v2 = sub_22FCC7BE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 librarySpecificFetchOptions];
  [v6 setFetchLimit_];
  v7 = *MEMORY[0x277D3C570];
  v8 = *(v3 + 104);
  v8(v5, v7, v2);
  sub_22FCC7BF4();
  swift_allocObject();
  v23 = v6;
  v9 = a1;
  sub_22FCC7BD4();
  sub_22FCC7774();
  v22 = sub_22FCC7764();
  if ([v22 count])
  {
    if (qword_28147FC48 != -1)
    {
      swift_once();
    }

    v10 = sub_22FCC8684();
    __swift_project_value_buffer(v10, qword_281487EC0);
    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F34();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22FA28000, v11, v12, "Social Groups exist; SocialGroupsFTE task not needed", v13, 2u);
      MEMORY[0x23190A000](v13, -1, -1);
    }

LABEL_14:
    v16 = 0;
    v15 = v23;
    goto LABEL_15;
  }

  v8(v5, v7, v2);
  swift_allocObject();
  v14 = v9;
  sub_22FCC7BD4();
  sub_22FCC7004();
  v15 = sub_22FCC6FF4();
  if ([v15 count] < 2)
  {
    if (qword_28147FC48 != -1)
    {
      swift_once();
    }

    v17 = sub_22FCC8684();
    __swift_project_value_buffer(v17, qword_281487EC0);
    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F34();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22FA28000, v18, v19, "Not enough people exist; SocialGroupsFTE task not needed", v20, 2u);
      MEMORY[0x23190A000](v20, -1, -1);
    }

    goto LABEL_14;
  }

  v16 = 1;
LABEL_15:

  return v16;
}

uint64_t sub_22FAE2044()
{
  v1 = *v0;
  v2 = 0x696C616974696E49;
  v3 = 0x676E696E6E7552;
  v4 = 0x676E697474756853;
  if (v1 != 3)
  {
    v4 = 0x776F442074756853;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E697472617453;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22FAE2100(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_22FCC9384();

    v7 = a1;
    v4 = 0x800000022FCE2F40;
    v5 = 0xD000000000000011;
  }

  else
  {
    sub_22FCC9384();

    v7 = a1;
    v5 = 0x20746F6E20736920;
    v4 = 0xEF676E696E6E7572;
  }

  MEMORY[0x231907FA0](v5, v4);
  return v7;
}

uint64_t sub_22FAE21E4(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_22FCC8614();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_22FCC85D4();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAE9DDC, 0, 0);
}

uint64_t sub_22FAE2318(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_22FCC8614();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_22FCC85D4();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAE244C, 0, 0);
}

uint64_t sub_22FAE244C()
{
  v47 = v0;
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  if (*(v1 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
  {
    sub_22FCC9384();

    v46[0] = 91;
    v46[1] = 0xE100000000000000;
    MEMORY[0x231907FA0](*(v1 + 16), *(v1 + 24));
    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE2ED0);
    v3 = *(v1 + v2);
    if (v3 <= 1)
    {
      if (*(v1 + v2))
      {
        v4 = 0xEB00000000705520;
        v5 = 1918989395;
        goto LABEL_19;
      }

      v4 = 0xEC000000676E697ALL;
      v27 = 0x696C616974696E49;
    }

    else if (v3 == 2)
    {
      v4 = 0xE700000000000000;
      v27 = 0x676E696E6E7552;
    }

    else
    {
      if (v3 == 3)
      {
        v4 = 0xED00006E776F4420;
        v5 = 1953851475;
LABEL_19:
        v27 = v5 | 0x676E697400000000;
        goto LABEL_20;
      }

      v4 = 0xE90000000000006ELL;
      v27 = 0x776F442074756853;
    }

LABEL_20:
    v30 = v0[2];
    MEMORY[0x231907FA0](v27, v4);

    MEMORY[0x231907FA0](0x72617473206E6920, 0xEE00202928707574);
    MEMORY[0x231907FA0](*(v30 + 32), *(v30 + 40));
    return sub_22FCC94D4();
  }

  Current = CFAbsoluteTimeGetCurrent();

  v7 = sub_22FCC8664();
  v8 = sub_22FCC8F34();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v46[0] = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_22FA2F600(*(v9 + 16), *(v9 + 24), v46);
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_22FA2F600(*(v9 + 32), *(v9 + 40), v46);
    _os_log_impl(&dword_22FA28000, v7, v8, "[%{public}s] Starting up %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  sub_22FCC85C4();
  v12 = sub_22FCC85F4();
  v13 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v12, v13, v15, "Startup", "", v14, 2u);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  v16 = v0[9];
  v17 = v0[10];
  v18 = v0[7];
  v19 = v0[6];

  (*(v18 + 16))(v16, v17, v19);
  sub_22FCC8644();
  swift_allocObject();
  sub_22FCC8634();
  v20 = *(v18 + 8);
  v20(v17, v19);
  *(v1 + v2) = 2;

  v21 = sub_22FCC85F4();
  sub_22FCC8624();
  v22 = sub_22FCC9094();

  if (sub_22FCC91A4())
  {
    v24 = v0[4];
    v23 = v0[5];
    v25 = v0[3];

    sub_22FCC8654();

    if ((*(v24 + 88))(v23, v25) == *MEMORY[0x277D85B00])
    {
      v26 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[4] + 8))(v0[5], v0[3]);
      format = "[%{public}s] %{public}s";
      v26 = 2;
    }

    v32 = v0[8];
    v45 = v0[6];
    v33 = v0[2];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46[0] = v35;
    *v34 = v26;
    *(v34 + 1) = v26;
    *(v34 + 2) = 2082;
    *(v34 + 4) = sub_22FA2F600(*(v33 + 16), *(v33 + 24), v46);
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_22FA2F600(*(v33 + 32), *(v33 + 40), v46);
    v36 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v21, v22, v36, "Startup", format, v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v35, -1, -1);
    MEMORY[0x23190A000](v34, -1, -1);

    v20(v32, v45);
  }

  else
  {
    v28 = v0[8];
    v29 = v0[6];

    v20(v28, v29);
  }

  v37 = CFAbsoluteTimeGetCurrent();

  sub_22FA4FD84();
  sub_22FA4FD84();
  v38 = sub_22FCC8664();
  v39 = sub_22FCC8F34();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = v0[2];
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v46[0] = v42;
    *v41 = 136446978;
    *(v41 + 4) = sub_22FA2F600(*(v40 + 16), *(v40 + 24), v46);
    *(v41 + 12) = 2082;
    *(v41 + 14) = sub_22FA2F600(*(v40 + 32), *(v40 + 40), v46);
    *(v41 + 22) = 1040;
    *(v41 + 24) = 4;
    *(v41 + 28) = 2048;
    *(v41 + 30) = v37 - Current;
    _os_log_impl(&dword_22FA28000, v38, v39, "[%{public}s] Startup completed %{public}s in %.*f seconds", v41, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v42, -1, -1);
    MEMORY[0x23190A000](v41, -1, -1);
  }

  v43 = v0[1];

  return v43();
}

uint64_t sub_22FAE2BD8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_22FCC8614();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_22FCC85D4();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAE2D0C, 0, 0);
}

uint64_t sub_22FAE2D0C()
{
  v48 = v0;
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  if (*(v1 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) != 2)
  {
    sub_22FCC9384();

    v47[0] = 91;
    v47[1] = 0xE100000000000000;
    MEMORY[0x231907FA0](*(v1 + 16), *(v1 + 24));
    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE2ED0);
    v24 = *(v1 + v2);
    if (v24 <= 1)
    {
      if (*(v1 + v2))
      {
        v25 = 0xEB00000000705520;
        v26 = 1918989395;
        goto LABEL_26;
      }

      v25 = 0xEC000000676E697ALL;
      v29 = 0x696C616974696E49;
    }

    else if (v24 == 2)
    {
      v25 = 0xE700000000000000;
      v29 = 0x676E696E6E7552;
    }

    else
    {
      if (v24 == 3)
      {
        v25 = 0xED00006E776F4420;
        v26 = 1953851475;
LABEL_26:
        v29 = v26 | 0x676E697400000000;
        goto LABEL_27;
      }

      v25 = 0xE90000000000006ELL;
      v29 = 0x776F442074756853;
    }

LABEL_27:
    MEMORY[0x231907FA0](v29, v25);

    MEMORY[0x231907FA0](0x74756873206E6920, 0xEE0029286E776F64);
    return sub_22FCC94D4();
  }

  Current = CFAbsoluteTimeGetCurrent();

  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F34();

  v44 = v2;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v47[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_22FA2F600(*(v6 + 16), *(v6 + 24), v47);
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_22FA2F600(*(v6 + 32), *(v6 + 40), v47);
    _os_log_impl(&dword_22FA28000, v4, v5, "[%{public}s] Shutting down %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v46 = v1;
  sub_22FCC85C4();
  v9 = sub_22FCC85F4();
  v10 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v9, v10, v12, "Shutdown", "", v11, 2u);
    MEMORY[0x23190A000](v11, -1, -1);
  }

  v13 = v0[9];
  v14 = v0[10];
  v15 = v0[7];
  v16 = v0[6];

  (*(v15 + 16))(v13, v14, v16);
  sub_22FCC8644();
  swift_allocObject();
  sub_22FCC8634();
  v17 = *(v15 + 8);
  v17(v14, v16);
  *(v46 + v44) = 4;

  v18 = sub_22FCC85F4();
  sub_22FCC8624();
  v19 = sub_22FCC9094();

  if (sub_22FCC91A4())
  {
    v21 = v0[4];
    v20 = v0[5];
    v22 = v0[3];

    sub_22FCC8654();

    if ((*(v21 + 88))(v20, v22) == *MEMORY[0x277D85B00])
    {
      v23 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[4] + 8))(v0[5], v0[3]);
      format = "[%{public}s] %{public}s";
      v23 = 2;
    }

    v30 = v0[8];
    v45 = v0[6];
    v31 = v0[2];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v47[0] = v33;
    *v32 = v23;
    *(v32 + 1) = v23;
    *(v32 + 2) = 2082;
    *(v32 + 4) = sub_22FA2F600(*(v31 + 16), *(v31 + 24), v47);
    *(v32 + 12) = 2082;
    *(v32 + 14) = sub_22FA2F600(*(v31 + 32), *(v31 + 40), v47);
    v34 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v18, v19, v34, "Shutdown", format, v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v33, -1, -1);
    MEMORY[0x23190A000](v32, -1, -1);

    v17(v30, v45);
  }

  else
  {
    v27 = v0[8];
    v28 = v0[6];

    v17(v27, v28);
  }

  v35 = CFAbsoluteTimeGetCurrent();

  sub_22FA4FD84();
  sub_22FA4FD84();
  v36 = sub_22FCC8664();
  v37 = sub_22FCC8F34();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = v0[2];
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v47[0] = v40;
    *v39 = 136446978;
    *(v39 + 4) = sub_22FA2F600(*(v38 + 16), *(v38 + 24), v47);
    *(v39 + 12) = 2082;
    *(v39 + 14) = sub_22FA2F600(*(v38 + 32), *(v38 + 40), v47);
    *(v39 + 22) = 1040;
    *(v39 + 24) = 4;
    *(v39 + 28) = 2048;
    *(v39 + 30) = v35 - Current;
    _os_log_impl(&dword_22FA28000, v36, v37, "[%{public}s] Shutdown completed %{public}s in %.*f seconds", v39, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v40, -1, -1);
    MEMORY[0x23190A000](v39, -1, -1);
  }

  v41 = v0[1];

  return v41();
}

uint64_t sub_22FAE3498()
{
  v1 = *(v0 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
  if (v1 <= 1)
  {
    if (*(v0 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
    {
      v2 = 0xEB00000000705520;
      v3 = 1918989395;
      goto LABEL_10;
    }

    v2 = 0xEC000000676E697ALL;
    v4 = 0x696C616974696E49;
  }

  else if (v1 == 2)
  {
    v2 = 0xE700000000000000;
    v4 = 0x676E696E6E7552;
  }

  else
  {
    if (v1 == 3)
    {
      v2 = 0xED00006E776F4420;
      v3 = 1953851475;
LABEL_10:
      v4 = v3 | 0x676E697400000000;
      goto LABEL_11;
    }

    v2 = 0xE90000000000006ELL;
    v4 = 0x776F442074756853;
  }

LABEL_11:
  MEMORY[0x231907FA0](v4, v2);

  return 0;
}

uint64_t sub_22FAE3590()
{

  v1 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_signposter;
  v4 = sub_22FCC8604();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StateHolder()
{
  result = qword_281481918;
  if (!qword_281481918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FAE36D0()
{
  result = sub_22FCC8684();
  if (v1 <= 0x3F)
  {
    result = sub_22FCC8604();
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

unint64_t sub_22FAE37C4()
{
  result = qword_27DAD8330;
  if (!qword_27DAD8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8330);
  }

  return result;
}

uint64_t sub_22FAE383C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22FCC8614();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22FCC85D4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAE3970, 0, 0);
}

uint64_t sub_22FAE3970()
{
  v24 = v0;
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 96) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  if (*(v1 + v2) != 2)
  {
    sub_22FCC9384();

    v23[0] = 91;
    v23[1] = 0xE100000000000000;
    MEMORY[0x231907FA0](*(v1 + 16), *(v1 + 24));
    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE2ED0);
    v18 = *(v1 + v2);
    if (v18 <= 1)
    {
      if (*(v1 + v2))
      {
        v19 = 0xEB00000000705520;
        v20 = 1918989395;
        goto LABEL_18;
      }

      v19 = 0xEC000000676E697ALL;
      v21 = 0x696C616974696E49;
    }

    else if (v18 == 2)
    {
      v19 = 0xE700000000000000;
      v21 = 0x676E696E6E7552;
    }

    else
    {
      if (v18 == 3)
      {
        v19 = 0xED00006E776F4420;
        v20 = 1953851475;
LABEL_18:
        v21 = v20 | 0x676E697400000000;
        goto LABEL_19;
      }

      v19 = 0xE90000000000006ELL;
      v21 = 0x776F442074756853;
    }

LABEL_19:
    MEMORY[0x231907FA0](v21, v19);

    MEMORY[0x231907FA0](0x74756873206E6920, 0xEE0029286E776F64);

    return sub_22FCC94D4();
  }

  *(v0 + 104) = CFAbsoluteTimeGetCurrent();
  *(v0 + 112) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger;

  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_22FA2F600(*(v5 + 16), *(v5 + 24), v23);
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_22FA2F600(*(v5 + 32), *(v5 + 40), v23);
    _os_log_impl(&dword_22FA28000, v3, v4, "[%{public}s] Shutting down %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v7, -1, -1);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  *(v0 + 120) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_signposter;
  sub_22FCC85C4();
  v8 = sub_22FCC85F4();
  v9 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v8, v9, v11, "Shutdown", "", v10, 2u);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = *(v0 + 24);

  (*(v15 + 16))(v12, v13, v14);
  sub_22FCC8644();
  swift_allocObject();
  *(v0 + 128) = sub_22FCC8634();
  v17 = *(v15 + 8);
  *(v0 + 136) = v17;
  *(v0 + 144) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v14);
  *(v1 + v2) = 3;

  return MEMORY[0x2822009F8](sub_22FAE3DC8, v16, 0);
}

uint64_t sub_22FAE3DC8()
{
  [*(*(v0 + 24) + 120) invalidate];
  sub_22FAE51E4();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_22FAE3EB0;

  return MEMORY[0x282200600]();
}

uint64_t sub_22FAE3EB0()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_22FAE3FC0, v1, 0);
}

uint64_t sub_22FAE3FDC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22FCC8614();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22FCC85D4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAE4110, 0, 0);
}

uint64_t sub_22FAE4110()
{
  v25 = v0;
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 96) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  if (*(v1 + v2) != 2)
  {
    sub_22FCC9384();

    v24[0] = 91;
    v24[1] = 0xE100000000000000;
    MEMORY[0x231907FA0](*(v1 + 16), *(v1 + 24));
    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE2ED0);
    v20 = *(v1 + v2);
    if (v20 <= 1)
    {
      if (*(v1 + v2))
      {
        v21 = 0xEB00000000705520;
        v22 = 1918989395;
        goto LABEL_18;
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
LABEL_18:
        v23 = v22 | 0x676E697400000000;
        goto LABEL_19;
      }

      v21 = 0xE90000000000006ELL;
      v23 = 0x776F442074756853;
    }

LABEL_19:
    MEMORY[0x231907FA0](v23, v21);

    MEMORY[0x231907FA0](0x74756873206E6920, 0xEE0029286E776F64);

    return sub_22FCC94D4();
  }

  *(v0 + 104) = CFAbsoluteTimeGetCurrent();
  *(v0 + 112) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger;

  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_22FA2F600(*(v5 + 16), *(v5 + 24), v24);
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_22FA2F600(*(v5 + 32), *(v5 + 40), v24);
    _os_log_impl(&dword_22FA28000, v3, v4, "[%{public}s] Shutting down %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v7, -1, -1);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  *(v0 + 120) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_signposter;
  sub_22FCC85C4();
  v8 = sub_22FCC85F4();
  v9 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v8, v9, v11, "Shutdown", "", v10, 2u);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);

  (*(v15 + 16))(v12, v13, v14);
  sub_22FCC8644();
  swift_allocObject();
  *(v0 + 128) = sub_22FCC8634();
  v16 = *(v15 + 8);
  *(v0 + 136) = v16;
  *(v0 + 144) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v13, v14);
  *(v1 + v2) = 3;
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_22FAE458C;
  v18 = *(v0 + 24);

  return sub_22FB3B5B8(v18);
}

uint64_t sub_22FAE458C()
{

  return MEMORY[0x2822009F8](sub_22FAE9DE0, 0, 0);
}

uint64_t sub_22FAE4688(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22FCC8614();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22FCC85D4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAE47BC, 0, 0);
}

uint64_t sub_22FAE47BC()
{
  v25 = v0;
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 96) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  if (*(v1 + v2) != 2)
  {
    sub_22FCC9384();

    v24[0] = 91;
    v24[1] = 0xE100000000000000;
    MEMORY[0x231907FA0](*(v1 + 16), *(v1 + 24));
    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE2ED0);
    v20 = *(v1 + v2);
    if (v20 <= 1)
    {
      if (*(v1 + v2))
      {
        v21 = 0xEB00000000705520;
        v22 = 1918989395;
        goto LABEL_18;
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
LABEL_18:
        v23 = v22 | 0x676E697400000000;
        goto LABEL_19;
      }

      v21 = 0xE90000000000006ELL;
      v23 = 0x776F442074756853;
    }

LABEL_19:
    MEMORY[0x231907FA0](v23, v21);

    MEMORY[0x231907FA0](0x74756873206E6920, 0xEE0029286E776F64);

    return sub_22FCC94D4();
  }

  *(v0 + 104) = CFAbsoluteTimeGetCurrent();
  *(v0 + 112) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger;

  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_22FA2F600(*(v5 + 16), *(v5 + 24), v24);
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_22FA2F600(*(v5 + 32), *(v5 + 40), v24);
    _os_log_impl(&dword_22FA28000, v3, v4, "[%{public}s] Shutting down %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v7, -1, -1);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  *(v0 + 120) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_signposter;
  sub_22FCC85C4();
  v8 = sub_22FCC85F4();
  v9 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v8, v9, v11, "Shutdown", "", v10, 2u);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);

  (*(v15 + 16))(v12, v13, v14);
  sub_22FCC8644();
  swift_allocObject();
  *(v0 + 128) = sub_22FCC8634();
  v16 = *(v15 + 8);
  *(v0 + 136) = v16;
  *(v0 + 144) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v13, v14);
  *(v1 + v2) = 3;
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_22FAE458C;
  v18 = *(v0 + 24);

  return sub_22FB7F4C0(v18);
}

uint64_t sub_22FAE4C38(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22FCC8614();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22FCC85D4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAE4D6C, 0, 0);
}

uint64_t sub_22FAE4D6C()
{
  v24 = v0;
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 96) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  if (*(v1 + v2) != 2)
  {
    sub_22FCC9384();

    v23[0] = 91;
    v23[1] = 0xE100000000000000;
    MEMORY[0x231907FA0](*(v1 + 16), *(v1 + 24));
    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE2ED0);
    v19 = *(v1 + v2);
    if (v19 <= 1)
    {
      if (*(v1 + v2))
      {
        v20 = 0xEB00000000705520;
        v21 = 1918989395;
        goto LABEL_18;
      }

      v20 = 0xEC000000676E697ALL;
      v22 = 0x696C616974696E49;
    }

    else if (v19 == 2)
    {
      v20 = 0xE700000000000000;
      v22 = 0x676E696E6E7552;
    }

    else
    {
      if (v19 == 3)
      {
        v20 = 0xED00006E776F4420;
        v21 = 1953851475;
LABEL_18:
        v22 = v21 | 0x676E697400000000;
        goto LABEL_19;
      }

      v20 = 0xE90000000000006ELL;
      v22 = 0x776F442074756853;
    }

LABEL_19:
    MEMORY[0x231907FA0](v22, v20);

    MEMORY[0x231907FA0](0x74756873206E6920, 0xEE0029286E776F64);

    return sub_22FCC94D4();
  }

  *(v0 + 104) = CFAbsoluteTimeGetCurrent();
  *(v0 + 112) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger;

  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_22FA2F600(*(v5 + 16), *(v5 + 24), v23);
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_22FA2F600(*(v5 + 32), *(v5 + 40), v23);
    _os_log_impl(&dword_22FA28000, v3, v4, "[%{public}s] Shutting down %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v7, -1, -1);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  *(v0 + 120) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_signposter;
  sub_22FCC85C4();
  v8 = sub_22FCC85F4();
  v9 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v8, v9, v11, "Shutdown", "", v10, 2u);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);

  (*(v15 + 16))(v12, v13, v14);
  sub_22FCC8644();
  swift_allocObject();
  *(v0 + 128) = sub_22FCC8634();
  v16 = *(v15 + 8);
  *(v0 + 136) = v16;
  *(v0 + 144) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v13, v14);
  *(v1 + v2) = 3;
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_22FAE458C;

  return sub_22FC0B3A0();
}

unint64_t sub_22FAE51E4()
{
  result = qword_281480858;
  if (!qword_281480858)
  {
    type metadata accessor for ServiceProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281480858);
  }

  return result;
}

uint64_t sub_22FAE523C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C21C;

  return sub_22FA91900(a1, a2, v2);
}

uint64_t sub_22FAE52E8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22FCC8614();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22FCC85D4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAE541C, 0, 0);
}

uint64_t sub_22FAE541C()
{
  v26 = v0;
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 96) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  if (*(v1 + v2))
  {
    sub_22FCC9384();

    v25[0] = 91;
    v25[1] = 0xE100000000000000;
    MEMORY[0x231907FA0](*(v1 + 16), *(v1 + 24));
    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE2ED0);
    v3 = *(v1 + v2);
    if (v3 <= 1)
    {
      if (*(v1 + v2))
      {
        v4 = 0xEB00000000705520;
        v5 = 1918989395;
        goto LABEL_18;
      }

      v4 = 0xEC000000676E697ALL;
      v23 = 0x696C616974696E49;
    }

    else if (v3 == 2)
    {
      v4 = 0xE700000000000000;
      v23 = 0x676E696E6E7552;
    }

    else
    {
      if (v3 == 3)
      {
        v4 = 0xED00006E776F4420;
        v5 = 1953851475;
LABEL_18:
        v23 = v5 | 0x676E697400000000;
        goto LABEL_19;
      }

      v4 = 0xE90000000000006ELL;
      v23 = 0x776F442074756853;
    }

LABEL_19:
    v24 = *(v0 + 16);
    MEMORY[0x231907FA0](v23, v4);

    MEMORY[0x231907FA0](0x72617473206E6920, 0xEE00202928707574);
    MEMORY[0x231907FA0](*(v24 + 32), *(v24 + 40));

    return sub_22FCC94D4();
  }

  *(v0 + 104) = CFAbsoluteTimeGetCurrent();
  *(v0 + 112) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger;

  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 16);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25[0] = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_22FA2F600(*(v8 + 16), *(v8 + 24), v25);
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_22FA2F600(*(v8 + 32), *(v8 + 40), v25);
    _os_log_impl(&dword_22FA28000, v6, v7, "[%{public}s] Starting up %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  *(v0 + 120) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_signposter;
  sub_22FCC85C4();
  v11 = sub_22FCC85F4();
  v12 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v11, v12, v14, "Startup", "", v13, 2u);
    MEMORY[0x23190A000](v13, -1, -1);
  }

  v15 = *(v0 + 80);
  v16 = *(v0 + 88);
  v17 = *(v0 + 56);
  v18 = *(v0 + 64);

  (*(v18 + 16))(v15, v16, v17);
  sub_22FCC8644();
  swift_allocObject();
  *(v0 + 128) = sub_22FCC8634();
  v19 = *(v18 + 8);
  *(v0 + 136) = v19;
  *(v0 + 144) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v16, v17);
  *(v1 + v2) = 1;
  v20 = swift_task_alloc();
  *(v0 + 152) = v20;
  *v20 = v0;
  v20[1] = sub_22FAE58A0;
  v21 = *(v0 + 24);

  return sub_22FC1625C(v21);
}

uint64_t sub_22FAE58A0()
{

  return MEMORY[0x2822009F8](sub_22FAE9DE4, 0, 0);
}

uint64_t sub_22FAE599C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22FCC8614();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22FCC85D4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAE5AD0, 0, 0);
}

uint64_t sub_22FAE5AD0()
{
  v25 = v0;
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 96) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  if (*(v1 + v2))
  {
    sub_22FCC9384();

    v24[0] = 91;
    v24[1] = 0xE100000000000000;
    MEMORY[0x231907FA0](*(v1 + 16), *(v1 + 24));
    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE2ED0);
    v3 = *(v1 + v2);
    if (v3 <= 1)
    {
      if (*(v1 + v2))
      {
        v4 = 0xEB00000000705520;
        v5 = 1918989395;
        goto LABEL_18;
      }

      v4 = 0xEC000000676E697ALL;
      v21 = 0x696C616974696E49;
    }

    else if (v3 == 2)
    {
      v4 = 0xE700000000000000;
      v21 = 0x676E696E6E7552;
    }

    else
    {
      if (v3 == 3)
      {
        v4 = 0xED00006E776F4420;
        v5 = 1953851475;
LABEL_18:
        v21 = v5 | 0x676E697400000000;
        goto LABEL_19;
      }

      v4 = 0xE90000000000006ELL;
      v21 = 0x776F442074756853;
    }

LABEL_19:
    v22 = *(v0 + 16);
    MEMORY[0x231907FA0](v21, v4);

    MEMORY[0x231907FA0](0x72617473206E6920, 0xEE00202928707574);
    MEMORY[0x231907FA0](*(v22 + 32), *(v22 + 40));

    return sub_22FCC94D4();
  }

  *(v0 + 104) = CFAbsoluteTimeGetCurrent();
  *(v0 + 112) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger;

  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 16);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24[0] = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_22FA2F600(*(v8 + 16), *(v8 + 24), v24);
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_22FA2F600(*(v8 + 32), *(v8 + 40), v24);
    _os_log_impl(&dword_22FA28000, v6, v7, "[%{public}s] Starting up %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  *(v0 + 120) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_signposter;
  sub_22FCC85C4();
  v11 = sub_22FCC85F4();
  v12 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v11, v12, v14, "Startup", "", v13, 2u);
    MEMORY[0x23190A000](v13, -1, -1);
  }

  v15 = *(v0 + 80);
  v16 = *(v0 + 88);
  v17 = *(v0 + 56);
  v18 = *(v0 + 64);
  v19 = *(v0 + 24);

  (*(v18 + 16))(v15, v16, v17);
  sub_22FCC8644();
  swift_allocObject();
  *(v0 + 128) = sub_22FCC8634();
  v20 = *(v18 + 8);
  *(v0 + 136) = v20;
  *(v0 + 144) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v16, v17);
  *(v1 + v2) = 1;

  return MEMORY[0x2822009F8](sub_22FAE5F30, v19, 0);
}

uint64_t sub_22FAE5F30()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 112);
  type metadata accessor for TaskScheduler.TimeoutTimer();
  swift_allocObject();

  v4 = sub_22FB30AA8(v3, v2);

  *(v1 + 144) = v4;

  swift_getObjectType();
  sub_22FCC9084();

  return MEMORY[0x2822009F8](sub_22FAE9DE4, 0, 0);
}

uint64_t sub_22FAE6004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22FCC8614();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_22FCC85D4();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAE613C, 0, 0);
}

uint64_t sub_22FAE613C()
{
  v31 = v0;
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 112) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  if (*(v1 + v2))
  {
    sub_22FCC9384();

    v30[0] = 91;
    v30[1] = 0xE100000000000000;
    MEMORY[0x231907FA0](*(v1 + 16), *(v1 + 24));
    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE2ED0);
    v3 = *(v1 + v2);
    if (v3 <= 1)
    {
      if (*(v1 + v2))
      {
        v4 = 0xEB00000000705520;
        v5 = 1918989395;
        goto LABEL_22;
      }

      v4 = 0xEC000000676E697ALL;
      v25 = 0x696C616974696E49;
    }

    else if (v3 == 2)
    {
      v4 = 0xE700000000000000;
      v25 = 0x676E696E6E7552;
    }

    else
    {
      if (v3 == 3)
      {
        v4 = 0xED00006E776F4420;
        v5 = 1953851475;
LABEL_22:
        v25 = v5 | 0x676E697400000000;
        goto LABEL_23;
      }

      v4 = 0xE90000000000006ELL;
      v25 = 0x776F442074756853;
    }

LABEL_23:
    v29 = *(v0 + 16);
    MEMORY[0x231907FA0](v25, v4);

    MEMORY[0x231907FA0](0x72617473206E6920, 0xEE00202928707574);
    MEMORY[0x231907FA0](*(v29 + 32), *(v29 + 40));

    return sub_22FCC94D4();
  }

  *(v0 + 120) = CFAbsoluteTimeGetCurrent();
  *(v0 + 128) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger;

  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 16);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30[0] = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_22FA2F600(*(v8 + 16), *(v8 + 24), v30);
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_22FA2F600(*(v8 + 32), *(v8 + 40), v30);
    _os_log_impl(&dword_22FA28000, v6, v7, "[%{public}s] Starting up %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  *(v0 + 136) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_signposter;
  sub_22FCC85C4();
  v11 = sub_22FCC85F4();
  v12 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v11, v12, v14, "Startup", "", v13, 2u);
    MEMORY[0x23190A000](v13, -1, -1);
  }

  v15 = *(v0 + 96);
  v16 = *(v0 + 104);
  v17 = *(v0 + 72);
  v18 = *(v0 + 80);
  v19 = *(v0 + 24);

  (*(v18 + 16))(v15, v16, v17);
  sub_22FCC8644();
  swift_allocObject();
  *(v0 + 144) = sub_22FCC8634();
  v20 = *(v18 + 8);
  *(v0 + 152) = v20;
  *(v0 + 160) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v16, v17);
  *(v1 + v2) = 1;
  if (*(v19 + 25) == 1)
  {
    v21 = swift_task_alloc();
    *(v0 + 168) = v21;
    *v21 = v0;
    v21[1] = sub_22FAE6674;
    v23 = *(v0 + 32);
    v22 = *(v0 + 40);

    return sub_22FAEB6C0(v23, v22);
  }

  else
  {
    v26 = swift_task_alloc();
    *(v0 + 176) = v26;
    *v26 = v0;
    v26[1] = sub_22FAE6770;
    v28 = *(v0 + 32);
    v27 = *(v0 + 40);

    return sub_22FAEB88C(v28, v27);
  }
}

uint64_t sub_22FAE6674()
{

  return MEMORY[0x2822009F8](sub_22FAE686C, 0, 0);
}

uint64_t sub_22FAE6770()
{

  return MEMORY[0x2822009F8](sub_22FAE686C, 0, 0);
}

uint64_t sub_22FAE686C()
{
  v28 = v0;
  *(*(v0 + 16) + *(v0 + 112)) = 2;

  v1 = sub_22FCC85F4();
  sub_22FCC8624();
  v2 = sub_22FCC9094();

  if (sub_22FCC91A4())
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 48);

    sub_22FCC8654();

    if ((*(v4 + 88))(v3, v5) == *MEMORY[0x277D85B00])
    {
      v6 = 0;
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
      v7 = "[%{public}s] %{public}s";
      v6 = 2;
    }

    v26 = *(v0 + 152);
    v11 = *(v0 + 88);
    v12 = *(v0 + 72);
    v13 = *(v0 + 16);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = v6;
    *(v14 + 1) = v6;
    *(v14 + 2) = 2082;
    *(v14 + 4) = sub_22FA2F600(*(v13 + 16), *(v13 + 24), &v27);
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_22FA2F600(*(v13 + 32), *(v13 + 40), &v27);
    v16 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v1, v2, v16, "Startup", v7, v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v15, -1, -1);
    MEMORY[0x23190A000](v14, -1, -1);

    v26(v11, v12);
  }

  else
  {
    v8 = *(v0 + 152);
    v9 = *(v0 + 88);
    v10 = *(v0 + 72);

    v8(v9, v10);
  }

  Current = CFAbsoluteTimeGetCurrent();

  sub_22FA4FD84();
  sub_22FA4FD84();
  v18 = sub_22FCC8664();
  v19 = sub_22FCC8F34();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 16);
    v21 = Current - *(v0 + 120);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v22 = 136446978;
    *(v22 + 4) = sub_22FA2F600(*(v20 + 16), *(v20 + 24), &v27);
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_22FA2F600(*(v20 + 32), *(v20 + 40), &v27);
    *(v22 + 22) = 1040;
    *(v22 + 24) = 4;
    *(v22 + 28) = 2048;
    *(v22 + 30) = v21;
    _os_log_impl(&dword_22FA28000, v18, v19, "[%{public}s] Startup completed %{public}s in %.*f seconds", v22, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v23, -1, -1);
    MEMORY[0x23190A000](v22, -1, -1);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_22FAE6C2C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22FCC8614();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22FCC85D4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAE6D60, 0, 0);
}

uint64_t sub_22FAE6D60()
{
  v25 = v0;
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 96) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  if (*(v1 + v2))
  {
    sub_22FCC9384();

    v24[0] = 91;
    v24[1] = 0xE100000000000000;
    MEMORY[0x231907FA0](*(v1 + 16), *(v1 + 24));
    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE2ED0);
    v3 = *(v1 + v2);
    if (v3 <= 1)
    {
      if (*(v1 + v2))
      {
        v4 = 0xEB00000000705520;
        v5 = 1918989395;
        goto LABEL_18;
      }

      v4 = 0xEC000000676E697ALL;
      v22 = 0x696C616974696E49;
    }

    else if (v3 == 2)
    {
      v4 = 0xE700000000000000;
      v22 = 0x676E696E6E7552;
    }

    else
    {
      if (v3 == 3)
      {
        v4 = 0xED00006E776F4420;
        v5 = 1953851475;
LABEL_18:
        v22 = v5 | 0x676E697400000000;
        goto LABEL_19;
      }

      v4 = 0xE90000000000006ELL;
      v22 = 0x776F442074756853;
    }

LABEL_19:
    v23 = *(v0 + 16);
    MEMORY[0x231907FA0](v22, v4);

    MEMORY[0x231907FA0](0x72617473206E6920, 0xEE00202928707574);
    MEMORY[0x231907FA0](*(v23 + 32), *(v23 + 40));

    return sub_22FCC94D4();
  }

  *(v0 + 104) = CFAbsoluteTimeGetCurrent();
  *(v0 + 112) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger;

  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 16);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24[0] = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_22FA2F600(*(v8 + 16), *(v8 + 24), v24);
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_22FA2F600(*(v8 + 32), *(v8 + 40), v24);
    _os_log_impl(&dword_22FA28000, v6, v7, "[%{public}s] Starting up %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  *(v0 + 120) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_signposter;
  sub_22FCC85C4();
  v11 = sub_22FCC85F4();
  v12 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v11, v12, v14, "Startup", "", v13, 2u);
    MEMORY[0x23190A000](v13, -1, -1);
  }

  v15 = *(v0 + 80);
  v16 = *(v0 + 88);
  v17 = *(v0 + 56);
  v18 = *(v0 + 64);

  (*(v18 + 16))(v15, v16, v17);
  sub_22FCC8644();
  swift_allocObject();
  *(v0 + 128) = sub_22FCC8634();
  v19 = *(v18 + 8);
  *(v0 + 136) = v19;
  *(v0 + 144) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v16, v17);
  *(v1 + v2) = 1;
  v20 = swift_task_alloc();
  *(v0 + 152) = v20;
  *v20 = v0;
  v20[1] = sub_22FAE71E0;

  return sub_22FC404D8();
}

uint64_t sub_22FAE71E0()
{

  return MEMORY[0x2822009F8](sub_22FAE72DC, 0, 0);
}

uint64_t sub_22FAE72DC()
{
  v28 = v0;
  *(*(v0 + 16) + *(v0 + 96)) = 2;

  v1 = sub_22FCC85F4();
  sub_22FCC8624();
  v2 = sub_22FCC9094();

  if (sub_22FCC91A4())
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);

    sub_22FCC8654();

    if ((*(v4 + 88))(v3, v5) == *MEMORY[0x277D85B00])
    {
      v6 = 0;
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
      v7 = "[%{public}s] %{public}s";
      v6 = 2;
    }

    v26 = *(v0 + 136);
    v11 = *(v0 + 72);
    v12 = *(v0 + 56);
    v13 = *(v0 + 16);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = v6;
    *(v14 + 1) = v6;
    *(v14 + 2) = 2082;
    *(v14 + 4) = sub_22FA2F600(*(v13 + 16), *(v13 + 24), &v27);
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_22FA2F600(*(v13 + 32), *(v13 + 40), &v27);
    v16 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v1, v2, v16, "Startup", v7, v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v15, -1, -1);
    MEMORY[0x23190A000](v14, -1, -1);

    v26(v11, v12);
  }

  else
  {
    v8 = *(v0 + 136);
    v9 = *(v0 + 72);
    v10 = *(v0 + 56);

    v8(v9, v10);
  }

  Current = CFAbsoluteTimeGetCurrent();

  sub_22FA4FD84();
  sub_22FA4FD84();
  v18 = sub_22FCC8664();
  v19 = sub_22FCC8F34();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 16);
    v21 = Current - *(v0 + 104);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v22 = 136446978;
    *(v22 + 4) = sub_22FA2F600(*(v20 + 16), *(v20 + 24), &v27);
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_22FA2F600(*(v20 + 32), *(v20 + 40), &v27);
    *(v22 + 22) = 1040;
    *(v22 + 24) = 4;
    *(v22 + 28) = 2048;
    *(v22 + 30) = v21;
    _os_log_impl(&dword_22FA28000, v18, v19, "[%{public}s] Startup completed %{public}s in %.*f seconds", v22, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v23, -1, -1);
    MEMORY[0x23190A000](v22, -1, -1);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_22FAE769C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22FCC8614();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22FCC85D4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAE77D0, 0, 0);
}

uint64_t sub_22FAE77D0()
{
  v24 = v0;
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 96) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  if (*(v1 + v2) != 2)
  {
    sub_22FCC9384();

    v23[0] = 91;
    v23[1] = 0xE100000000000000;
    MEMORY[0x231907FA0](*(v1 + 16), *(v1 + 24));
    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE2ED0);
    v18 = *(v1 + v2);
    if (v18 <= 1)
    {
      if (*(v1 + v2))
      {
        v19 = 0xEB00000000705520;
        v20 = 1918989395;
        goto LABEL_18;
      }

      v19 = 0xEC000000676E697ALL;
      v21 = 0x696C616974696E49;
    }

    else if (v18 == 2)
    {
      v19 = 0xE700000000000000;
      v21 = 0x676E696E6E7552;
    }

    else
    {
      if (v18 == 3)
      {
        v19 = 0xED00006E776F4420;
        v20 = 1953851475;
LABEL_18:
        v21 = v20 | 0x676E697400000000;
        goto LABEL_19;
      }

      v19 = 0xE90000000000006ELL;
      v21 = 0x776F442074756853;
    }

LABEL_19:
    MEMORY[0x231907FA0](v21, v19);

    MEMORY[0x231907FA0](0x74756873206E6920, 0xEE0029286E776F64);

    return sub_22FCC94D4();
  }

  *(v0 + 104) = CFAbsoluteTimeGetCurrent();
  *(v0 + 112) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger;

  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_22FA2F600(*(v5 + 16), *(v5 + 24), v23);
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_22FA2F600(*(v5 + 32), *(v5 + 40), v23);
    _os_log_impl(&dword_22FA28000, v3, v4, "[%{public}s] Shutting down %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v7, -1, -1);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  *(v0 + 120) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_signposter;
  sub_22FCC85C4();
  v8 = sub_22FCC85F4();
  v9 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v8, v9, v11, "Shutdown", "", v10, 2u);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = *(v0 + 24);

  (*(v15 + 16))(v12, v13, v14);
  sub_22FCC8644();
  swift_allocObject();
  *(v0 + 128) = sub_22FCC8634();
  v17 = *(v15 + 8);
  *(v0 + 136) = v17;
  *(v0 + 144) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v14);
  *(v1 + v2) = 3;

  return MEMORY[0x2822009F8](sub_22FAE7C28, v16, 0);
}

uint64_t sub_22FAE7C28()
{
  sub_22FB297D8();

  return MEMORY[0x2822009F8](sub_22FAE9DE0, 0, 0);
}

uint64_t sub_22FAE7C90(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22FCC8614();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22FCC85D4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAE7DC4, 0, 0);
}

uint64_t sub_22FAE7DC4()
{
  v25 = v0;
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 96) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  if (*(v1 + v2) != 2)
  {
    sub_22FCC9384();

    v24[0] = 91;
    v24[1] = 0xE100000000000000;
    MEMORY[0x231907FA0](*(v1 + 16), *(v1 + 24));
    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE2ED0);
    v20 = *(v1 + v2);
    if (v20 <= 1)
    {
      if (*(v1 + v2))
      {
        v21 = 0xEB00000000705520;
        v22 = 1918989395;
        goto LABEL_18;
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
LABEL_18:
        v23 = v22 | 0x676E697400000000;
        goto LABEL_19;
      }

      v21 = 0xE90000000000006ELL;
      v23 = 0x776F442074756853;
    }

LABEL_19:
    MEMORY[0x231907FA0](v23, v21);

    MEMORY[0x231907FA0](0x74756873206E6920, 0xEE0029286E776F64);

    return sub_22FCC94D4();
  }

  *(v0 + 104) = CFAbsoluteTimeGetCurrent();
  *(v0 + 112) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger;

  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_22FA2F600(*(v5 + 16), *(v5 + 24), v24);
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_22FA2F600(*(v5 + 32), *(v5 + 40), v24);
    _os_log_impl(&dword_22FA28000, v3, v4, "[%{public}s] Shutting down %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v7, -1, -1);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  *(v0 + 120) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_signposter;
  sub_22FCC85C4();
  v8 = sub_22FCC85F4();
  v9 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v8, v9, v11, "Shutdown", "", v10, 2u);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);

  (*(v15 + 16))(v12, v13, v14);
  sub_22FCC8644();
  swift_allocObject();
  *(v0 + 128) = sub_22FCC8634();
  v16 = *(v15 + 8);
  *(v0 + 136) = v16;
  *(v0 + 144) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v13, v14);
  *(v1 + v2) = 3;
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_22FAE458C;
  v18 = *(v0 + 24);

  return sub_22FB2CA40(v18);
}

uint64_t sub_22FAE8240(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22FCC8614();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_22FCC85D4();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAE8374, 0, 0);
}

uint64_t sub_22FAE8374()
{
  v24 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 120) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  if (*(v1 + v2) != 2)
  {
    sub_22FCC9384();

    v23[0] = 91;
    v23[1] = 0xE100000000000000;
    MEMORY[0x231907FA0](*(v1 + 16), *(v1 + 24));
    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE2ED0);
    v18 = *(v1 + v2);
    if (v18 <= 1)
    {
      if (*(v1 + v2))
      {
        v19 = 0xEB00000000705520;
        v20 = 1918989395;
        goto LABEL_18;
      }

      v19 = 0xEC000000676E697ALL;
      v21 = 0x696C616974696E49;
    }

    else if (v18 == 2)
    {
      v19 = 0xE700000000000000;
      v21 = 0x676E696E6E7552;
    }

    else
    {
      if (v18 == 3)
      {
        v19 = 0xED00006E776F4420;
        v20 = 1953851475;
LABEL_18:
        v21 = v20 | 0x676E697400000000;
        goto LABEL_19;
      }

      v19 = 0xE90000000000006ELL;
      v21 = 0x776F442074756853;
    }

LABEL_19:
    MEMORY[0x231907FA0](v21, v19);

    MEMORY[0x231907FA0](0x74756873206E6920, 0xEE0029286E776F64);

    return sub_22FCC94D4();
  }

  *(v0 + 128) = CFAbsoluteTimeGetCurrent();
  *(v0 + 136) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger;

  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_22FA2F600(*(v5 + 16), *(v5 + 24), v23);
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_22FA2F600(*(v5 + 32), *(v5 + 40), v23);
    _os_log_impl(&dword_22FA28000, v3, v4, "[%{public}s] Shutting down %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v7, -1, -1);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  *(v0 + 144) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_signposter;
  sub_22FCC85C4();
  v8 = sub_22FCC85F4();
  v9 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v8, v9, v11, "Shutdown", "", v10, 2u);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  v12 = *(v0 + 104);
  v13 = *(v0 + 112);
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);
  v16 = *(v0 + 48);

  (*(v15 + 16))(v12, v13, v14);
  sub_22FCC8644();
  swift_allocObject();
  *(v0 + 152) = sub_22FCC8634();
  v17 = *(v15 + 8);
  *(v0 + 160) = v17;
  *(v0 + 168) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v14);
  *(v1 + v2) = 3;

  return MEMORY[0x2822009F8](sub_22FAE87CC, v16, 0);
}

uint64_t sub_22FAE87CC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  *(v1 + 120) = MEMORY[0x277D84F98];

  return MEMORY[0x2822009F8](sub_22FAE8858, 0, 0);
}

uint64_t sub_22FAE8858()
{
  v28 = v0;
  *(*(v0 + 40) + *(v0 + 120)) = 4;

  v1 = sub_22FCC85F4();
  sub_22FCC8624();
  v2 = sub_22FCC9094();

  if (sub_22FCC91A4())
  {
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = *(v0 + 56);

    sub_22FCC8654();

    if ((*(v4 + 88))(v3, v5) == *MEMORY[0x277D85B00])
    {
      v6 = 0;
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
      v7 = "[%{public}s] %{public}s";
      v6 = 2;
    }

    v26 = *(v0 + 160);
    v11 = *(v0 + 96);
    v12 = *(v0 + 80);
    v13 = *(v0 + 40);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = v6;
    *(v14 + 1) = v6;
    *(v14 + 2) = 2082;
    *(v14 + 4) = sub_22FA2F600(*(v13 + 16), *(v13 + 24), &v27);
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_22FA2F600(*(v13 + 32), *(v13 + 40), &v27);
    v16 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v1, v2, v16, "Shutdown", v7, v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v15, -1, -1);
    MEMORY[0x23190A000](v14, -1, -1);

    v26(v11, v12);
  }

  else
  {
    v8 = *(v0 + 160);
    v9 = *(v0 + 96);
    v10 = *(v0 + 80);

    v8(v9, v10);
  }

  Current = CFAbsoluteTimeGetCurrent();

  sub_22FA4FD84();
  sub_22FA4FD84();
  v18 = sub_22FCC8664();
  v19 = sub_22FCC8F34();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 40);
    v21 = Current - *(v0 + 128);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v22 = 136446978;
    *(v22 + 4) = sub_22FA2F600(*(v20 + 16), *(v20 + 24), &v27);
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_22FA2F600(*(v20 + 32), *(v20 + 40), &v27);
    *(v22 + 22) = 1040;
    *(v22 + 24) = 4;
    *(v22 + 28) = 2048;
    *(v22 + 30) = v21;
    _os_log_impl(&dword_22FA28000, v18, v19, "[%{public}s] Shutdown completed %{public}s in %.*f seconds", v22, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v23, -1, -1);
    MEMORY[0x23190A000](v22, -1, -1);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_22FAE8C18(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22FCC8614();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22FCC85D4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAE8D4C, 0, 0);
}

uint64_t sub_22FAE8D4C()
{
  v24 = v0;
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 96) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  if (*(v1 + v2) != 2)
  {
    sub_22FCC9384();

    v23[0] = 91;
    v23[1] = 0xE100000000000000;
    MEMORY[0x231907FA0](*(v1 + 16), *(v1 + 24));
    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE2ED0);
    v19 = *(v1 + v2);
    if (v19 <= 1)
    {
      if (*(v1 + v2))
      {
        v20 = 0xEB00000000705520;
        v21 = 1918989395;
        goto LABEL_18;
      }

      v20 = 0xEC000000676E697ALL;
      v22 = 0x696C616974696E49;
    }

    else if (v19 == 2)
    {
      v20 = 0xE700000000000000;
      v22 = 0x676E696E6E7552;
    }

    else
    {
      if (v19 == 3)
      {
        v20 = 0xED00006E776F4420;
        v21 = 1953851475;
LABEL_18:
        v22 = v21 | 0x676E697400000000;
        goto LABEL_19;
      }

      v20 = 0xE90000000000006ELL;
      v22 = 0x776F442074756853;
    }

LABEL_19:
    MEMORY[0x231907FA0](v22, v20);

    MEMORY[0x231907FA0](0x74756873206E6920, 0xEE0029286E776F64);

    return sub_22FCC94D4();
  }

  *(v0 + 104) = CFAbsoluteTimeGetCurrent();
  *(v0 + 112) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger;

  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_22FA2F600(*(v5 + 16), *(v5 + 24), v23);
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_22FA2F600(*(v5 + 32), *(v5 + 40), v23);
    _os_log_impl(&dword_22FA28000, v3, v4, "[%{public}s] Shutting down %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v7, -1, -1);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  *(v0 + 120) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_signposter;
  sub_22FCC85C4();
  v8 = sub_22FCC85F4();
  v9 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v8, v9, v11, "Shutdown", "", v10, 2u);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);

  (*(v15 + 16))(v12, v13, v14);
  sub_22FCC8644();
  swift_allocObject();
  *(v0 + 128) = sub_22FCC8634();
  v16 = *(v15 + 8);
  *(v0 + 136) = v16;
  *(v0 + 144) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v13, v14);
  *(v1 + v2) = 3;
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_22FAE91C4;

  return sub_22FC41224();
}

uint64_t sub_22FAE91C4()
{

  return MEMORY[0x2822009F8](sub_22FAE92C0, 0, 0);
}

uint64_t sub_22FAE92C0()
{
  v28 = v0;
  *(*(v0 + 16) + *(v0 + 96)) = 4;

  v1 = sub_22FCC85F4();
  sub_22FCC8624();
  v2 = sub_22FCC9094();

  if (sub_22FCC91A4())
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);

    sub_22FCC8654();

    if ((*(v4 + 88))(v3, v5) == *MEMORY[0x277D85B00])
    {
      v6 = 0;
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
      v7 = "[%{public}s] %{public}s";
      v6 = 2;
    }

    v26 = *(v0 + 136);
    v11 = *(v0 + 72);
    v12 = *(v0 + 56);
    v13 = *(v0 + 16);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = v6;
    *(v14 + 1) = v6;
    *(v14 + 2) = 2082;
    *(v14 + 4) = sub_22FA2F600(*(v13 + 16), *(v13 + 24), &v27);
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_22FA2F600(*(v13 + 32), *(v13 + 40), &v27);
    v16 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v1, v2, v16, "Shutdown", v7, v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v15, -1, -1);
    MEMORY[0x23190A000](v14, -1, -1);

    v26(v11, v12);
  }

  else
  {
    v8 = *(v0 + 136);
    v9 = *(v0 + 72);
    v10 = *(v0 + 56);

    v8(v9, v10);
  }

  Current = CFAbsoluteTimeGetCurrent();

  sub_22FA4FD84();
  sub_22FA4FD84();
  v18 = sub_22FCC8664();
  v19 = sub_22FCC8F34();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 16);
    v21 = Current - *(v0 + 104);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v22 = 136446978;
    *(v22 + 4) = sub_22FA2F600(*(v20 + 16), *(v20 + 24), &v27);
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_22FA2F600(*(v20 + 32), *(v20 + 40), &v27);
    *(v22 + 22) = 1040;
    *(v22 + 24) = 4;
    *(v22 + 28) = 2048;
    *(v22 + 30) = v21;
    _os_log_impl(&dword_22FA28000, v18, v19, "[%{public}s] Shutdown completed %{public}s in %.*f seconds", v22, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v23, -1, -1);
    MEMORY[0x23190A000](v22, -1, -1);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_22FAE9680(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22FCC8614();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22FCC85D4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAE97B4, 0, 0);
}

uint64_t sub_22FAE97B4()
{
  v24 = v0;
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 96) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  if (*(v1 + v2) != 2)
  {
    sub_22FCC9384();

    v23[0] = 91;
    v23[1] = 0xE100000000000000;
    MEMORY[0x231907FA0](*(v1 + 16), *(v1 + 24));
    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE2ED0);
    v18 = *(v1 + v2);
    if (v18 <= 1)
    {
      if (*(v1 + v2))
      {
        v19 = 0xEB00000000705520;
        v20 = 1918989395;
        goto LABEL_18;
      }

      v19 = 0xEC000000676E697ALL;
      v21 = 0x696C616974696E49;
    }

    else if (v18 == 2)
    {
      v19 = 0xE700000000000000;
      v21 = 0x676E696E6E7552;
    }

    else
    {
      if (v18 == 3)
      {
        v19 = 0xED00006E776F4420;
        v20 = 1953851475;
LABEL_18:
        v21 = v20 | 0x676E697400000000;
        goto LABEL_19;
      }

      v19 = 0xE90000000000006ELL;
      v21 = 0x776F442074756853;
    }

LABEL_19:
    MEMORY[0x231907FA0](v21, v19);

    MEMORY[0x231907FA0](0x74756873206E6920, 0xEE0029286E776F64);

    return sub_22FCC94D4();
  }

  *(v0 + 104) = CFAbsoluteTimeGetCurrent();
  *(v0 + 112) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger;

  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_22FA2F600(*(v5 + 16), *(v5 + 24), v23);
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_22FA2F600(*(v5 + 32), *(v5 + 40), v23);
    _os_log_impl(&dword_22FA28000, v3, v4, "[%{public}s] Shutting down %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v7, -1, -1);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  *(v0 + 120) = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_signposter;
  sub_22FCC85C4();
  v8 = sub_22FCC85F4();
  v9 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v8, v9, v11, "Shutdown", "", v10, 2u);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);

  (*(v15 + 16))(v12, v13, v14);
  sub_22FCC8644();
  swift_allocObject();
  *(v0 + 128) = sub_22FCC8634();
  v16 = *(v15 + 8);
  *(v0 + 136) = v16;
  *(v0 + 144) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v13, v14);
  *(v1 + v2) = 3;
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_22FAE458C;
  v26 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600]();
}

uint64_t sub_22FAE9C68(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FAEBA58(a1, a2, v2);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22FAE9D34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22FAE9D7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22FAE9DE8()
{
  v0 = sub_22FCC8F84();
  MEMORY[0x28223BE20](v0);
  v27 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22FCC8F94();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22FCC8914();
  v23 = *(v4 - 8);
  v5 = v23;
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for PhotoLibraryNonIntensiveActivityTaskSource();
  v13 = sub_22FAEAFDC(&qword_281481CB0, v12, type metadata accessor for PhotoLibraryNonIntensiveActivityTaskSource);
  v14 = type metadata accessor for BackgroundSystemTask();
  v15 = swift_allocObject();
  v15[1] = 0u;
  v15[2] = 0u;
  v15[3] = 0u;
  *(v15 + 57) = 0u;
  v29[3] = v14;
  v29[4] = &off_2844A92C8;
  v29[0] = v15;
  sub_22FCC88E4();
  type metadata accessor for Activity();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_delegate + 8) = 0;
  swift_unknownObjectUnownedInit();
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_monitorTimer) = 0;
  v17 = v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralRequestTime;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralHasTimedOut) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_taskSchedulingTask) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_cancellationTask) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_runtimeError) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_isActive) = 0;
  *(v16 + 24) = 0xD000000000000036;
  *(v16 + 32) = 0x800000022FCE3000;
  *(v16 + 40) = v11;
  *(v16 + 48) = v13;
  *(v16 + 56) = 2;
  sub_22FA2D328(v29, v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask);
  sub_22FCC8674();
  v22 = sub_22FA5191C();
  v18 = v7;
  v19 = v24;
  (*(v5 + 16))(v18, v10, v24);
  (*(v2 + 104))(v25, *MEMORY[0x277D85268], v26);
  v28 = MEMORY[0x277D84F90];
  sub_22FAEAFDC(&qword_28147AEA0, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7360);
  sub_22FA519B0();
  sub_22FCC9264();
  v20 = sub_22FCC8FC4();
  (*(v23 + 8))(v10, v19);
  __swift_destroy_boxed_opaque_existential_0(v29);
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_queue) = v20;
  return v16;
}

uint64_t sub_22FAEA28C(uint64_t a1)
{
  v2[17] = a1;
  v3 = sub_22FCC67F4();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAEA34C, v1, 0);
}

uint64_t sub_22FAEA34C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v74 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77C8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22FCD2670;
  v6 = [objc_allocWithZone(PHAFeaturesUsageReportingTask) init];
  v7 = type metadata accessor for LegacyPhotoLibraryTask();
  v8 = swift_allocObject();

  sub_22FCC67E4();
  v9 = sub_22FCC67B4();
  v11 = v10;
  v76 = *(v2 + 8);
  v76(v1, v4);
  *(v8 + 72) = v9;
  *(v8 + 80) = v11;
  *(v8 + 88) = 1;
  *(v8 + 16) = v6;
  v75 = type metadata accessor for PhotoLibraryWorker();
  *(v8 + 48) = v75;
  v71 = sub_22FAEAFDC(&qword_281482350, 255, type metadata accessor for PhotoLibraryWorker);
  v72 = v7;
  *(v8 + 56) = v71;
  v12 = v3;
  *(v8 + 24) = v3;
  v13 = *(v3 + 112);
  *(v8 + 64) = v13;
  *(v5 + 56) = v7;
  v14 = sub_22FAEAFDC(&qword_281482438, 255, type metadata accessor for LegacyPhotoLibraryTask);
  v77 = v5;
  *(v5 + 64) = v14;
  v15 = v14;
  v73 = v14;
  *(v5 + 32) = v8;
  v16 = objc_allocWithZone(PHARemoveFeaturedContentTask);

  v66 = [v16 init];
  v17 = swift_allocObject();

  sub_22FCC67E4();
  v18 = sub_22FCC67B4();
  v20 = v19;
  v76(v1, v74);
  *(v17 + 72) = v18;
  *(v17 + 80) = v20;
  *(v17 + 88) = 1;
  *(v17 + 48) = v75;
  *(v17 + 56) = v71;
  *(v17 + 16) = v66;
  *(v17 + 24) = v12;
  *(v17 + 64) = v13;
  *(v5 + 96) = v72;
  *(v5 + 104) = v15;
  *(v5 + 72) = v17;
  v21 = objc_allocWithZone(PHAUserAnalyticsBiomeTask);

  v67 = [v21 initWithTaskType_];
  v22 = swift_allocObject();

  sub_22FCC67E4();
  v23 = sub_22FCC67B4();
  v25 = v24;
  v76(v1, v74);
  *(v22 + 72) = v23;
  *(v22 + 80) = v25;
  *(v22 + 88) = 1;
  *(v22 + 48) = v75;
  *(v22 + 56) = v71;
  *(v22 + 16) = v67;
  *(v22 + 24) = v12;
  *(v22 + 64) = v13;
  *(v5 + 136) = v72;
  *(v5 + 144) = v73;
  *(v5 + 112) = v22;
  v26 = objc_allocWithZone(PHAUserAnalyticsBiomeTask);

  v68 = [v26 initWithTaskType_];
  v27 = swift_allocObject();

  sub_22FCC67E4();
  v28 = sub_22FCC67B4();
  v30 = v29;
  v76(v1, v74);
  *(v27 + 72) = v28;
  *(v27 + 80) = v30;
  *(v27 + 88) = 1;
  *(v27 + 48) = v75;
  *(v27 + 56) = v71;
  *(v27 + 16) = v68;
  *(v27 + 24) = v12;
  *(v27 + 64) = v13;
  *(v5 + 176) = v72;
  *(v5 + 184) = v73;
  *(v5 + 152) = v27;
  v31 = objc_allocWithZone(PHAMediaSampleReportingTask);

  v69 = [v31 init];
  v32 = swift_allocObject();

  sub_22FCC67E4();
  v33 = sub_22FCC67B4();
  v35 = v34;
  v76(v1, v74);
  *(v32 + 72) = v33;
  *(v32 + 80) = v35;
  *(v32 + 88) = 1;
  *(v32 + 48) = v75;
  *(v32 + 56) = v71;
  *(v32 + 16) = v69;
  *(v32 + 24) = v12;
  *(v32 + 64) = v13;
  *(v5 + 216) = v72;
  *(v5 + 224) = v73;
  *(v5 + 192) = v32;
  v36 = objc_allocWithZone(PHACachingCPAnalyticsPropertiesTask);

  v37 = [v36 init];
  v38 = swift_allocObject();

  sub_22FCC67E4();
  v39 = sub_22FCC67B4();
  v41 = v40;
  v76(v1, v74);
  *(v38 + 72) = v39;
  *(v38 + 80) = v41;
  *(v38 + 88) = 1;
  *(v38 + 48) = v75;
  *(v38 + 56) = v71;
  *(v38 + 16) = v37;
  *(v38 + 24) = v12;
  *(v38 + 64) = v13;
  *(v5 + 256) = v72;
  *(v5 + 264) = v73;
  *(v5 + 232) = v38;
  v42 = *(v13 + 112);
  v43 = v13;

  v44 = v42;
  if ([v44 isSystemPhotoLibrary])
  {
    v45 = *(v70 + 136);
    v46 = type metadata accessor for WatchWallpaperGenerationTask();
    v47 = swift_allocObject();

    v48 = v44;
    v49 = sub_22FAEAE44(v45, v48, v47);
    v50 = sub_22FAC2350(1, 7, 1, v5);
    *(v70 + 40) = v46;
    v51 = sub_22FAEAFDC(&qword_28147D760, 255, type metadata accessor for WatchWallpaperGenerationTask);
    *(v70 + 16) = v49;
    *(v70 + 48) = v51;
    v50[2] = 7;
    sub_22FA2CF78((v70 + 16), (v50 + 34));
    v52 = type metadata accessor for StoryDiagnosticCleanUpTask();
    v53 = swift_allocObject();

    v54 = v48;
    v55 = sub_22FAEABEC(v45, v54, v53);
    v57 = v50[2];
    v56 = v50[3];
    v77 = v50;
    v58 = v70;
    if (v57 >= v56 >> 1)
    {
      v77 = sub_22FAC2350((v56 > 1), v57 + 1, 1, v50);
    }

    v59 = *(v70 + 136);
    *(v70 + 80) = v52;
    *(v70 + 88) = sub_22FAEAFDC(&qword_28147DD78, 255, type metadata accessor for StoryDiagnosticCleanUpTask);
    *(v70 + 56) = v55;
    v77[2] = v57 + 1;
    sub_22FA2CF78((v70 + 56), &v77[5 * v57 + 4]);
    v60 = type metadata accessor for MemoryCreationFeatureAvailabilityTask();
    swift_allocObject();

    v61 = sub_22FB33AE4(v59, v43);

    v63 = v77[2];
    v62 = v77[3];
    if (v63 >= v62 >> 1)
    {
      v77 = sub_22FAC2350((v62 > 1), v63 + 1, 1, v77);
    }

    *(v70 + 120) = v60;
    *(v70 + 128) = sub_22FAEAFDC(&qword_28147C3F0, 255, type metadata accessor for MemoryCreationFeatureAvailabilityTask);
    *(v70 + 96) = v61;
    v77[2] = v63 + 1;
    sub_22FA2CF78((v70 + 96), &v77[5 * v63 + 4]);
  }

  else
  {

    v58 = v70;
  }

  v64 = *(v58 + 8);

  return v64(v77);
}

uint64_t sub_22FAEABB0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotoLibraryNonIntensiveActivityTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

uint64_t sub_22FAEABEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FCC6794();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FCC67F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PhotoLibraryWorker();
  v21 = sub_22FAEAFDC(&qword_281482350, 255, type metadata accessor for PhotoLibraryWorker);
  *&v19 = a1;
  *(a3 + 56) = 0xD00000000000001ALL;
  *(a3 + 64) = 0x800000022FCE2FA0;
  sub_22FCC67E4();
  v14 = sub_22FCC67B4();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  *(a3 + 72) = v14;
  *(a3 + 80) = v16;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0x40F5180000000000;
  *(a3 + 104) = 2;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  sub_22FCC6784();
  sub_22FCC8E04();
  sub_22FCC66E4();
  (*(v7 + 8))(v9, v6);
  sub_22FA2CF78(&v19, a3 + 16);
  *(a3 + OBJC_IVAR____TtC13PhotoAnalysis26StoryDiagnosticCleanUpTask_photoLibrary) = a2;
  return a3;
}

uint64_t sub_22FAEAE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FCC67F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PhotoLibraryWorker();
  v17 = sub_22FAEAFDC(&qword_281482350, 255, type metadata accessor for PhotoLibraryWorker);
  *&v15 = a1;
  *(a3 + 56) = 0xD00000000000001CLL;
  *(a3 + 64) = 0x800000022FCE2FC0;
  sub_22FCC67E4();
  v10 = sub_22FCC67B4();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  *(a3 + 72) = v10;
  *(a3 + 80) = v12;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0x40F5180000000000;
  *(a3 + 104) = 2;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  *(a3 + 144) = 200;
  sub_22FA2CF78(&v15, a3 + 16);
  *(a3 + 136) = a2;
  return a3;
}

uint64_t sub_22FAEAFDC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_22FAEB024()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000021;
  }
}

unint64_t sub_22FAEB060()
{
  sub_22FCC9384();

  if (*(v0 + 24))
  {
    v1 = 0xD000000000000015;
  }

  else
  {
    v1 = 0xD000000000000021;
  }

  if (*(v0 + 24))
  {
    v2 = "ActivityManager (";
  }

  else
  {
    v2 = "Concurrent Activities";
  }

  MEMORY[0x231907FA0](v1, v2 | 0x8000000000000000);

  v3 = 0xE700000000000000;
  MEMORY[0x231907FA0](0x20444150202C29, 0xE700000000000000);
  if (qword_281481B20 != -1)
  {
    swift_once();
  }

  if (byte_28148807B)
  {
    v4 = 0x64656C62616E45;
  }

  else
  {
    v4 = 0x64656C6261736944;
  }

  if (!byte_28148807B)
  {
    v3 = 0xE800000000000000;
  }

  MEMORY[0x231907FA0](v4, v3);

  MEMORY[0x231907FA0](0x697669746341202CLL, 0xED00002073656974);
  if (qword_281481B10 != -1)
  {
    swift_once();
  }

  if (byte_28148807A)
  {
    v5 = 0x64656C62616E45;
  }

  else
  {
    v5 = 0x64656C6261736944;
  }

  if (byte_28148807A)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  MEMORY[0x231907FA0](v5, v6);

  return 0xD000000000000011;
}

uint64_t *sub_22FAEB238(int a1, uint64_t a2, int a3)
{
  v4 = v3;
  v31 = a3;
  v29 = a1;
  v27 = *v3;
  v28 = a2;
  v30 = sub_22FCC8684();
  v26 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = sub_22FCC8F84();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22FCC8F94();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22FCC8914();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_22FA5191C();
  v25[0] = "gyroPosterGallery.fastpass";
  v25[1] = v15;
  sub_22FCC8904();
  (*(v11 + 104))(v13, *MEMORY[0x277D85268], v10);
  v33 = MEMORY[0x277D84F90];
  sub_22FAEF6D4(&qword_28147AEA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7360);
  sub_22FAEF71C(&qword_28147AF20, &qword_27DAD7360);
  sub_22FCC9264();
  v3[4] = sub_22FCC8FC4();
  v16 = OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_logger;
  sub_22FCC8674();
  *(v3 + OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_activityIsRunningByName) = MEMORY[0x277D84F98];
  v3[2] = v28;
  *(v3 + 24) = v29 & 1;
  *(v3 + 25) = v31;
  v17 = sub_22FCC9904();
  v19 = v18;
  v20 = v26;
  v21 = *(v26 + 16);
  v22 = v30;
  v21(v8, v4 + v16, v30);
  type metadata accessor for StateHolder();
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) = 0;
  v23[2] = v17;
  v23[3] = v19;
  v23[4] = 0;
  v23[5] = 0xE000000000000000;
  v21(v23 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger, v8, v22);
  v21(v32, v8, v22);
  sub_22FCC85E4();
  (*(v20 + 8))(v8, v22);
  *(v4 + OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_stateHolder) = v23;
  return v4;
}

uint64_t sub_22FAEB6C0(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_22FAEB6E4, 0, 0);
}

uint64_t sub_22FAEB6E4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = *(v2 + 32);
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_22FAEEA54;
  *(v6 + 24) = v5;
  v0[6] = sub_22FAEEA60;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FBB8198;
  v0[5] = &block_descriptor_18;
  v7 = _Block_copy(v0 + 2);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_22FAEB88C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_22FAEB8B0, 0, 0);
}

uint64_t sub_22FAEB8B0()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = *(v2 + 32);
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_22FAEEF6C;
  *(v6 + 24) = v5;
  v0[6] = sub_22FAEF780;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FBB8198;
  v0[5] = &block_descriptor_43;
  v7 = _Block_copy(v0 + 2);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_22FAEBA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAEBB00, 0, 0);
}

void sub_22FAEBB00()
{
  v1 = *(*(v0 + 80) + 16);
  if (v1 >> 62)
  {
    v18 = *(*(v0 + 80) + 16);
    v19 = sub_22FCC92C4();
    v1 = v18;
    v2 = v19;
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_18:

    v20 = *(v0 + 8);

    v20();
    return;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v22 = **(v0 + 72);
    v23 = v1;
    v21 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v21)
      {
        v6 = MEMORY[0x231908810](v3);
      }

      else
      {
        v6 = *(v1 + 8 * v3 + 32);
      }

      v8 = *(v0 + 88);
      v7 = *(v0 + 96);
      v9 = sub_22FCC8D14();
      v10 = *(v9 - 8);
      (*(v10 + 56))(v7, 1, 1, v9);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      v11[4] = v6;
      sub_22FAEE8C4(v7, v8);
      LODWORD(v8) = (*(v10 + 48))(v8, 1, v9);

      v13 = *(v0 + 88);
      if (v8 == 1)
      {
        sub_22FAEE934(*(v0 + 88));
        if (!*v12)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_22FCC8D04();
        (*(v10 + 8))(v13, v9);
        if (!*v12)
        {
LABEL_14:
          v14 = 0;
          v16 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_22FCC8CC4();
      v16 = v15;
      swift_unknownObjectRelease();
LABEL_15:
      v17 = swift_allocObject();
      *(v17 + 16) = &unk_22FCD6088;
      *(v17 + 24) = v11;

      if (v16 | v14)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v14;
        *(v0 + 40) = v16;
      }

      else
      {
        v4 = 0;
      }

      ++v3;
      v5 = *(v0 + 96);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v22;
      swift_task_create();

      sub_22FAEE934(v5);
      v1 = v23;
      if (v2 == v3)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
}

uint64_t sub_22FAEBE40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA2C030;

  return sub_22FBB5614();
}

uint64_t sub_22FAEBED0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = result;
  if (*(*(result + OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) != 1)
  {
LABEL_25:
    result = sub_22FCC94D4();
    __break(1u);
    return result;
  }

  if (qword_281481B20 != -1)
  {
    result = swift_once();
  }

  v3 = byte_28148807B;
  v4 = *(v23 + 16);
  if (v4 >> 62)
  {
    result = sub_22FCC92C4();
    v5 = result;
    if (result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_6:
      if (v5 >= 1)
      {
        v6 = 0;
        v25 = v4 & 0xC000000000000001;
        v24 = v5;
        while (1)
        {
          if (v25)
          {
            v9 = MEMORY[0x231908810](v6, v4);
            if ((v3 & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v9 = *(v4 + 8 * v6 + 32);

            if ((v3 & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          if (qword_281481B10 != -1)
          {
            swift_once();
          }

          if (byte_28148807A & 1) == 0 && ((*(*v9 + 456))())
          {
            v10 = swift_allocObject();
            *(v10 + 16) = a2;
            *(v10 + 24) = a3;

            sub_22FAEEA70(v23, sub_22FAEEF78, v10, v9);

            if ((*(*v9 + 464))(v11))
            {
              (*(*v9 + 472))();
              v5 = v24;
            }

            goto LABEL_9;
          }

LABEL_20:
          v12 = v9[3];
          v13 = v9[4];

          v14 = sub_22FCC8664();
          v15 = sub_22FCC8F34();

          if (os_log_type_enabled(v14, v15))
          {
            v16 = v4;
            v17 = v3;
            v18 = swift_slowAlloc();
            v19 = swift_slowAlloc();
            v26 = v19;
            *v18 = 136446210;
            *(v18 + 4) = sub_22FA2F600(v12, v13, &v26);
            _os_log_impl(&dword_22FA28000, v14, v15, "Unregistering background task %{public}s", v18, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v19);
            MEMORY[0x23190A000](v19, -1, -1);
            v20 = v18;
            v3 = v17;
            v4 = v16;
            v5 = v24;
            MEMORY[0x23190A000](v20, -1, -1);
          }

          v7 = *(v9 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask + 24);
          v8 = *(v9 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask + 32);
          __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask), v7);
          (*(v8 + 24))(v12, v13, v7, v8);
LABEL_9:
          ++v6;

          if (v5 == v6)
          {
            return result;
          }
        }
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t sub_22FAEC2FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(*(result + OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) != 1)
  {
    goto LABEL_13;
  }

  v5 = result;
  v6 = *(result + 16);
  if (v6 >> 62)
  {
    result = sub_22FCC92C4();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
LABEL_13:
    result = sub_22FCC94D4();
    __break(1u);
    return result;
  }

  v8 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x231908810](v8, v6);
    }

    else
    {
      v9 = *(v6 + 8 * v8 + 32);
    }

    ++v8;
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;

    sub_22FAEEA70(v5, sub_22FAEF794, v10, v9);
  }

  while (v7 != v8);
  return result;
}

void *sub_22FAEC49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  v7 = *(v6 + 24);
  v17 = *(a1 + 40);
  v5 = v17;
  v18 = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  v7(v5, v6);
  v9 = type metadata accessor for ActivitySession();
  MEMORY[0x28223BE20](v9);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, boxed_opaque_existential_1, v5);

  v13 = sub_22FA62068(v11, a2, a3, v9, v5, v6);

  __swift_destroy_boxed_opaque_existential_0(v16);
  return v13;
}

uint64_t sub_22FAEC5F4(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 24))
  {
    return 1;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 56);
  swift_bridgeObjectRetain_n();
  v9 = sub_22FCC8664();
  v10 = sub_22FCC8F34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315394;
    v24 = v7;
    *(v11 + 4) = sub_22FA2F600(v7, v6, aBlock);
    *(v11 + 12) = 2080;
    v13 = 0x800000022FCE31E0;
    v14 = 0xD000000000000010;
    if (v8 != 1)
    {
      v14 = 0x696D6F4420776F4CLL;
      v13 = 0xED000065636E616ELL;
    }

    if (v8)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x6D6F442068676948;
    }

    if (v8)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0xEE0065636E616E69;
    }

    v17 = sub_22FA2F600(v15, v16, aBlock);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_22FA28000, v9, v10, "Activity %s with %s wants to run", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v12, -1, -1);
    MEMORY[0x23190A000](v11, -1, -1);

    v7 = v24;
  }

  else
  {
  }

  v18 = *(v2 + 32);
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  *(v19 + 24) = v7;
  *(v19 + 32) = v6;
  *(v19 + 40) = v5;
  *(v19 + 48) = v8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22FAEEFFC;
  *(v20 + 24) = v19;
  aBlock[4] = sub_22FAEF780;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FBB8198;
  aBlock[3] = &block_descriptor_65_0;
  v21 = _Block_copy(aBlock);

  dispatch_sync(v18, v21);
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    swift_beginAccess();
    v3 = *(v5 + 16);

    return v3;
  }

  __break(1u);
  return result;
}

void sub_22FAEC954(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(*(a1 + OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v10 = OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_activityIsRunningByName;
    swift_beginAccess();
    v11 = *(a1 + v10);
    if (*(v11 + 16) && (v12 = sub_22FA2DB54(a2, a3), (v13 & 1) != 0))
    {
      v14 = *(*(v11 + 56) + v12);
      swift_endAccess();
      if (v14)
      {

        v15 = sub_22FCC8664();
        v16 = sub_22FCC8F24();

        if (!os_log_type_enabled(v15, v16))
        {
LABEL_19:

          return;
        }

        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v29[0] = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_22FA2F600(a2, a3, v29);
        _os_log_impl(&dword_22FA28000, v15, v16, "Consistency error, activity %s called beginRunning() but is already running. Did it fail to call endRunning()", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x23190A000](v18, -1, -1);
        v19 = v17;
LABEL_18:
        MEMORY[0x23190A000](v19, -1, -1);
        goto LABEL_19;
      }
    }

    else
    {
      swift_endAccess();
    }

    v20 = sub_22FAECCC8(a5);
    swift_beginAccess();
    *(a4 + 16) = v20 & 1;
    if (v20)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *(a1 + v10);
      *(a1 + v10) = 0x8000000000000000;
      sub_22FB263D0(1, a2, a3, isUniquelyReferenced_nonNull_native);
      *(a1 + v10) = v28;
      swift_endAccess();
    }

    v15 = sub_22FCC8664();
    v22 = sub_22FCC8F34();

    if (!os_log_type_enabled(v15, v22))
    {
      goto LABEL_19;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_22FA2F600(a2, a3, &v28);
    *(v23 + 12) = 2080;
    swift_beginAccess();
    if (*(a4 + 16))
    {
      v25 = 0x6E7572206E6163;
    }

    else
    {
      v25 = 0x7220746F6E6E6163;
    }

    if (*(a4 + 16))
    {
      v26 = 0xE700000000000000;
    }

    else
    {
      v26 = 0xEA00000000006E75;
    }

    v27 = sub_22FA2F600(v25, v26, &v28);

    *(v23 + 14) = v27;
    _os_log_impl(&dword_22FA28000, v15, v22, "Activity %s %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v24, -1, -1);
    v19 = v23;
    goto LABEL_18;
  }
}

uint64_t sub_22FAECCC8(uint64_t result)
{
  v46 = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
LABEL_26:
    v22 = result;
    v3 = sub_22FCC92C4();
    result = v22;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v41 = result;
      v5 = OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_activityIsRunningByName;
      v43 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x231908810](v4, v2);
          v6 = result;
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v6 = *(v2 + 8 * v4 + 32);

          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }
        }

        v8 = v3;
        v10 = *(v6 + 24);
        v9 = *(v6 + 32);
        swift_beginAccess();
        v11 = *(v44 + v5);
        v12 = *(v11 + 16);

        if (!v12)
        {
          break;
        }

        v13 = sub_22FA2DB54(v10, v9);
        if ((v14 & 1) == 0)
        {
          break;
        }

        v15 = *(*(v11 + 56) + v13);
        swift_endAccess();
        if ((v15 & 1) == 0)
        {
          goto LABEL_5;
        }

        if (*(v6 + 56) <= v41)
        {

          v17 = sub_22FCC8664();
          v18 = sub_22FCC8EF4();

          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            v20 = swift_slowAlloc();
            aBlock[0] = v20;
            *v19 = 136315138;
            v21 = sub_22FA2F600(v10, v9, aBlock);

            *(v19 + 4) = v21;
            _os_log_impl(&dword_22FA28000, v17, v18, "Higher-or-equal dominance activity %s is already running, cannot run", v19, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v20);
            MEMORY[0x23190A000](v20, -1, -1);
            MEMORY[0x23190A000](v19, -1, -1);
          }

          else
          {
          }

          return 0;
        }

        MEMORY[0x231908070](v16);
        v3 = v8;
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22FCC8C64();
        }

        sub_22FCC8C84();

        v43 = v46;
LABEL_6:
        ++v4;
        if (v7 == v3)
        {
          goto LABEL_28;
        }
      }

      swift_endAccess();
LABEL_5:

      v3 = v8;
      goto LABEL_6;
    }
  }

  v43 = MEMORY[0x277D84F90];
LABEL_28:
  v23 = v43;
  if (v43 >> 62)
  {
    goto LABEL_42;
  }

  v24 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v24)
  {
    while (v24 >= 1)
    {
      v25 = 0;
      v26 = OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_logger;
      v42 = v23 & 0xC000000000000001;
      while (1)
      {
        if (v42)
        {
          v27 = MEMORY[0x231908810](v25);
        }

        else
        {
          v27 = *(v23 + 8 * v25 + 32);
        }

        v29 = *(v27 + 24);
        v28 = *(v27 + 32);

        v30 = sub_22FCC8664();
        v31 = sub_22FCC8EF4();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = v26;
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          aBlock[0] = v34;
          *v33 = 136315138;
          v35 = sub_22FA2F600(v29, v28, aBlock);

          *(v33 + 4) = v35;
          _os_log_impl(&dword_22FA28000, v30, v31, "Cancelling lower priority activity %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
          MEMORY[0x23190A000](v34, -1, -1);
          v36 = v33;
          v26 = v32;
          MEMORY[0x23190A000](v36, -1, -1);
        }

        else
        {
        }

        v37 = *(v27 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_queue);
        v38 = swift_allocObject();
        *(v38 + 16) = sub_22FAEF00C;
        *(v38 + 24) = v27;
        aBlock[4] = sub_22FAEF780;
        aBlock[5] = v38;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22FBB8198;
        aBlock[3] = &block_descriptor_72;
        v39 = _Block_copy(aBlock);

        dispatch_sync(v37, v39);

        _Block_release(v39);
        LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

        if (v37)
        {
          break;
        }

        ++v25;
        v23 = v43;
        if (v24 == v25)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_42:
      v40 = v23;
      result = sub_22FCC92C4();
      v23 = v40;
      v24 = result;
      if (!result)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_40:

    return 1;
  }

  return result;
}

uint64_t sub_22FAED2A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22FCC88D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22FCC8914();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 32);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_22FAEEFD4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FA2B268;
  aBlock[3] = &block_descriptor_52;
  v12 = _Block_copy(aBlock);

  sub_22FCC88F4();
  v16 = MEMORY[0x277D84F90];
  sub_22FAEF6D4(&qword_28147AFE8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8700);
  sub_22FAEF71C(&qword_28147AF38, &unk_27DAD8700);
  sub_22FCC9264();
  MEMORY[0x231908410](0, v10, v7, v12);
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

void sub_22FAED570(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_stateHolder);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  v4 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
  if (v4 == 3)
  {
    return;
  }

  v5 = v1;
  if (v4 != 2)
  {

    oslog = sub_22FCC8664();
    v14 = sub_22FCC8F24();

    if (!os_log_type_enabled(oslog, v14))
    {

      return;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29[0] = v16;
    *v15 = 136315138;
    v17 = *(v2 + v3);
    if (v17 <= 1)
    {
      if (*(v2 + v3))
      {
        v18 = 0xEB00000000705520;
        v19 = 1918989395;
        goto LABEL_24;
      }

      v18 = 0xEC000000676E697ALL;
      v25 = 0x696C616974696E49;
    }

    else if (v17 == 2)
    {
      v18 = 0xE700000000000000;
      v25 = 0x676E696E6E7552;
    }

    else
    {
      if (v17 == 3)
      {
        v18 = 0xED00006E776F4420;
        v19 = 1953851475;
LABEL_24:
        v25 = v19 | 0x676E697400000000;
        goto LABEL_25;
      }

      v18 = 0xE90000000000006ELL;
      v25 = 0x776F442074756853;
    }

LABEL_25:
    v26 = sub_22FA2F600(v25, v18, v29);

    *(v15 + 4) = v26;
    _os_log_impl(&dword_22FA28000, oslog, v14, "Consistency error, _endRunning called while activity manager is in %s state", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);

    return;
  }

  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_activityIsRunningByName;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (*(v9 + 16) && (v10 = sub_22FA2DB54(v7, v6), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + v10);
    swift_endAccess();
    if (v12)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *(v5 + v8);
      *(v5 + v8) = 0x8000000000000000;
      sub_22FB263D0(0, v7, v6, isUniquelyReferenced_nonNull_native);
      *(v5 + v8) = v28;
      swift_endAccess();
      return;
    }
  }

  else
  {
    swift_endAccess();
  }

  v20 = sub_22FCC8664();
  v21 = sub_22FCC8F24();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v29[0] = v23;
    *v22 = 136315138;

    v24 = sub_22FA2F600(v7, v6, v29);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_22FA28000, v20, v21, "Consistency error, activity %s called endRunning() but is not running. Did it fail to call beginRunning()", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x23190A000](v23, -1, -1);
    MEMORY[0x23190A000](v22, -1, -1);
  }
}

uint64_t sub_22FAED940()
{
  v3 = *(v1[46] + 16);
  v1[47] = v3;
  if (v3 >> 62)
  {
    v4 = sub_22FCC92C4();
    v1[48] = v4;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    v10 = v1[46];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FCD2670;
    *(inited + 32) = 0x6574617453;
    *(inited + 40) = 0xE500000000000000;
    v11 = *(*(v10 + OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
    if (v11 <= 1)
    {
      if (!*(*(v10 + OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
      {
        v12 = 0xEC000000676E697ALL;
        v14 = 0x696C616974696E49;
        goto LABEL_21;
      }

      v12 = 0xEB00000000705520;
      v13 = 1918989395;
    }

    else
    {
      if (v11 == 2)
      {
        v12 = 0xE700000000000000;
        v14 = 0x676E696E6E7552;
        goto LABEL_21;
      }

      if (v11 != 3)
      {
        v12 = 0xE90000000000006ELL;
        v14 = 0x776F442074756853;
        goto LABEL_21;
      }

      v12 = 0xED00006E776F4420;
      v13 = 1953851475;
    }

    v14 = v13 | 0x676E697400000000;
LABEL_21:
    v2 = 0xD000000000000015;
    v15 = v1[46];
    MEMORY[0x231907FA0](v14, v12);

    v16 = MEMORY[0x277D837D0];
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    *(inited + 72) = v16;
    *(inited + 80) = 0xD000000000000011;
    *(inited + 88) = 0x800000022FCE3200;
    if (*(v15 + 24))
    {
      v17 = 0xD000000000000015;
    }

    else
    {
      v17 = 0xD000000000000021;
    }

    if (*(v15 + 24))
    {
      v18 = "ActivityManager (";
    }

    else
    {
      v18 = "Concurrent Activities";
    }

    *(inited + 96) = v17;
    *(inited + 104) = v18 | 0x8000000000000000;
    *(inited + 120) = v16;
    *(inited + 128) = 0xD000000000000015;
    *(inited + 136) = 0x800000022FCE3220;
    if (qword_281481B20 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_37;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v1[48] = v4;
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = MEMORY[0x277D84F90];
    v1[49] = 0;
    v1[50] = v5;
    v6 = v1[47];
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x231908810](0);
    }

    else
    {
      v7 = *(v6 + 32);
    }

    v1[51] = v7;
    v25 = (*(*v7 + 608) + **(*v7 + 608));
    v8 = swift_task_alloc();
    v1[52] = v8;
    *v8 = v1;
    v8[1] = sub_22FAEDE4C;

    return v25();
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_28:
  v19 = MEMORY[0x277D839B0];
  *(inited + 144) = byte_28148807B;
  *(inited + 168) = v19;
  *(inited + 176) = v2 + 9;
  *(inited + 184) = 0x800000022FCE3240;
  if (qword_281481B10 != -1)
  {
    swift_once();
  }

  v20 = v1[47];
  *(inited + 192) = byte_28148807A;
  *(inited + 216) = v19;
  *(inited + 224) = v2 - 1;
  *(inited + 232) = 0x800000022FCE3260;
  if (v20 >> 62)
  {
    v21 = sub_22FCC92C4();
  }

  else
  {
    v21 = *((v1[47] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x277D83B88];
  *(inited + 240) = v21;
  *(inited + 264) = v22;
  *(inited + 272) = 0x6974697669746341;
  *(inited + 280) = 0xEA00000000007365;
  *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BD0);
  *(inited + 288) = MEMORY[0x277D84F90];
  v23 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750);
  swift_arrayDestroy();
  v24 = v1[1];

  return v24(v23);
}

uint64_t sub_22FAEDE4C(uint64_t a1)
{
  *(*v1 + 424) = a1;

  return MEMORY[0x2822009F8](sub_22FAEDF4C, 0, 0);
}

uint64_t sub_22FAEDF4C()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 400);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22FAC2528(0, v2[2] + 1, 1, *(v0 + 400));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_22FAC2528((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 424);
  v7 = *(v0 + 384);
  v6 = *(v0 + 392);

  *(v0 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0);
  *(v0 + 336) = v5;
  v2[2] = v4 + 1;
  sub_22FA4FE00((v0 + 336), &v2[4 * v4 + 4]);
  if (v6 + 1 == v7)
  {
    v8 = *(v0 + 368);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FCD2670;
    *(inited + 32) = 0x6574617453;
    *(inited + 40) = 0xE500000000000000;
    v10 = *(*(v8 + OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
    if (v10 <= 1)
    {
      if (*(*(v8 + OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
      {
        v11 = 0xEB00000000705520;
        v12 = 1918989395;
        goto LABEL_21;
      }

      v11 = 0xEC000000676E697ALL;
      v16 = 0x696C616974696E49;
    }

    else if (v10 == 2)
    {
      v11 = 0xE700000000000000;
      v16 = 0x676E696E6E7552;
    }

    else
    {
      if (v10 == 3)
      {
        v11 = 0xED00006E776F4420;
        v12 = 1953851475;
LABEL_21:
        v16 = v12 | 0x676E697400000000;
        goto LABEL_22;
      }

      v11 = 0xE90000000000006ELL;
      v16 = 0x776F442074756853;
    }

LABEL_22:
    v19 = *(v0 + 368);
    MEMORY[0x231907FA0](v16, v11);

    v20 = MEMORY[0x277D837D0];
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    *(inited + 72) = v20;
    *(inited + 80) = 0xD000000000000011;
    *(inited + 88) = 0x800000022FCE3200;
    if (*(v19 + 24))
    {
      v21 = 0xD000000000000015;
    }

    else
    {
      v21 = 0xD000000000000021;
    }

    if (*(v19 + 24))
    {
      v22 = "ActivityManager (";
    }

    else
    {
      v22 = "Concurrent Activities";
    }

    *(inited + 96) = v21;
    *(inited + 104) = v22 | 0x8000000000000000;
    *(inited + 120) = v20;
    *(inited + 128) = 0xD000000000000015;
    *(inited + 136) = 0x800000022FCE3220;
    if (qword_281481B20 != -1)
    {
      swift_once();
    }

    v23 = MEMORY[0x277D839B0];
    *(inited + 144) = byte_28148807B;
    *(inited + 168) = v23;
    *(inited + 176) = 0xD00000000000001ELL;
    *(inited + 184) = 0x800000022FCE3240;
    if (qword_281481B10 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 376);
    *(inited + 192) = byte_28148807A;
    *(inited + 216) = v23;
    *(inited + 224) = 0xD000000000000014;
    *(inited + 232) = 0x800000022FCE3260;
    if (v24 >> 62)
    {
      v25 = sub_22FCC92C4();
    }

    else
    {
      v25 = *((*(v0 + 376) & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = MEMORY[0x277D83B88];
    *(inited + 240) = v25;
    *(inited + 264) = v26;
    *(inited + 272) = 0x6974697669746341;
    *(inited + 280) = 0xEA00000000007365;
    *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BD0);
    *(inited + 288) = v2;
    v27 = sub_22FA4DAB0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750);
    swift_arrayDestroy();
    v28 = *(v0 + 8);

    return v28(v27);
  }

  v13 = *(v0 + 392) + 1;
  *(v0 + 392) = v13;
  *(v0 + 400) = v2;
  v14 = *(v0 + 376);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x231908810]();
  }

  else
  {
    v15 = *(v14 + 8 * v13 + 32);
  }

  *(v0 + 408) = v15;
  v29 = (*(*v15 + 608) + **(*v15 + 608));
  v17 = swift_task_alloc();
  *(v0 + 416) = v17;
  *v17 = v0;
  v17[1] = sub_22FAEDE4C;

  return v29();
}

uint64_t sub_22FAEE4B4()
{

  v1 = OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ActivityManager()
{
  result = qword_281480E00;
  if (!qword_281480E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FAEE5D4()
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

unint64_t sub_22FAEE6B0()
{
  result = qword_27DAD8338;
  if (!qword_27DAD8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8338);
  }

  return result;
}

uint64_t sub_22FAEE704()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA4C64C;

  return sub_22FAED920();
}

uint64_t sub_22FAEE7B8(uint64_t a1)
{
  result = sub_22FAEF6D4(&unk_27DAD8340, type metadata accessor for ActivityManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FAEE810()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA2C030;

  return sub_22FAEBE40();
}

uint64_t sub_22FAEE8C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FAEE934(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FAEE99C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA2C030;

  return sub_22FA2B538(a1, v4);
}

uint64_t sub_22FAEEA70(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v41 = a3;
  v38 = a1;
  v5 = sub_22FCC8684();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v39 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = *(a4 + 32);
  v43 = *(a4 + 24);
  v12 = a4;
  v37 = *(v6 + 16);
  v37(&v31 - v9, a4 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_logger, v5);

  v13 = sub_22FCC8664();
  v14 = sub_22FCC8F34();
  v42 = v11;

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v44[0] = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22FA2F600(v43, v42, v44);
    _os_log_impl(&dword_22FA28000, v13, v14, "Registering background task %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  v17 = *(v12 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask + 32);
  v36 = *(v12 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask + 24);
  v33 = v17;
  v35 = __swift_project_boxed_opaque_existential_1((v12 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask), v36);
  v44[3] = type metadata accessor for Activity();
  v44[4] = &off_2844AE470;
  v44[0] = v12;
  v34 = *(v12 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_queue);
  v18 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  *(v31 + 24) = &off_2844A9A40;
  swift_unknownObjectUnownedInit();
  v19 = v39;
  v37(v39, v10, v5);
  v20 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v21 = (v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = v10;
  v32 = v5;
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  (*(v6 + 32))(v23 + v20, v19, v5);
  v24 = (v23 + v21);
  v25 = v42;
  *v24 = v43;
  v24[1] = v25;
  *(v23 + v22) = v31;
  v26 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = v41;
  *v26 = v40;
  v26[1] = v27;
  v28 = v33;
  v29 = *(v33 + 8);

  v29(v43, v25, v44, v34, sub_22FAEEE64, v23, v36, v28);

  (*(v6 + 8))(v38, v32);

  return __swift_destroy_boxed_opaque_existential_0(v44);
}

void sub_22FAEEE64(uint64_t a1)
{
  v3 = *(sub_22FCC8684() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + v5);
  v9 = *(v1 + v6);
  v10 = *v8;
  v11 = v8[1];
  v12 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  sub_22FBB9648(a1, v7, v1 + v4, v10, v11, v9, v13, v14);
}

uint64_t objectdestroy_17Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_23Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t *sub_22FAEF014(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22FCD5EF0;
  *(v1 + 32) = sub_22FB0FFF4();
  *(v1 + 40) = sub_22FB12448();
  *(v1 + 48) = sub_22FA4FE04();
  *(v1 + 56) = sub_22FAA4F58();
  *(v1 + 64) = sub_22FB59AA4();
  *(v1 + 72) = sub_22FAAF020();
  *(v1 + 80) = sub_22FAE9DE8();
  *(v1 + 88) = sub_22FBD8A7C();
  *(v1 + 96) = sub_22FC3C3C0();
  v2 = type metadata accessor for SocialGroupsFastPassActivityTaskSource();
  v3 = sub_22FAEF6D4(qword_28147C2E0, type metadata accessor for SocialGroupsFastPassActivityTaskSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7688);
  v4 = sub_22FCC77B4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22FCD1800;
  v8 = *(v5 + 104);
  v8(v7 + v6, *MEMORY[0x277D3C258], v4);
  type metadata accessor for FastPassActivity();
  swift_allocObject();
  *(v1 + 104) = sub_22FADBF34(0xD000000000000015, 0x800000022FCE09B0, v2, v3, 0, v7, &unk_2844A5930);
  v9 = type metadata accessor for GyroPosterFastPassActivityTaskSource();
  v10 = sub_22FAEF6D4(qword_28147C6A0, type metadata accessor for GyroPosterFastPassActivityTaskSource);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22FCD1800;
  v8(v11 + v6, *MEMORY[0x277D3C270], v4);
  type metadata accessor for GyroPosterFastPassActivity();
  swift_allocObject();
  *(v1 + 112) = sub_22FADBF34(0xD00000000000001DLL, 0x800000022FCE3280, v9, v10, 0, v11, &unk_2844A5A10);
  v12 = type metadata accessor for MessagesFallbackBackdropFastPassActivityTaskSource();
  v13 = sub_22FAEF6D4(&qword_28147B770, type metadata accessor for MessagesFallbackBackdropFastPassActivityTaskSource);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22FCD1800;
  v8(v14 + v6, *MEMORY[0x277D3C280], v4);
  type metadata accessor for MessagesFallbackBackdropFastPassActivity();
  swift_allocObject();
  *(v1 + 120) = sub_22FADBF34(0xD000000000000021, 0x800000022FCE32A0, v12, v13, 0, v14, &unk_2844A59B0);
  v15 = type metadata accessor for Spatial3DFeaturedPhotosFastPassActivityTaskSource();
  v16 = sub_22FAEF6D4(qword_28147B830, type metadata accessor for Spatial3DFeaturedPhotosFastPassActivityTaskSource);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22FCD1800;
  v8(v17 + v6, *MEMORY[0x277D3C250], v4);
  type metadata accessor for Spatial3DFeaturedPhotosFastPassActivity();
  swift_allocObject();
  *(v1 + 128) = sub_22FADBF34(0xD000000000000020, 0x800000022FCE32D0, v15, v16, 0, v17, &unk_2844A59E0);
  v18 = type metadata accessor for GyroPosterGalleryFastPassActivityTaskSource();
  v19 = sub_22FAEF6D4(&unk_28147B9B0, type metadata accessor for GyroPosterGalleryFastPassActivityTaskSource);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22FCD1800;
  v8(v20 + v6, *MEMORY[0x277D3C260], v4);
  type metadata accessor for GyroPosterGalleryFastPassActivity();
  swift_allocObject();
  *(v1 + 136) = sub_22FADBF34(0xD00000000000001ALL, 0x800000022FCE3300, v18, v19, 0, v20, &unk_2844A5A40);
  if (PFOSVariantHasInternalDiagnostics())
  {
    sub_22FBBC9D8();
    MEMORY[0x231908070]();
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22FCC8C64();
    }

    sub_22FCC8C84();
  }

  sub_22FB616A8();
  MEMORY[0x231908070]();
  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22FCC8C64();
  }

  sub_22FCC8C84();
  type metadata accessor for ActivityManager();
  swift_allocObject();
  return sub_22FAEB238(a1 & 1, v1, 0);
}

uint64_t sub_22FAEF6D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FAEF71C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FAEF798(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return (sub_22FAEF848)(a1);
}

uint64_t sub_22FAEF848(uint64_t a1)
{
  v2[13] = v1;
  v2[10] = v1;
  v2[11] = MEMORY[0x277D84F90];
  v2[12] = a1;
  v4 = sub_22FB0FE94(qword_28147CE20, type metadata accessor for FeaturedContentActivityTaskSource);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for FeaturedContentActivityTaskSource();
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v2[14] = v7;
  *v7 = v2;
  v7[1] = sub_22FAEF9C8;

  return v9(a1, v6, v4);
}

uint64_t sub_22FAEF9C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_22FAA318C;
  }

  else
  {
    v4 = sub_22FAEFADC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAEFADC()
{
  v1 = v0[15];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      v3 = v0[12] + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskProductivityReporter;
      swift_beginAccess();
LABEL_4:
      v0[17] = v3;
      v0[18] = v2;
      v4 = v0[15];
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x231908810](0);
        goto LABEL_7;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_7:
        v0[19] = v5;
        v0[20] = 1;
        v6 = v0[12];

        return MEMORY[0x2822009F8](sub_22FAEFCC0, v6, 0);
      }

      __break(1u);
    }

LABEL_17:

    sub_22FA61CB0();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }

  if (sub_22FCC92C4() <= 0)
  {
    goto LABEL_17;
  }

  v7 = v0[12];
  v2 = sub_22FCC92C4();
  v3 = v7 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskProductivityReporter;
  swift_beginAccess();
  if (v2)
  {
    goto LABEL_4;
  }

  v8 = v0[11];
  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_22FAEFCC0()
{
  sub_22FA2E6E4(v0[17], (v0 + 2));
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_22FAEFD68;
  v2 = v0[19];

  return sub_22FA502A8(v2, (v0 + 2));
}

uint64_t sub_22FAEFD68(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {

    sub_22FA2B420(v4 + 16, &unk_27DAD83A0);

    v5 = sub_22FB0FFD0;
  }

  else
  {
    *(v4 + 184) = a1;
    sub_22FA2B420(v4 + 16, &unk_27DAD83A0);

    v5 = sub_22FAEFEE4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FAEFEE4()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = sub_22FA68214(v0[23]);
  v5 = v0[15];
  if (v1 != v2)
  {
    v9 = v0[20];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x231908810](v0[20]);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    v0[19] = v3;
    v0[20] = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v5 = v0[12];
      v3 = sub_22FAEFCC0;
      v4 = 0;

      return MEMORY[0x2822009F8](v3, v5, v4);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v5, v4);
  }

  v6 = v0[11];
  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_22FAEFFF8(uint64_t a1)
{
  v2[13] = v1;
  v2[10] = v1;
  v2[11] = MEMORY[0x277D84F90];
  v2[12] = a1;
  v4 = sub_22FB0FE94(&qword_281482500, type metadata accessor for BackgroundAnalysisActivityTaskSource);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for BackgroundAnalysisActivityTaskSource();
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v2[14] = v7;
  *v7 = v2;
  v7[1] = sub_22FAF0178;

  return v9(a1, v6, v4);
}

uint64_t sub_22FAF0178(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_22FA9C9B0;
  }

  else
  {
    v4 = sub_22FAF028C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF028C()
{
  v1 = v0[15];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      v3 = v0[12] + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskProductivityReporter;
      swift_beginAccess();
LABEL_4:
      v0[17] = v3;
      v0[18] = v2;
      v4 = v0[15];
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x231908810](0);
        goto LABEL_7;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_7:
        v0[19] = v5;
        v0[20] = 1;
        v6 = v0[12];

        return MEMORY[0x2822009F8](sub_22FAF0470, v6, 0);
      }

      __break(1u);
    }

LABEL_17:

    sub_22FA61CB0();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }

  if (sub_22FCC92C4() <= 0)
  {
    goto LABEL_17;
  }

  v7 = v0[12];
  v2 = sub_22FCC92C4();
  v3 = v7 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskProductivityReporter;
  swift_beginAccess();
  if (v2)
  {
    goto LABEL_4;
  }

  v8 = v0[11];
  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_22FAF0470()
{
  sub_22FA2E6E4(v0[17], (v0 + 2));
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_22FAF0518;
  v2 = v0[19];

  return sub_22FB10498(v2, (v0 + 2));
}

uint64_t sub_22FAF0518(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {

    sub_22FA2B420(v4 + 16, &unk_27DAD83A0);

    v5 = sub_22FAF07A8;
  }

  else
  {
    *(v4 + 184) = a1;
    sub_22FA2B420(v4 + 16, &unk_27DAD83A0);

    v5 = sub_22FAF0694;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FAF0694()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = sub_22FA68214(v0[23]);
  v5 = v0[15];
  if (v1 != v2)
  {
    v9 = v0[20];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x231908810](v0[20]);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    v0[19] = v3;
    v0[20] = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v5 = v0[12];
      v3 = sub_22FAF0470;
      v4 = 0;

      return MEMORY[0x2822009F8](v3, v5, v4);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v5, v4);
  }

  v6 = v0[11];
  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_22FAF07C0(uint64_t a1)
{
  v2[13] = v1;
  v2[10] = v1;
  v2[11] = MEMORY[0x277D84F90];
  v2[12] = a1;
  v4 = sub_22FB0FE94(qword_28147D9D8, type metadata accessor for WallpaperActivityTaskSource);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for WallpaperActivityTaskSource();
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v2[14] = v7;
  *v7 = v2;
  v7[1] = sub_22FAF0940;

  return v9(a1, v6, v4);
}

uint64_t sub_22FAF0940(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_22FAA318C;
  }

  else
  {
    v4 = sub_22FAF0A54;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF0A54()
{
  v1 = v0[15];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      v3 = v0[12] + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskProductivityReporter;
      swift_beginAccess();
LABEL_4:
      v0[17] = v3;
      v0[18] = v2;
      v4 = v0[15];
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x231908810](0);
        goto LABEL_7;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_7:
        v0[19] = v5;
        v0[20] = 1;
        v6 = v0[12];

        return MEMORY[0x2822009F8](sub_22FAF0C38, v6, 0);
      }

      __break(1u);
    }

LABEL_17:

    sub_22FA61CB0();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }

  if (sub_22FCC92C4() <= 0)
  {
    goto LABEL_17;
  }

  v7 = v0[12];
  v2 = sub_22FCC92C4();
  v3 = v7 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskProductivityReporter;
  swift_beginAccess();
  if (v2)
  {
    goto LABEL_4;
  }

  v8 = v0[11];
  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_22FAF0C38()
{
  sub_22FA2E6E4(v0[17], (v0 + 2));
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_22FAF0CE0;
  v2 = v0[19];

  return sub_22FB128E4(v2, (v0 + 2));
}

uint64_t sub_22FAF0CE0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {

    sub_22FA2B420(v4 + 16, &unk_27DAD83A0);

    v5 = sub_22FB0FFD0;
  }

  else
  {
    *(v4 + 184) = a1;
    sub_22FA2B420(v4 + 16, &unk_27DAD83A0);

    v5 = sub_22FAF0E5C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FAF0E5C()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = sub_22FA68214(v0[23]);
  v5 = v0[15];
  if (v1 != v2)
  {
    v9 = v0[20];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x231908810](v0[20]);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    v0[19] = v3;
    v0[20] = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v5 = v0[12];
      v3 = sub_22FAF0C38;
      v4 = 0;

      return MEMORY[0x2822009F8](v3, v5, v4);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v5, v4);
  }

  v6 = v0[11];
  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_22FAF0F70(uint64_t a1)
{
  v2[13] = v1;
  v2[10] = v1;
  v2[11] = MEMORY[0x277D84F90];
  v2[12] = a1;
  v4 = sub_22FB0FE94(&qword_28147CFA0, type metadata accessor for SearchDonationActivityTaskSource);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for SearchDonationActivityTaskSource();
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v2[14] = v7;
  *v7 = v2;
  v7[1] = sub_22FAF10F0;

  return v9(a1, v6, v4);
}

uint64_t sub_22FAF10F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_22FAA318C;
  }

  else
  {
    v4 = sub_22FAF1204;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF1204()
{
  v1 = v0[15];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      v3 = v0[12] + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskProductivityReporter;
      swift_beginAccess();
LABEL_4:
      v0[17] = v3;
      v0[18] = v2;
      v4 = v0[15];
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x231908810](0);
        goto LABEL_7;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_7:
        v0[19] = v5;
        v0[20] = 1;
        v6 = v0[12];

        return MEMORY[0x2822009F8](sub_22FAF13E8, v6, 0);
      }

      __break(1u);
    }

LABEL_17:

    sub_22FA61CB0();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }

  if (sub_22FCC92C4() <= 0)
  {
    goto LABEL_17;
  }

  v7 = v0[12];
  v2 = sub_22FCC92C4();
  v3 = v7 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskProductivityReporter;
  swift_beginAccess();
  if (v2)
  {
    goto LABEL_4;
  }

  v8 = v0[11];
  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_22FAF13E8()
{
  sub_22FA2E6E4(v0[17], (v0 + 2));
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_22FAF1490;
  v2 = v0[19];

  return sub_22FAAF4C4(v2, (v0 + 2));
}

uint64_t sub_22FAF1490(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {

    sub_22FA2B420(v4 + 16, &unk_27DAD83A0);

    v5 = sub_22FB0FFD0;
  }

  else
  {
    *(v4 + 184) = a1;
    sub_22FA2B420(v4 + 16, &unk_27DAD83A0);

    v5 = sub_22FAF160C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FAF160C()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = sub_22FA68214(v0[23]);
  v5 = v0[15];
  if (v1 != v2)
  {
    v9 = v0[20];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x231908810](v0[20]);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    v0[19] = v3;
    v0[20] = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v5 = v0[12];
      v3 = sub_22FAF13E8;
      v4 = 0;

      return MEMORY[0x2822009F8](v3, v5, v4);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v5, v4);
  }

  v6 = v0[11];
  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_22FAF1720(uint64_t a1)
{
  v2[13] = v1;
  v2[10] = v1;
  v2[11] = MEMORY[0x277D84F90];
  v2[12] = a1;
  v4 = sub_22FB0FE94(qword_28147C840, type metadata accessor for LibraryProcessingActivityTaskSource);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for LibraryProcessingActivityTaskSource();
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v2[14] = v7;
  *v7 = v2;
  v7[1] = sub_22FAF18A0;

  return v9(a1, v6, v4);
}

uint64_t sub_22FAF18A0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_22FAA318C;
  }

  else
  {
    v4 = sub_22FAF19B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF19B4()
{
  v1 = v0[15];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      v3 = v0[12] + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskProductivityReporter;
      swift_beginAccess();
LABEL_4:
      v0[17] = v3;
      v0[18] = v2;
      v4 = v0[15];
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x231908810](0);
        goto LABEL_7;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_7:
        v0[19] = v5;
        v0[20] = 1;
        v6 = v0[12];

        return MEMORY[0x2822009F8](sub_22FAF1B98, v6, 0);
      }

      __break(1u);
    }

LABEL_17:

    sub_22FA61CB0();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }

  if (sub_22FCC92C4() <= 0)
  {
    goto LABEL_17;
  }

  v7 = v0[12];
  v2 = sub_22FCC92C4();
  v3 = v7 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskProductivityReporter;
  swift_beginAccess();
  if (v2)
  {
    goto LABEL_4;
  }

  v8 = v0[11];
  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_22FAF1B98()
{
  sub_22FA2E6E4(v0[17], (v0 + 2));
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_22FAF1C40;
  v2 = v0[19];

  return sub_22FB59F48(v2, (v0 + 2));
}

uint64_t sub_22FAF1C40(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {

    sub_22FA2B420(v4 + 16, &unk_27DAD83A0);

    v5 = sub_22FB0FFD0;
  }

  else
  {
    *(v4 + 184) = a1;
    sub_22FA2B420(v4 + 16, &unk_27DAD83A0);

    v5 = sub_22FAF1DBC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FAF1DBC()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = sub_22FA68214(v0[23]);
  v5 = v0[15];
  if (v1 != v2)
  {
    v9 = v0[20];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x231908810](v0[20]);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    v0[19] = v3;
    v0[20] = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v5 = v0[12];
      v3 = sub_22FAF1B98;
      v4 = 0;

      return MEMORY[0x2822009F8](v3, v5, v4);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v5, v4);
  }

  v6 = v0[11];
  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_22FAF1ED0(uint64_t a1)
{
  v2[13] = v1;
  v2[10] = v1;
  v2[11] = MEMORY[0x277D84F90];
  v2[12] = a1;
  v4 = sub_22FB0FE94(qword_28147C4B8, type metadata accessor for HighlightEnrichmentActivityTaskSource);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for HighlightEnrichmentActivityTaskSource();
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v2[14] = v7;
  *v7 = v2;
  v7[1] = sub_22FAF2050;

  return v9(a1, v6, v4);
}

uint64_t sub_22FAF2050(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_22FAA318C;
  }

  else
  {
    v4 = sub_22FAF2164;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF2164()
{
  v1 = v0[15];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      v3 = v0[12] + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskProductivityReporter;
      swift_beginAccess();
LABEL_4:
      v0[17] = v3;
      v0[18] = v2;
      v4 = v0[15];
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x231908810](0);
        goto LABEL_7;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_7:
        v0[19] = v5;
        v0[20] = 1;
        v6 = v0[12];

        return MEMORY[0x2822009F8](sub_22FAF2348, v6, 0);
      }

      __break(1u);
    }

LABEL_17:

    sub_22FA61CB0();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }

  if (sub_22FCC92C4() <= 0)
  {
    goto LABEL_17;
  }

  v7 = v0[12];
  v2 = sub_22FCC92C4();
  v3 = v7 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskProductivityReporter;
  swift_beginAccess();
  if (v2)
  {
    goto LABEL_4;
  }

  v8 = v0[11];
  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_22FAF2348()
{
  sub_22FA2E6E4(v0[17], (v0 + 2));
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_22FAF23F0;
  v2 = v0[19];

  return sub_22FAA53FC(v2, (v0 + 2));
}

uint64_t sub_22FAF23F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {

    sub_22FA2B420(v4 + 16, &unk_27DAD83A0);

    v5 = sub_22FB0FFD0;
  }

  else
  {
    *(v4 + 184) = a1;
    sub_22FA2B420(v4 + 16, &unk_27DAD83A0);

    v5 = sub_22FAF256C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FAF256C()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = sub_22FA68214(v0[23]);
  v5 = v0[15];
  if (v1 != v2)
  {
    v9 = v0[20];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x231908810](v0[20]);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    v0[19] = v3;
    v0[20] = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v5 = v0[12];
      v3 = sub_22FAF2348;
      v4 = 0;

      return MEMORY[0x2822009F8](v3, v5, v4);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v5, v4);
  }

  v6 = v0[11];
  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_22FAF26A0()
{
  v0[7] = v0[8];
  type metadata accessor for ActivitySession();
  sub_22FB0FE94(&qword_281480D10, type metadata accessor for ActivitySession);

  sub_22FCC9324();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_22FAF27C8;

  return sub_22FAF9558((v0 + 2));
}

uint64_t sub_22FAF27C8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 80) = v1;

  sub_22FA3A7C4(v4 + 16);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FB0FFD4, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_22FAF2918(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return (sub_22FAF55E8)(a1);
}

uint64_t sub_22FAF29C8(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = MEMORY[0x277D84F90];
  v2[4] = v1;
  v4 = sub_22FB0FE94(&qword_281481CB0, type metadata accessor for PhotoLibraryNonIntensiveActivityTaskSource);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for PhotoLibraryNonIntensiveActivityTaskSource();
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_22FAF2B44;

  return v9(a1, v6, v4);
}

uint64_t sub_22FAF2B44(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_22FB0FFDC;
  }

  else
  {
    v4 = sub_22FAF2C58;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF2C58()
{
  v1 = v0[6];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v0[8] = v2;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x231908810](0);
        goto LABEL_6;
      }

      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v3 = *(v1 + 32);

LABEL_6:
        v0[9] = v3;
        v0[10] = 1;
        v4 = swift_task_alloc();
        v0[11] = v4;
        *v4 = v0;
        v4[1] = sub_22FAF2E2C;

        return sub_22FAEA28C(v3);
      }

      __break(1u);
    }

LABEL_16:

    sub_22FA61CB0();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }

  if (sub_22FCC92C4() <= 0)
  {
    goto LABEL_16;
  }

  v2 = sub_22FCC92C4();
  v1 = v0[6];
  if (v2)
  {
    goto LABEL_3;
  }

  v6 = v0[3];
  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_22FAF2E2C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    v5 = sub_22FB0FFE0;
  }

  else
  {

    *(v4 + 104) = a1;
    v5 = sub_22FAF2F78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FAF2F78()
{
  v1 = v0[10];
  v2 = v0[8];
  result = sub_22FA68214(v0[13]);
  v4 = v0[6];
  if (v1 == v2)
  {

    v5 = v0[3];
    v6 = v0[1];

    return v6(v5);
  }

  v7 = v0[10];
  if ((v4 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x231908810](v0[10]);
    v8 = result;
  }

  else
  {
    if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v8 = *(v4 + 8 * v7 + 32);
  }

  v0[9] = v8;
  v0[10] = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_22FAF2E2C;

  return sub_22FAEA28C(v8);
}

uint64_t sub_22FAF30C8(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = v1;
  v4 = sub_22FB0FE94(qword_281481C00, type metadata accessor for PhotoLibraryOnBatteryActivitySessionTaskSource);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for PhotoLibraryOnBatteryActivitySessionTaskSource();
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v2[9] = v7;
  *v7 = v2;
  v7[1] = sub_22FAF323C;

  return v9(a1, v6, v4);
}

uint64_t sub_22FAF323C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_22FAF34F4;
  }

  else
  {
    v4 = sub_22FAF3350;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF3350()
{
  v1 = v0[10];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = MEMORY[0x277D84F90];
      v0[13] = 0;
      v0[14] = v3;
      v0[12] = v2;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x231908810](0);
      }

      else
      {
      }

      v0[15] = v4;
      v5 = v0[8];

      return MEMORY[0x2822009F8](sub_22FAF350C, v5, 0);
    }

    goto LABEL_13;
  }

  if (sub_22FCC92C4() <= 0)
  {
LABEL_13:

    sub_22FA61CB0();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }

  v2 = sub_22FCC92C4();
  if (v2)
  {
    if (v2 >= 1)
    {
      v1 = v0[10];
      goto LABEL_3;
    }

    __break(1u);
    goto LABEL_13;
  }

  v8 = v0[1];
  v9 = MEMORY[0x277D84F90];

  return v8(v9);
}

uint64_t sub_22FAF350C()
{
  v1 = *(*(*(v0 + 120) + 112) + 112);
  if ([v1 isSystemPhotoLibrary])
  {
    v2 = type metadata accessor for PromptSuggestionAccessRenewalTask();
    v3 = swift_allocObject();
    v4 = v1;

    v6 = sub_22FB0F688(v5, v4, v3);
    v7 = sub_22FAC2350(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = v7[2];
    v8 = v7[3];
    if (v9 >= v8 >> 1)
    {
      v7 = sub_22FAC2350((v8 > 1), v9 + 1, 1, v7);
    }

    *(v0 + 40) = v2;
    *(v0 + 48) = sub_22FB0FE94(&qword_28147CA68, type metadata accessor for PromptSuggestionAccessRenewalTask);
    *(v0 + 16) = v6;
    v7[2] = v9 + 1;
    sub_22FA2CF78((v0 + 16), &v7[5 * v9 + 4]);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  *(v0 + 128) = v7;

  return MEMORY[0x2822009F8](sub_22FAF36B0, 0, 0);
}

uint64_t sub_22FAF36B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[16];
  isUniquelyReferenced_nonNull_native = v3[14];
  v6 = *(v4 + 16);
  v7 = *(isUniquelyReferenced_nonNull_native + 2);
  v8 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_25;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v3[14];
  if (isUniquelyReferenced_nonNull_native && v8 <= *(v9 + 3) >> 1)
  {
    if (*(v4 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v7 <= v8)
    {
      v13 = v7 + v6;
    }

    else
    {
      v13 = v7;
    }

    isUniquelyReferenced_nonNull_native = sub_22FAC2350(isUniquelyReferenced_nonNull_native, v13, 1, v3[14]);
    v9 = isUniquelyReferenced_nonNull_native;
    if (*(v4 + 16))
    {
LABEL_5:
      if ((*(v9 + 3) >> 1) - *(v9 + 2) >= v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7560);
        swift_arrayInitWithCopy();

        if (!v6)
        {
          goto LABEL_14;
        }

        v10 = *(v9 + 2);
        v11 = __OFADD__(v10, v6);
        v12 = v10 + v6;
        if (!v11)
        {
          *(v9 + 2) = v12;
          goto LABEL_14;
        }

LABEL_27:
        __break(1u);
        return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, a2, a3);
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }
  }

  if (v6)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_14:
  v14 = v3[13] + 1;
  if (v14 != v3[12])
  {
    v3[13] = v14;
    v3[14] = v9;
    if ((v3[10] & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x231908810]();
    }

    else
    {
    }

    v3[15] = v17;
    a2 = v3[8];
    isUniquelyReferenced_nonNull_native = sub_22FAF350C;
    a3 = 0;

    return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, a2, a3);
  }

  v15 = v3[1];

  return v15(v9);
}

uint64_t sub_22FAF387C(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_22FAF3914;

  return sub_22FBD8F40(a1);
}

uint64_t sub_22FAF3914(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22FAF3A48, 0, 0);
  }
}

uint64_t sub_22FAF3A48()
{
  v1 = v0[4];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = MEMORY[0x277D84F90];
      v0[5] = v2;
      v0[6] = v3;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x231908810](0);
        goto LABEL_6;
      }

      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v1 + 32);

LABEL_6:
        v0[7] = v4;
        v0[8] = 1;
        v5 = swift_task_alloc();
        v0[9] = v5;
        *v5 = v0;
        v5[1] = sub_22FAF3C28;

        return sub_22FBD965C(v4);
      }

      __break(1u);
    }

LABEL_16:

    sub_22FA61CB0();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }

  if (sub_22FCC92C4() <= 0)
  {
    goto LABEL_16;
  }

  v2 = sub_22FCC92C4();
  v1 = v0[4];
  if (v2)
  {
    goto LABEL_3;
  }

  v7 = v0[1];
  v8 = MEMORY[0x277D84F90];

  return v7(v8);
}

uint64_t sub_22FAF3C28(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22FAF3DAC, 0, 0);
  }
}

uint64_t sub_22FAF3DAC()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  v3 = *(v0[6] + 16);
  v4 = v3 + v2;
  if (__OFADD__(v3, v2))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[6];
  if (isUniquelyReferenced_nonNull_native && v4 <= v6[3] >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v3 <= v4)
  {
    v11 = v3 + v2;
  }

  else
  {
    v11 = v3;
  }

  v6 = sub_22FAC2350(isUniquelyReferenced_nonNull_native, v11, 1, v0[6]);
  if (!*(v1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_5:
  if ((v6[3] >> 1) - v6[2] < v2)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    result = MEMORY[0x231908810](v2);
    v14 = result;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7560);
  swift_arrayInitWithCopy();

  if (v2)
  {
    v8 = v6[2];
    v9 = __OFADD__(v8, v2);
    v10 = v8 + v2;
    if (v9)
    {
LABEL_31:
      __break(1u);
      return result;
    }

    v6[2] = v10;
  }

LABEL_14:
  v2 = v0[8];
  if (v2 == v0[5])
  {

    v12 = v0[1];

    return v12(v6);
  }

  v0[6] = v6;
  v13 = v0[4];
  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  if (v2 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = *(v13 + 8 * v2 + 32);

LABEL_21:
  v0[7] = v14;
  v0[8] = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_22FAF3C28;

  return sub_22FBD965C(v14);
}

uint64_t sub_22FAF3FD8(uint64_t a1)
{
  v2[3] = v1;
  v2[2] = v1;
  v4 = sub_22FB0FE94(qword_28147E058, type metadata accessor for InternalActivityTaskSource);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for InternalActivityTaskSource();
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v2[4] = v7;
  *v7 = v2;
  v7[1] = sub_22FAF414C;

  return v9(a1, v6, v4);
}

uint64_t sub_22FAF414C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_22FA55944;
  }

  else
  {
    v4 = sub_22FAF4260;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF4260()
{
  v1 = v0[5];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = MEMORY[0x277D84F90];
      v0[7] = v2;
      v0[8] = v3;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x231908810](0);
        goto LABEL_6;
      }

      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v1 + 32);

LABEL_6:
        v0[9] = v4;
        v0[10] = 1;
        v5 = swift_task_alloc();
        v0[11] = v5;
        *v5 = v0;
        v5[1] = sub_22FAF4440;

        return sub_22FBBCE70(v4);
      }

      __break(1u);
    }

LABEL_16:

    sub_22FA61CB0();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }

  if (sub_22FCC92C4() <= 0)
  {
    goto LABEL_16;
  }

  v2 = sub_22FCC92C4();
  v1 = v0[5];
  if (v2)
  {
    goto LABEL_3;
  }

  v7 = v0[1];
  v8 = MEMORY[0x277D84F90];

  return v7(v8);
}

uint64_t sub_22FAF4440(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {

    v4 = sub_22FAF47C8;
  }

  else
  {

    v4 = sub_22FAF459C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF459C()
{
  v1 = v0[12];
  v2 = *(v1 + 16);
  v3 = *(v0[8] + 16);
  v4 = v3 + v2;
  if (__OFADD__(v3, v2))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[8];
  if (isUniquelyReferenced_nonNull_native && v4 <= v6[3] >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v3 <= v4)
  {
    v11 = v3 + v2;
  }

  else
  {
    v11 = v3;
  }

  v6 = sub_22FAC2350(isUniquelyReferenced_nonNull_native, v11, 1, v0[8]);
  if (!*(v1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_5:
  if ((v6[3] >> 1) - v6[2] < v2)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    result = MEMORY[0x231908810](v2);
    v14 = result;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7560);
  swift_arrayInitWithCopy();

  if (v2)
  {
    v8 = v6[2];
    v9 = __OFADD__(v8, v2);
    v10 = v8 + v2;
    if (v9)
    {
LABEL_31:
      __break(1u);
      return result;
    }

    v6[2] = v10;
  }

LABEL_14:
  v2 = v0[10];
  if (v2 == v0[7])
  {

    v12 = v0[1];

    return v12(v6);
  }

  v0[8] = v6;
  v13 = v0[5];
  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  if (v2 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = *(v13 + 8 * v2 + 32);

LABEL_21:
  v0[9] = v14;
  v0[10] = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  v15[1] = sub_22FAF4440;

  return sub_22FBBCE70(v14);
}

uint64_t sub_22FAF47E0(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = MEMORY[0x277D84F90];
  v2[4] = v1;
  v4 = sub_22FB0FE94(&qword_28147C8F8, type metadata accessor for GraphNonIntensiveActivityTaskSource);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for GraphNonIntensiveActivityTaskSource();
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_22FAF495C;

  return v9(a1, v6, v4);
}

uint64_t sub_22FAF495C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_22FAD4A58;
  }

  else
  {
    v4 = sub_22FAF4A70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF4A70()
{
  v1 = v0[6];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v0[8] = v2;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x231908810](0);
        goto LABEL_6;
      }

      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v3 = *(v1 + 32);

LABEL_6:
        v0[9] = v3;
        v0[10] = 1;
        v4 = swift_task_alloc();
        v0[11] = v4;
        *v4 = v0;
        v4[1] = sub_22FAF4C44;

        return sub_22FC3C864(v3);
      }

      __break(1u);
    }

LABEL_16:

    sub_22FA61CB0();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }

  if (sub_22FCC92C4() <= 0)
  {
    goto LABEL_16;
  }

  v2 = sub_22FCC92C4();
  v1 = v0[6];
  if (v2)
  {
    goto LABEL_3;
  }

  v6 = v0[3];
  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_22FAF4C44(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    v5 = sub_22FAF4EE0;
  }

  else
  {

    *(v4 + 104) = a1;
    v5 = sub_22FAF4D90;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FAF4D90()
{
  v1 = v0[10];
  v2 = v0[8];
  result = sub_22FA68214(v0[13]);
  v4 = v0[6];
  if (v1 == v2)
  {

    v5 = v0[3];
    v6 = v0[1];

    return v6(v5);
  }

  v7 = v0[10];
  if ((v4 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x231908810](v0[10]);
    v8 = result;
  }

  else
  {
    if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v8 = *(v4 + 8 * v7 + 32);
  }

  v0[9] = v8;
  v0[10] = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_22FAF4C44;

  return sub_22FC3C864(v8);
}

uint64_t sub_22FAF4EF8(uint64_t a1)
{
  v2[12] = v1;
  v2[11] = v1;
  v4 = sub_22FB0FE94(qword_28147C6A0, type metadata accessor for GyroPosterFastPassActivityTaskSource);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for GyroPosterFastPassActivityTaskSource();
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v2[13] = v7;
  *v7 = v2;
  v7[1] = sub_22FAF506C;

  return v9(a1, v6, v4);
}

uint64_t sub_22FAF506C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_22FA9C0A4;
  }

  else
  {
    v4 = sub_22FAF5180;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF5180()
{
  v1 = v0[14];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = MEMORY[0x277D84F90];
      v0[17] = 0;
      v0[18] = v3;
      v0[16] = v2;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x231908810](0);
      }

      else
      {
      }

      v0[19] = v4;
      v5 = v0[12];

      return MEMORY[0x2822009F8](sub_22FAF5324, v5, 0);
    }

    goto LABEL_13;
  }

  if (sub_22FCC92C4() <= 0)
  {
LABEL_13:

    sub_22FA61CB0();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }

  v2 = sub_22FCC92C4();
  if (v2)
  {
    if (v2 >= 1)
    {
      v1 = v0[14];
      goto LABEL_3;
    }

    __break(1u);
    goto LABEL_13;
  }

  v8 = v0[1];
  v9 = MEMORY[0x277D84F90];

  return v8(v9);
}

uint64_t sub_22FAF5324()
{
  v8 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77C8);
  inited = swift_initStackObject();
  *(v0 + 160) = inited;
  *(inited + 16) = xmmword_22FCD1800;
  v2 = type metadata accessor for Spatial3DPosterOnboardingTask();
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  swift_allocObject();

  v4 = sub_22FA5788C(v3, v6, 1);

  *(inited + 56) = v2;
  *(inited + 64) = sub_22FB0FE94(&qword_28147D5B0, type metadata accessor for Spatial3DPosterOnboardingTask);
  *(inited + 32) = v4;

  return MEMORY[0x2822009F8](sub_22FAF5458, 0, 0);
}

uint64_t sub_22FAF5458()
{
  v1 = *(v0[18] + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0[18];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || (v6 = *(v5 + 24) >> 1, v6 <= v1))
  {
    isUniquelyReferenced_nonNull_native = sub_22FAC2350(isUniquelyReferenced_nonNull_native, v1 + 1, 1, v0[18]);
    v5 = isUniquelyReferenced_nonNull_native;
    v6 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
  }

  if (v6 <= *(v5 + 16))
  {
    __break(1u);
    return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v3, v4);
  }

  v7 = v0[16];
  v8 = v0[17] + 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7560);
  swift_arrayInitWithCopy();

  ++*(v5 + 16);
  if (v8 != v7)
  {
    ++v0[17];
    v0[18] = v5;
    if ((v0[14] & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x231908810]();
    }

    else
    {
    }

    v0[19] = v11;
    v3 = v0[12];
    isUniquelyReferenced_nonNull_native = sub_22FAF5324;
    v4 = 0;

    return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v3, v4);
  }

  v9 = v0[1];

  return v9(v5);
}

uint64_t sub_22FAF55E8(uint64_t a1)
{
  v2[21] = v1;
  v4 = sub_22FCC67F4();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[20] = v1;
  v5 = sub_22FB0FE94(qword_28147C2E0, type metadata accessor for SocialGroupsFastPassActivityTaskSource);
  v6 = *(v5 + 40);
  v7 = type metadata accessor for SocialGroupsFastPassActivityTaskSource();
  v10 = (v6 + *v6);
  v8 = swift_task_alloc();
  v2[25] = v8;
  *v8 = v2;
  v8[1] = sub_22FAF57B8;

  return v10(a1, v7, v5);
}

uint64_t sub_22FAF57B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_22FAF5AC8;
  }

  else
  {
    v4 = sub_22FAF58CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF58CC()
{
  v1 = v0[26];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v0[28] = v2;
      v0[29] = 0xBFF0000000000000;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = v0[21];
        v4 = MEMORY[0x277D84F90];
        v0[30] = 0;
        v0[31] = v4;
        v0[32] = MEMORY[0x231908810](0, v0[26]);
        v5 = sub_22FAF5B2C;
      }

      else
      {
        v6 = v0[26];
        v3 = v0[21];
        v7 = MEMORY[0x277D84F90];
        v0[34] = 0;
        v0[35] = v7;
        v0[36] = *(v6 + 32);

        v5 = sub_22FAF5EA0;
      }

      return MEMORY[0x2822009F8](v5, v3, 0);
    }

    goto LABEL_13;
  }

  v8 = v0[26];
  if (sub_22FCC92C4() <= 0)
  {
LABEL_13:

    sub_22FA61CB0();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  v9 = sub_22FCC92C4();
  if (v9)
  {
    v2 = v9;
    if (v9 >= 1)
    {
      v1 = v8;
      goto LABEL_3;
    }

    __break(1u);
    goto LABEL_13;
  }

  v12 = v0[1];
  v13 = MEMORY[0x277D84F90];

  return v12(v13);
}

uint64_t sub_22FAF5AC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FAF5B2C()
{
  v1 = v0[32];
  v2 = v0[29];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77C8);
  inited = swift_initStackObject();
  v0[33] = inited;
  *(inited + 16) = xmmword_22FCD1800;
  v7 = type metadata accessor for SocialGroupsFTETask();
  v8 = swift_allocObject();
  *(v8 + 56) = 0xD000000000000013;
  *(v8 + 64) = 0x800000022FCE33B0;
  swift_unknownObjectRetain();
  sub_22FCC67E4();
  v9 = sub_22FCC67B4();
  v11 = v10;
  (*(v4 + 8))(v3, v5);
  *(v8 + 72) = v9;
  *(v8 + 80) = v11;
  *(v8 + 88) = 0;
  *(v8 + 96) = v2;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 104) = 3;
  *(v8 + 128) = 1;
  *(v8 + 40) = type metadata accessor for PhotoLibraryWorker();
  *(v8 + 48) = sub_22FB0FE94(&qword_281482350, type metadata accessor for PhotoLibraryWorker);
  *(v8 + 16) = v1;
  *(v8 + 136) = *(v1 + 112);
  *(inited + 56) = v7;
  *(inited + 64) = sub_22FB0FE94(&qword_28147FC30, type metadata accessor for SocialGroupsFTETask);
  *(inited + 32) = v8;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22FAF5D18, 0, 0);
}