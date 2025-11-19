void sub_266CD7F38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v79 = &v78 - v6;
  v7 = sub_266DA81DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v78 - v13;
  if (qword_2800C92A8 != -1)
  {
    swift_once();
  }

  v15 = sub_266DA94AC();
  v16 = __swift_project_value_buffer(v15, qword_2800CBE68);
  v17 = *(v8 + 16);
  v80 = a1;
  v17(v14, a1, v7);
  v81 = v16;
  v18 = sub_266DA948C();
  v19 = sub_266DAAB0C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v78 = a2;
    v22 = v21;
    v84[0] = v21;
    *v20 = 136315138;
    v17(v12, v14, v7);
    v23 = sub_266DAA72C();
    v25 = v24;
    (*(v8 + 8))(v14, v7);
    v26 = sub_266C22A3C(v23, v25, v84);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_266C08000, v18, v19, "[FindMyFriendTask] parsing USOParse: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v27 = v22;
    a2 = v78;
    MEMORY[0x26D5F2480](v27, -1, -1);
    MEMORY[0x26D5F2480](v20, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v14, v7);
  }

  v28 = v82;
  __swift_project_boxed_opaque_existential_1(v82, v82[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0A8, &qword_266DB1EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE4A0;
  *(inited + 56) = &unk_287867F78;
  *(inited + 64) = sub_266C6F020();
  v30 = swift_allocObject();
  *(inited + 32) = v30;
  *(v30 + 16) = "SiriFindMy";
  *(v30 + 24) = 10;
  *(v30 + 32) = 2;
  *(v30 + 40) = "FindMyFriendsNLX";
  *(v30 + 48) = 16;
  *(v30 + 56) = 2;
  v31 = sub_266D7E674(inited);
  swift_setDeallocating();
  sub_266C6F0B4();
  if (v31)
  {
    sub_266DA8BBC();
    sub_266D65720();
    sub_266DA87CC();
    if (v88)
    {
      sub_266CD8AF0(v87, v86);
      sub_266DA89DC();
      if (swift_dynamicCast())
      {
        v32 = sub_266DA948C();
        v33 = sub_266DAAB0C();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = a2;
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_266C08000, v32, v33, "[FindMyFriendTask]: uso task is UsoTask_getLocation_common_Person", v35, 2u);
          v36 = v35;
          a2 = v34;
          MEMORY[0x26D5F2480](v36, -1, -1);
        }

        sub_266C233D0((v28 + 5), v85);

        sub_266DA889C();
LABEL_19:

        v84[0] = v83;
        v84[1] = 0;
        v45 = v79;
        sub_266D4797C();

        sub_266CD8B60(v84);
        *(a2 + 24) = type metadata accessor for FindFriendIntentWrapper();
        *(a2 + 32) = &off_28785D820;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
        sub_266C17FCC(v45, boxed_opaque_existential_1);
        *(a2 + 40) = 0;
LABEL_30:
        __swift_destroy_boxed_opaque_existential_0(v86);
LABEL_47:
        sub_266C3A088(v87, &qword_2800CA7C0, &qword_266DB1BD0);
        return;
      }

      sub_266DA8A1C();
      if (swift_dynamicCast())
      {
        v40 = sub_266DA948C();
        v41 = sub_266DAAB0C();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = a2;
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_266C08000, v40, v41, "[FindMyFriendTask]: uso task is UsoTask_checkLocation_common_Person", v43, 2u);
          v44 = v43;
          a2 = v42;
          MEMORY[0x26D5F2480](v44, -1, -1);
        }

        sub_266C233D0((v28 + 5), v85);

        sub_266DA8B3C();
        goto LABEL_19;
      }

      sub_266DA8AEC();
      if (swift_dynamicCast())
      {

        v47 = sub_266DA948C();
        v48 = sub_266DAAB0C();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = a2;
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_266C08000, v47, v48, "[FindMyFriendTask]: uso task is UsoTask_getPerson_common_GeographicArea", v50, 2u);
          v51 = v50;
          a2 = v49;
          MEMORY[0x26D5F2480](v51, -1, -1);
        }

        *a2 = 1;
        *(a2 + 8) = 0u;
        *(a2 + 24) = 0u;
LABEL_24:
        v52 = 4;
LABEL_29:
        *(a2 + 40) = v52;
        goto LABEL_30;
      }

      sub_266DA89CC();
      if (swift_dynamicCast())
      {

        v53 = sub_266DA948C();
        v54 = sub_266DAAB0C();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = a2;
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_266C08000, v53, v54, "[FindMyFriendTask]: uso task is UsoTask_hide_common_FindMyStatus", v56, 2u);
          v57 = v56;
          a2 = v55;
          MEMORY[0x26D5F2480](v57, -1, -1);
        }

        *(a2 + 24) = &type metadata for SetSharedLocationVisibilityIntentWrapper;
        *(a2 + 32) = &off_287866DF8;

        *a2 = 2;
        v52 = 1;
        goto LABEL_29;
      }

      sub_266DA8A0C();
      if (swift_dynamicCast())
      {

        v58 = sub_266DA948C();
        v59 = sub_266DAAB0C();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = a2;
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_266C08000, v58, v59, "[FindMyFriendTask]: uso task is UsoTask_unhide_common_FindMyStatus", v61, 2u);
          v62 = v61;
          a2 = v60;
          MEMORY[0x26D5F2480](v62, -1, -1);
        }

        *(a2 + 24) = &type metadata for SetSharedLocationVisibilityIntentWrapper;
        *(a2 + 32) = &off_287866DF8;

        *a2 = 1;
        *(a2 + 40) = 1;
        goto LABEL_30;
      }

      sub_266DA8B7C();
      if (swift_dynamicCast())
      {
        v63 = a2;
        v64 = sub_266DA948C();
        v65 = sub_266DAAB0C();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_266C08000, v64, v65, "[FindMyFriendTask]: uso task is UsoTask_enableNotifications_common_FindMyStatus", v66, 2u);
          MEMORY[0x26D5F2480](v66, -1, -1);
        }

        *(v63 + 24) = type metadata accessor for SetGeoFenceUsoIntentWrapper(0);
        *(v63 + 32) = &off_28785D2E8;
        v67 = __swift_allocate_boxed_opaque_existential_1(v63);
        sub_266C16588(v67);

        *(v63 + 40) = 2;
        goto LABEL_30;
      }

      sub_266DA8B8C();
      if (swift_dynamicCast())
      {

        v68 = sub_266DA948C();
        v69 = sub_266DAAB0C();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = a2;
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&dword_266C08000, v68, v69, "[FindMyFriendTask]: uso task is UsoTask_disableNotifications_common_FindMyStatus", v71, 2u);
          v72 = v71;
          a2 = v70;
          MEMORY[0x26D5F2480](v72, -1, -1);
        }

        *(a2 + 32) = 0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        goto LABEL_24;
      }

      __swift_destroy_boxed_opaque_existential_0(v86);
    }

    v73 = sub_266DA948C();
    v74 = sub_266DAAB0C();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = a2;
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_266C08000, v73, v74, "[FindMyFriendTask]: task is not converted to an expected task", v76, 2u);
      v77 = v76;
      a2 = v75;
      MEMORY[0x26D5F2480](v77, -1, -1);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = -1;
    goto LABEL_47;
  }

  v37 = sub_266DA948C();
  v38 = sub_266DAAB0C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_266C08000, v37, v38, "[FindMyFriendTaskParser] FMF on NLX is disabled, returning fallbackToServer.", v39, 2u);
    MEMORY[0x26D5F2480](v39, -1, -1);
  }

  *a2 = 3;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 4;
}

uint64_t sub_266CD8AA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266CD8AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7C0, &qword_266DB1BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_52()
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_266CD8C08()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8) - 8) + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  sub_266C186BC(v5, v23 - v10, &qword_2800CAF00, &qword_266DB32D8);
  v12 = sub_266DAA9EC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_266C1825C(v11, &qword_2800CAF00, &qword_266DB32D8);
  }

  else
  {
    sub_266DAA9DC();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(v1 + 16);
  v14 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_266DAA99C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v19 = sub_266DAA75C() + 32;
      OUTLINED_FUNCTION_26_0();
      v20 = swift_allocObject();
      *(v20 + 16) = v3;
      *(v20 + 24) = v1;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v21 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v23[1] = 7;
      v23[2] = v21;
      v23[3] = v19;
      swift_task_create();

      sub_266C1825C(v5, &qword_2800CAF00, &qword_266DB32D8);

      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_266C1825C(v5, &qword_2800CAF00, &qword_266DB32D8);
  OUTLINED_FUNCTION_26_0();
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  *(v22 + 24) = v1;
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_5();
}

void sub_266CD8ED0()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Location();
  v6 = OUTLINED_FUNCTION_11_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = type metadata accessor for GEOServicesReverseGeocoder();
  v12 = OUTLINED_FUNCTION_11_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_266CD9BF4(v0, v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GEOServicesReverseGeocoder);
  sub_266CD9BF4(v4, v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Location);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v16 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_266CDA30C(v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17, type metadata accessor for GEOServicesReverseGeocoder);
  sub_266CDA30C(v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for Location);
  *(v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBEC8, &unk_266DB5700);
  OUTLINED_FUNCTION_26_0();
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_266DB56F8;
  *(v20 + 24) = v19;
  v21[1] = sub_266DA979C();
  sub_266C230E8(&qword_2800CBED0, &qword_2800CBEC8, &unk_266DB5700);
  sub_266DA97EC();

  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CD9144()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CBE80);
  v1 = __swift_project_value_buffer(v0, qword_2800CBE80);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266CD920C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBEE0, &qword_266DB5740);
  OUTLINED_FUNCTION_0_2(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v9 = v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBEE8, &qword_266DB5748);
  OUTLINED_FUNCTION_0_2(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v16 = v30 - v15;
  if (v1[13])
  {
    if (qword_2800C92B0 != -1)
    {
      swift_once();
    }

    v17 = sub_266DA94AC();
    __swift_project_value_buffer(v17, qword_2800CBE80);
    v33 = sub_266DA948C();
    v18 = sub_266DAAAEC();
    if (os_log_type_enabled(v33, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_266C08000, v33, v18, "startFetching called on GeocodingUserLocationProvider that has already started", v19, 2u);
      MEMORY[0x26D5F2480](v19, -1, -1);
    }

    OUTLINED_FUNCTION_5();
  }

  else
  {
    v22 = v1[5];
    v23 = v1[6];
    v33 = v14;
    __swift_project_boxed_opaque_existential_1(v1 + 2, v22);
    v24 = *(v23 + 8);
    v32 = v4;
    v31 = v24(v22, v23);
    v34 = v31;
    OUTLINED_FUNCTION_26_0();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_266CDA814;
    *(v25 + 24) = v1;

    v30[1] = sub_266DA966C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC2D0, &qword_266DAF900);
    type metadata accessor for Location();
    OUTLINED_FUNCTION_4_29();
    sub_266C230E8(v26, v27, &qword_266DAF900);
    sub_266DA98DC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
    sub_266C230E8(&qword_2800CBEF0, &qword_2800CBEE0, &qword_266DB5740);
    sub_266DA984C();
    (*(v32 + 8))(v9, v2);
    sub_266C230E8(&qword_2800CBEF8, &qword_2800CBEE8, &qword_266DB5748);

    v28 = sub_266DA986C();

    (v33[1].isa)(v16, v10);
    v29 = v1[13];
    v1[13] = v28;

    OUTLINED_FUNCTION_5();
  }
}

uint64_t sub_266CD9650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_266CD9BF4(a1, a2, type metadata accessor for Location);
  v3 = type metadata accessor for Location();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

void sub_266CD96D8()
{
  OUTLINED_FUNCTION_6();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBEB0, &qword_266DB56E8);
  OUTLINED_FUNCTION_0_2(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_266CD8ED0();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC58, &unk_266DB5310);
  OUTLINED_FUNCTION_4_29();
  sub_266C230E8(v10, v11, &unk_266DB5310);
  sub_266CD9BA0();
  OUTLINED_FUNCTION_12_16();
  sub_266DA98FC();

  sub_266C230E8(&qword_2800CBEC0, &qword_2800CBEB0, &qword_266DB56E8);
  sub_266DA97EC();
  (*(v3 + 8))(v8, v1);
  OUTLINED_FUNCTION_5();
}

void sub_266CD9870(id *a1@<X0>, char *a2@<X8>)
{
  v6 = *a1;
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  if (v5 != 1)
  {

LABEL_5:
    v4 = 2;
    goto LABEL_6;
  }

  v4 = 1;
LABEL_6:

  *a2 = v4;
}

void sub_266CD990C()
{
  OUTLINED_FUNCTION_6();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBE98, &qword_266DB56E0);
  OUTLINED_FUNCTION_0_2(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v8 = v9 - v7;
  v9[1] = *(v0 + 96);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B88, &qword_266DAE530);
  type metadata accessor for Location();
  sub_266C230E8(&qword_2800CBEA0, &qword_2800C9B88, &qword_266DAE530);
  OUTLINED_FUNCTION_12_16();
  sub_266DA97FC();

  sub_266C230E8(&qword_2800CBEA8, &qword_2800CBE98, &qword_266DB56E0);
  sub_266DA97EC();
  (*(v3 + 8))(v8, v1);
  OUTLINED_FUNCTION_5();
}

uint64_t *sub_266CD9AC8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  return v0;
}

uint64_t sub_266CD9B00()
{
  sub_266CD9AC8();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

unint64_t sub_266CD9BA0()
{
  result = qword_2800CBEB8;
  if (!qword_2800CBEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CBEB8);
  }

  return result;
}

uint64_t sub_266CD9BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266CD9C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  v12 = sub_266DAA9EC();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;

  sub_266CD8C08();
}

uint64_t sub_266CD9D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBED8, &qword_266DB5738);
  v6[4] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[6] = v10;
  v14 = (a6 + *a6);
  v11 = a6[1];
  v12 = swift_task_alloc();
  v6[7] = v12;
  *v12 = v6;
  v12[1] = sub_266CD9EA8;

  return v14(v10);
}

uint64_t sub_266CD9EA8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    v7 = sub_266CDA050;
  }

  else
  {
    v7 = sub_266CD9FAC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_266CD9FAC()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  swift_storeEnumTagMultiPayload();
  v4(v1);
  sub_266C1825C(v1, &qword_2800CBED8, &qword_266DB5738);
  v6 = v0[5];
  v5 = v0[6];

  OUTLINED_FUNCTION_28();

  return v7();
}

uint64_t sub_266CDA050()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  v5(v3);

  sub_266C1825C(v3, &qword_2800CBED8, &qword_266DB5738);
  v8 = v0[5];
  v7 = v0[6];

  OUTLINED_FUNCTION_28();

  return v9();
}

uint64_t sub_266CDA108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_266CDA1C8;

  return GEOServicesReverseGeocoder.reverseGeocodeLocationAsync(_:spokenNeeds:)();
}

uint64_t sub_266CDA1C8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = *(v2 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266CDA2E8, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_28();

    return v7();
  }
}

uint64_t sub_266CDA2E8()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 32);
  return v2();
}

uint64_t sub_266CDA30C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_266CDA36C(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for GEOServicesReverseGeocoder();
  OUTLINED_FUNCTION_11_3(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for Location();
  OUTLINED_FUNCTION_11_3(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v1 + ((*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_266C4716C;

  return sub_266CDA108(a1, v1 + v7, v1 + v12, v14);
}

uint64_t sub_266CDA4D8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_6_23(v9);
  *v10 = v11;
  v10[1] = sub_266C4716C;

  return sub_266CD9D5C(a1, v3, v4, v5, v6, v8);
}

uint64_t sub_266CDA5A4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266CDA69C;

  return v7(a1);
}

uint64_t sub_266CDA69C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;

  OUTLINED_FUNCTION_28();

  return v5();
}

uint64_t sub_266CDA780()
{
  OUTLINED_FUNCTION_34();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_23(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_27(v4);

  return v7(v6);
}

uint64_t sub_266CDA818@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_27(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_13_12@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_266CDA8CC(uint64_t a1, void *a2)
{
  sub_266DAADFC();

  v3 = a2[5];
  v4 = OUTLINED_FUNCTION_3_30();
  v5(v4);
  OUTLINED_FUNCTION_23_10();

  MEMORY[0x26D5F1170](10016, 0xE200000000000000);
  v6 = a2[1];
  v7 = OUTLINED_FUNCTION_3_30();
  v8(v7);
  OUTLINED_FUNCTION_23_10();

  MEMORY[0x26D5F1170](0x6375646F72702027, 0xEB00000000203A74);
  v9 = a2[8];
  v10 = OUTLINED_FUNCTION_3_30();
  v11(v10);
  OUTLINED_FUNCTION_23_10();

  MEMORY[0x26D5F1170](0x203A65707974202CLL, 0xE800000000000000);
  v12 = a2[9];
  v13 = OUTLINED_FUNCTION_3_30();
  v14(v13);
  OUTLINED_FUNCTION_23_10();

  MEMORY[0x26D5F1170](0x3A72656E776F202CLL, 0xE900000000000020);
  v15 = a2[10];
  v16 = OUTLINED_FUNCTION_3_30();
  v18 = v17(v16);
  MEMORY[0x26D5F1170](v18);

  MEMORY[0x26D5F1170](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_266CDAA74(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x277D84F90];
  v23 = result;
  v22 = v7;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    sub_266C233D0(v8, v28);
    v10 = v5(v28);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_0(v28);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      sub_266C0B0D8(v28, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_266C38B20(0, *(v9 + 16) + 1, 1);
        v9 = v29;
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_266C38B20(v12 > 1, v13 + 1, 1);
      }

      v14 = v26;
      v15 = v27;
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
      v17 = *(*(v14 - 8) + 64);
      MEMORY[0x28223BE20](v16);
      OUTLINED_FUNCTION_0_6();
      v20 = v19 - v18;
      (*(v21 + 16))(v19 - v18);
      sub_266CDD6D0(v13, v20, &v29, v14, v15);
      result = __swift_destroy_boxed_opaque_existential_0(v25);
      v9 = v29;
      v5 = v23;
      v4 = a3;
      v7 = v22;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_0(v28);
    }

    v8 += 40;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_266CDACBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;

  v7 = sub_266CDAA74(sub_266CDD664, v16, a1);
  v13 = a2;
  v14 = a3;
  v15 = v3;
  v8 = sub_266D2D590(sub_266CDD688, v12, v7);
  if (v8)
  {
    MEMORY[0x28223BE20](v8);
    v11[2] = a2;
    v11[3] = a3;
    v11[4] = v3;
    v9 = sub_266D2D590(sub_266CDD6AC, v11, v7);

    if (v9)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 1;
  }
}

uint64_t sub_266CDADD0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CBF00);
  v1 = __swift_project_value_buffer(v0, qword_2800CBF00);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CDAE98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 80))(v7, v8);
  v11 = v10;
  if (v9 == (*(a4 + 80))(a3, a4) && v11 == v12)
  {
  }

  else
  {
    v14 = sub_266DAB17C();

    v15 = 0;
    if ((v14 & 1) == 0)
    {
      return v15 & 1;
    }
  }

  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = (*(v17 + 16))(v16, v17);
  v20 = v19;
  if (v18 == (*(a4 + 16))(a3, a4) && v20 == v21)
  {

    v15 = 0;
  }

  else
  {
    v23 = sub_266DAB17C();

    v15 = v23 ^ 1;
  }

  return v15 & 1;
}

uint64_t sub_266CDB044(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 40))(v6, v7);
  v10 = v9;
  if (v8 == (*(a4 + 40))(a3, a4) && v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_266DAB17C();
  }

  return v13 & 1;
}

uint64_t sub_266CDB128(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 64))(v6, v7);
  v10 = v9;
  if (v8 == (*(a4 + 64))(a3, a4) && v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_266DAB17C();
  }

  return v13 & 1;
}

uint64_t FMIPDevice.unifiedIdentifier.getter()
{
  v0 = sub_266DA74AC();
  v1 = OUTLINED_FUNCTION_0_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_6();
  sub_266DAA03C();
  v6 = sub_266DA747C();
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_6_24();
  v9(v8);
  return v6;
}

uint64_t FMIPDevice.ownedByCurrentUser.getter()
{
  v0 = sub_266DAA01C();
  v2 = v1;
  if (qword_2800C9158 != -1)
  {
    swift_once();
  }

  if (v0 == qword_28156FC98 && v2 == unk_28156FCA0)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_266DAB17C();
  }

  return v4 & 1;
}

uint64_t FMIPDevice.isThisDevice.getter()
{
  v2 = sub_266DAA26C();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_15();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_12();
  sub_266DAA06C();
  sub_266DAA25C();
  sub_266CDD61C(&qword_2800CBF18, MEMORY[0x277D07C68]);
  OUTLINED_FUNCTION_15_17();
  v7 = OUTLINED_FUNCTION_11_14();
  v1(v7);
  v8 = OUTLINED_FUNCTION_6_24();
  v1(v8);
  return v0 & 1;
}

uint64_t FMIPDevice.deviceLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBF20, &qword_266DB5750);
  v3 = OUTLINED_FUNCTION_4_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = sub_266DAA23C();
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_5();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v22 - v18;
  sub_266DAA00C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_266C1825C(v7, &qword_2800CBF20, &qword_266DB5750);
  }

  else
  {
    (*(v11 + 32))(v19, v7, v8);
    (*(v11 + 16))(v16, v19, v8);
    sub_266CA4128(v16, a1);
    (*(v11 + 8))(v19, v8);
  }

  v20 = type metadata accessor for Location();
  return OUTLINED_FUNCTION_20_11(v20);
}

uint64_t FMIPDevice.canPlaySound.getter()
{
  v2 = sub_266DAA1CC();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_15();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_12();
  sub_266DAA08C();
  sub_266DAA1BC();
  OUTLINED_FUNCTION_5_28();
  sub_266CDD61C(v7, v8);
  OUTLINED_FUNCTION_15_17();
  v9 = OUTLINED_FUNCTION_11_14();
  v1(v9);
  v10 = OUTLINED_FUNCTION_6_24();
  v1(v10);
  return v0 & 1;
}

void sub_266CDB794()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v69 = v2;
  v70 = v3;
  v68 = v4;
  v5 = sub_266DAA45C();
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v64 = v7;
  v65 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_6();
  v67 = v11 - v10;
  v12 = sub_266DAA0AC();
  v13 = OUTLINED_FUNCTION_0_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_5();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v66 = &v63 - v22;
  v23 = sub_266DAA1CC();
  v24 = OUTLINED_FUNCTION_0_2(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_0_5();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v63 - v33;
  sub_266DAA08C();
  sub_266DAA1BC();
  OUTLINED_FUNCTION_5_28();
  sub_266CDD61C(v35, v36);
  v37 = sub_266DAACEC();
  v38 = *(v26 + 8);
  v38(v31, v23);
  v38(v34, v23);
  if (v37)
  {
    (*(v15 + 16))(v66, v1, v12);
    (*(v64 + 104))(v67, *MEMORY[0x277D07CC0], v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBF48, &unk_266DB57F0);
    v39 = sub_266DAA4DC();
    OUTLINED_FUNCTION_0_2(v39);
    v41 = v40;
    v43 = *(v42 + 72);
    v44 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_266DB05C0;
    v46 = v45 + v44;
    v47 = *(v41 + 104);
    v47(v46, *MEMORY[0x277D07CC8], v39);
    v47(v46 + v43, *MEMORY[0x277D07CD0], v39);
    v48 = sub_266DAA59C();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    sub_266DAA58C();
    v51 = swift_allocObject();
    *(v51 + 16) = v69;
    *(v51 + 24) = v70;

    sub_266DAA18C();
  }

  else
  {
    v52 = v12;
    if (qword_2800C92B8 != -1)
    {
      OUTLINED_FUNCTION_7_21();
    }

    v53 = sub_266DA94AC();
    __swift_project_value_buffer(v53, qword_2800CBF00);
    (*(v15 + 16))(v20, v1, v12);
    v54 = sub_266DA948C();
    v55 = sub_266DAAAEC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = v52;
      v58 = swift_slowAlloc();
      v71 = v58;
      *v56 = 136315138;
      v59 = sub_266DAA02C();
      v61 = v60;
      (*(v15 + 8))(v20, v57);
      v62 = sub_266C22A3C(v59, v61, &v71);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_266C08000, v54, v55, "Device is not play sound enabled. Failing playSound request on %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      (*(v15 + 8))(v20, v12);
    }

    v72 = 256;
    v69(&v72);
  }

  OUTLINED_FUNCTION_5();
}

void sub_266CDBCEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v10 = sub_266DAA28C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800C92B8 != -1)
  {
    swift_once();
  }

  v15 = sub_266DA94AC();
  v16 = __swift_project_value_buffer(v15, qword_2800CBF00);
  (*(v11 + 16))(v14, a1, v10);
  v17 = a3;
  v43 = v16;
  v18 = sub_266DA948C();
  v19 = sub_266DAAB0C();

  if (!os_log_type_enabled(v18, v19))
  {

    (*(v11 + 8))(v14, v10);
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_9:
    LOWORD(v45) = 0;
    a5(&v45);
    return;
  }

  v20 = swift_slowAlloc();
  v42 = a5;
  v21 = v20;
  v22 = swift_slowAlloc();
  v45 = v22;
  *v21 = 136315394;
  sub_266CDD61C(&qword_2800CBF50, MEMORY[0x277D07C90]);
  v23 = sub_266DAB13C();
  v41[1] = a6;
  v25 = v24;
  (*(v11 + 8))(v14, v10);
  v26 = sub_266C22A3C(v23, v25, &v45);

  *(v21 + 4) = v26;
  *(v21 + 12) = 2080;
  v44 = a3;
  v27 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFC0, &qword_266DB5C90);
  v28 = sub_266DAA72C();
  v30 = sub_266C22A3C(v28, v29, &v45);

  *(v21 + 14) = v30;
  _os_log_impl(&dword_266C08000, v18, v19, "PlaySound status: %s, error: %s", v21, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x26D5F2480](v22, -1, -1);
  v31 = v21;
  a5 = v42;
  MEMORY[0x26D5F2480](v31, -1, -1);

  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_5:
  v32 = a3;
  v33 = sub_266DA948C();
  v34 = sub_266DAAAEC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v44 = a3;
    v45 = v36;
    *v35 = 136315138;
    v37 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
    v38 = sub_266DAA72C();
    v40 = sub_266C22A3C(v38, v39, &v45);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_266C08000, v33, v34, "Error playing sound: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x26D5F2480](v36, -1, -1);
    MEMORY[0x26D5F2480](v35, -1, -1);
  }

  LOWORD(v45) = 261;
  a5(&v45);
}

void FMIPItem.productName.getter()
{
  OUTLINED_FUNCTION_6();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBF30, &qword_266DB5758);
  v2 = OUTLINED_FUNCTION_4_3(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_5();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_12();
  v9 = sub_266DAA20C();
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_6();
  v15 = sub_266DAA27C();
  v16 = OUTLINED_FUNCTION_0_2(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_6();
  v23 = v22 - v21;
  sub_266DAA61C();
  v24 = v18[11];
  v25 = OUTLINED_FUNCTION_83();
  v27 = v26(v25);
  if (v27 == *MEMORY[0x277D07C78])
  {
    v28 = v18[12];
    v29 = OUTLINED_FUNCTION_83();
    v30(v29);
    sub_266C1825C(v23, &qword_2800CBF38, &qword_266DB5760);
LABEL_5:
    sub_266DAA65C();
    sub_266DAA1EC();
    v36 = *(v12 + 8);
    v37 = OUTLINED_FUNCTION_75();
    v38(v37);
    goto LABEL_6;
  }

  if (v27 == *MEMORY[0x277D07C80])
  {
    v31 = v18[12];
    v32 = OUTLINED_FUNCTION_83();
    v33(v32);
    v34 = sub_266DAA5BC();
    OUTLINED_FUNCTION_0(v34);
    (*(v35 + 8))(v23);
    goto LABEL_5;
  }

  if (v27 == *MEMORY[0x277D07C88])
  {
    v39 = v18[12];
    v40 = OUTLINED_FUNCTION_83();
    v41(v40);
    sub_266CDC504(v23, v0);
    v42 = OUTLINED_FUNCTION_14_18();
    sub_266C186BC(v42, v43, v44, v45);
    v46 = sub_266DAA5FC();
    if (__swift_getEnumTagSinglePayload(v7, 1, v46) == 1)
    {
      sub_266C1825C(v7, &qword_2800CBF30, &qword_266DB5758);
      sub_266DAA65C();
      sub_266DAA1EC();
      v47 = *(v12 + 8);
      v48 = OUTLINED_FUNCTION_75();
      v49(v48);
    }

    else
    {
      sub_266DAA5EC();
      (*(*(v46 - 8) + 8))(v7, v46);
    }

    sub_266C1825C(v0, &qword_2800CBF30, &qword_266DB5758);
  }

  else
  {
    v50 = v18[1];
    v51 = OUTLINED_FUNCTION_83();
    v52(v51);
  }

LABEL_6:
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CDC504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBF30, &qword_266DB5758);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FMIPItem.deviceProductType.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBF30, &qword_266DB5758);
  v3 = OUTLINED_FUNCTION_4_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_15();
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = sub_266DAA27C();
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_6();
  v17 = v16 - v15;
  sub_266DAA61C();
  v18 = v12[11];
  v19 = OUTLINED_FUNCTION_14_18();
  v21 = v20(v19);
  if (v21 == *MEMORY[0x277D07C78])
  {
    v22 = OUTLINED_FUNCTION_13_13();
    v23(v22);
    sub_266C1825C(v17, &qword_2800CBF38, &qword_266DB5760);
  }

  else if (v21 == *MEMORY[0x277D07C80])
  {
    v24 = OUTLINED_FUNCTION_13_13();
    v25(v24);
    v26 = sub_266DAA5BC();
    OUTLINED_FUNCTION_0(v26);
    (*(v27 + 8))(v17);
  }

  else if (v21 == *MEMORY[0x277D07C88])
  {
    v29 = v12[12];
    v30 = OUTLINED_FUNCTION_14_18();
    v31(v30);
    v32 = OUTLINED_FUNCTION_6_24();
    sub_266CDC504(v32, v33);
    sub_266C186BC(v8, v1, &qword_2800CBF30, &qword_266DB5758);
    v34 = sub_266DAA5FC();
    if (__swift_getEnumTagSinglePayload(v1, 1, v34) == 1)
    {
      v0 = 0xD000000000000020;
      sub_266C1825C(v1, &qword_2800CBF30, &qword_266DB5758);
    }

    else
    {
      v0 = sub_266DAA5EC();
      (*(*(v34 - 8) + 8))(v1, v34);
    }

    sub_266C1825C(v8, &qword_2800CBF30, &qword_266DB5758);
  }

  else
  {
    v0 = 0xD000000000000020;
    v35 = v12[1];
    v36 = OUTLINED_FUNCTION_14_18();
    v37(v36);
  }

  return v0;
}

uint64_t FMIPItem.ownedByCurrentUser.getter()
{
  if (_s8FMIPCore8FMIPItemV10SiriFindMyE15ownerIdentifierSSvg_0() == 0x6F6C4072656E776FLL && v0 == 0xEF74736F686C6163)
  {

    return 1;
  }

  else
  {
    v2 = sub_266DAB17C();

    return v2 & 1;
  }
}

uint64_t FMIPItem.emoji.getter()
{
  v0 = sub_266DAA20C();
  v1 = OUTLINED_FUNCTION_0_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_6();
  sub_266DAA65C();
  v6 = sub_266DAA1FC();
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_75();
  v9(v8);
  return v6;
}

uint64_t FMIPItem.categoryId.getter()
{
  v0 = sub_266DAA20C();
  v1 = OUTLINED_FUNCTION_0_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_6();
  sub_266DAA65C();
  v6 = sub_266DAA1DC();
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_75();
  v9(v8);
  return v6;
}

void FMIPItem.deviceLocation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_266DAA23C();
  v25 = OUTLINED_FUNCTION_0_2(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_0_5();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBF20, &qword_266DB5750);
  v37 = OUTLINED_FUNCTION_4_3(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_0_5();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &a9 - v44;
  sub_266DAA67C();
  v46 = OUTLINED_FUNCTION_83();
  sub_266C186BC(v46, v47, &qword_2800CBF20, &qword_266DB5750);
  if (__swift_getEnumTagSinglePayload(v42, 1, v24) != 1)
  {
    (*(v27 + 32))(v35, v42, v24);
    v48 = *(v27 + 16);
    v49 = OUTLINED_FUNCTION_14_18();
    v50(v49);
    sub_266CA4128(v32, v23);
    (*(v27 + 8))(v35, v24);
  }

  sub_266C1825C(v45, &qword_2800CBF20, &qword_266DB5750);
  v51 = type metadata accessor for Location();
  OUTLINED_FUNCTION_20_11(v51);
  OUTLINED_FUNCTION_5();
}

BOOL sub_266CDCC7C(void (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBF20, &qword_266DB5750);
  v3 = OUTLINED_FUNCTION_4_3(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  a1(v6);
  v9 = sub_266DAA23C();
  v10 = __swift_getEnumTagSinglePayload(v8, 1, v9) != 1;
  sub_266C1825C(v8, &qword_2800CBF20, &qword_266DB5750);
  return v10;
}

uint64_t FMIPItem.canPlaySound.getter()
{
  v2 = sub_266DAA30C();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_15();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_12();
  sub_266DAA62C();
  sub_266DAA2FC();
  OUTLINED_FUNCTION_4_30();
  sub_266CDD61C(v7, v8);
  OUTLINED_FUNCTION_15_17();
  v9 = OUTLINED_FUNCTION_11_14();
  v1(v9);
  v10 = OUTLINED_FUNCTION_6_24();
  v1(v10);
  return v0 & 1;
}

void sub_266CDCE48()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v50 = v2;
  v51 = v3;
  v48 = v4;
  v5 = sub_266DAA68C();
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_5();
  v49 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v16 = sub_266DAA30C();
  v17 = OUTLINED_FUNCTION_0_2(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_5();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v48 - v26;
  sub_266DAA62C();
  sub_266DAA2FC();
  OUTLINED_FUNCTION_4_30();
  sub_266CDD61C(v28, v29);
  v30 = sub_266DAACEC();
  v31 = *(v19 + 8);
  v31(v24, v16);
  v31(v27, v16);
  if (v30)
  {
    (*(v8 + 16))(v15, v1, v5);
    v32 = sub_266DAA53C();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    sub_266DAA52C();
    v35 = swift_allocObject();
    *(v35 + 16) = v50;
    *(v35 + 24) = v51;

    sub_266DAA17C();
  }

  else
  {
    v36 = v50;
    if (qword_2800C92B8 != -1)
    {
      OUTLINED_FUNCTION_7_21();
    }

    v37 = sub_266DA94AC();
    __swift_project_value_buffer(v37, qword_2800CBF00);
    v38 = v49;
    (*(v8 + 16))(v49, v1, v5);
    v39 = sub_266DA948C();
    v40 = sub_266DAAAEC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v52 = v42;
      *v41 = 136315138;
      v43 = sub_266DAA63C();
      v44 = v38;
      v46 = v45;
      (*(v8 + 8))(v44, v5);
      v47 = sub_266C22A3C(v43, v46, &v52);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_266C08000, v39, v40, "Device is not play sound enabled. Failing playSound request on %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      (*(v8 + 8))(v38, v5);
    }

    v53 = 256;
    v36(&v53);
  }

  OUTLINED_FUNCTION_5();
}

void sub_266CDD22C(int a1, int a2, id a3, void (*a4)(uint64_t *))
{
  if (a3)
  {
    v6 = a3;
    if (qword_2800C92B8 != -1)
    {
      swift_once();
    }

    v7 = sub_266DA94AC();
    __swift_project_value_buffer(v7, qword_2800CBF00);
    v8 = a3;
    v9 = sub_266DA948C();
    v10 = sub_266DAAAEC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20[0] = v12;
      *v11 = 136315138;
      v13 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
      v14 = sub_266DAA72C();
      v16 = sub_266C22A3C(v14, v15, v20);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_266C08000, v9, v10, "Play sound failed: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x26D5F2480](v12, -1, -1);
      MEMORY[0x26D5F2480](v11, -1, -1);
    }

    swift_getErrorValue();
    v17 = sub_266D9D360(v20[2]);
    if (v17 == 1 || v17 == 4)
    {
      v19 = 259;
    }

    else if (v17 == 2)
    {
      v19 = 260;
    }

    else
    {
      v19 = 261;
    }

    LOWORD(v20[0]) = v19;
    a4(v20);
  }

  else
  {
    LOWORD(v20[0]) = 0;
    a4(v20);
  }
}

uint64_t sub_266CDD61C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266CDD6D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_266C0B0D8(&v12, v10 + 40 * a1 + 32);
}

uint64_t OUTLINED_FUNCTION_7_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_17()
{

  return sub_266DAACEC();
}

uint64_t OUTLINED_FUNCTION_20_11(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, v2, 1, a1);
}

void OUTLINED_FUNCTION_23_10()
{

  JUMPOUT(0x26D5F1170);
}

uint64_t sub_266CDD88C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBFD0, &qword_266DB5988);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_266DA851C();
  qword_2800CBF58 = result;
  return result;
}

uint64_t sub_266CDD8F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBFE0, &unk_266DB5990);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_266DA851C();
  qword_2800CBF60 = result;
  return result;
}

uint64_t sub_266CDD95C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC020, &qword_266DB59C0);
  OUTLINED_FUNCTION_7_7(v0);
  OUTLINED_FUNCTION_14_19();
  result = sub_266DA851C();
  qword_2800CBF68 = result;
  return result;
}

uint64_t sub_266CDD9B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D8, &qword_266DB05E8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_266DA851C();
  qword_2800CBF70 = result;
  return result;
}

uint64_t sub_266CDDA20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D8, &qword_266DB05E8);
  OUTLINED_FUNCTION_7_7(v0);
  OUTLINED_FUNCTION_14_19();
  result = sub_266DA851C();
  qword_2800CBF78 = result;
  return result;
}

uint64_t sub_266CDDA70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBFF0, &qword_266DB59A0);
  OUTLINED_FUNCTION_7_7(v0);
  result = sub_266DA851C();
  qword_2800CBF80 = result;
  return result;
}

uint64_t sub_266CDDAD0()
{
  MyContactNode = type metadata accessor for FindMyContactNode(0);
  v1 = *(MyContactNode + 48);
  v2 = *(MyContactNode + 52);
  swift_allocObject();
  result = sub_266CDF394();
  qword_2800CBF88 = result;
  return result;
}

uint64_t sub_266CDDB34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E8, &qword_266DB5980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DB5800;
  if (qword_2800C92C0 != -1)
  {
    swift_once();
  }

  v1 = qword_2800CBF58;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBFD0, &qword_266DB5988);
  *(v0 + 64) = sub_266CDF634(&qword_2800CBFD8, &qword_2800CBFD0, &qword_266DB5988);
  *(v0 + 32) = v1;
  v2 = qword_2800C92C8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_2800CBF60;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBFE0, &unk_266DB5990);
  *(v0 + 104) = sub_266CDF634(&qword_2800CBFE8, &qword_2800CBFE0, &unk_266DB5990);
  *(v0 + 72) = v3;
  v4 = qword_2800C92D8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_2800CBF70;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D8, &qword_266DB05E8);
  *(v0 + 136) = v6;
  v7 = sub_266CDF634(&qword_28156F1A8, &qword_2800CA2D8, &qword_266DB05E8);
  *(v0 + 144) = v7;
  *(v0 + 112) = v5;
  v8 = qword_2800C92E0;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_2800CBF78;
  *(v0 + 176) = v6;
  *(v0 + 184) = v7;
  *(v0 + 152) = v9;
  v10 = qword_2800C92E8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_2800CBF80;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBFF0, &qword_266DB59A0);
  *(v0 + 224) = sub_266CDF634(&qword_2800CBFF8, &qword_2800CBFF0, &qword_266DB59A0);
  *(v0 + 192) = v11;
  v12 = qword_2800C92F0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_2800CBF88;
  MyContactNode = type metadata accessor for FindMyContactNode(0);
  v15 = MEMORY[0x277D5E210];
  *(v0 + 256) = MyContactNode;
  *(v0 + 264) = v15;
  *(v0 + 232) = v13;
  v16 = sub_266DA849C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();

  result = sub_266DA848C();
  qword_2800CBF90 = result;
  return result;
}

uint64_t sub_266CDDE64()
{
  if (qword_2800C92F8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_266CDDEC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC008, &qword_266DB59A8);
  OUTLINED_FUNCTION_4_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC010, &qword_266DB59B0);
  OUTLINED_FUNCTION_4_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  if (qword_2800C92C0 != -1)
  {
    OUTLINED_FUNCTION_1_36();
  }

  type metadata accessor for FindDeviceNLIntent(0);
  OUTLINED_FUNCTION_0_53();
  sub_266CDF5A4(v12, v13);
  OUTLINED_FUNCTION_14_18();
  sub_266DA872C();
  v14 = sub_266DA86DC();
  OUTLINED_FUNCTION_61(v5, 1, v14);
  if (v21)
  {
    v15 = &qword_2800CC008;
    v16 = &qword_266DB59A8;
    v17 = v5;
LABEL_9:
    sub_266CDF688(v17, v15, v16);
    return MEMORY[0x277D84F90];
  }

  v18 = sub_266DA86CC();
  OUTLINED_FUNCTION_9_3(v14);
  (*(v19 + 8))(v5, v14);
  sub_266CB7A30(v18);

  v20 = sub_266DA863C();
  OUTLINED_FUNCTION_61(v11, 1, v20);
  if (v21)
  {
    v15 = &qword_2800CC010;
    v16 = &qword_266DB59B0;
    v17 = v11;
    goto LABEL_9;
  }

  v22 = sub_266DA85FC();
  OUTLINED_FUNCTION_9_3(v20);
  (*(v23 + 8))(v11, v20);
  return v22;
}

uint64_t sub_266CDE0E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC008, &qword_266DB59A8);
  OUTLINED_FUNCTION_4_3(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_12();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC010, &qword_266DB59B0);
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC018, &qword_266DB59B8);
  OUTLINED_FUNCTION_4_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  if (qword_2800C92C0 != -1)
  {
    OUTLINED_FUNCTION_1_36();
  }

  type metadata accessor for FindDeviceNLIntent(0);
  OUTLINED_FUNCTION_0_53();
  sub_266CDF5A4(v17, v18);
  sub_266DA872C();
  v19 = sub_266DA86DC();
  OUTLINED_FUNCTION_61(v0, 1, v19);
  if (v29)
  {
    v20 = &qword_2800CC008;
    v21 = &qword_266DB59A8;
    v22 = v0;
LABEL_12:
    sub_266CDF688(v22, v20, v21);
    return 0;
  }

  v23 = sub_266DA86CC();
  OUTLINED_FUNCTION_9_3(v19);
  v25 = *(v24 + 8);
  v26 = OUTLINED_FUNCTION_14_18();
  v27(v26);
  sub_266CB7A30(v23);

  v28 = sub_266DA863C();
  OUTLINED_FUNCTION_61(v10, 1, v28);
  if (v29)
  {
    v20 = &qword_2800CC010;
    v21 = &qword_266DB59B0;
    v22 = v10;
    goto LABEL_12;
  }

  sub_266DA862C();
  OUTLINED_FUNCTION_9_3(v28);
  (*(v30 + 8))(v10, v28);
  v31 = sub_266DA861C();
  OUTLINED_FUNCTION_61(v16, 1, v31);
  if (v32)
  {
    v20 = &qword_2800CC018;
    v21 = &qword_266DB59B8;
    v22 = v16;
    goto LABEL_12;
  }

  v34 = sub_266DA860C();
  OUTLINED_FUNCTION_9_3(v31);
  (*(v35 + 8))(v16, v31);
  return v34;
}

uint64_t sub_266CDE3BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E0, &unk_266DB05F0);
  OUTLINED_FUNCTION_4_3(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_12();
  v5 = sub_266DA876C();
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  if (qword_2800C92F0 != -1)
  {
    swift_once();
  }

  v16 = qword_2800CBF88;
  type metadata accessor for FindDeviceNLIntent(0);
  OUTLINED_FUNCTION_0_53();
  sub_266CDF5A4(v17, v18);
  sub_266DA871C();
  OUTLINED_FUNCTION_61(v0, 1, v5);
  if (v19)
  {
    sub_266CDF688(v0, &qword_2800CA2E0, &unk_266DB05F0);
    return 0;
  }

  else
  {
    v20 = *(v8 + 32);
    v20(v15, v0, v5);
    (*(v8 + 16))(v13, v15, v5);
    v21 = *(v8 + 8);

    v21(v15, v5);
    MyContactNodeWrapper = type metadata accessor for FindMyContactNodeWrapper(0);
    v23 = OUTLINED_FUNCTION_7_7(MyContactNodeWrapper);
    v20((v23 + OBJC_IVAR____TtC10SiriFindMy24FindMyContactNodeWrapper_intentNode), v13, v5);
    *(v23 + OBJC_IVAR____TtC10SiriFindMy24FindMyContactNodeWrapper_ontologyNode) = v16;
  }

  return v23;
}

uint64_t sub_266CDE62C(uint64_t a1)
{
  v2 = sub_266CDF5A4(&qword_2800CC000, type metadata accessor for FindDeviceNLIntent);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_266CDE6A8(uint64_t a1)
{
  v2 = sub_266CDF5A4(&qword_2800CC000, type metadata accessor for FindDeviceNLIntent);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_266CDE714(uint64_t a1)
{
  v2 = sub_266CDF5A4(&qword_2800CC000, type metadata accessor for FindDeviceNLIntent);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_266CDE780()
{
  if (qword_2800C92D8 != -1)
  {
    OUTLINED_FUNCTION_3_31();
  }

  type metadata accessor for FindDeviceNLIntent(0);
  OUTLINED_FUNCTION_0_53();
  sub_266CDF5A4(v0, v1);
  OUTLINED_FUNCTION_9_14();
  if (v3)
  {

    return 0;
  }

  else
  {
    if (qword_2800C92C0 != -1)
    {
      OUTLINED_FUNCTION_1_36();
    }

    OUTLINED_FUNCTION_9_14();
    if (qword_2800C92E0 != -1)
    {
      OUTLINED_FUNCTION_2_35();
    }

    sub_266DA873C();
    return 1;
  }
}

id sub_266CDE900()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C95D8, &unk_266DAD560);
  OUTLINED_FUNCTION_4_3(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_12();
  type metadata accessor for DeviceQuery();
  if (qword_2800C92E0 != -1)
  {
    OUTLINED_FUNCTION_2_35();
  }

  type metadata accessor for FindDeviceNLIntent(0);
  OUTLINED_FUNCTION_0_53();
  sub_266CDF5A4(v5, v6);
  OUTLINED_FUNCTION_11_15();
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_266CAB33C(v22, v23);
  if (qword_2800C92D8 != -1)
  {
    OUTLINED_FUNCTION_3_31();
  }

  OUTLINED_FUNCTION_11_15();
  if (v23)
  {
    v9 = sub_266DAA6FC();
  }

  else
  {
    v9 = 0;
  }

  [v8 setDeviceName_];

  if (qword_2800C92C0 != -1)
  {
    OUTLINED_FUNCTION_1_36();
  }

  OUTLINED_FUNCTION_11_15();
  if (v23)
  {
    v10 = sub_266DAA6FC();
  }

  else
  {
    v10 = 0;
  }

  [v8 setDeviceType_];

  v11 = sub_266CDE3BC();
  if (v11)
  {
    sub_266CDED0C(v0);

    v12 = sub_266DA867C();
    OUTLINED_FUNCTION_61(v0, 1, v12);
    if (v13)
    {
      sub_266CDF688(v0, &qword_2800C95D8, &unk_266DAD560);
      v11 = 0;
    }

    else
    {
      PersonIntentNode.skeletonINPerson.getter();
      v11 = v14;
      OUTLINED_FUNCTION_9_3(v12);
      v16 = *(v15 + 8);
      v17 = OUTLINED_FUNCTION_14_18();
      v18(v17);
    }
  }

  [v8 setDeviceOwner_];

  sub_266CDDEC0();
  sub_266CC016C();
  sub_266CDE0E4();
  if (v19)
  {
    v20 = sub_266DAA6FC();
  }

  else
  {
    v20 = 0;
  }

  [v8 setDeviceTypeOriginalInput_];

  return v8;
}

uint64_t sub_266CDEBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266DA876C();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v4);
  MyContactNodeWrapper = type metadata accessor for FindMyContactNodeWrapper(0);
  v13 = OUTLINED_FUNCTION_7_7(MyContactNodeWrapper);
  (*(v7 + 32))(v13 + OBJC_IVAR____TtC10SiriFindMy24FindMyContactNodeWrapper_intentNode, v11, v4);
  *(v13 + OBJC_IVAR____TtC10SiriFindMy24FindMyContactNodeWrapper_ontologyNode) = a2;

  return v13;
}

uint64_t sub_266CDED0C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E0, &unk_266DB05F0);
  OUTLINED_FUNCTION_4_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = sub_266DA876C();
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v27 = v1;
  if (qword_2800C9300 != -1)
  {
    OUTLINED_FUNCTION_5_29();
  }

  type metadata accessor for FindMyContactNodeWrapper(0);
  sub_266CDF5A4(&qword_2800CBFC8, type metadata accessor for FindMyContactNodeWrapper);
  sub_266DA871C();
  OUTLINED_FUNCTION_61(v8, 1, v9);
  if (v18)
  {
    sub_266CDF688(v8, &qword_2800CA2E0, &unk_266DB05F0);
    v23 = 1;
  }

  else
  {
    (*(v12 + 32))(v17, v8, v9);
    v19 = *(v12 + 16);
    v20 = OUTLINED_FUNCTION_14_18();
    v21(v20);
    v22 = sub_266DA850C();
    OUTLINED_FUNCTION_7_7(v22);
    sub_266DA84FC();
    sub_266DA866C();
    (*(v12 + 8))(v17, v9);
    v23 = 0;
  }

  v24 = sub_266DA867C();
  return __swift_storeEnumTagSinglePayload(a1, v23, 1, v24);
}

uint64_t sub_266CDEF88()
{
  v1 = OBJC_IVAR____TtC10SiriFindMy24FindMyContactNodeWrapper_intentNode;
  v2 = sub_266DA876C();
  OUTLINED_FUNCTION_9_3(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC10SiriFindMy24FindMyContactNodeWrapper_ontologyNode);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_266CDF058()
{
  result = sub_266DA876C();
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

uint64_t sub_266CDF154@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10SiriFindMy24FindMyContactNodeWrapper_intentNode;
  v5 = sub_266DA876C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_266CDF1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_266CDEBFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266CDF20C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C1928](a1, WitnessTable);
}

uint64_t sub_266CDF270(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C1920](a1, WitnessTable);
}

uint64_t sub_266CDF2C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E8, &qword_266DB5980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DAE4A0;
  v1 = sub_266DA850C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_266DA84FC();
  v5 = MEMORY[0x277D5E210];
  *(v0 + 56) = v1;
  *(v0 + 64) = v5;
  *(v0 + 32) = v4;
  v6 = sub_266DA83FC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = sub_266DA83EC();
  qword_2800E6328 = result;
  return result;
}

uint64_t sub_266CDF394()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E8, &qword_266DB5980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DAE4A0;
  if (qword_2800C9300 != -1)
  {
    OUTLINED_FUNCTION_5_29();
  }

  v1 = qword_2800E6328;
  v2 = sub_266DA83FC();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;

  return sub_266DA83EC();
}

uint64_t sub_266CDF494()
{
  v0 = sub_266DA840C();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_266CDF5A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266CDF634(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266CDF688(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_9_3(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_36()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_31()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_14()
{

  return sub_266DA873C();
}

uint64_t OUTLINED_FUNCTION_11_15()
{

  return sub_266DA873C();
}

uint64_t sub_266CDF7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_266DA9D5C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC028, &qword_266DB59C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v53 - v13;
  sub_266DA9D1C();
  v15 = sub_266DA9EBC();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_266CDFC44(v14);
  }

  else
  {
    v16 = v3;
    v17 = sub_266DA9EAC();
    v19 = v18;
    (*(*(v15 - 8) + 8))(v14, v15);
    v20 = sub_266DA9D3C();
    if ((v21 & 1) == 0)
    {
      v22 = v20;
      v23 = sub_266DA9D4C();
      if ((v24 & 1) == 0)
      {
        v40 = v23;
        v41 = a1;
        v42._countAndFlagsBits = sub_266DAA73C();
        DefaultLocationLabel.init(rawValue:)(v42);
        v43 = LOBYTE(v56[0]);
        if (LOBYTE(v56[0]) == 5)
        {
          v44 = sub_266DAA73C();
          sub_266D91A18(v44, v45, v56);

          v46 = v57;
          if (v57 == 255)
          {
            v46 = 1;
            v43 = v17;
            v47 = v19;
          }

          else
          {
            v43 = v56[0];
            v47 = v56[1];
          }
        }

        else
        {

          v47 = 0;
          v46 = 0;
        }

        v48 = v41;
        v49 = sub_266DA9D2C();
        v51 = v50;
        result = (*(v4 + 8))(v48, v16);
        v52 = v55;
        *v55 = v43;
        *(v52 + 8) = v47;
        *(v52 + 16) = v46;
        *(v52 + 24) = v22;
        *(v52 + 32) = v40;
        *(v52 + 40) = 0;
        *(v52 + 48) = v49;
        *(v52 + 56) = v51;
        return result;
      }
    }

    v3 = v16;
  }

  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v25 = sub_266DA94AC();
  __swift_project_value_buffer(v25, &unk_28156FCA8);
  v26 = *(v4 + 16);
  v26(v10, a1, v3);
  v27 = sub_266DA948C();
  v28 = sub_266DAAAEC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v54 = a1;
    v31 = v30;
    v56[0] = v30;
    *v29 = 136315138;
    v26(v8, v10, v3);
    v32 = sub_266DAA72C();
    v34 = v33;
    v35 = *(v4 + 8);
    v35(v10, v3);
    v36 = sub_266C22A3C(v32, v34, v56);

    *(v29 + 4) = v36;
    _os_log_impl(&dword_266C08000, v27, v28, "Required fields are missing from %s. Could not make LabelledLocation", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x26D5F2480](v31, -1, -1);
    MEMORY[0x26D5F2480](v29, -1, -1);

    result = (v35)(v54, v3);
  }

  else
  {

    v38 = *(v4 + 8);
    v38(a1, v3);
    result = (v38)(v10, v3);
  }

  v39 = v55;
  *(v55 + 16) = 0u;
  *(v39 + 32) = 0u;
  *v39 = 0u;
  *(v39 + 48) = 0;
  *(v39 + 56) = 1;
  return result;
}

uint64_t sub_266CDFC44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC028, &qword_266DB59C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL String.isNotEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

uint64_t String.firstLetterCapitalized(with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC030, &qword_266DB59D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - v8;

  v23 = sub_266CDFE6C(1);
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v13 = sub_266DA750C();
  (*(*(v13 - 8) + 16))(v9, a1, v13);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
  sub_266CDFF2C();
  v14 = sub_266DAAC5C();
  v16 = v15;
  sub_266CDFF80(v9);

  v17 = sub_266CDFFE8(1uLL, a2, a3);
  v22[0] = v14;
  v22[1] = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v26 = v20;
  sub_266CE00BC();

  sub_266DAA7FC();

  return v22[0];
}

uint64_t sub_266CDFE6C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_266DAA7DC();
    v1 = sub_266DAA8AC();

    return v1;
  }

  return result;
}

unint64_t sub_266CDFF2C()
{
  result = qword_2800CC038;
  if (!qword_2800CC038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC038);
  }

  return result;
}

uint64_t sub_266CDFF80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC030, &qword_266DB59D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266CDFFE8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_266DAA7DC();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_266DAA8AC();

      return v7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_266CE00BC()
{
  result = qword_2800CC040;
  if (!qword_2800CC040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC040);
  }

  return result;
}

Swift::Void __swiftcall String.setIfNotNil(_:)(Swift::String_optional a1)
{
  if (a1.value._object)
  {
    object = a1.value._object;
    countAndFlagsBits = a1.value._countAndFlagsBits;
    v4 = v1[1];

    *v1 = countAndFlagsBits;
    v1[1] = object;
  }
}

BOOL Optional<A>.existsAndNotEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 != 0;
  return a2 && v3;
}

uint64_t sub_266CE017C()
{
  v0 = sub_266DA750C();
  __swift_allocate_value_buffer(v0, qword_2800E6350);
  __swift_project_value_buffer(v0, qword_2800E6350);
  return sub_266DA74BC();
}

void sub_266CE01DC(id *a1)
{
  v1 = *a1;
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    v6 = sub_266CC8C30();
    v8 = sub_266C22A3C(v6, v7, &v9);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_266C08000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x26D5F2480](v5, -1, -1);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }
}

uint64_t sub_266CE02F0(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E75;
    case 2:
      return 0x6C62697369766E69;
    case 1:
      return 0x656C6269736976;
  }

  result = sub_266DAB1DC();
  __break(1u);
  return result;
}

uint64_t sub_266CE0384@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a3;
  v18 = a1;
  v5 = sub_266DA9EFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v19 = a2;
  v11 = *(a2 + 16);
  v12 = (v6 + 8);
  while (1)
  {
    if (v11 == v10)
    {
      v14 = 1;
      v15 = v17;
      return __swift_storeEnumTagSinglePayload(v15, v14, 1, v5);
    }

    (*(v6 + 16))(v9, v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v5);
    v13 = v18(v9);
    if (v3)
    {
      return (*v12)(v9, v5);
    }

    if (v13)
    {
      break;
    }

    (*v12)(v9, v5);
    ++v10;
  }

  v15 = v17;
  (*(v6 + 32))(v17, v9, v5);
  v14 = 0;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v5);
}

uint64_t sub_266CE0540(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v3);
  result = v3;
  if (v4 == 1)
  {
    return sub_266CE0590(v3 & 1);
  }

  return result;
}

uint64_t sub_266CE0590(char a1)
{
  v1 = a1 & 1;
  sub_266C562D0();
  result = sub_266DAB15C();
  if (!result)
  {
    result = swift_allocError();
    *v3 = v1;
  }

  return result;
}

uint64_t sub_266CE05F8()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CC048);
  v1 = __swift_project_value_buffer(v0, qword_2800CC048);
  if (qword_2800C9120 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800C9800);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266CE06C0()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC178, &qword_266DB5CC0);
  OUTLINED_FUNCTION_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  v18[1] = *(v0 + 16);
  *(swift_allocObject() + 16) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA910, &qword_266DB20D8);
  OUTLINED_FUNCTION_4_29();
  sub_266C230E8(v13, v14, &qword_266DB20D8);
  sub_266CE5DC8();
  sub_266DA98FC();

  v15 = swift_allocObject();
  *(v15 + 16) = v6;
  *(v15 + 24) = v4;
  *(v15 + 32) = v2;
  v16 = &v12[*(v7 + 44)];
  *v16 = sub_266CE5E1C;
  *(v16 + 1) = v15;
  OUTLINED_FUNCTION_9_15();
  sub_266C230E8(v17, &qword_2800CC178, &qword_266DB5CC0);

  OUTLINED_FUNCTION_26_8();
  sub_266DA97EC();
  sub_266C1825C(v12, &qword_2800CC178, &qword_266DB5CC0);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CE0888(uint64_t a1, uint64_t a2, void *a3)
{
  v16[0] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC0C0, &qword_266DB5C40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v16[1] = *(v3 + 16);
  *(swift_allocObject() + 16) = a3;

  v10 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA910, &qword_266DB20D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
  sub_266C230E8(&qword_2800CA918, &qword_2800CA910, &qword_266DB20D8);
  sub_266DA98FC();

  v11 = swift_allocObject();
  v11[2] = v16[0];
  v11[3] = a2;
  v11[4] = a3;
  v12 = &v9[*(v6 + 44)];
  *v12 = sub_266CE5BE8;
  *(v12 + 1) = v11;
  v13 = a3;
  sub_266C230E8(&qword_2800CC0C8, &qword_2800CC0C0, &qword_266DB5C40);

  v14 = sub_266DA97EC();
  sub_266C1825C(v9, &qword_2800CC0C0, &qword_266DB5C40);
  return v14;
}

uint64_t sub_266CE0AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _BYTE *a5@<X8>)
{
  v38 = a4;
  v40 = a5;
  v39 = type metadata accessor for Friend();
  v8 = *(v39 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v39);
  v37 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = (&v37 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C8, &unk_266DB2130);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC188, &qword_266DB5CC8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v37 - v23;
  v25 = 0;
  v26 = *(a1 + 16);
  while (v26 != v25)
  {
    sub_266C676D4(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25, v13);
    v27 = *v13 == a2 && v13[1] == a3;
    if (v27 || (sub_266DAB17C() & 1) != 0)
    {
      sub_266C72608(v13, v20);
      v28 = 0;
      goto LABEL_11;
    }

    sub_266C701F4(v13);
    ++v25;
  }

  v28 = 1;
LABEL_11:
  v29 = v39;
  __swift_storeEnumTagSinglePayload(v20, v28, 1, v39);
  sub_266CE5D14(v20, v18, &qword_2800CA8C8, &unk_266DB2130);
  if (__swift_getEnumTagSinglePayload(v18, 1, v29) == 1)
  {
    sub_266C1825C(v20, &qword_2800CA8C8, &unk_266DB2130);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC190, &qword_266DB5CD0);
    v31 = v24;
    v32 = 1;
  }

  else
  {
    v33 = v37;
    sub_266C72608(v18, v37);
    sub_266C676D4(v33, v24);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC190, &qword_266DB5CD0);
    swift_storeEnumTagMultiPayload();
    sub_266C701F4(v33);
    sub_266C1825C(v20, &qword_2800CA8C8, &unk_266DB2130);
    v31 = v24;
    v32 = 0;
    v30 = v34;
  }

  __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC190, &qword_266DB5CD0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v35) != 1)
  {
    return sub_266CE5E28(v24, v40, &qword_2800CC190, &qword_266DB5CD0);
  }

  *v40 = v38;
  swift_storeEnumTagMultiPayload();
  result = __swift_getEnumTagSinglePayload(v24, 1, v35);
  if (result != 1)
  {
    return sub_266C1825C(v24, &qword_2800CC188, &qword_266DB5CC8);
  }

  return result;
}

id sub_266CE0EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v40 = a4;
  v42 = a5;
  v41 = type metadata accessor for Friend();
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v41);
  v39 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = (&v39 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C8, &unk_266DB2130);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC0D0, &qword_266DB5C48);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v39 - v23;
  v25 = 0;
  v26 = *(a1 + 16);
  while (v26 != v25)
  {
    sub_266C676D4(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25, v13);
    v27 = *v13 == a2 && v13[1] == a3;
    if (v27 || (sub_266DAB17C() & 1) != 0)
    {
      sub_266C72608(v13, v20);
      v28 = 0;
      goto LABEL_11;
    }

    sub_266C701F4(v13);
    ++v25;
  }

  v28 = 1;
LABEL_11:
  v29 = v41;
  __swift_storeEnumTagSinglePayload(v20, v28, 1, v41);
  sub_266CE5D14(v20, v18, &qword_2800CA8C8, &unk_266DB2130);
  if (__swift_getEnumTagSinglePayload(v18, 1, v29) == 1)
  {
    sub_266C1825C(v20, &qword_2800CA8C8, &unk_266DB2130);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC0D8, &qword_266DB5C50);
    v31 = v24;
    v32 = 1;
  }

  else
  {
    v33 = v39;
    sub_266C72608(v18, v39);
    sub_266C676D4(v33, v24);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC0D8, &qword_266DB5C50);
    swift_storeEnumTagMultiPayload();
    sub_266C701F4(v33);
    sub_266C1825C(v20, &qword_2800CA8C8, &unk_266DB2130);
    v31 = v24;
    v32 = 0;
    v30 = v34;
  }

  __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC0D8, &qword_266DB5C50);
  if (__swift_getEnumTagSinglePayload(v24, 1, v35) != 1)
  {
    return sub_266CE5E28(v24, v42, &qword_2800CC0D8, &qword_266DB5C50);
  }

  v36 = v40;
  *v42 = v40;
  swift_storeEnumTagMultiPayload();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v35);
  result = v36;
  if (EnumTagSinglePayload != 1)
  {
    return sub_266C1825C(v24, &qword_2800CC0D0, &qword_266DB5C48);
  }

  return result;
}

void sub_266CE1280()
{
  OUTLINED_FUNCTION_6();
  v22 = v0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB100, &qword_266DB3408);
  OUTLINED_FUNCTION_0_2(v21);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC150, &qword_266DB5CB0);
  OUTLINED_FUNCTION_7_7(v8);
  v9 = sub_266DA96FC();
  v24[4] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB0A0, &qword_266DB33D0);
  OUTLINED_FUNCTION_7_7(v10);

  v24[5] = sub_266DA96FC();
  LOBYTE(v23) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA1F8, &qword_266DB0290);
  OUTLINED_FUNCTION_7_7(v11);

  v12 = sub_266DA973C();
  v24[6] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB038, &qword_266DB3398);
  OUTLINED_FUNCTION_7_7(v13);

  v24[7] = sub_266DA96FC();
  v24[8] = MEMORY[0x277D84FA0];
  v23 = v9;
  sub_266C230E8(&qword_2800CC158, &qword_2800CC150, &qword_266DB5CB0);

  sub_266DA98AC();

  sub_266C9D670();
  v15 = v14;
  (*(v2 + 8))(v7, v21);
  v24[0] = v15;

  sub_266C9D920();
  v17 = v16;

  v24[1] = v17;

  sub_266C9DBFC();
  v19 = v18;

  v24[3] = v19;
  v23 = v12;
  sub_266C230E8(&qword_2800CC160, &qword_2800CA1F8, &qword_266DB0290);

  OUTLINED_FUNCTION_26_8();
  v20 = sub_266DA97EC();

  v24[2] = v20;
  v23 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA910, &qword_266DB20D8);
  sub_266C230E8(&qword_2800CA918, &qword_2800CA910, &qword_266DB20D8);
  OUTLINED_FUNCTION_23_11();
  sub_266DA986C();

  sub_266DA968C();

  v23 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA9C8, qword_266DB2160);
  sub_266C230E8(&qword_2800CA9D0, &qword_2800CA9C8, qword_266DB2160);
  OUTLINED_FUNCTION_23_11();
  sub_266DA986C();

  sub_266DA968C();

  v23 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC168, &qword_266DB5CB8);
  sub_266C230E8(&qword_2800CC170, &qword_2800CC168, &qword_266DB5CB8);
  OUTLINED_FUNCTION_23_11();
  sub_266DA986C();

  sub_266DA968C();

  memcpy(v22, v24, 0x48uLL);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CE170C(uint64_t *a1)
{
  v2 = type metadata accessor for Friend();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(*a1 + 16);
  if (!v9)
  {
    return 1;
  }

  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {
      return 0;
    }

    if (v10 >= *(v8 + 16))
    {
      break;
    }

    sub_266C676D4(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10++, v7);
    v11 = *(v7 + 5);

    result = sub_266C701F4(v7);
    if (v11)
    {

      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_266CE1828()
{
  v1 = v0;
  v2 = v0[4];
  sub_266DA96CC();
  v3 = v1[5];
  sub_266DA96CC();
  v4 = v1[6];
  sub_266DA970C();
  v5 = v1[8];
  if ((v5 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_266DAAD4C();
    sub_266DA96AC();
    sub_266CE5D78(&qword_2800CC130, MEMORY[0x277CBCDA8]);
    result = sub_266DAAA4C();
    v5 = 1;
    v7 = v20;
    v8 = v21;
    v9 = v22;
    v10 = v23;
  }

  else
  {
    v11 = -1 << *(v5 + 32);
    v7 = v5 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v5 + 56);

    v9 = 0;
  }

  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v9;
    v15 = v10;
    v16 = v9;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
      return sub_266C33DE8();
    }

    while (1)
    {
      sub_266DA969C();

      v9 = v16;
      v10 = v17;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_266DAAD6C())
      {
        sub_266DA96AC();
        swift_dynamicCast();
        v16 = v9;
        v17 = v10;
        if (v19)
        {
          continue;
        }
      }

      return sub_266C33DE8();
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v8 + 64) >> 6))
    {
      return sub_266C33DE8();
    }

    v15 = *(v7 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_266CE1A50(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC128, &qword_266DB5C98);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v90 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v88 = &v88 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v89 = &v88 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v88 - v12;
  v14 = sub_266DA9F6C();
  v95 = *(v14 - 8);
  v15 = *(v95 + 8);
  v16 = MEMORY[0x28223BE20](v14);
  v91 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v92 = &v88 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v88 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v88 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v88 - v26;
  v28 = OBJC_IVAR____TtC10SiriFindMy17FMFManagerWrapper_liveFriend;
  swift_beginAccess();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2 + v28, 1, v14);
  v30 = 0;
  v31 = 0;
  v94 = a1;
  if (!EnumTagSinglePayload)
  {
    v32 = v22;
    v33 = v25;
    v34 = v14;
    v35 = v95;
    (*(v95 + 2))(v27, v2 + v28, v34);
    v30 = sub_266DA9F0C();
    v31 = v36;
    v37 = v35;
    v14 = v34;
    v25 = v33;
    v22 = v32;
    a1 = v94;
    (*(v37 + 1))(v27, v14);
  }

  v93 = v2;
  sub_266CE5D14(a1, v13, &qword_2800CC128, &qword_266DB5C98);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    result = sub_266C1825C(v13, &qword_2800CC128, &qword_266DB5C98);
    v39 = v95;
    if (!v31)
    {
      return result;
    }

    goto LABEL_16;
  }

  v40 = sub_266DA9F0C();
  v42 = v41;
  v39 = v95;
  result = (*(v95 + 1))(v13, v14);
  if (!v31)
  {
    if (!v42)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!v42)
  {
LABEL_16:

    goto LABEL_17;
  }

  if (v30 == v40 && v31 == v42)
  {
  }

  v44 = sub_266DAB17C();

  if ((v44 & 1) == 0)
  {
LABEL_17:
    v45 = v93;
    v46 = v89;
    sub_266CE5D14(v93 + v28, v89, &qword_2800CC128, &qword_266DB5C98);
    v47 = 0x2800C9000;
    if (__swift_getEnumTagSinglePayload(v46, 1, v14) == 1)
    {
      sub_266C1825C(v46, &qword_2800CC128, &qword_266DB5C98);
      v49 = v91;
      v48 = v92;
      v50 = v90;
      v51 = v94;
      goto LABEL_37;
    }

    (*(v39 + 4))(v25, v46, v14);
    v95 = v25;
    v52 = sub_266DA9F0C();
    v54 = v53;
    v51 = v94;
    v55 = v88;
    sub_266CE5D14(v94, v88, &qword_2800CC128, &qword_266DB5C98);
    if (__swift_getEnumTagSinglePayload(v55, 1, v14) == 1)
    {
      sub_266C1825C(v55, &qword_2800CC128, &qword_266DB5C98);

LABEL_21:
      if (qword_2800C9310 != -1)
      {
        swift_once();
      }

      v56 = sub_266DA94AC();
      __swift_project_value_buffer(v56, qword_2800CC048);
      (*(v39 + 2))(v22, v95, v14);
      v57 = sub_266DA948C();
      v58 = sub_266DAAB0C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v96 = v60;
        *v59 = 136315138;
        v89 = sub_266DA9F0C();
        v62 = v61;
        v63 = *(v39 + 1);
        v63(v22, v14);
        v64 = sub_266C22A3C(v89, v62, &v96);
        v45 = v93;

        *(v59 + 4) = v64;
        _os_log_impl(&dword_266C08000, v57, v58, "Stopping live locations for: %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x26D5F2480](v60, -1, -1);
        v65 = v59;
        v51 = v94;
        MEMORY[0x26D5F2480](v65, -1, -1);
      }

      else
      {

        v63 = *(v39 + 1);
        v63(v22, v14);
      }

      v49 = v91;
      v48 = v92;
      v73 = *(v45 + 88);
      v74 = v95;
      sub_266DA9A9C();
      v63(v74, v14);
      v50 = v90;
      goto LABEL_36;
    }

    v66 = sub_266DA9F0C();
    v68 = v67;
    v69 = v55;
    v70 = *(v39 + 1);
    v70(v69, v14);
    if (v52 == v66 && v54 == v68)
    {

      v51 = v94;
    }

    else
    {
      v72 = sub_266DAB17C();

      v51 = v94;
      if ((v72 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v70(v95, v14);
    v49 = v91;
    v48 = v92;
    v50 = v90;
LABEL_36:
    v47 = 0x2800C9000uLL;
LABEL_37:
    sub_266CE5D14(v51, v50, &qword_2800CC128, &qword_266DB5C98);
    if (__swift_getEnumTagSinglePayload(v50, 1, v14) == 1)
    {
      return sub_266C1825C(v50, &qword_2800CC128, &qword_266DB5C98);
    }

    else
    {
      (*(v39 + 4))(v48, v50, v14);
      if (*(v47 + 784) != -1)
      {
        swift_once();
      }

      v75 = sub_266DA94AC();
      __swift_project_value_buffer(v75, qword_2800CC048);
      (*(v39 + 2))(v49, v48, v14);
      v76 = sub_266DA948C();
      v77 = sub_266DAAB0C();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v96 = v79;
        *v78 = 136315138;
        v80 = sub_266DA9F0C();
        v81 = v49;
        v83 = v82;
        v84 = *(v39 + 1);
        v84(v81, v14);
        v85 = sub_266C22A3C(v80, v83, &v96);

        *(v78 + 4) = v85;
        _os_log_impl(&dword_266C08000, v76, v77, "Starting live locations for: %s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v79);
        v86 = v79;
        v48 = v92;
        MEMORY[0x26D5F2480](v86, -1, -1);
        MEMORY[0x26D5F2480](v78, -1, -1);
      }

      else
      {

        v84 = *(v39 + 1);
        v84(v49, v14);
      }

      v87 = *(v93 + 88);
      sub_266DA9ABC();
      return (v84)(v48, v14);
    }
  }

  return result;
}

void sub_266CE236C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v23 = v2;
  v4 = sub_266DA9C2C();
  v5 = OUTLINED_FUNCTION_4_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_6();
  v8 = sub_266DA9D6C();
  v9 = OUTLINED_FUNCTION_4_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_6();
  v22 = sub_266DA750C();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_6();
  v16 = v15 - v14;
  sub_266CE1280();
  memcpy((v0 + 16), v24, 0x48uLL);
  v17 = OBJC_IVAR____TtC10SiriFindMy17FMFManagerWrapper_liveFriend;
  v18 = sub_266DA9F6C();
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  *(v1 + OBJC_IVAR____TtC10SiriFindMy17FMFManagerWrapper_errored) = 0;
  sub_266DA9E0C();
  (*(v12 + 16))(v16, v3, v22);
  sub_266DA9DEC();
  sub_266DA9DDC();

  sub_266DA9DEC();
  sub_266DA9DBC();

  sub_266DA9DEC();
  sub_266DA9DFC();

  sub_266DA9DCC();

  sub_266DA9C1C();
  v19 = sub_266DA9B1C();
  OUTLINED_FUNCTION_7_7(v19);
  *(v1 + 88) = sub_266DA9A6C();
  sub_266CE5D78(&qword_2800CC148, type metadata accessor for FMFManagerWrapper);

  sub_266DA9B0C();

  v20 = *(v1 + 88);

  sub_266DA9A4C();

  v21 = *(v1 + 88);
  sub_266DA9A8C();

  (*(v12 + 8))(v23, v22);
  OUTLINED_FUNCTION_5();
}

void sub_266CE2650()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  if (qword_2800C9310 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  v2 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v2, qword_2800CC048);
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v4))
  {
    v5 = OUTLINED_FUNCTION_11();
    *v5 = 0;
    _os_log_impl(&dword_266C08000, v3, v4, "FMFManagerWrapper deinit", v5, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  sub_266CE28F0();
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v13 = v1[9];
  v14 = v1[10];

  v15 = v1[11];

  sub_266C1825C(v1 + OBJC_IVAR____TtC10SiriFindMy17FMFManagerWrapper_liveFriend, &qword_2800CC128, &qword_266DB5C98);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CE2794()
{
  sub_266CE2650();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for FMFManagerWrapper()
{
  result = qword_2800CC068;
  if (!qword_2800CC068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266CE2840()
{
  sub_266CE5584();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_266CE28F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC128, &qword_266DB5C98);
  OUTLINED_FUNCTION_4_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v7 = __dst - v6 + 22;
  if (qword_2800C9310 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  v8 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v8, qword_2800CC048);
  v9 = sub_266DA948C();
  v10 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v10))
  {
    *OUTLINED_FUNCTION_11() = 0;
    OUTLINED_FUNCTION_13_14();
    _os_log_impl(v11, v12, v13, v14, v15, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  memcpy(__dst, (v1 + 16), sizeof(__dst));
  sub_266CE1828();
  v16 = sub_266DA9F6C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v16);
  sub_266CE1A50(v7);
  v17 = OBJC_IVAR____TtC10SiriFindMy17FMFManagerWrapper_liveFriend;
  swift_beginAccess();
  sub_266CE5CA4(v7, v1 + v17);
  swift_endAccess();
  v18 = *(v1 + 88);
  return sub_266DA9A7C();
}

void sub_266CE2A64()
{
  OUTLINED_FUNCTION_6();
  v20 = v1;
  v3 = v2;
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC138, &unk_266DB5CA0);
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v21 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_5();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v22 = *(v0 + 16);
  OUTLINED_FUNCTION_26_0();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA910, &qword_266DB20D8);
  type metadata accessor for Friend();
  OUTLINED_FUNCTION_4_29();
  sub_266C230E8(v15, v16, &qword_266DB20D8);
  sub_266DA97FC();

  v17 = swift_allocObject();
  v17[2] = v0;
  v17[3] = v20;
  v17[4] = v3;

  sub_266DA95CC();

  v18 = *(v21 + 8);
  v18(v12, v5);
  sub_266C230E8(&qword_2800CC140, &qword_2800CC138, &unk_266DB5CA0);
  sub_266DA97EC();
  v19 = OUTLINED_FUNCTION_26_8();
  (v18)(v19);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CE2CC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Friend();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = 0;
  v15 = *a1;
  v16 = *(v15 + 16);
  while (1)
  {
    if (v16 == v14)
    {
      v18 = 1;
      return __swift_storeEnumTagSinglePayload(a4, v18, 1, v8);
    }

    if (v14 >= *(v15 + 16))
    {
      break;
    }

    sub_266C676D4(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, v13);
    v17 = *v13 == a2 && v13[1] == a3;
    if (v17 || (sub_266DAB17C() & 1) != 0)
    {
      sub_266C72608(v13, a4);
      v18 = 0;
      return __swift_storeEnumTagSinglePayload(a4, v18, 1, v8);
    }

    result = sub_266C701F4(v13);
    ++v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_266CE2E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_266CE2E80();

  return sub_266C676D4(a1, a2);
}

void sub_266CE2E80()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC128, &qword_266DB5C98);
  OUTLINED_FUNCTION_4_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v46 = &v44 - v10;
  v50 = sub_266DA9F6C();
  v11 = OUTLINED_FUNCTION_0_2(v50);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_21_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17_16();
  v45 = v17;
  v47 = v0;
  v18 = *(v0 + 88);
  v19 = sub_266DA9AEC();
  v20 = 0;
  v48 = *(v19 + 16);
  v49 = v13 + 16;
  while (v48 != v20)
  {
    if (v20 >= *(v19 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    v21 = *(v13 + 80);
    OUTLINED_FUNCTION_8_9();
    v23 = *(v13 + 16);
    v23(v1, v19 + v22 + *(v13 + 72) * v20, v50);
    if (sub_266DA9F0C() == v5 && v24 == v3)
    {

LABEL_15:

      v39 = v45;
      v40 = v50;
      (*(v13 + 32))(v45, v1, v50);
      v41 = v46;
      v23(v46, v39, v40);
      __swift_storeEnumTagSinglePayload(v41, 0, 1, v40);
      v42 = v47;
      sub_266CE1A50(v41);
      (*(v13 + 8))(v39, v40);
      v43 = OBJC_IVAR____TtC10SiriFindMy17FMFManagerWrapper_liveFriend;
      swift_beginAccess();
      sub_266CE5CA4(v41, v42 + v43);
      swift_endAccess();
      goto LABEL_16;
    }

    v26 = v5;
    v27 = v3;
    v28 = sub_266DAB17C();

    if (v28)
    {
      goto LABEL_15;
    }

    (*(v13 + 8))(v1, v50);
    ++v20;
    v3 = v27;
    v5 = v26;
  }

  if (qword_2800C9310 == -1)
  {
    goto LABEL_11;
  }

LABEL_18:
  OUTLINED_FUNCTION_0_54();
LABEL_11:
  v29 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v29, qword_2800CC048);

  v30 = sub_266DA948C();
  v31 = sub_266DAAAEC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_14_0();
    v33 = OUTLINED_FUNCTION_13_0();
    v51 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_266C22A3C(v5, v3, &v51);
    OUTLINED_FUNCTION_13_14();
    _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

LABEL_16:
  OUTLINED_FUNCTION_5();
}

void sub_266CE31F8()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v77 = sub_266DA9F6C();
  v4 = OUTLINED_FUNCTION_0_2(v77);
  v85 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_5();
  v84 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_16();
  v83 = v11;
  v12 = type metadata accessor for Friend();
  v82 = *(v12 - 8);
  v13 = *(v82 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_0_6();
  v16 = v15 - v14;
  v17 = sub_266DA9D5C();
  v18 = OUTLINED_FUNCTION_0_2(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_5();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v75 - v27;
  if (qword_2800C9310 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  v76 = v16;
  v29 = sub_266DA94AC();
  v78 = __swift_project_value_buffer(v29, qword_2800CC048);
  v30 = sub_266DA948C();
  v31 = sub_266DAAB0C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_11();
    *v32 = 0;
    _os_log_impl(&dword_266C08000, v30, v31, "FMFManager did complete first fetch.", v32, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v33 = sub_266DA9AAC();
  if (!v33)
  {
    v33 = MEMORY[0x277D84F90];
  }

  v34 = *(v33 + 16);
  v79 = v1;
  if (v34)
  {
    v75[1] = v3;
    v37 = *(v20 + 16);
    v36 = v20 + 16;
    v35 = v37;
    v38 = *(v36 + 64);
    OUTLINED_FUNCTION_8_9();
    v75[0] = v39;
    v41 = v39 + v40;
    v42 = *(v36 + 56);
    v43 = MEMORY[0x277D84F90];
    v81 = v25;
    v80 = v42;
    do
    {
      v35(v28, v41, v17);
      v35(v25, v28, v17);
      sub_266CDF7CC(v25, v87);
      (*(v36 - 8))(v28, v17);
      if (v87[7] == 1)
      {
        OUTLINED_FUNCTION_2_36();
        sub_266C1825C(&v86, &qword_2800CC470, &qword_266DB5C80);
      }

      else
      {
        OUTLINED_FUNCTION_2_36();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = *(v43 + 16);
          sub_266CFA75C();
          v43 = v48;
        }

        v45 = *(v43 + 16);
        v44 = *(v43 + 24);
        if (v45 >= v44 >> 1)
        {
          OUTLINED_FUNCTION_3_21(v44);
          sub_266CFA75C();
          v43 = v49;
        }

        OUTLINED_FUNCTION_18_13();
        *(v43 + 16) = v45 + 1;
        OUTLINED_FUNCTION_25_9(v43 + (v45 << 6), v46);
        v25 = v81;
        v42 = v80;
      }

      v41 += v42;
      --v34;
    }

    while (v34);

    v1 = v79;
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  v50 = sub_266DA948C();
  v51 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v51))
  {
    v52 = OUTLINED_FUNCTION_14_0();
    *v52 = 134217984;
    *(v52 + 4) = *(v43 + 16);

    _os_log_impl(&dword_266C08000, v50, v51, "Labelled locations initialized (count: %ld)", v52, 0xCu);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
  }

  v53 = v1[7];
  v87[0] = v43;
  sub_266DA96DC();

  v54 = v1[6];
  v55 = sub_266DA9AEC();
  v56 = *(v55 + 16);
  if (v56)
  {
    v80 = v54;
    v87[0] = MEMORY[0x277D84F90];
    sub_266C38B40();
    v57 = v87[0];
    v58 = *(v85 + 16);
    v59 = *(v85 + 80);
    OUTLINED_FUNCTION_8_9();
    v78 = v55;
    v61 = v55 + v60;
    v81 = *(v62 + 56);
    v85 = v62;
    v63 = (v62 - 8);
    v64 = v77;
    v65 = v76;
    do
    {
      v66 = v83;
      v67 = OUTLINED_FUNCTION_26_8();
      v58(v67);
      v68 = v84;
      (v58)(v84, v66, v64);
      sub_266D7E93C(v68, v65);
      (*v63)(v66, v64);
      v87[0] = v57;
      v70 = *(v57 + 16);
      v69 = *(v57 + 24);
      if (v70 >= v69 >> 1)
      {
        OUTLINED_FUNCTION_3_21(v69);
        sub_266C38B40();
        v64 = v77;
        v57 = v87[0];
      }

      *(v57 + 16) = v70 + 1;
      v71 = *(v82 + 80);
      OUTLINED_FUNCTION_8_9();
      sub_266C72608(v65, v57 + v72 + *(v73 + 72) * v70);
      v61 += v81;
      --v56;
    }

    while (v56);

    v1 = v79;
  }

  else
  {

    v57 = MEMORY[0x277D84F90];
  }

  v87[0] = v57;
  sub_266DA96DC();

  v74 = v1[8];
  LOBYTE(v87[0]) = 1;
  sub_266DA971C();
  OUTLINED_FUNCTION_5();
}

void sub_266CE386C(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_2800C9310 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  v5 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v5, qword_2800CC048);
  v6 = a2;
  v7 = sub_266DA948C();
  v8 = sub_266DAAAEC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_14_0();
    v10 = OUTLINED_FUNCTION_13_0();
    v22 = v10;
    *v9 = 136315138;
    v11 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFC0, &qword_266DB5C90);
    v12 = sub_266DAA72C();
    v14 = sub_266C22A3C(v12, v13, &v22);

    *(v9 + 4) = v14;
    OUTLINED_FUNCTION_13_14();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  *(v3 + OBJC_IVAR____TtC10SiriFindMy17FMFManagerWrapper_errored) = 1;
  v20 = *(v3 + 48);
  v22 = a2;
  v21 = a2;
  sub_266DA96CC();
}

void sub_266CE39E0()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v67 = sub_266DA9F6C();
  v4 = OUTLINED_FUNCTION_0_2(v67);
  v72 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_5();
  v71 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_16();
  v70 = v11;
  v12 = type metadata accessor for Friend();
  v69 = *(v12 - 8);
  v13 = *(v69 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_0_6();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC120, &qword_266DB5C88);
  v18 = OUTLINED_FUNCTION_4_3(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_5();
  v68 = v21 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v60 - v24;
  if (qword_2800C9310 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v26 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v26, qword_2800CC048);

    v27 = sub_266DA948C();
    v28 = sub_266DAAB0C();
    if (!OUTLINED_FUNCTION_16_0(v28))
    {
      break;
    }

    v63 = v28;
    v64 = v27;
    v65 = v1;
    v66 = v16;
    v29 = swift_slowAlloc();
    v30 = 0;
    *v29 = 134218240;
    v16 = *(v3 + 16);
    *(v29 + 4) = v16;
    v62 = v29;
    *(v29 + 12) = 2048;
    while (1)
    {
      if (v16 == v30)
      {
        v38 = 0;
LABEL_23:
        v42 = v62;
        *(v62 + 14) = v38;

        v43 = v64;
        _os_log_impl(&dword_266C08000, v64, v63, "Friends changed (count: %ld, with location: %ld)", v42, 0x16u);
        OUTLINED_FUNCTION_6_1();

        v1 = v65;
        v16 = v66;
        goto LABEL_24;
      }

      v31 = *(v72 + 80);
      OUTLINED_FUNCTION_8_9();
      v33 = *(v32 + 72);
      sub_266DA9F5C();
      v34 = sub_266DA9BDC();
      if (__swift_getEnumTagSinglePayload(v25, 1, v34) == 1)
      {
        sub_266C1825C(v25, &qword_2800CC120, &qword_266DB5C88);
        goto LABEL_8;
      }

      v35 = sub_266DA9BCC();
      OUTLINED_FUNCTION_9_3(v34);
      v37 = *(v36 + 8);
      v1 = v36 + 8;
      v37(v25, v34);
      if (v35)
      {
        break;
      }

LABEL_8:
      ++v30;
    }

    v39 = 0;
    v60 = v3;
LABEL_12:

    v40 = __OFADD__(v39, 1);
    v25 = v39 + 1;
    v61 = v25;
    if (v40)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    if (v30 == v16)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v3 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v3 == v16)
      {
        v3 = v60;
        v38 = v61;
        goto LABEL_23;
      }

      if (v3 >= v16)
      {
        goto LABEL_31;
      }

      v25 = v16;
      v41 = v68;
      sub_266DA9F5C();
      if (__swift_getEnumTagSinglePayload(v41, 1, v34) == 1)
      {
        sub_266C1825C(v41, &qword_2800CC120, &qword_266DB5C88);
      }

      else
      {
        v35 = sub_266DA9BCC();
        v37(v41, v34);
        if (v35)
        {
          ++v30;
          v16 = v25;
          v39 = v61;
          goto LABEL_12;
        }
      }

      ++v30;
      v16 = v25;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    OUTLINED_FUNCTION_0_54();
  }

LABEL_24:
  v44 = *(v3 + 16);
  v45 = MEMORY[0x277D84F90];
  if (v44)
  {
    v66 = *(v1 + 48);
    v73 = MEMORY[0x277D84F90];
    sub_266C38B40();
    v45 = v73;
    v46 = *(v72 + 16);
    v47 = *(v72 + 80);
    OUTLINED_FUNCTION_8_9();
    v49 = v3 + v48;
    v68 = *(v50 + 56);
    v72 = v50;
    v51 = (v50 - 8);
    v52 = v67;
    do
    {
      v53 = v70;
      v46(v70, v49, v52);
      v54 = v71;
      v46(v71, v53, v52);
      sub_266D7E93C(v54, v16);
      (*v51)(v53, v52);
      v73 = v45;
      v56 = *(v45 + 16);
      v55 = *(v45 + 24);
      if (v56 >= v55 >> 1)
      {
        OUTLINED_FUNCTION_3_21(v55);
        sub_266C38B40();
        v52 = v67;
        v45 = v73;
      }

      *(v45 + 16) = v56 + 1;
      v57 = *(v69 + 80);
      OUTLINED_FUNCTION_8_9();
      sub_266C72608(v16, v45 + v58 + *(v59 + 72) * v56);
      v49 += v68;
      --v44;
    }

    while (v44);
  }

  v73 = v45;
  sub_266DA96DC();

  OUTLINED_FUNCTION_5();
}

void sub_266CE3F20()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v4 = sub_266DA9D5C();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_5();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v35 - v14;
  if (qword_2800C9310 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  v16 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v16, qword_2800CC048);

  v17 = sub_266DA948C();
  v18 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v18))
  {
    v19 = OUTLINED_FUNCTION_14_0();
    *v19 = 134217984;
    *(v19 + 4) = *(v3 + 16);

    _os_log_impl(&dword_266C08000, v17, v18, "Labelled locations changed (count: %ld)", v19, 0xCu);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
  }

  v35[1] = *(v1 + 56);
  v20 = *(v3 + 16);
  if (v20)
  {
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 64);
    OUTLINED_FUNCTION_8_9();
    v26 = v3 + v25;
    v27 = *(v22 + 56);
    v28 = MEMORY[0x277D84F90];
    v37 = v12;
    v36 = v27;
    do
    {
      v21(v15, v26, v4);
      v21(v12, v15, v4);
      sub_266CDF7CC(v12, v39);
      (*(v22 - 8))(v15, v4);
      if (v39[7] == 1)
      {
        OUTLINED_FUNCTION_2_36();
        sub_266C1825C(&v38, &qword_2800CC470, &qword_266DB5C80);
      }

      else
      {
        OUTLINED_FUNCTION_2_36();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = *(v28 + 16);
          sub_266CFA75C();
          v28 = v33;
        }

        v30 = *(v28 + 16);
        v29 = *(v28 + 24);
        if (v30 >= v29 >> 1)
        {
          OUTLINED_FUNCTION_3_21(v29);
          sub_266CFA75C();
          v28 = v34;
        }

        OUTLINED_FUNCTION_18_13();
        *(v28 + 16) = v30 + 1;
        OUTLINED_FUNCTION_25_9(v28 + (v30 << 6), v31);
        v12 = v37;
        v27 = v36;
      }

      v26 += v27;
      --v20;
    }

    while (v20);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v39[0] = v28;
  sub_266DA96DC();

  OUTLINED_FUNCTION_5();
}

void sub_266CE420C()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC118, &qword_266DB5C78);
  OUTLINED_FUNCTION_4_3(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = v34 - v11;
  v13 = sub_266DA9F9C();
  v14 = OUTLINED_FUNCTION_0_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_21_12();
  MEMORY[0x28223BE20](v19);
  v21 = v34 - v20;
  if (qword_2800C9310 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  v22 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v22, qword_2800CC048);
  v23 = *(v16 + 16);
  v35 = v4;
  v36 = v23;
  v23(v21, v4, v13);
  v24 = sub_266DA948C();
  v25 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v25))
  {
    v26 = OUTLINED_FUNCTION_14_0();
    v34[0] = v12;
    v27 = v26;
    v28 = OUTLINED_FUNCTION_13_0();
    v34[1] = v6;
    v29 = v28;
    v37 = v28;
    *v27 = 136315138;
    v36(v1, v21, v13);
    v30 = sub_266DAA72C();
    v34[2] = v2;
    v32 = v31;
    (*(v16 + 8))(v21, v13);
    v33 = sub_266C22A3C(v30, v32, &v37);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_266C08000, v24, v25, "Me Device Info changed: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    OUTLINED_FUNCTION_6_1();
    v12 = v34[0];
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    (*(v16 + 8))(v21, v13);
  }

  v36(v12, v35, v13);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_266DA9ADC();
  sub_266CE4650();

  sub_266C1825C(v12, &qword_2800CC118, &qword_266DB5C78);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CE44E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC118, &qword_266DB5C78);
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_13();
  if (qword_2800C9310 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  v8 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v8, qword_2800CC048);

  v9 = sub_266DA948C();
  v10 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v10))
  {
    v11 = OUTLINED_FUNCTION_14_0();
    *v11 = 134217984;
    *(v11 + 4) = *(a2 + 16);

    _os_log_impl(&dword_266C08000, v9, v10, "FMFDevices changed (count: %ld)", v11, 0xCu);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
  }

  sub_266DA9ACC();
  sub_266CE4650();
  return sub_266C1825C(v2, &qword_2800CC118, &qword_266DB5C78);
}

void sub_266CE4650()
{
  OUTLINED_FUNCTION_6();
  v48 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC110, &qword_266DB5C70);
  v5 = OUTLINED_FUNCTION_4_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_5();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_16();
  v49 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC118, &qword_266DB5C78);
  OUTLINED_FUNCTION_4_3(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v20 = sub_266DA9F9C();
  v21 = OUTLINED_FUNCTION_0_2(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_6();
  v28 = v27 - v26;
  v29 = OUTLINED_FUNCTION_75();
  sub_266CE5D14(v29, v30, &qword_2800CC118, &qword_266DB5C78);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_266C1825C(v19, &qword_2800CC118, &qword_266DB5C78);
  }

  else
  {
    v31 = (*(v23 + 32))(v28, v19, v20);
    if (v3)
    {
      MEMORY[0x28223BE20](v31);
      *(&v47 - 2) = v28;
      sub_266CE0384(sub_266CE5C84, v3, v49);
      v32 = sub_266DA9F8C();
      v34 = v33;
      v35 = sub_266DA9F7C();
      if (v36)
      {
        if (v32 == v35 && v36 == v34)
        {

          v38 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_75();
          v38 = sub_266DAB17C();
        }
      }

      else
      {

        v38 = 0;
      }

      sub_266CE5D14(v49, v1, &qword_2800CC110, &qword_266DB5C70);
      v39 = sub_266DA9EFC();
      if (__swift_getEnumTagSinglePayload(v1, 1, v39) == 1)
      {
        sub_266C1825C(v1, &qword_2800CC110, &qword_266DB5C70);
        v40 = 0;
        v41 = 0;
      }

      else
      {
        v40 = sub_266DA9EEC();
        v41 = v42;
        OUTLINED_FUNCTION_9_3(v39);
        (*(v43 + 8))(v1, v39);
      }

      sub_266CE5D14(v49, v10, &qword_2800CC110, &qword_266DB5C70);
      if (__swift_getEnumTagSinglePayload(v10, 1, v39) == 1)
      {
        sub_266C1825C(v10, &qword_2800CC110, &qword_266DB5C70);
        v44 = 0;
      }

      else
      {
        v44 = sub_266DA9EDC();
        OUTLINED_FUNCTION_9_3(v39);
        (*(v45 + 8))(v10, v39);
      }

      v46 = *(v48 + 72);
      v50 = v38 & 1;
      v51 = v40;
      v52 = v41;
      v53 = v44 & 1;
      sub_266DA96DC();
      sub_266C1825C(v49, &qword_2800CC110, &qword_266DB5C70);
    }

    (*(v23 + 8))(v28, v20);
  }

  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CE4A74()
{
  v0 = sub_266DA9ECC();
  v2 = v1;
  v3 = sub_266DA9F7C();
  if (v4)
  {
    if (v0 == v3 && v4 == v2)
    {

      return 1;
    }

    else
    {
      v6 = sub_266DAB17C();

      return v6 & 1;
    }
  }

  else
  {

    return 0;
  }
}

void sub_266CE4B30()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC0E0, &qword_266DB5C58);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_13();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC0E8, &qword_266DB5C60);
  OUTLINED_FUNCTION_0_2(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC0F0, &qword_266DB5C68);
  OUTLINED_FUNCTION_4_3(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - v21;
  if ((v4 - 1) > 1)
  {
    if (qword_2800C9310 != -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    v25 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v25, qword_2800CC048);
    v26 = sub_266DA948C();
    v27 = sub_266DAAAEC();
    if (OUTLINED_FUNCTION_16_0(v27))
    {
      v28 = OUTLINED_FUNCTION_14_0();
      v29 = OUTLINED_FUNCTION_13_0();
      v58 = v29;
      *v28 = 136315138;
      v30 = sub_266CE02F0(v4);
      v32 = sub_266C22A3C(v30, v31, &v58);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_266C08000, v26, v27, "Unsupported visibility of %s, FMFCore only support binary visibility setting.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    LOBYTE(v58) = 1;
    sub_266CE5BF4();
    sub_266DA975C();
    OUTLINED_FUNCTION_4_31(&qword_2800CC100, &qword_2800CC0E8, &qword_266DB5C60);
    sub_266DA97EC();
    v33 = *(v13 + 8);
    v34 = OUTLINED_FUNCTION_75();
    v35(v34);
  }

  else
  {
    v57 = v7;
    v23 = *(v2 + 88);
    sub_266DA9A5C();
    v24 = sub_266DA9C0C();
    if (__swift_getEnumTagSinglePayload(v22, 1, v24) == 1)
    {
      sub_266C1825C(v22, &qword_2800CC0F0, &qword_266DB5C68);
LABEL_10:
      v38 = sub_266DA9E4C();
      OUTLINED_FUNCTION_7_7(v38);
      v39 = sub_266DA9E3C();
      OUTLINED_FUNCTION_26_0();
      v40 = swift_allocObject();
      *(v40 + 16) = v2;
      *(v40 + 24) = v39;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC098, &unk_266DB5C30);
      OUTLINED_FUNCTION_7_7(v41);

      v58 = sub_266DA97AC();
      OUTLINED_FUNCTION_8_13();
      sub_266C230E8(v42, &qword_2800CC098, &unk_266DB5C30);
      sub_266CE5BF4();
      sub_266DA98FC();

      OUTLINED_FUNCTION_11_16(&qword_2800CC108, &qword_2800CC0E0, &qword_266DB5C58);
      sub_266DA97EC();

      (*(v57 + 8))(v1, v5);
      goto LABEL_16;
    }

    v56 = v13;
    v36 = sub_266DA9BFC();
    OUTLINED_FUNCTION_9_3(v24);
    (*(v37 + 8))(v22, v24);
    if (((v4 == 2) ^ v36))
    {
      goto LABEL_10;
    }

    v43 = v56;
    if (qword_2800C9310 != -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    v44 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v44, qword_2800CC048);
    v45 = sub_266DA948C();
    v46 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v46))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_13_14();
      _os_log_impl(v47, v48, v49, v50, v51, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    LOBYTE(v58) = 2;
    sub_266CE5BF4();
    sub_266DA975C();
    OUTLINED_FUNCTION_4_31(&qword_2800CC100, &qword_2800CC0E8, &qword_266DB5C60);
    sub_266DA97EC();
    v52 = *(v43 + 8);
    v53 = OUTLINED_FUNCTION_75();
    v54(v53);
  }

LABEL_16:
  OUTLINED_FUNCTION_5();
}

void sub_266CE50C8()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2B0, &qword_266DB5C10);
  OUTLINED_FUNCTION_0_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = v40 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC080, &qword_266DB5C18);
  OUTLINED_FUNCTION_0_2(v43);
  v41 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_13();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC088, &qword_266DB5C20);
  OUTLINED_FUNCTION_0_2(v15);
  v42 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v19);
  v21 = v40 - v20;
  v22 = [v2 friend];
  if (v22 && (v23 = sub_266C22F3C(v22), v24))
  {
    v25 = v23;
    v26 = v24;
    v40[1] = sub_266C562D0();
    v27 = swift_allocError();
    *v28 = 1;
    v29 = sub_266CE0888(v25, v26, v27);

    v30 = swift_allocObject();
    *(v30 + 16) = v2;
    OUTLINED_FUNCTION_26_0();
    v31 = swift_allocObject();
    *(v31 + 16) = sub_266CE5ADC;
    *(v31 + 24) = v30;
    v44 = v29;
    v45 = sub_266CE5B50;
    v46 = v31;
    OUTLINED_FUNCTION_26_0();
    v32 = swift_allocObject();
    *(v32 + 16) = sub_266CE5B58;
    *(v32 + 24) = v0;
    v33 = v2;

    sub_266DA966C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC090, &qword_266DB5C28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC098, &unk_266DB5C30);
    v40[0] = v15;
    OUTLINED_FUNCTION_9_15();
    sub_266C230E8(v34, &qword_2800CC090, &qword_266DB5C28);
    OUTLINED_FUNCTION_8_13();
    sub_266C230E8(v35, &qword_2800CC098, &unk_266DB5C30);
    sub_266DA98DC();

    sub_266C230E8(&qword_2800CC0B0, &qword_2800CC080, &qword_266DB5C18);
    sub_266DA98FC();
    v36 = *(v41 + 8);
    v37 = OUTLINED_FUNCTION_26_8();
    v38(v37);
    OUTLINED_FUNCTION_11_16(&qword_2800CC0B8, &qword_2800CC088, &qword_266DB5C20);
    v39 = v40[0];
    sub_266DA97EC();
    (*(v42 + 8))(v21, v39);
  }

  else
  {
    LOBYTE(v44) = 1;
    sub_266C562D0();
    sub_266DA975C();
    OUTLINED_FUNCTION_4_31(&qword_2800CA2C0, &qword_2800CA2B0, &qword_266DB5C10);
    sub_266DA97EC();
    (*(v5 + 8))(v10, v3);
  }

  OUTLINED_FUNCTION_5();
}

void sub_266CE5584()
{
  if (!qword_2800CC078)
  {
    sub_266DA9F6C();
    v0 = sub_266DAAC1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2800CC078);
    }
  }
}

uint64_t sub_266CE55E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_266CE5624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_266CE5694@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Friend();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_266DA9E2C();
  sub_266C676D4(a1, v9);
  result = sub_266D3047C(v9, a2);
  if (result <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = result;
  }

  *a3 = v11;
  *(a3 + 8) = result == 0;
  return result;
}

uint64_t sub_266CE5758(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC098, &unk_266DB5C30);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  return sub_266DA97AC();
}

uint64_t sub_266CE57F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + 88);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_266C33CEC;
  *(v8 + 24) = v6;

  sub_266DA9AFC();
}

void sub_266CE58B8(int a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    if (qword_2800C9310 != -1)
    {
      swift_once();
    }

    v6 = sub_266DA94AC();
    __swift_project_value_buffer(v6, qword_2800CC048);
    v7 = a2;
    v8 = sub_266DA948C();
    v9 = sub_266DAAAEC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      v12 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
      v13 = sub_266DAA72C();
      v15 = sub_266C22A3C(v13, v14, &v17);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_266C08000, v8, v9, "Error from perform FMF action: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x26D5F2480](v11, -1, -1);
      MEMORY[0x26D5F2480](v10, -1, -1);
    }

    v16 = a2;
    a3(a2, 1);
  }

  else
  {
    (a3)(0);
  }
}

uint64_t sub_266CE5AE4@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266CE0AB8(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_266CE5B20@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X1>, uint64_t a3@<X8>)
{
  result = sub_266CE0540(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_266CE5B60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

id sub_266CE5BA4@<X0>(void *a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  result = sub_266CE0AC0(*a1, *a2);
  *a3 = result;
  return result;
}

unint64_t sub_266CE5BF4()
{
  result = qword_2800CC0F8;
  if (!qword_2800CC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC0F8);
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_266CE5CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC128, &qword_266DB5C98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CE5D14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_13_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_266CE5D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_266CE2E2C(a1, a2);
}

uint64_t sub_266CE5D78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266CE5DC8()
{
  result = qword_2800CC2E0;
  if (!qword_2800CC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC2E0);
  }

  return result;
}

uint64_t sub_266CE5E28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_13_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_0_54()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_2_36()
{
  v1 = *(v0 - 136);
  *(v0 - 224) = *(v0 - 152);
  *(v0 - 208) = v1;
  result = *(v0 - 120);
  v3 = *(v0 - 104);
  *(v0 - 192) = result;
  *(v0 - 176) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_31(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_266C230E8(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_11_16(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_266C230E8(a1, a2, a3);
}

__n128 OUTLINED_FUNCTION_18_13()
{
  v1 = *(v0 - 176);
  *(v0 - 256) = *(v0 - 192);
  *(v0 - 240) = v1;
  v3 = *(v0 - 224);
  result = *(v0 - 208);
  *(v0 - 272) = result;
  *(v0 - 288) = v3;
  return result;
}

__n128 OUTLINED_FUNCTION_25_9@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q1>)
{
  result = *(v2 - 272);
  v4 = *(v2 - 240);
  *(a1 + 64) = *(v2 - 256);
  *(a1 + 80) = v4;
  *(a1 + 32) = a2;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_266CE5FA4()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CC198);
  v1 = __swift_project_value_buffer(v0, qword_2800CC198);
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E61A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t FindDeviceFlowFactory.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_266DA7E7C();
  OUTLINED_FUNCTION_7_7(v2);
  *a1 = sub_266DA7E6C();
  type metadata accessor for AppInstalledStateProvider();
  swift_allocObject();
  *(a1 + 8) = sub_266D1E26C();
  *(a1 + 40) = &unk_287867FA0;
  *(a1 + 48) = &off_287867FB0;
  v3 = sub_266DA942C();
  v4 = sub_266DA941C();
  v5 = MEMORY[0x277D5FDD8];
  *(a1 + 80) = v3;
  *(a1 + 88) = v5;
  *(a1 + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0A8, &qword_266DB1EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE4A0;
  *(inited + 56) = &unk_287867F78;
  v7 = sub_266C6F020();
  *(inited + 64) = v7;
  v8 = swift_allocObject();
  *(inited + 32) = v8;
  *(v8 + 16) = "SiriFindMy";
  *(v8 + 24) = 10;
  *(v8 + 32) = 2;
  *(v8 + 40) = "FindMyDevicesNLX";
  *(v8 + 48) = 16;
  *(v8 + 56) = 2;
  v9 = sub_266D7E674(inited);
  swift_setDeallocating();
  sub_266C6F0B4();
  *(a1 + 96) = v9 & 1;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_266DAE4A0;
  *(v10 + 56) = &unk_287867F78;
  *(v10 + 64) = v7;
  v11 = swift_allocObject();
  *(v10 + 32) = v11;
  *(v11 + 16) = "SiriFindMy";
  *(v11 + 24) = 10;
  *(v11 + 32) = 2;
  *(v11 + 40) = "FindMyDevicesNLX";
  *(v11 + 48) = 16;
  *(v11 + 56) = 2;
  v12 = sub_266D7E674(v10);
  swift_setDeallocating();
  sub_266C6F0B4();
  result = sub_266DA941C();
  *(a1 + 136) = v3;
  *(a1 + 144) = MEMORY[0x277D5FDD8];
  *(a1 + 112) = result;
  *(a1 + 104) = v12 & 1;
  return result;
}

uint64_t FindDeviceFlowFactory.makeFlowFrom(parse:)(uint64_t a1)
{
  v2 = sub_266DA81AC();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v35 - v11;
  sub_266D6B944(a1, v43);
  sub_266CE7694(v43, v42);
  if (v42[40] != 255)
  {
    sub_266CE7694(v42, &v37);
    switch(v41)
    {
      case 1:
        sub_266C0B0D8(&v37, v35);
        if (qword_2800C9318 != -1)
        {
          OUTLINED_FUNCTION_0_55();
        }

        v18 = sub_266DA94AC();
        __swift_project_value_buffer(v18, qword_2800CC198);
        v19 = sub_266DA948C();
        v20 = sub_266DAAB0C();
        if (os_log_type_enabled(v19, v20))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_2_27(&dword_266C08000, v21, v22, "NL Intent is too generic pushing requestTooGenericFlow");
          OUTLINED_FUNCTION_6_1();
        }

        v23 = __swift_project_boxed_opaque_existential_1(v35, v36);
        v14 = sub_266CE7B60(*v23);
        goto LABEL_12;
      case 2:
        sub_266C0B0D8(&v37, v35);
        v15 = __swift_project_boxed_opaque_existential_1(v35, v36);
        v16 = sub_266CE7C9C(v15);
        v14 = sub_266CE6C5C(v16);

LABEL_12:
        sub_266CE7704(v43);
        __swift_destroy_boxed_opaque_existential_0(v35);
        goto LABEL_21;
      case 3:
        if (v39 | v40 | v37 | v38 | *(&v37 + 1))
        {
          sub_266C6F35C();
          v17 = sub_266DA798C();
          goto LABEL_20;
        }

        sub_266C78954(&v37);
        break;
      default:
        v13 = sub_266CE6690();
        v14 = sub_266CE6C5C(v13);

        sub_266CE7704(v43);
        sub_266C78954(&v37);
        goto LABEL_21;
    }
  }

  if (qword_2800C9318 != -1)
  {
    OUTLINED_FUNCTION_0_55();
  }

  v24 = sub_266DA94AC();
  __swift_project_value_buffer(v24, qword_2800CC198);
  v25 = *(v5 + 16);
  v25(v12, a1, v2);
  v26 = sub_266DA948C();
  v27 = sub_266DAAAFC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v37 = v29;
    *v28 = 136315138;
    v25(v10, v12, v2);
    v30 = sub_266DAA72C();
    v32 = v31;
    (*(v5 + 8))(v12, v2);
    v33 = sub_266C22A3C(v30, v32, &v37);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_266C08000, v26, v27, "FindDeviceFlowFactory error: failed to construct nl intent from parse: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    (*(v5 + 8))(v12, v2);
  }

  v17 = sub_266CE7088();
LABEL_20:
  v14 = v17;
  sub_266CE7704(v43);
LABEL_21:
  sub_266CE7704(v42);
  return v14;
}

uint64_t sub_266CE6690()
{
  v1 = v0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC1B0, &qword_266DB5D48);
  v2 = OUTLINED_FUNCTION_0_2(v57);
  v55 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v54 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B58, &qword_266DB5D50);
  v8 = OUTLINED_FUNCTION_0_2(v7);
  v58 = v9;
  v59 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v53 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v53 - v14;
  v15 = sub_266DA926C();
  v16 = OUTLINED_FUNCTION_4_3(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_6();
  if (qword_2800C9318 != -1)
  {
    OUTLINED_FUNCTION_0_55();
  }

  v19 = sub_266DA94AC();
  __swift_project_value_buffer(v19, qword_2800CC198);
  v20 = sub_266DA948C();
  v21 = sub_266DAAB0C();
  if (os_log_type_enabled(v20, v21))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_2_27(&dword_266C08000, v22, v23, "FindDeviceFlowFactory: making findDevice flow.");
    OUTLINED_FUNCTION_6_1();
  }

  sub_266DA81BC();
  v24 = *(v1 + 8);
  v25 = qword_2800C9330;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = *&qword_2800CC508;
  v27 = qword_2800CC510;
  v28 = unk_2800CC518;

  v29 = sub_266CE776C(&v67, v24, v27, v28, v26);
  v69 = &type metadata for FindDeviceTask.Parser;
  v70 = &off_287867158;
  v68 = swift_allocObject();
  sub_266CE7E68(v1 + 16, v68 + 16);
  v30 = v29;
  sub_266DA81BC();
  type metadata accessor for FindDeviceAndPlaySoundCATsSimple();
  sub_266DA925C();
  v31 = OUTLINED_FUNCTION_7_22();
  v32 = sub_266DA7E7C();
  OUTLINED_FUNCTION_7_7(v32);
  v33 = sub_266DA7E6C();
  sub_266DA925C();
  v34 = OUTLINED_FUNCTION_7_22();
  v35 = *(v32 + 48);
  v36 = *(v32 + 52);
  swift_allocObject();
  v37 = sub_266DA7E6C();
  v75 = &type metadata for AppNotInstalledOutputProvider;
  v76 = &off_287860EE0;
  v73 = v34;
  v74 = v37;
  v67 = v30;
  v71 = v31;
  v72 = v33;
  sub_266DA81BC();
  sub_266DA7AEC();
  v38 = *v1;
  v65[3] = v32;
  v65[4] = MEMORY[0x277D5BD58];
  v65[0] = v38;
  v64[3] = &unk_287867FA0;
  v64[4] = &off_287867FB0;
  v39 = *(v1 + 96);
  v63[3] = &type metadata for ConfirmationTask.Parser;
  v63[4] = &off_28785F908;
  LOBYTE(v63[0]) = v39;
  v62[3] = &type metadata for DisambiguationTask.Parser;
  v62[4] = &off_2878672C8;
  v62[0] = swift_allocObject();
  sub_266C6F124(v1 + 104, v62[0] + 16);

  sub_266DA925C();
  v40 = OUTLINED_FUNCTION_7_22();
  v41 = *(v32 + 48);
  v42 = *(v32 + 52);
  swift_allocObject();
  v43 = sub_266DA7E6C();
  v61[3] = &type metadata for AppNotInstalledOutputProvider;
  v61[4] = &off_287860EE0;
  v61[0] = v40;
  v61[1] = v43;
  v44 = v56;
  sub_266C25A20(v60, v66, v30, v65, v64, v63, v62, v61, v56);
  v46 = v58;
  v45 = v59;
  (*(v58 + 16))(v53, v44, v59);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC1B8, &qword_266DB5D58);
  OUTLINED_FUNCTION_7_7(v47);
  sub_266DA797C();
  sub_266CE7EC4(&v67, v60);
  sub_266CE7F20();

  v48 = v54;
  sub_266DA7CFC();
  v49 = v57;
  v50 = sub_266DA7CEC();
  (*(v55 + 8))(v48, v49);
  v60[0] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC1C8, &qword_266DB5D60);
  sub_266C230E8(&qword_2800CC1D0, &qword_2800CC1C8, &qword_266DB5D60);
  v51 = sub_266DA798C();

  (*(v46 + 8))(v44, v45);
  sub_266CE7F74(&v67);
  return v51;
}

uint64_t sub_266CE6C5C(uint64_t a1)
{
  v1 = sub_266DA926C();
  v2 = OUTLINED_FUNCTION_4_3(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_6();
  v5 = sub_266DA750C();
  v6 = OUTLINED_FUNCTION_4_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_6();
  v11 = v10 - v9;
  v40 = &type metadata for FindMyPersonalDomainCheckFlowStrategy;
  v41 = sub_266CE801C();
  v12 = sub_266DA775C();
  OUTLINED_FUNCTION_7_7(v12);
  v34 = sub_266DA774C();
  sub_266DA81BC();
  __swift_project_boxed_opaque_existential_1(&v38, &type metadata for FindMyPersonalDomainCheckFlowStrategy);
  sub_266DA7AFC();
  v13 = type metadata accessor for StringLocalizer();
  OUTLINED_FUNCTION_7_7(v13);
  v14 = sub_266D04C84(v11);
  __swift_destroy_boxed_opaque_existential_0(&v38);
  v40 = v13;
  v41 = &off_287864128;
  *&v38 = v14;
  sub_266CBCDE8(&v38, v36);
  v15 = swift_allocObject();
  v16 = v36[1];
  *(v15 + 16) = v36[0];
  *(v15 + 32) = v16;
  *(v15 + 48) = v37;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_266CBCE44;
  *(v17 + 24) = v15;
  v18 = sub_266DA780C();
  OUTLINED_FUNCTION_7_7(v18);

  v33 = sub_266DA77FC();
  sub_266CBCFF0(&v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_266DB1EE0;
  *&v38 = v34;

  *(v19 + 32) = sub_266DA799C();
  type metadata accessor for SiriFindMyCommonCATsSimple();
  sub_266DA925C();
  v20 = sub_266DA91CC();
  v21 = *v35;
  v22 = sub_266DA7E7C();
  OUTLINED_FUNCTION_7_7(v22);

  v23 = sub_266DA7E6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA888, &qword_266DB5D70);
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  *(v24 + 24) = v20;
  *(v24 + 32) = v21;
  *(v24 + 40) = v36[0];
  v25 = MEMORY[0x277D5BD58];
  *(v24 + 56) = v22;
  *(v24 + 64) = v25;
  *(v24 + 72) = v38;
  *(v24 + 88) = v39;
  *(v24 + 96) = &unk_287867FA0;
  *(v24 + 104) = &off_287867FB0;
  *(v24 + 112) = v23;
  *&v38 = v24;
  sub_266C230E8(&qword_2800CA890, &qword_2800CA888, &qword_266DB5D70);
  v26 = sub_266DA799C();

  *(v19 + 40) = v26;
  *(v19 + 48) = sub_266CE7158();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_266DAE3B0;
  *&v38 = v33;
  *(v27 + 32) = sub_266DA798C();
  *&v38 = sub_266CC5B9C(a1, v19, v27);
  *(&v38 + 1) = v28;
  v39 = v29;
  sub_266C6F758();
  v30 = sub_266DA798C();

  return v30;
}

uint64_t sub_266CE7088()
{
  v0 = sub_266DA926C();
  v1 = OUTLINED_FUNCTION_4_3(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_6();
  type metadata accessor for FindDeviceAndPlaySoundCATsSimple();
  sub_266DA925C();
  v4 = sub_266DA91CC();
  v5 = sub_266DA7E7C();
  OUTLINED_FUNCTION_7_7(v5);
  v6 = sub_266DA7E6C();
  sub_266DA7FEC();
  v9[0] = v4;
  v9[1] = v6;
  sub_266CE82F8();
  v7 = sub_266DA798C();
  sub_266CE834C(v9);
  return v7;
}

uint64_t sub_266CE7158()
{
  v1 = sub_266DA926C();
  v2 = OUTLINED_FUNCTION_4_3(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_6();
  v5 = *(v0 + 8);
  type metadata accessor for FindDeviceAndPlaySoundCATsSimple();
  swift_retain_n();
  sub_266DA925C();
  v6 = sub_266DA91CC();
  v7 = sub_266DA7E7C();
  OUTLINED_FUNCTION_7_7(v7);
  v8 = sub_266DA7E6C();

  sub_266DA7FEC();
  sub_266DA81BC();
  v9 = sub_266CE7944(v5, v6, v8, &v13, &v12);

  *&v13 = v9;
  type metadata accessor for CheckAppInstalledFlow();
  sub_266CE8070();
  v10 = sub_266DA799C();

  return v10;
}

uint64_t sub_266CE7290(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = *(*(sub_266DA926C() - 8) + 64) + 15;
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CE7320, 0, 0);
}

uint64_t sub_266CE7320()
{
  v1 = v0[25];
  sub_266C233D0(v0[24], (v0 + 2));
  v2 = type metadata accessor for SFMContactStoreDefaultService();
  swift_allocObject();
  v3 = sub_266C69368();
  v0[10] = v2;
  v0[11] = &off_28785FC28;
  v0[7] = v3;
  v4 = sub_266DA7E7C();
  OUTLINED_FUNCTION_7_7(v4);
  v5 = sub_266DA7E6C();
  v6 = MEMORY[0x277D5BD58];
  v0[15] = v4;
  v0[16] = v6;
  v0[12] = v5;
  sub_266DA81BC();
  type metadata accessor for DeviceOwnerCATsSimple();
  sub_266DA925C();
  v0[22] = sub_266DA91CC();
  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_266CE7450;
  v8 = v0[23];

  return sub_266D4084C();
}

uint64_t sub_266CE7450()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *(*v1 + 208);
  v3 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;
  *(v5 + 216) = v0;

  if (v0)
  {
    v6 = sub_266CE75C4;
  }

  else
  {
    v6 = sub_266CE7558;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_266CE7558()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 200);
  sub_266CE82A4(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_266CE75C4()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[25];
  sub_266CE82A4((v0 + 2));

  v2 = v0[1];
  v3 = v0[27];

  return v2();
}

uint64_t sub_266CE7630()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_266CE7694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAAB0, &qword_266DB2440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CE7704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAAB0, &qword_266DB2440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_266CE776C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v26[3] = &type metadata for SFMDeviceLockStateProvider;
  v26[4] = &protocol witness table for SFMDeviceLockStateProvider;
  v10 = type metadata accessor for AppInstalledStateProvider();
  v25[3] = v10;
  v25[4] = &off_287864960;
  v25[0] = a2;
  DeviceAndPlaySoundIntentHandler = type metadata accessor for FindDeviceAndPlaySoundIntentHandler();
  v12 = objc_allocWithZone(DeviceAndPlaySoundIntentHandler);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v25, v10);
  v14 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v24[3] = v10;
  v24[4] = &off_287864960;
  v24[0] = v18;
  sub_266C233D0(a1, &v12[OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState]);
  sub_266C233D0(v24, &v12[OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_appInstalledState]);
  sub_266C233D0(v26, &v12[OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceLockStateProvider]);
  v19 = &v12[OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_findDeviceSession];
  *v19 = a5;
  *(v19 + 1) = a3;
  *(v19 + 2) = a4;
  v23.receiver = v12;
  v23.super_class = DeviceAndPlaySoundIntentHandler;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return v20;
}

uint64_t sub_266CE7944(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v10 = type metadata accessor for AppInstalledStateProvider();
  v28[3] = v10;
  v28[4] = &off_287864960;
  v28[0] = a1;
  v26 = &type metadata for AppNotInstalledOutputProvider;
  v27 = &off_287860EE0;
  v25[0] = a2;
  v25[1] = a3;
  type metadata accessor for CheckAppInstalledFlow();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v28, v10);
  v13 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = v26;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v19 = *(v17[-1].Description + 8);
  MEMORY[0x28223BE20](v18);
  v21 = (v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v15;
  *(v11 + 48) = v10;
  *(v11 + 56) = &off_287864960;
  *(v11 + 24) = v23;
  *(v11 + 88) = &type metadata for AppNotInstalledOutputProvider;
  *(v11 + 96) = &off_287860EE0;
  *(v11 + 64) = *v21;
  *(v11 + 16) = 1;
  sub_266C0B0D8(a4, v11 + 104);
  sub_266C0B0D8(a5, v11 + 144);
  __swift_destroy_boxed_opaque_existential_0(v25);
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v11;
}

uint64_t sub_266CE7B60(char a1)
{
  v2 = sub_266DA926C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v17[3] = &type metadata for GenericSearchIntentWrapper;
  v17[4] = &off_287864950;
  LOBYTE(v17[0]) = a1;
  v12 = &unk_287867FA0;
  v13 = &off_287867FB0;
  sub_266DA81BC();
  type metadata accessor for FindDeviceAndPlaySoundCATsSimple();
  sub_266DA925C();
  v4 = sub_266DA91CC();
  v5 = sub_266DA7E7C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_266DA7E6C();
  sub_266DA7FEC();
  sub_266C233D0(v17, &v16);
  v14 = v4;
  v15 = v8;
  sub_266CAF9A4();
  v9 = sub_266DA798C();
  sub_266CE7FC8(v11);
  __swift_destroy_boxed_opaque_existential_0(v17);
  return v9;
}

uint64_t sub_266CE7C9C(uint64_t a1)
{
  v9[3] = &type metadata for FindDeviceNLv4IntentWrapper;
  v9[4] = &off_287861A08;
  v9[0] = swift_allocObject();
  sub_266CE80C8(a1, v9[0] + 16);
  sub_266C233D0(v9, v8);
  v2 = swift_allocObject();
  sub_266C0B0D8(v8, v2 + 16);
  sub_266DA7FEC();
  v3 = sub_266DA75FC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *&v8[0] = sub_266DA75EC();
  v6 = sub_266DA798C();

  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

uint64_t sub_266CE7DB4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_266CE7DF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_266CE7F20()
{
  result = qword_2800CC1C0;
  if (!qword_2800CC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC1C0);
  }

  return result;
}

unint64_t sub_266CE801C()
{
  result = qword_2800CC1D8;
  if (!qword_2800CC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC1D8);
  }

  return result;
}

unint64_t sub_266CE8070()
{
  result = qword_2800CC1E0;
  if (!qword_2800CC1E0)
  {
    type metadata accessor for CheckAppInstalledFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC1E0);
  }

  return result;
}

uint64_t sub_266CE8124()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_266CE81BC;

  return sub_266CE7290(v3, v0 + 16);
}

uint64_t sub_266CE81BC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

unint64_t sub_266CE82F8()
{
  result = qword_2800CC1E8;
  if (!qword_2800CC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC1E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_55()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_22()
{

  return sub_266DA91CC();
}

_BYTE *storeEnumTagSinglePayload for SetSharedLocationVisibilityError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266CE84CC()
{
  result = qword_2800CC1F0;
  if (!qword_2800CC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC1F0);
  }

  return result;
}

uint64_t sub_266CE855C(uint64_t a1, int a2)
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

uint64_t sub_266CE859C(uint64_t result, int a2, int a3)
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

uint64_t sub_266CE8600()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CC200);
  v1 = __swift_project_value_buffer(v0, qword_2800CC200);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CE86C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v161 = a3;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC350, &qword_266DB5FE0);
  OUTLINED_FUNCTION_0_2(v148);
  v145 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v8);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC358, &unk_266DB5FE8);
  OUTLINED_FUNCTION_0(v152);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v138 - v12;
  v14 = sub_266DA947C();
  v15 = OUTLINED_FUNCTION_0_2(v14);
  v163 = v16;
  v164 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_6();
  v162 = v20 - v19;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC360, &qword_266DB00D0) - 8) + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10();
  v149 = v23;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC368, &qword_266DB5FF8);
  OUTLINED_FUNCTION_0_2(v140);
  v139 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v28);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC370, &qword_266DB6000);
  OUTLINED_FUNCTION_0_2(v143);
  v142 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v33);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC378, &qword_266DB6008);
  OUTLINED_FUNCTION_0_2(v153);
  v150 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v38);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC380, &qword_266DB6010);
  OUTLINED_FUNCTION_0_2(v154);
  v151 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC388, &qword_266DB6018);
  v45 = OUTLINED_FUNCTION_0_2(v44);
  v158 = v46;
  v159 = v45;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_10();
  v155 = v50;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC390, &qword_266DB6020);
  OUTLINED_FUNCTION_0(v160);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_10();
  v157 = v54;
  v55 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA828, &qword_266DB1E30) - 8) + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v56);
  v58 = &v138 - v57;
  v59 = sub_266DAAB4C();
  v60 = OUTLINED_FUNCTION_0_2(v59);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_0_6();
  v67 = v66 - v65;
  v68 = *(v3 + 64);
  v156 = v3;
  v69 = *__swift_project_boxed_opaque_existential_1((v3 + 40), v68);
  sub_266CE06C0();
  v166 = v70;
  v167 = sub_266CE9440;
  v168 = 0;
  v165 = v70;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC398, &qword_266DB6028);
  sub_266C230E8(&qword_2800CC3A0, &qword_2800CC398, &qword_266DB6028);
  v71 = sub_266DA97EC();

  sub_266C67BE8(v161, v58, &qword_2800CA828, &qword_266DB1E30);
  if (__swift_getEnumTagSinglePayload(v58, 1, v59) == 1)
  {
    sub_266C1825C(v58, &qword_2800CA828, &qword_266DB1E30);
    if (qword_2800C9320 != -1)
    {
      OUTLINED_FUNCTION_7_23();
    }

    v72 = sub_266DA94AC();
    __swift_project_value_buffer(v72, qword_2800CC200);
    v73 = sub_266DA948C();
    v74 = sub_266DAAB0C();
    v75 = os_log_type_enabled(v73, v74);
    v76 = v144;
    if (v75)
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v78, v79, "FindFriend timeout interval not set, not waiting for a non-stale location.");
      MEMORY[0x26D5F2480](v77, -1, -1);
    }

    v166 = v71;
    v80 = OUTLINED_FUNCTION_4_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(v80, v81);
    OUTLINED_FUNCTION_2_34();
    sub_266C230E8(v82, &unk_2800CC330, &unk_266DB5FD0);
    sub_266DA988C();
    if (qword_2800C9130 != -1)
    {
      OUTLINED_FUNCTION_1_9();
    }

    v83 = qword_2800C9818;
    v84 = v162;
    sub_266DA946C();
    v85 = v145;
    v86 = v148;
    (*(v145 + 16))(v13, v76, v148);
    v87 = v152;
    v88 = &v13[v152[12]];
    sub_266DA946C();
    (*(v163 + 8))(v84, v164);
    (*(v85 + 8))(v76, v86);
    OUTLINED_FUNCTION_11_17(&v13[v87[11]]);
    *&v13[v87[9]] = &dword_266C08000;
    *&v13[v87[10]] = v83;
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_44_3();
    sub_266C230E8(v89, v90, v91);
    v92 = v83;
    v93 = sub_266DA97EC();

    OUTLINED_FUNCTION_44_3();
    sub_266C1825C(v94, v95, v96);
  }

  else
  {
    (*(v62 + 32))(v67, v58, v59);
    v152 = v59;
    if (qword_2800C9320 != -1)
    {
      OUTLINED_FUNCTION_7_23();
    }

    v97 = v67;
    v161 = v62;
    v98 = sub_266DA94AC();
    __swift_project_value_buffer(v98, qword_2800CC200);
    v99 = sub_266DA948C();
    v100 = sub_266DAAB0C();
    v101 = os_log_type_enabled(v99, v100);
    v102 = v165;
    if (v101)
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v104, v105, "FindFriend timeout interval set, will attempt to wait for a non-stale location.");
      MEMORY[0x26D5F2480](v103, -1, -1);
    }

    v166 = v102;
    v106 = OUTLINED_FUNCTION_4_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(v106, v107);
    type metadata accessor for FriendLocation();
    sub_266C230E8(&qword_2800CC3B8, &qword_2800CC3B0, &qword_266DB6030);
    v108 = v138;
    sub_266DA97FC();
    sub_266C230E8(&unk_2800CC3C0, &qword_2800CC368, &qword_266DB5FF8);
    v109 = v141;
    v110 = v140;
    sub_266DA98AC();
    (*(v139 + 8))(v108, v110);
    v166 = *(v156 + 80);
    v111 = v166;
    v112 = sub_266DAAB1C();
    v113 = v149;
    __swift_storeEnumTagSinglePayload(v149, 1, 1, v112);
    sub_266C29814(0, &qword_2800C9A80, 0x277CCABD8);
    sub_266C230E8(&unk_2800CC3D0, &qword_2800CC370, &qword_266DB6000);
    sub_266C23060();
    v114 = v111;
    v115 = v146;
    v116 = v143;
    sub_266DA98EC();
    sub_266C1825C(v113, &qword_2800CC360, &qword_266DB00D0);

    (*(v142 + 8))(v109, v116);

    v117 = OUTLINED_FUNCTION_4_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(v117, v118);
    sub_266C230E8(&qword_2800CC3E0, &qword_2800CC378, &qword_266DB6008);
    sub_266C230E8(&qword_2800C9E48, &unk_2800CC330, &unk_266DB5FD0);
    v119 = v147;
    v120 = v153;
    sub_266DA987C();

    (*(v150 + 8))(v115, v120);
    sub_266C230E8(&qword_2800CC3E8, &qword_2800CC380, &qword_266DB6010);
    v121 = v154;
    v122 = v155;
    sub_266DA988C();
    (*(v151 + 8))(v119, v121);
    if (qword_2800C9130 != -1)
    {
      OUTLINED_FUNCTION_1_9();
    }

    v123 = qword_2800C9818;
    v124 = v162;
    sub_266DA946C();
    v126 = v157;
    v125 = v158;
    v127 = v159;
    (*(v158 + 16))(v157, v122, v159);
    v128 = v160;
    v129 = v126 + v160[12];
    sub_266DA946C();
    (*(v163 + 8))(v124, v164);
    (*(v125 + 8))(v122, v127);
    OUTLINED_FUNCTION_11_17(v126 + v128[11]);
    *(v126 + v128[9]) = &dword_266C08000;
    *(v126 + v128[10]) = v123;
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_44_3();
    sub_266C230E8(v130, v131, v132);
    v133 = v123;
    v93 = sub_266DA97EC();

    OUTLINED_FUNCTION_44_3();
    sub_266C1825C(v134, v135, v136);
    (*(v161 + 8))(v97, v152);
  }

  return v93;
}

uint64_t sub_266CE9440@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for FriendLocation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA710, &qword_266DB6040);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC410, &qword_266DB6048);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v16 = type metadata accessor for Friend();
  sub_266C67BE8(a1 + *(v16 + 40), v11, &qword_2800CA710, &qword_266DB6040);
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC418, &unk_266DB6050);
    v18 = v15;
    v19 = 1;
  }

  else
  {
    sub_266C67C44(v11, v7, type metadata accessor for FriendLocation);
    sub_266CEDF20(v7, v15, type metadata accessor for FriendLocation);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC418, &unk_266DB6050);
    swift_storeEnumTagMultiPayload();
    sub_266CEDF7C(v7, type metadata accessor for FriendLocation);
    v18 = v15;
    v19 = 0;
    v17 = v20;
  }

  __swift_storeEnumTagSinglePayload(v18, v19, 1, v17);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC418, &unk_266DB6050);
  if (__swift_getEnumTagSinglePayload(v15, 1, v21) != 1)
  {
    return sub_266CEDD08(v15, a2);
  }

  *a2 = 0;
  swift_storeEnumTagMultiPayload();
  result = __swift_getEnumTagSinglePayload(v15, 1, v21);
  if (result != 1)
  {
    return sub_266C1825C(v15, &qword_2800CC410, &qword_266DB6048);
  }

  return result;
}

uint64_t sub_266CE9750@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC3F8, &qword_266DB6038);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12[-v9];
  if (*a1)
  {
    v12[15] = *a1;
    type metadata accessor for FriendLocation();
    sub_266CE5DC8();
    sub_266DA975C();
    sub_266C230E8(&unk_2800CC400, &qword_2800CC3F8, &qword_266DB6038);
    a2 = sub_266DA97EC();
    result = (*(v7 + 8))(v10, v6);
  }

  else
  {
  }

  *a3 = a2;
  return result;
}

uint64_t sub_266CE98B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v8 = v7;
  v63 = a7;
  v64 = a3;
  LODWORD(v62) = a6;
  v65 = a4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB88, &qword_266DB5F40);
  OUTLINED_FUNCTION_0(v66);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14);
  v16 = v60 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC220, &qword_266DB5F48);
  v18 = OUTLINED_FUNCTION_0_2(v17);
  v69 = v19;
  v70 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v18);
  v24 = v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v67 = v60 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC228, &qword_266DB5F50);
  OUTLINED_FUNCTION_0_2(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10();
  v68 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC230, &unk_266DB5F58);
  OUTLINED_FUNCTION_0_2(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10();
  v40 = *a5;
  v41 = *(a5 + 16);
  if (v41 == 2)
  {
    v71[0] = *a5;
    return sub_266CE9ED0(a1, a2, v71, v62 & 1, v63);
  }

  else
  {
    v60[0] = *(a5 + 8);
    v62 = v37;
    v63 = v39;
    v43 = v8;
    v61 = v38;
    *v71 = sub_266CEAF48(a1, a2);
    sub_266CEB358(v64, v65, v16);
    v65 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA9C8, qword_266DB2160);
    v64 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC240, &qword_266DB33F0);
    OUTLINED_FUNCTION_2_34();
    sub_266C230E8(v44, &qword_2800CA9C8, qword_266DB2160);
    OUTLINED_FUNCTION_0_13();
    v60[1] = v45;
    sub_266C230E8(v46, v47, v48);
    sub_266DA982C();
    sub_266C1825C(v16, &qword_2800CAB88, &qword_266DB5F40);

    sub_266CEDBEC(v8, v71);
    v49 = swift_allocObject();
    OUTLINED_FUNCTION_14_20(v49);
    v50 = v60[0];
    *(v16 + 13) = v40;
    *(v16 + 14) = v50;
    v16[120] = v41;
    sub_266C186A4(v40, v50, v41);
    v51 = v67;
    v52 = v70;
    sub_266DA95EC();

    v69 = *(v69 + 8);
    (v69)(v24, v52);
    sub_266CEDBEC(v43, v71);
    v53 = swift_allocObject();
    OUTLINED_FUNCTION_14_20(v53);
    v54 = swift_allocObject();
    *(v54 + 16) = sub_266CEDC34;
    *(v54 + 24) = v16;
    sub_266DA966C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB80, &unk_266DB24F0);
    sub_266C230E8(&qword_2800CC260, &qword_2800CC220, &qword_266DB5F48);
    sub_266C230E8(&qword_2800CC268, &qword_2800CAB80, &unk_266DB24F0);
    v55 = v68;
    sub_266DA996C();

    (v69)(v51, v52);
    type metadata accessor for LabeledLocationResult();
    sub_266C230E8(&qword_2800CC270, &qword_2800CC228, &qword_266DB5F50);
    v56 = v61;
    v57 = v64;
    sub_266DA984C();
    (*(v65 + 8))(v55, v57);
    sub_266C230E8(&qword_2800CC278, &unk_2800CC230, &unk_266DB5F58);
    v58 = v62;
    v42 = sub_266DA97EC();
    (*(v63 + 8))(v56, v58);
  }

  return v42;
}

uint64_t sub_266CE9ED0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, char a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC280, &qword_266DB5F68);
  v136 = *(v12 - 8);
  v137 = v12;
  v13 = *(v136 + 64);
  MEMORY[0x28223BE20](v12);
  v134 = &v107 - v14;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC288, &qword_266DB5F70);
  v138 = *(v129 - 8);
  v15 = *(v138 + 64);
  MEMORY[0x28223BE20](v129);
  v135 = &v107 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC290, &qword_266DB5F78);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v116 = &v107 - v20;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC298, &qword_266DB5F80);
  v118 = *(v120 - 8);
  v21 = *(v118 + 64);
  MEMORY[0x28223BE20](v120);
  v117 = &v107 - v22;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC2A0, &qword_266DB5F88);
  v121 = *(v122 - 8);
  v23 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v107 - v24;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC2A8, &qword_266DB5F90);
  v124 = *(v125 - 8);
  v25 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v123 = &v107 - v26;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC2B0, &unk_266DB5F98);
  v27 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v126 = &v107 - v28;
  v29 = sub_266DA947C();
  v131 = *(v29 - 8);
  v132 = v29;
  v30 = *(v131 + 64);
  MEMORY[0x28223BE20](v29);
  v130 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA828, &qword_266DB1E30);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v110 = &v107 - v34;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC2C0, &qword_266DB5FA8);
  v112 = *(v113 - 8);
  v35 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v107 - v36;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC2C8, &unk_266DB5FB0);
  v37 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v39 = &v107 - v38;
  v40 = *a3;
  if (v40 == 2)
  {
    v41 = 0;
    if (a4)
    {
      v43 = a5 == 2 || a5 == 5;
      goto LABEL_18;
    }

    v44 = 0;
  }

  else
  {
    v41 = sub_266C1A06C(v40 & 1);
    v44 = sub_266C1A06C(v40 & 1);
    if (a4)
    {
      if (a5 == 2)
      {
        v43 = 1;
        goto LABEL_18;
      }

      v45 = a5 == 5;
      goto LABEL_14;
    }
  }

  v45 = a5 == 1;
LABEL_14:
  v46 = v45;
  v43 = v44 | v46;
LABEL_18:
  v128 = v43;
  v115 = a5;
  if (qword_2800C9320 != -1)
  {
    swift_once();
  }

  v47 = sub_266DA94AC();
  __swift_project_value_buffer(v47, qword_2800CC200);
  v48 = sub_266DA948C();
  v49 = sub_266DAAB0C();
  v50 = os_log_type_enabled(v48, v49);
  v133 = v40;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v108 = a2;
    v52 = v51;
    v53 = swift_slowAlloc();
    v109 = v18;
    v107 = v17;
    v54 = v6;
    v55 = v53;
    __src[0] = v53;
    *v52 = 136315394;
    v56 = 31085;
    if (v40)
    {
      v56 = 0x7269656874;
    }

    v57 = 0xE200000000000000;
    if (v40)
    {
      v57 = 0xE500000000000000;
    }

    if (v40 == 2)
    {
      v58 = 1701736302;
    }

    else
    {
      v58 = v56;
    }

    v59 = v41;
    v60 = a1;
    if (v40 == 2)
    {
      v61 = 0xE400000000000000;
    }

    else
    {
      v61 = v57;
    }

    v62 = sub_266C22A3C(v58, v61, __src);
    a1 = v60;
    v41 = v59;

    *(v52 + 4) = v62;
    *(v52 + 12) = 2048;
    *(v52 + 14) = v115;
    _os_log_impl(&dword_266C08000, v48, v49, "Resolving current location, type: %s, trigger: %ld", v52, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v55);
    v63 = v55;
    v6 = v54;
    v17 = v107;
    v18 = v109;
    MEMORY[0x26D5F2480](v63, -1, -1);
    v64 = v52;
    a2 = v108;
    MEMORY[0x26D5F2480](v64, -1, -1);
  }

  if (v41 & 1 | ((v128 & 1) == 0))
  {
    v65 = v6[3];
    v66 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v65);
    __src[0] = (*(v66 + 8))(v65, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC2D0, &qword_266DAF900);
    sub_266C230E8(&qword_2800C9EA8, &unk_2800CC2D0, &qword_266DAF900);
    sub_266CE5DC8();
    v67 = v116;
    sub_266DA98FC();

    v68 = swift_allocObject();
    v69 = v133;
    *(v68 + 16) = v133;
    sub_266C230E8(&qword_2800CC2E8, &qword_2800CC290, &qword_266DB5F78);
    v70 = v117;
    sub_266DA984C();

    (*(v18 + 8))(v67, v17);
    sub_266CEDBEC(v6, __src);
    v71 = swift_allocObject();
    memcpy((v71 + 16), __src, 0x58uLL);
    sub_266DA966C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC2F0, &qword_266DB5FC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB80, &unk_266DB24F0);
    sub_266C230E8(&qword_2800CC2F8, &qword_2800CC298, &qword_266DB5F80);
    sub_266C230E8(&qword_2800CC268, &qword_2800CAB80, &unk_266DB24F0);
    v72 = v119;
    v73 = v120;
    sub_266DA98DC();

    (*(v118 + 8))(v70, v73);
    type metadata accessor for Location();
    sub_266C230E8(&qword_2800CC300, &qword_2800CC2A0, &qword_266DB5F88);
    v74 = v123;
    v75 = v122;
    sub_266DA97FC();
    (*(v121 + 8))(v72, v75);
    if (qword_2800C9130 != -1)
    {
      swift_once();
    }

    v76 = qword_2800C9818;
    v77 = v130;
    sub_266DA946C();
    v78 = v124;
    v79 = v126;
    v80 = v125;
    (*(v124 + 16))(v126, v74, v125);
    v81 = v127;
    v82 = &v79[*(v127 + 48)];
    sub_266DA946C();
    (*(v131 + 8))(v77, v132);
    (*(v78 + 8))(v74, v80);
    v83 = &v79[v81[11]];
    *v83 = "Resolve User's Current Location";
    *(v83 + 1) = 31;
    v83[16] = 2;
    *&v79[v81[9]] = &dword_266C08000;
    *&v79[v81[10]] = v76;
    sub_266C230E8(&qword_2800CC308, &unk_2800CC2B0, &unk_266DB5F98);
    v84 = v76;
    v85 = sub_266DA97EC();
    v86 = v79;
    v87 = &unk_2800CC2B0;
    v88 = &unk_266DB5F98;
  }

  else
  {
    v89 = v110;
    sub_266DAAB3C();
    v90 = sub_266DAAB4C();
    __swift_storeEnumTagSinglePayload(v89, 0, 1, v90);
    v91 = sub_266CE86C8(a1, a2, v89);
    sub_266C1825C(v89, &qword_2800CA828, &qword_266DB1E30);
    __src[0] = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC330, &unk_266DB5FD0);
    type metadata accessor for Location();
    sub_266C230E8(&qword_2800C9E48, &unk_2800CC330, &unk_266DB5FD0);
    v92 = v111;
    sub_266DA97FC();

    v69 = v133;
    if (qword_2800C9130 != -1)
    {
      swift_once();
    }

    v93 = qword_2800C9818;
    v94 = v130;
    sub_266DA946C();
    v95 = v112;
    v96 = v113;
    (*(v112 + 16))(v39, v92, v113);
    v97 = v114;
    v98 = &v39[*(v114 + 48)];
    sub_266DA946C();
    (*(v131 + 8))(v94, v132);
    (*(v95 + 8))(v92, v96);
    v99 = &v39[v97[11]];
    *v99 = "Resolve Friend's Current Location";
    *(v99 + 1) = 33;
    v99[16] = 2;
    *&v39[v97[9]] = &dword_266C08000;
    *&v39[v97[10]] = v93;
    sub_266C230E8(&unk_2800CC340, &qword_2800CC2C8, &unk_266DB5FB0);
    v100 = v93;
    v85 = sub_266DA97EC();
    v86 = v39;
    v87 = &qword_2800CC2C8;
    v88 = &unk_266DB5FB0;
  }

  sub_266C1825C(v86, v87, v88);
  __src[0] = v85;
  *(swift_allocObject() + 16) = v69;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC310, &qword_266DB5FC8);
  type metadata accessor for LabeledLocationResult();
  sub_266C230E8(&qword_2800CC318, &qword_2800CC310, &qword_266DB5FC8);
  v101 = v134;
  sub_266DA984C();

  sub_266C230E8(&qword_2800CC320, &qword_2800CC280, &qword_266DB5F68);
  v102 = v135;
  v103 = v137;
  sub_266DA988C();
  (*(v136 + 8))(v101, v103);
  sub_266C230E8(&qword_2800CC328, &qword_2800CC288, &qword_266DB5F70);
  v104 = v129;
  v105 = sub_266DA97EC();

  (*(v138 + 8))(v102, v104);
  return v105;
}

uint64_t sub_266CEAF48(uint64_t a1, uint64_t a2)
{
  v5 = sub_266DA947C();
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC478, &qword_266DB60C8);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC480, &unk_266DB60D0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = *(*__swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64)) + 24);
  v17 = *(*__swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64)) + 32);

  v19 = sub_266C71E80(v18, sub_266CEBFB0, 0, v16);

  v34 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA9C8, qword_266DB2160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC240, &qword_266DB33F0);
  sub_266C230E8(&qword_2800CA9D0, &qword_2800CA9C8, qword_266DB2160);
  sub_266DA984C();

  if (qword_2800C9130 != -1)
  {
    swift_once();
  }

  v21 = qword_2800C9818;
  v22 = v31;
  sub_266DA946C();
  v23 = v30;
  (*(v8 + 16))(v15, v11, v30);
  v24 = &v15[v12[12]];
  sub_266DA946C();
  (*(v32 + 8))(v22, v33);
  (*(v8 + 8))(v11, v23);
  v25 = &v15[v12[11]];
  *v25 = "Fetch FMFCore Labelled Locations";
  *(v25 + 1) = 32;
  v25[16] = 2;
  *&v15[v12[9]] = &dword_266C08000;
  *&v15[v12[10]] = v21;
  sub_266C230E8(&qword_2800CC488, &qword_2800CC480, &unk_266DB60D0);
  v26 = v21;
  v27 = sub_266DA97EC();
  sub_266C1825C(v15, &qword_2800CC480, &unk_266DB60D0);
  return v27;
}

uint64_t sub_266CEB358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_266DA947C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC458, &qword_266DB60B0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  sub_266DA97AC();
  if (qword_2800C9130 != -1)
  {
    swift_once();
  }

  v15 = qword_2800C9818;
  sub_266DA946C();
  sub_266C79AE0(&dword_266C08000, v15, "Fetch Contacts Labelled Locations ", 34, 2, a3);

  return (*(v7 + 8))(v10, v6);
}

void sub_266CEB508(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v6 = *a1;

  sub_266C38574(v5);
  *a3 = v6;
}

uint64_t sub_266CEB560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v8[0] = a2;
  v8[1] = a3;
  v9 = a4;
  result = sub_266CEB5A4(v6, v8);
  *a5 = result;
  return result;
}

uint64_t sub_266CEB5A4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  v44 = *a2;
  if (*a2)
  {
    v6 = 0x7269656874;
  }

  else
  {
    v6 = 31085;
  }

  v7 = 0xE200000000000000;
  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  v41 = v7;
  v42 = v6;
  v8 = a1 + 32;
  v43 = MEMORY[0x277D84F90];
  v45 = *a2;
  v9 = *a2;
  v39 = a1 + 32;
  v40 = *a2;
LABEL_7:
  v10 = (v8 + (v2 << 6));
  while (v5 != v2)
  {
    if (v2 >= v5)
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v11 = v10[1];
    v48 = *v10;
    v49 = v11;
    v12 = v10[3];
    v50 = v10[2];
    v51 = v12;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_61;
    }

    v13 = v48;
    if (v49)
    {
      if (v49 == 1)
      {
        v14 = *(&v48 + 1);
        sub_266CEDD78(&v48, &v46);
        sub_266C186A4(v13, v14, 1);
        if (v4)
        {
          goto LABEL_14;
        }
      }

      else if (v48 == 2)
      {
        sub_266CEDD78(&v48, &v46);
        v13 = 0xD000000000000010;
        v14 = 0x8000000266DC1CA0;
        if (v4)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v48)
        {
          v17 = 0x7269656874;
        }

        else
        {
          v17 = 31085;
        }

        if (v48)
        {
          v18 = 0xE500000000000000;
        }

        else
        {
          v18 = 0xE200000000000000;
        }

        sub_266CEDD78(&v48, &v46);
        MEMORY[0x26D5F1170](v17, v18);

        MEMORY[0x26D5F1170](32, 0xE100000000000000);
        MEMORY[0x26D5F1170](0xD000000000000010, 0x8000000266DC1CA0);
        v13 = 0;
        v14 = 0xE000000000000000;
        if (v4)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      switch(v48)
      {
        case 1:
          sub_266CEDD78(&v48, &v46);
          v13 = 0x6B726F773C21245FLL;
          break;
        case 2:
          sub_266CEDD78(&v48, &v46);
          v13 = 0x6F6863733C21245FLL;
          v14 = 0xEE005F24213E6C6FLL;
          if (!v4)
          {
            goto LABEL_30;
          }

          goto LABEL_14;
        case 3:
          sub_266CEDD78(&v48, &v46);
          v13 = 0x3E6D79673C21245FLL;
          v14 = 0xEB000000005F2421;
          if (!v4)
          {
            goto LABEL_30;
          }

          goto LABEL_14;
        case 4:
          sub_266CEDD78(&v48, &v46);
          v13 = 0x6568746F3C21245FLL;
          v14 = 0xED00005F24213E72;
          if (!v4)
          {
            goto LABEL_30;
          }

          goto LABEL_14;
        default:
          sub_266CEDD78(&v48, &v46);
          v13 = 0x656D6F683C21245FLL;
          break;
      }

      v14 = 0xEC0000005F24213ELL;
      if (v4)
      {
LABEL_14:
        if (v4 == 1)
        {

          v15 = v45;
          v16 = v3;
        }

        else
        {
          v15 = 0xD000000000000010;
          v16 = 0x8000000266DC1CA0;
          if (v44 != 2)
          {
            v46 = 0;
            v47 = 0xE000000000000000;
            MEMORY[0x26D5F1170](v42, v41, 0xD000000000000010);
            v9 = v40;

            MEMORY[0x26D5F1170](32, 0xE100000000000000);
            MEMORY[0x26D5F1170](0xD000000000000010, 0x8000000266DC1CA0);
            v15 = v46;
            v16 = v47;
          }
        }

        goto LABEL_41;
      }
    }

LABEL_30:
    v16 = 0xEC0000005F24213ELL;
    v15 = 0x656D6F683C21245FLL;
    switch(v9)
    {
      case 1:
        v15 = 0x6B726F773C21245FLL;
        break;
      case 2:
        v15 = 0x6F6863733C21245FLL;
        v16 = 0xEE005F24213E6C6FLL;
        break;
      case 3:
        v15 = 0x3E6D79673C21245FLL;
        v16 = 0xEB000000005F2421;
        break;
      case 4:
        v15 = 0x6568746F3C21245FLL;
        v16 = 0xED00005F24213E72;
        break;
      default:
        break;
    }

LABEL_41:
    if (v13 == v15 && v14 == v16)
    {

LABEL_51:
      v21 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = *(v43 + 16);
        sub_266C38B98();
        v21 = v52;
      }

      v24 = *(v21 + 16);
      if (v24 >= *(v21 + 24) >> 1)
      {
        sub_266C38B98();
        v21 = v52;
      }

      *(v21 + 16) = v24 + 1;
      v43 = v21;
      v25 = (v21 + (v24 << 6));
      v26 = v48;
      v27 = v49;
      v28 = v51;
      v25[4] = v50;
      v25[5] = v28;
      v25[2] = v26;
      v25[3] = v27;
      ++v2;
      v8 = v39;
      goto LABEL_7;
    }

    v20 = sub_266DAB17C();

    if (v20)
    {
      goto LABEL_51;
    }

    sub_266CEDE68(&v48);
    ++v2;
    v10 += 4;
  }

  if (qword_2800C9320 == -1)
  {
    goto LABEL_57;
  }

LABEL_62:
  swift_once();
LABEL_57:
  v29 = sub_266DA94AC();
  __swift_project_value_buffer(v29, qword_2800CC200);
  v30 = v43;

  v31 = sub_266DA948C();
  v32 = sub_266DAAADC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v48 = v34;
    *v33 = 136315138;
    v35 = MEMORY[0x26D5F12B0](v43, &unk_287868740);
    v37 = sub_266C22A3C(v35, v36, &v48);
    v30 = v43;

    *(v33 + 4) = v37;
    _os_log_impl(&dword_266C08000, v31, v32, "labelled location matches: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x26D5F2480](v34, -1, -1);
    MEMORY[0x26D5F2480](v33, -1, -1);
  }

  return v30;
}

uint64_t sub_266CEBBE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_266DA947C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &__src[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_266CEDBEC(v3, __src);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  memcpy((v11 + 24), __src, 0x58uLL);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC438, &qword_266DB60A0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  sub_266DA97AC();
  if (qword_2800C9130 != -1)
  {
    swift_once();
  }

  v15 = qword_2800C9818;
  sub_266DA946C();
  sub_266C79AF4(&dword_266C08000, v15, "Geocode Labelled Locations", 26, 2, a2);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_266CEBDB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  return sub_266CEBDF4(v4, a2);
}

uint64_t sub_266CEBDF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0) - 8) + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Location();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_6();
  v14 = v13 - v12;
  v15 = *(a1 + 16);
  if (v15 == 1)
  {
    sub_266CB7B0C(a1);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {

      sub_266C67C44(v7, v14, type metadata accessor for Location);
      sub_266C67C44(v14, a2, type metadata accessor for Location);
      type metadata accessor for LabeledLocationResult();
      return swift_storeEnumTagMultiPayload();
    }

    sub_266C1825C(v7, &qword_2800C9B20, &unk_266DB1EC0);
    goto LABEL_8;
  }

  if (v15)
  {
LABEL_8:
    *a2 = a1;
    type metadata accessor for LabeledLocationResult();
    return swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for LabeledLocationResult();

  return swift_storeEnumTagMultiPayload();
}

void sub_266CEBFC4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = 0;
  v8 = *a1;
  v9 = *(*a1 + 16);
  v10 = *a1 + 32;
  v11 = MEMORY[0x277D84F90];
LABEL_2:
  for (i = (v10 + (v7 << 6)); ; i += 4)
  {
    if (v9 == v7)
    {
      *a4 = v11;
      return;
    }

    if (v7 >= *(v8 + 16))
    {
      break;
    }

    v13 = *i;
    v14 = i[1];
    v15 = i[3];
    v27 = i[2];
    v28 = v15;
    v25 = v13;
    v26 = v14;
    if (*(&v15 + 1))
    {
      v16 = v28 == a2 && *(&v15 + 1) == a3;
      if (v16 || (sub_266DAB17C() & 1) != 0)
      {
        sub_266CEDD78(&v25, &v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = *(v11 + 16);
          sub_266C38B98();
          v11 = v29;
        }

        v19 = *(v11 + 16);
        if (v19 >= *(v11 + 24) >> 1)
        {
          sub_266C38B98();
          v11 = v29;
        }

        ++v7;
        *(v11 + 16) = v19 + 1;
        v20 = (v11 + (v19 << 6));
        v21 = v25;
        v22 = v26;
        v23 = v28;
        v20[4] = v27;
        v20[5] = v23;
        v20[2] = v21;
        v20[3] = v22;
        goto LABEL_2;
      }
    }

    ++v7;
  }

  __break(1u);
}

void sub_266CEC11C(void (*a1)(__int128 *))
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_266DAE3B0;
  v4 = *MEMORY[0x277CBD0C8];
  *(v3 + 32) = *MEMORY[0x277CBD0C8];
  v5 = v4;
  v6 = sub_266DAA6FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7C8, &unk_266DB1DB8);
  v7 = sub_266DAA91C();

  *&v46 = 0;
  v8 = [v2 unifiedContactWithIdentifier:v6 keysToFetch:v7 error:&v46];

  if (v8)
  {
    v37 = v2;
    v38 = a1;
    v9 = v46;
    v10 = [v8 postalAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC468, &unk_266DB60B8);
    v11 = sub_266DAA93C();

    v14 = sub_266C3A14C(v11, v12, v13);
    v15 = 0;
    a1 = (v11 & 0xC000000000000001);
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v14 == v15)
      {

        *&v46 = v16;
        BYTE8(v46) = 0;
        v38(&v46);

        goto LABEL_21;
      }

      if (a1)
      {
        v17 = MEMORY[0x26D5F1780](v15, v11);
      }

      else
      {
        if (v15 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v17 = *(v11 + 8 * v15 + 32);
      }

      v2 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      sub_266D9156C(v17, &v46);
      if (*(&v49 + 1) == 1)
      {
        v42 = v46;
        v43 = v47;
        v44 = v48;
        v45 = v49;
        sub_266C1825C(&v42, &qword_2800CC470, &qword_266DB5C80);
        ++v15;
      }

      else
      {
        v42 = v46;
        v43 = v47;
        v44 = v48;
        v45 = v49;
        v36 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = v16[2];
          sub_266CFA75C();
          v16 = v22;
        }

        v18 = v16[2];
        if (v18 >= v16[3] >> 1)
        {
          sub_266CFA75C();
          v16 = v23;
        }

        v40 = v44;
        v41 = v45;
        v19 = v42;
        v39 = v43;
        v16[2] = v18 + 1;
        v20 = &v16[8 * v18];
        v20[4] = v40;
        v20[5] = v41;
        v20[2] = v19;
        v20[3] = v39;
        ++v15;
        v8 = v36;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = v46;
  v16 = sub_266DA72FC();

  swift_willThrow();
  if (qword_2800C9320 != -1)
  {
LABEL_24:
    swift_once();
  }

  v25 = sub_266DA94AC();
  __swift_project_value_buffer(v25, qword_2800CC200);
  v26 = v16;
  v27 = sub_266DA948C();
  v28 = sub_266DAAAEC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v46 = v30;
    *v29 = 136315138;
    *&v42 = v16;
    v31 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
    v32 = sub_266DAA72C();
    v34 = sub_266C22A3C(v32, v33, &v46);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_266C08000, v27, v28, "Unexpected error of %s when attempting to fetch contact addresses.", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x26D5F2480](v30, -1, -1);
    MEMORY[0x26D5F2480](v29, -1, -1);
  }

  *&v46 = MEMORY[0x277D84F90];
  BYTE8(v46) = 0;
  a1(&v46);

LABEL_21:
  v35 = *MEMORY[0x277D85DE8];
}

uint64_t sub_266CEC5DC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v6 = sub_266DA9FAC();
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_266DAAB7C();
  isa = v65[-1].isa;
  v10 = isa[8];
  MEMORY[0x28223BE20](v65);
  v60 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_266DAAB6C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_266DA9FDC();
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x28223BE20](v14);
  v63 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = *(a3 + 16);
  if (v18)
  {
    v19 = qword_2800C9320;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_266DA94AC();
    __swift_project_value_buffer(v20, qword_2800CC200);

    v21 = sub_266DA948C();
    v22 = sub_266DAAB0C();
    v23 = os_log_type_enabled(v21, v22);
    v59 = v6;
    v58 = v9;
    v57 = v14;
    v56 = v17;
    v55 = a3;
    if (v23)
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v18;

      _os_log_impl(&dword_266C08000, v21, v22, "Starting to geo code %ld locations.", v24, 0xCu);
      MEMORY[0x26D5F2480](v24, -1, -1);
    }

    else
    {
    }

    sub_266C29814(0, &qword_28156EFC0, 0x277D85C78);
    sub_266DA9FBC();
    *&v73 = MEMORY[0x277D84F90];
    sub_266CEDDE0(&qword_28156EFC8, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
    sub_266C230E8(&qword_28156EFE8, &qword_2800CC440, &qword_266DAF890);
    sub_266DAAD0C();
    isa[13](v60, *MEMORY[0x277D85260], v65);
    v60 = sub_266DAABBC();
    v26 = dispatch_group_create();
    v27 = swift_allocObject();
    *(v27 + 16) = MEMORY[0x277D84F90];
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    v29 = (v55 + 32);
    isa = &v68;
    do
    {
      v30 = v29[1];
      v73 = *v29;
      v74 = v30;
      v31 = v29[3];
      v75 = v29[2];
      v76 = v31;
      v32 = *(&v30 + 1);
      v33 = *&v75;
      v34 = BYTE8(v75);
      sub_266CEDD78(&v73, v72);
      dispatch_group_enter(v26);
      v35 = swift_allocObject();
      v35[2] = v27;
      v35[3] = v28;
      v35[4] = v26;
      v36 = objc_allocWithZone(MEMORY[0x277CBFBE8]);

      v65 = v26;
      v37 = [v36 init];
      if (v34)
      {
        v38 = sub_266DAA6FC();
        v39 = swift_allocObject();
        *(v39 + 16) = sub_266CEDE28;
        *(v39 + 24) = v35;
        v40 = v74;
        *(v39 + 32) = v73;
        *(v39 + 48) = v40;
        v41 = v76;
        *(v39 + 64) = v75;
        *(v39 + 80) = v41;
        v70 = sub_266CEDE44;
        v71 = v39;
        aBlock = MEMORY[0x277D85DD0];
        v67 = 1107296256;
        v68 = sub_266CED778;
        v69 = &block_descriptor_2;
        v42 = _Block_copy(&aBlock);
        sub_266CEDD78(&v73, v72);

        [v37 geocodeAddressString:v38 completionHandler:v42];
      }

      else
      {
        v38 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v32 longitude:v33];
        v43 = swift_allocObject();
        *(v43 + 16) = sub_266CEDE28;
        *(v43 + 24) = v35;
        v44 = v74;
        *(v43 + 32) = v73;
        *(v43 + 48) = v44;
        v45 = v76;
        *(v43 + 64) = v75;
        *(v43 + 80) = v45;
        v70 = sub_266CEDFEC;
        v71 = v43;
        aBlock = MEMORY[0x277D85DD0];
        v67 = 1107296256;
        v68 = sub_266CED778;
        v69 = &block_descriptor_47;
        v42 = _Block_copy(&aBlock);
        sub_266CEDD78(&v73, v72);

        [v37 reverseGeocodeLocation:v38 completionHandler:v42];
      }

      sub_266CEDE68(&v73);
      _Block_release(v42);

      v29 += 4;
      --v18;
    }

    while (v18);
    v46 = swift_allocObject();
    v47 = v56;
    v46[2] = sub_266C33CEC;
    v46[3] = v47;
    v46[4] = v28;
    v46[5] = v27;
    v72[4] = sub_266CEDEBC;
    v72[5] = v46;
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 1107296256;
    v72[2] = sub_266C73FC4;
    v72[3] = &block_descriptor_40;
    v48 = _Block_copy(v72);

    v49 = v63;
    sub_266DA9FBC();
    aBlock = MEMORY[0x277D84F90];
    sub_266CEDDE0(&qword_28156F010, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAA90, &qword_266DB2250);
    sub_266C230E8(&qword_28156EFF0, &qword_2800CAA90, &qword_266DB2250);
    v50 = v58;
    v51 = v59;
    sub_266DAAD0C();
    v52 = v60;
    v53 = v65;
    sub_266DAAB5C();
    _Block_release(v48);

    (*(v62 + 8))(v50, v51);
    (*(v61 + 8))(v49, v57);
  }

  else
  {

    *&v73 = MEMORY[0x277D84F90];
    BYTE8(v73) = 0;
    return a1(&v73);
  }
}

void sub_266CED000(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v8 = type metadata accessor for Location();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC450, &qword_266DB60A8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  sub_266C67BE8(a1, &v19 - v15, &qword_2800CC450, &qword_266DB60A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    sub_266C1825C(v16, &qword_2800CC450, &qword_266DB60A8);
  }

  else
  {
    sub_266C67C44(v16, v12, type metadata accessor for Location);
    swift_beginAccess();
    sub_266C38698();
    v17 = *(*(a2 + 16) + 16);
    sub_266C38724(v17);
    v18 = *(a2 + 16);
    *(v18 + 16) = v17 + 1;
    sub_266CEDF20(v12, v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, type metadata accessor for Location);
    *(a2 + 16) = v18;
    swift_endAccess();
    sub_266CEDF7C(v12, type metadata accessor for Location);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_266CED234(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    swift_beginAccess();
    v8 = *(a4 + 16);
  }

  a1(v8, v7);
  return sub_266CD5EB4(v8, v7);
}

id sub_266CED2D0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t (*a5)())
{
  v59 = a5;
  v62 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC450, &qword_266DB60A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v60 = &v53 - v14;
  v15 = type metadata accessor for Location();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_266DA750C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = type metadata accessor for Address();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v61 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 && a1 && sub_266C3A14C(a1, v23, v24))
  {
    sub_266CB9F54(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x26D5F1780](0, a1);
    }

    else
    {
      v26 = *(a1 + 32);
    }

    v27 = v26;
    v56 = v8;
    v57 = a4;
    result = [v26 _geoMapItem];
    if (result)
    {
      sub_266DA81BC();
      __swift_project_boxed_opaque_existential_1(&v63, v65);
      sub_266DA7AFC();
      sub_266D80070();
      __swift_destroy_boxed_opaque_existential_0(&v63);
      v58 = v27;
      v29 = [v27 location];
      v30 = 0;
      v31 = 0;
      if (v29)
      {
        v32 = v29;
        [v29 coordinate];
        v31 = v33;
      }

      v34 = [v58 location];
      if (v34)
      {
        v35 = v34;
        [v34 coordinate];
        v30 = v36;
      }

      v37 = &v18[v15[7]];
      sub_266DA745C();
      v63 = *v59;
      v64 = *(v59 + 16);
      v38 = LocationLabel.rawValue.getter();
      v54 = v39;
      v55 = v38;
      v59 = type metadata accessor for Address;
      v40 = v60;
      sub_266CEDF20(v61, v60, type metadata accessor for Address);
      __swift_storeEnumTagSinglePayload(v40, 0, 1, v21);
      v41 = v15[8];
      v42 = v15[9];
      v18[v42] = 6;
      v43 = &v18[v41];
      v44 = v15[10];
      v18[v44] = 4;
      v45 = v15[11];
      __swift_storeEnumTagSinglePayload(&v18[v45], 1, 1, v21);
      *v18 = v31;
      *(v18 + 1) = v30;
      __asm { FMOV            V0.2D, #1.0 }

      *(v18 + 1) = _Q0;
      v18[32] = 0;
      v51 = v54;
      *v43 = v55;
      *(v43 + 1) = v51;
      v18[v42] = 6;
      v18[v44] = 4;
      sub_266C60554(v40, &v18[v45]);
      v52 = &v18[v15[12]];
      *v52 = 1701736302;
      *(v52 + 1) = 0xE400000000000000;
      sub_266CEDF20(v18, v11, type metadata accessor for Location);
      swift_storeEnumTagMultiPayload();
      v62(v11);

      sub_266C1825C(v11, &qword_2800CC450, &qword_266DB60A8);
      sub_266CEDF7C(v61, v59);
      return sub_266CEDF7C(v18, type metadata accessor for Location);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *v11 = 1;
    swift_storeEnumTagMultiPayload();
    v62(v11);
    return sub_266C1825C(v11, &qword_2800CC450, &qword_266DB60A8);
  }

  return result;
}

uint64_t sub_266CED778(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_266C29814(0, &qword_2800CC448, 0x277CBFC40);
    v4 = sub_266DAA93C();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_266CED868@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC430, qword_266DAF9B0);
  v6 = swift_allocObject();
  v7 = *a1;
  v8 = a1[1];
  v6[1] = xmmword_266DAE4A0;
  v6[2] = v7;
  v9 = a1[2];
  v10 = a1[3];
  v6[3] = v8;
  v6[4] = v9;
  v6[5] = v10;
  sub_266CEDD78(v13, &v12);
  sub_266CEBBE8(v6, a2);
}

uint64_t sub_266CED910(uint64_t *a1)
{
  swift_getKeyPath();
  v3 = *a1;

  swift_getAtKeyPath();
}

uint64_t sub_266CED984@<X0>(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v33 = a1[3];
  v34 = v13;
  v32 = *(a1 + 32);
  v14 = type metadata accessor for Location();
  v15 = v14[7];
  v16 = sub_266DA746C();
  (*(*(v16 - 8) + 16))(a3 + v15, a1 + v15, v16);
  if (v6 == 2)
  {
    v31 = 0x8000000266DC1CA0;
    v17 = 0xD000000000000010;
  }

  else
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    if (a2)
    {
      v18 = 0x7269656874;
    }

    else
    {
      v18 = 31085;
    }

    if (a2)
    {
      v19 = 0xE500000000000000;
    }

    else
    {
      v19 = 0xE200000000000000;
    }

    MEMORY[0x26D5F1170](v18, v19);

    MEMORY[0x26D5F1170](32, 0xE100000000000000);
    MEMORY[0x26D5F1170](0xD000000000000010, 0x8000000266DC1CA0);
    v17 = v35;
    v31 = v36;
  }

  sub_266C67BE8(a1 + v14[11], v10, &qword_2800CC420, &unk_266DB0480);
  v20 = v14[8];
  v21 = v14[9];
  *(a3 + v21) = 6;
  v22 = (a3 + v20);
  v23 = v10;
  v24 = v14[10];
  *(a3 + v24) = 4;
  v25 = v14[11];
  v26 = type metadata accessor for Address();
  __swift_storeEnumTagSinglePayload(a3 + v25, 1, 1, v26);
  *a3 = v11;
  *(a3 + 8) = v12;
  v27 = v33;
  *(a3 + 16) = v34;
  *(a3 + 24) = v27;
  *(a3 + 32) = v32;
  v28 = v31;
  *v22 = v17;
  v22[1] = v28;
  *(a3 + v21) = 6;
  *(a3 + v24) = 4;
  sub_266C60554(v23, a3 + v25);
  v29 = (a3 + v14[12]);
  *v29 = 1701736302;
  v29[1] = 0xE400000000000000;
  type metadata accessor for LabeledLocationResult();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_266CEDC58(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

__n128 sub_266CEDC84@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(v2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  result = *a1;
  *(a2 + 24) = *a1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t objectdestroy_2Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_266CEDD08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC418, &unk_266DB6050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CEDDE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266CEDE34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_33Tm()
{
  v1 = *(v0 + 24);

  sub_266C17E24(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_266CEDE34(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  v2 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_266CEDF20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_4();
  v8(v7);
  return a2;
}

uint64_t sub_266CEDF7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_266CEDFD4(void (*a1)(__int128 *))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_266CEC11C(a1);
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return swift_once();
}

void OUTLINED_FUNCTION_11_17(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = 11;
  *(a1 + 16) = 2;
}

void *OUTLINED_FUNCTION_14_20(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 - 176), 0x58uLL);
}

uint64_t sub_266CEE04C()
{
  v0 = sub_266DAAF8C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266CEE098@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266CEE04C();
  *a2 = result;
  return result;
}

uint64_t sub_266CEE0C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266C5787C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for FindMyConfirmation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266CEE1D4()
{
  result = qword_2800CC490;
  if (!qword_2800CC490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC490);
  }

  return result;
}

uint64_t sub_266CEE238(uint64_t a1, uint64_t a2)
{
  v4 = sub_266CEE3C4();
  v5 = sub_266CEE418();
  v6 = sub_266CEE46C();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_266CEE2B0()
{
  result = qword_2800CC498;
  if (!qword_2800CC498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CC4A0, &qword_266DB6128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC498);
  }

  return result;
}

unint64_t sub_266CEE318()
{
  result = qword_2800CC4A8;
  if (!qword_2800CC4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC4A8);
  }

  return result;
}

unint64_t sub_266CEE370()
{
  result = qword_2800CC4B0;
  if (!qword_2800CC4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC4B0);
  }

  return result;
}

unint64_t sub_266CEE3C4()
{
  result = qword_2800CC4B8;
  if (!qword_2800CC4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC4B8);
  }

  return result;
}

unint64_t sub_266CEE418()
{
  result = qword_2800CC4C0;
  if (!qword_2800CC4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC4C0);
  }

  return result;
}

unint64_t sub_266CEE46C()
{
  result = qword_2800CC4C8;
  if (!qword_2800CC4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC4C8);
  }

  return result;
}

uint64_t type metadata accessor for DeviceOwnerCATsSimple()
{
  result = qword_2800CC4D0;
  if (!qword_2800CC4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266CEE54C()
{
  v1 = OUTLINED_FUNCTION_1_37(MEMORY[0x277D55C70]);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266CEE600;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000017, 0x8000000266DC2F50, v2);
}

uint64_t sub_266CEE600(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_266CEE700()
{
  v1 = OUTLINED_FUNCTION_1_37(MEMORY[0x277D55C70]);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266CEEADC;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000025, 0x8000000266DC2F20, v2);
}

uint64_t sub_266CEE7B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_266CEE808(a1, a2);
}

uint64_t sub_266CEE808(uint64_t a1, uint64_t a2)
{
  v5 = sub_266DA926C();
  v6 = OUTLINED_FUNCTION_37_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_266CEEA6C(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_266DA91AC();
  (*(v8 + 8))(a2, v2);
  sub_266C2A858(a1);
  return v16;
}

uint64_t sub_266CEE964(uint64_t a1, uint64_t a2)
{
  v5 = sub_266DA926C();
  v6 = OUTLINED_FUNCTION_37_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_266DA91BC();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_266CEEA6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_37@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_266CEEB00(uint64_t a1)
{
  v2 = sub_266DA905C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_266DA904C();
  sub_266DA742C();
  sub_266DA903C();

  v5 = sub_266DA906C();
  v6 = sub_266DA746C();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

uint64_t sub_266CEEBBC()
{
  sub_266DA742C();
  sub_266DA902C();
  v0 = sub_266DA90BC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_266DA90AC();
  sub_266DA909C();

  v3 = sub_266DA908C();

  return v3;
}

uint64_t sub_266CEEC60(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x26D5F1170](v2, v3);

  MEMORY[0x26D5F1170](0x7473696C702ELL, 0xE600000000000000);

  sub_266DA733C();
}

uint64_t sub_266CEED58(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_266DA7A0C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CEEE18, 0, 0);
}

uint64_t sub_266CEEE18()
{
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, &unk_2800E61A8);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "Falling back to server flow.", v4, 2u);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  (*(v6 + 104))(v5, *MEMORY[0x277D5B8A0], v7);
  sub_266DA7D8C();
  (*(v6 + 8))(v5, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_266CEEFD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C29DCC;

  return sub_266CEED58(a1);
}

uint64_t sub_266CEF070@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v15, a2[3]);
  }

  else
  {
    (*(v7 + 32))(v11, v15, v6);
    a1(v11);
    (*(v7 + 8))(v11, v6);
    v18 = a2[3];
  }

  v19 = a2[4];
  sub_266DAB32C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_266CEF284@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v11, v3, v7);
    a1(v11);
    (*(v8 + 8))(v11, v7);
    v12 = *(a2 + 16);
    sub_266DAB32C();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 32))(a3, v3, *(a2 + 16));
    sub_266DAB32C();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t Result<>.forCompletion(_:)(void (*a1)(_BYTE *), uint64_t a2, void *a3, uint64_t a4)
{
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CC4E0, &qword_266DB62F8);
  v6 = a3[3];
  v7 = a3[4];
  v8 = sub_266DAB32C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v19 = a3[2];
  v10 = v19;
  v20 = v6;
  v21 = a4;
  v22 = v7;
  sub_266CEF070(sub_266CEF628, a3, &v13 - v11);
  v15 = v10;
  v16 = v6;
  v17 = a4;
  v18 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
  sub_266CEF284(sub_266CEF764, v8, v23);
  v14(v23);
  return sub_266CEF770(v23);
}

uint64_t sub_266CEF5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 16);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t sub_266CEF628@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[5];
  return sub_266CEF5BC(a1, v2[2], v2[4], a2);
}

uint64_t sub_266CEF634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  v9 = sub_266DAB15C();
  if (v9)
  {
    v10 = v9;
    result = (*(v5 + 8))(v8, a2);
  }

  else
  {
    v10 = swift_allocError();
    result = (*(v5 + 32))(v12, v8, a2);
  }

  *a3 = v10;
  return result;
}

uint64_t sub_266CEF764@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[5];
  return sub_266CEF634(a1, v2[3], a2);
}

uint64_t sub_266CEF770(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC4E8, &unk_266DB6300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_266CEF7D8()
{
  OUTLINED_FUNCTION_6();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC648, &qword_266DB6440);
  OUTLINED_FUNCTION_0_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_10();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC650, &qword_266DB6448);
  OUTLINED_FUNCTION_0_2(v15);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC658, &unk_266DB6450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B00, &qword_266DAE468);
  OUTLINED_FUNCTION_2_34();
  sub_266C230E8(v7, &qword_2800CC658, &unk_266DB6450);
  OUTLINED_FUNCTION_17_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC668, &unk_266DB6460);
  OUTLINED_FUNCTION_2_37();
  sub_266C230E8(v8, v9, &qword_266DB6440);
  OUTLINED_FUNCTION_5_30(&qword_2800CC678);
  OUTLINED_FUNCTION_14_21();
  v10 = OUTLINED_FUNCTION_38_6();
  v11(v10);
  OUTLINED_FUNCTION_3_7();
  sub_266C230E8(v12, &qword_2800CC650, &qword_266DB6448);
  OUTLINED_FUNCTION_28_5();
  v13 = OUTLINED_FUNCTION_24_8();
  v14(v13);
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

void sub_266CEF9F0()
{
  OUTLINED_FUNCTION_6();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC570, &qword_266DB63C8);
  OUTLINED_FUNCTION_0_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_10();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC578, &qword_266DB63D0);
  OUTLINED_FUNCTION_0_2(v15);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC580, &qword_266DB63D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC588, &qword_266DB63E0);
  OUTLINED_FUNCTION_2_34();
  sub_266C230E8(v7, &qword_2800CC580, &qword_266DB63D8);
  OUTLINED_FUNCTION_17_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC598, &qword_266DB63E8);
  OUTLINED_FUNCTION_2_37();
  sub_266C230E8(v8, v9, &qword_266DB63C8);
  OUTLINED_FUNCTION_5_30(&qword_2800CC5A8);
  OUTLINED_FUNCTION_14_21();
  v10 = OUTLINED_FUNCTION_38_6();
  v11(v10);
  OUTLINED_FUNCTION_3_7();
  sub_266C230E8(v12, &qword_2800CC578, &qword_266DB63D0);
  OUTLINED_FUNCTION_28_5();
  v13 = OUTLINED_FUNCTION_24_8();
  v14(v13);
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

void sub_266CEFC08()
{
  OUTLINED_FUNCTION_6();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC688, &qword_266DB6470);
  OUTLINED_FUNCTION_0_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_10();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC690, &qword_266DB6478);
  OUTLINED_FUNCTION_0_2(v15);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC698, &unk_266DB6480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCE8, &qword_266DB5388);
  OUTLINED_FUNCTION_2_34();
  sub_266C230E8(v7, &qword_2800CC698, &unk_266DB6480);
  OUTLINED_FUNCTION_17_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC6A8, &qword_266DB6490);
  OUTLINED_FUNCTION_2_37();
  sub_266C230E8(v8, v9, &qword_266DB6470);
  OUTLINED_FUNCTION_5_30(&qword_2800CC6B8);
  OUTLINED_FUNCTION_14_21();
  v10 = OUTLINED_FUNCTION_38_6();
  v11(v10);
  OUTLINED_FUNCTION_3_7();
  sub_266C230E8(v12, &qword_2800CC690, &qword_266DB6478);
  OUTLINED_FUNCTION_28_5();
  v13 = OUTLINED_FUNCTION_24_8();
  v14(v13);
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CEFE20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5E8, &qword_266DB6410);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - v5;
  v14[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5F0, &qword_266DB6418);
  v7 = *(v14[0] - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v14[0]);
  v10 = v14 - v9;
  v14[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC5F8, &qword_266DB6420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC600, &qword_266DB6428);
  sub_266C230E8(&qword_2800CC608, &qword_2800CC5F8, &qword_266DB6420);
  sub_266DA984C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC610, &qword_266DB6430);
  sub_266C230E8(&qword_2800CC618, &qword_2800CC5E8, &qword_266DB6410);
  sub_266C230E8(&qword_2800CC620, &qword_2800CC610, &qword_266DB6430);
  sub_266DA987C();
  (*(v3 + 8))(v6, v2);
  sub_266C230E8(&qword_2800CC628, &qword_2800CC5F0, &qword_266DB6418);
  v11 = v14[0];
  v12 = sub_266DA97EC();
  (*(v7 + 8))(v10, v11);
  return v12;
}

uint64_t sub_266CF012C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v26 = a5;
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v23 = a2;
  v21 = sub_266DAAB7C();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v21);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_266DAAB6C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_266DA9FDC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_266C73E6C();
  v20[1] = "FindDeviceSession";
  v20[2] = v14;
  sub_266DA9FBC();
  v27 = MEMORY[0x277D84F90];
  sub_266CEDDE0(&qword_28156EFC8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  sub_266C230E8(&qword_28156EFE8, &qword_2800CC440, &qword_266DAF890);
  sub_266DAAD0C();
  (*(v6 + 104))(v9, *MEMORY[0x277D85260], v21);
  v15 = sub_266DAABBC();
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  v16 = v23;
  *(v5 + 16) = v22;
  *(v5 + 24) = v16;
  v18 = v24;
  v17 = v25;
  *(v5 + 32) = v15;
  *(v5 + 40) = v18;
  *(v5 + 48) = v17;
  *(v5 + 56) = v26;
  return v5;
}

void sub_266CF03CC()
{
  OUTLINED_FUNCTION_6();
  v25 = v1;
  v23 = v2;
  v24 = v3;
  v21 = v4;
  v22 = v5;
  v20 = sub_266DAAB7C();
  v6 = OUTLINED_FUNCTION_0_2(v20);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_6();
  v13 = v12 - v11;
  v14 = sub_266DAAB6C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_6();
  v16 = sub_266DA9FDC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_0_6();
  sub_266C73E6C();
  sub_266DA9FBC();
  sub_266CEDDE0(&qword_28156EFC8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  OUTLINED_FUNCTION_6_8();
  sub_266C230E8(v18, &qword_2800CC440, &qword_266DAF890);
  sub_266DAAD0C();
  (*(v8 + 104))(v13, *MEMORY[0x277D85260], v20);
  v19 = sub_266DAABBC();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 16) = v21;
  *(v0 + 24) = v22;
  *(v0 + 32) = v19;
  *(v0 + 40) = v23;
  *(v0 + 48) = v24;
  *(v0 + 56) = v25;
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CF0640(void (*a1)(void))
{
  v2 = *(v1 + 32);
  a1(0);
  sub_266DAAB9C();
  return v4;
}

uint64_t sub_266CF06AC(uint64_t a1, double a2)
{
  swift_beginAccess();
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(a1 + 64);
    if (sub_266D40164())
    {
      v6 = qword_2800C9220;

      if (v6 != -1)
      {
        swift_once();
      }

      v7 = sub_266DA94AC();
      __swift_project_value_buffer(v7, qword_2800CA9F8);

      v8 = sub_266DA948C();
      v9 = sub_266DAAB0C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v36 = v11;
        *v10 = 136315138;
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        v14 = *(a1 + 56);
        v15 = sub_266DAAE0C();
        v17 = v16;

        v18 = sub_266C22A3C(v15, v17, &v36);

        *(v10 + 4) = v18;
        _os_log_impl(&dword_266C08000, v8, v9, "SessionLifetimeManager<%s>: re-using existing instance", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x26D5F2480](v11, -1, -1);
        MEMORY[0x26D5F2480](v10, -1, -1);
      }

      else
      {
      }

      goto LABEL_19;
    }

    v19 = (sub_266D40164() & 1) == 0;
  }

  else
  {
    v19 = 0;
  }

  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v20 = sub_266DA94AC();
  __swift_project_value_buffer(v20, qword_2800CA9F8);

  v21 = sub_266DA948C();
  v22 = sub_266DAAB0C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v24;
    *v23 = 136315394;
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v27 = *(a1 + 56);
    v28 = sub_266DAAE0C();
    v30 = v29;

    v31 = sub_266C22A3C(v28, v30, &v36);

    *(v23 + 4) = v31;
    *(v23 + 12) = 1024;
    *(v23 + 14) = v19;
    _os_log_impl(&dword_266C08000, v21, v22, "SessionLifetimeManager<%s>: creating new instance (existing inactive? %{BOOL}d)", v23, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x26D5F2480](v24, -1, -1);
    MEMORY[0x26D5F2480](v23, -1, -1);
  }

  else
  {
  }

  v32 = *(a1 + 24);
  (*(a1 + 16))(&v36);
  if (*(a1 + 64))
  {
    v33 = *(a1 + 64);

    sub_266D401B0();

    v34 = *(a1 + 64);
  }

  v4 = v36;
  *(a1 + 64) = v36;

LABEL_19:
  sub_266CF1F1C(a2, &unk_2878634A0, sub_266CF533C, &block_descriptor_47_0);
  return v4;
}

uint64_t sub_266CF0A54@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  swift_beginAccess();
  sub_266CF501C(a1 + 64, __src);
  if (__src[3])
  {
    memcpy(__dst, __src, 0x78uLL);
    if (qword_2800C9220 != -1)
    {
      swift_once();
    }

    v6 = sub_266DA94AC();
    __swift_project_value_buffer(v6, qword_2800CA9F8);

    v7 = sub_266DA948C();
    v8 = sub_266DAAB0C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      __src[0] = v10;
      *v9 = 136315138;
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = sub_266DAAE0C();
      v16 = v15;

      v17 = sub_266C22A3C(v14, v16, __src);

      *(v9 + 4) = v17;
      _os_log_impl(&dword_266C08000, v7, v8, "SessionLifetimeManager<%s>: re-using existing instance", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26D5F2480](v10, -1, -1);
      MEMORY[0x26D5F2480](v9, -1, -1);
    }

    else
    {
    }

    memcpy(a2, __dst, 0x78uLL);
  }

  else
  {
    sub_266CF508C(__src);
    if (qword_2800C9220 != -1)
    {
      swift_once();
    }

    v18 = sub_266DA94AC();
    __swift_project_value_buffer(v18, qword_2800CA9F8);

    v19 = sub_266DA948C();
    v20 = sub_266DAAB0C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      __dst[0] = v22;
      *v21 = 136315394;
      v23 = *(a1 + 40);
      v24 = *(a1 + 48);
      v25 = *(a1 + 56);
      v26 = sub_266DAAE0C();
      v28 = v27;

      v29 = sub_266C22A3C(v26, v28, __dst);

      *(v21 + 4) = v29;
      *(v21 + 12) = 1024;
      *(v21 + 14) = 0;
      _os_log_impl(&dword_266C08000, v19, v20, "SessionLifetimeManager<%s>: creating new instance (existing inactive? %{BOOL}d)", v21, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x26D5F2480](v22, -1, -1);
      MEMORY[0x26D5F2480](v21, -1, -1);
    }

    else
    {
    }

    v30 = *(a1 + 24);
    (*(a1 + 16))();
    sub_266CF50F4(a2, __dst);
    swift_beginAccess();
    sub_266CF5150(__dst, a1 + 64);
    swift_endAccess();
  }

  return sub_266CF1F1C(a3, &unk_287863338, sub_266CF51C0, &block_descriptor_3);
}

uint64_t sub_266CF0DF8(uint64_t a1, double a2)
{
  swift_beginAccess();
  v4 = *(a1 + 64);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 64);

  if (sub_266D00F38())
  {
    if (qword_2800C9220 != -1)
    {
      swift_once();
    }

    v6 = sub_266DA94AC();
    __swift_project_value_buffer(v6, qword_2800CA9F8);

    v7 = sub_266DA948C();
    v8 = sub_266DAAB0C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v37 = v10;
      *v9 = 136315138;
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = sub_266DAAE0C();
      v16 = v15;

      v17 = sub_266C22A3C(v14, v16, &v37);

      *(v9 + 4) = v17;
      _os_log_impl(&dword_266C08000, v7, v8, "SessionLifetimeManager<%s>: re-using existing instance", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26D5F2480](v10, -1, -1);
      MEMORY[0x26D5F2480](v9, -1, -1);
    }

    else
    {
    }

    goto LABEL_20;
  }

  if (*(a1 + 64))
  {
    v18 = *(a1 + 64);

    v19 = sub_266D00F38();

    v20 = (v19 & 1) == 0;
  }

  else
  {
LABEL_9:
    v20 = 0;
  }

  if (qword_2800C9220 != -1)
  {
    swift_once();
  }

  v21 = sub_266DA94AC();
  __swift_project_value_buffer(v21, qword_2800CA9F8);

  v22 = sub_266DA948C();
  v23 = sub_266DAAB0C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37 = v25;
    *v24 = 136315394;
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v28 = *(a1 + 56);
    v29 = sub_266DAAE0C();
    v31 = v30;

    v32 = sub_266C22A3C(v29, v31, &v37);

    *(v24 + 4) = v32;
    *(v24 + 12) = 1024;
    *(v24 + 14) = v20;
    _os_log_impl(&dword_266C08000, v22, v23, "SessionLifetimeManager<%s>: creating new instance (existing inactive? %{BOOL}d)", v24, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x26D5F2480](v25, -1, -1);
    MEMORY[0x26D5F2480](v24, -1, -1);
  }

  else
  {
  }

  v33 = *(a1 + 24);
  (*(a1 + 16))(&v37);
  if (*(a1 + 64))
  {
    v34 = *(a1 + 64);

    sub_266D00FE4();

    v35 = *(a1 + 64);
  }

  v4 = v37;
  *(a1 + 64) = v37;

LABEL_20:
  sub_266CF1F1C(a2, &unk_287863400, sub_266CF527C, &block_descriptor_32);
  return v4;
}