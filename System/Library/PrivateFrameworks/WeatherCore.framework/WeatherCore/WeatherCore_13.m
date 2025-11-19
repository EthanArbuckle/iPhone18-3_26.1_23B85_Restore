uint64_t sub_1C9588D70()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9588E54()
{
  OUTLINED_FUNCTION_30();
  v1 = sub_1C96A6134();
  sub_1C96A76A4();
  v2 = OUTLINED_FUNCTION_27_1();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_36_3();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_47(v4);
    OUTLINED_FUNCTION_16_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_1C9588F40;
  v11 = OUTLINED_FUNCTION_77_0(*(v0 + 40));

  return sub_1C958721C(v11);
}

uint64_t sub_1C9588F40()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9589024()
{
  OUTLINED_FUNCTION_30();
  v0 = sub_1C96A6134();
  sub_1C96A76A4();
  OUTLINED_FUNCTION_43_6();
  if (os_log_type_enabled(v0, v1))
  {
    OUTLINED_FUNCTION_36_3();
    v2 = swift_slowAlloc();
    OUTLINED_FUNCTION_47(v2);
    OUTLINED_FUNCTION_76_1(&dword_1C945E000, v3, v4, "Successfull saved to the remote KVS. Finished operation to move a location in the list.");
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  sub_1C95857A4();
  OUTLINED_FUNCTION_2_40();
  sub_1C948981C();

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t SavedLocationsManager.updateSavedLocationTimeZones(_:)()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_7(v3);
  v1[4] = OUTLINED_FUNCTION_12_4();
  v4 = type metadata accessor for SyncedData();
  v1[5] = v4;
  OUTLINED_FUNCTION_7(v4);
  v1[6] = OUTLINED_FUNCTION_12_4();
  v5 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C9589190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_137();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_49();
  a16 = v18;
  if (qword_1EDB7D010 != -1)
  {
    OUTLINED_FUNCTION_0_53();
    swift_once();
  }

  v21 = sub_1C96A6154();
  v18[7] = __swift_project_value_buffer(v21, qword_1EDB7D018);
  sub_1C96A53C4();
  v22 = sub_1C96A6134();
  v23 = sub_1C96A76A4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = v18[2];
    v25 = OUTLINED_FUNCTION_102();
    v26 = OUTLINED_FUNCTION_8_4();
    a9 = v26;
    *v25 = 141558275;
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_116_1(v27);
    v28 = type metadata accessor for SavedLocation();
    v29 = MEMORY[0x1CCA8CC40](v24, v28);
    v31 = sub_1C9484164(v29, v30, &a9);

    *(v25 + 14) = v31;
    OUTLINED_FUNCTION_12_10();
    _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  v37 = sub_1C96A6134();
  sub_1C96A76A4();
  v38 = OUTLINED_FUNCTION_27_1();
  if (os_log_type_enabled(v38, v39))
  {
    OUTLINED_FUNCTION_36_3();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_10();
    _os_log_impl(v40, v41, v42, v43, v44, 2u);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  v46 = v18[4];
  v45 = v18[5];
  v47 = v18[2];
  v48 = v18[3];

  v49 = (v48 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager);
  v50 = *(v48 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager + 24);
  v51 = v49[4];
  __swift_project_boxed_opaque_existential_1(v49, v50);
  (*(v51 + 80))(v47, v50, v51);
  if (__swift_getEnumTagSinglePayload(v46, 1, v45) == 1)
  {
    sub_1C9557AB8(v18[4], &unk_1EC3A5F90);
    v52 = sub_1C96A6134();
    sub_1C96A7684();
    v53 = OUTLINED_FUNCTION_27_1();
    if (os_log_type_enabled(v53, v54))
    {
      OUTLINED_FUNCTION_36_3();
      v55 = swift_slowAlloc();
      OUTLINED_FUNCTION_47(v55);
      OUTLINED_FUNCTION_16_4();
      _os_log_impl(v56, v57, v58, v59, v60, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_43_1();

    return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_5_23();
    sub_1C95933D4();
    v70 = sub_1C96A6134();
    sub_1C96A76A4();
    v71 = OUTLINED_FUNCTION_27_1();
    if (os_log_type_enabled(v71, v72))
    {
      OUTLINED_FUNCTION_36_3();
      v73 = swift_slowAlloc();
      OUTLINED_FUNCTION_47(v73);
      OUTLINED_FUNCTION_16_4();
      _os_log_impl(v74, v75, v76, v77, v78, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }

    v79 = swift_task_alloc();
    v18[8] = v79;
    *v79 = v18;
    v79[1] = sub_1C9589510;
    OUTLINED_FUNCTION_77_0(v18[6]);
    OUTLINED_FUNCTION_43_1();

    return sub_1C958721C(v80);
  }
}

uint64_t sub_1C9589510()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95895F4()
{
  OUTLINED_FUNCTION_30();
  v0 = sub_1C96A6134();
  sub_1C96A76A4();
  OUTLINED_FUNCTION_43_6();
  if (os_log_type_enabled(v0, v1))
  {
    OUTLINED_FUNCTION_36_3();
    v2 = swift_slowAlloc();
    OUTLINED_FUNCTION_47(v2);
    OUTLINED_FUNCTION_76_1(&dword_1C945E000, v3, v4, "Successfull saved to the remote KVS. Finished an operation to sync local location timeZones to the remote.");
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  sub_1C95857A4();
  OUTLINED_FUNCTION_2_40();
  sub_1C948981C();

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t SavedLocationsManager.updatedSavedLocationsLegacy(_:)()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  OUTLINED_FUNCTION_7(v3);
  v1[4] = OUTLINED_FUNCTION_12_4();
  v4 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C958974C()
{
  OUTLINED_FUNCTION_30();
  v1 = v0[1].i64[1];
  sub_1C96A7414();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = qword_1EC3A46B0;
  v7 = v1;
  sub_1C96A53C4();
  if (v6 != -1)
  {
    OUTLINED_FUNCTION_13_20();
  }

  v8 = qword_1EC3A5F40;
  OUTLINED_FUNCTION_63_0();
  v11 = sub_1C9593824(v9, 255, v10);
  v12 = swift_allocObject();
  v12[1].i64[0] = v8;
  v12[1].i64[1] = v11;
  v12[2] = vextq_s8(v0[1], v0[1], 8uLL);
  sub_1C96A3D04();
  OUTLINED_FUNCTION_104();
  sub_1C951C258();
  v14 = v13;
  v0[2].i64[1] = v13;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_131(v15);
  *v16 = v17;
  v16[1] = sub_1C95898C8;
  v18 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v16, v14, v18);
}

uint64_t sub_1C95898C8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95899C8()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C9589A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[70] = a5;
  v5[69] = a4;
  v5[71] = type metadata accessor for Location();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v6 = type metadata accessor for SavedLocation();
  v5[74] = v6;
  v5[75] = *(v6 - 8);
  v5[76] = swift_task_alloc();
  v5[77] = swift_task_alloc();
  v7 = type metadata accessor for LocationDataModel();
  v5[78] = v7;
  v5[79] = *(v7 - 8);
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  v5[82] = swift_task_alloc();
  v5[83] = swift_task_alloc();
  if (qword_1EC3A46B0 != -1)
  {
    swift_once();
  }

  v5[84] = qword_1EC3A5F40;
  sub_1C96A3D04();
  v8 = swift_task_alloc();
  v5[85] = v8;
  *v8 = v5;
  v8[1] = sub_1C9589C20;

  return SavedLocationsManager.fetchLocationDataModels()();
}

uint64_t sub_1C9589C20()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  *(v6 + 688) = v5;

  v7 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C9589D18()
{
  v1 = *(v0 + 688);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v87 = *(v0 + 632);
    OUTLINED_FUNCTION_12_6();
    v4 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      v5 = *(v87 + 72);
      sub_1C95935CC();
      OUTLINED_FUNCTION_142((v0 + 120));
      OUTLINED_FUNCTION_117();
      sub_1C95935CC();
      swift_isUniquelyReferenced_nonNull_native();
      v88 = v4;
      v6 = sub_1C950B240((v0 + 120));
      if (__OFADD__(v4[2], (v7 & 1) == 0))
      {
        goto LABEL_35;
      }

      v8 = v6;
      v9 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6150);
      if (sub_1C96A7B84())
      {
        v10 = sub_1C950B240((v0 + 120));
        if ((v9 & 1) != (v11 & 1))
        {

          sub_1C96A7E44();
          return;
        }

        v8 = v10;
      }

      if (v9)
      {
        sub_1C953DCD0(*(v0 + 656), v4[7] + v8 * v5);
      }

      else
      {
        v4[(v8 >> 6) + 8] |= 1 << v8;
        memcpy((v4[6] + 72 * v8), (v0 + 120), 0x48uLL);
        OUTLINED_FUNCTION_3_28();
        sub_1C95933D4();
        v12 = v4[2];
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          goto LABEL_36;
        }

        v4[2] = v14;
        sub_1C95087DC(v0 + 120, v0 + 264);
      }

      ++v3;
      OUTLINED_FUNCTION_1_40();
      sub_1C948981C();
      if (v2 == v3)
      {
        goto LABEL_15;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC8];
LABEL_15:

  v15 = *(v0 + 560);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *(v0 + 600);
    v75 = *(v0 + 568);
    v76 = *(v0 + 624);
    OUTLINED_FUNCTION_78_0(MEMORY[0x1E69E7CC0]);
    sub_1C9522CB0();
    v18 = v88;
    OUTLINED_FUNCTION_12_6();
    v20 = v15 + v19;
    v86 = *(v17 + 72);
    v77 = v4;
    do
    {
      sub_1C95935CC();
      OUTLINED_FUNCTION_117();
      sub_1C95935CC();
      OUTLINED_FUNCTION_12_7();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        memcpy((v0 + 16), *(v0 + 608), 0x68uLL);
        OUTLINED_FUNCTION_142((v0 + 192));
        if (v4[2] && (sub_1C950B240((v0 + 192)), (v21 & 1) != 0))
        {
          v22 = *(v0 + 640);
          OUTLINED_FUNCTION_68_0();
          sub_1C95935CC();
          sub_1C955FE40(v0 + 16);
          OUTLINED_FUNCTION_20_14();
          sub_1C948981C();
          OUTLINED_FUNCTION_3_28();
          OUTLINED_FUNCTION_11();
          sub_1C95933D4();
        }

        else
        {
          v52 = *(v0 + 648);
          OUTLINED_FUNCTION_20_14();
          sub_1C948981C();
          sub_1C96A4DF4();
          OUTLINED_FUNCTION_3();
          __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
          v22 = sub_1C96A4A54();
          OUTLINED_FUNCTION_3();
          __swift_storeEnumTagSinglePayload(v57, v58, v59, v22);
          v60 = v16;
          v62 = *(v0 + 88);
          v61 = *(v0 + 96);
          v63 = *(v0 + 112);
          v85 = *(v0 + 104);
          OUTLINED_FUNCTION_3();
          __swift_storeEnumTagSinglePayload(v64, v65, v66, v22);
          sub_1C95087DC(v0 + 16, v0 + 480);
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C955FE40(v0 + 16);
          memcpy(v52, (v0 + 192), 0x48uLL);
          v67 = &v52[v76[6]];
          *v67 = 0;
          *(v67 + 1) = 0;
          v68 = &v52[v76[8]];
          *v68 = v62;
          *(v68 + 1) = v61;
          v16 = v60;
          v69 = &v52[v76[9]];
          *v69 = v85;
          *(v69 + 1) = v63;
          v4 = v77;
          v70 = &v52[v76[10]];
          *v70 = 0;
          *(v70 + 1) = 0;
          v71 = &v52[v76[11]];
          *v71 = 0;
          *(v71 + 1) = 0;
        }
      }

      else
      {
        v23 = *(v0 + 648);
        v83 = v16;
        v84 = v18;
        v24 = *(v0 + 576);
        OUTLINED_FUNCTION_22_12();
        sub_1C95933D4();
        sub_1C95935CC();
        memcpy((v0 + 336), v24, 0x48uLL);
        v25 = v76[5];
        v26 = v75[5];
        v27 = sub_1C96A4DF4();
        OUTLINED_FUNCTION_6();
        (*(v28 + 16))(&v23[v25], &v24[v26], v27);
        OUTLINED_FUNCTION_48();
        __swift_storeEnumTagSinglePayload(v29, v30, v31, v27);
        sub_1C95087DC(v0 + 336, v0 + 408);
        v32 = sub_1C96A4D74();
        v81 = v33;
        v82 = v32;
        sub_1C948981C();
        OUTLINED_FUNCTION_20_14();
        sub_1C948981C();
        sub_1C955FEC0();
        v34 = &v24[v75[7]];
        v35 = *v34;
        v36 = *(v34 + 1);
        v37 = &v24[v75[8]];
        v38 = *(v37 + 1);
        v79 = v35;
        v80 = *v37;
        v39 = v75[10];
        v40 = &v24[v75[9]];
        v22 = *(v40 + 1);
        v78 = *v40;
        v42 = *&v24[v39];
        v41 = *&v24[v39 + 8];
        sub_1C96A53C4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        v18 = v84;
        sub_1C948981C();
        sub_1C96A4A54();
        OUTLINED_FUNCTION_3();
        __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
        memcpy(v23, (v0 + 336), 0x48uLL);
        v47 = &v23[v76[6]];
        *v47 = v82;
        v47[1] = v81;
        v48 = &v23[v76[8]];
        *v48 = v79;
        *(v48 + 1) = v36;
        v49 = &v23[v76[9]];
        *v49 = v80;
        *(v49 + 1) = v38;
        v50 = &v23[v76[10]];
        *v50 = v78;
        *(v50 + 1) = v22;
        v16 = v83;
        v51 = &v23[v76[11]];
        v4 = v77;
        *v51 = v42;
        *(v51 + 1) = v41;
      }

      OUTLINED_FUNCTION_122_1();
      if (v73)
      {
        OUTLINED_FUNCTION_55_1(v72);
        sub_1C9522CB0();
      }

      *(v18 + 16) = v22;
      OUTLINED_FUNCTION_40_4();
      OUTLINED_FUNCTION_3_28();
      sub_1C95933D4();
      v20 += v86;
      --v16;
    }

    while (v16);
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 696) = v18;
  v74 = swift_task_alloc();
  *(v0 + 704) = v74;
  *v74 = v0;
  v74[1] = sub_1C958A444;

  sub_1C958A870(v18);
}

uint64_t sub_1C958A444()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v2 = *(v1 + 672);
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C958A560, v2, 0);
}

uint64_t sub_1C958A560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_109_1();

  sub_1C95857A4();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_49_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t SavedLocationsManager.fetchLocationDataModels()()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_98();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C958A650()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 24) = OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_locationDataModels;
  if (qword_1EC3A46B0 != -1)
  {
    OUTLINED_FUNCTION_13_20();
  }

  v1 = qword_1EC3A5F40;

  return MEMORY[0x1EEE6DFA0](sub_1C958A6DC, v1, 0);
}

uint64_t sub_1C958A6DC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0[2] + v0[3]);
  v0[4] = v1;
  sub_1C959227C(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_130(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_84_1(v3);

  return sub_1C95815CC(v5);
}

uint64_t sub_1C958A770()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;

  sub_1C959228C(v2);
  v5 = OUTLINED_FUNCTION_6_13();

  return v6(v5);
}

uint64_t sub_1C958A870(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C958A890, 0, 0);
}

uint64_t sub_1C958A890()
{
  OUTLINED_FUNCTION_49();
  v24 = v0;
  if (qword_1EDB7CB18 != -1)
  {
    OUTLINED_FUNCTION_7_23();
  }

  if (sub_1C96A4E94())
  {
    OUTLINED_FUNCTION_17();

    return v1();
  }

  else
  {
    if (qword_1EDB7D010 != -1)
    {
      OUTLINED_FUNCTION_0_53();
      swift_once();
    }

    v3 = sub_1C96A6154();
    *(v0 + 32) = OUTLINED_FUNCTION_54_0(v3, qword_1EDB7D018);
    sub_1C96A53C4();
    v4 = sub_1C96A6134();
    v5 = sub_1C96A76A4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 16);
      v7 = OUTLINED_FUNCTION_102();
      v8 = OUTLINED_FUNCTION_8_4();
      v23 = v8;
      OUTLINED_FUNCTION_31(7.2225e-34);
      v9 = type metadata accessor for LocationDataModel();
      v10 = MEMORY[0x1CCA8CC40](v6, v9);
      v12 = sub_1C9484164(v10, v11, &v23);

      *(v7 + 14) = v12;
      OUTLINED_FUNCTION_16_4();
      _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      v18 = OUTLINED_FUNCTION_15_17();
      MEMORY[0x1CCA8E3D0](v18);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }

    v19 = swift_task_alloc();
    v20 = OUTLINED_FUNCTION_130(v19);
    *v20 = v21;
    v20[1] = sub_1C958AA98;
    v22 = OUTLINED_FUNCTION_77_0(*(v0 + 16));

    return sub_1C958AE38(v22);
  }
}

uint64_t sub_1C958AA98()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C958AB7C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28_8((*(v0 + 24) + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_defaultLocationManager));
  OUTLINED_FUNCTION_12_3();
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_131(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_23_11(v3);
  v5 = OUTLINED_FUNCTION_12_7();

  return v7(v5);
}

uint64_t sub_1C958AC84()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 56) = v3;

  v4 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C958AD6C()
{
  OUTLINED_FUNCTION_30();
  sub_1C958BF24(*(v0 + 16), *(v0 + 56));

  v1 = sub_1C96A6134();
  sub_1C96A76A4();
  v2 = OUTLINED_FUNCTION_27_1();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_36_3();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_47(v4);
    OUTLINED_FUNCTION_16_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  OUTLINED_FUNCTION_17();

  return v10();
}

uint64_t sub_1C958AE38(uint64_t a1)
{
  v2[78] = v1;
  v2[77] = a1;
  v3 = sub_1C96A4A54();
  v2[79] = v3;
  v2[80] = *(v3 - 8);
  v2[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  v2[82] = swift_task_alloc();
  v4 = sub_1C96A4DF4();
  v2[83] = v4;
  v2[84] = *(v4 - 8);
  v2[85] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  v2[86] = swift_task_alloc();
  v2[87] = type metadata accessor for Location();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v5 = type metadata accessor for LocationDataModel();
  v2[90] = v5;
  v2[91] = *(v5 - 8);
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v6 = type metadata accessor for SavedLocation();
  v2[96] = v6;
  v2[97] = *(v6 - 8);
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  if (qword_1EC3A46B0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC3A5F40;
  v2[100] = qword_1EC3A5F40;
  sub_1C96A3D04();

  return MEMORY[0x1EEE6DFA0](sub_1C958B134, v7, 0);
}

uint64_t sub_1C958B134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_133();
  if (qword_1EDB7CB18 != -1)
  {
    OUTLINED_FUNCTION_7_23();
  }

  if (sub_1C96A4E94())
  {

    OUTLINED_FUNCTION_62_1();
    v30 = v16;
    v31 = v15;

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_85_0();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, v30, v31, a12, a13, a14);
  }

  else
  {
    *(v14 + 808) = sub_1C957FA7C(*(v14 + 616));
    sub_1C96A53C4();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_85_0();

    return MEMORY[0x1EEE6DFA0](v26, v27, v28);
  }
}

uint64_t sub_1C958B278()
{
  OUTLINED_FUNCTION_18();
  sub_1C96A53C4();
  v0 = OUTLINED_FUNCTION_11();

  return MEMORY[0x1EEE6DFA0](v0, v1, 0);
}

uint64_t sub_1C958B2E0()
{
  v160 = v0;
  v1 = *(v0 + 808);

  v137 = v1;
  v2 = *(v0 + 808);
  v155 = *(v1 + 16);
  if (v155)
  {
    v3 = *(v0 + 728);
    v4 = *(v0 + 720);
    v139 = *(v0 + 696);
    v140 = *(v0 + 784);
    v5 = *(v0 + 672);
    __src[0] = MEMORY[0x1E69E7CC0];
    sub_1C9522D68();
    v6 = __src[0];
    OUTLINED_FUNCTION_12_6();
    v8 = v2 + v7;
    v138 = (v5 + 32);
    v151 = *(v3 + 72);
    v153 = v4;
    do
    {
      v156 = v6;
      v9 = *(v0 + 664);
      v10 = *(v0 + 656);
      OUTLINED_FUNCTION_66_0();
      sub_1C95935CC();
      OUTLINED_FUNCTION_3_28();
      OUTLINED_FUNCTION_117();
      sub_1C95933D4();
      sub_1C95935CC();
      sub_1C955FEC0();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v9);
      v12 = *(v0 + 744);
      if (EnumTagSinglePayload == 1)
      {
        v13 = *(v0 + 696);
        v14 = *(v0 + 656);
        OUTLINED_FUNCTION_1_40();
        sub_1C948981C();
        sub_1C9557AB8(v14, &unk_1EC3A5F60);
        OUTLINED_FUNCTION_3();
        __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
      }

      else
      {
        v18 = *(v0 + 704);
        v148 = *(v0 + 696);
        v19 = *(v0 + 680);
        v20 = *(v0 + 664);
        v144 = *(v0 + 632);
        v21 = *v138;
        (*v138)(v19, *(v0 + 656), v20);
        OUTLINED_FUNCTION_140((v0 + 376));
        v21(&v18[v139[5]], v19, v20);
        OUTLINED_FUNCTION_3();
        __swift_storeEnumTagSinglePayload(v22, v23, v24, v144);
        v25 = (v12 + v4[8]);
        v26 = *v25;
        v27 = v25[1];
        v28 = (v12 + v4[9]);
        v29 = v28[1];
        v142 = v26;
        v145 = *v28;
        v30 = v4[11];
        v31 = (v12 + v4[10]);
        v33 = *v31;
        v32 = v31[1];
        v34 = *(v12 + v30 + 8);
        v141 = *(v12 + v30);
        sub_1C95087DC(v0 + 376, v0 + 448);
        sub_1C96A53C4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        OUTLINED_FUNCTION_1_40();
        sub_1C948981C();
        *&v18[v139[11]] = 0;
        memcpy(v18, (v0 + 376), 0x48uLL);
        v35 = &v18[v139[7]];
        *v35 = v142;
        *(v35 + 1) = v27;
        v36 = &v18[v139[8]];
        *v36 = v145;
        *(v36 + 1) = v29;
        v37 = &v18[v139[9]];
        *v37 = v33;
        *(v37 + 1) = v32;
        v38 = &v18[v139[10]];
        *v38 = v141;
        *(v38 + 1) = v34;
        OUTLINED_FUNCTION_22_12();
        sub_1C95933D4();
        OUTLINED_FUNCTION_48();
        __swift_storeEnumTagSinglePayload(v39, v40, v41, v148);
      }

      v42 = *(v0 + 688);
      v43 = __swift_getEnumTagSinglePayload(v42, 1, *(v0 + 696));
      v44 = *(v0 + 752);
      if (v43 == 1)
      {
        sub_1C9557AB8(v42, &qword_1EC3A5450);
        OUTLINED_FUNCTION_140((v0 + 16));
        v4 = v153;
        v45 = (v44 + v153[8]);
        v46 = v45[1];
        v47 = (v44 + v153[9]);
        v48 = v47[1];
        v149 = *v47;
        v146 = *v45;
        sub_1C95087DC(v0 + 16, v0 + 88);
        sub_1C96A53C4();
        sub_1C96A53C4();
        OUTLINED_FUNCTION_1_40();
        sub_1C948981C();
        OUTLINED_FUNCTION_111_1();
        v50.n128_u64[0] = v146;
        v49.n128_u64[0] = v149;
        v50.n128_u64[1] = v46;
        v49.n128_u64[1] = v48;
        OUTLINED_FUNCTION_103_1(v140, v49, v50);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        OUTLINED_FUNCTION_1_40();
        sub_1C948981C();
        sub_1C95933D4();
        sub_1C95933D4();
        swift_storeEnumTagMultiPayload();
        v4 = v153;
      }

      OUTLINED_FUNCTION_6_31();
      v6 = v156;
      __src[0] = v156;
      v52 = *(v156 + 16);
      v51 = *(v156 + 24);
      if (v52 >= v51 >> 1)
      {
        OUTLINED_FUNCTION_90_1(v51);
        sub_1C9522D68();
        v6 = __src[0];
      }

      *(v6 + 16) = v52 + 1;
      OUTLINED_FUNCTION_40_4();
      OUTLINED_FUNCTION_6_31();
      v8 += v151;
      --v155;
    }

    while (v155);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v53 = *(v0 + 624);
  v54 = *(v53 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_locationDataModels);
  *(v53 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_locationDataModels) = *(v0 + 808);
  sub_1C959228C(v54);
  v55 = OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_savedLocations;
  OUTLINED_FUNCTION_113();
  *(v53 + v55) = v6;
  sub_1C96A53C4();

  if (qword_1EDB7D010 != -1)
  {
    OUTLINED_FUNCTION_0_53();
    swift_once();
  }

  v56 = sub_1C96A6154();
  __swift_project_value_buffer(v56, qword_1EDB7D018);
  sub_1C96A53C4();
  v57 = sub_1C96A6134();
  sub_1C96A76A4();
  v58 = OUTLINED_FUNCTION_27_1();
  v157 = v6;
  if (os_log_type_enabled(v58, v59))
  {
    v60 = OUTLINED_FUNCTION_8_4();
    v61 = OUTLINED_FUNCTION_8_4();
    __src[0] = v61;
    *v60 = 134218499;
    v62 = v137;
    *(v60 + 4) = *(v137 + 16);

    *(v60 + 12) = 2160;
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_110_1(v63);
    v66 = sub_1C9484164(v64, v65, __src);

    *(v60 + 24) = v66;
    OUTLINED_FUNCTION_12_10();
    _os_log_impl(v67, v68, v69, v70, v71, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    v72 = OUTLINED_FUNCTION_15_17();
    MEMORY[0x1CCA8E3D0](v72);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  else
  {

    v62 = v137;
  }

  v73 = *(v0 + 624);
  v74 = *(v73 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_localKeyValueStore + 24);
  v75 = *(v73 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_localKeyValueStore + 32);
  v143 = (v73 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_localKeyValueStore);
  OUTLINED_FUNCTION_143((v73 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_localKeyValueStore));
  v76 = *(v75 + 8);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60F8);
  v76(0x736569746943, 0xE600000000000000, v77, v74, v75);
  v78 = sub_1C958D198(*(v0 + 600));

  v79 = *(v62 + 16);
  if (v79)
  {
    v80 = *(v0 + 808);
    v147 = *(v0 + 736);
    v81 = *(v0 + 728);
    v158 = MEMORY[0x1E69E7CC0];
    sub_1C9522DC0(0, v79, 0);
    v82 = v158;
    OUTLINED_FUNCTION_12_6();
    v84 = v80 + v83;
    v152 = *(v81 + 72);
    v150 = v78;
    do
    {
      OUTLINED_FUNCTION_68_0();
      sub_1C95935CC();
      if (*(v78 + 16) && (sub_1C9476F90(**(v0 + 736), *(v147 + 8)), (v85 & 1) != 0))
      {
        v86 = sub_1C96A53C4();
      }

      else
      {
        v86 = 0;
      }

      v87 = v86;
      sub_1C955FEC0();
      v88 = *(v0 + 544);
      if (v88)
      {
        v89 = *(v0 + 552);
        __swift_project_boxed_opaque_existential_1((v0 + 520), *(v0 + 544));
        OUTLINED_FUNCTION_142((v0 + 232));
        OUTLINED_FUNCTION_142(__src);
        v90 = v79;
        v91 = v82;
        v92 = *(v89 + 8);
        sub_1C95087DC(v0 + 232, v0 + 304);
        v93 = v89;
        v78 = v150;
        v94 = v92(__src, v88, v93);
        v82 = v91;
        v79 = v90;
        v88 = v94;
        v96 = v95;
        memcpy((v0 + 160), __src, 0x48uLL);
        sub_1C953AEDC(v0 + 160);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 520);
      }

      else
      {
        sub_1C9557AB8(v0 + 520, &unk_1EC3A6100);
        v96 = 1;
      }

      v97 = sub_1C95FA1D4(v87, v88, v96);
      v98 = OUTLINED_FUNCTION_38();
      sub_1C94DDFD8(v98, v99);

      OUTLINED_FUNCTION_1_40();
      sub_1C948981C();
      v100 = *(v82 + 16);
      OUTLINED_FUNCTION_122_1();
      if (v102)
      {
        v103 = OUTLINED_FUNCTION_90_1(v101);
        sub_1C9522DC0(v103, v96, 1);
      }

      *(v82 + 16) = v96;
      *(v82 + 8 * v100 + 32) = v97;
      v84 += v152;
      --v79;
    }

    while (v79);
  }

  else
  {

    v82 = MEMORY[0x1E69E7CC0];
  }

  v104 = *(v0 + 648);
  v154 = *(v0 + 632);
  v105 = v143[3];
  v106 = v143[4];
  OUTLINED_FUNCTION_19_7(v143);
  *(v0 + 608) = v82;
  v107 = *(v106 + 16);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60D8);
  v107(v0 + 608, 0x736569746943, 0xE600000000000000, v108, v105, v106);

  v109 = v143[3];
  v110 = v143[4];
  OUTLINED_FUNCTION_19_7(v143);
  *(v0 + 584) = 3223090;
  *(v0 + 592) = 0xE300000000000000;
  (*(v110 + 16))(v0 + 584, 0x7265567366657250, 0xEC0000006E6F6973, MEMORY[0x1E69E6158], v109, v110);
  v111 = v143[3];
  v112 = v143[4];
  OUTLINED_FUNCTION_19_7(v143);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  (*(v112 + 16))(v104, 0x616470557473614CLL, 0xEB00000000646574, v154, v111, v112);
  v113 = OUTLINED_FUNCTION_46();
  v114(v113);
  v115 = v143[3];
  v116 = v143[4];
  v117 = OUTLINED_FUNCTION_38();
  __swift_project_boxed_opaque_existential_1(v117, v118);
  (*(v116 + 32))(v115, v116);
  sub_1C96A53C4();
  v119 = sub_1C96A6134();
  v120 = sub_1C96A76A4();
  if (os_log_type_enabled(v119, v120))
  {
    v121 = OUTLINED_FUNCTION_8_4();
    v122 = OUTLINED_FUNCTION_8_4();
    __src[0] = v122;
    *v121 = 134218499;
    *(v121 + 4) = *(v137 + 16);

    *(v121 + 12) = 2160;
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_110_1(v123);
    v125 = v124;
    v127 = v126;

    v128 = sub_1C9484164(v125, v127, __src);

    *(v121 + 24) = v128;
    _os_log_impl(&dword_1C945E000, v119, v120, "Just wrote %ld locations to local key value store - locations=%{private,mask.hash}s", v121, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v122);
    v129 = OUTLINED_FUNCTION_15_17();
    MEMORY[0x1CCA8E3D0](v129);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v130 = sub_1C96A6134();
  sub_1C96A76A4();
  OUTLINED_FUNCTION_43_6();
  if (os_log_type_enabled(v130, v131))
  {
    OUTLINED_FUNCTION_36_3();
    v132 = swift_slowAlloc();
    OUTLINED_FUNCTION_47(v132);
    OUTLINED_FUNCTION_76_1(&dword_1C945E000, v133, v134, "Notifying observers to update their locations now that we've cached locally.");
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  sub_1C9583124(v157);

  OUTLINED_FUNCTION_62_1();

  OUTLINED_FUNCTION_17();

  return v135();
}

void sub_1C958BF24(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Location();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocationDataModel();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C946B5D0(0, &qword_1EDB7CD40);
  if (sub_1C96A7894() & 1) != 0 || (sub_1C96A78A4())
  {
    if (qword_1EDB7D010 != -1)
    {
      swift_once();
    }

    v13 = sub_1C96A6154();
    __swift_project_value_buffer(v13, qword_1EDB7D018);
    v63 = sub_1C96A6134();
    v14 = sub_1C96A76A4();
    if (os_log_type_enabled(v63, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C945E000, v63, v14, "Not syncing locations to the remote legacy store from this process.", v15, 2u);
      MEMORY[0x1CCA8E3D0](v15, -1, -1);
    }

    v16 = v63;
  }

  else
  {
    v59 = v2;
    v60 = v6;
    v61 = v10;
    v17 = sub_1C957FA7C(a1);
    if (qword_1EDB7D010 != -1)
    {
      swift_once();
    }

    v18 = sub_1C96A6154();
    v19 = __swift_project_value_buffer(v18, qword_1EDB7D018);
    sub_1C96A53C4();
    v63 = v19;
    v20 = sub_1C96A6134();
    v21 = sub_1C96A76A4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v62 = a2;
      v24 = v23;
      __dst[0] = v23;
      *v22 = 134218499;
      *(v22 + 4) = *(v17 + 16);

      *(v22 + 12) = 2160;
      *(v22 + 14) = 1752392040;
      *(v22 + 22) = 2081;
      v25 = MEMORY[0x1CCA8CC40](v17, v9);
      v27 = sub_1C9484164(v25, v26, __dst);

      *(v22 + 24) = v27;
      _os_log_impl(&dword_1C945E000, v20, v21, "Attempting to sync %ld locations to the remote key value store - locations=%{private,mask.hash}s", v22, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v28 = v24;
      a2 = v62;
      MEMORY[0x1CCA8E3D0](v28, -1, -1);
      MEMORY[0x1CCA8E3D0](v22, -1, -1);
    }

    else
    {
    }

    if (qword_1EDB7CB18 != -1)
    {
      swift_once();
    }

    if (sub_1C96A4E94())
    {
      goto LABEL_31;
    }

    v29 = *(a1 + 16);
    v58 = v17;
    if (v29)
    {
      v62 = a2;
      v66 = MEMORY[0x1E69E7CC0];
      sub_1C9522DE0(0, v29, 0);
      v30 = v66;
      v31 = a1 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v32 = *(v61 + 72);
      do
      {
        sub_1C95935CC();
        memcpy(__dst, v12, sizeof(__dst));
        sub_1C95087DC(__dst, v64);
        sub_1C948981C();
        v66 = v30;
        v34 = *(v30 + 16);
        v33 = *(v30 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1C9522DE0((v33 > 1), v34 + 1, 1);
          v30 = v66;
        }

        *(v30 + 16) = v34 + 1;
        memcpy((v30 + 72 * v34 + 32), __dst, 0x48uLL);
        v31 += v32;
        --v29;
      }

      while (v29);
      v17 = v58;
      a2 = v62;
    }

    v35 = *(a2 + 16);
    if (v35)
    {
      v66 = MEMORY[0x1E69E7CC0];
      sub_1C9522DE0(0, v35, 0);
      v36 = v66;
      v37 = a2 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
      v38 = *(v60 + 72);
      do
      {
        sub_1C95935CC();
        memcpy(__dst, v8, sizeof(__dst));
        sub_1C95087DC(__dst, v64);
        sub_1C948981C();
        v66 = v36;
        v40 = *(v36 + 16);
        v39 = *(v36 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1C9522DE0((v39 > 1), v40 + 1, 1);
          v36 = v66;
        }

        *(v36 + 16) = v40 + 1;
        memcpy((v36 + 72 * v40 + 32), __dst, 0x48uLL);
        v37 += v38;
        --v35;
      }

      while (v35);
      v17 = v58;
    }

    sub_1C955451C();
    v42 = v41;

    if (v42)
    {
LABEL_31:

      v43 = sub_1C96A6134();
      v44 = sub_1C96A76A4();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C945E000, v43, v44, "Aborting - cannot save default locations to the remote key value store.", v45, 2u);
        MEMORY[0x1CCA8E3D0](v45, -1, -1);
      }
    }

    else
    {
      v46 = *(v17 + 16);
      v47 = MEMORY[0x1E69E7CC0];
      if (v46)
      {
        __dst[0] = MEMORY[0x1E69E7CC0];
        sub_1C9522DC0(0, v46, 0);
        v47 = __dst[0];
        v48 = v17;
        v49 = v17 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
        v50 = *(v61 + 72);
        do
        {
          sub_1C95935CC();
          v51 = sub_1C95F987C();
          sub_1C948981C();
          __dst[0] = v47;
          v53 = *(v47 + 16);
          v52 = *(v47 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_1C9522DC0((v52 > 1), v53 + 1, 1);
            v47 = __dst[0];
          }

          *(v47 + 16) = v53 + 1;
          *(v47 + 8 * v53 + 32) = v51;
          v49 += v50;
          --v46;
        }

        while (v46);
        v54 = v59;
        v17 = v48;
      }

      else
      {
        v54 = v59;
      }

      v55 = *(v54 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_keyValueStoreProvider + 24);
      v56 = *(v54 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_keyValueStoreProvider + 32);
      __swift_project_boxed_opaque_existential_1((v54 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_keyValueStoreProvider), v55);
      v57 = swift_allocObject();
      *(v57 + 16) = v47;
      *(v57 + 24) = v17;
      (*(v56 + 8))(sub_1C959331C, v57, v55, v56);
    }
  }
}

uint64_t SavedLocationsManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  sub_1C96A50E4();
  v3 = OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_observers;
  OUTLINED_FUNCTION_113();
  v4 = *(v2 + v3);
  v11 = MEMORY[0x1E69E7CC0];
  v5 = sub_1C946D04C();
  result = sub_1C96A53C4();
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      *(v2 + v3) = v11;

      type metadata accessor for SavedLocationsManagerObserverProxy();
      OUTLINED_FUNCTION_54();
      swift_allocObject();
      v8 = swift_unknownObjectRetain();
      sub_1C94AC734(v8, a2);
      v9 = swift_beginAccess();
      MEMORY[0x1CCA8CC10](v9);
      sub_1C94AC1D4(*((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1C96A7314();
      swift_endAccess();
      return sub_1C96A50F4();
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA8D440](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = sub_1C96A3D04();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1C96A7B14();
      sub_1C96A7B34();
      sub_1C96A7B44();
      result = sub_1C96A7B24();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t SavedLocationsManager.removeObserver(_:)(uint64_t a1)
{
  v2 = v1;
  sub_1C96A50E4();
  v4 = OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_observers;
  OUTLINED_FUNCTION_113();
  v5 = *(v1 + v4);
  v11 = MEMORY[0x1E69E7CC0];
  v6 = sub_1C946D04C();
  result = sub_1C96A53C4();
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      *(v2 + v4) = v11;

      return sub_1C96A50F4();
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA8D440](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      result = sub_1C96A3D04();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v10 = Strong, swift_unknownObjectRelease(), v10 == a1))
    {
    }

    else
    {
      sub_1C96A7B14();
      sub_1C96A7B34();
      sub_1C96A7B44();
      result = sub_1C96A7B24();
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1C958CA90(unint64_t result, void *a2, uint64_t a3)
{
  v4 = result;
  if (result >> 62)
  {
    result = sub_1C96A7BB4();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCA8D440](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
        sub_1C96A3D04();
      }

      v14[3] = type metadata accessor for SavedLocationsManager();
      v14[4] = &protocol witness table for SavedLocationsManager;
      v14[0] = a2;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 24);
        ObjectType = swift_getObjectType();
        v10 = *(v8 + 8);
        v11 = a2;
        v10(v14, a3, ObjectType, v8);
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = a2;
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }
  }

  return result;
}

uint64_t sub_1C958CBD8(char a1)
{
  v2 = v1;
  if (qword_1EDB7D010 != -1)
  {
    swift_once();
  }

  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7D018);
  v5 = sub_1C96A6134();
  v6 = sub_1C96A76A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C945E000, v5, v6, "Attempting to fetch locations from the remote key value store", v7, 2u);
    MEMORY[0x1CCA8E3D0](v7, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_keyValueStoreProvider), *(v2 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_keyValueStoreProvider + 24));
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  v10 = sub_1C95B8804();

  return v10;
}

void sub_1C958CD74(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = (Strong + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_savedLocationsReader);
    v9 = v8[3];
    v10 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v10 + 32))(a1, a2 & 1, v9, v10);
  }

  else
  {
    v11 = type metadata accessor for SyncedData();
    __swift_storeEnumTagSinglePayload(a3, 1, 1, v11);
  }
}

void sub_1C958CE44(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v18 = a2;
  v7 = *(v6 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60D8);
  v7(&v18, 0xD000000000000010, 0x80000001C96D2340, v8, v5, v6);
  if (qword_1EDB7D010 != -1)
  {
    swift_once();
  }

  v9 = sub_1C96A6154();
  __swift_project_value_buffer(v9, qword_1EDB7D018);
  sub_1C96A53C4();
  v10 = sub_1C96A6134();
  v11 = sub_1C96A76A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 134218499;
    *(v12 + 4) = *(a3 + 16);

    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    v14 = type metadata accessor for LocationDataModel();
    v15 = MEMORY[0x1CCA8CC40](a3, v14);
    v17 = sub_1C9484164(v15, v16, &v18);

    *(v12 + 24) = v17;
    _os_log_impl(&dword_1C945E000, v10, v11, "Just synced %ld locations to the remote key value store - locations=%{private,mask.hash}s", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1CCA8E3D0](v13, -1, -1);
    MEMORY[0x1CCA8E3D0](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1C958D04C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDB7D010 != -1)
  {
    swift_once();
  }

  v6 = sub_1C96A6154();
  __swift_project_value_buffer(v6, qword_1EDB7D018);
  v7 = sub_1C96A6134();
  v8 = sub_1C96A76A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C945E000, v7, v8, "Saving serialized Synced based data to the KVS", v9, 2u);
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
  }

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v13[0] = a2;
  v13[1] = a3;
  return (*(v11 + 16))(v13, 0x61446465636E7973, 0xEA00000000006174, MEMORY[0x1E6969080], v10, v11);
}

uint64_t sub_1C958D198(uint64_t a1)
{
  if (!a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6770);

    return sub_1C96A6F04();
  }

  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 32;
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  while (1)
  {
    sub_1C9484328(v3, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6770);
    if (!swift_dynamicCast())
    {
      goto LABEL_15;
    }

    if (!*(v26 + 16) || (v4 = sub_1C9476F90(7627084, 0xE300000000000000), (v5 & 1) == 0) || (sub_1C9484328(*(v26 + 56) + 32 * v4, v27), (swift_dynamicCast() & 1) == 0) || !*(v26 + 16) || (v6 = sub_1C9476F90(7237452, 0xE300000000000000), (v7 & 1) == 0) || (sub_1C9484328(*(v26 + 56) + 32 * v6, v27), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_15;
    }

    v8 = sub_1C96A7844();
    v10 = v9;
    swift_isUniquelyReferenced_nonNull_native();
    v27[0] = v2;
    v25 = v8;
    v11 = sub_1C9476F90(v8, v10);
    v24 = v12;
    if (__OFADD__(*(v2 + 16), (v12 & 1) == 0))
    {
      break;
    }

    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6110);
    if (sub_1C96A7B84())
    {
      v14 = v10;
      v15 = sub_1C9476F90(v25, v10);
      v17 = v24;
      v2 = MEMORY[0x1E69E7CC8];
      if ((v24 & 1) != (v16 & 1))
      {
        goto LABEL_28;
      }

      v13 = v15;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC8];
      v14 = v10;
      v17 = v24;
    }

    v18 = v27[0];
    if (v17)
    {
      *(*(v27[0] + 56) + 8 * v13) = v26;
    }

    else
    {
      *(v27[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v19 = (v18[6] + 16 * v13);
      *v19 = v25;
      v19[1] = v14;
      *(v18[7] + 8 * v13) = v26;
      v20 = v18[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_27;
      }

      v18[2] = v22;
    }

LABEL_15:
    v3 += 32;
    if (!--v1)
    {
      return MEMORY[0x1E69E7CC8];
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1C96A7E44();
  __break(1u);
  return result;
}

uint64_t sub_1C958D4D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6138);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - v3;
  v5 = type metadata accessor for LocationDataModel();
  v46 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v42 - v8;
  if (qword_1EDB7D010 != -1)
  {
LABEL_25:
    swift_once();
  }

  v9 = sub_1C96A6154();
  v10 = __swift_project_value_buffer(v9, qword_1EDB7D018);
  v11 = sub_1C96A6134();
  v12 = sub_1C96A76A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C945E000, v11, v12, "Attempting to fetch legacy locations last saved in the local cache", v13, 2u);
    MEMORY[0x1CCA8E3D0](v13, -1, -1);
  }

  v14 = *(v1 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_localKeyValueStore + 24);
  v15 = *(v1 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_localKeyValueStore + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_localKeyValueStore), v14);
  v16 = *(v15 + 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60F8);
  v16(v49, 0x736569746943, 0xE600000000000000, v17, v14, v15);
  v18 = v49[0];
  if (v49[0])
  {
    v44 = v10;
    v19 = 0;
    v20 = *(v49[0] + 16);
    v21 = v49[0] + 32;
    v48 = MEMORY[0x1E69E7CC0];
LABEL_6:
    v22 = v21 + 32 * v19;
    while (v20 != v19)
    {
      if (v19 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      sub_1C9484328(v22, v49);
      sub_1C958DA8C(v49, v1, v4);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
      {
        v43 = v21;
        sub_1C95933D4();
        sub_1C95933D4();
        v23 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C94FB930();
          v23 = v27;
        }

        v24 = v23;
        v25 = *(v23 + 16);
        v48 = v24;
        v26 = v25 + 1;
        v21 = v43;
        if (v25 >= *(v24 + 24) >> 1)
        {
          v42 = v25 + 1;
          sub_1C94FB930();
          v26 = v42;
          v48 = v28;
        }

        ++v19;
        *(v48 + 16) = v26;
        sub_1C95933D4();
        goto LABEL_6;
      }

      sub_1C9557AB8(v4, &qword_1EC3A6138);
      v22 += 32;
      ++v19;
    }

    v29 = v48;
    sub_1C96A53C4();
    v30 = sub_1C96A6134();
    v31 = sub_1C96A76A4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v49[0] = v33;
      *v32 = 134218499;
      *(v32 + 4) = *(v29 + 16);

      *(v32 + 12) = 2160;
      *(v32 + 14) = 1752392040;
      *(v32 + 22) = 2081;
      v34 = MEMORY[0x1CCA8CC40](v29, v5);
      v36 = sub_1C9484164(v34, v35, v49);

      *(v32 + 24) = v36;
      _os_log_impl(&dword_1C945E000, v30, v31, "Successfully fetched locations from the local key value store. Location count = %ld. Locations=%{private,mask.hash}s", v32, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x1CCA8E3D0](v33, -1, -1);
      MEMORY[0x1CCA8E3D0](v32, -1, -1);
    }

    else
    {
    }

    v40 = sub_1C957FA7C(v29);
  }

  else
  {
    v37 = sub_1C96A6134();
    v38 = sub_1C96A76A4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1C945E000, v37, v38, "No local locations list object found - returning the default locations", v39, 2u);
      MEMORY[0x1CCA8E3D0](v39, -1, -1);
    }

    return 1;
  }

  return v40;
}

uint64_t sub_1C958DA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_locationDataModelFactory + 24);
  v7 = *(a2 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_locationDataModelFactory + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_locationDataModelFactory), v6);
  (*(v7 + 8))(a1, v6, v7);
  if (v3)
  {
    if (qword_1EDB7D010 != -1)
    {
      swift_once();
    }

    v8 = sub_1C96A6154();
    __swift_project_value_buffer(v8, qword_1EDB7D018);
    sub_1C9484328(a1, v26);
    v9 = v3;
    v10 = sub_1C96A6134();
    v11 = sub_1C96A7684();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 136446723;
      v25 = v3;
      v14 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
      v15 = sub_1C96A70A4();
      v17 = sub_1C9484164(v15, v16, &v27);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      sub_1C9484328(v26, &v25);
      v18 = sub_1C96A70A4();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v21 = sub_1C9484164(v18, v20, &v27);

      *(v12 + 24) = v21;
      _os_log_impl(&dword_1C945E000, v10, v11, "Skipping a local location after an unexpected parsing error: %{public}s, localLocation: %{private,mask.hash}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v13, -1, -1);
      MEMORY[0x1CCA8E3D0](v12, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    v24 = type metadata accessor for LocationDataModel();
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v24);
  }

  else
  {
    v22 = type metadata accessor for LocationDataModel();
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v22);
  }
}

uint64_t sub_1C958DD94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0C0C;

  return SavedLocationsManager.addLocationWithChecks(_:locationDisplayContext:)();
}

uint64_t sub_1C958DE3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return SavedLocationsManager.removeLocation(at:)();
}

uint64_t sub_1C958DED4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return SavedLocationsManager.removeLocation(by:)();
}

uint64_t sub_1C958DF7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return SavedLocationsManager.moveLocation(from:to:)();
}

uint64_t sub_1C958E024()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return SavedLocationsManager.updateSavedLocationTimeZones(_:)();
}

uint64_t sub_1C958E104()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C952B410;

  return SavedLocationsManager.fetchLocationDataModels()();
}

Swift::Void __swiftcall SavedLocationsManager.reloadFromLocalStorage()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C96A7414();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v8 = v0;
  OUTLINED_FUNCTION_104();
  sub_1C951C258();
}

uint64_t sub_1C958E284()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return SavedLocationsManager.reloadFromLocalStorage()();
}

uint64_t SavedLocationsManager.reloadFromLocalStorage()()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_37(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_23_11(v1);

  return sub_1C9590490();
}

void SavedLocationsManager.ubiquitousKeyValueStoreChangedExternally(_:changeReason:)()
{
  OUTLINED_FUNCTION_30_1();
  v2 = *v1;
  if (*v1 < 3)
  {
    goto LABEL_2;
  }

  if (*v1 != 3)
  {
    v30[0] = 0x61446465636E7973;
    v30[1] = 0xEA00000000006174;
    MEMORY[0x1EEE9AC00](v0);
    v28[2] = v30;
    if (!sub_1C957FD34(sub_1C9592490, v28, v2))
    {
      if (qword_1EDB7D010 != -1)
      {
        OUTLINED_FUNCTION_0_53();
        swift_once();
      }

      v18 = sub_1C96A6154();
      OUTLINED_FUNCTION_54_0(v18, qword_1EDB7D018);
      sub_1C96A53C4();
      v19 = sub_1C96A6134();
      v20 = sub_1C96A76A4();
      sub_1C9592428(v2);
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = OUTLINED_FUNCTION_8_4();
        v30[0] = v22;
        *v21 = 136315138;
        v31 = v2;
        v23 = OUTLINED_FUNCTION_11();
        __swift_instantiateConcreteTypeFromMangledNameV2(v23);
        sub_1C9469CB4(&qword_1EDB7AB68, &unk_1EC3A5FC0);
        v24 = sub_1C96A6F54();
        v26 = sub_1C9484164(v24, v25, v30);

        *(v21 + 4) = v26;
        _os_log_impl(&dword_1C945E000, v19, v20, "Remote store did change but it wasn't a relevant key (%s), so ignoring", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        v27 = OUTLINED_FUNCTION_15_17();
        MEMORY[0x1CCA8E3D0](v27);
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1CCA8E3D0]();
      }

      goto LABEL_7;
    }

LABEL_2:
    if (qword_1EDB7D010 != -1)
    {
      OUTLINED_FUNCTION_0_53();
      swift_once();
    }

    v3 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v3, qword_1EDB7D018);
    sub_1C9592414(v2);
    v4 = sub_1C96A6134();
    v5 = sub_1C96A76A4();
    sub_1C9592428(v2);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = OUTLINED_FUNCTION_8_4();
      v30[0] = v7;
      *v6 = 136446210;
      v31 = v2;
      sub_1C9592414(v2);
      sub_1C959243C();
      sub_1C96A7DB4();
      sub_1C9592428(v31);
      v8 = OUTLINED_FUNCTION_11();
      v11 = sub_1C9484164(v8, v9, v10);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_1C945E000, v4, v5, "Remote store was changed externally with reason: %{public}s. Starting an operation to merge remote with local.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
      v12 = OUTLINED_FUNCTION_15_17();
      MEMORY[0x1CCA8E3D0](v12);
    }

    sub_1C95823DC();

LABEL_7:
    OUTLINED_FUNCTION_20_4();
    return;
  }

  if (qword_1EDB7D010 != -1)
  {
    OUTLINED_FUNCTION_0_53();
    swift_once();
  }

  v13 = sub_1C96A6154();
  OUTLINED_FUNCTION_54_0(v13, qword_1EDB7D018);
  v29 = sub_1C96A6134();
  sub_1C96A76A4();
  OUTLINED_FUNCTION_43_6();
  if (os_log_type_enabled(v29, v14))
  {
    OUTLINED_FUNCTION_36_3();
    v15 = swift_slowAlloc();
    *v15 = 0;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  OUTLINED_FUNCTION_20_4();
}

uint64_t sub_1C958E794(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A78);
  sub_1C955FEC0();
  v6 = (v5 + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  sub_1C949E15C();
  *(v7 + v6) = a2;
  v8 = a2;
  return sub_1C96A5624();
}

uint64_t sub_1C958E900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_1C96A6AE4();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  v3[16] = swift_task_alloc();
  v3[17] = type metadata accessor for SyncedData();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C958EA9C, 0, 0);
}

uint64_t sub_1C958EA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_109_1();
  v13 = v12[16];
  v14 = v12[17];
  sub_1C955FEC0();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1C9557AB8(v12[16], &unk_1EC3A5F90);
    if (qword_1EDB7D010 != -1)
    {
      OUTLINED_FUNCTION_0_53();
      swift_once();
    }

    v15 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v15, qword_1EDB7D018);
    v16 = sub_1C96A6134();
    sub_1C96A76A4();
    v17 = OUTLINED_FUNCTION_27_1();
    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_36_3();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_47(v19);
      OUTLINED_FUNCTION_16_4();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }

LABEL_13:

    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_49_1();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }

  v25 = v12[18];
  v26 = v12[9];
  OUTLINED_FUNCTION_5_23();
  sub_1C95933D4();
  sub_1C958F2D8(v26, v25);
  OUTLINED_FUNCTION_11();
  static SyncedData.== infix(_:_:)();
  if (v27)
  {
    if (qword_1EDB7D010 != -1)
    {
      OUTLINED_FUNCTION_0_53();
      swift_once();
    }

    v28 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v28, qword_1EDB7D018);
    v29 = sub_1C96A6134();
    v30 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_30_0(v30))
    {
      OUTLINED_FUNCTION_36_3();
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C945E000, v29, v30, "No changes between remote and local synced data after external change event. No action taken.", v31, 2u);
      v32 = OUTLINED_FUNCTION_15_17();
      MEMORY[0x1CCA8E3D0](v32);
    }

    sub_1C948981C();
    OUTLINED_FUNCTION_117();
    sub_1C948981C();
    goto LABEL_13;
  }

  if (qword_1EDB7D010 != -1)
  {
    OUTLINED_FUNCTION_0_53();
    swift_once();
  }

  v42 = sub_1C96A6154();
  OUTLINED_FUNCTION_54_0(v42, qword_1EDB7D018);
  v43 = sub_1C96A6134();
  v44 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_30_0(v44))
  {
    v45 = OUTLINED_FUNCTION_102();
    *v45 = 134218240;
    OUTLINED_FUNCTION_108();
    swift_beginAccess();
    *(v45 + 4) = sub_1C96A6C84();
    *(v45 + 12) = 2048;
    *(v45 + 14) = sub_1C96A6C84();
    _os_log_impl(&dword_1C945E000, v43, v44, "Merge localSyncedData(%ld) with remoteSyncedData localSyncedData:(%ld)", v45, 0x16u);
    v46 = OUTLINED_FUNCTION_15_17();
    MEMORY[0x1CCA8E3D0](v46);
  }

  v47 = v12[18];
  v48 = v12[12];
  v49 = v12[11];
  v70 = v12[10];
  v50 = v12[9];
  swift_beginAccess();
  OUTLINED_FUNCTION_18_15();
  sub_1C9593824(v51, 255, v52);
  OUTLINED_FUNCTION_12_7();
  sub_1C96A6924();
  v53 = OUTLINED_FUNCTION_46();
  v54(v53);
  sub_1C95C8040();
  (*(v49 + 40))(v47, v48, v70);
  swift_endAccess();
  v55 = *(v50 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager + 24);
  v56 = *(v50 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager + 32);
  __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager), v55);
  v57 = (*(v56 + 48))(v47, v55, v56);
  v59 = v58;
  v12[20] = v57;
  v12[21] = v58;
  OUTLINED_FUNCTION_141((v50 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_keyValueStoreProvider));
  OUTLINED_FUNCTION_54();
  v60 = swift_allocObject();
  v12[22] = v60;
  *(v60 + 16) = v57;
  *(v60 + 24) = v59;
  v61 = OUTLINED_FUNCTION_46();
  sub_1C94B05C8(v61, v62);
  v63 = swift_task_alloc();
  v12[23] = v63;
  *v63 = v12;
  v63[1] = sub_1C958EF58;
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_49_1();

  return sub_1C94D28EC(v64, v65, v66, v67, v68, v69);
}

uint64_t sub_1C958EF58()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C958F058()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_82_1(v0[9]);
  v1 = OUTLINED_FUNCTION_31_4();
  v3 = v2(v1);
  v0[24] = v3;
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_1C958F11C;

  return sub_1C958A870(v3);
}

uint64_t sub_1C958F11C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C958F21C()
{
  OUTLINED_FUNCTION_30();
  sub_1C9485BFC(*(v0 + 160), *(v0 + 168));
  sub_1C948981C();
  OUTLINED_FUNCTION_12_7();
  sub_1C948981C();

  OUTLINED_FUNCTION_3_10();

  return v1();
}

uint64_t sub_1C958F2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(a1 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager + 24);
  v8 = *(a1 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager), v7);
  (*(v8 + 40))(v7, v8);
  v9 = type metadata accessor for SyncedData();
  if (__swift_getEnumTagSinglePayload(v6, 1, v9) != 1)
  {
    return sub_1C95933D4();
  }

  sub_1C9557AB8(v6, &unk_1EC3A5F90);
  if (qword_1EDB7D010 != -1)
  {
    swift_once();
  }

  v10 = sub_1C96A6154();
  __swift_project_value_buffer(v10, qword_1EDB7D018);
  v11 = sub_1C96A6134();
  v12 = sub_1C96A76A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C945E000, v11, v12, "No synced data object found locally. Creating a new one", v13, 2u);
    MEMORY[0x1CCA8E3D0](v13, -1, -1);
  }

  sub_1C94947B4();
  sub_1C94948B8();
  sub_1C9494964();
  sub_1C9494A68();
  sub_1C96A6CC4();
  type metadata accessor for SyncedLocationDisplayContext();
  sub_1C9593824(&qword_1EDB7D730, 255, type metadata accessor for SyncedLocationDisplayContext);
  result = sub_1C96A6BE4();
  *(a2 + *(v9 + 24)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1C958F574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60D0);
  v5[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v7 = sub_1C96A6AE4();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = type metadata accessor for SyncedData();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C958F77C, 0, 0);
}

uint64_t sub_1C958F77C()
{
  OUTLINED_FUNCTION_108();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 264) = Strong;
  if (!Strong)
  {
LABEL_40:
    OUTLINED_FUNCTION_96_0();

    OUTLINED_FUNCTION_17();

    return v74();
  }

  v2 = Strong;
  v3 = *(v0 + 248);
  v77 = (Strong + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager);
  __swift_project_boxed_opaque_existential_1(v77, v77[3]);
  v4 = OUTLINED_FUNCTION_6_11();
  v5(v4);
  OUTLINED_FUNCTION_46();
  sub_1C955FEC0();
  if (OUTLINED_FUNCTION_144(v3) == 1)
  {
    sub_1C9557AB8(*(v0 + 248), &unk_1EC3A5F90);
    OUTLINED_FUNCTION_121_1();
    if (!v6)
    {
      OUTLINED_FUNCTION_0_53();
      swift_once();
    }

    v7 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v7, qword_1EDB7D018);
    v8 = sub_1C96A6134();
    sub_1C96A76A4();
    v9 = OUTLINED_FUNCTION_27_1();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_36_3();
      v11 = swift_slowAlloc();
      OUTLINED_FUNCTION_107_1(v11);
      OUTLINED_FUNCTION_92_1(&dword_1C945E000, v12, v13, "No local data found - considering the update already merged.");
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }

    OUTLINED_FUNCTION_19_13();
    OUTLINED_FUNCTION_38();
    sub_1C95935CC();
  }

  else
  {
    OUTLINED_FUNCTION_5_23();
    sub_1C95933D4();
    OUTLINED_FUNCTION_121_1();
    if (!v6)
    {
      OUTLINED_FUNCTION_0_53();
      swift_once();
    }

    v76 = v2;
    v14 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v14, qword_1EDB7D018);
    v15 = sub_1C96A6134();
    v16 = sub_1C96A76A4();
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_36_3();
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C945E000, v15, v16, "Merging update with the local data", v17, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }

    v18 = *(v0 + 192);
    v19 = *(v0 + 184);
    v75 = *(v0 + 176);

    sub_1C95935CC();
    OUTLINED_FUNCTION_18_15();
    sub_1C9593824(v20, 255, v21);
    sub_1C96A6924();
    (*(v19 + 8))(v18, v75);
    sub_1C95C8040();
    OUTLINED_FUNCTION_89();
    sub_1C948981C();
    v22 = OUTLINED_FUNCTION_105_1();
    v23(v22);
    v2 = v76;
  }

  v24 = &v2[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_nanoSyncManager];
  if (*&v2[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_nanoSyncManager + 24])
  {
    sub_1C949D8BC(v24, v0 + 56);
  }

  else
  {
    v25 = *v24;
    v26 = *(v24 + 16);
    *(v0 + 88) = *(v24 + 32);
    *(v0 + 72) = v26;
    *(v0 + 56) = v25;
  }

  if (*(v0 + 80))
  {
    sub_1C94670AC((v0 + 56), v0 + 16);
    OUTLINED_FUNCTION_117();
    static SyncedData.== infix(_:_:)();
    if ((v27 & 1) == 0)
    {
      OUTLINED_FUNCTION_121_1();
      if (!v6)
      {
        OUTLINED_FUNCTION_0_53();
        swift_once();
      }

      v28 = sub_1C96A6154();
      OUTLINED_FUNCTION_54_0(v28, qword_1EDB7D018);
      v29 = sub_1C96A6134();
      sub_1C96A76A4();
      v30 = OUTLINED_FUNCTION_27_1();
      if (os_log_type_enabled(v30, v31))
      {
        OUTLINED_FUNCTION_36_3();
        v32 = swift_slowAlloc();
        OUTLINED_FUNCTION_107_1(v32);
        OUTLINED_FUNCTION_92_1(&dword_1C945E000, v33, v34, "Merged data differs from remote client data - saving back");
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1CCA8E3D0]();
      }

      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      OUTLINED_FUNCTION_11();
      NanoSyncManagerType.setData(_:)();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  v35 = *(v0 + 200);
  v37 = *(v0 + 136);
  v36 = *(v0 + 144);
  OUTLINED_FUNCTION_19_13();
  sub_1C95935CC();
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v35);
  v41 = *(v37 + 48);
  sub_1C955FEC0();
  sub_1C955FEC0();
  if (__swift_getEnumTagSinglePayload(v36, 1, v35) == 1)
  {
    v42 = *(v0 + 200);
    sub_1C9557AB8(*(v0 + 240), &unk_1EC3A5F90);
    if (__swift_getEnumTagSinglePayload(v36 + v41, 1, v42) == 1)
    {
      v43 = *(v0 + 144);

      sub_1C9557AB8(v43, &unk_1EC3A5F90);
LABEL_39:
      sub_1C9557AB8(*(v0 + 256), &unk_1EC3A5F90);
      OUTLINED_FUNCTION_2_40();
      sub_1C948981C();
      goto LABEL_40;
    }

    goto LABEL_29;
  }

  v44 = *(v0 + 200);
  sub_1C955FEC0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36 + v41, 1, v44);
  v46 = *(v0 + 240);
  if (EnumTagSinglePayload == 1)
  {
    sub_1C9557AB8(*(v0 + 240), &unk_1EC3A5F90);
    OUTLINED_FUNCTION_2_40();
    sub_1C948981C();
LABEL_29:
    sub_1C9557AB8(*(v0 + 144), &qword_1EC3A60D0);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_5_23();
  sub_1C95933D4();
  static SyncedData.== infix(_:_:)();
  v71 = v70;
  sub_1C948981C();
  sub_1C9557AB8(v46, &unk_1EC3A5F90);
  sub_1C948981C();
  v72 = OUTLINED_FUNCTION_38();
  sub_1C9557AB8(v72, v73);
  if (v71)
  {

    goto LABEL_39;
  }

LABEL_30:
  OUTLINED_FUNCTION_121_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_53();
    swift_once();
  }

  v47 = sub_1C96A6154();
  OUTLINED_FUNCTION_54_0(v47, qword_1EDB7D018);
  v48 = sub_1C96A6134();
  sub_1C96A76A4();
  v49 = OUTLINED_FUNCTION_27_1();
  if (os_log_type_enabled(v49, v50))
  {
    OUTLINED_FUNCTION_36_3();
    v51 = swift_slowAlloc();
    OUTLINED_FUNCTION_107_1(v51);
    OUTLINED_FUNCTION_92_1(&dword_1C945E000, v52, v53, "Merged data differs from local client data");
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  OUTLINED_FUNCTION_143(v77);
  v54 = OUTLINED_FUNCTION_12_7();
  v56 = v55(v54);
  v58 = v57;
  *(v0 + 272) = v56;
  *(v0 + 280) = v57;
  OUTLINED_FUNCTION_141(&v2[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_keyValueStoreProvider]);
  OUTLINED_FUNCTION_54();
  v59 = swift_allocObject();
  *(v0 + 288) = v59;
  *(v59 + 16) = v56;
  *(v59 + 24) = v58;
  v60 = OUTLINED_FUNCTION_46();
  sub_1C94B05C8(v60, v61);
  v62 = swift_task_alloc();
  *(v0 + 296) = v62;
  *v62 = v0;
  v62[1] = sub_1C958FF6C;
  OUTLINED_FUNCTION_30_5();

  return sub_1C94D28EC(v63, v64, v65, v66, v67, v68);
}

uint64_t sub_1C958FF6C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C959006C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_82_1(v0[33]);
  v1 = OUTLINED_FUNCTION_31_4();
  v3 = v2(v1);
  v0[38] = v3;
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_1C9590130;

  return sub_1C958A870(v3);
}

uint64_t sub_1C9590130()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9590230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_109_1();

  v13 = OUTLINED_FUNCTION_11();
  sub_1C9485BFC(v13, v14);
  sub_1C9557AB8(*(v12 + 256), &unk_1EC3A5F90);
  OUTLINED_FUNCTION_2_40();
  sub_1C948981C();
  OUTLINED_FUNCTION_96_0();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_49_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1C9590310(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v10[0] = a2;
  v10[1] = a3;
  v7 = *(v6 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6118);
  return v7(v10, 0x61446465636E7973, 0xEA00000000006174, v8, v5, v6);
}

uint64_t sub_1C9590400()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0C0C;

  return sub_1C9590490();
}

uint64_t sub_1C9590490()
{
  *(v1 + 16) = v0;
  if (qword_1EC3A46B0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC3A5F40;
  *(v1 + 24) = qword_1EC3A5F40;
  sub_1C96A3D04();

  return MEMORY[0x1EEE6DFA0](sub_1C959053C, v2, 0);
}

uint64_t sub_1C959053C()
{
  OUTLINED_FUNCTION_18();
  sub_1C9580770();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_130(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_84_1(v3);

  return sub_1C95815CC(v5);
}

uint64_t sub_1C95905CC()
{
  OUTLINED_FUNCTION_30();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  v4 = *(v1 + 32);
  v5 = *v0;
  OUTLINED_FUNCTION_7_11();
  *v6 = v5;
  *(v2 + 48) = v7;

  sub_1C959228C(v4);
  v8 = swift_task_alloc();
  *(v2 + 56) = v8;
  *v8 = v5;
  v8[1] = sub_1C9590724;

  return SavedLocationsManager.fetchLocationDataModels()();
}

uint64_t sub_1C9590724()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  *(v6 + 64) = v5;

  v7 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C959081C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_133();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = sub_1C957F41C(v22[8], v22[6]);
  v22[9] = v25;
  v26 = OUTLINED_FUNCTION_117();
  if (sub_1C9554388(v26, v27))
  {

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_85_0();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDB7D010 != -1)
    {
      OUTLINED_FUNCTION_0_53();
      swift_once();
    }

    v37 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v37, qword_1EDB7D018);
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    v38 = sub_1C96A6134();
    v39 = sub_1C96A76A4();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v22[6];
    if (v40)
    {
      v42 = swift_slowAlloc();
      a11 = swift_slowAlloc();
      *v42 = 141559299;
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_116_1(v43);
      v44 = type metadata accessor for LocationDataModel();
      v45 = MEMORY[0x1CCA8CC40](v41, v44);
      v47 = v46;

      v48 = sub_1C9484164(v45, v47, &a11);

      *(v42 + 14) = v48;
      *(v42 + 22) = 2160;
      *(v42 + 24) = 1752392040;
      *(v42 + 32) = 2081;
      v49 = OUTLINED_FUNCTION_89();
      v50 = MEMORY[0x1CCA8CC40](v49);
      v52 = v51;

      v53 = sub_1C9484164(v50, v52, &a11);

      *(v42 + 34) = v53;
      *(v42 + 42) = 2160;
      *(v42 + 44) = 1752392040;
      *(v42 + 52) = 2081;
      v54 = MEMORY[0x1CCA8CC40](v25, v44);
      v56 = sub_1C9484164(v54, v55, &a11);

      *(v42 + 54) = v56;
      OUTLINED_FUNCTION_12_10();
      _os_log_impl(v57, v58, v59, v60, v61, 0x3Eu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }

    else
    {
    }

    v62 = swift_task_alloc();
    v22[10] = v62;
    *v62 = v22;
    OUTLINED_FUNCTION_84_1(v62);
    OUTLINED_FUNCTION_85_0();

    return sub_1C958A870(v63);
  }
}

uint64_t sub_1C9590B34()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C9590C50, v2, 0);
}

uint64_t sub_1C9590C50()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_17();

  return v0();
}

char *sub_1C9590CD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v27 = a7;
  v28 = a8;
  v25 = a5;
  v26 = a6;
  v24 = a9;
  v17 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](a11);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_allocWithZone(v20);
  (*(v17 + 16))(v19, a2, a12);
  v22 = sub_1C9590E28(a1, v19, a3, a4, v25, v26, v27, v28, v24, *(&v24 + 1), a10, v21, a12, a13);
  (*(v17 + 8))(a2, a12);
  return v22;
}

char *sub_1C9590E28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12, uint64_t a13, uint64_t a14)
{
  v118 = a8;
  v119 = a7;
  v120 = a6;
  v121 = a5;
  v122 = a4;
  v123 = a3;
  v124 = a1;
  v117 = a9;
  ObjectType = swift_getObjectType();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v129 = &v111 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v131 = &v111 - v18;
  v144 = sub_1C96A4DF4();
  v133 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v128 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v127 = &v111 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v147 = &v111 - v23;
  v148 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v148);
  v126 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for LocationDataModel();
  v132 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v130 = &v111 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v142 = &v111 - v29;
  v141 = type metadata accessor for SavedLocation();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v138 = &v111 - v32;
  v137 = sub_1C96A7754();
  v33 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  *&v136 = &v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v135 = sub_1C96A7724();
  MEMORY[0x1EEE9AC00](v135);
  v35 = sub_1C96A65E4();
  MEMORY[0x1EEE9AC00](v35 - 8);
  v36 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v36 - 8);
  v153[3] = a13;
  v153[4] = a14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v153);
  (*(*(a13 - 8) + 32))(boxed_opaque_existential_1, a2, a13);
  v38 = MEMORY[0x1E69E7CC0];
  *&a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_savedLocations] = MEMORY[0x1E69E7CC0];
  *&a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_locationDataModels] = 0;
  *&a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_observers] = v38;
  v39 = OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_observersLock;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *&a12[v39] = sub_1C96A5124();
  v40 = OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_notifyQueue;
  v134 = sub_1C946B5D0(0, &qword_1EDB7CDB0);
  sub_1C96A6594();
  *__dst = v38;
  sub_1C9593824(&qword_1EDB7CDC0, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68);
  sub_1C9469CB4(&qword_1EDB7CE50, &qword_1EC3A4A68);
  sub_1C96A79E4();
  (*(v33 + 104))(v136, *MEMORY[0x1E69E8090], v137);
  *&a12[v40] = sub_1C96A7784();
  a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager____lazy_storage___forceMigrateToCoherence] = 2;
  *&a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_nanoSyncTask] = 0;
  sub_1C949D8BC(v124, &a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager]);
  sub_1C949D8BC(v153, &a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_localKeyValueStore]);
  sub_1C949D8BC(v123, &a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_keyValueStoreProvider]);
  sub_1C949D8BC(v122, &a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_locationDataModelFactory]);
  sub_1C949D8BC(v121, &a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_defaultLocationManager]);
  sub_1C949D8BC(v120, &a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_savedLocationsReader]);
  sub_1C949D8BC(v119, &a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceMigrator]);
  v41 = v118;
  v42 = &a12[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_nanoSyncManager];
  if (*(v118 + 24))
  {
    sub_1C949D8BC(v118, v42);
  }

  else
  {
    v43 = *(v118 + 16);
    *v42 = *v118;
    *(v42 + 16) = v43;
    *(v42 + 32) = *(v41 + 32);
  }

  sub_1C955FEC0();
  v152.receiver = a12;
  v152.super_class = ObjectType;
  v44 = objc_msgSendSuper2(&v152, sel_init);
  v46 = sub_1C95804C8();
  v47 = v131;
  v48 = v147;
  v49 = v143;
  v50 = v130;
  if (qword_1EDB7AA38 != -1)
  {
    swift_once();
  }

  sub_1C9593824(&qword_1EDB796D8, v45, type metadata accessor for SavedLocationsManager);
  sub_1C96A4E44();
  if (__dst[0] == 1)
  {
    v51 = v124[3];
    v52 = v124[4];
    __swift_project_boxed_opaque_existential_1(v124, v51);
    (*(v52 + 56))(v51, v52);
    __dst[0] = 0;
    sub_1C9593824(&qword_1EDB796D0, v53, type metadata accessor for SavedLocationsManager);
    sub_1C96A4FE4();
    if (qword_1EDB7D010 != -1)
    {
      swift_once();
    }

    v54 = sub_1C96A6154();
    __swift_project_value_buffer(v54, qword_1EDB7D018);
    v55 = sub_1C96A6134();
    v56 = sub_1C96A76A4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1C945E000, v55, v56, "Just force removed the local Coherence container (device now considered not migrated at this point).", v57, 2u);
      MEMORY[0x1CCA8E3D0](v57, -1, -1);
    }

    v49 = v143;
  }

  v116 = a11;
  v115 = a10;
  sub_1C9580770();
  v59 = v58;
  if (v58 >= 2)
  {
    v114 = v44;
    v60 = *(v58 + 16);
    if (v60)
    {
      v113 = v46;
      v151 = MEMORY[0x1E69E7CC0];
      sub_1C96A53C4();
      sub_1C9522D68();
      ObjectType = v151;
      v61 = (*(v132 + 80) + 32) & ~*(v132 + 80);
      v112 = v59;
      v62 = v59 + v61;
      v125 = (v133 + 32);
      v137 = *(v132 + 72);
      v63 = v145;
      do
      {
        sub_1C95935CC();
        sub_1C95933D4();
        sub_1C95935CC();
        sub_1C955FEC0();
        v64 = v144;
        if (__swift_getEnumTagSinglePayload(v47, 1, v144) == 1)
        {
          sub_1C948981C();
          sub_1C9557AB8(v47, &unk_1EC3A5F60);
          v65 = v148;
          __swift_storeEnumTagSinglePayload(v48, 1, 1, v148);
        }

        else
        {
          *&v136 = v60;
          v66 = *v125;
          v67 = v127;
          (*v125)(v127, v47, v64);
          memcpy(__dst, v49, sizeof(__dst));
          v68 = v128;
          v66(v128, v67, v64);
          v69 = sub_1C96A4A54();
          __swift_storeEnumTagSinglePayload(v129, 1, 1, v69);
          v70 = *(v63 + 36);
          v71 = &v49[*(v63 + 32)];
          v72 = v71[1];
          v134 = *v71;
          v73 = &v49[v70];
          *&v135 = *&v49[v70];
          v74 = v63;
          v75 = *(v73 + 1);
          v76 = *(v74 + 40);
          v77 = *(v74 + 44);
          v78 = &v49[v76];
          v79 = *(v78 + 1);
          v132 = *v78;
          v80 = *&v49[v77 + 8];
          v133 = *&v49[v77];
          sub_1C95087DC(__dst, v149);
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C948981C();
          *&v147[v148[11]] = 0;
          memcpy(v147, __dst, 0x48uLL);
          v66(&v147[v148[5]], v68, v144);
          v60 = v136;
          v48 = v147;
          v65 = v148;
          sub_1C949E15C();
          v81 = &v48[v65[7]];
          *v81 = v134;
          v81[1] = v72;
          v50 = v130;
          v82 = &v48[v65[8]];
          *v82 = v135;
          *(v82 + 1) = v75;
          v83 = &v48[v65[9]];
          *v83 = v132;
          *(v83 + 1) = v79;
          v47 = v131;
          v84 = &v48[v65[10]];
          *v84 = v133;
          *(v84 + 1) = v80;
          __swift_storeEnumTagSinglePayload(v48, 0, 1, v65);
        }

        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v65);
        v86 = v139;
        if (EnumTagSinglePayload == 1)
        {
          sub_1C9557AB8(v48, &qword_1EC3A5450);
          memcpy(__dst, v50, sizeof(__dst));
          v87 = &v50[*(v145 + 32)];
          v88 = *(v87 + 1);
          v89 = &v50[*(v145 + 36)];
          v90 = *(v89 + 1);
          *&v91 = *v89;
          v136 = v91;
          *&v91 = *v87;
          v135 = v91;
          sub_1C95087DC(__dst, v149);
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C948981C();
          memcpy(v86, __dst, 0x48uLL);
          *&v92 = v135;
          *(&v92 + 1) = v88;
          *&v93 = v136;
          *(&v93 + 1) = v90;
          *(v86 + 88) = v93;
          *(v86 + 72) = v92;
        }

        else
        {
          sub_1C948981C();
          sub_1C95933D4();
          sub_1C95933D4();
        }

        swift_storeEnumTagMultiPayload();
        sub_1C95933D4();
        v94 = ObjectType;
        v151 = ObjectType;
        v95 = *(ObjectType + 2);
        v63 = v145;
        if (v95 >= *(ObjectType + 3) >> 1)
        {
          sub_1C9522D68();
          v63 = v145;
          v94 = v151;
        }

        *(v94 + 2) = v95 + 1;
        ObjectType = v94;
        sub_1C95933D4();
        v62 += v137;
        --v60;
        v49 = v143;
      }

      while (v60);
      v59 = v112;
      sub_1C959228C(v112);
      LOBYTE(v46) = v113;
    }

    else
    {
      ObjectType = MEMORY[0x1E69E7CC0];
    }

    v96 = OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_savedLocations;
    v44 = v114;
    swift_beginAccess();
    *&v44[v96] = ObjectType;
  }

  MEMORY[0x1EEE9AC00](v58);
  *(&v111 - 2) = v59;
  *(&v111 - 1) = v44;
  v97 = v59;
  v98 = v44;
  sub_1C96A5784();
  sub_1C959228C(v97);
  v99 = swift_allocObject();
  *(v99 + 16) = v98;
  v100 = swift_allocObject();
  *(v100 + 16) = sub_1C9593888;
  *(v100 + 24) = v99;
  v101 = v98;
  v102 = sub_1C96A55A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51A8);
  sub_1C96A5634();

  sub_1C949D8BC(v153, __dst);
  v103 = swift_allocObject();
  *(v103 + 16) = v101;
  *(v103 + 24) = v46 & 1;
  sub_1C94670AC(__dst, v103 + 32);
  v104 = v101;
  v105 = sub_1C96A55A4();
  sub_1C96A5634();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v106 = sub_1C96A55A4();
  sub_1C96A5634();

  v107 = swift_allocObject();
  v108 = v115;
  v107[2] = v104;
  v107[3] = v108;
  v107[4] = v116;
  sub_1C9592FD8(v108);
  v109 = sub_1C96A55A4();
  sub_1C96A56B4();

  sub_1C94E1D90(v108);
  sub_1C9557AB8(v117, &unk_1EC3A6100);
  if (*(v118 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v118);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v119);
  __swift_destroy_boxed_opaque_existential_1Tm(v120);
  __swift_destroy_boxed_opaque_existential_1Tm(v121);
  __swift_destroy_boxed_opaque_existential_1Tm(v122);
  __swift_destroy_boxed_opaque_existential_1Tm(v123);
  __swift_destroy_boxed_opaque_existential_1Tm(v153);
  __swift_destroy_boxed_opaque_existential_1Tm(v124);
  return v104;
}

unint64_t sub_1C959227C(unint64_t result)
{
  if (result >= 2)
  {
    return sub_1C96A53C4();
  }

  return result;
}

unint64_t sub_1C959228C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1C95922E0()
{
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_106_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  v1[1] = sub_1C94B0CEC;
  OUTLINED_FUNCTION_11_19();
  OUTLINED_FUNCTION_146();

  return sub_1C9589A20(v3, v4, v5, v6, v7);
}

uint64_t sub_1C959237C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_106_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  v1[1] = sub_1C94B0CEC;
  OUTLINED_FUNCTION_11_19();

  return sub_1C9590400();
}

uint64_t sub_1C9592414(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return sub_1C96A53C4();
  }

  return result;
}

uint64_t sub_1C9592428(uint64_t result)
{
  if ((result - 1) >= 3)
  {
  }

  return result;
}

unint64_t sub_1C959243C()
{
  result = qword_1EC3A5FB8;
  if (!qword_1EC3A5FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5FB8);
  }

  return result;
}

unint64_t sub_1C95924B4()
{
  result = qword_1EC3A5FD0;
  if (!qword_1EC3A5FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5FD0);
  }

  return result;
}

uint64_t dispatch thunk of SavedLocationsManagerType.addLocationWithChecks(_:locationDisplayContext:)()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_25_6(v0, v1, v2, v3);
  OUTLINED_FUNCTION_12_3();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_37(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_6(v5);

  return v8(v7);
}

uint64_t dispatch thunk of SavedLocationsManagerType.removeLocation(at:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_42();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_37(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_23_11(v2);
  v4 = OUTLINED_FUNCTION_117_0();

  return v6(v4);
}

uint64_t dispatch thunk of SavedLocationsManagerType.removeLocation(by:)()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_25_6(v0, v1, v2, v3);
  OUTLINED_FUNCTION_12_3();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_37(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_6(v5);

  return v8(v7);
}

uint64_t dispatch thunk of SavedLocationsManagerType.moveLocation(from:to:)()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_25_6(v0, v1, v2, v3);
  OUTLINED_FUNCTION_12_3();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_37(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_6(v5);

  return v8(v7);
}

uint64_t dispatch thunk of SavedLocationsManagerType.updateSavedLocationTimeZones(_:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_42();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_37(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_23_11(v2);
  v4 = OUTLINED_FUNCTION_117_0();

  return v6(v4);
}

uint64_t dispatch thunk of SavedLocationsManagerType.fetchLocationDataModels()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_3();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_37(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_23_11(v2);
  v4 = OUTLINED_FUNCTION_38();

  return v6(v4);
}

uint64_t dispatch thunk of SavedLocationsManagerType.reloadFromLocalStorage()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_3();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_37(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_23_11(v2);
  v4 = OUTLINED_FUNCTION_38();

  return v6(v4);
}

_BYTE *storeEnumTagSinglePayload for SavedLocationsManagerDataStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_11WeatherCore21SavedLocationsManagerC22LocationDataModelState33_31EE8C75DD026BF5B6FAA0789B4D5B96LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C9592D98(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9592DEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SavedLocationsManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9592F38()
{
  result = qword_1EC3A6098;
  if (!qword_1EC3A6098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6098);
  }

  return result;
}

uint64_t sub_1C9592FD8(uint64_t result)
{
  if (result)
  {
    return sub_1C96A3D04();
  }

  return result;
}

uint64_t sub_1C9592FE8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_106_1();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17_1(v4);
  *v5 = v6;
  v5[1] = sub_1C94B0C0C;
  v7 = OUTLINED_FUNCTION_11_19();

  return sub_1C958261C(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_1C959309C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_106_1();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17_1(v3);
  *v4 = v5;
  v4[1] = sub_1C94B0CEC;
  v6 = OUTLINED_FUNCTION_11_19();

  return sub_1C9583B48(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_1C9593144()
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_28_4();
  v0 = type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_9(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17_1(v1);
  *v2 = v3;
  v2[1] = sub_1C94B0CEC;
  OUTLINED_FUNCTION_11_19();
  OUTLINED_FUNCTION_43_1();

  return sub_1C9584010(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C9593244()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28_4();
  v1 = type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_7(v1);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17_1(v3);
  *v4 = v5;
  v4[1] = sub_1C94B0CEC;
  v6 = OUTLINED_FUNCTION_11_19();

  return sub_1C958F574(v6, v7, v8, v2, v9);
}

uint64_t sub_1C9593340()
{
  OUTLINED_FUNCTION_30();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_17_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_24_10(v3);

  return sub_1C9580BB4(v5, v6, v1);
}

uint64_t sub_1C95933D4()
{
  OUTLINED_FUNCTION_40_2();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t sub_1C9593460()
{
  OUTLINED_FUNCTION_30();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_9(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v0 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_17_1(v8);
  *v9 = v10;
  v9[1] = sub_1C94B0CEC;

  return sub_1C958E900(v2, v0 + v5, v7);
}

uint64_t objectdestroy_65Tm()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1C9482F3C(*(v0 + 16), v1);
  }

  v2 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C95935CC()
{
  OUTLINED_FUNCTION_40_2();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t sub_1C9593624()
{
  OUTLINED_FUNCTION_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_24_10(v1);

  return sub_1C9585870();
}

uint64_t sub_1C95936B8()
{
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_106_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  v1[1] = sub_1C94B0CEC;
  OUTLINED_FUNCTION_11_19();
  OUTLINED_FUNCTION_146();

  return sub_1C958526C(v3, v4, v5, v6, v7);
}

uint64_t sub_1C9593754()
{
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28_4();
  v0 = type metadata accessor for Location();
  OUTLINED_FUNCTION_7(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17_1(v1);
  *v2 = v3;
  v2[1] = sub_1C94B0CEC;
  OUTLINED_FUNCTION_11_19();
  OUTLINED_FUNCTION_146();

  return sub_1C9584910(v4, v5, v6, v7);
}

uint64_t sub_1C9593824(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1C95938F8()
{
  result = qword_1EC3A6170;
  if (!qword_1EC3A6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6170);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_95_1()
{

  return sub_1C95087DC(v0 + 16, v0 + 88);
}

uint64_t OUTLINED_FUNCTION_96_0()
{
}

uint64_t OUTLINED_FUNCTION_103_1@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *(a1 + 88) = a2;
  *(a1 + 72) = a3;
  return v3;
}

void OUTLINED_FUNCTION_110_1(uint64_t a1@<X8>)
{
  *(v1 + 14) = a1;
  *(v1 + 22) = 2081;

  JUMPOUT(0x1CCA8CC40);
}

void *OUTLINED_FUNCTION_111_1()
{

  return memmove(v0, (v1 + 16), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_116_1@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2081;
  return 0;
}

void OUTLINED_FUNCTION_134(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_135()
{

  return sub_1C96A3AD4();
}

uint64_t OUTLINED_FUNCTION_136()
{

  return swift_task_create();
}

void *OUTLINED_FUNCTION_140(void *a1)
{

  return memcpy(a1, v1, 0x48uLL);
}

void *OUTLINED_FUNCTION_142(void *a1)
{

  return memcpy(a1, v1, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_144(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_145@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 + v2);
  *(a2 + v2) = a1;
  sub_1C959227C(a1);
  sub_1C959228C(v3);
}

void static LocationModel.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14)
{
  OUTLINED_FUNCTION_119();
  v60 = v15;
  v61 = v14;
  v17 = v16;
  v18 = type metadata accessor for SavedLocation();
  v19 = OUTLINED_FUNCTION_7(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  v21 = OUTLINED_FUNCTION_7(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v58 - v26;
  v28 = type metadata accessor for LocationModelData(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v58 - v34;
  v36 = type metadata accessor for CurrentLocation();
  v37 = OUTLINED_FUNCTION_7(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_2();
  v38 = v61;
  sub_1C96A5504();
  if (!v38)
  {
    v59 = v35;
    v61 = v32;
    if (a14 == 2)
    {
      OUTLINED_FUNCTION_71_1();
      static SavedLocation.read(from:)();
      type metadata accessor for LocationOfInterest();
      sub_1C959B6B4(&qword_1EDB79970, type metadata accessor for LocationOfInterest);
      OUTLINED_FUNCTION_3_29();
      sub_1C959B6B4(v41, type metadata accessor for LocationOfInterest);
      sub_1C96A7914();
      OUTLINED_FUNCTION_71_1();
      sub_1C96A5504();
      v52 = v61;
      sub_1C955D0D8(v24, v61, &qword_1EC3A5930);
      *(v52 + *(v28 + 20)) = a13;
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5948) + 48);
      v54 = OUTLINED_FUNCTION_25_12();
      v55 = v60;
      sub_1C94A8178(v54, v60, v56);
      OUTLINED_FUNCTION_4_32();
      sub_1C94A8178(v52, v55 + v53, v57);
    }

    else
    {
      if (a14 != 1)
      {
        v42 = sub_1C96A52B4();
        OUTLINED_FUNCTION_0_55();
        sub_1C959B6B4(v43, v44);
        OUTLINED_FUNCTION_74_2();
        (*(*(v42 - 8) + 104))(v45, *MEMORY[0x1E69D64E8], v42);
        swift_willThrow();
        goto LABEL_2;
      }

      OUTLINED_FUNCTION_71_1();
      static CurrentLocation.read(from:)();
      type metadata accessor for LocationOfInterest();
      OUTLINED_FUNCTION_30_6();
      sub_1C959B6B4(v39, v17);
      OUTLINED_FUNCTION_3_29();
      sub_1C959B6B4(v40, v17);
      sub_1C96A7914();
      sub_1C96A5504();
      v46 = v59;
      sub_1C955D0D8(v27, v59, &qword_1EC3A5930);
      *(v46 + *(v28 + 20)) = a12;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5940) + 48);
      v48 = OUTLINED_FUNCTION_26_6();
      v49 = v60;
      sub_1C94A8178(v48, v60, v50);
      OUTLINED_FUNCTION_4_32();
      sub_1C94A8178(v46, v49 + v47, v51);
    }

    type metadata accessor for LocationModel(0);
    swift_storeEnumTagMultiPayload();
  }

LABEL_2:
  OUTLINED_FUNCTION_118();
}

void LocationModel.write(to:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_28_4();
  v3 = type metadata accessor for SavedLocation();
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  v34[1] = type metadata accessor for LocationModelData(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v34 - v10;
  v12 = type metadata accessor for CurrentLocation();
  v13 = OUTLINED_FUNCTION_7(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v16 = v15 - v14;
  v17 = type metadata accessor for LocationModel(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  v21 = v20 - v19;
  sub_1C949E054(v0, v20 - v19, type metadata accessor for LocationModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5948) + 48);
    v23 = OUTLINED_FUNCTION_25_12();
    sub_1C94A8178(v23, v7, v24);
    OUTLINED_FUNCTION_4_32();
    sub_1C94A8178(v21 + v22, v2, v25);
    OUTLINED_FUNCTION_22_13();
    sub_1C96A5514();
    if (!v1)
    {
      SavedLocation.write(to:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
      OUTLINED_FUNCTION_29_5();
      sub_1C959B6B4(v26, v17);
      OUTLINED_FUNCTION_3_29();
      sub_1C959B6B4(v27, v17);
      OUTLINED_FUNCTION_11();
      sub_1C96A7924();
      OUTLINED_FUNCTION_22_13();
      sub_1C96A5514();
    }
  }

  else
  {
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5940) + 48);
    v29 = OUTLINED_FUNCTION_26_6();
    sub_1C94A8178(v29, v16, v30);
    OUTLINED_FUNCTION_4_32();
    sub_1C94A8178(v21 + v28, v11, v31);
    OUTLINED_FUNCTION_22_13();
    sub_1C96A5514();
    if (!v1)
    {
      CurrentLocation.write(to:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
      OUTLINED_FUNCTION_29_5();
      sub_1C959B6B4(v32, v17);
      OUTLINED_FUNCTION_3_29();
      sub_1C959B6B4(v33, v17);
      OUTLINED_FUNCTION_11();
      sub_1C96A7924();
      OUTLINED_FUNCTION_22_13();
      sub_1C96A5514();
    }
  }

  OUTLINED_FUNCTION_28_9();
  sub_1C949A9A8();
  sub_1C949A9A8();
  OUTLINED_FUNCTION_118();
}

uint64_t static LocationModelData.read(from:)@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_35_2();
  type metadata accessor for LocationOfInterest();
  OUTLINED_FUNCTION_30_6();
  sub_1C959B6B4(v7, v3);
  OUTLINED_FUNCTION_3_29();
  sub_1C959B6B4(v8, v3);
  result = sub_1C96A7914();
  if (!v1)
  {
    OUTLINED_FUNCTION_54_3();
    sub_1C96A5504();
    sub_1C955D0D8(v2, a1, &qword_1EC3A5930);
    result = type metadata accessor for LocationModelData(0);
    *(a1 + *(result + 20)) = v10;
  }

  return result;
}

uint64_t LocationModelData.write(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  sub_1C959B6B4(&qword_1EDB79970, type metadata accessor for LocationOfInterest);
  OUTLINED_FUNCTION_3_29();
  sub_1C959B6B4(v1, type metadata accessor for LocationOfInterest);
  OUTLINED_FUNCTION_56_1();
  result = sub_1C96A7924();
  if (!v0)
  {
    type metadata accessor for LocationModelData(0);
    OUTLINED_FUNCTION_22_13();
    return sub_1C96A5514();
  }

  return result;
}

uint64_t AppStoreReviewConfiguration.write(to:)()
{
  OUTLINED_FUNCTION_57_1();
  result = sub_1C96A5514();
  if (!v0)
  {
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_61_0();
    return OUTLINED_FUNCTION_61_0();
  }

  return result;
}

uint64_t static AppStoreReviewConfiguration.read(from:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C96A5504();
  if (!v1)
  {
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    OUTLINED_FUNCTION_20_15();
    result = sub_1C96A7534();
    *a1 = v7;
    *(a1 + 8) = v4;
    *(a1 + 16) = v6;
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t EndpointConfiguration.write(to:)()
{
  result = ContentEnvironment.write(to:)();
  if (!v0)
  {
    type metadata accessor for EndpointConfiguration();
    OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_12_21();
    sub_1C96A46C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A7924();
    OUTLINED_FUNCTION_12_21();
    sub_1C96A46C4();
    OUTLINED_FUNCTION_12_21();
    sub_1C96A46C4();
    OUTLINED_FUNCTION_14_0();
    return sub_1C96A5514();
  }

  return result;
}

void static EndpointConfiguration.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13)
{
  OUTLINED_FUNCTION_119();
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  OUTLINED_FUNCTION_7(v18);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v22 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_66_1();
  v31 = static ContentEnvironment.read(from:)();
  if (!v13)
  {
    v37 = v31;
    v36 = v24;
    OUTLINED_FUNCTION_66_1();
    sub_1C96A46B4();
    sub_1C96A7914();
    OUTLINED_FUNCTION_66_1();
    sub_1C96A46B4();
    OUTLINED_FUNCTION_66_1();
    sub_1C96A46B4();
    OUTLINED_FUNCTION_54_3();
    sub_1C96A5504();
    HIDWORD(v35) = a13;
    *v17 = v37;
    v32 = type metadata accessor for EndpointConfiguration();
    v33 = v14;
    v34 = *(v36 + 32);
    v34(&v17[v32[5]], v33, v22);
    sub_1C955D0D8(v21, &v17[v32[6]], &qword_1EC3A4A70);
    v34(&v17[v32[7]], v15, v22);
    v34(&v17[v32[8]], v28, v22);
    v17[v32[9]] = BYTE4(v35);
  }

  OUTLINED_FUNCTION_118();
}

uint64_t static ContentEnvironment.read(from:)()
{
  result = OUTLINED_FUNCTION_45_5();
  if (!v0)
  {
    result = v7 - 1;
    if (result >= 7)
    {
      sub_1C96A52B4();
      OUTLINED_FUNCTION_0_55();
      sub_1C959B6B4(v2, v3);
      v4 = OUTLINED_FUNCTION_9_21();
      OUTLINED_FUNCTION_23_13(v4, v5);
      OUTLINED_FUNCTION_5_3();
      (*(v6 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t FeaturesConfiguration.write(to:)()
{
  OUTLINED_FUNCTION_57_1();
  result = sub_1C96A5514();
  if (!v0)
  {
    return sub_1C96A5514();
  }

  return result;
}

uint64_t static FeaturesConfiguration.read(from:)()
{
  OUTLINED_FUNCTION_24_11();
  result = OUTLINED_FUNCTION_45_5();
  if (!v1)
  {
    OUTLINED_FUNCTION_13_21();
    result = sub_1C96A5504();
    *v0 = v4;
    v0[1] = v3;
  }

  return result;
}

uint64_t GeocodeConfiguration.write(to:)()
{
  result = sub_1C96A72D4();
  if (!v0)
  {
    sub_1C96A53C4();
    OUTLINED_FUNCTION_37_7();
    sub_1C96A5514();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430);
    OUTLINED_FUNCTION_37_7();
    sub_1C96A7924();
  }

  return result;
}

uint64_t GeocodeConfiguration.ServerSideRevGeo.write(to:)()
{
  result = sub_1C96A5514();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430);
    OUTLINED_FUNCTION_8();
    return sub_1C96A7924();
  }

  return result;
}

uint64_t static GeocodeConfiguration.read(from:)()
{
  OUTLINED_FUNCTION_69_2();
  result = sub_1C96A72C4();
  if (!v0)
  {
    v3 = result;
    OUTLINED_FUNCTION_18_16();
    OUTLINED_FUNCTION_16_18();
    sub_1C96A7914();
    OUTLINED_FUNCTION_20_15();
    result = sub_1C96A7534();
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
  }

  return result;
}

uint64_t static GeocodeConfiguration.ServerSideRevGeo.read(from:)()
{
  OUTLINED_FUNCTION_24_11();
  result = sub_1C96A5504();
  if (!v1)
  {
    OUTLINED_FUNCTION_62_2();
    sub_1C96A7914();
    OUTLINED_FUNCTION_20_15();
    result = sub_1C96A7534();
    *v0 = v3;
    v0[1] = v4;
    v0[2] = v5;
  }

  return result;
}

uint64_t static HistoricalFactsConfiguration.read(from:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C96A7574();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t LanguageConfiguration.write(to:)()
{
  result = sub_1C96A70F4();
  if (!v0)
  {
    sub_1C96A53C4();
    sub_1C96A70F4();
  }

  return result;
}

uint64_t static LanguageConfiguration.read(from:)()
{
  result = sub_1C96A70E4();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    OUTLINED_FUNCTION_16_18();
    v5 = sub_1C96A70E4();
    v7 = v6;
    sub_1C947660C();

    v9[0] = v5;
    v9[1] = v7;
    v10.value.onlineFeedbackURL._countAndFlagsBits = v9;
    v8.value._countAndFlagsBits = v3;
    v8.value._object = v4;
    return LanguageConfiguration.init(language:reportWeather:)(v8, v10);
  }

  return result;
}

uint64_t static ReportWeatherConfiguration.read(from:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C96A70E4();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    sub_1C947660C();

    *a1 = v5;
    a1[1] = v6;
  }

  return result;
}

uint64_t Location.write(to:)()
{
  OUTLINED_FUNCTION_44_3();
  sub_1C96A53C4();
  sub_1C96A53C4();
  OUTLINED_FUNCTION_48_3();
  sub_1C96A70F4();
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_63_1();
    sub_1C96A70F4();
    OUTLINED_FUNCTION_41_6();

    type metadata accessor for Location();
    OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_12_21();
    sub_1C96A4D54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A7924();
    OUTLINED_FUNCTION_35_5(v1[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430);
    OUTLINED_FUNCTION_11_20();
    OUTLINED_FUNCTION_35_5(v1[8]);
    OUTLINED_FUNCTION_11_20();
    OUTLINED_FUNCTION_35_5(v1[9]);
    OUTLINED_FUNCTION_11_20();
    OUTLINED_FUNCTION_35_5(v1[10]);
    return OUTLINED_FUNCTION_11_20();
  }
}

void static Location.read(from:)()
{
  OUTLINED_FUNCTION_119();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v4);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  v8 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_21_15();
  static Location.Identifier.read(from:)(v12);
  if (!v0)
  {
    memcpy(v32, v33, sizeof(v32));
    OUTLINED_FUNCTION_21_15();
    sub_1C96A4D44();
    sub_1C96A4A54();
    OUTLINED_FUNCTION_21_15();
    sub_1C96A7914();
    OUTLINED_FUNCTION_21_15();
    sub_1C96A7914();
    v14 = v30;
    v13 = v31;
    OUTLINED_FUNCTION_21_15();
    sub_1C96A7914();
    v34 = v14;
    v23 = v28;
    v15 = v29;
    OUTLINED_FUNCTION_21_15();
    sub_1C96A7914();
    v22 = v15;
    v21 = v26;
    v16 = v27;
    OUTLINED_FUNCTION_21_15();
    sub_1C96A7914();
    v20[1] = v24;
    v20[0] = v25;
    v17 = type metadata accessor for Location();
    *&v3[v17[11]] = 0;
    memcpy(v3, v32, 0x48uLL);
    (*(v10 + 32))(&v3[v17[5]], v1, v8);
    sub_1C955D0D8(v7, &v3[v17[6]], &unk_1EC3A5430);
    v18 = &v3[v17[7]];
    *v18 = v34;
    *(v18 + 1) = v13;
    OUTLINED_FUNCTION_60_1(&v3[v17[8]]);
    v19 = &v3[v17[9]];
    *v19 = v21;
    *(v19 + 1) = v16;
    OUTLINED_FUNCTION_60_1(&v3[v17[10]]);
  }

  OUTLINED_FUNCTION_118();
}

uint64_t LocationDataModel.write(to:)()
{
  OUTLINED_FUNCTION_44_3();
  sub_1C96A53C4();
  sub_1C96A53C4();
  OUTLINED_FUNCTION_48_3();
  sub_1C96A70F4();
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_63_1();
    sub_1C96A70F4();
    OUTLINED_FUNCTION_41_6();

    v1 = type metadata accessor for LocationDataModel();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A7924();
    OUTLINED_FUNCTION_35_5(v1[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430);
    OUTLINED_FUNCTION_11_20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
    OUTLINED_FUNCTION_63_1();
    sub_1C96A7924();
    OUTLINED_FUNCTION_35_5(v1[8]);
    OUTLINED_FUNCTION_11_20();
    OUTLINED_FUNCTION_35_5(v1[9]);
    OUTLINED_FUNCTION_11_20();
    OUTLINED_FUNCTION_35_5(v1[10]);
    OUTLINED_FUNCTION_11_20();
    OUTLINED_FUNCTION_35_5(v1[11]);
    OUTLINED_FUNCTION_11_20();
    OUTLINED_FUNCTION_63_1();
    return sub_1C96A7924();
  }
}

void static LocationDataModel.read(from:)()
{
  OUTLINED_FUNCTION_119();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v5 = OUTLINED_FUNCTION_7(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_36_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v9);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - v11;
  OUTLINED_FUNCTION_21_15();
  static Location.Identifier.read(from:)(v13);
  if (!v0)
  {
    memcpy(v31, v32, sizeof(v31));
    sub_1C96A4DF4();
    OUTLINED_FUNCTION_21_15();
    sub_1C96A7914();
    OUTLINED_FUNCTION_21_15();
    sub_1C96A7914();
    v15 = v29;
    v14 = v30;
    sub_1C96A4A54();
    sub_1C96A7914();
    OUTLINED_FUNCTION_21_15();
    sub_1C96A7914();
    v20 = v27;
    v33 = v28;
    OUTLINED_FUNCTION_21_15();
    sub_1C96A7914();
    v19[4] = v25;
    v19[5] = v26;
    OUTLINED_FUNCTION_21_15();
    sub_1C96A7914();
    v19[2] = v23;
    v19[3] = v24;
    OUTLINED_FUNCTION_21_15();
    sub_1C96A7914();
    v19[0] = v21;
    v19[1] = v22;
    sub_1C96A7914();
    memcpy(v3, v31, 0x48uLL);
    v16 = type metadata accessor for LocationDataModel();
    sub_1C955D0D8(v12, &v3[v16[5]], &unk_1EC3A5F60);
    v17 = &v3[v16[6]];
    *v17 = v15;
    *(v17 + 1) = v14;
    sub_1C955D0D8(v8, &v3[v16[7]], &unk_1EC3A5430);
    v18 = &v3[v16[8]];
    *v18 = v20;
    *(v18 + 1) = v33;
    OUTLINED_FUNCTION_60_1(&v3[v16[9]]);
    OUTLINED_FUNCTION_60_1(&v3[v16[10]]);
    OUTLINED_FUNCTION_60_1(&v3[v16[11]]);
    sub_1C955D0D8(v1, &v3[v16[12]], &unk_1EC3A5430);
  }

  OUTLINED_FUNCTION_118();
}

uint64_t LocationOfInterest.write(to:)()
{
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_43_7();
  result = sub_1C96A5514();
  if (!v0)
  {
    type metadata accessor for LocationOfInterest();
    OUTLINED_FUNCTION_70_0();
    Location.write(to:)();
    OUTLINED_FUNCTION_43_7();
    sub_1C96A5514();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430);
    OUTLINED_FUNCTION_43_7();
    sub_1C96A7924();
    OUTLINED_FUNCTION_43_7();
    sub_1C96A7924();
    return sub_1C96A70F4();
  }

  return result;
}

void static LocationOfInterest.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_69_2();
  v15 = type metadata accessor for Location();
  v16 = OUTLINED_FUNCTION_7(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_18_16();
  if (!v13)
  {
    if (v37 == 2)
    {
      v20 = 1;
    }

    else
    {
      if (v37 != 1)
      {
        sub_1C96A52B4();
        OUTLINED_FUNCTION_0_55();
        sub_1C959B6B4(v21, v22);
        v23 = OUTLINED_FUNCTION_9_21();
        OUTLINED_FUNCTION_23_13(v23, v24);
        OUTLINED_FUNCTION_5_3();
        (*(v25 + 104))();
        swift_willThrow();
        goto LABEL_2;
      }

      v20 = 0;
    }

    OUTLINED_FUNCTION_16_18();
    static Location.read(from:)();
    OUTLINED_FUNCTION_18_16();
    OUTLINED_FUNCTION_16_18();
    sub_1C96A7914();
    OUTLINED_FUNCTION_16_18();
    sub_1C96A7914();
    OUTLINED_FUNCTION_16_18();
    v26 = sub_1C96A70E4();
    *v14 = v20;
    v34 = v27;
    v28 = type metadata accessor for LocationOfInterest();
    OUTLINED_FUNCTION_2_42();
    sub_1C94A8178(v19, &v14[v29], v30);
    v14[v28[6]] = a13;
    v31 = &v14[v28[7]];
    *v31 = v37;
    *(v31 + 1) = v38;
    v32 = &v14[v28[8]];
    *v32 = v35;
    *(v32 + 1) = v36;
    v33 = &v14[v28[9]];
    *v33 = v26;
    v33[1] = v34;
  }

LABEL_2:
  OUTLINED_FUNCTION_118();
}

uint64_t LocationsConfiguration.write(to:)()
{
  result = sub_1C96A5514();
  if (!v0)
  {
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    type metadata accessor for LocationsConfiguration();
    OUTLINED_FUNCTION_12_21();
    sub_1C96A46C4();
    OUTLINED_FUNCTION_12_21();
    sub_1C96A46C4();
    OUTLINED_FUNCTION_14_0();
    return sub_1C96A5514();
  }

  return result;
}

void static LocationsConfiguration.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_119();
  v74 = v14;
  v73 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v71 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v72 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_51_3();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  v21 = OUTLINED_FUNCTION_7(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v59[-v26];
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_36_4();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v59[-v31];
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v59[-v34];
  OUTLINED_FUNCTION_54_3();
  sub_1C96A5504();
  if (v10)
  {
    goto LABEL_14;
  }

  v65 = v13;
  v66 = v11;
  v67 = v12;
  v68 = v24;
  v69 = v27;
  v70 = v32;
  v75 = v35;
  v37 = v73;
  v36 = v74;
  sub_1C96A5504();
  v38 = v79;
  sub_1C96A5504();
  v39 = v78;
  sub_1C96A5504();
  v40 = v77;
  v41 = v75;
  sub_1C96A46B4();
  v63 = v40;
  v64 = v39;
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v37);
  v42 = v70;
  OUTLINED_FUNCTION_16_18();
  sub_1C96A46B4();
  v61 = v38;
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v37);
  sub_1C96A5504();
  v62 = 0;
  v60 = v76;
  v43 = v61;
  *v36 = a10;
  v36[1] = v43;
  v44 = v63;
  v36[2] = v64;
  v36[3] = v44;
  v45 = v66;
  sub_1C947F224(v41, v66);
  if (__swift_getEnumTagSinglePayload(v45, 1, v37) == 1)
  {
    v46 = v65;
    sub_1C96A4754();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v37);
    v48 = v67;
    v49 = v68;
    if (EnumTagSinglePayload == 1)
    {
      __break(1u);
      goto LABEL_16;
    }

    v50 = v46;
    v51 = *(v71 + 32);
    v51(v67, v50, v37);
    if (__swift_getEnumTagSinglePayload(v45, 1, v37) != 1)
    {
      sub_1C959B660(v45, &qword_1EC3A4A70);
    }

    v52 = v37;
  }

  else
  {
    v51 = *(v71 + 32);
    v48 = v67;
    v53 = OUTLINED_FUNCTION_56_1();
    (v51)(v53);
    v52 = v37;
    v49 = v68;
  }

  v54 = type metadata accessor for LocationsConfiguration();
  v51(v36 + v54[8], v48, v52);
  v56 = v69;
  v55 = v70;
  sub_1C947F224(v70, v69);
  OUTLINED_FUNCTION_75(v56);
  if (!v57)
  {
    sub_1C959B660(v55, &qword_1EC3A4A70);
    sub_1C959B660(v41, &qword_1EC3A4A70);
    v58 = v72;
    v51(v72, v56, v52);
LABEL_13:
    v51(v36 + v54[9], v58, v52);
    *(v36 + v54[10]) = v60;
LABEL_14:
    OUTLINED_FUNCTION_118();
    return;
  }

  sub_1C96A4754();
  OUTLINED_FUNCTION_75(v49);
  if (!v57)
  {
    sub_1C959B660(v70, &qword_1EC3A4A70);
    sub_1C959B660(v75, &qword_1EC3A4A70);
    v58 = v72;
    v51(v72, v49, v52);
    OUTLINED_FUNCTION_75(v56);
    if (!v57)
    {
      sub_1C959B660(v56, &qword_1EC3A4A70);
    }

    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
}

uint64_t MapsConfiguration.write(to:)()
{
  type metadata accessor for MapsConfiguration.EndpointConfiguration();
  sub_1C959B6B4(qword_1EDB799F0, type metadata accessor for MapsConfiguration.EndpointConfiguration);
  OUTLINED_FUNCTION_27_9();
  sub_1C959B6B4(v1, type metadata accessor for MapsConfiguration.EndpointConfiguration);
  result = sub_1C96A72D4();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6188);
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_34_6();
    sub_1C96A5514();
    OUTLINED_FUNCTION_34_6();
    sub_1C96A5514();
    OUTLINED_FUNCTION_34_6();
    sub_1C96A5514();
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_34_6();
    MapsConfiguration.OverlayKind.write(to:)();
    MapsConfiguration.ZoomLevelsConfiguration.write(to:)();
    sub_1C96A7924();
    OUTLINED_FUNCTION_40_5();
    OUTLINED_FUNCTION_40_5();
    OUTLINED_FUNCTION_40_5();
    sub_1C96A5514();
    return sub_1C96A5514();
  }

  return result;
}

uint64_t MapsConfiguration.ZoomLevelsConfiguration.write(to:)()
{
  OUTLINED_FUNCTION_73_2();
  result = sub_1C96A5514();
  if (!v0)
  {
    OUTLINED_FUNCTION_33_5();
    sub_1C96A5514();
    OUTLINED_FUNCTION_33_5();
    sub_1C96A5514();
    OUTLINED_FUNCTION_33_5();
    sub_1C96A5514();
    OUTLINED_FUNCTION_33_5();
    sub_1C96A5514();
    OUTLINED_FUNCTION_33_5();
    sub_1C96A5514();
    OUTLINED_FUNCTION_33_5();
    sub_1C96A5514();
    OUTLINED_FUNCTION_33_5();
    sub_1C96A5514();
    OUTLINED_FUNCTION_33_5();
    sub_1C96A5514();
    OUTLINED_FUNCTION_33_5();
    sub_1C96A5514();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57C0);
    OUTLINED_FUNCTION_22_13();
    return sub_1C96A7924();
  }

  return result;
}

uint64_t static MapsConfiguration.read(from:)()
{
  OUTLINED_FUNCTION_69_2();
  type metadata accessor for MapsConfiguration.EndpointConfiguration();
  sub_1C959B6B4(qword_1EDB799F0, type metadata accessor for MapsConfiguration.EndpointConfiguration);
  OUTLINED_FUNCTION_27_9();
  sub_1C959B6B4(v2, type metadata accessor for MapsConfiguration.EndpointConfiguration);
  result = sub_1C96A72C4();
  if (!v0)
  {
    v4 = result;
    OUTLINED_FUNCTION_16_18();
    sub_1C96A7914();
    v5 = v34;
    OUTLINED_FUNCTION_16_18();
    sub_1C96A7914();
    v6 = v33;
    OUTLINED_FUNCTION_16_18();
    sub_1C96A7914();
    v7 = v32;
    OUTLINED_FUNCTION_18_16();
    v8 = v31;
    OUTLINED_FUNCTION_18_16();
    v9 = v30;
    OUTLINED_FUNCTION_18_16();
    v10 = v29;
    OUTLINED_FUNCTION_16_18();
    sub_1C96A7914();
    v11 = __src[95];
    OUTLINED_FUNCTION_16_18();
    static MapsConfiguration.OverlayKind.read(from:)(v12);
    OUTLINED_FUNCTION_16_18();
    static MapsConfiguration.ZoomLevelsConfiguration.read(from:)();
    v20 = __src[94];
    OUTLINED_FUNCTION_16_18();
    sub_1C96A7914();
    v19 = v27;
    OUTLINED_FUNCTION_16_18();
    sub_1C96A7914();
    v18 = v26;
    OUTLINED_FUNCTION_16_18();
    sub_1C96A7914();
    v17 = v25;
    OUTLINED_FUNCTION_16_18();
    sub_1C96A7914();
    v16 = v24;
    OUTLINED_FUNCTION_18_16();
    v15 = v23;
    OUTLINED_FUNCTION_18_16();
    v13 = v22;
    v14 = sub_1C947FE2C(v4);

    if (!v14)
    {
      if (qword_1EDB7EF18 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v14 = off_1EDB7EF20;
      sub_1C96A53C4();
    }

    memcpy(&v21[6], __src, 0x59uLL);
    *v1 = v14;
    *(v1 + 8) = v5;
    *(v1 + 9) = v6;
    *(v1 + 10) = v7;
    *(v1 + 16) = v8;
    *(v1 + 24) = v9;
    *(v1 + 32) = v10;
    *(v1 + 40) = v11 & 1;
    *(v1 + 41) = v20;
    result = memcpy((v1 + 42), v21, 0x5FuLL);
    *(v1 + 137) = v19;
    *(v1 + 138) = v18;
    *(v1 + 139) = v17;
    *(v1 + 140) = v16;
    *(v1 + 144) = v15;
    *(v1 + 152) = v13;
  }

  return result;
}

void static MapsConfiguration.OverlayKind.read(from:)(unsigned __int8 *a1@<X8>)
{
  OUTLINED_FUNCTION_45_5();
  if (!v1)
  {
    OUTLINED_FUNCTION_67_2();
    if (v3 >= 4u)
    {
      sub_1C96A52B4();
      OUTLINED_FUNCTION_0_55();
      sub_1C959B6B4(v4, v5);
      v6 = OUTLINED_FUNCTION_9_21();
      OUTLINED_FUNCTION_23_13(v6, v7);
      OUTLINED_FUNCTION_5_3();
      (*(v8 + 104))();
      swift_willThrow();
    }

    else
    {
      *a1 = v3;
    }
  }
}

void static MapsConfiguration.ZoomLevelsConfiguration.read(from:)()
{
  OUTLINED_FUNCTION_24_11();
  sub_1C96A5504();
  if (!v1)
  {
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    sub_1C96A7914();
    OUTLINED_FUNCTION_65_1();
    *(v0 + 32) = v8;
    *(v0 + 40) = v7;
    *(v0 + 48) = v6;
    *(v0 + 56) = v5;
    *(v0 + 64) = v4;
    *(v0 + 72) = v3;
    *(v0 + 80) = v2;
    *(v0 + 88) = 0;
  }
}

uint64_t MapsConfiguration.EndpointConfiguration.write(to:)()
{
  result = WeatherMapOverlayServiceSource.write(to:)();
  if (!v0)
  {
    type metadata accessor for MapsConfiguration.EndpointConfiguration();
    OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_12_21();
    sub_1C96A46C4();
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    OUTLINED_FUNCTION_14_0();
    return sub_1C96A5514();
  }

  return result;
}

void static MapsConfiguration.EndpointConfiguration.read(from:)(_BYTE *a1@<X8>)
{
  v4 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_71_1();
  static WeatherMapOverlayServiceSource.read(from:)(v8);
  if (!v1)
  {
    sub_1C96A46B4();
    sub_1C96A5504();
    if (v14 == 1)
    {
      sub_1C96A5504();
      *a1 = v15;
      v9 = type metadata accessor for MapsConfiguration.EndpointConfiguration();
      (*(v6 + 32))(&a1[*(v9 + 20)], v2, v4);
      a1[*(v9 + 28)] = v13;
    }

    else
    {
      sub_1C96A52B4();
      OUTLINED_FUNCTION_0_55();
      sub_1C959B6B4(v10, v11);
      OUTLINED_FUNCTION_9_21();
      OUTLINED_FUNCTION_5_3();
      (*(v12 + 104))();
      swift_willThrow();
      (*(v6 + 8))(v2, v4);
    }
  }
}

void static WeatherMapOverlayServiceSource.read(from:)(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_45_5();
  if (!v1)
  {
    OUTLINED_FUNCTION_67_2();
    if (v3 >= 7)
    {
      sub_1C96A52B4();
      OUTLINED_FUNCTION_0_55();
      sub_1C959B6B4(v4, v5);
      v6 = OUTLINED_FUNCTION_9_21();
      OUTLINED_FUNCTION_23_13(v6, v7);
      OUTLINED_FUNCTION_5_3();
      (*(v8 + 104))();
      swift_willThrow();
    }

    else
    {
      *a1 = v3;
    }
  }
}

uint64_t static MapsConfiguration.EndpointConfiguration.TileColorFormat.read(from:)()
{
  result = OUTLINED_FUNCTION_45_5();
  if (!v0 && v7 != 1)
  {
    sub_1C96A52B4();
    OUTLINED_FUNCTION_0_55();
    sub_1C959B6B4(v2, v3);
    v4 = OUTLINED_FUNCTION_9_21();
    OUTLINED_FUNCTION_23_13(v4, v5);
    OUTLINED_FUNCTION_5_3();
    (*(v6 + 104))();
    return swift_willThrow();
  }

  return result;
}

uint64_t NamedNetworkConfiguration.write(to:)()
{
  v2 = v0[2];
  v8[0] = v0[1];
  v8[1] = v2;
  v3 = v0[4];
  v8[2] = v0[3];
  v8[3] = v3;
  result = sub_1C96A70F4();
  if (!v1)
  {
    sub_1C94B694C(v8, v7);
    OUTLINED_FUNCTION_37_7();
    NetworkConfiguration.write(to:)();
    v5 = v0[2];
    v7[0] = v0[1];
    v7[1] = v5;
    v6 = v0[4];
    v7[2] = v0[3];
    v7[3] = v6;
    return sub_1C94BDA7C(v7);
  }

  return result;
}

uint64_t NetworkConfiguration.write(to:)()
{
  result = sub_1C96A5514();
  if (!v0)
  {
    sub_1C96A72D4();
    OUTLINED_FUNCTION_59_0();
    sub_1C96A5514();
    OUTLINED_FUNCTION_59_0();
    sub_1C96A5514();
    OUTLINED_FUNCTION_59_0();
    sub_1C96A5514();
    OUTLINED_FUNCTION_59_0();
    sub_1C96A5514();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57C0);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A7924();
    sub_1C96A72D4();
    return sub_1C96A72D4();
  }

  return result;
}

uint64_t static NamedNetworkConfiguration.read(from:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C96A70E4();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    OUTLINED_FUNCTION_16_18();
    result = static NetworkConfiguration.read(from:)();
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
    *(a1 + 33) = v10;
    *(a1 + 34) = v11;
    *(a1 + 40) = v12;
    *(a1 + 56) = v13;
    *(a1 + 64) = v14;
  }

  return result;
}

uint64_t static NetworkConfiguration.read(from:)()
{
  OUTLINED_FUNCTION_69_2();
  result = sub_1C96A5504();
  if (!v0)
  {
    OUTLINED_FUNCTION_16_18();
    v3 = sub_1C96A72C4();
    OUTLINED_FUNCTION_18_16();
    OUTLINED_FUNCTION_18_16();
    OUTLINED_FUNCTION_18_16();
    OUTLINED_FUNCTION_18_16();
    OUTLINED_FUNCTION_16_18();
    sub_1C96A7914();
    OUTLINED_FUNCTION_16_18();
    v4 = sub_1C96A72C4();
    OUTLINED_FUNCTION_16_18();
    result = sub_1C96A72C4();
    *v1 = v11;
    *(v1 + 8) = v3;
    *(v1 + 16) = v10;
    *(v1 + 17) = v9;
    *(v1 + 18) = v8;
    *(v1 + 24) = v7;
    *(v1 + 32) = v5;
    *(v1 + 40) = v6;
    *(v1 + 48) = v4;
    *(v1 + 56) = result;
  }

  return result;
}

uint64_t NewsConfiguration.write(to:)()
{
  OUTLINED_FUNCTION_57_1();
  result = sub_1C96A5514();
  if (!v0)
  {
    sub_1C96A5514();
    return sub_1C96A5514();
  }

  return result;
}

uint64_t static NewsConfiguration.read(from:)()
{
  OUTLINED_FUNCTION_58_2();
  result = OUTLINED_FUNCTION_45_5();
  if (!v0)
  {
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    v3 = v11 - 1;
    if (v3 <= 2)
    {
      OUTLINED_FUNCTION_17_20();
      result = sub_1C96A5504();
      if (v10 == 1)
      {
        v4 = 0;
        goto LABEL_9;
      }

      if (v10 == 2)
      {
        v4 = 1;
LABEL_9:
        *v1 = v12;
        v1[1] = v3;
        v1[2] = v4;
        return result;
      }
    }

    sub_1C96A52B4();
    OUTLINED_FUNCTION_0_55();
    sub_1C959B6B4(v5, v6);
    v7 = OUTLINED_FUNCTION_9_21();
    OUTLINED_FUNCTION_23_13(v7, v8);
    OUTLINED_FUNCTION_5_3();
    (*(v9 + 104))();
    return swift_willThrow();
  }

  return result;
}

void static NewsConfiguration.TrendingPlacement.read(from:)(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_45_5();
  if (!v1)
  {
    OUTLINED_FUNCTION_67_2();
    if (v3 >= 3)
    {
      sub_1C96A52B4();
      OUTLINED_FUNCTION_0_55();
      sub_1C959B6B4(v4, v5);
      v6 = OUTLINED_FUNCTION_9_21();
      OUTLINED_FUNCTION_23_13(v6, v7);
      OUTLINED_FUNCTION_5_3();
      (*(v8 + 104))();
      swift_willThrow();
    }

    else
    {
      *a1 = v3;
    }
  }
}

uint64_t sub_1C9598A10@<X0>(char *a1@<X8>)
{
  result = OUTLINED_FUNCTION_45_5();
  if (!v1)
  {
    if (v10 == 1)
    {
      v4 = 0;
      goto LABEL_6;
    }

    if (v10 == 2)
    {
      v4 = 1;
LABEL_6:
      *a1 = v4;
      return result;
    }

    sub_1C96A52B4();
    OUTLINED_FUNCTION_0_55();
    sub_1C959B6B4(v5, v6);
    v7 = OUTLINED_FUNCTION_9_21();
    OUTLINED_FUNCTION_23_13(v7, v8);
    OUTLINED_FUNCTION_5_3();
    (*(v9 + 104))();
    return swift_willThrow();
  }

  return result;
}

uint64_t NotificationSubscription.Location.write(to:)()
{
  result = Location.write(to:)();
  if (!v0)
  {
    type metadata accessor for NotificationSubscription.Location(0);
    OUTLINED_FUNCTION_14_0();
    return Location.write(to:)();
  }

  return result;
}

void static NotificationSubscription.Location.read(from:)()
{
  OUTLINED_FUNCTION_24_11();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - v3;
  v5 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  static Location.read(from:)();
  if (!v0)
  {
    static Location.read(from:)();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    NotificationSubscription.Location.init(location:locationOverride:)(v9, v4);
  }
}

uint64_t NotificationsConfiguration.write(to:)()
{
  result = sub_1C96A5514();
  if (!v0)
  {
    OUTLINED_FUNCTION_8();
    sub_1C96A5514();
    OUTLINED_FUNCTION_8();
    sub_1C96A5514();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430);
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_8();
    sub_1C96A5514();
    OUTLINED_FUNCTION_8();
    sub_1C96A5514();
    OUTLINED_FUNCTION_8();
    sub_1C96A5514();
    OUTLINED_FUNCTION_8();
    sub_1C96A5514();
    OUTLINED_FUNCTION_8();
    sub_1C96A5514();
    OUTLINED_FUNCTION_8();
    sub_1C96A5514();
    OUTLINED_FUNCTION_8();
    return sub_1C96A5514();
  }

  return result;
}

uint64_t static NotificationsConfiguration.read(from:)()
{
  OUTLINED_FUNCTION_58_2();
  result = sub_1C96A5504();
  if (!v0)
  {
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    OUTLINED_FUNCTION_37_7();
    sub_1C96A7914();
    v4 = v17;
    v3 = v18;
    OUTLINED_FUNCTION_37_7();
    sub_1C96A7914();
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    if (!v18)
    {
      v4 = 0xD000000000000022;
      v3 = 0x80000001C96CC960;
    }

    v5 = sub_1C9479EAC(v15, v16);
    v7 = v6;

    *v1 = v21;
    v1[1] = v20;
    v1[2] = v19;
    v1[3] = v4;
    v1[4] = v3;
    v1[5] = v5;
    v1[6] = v7;
    v1[7] = v14;
    v1[8] = v13;
    v1[9] = v12;
    v1[10] = v11;
    v1[11] = v10;
    v1[12] = v9;
    v1[13] = v8;
  }

  return result;
}

uint64_t PrivacyConfiguration.write(to:)()
{
  result = sub_1C96A5514();
  if (!v0)
  {
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_39_3();
    return OUTLINED_FUNCTION_39_3();
  }

  return result;
}

uint64_t static PrivacyConfiguration.read(from:)()
{
  OUTLINED_FUNCTION_24_11();
  result = sub_1C96A5504();
  if (!v1)
  {
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_20_15();
    sub_1C96A7534();
    v4 = v3;
    OUTLINED_FUNCTION_1_32();
    sub_1C96A7534();
    v6 = v5;
    OUTLINED_FUNCTION_1_32();
    result = sub_1C96A7534();
    *v0 = v4;
    *(v0 + 8) = v6;
    *(v0 + 16) = v7;
    *(v0 + 24) = v13;
    *(v0 + 32) = v12;
    *(v0 + 40) = v11;
    *(v0 + 48) = v10;
    *(v0 + 56) = v9;
    *(v0 + 57) = v8;
  }

  return result;
}

uint64_t ProviderAttributionConfiguration.write(to:)()
{
  result = sub_1C96A70F4();
  if (!v0)
  {
    OUTLINED_FUNCTION_56_1();
    sub_1C96A70F4();
    OUTLINED_FUNCTION_52_4();
    return sub_1C96A5514();
  }

  return result;
}

uint64_t static ProviderAttributionConfiguration.read(from:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C96A70E4();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    v7 = sub_1C96A70E4();
    v9 = v8;
    OUTLINED_FUNCTION_54_3();
    result = sub_1C96A5504();
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
  }

  return result;
}

uint64_t SavedLocation.Placeholder.write(to:)()
{
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A70F4();
  if (v0)
  {
  }

  else
  {
    sub_1C96A70F4();
    OUTLINED_FUNCTION_41_6();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430);
    OUTLINED_FUNCTION_42_5();
    return OUTLINED_FUNCTION_42_5();
  }
}

uint64_t static SavedLocation.Placeholder.read(from:)@<X0>(uint64_t a1@<X8>)
{
  result = static Location.Identifier.read(from:)(__src);
  if (!v1)
  {
    memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_14_0();
    sub_1C96A7914();
    OUTLINED_FUNCTION_14_0();
    sub_1C96A7914();
    result = memcpy(a1, __dst, 0x48uLL);
    *(a1 + 72) = v5;
    *(a1 + 80) = v6;
    *(a1 + 88) = v4;
  }

  return result;
}

uint64_t TemperatureScaleConfiguration.write(to:)()
{
  sub_1C959B93C();
  sub_1C959B990();
  sub_1C96A53C4();
  OUTLINED_FUNCTION_64();
  sub_1C96A72D4();
}

uint64_t TemperatureScaleConfiguration.Gradient.write(to:)()
{
  sub_1C959B93C();
  sub_1C959B990();
  OUTLINED_FUNCTION_64();
  return sub_1C96A72D4();
}

uint64_t static TemperatureScaleConfiguration.read(from:)()
{
  OUTLINED_FUNCTION_24_11();
  sub_1C959B93C();
  sub_1C959B990();
  result = sub_1C96A72C4();
  if (!v1)
  {
    *v0 = result;
  }

  return result;
}

uint64_t static TemperatureScaleConfiguration.Gradient.read(from:)()
{
  OUTLINED_FUNCTION_24_11();
  sub_1C959B93C();
  sub_1C959B990();
  result = sub_1C96A72C4();
  if (!v1)
  {
    *v0 = result;
  }

  return result;
}

uint64_t TemperatureScaleConfiguration.ColorStop.write(to:)()
{
  result = sub_1C96A70F4();
  if (!v0)
  {
    return OUTLINED_FUNCTION_39_3();
  }

  return result;
}

uint64_t static TemperatureScaleConfiguration.ColorStop.read(from:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C96A70E4();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    OUTLINED_FUNCTION_54_3();
    result = sub_1C96A5504();
    *a1 = v5;
    a1[1] = v6;
    a1[2] = v7;
  }

  return result;
}

uint64_t WeatherDataConfiguration.write(to:)()
{
  result = sub_1C96A5514();
  if (!v0)
  {
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_39_3();
    return OUTLINED_FUNCTION_39_3();
  }

  return result;
}

uint64_t static WeatherDataConfiguration.read(from:)()
{
  OUTLINED_FUNCTION_24_11();
  result = sub_1C96A5504();
  if (!v1)
  {
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    result = sub_1C96A5504();
    *v0 = v6;
    v0[1] = v5;
    v0[2] = v4;
    v0[3] = v3;
  }

  return result;
}

uint64_t static WeatherDataServiceConfiguration.read(from:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C96A70E4();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t WeatherMenuAnalyticsConfiguration.write(to:)()
{
  OUTLINED_FUNCTION_57_1();
  result = sub_1C96A5514();
  if (!v0)
  {
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_61_0();
    return OUTLINED_FUNCTION_61_0();
  }

  return result;
}

uint64_t static WeatherMenuAnalyticsConfiguration.read(from:)()
{
  OUTLINED_FUNCTION_24_11();
  result = sub_1C96A5504();
  if (!v1)
  {
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    result = sub_1C96A5504();
    *v0 = v6;
    *(v0 + 1) = v5;
    *(v0 + 8) = v4;
    *(v0 + 16) = v3;
  }

  return result;
}

uint64_t WeatherMenuConfiguration.write(to:)()
{
  result = WeatherMenuRefreshConfiguration.write(to:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_43_7();
    return WeatherMenuAnalyticsConfiguration.write(to:)();
  }

  return result;
}

void static WeatherMenuConfiguration.read(from:)(uint64_t a1@<X8>)
{
  static WeatherMenuRefreshConfiguration.read(from:)();
  if (!v1)
  {
    static WeatherMenuAnalyticsConfiguration.read(from:)();
    *a1 = v6;
    *(a1 + 16) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v3;
    *(a1 + 41) = v4;
    *(a1 + 48) = v5;
  }
}

void static WeatherMenuRefreshConfiguration.read(from:)()
{
  OUTLINED_FUNCTION_24_11();
  sub_1C96A5504();
  if (!v1)
  {
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_65_1();
    *(v0 + 32) = v2;
  }
}

uint64_t WidgetConfiguration.write(to:)()
{
  result = WidgetRefreshConfiguration.write(to:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_52_4();
    sub_1C96A5514();
    OUTLINED_FUNCTION_43_7();
    return sub_1C96A5514();
  }

  return result;
}

uint64_t WidgetRefreshConfiguration.write(to:)()
{
  OUTLINED_FUNCTION_73_2();
  result = sub_1C96A5514();
  if (!v0)
  {
    OUTLINED_FUNCTION_50_2();
    OUTLINED_FUNCTION_50_2();
    OUTLINED_FUNCTION_50_2();
    OUTLINED_FUNCTION_50_2();
    OUTLINED_FUNCTION_50_2();
    OUTLINED_FUNCTION_50_2();
    OUTLINED_FUNCTION_50_2();
    OUTLINED_FUNCTION_50_2();
    return OUTLINED_FUNCTION_50_2();
  }

  return result;
}

void static WidgetConfiguration.read(from:)()
{
  OUTLINED_FUNCTION_58_2();
  static WidgetRefreshConfiguration.read(from:)();
  if (!v0)
  {
    memcpy(&__dst, __src, 0x50uLL);
    __src[88] = 0;
    __dst.is_nil = 0;
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    v2.value = __src[95];
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    v6.is_nil = timelineReloadDebouncingInterval;
    WidgetConfiguration.init(refresh:useBackgroundReverseGeocodingPriority:timelineReloadDebouncingInterval:)(v1, &__dst, v2, v6);
  }
}

void static WidgetRefreshConfiguration.read(from:)()
{
  OUTLINED_FUNCTION_24_11();
  sub_1C96A5504();
  if (!v1)
  {
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_13_21();
    sub_1C96A5504();
    OUTLINED_FUNCTION_65_1();
    v0[4] = v5;
    v0[5] = v4;
    v0[6] = v5;
    v0[7] = v4;
    v0[8] = v3;
    v0[9] = v2;
  }
}

uint64_t sub_1C959A4E4()
{
  result = sub_1C96A5514();
  if (!v0)
  {
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_39_3();
    return OUTLINED_FUNCTION_39_3();
  }

  return result;
}

void static WidgetPrivacyConfiguration.read(from:)(uint64_t a1@<X8>)
{
  sub_1C96A5504();
  if (!v1)
  {
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    OUTLINED_FUNCTION_17_20();
    sub_1C96A5504();
    OUTLINED_FUNCTION_20_15();
    sub_1C96A7534();
    OUTLINED_FUNCTION_1_32();
    sub_1C96A7534();
    OUTLINED_FUNCTION_1_32();
    sub_1C96A7534();
    OUTLINED_FUNCTION_1_32();
    sub_1C96A7534();
    OUTLINED_FUNCTION_1_32();
    sub_1C96A7534();
    OUTLINED_FUNCTION_65_1();
    *(a1 + 32) = v3;
  }
}

uint64_t WidgetRefreshRange.write(to:)()
{
  result = sub_1C96A5514();
  if (!v0)
  {
    return OUTLINED_FUNCTION_39_3();
  }

  return result;
}

uint64_t static WidgetRefreshRange.read(from:)()
{
  OUTLINED_FUNCTION_24_11();
  result = sub_1C96A5504();
  if (!v1)
  {
    OUTLINED_FUNCTION_13_21();
    result = sub_1C96A5504();
    *v0 = v4;
    v0[1] = v3;
  }

  return result;
}

uint64_t ConfiguredUnit.write(to:)()
{
  switch(*(v0 + 1))
  {
    case 1:
      result = sub_1C96A5514();
      if (!v1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5640);
        sub_1C959BBDC();
        sub_1C959BC30();
        goto LABEL_12;
      }

      break;
    case 2:
      result = sub_1C96A5514();
      if (!v1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5648);
        sub_1C959BB34();
        sub_1C959BB88();
        goto LABEL_12;
      }

      break;
    case 3:
      result = sub_1C96A5514();
      if (!v1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6190);
        sub_1C959BA8C();
        sub_1C959BAE0();
        goto LABEL_12;
      }

      break;
    case 4:
      result = sub_1C96A5514();
      if (!v1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5650);
        sub_1C959B9E4();
        sub_1C959BA38();
        goto LABEL_12;
      }

      break;
    default:
      OUTLINED_FUNCTION_52_4();
      result = sub_1C96A5514();
      if (!v1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5638);
        sub_1C959BC84();
        sub_1C959BCD8();
LABEL_12:
        OUTLINED_FUNCTION_56_1();
        result = sub_1C96A7924();
      }

      break;
  }

  return result;
}

uint64_t static ConfiguredUnit.read(from:)()
{
  OUTLINED_FUNCTION_58_2();
  result = OUTLINED_FUNCTION_45_5();
  if (!v0)
  {
    switch(v15)
    {
      case 1:
        sub_1C959BC84();
        sub_1C959BCD8();
        result = OUTLINED_FUNCTION_38_3();
        v3 = 0;
        v4 = v10;
        goto LABEL_9;
      case 2:
        sub_1C959BBDC();
        sub_1C959BC30();
        result = OUTLINED_FUNCTION_38_3();
        v4 = v11;
        v3 = 1;
        goto LABEL_9;
      case 3:
        sub_1C959BB34();
        sub_1C959BB88();
        result = OUTLINED_FUNCTION_38_3();
        v4 = v12;
        v3 = 2;
        goto LABEL_9;
      case 4:
        sub_1C959BA8C();
        sub_1C959BAE0();
        result = OUTLINED_FUNCTION_38_3();
        v4 = v13;
        v3 = 3;
        goto LABEL_9;
      case 5:
        sub_1C959B9E4();
        sub_1C959BA38();
        result = OUTLINED_FUNCTION_38_3();
        v4 = v14;
        v3 = 4;
LABEL_9:
        *v1 = v4;
        v1[1] = v3;
        break;
      default:
        sub_1C96A52B4();
        OUTLINED_FUNCTION_0_55();
        sub_1C959B6B4(v5, v6);
        v7 = OUTLINED_FUNCTION_9_21();
        OUTLINED_FUNCTION_23_13(v7, v8);
        OUTLINED_FUNCTION_5_3();
        (*(v9 + 104))();
        result = swift_willThrow();
        break;
    }
  }

  return result;
}

uint64_t CountryCode.write(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    result = sub_1C96A5514();
    if (!v3)
    {
      OUTLINED_FUNCTION_56_1();
      return sub_1C96A70F4();
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_4();
    return sub_1C96A5514();
  }

  return result;
}

uint64_t static CountryCode.read(from:)()
{
  result = OUTLINED_FUNCTION_45_5();
  if (!v0)
  {
    if (v7 == 2)
    {
      return 0;
    }

    else if (v7 == 1)
    {
      OUTLINED_FUNCTION_14_0();
      return sub_1C96A70E4();
    }

    else
    {
      sub_1C96A52B4();
      OUTLINED_FUNCTION_0_55();
      sub_1C959B6B4(v2, v3);
      v4 = OUTLINED_FUNCTION_9_21();
      OUTLINED_FUNCTION_23_13(v4, v5);
      OUTLINED_FUNCTION_5_3();
      (*(v6 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t CurrentLocation.write(to:)()
{
  OUTLINED_FUNCTION_28_4();
  v4 = type metadata accessor for Location();
  v5 = OUTLINED_FUNCTION_7(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_36_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_51_3();
  type metadata accessor for CurrentLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  sub_1C949E054(v0, v13 - v12, type metadata accessor for CurrentLocation);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_42();
      sub_1C94A8178(v14, v2, v18);
      OUTLINED_FUNCTION_22_13();
      sub_1C96A5514();
      if (!v1)
      {
        Location.write(to:)();
      }

      goto LABEL_11;
    case 2u:
      OUTLINED_FUNCTION_2_42();
      sub_1C94A8178(v14, v8, v16);
      OUTLINED_FUNCTION_22_13();
      sub_1C96A5514();
      if (!v1)
      {
        Location.write(to:)();
      }

      goto LABEL_11;
    case 3u:
      OUTLINED_FUNCTION_22_13();
      return sub_1C96A5514();
    default:
      OUTLINED_FUNCTION_2_42();
      sub_1C94A8178(v14, v3, v15);
      OUTLINED_FUNCTION_22_13();
      sub_1C96A5514();
      if (!v1)
      {
        Location.write(to:)();
      }

LABEL_11:
      OUTLINED_FUNCTION_1_41();
      return sub_1C949A9A8();
  }
}

void static CurrentLocation.read(from:)()
{
  OUTLINED_FUNCTION_24_11();
  v3 = type metadata accessor for Location();
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_36_4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  OUTLINED_FUNCTION_13_21();
  sub_1C96A5504();
  if (!v1)
  {
    switch(v17)
    {
      case 1:
        OUTLINED_FUNCTION_62_2();
        static Location.read(from:)();
        goto LABEL_6;
      case 2:
        OUTLINED_FUNCTION_62_2();
        static Location.read(from:)();
        v10 = v7;
        goto LABEL_6;
      case 3:
        OUTLINED_FUNCTION_62_2();
        static Location.read(from:)();
        v10 = v2;
LABEL_6:
        OUTLINED_FUNCTION_2_42();
        sub_1C94A8178(v10, v0, v11);
        goto LABEL_7;
      case 4:
LABEL_7:
        type metadata accessor for CurrentLocation();
        swift_storeEnumTagMultiPayload();
        break;
      default:
        v12 = sub_1C96A52B4();
        OUTLINED_FUNCTION_0_55();
        sub_1C959B6B4(v13, v14);
        OUTLINED_FUNCTION_74_2();
        (*(*(v12 - 8) + 104))(v15, *MEMORY[0x1E69D64E8], v12);
        swift_willThrow();
        break;
    }
  }
}

uint64_t SavedLocation.write(to:)()
{
  v2 = v0;
  OUTLINED_FUNCTION_28_4();
  v3 = type metadata accessor for Location();
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = (v10 - v9);
  sub_1C949E054(v2, v10 - v9, type metadata accessor for SavedLocation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(__dst, v11, sizeof(__dst));
    v14[0] = 2;
    OUTLINED_FUNCTION_22_13();
    sub_1C96A5514();
    if (!v1)
    {
      memcpy(v14, __dst, sizeof(v14));
      OUTLINED_FUNCTION_22_13();
      SavedLocation.Placeholder.write(to:)();
    }

    return sub_1C955FE40(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_2_42();
    sub_1C94A8178(v11, v7, v13);
    __dst[0] = 1;
    OUTLINED_FUNCTION_22_13();
    sub_1C96A5514();
    if (!v1)
    {
      Location.write(to:)();
    }

    OUTLINED_FUNCTION_1_41();
    return sub_1C949A9A8();
  }
}

void static SavedLocation.read(from:)()
{
  OUTLINED_FUNCTION_58_2();
  v2 = type metadata accessor for Location();
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_17_20();
  sub_1C96A5504();
  if (!v0)
  {
    if (v19 == 2)
    {
      OUTLINED_FUNCTION_37_7();
      static Location.Identifier.read(from:)(v8);
      memcpy(__dst, __src, sizeof(__dst));
      OUTLINED_FUNCTION_37_7();
      sub_1C96A7914();
      OUTLINED_FUNCTION_37_7();
      sub_1C96A7914();
      memcpy(v1, __dst, 0x48uLL);
      *(v1 + 72) = v15;
      *(v1 + 80) = v16;
      *(v1 + 88) = v14;
      type metadata accessor for SavedLocation();
      goto LABEL_5;
    }

    if (v19 == 1)
    {
      OUTLINED_FUNCTION_37_7();
      static Location.read(from:)();
      OUTLINED_FUNCTION_2_42();
      sub_1C94A8178(v6, v1, v7);
      type metadata accessor for SavedLocation();
LABEL_5:
      swift_storeEnumTagMultiPayload();
      return;
    }

    sub_1C96A52B4();
    OUTLINED_FUNCTION_0_55();
    sub_1C959B6B4(v9, v10);
    v11 = OUTLINED_FUNCTION_9_21();
    OUTLINED_FUNCTION_23_13(v11, v12);
    OUTLINED_FUNCTION_5_3();
    (*(v13 + 104))();
    swift_willThrow();
  }
}

uint64_t sub_1C959B660(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_23_13(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_6();
  (*(v4 + 8))(v2);
  return v2;
}

uint64_t sub_1C959B6B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C959B870(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_45_5();
  if (!v1)
  {
    OUTLINED_FUNCTION_67_2();
    if (v3 >= 5)
    {
      sub_1C96A52B4();
      OUTLINED_FUNCTION_0_55();
      sub_1C959B6B4(v4, v5);
      v6 = OUTLINED_FUNCTION_9_21();
      OUTLINED_FUNCTION_23_13(v6, v7);
      OUTLINED_FUNCTION_5_3();
      (*(v8 + 104))();
      swift_willThrow();
    }

    else
    {
      *a1 = v3;
    }
  }
}

unint64_t sub_1C959B93C()
{
  result = qword_1EDB78E70;
  if (!qword_1EDB78E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB78E70);
  }

  return result;
}

unint64_t sub_1C959B990()
{
  result = qword_1EDB78E68;
  if (!qword_1EDB78E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB78E68);
  }

  return result;
}

unint64_t sub_1C959B9E4()
{
  result = qword_1EDB799B8;
  if (!qword_1EDB799B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB799B8);
  }

  return result;
}

unint64_t sub_1C959BA38()
{
  result = qword_1EDB799B0;
  if (!qword_1EDB799B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB799B0);
  }

  return result;
}

unint64_t sub_1C959BA8C()
{
  result = qword_1EC3A6198;
  if (!qword_1EC3A6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6198);
  }

  return result;
}

unint64_t sub_1C959BAE0()
{
  result = qword_1EC3A61A0;
  if (!qword_1EC3A61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A61A0);
  }

  return result;
}

unint64_t sub_1C959BB34()
{
  result = qword_1EC3A61A8;
  if (!qword_1EC3A61A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A61A8);
  }

  return result;
}

unint64_t sub_1C959BB88()
{
  result = qword_1EC3A61B0;
  if (!qword_1EC3A61B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A61B0);
  }

  return result;
}

unint64_t sub_1C959BBDC()
{
  result = qword_1EC3A61B8;
  if (!qword_1EC3A61B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A61B8);
  }

  return result;
}

unint64_t sub_1C959BC30()
{
  result = qword_1EC3A61C0;
  if (!qword_1EC3A61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A61C0);
  }

  return result;
}

unint64_t sub_1C959BC84()
{
  result = qword_1EC3A61C8;
  if (!qword_1EC3A61C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A61C8);
  }

  return result;
}

unint64_t sub_1C959BCD8()
{
  result = qword_1EC3A61D0;
  if (!qword_1EC3A61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A61D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39_3()
{

  return sub_1C96A5514();
}

uint64_t OUTLINED_FUNCTION_74_2()
{

  return swift_allocError();
}

uint64_t sub_1C959BEB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746572636573 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_10_19() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4164657461647075 && a2 == 0xE900000000000074;
    if (v6 || (OUTLINED_FUNCTION_10_19() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == OUTLINED_FUNCTION_12_22() && a2 == v7;
      if (v8 || (OUTLINED_FUNCTION_10_19() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == 0xD000000000000019 && 0x80000001C96D2540 == a2;
        if (v9 || (OUTLINED_FUNCTION_10_19() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000010 && 0x80000001C96D2560 == a2)
        {

          return 4;
        }

        else
        {
          v11 = OUTLINED_FUNCTION_10_19();

          if (v11)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C959C01C(uint64_t a1)
{
  if ((a1 + 1) >= 5)
  {
    return 5;
  }

  else
  {
    return (0x302010004uLL >> (8 * (a1 + 1)));
  }
}

uint64_t sub_1C959C070(char a1)
{
  result = 0x6449746572636573;
  switch(a1)
  {
    case 1:
      result = 0x4164657461647075;
      break;
    case 2:
      result = OUTLINED_FUNCTION_12_22();
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C959C144@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C959C01C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C959C170@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C959C05C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1C959C1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C959BEB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C959C1EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C959C01C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C959C224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C959D7E4();
  v5 = sub_1C959D83C();

  return MEMORY[0x1EEDF56F8](a1, a2, v4, v5);
}

uint64_t sub_1C959C27C(uint64_t a1)
{
  v2 = sub_1C959D83C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C959C2B8(uint64_t a1)
{
  v2 = sub_1C959D83C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C959C2F4(uint64_t a1)
{
  sub_1C96A4A94();
  OUTLINED_FUNCTION_1();
  v54 = v3;
  v55 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v53 = v5 - v4;
  v6 = sub_1C96A4CF4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  v14 = OUTLINED_FUNCTION_7(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_19();
  v15 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  v21 = v20 - v19;
  sub_1C96A4D14();
  OUTLINED_FUNCTION_1();
  v60 = v23;
  v61 = v22;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14();
  v26 = v25 - v24;
  sub_1C96A4D94();
  result = OUTLINED_FUNCTION_25_1(v1);
  if (v40)
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 32))(v21, v1, v15);
    sub_1C96A4C34();
    (*(v17 + 8))(v21, v15);
    v57 = *MEMORY[0x1E6969A78];
    v28 = *(v8 + 104);
    v28(v12);
    v29 = *(type metadata accessor for ActiveUserModel() + 20);
    v58 = sub_1C96A4D04();
    v30 = *(v8 + 8);
    v31 = OUTLINED_FUNCTION_15_18();
    v30(v31);
    v63 = v26;
    v32 = *MEMORY[0x1E6969A68];
    (v28)(v12, v32, v6);
    v52 = v29;
    v56 = sub_1C96A4D04();
    v33 = OUTLINED_FUNCTION_15_18();
    v30(v33);
    (v28)(v12, v57, v6);
    v34 = sub_1C96A4D04();
    v35 = OUTLINED_FUNCTION_15_18();
    v30(v35);
    v36 = v32;
    v37 = v63;
    (v28)(v12, v36, v6);
    v38 = sub_1C96A4D04();
    v39 = OUTLINED_FUNCTION_15_18();
    v30(v39);
    v40 = v58 == v34 && v56 == v38;
    v41 = !v40;
    if (v40)
    {
      if (qword_1EDB77EA8 != -1)
      {
        OUTLINED_FUNCTION_9_1();
      }

      v48 = sub_1C96A6154();
      __swift_project_value_buffer(v48, qword_1EDB77EB0);
      v49 = sub_1C96A6134();
      v50 = sub_1C96A76A4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1C945E000, v49, v50, "Secret ID rotation not required", v51, 2u);
        MEMORY[0x1CCA8E3D0](v51, -1, -1);
      }

      (*(v60 + 8))(v63, v61);
    }

    else
    {
      if (qword_1EDB77EA8 != -1)
      {
        OUTLINED_FUNCTION_9_1();
      }

      v42 = sub_1C96A6154();
      __swift_project_value_buffer(v42, qword_1EDB77EB0);
      v43 = sub_1C96A6134();
      v44 = sub_1C96A76A4();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C945E000, v43, v44, "Rotating secret ID", v45, 2u);
        v46 = v45;
        v37 = v63;
        MEMORY[0x1CCA8E3D0](v46, -1, -1);
      }

      sub_1C96A4A84();
      (*(v60 + 8))(v37, v61);
      (*(v54 + 40))(v62, v53, v55);
      sub_1C96A4A54();
      OUTLINED_FUNCTION_6();
      (*(v47 + 24))(v62 + v52, a1);
    }

    return v41;
  }

  return result;
}

uint64_t sub_1C959C894(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6220);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C959D83C();
  sub_1C96A7F54();
  v22 = 0;
  sub_1C96A4A94();
  OUTLINED_FUNCTION_2_43();
  sub_1C94D3688(v11, v12);
  OUTLINED_FUNCTION_17_21();
  if (!v2)
  {
    active = type metadata accessor for ActiveUserModel();
    v21 = 1;
    sub_1C96A4A54();
    OUTLINED_FUNCTION_0_56();
    sub_1C94D3688(v14, v15);
    OUTLINED_FUNCTION_5_24();
    sub_1C96A7D74();
    v20 = 2;
    OUTLINED_FUNCTION_5_24();
    sub_1C96A7D14();
    v19 = 3;
    OUTLINED_FUNCTION_5_24();
    sub_1C96A7D14();
    v17[1] = *(v3 + *(active + 32));
    v18 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6218);
    sub_1C959DB1C();
    OUTLINED_FUNCTION_17_21();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C959CAE8(const void *a1)
{
  v3 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  sub_1C96A4A94();
  OUTLINED_FUNCTION_2_43();
  sub_1C94D3688(v18, v19);
  sub_1C96A6F34();
  active = type metadata accessor for ActiveUserModel();
  OUTLINED_FUNCTION_0_56();
  sub_1C94D3688(v21, v22);
  sub_1C96A6F34();
  sub_1C94D63E8(v1 + active[6], v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v3) == 1)
  {
    sub_1C96A7F04();
  }

  else
  {
    (*(v5 + 32))(v9, v17, v3);
    sub_1C96A7F04();
    OUTLINED_FUNCTION_20_16();
    (*(v5 + 8))(v9, v3);
  }

  sub_1C94D63E8(v1 + active[7], v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    sub_1C96A7F04();
  }

  else
  {
    (*(v5 + 32))(v9, v14, v3);
    sub_1C96A7F04();
    OUTLINED_FUNCTION_20_16();
    (*(v5 + 8))(v9, v3);
  }

  return sub_1C95A0A70(a1, *(v1 + active[8]));
}

uint64_t sub_1C959CD98()
{
  sub_1C96A7EE4();
  sub_1C959CAE8(v1);
  return sub_1C96A7F24();
}

uint64_t sub_1C959CDD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v5 = OUTLINED_FUNCTION_7(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v52 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v49 - v9;
  v10 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v54 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  v15 = v14 - v13;
  v16 = sub_1C96A4A94();
  OUTLINED_FUNCTION_1();
  v57 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  v55 = v20 - v19;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6210);
  OUTLINED_FUNCTION_1();
  v56 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14_19();
  active = type metadata accessor for ActiveUserModel();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v27 = v26 - v25;
  v63 = *(v28 + 24);
  OUTLINED_FUNCTION_19_14(v63);
  v29 = *(active + 28);
  v61 = v27;
  v62 = v29;
  OUTLINED_FUNCTION_19_14(v29);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C959D83C();
  v58 = v2;
  v30 = v60;
  sub_1C96A7F44();
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v36 = v62;
    v37 = v61;
    sub_1C9470AFC(v61 + v63, &unk_1EC3A5430);
    return sub_1C9470AFC(v37 + v36, &unk_1EC3A5430);
  }

  else
  {
    v50 = active;
    v31 = v57;
    v32 = v54;
    v60 = a1;
    v69 = 0;
    OUTLINED_FUNCTION_2_43();
    sub_1C94D3688(v33, v34);
    v35 = v55;
    sub_1C96A7CB4();
    v38 = v16;
    v39 = *(v31 + 32);
    v40 = v61;
    v55 = v38;
    v39(v61, v35);
    v68 = 1;
    OUTLINED_FUNCTION_0_56();
    sub_1C94D3688(v41, v42);
    sub_1C96A7CB4();
    (*(v32 + 32))(v40 + *(v50 + 20), v15, v10);
    v67 = 2;
    v43 = v53;
    v49 = 0;
    sub_1C96A7C74();
    sub_1C959D9F0(v43, v40 + v63);
    v66 = 3;
    v44 = v52;
    sub_1C96A7C74();
    sub_1C959D9F0(v44, v40 + v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6218);
    v65 = 4;
    sub_1C959DA60();
    sub_1C96A7CB4();
    v45 = OUTLINED_FUNCTION_7_24();
    v46(v45);
    v47 = v51;
    *(v40 + *(v50 + 32)) = v64;
    sub_1C94D5EE0(v40, v47);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    return sub_1C94D6860(v40);
  }
}

uint64_t sub_1C959D398()
{
  sub_1C96A7EE4();
  sub_1C959CAE8(v1);
  return sub_1C96A7F24();
}

uint64_t sub_1C959D418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94D3688(&qword_1EDB7A0F8, type metadata accessor for ActiveUserModel);
  v7 = sub_1C94D3688(&qword_1EC3A61F0, type metadata accessor for ActiveUserModel);

  return MEMORY[0x1EEDF52D8](a1, a2, a3, v6, v7);
}

uint64_t sub_1C959D5DC(uint64_t a1)
{
  v2 = sub_1C94D3688(&qword_1EDB7A108, type metadata accessor for ActiveUserModel);

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

unint64_t sub_1C959D734()
{
  result = qword_1EC3A61D8;
  if (!qword_1EC3A61D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A61D8);
  }

  return result;
}

unint64_t sub_1C959D78C()
{
  result = qword_1EC3A61E0;
  if (!qword_1EC3A61E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A61E0);
  }

  return result;
}

unint64_t sub_1C959D7E4()
{
  result = qword_1EDB7A120;
  if (!qword_1EDB7A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A120);
  }

  return result;
}

unint64_t sub_1C959D83C()
{
  result = qword_1EDB7A128;
  if (!qword_1EDB7A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A128);
  }

  return result;
}

unint64_t sub_1C959D894()
{
  result = qword_1EDB7A110;
  if (!qword_1EDB7A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A110);
  }

  return result;
}

unint64_t sub_1C959D8EC()
{
  result = qword_1EDB7A118;
  if (!qword_1EDB7A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A118);
  }

  return result;
}

unint64_t sub_1C959D944()
{
  result = qword_1EDB77D50;
  if (!qword_1EDB77D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A61E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB77D50);
  }

  return result;
}

uint64_t sub_1C959D9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C959DA60()
{
  result = qword_1EDB77D60;
  if (!qword_1EDB77D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A6218);
    sub_1C94D3688(&qword_1EDB77DA0, MEMORY[0x1E6995030]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB77D60);
  }

  return result;
}

unint64_t sub_1C959DB1C()
{
  result = qword_1EDB77D68;
  if (!qword_1EDB77D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A6218);
    sub_1C94D3688(&unk_1EDB77DA8, MEMORY[0x1E6995030]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB77D68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActiveUserModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C959DCB8()
{
  result = qword_1EC3A6228;
  if (!qword_1EC3A6228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6228);
  }

  return result;
}

uint64_t sub_1C959DD5C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v16 = *a1;
  v17 = v6;
  v7 = *(a3 + 16);
  sub_1C96A53C4();
  (v7)(&v16, 0x6E65644972657375, 0xEE00726569666974, MEMORY[0x1E69E6158], a2, a3);

  v8 = type metadata accessor for UserIdentity();
  sub_1C96A4A54();
  OUTLINED_FUNCTION_9_22();
  v7(v9, v10);
  v11 = (a1 + v8[6]);
  v12 = v11[1];
  v16 = *v11;
  v17 = v12;
  sub_1C96A53C4();
  (v7)(&v16, 0xD000000000000015, 0x80000001C96CAD90, MEMORY[0x1E69E6158], a2, a3);

  OUTLINED_FUNCTION_20_17(v8[7]);
  OUTLINED_FUNCTION_9_22();
  (v7)();
  v13 = (a1 + v8[8]);
  v14 = v13[1];
  v16 = *v13;
  v17 = v14;
  sub_1C96A53C4();
  (v7)(&v16, 0xD000000000000017, 0x80000001C96CADB0, MEMORY[0x1E69E6158], a2, a3);

  OUTLINED_FUNCTION_20_17(v8[9]);
  OUTLINED_FUNCTION_9_22();
  (v7)();
  OUTLINED_FUNCTION_9_22();
  return (v7)();
}

void sub_1C959DF94()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1C96A4A94();
  OUTLINED_FUNCTION_1();
  v125 = v7;
  v126 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v124 = v9 - v8;
  sub_1C96A4D14();
  OUTLINED_FUNCTION_1();
  v120 = v11;
  v121 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v119 = v13 - v12;
  sub_1C96A4454();
  OUTLINED_FUNCTION_1();
  v122 = v15;
  v123 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v19 - 8);
  OUTLINED_FUNCTION_2();
  v118 = v20 - v21;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_1();
  v127 = v23;
  OUTLINED_FUNCTION_12();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = v110 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = v110 - v28;
  v30 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v136 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2();
  v132 = (v33 - v34);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_1();
  v117 = v36;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_18_1();
  v131 = v38;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_1();
  v130 = v40;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_1();
  v129 = v42;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_1();
  v128 = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_18_1();
  v133 = v46;
  OUTLINED_FUNCTION_12();
  v48 = MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_21_16(v48, v49, v50, v51, v52, v53, v54, v55, v110[0]);
  v56 = *(v1 + 8);
  v57 = OUTLINED_FUNCTION_10_20();
  (v56)(&v138, v57);
  if (!v139)
  {
    goto LABEL_14;
  }

  v134 = v139;
  v135 = v5;
  v58 = v138;
  OUTLINED_FUNCTION_15_19();
  v56();
  OUTLINED_FUNCTION_75(v29);
  if (v70)
  {

    v59 = v29;
LABEL_13:
    sub_1C94BE204(v59, &unk_1EC3A5430);
    goto LABEL_14;
  }

  v113 = v58;
  v115 = v18;
  v61 = v136;
  v60 = v137;
  v62 = v29;
  v63 = v136 + 32;
  v116 = *(v136 + 32);
  v116(v137, v62, v30);
  (v56)(&v138, 0xD000000000000015, 0x80000001C96CAD90, MEMORY[0x1E69E6158], v3, v1);
  if (!v139)
  {
    (*(v61 + 8))(v60, v30);

LABEL_14:
    type metadata accessor for UserIdentity();
    OUTLINED_FUNCTION_3();
LABEL_15:
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
    OUTLINED_FUNCTION_101();
    return;
  }

  v114 = v139;
  v64 = v138;
  OUTLINED_FUNCTION_16_20();
  OUTLINED_FUNCTION_15_19();
  v56();
  OUTLINED_FUNCTION_75(v27);
  if (v70)
  {
    (*(v136 + 8))(v137, v30);

    v59 = v27;
    goto LABEL_13;
  }

  v112 = v64;
  v65 = v133;
  v66 = v27;
  v67 = v63;
  v116(v133, v66, v30);
  OUTLINED_FUNCTION_11_21();
  v68 = v127;
  OUTLINED_FUNCTION_15_19();
  v56();
  v69 = v68;
  OUTLINED_FUNCTION_75(v68);
  v71 = v136;
  v72 = v137;
  if (v70)
  {

    v73 = *(v71 + 8);
    v73(v65, v30);
    v73(v72, v30);
    v59 = v69;
    goto LABEL_13;
  }

  v78 = v128;
  v116(v128, v69, v30);
  v79 = *(v71 + 16);
  v79(v129, v72, v30);
  v79(v130, v65, v30);
  v111 = v79;
  v110[1] = v71 + 16;
  v79(v131, v78, v30);
  v127 = v67;
  v80 = v119;
  sub_1C96A4CE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F38);
  v81 = sub_1C96A4CF4();
  OUTLINED_FUNCTION_1();
  v83 = v82;
  v85 = *(v84 + 72);
  v86 = (*(v82 + 80) + 32) & ~*(v82 + 80);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1C96AEF50;
  v88 = v87 + v86;
  v89 = *(v83 + 104);
  v89(v88, *MEMORY[0x1E6969A68], v81);
  v89(v88 + v85, *MEMORY[0x1E6969A78], v81);
  sub_1C94B440C();
  sub_1C96A5954();
  v90 = v117;
  sub_1C96A5944();
  sub_1C96A4C54();

  v91 = *(v71 + 8);
  v91(v90, v30);
  v92 = v121;
  v93 = *(v120 + 8);
  v93(v80, v121);
  sub_1C96A4CE4();
  v94 = v118;
  sub_1C96A4CB4();
  v93(v80, v92);
  OUTLINED_FUNCTION_75(v94);
  if (!v95)
  {
    v116(v132, v94, v30);
    v96 = type metadata accessor for UserIdentity();
    v97 = v135;
    v98 = v111;
    v111(&v135[v96[5]], v129, v30);
    v99 = v130;
    v98(&v97[v96[7]], v130, v30);
    v100 = v124;
    sub_1C96A4A84();
    v101 = sub_1C96A4A64();
    v103 = v102;
    (*(v125 + 8))(v100, v126);
    (*(v122 + 8))(v115, v123);
    v91(v99, v30);
    v104 = OUTLINED_FUNCTION_14_2();
    (v91)(v104);
    v91(v128, v30);
    v91(v133, v30);
    v91(v137, v30);
    v105 = v134;
    *v97 = v113;
    *(v97 + 1) = v105;
    v106 = &v97[v96[6]];
    v107 = v114;
    *v106 = v112;
    *(v106 + 1) = v107;
    v108 = &v97[v96[8]];
    *v108 = v101;
    v108[1] = v103;
    v109 = v116;
    v116(&v97[v96[9]], v132, v30);
    v109(&v97[v96[10]], v131, v30);
    v74 = v97;
    v75 = 0;
    v76 = 1;
    v77 = v96;
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1C959E940()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C96A6C24();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  (*(v6 + 104))(v9 - v8, *MEMORY[0x1E6995288], v4);
  type metadata accessor for ActiveUserModel();
  OUTLINED_FUNCTION_5_25();
  sub_1C94B4700(v11, v12);
  v13 = sub_1C96A6D94();
  v15 = v14;
  (*(v6 + 8))(v10, v4);
  v16[0] = v13;
  v16[1] = v15;
  (*(v1 + 16))(v16, 0x7355657669746361, 0xEF6C65646F4D7265, MEMORY[0x1E6969080], v3, v1);
  sub_1C9482F3C(v13, v15);
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C959ECB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(a5 + 8))(v11, a1, a2, MEMORY[0x1E6969080], a3);
  if (v11[1] >> 60 == 15)
  {
    v9 = 1;
  }

  else
  {
    result = sub_1C96A6AD4();
    if (v6)
    {
      return result;
    }

    v9 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a6, v9, 1, a4);
}

uint64_t sub_1C959ED6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_1C96A6C24();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  v15 = v14 - v13;
  (*(v11 + 104))(v14 - v13, *MEMORY[0x1E6995280], v9);
  v16 = sub_1C96A6AC4();
  if (v7)
  {
    return (*(v11 + 8))(v15, v9);
  }

  v19 = v16;
  v20 = v17;
  (*(v11 + 8))(v15, v9);
  v24[0] = v19;
  v24[1] = v20;
  (*(a7 + 16))(v24, a2, a3, MEMORY[0x1E6969080], a5, a7);
  return sub_1C9482F3C(v19, v20);
}

WeatherCore::WidgetRefreshRange __swiftcall WidgetRefreshRange.init(minimum:maximum:)(Swift::Double_optional minimum, Swift::Double_optional maximum)
{
  v5 = *&minimum.is_nil;
  if (maximum.is_nil)
  {
    v5 = 1800.0;
  }

  v6 = v2;
  if (v3)
  {
    v6 = 2700.0;
  }

  *v4 = v5;
  v4[1] = v6;
  result.maximum = v6;
  result.minimum = v5;
  return result;
}

uint64_t SyncedLocation.id.getter()
{
  v1 = *v0;
  sub_1C96A53C4();
  return v1;
}

uint64_t SyncedLocation.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SyncedLocation.name.getter()
{
  v1 = *(v0 + 16);
  sub_1C96A53C4();
  return v1;
}

uint64_t SyncedLocation.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

__n128 SyncedLocation.coordinate.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 SyncedLocation.coordinate.setter(__n128 *a1)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

uint64_t SyncedLocation.timeZoneIdentifier.getter()
{
  v1 = *(v0 + 48);
  sub_1C96A53C4();
  return v1;
}

uint64_t SyncedLocation.timeZoneIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

WeatherCore::SyncedLocation::CodingKeys_optional __swiftcall SyncedLocation.CodingKeys.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if ((rawValue + 1) < 0xA)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

WeatherCore::SyncedLocation::CodingKeys_optional __swiftcall SyncedLocation.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  v4 = stringValue._countAndFlagsBits == 0xD000000000000010 && 0x80000001C96D2560 == stringValue._object;
  if (v4 || (countAndFlagsBits = stringValue._countAndFlagsBits, (OUTLINED_FUNCTION_4_33() & 1) != 0))
  {

    v7 = 0;
  }

  else
  {
    v8 = countAndFlagsBits == 25705 && object == 0xE200000000000000;
    if (v8 || (OUTLINED_FUNCTION_4_33() & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
      v9 = countAndFlagsBits == 1701667182 && object == 0xE400000000000000;
      if (v9 || (OUTLINED_FUNCTION_4_33() & 1) != 0)
      {

        v7 = 2;
      }

      else
      {
        v10 = countAndFlagsBits == 0x616E6964726F6F63 && object == 0xEA00000000006574;
        if (v10 || (OUTLINED_FUNCTION_4_33() & 1) != 0)
        {

          v7 = 3;
        }

        else
        {
          v11 = countAndFlagsBits == 0xD000000000000012 && 0x80000001C96CC210 == object;
          if (v11 || (OUTLINED_FUNCTION_4_33() & 1) != 0)
          {

            v7 = 4;
          }

          else
          {
            v12 = countAndFlagsBits == 0x6954686372616573 && object == 0xEB00000000656C74;
            if (v12 || (OUTLINED_FUNCTION_4_33() & 1) != 0)
            {

              v7 = 5;
            }

            else
            {
              v14 = countAndFlagsBits == OUTLINED_FUNCTION_10_21() && object == v13;
              if (v14 || (OUTLINED_FUNCTION_4_33() & 1) != 0)
              {

                v7 = 6;
              }

              else
              {
                v15 = countAndFlagsBits == 0x4E65736963657270 && object == 0xEB00000000656D61;
                if (v15 || (OUTLINED_FUNCTION_4_33() & 1) != 0)
                {

                  v7 = 7;
                }

                else
                {
                  v16 = countAndFlagsBits == 0x4164657461657263 && object == 0xE900000000000074;
                  if (v16 || (OUTLINED_FUNCTION_4_33() & 1) != 0)
                  {

                    v7 = 8;
                  }

                  else if (countAndFlagsBits == OUTLINED_FUNCTION_11_22() && object == v17)
                  {

                    v7 = 9;
                  }

                  else
                  {
                    v19 = OUTLINED_FUNCTION_4_33();

                    if (v19)
                    {
                      v7 = 9;
                    }

                    else
                    {
                      v7 = 10;
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

  *v3 = v7;
  return result;
}

WeatherCore::SyncedLocation::CodingKeys_optional __swiftcall SyncedLocation.CodingKeys.init(intValue:)(Swift::Int intValue)
{
  v2 = v1;
  result.value = SyncedLocation.CodingKeys.init(rawValue:)(intValue).value;
  *v2 = v4;
  return result;
}

uint64_t SyncedLocation.CodingKeys.stringValue.getter()
{
  result = 25705;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x616E6964726F6F63;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x6954686372616573;
      break;
    case 6:
      result = OUTLINED_FUNCTION_10_21();
      break;
    case 7:
      result = 0x4E65736963657270;
      break;
    case 8:
      result = 0x4164657461657263;
      break;
    case 9:
      result = OUTLINED_FUNCTION_11_22();
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C959F5A0@<X0>(uint64_t *a1@<X8>)
{
  result = SyncedLocation.CodingKeys.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C959F600(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C95A0E94();
  v5 = sub_1C959FD24();

  return MEMORY[0x1EEDF56F8](a1, a2, v4, v5);
}

uint64_t sub_1C959F658(uint64_t a1)
{
  v2 = sub_1C959FD24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C959F694(uint64_t a1)
{
  v2 = sub_1C959FD24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 SyncedLocation.init(id:name:coordinate:timeZoneIdentifier:searchTitle:searchSubtitle:preciseName:secondaryName:createdAt:additionalFields:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16)
{
  result = a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = *a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 88) = a11;
  *(a9 + 104) = a12;
  *(a9 + 120) = a13;
  *(a9 + 128) = a14;
  *(a9 + 136) = a15 & 1;
  *(a9 + 144) = a16;
  return result;
}

__n128 SyncedLocation.init(location:createdAt:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = a1[1];
  v7 = a1[3];
  v28 = a1[2];
  v29 = *a1;
  v8 = a1[4];
  v9 = a1[5];
  v10 = type metadata accessor for Location();
  sub_1C96A53C4();
  sub_1C96A53C4();
  v27 = sub_1C96A4D74();
  v12 = v11;
  v13 = *(a1 + v10[7] + 8);
  v14 = *(a1 + v10[8] + 8);
  v15 = v10[10];
  v16 = *(a1 + v10[9] + 8);
  v17 = *(a1 + v15 + 8);
  OUTLINED_FUNCTION_7_25();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  v18 = sub_1C96A6F04();
  sub_1C948E8E0(a1, type metadata accessor for Location);
  *a4 = v29;
  *(a4 + 8) = v6;
  *(a4 + 16) = v28;
  *(a4 + 24) = v7;
  *(a4 + 32) = v8;
  *(a4 + 40) = v9;
  *&v19 = v23;
  *&v20 = v24;
  *(&v19 + 1) = v13;
  result.n128_u64[0] = v25;
  *&v21 = v26;
  result.n128_u64[1] = v14;
  *(a4 + 48) = v27;
  *(a4 + 56) = v12;
  *(&v20 + 1) = v16;
  *(&v21 + 1) = v17;
  *(a4 + 64) = v19;
  *(a4 + 80) = result;
  *(a4 + 96) = v20;
  *(a4 + 112) = v21;
  *(a4 + 128) = a2;
  *(a4 + 136) = a3 & 1;
  *(a4 + 144) = v18;
  return result;
}

__n128 SyncedLocation.init(location:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[3];
  v25 = a1[2];
  v26 = *a1;
  v6 = a1[4];
  v7 = a1[5];
  v8 = type metadata accessor for LocationDataModel();
  v9 = (a1 + v8[6]);
  if (v9[1])
  {
    v23 = v9[1];
    v24 = *v9;
  }

  else
  {
    v23 = 0xE000000000000000;
    v24 = 0;
  }

  v10 = *(a1 + v8[8] + 8);
  v11 = *(a1 + v8[9] + 8);
  v12 = *(a1 + v8[10] + 8);
  v13 = *(a1 + v8[11] + 8);
  OUTLINED_FUNCTION_7_25();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  v14 = sub_1C96A6F04();
  sub_1C948E8E0(a1, type metadata accessor for LocationDataModel);
  *a2 = v26;
  *(a2 + 8) = v4;
  *(a2 + 16) = v25;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *&v15 = v19;
  *&v16 = v20;
  *(&v15 + 1) = v10;
  result.n128_u64[0] = v21;
  *&v17 = v22;
  result.n128_u64[1] = v11;
  *(a2 + 48) = v24;
  *(a2 + 56) = v23;
  *(&v16 + 1) = v12;
  *(&v17 + 1) = v13;
  *(a2 + 64) = v15;
  *(a2 + 80) = result;
  *(a2 + 96) = v16;
  *(a2 + 112) = v17;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  *(a2 + 144) = v14;
  return result;
}

uint64_t SyncedLocation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6240);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - v7;
  v9 = *v1;
  v22[14] = v1[1];
  v22[15] = v9;
  v10 = v1[2];
  v22[12] = v1[3];
  v22[13] = v10;
  v11 = v1[4];
  v12 = v1[5];
  v13 = v1[7];
  v22[9] = v1[6];
  v22[10] = v13;
  v14 = v1[9];
  v22[7] = v1[8];
  v22[8] = v14;
  v15 = v1[11];
  v22[5] = v1[10];
  v22[6] = v15;
  v16 = v1[13];
  v22[3] = v1[12];
  v22[4] = v16;
  v17 = v1[15];
  v22[1] = v1[14];
  v22[2] = v17;
  v22[11] = v1[16];
  v18 = *(v1 + 136);
  v19 = v1[18];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C959FD24();
  sub_1C96A53C4();
  sub_1C96A7F54();
  v24 = v19;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6218);
  sub_1C959DB1C();
  v20 = v23;
  sub_1C96A7D74();
  if (v20)
  {
  }

  else
  {
    LODWORD(v23) = v18;

    OUTLINED_FUNCTION_6_33(1);
    OUTLINED_FUNCTION_1_42();
    sub_1C96A7D24();
    OUTLINED_FUNCTION_6_33(2);
    OUTLINED_FUNCTION_1_42();
    sub_1C96A7D24();
    v24 = v11;
    v25 = v12;
    v26 = 3;
    sub_1C959FD78();
    sub_1C96A7D74();
    OUTLINED_FUNCTION_6_33(4);
    OUTLINED_FUNCTION_1_42();
    sub_1C96A7D24();
    OUTLINED_FUNCTION_6_33(5);
    OUTLINED_FUNCTION_1_42();
    sub_1C96A7CE4();
    OUTLINED_FUNCTION_6_33(6);
    OUTLINED_FUNCTION_1_42();
    sub_1C96A7CE4();
    OUTLINED_FUNCTION_6_33(7);
    OUTLINED_FUNCTION_1_42();
    sub_1C96A7CE4();
    OUTLINED_FUNCTION_6_33(8);
    OUTLINED_FUNCTION_1_42();
    sub_1C96A7D04();
    OUTLINED_FUNCTION_6_33(9);
    OUTLINED_FUNCTION_1_42();
    sub_1C96A7CE4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C959FD24()
{
  result = qword_1EC3A6248;
  if (!qword_1EC3A6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6248);
  }

  return result;
}

unint64_t sub_1C959FD78()
{
  result = qword_1EC3A6250;
  if (!qword_1EC3A6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6250);
  }

  return result;
}

uint64_t SyncedLocation.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6258);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C959FD24();
  sub_1C96A7F44();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v36 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6218);
    sub_1C959DA60();
    sub_1C96A7CB4();
    v40 = v44;
    OUTLINED_FUNCTION_0_57(1);
    v6 = sub_1C96A7C84();
    v39 = v7;
    OUTLINED_FUNCTION_0_57(2);
    v8 = sub_1C96A7C84();
    v38 = v9;
    LOBYTE(v43[0]) = 3;
    sub_1C95A0300();
    sub_1C96A7CB4();
    v10 = v44;
    v11 = v45;
    OUTLINED_FUNCTION_0_57(4);
    v34 = sub_1C96A7C84();
    v35 = v8;
    v37 = v12;
    OUTLINED_FUNCTION_0_57(5);
    v13 = sub_1C96A7C44();
    v15 = v14;
    v33 = v13;
    OUTLINED_FUNCTION_0_57(6);
    v16 = sub_1C96A7C44();
    v18 = v17;
    v31 = v16;
    v32 = v6;
    OUTLINED_FUNCTION_0_57(7);
    v19 = sub_1C96A7C44();
    v21 = v20;
    v30 = v19;
    OUTLINED_FUNCTION_0_57(8);
    v29 = sub_1C96A7C64();
    v63 = v22 & 1;
    v64 = 9;
    v23 = sub_1C96A7C44();
    v25 = v24;
    v26 = OUTLINED_FUNCTION_5_26();
    v27(v26, v41);
    v43[0] = v32;
    v43[1] = v39;
    v43[2] = v35;
    v43[3] = v38;
    v43[4] = v10;
    v43[5] = v11;
    v43[6] = v34;
    v43[7] = v37;
    v43[8] = v33;
    v43[9] = v15;
    v43[10] = v31;
    v43[11] = v18;
    v43[12] = v30;
    v43[13] = v21;
    v43[14] = v23;
    v43[15] = v25;
    v43[16] = v29;
    v42 = v63;
    LOBYTE(v43[17]) = v63;
    v43[18] = v40;
    memcpy(v36, v43, 0x98uLL);
    sub_1C95A0354(v43, &v44);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v44 = v32;
    v45 = v39;
    v46 = v35;
    v47 = v38;
    v48 = v10;
    v49 = v11;
    v50 = v34;
    v51 = v37;
    v52 = v33;
    v53 = v15;
    v54 = v31;
    v55 = v18;
    v56 = v30;
    v57 = v21;
    v58 = v23;
    v59 = v25;
    v60 = v29;
    v61 = v42;
    v62 = v40;
    return sub_1C95A038C(&v44);
  }
}

unint64_t sub_1C95A0300()
{
  result = qword_1EC3A6260;
  if (!qword_1EC3A6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6260);
  }

  return result;
}

uint64_t sub_1C95A03EC@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x98uLL);
  memcpy(a1, v1, 0x98uLL);
  return sub_1C95A0354(__dst, v4);
}

uint64_t sub_1C95A0440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9494964();
  v7 = sub_1C9494A68();

  return MEMORY[0x1EEDF52D8](a1, a2, a3, v6, v7);
}

uint64_t sub_1C95A0548(uint64_t a1)
{
  v2 = sub_1C95A129C();

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

void static SyncedLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 72);
  v43 = *(a1 + 64);
  v39 = *(a1 + 80);
  v45 = *(a1 + 88);
  v35 = *(a1 + 96);
  v41 = *(a1 + 104);
  v33 = *(a1 + 112);
  v37 = *(a1 + 120);
  v9 = *(a1 + 128);
  v31 = *(a1 + 136);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = *(a2 + 72);
  v42 = *(a2 + 64);
  v38 = *(a2 + 80);
  v44 = *(a2 + 88);
  v34 = *(a2 + 96);
  v40 = *(a2 + 104);
  v32 = *(a2 + 112);
  v36 = *(a2 + 120);
  v17 = *(a2 + 128);
  v18 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v30 = *(a2 + 136);
  if (!v18 && (sub_1C96A7DE4() & 1) == 0)
  {
    goto LABEL_59;
  }

  v19 = v2 == v10 && v3 == v11;
  if (!v19 && (sub_1C96A7DE4() & 1) == 0)
  {
    goto LABEL_59;
  }

  if (v5 != v13 || v4 != v12)
  {
    goto LABEL_59;
  }

  v21 = v7 == v14 && v6 == v15;
  if (!v21 && (sub_1C96A7DE4() & 1) == 0)
  {
    goto LABEL_59;
  }

  if (v8)
  {
    if (!v16)
    {
      goto LABEL_59;
    }

    v22 = v43 == v42 && v8 == v16;
    if (!v22 && (sub_1C96A7DE4() & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else if (v16)
  {
    goto LABEL_59;
  }

  if (v45)
  {
    if (!v44)
    {
      goto LABEL_59;
    }

    v23 = v39 == v38 && v45 == v44;
    if (!v23 && (sub_1C96A7DE4() & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else if (v44)
  {
    goto LABEL_59;
  }

  if (v41)
  {
    if (!v40)
    {
      goto LABEL_59;
    }

    v24 = v35 == v34 && v41 == v40;
    if (!v24 && (sub_1C96A7DE4() & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else if (v40)
  {
    goto LABEL_59;
  }

  if (!v37)
  {
    if (!v36)
    {
      goto LABEL_57;
    }

LABEL_59:
    OUTLINED_FUNCTION_14_20();
    return;
  }

  if (!v36)
  {
    goto LABEL_59;
  }

  v25 = v33 == v32 && v37 == v36;
  if (!v25 && (sub_1C96A7DE4() & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_57:
  if (v31)
  {
    if (!v30)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v26 = v30;
    if (v9 != v17)
    {
      v26 = 1;
    }

    if (v26)
    {
      goto LABEL_59;
    }
  }

  OUTLINED_FUNCTION_14_20();

  sub_1C94D6458(v27, v28);
}

uint64_t SyncedLocation.hash(into:)(const void *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 72);
  v6 = *(v1 + 88);
  v7 = *(v1 + 104);
  v8 = *(v1 + 120);
  v13 = *(v1 + 128);
  v14 = *(v1 + 136);
  v15 = *(v1 + 144);
  sub_1C96A7144();
  sub_1C96A7144();
  if (v3 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v3;
  }

  MEMORY[0x1CCA8D8A0](*&v9);
  if (v4 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v4;
  }

  MEMORY[0x1CCA8D8A0](*&v10);
  sub_1C96A7144();
  if (v5)
  {
    OUTLINED_FUNCTION_13_22();
    sub_1C96A7144();
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_23();
    if (v6)
    {
LABEL_9:
      OUTLINED_FUNCTION_13_22();
      sub_1C96A7144();
      if (v7)
      {
        goto LABEL_10;
      }

LABEL_14:
      OUTLINED_FUNCTION_12_23();
      if (v8)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }
  }

  OUTLINED_FUNCTION_12_23();
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_10:
  OUTLINED_FUNCTION_13_22();
  sub_1C96A7144();
  if (v8)
  {
LABEL_11:
    OUTLINED_FUNCTION_13_22();
    sub_1C96A7144();
    goto LABEL_16;
  }

LABEL_15:
  OUTLINED_FUNCTION_12_23();
LABEL_16:
  if (v14)
  {
    OUTLINED_FUNCTION_12_23();
  }

  else
  {
    OUTLINED_FUNCTION_13_22();
    if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v13;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1CCA8D8A0](v11);
  }

  return sub_1C95A0A70(a1, v15);
}

uint64_t SyncedLocation.hashValue.getter()
{
  sub_1C96A7EE4();
  SyncedLocation.hash(into:)(v1);
  return sub_1C96A7F24();
}

uint64_t sub_1C95A0A34()
{
  sub_1C96A7EE4();
  SyncedLocation.hash(into:)(v1);
  return sub_1C96A7F24();
}

uint64_t sub_1C95A0A70(const void *a1, uint64_t a2)
{
  v39 = a1;
  v40 = sub_1C96A66B4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_8_24();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v34 - v12;
  v14 = a2 + 64;
  OUTLINED_FUNCTION_9_23();
  v16 = v15 >> 6;
  v34[1] = v6 + 16;
  v41 = (v6 + 32);
  v36 = v6;
  v37 = a2;
  v38 = (v6 + 8);
  result = sub_1C96A53C4();
  v18 = 0;
  v19 = 0;
  v35 = v3;
  v34[0] = v13;
  while (1)
  {
    v42 = v18;
    if (!v2)
    {
      break;
    }

    v20 = v19;
LABEL_8:
    v21 = __clz(__rbit64(v2));
    v2 &= v2 - 1;
    v22 = v21 | (v20 << 6);
    v23 = v36;
    v24 = *(*(v37 + 48) + 8 * v22);
    v25 = v40;
    (*(v36 + 16))(v9, *(v37 + 56) + *(v36 + 72) * v22, v40);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
    v27 = *(v26 + 48);
    v28 = v35;
    *v35 = v24;
    v29 = *(v23 + 32);
    v3 = v28;
    v29(&v28[v27], v9, v25);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v26);
    v13 = v34[0];
LABEL_9:
    sub_1C95647A0(v3, v13);
    v30 = OUTLINED_FUNCTION_15_20();
    if (__swift_getEnumTagSinglePayload(v13, 1, v30) == 1)
    {

      return MEMORY[0x1CCA8D880](v42);
    }

    v31 = *v13;
    v32 = v40;
    (*v41)(v9, &v13[*(v30 + 48)], v40);
    memcpy(__dst, v39, sizeof(__dst));
    MEMORY[0x1CCA8D880](v31);
    sub_1C95A12F0(&qword_1EC3A59F8);
    sub_1C96A6F34();
    (*v38)(v9, v32);
    result = sub_1C96A7F24();
    v18 = result ^ v42;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v16)
    {
      v33 = OUTLINED_FUNCTION_15_20();
      __swift_storeEnumTagSinglePayload(v3, 1, 1, v33);
      v2 = 0;
      goto LABEL_9;
    }

    v2 = *(v14 + 8 * v20);
    ++v19;
    if (v2)
    {
      v19 = v20;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C95A0DE4()
{
  result = qword_1EC3A6268;
  if (!qword_1EC3A6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6268);
  }

  return result;
}

unint64_t sub_1C95A0E3C()
{
  result = qword_1EC3A6270;
  if (!qword_1EC3A6270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6270);
  }

  return result;
}

unint64_t sub_1C95A0E94()
{
  result = qword_1EC3A6278;
  if (!qword_1EC3A6278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6278);
  }

  return result;
}

unint64_t sub_1C95A0EF0()
{
  result = qword_1EC3A6280;
  if (!qword_1EC3A6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6280);
  }

  return result;
}

unint64_t sub_1C95A0F48()
{
  result = qword_1EC3A6288;
  if (!qword_1EC3A6288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6288);
  }

  return result;
}

unint64_t sub_1C95A0FA0()
{
  result = qword_1EC3A6290;
  if (!qword_1EC3A6290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A6298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6290);
  }

  return result;
}

unint64_t sub_1C95A100C()
{
  result = qword_1EC3A62A0;
  if (!qword_1EC3A62A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A62A0);
  }

  return result;
}

unint64_t sub_1C95A1064()
{
  result = qword_1EC3A62A8;
  if (!qword_1EC3A62A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A62A8);
  }

  return result;
}

unint64_t sub_1C95A10BC()
{
  result = qword_1EC3A62B0;
  if (!qword_1EC3A62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A62B0);
  }

  return result;
}

uint64_t sub_1C95A111C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1C95A115C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for SyncedLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C95A129C()
{
  result = qword_1EC3A62B8;
  if (!qword_1EC3A62B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A62B8);
  }

  return result;
}

uint64_t sub_1C95A12F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C96A66B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WeatherIntentType.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

unint64_t sub_1C95A13D0()
{
  result = qword_1EC3A62C8;
  if (!qword_1EC3A62C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A62C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherIntentType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t AppConfigurationStore.__allocating_init()()
{
  v0 = swift_allocObject();
  AppConfigurationStore.init()();
  return v0;
}

void sub_1C95A1538()
{
  v157 = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v128 = &v127 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v132 = &v127 - v4;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v129 = &v127 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v145 = &v127 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v144 = &v127 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v134 = &v127 - v11;
  v141 = type metadata accessor for LocationsConfiguration();
  v12 = MEMORY[0x1EEE9AC00](v141);
  v146 = (&v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v148 = &v127 - v14;
  v140 = sub_1C96A4A54();
  v143 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v142 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AppConfiguration();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v147 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v149 = &v127 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v139 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v127 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v127 - v29;
  v31 = sub_1C96A4764();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v130 = &v127 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v133 = &v127 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v127 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v127 - v40;
  sub_1C96A4FD4();
  sub_1C96A4FB4();
  sub_1C96A4FC4();

  v138 = v41;
  sub_1C96A4704();
  v131 = v32;
  v42 = *(v32 + 8);
  v43 = v39;
  v44 = v31;
  v45 = v31;
  v46 = v141;
  v136 = v32 + 8;
  v137 = v42;
  v42(v43, v45);
  v47 = v140;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v140);
  v48 = v30;
  v49 = v139;
  sub_1C9482E28(v48);
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v149, 1, 1, v46);
  v135 = v28;
  sub_1C9470A40(v28, v49, &unk_1EC3A5430);
  if (__swift_getEnumTagSinglePayload(v49, 1, v47) == 1)
  {
    v50 = v142;
    sub_1C96A4954();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v47);
    v52 = v143;
    if (EnumTagSinglePayload != 1)
    {
      sub_1C9470AFC(v49, &unk_1EC3A5430);
    }
  }

  else
  {
    v50 = v142;
    v52 = v143;
    (*(v143 + 32))(v142, v49, v47);
  }

  (*(v52 + 32))(v18, v50, v47);
  *&v18[v16[5]] = 0x40F5180000000000;
  *&v18[v16[6]] = 3;
  *&v18[v16[7]] = 0x411A5E0000000000;
  *&v18[v16[8]] = 0x40BF400000000000;
  *&v18[v16[9]] = 0x40BF400000000000;
  *&v18[v16[10]] = 0x40F5180000000000;
  v53 = &v18[v16[11]];
  *v53 = 0;
  *(v53 + 1) = 0x3F847AE147AE147BLL;
  *(v53 + 2) = 15;
  *(v53 + 3) = 0x41C2CC0300000000;
  v54 = v147;
  v55 = v148;
  v56 = v144;
  if (qword_1EDB7BF10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&v18[v16[12]] = qword_1EDB7BF18;
  *&v18[v16[13]] = 257;
  v57 = &v18[v16[14]];
  *v57 = &unk_1F48FACF0;
  *(v57 + 1) = 0x3FF0000000000000;
  *(v57 + 2) = 0;
  *(v57 + 3) = 0;
  v58 = qword_1EDB7D890;
  sub_1C96A53C4();
  v59 = v44;
  if (v58 != -1)
  {
    swift_once();
  }

  *&v18[v16[15]] = qword_1EDB7D898;
  sub_1C9470A40(v149, v54, &qword_1EC3A62F0);
  v60 = __swift_getEnumTagSinglePayload(v54, 1, v46);
  v61 = v145;
  if (v60 == 1)
  {
    v62 = v134;
    __swift_storeEnumTagSinglePayload(v134, 1, 1, v59);
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v59);
    v63 = v146;
    *v146 = xmmword_1C96B4F40;
    v63[1] = xmmword_1C96B4F50;
    sub_1C9470A40(v62, v61, &qword_1EC3A4A70);
    if (__swift_getEnumTagSinglePayload(v61, 1, v59) == 1)
    {
      sub_1C96A53C4();
      v64 = v129;
      sub_1C96A4754();
      if (__swift_getEnumTagSinglePayload(v64, 1, v59) == 1)
      {
        __break(1u);
        goto LABEL_49;
      }

      v65 = *(v131 + 32);
      v65(v133, v64, v59);
      v66 = v145;
      v67 = __swift_getEnumTagSinglePayload(v145, 1, v59);
      v68 = v132;
      if (v67 != 1)
      {
        sub_1C9470AFC(v66, &qword_1EC3A4A70);
      }

      v69 = v133;
    }

    else
    {
      v70 = v61;
      v65 = *(v131 + 32);
      v69 = v133;
      v65(v133, v70, v59);
      sub_1C96A53C4();
      v68 = v132;
    }

    v65(v146 + v46[8], v69, v59);
    sub_1C9470A40(v56, v68, &qword_1EC3A4A70);
    if (__swift_getEnumTagSinglePayload(v68, 1, v59) != 1)
    {
      sub_1C9470AFC(v56, &qword_1EC3A4A70);
      sub_1C9470AFC(v134, &qword_1EC3A4A70);
      v72 = v130;
      v65(v130, v68, v59);
LABEL_22:
      v74 = v146;
      v65(v146 + v46[9], v72, v59);
      *(v74 + v46[10]) = 1;
      v55 = v148;
      sub_1C948CDA4(v74, v148, type metadata accessor for LocationsConfiguration);
      v75 = v147;
      if (__swift_getEnumTagSinglePayload(v147, 1, v46) != 1)
      {
        sub_1C9470AFC(v75, &qword_1EC3A62F0);
      }

      goto LABEL_24;
    }

    v71 = v128;
    sub_1C96A4754();
    if (__swift_getEnumTagSinglePayload(v71, 1, v59) != 1)
    {
      sub_1C9470AFC(v144, &qword_1EC3A4A70);
      sub_1C9470AFC(v134, &qword_1EC3A4A70);
      v72 = v130;
      v65(v130, v71, v59);
      v73 = v132;
      if (__swift_getEnumTagSinglePayload(v132, 1, v59) != 1)
      {
        sub_1C9470AFC(v73, &qword_1EC3A4A70);
      }

      goto LABEL_22;
    }

LABEL_49:
    __break(1u);
    return;
  }

  sub_1C948CDA4(v54, v55, type metadata accessor for LocationsConfiguration);
  sub_1C96A53C4();
LABEL_24:
  sub_1C948CDA4(v55, &v18[v16[16]], type metadata accessor for LocationsConfiguration);
  if (qword_1EDB7EF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v76 = &v18[v16[17]];
  *v76 = off_1EDB7EF20;
  *(v76 + 4) = 514;
  v76[10] = 2;
  *(v76 + 1) = xmmword_1C96B4F60;
  *(v76 + 4) = 0xC0F5180000000000;
  *(v76 + 20) = 0;
  *(v76 + 3) = xmmword_1C96B4F70;
  *(v76 + 4) = xmmword_1C96B4F80;
  *(v76 + 5) = xmmword_1C96B4F90;
  *(v76 + 6) = xmmword_1C96B4FA0;
  *(v76 + 7) = xmmword_1C96B4F80;
  *(v76 + 16) = 0x401C000000000000;
  v76[136] = 0;
  *(v76 + 137) = 33686018;
  *(v76 + 9) = xmmword_1C96B4FB0;
  v77 = MEMORY[0x1E69E7CC0];
  *&v18[v16[18]] = MEMORY[0x1E69E7CC0];
  v151 = 1;
  v78 = &v18[v16[19]];
  *v78 = 0;
  *(v78 + 1) = v77;
  *(v78 + 8) = 0;
  v78[18] = 1;
  *(v78 + 24) = xmmword_1C96AA490;
  v78[40] = 1;
  *(v78 + 6) = v77;
  *(v78 + 7) = &unk_1F48FBAD8;
  v79 = &v18[v16[20]];
  *v79 = 1;
  v79[2] = 1;
  sub_1C96A4EE4();
  sub_1C96A53C4();
  sub_1C96A4EC4();
  if (qword_1EDB7FD00 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  v80 = 0xD000000000000068;
  if (LOBYTE(v155.refresh.currentLocation.minimum))
  {
    v81 = 0x80000001C96CC990;
  }

  else
  {
    v80 = 0;
    v81 = 0;
  }

  v82 = &v18[v16[21]];
  v83 = vdupq_n_s64(0x408C200000000000uLL);
  *v82 = v83;
  *(v82 + 2) = 0x40A5180000000000;
  *(v82 + 3) = 0xD000000000000022;
  *(v82 + 4) = 0x80000001C96CC960;
  *(v82 + 5) = v80;
  *(v82 + 6) = v81;
  *(v82 + 7) = 50;
  *(v82 + 4) = xmmword_1C96B4FC0;
  *(v82 + 5) = xmmword_1C96B4FD0;
  *(v82 + 6) = xmmword_1C96AC0B0;
  v84 = &v18[v16[23]];
  *v84 = v83;
  *(v84 + 1) = xmmword_1C96B4FE0;
  *(v84 + 2) = xmmword_1C96B4FF0;
  *(v84 + 3) = xmmword_1C96B5000;
  *(v84 + 4) = xmmword_1C96B5010;
  *(v84 + 5) = xmmword_1C96B5020;
  *(v84 + 6) = xmmword_1C96B5030;
  *(v84 + 7) = xmmword_1C96B5040;
  *(v84 + 16) = 0x3FE999999999999ALL;
  v85 = &v18[v16[22]];
  v86 = vdupq_n_s64(0x3FC999999999999AuLL);
  *v85 = v86;
  *(v85 + 1) = xmmword_1C96B5050;
  *(v85 + 2) = vdupq_n_s64(0x4143C68000000000uLL);
  *(v85 + 6) = 10;
  *(v85 + 28) = 1;
  v87 = &v18[v16[24]];
  *v87 = v86;
  v87[1] = v86;
  v87[2].i64[0] = 0x3FC999999999999ALL;
  v88 = &v18[v16[25]];
  *v88 = 0xD000000000000022;
  *(v88 + 1) = 0x80000001C96CC960;
  *(v88 + 2) = 0xD000000000000035;
  *(v88 + 3) = 0x80000001C96D2630;
  v88[32] = 1;
  v89 = sub_1C947660C();
  v90 = &v18[v16[26]];
  *v90 = v89;
  v90[1] = v91;
  if (qword_1EDB7D638 != -1)
  {
    swift_once();
  }

  v92 = v149;
  *&v18[v16[27]] = qword_1EDB7D640;
  v93 = &v18[v16[29]];
  *v93 = xmmword_1C96B5060;
  *(v93 + 1) = xmmword_1C96B5070;
  v94 = &v18[v16[30]];
  *v94 = 0;
  *(v94 + 1) = 0xE000000000000000;
  v95 = &v18[v16[31]];
  *v95 = xmmword_1C96B5080;
  *(v95 + 1) = xmmword_1C96B5090;
  *(v95 + 4) = 0x404E000000000000;
  *(v95 + 20) = 0;
  *(v95 + 42) = v153;
  *(v95 + 23) = v154;
  *(v95 + 3) = xmmword_1C96B50A0;
  v150 = 1;
  v158.value = 0.0;
  memset(&refresh, 0, 80);
  refresh.is_nil = 1;
  v158.is_nil = 0;
  WidgetConfiguration.init(refresh:useBackgroundReverseGeocodingPriority:timelineReloadDebouncingInterval:)(&v155, &refresh, 2, v158);
  memcpy(&v18[v16[32]], &v155, 0x60uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F8);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1C96AA1C0;
  sub_1C96A53C4();
  v97 = sub_1C96A4B54();
  if (v97[2])
  {
    v99 = v97[4];
    v98 = v97[5];
    sub_1C96A53C4();
  }

  else
  {
    v98 = 0xE500000000000000;
    v99 = 0x53552D6E65;
  }

  v100 = sub_1C947660C();
  *(v96 + 32) = v99;
  *(v96 + 40) = v98;
  *(v96 + 48) = v100;
  *(v96 + 56) = v101;
  *&v18[v16[33]] = v96;
  v102 = sub_1C96A4B54();
  if (v102[2])
  {
    v104 = v102[4];
    v103 = v102[5];
    sub_1C96A53C4();
  }

  else
  {
    v103 = 0xE500000000000000;
    v104 = 0x53552D6E65;
  }

  v105 = &v18[v16[34]];
  *v105 = v104;
  v105[1] = v103;
  *&v18[v16[35]] = v77;
  sub_1C9470AFC(v92, &qword_1EC3A62F0);
  sub_1C9470AFC(v135, &unk_1EC3A5430);
  *&v18[v16[36]] = v77;
  sub_1C9484108(v18);
  sub_1C9482EF0();
  v106 = objc_opt_self();
  v107 = [v106 defaultManager];
  v108 = v138;
  sub_1C96A4744();
  v109 = sub_1C96A7004();

  v110 = [v107 fileExistsAtPath_];

  if ((v110 & 1) == 0)
  {
    goto LABEL_42;
  }

  v111 = [v106 defaultManager];
  v112 = sub_1C96A46E4();
  refresh.value.currentLocation.minimum = 0.0;
  v113 = [v111 removeItemAtURL:v112 error:&refresh];

  if (v113)
  {
    v114 = *&refresh.value.currentLocation.minimum;
LABEL_42:
    v137(v108, v59);
    return;
  }

  v115 = *&refresh.value.currentLocation.minimum;
  v116 = sub_1C96A4584();

  swift_willThrow();
  v137(v108, v59);
  if (qword_1EDB7CFF0 != -1)
  {
    swift_once();
  }

  v117 = sub_1C96A6154();
  __swift_project_value_buffer(v117, qword_1EDB7CFF8);
  v118 = v116;
  v119 = sub_1C96A6134();
  v120 = sub_1C96A7684();

  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    v122 = COERCE_DOUBLE(swift_slowAlloc());
    refresh.value.currentLocation.minimum = v122;
    *v121 = 136315138;
    v152 = v116;
    v123 = v116;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v124 = sub_1C96A70A4();
    v126 = sub_1C9484164(v124, v125, &refresh);

    *(v121 + 4) = v126;
    _os_log_impl(&dword_1C945E000, v119, v120, "Failed to clear the cached app config, error: %s", v121, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(*&v122);
    MEMORY[0x1CCA8E3D0](*&v122, -1, -1);
    MEMORY[0x1CCA8E3D0](v121, -1, -1);
  }

  else
  {
  }
}