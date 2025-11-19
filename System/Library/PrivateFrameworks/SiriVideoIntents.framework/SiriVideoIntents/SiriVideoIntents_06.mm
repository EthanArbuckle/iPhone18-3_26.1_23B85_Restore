uint64_t sub_269710134()
{
  v73 = v1;
  v3 = *(v1 + 592);
  v4 = *(v1 + 584);
  sub_2696E2244(*(v1 + 600), v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v31 = *(v1 + 592);
      v32 = *(v1 + 576);
      v33 = *v31;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803237A0, qword_26985B440);
      sub_2696E2358(v31 + *(v34 + 48), v32);
      v69 = type metadata accessor for ThirdPartyAppDisambiguationStrategy();
      v35 = type metadata accessor for BaseDialogProvider();
      v36 = swift_allocObject();

      sub_2698538C4();
      sub_269852C84();
      if (qword_2803226B0 == -1)
      {
        goto LABEL_7;
      }

      break;
    case 2u:
      OUTLINED_FUNCTION_6_17();
      v18 = *(v1 + 592);
      v19 = *(v1 + 560);
      v21 = *(v1 + 568) + v20;
      v23 = *v18;
      v22 = v18[1];
      v24 = *v21;
      v25 = *(v21 + 8);
      *v21 = v23;
      *(v21 + 8) = v22;
      v26 = *(v21 + 16);
      *(v21 + 16) = 512;
      goto LABEL_5;
    case 3u:
      OUTLINED_FUNCTION_6_17();
      v27 = *(v1 + 560);
      v29 = *(v1 + 568) + v28;
      v24 = *v29;
      v25 = *(v29 + 8);
      *v29 = 0;
      *(v29 + 8) = 0;
      v30 = *(v29 + 16);
      *(v29 + 16) = 0;
LABEL_5:
      sub_2697114F0(v24, v25);
      sub_269853164();
      sub_2696E22FC(v0);
      sub_2696E22A8(v1 + 16);
      (*(v2 + 8))(v3, v4);
      goto LABEL_12;
    default:
      v68 = *(v1 + 632);
      v5 = *(v1 + 624);
      v6 = *(v1 + 616);
      v7 = *(v1 + 600);
      v8 = *(v1 + 592);
      v9 = *(v1 + 560);
      v10 = *(v1 + 568) + *(v1 + 640);
      v11 = *v8;
      v12 = *(v8 + 8);
      v13 = *(v8 + 16);
      v14 = v13 | (sub_2697108F4(*v8) << 8);
      v15 = *v10;
      v16 = *(v10 + 8);
      *v10 = v11;
      *(v10 + 8) = v12;
      v17 = *(v10 + 16);
      *(v10 + 16) = v14;
      sub_2697114F0(v15, v16);
      sub_269853164();
      sub_2696E22FC(v7);
      sub_2696E22A8(v1 + 16);
      (*(v5 + 8))(v68, v6);
      goto LABEL_12;
  }

  while (1)
  {
    OUTLINED_FUNCTION_2_15();
LABEL_7:
    v66 = *(v1 + 576);
    v37 = qword_28033D8E0;
    sub_2696A73F8(*(v1 + 568) + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_responseGenerator, v1 + 400);
    v39 = *(v1 + 424);
    v38 = *(v1 + 432);
    v40 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 400, v39);
    OUTLINED_FUNCTION_3_20();
    v42 = v41;
    v44 = *(v43 + 64);
    v45 = OUTLINED_FUNCTION_4_7();
    (*(v42 + 16))(v45, v40, v39);
    *(v1 + 528) = v36;
    *(v1 + 536) = v37;
    v46 = type metadata accessor for SiriSignalsRecorder();

    v49 = sub_26970E37C(v1 + 528, &v71, v47, v72, v1 + 536, v48, v45, v69, v35, &type metadata for AppInfoProvider, v46, v39, &type metadata for CoreAnalyticsService, &off_287A3DBA0, &off_287A41388, &off_287A44CA0, v38, &xmmword_287A41610);

    __swift_destroy_boxed_opaque_existential_0((v1 + 400));

    v50 = OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_appDisambiguationContext;
    swift_beginAccess();
    sub_2696E23C8(v66, v49 + v50);
    swift_endAccess();
    *(v1 + 544) = v49;
    v36 = *(v33 + 16);
    if (!v36)
    {
      break;
    }

    *&v72[0] = MEMORY[0x277D84F90];
    v35 = v72;
    sub_2698552A4();
    sub_269854404();
    v51 = 0;
    v52 = (v33 + 40);
    while (v51 < *(v33 + 16))
    {
      ++v51;
      v53 = *(v52 - 1);
      v54 = *v52;

      sub_2698543E4();
      v35 = v72;
      sub_269855284();
      v55 = *(*&v72[0] + 16);
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      v52 += 2;
      if (v36 == v51)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

LABEL_11:

  v56 = *(v1 + 648);
  v57 = *(v1 + 624);
  v67 = *(v1 + 616);
  v70 = *(v1 + 632);
  v65 = *(v1 + 600);
  v58 = *(v1 + 576);
  v59 = *(v1 + 568);
  v60 = *(v1 + 560);
  v61 = *(v1 + 664);
  sub_269853524();
  sub_269711574(&qword_280323C98, type metadata accessor for ThirdPartyAppDisambiguationStrategy);
  v62 = sub_269852804();

  __swift_destroy_boxed_opaque_existential_0((v1 + 440));
  *(v1 + 552) = v62;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323CA0, &qword_26985C918);
  sub_269711510();
  sub_269853124();

  sub_2697114F0(v56, 2);
  sub_269698048(v58, &qword_280323798, &unk_26985C770);
  sub_2696E22FC(v65);
  sub_2696E22A8(v1 + 16);
  (*(v57 + 8))(v70, v67);

LABEL_12:
  OUTLINED_FUNCTION_8_14();

  v63 = *(v1 + 8);

  return v63();
}

uint64_t sub_269710728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323CB0, &qword_26985C920);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v21 - v7);
  (*(v5 + 16))(&v21 - v7, a1, v4);
  if ((*(v5 + 88))(v8, v4) != *MEMORY[0x277D5BC38])
  {
    (*(v5 + 8))(v8, v4);
LABEL_9:
    v12 = 0;
    v15 = 0;
    v13 = 3;
    goto LABEL_10;
  }

  (*(v5 + 96))(v8, v4);
  v9 = *v8;
  if (!sub_269853644())
  {
LABEL_8:

    goto LABEL_9;
  }

  v10 = sub_2698543F4();
  if (!v11)
  {

    goto LABEL_8;
  }

  v12 = v10;
  v13 = v11;
  v14 = sub_2697108F4(v10);

  v15 = v14 << 8;
LABEL_10:
  v16 = a2 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state;
  v17 = *(a2 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state);
  v18 = *(a2 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state + 8);
  *v16 = v12;
  *(v16 + 8) = v13;
  v19 = *(v16 + 16);
  *(v16 + 16) = v15;
  return sub_2697114F0(v17, v18);
}

uint64_t sub_2697108F4(uint64_t a1)
{
  v2 = v1;
  v68 = a1;
  v3 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v5 = v4;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v64 - v12;
  v14 = *(&v1->isa + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_usecase);
  v15 = &qword_280323000;
  __swift_project_boxed_opaque_existential_1((&v1->isa + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_intentSupportProvider), *(&v1[3].isa + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_intentSupportProvider));
  if (v14)
  {
    v16 = OUTLINED_FUNCTION_3_21();
    v17 = sub_269832F24(v16);
    if (!v17)
    {
      goto LABEL_15;
    }

    v18 = v17;
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v19 = __swift_project_value_buffer(v3, qword_281571B38);
    (*(v5 + 16))(v11, v19, v3);

    v20 = sub_2698548B4();
    v21 = sub_269854F44();

    v22 = os_log_type_enabled(v20, v21);
    v67 = v14;
    if (v22)
    {
      v23 = swift_slowAlloc();
      LODWORD(v64) = v21;
      v24 = v23;
      v65 = swift_slowAlloc();
      v69 = v65;
      *v24 = 136315394;
      v25 = OUTLINED_FUNCTION_3_21();
      v28 = sub_26974F520(v25, v26, v27);
      OUTLINED_FUNCTION_11_12(v28);
      sub_269851A04();
      sub_269711574(&unk_2803263A0, MEMORY[0x277CBA000]);
      v29 = sub_269854E54();
      v31 = sub_26974F520(v29, v30, &v69);
      v66 = v2;
      v32 = v31;

      *(v24 + 14) = v32;
      _os_log_impl(&dword_269684000, v20, v64, "%s supports scopes: %s", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v2 = v66;
    }

    else
    {
    }

    (*(v5 + 8))(v11, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242B0, &unk_26985F2F0);
    v49 = sub_269851A04();
    OUTLINED_FUNCTION_3_20();
    v51 = v50;
    v53 = *(v52 + 72);
    v54 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_26985C7B0;
    v56 = v55 + v54;
    v57 = *(v51 + 104);
    v57(v56, *MEMORY[0x277CB9FE0], v49);
    v57(v56 + v53, *MEMORY[0x277CB9FF0], v49);
    v57(v56 + 2 * v53, *MEMORY[0x277CB9FE8], v49);
    LOBYTE(v49) = sub_26983406C(v55, v18);

    swift_setDeallocating();
    sub_269819D40();
    v15 = &qword_280323000;
    if (v49)
    {
LABEL_15:
      v48 = 0;
LABEL_20:
      __swift_project_boxed_opaque_existential_1((&v2->isa + v15[394]), *(&v2[3].isa + v15[394]));
      v59 = OUTLINED_FUNCTION_3_21();
      if (sub_269833A58(v59, v60))
      {
        return 1;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v33 = OUTLINED_FUNCTION_3_21();
    if (!sub_269832854(v33))
    {
      v48 = 0;
      goto LABEL_22;
    }

    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v34 = __swift_project_value_buffer(v3, qword_281571B38);
    (*(v5 + 16))(v13, v34, v3);

    v35 = sub_2698548B4();
    v36 = sub_269854F44();

    LODWORD(v65) = v36;
    v66 = v35;
    v37 = os_log_type_enabled(v35, v36);
    v67 = v14;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v69 = v64;
      *v38 = 136315394;
      v39 = OUTLINED_FUNCTION_3_21();
      v42 = sub_26974F520(v39, v40, v41);
      OUTLINED_FUNCTION_11_12(v42);
      sub_2698519E4();
      sub_269711574(&unk_280326380, MEMORY[0x277CB9E20]);
      v43 = sub_269854E54();
      v45 = v44;

      v46 = sub_26974F520(v43, v45, &v69);

      *(v38 + 14) = v46;
      v47 = v66;
      _os_log_impl(&dword_269684000, v66, v65, "%s supports video categories: %s", v38, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      v15 = &qword_280323000;
      OUTLINED_FUNCTION_10();
    }

    else
    {
    }

    (*(v5 + 8))(v13, v3);
  }

  v58 = *(&v2->isa + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_userDefaultsProvider);
  if ((sub_2697B93E8() & 1) == 0)
  {
    return 0;
  }

  v48 = 1;
  if (v67)
  {
    goto LABEL_20;
  }

LABEL_22:
  __swift_project_boxed_opaque_existential_1((&v2->isa + v15[394]), *(&v2[3].isa + v15[394]));
  v62 = OUTLINED_FUNCTION_3_21();
  if (sub_2698339A4(v62, v63))
  {
    return 1;
  }

LABEL_23:
  if (v48)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_269710F7C()
{
  sub_269698048(v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_input, &qword_280323AF8, &unk_26985C1D0);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state + 16);
  sub_2697114F0(*(v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state), *(v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state + 8));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_applicationRecordProvider));
  v2 = *(v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_userDefaultsProvider);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_smartAppSelector));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_signalRecorder));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_intentSupportProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_foregroundAppProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_analyticsService));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_aceServiceInvoker));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_appIntentsMetadata));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_responseGenerator));
  return v0;
}

uint64_t sub_26971107C()
{
  sub_269710F7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ThirdPartyAppResolutionFlow()
{
  result = qword_280323C88;
  if (!qword_280323C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269711128()
{
  sub_2697012B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents27ThirdPartyAppResolutionFlowC5State33_AB35DF52C1047766A6FE1C9F5B8ED0B9LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_269711228(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 18))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_269711284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_2697112E4(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_269711350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2696DF218;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_269711424()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DEBD8;

  return sub_26970FB98();
}

uint64_t sub_2697114C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = sub_26970F95C();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  return result;
}

uint64_t sub_2697114F0(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

unint64_t sub_269711510()
{
  result = qword_280323CA8;
  if (!qword_280323CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323CA0, &qword_26985C918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323CA8);
  }

  return result;
}

uint64_t sub_269711574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2697115BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_2697115FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26971164C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26971169C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2697116F4(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ThirdPartyAppResolutionFlow.ResolvedApp.ExecutionPath(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_269711808()
{
  result = qword_280323CC0;
  if (!qword_280323CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323CC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_15()
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_17()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[75];
}

uint64_t OUTLINED_FUNCTION_8_14()
{
  v2 = v0[79];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[74];
  v6 = v0[72];
}

uint64_t OUTLINED_FUNCTION_11_12(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2080;
  return 0;
}

uint64_t sub_2697118DC(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = type metadata accessor for SignalRecordingContext();
  v3[23] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v3[24] = v5;
  v7 = *(v6 + 64);
  v3[25] = OUTLINED_FUNCTION_4_7();
  v8 = sub_2698538A4();
  v3[26] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v3[27] = v9;
  v11 = *(v10 + 64);
  v3[28] = OUTLINED_FUNCTION_37_0();
  v3[29] = swift_task_alloc();
  v12 = sub_2698523C4();
  v3[30] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v3[31] = v13;
  v15 = *(v14 + 64);
  v3[32] = OUTLINED_FUNCTION_4_7();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v16);
  v18 = *(v17 + 64);
  v3[33] = OUTLINED_FUNCTION_4_7();
  v19 = sub_269851EF4();
  v3[34] = v19;
  OUTLINED_FUNCTION_5_12(v19);
  v3[35] = v20;
  v22 = *(v21 + 64);
  v3[36] = OUTLINED_FUNCTION_4_7();
  v23 = sub_269852474();
  v3[37] = v23;
  OUTLINED_FUNCTION_5_12(v23);
  v3[38] = v24;
  v26 = *(v25 + 64);
  v3[39] = OUTLINED_FUNCTION_37_0();
  v3[40] = swift_task_alloc();
  v27 = sub_269853874();
  v3[41] = v27;
  OUTLINED_FUNCTION_5_12(v27);
  v3[42] = v28;
  v30 = *(v29 + 64);
  v3[43] = OUTLINED_FUNCTION_4_7();
  v31 = type metadata accessor for MediaNLIntent();
  v3[44] = v31;
  OUTLINED_FUNCTION_8_9(v31);
  v33 = *(v32 + 64);
  v3[45] = OUTLINED_FUNCTION_4_7();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323700, qword_26985B120);
  OUTLINED_FUNCTION_8_9(v34);
  v36 = *(v35 + 64);
  v3[46] = OUTLINED_FUNCTION_4_7();
  v37 = sub_269853F44();
  v3[47] = v37;
  OUTLINED_FUNCTION_5_12(v37);
  v3[48] = v38;
  v40 = *(v39 + 64);
  v3[49] = OUTLINED_FUNCTION_4_7();
  v41 = sub_2698538B4();
  v3[50] = v41;
  OUTLINED_FUNCTION_5_12(v41);
  v3[51] = v42;
  v44 = *(v43 + 64);
  v3[52] = OUTLINED_FUNCTION_37_0();
  v3[53] = swift_task_alloc();
  v45 = sub_2698548D4();
  v3[54] = v45;
  OUTLINED_FUNCTION_5_12(v45);
  v3[55] = v46;
  v48 = *(v47 + 64);
  v3[56] = OUTLINED_FUNCTION_37_0();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v49 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_269711D64, 0, 0);
}

uint64_t sub_269711D64()
{
  v439 = v0;
  v438[1] = *MEMORY[0x277D85DE8];
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = v0[70];
  v426 = (v0[55] + 16);
  v429 = __swift_project_value_buffer(v0[54], qword_28033D910);
  v432 = *v426;
  (*v426)(v1);
  v2 = sub_2698548B4();
  v3 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v3))
  {
    v4 = OUTLINED_FUNCTION_16_2();
    *v4 = 0;
    _os_log_impl(&dword_269684000, v2, v3, "ThirdPartyAppResolutionUtil#resolveApp", v4, 2u);
    OUTLINED_FUNCTION_10();
  }

  v5 = v0[70];
  v7 = v0[54];
  v6 = v0[55];
  v9 = v0[52];
  v8 = v0[53];
  v10 = v0[50];
  v11 = v0[51];
  v12 = v0[21];

  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_34_0();
  v435 = v15;
  (v15)(v14);
  sub_269853844();
  v16 = sub_2696CB944();
  v424 = v17;
  v0[71] = v17;
  v18 = *(v11 + 8);
  v18(v8, v10);
  sub_269853844();
  v19 = (*(v11 + 88))(v9, v10);
  v437 = v0;
  v422 = v16;
  if (v19 == *MEMORY[0x277D5C128])
  {
    v20 = v0[52];
    v21 = v0[49];
    v23 = v0[47];
    v22 = v0[48];
    v24 = v0[45];
    (*(v0[51] + 96))(v20, v0[50]);
    (*(v22 + 32))(v21, v20, v23);
    v418 = sub_2696CAAE8();
    v26 = v25;
    (*(v22 + 16))(v24, v21, v23);
    if (qword_2803225D0 != -1)
    {
      swift_once();
    }

    v27 = v0[45];
    v28 = v0[46];
    v29 = v0[44];
    v30 = _s10MediaNLAppVMa(0);
    sub_2696DFA64(qword_280323548, type metadata accessor for MediaNLIntent);
    sub_2696DFA64(qword_280323708, _s10MediaNLAppVMa);
    OUTLINED_FUNCTION_8_3();
    sub_269853D44();
    sub_269715174(v27, type metadata accessor for MediaNLIntent);
    v31 = v30;
    v32 = v0;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v31);
    v34 = v0[46];
    if (EnumTagSinglePayload == 1)
    {

      sub_26969B0C0(v34, &qword_280323700, qword_26985B120);
LABEL_40:
      v130 = v437[69];
      v131 = v437[54];
      v132 = OUTLINED_FUNCTION_8_15();
      v133(v132);
      v92 = sub_2698548B4();
      v134 = sub_269854F14();
      if (OUTLINED_FUNCTION_19_5(v134))
      {
        v135 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v135);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v136, v137, "ThirdPartyAppResolutionUtil#resolveApp NLv3IntentOnly intent has no app ID");
        OUTLINED_FUNCTION_18_7();
      }

      v138 = v437[69];
      v139 = v437[54];
      v140 = v437[55];
      v101 = v437[48];
      v141 = v437[49];
      v142 = v437[47];
LABEL_84:
      v260 = v32[20];

      v261 = OUTLINED_FUNCTION_6_18();
      v262(v261);
      v263 = *(v101 + 8);
      v264 = OUTLINED_FUNCTION_44_0();
      v265(v264);
      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      v266 = OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_11_13(v266, (v260 + v267));
      *(v260 + v268) = 0;
      goto LABEL_85;
    }

    v407 = sub_2697A5220();
    v65 = v64;
    sub_269715174(v34, _s10MediaNLAppVMa);
    if (!v65)
    {

      goto LABEL_40;
    }

    v415 = v65;
    (*(v437[48] + 8))(v437[49], v437[47]);
    goto LABEL_44;
  }

  if (v19 == *MEMORY[0x277D5C150])
  {
    v32 = v0;
    v35 = v0[52];
    v36 = v0[29];
    v38 = v0[26];
    v37 = v0[27];
    (*(v437[51] + 96))(v437[52], v437[50]);
    (*(v37 + 32))(v36, v35, v38);
    if (sub_269853884() == 0xD00000000000002DLL && 0x800000026987A0A0 == v39)
    {
    }

    else
    {
      v41 = sub_269855584();

      if ((v41 & 1) == 0)
      {
        v42 = v437[63];
        v43 = v437[54];
        v45 = v437[28];
        v44 = v437[29];
        v47 = v437[26];
        v46 = v437[27];

        (v432)(v42, v429, v43);
        (*(v46 + 16))(v45, v44, v47);
        v48 = sub_2698548B4();
        v49 = sub_269854F14();
        v50 = os_log_type_enabled(v48, v49);
        v51 = v437[63];
        v430 = v437[55];
        v433 = v437[54];
        v52 = v437[28];
        v53 = v437[29];
        v54 = v437[26];
        v55 = v437[27];
        if (v50)
        {
          v56 = OUTLINED_FUNCTION_27_2();
          v57 = OUTLINED_FUNCTION_9_3();
          v438[0] = v57;
          *v56 = 136315138;
          v58 = sub_269853884();
          v427 = v53;
          v60 = v59;
          v61 = *(v55 + 8);
          v62 = OUTLINED_FUNCTION_25_2();
          v61(v62);
          v63 = sub_26974F520(v58, v60, v438);

          *(v56 + 4) = v63;
          _os_log_impl(&dword_269684000, v48, v49, "ThirdPartyAppResolutionUtil#resolveApp unsupported directInvocation %s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v57);
          OUTLINED_FUNCTION_10();
          v32 = v437;
          OUTLINED_FUNCTION_10();

          v435(v51, v433);
          (v61)(v427, v54);
        }

        else
        {

          v237 = *(v55 + 8);
          v238 = OUTLINED_FUNCTION_25_2();
          v237(v238);
          v435(v51, v433);
          v239 = OUTLINED_FUNCTION_31_3();
          v237(v239);
        }

        v218 = v32[20];
        OUTLINED_FUNCTION_3_22();
        goto LABEL_75;
      }
    }

    v103 = v437[29];
    if (sub_269853894())
    {
      v104 = objc_opt_self();
      v105 = sub_2698549D4();

      v437[19] = 0;
      v106 = [v104 dataWithJSONObject:v105 options:0 error:v437 + 19];

      v107 = v437[19];
      if (!v106)
      {
        v235 = v107;

        v236 = sub_269851BD4();

        swift_willThrow();
LABEL_81:
        v247 = v437[64];
        v248 = v437[54];
        v249 = OUTLINED_FUNCTION_8_15();
        v250(v249);
        v92 = sub_2698548B4();
        v251 = sub_269854F24();
        if (OUTLINED_FUNCTION_19_5(v251))
        {
          v252 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_30_2(v252);
          OUTLINED_FUNCTION_31_0(&dword_269684000, v253, v254, "ThirdPartyAppResolutionUtil#resolveApp directInvocation is missing appBundleIdentifier");
          OUTLINED_FUNCTION_18_7();
        }

        v255 = v437[64];
        v256 = v437[54];
        v257 = v437[55];
        v258 = v437[29];
        v259 = v437[26];
        v101 = v437[27];
        goto LABEL_84;
      }

      v108 = v107;
      sub_269851C94();

      if (qword_280322440 != -1)
      {
        swift_once();
      }

      sub_2696CC3A4();
      sub_269851A84();
      v243 = OUTLINED_FUNCTION_8_3();
      sub_2696C1F3C(v243, v244);
      if (v437[3])
      {
        v245 = v437[5];
        v407 = v437[4];
        v246 = v437[6];

        if (v245)
        {
          v415 = v245;
          (*(v437[27] + 8))(v437[29], v437[26]);
          v418 = 0;
          v26 = 0;
          goto LABEL_44;
        }
      }
    }

    goto LABEL_81;
  }

  v32 = v0;
  if (v19 == *MEMORY[0x277D5C140])
  {
    v66 = v0[68];
    v67 = v0[54];
    v68 = v0[42];
    v69 = v437[43];
    v70 = v437[41];
    (*(v437[51] + 96))(v437[52], v437[50]);
    v71 = *(v68 + 32);
    v72 = OUTLINED_FUNCTION_8_3();
    v73(v72);
    v74 = OUTLINED_FUNCTION_5_19();
    v75(v74);
    v76 = sub_2698548B4();
    v77 = sub_269854F14();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = OUTLINED_FUNCTION_16_2();
      *v78 = 0;
      _os_log_impl(&dword_269684000, v76, v77, "ThirdPartyAppResolutionUtil#resolveApp getting App bundle ID from pegasusResult", v78, 2u);
      OUTLINED_FUNCTION_10();
    }

    v79 = v437[68];
    v81 = v437[54];
    v80 = v437[55];
    v82 = v437[43];
    v419 = v437[37];
    v83 = v437[36];
    v85 = v437[34];
    v84 = v437[35];
    v86 = v437[33];

    v435(v79, v81);
    sub_269853864();
    sub_2696D3C74();
    (*(v84 + 8))(v83, v85);
    if (__swift_getEnumTagSinglePayload(v86, 1, v419) == 1)
    {
      v87 = v437[67];
      v88 = v437[54];
      v89 = v437[33];

      sub_26969B0C0(v89, &qword_280323360, &unk_26985AB80);
      v90 = OUTLINED_FUNCTION_5_19();
      v91(v90);
      v92 = sub_2698548B4();
      v93 = sub_269854F14();
      v32 = v437;
      if (OUTLINED_FUNCTION_19_5(v93))
      {
        v94 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v94);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v95, v96, "ThirdPartyAppResolutionUtil#resolveApp pegasusResults missing videoClientComponent");
        OUTLINED_FUNCTION_18_7();
      }

      v97 = v437[67];
      v98 = v437[54];
      v99 = v437[55];
      v101 = v437[42];
      v100 = v437[43];
      v102 = v437[41];
      goto LABEL_84;
    }

    v143 = v437[42];
    v144 = v437[40];
    v401 = v437[41];
    v404 = v437[43];
    v146 = v437[37];
    v145 = v437[38];
    v147 = v437[32];
    v149 = v437[30];
    v148 = v437[31];
    (*(v145 + 32))(v144, v437[33], v146);
    sub_269852424();
    v418 = sub_269851FD4();
    v411 = v150;
    v151 = *(v148 + 8);
    v151(v147, v149);
    sub_269852424();
    v407 = sub_2698521E4();
    v415 = v152;
    v151(v147, v149);
    v153 = v144;
    v26 = v411;
    (*(v145 + 8))(v153, v146);
    (*(v143 + 8))(v404, v401);
    v32 = v437;
  }

  else
  {
    if (v19 != *MEMORY[0x277D5C148])
    {
      v219 = v0[62];
      v220 = v0[54];

      v221 = OUTLINED_FUNCTION_5_19();
      v222(v221);
      v223 = sub_2698548B4();
      v224 = sub_269854F24();
      if (OUTLINED_FUNCTION_19_4(v224))
      {
        v225 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v225);
        _os_log_impl(&dword_269684000, v223, v224, "ThirdPartyAppResolutionUtil#resolveApp unsupported intent type", v220, 2u);
        OUTLINED_FUNCTION_18_7();
      }

      v226 = v437[62];
      v227 = v437[55];
      v228 = v437[54];
      v229 = v437[52];
      v230 = v437[50];
      v231 = v437[20];

      v32 = v437;
      v435(v226, v228);
      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      v232 = OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_11_13(v232, (v231 + v233));
      *(v231 + v234) = 0;
      v18(v229, v230);
      goto LABEL_85;
    }

    v109 = v0[52];
    (*(v0[51] + 96))(v109, v0[50]);
    v110 = *v109;
    sub_2696D6C54();
    if (!v111)
    {
      v281 = v0[65];
      v282 = v0[54];

      v283 = OUTLINED_FUNCTION_5_19();
      v284(v283);
      v285 = sub_2698548B4();
      v286 = sub_269854F14();
      if (OUTLINED_FUNCTION_19_5(v286))
      {
        v287 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v287);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v288, v289, "ThirdPartyAppResolutionUtil#resolveApp pommesResponse missing VideoExperience");
        OUTLINED_FUNCTION_18_7();
      }

      v290 = v0[65];
      v291 = v0[54];
      v292 = v0[55];
      v293 = v437[20];

      v294 = OUTLINED_FUNCTION_6_18();
      v295(v294);
      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      goto LABEL_94;
    }

    v112 = v111;
    v410 = v110;
    v114 = v0[38];
    v113 = v0[39];
    v115 = v0[37];
    v116 = v0[31];
    v117 = v0[32];
    v118 = v0[30];
    sub_269854544();
    sub_269852424();
    v119 = *(v114 + 8);
    v120 = OUTLINED_FUNCTION_44_0();
    v119(v120);
    v121 = sub_2698521E4();
    v123 = v122;
    v124 = *(v116 + 8);
    v124(v117, v118);
    v125 = HIBYTE(v123) & 0xF;
    v407 = v121;
    if ((v123 & 0x2000000000000000) == 0)
    {
      v125 = v121 & 0xFFFFFFFFFFFFLL;
    }

    if (!v125)
    {
      v340 = v0[66];
      v341 = v0[54];

      v342 = OUTLINED_FUNCTION_5_19();
      v343(v342);
      v344 = sub_2698548B4();
      v345 = sub_269854F14();
      v32 = v0;
      if (OUTLINED_FUNCTION_19_5(v345))
      {
        v346 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v346);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v347, v348, "ThirdPartyAppResolutionUtil#resolveApp pommesResponse missing appBundleIdentifier");
        OUTLINED_FUNCTION_18_7();
      }

      v349 = v0[66];
      v350 = v0[54];
      v351 = v0[55];
      v352 = v437[20];

      v353 = OUTLINED_FUNCTION_6_18();
      v354(v353);
      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      v355 = OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_11_13(v355, (v352 + v356));
      *(v352 + v357) = 1;
      goto LABEL_85;
    }

    v415 = v123;
    v126 = v0[39];
    v127 = v0[37];
    v128 = v0[32];
    v403 = v0[30];
    sub_269854544();
    sub_269852424();
    (v119)(v126, v127);
    v418 = sub_269851FD4();
    v26 = v129;

    v124(v128, v403);
    v32 = v0;
  }

LABEL_44:
  v32[72] = v26;
  v154 = v32[61];
  v155 = v32[54];
  v156 = OUTLINED_FUNCTION_8_15();
  v157(v156);
  v158 = sub_2698548B4();
  v159 = v32;
  v160 = sub_269854F14();
  v161 = OUTLINED_FUNCTION_19_4(v160);
  v162 = v159[61];
  v164 = v159[54];
  v163 = v159[55];
  v412 = v26;
  if (v161)
  {
    v165 = OUTLINED_FUNCTION_27_2();
    v166 = OUTLINED_FUNCTION_9_3();
    v438[0] = v166;
    *v165 = 136315138;
    v167 = v415;

    v168 = sub_26974F520(v407, v415, v438);

    *(v165 + 4) = v168;
    _os_log_impl(&dword_269684000, v158, v160, "ThirdPartyAppResolutionUtil#resolveApp appId is %s", v165, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v166);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v169 = OUTLINED_FUNCTION_28_3();
    v170(v169);
  }

  else
  {

    v171 = OUTLINED_FUNCTION_28_3();
    v172(v171);
    v167 = v415;
  }

  v32 = v437;
  v173 = *(v437[22] + 88);
  v174 = sub_2697B934C();
  if (v175)
  {
    v176 = v174;
    v177 = v175;
    v178 = v437[60];
    v179 = v437[54];
    v180 = OUTLINED_FUNCTION_8_15();
    v181(v180);

    v173 = sub_2698548B4();
    v182 = sub_269854F14();

    v183 = os_log_type_enabled(v173, v182);
    v184 = v437[60];
    v186 = v437[54];
    v185 = v437[55];
    if (v183)
    {
      v187 = OUTLINED_FUNCTION_27_2();
      v188 = v176;
      v189 = OUTLINED_FUNCTION_9_3();
      v438[0] = v189;
      *v187 = 136315138;
      *(v187 + 4) = sub_26974F520(v188, v177, v438);
      _os_log_impl(&dword_269684000, v173, v182, "ThirdPartyAppResolutionUtil#resolveApp appId overridden to %s", v187, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v189);
      v176 = v188;
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    v435(v184, v186);

    v167 = v177;
    v32 = v437;
  }

  else
  {
    v176 = v407;
  }

  v32[73] = v167;
  if (v176 != 0xD000000000000020 || 0x800000026987D5B0 != v167)
  {
    OUTLINED_FUNCTION_24_6();
    if ((sub_269855584() & 1) == 0)
    {

      v197 = v176 == 0xD000000000000021 && 0x800000026987D6D0 == v167;
      v416 = v167;
      if (v197 || (OUTLINED_FUNCTION_24_6(), (sub_269855584() & 1) != 0))
      {
        v198 = v32[22];

        __swift_project_boxed_opaque_existential_1((v198 + 144), *(v198 + 168));
        sub_2697B62D0();
        v201 = v32[54];
        if (v200)
        {
          v202 = v199;
          v203 = v200;
          v204 = v32[59];
          v205 = OUTLINED_FUNCTION_8_15();
          v206(v205);

          v207 = sub_2698548B4();
          v208 = sub_269854F14();

          v209 = os_log_type_enabled(v207, v208);
          v210 = v32[59];
          v212 = v32[54];
          v211 = v32[55];
          if (v209)
          {
            v213 = OUTLINED_FUNCTION_27_2();
            v214 = OUTLINED_FUNCTION_9_3();
            v438[0] = v214;
            *v213 = 136315138;
            v215 = OUTLINED_FUNCTION_34_0();
            *(v213 + 4) = sub_26974F520(v215, v216, v217);
            _os_log_impl(&dword_269684000, v207, v208, "ThirdPartyAppResolutionUtil#resolveApp foreground app is %s", v213, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v214);
            v32 = v437;
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_10();
          }

          v435(v210, v212);
          v218 = v32[20];
          *v218 = v202;
          *(v218 + 8) = v203;
          *(v218 + 16) = 0;
          OUTLINED_FUNCTION_3_22();
          swift_storeEnumTagMultiPayload();

          goto LABEL_76;
        }

        v296 = v32[58];
        v297 = OUTLINED_FUNCTION_8_15();
        v298(v297);
        v299 = sub_2698548B4();
        v300 = sub_269854F14();
        if (OUTLINED_FUNCTION_19_5(v300))
        {
          v301 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_30_2(v301);
          OUTLINED_FUNCTION_31_0(&dword_269684000, v302, v303, "ThirdPartyAppResolutionUtil#resolveApp no foreground app found");
          OUTLINED_FUNCTION_18_7();
        }

        v304 = v32[58];
        v305 = v32[54];
        v306 = v32[55];
        v293 = v32[20];

        v307 = OUTLINED_FUNCTION_6_18();
        v308(v307);
        OUTLINED_FUNCTION_3_22();
        swift_storeEnumTagMultiPayload();

LABEL_94:
        v309 = OUTLINED_FUNCTION_7_20();
        OUTLINED_FUNCTION_11_13(v309, (v293 + v310));
        *(v293 + v311) = 0;
        goto LABEL_85;
      }

      __swift_project_boxed_opaque_existential_1((v32[22] + 264), *(v32[22] + 288));

      v312 = OUTLINED_FUNCTION_24_6();
      sub_2697ADE90(v312, v313, v314);

      if (!v32[15])
      {
        v358 = v32[20];

        sub_26969B0C0((v32 + 12), &unk_2803263B0, &unk_26985D0B0);
        OUTLINED_FUNCTION_3_22();
        swift_storeEnumTagMultiPayload();

        v359 = OUTLINED_FUNCTION_7_20();
        OUTLINED_FUNCTION_11_13(v359, (v358 + v360));
        *(v358 + v361) = 1;
        goto LABEL_85;
      }

      v315 = v32[22];
      sub_26968E5D4(v32 + 6, (v32 + 7));
      __swift_project_boxed_opaque_existential_1((v315 + 104), *(v315 + 128));
      OUTLINED_FUNCTION_26_6();

      v316 = OUTLINED_FUNCTION_24_6();
      sub_269832F24(v316);
      OUTLINED_FUNCTION_26_6();

      if (v173)
      {
      }

      else
      {
        __swift_project_boxed_opaque_existential_1((v315 + 104), *(v315 + 128));
        OUTLINED_FUNCTION_26_6();

        v317 = OUTLINED_FUNCTION_24_6();
        sub_269832854(v317);
        OUTLINED_FUNCTION_26_6();

        v389 = v32[10];
        v390 = v32[11];
        __swift_project_boxed_opaque_existential_1(v32 + 7, v389);
        v391 = (*(v390 + 40))(v389, v390);
        LOBYTE(v389) = sub_269807CB4(0xD000000000000014, 0x800000026987B820, v391);

        if ((v389 & 1) == 0 && (sub_2697B8B00() & 1) == 0)
        {
          v392 = v32[22];
          v218 = v32[20];

          __swift_project_boxed_opaque_existential_1((v392 + 184), *(v392 + 208));
          v393 = *v392;

          sub_2697DE598(v393);
          OUTLINED_FUNCTION_24_6();
          sub_2697B3BFC();

          __swift_destroy_boxed_opaque_existential_0(v32 + 7);
          *v218 = v176;
          *(v218 + 8) = v416;
          OUTLINED_FUNCTION_3_22();
LABEL_75:
          swift_storeEnumTagMultiPayload();
LABEL_76:
          v240 = OUTLINED_FUNCTION_7_20();
          OUTLINED_FUNCTION_11_13(v240, (v218 + v241));
          *(v218 + v242) = 0;
LABEL_85:
          v269 = v32[70];
          v270 = v32[69];
          v271 = v32[68];
          v272 = v32[67];
          v273 = v32[66];
          v274 = v32[65];
          v275 = v32[64];
          v276 = v437[63];
          v277 = v437[62];
          v278 = v437[61];
          v394 = v437[60];
          v395 = v437[59];
          v396 = v437[58];
          v397 = v437[57];
          v398 = v437[56];
          v399 = v437[53];
          v400 = v437[52];
          v402 = v437[49];
          v405 = v437[46];
          v408 = v437[45];
          v413 = v437[43];
          v417 = v437[40];
          v420 = v437[39];
          v423 = v437[36];
          v425 = v437[33];
          v428 = v437[32];
          v431 = v437[29];
          v434 = v437[28];
          v436 = v437[25];

          v279 = v437[1];
          v280 = *MEMORY[0x277D85DE8];

          return v279();
        }
      }

      v318 = v32[57];
      v319 = v32[54];
      v320 = v32[22];
      __swift_project_boxed_opaque_existential_1((v320 + 184), *(v320 + 208));
      v321 = *v320;

      v409 = v321;
      sub_2697DE598(v321);
      v421 = v176;
      sub_2697B3BFC();

      v322 = *(v320 + 256);
      __swift_project_boxed_opaque_existential_1((v320 + 224), *(v320 + 248));
      OUTLINED_FUNCTION_44_0();
      v323 = sub_269853474();
      v325 = v324;
      (v432)(v318, v429, v319);

      v326 = sub_2698548B4();
      v327 = v32;
      v328 = sub_269854F14();

      v329 = os_log_type_enabled(v326, v328);
      v330 = v327[57];
      v331 = v327[54];
      v332 = v327[55];
      v414 = v323;
      if (v329)
      {
        v333 = OUTLINED_FUNCTION_27_2();
        v406 = v331;
        v334 = OUTLINED_FUNCTION_9_3();
        v438[0] = v334;
        *v333 = 136315138;
        v327[17] = v323;
        v327[18] = v325;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
        v335 = sub_269854AE4();
        v337 = sub_26974F520(v335, v336, v438);

        *(v333 + 4) = v337;
        _os_log_impl(&dword_269684000, v326, v328, "ThirdPartyAppResolutionUtil#resolveApp requestId %s", v333, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v334);
        OUTLINED_FUNCTION_18_7();
        OUTLINED_FUNCTION_10();

        v338 = v330;
        v339 = v406;
      }

      else
      {

        v338 = v330;
        v339 = v331;
      }

      v435(v338, v339);
      if (v325)
      {
        v32 = v437;
        v363 = v437[23];
        v362 = v437[24];
        v364 = v437[22];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C08, &unk_26985C780);
        v365 = *(v362 + 72);
        v366 = (*(v362 + 80) + 32) & ~*(v362 + 80);
        v367 = swift_allocObject();
        *(v367 + 16) = xmmword_2698580D0;
        v368 = v367 + v366;
        *v368 = v409;
        *(v368 + 8) = v422;
        *(v368 + 16) = v424;
        *(v368 + 24) = v421;
        *(v368 + 32) = v416;
        OUTLINED_FUNCTION_34_0();
        swift_storeEnumTagMultiPayload();
        v369 = v368 + v365;
        *v369 = v409;
        *(v369 + 8) = v422;
        *(v369 + 16) = v424;
        *(v369 + 24) = v421;
        *(v369 + 32) = v416;
        *(v369 + 40) = v414;
        *(v369 + 48) = v325;
        swift_storeEnumTagMultiPayload();
        swift_bridgeObjectRetain_n();

        v370 = 0;
        v371 = 0;
        do
        {
          v372 = v370;
          sub_2697151CC(v368 + v371 * v365, v437[25], type metadata accessor for SignalRecordingContext);
          v373 = *__swift_project_boxed_opaque_existential_1((v364 + 48), *(v364 + 72));
          sub_2697F9524();
          if (v374)
          {
            v375 = v437[25];
            v376 = *__swift_project_boxed_opaque_existential_1((v364 + 48), *(v364 + 72));
            sub_2697F9BE8();
          }

          OUTLINED_FUNCTION_13_10(v437[25]);
          v370 = 1;
          v371 = 1;
        }

        while ((v372 & 1) == 0);
        swift_setDeallocating();
        sub_269819D6C();
        v377 = *__swift_project_boxed_opaque_existential_1((v364 + 48), *(v364 + 72));
        sub_2697FBD40();
      }

      else
      {
        v32 = v437;
        v378 = v437[56];
        v379 = v437[54];

        (v432)(v378, v429, v379);
        v380 = sub_2698548B4();
        v381 = sub_269854F24();
        v382 = OUTLINED_FUNCTION_19_4(v381);
        v384 = v437[55];
        v383 = v437[56];
        v385 = v437[54];
        if (v382)
        {
          v386 = OUTLINED_FUNCTION_16_2();
          *v386 = 0;
          _os_log_impl(&dword_269684000, v380, v381, "ThirdPartyAppResolutionUtil could not get request ID for play on 3p", v386, 2u);
          OUTLINED_FUNCTION_10();
        }

        v387 = OUTLINED_FUNCTION_6_18();
        v388(v387);
      }

      v218 = v32[20];
      __swift_destroy_boxed_opaque_existential_0(v32 + 7);
      *v218 = v421;
      *(v218 + 8) = v416;
      *(v218 + 16) = 0;
      OUTLINED_FUNCTION_3_22();
      goto LABEL_75;
    }
  }

  v191 = *v32[22];
  v192 = swift_task_alloc();
  v32[74] = v192;
  *v192 = v32;
  v192[1] = sub_2697139E4;
  v193 = v32[22];
  v194 = v32[20];
  v195 = *MEMORY[0x277D85DE8];

  return sub_26971413C(v194, v191, v422, v424, v418, v412);
}

uint64_t sub_2697139E4()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 576);
  v3 = *(*v0 + 568);
  v7 = *v0;

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_269713B4C, 0, 0);
}

uint64_t sub_269713B4C()
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = v0[73];

  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v9 = v0[63];
  v8 = v0[64];
  v10 = v0[61];
  v11 = v0[62];
  v15 = v0[60];
  v16 = v0[59];
  v17 = v0[58];
  v18 = v0[57];
  v19 = v0[56];
  v20 = v0[53];
  v21 = v0[52];
  v22 = v0[49];
  v23 = v0[46];
  v24 = v0[45];
  v25 = v0[43];
  v26 = v0[40];
  v27 = v0[39];
  v28 = v0[36];
  v29 = v0[33];
  v30 = v0[32];
  v31 = v0[29];
  v32 = v0[28];
  v33 = v0[25];

  v12 = v0[1];
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_269713D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse.Action(0);
  v5 = OUTLINED_FUNCTION_4_3(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v46 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D10, &qword_26985CB98);
  v17 = OUTLINED_FUNCTION_8_9(v16);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v46 - v21;
  v23 = &v46 + *(v20 + 56) - v21;
  sub_2697151CC(a1, &v46 - v21, type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse.Action);
  sub_2697151CC(a2, v23, type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse.Action);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v40 = OUTLINED_FUNCTION_1_17();
      sub_2697151CC(v40, v13, v41);
      v42 = *v13;
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_2803237A0, qword_26985B440) + 48);
      if (OUTLINED_FUNCTION_33_1() == 1)
      {
        v32 = sub_26981A618(v42, *v23);

        sub_26969B0C0(&v23[v43], &qword_280323798, &unk_26985C770);
        sub_26969B0C0(v13 + v43, &qword_280323798, &unk_26985C770);
        goto LABEL_26;
      }

      sub_26969B0C0(v13 + v43, &qword_280323798, &unk_26985C770);
      goto LABEL_20;
    case 2u:
      v33 = OUTLINED_FUNCTION_1_17();
      sub_2697151CC(v33, v10, v34);
      v36 = *v10;
      v35 = v10[1];
      if (OUTLINED_FUNCTION_33_1() != 2)
      {
        goto LABEL_20;
      }

      v37 = *v23;
      v38 = *(v23 + 1);
      if (v36 == v37 && v35 == v38)
      {
        v32 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_31_3();
        v32 = sub_269855584();
      }

      goto LABEL_26;
    case 3u:
      if (OUTLINED_FUNCTION_33_1() != 3)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_12_14();
      v32 = 1;
      return v32 & 1;
    default:
      v24 = OUTLINED_FUNCTION_1_17();
      sub_2697151CC(v24, v15, v25);
      v27 = *v15;
      v26 = *(v15 + 1);
      v28 = v15[16];
      if (!OUTLINED_FUNCTION_33_1())
      {
        v29 = v23[16];
        if (v27 == *v23 && v26 == *(v23 + 1))
        {
          v44 = *(v23 + 1);
        }

        else
        {
          OUTLINED_FUNCTION_31_3();
          v31 = sub_269855584();

          v32 = 0;
          if ((v31 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v32 = v28 ^ v29 ^ 1;
LABEL_26:
        OUTLINED_FUNCTION_12_14();
        return v32 & 1;
      }

LABEL_20:

LABEL_21:
      sub_26969B0C0(v22, &qword_280323D10, &qword_26985CB98);
      v32 = 0;
      return v32 & 1;
  }
}

uint64_t sub_269714098(uint64_t a1, uint64_t a2)
{
  if ((sub_269713D54(a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  v4 = type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      v10 = *v6 == *v8 && v7 == v9;
      if (v10 || (sub_269855584() & 1) != 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v11 = 0;
    return v11 & 1;
  }

  if (v9)
  {
    goto LABEL_11;
  }

LABEL_9:
  v11 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  return v11 & 1;
}

uint64_t sub_26971413C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 48) = a4;
  *(v7 + 56) = a5;
  *(v7 + 216) = a2;
  *(v7 + 32) = a1;
  *(v7 + 40) = a3;
  v8 = type metadata accessor for AppDisambiguationContext(0);
  *(v7 + 80) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  v10 = type metadata accessor for SignalRecordingContext();
  *(v7 + 96) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323CC8, &unk_269866680) - 8) + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  v13 = sub_2698548D4();
  *(v7 + 120) = v13;
  v14 = *(v13 - 8);
  *(v7 + 128) = v14;
  v15 = *(v14 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  v16 = type metadata accessor for AppSelectionResult(0);
  *(v7 + 160) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26971430C, 0, 0);
}

uint64_t sub_26971430C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 216);
  v3 = v1[4];
  v4 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v3);
  v5 = v1[32];
  __swift_project_boxed_opaque_existential_1(v1 + 28, v1[31]);
  v6 = sub_269853474();
  v8 = v7;
  *(v0 + 200) = v7;
  v9 = *(v4 + 8);
  v16 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 208) = v11;
  *v11 = v0;
  v11[1] = sub_269714490;
  v12 = *(v0 + 192);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);

  return (v16)(v12, v2 & 1, v13, v14, v6, v8, v3, v4);
}

uint64_t sub_269714490()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2697145A8, 0, 0);
}

uint64_t sub_2697145A8()
{
  v180 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = __swift_project_value_buffer(*(v0 + 120), qword_28033D910);
  v6 = *(v4 + 16);
  v177 = v5;
  v6(v3);
  OUTLINED_FUNCTION_2_16();
  v7 = OUTLINED_FUNCTION_25_2();
  sub_2697151CC(v7, v8, v9);
  v10 = sub_2698548B4();
  v11 = sub_269854F14();
  v12 = OUTLINED_FUNCTION_19_4(v11);
  v13 = *(v0 + 184);
  if (v12)
  {
    v14 = *(v0 + 176);
    v15 = *(v0 + 160);
    v16 = *(v0 + 128);
    v171 = *(v0 + 120);
    v172 = *(v0 + 152);
    v17 = OUTLINED_FUNCTION_27_2();
    v173 = v6;
    v18 = OUTLINED_FUNCTION_9_3();
    v179 = v18;
    *v17 = 136315138;
    OUTLINED_FUNCTION_2_16();
    sub_2697151CC(v13, v14, v19);
    v20 = sub_269854AE4();
    v22 = v21;
    OUTLINED_FUNCTION_0_25();
    sub_269715174(v13, v23);
    v24 = sub_26974F520(v20, v22, &v179);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_269684000, v10, v11, "SmartAppSelector predict result: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v6 = v173;
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v25 = *(v16 + 8);
    v25(v172, v171);
  }

  else
  {
    v26 = *(v0 + 152);
    v27 = *(v0 + 120);
    v28 = *(v0 + 128);

    OUTLINED_FUNCTION_0_25();
    sub_269715174(v13, v29);
    v25 = *(v28 + 8);
    v25(v26, v27);
  }

  v30 = *(v0 + 192);
  v31 = *(v0 + 160);
  v32 = *(v0 + 168);
  OUTLINED_FUNCTION_2_16();
  sub_2697151CC(v33, v32, v34);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v85 = *(v0 + 88);
      sub_26971522C(*(v0 + 168), v85);
      v86 = *v85;
      v87 = *(*v85 + 16);
      v88 = MEMORY[0x277D84F90];
      if (v87)
      {
        v179 = MEMORY[0x277D84F90];
        sub_269814F0C(0, v87, 0);
        v88 = v179;
        v89 = *(v179 + 16);
        v90 = 16 * v89;
        v91 = (v86 + 40);
        do
        {
          v93 = *(v91 - 1);
          v92 = *v91;
          v179 = v88;
          v94 = v89 + 1;
          v95 = *(v88 + 24);

          if (v89 >= v95 >> 1)
          {
            sub_269814F0C(v95 > 1, v94, 1);
            v88 = v179;
          }

          *(v88 + 16) = v94;
          v96 = v88 + v90;
          *(v96 + 32) = v93;
          *(v96 + 40) = v92;
          v90 += 16;
          v91 += 3;
          ++v89;
          --v87;
        }

        while (v87);
      }

      v97 = *(v0 + 192);
      v99 = *(v0 + 80);
      v98 = *(v0 + 88);
      v100 = *(v0 + 72);
      v101 = *(v0 + 32);
      sub_269714F5C(*(v98 + *(v99 + 40)), *(v98 + *(v99 + 40) + 8));
      OUTLINED_FUNCTION_0_25();
      sub_269715174(v97, v102);
      v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_2803237A0, qword_26985B440) + 48);
      *v101 = v88;
      sub_2697151CC(v98, v101 + v103, type metadata accessor for AppDisambiguationContext);
      __swift_storeEnumTagSinglePayload(v101 + v103, 0, 1, v99);
      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      v104 = OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_11_13(v104, (v101 + v105));
      *(v101 + v106) = 0;
      sub_269715174(v98, type metadata accessor for AppDisambiguationContext);
      goto LABEL_40;
    case 2u:
      v54 = *(v0 + 168);
      OUTLINED_FUNCTION_0_25();
      sub_269715174(v55, v56);
      goto LABEL_11;
    case 3u:
      v47 = *(v0 + 168);
      v48 = *(v0 + 32);
      sub_269715174(*(v0 + 192), type metadata accessor for AppSelectionResult);
      v49 = OUTLINED_FUNCTION_25_2();
      sub_269715174(v49, v50);
      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      v51 = OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_11_13(v51, (v48 + v52));
      *(v48 + v53) = 0;
      goto LABEL_40;
    case 4u:
      v107 = *(v0 + 72);
      v108 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1(v107 + 33, v107[36]);
      v109 = __swift_project_boxed_opaque_existential_1(v107 + 38, v107[41]);
      __swift_project_boxed_opaque_existential_1(v107 + 43, v107[46]);
      v110 = sub_2697F17C8(v108 & 1, MEMORY[0x277D84FA0], MEMORY[0x277D84FA0], *v109);
      v111 = v110;
      v112 = v110[2];
      v113 = *(v0 + 192);
      if (v112 == 1)
      {
        v114 = *(v0 + 32);
        v116 = v110[4];
        v115 = v110[5];

        OUTLINED_FUNCTION_0_25();
        sub_269715174(v113, v117);
        *v114 = v116;
        *(v114 + 8) = v115;
        *(v114 + 16) = 0;
        OUTLINED_FUNCTION_3_22();
LABEL_29:
        swift_storeEnumTagMultiPayload();
        v125 = OUTLINED_FUNCTION_7_20();
        OUTLINED_FUNCTION_11_13(v125, (v114 + v126));
        *(v114 + v127) = 0;
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_0_25();
      sub_269715174(v113, v122);
      if (v112)
      {
        v123 = *(v0 + 80);
        v114 = *(v0 + 32);
        v124 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_2803237A0, qword_26985B440) + 48);
        *v114 = v111;
        __swift_storeEnumTagSinglePayload(v114 + v124, 1, 1, v123);
        OUTLINED_FUNCTION_3_22();
        goto LABEL_29;
      }

      v140 = *(v0 + 56);
      v139 = *(v0 + 64);
      v141 = *(v0 + 32);

      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      v142 = OUTLINED_FUNCTION_7_20();
      v144 = (v141 + v143);
      *v144 = v140;
      v144[1] = v139;
      *(v141 + *(v142 + 24)) = 0;
LABEL_15:

      goto LABEL_40;
    case 5u:
LABEL_11:
      v57 = *(v0 + 136);
      v58 = *(v0 + 120);
      v59 = *(v0 + 72);
      v60 = v59[32];
      __swift_project_boxed_opaque_existential_1(v59 + 28, v59[31]);
      OUTLINED_FUNCTION_34_0();
      v61 = sub_269853474();
      v63 = v62;
      (v6)(v57, v177, v58);

      v64 = sub_2698548B4();
      v65 = sub_269854F14();

      v66 = os_log_type_enabled(v64, v65);
      v67 = *(v0 + 128);
      v68 = *(v0 + 136);
      v69 = *(v0 + 120);
      if (v66)
      {
        v178 = v61;
        v70 = OUTLINED_FUNCTION_27_2();
        v71 = OUTLINED_FUNCTION_9_3();
        v179 = v71;
        *v70 = 136315138;
        *(v0 + 16) = v178;
        *(v0 + 24) = v63;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
        v72 = sub_269854AE4();
        v175 = v68;
        v74 = sub_26974F520(v72, v73, &v179);

        *(v70 + 4) = v74;
        _os_log_impl(&dword_269684000, v64, v65, "ThirdPartyAppResolutionUtil#resolveWithSmartAppSelection requestId %s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        OUTLINED_FUNCTION_10();
        v61 = v178;
        OUTLINED_FUNCTION_10();

        v25(v175, v69);
      }

      else
      {

        v75 = OUTLINED_FUNCTION_44_0();
        (v25)(v75);
      }

      v76 = *(v0 + 192);
      v78 = *(v0 + 64);
      v77 = *(v0 + 72);
      v79 = *(v0 + 56);
      v80 = *(v0 + 32);
      sub_269714F5C(v61, v63);

      OUTLINED_FUNCTION_0_25();
      sub_269715174(v76, v81);
      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      v82 = OUTLINED_FUNCTION_7_20();
      v84 = (v80 + v83);
      *v84 = v79;
      v84[1] = v78;
      *(v80 + *(v82 + 24)) = 0;
      goto LABEL_15;
    default:
      v35 = *(v0 + 168);
      v36 = *(v0 + 112);
      v37 = v35[1];
      v174 = *v35;
      v38 = v35[2];
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F48, &unk_2698667E0);
      v40 = (v35 + *(v39 + 80));
      v42 = *v40;
      v41 = v40[1];
      sub_269715290(v35 + *(v39 + 64), v36);
      v43 = type metadata accessor for ModelParams(0);
      if (__swift_getEnumTagSinglePayload(v36, 1, v43) == 1)
      {
        v44 = *(v0 + 192);
        OUTLINED_FUNCTION_0_25();
        sub_269715174(v45, v46);

LABEL_26:

        goto LABEL_39;
      }

      v118 = *(v38 + 16);

      if (v118 <= 1)
      {
        v119 = *(v0 + 192);
        OUTLINED_FUNCTION_0_25();
        sub_269715174(v120, v121);
        goto LABEL_26;
      }

      v128 = *(v0 + 72);
      v129 = OUTLINED_FUNCTION_31_3();
      sub_269714F5C(v129, v130);
      if (v41)
      {
        v131 = *(v0 + 96);
        v132 = *(v0 + 104);
        v133 = *(v0 + 72);
        *v132 = v42;
        v132[1] = v41;
        swift_storeEnumTagMultiPayload();
        v134 = *__swift_project_boxed_opaque_existential_1((v133 + 48), *(v133 + 72));
        sub_2697F9524();
        if (v135)
        {
          v136 = *(v0 + 104);
          v137 = *__swift_project_boxed_opaque_existential_1((v133 + 48), *(v133 + 72));
          sub_2697F9BE8();
        }

        v138 = *(v0 + 192);
        OUTLINED_FUNCTION_13_10(*(v0 + 104));
      }

      else
      {
        v176 = v25;
        (v6)(*(v0 + 144), v177, *(v0 + 120));
        v145 = sub_2698548B4();
        v146 = sub_269854F24();
        v147 = os_log_type_enabled(v145, v146);
        v138 = *(v0 + 192);
        v148 = *(v0 + 144);
        v149 = *(v0 + 120);
        v150 = *(v0 + 128);
        if (v147)
        {
          v151 = OUTLINED_FUNCTION_16_2();
          *v151 = 0;
          _os_log_impl(&dword_269684000, v145, v146, "ThirdPartyAppResolutionUtil could not get request ID for evaluation message", v151, 2u);
          OUTLINED_FUNCTION_10();
        }

        v152 = OUTLINED_FUNCTION_34_0();
        v176(v152);
      }

      OUTLINED_FUNCTION_0_25();
      sub_269715174(v138, v153);
LABEL_39:
      v154 = *(v0 + 112);
      v155 = *(v0 + 32);
      *v155 = v174;
      *(v155 + 8) = v37;
      *(v155 + 16) = 1;
      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      v156 = OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_11_13(v156, (v155 + v157));
      *(v155 + v158) = 0;
      sub_26969B0C0(v154, &qword_280323CC8, &unk_269866680);
LABEL_40:
      v160 = *(v0 + 184);
      v159 = *(v0 + 192);
      v162 = *(v0 + 168);
      v161 = *(v0 + 176);
      v164 = *(v0 + 144);
      v163 = *(v0 + 152);
      v165 = *(v0 + 136);
      v167 = *(v0 + 104);
      v166 = *(v0 + 112);
      v168 = *(v0 + 88);

      v169 = *(v0 + 8);

      return v169();
  }
}

void sub_269714F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2698548D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = *__swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
    sub_2697FBD40();
  }

  else
  {
    if (qword_2803226E0 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v4, qword_28033D910);
    (*(v5 + 16))(v8, v10, v4);
    v11 = sub_2698548B4();
    v12 = sub_269854F24();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_269684000, v11, v12, "ThirdPartyAppResolutionUtil no request ID for trigger message", v13, 2u);
      MEMORY[0x26D647170](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_269715174(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2697151CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_3(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26971522C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppDisambiguationContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269715290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323CC8, &unk_269866680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269715308(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 384))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_269715348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269715424()
{
  type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse.Action(319);
  if (v0 <= 0x3F)
  {
    sub_2697154B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2697154B0()
{
  if (!qword_280323CE0)
  {
    v0 = sub_2698550A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280323CE0);
    }
  }
}

void sub_269715500()
{
  sub_269715588();
  if (v0 <= 0x3F)
  {
    sub_2697155EC();
    if (v1 <= 0x3F)
    {
      sub_269715678();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_269715588()
{
  if (!qword_280323CF8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280323CF8);
    }
  }
}

void sub_2697155EC()
{
  if (!qword_280323D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322878, &qword_2698587A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323798, &unk_26985C770);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280323D00);
    }
  }
}

uint64_t sub_269715678()
{
  result = qword_280323D08;
  if (!qword_280323D08)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280323D08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_19()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_18()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_20()
{
  result = type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_15()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_13@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = *(result + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_14()
{

  return sub_269715174(v0, type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse.Action);
}

uint64_t OUTLINED_FUNCTION_13_10(uint64_t a1)
{

  return sub_269715174(a1, type metadata accessor for SignalRecordingContext);
}

uint64_t OUTLINED_FUNCTION_28_3()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return swift_getEnumCaseMultiPayload();
}

BOOL sub_2697157F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v5 = *(v0 + 144);
  if (v5 != 1)
  {
    v6 = sub_269853854();
    v7 = *(*(v6 - 8) + 16);
    v8 = OUTLINED_FUNCTION_22_3();
    v9(v8);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
    v10 = OBJC_IVAR____TtC16SiriVideoIntents25ThirdPartyFindWrapperFlow_input;
    swift_beginAccess();
    sub_269702838(v4, v0 + v10);
    swift_endAccess();
  }

  return v5 != 1;
}

uint64_t sub_269715910()
{
  OUTLINED_FUNCTION_2_7();
  v1[14] = v2;
  v1[15] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D50, &unk_2698605C0);
  v1[16] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[17] = v4;
  v6 = *(v5 + 64);
  v1[18] = OUTLINED_FUNCTION_4_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D58, &unk_26985CD10);
  v1[19] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[20] = v8;
  v10 = *(v9 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v11 = sub_2698548D4();
  v1[23] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[24] = v12;
  v14 = *(v13 + 64);
  v1[25] = OUTLINED_FUNCTION_4_7();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0) - 8) + 64);
  v1[26] = OUTLINED_FUNCTION_4_7();
  v16 = sub_269853854();
  v1[27] = v16;
  OUTLINED_FUNCTION_5_12(v16);
  v1[28] = v17;
  v19 = *(v18 + 64);
  v1[29] = OUTLINED_FUNCTION_4_7();
  v20 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

void sub_269715AF4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 120);
  v4 = OBJC_IVAR____TtC16SiriVideoIntents25ThirdPartyFindWrapperFlow_input;
  swift_beginAccess();
  sub_26970897C(v3 + v4, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
  {
    (*(*(v0 + 224) + 32))(*(v0 + 232), *(v0 + 208), *(v0 + 216));
    *(v0 + 40) = &type metadata for SiriVideoFeatureKeys;
    v5 = sub_2696A2978();
    *(v0 + 16) = 3;
    *(v0 + 48) = v5;
    v6 = sub_269853B34();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    if (v6)
    {
      v7 = *(v0 + 120);
      v8 = *(v7 + 136);
      *(v0 + 240) = v8;
      v9 = *(v7 + 144);
      *(v0 + 248) = v9;
      v10 = *(v7 + 152);
      *(v0 + 264) = v10;
      switch(v9)
      {
        case 0uLL:
          v12 = *(v0 + 224);
          v11 = *(v0 + 232);
          v72 = *(v0 + 112);
          v74 = *(v0 + 216);
          v13 = *(v7 + 128);
          __swift_project_boxed_opaque_existential_1((v7 + 96), *(v7 + 120));
          sub_269852C74();

          sub_269852C64();
          sub_269852BC4();

          sub_26971683C(v11);
          (*(v12 + 8))(v11, v74);
          break;
        case 1uLL:
        case 3uLL:
          goto LABEL_3;
        case 2uLL:
          v35 = *(v0 + 224);
          v34 = *(v0 + 232);
          v36 = *(v0 + 216);
          v37 = *(v0 + 112);
          sub_269853524();
          v38 = sub_269852774();
          v39 = *(v38 + 48);
          v40 = *(v38 + 52);
          swift_allocObject();
          *(v0 + 104) = sub_269852764();
          sub_269853144();

          v41 = *(v35 + 8);
          v42 = OUTLINED_FUNCTION_22_3();
          v43(v42);
          break;
        default:
          if (v10 >> 8)
          {
            if (v10 >> 8 == 1)
            {

              v44 = swift_task_alloc();
              *(v0 + 256) = v44;
              *v44 = v0;
              v44[1] = sub_2697162EC;
              v45 = *(v0 + 232);
              v46 = *(v0 + 112);
              v47 = *(v0 + 120);
              OUTLINED_FUNCTION_11_14();

              sub_269716C34();
              return;
            }

            v56 = *(v0 + 224);
            v55 = *(v0 + 232);
            v57 = *(v0 + 216);
            v58 = *(v0 + 112);
            v59 = swift_allocObject();
            *(v59 + 16) = v8;
            *(v59 + 24) = v9;
            *(v59 + 32) = v10 & 1;
            *(v59 + 33) = 2;
            v60 = OUTLINED_FUNCTION_6_19();
            sub_269717780(v60, v61);

            sub_269853524();
            v62 = sub_269852774();
            v63 = *(v62 + 48);
            v64 = *(v62 + 52);
            swift_allocObject();
            *(v0 + 96) = sub_269852764();
            sub_269853144();
            v65 = OUTLINED_FUNCTION_6_19();
            sub_269717660(v65, v66);

            (*(v56 + 8))(v55, v57);
          }

          else
          {
            v50 = *(v0 + 224);
            v49 = *(v0 + 232);
            v51 = *(v0 + 216);
            v52 = *(v0 + 112);

            sub_2697169FC(v49, v8, v9);
            v53 = OUTLINED_FUNCTION_6_19();
            sub_269717660(v53, v54);
            (*(v50 + 8))(v49, v51);
          }

          break;
      }
    }

    else
    {
      if (qword_280322700 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v15 = *(v0 + 192);
      v14 = *(v0 + 200);
      v16 = *(v0 + 184);
      v17 = __swift_project_value_buffer(v16, qword_281571B38);
      (*(v15 + 16))(v14, v17, v16);
      v18 = sub_2698548B4();
      v19 = sub_269854F44();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_269684000, v18, v19, "AppIntents feature flag disabled, using app resolving RCHFlow", v20, 2u);
        OUTLINED_FUNCTION_10();
      }

      v71 = *(v0 + 232);
      v73 = *(v0 + 224);
      v75 = *(v0 + 216);
      v22 = *(v0 + 192);
      v21 = *(v0 + 200);
      v24 = *(v0 + 176);
      v23 = *(v0 + 184);
      v26 = *(v0 + 160);
      v25 = *(v0 + 168);
      v27 = *(v0 + 152);
      v67 = *(v0 + 144);
      v68 = *(v0 + 128);
      v69 = *(v0 + 136);
      v70 = *(v0 + 112);

      (*(v22 + 8))(v21, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D40, &unk_26985CD00);
      v28 = swift_allocObject();
      sub_26979927C();
      (*(v26 + 16))(v25, v24, v27);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D60, &unk_26985CD20);
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      sub_269852B24();
      *(v0 + 80) = v28;
      sub_269693204(&qword_280323D68, &qword_280323D40, &unk_26985CD00);

      sub_269853064();
      *(v0 + 88) = sub_269853044();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D70, &qword_2698605D0);
      sub_269693204(&qword_280323D78, &qword_280323D70, &qword_2698605D0);
      sub_269852B34();

      (*(v69 + 8))(v67, v68);
      (*(v26 + 8))(v24, v27);
      sub_269852A14();
      sub_269853154();

      (*(v73 + 8))(v71, v75);
    }

    OUTLINED_FUNCTION_12_15();

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_11_14();

    __asm { BRAA            X1, X16 }
  }

  sub_2697089EC(*(v0 + 208));
LABEL_3:
  sub_269855354();
  OUTLINED_FUNCTION_11_14();
}

uint64_t sub_2697162EC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 256);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2697163D0()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 264);
  sub_269717660(*(v0 + 240), *(v0 + 248));
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_12_15();

  OUTLINED_FUNCTION_7_7();

  return v5();
}

uint64_t sub_26971648C(uint64_t a1)
{
  v3 = *(MEMORY[0x277D5C040] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2696DA938;

  return MEMORY[0x2821BB9F8](a1, 0, 0);
}

uint64_t sub_269716530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_269716554, 0, 0);
}

void sub_269716554()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_269854404();

  v0[5] = sub_2698543E4();
  v3 = *(MEMORY[0x277D5C048] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_269716628;
  v5 = v0[2];

  JUMPOUT(0x269853784);
}

uint64_t sub_269716628()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  v4 = *(v2 + 48);
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_269716750, 0, 0);
  }

  else
  {
    v7 = *(v3 + 40);

    OUTLINED_FUNCTION_7_7();

    return v8();
  }
}

uint64_t sub_269716750()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_7_7();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_2697167AC()
{
  type metadata accessor for ThirdPartyFindWrapperFlow();
  sub_26971767C(&qword_280323D48, type metadata accessor for ThirdPartyFindWrapperFlow);
  return sub_269852B54();
}

uint64_t sub_26971683C(uint64_t a1)
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  *(v1 + 136) = xmmword_26985C790;
  v5 = *(v1 + 152);
  *(v1 + 152) = 0;
  sub_269717660(v3, v4);
  type metadata accessor for ThirdPartyAppResolutionFlow();
  sub_26970F314();
  sub_26970F9C8(a1);
  sub_26971767C(&qword_280323CB8, type metadata accessor for ThirdPartyAppResolutionFlow);
  sub_269852B44();

  sub_269853134();
}

uint64_t sub_26971694C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    v5 = *(a2 + 136);
    v6 = *(a2 + 144);
    v7 = xmmword_26985C7A0;
LABEL_5:
    *(a2 + 136) = v7;
    v8 = *(a2 + 152);
    *(a2 + 152) = 0;
    v9 = v6;

    return sub_269717660(v5, v9);
  }

  if (v4 == 1)
  {
    v5 = *(a2 + 136);
    v6 = *(a2 + 144);
    v7 = xmmword_26985CBA0;
    goto LABEL_5;
  }

  v11 = *(a1 + 16);
  v12 = *(a2 + 136);
  v13 = *(a2 + 144);
  *(a2 + 136) = *a1;
  *(a2 + 144) = v4;
  v14 = *(a2 + 152);
  *(a2 + 152) = v11 & 0xFF01;

  v5 = v12;
  v9 = v13;

  return sub_269717660(v5, v9);
}

uint64_t sub_2697169FC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v13 = __swift_project_value_buffer(v8, qword_281571B38);
  (*(v9 + 16))(v12, v13, v8);

  v14 = sub_2698548B4();
  v15 = sub_269854F44();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22 = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v23 = a1;
    v24 = v18;
    v19 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_26974F520(a2, a3, &v24);
    _os_log_impl(&dword_269684000, v14, v15, "Executing AppIntents flow with bundleId: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_10();
    v4 = v22;
    OUTLINED_FUNCTION_10();
  }

  (*(v9 + 8))(v12, v8);
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  sub_26979B798();
  sub_269852A14();
  sub_269853154();
}

uint64_t sub_269716C34()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 128) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 16) = v6;
  v7 = sub_2698538B4();
  *(v1 + 56) = v7;
  OUTLINED_FUNCTION_5_12(v7);
  *(v1 + 64) = v8;
  v10 = *(v9 + 64);
  *(v1 + 72) = OUTLINED_FUNCTION_4_7();
  v11 = sub_2698548D4();
  *(v1 + 80) = v11;
  OUTLINED_FUNCTION_5_12(v11);
  *(v1 + 88) = v12;
  v14 = *(v13 + 64);
  *(v1 + 96) = OUTLINED_FUNCTION_4_7();
  v15 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_269716D30()
{
  v25 = v0;
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[5];
  v5 = __swift_project_value_buffer(v3, qword_281571B38);
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_2698548B4();
  v7 = sub_269854F44();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  if (v8)
  {
    v13 = v0[4];
    v12 = v0[5];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_26974F520(v13, v12, &v24);
    _os_log_impl(&dword_269684000, v6, v7, "Executing RCHFlow with bundleId: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v16 = *(v10 + 8);
  v17 = OUTLINED_FUNCTION_22_3();
  v18(v17);
  v19 = v0[9];
  v20 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D40, &unk_26985CD00);
  v0[13] = swift_allocObject();
  sub_269853844();
  v21 = swift_task_alloc();
  v0[14] = v21;
  *v21 = v0;
  v21[1] = sub_269716F64;
  v22 = v0[9];

  return sub_2697177E0();
}

uint64_t sub_269716F64(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v5 = *v2;
  *(*v2 + 120) = a1;

  v6 = v3[9];
  v7 = v3[8];
  v8 = v3[7];
  if (v1)
  {

    v9 = *(v7 + 8);
    v10 = OUTLINED_FUNCTION_22_3();
    v11(v10);
    v12 = sub_2697171F0;
  }

  else
  {
    v13 = *(v7 + 8);
    v14 = OUTLINED_FUNCTION_22_3();
    v15(v14);
    v12 = sub_2697170FC;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2697170FC()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 120);
    sub_2697A1F9C();
  }

  v2 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);
  v6 = *(v0 + 40);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1((*(v0 + 48) + 56), *(*(v0 + 48) + 80));
  v9 = v2;
  sub_26979B4A8();

  sub_269853154();

  OUTLINED_FUNCTION_7_7();

  return v10();
}

uint64_t sub_269717270()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v1 = *(v0 + 152);
  sub_269717660(*(v0 + 136), *(v0 + 144));
  sub_2697089EC(v0 + OBJC_IVAR____TtC16SiriVideoIntents25ThirdPartyFindWrapperFlow_input);
  return v0;
}

uint64_t sub_2697172BC()
{
  sub_269717270();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ThirdPartyFindWrapperFlow()
{
  result = qword_280323D30;
  if (!qword_280323D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269717368()
{
  sub_2697012B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents25ThirdPartyFindWrapperFlowC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_269717428(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 18))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2697174B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2696E1660;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_269717588()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return sub_269715910();
}

uint64_t sub_269717624()
{
  type metadata accessor for ThirdPartyFindWrapperFlow();

  return sub_269852B84();
}

uint64_t sub_269717660(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_26971767C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2697176C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32) | (*(v1 + 33) << 8);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2696DA938;

  return sub_269716530(a1, v4, v5);
}

uint64_t sub_269717780(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_15()
{
  v2 = v0[29];
  v3 = v0[25];
  v4 = v0[26];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[18];
}

uint64_t sub_2697177E0()
{
  OUTLINED_FUNCTION_2_7();
  v39 = *MEMORY[0x277D85DE8];
  v0[9] = v1;
  v0[10] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v0[11] = OUTLINED_FUNCTION_4_7();
  v6 = sub_269851EF4();
  v0[12] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v0[13] = v7;
  v9 = *(v8 + 64);
  v0[14] = OUTLINED_FUNCTION_4_7();
  v10 = sub_269852474();
  v0[15] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v0[16] = v11;
  v13 = *(v12 + 64);
  v0[17] = OUTLINED_FUNCTION_37_0();
  v0[18] = swift_task_alloc();
  v14 = sub_2698538A4();
  v0[19] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v0[20] = v15;
  v17 = *(v16 + 64);
  v0[21] = OUTLINED_FUNCTION_4_7();
  v18 = sub_269853874();
  v0[22] = v18;
  OUTLINED_FUNCTION_5_12(v18);
  v0[23] = v19;
  v21 = *(v20 + 64);
  v0[24] = OUTLINED_FUNCTION_4_7();
  v22 = sub_2698548D4();
  v0[25] = v22;
  OUTLINED_FUNCTION_5_12(v22);
  v0[26] = v23;
  v25 = *(v24 + 64);
  v0[27] = OUTLINED_FUNCTION_37_0();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v26 = sub_269853F44();
  v0[35] = v26;
  OUTLINED_FUNCTION_5_12(v26);
  v0[36] = v27;
  v29 = *(v28 + 64);
  v0[37] = OUTLINED_FUNCTION_37_0();
  v0[38] = swift_task_alloc();
  v30 = sub_2698538B4();
  v0[39] = v30;
  OUTLINED_FUNCTION_5_12(v30);
  v0[40] = v31;
  v33 = *(v32 + 64);
  v0[41] = OUTLINED_FUNCTION_37_0();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v0[45] = swift_task_alloc();
  v34 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_269718A64(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v2[9] = a1;
  v2[10] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v4 = sub_269851EF4();
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v6 = *(v5 + 64) + 15;
  v2[14] = swift_task_alloc();
  v7 = sub_269852474();
  v2[15] = v7;
  v8 = *(v7 - 8);
  v2[16] = v8;
  v9 = *(v8 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v10 = sub_2698538A4();
  v2[19] = v10;
  v11 = *(v10 - 8);
  v2[20] = v11;
  v12 = *(v11 + 64) + 15;
  v2[21] = swift_task_alloc();
  v13 = sub_269853874();
  v2[22] = v13;
  v14 = *(v13 - 8);
  v2[23] = v14;
  v15 = *(v14 + 64) + 15;
  v2[24] = swift_task_alloc();
  v16 = sub_2698548D4();
  v2[25] = v16;
  v17 = *(v16 - 8);
  v2[26] = v17;
  v18 = *(v17 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v19 = sub_269853F44();
  v2[35] = v19;
  v20 = *(v19 - 8);
  v2[36] = v20;
  v21 = *(v20 + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v22 = sub_2698538B4();
  v2[39] = v22;
  v23 = *(v22 - 8);
  v2[40] = v23;
  v24 = *(v23 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v25 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_269718E4C, 0, 0);
}

void sub_269719D6C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  v6 = [v2 mediaSearch];
  if (!v6)
  {
    sub_26969329C(0, &qword_280322DB8, 0x277CD3DC8);
    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_83_0();
    v6 = sub_269854ED4();
  }

  v7 = a2(a1);
  v8 = OUTLINED_FUNCTION_54();
  [v4 setValue:v7 forKey:v8];
}

void sub_269719E58()
{
  v1 = v0;
  sub_26969329C(0, &qword_280322DB8, 0x277CD3DC8);

  OUTLINED_FUNCTION_83_0();
  v2 = sub_269854ED4();
  v3 = OUTLINED_FUNCTION_54();
  [v1 setValue:v2 forKey:{v3, 0, 0, 0, 0, 0, 0}];
}

BOOL sub_269719F24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v2 = OUTLINED_FUNCTION_8_9(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = *(v0 + 304);
  if (v7 != 1)
  {
    v8 = sub_269853854();
    OUTLINED_FUNCTION_4_3(v8);
    v10 = *(v9 + 16);
    v11 = OUTLINED_FUNCTION_22_3();
    v12(v11);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
    v13 = OBJC_IVAR____TtC16SiriVideoIntents25ThirdPartyPlayWrapperFlow_input;
    swift_beginAccess();
    sub_269702838(v6, v13 + v0);
    swift_endAccess();
  }

  return v7 != 1;
}

uint64_t sub_26971A030()
{
  OUTLINED_FUNCTION_2_7();
  v1[14] = v2;
  v1[15] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DB8, &unk_269860580);
  v1[16] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[17] = v4;
  v6 = *(v5 + 64);
  v1[18] = OUTLINED_FUNCTION_4_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DC0, &unk_26985CF00);
  v1[19] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[20] = v8;
  v10 = *(v9 + 64);
  v1[21] = OUTLINED_FUNCTION_37_0();
  v1[22] = swift_task_alloc();
  v11 = sub_2698548D4();
  v1[23] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[24] = v12;
  v14 = *(v13 + 64);
  v1[25] = OUTLINED_FUNCTION_4_7();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v15);
  v17 = *(v16 + 64);
  v1[26] = OUTLINED_FUNCTION_4_7();
  v18 = sub_269853854();
  v1[27] = v18;
  OUTLINED_FUNCTION_5_12(v18);
  v1[28] = v19;
  v21 = *(v20 + 64);
  v1[29] = OUTLINED_FUNCTION_4_7();
  v22 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_26971A888()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v4 = *(v3 + 240);
  *v2 = *v0;
  *(v1 + 282) = v5;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26971AF2C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 248);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26971B010()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  OUTLINED_FUNCTION_12_15();

  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_26971B0B8()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 272);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26971B19C()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 280);
  sub_269717660(*(v0 + 256), *(v0 + 264));
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_12_15();

  OUTLINED_FUNCTION_7_7();

  return v5();
}

uint64_t sub_26971B258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26971B27C, 0, 0);
}

void sub_26971B27C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[3];
  v2 = v0[4];
  sub_269854404();

  v0[5] = sub_2698543E4();
  v3 = *(MEMORY[0x277D5C048] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[6] = v4;
  *v4 = v5;
  v4[1] = sub_26971B348;
  v6 = v0[2];

  JUMPOUT(0x269853784);
}

uint64_t sub_26971B348()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_7_7();

    return v13();
  }
}

uint64_t sub_26971B468()
{
  type metadata accessor for ThirdPartyPlayWrapperFlow();
  sub_26971C9F4(&qword_280323DB0, type metadata accessor for ThirdPartyPlayWrapperFlow);
  return sub_269852B54();
}

uint64_t sub_26971B4F8(uint64_t a1)
{
  v3 = *(v1 + 296);
  v4 = *(v1 + 304);
  *(v1 + 296) = xmmword_26985C790;
  v5 = *(v1 + 312);
  *(v1 + 312) = 0;
  sub_269717660(v3, v4);
  type metadata accessor for ThirdPartyAppResolutionFlow();
  sub_26970F30C();
  sub_26970F9C8(a1);
  sub_26971C9F4(&qword_280323CB8, type metadata accessor for ThirdPartyAppResolutionFlow);
  sub_269852B44();

  OUTLINED_FUNCTION_12_11();
  sub_269853134();
}

uint64_t sub_26971B608(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    v5 = (a2 + 296);
    v6 = *(a2 + 296);
    v7 = *(a2 + 304);
    v8 = xmmword_26985C7A0;
LABEL_5:
    *v5 = v8;
    v9 = *(a2 + 312);
    *(a2 + 312) = 0;
    v10 = v7;

    return sub_269717660(v6, v10);
  }

  if (v4 == 1)
  {
    v5 = (a2 + 296);
    v6 = *(a2 + 296);
    v7 = *(a2 + 304);
    v8 = xmmword_26985CBA0;
    goto LABEL_5;
  }

  v12 = *(a1 + 16);
  v13 = *(a2 + 296);
  v14 = *(a2 + 304);
  *(a2 + 296) = *a1;
  *(a2 + 304) = v4;
  v15 = *(a2 + 312);
  *(a2 + 312) = v12 & 0xFF01;

  v6 = v13;
  v10 = v14;

  return sub_269717660(v6, v10);
}

uint64_t sub_26971B6C0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v13 = __swift_project_value_buffer(v8, qword_281571B38);
  (*(v9 + 16))(v12, v13, v8);

  v14 = sub_2698548B4();
  v15 = sub_269854F44();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_27_2();
    v22 = v4;
    v17 = v16;
    v18 = OUTLINED_FUNCTION_9_3();
    v23 = a1;
    v24 = v18;
    v19 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_26974F520(a2, a3, &v24);
    _os_log_impl(&dword_269684000, v14, v15, "Executing AppIntents flow with bundleId: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_10();
    v4 = v22;
    OUTLINED_FUNCTION_10();
  }

  (*(v9 + 8))(v12, v8);
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  sub_26979B2A8();
  OUTLINED_FUNCTION_65();
  sub_269852A14();
  sub_269853154();
}

uint64_t sub_26971B8E4()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 128) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 16) = v6;
  v7 = sub_2698538B4();
  *(v1 + 56) = v7;
  OUTLINED_FUNCTION_5_12(v7);
  *(v1 + 64) = v8;
  v10 = *(v9 + 64);
  *(v1 + 72) = OUTLINED_FUNCTION_4_7();
  v11 = sub_2698548D4();
  *(v1 + 80) = v11;
  OUTLINED_FUNCTION_5_12(v11);
  *(v1 + 88) = v12;
  v14 = *(v13 + 64);
  *(v1 + 96) = OUTLINED_FUNCTION_4_7();
  v15 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_26971B9E0(uint64_t a1)
{
  v28 = v1;
  if (qword_280322700 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_4();
  }

  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  v5 = v1[5];
  OUTLINED_FUNCTION_29_2(a1, qword_281571B38);
  v6 = *(v3 + 16);
  v7 = OUTLINED_FUNCTION_12_11();
  v8(v7);

  v9 = sub_2698548B4();
  v10 = sub_269854F44();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v1[11];
  v12 = v1[12];
  v14 = v1[10];
  if (v11)
  {
    v16 = v1[4];
    v15 = v1[5];
    v17 = OUTLINED_FUNCTION_27_2();
    v18 = OUTLINED_FUNCTION_9_3();
    v27 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_26974F520(v16, v15, &v27);
    _os_log_impl(&dword_269684000, v9, v10, "Executing RCHFlow with bundleId: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v19 = *(v13 + 8);
  v20 = OUTLINED_FUNCTION_22_3();
  v21(v20);
  v22 = v1[9];
  v23 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DA8, &qword_26985CED8);
  v1[13] = swift_allocObject();
  sub_269853844();
  v24 = swift_task_alloc();
  v1[14] = v24;
  *v24 = v1;
  v24[1] = sub_26971BBF8;
  v25 = v1[9];

  return sub_269718A64(v25, 0);
}

uint64_t sub_26971BBF8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  v5 = v2[14];
  v6 = *v1;
  OUTLINED_FUNCTION_6_13();
  *v7 = v6;
  *(v9 + 120) = v8;

  v10 = v2[9];
  v11 = v2[8];
  v12 = v2[7];
  if (v0)
  {

    v13 = *(v11 + 8);
  }

  else
  {
    v16 = *(v11 + 8);
  }

  v14 = OUTLINED_FUNCTION_22_3();
  v15(v14);
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_26971BD84()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 120);
    sub_2697A2040();
  }

  v2 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);
  v6 = *(v0 + 40);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1((*(v0 + 48) + 56), *(*(v0 + 48) + 80));
  v9 = v2;
  OUTLINED_FUNCTION_47_1();
  sub_26979AFB8();

  sub_269853154();

  OUTLINED_FUNCTION_7_7();

  return v10();
}

uint64_t sub_26971BE74()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_38_3();
  return OUTLINED_FUNCTION_70();
}

uint64_t sub_26971BEDC()
{
  OUTLINED_FUNCTION_2_7();
  v1[13] = v2;
  v1[14] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v1[15] = OUTLINED_FUNCTION_4_7();
  v6 = sub_2698538F4();
  v1[16] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[17] = v7;
  v1[18] = *(v8 + 64);
  v1[19] = OUTLINED_FUNCTION_37_0();
  v1[20] = swift_task_alloc();
  v9 = sub_2698532A4();
  v1[21] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[22] = v10;
  v12 = *(v11 + 64);
  v1[23] = OUTLINED_FUNCTION_4_7();
  v13 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26971C00C()
{
  v1 = v0[14];
  v2 = v1[31];
  __swift_project_boxed_opaque_existential_1(v1 + 27, v1[30]);
  sub_269852C74();

  OUTLINED_FUNCTION_5_20();
  sub_269852C64();
  sub_269852BC4();

  v3 = *__swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[24] = v4;
  *v4 = v5;
  v4[1] = sub_26971C144;
  v6 = v0[23];

  return sub_2696B98F4(v6, (v1 + 17));
}

uint64_t sub_26971C144()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = *(v2 + 192);
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26971C248()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v17 = *(v0 + 176);
  v18 = *(v0 + 168);
  v14 = *(v0 + 152);
  v15 = *(v0 + 144);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v16 = *(v0 + 104);
  v7 = v6[21];
  __swift_project_boxed_opaque_existential_1(v6 + 17, v6[20]);
  sub_269852CA4();
  v8 = sub_269853234();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_269853114();
  sub_26969B0C0(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_26969B0C0(v5, &qword_280323010, &unk_26985B640);
  sub_2696A73F8((v6 + 32), v0 + 56);
  (*(v3 + 16))(v14, v2, v4);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v14, v4);
  v11 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v11);
  *(v0 + 96) = sub_269852764();
  sub_269853144();
  (*(v3 + 8))(v2, v4);
  (*(v17 + 8))(v1, v18);

  OUTLINED_FUNCTION_7_7();

  return v12();
}

uint64_t sub_26971C4C0()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_38_3();
  return OUTLINED_FUNCTION_70();
}

uint64_t sub_26971C528(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26971C548, 0, 0);
}

uint64_t sub_26971C548()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_2698538F4();
  v4 = MEMORY[0x277D5C1D8];
  v1[3] = v3;
  v1[4] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  OUTLINED_FUNCTION_7_7();

  return v6();
}

uint64_t sub_26971C5F8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_2696D1E70(v0 + 96);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  v1 = *(v0 + 312);
  sub_269717660(*(v0 + 296), *(v0 + 304));
  sub_26969B0C0(OBJC_IVAR____TtC16SiriVideoIntents25ThirdPartyPlayWrapperFlow_input + v0, &qword_280323AF8, &unk_26985C1D0);
  return v0;
}

uint64_t sub_26971C674()
{
  sub_26971C5F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ThirdPartyPlayWrapperFlow()
{
  result = qword_280323D98;
  if (!qword_280323D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26971C720()
{
  sub_2697012B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents25ThirdPartyPlayWrapperFlowC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26971C844()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return sub_26971A030();
}

uint64_t sub_26971C8E0()
{
  type metadata accessor for ThirdPartyPlayWrapperFlow();

  return sub_269852B84();
}

uint64_t sub_26971C91C()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  v4 = sub_2698538F4();
  OUTLINED_FUNCTION_8_9(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2696DA938;

  return sub_26971C528(v3, v0 + v6);
}

uint64_t sub_26971C9F4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_86();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26971CA38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_86();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26971CA7C()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32) | (*(v0 + 33) << 8);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2696DAF80;

  return sub_26971B258(v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_15_9()
{
  v1 = v0[44];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];
  v9 = v0[33];
  v8 = v0[34];
  v13 = v0[32];
  v14 = v0[31];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[28];
  v18 = v0[27];
  v19 = v0[24];
  v20 = v0[21];
  v21 = v0[18];
  v22 = v0[17];
  v10 = v0[14];
  v23 = v0[11];
  v11 = *(v0[40] + 8);
  return v0[45];
}

uint64_t OUTLINED_FUNCTION_18_10(uint64_t a1)
{
  *(a1 + 8) = sub_26971B0B8;
  v2 = v1[29];
  result = v1[14];
  v4 = v1[15];
  return result;
}

uint64_t OUTLINED_FUNCTION_21_7()
{
  v3 = v0[44];
  v2 = v0[45];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[41];
  v8 = v0[37];
  v7 = v0[38];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[32];
  v14 = v0[31];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[28];
  v18 = v0[27];
  v19 = v0[24];
  v12 = v0[21];
  v20 = v0[18];
  v21 = v0[17];
  v22 = v0[14];
  v23 = v0[11];
}

void OUTLINED_FUNCTION_24_7()
{
  v2 = *(v0 + 280);
  v3 = *(v0 + 304);

  sub_269719D6C(v3, sub_2697A4CA8);
}

uint64_t OUTLINED_FUNCTION_26_7()
{

  return sub_269852764();
}

uint64_t OUTLINED_FUNCTION_28_4()
{

  return sub_269852764();
}

uint64_t OUTLINED_FUNCTION_31_4(unint64_t *a1)
{

  return sub_26971CA38(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_32_2(unint64_t *a1)
{

  return sub_26971CA38(a1, v1, v2);
}

void OUTLINED_FUNCTION_33_2()
{
  v14 = v1[29];
  v15 = v1[28];
  v16 = v1[27];
  v4 = v1[24];
  v3 = v1[25];
  v6 = v1[22];
  v5 = v1[23];
  v8 = v1[20];
  v7 = v1[21];
  v9 = v1[19];
  v10 = v1[18];
  v11 = v1[16];
  v12 = v1[17];
  v13 = v1[14];
}

BOOL OUTLINED_FUNCTION_39_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_40_0()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[15];
  v5 = v0[11];
  v6 = *(v0[16] + 32);
  return v0[18];
}

void OUTLINED_FUNCTION_44_2()
{
  v1 = *(v0 + 120);
  *(v0 + 256) = *(v1 + 296);
  *(v0 + 264) = *(v1 + 304);
  *(v0 + 280) = *(v1 + 312);
}

void OUTLINED_FUNCTION_49_2()
{
  v3 = v0[33];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  v7 = v0[14];
  v11 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
}

void OUTLINED_FUNCTION_50_2(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_54()
{

  return sub_269854A64();
}

uint64_t OUTLINED_FUNCTION_56_1()
{
  result = v1;
  v3 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_57_0()
{
  v3 = v0[28];
  v2 = v0[29];
  v7 = v0[14];
  v8 = v0[27];
  v4 = v1[31];
  __swift_project_boxed_opaque_existential_1(v1 + 27, v1[30]);

  return sub_269852C74();
}

uint64_t OUTLINED_FUNCTION_59()
{

  return sub_269853064();
}

void OUTLINED_FUNCTION_60_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_log_type_t a16, os_log_t log)
{

  _os_log_impl(a1, log, a16, a4, v17, 0xCu);
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_69_0()
{

  return sub_269851A84();
}

uint64_t OUTLINED_FUNCTION_70()
{

  return sub_269855354();
}

uint64_t OUTLINED_FUNCTION_71_0()
{

  return sub_26971B6C0(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_75()
{
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];

  return sub_269854544();
}

void OUTLINED_FUNCTION_76_0()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v6 = v0[25];
  v7 = v0[26];
}

uint64_t OUTLINED_FUNCTION_87()
{

  return sub_269852BC4();
}

uint64_t OUTLINED_FUNCTION_88()
{

  return sub_269855584();
}

uint64_t OUTLINED_FUNCTION_89_0()
{

  return sub_269852C64();
}

id OUTLINED_FUNCTION_90_0(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_91_0()
{
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v5 = v0[14];
}

void OUTLINED_FUNCTION_92(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_93_0()
{
  v3 = v1[30];
  v4 = v1[25];
  v5 = v1[26];
  v7 = v1[23];
  v6 = v1[24];
  v8 = v1[22];
}

uint64_t OUTLINED_FUNCTION_94_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_95_0()
{
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v5 = v0[14];

  return sub_269853524();
}

BOOL OUTLINED_FUNCTION_96_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_97()
{

  return sub_2696C1F3C(v1, v0);
}

void *sub_26971D2CC()
{
  sub_269852C84();
  v0 = type metadata accessor for BaseDialogProvider();
  v1 = swift_allocObject();
  sub_2698538C4();
  v37 = &type metadata for LSApplicationRecordProvider;
  v38 = &xmmword_287A41430;
  v40 = &type metadata for AppIntentsMetadataProvider;
  v41 = &off_287A413C0;
  v39 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  sub_269852BB4();
  v2 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v2);
  v3 = sub_269853254();
  sub_269853524();
  v33[3] = v0;
  v33[4] = &off_287A3DBA0;
  v32[4] = &xmmword_287A41430;
  v33[0] = v1;
  v32[3] = &type metadata for LSApplicationRecordProvider;
  v31[3] = &type metadata for FeatureFlagServiceImpl;
  v31[4] = &off_287A41BD8;
  v30[3] = &type metadata for RunningBoardForegroundAppProvider;
  v30[4] = &off_287A41CC0;
  v29[3] = &type metadata for ThirdPartyIntentSupportProvider;
  v29[4] = &off_287A47040;
  v29[0] = swift_allocObject();
  sub_2696B6ED8(v36, v29[0] + 16);
  v27 = v2;
  v28 = MEMORY[0x277D5BD58];
  *&v26 = v3;
  v4 = type metadata accessor for NoResultsFlow();
  v5 = OUTLINED_FUNCTION_68_0(v4);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v33, v0);
  v7 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  __swift_mutable_project_boxed_opaque_existential_1(v32, &type metadata for LSApplicationRecordProvider);
  __swift_mutable_project_boxed_opaque_existential_1(v31, &type metadata for FeatureFlagServiceImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v30, &type metadata for RunningBoardForegroundAppProvider);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v29, &type metadata for ThirdPartyIntentSupportProvider);
  v13 = *(off_287A47020 + 8);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  v18 = *v10;
  v5[10] = v0;
  v5[11] = &off_287A3DBA0;
  v5[7] = v18;
  v5[21] = &type metadata for LSApplicationRecordProvider;
  v5[22] = &xmmword_287A41430;
  v5[26] = &type metadata for FeatureFlagServiceImpl;
  v5[27] = &off_287A41BD8;
  v5[31] = &type metadata for RunningBoardForegroundAppProvider;
  v5[32] = &off_287A41CC0;
  v5[36] = &type metadata for ThirdPartyIntentSupportProvider;
  v5[37] = &off_287A47040;
  v19 = swift_allocObject();
  v5[33] = v19;
  memcpy((v19 + 16), v16, 0x50uLL);
  sub_269853854();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  sub_26968E5D4(v43, (v5 + 2));
  sub_2696A73F8(v42, (v5 + 12));
  type metadata accessor for LocUtil();
  OUTLINED_FUNCTION_25_3();
  v24 = swift_allocObject();
  sub_26968E5D4(v42, v24 + 16);
  v5[17] = v24;
  sub_26968E5D4(&v35, (v5 + 48));
  sub_26968E5D4(&v26, (v5 + 38));
  sub_26968E5D4(&v34, (v5 + 43));
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v33);
  sub_2696B6F40(v36);
  return v5;
}

uint64_t sub_26971D6C4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_22_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v6 = OUTLINED_FUNCTION_8_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = sub_269853854();
  OUTLINED_FUNCTION_4_3(v11);
  (*(v12 + 16))(v10, a1, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  v13 = OBJC_IVAR____TtC16SiriVideoIntents13NoResultsFlow_input;
  swift_beginAccess();
  sub_269720B24(v10, v1 + v13, &qword_280323AF8, &unk_26985C1D0);
  swift_endAccess();
  return 1;
}

uint64_t sub_26971D7D0()
{
  type metadata accessor for NoResultsFlow();
  sub_269720A1C(&qword_280323E00, type metadata accessor for NoResultsFlow);
  return sub_269852B54();
}

uint64_t sub_26971D860()
{
  OUTLINED_FUNCTION_2_7();
  v26 = *MEMORY[0x277D85DE8];
  v1[40] = v2;
  v1[41] = v0;
  v3 = type metadata accessor for VideoDataModels.ButtonModel(0);
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v1[42] = OUTLINED_FUNCTION_4_7();
  v6 = sub_269852624();
  v1[43] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[44] = v7;
  v9 = *(v8 + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v10 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v10);
  v12 = *(v11 + 64);
  v1[47] = OUTLINED_FUNCTION_4_7();
  v13 = sub_269853634();
  v1[48] = v13;
  OUTLINED_FUNCTION_5_12(v13);
  v1[49] = v14;
  v16 = *(v15 + 64);
  v1[50] = OUTLINED_FUNCTION_4_7();
  v17 = sub_2698548D4();
  v1[51] = v17;
  OUTLINED_FUNCTION_5_12(v17);
  v1[52] = v18;
  v20 = *(v19 + 64) + 15;
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v21 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_26971DA34()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = v0[41];
  sub_2697340D4();
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = v0[54];
  v3 = v0[51];
  v4 = v0[52];
  v5 = __swift_project_value_buffer(v3, qword_28033D910);
  v0[55] = v5;
  v6 = *(v4 + 16);
  v0[56] = v6;
  v0[57] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_2698548B4();
  v8 = sub_269854F04();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_269684000, v7, v8, "Generating NoResults experience", v9, 2u);
    OUTLINED_FUNCTION_10();
  }

  v10 = v0[54];
  v11 = v0[51];
  v12 = v0[52];
  v13 = v0[41];

  v0[58] = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_22_3();
  v15(v14);
  v16 = *__swift_project_boxed_opaque_existential_1((v13 + 56), *(v13 + 80));
  v17 = swift_task_alloc();
  v0[59] = v17;
  *v17 = v0;
  v17[1] = sub_26971DC24;
  v18 = *MEMORY[0x277D85DE8];

  return sub_26977F2C4(0xD000000000000015, 0x800000026987DB70);
}

uint64_t sub_26971DC24()
{
  OUTLINED_FUNCTION_2_7();
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 472);
  v11 = *v1;
  *(v2 + 480) = v4;
  *(v2 + 488) = v0;

  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26971DD5C()
{
  v73 = *MEMORY[0x277D85DE8];
  v1 = v0[50];
  v2 = v0[47];
  v3 = v0[41];
  sub_269852E64();
  sub_2698535C4();
  v4 = sub_26971EE40();
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v4;
  v7 = v5;
  v8 = v0[41];
  v9 = sub_26971F4C4();
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  __swift_project_boxed_opaque_existential_1((v0[41] + 144), *(v0[41] + 168));
  sub_2697ADE90(v11, v12, (v0 + 17));
  if (v0[20])
  {
    v13 = v0[41];
    v14 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
    v15 = *(v14 + 16);
    v16 = OUTLINED_FUNCTION_11_16();
    v18 = v17(v16, v14);
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    v21 = *(v13 + 136);
    sub_269830784(v18, v20);
    v23 = v22;

    if (v23)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_269857710;
      v0[22] = v6;
      v0[23] = v7;
      v0[24] = v11;
      v0[25] = v12;
      v0[26] = MEMORY[0x277D84F90];
      if (qword_280322438 != -1)
      {
        swift_once();
      }

      v24 = v0[61];
      sub_2697209C8();
      v25 = sub_269851AB4();
      if (v24)
      {

        v27 = sub_269854A04();
LABEL_20:
        v70 = v0[50];
        v71 = v0[60];
        v52 = v0[45];
        v53 = v0[46];
        v54 = v0[43];
        v55 = v0[44];
        v56 = v0[41];
        v57 = v0[42];
        sub_2697D1CC0(v27);

        v58 = sub_269852664();
        v59 = MEMORY[0x277D63778];
        *(v72 + 56) = v58;
        *(v72 + 64) = v59;
        __swift_allocate_boxed_opaque_existential_1((v72 + 32));
        sub_269852654();

        sub_269852634();
        (*(v55 + 16))(v52, v53, v54);
        VideoDataModels.ButtonModel.init(label:actionProperty:)();
        sub_2698535E4();
        v60 = v56[42];
        __swift_project_boxed_opaque_existential_1(v56 + 38, v56[41]);
        v0[30] = type metadata accessor for VideoDataModels(0);
        v0[31] = sub_269720A1C(&qword_280323A28, type metadata accessor for VideoDataModels);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 27);
        sub_269720A64(v57, boxed_opaque_existential_1);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
        v62 = swift_allocObject();
        v0[62] = v62;
        *(v62 + 16) = xmmword_2698590C0;
        *(v62 + 32) = v71;
        v63 = *(MEMORY[0x277D5BE48] + 4);
        v64 = v71;
        v65 = swift_task_alloc();
        v0[63] = v65;
        *v65 = v0;
        v65[1] = sub_26971E658;
        v66 = v0[50];
        v67 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_112();

        return MEMORY[0x2821BB478]();
      }

      v43 = v25;
      v44 = v26;

      v45 = objc_opt_self();
      v46 = sub_269851C84();
      v0[38] = 0;
      v47 = [v45 JSONObjectWithData:v46 options:0 error:v0 + 38];

      v48 = v0[38];
      if (v47)
      {
        v49 = v48;
        sub_269855154();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
        if (swift_dynamicCast())
        {
          sub_2696C1F3C(v43, v44);
          v27 = v0[39];
          goto LABEL_20;
        }
      }

      else
      {
        v50 = v48;
        v51 = sub_269851BD4();

        swift_willThrow();
      }

      v27 = sub_269854A04();
      sub_2696C1F3C(v43, v44);
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_12;
  }

  sub_26969B0C0((v0 + 17), &unk_2803263B0, &unk_26985D0B0);
LABEL_12:
  v28 = v0[60];
  v29 = v0[41];
  v30 = v29[42];
  __swift_project_boxed_opaque_existential_1(v29 + 38, v29[41]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v31 = swift_allocObject();
  v0[64] = v31;
  *(v31 + 16) = xmmword_2698590C0;
  *(v31 + 32) = v28;
  v32 = *(MEMORY[0x277D5BE58] + 4);
  v33 = v28;
  v34 = swift_task_alloc();
  v0[65] = v34;
  *v34 = v0;
  v34[1] = sub_26971E920;
  v35 = v0[50];
  v36 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_112();

  return MEMORY[0x2821BB488](v37, v38, v39, v40, v41);
}

uint64_t sub_26971E424()
{
  v30 = v0;
  v29[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 488);
  v2 = *(v0 + 456);
  (*(v0 + 448))(*(v0 + 424), *(v0 + 440), *(v0 + 408));
  v3 = v1;
  v4 = sub_2698548B4();
  v5 = sub_269854F24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 488);
    v28 = *(v0 + 464);
    v8 = *(v0 + 416);
    v7 = *(v0 + 424);
    v9 = *(v0 + 408);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29[0] = v11;
    *v10 = 136315138;
    *(v0 + 288) = v6;
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v13 = sub_269854AE4();
    v15 = sub_26974F520(v13, v14, v29);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_269684000, v4, v5, "Returning error output due to: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v16 = OUTLINED_FUNCTION_22_3();
    v28(v16);
  }

  else
  {
    v17 = *(v0 + 464);
    v19 = *(v0 + 416);
    v18 = *(v0 + 424);
    v20 = *(v0 + 408);

    v21 = OUTLINED_FUNCTION_22_3();
    v17(v21);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 528) = v22;
  *v22 = v23;
  v22[1] = sub_26971EBB0;
  v24 = *(v0 + 320);
  v25 = *(v0 + 328);
  v26 = *MEMORY[0x277D85DE8];

  return sub_26971FE38();
}

uint64_t sub_26971E658()
{
  OUTLINED_FUNCTION_8_5();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 496);
  v10 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v3 = v10;

  __swift_destroy_boxed_opaque_existential_0((v10 + 216));
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26971E79C()
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = *(v0 + 352);
  sub_269720AC8(*(v0 + 336));
  (*(v5 + 8))(v3, v4);
  OUTLINED_FUNCTION_15_10();
  sub_2696A73F8(v0 + 16, v0 + 96);
  OUTLINED_FUNCTION_25_3();
  v6 = swift_allocObject();
  sub_26968E5D4((v0 + 96), v6 + 16);
  v7 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v7);
  *(v0 + 296) = OUTLINED_FUNCTION_6_20();
  sub_269853144();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v8 = *(v1 + 8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10(v9);
  OUTLINED_FUNCTION_18_11();

  OUTLINED_FUNCTION_28_2();
  v12 = *MEMORY[0x277D85DE8];

  return v11(0);
}

uint64_t sub_26971E920()
{
  OUTLINED_FUNCTION_2_7();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 512);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26971EA54()
{
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_10();
  sub_2696A73F8(v0 + 16, v0 + 96);
  OUTLINED_FUNCTION_25_3();
  v3 = swift_allocObject();
  sub_26968E5D4((v0 + 96), v3 + 16);
  v4 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v4);
  *(v0 + 296) = OUTLINED_FUNCTION_6_20();
  sub_269853144();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v5 = *(v1 + 8);
  v6 = OUTLINED_FUNCTION_22_3();
  v7(v6);
  OUTLINED_FUNCTION_18_11();

  OUTLINED_FUNCTION_28_2();
  v9 = *MEMORY[0x277D85DE8];

  return v8(0);
}

uint64_t sub_26971EBB0()
{
  OUTLINED_FUNCTION_2_7();
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 528);
  v9 = *v0;
  *(*v0 + 536) = v2;

  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26971ECD4()
{
  v12 = *MEMORY[0x277D85DE8];

  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 400);
  v5 = *(v0 + 368);
  v4 = *(v0 + 376);
  v6 = *(v0 + 360);
  v7 = *(v0 + 336);
  v8 = *(v0 + 536);

  OUTLINED_FUNCTION_28_2();
  v10 = *MEMORY[0x277D85DE8];

  return v9(v8);
}

uint64_t sub_26971EDC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26971EDE4, 0, 0);
}

uint64_t sub_26971EDE4()
{
  OUTLINED_FUNCTION_2_7();
  sub_2696A73F8(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_26971EE40()
{
  v1 = v0;
  v2 = sub_2698523C4();
  v3 = OUTLINED_FUNCTION_8(v2);
  v108 = v4;
  v109 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v107 = v8 - v7;
  v9 = sub_269851EF4();
  v10 = OUTLINED_FUNCTION_8(v9);
  v101 = v11;
  v102 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v100 = v15 - v14;
  v106 = sub_269853874();
  v16 = OUTLINED_FUNCTION_8(v106);
  v104 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v103 = v21 - v20;
  v22 = sub_269853854();
  v23 = OUTLINED_FUNCTION_8(v22);
  v105 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v31 = OUTLINED_FUNCTION_8_9(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v98 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323E08, &unk_26985D090);
  v37 = OUTLINED_FUNCTION_8_9(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12();
  v42 = (v40 - v41);
  MEMORY[0x28223BE20](v43);
  v45 = &v98 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v47 = OUTLINED_FUNCTION_8_9(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_12();
  v52 = v50 - v51;
  v54 = MEMORY[0x28223BE20](v53);
  v56 = &v98 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = &v98 - v57;
  sub_269852474();
  OUTLINED_FUNCTION_57();
  v110 = v59;
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v59);
  v63 = OBJC_IVAR____TtC16SiriVideoIntents13NoResultsFlow_input;
  swift_beginAccess();
  sub_2697208E8(v1 + v63, v35, &qword_280323AF8, &unk_26985C1D0);
  if (__swift_getEnumTagSinglePayload(v35, 1, v22))
  {
    sub_26969B0C0(v35, &qword_280323AF8, &unk_26985C1D0);
    sub_2698538B4();
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  }

  else
  {
    v98 = v52;
    v99 = v56;
    v68 = v103;
    v69 = v104;
    v70 = v105;
    v71 = v106;
    (*(v105 + 16))(v29, v35, v22);
    sub_26969B0C0(v35, &qword_280323AF8, &unk_26985C1D0);
    sub_269853844();
    (*(v70 + 8))(v29, v22);
    v72 = sub_2698538B4();
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v72);
    sub_2697208E8(v45, v42, &qword_280323E08, &unk_26985D090);
    v73 = *(v72 - 8);
    v74 = v73[11];
    v75 = OUTLINED_FUNCTION_50_0();
    v77 = v76(v75);
    if (v77 == *MEMORY[0x277D5C140])
    {
      v78 = v73[12];
      v79 = OUTLINED_FUNCTION_50_0();
      v80(v79);
      v81 = v68;
      (*(v69 + 32))(v68, v42, v71);
      v82 = v100;
      sub_269853864();
      v83 = v99;
      sub_2696D3C74();
      (*(v101 + 8))(v82, v102);
      (*(v69 + 8))(v81, v71);
      sub_269720B24(v83, v58, &qword_280323360, &unk_26985AB80);
    }

    else
    {
      if (v77 == *MEMORY[0x277D5C148])
      {
        v84 = v73[12];
        v85 = OUTLINED_FUNCTION_50_0();
        v86(v85);
        v87 = *v42;
        sub_2696D6C54();
        if (v88)
        {
          v89 = v88;
          v90 = v98;
          sub_269854544();

          v91 = 0;
        }

        else
        {
          v91 = 1;
          v90 = v98;
        }

        v95 = v110;
        __swift_storeEnumTagSinglePayload(v90, v91, 1, v110);
        sub_269720B24(v90, v58, &qword_280323360, &unk_26985AB80);
        goto LABEL_10;
      }

      v92 = v73[1];
      v93 = OUTLINED_FUNCTION_50_0();
      v94(v93);
    }
  }

  v95 = v110;
LABEL_10:
  sub_26969B0C0(v45, &qword_280323E08, &unk_26985D090);
  if (!__swift_getEnumTagSinglePayload(v58, 1, v95))
  {
    v96 = v107;
    sub_269852424();
    sub_269851FD4();
    (*(v108 + 8))(v96, v109);
  }

  sub_26969B0C0(v58, &qword_280323360, &unk_26985AB80);
  return OUTLINED_FUNCTION_50_0();
}

uint64_t sub_26971F4C4()
{
  v98 = sub_2698548D4();
  v0 = OUTLINED_FUNCTION_8(v98);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_12();
  v96[0] = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v99 = v96 - v8;
  v9 = [objc_opt_self() enumeratorWithOptions_];
  v10 = sub_2697EFB8C();
  v96[1] = 0;

  v11 = 0;
  v12 = *(v10 + 16);
  v13 = v10 + 32;
  v14 = MEMORY[0x277D84F90];
  v15 = 40;
  while (v12 != v11)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    sub_2696A73F8(v13, &v104);
    v16 = v106;
    __swift_project_boxed_opaque_existential_1(&v104, v105);
    v17 = *(v16 + 24);
    v18 = OUTLINED_FUNCTION_11_16();
    if (v19(v18, v16) == 1)
    {
      __swift_destroy_boxed_opaque_existential_0(&v104);
    }

    else
    {
      sub_26968E5D4(&v104, &v107);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_28_5(v14[2]);
        v14 = v110;
      }

      v22 = v14[2];
      v21 = v14[3];
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_19_8(v21);
        v14 = v110;
      }

      v14[2] = v22 + 1;
      sub_26968E5D4(&v107, &v14[5 * v22 + 4]);
    }

    v13 += 40;
    ++v11;
  }

  v97 = v2;

  v23 = 0;
  v24 = v14[2];
  v102 = v14 + 4;
  v103 = v24;
  v25 = MEMORY[0x277D84F90];
  v100 = "spotlightMatches";
  while (v23 != v103)
  {
    if (v23 >= v14[2])
    {
      goto LABEL_66;
    }

    v11 = v23 + 1;
    sub_2696A73F8(&v102[5 * v23], &v107);
    v26 = v109;
    __swift_project_boxed_opaque_existential_1(&v107, v108);
    v27 = *(v26 + 8);
    v28 = OUTLINED_FUNCTION_11_16();
    v30 = v29(v28, v26);
    if (v31)
    {
      v32 = v30;
      v33 = v25;
      v15 = v109;
      __swift_project_boxed_opaque_existential_1(&v107, v108);
      v34 = *(v15 + 32);
      v35 = OUTLINED_FUNCTION_11_16();
      v37 = v36(v35, v15);
      v38 = v37;
      if (*(v37 + 16))
      {
        v39 = *(v37 + 40);
        sub_269855674();
        sub_269854B34();
        v40 = sub_2698556C4();
        v15 = ~(-1 << *(v38 + 32));
        while (1)
        {
          v41 = v40 & v15;
          if (((*(v38 + 56 + (((v40 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v15)) & 1) == 0)
          {
            break;
          }

          v42 = (*(v38 + 48) + 16 * v41);
          if (*v42 != 0xD000000000000016 || 0x800000026987B860 != v42[1])
          {
            v44 = sub_269855584();
            v40 = v41 + 1;
            if ((v44 & 1) == 0)
            {
              continue;
            }
          }

          v15 = v109;
          __swift_project_boxed_opaque_existential_1(&v107, v108);
          v45 = *(v15 + 40);
          v46 = OUTLINED_FUNCTION_11_16();
          v48 = v47(v46, v15);
          v49 = sub_269807CB4(0xD000000000000014, v100 | 0x8000000000000000, v48);

          v25 = v33;
          if (!v49)
          {
            goto LABEL_27;
          }

          goto LABEL_29;
        }
      }

      v25 = v33;
LABEL_27:
      v105 = &type metadata for SiriVideoFeatureKeys;
      v106 = sub_2696A2978();
      LOBYTE(v104) = 3;
      v50 = sub_269853B34();
      __swift_destroy_boxed_opaque_existential_0(&v104);
      if ((v50 & 1) == 0)
      {

        goto LABEL_35;
      }

      __swift_project_boxed_opaque_existential_1(v101 + 33, v101[36]);
      v51 = sub_269832F24(v32);

      if (!v51)
      {
        goto LABEL_35;
      }

LABEL_29:

      sub_26968E5D4(&v107, &v104);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v110 = v25;
      if ((v52 & 1) == 0)
      {
        OUTLINED_FUNCTION_28_5(v25[2]);
        v25 = v110;
      }

      v54 = v25[2];
      v53 = v25[3];
      if (v54 >= v53 >> 1)
      {
        OUTLINED_FUNCTION_19_8(v53);
        v25 = v110;
      }

      v25[2] = v54 + 1;
      sub_26968E5D4(&v104, &v25[5 * v54 + 4]);
      v23 = v11;
    }

    else
    {
LABEL_35:
      __swift_destroy_boxed_opaque_existential_0(&v107);
      v23 = v11;
    }
  }

  v55 = v25[2];
  if (v55)
  {
    v56 = (v25 + 4);
    v14 = MEMORY[0x277D84F90];
    v15 = v97;
    do
    {
      sub_2696A73F8(v56, &v104);
      v57 = v106;
      __swift_project_boxed_opaque_existential_1(&v104, v105);
      v58 = *(v57 + 8);
      v59 = OUTLINED_FUNCTION_11_16();
      v61 = v60(v59, v57);
      v63 = v62;
      __swift_destroy_boxed_opaque_existential_0(&v104);
      if (v63)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = v14[2];
          sub_26977BCE4();
          v14 = v67;
        }

        v64 = v14[2];
        if (v64 >= v14[3] >> 1)
        {
          sub_26977BCE4();
          v14 = v68;
        }

        v14[2] = v64 + 1;
        v65 = &v14[2 * v64];
        v65[4] = v61;
        v65[5] = v63;
      }

      v56 += 40;
      --v55;
    }

    while (v55);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
    v15 = v97;
  }

  v11 = v98;
  if (qword_2803226E0 != -1)
  {
LABEL_67:
    OUTLINED_FUNCTION_0_10();
  }

  v69 = __swift_project_value_buffer(v11, qword_28033D910);
  v70 = v15;
  v71 = *(v15 + 16);
  v72 = v99;
  v71(v99, v69, v11);

  v73 = sub_2698548B4();
  v74 = sub_269854F44();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v103 = v71;
    v76 = v75;
    v77 = swift_slowAlloc();
    *&v104 = v77;
    *v76 = 136315138;
    v78 = MEMORY[0x26D645BC0](v14, MEMORY[0x277D837D0]);
    v80 = sub_26974F520(v78, v79, &v104);

    *(v76 + 4) = v80;
    _os_log_impl(&dword_269684000, v73, v74, "Candidate apps for NoResults button: %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    OUTLINED_FUNCTION_10();
    v71 = v103;
    OUTLINED_FUNCTION_10();

    v81 = *(v70 + 8);
    v81(v99, v11);
  }

  else
  {

    v81 = *(v70 + 8);
    v81(v72, v11);
  }

  v82 = v14[2];
  if (v82 == 1)
  {
LABEL_62:
    v85 = v14[4];
    v94 = v14[5];

    return v85;
  }

  if (!v82)
  {
LABEL_63:

    return 0;
  }

  __swift_project_boxed_opaque_existential_1(v101 + 28, v101[31]);
  sub_2697B62D0();
  if (!v84)
  {
LABEL_61:
    if (v14[2])
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v85 = v83;
  v86 = v84;
  *&v104 = v83;
  *(&v104 + 1) = v84;
  MEMORY[0x28223BE20](v83);
  v96[-2] = &v104;
  if (!sub_2698337D4())
  {

    goto LABEL_61;
  }

  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v87 = v98;
  v88 = __swift_project_value_buffer(v98, qword_281571B38);
  v89 = v96[0];
  v71(v96[0], v88, v87);

  v90 = sub_2698548B4();
  v91 = sub_269854F44();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *&v104 = v93;
    *v92 = 136315138;
    *(v92 + 4) = sub_26974F520(v85, v86, &v104);
    _os_log_impl(&dword_269684000, v90, v91, "Foreground app present in candidate list: %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v93);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v81(v89, v87);
  return v85;
}

uint64_t sub_26971FE38()
{
  OUTLINED_FUNCTION_2_7();
  v1[13] = v2;
  v1[14] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v1[15] = OUTLINED_FUNCTION_4_7();
  v6 = sub_2698538F4();
  v1[16] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[17] = v7;
  v1[18] = *(v8 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v9 = sub_2698532A4();
  v1[21] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[22] = v10;
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_4_7();
  v1[23] = v13;
  v14 = *(MEMORY[0x277D5BCD0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v1[24] = v15;
  *v15 = v16;
  v15[1] = sub_26971FFB0;

  return MEMORY[0x2821BAED8](v13);
}

uint64_t sub_26971FFB0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = *(v2 + 192);
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_2697200B4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v20 = *(v0 + 176);
  v21 = *(v0 + 168);
  v17 = *(v0 + 152);
  v18 = *(v0 + 144);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v19 = *(v0 + 104);
  v7 = v6[16];
  __swift_project_boxed_opaque_existential_1(v6 + 12, v6[15]);
  sub_269852CA4();
  sub_269853234();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_269853114();
  sub_26969B0C0(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_26969B0C0(v5, &qword_280323010, &unk_26985B640);
  sub_2696A73F8((v6 + 43), v0 + 56);
  (*(v3 + 16))(v17, v2, v4);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  (*(v3 + 32))(v13 + v12, v17, v4);
  v14 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v14);
  *(v0 + 96) = sub_269852764();
  sub_269853144();
  (*(v3 + 8))(v2, v4);
  (*(v20 + 8))(v1, v21);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_112();

  __asm { BRAA            X2, X16 }
}

uint64_t *sub_26972039C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2696D1E70((v0 + 7));
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[17];

  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  sub_26969B0C0(v0 + OBJC_IVAR____TtC16SiriVideoIntents13NoResultsFlow_input, &qword_280323AF8, &unk_26985C1D0);
  return v0;
}

uint64_t sub_26972042C()
{
  sub_26972039C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for NoResultsFlow()
{
  result = qword_280323DF0;
  if (!qword_280323DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2697204D8()
{
  sub_2697012B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2697205D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269708558;

  return sub_26971D860();
}

uint64_t sub_269720670(uint64_t a1)
{
  v2 = *v1;
  sub_26971D6C4(a1);
  return 1;
}

uint64_t sub_2697206BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2696DA938;

  return sub_269738544(a1, a2, WitnessTable);
}

uint64_t sub_269720784()
{
  type metadata accessor for NoResultsFlow();

  return sub_269852B84();
}

uint64_t sub_2697207C0(uint64_t a1)
{
  result = sub_269720A1C(&qword_280323E00, type metadata accessor for NoResultsFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269720818()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  v4 = sub_2698538F4();
  OUTLINED_FUNCTION_8_9(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2696DA938;

  return sub_26971C528(v3, v0 + v6);
}

uint64_t sub_2697208E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_30_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_50_0();
  v9(v8);
  return v4;
}

uint64_t sub_269720934()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2696DAF80;

  return sub_26971EDC4(v3, v0 + 16);
}

unint64_t sub_2697209C8()
{
  result = qword_280323E10;
  if (!qword_280323E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323E10);
  }

  return result;
}

uint64_t sub_269720A1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269720A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoDataModels.ButtonModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269720AC8(uint64_t a1)
{
  v2 = type metadata accessor for VideoDataModels.ButtonModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269720B24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_30_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_50_0();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_6_20()
{

  return sub_269852764();
}

uint64_t OUTLINED_FUNCTION_15_10()
{
  v2 = v0[60];
  v4 = v0[49];
  v3 = v0[50];
  v5 = v0[48];
  v6 = v0[40];
  v7 = v0[41] + 344;

  return sub_2696A73F8(v7, (v0 + 7));
}

uint64_t OUTLINED_FUNCTION_18_11()
{
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[50];
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[45];
  v8 = v0[42];
}

void *OUTLINED_FUNCTION_19_8@<X0>(unint64_t a1@<X8>)
{

  return sub_2698150B0((a1 > 1), v1, 1);
}

void *OUTLINED_FUNCTION_28_5@<X0>(uint64_t a1@<X8>)
{

  return sub_2698150B0(0, a1 + 1, 1);
}

void *sub_269720C4C()
{
  sub_269852C84();
  v0 = type metadata accessor for BaseDialogProvider();
  v1 = swift_allocObject();
  v2 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v2);

  v3 = sub_269853254();

  sub_269853524();
  sub_269852BB4();
  v21[3] = v0;
  v21[4] = &off_287A3DBA0;
  v21[0] = v1;
  v19 = v2;
  v20 = MEMORY[0x277D5BD58];
  *&v18 = v3;
  v4 = type metadata accessor for OpenOnRemoteDeviceFlow();
  v5 = OUTLINED_FUNCTION_68_0(v4);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v21, v0);
  v7 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = *v10;
  v5[10] = v0;
  v5[11] = &off_287A3DBA0;
  v5[7] = v12;
  v5[27] = 0;
  v5[28] = 0;
  v13 = OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_contentUrl;
  v14 = sub_269851C74();
  __swift_storeEnumTagSinglePayload(v5 + v13, 1, 1, v14);
  v15 = (v5 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_title);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v5 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_roomName);
  *v16 = 0;
  v16[1] = 0;
  sub_26968E5D4(&v24, (v5 + 2));
  sub_26968E5D4(&v18, (v5 + 12));
  sub_26968E5D4(&v23, (v5 + 17));
  sub_26968E5D4(&v22, (v5 + 22));
  __swift_destroy_boxed_opaque_existential_0(v21);

  return v5;
}

uint64_t sub_269720E44(uint64_t a1)
{
  v116 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_24_3();
  v106 = v3;
  MEMORY[0x28223BE20](v4);
  v109 = &v106 - v5;
  v6 = sub_269851C74();
  v7 = OUTLINED_FUNCTION_8(v6);
  v111 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v110 = v12 - v11;
  v13 = sub_2698538B4();
  v14 = OUTLINED_FUNCTION_8(v13);
  v114 = v15;
  v115 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v20 = v19 - v18;
  v21 = sub_2698538A4();
  v22 = OUTLINED_FUNCTION_8(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v29 = v28 - v27;
  v30 = sub_2698548D4();
  v31 = OUTLINED_FUNCTION_8(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_24_3();
  v113 = v36;
  v38 = MEMORY[0x28223BE20](v37);
  v107 = &v106 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v106 - v40;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v42 = __swift_project_value_buffer(v30, qword_28033D910);
  v43 = *(v33 + 16);
  v117 = v42;
  v118 = v43;
  v119 = v33 + 16;
  (v43)(v41);
  v44 = sub_2698548B4();
  v45 = sub_269854F14();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = OUTLINED_FUNCTION_16_2();
    v112 = v29;
    *v46 = 0;
    _os_log_impl(&dword_269684000, v44, v45, "OpenOnRemoteDeviceFlow on called", v46, 2u);
    v29 = v112;
    OUTLINED_FUNCTION_10();
  }

  v47 = *(v33 + 8);
  v47(v41, v30);
  sub_269853844();
  v49 = v114;
  v48 = v115;
  if ((*(v114 + 88))(v20, v115) != *MEMORY[0x277D5C150])
  {
    (*(v49 + 8))(v20, v48);
LABEL_28:
    v70 = v113;
    v118(v113, v117, v30);
    v71 = sub_2698548B4();
    v72 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v72))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_26_8(&dword_269684000, v73, v74, "OpenOnRemoteDeviceFlow on, will not handle");
      OUTLINED_FUNCTION_10();
    }

    v47(v70, v30);
    return 0;
  }

  (*(v49 + 96))(v20, v48);
  (*(v24 + 32))(v29, v20, v21);
  if (sub_269853884() == 0xD000000000000027 && 0x800000026987A0D0 == v50)
  {
  }

  else
  {
    v52 = sub_269855584();

    if ((v52 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v53 = sub_269853894();
  if (!v53)
  {
    v66 = OUTLINED_FUNCTION_14_8();
    v67(v66);
LABEL_24:
    v122 = 0u;
    v123 = 0u;
LABEL_26:
    v61 = &qword_280322F88;
    v62 = qword_26985AB90;
    v63 = &v122;
    goto LABEL_27;
  }

  sub_26981CFD4(0x6449656369766564, 0xE800000000000000, v53);

  if (!*(&v123 + 1))
  {
    v68 = OUTLINED_FUNCTION_14_8();
    v69(v68);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_23_9();
  if ((OUTLINED_FUNCTION_52() & 1) == 0)
  {
LABEL_22:
    v64 = OUTLINED_FUNCTION_14_8();
    v65(v64);
    goto LABEL_28;
  }

  v54 = v29;
  v56 = v120;
  v55 = v121;
  v57 = sub_269853894();
  if (!v57)
  {
    (*(v24 + 8))(v54, v21);

    goto LABEL_24;
  }

  v112 = v54;
  sub_26981CFD4(7107189, 0xE300000000000000, v57);

  if (!*(&v123 + 1))
  {
    v76 = OUTLINED_FUNCTION_13_11();
    v77(v76);

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_23_9();
  if ((OUTLINED_FUNCTION_52() & 1) == 0)
  {
    v78 = OUTLINED_FUNCTION_13_11();
    v79(v78);

    goto LABEL_28;
  }

  v58 = v109;
  sub_269851C64();

  if (__swift_getEnumTagSinglePayload(v58, 1, v6) == 1)
  {
    v59 = OUTLINED_FUNCTION_13_11();
    v60(v59);

    v61 = &qword_280323030;
    v62 = &qword_26985BAE0;
    v63 = v58;
LABEL_27:
    sub_269698048(v63, v61, v62);
    goto LABEL_28;
  }

  v80 = v58;
  v82 = v110;
  v81 = v111;
  (*(v111 + 32))(v110, v80, v6);
  v83 = v108;
  v84 = *(v108 + 224);
  *(v108 + 216) = v56;
  *(v83 + 224) = v55;
  v85 = v83;

  v86 = v106;
  (*(v81 + 16))(v106, v82, v6);
  __swift_storeEnumTagSinglePayload(v86, 0, 1, v6);
  v87 = OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_contentUrl;
  swift_beginAccess();
  sub_269723A70(v86, v85 + v87);
  swift_endAccess();
  v88 = v112;
  v89 = sub_269853894();
  if (!v89)
  {
    v122 = 0u;
    v123 = 0u;
    v90 = v107;
    goto LABEL_39;
  }

  sub_26981CFD4(0x656C746974, 0xE500000000000000, v89);

  v90 = v107;
  if (!*(&v123 + 1))
  {
LABEL_39:
    sub_269698048(&v122, &qword_280322F88, qword_26985AB90);
    v92 = 0;
    v93 = 0;
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_23_9();
  v91 = OUTLINED_FUNCTION_52();
  v92 = v120;
  v93 = v121;
  if (!v91)
  {
    v92 = 0;
    v93 = 0;
  }

LABEL_40:
  v94 = (v85 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_title);
  v95 = *(v85 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_title + 8);
  *v94 = v92;
  v94[1] = v93;

  v96 = sub_269853894();
  if (v96)
  {
    sub_26981CFD4(0x656D614E6D6F6F72, 0xE800000000000000, v96);

    if (*(&v123 + 1))
    {
      OUTLINED_FUNCTION_23_9();
      v97 = OUTLINED_FUNCTION_52();
      v98 = v120;
      v99 = v121;
      if (!v97)
      {
        v98 = 0;
        v99 = 0;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v122 = 0u;
    v123 = 0u;
  }

  sub_269698048(&v122, &qword_280322F88, qword_26985AB90);
  v98 = 0;
  v99 = 0;
LABEL_46:
  v100 = (v85 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_roomName);
  v101 = *(v85 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_roomName + 8);
  *v100 = v98;
  v100[1] = v99;

  v118(v90, v117, v30);
  v102 = sub_2698548B4();
  v103 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v103))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_26_8(&dword_269684000, v104, v105, "OpenOnRemoteDeviceFlow on, will handle");
    OUTLINED_FUNCTION_10();

    v47(v90, v30);
    (*(v111 + 8))(v110, v6);
    (*(v24 + 8))(v112, v21);
  }

  else
  {

    v47(v90, v30);
    (*(v111 + 8))(v110, v6);
    (*(v24 + 8))(v88, v21);
  }

  return 1;
}

uint64_t sub_269721808()
{
  type metadata accessor for OpenOnRemoteDeviceFlow();
  sub_269723898();
  return sub_269852B54();
}

uint64_t sub_269721868()
{
  OUTLINED_FUNCTION_2_7();
  v1[62] = v2;
  v1[63] = v0;
  v3 = sub_2698548D4();
  v1[64] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[65] = v4;
  v6 = *(v5 + 64) + 15;
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v7 = *(*(sub_269852EB4() - 8) + 64) + 15;
  v1[72] = swift_task_alloc();
  v8 = sub_269853634();
  v1[73] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[74] = v9;
  v11 = *(v10 + 64) + 15;
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0) - 8) + 64) + 15;
  v1[77] = swift_task_alloc();
  v13 = sub_269851C74();
  v1[78] = v13;
  OUTLINED_FUNCTION_5_12(v13);
  v1[79] = v14;
  v16 = *(v15 + 64) + 15;
  v1[80] = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_269721A6C()
{
  OUTLINED_FUNCTION_12_7();
  v1 = v0[63];
  v2 = *(v1 + 216);
  v3 = *(v1 + 224);
  v0[81] = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v0[78];
  v5 = v0[77];
  v6 = OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_contentUrl;
  swift_beginAccess();
  sub_2697238F0(v1 + v6, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
  {
    sub_269698048(v0[77], &qword_280323030, &qword_26985BAE0);
LABEL_4:
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v7 = v0[68];
    v8 = v0[65];
    __swift_project_value_buffer(v0[64], qword_28033D910);
    v9 = OUTLINED_FUNCTION_2_8();
    v10(v9);
    v11 = sub_2698548B4();
    v12 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_4(v12))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_31_0(&dword_269684000, v13, v14, "OpenOnRemoteDeviceFlow execute, missing inputs");
      OUTLINED_FUNCTION_10();
    }

    v15 = v0[68];
    v16 = v0[65];
    v17 = v0[64];

    (*(v16 + 8))(v15, v17);
    return sub_269855354();
  }

  v19 = v0[63];
  (*(v0[79] + 32))(v0[80], v0[77], v0[78]);
  sub_26969329C(0, &qword_280323038, 0x277D479F0);

  v20 = sub_2696CD66C(1);
  v0[82] = v20;
  v21 = sub_269851C24();
  [v20 setPunchOutUri_];

  v22 = v19[5];
  v23 = v19[6];
  __swift_project_boxed_opaque_existential_1(v19 + 2, v22);
  v24 = *(MEMORY[0x277D5BFA8] + 4);
  v25 = swift_task_alloc();
  v0[83] = v25;
  v26 = sub_26969329C(0, &qword_2803239C0, 0x277D471B0);
  *v25 = v0;
  v25[1] = sub_269721D64;

  return MEMORY[0x2821BB680](v20, v2, v3, v22, v26, v23);
}

uint64_t sub_269721D64()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = *(v2 + 664);
  v4 = *(v2 + 648);
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *(v8 + 672) = v7;
  *(v8 + 680) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269721E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_12_7();
  v14 = *(v12 + 672);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v15 = *(v12 + 504);
    if (*(v15 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_title + 8))
    {
      v16 = *(v15 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_title);
      v17 = *(v15 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_title + 8);
    }

    else
    {
      v16 = 0;
      v17 = 0xE000000000000000;
    }

    if (*(v15 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_roomName + 8))
    {
      v41 = *(v15 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_roomName);
      v42 = *(v15 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_roomName + 8);
    }

    else
    {
      v41 = 0;
      v42 = 0xE000000000000000;
    }

    *(v12 + 88) = v16;
    *(v12 + 96) = v17;
    *(v12 + 104) = 0;
    *(v12 + 112) = 0xE000000000000000;
    *(v12 + 120) = 0;
    *(v12 + 128) = 0xE000000000000000;
    *(v12 + 136) = v41;
    *(v12 + 144) = v42;
    *(v12 + 152) = 0;
    memcpy((v12 + 16), (v12 + 88), 0x42uLL);

    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    *(v12 + 688) = v43;
    *v43 = v44;
    v43[1] = sub_269722144;
    OUTLINED_FUNCTION_71();

    return sub_2696BE900();
  }

  else
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v18 = *(v12 + 552);
    v19 = *(v12 + 520);
    __swift_project_value_buffer(*(v12 + 512), qword_28033D910);
    v20 = OUTLINED_FUNCTION_2_8();
    v21(v20);
    v22 = sub_2698548B4();
    v23 = sub_269854F24();
    v24 = OUTLINED_FUNCTION_19_4(v23);
    v25 = *(v12 + 552);
    v26 = *(v12 + 520);
    v27 = *(v12 + 512);
    if (v24)
    {
      v13 = OUTLINED_FUNCTION_16_2();
      *v13 = 0;
      _os_log_impl(&dword_269684000, v22, v23, "OpenOnRemoteDeviceFlow execute, response is not SACommandSucceeded", v13, 2u);
      OUTLINED_FUNCTION_10();
    }

    v28 = *(v26 + 8);
    v29 = OUTLINED_FUNCTION_22_3();
    v30(v29);
    OUTLINED_FUNCTION_15_11();

    (*(v13 + 8))(v22, v25);
    OUTLINED_FUNCTION_0_26();
    v46 = v31;

    OUTLINED_FUNCTION_8_17();
    OUTLINED_FUNCTION_71();

    return v34(v32, v33, v34, v35, v36, v37, v38, v39, v46, a10, a11, a12);
  }
}

uint64_t sub_269722144()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  v4 = *(v2 + 688);
  v10 = *v1;
  *(v3 + 696) = v5;
  *(v3 + 704) = v0;

  sub_2696C285C(v3 + 88);
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_269722258()
{
  v1 = v0[87];
  v2 = v0[76];
  v3 = v0[72];
  v4 = v0[63];
  sub_269852E64();
  sub_2698535C4();
  v5 = v4[15];
  v6 = v4[16];
  __swift_project_boxed_opaque_existential_1(v4 + 12, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v7 = swift_allocObject();
  v0[89] = v7;
  *(v7 + 16) = xmmword_2698590C0;
  *(v7 + 32) = v1;
  v8 = *(MEMORY[0x277D5BE58] + 4);
  v9 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[90] = v10;
  *v10 = v11;
  v10[1] = sub_26972239C;
  v12 = v0[76];

  return MEMORY[0x2821BB488](v0 + 40, v7, v12, v5, v6);
}

uint64_t sub_26972239C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 720);
  v3 = *(v1 + 712);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2697224A0()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = *(v0 + 568);
  v2 = *(v0 + 520);
  __swift_project_value_buffer(*(v0 + 512), qword_28033D910);
  v3 = OUTLINED_FUNCTION_2_8();
  v4(v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v6))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_31_0(&dword_269684000, v7, v8, "OpenOnRemoteDeviceFlow execute, dialog success");
    OUTLINED_FUNCTION_10();
  }

  v9 = *(v0 + 672);
  v21 = *(v0 + 656);
  v22 = *(v0 + 696);
  v10 = *(v0 + 632);
  v25 = *(v0 + 624);
  v26 = *(v0 + 640);
  v11 = *(v0 + 592);
  v23 = *(v0 + 584);
  v24 = *(v0 + 608);
  v12 = *(v0 + 568);
  v13 = *(v0 + 520);
  v14 = *(v0 + 504);
  v15 = *(v0 + 512);
  v16 = *(v0 + 496);

  (*(v13 + 8))(v12, v15);
  sub_2696A73F8(v14 + 136, v0 + 360);
  sub_2696A73F8(v0 + 320, v0 + 400);
  v17 = swift_allocObject();
  sub_26968E5D4((v0 + 400), v17 + 16);
  v18 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v18);
  *(v0 + 488) = sub_269852764();
  sub_269853144();

  __swift_destroy_boxed_opaque_existential_0((v0 + 320));
  (*(v11 + 8))(v24, v23);
  (*(v10 + 8))(v26, v25);
  OUTLINED_FUNCTION_0_26();

  v19 = *(v0 + 8);

  return v19(0);
}

uint64_t sub_269722740()
{
  v28 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = v0[88];
  v2 = v0[70];
  v3 = v0[65];
  v4 = v0[64];
  v5 = __swift_project_value_buffer(v4, qword_28033D910);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2698548B4();
  v8 = sub_269854F24();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[88];
  v11 = v0[70];
  v12 = v0[65];
  v13 = v0[64];
  if (v9)
  {
    v26 = v0[70];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315138;
    v0[60] = v10;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v17 = sub_269854AE4();
    v19 = sub_26974F520(v17, v18, &v27);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_269684000, v7, v8, "OpenOnRemoteDeviceFlow execute, dialog error %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v21 = *(v12 + 8);
    v20 = v12 + 8;
    v21(v26, v13);
  }

  else
  {

    v22 = *(v12 + 8);
    v20 = v12 + 8;
    v22(v11, v13);
  }

  OUTLINED_FUNCTION_15_11();

  (*(v8 + 8))(v7, v20);
  OUTLINED_FUNCTION_0_26();

  v23 = OUTLINED_FUNCTION_8_17();

  return v24(v23);
}

uint64_t sub_2697229C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_114();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_12_7();
  a18 = v20;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v23 = *(v20 + 680);
  v24 = *(v20 + 536);
  v25 = *(v20 + 520);
  v26 = *(v20 + 512);
  v27 = __swift_project_value_buffer(v26, qword_28033D910);
  *(v20 + 728) = v27;
  v28 = *(v25 + 16);
  *(v20 + 736) = v28;
  *(v20 + 744) = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v28(v24, v27, v26);
  v29 = v23;
  v30 = sub_2698548B4();
  v31 = sub_269854F24();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v20 + 680);
    v33 = *(v20 + 536);
    v34 = *(v20 + 520);
    v35 = *(v20 + 512);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    a9 = v37;
    *v36 = 136315138;
    *(v20 + 472) = v32;
    v38 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v39 = sub_269854AE4();
    v41 = sub_26974F520(v39, v40, &a9);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_269684000, v30, v31, "OpenOnRemoteDeviceFlow execute, submitToRemote error %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v42 = *(v34 + 8);
  }

  else
  {
    v44 = *(v20 + 536);
    v45 = *(v20 + 520);
    v46 = *(v20 + 512);

    v42 = *(v45 + 8);
  }

  v43 = OUTLINED_FUNCTION_22_3();
  v42(v43);
  *(v20 + 752) = v42;
  v47 = *(v20 + 504);
  *(v20 + 160) = 0;
  *(v20 + 164) = 1;
  *(v20 + 168) = 0u;
  *(v20 + 184) = 0u;
  v48 = swift_task_alloc();
  *(v20 + 760) = v48;
  *v48 = v20;
  v48[1] = sub_269722C24;
  OUTLINED_FUNCTION_71();

  return sub_2696C0FB4();
}

uint64_t sub_269722C24(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  v6 = *(v4 + 760);
  v7 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  if (v1)
  {
  }

  else
  {
    *(v5 + 768) = a1;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269722D40()
{
  v1 = v0[96];
  v2 = v0[75];
  v3 = v0[72];
  v4 = v0[63];
  v5 = v4[15];
  v6 = v4[16];
  __swift_project_boxed_opaque_existential_1(v4 + 12, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v7 = swift_allocObject();
  v0[97] = v7;
  *(v7 + 16) = xmmword_2698590C0;
  *(v7 + 32) = v1;
  v8 = v1;
  sub_269852E64();
  sub_2698535C4();
  v9 = *(MEMORY[0x277D5BE58] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[98] = v10;
  *v10 = v11;
  v10[1] = sub_269722E88;
  v12 = v0[75];

  return MEMORY[0x2821BB488](v0 + 25, v7, v12, v5, v6);
}

uint64_t sub_269722E88()
{
  OUTLINED_FUNCTION_14_6();
  v2 = v1[98];
  v3 = v1[97];
  v4 = v1[75];
  v5 = v1[74];
  v6 = v1[73];
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_22_3();
  v11(v10);
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_269722FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_12_7();
  v13 = *(v12 + 768);
  v14 = *(v12 + 680);
  v15 = *(v12 + 656);
  v16 = *(v12 + 640);
  v17 = *(v12 + 632);
  v18 = *(v12 + 624);
  v19 = *(v12 + 496);
  sub_2696A73F8(*(v12 + 504) + 136, v12 + 240);
  sub_2696A73F8(v12 + 200, v12 + 280);
  v20 = swift_allocObject();
  sub_26968E5D4((v12 + 280), v20 + 16);
  v21 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v21);
  *(v12 + 464) = sub_269852764();
  sub_269853144();

  __swift_destroy_boxed_opaque_existential_0((v12 + 200));
  v22 = *(v17 + 8);
  v23 = OUTLINED_FUNCTION_22_3();
  v24(v23);
  OUTLINED_FUNCTION_0_26();
  v35 = v25;

  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_71();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, v35, a10, a11, a12);
}

uint64_t sub_269723180()
{
  v1 = *(v0 + 744);
  (*(v0 + 736))(*(v0 + 528), *(v0 + 728), *(v0 + 512));
  v2 = sub_2698548B4();
  v3 = sub_269854F24();
  if (OUTLINED_FUNCTION_19_4(v3))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_31_0(&dword_269684000, v4, v5, "OpenOnRemoteDeviceFlow execute, error creating remote device unreachable dialog");
    OUTLINED_FUNCTION_10();
  }

  v6 = *(v0 + 752);
  v7 = *(v0 + 680);
  v8 = *(v0 + 656);
  v9 = *(v0 + 632);
  v17 = *(v0 + 624);
  v18 = *(v0 + 640);
  v10 = *(v0 + 528);
  v11 = *(v0 + 520);
  v12 = *(v0 + 512);
  v13 = *(v0 + 496);

  v6(v10, v12);
  sub_269853164();

  (*(v9 + 8))(v18, v17);
  OUTLINED_FUNCTION_0_26();

  v14 = OUTLINED_FUNCTION_8_17();

  return v15(v14);
}

uint64_t sub_26972331C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_269723AE0, 0, 0);
}

uint64_t sub_269723380(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2697233A0, 0, 0);
}

uint64_t sub_2697233A0()
{
  OUTLINED_FUNCTION_2_7();
  sub_2696A73F8(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t *sub_269723400()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2696D1E70((v0 + 7));
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v1 = v0[28];

  sub_269698048(v0 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_contentUrl, &qword_280323030, &qword_26985BAE0);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_title + 8);

  v3 = *(v0 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_roomName + 8);

  return v0;
}

uint64_t sub_269723490()
{
  sub_269723400();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for OpenOnRemoteDeviceFlow()
{
  result = qword_280323E30;
  if (!qword_280323E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26972353C()
{
  sub_2697235EC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2697235EC()
{
  if (!qword_280323E40)
  {
    sub_269851C74();
    v0 = sub_2698550A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280323E40);
    }
  }
}

uint64_t sub_269723684()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696E1660;

  return sub_269721868();
}

uint64_t sub_26972376C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_269708804;

  return sub_269738544(a1, a2, WitnessTable);
}

uint64_t sub_269723834()
{
  type metadata accessor for OpenOnRemoteDeviceFlow();

  return sub_269852B84();
}

unint64_t sub_269723870(uint64_t a1)
{
  result = sub_269723898();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_269723898()
{
  result = qword_280323E48;
  if (!qword_280323E48)
  {
    type metadata accessor for OpenOnRemoteDeviceFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323E48);
  }

  return result;
}

uint64_t sub_2697238F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269723960()
{
  OUTLINED_FUNCTION_2_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_6(v1);

  return sub_26972331C(v3, v4);
}

uint64_t sub_2697239E8()
{
  OUTLINED_FUNCTION_2_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_6(v1);

  return sub_269723380(v3, v4);
}

uint64_t sub_269723A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_26()
{
  result = v0[80];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[67];
  v11 = v0[66];
  return result;
}

uint64_t OUTLINED_FUNCTION_15_11()
{
  v2 = v0[84];
  v3 = v0[82];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[62];

  return sub_269853164();
}

void OUTLINED_FUNCTION_26_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_269723BC0()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_269723C5C;

  return sub_269723E48();
}

uint64_t sub_269723C5C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_269723D4C()
{
  v1 = *(v0 + 16);
  v2 = v1[4];
  v3 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_269724C64();
  sub_269852BC4();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_269723DF4()
{
  sub_269724B58();

  return sub_269852B54();
}

uint64_t sub_269723E48()
{
  OUTLINED_FUNCTION_2_7();
  v1[22] = v2;
  v1[23] = v0;
  v3 = sub_2698548D4();
  v1[24] = v3;
  v4 = *(v3 - 8);
  v1[25] = v4;
  v5 = *(v4 + 64) + 15;
  v1[26] = swift_task_alloc();
  v6 = sub_2698532A4();
  v1[27] = v6;
  v7 = *(v6 - 8);
  v1[28] = v7;
  v8 = *(v7 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269723F68()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[23];
  sub_269734158();
  v2 = type metadata accessor for BaseDialogProvider();
  v3 = swift_allocObject();
  v0[5] = v2;
  v0[6] = &off_287A3DBA0;
  v0[2] = v3;
  v4 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_26972406C;
  v6 = v0[29];

  return sub_269788BF4(v6, 0xD000000000000017, 0x800000026987DD10);
}

uint64_t sub_26972406C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v8 + 256) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269724168()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  sub_269724D50((v0 + 2));
  (*(v4 + 32))(v1, v2, v3);
  sub_2698538C4();
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_269852CA4();
  v6 = sub_269852F24();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_269852F04();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v9 = sub_269852F14();

  v10 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  v0[33] = v10;
  if (v9 >> 62)
  {
    sub_26969329C(0, &qword_2803239B0, 0x277D47140);

    v11 = sub_269855364();
  }

  else
  {

    sub_269855594();
    sub_26969329C(0, &qword_2803239B0, 0x277D47140);
    v11 = v9;
  }

  sub_26976FAD4(v11, v10);
  sub_269852C84();
  v12 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  v13 = *(MEMORY[0x277D5BFB8] + 4);
  v14 = swift_task_alloc();
  v0[34] = v14;
  v0[35] = sub_26969329C(0, &qword_2803239C0, 0x277D471B0);
  *v14 = v0;
  v14[1] = sub_2697243A4;
  v15 = OUTLINED_FUNCTION_9_14();

  return MEMORY[0x2821BB6A0](v15);
}

uint64_t sub_2697243A4()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v5 = v4;
  v7 = *(v6 + 272);
  v8 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v9 = v8;
  *(v10 + 288) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2697244A8()
{
  sub_269724D50((v0 + 2));
  if (qword_2803226E0 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v3, qword_28033D910);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "Received failure result from DialogEngine", v7, 2u);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  v8 = v0[32];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  v12 = v0[22];

  (*(v10 + 8))(v9, v11);
  sub_269853164();

  OUTLINED_FUNCTION_10_13();

  OUTLINED_FUNCTION_28_2();

  return v13(2);
}

uint64_t sub_269724634()
{
  OUTLINED_FUNCTION_8_5();
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_26969329C(0, &qword_280323038, 0x277D479F0);
  v1 = sub_2696CD66C(1);
  v0[37] = v1;
  if (qword_2803226C8 != -1)
  {
    swift_once();
  }

  v2 = sub_269851C74();
  __swift_project_value_buffer(v2, qword_28033D8F0);
  v3 = sub_269851C24();
  [v1 setPunchOutUri_];

  sub_269852C84();
  v4 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  v5 = *(MEMORY[0x277D5BFB8] + 4);
  v6 = swift_task_alloc();
  v0[38] = v6;
  *v6 = v0;
  v6[1] = sub_269724788;
  v7 = v0[35];
  v8 = OUTLINED_FUNCTION_9_14();

  return MEMORY[0x2821BB6A0](v8);
}

uint64_t sub_269724788()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v5 = v4;
  v7 = *(v6 + 304);
  v8 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v9 = v8;
  *(v10 + 312) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26972488C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 264);

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  OUTLINED_FUNCTION_8_18();
  v2 = OUTLINED_FUNCTION_5_21();
  v3(v2);
  OUTLINED_FUNCTION_10_13();

  OUTLINED_FUNCTION_28_2();

  return v4(0);
}

uint64_t sub_269724928()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 288);

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  OUTLINED_FUNCTION_8_18();
  v2 = OUTLINED_FUNCTION_5_21();
  v3(v2);
  OUTLINED_FUNCTION_10_13();

  OUTLINED_FUNCTION_28_2();

  return v4(0);
}

uint64_t sub_2697249C8()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 312);
  v2 = *(v0 + 264);

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  OUTLINED_FUNCTION_8_18();
  v3 = OUTLINED_FUNCTION_5_21();
  v4(v3);
  OUTLINED_FUNCTION_10_13();

  OUTLINED_FUNCTION_28_2();

  return v5(0);
}

uint64_t sub_269724A98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_269708558;

  return sub_269723E48();
}

unint64_t sub_269724B30(uint64_t a1)
{
  result = sub_269724B58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_269724B58()
{
  result = qword_280323E50;
  if (!qword_280323E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323E50);
  }

  return result;
}

uint64_t sub_269724BB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269708804;

  return (sub_269723BC0)(a1);
}

uint64_t OUTLINED_FUNCTION_8_18()
{
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[22];

  return sub_269853164();
}

uint64_t OUTLINED_FUNCTION_10_13()
{
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[26];
}

void sub_269724DFC()
{
  v0 = [objc_allocWithZone(type metadata accessor for PlayLiveServiceIntent()) init];
  sub_2696D3780();
  v1 = [v0 typeName];
  v2 = sub_269854A94();
  v4 = v3;

  qword_28033D688 = v2;
  unk_28033D690 = v4;
}

uint64_t sub_269724E7C(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 3:
      return a2 == 3;
    case 4:
      return a2 == 4;
    case 5:
      return a2 == 5;
    case 6:
      return a2 == 6;
    case 7:
      return a2 == 7;
    case 8:
      return a2 == 8;
    default:
      if (a2 - 3 < 6)
      {
        return 0;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          if (a2 != 1)
          {
            return 0;
          }
        }

        else if (a1 == 2)
        {
          if (a2 != 2)
          {
            return 0;
          }
        }

        else if (a2 < 3 || (sub_26973CD58(a1, a2) & 1) == 0)
        {
          return 0;
        }

        return 1;
      }

      return !a2;
  }
}

void sub_269724F70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v1 = OUTLINED_FUNCTION_8_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v64 = &v56 - v4;
  v63 = sub_269853854();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  sub_2698538C4();
  sub_269853524();
  v9 = type metadata accessor for BaseDialogProvider();
  v59 = swift_allocObject();
  v10 = sub_2698546A4();
  v65 = sub_269854684();
  v58 = type metadata accessor for DeviceSelectionDonationProvider(0);
  v11 = sub_2696C7734();
  v62 = v11;
  v60 = sub_269854694();
  sub_269852C84();
  v87 = &type metadata for CoreAnalyticsService;
  v88 = &xmmword_287A41610;
  v90 = &type metadata for UTSNetworkProvider;
  v91 = &off_287A43DC0;
  *&v89 = swift_allocObject();
  sub_2697D24B0(&v86, (v89 + 16));
  v92 = &type metadata for CoreAnalyticsService;
  v93 = &xmmword_287A41610;
  v87 = &type metadata for UTSProvider;
  v88 = &off_287A43FA8;
  *&v86 = swift_allocObject();
  sub_269728D78(&v89, v86 + 16);
  v12 = type metadata accessor for LiveServiceResolver();
  v57 = v12;
  v13 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v86, &type metadata for UTSProvider);
  OUTLINED_FUNCTION_3_20();
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v19 = (v18 - v17);
  (*(v20 + 16))(v18 - v17);
  v13[5] = &type metadata for UTSProvider;
  v13[6] = &off_287A43FA8;
  v21 = swift_allocObject();
  v13[2] = v21;
  memcpy((v21 + 16), v19, 0x50uLL);
  __swift_destroy_boxed_opaque_existential_0(&v86);
  sub_269728DD4(&v89);
  v22 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v22);
  v23 = sub_269853254();
  v61 = v23;
  sub_269852BB4();
  v88 = &off_287A3DBA0;
  v87 = v9;
  v24 = v58;
  *&v86 = v59;
  v82[4] = MEMORY[0x277D61F10];
  v84 = &type metadata for VideoFlowFactoryImpl;
  v85 = &off_287A40968;
  v82[3] = v10;
  v82[0] = v65;
  v80 = v58;
  v81 = &off_287A3E7C8;
  v79[0] = v11;
  v78[3] = sub_269854674();
  v78[4] = MEMORY[0x277D61F08];
  v78[0] = v60;
  v71 = MEMORY[0x277D5BD58];
  v76 = &type metadata for FeatureFlagServiceImpl;
  v77 = &off_287A41BD8;
  v73 = v12;
  v74 = &off_287A42540;
  v72[0] = v13;
  v70 = v22;
  *&v69 = v23;
  v25 = type metadata accessor for PlayLiveServiceWrapperFlow();
  v26 = OUTLINED_FUNCTION_68_0(v25);
  __swift_mutable_project_boxed_opaque_existential_1(&v86, v9);
  OUTLINED_FUNCTION_3_20();
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_1();
  v31 = OUTLINED_FUNCTION_12_16(v30);
  v32(v31);
  __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
  __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
  OUTLINED_FUNCTION_3_20();
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_1();
  v37 = OUTLINED_FUNCTION_11_17(v36);
  v38(v37);
  __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
  __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
  OUTLINED_FUNCTION_3_20();
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_1();
  v44 = (v43 - v42);
  (*(v45 + 16))(v43 - v42);
  v46 = *v10;
  v47 = *v12;
  v48 = *v44;
  v68[3] = v9;
  v68[4] = &off_287A3DBA0;
  v68[0] = v46;
  v67[3] = &type metadata for VideoFlowFactoryImpl;
  v67[4] = &off_287A40968;
  v66[3] = v24;
  v66[4] = &off_287A3E7C8;
  v66[0] = v47;
  v26[55] = &type metadata for FeatureFlagServiceImpl;
  v26[56] = &off_287A41BD8;
  v26[60] = v57;
  v26[61] = &off_287A42540;
  v26[57] = v48;
  v49 = OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_input;
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v63);
  *(v26 + OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_executionDevice) = 0;
  swift_beginAccess();
  v53 = v65;

  v54 = v26 + v49;
  v55 = v64;
  sub_269728E28(v64, v54);
  swift_endAccess();
  sub_2696A73F8(v96, (v26 + 2));
  sub_2696A73F8(v95, (v26 + 7));
  sub_2696A73F8(v68, (v26 + 12));
  sub_2696A73F8(v68, (v26 + 17));
  sub_2696A73F8(v67, (v26 + 22));
  sub_2696A73F8(v82, (v26 + 27));
  sub_2696A73F8(v66, (v26 + 32));
  v26[72] = 3;
  sub_2696A73F8(v78, (v26 + 37));
  sub_2696A73F8(v94, (v26 + 42));
  v26[50] = &type metadata for CoreAnalyticsService;
  v26[51] = &xmmword_287A41610;

  __swift_destroy_boxed_opaque_existential_0(v94);
  __swift_destroy_boxed_opaque_existential_0(v95);
  __swift_destroy_boxed_opaque_existential_0(v96);
  sub_269698048(v55, &qword_280323AF8, &unk_26985C1D0);
  __swift_destroy_boxed_opaque_existential_0(v78);
  __swift_destroy_boxed_opaque_existential_0(v82);
  __swift_destroy_boxed_opaque_existential_0(v66);
  __swift_destroy_boxed_opaque_existential_0(v67);
  __swift_destroy_boxed_opaque_existential_0(v68);
  sub_26968E5D4(&v69, (v26 + 62));
  sub_26968E5D4(&v89, (v26 + 67));
  __swift_destroy_boxed_opaque_existential_0(v72);
  __swift_destroy_boxed_opaque_existential_0(v75);
  __swift_destroy_boxed_opaque_existential_0(v79);
  __swift_destroy_boxed_opaque_existential_0(v83);
  __swift_destroy_boxed_opaque_existential_0(&v86);
  OUTLINED_FUNCTION_21_0();
}

BOOL sub_2697256C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v2 = OUTLINED_FUNCTION_8_9(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = *(v0 + 576);
  if (v7 == 3)
  {
    v8 = sub_269853854();
    v9 = *(*(v8 - 8) + 16);
    v10 = OUTLINED_FUNCTION_22_3();
    v11(v10);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
    v12 = OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_input;
    swift_beginAccess();
    sub_269702838(v6, v0 + v12);
    swift_endAccess();
    v13 = *(v0 + 576);
    *(v0 + 576) = 4;
    sub_269728BA0(v13);
  }

  return v7 == 3;
}

uint64_t sub_2697257EC()
{
  type metadata accessor for PlayLiveServiceWrapperFlow();
  sub_269728D30(&qword_280323E70, type metadata accessor for PlayLiveServiceWrapperFlow);
  return sub_269852B54();
}

uint64_t sub_26972587C()
{
  OUTLINED_FUNCTION_2_7();
  v1[26] = v2;
  v1[27] = v0;
  v3 = sub_2698548D4();
  v1[28] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[29] = v4;
  v6 = *(v5 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v7 = sub_2698538B4();
  v1[37] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[38] = v8;
  v10 = *(v9 + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v11);
  v13 = *(v12 + 64);
  v1[41] = OUTLINED_FUNCTION_4_7();
  v14 = sub_269853854();
  v1[42] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v1[43] = v15;
  v17 = *(v16 + 64);
  v1[44] = OUTLINED_FUNCTION_4_7();
  v18 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

void sub_269725A48()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 216);
  v4 = OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_input;
  swift_beginAccess();
  sub_26970897C(v3 + v4, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_269698048(*(v0 + 328), &qword_280323AF8, &unk_26985C1D0);
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v6 = (v0 + 240);
    v5 = *(v0 + 240);
    v7 = *(v0 + 232);
    __swift_project_value_buffer(*(v0 + 224), qword_28033D910);
    v8 = OUTLINED_FUNCTION_2_8();
    v9(v8);
    v10 = sub_2698548B4();
    v11 = sub_269854F24();
    if (!OUTLINED_FUNCTION_39_1(v11))
    {
      v13 = *v6;
      goto LABEL_13;
    }

    v12 = "PlayLiveServiceWrapperFlow.execute() Input is nil. Error executing request";
LABEL_6:
    v13 = *v6;
    v14 = OUTLINED_FUNCTION_16_2();
    *v14 = 0;
    _os_log_impl(&dword_269684000, v10, v7, v12, v14, 2u);
    OUTLINED_FUNCTION_10();
LABEL_13:
    v24 = v0 + 224;
    v23 = *(v0 + 224);
    v22 = *(v24 + 8);

    (*(v22 + 8))(v13, v23);
    sub_269855354();
    OUTLINED_FUNCTION_7_8();
    return;
  }

  v15 = *(v0 + 216);
  v16 = (*(*(v0 + 344) + 32))(*(v0 + 352), *(v0 + 328), *(v0 + 336));
  v17 = *(v15 + 576);
  switch(v17)
  {
    case 3uLL:
      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v6 = (v0 + 256);
      v18 = *(v0 + 256);
      v7 = *(v0 + 232);
      __swift_project_value_buffer(*(v0 + 224), qword_28033D910);
      v19 = OUTLINED_FUNCTION_2_8();
      v20(v19);
      v10 = sub_2698548B4();
      v21 = sub_269854F24();
      if (OUTLINED_FUNCTION_39_1(v21))
      {
        v12 = "Flow is in .initialized state in execute(). Ensure the right constructor is being used.";
        goto LABEL_6;
      }

      v13 = *v6;
      goto LABEL_13;
    case 4uLL:
      v39 = *(v0 + 216);
      v40 = v39[71];
      __swift_project_boxed_opaque_existential_1(v39 + 67, v39[70]);
      sub_269852C74();
      if (qword_280322468 != -1)
      {
        OUTLINED_FUNCTION_13_12();
      }

      v41 = *(v0 + 216);

      OUTLINED_FUNCTION_5_20();
      sub_269852C64();
      sub_269852BC4();

      v42 = v41[6];
      __swift_project_boxed_opaque_existential_1(v41 + 2, v41[5]);
      OUTLINED_FUNCTION_22_3();
      v43 = sub_269852D04();
      v44 = *(v0 + 352);
      if (v43)
      {
        v45 = *(v0 + 336);
        v46 = *(v0 + 344);
        v47 = *(v0 + 208);
        v48 = *(v0 + 216);
        sub_269727E2C();
LABEL_27:
        v49 = *(v46 + 8);
        v50 = OUTLINED_FUNCTION_22_3();
        v51(v50);
LABEL_40:
        OUTLINED_FUNCTION_16_11();

        OUTLINED_FUNCTION_7_7();
        OUTLINED_FUNCTION_7_8();

        __asm { BRAA            X1, X16 }
      }

      v99 = *(v0 + 320);
      v100 = *(v0 + 296);
      v101 = *(v0 + 304);
      v102 = *(v0 + 352);
      sub_269853844();
      v103 = (*(v101 + 88))(v99, v100);
      if (v103 != *MEMORY[0x277D5C128] && v103 != *MEMORY[0x277D5C140] && v103 != *MEMORY[0x277D5C148])
      {
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10();
        }

        v6 = (v0 + 288);
        v114 = *(v0 + 288);
        v7 = *(v0 + 232);
        __swift_project_value_buffer(*(v0 + 224), qword_28033D910);
        v115 = OUTLINED_FUNCTION_2_8();
        v116(v115);
        v10 = sub_2698548B4();
        v117 = sub_269854F24();
        if (!OUTLINED_FUNCTION_39_1(v117))
        {
          v13 = *v6;
          goto LABEL_13;
        }

        v12 = "Unexpected parse type in input";
        goto LABEL_6;
      }

      v106 = *(*(v0 + 304) + 8);
      (v106)(*(v0 + 320), *(v0 + 296));
      *(v0 + 160) = &type metadata for SiriVideoFeatureKeys;
      *(v0 + 168) = sub_2696A2978();
      *(v0 + 136) = 0;
      v107 = sub_269853B34();
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      if (v107)
      {
        v108 = *(v0 + 352);
        v109 = *(v0 + 312);
        v110 = *(v0 + 296);
        sub_269853844();
        LOBYTE(v108) = sub_269793450(v109, v41 + 2);
        v111 = OUTLINED_FUNCTION_22_3();
        v106(v111);
        if (v108)
        {
          v46 = *(v0 + 344);
          v112 = *(v0 + 336);
          v113 = *(v0 + 216);
          sub_269727070(*(v0 + 352), *(v0 + 208));
          goto LABEL_27;
        }
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      *(v0 + 360) = v32;
      *v32 = v118;
      v34 = sub_2697264C8;
LABEL_20:
      v32[1] = v34;
      v35 = *(v0 + 352);
      v36 = *(v0 + 208);
      v37 = *(v0 + 216);
      OUTLINED_FUNCTION_7_8();

      sub_269726778();
      return;
    case 5uLL:
      if (qword_2803226E0 != -1)
      {
        v16 = OUTLINED_FUNCTION_0_10();
      }

      v6 = (v0 + 248);
      v29 = *(v0 + 248);
      v7 = *(v0 + 224);
      v30 = *(v0 + 232);
      OUTLINED_FUNCTION_31_5(v16, qword_28033D910);
      (*(v30 + 16))(v29);
      v10 = sub_2698548B4();
      v31 = sub_269854F24();
      if (OUTLINED_FUNCTION_39_1(v31))
      {
        v12 = "Unexpected state in execute()";
        goto LABEL_6;
      }

      v13 = *v6;
      goto LABEL_13;
    case 6uLL:
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      *(v0 + 368) = v32;
      *v32 = v33;
      v34 = sub_269726694;
      goto LABEL_20;
    case 7uLL:
      v26 = *(v0 + 344);
      v25 = *(v0 + 352);
      v27 = *(v0 + 336);
      v28 = *(v0 + 208);
      sub_269853164();
      (*(v26 + 8))(v25, v27);
      goto LABEL_40;
    case 8uLL:
      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v52 = *(v0 + 264);
      v53 = *(v0 + 232);
      __swift_project_value_buffer(*(v0 + 224), qword_28033D910);
      v54 = OUTLINED_FUNCTION_2_8();
      v55(v54);
      v56 = sub_2698548B4();
      v57 = sub_269854F24();
      if (OUTLINED_FUNCTION_19_4(v57))
      {
        *OUTLINED_FUNCTION_16_2() = 0;
        OUTLINED_FUNCTION_18_8();
        _os_log_impl(v58, v59, v60, v61, v62, 2u);
        OUTLINED_FUNCTION_10();
      }

      v64 = *(v0 + 344);
      v63 = *(v0 + 352);
      v65 = *(v0 + 336);
      v66 = *(v0 + 264);
      v67 = *(v0 + 224);
      v68 = *(v0 + 232);
      v69 = *(v0 + 208);
      v70 = *(v0 + 216);

      (*(v68 + 8))(v66, v67);
      sub_26979609C(v70 + 56, v70 + 136, v70 + 16);
      sub_269728BA0(8uLL);
      v71 = *(v64 + 8);
      v72 = OUTLINED_FUNCTION_22_3();
      v73(v72);
      goto LABEL_40;
    default:
      sub_2697017E4(*(v15 + 576));
      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v74 = *(v0 + 280);
      v75 = *(v0 + 224);
      v76 = *(v0 + 232);
      v77 = __swift_project_value_buffer(v75, qword_28033D910);
      v120 = *(v76 + 16);
      v120(v74, v77, v75);
      v78 = sub_2698548B4();
      v79 = sub_269854F04();
      if (OUTLINED_FUNCTION_19_4(v79))
      {
        v80 = OUTLINED_FUNCTION_16_2();
        *v80 = 0;
        _os_log_impl(&dword_269684000, v78, v79, "PlayLiveServiceWrapperFlow.execute() in .unableToSelectExecutionDevice state", v80, 2u);
        OUTLINED_FUNCTION_10();
      }

      v82 = *(v0 + 272);
      v81 = *(v0 + 280);
      v83 = *(v0 + 224);
      v84 = *(v0 + 232);
      v85 = *(v0 + 216);

      v119 = *(v84 + 8);
      v119(v81, v83);
      v120(v82, v77, v83);
      v86 = sub_2698548B4();
      v87 = sub_269854F14();
      if (OUTLINED_FUNCTION_39_1(v87))
      {
        v88 = OUTLINED_FUNCTION_16_2();
        *v88 = 0;
        _os_log_impl(&dword_269684000, v86, v77, "Device resolution was required but none were found. Dialoging failure and completing the flow.", v88, 2u);
        OUTLINED_FUNCTION_10();
      }

      v89 = *(v0 + 344);
      v121 = *(v0 + 352);
      v90 = *(v0 + 336);
      v91 = *(v0 + 272);
      v93 = *(v0 + 224);
      v92 = *(v0 + 232);
      v94 = *(v0 + 208);

      v119(v91, v93);
      sub_2696A73F8(v85 + 56, v0 + 16);
      sub_2696F3E90(v85 + 136, v0 + 56);
      sub_2696A73F8(v85 + 496, v0 + 96);
      v95 = swift_allocObject();
      *(v95 + 16) = v17;
      *(v95 + 24) = *(v0 + 56);
      *(v95 + 40) = *(v0 + 72);
      *(v95 + 56) = *(v0 + 88);
      sub_26968E5D4((v0 + 96), v95 + 64);
      v96 = sub_269852774();
      OUTLINED_FUNCTION_68_0(v96);
      sub_269728D1C(v17);
      *(v0 + 200) = sub_269852764();
      sub_269853144();
      sub_269728BA0(v17);
      (*(v89 + 8))(v121, v90);

      goto LABEL_40;
  }
}

uint64_t sub_2697264C8()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 360);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2697265AC()
{
  (*(v0[43] + 8))(v0[44], v0[42]);
  OUTLINED_FUNCTION_16_11();

  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_269726694()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 368);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_269726778()
{
  OUTLINED_FUNCTION_2_7();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = sub_2698538B4();
  v1[30] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[31] = v5;
  v7 = *(v6 + 64);
  v1[32] = OUTLINED_FUNCTION_4_7();
  v8 = sub_2698548D4();
  v1[33] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[34] = v9;
  v11 = *(v10 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_269726880()
{
  v58 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 232);
  v5 = __swift_project_value_buffer(v2, qword_28033D910);
  *(v0 + 296) = v5;
  v6 = *(v3 + 16);
  *(v0 + 304) = v6;
  *(v0 + 312) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_2698548B4();
  LOBYTE(v2) = sub_269854F04();

  if (os_log_type_enabled(v7, v2))
  {
    v8 = *(v0 + 232);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v57 = v10;
    *v9 = 136315138;
    v11 = *(v8 + OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_executionDevice);
    if (v11)
    {
      v12 = [v11 description];
      v13 = sub_269854A94();
      v15 = v14;
    }

    else
    {
      v15 = 0xE500000000000000;
      v13 = 0x3E6C696E3CLL;
    }

    v22 = *(v0 + 288);
    v23 = *(v0 + 264);
    v24 = *(v0 + 272);
    v25 = sub_26974F520(v13, v15, &v57);

    *(v9 + 4) = v25;
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v24 + 8))(v22, v23);
  }

  else
  {
    v16 = *(v0 + 288);
    v17 = *(v0 + 264);
    v18 = *(v0 + 272);

    v19 = *(v18 + 8);
    v20 = OUTLINED_FUNCTION_22_3();
    v21(v20);
  }

  v31 = *(v0 + 232);
  v55 = *(v0 + 224);
  v56 = *(v0 + 256);
  v32 = OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_executionDevice;
  *(v0 + 320) = OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_executionDevice;
  v33 = *(v31 + v32);
  sub_2696A73F8(v31 + 296, v0 + 16);
  sub_2696A73F8(v31 + 336, v0 + 56);
  sub_2696A73F8(v31 + 456, v0 + 96);
  v34 = *(v0 + 120);
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, v34);
  OUTLINED_FUNCTION_3_20();
  v37 = v36;
  v39 = *(v38 + 64);
  v40 = OUTLINED_FUNCTION_4_7();
  (*(v37 + 16))(v40, v35, v34);
  v41 = *v40;
  v42 = type metadata accessor for LiveServiceResolver();
  *(v0 + 160) = v42;
  *(v0 + 168) = &off_287A42540;
  *(v0 + 136) = v41;
  *(v0 + 200) = &type metadata for AccountProvider;
  *(v0 + 208) = &off_287A41348;
  type metadata accessor for PlayLiveServiceFlowStrategy();
  v43 = swift_allocObject();
  *(v0 + 328) = v43;
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v42);
  OUTLINED_FUNCTION_3_20();
  v46 = v45;
  v48 = *(v47 + 64);
  v49 = OUTLINED_FUNCTION_4_7();
  (*(v46 + 16))(v49, v44, v42);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, *(v0 + 200));
  v50 = *v49;
  v43[15] = v42;
  v43[16] = &off_287A42540;
  v43[12] = v50;
  v43[20] = &type metadata for AccountProvider;
  v43[21] = &off_287A41348;
  v43[22] = v33;
  sub_26968E5D4((v0 + 56), (v43 + 2));
  sub_26968E5D4((v0 + 16), (v43 + 7));
  v51 = v33;
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  sub_269853844();
  v52 = swift_task_alloc();
  *(v0 + 336) = v52;
  *v52 = v0;
  v52[1] = sub_269726CE0;
  v53 = *(v0 + 256);

  return sub_269756E18(v53, 0);
}

uint64_t sub_269726CE0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  v7 = v4[42];
  *v6 = *v2;
  v5[43] = v1;

  v8 = v4[32];
  v9 = v4[31];
  v10 = v4[30];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);
    v11 = sub_269726F40;
  }

  else
  {
    v5[44] = a1;
    (*(v9 + 8))(v8, v10);
    v11 = sub_269726E60;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_269726E60()
{
  v1 = v0[44];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[29];
  v5 = v0[27];
  __swift_project_boxed_opaque_existential_1((v4 + 176), *(v4 + 200));
  v6 = *(v4 + v3);
  sub_26979A9BC();

  sub_269853154();

  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[32];

  OUTLINED_FUNCTION_7_7();

  return v10();
}

uint64_t sub_269726F40()
{
  v1 = v0[41];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];
  v5 = v0[35];
  v6 = v0[33];

  v3(v5, v4, v6);
  v7 = sub_2698548B4();
  v8 = sub_269854F24();
  if (OUTLINED_FUNCTION_19_4(v8))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_10();
  }

  v14 = v0[43];
  v16 = v0[34];
  v15 = v0[35];
  v17 = v0[33];
  v18 = v0[27];

  (*(v16 + 8))(v15, v17);
  sub_269853164();

  v20 = v0[35];
  v19 = v0[36];
  v21 = v0[32];

  OUTLINED_FUNCTION_7_7();

  return v22();
}

void sub_269727070(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v142 = a1;
  v143 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v5 = OUTLINED_FUNCTION_8_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v147 = (v131 - v8);
  v148 = sub_269853854();
  OUTLINED_FUNCTION_3_20();
  v145 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v146 = v14 - v13;
  v15 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v24 = v23 - v22;
  if (qword_2803226E0 != -1)
  {
    v21 = OUTLINED_FUNCTION_0_10();
  }

  OUTLINED_FUNCTION_31_5(v21, qword_28033D910);
  (*(v17 + 16))(v24);
  v25 = sub_2698548B4();
  v26 = sub_269854F44();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_16_2();
    *v27 = 0;
    _os_log_impl(&dword_269684000, v25, v26, "Target device resolution is required, pushing device resolution flow", v27, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v17 + 8))(v24, v15);
  v28 = *(v3 + 576);
  *(v3 + 576) = 5;
  sub_269728BA0(v28);
  sub_2696A73F8(v3 + 16, v192);
  sub_2696A73F8(v3 + 256, v190);
  sub_2696A73F8(v3 + 216, v189);
  sub_2696A73F8(v3 + 376, v188);
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  v29 = sub_2697B9550();
  __swift_mutable_project_boxed_opaque_existential_1(v190, v191);
  OUTLINED_FUNCTION_8_19();
  v141 = v30;
  OUTLINED_FUNCTION_3_20();
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_1();
  v35 = OUTLINED_FUNCTION_10_14(v34);
  v36(v35);
  __swift_mutable_project_boxed_opaque_existential_1(v188, v188[3]);
  isa = v25->isa;
  v38 = type metadata accessor for DeviceSelectionDonationProvider(0);
  v187 = &off_287A3E7C8;
  v186 = v38;
  v185[0] = isa;
  v183 = &type metadata for CoreAnalyticsService;
  v184 = &xmmword_287A41610;
  v144 = type metadata accessor for PlayVideoDeviceResolutionStrategy();
  v39 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v185, v38);
  OUTLINED_FUNCTION_3_20();
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3_1();
  v44 = OUTLINED_FUNCTION_10_14(v43);
  v45(v44);
  __swift_mutable_project_boxed_opaque_existential_1(v182, v183);
  v46.isa = v25->isa;
  v39[10] = v38;
  v39[11] = &off_287A3E7C8;
  v134 = v38;
  v39[7] = v46.isa;
  v180 = &type metadata for CoreAnalyticsService;
  v181 = &xmmword_287A41610;
  v39[24] = 3;
  sub_26968E5D4(v192, (v39 + 2));
  sub_26968E5D4(v189, (v39 + 12));
  v39[22] = v29;
  v39[23] = &off_287A41E38;
  sub_26968E5D4(&v179, (v39 + 17));
  __swift_destroy_boxed_opaque_existential_0(v182);
  __swift_destroy_boxed_opaque_existential_0(v185);
  __swift_destroy_boxed_opaque_existential_0(v188);
  __swift_destroy_boxed_opaque_existential_0(v190);
  v47 = v146;
  v48 = (v145 + 16);
  v49 = *(v145 + 16);
  v49(v146, v142, v148);
  sub_2696A73F8(v3 + 16, v192);
  sub_2696A73F8(v3 + 96, v190);
  sub_2696A73F8(v3 + 56, v189);
  sub_2696A73F8(v3 + 216, v188);
  sub_2696A73F8(v3 + 256, v185);
  sub_2696A73F8(v3 + 376, v182);
  sub_2696A73F8(v3 + 416, &v179);
  sub_2696A73F8(v3 + 496, v178);
  __swift_mutable_project_boxed_opaque_existential_1(v190, v191);
  OUTLINED_FUNCTION_8_19();
  v142 = v50;
  OUTLINED_FUNCTION_3_20();
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3_1();
  v55 = OUTLINED_FUNCTION_22_7(v54);
  v56(v55);
  __swift_mutable_project_boxed_opaque_existential_1(v185, v186);
  OUTLINED_FUNCTION_8_19();
  v141 = v57;
  OUTLINED_FUNCTION_3_20();
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_3_1();
  v62 = OUTLINED_FUNCTION_12_16(v61);
  v63(v62);
  __swift_mutable_project_boxed_opaque_existential_1(v182, v183);
  __swift_mutable_project_boxed_opaque_existential_1(&v179, v180);
  v64 = *v29;
  v65 = xmmword_287A41610;
  v177[4] = &off_287A3F338;
  v177[3] = v144;
  v177[0] = v39;
  v132 = type metadata accessor for BaseDialogProvider();
  v176[4] = &off_287A3DBA0;
  v176[3] = v132;
  v176[0] = v64;
  v175[4] = &off_287A3E7C8;
  v175[3] = v38;
  v175[0] = v65;
  v174[3] = &type metadata for CoreAnalyticsService;
  v174[4] = &xmmword_287A41610;
  v173[3] = &type metadata for FeatureFlagServiceImpl;
  v173[4] = &off_287A41BD8;
  sub_2696A73F8(v177, v171);
  v66 = v147;
  v67 = v148;
  v49(v147, v47, v148);
  __swift_storeEnumTagSinglePayload(v66, 0, 1, v67);
  sub_2696A73F8(v192, v170);
  sub_2696A73F8(v176, v169);
  sub_2696A73F8(v189, v168);
  sub_2696A73F8(v188, v167);
  sub_2696A73F8(v175, v165);
  sub_2696A73F8(v174, v164);
  sub_2696A73F8(v173, v163);
  sub_2696A73F8(v178, v162);
  v68 = v172;
  __swift_mutable_project_boxed_opaque_existential_1(v171, v172);
  OUTLINED_FUNCTION_8_19();
  v140 = v69;
  OUTLINED_FUNCTION_3_20();
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_3_1();
  v74 = OUTLINED_FUNCTION_22_7(v73);
  v75(v74);
  __swift_mutable_project_boxed_opaque_existential_1(v169, v169[3]);
  OUTLINED_FUNCTION_8_19();
  v139 = v76;
  OUTLINED_FUNCTION_3_20();
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_3_1();
  v81 = OUTLINED_FUNCTION_10_14(v80);
  v82(v81);
  v83 = v166;
  __swift_mutable_project_boxed_opaque_existential_1(v165, v166);
  OUTLINED_FUNCTION_8_19();
  v137 = v84;
  OUTLINED_FUNCTION_3_20();
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_3_1();
  v89 = OUTLINED_FUNCTION_11_17(v88);
  v90(v89);
  __swift_mutable_project_boxed_opaque_existential_1(v164, v164[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v163, v163[3]);
  v91 = *v66;
  v92 = *v68;
  v93 = *v48;
  v94 = v144;
  v161[3] = v144;
  v161[4] = &off_287A3F338;
  v161[0] = v91;
  v95 = v132;
  v159 = v132;
  v160 = &off_287A3DBA0;
  v158[0] = v92;
  v136 = v3;
  v96 = v134;
  v156 = v134;
  v157 = &off_287A3E7C8;
  v155[0] = v93;
  v153 = &type metadata for CoreAnalyticsService;
  v154 = &xmmword_287A41610;
  v150 = &type metadata for FeatureFlagServiceImpl;
  v151 = &off_287A41BD8;
  v138 = type metadata accessor for ExecutionDeviceResolutionFlow();
  v97 = OUTLINED_FUNCTION_68_0(v138);
  __swift_mutable_project_boxed_opaque_existential_1(v161, v94);
  OUTLINED_FUNCTION_8_19();
  v135 = v98;
  OUTLINED_FUNCTION_3_20();
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_3_1();
  v103 = OUTLINED_FUNCTION_11_17(v102);
  v104(v103);
  __swift_mutable_project_boxed_opaque_existential_1(v158, v159);
  OUTLINED_FUNCTION_8_19();
  v133 = v105;
  OUTLINED_FUNCTION_3_20();
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_3_1();
  v110 = OUTLINED_FUNCTION_12_16(v109);
  v111(v110);
  __swift_mutable_project_boxed_opaque_existential_1(v155, v156);
  OUTLINED_FUNCTION_8_19();
  v131[1] = v112;
  OUTLINED_FUNCTION_3_20();
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_3_1();
  v118 = (v117 - v116);
  (*(v119 + 16))(v117 - v116);
  __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
  __swift_mutable_project_boxed_opaque_existential_1(v149, v150);
  v120 = *v48;
  v121 = *v83;
  v122 = *v118;
  v97[5] = v94;
  v97[6] = &off_287A3F338;
  v97[2] = v120;
  v97[15] = v95;
  v97[16] = &off_287A3DBA0;
  v97[12] = v121;
  v97[30] = v96;
  v97[31] = &off_287A3E7C8;
  v97[27] = v122;
  v97[35] = &type metadata for CoreAnalyticsService;
  v97[36] = &xmmword_287A41610;
  v97[40] = &type metadata for FeatureFlagServiceImpl;
  v97[41] = &off_287A41BD8;

  __swift_destroy_boxed_opaque_existential_0(v178);
  __swift_destroy_boxed_opaque_existential_0(v188);
  __swift_destroy_boxed_opaque_existential_0(v189);
  __swift_destroy_boxed_opaque_existential_0(v192);
  v123 = v148;
  (*(v145 + 8))(v146, v148);
  __swift_destroy_boxed_opaque_existential_0(v173);
  __swift_destroy_boxed_opaque_existential_0(v174);
  __swift_destroy_boxed_opaque_existential_0(v175);
  __swift_destroy_boxed_opaque_existential_0(v176);
  __swift_destroy_boxed_opaque_existential_0(v177);
  v124 = OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_input;
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v125, v126, v127, v123);
  swift_beginAccess();
  sub_269702838(v147, v97 + v124);
  swift_endAccess();
  sub_26968E5D4(v170, (v97 + 7));
  sub_26968E5D4(v168, (v97 + 17));
  sub_26968E5D4(v167, (v97 + 22));
  v128 = v97 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state;
  *v128 = 0;
  v128[8] = 3;
  sub_26968E5D4(v162, (v97 + 42));
  __swift_destroy_boxed_opaque_existential_0(v149);
  __swift_destroy_boxed_opaque_existential_0(v152);
  __swift_destroy_boxed_opaque_existential_0(v155);
  __swift_destroy_boxed_opaque_existential_0(v158);
  __swift_destroy_boxed_opaque_existential_0(v161);
  __swift_destroy_boxed_opaque_existential_0(v163);
  __swift_destroy_boxed_opaque_existential_0(v164);
  __swift_destroy_boxed_opaque_existential_0(v165);
  __swift_destroy_boxed_opaque_existential_0(v169);
  __swift_destroy_boxed_opaque_existential_0(v171);
  __swift_destroy_boxed_opaque_existential_0(&v179);
  __swift_destroy_boxed_opaque_existential_0(v182);
  __swift_destroy_boxed_opaque_existential_0(v185);
  __swift_destroy_boxed_opaque_existential_0(v190);
  *&v192[0] = v97;
  v129 = swift_allocObject();
  v130 = v136;
  *(v129 + 16) = sub_269728C64;
  *(v129 + 24) = v130;
  sub_269728D30(&qword_280323B20, type metadata accessor for ExecutionDeviceResolutionFlow);

  sub_269853124();

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269727E2C()
{
  v1 = v0[71];
  __swift_project_boxed_opaque_existential_1(v0 + 67, v0[70]);
  sub_269852C74();
  if (qword_280322468 != -1)
  {
    OUTLINED_FUNCTION_13_12();
  }

  LOBYTE(v4[0]) = 0;
  OUTLINED_FUNCTION_5_20();
  sub_269852C64();
  sub_269852BC4();

  sub_2696A73F8((v0 + 7), v4);
  v2 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v2);

  v4[0] = sub_269852764();
  sub_269853144();
}

uint64_t sub_269727F7C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = sub_2698532A4();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269728074, 0, 0);
}

uint64_t sub_269728074()
{
  OUTLINED_FUNCTION_2_7();
  v1 = v0[8];
  v2 = *__swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[13] = v3;
  *v3 = v4;
  v3[1] = sub_269728118;
  v5 = v0[12];

  return sub_2696B98F4(v5, v1 + 16);
}

uint64_t sub_269728118()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = *(v2 + 104);
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 112) = v0;

  if (v0)
  {
    v7 = sub_269728394;
  }

  else
  {
    v7 = sub_26972821C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26972821C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  sub_269852CA4();
  sub_269853234();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = sub_2698538F4();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v13 = MEMORY[0x277D5C1D8];
  v5[3] = v12;
  v5[4] = v13;
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_269853114();
  sub_269698048(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_269698048(v3, &qword_280323010, &unk_26985B640);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_7_7();

  return v14();
}

uint64_t sub_269728394()
{
  OUTLINED_FUNCTION_2_7();
  v1 = v0[12];
  v2 = v0[9];

  OUTLINED_FUNCTION_7_7();
  v4 = v0[14];

  return v3();
}

void sub_2697283FC(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - v16;
  if (!a2)
  {
    v19 = qword_2803226E0;
    v20 = a1;
    v21 = v20;
    if (v19 != -1)
    {
      v20 = OUTLINED_FUNCTION_0_10();
    }

    OUTLINED_FUNCTION_31_5(v20, qword_28033D910);
    (*(v8 + 16))(v17);
    v22 = v21;
    v23 = sub_2698548B4();
    v24 = sub_269854F14();
    sub_269728BB4(a1, 0);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = a1;
      v27 = v22;
      _os_log_impl(&dword_269684000, v23, v24, "ExecutionDeviceResolutionFlow selected device: %@", v25, 0xCu);
      sub_269698048(v26, &qword_280324D50, &qword_26985D530);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    (*(v8 + 8))(v17, v6);
    v28 = *(v3 + OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_executionDevice);
    *(v3 + OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_executionDevice) = a1;

    v29 = *(v3 + 576);
    v30 = 6;
    goto LABEL_15;
  }

  if (a2 != 1)
  {
    if (!a1)
    {
      v34 = *(v3 + 576);
      *(v3 + 576) = 7;
      goto LABEL_17;
    }

    if (qword_2803226E0 != -1)
    {
      v15 = OUTLINED_FUNCTION_0_10();
    }

    OUTLINED_FUNCTION_31_5(v15, qword_28033D910);
    (*(v8 + 16))(v14);
    v31 = sub_2698548B4();
    v32 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_4(v32))
    {
      v33 = OUTLINED_FUNCTION_16_2();
      *v33 = 0;
      _os_log_impl(&dword_269684000, v31, v32, "DeviceResolutionResult resulted in failure", v33, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v8 + 8))(v14, v6);
    v29 = *(v3 + 576);
    v30 = 8;
LABEL_15:
    *(v3 + 576) = v30;
    sub_269728BA0(v29);
    OUTLINED_FUNCTION_21_0();
    return;
  }

  v18 = *(v3 + 576);
  *(v3 + 576) = a1;
  sub_2697017E4(a1);
LABEL_17:
  OUTLINED_FUNCTION_21_0();

  sub_269728BA0(v35);
}

uint64_t sub_26972873C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  sub_2696D1E70(v0 + 136);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  __swift_destroy_boxed_opaque_existential_0((v0 + 416));
  __swift_destroy_boxed_opaque_existential_0((v0 + 456));
  __swift_destroy_boxed_opaque_existential_0((v0 + 496));
  __swift_destroy_boxed_opaque_existential_0((v0 + 536));
  sub_269728BA0(*(v0 + 576));
  sub_269698048(v0 + OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_input, &qword_280323AF8, &unk_26985C1D0);

  return v0;
}

uint64_t sub_2697287FC()
{
  sub_26972873C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for PlayLiveServiceWrapperFlow()
{
  result = qword_280323E60;
  if (!qword_280323E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2697288A8()
{
  sub_2697012B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents26PlayLiveServiceWrapperFlowC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269728990(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 8))
  {
    return (*a1 + 2147483639);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 5;
  if (v5 >= 7)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2697289F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

void *sub_269728A44(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFC)
  {
    v2 = -2147483645;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 2;
  }

  *result = v2 + a2;
  return result;
}

uint64_t sub_269728AC8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return sub_26972587C();
}

uint64_t sub_269728B64()
{
  type metadata accessor for PlayLiveServiceWrapperFlow();

  return sub_269852B84();
}

unint64_t sub_269728BA0(unint64_t result)
{
  if (result - 3 >= 6)
  {
    return sub_269701818(result);
  }

  return result;
}

void sub_269728BB4(id a1, char a2)
{
  if (a2 == 1)
  {
    sub_269701818(a1);
  }

  else if (!a2)
  {
  }
}

uint64_t sub_269728BD0()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2696DA938;

  return sub_269727F7C(v3, v0);
}

uint64_t sub_269728C70()
{
  v2 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_2696DAF80;

  return sub_2697975C4();
}

unint64_t sub_269728D1C(unint64_t result)
{
  if (result - 3 >= 6)
  {
    return sub_2697017E4(result);
  }

  return result;
}

uint64_t sub_269728D30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269728E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_13_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_11()
{
  result = v0[44];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[39];
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[30];
  return result;
}

void sub_269728F58()
{
  v0 = [objc_allocWithZone(type metadata accessor for PlayVideoIntent()) init];
  sub_2696D3780();
  v1 = [v0 typeName];
  v2 = sub_269854A94();
  v4 = v3;

  qword_28033D6A0 = v2;
  *algn_28033D6A8 = v4;
}

uint64_t sub_269728FD8(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 3:
      return a2 == 3;
    case 4:
      return a2 == 4;
    case 5:
      return a2 == 5;
    case 6:
      return a2 == 6;
    case 7:
      return a2 == 7;
    case 8:
      return a2 == 8;
    default:
      if (a2 - 3 < 6)
      {
        return 0;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          if (a2 != 1)
          {
            return 0;
          }
        }

        else if (a1 == 2)
        {
          if (a2 != 2)
          {
            return 0;
          }
        }

        else if (a2 < 3 || (sub_26973CD58(a1, a2) & 1) == 0)
        {
          return 0;
        }

        return 1;
      }

      return !a2;
  }
}

void sub_2697290CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - v4;
  v49 = &v45 - v4;
  v50 = sub_269853854();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v50);
  sub_2698538C4();
  sub_269853524();
  v6 = type metadata accessor for BaseDialogProvider();
  v7 = swift_allocObject();
  v8 = sub_2698546A4();
  v9 = sub_269854684();
  v48 = v9;
  v10 = type metadata accessor for DeviceSelectionDonationProvider(0);
  v11 = sub_2696C7734();
  v47 = v11;
  v46 = sub_269854694();
  sub_269852C84();
  v75[3] = &type metadata for UTSProvider;
  v75[4] = &off_287A43FA8;
  v12 = swift_allocObject();
  v75[0] = v12;
  v73 = &type metadata for CoreAnalyticsService;
  v74 = &xmmword_287A41610;
  v12[5] = &type metadata for UTSNetworkProvider;
  v12[6] = &off_287A43DC0;
  v13 = swift_allocObject();
  v12[2] = v13;
  sub_2697D24B0(&v72, (v13 + 16));
  v12[10] = &type metadata for CoreAnalyticsService;
  v12[11] = &xmmword_287A41610;
  v14 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v14);
  v15 = sub_269853254();
  sub_269852BB4();
  v71[3] = v6;
  v71[4] = &off_287A3DBA0;
  v71[0] = v7;
  v67[4] = MEMORY[0x277D61F10];
  v69 = &type metadata for VideoFlowFactoryImpl;
  v70 = &off_287A40968;
  v67[3] = v8;
  v67[0] = v9;
  v65 = v10;
  v66 = &off_287A3E7C8;
  v64[0] = v11;
  v63[3] = sub_269854674();
  v63[4] = MEMORY[0x277D61F08];
  v63[0] = v46;
  v61 = &type metadata for ContentResolver;
  v62 = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v60[0] = swift_allocObject();
  sub_2696B2824(v75, v60[0] + 16);
  v58 = &type metadata for FeatureFlagServiceImpl;
  v59 = &off_287A41BD8;
  v55 = v14;
  v56 = MEMORY[0x277D5BD58];
  *&v54 = v15;
  v16 = type metadata accessor for PlayVideoWrapperFlow();
  v17 = OUTLINED_FUNCTION_68_0(v16);
  __swift_mutable_project_boxed_opaque_existential_1(v71, v6);
  OUTLINED_FUNCTION_3_20();
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v23 = (v22 - v21);
  (*(v24 + 16))(v22 - v21);
  __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
  __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  OUTLINED_FUNCTION_3_20();
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v29 = OUTLINED_FUNCTION_27_5(v28);
  v30(v29);
  __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
  OUTLINED_FUNCTION_3_20();
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_1();
  v35 = OUTLINED_FUNCTION_11_17(v34);
  v36(v35);
  __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
  v37 = *v23;
  v38 = *v7;
  v53[3] = v6;
  v53[4] = &off_287A3DBA0;
  v53[0] = v37;
  v52[3] = &type metadata for VideoFlowFactoryImpl;
  v52[4] = &off_287A40968;
  v51[3] = v10;
  v51[4] = &off_287A3E7C8;
  v51[0] = v38;
  v17[55] = &type metadata for ContentResolver;
  v17[56] = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v39 = swift_allocObject();
  v17[52] = v39;
  v40 = unk_287A41620;
  *(v39 + 16) = xmmword_287A41610;
  *(v39 + 32) = v40;
  *(v39 + 48) = qword_287A41630;
  v17[60] = &type metadata for FeatureFlagServiceImpl;
  v17[61] = &off_287A41BD8;
  v41 = OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_input;
  __swift_storeEnumTagSinglePayload(OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_input + v17, 1, 1, v50);
  *(v17 + OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_executionDevice) = 0;
  swift_beginAccess();
  v42 = v48;

  v43 = v41 + v17;
  v44 = v49;
  sub_269728E28(v49, v43);
  swift_endAccess();
  sub_26970EF58(v78, (v17 + 2));
  sub_26970EF58(v77, (v17 + 7));
  sub_26970EF58(v53, (v17 + 12));
  sub_26970EF58(v53, (v17 + 17));
  sub_26970EF58(v52, (v17 + 22));
  sub_26970EF58(v67, (v17 + 27));
  sub_26970EF58(v51, (v17 + 32));
  v17[72] = 3;
  sub_26970EF58(v63, (v17 + 37));
  sub_26970EF58(v76, (v17 + 42));
  v17[50] = &type metadata for CoreAnalyticsService;
  v17[51] = &xmmword_287A41610;

  __swift_destroy_boxed_opaque_existential_0(v76);
  __swift_destroy_boxed_opaque_existential_0(v77);
  __swift_destroy_boxed_opaque_existential_0(v78);
  sub_2696CB05C(v44, &qword_280323AF8, &unk_26985C1D0);
  __swift_destroy_boxed_opaque_existential_0(v63);
  __swift_destroy_boxed_opaque_existential_0(v67);
  __swift_destroy_boxed_opaque_existential_0(v51);
  __swift_destroy_boxed_opaque_existential_0(v52);
  __swift_destroy_boxed_opaque_existential_0(v53);
  sub_26968E5D4(&v54, (v17 + 62));
  sub_26968E5D4(&v72, (v17 + 67));
  __swift_destroy_boxed_opaque_existential_0(v57);
  __swift_destroy_boxed_opaque_existential_0(v60);
  __swift_destroy_boxed_opaque_existential_0(v64);
  __swift_destroy_boxed_opaque_existential_0(v68);
  __swift_destroy_boxed_opaque_existential_0(v71);
  sub_2696B28D4(v75);
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269729760(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v19[-1] - v8;
  v19[3] = &type metadata for SiriVideoFeatureKeys;
  v19[4] = sub_2696A2978();
  LOBYTE(v19[0]) = 4;
  v10 = sub_269853B34();
  __swift_destroy_boxed_opaque_existential_0(v19);
  if ((v10 & 1) == 0)
  {
    v11 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    if (sub_269852CE4())
    {
      return 0;
    }
  }

  if (v2[72] != 3)
  {
    return 0;
  }

  v12 = sub_269853854();
  OUTLINED_FUNCTION_3_14(v12);
  (*(v13 + 16))(v9, a1, v12);
  v14 = 1;
  OUTLINED_FUNCTION_29_5();
  v15 = OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_input;
  swift_beginAccess();
  sub_269702838(v9, v15 + v2);
  swift_endAccess();
  v16 = v2[72];
  v2[72] = 4;
  sub_269728BA0(v16);
  return v14;
}

uint64_t sub_2697298D4()
{
  type metadata accessor for PlayVideoWrapperFlow();
  sub_26972CCD0(&qword_280323E90, type metadata accessor for PlayVideoWrapperFlow);
  return sub_269852B54();
}

uint64_t sub_269729964()
{
  OUTLINED_FUNCTION_2_7();
  v1[21] = v2;
  v1[22] = v0;
  v3 = sub_2698548D4();
  v1[23] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[24] = v4;
  v6 = *(v5 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v7 = sub_2698538B4();
  v1[32] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[33] = v8;
  v10 = *(v9 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v11);
  v13 = *(v12 + 64);
  v1[36] = OUTLINED_FUNCTION_4_7();
  v14 = sub_269853854();
  v1[37] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v1[38] = v15;
  v17 = *(v16 + 64);
  v1[39] = OUTLINED_FUNCTION_4_7();
  v18 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v18, v19, v20);
}