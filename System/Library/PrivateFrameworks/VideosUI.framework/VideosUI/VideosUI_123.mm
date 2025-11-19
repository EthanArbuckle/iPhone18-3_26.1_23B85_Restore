uint64_t sub_1E4067E98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SportsKitScoreboardUpdating(0);
  result = sub_1E3287754(8);
  *a2 = a1;
  return result;
}

void sub_1E4067ED8(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_173();
  v4 = type metadata accessor for SportsKitScoreboardUpdating(v3);
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1E406B5EC();
  v6 = swift_allocObject();
  sub_1E406BBB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF80);
  OUTLINED_FUNCTION_2();
  (*(v7 + 16))(v1, a1);
  v8 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF88) + 36));
  *v8 = sub_1E406B28C;
  v8[1] = v6;
  v8[2] = 0;
  v8[3] = 0;
  sub_1E406B5EC();
  v9 = swift_allocObject();
  sub_1E406BBB4();
  v10 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF90) + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = sub_1E406B384;
  v10[3] = v9;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40680C8()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_17_2(v4);
  v0[5] = swift_task_alloc();
  sub_1E4206434();
  v0[6] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v6 = sub_1E42063B4();
  v0[7] = v6;
  v0[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E4068184, v6, v5);
}

uint64_t sub_1E4068184()
{
  OUTLINED_FUNCTION_45_67();
  v1 = sub_1E41FFC94();
  v2 = sub_1E42067D4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *(v3 + 4) = OUTLINED_FUNCTION_44_62(4.8149e-34, v20);
    OUTLINED_FUNCTION_43_67(&dword_1E323F000, v4, v5, "SwiftUI:Overlay:Scoreboard: register for sportskit scoreboard updates for sporting event %s");
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  type metadata accessor for SportsKitScoreboardManager.CacheValue(0);
  v8 = *v7;
  *(v0 + 72) = *v7;
  v9 = *(*v8 + 128);
  v10 = v9();
  v11 = v9();
  v12 = [v11 lastUpdatedTime];

  sub_1E41FE584();
  *(v0 + 80) = sub_1E376EE58(v10, 1, v6);
  v13 = sub_1E376DBD0();
  v14 = *v13;
  *(v0 + 88) = *v13;

  v16 = (v9)(v15);
  *(v0 + 96) = sub_1E32868C0(v16, &selRef_leagueId);
  *(v0 + 104) = v17;

  *(v0 + 128) = j__OUTLINED_FUNCTION_18() & 1;
  *(v0 + 129) = j__OUTLINED_FUNCTION_18() & 1;
  v18 = *v14;
  *(v0 + 112) = *(*v14 + 488);
  *(v0 + 120) = (v18 + 488) & 0xFFFFFFFFFFFFLL | 0x306F000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1E40683C4, v14, 0);
}

uint64_t sub_1E40683C4()
{
  OUTLINED_FUNCTION_27_2();
  v4 = *(v0 + 129);
  (*(v0 + 112))(*(v0 + 72), &off_1F5D93E48, *(v0 + 24), *(v0 + 32), *(v0 + 96), *(v0 + 104), *(v0 + 128), *(v0 + 80), v4);

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1E4068470, v1, v2);
}

uint64_t sub_1E4068470()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E40684DC(uint64_t a1, uint64_t a2, NSObject *a3, const char *a4)
{
  v31 = a2;
  v32 = a3;
  type metadata accessor for SportsKitScoreboardUpdating(0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  OUTLINED_FUNCTION_8();
  v16 = (*(v14 + 128))(v15);
  v17 = sub_1E32868C0(v16, &selRef_canonicalId);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    v21 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v21);
    sub_1E406B5EC();
    sub_1E4206434();
    v22 = sub_1E4206424();
    v23 = (v8 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E85E0];
    *(v24 + 16) = v22;
    *(v24 + 24) = v25;
    sub_1E406BBB4();
    v26 = (v24 + v23);
    *v26 = v19;
    v26[1] = v20;
    sub_1E376FE58(0, 0, v13, v32, v24);

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    v32 = sub_1E41FFC94();
    v27 = sub_1E42067F4();
    if (os_log_type_enabled(v32, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1E323F000, v32, v27, a4, v28, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E406876C()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  sub_1E4206434();
  v0[5] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v5 = sub_1E42063B4();
  v0[6] = v5;
  v0[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E4068800, v5, v4);
}

uint64_t sub_1E4068800()
{
  OUTLINED_FUNCTION_45_67();
  v1 = sub_1E41FFC94();
  v2 = sub_1E42067D4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *(v3 + 4) = OUTLINED_FUNCTION_44_62(4.8149e-34, v11);
    OUTLINED_FUNCTION_43_67(&dword_1E323F000, v4, v5, "SwiftUI:Overlay:Scoreboard: unregister from sportskit scoreboard updates for sporting event %s");
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v6 = *(v0 + 16);
  v7 = sub_1E376DBD0();
  v8 = *v7;
  *(v0 + 64) = *v7;
  *(v0 + 72) = *v6;

  *(v0 + 96) = j__OUTLINED_FUNCTION_18() & 1;
  v9 = *v8;
  *(v0 + 80) = *(*v8 + 496);
  *(v0 + 88) = (v9 + 496) & 0xFFFFFFFFFFFFLL | 0xE5C6000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1E4068970, v8, 0);
}

uint64_t sub_1E4068970()
{
  OUTLINED_FUNCTION_24();
  (*(v0 + 80))(*(v0 + 72), &off_1F5D93E48, *(v0 + 24), *(v0 + 32), *(v0 + 96));

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E3B2F088, v1, v2);
}

void sub_1E40689F0()
{
  v0 = sub_1E377C574();
  v1 = sub_1E376DA04();
  v2 = swift_beginAccess();
  if (*v1 == 1)
  {
    MEMORY[0x1EEE9AC00](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
    sub_1E4148DE0(sub_1E406B424);
  }

  v3 = v0;
  sub_1E4067A3C(v3);
}

BOOL sub_1E4068AE8()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 128))();
  sub_1E377A8DC();
  v3 = v2;

  if (v3)
  {
    sub_1E40689F0();
  }

  return v3 != 0;
}

uint64_t sub_1E4068B80()
{
  sub_1E376DA04();
  swift_beginAccess();
  sub_1E40689F0();

  return 1;
}

BOOL sub_1E4068BF8(uint64_t a1)
{
  v1 = (*(*a1 + 552))();
  if (v1)
  {
    sub_1E382766C();
    sub_1E3744600(v1);

    v2 = sub_1E37766C4();
    sub_1E40689F0();
  }

  return v1 != 0;
}

uint64_t sub_1E4068CA0()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 128))();
  v2 = [v1 jsContextDictionary];

  v3 = sub_1E4205C64();
  return v3;
}

uint64_t sub_1E4068D54()
{
  OUTLINED_FUNCTION_155();
  v3 = OUTLINED_FUNCTION_70_0();
  v4 = type metadata accessor for Scoreboard(v3);
  v5 = *(v4 + 24);
  *(v2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 28);
  *(v2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  result = swift_storeEnumTagMultiPayload();
  *v2 = v0;
  v2[1] = v1;
  return result;
}

void sub_1E4068E04()
{
  OUTLINED_FUNCTION_93();
  v53 = v1;
  v2 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF98);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EFA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v51 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EFA8);
  OUTLINED_FUNCTION_0_10();
  v51 = v16;
  v52 = v15;
  OUTLINED_FUNCTION_5_7();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v54 = &v51 - v19;
  v20 = *v0;
  v21 = (*(**v0 + 2008))(v18);
  *v14 = sub_1E4201D44();
  v14[1] = v21;
  *(v14 + 16) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EFB0);
  sub_1E40692F8(v0, v14 + *(v22 + 44));
  *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EFB8) + 36)) = 1;
  v25 = nullsub_1(v23, v24);
  v26 = v14 + *(v11 + 36);
  *v26 = v25;
  *(v26 + 1) = v27;
  v28 = *(*v20 + 552);
  v28(v55);
  if ((v56 & 1) == 0)
  {
    sub_1E3952BE8(v55[0], v55[1], v55[2], v55[3]);
  }

  sub_1E406B4A8();
  sub_1E3E361E8();
  v29 = sub_1E325F6F0(v14, &qword_1ECF3EFA0);
  (v28)(v57, v29);
  v30 = 0.0;
  if ((v58 & 1) == 0)
  {
    v30 = sub_1E3952BE8(v57[0], v57[1], v57[2], v57[3]);
  }

  v31 = *(v2 + 20);
  v32 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  v34 = (*(v33 + 104))(v6 + v31, v32);
  *v6 = v30;
  v6[1] = v30;
  v35 = (*(*v20 + 2032))(v34);
  v36 = sub_1E38F08C4(v35);

  (*(*v20 + 2056))();
  sub_1E4200BF4();
  sub_1E406B5EC();
  v37 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6A8) + 36)];
  v38 = v60;
  *v37 = v59;
  *(v37 + 1) = v38;
  *(v37 + 4) = v61;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EFE0);
  *&v10[*(v39 + 52)] = v36;
  *&v10[*(v39 + 56)] = 256;
  v40 = sub_1E4203DA4();
  v42 = v41;
  sub_1E3A69608(v6);
  v43 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EFE8) + 36)];
  *v43 = v40;
  v43[1] = v42;
  v44 = sub_1E4203DA4();
  v46 = v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EFF0);
  v48 = v53;
  v49 = v53 + *(v47 + 36);
  sub_1E406B644(v10, v49);
  v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EFF8) + 36));
  *v50 = v44;
  v50[1] = v46;
  (*(v51 + 32))(v48, v54, v52);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E40692F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F028);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v39 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F030) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F038);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v35 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  sub_1E406964C();
  v22 = sub_1E4202744();
  v23 = *(**a1 + 1888);
  v23();
  sub_1E4200A54();
  v24 = &v12[*(v9 + 44)];
  *v24 = v22;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = sub_1E4202754();
  v36 = a1;
  if (sub_1E4069AE0())
  {
  }

  else
  {
    v23();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_120();
  sub_1E3782004();
  v30 = &v18[*(v34 + 36)];
  *v30 = v29;
  OUTLINED_FUNCTION_11_4(v30);
  sub_1E3782004();
  v31 = v37;
  sub_1E4069B60(v37);
  v32 = v35;
  sub_1E378249C();
  v33 = v39;
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  sub_1E378249C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F040);
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  sub_1E325F6F0(v31, &qword_1ECF3F028);
  sub_1E325F6F0(v21, &qword_1ECF3F038);
  sub_1E325F6F0(v33, &qword_1ECF3F028);
  sub_1E325F6F0(v32, &qword_1ECF3F038);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E406964C()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F080);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F088);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  OUTLINED_FUNCTION_8();
  v16 = (*(v15 + 128))();
  v17 = sub_1E388ED3C(v16);
  if (!v17)
  {
    goto LABEL_21;
  }

  v18 = v17;
  v53 = v14;
  v19 = *(v17 + 16);
  if (!v19)
  {

LABEL_21:
    OUTLINED_FUNCTION_54_0();

    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
    return;
  }

  v52 = v11;
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v22 = v20;
  while (v19 != v22)
  {
    v23 = *(v18 + 16);
    if (v22 >= v23)
    {
      __break(1u);
      return;
    }

    v24 = v22 + 1;
    v25 = v23 - 1;
    if (v20 < 2 || v22++ != v25)
    {
      v50 = v5;
      v51 = v7;
      v27 = *(v18 + 8 * v24 + 24);

      v28 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1E406AFA8(0, v21[2] + 1, 1, v21);
      }

      v30 = v21[2];
      v29 = v21[3];
      if (v30 >= v29 >> 1)
      {
        v21 = sub_1E406AFA8((v29 > 1), v30 + 1, 1, v21);
      }

      v21[2] = v30 + 1;
      v21[v30 + 4] = v27;
      v20 = v24;
      v4 = v28;
      v5 = v50;
      v7 = v51;
      goto LABEL_4;
    }
  }

  v32 = v52;
  if (!v21)
  {
    goto LABEL_21;
  }

  v33 = v5;
  v34 = *v2;
  v35 = (*(**v2 + 1960))(v31);
  *v1 = sub_1E4201D44();
  *(v1 + 8) = v35;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F090);
  sub_1E406A138();
  v36 = (*(*v34 + 1912))();
  v37 = v21[2];

  v36(v37);

  sub_1E4203DA4();
  v38 = sub_1E4200D94();
  v39 = (v1 + *(v33 + 36));
  v40 = v55;
  *v39 = v54;
  v39[1] = v40;
  v39[2] = v56;
  v41 = (*(*v34 + 1816))(v38);
  (*(*v41 + 744))();
  OUTLINED_FUNCTION_50();

  if (!v41)
  {
    v41 = [objc_opt_self() clearColor];
  }

  v42 = sub_1E38F08C4(v41);

  v43 = sub_1E4202734();
  sub_1E3782004();
  v44 = v32 + *(v7 + 36);
  *v44 = v42;
  *(v44 + 8) = v43;
  OUTLINED_FUNCTION_19_1();
  sub_1E3782004();
  OUTLINED_FUNCTION_19_1();
  sub_1E3782004();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E4069AE0()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 128))();
  v2 = sub_1E388ED3C(v1);
  if (!v2)
  {
    return 0;
  }

  if (*(v2 + 16) < 3uLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1E3FE381C(v2);
  }

  return v3;
}

void sub_1E4069B60(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F048);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F050);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v48 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F058);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F060);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v48 - v19;
  if (sub_1E4069AE0())
  {
    v48[1] = v20;
    v49 = v13;
    v50 = a1;
    *v11 = sub_1E4201D44();
    *(v11 + 1) = 0;
    v11[16] = 0;
    *v7 = sub_1E4201B84();
    *(v7 + 1) = 0;
    v7[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F068);
    sub_1E406AB18();
    v21 = *v1;
    (*(*v21 + 1984))();
    sub_1E4203DA4();
    sub_1E4200D94();
    v22 = &v7[*(v4 + 36)];
    v23 = v53;
    *v22 = v52;
    *(v22 + 1) = v23;
    *(v22 + 2) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4299720;
    v25 = sub_1E4202764();
    *(inited + 32) = v25;
    v26 = sub_1E4202784();
    *(inited + 33) = v26;
    v27 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v25)
    {
      v27 = sub_1E4202774();
    }

    sub_1E4202774();
    if (sub_1E4202774() != v26)
    {
      v27 = sub_1E4202774();
    }

    v28 = v49;
    OUTLINED_FUNCTION_8();
    (*(v29 + 176))(v55);
    if ((v56 & 1) == 0)
    {
      v32.n128_u64[0] = v55[2];
      v33.n128_u64[0] = v55[3];
      v31.n128_u64[0] = v55[1];
      v30.n128_u64[0] = v55[0];
      j_nullsub_1(v30, v31, v32, v33);
    }

    v34 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F070) + 44)];
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    sub_1E3782004();

    v35 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F078) + 36)];
    *v35 = v27;
    OUTLINED_FUNCTION_11_4(v35);
    sub_1E4203DA4();
    sub_1E42015C4();
    sub_1E3782004();
    v36 = memcpy((v2 + *(v51 + 36)), __src, 0x70uLL);
    v37 = *(*(*v21 + 1840))(v36);
    v38 = (*(v37 + 744))();

    if (!v38)
    {
      v38 = [objc_opt_self() clearColor];
    }

    v39 = v50;
    v40 = sub_1E38F08C4(v38);

    v41 = sub_1E4202734();
    sub_1E3782004();
    v42 = v17 + *(v28 + 36);
    *v42 = v40;
    *(v42 + 8) = v41;
    OUTLINED_FUNCTION_19_1();
    sub_1E3782004();
    OUTLINED_FUNCTION_19_1();
    sub_1E3782004();
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v28);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  }
}

void sub_1E406A138()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_173();
  v3 = type metadata accessor for Scoreboard(v2);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_222();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_250();
  *(swift_allocObject() + 16) = v1;
  OUTLINED_FUNCTION_3_257();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F098);
  sub_1E37432DC();
  sub_1E406BE48();
  OUTLINED_FUNCTION_8_195();
  sub_1E4203B34();
  OUTLINED_FUNCTION_95();
}

void sub_1E406A27C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0B0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-v8];
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*a1 >= *(a2 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  *v9 = sub_1E4201B84();
  *(v9 + 1) = 0;
  v9[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0B8);
  sub_1E406A4B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v11 = sub_1E4202764();
  *(inited + 32) = v11;
  v12 = sub_1E4202784();
  *(inited + 33) = v12;
  v13 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v11)
  {
    v13 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v12)
  {
    v13 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  (*(v14 + 176))(v21);
  if ((v22 & 1) == 0)
  {
    v17.n128_u64[0] = v21[2];
    v18.n128_u64[0] = v21[3];
    v15.n128_u64[0] = v21[0];
    v16.n128_u64[0] = v21[1];
    j_nullsub_1(v15, v16, v17, v18);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3782004();
  v19 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F098) + 36));
  *v19 = v13;
  OUTLINED_FUNCTION_11_4(v19);
}

void sub_1E406A4B4()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_173();
  v3 = type metadata accessor for Scoreboard(v2);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_222();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_250();
  v9 = (v8 + ((*(v6 + 80) + 16) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_3_257();
  *(v10 + v9) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0C0);
  sub_1E37432DC();
  sub_1E32752B0(&qword_1ECF3F0C8, &qword_1ECF3F0C0);
  OUTLINED_FUNCTION_8_195();
  sub_1E4203B34();
  OUTLINED_FUNCTION_95();
}

void sub_1E406A630()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v70 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v76 = v10 - v9;
  v11 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v75 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v72 = v15 - v14;
  v73 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v71 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8);
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4_6();
  v74 = v25 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v69 = &v58 - v28;
  v29 = *v3;
  if (*v3)
  {
    OUTLINED_FUNCTION_8();
    (*(v30 + 1864))();
    if ((v29 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_8;
    }

    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (v29 < *(v1 + 16))
  {
    v33 = v1 + 16 * v29;
    v34 = *(v33 + 32);
    v35 = *(v33 + 40);
    v68 = v29 == 0;
    v77 = v34;
    v78 = v35;
    sub_1E32822E0();
    OUTLINED_FUNCTION_50();

    v65 = sub_1E4202C44();
    v67 = v5;
    v61 = v6;
    v64 = v36;
    v66 = v37;
    v77 = v65;
    v78 = v36;
    v63 = v38 & 1;
    v79 = v38 & 1;
    v80 = v37;
    OUTLINED_FUNCTION_8();
    v40 = (*(v39 + 1792))();
    v41 = v70;
    v42 = v40;
    type metadata accessor for Scoreboard(0);
    v62 = v21;
    v43 = v20;
    sub_1E3746E10(v20);
    v44 = v72;
    sub_1E374709C(v72);
    v45 = MEMORY[0x1E6981148];
    v46 = v23;
    v60 = v11;
    v47 = MEMORY[0x1E6981138];
    v59 = j__OUTLINED_FUNCTION_18();
    v48 = v76;
    sub_1E37B5FBC(v76);
    v49 = j__OUTLINED_FUNCTION_18();
    v50 = v69;
    sub_1E37B6028(v42, v43, v44, v59, v48, v49 & 1, v45, v47, v69);

    (*(v41 + 8))(v48, v61);
    (*(v75 + 8))(v44, v60);
    (*(v71 + 8))(v43, v73);
    sub_1E37434B8(v65, v64, v63);

    v51 = *(v46 + 16);
    v52 = v74;
    v53 = v62;
    v51(v74, v50, v62);
    v54 = v67;
    *v67 = v32;
    *(v54 + 8) = 0;
    *(v54 + 9) = v68;
    v55 = v54;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0D0);
    v51(v55 + *(v56 + 48), v52, v53);
    v57 = *(v46 + 8);
    v57(v50, v53);
    v57(v52, v53);
    OUTLINED_FUNCTION_54_0();
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_1E406AB18()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_173();
  v3 = type metadata accessor for Scoreboard(v2);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_222();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_250();
  *(swift_allocObject() + 16) = v1;
  OUTLINED_FUNCTION_3_257();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8);
  sub_1E37432DC();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_8_195();
  sub_1E4203B34();
  OUTLINED_FUNCTION_95();
}

void sub_1E406AC8C()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v4 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v38 = v9 - v8;
  v10 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v39 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*v1 < *(v0 + 16))
  {
    v37 = v19;
    sub_1E32822E0();
    OUTLINED_FUNCTION_50();

    v35 = sub_1E4202C44();
    v36 = v23;
    v34 = v24 & 1;
    OUTLINED_FUNCTION_8();
    v32 = v3;
    v26 = (*(v25 + 1792))();
    type metadata accessor for Scoreboard(0);
    v33 = v10;
    sub_1E3746E10(v22);
    sub_1E374709C(v15);
    v27 = MEMORY[0x1E6981148];
    v28 = MEMORY[0x1E6981138];
    OUTLINED_FUNCTION_120();
    v29 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_120();
    sub_1E37B5FBC(v30);
    OUTLINED_FUNCTION_120();
    v31 = j__OUTLINED_FUNCTION_18();
    sub_1E37B6028(v26, v22, v15, v29, v38, v31 & 1, v27, v28, v32);

    (*(v6 + 8))(v38, v4);
    (*(v39 + 8))(v15, v33);
    (*(v17 + 8))(v22, v37);
    sub_1E37434B8(v35, v36, v34);

    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

void *sub_1E406AFA8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E406B0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0D8);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1E327D33C(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    *(v15[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1E377E1B0(v11, a2, a3, a1, v15);
  }
}

unint64_t sub_1E406B214()
{
  result = qword_1ECF3EF78;
  if (!qword_1ECF3EF78)
  {
    type metadata accessor for ScoreboardObservable(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EF78);
  }

  return result;
}

uint64_t objectdestroyTm_61()
{
  type metadata accessor for SportsKitScoreboardUpdating(0);
  OUTLINED_FUNCTION_60_5();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);

  v4 = *(v0 + 28);
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2();
  (*(v5 + 8))(v1 + v3 + v4);
  OUTLINED_FUNCTION_29_19();

  return swift_deallocObject();
}

void sub_1E406B3AC(uint64_t a1, NSObject *a2, const char *a3)
{
  v7 = type metadata accessor for SportsKitScoreboardUpdating(0);
  OUTLINED_FUNCTION_17_2(v7);
  sub_1E40684DC(v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80)), a1, a2, a3);
}

void sub_1E406B424()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  v3 = OUTLINED_FUNCTION_32_0();
  v5 = sub_1E377C2BC(v3, v4);

  v6 = *v1;
  *v1 = v5;
}

unint64_t sub_1E406B4A8()
{
  result = qword_1ECF3EFC0;
  if (!qword_1ECF3EFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EFA0);
    sub_1E406B534();
    sub_1E3FCA968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EFC0);
  }

  return result;
}

unint64_t sub_1E406B534()
{
  result = qword_1ECF3EFC8;
  if (!qword_1ECF3EFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EFB8);
    sub_1E32752B0(&qword_1ECF3EFD0, &qword_1ECF3EFD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EFC8);
  }

  return result;
}

uint64_t sub_1E406B5EC()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E406B644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E406B6EC()
{
  result = sub_1E41FE934();
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

uint64_t sub_1E406B7E4()
{
  result = type metadata accessor for ScoreboardObservable(319);
  if (v1 <= 0x3F)
  {
    result = sub_1E41FFCB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1E406B890()
{
  type metadata accessor for ScoreboardLayout();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ScoreboardObservable(319);
    if (v1 <= 0x3F)
    {
      sub_1E374A21C(319, &qword_1EE289EB0, MEMORY[0x1E697E730]);
      if (v2 <= 0x3F)
      {
        sub_1E374A21C(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1E406B97C()
{
  result = qword_1ECF3F000;
  if (!qword_1ECF3F000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EF90);
    sub_1E406BA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F000);
  }

  return result;
}

unint64_t sub_1E406BA08()
{
  result = qword_1ECF3F008;
  if (!qword_1ECF3F008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EF88);
    sub_1E32752B0(&qword_1ECF3F010, &qword_1ECF3EF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F008);
  }

  return result;
}

unint64_t sub_1E406BAC0()
{
  result = qword_1ECF3F018;
  if (!qword_1ECF3F018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EFF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EFA0);
    sub_1E406B4A8();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1ECF3F020, &qword_1ECF3EFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F018);
  }

  return result;
}

uint64_t sub_1E406BBB4()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t objectdestroy_44Tm_0()
{
  OUTLINED_FUNCTION_82_2();
  type metadata accessor for Scoreboard(0);
  OUTLINED_FUNCTION_144();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = v1 + v3;

  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  v7 = *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v4 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_29_19();
  OUTLINED_FUNCTION_95();

  return swift_deallocObject();
}

uint64_t sub_1E406BDB8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = OUTLINED_FUNCTION_70_0();
  v5 = type metadata accessor for Scoreboard(v4);
  OUTLINED_FUNCTION_17_2(v5);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a2(a1, v7, v8);
}

unint64_t sub_1E406BE48()
{
  result = qword_1ECF3F0A0;
  if (!qword_1ECF3F0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F098);
    sub_1E32752B0(&qword_1ECF3F0A8, &qword_1ECF3F0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F0A0);
  }

  return result;
}

void sub_1E406BF00()
{
  v0 = OUTLINED_FUNCTION_70_0();
  v1 = type metadata accessor for Scoreboard(v0);
  OUTLINED_FUNCTION_8_0(v1);

  sub_1E406A630();
}

uint64_t sub_1E406BFA0()
{
  OUTLINED_FUNCTION_27_2();
  v0 = type metadata accessor for SportsKitScoreboardUpdating(0);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_19_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_22_5(v2);

  return sub_1E406876C();
}

uint64_t objectdestroy_54Tm_1()
{
  type metadata accessor for SportsKitScoreboardUpdating(0);
  OUTLINED_FUNCTION_60_5();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = *(v0 + 28);
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2();
  (*(v5 + 8))(v1 + v3 + v4);

  OUTLINED_FUNCTION_29_19();

  return swift_deallocObject();
}

uint64_t sub_1E406C168()
{
  OUTLINED_FUNCTION_27_2();
  v0 = type metadata accessor for SportsKitScoreboardUpdating(0);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_19_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_22_5(v2);

  return sub_1E40680C8();
}

uint64_t sub_1E406C258(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E406C2A0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_4_257();
  sub_1E406C258(v8, v9);
  v10 = sub_1E4201754();
  v12 = v11;
  type metadata accessor for Route(0);
  OUTLINED_FUNCTION_1_286();
  sub_1E406C258(v13, v14);
  v15 = a1;

  v16 = sub_1E42010C4();
  v18 = v17;
  (*((*MEMORY[0x1E69E7D40] & *v15) + 0x190))(a2);

  *a4 = v15;
  a4[1] = v16;
  a4[2] = v18;
  a4[3] = v10;
  a4[4] = v12;
  a4[5] = a3;
}

void sub_1E406C3E4()
{
  OUTLINED_FUNCTION_31_1();
  v62 = v1;
  v64 = sub_1E42022B4();
  OUTLINED_FUNCTION_0_10();
  v63 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v5 - v4);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0E0);
  OUTLINED_FUNCTION_0_10();
  v58 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v43 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0E8);
  OUTLINED_FUNCTION_0_10();
  v61 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v43 - v11;
  sub_1E406CB48();
  v12 = *(v0 + 16);
  v56 = *(v0 + 8);
  v55 = type metadata accessor for Route(0);
  OUTLINED_FUNCTION_1_286();
  v52 = sub_1E406C258(v13, v14);
  sub_1E42010D4();
  swift_getKeyPath();
  sub_1E42010E4();

  v76 = v67;
  v77 = v68;
  v78 = v69;
  v53 = (*v12 + 272);
  v54 = *v53;
  v54(v15);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
  sub_1E4203A84();

  v47 = v79;
  v46 = v80;
  v48 = v81;
  v16 = *v0;
  v82[0] = *(v0 + 24);
  v49 = *(v0 + 40);
  OUTLINED_FUNCTION_27_10();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_27_97(v17);
  v50 = v16;

  sub_1E37E93E8(v82, &v67, &qword_1ECF303B0);

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F0F0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F0F8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F100);
  v20 = type metadata accessor for AlertContext(255);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F108);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F110);
  OUTLINED_FUNCTION_1_11();
  v24 = sub_1E32752B0(v23, &qword_1ECF3F108);
  v25 = sub_1E406D2F4();
  v67 = v21;
  v68 = v22;
  v69 = v24;
  v70 = v25;
  OUTLINED_FUNCTION_5_236();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_1E32822E0();
  v28 = sub_1E406D358();
  v29 = sub_1E406D480();
  v67 = v45;
  v68 = MEMORY[0x1E69E6158];
  v69 = v18;
  v70 = v19;
  v71 = v20;
  v72 = OpaqueTypeConformance2;
  v73 = v27;
  v74 = v28;
  v75 = v29;
  OUTLINED_FUNCTION_9_182();
  v45 = swift_getOpaqueTypeConformance2();
  v30 = OUTLINED_FUNCTION_14_173();
  v31 = v44;
  v32 = v65;
  v33 = v57;
  sub_1E4202FF4();

  OUTLINED_FUNCTION_15_5();
  v34(v33, v32);
  sub_1E42010D4();
  swift_getKeyPath();
  sub_1E42010E4();

  v76 = v67;
  v77 = v68;
  v78 = v69;
  v54(v35);
  sub_1E4203A84();

  v36 = v59;
  sub_1E406D4FC(v59);
  OUTLINED_FUNCTION_27_10();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_27_97(v37);
  v38 = v50;

  sub_1E37E93E8(v82, &v67, &qword_1ECF303B0);

  v67 = v65;
  v68 = v31;
  v69 = v45;
  v70 = v30;
  OUTLINED_FUNCTION_11_184();
  swift_getOpaqueTypeConformance2();
  v39 = v60;
  v40 = v66;
  sub_1E4202E34();

  OUTLINED_FUNCTION_15_5();
  v41(v36, v64);
  OUTLINED_FUNCTION_15_5();
  v42(v40, v39);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E406CB48()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v56[2] = v2;
  v69 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v64 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17_3(v56 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D170);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v68 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17_3(v56 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0F0);
  OUTLINED_FUNCTION_0_10();
  v66 = v17;
  v67 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v56 - v19;
  v21 = *(v0 + 8);
  v22 = *(v0 + 16);
  v23 = type metadata accessor for Route(0);
  OUTLINED_FUNCTION_1_286();
  v26 = sub_1E406C258(v24, v25);
  v63 = v21;
  v61 = v23;
  sub_1E42010D4();
  swift_getKeyPath();
  v62 = v26;
  sub_1E42010E4();

  v76 = v78;
  v77 = v79;
  (*(*v22 + 272))(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
  sub_1E4203A84();

  LODWORD(v60) = v72;
  v28 = *v1;
  v76 = *(v1 + 24);
  OUTLINED_FUNCTION_27_10();
  v29 = swift_allocObject();
  v30 = *(v1 + 16);
  v29[1] = *v1;
  v29[2] = v30;
  v29[3] = *(v1 + 32);
  v31 = v28;

  sub_1E37E93E8(&v76, &v78, &qword_1ECF303B0);

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F108);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F110);
  OUTLINED_FUNCTION_1_11();
  v35 = sub_1E32752B0(v34, &qword_1ECF3F108);
  v57 = sub_1E406D2F4();
  v58 = v35;
  v59 = v33;
  v65 = v20;
  v60 = v32;
  sub_1E4203484();

  v36 = v56[1];

  v38 = *(*v22 + 800);
  v38(v37);
  v39 = type metadata accessor for DestinationContext(0);
  if (__swift_getEnumTagSinglePayload(v36, 1, v39) == 1)
  {
    v40 = &unk_1ECF3F9E0;
    v41 = v36;
LABEL_5:
    sub_1E325F6F0(v41, v40);
    v45 = 0;
    v46 = 0xE000000000000000;
    goto LABEL_7;
  }

  v42 = v56[0];
  sub_1E37E93E8(v36 + *(v39 + 32), v56[0], &qword_1ECF3D170);
  OUTLINED_FUNCTION_3_258();
  sub_1E406E974(v36, v43);
  v44 = type metadata accessor for AlertContext(0);
  if (__swift_getEnumTagSinglePayload(v42, 1, v44) == 1)
  {
    v40 = &qword_1ECF3D170;
    v41 = v42;
    goto LABEL_5;
  }

  v47 = (v42 + *(v44 + 20));
  v45 = *v47;
  v46 = v47[1];

  sub_1E406E974(v42, type metadata accessor for AlertContext);
LABEL_7:
  v48 = v68;
  v74 = v45;
  v75 = v46;
  v68 = v46;
  sub_1E42010D4();
  swift_getKeyPath();
  sub_1E42010E4();

  v63 = v78;
  LODWORD(v62) = v79;
  v50 = v64;
  v38(v49);
  if (__swift_getEnumTagSinglePayload(v50, 1, v39) == 1)
  {
    sub_1E325F6F0(v50, &unk_1ECF3F9E0);
    v51 = type metadata accessor for AlertContext(0);
    v52 = __swift_storeEnumTagSinglePayload(v48, 1, 1, v51);
  }

  else
  {
    sub_1E37E93E8(v50 + *(v39 + 32), v48, &qword_1ECF3D170);
    OUTLINED_FUNCTION_3_258();
    v52 = sub_1E406E974(v50, v53);
  }

  MEMORY[0x1EEE9AC00](v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F100);
  type metadata accessor for AlertContext(0);
  v70 = v60;
  v71 = v59;
  v72 = v58;
  v73 = v57;
  OUTLINED_FUNCTION_5_236();
  swift_getOpaqueTypeConformance2();
  sub_1E32822E0();
  sub_1E406D358();
  sub_1E406D480();
  v54 = v67;
  v55 = v65;
  sub_1E4203434();

  sub_1E325F6F0(v48, &qword_1ECF3D170);

  (*(v66 + 8))(v55, v54);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E406D2F4()
{
  result = qword_1EE2977A8[0];
  if (!qword_1EE2977A8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F110);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2977A8);
  }

  return result;
}

unint64_t sub_1E406D358()
{
  result = qword_1EE288D60;
  if (!qword_1EE288D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F0F8);
    sub_1E406D414(&qword_1EE2883C8, &qword_1ECF3EB90);
    sub_1E406D414(&qword_1EE2883C0, &qword_1ECF3F118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D60);
  }

  return result;
}

uint64_t sub_1E406D414(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1E40374F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E406D480()
{
  result = qword_1EE288728;
  if (!qword_1EE288728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288728);
  }

  return result;
}

uint64_t sub_1E406D4FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E42022B4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  *a1 = sub_1E4203944();
  v15 = *MEMORY[0x1E697C8C0];
  v16 = *(v6 + 104);
  v17 = v16(a1, v15, v4);
  (*(**(v1 + 40) + 288))(v17);
  (*(**(v1 + 16) + 800))();
  v18 = type metadata accessor for DestinationContext(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    return sub_1E325F6F0(v14, &unk_1ECF3F9E0);
  }

  v20 = v14[48];
  OUTLINED_FUNCTION_3_258();
  result = sub_1E406E974(v14, v21);
  if ((v20 & 1) == 0)
  {
    v31.origin.x = OUTLINED_FUNCTION_26_115();
    CGRectGetMidX(v31);
    v22 = *(v2 + 24);
    if (v22)
    {
      v23 = *(*v22 + 184);

      v23(v24);
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        v32.origin.x = OUTLINED_FUNCTION_26_115();
        CGRectGetMidY(v32);
      }

      v27 = sub_1E4203934();
      (*(v6 + 8))(a1, v4);
      *v10 = v27;
      v16(v10, v15, v4);
      return (*(v6 + 32))(a1, v10, v4);
    }

    else
    {
      type metadata accessor for AppEnvironment();
      OUTLINED_FUNCTION_4_257();
      sub_1E406C258(v28, v29);
      result = sub_1E4201744();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E406D8C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1E406D960()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v35 = v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB90);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v33 - v8;
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F138);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F118);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v33 - v16;
  v18 = type metadata accessor for AlertContext(0);
  if (*(v3 + *(v18 + 32)))
  {
    v38 = *(v3 + *(v18 + 32));
    swift_getKeyPath();
    v19 = *v1;
    v20 = *(v1 + 8);
    v39 = *(v1 + 24);
    v40 = v20;
    OUTLINED_FUNCTION_27_10();
    v21 = swift_allocObject();
    OUTLINED_FUNCTION_23_101(v21);

    v22 = v19;
    sub_1E37E93E8(&v40, v37, &qword_1ECF3F140);
    sub_1E37E93E8(&v39, v37, &qword_1ECF303B0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D198);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB98);
    OUTLINED_FUNCTION_8_196();
    sub_1E32752B0(v23, v24);
    sub_1E375BEF4();
    sub_1E40374F4();
    sub_1E4203B34();
    v25 = v36;
    (*(v6 + 16))(v12, v9, v36);
    swift_storeEnumTagMultiPayload();
    sub_1E406D414(&qword_1EE2883C8, &qword_1ECF3EB90);
    sub_1E406D414(&qword_1EE2883C0, &qword_1ECF3F118);
    sub_1E4201F44();
    (*(v6 + 8))(v9, v25);
  }

  else
  {
    v38 = *(v3 + *(v18 + 28));
    swift_getKeyPath();
    v26 = *v1;
    v27 = *(v1 + 8);
    v39 = *(v1 + 24);
    v40 = v27;
    OUTLINED_FUNCTION_27_10();
    v28 = swift_allocObject();
    OUTLINED_FUNCTION_23_101(v28);

    v29 = v26;
    sub_1E37E93E8(&v40, v37, &qword_1ECF3F140);
    sub_1E37E93E8(&v39, v37, &qword_1ECF303B0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F148);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB98);
    OUTLINED_FUNCTION_8_196();
    sub_1E32752B0(v30, v31);
    sub_1E375BEF4();
    sub_1E40374F4();
    sub_1E4203B34();
    v32 = v34;
    (*(v14 + 16))(v12, v17, v34);
    swift_storeEnumTagMultiPayload();
    sub_1E406D414(&qword_1EE2883C8, &qword_1ECF3EB90);
    sub_1E406D414(&qword_1EE2883C0, &qword_1ECF3F118);
    sub_1E4201F44();
    (*(v14 + 8))(v17, v32);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E406DE70()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v42 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F570);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  v23 = sub_1E3FBD320(v6);
  if (v24)
  {
    v25 = v24;
    v38 = v23;
    v41 = v8;
    v26 = [v6 style];
    v39 = v3;
    v40 = v1;
    if (v26 == 2)
    {
      sub_1E4200A04();
    }

    else
    {
      if ([v6 style] != 1)
      {
        v32 = sub_1E4200A34();
        v33 = 1;
        goto LABEL_11;
      }

      sub_1E4200A14();
    }

    v32 = sub_1E4200A34();
    v33 = 0;
LABEL_11:
    __swift_storeEnumTagSinglePayload(v22, v33, 1, v32);
    sub_1E37E93E8(v22, v19, &qword_1ECF2F570);
    v34 = swift_allocObject();
    *(v34 + 16) = v6;
    MEMORY[0x1EEE9AC00](v34);
    *(&v37 - 2) = v38;
    *(&v37 - 1) = v25;
    v35 = v6;
    sub_1E4203954();

    sub_1E325F6F0(v22, &qword_1ECF2F570);
    v36 = v41;
    (*(v11 + 32))(v41, v14, v9);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v9);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
}

uint64_t sub_1E406E134@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for AlertContext(0) + 24) + 8))
  {
    sub_1E32822E0();

    result = sub_1E4202C44();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

void sub_1E406E1CC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v56 = v4;
  v50 = *(*(v2 + 16) - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v51 = v8;
  v9 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v47 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v46 = *(v3 + 24);
  v63 = v46;
  v64 = MEMORY[0x1E697E040];
  OUTLINED_FUNCTION_4_1();
  WitnessTable = swift_getWitnessTable();
  *&v59 = v9;
  *(&v59 + 1) = WitnessTable;
  v48 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v53 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17_3(&v45 - v18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F120);
  v55 = OpaqueTypeMetadata2;
  v19 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v52 = v23 - v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_17_3(&v45 - v26);
  (*v1)();
  v27 = *(v1 + 32);
  v65 = *(v1 + 16);
  v66 = v27;
  v28 = *(v1 + 32);
  v59 = *(v1 + 16);
  v60 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F128);
  sub_1E42038F4();
  if ((v62 & 1) == 0)
  {
    sub_1E3A1F10C();
    sub_1E41499CC(MEMORY[0x1E69E7DE0], &v59);
  }

  v29 = *(v1 + 32);
  v59 = *(v1 + 16);
  v60 = v29;
  sub_1E42038F4();
  if ((v62 & 1) == 0)
  {
    *&v61 = *(&v61 + 1);
    sub_1E3A1F10C();
    sub_1E41499CC(MEMORY[0x1E69E7DE0], &v59);
  }

  sub_1E4203DA4();
  v30 = v51;
  sub_1E4203464();
  OUTLINED_FUNCTION_15_5();
  v31(v7, v30);
  v32 = v49;
  v33 = v48;
  sub_1E4203344();
  OUTLINED_FUNCTION_15_5();
  v34(v13, v9);
  swift_getKeyPath();
  v61 = v65;
  v62 = v66;
  sub_1E4203914();
  *&v61 = v9;
  *(&v61 + 1) = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v52;
  v37 = v55;
  sub_1E4202DE4();

  OUTLINED_FUNCTION_15_5();
  v38(v32, v37);
  OUTLINED_FUNCTION_1_25();
  v41 = sub_1E32752B0(v39, v40);
  v57 = OpaqueTypeConformance2;
  v58 = v41;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v42 = *(v21 + 16);
  v43 = v54;
  v42(v54, v36, v19);
  v44 = *(v21 + 8);
  v44(v36, v19);
  v42(v56, v43, v19);
  v44(v43, v19);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E406E73C@<D0>(__n128 *a1@<X8>)
{
  sub_1E40DDADC(v4);
  result = v4[0].n128_f64[0];
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  a1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_1E406E784(__int128 *a1)
{
  v1 = a1[1];
  v4 = *a1;
  v5 = v1;
  v6 = *(a1 + 32);
  v7 = v4;
  sub_1E39F6940(&v7, v3);

  return sub_1E40DDB38();
}

uint64_t sub_1E406E7E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x1A8))();
  v7 = v6;
  v9 = v8;
  v10 = *(v2 + 24);
  v15 = *(v2 + 40);
  v16 = v10;
  OUTLINED_FUNCTION_27_10();
  v11 = swift_allocObject();
  v12 = v2[2];
  v11[1] = v2[1];
  v11[2] = v12;
  v11[3] = v2[3];
  v13 = v4;
  sub_1E37E93E8(&v16, v20, &qword_1ECF3F140);
  sub_1E37E93E8(&v15, v20, &qword_1ECF303B0);

  v17 = 0;
  v18 = 0;
  v19 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD70);
  sub_1E42038E4();
  result = v22;
  if ((v9 & 1) != 0 || ((v7 | v5) & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {

    result = 0;
  }

  else
  {
    v5 = v20[0];
    v7 = v20[1];
    v9 = v21;
  }

  *a1 = sub_1E406EB24;
  *(a1 + 8) = v11;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9 & 1;
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1E406E974(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E406EA6C@<X0>(uint64_t a1@<X8>)
{
  sub_1E32822E0();

  result = sub_1E4202C44();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t objectdestroyTm_62()
{

  OUTLINED_FUNCTION_27_10();

  return swift_deallocObject();
}

id sub_1E406EBD8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI36MetricsEventDetailListViewController_event] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MetricsEventDetailListViewController();
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1E406ECB0()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for MetricsEventDetailListViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  OUTLINED_FUNCTION_2_251();
  v1 = sub_1E4205ED4();
  [v0 setTitle_];

  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode_];

  v3 = [v0 tableView];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for MetricsDataFieldCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1E4019784();

    v6 = sub_1E4205ED4();

    [v4 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];
  }

  else
  {
    __break(1u);
  }
}

void sub_1E406EE0C(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MetricsEventDetailListViewController();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 tableView];
  if (v3)
  {
    v4 = v3;
    [v3 reloadData];
  }

  else
  {
    __break(1u);
  }
}

id sub_1E406EF70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsEventDetailListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E406EFB4()
{
  v0 = *(sub_1E4167DA8() + 2);

  return v0;
}

unint64_t sub_1E406F110(void *a1)
{
  v2 = v1;
  sub_1E4019784();

  v4 = sub_1E4205ED4();

  v5 = sub_1E41FE7E4();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  type metadata accessor for MetricsDataFieldCell();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1E4167DA8();
    result = sub_1E41FE824();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v9 + 2))
    {
      v11 = v9[result + 32];

      sub_1E41675F8(v11);
      v14 = v13;
      result = *(v2 + OBJC_IVAR____TtC8VideosUI36MetricsEventDetailListViewController_event);
      if (result)
      {
        v15 = v12;
        v16 = sub_1E4167B40(result, v11);
        v18 = v17;
        sub_1E41678A8(v11);
        (*((*MEMORY[0x1E69E7D40] & *v8) + 0xD8))(v14, v15, v16, v18, v19, v20);

        return v8;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v21 = objc_allocWithZone(MEMORY[0x1E69DD028]);

  return [v21 init];
}

uint64_t sub_1E406F3B4()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E406F424(char a1, char a2)
{
  if (qword_1E42E87C8[a1] == qword_1E42E87C8[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1E42079A4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1E406F4A8()
{
  sub_1E4206014();
}

uint64_t sub_1E406F4F0()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E406F54C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E406F3B4();
  *a1 = result;
  return result;
}

uint64_t sub_1E406F57C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E406F400(*v1);
  *a1 = result;
  a1[1] = 0xE800000000000000;
  return result;
}

uint64_t sub_1E406F5AC(unsigned __int8 a1, char a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 0xFFFFFF00 | a1;
}

uint64_t sub_1E406F5C4()
{
  v0 = sub_1E4206584();
  MEMORY[0x1E69109E0](v0);

  MEMORY[0x1E69109E0](93, 0xE100000000000000);
  return 0x5B3A6874646977;
}

uint64_t sub_1E406F634(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E3928950(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 16 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E406F6A4(uint64_t a1)
{
  v8 = 0;
  v9 = 0xE000000000000000;
  v6 = sub_1E406F898(a1);
  sub_1E406F82C(&v6);
  v1 = *(v6 + 2);
  if (v1)
  {
    v2 = v6 + 40;
    do
    {
      v2 += 24;
      v6 = sub_1E4207944();
      v7 = v3;
      MEMORY[0x1E69109E0](8250, 0xE200000000000000);
      v4 = sub_1E4206584();
      MEMORY[0x1E69109E0](v4);

      MEMORY[0x1E69109E0](93, 0xE100000000000000);
      MEMORY[0x1E69109E0](0x5B3A6874646977, 0xE700000000000000);

      MEMORY[0x1E69109E0](10, 0xE100000000000000);
      MEMORY[0x1E69109E0](v6, v7);

      --v1;
    }

    while (v1);

    return v8;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1E406F82C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E4070664(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E406FB9C(v5);
  *a1 = v2;
  return result;
}

void *sub_1E406F898(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1E406FB18(*(a1 + 16), 0);
  v4 = sub_1E4070560(&v6, (v3 + 4), v1, a1);

  sub_1E34AF4DC();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

_BYTE *sub_1E406F958(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E406FA30(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 9);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E406FA7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E406FACC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

void *sub_1E406FB18(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F160);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

uint64_t sub_1E406FB9C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E4207914();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F168);
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1E406FD30(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E406FCA0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E406FCA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = v8 + 24;
        v10 = *(v8 + 24);
        if (v10 >= *v8)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v11 = *(v8 + 32);
        v12 = *(v8 + 40);
        v13 = *(v8 + 41);
        *v9 = *v8;
        v14 = *(v8 + 16);
        *v8 = v10;
        *(v8 + 8) = v11;
        *(v8 + 16) = v12;
        *(v8 + 17) = v13;
        v8 -= 24;
        *(v9 + 16) = v14;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E406FD30(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v87 = result;
  v91 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v86 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9);
        v11 = (*a3 + 24 * v7);
        v14 = *v11;
        v13 = v11 + 6;
        v12 = v14;
        v15 = v7 + 2;
        while (1)
        {
          v16 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = (v10 < v12) ^ (*v13 >= *(v13 - 3));
          v13 += 3;
          ++v15;
          if ((v17 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v12)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v18 = 24 * v6;
            v19 = 24 * v7 + 17;
            v20 = v9;
            v21 = v7;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v23 = (v22 + v19);
                v24 = *(v22 + v19 - 17);
                v25 = v22 + v18;
                v26 = *(v23 - 9);
                v27 = *(v23 - 1);
                v28 = *v23;
                v29 = *(v25 - 8);
                *(v23 - 17) = *(v25 - 24);
                *(v23 - 1) = v29;
                *(v25 - 24) = v24;
                *(v25 - 16) = v26;
                *(v25 - 8) = v27;
                *(v25 - 7) = v28;
              }

              ++v21;
              v18 -= 24;
              v19 += 24;
            }

            while (v21 < v20);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return result;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9 - 24;
            v32 = v7 - v9;
            do
            {
              v33 = v32;
              v34 = v31;
              do
              {
                v35 = v34 + 24;
                v36 = *(v34 + 24);
                if (v36 >= *v34)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v37 = *(v34 + 32);
                v38 = *(v34 + 40);
                v39 = *(v34 + 41);
                *v35 = *v34;
                v40 = *(v34 + 16);
                *v34 = v36;
                *(v34 + 8) = v37;
                *(v34 + 16) = v38;
                *(v34 + 17) = v39;
                v34 -= 24;
                *(v35 + 16) = v40;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v88 = v9;
      if ((result & 1) == 0)
      {
        result = sub_1E37FFF70(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v43 = *(v8 + 16);
      v42 = *(v8 + 24);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        result = sub_1E37FFF70((v42 > 1), v43 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v44;
      v45 = v8 + 32;
      v46 = (v8 + 32 + 16 * v43);
      *v46 = v7;
      v46[1] = v88;
      v89 = *v87;
      if (!*v87)
      {
        goto LABEL_114;
      }

      if (v43)
      {
        while (1)
        {
          v47 = v44 - 1;
          v48 = (v45 + 16 * (v44 - 1));
          v49 = (v8 + 16 * v44);
          if (v44 >= 4)
          {
            break;
          }

          if (v44 == 3)
          {
            v50 = *(v8 + 32);
            v51 = *(v8 + 40);
            v60 = __OFSUB__(v51, v50);
            v52 = v51 - v50;
            v53 = v60;
LABEL_56:
            if (v53)
            {
              goto LABEL_96;
            }

            v65 = *v49;
            v64 = v49[1];
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_99;
            }

            v69 = v48[1];
            v70 = v69 - *v48;
            if (__OFSUB__(v69, *v48))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v67, v70))
            {
              goto LABEL_104;
            }

            if (v67 + v70 >= v52)
            {
              if (v52 < v70)
              {
                v47 = v44 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v44 < 2)
          {
            goto LABEL_98;
          }

          v72 = *v49;
          v71 = v49[1];
          v60 = __OFSUB__(v71, v72);
          v67 = v71 - v72;
          v68 = v60;
LABEL_71:
          if (v68)
          {
            goto LABEL_101;
          }

          v74 = *v48;
          v73 = v48[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_103;
          }

          if (v75 < v67)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v47 - 1 >= v44)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v79 = (v45 + 16 * (v47 - 1));
          v80 = *v79;
          v81 = (v45 + 16 * v47);
          v82 = v81[1];
          result = sub_1E4070394((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v89);
          if (v5)
          {
          }

          if (v82 < v80)
          {
            goto LABEL_91;
          }

          v83 = v8;
          v84 = *(v8 + 16);
          if (v47 > v84)
          {
            goto LABEL_92;
          }

          *v79 = v80;
          v79[1] = v82;
          if (v47 >= v84)
          {
            goto LABEL_93;
          }

          v44 = v84 - 1;
          result = memmove((v45 + 16 * v47), v81 + 2, 16 * (v84 - 1 - v47));
          *(v83 + 16) = v84 - 1;
          v85 = v84 > 2;
          v8 = v83;
          v5 = 0;
          if (!v85)
          {
            goto LABEL_85;
          }
        }

        v54 = v45 + 16 * v44;
        v55 = *(v54 - 64);
        v56 = *(v54 - 56);
        v60 = __OFSUB__(v56, v55);
        v57 = v56 - v55;
        if (v60)
        {
          goto LABEL_94;
        }

        v59 = *(v54 - 48);
        v58 = *(v54 - 40);
        v60 = __OFSUB__(v58, v59);
        v52 = v58 - v59;
        v53 = v60;
        if (v60)
        {
          goto LABEL_95;
        }

        v61 = v49[1];
        v62 = v61 - *v49;
        if (__OFSUB__(v61, *v49))
        {
          goto LABEL_97;
        }

        v60 = __OFADD__(v52, v62);
        v63 = v52 + v62;
        if (v60)
        {
          goto LABEL_100;
        }

        if (v63 >= v57)
        {
          v77 = *v48;
          v76 = v48[1];
          v60 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v60)
          {
            goto LABEL_105;
          }

          if (v52 < v78)
          {
            v47 = v44 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v88;
      a4 = v86;
      if (v88 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*v87)
  {
    goto LABEL_115;
  }

  sub_1E407025C(&v91, *v87, a3);
}

uint64_t sub_1E407025C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1E37FFF5C(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1E4070394((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1E4070394(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 24;
  v9 = (a3 - __dst) / 24;
  if (v8 < v9)
  {
    v10 = 24 * v8;
    v11 = &__src[24 * v8];
    if (a4 != __src || v11 <= a4)
    {
      memmove(a4, __src, v10);
    }

    v13 = &v4[v10];
    while (1)
    {
      if (v4 >= v13 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v15 = v6;
      v16 = v7 == v6;
      v6 += 24;
      if (!v16)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 24;
    }

    v15 = v4;
    v16 = v7 == v4;
    v4 += 24;
    if (v16)
    {
      goto LABEL_18;
    }

LABEL_17:
    v17 = *v15;
    *(v7 + 2) = *(v15 + 2);
    *v7 = v17;
    goto LABEL_18;
  }

  v18 = 24 * v9;
  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v13 = &v4[v18];
LABEL_25:
  v20 = v6 - 24;
  for (v5 -= 24; v13 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v13 - 3) < *v20)
    {
      v16 = v5 + 24 == v6;
      v6 -= 24;
      if (!v16)
      {
        v23 = *v20;
        *(v5 + 16) = *(v20 + 2);
        *v5 = v23;
        v6 = v20;
      }

      goto LABEL_25;
    }

    if (v13 != (v5 + 24))
    {
      v22 = *(v13 - 24);
      *(v5 + 16) = *(v13 - 1);
      *v5 = v22;
    }

    v13 -= 24;
  }

LABEL_38:
  v24 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v24])
  {
    memmove(v6, v4, v24);
  }

  return 1;
}

void *sub_1E4070560(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7)) | (v9 << 6);
      v13 = *(*(a4 + 48) + 8 * v12);
      v7 &= v7 - 1;
      v14 = *(a4 + 56) + 16 * v12;
      v15 = *v14;
      v16 = *(v14 + 8);
      LOBYTE(v14) = *(v14 + 9);
      *a2 = v13;
      *(a2 + 8) = v15;
      *(a2 + 16) = v16;
      *(a2 + 17) = v14;
      a2 += 24;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1E4070678(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F160);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

uint64_t sub_1E4070780()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E40707F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 840))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E407089C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

void (*sub_1E407090C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_1E4200664();
  return sub_1E3844B40;
}

uint64_t sub_1E407099C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E4070A10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E4070B3C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E4070C60;
}

void sub_1E4070C60(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1E4070A10(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E4070A10(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E4070D14()
{
  v1 = v0;
  v18 = MEMORY[0x1E69E7CC0];
  ViewModelKeys.rawValue.getter(19);
  v3 = v2;
  v5 = v4;
  v6 = (*(*v0 + 672))();
  sub_1E3277E60(v3, v5, v6, &v16);

  if (!v17)
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((OUTLINED_FUNCTION_3_259() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1E3C7ED20(28);
  sub_1E3277E60(v7, v8, v15, &v16);

  if (!v17)
  {
LABEL_13:
    sub_1E329505C(&v16);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  if ((OUTLINED_FUNCTION_3_259() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = *(v15 + 16);
  if (!v9)
  {

    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for ContextMenuItemModel();
  v10 = MEMORY[0x1E69E7CC0];
  v11 = 32;
  do
  {
    v12 = *(v15 + v11);

    if (sub_1E3BD97B8(232, v12, v1))
    {

      MEMORY[0x1E6910BF0](v13);
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();

      v10 = v18;
    }

    v11 += 8;
    --v9;
  }

  while (v9);

  return v10;
}

uint64_t sub_1E4070F30()
{
  ViewModelKeys.rawValue.getter(19);
  v2 = v1;
  v4 = v3;
  v5 = (*(*v0 + 672))();
  sub_1E3277E60(v2, v4, v5, &v10);

  if (!v11)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((OUTLINED_FUNCTION_1_287() & 1) == 0)
  {
    return 0;
  }

  sub_1E3C7ED20(27);
  sub_1E3277E60(v6, v7, v9, &v10);

  if (!v11)
  {
LABEL_6:
    sub_1E329505C(&v10);
    return 0;
  }

  if (OUTLINED_FUNCTION_1_287())
  {
    type metadata accessor for ViewModel();

    return sub_1E39BED80(230, v9, v0);
  }

  return 0;
}

uint64_t sub_1E40710C4(__int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - v11;
  v13 = OBJC_IVAR____TtC8VideosUI21PlaybackSongViewModel__showWaveform;
  LOBYTE(v20[0]) = 0;
  sub_1E4200634();
  (*(v9 + 32))(v3 + v13, v12, v7);

  v14 = sub_1E39BEDCC(a1, a2, a3);
  v15 = v14;
  if (v14)
  {
    v16 = *(*v14 + 776);

    v16(v20, v17, &unk_1F5D5E8D8, &off_1F5D5CCB8);
    if (v20[3])
    {
      swift_dynamicCast();
    }

    else
    {
      sub_1E329505C(v20);
    }

    sub_1E407089C();
  }

  return v15;
}

uint64_t sub_1E4071280(void *a1)
{
  v2 = v1;
  v3 = (*a1 + 488);
  v4 = *v3;
  v5 = (*v3)();
  v6 = v5;
  if (v5)
  {
    v7 = sub_1E373E010(31, v5);

    if (v7)
    {
      v6 = *(v7 + 24);
      v19 = *(v7 + 16);
    }

    else
    {
      v19 = 0;
      v6 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v8 = (*(*v2 + 488))(v5);
  if (v8)
  {
    v9 = sub_1E373E010(31, v8);

    if (v9)
    {
      v8 = *(v9 + 24);
      v18 = *(v9 + 16);
    }

    else
    {
      v18 = 0;
      v8 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v11 = (*(*v2 + 504))(v21);
  if (*v10)
  {
    v12 = v10;
    v13 = v4();
    if (v13 && (v14 = sub_1E373E010(31, v13), , v14))
    {
      swift_isUniquelyReferenced_nonNull_native();
      v20 = *v12;
      sub_1E37518B8(v14, 31);
      *v12 = v20;
    }

    else
    {
      sub_1E388BF2C(31);
    }
  }

  v11(v21, 0);
  result = v18;
  if (!v8)
  {
    if (!v6)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (!v6)
  {
LABEL_25:

    goto LABEL_26;
  }

  if (v18 == v19 && v8 == v6)
  {
  }

  v17 = sub_1E42079A4();

  if ((v17 & 1) == 0)
  {
LABEL_26:
    type metadata accessor for PlaybackSongViewModel();
    sub_1E4071718();
    sub_1E4200514();
    sub_1E4200594();
  }

  return result;
}

uint64_t sub_1E4071580()
{
  v1 = OBJC_IVAR____TtC8VideosUI21PlaybackSongViewModel__showWaveform;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1E40715E8()
{
  v0 = ViewModel.deinit();
  v1 = OBJC_IVAR____TtC8VideosUI21PlaybackSongViewModel__showWaveform;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E407168C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaybackSongViewModel();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for PlaybackSongViewModel()
{
  result = qword_1EE29B870;
  if (!qword_1EE29B870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E4071718()
{
  result = qword_1EE265CF8[0];
  if (!qword_1EE265CF8[0])
  {
    type metadata accessor for PlaybackSongViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE265CF8);
  }

  return result;
}

void sub_1E4071778()
{
  sub_1E32A995C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E4071808(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  else
  {
    return sub_1E42036E4();
  }
}

uint64_t sub_1E407181C(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
  }

  else
  {
    return sub_1E42036E4();
  }
}

uint64_t sub_1E4071898(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_4_73();
  sub_1E42036B4();
  MEMORY[0x1E69124B0](a2);
  return sub_1E4207BA4();
}

uint64_t sub_1E4071900()
{
  v1 = *(v0 + 8);
  sub_1E4207B44();
  sub_1E42036B4();
  MEMORY[0x1E69124B0](v1);
  return sub_1E4207BA4();
}

uint64_t type metadata accessor for SportsPlayByPlayItemViewData()
{
  result = qword_1EE2A9FA0;
  if (!qword_1EE2A9FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E40719DC()
{
  OUTLINED_FUNCTION_31_1();
  v183 = v0;
  v185 = v1;
  LODWORD(v3) = v2;
  v190 = v4;
  v6 = v5;
  v8 = v7;
  v179 = v9;
  v182 = sub_1E41FE1B4();
  OUTLINED_FUNCTION_0_10();
  v181 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v12);
  v187 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v186 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v16);
  v173 = sub_1E4205784();
  OUTLINED_FUNCTION_0_10();
  v176 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D578);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_17_3(v167 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98);
  v24 = OUTLINED_FUNCTION_17_2(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = (v167 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v167 - v29;
  countAndFlagsBits = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v184 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v34);
  v191 = type metadata accessor for SportsPlayByPlayItemViewData();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v36);
  v37 = *(v6 + 16);
  v175 = v30;
  v174 = v27;
  if (!v37)
  {
    v199 = 0u;
    v200 = 0u;
    goto LABEL_10;
  }

  v195 = &type metadata for ViewModelKeys.Sports;
  v196 = &off_1F5D7BC68;
  LOBYTE(v192) = 7;

  sub_1E3F9F164(&v192);

  __swift_destroy_boxed_opaque_existential_1(&v192);
  if (!*(&v200 + 1))
  {
LABEL_10:
    sub_1E325F6F0(&v199, &unk_1ECF296E0);
    v39 = 0;
    v40 = 0;
    goto LABEL_11;
  }

  v38 = swift_dynamicCast();
  if (v38)
  {
    v39 = v192;
  }

  else
  {
    v39 = 0;
  }

  if (v38)
  {
    v40 = v193;
  }

  else
  {
    v40 = 0;
  }

LABEL_11:
  sub_1E42051E4();

  v192 = sub_1E3EA9868(v41);
  sub_1E4076D24(&v192, v39, v40);

  object = v192;
  sub_1E379D7E4(v185, &v192, &qword_1ECF33020);
  if (v37)
  {
    v43 = *(v6 + 32);
    if (sub_1E32AE9B0(object))
    {
      if ((object & 0xC000000000000001) != 0)
      {
        v44 = countAndFlagsBits;
        v45 = v8;
        v46 = v3;

        v48 = MEMORY[0x1E6911E60](0, object);
      }

      else
      {
        if (!*((object & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_98;
        }

        v44 = countAndFlagsBits;
        v45 = v8;
        v46 = v3;
        v47 = *(object + 32);

        v48 = v47;
      }

      v49 = v48;
      v50 = sub_1E4205A44();

      if (v50 != 2 && (v50 & 1) != 0)
      {

        v51 = sub_1E40758F8(v43, &v192);

        sub_1E325F6F0(&v192, &qword_1ECF33020);
        v52 = 1;
        v53 = v188;
        v54 = v191;
        LODWORD(v3) = v46;
        v8 = v45;
        countAndFlagsBits = v44;
        goto LABEL_30;
      }

      LODWORD(v3) = v46;
      v8 = v45;
      countAndFlagsBits = v44;
    }
  }

  v55 = sub_1E3FE381C(v6);
  v54 = v191;
  if (!v55)
  {
    sub_1E325F6F0(&v192, &qword_1ECF33020);

    goto LABEL_28;
  }

  v56 = v55;
  v57 = sub_1E37CB21C(object);

  if (!v57)
  {
    goto LABEL_27;
  }

  v58 = sub_1E4205A44();

  if (v58 == 2)
  {
    sub_1E325F6F0(&v192, &qword_1ECF33020);

    v54 = v191;
LABEL_28:
    v51 = sub_1E42036E4();
    v52 = 0;
    goto LABEL_29;
  }

  v54 = v191;
  if ((v58 & 1) == 0)
  {
LABEL_27:
    sub_1E325F6F0(&v192, &qword_1ECF33020);

    goto LABEL_28;
  }

  v51 = sub_1E40758F8(v56, &v192);

  sub_1E325F6F0(&v192, &qword_1ECF33020);
  v52 = 2;
LABEL_29:
  v53 = v188;
LABEL_30:
  v53[3] = v51;
  *(v53 + 32) = v52;
  v59 = sub_1E4205204();
  if (v60)
  {
    v61 = v59;
    object = v60;
  }

  else
  {
    v62 = v178;
    sub_1E41FE614();
    v61 = sub_1E41FE5E4();
    object = v63;
    OUTLINED_FUNCTION_15_5();
    v64(v62, countAndFlagsBits);
  }

  *v53 = v61;
  v53[1] = object;
  v192 = sub_1E4205224();
  LOBYTE(v193) = v65 & 1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8E0);
  sub_1E4148C68(sub_1E37E8788, v66, &v199);
  v53[2] = v199;
  v53[5] = sub_1E42051F4();
  v53[6] = v67;
  v68 = *(v54 + 72);
  v69 = *(v186 + 16);
  v69(v53 + v68, v190, v187);
  v184 = v8;
  v70 = sub_1E4205214();
  if (!v70)
  {
    goto LABEL_56;
  }

  object = v70;
  v71 = sub_1E42052A4();
  if (v72)
  {
    goto LABEL_55;
  }

  countAndFlagsBits = v71;
  v73 = sub_1E42052B4();
  if (v74)
  {
    goto LABEL_55;
  }

  v167[1] = v73;
  v167[2] = countAndFlagsBits;
  LODWORD(v178) = v3;
  v75 = sub_1E4205294();
  v3 = v175;
  sub_1E4205514();

  v76 = v174;
  countAndFlagsBits = v173;
  (*(v176 + 104))(v174, *MEMORY[0x1E69D3BF8], v173);
  __swift_storeEnumTagSinglePayload(v76, 0, 1, countAndFlagsBits);
  v77 = *(v20 + 48);
  v53 = v177;
  sub_1E379D7E4(v3, v177, &qword_1ECF2BD98);
  v168 = v77;
  v78 = countAndFlagsBits;
  sub_1E379D7E4(v76, v53 + v77, &qword_1ECF2BD98);
  OUTLINED_FUNCTION_52(v53, 1, countAndFlagsBits);
  if (v83)
  {
    v53 = &unk_1E42E3AB0;
    sub_1E325F6F0(v76, &qword_1ECF2BD98);
    v79 = OUTLINED_FUNCTION_31_90();
    v80 = v177;
    sub_1E325F6F0(v79, v81);
    OUTLINED_FUNCTION_52(v80 + v168, 1, countAndFlagsBits);
    if (!v83)
    {
      goto LABEL_44;
    }

    sub_1E325F6F0(v80, &qword_1ECF2BD98);
    OUTLINED_FUNCTION_22_99();
LABEL_55:

LABEL_56:
    v53[11] = 0;
    v53[12] = 0xE000000000000000;
    OUTLINED_FUNCTION_70_30();
    *v111 = 0;
    *(v111 + 8) = 0;
    goto LABEL_57;
  }

  v76 = v171;
  sub_1E379D7E4(v53, v171, &qword_1ECF2BD98);
  v82 = v168;
  OUTLINED_FUNCTION_52(v53 + v168, 1, v78);
  if (v83)
  {
    v84 = v78;
    v53 = &unk_1E42E3AB0;
    sub_1E325F6F0(v174, &qword_1ECF2BD98);
    v80 = v177;
    sub_1E325F6F0(v175, &qword_1ECF2BD98);
    OUTLINED_FUNCTION_15_5();
    v85(v76, v84);
LABEL_44:
    sub_1E325F6F0(v80, &qword_1ECF2D578);
    OUTLINED_FUNCTION_22_99();
    OUTLINED_FUNCTION_75_27();
    goto LABEL_45;
  }

  v106 = v176;
  (*(v176 + 32))(v169, v53 + v82, v78);
  OUTLINED_FUNCTION_1_288();
  sub_1E4078194(v107, v108);
  OUTLINED_FUNCTION_277();
  LODWORD(v168) = sub_1E4205E84();
  v109 = *(v106 + 8);
  v77 = v106 + 8;
  countAndFlagsBits = v109;
  v110 = OUTLINED_FUNCTION_31_90();
  v109(v110);
  v76 = &qword_1ECF2BD98;
  v3 = &unk_1E42E3AB0;
  sub_1E325F6F0(v174, &qword_1ECF2BD98);
  sub_1E325F6F0(v175, &qword_1ECF2BD98);
  (v109)(v171, v78);
  sub_1E325F6F0(v53, &qword_1ECF2BD98);
  OUTLINED_FUNCTION_22_99();
  OUTLINED_FUNCTION_75_27();
  if (v168)
  {
    goto LABEL_55;
  }

LABEL_45:
  countAndFlagsBits = v172;
  v86 = v187;
  v69(v172, v190, v187);
  if ((*(v186 + 88))(countAndFlagsBits, v86) == *MEMORY[0x1E69D3D88])
  {
    goto LABEL_55;
  }

  v87 = v186;
  v88 = *(v186 + 8);
  v89 = v187;
  v88(v172, v187);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1E4299720;
  v91 = MEMORY[0x1E69E6530];
  v92 = MEMORY[0x1E69E65A8];
  *(v90 + 56) = MEMORY[0x1E69E6530];
  *(v90 + 64) = v92;
  *(v90 + 32) = v77;
  *(v90 + 96) = v91;
  *(v90 + 104) = v92;
  *(v90 + 72) = v76;
  *&v199 = sub_1E4205F44();
  *(&v199 + 1) = v93;
  v94 = *(v87 + 104);
  countAndFlagsBits = v170;
  v94(v170, *MEMORY[0x1E69D3D78], v89);
  OUTLINED_FUNCTION_9_183();
  v97 = sub_1E4072DAC(v190, countAndFlagsBits, v95, v96, MEMORY[0x1E69D3D90]);
  v88(countAndFlagsBits, v89);
  if ((v97 & 1) == 0)
  {
    goto LABEL_95;
  }

  OUTLINED_FUNCTION_151_7();
  if (!v98)
  {
    goto LABEL_95;
  }

  OUTLINED_FUNCTION_151_7();
  v100 = v99;
  v101 = sub_1E4205294();
  sub_1E4205664();
  countAndFlagsBits = v193;
  LOBYTE(v102) = v194;

  if (sub_1E4205214() && (OUTLINED_FUNCTION_54_52(), v103 = sub_1E4205274(), v101, v103) && (v101 = sub_1E42052B4(), v105 = v104, v103, (v105 & 1) == 0) && v101 > 0)
  {
    if (v102)
    {
      goto LABEL_94;
    }
  }

  else
  {
    if (sub_1E4205214() && (OUTLINED_FUNCTION_54_52(), v160 = sub_1E4205274(), v101, v160))
    {
      v161 = sub_1E42052A4();
      v163 = v162;

      v164 = v163 | (v161 < 1);
    }

    else
    {
LABEL_91:
      v164 = 1;
    }

    if ((v102 | v164))
    {
      goto LABEL_94;
    }
  }

  v192 = 2828320;
  v193 = 0xE300000000000000;
  v204.canonicalId._countAndFlagsBits = countAndFlagsBits;
  v165 = sub_1E4207944();
  MEMORY[0x1E69109E0](v165);

  MEMORY[0x1E69109E0](41, 0xE100000000000000);
  MEMORY[0x1E69109E0](v192, v193);

LABEL_94:

LABEL_95:
  v166 = *(&v199 + 1);
  v53 = v188;
  v188[11] = v199;
  v53[12] = v166;
  OUTLINED_FUNCTION_70_30();
  *v111 = xmmword_1E42E8890;
LABEL_57:
  *(v111 + 16) = 14;
  v112 = v184;

  sub_1E4072E84();
  v113 = objc_opt_self();
  v114 = [v113 sharedInstance];
  if (!v114)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  object = v114;
  v178 = v112;
  sub_1E4073C28();

  v115 = [v113 sharedInstance];
  if (!v115)
  {
LABEL_99:
    __break(1u);

    __break(1u);
    return;
  }

  v116 = v115;
  object = v180;
  sub_1E4073C28();
  v118 = v117;

  OUTLINED_FUNCTION_15_5();
  v119(object, v182);
  v102 = 0;
  v120 = v53 + *(countAndFlagsBits + 64);
  *v120 = v118;
  *(v120 + 1) = 0;
  v120[16] = 14;
  *(v53 + *(countAndFlagsBits + 52)) = v3;
  v121 = *(v6 + 16);
  v184 = MEMORY[0x1E69E7CC0];
  v189 = v6;
LABEL_60:
  v100 = &type metadata for ViewModelKeys.Sports;
  while (v121 != v102)
  {
    if (v102 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_91;
    }

    countAndFlagsBits = *(v6 + 8 * v102 + 32);
    *(&v200 + 1) = &type metadata for ViewModelKeys.Sports;
    v201 = &off_1F5D7BC68;
    LOBYTE(v199) = 7;
    OUTLINED_FUNCTION_33_88();
    if (v203)
    {
      OUTLINED_FUNCTION_49_60();
      if (swift_dynamicCast())
      {
        v3 = v197;
        v122 = v198;
        __swift_destroy_boxed_opaque_existential_1(&v199);
        *(&v200 + 1) = &type metadata for ViewModelKeys.Sports;
        v201 = &off_1F5D7BC68;
        LOBYTE(v199) = 22;
        OUTLINED_FUNCTION_33_88();
        if (v203)
        {
          OUTLINED_FUNCTION_49_60();
          if (swift_dynamicCast())
          {
            v123 = v197;
            object = v198;
            __swift_destroy_boxed_opaque_existential_1(&v199);
            *(&v200 + 1) = &type metadata for ViewModelKeys.Sports;
            v201 = &off_1F5D7BC68;
            LOBYTE(v199) = 23;
            OUTLINED_FUNCTION_33_88();
            if (v203)
            {
              OUTLINED_FUNCTION_49_60();
              if (swift_dynamicCast())
              {
                countAndFlagsBits = v197;
                __swift_destroy_boxed_opaque_existential_1(&v199);
                v124._countAndFlagsBits = v3;
                v124._object = v122;
                v125._countAndFlagsBits = v123;
                v125._object = object;
                SportsVoiceOverUtility.Competitor.init(canonicalId:name:isHomeTeam:)(&v204, v124, v125, countAndFlagsBits);
                object = v204.canonicalId._object;
                v100 = &type metadata for ViewModelKeys.Sports;
                v6 = v189;
                if (v204.canonicalId._object)
                {
                  countAndFlagsBits = v204.canonicalId._countAndFlagsBits;
                  v182 = v204.name._countAndFlagsBits;
                  v181 = v204.name._object;
                  LOBYTE(v3) = v204.isHomeTeam;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v132 = OUTLINED_FUNCTION_27();
                    v184 = sub_1E3FE5020(v132, v133, v134, v135);
                  }

                  v128 = *(v184 + 2);
                  v127 = *(v184 + 3);
                  if (v128 >= v127 >> 1)
                  {
                    v136 = OUTLINED_FUNCTION_35(v127);
                    v184 = sub_1E3FE5020(v136, v128 + 1, 1, v184);
                  }

                  ++v102;
                  v129 = v184;
                  *(v184 + 2) = v128 + 1;
                  v130 = &v129[40 * v128];
                  *(v130 + 4) = countAndFlagsBits;
                  *(v130 + 5) = object;
                  v131 = v181;
                  *(v130 + 6) = v182;
                  *(v130 + 7) = v131;
                  v130[64] = v3;
                  goto LABEL_60;
                }
              }

              else
              {

                __swift_destroy_boxed_opaque_existential_1(&v199);
                v100 = &type metadata for ViewModelKeys.Sports;
                v6 = v189;
              }
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(&v199);
              sub_1E325F6F0(v202, &unk_1ECF296E0);
              v100 = &type metadata for ViewModelKeys.Sports;
              v6 = v189;
            }
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(&v199);
          }
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(&v199);
          sub_1E325F6F0(v202, &unk_1ECF296E0);
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v199);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v199);
      sub_1E325F6F0(v202, &unk_1ECF296E0);
    }

    ++v102;
  }

  v137 = type metadata accessor for SportsVoiceOverUtility();

  v138 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_18();
  v139 = v178;
  OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_60_0();
  swift_bridgeObjectRelease_n();
  v140 = v191;
  v141 = v188;
  v142 = (v188 + *(v191 + 48));
  *v142 = v138;
  v142[1] = v137;
  sub_1E40743DC();
  v143 = (v141 + *(v140 + 56));
  *v143 = v144;
  v143[1] = v145;
  sub_1E4074F98();
  v147 = v146;
  v149 = v148;

  v141[9] = v147;
  v141[10] = v149;

  sub_1E4075498();
  v141[7] = v150;
  v141[8] = v151;
  LOBYTE(v147) = sub_1E41494A8(v147, v149);

  if (v147)
  {
    sub_1E325F6F0(v185, &qword_1ECF33020);

    OUTLINED_FUNCTION_151_7();
    v153 = 0;
  }

  else
  {
    v154 = OUTLINED_FUNCTION_57();
    v156 = sub_1E41494A8(v154, v155);

    OUTLINED_FUNCTION_151_7();
    sub_1E325F6F0(v185, &qword_1ECF33020);
    v153 = !v156;
  }

  v158 = v179;
  *(v141 + *(v140 + 68)) = v153;
  sub_1E381A6DC(v141, v158);
  OUTLINED_FUNCTION_15_5();
  v159(v190, v187);
  sub_1E407813C(v141, type metadata accessor for SportsPlayByPlayItemViewData);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E4072DAC(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1E4078194(a4, a5);
  sub_1E4206254();
  sub_1E4206254();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

void sub_1E4072E84()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  v152 = v7;
  v167 = sub_1E4205A14();
  OUTLINED_FUNCTION_0_10();
  v162 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_3();
  v166 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F170);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v168 = OUTLINED_FUNCTION_84_23();
  OUTLINED_FUNCTION_0_10();
  v165 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  v164 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v163 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v19);
  v161 = sub_1E4205784();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v23);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D578);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v141 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_140_2();
  MEMORY[0x1EEE9AC00](v34);
  v160 = OUTLINED_FUNCTION_83_22();
  OUTLINED_FUNCTION_0_10();
  v159 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v37);
  if (!*(v4 + 16))
  {

    v174 = 0u;
    v175 = 0u;
    goto LABEL_10;
  }

  v172 = &type metadata for ViewModelKeys.Sports;
  v173 = &off_1F5D7BC68;
  LOBYTE(v170) = 7;
  v38 = OUTLINED_FUNCTION_97_2();
  sub_1E3F9F164(v38);

  __swift_destroy_boxed_opaque_existential_1(&v170);
  if (!*(&v175 + 1))
  {
LABEL_10:
    sub_1E325F6F0(&v174, &unk_1ECF296E0);
    v40 = 0;
    v41 = 0;
    goto LABEL_11;
  }

  v39 = swift_dynamicCast();
  if (v39)
  {
    v40 = v170;
  }

  else
  {
    v40 = 0;
  }

  if (v39)
  {
    v41 = v171;
  }

  else
  {
    v41 = 0;
  }

LABEL_11:
  sub_1E42051E4();

  v170 = sub_1E3EA9868(v42);
  sub_1E4076D24(&v170, v40, v41);

  v43 = v170;
  v44 = sub_1E4205214();
  if (v44)
  {
    v45 = v44;
    v46 = sub_1E4205294();

    OUTLINED_FUNCTION_74_23();
    sub_1E4205514();

    v47 = v161;
  }

  else
  {
    v48 = OUTLINED_FUNCTION_47_57();
    v47 = v161;
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v161);
  }

  v51 = *MEMORY[0x1E69D3BF8];
  v153 = v21;
  v52 = *(v21 + 104);
  v148 = v51;
  v149 = v21 + 104;
  v147 = v52;
  (v52)(v1);
  OUTLINED_FUNCTION_48_8(v1);
  v53 = *(v157 + 48);
  OUTLINED_FUNCTION_85_22();
  OUTLINED_FUNCTION_82_23();
  OUTLINED_FUNCTION_14_16(v27);
  v151 = v6;
  if (v62)
  {
    v54 = OUTLINED_FUNCTION_76_0();
    sub_1E325F6F0(v54, v55);
    v56 = OUTLINED_FUNCTION_31_90();
    sub_1E325F6F0(v56, v57);
    OUTLINED_FUNCTION_14_16(&v27[v53]);
    v58 = v158;
    if (v62)
    {
      sub_1E325F6F0(v27, &qword_1ECF2BD98);
      v59 = MEMORY[0x1E69D3D50];
      v60 = v162;
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v61 = v155;
  sub_1E379D7E4(v27, v155, &qword_1ECF2BD98);
  OUTLINED_FUNCTION_14_16(&v27[v53]);
  if (v62)
  {
    v63 = OUTLINED_FUNCTION_76_0();
    sub_1E325F6F0(v63, v64);
    v65 = OUTLINED_FUNCTION_31_90();
    sub_1E325F6F0(v65, v66);
    (*(v153 + 8))(v61, v47);
    v58 = v158;
LABEL_22:
    sub_1E325F6F0(v27, &qword_1ECF2D578);
    v60 = v162;
LABEL_23:
    v59 = MEMORY[0x1E69D3D48];
    goto LABEL_24;
  }

  v127 = v61;
  v128 = v153;
  (*(v153 + 32))(v141, &v27[v53], v47);
  OUTLINED_FUNCTION_1_288();
  sub_1E4078194(v129, v130);
  OUTLINED_FUNCTION_62_36();
  v131 = OUTLINED_FUNCTION_56_40();
  v128(v131);
  OUTLINED_FUNCTION_65_36(v1);
  OUTLINED_FUNCTION_65_36(v2);
  (v128)(v155, v161);
  OUTLINED_FUNCTION_65_36(v27);
  v58 = v158;
  v60 = v162;
  if ((v127 & 1) == 0)
  {
    goto LABEL_23;
  }

  v59 = MEMORY[0x1E69D3D50];
LABEL_24:
  (*(v159 + 104))(v58, *v59, v160);
  *&v174 = v43;
  v170 = 0;
  LOBYTE(v171) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA20);
  sub_1E3EA9BD4();
  OUTLINED_FUNCTION_63_35();
  v67 = v169;
  if (v169 && (v68 = sub_1E4205984(), v67, v68))
  {
    v146 = sub_1E4205AE4();
    v69 = sub_1E4205AD4();
    v70 = sub_1E4205BB4();

    v71 = v70 & 1;
  }

  else
  {
    OUTLINED_FUNCTION_69_31(&v174 + 8);
  }

  v145 = v71;
  *&v174 = v43;
  v170 = 1;
  LOBYTE(v171) = 0;
  OUTLINED_FUNCTION_63_35();
  v72 = v169;
  if (v169 && (v73 = sub_1E4205984(), v72, v73))
  {
    v144 = sub_1E4205AE4();
    v74 = sub_1E4205AD4();
    v75 = sub_1E4205BB4();

    v76 = v75 & 1;
  }

  else
  {
    OUTLINED_FUNCTION_69_31(&v173);
  }

  v143 = v76;
  v77 = sub_1E32AE9B0(v43);
  v78 = 0;
  v79 = v43 & 0xC000000000000001;
  v80 = (v60 + 8);
  v155 = (v165 + 32);
  v162 = MEMORY[0x1E69E7CC0];
  v81 = v166;
  while (1)
  {
    if (v77 == v78)
    {

      v95 = *(v162 + 16);
      if (v95)
      {
        v170 = MEMORY[0x1E69E7CC0];
        sub_1E4077A28(0, v95, 0);
        v96 = v170;
        OUTLINED_FUNCTION_40_72();
        v166 = v97;
        v167 = v98;
        v165 = v99;
        do
        {
          v100 = v163;
          v102 = v167;
          v101 = v168;
          v167(v163, v79, v168);
          v103 = v164;
          v104 = v102(v164, v100, v101);
          MEMORY[0x1E6910330](v104);
          sub_1E42059E4();
          v105 = OUTLINED_FUNCTION_80_21();
          v103(v105);
          v106 = OUTLINED_FUNCTION_102_3();
          v103(v106);
          v170 = v96;
          v108 = *(v96 + 16);
          v107 = *(v96 + 24);
          if (v108 >= v107 >> 1)
          {
            v109 = OUTLINED_FUNCTION_35(v107);
            sub_1E4077A28(v109, v108 + 1, 1);
            v96 = v170;
          }

          OUTLINED_FUNCTION_58_38();
          v79 += v166;
          --v95;
        }

        while (v95);
      }

      else
      {

        v96 = MEMORY[0x1E69E7CC0];
      }

      v110 = v161;
      v111 = v151;
      v112 = v150;
      v113 = v154;
      if (*(v96 + 16))
      {
        v114 = *(v96 + 32);
        LODWORD(v168) = *(v96 + 40);
      }

      else
      {

        v114 = 0;
        LODWORD(v168) = 2;
      }

      v115 = sub_1E4205214();
      if (v115)
      {
        v116 = v115;
        v117 = sub_1E4205294();

        sub_1E4205514();
      }

      else
      {
        OUTLINED_FUNCTION_88_19();
      }

      OUTLINED_FUNCTION_151_7();
      v147();
      OUTLINED_FUNCTION_48_8(v113);
      v118 = *(v157 + 48);
      OUTLINED_FUNCTION_89_19();
      OUTLINED_FUNCTION_87_17();
      OUTLINED_FUNCTION_14_16(v112);
      if (v62)
      {

        OUTLINED_FUNCTION_43_15(v113);
        OUTLINED_FUNCTION_43_68();
        v119 = OUTLINED_FUNCTION_11_185();
        v120(v119);
        OUTLINED_FUNCTION_14_16(v112 + v118);
        if (v62)
        {
          sub_1E325F6F0(v112, &qword_1ECF2BD98);
          v121 = 1;
LABEL_68:
          OUTLINED_FUNCTION_26_116();
LABEL_72:
          OUTLINED_FUNCTION_19_146(v121 & 1);
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }

      else
      {
        v167 = v114;
        sub_1E379D7E4(v112, v142, &qword_1ECF2BD98);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v112 + v118, 1, v110);
        if (EnumTagSinglePayload != 1)
        {
          v132 = v153 + 32;
          (*(v153 + 32))(v141, v112 + v118, v110);
          OUTLINED_FUNCTION_1_288();
          sub_1E4078194(v133, v134);
          OUTLINED_FUNCTION_27_0();
          v121 = sub_1E4205E84();

          v135 = *(v132 - 24);
          v136 = OUTLINED_FUNCTION_36_60();
          v135(v136);
          OUTLINED_FUNCTION_45_3(v154);
          v137 = OUTLINED_FUNCTION_76_0();
          sub_1E325F6F0(v137, v138);
          v139 = OUTLINED_FUNCTION_11_185();
          v140(v139);
          (v135)(v142, v110);
          OUTLINED_FUNCTION_45_3(v112);
          OUTLINED_FUNCTION_26_116();
          goto LABEL_72;
        }

        OUTLINED_FUNCTION_43_15(v154);
        OUTLINED_FUNCTION_43_68();
        v123 = OUTLINED_FUNCTION_11_185();
        v124(v123);
        v125 = OUTLINED_FUNCTION_36_60();
        v126(v125);
      }

      sub_1E325F6F0(v112, &qword_1ECF2D578);
      v121 = 0;
      goto LABEL_68;
    }

    if (v79)
    {
      OUTLINED_FUNCTION_90_21();
    }

    else
    {
      if (v78 >= *(v43 + 16))
      {
        goto LABEL_74;
      }

      v82 = OUTLINED_FUNCTION_94_23();
    }

    v83 = v82;
    v84 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_74_23();
    sub_1E4205A24();
    sub_1E4205A04();

    (*v80)(v81, v167);
    OUTLINED_FUNCTION_52(v0, 1, v168);
    if (v62)
    {
      sub_1E325F6F0(v0, &qword_1ECF3F170);
      ++v78;
    }

    else
    {
      v85 = *v155;
      (*v155)(v156, v0, v168);
      v86 = v162;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v91 = OUTLINED_FUNCTION_27();
        v86 = sub_1E4076A68(v91, v92, v93, v86);
      }

      v89 = *(v86 + 16);
      v88 = *(v86 + 24);
      v162 = v86;
      if (v89 >= v88 >> 1)
      {
        v94 = OUTLINED_FUNCTION_35(v88);
        v162 = sub_1E4076A68(v94, v89 + 1, 1, v162);
      }

      *(v162 + 16) = v89 + 1;
      v90 = OUTLINED_FUNCTION_41_68();
      v85(v90, v156, v168);
      v78 = v84;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);

  __break(1u);
}

void sub_1E4073C28()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v85 = v2;
  v4 = v3;
  v5 = sub_1E41FE1F4();
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  v14 = sub_1E41FE144();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  sub_1E41FE154();
  OUTLINED_FUNCTION_0_10();
  v86 = v22;
  v87 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v26 = sub_1E41FE174();
  v27 = OUTLINED_FUNCTION_17_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  sub_1E41FE1B4();
  OUTLINED_FUNCTION_0_10();
  v83 = v29;
  v84 = v28;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_3();
  v88 = v30;
  OUTLINED_FUNCTION_138();
  sub_1E41FDEC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v36 = v35 - v34;
  v37 = *(v1 + 8);
  if (v37 == 2 || (v38 = *(v1 + 24), v38 == 2))
  {
    sub_1E41FE134();
    goto LABEL_4;
  }

  v79 = v13;
  v80 = v16;
  v39 = *v1;
  v40 = *(v1 + 16);
  v81 = v20;
  v82 = v14;
  v77 = v33;
  v78 = v32;
  if (v37)
  {
    v93 = v39;
    if (v38)
    {
      v41 = sub_1E4207944();
      v93 = 10794;
      v94 = 0xE200000000000000;
      MEMORY[0x1E69109E0](v41);
      OUTLINED_FUNCTION_91_20();

      v42 = OUTLINED_FUNCTION_32_90();
      MEMORY[0x1E69109E0](v42);

      v43 = v94;
      v76 = v93;
      v93 = v40;
      v44 = sub_1E4207944();
      v93 = 10794;
      v94 = 0xE200000000000000;
      MEMORY[0x1E69109E0](v44);
      OUTLINED_FUNCTION_91_20();

      v45 = v93;
      v46 = v94;
      v93 = v76;
      v94 = v43;

      MEMORY[0x1E69109E0](v45, v46);
    }

    else
    {
      v52 = sub_1E4207944();
      v93 = 10794;
      v94 = 0xE200000000000000;
      MEMORY[0x1E69109E0](v52);
      OUTLINED_FUNCTION_91_20();

      v53 = v94;

      v54 = OUTLINED_FUNCTION_32_90();
      MEMORY[0x1E69109E0](v54);

      v76 = v9;
      OUTLINED_FUNCTION_45_68();
      sub_1E4207944();
      v93 = v4;
      v94 = v53;

      v55 = OUTLINED_FUNCTION_27_0();
      MEMORY[0x1E69109E0](v55);
    }

    v57 = v93;
    v56 = v94;
    goto LABEL_16;
  }

  if (v38)
  {
    v93 = v39;
    v47 = sub_1E4207944();
    v49 = v48;
    v93 = v47;
    v94 = v48;

    v50 = OUTLINED_FUNCTION_32_90();
    MEMORY[0x1E69109E0](v50);

    v76 = v4;
    OUTLINED_FUNCTION_45_68();
    v51 = sub_1E4207944();
    v93 = 10794;
    v94 = 0xE200000000000000;
    MEMORY[0x1E69109E0](v51);
    OUTLINED_FUNCTION_91_20();

    v93 = v4;
    v4 = v76;
  }

  else
  {
    if ((*(v1 + 41) & 1) == 0)
    {
      v57 = 0;
      v56 = 0xE000000000000000;
      goto LABEL_16;
    }

    v93 = v39;
    v58 = sub_1E4207944();
    v49 = v59;
    v93 = v58;
    v94 = v59;

    v60 = OUTLINED_FUNCTION_32_90();
    MEMORY[0x1E69109E0](v60);

    v76 = v9;
    OUTLINED_FUNCTION_45_68();
    sub_1E4207944();
    v93 = v4;
  }

  v94 = v49;

  v61 = OUTLINED_FUNCTION_27_0();
  MEMORY[0x1E69109E0](v61);

  v57 = v93;
  v56 = v94;
LABEL_16:
  v62 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v62 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (v62)
  {
    v63 = 0xD00000000000001ELL;
  }

  else
  {
    v63 = 0xD000000000000018;
  }

  if (v62)
  {
    v64 = "odel";
  }

  else
  {
    v64 = "TV.Sports.PlayByPlay.Score.Out";
  }

  v65 = sub_1E3741090(v63, v64 | 0x8000000000000000, v85);
  if (v66)
  {
    v67 = *(v1 + 40);
    if (v67 != 2 && (v67 & 1) != 0 && *(v1 + 32))
    {
      v93 = v65;
      v94 = v66;
      v91 = 0x4065726F63734040;
      v92 = 0xE900000000000040;
      v89 = v57;
      v90 = v56;
      sub_1E32822E0();
      OUTLINED_FUNCTION_2_178();
      sub_1E42071F4();
      OUTLINED_FUNCTION_34_75();
      v69 = v68;

      v93 = &v93;
      v94 = v69;
      sub_1E41FDE64();
      sub_1E42071E4();
      (*(v77 + 8))(v36, v78);
    }

    else
    {
    }
  }

  (*(v86 + 104))(v25, *MEMORY[0x1E6968748], v87);
  (*(v80 + 104))(v81, *MEMORY[0x1E6968728], v82);

  sub_1E41FE164();
  sub_1E41FE414();
  v70 = OUTLINED_FUNCTION_47_57();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  v74 = v88;
  sub_1E41FE1A4();

  (*(v83 + 32))(v4, v74, v84);
LABEL_4:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40743DC()
{
  OUTLINED_FUNCTION_31_1();
  v130 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1E0);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v124 = &v115 - v11;
  OUTLINED_FUNCTION_138();
  v12 = sub_1E42051B4();
  OUTLINED_FUNCTION_0_10();
  v122 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v15);
  v16 = sub_1E4205184();
  OUTLINED_FUNCTION_0_10();
  v120 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B488);
  OUTLINED_FUNCTION_17_2(v20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_20(&v115 - v22);
  v116 = type metadata accessor for SportsPlayPeriod();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v24);
  v129 = sub_1E4205724();
  OUTLINED_FUNCTION_0_10();
  v132 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25_3();
  v30 = v29;
  OUTLINED_FUNCTION_138();
  sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v127 = v32;
  v128 = v31;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_3();
  v125 = v8;
  v126 = v33;
  v34 = sub_1E42051E4();
  sub_1E32AE9B0(v34);
  OUTLINED_FUNCTION_81_26();
  v131 = v16;
  v123 = v12;
  while (1)
  {
    if (v2 == v3)
    {

      v38 = 0;
      v39 = 0;
      goto LABEL_13;
    }

    if (v0)
    {
      OUTLINED_FUNCTION_90_21();
    }

    else
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_64;
      }

      v35 = OUTLINED_FUNCTION_94_23();
    }

    v36 = v35;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v37 = sub_1E4205A44();
    if (v37 != 2 && (v37 & 1) == 0)
    {
      break;
    }

    ++v3;
  }

  v40 = sub_1E4205964();

  v38 = sub_1E42054D4();
  v39 = v41;

LABEL_13:
  v42 = *(v6 + 16);
  v43 = (v6 + 32);
  v44 = v132;
  while (1)
  {
    v45 = v30;
    if (!v42)
    {
      v46 = 0;
      goto LABEL_33;
    }

    v46 = *v43;
    v137 = &type metadata for ViewModelKeys.Sports;
    v138 = &off_1F5D7BC68;
    LOBYTE(v135) = 7;

    v47 = OUTLINED_FUNCTION_97_2();
    sub_1E3F9F164(v47);
    if (!*(&v140 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(&v135);
      sub_1E325F6F0(&v139, &unk_1ECF296E0);
      if (!v39)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v135);
    if (!v39)
    {
      goto LABEL_32;
    }

LABEL_29:

    ++v43;
    --v42;
  }

  v49 = v133;
  v48 = v134;
  __swift_destroy_boxed_opaque_existential_1(&v135);
  if (!v39)
  {

    v44 = v132;
    goto LABEL_29;
  }

  v50 = v49 == v38 && v39 == v48;
  if (!v50)
  {
    OUTLINED_FUNCTION_102_3();
    v51 = sub_1E42079A4();

    v44 = v132;
    if (v51)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v44 = v132;
LABEL_32:
  v45 = v30;
LABEL_33:
  v53 = v126;
  v52 = v127;
  v54 = v128;
  (*(v127 + 104))(v126, *MEMORY[0x1E69D3D88], v128);
  OUTLINED_FUNCTION_9_183();
  v57 = sub_1E4072DAC(v130, v53, v55, v56, MEMORY[0x1E69D3D90]);
  (*(v52 + 8))(v53, v54);
  v58 = v131;
  v59 = v129;
  if (v57)
  {
    v60 = sub_1E4205214();
    if (v60)
    {
      v61 = v60;
      v62 = sub_1E4205284();
      if (v62)
      {
        v63 = v62;
        sub_1E4205954();

        v64 = OUTLINED_FUNCTION_277();
        v65(v64);
        v66 = v118;
        (*(v44 + 104))(v118, *MEMORY[0x1E69D3B30], v59);
        v67 = OUTLINED_FUNCTION_277();
        LOBYTE(v63) = sub_1E4072DAC(v67, v68, v69, v70, v71);
        v132 = v45;
        v72 = v44;
        v73 = v59;
        v74 = *(v72 + 8);
        v74(v66, v73);
        if (v63)
        {
          sub_1E4205294();
          (*(v127 + 16))(v126, v130, v128);
          v75 = v117;
          sub_1E385BAA0();
          OUTLINED_FUNCTION_52(v75, 1, v116);
          if (!v50)
          {

            v103 = v115;
            sub_1E385BE80(v75, v115);
            sub_1E385C974();
            OUTLINED_FUNCTION_60_0();

            sub_1E407813C(v103, type metadata accessor for SportsPlayPeriod);
            v74(v30, v129);
            goto LABEL_57;
          }

          v74(v30, v129);

          sub_1E325F6F0(v75, &qword_1ECF2B488);
        }

        else
        {
          v74(v132, v73);
        }

        v58 = v131;
      }

      else
      {
      }
    }
  }

  v76 = v121;
  sub_1E42051C4();
  v77 = v124;
  sub_1E4205194();
  OUTLINED_FUNCTION_15_5();
  v78(v76, v123);
  OUTLINED_FUNCTION_52(v77, 1, v58);
  if (v50)
  {

    v79 = &qword_1ECF3F1E0;
    v80 = v77;
LABEL_56:
    sub_1E325F6F0(v80, v79);
    goto LABEL_57;
  }

  (*(v120 + 32))(v119, v77, v58);
  if (!v46)
  {
    v97 = OUTLINED_FUNCTION_48_53();
    v98(v97);

    v139 = 0u;
    v140 = 0u;
LABEL_55:
    v79 = &unk_1ECF296E0;
    v80 = &v139;
    goto LABEL_56;
  }

  v137 = &type metadata for ViewModelKeys.Sports;
  v138 = &off_1F5D7BC68;
  LOBYTE(v135) = 13;

  v81 = OUTLINED_FUNCTION_97_2();
  sub_1E3F9F164(v81);

  __swift_destroy_boxed_opaque_existential_1(&v135);
  if (!*(&v140 + 1))
  {
    v99 = OUTLINED_FUNCTION_48_53();
    v100(v99);

    goto LABEL_55;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v101 = OUTLINED_FUNCTION_48_53();
    v102(v101);

    goto LABEL_57;
  }

  v82 = MEMORY[0x1E690FAC0]();
  v84 = v83;
  v85 = [objc_opt_self() sharedInstance];
  v86 = v85;
  if ((v84 & 1) == 0)
  {
    if (!v85)
    {
      goto LABEL_66;
    }

    v104 = sub_1E3741090(0xD00000000000002BLL, 0x80000001E428F430, v85);
    v106 = v105;

    if (!v106)
    {
      goto LABEL_68;
    }

    v135 = v104;
    v136 = v106;
    OUTLINED_FUNCTION_30_85();
    OUTLINED_FUNCTION_13_182();
    OUTLINED_FUNCTION_2_178();
    OUTLINED_FUNCTION_67_29();
    OUTLINED_FUNCTION_34_75();
    v108 = v107;

    v135 = v86;
    v136 = v108;
    OUTLINED_FUNCTION_20_124();
    v110 = *(v109 - 256);
    v133 = sub_1E4205174();
    v134 = v111;
    OUTLINED_FUNCTION_13_182();
    OUTLINED_FUNCTION_2_178();
    OUTLINED_FUNCTION_67_29();
    OUTLINED_FUNCTION_34_75();
    v113 = v112;

    v135 = v110;
    v136 = v113;
    strcpy(&v139, "@@pitchTotal@@");
    HIBYTE(v139) = -18;
    v133 = v82;
    v133 = sub_1E4207944();
    v134 = v114;
    OUTLINED_FUNCTION_13_182();
    OUTLINED_FUNCTION_2_178();
    OUTLINED_FUNCTION_67_29();
    OUTLINED_FUNCTION_60_0();

    OUTLINED_FUNCTION_15_5();
    v96 = v110;
LABEL_62:
    v95(v96, v58);
LABEL_57:
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_25_2();
    return;
  }

  if (!v85)
  {
    goto LABEL_65;
  }

  v87 = sub_1E3741090(0xD000000000000025, 0x80000001E428F400, v85);
  v89 = v88;

  if (v89)
  {

    v135 = v87;
    v136 = v89;
    OUTLINED_FUNCTION_30_85();
    OUTLINED_FUNCTION_13_182();
    OUTLINED_FUNCTION_2_178();
    OUTLINED_FUNCTION_67_29();
    OUTLINED_FUNCTION_34_75();
    v91 = v90;

    v135 = v86;
    v136 = v91;
    OUTLINED_FUNCTION_20_124();
    v93 = *(v92 - 256);
    v133 = sub_1E4205174();
    v134 = v94;
    OUTLINED_FUNCTION_13_182();
    OUTLINED_FUNCTION_2_178();
    OUTLINED_FUNCTION_67_29();
    OUTLINED_FUNCTION_60_0();

    OUTLINED_FUNCTION_15_5();
    v96 = v93;
    goto LABEL_62;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

void sub_1E4074F98()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1D8);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  sub_1E42051B4();
  OUTLINED_FUNCTION_0_10();
  v58 = v13;
  v59 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_3();
  v57 = v14;
  OUTLINED_FUNCTION_138();
  v15 = sub_1E4205144();
  OUTLINED_FUNCTION_0_10();
  v56 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_3();
  v55 = v18;
  v19 = sub_1E42051E4();
  sub_1E32AE9B0(v19);
  OUTLINED_FUNCTION_81_26();
  v61 = v11;
  v62 = v15;
  v60 = v7;
  while (1)
  {
    if (v2 == v3)
    {

      v23 = 0;
      v24 = 0;
      goto LABEL_13;
    }

    if (v0)
    {
      OUTLINED_FUNCTION_90_21();
    }

    else
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_45;
      }

      v20 = OUTLINED_FUNCTION_94_23();
    }

    v21 = v20;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      return;
    }

    v22 = sub_1E4205A44();
    if (v22 != 2 && (v22 & 1) != 0)
    {
      break;
    }

    ++v3;
  }

  v25 = sub_1E4205964();

  v23 = sub_1E42054D4();
  v24 = v26;

LABEL_13:
  v27 = *(v5 + 16);
  v28 = &type metadata for ViewModelKeys.Sports;
  v29 = (v5 + 32);
  if (!v27)
  {
LABEL_29:

    v30 = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v30 = *v29;
    v66 = v28;
    v67 = &off_1F5D7BC68;
    v65[0] = 7;

    v31 = OUTLINED_FUNCTION_97_2();
    sub_1E3F9F164(v31);
    if (!*(&v69 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(v65);
      sub_1E325F6F0(&v68, &unk_1ECF296E0);
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(v65);
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    v32 = v28;
    v33 = v63;
    v34 = v64;
    __swift_destroy_boxed_opaque_existential_1(v65);
    if (!v24)
    {

      v28 = v32;
      goto LABEL_28;
    }

    v35 = v33 == v23 && v24 == v34;
    if (v35)
    {
      break;
    }

    v36 = sub_1E42079A4();

    v28 = v32;
    if (v36)
    {

      goto LABEL_30;
    }

LABEL_28:

    ++v29;
    if (!--v27)
    {
      goto LABEL_29;
    }
  }

  v28 = v32;
LABEL_30:
  v37 = v57;
  sub_1E42051C4();
  v38 = v61;
  sub_1E4205154();
  (*(v58 + 8))(v37, v59);
  v39 = v62;
  OUTLINED_FUNCTION_52(v38, 1, v62);
  if (v35)
  {

    v40 = &qword_1ECF3F1D8;
    v41 = v38;
LABEL_40:
    sub_1E325F6F0(v41, v40);
    goto LABEL_41;
  }

  v43 = v55;
  v42 = v56;
  v44 = OUTLINED_FUNCTION_57();
  v45(v44);
  if (!v30)
  {
    v48 = OUTLINED_FUNCTION_46_62();
    v49(v48);
    v68 = 0u;
    v69 = 0u;
LABEL_39:
    v40 = &unk_1ECF296E0;
    v41 = &v68;
    goto LABEL_40;
  }

  v66 = v28;
  v67 = &off_1F5D7BC68;
  v65[0] = 13;
  v46 = OUTLINED_FUNCTION_97_2();
  sub_1E3F9F164(v46);

  __swift_destroy_boxed_opaque_existential_1(v65);
  if (!*(&v69 + 1))
  {
    v50 = OUTLINED_FUNCTION_46_62();
    v51(v50);
    goto LABEL_39;
  }

  if (swift_dynamicCast())
  {
    MEMORY[0x1E69109E0](8250, 0xE200000000000000);
    v47 = sub_1E4205114();
    MEMORY[0x1E69109E0](v47);

    (*(v42 + 8))(v43, v39);
  }

  else
  {
    v52 = OUTLINED_FUNCTION_46_62();
    v53(v52);
  }

LABEL_41:
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4075498()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E41FDEC4();
  OUTLINED_FUNCTION_0_10();
  v48 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1D8);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  v10 = sub_1E42051B4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E4205144();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  sub_1E42051C4();
  sub_1E4205154();
  (*(v12 + 8))(v16, v10);
  OUTLINED_FUNCTION_52(v9, 1, v17);
  if (v24)
  {
    sub_1E325F6F0(v9, &qword_1ECF3F1D8);
LABEL_7:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v25 = (*(v19 + 32))(v23, v9, v17);
  v26 = MEMORY[0x1E690FA80](v25);
  if (v27 & 1) != 0 || (v28 = v26, v29 = MEMORY[0x1E690FA90](), (v30) || (v33 = v29) == 0)
  {
    v31 = OUTLINED_FUNCTION_44_63();
    v32(v31);
    goto LABEL_7;
  }

  v34 = [objc_opt_self() sharedInstance];
  if (v34)
  {
    v35 = v34;
    v47 = v33;
    v36 = sub_1E3741090(0xD000000000000022, 0x80000001E428F3D0, v34);
    v38 = v37;

    if (v38)
    {
      v53 = v36;
      v54 = v38;
      v51 = 0x4040737469684040;
      v52 = 0xE800000000000000;
      v49 = v28;
      v49 = sub_1E4207944();
      v50 = v39;
      sub_1E32822E0();
      OUTLINED_FUNCTION_2_178();
      sub_1E42071F4();
      OUTLINED_FUNCTION_34_75();
      v41 = v40;

      v53 = &v53;
      v54 = v41;
      v51 = 0x7374614274614040;
      v52 = 0xEA00000000004040;
      v49 = v47;
      v49 = sub_1E4207944();
      v50 = v42;
      OUTLINED_FUNCTION_2_178();
      sub_1E42071F4();
      OUTLINED_FUNCTION_34_75();
      v44 = v43;

      v53 = &v53;
      v54 = v44;
      sub_1E41FDE64();
      sub_1E42071E4();
      (*(v48 + 8))(v5, v0);

      v45 = OUTLINED_FUNCTION_44_63();
      v46(v45);
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E40758F8(uint64_t a1, uint64_t a2)
{
  sub_1E379D7E4(a2, v14, &qword_1ECF33020);
  v2 = v15;
  if (v15)
  {
    v3 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v4 = (v3[1])(0, 0xE000000000000000, v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v14);
    if (v4)
    {
      return sub_1E4203644();
    }
  }

  else
  {
    sub_1E325F6F0(v14, &qword_1ECF33020);
  }

  v15 = &type metadata for ViewModelKeys.Sports;
  v16 = &off_1F5D7BC68;
  LOBYTE(v14[0]) = 8;
  sub_1E3F9F164(v14);
  if (v13)
  {
    if (swift_dynamicCast())
    {
      v6 = v10;
      v5 = v11;
      __swift_destroy_boxed_opaque_existential_1(v14);
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    sub_1E325F6F0(v12, &unk_1ECF296E0);
  }

  v6 = 0;
  v5 = 0xE000000000000000;
LABEL_11:
  sub_1E3755B54();
  v7 = sub_1E39F9114(v6, v5);

  if (!v7)
  {
    v8 = [objc_opt_self() systemGray3Color];
  }

  return sub_1E4203644();
}

uint64_t sub_1E4075AB0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1E42079A4() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_60;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  v7 = sub_1E4203674();
  v8 = 0;
  if ((v7 & 1) != 0 && v5 == v6)
  {
    v9 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
    if (!v9 && (sub_1E42079A4() & 1) == 0)
    {
      goto LABEL_60;
    }

    v10 = *(a1 + 64);
    v11 = *(a2 + 64);
    if (v10)
    {
      if (!v11)
      {
        goto LABEL_60;
      }

      v12 = *(a1 + 56) == *(a2 + 56) && v10 == v11;
      if (!v12 && (sub_1E42079A4() & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v11)
    {
      goto LABEL_60;
    }

    v13 = *(a1 + 80);
    v14 = *(a2 + 80);
    if (v13)
    {
      if (!v14)
      {
        goto LABEL_60;
      }

      v15 = *(a1 + 72) == *(a2 + 72) && v13 == v14;
      if (!v15 && (sub_1E42079A4() & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v14)
    {
      goto LABEL_60;
    }

    v16 = *(a1 + 88) == *(a2 + 88) && *(a1 + 96) == *(a2 + 96);
    if (!v16 && (sub_1E42079A4() & 1) == 0)
    {
      goto LABEL_60;
    }

    v17 = type metadata accessor for SportsPlayByPlayItemViewData();
    if ((sub_1E41FE184() & 1) == 0)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_78_22();
    if (v18)
    {
      if (!v19)
      {
        goto LABEL_60;
      }

      v22 = *v20 == *v21 && v18 == v19;
      if (!v22 && (sub_1E42079A4() & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v19)
    {
      goto LABEL_60;
    }

    if (*(a1 + v17[13]) == *(a2 + v17[13]))
    {
      OUTLINED_FUNCTION_78_22();
      if (v23)
      {
        if (!v24)
        {
          goto LABEL_60;
        }

        v27 = *v25 == *v26 && v23 == v24;
        if (!v27 && (sub_1E42079A4() & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_57:
        if (OUTLINED_FUNCTION_51_51(v17[15]) && OUTLINED_FUNCTION_51_51(v17[16]) && *(a1 + v17[17]) == *(a2 + v17[17]))
        {
          OUTLINED_FUNCTION_9_183();
          v8 = sub_1E4072DAC(a1 + v29, a2 + v29, v30, v31, MEMORY[0x1E69D3D90]);
          return v8 & 1;
        }

        goto LABEL_60;
      }

      if (!v24)
      {
        goto LABEL_57;
      }
    }

LABEL_60:
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1E4075D08()
{
  v1 = v0;
  sub_1E4206014();
  MEMORY[0x1E69124B0](*(v0 + 16));
  v2 = *(v0 + 32);
  sub_1E42036B4();
  MEMORY[0x1E69124B0](v2);
  sub_1E4206014();
  if (*(v1 + 64))
  {
    OUTLINED_FUNCTION_92_15();
    sub_1E4206014();
  }

  else
  {
    OUTLINED_FUNCTION_93_17();
  }

  if (*(v1 + 80))
  {
    OUTLINED_FUNCTION_92_15();
    sub_1E4206014();
  }

  else
  {
    OUTLINED_FUNCTION_93_17();
  }

  sub_1E4206014();
  v3 = type metadata accessor for SportsPlayByPlayItemViewData();
  sub_1E41FE1B4();
  sub_1E4078194(&qword_1ECF3F178, MEMORY[0x1E6968848]);
  sub_1E4205DB4();
  if (*(v1 + v3[12] + 8))
  {
    OUTLINED_FUNCTION_92_15();
    OUTLINED_FUNCTION_24_110();
    sub_1E4206014();
  }

  else
  {
    OUTLINED_FUNCTION_93_17();
  }

  MEMORY[0x1E69124B0](*(v1 + v3[13]));
  if (*(v1 + v3[14] + 8))
  {
    OUTLINED_FUNCTION_92_15();
    OUTLINED_FUNCTION_24_110();
    sub_1E4206014();
  }

  else
  {
    OUTLINED_FUNCTION_93_17();
  }

  OUTLINED_FUNCTION_55_50(v3[15]);
  sub_1E4077B44();
  OUTLINED_FUNCTION_24_110();
  sub_1E4205DB4();
  OUTLINED_FUNCTION_55_50(v3[16]);
  OUTLINED_FUNCTION_24_110();
  sub_1E4205DB4();
  sub_1E4207B64();
  sub_1E4205BF4();
  sub_1E4078194(&qword_1ECF3F188, MEMORY[0x1E69D3D90]);
  return sub_1E4205DB4();
}

uint64_t sub_1E4075F40()
{
  OUTLINED_FUNCTION_4_73();
  sub_1E4075D08();
  return sub_1E4207BA4();
}

uint64_t sub_1E4075F80()
{
  sub_1E4207B44();
  sub_1E4075D08();
  return sub_1E4207BA4();
}

uint64_t sub_1E407600C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_73();
  MEMORY[0x1E69124B0](a1);
  sub_1E4207B64();
  return sub_1E4207BA4();
}

uint64_t sub_1E4076098()
{
  v1 = *v0;
  sub_1E4207B44();
  MEMORY[0x1E69124B0](v1);
  sub_1E4207B64();
  return sub_1E4207BA4();
}

uint64_t sub_1E40760F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v3 == 2)
    {
      goto LABEL_17;
    }

    v4 = 0;
    if (*a1 != *a2 || ((v3 ^ v2) & 1) != 0)
    {
      return v4 & 1;
    }
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5 == 2)
  {
    if (v6 != 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v6 == 2)
    {
      goto LABEL_17;
    }

    v4 = 0;
    if (*(a1 + 16) != *(a2 + 16) || ((v6 ^ v5) & 1) != 0)
    {
      return v4 & 1;
    }
  }

  v7 = *(a1 + 40);
  v8 = *(a2 + 40);
  if (v7 == 2)
  {
    if (v8 == 2)
    {
LABEL_21:
      v4 = *(a1 + 41) ^ *(a2 + 41) ^ 1;
      return v4 & 1;
    }

LABEL_17:
    v4 = 0;
    return v4 & 1;
  }

  if (v8 == 2)
  {
    goto LABEL_17;
  }

  v4 = 0;
  if (*(a1 + 32) == *(a2 + 32) && ((v8 ^ v7) & 1) == 0)
  {
    goto LABEL_21;
  }

  return v4 & 1;
}

uint64_t sub_1E40761D4()
{
  if (*(v0 + 8) != 2)
  {
    v1 = *v0;
    sub_1E4207B64();
    MEMORY[0x1E69124B0](v1);
  }

  sub_1E4207B64();
  if (*(v0 + 24) != 2)
  {
    v2 = v0[2];
    sub_1E4207B64();
    MEMORY[0x1E69124B0](v2);
  }

  sub_1E4207B64();
  if (*(v0 + 40) != 2)
  {
    v3 = v0[4];
    sub_1E4207B64();
    MEMORY[0x1E69124B0](v3);
  }

  sub_1E4207B64();
  return sub_1E4207B64();
}

uint64_t sub_1E407629C()
{
  OUTLINED_FUNCTION_4_73();
  sub_1E40761D4();
  return sub_1E4207BA4();
}

uint64_t sub_1E40762E0()
{
  sub_1E4207B44();
  sub_1E40761D4();
  return sub_1E4207BA4();
}

void sub_1E407631C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v39 = sub_1E42059B4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v38 = v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  if (!*(v1 + 16))
  {
    v46 = 0u;
    v47 = 0u;
    goto LABEL_10;
  }

  v44 = &type metadata for ViewModelKeys.Sports;
  v45 = &off_1F5D7BC68;
  LOBYTE(v42) = 7;

  sub_1E3F9F164(&v42);

  __swift_destroy_boxed_opaque_existential_1(&v42);
  if (!*(&v47 + 1))
  {
LABEL_10:
    sub_1E325F6F0(&v46, &unk_1ECF296E0);
    v10 = 0;
    v11 = 0;
    goto LABEL_11;
  }

  v9 = swift_dynamicCast();
  if (v9)
  {
    v10 = v42;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v43;
  }

  else
  {
    v11 = 0;
  }

LABEL_11:
  sub_1E42051E4();

  v42 = sub_1E3EA9868(v12);
  sub_1E4076D24(&v42, v10, v11);

  v13 = v42;
  v14 = sub_1E32AE9B0(v42);
  if (!v14)
  {
    v36 = 0;
    v40 = 0xE000000000000000;
LABEL_26:

    OUTLINED_FUNCTION_25_2();
    return;
  }

  v15 = v14;
  if (v14 >= 1)
  {
    v36 = 0;
    v37 = v8;
    v16 = 0;
    v17 = (v3 + 8);
    v40 = 0xE000000000000000;
    v41 = v13 & 0xC000000000000001;
    v18 = v39;
    do
    {
      if (v41)
      {
        v19 = MEMORY[0x1E6911E60](v16, v13);
      }

      else
      {
        v19 = *(v13 + 8 * v16 + 32);
      }

      v20 = v19;
      v21 = sub_1E42059C4();
      v22 = MEMORY[0x1E69102F0](v21);
      v24 = v23;
      v25 = *v17;
      (*v17)(v8, v18);
      if (v24)
      {
      }

      else
      {
        v26 = v15;
        v27 = v13;
        v28 = v38;
        sub_1E42059C4();
        v29 = sub_1E42059A4();
        v30 = v18;
        v31 = v29;
        v33 = v32;
        v25(v28, v30);
        if (v33)
        {
        }

        else
        {

          *&v46 = v22;
          v42 = sub_1E4207944();
          v43 = v34;
          MEMORY[0x1E69109E0](45, 0xE100000000000000);
          *&v46 = v31;
          OUTLINED_FUNCTION_27_0();
          v35 = sub_1E4207944();
          MEMORY[0x1E69109E0](v35);

          v36 = v42;
          v40 = v43;
        }

        v18 = v39;
        v13 = v27;
        v15 = v26;
        v8 = v37;
      }

      ++v16;
    }

    while (v15 != v16);
    goto LABEL_26;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1E407668C(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC8];
  v40 = *(a1 + 16);
  while (1)
  {
    v4 = v2;
    if (v40 == v2)
    {

      return v3;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    v44 = &type metadata for ViewModelKeys.Sports;
    v45 = &off_1F5D7BC68;
    LOBYTE(v43[0]) = 7;

    OUTLINED_FUNCTION_86_20(v5, v6, v7, v8, v9);
    if (!v47)
    {

      __swift_destroy_boxed_opaque_existential_1(v43);
      sub_1E325F6F0(v46, &unk_1ECF296E0);
      return v3;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v43);
      return v3;
    }

    v10 = __swift_destroy_boxed_opaque_existential_1(v43);
    v44 = &type metadata for ViewModelKeys.Sports;
    v45 = &off_1F5D7BC68;
    LOBYTE(v43[0]) = 8;
    OUTLINED_FUNCTION_86_20(v10, v11, v12, v13, v14);

    if (v47)
    {
      swift_dynamicCast();
      __swift_destroy_boxed_opaque_existential_1(v43);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v43);
      sub_1E325F6F0(v46, &unk_1ECF296E0);
    }

    sub_1E3755B54();
    v15 = OUTLINED_FUNCTION_57();
    v17 = sub_1E39F9114(v15, v16);

    if (v17)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v43[0] = v3;
      v23 = OUTLINED_FUNCTION_277();
      v25 = sub_1E327D33C(v23, v24);
      if (__OFADD__(v3[2], (v26 & 1) == 0))
      {
        goto LABEL_26;
      }

      v27 = v25;
      v39 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F190);
      if (sub_1E4207644())
      {
        v28 = OUTLINED_FUNCTION_277();
        v30 = sub_1E327D33C(v28, v29);
        if ((v39 & 1) != (v31 & 1))
        {
          goto LABEL_28;
        }

        v27 = v30;
        if (v39)
        {
LABEL_19:

          v3 = v43[0];
          v36 = *(v43[0] + 56);
          v37 = *(v36 + 8 * v27);
          *(v36 + 8 * v27) = v17;

          goto LABEL_20;
        }
      }

      else if (v39)
      {
        goto LABEL_19;
      }

      v3 = v43[0];
      *(v43[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v32 = (v3[6] + 16 * v27);
      *v32 = v41;
      v32[1] = v42;
      *(v3[7] + 8 * v27) = v17;
      v33 = v3[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_27;
      }

      v3[2] = v35;
LABEL_20:
      v2 = v4 + 1;
    }

    else
    {
      v18 = OUTLINED_FUNCTION_277();
      v20 = sub_1E327D33C(v18, v19);
      v22 = v21;

      v2 = v4 + 1;
      if (v22)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v43[0] = v3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F190);
        sub_1E4207644();
        v3 = v43[0];

        sub_1E4207664();
        goto LABEL_20;
      }
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

size_t sub_1E4076A68(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 16);
  v9 = sub_1E4076B54(v8, v7);
  v10 = *(sub_1E42059F4() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E4076C50(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1E4076B54(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1D0);
  v4 = *(sub_1E42059F4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4076C50(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1E42059F4(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1E42059F4();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E4076D24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1E34AF5E0(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;

  sub_1E4076DD8(v10, a2, a3);
  sub_1E4207554();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1E4076DD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1E4207914();
  if (result < v7)
  {
    v9 = result;
    v10 = sub_1E3EA8B74(v7 / 2);
    v12[0] = v11;
    v12[1] = (v7 / 2);

    result = sub_1E4076F10(v12, &v13, a1, v9, a2, a3);
    if (v3)
    {
      if (v7 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v7 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    swift_bridgeObjectRelease_n();
  }

LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    sub_1E3F9A910(0, v7, 1, a1, a2, a3);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1E4076F10(void ***a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v131 = a1;
  v142 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    OUTLINED_FUNCTION_44_2();
    swift_bridgeObjectRetain_n();
    v9 = MEMORY[0x1E69E7CC0];
LABEL_118:
    v137 = *v131;
    if (!*v131)
    {
      goto LABEL_161;
    }

    OUTLINED_FUNCTION_44_2();
    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_120:
      v113 = (v9 + 16);
      v114 = *(v9 + 2);
      for (i = v9; ; v9 = i)
      {
        if (v114 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        if (!*v142)
        {
          goto LABEL_158;
        }

        v115 = &v9[16 * v114];
        v116 = *v115;
        v9 = v113;
        v117 = &v113[2 * v114];
        v118 = v117[1];
        v119 = *v142 + 8 * *v115;

        OUTLINED_FUNCTION_39_66(v120, v121, v122, v123, v124, v125, v126, v127, v129, v130, v131, v132, v133, i, v136, v137, v114, v142, v143);
        v143 = v119;
        if (v119)
        {
          break;
        }

        if (v118 < v116)
        {
          goto LABEL_146;
        }

        if (v114 - 2 >= *v113)
        {
          goto LABEL_147;
        }

        *v115 = v116;
        *(v115 + 1) = v118;
        if (*v113 < v141)
        {
          goto LABEL_148;
        }

        v114 = *v113 - 1;
        memmove(v117, v117 + 2, 16 * (*v113 - v141));
        *v113 = v114;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_155:
    v9 = sub_1E37FFF5C(v9);
    goto LABEL_120;
  }

  v130 = a4;
  OUTLINED_FUNCTION_44_2();
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v144 = a6;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v134 = v9;
      v12 = *v142;
      v13 = a6;
      v14 = v8 + 1;
      v132 = v8;
      v15 = *(*v142 + 8 * v8);
      v9 = *(*v142 + 8 * v11);
      v16 = v15;
      v17 = sub_1E4205964();
      v18 = sub_1E42054D4();
      v20 = v19;

      if (v13)
      {
        if (v18 == a5 && v20 == v13)
        {
          v138 = 1;
        }

        else
        {
          v138 = sub_1E42079A4();
        }
      }

      else
      {
        v138 = 0;
      }

      v11 = v14;

      v22 = (v12 + 8 * v132 + 16);
      v136 = 8 * v132;
      v137 = v7;
      for (j = 8 * v132 + 8; ; j += 8)
      {
        v24 = v11++;
        if (v11 >= v7)
        {
          break;
        }

        v25 = *(v22 - 1);
        v26 = *v22;
        v9 = v25;
        v27 = sub_1E4205964();
        v28 = sub_1E42054D4();
        v30 = v29;

        if (v144)
        {
          if (v28 == a5 && v30 == v144)
          {

            v7 = v137;
            if ((v138 & 1) == 0)
            {
              v11 = v24 + 1;
              goto LABEL_36;
            }
          }

          else
          {
            v32 = sub_1E42079A4() & 1;

            v7 = v137;
            if ((v138 & 1) != v32)
            {
              break;
            }
          }
        }

        else
        {

          v7 = v137;
          if (v138)
          {
            goto LABEL_26;
          }
        }

        ++v22;
      }

      if ((v138 & 1) == 0)
      {
LABEL_36:
        v9 = v134;
        a6 = v144;
        goto LABEL_37;
      }

LABEL_26:
      v11 = v24 + 1;
      v33 = v132;
      if (v24 + 1 < v132)
      {
        goto LABEL_152;
      }

      if (v132 >= v11)
      {
        v9 = v134;
        a6 = v144;
        v10 = v132;
        goto LABEL_38;
      }

      v34 = v24;
      v9 = v134;
      v35 = 8 * v132;
      a6 = v144;
      do
      {
        if (v33 != v34)
        {
          v36 = *v142;
          if (!*v142)
          {
            goto LABEL_159;
          }

          v37 = *(v36 + v35);
          *(v36 + v35) = *(v36 + j);
          *(v36 + j) = v37;
        }

        ++v33;
        j -= 8;
        v35 += 8;
      }

      while (v33 < v34--);
LABEL_37:
      v10 = v132;
    }

LABEL_38:
    v39 = v142[1];
    if (v11 < v39)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_151;
      }

      if (v11 - v10 < v130)
      {
        break;
      }
    }

LABEL_64:
    if (v11 < v10)
    {
      goto LABEL_150;
    }

    v140 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v110 = OUTLINED_FUNCTION_27();
      v9 = sub_1E37FFF70(v110, v111, v112, v9);
    }

    v59 = *(v9 + 2);
    v58 = *(v9 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      v9 = sub_1E37FFF70((v58 > 1), v59 + 1, 1, v9);
    }

    *(v9 + 2) = v60;
    v61 = v9 + 32;
    v62 = &v9[16 * v59 + 32];
    *v62 = v10;
    *(v62 + 1) = v140;
    v137 = *v131;
    if (!*v131)
    {
      goto LABEL_160;
    }

    if (v59)
    {
      v136 = (v9 + 32);
      while (1)
      {
        v63 = v60 - 1;
        v64 = &v61[16 * v60 - 16];
        v65 = &v9[16 * v60];
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_85:
          if (v69)
          {
            goto LABEL_137;
          }

          v81 = *v65;
          v80 = *(v65 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_140;
          }

          v85 = *(v64 + 1);
          v86 = v85 - *v64;
          if (__OFSUB__(v85, *v64))
          {
            goto LABEL_143;
          }

          if (__OFADD__(v83, v86))
          {
            goto LABEL_145;
          }

          if (v83 + v86 >= v68)
          {
            if (v68 < v86)
            {
              v63 = v60 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        if (v60 < 2)
        {
          goto LABEL_139;
        }

        v88 = *v65;
        v87 = *(v65 + 1);
        v76 = __OFSUB__(v87, v88);
        v83 = v87 - v88;
        v84 = v76;
LABEL_100:
        if (v84)
        {
          goto LABEL_142;
        }

        v90 = *v64;
        v89 = *(v64 + 1);
        v76 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v76)
        {
          goto LABEL_144;
        }

        if (v91 < v83)
        {
          goto LABEL_114;
        }

LABEL_107:
        if (v63 - 1 >= v60)
        {
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
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        if (!*v142)
        {
          goto LABEL_157;
        }

        v95 = &v61[16 * v63 - 16];
        v96 = *v95;
        v97 = v63;
        v98 = &v61[16 * v63];
        v99 = *(v98 + 1);
        v100 = *v142 + 8 * *v95;

        OUTLINED_FUNCTION_39_66(v101, v102, v103, v104, v105, v106, v107, v108, v129, v130, v131, v132, v133, v134, v136, v137, v140, v142, v143);
        v143 = v100;
        if (v100)
        {
          OUTLINED_FUNCTION_44_2();
          swift_bridgeObjectRelease_n();
        }

        if (v99 < v96)
        {
          goto LABEL_132;
        }

        v109 = *(v9 + 2);
        if (v97 > v109)
        {
          goto LABEL_133;
        }

        *v95 = v96;
        *(v95 + 1) = v99;
        if (v97 >= v109)
        {
          goto LABEL_134;
        }

        v60 = v109 - 1;
        memmove(v98, v98 + 16, 16 * (v109 - 1 - v97));
        *(v9 + 2) = v109 - 1;
        v61 = v136;
        a6 = v144;
        if (v109 <= 2)
        {
          goto LABEL_114;
        }
      }

      v70 = &v61[16 * v60];
      v71 = *(v70 - 8);
      v72 = *(v70 - 7);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_135;
      }

      v75 = *(v70 - 6);
      v74 = *(v70 - 5);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_136;
      }

      v77 = *(v65 + 1);
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_138;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_141;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = *(v64 + 1);
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_149;
        }

        if (v68 < v94)
        {
          v63 = v60 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_85;
    }

LABEL_114:
    v8 = v140;
    v7 = v142[1];
    if (v140 >= v7)
    {
      goto LABEL_118;
    }
  }

  if (__OFADD__(v10, v130))
  {
    goto LABEL_153;
  }

  if (v10 + v130 >= v39)
  {
    v40 = v142[1];
  }

  else
  {
    v40 = v10 + v130;
  }

  if (v40 < v10)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v11 == v40)
  {
    goto LABEL_64;
  }

  v133 = v40;
  v134 = v9;
  v41 = v11;
  v42 = *v142;
  v43 = *v142 + 8 * v41 - 8;
  v132 = v10;
  v44 = v10 - v41;
LABEL_48:
  v137 = v43;
  v139 = v41;
  v45 = *(v42 + 8 * v41);
  v136 = v44;
  v46 = v43;
  while (1)
  {
    v47 = *v46;
    v48 = v45;
    v49 = v47;
    v50 = sub_1E4205964();
    v51 = sub_1E42054D4();
    v53 = v52;

    if (!a6)
    {

LABEL_62:
      v41 = v139 + 1;
      v43 = (v137 + 1);
      v44 = v136 - 1;
      if (v139 + 1 == v133)
      {
        v11 = v133;
        v9 = v134;
        v10 = v132;
        goto LABEL_64;
      }

      goto LABEL_48;
    }

    if (v51 == a5 && v53 == a6)
    {
    }

    else
    {
      v55 = sub_1E42079A4();

      if ((v55 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    if (!v42)
    {
      break;
    }

    v56 = *v46;
    v45 = *(v46 + 8);
    *v46 = v45;
    *(v46 + 8) = v56;
    v46 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_62;
    }
  }

  OUTLINED_FUNCTION_44_2();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_157:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_158:

  __break(1u);
LABEL_159:
  OUTLINED_FUNCTION_44_2();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_160:
  OUTLINED_FUNCTION_44_2();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_161:
  OUTLINED_FUNCTION_44_2();
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1E4077728(void **__src, id *__dst, id *a3, void **a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v8 = a3;
  v9 = __dst;
  v10 = __src;
  v11 = __dst - __src;
  v12 = a3 - __dst;
  if (v11 < v12)
  {
    if (a4 != __src || &__src[v11] <= a4)
    {
      memmove(a4, __src, 8 * v11);
    }

    v14 = &v7[v11];
    while (1)
    {
      if (v7 >= v14 || v9 >= v8)
      {
        v28 = v10;
        goto LABEL_53;
      }

      v46 = v9;
      v16 = v7;
      v17 = *v7;
      v18 = *v9;
      v19 = v17;
      v20 = sub_1E4205964();
      v21 = sub_1E42054D4();
      v23 = v22;

      if (!a6)
      {
        break;
      }

      if (v21 == a5 && v23 == a6)
      {
      }

      else
      {
        v25 = sub_1E42079A4();

        if ((v25 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v26 = v46;
      v9 = v46 + 1;
      v7 = v16;
      if (v10 != v46)
      {
        goto LABEL_21;
      }

LABEL_22:
      ++v10;
    }

LABEL_20:
    v26 = v16;
    v7 = v16 + 1;
    v9 = v46;
    if (v10 == v16)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v10 = *v26;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[v12] <= a4)
  {
    memmove(a4, __dst, 8 * v12);
  }

  v14 = &v7[v12];
  v43 = v7;
  v44 = v10;
LABEL_32:
  v28 = v9--;
  for (--v8; v14 > v7 && v28 > v10; --v8)
  {
    v47 = v14;
    v31 = v14 - 1;
    v30 = *(v14 - 1);
    v32 = v9;
    v33 = *v9;
    v34 = v30;
    v35 = v33;
    sub_1E4205964();
    OUTLINED_FUNCTION_54_52();
    v36 = sub_1E42054D4();
    v38 = v37;

    if (a6)
    {
      if (v36 == a5 && v38 == a6)
      {

        v9 = v32;
LABEL_50:
        v7 = v43;
        v10 = v44;
        v14 = v47;
        if (v8 + 1 != v28)
        {
          *v8 = *v9;
        }

        goto LABEL_32;
      }

      OUTLINED_FUNCTION_31_90();
      v6 = sub_1E42079A4();

      v9 = v32;
      if (v6)
      {
        goto LABEL_50;
      }
    }

    else
    {

      v9 = v32;
    }

    v7 = v43;
    if (v47 != v8 + 1)
    {
      *v8 = *v31;
    }

    v14 = v31;
    v10 = v44;
  }

LABEL_53:
  v40 = v14 - v7;
  if (v28 != v7 || v28 >= &v7[v40])
  {
    memmove(v28, v7, 8 * v40);
  }

  return 1;
}

char *sub_1E4077A28(char *a1, int64_t a2, char a3)
{
  result = sub_1E4077A48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4077A48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_1E4077B44()
{
  result = qword_1ECF3F180;
  if (!qword_1ECF3F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F180);
  }

  return result;
}

unint64_t sub_1E4077B9C()
{
  result = qword_1ECF3F198;
  if (!qword_1ECF3F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F198);
  }

  return result;
}

unint64_t sub_1E4077BF4()
{
  result = qword_1ECF3F1A0;
  if (!qword_1ECF3F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F1A0);
  }

  return result;
}

unint64_t sub_1E4077C4C()
{
  result = qword_1ECF3F1A8;
  if (!qword_1ECF3F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F1A8);
  }

  return result;
}

unint64_t sub_1E4077CEC()
{
  result = qword_1ECF3F1B8;
  if (!qword_1ECF3F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F1B8);
  }

  return result;
}

unint64_t sub_1E4077D44()
{
  result = qword_1ECF3F1C0;
  if (!qword_1ECF3F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F1C0);
  }

  return result;
}

uint64_t sub_1E4077DC0()
{
  sub_1E389B768();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = sub_1E41FE1B4();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = sub_1E4205BF4();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

_BYTE *sub_1E4077EF8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SportsStatisticUpdate(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 254);
    }

    v3 = *(a1 + 8);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (!v4)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v5);
}

uint64_t storeEnumTagSinglePayload for SportsStatisticUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E4078084(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 42))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 254);
    }

    v3 = *(a1 + 41);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (!v4)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v5);
}

uint64_t sub_1E40780CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E407813C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E4078194(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_58_38()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v3;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2 & 1;
}

uint64_t OUTLINED_FUNCTION_62_36()
{

  return sub_1E4205E84();
}

uint64_t OUTLINED_FUNCTION_82_23()
{

  return sub_1E379D7E4(v1, v2 + v3, v0);
}

uint64_t OUTLINED_FUNCTION_83_22()
{

  return sub_1E4205B94();
}

uint64_t OUTLINED_FUNCTION_84_23()
{

  return sub_1E42059F4();
}

uint64_t OUTLINED_FUNCTION_86_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_1E3F9F164(va);
}

uint64_t OUTLINED_FUNCTION_88_19()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_89_19()
{

  return sub_1E379D7E4(v1, v2, v0);
}

void OUTLINED_FUNCTION_91_20()
{

  JUMPOUT(0x1E69109E0);
}

id OUTLINED_FUNCTION_94_23()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_1E40783C0()
{
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E4078400();

  return v1;
}

uint64_t sub_1E4078400()
{
  sub_1E4078504();
  sub_1E407872C();
  v1 = sub_1E40789C0();
  v2 = (*(*v0 + 1712))(v1);
  sub_1E3C37CBC(v2, 23);

  OUTLINED_FUNCTION_36();
  v4 = (*(v3 + 1736))();
  sub_1E3C37CBC(v4, 17);

  OUTLINED_FUNCTION_36();
  v6 = (*(v5 + 1760))();
  sub_1E3C37CBC(v6, 39);
}

uint64_t sub_1E4078504()
{
  OUTLINED_FUNCTION_2_138();
  v0 += 214;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_30();
  (*(v2 + 1984))(5);

  (v1)(v3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 2056))(1, 0);

  (v1)(v5);
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 1696))(21);

  (v1)(v7);
  v8 = objc_opt_self();
  v9 = *sub_1E3E5FDEC();
  v10 = [v8 vui:v9 dynamicColorWithLightColor:*sub_1E3E60364() darkColor:?];

  OUTLINED_FUNCTION_36();
  (*(v11 + 680))(v10);

  (v1)(v12);
  OUTLINED_FUNCTION_2_1();
  (*(v13 + 1792))(10);
}

uint64_t sub_1E407872C()
{
  OUTLINED_FUNCTION_2_138();
  v0 += 217;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 2056))(1, 0);

  (v1)(v3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 1984))(1);

  (v1)(v5);
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 1696))(21);

  (v1)(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 1792))(10);

  (v1)(v9);
  v10 = objc_opt_self();
  v11 = *sub_1E3E5FDEC();
  v12 = [v10 vui:v11 dynamicColorWithLightColor:*sub_1E3E60364() darkColor:?];

  OUTLINED_FUNCTION_36();
  (*(v13 + 680))(v12);

  v15 = (v1)(v14);
  v20[0] = sub_1E3952C28(12.0);
  v20[1] = v16;
  v20[2] = v17;
  v20[3] = v18;
  v21 = 0;
  (*(*v15 + 184))(v20);
}

uint64_t sub_1E40789C0()
{
  OUTLINED_FUNCTION_2_138();
  v0 += 220;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_30();
  (*(v2 + 1808))(2);

  (v1)(v3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 440))(0x3FF0000000000000, 0);

  (v1)(v5);
  OUTLINED_FUNCTION_30();
  (*(v6 + 208))(0x403C000000000000, 0);

  (v1)(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 312))(0x403C000000000000, 0);
}

__objc2_class **sub_1E4078B58()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView____lazy_storage___viewLayout;
  v3 = *(v0 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView____lazy_storage___viewLayout);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = *(v1 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_viewModel);
    if (v5)
    {
      v6 = *(*v5 + 392);

      v4 = v6(v7);

      if (!v4 || *v4 == _TtCC8VideosUI19VerticalStackLayout16FooterViewLayout)
      {
        goto LABEL_7;
      }
    }

    v4 = 0;
LABEL_7:
    v8 = *(v1 + v2);
    *(v1 + v2) = v4;

    sub_1E3781D80(v8);
  }

  sub_1E37C5408(v3);
  return v4;
}

uint64_t sub_1E4078C64(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView____lazy_storage___viewLayout);
  *(v1 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView____lazy_storage___viewLayout) = a1;
  return sub_1E3781D80(v2);
}

id sub_1E4078C7C(char a1, double a2, double a3)
{
  v4 = v3;
  v22.receiver = v3;
  v22.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v22, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if (a2 != 0.0 || a3 != 0.0)
  {
    v9 = sub_1E4078B58();
    if (!v9 || (((*v9)[4].cache)(v23), v10 = *v23, v11 = *&v23[1], v12 = *&v23[2], v13 = *&v23[3], , (v24 & 1) != 0))
    {
      v10 = *MEMORY[0x1E69DDCE0];
      v11 = *(MEMORY[0x1E69DDCE0] + 8);
      v12 = *(MEMORY[0x1E69DDCE0] + 16);
      v13 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    v14 = sub_1E3952BE0(v10, v11, v12, v13);
    v15 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
    v16 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_subviewElements;
    result = OUTLINED_FUNCTION_5_0();
    if (*&v4[v16])
    {
      type metadata accessor for VerticalStackView();

      sub_1E3B98DD4(v17, &v21, 0, a2 - v14, v11, v10);

      v15 = v21;
      if ((a1 & 1) == 0)
      {
LABEL_12:
        v18 = 0;
        v19 = *(v15 + 16);
        v20 = (v15 + 64);
        while (v19 != v18)
        {
          if (v18 >= *(v15 + 16))
          {
            __break(1u);
            return result;
          }

          ++v18;
          result = [*(v20 - 4) setFrame_];
          v20 += 5;
        }
      }
    }

    else if ((a1 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

id sub_1E4078EC8(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_viewModel] = a2;

  v4 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_subviewElements;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (!v5)
  {

    if (a1)
    {
      goto LABEL_20;
    }

    return [v2 vui_setNeedsLayout];
  }

  if (a1)
  {

    v7 = sub_1E4079328(v6, a1);

    if ((v7 & 1) == 0)
    {
      v5 = *&v2[v4];
      if (!v5)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }

    return [v2 vui_setNeedsLayout];
  }

LABEL_9:
  v8 = sub_1E32AE9B0(v5);

  for (i = 0; v8 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_5_0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      [Strong vui_removeFromSuperView];
    }
  }

LABEL_20:
  *&v2[v4] = a1;

  v13 = *&v2[v4];
  if (!v13)
  {
    return [v2 vui_setNeedsLayout];
  }

  v14 = sub_1E32AE9B0(v13);

  for (j = 0; ; ++j)
  {
    if (v14 == j)
    {

      return [v2 vui_setNeedsLayout];
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](j, v13);
    }

    else
    {
      if (j >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_5_0();
    v16 = swift_unknownObjectWeakLoadStrong();
    MEMORY[0x1EEE9AC00](v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35970);
    sub_1E4148DE0(sub_1E3AFA53C);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

id sub_1E4079198()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  *(v0 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_viewModel) = 0;
  OUTLINED_FUNCTION_0_330(&OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView____lazy_storage___viewLayout);
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1);
}

id sub_1E4079224(void *a1)
{
  swift_getObjectType();
  *(v1 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_viewModel) = 0;
  OUTLINED_FUNCTION_0_330(&OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView____lazy_storage___viewLayout);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_1E4079328(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v14 = 0;
      return v14 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v14 = 1;
      return v14 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38980);
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v11 - 4, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v11 - 4, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }
      }

      sub_1E4079534();
      v14 = sub_1E4205E84();

      if (v14)
      {
        ++v11;
        if (v13 != i)
        {
          continue;
        }
      }

      return v14 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E4079534()
{
  result = qword_1EE279300;
  if (!qword_1EE279300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF38980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE279300);
  }

  return result;
}

uint64_t sub_1E4079598()
{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v3 = sub_1E32AE9B0(v1);

  v5 = 0;
  while (v3 != v5)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](v5, v1);
      v6 = result;
    }

    else
    {
      if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v6 = *(v1 + 8 * v5 + 32);
    }

    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    if (!(*(*v6 + 488))(result))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_134_9();
    if (!v7 || (sub_1E3740AE8(234), (v8 & 1) == 0))
    {

      goto LABEL_13;
    }

    type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
    if (swift_dynamicCastClass())
    {
      MEMORY[0x1E6910BF0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      result = sub_1E4206324();
      v2 = v12;
      ++v5;
    }

    else
    {
LABEL_13:

      ++v5;
    }
  }

  result = sub_1E32AE9B0(v2);
  v9 = result;
  for (i = 0; v9 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, v2);
      v11 = result;
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v11 = *(v2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    v12 = v11;
    sub_1E407C05C(&v12);
  }
}

uint64_t sub_1E40797E8(unint64_t a1, unint64_t a2, char a3)
{
  v3[8] = a2;
  if (a3)
  {
    OUTLINED_FUNCTION_5_0();
    v5 = sub_1E32AE9B0(v3[2]);
    OUTLINED_FUNCTION_27_11();

    sub_1E379738C(v6);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_27_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F238);
    OUTLINED_FUNCTION_38_75();
    swift_endAccess();
    OUTLINED_FUNCTION_27_11();
    if (v3[4])
    {
      OUTLINED_FUNCTION_38_75();
    }

    swift_endAccess();
    OUTLINED_FUNCTION_27_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F240);
    sub_1E4205D14();
    swift_endAccess();
    OUTLINED_FUNCTION_27_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F248);
    OUTLINED_FUNCTION_38_75();
    swift_endAccess();
    OUTLINED_FUNCTION_27_11();
    if (v3[7])
    {
      OUTLINED_FUNCTION_38_75();
    }

    swift_endAccess();
    OUTLINED_FUNCTION_27_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F250);
    sub_1E4205D14();
    swift_endAccess();
    OUTLINED_FUNCTION_3_0();
    v3[2] = a1;

    v5 = 0;
  }

  sub_1E4079598();
  v151 = a1;
  v7 = sub_1E407BA38(a1, 0x27u, v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v3[6];

  OUTLINED_FUNCTION_2_252();
  v148 = 0;
  v144 = v3;
  v3[6] = sub_1E407BD2C(v9, v8, v10, sub_1E407D4BC);

  v145 = sub_1E407D8F0();
  v150 = sub_1E4205CB4();
  v11 = 0;
  OUTLINED_FUNCTION_10_105();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v152 = v5;
LABEL_9:
  v17 = v11;
  if (!v14)
  {
    goto LABEL_11;
  }

  do
  {
    v11 = v17;
LABEL_14:
    OUTLINED_FUNCTION_24_111();
    v19 = *(*(v7 + 48) + ((v11 << 9) | (8 * v18)));
    if (__OFSUB__(v19, v5))
    {
      goto LABEL_137;
    }

    v14 &= v14 - 1;
    OUTLINED_FUNCTION_16_154(v19 - v5, v136, v137, v138, v141, v142, v144, v145, v148, v150, v151);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
    sub_1E3798394();
    sub_1E38D2054(v158, v154);
    if (v154[0])
    {
      v20 = sub_1E407AF48(v5, v154[0], 0x27u);
      if (!v20)
      {

        goto LABEL_18;
      }

      v21 = v20;
      v142 = [objc_allocWithZone(VUIMediaInfoImageFetchOperation) initWithMediaInfo_];
      HIDWORD(v138) = swift_isUniquelyReferenced_nonNull_native();
      v158[0] = v150;
      v137 = sub_1E3928950(v19);
      LODWORD(v141) = v22;
      OUTLINED_FUNCTION_11_53();
      if (__OFADD__(v23, v24))
      {
        goto LABEL_144;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F200);
      v25 = sub_1E4207644();
      v150 = v158[0];
      if (v25)
      {
        v26 = sub_1E3928950(v19);
        if ((v141 & 1) != (v27 & 1))
        {
          goto LABEL_150;
        }

        v28 = v142;
        if ((v141 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v28 = v142;
        v26 = v137;
        if ((v141 & 1) == 0)
        {
LABEL_24:
          v29 = OUTLINED_FUNCTION_0_331(v26, v150 + 8 * (v26 >> 6));
          *(*(v30 + 48) + 8 * v29) = v19;
          OUTLINED_FUNCTION_29_99(v29);
          if (v33)
          {
            goto LABEL_147;
          }

          *(v32 + 16) = v31;
          goto LABEL_28;
        }
      }

      v34 = *(v150 + 56);
      v35 = *(v34 + 8 * v26);
      *(v34 + 8 * v26) = v28;

LABEL_28:

      v5 = v152;
      goto LABEL_9;
    }

LABEL_18:

    v17 = v11;
    v5 = v152;
  }

  while (v14);
  while (1)
  {
LABEL_11:
    v11 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v11 >= v16)
    {
      break;
    }

    v14 = *(v7 + 64 + 8 * v11);
    ++v17;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_3_0();
  v36 = v144[3];

  OUTLINED_FUNCTION_3_260();
  v144[3] = sub_1E407BD2C(v37, v36, v38, sub_1E407D304);

  v39 = sub_1E407BA38(v151, 0x28u, v5);
  if (*(v39 + 16))
  {
    OUTLINED_FUNCTION_3_0();
    if (v144[7])
    {
      v40 = v144[7];
    }

    else
    {
      type metadata accessor for ImageViewModel();
      v40 = sub_1E4205CB4();
    }

    OUTLINED_FUNCTION_2_252();
    v143 = 0;
    v144[7] = sub_1E407BD2C(v41, v40, v42, sub_1E407D4BC);
  }

  else
  {
    v143 = 0;
  }

  v149 = sub_1E4205CB4();
  v43 = 0;
  OUTLINED_FUNCTION_10_105();
  v46 = v45 & v44;
  v48 = (v47 + 63) >> 6;
  while (2)
  {
    v49 = v43;
    if (!v46)
    {
      goto LABEL_38;
    }

LABEL_37:
    v43 = v49;
LABEL_41:
    v50 = *(*(v39 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v46)))));
    if (__OFSUB__(v50, v5))
    {
      goto LABEL_138;
    }

    v46 &= v46 - 1;
    OUTLINED_FUNCTION_16_154(v50 - v5, v136, v137, v138, v141, v143, v144, v145, v149, v150, v151);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
    sub_1E3798394();
    sub_1E38D2054(v158, v153);
    if (v153[0])
    {
      v51 = sub_1E407AF48(v5, v153[0], 0x28u);
      if (!v51)
      {

        break;
      }

      v52 = v51;
      v141 = [objc_allocWithZone(VUIMediaInfoImageFetchOperation) initWithMediaInfo_];
      LODWORD(v137) = swift_isUniquelyReferenced_nonNull_native();
      v158[0] = v149;
      v136 = sub_1E3928950(v50);
      HIDWORD(v138) = v53;
      OUTLINED_FUNCTION_11_53();
      if (__OFADD__(v54, v55))
      {
        goto LABEL_145;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F200);
      v56 = sub_1E4207644();
      v149 = v158[0];
      if (v56)
      {
        sub_1E3928950(v50);
        OUTLINED_FUNCTION_10_170();
        if (!v59)
        {
          goto LABEL_150;
        }

        v60 = v141;
        if ((v58 & 1) == 0)
        {
LABEL_52:
          v61 = OUTLINED_FUNCTION_0_331(v57, v149 + 8 * (v57 >> 6));
          *(*(v62 + 48) + 8 * v61) = v50;
          OUTLINED_FUNCTION_29_99(v61);
          if (v33)
          {
            goto LABEL_148;
          }

          *(v64 + 16) = v63;
          goto LABEL_56;
        }
      }

      else
      {
        v60 = v141;
        v57 = v136;
        if ((v138 & 0x100000000) == 0)
        {
          goto LABEL_52;
        }
      }

      v65 = *(v149 + 56);
      v66 = *(v65 + 8 * v57);
      *(v65 + 8 * v57) = v60;

LABEL_56:

      v5 = v152;
      continue;
    }

    break;
  }

  v49 = v43;
  v5 = v152;
  if (v46)
  {
    goto LABEL_37;
  }

  while (1)
  {
LABEL_38:
    v43 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_132;
    }

    if (v43 >= v48)
    {
      break;
    }

    v46 = *(v39 + 64 + 8 * v43);
    ++v49;
    if (v46)
    {
      goto LABEL_41;
    }
  }

  if (*(v149 + 16))
  {
    OUTLINED_FUNCTION_3_0();
    v67 = v151;
    if (v144[4])
    {
      v68 = v144[4];
    }

    else
    {
      v68 = sub_1E4205CB4();
    }

    OUTLINED_FUNCTION_3_260();
    v144[4] = sub_1E407BD2C(v69, v68, v70, sub_1E407D304);
  }

  else
  {
    v67 = v151;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F858);
  v71 = sub_1E4205CB4();
  v72 = sub_1E32AE9B0(v67);
  v73 = 0;
  v74 = v67 & 0xC000000000000001;
  v75 = v67 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v72 != v73)
    {
      if (v74)
      {
        MEMORY[0x1E6911E60](v73, v67);
      }

      else
      {
        if (v73 >= *(v75 + 16))
        {
          goto LABEL_135;
        }
      }

      v76 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        goto LABEL_134;
      }

      v77 = sub_1E407B1C8();
      if (!v77)
      {

        ++v73;
        continue;
      }

      if (__OFADD__(v152, v73))
      {
        goto LABEL_141;
      }

      v78 = v77;
      swift_isUniquelyReferenced_nonNull_native();
      v158[0] = v71;
      v146 = v152 + v73;
      sub_1E3928950(v152 + v73);
      OUTLINED_FUNCTION_11_53();
      if (__OFADD__(v81, v82))
      {
        goto LABEL_142;
      }

      v83 = v79;
      v139 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F210);
      v84 = sub_1E4207644();
      v85 = v158[0];
      if (v84)
      {
        v86 = v152 + v73;
        sub_1E3928950(v146);
        OUTLINED_FUNCTION_10_170();
        if (!v59)
        {
          goto LABEL_150;
        }

        v83 = v87;
        if ((v88 & 1) == 0)
        {
LABEL_77:
          v85[(v83 >> 6) + 8] |= 1 << v83;
          *(v85[6] + 8 * v83) = v86;
          *(v85[7] + 8 * v83) = v78;

          v89 = v85[2];
          v33 = __OFADD__(v89, 1);
          v90 = v89 + 1;
          if (v33)
          {
            goto LABEL_143;
          }

          v85[2] = v90;
          goto LABEL_81;
        }
      }

      else
      {
        v86 = v152 + v73;
        if ((v139 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      *(v85[7] + 8 * v83) = v78;

LABEL_81:
      v73 = v76;
      v71 = v85;
      v67 = v151;
      continue;
    }

    break;
  }

  if (v71[2])
  {
    OUTLINED_FUNCTION_3_0();
    v91 = v144[10];

    v144[10] = sub_1E407BDB4(v92, v91);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1F0);
  v147 = sub_1E4205CB4();
  v93 = 0;
  OUTLINED_FUNCTION_10_105();
  v96 = v95 & v94;
  v98 = (v97 + 63) >> 6;
  while (1)
  {
    v99 = v93;
    if (!v96)
    {
      break;
    }

LABEL_90:
    OUTLINED_FUNCTION_24_111();
    v101 = (v93 << 9) | (8 * v100);
    v102 = *(v71[6] + v101);
    if (__OFSUB__(v102, v152))
    {
      goto LABEL_139;
    }

    v96 &= v96 - 1;
    v103 = *(v71[7] + v101);
    v157[1] = v151;
    v155 = (v102 - v152);
    v156 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
    sub_1E3798394();
    sub_1E38D2054(&v155, v157);
    if (!v157[0])
    {

      continue;
    }

    v104 = sub_1E407B4AC(v103, v157[0]);

    if (!v104)
    {

      continue;
    }

    LODWORD(v137) = swift_isUniquelyReferenced_nonNull_native();
    v155 = v147;
    v136 = sub_1E3928950(v102);
    v140 = v105;
    OUTLINED_FUNCTION_11_53();
    if (__OFADD__(v106, v107))
    {
      goto LABEL_146;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F208);
    v108 = sub_1E4207644();
    v147 = v155;
    if (v108)
    {
      sub_1E3928950(v102);
      OUTLINED_FUNCTION_10_170();
      if (!v59)
      {
        goto LABEL_150;
      }

      if (v110)
      {
LABEL_100:
        *(v147[7] + 8 * v109) = v104;

        continue;
      }
    }

    else
    {
      v109 = v136;
      if (v140)
      {
        goto LABEL_100;
      }
    }

    v111 = OUTLINED_FUNCTION_0_331(v109, &v147[v109 >> 6]);
    *(v147[6] + 8 * v111) = v102;
    *(v147[7] + 8 * v111) = v104;

    v112 = v147[2];
    v33 = __OFADD__(v112, 1);
    v113 = v112 + 1;
    if (v33)
    {
      goto LABEL_149;
    }

    v147[2] = v113;
  }

  while (1)
  {
    v93 = v99 + 1;
    if (__OFADD__(v99, 1))
    {
      break;
    }

    if (v93 >= v98)
    {

      v114 = v147;
      if (v147[2])
      {
        OUTLINED_FUNCTION_3_0();
        v115 = v144[5];

        v144[5] = sub_1E407BE64(v116, v115);
      }

      v117 = v152;
      v119 = v149;
      v118 = v150;
      v120 = v144[9];
      [v120 setMaxConcurrentOperationCount_];
      v121 = sub_1E32AE9B0(v151);
      if (v121 < 0)
      {
        goto LABEL_140;
      }

      v122 = v121;
      if (!v121)
      {
LABEL_128:

        return sub_1E407A6EC();
      }

      v123 = 0;
      while (!__OFADD__(v117, v123))
      {
        if (*(v118 + 16))
        {
          v124 = sub_1E3928950(v117 + v123);
          if (v125)
          {
            [v120 addOperation_];
          }
        }

        if (*(v119 + 16))
        {
          v126 = sub_1E3928950(v117 + v123);
          if (v127)
          {
            [v120 addOperation_];
          }
        }

        if (v114[2])
        {
          v128 = sub_1E3928950(v117 + v123);
          if (v129)
          {
            v130 = *(v114[7] + 8 * v128);
            v131 = sub_1E32AE9B0(v130);

            for (i = 0; ; ++i)
            {
              if (v131 == i)
              {

                v117 = v152;
                v119 = v149;
                v118 = v150;
                v114 = v147;
                goto LABEL_127;
              }

              if ((v130 & 0xC000000000000001) != 0)
              {
                v133 = MEMORY[0x1E6911E60](i, v130);
              }

              else
              {
                if (i >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_130;
                }

                v133 = *(v130 + 8 * i + 32);
              }

              v134 = v133;
              if (__OFADD__(i, 1))
              {
                break;
              }

              [v120 addOperation_];
            }

            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }
        }

LABEL_127:
        if (++v123 == v122)
        {
          goto LABEL_128;
        }
      }

      goto LABEL_136;
    }

    v96 = v71[v93 + 8];
    ++v99;
    if (v96)
    {
      goto LABEL_90;
    }
  }

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
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}