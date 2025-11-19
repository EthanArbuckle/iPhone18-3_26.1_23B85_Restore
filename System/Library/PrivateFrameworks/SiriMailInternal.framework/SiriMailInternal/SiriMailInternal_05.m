unint64_t sub_26764AC08(unint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v5 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v5, qword_2801CDC90);
  sub_267651508(v4);
  sub_267651508(a1);
  v6 = sub_2676CBE2C();
  v7 = sub_2676CC23C();
  sub_267614A2C(v4);
  sub_267614A2C(a1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    sub_267651508(v4);
    v9 = sub_26765096C(v4);
    v11 = v10;
    sub_267614A2C(v4);
    v12 = sub_2676B0B84(v9, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_26765096C(a1);
    v15 = sub_2676B0B84(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_2675D4000, v6, v7, "#ReadMailActingFlow change state from: %s to %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
    sub_267614A2C(v4);
  }

  else
  {

    sub_267614A2C(v4);
  }

  *v2 = a1;

  return sub_267651508(a1);
}

uint64_t sub_26764ADE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-1] - v4;
  sub_2675F95E4(a1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeInput, &v18[-1] - v4, &qword_2801CC1E8, &qword_2676CF570);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
  __swift_getEnumTagSinglePayload(v5, 1, v6);
  v7 = sub_2676C9E0C();
  sub_2675EB7EC(v5, &qword_2801CC1E8, &qword_2676CF570);

  v8 = sub_2676C9E1C();
  v9 = MEMORY[0x277D5C060];
  v19 = v7;
  v20 = MEMORY[0x277D5C060];
  v18[0] = v8;
  v10 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v18);
  v11 = *(*(a1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_senderInput) + 16);

  v12 = sub_2676C9E1C();
  v19 = v7;
  v20 = v9;
  v18[0] = v12;
  v13 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2676CDE10;
  *(v14 + 32) = v10;
  *(v14 + 40) = v13;
  v15 = MEMORY[0x26D5FB6C0]();

  return v15;
}

uint64_t sub_26764AFC8(uint64_t a1)
{
  v2 = sub_2676C9BFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResolveDateTime();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2675F95E4(a1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeInput, v10, &qword_2801CC1E8, &qword_2676CF570);
  sub_2676149CC(a1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeResolver, &v10[v7[5]]);
  sub_2676468B4();
  v10[v7[6]] = (v11 & 0x40) != 0;
  v10[v7[7]] = 0;
  (*(v3 + 104))(v6, *MEMORY[0x277D5BDF0], v2);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD040, &unk_2676D1530);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_267651FB8(&qword_2801CD048, type metadata accessor for ResolveDateTime);
  v21[4] = sub_2676C9F5C();
  v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD050, &qword_2676D2800);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC380, &unk_2676CEF40);
  v16 = sub_2676148C4(&qword_2801CD058, &qword_2801CD040, &unk_2676D1530);
  v21[1] = v12;
  v21[2] = v15;
  v21[3] = v16;
  v22[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v22);

  sub_2676C942C();

  v17 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2676CDE20;
  *(v18 + 32) = v17;
  v19 = MEMORY[0x26D5FB6C0]();

  return v19;
}

void sub_26764B300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedDateTimeRange;
  swift_beginAccess();
  sub_267651CC4(a1, a2 + v8);
  swift_endAccess();
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v9 = sub_2676CBE4C();
  __swift_project_value_buffer(v9, qword_2801CDC90);

  v10 = sub_2676CBE2C();
  v11 = sub_2676CC23C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    sub_2675F95E4(a2 + v8, v7, &qword_2801CC380, &unk_2676CEF40);
    v14 = sub_2676CBFBC();
    v16 = sub_2676B0B84(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2675D4000, v10, v11, "#ReadMailActingFlow resolved dateTime %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26D5FEA80](v13, -1, -1);
    MEMORY[0x26D5FEA80](v12, -1, -1);
  }
}

uint64_t sub_26764B504(uint64_t a1)
{
  v2 = sub_2676C9BFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResolveSender();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v10[*(v7 + 20)];
  sub_267698E74(*(a1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_senderInput));
  v12 = *(a1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_hasExactSpanMatch);
  *v10 = 0;
  v10[*(v7 + 24)] = v12;
  (*(v3 + 104))(v6, *MEMORY[0x277D5BDF0], v2);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD020, &unk_2676D1520);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_267651FB8(&qword_2801CD028, type metadata accessor for ResolveSender);
  v22[4] = sub_2676C9F5C();
  v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD030, &unk_2676D27F0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v17 = sub_2676148C4(&qword_2801CD038, &qword_2801CD020, &unk_2676D1520);
  v22[1] = v13;
  v22[2] = v16;
  v22[3] = v17;
  v23[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v23);

  sub_2676C942C();

  v18 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2676CDE20;
  *(v19 + 32) = v18;
  v20 = MEMORY[0x26D5FB6C0]();

  return v20;
}

uint64_t sub_26764B818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = sub_2676C8C8C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2675F95E4(a1, v10, &qword_2801CBFE8, &unk_2676CD9E0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2675EB7EC(v10, &qword_2801CBFE8, &unk_2676CD9E0);
    swift_beginAccess();
    sub_26764AC08(0x9000000000000010);
    return swift_endAccess();
  }

  else
  {
    v26 = v4;
    (*(v12 + 32))(v15, v10, v11);
    (*(v12 + 16))(v8, v15, v11);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
    v17 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedSender;
    swift_beginAccess();
    sub_267651C4C(v8, a2 + v17);
    swift_endAccess();
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v18 = sub_2676CBE4C();
    __swift_project_value_buffer(v18, qword_2801CDC90);

    v19 = sub_2676CBE2C();
    v20 = sub_2676CC23C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315138;
      sub_2675F95E4(a2 + v17, v8, &qword_2801CBFE8, &unk_2676CD9E0);
      v23 = sub_2676CBFBC();
      v25 = sub_2676B0B84(v23, v24, &v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2675D4000, v19, v20, "#ReadMailActingFlow resolved sender %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x26D5FEA80](v22, -1, -1);
      MEMORY[0x26D5FEA80](v21, -1, -1);
    }

    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_26764BBAC(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  if (*(a2 + 40) != 0x9000000000000010)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = 0xF000000000000007;
    swift_beginAccess();
    sub_26764AC08(v4 | 0x1000000000000000);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_26764BC54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  v11 = sub_2676C8C8C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (*(a1 + 8))
  {
    v44 = *a1;
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
    if (swift_dynamicCast())
    {
      v19 = v41;
      v18 = v42;
      if (v43 == 1)
      {
        if (qword_2801CBAA0 != -1)
        {
          swift_once();
        }

        v20 = sub_2676CBE4C();
        __swift_project_value_buffer(v20, qword_2801CDC90);
        v21 = sub_2676CBE2C();
        v22 = sub_2676CC23C();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_2675D4000, v21, v22, "#ReadMailActingFlow requested sender does not have email handle", v23, 2u);
          MEMORY[0x26D5FEA80](v23, -1, -1);
        }

        v24 = swift_allocObject();
        *(v24 + 16) = v19;
        swift_beginAccess();
        sub_267651D60(v19, v18, 1);
        sub_26764AC08(v24);
        swift_endAccess();

        return sub_267651D40(v19, v18, 1);
      }

      sub_267651D40(v41, v42, v43);
    }

    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v32 = sub_2676CBE4C();
    __swift_project_value_buffer(v32, qword_2801CDC90);
    v33 = v16;
    v34 = sub_2676CBE2C();
    v35 = sub_2676CC26C();
    sub_267651D34(v16, 1);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v36 = 136315138;
      swift_getErrorValue();
      v38 = sub_2676CC5FC();
      v40 = sub_2676B0B84(v38, v39, &v41);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_2675D4000, v34, v35, "#ReadMailActingFlow error from ResolveRecipientsFlow: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x26D5FEA80](v37, -1, -1);
      MEMORY[0x26D5FEA80](v36, -1, -1);
    }

    return sub_26764FFEC();
  }

  else
  {
    sub_267698E44(*a1);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_2675EB7EC(v10, &qword_2801CBFE8, &unk_2676CD9E0);
    }

    else
    {
      (*(v12 + 32))(v15, v10, v11);
      (*(v12 + 16))(v8, v15, v11);
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
      v26 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedSender;
      swift_beginAccess();
      sub_267651C4C(v8, a2 + v26);
      swift_endAccess();
      if (qword_2801CBAA0 != -1)
      {
        swift_once();
      }

      v27 = sub_2676CBE4C();
      __swift_project_value_buffer(v27, qword_2801CDC90);
      v28 = sub_2676CBE2C();
      v29 = sub_2676CC23C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_2675D4000, v28, v29, "#ReadMailActingFlow resolved sender", v30, 2u);
        MEMORY[0x26D5FEA80](v30, -1, -1);
      }

      (*(v12 + 8))(v15, v11);
    }

    v31 = swift_allocObject();
    *(v31 + 16) = 0xF000000000000007;
    swift_beginAccess();
    sub_26764AC08(v31 | 0x1000000000000000);
    swift_endAccess();
  }
}

uint64_t sub_26764C230(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(*a1 + 16))
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    swift_beginAccess();

    v4 = v3 | 0x2000000000000000;
  }

  else
  {
    if (*(a2 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToSummarize) == 1)
    {
      swift_beginAccess();
      sub_26764AC08(0x9000000000000028);
      return swift_endAccess();
    }

    v6 = swift_allocObject();
    *(v6 + 16) = 0xF000000000000007;
    swift_beginAccess();
    v4 = v6 | 0x1000000000000000;
  }

  sub_26764AC08(v4);
  swift_endAccess();
}

uint64_t sub_26764C340(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory;
  v19 = &type metadata for HighlightsIntro;
  OpaqueTypeConformance2 = sub_267651D80();
  v5 = swift_allocObject();
  v18[0] = v5;
  sub_2676149CC(a1 + v4, v5 + 16);
  v6 = *(a2 + 16) == 1;
  *(v5 + 56) = *(a1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToSummarize);
  *(v5 + 57) = v6;
  v7 = sub_2676C9EFC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_2676C9F0C();
  v19 = v7;
  OpaqueTypeConformance2 = MEMORY[0x277D5C188];
  v18[0] = v10;
  v11 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD068, &qword_2676D1540);
  v18[0] = a2;

  sub_2676C9F3C();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD070, &qword_2676D1548);
  sub_2676148C4(&qword_2801CD078, &qword_2801CD068, &qword_2676D1540);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v18);

  sub_2676C936C();

  v12 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2676CDE10;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  v16 = MEMORY[0x26D5FB6C0](v13, v14, v15);

  return v16;
}

uint64_t sub_26764C5A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);

  sub_2676468B4();
  v5 = v4;
  v6 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory;
  v17 = &type metadata for ReadHighlight;
  v18 = sub_267651DE4();
  v7 = swift_allocObject();
  v16[0] = v7;
  sub_2676149CC(a2 + v6, v7 + 32);
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  v8 = sub_2676C9EFC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_2676C9F0C();
  v17 = v8;
  v18 = MEMORY[0x277D5C188];
  v16[0] = v11;
  v12 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2676CDE20;
  *(v13 + 32) = v12;
  v14 = MEMORY[0x26D5FB6C0]();

  return v14;
}

uint64_t sub_26764C6CC(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToSummarize) == 1)
  {
    swift_beginAccess();
    sub_26764AC08(0x9000000000000048);
    return swift_endAccess();
  }

  else
  {
    v3 = swift_allocObject();
    swift_beginAccess();
    v4 = *(a1 + 40);
    *(v3 + 16) = v4;
    swift_beginAccess();
    sub_267651508(v4);
    sub_26764AC08(v3 | 0x1000000000000000);
    swift_endAccess();
  }
}

uint64_t sub_26764C7AC(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(a1 + 32) + 16) == 1)
  {
    swift_beginAccess();
    sub_26764AC08(0x9000000000000038);
    return swift_endAccess();
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = *(a1 + 24);
    *(v3 + 24) = sub_267646858();
    swift_beginAccess();
    sub_26764AC08(v3 | 0x3000000000000000);
    swift_endAccess();
  }
}

uint64_t sub_26764C880(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v61 = &v51 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v14 = *a1;
  if ((~a2 & 0xF000000000000007) != 0 && (a2 & 0xF000000000000000) == 0x2000000000000000)
  {
    v51 = a2;
    v52 = a3;
    v15 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *(v15 + 16);
    if (v16)
    {
      v58 = &v51 - v12;
      v17 = v14;
      sub_267651AA0(a2);
      v63[0] = MEMORY[0x277D84F90];

      sub_2676C2AE8(0, v16, 0);
      v18 = v63[0];
      v19 = (v15 + 40);
      do
      {
        v21 = *(v19 - 1);
        v20 = *v19;
        v63[0] = v18;
        v23 = *(v18 + 16);
        v22 = *(v18 + 24);

        if (v23 >= v22 >> 1)
        {
          sub_2676C2AE8((v22 > 1), v23 + 1, 1);
          v18 = v63[0];
        }

        *(v18 + 16) = v23 + 1;
        v24 = v18 + 16 * v23;
        *(v24 + 32) = v21;
        *(v24 + 40) = v20;
        v19 += 3;
        --v16;
      }

      while (v16);
      v57 = v18;

      v14 = v17;
      v13 = v58;
    }

    else
    {
      result = sub_267651AA0(a2);
      v57 = MEMORY[0x277D84F90];
    }

    v29 = 0;
    v58 = *(v14 + 16);
    v53 = MEMORY[0x277D84F90];
    v55 = v14;
    v56 = v61 + 8;
    v30 = &qword_2801CC3D8;
    while (v58 != v29)
    {
      if (v29 >= *(v14 + 16))
      {
        __break(1u);
        return result;
      }

      v31 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v32 = *(v59 + 72);
      sub_2675F95E4(v14 + v31 + v32 * v29, v13, v30, &unk_2676CEC00);
      v33 = v13;
      v34 = v13;
      v35 = v61;
      sub_2675F95E4(v33, v61, v30, &unk_2676CEC00);
      v36 = *(v56 + *(v60 + 48));

      v37 = v30;
      sub_2676C8ABC();
      v38 = sub_2676C8BFC();
      (*(*(v38 - 8) + 8))(v35, v38);
      v39 = sub_2676CBFAC();
      v41 = v40;

      v63[0] = v39;
      v63[1] = v41;
      MEMORY[0x28223BE20](v42);
      *(&v51 - 2) = v63;
      LOBYTE(v39) = sub_2676A25A0(sub_2676147E0, (&v51 - 4), v57);

      if (v39)
      {
        result = sub_2675EB7EC(v34, v37, &unk_2676CEC00);
        ++v29;
        v14 = v55;
        v30 = v37;
        v13 = v34;
      }

      else
      {
        sub_26763DE18(v34, v54);
        v43 = v53;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v43;
        v62 = v43;
        v13 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2676C2998(0, *(v43 + 16) + 1, 1);
          v45 = v62;
        }

        v30 = v37;
        v47 = *(v45 + 16);
        v46 = *(v45 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_2676C2998(v46 > 1, v47 + 1, 1);
          v30 = v37;
          v45 = v62;
        }

        ++v29;
        *(v45 + 16) = v47 + 1;
        v53 = v45;
        result = sub_26763DE18(v54, v45 + v31 + v47 * v32);
        v14 = v55;
      }
    }

    v48 = v52;
    swift_beginAccess();
    v49 = *(v48 + 32);
    *(v48 + 32) = v53;

    if (*(*(v48 + 32) + 16))
    {
      swift_beginAccess();
      v50 = 0x9000000000000020;
    }

    else
    {
      swift_beginAccess();
      v50 = 0x9000000000000048;
    }

    sub_26764AC08(v50);
    swift_endAccess();
    return sub_267651E38(v51);
  }

  else
  {
    swift_beginAccess();
    v25 = *(a3 + 32);
    *(a3 + 32) = v14;

    v26 = *(*(a3 + 32) + 16);
    if (v26 == 1)
    {
      swift_beginAccess();
      v27 = 0x9000000000000038;
    }

    else if (v26)
    {
      swift_beginAccess();
      v27 = 0x9000000000000030;
    }

    else
    {
      swift_beginAccess();
      v27 = 0x9000000000000028;
    }

    sub_26764AC08(v27);
    return swift_endAccess();
  }
}

uint64_t sub_26764CE08()
{
  OUTLINED_FUNCTION_70();
  sub_26764AC08(0x9000000000000058);
  return swift_endAccess();
}

uint64_t sub_26764CE54(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for MarkMessageAsRead();
  v4 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2676C9BFC();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD088, &qword_2676D1550);
  v15 = *(v14 - 8);
  v52 = v14;
  v53 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  v48 = a1;
  sub_2675F95E4(a1, v13, &qword_2801CC3D8, &unk_2676CEC00);
  v19 = &v13[*(v10 + 56)];
  v20 = *v19;
  v47 = *(v19 + 1);
  sub_2676468B4();
  v22 = v21;
  v23 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedSender;
  swift_beginAccess();
  SingleMessage = type metadata accessor for ReadSingleMessage();
  v65 = SingleMessage;
  v66 = sub_267651FB8(&qword_2801CD090, type metadata accessor for ReadSingleMessage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
  sub_2675F95E4(a2 + v23, boxed_opaque_existential_1 + SingleMessage[6], &qword_2801CBFE8, &unk_2676CD9E0);
  sub_2676149CC(a2 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory, boxed_opaque_existential_1 + SingleMessage[7]);
  sub_2676149CC(a2 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_readingUtil, boxed_opaque_existential_1 + SingleMessage[8]);
  v26 = (boxed_opaque_existential_1 + *(v10 + 56));
  v50 = sub_2676C8BFC();
  v27 = *(v50 - 8);
  v49 = *(v27 + 32);
  v51 = v27 + 32;
  v49(boxed_opaque_existential_1, v13, v50);
  v28 = v47;
  *v26 = v20;
  v26[1] = v28;
  *(boxed_opaque_existential_1 + SingleMessage[5]) = v22;
  LOBYTE(SingleMessage) = *(a1 + *(v10 + 56) + 8) != 0;
  v62 = &type metadata for ReplyPromptInterpreter;
  v63 = sub_267651E4C();
  LOBYTE(v59) = SingleMessage;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0A0, &qword_2676D1558);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v64[0] = sub_2676C9F2C();
  v32 = sub_2676148C4(&qword_2801CD0A8, &qword_2801CD0A0, &qword_2676D1558);

  sub_2676C942C();

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0B0, &qword_2676D1560);
  v59 = v29;
  v60 = &type metadata for ReplyPromptOption;
  v61 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v52;
  v59 = v52;
  v60 = &type metadata for ReplyPromptOption;
  v61 = OpaqueTypeConformance2;
  v66 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v64);

  sub_2676C941C();

  (*(v53 + 8))(v18, v34);
  v35 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v64);
  (*(v55 + 104))(v54, *MEMORY[0x277D5BDE8], v56);
  sub_2675F95E4(v48, v13, &qword_2801CC3D8, &unk_2676CEC00);
  v36 = *&v13[*(v10 + 56) + 8];

  v38 = v57;
  v37 = v58;
  sub_2676149CC(a2 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_linkServicesProvider, &v57[*(v58 + 24)]);
  v49(v38, v13, v50);
  v38[*(v37 + 20)] = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0B8, &qword_2676D1568);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  sub_267651FB8(&qword_2801CD0C0, type metadata accessor for MarkMessageAsRead);
  v42 = sub_2676C9F5C();
  v65 = v39;
  v66 = sub_2676148C4(&qword_2801CD0C8, &qword_2801CD0B8, &qword_2676D1568);
  v64[0] = v42;
  v43 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_2676CDE10;
  *(v44 + 32) = v35;
  *(v44 + 40) = v43;
  v45 = MEMORY[0x26D5FB6C0]();

  return v45;
}

void sub_26764D538(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  sub_26764F31C();
}

uint64_t sub_26764D570(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = *(a2 + 24);
  *(v3 + 24) = sub_267646858();
  swift_beginAccess();
  sub_26764AC08(v3 | 0x3000000000000000);
  swift_endAccess();
}

uint64_t sub_26764D5F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v58 = a5;
  v53 = a4;
  v50 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0D0, &qword_2676D1570);
  v13 = *(v12 - 8);
  v55 = v12;
  v56 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0D8, &qword_2676D1578);
  v59 = *(v57 - 8);
  v17 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - v18;
  sub_2675F95E4(a1, v11, &qword_2801CC3D8, &unk_2676CEC00);
  v19 = &v11[*(v8 + 56)];
  v21 = *v19;
  v20 = *(v19 + 1);
  v52 = v21;
  v51 = v20;

  sub_2676468B4();
  v23 = v22;
  v24 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedSender;
  swift_beginAccess();
  SubjectLine = type metadata accessor for ReadSubjectLine();
  v66 = SubjectLine;
  v67 = sub_267651FB8(&qword_2801CD0E0, type metadata accessor for ReadSubjectLine);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
  sub_2675F95E4(a3 + v24, boxed_opaque_existential_1 + SubjectLine[7], &qword_2801CBFE8, &unk_2676CD9E0);
  sub_2676149CC(a3 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory, boxed_opaque_existential_1 + SubjectLine[8]);
  sub_2676149CC(a3 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_readingUtil, boxed_opaque_existential_1 + SubjectLine[10]);
  v27 = *(a3 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_subjectInput);
  v28 = *(a3 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_subjectInput + 8);
  v29 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedDateTimeRange;
  swift_beginAccess();
  sub_2675F95E4(a3 + v29, boxed_opaque_existential_1 + SubjectLine[12], &qword_2801CC380, &unk_2676CEF40);
  v30 = (boxed_opaque_existential_1 + *(v8 + 56));
  v31 = sub_2676C8BFC();
  (*(*(v31 - 8) + 32))(boxed_opaque_existential_1, v11, v31);
  v32 = v51;
  *v30 = v52;
  v30[1] = v32;
  *(boxed_opaque_existential_1 + SubjectLine[5]) = v50;
  *(boxed_opaque_existential_1 + SubjectLine[6]) = v23;
  *(boxed_opaque_existential_1 + SubjectLine[9]) = v53;
  v33 = (boxed_opaque_existential_1 + SubjectLine[11]);
  *v33 = v27;
  v33[1] = v28;
  v63 = &type metadata for ReadingInputInterpreter;
  v64 = sub_267651EA8();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0F0, &qword_2676D1580);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();

  v65[0] = sub_2676C9F2C();
  v37 = sub_2676148C4(&qword_2801CD0F8, &qword_2801CD0F0, &qword_2676D1580);

  sub_2676C942C();

  v65[0] = v34;
  v65[1] = &type metadata for ReadingOption;
  v65[2] = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v54;
  v40 = v55;
  sub_2676C941C();

  (*(v56 + 8))(v16, v40);
  v41 = swift_allocObject();
  v42 = v58;
  *(v41 + 16) = a3;
  *(v41 + 24) = v42;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD100, &qword_2676D1588);
  v60 = v40;
  v61 = &type metadata for ReadingOption;
  v62 = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v57;
  v60 = v57;
  v61 = v43;
  v67 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v65);

  sub_2676C93FC();

  (*(v59 + 8))(v39, v44);
  v45 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2676CDE20;
  *(v46 + 32) = v45;
  v47 = MEMORY[0x26D5FB6C0]();

  return v47;
}

void sub_26764DC58(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  sub_26764F804();
}

uint64_t sub_26764DC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  swift_beginAccess();
  LOBYTE(a3) = sub_26765014C(a3 + 16, v4, v5, v6 | (v7 << 8));
  swift_endAccess();
  return a3 & 1;
}

uint64_t sub_26764DD3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2676C9C5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v9 = sub_2676CBE4C();
  __swift_project_value_buffer(v9, qword_2801CDC90);
  v10 = sub_2676CBE2C();
  v11 = sub_2676CC23C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2675D4000, v10, v11, "#ReadMailActingFlow: offerToContinue onCompletion", v12, 2u);
    MEMORY[0x26D5FEA80](v12, -1, -1);
  }

  (*(v5 + 16))(v8, a1, v4);
  v13 = (*(v5 + 88))(v8, v4);
  if (v13 == *MEMORY[0x277D5BED8])
  {
    v14 = swift_allocObject();
    *(v14 + 16) = *(a2 + 24);
    *(v14 + 24) = sub_267646858();
    swift_beginAccess();
    sub_26764AC08(v14 | 0x3000000000000000);
    swift_endAccess();
  }

  else if (v13 == *MEMORY[0x277D5BED0])
  {
    swift_beginAccess();
    sub_26764AC08(0x9000000000000048);
    return swift_endAccess();
  }

  else
  {
    result = sub_2676CC58C();
    __break(1u);
  }

  return result;
}

uint64_t sub_26764DFA8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v56 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD088, &qword_2676D1550);
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - v13;
  v15 = type metadata accessor for MarkMessageAsRead();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2676C9BFC();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 104))(v22, *MEMORY[0x277D5BDE8]);
  v24 = *(a2 + 24);
  result = swift_beginAccess();
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v26 = *(a2 + 32);
    if (v24 < *(v26 + 16))
    {
      sub_2675F95E4(v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24, v14, &qword_2801CC3D8, &unk_2676CEC00);
      v27 = *(v7 + 48);
      v55 = v4;
      v29 = *&v14[v27];
      v28 = *&v14[v27 + 8];
      v30 = &v12[v27];
      v31 = sub_2676C8BFC();
      v32 = *(v31 - 8);
      v54 = v22;
      v33 = a2;
      v34 = v32;
      (*(v32 + 32))(v12, v14, v31);
      *v30 = v29;
      *(v30 + 1) = v28;
      (*(v34 + 16))(v18, v12, v31);
      sub_2675EB7EC(v12, &qword_2801CC3D8, &unk_2676CEC00);
      sub_2676149CC(v33 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_linkServicesProvider, &v18[*(v15 + 24)]);
      v18[*(v15 + 20)] = 1;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0B8, &qword_2676D1568);
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      sub_267651FB8(&qword_2801CD0C0, type metadata accessor for MarkMessageAsRead);
      v38 = sub_2676C9F5C();
      v64 = v35;
      v65 = sub_2676148C4(&qword_2801CD0C8, &qword_2801CD0B8, &qword_2676D1568);
      v63[0] = v38;
      v39 = sub_2676C9A0C();
      __swift_destroy_boxed_opaque_existential_1(v63);
      sub_2676149CC(v33 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory, &v59);
      sub_2676468B4();
      LOBYTE(v34) = (v40 & 0x30) != 0;
      v64 = &type metadata for OfferToReply;
      v65 = sub_267651F5C();
      v41 = swift_allocObject();
      v63[0] = v41;
      sub_267614E14(&v59, v41 + 16);
      *(v41 + 56) = v34;
      v61 = &type metadata for ReplyPromptInterpreter;
      v62 = sub_267651E4C();
      LOBYTE(v59) = 0;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0A0, &qword_2676D1558);
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      v63[0] = sub_2676C9F2C();
      v45 = swift_allocObject();
      v46 = v56;
      *(v45 + 16) = v33;
      *(v45 + 24) = v46;

      sub_267651508(v46);
      v47 = sub_2676148C4(&qword_2801CD0A8, &qword_2801CD0A0, &qword_2676D1558);
      v48 = v57;
      sub_2676C942C();

      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0B0, &qword_2676D1560);
      *&v59 = v42;
      *(&v59 + 1) = &type metadata for ReplyPromptOption;
      v60 = v47;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v50 = v55;
      *&v59 = v55;
      *(&v59 + 1) = &type metadata for ReplyPromptOption;
      v60 = OpaqueTypeConformance2;
      v65 = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v63);

      sub_2676C941C();

      (*(v58 + 8))(v48, v50);
      v51 = sub_2676C9A0C();
      __swift_destroy_boxed_opaque_existential_1(v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_2676CDE10;
      *(v52 + 32) = v39;
      *(v52 + 40) = v51;
      v53 = MEMORY[0x26D5FB6C0]();

      return v53;
    }
  }

  __break(1u);
  return result;
}

void sub_26764E69C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  sub_26764F31C();
}

void sub_26764E6D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(a2 + 24) = v3;
    OUTLINED_FUNCTION_17_13();
    swift_beginAccess();
    OUTLINED_FUNCTION_79_1();
    if (v3 >= v4)
    {
      swift_beginAccess();
      v5 = 0x9000000000000048;
    }

    else
    {
      swift_beginAccess();
      v5 = OUTLINED_FUNCTION_81_1();
    }

    sub_26764AC08(v5);
    swift_endAccess();
  }
}

unint64_t sub_26764E770(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v43) = a6;
  v46 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC768, &unk_2676D1590);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v42 - v17;
  MEMORY[0x28223BE20](v16);
  v44 = *(v11 + 16);
  v45 = a1;
  v44(&v42 - v19, a1, v10);
  if (swift_dynamicCast())
  {
    if (v47)
    {
      v20 = v46;
      swift_beginAccess();
      v21 = *(v20 + 40);
      *(v20 + 40) = 0x9000000000000050;
    }

    else
    {
      v33 = swift_allocObject();
      *(v33 + 16) = a3;
      *(v33 + 24) = a4;
      *(v33 + 32) = a5;
      *(v33 + 40) = v43 & 1;
      v34 = v33 | 0x5000000000000000;
      v35 = v46;
      swift_beginAccess();
      v21 = *(v35 + 40);
      *(v35 + 40) = v34;
      sub_267651508(a3);
    }
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v22 = sub_2676CBE4C();
    __swift_project_value_buffer(v22, qword_2801CDC90);
    v23 = v44;
    v44(v18, v45, v10);
    v24 = sub_2676CBE2C();
    v25 = sub_2676CC24C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v47 = v43;
      *v26 = 136315138;
      v23(v15, v18, v10);
      v27 = sub_2676CBFBC();
      v29 = v28;
      (*(v11 + 8))(v18, v10);
      v30 = v27;
      v23 = v44;
      v31 = sub_2676B0B84(v30, v29, &v47);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_2675D4000, v24, v25, "#ReadMailActingFlow: Unexpected return value from Guard flows: %s", v26, 0xCu);
      v32 = v43;
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x26D5FEA80](v32, -1, -1);
      MEMORY[0x26D5FEA80](v26, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v18, v10);
    }

    v36 = swift_allocObject();
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_2676CC3FC();

    v47 = 0xD00000000000002ALL;
    v48 = 0x80000002676D7560;
    v23(v15, v45, v10);
    v37 = sub_2676CBFBC();
    MEMORY[0x26D5FDD00](v37);

    v38 = v48;
    *(v36 + 16) = v47;
    *(v36 + 24) = v38;
    v39 = v36 | 0x8000000000000000;
    v40 = v46;
    swift_beginAccess();
    v21 = *(v40 + 40);
    *(v40 + 40) = v39;
  }

  return sub_267614A2C(v21);
}

uint64_t sub_26764EBB0(uint64_t a1, unint64_t a2)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF28, &unk_2676D2700);
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v3);
  v60 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF30, &unk_2676D13F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v63 = &v55 - v9;
  v10 = sub_2676C9BFC();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v10);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - v19;
  v21 = type metadata accessor for DeleteMessage(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + 24);
  result = swift_beginAccess();
  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v27 = *(a1 + 32);
    if (v25 < *(v27 + 16))
    {
      sub_2675F95E4(v27 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v25, v20, &qword_2801CC3D8, &unk_2676CEC00);
      v28 = *(v13 + 48);
      v55 = v6;
      v56 = v7;
      v29 = *&v20[v28];
      v30 = *&v20[v28 + 8];
      v31 = &v18[v28];
      v32 = sub_2676C8BFC();
      v33 = *(v32 - 8);
      (*(v33 + 32))(v18, v20, v32);
      *v31 = v29;
      *(v31 + 1) = v30;
      (*(v33 + 16))(&v24[*(v21 + 20)], v18, v32);
      sub_2675EB7EC(v18, &qword_2801CC3D8, &unk_2676CEC00);
      sub_2676149CC(a1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_linkServicesProvider, &v24[*(v21 + 24)]);
      *v24 = 1;
      (*(v57 + 104))(v64, *MEMORY[0x277D5BDF0], v58);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0B8, &qword_2676D1568);
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      sub_267651FB8(&qword_2801CD110, type metadata accessor for DeleteMessage);
      v37 = sub_2676C9F5C();
      v69 = v34;
      v70 = sub_2676148C4(&qword_2801CD0C8, &qword_2801CD0B8, &qword_2676D1568);
      v68[0] = v37;
      v38 = sub_2676C9A0C();
      __swift_destroy_boxed_opaque_existential_1(v68);
      v69 = &type metadata for DeleteMessageSucceeded;
      v70 = sub_267652000();
      v39 = sub_2676C9EFC();
      v40 = *(v39 + 48);
      v41 = *(v39 + 52);
      swift_allocObject();
      v68[0] = sub_2676C9F0C();
      v42 = sub_2676C9EEC();
      v43 = MEMORY[0x277D5C188];
      v44 = v60;
      sub_2676C937C();

      v45 = swift_allocObject();
      *(v45 + 16) = a1;
      v46 = v59;
      *(v45 + 24) = v59;

      sub_267651508(v46);
      v68[0] = v39;
      v68[1] = v42;
      v68[2] = v43;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v49 = v62;
      v48 = v63;
      sub_2676C942C();

      (*(v61 + 8))(v44, v49);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF38, &unk_2676D2710);
      v65 = v49;
      v66 = v42;
      v67 = OpaqueTypeConformance2;
      v50 = swift_getOpaqueTypeConformance2();
      v51 = v55;
      v65 = v55;
      v66 = v42;
      v67 = v50;
      v70 = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v68);

      sub_2676C941C();

      (*(v56 + 8))(v48, v51);
      v52 = sub_2676C9A0C();
      __swift_destroy_boxed_opaque_existential_1(v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_2676CDE10;
      *(v53 + 32) = v38;
      *(v53 + 40) = v52;
      v54 = MEMORY[0x26D5FB6C0]();

      return v54;
    }
  }

  __break(1u);
  return result;
}

void sub_26764F304()
{
  v1 = *(v0 + 24);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v3;
  }
}

void sub_26764F31C()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_2676C9C4C();
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_2();
  if (v5)
  {
    if (v5 == 1)
    {

      sub_2676C9ECC();
      OUTLINED_FUNCTION_98_0();
      sub_2676C990C();
      v14 = OUTLINED_FUNCTION_40_1();
      v15(v14);
      __swift_destroy_boxed_opaque_existential_1(v50);
      if (v5)
      {
        OUTLINED_FUNCTION_32_4();
        v16 = swift_allocObject();
        *(OUTLINED_FUNCTION_77_0(v16) + 40) = 0;
        goto LABEL_7;
      }

      sub_2676C9ECC();
      v23 = v51;
      v24 = OUTLINED_FUNCTION_39_3(v50);
      v25 = sub_267691338(v24, v23);
      __swift_destroy_boxed_opaque_existential_1(v50);
      if (v25)
      {
        v26 = v9;
        v27 = v7;
        v28 = 1;
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_32_4();
      v33 = swift_allocObject();
      v34 = OUTLINED_FUNCTION_77_0(v33);
      *(v34 + 40) = 0;
LABEL_21:
      v36 = v34 | 0x6000000000000000;
      OUTLINED_FUNCTION_74_0();
      v37 = *(v1 + 40);
      *(v1 + 40) = v36;
      sub_267651508(v3);
      v32 = v37;
LABEL_24:
      sub_267614A2C(v32);
      goto LABEL_37;
    }

    switch(v9)
    {
      case 1:
        OUTLINED_FUNCTION_17_13();
        swift_beginAccess();
        v40 = *(v1 + 40);
        OUTLINED_FUNCTION_9_18();
        sub_267651508(v40);
        v41 = OUTLINED_FUNCTION_81_1();
        sub_26764AC08(v41);
        swift_endAccess();
        v32 = v40;
        goto LABEL_24;
      case 2:
      case 5:
        v19 = *(v1 + 24);
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
          return;
        }

        *(v1 + 24) = v20;
        OUTLINED_FUNCTION_17_13();
        swift_beginAccess();
        OUTLINED_FUNCTION_79_1();
        if (v20 == v21)
        {
          OUTLINED_FUNCTION_9_18();
          v22 = OUTLINED_FUNCTION_76_0();
        }

        else if (v3 >> 60 == 3 && *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18) < v20)
        {
          OUTLINED_FUNCTION_9_18();
          v22 = 0x9000000000000040;
        }

        else
        {
          OUTLINED_FUNCTION_9_18();
          v22 = OUTLINED_FUNCTION_81_1();
        }

        sub_26764AC08(v22);
LABEL_36:
        swift_endAccess();
        goto LABEL_37;
      case 3:
        OUTLINED_FUNCTION_25_8();
        sub_26764AC08(0x9000000000000050);
        goto LABEL_36;
      case 4:
        sub_2676C9ECC();
        v42 = __swift_project_boxed_opaque_existential_1(v50, v50[3]);
        sub_2676C9C3C();
        OUTLINED_FUNCTION_20_5();
        sub_2676C990C();
        v43 = OUTLINED_FUNCTION_40_1();
        v44(v43);
        __swift_destroy_boxed_opaque_existential_1(v50);
        if (v42)
        {
          OUTLINED_FUNCTION_32_4();
          v45 = swift_allocObject();
          *(v45 + 24) = 0;
          *(v45 + 32) = 0;
          *(v45 + 16) = v3;
          *(v45 + 40) = 1;
          OUTLINED_FUNCTION_25_8();
          sub_267651508(v3);
          v39 = v45 | 0x5000000000000000;
LABEL_28:
          sub_26764AC08(v39);
          swift_endAccess();
          goto LABEL_29;
        }

        sub_2676C9ECC();
        v47 = v51;
        v48 = OUTLINED_FUNCTION_39_3(v50);
        v49 = sub_267691338(v48, v47);
        __swift_destroy_boxed_opaque_existential_1(v50);
        if (v49)
        {
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_32_4();
        v34 = swift_allocObject();
        *(v34 + 24) = 0;
        *(v34 + 32) = 0;
        *(v34 + 16) = v3;
        break;
      case 6:
        OUTLINED_FUNCTION_82();
        v46 = swift_allocObject();
        *(v46 + 16) = v3;
        OUTLINED_FUNCTION_25_8();
        sub_267651508(v3);
        v39 = v46 | 0x7000000000000000;
        goto LABEL_28;
      default:
        OUTLINED_FUNCTION_82();
        v38 = swift_allocObject();
        *(v38 + 16) = v3;
        OUTLINED_FUNCTION_25_8();
        sub_267651508(v3);
        v39 = v38 | 0x4000000000000000;
        goto LABEL_28;
    }

LABEL_20:
    *(v34 + 40) = 1;
    goto LABEL_21;
  }

  sub_2676C9ECC();
  OUTLINED_FUNCTION_98_0();
  sub_2676C990C();
  v17 = OUTLINED_FUNCTION_40_1();
  v18(v17);
  __swift_destroy_boxed_opaque_existential_1(v50);
  if ((v5 & 1) == 0)
  {
    sub_2676C9ECC();
    v29 = v51;
    v30 = OUTLINED_FUNCTION_39_3(v50);
    v31 = sub_267691338(v30, v29);
    __swift_destroy_boxed_opaque_existential_1(v50);
    if (v31)
    {
      v26 = v9;
      v27 = v7;
      v28 = 0;
LABEL_16:
      sub_2675D94FC(v26, v27, v28);
LABEL_17:
      OUTLINED_FUNCTION_74_0();
      v32 = *(v1 + 40);
      *(v1 + 40) = 0x9000000000000000;
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_32_4();
    v35 = swift_allocObject();
    v34 = OUTLINED_FUNCTION_77_0(v35);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_32_4();
  v16 = swift_allocObject();
  *(OUTLINED_FUNCTION_77_0(v16) + 40) = 1;
LABEL_7:
  OUTLINED_FUNCTION_25_8();
  sub_267651508(v3);
  sub_26764AC08(v16 | 0x5000000000000000);
  swift_endAccess();
LABEL_29:

LABEL_37:
  OUTLINED_FUNCTION_20_1();
}

void sub_26764F804()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_2676C9C4C();
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_2();
  if (!v5)
  {
    v24 = qword_2801CBAA0;

    if (v24 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v25 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v25, qword_2801CDC90);
    v26 = sub_2676CBE2C();
    v27 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_7(v27))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_9_9(&dword_2675D4000, v28, v29, "#ReadMailActingFlow: user asked to reply to the email");
      OUTLINED_FUNCTION_2_5();
    }

    sub_2676C9ECC();
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_53_0();
    sub_2676C990C();
    v30 = OUTLINED_FUNCTION_78_1();
    v31(v30);
    __swift_destroy_boxed_opaque_existential_1(v92);
    if (v26)
    {
      OUTLINED_FUNCTION_32_4();
      v22 = swift_allocObject();
      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_17_13();
      swift_beginAccess();
      v23 = *(v1 + 40);
      *(v22 + 16) = v23;
      *(v22 + 24) = v9;
      *(v22 + 32) = v7;
      *(v22 + 40) = 1;
LABEL_15:
      OUTLINED_FUNCTION_9_18();
      sub_267651508(v23);
      sub_26764AC08(v22 | 0x5000000000000000);
      swift_endAccess();
LABEL_57:

      goto LABEL_58;
    }

    sub_2676C9ECC();
    v50 = v93;
    v51 = OUTLINED_FUNCTION_39_3(v92);
    v52 = sub_267691338(v51, v50);
    __swift_destroy_boxed_opaque_existential_1(v92);
    if (v52)
    {
      v47 = OUTLINED_FUNCTION_65_0();
      v49 = 0;
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_32_4();
    v54 = swift_allocObject();
    OUTLINED_FUNCTION_37_5();
    OUTLINED_FUNCTION_74_0();
    *(v54 + 16) = *(v1 + 40);
    *(v54 + 24) = v9;
    *(v54 + 32) = v7;
    *(v54 + 40) = 1;
LABEL_30:
    *(v1 + 40) = v54 | 0x6000000000000000;
    goto LABEL_58;
  }

  if (v5 == 1)
  {
    v14 = qword_2801CBAA0;

    if (v14 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v15 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v15, qword_2801CDC90);
    v16 = sub_2676CBE2C();
    v17 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_7(v17))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_9_9(&dword_2675D4000, v18, v19, "#ReadMailActingFlow: user asked to reply all to the email");
      OUTLINED_FUNCTION_2_5();
    }

    sub_2676C9ECC();
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_53_0();
    sub_2676C990C();
    v20 = OUTLINED_FUNCTION_78_1();
    v21(v20);
    __swift_destroy_boxed_opaque_existential_1(v92);
    if (v16)
    {
      OUTLINED_FUNCTION_32_4();
      v22 = swift_allocObject();
      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_17_13();
      swift_beginAccess();
      v23 = *(v1 + 40);
      *(v22 + 16) = v23;
      *(v22 + 24) = v9;
      *(v22 + 32) = v7;
      *(v22 + 40) = 0;
      goto LABEL_15;
    }

    sub_2676C9ECC();
    v44 = v93;
    v45 = OUTLINED_FUNCTION_39_3(v92);
    v46 = sub_267691338(v45, v44);
    __swift_destroy_boxed_opaque_existential_1(v92);
    if (v46)
    {
      v47 = OUTLINED_FUNCTION_65_0();
      v49 = 1;
LABEL_27:
      sub_2675D94FC(v47, v48, v49);
      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_74_0();
      v53 = *(v1 + 40);
      *(v1 + 40) = 0x9000000000000000;
      sub_267614A2C(v53);
LABEL_58:
      OUTLINED_FUNCTION_20_1();
      return;
    }

    OUTLINED_FUNCTION_32_4();
    v54 = swift_allocObject();
    OUTLINED_FUNCTION_37_5();
    OUTLINED_FUNCTION_74_0();
    *(v54 + 16) = *(v1 + 40);
    *(v54 + 24) = v9;
    *(v54 + 32) = v7;
    *(v54 + 40) = 0;
    goto LABEL_30;
  }

  switch(v9)
  {
    case 1:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v82 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v82, qword_2801CDC90);
      v83 = sub_2676CBE2C();
      v84 = sub_2676CC23C();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = OUTLINED_FUNCTION_17_3();
        *v85 = 0;
        _os_log_impl(&dword_2675D4000, v83, v84, "#ReadMailActingFlow: user asked to skip or go to the next email", v85, 2u);
        OUTLINED_FUNCTION_2_5();
      }

      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_17_13();
      swift_beginAccess();
      if (*(v1 + 40) == 0x9000000000000038)
      {
        OUTLINED_FUNCTION_9_18();
        sub_26764AC08(0x9000000000000048);
        goto LABEL_52;
      }

      if (v3)
      {
        v86 = sub_2676CBE2C();
        v87 = sub_2676CC23C();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = OUTLINED_FUNCTION_17_3();
          *v88 = 0;
          _os_log_impl(&dword_2675D4000, v86, v87, "#ReadMailActingFlow: user barged-in to skip to next email, do nothing", v88, 2u);
          OUTLINED_FUNCTION_2_5();
        }
      }

      else
      {
        v89 = *(v1 + 24);
        v90 = __OFADD__(v89, 1);
        v91 = v89 + 1;
        if (v90)
        {
          goto LABEL_66;
        }

        *(v1 + 24) = v91;
      }

      goto LABEL_58;
    case 2:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v58 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v58, qword_2801CDC90);
      v59 = sub_2676CBE2C();
      v60 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_35_0(v60))
      {
        v61 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_45_3(v61);
        OUTLINED_FUNCTION_13_15();
        _os_log_impl(v62, v63, v64, v65, v66, 2u);
        OUTLINED_FUNCTION_30_6();
      }

      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_17_13();
      swift_beginAccess();
      v67 = *(v1 + 40);
      if (v67 >> 60 != 3)
      {
        goto LABEL_58;
      }

      v68 = *((v67 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v69 = v68 + 1;
      if (!__OFADD__(v68, 1))
      {
        OUTLINED_FUNCTION_17_13();
        swift_beginAccess();
        OUTLINED_FUNCTION_79_1();
        v71 = v70 - 1;
        if (v71 < v69)
        {
          v69 = v71;
        }

        *(v1 + 24) = v69;
        OUTLINED_FUNCTION_79();
        v72 = swift_allocObject();
        *(v72 + 16) = v69;
        *(v72 + 24) = sub_267646858();
        OUTLINED_FUNCTION_70();
        sub_26764AC08(v72 | 0x3000000000000000);
LABEL_56:
        swift_endAccess();
        goto LABEL_57;
      }

      __break(1u);
LABEL_66:
      __break(1u);
      break;
    case 3:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v73 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v73, qword_2801CDC90);
      v74 = sub_2676CBE2C();
      v75 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_35_0(v75))
      {
        v76 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_45_3(v76);
        OUTLINED_FUNCTION_13_15();
        _os_log_impl(v77, v78, v79, v80, v81, 2u);
        OUTLINED_FUNCTION_30_6();
      }

      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_70();
      sub_26764AC08(0x9000000000000050);
LABEL_52:
      swift_endAccess();
      goto LABEL_58;
    case 4:
      OUTLINED_FUNCTION_82();
      v55 = swift_allocObject();
      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_17_13();
      swift_beginAccess();
      v56 = *(v1 + 40);
      *(v55 + 16) = v56;
      OUTLINED_FUNCTION_9_18();
      sub_267651508(v56);
      v57 = v55 | 0x7000000000000000;
      goto LABEL_55;
    default:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v32 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v32, qword_2801CDC90);
      v33 = sub_2676CBE2C();
      v34 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_35_0(v34))
      {
        v35 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_45_3(v35);
        OUTLINED_FUNCTION_13_15();
        _os_log_impl(v36, v37, v38, v39, v40, 2u);
        OUTLINED_FUNCTION_30_6();
      }

      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_17_13();
      swift_beginAccess();
      v41 = *(v1 + 40);
      OUTLINED_FUNCTION_82();
      v42 = swift_allocObject();
      v43 = v42;
      if (v41 == 0x9000000000000038)
      {
        *(v42 + 16) = 0x9000000000000048;
        OUTLINED_FUNCTION_9_18();
      }

      else
      {
        *(v42 + 16) = v41;
        OUTLINED_FUNCTION_9_18();
        sub_267651508(v41);
      }

      v57 = v43 | 0x4000000000000000;
LABEL_55:
      sub_26764AC08(v57);
      goto LABEL_56;
  }
}

uint64_t sub_26764FFEC()
{
  OUTLINED_FUNCTION_92_0();
  v1 = sub_2676C9CCC();
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_2();
  v7 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
  if (swift_dynamicCast())
  {
    v8 = *(v4 + 8);
    v9 = OUTLINED_FUNCTION_65_0();
    v10(v9);
    OUTLINED_FUNCTION_9_18();
    sub_26764AC08(0x9000000000000050);
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_79();
    v12 = swift_allocObject();
    swift_getErrorValue();
    *(v12 + 16) = sub_2676CC5FC();
    *(v12 + 24) = v13;
    OUTLINED_FUNCTION_9_18();
    sub_26764AC08(v12 | 0x8000000000000000);
    swift_endAccess();
  }
}

uint64_t sub_26765014C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (*(*a1 + 16))
  {

    *a1 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_17_13();
  swift_beginAccess();
  if (*(v4 + 40) >> 60 != 3)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v15 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v15, qword_2801CDC90);
    v11 = sub_2676CBE2C();
    v12 = sub_2676CC23C();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_16;
    }

    v13 = OUTLINED_FUNCTION_17_3();
    *v13 = 0;
    v14 = "#ReadMailActingFlow: breaking out of readWindow loop";
    goto LABEL_15;
  }

  if ((a4 & 0x1FF) != 2)
  {
    return 0;
  }

  result = 0;
  if (a2 == 2 && !a3)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v10, qword_2801CDC90);
    v11 = sub_2676CBE2C();
    v12 = sub_2676CC23C();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_16;
    }

    v13 = OUTLINED_FUNCTION_17_3();
    *v13 = 0;
    v14 = "#ReadMailActingFlow: breaking out of readWindow loop to skip window";
LABEL_15:
    _os_log_impl(&dword_2675D4000, v11, v12, v14, v13, 2u);
    OUTLINED_FUNCTION_2_5();
LABEL_16:

    return 1;
  }

  return result;
}

void sub_2676502F8(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v7 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v7, qword_2801CDC90);

  v8 = sub_2676CBE2C();
  v9 = sub_2676CC23C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109888;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 2048;
    *(v10 + 10) = *(v3 + 24);

    *(v10 + 18) = 2048;
    *(v10 + 20) = a2;
    *(v10 + 28) = 2048;
    *(v10 + 30) = a3;
    _os_log_impl(&dword_2675D4000, v8, v9, "#ReadMailActingFlow: readWindow onCompletion, break out: %{BOOL}d, index %ld, startIndex %ld, endIndex %ld", v10, 0x26u);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
  }

  OUTLINED_FUNCTION_17_13();
  swift_beginAccess();
  if (*(v3 + 40) >> 60 == 3)
  {
    v11 = *(v3 + 24);
    OUTLINED_FUNCTION_17_13();
    swift_beginAccess();
    OUTLINED_FUNCTION_79_1();
    if (v11 == v12)
    {
      v13 = sub_2676CBE2C();
      v14 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_35_0(v14))
      {
        v15 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_45_3(v15);
        OUTLINED_FUNCTION_13_15();
        _os_log_impl(v16, v17, v18, v19, v20, 2u);
        OUTLINED_FUNCTION_30_6();
      }

      OUTLINED_FUNCTION_70();
      v21 = OUTLINED_FUNCTION_76_0();
LABEL_16:
      sub_26764AC08(v21);
      swift_endAccess();
      return;
    }

    if (v11 > a3 && (a1 & 1) == 0)
    {
      v22 = sub_2676CBE2C();
      v23 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_35_0(v23))
      {
        v24 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_45_3(v24);
        OUTLINED_FUNCTION_13_15();
        _os_log_impl(v25, v26, v27, v28, v29, 2u);
        OUTLINED_FUNCTION_30_6();
      }

      OUTLINED_FUNCTION_70();
      v21 = 0x9000000000000040;
      goto LABEL_16;
    }
  }
}

uint64_t sub_267650534(unint64_t a1)
{
  v2 = v1;
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00) - 8);
  v5 = *(*v4 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  *(v1 + 48) = 1;
  v9 = *(v1 + 24);
  OUTLINED_FUNCTION_70();
  sub_267650870(v9, v8);
  swift_endAccess();
  v10 = *&v8[v4[14] + 8];

  v11 = sub_2676C8BFC();
  OUTLINED_FUNCTION_2_6(v11);
  (*(v12 + 8))(v8);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v13 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v13, qword_2801CDC90);

  v14 = sub_2676CBE2C();
  v15 = sub_2676CC23C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = *(v1 + 24);

    _os_log_impl(&dword_2675D4000, v14, v15, "#SiriMail deleted message at index %ld", v16, 0xCu);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
  }

  if (*(v1 + 24) >= *(*(v1 + 32) + 16))
  {
    v23 = sub_2676CBE2C();
    v24 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_35_0(v24))
    {
      v25 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_45_3(v25);
      OUTLINED_FUNCTION_13_15();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      OUTLINED_FUNCTION_30_6();
    }

    OUTLINED_FUNCTION_70();
    v31 = 0x9000000000000048;
    goto LABEL_17;
  }

  v17 = sub_2676CBE2C();
  v18 = sub_2676CC23C();
  v19 = OUTLINED_FUNCTION_5_7(v18);
  if (a1 >> 60 != 3)
  {
    if (v19)
    {
      v32 = OUTLINED_FUNCTION_17_3();
      *v32 = 0;
      _os_log_impl(&dword_2675D4000, v17, v18, "#SiriMail going to next state after deleting message", v32, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    OUTLINED_FUNCTION_70();
    v31 = OUTLINED_FUNCTION_81_1();
LABEL_17:
    sub_26764AC08(v31);
    return swift_endAccess();
  }

  if (v19)
  {
    v20 = OUTLINED_FUNCTION_17_3();
    *v20 = 0;
    _os_log_impl(&dword_2675D4000, v17, v18, "#SiriMail going back to .readWindow after deleting message", v20, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_79();
  v21 = swift_allocObject();
  *(v21 + 16) = *(v2 + 24);
  *(v21 + 24) = sub_267646858();
  OUTLINED_FUNCTION_70();
  sub_26764AC08(v21 | 0x3000000000000000);
  swift_endAccess();
}

void sub_267650870(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2675E0980(v5);
    v5 = v10;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00) - 8);
    v8 = *(v7 + 72);
    v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v8 * a1;
    sub_26763DE18(v9, a2);
    sub_2676C2590(v9 + v8, v6 - 1 - a1, v9);
    *(v5 + 16) = v6 - 1;
    *v2 = v5;
  }
}

uint64_t sub_26765096C(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_2_6(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  v7 = v30 - v6;
  result = 0x6867694864616572;
  switch(a1 >> 60)
  {
    case 1uLL:
      return 0x6C69614D746567;
    case 2uLL:
      return result;
    case 3uLL:
      v16 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v17 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      OUTLINED_FUNCTION_61_2();
      sub_2676CC3FC();

      OUTLINED_FUNCTION_82_1();
      v31[0] = v19 | 2;
      v31[1] = v18;
      v30[0] = v16;
      v20 = sub_2676CC56C();
      MEMORY[0x26D5FDD00](v20);

      MEMORY[0x26D5FDD00](0x203A646E65202CLL, 0xE700000000000000);
      v30[0] = v17;
      v21 = sub_2676CC56C();
      goto LABEL_10;
    case 4uLL:
      v15 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_61_2();
      sub_2676CC3FC();

      v31[0] = 0xD00000000000001ALL;
      v31[1] = 0x80000002676D7500;
      goto LABEL_9;
    case 5uLL:
      v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v24 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v25 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v31[0] = 0;
      v31[1] = 0xE000000000000000;

      sub_2676CC3FC();
      MEMORY[0x26D5FDD00](0x4D6F54796C706572, 0xEF28656761737365);
      v26 = sub_26765096C(v22);
      MEMORY[0x26D5FDD00](v26);

      OUTLINED_FUNCTION_61_1();
      MEMORY[0x26D5FDD00](0xD000000000000010);
      v30[0] = v23;
      v30[1] = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
      v27 = sub_2676CBFBC();
      MEMORY[0x26D5FDD00](v27);

      OUTLINED_FUNCTION_61_1();
      MEMORY[0x26D5FDD00](0xD000000000000010);
      LOBYTE(v30[0]) = v25;
      sub_2676CC49C();
      goto LABEL_14;
    case 6uLL:
      OUTLINED_FUNCTION_61_1();
      return 0xD000000000000013;
    case 7uLL:
      v15 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_61_2();
      sub_2676CC3FC();

      strcpy(v31, "deleteMessage(");
      HIBYTE(v31[1]) = -18;
LABEL_9:
      v21 = sub_26765096C(v15);
LABEL_10:
      MEMORY[0x26D5FDD00](v21);

      goto LABEL_14;
    case 8uLL:
      v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v29 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v31[0] = 0x28726F727265;
      v31[1] = 0xE600000000000000;
      MEMORY[0x26D5FDD00](v28, v29);
LABEL_14:
      MEMORY[0x26D5FDD00](41, 0xE100000000000000);
      return v31[0];
    case 9uLL:
      result = 0x6E4964656B636F6CLL;
      switch(__ROR8__(a1 + 0x7000000000000000, 3))
      {
        case 1:
          OUTLINED_FUNCTION_61_1();
          result = 0xD000000000000016;
          break;
        case 2:
          result = 0x4365766C6F736572;
          break;
        case 3:
          result = 0x6C68676948746567;
          break;
        case 4:
          result = 0x6867696C68676968;
          break;
        case 5:
          result = 0x746C757365526F6ELL;
          break;
        case 6:
          result = 0x72746E4964616572;
          break;
        case 7:
          result = 0x676E695364616572;
          break;
        case 8:
          result = 0x436F54726566666FLL;
          break;
        case 9:
          result = 0x636E6F4364616572;
          break;
        case 0xALL:
          result = 0x656C6C65636E6163;
          break;
        case 0xBLL:
          result = 1701736292;
          break;
        default:
          return result;
      }

      return result;
    default:
      v9 = *(a1 + 16);
      v31[0] = 0;
      v31[1] = 0xE000000000000000;

      sub_2676CC3FC();

      OUTLINED_FUNCTION_82_1();
      v31[0] = v11 | 0xE;
      v31[1] = v10;
      sub_2676CB35C();
      v12 = sub_2676CC2EC();
      v14 = v13;
      sub_2675EB7EC(v7, &qword_2801CBFD0, &qword_2676CDEA0);
      MEMORY[0x26D5FDD00](v12, v14);

      return v31[0];
  }
}

uint64_t sub_267650F20()
{
  v1 = *(v0 + 32);

  sub_267614A2C(*(v0 + 40));
  v2 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow__readMessageTask;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEB0, &qword_2676D1360);
  OUTLINED_FUNCTION_2_6(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_senderInput);

  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedSender, &qword_2801CBFE8, &unk_2676CD9E0);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_linkServicesProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory));
  v6 = *(v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_subjectInput + 8);

  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedDateTimeRange, &qword_2801CC380, &unk_2676CEF40);
  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeInput, &qword_2801CC1E8, &qword_2676CF570);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeResolver));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_readingUtil));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_featureFlags));
  return v0;
}

uint64_t sub_267651078()
{
  sub_267650F20();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ReadMailActingFlow()
{
  result = qword_2801CCE50;
  if (!qword_2801CCE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267651124()
{
  sub_267651360(319, &qword_2801CCE60, &qword_2801CC430, &unk_2676D0440, MEMORY[0x277D5B9C8]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_2675F9EB0();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_267651360(319, &qword_2801CC3B0, &qword_2801CC1F8, &qword_2676CEBA0, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_267651360(319, &qword_2801CCE68, &qword_2801CC1F0, &unk_2676CE100, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_267651360(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriMailInternal04ReadB10ActingFlowC5StateO(void *a1)
{
  v1 = *a1 >> 60;
  if (v1 <= 8)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 9;
  }
}

uint64_t sub_2676513E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x77 && *(a1 + 8))
    {
      v2 = *a1 + 118;
    }

    else
    {
      v2 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
      if (v2 >= 0x76)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_267651428(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x76)
  {
    *result = a2 - 119;
    if (a3 >= 0x77)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x77)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_267651488(unint64_t *result, uint64_t a2)
{
  if (a2 < 9)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    v2 = (8 * (a2 - 9)) | 0x9000000000000000;
  }

  *result = v2;
  return result;
}

unint64_t sub_267651508(unint64_t result)
{
  switch(result >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:

      break;
    default:
      return result;
  }

  return result;
}

void sub_267651540(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_2676078F0((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      v6 = *(sub_2676C8BFC() - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_267651620(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_267607918((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00) - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

unint64_t sub_26765170C()
{
  result = qword_2801CCF40;
  if (!qword_2801CCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CCF40);
  }

  return result;
}

unint64_t sub_267651760()
{
  result = qword_2801CCF48;
  if (!qword_2801CCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CCF48);
  }

  return result;
}

uint64_t sub_2676517CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2676CC59C() & 1;
  }
}

unint64_t sub_267651810(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = sub_2676C8BFC();
    OUTLINED_FUNCTION_4_1(v5);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_2676518B4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00) - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2676519E4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26764CE54(v0 + v2, v3);
}

unint64_t sub_267651AA0(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_267651508(result);
  }

  return result;
}

unint64_t sub_267651AB4()
{
  result = qword_2801CCFD0;
  if (!qword_2801CCFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CCFD0);
  }

  return result;
}

unint64_t sub_267651B18()
{
  result = qword_2801CCFE0;
  if (!qword_2801CCFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CCFE0);
  }

  return result;
}

unint64_t sub_267651B74()
{
  result = qword_2801CCFF8;
  if (!qword_2801CCFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CCFF8);
  }

  return result;
}

unint64_t sub_267651BE0()
{
  result = qword_2801CD010;
  if (!qword_2801CD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD010);
  }

  return result;
}

uint64_t sub_267651C4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267651CC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_267651D34(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_267651D40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_267651D60(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

unint64_t sub_267651D80()
{
  result = qword_2801CD060;
  if (!qword_2801CD060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD060);
  }

  return result;
}

unint64_t sub_267651DE4()
{
  result = qword_2801CD080;
  if (!qword_2801CD080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD080);
  }

  return result;
}

unint64_t sub_267651E38(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_267614A2C(result);
  }

  return result;
}

unint64_t sub_267651E4C()
{
  result = qword_2801CD098;
  if (!qword_2801CD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD098);
  }

  return result;
}

unint64_t sub_267651EA8()
{
  result = qword_2801CD0E8;
  if (!qword_2801CD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD0E8);
  }

  return result;
}

uint64_t objectdestroy_102Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));
  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

unint64_t sub_267651F5C()
{
  result = qword_2801CD108;
  if (!qword_2801CD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD108);
  }

  return result;
}

void sub_267651FB0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_26764E69C(a1);
}

uint64_t sub_267651FB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267652000()
{
  result = qword_2801CD118;
  if (!qword_2801CD118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD118);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{
  v1 = *(v0 + 16);

  sub_267614A2C(*(v0 + 24));
  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_267652090()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_267650534(v1);
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_8_19()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_9_18()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_19()
{
  __swift_destroy_boxed_opaque_existential_1((v1 - 208));
  result = __swift_destroy_boxed_opaque_existential_1((v1 - 160));
  v3 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26_6(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_28_5()
{
  __swift_destroy_boxed_opaque_existential_1((v0 - 208));

  return __swift_destroy_boxed_opaque_existential_1((v0 - 160));
}

void OUTLINED_FUNCTION_30_6()
{

  JUMPOUT(0x26D5FEA80);
}

uint64_t OUTLINED_FUNCTION_36_6(unint64_t *a1)
{

  return sub_2676148C4(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t *OUTLINED_FUNCTION_53_4(uint64_t a1)
{
  *(v1 + 928) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 896));
}

uint64_t OUTLINED_FUNCTION_56_1()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_59_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[116] = a2;
  v2[115] = v3;
  v2[112] = a1;

  return sub_2676C9F6C();
}

uint64_t OUTLINED_FUNCTION_65_2()
{
  result = *(v0 + 552);
  v2 = *(v0 + 832);
  return result;
}

uint64_t OUTLINED_FUNCTION_70_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[116] = a2;
  v2[115] = v3;
  v2[112] = a1;
}

uint64_t OUTLINED_FUNCTION_71_1()
{
  v2 = *(v0 + 816);

  return sub_2676C941C();
}

uint64_t OUTLINED_FUNCTION_74_0()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_77_0(void *result)
{
  result[2] = v1;
  result[3] = v3;
  result[4] = v2;
  return result;
}

void OUTLINED_FUNCTION_84_0()
{
  *(v0 + 920) = v1;
  *(v4 - 160) = v3;
  *(v4 - 152) = v2;
}

uint64_t OUTLINED_FUNCTION_94_1()
{
  *(v0 - 128) = 0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;

  return sub_2676C9B9C();
}

uint64_t OUTLINED_FUNCTION_95_1()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_98_0()
{
  v1 = *(v0 - 112);
  __swift_project_boxed_opaque_existential_1((v0 - 144), *(v0 - 120));

  return sub_2676C9C3C();
}

uint64_t OUTLINED_FUNCTION_99_0()
{
  v1 = *(v0 - 136);
  __swift_project_boxed_opaque_existential_1((v0 - 168), *(v0 - 144));

  return sub_2676C9C3C();
}

uint64_t type metadata accessor for ReadMailCATsSimple()
{
  result = qword_2801CD128;
  if (!qword_2801CD128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267652764()
{
  OUTLINED_FUNCTION_3_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_2_0();
  v6 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2676527E8()
{
  OUTLINED_FUNCTION_16_2();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_2676CDE20;
  *(v3 + 32) = 2036625250;
  *(v3 + 40) = 0xE400000000000000;
  sub_2675ED65C(v2, v1, &qword_2801CBFD0, &qword_2676CDEA0);
  v4 = sub_2676CB3FC();
  if (OUTLINED_FUNCTION_9_19(v4) == 1)
  {
    sub_2675ED6C0(v0[4], &qword_2801CBFD0, &qword_2676CDEA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_14_13();
    v6 = *(v5 + 32);
    OUTLINED_FUNCTION_11_3();
    v7();
  }

  v9 = *MEMORY[0x277D55C70];
  v8 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_1_21();
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_26765297C;
  v11 = v0[3];
  OUTLINED_FUNCTION_34_6();

  return v14(v12, 0xED000079646F4223, v3);
}

uint64_t sub_26765297C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_0_9();

    return v15(v14);
  }
}

uint64_t sub_267652AAC()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *MEMORY[0x277D55C70];
  v0 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_1_21();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_42(v2);
  *v3 = v4;
  v3[1] = sub_267652B50;
  v5 = OUTLINED_FUNCTION_25_9();

  return v6(v5);
}

uint64_t sub_267652B50()
{
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_267652C44()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *MEMORY[0x277D55C70];
  v0 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_1_21();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_42(v2);
  *v3 = v4;
  v3[1] = sub_267654A9C;
  v5 = OUTLINED_FUNCTION_15_15();

  return v7(v5);
}

uint64_t sub_267652CEC()
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 91) = v3;
  *(v1 + 90) = v4;
  *(v1 + 89) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  *(v1 + 88) = v8;
  *(v1 + 16) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_2_0();
  v13 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267652D88()
{
  OUTLINED_FUNCTION_16_2();
  v2 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  v4 = v3;
  *(v1 + 64) = v3;
  *(v3 + 16) = xmmword_2676D15B0;
  *(v3 + 32) = 0x746E756F63;
  *(v3 + 40) = 0xE500000000000000;
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  else
  {
    v5 = *(v1 + 16);
    v6 = MEMORY[0x277D839F8];
  }

  v7 = *(v1 + 56);
  v8 = *(v1 + 24);
  *(v4 + 48) = v5;
  *(v4 + 72) = v6;
  *(v4 + 80) = 0xD000000000000010;
  *(v4 + 88) = 0x80000002676D76B0;
  sub_2675ED65C(v8, v7, &qword_2801CBFD0, &qword_2676CDEA0);
  v9 = sub_2676CB3FC();
  if (OUTLINED_FUNCTION_9_19(v9) == 1)
  {
    sub_2675ED6C0(*(v1 + 56), &qword_2801CBFD0, &qword_2676CDEA0);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_14_13();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_11_3();
    v12();
  }

  v13 = *(v1 + 32);
  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_11_20();
  *(v4 + 128) = v14;
  *(v4 + 136) = v15;
  if (v13)
  {
    sub_2676CB36C();
    v16 = v13;
  }

  else
  {
    v16 = 0;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
  }

  v17 = *(v1 + 40);
  *(v4 + 144) = v16;
  OUTLINED_FUNCTION_20_8();
  *(v4 + 168) = v18;
  *(v4 + 176) = 0xD000000000000011;
  *(v4 + 184) = v19;
  if (v17)
  {
    sub_2676CB28C();
  }

  else
  {
    *(v4 + 200) = 0;
    *(v4 + 208) = 0;
  }

  v20 = *(v1 + 91);
  v21 = *(v1 + 90);
  v22 = *(v1 + 89);
  *(v4 + 192) = v17;
  OUTLINED_FUNCTION_35_5();
  *(v4 + 216) = v23;
  *(v4 + 224) = v24;
  *(v4 + 232) = 0xE800000000000000;
  *(v4 + 240) = v25;
  OUTLINED_FUNCTION_12_12();
  *(v4 + 264) = v27;
  *(v4 + 272) = v26;
  *(v4 + 280) = 0xE500000000000000;
  *(v4 + 288) = v28;
  OUTLINED_FUNCTION_32_5();
  *(v4 + 312) = v29;
  *(v4 + 320) = 0xD000000000000021;
  *(v4 + 328) = v30;
  *(v4 + 360) = v29;
  v31 = *(MEMORY[0x277D55C70] + 4);
  v37 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  *(v4 + 336) = v32;

  v33 = swift_task_alloc();
  *(v1 + 72) = v33;
  *v33 = v1;
  v33[1] = sub_267653048;
  v34 = *(v1 + 48);
  OUTLINED_FUNCTION_34_6();

  return v37(v35, 0xEE006F72746E4923, v4);
}

uint64_t sub_267653048()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];

    v14 = OUTLINED_FUNCTION_0_9();

    return v15(v14);
  }
}

uint64_t sub_267653178(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return OUTLINED_FUNCTION_1_12();
}

uint64_t sub_267653194()
{
  OUTLINED_FUNCTION_16_2();
  v1 = *(v0 + 49);
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  *(v0 + 24) = v3;
  *(v3 + 16) = xmmword_2676CDE10;
  OUTLINED_FUNCTION_20_8();
  *(v4 + 32) = 0xD000000000000014;
  *(v4 + 40) = v5;
  *(v4 + 48) = v2;
  OUTLINED_FUNCTION_32_5();
  *(v6 + 72) = v7;
  *(v6 + 80) = 0xD000000000000011;
  *(v6 + 88) = v8;
  *(v6 + 120) = v7;
  *(v6 + 96) = v1;
  v9 = *(MEMORY[0x277D55C70] + 4);
  v14 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 32) = v10;
  *v10 = v11;
  v10[1] = sub_2676532DC;
  v12 = *(v0 + 16);

  return v14(0xD000000000000018, 0x80000002676D6620, v3);
}

uint64_t sub_2676532DC()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    v13 = OUTLINED_FUNCTION_9_8();

    return v14(v13);
  }
}

uint64_t sub_267653408()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_15_0();
  v3 = *(v0 + 40);

  return v2();
}

uint64_t sub_267653464()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *MEMORY[0x277D55C70];
  v0 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_1_21();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_42(v2);
  *v3 = v4;
  v3[1] = sub_267654A9C;
  v5 = OUTLINED_FUNCTION_15_15();

  return v7(v5);
}

uint64_t sub_26765350C()
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 81) = v2;
  *(v1 + 80) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v0;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_2_0();
  v10 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26765359C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_2676D15C0;
  OUTLINED_FUNCTION_20_8();
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = v5;
  sub_2675ED65C(v2, v1, &qword_2801CBFD0, &qword_2676CDEA0);
  v6 = sub_2676CB3FC();
  if (OUTLINED_FUNCTION_9_19(v6) == 1)
  {
    sub_2675ED6C0(*(v0 + 48), &qword_2801CBFD0, &qword_2676CDEA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_14_13();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_11_3();
    v9();
  }

  v10 = *(v0 + 24);
  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_11_20();
  *(v3 + 80) = v11;
  *(v3 + 88) = v12;
  if (v10)
  {
    sub_2676CB36C();
    v13 = v10;
  }

  else
  {
    v13 = 0;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  v14 = *(v0 + 32);
  *(v3 + 96) = v13;
  OUTLINED_FUNCTION_20_8();
  *(v3 + 120) = v15;
  *(v3 + 128) = 0xD000000000000011;
  *(v3 + 136) = v16;
  if (v14)
  {
    sub_2676CB28C();
  }

  else
  {
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  v17 = *(v0 + 81);
  v18 = *(v0 + 80);
  *(v3 + 144) = v14;
  OUTLINED_FUNCTION_12_12();
  *(v3 + 168) = v19;
  *(v3 + 176) = v20;
  *(v3 + 184) = 0xE500000000000000;
  *(v3 + 192) = v21;
  OUTLINED_FUNCTION_32_5();
  *(v3 + 216) = v22;
  *(v3 + 224) = 0xD000000000000014;
  *(v3 + 232) = v23;
  *(v3 + 264) = v22;
  *(v3 + 240) = v24;
  v25 = *(MEMORY[0x277D55C70] + 4);
  v30 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 64) = v26;
  *v26 = v27;
  v26[1] = sub_26765380C;
  v28 = *(v0 + 40);

  return v30(0xD000000000000012, 0x80000002676D6FA0, v3);
}

uint64_t sub_26765380C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];

    v14 = OUTLINED_FUNCTION_0_9();

    return v15(v14);
  }
}

uint64_t sub_26765393C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v0[6];
  v1 = v0[7];

  OUTLINED_FUNCTION_15_0();
  v4 = v0[9];

  return v3();
}

uint64_t sub_2676539A0(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_1_12();
}

uint64_t sub_2676539B8()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_2676CDE10;
  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_11_20();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  if (v1)
  {
    sub_2676CB36C();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v6 = *(v0 + 56);
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_32_5();
  *(v2 + 88) = v7;
  *(v2 + 120) = MEMORY[0x277D839B0];
  *(v2 + 96) = v8;
  v9 = *MEMORY[0x277D55C70];
  v10 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_1_21();
  *(v2 + 72) = v11;
  *(v2 + 80) = 0xD000000000000015;

  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 40) = v12;
  *v12 = v13;
  v12[1] = sub_267653B18;
  v14 = *(v0 + 24);

  return v16(0xD00000000000001ALL, 0x80000002676D6FC0, v2);
}

uint64_t sub_267653B18()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_9_8();

    return v14(v13);
  }
}

uint64_t sub_267653C44()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *MEMORY[0x277D55C70];
  v0 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_1_21();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_42(v2);
  *v3 = v4;
  v3[1] = sub_267654A9C;
  v5 = OUTLINED_FUNCTION_25_9();

  return v6(v5);
}

uint64_t sub_267653CE8()
{
  OUTLINED_FUNCTION_3_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_2_0();
  v6 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267653D6C()
{
  OUTLINED_FUNCTION_16_2();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_2676CDE20;
  *(v3 + 32) = 0x6D614E7972657571;
  *(v3 + 40) = 0xE900000000000065;
  sub_2675ED65C(v2, v1, &qword_2801CBFD0, &qword_2676CDEA0);
  v4 = sub_2676CB3FC();
  if (OUTLINED_FUNCTION_9_19(v4) == 1)
  {
    sub_2675ED6C0(v0[4], &qword_2801CBFD0, &qword_2676CDEA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_14_13();
    v6 = *(v5 + 32);
    OUTLINED_FUNCTION_11_3();
    v7();
  }

  v9 = *MEMORY[0x277D55C70];
  v8 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_1_21();
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_2675ED1C8;
  v11 = v0[3];
  v12 = OUTLINED_FUNCTION_15_15();

  return v14(v12);
}

uint64_t sub_267653F00()
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 40) = v18;
  *(v1 + 48) = v0;
  *(v1 + 92) = v2;
  *(v1 + 91) = v3;
  *(v1 + 90) = v4;
  OUTLINED_FUNCTION_36_7(v5, v6, v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_2_0();
  v13 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267653F9C()
{
  v4 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v5 = swift_allocObject();
  *(v1 + 64) = v5;
  v6 = OUTLINED_FUNCTION_10_14(v5, xmmword_2676D15D0);
  if (v4)
  {
    type metadata accessor for MailMessageConcept(v6);
  }

  else
  {
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  v7 = *(v1 + 24);
  *(v5 + 48) = v4;
  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_17_14(v8, v9);
  if (v7)
  {
    sub_2676CB36C();
  }

  else
  {
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_20_8();
  v12 = OUTLINED_FUNCTION_29_8(v10, v11);
  if (v4)
  {
    v12 = sub_2676CB28C();
  }

  else
  {
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
  }

  v13 = *(v1 + 56);
  v14 = *(v1 + 40);
  v15 = *(v1 + 92);
  v16 = *(v1 + 91);
  v17 = *(v1 + 90);
  v18 = *(v1 + 89);
  v19 = *(v1 + 88);
  *(v5 + 144) = v4;
  *(v5 + 168) = v12;
  *(v5 + 176) = 0x646165726E557369;
  *(v5 + 184) = 0xE800000000000000;
  v20 = MEMORY[0x277D839B0];
  *(v5 + 192) = v19;
  *(v5 + 216) = v20;
  *(v5 + 224) = 0x656C676E69537369;
  *(v5 + 232) = 0xEF6567617373654DLL;
  *(v5 + 240) = v18;
  *(v5 + 264) = v20;
  *(v5 + 272) = 0x4974737269467369;
  *(v5 + 280) = 0xEB000000006D6574;
  *(v5 + 288) = v17;
  *(v5 + 312) = v20;
  *(v5 + 320) = 0x74497473614C7369;
  *(v5 + 328) = 0xEA00000000006D65;
  *(v5 + 336) = v16;
  OUTLINED_FUNCTION_12_12();
  *(v5 + 360) = v22;
  *(v5 + 368) = v21;
  *(v5 + 376) = 0xE500000000000000;
  *(v5 + 384) = v23;
  *(v5 + 408) = v22;
  *(v5 + 416) = v3;
  *(v5 + 424) = 0x80000002676D7610;
  sub_2675ED65C(v24, v13, &qword_2801CBFD0, &qword_2676CDEA0);
  v25 = sub_2676CB3FC();
  OUTLINED_FUNCTION_27_7(v25);
  if (v26)
  {

    sub_2675ED6C0(v0, &qword_2801CBFD0, &qword_2676CDEA0);
    *(v5 + 432) = 0u;
    *(v5 + 448) = 0u;
  }

  else
  {
    *(v5 + 456) = v2;
    __swift_allocate_boxed_opaque_existential_1((v5 + 432));
    OUTLINED_FUNCTION_14_2(v2);
    (*(v27 + 32))();
  }

  v29 = *MEMORY[0x277D55C70];
  v28 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_1_21();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v1 + 72) = v30;
  *v30 = v31;
  v30[1] = sub_267653048;
  v32 = *(v1 + 48);
  OUTLINED_FUNCTION_37_6();

  return v33();
}

uint64_t sub_267654290()
{
  OUTLINED_FUNCTION_3_0();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_36_7(v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  v1[7] = OUTLINED_FUNCTION_2_0();
  v11 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267654318()
{
  v4 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v5 = swift_allocObject();
  *(v1 + 64) = v5;
  v6 = OUTLINED_FUNCTION_10_14(v5, xmmword_2676D15E0);
  if (v4)
  {
    type metadata accessor for MailMessageConcept(v6);
  }

  else
  {
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  v7 = *(v1 + 24);
  *(v5 + 48) = v4;
  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_17_14(v8, v9);
  if (v7)
  {
    sub_2676CB36C();
  }

  else
  {
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_20_8();
  OUTLINED_FUNCTION_29_8(v10, v11);
  if (v4)
  {
    sub_2676CB28C();
  }

  else
  {
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
  }

  v12 = *(v1 + 56);
  v13 = *(v1 + 40);
  v14 = *(v1 + 89);
  v15 = *(v1 + 88);
  *(v5 + 144) = v4;
  OUTLINED_FUNCTION_35_5();
  *(v5 + 168) = v16;
  *(v5 + 176) = v17;
  *(v5 + 184) = 0xE800000000000000;
  *(v5 + 192) = v18;
  OUTLINED_FUNCTION_12_12();
  *(v5 + 216) = v20;
  *(v5 + 224) = v19;
  *(v5 + 232) = 0xE500000000000000;
  *(v5 + 240) = v21;
  *(v5 + 264) = v20;
  *(v5 + 272) = v3;
  *(v5 + 280) = 0x80000002676D7610;
  sub_2675ED65C(v22, v12, &qword_2801CBFD0, &qword_2676CDEA0);
  v23 = sub_2676CB3FC();
  OUTLINED_FUNCTION_27_7(v23);
  if (v24)
  {

    sub_2675ED6C0(v0, &qword_2801CBFD0, &qword_2676CDEA0);
    *(v5 + 288) = 0u;
    *(v5 + 304) = 0u;
  }

  else
  {
    *(v5 + 312) = v2;
    __swift_allocate_boxed_opaque_existential_1((v5 + 288));
    OUTLINED_FUNCTION_14_2(v2);
    (*(v25 + 32))();
  }

  v27 = *MEMORY[0x277D55C70];
  v26 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_1_21();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v1 + 72) = v28;
  *v28 = v29;
  v28[1] = sub_26765457C;
  v30 = *(v1 + 48);
  OUTLINED_FUNCTION_37_6();

  return v31();
}

uint64_t sub_26765457C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];

    v14 = OUTLINED_FUNCTION_0_9();

    return v15(v14);
  }
}

uint64_t sub_2676546AC()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v0[7];
  v1 = v0[8];

  OUTLINED_FUNCTION_15_0();
  v4 = v0[10];

  return v3();
}

uint64_t sub_267654710()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *MEMORY[0x277D55C70];
  v0 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_1_21();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_42(v2);
  *v3 = v4;
  v3[1] = sub_267654A9C;
  v5 = MEMORY[0x277D84F90];

  return v7(0xD000000000000023, 0x80000002676D75C0, v5);
}

uint64_t sub_2676547C4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_11_3();
  return sub_267654814(v3, v4);
}

uint64_t sub_267654814(uint64_t a1, uint64_t a2)
{
  v5 = sub_2676CB48C();
  v6 = OUTLINED_FUNCTION_8_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_2675ED65C(a1, &v20 - v17, &unk_2801CDAC0, &unk_2676CF3A0);
  (*(v8 + 16))(v12, a2, v2);
  v18 = sub_2676CB40C();
  (*(v8 + 8))(a2, v2);
  sub_2675ED6C0(a1, &unk_2801CDAC0, &unk_2676CF3A0);
  return v18;
}

uint64_t sub_26765498C(uint64_t a1, uint64_t a2)
{
  v5 = sub_2676CB48C();
  v6 = OUTLINED_FUNCTION_8_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_2676CB41C();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t OUTLINED_FUNCTION_9_19(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_10_14(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x7373654D6C69616DLL;
  a1[2].n128_u64[1] = 0xEB00000000656761;
  return 0;
}

uint64_t OUTLINED_FUNCTION_17_14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[9] = a1;
  v2[10] = a2;
  v2[11] = 0xEF7265646E655364;
  return 0;
}

uint64_t OUTLINED_FUNCTION_27_7(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = v2[7];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_29_8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[15] = a1;
  v2[16] = v3 | 1;
  v2[17] = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 89) = a5;
  *(v5 + 88) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = result;
  return result;
}

uint64_t type metadata accessor for ReadSingleMessage()
{
  result = qword_2801CD138;
  if (!qword_2801CD138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267654CC8()
{
  sub_267654DA4();
  if (v0 <= 0x3F)
  {
    sub_2675F9EB0();
    if (v1 <= 0x3F)
    {
      sub_2675F9F5C(319, &qword_2801CC420);
      if (v2 <= 0x3F)
      {
        sub_2675F9F5C(319, &qword_2801CCC70);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_267654DA4()
{
  if (!qword_2801CD148)
  {
    sub_2676C8BFC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC9B0, &unk_2676CFE50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2801CD148);
    }
  }
}

uint64_t sub_267654E24()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_267656980;

  return sub_267654EB8(v2);
}

uint64_t sub_267654EB8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2676C90FC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = *(*(sub_2676CAF8C() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = sub_2676C99CC();
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v10 = *(v9 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v11 = sub_2676C9DDC();
  v2[13] = v11;
  v12 = *(v11 - 8);
  v2[14] = v12;
  v13 = *(v12 + 64) + 15;
  v2[15] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v16 = *(*(sub_2676CB48C() - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v17 = sub_2676C8EBC();
  v2[19] = v17;
  v18 = *(v17 - 8);
  v2[20] = v18;
  v19 = *(v18 + 64) + 15;
  v2[21] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v2[26] = v22;
  v23 = *(v22 - 8);
  v2[27] = v23;
  v24 = *(v23 + 64) + 15;
  v2[28] = swift_task_alloc();
  v25 = sub_2676C8BFC();
  v2[29] = v25;
  v26 = *(v25 - 8);
  v2[30] = v26;
  v27 = *(v26 + 64) + 15;
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2676552E4, 0, 0);
}

uint64_t sub_2676552E4()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[26];
  v6 = v0[3];
  OUTLINED_FUNCTION_5_18();
  v7 = *(v4 + *(v5 + 48) + 8);

  (*(v2 + 32))(v1, v4, v3);
  OUTLINED_FUNCTION_5_18();
  v8 = (v4 + *(v5 + 48));
  v0[32] = *v8;
  v0[33] = v8[1];
  v9 = *(v2 + 8);
  v0[34] = v9;
  v0[35] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v3);
  SingleMessage = type metadata accessor for ReadSingleMessage();
  v11 = 0;
  v0[36] = SingleMessage;
  v12 = *(v6 + *(SingleMessage + 20));
  v0[37] = v12;
  if ((v12 & 0x20) != 0)
  {
    v13 = v0[31];
    v14 = v0[25];
    sub_2676CB28C();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    v16 = *(v15 + 48);
    sub_2676C8A7C();
    v17 = sub_2676C90CC();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v17);
    __swift_storeEnumTagSinglePayload(v14 + v16, 1, 1, v17);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
    v11 = sub_2675FFBC4(v14);
    sub_2675E35CC(v14, &qword_2801CC380, &unk_2676CEF40);
  }

  v0[38] = v11;
  v18 = v0[31];
  v19 = v0[24];
  v20 = (v0[3] + *(SingleMessage + 32));
  v21 = *__swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_267641F70(v19);
  v22 = v0[23];
  v23 = v0[19];
  sub_267607B28(v0[24], v22, &qword_2801CBFE0, &qword_2676D1070);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_2675E35CC(v0[23], &qword_2801CBFE0, &qword_2676D1070);
  }

  else
  {
    v24 = v0[31];
    v25 = v0[22];
    v27 = v0[20];
    v26 = v0[21];
    v28 = v0[19];
    (*(v27 + 32))(v26, v0[23], v28);
    (*(v27 + 16))(v25, v26, v28);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v28);
    sub_2676C8B0C();
    (*(v27 + 8))(v26, v28);
  }

  v29 = swift_task_alloc();
  v0[39] = v29;
  *v29 = v0;
  v29[1] = sub_26765562C;
  v30 = v0[31];
  v31 = v0[24];

  return sub_2676569FC();
}

uint64_t sub_26765562C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = *v1;
  v3 = *(*v1 + 312);
  v8 = *v1;
  v2[40] = v4;
  v2[41] = v0;

  if (v0)
  {
    v5 = v2[33];

    v6 = sub_2676561D0;
  }

  else
  {
    v6 = sub_267655744;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_267655744()
{
  v1 = v0[40];
  v2 = v0[36];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[3];
  type metadata accessor for ReadMailCATsSimple();
  sub_2676CB47C();
  v0[42] = sub_2676CB42C();
  sub_267607B28(v5 + *(v2 + 24), v4, &qword_2801CBFE8, &unk_2676CD9E0);
  v6 = sub_2676C8C8C();
  LODWORD(v3) = __swift_getEnumTagSinglePayload(v4, 1, v6);

  v7 = v0[17];
  if (v3 == 1)
  {
    sub_2675E35CC(v0[17], &qword_2801CBFE8, &unk_2676CD9E0);
    v8 = 0;
  }

  else
  {
    v9 = v0[17];
    v8 = sub_267626550();
    (*(*(v6 - 8) + 8))(v7, v6);
  }

  v0[43] = v8;
  if ((v0[37] & 0x40) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v0[38];
  }

  v0[44] = v10;
  if (v0[33])
  {
    v11 = v0[32];
    v12 = v0[16];
    v13 = v0[33];

    sub_2676CBFEC();

    v14 = 0;
    v15 = v0[37];
  }

  else
  {
    v14 = 1;
  }

  v16 = v0[40];
  v17 = v0[16];
  v18 = sub_2676CB3FC();
  __swift_storeEnumTagSinglePayload(v17, v14, 1, v18);
  v19 = swift_task_alloc();
  v0[45] = v19;
  *v19 = v0;
  v19[1] = sub_267655984;
  v20 = v0[16];

  return sub_267654290();
}

uint64_t sub_267655984()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;
  v5 = v2[45];
  v6 = v2[42];
  v7 = v2[40];
  v8 = v2[16];
  v9 = *v1;
  v3[46] = v10;
  v3[47] = v0;

  sub_2675E35CC(v8, &qword_2801CBFD0, &qword_2676CDEA0);

  v11 = v2[44];
  v12 = v2[43];
  if (v0)
  {
    v13 = v3[33];

    v14 = sub_2676562F4;
  }

  else
  {
    v15 = v2[44];

    v14 = sub_267655B64;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

void sub_267655B64()
{
  v1 = [*(v0 + 368) dialog];
  sub_2675E16F4();
  v2 = sub_2676CC0FC();

  v3 = sub_267630B8C(v2);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      v30 = *(v0 + 296);
      v32 = *(v0 + 288);
      v27 = *(v0 + 256);
      v28 = *(v0 + 264);
      v29 = *(v0 + 216);
      v7 = *(v0 + 120);
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v10 = *(v0 + 72);
      v11 = *(v0 + 80);
      v12 = *(v0 + 64);
      v13 = *(v0 + 40);
      v14 = *(v0 + 48);
      v24 = *(v0 + 56);
      v25 = *(v0 + 32);
      v26 = *(v0 + 24);

      sub_2676C999C();
      (*(v11 + 16))(v9, v8, v10);
      sub_2676C9D2C();
      sub_2676C9D6C();
      sub_26762D4C8(v12);
      sub_2676C9D3C();
      sub_2676C9D7C();
      sub_2676C9DBC();
      sub_2676C9DAC();
      v15 = sub_2676C9B3C();
      __swift_storeEnumTagSinglePayload(v24, 1, 1, v15);
      sub_2676C9D8C();
      sub_2676C9D9C();
      sub_2676C90EC();
      sub_2676C90DC();
      (*(v13 + 8))(v14, v25);
      sub_2676C9D5C();
      sub_267656420(v7, v27, v28, v26);

      (*(v11 + 8))(v8, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC528, &qword_2676CF290);
      v16 = *(v29 + 72);
      v17 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v18 = swift_allocObject();
      *(v0 + 384) = v18;
      *(v18 + 16) = xmmword_2676CDE20;
      sub_267607B28(v26, v18 + v17, &qword_2801CC3D8, &unk_2676CEC00);
      v19 = *(v32 + 28);
      v20 = swift_task_alloc();
      *(v0 + 392) = v20;
      *v20 = v0;
      v20[1] = sub_267655F18;
      v21 = *(v0 + 368);
      v22 = *(v0 + 120);
      v23 = *(v0 + 16);

      JUMPOUT(0x26763CA8CLL);
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D5FE0E0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v5 setSpokenOnly_];
    [v6 setSpokenOnlyDefined_];
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_267655F18()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_267656024, 0, 0);
}

uint64_t sub_267656024()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  v3 = *(v0 + 272);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);
  v12 = *(v0 + 280);
  v13 = *(v0 + 224);
  v6 = *(v0 + 192);
  v14 = *(v0 + 200);
  v15 = *(v0 + 184);
  v16 = *(v0 + 176);
  v17 = *(v0 + 168);
  v18 = *(v0 + 144);
  v19 = *(v0 + 136);
  v7 = *(v0 + 120);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v20 = *(v0 + 128);
  v21 = *(v0 + 96);
  v22 = *(v0 + 88);
  v23 = *(v0 + 64);
  v24 = *(v0 + 56);
  v25 = *(v0 + 48);

  (*(v8 + 8))(v7, v9);
  sub_2675E35CC(v6, &qword_2801CBFE0, &qword_2676D1070);
  v3(v4, v5);

  OUTLINED_FUNCTION_15_0();

  return v10();
}

uint64_t sub_2676561D0()
{
  v5 = *(v1 + 328);
  OUTLINED_FUNCTION_0_19();
  sub_2675E35CC(v2, &qword_2801CBFE0, &qword_2676D1070);
  v3(v4, v0);

  OUTLINED_FUNCTION_15_0();

  return v6();
}

uint64_t sub_2676562F4()
{
  v5 = *(v1 + 320);

  v6 = *(v1 + 376);
  OUTLINED_FUNCTION_0_19();
  sub_2675E35CC(v2, &qword_2801CBFE0, &qword_2676D1070);
  v3(v4, v0);

  OUTLINED_FUNCTION_15_0();

  return v7();
}

uint64_t sub_267656550()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2676565E8;

  return sub_267654E24();
}

uint64_t sub_2676565E8()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;

  OUTLINED_FUNCTION_15_0();

  return v4();
}

uint64_t sub_2676566CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267656980;

  return sub_267654E24();
}

uint64_t sub_267656764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5BD28] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267656980;

  return MEMORY[0x2821BB1F8](a1, a2, a3);
}

uint64_t sub_267656818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5BD18] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267656980;

  return MEMORY[0x2821BB1E8](a1, a2, a3);
}

uint64_t sub_2676568CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5BD20] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267656980;

  return MEMORY[0x2821BB1F0](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_0_19()
{
  v2 = v0[38];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v9 = v0[24];
  v8 = v0[25];
  v11 = v0[22];
  v10 = v0[23];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[17];
  v16 = v0[16];
  v17 = v0[15];
  v18 = v0[12];
  v19 = v0[11];
  v20 = v0[8];
  v21 = v0[7];
  v22 = v0[6];
}

uint64_t OUTLINED_FUNCTION_5_18()
{

  return sub_267607B28(v0, v1, v2, v3);
}

uint64_t sub_2676569FC()
{
  OUTLINED_FUNCTION_3_0();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_2676C8C8C();
  v1[13] = v3;
  v4 = *(v3 - 8);
  v1[14] = v4;
  v5 = *(v4 + 64) + 15;
  v1[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v9 = sub_2676C8E9C();
  v1[19] = v9;
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v12 = sub_2676C8EBC();
  v1[21] = v12;
  v13 = *(v12 - 8);
  v1[22] = v13;
  v14 = *(v13 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  OUTLINED_FUNCTION_4_1(v15);
  v17 = *(v16 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267656BD8, 0, 0);
}

uint64_t sub_267656BD8()
{
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[12];
  sub_2676C8AFC();
  v4 = OUTLINED_FUNCTION_17_15(v1);
  v5 = v0[26];
  if (v4)
  {
    sub_2675EB7EC(v0[26], &qword_2801CBFE0, &qword_2676D1070);
    v6 = 0;
  }

  else
  {
    v7 = v0[24];
    v8 = v0[21];
    v9 = v0[22];
    v11 = v0[19];
    v10 = v0[20];
    (*(v9 + 16))(v7, v0[26], v8);
    sub_2675EB7EC(v5, &qword_2801CBFE0, &qword_2676D1070);
    sub_2676C8E8C();
    sub_2675E362C();
    sub_2676CC08C();
    v6 = v12;
    (*(v9 + 8))(v7, v8);
  }

  v13 = v0[25];
  v14 = v0[21];
  sub_2675F95E4(v0[11], v13, &qword_2801CBFE0, &qword_2676D1070);
  v15 = OUTLINED_FUNCTION_17_15(v13);
  v16 = v0[25];
  if (v15 == 1)
  {
    sub_2675EB7EC(v0[25], &qword_2801CBFE0, &qword_2676D1070);
  }

  else
  {
    v18 = v0[22];
    v17 = v0[23];
    v19 = v0[20];
    v20 = v0[21];
    v21 = v0[19];

    (*(v18 + 32))(v17, v16, v20);
    sub_2676C8E8C();
    sub_2675E362C();
    sub_2676CC08C();
    v6 = v22;
    (*(v18 + 8))(v17, v20);
  }

  v23 = type metadata accessor for MailMessageConcept.Builder(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_26761A7EC();
  if (v6)
  {
    v27 = v0[18];
    sub_2676CBFEC();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v0[17];
  v30 = v0[18];
  v32 = v0[14];
  v31 = v0[15];
  v33 = v0[12];
  v79 = v0[13];
  v34 = sub_2676CB3FC();
  __swift_storeEnumTagSinglePayload(v30, v28, 1, v34);
  v35 = OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_body;
  swift_beginAccess();
  sub_267646164(v30, v26 + v35);
  swift_endAccess();
  v36 = OUTLINED_FUNCTION_14_14();
  sub_2675EB7EC(v36, v37, &qword_2676CDEA0);
  sub_2676CBFEC();
  OUTLINED_FUNCTION_17_2();
  v78 = v34;
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v34);
  v41 = OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_type;
  swift_beginAccess();
  sub_267646164(v29, v26 + v41);
  swift_endAccess();
  v42 = OUTLINED_FUNCTION_11_16();
  sub_2675EB7EC(v42, v43, &qword_2676CDEA0);
  sub_2676C8B3C();
  v44 = sub_267626550();
  v45 = *(v32 + 8);
  v45(v31, v79);
  sub_26761A870(v44);

  v46 = sub_2676C8ACC();
  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = v0[14];
    v80 = MEMORY[0x277D84F90];
    sub_2676CC46C();
    v50 = *(v48 + 16);
    v48 += 16;
    v49 = v50;
    v51 = v46 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v52 = *(v48 + 56);
    do
    {
      v53 = v0[15];
      v54 = v0[13];
      v55 = OUTLINED_FUNCTION_11_16();
      v49(v55);
      sub_267626550();
      v45(v53, v54);
      sub_2676CC44C();
      v56 = *(v80 + 16);
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
      v51 += v52;
      --v47;
    }

    while (v47);

    v57 = v80;
  }

  else
  {

    v57 = MEMORY[0x277D84F90];
  }

  v58 = v0[12];
  v59 = sub_26761A8BC(v57);

  sub_2676C8BAC();
  if (v60)
  {
    v61 = v0[16];
    sub_2676CBFEC();

    v62 = 0;
  }

  else
  {
    v62 = 1;
  }

  v63 = v0[25];
  v64 = v0[26];
  v66 = v0[23];
  v65 = v0[24];
  v67 = v0[20];
  v68 = v0[18];
  v77 = v0[17];
  v69 = v0[16];
  __swift_storeEnumTagSinglePayload(v69, v62, 1, v78);
  v70 = OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_subject;
  swift_beginAccess();
  sub_267646164(v69, v59 + v70);
  swift_endAccess();
  sub_2675EB7EC(v69, &qword_2801CBFD0, &qword_2676CDEA0);
  v71 = type metadata accessor for MailMessageConcept(0);
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  swift_allocObject();
  v74 = sub_26761A9A4(v59);

  v75 = v0[1];

  return v75(v74);
}

uint64_t sub_26765719C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_26761F624;

  return sub_267657234(v2, 0);
}

uint64_t sub_267657234(uint64_t a1, char a2)
{
  *(v3 + 384) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = sub_2676C90FC();
  *(v3 + 72) = v4;
  v5 = *(v4 - 8);
  *(v3 + 80) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80) - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v8 = *(*(sub_2676CAF8C() - 8) + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v9 = sub_2676C99CC();
  *(v3 + 112) = v9;
  v10 = *(v9 - 8);
  *(v3 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  v12 = sub_2676C9DDC();
  *(v3 + 144) = v12;
  v13 = *(v12 - 8);
  *(v3 + 152) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0) - 8) + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  v16 = *(*(sub_2676CB48C() - 8) + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0) - 8) + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070) - 8) + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  *(v3 + 208) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40) - 8) + 64) + 15;
  *(v3 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26765758C, 0, 0);
}

uint64_t sub_26765758C()
{
  v1 = v0[8];
  SubjectLine = type metadata accessor for ReadSubjectLine();
  v0[31] = SubjectLine;
  v3 = *(v1 + *(SubjectLine + 24));
  v0[32] = v3;
  if ((v3 & 0x20) != 0)
  {
    v6 = v0[29];
    v5 = v0[30];
    v7 = v0[26];
    sub_2676CB28C();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    v9 = *(v8 + 48);
    sub_2675F95E4(v1, v6, &qword_2801CC3D8, &unk_2676CEC00);
    v10 = *(v6 + *(v7 + 48) + 8);

    sub_2676C8A7C();
    v11 = sub_2676C8BFC();
    OUTLINED_FUNCTION_2_6(v11);
    (*(v12 + 8))(v6);
    v13 = sub_2676C90CC();
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v8);
    v4 = sub_2675FFBC4(v5);
    sub_2675EB7EC(v5, &qword_2801CC380, &unk_2676CEF40);
    v23 = v0[8];
  }

  else
  {
    v4 = 0;
  }

  v0[33] = v4;
  v24 = v0[28];
  v25 = v0[25];
  v26 = v0[26];
  v27 = OUTLINED_FUNCTION_11_16();
  sub_2675F95E4(v27, v28, v29, v30);
  v31 = *(v24 + *(v26 + 48) + 8);

  sub_2676C8EBC();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v36 = swift_task_alloc();
  v0[34] = v36;
  *v36 = v0;
  v36[1] = sub_2676577B0;
  v37 = v0[28];
  v38 = v0[25];

  return sub_2676569FC();
}

uint64_t sub_2676577B0()
{
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  v4 = v2[34];
  v5 = v2[25];
  v6 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  v3[35] = v8;
  v3[36] = v0;

  sub_2675EB7EC(v5, &qword_2801CBFE0, &qword_2676D1070);
  if (v0)
  {
    v9 = sub_26765840C;
  }

  else
  {
    v10 = v3[28];
    v11 = sub_2676C8BFC();
    v3[37] = v11;
    OUTLINED_FUNCTION_2_6(v11);
    v13 = *(v12 + 8);
    v3[38] = v13;
    v3[39] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v10);
    v9 = sub_267657934;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_267657934()
{
  v1 = v0[24];
  sub_2675F95E4(v0[8] + *(v0[31] + 28), v1, &qword_2801CBFE8, &unk_2676CD9E0);
  v2 = sub_2676C8C8C();
  v3 = OUTLINED_FUNCTION_17_15(v1);
  v4 = v0[24];
  if (v3 == 1)
  {
    sub_2675EB7EC(v0[24], &qword_2801CBFE8, &unk_2676CD9E0);
    v5 = 0;
  }

  else
  {
    v5 = sub_267626550();
    OUTLINED_FUNCTION_14_2(v2);
    (*(v6 + 8))(v4, v2);
  }

  v0[40] = v5;
  v7 = v0[32];
  v8 = v0[23];
  type metadata accessor for ReadMailCATsSimple();
  sub_2676CB47C();
  v9 = 0;
  v0[41] = sub_2676CB42C();
  if ((v7 & 0x40) == 0)
  {
    v9 = v0[33];
  }

  v0[42] = v9;
  v10 = v0[26];
  v11 = v0[27];
  sub_2675F95E4(v0[8], v11, &qword_2801CC3D8, &unk_2676CEC00);
  v12 = (v11 + *(v10 + 48));
  v14 = v0[38];
  v13 = v0[39];
  v15 = v0[37];
  v16 = v0[35];
  v17 = v0[27];
  v18 = v0[22];
  if (v12[1])
  {
    v19 = *v12;

    sub_2676CBFEC();

    sub_2676CB3FC();
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    v14(v17, v15);
  }

  else
  {

    v14(v17, v15);
    sub_2676CB3FC();
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  }

  v28 = v0[35];
  v29 = v0[32];
  v30 = swift_task_alloc();
  v0[43] = v30;
  *v30 = v0;
  v30[1] = sub_267657BD0;
  v33 = v0[22];

  return sub_267653F00();
}

uint64_t sub_267657BD0()
{
  OUTLINED_FUNCTION_9_3();
  v3 = v2[43];
  v4 = v2[42];
  v5 = v2[41];
  v6 = v2[35];
  v7 = v2[22];
  v8 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v9 = v8;
  *(v11 + 352) = v10;
  *(v11 + 360) = v0;

  sub_2675EB7EC(v7, &qword_2801CBFD0, &qword_2676CDEA0);

  if (v0)
  {
    v12 = sub_26765852C;
  }

  else
  {
    v12 = sub_267657D6C;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

void sub_267657D6C()
{
  v1 = [*(v0 + 352) dialog];
  sub_2675E16F4();
  v2 = sub_2676CC0FC();

  v3 = sub_267630B8C(v2);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      v43 = *(v0 + 320);
      v42 = *(v0 + 248);
      v7 = *(v0 + 160);
      v9 = *(v0 + 128);
      v8 = *(v0 + 136);
      v11 = *(v0 + 112);
      v10 = *(v0 + 120);
      v12 = *(v0 + 104);
      v13 = *(v0 + 88);
      v38 = *(v0 + 96);
      v39 = *(v0 + 80);
      v14 = *(v0 + 64);
      v40 = *(v0 + 72);
      v41 = *(v0 + 384);

      sub_2676C999C();
      (*(v10 + 16))(v9, v8, v11);
      sub_2676C9D2C();
      sub_2676C9D6C();
      sub_26762D4C8(v12);
      sub_2676C9D3C();
      sub_2676C9D7C();
      sub_2676C9DBC();
      sub_2676C9DAC();
      sub_2676C9B3C();
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
      sub_2676C9D8C();
      sub_2676C9D9C();
      sub_2676C90EC();
      sub_2676C90DC();
      (*(v39 + 8))(v13, v40);
      sub_2676C9D5C();
      sub_2676587E0(v7, v41, v14);
      (*(v10 + 8))(v8, v11);
      v19 = *(v14 + v42[5]);
      sub_2675E5D38(v14 + v42[8], v0 + 16);
      v20 = *(v14 + v42[9]);
      if (v43)
      {
        v21 = *(v0 + 168);

        sub_2676CB34C();

        v22 = sub_2676CB3FC();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v22);
        v24 = *(v0 + 168);
        if (EnumTagSinglePayload == 1)
        {
          sub_2675EB7EC(*(v0 + 168), &qword_2801CBFD0, &qword_2676CDEA0);
        }

        else
        {
          v25 = *(v0 + 168);
          sub_2676CB3EC();
          OUTLINED_FUNCTION_14_2(v22);
          (*(v26 + 8))(v24, v22);
        }
      }

      v27 = *(v0 + 256);
      v28 = *(v0 + 64);
      v29 = OUTLINED_FUNCTION_14_14();
      sub_267658A38(v29, v30);
      *(v0 + 368) = v31;

      v32 = swift_task_alloc();
      *(v0 + 376) = v32;
      *v32 = v0;
      v32[1] = sub_267658188;
      v33 = *(v0 + 352);
      v34 = *(v0 + 160);
      v35 = *(v0 + 56);
      OUTLINED_FUNCTION_5_8();

      __asm { BR              X8 }
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D5FE0E0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v5 setSpokenOnly_];
    [v6 setSpokenOnlyDefined_];
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_267658188()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = v1;
  v3 = *(v1 + 376);
  v4 = *(v1 + 368);
  v5 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));

  return MEMORY[0x2822009F8](sub_267658298, 0, 0);
}

uint64_t sub_267658298()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v12 = *(v0 + 216);
  v13 = *(v0 + 200);
  v14 = *(v0 + 192);
  v15 = *(v0 + 184);
  v16 = *(v0 + 176);
  v7 = *(v0 + 160);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v17 = *(v0 + 168);
  v18 = *(v0 + 136);
  v19 = *(v0 + 128);
  v20 = *(v0 + 104);
  v21 = *(v0 + 96);
  v22 = *(v0 + 88);

  (*(v8 + 8))(v7, v9);

  OUTLINED_FUNCTION_15_0();

  return v10();
}

void sub_26765840C()
{
  v1 = v0[33];
  v2 = v0[28];

  v3 = sub_2676C8BFC();
  OUTLINED_FUNCTION_2_6(v3);
  (*(v4 + 8))(v2);
  v5 = v0[36];
  OUTLINED_FUNCTION_2_23();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_5_8();

  __asm { BRAA            X1, X16 }
}

void sub_26765852C()
{
  v1 = v0[40];
  v2 = v0[35];
  v3 = v0[33];

  v4 = v0[45];
  OUTLINED_FUNCTION_2_23();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_5_8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267658630(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_267658650, 0, 0);
}

uint64_t sub_267658650()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[3];
  v2 = (*(v1 + *(type metadata accessor for ReadSubjectLine() + 24)) & 1) == 0;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_267658700;
  v4 = v0[2];
  v5 = v0[3];

  return sub_267657234(v4, v2);
}

uint64_t sub_267658700()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  OUTLINED_FUNCTION_15_0();

  return v5();
}

uint64_t sub_2676587E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2676CAF8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC430, &unk_2676D0440);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v22 - v17;
  sub_2676C9DAC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v19);
  sub_2676CA3AC();
  sub_2676299B8();
  (*(v11 + 8))(v14, v10);
  v20 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v20);
  sub_2676C9D8C();
  result = type metadata accessor for ReadSubjectLine();
  if ((*(a3 + *(result + 24)) & 0x80) != 0)
  {
    sub_2676CAF6C();
    return sub_2676C9D3C();
  }

  return result;
}

uint64_t sub_267658A38(uint64_t a1, uint64_t a2)
{
  v5 = sub_2676C902C();
  v6 = OUTLINED_FUNCTION_3(v5);
  v79 = v7;
  v80 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_5();
  v78 = v10;
  v11 = sub_2676C904C();
  v12 = OUTLINED_FUNCTION_3(v11);
  v76 = v13;
  v77 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_5();
  v75 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  v18 = OUTLINED_FUNCTION_4_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4();
  v81 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v72 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC210, &qword_2676CEDC0);
  v26 = OUTLINED_FUNCTION_4_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4();
  v74 = v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v72 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD188, &unk_2676D19D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2676CDE30;
  SubjectLine = type metadata accessor for ReadSubjectLine();
  v35 = (v2 + *(SubjectLine + 44));
  v36 = v35[1];
  *(inited + 32) = *v35;
  *(inited + 40) = v36;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v37 = *(SubjectLine + 48);
  v82 = v2;
  sub_2675F95E4(v2 + v37, v24, &qword_2801CC380, &unk_2676CEF40);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
  OUTLINED_FUNCTION_9_15(v24);
  if (v57)
  {

    v39 = &qword_2801CC380;
    v40 = &unk_2676CEF40;
    v41 = v24;
LABEL_6:
    sub_2675EB7EC(v41, v39, v40);
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    goto LABEL_8;
  }

  v42 = *(v38 + 48);
  sub_2675F2D78(v24, v32);
  v43 = sub_2676C90CC();
  v44 = OUTLINED_FUNCTION_17_15(v32);

  if (v44 == 1)
  {
    sub_2675EB7EC(&v24[v42], &qword_2801CC210, &qword_2676CEDC0);
    v41 = v32;
    v39 = &qword_2801CC210;
    v40 = &qword_2676CEDC0;
    goto LABEL_6;
  }

  v45 = v75;
  sub_2676C903C();
  v46 = v78;
  sub_2676C901C();
  v47 = v42;
  v73 = sub_2676C90BC();
  v49 = v48;
  (*(v79 + 8))(v46, v80);
  (*(v76 + 8))(v45, v77);
  OUTLINED_FUNCTION_14_2(v43);
  (*(v50 + 8))(v32, v43);
  sub_2675EB7EC(&v24[v47], &qword_2801CC210, &qword_2676CEDC0);
  *(inited + 64) = v73;
  *(inited + 72) = v49;
LABEL_8:
  v51 = v81;
  sub_2675F95E4(v82 + v37, v81, &qword_2801CC380, &unk_2676CEF40);
  OUTLINED_FUNCTION_9_15(v51);
  if (v57)
  {
    v52 = &qword_2801CC380;
    v53 = &unk_2676CEF40;
    v54 = v51;
LABEL_14:
    sub_2675EB7EC(v54, v52, v53);
    *(inited + 80) = 0;
    *(inited + 88) = 0;
    goto LABEL_15;
  }

  v55 = v74;
  sub_2675F2D78(v51 + *(v38 + 48), v74);
  v56 = sub_2676C90CC();
  OUTLINED_FUNCTION_9_15(v55);
  if (v57)
  {
    sub_2675EB7EC(v51, &qword_2801CC210, &qword_2676CEDC0);
    v54 = OUTLINED_FUNCTION_14_14();
    v53 = &qword_2676CEDC0;
    goto LABEL_14;
  }

  v58 = v75;
  sub_2676C903C();
  v59 = v78;
  sub_2676C901C();
  v60 = sub_2676C90BC();
  v62 = v61;
  (*(v79 + 8))(v59, v80);
  (*(v76 + 8))(v58, v77);
  OUTLINED_FUNCTION_14_2(v56);
  v64 = *(v63 + 8);
  v65 = OUTLINED_FUNCTION_14_14();
  v66(v65);
  sub_2675EB7EC(v51, &qword_2801CC210, &qword_2676CEDC0);
  *(inited + 80) = v60;
  *(inited + 88) = v62;
LABEL_15:
  v67 = 0;
  while (1)
  {
    v68 = v67 + 16;
    if (v67 == 64)
    {
      break;
    }

    v69 = *(inited + v67 + 40);
    v67 += 16;
    if (v69)
    {
      v70 = *(inited + v68 + 16);

      break;
    }
  }

  return OUTLINED_FUNCTION_11_16();
}

uint64_t sub_267658F84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267605CFC;

  return sub_26765719C();
}

uint64_t sub_26765901C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26761F624;

  return sub_267658630(a1);
}

uint64_t sub_2676590B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5BD28] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26761F624;

  return MEMORY[0x2821BB1F8](a1, a2, a3);
}

uint64_t sub_267659168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5BD18] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26761F624;

  return MEMORY[0x2821BB1E8](a1, a2, a3);
}

uint64_t sub_26765921C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5BD20] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26761F624;

  return MEMORY[0x2821BB1F0](a1, a2, a3);
}

uint64_t sub_2676592DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2675E1B38(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_26765930C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2675E1B10(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_26765933C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2675E1B4C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_267659374@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2675E1B30(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2676593A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2675E1B28(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2676593F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2675E1B40(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for ReadSubjectLine()
{
  result = qword_2801CD150;
  if (!qword_2801CD150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2676594C0()
{
  sub_267654DA4();
  if (v0 <= 0x3F)
  {
    sub_267659644(319, &qword_2801CD160, &qword_2801CC3D8, &unk_2676CEC00, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2675F9EB0();
      if (v2 <= 0x3F)
      {
        sub_2675F9F5C(319, &qword_2801CC420);
        if (v3 <= 0x3F)
        {
          sub_2675F9F5C(319, &qword_2801CCC70);
          if (v4 <= 0x3F)
          {
            sub_2675FEE64();
            if (v5 <= 0x3F)
            {
              sub_267659644(319, &qword_2801CC3B0, &qword_2801CC1F8, &qword_2676CEBA0, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_267659644(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2676596B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2675E1AB8();
  *a1 = result;
  return result;
}

unint64_t sub_2676596E4()
{
  result = qword_2801CD168;
  if (!qword_2801CD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD168);
  }

  return result;
}

unint64_t sub_26765973C()
{
  result = qword_2801CD170;
  if (!qword_2801CD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD170);
  }

  return result;
}

unint64_t sub_267659794()
{
  result = qword_2801CD178;
  if (!qword_2801CD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD178);
  }

  return result;
}

unint64_t sub_2676597EC()
{
  result = qword_2801CD180;
  if (!qword_2801CD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD180);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_23()
{
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[20];
  v11 = v0[21];
  v13 = v0[17];
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[12];
  v17 = v0[11];
}

uint64_t OUTLINED_FUNCTION_17_15(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t get_enum_tag_for_layout_string_16SiriMailInternal24RecipientResolutionErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2676598DC()
{
  v41 = sub_2676CBECC();
  v0 = OUTLINED_FUNCTION_3(v41);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_7();
  v37 = v5 - v6;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v7);
  v9 = v34 - v8;
  if (qword_2801CBAA0 != -1)
  {
LABEL_24:
    OUTLINED_FUNCTION_0();
  }

  v10 = sub_2676CBE4C();
  __swift_project_value_buffer(v10, qword_2801CDC90);
  v11 = sub_2676CBE2C();
  v12 = sub_2676CC23C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2675D4000, v11, v12, "#ReferenceResolution calling SRR for resolving onscreen Mail app entity", v13, 2u);
    MEMORY[0x26D5FEA80](v13, -1, -1);
  }

  v14 = sub_2676CA37C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_2676CA36C();
  v17 = MEMORY[0x26D5FC240]();

  if (v17)
  {
    v34[1] = v17;
    v18 = sub_267659C68();
    v19 = 0;
    v20 = *(v18 + 2);
    v39 = v2 + 16;
    v40 = v20;
    v36 = (v2 + 32);
    v38 = MEMORY[0x277D84F90];
    while (1)
    {
      while (1)
      {
        if (v40 == v19)
        {

          v32 = sub_267606828(v38);

          return v32;
        }

        if (v19 >= *(v18 + 2))
        {
          __break(1u);
          goto LABEL_24;
        }

        v21 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        v22 = *(v2 + 72);
        (*(v2 + 16))(v9, &v18[v21 + v22 * v19], v41);
        if (sub_2676CBE9C() != 0xD000000000000014 || 0x80000002676D6080 != v23)
        {
          break;
        }

LABEL_15:
        v26 = *v36;
        (*v36)(v37, v9, v41);
        v27 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v27;
        v35 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_3_19();
          v27 = v42;
        }

        v30 = *(v27 + 16);
        v29 = *(v27 + 24);
        v31 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          v38 = v30 + 1;
          sub_2676C28F8(v29 > 1, v30 + 1, 1);
          v31 = v38;
          v27 = v42;
        }

        ++v19;
        *(v27 + 16) = v31;
        v38 = v27;
        v35(v27 + v21 + v30 * v22, v37, v41);
      }

      v25 = sub_2676CC59C();

      if (v25)
      {
        goto LABEL_15;
      }

      (*(v2 + 8))(v9, v41);
      ++v19;
    }
  }

  return MEMORY[0x277D84F90];
}

char *sub_267659C68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD190, "Ԭ");
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v199 = &v179 - v2;
  v200 = sub_2676CBECC();
  v191 = *(v200 - 8);
  v3 = *(v191 + 64);
  v4 = MEMORY[0x28223BE20](v200);
  v190 = (&v179 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v194 = &v179 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v187 = &v179 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v192 = &v179 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v183 = &v179 - v13;
  MEMORY[0x28223BE20](v12);
  v198 = &v179 - v14;
  v201 = sub_2676CBE6C();
  v193 = *(v201 - 8);
  v15 = *(v193 + 64);
  v16 = MEMORY[0x28223BE20](v201);
  *&v189 = &v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v184 = &v179 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v202 = &v179 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v197 = &v179 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v195 = &v179 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v179 - v26;
  v28 = sub_2676CBEDC();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v181 = &v179 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v179 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v179 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD198, "Ԭ");
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = (&v179 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v40);
  v44 = &v179 - v43;
  v45 = sub_2676CBE8C();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();

  sub_2676CBE7C();
  sub_2676CBDCC();

  v188 = v44;
  sub_267607B28(v44, v42, &qword_2801CD198, "Ԭ");
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v42;
    if (qword_2801CBAA0 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_81;
  }

  (*(v29 + 32))(v37, v42, v28);
  v59 = *(v29 + 16);
  v182 = v37;
  v59(v35, v37, v28);
  v60 = (*(v29 + 88))(v35, v28);
  v61 = *MEMORY[0x277D5FEC0];
  v62 = v35;
  v185 = v29;
  v186 = v28;
  if (v60 == v61)
  {
    (*(v29 + 96))(v35, v28);
    v63 = v193;
    v64 = v201;
    (*(v193 + 32))(v27, v35, v201);
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v65 = sub_2676CBE4C();
    __swift_project_value_buffer(v65, qword_2801CDC90);
    v66 = *(v63 + 16);
    v67 = v195;
    v202 = v27;
    v66(v195, v27, v64);
    v68 = sub_2676CBE2C();
    v69 = sub_2676CC23C();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = v63;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v204[0] = v72;
      *v71 = 136315138;
      sub_26765BD00(&qword_2801CD1A8, MEMORY[0x277D5FE08]);
      v73 = sub_2676CC56C();
      v75 = v74;
      v76 = *(v70 + 8);
      v76(v67, v201);
      v77 = sub_2676B0B84(v73, v75, v204);
      v64 = v201;

      *(v71 + 4) = v77;
      _os_log_impl(&dword_2675D4000, v68, v69, "ReferenceResolution# Found a candidate %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x26D5FEA80](v72, -1, -1);
      MEMORY[0x26D5FEA80](v71, -1, -1);
    }

    else
    {

      v76 = *(v63 + 8);
      v76(v67, v64);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC548, &qword_2676CF2B0);
    v114 = *(v191 + 72);
    v115 = (*(v191 + 80) + 32) & ~*(v191 + 80);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_2676CDE20;
    v117 = v202;
    sub_2676CBE5C();
    v76(v117, v64);
    v78 = v116;
    (*(v185 + 8))(v182, v186);
LABEL_33:
    sub_2675E35CC(v188, &qword_2801CD198, "Ԭ");
    return v78;
  }

  v79 = v201;
  if (v60 == *MEMORY[0x277D5FED0])
  {
    (*(v185 + 96))(v35, v186);
    v80 = *v35;
    v81 = v200;
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v82 = sub_2676CBE4C();
    v197 = __swift_project_value_buffer(v82, qword_2801CDC90);
    v83 = sub_2676CBE2C();
    v84 = sub_2676CC23C();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_2675D4000, v83, v84, "ReferenceResolution# Found ambiguous entities", v85, 2u);
      MEMORY[0x26D5FEA80](v85, -1, -1);
    }

    v48 = 0;
    v198 = *(v80 + 16);
    v86 = v193;
    v196 = v193 + 16;
    v190 = (v191 + 8);
    v180 = (v191 + 32);
    v181 = MEMORY[0x277D84F90];
    *&v87 = 136315138;
    v189 = v87;
    v195 = (v193 + 8);
    v194 = ((v193 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v88 = v184;
    while (1)
    {
      if (v198 == v48)
      {

        (*(v185 + 8))(v182, v186);
        sub_2675E35CC(v188, &qword_2801CD198, "Ԭ");
        return v181;
      }

      if (v48 >= *(v80 + 16))
      {
        break;
      }

      v89 = v80;
      v90 = *(v86 + 16);
      v91 = v202;
      v90(v202, v80 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v48, v79);
      v90(v88, v91, v79);
      v92 = v88;
      v93 = sub_2676CBE2C();
      v94 = sub_2676CC23C();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v204[0] = v96;
        *v95 = v189;
        v97 = v192;
        sub_2676CBE5C();
        v98 = sub_2676CBE9C();
        v100 = v99;
        (*v190)(v97, v200);
        v101 = *v195;
        (*v195)(v92, v201);
        v102 = sub_2676B0B84(v98, v100, v204);

        *(v95 + 4) = v102;
        _os_log_impl(&dword_2675D4000, v93, v94, "#ReferenceResolution entity appBundleId %s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v96);
        v103 = v96;
        v86 = v193;
        MEMORY[0x26D5FEA80](v103, -1, -1);
        v104 = v95;
        v81 = v200;
        v79 = v201;
        MEMORY[0x26D5FEA80](v104, -1, -1);
      }

      else
      {

        v101 = *v195;
        (*v195)(v92, v79);
      }

      v88 = v92;
      v105 = v199;
      v106 = v202;
      sub_2676CBE5C();
      __swift_storeEnumTagSinglePayload(v105, 0, 1, v81);
      v101(v106, v79);
      v80 = v89;
      if (__swift_getEnumTagSinglePayload(v105, 1, v81) == 1)
      {
        sub_2675E35CC(v105, &qword_2801CD190, "Ԭ");
        ++v48;
      }

      else
      {
        v107 = *v180;
        v108 = v183;
        (*v180)(v183, v105, v81);
        v107(v187, v108, v81);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = *(v181 + 2);
          sub_2676070D4();
          v181 = v112;
        }

        v109 = *(v181 + 2);
        if (v109 >= *(v181 + 3) >> 1)
        {
          sub_2676070D4();
          v181 = v113;
        }

        ++v48;
        v110 = v181;
        *(v181 + 2) = v109 + 1;
        v107(&v110[((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v109], v187, v81);
        v86 = v193;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    swift_once();
LABEL_3:
    v49 = sub_2676CBE4C();
    __swift_project_value_buffer(v49, qword_2801CDC90);
    v50 = v48;
    v51 = sub_2676CBE2C();
    v52 = sub_2676CC24C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v203 = v48;
      v204[0] = v54;
      *v53 = 136315138;
      v55 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
      v56 = sub_2676CBFBC();
      v58 = sub_2676B0B84(v56, v57, v204);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_2675D4000, v51, v52, "ReferenceResolution# Received a failure: %s -> nil", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x26D5FEA80](v54, -1, -1);
      MEMORY[0x26D5FEA80](v53, -1, -1);
    }

    else
    {
    }

    goto LABEL_11;
  }

  if (v60 == *MEMORY[0x277D5FEC8])
  {
    v118 = v185;
    (*(v185 + 96))(v35, v186);
    v119 = *v35;
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v120 = sub_2676CBE4C();
    __swift_project_value_buffer(v120, qword_2801CDC90);

    v121 = sub_2676CBE2C();
    v122 = sub_2676CC23C();
    v123 = os_log_type_enabled(v121, v122);
    v124 = v182;
    if (v123)
    {
      v125 = swift_slowAlloc();
      *v125 = 134217984;
      *(v125 + 4) = *(v119 + 2);

      _os_log_impl(&dword_2675D4000, v121, v122, "ReferenceResolution# Found %ld candidates", v125, 0xCu);
      MEMORY[0x26D5FEA80](v125, -1, -1);
    }

    else
    {
    }

    v149 = *(v119 + 2);
    if (v149)
    {
      v202 = *(v193 + 16);
      v150 = *(v193 + 80);
      v199 = v119;
      v151 = &v119[(v150 + 32) & ~v150];
      v152 = *(v193 + 72);
      v153 = (v193 + 8);
      v154 = MEMORY[0x277D84F90];
      do
      {
        v155 = v197;
        v156 = v201;
        (v202)(v197, v151, v201);
        sub_2676CBE5C();
        (*v153)(v155, v156);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v159 = *(v154 + 16);
          sub_2676070D4();
          v154 = v160;
        }

        v157 = *(v154 + 16);
        v158 = v154;
        if (v157 >= *(v154 + 24) >> 1)
        {
          sub_2676070D4();
          v158 = v161;
        }

        v154 = v158;
        *(v158 + 16) = v157 + 1;
        (*(v191 + 32))(v158 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v157, v198, v200);
        v151 += v152;
        --v149;
      }

      while (v149);

      v118 = v185;
      v124 = v182;
      v78 = v154;
    }

    else
    {

      v78 = MEMORY[0x277D84F90];
    }

    (*(v118 + 8))(v124, v186);
    goto LABEL_33;
  }

  v127 = v186;
  if (v60 == *MEMORY[0x277D5FED8])
  {
    (*(v185 + 96))(v35, v186);
    v48 = *v35;
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v128 = sub_2676CBE4C();
    __swift_project_value_buffer(v128, qword_2801CDC90);
    v129 = sub_2676CBE2C();
    v130 = sub_2676CC23C();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_2675D4000, v129, v130, "ReferenceResolution# Found plural ambiguous entities", v131, 2u);
      MEMORY[0x26D5FEA80](v131, -1, -1);
    }

    v132 = 0;
    v133 = *(v48 + 16);
    v134 = v193 + 16;
    v202 = (v193 + 8);
    v135 = (v191 + 32);
    v78 = MEMORY[0x277D84F90];
    while (v133 != v132)
    {
      if (v132 >= *(v48 + 16))
      {
        goto LABEL_80;
      }

      v136 = *(v48 + 8 * v132++ + 32);
      if (*(v136 + 16))
      {
        v137 = v78;
        v138 = v193;
        v139 = v189;
        v140 = v201;
        v141 = v134;
        (*(v193 + 16))(v189, v136 + ((*(v138 + 80) + 32) & ~*(v138 + 80)), v201);
        v142 = v190;
        sub_2676CBE5C();
        (*(v138 + 8))(v139, v140);
        v143 = *v135;
        (*v135)(v194, v142, v200);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = *(v137 + 16);
          sub_2676070D4();
          v137 = v147;
        }

        v144 = *(v137 + 16);
        v145 = v137;
        if (v144 >= *(v137 + 24) >> 1)
        {
          sub_2676070D4();
          v145 = v148;
        }

        *(v145 + 16) = v144 + 1;
        v78 = v145;
        v143((v145 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v144), v194, v200);
        v127 = v186;
        v134 = v141;
      }
    }

    (*(v185 + 8))(v182, v127);
    goto LABEL_33;
  }

  if (v60 != *MEMORY[0x277D5FEE0])
  {
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v166 = sub_2676CBE4C();
    __swift_project_value_buffer(v166, qword_2801CDC90);
    v167 = v181;
    v168 = v182;
    v59(v181, v182, v127);
    v169 = sub_2676CBE2C();
    v170 = sub_2676CC24C();
    if (os_log_type_enabled(v169, v170))
    {
      v171 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v204[0] = v172;
      *v171 = 136315138;
      sub_26765BD00(&qword_2801CD1A0, MEMORY[0x277D5FEE8]);
      v173 = sub_2676CC56C();
      v174 = v167;
      v176 = v175;
      v202 = v35;
      v177 = *(v185 + 8);
      v177(v174, v127);
      v178 = sub_2676B0B84(v173, v176, v204);

      *(v171 + 4) = v178;
      _os_log_impl(&dword_2675D4000, v169, v170, "ReferenceResolution# Received unknown result type %s", v171, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v172);
      MEMORY[0x26D5FEA80](v172, -1, -1);
      MEMORY[0x26D5FEA80](v171, -1, -1);

      v177(v182, v127);
      v62 = v202;
    }

    else
    {

      v177 = *(v185 + 8);
      v177(v167, v127);
      v177(v168, v127);
    }

    sub_2675E35CC(v188, &qword_2801CD198, "Ԭ");
    v177(v62, v127);
    return MEMORY[0x277D84F90];
  }

  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v162 = sub_2676CBE4C();
  __swift_project_value_buffer(v162, qword_2801CDC90);
  v163 = sub_2676CBE2C();
  v164 = sub_2676CC23C();
  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    *v165 = 0;
    _os_log_impl(&dword_2675D4000, v163, v164, "ReferenceResolution# No matches found", v165, 2u);
    MEMORY[0x26D5FEA80](v165, -1, -1);
  }

  (*(v185 + 8))(v182, v127);
LABEL_11:
  sub_2675E35CC(v188, &qword_2801CD198, "Ԭ");
  return MEMORY[0x277D84F90];
}

uint64_t sub_26765B2C8()
{
  v0 = sub_2676CBECC();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_7();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v65 = &v61 - v10;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v11);
  v67 = &v61 - v12;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD190, "Ԭ");
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_1_7();
  v64 = v18 - v19;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v61 - v21;
  if (qword_2801CBAA0 != -1)
  {
LABEL_38:
    OUTLINED_FUNCTION_0();
  }

  v23 = sub_2676CBE4C();
  __swift_project_value_buffer(v23, qword_2801CDC90);
  v24 = sub_2676CBE2C();
  v25 = sub_2676CC23C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2675D4000, v24, v25, "#ReferenceResolution calling SRR for resolving FormattedString entity", v26, 2u);
    MEMORY[0x26D5FEA80](v26, -1, -1);
  }

  v27 = sub_2676CA74C();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_2676CA73C();
  v30 = MEMORY[0x26D5FC240]();

  if (v30)
  {
    v62 = v22;
    v63 = v8;
    v61 = v30;
    v31 = sub_267659C68();
    v22 = 0;
    v32 = *(v31 + 2);
    v70 = "com.apple.intelligenceflowd";
    v71 = v32;
    v72 = v3 + 8;
    v73 = v3 + 16;
    v68 = (v3 + 32);
    v69 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v71 == v22)
      {

        v8 = 0;
        v15 = v69;
        v47 = *(v69 + 2);
        v22 = v62;
        v48 = v63;
        for (i = v65; ; v52(i, v0))
        {
          if (v47 == v8)
          {

            v53 = 1;
            goto LABEL_28;
          }

          if (v8 >= *(v15 + 2))
          {
            goto LABEL_37;
          }

          (*(v3 + 16))(i, &v15[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8], v0);
          sub_2676CBEBC();
          v50 = sub_2676CA93C();

          v51 = *(v50 + 16);

          if (v51)
          {
            break;
          }

          ++v8;
          OUTLINED_FUNCTION_4_20();
        }

        (*v68)(v22, i, v0);
        v53 = 0;
LABEL_28:
        __swift_storeEnumTagSinglePayload(v22, v53, 1, v0);
        v54 = v64;
        sub_267607B28(v22, v64, &qword_2801CD190, "Ԭ");
        if (__swift_getEnumTagSinglePayload(v54, 1, v0) == 1)
        {
          sub_2675E35CC(v22, &qword_2801CD190, "Ԭ");

          return 0;
        }

        (*v68)(v48, v54, v0);
        sub_2676CBEBC();
        sub_2676CA6EC();
        OUTLINED_FUNCTION_6_17();

        if (v74)
        {
          v55 = sub_2676CA6DC();
          v57 = v56;

          OUTLINED_FUNCTION_4_20();
          v58(v48, v0);
          sub_2675E35CC(v22, &qword_2801CD190, "Ԭ");
          if (v57)
          {
            return v55;
          }
        }

        else
        {

          OUTLINED_FUNCTION_4_20();
          v59(v48, v0);
          sub_2675E35CC(v22, &qword_2801CD190, "Ԭ");
        }

        return 0;
      }

      if (v22 >= *(v31 + 2))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v33 = *(v3 + 72);
      v34 = v0;
      (*(v3 + 16))(v15, &v31[v8 + v33 * v22], v0);
      if (sub_2676CBE9C() == 0xD00000000000001BLL && 0x80000002676D7760 == v35)
      {
        break;
      }

      v37 = sub_2676CC59C();

      if (v37 & 1) != 0 || (sub_2676CBE9C(), v38 = sub_2676CC05C(), , (v38))
      {
LABEL_16:
        v40 = *v68;
        (*v68)(v67, v15, v34);
        v41 = v69;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = v41;
        v66 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_3_19();
          v41 = v74;
        }

        v44 = *(v41 + 2);
        v43 = *(v41 + 3);
        v45 = (v44 + 1);
        if (v44 >= v43 >> 1)
        {
          v69 = (v44 + 1);
          sub_2676C28F8(v43 > 1, v44 + 1, 1);
          v45 = v69;
          v41 = v74;
        }

        ++v22;
        *(v41 + 2) = v45;
        v69 = v41;
        v46 = &v41[v8 + v44 * v33];
        v0 = v34;
        v66(v46, v67, v34);
      }

      else
      {
        OUTLINED_FUNCTION_4_20();
        v0 = v34;
        v39(v15, v34);
        ++v22;
      }
    }

    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_26765B964()
{
  v0 = sub_2676CBECC();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD190, "Ԭ");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_1_7();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v29 - v14;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v16 = sub_2676CBE4C();
  __swift_project_value_buffer(v16, qword_2801CDC90);
  v17 = sub_2676CBE2C();
  v18 = sub_2676CC23C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2675D4000, v17, v18, "#ReferenceResolution calling SRR for resolving SiriContentTopic entity", v19, 2u);
    MEMORY[0x26D5FEA80](v19, -1, -1);
  }

  v20 = sub_2676CA35C();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_2676CA34C();
  v23 = MEMORY[0x26D5FC240]();

  if (!v23)
  {
    return 0;
  }

  v24 = sub_267659C68();
  sub_267698FEC(v24);

  sub_267607B28(v15, v12, &qword_2801CD190, "Ԭ");
  if (__swift_getEnumTagSinglePayload(v12, 1, v0) == 1)
  {
    sub_2675E35CC(v15, &qword_2801CD190, "Ԭ");

    return 0;
  }

  (*(v3 + 32))(v7, v12, v0);
  sub_2676CBEBC();
  sub_2676CA32C();
  OUTLINED_FUNCTION_6_17();

  if (!v29[1])
  {

    (*(v3 + 8))(v7, v0);
    sub_2675E35CC(v15, &qword_2801CD190, "Ԭ");
    return 0;
  }

  v25 = sub_2676CA31C();
  v27 = v26;

  (*(v3 + 8))(v7, v0);
  sub_2675E35CC(v15, &qword_2801CD190, "Ԭ");
  if (!v27)
  {
    return 0;
  }

  return v25;
}

uint64_t sub_26765BD00(unint64_t *a1, void (*a2)(uint64_t))
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

size_t OUTLINED_FUNCTION_3_19()
{
  v2 = *(v0 + 16) + 1;

  return sub_2676C28F8(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_6_17()
{

  return sub_2676CA5AC();
}

uint64_t sub_26765BDBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC748, &unk_2676CF7E0);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  sub_2675F95E4(a1, &v8 - v6, &qword_2801CC748, &unk_2676CF7E0);
  return sub_2676CBA3C();
}

void (*sub_26765BE74(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  v2[4] = v3;
  OUTLINED_FUNCTION_3(v3);
  v5 = v4;
  v2[5] = v4;
  v2[6] = __swift_coroFrameAllocStub(*(v6 + 64));
  (*(v5 + 16))();
  v2[7] = sub_2676C978C();
  return sub_26765BF6C;
}

void sub_26765BF6C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_26765BFFC(void (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  OUTLINED_FUNCTION_3(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  (*(v5 + 16))(&v12 - v9, v1 + OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan__replyMessageTask, v3);
  a1(v3);
  return (*(v5 + 8))(v10, v3);
}

void sub_26765C0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v21;
  a20 = v22;
  v275 = v20;
  v24 = v23;
  v278[0] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  v27 = OUTLINED_FUNCTION_3(v26);
  v269 = v28;
  v270 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v32);
  v33 = sub_2676C9EAC();
  v34 = OUTLINED_FUNCTION_3(v33);
  v273 = v35;
  v274 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_2();
  v272 = v39 - v38;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_3(v259);
  v258 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v44);
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  OUTLINED_FUNCTION_3(v254);
  v253 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v51 = OUTLINED_FUNCTION_4_1(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD290, &qword_2676D24C0);
  OUTLINED_FUNCTION_4_1(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v62);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD298, &unk_2676D1FC0);
  OUTLINED_FUNCTION_3(v264);
  v261 = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC620, &unk_2676D0C30);
  OUTLINED_FUNCTION_4_1(v68);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v72);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  v73 = OUTLINED_FUNCTION_3(v266);
  v263 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v77);
  v79 = &v247 - v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC640, &unk_2676CF550);
  OUTLINED_FUNCTION_4_1(v80);
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v83);
  v85 = &v247 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC648, &qword_2676CF990);
  v87 = OUTLINED_FUNCTION_3(v86);
  v267 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v91);
  v93 = &v247 - v92;
  v94 = sub_2676C9EBC();
  v95 = OUTLINED_FUNCTION_3(v94);
  v279 = v96;
  KeyPath = v95;
  v98 = *(v97 + 64);
  v99 = MEMORY[0x28223BE20](v95);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  v101 = MEMORY[0x28223BE20](v100);
  MEMORY[0x28223BE20](v101);
  v103 = &v247 - v102;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v260 = v79;
  v271 = v93;
  v276 = v86;
  v104 = sub_2676CBE4C();
  v277 = __swift_project_value_buffer(v104, qword_2801CDC90);
  v105 = sub_2676CBE2C();
  v106 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v106))
  {
    v107 = OUTLINED_FUNCTION_17_3();
    *v107 = 0;
    _os_log_impl(&dword_2675D4000, v105, v106, "#ReplyMailPlan accept(input:)", v107, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  sub_2676C9E5C();
  v109 = v279;
  v108 = KeyPath;
  v110 = v279 + 88;
  v111 = *(v279 + 88);
  v112 = v111(v103, KeyPath);
  v278[1] = v24;
  v113 = *MEMORY[0x277D5C160];
  v114 = v103;
  v115 = *(v109 + 8);
  v115(v114, v108);
  if (v112 == v113)
  {
    sub_2676C9E5C();
    sub_2676371E0();
    if (v116)
    {
      v117 = sub_2676CA77C();

      sub_267698EA0(v117);
      v118 = KeyPath;

      v119 = OUTLINED_FUNCTION_14_3();
      (v115)(v119);
      v120 = OUTLINED_FUNCTION_26_2();
      v121 = v276;
      if (__swift_getEnumTagSinglePayload(v120, v122, v276) != 1)
      {
        OUTLINED_FUNCTION_60_0(&a17);
        v124 = *(v123 + 32);
        v125 = v271;
        OUTLINED_FUNCTION_14_11();
        v126();
        v127 = v265;
        v249 = *(v118 + 16);
        v249(v265, v125, v121);
        sub_2676CBA6C();
        OUTLINED_FUNCTION_0_20();
        sub_267662E7C(v128, v129);
        OUTLINED_FUNCTION_40_2(&a15);
        v248 = v130;
        sub_2676CA3FC();
        v131 = OUTLINED_FUNCTION_26_2();
        if (__swift_getEnumTagSinglePayload(v131, v132, v266) == 1)
        {
          sub_267662EC4(v85, &qword_2801CC620, &unk_2676D0C30);
          v249(v127, v271, v121);
          sub_2676CBADC();
          sub_267662E7C(&qword_2801CCA48, MEMORY[0x277D5C8A8]);
          OUTLINED_FUNCTION_40_2(&v285);
          sub_2676CA3FC();
          v133 = OUTLINED_FUNCTION_26_2();
          v134 = v264;
          if (__swift_getEnumTagSinglePayload(v133, v135, v264) == 1)
          {
            v136 = OUTLINED_FUNCTION_13_16();
            v137(v136, v276);
            sub_267662EC4(v85, &qword_2801CD290, &qword_2676D24C0);
            goto LABEL_13;
          }

          v196 = *(v261 + 32);
          v197 = OUTLINED_FUNCTION_11_16();
          v198(v197);
          swift_getKeyPath();
          OUTLINED_FUNCTION_1_22();
          sub_267662E7C(v199, v200);
          OUTLINED_FUNCTION_40_2(&v284);
          OUTLINED_FUNCTION_37_7();
          sub_2676CA3EC();

          v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
          v202 = OUTLINED_FUNCTION_26_2();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v202, v203, v201);
          sub_267662EC4(v85, &qword_2801CC428, &unk_2676CEDD0);
          if (EnumTagSinglePayload == 1)
          {
            v205 = v252;
            sub_26761D288();
            swift_getKeyPath();
            OUTLINED_FUNCTION_60_0(&v282);
            v206 = v254;
            sub_2676C97EC();

            OUTLINED_FUNCTION_27_5(&KeyPath);
            v207(v205, v206);
            v208 = v259;
            sub_2676C983C();
            OUTLINED_FUNCTION_27_5(v283);
            v209(v134, v208);
            swift_getKeyPath();
            v210 = sub_26765BE74(v283);
            v211 = sub_2676CA3DC();
            if (__swift_getEnumTagSinglePayload(v212, 1, v201))
            {
              v213 = OUTLINED_FUNCTION_29_9();
              v211(v213);

              v214 = OUTLINED_FUNCTION_30_8();
              v210(v214);
            }

            else
            {
              KeyPath = swift_getKeyPath();
              swift_getKeyPath();
              OUTLINED_FUNCTION_23_8(v278);
              sub_2676CA3EC();

              if (__swift_getEnumTagSinglePayload(v283, 1, v201) == 1)
              {
                sub_267662EC4(v283, &qword_2801CC428, &unk_2676CEDD0);
              }

              else
              {
                swift_getKeyPath();
                sub_2676CA89C();

                OUTLINED_FUNCTION_14_2(v201);
                v233 = *(v232 + 8);
                v234 = OUTLINED_FUNCTION_54_4();
                v235(v234);
              }

              sub_2676CA8AC();
              v236 = OUTLINED_FUNCTION_29_9();
              v211(v236);

              v237 = OUTLINED_FUNCTION_30_8();
              v210(v237);
            }

            v238 = sub_2676CBE2C();
            v239 = sub_2676CC23C();
            v240 = OUTLINED_FUNCTION_5_5(v239);
            v241 = v276;
            v242 = v264;
            if (v240)
            {
              v243 = OUTLINED_FUNCTION_17_3();
              OUTLINED_FUNCTION_9_4(v243);
              OUTLINED_FUNCTION_4_18(&dword_2675D4000, v244, v245, "#ReplyMailPlan accept(input:) processed generic update message task, returning .yes");
              OUTLINED_FUNCTION_4_6();
            }

            sub_2676C974C();
            OUTLINED_FUNCTION_27_5(&a9);
            v246(v262, v242);
            v193 = OUTLINED_FUNCTION_13_16();
            v195 = v241;
          }

          else
          {
            v215 = v277;
            v216 = sub_2676CBE2C();
            v217 = sub_2676CC23C();
            if (OUTLINED_FUNCTION_5_5(v217))
            {
              v218 = OUTLINED_FUNCTION_17_3();
              *v218 = 0;
              _os_log_impl(&dword_2675D4000, v216, v215, "#ReplyMailPlan accept(input:) processed update message task, returning .yes", v218, 2u);
              OUTLINED_FUNCTION_2_5();
            }

            swift_getKeyPath();
            OUTLINED_FUNCTION_51_2(&v281);
            sub_2676CA3EC();

            v219 = v256;
            v220 = OUTLINED_FUNCTION_26_2();
            __swift_storeEnumTagSinglePayload(v220, v221, 1, v201);
            v222 = v251;
            OUTLINED_FUNCTION_29_0();
            sub_2676CA3CC();
            OUTLINED_FUNCTION_40_2(&a11);
            sub_2676C9E5C();
            sub_26765D1FC(v222, v219, v223, v224, v225, v226, v227, v228, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258);
            v115(v219, KeyPath);
            sub_2676C974C();
            OUTLINED_FUNCTION_27_5(&a12);
            v229(v222, v266);
            OUTLINED_FUNCTION_27_5(&a9);
            v230 = OUTLINED_FUNCTION_43_2();
            v231(v230);
            v193 = OUTLINED_FUNCTION_13_16();
            v195 = v276;
          }
        }

        else
        {
          OUTLINED_FUNCTION_23_8(&a12);
          v179 = *(v178 + 32);
          v180 = v260;
          OUTLINED_FUNCTION_14_11();
          v181();
          OUTLINED_FUNCTION_40_2(&a11);
          sub_2676C9E5C();
          sub_26765D1FC(v180, v85, v182, v183, v184, v185, v186, v187, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258);
          v115(v85, KeyPath);
          v188 = sub_2676CBE2C();
          v189 = sub_2676CC23C();
          if (OUTLINED_FUNCTION_5_5(v189))
          {
            v190 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v190);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v191, v192, "#ReplyMailPlan accept(input:) processed reply task, returning .yes");
            OUTLINED_FUNCTION_4_6();
          }

          sub_2676C974C();
          (*(v110 + 8))(v180, v266);
          v193 = OUTLINED_FUNCTION_13_16();
          v195 = v121;
        }

        v194(v193, v195);
        goto LABEL_32;
      }
    }

    else
    {
      v138 = OUTLINED_FUNCTION_14_3();
      (v115)(v138);
      v139 = OUTLINED_FUNCTION_26_2();
      __swift_storeEnumTagSinglePayload(v139, v140, 1, v276);
    }

    sub_267662EC4(v85, &qword_2801CC640, &unk_2676CF550);
  }

LABEL_13:
  sub_2676C9E5C();
  v141 = OUTLINED_FUNCTION_37_7();
  if ((v111)(v141) != *MEMORY[0x277D5C150])
  {
    v162 = OUTLINED_FUNCTION_37_7();
    (v115)(v162);
    goto LABEL_21;
  }

  v142 = *(v279 + 96);
  v143 = OUTLINED_FUNCTION_37_7();
  v144(v143);
  v145 = v273;
  v146 = *(v273 + 32);
  v147 = OUTLINED_FUNCTION_54_4();
  v148(v147);
  v149 = sub_2676C9E8C();
  v151 = v150;
  v152 = sub_2676C96CC();
  v153 = [v152 identifier];

  v154 = sub_2676CBF6C();
  v156 = v155;

  if (v149 == v154 && v151 == v156)
  {
  }

  else
  {
    OUTLINED_FUNCTION_11_16();
    v158 = sub_2676CC59C();

    if ((v158 & 1) == 0)
    {
      v159 = *(v145 + 8);
      v160 = OUTLINED_FUNCTION_14_3();
      v161(v160);
LABEL_21:
      v163 = sub_2676CBE2C();
      v164 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_5(v164))
      {
        v165 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v165);
        OUTLINED_FUNCTION_4_18(&dword_2675D4000, v166, v167, "#ReplyMailPlan accept(input:): got a non USO parse, rejecting parse");
        OUTLINED_FUNCTION_4_6();
      }

      sub_2676C973C();
      goto LABEL_32;
    }
  }

  v168 = sub_2676CBE2C();
  v169 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_5(v169))
  {
    v170 = OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_9_4(v170);
    OUTLINED_FUNCTION_4_18(&dword_2675D4000, v171, v172, "#ReplyMailPlan got confirm DI, accepting parse");
    OUTLINED_FUNCTION_4_6();
  }

  v173 = v268;
  sub_26761D2DC();
  LOBYTE(v283[0]) = 1;
  v174 = v270;
  sub_2676C984C();
  (*(v269 + 8))(v173, v174);
  sub_2676C974C();
  v175 = *(v145 + 8);
  v176 = OUTLINED_FUNCTION_14_3();
  v177(v176);
LABEL_32:
  OUTLINED_FUNCTION_20_1();
}

void sub_26765D1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v21;
  a20 = v22;
  v181 = v20;
  v182 = v23;
  v173 = v24;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3(v178);
  v166 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v29);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_3(v169);
  v174 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_1();
  v172 = v34;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD280, &qword_2676D1EB8);
  OUTLINED_FUNCTION_3(v180);
  v167 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9_1();
  v179 = v39;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_3(v164);
  v163 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v44);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v45 = OUTLINED_FUNCTION_2_6(v165);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v50);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3(v161);
  v160 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  v57 = OUTLINED_FUNCTION_3(v56);
  v176 = v58;
  v177 = v57;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_9_1();
  v175 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD288, &qword_2676D1EC0);
  OUTLINED_FUNCTION_3(v63);
  v65 = v64;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_50_3();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD218, &unk_2676D1D90);
  OUTLINED_FUNCTION_3(v69);
  v71 = v70;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v74);
  v76 = v159 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD210, &qword_2676D1D88);
  OUTLINED_FUNCTION_3(v77);
  v168 = v78;
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v81);
  v83 = v159 - v82;
  sub_2676CBA6C();
  OUTLINED_FUNCTION_0_20();
  v171 = sub_267662E7C(v84, v85);
  sub_2676C98BC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_22();
  v88 = sub_267662E7C(v86, v87);
  sub_2676C988C();
  v89 = v88;

  (*(v71 + 8))(v76, v69);
  KeyPath = swift_getKeyPath();
  v183 = v83;
  v184 = v77;
  sub_2676C989C();

  LOBYTE(v76) = sub_2676C987C();
  v91 = *(v65 + 8);
  v92 = OUTLINED_FUNCTION_54_4();
  v170 = v65 + 8;
  v91(v92);
  if (v76)
  {
    v159[0] = v91;
    v93 = v175;
    sub_26761D288();
    swift_getKeyPath();
    OUTLINED_FUNCTION_51_2(&v187);
    v94 = v177;
    sub_2676C97EC();

    (*(v176 + 8))(v93, v94);
    v95 = v161;
    sub_2676C983C();
    OUTLINED_FUNCTION_27_5(&v188);
    v96 = OUTLINED_FUNCTION_29_0();
    v97(v96);
    swift_getKeyPath();
    sub_26765BE74(&v187);
    OUTLINED_FUNCTION_80_0();
    v98 = OUTLINED_FUNCTION_65_3();
    v100 = v99;
    KeyPath = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    if (OUTLINED_FUNCTION_64_2(v100))
    {
      v101 = OUTLINED_FUNCTION_29_9();
      v98(v101);

      v102 = OUTLINED_FUNCTION_30_8();
    }

    else
    {
      v160 = v100;
      v161 = v98;
      v159[3] = swift_getKeyPath();
      swift_getKeyPath();
      v103 = v159[1];
      sub_2676CA3EC();

      if (OUTLINED_FUNCTION_64_2(v103) == 1)
      {
        sub_267662EC4(v103, &qword_2801CC428, &unk_2676CEDD0);
      }

      else
      {
        swift_getKeyPath();
        sub_2676CA89C();

        OUTLINED_FUNCTION_14_2(KeyPath);
        v105 = *(v104 + 8);
        v106 = OUTLINED_FUNCTION_43_2();
        v107(v106);
      }

      sub_2676CA8AC();
      v108 = OUTLINED_FUNCTION_29_9();
      v161(v108);

      v102 = OUTLINED_FUNCTION_30_8();
    }

    v95(v102);
    v89 = v88;
    v91 = v159[0];
  }

  swift_getKeyPath();
  sub_2676C989C();

  v109 = sub_2676C987C();
  v110 = OUTLINED_FUNCTION_54_4();
  v91(v110);
  v111 = v178;
  v112 = v167;
  v170 = v89;
  if (v109)
  {
    sub_26761D288();
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_0(&v189);
    sub_2676C97EC();

    v113 = *(v176 + 8);
    v114 = OUTLINED_FUNCTION_65_0();
    v115(v114);
    v116 = v164;
    sub_2676C983C();
    OUTLINED_FUNCTION_27_5(&v190);
    v117(KeyPath, v116);
    swift_getKeyPath();
    sub_26765BE74(&v187);
    OUTLINED_FUNCTION_80_0();
    v118 = OUTLINED_FUNCTION_65_3();
    v120 = v119;
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    if (OUTLINED_FUNCTION_64_2(v120))
    {
      v122 = OUTLINED_FUNCTION_29_9();
      v118(v122);

      v123 = OUTLINED_FUNCTION_30_8();
      v116(v123);
    }

    else
    {
      v163 = v118;
      v164 = v116;
      v162 = swift_getKeyPath();
      swift_getKeyPath();
      OUTLINED_FUNCTION_36_5(&v186);
      sub_2676CA3EC();

      if (OUTLINED_FUNCTION_64_2(v185) == 1)
      {
        sub_267662EC4(v185, &qword_2801CC428, &unk_2676CEDD0);
      }

      else
      {
        swift_getKeyPath();
        sub_2676CA89C();

        OUTLINED_FUNCTION_14_2(v121);
        (*(v124 + 8))(v185, v121);
      }

      v125 = v164;
      OUTLINED_FUNCTION_11_16();
      sub_2676CA8AC();
      v126 = OUTLINED_FUNCTION_29_9();
      v163(v126);

      v127 = OUTLINED_FUNCTION_30_8();
      v125(v127);
      v111 = v178;
    }
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_8_20();
  sub_267662E7C(v128, v129);
  sub_2676C98AC();

  v130 = OUTLINED_FUNCTION_39_4();
  v131 = *(v112 + 8);
  v132 = OUTLINED_FUNCTION_65_0();
  v131(v132);
  if (v130)
  {
    sub_26765F97C();
    v111 = v175;
    sub_26761D288();
    swift_getKeyPath();
    OUTLINED_FUNCTION_44_3();

    v133 = OUTLINED_FUNCTION_36_8();
    v134(v133);
    sub_2676C983C();
    v135 = OUTLINED_FUNCTION_61_3();
    v136(v135);
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_51_4();

  v137 = OUTLINED_FUNCTION_39_4();
  v138 = OUTLINED_FUNCTION_65_0();
  v131(v138);
  if (v137)
  {
    sub_26765F97C();
    v111 = v175;
    sub_26761D288();
    swift_getKeyPath();
    OUTLINED_FUNCTION_44_3();

    v139 = OUTLINED_FUNCTION_36_8();
    v140(v139);
    sub_2676C983C();
    v141 = OUTLINED_FUNCTION_61_3();
    v142(v141);
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_51_4();

  v143 = OUTLINED_FUNCTION_39_4();
  v144 = OUTLINED_FUNCTION_65_0();
  v131(v144);
  if (v143)
  {
    sub_26765F97C();
    v145 = v175;
    sub_26761D288();
    swift_getKeyPath();
    v146 = v177;
    sub_2676C97EC();

    (*(v176 + 8))(v145, v146);
    sub_2676C983C();
    v147 = *(v174 + 8);
    v148 = OUTLINED_FUNCTION_37_7();
    v149(v148);
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v150 = sub_2676CBE4C();
  __swift_project_value_buffer(v150, qword_2801CDC90);

  v151 = sub_2676CBE2C();
  v152 = sub_2676CC23C();

  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    v187 = v182;
    *v153 = 136315138;
    swift_getKeyPath();
    OUTLINED_FUNCTION_36_5(&a12);
    sub_26765BE5C();
    sub_2676CA3EC();

    OUTLINED_FUNCTION_27_5(&a13);
    v154(v111, v111);
    v155 = sub_2676CBFBC();
    v157 = sub_2676B0B84(v155, v156, &v187);

    *(v153 + 4) = v157;
    _os_log_impl(&dword_2675D4000, v151, v152, "#ReplyMailPlan accept(input:) returning .yes() with updated target: %s", v153, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v182);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_27_5(&a15);
  v158(v183, v184);
  OUTLINED_FUNCTION_20_1();
}

void sub_26765E10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v23;
  a20 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD230, &unk_2676D4670);
  OUTLINED_FUNCTION_4_1(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  v31 = OUTLINED_FUNCTION_3(v30);
  v126 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_24_1();
  v124 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD200, &unk_2676D2120);
  OUTLINED_FUNCTION_3(v40);
  v42 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_50_3();
  v46 = type metadata accessor for ResolveSendMailIntent();
  v47 = OUTLINED_FUNCTION_2_6(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_2();
  v52 = v51 - v50;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD238, &qword_2676D1E50);
  OUTLINED_FUNCTION_3(v116);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_9_1();
  v125 = v56;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD240, &qword_2676D1E58);
  OUTLINED_FUNCTION_3(v117);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v60);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD248, &qword_2676D1E60);
  OUTLINED_FUNCTION_3(v118);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD250, &qword_2676D1E68);
  v119 = OUTLINED_FUNCTION_3(v65);
  v120 = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD258, &qword_2676D1E70);
  v121 = OUTLINED_FUNCTION_3(v71);
  v122 = v72;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD260, &unk_2676D1E78);
  OUTLINED_FUNCTION_3(v77);
  v123 = v78;
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v82);
  sub_26765BFE4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_20();
  sub_267662E7C(v83, v84);
  OUTLINED_FUNCTION_1_22();
  sub_267662E7C(v85, v86);
  OUTLINED_FUNCTION_14_11();
  sub_2676C9A2C();

  (*(v42 + 8))(v22, v40);
  sub_26761D288();
  swift_getKeyPath();
  v87 = v52 + v46[6];
  sub_2676C97EC();

  v88 = *(v126 + 8);
  v88(v124, v30);
  sub_26761D288();
  swift_getKeyPath();
  v89 = v52 + v46[7];
  sub_2676C97EC();

  v88(v21, v30);
  OUTLINED_FUNCTION_23_8(&v127);
  sub_26761D288();
  swift_getKeyPath();
  v90 = v46[8];
  OUTLINED_FUNCTION_66_3();

  v91 = OUTLINED_FUNCTION_43_2();
  (v88)(v91);
  OUTLINED_FUNCTION_23_8(&v128);
  sub_26761D288();
  swift_getKeyPath();
  v92 = v46[9];
  OUTLINED_FUNCTION_66_3();

  v93 = OUTLINED_FUNCTION_43_2();
  (v88)(v93);
  v115 = v88;
  OUTLINED_FUNCTION_23_8(&v129);
  sub_26761D288();
  swift_getKeyPath();
  v94 = v46[10];
  OUTLINED_FUNCTION_66_3();

  v95 = OUTLINED_FUNCTION_43_2();
  (v88)(v95);
  v96 = OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan_inReplyTo;
  swift_beginAccess();
  sub_2675F95E4(v20 + v96, v52 + v46[11], &qword_2801CC3D0, &qword_2676D1D80);
  v97 = OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride;
  swift_beginAccess();
  sub_2675F95E4(v20 + v97, v52 + v46[12], &qword_2801CC6A8, &unk_2676CF5F0);
  v98 = v52 + v46[13];
  *(v98 + 32) = 0;
  *v98 = 0u;
  *(v98 + 16) = 0u;
  v99 = *(v20 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals);
  v100 = sub_2676C8D8C();
  v101 = v46[5];
  v102 = v99;
  sub_2676C981C();
  *(v52 + v46[14]) = v102;
  OUTLINED_FUNCTION_40_2(&a9);
  sub_26761D2DC();
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  __swift_storeEnumTagSinglePayload(v100, 0, 1, v103);
  sub_2676CBA6C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_22_7();
  v106 = sub_267662E7C(v104, v105);
  sub_2676C955C();

  sub_267662EC4(v100, &qword_2801CD230, &unk_2676D4670);
  sub_267662C60(v52);
  sub_26761D288();
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_20_9();
  sub_267662E7C(v107, v108);
  OUTLINED_FUNCTION_36_5(&v130);
  sub_2676C94EC();
  v115(v124, v30);
  OUTLINED_FUNCTION_27_5(&a13);
  v109(v125, v116);

  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_60_0(&v131);
  OUTLINED_FUNCTION_75_1();
  sub_2676C952C();

  OUTLINED_FUNCTION_27_5(&a16);
  v110(v106, v117);

  OUTLINED_FUNCTION_27_8();
  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_36_5(&a10);
  sub_2676C954C();

  OUTLINED_FUNCTION_27_5(&a18);
  v111(v124, v118);
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_60_0(&a12);
  OUTLINED_FUNCTION_75_1();
  sub_2676C951C();
  (*(v120 + 8))(v106, v119);

  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_51_2(&a14);
  sub_2676C94FC();

  (*(v122 + 8))(v124, v121);
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_63_3();
  sub_2676C933C();
  v112 = *(v123 + 8);
  v113 = OUTLINED_FUNCTION_29_0();
  v114(v113);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_26765EC58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2676216AC;

  return sub_26761D754();
}

uint64_t sub_26765ED04(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_26761D3E0(&v3, 1);
}

id sub_26765ED48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = *(a1 + 8);
  *(a2 + 8) = v3;
  return sub_267662E60(v2, v3);
}

uint64_t sub_26765ED84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD278, &unk_2676D1EA8);
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_2676C9CCC();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_2676CB0DC();
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v3[32] = v13;
  v14 = *(v13 - 8);
  v3[33] = v14;
  v15 = *(v14 + 64) + 15;
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26765EF74, 0, 0);
}

uint64_t sub_26765EF74()
{
  v60 = v0;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v58 = (v0 + 16);
  v1 = sub_2676CBE4C();
  __swift_project_value_buffer(v1, qword_2801CDC90);
  v2 = sub_2676CBE2C();
  v3 = sub_2676CC26C();
  if (OUTLINED_FUNCTION_5_7(v3))
  {
    v4 = OUTLINED_FUNCTION_17_3();
    *v4 = 0;
    _os_log_impl(&dword_2675D4000, v2, v3, "#SendMailPlan handling cancelation", v4, 2u);
    OUTLINED_FUNCTION_33_6();
  }

  v56 = v0[28];
  v57 = v0;
  v6 = v0[33];
  v7 = v0[34];
  v9 = v0[31];
  v8 = v0[32];
  v11 = v0[29];
  v10 = v0[30];
  v5 = v0 + 28;
  v13 = v0[26];
  v12 = v0 + 26;
  v14 = v2;
  v16 = *(v5 - 7);
  v15 = *(v5 - 6);

  sub_26761D2A4();
  (*(v10 + 104))(v9, *MEMORY[0x277D5CA20], v11);
  sub_2676C984C();
  (*(v10 + 8))(v9, v11);
  (*(v6 + 8))(v7, v8);
  *(v5 - 12) = v16;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
  v18 = v58;
  if (swift_dynamicCast())
  {
    v19 = 27;
    v20 = v57;
LABEL_9:
    (*(v20[v19] + 8))(*v5, *v12);

    v24 = sub_2676CBE2C();
    v25 = sub_2676CC26C();
    if (OUTLINED_FUNCTION_5_7(v25))
    {
      v26 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v26);
      _os_log_impl(&dword_2675D4000, v24, v25, "#SendMailPlan user cancelled or rejected, returning IntentCancelled", v16, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    v27 = swift_task_alloc();
    v20[35] = v27;
    *v27 = v20;
    OUTLINED_FUNCTION_49_2(v27);
    OUTLINED_FUNCTION_5_8();

    return sub_26762E11C();
  }

  v20 = v57;
  v5 = v57 + 25;
  v21 = v57[25];
  v18 = (v57 + 17);
  v16 = v57[23];
  v22 = v57[21];

  v57[17] = v22;
  v23 = v22;
  OUTLINED_FUNCTION_43_2();
  if (swift_dynamicCast())
  {
    v19 = 24;
    v12 = v57 + 23;
    goto LABEL_9;
  }

  v30 = v57[21];

  v57[18] = v30;
  v31 = v30;
  if (swift_dynamicCast())
  {
    v32 = v57[11];
    v33 = v57[12];
    v57[37] = v32;
    v57[38] = v33;
    v34 = *(v57 + 104);
    if (v34 == 1)
    {
      v35 = sub_2676CBE2C();
      v36 = sub_2676CC26C();
      if (OUTLINED_FUNCTION_5_7(v36))
      {
        v37 = OUTLINED_FUNCTION_17_3();
        *v37 = 0;
        _os_log_impl(&dword_2675D4000, v35, v36, "#SendMailPlan RecipientResolutionError.contactMatchWithoutEmailHandle, returning UnsupportedContactNoEmailAddress", v37, 2u);
        OUTLINED_FUNCTION_33_6();
      }

      v38 = v57[22];

      sub_2675E5D38(v38 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_responseFactory, (v57 + 3));
      v57[2] = v32;
      sub_267651D60(v32, v33, 1);
      v39 = swift_task_alloc();
      v57[39] = v39;
      *v39 = v57;
      OUTLINED_FUNCTION_49_2(v39);
      OUTLINED_FUNCTION_5_8();

      return sub_2676BFAF0();
    }

    sub_267651D40(v32, v33, v34);
  }

  v41 = v57[21];

  v42 = v41;
  v43 = sub_2676CBE2C();
  v44 = sub_2676CC26C();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = v57[21];
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v59 = v47;
    *v46 = 136315138;
    swift_getErrorValue();
    v49 = v57[8];
    v48 = v57[9];
    v50 = v57[10];
    v51 = sub_2676CC5FC();
    v53 = sub_2676B0B84(v51, v52, &v59);

    *(v46 + 4) = v53;
    _os_log_impl(&dword_2675D4000, v43, v44, "#SendMailPlan error: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_2_5();
  }

  type metadata accessor for GenericError();
  v57[41] = swift_initStackObject();
  v54 = swift_task_alloc();
  v57[42] = v54;
  *v54 = v57;
  OUTLINED_FUNCTION_49_2(v54);
  OUTLINED_FUNCTION_5_8();

  return sub_2676C1B78();
}

uint64_t sub_26765F50C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v3 + 288) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26765F944, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_84_1();

    OUTLINED_FUNCTION_15_0();

    return v9();
  }
}

uint64_t sub_26765F64C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v3 + 320) = v0;

  sub_267662E0C(v3 + 16);
  if (v0)
  {
    v9 = sub_26765F928;
  }

  else
  {
    v9 = sub_26765F750;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26765F750()
{
  OUTLINED_FUNCTION_12_1();
  sub_267651D40(*(v0 + 296), *(v0 + 304), 1);

  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);

  OUTLINED_FUNCTION_15_0();

  return v5();
}

uint64_t sub_26765F7E8()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v3 + 344) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26765F960, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_84_1();

    OUTLINED_FUNCTION_15_0();

    return v9();
  }
}

void sub_26765F97C()
{
  OUTLINED_FUNCTION_21_1();
  v204 = v0;
  v211 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  v11 = &v196 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v196 - v16;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v18 = OUTLINED_FUNCTION_3(v213);
  v203 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4();
  v210 = v22;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_24_1();
  v212 = v24;
  v25 = sub_2676CA43C();
  v26 = OUTLINED_FUNCTION_3(v25);
  v207 = v27;
  v208 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_2();
  isa = v31 - v30;
  v33 = sub_2676C9EBC();
  v34 = OUTLINED_FUNCTION_3(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v34);
  v41 = &v196 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = &v196 - v42;
  v209 = v3;
  v44 = sub_26762F80C(v5);
  v205 = v5;
  if (v44)
  {
    if (qword_2801CBAA0 != -1)
    {
LABEL_102:
      OUTLINED_FUNCTION_0();
    }

    v45 = sub_2676CBE4C();
    v46 = __swift_project_value_buffer(v45, qword_2801CDC90);
    v47 = *(v36 + 16);
    OUTLINED_FUNCTION_77_1();
    v47();
    OUTLINED_FUNCTION_77_1();
    v47();
    v206 = v46;
    v48 = sub_2676CBE2C();
    v49 = sub_2676CC23C();
    v50 = os_log_type_enabled(v48, v49);
    v211 = v17;
    if (v50)
    {
      LODWORD(v201) = v49;
      v51 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v214[0] = v199;
      *v51 = 136315650;
      v52 = v205;
      v202 = v48;
      v198 = v41;
      if (v205)
      {
        if (v205 == 1)
        {
          v53 = 17219;
        }

        else
        {
          v53 = 4408130;
        }

        if (v205 == 1)
        {
          v54 = 0xE200000000000000;
        }

        else
        {
          v54 = 0xE300000000000000;
        }
      }

      else
      {
        v54 = 0xE200000000000000;
        v53 = 20308;
      }

      v75 = sub_2676B0B84(v53, v54, v214);

      *(v51 + 4) = v75;
      *(v51 + 12) = 1024;
      v76 = *MEMORY[0x277D5E478];
      v77 = v207;
      v197 = v51;
      v200 = *(v207 + 104);
      v78 = v208;
      v200(isa, v76, v208);
      v79 = sub_2676308A4(v52);
      v196 = &v196;
      MEMORY[0x28223BE20](v79);
      OUTLINED_FUNCTION_81_2();
      v81 = sub_2676A2650(sub_267630B6C, v80, v79);

      v207 = *(v77 + 8);
      (v207)(isa, v78);
      LODWORD(v79) = v81 & 1;
      v196 = *(v36 + 8);
      v196(v43, v33);
      v82 = v197;
      *(v197 + 14) = v79;
      *(v82 + 18) = 1024;
      v200(isa, *MEMORY[0x277D5E470], v78);
      v41 = v198;
      v83 = sub_2676308A4(v205);
      MEMORY[0x28223BE20](v83);
      OUTLINED_FUNCTION_81_2();
      v85 = sub_2676A2650(sub_267630B90, v84, v83);
      v200 = 0;

      (v207)(isa, v208);
      v64 = v205;
      v196(v41, v33);
      *(v82 + 20) = v85 & 1;
      v86 = v202;
      _os_log_impl(&dword_2675D4000, v202, v201, "#ReplyMailPlan %s recipients has a list operation add recipients? %{BOOL}d, remove recipients? %{BOOL}d", v82, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v199);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_33_6();

      v17 = v211;
    }

    else
    {
      v63 = *(v36 + 8);
      v63(v41, v33);
      v63(v43, v33);

      v200 = 0;
      v64 = v205;
    }

    v87 = sub_26762F9DC(v64);
    v88 = v212;
    if (*(v87 + 16))
    {
      v89 = sub_2676CBE2C();
      v90 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_7(v90))
      {
        v91 = swift_slowAlloc();
        v214[0] = swift_slowAlloc();
        *v91 = 136315394;
        if (v64)
        {
          if (v64 == 1)
          {
            v92 = 17219;
          }

          else
          {
            v92 = 4408130;
          }

          if (v64 == 1)
          {
            v93 = 0xE200000000000000;
          }

          else
          {
            v93 = 0xE300000000000000;
          }
        }

        else
        {
          v93 = 0xE200000000000000;
          v92 = 20308;
        }

        v102 = sub_2676B0B84(v92, v93, v214);

        *(v91 + 4) = v102;
        *(v91 + 12) = 2080;
        v103 = MEMORY[0x26D5FDDD0](v87, v213);
        v105 = sub_2676B0B84(v103, v104, v214);

        *(v91 + 14) = v105;
        _os_log_impl(&dword_2675D4000, v89, v90, "#ReplyMailPlan Adding these %s recipients: %s", v91, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_33_6();
        OUTLINED_FUNCTION_4_6();
      }

      swift_getKeyPath();
      v106 = sub_26765BE74(v214);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
      OUTLINED_FUNCTION_0_20();
      v41 = sub_267662E7C(v107, v108);
      OUTLINED_FUNCTION_1_22();
      sub_267662E7C(v109, v110);
      v111 = sub_2676CA3DC();
      v113 = v112;
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      if (__swift_getEnumTagSinglePayload(v113, 1, v114))
      {

        v115 = OUTLINED_FUNCTION_29_9();
        v111(v115);

        v116 = OUTLINED_FUNCTION_30_8();
        v106(v116);
        v64 = v205;
      }

      else
      {
        v117 = v205;
        sub_2675DFEE4(v205, v87);

        v118 = OUTLINED_FUNCTION_29_9();
        v111(v118);
        v64 = v117;
        v88 = v212;

        v119 = OUTLINED_FUNCTION_30_8();
        v106(v119);
      }

      v17 = v211;
    }

    else
    {
    }

    v120 = sub_267630350(v64);
    if (v120[2].isa)
    {
      v121 = sub_2676CBE2C();
      v122 = sub_2676CC23C();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v214[0] = swift_slowAlloc();
        *v123 = 136315394;
        if (v64)
        {
          if (v64 == 1)
          {
            v124 = 0xE200000000000000;
            v125 = 17219;
          }

          else
          {
            v124 = 0xE300000000000000;
            v125 = 4408130;
          }
        }

        else
        {
          v124 = 0xE200000000000000;
          v125 = 20308;
        }

        v126 = sub_2676B0B84(v125, v124, v214);

        *(v123 + 4) = v126;
        *(v123 + 12) = 2080;
        v127 = MEMORY[0x26D5FDDD0](v120, v213);
        v41 = sub_2676B0B84(v127, v128, v214);

        *(v123 + 14) = v41;
        _os_log_impl(&dword_2675D4000, v121, v122, "#ReplyMailPlan Removing these %s recipients: %s", v123, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_2_5();

        v17 = v211;
      }

      else
      {
      }

      v43 = MEMORY[0x277D84F90];
      isa = v120[2].isa;
      v202 = v120;
      v201 = isa;
      if (isa)
      {
        v214[0] = MEMORY[0x277D84F90];
        sub_2676C2B08(0, isa, 0);
        OUTLINED_FUNCTION_57_5();
        v43 = v214[0];
        v41 = v120 + v129;
        v208 = *(v130 + 56);
        v209 = v131;
        v206 = v130;
        v207 = v130 - 8;
        v132 = v213;
        do
        {
          (v209)(v88, v41, v132);
          swift_getKeyPath();
          OUTLINED_FUNCTION_8_20();
          sub_267662E7C(&qword_2801CBF70, v133);
          sub_267662E7C(&qword_2801CC2D0, MEMORY[0x277D5C640]);
          sub_2676CA87C();

          v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
          if (__swift_getEnumTagSinglePayload(v17, 1, v134) == 1)
          {
            (*v207)(v88, v132);
            sub_267662EC4(v17, &qword_2801CC068, &unk_2676D4E00);
            v135 = 0;
            v136 = 0;
          }

          else
          {
            swift_getKeyPath();
            v135 = sub_2676CA89C();
            v136 = v137;

            (*v207)(v88, v132);
            OUTLINED_FUNCTION_14_2(v134);
            v139 = *(v138 + 8);
            v140 = OUTLINED_FUNCTION_11_16();
            v141(v140);
          }

          v214[0] = v43;
          v143 = *(v43 + 2);
          v142 = *(v43 + 3);
          v33 = v143 + 1;
          if (v143 >= v142 >> 1)
          {
            v145 = OUTLINED_FUNCTION_23_1(v142);
            sub_2676C2B08(v145, v143 + 1, 1);
            v132 = v213;
            v43 = v214[0];
          }

          *(v43 + 2) = v33;
          v144 = &v43[16 * v143];
          *(v144 + 4) = v135;
          *(v144 + 5) = v136;
          v41 += v208;
          --isa;
          v17 = v211;
          v88 = v212;
        }

        while (isa);
        v120 = v202;
      }

      else
      {
        v33 = *(MEMORY[0x277D84F90] + 16);
      }

      v36 = 0;
      v146 = MEMORY[0x277D84F90];
      v147 = MEMORY[0x277D84F90];
LABEL_70:
      v148 = 16 * v36 + 40;
      while (v33 != v36)
      {
        if (v36 >= *(v43 + 2))
        {
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        ++v36;
        v149 = v148 + 16;
        v150 = *&v43[v148];
        v148 += 16;
        if (v150)
        {
          v41 = *&v43[v149 - 24];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_68_2();
            v147 = v153;
          }

          isa = *(v147 + 16);
          v151 = *(v147 + 24);
          v17 = (isa + 1);
          if (isa >= v151 >> 1)
          {
            v154 = OUTLINED_FUNCTION_23_1(v151);
            sub_26760719C(v154, isa + 1, 1, v147);
            v147 = v155;
          }

          *(v147 + 16) = v17;
          v152 = v147 + 16 * isa;
          *(v152 + 32) = v41;
          *(v152 + 40) = v150;
          v120 = v202;
          goto LABEL_70;
        }
      }

      v156 = sub_2676A1BFC(v147);
      v41 = v156;
      v36 = v201;
      if (v201)
      {
        v209 = v156;
        v214[0] = v146;
        sub_2676C2B08(0, v201, 0);
        v33 = v214[0];
        OUTLINED_FUNCTION_57_5();
        v158 = v120 + v157;
        v211 = *(v159 + 7);
        v212 = v160;
        v43 = v159;
        v161 = v159 - 8;
        v162 = v213;
        v163 = v36;
        do
        {
          v164 = v210;
          (v212)(v210, v158, v162);
          swift_getKeyPath();
          OUTLINED_FUNCTION_8_20();
          sub_267662E7C(&qword_2801CBF70, v165);
          v166 = sub_2676CA89C();
          v162 = v213;
          v36 = v166;
          v168 = v167;

          (*v161)(v164, v162);
          v214[0] = v33;
          isa = *(v33 + 16);
          v169 = *(v33 + 24);
          if (isa >= v169 >> 1)
          {
            v171 = OUTLINED_FUNCTION_23_1(v169);
            sub_2676C2B08(v171, isa + 1, 1);
            v162 = v213;
            v33 = v214[0];
          }

          *(v33 + 16) = isa + 1;
          v170 = v33 + 16 * isa;
          *(v170 + 32) = v36;
          *(v170 + 40) = v168;
          v158 += v211;
          --v163;
        }

        while (v163);

        v41 = v209;
      }

      else
      {

        v33 = MEMORY[0x277D84F90];
      }

      v172 = 0;
      v17 = *(v33 + 16);
      v173 = MEMORY[0x277D84F90];
LABEL_87:
      v174 = 16 * v172 + 40;
      while (v17 != v172)
      {
        if (v172 >= *(v33 + 16))
        {
          goto LABEL_101;
        }

        ++v172;
        v175 = v174 + 16;
        v176 = *(v33 + v174);
        v174 += 16;
        if (v176)
        {
          v177 = *(v33 + v175 - 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_68_2();
            v173 = v180;
          }

          v36 = *(v173 + 16);
          v178 = *(v173 + 24);
          v43 = (v36 + 1);
          if (v36 >= v178 >> 1)
          {
            v181 = OUTLINED_FUNCTION_23_1(v178);
            sub_26760719C(v181, v36 + 1, 1, v173);
            v173 = v182;
          }

          *(v173 + 16) = v43;
          v179 = v173 + 16 * v36;
          *(v179 + 32) = v177;
          *(v179 + 40) = v176;
          goto LABEL_87;
        }
      }

      v183 = sub_2676A1BFC(v173);
      swift_getKeyPath();
      sub_26765BE74(v214);
      OUTLINED_FUNCTION_80_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
      OUTLINED_FUNCTION_0_20();
      sub_267662E7C(v184, v185);
      OUTLINED_FUNCTION_1_22();
      sub_267662E7C(v186, v187);
      v188 = sub_2676CA3DC();
      v190 = v189;
      v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v190, 1, v191);
      if (!EnumTagSinglePayload)
      {
        MEMORY[0x28223BE20](EnumTagSinglePayload);
        *(&v196 - 4) = v41;
        v193 = v205;
        *(&v196 - 24) = v205;
        *(&v196 - 2) = v183;
        sub_2675E0008(v193);
      }

      v194 = OUTLINED_FUNCTION_29_9();
      v188(v194);

      v195 = OUTLINED_FUNCTION_30_8();
      (v33)(v195);
    }

    else
    {
    }
  }

  else
  {
    swift_getKeyPath();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
    OUTLINED_FUNCTION_0_20();
    v58 = sub_267662E7C(v56, v57);
    OUTLINED_FUNCTION_1_22();
    sub_267662E7C(v59, v60);
    sub_2676CA3EC();

    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    if (OUTLINED_FUNCTION_64_2(v11) == 1)
    {
      sub_267662EC4(v11, &qword_2801CC428, &unk_2676CEDD0);
      v62 = MEMORY[0x277D84F90];
    }

    else
    {
      v62 = sub_2675DFE20(v5);
      OUTLINED_FUNCTION_14_2(v61);
      v66 = *(v65 + 8);
      v67 = OUTLINED_FUNCTION_37_7();
      v68(v67);
    }

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v69 = sub_2676CBE4C();
    __swift_project_value_buffer(v69, qword_2801CDC90);

    v70 = sub_2676CBE2C();
    v71 = sub_2676CC23C();

    if (os_log_type_enabled(v70, v71))
    {
      v211 = v58;
      v72 = swift_slowAlloc();
      v214[0] = swift_slowAlloc();
      *v72 = 136315394;
      v212 = v55;
      if (v205)
      {
        if (v205 == 1)
        {
          v73 = 17219;
        }

        else
        {
          v73 = 4408130;
        }

        if (v205 == 1)
        {
          v74 = 0xE200000000000000;
        }

        else
        {
          v74 = 0xE300000000000000;
        }
      }

      else
      {
        v74 = 0xE200000000000000;
        v73 = 20308;
      }

      v94 = sub_2676B0B84(v73, v74, v214);

      *(v72 + 4) = v94;
      *(v72 + 12) = 2080;
      v95 = MEMORY[0x26D5FDDD0](v62, v213);
      v97 = sub_2676B0B84(v95, v96, v214);

      *(v72 + 14) = v97;
      _os_log_impl(&dword_2675D4000, v70, v71, "#ReplyMailPlan Replacing %s recipients with these recipients: %s", v72, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4_6();

      v55 = v212;
    }

    else
    {
    }

    swift_getKeyPath();
    v98 = sub_26765BE74(v214);
    OUTLINED_FUNCTION_77_1();
    sub_2676CA3DC();
    OUTLINED_FUNCTION_80_0();
    if (!OUTLINED_FUNCTION_64_2(v99))
    {
      sub_2675E025C(v205, v62);
    }

    v100 = OUTLINED_FUNCTION_29_9();
    v55(v100);

    v101 = OUTLINED_FUNCTION_30_8();
    v98(v101);
  }

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_267660D1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  HIDWORD(v36) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  sub_267662E7C(&qword_2801CBF70, MEMORY[0x277D5C6D0]);
  sub_267662E7C(&qword_2801CC2D0, MEMORY[0x277D5C640]);
  sub_2676CA87C();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_267662EC4(v9, &qword_2801CC068, &unk_2676D4E00);
    goto LABEL_16;
  }

  swift_getKeyPath();
  v11 = sub_2676CA89C();
  v13 = v12;

  (*(*(v10 - 8) + 8))(v9, v10);
  if (!v13)
  {
LABEL_16:
    swift_getKeyPath();
    v22 = sub_2676CA89C();
    v24 = v23;

    if (v24)
    {
      if (sub_2676A1CB8(v22, v24, a4))
      {
        if (qword_2801CBAA0 != -1)
        {
          swift_once();
        }

        v25 = sub_2676CBE4C();
        __swift_project_value_buffer(v25, qword_2801CDC90);

        v16 = sub_2676CBE2C();
        v26 = sub_2676CC23C();

        if (os_log_type_enabled(v16, v26))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v37 = v19;
          *v18 = 136315394;
          if (BYTE4(v36))
          {
            if (BYTE4(v36) == 1)
            {
              v27 = 17219;
            }

            else
            {
              v27 = 4408130;
            }

            if (BYTE4(v36) == 1)
            {
              v28 = 0xE200000000000000;
            }

            else
            {
              v28 = 0xE300000000000000;
            }
          }

          else
          {
            v28 = 0xE200000000000000;
            v27 = 20308;
          }

          v30 = sub_2676B0B84(v27, v28, &v37);

          *(v18 + 4) = v30;
          *(v18 + 12) = 2080;
          v31 = sub_2676B0B84(v22, v24, &v37);

          *(v18 + 14) = v31;
          v32 = "#ReplyMailPlan Removing %s recipient with name %s";
          v33 = v26;
LABEL_35:
          _os_log_impl(&dword_2675D4000, v16, v33, v32, v18, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D5FEA80](v19, -1, -1);
          MEMORY[0x26D5FEA80](v18, -1, -1);
          goto LABEL_36;
        }

        goto LABEL_30;
      }
    }

    return 0;
  }

  if (!sub_2676A1CB8(v11, v13, a2))
  {

    goto LABEL_16;
  }

  v14 = v11;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v15 = sub_2676CBE4C();
  __swift_project_value_buffer(v15, qword_2801CDC90);

  v16 = sub_2676CBE2C();
  v17 = sub_2676CC23C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37 = v19;
    *v18 = 136315394;
    if (BYTE4(v36))
    {
      if (BYTE4(v36) == 1)
      {
        v20 = 17219;
      }

      else
      {
        v20 = 4408130;
      }

      if (BYTE4(v36) == 1)
      {
        v21 = 0xE200000000000000;
      }

      else
      {
        v21 = 0xE300000000000000;
      }
    }

    else
    {
      v21 = 0xE200000000000000;
      v20 = 20308;
    }

    v34 = sub_2676B0B84(v20, v21, &v37);

    *(v18 + 4) = v34;
    *(v18 + 12) = 2080;
    v35 = sub_2676B0B84(v14, v13, &v37);

    *(v18 + 14) = v35;
    v32 = "#ReplyMailPlan Removing %s recipient with email %s";
    v33 = v17;
    goto LABEL_35;
  }

LABEL_30:

LABEL_36:

  return 1;
}

void sub_267661278()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v60 = v2;
  v3 = sub_2676CB48C();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_2();
  v61 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD210, &qword_2676D1D88);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_1();
  v62 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD218, &unk_2676D1D90);
  v15 = OUTLINED_FUNCTION_3(v14);
  v59[0] = v16;
  v59[1] = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_50_3();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_1();
  v63 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v30);
  v32 = v59 - v31;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v33 = sub_2676CBE4C();
  __swift_project_value_buffer(v33, qword_2801CDC90);
  v34 = sub_2676CBE2C();
  v35 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v35))
  {
    v36 = OUTLINED_FUNCTION_17_3();
    *v36 = 0;
    _os_log_impl(&dword_2675D4000, v34, v35, "#ReplyMailPlan making ConfirmationPrompt", v36, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  swift_getKeyPath();
  sub_26765BE5C();
  OUTLINED_FUNCTION_0_20();
  sub_267662E7C(v37, v38);
  OUTLINED_FUNCTION_1_22();
  sub_267662E7C(v39, v40);
  sub_2676CA3EC();

  (*(v27 + 8))(v32, v25);
  sub_2676CBA6C();
  sub_2676C98BC();
  swift_getKeyPath();
  sub_2676C988C();

  v41 = *(v59[0] + 8);
  v42 = OUTLINED_FUNCTION_54_4();
  v43(v42);
  v44 = *(v1 + OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan_confirmIntentOptions);
  v45 = type metadata accessor for ConfirmSendProducer(0);
  v67[3] = v45;
  v67[4] = sub_267662E7C(&qword_2801CD220, type metadata accessor for ConfirmSendProducer);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  v47 = *(v45 + 24);
  v48 = sub_2676C8D8C();
  OUTLINED_FUNCTION_2_6(v48);
  (*(v49 + 16))(boxed_opaque_existential_1 + v47, v60);
  v50 = sub_267661728();
  type metadata accessor for SendMailCATsSimple();
  sub_2676CB47C();
  v51 = sub_2676CB42C();
  boxed_opaque_existential_1[1] = v44;
  *(boxed_opaque_existential_1 + *(v45 + 28)) = v50 & 1;
  *boxed_opaque_existential_1 = v51;
  v52 = sub_2676C9B9C();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  v55 = sub_2676C9B8C();
  v65 = v52;
  v66 = MEMORY[0x277D5BD58];
  v64 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD228, &unk_2676D1DA0);
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  sub_2676C9BEC();
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_267661728()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  v7 = &v9[-v6];
  sub_26761D2C0();
  sub_2676C97FC();
  (*(v2 + 8))(v7, v0);
  return v9[15] & 1;
}

uint64_t sub_2676617FC()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan__replyMessageTask;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  OUTLINED_FUNCTION_8_2(v2);
  (*(v3 + 8))(v0 + v1);
  return sub_267662EC4(v0 + OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan_inReplyTo, &qword_2801CC3D0, &qword_2676D1D80);
}

uint64_t sub_267661878()
{
  v0 = MailSendingPlan.deinit();
  v1 = OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan__replyMessageTask;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  OUTLINED_FUNCTION_8_2(v2);
  (*(v3 + 8))(v0 + v1);
  sub_267662EC4(v0 + OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan_inReplyTo, &qword_2801CC3D0, &qword_2676D1D80);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for ReplyMailPlan()
{
  result = qword_2801CD1B8;
  if (!qword_2801CD1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26766199C()
{
  sub_267661A74();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_267661AD8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_267661A74()
{
  if (!qword_2801CD1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC628, &unk_2676CF530);
    v0 = sub_2676C97CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2801CD1C8);
    }
  }
}

void sub_267661AD8()
{
  if (!qword_2801CD1D0)
  {
    sub_2676C8BFC();
    v0 = sub_2676CC2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2801CD1D0);
    }
  }
}

uint64_t sub_267661C74()
{
  type metadata accessor for ReplyMailPlan();

  return sub_2676C950C();
}

uint64_t sub_267661CE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821BA568](a1, WitnessTable);
}

void sub_267661D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v22;
  a20 = v23;
  v167 = v24;
  v25 = type metadata accessor for MailStateChangeEventHandler(0);
  v26 = *(v25 - 8);
  v161 = (v25 - 8);
  v166 = v26;
  v165 = *(v26 + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v164 = v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_24_1();
  v174 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  v31 = OUTLINED_FUNCTION_3(v30);
  v162 = v32;
  v163 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v36);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD200, &unk_2676D2120);
  OUTLINED_FUNCTION_3(v157);
  v158 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v41);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3(v160);
  v159 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_4_1(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_9_1();
  v179 = v51;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  v52 = OUTLINED_FUNCTION_3(v155);
  v154 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_4();
  v170 = v56;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_24_1();
  v178 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  v60 = OUTLINED_FUNCTION_3(v59);
  v172 = v61;
  v173 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_4();
  v168 = v64;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_24_1();
  v177 = v66;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  v67 = OUTLINED_FUNCTION_3(v169);
  v171 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_4();
  v182 = v71;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_10_4();
  v181 = v73;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_10_4();
  v180 = v75;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_10_4();
  v176 = v77;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_10_4();
  v175 = v79;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v80);
  v156 = v153 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  v83 = OUTLINED_FUNCTION_3(v82);
  v85 = v84;
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  v94 = MEMORY[0x28223BE20](v93);
  v96 = v153 - v95;
  v97 = MEMORY[0x28223BE20](v94);
  v99 = v153 - v98;
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v100);
  v102 = v153 - v101;
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v103 = *(v85 + 8);
  v103(v102, v82);
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v103(v21, v82);
  v104 = v20;
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v103(v99, v82);
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v103(v96, v82);
  v105 = v153[1];
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v103(v105, v82);
  sub_26761D2A4();
  OUTLINED_FUNCTION_23_8(&v178);
  sub_26761D288();
  swift_getKeyPath();
  OUTLINED_FUNCTION_69_1();

  v106 = OUTLINED_FUNCTION_55_2();
  (v103)(v106);
  OUTLINED_FUNCTION_23_8(&v179);
  sub_26761D288();
  swift_getKeyPath();
  OUTLINED_FUNCTION_69_1();

  v107 = OUTLINED_FUNCTION_55_2();
  (v103)(v107);
  OUTLINED_FUNCTION_23_8(&v180);
  sub_26761D288();
  swift_getKeyPath();
  OUTLINED_FUNCTION_69_1();

  v108 = OUTLINED_FUNCTION_55_2();
  (v103)(v108);
  OUTLINED_FUNCTION_23_8(&v181);
  sub_26761D288();
  swift_getKeyPath();
  v109 = v168;
  OUTLINED_FUNCTION_69_1();

  v110 = OUTLINED_FUNCTION_55_2();
  (v103)(v110);
  OUTLINED_FUNCTION_23_8(&v182);
  sub_26761D288();
  swift_getKeyPath();
  OUTLINED_FUNCTION_69_1();

  v111 = OUTLINED_FUNCTION_55_2();
  (v103)(v111);
  OUTLINED_FUNCTION_60_0(&v183);
  sub_26761D2C0();
  OUTLINED_FUNCTION_23_8(&a9);
  sub_26765BFE4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_20();
  sub_267662E7C(v112, v113);
  OUTLINED_FUNCTION_1_22();
  sub_267662E7C(v114, v115);
  OUTLINED_FUNCTION_51_2(&a15);
  sub_2676C9A2C();

  OUTLINED_FUNCTION_27_5(&a14);
  v116 = OUTLINED_FUNCTION_65_0();
  v117(v116);
  v118 = *(v171 + 16);
  v119 = v174;
  v120 = v169;
  v118(v174, v180, v169);
  v121 = v161;
  v118(v119 + v161[7], v181, v120);
  v118(v119 + v121[8], v182, v120);
  v122 = OUTLINED_FUNCTION_73_1(v121[9]);
  v123(v122, v109);
  v124 = v154;
  v125 = OUTLINED_FUNCTION_73_1(v121[10]);
  v126 = v170;
  v127 = v155;
  v128(v125, v170, v155);
  v129 = v121[11];
  v130 = v121;
  v131 = v162;
  OUTLINED_FUNCTION_73_1(v129);
  OUTLINED_FUNCTION_77_1();
  v132();
  v133 = v159;
  v134 = OUTLINED_FUNCTION_73_1(v130[12]);
  v135(v134, v104, v160);
  v136 = type metadata accessor for MetricsSnippetEventHandler();
  v137 = *(v136 + 48);
  v138 = *(v136 + 52);
  v139 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_2676C958C();
  v140 = *(v131 + 8);
  v141 = OUTLINED_FUNCTION_29_0();
  v142(v141);
  v143 = *(v133 + 8);
  v144 = OUTLINED_FUNCTION_37_7();
  v145(v144);
  (*(v124 + 8))(v126, v127);
  (*(v172 + 8))(v168, v173);
  v146 = *(v171 + 8);
  v147 = v169;
  v146(v182, v169);
  v146(v181, v147);
  v146(v180, v147);
  v148 = v164;
  sub_267662B28(v174, v164);
  v149 = (*(v166 + 80) + 16) & ~*(v166 + 80);
  v150 = (v165 + v149 + 7) & 0xFFFFFFFFFFFFFFF8;
  v151 = swift_allocObject();
  sub_267662B28(v148, v151 + v149);
  *(v151 + v150) = v139;
  sub_2676C916C();
  sub_2676CAFDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9F8, &unk_2676CFE90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  sub_2676CB0DC();
  sub_267662E7C(&qword_2801CD1E0, MEMORY[0x277D5C900]);
  v152 = MEMORY[0x277D5C970];
  sub_267662E7C(&qword_2801CD1E8, MEMORY[0x277D5C970]);
  sub_267662E7C(&qword_2801CD1F0, v152);
  sub_2676C9BAC();
  OUTLINED_FUNCTION_20_1();
}