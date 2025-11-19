unint64_t sub_1B61ED424@<X0>(unint64_t *a1@<X8>)
{
  result = WeatherProduct.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B61ED460(uint64_t *a1, uint64_t a2, void *a3, NSObject *a4, uint64_t a5, double a6, double a7)
{
  v65 = a4;
  v66 = a5;
  v63 = a3;
  v64 = a2;
  v61 = type metadata accessor for InterpolationInputProducts();
  MEMORY[0x1EEE9AC00](v61);
  v62 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v68 = &v61 - v12;
  v13 = type metadata accessor for DailyForecast();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v67 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HourlyForecast();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v71 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for WeatherModel();
  MEMORY[0x1EEE9AC00](v73);
  v69 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v70 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v72 = &v61 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251E0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v61 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v61 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v61 - v35;
  v37 = *a1;
  sub_1B60C4E98(3, v37, &v61 - v35);
  v38 = v33;
  sub_1B60C4E98(2, v37, v33);
  sub_1B603A944(v36, v30, &qword_1EB9251E0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
  if (__swift_getEnumTagSinglePayload(v30, 1, v39) == 1)
  {
    v40 = &qword_1EB9251E0;
LABEL_5:
    sub_1B620E044(v30, v40);
LABEL_6:
    v41 = v38;
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = &qword_1EB925000;
    goto LABEL_5;
  }

  v49 = v72;
  sub_1B605A29C(v30, v72);
  sub_1B6036A80(v49, v22);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1B620B850();
    sub_1B620B850();
    goto LABEL_6;
  }

  v50 = v71;
  sub_1B605A29C(v22, v71);
  v41 = v38;
  sub_1B603A944(v38, v27, &qword_1EB9251E0);
  if (__swift_getEnumTagSinglePayload(v27, 1, v39) == 1)
  {
    sub_1B620B850();
    sub_1B620B850();
    v51 = &qword_1EB9251E0;
LABEL_19:
    sub_1B620E044(v27, v51);
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B620B850();
    sub_1B620B850();
    v51 = &qword_1EB925000;
    goto LABEL_19;
  }

  v52 = v70;
  sub_1B605A29C(v27, v70);
  v53 = v69;
  sub_1B6036A80(v52, v69);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v54 = v67;
    sub_1B605A29C(v53, v67);
    v55 = v68;
    sub_1B61EDDB8(v37, v68);
    v56 = v62;
    sub_1B6036A80(v50, v62);
    v57 = v61;
    sub_1B6036A80(v54, v56 + *(v61 + 20));
    sub_1B603A944(v55, v56 + *(v57 + 24), &qword_1EB924EA0);
    v58 = sub_1B61E6E38(v56, v63, v65, v66, a6, a7);
    sub_1B620B850();
    if (v58)
    {
      v74 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8);
      swift_allocObject();
      v59 = sub_1B6220994();
    }

    else
    {
      sub_1B60BE750();
      swift_allocError();
      *v60 = 0xD00000000000004CLL;
      v60[1] = 0x80000001B623CC00;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8);
      swift_allocObject();
      v59 = sub_1B6220984();
    }

    v47 = v59;
    sub_1B620E044(v55, &qword_1EB924EA0);
    sub_1B620B850();
    sub_1B620B850();
    sub_1B620B850();
    sub_1B620B850();
    goto LABEL_12;
  }

  sub_1B620B850();
  sub_1B620B850();
  sub_1B620B850();
  sub_1B620B850();
LABEL_7:
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v42 = sub_1B6220B34();
  __swift_project_value_buffer(v42, qword_1EDAC2AB0);
  v43 = sub_1B6220B14();
  v44 = sub_1B62217E4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1B6020000, v43, v44, "Hourly and Daily forecasts missing from WDS fetch, so cannot interpolate", v45, 2u);
    MEMORY[0x1B8C91C90](v45, -1, -1);
  }

  sub_1B60BE750();
  swift_allocError();
  *v46 = 0xD000000000000048;
  v46[1] = 0x80000001B623CBB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8);
  swift_allocObject();
  v47 = sub_1B6220984();
LABEL_12:
  sub_1B620E044(v41, &qword_1EB9251E0);
  sub_1B620E044(v36, &qword_1EB9251E0);
  return v47;
}

uint64_t sub_1B61EDDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherModel();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  if (*(a1 + 16) && (v16 = sub_1B6072A80(4), (v17 & 1) != 0))
  {
    v18 = v16;
    v19 = a2;
    v20 = *(a1 + 56);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
    v22 = v20 + *(*(v21 - 8) + 72) * v18;
    a2 = v19;
    sub_1B603A944(v22, v15, &qword_1EB925000);
    v23 = v15;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
    v23 = v15;
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
  sub_1B603D3DC(v15, v12, &qword_1EB9251E0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
  if (__swift_getEnumTagSinglePayload(v12, 1, v26) == 1)
  {
    v27 = &qword_1EB9251E0;
LABEL_9:
    sub_1B620E044(v12, v27);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = &qword_1EB925000;
    goto LABEL_9;
  }

  sub_1B605A29C(v12, v9);
  sub_1B605A29C(v9, v6);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    return sub_1B603D3DC(v6, a2, &qword_1EB924EA0);
  }

  sub_1B620B850();
LABEL_10:
  HourForecast = type metadata accessor for NextHourForecast();
  return __swift_storeEnumTagSinglePayload(a2, 1, 1, HourForecast);
}

uint64_t sub_1B61EE0B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B621D8F4();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeatherModel();
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6220EC4();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B6220A84();
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B6220B34();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for SignpostInterval();
  MEMORY[0x1EEE9AC00](v47);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WeatherRequestOptions();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = sub_1B61E4CFC();
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  v25 = *(type metadata accessor for WeatherDataManager.CacheProcessingRequest(0) + 28);
  v41 = a1;
  sub_1B6036A80(a1 + v25, v22);
  v45 = v2;
  v26 = sub_1B6070128(v22);
  v28 = v27;
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v14, qword_1EDAC2AB0);
  v30 = *(v15 + 16);
  v46 = v29;
  v30(v17);
  sub_1B6220A94();
  sub_1B6220AA4();
  sub_1B6220A64();
  sub_1B61EE7AC();
  v32 = v31;
  (*(v48 + 8))(v13, v49);
  *v19 = "processCacheRequestSync";
  *(v19 + 1) = 23;
  v19[16] = 2;
  *(v19 + 3) = v32;
  (*(v50 + 104))(v52, *MEMORY[0x1E69D62C0], v51);
  sub_1B6220EE4();
  swift_allocObject();
  sub_1B6220ED4();
  v33 = *(v53 + 16);
  if (v33)
  {
    v34 = v53 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v35 = *(v40 + 72);
    do
    {
      sub_1B6036A80(v34, v8);
      sub_1B61EF7A0(v8, v26, v28, v22, v23, v24);
      sub_1B620B850();
      v34 += v35;
      --v33;
    }

    while (v33);
  }

  v36 = *v41;
  type metadata accessor for WeatherClock();
  v37 = v42;
  static WeatherClock.date.getter();
  sub_1B61ECBB8(v36, v37, v23, v24);

  (*(v43 + 8))(v37, v44);
  SignpostInterval.end()();
  sub_1B620B850();
  return sub_1B620B850();
}

void sub_1B61EE7AC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_58();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_8_18();
  v6 = sub_1B6220A84();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v12 = v11 - v10;
  v13 = sub_1B6220AA4();
  v14 = sub_1B6221934();
  if ((sub_1B62219C4() & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = v1;
  v21 = v14;
  if ((v3 & 1) == 0)
  {
    if (v5)
    {
LABEL_9:
      OUTLINED_FUNCTION_110();
      v15 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v16 = swift_slowAlloc();
      *v15 = 141558275;
      OUTLINED_FUNCTION_37_5();
      *(v15 + 4) = v17;
      *(v15 + 12) = 2081;
      v23 = v18;
      sub_1B6221704();
      MEMORY[0x1B8C90530](8236, 0xE200000000000000);
      sub_1B6221704();
      v19 = sub_1B602EEB0(0, 0xE000000000000000, &v23);

      *(v15 + 14) = v19;
      v1 = v22;
      v20 = sub_1B6220A74();
      _os_signpost_emit_with_name_impl(&dword_1B6020000, v13, v21, v20, v5, "location %{private,mask.hash}s", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
LABEL_10:

      (*(v8 + 16))(v12, v1, v6);
      sub_1B6220AF4();
      OUTLINED_FUNCTION_249();
      swift_allocObject();
      OUTLINED_FUNCTION_104();
      sub_1B6220AE4();
      OUTLINED_FUNCTION_117();
      return;
    }

    __break(1u);
  }

  if (v5 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v5 & 0xFFFFF800) != 0xD800)
  {
    if (v5 >> 16 <= 0x10)
    {
      v5 = &v24;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1B61EE9F8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 136) = a10;
  *(v10 + 144) = v16;
  *(v10 + 120) = a8;
  *(v10 + 128) = a9;
  *(v10 + 104) = a1;
  *(v10 + 112) = a2;
  *(v10 + 88) = a6;
  *(v10 + 96) = a7;
  *(v10 + 72) = a4;
  *(v10 + 80) = a5;
  v11 = *(type metadata accessor for WeatherRequestOptions() - 8);
  *(v10 + 152) = v11;
  *(v10 + 160) = *(v11 + 64);
  *(v10 + 168) = swift_task_alloc();
  v12 = *(type metadata accessor for WeatherModel() - 8);
  *(v10 + 176) = v12;
  *(v10 + 184) = *(v12 + 64);
  *(v10 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925160);
  *(v10 + 200) = swift_task_alloc();
  *(v10 + 208) = swift_task_alloc();
  v13 = sub_1B621D8F4();
  *(v10 + 216) = v13;
  *(v10 + 224) = *(v13 - 8);
  *(v10 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B61EEBD4, 0, 0);
}

uint64_t sub_1B61EEBD4()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 176);
    v41 = *(v0 + 152);
    v40 = **(v0 + 72);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v39 = *(v3 + 72);
    v38 = (v4 + 48) & ~v4;
    v37 = (*(v0 + 184) + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
    v46 = sub_1B6221644();
    do
    {
      v45 = v2;
      v43 = *(v0 + 208);
      v44 = *(v0 + 200);
      v6 = *(v0 + 192);
      v7 = *(v0 + 168);
      v8 = *(v0 + 128);
      v9 = *(v0 + 136);
      v11 = *(v0 + 104);
      v10 = *(v0 + 112);
      v12 = *(v0 + 88);
      v13 = *(v0 + 96);
      v42 = *(v0 + 120);
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v46);
      OUTLINED_FUNCTION_98_3();
      v17 = OUTLINED_FUNCTION_302();
      sub_1B6036A80(v17, v18);
      OUTLINED_FUNCTION_29_12();
      sub_1B6036A80(v9, v7);
      v19 = (v36 + 16 + *(v41 + 80)) & ~*(v41 + 80);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v13;
      v20[5] = v12;
      OUTLINED_FUNCTION_97_2();
      sub_1B605A29C(v6, v21 + v38);
      v22 = (v20 + v37);
      *v22 = v11;
      v22[1] = v10;
      v23 = (v20 + v36);
      *v23 = v42;
      v23[1] = v8;
      OUTLINED_FUNCTION_96_1();
      sub_1B605A29C(v7, v20 + v19);
      sub_1B603A944(v43, v44, &qword_1EB925160);
      v24 = OUTLINED_FUNCTION_3_29();
      LODWORD(v6) = __swift_getEnumTagSinglePayload(v24, v25, v46);

      sub_1B6220784();
      v26 = *(v0 + 200);
      if (v6 == 1)
      {
        sub_1B620E044(*(v0 + 200), &qword_1EB925160);
      }

      else
      {
        sub_1B6221634();
        (*(*(v46 - 8) + 8))(v26);
      }

      if (v20[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        OUTLINED_FUNCTION_51_4();
        v27 = sub_1B62215C4();
        v29 = v28;
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      v30 = swift_allocObject();
      *(v30 + 16) = &unk_1B6239F60;
      *(v30 + 24) = v20;

      if (v29 | v27)
      {
        v31 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v27;
        *(v0 + 40) = v29;
      }

      else
      {
        v31 = 0;
      }

      v32 = *(v0 + 208);
      *(v0 + 48) = 1;
      *(v0 + 56) = v31;
      *(v0 + 64) = v40;
      swift_task_create();
      OUTLINED_FUNCTION_135();

      sub_1B620E044(v32, &qword_1EB925160);
      v5 += v39;
      v2 = v45 - 1;
    }

    while (v45 != 1);
  }

  v33 = swift_task_alloc();
  *(v0 + 240) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927C70);
  *v33 = v0;
  v33[1] = sub_1B61EEFE4;

  return MEMORY[0x1EEE6D898](0, 0, v34);
}

uint64_t sub_1B61EEFE4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v1 = *v0;
  OUTLINED_FUNCTION_1_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_76_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1B61EF0C8()
{
  v1 = *(v0 + 232);
  v2 = **(v0 + 144);
  type metadata accessor for WeatherClock();
  static WeatherClock.date.getter();
  v3 = OUTLINED_FUNCTION_17_2();
  sub_1B61ECBB8(v2, v1, v3, v4);
  v5 = OUTLINED_FUNCTION_175_0();
  v6(v5);

  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_180_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1B61EF1BC(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 72) = a10;
  *(v10 + 80) = v15;
  *(v10 + 64) = a9;
  *(v10 + 48) = a1;
  *(v10 + 56) = a2;
  *(v10 + 32) = a7;
  *(v10 + 40) = a8;
  *(v10 + 24) = a6;
  v11 = *(type metadata accessor for WeatherRequestOptions() - 8);
  *(v10 + 88) = v11;
  *(v10 + 96) = *(v11 + 64);
  *(v10 + 104) = swift_task_alloc();
  v12 = *(type metadata accessor for WeatherModel() - 8);
  *(v10 + 112) = v12;
  *(v10 + 120) = *(v12 + 64);
  *(v10 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B61EF2F8, 0, 0);
}

uint64_t sub_1B61EF2F8()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[10];
  v21 = v0[8];
  v22 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[4];
  OUTLINED_FUNCTION_98_3();
  sub_1B6036A80(v10, v1);
  OUTLINED_FUNCTION_29_12();
  sub_1B6036A80(v6, v3);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = (v2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v5 + 80) + v13 + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v0[17] = v15;
  *(v15 + 16) = v9;
  OUTLINED_FUNCTION_97_2();
  sub_1B605A29C(v1, v16 + v11);
  v17 = (v15 + v12);
  *v17 = v8;
  v17[1] = v7;
  v18 = (v15 + v13);
  *v18 = v21;
  v18[1] = v22;
  OUTLINED_FUNCTION_96_1();
  sub_1B605A29C(v3, v15 + v14);

  sub_1B6220784();
  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = sub_1B61EF4A0;

  return sub_1B61A6104();
}

uint64_t sub_1B61EF4A0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v3 + 152) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B61EF5DC, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_3_17();

    return v6();
  }
}

uint64_t sub_1B61EF5DC()
{
  v21 = v0;

  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v2 = *(v0 + 152);
  v3 = sub_1B6220B34();
  OUTLINED_FUNCTION_225(v3, qword_1EDAC2AB0);
  v4 = v2;
  v5 = sub_1B6220B14();
  v6 = sub_1B62217E4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 152);
  if (v7)
  {
    OUTLINED_FUNCTION_110();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 141558275;
    OUTLINED_FUNCTION_37_5();
    *(v9 + 4) = v11;
    *(v9 + 12) = 2081;
    *(v0 + 16) = v8;
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910);
    v13 = sub_1B6221234();
    sub_1B602EEB0(v13, v14, &v20);
    OUTLINED_FUNCTION_204_0();

    *(v9 + 14) = v1;
    OUTLINED_FUNCTION_181_0(&dword_1B6020000, v15, v6, "Failed to cache product, error=%{private,mask.hash}s");
    __swift_destroy_boxed_opaque_existential_1(v10);
    v16 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1B8C91C90](v16);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90](v17);
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_17();

  return v18();
}

uint64_t sub_1B61EF7A0(uint64_t a1, NSObject *a2, unint64_t a3, uint64_t a4, double a5, double a6)
{
  v150 = a3;
  v148 = a4;
  v149 = a2;
  v152 = a1;
  v146 = type metadata accessor for WeatherComparisons();
  MEMORY[0x1EEE9AC00](v146);
  v118 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924ED8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v145 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v147 = &v110 - v12;
  v143 = type metadata accessor for WeatherChange();
  MEMORY[0x1EEE9AC00](v143);
  v117 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924ED0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v142 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v144 = &v110 - v17;
  v140 = type metadata accessor for WeatherAlerts();
  MEMORY[0x1EEE9AC00](v140);
  v116 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EC8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v139 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v141 = &v110 - v22;
  v137 = type metadata accessor for TideEvents();
  MEMORY[0x1EEE9AC00](v137);
  v115 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EC0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v136 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v138 = &v110 - v27;
  v134 = type metadata accessor for News();
  MEMORY[0x1EEE9AC00](v134);
  v114 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EB8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v133 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v135 = &v110 - v32;
  v131 = type metadata accessor for MarineForecast();
  MEMORY[0x1EEE9AC00](v131);
  v113 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EB0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v130 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v132 = &v110 - v37;
  v38 = type metadata accessor for LocationInfo();
  MEMORY[0x1EEE9AC00](v38 - 8);
  v129 = &v110 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for PeriodicForecasts();
  MEMORY[0x1EEE9AC00](v40 - 8);
  v128 = &v110 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  HourForecast = type metadata accessor for NextHourForecast();
  MEMORY[0x1EEE9AC00](HourForecast);
  v112 = &v110 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EA0);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v125 = &v110 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v127 = &v110 - v46;
  v47 = type metadata accessor for HourlyForecast();
  MEMORY[0x1EEE9AC00](v47 - 8);
  v124 = &v110 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DailyForecast();
  MEMORY[0x1EEE9AC00](v49 - 8);
  v123 = &v110 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for CurrentWeather();
  MEMORY[0x1EEE9AC00](v51 - 8);
  v121 = &v110 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for AirQuality();
  MEMORY[0x1EEE9AC00](v120);
  v111 = &v110 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E78);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v119 = &v110 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v122 = &v110 - v57;
  v151 = type metadata accessor for WeatherModel();
  MEMORY[0x1EEE9AC00](v151);
  v59 = (&v110 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_1B6220A84();
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v110 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1B6220B34();
  v65 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v110 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for SignpostInterval();
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v110 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v71 = __swift_project_value_buffer(v64, qword_1EDAC2AB0);
  (*(v65 + 16))(v67, v71, v64);
  v72 = *(v68 + 24);
  sub_1B6220A94();
  sub_1B6220AA4();
  sub_1B6220A64();
  v73 = &v70[v72];
  v74 = v70;
  v75 = v152;
  v76 = sub_1B61F0D4C(v73, "processCacheProduct", 19, 2, v63, v152);
  (*(v61 + 8))(v63, v60);
  *v74 = "processCacheProduct";
  *(v74 + 1) = 19;
  v74[16] = 2;
  *(v74 + 3) = v76;
  sub_1B6036A80(v75, v59);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v87 = v121;
      sub_1B605A29C(v59, v121);
      sub_1B61F20A0(v87, v149, v150, a5, a6);
      goto LABEL_18;
    case 2u:
      v84 = v123;
      sub_1B605A29C(v59, v123);
      sub_1B61F28DC(v84, v149, v150, v148, a5, a6);
      goto LABEL_18;
    case 3u:
      v85 = v124;
      sub_1B605A29C(v59, v124);
      sub_1B61F376C(v85, v149, v150, v148, a5, a6);
      goto LABEL_18;
    case 4u:
      v77 = &qword_1EB924EA0;
      v78 = v127;
      sub_1B603D3DC(v59, v127, &qword_1EB924EA0);
      v81 = v125;
      sub_1B603A944(v78, v125, &qword_1EB924EA0);
      if (__swift_getEnumTagSinglePayload(v81, 1, HourForecast) == 1)
      {
        sub_1B620E044(v81, &qword_1EB924EA0);
        sub_1B61F4EF0(v149, v150);
        goto LABEL_28;
      }

      v98 = v112;
      sub_1B605A29C(v81, v112);
      sub_1B61F4698(v98, v149, v150, a5, a6);
      sub_1B620B850();
      v96 = &qword_1EB924EA0;
      goto LABEL_37;
    case 5u:
      v88 = v59;
      v89 = v128;
      sub_1B605A29C(v88, v128);
      v90 = sub_1B61F5708(v148, v149, v150);
      sub_1B61F5934(v89, v90, v91, a5, a6);

      goto LABEL_18;
    case 6u:
      if (*v59)
      {
        v153 = *v59;
        sub_1B61FCE5C(&v153, v149, v150, a5, a6);
      }

      else
      {
        sub_1B61FD968(v149, v150);
      }

      goto LABEL_39;
    case 7u:
      v86 = v129;
      sub_1B605A29C(v59, v129);
      sub_1B61F6148(v86, v149, v150, a5, a6);
LABEL_18:
      sub_1B620B850();
      goto LABEL_39;
    case 8u:
      v77 = &qword_1EB924EB0;
      v78 = v132;
      sub_1B603D3DC(v59, v132, &qword_1EB924EB0);
      v94 = v130;
      sub_1B603A944(v78, v130, &qword_1EB924EB0);
      if (__swift_getEnumTagSinglePayload(v94, 1, v131) == 1)
      {
        sub_1B620E044(v94, &qword_1EB924EB0);
        sub_1B61F7420(v149, v150);
        goto LABEL_28;
      }

      v106 = v113;
      sub_1B605A29C(v94, v113);
      v107 = sub_1B61F6984(v148, v149, v150);
      sub_1B61F6BAC(v106, v107, v108, a5, a6);

      sub_1B620B850();
      v96 = &qword_1EB924EB0;
      goto LABEL_37;
    case 9u:
      v77 = &qword_1EB924EB8;
      v78 = v135;
      sub_1B603D3DC(v59, v135, &qword_1EB924EB8);
      v83 = v133;
      sub_1B603A944(v78, v133, &qword_1EB924EB8);
      if (__swift_getEnumTagSinglePayload(v83, 1, v134) == 1)
      {
        sub_1B620E044(v83, &qword_1EB924EB8);
        sub_1B61F8490(v149, v150);
        goto LABEL_28;
      }

      v100 = v114;
      sub_1B605A29C(v83, v114);
      sub_1B61F7C38(v100, v149, v150, a5, a6);
      sub_1B620B850();
      v96 = &qword_1EB924EB8;
      goto LABEL_37;
    case 0xAu:
      v77 = &qword_1EB924EC8;
      v78 = v141;
      sub_1B603D3DC(v59, v141, &qword_1EB924EC8);
      v93 = v139;
      sub_1B603A944(v78, v139, &qword_1EB924EC8);
      if (__swift_getEnumTagSinglePayload(v93, 1, v140) == 1)
      {
        sub_1B620E044(v93, &qword_1EB924EC8);
        sub_1B61FA58C(v149, v150);
        goto LABEL_28;
      }

      v105 = v116;
      sub_1B605A29C(v93, v116);
      sub_1B61F9D34(v105, v149, v150, a5, a6);
      sub_1B620B850();
      v96 = &qword_1EB924EC8;
      goto LABEL_37;
    case 0xBu:
      v77 = &qword_1EB924ED0;
      v78 = v144;
      sub_1B603D3DC(v59, v144, &qword_1EB924ED0);
      v80 = v142;
      sub_1B603A944(v78, v142, &qword_1EB924ED0);
      if (__swift_getEnumTagSinglePayload(v80, 1, v143) == 1)
      {
        sub_1B620E044(v80, &qword_1EB924ED0);
        sub_1B61FB5FC(v149, v150);
        goto LABEL_28;
      }

      v97 = v117;
      sub_1B605A29C(v80, v117);
      sub_1B61FADA4(v97, v149, v150, a5, a6);
      sub_1B620B850();
      v96 = &qword_1EB924ED0;
      goto LABEL_37;
    case 0xCu:
      v77 = &qword_1EB924ED8;
      v78 = v147;
      sub_1B603D3DC(v59, v147, &qword_1EB924ED8);
      v82 = v145;
      sub_1B603A944(v78, v145, &qword_1EB924ED8);
      if (__swift_getEnumTagSinglePayload(v82, 1, v146) == 1)
      {
        sub_1B620E044(v82, &qword_1EB924ED8);
        sub_1B61FC644(v149, v150);
        goto LABEL_28;
      }

      v99 = v118;
      sub_1B605A29C(v82, v118);
      sub_1B61FBE14(v99, v149, v150, a5, a6);
      sub_1B620B850();
      v96 = &qword_1EB924ED8;
      goto LABEL_37;
    case 0xDu:
      v77 = &qword_1EB924EC0;
      v78 = v138;
      sub_1B603D3DC(v59, v138, &qword_1EB924EC0);
      v92 = v136;
      sub_1B603A944(v78, v136, &qword_1EB924EC0);
      if (__swift_getEnumTagSinglePayload(v92, 1, v137) == 1)
      {
        sub_1B620E044(v92, &qword_1EB924EC0);
        sub_1B61F951C(v149, v150);
        goto LABEL_28;
      }

      v102 = v115;
      sub_1B605A29C(v92, v115);
      v103 = sub_1B61F6984(v148, v149, v150);
      sub_1B61F8CA8(v102, v103, v104, a5, a6);

      sub_1B620B850();
      v96 = &qword_1EB924EC0;
      goto LABEL_37;
    default:
      v77 = &qword_1EB924E78;
      v78 = v122;
      sub_1B603D3DC(v59, v122, &qword_1EB924E78);
      v79 = v119;
      sub_1B603A944(v78, v119, &qword_1EB924E78);
      if (__swift_getEnumTagSinglePayload(v79, 1, v120) == 1)
      {
        sub_1B620E044(v79, &qword_1EB924E78);
        sub_1B61F1888(v149, v150);
LABEL_28:
        v95 = v78;
        v96 = v77;
      }

      else
      {
        v101 = v111;
        sub_1B605A29C(v79, v111);
        sub_1B61F1030(v101, v149, v150, a5, a6);
        sub_1B620B850();
        v96 = &qword_1EB924E78;
LABEL_37:
        v95 = v78;
      }

      sub_1B620E044(v95, v96);
LABEL_39:
      SignpostInterval.end()();
      return sub_1B620B850();
  }
}

uint64_t sub_1B61F0D4C(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1B6220A84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for WeatherModel();
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1B6036A80(a6, &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v16 = sub_1B6220AA4();
  v17 = sub_1B6221934();
  result = sub_1B62219C4();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v28 = a5;
  v27 = v17;
  if ((a4 & 1) == 0)
  {
    if (!a2)
    {
      __break(1u);
LABEL_5:

      sub_1B620B850();
LABEL_11:
      (*(v11 + 16))(v13, a5, v10);
      sub_1B6220AF4();
      swift_allocObject();
      return sub_1B6220AE4();
    }

LABEL_10:
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136446210;
    v21 = WeatherModel.logName.getter();
    v23 = v22;
    sub_1B620B850();
    v24 = sub_1B602EEB0(v21, v23, &v29);

    *(v19 + 4) = v24;
    a5 = v28;
    v25 = sub_1B6220A74();
    _os_signpost_emit_with_name_impl(&dword_1B6020000, v16, v27, v25, a2, "%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1B8C91C90](v20, -1, -1);
    MEMORY[0x1B8C91C90](v19, -1, -1);

    goto LABEL_11;
  }

  if (a2 >> 32)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    if (a2 >> 16 <= 0x10)
    {
      a2 = &v30;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_1B61F1030(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v51 - v13;
  v15 = sub_1B621D8F4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AirQuality();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B6067284();
  if (v22)
  {
    v23 = v22;
    sub_1B6036A80(a1, v21);
    v24 = type metadata accessor for Metadata();
    (*(v16 + 16))(v18, a1 + *(v24 + 20), v15);
    sub_1B6220784();
    sub_1B61CD314(*&a2, a3, v21, v18, &v65, a4, a5);
    v64 = v23;
    v61 = a2;
    v62 = a3;
    v59 = v16;
    v60 = v14;
    v63 = v6;
    v26 = v65;
    v25 = v66;
    v27 = v67;
    v28 = v68;
    v29 = v69;
    v30 = v70;
    v31 = v71;
    sub_1B6220D34();
    v65 = v26;
    v66 = v25;
    v67 = v27;
    v68 = v28;
    v69 = v29;
    v70 = v30;
    v71 = v31;
    sub_1B6220D04();
    v55 = v30;
    v56 = v31;
    v57 = v28;
    v58 = v26;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v36 = sub_1B6220B34();
    __swift_project_value_buffer(v36, qword_1EDAC2AB0);
    sub_1B6220784();

    v53 = sub_1B6220B14();
    v37 = sub_1B62217F4();

    v54 = v29;

    v38 = v53;

    v52 = v37;
    v39 = os_log_type_enabled(v38, v37);
    v40 = v61;
    if (v39)
    {
      v51[1] = v27;
      v51[2] = v25;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v65 = v42;
      *v41 = 141558531;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      *(v41 + 14) = sub_1B602EEB0(v40, v62, &v65);
      *(v41 + 22) = 2080;
      v43 = v60;
      sub_1B6220D84();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v15);
      v45 = v63;
      if (EnumTagSinglePayload == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v47 = v46;
      v49 = v48;
      (*(v59 + 8))(v43, v15);
      v50 = sub_1B602EEB0(v47, v49, &v65);

      *(v41 + 24) = v50;
      _os_log_impl(&dword_1B6020000, v38, v52, "Just cached airQuality; identifier=%{private,mask.hash}s. It expires %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v42, -1, -1);
      MEMORY[0x1B8C91C90](v41, -1, -1);
    }

    else
    {

      v45 = v63;
    }

    if (*(v45 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61A89D0();
      }

      if (sub_1B6067284())
      {
        sub_1B61AB058();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v32 = sub_1B6220B34();
    __swift_project_value_buffer(v32, qword_1EDAC2AB0);
    v64 = sub_1B6220B14();
    v33 = sub_1B62217E4();
    if (os_log_type_enabled(v64, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1B6020000, v64, v33, "Cannot cache airQuality data due to missing store", v34, 2u);
      MEMORY[0x1B8C91C90](v34, -1, -1);
    }

    v35 = v64;
  }
}

void sub_1B61F1888(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v43 - v6;
  v8 = sub_1B621D8F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1B6067284();
  if (v13)
  {
    v57 = v13;
    type metadata accessor for WeatherClock();
    sub_1B6220784();
    static WeatherClock.date.getter();
    sub_1B621D844();
    v14 = *(v9 + 8);
    v14(v11, v8);
    sub_1B61D70BC();
    v53 = v8;
    v54 = a2;
    v50 = v14;
    v51 = v7;
    v52 = a1;
    v55 = v2;
    v16 = v58;
    v15 = v59;
    v17 = v60;
    v18 = v61;
    v20 = v62;
    v19 = v63;
    v21 = v64;
    sub_1B6220D34();
    v56 = v16;
    v58 = v16;
    v59 = v15;
    v60 = v17;
    v61 = v18;
    v62 = v20;
    v63 = v19;
    v64 = v21;
    sub_1B6220D04();
    v47 = v21;
    v48 = v19;
    v49 = v17;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v26 = sub_1B6220B34();
    __swift_project_value_buffer(v26, qword_1EDAC2AB0);
    v27 = v54;
    sub_1B6220784();

    v28 = sub_1B6220B14();
    v29 = sub_1B62217F4();

    v46 = v20;

    v45 = v15;

    v44 = v29;
    v30 = os_log_type_enabled(v28, v29);
    v31 = v53;
    if (v30)
    {
      v32 = v28;
      v43[1] = v18;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58 = v34;
      *v33 = 141558531;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1B602EEB0(v52, v27, &v58);
      *(v33 + 22) = 2080;
      v35 = v51;
      sub_1B6220D84();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v31);
      v37 = v55;
      if (EnumTagSinglePayload == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v39 = v38;
      v41 = v40;
      v50(v35, v31);
      v42 = sub_1B602EEB0(v39, v41, &v58);

      *(v33 + 24) = v42;
      _os_log_impl(&dword_1B6020000, v32, v44, "Just marked airQuality unavailable; identifier=%{private,mask.hash}s. It expires %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v34, -1, -1);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    else
    {

      v37 = v55;
    }

    if (*(v37 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61A89D0();
      }

      if (sub_1B6067284())
      {
        sub_1B61AB058();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v22 = sub_1B6220B34();
    __swift_project_value_buffer(v22, qword_1EDAC2AB0);
    v57 = sub_1B6220B14();
    v23 = sub_1B62217E4();
    if (os_log_type_enabled(v57, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B6020000, v57, v23, "Cannot log airQuality unavailable data due to missing store", v24, 2u);
      MEMORY[0x1B8C91C90](v24, -1, -1);
    }

    v25 = v57;
  }
}

void sub_1B61F20A0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v49 - v12;
  v14 = sub_1B621D8F4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CurrentWeather();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v5;
  v21 = sub_1B6067284();
  if (v21)
  {
    v22 = v21;
    sub_1B6036A80(a1, v20);
    v23 = type metadata accessor for Metadata();
    (*(v15 + 16))(v17, a1 + *(v23 + 20), v14);
    sub_1B6220784();
    sub_1B61CDDA8(*&a2, a3, v20, v17, &v63, a4, a5);
    v59 = a2;
    v60 = a3;
    v57 = v15;
    v58 = v13;
    v25 = v63;
    v24 = v64;
    v26 = v22;
    v27 = v65;
    v28 = v66;
    v29 = v67;
    v30 = v68;
    v31 = v69;
    v61 = v26;
    sub_1B6220D34();
    v63 = v25;
    v64 = v24;
    v65 = v27;
    v66 = v28;
    v67 = v29;
    v68 = v30;
    v69 = v31;
    sub_1B6220D04();
    v53 = v30;
    v54 = v31;
    v55 = v28;
    v56 = v25;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v36 = sub_1B6220B34();
    __swift_project_value_buffer(v36, qword_1EDAC2AB0);
    sub_1B6220784();

    v51 = sub_1B6220B14();
    v37 = sub_1B62217F4();

    v52 = v29;

    v38 = v51;

    v50 = v37;
    v39 = os_log_type_enabled(v38, v37);
    v40 = v59;
    if (v39)
    {
      v49[1] = v27;
      v49[2] = v24;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v63 = v42;
      *v41 = 141558531;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      *(v41 + 14) = sub_1B602EEB0(v40, v60, &v63);
      *(v41 + 22) = 2080;
      v43 = v58;
      sub_1B6220D84();
      if (__swift_getEnumTagSinglePayload(v43, 1, v14) == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v45 = v44;
      v47 = v46;
      (*(v57 + 8))(v43, v14);
      v48 = sub_1B602EEB0(v45, v47, &v63);

      *(v41 + 24) = v48;
      _os_log_impl(&dword_1B6020000, v38, v50, "Just cached currentWeather; identifier=%{private,mask.hash}s. It expires %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v42, -1, -1);
      MEMORY[0x1B8C91C90](v41, -1, -1);
    }

    else
    {
    }

    if (*(&v62->isa + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61A8C84();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v32 = sub_1B6220B34();
    __swift_project_value_buffer(v32, qword_1EDAC2AB0);
    v62 = sub_1B6220B14();
    v33 = sub_1B62217E4();
    if (os_log_type_enabled(v62, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1B6020000, v62, v33, "Cannot cache currentWeather due to missing store", v34, 2u);
      MEMORY[0x1B8C91C90](v34, -1, -1);
    }

    v35 = v62;
  }
}

void sub_1B61F28DC(uint64_t a1, NSObject *a2, unint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v97 = a4;
  v98 = a2;
  v100 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v87 - v12);
  v14 = type metadata accessor for DailyForecast();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v87 - v18;
  v20 = type metadata accessor for DayForecast();
  v96 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v95 = (&v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_1B621D8F4();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v94 = &v87 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v93 = (&v87 - v29);
  if (sub_1B6067284())
  {
    sub_1B621DC04();
    sub_1B621DBF4();
    if (qword_1EDAB0960 != -1)
    {
LABEL_32:
      swift_once();
    }

    sub_1B621DBE4();

    if (LOBYTE(__src[0]) == 1)
    {
      v87 = v19;
      v92 = v22;
      v88 = v7;
      v30 = 0;
      v16 = 0;
      v31 = *(v100 + SHIDWORD(v14[2].isa));
      v91 = *(v31 + 16);
      v90 = v23 + 16;
      v89 = v31;
      v7 = (v23 + 16);
      while (v91 != v30)
      {
        if (v30 >= *(v31 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v32 = v31 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
        v33 = *(v96 + 72);
        v101 = v30;
        v34 = v32 + v33 * v30;
        v23 = *v7;
        v13 = v93;
        v19 = a3;
        v35 = v92;
        (*v7)(v93, v34, v92);
        v14 = v95;
        sub_1B6036A80(v34, v95);
        v36 = (v97 + *(type metadata accessor for WeatherRequestOptions() + 88));
        v25 = *v36;
        v37 = v36[1];
        v38 = type metadata accessor for Metadata();
        v22 = v94;
        v39 = v35;
        a3 = v19;
        v23(v94, v100 + *(v38 + 20), v39);
        sub_1B6220784();
        sub_1B6220784();
        sub_1B61DE870(v13, *&v98, v19, v14, *&v25, v37, v22, __src, a5, a6);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1B6220D34();
        memcpy(v102, __dst, sizeof(v102));
        sub_1B6220D04();

        sub_1B620E044(__dst, &qword_1EB924C88);
        v30 = (&v101->isa + 1);
        v31 = v89;
      }

      v56 = (v97 + *(type metadata accessor for WeatherRequestOptions() + 88));
      v57 = *v56;
      v58 = v56[1];
      LOBYTE(__src[0]) = 1;
      v59 = v100;
      v60 = v88;
      sub_1B6209E4C(v100, v98, a3, v57, v58, __src);
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v61 = sub_1B6220B34();
      __swift_project_value_buffer(v61, qword_1EDAC2AB0);
      sub_1B6036A80(v59, v87);
      sub_1B6220784();
      v62 = sub_1B6220B14();
      v63 = sub_1B62217F4();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        __src[0] = v65;
        *v64 = 141558531;
        *(v64 + 4) = 1752392040;
        *(v64 + 12) = 2081;
        *(v64 + 14) = sub_1B602EEB0(v98, a3, __src);
        *(v64 + 22) = 2080;
        type metadata accessor for Metadata();
        sub_1B60CDD24();
        v67 = v66;
        v69 = v68;
        sub_1B620B850();
        v70 = sub_1B602EEB0(v67, v69, __src);

        *(v64 + 24) = v70;
        _os_log_impl(&dword_1B6020000, v62, v63, "Just cached daily forecast days; identifier=%{private,mask.hash}s. They expire %s.", v64, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8C91C90](v65, -1, -1);
        MEMORY[0x1B8C91C90](v64, -1, -1);
      }

      else
      {

        sub_1B620B850();
      }
    }

    else
    {
      v101 = v13;
      v44 = sub_1B6208EA4(v97, v98, a3);
      v46 = v45;
      v47 = v100;
      sub_1B6036A80(v100, v16);
      v48 = type metadata accessor for Metadata();
      (*(v23 + 2))(v25, v47 + *(v48 + 20), v22);
      sub_1B6220784();
      sub_1B61CE83C(*&v44, v46, v16, v25, __src, a5, a6);
      v100 = v44;
      v98 = v23;
      v92 = v22;
      v88 = v7;
      v50 = __src[0];
      v49 = __src[1];
      v52 = __src[2];
      v51 = __src[3];
      v53 = __src[4];
      v54 = __src[5];
      v55 = __src[6];
      sub_1B6220D34();
      __src[0] = v50;
      __src[1] = v49;
      __src[2] = v52;
      __src[3] = v51;
      __src[4] = v53;
      __src[5] = v54;
      __src[6] = v55;
      sub_1B6220D04();
      v97 = v49;

      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v71 = sub_1B6220B34();
      __swift_project_value_buffer(v71, qword_1EDAC2AB0);
      sub_1B6220784();

      v72 = v50;

      v73 = sub_1B6220B14();
      v74 = sub_1B62217F4();

      if (os_log_type_enabled(v73, v74))
      {
        LODWORD(v94) = v74;
        v95 = v73;
        v96 = v72;
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        __src[0] = v76;
        *v75 = 141558531;
        *(v75 + 4) = 1752392040;
        *(v75 + 12) = 2081;
        v77 = sub_1B602EEB0(v100, v46, __src);

        *(v75 + 14) = v77;
        *(v75 + 22) = 2080;
        v78 = v101;
        sub_1B6220D84();
        v79 = v92;
        if (__swift_getEnumTagSinglePayload(v78, 1, v92) == 1)
        {
          __break(1u);
          return;
        }

        sub_1B60CDD24();
        v81 = v80;
        v82 = v78;
        v84 = v83;
        (v98[1].isa)(v82, v79);
        v85 = sub_1B602EEB0(v81, v84, __src);

        *(v75 + 24) = v85;
        v86 = v95;
        _os_log_impl(&dword_1B6020000, v95, v94, "Just cached dailyForecast; identifier=%{private,mask.hash}s. It expires %s", v75, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8C91C90](v76, -1, -1);
        MEMORY[0x1B8C91C90](v75, -1, -1);
      }

      else
      {
      }

      v60 = v88;
    }

    if (*(v60 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      sub_1B620AE9C(sub_1B61A8F38, 1, sub_1B61AC754);
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v40 = sub_1B6220B34();
    __swift_project_value_buffer(v40, qword_1EDAC2AB0);
    v101 = sub_1B6220B14();
    v41 = sub_1B62217E4();
    if (os_log_type_enabled(v101, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1B6020000, v101, v41, "Cannot cache dailyForecast due to missing store", v42, 2u);
      MEMORY[0x1B8C91C90](v42, -1, -1);
    }

    v43 = v101;
  }
}

void sub_1B61F376C(uint64_t a1, NSObject *a2, unint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v102 = a4;
  v103 = a2;
  v105 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v90 - v12);
  v93 = type metadata accessor for HourlyForecast();
  MEMORY[0x1EEE9AC00](v93);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v90 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v90 - v20;
  v21 = type metadata accessor for HourForecast();
  v101 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v100 = (&v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_1B621D8F4();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v99 = &v90 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v98 = (&v90 - v30);
  if (sub_1B6067284())
  {
    sub_1B621DC04();
    sub_1B621DBF4();
    if (qword_1EDAB0960 != -1)
    {
LABEL_32:
      swift_once();
    }

    sub_1B621DBE4();

    if (LOBYTE(__src[0]) == 1)
    {
      v90 = v18;
      v97 = v23;
      v91 = v7;
      v31 = 0;
      v15 = 0;
      v32 = *(v105 + *(v93 + 20));
      v96 = *(v32 + 16);
      v95 = v24 + 16;
      v94 = v32;
      v7 = (v24 + 16);
      while (v96 != v31)
      {
        if (v31 >= *(v32 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v33 = v32 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
        v34 = *(v101 + 72);
        v106 = v31;
        v35 = v33 + v34 * v31;
        v24 = *v7;
        v13 = v98;
        v18 = a3;
        v36 = v97;
        (*v7)(v98, v35, v97);
        v37 = v100;
        sub_1B6036A80(v35, v100);
        v38 = (v102 + *(type metadata accessor for WeatherRequestOptions() + 88));
        v39 = *v38;
        v26 = *(v38 + 1);
        v40 = type metadata accessor for Metadata();
        v23 = v99;
        v41 = v36;
        a3 = v18;
        v24(v99, v105 + *(v40 + 20), v41);
        sub_1B6220784();
        sub_1B6220784();
        sub_1B61DF508(v13, *&v103, v18, v37, v39, v26, v23, __src, a5, a6);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1B6220D34();
        memcpy(v107, __dst, sizeof(v107));
        sub_1B6220D04();

        sub_1B620E044(__dst, &qword_1EB924C70);
        v31 = (&v106->isa + 1);
        v32 = v94;
      }

      v59 = (v102 + *(type metadata accessor for WeatherRequestOptions() + 88));
      v60 = *v59;
      v61 = v59[1];
      LOBYTE(__src[0]) = 0;
      v62 = v105;
      v63 = v91;
      sub_1B6209E4C(v105, v103, a3, v60, v61, __src);
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v64 = sub_1B6220B34();
      __swift_project_value_buffer(v64, qword_1EDAC2AB0);
      v65 = v92;
      sub_1B6036A80(v62, v92);
      sub_1B6036A80(v62, v90);
      sub_1B6220784();
      v66 = sub_1B6220B14();
      v67 = sub_1B62217F4();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        __src[0] = v69;
        *v68 = 134218755;
        v70 = *(*(v65 + *(v93 + 20)) + 16);
        sub_1B620B850();
        *(v68 + 4) = v70;
        *(v68 + 12) = 2160;
        *(v68 + 14) = 1752392040;
        *(v68 + 22) = 2081;
        *(v68 + 24) = sub_1B602EEB0(v103, a3, __src);
        *(v68 + 32) = 2080;
        type metadata accessor for Metadata();
        sub_1B60CDD24();
        v72 = v71;
        v74 = v73;
        sub_1B620B850();
        v75 = sub_1B602EEB0(v72, v74, __src);

        *(v68 + 34) = v75;
        _os_log_impl(&dword_1B6020000, v66, v67, "Just cached %ld hourly forecast hours; identifier=%{private,mask.hash}s. They expire %s.", v68, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1B8C91C90](v69, -1, -1);
        MEMORY[0x1B8C91C90](v68, -1, -1);
      }

      else
      {
        sub_1B620B850();

        sub_1B620B850();
      }
    }

    else
    {
      v46 = v24;
      v47 = sub_1B620933C(v102, v103, a3);
      v49 = v48;
      v50 = v105;
      sub_1B6036A80(v105, v15);
      v51 = type metadata accessor for Metadata();
      v46[2](v26, v50 + *(v51 + 20), v23);
      sub_1B6220784();
      sub_1B61CF2D0(*&v47, v49, v15, v26, __src, a5, a6);
      v105 = v47;
      v103 = v46;
      v106 = v13;
      v97 = v23;
      v91 = v7;
      v53 = __src[0];
      v52 = __src[1];
      v54 = __src[2];
      v55 = __src[3];
      v56 = __src[4];
      v57 = __src[5];
      v58 = __src[6];
      sub_1B6220D34();
      __src[0] = v53;
      __src[1] = v52;
      __src[2] = v54;
      __src[3] = v55;
      __src[4] = v56;
      __src[5] = v57;
      __src[6] = v58;
      sub_1B6220D04();
      v101 = v52;
      v102 = v53;

      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v76 = sub_1B6220B34();
      __swift_project_value_buffer(v76, qword_1EDAC2AB0);
      sub_1B6220784();

      v77 = sub_1B6220B14();
      v78 = sub_1B62217F4();

      if (os_log_type_enabled(v77, v78))
      {
        LODWORD(v99) = v78;
        v100 = v77;
        v79 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        __src[0] = v98;
        *v79 = 141558531;
        *(v79 + 4) = 1752392040;
        *(v79 + 12) = 2081;
        v80 = sub_1B602EEB0(v105, v49, __src);

        *(v79 + 14) = v80;
        *(v79 + 22) = 2080;
        v81 = v106;
        sub_1B6220D84();
        v82 = v97;
        if (__swift_getEnumTagSinglePayload(v81, 1, v97) == 1)
        {
          __break(1u);
          return;
        }

        sub_1B60CDD24();
        v84 = v83;
        v86 = v85;
        (v103[1].isa)(v81, v82);
        v87 = sub_1B602EEB0(v84, v86, __src);

        *(v79 + 24) = v87;
        v88 = v100;
        _os_log_impl(&dword_1B6020000, v100, v99, "Just cached hourlyForecast; identifier=%{private,mask.hash}s. It expires %s", v79, 0x20u);
        v89 = v98;
        swift_arrayDestroy();
        MEMORY[0x1B8C91C90](v89, -1, -1);
        MEMORY[0x1B8C91C90](v79, -1, -1);
      }

      else
      {
      }

      v63 = v91;
    }

    if (*(v63 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      sub_1B620AE9C(sub_1B61A92EC, 0, sub_1B61AC754);
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v42 = sub_1B6220B34();
    __swift_project_value_buffer(v42, qword_1EDAC2AB0);
    v106 = sub_1B6220B14();
    v43 = sub_1B62217E4();
    if (os_log_type_enabled(v106, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1B6020000, v106, v43, "Cannot cache hourlyForecast due to missing store", v44, 2u);
      MEMORY[0x1B8C91C90](v44, -1, -1);
    }

    v45 = v106;
  }
}

void sub_1B61F4698(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v51 - v13;
  v15 = sub_1B621D8F4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  HourForecast = type metadata accessor for NextHourForecast();
  MEMORY[0x1EEE9AC00](HourForecast - 8);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B6067284();
  if (v22)
  {
    v23 = v22;
    sub_1B6036A80(a1, v21);
    v24 = type metadata accessor for Metadata();
    (*(v16 + 16))(v18, a1 + *(v24 + 20), v15);
    sub_1B6220784();
    sub_1B61CFD64(*&a2, a3, v21, v18, &v65, a4, a5);
    v64 = v23;
    v61 = a2;
    v62 = a3;
    v59 = v16;
    v60 = v14;
    v63 = v6;
    v26 = v65;
    v25 = v66;
    v27 = v67;
    v28 = v68;
    v29 = v69;
    v30 = v70;
    v31 = v71;
    sub_1B6220D34();
    v65 = v26;
    v66 = v25;
    v67 = v27;
    v68 = v28;
    v69 = v29;
    v70 = v30;
    v71 = v31;
    sub_1B6220D04();
    v55 = v30;
    v56 = v31;
    v57 = v28;
    v58 = v26;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v36 = sub_1B6220B34();
    __swift_project_value_buffer(v36, qword_1EDAC2AB0);
    sub_1B6220784();

    v53 = sub_1B6220B14();
    v37 = sub_1B62217F4();

    v54 = v29;

    v38 = v53;

    v52 = v37;
    v39 = os_log_type_enabled(v38, v37);
    v40 = v61;
    if (v39)
    {
      v51[1] = v27;
      v51[2] = v25;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v65 = v42;
      *v41 = 141558531;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      *(v41 + 14) = sub_1B602EEB0(v40, v62, &v65);
      *(v41 + 22) = 2080;
      v43 = v60;
      sub_1B6220D84();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v15);
      v45 = v63;
      if (EnumTagSinglePayload == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v47 = v46;
      v49 = v48;
      (*(v59 + 8))(v43, v15);
      v50 = sub_1B602EEB0(v47, v49, &v65);

      *(v41 + 24) = v50;
      _os_log_impl(&dword_1B6020000, v38, v52, "Just cached nextHourForecast; identifier=%{private,mask.hash}s. It expires %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v42, -1, -1);
      MEMORY[0x1B8C91C90](v41, -1, -1);
    }

    else
    {

      v45 = v63;
    }

    if (*(v45 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61A9D6C();
      }

      if (sub_1B6067284())
      {
        sub_1B61AB5C0();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v32 = sub_1B6220B34();
    __swift_project_value_buffer(v32, qword_1EDAC2AB0);
    v64 = sub_1B6220B14();
    v33 = sub_1B62217E4();
    if (os_log_type_enabled(v64, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1B6020000, v64, v33, "Cannot cache nextHourForecast due to missing store", v34, 2u);
      MEMORY[0x1B8C91C90](v34, -1, -1);
    }

    v35 = v64;
  }
}

void sub_1B61F4EF0(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v43 - v6;
  v8 = sub_1B621D8F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1B6067284();
  if (v13)
  {
    v57 = v13;
    type metadata accessor for WeatherClock();
    sub_1B6220784();
    static WeatherClock.date.getter();
    sub_1B621D844();
    v14 = *(v9 + 8);
    v14(v11, v8);
    sub_1B61D70BC();
    v53 = v8;
    v54 = a2;
    v50 = v14;
    v51 = v7;
    v52 = a1;
    v55 = v2;
    v16 = v58;
    v15 = v59;
    v17 = v60;
    v18 = v61;
    v20 = v62;
    v19 = v63;
    v21 = v64;
    sub_1B6220D34();
    v56 = v16;
    v58 = v16;
    v59 = v15;
    v60 = v17;
    v61 = v18;
    v62 = v20;
    v63 = v19;
    v64 = v21;
    sub_1B6220D04();
    v47 = v21;
    v48 = v19;
    v49 = v17;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v26 = sub_1B6220B34();
    __swift_project_value_buffer(v26, qword_1EDAC2AB0);
    v27 = v54;
    sub_1B6220784();

    v28 = sub_1B6220B14();
    v29 = sub_1B62217F4();

    v46 = v20;

    v45 = v15;

    v44 = v29;
    v30 = os_log_type_enabled(v28, v29);
    v31 = v53;
    if (v30)
    {
      v32 = v28;
      v43[1] = v18;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58 = v34;
      *v33 = 141558531;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1B602EEB0(v52, v27, &v58);
      *(v33 + 22) = 2080;
      v35 = v51;
      sub_1B6220D84();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v31);
      v37 = v55;
      if (EnumTagSinglePayload == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v39 = v38;
      v41 = v40;
      v50(v35, v31);
      v42 = sub_1B602EEB0(v39, v41, &v58);

      *(v33 + 24) = v42;
      _os_log_impl(&dword_1B6020000, v32, v44, "Just marked nextHourForecast unavailable; identifier=%{private,mask.hash}s. It expires %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v34, -1, -1);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    else
    {

      v37 = v55;
    }

    if (*(v37 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61A9D6C();
      }

      if (sub_1B6067284())
      {
        sub_1B61AB5C0();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v22 = sub_1B6220B34();
    __swift_project_value_buffer(v22, qword_1EDAC2AB0);
    v57 = sub_1B6220B14();
    v23 = sub_1B62217E4();
    if (os_log_type_enabled(v57, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B6020000, v57, v23, "Cannot log nextHourForecast unavailable data due to missing store", v24, 2u);
      MEMORY[0x1B8C91C90](v24, -1, -1);
    }

    v25 = v57;
  }
}

uint64_t sub_1B61F5708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F18);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for WeatherRequestPeriodicRelativeRange();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WeatherRequestOptions();
  sub_1B603A944(a1 + *(v12 + 44), v8, &qword_1EB924F18);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1B620E044(v8, &qword_1EB924F18);
    sub_1B6220784();
  }

  else
  {
    sub_1B605A29C(v8, v11);
    v19 = a2;
    v20 = a3;
    sub_1B6220784();
    MEMORY[0x1B8C90530](44, 0xE100000000000000);
    sub_1B621D894();
    v17 = sub_1B62216F4();
    v18 = v13;
    MEMORY[0x1B8C90530](58, 0xE100000000000000);
    sub_1B621D894();
    v14 = sub_1B62216F4();
    MEMORY[0x1B8C90530](v14);

    MEMORY[0x1B8C90530](58, 0xE100000000000000);
    v15 = sub_1B61B00C4(*&v11[*(v9 + 24)]);
    MEMORY[0x1B8C90530](v15);

    MEMORY[0x1B8C90530](v17, v18);

    a2 = v19;
    sub_1B620B850();
  }

  return a2;
}

void sub_1B61F5934(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v49 - v12;
  v14 = sub_1B621D8F4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PeriodicForecasts();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v5;
  v21 = sub_1B6067284();
  if (v21)
  {
    v22 = v21;
    sub_1B6036A80(a1, v20);
    v23 = type metadata accessor for Metadata();
    (*(v15 + 16))(v17, a1 + *(v23 + 20), v14);
    sub_1B6220784();
    sub_1B61D07F8(*&a2, a3, v20, v17, &v63, a4, a5);
    v59 = a2;
    v60 = a3;
    v57 = v15;
    v58 = v13;
    v25 = v63;
    v24 = v64;
    v26 = v22;
    v27 = v65;
    v28 = v66;
    v29 = v67;
    v30 = v68;
    v31 = v69;
    v61 = v26;
    sub_1B6220D34();
    v63 = v25;
    v64 = v24;
    v65 = v27;
    v66 = v28;
    v67 = v29;
    v68 = v30;
    v69 = v31;
    sub_1B6220D04();
    v53 = v30;
    v54 = v31;
    v55 = v28;
    v56 = v25;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v36 = sub_1B6220B34();
    __swift_project_value_buffer(v36, qword_1EDAC2AB0);
    sub_1B6220784();

    v51 = sub_1B6220B14();
    v37 = sub_1B62217F4();

    v52 = v29;

    v38 = v51;

    v50 = v37;
    v39 = os_log_type_enabled(v38, v37);
    v40 = v59;
    if (!v39)
    {

      goto LABEL_10;
    }

    v49[1] = v27;
    v49[2] = v24;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v63 = v42;
    *v41 = 141558531;
    *(v41 + 4) = 1752392040;
    *(v41 + 12) = 2081;
    *(v41 + 14) = sub_1B602EEB0(v40, v60, &v63);
    *(v41 + 22) = 2080;
    v43 = v58;
    sub_1B6220D84();
    if (__swift_getEnumTagSinglePayload(v43, 1, v14) != 1)
    {
      sub_1B60CDD24();
      v45 = v44;
      v47 = v46;
      (*(v57 + 8))(v43, v14);
      v48 = sub_1B602EEB0(v45, v47, &v63);

      *(v41 + 24) = v48;
      _os_log_impl(&dword_1B6020000, v38, v50, "Just cached forecastPeriod; identifier=%{private,mask.hash}s. It expires %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v42, -1, -1);
      MEMORY[0x1B8C91C90](v41, -1, -1);

LABEL_10:
      sub_1B6209A00();

      return;
    }

    __break(1u);
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v32 = sub_1B6220B34();
    __swift_project_value_buffer(v32, qword_1EDAC2AB0);
    v62 = sub_1B6220B14();
    v33 = sub_1B62217E4();
    if (os_log_type_enabled(v62, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1B6020000, v62, v33, "Cannot cache forecastPeriod due to missing store", v34, 2u);
      MEMORY[0x1B8C91C90](v34, -1, -1);
    }

    v35 = v62;
  }
}

void sub_1B61F6148(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v49 - v12;
  v14 = sub_1B621D8F4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LocationInfo();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v5;
  v21 = sub_1B6067284();
  if (v21)
  {
    v22 = v21;
    sub_1B6036A80(a1, v20);
    v23 = type metadata accessor for Metadata();
    (*(v15 + 16))(v17, a1 + *(v23 + 20), v14);
    sub_1B6220784();
    sub_1B61D128C(*&a2, a3, v20, v17, &v63, a4, a5);
    v59 = a2;
    v60 = a3;
    v57 = v15;
    v58 = v13;
    v25 = v63;
    v24 = v64;
    v26 = v22;
    v27 = v65;
    v28 = v66;
    v29 = v67;
    v30 = v68;
    v31 = v69;
    v61 = v26;
    sub_1B6220D34();
    v63 = v25;
    v64 = v24;
    v65 = v27;
    v66 = v28;
    v67 = v29;
    v68 = v30;
    v69 = v31;
    sub_1B6220D04();
    v53 = v30;
    v54 = v31;
    v55 = v28;
    v56 = v25;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v36 = sub_1B6220B34();
    __swift_project_value_buffer(v36, qword_1EDAC2AB0);
    sub_1B6220784();

    v51 = sub_1B6220B14();
    v37 = sub_1B62217F4();

    v52 = v29;

    v38 = v51;

    v50 = v37;
    v39 = os_log_type_enabled(v38, v37);
    v40 = v59;
    if (v39)
    {
      v49[1] = v27;
      v49[2] = v24;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v63 = v42;
      *v41 = 141558531;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      *(v41 + 14) = sub_1B602EEB0(v40, v60, &v63);
      *(v41 + 22) = 2080;
      v43 = v58;
      sub_1B6220D84();
      if (__swift_getEnumTagSinglePayload(v43, 1, v14) == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v45 = v44;
      v47 = v46;
      (*(v57 + 8))(v43, v14);
      v48 = sub_1B602EEB0(v45, v47, &v63);

      *(v41 + 24) = v48;
      _os_log_impl(&dword_1B6020000, v38, v50, "Just cached locationInfo; identifier=%{private,mask.hash}s. It expires %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v42, -1, -1);
      MEMORY[0x1B8C91C90](v41, -1, -1);
    }

    else
    {
    }

    if (*(&v62->isa + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61A9804();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v32 = sub_1B6220B34();
    __swift_project_value_buffer(v32, qword_1EDAC2AB0);
    v62 = sub_1B6220B14();
    v33 = sub_1B62217E4();
    if (os_log_type_enabled(v62, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1B6020000, v62, v33, "Cannot cache locationInfo due to missing store", v34, 2u);
      MEMORY[0x1B8C91C90](v34, -1, -1);
    }

    v35 = v62;
  }
}

uint64_t sub_1B61F6984(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WeatherRequestOptions();
  sub_1B603A944(a1 + *(v15 + 48), v11, &qword_1EB924F20);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1B620E044(v11, &qword_1EB924F20);
    sub_1B6220784();
  }

  else
  {
    sub_1B605A29C(v11, v14);
    v16 = sub_1B621D8F4();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
    a2 = sub_1B618AD70(a2, a3, v8);
    sub_1B620E044(v8, &qword_1EB924600);
    sub_1B620B850();
  }

  return a2;
}

void sub_1B61F6BAC(uint64_t a1, uint64_t a2, unint64_t a3, double a4, double a5)
{
  v54 = a2;
  v55 = a3;
  v53 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v48 - v9;
  v11 = sub_1B621D8F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MarineForecast();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v5;
  v18 = sub_1B6067284();
  if (v18)
  {
    v52 = v18;
    v19 = v53;
    sub_1B6036A80(v53, v17);
    v51 = v15;
    v20 = v19 + *(v15 + 20);
    v21 = type metadata accessor for Metadata();
    (*(v12 + 16))(v14, v20 + *(v21 + 20), v11);
    v22 = v55;
    sub_1B6220784();
    sub_1B61D2768(*&v54, v22, v17, v14, &v57, a4, a5);
    v49 = v12;
    v50 = v10;
    v23 = v57;
    v24 = v58;
    v26 = v59;
    v25 = v60;
    v28 = v61;
    v27 = v62;
    v29 = v63;
    sub_1B6220D34();
    v57 = v23;
    v58 = v24;
    v59 = v26;
    v60 = v25;
    v61 = v28;
    v62 = v27;
    v63 = v29;
    sub_1B6220D04();
    v48[4] = v27;
    v48[7] = v28;
    v48[5] = v25;
    v48[6] = v26;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v35 = sub_1B6220B34();
    __swift_project_value_buffer(v35, qword_1EDAC2AB0);
    sub_1B6220784();

    v36 = v24;

    v37 = sub_1B6220B14();
    v38 = sub_1B62217F4();

    v48[3] = v23;

    v39 = v38;
    if (os_log_type_enabled(v37, v38))
    {
      v48[1] = v29;
      v48[2] = v36;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v57 = v41;
      *v40 = 141558531;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2081;
      *(v40 + 14) = sub_1B602EEB0(v54, v55, &v57);
      *(v40 + 22) = 2080;
      v42 = v50;
      sub_1B6220D84();
      if (__swift_getEnumTagSinglePayload(v42, 1, v11) == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v44 = v43;
      v46 = v45;
      (*(v49 + 8))(v42, v11);
      v47 = sub_1B602EEB0(v44, v46, &v57);

      *(v40 + 24) = v47;
      _os_log_impl(&dword_1B6020000, v37, v39, "Just cached marineForecast; identifier=%{private,mask.hash}s. It expires %s", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v41, -1, -1);
      MEMORY[0x1B8C91C90](v40, -1, -1);
    }

    else
    {
    }

    v34 = v51;
    if (*(&v56->isa + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61AAAF0();
      }

      if (sub_1B6067284())
      {
        sub_1B61AC1EC();
      }
    }

    sub_1B620A68C(v54, v55, *(v53 + *(v34 + 24)), *(v53 + *(v34 + 24) + 8));
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v30 = sub_1B6220B34();
    __swift_project_value_buffer(v30, qword_1EDAC2AB0);
    v56 = sub_1B6220B14();
    v31 = sub_1B62217F4();
    if (os_log_type_enabled(v56, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1B6020000, v56, v31, "Cannot cache marineForecast due to missing store", v32, 2u);
      MEMORY[0x1B8C91C90](v32, -1, -1);
    }

    v33 = v56;
  }
}

void sub_1B61F7420(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v43 - v6;
  v8 = sub_1B621D8F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1B6067284();
  if (v13)
  {
    v57 = v13;
    type metadata accessor for WeatherClock();
    sub_1B6220784();
    static WeatherClock.date.getter();
    sub_1B621D844();
    v14 = *(v9 + 8);
    v14(v11, v8);
    sub_1B61D70BC();
    v53 = v8;
    v54 = a2;
    v50 = v14;
    v51 = v7;
    v52 = a1;
    v55 = v2;
    v16 = v58;
    v15 = v59;
    v17 = v60;
    v18 = v61;
    v20 = v62;
    v19 = v63;
    v21 = v64;
    sub_1B6220D34();
    v56 = v16;
    v58 = v16;
    v59 = v15;
    v60 = v17;
    v61 = v18;
    v62 = v20;
    v63 = v19;
    v64 = v21;
    sub_1B6220D04();
    v47 = v21;
    v48 = v19;
    v49 = v17;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v26 = sub_1B6220B34();
    __swift_project_value_buffer(v26, qword_1EDAC2AB0);
    v27 = v54;
    sub_1B6220784();

    v28 = sub_1B6220B14();
    v29 = sub_1B62217F4();

    v46 = v20;

    v45 = v15;

    v44 = v29;
    v30 = os_log_type_enabled(v28, v29);
    v31 = v53;
    if (v30)
    {
      v32 = v28;
      v43[1] = v18;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58 = v34;
      *v33 = 141558531;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1B602EEB0(v52, v27, &v58);
      *(v33 + 22) = 2080;
      v35 = v51;
      sub_1B6220D84();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v31);
      v37 = v55;
      if (EnumTagSinglePayload == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v39 = v38;
      v41 = v40;
      v50(v35, v31);
      v42 = sub_1B602EEB0(v39, v41, &v58);

      *(v33 + 24) = v42;
      _os_log_impl(&dword_1B6020000, v32, v44, "Just marked marineForecastUnavailable; identifier=%{private,mask.hash}s. It expires %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v34, -1, -1);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    else
    {

      v37 = v55;
    }

    if (*(v37 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61AAAF0();
      }

      if (sub_1B6067284())
      {
        sub_1B61AC1EC();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v22 = sub_1B6220B34();
    __swift_project_value_buffer(v22, qword_1EDAC2AB0);
    v57 = sub_1B6220B14();
    v23 = sub_1B62217F4();
    if (os_log_type_enabled(v57, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B6020000, v57, v23, "Cannot log marineForecastUnavailable data due to missing store", v24, 2u);
      MEMORY[0x1B8C91C90](v24, -1, -1);
    }

    v25 = v57;
  }
}

void sub_1B61F7C38(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v51 - v13;
  v15 = sub_1B621D8F4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for News();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B6067284();
  if (v22)
  {
    v23 = v22;
    sub_1B6036A80(a1, v21);
    v24 = type metadata accessor for Metadata();
    (*(v16 + 16))(v18, a1 + *(v24 + 20), v15);
    sub_1B6220784();
    sub_1B61D31FC(*&a2, a3, v21, v18, &v65, a4, a5);
    v64 = v23;
    v61 = a2;
    v62 = a3;
    v59 = v16;
    v60 = v14;
    v63 = v6;
    v26 = v65;
    v25 = v66;
    v27 = v67;
    v28 = v68;
    v29 = v69;
    v30 = v70;
    v31 = v71;
    sub_1B6220D34();
    v65 = v26;
    v66 = v25;
    v67 = v27;
    v68 = v28;
    v69 = v29;
    v70 = v30;
    v71 = v31;
    sub_1B6220D04();
    v55 = v30;
    v56 = v31;
    v57 = v28;
    v58 = v26;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v36 = sub_1B6220B34();
    __swift_project_value_buffer(v36, qword_1EDAC2AB0);
    sub_1B6220784();

    v53 = sub_1B6220B14();
    v37 = sub_1B62217F4();

    v54 = v29;

    v38 = v53;

    v52 = v37;
    v39 = os_log_type_enabled(v38, v37);
    v40 = v61;
    if (v39)
    {
      v51[1] = v27;
      v51[2] = v25;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v65 = v42;
      *v41 = 141558531;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      *(v41 + 14) = sub_1B602EEB0(v40, v62, &v65);
      *(v41 + 22) = 2080;
      v43 = v60;
      sub_1B6220D84();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v15);
      v45 = v63;
      if (EnumTagSinglePayload == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v47 = v46;
      v49 = v48;
      (*(v59 + 8))(v43, v15);
      v50 = sub_1B602EEB0(v47, v49, &v65);

      *(v41 + 24) = v50;
      _os_log_impl(&dword_1B6020000, v38, v52, "Just cached news; identifier=%{private,mask.hash}s. It expires %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v42, -1, -1);
      MEMORY[0x1B8C91C90](v41, -1, -1);
    }

    else
    {

      v45 = v63;
    }

    if (*(v45 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61A9AB8();
      }

      if (sub_1B6067284())
      {
        sub_1B61AB30C();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v32 = sub_1B6220B34();
    __swift_project_value_buffer(v32, qword_1EDAC2AB0);
    v64 = sub_1B6220B14();
    v33 = sub_1B62217E4();
    if (os_log_type_enabled(v64, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1B6020000, v64, v33, "Cannot cache news due to missing store", v34, 2u);
      MEMORY[0x1B8C91C90](v34, -1, -1);
    }

    v35 = v64;
  }
}

void sub_1B61F8490(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v43 - v6;
  v8 = sub_1B621D8F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1B6067284();
  if (v13)
  {
    v57 = v13;
    type metadata accessor for WeatherClock();
    sub_1B6220784();
    static WeatherClock.date.getter();
    sub_1B621D844();
    v14 = *(v9 + 8);
    v14(v11, v8);
    sub_1B61D70BC();
    v53 = v8;
    v54 = a2;
    v50 = v14;
    v51 = v7;
    v52 = a1;
    v55 = v2;
    v16 = v58;
    v15 = v59;
    v17 = v60;
    v18 = v61;
    v20 = v62;
    v19 = v63;
    v21 = v64;
    sub_1B6220D34();
    v56 = v16;
    v58 = v16;
    v59 = v15;
    v60 = v17;
    v61 = v18;
    v62 = v20;
    v63 = v19;
    v64 = v21;
    sub_1B6220D04();
    v47 = v21;
    v48 = v19;
    v49 = v17;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v26 = sub_1B6220B34();
    __swift_project_value_buffer(v26, qword_1EDAC2AB0);
    v27 = v54;
    sub_1B6220784();

    v28 = sub_1B6220B14();
    v29 = sub_1B62217F4();

    v46 = v20;

    v45 = v15;

    v44 = v29;
    v30 = os_log_type_enabled(v28, v29);
    v31 = v53;
    if (v30)
    {
      v32 = v28;
      v43[1] = v18;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58 = v34;
      *v33 = 141558531;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1B602EEB0(v52, v27, &v58);
      *(v33 + 22) = 2080;
      v35 = v51;
      sub_1B6220D84();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v31);
      v37 = v55;
      if (EnumTagSinglePayload == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v39 = v38;
      v41 = v40;
      v50(v35, v31);
      v42 = sub_1B602EEB0(v39, v41, &v58);

      *(v33 + 24) = v42;
      _os_log_impl(&dword_1B6020000, v32, v44, "Just marked news unavailable; identifier=%{private,mask.hash}s. It expires %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v34, -1, -1);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    else
    {

      v37 = v55;
    }

    if (*(v37 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61A9AB8();
      }

      if (sub_1B6067284())
      {
        sub_1B61AB30C();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v22 = sub_1B6220B34();
    __swift_project_value_buffer(v22, qword_1EDAC2AB0);
    v57 = sub_1B6220B14();
    v23 = sub_1B62217E4();
    if (os_log_type_enabled(v57, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B6020000, v57, v23, "Cannot log news unavailable data due to missing store", v24, 2u);
      MEMORY[0x1B8C91C90](v24, -1, -1);
    }

    v25 = v57;
  }
}

void sub_1B61F8CA8(uint64_t a1, uint64_t a2, unint64_t a3, double a4, double a5)
{
  v54 = a2;
  v55 = a3;
  v53 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v48 - v9;
  v11 = sub_1B621D8F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TideEvents();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v5;
  v18 = sub_1B6067284();
  if (v18)
  {
    v52 = v18;
    v19 = v53;
    sub_1B6036A80(v53, v17);
    v51 = v15;
    v20 = v19 + *(v15 + 24);
    v21 = type metadata accessor for Metadata();
    (*(v12 + 16))(v14, v20 + *(v21 + 20), v11);
    v22 = v55;
    sub_1B6220784();
    sub_1B61D3C90(*&v54, v22, v17, v14, &v57, a4, a5);
    v49 = v12;
    v50 = v10;
    v23 = v57;
    v24 = v58;
    v26 = v59;
    v25 = v60;
    v28 = v61;
    v27 = v62;
    v29 = v63;
    sub_1B6220D34();
    v57 = v23;
    v58 = v24;
    v59 = v26;
    v60 = v25;
    v61 = v28;
    v62 = v27;
    v63 = v29;
    sub_1B6220D04();
    v48[4] = v27;
    v48[7] = v28;
    v48[5] = v25;
    v48[6] = v26;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v35 = sub_1B6220B34();
    __swift_project_value_buffer(v35, qword_1EDAC2AB0);
    sub_1B6220784();

    v36 = v24;

    v37 = sub_1B6220B14();
    v38 = sub_1B62217F4();

    v48[3] = v23;

    v39 = v38;
    if (os_log_type_enabled(v37, v38))
    {
      v48[1] = v29;
      v48[2] = v36;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v57 = v41;
      *v40 = 141558531;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2081;
      *(v40 + 14) = sub_1B602EEB0(v54, v55, &v57);
      *(v40 + 22) = 2080;
      v42 = v50;
      sub_1B6220D84();
      if (__swift_getEnumTagSinglePayload(v42, 1, v11) == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v44 = v43;
      v46 = v45;
      (*(v49 + 8))(v42, v11);
      v47 = sub_1B602EEB0(v44, v46, &v57);

      *(v40 + 24) = v47;
      _os_log_impl(&dword_1B6020000, v37, v39, "Just cached tideEvents; identifier=%{private,mask.hash}s. It expires %s", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v41, -1, -1);
      MEMORY[0x1B8C91C90](v40, -1, -1);
    }

    else
    {
    }

    v34 = v51;
    if (*(&v56->isa + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61AADA4();
      }

      if (sub_1B6067284())
      {
        sub_1B61AC4A0();
      }
    }

    sub_1B620A68C(v54, v55, *(v53 + *(v34 + 28)), *(v53 + *(v34 + 28) + 8));
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v30 = sub_1B6220B34();
    __swift_project_value_buffer(v30, qword_1EDAC2AB0);
    v56 = sub_1B6220B14();
    v31 = sub_1B62217F4();
    if (os_log_type_enabled(v56, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1B6020000, v56, v31, "Cannot cache tideEvents due to missing store", v32, 2u);
      MEMORY[0x1B8C91C90](v32, -1, -1);
    }

    v33 = v56;
  }
}

void sub_1B61F951C(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v43 - v6;
  v8 = sub_1B621D8F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1B6067284();
  if (v13)
  {
    v57 = v13;
    type metadata accessor for WeatherClock();
    sub_1B6220784();
    static WeatherClock.date.getter();
    sub_1B621D844();
    v14 = *(v9 + 8);
    v14(v11, v8);
    sub_1B61D70BC();
    v53 = v8;
    v54 = a2;
    v50 = v14;
    v51 = v7;
    v52 = a1;
    v55 = v2;
    v16 = v58;
    v15 = v59;
    v17 = v60;
    v18 = v61;
    v20 = v62;
    v19 = v63;
    v21 = v64;
    sub_1B6220D34();
    v56 = v16;
    v58 = v16;
    v59 = v15;
    v60 = v17;
    v61 = v18;
    v62 = v20;
    v63 = v19;
    v64 = v21;
    sub_1B6220D04();
    v47 = v21;
    v48 = v19;
    v49 = v17;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v26 = sub_1B6220B34();
    __swift_project_value_buffer(v26, qword_1EDAC2AB0);
    v27 = v54;
    sub_1B6220784();

    v28 = sub_1B6220B14();
    v29 = sub_1B62217F4();

    v46 = v20;

    v45 = v15;

    v44 = v29;
    v30 = os_log_type_enabled(v28, v29);
    v31 = v53;
    if (v30)
    {
      v32 = v28;
      v43[1] = v18;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58 = v34;
      *v33 = 141558531;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1B602EEB0(v52, v27, &v58);
      *(v33 + 22) = 2080;
      v35 = v51;
      sub_1B6220D84();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v31);
      v37 = v55;
      if (EnumTagSinglePayload == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v39 = v38;
      v41 = v40;
      v50(v35, v31);
      v42 = sub_1B602EEB0(v39, v41, &v58);

      *(v33 + 24) = v42;
      _os_log_impl(&dword_1B6020000, v32, v44, "Just marked tides unavailable; identifier=%{private,mask.hash}s. It expires %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v34, -1, -1);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    else
    {

      v37 = v55;
    }

    if (*(v37 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61AADA4();
      }

      if (sub_1B6067284())
      {
        sub_1B61AC4A0();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v22 = sub_1B6220B34();
    __swift_project_value_buffer(v22, qword_1EDAC2AB0);
    v57 = sub_1B6220B14();
    v23 = sub_1B62217F4();
    if (os_log_type_enabled(v57, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B6020000, v57, v23, "Cannot log tides unavailable data due to missing store", v24, 2u);
      MEMORY[0x1B8C91C90](v24, -1, -1);
    }

    v25 = v57;
  }
}

void sub_1B61F9D34(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v51 - v13;
  v15 = sub_1B621D8F4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WeatherAlerts();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B6067284();
  if (v22)
  {
    v23 = v22;
    sub_1B6036A80(a1, v21);
    v24 = type metadata accessor for Metadata();
    (*(v16 + 16))(v18, a1 + *(v24 + 20), v15);
    sub_1B6220784();
    sub_1B61D4724(*&a2, a3, v21, v18, &v65, a4, a5);
    v64 = v23;
    v61 = a2;
    v62 = a3;
    v59 = v16;
    v60 = v14;
    v63 = v6;
    v26 = v65;
    v25 = v66;
    v27 = v67;
    v28 = v68;
    v29 = v69;
    v30 = v70;
    v31 = v71;
    sub_1B6220D34();
    v65 = v26;
    v66 = v25;
    v67 = v27;
    v68 = v28;
    v69 = v29;
    v70 = v30;
    v71 = v31;
    sub_1B6220D04();
    v55 = v30;
    v56 = v31;
    v57 = v28;
    v58 = v26;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v36 = sub_1B6220B34();
    __swift_project_value_buffer(v36, qword_1EDAC2AB0);
    sub_1B6220784();

    v53 = sub_1B6220B14();
    v37 = sub_1B62217F4();

    v54 = v29;

    v38 = v53;

    v52 = v37;
    v39 = os_log_type_enabled(v38, v37);
    v40 = v61;
    if (v39)
    {
      v51[1] = v27;
      v51[2] = v25;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v65 = v42;
      *v41 = 141558531;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      *(v41 + 14) = sub_1B602EEB0(v40, v62, &v65);
      *(v41 + 22) = 2080;
      v43 = v60;
      sub_1B6220D84();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v15);
      v45 = v63;
      if (EnumTagSinglePayload == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v47 = v46;
      v49 = v48;
      (*(v59 + 8))(v43, v15);
      v50 = sub_1B602EEB0(v47, v49, &v65);

      *(v41 + 24) = v50;
      _os_log_impl(&dword_1B6020000, v38, v52, "Just cached weatherAlerts; identifier=%{private,mask.hash}s. It expires %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v42, -1, -1);
      MEMORY[0x1B8C91C90](v41, -1, -1);
    }

    else
    {

      v45 = v63;
    }

    if (*(v45 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61AA020();
      }

      if (sub_1B6067284())
      {
        sub_1B61AB874();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v32 = sub_1B6220B34();
    __swift_project_value_buffer(v32, qword_1EDAC2AB0);
    v64 = sub_1B6220B14();
    v33 = sub_1B62217E4();
    if (os_log_type_enabled(v64, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1B6020000, v64, v33, "Cannot cache weatherAlerts due to missing store", v34, 2u);
      MEMORY[0x1B8C91C90](v34, -1, -1);
    }

    v35 = v64;
  }
}

void sub_1B61FA58C(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v43 - v6;
  v8 = sub_1B621D8F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1B6067284();
  if (v13)
  {
    v57 = v13;
    type metadata accessor for WeatherClock();
    sub_1B6220784();
    static WeatherClock.date.getter();
    sub_1B621D844();
    v14 = *(v9 + 8);
    v14(v11, v8);
    sub_1B61D70BC();
    v53 = v8;
    v54 = a2;
    v50 = v14;
    v51 = v7;
    v52 = a1;
    v55 = v2;
    v16 = v58;
    v15 = v59;
    v17 = v60;
    v18 = v61;
    v20 = v62;
    v19 = v63;
    v21 = v64;
    sub_1B6220D34();
    v56 = v16;
    v58 = v16;
    v59 = v15;
    v60 = v17;
    v61 = v18;
    v62 = v20;
    v63 = v19;
    v64 = v21;
    sub_1B6220D04();
    v47 = v21;
    v48 = v19;
    v49 = v17;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v26 = sub_1B6220B34();
    __swift_project_value_buffer(v26, qword_1EDAC2AB0);
    v27 = v54;
    sub_1B6220784();

    v28 = sub_1B6220B14();
    v29 = sub_1B62217F4();

    v46 = v20;

    v45 = v15;

    v44 = v29;
    v30 = os_log_type_enabled(v28, v29);
    v31 = v53;
    if (v30)
    {
      v32 = v28;
      v43[1] = v18;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58 = v34;
      *v33 = 141558531;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1B602EEB0(v52, v27, &v58);
      *(v33 + 22) = 2080;
      v35 = v51;
      sub_1B6220D84();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v31);
      v37 = v55;
      if (EnumTagSinglePayload == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v39 = v38;
      v41 = v40;
      v50(v35, v31);
      v42 = sub_1B602EEB0(v39, v41, &v58);

      *(v33 + 24) = v42;
      _os_log_impl(&dword_1B6020000, v32, v44, "Just marked weatherAlerts unavailable; identifier=%{private,mask.hash}s. It expires %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v34, -1, -1);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    else
    {

      v37 = v55;
    }

    if (*(v37 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61AA020();
      }

      if (sub_1B6067284())
      {
        sub_1B61AB874();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v22 = sub_1B6220B34();
    __swift_project_value_buffer(v22, qword_1EDAC2AB0);
    v57 = sub_1B6220B14();
    v23 = sub_1B62217E4();
    if (os_log_type_enabled(v57, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B6020000, v57, v23, "Cannot log weatherAlerts unavailable data due to missing store", v24, 2u);
      MEMORY[0x1B8C91C90](v24, -1, -1);
    }

    v25 = v57;
  }
}

void sub_1B61FADA4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v51 - v13;
  v15 = sub_1B621D8F4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WeatherChange();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B6067284();
  if (v22)
  {
    v23 = v22;
    sub_1B6036A80(a1, v21);
    v24 = type metadata accessor for Metadata();
    (*(v16 + 16))(v18, a1 + *(v24 + 20), v15);
    sub_1B6220784();
    sub_1B61D51B8(*&a2, a3, v21, v18, &v65, a4, a5);
    v64 = v23;
    v61 = a2;
    v62 = a3;
    v59 = v16;
    v60 = v14;
    v63 = v6;
    v26 = v65;
    v25 = v66;
    v27 = v67;
    v28 = v68;
    v29 = v69;
    v30 = v70;
    v31 = v71;
    sub_1B6220D34();
    v65 = v26;
    v66 = v25;
    v67 = v27;
    v68 = v28;
    v69 = v29;
    v70 = v30;
    v71 = v31;
    sub_1B6220D04();
    v55 = v30;
    v56 = v31;
    v57 = v28;
    v58 = v26;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v36 = sub_1B6220B34();
    __swift_project_value_buffer(v36, qword_1EDAC2AB0);
    sub_1B6220784();

    v53 = sub_1B6220B14();
    v37 = sub_1B62217F4();

    v54 = v29;

    v38 = v53;

    v52 = v37;
    v39 = os_log_type_enabled(v38, v37);
    v40 = v61;
    if (v39)
    {
      v51[1] = v27;
      v51[2] = v25;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v65 = v42;
      *v41 = 141558531;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      *(v41 + 14) = sub_1B602EEB0(v40, v62, &v65);
      *(v41 + 22) = 2080;
      v43 = v60;
      sub_1B6220D84();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v15);
      v45 = v63;
      if (EnumTagSinglePayload == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v47 = v46;
      v49 = v48;
      (*(v59 + 8))(v43, v15);
      v50 = sub_1B602EEB0(v47, v49, &v65);

      *(v41 + 24) = v50;
      _os_log_impl(&dword_1B6020000, v38, v52, "Just cached weatherChange; identifier=%{private,mask.hash}s. It expires %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v42, -1, -1);
      MEMORY[0x1B8C91C90](v41, -1, -1);
    }

    else
    {

      v45 = v63;
    }

    if (*(v45 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61AA2D4();
      }

      if (sub_1B6067284())
      {
        sub_1B61ABB28();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v32 = sub_1B6220B34();
    __swift_project_value_buffer(v32, qword_1EDAC2AB0);
    v64 = sub_1B6220B14();
    v33 = sub_1B62217E4();
    if (os_log_type_enabled(v64, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1B6020000, v64, v33, "Cannot cache weatherChange due to missing store", v34, 2u);
      MEMORY[0x1B8C91C90](v34, -1, -1);
    }

    v35 = v64;
  }
}

void sub_1B61FB5FC(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v43 - v6;
  v8 = sub_1B621D8F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1B6067284();
  if (v13)
  {
    v57 = v13;
    type metadata accessor for WeatherClock();
    sub_1B6220784();
    static WeatherClock.date.getter();
    sub_1B621D844();
    v14 = *(v9 + 8);
    v14(v11, v8);
    sub_1B61D70BC();
    v53 = v8;
    v54 = a2;
    v50 = v14;
    v51 = v7;
    v52 = a1;
    v55 = v2;
    v16 = v58;
    v15 = v59;
    v17 = v60;
    v18 = v61;
    v20 = v62;
    v19 = v63;
    v21 = v64;
    sub_1B6220D34();
    v56 = v16;
    v58 = v16;
    v59 = v15;
    v60 = v17;
    v61 = v18;
    v62 = v20;
    v63 = v19;
    v64 = v21;
    sub_1B6220D04();
    v47 = v21;
    v48 = v19;
    v49 = v17;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v26 = sub_1B6220B34();
    __swift_project_value_buffer(v26, qword_1EDAC2AB0);
    v27 = v54;
    sub_1B6220784();

    v28 = sub_1B6220B14();
    v29 = sub_1B62217F4();

    v46 = v20;

    v45 = v15;

    v44 = v29;
    v30 = os_log_type_enabled(v28, v29);
    v31 = v53;
    if (v30)
    {
      v32 = v28;
      v43[1] = v18;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58 = v34;
      *v33 = 141558531;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1B602EEB0(v52, v27, &v58);
      *(v33 + 22) = 2080;
      v35 = v51;
      sub_1B6220D84();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v31);
      v37 = v55;
      if (EnumTagSinglePayload == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v39 = v38;
      v41 = v40;
      v50(v35, v31);
      v42 = sub_1B602EEB0(v39, v41, &v58);

      *(v33 + 24) = v42;
      _os_log_impl(&dword_1B6020000, v32, v44, "Just marked weatherChange unavailable; identifier=%{private,mask.hash}s. It expires %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v34, -1, -1);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    else
    {

      v37 = v55;
    }

    if (*(v37 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61AA2D4();
      }

      if (sub_1B6067284())
      {
        sub_1B61ABB28();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v22 = sub_1B6220B34();
    __swift_project_value_buffer(v22, qword_1EDAC2AB0);
    v57 = sub_1B6220B14();
    v23 = sub_1B62217E4();
    if (os_log_type_enabled(v57, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B6020000, v57, v23, "Cannot mark weatherChange unavailable data due to missing store", v24, 2u);
      MEMORY[0x1B8C91C90](v24, -1, -1);
    }

    v25 = v57;
  }
}

void sub_1B61FBE14(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v49 - v12;
  v14 = sub_1B621D8F4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for WeatherComparisons();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v5;
  v21 = sub_1B6067284();
  if (v21)
  {
    v59 = v21;
    sub_1B6036A80(a1, v20);
    v22 = a1 + *(v18 + 20);
    v23 = type metadata accessor for Metadata();
    (*(v15 + 16))(v17, v22 + *(v23 + 20), v14);
    sub_1B6220784();
    sub_1B61D5C4C(*&a2, a3, v20, v17, &v61, a4, a5);
    v57 = v15;
    v58 = a3;
    v55 = a2;
    v56 = v13;
    v25 = v61;
    v24 = v62;
    v27 = v63;
    v26 = v64;
    v29 = v65;
    v28 = v66;
    v30 = v67;
    sub_1B6220D34();
    v61 = v25;
    v62 = v24;
    v63 = v27;
    v64 = v26;
    v65 = v29;
    v66 = v28;
    v67 = v30;
    sub_1B6220D04();
    v35 = v25;
    v52 = v30;
    v53 = v28;
    v54 = v24;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v36 = sub_1B6220B34();
    __swift_project_value_buffer(v36, qword_1EDAC2AB0);
    sub_1B6220784();

    v37 = sub_1B6220B14();
    v38 = sub_1B62217F4();

    v51 = v29;

    v50 = v38;
    v39 = os_log_type_enabled(v37, v38);
    v40 = v56;
    v41 = v57;
    if (v39)
    {
      v49[0] = v26;
      v49[1] = v27;
      v49[2] = v35;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v61 = v43;
      *v42 = 141558531;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      *(v42 + 14) = sub_1B602EEB0(v55, v58, &v61);
      *(v42 + 22) = 2080;
      sub_1B6220D84();
      if (__swift_getEnumTagSinglePayload(v40, 1, v14) == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v45 = v44;
      v47 = v46;
      (*(v41 + 8))(v40, v14);
      v48 = sub_1B602EEB0(v45, v47, &v61);

      *(v42 + 24) = v48;
      _os_log_impl(&dword_1B6020000, v37, v50, "Just cached weatherComparisons; identifier=%{private,mask.hash}s. It expires %s", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v43, -1, -1);
      MEMORY[0x1B8C91C90](v42, -1, -1);
    }

    else
    {
    }

    if (*(&v60->isa + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61AA588();
      }

      if (sub_1B6067284())
      {
        sub_1B61ACF84();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v31 = sub_1B6220B34();
    __swift_project_value_buffer(v31, qword_1EDAC2AB0);
    v60 = sub_1B6220B14();
    v32 = sub_1B62217E4();
    if (os_log_type_enabled(v60, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1B6020000, v60, v32, "Cannot cache weatherComparisons data due to missing store", v33, 2u);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    v34 = v60;
  }
}

void sub_1B61FC644(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v43 - v6;
  v8 = sub_1B621D8F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1B6067284();
  if (v13)
  {
    v57 = v13;
    type metadata accessor for WeatherClock();
    sub_1B6220784();
    static WeatherClock.date.getter();
    sub_1B621D844();
    v14 = *(v9 + 8);
    v14(v11, v8);
    sub_1B61D70BC();
    v53 = v8;
    v54 = a2;
    v50 = v14;
    v51 = v7;
    v52 = a1;
    v55 = v2;
    v16 = v58;
    v15 = v59;
    v17 = v60;
    v18 = v61;
    v20 = v62;
    v19 = v63;
    v21 = v64;
    sub_1B6220D34();
    v56 = v16;
    v58 = v16;
    v59 = v15;
    v60 = v17;
    v61 = v18;
    v62 = v20;
    v63 = v19;
    v64 = v21;
    sub_1B6220D04();
    v47 = v21;
    v48 = v19;
    v49 = v17;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v26 = sub_1B6220B34();
    __swift_project_value_buffer(v26, qword_1EDAC2AB0);
    v27 = v54;
    sub_1B6220784();

    v28 = sub_1B6220B14();
    v29 = sub_1B62217F4();

    v46 = v20;

    v45 = v15;

    v44 = v29;
    v30 = os_log_type_enabled(v28, v29);
    v31 = v53;
    if (v30)
    {
      v32 = v28;
      v43[1] = v18;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58 = v34;
      *v33 = 141558531;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1B602EEB0(v52, v27, &v58);
      *(v33 + 22) = 2080;
      v35 = v51;
      sub_1B6220D84();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v31);
      v37 = v55;
      if (EnumTagSinglePayload == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v39 = v38;
      v41 = v40;
      v50(v35, v31);
      v42 = sub_1B602EEB0(v39, v41, &v58);

      *(v33 + 24) = v42;
      _os_log_impl(&dword_1B6020000, v32, v44, "Just marked weatherComparisons unavailable; identifier=%{private,mask.hash}s. It expires %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v34, -1, -1);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    else
    {

      v37 = v55;
    }

    if (*(v37 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61AA588();
      }

      if (sub_1B6067284())
      {
        sub_1B61ABB28();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v22 = sub_1B6220B34();
    __swift_project_value_buffer(v22, qword_1EDAC2AB0);
    v57 = sub_1B6220B14();
    v23 = sub_1B62217E4();
    if (os_log_type_enabled(v57, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B6020000, v57, v23, "Cannot mark weatherComparisons unavailable data due to missing store", v24, 2u);
      MEMORY[0x1B8C91C90](v24, -1, -1);
    }

    v25 = v57;
  }
}

void sub_1B61FCE5C(double *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v80 = a3;
  v81 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v71 - v10;
  v12 = sub_1B621D8F4();
  isa = v12[-1].isa;
  v83 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v79 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HistoricalFact();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v71 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v78 = v71 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v71 - v24;
  v26 = *a1;
  v27 = sub_1B6067284();
  if (!v27)
  {
    if (qword_1EDAB3D80 != -1)
    {
LABEL_35:
      swift_once();
    }

    v45 = sub_1B6220B34();
    __swift_project_value_buffer(v45, qword_1EDAC2AB0);
    v83 = sub_1B6220B14();
    v46 = sub_1B62217E4();
    if (os_log_type_enabled(v83, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1B6020000, v83, v46, "Cannot cache historicalFacts data due to missing store", v47, 2u);
      MEMORY[0x1B8C91C90](v47, -1, -1);
    }

    goto LABEL_19;
  }

  v74 = v11;
  v28 = *(*&v26 + 16);
  if (!v28)
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v48 = sub_1B6220B34();
    __swift_project_value_buffer(v48, qword_1EDAC2AB0);
    v83 = sub_1B6220B14();
    v49 = sub_1B62217F4();
    if (os_log_type_enabled(v83, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1B6020000, v83, v49, "Cannot cache historicalFacts as the object didn't contain any comparisons", v50, 2u);
      MEMORY[0x1B8C91C90](v50, -1, -1);
    }

LABEL_19:
    v51 = v83;

    return;
  }

  v76 = v27;
  v77 = v25;
  v75 = v5;
  v29 = *&v26 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  sub_1B6036A80(v29, v20);
  for (i = 1; v28 != i; ++i)
  {
    if (i >= *(*&v26 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    sub_1B6036A80(v29 + *(v15 + 72) * i, v17);
    type metadata accessor for Metadata();
    if (sub_1B621D834())
    {
      sub_1B620B850();
      sub_1B605A29C(v17, v20);
    }

    else
    {
      sub_1B620B850();
    }
  }

  v31 = v78;
  sub_1B605A29C(v20, v78);
  v32 = v31;
  v33 = v77;
  sub_1B605A29C(v32, v77);
  v34 = v33 + *(v14 + 40);
  v35 = v34 + *(type metadata accessor for Metadata() + 20);
  v36 = v79;
  (*(isa + 2))(v79, v35, v83);
  v37 = v80;
  sub_1B6220784();
  sub_1B6220784();
  sub_1B61D66E0(*&v81, v37, v26, v36, &v84, a4, a5);
  v39 = v84;
  v38 = v85;
  v40 = v86;
  v41 = v87;
  v42 = v88;
  v43 = v89;
  v44 = v90;
  sub_1B6220D34();
  v84 = v39;
  v85 = v38;
  v86 = v40;
  v87 = v41;
  v88 = v42;
  v89 = v43;
  v90 = v44;
  sub_1B6220D04();
  v78 = v44;
  v79 = v41;

  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v52 = sub_1B6220B34();
  __swift_project_value_buffer(v52, qword_1EDAC2AB0);
  sub_1B6220784();
  v53 = v39;

  v54 = v38;

  v55 = v40;

  v56 = sub_1B6220B14();
  v57 = v55;
  LODWORD(v55) = sub_1B62217F4();

  v73 = v42;

  v72 = v55;
  if (os_log_type_enabled(v56, v55))
  {
    v58 = v56;
    v71[1] = v57;
    v71[2] = v54;
    v71[3] = v53;
    v59 = swift_slowAlloc();
    v60 = v83;
    v61 = v59;
    v62 = swift_slowAlloc();
    v63 = v37;
    v64 = v62;
    v84 = v62;
    *v61 = 141558531;
    *(v61 + 4) = 1752392040;
    *(v61 + 12) = 2081;
    *(v61 + 14) = sub_1B602EEB0(v81, v63, &v84);
    *(v61 + 22) = 2080;
    v65 = v74;
    sub_1B6220D84();
    if (__swift_getEnumTagSinglePayload(v65, 1, v60) == 1)
    {
      __break(1u);
      return;
    }

    sub_1B60CDD24();
    v67 = v66;
    v69 = v68;
    (*(isa + 1))(v65, v60);
    v70 = sub_1B602EEB0(v67, v69, &v84);

    *(v61 + 24) = v70;
    _os_log_impl(&dword_1B6020000, v58, v72, "Just cached historicalFacts; identifier=%{private,mask.hash}s. It expires %s", v61, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v64, -1, -1);
    MEMORY[0x1B8C91C90](v61, -1, -1);
  }

  else
  {
  }

  if (*(v75 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) != 1)
  {
    goto LABEL_33;
  }

  if (sub_1B6067284())
  {
    sub_1B61AA83C();
  }

  if (sub_1B6067284())
  {
    sub_1B61ABF38();

    sub_1B620B850();
  }

  else
  {
LABEL_33:
    sub_1B620B850();
  }
}

void sub_1B61FD968(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v43 - v6;
  v8 = sub_1B621D8F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1B6067284();
  if (v13)
  {
    v57 = v13;
    type metadata accessor for WeatherClock();
    sub_1B6220784();
    static WeatherClock.date.getter();
    sub_1B621D844();
    v14 = *(v9 + 8);
    v14(v11, v8);
    sub_1B61D70BC();
    v53 = v8;
    v54 = a2;
    v50 = v14;
    v51 = v7;
    v52 = a1;
    v55 = v2;
    v16 = v58;
    v15 = v59;
    v17 = v60;
    v18 = v61;
    v20 = v62;
    v19 = v63;
    v21 = v64;
    sub_1B6220D34();
    v56 = v16;
    v58 = v16;
    v59 = v15;
    v60 = v17;
    v61 = v18;
    v62 = v20;
    v63 = v19;
    v64 = v21;
    sub_1B6220D04();
    v47 = v21;
    v48 = v19;
    v49 = v17;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v26 = sub_1B6220B34();
    __swift_project_value_buffer(v26, qword_1EDAC2AB0);
    v27 = v54;
    sub_1B6220784();

    v28 = sub_1B6220B14();
    v29 = sub_1B62217F4();

    v46 = v20;

    v45 = v15;

    v44 = v29;
    v30 = os_log_type_enabled(v28, v29);
    v31 = v53;
    if (v30)
    {
      v32 = v28;
      v43[1] = v18;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58 = v34;
      *v33 = 141558531;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1B602EEB0(v52, v27, &v58);
      *(v33 + 22) = 2080;
      v35 = v51;
      sub_1B6220D84();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v31);
      v37 = v55;
      if (EnumTagSinglePayload == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v39 = v38;
      v41 = v40;
      v50(v35, v31);
      v42 = sub_1B602EEB0(v39, v41, &v58);

      *(v33 + 24) = v42;
      _os_log_impl(&dword_1B6020000, v32, v44, "Just marked historicalFacts unavailable; identifier=%{private,mask.hash}s. It expires %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v34, -1, -1);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    else
    {

      v37 = v55;
    }

    if (*(v37 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61AA83C();
      }

      if (sub_1B6067284())
      {
        sub_1B61ABF38();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v22 = sub_1B6220B34();
    __swift_project_value_buffer(v22, qword_1EDAC2AB0);
    v57 = sub_1B6220B14();
    v23 = sub_1B62217E4();
    if (os_log_type_enabled(v57, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B6020000, v57, v23, "Cannot mark historicalFacts unavailable data due to missing store", v24, 2u);
      MEMORY[0x1B8C91C90](v24, -1, -1);
    }

    v25 = v57;
  }
}

uint64_t sub_1B61FE180(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = sub_1B620D5DC(0, result, v2);
    if (v3)
    {
      result = v2;
    }

    if (v2 >= result)
    {
      v4 = sub_1B60F7D94();

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B61FE218(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v10 = sub_1B6220A84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B6220AA4();
  v15 = sub_1B6221934();
  result = sub_1B62219C4();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = a5;
  HIDWORD(v24) = v15;
  if ((a4 & 1) == 0)
  {
    if (a2)
    {
LABEL_9:
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136315651;
      LOBYTE(v26) = a6;
      v19 = WeatherProduct.rawValue.getter();
      v21 = sub_1B602EEB0(v19, v20, &v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2160;
      *(v17 + 14) = 1752392040;
      *(v17 + 22) = 2081;
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1B6221704();
      MEMORY[0x1B8C90530](8236, 0xE200000000000000);
      sub_1B6221704();
      v22 = sub_1B602EEB0(v26, v27, &v28);

      *(v17 + 24) = v22;
      a5 = v25;
      v23 = sub_1B6220A74();
      _os_signpost_emit_with_name_impl(&dword_1B6020000, v14, BYTE4(v24), v23, a2, "%s-%{private,mask.hash}s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v18, -1, -1);
      MEMORY[0x1B8C91C90](v17, -1, -1);
LABEL_10:

      (*(v11 + 16))(v13, a5, v10);
      sub_1B6220AF4();
      swift_allocObject();
      return sub_1B6220AE4();
    }

    __break(1u);
  }

  if (a2 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    if (a2 >> 16 <= 0x10)
    {
      a2 = &v29;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B61FE4F8(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v36 = sub_1B6220BD4();
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v37 = a1;
  v10 = sub_1B6220B34();
  v11 = __swift_project_value_buffer(v10, qword_1EDAC2AB0);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = v11;
    v15 = v14;
    v16 = swift_slowAlloc();
    v39 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v17 = a2;
    *(v15 + 14) = sub_1B602EEB0(v37, a2, &v39);
    _os_log_impl(&dword_1B6020000, v12, v13, "Attempting to retrieve airQuality unavailable from cache; identifier=%{private,mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1B8C91C90](v16, -1, -1);
    MEMORY[0x1B8C91C90](v15, -1, -1);
  }

  else
  {
    v17 = a2;
  }

  if (!sub_1B6067284())
  {
    v21 = sub_1B6220B14();
    v22 = sub_1B62217F4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B6020000, v21, v22, "Cannot retrieve cached airQuality unavailable due to missing store", v23, 2u);
      MEMORY[0x1B8C91C90](v23, -1, -1);
    }

    return 0;
  }

  sub_1B6220D44();
  v38[3] = MEMORY[0x1E69E6158];
  v38[4] = MEMORY[0x1E69D62D8];
  v18 = v37;
  v38[0] = v37;
  v38[1] = v17;
  v19 = v17;
  sub_1B6220784();
  sub_1B6220CD4();
  __swift_destroy_boxed_opaque_existential_1(v38);
  v20 = sub_1B6220DD4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v20);
  sub_1B6220D14();

  sub_1B620E044(v6, &qword_1EB924B50);
  (*(v7 + 8))(v9, v36);
  if (!v39)
  {
    sub_1B6220784();
    v30 = sub_1B6220B14();
    v31 = sub_1B62217F4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v18;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1B602EEB0(v32, v19, &v39);
      _os_log_impl(&dword_1B6020000, v30, v31, "Could not find airQuality unavailable data in cache; identifier=%{private,mask.hash}s", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1B8C91C90](v34, -1, -1);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    return 0;
  }

  sub_1B60729F4(v39);
  sub_1B6220784();
  v24 = sub_1B6220B14();
  v25 = sub_1B62217F4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v18;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    *(v27 + 14) = sub_1B602EEB0(v26, v19, &v39);
    _os_log_impl(&dword_1B6020000, v24, v25, "Successfully retrieved airQuality unavailable from cache; identifier=%{private,mask.hash}s", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1B8C91C90](v28, -1, -1);
    MEMORY[0x1B8C91C90](v27, -1, -1);
  }

  return 1;
}

uint64_t sub_1B61FEBF4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v193 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E88);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v174 = &v168 - v8;
  v194 = type metadata accessor for DailyForecast();
  MEMORY[0x1EEE9AC00](v194);
  v175 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927BF8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v172 = &v168 - v11;
  v171 = type metadata accessor for Metadata();
  MEMORY[0x1EEE9AC00](v171);
  v173 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v181 = &v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v183 = (&v168 - v16);
  v187 = sub_1B6220BD4();
  v186 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v180 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v182 = (&v168 - v19);
  v179 = sub_1B621DB04();
  v178 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v177 = &v168 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_1B621D8F4();
  v21 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v23 = &v168 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v189 = &v168 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v176 = &v168 - v27;
  v28 = sub_1B621DB64();
  v185 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v168 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v31 = sub_1B6220B34();
  v32 = __swift_project_value_buffer(v31, qword_1EDAC2AB0);
  sub_1B6220784();
  v192 = v32;
  v33 = sub_1B6220B14();
  v34 = sub_1B62217F4();

  v35 = os_log_type_enabled(v33, v34);
  v188 = v23;
  v191 = a2;
  if (v35)
  {
    v36 = a1;
    v37 = a2;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v190 = v30;
    v40 = v21;
    v41 = v28;
    v42 = v39;
    *__dst = v39;
    *v38 = 141558275;
    *(v38 + 4) = 1752392040;
    *(v38 + 12) = 2081;
    v43 = v37;
    a1 = v36;
    *(v38 + 14) = sub_1B602EEB0(v36, v43, __dst);
    _os_log_impl(&dword_1B6020000, v33, v34, "Attempting to retrieve dailyForecast from cache; identifier=%{private,mask.hash}s", v38, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v44 = v42;
    v28 = v41;
    v21 = v40;
    v30 = v190;
    MEMORY[0x1B8C91C90](v44, -1, -1);
    MEMORY[0x1B8C91C90](v38, -1, -1);
  }

  if (!sub_1B6067284())
  {
    v50 = sub_1B6220B14();
    v51 = sub_1B62217F4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1B6020000, v50, v51, "Cannot retrieve cached dailyForecast due to missing store", v52, 2u);
      MEMORY[0x1B8C91C90](v52, -1, -1);
    }

    v53 = v193;
    v54 = v194;

    return __swift_storeEnumTagSinglePayload(v53, 1, 1, v54);
  }

  sub_1B621DC04();
  sub_1B621DBF4();
  if (qword_1EDAB0960 != -1)
  {
    swift_once();
  }

  sub_1B621DBE4();

  v45 = MEMORY[0x1E69E6158];
  v46 = MEMORY[0x1E69D62D8];
  if (__dst[0] != 1)
  {
    v56 = a3;
    v57 = sub_1B6208EA4(a3, a1, v191);
    v59 = v58;
    sub_1B6220D44();
    *&__dst[24] = v45;
    *&__dst[32] = v46;
    *__dst = v57;
    *&__dst[8] = v59;
    sub_1B6220784();
    v60 = v180;
    sub_1B6220CD4();
    __swift_destroy_boxed_opaque_existential_1(__dst);
    v61 = sub_1B6220DD4();
    v62 = v181;
    __swift_storeEnumTagSinglePayload(v181, 1, 1, v61);
    sub_1B6220D14();

    sub_1B620E044(v62, &qword_1EB924B50);
    (*(v186 + 8))(v60, v187);
    if (v200)
    {
      v191 = v57;
      v86 = *(&v200 + 1);
      v87 = v201;
      v88 = v202;
      v89 = v203;
      v90 = v204;
      v91 = v205;
      *__dst = v200;
      *&__dst[16] = v201;
      *&__dst[24] = v202;
      *&__dst[32] = v203;
      *&__dst[40] = v204;
      *&__dst[48] = v205;
      v195 = v200;
      v92 = v56 + *(type metadata accessor for WeatherRequestOptions() + 68);
      v93 = v174;
      sub_1B6070D34(*v92, *(v92 + 8), *(v92 + 16), *(v92 + 24) | ((*(v92 + 28) | (*(v92 + 30) << 16)) << 32), sub_1B61DBC68, aDailyforecast_3, &aDailyforecast_3[8], type metadata accessor for DailyForecast, v168, v169, v170, v171, v172, v173);
      v94 = v194;
      if (__swift_getEnumTagSinglePayload(v93, 1, v194) == 1)
      {
        sub_1B60729F4(v195);

        sub_1B620E044(v93, &qword_1EB924E88);
        v83 = v193;
        v84 = 1;
      }

      else
      {
        v185 = v86;
        v186 = v87;
        v187 = v88;
        v188 = v89;
        v189 = v90;
        v190 = v91;
        sub_1B605A29C(v93, v175);
        sub_1B6220784();
        v133 = sub_1B6220B14();
        v134 = sub_1B62217F4();

        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          *&v200 = v136;
          *v135 = 141558275;
          *(v135 + 4) = 1752392040;
          *(v135 + 12) = 2081;
          v137 = sub_1B602EEB0(v191, v59, &v200);

          *(v135 + 14) = v137;
          _os_log_impl(&dword_1B6020000, v133, v134, "Successfully retrieved dailyForecast from cache; identifier=%{private,mask.hash}s", v135, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v136);
          MEMORY[0x1B8C91C90](v136, -1, -1);
          v94 = v194;
          MEMORY[0x1B8C91C90](v135, -1, -1);
          sub_1B60729F4(v195);
        }

        else
        {
          sub_1B60729F4(v195);
        }

        v156 = v193;
        sub_1B605A29C(v175, v193);
        v83 = v156;
        v84 = 0;
      }

      v85 = v94;
      return __swift_storeEnumTagSinglePayload(v83, v84, 1, v85);
    }

    sub_1B6220784();
    v118 = sub_1B6220B14();
    v119 = sub_1B62217F4();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *__dst = v121;
      *v120 = 141558275;
      *(v120 + 4) = 1752392040;
      *(v120 + 12) = 2081;
      v122 = sub_1B602EEB0(v57, v59, __dst);

      *(v120 + 14) = v122;
      _os_log_impl(&dword_1B6020000, v118, v119, "Could not find dailyForecast data in cache; identifier=%{private,mask.hash}s", v120, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v121);
      MEMORY[0x1B8C91C90](v121, -1, -1);
      MEMORY[0x1B8C91C90](v120, -1, -1);
    }

    else
    {
    }

    goto LABEL_20;
  }

  v175 = type metadata accessor for WeatherRequestOptions();
  v47 = v176;
  sub_1B603A944(a3 + *(v175 + 20), v176, &qword_1EB924EF8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v28);
  v170 = v28;
  v49 = a3;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B621DB54();
    if (__swift_getEnumTagSinglePayload(v47, 1, v28) != 1)
    {
      sub_1B620E044(v47, &qword_1EB924EF8);
    }
  }

  else
  {
    (*(v185 + 32))(v30, v47, v28);
  }

  v63 = v189;
  v169 = v49;
  sub_1B6073D1C();
  v64 = v188;
  sub_1B60745B4();
  v65 = v177;
  static Calendar.currentCalendar(with:)(v30, v177);
  v174 = sub_1B6074C18();
  (*(v178 + 8))(v65, v179);
  v181 = sub_1B6220D44();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9271A8);
  v179 = swift_allocBox();
  v68 = v67;
  v178 = *(v66 + 48);
  *&__dst[24] = v45;
  *&__dst[32] = MEMORY[0x1E69D62D8];
  *__dst = a1;
  *&__dst[8] = v191;
  sub_1B6220784();
  sub_1B6220CD4();
  __swift_destroy_boxed_opaque_existential_1(__dst);
  v177 = swift_allocBox();
  v190 = v30;
  v69 = v184;
  *&__dst[24] = v184;
  v176 = a1;
  v70 = MEMORY[0x1E69D6130];
  *&__dst[32] = MEMORY[0x1E69D6130];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__dst);
  v180 = v21;
  v72 = *(v21 + 2);
  v72(boxed_opaque_existential_1, v63, v69);
  sub_1B6220CE4();
  __swift_destroy_boxed_opaque_existential_1(__dst);
  *&__dst[24] = v69;
  *&__dst[32] = v70;
  v73 = __swift_allocate_boxed_opaque_existential_1(__dst);
  v72(v73, v64, v69);
  sub_1B6220C94();
  __swift_destroy_boxed_opaque_existential_1(__dst);
  v74 = v178;
  *(v68 + v178) = v177;
  v75 = *MEMORY[0x1E69D6140];
  v76 = v186;
  v77 = *(v186 + 104);
  v78 = v187;
  v77(v68 + v74, v75, v187);
  v79 = v182;
  *v182 = v179;
  v77(v79, v75, v78);
  v80 = v183;
  *v183 = 0x73657269707865;
  *(v80 + 8) = 0xE700000000000000;
  v81 = *MEMORY[0x1E69D6228];
  v82 = sub_1B6220DD4();
  (*(*(v82 - 8) + 104))(v80, v81, v82);
  __swift_storeEnumTagSinglePayload(v80, 0, 1, v82);
  v95 = sub_1B6220D24();
  v96 = v78;
  v97 = v169;
  v98 = v190;
  v99 = v76;
  v100 = v180;

  sub_1B620E044(v80, &qword_1EB924B50);
  (*(v99 + 8))(v79, v96);
  v101 = *(v95 + 16);
  if (!v101)
  {

    v123 = v191;
    sub_1B6220784();
    v124 = sub_1B6220B14();
    v125 = sub_1B62217F4();

    v126 = os_log_type_enabled(v124, v125);
    v127 = v189;
    v128 = v188;
    if (v126)
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *__dst = v130;
      *v129 = 141558275;
      *(v129 + 4) = 1752392040;
      *(v129 + 12) = 2081;
      *(v129 + 14) = sub_1B602EEB0(v176, v123, __dst);
      _os_log_impl(&dword_1B6020000, v124, v125, "Could not find dailyForecast data in cache: no days found; identifier=%{private,mask.hash}s", v129, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v130);
      MEMORY[0x1B8C91C90](v130, -1, -1);
      MEMORY[0x1B8C91C90](v129, -1, -1);
    }

    v131 = *(v100 + 1);
    v132 = v184;
    v131(v128, v184);
    v131(v127, v132);
    (*(v185 + 8))(v98, v170);
    goto LABEL_46;
  }

  v102 = memcpy(__dst, (v95 + 72 * v101 - 40), sizeof(__dst));
  MEMORY[0x1EEE9AC00](v102);
  *(&v168 - 2) = v97;
  sub_1B603A944(__dst, &v200, &qword_1EB924C88);
  sub_1B6074E48();
  *&v200 = v103;
  sub_1B6220784();
  sub_1B620B8A0(&v200, type metadata accessor for DayForecast, sub_1B6077CCC, sub_1B620B95C);
  v104 = v188;

  v105 = v200;
  v106 = v97 + *(v175 + 68);
  v107 = *(v200 + 16);
  v108 = v176;
  if ((*(v106 + 24) & 0xFF00) != 0x200 && ((*(v106 + 24) | ((*(v106 + 28) | (*(v106 + 30) << 16)) << 32)) & 0x100000000) != 0)
  {
    if (!v107)
    {

      v109 = v191;
      sub_1B6220784();
      v110 = sub_1B6220B14();
      v111 = sub_1B62217F4();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        *&v200 = v113;
        *v112 = 141558275;
        *(v112 + 4) = 1752392040;
        *(v112 + 12) = 2081;
        *(v112 + 14) = sub_1B602EEB0(v108, v109, &v200);
        _os_log_impl(&dword_1B6020000, v110, v111, "Could not find dailyForecast data in cache: no days found for open-ended daily time window; identifier=%{private,mask.hash}s", v112, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v113);
        MEMORY[0x1B8C91C90](v113, -1, -1);
        MEMORY[0x1B8C91C90](v112, -1, -1);
      }

      sub_1B620E044(__dst, &qword_1EB924C88);

      v114 = *(v100 + 1);
      v115 = v184;
      v114(v104, v184);
      v116 = v189;
      v117 = v115;
LABEL_45:
      v114(v116, v117);
      (*(v185 + 8))(v190, v170);
LABEL_46:
      v85 = v194;
      v83 = v193;
      v84 = 1;
      return __swift_storeEnumTagSinglePayload(v83, v84, 1, v85);
    }

    goto LABEL_40;
  }

  if (v107 != v174)
  {

    v157 = v191;
    sub_1B6220784();

    v158 = sub_1B6220B14();
    v159 = sub_1B62217F4();

    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *&v200 = v161;
      *v160 = 134218755;
      v162 = *(v105 + 16);

      *(v160 + 4) = v162;

      *(v160 + 12) = 2048;
      *(v160 + 14) = v174;
      *(v160 + 22) = 2160;
      *(v160 + 24) = 1752392040;
      *(v160 + 32) = 2081;
      *(v160 + 34) = sub_1B602EEB0(v176, v157, &v200);
      _os_log_impl(&dword_1B6020000, v158, v159, "Could not find dailyForecast data in cache: incorrect number of days found %ld/%ld; identifier=%{private,mask.hash}s", v160, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1(v161);
      MEMORY[0x1B8C91C90](v161, -1, -1);
      MEMORY[0x1B8C91C90](v160, -1, -1);
      sub_1B620E044(__dst, &qword_1EB924C88);
    }

    else
    {

      sub_1B620E044(__dst, &qword_1EB924C88);
    }

    v166 = *(v100 + 1);
    v167 = v184;
    v166(v104, v184);
    v166(v189, v167);
    (*(v185 + 8))(v190, v170);
LABEL_20:
    v83 = v193;
    v84 = 1;
    v85 = v194;
    return __swift_storeEnumTagSinglePayload(v83, v84, 1, v85);
  }

LABEL_40:
  sub_1B6220D84();
  v138 = v199;
  if (v199)
  {
    v139 = v198;

    v197 = 1;
    v140 = *(v106 + 16);
    v141 = *(v106 + 24);
    v142 = *(v106 + 28);
    v143 = *(v106 + 30);
    v200 = *v106;
    v201 = v140;
    BYTE6(v202) = v143;
    WORD2(v202) = v142;
    LODWORD(v202) = v141;
    v144 = v172;
    v145 = v191;
    sub_1B607A2D4(v108, v191, v139, v138, &v197, &v200, v172);

    if (__swift_getEnumTagSinglePayload(v144, 1, v171) != 1)
    {
      sub_1B605A29C(v144, v173);
      sub_1B6220784();

      v152 = sub_1B6220B14();
      v153 = sub_1B62217F4();

      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        *&v200 = v155;
        *v154 = 141558531;
        *(v154 + 4) = 1752392040;
        *(v154 + 12) = 2081;
        *(v154 + 14) = sub_1B602EEB0(v108, v145, &v200);
        *(v154 + 22) = 2048;
        *(v154 + 24) = *(v105 + 16);

        _os_log_impl(&dword_1B6020000, v152, v153, "Successfully retrieved dailyForecast from cache; identifier=%{private,mask.hash}s, count=%ld", v154, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v155);
        MEMORY[0x1B8C91C90](v155, -1, -1);
        MEMORY[0x1B8C91C90](v154, -1, -1);

        sub_1B620E044(__dst, &qword_1EB924C88);
      }

      else
      {

        sub_1B620E044(__dst, &qword_1EB924C88);
      }

      v163 = *(v100 + 1);
      v164 = v184;
      v163(v104, v184);
      v163(v189, v164);
      (*(v185 + 8))(v190, v170);
      v165 = v193;
      sub_1B605A29C(v173, v193);
      v85 = v194;
      *(v165 + *(v194 + 20)) = v105;
      v83 = v165;
      v84 = 0;
      return __swift_storeEnumTagSinglePayload(v83, v84, 1, v85);
    }

    sub_1B620E044(v144, &qword_1EB927BF8);
    sub_1B6220784();
    v146 = sub_1B6220B14();
    v147 = sub_1B62217F4();

    v148 = os_log_type_enabled(v146, v147);
    v149 = v184;
    if (v148)
    {
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      *&v200 = v151;
      *v150 = 141558275;
      *(v150 + 4) = 1752392040;
      *(v150 + 12) = 2081;
      *(v150 + 14) = sub_1B602EEB0(v108, v145, &v200);
      _os_log_impl(&dword_1B6020000, v146, v147, "Could not find dailyForecast data in cache: missing metadata; identifier=%{private,mask.hash}s", v150, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v151);
      MEMORY[0x1B8C91C90](v151, -1, -1);
      MEMORY[0x1B8C91C90](v150, -1, -1);
    }

    sub_1B620E044(__dst, &qword_1EB924C88);

    v114 = *(v100 + 1);
    v114(v104, v149);
    v116 = v189;
    v117 = v149;
    goto LABEL_45;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B6200980@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  LODWORD(v165) = a4;
  v170 = a3;
  v172 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v159 = &v151 - v10;
  v173 = type metadata accessor for HourlyForecast();
  MEMORY[0x1EEE9AC00](v173);
  v160 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927BF8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v151 - v13;
  v156 = type metadata accessor for Metadata();
  MEMORY[0x1EEE9AC00](v156);
  v155 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v164 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v163 = (&v151 - v19);
  v169 = sub_1B6220BD4();
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v21 = &v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v162 = (&v151 - v23);
  v24 = sub_1B621D8F4();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v166 = &v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v167 = &v151 - v28;
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v29 = sub_1B6220B34();
  v30 = __swift_project_value_buffer(v29, qword_1EDAC2AB0);
  sub_1B6220784();
  v171 = v30;
  v31 = sub_1B6220B14();
  v32 = sub_1B62217F4();

  v33 = os_log_type_enabled(v31, v32);
  v157 = v14;
  if (v33)
  {
    v34 = v6;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = a2;
    v38 = v36;
    *__dst = v36;
    *v35 = 141558275;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2081;
    v39 = a1;
    v40 = a1;
    v41 = v37;
    *(v35 + 14) = sub_1B602EEB0(v40, v37, __dst);
    _os_log_impl(&dword_1B6020000, v31, v32, "Attempting to retrieve hourlyForecast from cache; identifier=%{private,mask.hash}s", v35, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1B8C91C90](v38, -1, -1);
    v42 = v35;
    v6 = v34;
    MEMORY[0x1B8C91C90](v42, -1, -1);
  }

  else
  {
    v39 = a1;
    v41 = a2;
  }

  v43 = sub_1B6067284();
  if (v43)
  {
    v44 = v43;
    v154 = v6;
    v158 = v24;
    v161 = v25;
    sub_1B621DC04();
    sub_1B621DBF4();
    if (qword_1EDAB0960 != -1)
    {
      swift_once();
    }

    sub_1B621DBE4();

    v45 = MEMORY[0x1E69E6158];
    v46 = MEMORY[0x1E69D62D8];
    if (__dst[0] != 1)
    {
      v76 = sub_1B620933C(v170, v39, v41);
      v78 = v77;
      sub_1B6220D44();
      *&__dst[24] = v45;
      *&__dst[32] = v46;
      *__dst = v76;
      *&__dst[8] = v78;
      sub_1B6220784();
      sub_1B6220CD4();
      __swift_destroy_boxed_opaque_existential_1(__dst);
      v79 = sub_1B6220DD4();
      v80 = v164;
      __swift_storeEnumTagSinglePayload(v164, 1, 1, v79);
      sub_1B6220D14();

      sub_1B620E044(v80, &qword_1EB924B50);
      (*(v168 + 8))(v21, v169);
      if (v177)
      {
        v168 = v76;
        v81 = *(&v177 + 1);
        v83 = v178;
        v82 = v179;
        v84 = v180;
        v85 = v181;
        v86 = v182;
        *__dst = v177;
        *&__dst[16] = v178;
        *&__dst[24] = v179;
        *&__dst[32] = v180;
        *&__dst[40] = v181;
        *&__dst[48] = v182;
        v169 = v177;
        v87 = v170 + *(type metadata accessor for WeatherRequestOptions() + 68);
        v88 = v159;
        sub_1B6070D34(*v87, *(v87 + 8), *(v87 + 16), *(v87 + 24) | ((*(v87 + 28) | (*(v87 + 30) << 16)) << 32), sub_1B61DBF58, aHourlyforecast_4, &aHourlyforecast_4[8], type metadata accessor for HourlyForecast, v151, v152, v153, v154, v155, v156);
        v89 = v173;
        if (__swift_getEnumTagSinglePayload(v88, 1, v173) == 1)
        {
          sub_1B60729F4(v169);

          sub_1B620E044(v88, &qword_1EB924E90);
          v90 = v172;
          v91 = 1;
          v92 = v89;
        }

        else
        {
          v162 = v81;
          v163 = v83;
          v165 = v82;
          v166 = v84;
          v167 = v85;
          v170 = v86;
          v164 = v44;
          sub_1B605A29C(v88, v160);
          sub_1B6220784();
          v118 = sub_1B6220B14();
          v119 = sub_1B62217F4();

          if (os_log_type_enabled(v118, v119))
          {
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            *&v177 = v121;
            *v120 = 141558275;
            *(v120 + 4) = 1752392040;
            *(v120 + 12) = 2081;
            v122 = sub_1B602EEB0(v168, v78, &v177);

            *(v120 + 14) = v122;
            _os_log_impl(&dword_1B6020000, v118, v119, "Successfully retrieved hourlyForecast from cache; identifier=%{private,mask.hash}s", v120, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v121);
            MEMORY[0x1B8C91C90](v121, -1, -1);
            MEMORY[0x1B8C91C90](v120, -1, -1);
            sub_1B60729F4(v169);
          }

          else
          {
            sub_1B60729F4(v169);
          }

          v139 = v172;
          sub_1B605A29C(v160, v172);
          v90 = v139;
          v91 = 0;
          v92 = v173;
        }
      }

      else
      {
        sub_1B6220784();
        v110 = sub_1B6220B14();
        v111 = sub_1B62217F4();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          *__dst = v113;
          *v112 = 141558275;
          *(v112 + 4) = 1752392040;
          *(v112 + 12) = 2081;
          v114 = sub_1B602EEB0(v76, v78, __dst);

          *(v112 + 14) = v114;
          _os_log_impl(&dword_1B6020000, v110, v111, "Could not find hourlyForecast data in cache; identifier=%{private,mask.hash}s", v112, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v113);
          MEMORY[0x1B8C91C90](v113, -1, -1);
          MEMORY[0x1B8C91C90](v112, -1, -1);
        }

        else
        {
        }

        v92 = v173;
        v90 = v172;
        v91 = 1;
      }

      return __swift_storeEnumTagSinglePayload(v90, v91, 1, v92);
    }

    v47 = v165;
    v48 = v167;
    sub_1B6077FCC();
    v49 = v166;
    sub_1B6078C70();
    sub_1B621D7D4();
    v51 = floor(v50 / 3600.0);
    if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v51 > -9.22337204e18)
    {
      if (v51 < 9.22337204e18)
      {
        v164 = v44;
        v160 = sub_1B6220D44();
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9271A8);
        v159 = swift_allocBox();
        v54 = v53;
        v55 = *(v52 + 48);
        *&__dst[24] = v45;
        *&__dst[32] = v46;
        v152 = v39;
        *__dst = v39;
        *&__dst[8] = v41;
        v151 = v41;
        sub_1B6220784();
        sub_1B6220CD4();
        __swift_destroy_boxed_opaque_existential_1(__dst);
        v153 = swift_allocBox();
        v56 = v158;
        *&__dst[24] = v158;
        v57 = v48;
        v58 = MEMORY[0x1E69D6130];
        *&__dst[32] = MEMORY[0x1E69D6130];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__dst);
        v60 = *(v161 + 16);
        v60(boxed_opaque_existential_1, v57, v56);
        sub_1B6220CE4();
        __swift_destroy_boxed_opaque_existential_1(__dst);
        *&__dst[24] = v56;
        *&__dst[32] = v58;
        v61 = __swift_allocate_boxed_opaque_existential_1(__dst);
        v60(v61, v49, v56);
        sub_1B6220C94();
        __swift_destroy_boxed_opaque_existential_1(__dst);
        *(v54 + v55) = v153;
        v62 = *MEMORY[0x1E69D6140];
        v63 = v168;
        v64 = *(v168 + 104);
        v65 = v169;
        v64(v54 + v55, v62, v169);
        v66 = v162;
        *v162 = v159;
        v64(v66, v62, v65);
        v67 = v163;
        *v163 = 0x73657269707865;
        *(v67 + 8) = 0xE700000000000000;
        v68 = *MEMORY[0x1E69D6228];
        v69 = sub_1B6220DD4();
        (*(*(v69 - 8) + 104))(v67, v68, v69);
        __swift_storeEnumTagSinglePayload(v67, 0, 1, v69);
        v93 = sub_1B6220D24();
        v94 = v152;
        v95 = v66;
        v96 = v151;

        sub_1B620E044(v67, &qword_1EB924B50);
        (*(v63 + 8))(v95, v65);
        v97 = *(v93 + 16);
        v98 = v173;
        v99 = v172;
        if (!v97)
        {

          sub_1B6220784();
          v105 = sub_1B6220B14();
          v115 = sub_1B62217F4();

          if (os_log_type_enabled(v105, v115))
          {
            v116 = swift_slowAlloc();
            v117 = swift_slowAlloc();
            *__dst = v117;
            *v116 = 141558275;
            *(v116 + 4) = 1752392040;
            *(v116 + 12) = 2081;
            *(v116 + 14) = sub_1B602EEB0(v94, v96, __dst);
            _os_log_impl(&dword_1B6020000, v105, v115, "Could not find hourlyForecast data in cache: no hours found; identifier=%{private,mask.hash}s", v116, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v117);
            MEMORY[0x1B8C91C90](v117, -1, -1);
            MEMORY[0x1B8C91C90](v116, -1, -1);
          }

          goto LABEL_55;
        }

        v100 = memcpy(__dst, (v93 + 72 * v97 - 40), sizeof(__dst));
        MEMORY[0x1EEE9AC00](v100);
        v101 = v170;
        *(&v151 - 2) = v170;
        sub_1B603A944(__dst, &v177, &qword_1EB924C70);
        sub_1B6079524();
        *&v177 = v102;
        sub_1B6220784();
        sub_1B620B8A0(&v177, type metadata accessor for HourForecast, sub_1B607A2BC, sub_1B620BB40);

        v47 = v177;
        v103 = v101 + *(type metadata accessor for WeatherRequestOptions() + 68);
        v104 = *(v47 + 16);
        if ((*(v103 + 24) & 0xFF00) == 0x200 || (*(v103 + 24) & 0x1000000) == 0)
        {
          if (v104 != v51)
          {

            sub_1B6220784();

            v105 = sub_1B6220B14();
            v140 = sub_1B62217F4();

            if (!os_log_type_enabled(v105, v140))
            {

              sub_1B620E044(__dst, &qword_1EB924C70);

              goto LABEL_55;
            }

            v141 = swift_slowAlloc();
            v142 = v98;
            v143 = v96;
            v144 = swift_slowAlloc();
            *&v177 = v144;
            *v141 = 134218755;
            v145 = *(v47 + 16);

            *(v141 + 4) = v145;

            *(v141 + 12) = 2048;
            *(v141 + 14) = v51;
            *(v141 + 22) = 2160;
            *(v141 + 24) = 1752392040;
            *(v141 + 32) = 2081;
            v146 = v143;
            v98 = v142;
            v99 = v172;
            *(v141 + 34) = sub_1B602EEB0(v94, v146, &v177);
            _os_log_impl(&dword_1B6020000, v105, v140, "Could not find hourlyForecast data in cache: incorrect number of hours found %ld/%ld; identifier=%{private,mask.hash}s", v141, 0x2Au);
            __swift_destroy_boxed_opaque_existential_1(v144);
            MEMORY[0x1B8C91C90](v144, -1, -1);
            v109 = v141;
            goto LABEL_50;
          }
        }

        else if (!v104)
        {

          sub_1B6220784();
          v105 = sub_1B6220B14();
          v106 = sub_1B62217F4();

          if (!os_log_type_enabled(v105, v106))
          {
LABEL_51:
            sub_1B620E044(__dst, &qword_1EB924C70);
LABEL_55:

            goto LABEL_56;
          }

          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *&v177 = v108;
          *v107 = 141558275;
          *(v107 + 4) = 1752392040;
          *(v107 + 12) = 2081;
          *(v107 + 14) = sub_1B602EEB0(v94, v96, &v177);
          _os_log_impl(&dword_1B6020000, v105, v106, "Could not find hourlyForecast data in cache: no hours found for open-ended hourly time window; identifier=%{private,mask.hash}s", v107, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v108);
          MEMORY[0x1B8C91C90](v108, -1, -1);
          v109 = v107;
LABEL_50:
          MEMORY[0x1B8C91C90](v109, -1, -1);
          goto LABEL_51;
        }

        sub_1B6220D84();
        v123 = v176;
        if (v176)
        {
          v124 = v175;

          v174 = 0;
          v125 = *(v103 + 16);
          v126 = *(v103 + 24);
          v127 = *(v103 + 28);
          v128 = *(v103 + 30);
          v177 = *v103;
          v178 = v125;
          BYTE6(v179) = v128;
          WORD2(v179) = v127;
          LODWORD(v179) = v126;
          v129 = v157;
          sub_1B607A2D4(v94, v96, v124, v123, &v174, &v177, v157);

          if (__swift_getEnumTagSinglePayload(v129, 1, v156) != 1)
          {
            v134 = v155;
            sub_1B605A29C(v129, v155);
            sub_1B6220784();

            v135 = sub_1B6220B14();
            v136 = sub_1B62217F4();

            if (os_log_type_enabled(v135, v136))
            {
              v137 = swift_slowAlloc();
              v138 = swift_slowAlloc();
              *&v177 = v138;
              *v137 = 141558787;
              *(v137 + 4) = 1752392040;
              *(v137 + 12) = 2081;
              *(v137 + 14) = sub_1B602EEB0(v94, v96, &v177);
              *(v137 + 22) = 2048;
              *(v137 + 24) = *(v47 + 16);

              *(v137 + 32) = 1024;
              *(v137 + 34) = v165 & 1;
              _os_log_impl(&dword_1B6020000, v135, v136, "Successfully retrieved hourlyForecast from cache; identifier=%{private,mask.hash}s, count=%ld, requestIncludesDailyForecast=%{BOOL}d", v137, 0x26u);
              __swift_destroy_boxed_opaque_existential_1(v138);
              MEMORY[0x1B8C91C90](v138, -1, -1);
              MEMORY[0x1B8C91C90](v137, -1, -1);

              sub_1B620E044(__dst, &qword_1EB924C70);
            }

            else
            {

              sub_1B620E044(__dst, &qword_1EB924C70);
            }

            v147 = *(v161 + 8);
            v148 = v158;
            v147(v166, v158);
            v147(v167, v148);
            sub_1B605A29C(v134, v99);
            *(v99 + *(v98 + 20)) = v47;
            v90 = v99;
            v91 = 0;
            goto LABEL_57;
          }

          sub_1B620E044(v129, &qword_1EB927BF8);
          sub_1B6220784();
          v130 = sub_1B6220B14();
          v131 = sub_1B62217F4();

          if (os_log_type_enabled(v130, v131))
          {
            v132 = swift_slowAlloc();
            v133 = swift_slowAlloc();
            *&v177 = v133;
            *v132 = 141558275;
            *(v132 + 4) = 1752392040;
            *(v132 + 12) = 2081;
            *(v132 + 14) = sub_1B602EEB0(v94, v96, &v177);
            _os_log_impl(&dword_1B6020000, v130, v131, "Could not find hourlyForecast data in cache: missing metadata; identifier=%{private,mask.hash}s", v132, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v133);
            MEMORY[0x1B8C91C90](v133, -1, -1);
            MEMORY[0x1B8C91C90](v132, -1, -1);
          }

          sub_1B620E044(__dst, &qword_1EB924C70);

LABEL_56:
          v149 = *(v161 + 8);
          v150 = v158;
          v149(v166, v158);
          v149(v167, v150);
          v90 = v99;
          v91 = 1;
LABEL_57:
          v92 = v98;
          return __swift_storeEnumTagSinglePayload(v90, v91, 1, v92);
        }

        goto LABEL_62;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);

      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_61;
  }

  v70 = sub_1B6220B14();
  v71 = sub_1B62217F4();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_1B6020000, v70, v71, "Cannot retrieve cached hourlyForecast due to missing store", v72, 2u);
    MEMORY[0x1B8C91C90](v72, -1, -1);
  }

  v73 = v172;
  v74 = v173;

  return __swift_storeEnumTagSinglePayload(v73, 1, 1, v74);
}

uint64_t sub_1B62023E4(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v36 = sub_1B6220BD4();
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v37 = a1;
  v10 = sub_1B6220B34();
  v11 = __swift_project_value_buffer(v10, qword_1EDAC2AB0);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = v11;
    v15 = v14;
    v16 = swift_slowAlloc();
    v39 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v17 = a2;
    *(v15 + 14) = sub_1B602EEB0(v37, a2, &v39);
    _os_log_impl(&dword_1B6020000, v12, v13, "Attempting to retrieve nextHourForecast unavailable from cache; identifier=%{private,mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1B8C91C90](v16, -1, -1);
    MEMORY[0x1B8C91C90](v15, -1, -1);
  }

  else
  {
    v17 = a2;
  }

  if (!sub_1B6067284())
  {
    v21 = sub_1B6220B14();
    v22 = sub_1B62217F4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B6020000, v21, v22, "Cannot retrieve cached nextHourForecast unavailable due to missing store", v23, 2u);
      MEMORY[0x1B8C91C90](v23, -1, -1);
    }

    return 0;
  }

  sub_1B6220D44();
  v38[3] = MEMORY[0x1E69E6158];
  v38[4] = MEMORY[0x1E69D62D8];
  v18 = v37;
  v38[0] = v37;
  v38[1] = v17;
  v19 = v17;
  sub_1B6220784();
  sub_1B6220CD4();
  __swift_destroy_boxed_opaque_existential_1(v38);
  v20 = sub_1B6220DD4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v20);
  sub_1B6220D14();

  sub_1B620E044(v6, &qword_1EB924B50);
  (*(v7 + 8))(v9, v36);
  if (!v39)
  {
    sub_1B6220784();
    v30 = sub_1B6220B14();
    v31 = sub_1B62217F4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v18;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1B602EEB0(v32, v19, &v39);
      _os_log_impl(&dword_1B6020000, v30, v31, "Could not find nextHourForecast unavailable data in cache; identifier=%{private,mask.hash}s", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1B8C91C90](v34, -1, -1);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    return 0;
  }

  sub_1B60729F4(v39);
  sub_1B6220784();
  v24 = sub_1B6220B14();
  v25 = sub_1B62217F4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v18;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    *(v27 + 14) = sub_1B602EEB0(v26, v19, &v39);
    _os_log_impl(&dword_1B6020000, v24, v25, "Successfully retrieved nextHourForecast unavailable from cache; identifier=%{private,mask.hash}s", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1B8C91C90](v28, -1, -1);
    MEMORY[0x1B8C91C90](v27, -1, -1);
  }

  return 1;
}

uint64_t sub_1B6202AE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E98);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for PeriodicForecasts();
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v56 - v14;
  v16 = sub_1B6220BD4();
  v65 = *(v16 - 8);
  v66 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 8);
  v63 = *a3;
  v62 = v19;
  v61 = *(a3 + 16);
  LODWORD(v60) = *(a3 + 30);
  LODWORD(v59) = *(a3 + 28);
  v58 = *(a3 + 24);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v69 = a1;
  v20 = sub_1B6220B34();
  v21 = __swift_project_value_buffer(v20, qword_1EDAC2AB0);
  sub_1B6220784();
  v67 = v21;
  v22 = sub_1B6220B14();
  v23 = sub_1B62217F4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v57 = v11;
    v25 = v24;
    v26 = v10;
    v27 = a4;
    v28 = swift_slowAlloc();
    v77 = v28;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    v29 = a2;
    *(v25 + 14) = sub_1B602EEB0(v69, a2, &v77);
    _os_log_impl(&dword_1B6020000, v22, v23, "Attempting to retrieve forecastPeriod from cache; identifier=%{private,mask.hash}s", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v30 = v28;
    a4 = v27;
    v10 = v26;
    MEMORY[0x1B8C91C90](v30, -1, -1);
    v31 = v25;
    v11 = v57;
    MEMORY[0x1B8C91C90](v31, -1, -1);
  }

  else
  {
    v29 = a2;
  }

  if (sub_1B6067284())
  {
    sub_1B6220D44();
    v80 = MEMORY[0x1E69E6158];
    v81 = MEMORY[0x1E69D62D8];
    v77 = v69;
    v78 = v29;
    v32 = v29;
    sub_1B6220784();
    sub_1B6220CD4();
    __swift_destroy_boxed_opaque_existential_1(&v77);
    v33 = sub_1B6220DD4();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v33);
    sub_1B6220D14();
    v68 = a4;

    sub_1B620E044(v15, &qword_1EB924B50);
    (*(v65 + 8))(v18, v66);
    v38 = v70;
    if (v70)
    {
      v39 = v73;
      v40 = v74;
      v42 = v75;
      v41 = v76;
      v77 = v70;
      v78 = v71;
      v65 = v71;
      v66 = v72;
      v79 = v72;
      v80 = v73;
      v81 = v74;
      v82 = v75;
      v83 = v76;
      sub_1B6070D34(v63, v62, v61, (v58 | ((v59 | (v60 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL, sub_1B61DC248, &qword_1EB927578, &qword_1EB927580, type metadata accessor for PeriodicForecasts, v56, v57, v58, v59, v60, v61);
      if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
      {
        v59 = v39;
        v60 = v38;
        v61 = v40;
        v62 = v42;
        v63 = v41;
        sub_1B605A29C(v10, v64);
        sub_1B6220784();
        v49 = sub_1B6220B14();
        v50 = sub_1B62217F4();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v57 = v11;
          v52 = v51;
          v53 = swift_slowAlloc();
          v70 = v53;
          *v52 = 141558275;
          *(v52 + 4) = 1752392040;
          *(v52 + 12) = 2081;
          *(v52 + 14) = sub_1B602EEB0(v69, v32, &v70);
          _os_log_impl(&dword_1B6020000, v49, v50, "Successfully retrieved forecastPeriod from cache; identifier=%{private,mask.hash}s", v52, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v53);
          MEMORY[0x1B8C91C90](v53, -1, -1);
          v54 = v52;
          v11 = v57;
          MEMORY[0x1B8C91C90](v54, -1, -1);
        }

        sub_1B60729F4(v60);

        v55 = v68;
        sub_1B605A29C(v64, v68);
        v47 = v55;
        v48 = 0;
        return __swift_storeEnumTagSinglePayload(v47, v48, 1, v11);
      }

      sub_1B60729F4(v38);

      sub_1B620E044(v10, &qword_1EB924E98);
    }

    else
    {
      sub_1B6220784();
      v43 = sub_1B6220B14();
      v44 = sub_1B62217F4();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v77 = v46;
        *v45 = 141558275;
        *(v45 + 4) = 1752392040;
        *(v45 + 12) = 2081;
        *(v45 + 14) = sub_1B602EEB0(v69, v32, &v77);
        _os_log_impl(&dword_1B6020000, v43, v44, "Could not find forecastPeriod data in cache; identifier=%{private,mask.hash}s", v45, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x1B8C91C90](v46, -1, -1);
        MEMORY[0x1B8C91C90](v45, -1, -1);
      }
    }

    v47 = v68;
    v48 = 1;
    return __swift_storeEnumTagSinglePayload(v47, v48, 1, v11);
  }

  v34 = sub_1B6220B14();
  v35 = sub_1B62217F4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1B6020000, v34, v35, "Cannot retrieve cached forecastPeriod due to missing store", v36, 2u);
    MEMORY[0x1B8C91C90](v36, -1, -1);
  }

  return __swift_storeEnumTagSinglePayload(a4, 1, 1, v11);
}

uint64_t sub_1B62034BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for LocationInfo();
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v56 - v14;
  v16 = sub_1B6220BD4();
  v65 = *(v16 - 8);
  v66 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 8);
  v63 = *a3;
  v62 = v19;
  v61 = *(a3 + 16);
  LODWORD(v60) = *(a3 + 30);
  LODWORD(v59) = *(a3 + 28);
  v58 = *(a3 + 24);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v69 = a1;
  v20 = sub_1B6220B34();
  v21 = __swift_project_value_buffer(v20, qword_1EDAC2AB0);
  sub_1B6220784();
  v67 = v21;
  v22 = sub_1B6220B14();
  v23 = sub_1B62217F4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v57 = v11;
    v25 = v24;
    v26 = v10;
    v27 = a4;
    v28 = swift_slowAlloc();
    v77 = v28;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    v29 = a2;
    *(v25 + 14) = sub_1B602EEB0(v69, a2, &v77);
    _os_log_impl(&dword_1B6020000, v22, v23, "Attempting to retrieve locationInfo from cache; identifier=%{private,mask.hash}s", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v30 = v28;
    a4 = v27;
    v10 = v26;
    MEMORY[0x1B8C91C90](v30, -1, -1);
    v31 = v25;
    v11 = v57;
    MEMORY[0x1B8C91C90](v31, -1, -1);
  }

  else
  {
    v29 = a2;
  }

  if (sub_1B6067284())
  {
    sub_1B6220D44();
    v80 = MEMORY[0x1E69E6158];
    v81 = MEMORY[0x1E69D62D8];
    v77 = v69;
    v78 = v29;
    v32 = v29;
    sub_1B6220784();
    sub_1B6220CD4();
    __swift_destroy_boxed_opaque_existential_1(&v77);
    v33 = sub_1B6220DD4();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v33);
    sub_1B6220D14();
    v68 = a4;

    sub_1B620E044(v15, &qword_1EB924B50);
    (*(v65 + 8))(v18, v66);
    v38 = v70;
    if (v70)
    {
      v39 = v73;
      v40 = v74;
      v42 = v75;
      v41 = v76;
      v77 = v70;
      v78 = v71;
      v65 = v71;
      v66 = v72;
      v79 = v72;
      v80 = v73;
      v81 = v74;
      v82 = v75;
      v83 = v76;
      sub_1B6070D34(v63, v62, v61, (v58 | ((v59 | (v60 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL, sub_1B61DC538, aLocationinfo_8, &aLocationinfo_8[8], type metadata accessor for LocationInfo, v56, v57, v58, v59, v60, v61);
      if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
      {
        v59 = v39;
        v60 = v38;
        v61 = v40;
        v62 = v42;
        v63 = v41;
        sub_1B605A29C(v10, v64);
        sub_1B6220784();
        v49 = sub_1B6220B14();
        v50 = sub_1B62217F4();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v57 = v11;
          v52 = v51;
          v53 = swift_slowAlloc();
          v70 = v53;
          *v52 = 141558275;
          *(v52 + 4) = 1752392040;
          *(v52 + 12) = 2081;
          *(v52 + 14) = sub_1B602EEB0(v69, v32, &v70);
          _os_log_impl(&dword_1B6020000, v49, v50, "Successfully retrieved locationInfo from cache; identifier=%{private,mask.hash}s", v52, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v53);
          MEMORY[0x1B8C91C90](v53, -1, -1);
          v54 = v52;
          v11 = v57;
          MEMORY[0x1B8C91C90](v54, -1, -1);
        }

        sub_1B60729F4(v60);

        v55 = v68;
        sub_1B605A29C(v64, v68);
        v47 = v55;
        v48 = 0;
        return __swift_storeEnumTagSinglePayload(v47, v48, 1, v11);
      }

      sub_1B60729F4(v38);

      sub_1B620E044(v10, &qword_1EB924EA8);
    }

    else
    {
      sub_1B6220784();
      v43 = sub_1B6220B14();
      v44 = sub_1B62217F4();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v77 = v46;
        *v45 = 141558275;
        *(v45 + 4) = 1752392040;
        *(v45 + 12) = 2081;
        *(v45 + 14) = sub_1B602EEB0(v69, v32, &v77);
        _os_log_impl(&dword_1B6020000, v43, v44, "Could not find locationInfo data in cache; identifier=%{private,mask.hash}s", v45, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x1B8C91C90](v46, -1, -1);
        MEMORY[0x1B8C91C90](v45, -1, -1);
      }
    }

    v47 = v68;
    v48 = 1;
    return __swift_storeEnumTagSinglePayload(v47, v48, 1, v11);
  }

  v34 = sub_1B6220B14();
  v35 = sub_1B62217F4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1B6020000, v34, v35, "Cannot retrieve cached locationInfo due to missing store", v36, 2u);
    MEMORY[0x1B8C91C90](v36, -1, -1);
  }

  return __swift_storeEnumTagSinglePayload(a4, 1, 1, v11);
}

uint64_t sub_1B6203E98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for MarineForecast();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B6067284();
  if (v14)
  {
    v15 = *(v14 + 64);

    sub_1B61E05BC(a1, a2, a3, v15, v10);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
    if (EnumTagSinglePayload == 1)
    {

      sub_1B620E044(v10, &qword_1EB924EB0);
      v22 = a4;
      v23 = 1;
    }

    else
    {
      sub_1B605A29C(v10, v13);
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v24 = sub_1B6220B34();
      __swift_project_value_buffer(v24, qword_1EDAC2AB0);
      sub_1B6220784();
      v25 = sub_1B6220B14();
      v26 = sub_1B62217F4();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v30 = v28;
        *v27 = 141558275;
        *(v27 + 4) = 1752392040;
        *(v27 + 12) = 2081;
        *(v27 + 14) = sub_1B602EEB0(a1, a2, &v30);
        _os_log_impl(&dword_1B6020000, v25, v26, "Successfully retrieved marineForecast from cache; identifier=%{private,mask.hash}s", v27, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x1B8C91C90](v28, -1, -1);
        MEMORY[0x1B8C91C90](v27, -1, -1);
      }

      sub_1B605A29C(v13, a4);
      v22 = a4;
      v23 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v22, v23, 1, v11);
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v16 = sub_1B6220B34();
    __swift_project_value_buffer(v16, qword_1EDAC2AB0);
    v17 = sub_1B6220B14();
    v18 = sub_1B62217F4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B6020000, v17, v18, "Cannot retrieve cached marineForecast due to missing store", v19, 2u);
      MEMORY[0x1B8C91C90](v19, -1, -1);
    }

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v11);
  }
}

uint64_t sub_1B62043F8(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v36 = sub_1B6220BD4();
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v37 = a1;
  v10 = sub_1B6220B34();
  v11 = __swift_project_value_buffer(v10, qword_1EDAC2AB0);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = v11;
    v15 = v14;
    v16 = swift_slowAlloc();
    v39 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v17 = a2;
    *(v15 + 14) = sub_1B602EEB0(v37, a2, &v39);
    _os_log_impl(&dword_1B6020000, v12, v13, "Attempting to retrieve marineForecastUnavailable from cache; identifier=%{private,mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1B8C91C90](v16, -1, -1);
    MEMORY[0x1B8C91C90](v15, -1, -1);
  }

  else
  {
    v17 = a2;
  }

  if (!sub_1B6067284())
  {
    v21 = sub_1B6220B14();
    v22 = sub_1B62217F4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B6020000, v21, v22, "Cannot retrieve cached marineForecastUnavailable due to missing store", v23, 2u);
      MEMORY[0x1B8C91C90](v23, -1, -1);
    }

    return 0;
  }

  sub_1B6220D44();
  v38[3] = MEMORY[0x1E69E6158];
  v38[4] = MEMORY[0x1E69D62D8];
  v18 = v37;
  v38[0] = v37;
  v38[1] = v17;
  v19 = v17;
  sub_1B6220784();
  sub_1B6220CD4();
  __swift_destroy_boxed_opaque_existential_1(v38);
  v20 = sub_1B6220DD4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v20);
  sub_1B6220D14();

  sub_1B620E044(v6, &qword_1EB924B50);
  (*(v7 + 8))(v9, v36);
  if (!v39)
  {
    sub_1B6220784();
    v30 = sub_1B6220B14();
    v31 = sub_1B62217F4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v18;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1B602EEB0(v32, v19, &v39);
      _os_log_impl(&dword_1B6020000, v30, v31, "Could not find marineForecastUnavailable data in cache; identifier=%{private,mask.hash}s", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1B8C91C90](v34, -1, -1);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    return 0;
  }

  sub_1B60729F4(v39);
  sub_1B6220784();
  v24 = sub_1B6220B14();
  v25 = sub_1B62217F4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v18;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    *(v27 + 14) = sub_1B602EEB0(v26, v19, &v39);
    _os_log_impl(&dword_1B6020000, v24, v25, "Successfully retrieved marineForecastUnavailable from cache; identifier=%{private,mask.hash}s", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1B8C91C90](v28, -1, -1);
    MEMORY[0x1B8C91C90](v27, -1, -1);
  }

  return 1;
}

uint64_t sub_1B6204AF4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v54 - v8;
  v63 = type metadata accessor for News();
  MEMORY[0x1EEE9AC00](v63);
  v56 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v54 - v12;
  v14 = sub_1B6220BD4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a3;
  v59 = *(a3 + 8);
  v60 = v18;
  v58 = *(a3 + 16);
  HIDWORD(v57) = *(a3 + 30);
  LODWORD(v57) = *(a3 + 28);
  v19 = *(a3 + 24);
  v20 = sub_1B6067284();
  if (v20)
  {
    v61 = v20;
    sub_1B6220D44();
    v74 = MEMORY[0x1E69E6158];
    v75 = MEMORY[0x1E69D62D8];
    v71 = a1;
    v72 = a2;
    sub_1B6220784();
    sub_1B6220CD4();
    __swift_destroy_boxed_opaque_existential_1(&v71);
    v21 = sub_1B6220DD4();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v21);
    sub_1B6220D14();
    v55 = a1;

    sub_1B620E044(v13, &qword_1EB924B50);
    (*(v15 + 8))(v17, v14);
    v30 = v64;
    if (v64)
    {
      v31 = v65;
      v32 = v66;
      v33 = v67;
      v71 = v64;
      v72 = v65;
      v73 = v66;
      v74 = v67;
      v75 = v68;
      v76 = v69;
      v77 = v70;
      sub_1B6070D34(v60, v59, v58, (v19 | ((v57 | (HIDWORD(v57) << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL, sub_1B61DCB18, aNews_8, &qword_1EB926650, type metadata accessor for News, v54, v55, v56, v57, v58, v59);
      v34 = v63;
      if (__swift_getEnumTagSinglePayload(v9, 1, v63) == 1)
      {
        sub_1B60729F4(v30);

        sub_1B620E044(v9, &qword_1EB924EB8);
        v35 = v62;
        v36 = 1;
        v37 = v34;
      }

      else
      {
        v58 = v31;
        v59 = v33;
        v60 = v32;
        v46 = v56;
        sub_1B605A29C(v9, v56);
        if (qword_1EDAB3D80 != -1)
        {
          swift_once();
        }

        v47 = sub_1B6220B34();
        __swift_project_value_buffer(v47, qword_1EDAC2AB0);
        v48 = a2;
        sub_1B6220784();
        v49 = sub_1B6220B14();
        v50 = sub_1B62217F4();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v64 = v52;
          *v51 = 141558275;
          *(v51 + 4) = 1752392040;
          *(v51 + 12) = 2081;
          *(v51 + 14) = sub_1B602EEB0(v55, v48, &v64);
          _os_log_impl(&dword_1B6020000, v49, v50, "Successfully retrieved news from cache; identifier=%{private,mask.hash}s", v51, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v52);
          MEMORY[0x1B8C91C90](v52, -1, -1);
          MEMORY[0x1B8C91C90](v51, -1, -1);
        }

        sub_1B60729F4(v30);

        v53 = v62;
        sub_1B605A29C(v46, v62);
        v35 = v53;
        v36 = 0;
        v37 = v63;
      }
    }

    else
    {
      v38 = v63;
      v39 = v55;
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v40 = sub_1B6220B34();
      __swift_project_value_buffer(v40, qword_1EDAC2AB0);
      v41 = a2;
      sub_1B6220784();
      v42 = sub_1B6220B14();
      v43 = sub_1B62217F4();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v71 = v45;
        *v44 = 141558275;
        *(v44 + 4) = 1752392040;
        *(v44 + 12) = 2081;
        *(v44 + 14) = sub_1B602EEB0(v39, v41, &v71);
        _os_log_impl(&dword_1B6020000, v42, v43, "Could not find news data in cache; identifier=%{private,mask.hash}s", v44, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x1B8C91C90](v45, -1, -1);
        MEMORY[0x1B8C91C90](v44, -1, -1);
      }

      v35 = v62;
      v36 = 1;
      v37 = v38;
    }

    return __swift_storeEnumTagSinglePayload(v35, v36, 1, v37);
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v22 = sub_1B6220B34();
    __swift_project_value_buffer(v22, qword_1EDAC2AB0);
    v23 = sub_1B6220B14();
    v24 = sub_1B62217F4();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v63;
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1B6020000, v23, v24, "Cannot retrieve cached news due to missing store", v27, 2u);
      MEMORY[0x1B8C91C90](v27, -1, -1);
    }

    v28 = v62;

    return __swift_storeEnumTagSinglePayload(v28, 1, 1, v26);
  }
}

uint64_t sub_1B6205474(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v36 = sub_1B6220BD4();
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v37 = a1;
  v10 = sub_1B6220B34();
  v11 = __swift_project_value_buffer(v10, qword_1EDAC2AB0);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = v11;
    v15 = v14;
    v16 = swift_slowAlloc();
    v39 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v17 = a2;
    *(v15 + 14) = sub_1B602EEB0(v37, a2, &v39);
    _os_log_impl(&dword_1B6020000, v12, v13, "Attempting to retrieve news unavailable from cache; identifier=%{private,mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1B8C91C90](v16, -1, -1);
    MEMORY[0x1B8C91C90](v15, -1, -1);
  }

  else
  {
    v17 = a2;
  }

  if (!sub_1B6067284())
  {
    v21 = sub_1B6220B14();
    v22 = sub_1B62217F4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B6020000, v21, v22, "Cannot retrieve cached news unavailable due to missing store", v23, 2u);
      MEMORY[0x1B8C91C90](v23, -1, -1);
    }

    return 0;
  }

  sub_1B6220D44();
  v38[3] = MEMORY[0x1E69E6158];
  v38[4] = MEMORY[0x1E69D62D8];
  v18 = v37;
  v38[0] = v37;
  v38[1] = v17;
  v19 = v17;
  sub_1B6220784();
  sub_1B6220CD4();
  __swift_destroy_boxed_opaque_existential_1(v38);
  v20 = sub_1B6220DD4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v20);
  sub_1B6220D14();

  sub_1B620E044(v6, &qword_1EB924B50);
  (*(v7 + 8))(v9, v36);
  if (!v39)
  {
    sub_1B6220784();
    v30 = sub_1B6220B14();
    v31 = sub_1B62217F4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v18;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1B602EEB0(v32, v19, &v39);
      _os_log_impl(&dword_1B6020000, v30, v31, "Could not find news unavailable data in cache; identifier=%{private,mask.hash}s", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1B8C91C90](v34, -1, -1);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    return 0;
  }

  sub_1B60729F4(v39);
  sub_1B6220784();
  v24 = sub_1B6220B14();
  v25 = sub_1B62217F4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v18;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    *(v27 + 14) = sub_1B602EEB0(v26, v19, &v39);
    _os_log_impl(&dword_1B6020000, v24, v25, "Successfully retrieved news unavailable from cache; identifier=%{private,mask.hash}s", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1B8C91C90](v28, -1, -1);
    MEMORY[0x1B8C91C90](v27, -1, -1);
  }

  return 1;
}

uint64_t sub_1B6205B70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for TideEvents();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B6067284();
  if (v14)
  {
    v15 = *(v14 + 96);

    sub_1B61E1B60(a1, a2, a3, v15, v10);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
    if (EnumTagSinglePayload == 1)
    {

      sub_1B620E044(v10, &qword_1EB924EC0);
      v22 = a4;
      v23 = 1;
    }

    else
    {
      sub_1B605A29C(v10, v13);
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v24 = sub_1B6220B34();
      __swift_project_value_buffer(v24, qword_1EDAC2AB0);
      sub_1B6220784();
      v25 = sub_1B6220B14();
      v26 = sub_1B62217F4();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v30 = v28;
        *v27 = 141558275;
        *(v27 + 4) = 1752392040;
        *(v27 + 12) = 2081;
        *(v27 + 14) = sub_1B602EEB0(a1, a2, &v30);
        _os_log_impl(&dword_1B6020000, v25, v26, "Successfully retrieved tideEvents from cache; identifier=%{private,mask.hash}s", v27, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x1B8C91C90](v28, -1, -1);
        MEMORY[0x1B8C91C90](v27, -1, -1);
      }

      sub_1B605A29C(v13, a4);
      v22 = a4;
      v23 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v22, v23, 1, v11);
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v16 = sub_1B6220B34();
    __swift_project_value_buffer(v16, qword_1EDAC2AB0);
    v17 = sub_1B6220B14();
    v18 = sub_1B62217F4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B6020000, v17, v18, "Cannot retrieve cached tideEvents due to missing store", v19, 2u);
      MEMORY[0x1B8C91C90](v19, -1, -1);
    }

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v11);
  }
}

uint64_t sub_1B62060D0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v36 = sub_1B6220BD4();
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v37 = a1;
  v10 = sub_1B6220B34();
  v11 = __swift_project_value_buffer(v10, qword_1EDAC2AB0);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = v11;
    v15 = v14;
    v16 = swift_slowAlloc();
    v39 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v17 = a2;
    *(v15 + 14) = sub_1B602EEB0(v37, a2, &v39);
    _os_log_impl(&dword_1B6020000, v12, v13, "Attempting to retrieve tides unavailable from cache; identifier=%{private,mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1B8C91C90](v16, -1, -1);
    MEMORY[0x1B8C91C90](v15, -1, -1);
  }

  else
  {
    v17 = a2;
  }

  if (!sub_1B6067284())
  {
    v21 = sub_1B6220B14();
    v22 = sub_1B62217F4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B6020000, v21, v22, "Cannot retrieve cached tides unavailable due to missing store", v23, 2u);
      MEMORY[0x1B8C91C90](v23, -1, -1);
    }

    return 0;
  }

  sub_1B6220D44();
  v38[3] = MEMORY[0x1E69E6158];
  v38[4] = MEMORY[0x1E69D62D8];
  v18 = v37;
  v38[0] = v37;
  v38[1] = v17;
  v19 = v17;
  sub_1B6220784();
  sub_1B6220CD4();
  __swift_destroy_boxed_opaque_existential_1(v38);
  v20 = sub_1B6220DD4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v20);
  sub_1B6220D14();

  sub_1B620E044(v6, &qword_1EB924B50);
  (*(v7 + 8))(v9, v36);
  if (!v39)
  {
    sub_1B6220784();
    v30 = sub_1B6220B14();
    v31 = sub_1B62217F4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v18;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1B602EEB0(v32, v19, &v39);
      _os_log_impl(&dword_1B6020000, v30, v31, "Could not find tideEvents unavailable data in cache; identifier=%{private,mask.hash}s", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1B8C91C90](v34, -1, -1);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    return 0;
  }

  sub_1B60729F4(v39);
  sub_1B6220784();
  v24 = sub_1B6220B14();
  v25 = sub_1B62217F4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v18;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    *(v27 + 14) = sub_1B602EEB0(v26, v19, &v39);
    _os_log_impl(&dword_1B6020000, v24, v25, "Successfully retrieved tideEvents unavailable from cache; identifier=%{private,mask.hash}s", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1B8C91C90](v28, -1, -1);
    MEMORY[0x1B8C91C90](v27, -1, -1);
  }

  return 1;
}

void sub_1B62067CC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v55 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46 - v8;
  v10 = sub_1B6220BD4();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 8);
  v52 = *a3;
  v51 = v13;
  v50 = *(a3 + 16);
  LODWORD(v49) = *(a3 + 30);
  LODWORD(v48) = *(a3 + 28);
  v47 = *(a3 + 24);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v57 = a1;
  v14 = sub_1B6220B34();
  v15 = __swift_project_value_buffer(v14, qword_1EDAC2AB0);
  sub_1B6220784();
  v16 = sub_1B6220B14();
  v17 = sub_1B62217F4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v65 = v19;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    v20 = a2;
    *(v18 + 14) = sub_1B602EEB0(v57, a2, &v65);
    _os_log_impl(&dword_1B6020000, v16, v17, "Attempting to retrieve historicalFacts from cache; identifier=%{private,mask.hash}s", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1B8C91C90](v19, -1, -1);
    MEMORY[0x1B8C91C90](v18, -1, -1);
  }

  else
  {
    v20 = a2;
  }

  v21 = sub_1B6067284();
  if (!v21)
  {
    v26 = sub_1B6220B14();
    v27 = sub_1B62217F4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1B6020000, v26, v27, "Cannot retrieve cached historicalFacts due to missing store", v28, 2u);
      MEMORY[0x1B8C91C90](v28, -1, -1);
    }

    goto LABEL_11;
  }

  v22 = v21;
  sub_1B6220D44();
  v68 = MEMORY[0x1E69E6158];
  v69 = MEMORY[0x1E69D62D8];
  v23 = v57;
  v65 = v57;
  v66 = v20;
  v24 = v20;
  sub_1B6220784();
  sub_1B6220CD4();
  __swift_destroy_boxed_opaque_existential_1(&v65);
  v25 = sub_1B6220DD4();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v25);
  sub_1B6220D14();
  v56 = v15;

  sub_1B620E044(v9, &qword_1EB924B50);
  (*(v53 + 8))(v12, v54);
  v29 = v58;
  if (!v58)
  {
    sub_1B6220784();
    v26 = sub_1B6220B14();
    v41 = sub_1B62217F4();

    if (os_log_type_enabled(v26, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = v23;
      v45 = v43;
      v65 = v43;
      *v42 = 141558275;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      *(v42 + 14) = sub_1B602EEB0(v44, v24, &v65);
      _os_log_impl(&dword_1B6020000, v26, v41, "Could not find historicalFacts data in cache; identifier=%{private,mask.hash}s", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1B8C91C90](v45, -1, -1);
      MEMORY[0x1B8C91C90](v42, -1, -1);
    }

LABEL_11:

    v40 = 0;
    goto LABEL_17;
  }

  v54 = v22;
  v30 = v59;
  v31 = v60;
  v32 = v61;
  v33 = v62;
  v35 = v63;
  v34 = v64;
  v65 = v58;
  v66 = v59;
  v67 = v60;
  v68 = v61;
  v69 = v62;
  v70 = v63;
  v71 = v64;
  sub_1B61D94D0(v52, v51, v47, &v58);
  v40 = v58;
  if (v58)
  {
    v47 = v30;
    v48 = v29;
    v49 = v32;
    v50 = v31;
    v51 = v33;
    v52 = v35;
    v53 = v34;
    sub_1B6220784();
    v36 = sub_1B6220B14();
    v37 = sub_1B62217F4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v58 = v39;
      *v38 = 141558275;
      *(v38 + 4) = 1752392040;
      *(v38 + 12) = 2081;
      *(v38 + 14) = sub_1B602EEB0(v57, v24, &v58);
      _os_log_impl(&dword_1B6020000, v36, v37, "Successfully retrieved historicalFacts from cache; identifier=%{private,mask.hash}s", v38, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1B8C91C90](v39, -1, -1);
      MEMORY[0x1B8C91C90](v38, -1, -1);
    }

    sub_1B60729F4(v48);
  }

  else
  {
    sub_1B60729F4(v29);
  }

LABEL_17:
  *v55 = v40;
}

uint64_t sub_1B6206FD4(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v36 = sub_1B6220BD4();
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v37 = a1;
  v10 = sub_1B6220B34();
  v11 = __swift_project_value_buffer(v10, qword_1EDAC2AB0);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = v11;
    v15 = v14;
    v16 = swift_slowAlloc();
    v39 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v17 = a2;
    *(v15 + 14) = sub_1B602EEB0(v37, a2, &v39);
    _os_log_impl(&dword_1B6020000, v12, v13, "Attempting to retrieve historicalFacts unavailable from cache; identifier=%{private,mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1B8C91C90](v16, -1, -1);
    MEMORY[0x1B8C91C90](v15, -1, -1);
  }

  else
  {
    v17 = a2;
  }

  if (!sub_1B6067284())
  {
    v21 = sub_1B6220B14();
    v22 = sub_1B62217F4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B6020000, v21, v22, "Cannot retrieve cached historicalFacts unavailable due to missing store", v23, 2u);
      MEMORY[0x1B8C91C90](v23, -1, -1);
    }

    return 0;
  }

  sub_1B6220D44();
  v38[3] = MEMORY[0x1E69E6158];
  v38[4] = MEMORY[0x1E69D62D8];
  v18 = v37;
  v38[0] = v37;
  v38[1] = v17;
  v19 = v17;
  sub_1B6220784();
  sub_1B6220CD4();
  __swift_destroy_boxed_opaque_existential_1(v38);
  v20 = sub_1B6220DD4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v20);
  sub_1B6220D14();

  sub_1B620E044(v6, &qword_1EB924B50);
  (*(v7 + 8))(v9, v36);
  if (!v39)
  {
    sub_1B6220784();
    v30 = sub_1B6220B14();
    v31 = sub_1B62217F4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v18;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1B602EEB0(v32, v19, &v39);
      _os_log_impl(&dword_1B6020000, v30, v31, "Could not find historicalFacts unavailable data in cache; identifier=%{private,mask.hash}s", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1B8C91C90](v34, -1, -1);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    return 0;
  }

  sub_1B60729F4(v39);
  sub_1B6220784();
  v24 = sub_1B6220B14();
  v25 = sub_1B62217F4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v18;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    *(v27 + 14) = sub_1B602EEB0(v26, v19, &v39);
    _os_log_impl(&dword_1B6020000, v24, v25, "Successfully retrieved historicalFacts unavailable from cache; identifier=%{private,mask.hash}s", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1B8C91C90](v28, -1, -1);
    MEMORY[0x1B8C91C90](v27, -1, -1);
  }

  return 1;
}

uint64_t sub_1B62076D0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v36 = sub_1B6220BD4();
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v37 = a1;
  v10 = sub_1B6220B34();
  v11 = __swift_project_value_buffer(v10, qword_1EDAC2AB0);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = v11;
    v15 = v14;
    v16 = swift_slowAlloc();
    v39 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v17 = a2;
    *(v15 + 14) = sub_1B602EEB0(v37, a2, &v39);
    _os_log_impl(&dword_1B6020000, v12, v13, "Attempting to retrieve weatherChange unavailable from cache; identifier=%{private,mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1B8C91C90](v16, -1, -1);
    MEMORY[0x1B8C91C90](v15, -1, -1);
  }

  else
  {
    v17 = a2;
  }

  if (!sub_1B6067284())
  {
    v21 = sub_1B6220B14();
    v22 = sub_1B62217F4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B6020000, v21, v22, "Cannot retrieve cached weatherChange unavailable due to missing store", v23, 2u);
      MEMORY[0x1B8C91C90](v23, -1, -1);
    }

    return 0;
  }

  sub_1B6220D44();
  v38[3] = MEMORY[0x1E69E6158];
  v38[4] = MEMORY[0x1E69D62D8];
  v18 = v37;
  v38[0] = v37;
  v38[1] = v17;
  v19 = v17;
  sub_1B6220784();
  sub_1B6220CD4();
  __swift_destroy_boxed_opaque_existential_1(v38);
  v20 = sub_1B6220DD4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v20);
  sub_1B6220D14();

  sub_1B620E044(v6, &qword_1EB924B50);
  (*(v7 + 8))(v9, v36);
  if (!v39)
  {
    sub_1B6220784();
    v30 = sub_1B6220B14();
    v31 = sub_1B62217F4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v18;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1B602EEB0(v32, v19, &v39);
      _os_log_impl(&dword_1B6020000, v30, v31, "Could not find weatherChange unavailable data in cache; identifier=%{private,mask.hash}s", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1B8C91C90](v34, -1, -1);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    return 0;
  }

  sub_1B60729F4(v39);
  sub_1B6220784();
  v24 = sub_1B6220B14();
  v25 = sub_1B62217F4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v18;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    *(v27 + 14) = sub_1B602EEB0(v26, v19, &v39);
    _os_log_impl(&dword_1B6020000, v24, v25, "Successfully retrieved weatherChange unavailable from cache; identifier=%{private,mask.hash}s", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1B8C91C90](v28, -1, -1);
    MEMORY[0x1B8C91C90](v27, -1, -1);
  }

  return 1;
}

uint64_t sub_1B6207DCC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924ED8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for WeatherComparisons();
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v56 - v14;
  v16 = sub_1B6220BD4();
  v65 = *(v16 - 8);
  v66 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 8);
  v63 = *a3;
  v62 = v19;
  v61 = *(a3 + 16);
  LODWORD(v60) = *(a3 + 30);
  LODWORD(v59) = *(a3 + 28);
  v58 = *(a3 + 24);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v69 = a1;
  v20 = sub_1B6220B34();
  v21 = __swift_project_value_buffer(v20, qword_1EDAC2AB0);
  sub_1B6220784();
  v67 = v21;
  v22 = sub_1B6220B14();
  v23 = sub_1B62217F4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v57 = v11;
    v25 = v24;
    v26 = v10;
    v27 = a4;
    v28 = swift_slowAlloc();
    v77 = v28;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    v29 = a2;
    *(v25 + 14) = sub_1B602EEB0(v69, a2, &v77);
    _os_log_impl(&dword_1B6020000, v22, v23, "Attempting to retrieve weatherComparison from cache; identifier=%{private,mask.hash}s", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v30 = v28;
    a4 = v27;
    v10 = v26;
    MEMORY[0x1B8C91C90](v30, -1, -1);
    v31 = v25;
    v11 = v57;
    MEMORY[0x1B8C91C90](v31, -1, -1);
  }

  else
  {
    v29 = a2;
  }

  if (sub_1B6067284())
  {
    sub_1B6220D44();
    v80 = MEMORY[0x1E69E6158];
    v81 = MEMORY[0x1E69D62D8];
    v77 = v69;
    v78 = v29;
    v32 = v29;
    sub_1B6220784();
    sub_1B6220CD4();
    __swift_destroy_boxed_opaque_existential_1(&v77);
    v33 = sub_1B6220DD4();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v33);
    sub_1B6220D14();
    v68 = a4;

    sub_1B620E044(v15, &qword_1EB924B50);
    (*(v65 + 8))(v18, v66);
    v38 = v70;
    if (v70)
    {
      v39 = v73;
      v40 = v74;
      v42 = v75;
      v41 = v76;
      v77 = v70;
      v78 = v71;
      v65 = v71;
      v66 = v72;
      v79 = v72;
      v80 = v73;
      v81 = v74;
      v82 = v75;
      v83 = v76;
      sub_1B6070D34(v63, v62, v61, (v58 | ((v59 | (v60 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL, sub_1B61DD3E8, &qword_1EB925878, &off_1EB925880, type metadata accessor for WeatherComparisons, v56, v57, v58, v59, v60, v61);
      if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
      {
        v59 = v39;
        v60 = v38;
        v61 = v40;
        v62 = v42;
        v63 = v41;
        sub_1B605A29C(v10, v64);
        sub_1B6220784();
        v49 = sub_1B6220B14();
        v50 = sub_1B62217F4();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v57 = v11;
          v52 = v51;
          v53 = swift_slowAlloc();
          v70 = v53;
          *v52 = 141558275;
          *(v52 + 4) = 1752392040;
          *(v52 + 12) = 2081;
          *(v52 + 14) = sub_1B602EEB0(v69, v32, &v70);
          _os_log_impl(&dword_1B6020000, v49, v50, "Successfully retrieved weatherComparison from cache; identifier=%{private,mask.hash}s", v52, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v53);
          MEMORY[0x1B8C91C90](v53, -1, -1);
          v54 = v52;
          v11 = v57;
          MEMORY[0x1B8C91C90](v54, -1, -1);
        }

        sub_1B60729F4(v60);

        v55 = v68;
        sub_1B605A29C(v64, v68);
        v47 = v55;
        v48 = 0;
        return __swift_storeEnumTagSinglePayload(v47, v48, 1, v11);
      }

      sub_1B60729F4(v38);

      sub_1B620E044(v10, &qword_1EB924ED8);
    }

    else
    {
      sub_1B6220784();
      v43 = sub_1B6220B14();
      v44 = sub_1B62217F4();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v77 = v46;
        *v45 = 141558275;
        *(v45 + 4) = 1752392040;
        *(v45 + 12) = 2081;
        *(v45 + 14) = sub_1B602EEB0(v69, v32, &v77);
        _os_log_impl(&dword_1B6020000, v43, v44, "Could not find weatherComparison data in cache; identifier=%{private,mask.hash}s", v45, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x1B8C91C90](v46, -1, -1);
        MEMORY[0x1B8C91C90](v45, -1, -1);
      }
    }

    v47 = v68;
    v48 = 1;
    return __swift_storeEnumTagSinglePayload(v47, v48, 1, v11);
  }

  v34 = sub_1B6220B14();
  v35 = sub_1B62217F4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1B6020000, v34, v35, "Cannot retrieve cached weatherComparison due to missing store", v36, 2u);
    MEMORY[0x1B8C91C90](v36, -1, -1);
  }

  return __swift_storeEnumTagSinglePayload(a4, 1, 1, v11);
}

uint64_t sub_1B62087A8(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v36 = sub_1B6220BD4();
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v37 = a1;
  v10 = sub_1B6220B34();
  v11 = __swift_project_value_buffer(v10, qword_1EDAC2AB0);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = v11;
    v15 = v14;
    v16 = swift_slowAlloc();
    v39 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v17 = a2;
    *(v15 + 14) = sub_1B602EEB0(v37, a2, &v39);
    _os_log_impl(&dword_1B6020000, v12, v13, "Attempting to retrieve weatherComparison unavailable from cache; identifier=%{private,mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1B8C91C90](v16, -1, -1);
    MEMORY[0x1B8C91C90](v15, -1, -1);
  }

  else
  {
    v17 = a2;
  }

  if (!sub_1B6067284())
  {
    v21 = sub_1B6220B14();
    v22 = sub_1B62217F4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B6020000, v21, v22, "Cannot retrieve cached weatherComparison unavailable due to missing store", v23, 2u);
      MEMORY[0x1B8C91C90](v23, -1, -1);
    }

    return 0;
  }

  sub_1B6220D44();
  v38[3] = MEMORY[0x1E69E6158];
  v38[4] = MEMORY[0x1E69D62D8];
  v18 = v37;
  v38[0] = v37;
  v38[1] = v17;
  v19 = v17;
  sub_1B6220784();
  sub_1B6220CD4();
  __swift_destroy_boxed_opaque_existential_1(v38);
  v20 = sub_1B6220DD4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v20);
  sub_1B6220D14();

  sub_1B620E044(v6, &qword_1EB924B50);
  (*(v7 + 8))(v9, v36);
  if (!v39)
  {
    sub_1B6220784();
    v30 = sub_1B6220B14();
    v31 = sub_1B62217F4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v18;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1B602EEB0(v32, v19, &v39);
      _os_log_impl(&dword_1B6020000, v30, v31, "Could not find weatherComparison unavailable data in cache; identifier=%{private,mask.hash}s", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1B8C91C90](v34, -1, -1);
      MEMORY[0x1B8C91C90](v33, -1, -1);
    }

    return 0;
  }

  sub_1B60729F4(v39);
  sub_1B6220784();
  v24 = sub_1B6220B14();
  v25 = sub_1B62217F4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v18;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    *(v27 + 14) = sub_1B602EEB0(v26, v19, &v39);
    _os_log_impl(&dword_1B6020000, v24, v25, "Successfully retrieved weatherComparison unavailable from cache; identifier=%{private,mask.hash}s", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1B8C91C90](v28, -1, -1);
    MEMORY[0x1B8C91C90](v27, -1, -1);
  }

  return 1;
}

uint64_t sub_1B6208EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F08);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v28 = type metadata accessor for WeatherRequestDailyRelativeRange();
  MEMORY[0x1EEE9AC00](v28);
  v27 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_1B621D364();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WeatherRequestOptions();
  sub_1B603A944(a1 + *(v16 + 28), v11, &qword_1EB924F00);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    v17 = v29;
    sub_1B620E044(v11, &qword_1EB924F00);
    sub_1B603A944(a1 + *(v16 + 36), v7, &qword_1EB924F08);
    if (__swift_getEnumTagSinglePayload(v7, 1, v28) == 1)
    {
      sub_1B620E044(v7, &qword_1EB924F08);
      sub_1B6220784();
    }

    else
    {
      v19 = v27;
      sub_1B605A29C(v7, v27);
      v33 = v17;
      v34 = a3;
      sub_1B6220784();
      MEMORY[0x1B8C90530](44, 0xE100000000000000);
      sub_1B60BDD04();
      v21 = v20;
      v23 = v22;
      v30 = *v19;
      v31 = sub_1B6221F04();
      v32 = v24;
      MEMORY[0x1B8C90530](58, 0xE100000000000000);
      MEMORY[0x1B8C90530](v21, v23);

      MEMORY[0x1B8C90530](58, 0xE100000000000000);
      v30 = v19[1];
      v25 = sub_1B6221F04();
      MEMORY[0x1B8C90530](v25);

      MEMORY[0x1B8C90530](v31, v32);

      v17 = v33;
      sub_1B620B850();
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    swift_getKeyPath();
    v33 = v29;
    v34 = a3;
    sub_1B6220784();
    MEMORY[0x1B8C90530](44, 0xE100000000000000);
    v18 = sub_1B620B524();
    MEMORY[0x1B8C90530](v18);

    v17 = v33;
    (*(v13 + 8))(v15, v12);
  }

  return v17;
}

void sub_1B62092C8()
{
  OUTLINED_FUNCTION_138_0();
  memcpy(__dst, v0, sizeof(__dst));
  v1 = type metadata accessor for WeatherRequestOptions();
  OUTLINED_FUNCTION_111_2(v1);
  OUTLINED_FUNCTION_198_0();
  sub_1B607516C(v2, v3, v4, v5, v6, v7, v8, v9, v10, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4]);
}

uint64_t sub_1B620933C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F08);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v41 - v5;
  v45 = type metadata accessor for WeatherRequestDailyRelativeRange();
  MEMORY[0x1EEE9AC00](v45);
  v42 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - v8;
  v47 = type metadata accessor for WeatherRequestHourlyRelativeRange();
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v17 = sub_1B621D364();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  v23 = type metadata accessor for WeatherRequestOptions();
  sub_1B603A944(a1 + v23[8], v16, &qword_1EB924F00);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
  {
    (*(v18 + 32))(v22, v16, v17);
    swift_getKeyPath();
    v53 = v48;
    v54 = v49;
    sub_1B6220784();
    MEMORY[0x1B8C90530](44, 0xE100000000000000);
    v29 = sub_1B620B524();
    MEMORY[0x1B8C90530](v29);

    v26 = v53;
    (*(v18 + 8))(v22, v17);
    return v26;
  }

  v24 = v48;
  v25 = v49;
  sub_1B620E044(v16, &qword_1EB924F00);
  sub_1B603A944(a1 + v23[10], v9, &qword_1EB924F10);
  if (__swift_getEnumTagSinglePayload(v9, 1, v47) != 1)
  {
    sub_1B605A29C(v9, v46);
    v53 = v24;
    v54 = v25;
    sub_1B6220784();
    MEMORY[0x1B8C90530](44, 0xE100000000000000);
    v30 = sub_1B618B650();
    MEMORY[0x1B8C90530](v30);

    v26 = v53;
LABEL_9:
    sub_1B620B850();
    return v26;
  }

  sub_1B620E044(v9, &qword_1EB924F10);
  sub_1B603A944(a1 + v23[7], v13, &qword_1EB924F00);
  v26 = v24;
  if (__swift_getEnumTagSinglePayload(v13, 1, v17) != 1)
  {
    v32 = v43;
    (*(v18 + 32))(v43, v13, v17);
    swift_getKeyPath();
    v53 = v24;
    v54 = v25;
    sub_1B6220784();
    MEMORY[0x1B8C90530](44, 0xE100000000000000);
    v33 = sub_1B620B524();
    MEMORY[0x1B8C90530](v33);

    v26 = v53;
    (*(v18 + 8))(v32, v17);
    return v26;
  }

  sub_1B620E044(v13, &qword_1EB924F00);
  v27 = v44;
  sub_1B603A944(a1 + v23[9], v44, &qword_1EB924F08);
  v28 = v25;
  if (__swift_getEnumTagSinglePayload(v27, 1, v45) != 1)
  {
    v34 = v42;
    sub_1B605A29C(v27, v42);
    v53 = v26;
    v54 = v28;
    sub_1B6220784();
    MEMORY[0x1B8C90530](44, 0xE100000000000000);
    sub_1B60BDD04();
    v36 = v35;
    v38 = v37;
    v50 = *v34;
    v51 = sub_1B6221F04();
    v52 = v39;
    MEMORY[0x1B8C90530](58, 0xE100000000000000);
    MEMORY[0x1B8C90530](v36, v38);

    MEMORY[0x1B8C90530](58, 0xE100000000000000);
    v50 = v34[1];
    v40 = sub_1B6221F04();
    MEMORY[0x1B8C90530](v40);

    MEMORY[0x1B8C90530](v51, v52);

    v26 = v53;
    goto LABEL_9;
  }

  sub_1B620E044(v27, &qword_1EB924F08);
  sub_1B6220784();
  return v26;
}

void sub_1B6209A00()
{
  v0 = sub_1B621D8F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v4 = sub_1B6220BD4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  if (sub_1B6067284())
  {
    sub_1B6220D64();
    v13[3] = v0;
    v13[4] = MEMORY[0x1E69D6130];
    __swift_allocate_boxed_opaque_existential_1(v13);
    type metadata accessor for WeatherClock();
    static WeatherClock.date.getter();
    sub_1B621D854();
    (*(v1 + 8))(v3, v0);
    sub_1B6220CF4();
    __swift_destroy_boxed_opaque_existential_1(v13);
    sub_1B6220DC4();

    (*(v5 + 8))(v7, v4);
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v8 = sub_1B6220B34();
    __swift_project_value_buffer(v8, qword_1EDAC2AB0);
    v9 = sub_1B6220B14();
    v10 = sub_1B62217F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B6020000, v9, v10, "Purged expired forecastPeriod data", v11, 2u);
      MEMORY[0x1B8C91C90](v11, -1, -1);
    }
  }
}

void sub_1B6209E4C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v60 = a4;
  v61 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v59 = v50 - v11;
  v12 = sub_1B621D8F4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Metadata();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a6;
  v20 = sub_1B6067284();
  if (v20)
  {
    v21 = v20;
    v62[0] = v19;
    sub_1B6036A80(a1, v18);
    (*(v13 + 16))(v15, a1 + *(v16 + 20), v12);
    sub_1B6220784();
    sub_1B6220784();
    sub_1B6199394(v61, a3, v60, a5, v62, v18, v15, &v63);
    v57 = v12;
    v58 = a3;
    v56 = v13;
    v22 = v63;
    v23 = v64;
    v24 = v65;
    v25 = v66;
    v26 = v67;
    v27 = v68;
    v28 = v69;
    v60 = v21;
    sub_1B6220D34();
    v63 = v22;
    v64 = v23;
    v65 = v24;
    v66 = v25;
    v67 = v26;
    v68 = v27;
    v69 = v28;
    sub_1B6220D04();
    v53 = v28;
    v54 = v27;
    v55 = v23;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v33 = sub_1B6220B34();
    __swift_project_value_buffer(v33, qword_1EDAC2AB0);
    sub_1B6220784();

    v34 = sub_1B6220B14();
    v35 = sub_1B62217F4();

    v52 = v24;
    v36 = v58;

    v51 = v35;
    if (os_log_type_enabled(v34, v35))
    {
      v50[2] = v22;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v63 = v38;
      *v37 = 141558787;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      *(v37 + 14) = sub_1B602EEB0(v61, v36, &v63);
      *(v37 + 22) = 2080;
      v50[1] = v25;
      v39 = v34;
      if (v19)
      {
        if (v19 == 1)
        {
          v40 = 0xE500000000000000;
          v41 = 0x796C696164;
        }

        else
        {
          v40 = 0xE800000000000000;
          v41 = 0x6369646F69726570;
        }
      }

      else
      {
        v40 = 0xE600000000000000;
        v41 = 0x796C72756F68;
      }

      v42 = v59;
      v43 = sub_1B602EEB0(v41, v40, &v63);

      *(v37 + 24) = v43;
      *(v37 + 32) = 2080;
      sub_1B6220D84();
      v44 = v57;
      if (__swift_getEnumTagSinglePayload(v42, 1, v57) == 1)
      {
        __break(1u);
      }

      else
      {
        sub_1B60CDD24();
        v46 = v45;
        v48 = v47;
        (*(v56 + 8))(v42, v44);
        v49 = sub_1B602EEB0(v46, v48, &v63);

        *(v37 + 34) = v49;
        _os_log_impl(&dword_1B6020000, v39, v51, "Just cached metadata; identifier=%{private,mask.hash}s, type=%s. It expires %s", v37, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1B8C91C90](v38, -1, -1);
        MEMORY[0x1B8C91C90](v37, -1, -1);
      }
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v29 = sub_1B6220B34();
    __swift_project_value_buffer(v29, qword_1EDAC2AB0);
    v61 = sub_1B6220B14();
    v30 = sub_1B62217E4();
    if (os_log_type_enabled(v61, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1B6020000, v61, v30, "Cannot cache metadata due to missing store", v31, 2u);
      MEMORY[0x1B8C91C90](v31, -1, -1);
    }

    v32 = v61;
  }
}

void sub_1B620A68C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v50 - v10;
  v12 = sub_1B621D8F4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v50 - v17;
  v19 = sub_1B6067284();
  if (v19)
  {
    v20 = v19;
    v64 = v4;
    type metadata accessor for WeatherClock();
    sub_1B6220784();
    static WeatherClock.date.getter();
    sub_1B621D844();
    v21 = *(v13 + 8);
    v21(v15, v12);
    sub_1B61D1D20(*&a1, a2, v18, &v65, a3, a4, a3, a4);
    v60 = v12;
    v61 = a2;
    v57 = v21;
    v58 = v11;
    v59 = a1;
    v22 = v20;
    v24 = v65;
    v23 = v66;
    v25 = v67;
    v26 = v68;
    v28 = v69;
    v27 = v70;
    v29 = v71;
    v62 = v22;
    sub_1B6220D34();
    v63 = v24;
    v65 = v24;
    v66 = v23;
    v67 = v25;
    v68 = v26;
    v69 = v28;
    v70 = v27;
    v71 = v29;
    sub_1B6220D04();
    v54 = v29;
    v55 = v27;
    v56 = v25;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v34 = sub_1B6220B34();
    __swift_project_value_buffer(v34, qword_1EDAC2AB0);
    v35 = v61;
    sub_1B6220784();

    v36 = sub_1B6220B14();
    v37 = sub_1B62217F4();

    v53 = v28;

    v52 = v23;

    v51 = v37;
    v38 = os_log_type_enabled(v36, v37);
    v39 = v60;
    if (v38)
    {
      v40 = v36;
      v50[1] = v26;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v65 = v42;
      *v41 = 141558531;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      *(v41 + 14) = sub_1B602EEB0(v59, v35, &v65);
      *(v41 + 22) = 2080;
      v43 = v58;
      sub_1B6220D84();
      if (__swift_getEnumTagSinglePayload(v43, 1, v39) == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v45 = v44;
      v47 = v46;
      v57(v43, v39);
      v48 = sub_1B602EEB0(v45, v47, &v65);

      *(v41 + 24) = v48;
      _os_log_impl(&dword_1B6020000, v40, v51, "Just cached marineLocation; identifier=%{private,mask.hash}s. It expires %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v42, -1, -1);
      MEMORY[0x1B8C91C90](v41, -1, -1);

      v49 = v64;
    }

    else
    {

      v49 = v64;
    }

    if (*(&v49->isa + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61ACCD0();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v30 = sub_1B6220B34();
    __swift_project_value_buffer(v30, qword_1EDAC2AB0);
    v64 = sub_1B6220B14();
    v31 = sub_1B62217F4();
    if (os_log_type_enabled(v64, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1B6020000, v64, v31, "Cannot cache marineLocation due to missing store", v32, 2u);
      MEMORY[0x1B8C91C90](v32, -1, -1);
    }

    v33 = v64;
  }
}

uint64_t sub_1B620AE9C(void (*a1)(void), char a2, void (*a3)(_BYTE *))
{
  result = sub_1B6067284();
  if (result)
  {
    a1();
    sub_1B621DC04();
    sub_1B621DBF4();
    if (qword_1EDAB0960 != -1)
    {
      swift_once();
    }

    sub_1B621DBE4();

    if (v7[1] == 1)
    {
      v7[0] = a2;
      a3(v7);
    }
  }

  return result;
}

uint64_t sub_1B620AF78()
{
  v1 = OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_cacheProcessingStream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925178);
  OUTLINED_FUNCTION_31();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_cacheProcessingContinuation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925170);
  OUTLINED_FUNCTION_31();
  (*(v4 + 8))(v0 + v3);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_interpolator);

  return v0;
}

uint64_t sub_1B620B078()
{
  sub_1B620AF78();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1B620B0D8()
{
  sub_1B620B22C(319, &qword_1EDAB09B0, MEMORY[0x1E69E8698]);
  if (v0 <= 0x3F)
  {
    sub_1B620B22C(319, &qword_1EDAB09B8, MEMORY[0x1E69E8660]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B620B22C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for WeatherDataManager.CacheProcessingRequest(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1B620B2B4()
{
  sub_1B6107130();
  if (v0 <= 0x3F)
  {
    sub_1B620B368();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLLocationCoordinate2D(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for WeatherRequestOptions();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B620B368()
{
  if (!qword_1EDAB09C8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925000);
    sub_1B604D954();
    v0 = sub_1B6221134();
    if (!v1)
    {
      atomic_store(v0, qword_1EDAB09C8);
    }
  }
}

uint64_t sub_1B620B524()
{
  v0 = sub_1B621D8F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B621D354();
  swift_getAtKeyPath();
  v4 = *(v1 + 8);
  v4(v3, v0);
  v8 = v6;
  v9 = v7;
  MEMORY[0x1B8C90530](58, 0xE100000000000000);
  sub_1B621D334();
  swift_getAtKeyPath();
  v4(v3, v0);
  MEMORY[0x1B8C90530](v6, v7);

  return v8;
}

uint64_t sub_1B620B674(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B620B76C;

  return v6(a1);
}

uint64_t sub_1B620B76C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v1 = *v0;
  OUTLINED_FUNCTION_1_17();
  *v2 = v1;

  OUTLINED_FUNCTION_3_17();

  return v3();
}

uint64_t sub_1B620B850()
{
  v1 = OUTLINED_FUNCTION_3();
  v2(v1);
  OUTLINED_FUNCTION_31();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B620B8A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *))
{
  v7 = OUTLINED_FUNCTION_3();
  v9 = v8(v7);
  OUTLINED_FUNCTION_0(v9);
  v11 = v10;
  v12 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = a3(v12);
  }

  v13 = *(v12 + 16);
  v15[0] = v12 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v15[1] = v13;
  result = a4(v15);
  *v4 = v12;
  return result;
}

void sub_1B620BD24()
{
  OUTLINED_FUNCTION_12_0();
  v38 = v1;
  v39 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v37 = v10(0);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29[-v18];
  v31 = v7;
  if (v5 != v7)
  {
    v20 = *(v17 + 72);
    v21 = *v3 + v20 * (v5 - 1);
    v22 = -v20;
    v23 = v9 - v5;
    v36 = *v3;
    v30 = v20;
    v24 = v36 + v20 * v5;
    while (2)
    {
      v34 = v21;
      v35 = v5;
      v32 = v24;
      v33 = v23;
      v25 = v23;
      v26 = v21;
      do
      {
        sub_1B6036A80(v24, v19);
        sub_1B6036A80(v26, v15);
        v27 = sub_1B621D834();
        sub_1B620B850();
        OUTLINED_FUNCTION_10_0();
        sub_1B620B850();
        if ((v27 & 1) == 0)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return;
        }

        sub_1B605A29C(v24, v12);
        swift_arrayInitWithTakeFrontToBack();
        sub_1B605A29C(v12, v26);
        v26 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v25++, 1));
      v5 = v35 + 1;
      v21 = v34 + v30;
      v23 = v33 - 1;
      v24 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_13();
}

void sub_1B620BF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_12_0();
  v157 = v24;
  v158 = v23;
  v159 = v25;
  v154 = v21;
  v27 = v26;
  v29 = v28;
  v142 = v30;
  v149 = a21;
  v156 = v31(0);
  OUTLINED_FUNCTION_2();
  v150 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_3();
  v145 = v34;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_16();
  v155 = v36;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_127_1();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v138 - v39;
  v153 = v29;
  v41 = v29[1];
  if (v41 < 1)
  {
    v43 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v159 = *v142;
    if (!*v142)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v154;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_102:
      v130 = v43 + 16;
      v131 = *(v43 + 2);
      while (v131 >= 2)
      {
        if (!*v153)
        {
          goto LABEL_138;
        }

        v132 = v43;
        v133 = &v43[16 * v131];
        v134 = *v133;
        v135 = &v130[2 * v131];
        v136 = *(v135 + 1);
        v149(*v153 + *(v150 + 72) * *v133, *v153 + *(v150 + 72) * *v135, *v153 + *(v150 + 72) * v136, v159);
        if (v45)
        {
          break;
        }

        if (v136 < v134)
        {
          goto LABEL_126;
        }

        if (v131 - 2 >= *v130)
        {
          goto LABEL_127;
        }

        *v133 = v134;
        *(v133 + 1) = v136;
        v137 = *v130 - v131;
        if (*v130 < v131)
        {
          goto LABEL_128;
        }

        v131 = *v130 - 1;
        sub_1B61B174C(v135 + 16, v137, v135);
        *v130 = v131;
        v43 = v132;
      }

LABEL_110:

      OUTLINED_FUNCTION_13();
      return;
    }

LABEL_135:
    v43 = sub_1B61B1734();
    goto LABEL_102;
  }

  v140 = v27;
  v42 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  v146 = &v138 - v39;
  while (1)
  {
    v44 = v42;
    v45 = v42 + 1;
    if (v42 + 1 < v41)
    {
      v46 = *v153;
      v47 = *(v150 + 72);
      v48 = *v153 + v47 * v45;
      v49 = v42;
      v151 = v41;
      sub_1B6036A80(v48, v40);
      sub_1B6036A80(v46 + v47 * v44, v22);
      LODWORD(v148) = sub_1B621D834();
      sub_1B620B850();
      sub_1B620B850();
      v50 = v151;
      v141 = v49;
      v51 = v49 + 2;
      v152 = v47;
      v52 = v46 + v47 * (v49 + 2);
      while (1)
      {
        v53 = v51;
        if (++v45 >= v50)
        {
          break;
        }

        v54 = OUTLINED_FUNCTION_5_2();
        sub_1B6036A80(v54, v55);
        v56 = OUTLINED_FUNCTION_10_0();
        sub_1B6036A80(v56, v57);
        v58 = sub_1B621D834() & 1;
        sub_1B620B850();
        sub_1B620B850();
        v52 += v152;
        v48 += v152;
        v51 = v53 + 1;
        v50 = v151;
        if ((v148 & 1) != v58)
        {
          goto LABEL_9;
        }
      }

      v45 = v50;
LABEL_9:
      if (v148)
      {
        v59 = v141;
        if (v45 < v141)
        {
          goto LABEL_132;
        }

        if (v141 >= v45)
        {
          v44 = v141;
          goto LABEL_31;
        }

        v139 = v43;
        if (v50 >= v53)
        {
          v60 = v53;
        }

        else
        {
          v60 = v50;
        }

        v61 = v152 * (v60 - 1);
        v62 = v152 * v60;
        v63 = v141 * v152;
        v64 = v45;
        v151 = v45;
        do
        {
          if (v59 != --v64)
          {
            v65 = *v153;
            if (!*v153)
            {
              goto LABEL_139;
            }

            sub_1B605A29C(v65 + v63, v145);
            v66 = v63 < v61 || v65 + v63 >= (v65 + v62);
            if (v66)
            {
              OUTLINED_FUNCTION_206();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v63 != v61)
            {
              OUTLINED_FUNCTION_206();
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1B605A29C(v145, v65 + v61);
            v45 = v151;
          }

          ++v59;
          v61 -= v152;
          v62 -= v152;
          v63 += v152;
        }

        while (v59 < v64);
        v43 = v139;
      }

      v44 = v141;
    }

LABEL_31:
    v67 = v153[1];
    if (v45 < v67)
    {
      if (__OFSUB__(v45, v44))
      {
        goto LABEL_131;
      }

      if (v45 - v44 < v140)
      {
        break;
      }
    }

LABEL_47:
    if (v45 < v44)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B609B43C();
      v43 = v127;
    }

    v81 = *(v43 + 2);
    v82 = v81 + 1;
    if (v81 >= *(v43 + 3) >> 1)
    {
      sub_1B609B43C();
      v43 = v128;
    }

    *(v43 + 2) = v82;
    v83 = v43 + 32;
    v84 = &v43[16 * v81 + 32];
    *v84 = v44;
    *(v84 + 1) = v45;
    v152 = *v142;
    if (!v152)
    {
      goto LABEL_140;
    }

    v151 = v45;
    if (v81)
    {
      while (1)
      {
        v85 = v82 - 1;
        v86 = &v83[16 * v82 - 16];
        v87 = &v43[16 * v82];
        if (v82 >= 4)
        {
          break;
        }

        if (v82 == 3)
        {
          v88 = *(v43 + 4);
          v89 = *(v43 + 5);
          v98 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          v91 = v98;
LABEL_67:
          if (v91)
          {
            goto LABEL_117;
          }

          v103 = *v87;
          v102 = *(v87 + 1);
          v104 = __OFSUB__(v102, v103);
          v105 = v102 - v103;
          v106 = v104;
          if (v104)
          {
            goto LABEL_120;
          }

          v107 = *(v86 + 1);
          v108 = v107 - *v86;
          if (__OFSUB__(v107, *v86))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v105, v108))
          {
            goto LABEL_125;
          }

          if (v105 + v108 >= v90)
          {
            if (v90 < v108)
            {
              v85 = v82 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (v82 < 2)
        {
          goto LABEL_119;
        }

        v110 = *v87;
        v109 = *(v87 + 1);
        v98 = __OFSUB__(v109, v110);
        v105 = v109 - v110;
        v106 = v98;
LABEL_82:
        if (v106)
        {
          goto LABEL_122;
        }

        v112 = *v86;
        v111 = *(v86 + 1);
        v98 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v98)
        {
          goto LABEL_124;
        }

        if (v113 < v105)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v85 - 1 >= v82)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v153)
        {
          goto LABEL_137;
        }

        v117 = v22;
        v118 = &v83[16 * v85 - 16];
        v119 = *v118;
        v120 = v85;
        v121 = &v83[16 * v85];
        v122 = *(v121 + 1);
        v123 = v154;
        v149(*v153 + *(v150 + 72) * *v118, *v153 + *(v150 + 72) * *v121, *v153 + *(v150 + 72) * v122, v152);
        v154 = v123;
        if (v123)
        {
          goto LABEL_110;
        }

        if (v122 < v119)
        {
          goto LABEL_112;
        }

        v45 = v83;
        v124 = v43;
        v125 = *(v43 + 2);
        if (v120 > v125)
        {
          goto LABEL_113;
        }

        *v118 = v119;
        *(v118 + 1) = v122;
        if (v120 >= v125)
        {
          goto LABEL_114;
        }

        v82 = v125 - 1;
        sub_1B61B174C(v121 + 16, v125 - 1 - v120, v121);
        *(v124 + 2) = v125 - 1;
        v126 = v125 > 2;
        v43 = v124;
        v83 = v45;
        v22 = v117;
        v40 = v146;
        if (!v126)
        {
          goto LABEL_96;
        }
      }

      v92 = &v83[16 * v82];
      v93 = *(v92 - 8);
      v94 = *(v92 - 7);
      v98 = __OFSUB__(v94, v93);
      v95 = v94 - v93;
      if (v98)
      {
        goto LABEL_115;
      }

      v97 = *(v92 - 6);
      v96 = *(v92 - 5);
      v98 = __OFSUB__(v96, v97);
      v90 = v96 - v97;
      v91 = v98;
      if (v98)
      {
        goto LABEL_116;
      }

      v99 = *(v87 + 1);
      v100 = v99 - *v87;
      if (__OFSUB__(v99, *v87))
      {
        goto LABEL_118;
      }

      v98 = __OFADD__(v90, v100);
      v101 = v90 + v100;
      if (v98)
      {
        goto LABEL_121;
      }

      if (v101 >= v95)
      {
        v115 = *v86;
        v114 = *(v86 + 1);
        v98 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v98)
        {
          goto LABEL_129;
        }

        if (v90 < v116)
        {
          v85 = v82 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v41 = v153[1];
    v42 = v151;
    if (v151 >= v41)
    {
      goto LABEL_100;
    }
  }

  v68 = v44 + v140;
  if (__OFADD__(v44, v140))
  {
    goto LABEL_133;
  }

  if (v68 >= v67)
  {
    v68 = v153[1];
  }

  if (v68 < v44)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v45 == v68)
  {
    goto LABEL_47;
  }

  v139 = v43;
  v69 = *v153;
  v70 = *(v150 + 72);
  v71 = *v153 + v70 * (v45 - 1);
  v72 = -v70;
  v141 = v44;
  v73 = v44 - v45;
  v143 = v70;
  v144 = v68;
  v74 = v69 + v45 * v70;
LABEL_40:
  v151 = v45;
  v152 = v71;
  v147 = v74;
  v148 = v73;
  while (1)
  {
    v75 = OUTLINED_FUNCTION_5_2();
    sub_1B6036A80(v75, v76);
    v77 = OUTLINED_FUNCTION_10_0();
    sub_1B6036A80(v77, v78);
    v79 = sub_1B621D834();
    sub_1B620B850();
    sub_1B620B850();
    if ((v79 & 1) == 0)
    {
LABEL_45:
      v45 = v151 + 1;
      v71 = v152 + v143;
      v73 = v148 - 1;
      v74 = v147 + v143;
      if (v151 + 1 == v144)
      {
        v45 = v144;
        v43 = v139;
        v44 = v141;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v69)
    {
      break;
    }

    v80 = v155;
    sub_1B605A29C(v74, v155);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B605A29C(v80, v71);
    v71 += v72;
    v74 += v72;
    v66 = __CFADD__(v73++, 1);
    if (v66)
    {
      goto LABEL_45;
    }
  }

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
}

void sub_1B620C750(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for DayForecast();
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v53 = a1;
  v52 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_1B609D420(a2, v16 / v13, a4);
    v27 = a4 + v19 * v13;
    v28 = -v13;
    v29 = v27;
    v45 = a1;
    v46 = v28;
LABEL_36:
    v30 = a2 + v28;
    v31 = a3;
    v43 = v29;
    v47 = a2 + v28;
    v48 = a2;
    while (1)
    {
      if (v27 <= a4)
      {
        v53 = v48;
        v51 = v29;
        goto LABEL_58;
      }

      if (v48 <= a1)
      {
        break;
      }

      v44 = v29;
      v32 = v31 + v28;
      v33 = v27 + v28;
      v34 = v27;
      v35 = v31;
      sub_1B6036A80(v27 + v28, v11);
      sub_1B6036A80(v30, v50);
      v36 = sub_1B621D834();
      sub_1B620B850();
      sub_1B620B850();
      if (v36)
      {
        if (v35 < v48 || v32 >= v48)
        {
          v39 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v44;
          a1 = v45;
          a3 = v32;
          a2 = v39;
          v28 = v46;
          v27 = v34;
        }

        else
        {
          v29 = v44;
          v15 = v35 == v48;
          v28 = v46;
          v40 = v47;
          a3 = v32;
          a2 = v47;
          v27 = v34;
          a1 = v45;
          if (!v15)
          {
            v41 = v44;
            swift_arrayInitWithTakeBackToFront();
            v27 = v34;
            a2 = v40;
            v29 = v41;
          }
        }

        goto LABEL_36;
      }

      if (v35 < v34 || v32 >= v34)
      {
        swift_arrayInitWithTakeFrontToBack();
        v31 = v32;
        v27 = v33;
        v29 = v33;
        v28 = v46;
        v30 = v47;
        a1 = v45;
      }

      else
      {
        v29 = v33;
        v15 = v34 == v35;
        v31 = v32;
        v27 = v33;
        v28 = v46;
        v30 = v47;
        a1 = v45;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v31 = v32;
          v27 = v33;
          v29 = v33;
        }
      }
    }

    v53 = v48;
    v51 = v43;
  }

  else
  {
    sub_1B609D420(a1, v14 / v13, a4);
    v48 = a4 + v18 * v13;
    v51 = v48;
    while (a4 < v48 && a2 < a3)
    {
      v21 = a3;
      sub_1B6036A80(a2, v11);
      v22 = a2;
      sub_1B6036A80(a4, v50);
      v23 = sub_1B621D834();
      sub_1B620B850();
      sub_1B620B850();
      if (v23)
      {
        a2 += v13;
        v24 = a1 < v22 || a1 >= a2;
        v25 = v22;
        if (v24)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v52 = a4 + v13;
        a4 += v13;
      }

      a1 += v13;
      v53 = a1;
    }
  }

LABEL_58:
  sub_1B620D100(&v53, &v52, &v51, type metadata accessor for DayForecast);
}

void sub_1B620CC10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for HourForecast();
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v53 = a1;
  v52 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_1B609D438(a2, v16 / v13, a4);
    v27 = a4 + v19 * v13;
    v28 = -v13;
    v29 = v27;
    v45 = a1;
    v46 = v28;
LABEL_36:
    v30 = a2 + v28;
    v31 = a3;
    v43 = v29;
    v47 = a2 + v28;
    v48 = a2;
    while (1)
    {
      if (v27 <= a4)
      {
        v53 = v48;
        v51 = v29;
        goto LABEL_58;
      }

      if (v48 <= a1)
      {
        break;
      }

      v44 = v29;
      v32 = v31 + v28;
      v33 = v27 + v28;
      v34 = v27;
      v35 = v31;
      sub_1B6036A80(v27 + v28, v11);
      sub_1B6036A80(v30, v50);
      v36 = sub_1B621D834();
      sub_1B620B850();
      sub_1B620B850();
      if (v36)
      {
        if (v35 < v48 || v32 >= v48)
        {
          v39 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v44;
          a1 = v45;
          a3 = v32;
          a2 = v39;
          v28 = v46;
          v27 = v34;
        }

        else
        {
          v29 = v44;
          v15 = v35 == v48;
          v28 = v46;
          v40 = v47;
          a3 = v32;
          a2 = v47;
          v27 = v34;
          a1 = v45;
          if (!v15)
          {
            v41 = v44;
            swift_arrayInitWithTakeBackToFront();
            v27 = v34;
            a2 = v40;
            v29 = v41;
          }
        }

        goto LABEL_36;
      }

      if (v35 < v34 || v32 >= v34)
      {
        swift_arrayInitWithTakeFrontToBack();
        v31 = v32;
        v27 = v33;
        v29 = v33;
        v28 = v46;
        v30 = v47;
        a1 = v45;
      }

      else
      {
        v29 = v33;
        v15 = v34 == v35;
        v31 = v32;
        v27 = v33;
        v28 = v46;
        v30 = v47;
        a1 = v45;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v31 = v32;
          v27 = v33;
          v29 = v33;
        }
      }
    }

    v53 = v48;
    v51 = v43;
  }

  else
  {
    sub_1B609D438(a1, v14 / v13, a4);
    v48 = a4 + v18 * v13;
    v51 = v48;
    while (a4 < v48 && a2 < a3)
    {
      v21 = a3;
      sub_1B6036A80(a2, v11);
      v22 = a2;
      sub_1B6036A80(a4, v50);
      v23 = sub_1B621D834();
      sub_1B620B850();
      sub_1B620B850();
      if (v23)
      {
        a2 += v13;
        v24 = a1 < v22 || a1 >= a2;
        v25 = v22;
        if (v24)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v52 = a4 + v13;
        a4 += v13;
      }

      a1 += v13;
      v53 = a1;
    }
  }

LABEL_58:
  sub_1B620D100(&v53, &v52, &v51, type metadata accessor for HourForecast);
}

void sub_1B620D100(unint64_t *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_9();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

unint64_t sub_1B620D1DC()
{
  result = qword_1EDAB06D8;
  if (!qword_1EDAB06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB06D8);
  }

  return result;
}

unint64_t sub_1B620D230()
{
  result = qword_1EDAB06D0;
  if (!qword_1EDAB06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB06D0);
  }

  return result;
}

unint64_t sub_1B620D284()
{
  result = qword_1EDAB06C8;
  if (!qword_1EDAB06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB06C8);
  }

  return result;
}

unint64_t sub_1B620D2D8()
{
  result = qword_1EB927BE8;
  if (!qword_1EB927BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927BE8);
  }

  return result;
}

unint64_t sub_1B620D32C()
{
  result = qword_1EB927BF0;
  if (!qword_1EB927BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927BF0);
  }

  return result;
}

uint64_t sub_1B620D3A0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  do
  {
    if (!v6)
    {
      break;
    }

    --v6;
    v7 = *(type metadata accessor for DayForecast() - 8);
    v8 = a1(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6);
    if (v3)
    {
      break;
    }
  }

  while ((v8 & 1) == 0);
  return v6;
}

unint64_t sub_1B620D474@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = *(type metadata accessor for DayForecast() - 8);
      return sub_1B6036A80(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, a3);
    }
  }

  __break(1u);
  return result;
}

void *sub_1B620D53C@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  if (a3)
  {
    v6 = type metadata accessor for DayForecast();
    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v6);
  }

  else
  {
    v9 = a2;
    result = a1(a4, &v9);
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v8 = type metadata accessor for DayForecast();
      return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
    }
  }

  return result;
}

uint64_t sub_1B620D5DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1B620D7B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B620D984(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_8_18();
  v4(v3);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_5_2();
  v6(v5);
  return a2;
}

void sub_1B620DA18()
{
  OUTLINED_FUNCTION_197_0();
  v0 = type metadata accessor for WeatherRequestOptions();
  OUTLINED_FUNCTION_0(v0);
  v1 = OUTLINED_FUNCTION_10_0();
  sub_1B61EC0B0(v1, v2, v3, v4);
}

uint64_t sub_1B620DAA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for WeatherServiceRequestLocation();
  OUTLINED_FUNCTION_0(v5);
  return sub_1B61E8B94(a1, v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80)), a2);
}

uint64_t sub_1B620DB58()
{
  OUTLINED_FUNCTION_197_0();
  v0 = type metadata accessor for WeatherInterpolationOptions();
  OUTLINED_FUNCTION_28_1(v0);
  v1 = sub_1B621DB64();
  OUTLINED_FUNCTION_0(v1);
  v2 = OUTLINED_FUNCTION_10_0();
  return sub_1B61ED460(v2, v3, v4, v5, v6, v7, v8);
}

unint64_t sub_1B620DC30()
{
  result = qword_1EDAAEBC8;
  if (!qword_1EDAAEBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEBC8);
  }

  return result;
}

unint64_t sub_1B620DC84()
{
  result = qword_1EDAAEBC0;
  if (!qword_1EDAAEBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEBC0);
  }

  return result;
}

uint64_t sub_1B620DCD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB927110);
    sub_1B620DC30();
    sub_1B620DC84();
    OUTLINED_FUNCTION_302();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B620DD4C()
{
  result = qword_1EDAAEAC8;
  if (!qword_1EDAAEAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB927110);
    sub_1B61A5068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEAC8);
  }

  return result;
}

uint64_t sub_1B620DDD0()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1B60D6D40;
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_180_0();

  return sub_1B61EE9F8(v11, v12, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B620DEB8()
{
  v1 = type metadata accessor for WeatherModel();
  OUTLINED_FUNCTION_28_1(v1);
  v2 = type metadata accessor for WeatherRequestOptions();
  OUTLINED_FUNCTION_0(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1B60D7AB4;
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_180_0();

  return sub_1B61EF1BC(v12, v13, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1B620E044(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_31();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B620E098(uint64_t a1)
{
  v4 = *(v1 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v2 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1B60D6D40;

  return sub_1B620B674(a1, v4);
}

uint64_t sub_1B620E14C()
{
  v1 = type metadata accessor for WeatherModel();
  OUTLINED_FUNCTION_28_1(v1);
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for WeatherRequestOptions();
  OUTLINED_FUNCTION_0(v6);
  return sub_1B61EF7A0(v0 + v4, *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v0 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v7 + 80) + 16) & ~*(v7 + 80)), *(v0 + v5), *(v0 + v5 + 8));
}

uint64_t OUTLINED_FUNCTION_102_2(uint64_t a1, uint64_t a2)
{
  *(v3 - 136) = v2;
  *(v3 - 112) = a1;
  *(v3 - 104) = a2;

  return sub_1B6220D94();
}

void OUTLINED_FUNCTION_130_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 160) = a7;
  *(v8 - 152) = a8;
  *(v8 - 168) = a6;
  *(v8 - 136) = a5;
}

uint64_t OUTLINED_FUNCTION_155_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_156_0()
{

  return sub_1B6220D74();
}

uint64_t OUTLINED_FUNCTION_158_0()
{

  return sub_1B621D8F4();
}

uint64_t OUTLINED_FUNCTION_171_0(double a1)
{
  *(v1 - 120) = round(a1) / v2;
  *(v1 - 112) = 0;
  return v1 - 120;
}

void OUTLINED_FUNCTION_181_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_182_0()
{
  *(v1 - 136) = v0;

  return sub_1B6220784();
}

void OUTLINED_FUNCTION_183_0(uint64_t a1@<X8>)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2081;

  JUMPOUT(0x1B8C906E0);
}

void OUTLINED_FUNCTION_184_0(uint64_t a1@<X8>)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2081;

  type metadata accessor for CLLocationCoordinate2D(0);
}

uint64_t OUTLINED_FUNCTION_185_0()
{

  return sub_1B6221234();
}

void OUTLINED_FUNCTION_209(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_215(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_218_0()
{

  return sub_1B6220784();
}

uint64_t OUTLINED_FUNCTION_219_0()
{

  return sub_1B621D8F4();
}

uint64_t OUTLINED_FUNCTION_220_0()
{
}

uint64_t OUTLINED_FUNCTION_221()
{
}

uint64_t OUTLINED_FUNCTION_223_0()
{
  *(v1 - 152) = v0;
}

uint64_t OUTLINED_FUNCTION_224()
{

  return sub_1B6220D74();
}

uint64_t OUTLINED_FUNCTION_225_0()
{

  return type metadata accessor for WeatherClock();
}

uint64_t WeatherAlert.id.getter()
{
  OUTLINED_FUNCTION_6_2();
  sub_1B621D944();
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_5_2();

  return v1(v0);
}

uint64_t WeatherAlert.id.setter()
{
  OUTLINED_FUNCTION_3();
  sub_1B621D944();
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t WeatherAlert.area.getter()
{
  OUTLINED_FUNCTION_6_2();
  v2 = *(v1 + *(type metadata accessor for WeatherAlert() + 20));
  *v0 = v2;

  return sub_1B615243C(v2);
}

uint64_t WeatherAlert.area.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for WeatherAlert() + 20);
  result = sub_1B615206C(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t WeatherAlert.area.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

uint64_t WeatherAlert.areaId.getter()
{
  type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_18_0();
  return OUTLINED_FUNCTION_5_2();
}

uint64_t WeatherAlert.areaId.setter()
{
  OUTLINED_FUNCTION_11_26();
  result = OUTLINED_FUNCTION_32_4();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WeatherAlert.areaId.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

uint64_t WeatherAlert.areaName.getter()
{
  type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_18_0();
  return OUTLINED_FUNCTION_5_2();
}

uint64_t WeatherAlert.areaName.setter()
{
  OUTLINED_FUNCTION_11_26();
  result = OUTLINED_FUNCTION_32_4();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WeatherAlert.areaName.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

uint64_t WeatherAlert.countryCode.getter()
{
  type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_18_0();
  return OUTLINED_FUNCTION_5_2();
}

uint64_t WeatherAlert.countryCode.setter()
{
  OUTLINED_FUNCTION_11_26();
  result = OUTLINED_FUNCTION_32_4();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WeatherAlert.countryCode.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

uint64_t WeatherAlert.description.getter()
{
  type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_18_0();
  return OUTLINED_FUNCTION_5_2();
}

uint64_t WeatherAlert.description.setter()
{
  OUTLINED_FUNCTION_11_26();
  result = OUTLINED_FUNCTION_32_4();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WeatherAlert.description.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

uint64_t WeatherAlert.expireTime.getter()
{
  OUTLINED_FUNCTION_6_2();
  type metadata accessor for WeatherAlert();
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_21_17();

  return v1(v0);
}

uint64_t WeatherAlert.expireTime.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for WeatherAlert() + 40);
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t WeatherAlert.expireTime.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

uint64_t WeatherAlert.issuedTime.getter()
{
  OUTLINED_FUNCTION_6_2();
  type metadata accessor for WeatherAlert();
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_21_17();

  return v1(v0);
}

uint64_t WeatherAlert.issuedTime.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for WeatherAlert() + 44);
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t WeatherAlert.issuedTime.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

uint64_t WeatherAlert.effectiveTime.getter()
{
  OUTLINED_FUNCTION_6_2();
  type metadata accessor for WeatherAlert();
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_21_17();

  return v1(v0);
}

uint64_t WeatherAlert.effectiveTime.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for WeatherAlert() + 48);
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t WeatherAlert.effectiveTime.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

uint64_t WeatherAlert.eventOnsetTime.getter()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1 + *(type metadata accessor for WeatherAlert() + 52);

  return sub_1B6058CE0(v2, v0);
}

uint64_t WeatherAlert.eventOnsetTime.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = v1 + *(type metadata accessor for WeatherAlert() + 52);

  return sub_1B603D764(v0, v2);
}

uint64_t WeatherAlert.eventOnsetTime.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

uint64_t WeatherAlert.eventEndTime.getter()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1 + *(type metadata accessor for WeatherAlert() + 56);

  return sub_1B6058CE0(v2, v0);
}

uint64_t WeatherAlert.eventEndTime.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = v1 + *(type metadata accessor for WeatherAlert() + 56);

  return sub_1B603D764(v0, v2);
}

uint64_t WeatherAlert.eventEndTime.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

uint64_t WeatherAlert.detailsUrl.getter()
{
  type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_18_0();
  return OUTLINED_FUNCTION_5_2();
}

uint64_t WeatherAlert.detailsUrl.setter()
{
  OUTLINED_FUNCTION_11_26();
  result = OUTLINED_FUNCTION_32_4();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WeatherAlert.detailsUrl.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

void WeatherAlert.certainty.getter()
{
  OUTLINED_FUNCTION_6_2();
  v0 = type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_3_40(*(v0 + 64));
}

uint64_t WeatherAlert.certainty.setter()
{
  result = OUTLINED_FUNCTION_30_10();
  *(v1 + *(result + 64)) = v0;
  return result;
}

uint64_t WeatherAlert.certainty.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

uint64_t WeatherAlert.phenomenon.getter()
{
  type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_18_0();
  return OUTLINED_FUNCTION_5_2();
}

uint64_t WeatherAlert.phenomenon.setter()
{
  OUTLINED_FUNCTION_11_26();
  result = OUTLINED_FUNCTION_32_4();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WeatherAlert.phenomenon.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

uint64_t WeatherAlert.responses.getter()
{
  type metadata accessor for WeatherAlert();

  return sub_1B6220784();
}

uint64_t WeatherAlert.responses.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for WeatherAlert() + 72);

  *(v1 + v2) = v0;
  return result;
}

uint64_t WeatherAlert.responses.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

void WeatherAlert.severity.getter()
{
  OUTLINED_FUNCTION_6_2();
  v0 = type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_3_40(*(v0 + 76));
}

uint64_t WeatherAlert.severity.setter()
{
  result = OUTLINED_FUNCTION_30_10();
  *(v1 + *(result + 76)) = v0;
  return result;
}

uint64_t WeatherAlert.severity.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

void WeatherAlert.significance.getter()
{
  OUTLINED_FUNCTION_6_2();
  v0 = type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_3_40(*(v0 + 80));
}

uint64_t WeatherAlert.significance.setter()
{
  result = OUTLINED_FUNCTION_30_10();
  *(v1 + *(result + 80)) = v0;
  return result;
}

uint64_t WeatherAlert.significance.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

uint64_t WeatherAlert.source.getter()
{
  type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_18_0();
  return OUTLINED_FUNCTION_5_2();
}

uint64_t WeatherAlert.source.setter()
{
  OUTLINED_FUNCTION_11_26();
  result = OUTLINED_FUNCTION_32_4();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WeatherAlert.source.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

uint64_t WeatherAlert.eventSource.getter()
{
  type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_18_0();
  return OUTLINED_FUNCTION_5_2();
}

uint64_t WeatherAlert.eventSource.setter()
{
  OUTLINED_FUNCTION_11_26();
  result = OUTLINED_FUNCTION_32_4();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WeatherAlert.eventSource.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

void WeatherAlert.urgency.getter()
{
  OUTLINED_FUNCTION_6_2();
  v0 = type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_3_40(*(v0 + 92));
}

uint64_t WeatherAlert.urgency.setter()
{
  result = OUTLINED_FUNCTION_30_10();
  *(v1 + *(result + 92)) = v0;
  return result;
}

uint64_t WeatherAlert.urgency.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

uint64_t WeatherAlert.messages.getter()
{
  type metadata accessor for WeatherAlert();

  return sub_1B6220784();
}

uint64_t WeatherAlert.messages.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for WeatherAlert() + 96);

  *(v1 + v2) = v0;
  return result;
}

uint64_t WeatherAlert.messages.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

void WeatherAlert.importance.getter()
{
  OUTLINED_FUNCTION_6_2();
  v0 = type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_3_40(*(v0 + 100));
}

uint64_t WeatherAlert.importance.setter()
{
  result = OUTLINED_FUNCTION_30_10();
  *(v1 + *(result + 100)) = v0;
  return result;
}

uint64_t WeatherAlert.importance.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlert();
  return OUTLINED_FUNCTION_5();
}

uint64_t WeatherAlert.init(id:area:areaId:areaName:countryCode:description:expireTime:issuedTime:effectiveTime:eventOnsetTime:eventEndTime:detailsUrl:certainty:phenomenon:responses:severity:significance:source:eventSource:urgency:messages:importance:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, char *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char *a29, uint64_t a30, char *a31)
{
  v54 = *a2;
  v69 = *a19;
  v70 = *a24;
  v71 = *a23;
  v72 = *a29;
  v73 = *a31;
  v32 = type metadata accessor for WeatherAlert();
  v33 = v32[5];
  *(a9 + v33) = 0xF000000000000007;
  v34 = (a9 + v32[6]);
  v35 = (a9 + v32[7]);
  v36 = (a9 + v32[8]);
  v61 = v32[13];
  v37 = sub_1B621D8F4();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  v60 = v32[14];
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v37);
  v55 = v32[16];
  v44 = (a9 + v32[15]);
  *(a9 + v55) = 5;
  v45 = (a9 + v32[17]);
  v57 = v32[20];
  *(a9 + v57) = 13;
  v46 = v32[22];
  v47 = v32[23];
  *(a9 + v47) = 5;
  v48 = (a9 + v46);
  v58 = v32[24];
  v59 = v47;
  v56 = v32[25];
  *(a9 + v56) = 4;
  sub_1B621D944();
  OUTLINED_FUNCTION_9();
  (*(v49 + 32))(a9, a1);
  sub_1B615206C(*(a9 + v33));
  *(a9 + v33) = v54;
  *v34 = a3;
  v34[1] = a4;
  *v35 = a5;
  v35[1] = a6;
  *v36 = a7;
  v36[1] = a8;
  v50 = (a9 + v32[9]);
  *v50 = a10;
  v50[1] = a11;
  v51 = *(*(v37 - 8) + 32);
  v51(a9 + v32[10], a12, v37);
  v51(a9 + v32[11], a13, v37);
  v51(a9 + v32[12], a14, v37);
  sub_1B603D764(a15, a9 + v61);
  result = sub_1B603D764(a16, a9 + v60);
  *v44 = a17;
  v44[1] = a18;
  *(a9 + v55) = v69;
  *v45 = a20;
  v45[1] = a21;
  *(a9 + v32[18]) = a22;
  *(a9 + v32[19]) = v71;
  *(a9 + v57) = v70;
  v53 = (a9 + v32[21]);
  *v53 = a25;
  v53[1] = a26;
  *v48 = a27;
  v48[1] = a28;
  *(a9 + v59) = v72;
  *(a9 + v58) = a30;
  *(a9 + v56) = v73;
  return result;
}

uint64_t WeatherAlert.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_2_3();
  v106 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v107 = v72 - v6;
  sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v109 = v8;
  v110 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_3();
  v108 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v72 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v72 - v14;
  v16 = sub_1B621D944();
  OUTLINED_FUNCTION_2();
  v111 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927C78);
  OUTLINED_FUNCTION_2();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v72 - v24;
  v26 = a1[3];
  v115 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1B62106FC();
  v112 = v25;
  v27 = v114;
  sub_1B62220D4();
  if (!v27)
  {
    v103 = v12;
    v114 = v15;
    v104 = v22;
    LOBYTE(v129) = 0;
    OUTLINED_FUNCTION_15_25();
    sub_1B621196C(v28, v29);
    sub_1B6221DD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927C80);
    LOBYTE(v129) = 1;
    sub_1B621191C(&qword_1EDAAF748);
    sub_1B6221D84();
    v102 = v16;
    v101 = v20;
    v31 = v131[1];
    LOBYTE(v127) = 2;
    OUTLINED_FUNCTION_9_32();
    sub_1B6221D24();
    v32 = v130;
    v100 = v129;
    LOBYTE(v126[0]) = 3;
    OUTLINED_FUNCTION_9_32();
    sub_1B6221D24();
    v34 = v127;
    v33 = v128;
    LOBYTE(v124) = 4;
    OUTLINED_FUNCTION_9_32();
    sub_1B6221D24();
    v36 = v126[0];
    v35 = v126[1];
    LOBYTE(v124) = 5;
    v93 = sub_1B6221D94();
    v94 = v34;
    v95 = v37;
    v99 = v31;
    v96 = v35;
    v97 = v33;
    v98 = v32;
    LOBYTE(v124) = 6;
    OUTLINED_FUNCTION_14_25();
    sub_1B621196C(v38, v39);
    OUTLINED_FUNCTION_10_27();
    sub_1B6221DD4();
    OUTLINED_FUNCTION_36_9(7);
    OUTLINED_FUNCTION_10_27();
    sub_1B6221DD4();
    OUTLINED_FUNCTION_36_9(8);
    OUTLINED_FUNCTION_10_27();
    sub_1B6221DD4();
    OUTLINED_FUNCTION_36_9(9);
    OUTLINED_FUNCTION_10_27();
    sub_1B6221D84();
    OUTLINED_FUNCTION_36_9(10);
    OUTLINED_FUNCTION_10_27();
    sub_1B6221D84();
    LOBYTE(v121) = 11;
    OUTLINED_FUNCTION_9_32();
    sub_1B6221D24();
    v40 = v125;
    v92 = v124;
    LOBYTE(v121) = 12;
    sub_1B6210750();
    OUTLINED_FUNCTION_20();
    sub_1B6221D24();
    v91 = v123;
    v120 = 13;
    OUTLINED_FUNCTION_9_32();
    sub_1B6221D24();
    v42 = v121;
    v41 = v122;
    v120 = 14;
    sub_1B62107A4();
    OUTLINED_FUNCTION_20();
    v43 = sub_1B6221D14();
    v44 = v102;
    v88 = v42;
    v45 = v43;
    v89 = v41;
    v90 = v40;
    v119 = 15;
    sub_1B62107F8();
    OUTLINED_FUNCTION_20();
    sub_1B6221DD4();
    v86 = v120;
    v118 = 16;
    sub_1B621084C();
    OUTLINED_FUNCTION_20();
    sub_1B6221D24();
    v85 = v119;
    v118 = 17;
    v84 = sub_1B6221D94();
    v87 = v46;
    v118 = 17;
    v83 = sub_1B6221D94();
    v82 = v47;
    v117 = 19;
    sub_1B62108A0();
    v48 = v112;
    v49 = v113;
    OUTLINED_FUNCTION_20();
    sub_1B6221D24();
    v81 = v118;
    v117 = 20;
    sub_1B62108F4();
    OUTLINED_FUNCTION_20();
    v80 = sub_1B6221D34();
    v116 = 21;
    sub_1B6210948();
    OUTLINED_FUNCTION_20();
    sub_1B6221D24();
    OUTLINED_FUNCTION_22_13();
    v50(v48, v49);
    LODWORD(v113) = v117;
    v51 = type metadata accessor for WeatherAlert();
    v52 = v51[5];
    v53 = v105;
    *(v105 + v52) = 0xF000000000000007;
    v54 = (v53 + v51[6]);
    v72[1] = v53 + v51[7];
    v72[0] = v53 + v51[8];
    v112 = v51[13];
    OUTLINED_FUNCTION_3_10();
    v55 = v110;
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v110);
    v104 = v51[14];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v55);
    v62 = v51[15];
    v73 = v51[16];
    v74 = v53 + v62;
    *(v53 + v73) = 5;
    v72[2] = v53 + v51[17];
    v76 = v51[20];
    *(v53 + v76) = 13;
    v63 = v51[22];
    v78 = v51[23];
    v77 = v53 + v63;
    *(v53 + v78) = 5;
    v79 = v51[24];
    v75 = v51[25];
    *(v53 + v75) = 4;
    (*(v111 + 32))(v53, v101, v44);
    sub_1B615206C(*(v53 + v52));
    *(v53 + v52) = v99;
    v64 = v98;
    *v54 = v100;
    v54[1] = v64;
    OUTLINED_FUNCTION_31_9(v131);
    v65 = v72[0];
    v66 = v96;
    *v72[0] = v36;
    *(v65 + 8) = v66;
    v67 = (v53 + v51[9]);
    v68 = v95;
    *v67 = v93;
    v67[1] = v68;
    v69 = *(v109 + 32);
    v69(v53 + v51[10], v114, v55);
    v69(v53 + v51[11], v103, v55);
    v69(v53 + v51[12], v108, v55);
    sub_1B603D764(v107, &v112[v53]);
    sub_1B603D764(v106, v53 + v104);
    OUTLINED_FUNCTION_31_9(v126);
    OUTLINED_FUNCTION_35_8(v91);
    OUTLINED_FUNCTION_31_9(&v125);
    *(v53 + v51[18]) = v45;
    *(v53 + v51[19]) = v86;
    OUTLINED_FUNCTION_35_8(v85);
    v70 = (v53 + v51[21]);
    v71 = v87;
    *v70 = v84;
    v70[1] = v71;
    OUTLINED_FUNCTION_31_9(&v115);
    OUTLINED_FUNCTION_35_8(v81);
    *(v53 + v79) = v80;
    OUTLINED_FUNCTION_35_8(v113);
  }

  return __swift_destroy_boxed_opaque_existential_1(v115);
}

unint64_t sub_1B62106FC()
{
  result = qword_1EDAAFB50;
  if (!qword_1EDAAFB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFB50);
  }

  return result;
}

unint64_t sub_1B6210750()
{
  result = qword_1EDAAF700;
  if (!qword_1EDAAF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF700);
  }

  return result;
}

unint64_t sub_1B62107A4()
{
  result = qword_1EDAAFA58;
  if (!qword_1EDAAFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFA58);
  }

  return result;
}

unint64_t sub_1B62107F8()
{
  result = qword_1EDAAF718;
  if (!qword_1EDAAF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF718);
  }

  return result;
}

unint64_t sub_1B621084C()
{
  result = qword_1EDAAF8D0;
  if (!qword_1EDAAF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF8D0);
  }

  return result;
}

unint64_t sub_1B62108A0()
{
  result = qword_1EDAAF730;
  if (!qword_1EDAAF730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF730);
  }

  return result;
}

unint64_t sub_1B62108F4()
{
  result = qword_1EDAAFAD8;
  if (!qword_1EDAAFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFAD8);
  }

  return result;
}

unint64_t sub_1B6210948()
{
  result = qword_1EDAAFAE8;
  if (!qword_1EDAAFAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFAE8);
  }

  return result;
}

uint64_t sub_1B621099C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1634038369 && a2 == 0xE400000000000000;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x644961657261 && a2 == 0xE600000000000000;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D614E61657261 && a2 == 0xE800000000000000;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
          if (v9 || (sub_1B6221F24() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
            if (v10 || (sub_1B6221F24() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6954657269707865 && a2 == 0xEA0000000000656DLL;
              if (v11 || (sub_1B6221F24() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6954646575737369 && a2 == 0xEA0000000000656DLL;
                if (v12 || (sub_1B6221F24() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7669746365666665 && a2 == 0xED0000656D695465;
                  if (v13 || (sub_1B6221F24() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x736E4F746E657665 && a2 == 0xEE00656D69547465;
                    if (v14 || (sub_1B6221F24() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x646E45746E657665 && a2 == 0xEC000000656D6954;
                      if (v15 || (sub_1B6221F24() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x55736C6961746564 && a2 == 0xEA00000000006C72;
                        if (v16 || (sub_1B6221F24() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x746E696174726563 && a2 == 0xE900000000000079;
                          if (v17 || (sub_1B6221F24() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6E656D6F6E656870 && a2 == 0xEA00000000006E6FLL;
                            if (v18 || (sub_1B6221F24() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x65736E6F70736572 && a2 == 0xE900000000000073;
                              if (v19 || (sub_1B6221F24() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x7974697265766573 && a2 == 0xE800000000000000;
                                if (v20 || (sub_1B6221F24() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x636966696E676973 && a2 == 0xEC00000065636E61;
                                  if (v21 || (sub_1B6221F24() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
                                    if (v22 || (sub_1B6221F24() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x756F53746E657665 && a2 == 0xEB00000000656372;
                                      if (v23 || (sub_1B6221F24() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x79636E65677275 && a2 == 0xE700000000000000;
                                        if (v24 || (sub_1B6221F24() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x736567617373656DLL && a2 == 0xE800000000000000;
                                          if (v25 || (sub_1B6221F24() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else if (a1 == 0x6E6174726F706D69 && a2 == 0xEA00000000006563)
                                          {

                                            return 21;
                                          }

                                          else
                                          {
                                            v27 = sub_1B6221F24();

                                            if (v27)
                                            {
                                              return 21;
                                            }

                                            else
                                            {
                                              return 22;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B6211044(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1634038369;
      break;
    case 2:
      result = 0x644961657261;
      break;
    case 3:
      result = 0x656D614E61657261;
      break;
    case 4:
      result = 0x437972746E756F63;
      break;
    case 5:
      result = 0x7470697263736564;
      break;
    case 6:
      v3 = 0x657269707865;
      goto LABEL_19;
    case 7:
      v3 = 0x646575737369;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
      break;
    case 8:
      result = 0x7669746365666665;
      break;
    case 9:
      result = 0x736E4F746E657665;
      break;
    case 10:
      result = 0x646E45746E657665;
      break;
    case 11:
      result = 0x55736C6961746564;
      break;
    case 12:
      result = 0x746E696174726563;
      break;
    case 13:
      result = 0x6E656D6F6E656870;
      break;
    case 14:
      result = 0x65736E6F70736572;
      break;
    case 15:
      result = 0x7974697265766573;
      break;
    case 16:
      result = 0x636966696E676973;
      break;
    case 17:
      result = 0x656372756F73;
      break;
    case 18:
      result = 0x756F53746E657665;
      break;
    case 19:
      result = 0x79636E65677275;
      break;
    case 20:
      result = 0x736567617373656DLL;
      break;
    case 21:
      result = 0x6E6174726F706D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B62112C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B621099C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B62112F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B621103C();
  *a1 = result;
  return result;
}

uint64_t sub_1B6211318(uint64_t a1)
{
  v2 = sub_1B62106FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6211354(uint64_t a1)
{
  v2 = sub_1B62106FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherAlert.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927C88);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B62106FC();
  sub_1B62220F4();
  LOBYTE(v19) = 0;
  sub_1B621D944();
  OUTLINED_FUNCTION_15_25();
  sub_1B621196C(v11, v12);
  OUTLINED_FUNCTION_10_12();
  sub_1B6221EC4();
  if (!v2)
  {
    v13 = type metadata accessor for WeatherAlert();
    v19 = *(v3 + v13[5]);
    v18 = 1;
    sub_1B615243C(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927C80);
    sub_1B621191C(&qword_1EDAAF750);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_12();
    sub_1B6221E74();
    sub_1B615206C(v19);
    OUTLINED_FUNCTION_26_5(v13[6]);
    OUTLINED_FUNCTION_0_113(2);
    sub_1B6221E24();
    OUTLINED_FUNCTION_26_5(v13[7]);
    OUTLINED_FUNCTION_0_113(3);
    sub_1B6221E24();
    OUTLINED_FUNCTION_26_5(v13[8]);
    OUTLINED_FUNCTION_0_113(4);
    sub_1B6221E24();
    OUTLINED_FUNCTION_26_5(v13[9]);
    OUTLINED_FUNCTION_0_113(5);
    sub_1B6221E84();
    LOBYTE(v19) = 6;
    sub_1B621D8F4();
    OUTLINED_FUNCTION_14_25();
    sub_1B621196C(v14, v15);
    OUTLINED_FUNCTION_1_72();
    sub_1B6221EC4();
    LOBYTE(v19) = 7;
    OUTLINED_FUNCTION_1_72();
    sub_1B6221EC4();
    LOBYTE(v19) = 8;
    OUTLINED_FUNCTION_1_72();
    sub_1B6221EC4();
    LOBYTE(v19) = 9;
    OUTLINED_FUNCTION_1_72();
    sub_1B6221E74();
    LOBYTE(v19) = 10;
    OUTLINED_FUNCTION_1_72();
    sub_1B6221E74();
    OUTLINED_FUNCTION_26_5(v13[15]);
    OUTLINED_FUNCTION_0_113(11);
    sub_1B6221E24();
    OUTLINED_FUNCTION_25_15(v13[16]);
    v18 = 12;
    sub_1B62119B4();
    OUTLINED_FUNCTION_2_63();
    sub_1B6221E74();
    OUTLINED_FUNCTION_26_5(v13[17]);
    OUTLINED_FUNCTION_0_113(13);
    sub_1B6221E24();
    v19 = *(v3 + v13[18]);
    v18 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927C90);
    sub_1B6211B58(&qword_1EDAAF6D8, &qword_1EB927C90, &unk_1B6239FC8, sub_1B6211A08);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_12();
    sub_1B6221EC4();
    OUTLINED_FUNCTION_25_15(v13[19]);
    v18 = 15;
    sub_1B6211A5C();
    OUTLINED_FUNCTION_2_63();
    sub_1B6221EC4();
    OUTLINED_FUNCTION_25_15(v13[20]);
    v18 = 16;
    sub_1B6211AB0();
    OUTLINED_FUNCTION_2_63();
    sub_1B6221E74();
    OUTLINED_FUNCTION_26_5(v13[21]);
    OUTLINED_FUNCTION_0_113(17);
    sub_1B6221E84();
    OUTLINED_FUNCTION_26_5(v13[22]);
    OUTLINED_FUNCTION_0_113(18);
    sub_1B6221E24();
    OUTLINED_FUNCTION_25_15(v13[23]);
    v18 = 19;
    sub_1B6211B04();
    OUTLINED_FUNCTION_2_63();
    sub_1B6221E74();
    v19 = *(v3 + v13[24]);
    v18 = 20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927C98);
    sub_1B6211B58(&qword_1EDAAF6E0, &qword_1EB927C98, &unk_1B6239FD0, sub_1B6211BD4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_12();
    sub_1B6221E74();
    OUTLINED_FUNCTION_25_15(v13[25]);
    v18 = 21;
    sub_1B6211C28();
    OUTLINED_FUNCTION_2_63();
    sub_1B6221E74();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1B621191C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB927C80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B621196C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B62119B4()
{
  result = qword_1EDAAF710;
  if (!qword_1EDAAF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF710);
  }

  return result;
}

unint64_t sub_1B6211A08()
{
  result = qword_1EDAAFA68;
  if (!qword_1EDAAFA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFA68);
  }

  return result;
}

unint64_t sub_1B6211A5C()
{
  result = qword_1EDAAF728;
  if (!qword_1EDAAF728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF728);
  }

  return result;
}

unint64_t sub_1B6211AB0()
{
  result = qword_1EDAAF8E0;
  if (!qword_1EDAAF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF8E0);
  }

  return result;
}

unint64_t sub_1B6211B04()
{
  result = qword_1EDAAF740;
  if (!qword_1EDAAF740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF740);
  }

  return result;
}

uint64_t sub_1B6211B58(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B6211BD4()
{
  result = qword_1EDAAFAE0;
  if (!qword_1EDAAFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFAE0);
  }

  return result;
}

unint64_t sub_1B6211C28()
{
  result = qword_1EDAAFAF8;
  if (!qword_1EDAAFAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFAF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherAlert.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WeatherAlert.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B6211E3C()
{
  result = qword_1EB927CA0;
  if (!qword_1EB927CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927CA0);
  }

  return result;
}

unint64_t sub_1B6211E94()
{
  result = qword_1EDAAFB40;
  if (!qword_1EDAAFB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFB40);
  }

  return result;
}

unint64_t sub_1B6211EEC()
{
  result = qword_1EDAAFB48;
  if (!qword_1EDAAFB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFB48);
  }

  return result;
}

void sub_1B6211F40()
{
  OUTLINED_FUNCTION_29_14();
  v2 = sub_1B621E3E4();
  if ((v2 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_20_20();
    *(v3 - 16) = v1;
    *(v3 - 8) = v1;
    sub_1B60B3C3C();
    *v0 = v4;
  }
}

uint64_t sub_1B6211FC0()
{
  v0 = sub_1B6221CD4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B621200C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a2;
  v19 = a3;
  v4 = sub_1B621FFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927D08);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  MEMORY[0x1B8C8F350](*a1);
  v14 = v19;
  sub_1B62178DC(v13, v11, &qword_1EB927D08);
  v15 = 1;
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v11, v4);
    sub_1B6212214(v14);
    (*(v5 + 8))(v7, v4);
    v15 = 0;
  }

  sub_1B60372E0(v13, &qword_1EB927D08);
  v16 = type metadata accessor for WeatherComparison();
  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

uint64_t sub_1B6212214@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B621F0E4();
  v17 = *(v2 - 8);
  v18 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B621FF24();
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B6220194();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B621FF84();
  sub_1B621291C(v11);
  (*(v9 + 8))(v11, v8);
  sub_1B621FFC4();
  sub_1B6212A28(v7, &v20);
  v12 = (*(v5 + 8))(v7, v16);
  LOBYTE(v5) = v20;
  v13 = MEMORY[0x1B8C8F1B0](v12);
  v14 = MEMORY[0x1B8C8F1C0]();
  sub_1B621FFD4();
  sub_1B6212BA8(v4, &v19);
  (*(v17 + 8))(v4, v18);
  LOBYTE(v9) = v19;
  sub_1B621FFB4();
  type metadata accessor for WeatherComparison();
  result = sub_1B621D884();
  *a1 = v5;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1B62124B8@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927D68);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = sub_1B621FCF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  MEMORY[0x1B8C8F050](v11);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1B60372E0(v6, &qword_1EB927D68);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_1B621267C(v11, v15);
    result = (*(v8 + 8))(v10, v7);
    v13 = v15[0];
    v14 = v16;
  }

  *a2 = v13;
  a2[1] = v14;
  return result;
}

uint64_t sub_1B621267C@<X0>(unsigned int a1@<W1>, uint64_t a2@<X8>)
{
  result = MEMORY[0x1B8C8EEF0]();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x1EEE9AC00](result);
  sub_1B60B4D64();
  v6 = v5;
  result = MEMORY[0x1B8C8EEE0]();
  if (result)
  {
LABEL_6:
    *a2 = result;
    *(a2 + 8) = v6;
    return result;
  }

  if ((a1 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  if (a1 > 0xFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = a1 + 1;
  if (((a1 + 1) & 0x100) == 0)
  {
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B6212754@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927D70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  v7 = sub_1B621FBD4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1B8C8EF00](*a1);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1B60372E0(v6, &qword_1EB927D70);
    v11 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = sub_1B605330C(v10, a2);
    (*(v8 + 8))(v10, v7, v12);
    v11 = 0;
  }

  v13 = type metadata accessor for DayPartForecast();
  return __swift_storeEnumTagSinglePayload(a2, v11, 1, v13);
}

uint64_t sub_1B621291C(uint64_t a1)
{
  v2 = sub_1B6220194();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  result = (*(v3 + 88))(v5, v2);
  if (result != *MEMORY[0x1E69E2068])
  {
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1B6212A28@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B621FF24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x1E69E2028])
  {
    *a2 = 0;
    return result;
  }

  if (result == *MEMORY[0x1E69E2020])
  {
    v9 = 1;
  }

  else if (result == *MEMORY[0x1E69E2018])
  {
    v9 = 2;
  }

  else
  {
    if (result != *MEMORY[0x1E69E2030])
    {
      *a2 = 2;
      return (*(v5 + 8))(v7, v4);
    }

    v9 = 3;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1B6212BA8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B621F0E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x1E69E1AD0])
  {
    *a2 = 0;
    return result;
  }

  if (result == *MEMORY[0x1E69E1AE0])
  {
    v9 = 1;
  }

  else if (result == *MEMORY[0x1E69E1AE8])
  {
    v9 = 2;
  }

  else if (result == *MEMORY[0x1E69E1AD8])
  {
    v9 = 3;
  }

  else
  {
    if (result != *MEMORY[0x1E69E1AF0])
    {
      *a2 = 2;
      return (*(v5 + 8))(v7, v4);
    }

    v9 = 4;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1B6212D44@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a2;
  v19 = a3;
  v4 = sub_1B6220024();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927D58);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  MEMORY[0x1B8C8F410](*a1);
  v14 = v19;
  sub_1B62178DC(v13, v11, &qword_1EB927D58);
  v15 = 1;
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v11, v4);
    sub_1B6212F4C(v14);
    (*(v5 + 8))(v7, v4);
    v15 = 0;
  }

  sub_1B60372E0(v13, &qword_1EB927D58);
  v16 = type metadata accessor for MarineHourForecast();
  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

uint64_t sub_1B6212F4C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927D60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_1B621D8F4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1B8C8F230](v7);
  sub_1B621D884();
  sub_1B621FFF4();
  v10 = sub_1B62203B4();
  result = __swift_getEnumTagSinglePayload(v4, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = sub_1B6213144(&v18);
    v13 = (*(*(v10 - 8) + 8))(v4, v10, v12);
    v17 = v18;
    v14 = v19;
    v15 = MEMORY[0x1B8C8F220](v13);
    (*(v6 + 32))(a1, v9, v5);
    result = type metadata accessor for MarineHourForecast();
    v16 = a1 + *(result + 20);
    *v16 = v17;
    *(v16 + 16) = v14;
    *(a1 + *(result + 24)) = v15;
  }

  return result;
}

double sub_1B6213144@<D0>(double *a1@<X8>)
{
  v2 = MEMORY[0x1B8C8F5B0]();
  v3 = MEMORY[0x1B8C8F5C0]();
  result = MEMORY[0x1B8C8F5A0]();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = result;
  return result;
}

uint64_t sub_1B6213194@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a2;
  v19 = a3;
  v4 = sub_1B621EF24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927D38);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  MEMORY[0x1B8C8E640](*a1);
  v14 = v19;
  sub_1B62178DC(v13, v11, &qword_1EB927D38);
  v15 = 1;
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v11, v4);
    sub_1B621339C(v14);
    (*(v5 + 8))(v7, v4);
    v15 = 0;
  }

  sub_1B60372E0(v13, &qword_1EB927D38);
  v16 = type metadata accessor for HourTide();
  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

uint64_t sub_1B621339C@<X0>(uint64_t a1@<X8>)
{
  MEMORY[0x1B8C8E120]();
  v2 = sub_1B621D884();
  v3 = MEMORY[0x1B8C8E130](v2);
  result = type metadata accessor for HourTide();
  *(a1 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_1B62133F0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a2;
  v19 = a3;
  v4 = sub_1B621F214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927D40);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  MEMORY[0x1B8C8E650](*a1);
  v14 = v19;
  sub_1B62178DC(v13, v11, &qword_1EB927D40);
  v15 = 1;
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v11, v4);
    sub_1B62135F8(v14);
    (*(v5 + 8))(v7, v4);
    v15 = 0;
  }

  sub_1B60372E0(v13, &qword_1EB927D40);
  v16 = type metadata accessor for TideEvent();
  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

uint64_t sub_1B62135F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B621F6F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1B8C8E400](v4);
  v7 = sub_1B621D884();
  MEMORY[0x1B8C8E420](v7);
  v8 = sub_1B6213728(v6);
  v9 = (*(v3 + 8))(v6, v2);
  v10 = MEMORY[0x1B8C8E410](v9);
  result = type metadata accessor for TideEvent();
  *(a1 + *(result + 20)) = v8 & 1;
  *(a1 + *(result + 24)) = v10;
  return result;
}

uint64_t sub_1B6213728(uint64_t a1)
{
  v2 = sub_1B621F6F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 != *MEMORY[0x1E69E1E28])
  {
    if (v6 == *MEMORY[0x1E69E1E30])
    {
      return 1;
    }

    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

uint64_t sub_1B6213854@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v16 = a1;
  v17 = a2;
  v2 = sub_1B621E564();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927D18);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  sub_1B621E5D4();
  v12 = v17;
  sub_1B62178DC(v11, v9, &qword_1EB927D18);
  v13 = 1;
  if (__swift_getEnumTagSinglePayload(v9, 1, v2) != 1)
  {
    (*(v3 + 32))(v5, v9, v2);
    sub_1B6213A5C(v5, v12);
    (*(v3 + 8))(v5, v2);
    v13 = 0;
  }

  sub_1B60372E0(v11, &qword_1EB927D18);
  v14 = type metadata accessor for WeatherAlert();
  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

uint64_t sub_1B6213A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = sub_1B621F8B4();
  v104 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B621F494();
  v100 = *(v5 - 8);
  v101 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v98 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B621FD14();
  v110 = *(v7 - 8);
  v111 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v109 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B621F5F4();
  v106 = *(v9 - 8);
  v107 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1B621F704();
  v12 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v115 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v116 = &v76 - v18;
  v108 = sub_1B621D8F4();
  v99 = *(v108 - 8);
  v19 = MEMORY[0x1EEE9AC00](v108);
  v114 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v113 = &v76 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v76 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927D20);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v76 - v25;
  v97 = sub_1B621D944();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v28 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B621E4D4();
  v29 = sub_1B6220344();
  result = __swift_getEnumTagSinglePayload(v26, 1, v29);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v95 = v28;
  sub_1B6214538();
  (*(*(v29 - 8) + 8))(v26, v29);
  sub_1B621E4E4();
  sub_1B6214770(v31, &v122);

  v33 = v122;
  v34 = MEMORY[0x1B8C8D710](v32);
  v94 = v35;
  v93 = sub_1B621E524();
  v92 = v36;
  v91 = sub_1B621E464();
  v90 = v37;
  result = sub_1B621E474();
  v89 = result;
  v88 = v38;
  if (!v38)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1B621E424();
  sub_1B621D884();
  sub_1B621E444();
  sub_1B621D884();
  sub_1B621E4B4();
  sub_1B621D884();
  v39 = sub_1B621E4C4();
  v40 = v108;
  v86 = v34;
  if ((v39 & 0x100000000) != 0)
  {
    v42 = 1;
    v41 = v116;
  }

  else
  {
    v41 = v116;
    sub_1B621D884();
    v42 = 0;
  }

  v87 = v33;
  v43 = 1;
  __swift_storeEnumTagSinglePayload(v41, v42, 1, v40);
  v44 = sub_1B621E494();
  v45 = v115;
  if ((v44 & 0x100000000) == 0)
  {
    sub_1B621D884();
    v43 = 0;
  }

  __swift_storeEnumTagSinglePayload(v45, v43, 1, v40);
  v85 = sub_1B621E414();
  v84 = v46;
  sub_1B621E544();
  sub_1B6214908(v14, &v121);
  (*(v12 + 8))(v14, v105);
  LODWORD(v105) = v121;
  v83 = sub_1B621E454();
  v82 = v47;
  v81 = sub_1B604B1BC(a1, MEMORY[0x1E69E1A60], sub_1B6217528, sub_1B60B4F34);
  sub_1B621E534();
  sub_1B6214AA4(v11, &v120);
  (*(v106 + 8))(v11, v107);
  LODWORD(v107) = v120;
  v48 = v109;
  sub_1B621E4A4();
  sub_1B6214C40(v48, &v119);
  (*(v110 + 8))(v48, v111);
  LODWORD(v111) = v119;
  result = sub_1B621E504();
  v109 = v49;
  v110 = result;
  if (v49)
  {
    v106 = sub_1B621E484();
    v80 = v50;
    v51 = v98;
    sub_1B621E514();
    sub_1B6214EBC(v51, &v118);
    (*(v100 + 8))(v51, v101);
    LODWORD(v101) = v118;
    v52 = v103;
    sub_1B621E434();
    sub_1B6215058(v52, &v117);
    (*(v104 + 8))(v52, v102);
    LODWORD(v104) = v117;
    v53 = type metadata accessor for WeatherAlert();
    v54 = v53[5];
    *(a2 + v54) = 0xF000000000000007;
    v55 = (a2 + v53[6]);
    v56 = (a2 + v53[7]);
    v57 = (a2 + v53[8]);
    v98 = v53[13];
    __swift_storeEnumTagSinglePayload(a2 + v98, 1, 1, v40);
    v79 = v53[14];
    __swift_storeEnumTagSinglePayload(a2 + v79, 1, 1, v40);
    v58 = v53[16];
    v59 = (a2 + v53[15]);
    *(a2 + v58) = 5;
    v60 = (a2 + v53[17]);
    v78 = v53[20];
    *(a2 + v78) = 13;
    v61 = v53[23];
    v100 = a2 + v53[22];
    *(a2 + v61) = 5;
    v62 = v53[24];
    v63 = v53[25];
    v102 = v61;
    v103 = v62;
    v77 = v63;
    *(a2 + v63) = 4;
    (*(v96 + 32))(a2, v95, v97);
    sub_1B615206C(*(a2 + v54));
    *(a2 + v54) = v87;
    v64 = v94;
    *v55 = v86;
    v55[1] = v64;
    v65 = v92;
    *v56 = v93;
    v56[1] = v65;
    v66 = v90;
    *v57 = v91;
    v57[1] = v66;
    v67 = (a2 + v53[9]);
    v68 = v88;
    *v67 = v89;
    v67[1] = v68;
    v69 = *(v99 + 32);
    v69(a2 + v53[10], v112, v40);
    v69(a2 + v53[11], v113, v40);
    v69(a2 + v53[12], v114, v40);
    sub_1B603F2F8(v116, a2 + v98, &qword_1EB924600);
    result = sub_1B603F2F8(v115, a2 + v79, &qword_1EB924600);
    v70 = v84;
    *v59 = v85;
    v59[1] = v70;
    *(a2 + v58) = v105;
    v71 = v82;
    *v60 = v83;
    v60[1] = v71;
    *(a2 + v53[18]) = v81;
    *(a2 + v53[19]) = v107;
    *(a2 + v78) = v111;
    v72 = (a2 + v53[21]);
    v73 = v109;
    *v72 = v110;
    v72[1] = v73;
    v74 = v100;
    v75 = v80;
    *v100 = v106;
    *(v74 + 8) = v75;
    *(a2 + v102) = v101;
    *&v103[a2] = 0;
    *(a2 + v77) = v104;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B6214538()
{
  if (sub_1B6220324() == 16)
  {
    v0 = *(sub_1B6220334() + 16);

    if (v0 == sub_1B6220324())
    {
      v1 = sub_1B6220334();
      v2 = sub_1B6175B14(v1);
      v4 = v3;
      result = 0;
      switch(v3 >> 62)
      {
        case 1uLL:
          if (v2 > v2 >> 32)
          {
            __break(1u);
            goto LABEL_21;
          }

          v6 = sub_1B621D4A4();
          if (v6)
          {
            result = sub_1B621D4C4();
            if (__OFSUB__(v2, result))
            {
              goto LABEL_22;
            }

            v6 += v2 - result;
          }

          sub_1B621D4B4();
          if (!v6)
          {
            __break(1u);
            goto LABEL_13;
          }

          goto LABEL_17;
        case 2uLL:
LABEL_13:
          v7 = *(v2 + 16);
          v8 = sub_1B621D4A4();
          if (!v8)
          {
            goto LABEL_16;
          }

          result = sub_1B621D4C4();
          if (__OFSUB__(v7, result))
          {
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
          }

          else
          {
            v8 += v7 - result;
LABEL_16:
            result = sub_1B621D4B4();
            if (v8)
            {
LABEL_17:
              sub_1B621D924();

              return sub_1B60362A8(v2, v4);
            }
          }

          __break(1u);
          return result;
        default:
          goto LABEL_17;
      }
    }
  }

  return _s13WeatherDaemon0A11DataServiceC16addCacheObserver13configuration8observerAA0F16ObservationTokenVAA0fG13ConfigurationV_yAA0fJ0VctF_0();
}

uint64_t sub_1B6214770@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = sub_1B6221224();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (sub_1B6221214(), v9 = sub_1B62211E4(), v11 = v10, result = (*(v5 + 8))(v8, v4), v11 >> 60 == 15))
  {
    v12 = 0xF000000000000007;
  }

  else
  {
    sub_1B621D2D4();
    swift_allocObject();
    sub_1B621D2C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927C80);
    sub_1B6217544();
    sub_1B621D2B4();
    sub_1B602FF58(v9, v11);

    v12 = v13[1];
  }

  *a2 = v12;
  return result;
}

uint64_t sub_1B6214908@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B621F704();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x1E69E1E40])
  {
    v9 = 4;
LABEL_3:
    *a2 = v9;
    return result;
  }

  if (result == *MEMORY[0x1E69E1E48])
  {
    *a2 = 0;
  }

  else
  {
    if (result == *MEMORY[0x1E69E1E38])
    {
      v9 = 1;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1E50])
    {
      v9 = 2;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1E58])
    {
      v9 = 3;
      goto LABEL_3;
    }

    *a2 = 4;
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1B6214AA4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B621F5F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x1E69E1C30])
  {
    v9 = 4;
LABEL_3:
    *a2 = v9;
    return result;
  }

  if (result == *MEMORY[0x1E69E1C28])
  {
    *a2 = 0;
  }

  else
  {
    if (result == *MEMORY[0x1E69E1C20])
    {
      v9 = 1;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1C38])
    {
      v9 = 2;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1C18])
    {
      v9 = 3;
      goto LABEL_3;
    }

    *a2 = 4;
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1B6214C40@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B621FD14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x1E69E1FA0])
  {
    v9 = 12;
LABEL_3:
    *a2 = v9;
    return result;
  }

  if (result == *MEMORY[0x1E69E1F78])
  {
    *a2 = 0;
  }

  else
  {
    if (result == *MEMORY[0x1E69E1FB8])
    {
      v9 = 1;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1FC8])
    {
      v9 = 2;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1F88])
    {
      v9 = 3;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1FC0])
    {
      v9 = 4;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1F70])
    {
      v9 = 5;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1F90])
    {
      v9 = 6;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1F98])
    {
      v9 = 7;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1F80])
    {
      v9 = 8;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1FD0])
    {
      v9 = 9;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1FA8])
    {
      v9 = 10;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1FB0])
    {
      v9 = 11;
      goto LABEL_3;
    }

    *a2 = 12;
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1B6214EBC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B621F494();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x1E69E1BF0])
  {
    v9 = 4;
LABEL_3:
    *a2 = v9;
    return result;
  }

  if (result == *MEMORY[0x1E69E1C00])
  {
    *a2 = 0;
  }

  else
  {
    if (result == *MEMORY[0x1E69E1BF8])
    {
      v9 = 1;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1BE8])
    {
      v9 = 2;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1BE0])
    {
      v9 = 3;
      goto LABEL_3;
    }

    *a2 = 4;
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1B6215058@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B621F8B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x1E69E1EE0])
  {
    v9 = 2;
LABEL_5:
    *a2 = v9;
    return result;
  }

  if (result == *MEMORY[0x1E69E1ED0])
  {
    v9 = 1;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69E1ED8])
  {
    *a2 = 0;
  }

  else
  {
    *a2 = 3;
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1B62151BC@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  v13 = a1;
  v14 = a2;
  v2 = sub_1B621FD04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927D28);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  sub_1B621E554();
  sub_1B62178DC(v11, v9, &qword_1EB927D28);
  if (__swift_getEnumTagSinglePayload(v9, 1, v2) == 1)
  {
    result = sub_1B60372E0(v11, &qword_1EB927D28);
    *v14 = 9;
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    sub_1B62153C0(v5, v14);
    (*(v3 + 8))(v5, v2);
    return sub_1B60372E0(v11, &qword_1EB927D28);
  }

  return result;
}

uint64_t sub_1B62153C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B621FD04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x1E69E1F30])
  {
    v9 = 8;
LABEL_3:
    *a2 = v9;
    return result;
  }

  if (result == *MEMORY[0x1E69E1F58])
  {
    *a2 = 0;
  }

  else
  {
    if (result == *MEMORY[0x1E69E1F68])
    {
      v9 = 1;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1F50])
    {
      v9 = 2;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1F40])
    {
      v9 = 3;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1F28])
    {
      v9 = 4;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1F48])
    {
      v9 = 5;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1F38])
    {
      v9 = 6;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1F60])
    {
      v9 = 7;
      goto LABEL_3;
    }

    *a2 = 8;
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1B62155CC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v16 = a1;
  v17 = a2;
  v2 = sub_1B621F8A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927D10);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  sub_1B621E664();
  v12 = v17;
  sub_1B62178DC(v11, v9, &qword_1EB927D10);
  v13 = 1;
  if (__swift_getEnumTagSinglePayload(v9, 1, v2) != 1)
  {
    (*(v3 + 32))(v5, v9, v2);
    sub_1B62157D4(v12);
    (*(v3 + 8))(v5, v2);
    v13 = 0;
  }

  sub_1B60372E0(v11, &qword_1EB927D10);
  v14 = type metadata accessor for TrendDeviation();
  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

uint64_t sub_1B62157D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B621F8C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  MEMORY[0x1B8C8EA70](v7);
  sub_1B621D884();
  v10 = sub_1B621D8F4();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  sub_1B621F864();
  sub_1B6215A6C(v5, &v26);
  v11 = *(v3 + 8);
  v11(v5, v2);
  v22 = v26;
  sub_1B621F874();
  sub_1B6215A6C(v5, &v25);
  v11(v5, v2);
  v21 = v25;
  sub_1B621F884();
  sub_1B6215A6C(v5, &v24);
  v11(v5, v2);
  v20 = v24;
  sub_1B621F894();
  sub_1B6215A6C(v5, &v23);
  v11(v5, v2);
  v12 = v23;
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
  v13 = type metadata accessor for TrendDeviation();
  v14 = v13[5];
  *(a1 + v14) = 4;
  v15 = v13[6];
  *(a1 + v15) = 4;
  v16 = v13[7];
  *(a1 + v16) = 4;
  v17 = v13[8];
  *(a1 + v17) = 4;
  result = sub_1B603F2F8(v9, a1, &qword_1EB924600);
  v19 = v21;
  *(a1 + v14) = v22;
  *(a1 + v15) = v19;
  *(a1 + v16) = v20;
  *(a1 + v17) = v12;
  return result;
}

uint64_t sub_1B6215A6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B621F8C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x1E69E1EF8])
  {
    v9 = 3;
  }

  else if (result == *MEMORY[0x1E69E1EF0])
  {
    v9 = 1;
  }

  else
  {
    if (result != *MEMORY[0x1E69E1EE8])
    {
      *a2 = 3;
      return (*(v5 + 8))(v7, v4);
    }

    v9 = 2;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1B6215BD0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a2;
  v19 = a3;
  v4 = sub_1B62200F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927D88);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  MEMORY[0x1B8C8EEA0](*a1);
  v14 = v19;
  sub_1B62178DC(v13, v11, &qword_1EB927D88);
  v15 = 1;
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v11, v4);
    sub_1B6215DD8(v14);
    (*(v5 + 8))(v7, v4);
    v15 = 0;
  }

  sub_1B60372E0(v13, &qword_1EB927D88);
  v16 = type metadata accessor for ForecastSummary();
  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

uint64_t sub_1B6215DD8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B621FE54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_1B621D8F4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1B8C8F300](v11);
  v14 = sub_1B621D884();
  if ((MEMORY[0x1B8C8F2E0](v14) & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    sub_1B621D884();
    v15 = 0;
  }

  __swift_storeEnumTagSinglePayload(v8, v15, 1, v9);
  sub_1B62200D4();
  sub_1B6053138(v5, &v26);
  v16 = (*(v3 + 8))(v5, v2);
  v17 = v26;
  v18 = MEMORY[0x1B8C8F270](v16);
  v19 = MEMORY[0x1B8C8F280]();
  v20 = type metadata accessor for ForecastSummary();
  v21 = v20[5];
  __swift_storeEnumTagSinglePayload(a1 + v21, 1, 1, v9);
  v22 = a1 + v20[7];
  v23 = a1 + v20[8];
  (*(v10 + 32))(a1, v13, v9);
  result = sub_1B603F2F8(v8, a1 + v21, &qword_1EB924600);
  *(a1 + v20[6]) = v17;
  *v22 = v18;
  *(v22 + 8) = 0;
  *v23 = v19;
  *(v23 + 8) = 0;
  return result;
}

uint64_t sub_1B6216084@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1B6220294();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6220274();
  sub_1B60503C8(v5, MEMORY[0x1E69E2088], MEMORY[0x1E69E2078], MEMORY[0x1E69E2080], &v10);
  v6 = (*(v3 + 8))(v5, v2);
  v7 = v10;
  MEMORY[0x1B8C8F480](v6);
  type metadata accessor for PrecipitationConditionParameter();
  result = sub_1B621D884();
  *a1 = v7;
  return result;
}

uint64_t sub_1B62161D0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v18 = a2;
  v19 = a3;
  v4 = sub_1B6220284();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927D98);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  MEMORY[0x1B8C8EF80](*a1);
  v14 = v19;
  sub_1B62178DC(v13, v11, &qword_1EB927D98);
  v15 = 1;
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v11, v4);
    sub_1B6216084(v14);
    (*(v5 + 8))(v7, v4);
    v15 = 0;
  }

  sub_1B60372E0(v13, &qword_1EB927D98);
  v16 = type metadata accessor for PrecipitationConditionParameter();
  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

uint64_t sub_1B62163D8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v16 = a2;
  v17 = a3;
  v4 = sub_1B621F6B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927D48);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  MEMORY[0x1B8C8F4F0](*a1);
  sub_1B62178DC(v13, v11, &qword_1EB927D48);
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
  {
    result = sub_1B60372E0(v13, &qword_1EB927D48);
    v15 = v17;
    *v17 = 0;
    *(v15 + 8) = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    sub_1B62165DC(v7, v17);
    (*(v5 + 8))(v7, v4);
    return sub_1B60372E0(v13, &qword_1EB927D48);
  }

  return result;
}

uint64_t sub_1B62165DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B621F104();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B604B1BC(a1, MEMORY[0x1E69E1D88], sub_1B62175FC, sub_1B60B5214);
  sub_1B621F6A4();
  sub_1B6216724(v7, &v12);
  result = (*(v5 + 8))(v7, v4);
  v10 = v12;
  *a2 = v8;
  *(a2 + 8) = v10;
  return result;
}

uint64_t sub_1B6216724@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B621F104();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x1E69E1B68])
  {
    v9 = 6;
LABEL_3:
    *a2 = v9;
    return result;
  }

  if (result == *MEMORY[0x1E69E1B58])
  {
    *a2 = 0;
  }

  else
  {
    if (result == *MEMORY[0x1E69E1B50])
    {
      v9 = 2;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1B40])
    {
      v9 = 3;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1B78] || result == *MEMORY[0x1E69E1B90])
    {
      v9 = 4;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1B38])
    {
      v9 = 7;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1B80])
    {
      v9 = 8;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1B70] || result == *MEMORY[0x1E69E1B98])
    {
      v9 = 9;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1B88])
    {
      v9 = 11;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1BA0])
    {
      v9 = 10;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1BA8])
    {
      v9 = 12;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1B60])
    {
      v9 = 13;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E1B48])
    {
      v9 = 14;
      goto LABEL_3;
    }

    *a2 = 9;
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1B62169C8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16[1] = a2;
  v5 = sub_1B621EEF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927D50);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v16 - v13;
  MEMORY[0x1B8C8E8B0](*a1);
  sub_1B62178DC(v14, v12, &qword_1EB927D50);
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
  {
    result = sub_1B60372E0(v14, &qword_1EB927D50);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v12, v5);
    sub_1B6216BD8(v8, a3);
    (*(v6 + 8))(v8, v5);
    return sub_1B60372E0(v14, &qword_1EB927D50);
  }

  return result;
}

uint64_t sub_1B6216BD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B621EEC4();
  v17 = result;
  if (v5)
  {
    v6 = v5;
    sub_1B6216D28(a1, MEMORY[0x1E69E1AC0], sub_1B6217660);
    v16 = v7;
    v8 = sub_1B621EED4();
    v10 = v9;
    v11 = sub_1B621EEB4();
    v13 = v12;
    sub_1B6216D28(a1, MEMORY[0x1E69E1AB0], sub_1B6217634);
    v15 = v14;
    result = sub_1B604B1BC(a1, MEMORY[0x1E69E1AA8], sub_1B6217618, sub_1B60B545C);
    *a2 = v17;
    a2[1] = v6;
    a2[2] = v16;
    a2[3] = v8;
    a2[4] = v10;
    a2[5] = v11;
    a2[6] = v13;
    a2[7] = v15;
    a2[8] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B6216D28(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = a2();
  if ((v5 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_20_20();
    *(v6 - 16) = a1;
    sub_1B60B537C(a3, v8, v7 << 32, v9, v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t sub_1B6216D98@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a2;
  v19 = a3;
  v4 = sub_1B6220344();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927D20);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  MEMORY[0x1B8C8E100](*a1);
  sub_1B62178DC(v13, v11, &qword_1EB927D20);
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
  {
    sub_1B60372E0(v13, &qword_1EB927D20);
    v14 = sub_1B621D944();
    return __swift_storeEnumTagSinglePayload(v19, 1, 1, v14);
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);

    v16 = v19;
    sub_1B6214538();
    v17 = sub_1B621D944();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);

    (*(v5 + 8))(v7, v4);
    return sub_1B60372E0(v13, &qword_1EB927D20);
  }
}

double sub_1B6216FE0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1B621FE54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B621FEB4();
  sub_1B6053138(v5, &v14);
  v6 = (*(v3 + 8))(v5, v2);
  v7 = v14;
  v8 = MEMORY[0x1B8C8F120](v6);
  v9 = MEMORY[0x1B8C8F0B0]();
  v10 = MEMORY[0x1B8C8F0A0]();
  v11 = MEMORY[0x1B8C8F0C0]();
  *a1 = v7;
  result = v11;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B6217118@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X2>, void (*a3)(void)@<X3>, void *a4@<X8>)
{
  v23[1] = a2;
  v24 = a3;
  v25 = a4;
  v6 = sub_1B621FF14();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927D78);
  v11 = OUTLINED_FUNCTION_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - v16;
  v24(*a1);
  v18 = OUTLINED_FUNCTION_510();
  sub_1B62178DC(v18, v19, &qword_1EB927D78);
  if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
  {
    result = sub_1B60372E0(v17, &qword_1EB927D78);
    v21 = v25;
    *v25 = 8;
    *(v21 + 1) = 0u;
    *(v21 + 3) = 0u;
  }

  else
  {
    (*(v8 + 32))(v4, v14, v6);
    v22 = sub_1B6216FE0(v25);
    (*(v8 + 8))(v4, v6, v22);
    return sub_1B60372E0(v17, &qword_1EB927D78);
  }

  return result;
}

uint64_t sub_1B621730C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927DB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - v3;
  v5 = sub_1B621E3D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B621E3F4();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1B60372E0(v4, &qword_1EB927DB8);
    v9 = 1;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1B604A074();
    (*(v6 + 8))(v8, v5);
    v9 = 0;
  }

  v10 = type metadata accessor for Weather();
  return __swift_storeEnumTagSinglePayload(a1, v9, 1, v10);
}

unint64_t sub_1B6217544()
{
  result = qword_1EDAAF748;
  if (!qword_1EDAAF748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB927C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF748);
  }

  return result;
}

uint64_t sub_1B621768C@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B62178DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_30_0(a1, a2, a3);
  OUTLINED_FUNCTION_10_6();
  v4 = OUTLINED_FUNCTION_5_2();
  v5(v4);
  return v3;
}

uint64_t TaskScheduler.await<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B6217974, 0, 0);
}

uint64_t sub_1B6217974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_11();
  v27 = (*(v26[7] + 8))(v26[3], v26[4], v26[6], v26[5]);
  v26[9] = v27;
  v28 = swift_task_alloc();
  v26[10] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910);
  *v28 = v26;
  v28[1] = sub_1B6217A58;
  v33 = v26[6];
  v34 = v26[2];
  v35 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v34, v27, v33, v29, v35, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1B6217A58()
{
  OUTLINED_FUNCTION_11();
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B6217BC8;
  }

  else
  {
    v2 = sub_1B6217B68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B6217B68()
{
  OUTLINED_FUNCTION_11();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B6217BC8()
{
  OUTLINED_FUNCTION_11();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B6217CFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x80000001B623FE50 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B6221F24();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B6217E18(char a1)
{
  if (!a1)
  {
    return 0x746867696568;
  }

  if (a1 == 1)
  {
    return 0x6F69746365726964;
  }

  return 0xD000000000000013;
}

uint64_t sub_1B6217E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6217CFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6217EA4(uint64_t a1)
{
  v2 = sub_1B6218088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6217EE0(uint64_t a1)
{
  v2 = sub_1B6218088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Swell.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927DC0);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6218088();
  sub_1B62220F4();
  v13 = 0;
  OUTLINED_FUNCTION_0_1();
  if (!v1)
  {
    v12 = 1;
    OUTLINED_FUNCTION_0_1();
    v11 = 2;
    OUTLINED_FUNCTION_0_1();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1B6218088()
{
  result = qword_1EB927DC8;
  if (!qword_1EB927DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927DC8);
  }

  return result;
}

uint64_t Swell.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927DD0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6218088();
  sub_1B62220D4();
  if (!v2)
  {
    v18[15] = 0;
    OUTLINED_FUNCTION_1_23();
    v12 = v11;
    v18[14] = 1;
    OUTLINED_FUNCTION_1_23();
    v15 = v14;
    v18[13] = 2;
    OUTLINED_FUNCTION_1_23();
    v17 = v16;
    (*(v7 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v15;
    a2[2] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for Swell.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B62183B0()
{
  result = qword_1EB927DD8;
  if (!qword_1EB927DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927DD8);
  }

  return result;
}

unint64_t sub_1B6218408()
{
  result = qword_1EB927DE0;
  if (!qword_1EB927DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927DE0);
  }

  return result;
}

unint64_t sub_1B6218460()
{
  result = qword_1EB927DE8;
  if (!qword_1EB927DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927DE8);
  }

  return result;
}

double DayPartForecast.init(forecastStart:forecastEnd:period:cloudCover:cloudCoverLowAltPct:cloudCoverMidAltPct:cloudCoverHighAltPct:conditionCode:humidityMax:humidityMin:temperatureMax:temperatureMin:precipitationAmount:precipitationAmountByType:precipitationChance:precipitationType:snowfallAmount:visibilityMax:visibilityMin:windDirection:windGustSpeedMax:windSpeed:windSpeedMax:humidity:precipitationIntensityMax:perceivedPrecipitationIntensityMax:uvIndexMin:uvIndexMax:temperatureApparentMin:temperatureApparentMax:daylight:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned __int8 a23, uint64_t a24, double a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, double a33, char a34)
{
  OUTLINED_FUNCTION_12_23();
  v70 = v35;
  v37 = v36;
  HIDWORD(v74) = a23;
  HIDWORD(v73) = a19;
  LODWORD(v69) = *v38;
  HIDWORD(v69) = *v39;
  HIDWORD(v71) = *v40;
  v41 = type metadata accessor for DayPartForecast();
  v42 = v41[6];
  *(v37 + v42) = 2;
  v43 = v37 + v41[16];
  v44 = v41[19];
  *(v37 + v44) = 8;
  v45 = v37 + v41[20];
  v46 = v37 + v41[23];
  v47 = sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v49 = *(v48 + 32);
  v49(v37, v70, v47);
  v49(v37 + v41[5], a10, v47);
  *(v37 + v42) = v69;
  OUTLINED_FUNCTION_5_42();
  *(v37 + v50) = v51;
  *(v37 + v41[12]) = v34;
  *(v37 + v41[13]) = a6;
  *(v37 + v41[14]) = a7;
  *(v37 + v41[15]) = a8;
  *v43 = a13;
  *(v43 + 8) = a14 & 1;
  *(v37 + v41[17]) = a15;
  *(v37 + v41[18]) = a17;
  *(v37 + v44) = BYTE4(v71);
  *v45 = a18;
  *(v45 + 8) = a19 & 1;
  *(v37 + v41[21]) = a20;
  *(v37 + v41[22]) = a21;
  *v46 = a22;
  *(v46 + 8) = a23 & 1;
  OUTLINED_FUNCTION_20_21(v52, v53, v54, v55, v56, v57, v58, v59, a8, v60, v61, v62, v63, v64, v65, v66, v69, v70, v71, a10, a18, v73, a22, v74, *&a6, a24, *&a7, a25);
  *(v37 + v67) = a26;
  *(v37 + v41[27]) = a27;
  *(v37 + v41[28]) = a28;
  *(v37 + v41[29]) = a29;
  *(v37 + v41[30]) = a30;
  *(v37 + v41[31]) = a31;
  *(v37 + v41[32]) = a32;
  result = a33;
  *(v37 + v41[33]) = a33;
  *(v37 + v41[34]) = a34;
  return result;
}

uint64_t DayPartForecast.forecastStart.setter()
{
  OUTLINED_FUNCTION_3();
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t DayPartForecast.forecastEnd.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for DayPartForecast() + 20);
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t DayPartForecast.forecastEnd.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.period.getter()
{
  OUTLINED_FUNCTION_6_2();
  result = type metadata accessor for DayPartForecast();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t DayPartForecast.period.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DayPartForecast();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t DayPartForecast.period.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.cloudCover.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 28)) = v1;
  return result;
}

uint64_t DayPartForecast.cloudCover.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.cloudCoverLowAltPct.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 32)) = v1;
  return result;
}

uint64_t DayPartForecast.cloudCoverLowAltPct.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.cloudCoverMidAltPct.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 36)) = v1;
  return result;
}

uint64_t DayPartForecast.cloudCoverMidAltPct.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.cloudCoverHighAltPct.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 40)) = v1;
  return result;
}

uint64_t DayPartForecast.cloudCoverHighAltPct.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.conditionCode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DayPartForecast();
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t DayPartForecast.conditionCode.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.humidityMax.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 48)) = v1;
  return result;
}

uint64_t DayPartForecast.humidityMax.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.humidityMin.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 52)) = v1;
  return result;
}

uint64_t DayPartForecast.humidityMin.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.temperatureMax.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 56)) = v1;
  return result;
}

uint64_t DayPartForecast.temperatureMax.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.temperatureMin.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 60)) = v1;
  return result;
}

uint64_t DayPartForecast.temperatureMin.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.precipitationAmount.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.precipitationAmountByType.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for DayPartForecast() + 68);

  *(v1 + v2) = v0;
  return result;
}

uint64_t DayPartForecast.precipitationAmountByType.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.precipitationChance.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 72)) = v1;
  return result;
}

uint64_t DayPartForecast.precipitationChance.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.precipitationType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DayPartForecast();
  *(v1 + *(result + 76)) = v2;
  return result;
}

uint64_t DayPartForecast.precipitationType.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.snowfallAmount.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.visibilityMax.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 84)) = v1;
  return result;
}

uint64_t DayPartForecast.visibilityMax.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.visibilityMin.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 88)) = v1;
  return result;
}

uint64_t DayPartForecast.visibilityMin.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.windDirection.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.windGustSpeedMax.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 96)) = v1;
  return result;
}

uint64_t DayPartForecast.windGustSpeedMax.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.windSpeed.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 100)) = v1;
  return result;
}

uint64_t DayPartForecast.windSpeed.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.windSpeedMax.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 104)) = v1;
  return result;
}

uint64_t DayPartForecast.windSpeedMax.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.humidity.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 108)) = v1;
  return result;
}

uint64_t DayPartForecast.humidity.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.precipitationIntensityMax.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 112)) = v1;
  return result;
}

uint64_t DayPartForecast.precipitationIntensityMax.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.perceivedPrecipitationIntensityMax.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 116)) = v1;
  return result;
}

uint64_t DayPartForecast.perceivedPrecipitationIntensityMax.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.uvIndexMin.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 120)) = v1;
  return result;
}

uint64_t DayPartForecast.uvIndexMin.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.uvIndexMax.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 124)) = v1;
  return result;
}

uint64_t DayPartForecast.uvIndexMax.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.temperatureApparentMin.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 128)) = v1;
  return result;
}

uint64_t DayPartForecast.temperatureApparentMin.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.temperatureApparentMax.setter()
{
  result = OUTLINED_FUNCTION_22_14();
  *(v0 + *(result + 132)) = v1;
  return result;
}

uint64_t DayPartForecast.temperatureApparentMax.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.daylight.setter(char a1)
{
  result = type metadata accessor for DayPartForecast();
  *(v1 + *(result + 136)) = a1;
  return result;
}

uint64_t DayPartForecast.daylight.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t DayPartForecast.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v99 = &v72[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v98 = &v72[-v6];
  v7 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v100 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v72[-v13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927DF0);
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72[-v18];
  v20 = a1[3];
  v102 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1B621A1DC();
  v21 = v101;
  sub_1B62220D4();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v102);
  }

  v101 = 0;
  v95 = v16;
  v96 = v11;
  LOBYTE(v109) = 0;
  sub_1B609F140(&qword_1EDAB20F0);
  v22 = v98;
  sub_1B6221D24();
  OUTLINED_FUNCTION_8_9(v22);
  if (v23)
  {
    type metadata accessor for WeatherClock();
    v24 = v14;
    static WeatherClock.date.getter();
    OUTLINED_FUNCTION_8_9(v22);
    v25 = v99;
    if (!v23)
    {
      sub_1B608CA50(v22);
    }
  }

  else
  {
    v24 = v14;
    (*(v100 + 32))(v14, v22, v7);
    v25 = v99;
  }

  LOBYTE(v109) = 1;
  sub_1B6221D24();
  OUTLINED_FUNCTION_8_9(v25);
  v94 = v7;
  if (v23)
  {
    type metadata accessor for WeatherClock();
    static WeatherClock.date.getter();
    OUTLINED_FUNCTION_8_9(v25);
    if (!v23)
    {
      sub_1B608CA50(v25);
    }
  }

  else
  {
    (*(v100 + 32))(v96, v25, v7);
  }

  LOBYTE(v107) = 2;
  sub_1B621A230();
  OUTLINED_FUNCTION_20();
  sub_1B6221D24();
  v26 = v109;
  LOBYTE(v107) = 3;
  OUTLINED_FUNCTION_3_53();
  sub_1B6221D24();
  v27 = OUTLINED_FUNCTION_10_15();
  v28 = 0.0;
  if (v23)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0.0;
  }

  OUTLINED_FUNCTION_0_114(4);
  sub_1B6221D24();
  v30 = OUTLINED_FUNCTION_10_15();
  if (v23)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0.0;
  }

  OUTLINED_FUNCTION_0_114(5);
  sub_1B6221D24();
  v32 = OUTLINED_FUNCTION_10_15();
  if (v23)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0.0;
  }

  OUTLINED_FUNCTION_0_114(6);
  sub_1B6221D24();
  v34 = OUTLINED_FUNCTION_10_15();
  if (v23)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0.0;
  }

  LOBYTE(v109) = 7;
  sub_1B60FDA64();
  OUTLINED_FUNCTION_20();
  v36 = v101;
  sub_1B6221DD4();
  if (v36)
  {
    v47 = *(v100 + 8);
    OUTLINED_FUNCTION_27_16();
    v47();
    (v47)(v24, v19);
    v48 = OUTLINED_FUNCTION_10_29();
    v49(v48);
    return __swift_destroy_boxed_opaque_existential_1(v102);
  }

  LODWORD(v99) = v26;
  v37 = v114;
  OUTLINED_FUNCTION_0_114(8);
  sub_1B6221D24();
  v38 = OUTLINED_FUNCTION_10_15();
  if (v23)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0.0;
  }

  OUTLINED_FUNCTION_0_114(9);
  sub_1B6221D24();
  v40 = OUTLINED_FUNCTION_10_15();
  if (v23)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0.0;
  }

  OUTLINED_FUNCTION_0_114(10);
  sub_1B6221D24();
  v42 = OUTLINED_FUNCTION_10_15();
  if (v23)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0.0;
  }

  OUTLINED_FUNCTION_0_114(11);
  sub_1B6221D24();
  v44 = OUTLINED_FUNCTION_10_15();
  if (v23)
  {
    v28 = v44;
  }

  OUTLINED_FUNCTION_0_114(12);
  sub_1B6221D24();
  v45 = v109;
  v46 = v110;
  LOBYTE(v107) = 13;
  sub_1B617A040();
  OUTLINED_FUNCTION_20();
  v98 = sub_1B6221D14();
  v111 = v46;
  v93 = v45;
  LOBYTE(v107) = 14;
  sub_1B6221DB4();
  v90 = v51;
  v91 = v41;
  v92 = v39;
  LOBYTE(v107) = 15;
  sub_1B60D5940();
  OUTLINED_FUNCTION_20();
  sub_1B6221D24();
  v89 = v113;
  LOBYTE(v105) = 16;
  OUTLINED_FUNCTION_3_53();
  sub_1B6221D24();
  v88 = v107;
  v87 = v108;
  LOBYTE(v103) = 17;
  OUTLINED_FUNCTION_3_53();
  sub_1B6221D24();
  v84 = v105;
  LODWORD(v83) = v106;
  LOBYTE(v103) = 18;
  OUTLINED_FUNCTION_3_53();
  sub_1B6221D24();
  v52 = v105;
  LODWORD(v82) = v106;
  LOBYTE(v103) = 19;
  OUTLINED_FUNCTION_20();
  sub_1B6221D24();
  v86 = v105;
  v85 = v106;
  v112 = 20;
  OUTLINED_FUNCTION_3_53();
  sub_1B6221D24();
  v53 = v103;
  v54 = v104;
  LOBYTE(v103) = 21;
  sub_1B6221DB4();
  v101 = 0;
  if (v54)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = v53;
  }

  v77 = v55;
  if (LODWORD(v82))
  {
    v56 = 0.0;
  }

  else
  {
    v56 = v52;
  }

  v82 = v56;
  v57 = v84;
  if (LODWORD(v83))
  {
    v57 = 0.0;
  }

  v58 = 0.0;
  v84 = v57;
  v112 = 22;
  OUTLINED_FUNCTION_1_73();
  v60 = v59;
  sub_1B6221D24();
  v83 = OUTLINED_FUNCTION_4_38();
  v112 = 23;
  OUTLINED_FUNCTION_1_73();
  sub_1B6221D24();
  v81 = OUTLINED_FUNCTION_4_38();
  v112 = 24;
  OUTLINED_FUNCTION_1_73();
  sub_1B6221D24();
  v80 = OUTLINED_FUNCTION_4_38();
  v112 = 25;
  OUTLINED_FUNCTION_1_73();
  sub_1B6221D24();
  v79 = OUTLINED_FUNCTION_4_38();
  v112 = 26;
  OUTLINED_FUNCTION_1_73();
  sub_1B6221D24();
  v78 = OUTLINED_FUNCTION_4_38();
  v112 = 27;
  OUTLINED_FUNCTION_1_73();
  sub_1B6221D24();
  v76 = OUTLINED_FUNCTION_4_38();
  v112 = 28;
  OUTLINED_FUNCTION_1_73();
  sub_1B6221D24();
  v75 = OUTLINED_FUNCTION_4_38();
  v112 = 29;
  OUTLINED_FUNCTION_1_73();
  sub_1B6221D24();
  if (!v104)
  {
    v58 = v103;
  }

  v112 = 30;
  OUTLINED_FUNCTION_20();
  sub_1B6221D24();
  v61 = OUTLINED_FUNCTION_10_29();
  v62(v61);
  LODWORD(v95) = LOBYTE(v103);
  v73 = v99 & 1;
  v63 = type metadata accessor for DayPartForecast();
  v64 = v63[6];
  v65 = v97;
  *(v97 + v64) = 2;
  v66 = v65 + v63[16];
  v74 = v63[19];
  *(v65 + v74) = 8;
  v67 = v65 + v63[20];
  v99 = (v65 + v63[23]);
  v68 = *(v100 + 32);
  v69 = v24;
  v70 = v94;
  v68(v65, v69, v94);
  v68(v65 + v63[5], v96, v70);
  *(v65 + v64) = v73;
  *(v65 + v63[7]) = v29;
  *(v65 + v63[8]) = v31;
  *(v65 + v63[9]) = v33;
  *(v65 + v63[10]) = v35;
  *(v65 + v63[11]) = v37;
  OUTLINED_FUNCTION_14_26(v63[12]);
  OUTLINED_FUNCTION_14_26(v63[13]);
  *(v65 + v63[14]) = v43;
  *(v65 + v63[15]) = v28;
  *v66 = v93;
  *(v66 + 8) = v111;
  *(v65 + v63[17]) = v98;
  OUTLINED_FUNCTION_14_26(v63[18]);
  *(v65 + v74) = v89;
  *v67 = v88;
  *(v67 + 8) = v87;
  OUTLINED_FUNCTION_14_26(v63[21]);
  OUTLINED_FUNCTION_14_26(v63[22]);
  v71 = v99;
  *v99 = v86;
  *(v71 + 8) = v85;
  OUTLINED_FUNCTION_14_26(v63[24]);
  *(v65 + v63[25]) = v60;
  OUTLINED_FUNCTION_14_26(v63[26]);
  OUTLINED_FUNCTION_14_26(v63[27]);
  OUTLINED_FUNCTION_14_26(v63[28]);
  OUTLINED_FUNCTION_14_26(v63[29]);
  OUTLINED_FUNCTION_14_26(v63[30]);
  OUTLINED_FUNCTION_14_26(v63[31]);
  OUTLINED_FUNCTION_14_26(v63[32]);
  *(v65 + v63[33]) = v58;
  *(v65 + v63[34]) = v95 & 1;
  return __swift_destroy_boxed_opaque_existential_1(v102);
}

unint64_t sub_1B621A1DC()
{
  result = qword_1EDAB06C0;
  if (!qword_1EDAB06C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB06C0);
  }

  return result;
}

unint64_t sub_1B621A230()
{
  result = qword_1EDAB0808;
  if (!qword_1EDAB0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0808);
  }

  return result;
}

uint64_t sub_1B621A284(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7473616365726F66 && a2 == 0xED00007472617453;
  if (v3 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7473616365726F66 && a2 == 0xEB00000000646E45;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646F69726570 && a2 == 0xE600000000000000;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x766F4364756F6C63 && a2 == 0xEA00000000007265;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001B623D7A0 == a2;
          if (v9 || (sub_1B6221F24() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001B623D7C0 == a2;
            if (v10 || (sub_1B6221F24() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001B623D7E0 == a2;
              if (v11 || (sub_1B6221F24() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F697469646E6F63 && a2 == 0xED000065646F436ELL;
                if (v12 || (sub_1B6221F24() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x79746964696D7568 && a2 == 0xEB0000000078614DLL;
                  if (v13 || (sub_1B6221F24() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x79746964696D7568 && a2 == 0xEB000000006E694DLL;
                    if (v14 || (sub_1B6221F24() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x74617265706D6574 && a2 == 0xEE0078614D657275;
                      if (v15 || (sub_1B6221F24() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x74617265706D6574 && a2 == 0xEE006E694D657275;
                        if (v16 || (sub_1B6221F24() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000013 && 0x80000001B623D800 == a2;
                          if (v17 || (sub_1B6221F24() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000019 && 0x80000001B623EB10 == a2;
                            if (v18 || (sub_1B6221F24() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000013 && 0x80000001B623CED0 == a2;
                              if (v19 || (sub_1B6221F24() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000011 && 0x80000001B623D820 == a2;
                                if (v20 || (sub_1B6221F24() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6C6C6166776F6E73 && a2 == 0xEE00746E756F6D41;
                                  if (v21 || (sub_1B6221F24() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x696C696269736976 && a2 == 0xED000078614D7974;
                                    if (v22 || (sub_1B6221F24() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x696C696269736976 && a2 == 0xED00006E694D7974;
                                      if (v23 || (sub_1B6221F24() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x65726944646E6977 && a2 == 0xED00006E6F697463;
                                        if (v24 || (sub_1B6221F24() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000010 && 0x80000001B623EBB0 == a2;
                                          if (v25 || (sub_1B6221F24() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x65657053646E6977 && a2 == 0xE900000000000064;
                                            if (v26 || (sub_1B6221F24() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x65657053646E6977 && a2 == 0xEC00000078614D64;
                                              if (v27 || (sub_1B6221F24() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x79746964696D7568 && a2 == 0xE800000000000000;
                                                if (v28 || (sub_1B6221F24() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000019 && 0x80000001B623FE70 == a2;
                                                  if (v29 || (sub_1B6221F24() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000022 && 0x80000001B623FE90 == a2;
                                                    if (v30 || (sub_1B6221F24() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x4D7865646E497675 && a2 == 0xEA00000000006E69;
                                                      if (v31 || (sub_1B6221F24() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x4D7865646E497675 && a2 == 0xEA00000000007861;
                                                        if (v32 || (sub_1B6221F24() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000016 && 0x80000001B623FEC0 == a2;
                                                          if (v33 || (sub_1B6221F24() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000016 && 0x80000001B623FEE0 == a2;
                                                            if (v34 || (sub_1B6221F24() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else if (a1 == 0x746867696C796164 && a2 == 0xE800000000000000)
                                                            {

                                                              return 30;
                                                            }

                                                            else
                                                            {
                                                              v36 = sub_1B6221F24();

                                                              if (v36)
                                                              {
                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                return 31;
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B621ABAC(char a1)
{
  result = 0x7473616365726F66;
  switch(a1)
  {
    case 2:
      result = 0x646F69726570;
      break;
    case 3:
      result = 0x766F4364756F6C63;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x6F697469646E6F63;
      break;
    case 8:
    case 9:
    case 23:
      result = 0x79746964696D7568;
      break;
    case 10:
    case 11:
      result = 0x74617265706D6574;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
    case 24:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x6C6C6166776F6E73;
      break;
    case 17:
    case 18:
      result = 0x696C696269736976;
      break;
    case 19:
      result = 0x65726944646E6977;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
    case 22:
      result = 0x65657053646E6977;
      break;
    case 25:
      result = 0xD000000000000022;
      break;
    case 26:
      result = 0x4D7865646E497675;
      break;
    case 27:
      result = 0x4D7865646E497675;
      break;
    case 28:
    case 29:
      result = 0xD000000000000016;
      break;
    case 30:
      result = 0x746867696C796164;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B621AEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B621A284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B621AF20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B621ABA4();
  *a1 = result;
  return result;
}

uint64_t sub_1B621AF48(uint64_t a1)
{
  v2 = sub_1B621A1DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B621AF84(uint64_t a1)
{
  v2 = sub_1B621A1DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DayPartForecast.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927DF8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B621A1DC();
  sub_1B62220F4();
  LOBYTE(v14) = 0;
  sub_1B621D8F4();
  sub_1B609F140(&unk_1EDAB20F8);
  OUTLINED_FUNCTION_10_12();
  sub_1B6221EC4();
  if (!v2)
  {
    v11 = type metadata accessor for DayPartForecast();
    LOBYTE(v14) = 1;
    OUTLINED_FUNCTION_10_12();
    sub_1B6221EC4();
    LOBYTE(v14) = *(v3 + v11[6]);
    v15 = 2;
    sub_1B621B500();
    OUTLINED_FUNCTION_17_23();
    OUTLINED_FUNCTION_10_12();
    sub_1B6221E74();
    OUTLINED_FUNCTION_2_64(3);
    OUTLINED_FUNCTION_2_64(4);
    OUTLINED_FUNCTION_2_64(5);
    OUTLINED_FUNCTION_2_64(6);
    LOBYTE(v14) = *(v3 + v11[11]);
    v15 = 7;
    sub_1B60FE980();
    OUTLINED_FUNCTION_17_23();
    OUTLINED_FUNCTION_10_12();
    sub_1B6221EC4();
    OUTLINED_FUNCTION_2_64(8);
    OUTLINED_FUNCTION_2_64(9);
    OUTLINED_FUNCTION_2_64(10);
    OUTLINED_FUNCTION_2_64(11);
    OUTLINED_FUNCTION_7_9(v3 + v11[16]);
    LOBYTE(v14) = 12;
    OUTLINED_FUNCTION_10_12();
    sub_1B6221E44();
    v14 = *(v3 + v11[17]);
    v15 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926788);
    sub_1B617B8A0();
    OUTLINED_FUNCTION_17_23();
    OUTLINED_FUNCTION_10_12();
    sub_1B6221EC4();
    OUTLINED_FUNCTION_2_64(14);
    LOBYTE(v14) = *(v3 + v11[19]);
    v15 = 15;
    sub_1B60D5EF4();
    OUTLINED_FUNCTION_17_23();
    OUTLINED_FUNCTION_10_12();
    sub_1B6221E74();
    OUTLINED_FUNCTION_7_9(v3 + v11[20]);
    LOBYTE(v14) = 16;
    OUTLINED_FUNCTION_10_12();
    sub_1B6221E44();
    OUTLINED_FUNCTION_2_64(17);
    OUTLINED_FUNCTION_2_64(18);
    OUTLINED_FUNCTION_7_9(v3 + v11[23]);
    LOBYTE(v14) = 19;
    OUTLINED_FUNCTION_10_12();
    sub_1B6221E64();
    OUTLINED_FUNCTION_2_64(20);
    OUTLINED_FUNCTION_2_64(21);
    OUTLINED_FUNCTION_2_64(22);
    OUTLINED_FUNCTION_2_64(23);
    OUTLINED_FUNCTION_2_64(24);
    OUTLINED_FUNCTION_2_64(25);
    OUTLINED_FUNCTION_2_64(26);
    OUTLINED_FUNCTION_2_64(27);
    OUTLINED_FUNCTION_2_64(28);
    OUTLINED_FUNCTION_2_64(29);
    LOBYTE(v14) = 30;
    OUTLINED_FUNCTION_10_12();
    sub_1B6221E94();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B621B500()
{
  result = qword_1EDAB0818;
  if (!qword_1EDAB0818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0818);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DayPartForecast.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DayPartForecast.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
          *result = a2 + 30;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B621B704()
{
  result = qword_1EB927E00;
  if (!qword_1EB927E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927E00);
  }

  return result;
}

unint64_t sub_1B621B75C()
{
  result = qword_1EDAB06B0;
  if (!qword_1EDAB06B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB06B0);
  }

  return result;
}

unint64_t sub_1B621B7B4()
{
  result = qword_1EDAB06B8;
  if (!qword_1EDAB06B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB06B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GeoJSONProperties(_BYTE *result, int a2, int a3)
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

uint64_t static LocationInfoDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  *aLocationinfo_8 = a1;
  *&aLocationinfo_8[8] = a2;
}

uint64_t (*static LocationInfoDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B621B994@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aLocationinfo_8[8];
  *a1 = *aLocationinfo_8;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B621B9E4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aLocationinfo_8 = v2;
  *&aLocationinfo_8[8] = v1;
  sub_1B6220784();
}

uint64_t *sub_1B621BA48()
{
  if (qword_1EDAB1318 != -1)
  {
    OUTLINED_FUNCTION_0_115();
  }

  return &qword_1EDAB1320;
}

uint64_t static LocationInfoDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB1318 != -1)
  {
    OUTLINED_FUNCTION_0_115();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB1320 = a1;
  qword_1EDAB1328 = a2;
}

uint64_t (*static LocationInfoDescriptor.version.modify())()
{
  if (qword_1EDAB1318 != -1)
  {
    OUTLINED_FUNCTION_0_115();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B621BB68@<X0>(void *a1@<X8>)
{
  sub_1B621BA48();
  swift_beginAccess();
  v2 = qword_1EDAB1328;
  *a1 = qword_1EDAB1320;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B621BBBC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B621BA48();
  swift_beginAccess();
  qword_1EDAB1320 = v2;
  qword_1EDAB1328 = v1;
}

_BYTE *storeEnumTagSinglePayload for LocationInfoDescriptor(_BYTE *result, int a2, int a3)
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

WeatherDaemon::Deviation_optional __swiftcall Deviation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Deviation.rawValue.getter()
{
  result = 0x4749485F4843554DLL;
  switch(*v0)
  {
    case 1:
      result = 0x524548474948;
      break;
    case 2:
      result = 0x4C414D524F4ELL;
      break;
    case 3:
      result = 0x5245574F4CLL;
      break;
    case 4:
      result = 0x574F4C5F4843554DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B621BDC0()
{
  result = qword_1EB927E18;
  if (!qword_1EB927E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927E18);
  }

  return result;
}

uint64_t sub_1B621BE38@<X0>(uint64_t *a1@<X8>)
{
  result = Deviation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Deviation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B621C01C()
{
  result = qword_1EDAAEB90;
  if (!qword_1EDAAEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEB90);
  }

  return result;
}

uint64_t WeatherComparisons.comparisons.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t WeatherComparisons.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WeatherComparisons() + 20);

  return sub_1B6058638(v3, a1);
}

uint64_t WeatherComparisons.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WeatherComparisons() + 20);

  return sub_1B6094EB4(a1, v3);
}

uint64_t sub_1B621C194(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73697261706D6F63 && a2 == 0xEB00000000736E6FLL;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B6221F24();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B621C260(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x73697261706D6F63;
  }
}

uint64_t sub_1B621C2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B621C194(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B621C2D0(uint64_t a1)
{
  v2 = sub_1B621C5F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B621C30C(uint64_t a1)
{
  v2 = sub_1B621C5F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherComparisons.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for Metadata();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927E20);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B621C5F4();
  sub_1B62220D4();
  if (!v2)
  {
    v12 = v8;
    v13 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927770);
    v25 = 0;
    sub_1B621C828(&qword_1EDAAEAE8, &qword_1EDAAF420);
    v14 = v23;
    sub_1B6221DD4();
    v15 = v26;
    v24 = 1;
    OUTLINED_FUNCTION_0_116();
    sub_1B621C8C4(v16, v17);
    sub_1B6221DD4();
    (*(v12 + 8))(v11, v14);
    v18 = v22;
    *v22 = v15;
    v19 = type metadata accessor for WeatherComparisons();
    sub_1B603D8D8(v13, v18 + *(v19 + 20));
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B621C5F4()
{
  result = qword_1EB927E28;
  if (!qword_1EB927E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927E28);
  }

  return result;
}

uint64_t WeatherComparisons.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927E30);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B621C5F4();
  sub_1B62220F4();
  v15 = *v3;
  v14[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927770);
  sub_1B621C828(&qword_1EDAAEAF0, &qword_1EDAAF428);
  OUTLINED_FUNCTION_10_5();
  if (!v2)
  {
    type metadata accessor for WeatherComparisons();
    v14[6] = 1;
    type metadata accessor for Metadata();
    OUTLINED_FUNCTION_0_116();
    sub_1B621C8C4(v11, v12);
    OUTLINED_FUNCTION_10_5();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1B621C828(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB927770);
    sub_1B621C8C4(a2, type metadata accessor for WeatherComparison);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B621C8C4(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for WeatherComparisons.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B621CA4C()
{
  result = qword_1EB927E38;
  if (!qword_1EB927E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927E38);
  }

  return result;
}

unint64_t sub_1B621CAA4()
{
  result = qword_1EB927E40;
  if (!qword_1EB927E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927E40);
  }

  return result;
}

unint64_t sub_1B621CAFC()
{
  result = qword_1EB927E48;
  if (!qword_1EB927E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927E48);
  }

  return result;
}

uint64_t ForecastToken.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    OUTLINED_FUNCTION_0_9();
    v5 = sub_1B6221F44();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v11);
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    ForecastToken.init(rawValue:)(v8);
    v9 = v11[0];
    if (LOBYTE(v11[0]) == 6)
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::ForecastToken_optional __swiftcall ForecastToken.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ForecastToken.rawValue.getter()
{
  result = 0x5241454C43;
  switch(*v0)
  {
    case 1:
      result = 0x5452415453;
      break;
    case 2:
      result = 1347376211;
      break;
    case 3:
      result = 0x54535F5452415453;
      break;
    case 4:
      result = 0x4154535F504F5453;
      break;
    case 5:
      result = 0x544E4154534E4F43;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B621CD38()
{
  result = qword_1EB927E50;
  if (!qword_1EB927E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927E50);
  }

  return result;
}

uint64_t sub_1B621CDB0@<X0>(uint64_t *a1@<X8>)
{
  result = ForecastToken.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B621CE44()
{
  result = qword_1EB927E58;
  if (!qword_1EB927E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB927E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927E58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ForecastToken(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B621CFC4()
{
  result = qword_1EDAB0250;
  if (!qword_1EDAB0250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0250);
  }

  return result;
}

unint64_t sub_1B621D038()
{
  result = qword_1EB927E78;
  if (!qword_1EB927E78)
  {
    type metadata accessor for DailySummary();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927E78);
  }

  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}