void sub_1C95BAEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  OUTLINED_FUNCTION_54();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = sub_1C95BB500;
  v13[6] = v12;
  v16[4] = sub_1C95BB538;
  v16[5] = v13;
  OUTLINED_FUNCTION_0_67();
  v16[1] = 1107296256;
  v16[2] = sub_1C9539FC4;
  v16[3] = &block_descriptor_22;
  v14 = _Block_copy(v16);
  sub_1C96A3D04();
  v15 = a6;
  sub_1C96A3D04();

  [a5 addNotificationRequest:v15 withCompletionHandler:v14];
  _Block_release(v14);
}

void sub_1C95BB020(void *a1, void *a2, void (*a3)(void *), uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  if (a1)
  {
    v8 = a1;
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v9 = sub_1C96A6154();
    __swift_project_value_buffer(v9, qword_1EDB7AC90);
    v10 = a1;
    v11 = a2;
    v12 = sub_1C96A6134();
    v13 = sub_1C96A7684();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v41 = v15;
      *v14 = 136446466;
      v16 = [v11 identifier];
      v17 = sub_1C96A7024();
      v19 = v18;

      v20 = sub_1C9484164(v17, v19, &v41);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      v21 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
      v22 = sub_1C96A70A4();
      v24 = sub_1C9484164(v22, v23, &v41);

      *(v14 + 14) = v24;
      _os_log_impl(&dword_1C945E000, v12, v13, "Failed to schedule notification request: %{public}s with error: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v15, -1, -1);
      MEMORY[0x1CCA8E3D0](v14, -1, -1);
    }

    a3(a1);
  }

  else
  {
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v26 = sub_1C96A6154();
    __swift_project_value_buffer(v26, qword_1EDB7AC90);
    v27 = a2;
    v28 = sub_1C96A6134();
    v29 = sub_1C96A76A4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 136446210;
      v32 = [v27 identifier];
      v33 = sub_1C96A7024();
      v35 = v34;

      v36 = sub_1C9484164(v33, v35, &v41);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_1C945E000, v28, v29, "Succesfully requested notification: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1CCA8E3D0](v31, -1, -1);
      MEMORY[0x1CCA8E3D0](v30, -1, -1);
    }

    v37 = [v27 identifier];
    v38 = sub_1C96A7024();
    v40 = v39;

    a5(v38, v40);
  }
}

id sub_1C95BB45C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C96A7004();

  v2 = [v0 initWithBundleIdentifier_];

  return v2;
}

uint64_t sub_1C95BB500(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

void SubscriptionEntity.init()()
{
  OUTLINED_FUNCTION_103();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6688);
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_51_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC0);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v10 = OUTLINED_FUNCTION_7(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_94_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_41_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v13 = OUTLINED_FUNCTION_7(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_66_2();
  *v2 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v22 = *MEMORY[0x1E69D61F8];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v25 = *(v24 + 104);
  v26 = OUTLINED_FUNCTION_43_8();
  v25(v26);
  OUTLINED_FUNCTION_10_27();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = OUTLINED_FUNCTION_32();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v2[1] = OUTLINED_FUNCTION_80_1();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v34 = OUTLINED_FUNCTION_43_8();
  v25(v34);
  OUTLINED_FUNCTION_10_27();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  (v25)(v0, v22, v23);
  OUTLINED_FUNCTION_10_27();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v2[2] = OUTLINED_FUNCTION_80_1();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
  v47 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v2[3] = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v43);
  v53 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v43);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v2[4] = OUTLINED_FUNCTION_79_2();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6690);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v56);
  v60 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6698);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v2[5] = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v56);
  v66 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v56);
  OUTLINED_FUNCTION_65();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v2[6] = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_101();
}

void sub_1C95BBA28()
{
  OUTLINED_FUNCTION_103();
  v104 = v1;
  v105 = v2;
  v102 = v3;
  v103 = v4;
  v99 = v5;
  v100 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B40);
  OUTLINED_FUNCTION_7(v9);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_90();
  v101 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6688);
  v13 = OUTLINED_FUNCTION_7(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_24();
  v98 = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_51_0();
  v97 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC0);
  v18 = OUTLINED_FUNCTION_7(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_24();
  v95 = v19;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_41_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v22 = OUTLINED_FUNCTION_7(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_64_2();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v94 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v27 = OUTLINED_FUNCTION_7(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_42_6();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  v30 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_66_2();
  v96 = sub_1C96A6344();
  *v8 = v96;
  sub_1C96A3D04();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v37 = *MEMORY[0x1E69D61F8];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v40 = *(v39 + 104);
  v40(v25, v37, v38);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v38);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v8[1] = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v40(v25, v37, v38);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v38);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v40(v0, v37, v38);
  v50 = OUTLINED_FUNCTION_1_7();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v38);
  OUTLINED_FUNCTION_21_14();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v8[2] = sub_1C96A6344();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE0);
  v54 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v53);
  v57 = OUTLINED_FUNCTION_21_0();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8);
  OUTLINED_FUNCTION_23_16();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v60 = sub_1C96A6344();
  v8[3] = v60;
  v94[1] = v60;
  v61 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v53);
  v64 = OUTLINED_FUNCTION_21_0();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v53);
  OUTLINED_FUNCTION_34_0();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  v67 = sub_1C96A6344();
  v8[4] = v67;
  v95 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6690);
  v69 = OUTLINED_FUNCTION_32();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v68);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6698);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  v8[5] = sub_1C96A6344();
  v75 = OUTLINED_FUNCTION_32();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v68);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v68);
  OUTLINED_FUNCTION_21_14();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  v8[6] = sub_1C96A6344();
  v106 = v99;
  v107 = v100;
  sub_1C96A3D04();
  sub_1C96A6364();

  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B48);
  v82 = *(v81 - 8);
  v83 = *(v82 + 16);
  v84 = v101;
  v85 = v102;
  v83(v101, v102, v81);
  v86 = OUTLINED_FUNCTION_1_7();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v81);
  sub_1C96A6364();

  v89 = v103;
  v83(v84, v103, v81);
  v90 = OUTLINED_FUNCTION_1_7();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v81);
  sub_1C96A6364();

  LOBYTE(v106) = v104;
  sub_1C96A6364();

  LOBYTE(v106) = v105;
  sub_1C96A6364();

  v93 = *(v82 + 8);
  v93(v89, v81);
  v93(v85, v81);
  OUTLINED_FUNCTION_101();
}

void SubscriptionEntity.withLocation(_:)()
{
  OUTLINED_FUNCTION_103();
  v5 = v4;
  v23 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B48);
  v8 = OUTLINED_FUNCTION_7(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_95();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_94_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_96();
  v13 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_24();
  v22 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_41_1();
  sub_1C96A6354();
  sub_1C96A6354();
  sub_1C96A6354();
  if (v28)
  {
    sub_1C9489760(v5, v3);
    v18 = type metadata accessor for NotificationSubscription.Location(0);
    sub_1C9489760(v5 + *(v18 + 20), v1);
    OUTLINED_FUNCTION_48();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v13);
    sub_1C9489760(v3, v0);
    sub_1C94892C0(&qword_1EDB7D0B8);
    sub_1C94892C0(&qword_1EDB7ADD8);
    OUTLINED_FUNCTION_71_2();
    sub_1C96A6284();
    sub_1C95BC388(v1, v2);
    if (__swift_getEnumTagSinglePayload(v2, 1, v13) == 1)
    {
      sub_1C9489760(v3, v22);
      if (__swift_getEnumTagSinglePayload(v2, 1, v13) != 1)
      {
        sub_1C94FB2D4(v2);
      }
    }

    else
    {
      sub_1C94898C4(v2, v22);
    }

    OUTLINED_FUNCTION_71_2();
    sub_1C96A6284();
    sub_1C95BBA28();
    sub_1C94FB2D4(v1);
    sub_1C94DBDDC(v3);
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    *(v23 + 48) = v27;
    OUTLINED_FUNCTION_101();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C95BC388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C95BC3F8()
{
  OUTLINED_FUNCTION_103();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6688);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_24();
  v84 = v7;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_51_0();
  v83 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC0);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_24();
  v80[0] = v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_63_2();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v80 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v20 = OUTLINED_FUNCTION_7(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_64_2();
  MEMORY[0x1EEE9AC00](v21);
  *&v85 = v2;
  v22 = *v2;
  v23 = v2[1];
  v86 = v2[2];
  v87 = v23;
  v24 = v2[3];
  v81 = v22;
  v82 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  v80[1] = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v32 = *MEMORY[0x1E69D61F8];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v35 = *(v34 + 104);
  v35(v18, v32, v33);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v33);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_23_16();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  *(v4 + 8) = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v35(v18, v32, v33);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v33);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v35(v0, v32, v33);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v33);
  OUTLINED_FUNCTION_34_0();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  *(v4 + 16) = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE0);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6690);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v65);
  v69 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6698);
  OUTLINED_FUNCTION_23_16();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v65);
  v75 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v65);
  OUTLINED_FUNCTION_34_0();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  v78 = v81;
  sub_1C96A3D04();

  *v4 = v78;
  v79 = v82;
  sub_1C96A3D04();

  *(v4 + 24) = v79;
  sub_1C96A3D04();

  *(v4 + 32) = v79;
  v85 = *(v85 + 32);
  sub_1C96A3D04();

  *(v4 + 40) = v85;
  OUTLINED_FUNCTION_101();
}

void sub_1C95BC944()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v70 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6688);
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_51_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC0);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_41_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v10 = OUTLINED_FUNCTION_7(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_94_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_95();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v13 = OUTLINED_FUNCTION_7(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_42_6();
  v67 = *v1;
  v69 = v1[3];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  v16 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_14_21();
  sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v24 = *(v23 + 104);
  OUTLINED_FUNCTION_55_2();
  v24();
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v22);
  v28 = OUTLINED_FUNCTION_32();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v68 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  OUTLINED_FUNCTION_55_2();
  v24();
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v22);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  OUTLINED_FUNCTION_55_2();
  v24();
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v22);
  OUTLINED_FUNCTION_65();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v37 = sub_1C96A6344();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE0);
  v39 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8);
  OUTLINED_FUNCTION_23_16();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  v45 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v38);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v38);
  OUTLINED_FUNCTION_34_0();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6690);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v51);
  v55 = OUTLINED_FUNCTION_21_0();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6698);
  OUTLINED_FUNCTION_23_16();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v58 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v51);
  v62 = OUTLINED_FUNCTION_21_0();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v51);
  OUTLINED_FUNCTION_34_0();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v65 = sub_1C96A6344();
  sub_1C96A3D04();

  swift_retain_n();

  sub_1C96A6354();

  if (v72)
  {
    if (v71 != 0x64656C62616E65 || v72 != 0xE700000000000000)
    {
      sub_1C96A7DE4();
    }

    sub_1C96A6364();
  }

  *v70 = v67;
  v70[1] = v68;
  v70[2] = v37;
  v70[3] = v69;
  v70[4] = v69;
  v70[5] = v58;
  v70[6] = v65;
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C95BCEA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657461657263 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465696669646F6DLL && a2 == 0xE800000000000000;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C96D3170 == a2;
          if (v9 || (sub_1C96A7DE4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
            if (v10 || (sub_1C96A7DE4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x657265766573 && a2 == 0xE600000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C96A7DE4();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C95BD0E0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x64657461657263;
      break;
    case 2:
      result = 0x6465696669646F6DLL;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x7469706963657270;
      break;
    case 6:
      result = 0x657265766573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C95BD1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95BCEA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95BD1DC(uint64_t a1)
{
  v2 = sub_1C95BD4C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95BD218(uint64_t a1)
{
  v2 = sub_1C95BD4C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SubscriptionEntity.encode(to:)()
{
  OUTLINED_FUNCTION_119();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A66A0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_56_2();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v7 = sub_1C95BD4C8();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_69_0();
  sub_1C96A7F54();
  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_4_0();
  sub_1C9469CB4(v8, v9);
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_88();
  if (v7)
  {
  }

  else
  {

    OUTLINED_FUNCTION_48_4();
    OUTLINED_FUNCTION_65_2();
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v10, v11);
    OUTLINED_FUNCTION_4_39();
    OUTLINED_FUNCTION_4_39();
    OUTLINED_FUNCTION_54_4();
    OUTLINED_FUNCTION_65_2();
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v12, v13);
    OUTLINED_FUNCTION_4_39();
    OUTLINED_FUNCTION_44_4();
    OUTLINED_FUNCTION_4_39();
    OUTLINED_FUNCTION_112();
    OUTLINED_FUNCTION_65_2();
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v14, v15);
    OUTLINED_FUNCTION_4_39();
    OUTLINED_FUNCTION_4_39();
  }

  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_118();
}

unint64_t sub_1C95BD4C8()
{
  result = qword_1EC3A66A8;
  if (!qword_1EC3A66A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A66A8);
  }

  return result;
}

void SubscriptionEntity.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_119();
  v91 = v12;
  v88 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A66B8);
  OUTLINED_FUNCTION_1();
  v89 = v15;
  v90 = v14;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_90();
  v92 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6688);
  v19 = OUTLINED_FUNCTION_7(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_51_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC0);
  v22 = OUTLINED_FUNCTION_7(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_42_6();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v25 = OUTLINED_FUNCTION_7(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_63_2();
  MEMORY[0x1EEE9AC00](v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v28 = OUTLINED_FUNCTION_7(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_96();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  v31 = OUTLINED_FUNCTION_21_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_66_2();
  sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v38 = *MEMORY[0x1E69D61F8];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v41 = *(v40 + 104);
  v42 = OUTLINED_FUNCTION_74_0();
  v41(v42);
  v43 = OUTLINED_FUNCTION_1_7();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v39);
  v46 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v49 = OUTLINED_FUNCTION_74_0();
  v41(v49);
  v50 = OUTLINED_FUNCTION_1_7();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v39);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  (v41)(v11, v38, v39);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v39);
  OUTLINED_FUNCTION_65();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE0);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6690);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6698);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  __swift_project_boxed_opaque_existential_1(v91, v91[3]);
  sub_1C95BD4C8();
  sub_1C96A7F44();
  if (!v10)
  {
    OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8);
    OUTLINED_FUNCTION_16_3();
    sub_1C96A7CB4();

    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70);
    OUTLINED_FUNCTION_16_3();
    sub_1C96A7CB4();

    OUTLINED_FUNCTION_22_17(2);
    OUTLINED_FUNCTION_49_4();

    OUTLINED_FUNCTION_54_4();
    OUTLINED_FUNCTION_5(&qword_1EC3A4B20, &qword_1EC3A4AE8);
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_60_2();
    OUTLINED_FUNCTION_49_4();

    OUTLINED_FUNCTION_22_17(4);
    OUTLINED_FUNCTION_60_2();
    OUTLINED_FUNCTION_49_4();

    OUTLINED_FUNCTION_5(&qword_1EC3A66C0, &qword_1EC3A6698);
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_49_4();

    OUTLINED_FUNCTION_22_17(6);
    OUTLINED_FUNCTION_49_4();
    (*(v89 + 8))(v92, v90);

    *v88 = a10;
    v88[1] = a10;
    v88[2] = a10;
    v88[3] = a10;
    v88[4] = a10;
    v88[5] = a10;
    v88[6] = a10;
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v91);

  OUTLINED_FUNCTION_118();
}

uint64_t sub_1C95BDD88(uint64_t a1)
{
  v2 = sub_1C95C145C();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C95BDDD4(uint64_t a1)
{
  v2 = sub_1C95C145C();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C95BDE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95C145C();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C95BDEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C95C145C();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C95BDF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95C145C();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C95BDF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C95C145C();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

void SubscriptionEntity_005.init()()
{
  OUTLINED_FUNCTION_103();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6688);
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_42_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC0);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_51_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v10 = OUTLINED_FUNCTION_7(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_94_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_41_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v13 = OUTLINED_FUNCTION_7(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_96();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  v16 = OUTLINED_FUNCTION_21_0();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_66_2();
  *v2 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v22 = *MEMORY[0x1E69D61F8];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v25 = *(v24 + 104);
  v26 = OUTLINED_FUNCTION_43_8();
  v25(v26);
  OUTLINED_FUNCTION_10_27();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = OUTLINED_FUNCTION_32();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v2[1] = OUTLINED_FUNCTION_80_1();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v34 = OUTLINED_FUNCTION_43_8();
  v25(v34);
  OUTLINED_FUNCTION_10_27();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  (v25)(v0, v22, v23);
  OUTLINED_FUNCTION_10_27();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  OUTLINED_FUNCTION_65();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v2[2] = OUTLINED_FUNCTION_80_1();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE0);
  v44 = OUTLINED_FUNCTION_21_0();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v2[3] = sub_1C96A6344();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6690);
  v51 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v50);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6698);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v2[4] = sub_1C96A6344();
  v57 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v50);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v50);
  OUTLINED_FUNCTION_21_14();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v2[5] = sub_1C96A6344();
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C95BE43C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657461657263 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465696669646F6DLL && a2 == 0xE800000000000000;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
          if (v9 || (sub_1C96A7DE4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x657265766573 && a2 == 0xE600000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C96A7DE4();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C95BE628(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x64657461657263;
      break;
    case 2:
      result = 0x6465696669646F6DLL;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    case 4:
      result = 0x7469706963657270;
      break;
    case 5:
      result = 0x657265766573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C95BE6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95BE43C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95BE708(uint64_t a1)
{
  v2 = sub_1C95BE9EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95BE744(uint64_t a1)
{
  v2 = sub_1C95BE9EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SubscriptionEntity_005.encode(to:)()
{
  OUTLINED_FUNCTION_119();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A66C8);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_56_2();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v7 = sub_1C95BE9EC();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_69_0();
  sub_1C96A7F54();
  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_4_0();
  sub_1C9469CB4(v8, v9);
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_88();
  if (v7)
  {
  }

  else
  {

    OUTLINED_FUNCTION_48_4();
    OUTLINED_FUNCTION_65_2();
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v10, v11);
    OUTLINED_FUNCTION_4_39();
    OUTLINED_FUNCTION_4_39();
    OUTLINED_FUNCTION_54_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v12, v13);
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_44_4();
    OUTLINED_FUNCTION_65_2();
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v14, v15);
    OUTLINED_FUNCTION_4_39();
    OUTLINED_FUNCTION_112();
    OUTLINED_FUNCTION_4_39();
  }

  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_118();
}

unint64_t sub_1C95BE9EC()
{
  result = qword_1EC3A66D0;
  if (!qword_1EC3A66D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A66D0);
  }

  return result;
}

void SubscriptionEntity_005.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_119();
  v87 = v12;
  v83 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A66D8);
  OUTLINED_FUNCTION_1();
  v84 = v15;
  v85 = v14;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_90();
  v86 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6688);
  v19 = OUTLINED_FUNCTION_7(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_95();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC0);
  v22 = OUTLINED_FUNCTION_7(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_51_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v25 = OUTLINED_FUNCTION_7(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_94_1();
  MEMORY[0x1EEE9AC00](v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v28 = OUTLINED_FUNCTION_7(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_42_6();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  v31 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_66_2();
  v88 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v38 = *MEMORY[0x1E69D61F8];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v41 = *(v40 + 104);
  v42 = OUTLINED_FUNCTION_74_0();
  v41(v42);
  OUTLINED_FUNCTION_10_27();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  v47 = OUTLINED_FUNCTION_32();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_23_16();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v50 = OUTLINED_FUNCTION_74_0();
  v41(v50);
  OUTLINED_FUNCTION_10_27();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  (v41)(v11, v38, v39);
  OUTLINED_FUNCTION_10_27();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  OUTLINED_FUNCTION_34_0();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE0);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6690);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6698);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  OUTLINED_FUNCTION_21_14();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  sub_1C95BE9EC();
  sub_1C96A7F44();
  if (!v10)
  {
    OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8);
    OUTLINED_FUNCTION_16_3();
    sub_1C96A7CB4();

    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70);
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_71_2();
    sub_1C96A7CB4();

    OUTLINED_FUNCTION_22_17(2);
    OUTLINED_FUNCTION_71_2();
    sub_1C96A7CB4();

    OUTLINED_FUNCTION_54_4();
    OUTLINED_FUNCTION_5(&qword_1EC3A4B20, &qword_1EC3A4AE8);
    OUTLINED_FUNCTION_16_3();
    sub_1C96A7CB4();

    OUTLINED_FUNCTION_5(&qword_1EC3A66C0, &qword_1EC3A6698);
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_77_1();
    sub_1C96A7CB4();

    OUTLINED_FUNCTION_22_17(5);
    OUTLINED_FUNCTION_77_1();
    sub_1C96A7CB4();
    (*(v84 + 8))(v86, v85);

    *v83 = v88;
    v83[1] = a10;
    v83[2] = a10;
    v83[3] = a10;
    v83[4] = a10;
    v83[5] = a10;
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v87);

  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_118();
}

uint64_t sub_1C95BF21C(uint64_t a1)
{
  v2 = sub_1C95C1408();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C95BF268(uint64_t a1)
{
  v2 = sub_1C95C1408();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C95BF2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95C1408();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C95BF34C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C95C1408();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C95BF398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95C1408();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C95BF3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C95C1408();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1C95BF460(uint64_t *a1)
{
  swift_beginAccess();
  v2 = *a1;
  sub_1C96A53C4();
  return v2;
}

void SubscriptionEntity_004.init()()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC0);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_51_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_96();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v46);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_14_21();
  *v1 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v19 = *(v18 + 104);
  OUTLINED_FUNCTION_55_2();
  v19();
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v17);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v1[1] = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  OUTLINED_FUNCTION_55_2();
  v19();
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v17);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  OUTLINED_FUNCTION_55_2();
  v19();
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v17);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v1[2] = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE0);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v1[3] = sub_1C96A6344();
  v40 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v46);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v1[4] = sub_1C96A6344();
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C95BF8C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657461657263 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465696669646F6DLL && a2 == 0xE800000000000000;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C96A7DE4();

          if (v10)
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

uint64_t sub_1C95BFA5C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x64657461657263;
      break;
    case 2:
      result = 0x6465696669646F6DLL;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    case 4:
      result = 0x6574617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C95BFAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95BF8C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95BFB18(uint64_t a1)
{
  v2 = sub_1C95BFDEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95BFB54(uint64_t a1)
{
  v2 = sub_1C95BFDEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SubscriptionEntity_004.encode(to:)()
{
  OUTLINED_FUNCTION_119();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A66E0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  v9 = v0[1];
  v10 = v0[3];
  v18[3] = v0[2];
  v18[4] = v9;
  v18[1] = v0[4];
  v18[2] = v10;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v11 = sub_1C95BFDEC();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_61_1();
  sub_1C96A7F54();
  v19 = 0;
  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_4_0();
  sub_1C9469CB4(v12, v13);
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_0();
  if (v11)
  {
  }

  else
  {

    OUTLINED_FUNCTION_48_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v14, v15);
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_88();
    v19 = 2;
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_54_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v16, v17);
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_44_4();
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_42_0();
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_118();
}

unint64_t sub_1C95BFDEC()
{
  result = qword_1EC3A66E8;
  if (!qword_1EC3A66E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A66E8);
  }

  return result;
}

void SubscriptionEntity_004.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_119();
  v90 = v15;
  v83 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A66F0);
  OUTLINED_FUNCTION_1();
  v84 = v18;
  v85 = v17;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_90();
  v95 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC0);
  v22 = OUTLINED_FUNCTION_7(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_24();
  v92 = v23;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_51_0();
  v91 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v27 = OUTLINED_FUNCTION_7(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_64_2();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v82 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v32 = OUTLINED_FUNCTION_7(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_63_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_96();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  v86 = v13;
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  v87 = v14;
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_23_16();
  swift_allocObject();
  OUTLINED_FUNCTION_14_21();
  v96 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v42 = *MEMORY[0x1E69D61F8];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v45 = *(v44 + 104);
  v45(v30, v42, v43);
  OUTLINED_FUNCTION_10_27();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v94 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v45(v30, v42, v43);
  OUTLINED_FUNCTION_10_27();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v45(v10, v42, v43);
  OUTLINED_FUNCTION_10_27();
  v57 = v90;
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v88 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE0);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v91 = sub_1C96A6344();
  v70 = OUTLINED_FUNCTION_32();
  v71 = v89;
  __swift_storeEnumTagSinglePayload(v70, v72, v73, v89);
  v74 = OUTLINED_FUNCTION_21_0();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v71);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v92 = sub_1C96A6344();
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  sub_1C95BFDEC();
  sub_1C96A7F44();
  if (!v11)
  {
    v97 = 0;
    OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8);
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_60_2();
    sub_1C96A7CB4();
    v93 = v12;

    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70);
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_75_2();
    sub_1C96A7CB4();

    v94 = a10;
    OUTLINED_FUNCTION_22_17(2);
    OUTLINED_FUNCTION_75_2();
    sub_1C96A7CB4();

    OUTLINED_FUNCTION_54_4();
    OUTLINED_FUNCTION_5(&qword_1EC3A4B20, &qword_1EC3A4AE8);
    OUTLINED_FUNCTION_16_3();
    sub_1C96A7CB4();
    v77 = v84;

    OUTLINED_FUNCTION_22_17(4);
    v78 = v85;
    v79 = v95;
    sub_1C96A7CB4();
    (*(v77 + 8))(v79, v78);

    v80 = v83;
    v81 = v94;
    *v83 = v96;
    v80[1] = v81;
    v80[2] = a10;
    v80[3] = a10;
    v80[4] = a10;
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v57);

  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_118();
}

unint64_t sub_1C95C050C()
{
  result = qword_1EDB7C250;
  if (!qword_1EDB7C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C250);
  }

  return result;
}

unint64_t sub_1C95C0564()
{
  result = qword_1EDB7C268;
  if (!qword_1EDB7C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C268);
  }

  return result;
}

unint64_t sub_1C95C05B8()
{
  result = qword_1EDB7C240;
  if (!qword_1EDB7C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C240);
  }

  return result;
}

unint64_t sub_1C95C060C()
{
  result = qword_1EDB7C248;
  if (!qword_1EDB7C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C248);
  }

  return result;
}

unint64_t sub_1C95C0664()
{
  result = qword_1EDB7C260;
  if (!qword_1EDB7C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C260);
  }

  return result;
}

unint64_t sub_1C95C06BC()
{
  result = qword_1EDB7C258;
  if (!qword_1EDB7C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C258);
  }

  return result;
}

unint64_t sub_1C95C0714()
{
  result = qword_1EDB7BD40;
  if (!qword_1EDB7BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BD40);
  }

  return result;
}

unint64_t sub_1C95C076C()
{
  result = qword_1EDB7BD58;
  if (!qword_1EDB7BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BD58);
  }

  return result;
}

unint64_t sub_1C95C07C0()
{
  result = qword_1EDB7BD30;
  if (!qword_1EDB7BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BD30);
  }

  return result;
}

unint64_t sub_1C95C0814()
{
  result = qword_1EDB7BD38;
  if (!qword_1EDB7BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BD38);
  }

  return result;
}

unint64_t sub_1C95C086C()
{
  result = qword_1EDB7BD50;
  if (!qword_1EDB7BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BD50);
  }

  return result;
}

unint64_t sub_1C95C08C4()
{
  result = qword_1EDB7BD48;
  if (!qword_1EDB7BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BD48);
  }

  return result;
}

unint64_t sub_1C95C091C()
{
  result = qword_1EDB7BD78;
  if (!qword_1EDB7BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BD78);
  }

  return result;
}

unint64_t sub_1C95C0974()
{
  result = qword_1EDB7BD90;
  if (!qword_1EDB7BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BD90);
  }

  return result;
}

unint64_t sub_1C95C09CC()
{
  result = qword_1EDB7BD68;
  if (!qword_1EDB7BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BD68);
  }

  return result;
}

unint64_t sub_1C95C0A20()
{
  result = qword_1EDB7BD70;
  if (!qword_1EDB7BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BD70);
  }

  return result;
}

unint64_t sub_1C95C0A78()
{
  result = qword_1EDB7BD88;
  if (!qword_1EDB7BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BD88);
  }

  return result;
}

unint64_t sub_1C95C0AD4()
{
  result = qword_1EDB7BD80;
  if (!qword_1EDB7BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BD80);
  }

  return result;
}

uint64_t sub_1C95C0B28(uint64_t a1)
{
  v2 = sub_1C95C13B4();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C95C0B74(uint64_t a1)
{
  v2 = sub_1C95C13B4();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C95C0BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95C13B4();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C95C0C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C95C13B4();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C95C0CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95C13B4();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C95C0CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C95C13B4();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1C95C0D74(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C95C0DB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionEntity_004.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SubscriptionEntity_005.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SubscriptionEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C95C10A0()
{
  result = qword_1EC3A66F8;
  if (!qword_1EC3A66F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A66F8);
  }

  return result;
}

unint64_t sub_1C95C10F8()
{
  result = qword_1EC3A6700;
  if (!qword_1EC3A6700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6700);
  }

  return result;
}

unint64_t sub_1C95C1150()
{
  result = qword_1EC3A6708;
  if (!qword_1EC3A6708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6708);
  }

  return result;
}

unint64_t sub_1C95C11A8()
{
  result = qword_1EC3A6710;
  if (!qword_1EC3A6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6710);
  }

  return result;
}

unint64_t sub_1C95C1200()
{
  result = qword_1EC3A6718;
  if (!qword_1EC3A6718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6718);
  }

  return result;
}

unint64_t sub_1C95C1258()
{
  result = qword_1EC3A6720;
  if (!qword_1EC3A6720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6720);
  }

  return result;
}

unint64_t sub_1C95C12B0()
{
  result = qword_1EC3A6728;
  if (!qword_1EC3A6728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6728);
  }

  return result;
}

unint64_t sub_1C95C1308()
{
  result = qword_1EC3A6730;
  if (!qword_1EC3A6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6730);
  }

  return result;
}

unint64_t sub_1C95C1360()
{
  result = qword_1EC3A6738;
  if (!qword_1EC3A6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6738);
  }

  return result;
}

unint64_t sub_1C95C13B4()
{
  result = qword_1EDB7BD98;
  if (!qword_1EDB7BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BD98);
  }

  return result;
}

unint64_t sub_1C95C1408()
{
  result = qword_1EDB7BD60;
  if (!qword_1EDB7BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BD60);
  }

  return result;
}

unint64_t sub_1C95C145C()
{
  result = qword_1EDB7C270[0];
  if (!qword_1EDB7C270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7C270);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_49_4()
{

  return sub_1C96A7CB4();
}

void OUTLINED_FUNCTION_56_2()
{
  v2 = *(v0 + 8);
  *(v1 - 104) = *(v0 + 16);
  *(v1 - 96) = v2;
}

uint64_t OUTLINED_FUNCTION_80_1()
{

  return sub_1C96A6344();
}

uint64_t LocationMetadataManager.__allocating_init(geocodeService:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  LocationMetadataManager.init(geocodeService:store:)(a1, a2, a3, a4);
  return v8;
}

void sub_1C95C15A4(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7CF90);
  v5 = sub_1C96A6134();
  v6 = sub_1C96A76A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C945E000, v5, v6, "Handling country code configuration change", v7, 2u);
    MEMORY[0x1CCA8E3D0](v7, -1, -1);
  }

  sub_1C9484328(a1, &v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6770);
  if (swift_dynamicCast())
  {
    v8 = v64;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v66 = 0u;
    v67 = 0u;
    goto LABEL_13;
  }

  v9 = sub_1C96A7024();
  v11 = v10;
  sub_1C96A53C4();
  sub_1C94FA584(v9, v11, v8);

  if (!*(&v67 + 1))
  {
LABEL_13:
    sub_1C95BA620(&v66);
    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {

    v12 = v64;
    v13 = v65;
    goto LABEL_17;
  }

LABEL_14:
  v14 = [objc_opt_self() sharedConfiguration];
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;

  v16 = sub_1C94A3EF4(v15);
  if (!v17)
  {
    v36 = sub_1C96A6134();
    v37 = sub_1C96A7684();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1C945E000, v36, v37, "Could not retrieve countryCode from GEOCountryConfiguration.shared - aborting", v38, 2u);
      MEMORY[0x1CCA8E3D0](v38, -1, -1);
    }

    return;
  }

  v12 = v16;
  v13 = v17;
LABEL_17:
  sub_1C96A53C4();
  sub_1C96A50E4();
  sub_1C96A53C4();
  sub_1C96A3D04();
  v18 = sub_1C96A6134();
  v19 = sub_1C96A76A4();

  v63 = v2;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *&v66 = v60;
    *v20 = 141558787;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    *(v20 + 14) = sub_1C9484164(v12, v13, &v66);
    *(v20 + 22) = 2160;
    *(v20 + 24) = 1752392040;
    *(v20 + 32) = 2081;
    v21 = *(v2 + 56);
    ObjectType = swift_getObjectType();
    v23 = *(v21 + 8);
    swift_unknownObjectRetain();
    v24 = v23(ObjectType, v21);
    v26 = v25;
    swift_unknownObjectRelease();
    v27 = sub_1C9484164(v24, v26, &v66);
    v2 = v63;

    *(v20 + 34) = v27;
    _os_log_impl(&dword_1C945E000, v18, v19, "Receive new geo countryCode configuration. countryCode=%{private,mask.hash}s, configuredCountryCode=%{private,mask.hash}s", v20, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v60, -1, -1);
    MEMORY[0x1CCA8E3D0](v20, -1, -1);
  }

  v28 = *(v2 + 56);
  v29 = swift_getObjectType();
  v30 = *(v28 + 8);
  swift_unknownObjectRetain();
  v31 = v30(v29, v28);
  v33 = v32;
  swift_unknownObjectRelease();
  if (v12 == v31 && v13 == v33)
  {
    swift_bridgeObjectRelease_n();
LABEL_26:

    sub_1C96A50F4();
    return;
  }

  v35 = sub_1C96A7DE4();

  if (v35)
  {
    goto LABEL_26;
  }

  v39 = v12;
  v40 = sub_1C96A6134();
  v41 = sub_1C96A76A4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1C945E000, v40, v41, "Invalidate all countryCodes as geo countryCode configuration changed", v42, 2u);
    MEMORY[0x1CCA8E3D0](v42, -1, -1);
  }

  v43 = v63;
  v44 = *(v63 + 56);
  v45 = swift_getObjectType();
  v46 = *(v44 + 8);
  swift_unknownObjectRetain();
  v47 = v46(v45, v44);
  v61 = v48;
  v62 = v47;
  swift_unknownObjectRelease();
  v49 = *(v63 + 56);
  v50 = swift_getObjectType();
  v51 = *(v49 + 16);
  sub_1C96A53C4();
  swift_unknownObjectRetain();
  v51(v39, v13, v50, v49);
  swift_unknownObjectRelease();
  *(v63 + 72) = sub_1C94D8350(v39, v13) & 1;
  swift_beginAccess();
  v52 = *(v63 + 40);
  sub_1C96A53C4();
  sub_1C96A50F4();
  v53 = sub_1C96A6134();
  v54 = sub_1C96A76A4();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_1C945E000, v53, v54, "Invalidate all addresses as geo countryCode configuration changed", v55, 2u);
    v43 = v63;
    MEMORY[0x1CCA8E3D0](v55, -1, -1);
  }

  v56 = *(v43 + 56);
  v57 = swift_getObjectType();
  v58 = *(v56 + 80);
  swift_unknownObjectRetain();
  v58(v57, v56);
  swift_unknownObjectRelease();
  v59 = swift_allocObject();
  v59[2] = v52;
  v59[3] = v62;
  v59[4] = v61;
  v59[5] = v39;
  v59[6] = v13;
  sub_1C96A57C4();
}

uint64_t sub_1C95C1CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1C946D04C();
  v11 = result;
  for (i = 0; v11 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA8D440](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      result = sub_1C96A3D04();
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    sub_1C95C1DC0(a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1C95C1DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(a1, a2, a3, a4, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C95C1EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  v5 = type metadata accessor for Location();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 + *(v9 + 36));
  v11 = v10[1];
  v42 = a1;
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = *v10;
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    sub_1C9489760(a1, &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = *(v6 + 80);
    v15 = (v14 + 40) & ~v14;
    v43 = v14 | 7;
    v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    v17[2] = v3;
    v17[3] = v12;
    v17[4] = v11;
    v18 = v17 + v15;
    a1 = v42;
    sub_1C94898C4(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
    v19 = (v17 + v16);
    v20 = v3;
    v22 = v40;
    v21 = v41;
    *v19 = v40;
    v19[1] = v21;
    v39 = (v14 + 16) & ~v14;
    v23 = v21;
    v24 = sub_1C96A53C4();
  }

  else
  {
LABEL_6:
    sub_1C9489760(a1, &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = *(v6 + 80);
    v26 = (v25 + 16) & ~v25;
    v27 = (v7 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = v25 | 7;
    v17 = swift_allocObject();
    v39 = v26;
    v24 = sub_1C94898C4(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v26);
    *(v17 + v27) = v3;
    v28 = (v17 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
    v20 = v3;
    v22 = v40;
    v23 = v41;
    *v28 = v40;
    v28[1] = v23;
  }

  MEMORY[0x1EEE9AC00](v24);
  *(&v38 - 2) = v29;
  *(&v38 - 1) = v17;
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C94DDD40(v22, v23);
  sub_1C96A5784();

  sub_1C9489760(a1, &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = v39;
  v31 = (v39 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  sub_1C94898C4(v8, v32 + v30);
  *(v32 + v31) = v20;
  sub_1C96A3D04();
  v33 = sub_1C96A55A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6780);
  sub_1C96A5634();

  sub_1C9489760(v42, v8);
  v34 = swift_allocObject();
  sub_1C94898C4(v8, v34 + v30);
  v35 = sub_1C96A55A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6750);
  v36 = sub_1C96A5644();

  return v36;
}

uint64_t sub_1C95C2290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Location();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6780);
  sub_1C96A5784();
  sub_1C9489760(a4, &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = (v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_1C94898C4(&v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v15);
  *(v17 + v16) = a1;
  v18 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a5;
  v18[1] = a6;
  sub_1C96A3D04();
  sub_1C94DDD40(a5, a6);
  v19 = sub_1C96A55A4();
  v20 = sub_1C96A5644();

  return v20;
}

uint64_t sub_1C95C2458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v7 + 32))(a2, a3, *(a4 + 32), *(a4 + 40), 0, ObjectType, v7);
}

uint64_t sub_1C95C24D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, void *a5@<X8>)
{
  if (*a1)
  {
    v9 = swift_unknownObjectRetain();
    sub_1C95C2560(v9, a2, a3, a4);
    v11 = v10;
    v13 = v12;
    result = swift_unknownObjectRelease();
  }

  else
  {
    v11 = *(a2 + 16);
    v13 = *(a2 + 24);
    result = sub_1C96A53C4();
  }

  *a5 = v11;
  a5[1] = v13;
  return result;
}

void sub_1C95C2560(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 2)
  {
    v20 = *(a2 + 16);
    v21 = *(a2 + 24);
    sub_1C96A53C4();
    MEMORY[0x1CCA8CB00](44, 0xE100000000000000);
    sub_1C96A53C4();
    MEMORY[0x1CCA8CB00](a3, a4);

    v5 = v20;
  }

  else
  {
    v5 = *(a2 + 16);
    sub_1C96A53C4();
  }

  v8 = [objc_opt_self() placemarkWithGEOMapItem_];
  if (v8)
  {
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C96B81F0;
    *(inited + 32) = swift_getKeyPath();
    *(inited + 40) = swift_getKeyPath();
    *(inited + 48) = swift_getKeyPath();
    *(inited + 56) = swift_getKeyPath();
    v11 = 0;
    *(inited + 64) = swift_getKeyPath();
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        if (v11 == 5)
        {
          swift_setDeallocating();
          sub_1C953A0F0();
          if (*(v12 + 16))
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5FC0);
            sub_1C94D55CC();
            sub_1C96A6F54();
          }

          else
          {
          }

          return;
        }

        if ((inited & 0xC000000000000001) != 0)
        {
          MEMORY[0x1CCA8D440](v11, inited);
        }

        else
        {
          if (v11 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          sub_1C96A3D04();
        }

        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        v13 = v9;
        swift_getAtKeyPath();

        if (v21)
        {
          break;
        }

LABEL_16:
        ++v11;
      }

      v14 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v14 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (!v14)
      {

        goto LABEL_16;
      }

      v19 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C94FB3F4();
        v12 = v17;
      }

      v15 = *(v12 + 16);
      if (v15 >= *(v12 + 24) >> 1)
      {
        sub_1C94FB3F4();
        v12 = v18;
      }

      *(v12 + 16) = v15 + 1;
      v16 = v12 + 16 * v15;
      *(v16 + 32) = v20;
      *(v16 + 40) = v21;
      ++v11;
      v5 = v19;
    }
  }
}

uint64_t sub_1C95C2870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Location();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C94B7264();
  sub_1C9489760(a1, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = CLLocation.init(_:)(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  (*(v12 + 24))(v11, ObjectType, v12);
  sub_1C9489760(a1, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  sub_1C94898C4(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = (v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a3;
  v16[1] = a4;
  sub_1C96A3D04();
  sub_1C94DDD40(a3, a4);
  v17 = sub_1C96A55A4();
  v18 = sub_1C96A5644();

  return v18;
}

uint64_t sub_1C95C2A38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v46 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v46);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v15 = *a1;
  v16 = a1[1];
  v47 = v15;
  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v17 = sub_1C96A6154();
  __swift_project_value_buffer(v17, qword_1EDB7CF90);
  sub_1C9489760(a2, v14);
  sub_1C9489760(a2, v11);
  sub_1C9489760(a2, v8);
  sub_1C96A53C4();
  v18 = sub_1C96A6134();
  v19 = sub_1C96A76A4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v41 = v16;
    v21 = v20;
    v22 = swift_slowAlloc();
    v43 = v22;
    *v21 = 141559555;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    v48 = 0;
    v49 = 0xE000000000000000;
    v50 = v22;
    v45 = v3;
    v44 = a3;
    sub_1C96A7544();
    v42 = v19;
    MEMORY[0x1CCA8CB00](45, 0xE100000000000000);
    sub_1C96A7544();
    v23 = v48;
    v24 = v49;
    sub_1C94DBDDC(v14);
    v25 = sub_1C9484164(v23, v24, &v50);

    *(v21 + 14) = v25;
    *(v21 + 22) = 2160;
    *(v21 + 24) = 1752392040;
    *(v21 + 32) = 2081;
    v26 = *(v11 + 2);
    v27 = *(v11 + 3);
    sub_1C96A53C4();
    sub_1C94DBDDC(v11);
    v28 = sub_1C9484164(v26, v27, &v50);

    *(v21 + 34) = v28;
    *(v21 + 42) = 2160;
    a3 = v44;
    *(v21 + 44) = 1752392040;
    *(v21 + 52) = 2085;
    v29 = v47;
    v30 = v41;
    *(v21 + 54) = sub_1C9484164(v47, v41, &v50);
    *(v21 + 62) = 2080;
    v31 = &v8[*(v46 + 28)];
    v32 = v31[1];
    v48 = *v31;
    v49 = v32;
    sub_1C96A53C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430);
    v33 = sub_1C96A70A4();
    v35 = v34;
    sub_1C94DBDDC(v8);
    v36 = sub_1C9484164(v33, v35, &v50);

    *(v21 + 64) = v36;
    _os_log_impl(&dword_1C945E000, v18, v42, "Finding displayRegion. uniqueID=%{private,mask.hash}s, name=%{private,mask.hash}s, searchQuery=%{sensitive,mask.hash}s, searchTitle=%s", v21, 0x48u);
    v37 = v43;
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v37, -1, -1);
    MEMORY[0x1CCA8E3D0](v21, -1, -1);
  }

  else
  {

    sub_1C94DBDDC(v8);
    sub_1C94DBDDC(v11);
    sub_1C94DBDDC(v14);
    v29 = v47;
    v30 = v16;
  }

  v38 = *(a3 + 24);
  ObjectType = swift_getObjectType();
  return (*(v38 + 32))(v29, v30, *(a2 + 32), *(a2 + 40), 0, ObjectType, v38);
}

void sub_1C95C2E54(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 && (v4 = [v3 displayMapRegion]) != 0)
  {
    v5 = v4;
    v6 = GEOMapRectForMapRegion();
    v8 = v7;
    v10 = v9;
    GEOLocationCoordinate2DMake(v6);
    GEOMapPointForCoordinate();
    v12 = v11;
    v14 = v13;

    *a2 = v12 - v8 * 0.5;
    *(a2 + 8) = v14 - v10 * 0.5;
    *(a2 + 16) = v8;
    *(a2 + 24) = v10;
    *(a2 + 32) = 0;
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
  }
}

uint64_t sub_1C95C2F1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A63C8);
  sub_1C96A5784();
  v0 = sub_1C96A55A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430);
  v1 = sub_1C96A5644();

  return v1;
}

uint64_t sub_1C95C2FD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(type metadata accessor for Location() + 44);
  v5 = *(a2 + v4);
  if (v5)
  {
    v6 = *(a2 + v4);
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(a2 + 32) longitude:*(a2 + 40)];
  }

  ObjectType = swift_getObjectType();
  v8 = *(v3 + 24);
  v9 = v5;
  v10 = v8(v6, ObjectType, v3);

  return v10;
}

void sub_1C95C30A4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 addressObject];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 fullAddressWithMultiline_];

    if (v5)
    {
      v6 = sub_1C96A7024();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_1C95C314C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1C96A7024();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

uint64_t LocationMetadataManager.deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t LocationMetadataManager.__deallocating_deinit()
{
  LocationMetadataManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 73, 7);
}

uint64_t LocationMetadataManager.availableDisplayRegion(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  ObjectType = swift_getObjectType();
  v10 = 0;
  v11 = 0xE000000000000000;
  swift_unknownObjectRetain();
  sub_1C96A7544();
  OUTLINED_FUNCTION_23_17();
  sub_1C96A7544();
  (*(v3 + 40))(&v10, 0, 0xE000000000000000, ObjectType, v3);

  result = swift_unknownObjectRelease();
  v6 = v11;
  v7 = v12;
  v8 = v13;
  v9 = v14;
  if ((v14 & 1) != 0 || (v10 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v11 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v12 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    *a1 = v10;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 1;
  }

  return result;
}

uint64_t sub_1C95C3360(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 24))(a2, ObjectType, v3);
}

void sub_1C95C33C0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() placemarkWithGEOMapItem_];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 ISOcountryCode];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1C96A7024();
      v9 = v8;

      *a2 = v7;
      a2[1] = v9;
      return;
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

uint64_t sub_1C95C3468@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a2 + 56);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1C96A7544();
  MEMORY[0x1CCA8CB00](45, 0xE100000000000000);
  sub_1C96A7544();
  (*(v6 + 56))(v5, v4, 0, 0xE000000000000000, ObjectType, v6);

  swift_unknownObjectRelease();
  sub_1C96A50E4();
  sub_1C96A7544();
  MEMORY[0x1CCA8CB00](45, 0xE100000000000000);
  sub_1C96A7544();
  swift_beginAccess();
  sub_1C96A53C4();
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + 64);
  sub_1C94DDE5C();
  *(a2 + 64) = v10;

  swift_endAccess();
  sub_1C96A50F4();
  *a3 = v5;
  a3[1] = v4;
  return sub_1C96A53C4();
}

uint64_t LocationMetadataManager.resolveDisplayRegion(for:)(uint64_t a1)
{
  v3 = type metadata accessor for Location();
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = LocationMetadataManager.availableDisplayRegion(for:)(&v15);
  if (v17)
  {
    MEMORY[0x1EEE9AC00](v9);
    *(&v15 - 2) = v1;
    *(&v15 - 1) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6750);
    sub_1C96A5784();
    sub_1C9489760(a1, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v11 = swift_allocObject();
    sub_1C94898C4(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
    v12 = sub_1C96A55A4();
    v13 = sub_1C96A5664();
  }

  else
  {
    if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (*(&v15 + 1) & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v16 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (*(&v16 + 1) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v17 = 0;
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v17 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6758);
    OUTLINED_FUNCTION_23();
    return sub_1C96A56A4();
  }

  return v13;
}

uint64_t sub_1C95C3898(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  memcpy(__src, a2, sizeof(__src));
  sub_1C95087DC(__dst, v11);
  LocationMetadataManager.availableCountryCode(for:)();
  v4 = v3;
  v6 = v5;
  memcpy(v11, __src, sizeof(v11));
  sub_1C953AEDC(v11);
  v7 = sub_1C95C1EE0(a2, v4, v6);
  sub_1C94DDFD8(v4, v6);
  return v7;
}

__n128 sub_1C95C3950@<Q0>(int8x16_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *a1;
  v13 = a1[1];
  v4 = a1[2].i8[0];
  v5 = *(a2 + 56);
  if (v4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  v7 = vdupq_n_s64(v6);
  v10 = vbicq_s8(a1[1], v7);
  v11 = vbicq_s8(*a1, v7);
  ObjectType = swift_getObjectType();
  v14[0] = v11;
  v14[1] = v10;
  swift_unknownObjectRetain();
  sub_1C96A7544();
  MEMORY[0x1CCA8CB00](45, 0xE100000000000000);
  sub_1C96A7544();
  (*(v5 + 64))(v14, 0, 0xE000000000000000, ObjectType, v5);

  swift_unknownObjectRelease();
  result = v13;
  *a3 = v12;
  *(a3 + 16) = v13;
  *(a3 + 32) = v4;
  return result;
}

uint64_t LocationMetadataManager.availableAddress(for:)()
{
  if ((LocationMetadataManager.requiresShowingAddresses.getter() & 1) == 0)
  {
    return 0;
  }

  v1 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1C96A7544();
  OUTLINED_FUNCTION_23_17();
  sub_1C96A7544();
  LOBYTE(v1) = (*(v1 + 48))(0, 0xE000000000000000, ObjectType, v1);
  v4 = v3;

  swift_unknownObjectRelease();
  if ((v1 & 1) == 0)
  {

    return 0;
  }

  return v4;
}

uint64_t LocationMetadataManager.requiresShowingAddresses.getter()
{
  sub_1C96A5134();
  sub_1C96A3D04();
  sub_1C96A5554();

  return v1;
}

void LocationMetadataManager.resolveAddress(for:)()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17_24();
  v3 = v2;
  v4 = type metadata accessor for Location();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  if (LocationMetadataManager.requiresShowingAddresses.getter())
  {
    v21[0] = v7;
    v21[1] = v3;
    v10 = *(v0 + 56);
    ObjectType = swift_getObjectType();
    v22 = 0;
    v23 = 0xE000000000000000;
    swift_unknownObjectRetain();
    sub_1C96A7544();
    OUTLINED_FUNCTION_23_17();
    sub_1C96A7544();
    v12 = (*(v10 + 48))(0, 0xE000000000000000, ObjectType, v10);
    v14 = v13;
    v16 = v15;

    swift_unknownObjectRelease();
    if ((v12 & 1) == 0)
    {

      MEMORY[0x1EEE9AC00](v17);
      v21[-2] = v1;
      v21[-1] = v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430);
      sub_1C96A5784();
      sub_1C9489760(v1, v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v18 = (*(v21[0] + 80) + 16) & ~*(v21[0] + 80);
      v19 = swift_allocObject();
      sub_1C94898C4(v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
      v20 = sub_1C96A55A4();
      sub_1C96A5664();

      goto LABEL_7;
    }

    v22 = v14;
    v23 = v16;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6760);
  OUTLINED_FUNCTION_23();
  sub_1C96A56A4();
LABEL_7:
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1C95C3ED4(const void *a1)
{
  v3 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &__src[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v6 = sub_1C96A6154();
  __swift_project_value_buffer(v6, qword_1EDB7CF90);
  sub_1C9489760(a1, v5);
  v7 = sub_1C96A6134();
  v8 = sub_1C96A76A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v24[11] = v1;
    v10 = v9;
    v11 = swift_slowAlloc();
    v24[0] = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    sub_1C94DBD84();
    v12 = sub_1C96A7DB4();
    v14 = v13;
    sub_1C94DBDDC(v5);
    v15 = sub_1C9484164(v12, v14, v24);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_1C945E000, v7, v8, "No stored address, will rev geocode address for location=%{private,mask.hash}s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1CCA8E3D0](v11, -1, -1);
    MEMORY[0x1CCA8E3D0](v10, -1, -1);
  }

  else
  {

    sub_1C94DBDDC(v5);
  }

  memcpy(__dst, a1, sizeof(__dst));
  memcpy(__src, a1, sizeof(__src));
  sub_1C95087DC(__dst, v24);
  LocationMetadataManager.availableCountryCode(for:)();
  v17 = v16;
  v19 = v18;
  memcpy(v24, __src, 0x48uLL);
  sub_1C953AEDC(v24);
  v20 = sub_1C95C2F1C();
  sub_1C94DDFD8(v17, v19);
  return v20;
}

uint64_t sub_1C95C4154@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a2 + 56);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1C96A7544();
  MEMORY[0x1CCA8CB00](45, 0xE100000000000000);
  sub_1C96A7544();
  (*(v6 + 72))(v5, v4, 0, 0xE000000000000000, ObjectType, v6);

  swift_unknownObjectRelease();
  *a3 = v5;
  a3[1] = v4;
  return sub_1C96A53C4();
}

uint64_t LocationMetadataManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C96A50E4();
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = sub_1C946D04C();
  result = sub_1C96A53C4();
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      type metadata accessor for CountryCodeManagerObserverProxy();
      swift_allocObject();
      v10 = swift_unknownObjectRetain();
      sub_1C94AC734(v10, a2);
      v11 = swift_beginAccess();
      MEMORY[0x1CCA8CC10](v11);
      sub_1C94AC1D4(*((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1C96A7314();
      swift_endAccess();
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

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a1)
      {

        return sub_1C96A50F4();
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t LocationMetadataManager.removeObserver(_:)(uint64_t a1)
{
  sub_1C96A50E4();
  swift_beginAccess();
  swift_unknownObjectRetain();
  v3 = sub_1C953A244((v1 + 40), a1);
  v4 = sub_1C946D04C();
  if (v4 < v3)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_1C953AA60(v3, v4);
    swift_endAccess();
    return sub_1C96A50F4();
  }

  return result;
}

double StubLocationMetadataManager.availableDisplayRegion(for:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t StubLocationMetadataManager.resolveDisplayRegion(for:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6758);
  OUTLINED_FUNCTION_23();
  return sub_1C96A56A4();
}

double sub_1C95C4740@<D0>(int8x16_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Location();
  OUTLINED_FUNCTION_7(v6);
  *&result = sub_1C95C3950(a1, a2, a3).n128_u64[0];
  return result;
}

uint64_t sub_1C95C4814(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = type metadata accessor for Location();
  OUTLINED_FUNCTION_7(v4);
  v5 = OUTLINED_FUNCTION_14_2();
  return a3(v5);
}

uint64_t sub_1C95C4998()
{
  v1 = type metadata accessor for Location();
  OUTLINED_FUNCTION_9(v1);
  OUTLINED_FUNCTION_5_32();
  v4 = *(v0 + v3);
  v5 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1C95C2870(v0 + v2, v4, v6, v7);
}

uint64_t sub_1C95C4A54(uint64_t *a1)
{
  v3 = type metadata accessor for Location();
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_5_32();
  return sub_1C95C2A38(a1, v1 + v5, *(v1 + v4));
}

void sub_1C95C4ADC()
{
  v0 = OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_7(v0);
  v1 = OUTLINED_FUNCTION_18_22();
  sub_1C95C2E54(v1, v2);
}

uint64_t sub_1C95C4B38()
{
  v1 = type metadata accessor for Location();
  OUTLINED_FUNCTION_9(v1);
  OUTLINED_FUNCTION_5_32();
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v7 = (v0 + v6);
  v8 = *v7;
  v9 = v7[1];

  return sub_1C95C2290(v3, v4, v5, v0 + v2, v8, v9);
}

uint64_t objectdestroy_23Tm_0()
{
  type metadata accessor for Location();
  OUTLINED_FUNCTION_0_68();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  OUTLINED_FUNCTION_15_24();
  OUTLINED_FUNCTION_0_36();
  (*(v5 + 8))(v4 + v2);
  v6 = *(v0 + 24);
  v7 = sub_1C96A4A54();
  if (!OUTLINED_FUNCTION_20_1(v4 + v6))
  {
    OUTLINED_FUNCTION_3_35();
    (*(v8 + 8))(v4 + v6, v7);
  }

  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();

  OUTLINED_FUNCTION_8_28();
  if (!v9)
  {
  }

  v10 = OUTLINED_FUNCTION_7_29();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1C95C4D50()
{
  v0 = OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_9(v0);
  OUTLINED_FUNCTION_5_32();
  v1 = OUTLINED_FUNCTION_18_22();
  return sub_1C95C24D4(v1, v2, v3, v4, v5);
}

void sub_1C95C4E18()
{
  v3 = OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_9(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = v0 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1C95C2560(*v1, v0 + v5, *v7, *(v7 + 8));
  *v2 = v8;
  v2[1] = v9;
}

uint64_t static Settings.ActiveUser.resetActiveUserStatusOnNextLaunch.getter()
{
  if (qword_1EDB7AA78 != -1)
  {
    swift_once();
  }

  return sub_1C96A3D04();
}

_BYTE *_s10ActiveUserVwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C95C4FBC(uint64_t a1, uint64_t a2)
{
  v20[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6810);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v20 - v4;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v23 = a1;
  result = sub_1C96A53C4();
  for (i = 0; v9; result = )
  {
    v13 = i;
LABEL_9:
    v14 = *(v23 + 48) + 56 * (__clz(__rbit64(v9)) | (v13 << 6));
    v15 = *(v14 + 8);
    v9 &= v9 - 1;
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = *(v14 + 48);
    v19 = *(v14 + 32);
    v20[3] = *v14;
    v20[4] = v15;
    v20[5] = v16;
    v20[6] = v17;
    v21 = v19;
    v22 = v18;
    type metadata accessor for SyncedData();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
    sub_1C96A6B74();
    sub_1C9470AFC(v5, &qword_1EC3A6810);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v6 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C95C5198()
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67A0);
  OUTLINED_FUNCTION_1();
  v18 = v0;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  v19 = v3;
  sub_1C96A6C44();
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C96A6CB4();
    memcpy(v35, v36, sizeof(v35));
    if (sub_1C94EA54C(v35) == 1)
    {
      break;
    }

    v5 = *&v36[0];
    v6 = v36[1];
    v7 = v36[2];
    memcpy(v29, &v36[3] + 8, sizeof(v29));
    v30 = v36[0];
    v22 = *&v36[3];
    v23 = *(&v36[0] + 1);
    v31 = v36[1];
    v32 = v36[2];
    v33 = *&v36[3];
    memcpy(v34, &v36[3] + 8, sizeof(v34));
    sub_1C94709F4(&v30, v24, &qword_1EC3A6818);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_12_27();
      sub_1C94FB7A8();
      v4 = v14;
    }

    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
    if (v9 >= v8 >> 1)
    {
      OUTLINED_FUNCTION_9_29(v8);
      sub_1C94FB7A8();
      v4 = v15;
    }

    v21 = v30;
    v10 = v31;
    v11 = v32;
    v12 = v33;
    v24[0] = v5;
    v24[1] = v23;
    v25 = v6;
    v26 = v7;
    v27 = v22;
    memcpy(v28, v29, sizeof(v28));
    sub_1C9470AFC(v24, &qword_1EC3A6818);
    *(v4 + 16) = v9 + 1;
    v13 = v4 + 56 * v9;
    *(v13 + 32) = v21;
    *(v13 + 48) = v10;
    *(v13 + 64) = v11;
    *(v13 + 80) = v12;
    sub_1C95A038C(v34);
  }

  (*(v18 + 8))(v19, v20);
  return v4;
}

void sub_1C95C5414()
{
  OUTLINED_FUNCTION_19();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6788);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  v4 = (v2 - v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6790);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6798);
  OUTLINED_FUNCTION_1();
  v31 = v11;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
  v32 = v14;
  sub_1C96A6B84();
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C96A6BB4();
    if (__swift_getEnumTagSinglePayload(v10, 1, v0) == 1)
    {
      break;
    }

    v16 = *(v0 + 48);
    v17 = *(v10 + 2);
    v18 = *(v10 + 3);
    v19 = *(v10 + 6);
    *v7 = *v10;
    *(v7 + 2) = v17;
    *(v7 + 3) = v18;
    *(v7 + 2) = *(v10 + 2);
    *(v7 + 6) = v19;
    sub_1C95CBA94(&v10[v16], &v7[v16]);
    sub_1C94709F4(v7, v4, &qword_1EC3A6788);
    v20 = *v4;
    v35 = v4[1];
    v36 = v20;
    v21 = v4[2];
    v22 = v4[3];
    v23 = v4[4];
    v24 = v4[5];
    v34 = v4[6];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_12_27();
      sub_1C94FB7A8();
      v15 = v29;
    }

    v26 = *(v15 + 16);
    v25 = *(v15 + 24);
    if (v26 >= v25 >> 1)
    {
      OUTLINED_FUNCTION_9_29(v25);
      sub_1C94FB7A8();
      v15 = v30;
    }

    sub_1C9470AFC(v7, &qword_1EC3A6788);
    *(v15 + 16) = v26 + 1;
    v27 = (v15 + 56 * v26);
    v28 = v35;
    v27[4] = v36;
    v27[5] = v28;
    v27[6] = v21;
    v27[7] = v22;
    v27[8] = v23;
    v27[9] = v24;
    v27[10] = v34;
    sub_1C948E998();
  }

  (*(v31 + 8))(v32, v33);
  OUTLINED_FUNCTION_20_0();
}

uint64_t SyncedData.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C94947B4();
  sub_1C94948B8();
  sub_1C9494964();
  sub_1C9494A68();
  sub_1C96A6CC4();
  v2 = type metadata accessor for SyncedData();
  type metadata accessor for SyncedLocationDisplayContext();
  OUTLINED_FUNCTION_0_69();
  sub_1C94950B4(v3, v4);
  result = sub_1C96A6BE4();
  *(a1 + *(v2 + 24)) = MEMORY[0x1E69E7CC8];
  return result;
}

void SyncedData.init(locations:)()
{
  OUTLINED_FUNCTION_19();
  v1 = v0;
  v66 = v2;
  v70 = type metadata accessor for Location();
  OUTLINED_FUNCTION_1();
  v84 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v58 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v15 = v13 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v58 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v58 - v20;
  v22 = sub_1C94947B4();
  v23 = sub_1C94948B8();
  v24 = sub_1C9494964();
  v25 = sub_1C9494A68();
  v71 = v19;
  v64 = v23;
  v65 = v22;
  v62 = v25;
  v63 = v24;
  sub_1C96A6CC4();
  v26 = *(v1 + 16);
  v67 = v15;
  if (v26)
  {
    v59 = v21;
    v60 = v1;
    v61 = v11;
    v27 = v1 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v68 = *(v84 + 72);
    v84 = v26 - 1;
    v28 = v69;
    while (1)
    {
      v73 = v27;
      sub_1C9489A44(v27, v28, type metadata accessor for Location);
      sub_1C9489A44(v28, v7, type metadata accessor for Location);
      v29 = *v7;
      v78 = v7[1];
      v30 = v7[3];
      v81 = v7[2];
      v82 = v29;
      v31 = v7[4];
      v32 = v7[5];
      v33 = v70;
      sub_1C96A53C4();
      sub_1C96A53C4();
      v34 = sub_1C96A4D74();
      v79 = v35;
      v80 = v34;
      v36 = (v7 + v33[7]);
      v37 = v36[1];
      v38 = *(v7 + v33[8] + 8);
      v39 = *(v7 + v33[9] + 8);
      v40 = *(v7 + v33[10] + 8);
      OUTLINED_FUNCTION_11_25(v36, v41);
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      v42 = sub_1C96A6F04();
      v83 = type metadata accessor for Location;
      sub_1C948E998();
      v93 = 1;
      *&v92[137] = v85;
      *&v92[140] = *(&v85 + 3);
      *v92 = v82;
      *&v92[8] = v78;
      *&v92[16] = v81;
      *&v92[24] = v30;
      *&v92[32] = v31;
      *&v92[40] = v32;
      *&v43 = v74;
      *(&v43 + 1) = v37;
      *&v44 = v76;
      *&v45 = v77;
      *(&v44 + 1) = v38;
      *&v92[48] = v80;
      *&v92[56] = v79;
      *&v92[64] = v43;
      *&v43 = v75;
      *(&v43 + 1) = v39;
      *(&v45 + 1) = v40;
      *&v92[96] = v43;
      *&v92[112] = v45;
      *&v92[80] = v44;
      *&v92[128] = 0;
      v92[136] = 1;
      *&v92[144] = v42;
      v47 = *v28;
      v46 = v28[1];
      v49 = v28[2];
      v48 = v28[3];
      v50 = v28[4];
      v51 = v28[5];
      sub_1C96A53C4();
      sub_1C96A53C4();
      v52 = sub_1C96A6F04();
      v85 = v47;
      v86 = v46;
      v87 = v49;
      v88 = v48;
      v89 = v50;
      v90 = v51;
      v91 = v52;
      sub_1C96A6C94();

      memcpy(v94, v92, 0x98uLL);
      sub_1C95A038C(v94);
      sub_1C948E998();
      if (!v84)
      {
        break;
      }

      --v84;
      v27 = v73 + v68;
    }

    v53 = v66;
    v15 = v67;
    v11 = v61;
    v21 = v59;
  }

  else
  {

    v53 = v66;
  }

  v54 = v72;
  (*(v11 + 32))(v21, v71, v72);
  (*(v11 + 16))(v15, v21, v54);
  sub_1C96A6CC4();
  v55 = type metadata accessor for SyncedData();
  type metadata accessor for SyncedLocationDisplayContext();
  OUTLINED_FUNCTION_0_69();
  sub_1C94950B4(v56, v57);
  sub_1C96A6BE4();
  (*(v11 + 8))(v21, v54);
  *(v53 + *(v55 + 24)) = MEMORY[0x1E69E7CC8];
  (*(v11 + 40))(v53, v67, v54);
  OUTLINED_FUNCTION_20_0();
}

void SyncedData.uniqueMerge(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_103();
  a19 = v20;
  a20 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_10();
  v23 = sub_1C96A6AE4();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_2_49();
  sub_1C94950B4(v29, v30);
  sub_1C96A6924();
  (*(v25 + 8))(v28, v23);
  sub_1C95C8040();
  v31 = OUTLINED_FUNCTION_24_13();
  v32(v31);
  OUTLINED_FUNCTION_101();
}

void SyncedData.uniqueMerging(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_103();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_10();
  v27 = sub_1C96A6AE4();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_4_40();
  sub_1C9489A44(v23, v25, v33);
  type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_2_49();
  sub_1C94950B4(v34, v35);
  sub_1C96A6924();
  (*(v29 + 8))(v32, v27);
  sub_1C95C8040();
  v36 = OUTLINED_FUNCTION_24_13();
  v37(v36);
  OUTLINED_FUNCTION_101();
}

uint64_t SyncedData.savedLocations.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_11();

  return v1(v0);
}

uint64_t SyncedData.savedLocations.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_117();

  return v1(v0);
}

uint64_t SyncedData.displayContextByLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SyncedData() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t SyncedData.displayContextByLocation.setter()
{
  OUTLINED_FUNCTION_28_4();
  v2 = *(type metadata accessor for SyncedData() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t (*SyncedData.displayContextByLocation.modify())(void)
{
  OUTLINED_FUNCTION_28_4();
  type metadata accessor for SyncedData();
  return GEOLocationCoordinate2DMake;
}

uint64_t SyncedData.additionalFields.getter()
{
  type metadata accessor for SyncedData();

  return sub_1C96A53C4();
}

uint64_t SyncedData.additionalFields.setter()
{
  OUTLINED_FUNCTION_28_4();
  v2 = *(type metadata accessor for SyncedData() + 24);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*SyncedData.additionalFields.modify())(void)
{
  OUTLINED_FUNCTION_28_4();
  type metadata accessor for SyncedData();
  return GEOLocationCoordinate2DMake;
}

uint64_t sub_1C95C6324()
{
  strcpy(&qword_1EDB7A5E8, "savedLocations");
  unk_1EDB7A5F7 = -18;
  qword_1EDB7A5F8 = swift_getKeyPath();
  unk_1EDB7A600 = 0xD000000000000016;
  qword_1EDB7A608 = 0x80000001C96D32D0;
  result = swift_getKeyPath();
  qword_1EDB7A610 = result;
  return result;
}

uint64_t static SyncedData.fields.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDB7A5E0 != -1)
  {
    swift_once();
  }

  v2 = unk_1EDB7A5F0;
  v4 = qword_1EDB7A5F8;
  v3 = unk_1EDB7A600;
  v5 = qword_1EDB7A608;
  v6 = qword_1EDB7A610;
  *a1 = qword_1EDB7A5E8;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
  a1[4] = v5;
  a1[5] = v6;
  sub_1C96A53C4();
  sub_1C96A3D04();
  sub_1C96A53C4();

  return sub_1C96A3D04();
}

uint64_t SyncedData.init(locations:)@<X0>(uint64_t a1@<X8>)
{
  sub_1C94947B4();
  sub_1C94948B8();
  sub_1C9494964();
  sub_1C9494A68();
  OUTLINED_FUNCTION_19_19();
  v2 = type metadata accessor for SyncedData();
  type metadata accessor for SyncedLocationDisplayContext();
  OUTLINED_FUNCTION_0_69();
  sub_1C94950B4(v3, v4);
  OUTLINED_FUNCTION_13_28();
  *(a1 + *(v2 + 24)) = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_117();

  return v6(v5);
}

void SyncedData.init(locationDataModels:)()
{
  OUTLINED_FUNCTION_19();
  v1 = v0;
  v67 = v2;
  v3 = type metadata accessor for LocationDataModel();
  OUTLINED_FUNCTION_1();
  v84 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v60 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v68 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v60 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v66 = v60 - v21;
  v22 = sub_1C94947B4();
  v23 = sub_1C94948B8();
  v24 = sub_1C9494964();
  v25 = sub_1C9494A68();
  v72 = v19;
  v64 = v23;
  v65 = v22;
  v62 = v25;
  v63 = v24;
  sub_1C96A6CC4();
  v26 = *(v1 + 16);
  if (v26)
  {
    v60[1] = v1;
    v61 = v13;
    v27 = v1 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v69 = *(v84 + 72);
    v70 = v3;
    v84 = v26 - 1;
    v71 = v11;
    while (1)
    {
      v74 = v27;
      sub_1C9489A44(v27, v11, type metadata accessor for LocationDataModel);
      sub_1C9489A44(v11, v8, type metadata accessor for LocationDataModel);
      v29 = (v8 + v3[6]);
      v30 = v29[1];
      if (v30)
      {
        v31 = *v29;
        v82 = v30;
        v83 = v31;
      }

      else
      {
        v82 = 0xE000000000000000;
        v83 = 0;
      }

      v32 = *v8;
      v33 = v8[1];
      v34 = v8[3];
      v79 = v8[2];
      v80 = v32;
      v35 = v8[4];
      v36 = v8[5];
      v37 = (v8 + v3[8]);
      v38 = v37[1];
      v39 = *(v8 + v3[9] + 8);
      v40 = v3[11];
      v41 = *(v8 + v3[10] + 8);
      v42 = *(v8 + v40 + 8);
      OUTLINED_FUNCTION_11_25(v37, v28);
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      v43 = sub_1C96A6F04();
      v81 = type metadata accessor for LocationDataModel;
      sub_1C948E998();
      v95 = 1;
      *&v92[137] = *v94;
      *&v92[140] = *&v94[3];
      *v92 = v80;
      *&v92[8] = v33;
      *&v92[16] = v79;
      *&v92[24] = v34;
      *&v92[32] = v35;
      *&v92[40] = v36;
      *&v44 = v75;
      *(&v44 + 1) = v38;
      *&v45 = v77;
      *&v46 = v78;
      *(&v45 + 1) = v39;
      *&v92[48] = v83;
      *&v92[56] = v82;
      *&v92[64] = v44;
      *&v44 = v76;
      *(&v44 + 1) = v41;
      *(&v46 + 1) = v42;
      *&v92[96] = v44;
      *&v92[112] = v46;
      *&v92[80] = v45;
      *&v92[128] = 0;
      v92[136] = 1;
      *&v92[144] = v43;
      v11 = v71;
      v48 = *v71;
      v47 = *(v71 + 1);
      v50 = *(v71 + 2);
      v49 = *(v71 + 3);
      v51 = *(v71 + 4);
      v52 = *(v71 + 5);
      sub_1C96A53C4();
      sub_1C96A53C4();
      v53 = sub_1C96A6F04();
      v85 = v48;
      v86 = v47;
      v87 = v50;
      v88 = v49;
      v89 = v51;
      v90 = v52;
      v91 = v53;
      sub_1C96A6C94();

      memcpy(v93, v92, 0x98uLL);
      sub_1C95A038C(v93);
      sub_1C948E998();
      if (!v84)
      {
        break;
      }

      --v84;
      v3 = v70;
      v27 = v74 + v69;
    }

    v54 = v67;
    v13 = v61;
  }

  else
  {

    v54 = v67;
  }

  v55 = v66;
  v56 = v73;
  (*(v13 + 32))(v66, v72, v73);
  (*(v13 + 16))(v68, v55, v56);
  sub_1C96A6CC4();
  v57 = type metadata accessor for SyncedData();
  type metadata accessor for SyncedLocationDisplayContext();
  OUTLINED_FUNCTION_0_69();
  sub_1C94950B4(v58, v59);
  sub_1C96A6BE4();
  (*(v13 + 8))(v55, v56);
  *(v54 + *(v57 + 24)) = MEMORY[0x1E69E7CC8];
  (*(v13 + 40))(v54, v68, v56);
  OUTLINED_FUNCTION_20_0();
}

uint64_t SyncedData.init(displayContextByLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C94947B4();
  sub_1C94948B8();
  sub_1C9494964();
  sub_1C9494A68();
  OUTLINED_FUNCTION_19_19();
  v4 = type metadata accessor for SyncedData();
  v5 = *(v4 + 20);
  type metadata accessor for SyncedLocationDisplayContext();
  OUTLINED_FUNCTION_0_69();
  sub_1C94950B4(v6, v7);
  OUTLINED_FUNCTION_13_28();
  *(a2 + *(v4 + 24)) = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
  OUTLINED_FUNCTION_6();
  v9 = *(v8 + 40);

  return v9(a2 + v5, a1);
}

__n128 sub_1C95C6BE0@<Q0>(uint64_t a1@<X8>)
{
  static SyncedData.fields.getter(&v5);
  v2 = v7;
  result = v6;
  v4 = v8;
  *a1 = v5;
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_1C95C6C30(uint64_t a1)
{
  v2 = sub_1C94950B4(&qword_1EDB7A5D8, type metadata accessor for SyncedData);

  return MEMORY[0x1EEDF46B0](a1, v2);
}

uint64_t sub_1C95C6CCC(uint64_t a1)
{
  v2 = sub_1C94950B4(&qword_1EDB7A5A8, type metadata accessor for SyncedData);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1C95C6D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950B4(&qword_1EDB7A5D8, type metadata accessor for SyncedData);

  return MEMORY[0x1EEDF4698](a1, a2, v4);
}

uint64_t sub_1C95C6DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950B4(&qword_1EDB7A5D8, type metadata accessor for SyncedData);

  return MEMORY[0x1EEDF4640](a1, a2, v4);
}

uint64_t sub_1C95C6E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950B4(&qword_1EDB7A5D8, type metadata accessor for SyncedData);

  return MEMORY[0x1EEDF4668](a1, a2, v4);
}

uint64_t sub_1C95C6EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950B4(&qword_1EDB7A5D8, type metadata accessor for SyncedData);

  return MEMORY[0x1EEDF46A8](a1, a2, v4);
}

uint64_t sub_1C95C6F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94950B4(&qword_1EDB7A5D8, type metadata accessor for SyncedData);

  return MEMORY[0x1EEDF4670](a1, a2, a3, v6);
}

uint64_t sub_1C95C6FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950B4(&qword_1EDB7A5D8, type metadata accessor for SyncedData);

  return MEMORY[0x1EEDF46A0](a1, a2, v4);
}

uint64_t sub_1C95C7040(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950B4(&qword_1EDB7A5D8, type metadata accessor for SyncedData);

  return MEMORY[0x1EEDF4678](a1, a2, v4);
}

uint64_t sub_1C95C70BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950B4(&qword_1EDB7A5D8, type metadata accessor for SyncedData);

  return MEMORY[0x1EEDF4658](a1, a2, v4);
}

uint64_t sub_1C95C7140(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950B4(&qword_1EDB7A5D8, type metadata accessor for SyncedData);

  return MEMORY[0x1EEDF4650](a1, a2, v4);
}

uint64_t sub_1C95C71C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94950B4(&qword_1EDB7A5D8, type metadata accessor for SyncedData);

  return MEMORY[0x1EEDF4638](a1, a2, a3, v6);
}

uint64_t sub_1C95C7258(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950B4(&qword_1EDB7A5D8, type metadata accessor for SyncedData);

  return MEMORY[0x1EEDF4620](a1, a2, v4);
}

uint64_t sub_1C95C72D4(uint64_t a1)
{
  v2 = sub_1C94950B4(&qword_1EDB7A5D8, type metadata accessor for SyncedData);

  return MEMORY[0x1EEDF4648](a1, v2);
}

uint64_t sub_1C95C7340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950B4(&qword_1EDB7A5D8, type metadata accessor for SyncedData);

  return MEMORY[0x1EEDF4628](a1, a2, v4);
}

uint64_t sub_1C95C73BC()
{
  sub_1C94950B4(&qword_1EDB7A5D8, type metadata accessor for SyncedData);

  return sub_1C96A6924();
}

void sub_1C95C7440()
{
  sub_1C94950B4(&qword_1EDB7A5D8, type metadata accessor for SyncedData);

  JUMPOUT(0x1CCA8C2C0);
}

uint64_t sub_1C95C76C4(uint64_t a1)
{
  v2 = sub_1C94950B4(&qword_1EDB7A5D8, type metadata accessor for SyncedData);

  return MEMORY[0x1EEDF4630](a1, v2);
}

void static SyncedData.== infix(_:_:)()
{
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  v0 = sub_1C96A6C84();
  if (v0 != sub_1C96A6C84() || (type metadata accessor for SyncedData(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0), v1 = sub_1C96A6BA4(), v1 != sub_1C96A6BA4()))
  {
LABEL_12:
    OUTLINED_FUNCTION_101();
    return;
  }

  v2 = sub_1C96A6C84();
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v2;
    v4 = 0;
    while (v3 != v4)
    {
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_14;
      }

      sub_1C96A6CF4();
      memcpy(__dst, __src, sizeof(__dst));
      sub_1C96A6CF4();
      memcpy(v11, v12, sizeof(v11));
      static SyncedLocation.== infix(_:_:)(__dst, v11);
      v6 = v5;
      memcpy(v15, v11, sizeof(v15));
      sub_1C95A038C(v15);
      memcpy(v16, __dst, sizeof(v16));
      sub_1C95A038C(v16);
      ++v4;
      if ((v6 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    type metadata accessor for SyncedLocationDisplayContext();
    sub_1C94947B4();
    sub_1C94948B8();
    OUTLINED_FUNCTION_0_69();
    sub_1C94950B4(v7, v8);
    if (sub_1C96A6B94())
    {
      OUTLINED_FUNCTION_2_49();
      sub_1C94950B4(v9, v10);
      if ((sub_1C96A6B14() & 1) == 0)
      {
        sub_1C96A6B14();
      }
    }

    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
}

void SyncedData.hash(into:)()
{
  OUTLINED_FUNCTION_103();
  v35 = v0;
  v3 = v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6788);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6790);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
  OUTLINED_FUNCTION_1();
  v30 = v10;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v28 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6798);
  OUTLINED_FUNCTION_1();
  v33 = v13;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v14);
  v37 = &v28 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67A0);
  OUTLINED_FUNCTION_1();
  v29 = v21;
  OUTLINED_FUNCTION_71();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v28 - v24;
  (*(v18 + 16))(v1, v35, v16, v23);
  sub_1C9469CB4(&qword_1EC3A67A8, &qword_1EC3A60A8);
  sub_1C96A71F4();
  sub_1C9469CB4(&qword_1EC3A67B0, &qword_1EC3A67A0);
  while (1)
  {
    sub_1C96A7944();
    memcpy(v40, v41, sizeof(v40));
    if (sub_1C94EA54C(v40) == 1)
    {
      break;
    }

    memcpy(v39, v41, sizeof(v39));
    memcpy(v38, &v41[56], sizeof(v38));
    SyncedLocation.hash(into:)(v3);
    sub_1C9470AFC(v39, &qword_1EC3A67D0);
  }

  (*(v29 + 8))(v25, v20);
  v26 = type metadata accessor for SyncedData();
  (*(v30 + 16))(v31, v35 + *(v26 + 20), v32);
  sub_1C9469CB4(&qword_1EC3A67B8, &qword_1EC3A60B0);
  sub_1C96A71F4();
  sub_1C9469CB4(&qword_1EC3A67C0, &qword_1EC3A6798);
  v27 = v34;
  while (1)
  {
    sub_1C96A7944();
    if (__swift_getEnumTagSinglePayload(v9, 1, v27) == 1)
    {
      break;
    }

    sub_1C949E110(v9, v6, &qword_1EC3A6788);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158);
    sub_1C96A66E4();
    sub_1C96A7144();

    type metadata accessor for SyncedLocationDisplayContext();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8);
    sub_1C96A66E4();
    sub_1C96A7F04();
    sub_1C9470AFC(v6, &qword_1EC3A6788);
  }

  (*(v33 + 8))(v37, v36);
  OUTLINED_FUNCTION_101();
}

uint64_t SyncedData.hashValue.getter()
{
  sub_1C96A7EE4();
  SyncedData.hash(into:)();
  return sub_1C96A7F24();
}

uint64_t sub_1C95C7F48()
{
  sub_1C96A7EE4();
  SyncedData.hash(into:)();
  return sub_1C96A7F24();
}

Swift::Void __swiftcall SyncedData.removeDuplicates()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v7 - v5;
  sub_1C95C8040();
  (*(v3 + 40))(v0, v6, v1);
}

void sub_1C95C8040()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67A0);
  OUTLINED_FUNCTION_1();
  v37 = v4;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10();
  v6 = MEMORY[0x1E69E7CC8];
  v43 = MEMORY[0x1E69E7CC8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  OUTLINED_FUNCTION_6();
  (*(v8 + 16))(v3, v0, v7);
  v38 = v1;
  sub_1C96A6C44();
  while (1)
  {
    sub_1C96A6CB4();
    memcpy(v42, v41, sizeof(v42));
    if (sub_1C94EA54C(v42) == 1)
    {
      (*(v37 + 8))(v38, v39);

      OUTLINED_FUNCTION_20_0();
      return;
    }

    v9 = v42[0];
    v10 = v42[1];
    v11 = v42[2];
    v12 = v42[3];
    v13 = v42[4];
    v14 = v42[5];
    v15 = v42[6];
    sub_1C95A038C(&v42[7]);
    v16 = OUTLINED_FUNCTION_16_25();
    sub_1C95C83D4(v16, &v43);
    if (v17)
    {
      OUTLINED_FUNCTION_16_25();
      sub_1C96A6C34();
    }

    if (v6[2] && (v18 = sub_1C9476F90(v11, v12), (v19 & 1) != 0))
    {
      v20 = *(v6[7] + 8 * v18);
      sub_1C96A53C4();
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_12_27();
      sub_1C94FB7A8();
      v20 = v35;
    }

    v22 = *(v20 + 16);
    v21 = *(v20 + 24);
    if (v22 >= v21 >> 1)
    {
      OUTLINED_FUNCTION_9_29(v21);
      sub_1C94FB7A8();
      v20 = v36;
    }

    *(v20 + 16) = v22 + 1;
    v23 = (v20 + 56 * v22);
    v23[4] = v9;
    v23[5] = v10;
    v23[6] = v11;
    v23[7] = v12;
    v23[8] = v13;
    v23[9] = v14;
    v23[10] = v15;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v24 = v43;
    v40 = v43;
    v25 = sub_1C9476F90(v11, v12);
    if (__OFADD__(*(v24 + 16), (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6820);
    if (sub_1C96A7B84())
    {
      v29 = sub_1C9476F90(v11, v12);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_25;
      }

      v27 = v29;
    }

    v6 = v40;
    if (v28)
    {
      *(v40[7] + 8 * v27) = v20;
    }

    else
    {
      v40[(v27 >> 6) + 8] |= 1 << v27;
      v31 = (v40[6] + 16 * v27);
      *v31 = v11;
      v31[1] = v12;
      *(v40[7] + 8 * v27) = v20;
      v32 = v40[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_24;
      }

      v40[2] = v34;
      sub_1C96A53C4();
    }

    v43 = v40;
    swift_endAccess();
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_1C96A7E44();
  __break(1u);
}

void sub_1C95C83D4(double *a1, uint64_t *a2)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = a1[4];
  v6 = a1[5];
  swift_beginAccess();
  v7 = *a2;
  if (*(v7 + 16) && (v8 = sub_1C9476F90(v3, v4), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = v10 + 80;
    swift_endAccess();
    v12 = *(v10 + 16);
    sub_1C96A53C4();
    v13 = -1;
    while (1)
    {
      if (v13 - v12 == -1)
      {
LABEL_7:

        return;
      }

      if (++v13 >= *(v10 + 16))
      {
        break;
      }

      v15 = *(v11 - 16);
      v14 = *(v11 - 8);
      v16 = objc_allocWithZone(MEMORY[0x1E6985C40]);
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      v17 = [v16 initWithLatitude:v5 longitude:v6];
      v18 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v15 longitude:v14];

      [v17 distanceFromLocation_];
      v20 = v19;

      v11 += 56;
      if (v20 < 30000.0)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t SyncedData.removingDuplicates()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_40();
  v7 = OUTLINED_FUNCTION_117();
  sub_1C9489A44(v7, v8, v9);
  sub_1C95C8040();
  return (*(v5 + 40))(a1, v1, v3);
}

uint64_t SyncedData.cleanUpOrphanDisplayContext()()
{
  OUTLINED_FUNCTION_4_40();
  sub_1C9489A44(v0, v2, v1);
  v3 = sub_1C95C5198();
  v4 = sub_1C955FFD8(v3);
  type metadata accessor for SyncedData();
  sub_1C95C5414();
  v6 = sub_1C955FFD8(v5);
  sub_1C95C870C(v4, v6);

  v7 = OUTLINED_FUNCTION_117();
  sub_1C95C4FBC(v7, v8);
}

uint64_t sub_1C95C870C(unint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_1C95C8FDC(a1);
    return a2;
  }

  else
  {

    return sub_1C95C910C(a1, a2);
  }
}

uint64_t SyncedData.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C96AEF50;
  strcpy((inited + 32), "savedLocations");
  *(inited + 47) = -18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  v4 = sub_1C96A6C54();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5FC0);
  *(inited + 48) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001C96D32D0;
  v6 = *(type metadata accessor for SyncedData() + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
  *(inited + 120) = v7;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 96));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0Tm, v1 + v6, v7);
  sub_1C96A6F04();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67D8);
  a1[4] = sub_1C9469CB4(&qword_1EC3A67E0, &qword_1EC3A67D8);
  __swift_allocate_boxed_opaque_existential_0Tm(a1);
  return sub_1C96A53B4();
}

uint64_t sub_1C95C896C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](8236, 0xE200000000000000);
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](v3, v4);

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t sub_1C95C8A00()
{
  sub_1C94950B4(&qword_1EC3A6808, type metadata accessor for SyncedData);

  return sub_1C96A53A4();
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_1();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

void sub_1C95C8D8C()
{
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A40);
  v3 = *v0;
  v4 = sub_1C96A7A54();
  if (*(v3 + 16))
  {
    v5 = OUTLINED_FUNCTION_10_28();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v1, 8 * v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_8_29();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_15:
        v19 = v16 | (v10 << 6);
        v20 = (*(v3 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = (*(v4 + 48) + 16 * v19);
        *v22 = *v20;
        v22[1] = v21;
        sub_1C96A53C4();
      }

      while (v13);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_17;
      }

      v18 = *(v1 + v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v4;
  }
}

void sub_1C95C8EA0()
{
  OUTLINED_FUNCTION_103();
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59E8);
  v3 = *v0;
  v4 = sub_1C96A7A54();
  if (*(v3 + 16))
  {
    v5 = OUTLINED_FUNCTION_10_28();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v1, 8 * v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_8_29();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_15:
        v19 = 56 * (v16 | (v10 << 6));
        v20 = *(v3 + 48) + v19;
        v21 = *(v20 + 8);
        v22 = *(v20 + 16);
        v23 = *(v20 + 24);
        v24 = *(v20 + 48);
        v25 = *(v4 + 48) + v19;
        v26 = *(v20 + 32);
        *v25 = *v20;
        *(v25 + 8) = v21;
        *(v25 + 16) = v22;
        *(v25 + 24) = v23;
        *(v25 + 32) = v26;
        *(v25 + 48) = v24;
        sub_1C96A53C4();
        sub_1C96A53C4();
        sub_1C96A53C4();
      }

      while (v13);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_17;
      }

      v18 = *(v1 + v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v4;
    OUTLINED_FUNCTION_101();
  }
}

uint64_t sub_1C95C8FDC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_1C96A53C4();
    for (i = 0; v6; result = sub_1C95CBA44(v15[0], v15[1]))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(v2 + 48) + 56 * (v10 | (v9 << 6));
      v13 = *(v11 + 16);
      v12 = *(v11 + 32);
      v14 = *v11;
      v17 = *(v11 + 48);
      v16[1] = v13;
      v16[2] = v12;
      v16[0] = v14;
      sub_1C9563008(v16, v15);
      sub_1C95CA0EC(v16, v15);
      sub_1C9563DEC(v16);
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C95C910C(unint64_t a1, void *a2)
{
  v157 = *MEMORY[0x1E69E9840];
  v125 = 0;
  v149 = sub_1C96A66B4();
  v5 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v135 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v134 = (&v124 - v10);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  if (!a2[2])
  {

    return MEMORY[0x1E69E7CD0];
  }

  v140 = &v124 - v13;
  v142 = v14;
  v16 = (a1 + 56);
  v15 = *(a1 + 56);
  v17 = -1 << *(a1 + 32);
  v129 = ~v17;
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v15;
  v20 = (63 - v17) >> 6;
  v143 = v5 + 16;
  v147 = (v5 + 32);
  v145 = (v5 + 8);
  v137 = a2 + 7;
  sub_1C96A53C4();
  v21 = 0;
  v22 = 56;
  v144 = v5;
  v126 = v20;
  v139 = a2;
  v128 = a1;
  v127 = (a1 + 56);
  if (v19)
  {
LABEL_11:
    while (1)
    {
      v25 = *(a1 + 48) + 56 * (__clz(__rbit64(v19)) | (v21 << 6));
      v27 = *v25;
      v26 = *(v25 + 8);
      v29 = *(v25 + 16);
      v28 = *(v25 + 24);
      v30 = *(v25 + 32);
      v31 = *(v25 + 40);
      v2 = *(v25 + 48);
      v152 = a1;
      v153 = v16;
      v154 = v129;
      v155 = v21;
      v131 = v21;
      v130 = (v19 - 1) & v19;
      v156 = v130;
      sub_1C96A7EE4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      v136 = v27;
      v138 = v26;
      sub_1C96A7144();
      v132 = v29;
      v133 = v28;
      sub_1C96A7144();
      v32 = v30 == 0.0 ? 0.0 : v30;
      MEMORY[0x1CCA8D8A0](*&v32);
      v33 = v31 == 0.0 ? 0.0 : v31;
      MEMORY[0x1CCA8D8A0](*&v33);
      v34 = v2 + 64;
      v35 = 1 << *(v2 + 32);
      v36 = v35 < 64 ? ~(-1 << v35) : -1;
      v22 = v36 & *(v2 + 64);
      v37 = (v35 + 63) >> 6;
      v141 = v2;
      sub_1C96A53C4();
      v38 = 0;
      v5 = 0;
      v20 = v140;
      if (!v22)
      {
        break;
      }

      while (1)
      {
        v146 = v38;
        v39 = v5;
LABEL_27:
        v41 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v42 = v41 | (v39 << 6);
        v43 = *(*(v141 + 48) + 8 * v42);
        v44 = v144;
        v45 = v148;
        v46 = v149;
        (*(v144 + 16))(v148, *(v141 + 56) + *(v144 + 72) * v42, v149);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
        v48 = *(v47 + 48);
        v49 = v142;
        *v142 = v43;
        v40 = v49;
        (*(v44 + 32))(&v49[v48], v45, v46);
        __swift_storeEnumTagSinglePayload(v40, 0, 1, v47);
        v20 = v140;
        v38 = v146;
LABEL_28:
        sub_1C949E110(v40, v20, &qword_1EC3A59E0);
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
        if (__swift_getEnumTagSinglePayload(v20, 1, v2) == 1)
        {
          break;
        }

        v50 = *v20;
        v51 = v20 + *(v2 + 48);
        v52 = v148;
        v2 = v149;
        (*v147)(v148, v51, v149);
        memcpy(__dst, __src, sizeof(__dst));
        MEMORY[0x1CCA8D880](v50);
        sub_1C94950B4(&qword_1EC3A59F8, MEMORY[0x1E6995030]);
        sub_1C96A6F34();
        (*v145)(v52, v2);
        v38 ^= sub_1C96A7F24();
        if (!v22)
        {
          goto LABEL_22;
        }
      }

      MEMORY[0x1CCA8D880](v38);
      v54 = sub_1C96A7F24();
      a2 = v139;
      v55 = -1 << *(v139 + 32);
      a1 = v54 & ~v55;
      v5 = a1 >> 6;
      v22 = 1 << a1;
      if (((1 << a1) & v137[a1 >> 6]) != 0)
      {
        v146 = ~v55;
        do
        {
          v56 = a2[6] + 56 * a1;
          v58 = *(v56 + 16);
          v57 = *(v56 + 24);
          v60 = *(v56 + 32);
          v59 = *(v56 + 40);
          v61 = *v56 == v136 && *(v56 + 8) == v138;
          if (v61 || (sub_1C96A7DE4() & 1) != 0)
          {
            v62 = v58 == v132 && v57 == v133;
            if (v62 || (sub_1C96A7DE4()) && v60 == v30 && v59 == v31)
            {
              sub_1C96A53C4();
              sub_1C96A53C4();
              v64 = sub_1C96A53C4();
              sub_1C94D6458(v64, v141);
              v66 = v65;

              if (v66)
              {

                v20 = v139;
                v68 = *(v139 + 32);
                v132 = ((1 << v68) + 63) >> 6;
                v16 = (8 * v132);
                if ((v68 & 0x3Fu) <= 0xD)
                {
                  goto LABEL_56;
                }

                goto LABEL_116;
              }
            }
          }

          a1 = (a1 + 1) & v146;
          v5 = a1 >> 6;
          v22 = 1 << a1;
          a2 = v139;
        }

        while ((v137[a1 >> 6] & (1 << a1)) != 0);
      }

      v22 = 56;

      a1 = v128;
      v16 = v127;
      v20 = v126;
      v21 = v131;
      v19 = v130;
      if (!v130)
      {
        goto LABEL_6;
      }
    }

LABEL_22:
    v40 = v142;
    a1 = &qword_1EC3A59F0;
    v16 = &unk_1C96B18B0;
    while (1)
    {
      v39 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v39 >= v37)
      {
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v53);
        v22 = 0;
        goto LABEL_28;
      }

      v22 = *(v34 + 8 * v39);
      ++v5;
      if (v22)
      {
        v146 = v38;
        v5 = v39;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_113:
    __break(1u);
  }

  else
  {
LABEL_6:
    v23 = v21;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v20)
      {
        goto LABEL_110;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v21 = v24;
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_116:
    sub_1C96A3D04();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_56:
    v124 = &v124;
    MEMORY[0x1EEE9AC00](v67);
    a1 = &v124 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(a1, v137, v16);
    v69 = *(a1 + 8 * v5) & ~v22;
    v136 = a1;
    *(a1 + 8 * v5) = v69;
    v133 = *(v20 + 16) - 1;
LABEL_57:
    v70 = v128;
    v71 = v127;
    v72 = v126;
    v73 = v131;
    v74 = v130;
    while (v74)
    {
LABEL_63:
      v76 = *(v70 + 48) + 56 * (__clz(__rbit64(v74)) | (v73 << 6));
      v77 = *v76;
      v16 = *(v76 + 8);
      v79 = *(v76 + 16);
      v78 = *(v76 + 24);
      v80 = *(v76 + 32);
      v81 = *(v76 + 40);
      v82 = *(v76 + 48);
      v152 = v70;
      v153 = v71;
      v154 = v129;
      v155 = v73;
      v131 = v73;
      v130 = (v74 - 1) & v74;
      v156 = v130;
      sub_1C96A7EE4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      v138 = v77;
      v142 = v16;
      sub_1C96A7144();
      v140 = v79;
      v141 = v78;
      sub_1C96A7144();
      if (v80 == 0.0)
      {
        v83 = 0.0;
      }

      else
      {
        v83 = v80;
      }

      MEMORY[0x1CCA8D8A0](*&v83);
      if (v81 == 0.0)
      {
        v84 = 0.0;
      }

      else
      {
        v84 = v81;
      }

      MEMORY[0x1CCA8D8A0](*&v84);
      v85 = v82 + 64;
      v86 = 1 << *(v82 + 32);
      if (v86 < 64)
      {
        v87 = ~(-1 << v86);
      }

      else
      {
        v87 = -1;
      }

      v88 = v87 & *(v82 + 64);
      v5 = (v86 + 63) >> 6;
      v146 = v82;
      sub_1C96A53C4();
      v20 = 0;
      v22 = 0;
      if (!v88)
      {
LABEL_74:
        a1 = v135;
        while (1)
        {
          v89 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_113;
          }

          if (v89 >= v5)
          {
            v88 = 0;
            v98 = 1;
            goto LABEL_80;
          }

          v88 = *(v85 + 8 * v89);
          ++v22;
          if (v88)
          {
            v22 = v89;
            goto LABEL_79;
          }
        }
      }

      while (1)
      {
        v89 = v22;
LABEL_79:
        v90 = __clz(__rbit64(v88));
        v88 &= v88 - 1;
        v91 = v90 | (v89 << 6);
        v92 = *(*(v146 + 48) + 8 * v91);
        v93 = v144;
        v94 = v148;
        v95 = v149;
        (*(v144 + 16))(v148, *(v146 + 56) + *(v144 + 72) * v91, v149);
        v96 = *(v2 + 48);
        v97 = v135;
        *v135 = v92;
        a1 = v97;
        (*(v93 + 32))(&v97[v96], v94, v95);
        v98 = 0;
LABEL_80:
        __swift_storeEnumTagSinglePayload(a1, v98, 1, v2);
        v16 = v134;
        sub_1C949E110(a1, v134, &qword_1EC3A59E0);
        if (__swift_getEnumTagSinglePayload(v16, 1, v2) == 1)
        {
          break;
        }

        v99 = *v16;
        v100 = v16 + *(v2 + 48);
        v16 = v148;
        v101 = v149;
        (*v147)(v148, v100, v149);
        memcpy(__dst, __src, sizeof(__dst));
        MEMORY[0x1CCA8D880](v99);
        sub_1C94950B4(&qword_1EC3A59F8, MEMORY[0x1E6995030]);
        sub_1C96A6F34();
        (*v145)(v16, v101);
        v20 ^= sub_1C96A7F24();
        if (!v88)
        {
          goto LABEL_74;
        }
      }

      a1 = __src;
      MEMORY[0x1CCA8D880](v20);
      v102 = sub_1C96A7F24();
      v103 = -1 << *(v139 + 32);
      v104 = v102 & ~v103;
      v5 = v104 >> 6;
      v22 = 1 << v104;
      if (((1 << v104) & v137[v104 >> 6]) == 0)
      {
LABEL_108:

        v20 = v139;
        goto LABEL_57;
      }

      v105 = ~v103;
      v16 = v138;
      while (1)
      {
        v106 = v139[6] + 56 * v104;
        a1 = *(v106 + 8);
        v108 = *(v106 + 16);
        v107 = *(v106 + 24);
        v110 = *(v106 + 32);
        v109 = *(v106 + 40);
        v111 = *v106 == v16 && a1 == v142;
        if (v111 || (sub_1C96A7DE4() & 1) != 0)
        {
          v112 = v108 == v140 && v107 == v141;
          if (v112 || (sub_1C96A7DE4()) && v110 == v80 && v109 == v81)
          {
            sub_1C96A53C4();
            sub_1C96A53C4();
            v114 = sub_1C96A53C4();
            sub_1C94D6458(v114, v146);
            v116 = v115;

            if (v116)
            {
              break;
            }
          }
        }

        v104 = (v104 + 1) & v105;
        v5 = v104 >> 6;
        v22 = 1 << v104;
        if ((v137[v104 >> 6] & (1 << v104)) == 0)
        {
          goto LABEL_108;
        }
      }

      v117 = v136[v5];
      v136[v5] = v117 & ~v22;
      v20 = v139;
      v70 = v128;
      v71 = v127;
      v72 = v126;
      v73 = v131;
      v74 = v130;
      if ((v117 & v22) != 0)
      {
        v118 = v133 - 1;
        if (__OFSUB__(v133, 1))
        {
          __break(1u);
        }

        --v133;
        if (!v118)
        {

          a2 = MEMORY[0x1E69E7CD0];
          goto LABEL_110;
        }
      }
    }

    while (1)
    {
      v75 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v75 >= v72)
      {
        v152 = v70;
        v153 = v71;
        v154 = v129;
        v155 = v73;
        v156 = 0;
        a2 = sub_1C95CABC8(v136, v132, v133, v20);
        goto LABEL_110;
      }

      v74 = v71[v75];
      ++v73;
      if (v74)
      {
        v73 = v75;
        goto LABEL_63;
      }
    }
  }

  v120 = swift_slowAlloc();
  v121 = v20;
  v122 = v125;
  v123 = sub_1C95CAB40(v120, v132, v137, v132, v121, a1, &v152);
  if (!v122)
  {
    a2 = v123;

    MEMORY[0x1CCA8E3D0](v120, -1, -1);
LABEL_110:
    sub_1C95A4160();
    return a2;
  }

  result = MEMORY[0x1CCA8E3D0](v120, -1, -1);
  __break(1u);
  return result;
}

void sub_1C95CA0EC(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = a1[1];
  v39 = *a1;
  v40 = v5;
  v41 = a1[2];
  v42 = *(a1 + 6);
  sub_1C96A7EE4();
  SyncedLocationKey.hash(into:)(v38);
  v6 = sub_1C96A7F24();
  v36 = v4 + 56;
  v37 = v4;
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = *(a1 + 4);
    v11 = *(a1 + 5);
    v12 = *a1;
    v13 = *(a1 + 1);
    v14 = *(a1 + 2);
    v15 = *(a1 + 3);
    v35 = *(a1 + 6);
    while (1)
    {
      v16 = *(v37 + 48) + 56 * v8;
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v20 = *(v16 + 32);
      v19 = *(v16 + 40);
      v21 = *v16 == v12 && *(v16 + 8) == v13;
      if (v21 || (sub_1C96A7DE4() & 1) != 0)
      {
        v22 = v17 == v14 && v18 == v15;
        if (v22 || (sub_1C96A7DE4()) && v20 == v10 && v19 == v11)
        {
          sub_1C96A53C4();
          sub_1C96A53C4();
          v24 = sub_1C96A53C4();
          sub_1C94D6458(v24, v35);
          v26 = v25;

          if (v26)
          {
            break;
          }
        }
      }

      v8 = (v8 + 1) & v9;
      if (((*(v36 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v33;
    v38[0] = *v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C95C8EA0();
      v28 = v38[0];
    }

    v29 = *(v28 + 48) + 56 * v8;
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);
    v32 = *(v29 + 48);
    *a2 = *v29;
    *(a2 + 16) = v30;
    *(a2 + 24) = v31;
    *(a2 + 32) = *(v29 + 32);
    *(a2 + 48) = v32;
    sub_1C95CB370(v8);
    *v33 = v38[0];
  }

  else
  {
LABEL_20:
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }
}

void sub_1C95CA324(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v76 = a2;
  v95 = sub_1C96A66B4();
  v9 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v92 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v75 - v14;
  v16 = *(a3 + 16);
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a1 + v17) & ((-1 << a4) - 1);
  v78 = a1;
  *(a1 + v17) = v18;
  v19 = v16 - 1;
  v86 = v9 + 16;
  v93 = (v9 + 32);
  v88 = v9;
  v90 = (v9 + 8);
  v84 = a3;
  v83 = a3 + 56;
  v87 = &v75 - v14;
  v79 = a5;
  while (2)
  {
    v77 = v19;
    do
    {
      while (2)
      {
        v20 = a5[3];
        v21 = a5[4];
        if (!v21)
        {
          while (1)
          {
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v22 >= ((a5[2] + 64) >> 6))
            {
              a5[3] = v20;
              a5[4] = 0;
              v74 = v84;
              sub_1C96A3D04();
              sub_1C95CABC8(v78, v76, v77, v74);
              return;
            }

            v21 = *(a5[1] + 8 * v22);
            ++v20;
            if (v21)
            {
              goto LABEL_8;
            }
          }

LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          return;
        }

        v22 = a5[3];
LABEL_8:
        v23 = *(*a5 + 48) + 56 * (__clz(__rbit64(v21)) | (v22 << 6));
        v25 = *v23;
        v24 = *(v23 + 8);
        v27 = *(v23 + 16);
        v26 = *(v23 + 24);
        v28 = *(v23 + 32);
        v29 = *(v23 + 40);
        v30 = *(v23 + 48);
        a5[3] = v22;
        a5[4] = (v21 - 1) & v21;
        sub_1C96A7EE4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        v85 = v25;
        v80 = v24;
        sub_1C96A7144();
        v81 = v27;
        v82 = v26;
        sub_1C96A7144();
        if (v28 == 0.0)
        {
          v31 = 0.0;
        }

        else
        {
          v31 = v28;
        }

        MEMORY[0x1CCA8D8A0](*&v31);
        if (v29 == 0.0)
        {
          v32 = 0.0;
        }

        else
        {
          v32 = v29;
        }

        MEMORY[0x1CCA8D8A0](*&v32);
        v33 = v30 + 64;
        v34 = 1 << *(v30 + 32);
        if (v34 < 64)
        {
          v35 = ~(-1 << v34);
        }

        else
        {
          v35 = -1;
        }

        v36 = v35 & *(v30 + 64);
        v37 = (v34 + 63) >> 6;
        v91 = v30;
        sub_1C96A53C4();
        v38 = 0;
        v39 = 0;
        v89 = v33;
        while (1)
        {
          v96 = v38;
          if (!v36)
          {
            v41 = v92;
            while (1)
            {
              v40 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                break;
              }

              if (v40 >= v37)
              {
                v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
                __swift_storeEnumTagSinglePayload(v41, 1, 1, v55);
                v36 = 0;
                goto LABEL_26;
              }

              v36 = *(v33 + 8 * v40);
              ++v39;
              if (v36)
              {
                v39 = v40;
                goto LABEL_25;
              }
            }

            __break(1u);
            goto LABEL_55;
          }

          v40 = v39;
LABEL_25:
          v42 = __clz(__rbit64(v36));
          v36 &= v36 - 1;
          v43 = v42 | (v40 << 6);
          v44 = *(*(v91 + 48) + 8 * v43);
          v45 = v88;
          v46 = v94;
          v47 = v95;
          (*(v88 + 16))(v94, *(v91 + 56) + *(v88 + 72) * v43, v95);
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
          v49 = *(v48 + 48);
          v50 = v92;
          *v92 = v44;
          v41 = v50;
          (*(v45 + 32))(&v50[v49], v46, v47);
          __swift_storeEnumTagSinglePayload(v41, 0, 1, v48);
          v15 = v87;
          v33 = v89;
LABEL_26:
          sub_1C949E110(v41, v15, &qword_1EC3A59E0);
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
          if (__swift_getEnumTagSinglePayload(v15, 1, v51) == 1)
          {
            break;
          }

          v52 = *v15;
          v53 = v94;
          v54 = v95;
          (*v93)(v94, &v15[*(v51 + 48)], v95);
          memcpy(__dst, __src, sizeof(__dst));
          MEMORY[0x1CCA8D880](v52);
          sub_1C94950B4(&qword_1EC3A59F8, MEMORY[0x1E6995030]);
          sub_1C96A6F34();
          (*v90)(v53, v54);
          v38 = sub_1C96A7F24() ^ v96;
        }

        MEMORY[0x1CCA8D880](v96);
        v56 = sub_1C96A7F24();
        v57 = -1 << *(v84 + 32);
        v58 = v56 & ~v57;
        v59 = v58 >> 6;
        v60 = 1 << v58;
        if (((1 << v58) & *(v83 + 8 * (v58 >> 6))) == 0)
        {
LABEL_48:

          a5 = v79;
          continue;
        }

        break;
      }

      v96 = ~v57;
      v61 = v80;
      while (1)
      {
        v62 = *(v84 + 48) + 56 * v58;
        v64 = *(v62 + 16);
        v63 = *(v62 + 24);
        v66 = *(v62 + 32);
        v65 = *(v62 + 40);
        v67 = *v62 == v85 && *(v62 + 8) == v61;
        if (v67 || (sub_1C96A7DE4() & 1) != 0)
        {
          v68 = v64 == v81 && v63 == v82;
          if (v68 || (sub_1C96A7DE4()) && v66 == v28 && v65 == v29)
          {
            sub_1C96A53C4();
            sub_1C96A53C4();
            v70 = sub_1C96A53C4();
            sub_1C94D6458(v70, v91);
            v72 = v71;

            if (v72)
            {
              break;
            }
          }
        }

        v58 = (v58 + 1) & v96;
        v59 = v58 >> 6;
        v60 = 1 << v58;
        if ((*(v83 + 8 * (v58 >> 6)) & (1 << v58)) == 0)
        {
          goto LABEL_48;
        }
      }

      v73 = v78[v59];
      v78[v59] = v73 & ~v60;
      a5 = v79;
    }

    while ((v73 & v60) == 0);
    v19 = v77 - 1;
    if (__OFSUB__(v77, 1))
    {
      goto LABEL_56;
    }

    if (v77 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1C95CAB40(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C95CA324(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C95CABC8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v90 = sub_1C96A66B4();
  v83 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v86 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v68 - v12);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59E8);
  result = sub_1C96A7A74();
  v14 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v81 = v83 + 16;
  v88 = (v83 + 32);
  v85 = (v83 + 8);
  v72 = a2;
  v71 = a1;
  v82 = v13;
  v73 = a4;
  v70 = result;
  v69 = result + 56;
  while (2)
  {
    if (v16)
    {
      v80 = a3;
      v74 = (v16 - 1) & v16;
      v75 = v17;
      v18 = __clz(__rbit64(v16)) | (v17 << 6);
LABEL_16:
      v22 = *(a4 + 48) + 56 * v18;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      v27 = *(v22 + 32);
      v28 = *(v22 + 40);
      v29 = *(v22 + 48);
      sub_1C96A7EE4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      v79 = v23;
      v78 = v24;
      sub_1C96A7144();
      v77 = v25;
      v76 = v26;
      sub_1C96A7144();
      if (v27 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v27;
      }

      MEMORY[0x1CCA8D8A0](*&v30);
      if (v28 == 0.0)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = v28;
      }

      MEMORY[0x1CCA8D8A0](*&v31);
      v32 = v29 + 64;
      v33 = 1 << *(v29 + 32);
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      else
      {
        v34 = -1;
      }

      v35 = v34 & *(v29 + 64);
      v36 = (v33 + 63) >> 6;
      v84 = v29;
      result = sub_1C96A53C4();
      v37 = 0;
      v38 = 0;
      while (1)
      {
        if (!v35)
        {
          v40 = v86;
          while (1)
          {
            v39 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              break;
            }

            if (v39 >= v36)
            {
              v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
              __swift_storeEnumTagSinglePayload(v40, 1, 1, v54);
              v35 = 0;
              goto LABEL_34;
            }

            v35 = *(v32 + 8 * v39);
            ++v38;
            if (v35)
            {
              v87 = v37;
              v38 = v39;
              goto LABEL_33;
            }
          }

          __break(1u);
          goto LABEL_51;
        }

        v87 = v37;
        v39 = v38;
LABEL_33:
        v41 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v42 = v41 | (v39 << 6);
        v43 = *(*(v84 + 48) + 8 * v42);
        v44 = v83;
        v45 = v89;
        v46 = v90;
        (*(v83 + 16))(v89, *(v84 + 56) + *(v83 + 72) * v42, v90);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
        v48 = *(v47 + 48);
        v49 = v86;
        *v86 = v43;
        v40 = v49;
        (*(v44 + 32))(&v49[v48], v45, v46);
        __swift_storeEnumTagSinglePayload(v40, 0, 1, v47);
        v13 = v82;
        v37 = v87;
LABEL_34:
        sub_1C949E110(v40, v13, &qword_1EC3A59E0);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
        if (__swift_getEnumTagSinglePayload(v13, 1, v50) == 1)
        {
          break;
        }

        v51 = *v13;
        v52 = v89;
        v53 = v90;
        (*v88)(v89, v13 + *(v50 + 48), v90);
        memcpy(__dst, __src, sizeof(__dst));
        MEMORY[0x1CCA8D880](v51);
        sub_1C94950B4(&qword_1EC3A59F8, MEMORY[0x1E6995030]);
        sub_1C96A6F34();
        (*v85)(v52, v53);
        result = sub_1C96A7F24();
        v37 ^= result;
      }

      MEMORY[0x1CCA8D880](v37);
      result = sub_1C96A7F24();
      v14 = v70;
      v55 = -1 << *(v70 + 32);
      v56 = result & ~v55;
      v57 = v56 >> 6;
      if (((-1 << v56) & ~*(v69 + 8 * (v56 >> 6))) == 0)
      {
        v60 = 0;
        v61 = (63 - v55) >> 6;
        a4 = v73;
        v59 = v80;
        a2 = v72;
        a1 = v71;
        while (++v57 != v61 || (v60 & 1) == 0)
        {
          v62 = v57 == v61;
          if (v57 == v61)
          {
            v57 = 0;
          }

          v60 |= v62;
          v63 = *(v69 + 8 * v57);
          if (v63 != -1)
          {
            v58 = __clz(__rbit64(~v63)) + (v57 << 6);
            goto LABEL_46;
          }
        }

        goto LABEL_52;
      }

      v58 = __clz(__rbit64((-1 << v56) & ~*(v69 + 8 * (v56 >> 6)))) | v56 & 0x7FFFFFFFFFFFFFC0;
      a4 = v73;
      v59 = v80;
      a2 = v72;
      a1 = v71;
LABEL_46:
      *(v69 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
      v64 = *(v14 + 48) + 56 * v58;
      v65 = v78;
      *v64 = v79;
      *(v64 + 8) = v65;
      v66 = v76;
      *(v64 + 16) = v77;
      *(v64 + 24) = v66;
      *(v64 + 32) = v27;
      *(v64 + 40) = v28;
      *(v64 + 48) = v84;
      ++*(v14 + 16);
      v67 = __OFSUB__(v59, 1);
      a3 = v59 - 1;
      if (v67)
      {
        goto LABEL_53;
      }

      v17 = v75;
      v16 = v74;
      if (a3)
      {
        continue;
      }

LABEL_48:

      return v14;
    }

    break;
  }

  v19 = v17;
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      goto LABEL_48;
    }

    v21 = a1[v20];
    ++v19;
    if (v21)
    {
      v80 = a3;
      v74 = (v21 - 1) & v21;
      v75 = v20;
      v18 = __clz(__rbit64(v21)) | (v20 << 6);
      goto LABEL_16;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

void sub_1C95CB370(unint64_t a1)
{
  v80 = sub_1C96A66B4();
  v73 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v76 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v62 - v7);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    sub_1C96A3D04();
    v14 = sub_1C96A7A04();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v71 = v73 + 16;
      v78 = (v73 + 32);
      v75 = (v73 + 8);
      v72 = v8;
      v66 = v9;
      v65 = v10;
      v64 = v13;
      v63 = (v14 + 1) & v13;
      while (1)
      {
        v70 = a1;
        v15 = *(v9 + 48);
        v69 = v12;
        v16 = v15 + 56 * v12;
        v17 = *(v16 + 8);
        v18 = *(v16 + 24);
        v19 = *(v16 + 32);
        v20 = *(v16 + 40);
        v21 = *(v16 + 48);
        sub_1C96A7EE4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        v68 = v17;
        sub_1C96A7144();
        v67 = v18;
        sub_1C96A7144();
        v22 = v19 == 0.0 ? 0.0 : v19;
        MEMORY[0x1CCA8D8A0](*&v22);
        v23 = v20 == 0.0 ? 0.0 : v20;
        MEMORY[0x1CCA8D8A0](*&v23);
        v24 = v21 + 64;
        v25 = 1 << *(v21 + 32);
        v26 = v25 < 64 ? ~(-1 << v25) : -1;
        v27 = v26 & *(v21 + 64);
        v28 = (v25 + 63) >> 6;
        v74 = v21;
        sub_1C96A53C4();
        v29 = 0;
        v30 = 0;
        if (!v27)
        {
          break;
        }

        while (1)
        {
          v77 = v29;
          v31 = v30;
LABEL_20:
          v33 = __clz(__rbit64(v27));
          v27 &= v27 - 1;
          v34 = v33 | (v31 << 6);
          v35 = *(*(v74 + 48) + 8 * v34);
          v36 = v73;
          v37 = v79;
          v38 = v80;
          (*(v73 + 16))(v79, *(v74 + 56) + *(v73 + 72) * v34, v80);
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
          v40 = *(v39 + 48);
          v41 = v76;
          *v76 = v35;
          v32 = v41;
          (*(v36 + 32))(&v41[v40], v37, v38);
          __swift_storeEnumTagSinglePayload(v32, 0, 1, v39);
          v8 = v72;
          v29 = v77;
LABEL_21:
          sub_1C949E110(v32, v8, &qword_1EC3A59E0);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
          if (__swift_getEnumTagSinglePayload(v8, 1, v42) == 1)
          {
            break;
          }

          v43 = *v8;
          v44 = v79;
          v45 = v80;
          (*v78)(v79, v8 + *(v42 + 48), v80);
          memcpy(__dst, __src, sizeof(__dst));
          MEMORY[0x1CCA8D880](v43);
          sub_1C94950B4(&qword_1EC3A59F8, MEMORY[0x1E6995030]);
          sub_1C96A6F34();
          (*v75)(v44, v45);
          v29 ^= sub_1C96A7F24();
          if (!v27)
          {
            goto LABEL_15;
          }
        }

        MEMORY[0x1CCA8D880](v29);
        v47 = sub_1C96A7F24();

        v48 = v64;
        v49 = v47 & v64;
        a1 = v70;
        if (v70 >= v63)
        {
          v50 = v49 < v63 || v70 < v49;
        }

        else
        {
          v50 = v49 < v63 && v70 < v49;
        }

        v9 = v66;
        v10 = v65;
        v51 = v69;
        if (!v50)
        {
          v52 = *(v66 + 48);
          v53 = v52 + 56 * v70;
          v54 = (v52 + 56 * v69);
          if (v70 != v69 || v53 >= v54 + 56)
          {
            v56 = *v54;
            v57 = v54[1];
            v58 = v54[2];
            *(v53 + 48) = *(v54 + 6);
            *(v53 + 16) = v57;
            *(v53 + 32) = v58;
            *v53 = v56;
            a1 = v51;
          }
        }

        v12 = (v51 + 1) & v48;
        if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

LABEL_15:
      v32 = v76;
      while (1)
      {
        v31 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v31 >= v28)
        {
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
          __swift_storeEnumTagSinglePayload(v32, 1, 1, v46);
          v27 = 0;
          goto LABEL_21;
        }

        v27 = *(v24 + 8 * v31);
        ++v30;
        if (v27)
        {
          v77 = v29;
          v30 = v31;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_45;
    }

LABEL_40:

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v59 = *(v9 + 16);
  v60 = __OFSUB__(v59, 1);
  v61 = v59 - 1;
  if (!v60)
  {
    *(v9 + 16) = v61;
    ++*(v9 + 36);
    return;
  }

LABEL_45:
  __break(1u);
}

uint64_t sub_1C95CBA44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C95CBA94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncedLocationDisplayContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

WeatherCore::ReverseGeocodeSource_optional __swiftcall ReverseGeocodeSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ReverseGeocodeSource.rawValue.getter()
{
  v1 = 0x6953746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x6568636163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6953726576726573;
  }
}

unint64_t sub_1C95CBBC0()
{
  result = qword_1EC3A6828;
  if (!qword_1EC3A6828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6828);
  }

  return result;
}

uint64_t sub_1C95CBC38@<X0>(uint64_t *a1@<X8>)
{
  result = ReverseGeocodeSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ReverseGeocodeSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C95CBDEC()
{
  result = qword_1EC3A6830;
  if (!qword_1EC3A6830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6830);
  }

  return result;
}

uint64_t CoherenceDataManager.__allocating_init(syncedDataContextProvider:)()
{
  v0 = swift_allocObject();
  CoherenceDataManager.init(syncedDataContextProvider:)();
  return v0;
}

void CoherenceDataManager.init(syncedDataContextProvider:)()
{
  OUTLINED_FUNCTION_103();
  v2 = v1;
  v3 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = OBJC_IVAR____TtC11WeatherCore20CoherenceDataManager_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A30);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A5104();
  sub_1C9495214(&qword_1EDB7D0A8, MEMORY[0x1E69D6388]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A38);
  sub_1C9469CB4(&qword_1EDB7CEA0, &qword_1EC3A4A38);
  sub_1C96A79E4();
  sub_1C96A5134();
  swift_allocObject();
  *(v0 + v8) = sub_1C96A5124();
  sub_1C94670AC(v2, v0 + 16);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C95CC0C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  v14 = a3(v12, a2, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v14;
}

uint64_t CoherenceDataManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_1C9470AFC(v0 + 56, &qword_1EC3A6838);
  sub_1C9470AFC(v0 + OBJC_IVAR____TtC11WeatherCore20CoherenceDataManager_cachedSyncedData, &unk_1EC3A5F90);

  return v0;
}

uint64_t CoherenceDataManager.__deallocating_deinit()
{
  CoherenceDataManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t CoherenceDataManager.addLocation(_:displayContext:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 520) = v3;
  *(v4 + 504) = a1;
  *(v4 + 512) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6810);
  OUTLINED_FUNCTION_7(v6);
  *(v4 + 528) = OUTLINED_FUNCTION_12_4();
  v7 = type metadata accessor for SyncedLocationDisplayContext();
  *(v4 + 536) = v7;
  OUTLINED_FUNCTION_7(v7);
  *(v4 + 544) = swift_task_alloc();
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  v8 = sub_1C96A4A54();
  *(v4 + 568) = v8;
  OUTLINED_FUNCTION_9(v8);
  *(v4 + 576) = v9;
  *(v4 + 584) = OUTLINED_FUNCTION_12_4();
  v10 = type metadata accessor for Location();
  OUTLINED_FUNCTION_7(v10);
  *(v4 + 592) = OUTLINED_FUNCTION_12_4();
  v11 = type metadata accessor for SyncedData();
  *(v4 + 600) = v11;
  OUTLINED_FUNCTION_7(v11);
  v12 = OUTLINED_FUNCTION_12_4();
  *(v4 + 608) = v12;
  *(v4 + 625) = *a3;
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v4 + 616) = v13;
  *v13 = v14;
  v13[1] = sub_1C95CC424;

  return sub_1C95CCB5C(v12);
}

uint64_t sub_1C95CC424()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95CC508()
{
  v61 = v0;
  v58 = *(v0 + 625);
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v55 = *(v0 + 592);
  v56 = *(v0 + 568);
  v5 = *(v0 + 504);
  v6 = *(v0 + 512);
  OUTLINED_FUNCTION_17_4();
  sub_1C95D0C94(v1, v5, v7);
  v8 = sub_1C95C5198();
  v9 = sub_1C955FFD8(v8);
  v10 = v5 + *(v2 + 20);
  sub_1C95C5414();
  v12 = sub_1C955FFD8(v11);
  sub_1C95C870C(v9, v12);
  OUTLINED_FUNCTION_25_2();

  sub_1C95C4FBC(v10, v5);

  v13 = OUTLINED_FUNCTION_46();
  sub_1C95D0D4C(v13, v14);
  v15 = v6[1];
  v59 = *v6;
  v17 = v6[2];
  v16 = v6[3];
  v18 = v6[4];
  v19 = v6[5];
  sub_1C96A66B4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  v20 = sub_1C96A6F04();
  sub_1C95D0C94(v6, v55, type metadata accessor for Location);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  sub_1C96A49E4();
  v22 = v21;
  (*(v4 + 8))(v3, v56);
  SyncedLocation.init(location:createdAt:)(v55, v22, 0, v0 + 16);
  memcpy((v0 + 168), (v0 + 16), 0x98uLL);
  *(v0 + 320) = v59;
  *(v0 + 328) = v15;
  v57 = v17;
  *(v0 + 336) = v17;
  *(v0 + 344) = v16;
  v23 = v20;
  *(v0 + 352) = v18;
  *(v0 + 360) = v19;
  *(v0 + 368) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  sub_1C96A6C94();
  sub_1C95A038C(v0 + 16);
  if (v58 == 2)
  {
  }

  else
  {
    v24 = *(v0 + 625);
    v25 = *(v0 + 592);
    v26 = *(v0 + 560);
    v27 = *(v0 + 536);
    sub_1C95D0C94(*(v0 + 512), v25, type metadata accessor for Location);
    *(v26 + *(v27 + 24)) = MEMORY[0x1E69E7CC8];
    v28 = v25[1];
    *(v0 + 488) = *v25;
    *(v0 + 496) = v28;
    sub_1C96A53C4();
    sub_1C96A66C4();
    *(v0 + 624) = v24 & 1;
    sub_1C96A66C4();
    sub_1C95D0D4C(v25, type metadata accessor for Location);
    if (qword_1EDB7D060 != -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    v29 = *(v0 + 560);
    v30 = *(v0 + 552);
    v31 = sub_1C96A6154();
    __swift_project_value_buffer(v31, qword_1EDB7D068);
    sub_1C95D0C94(v29, v30, type metadata accessor for SyncedLocationDisplayContext);
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    v32 = sub_1C96A6134();
    v33 = sub_1C96A76A4();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 552);
    if (v34)
    {
      v36 = *(v0 + 544);
      v37 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v37 = 141558787;
      *(v37 + 4) = 1752392040;
      v54 = v33;
      *(v37 + 12) = 2081;
      sub_1C95D0C94(v35, v36, type metadata accessor for SyncedLocationDisplayContext);
      v38 = sub_1C96A70A4();
      log = v32;
      v40 = v39;
      sub_1C95D0D4C(v35, type metadata accessor for SyncedLocationDisplayContext);
      v41 = sub_1C9484164(v38, v40, v60);

      *(v37 + 14) = v41;
      *(v37 + 22) = 2160;
      *(v37 + 24) = 1752392040;
      *(v37 + 32) = 2081;
      v42 = v59;
      *(v0 + 432) = v59;
      *(v0 + 440) = v15;
      *(v0 + 448) = v57;
      *(v0 + 456) = v16;
      *(v0 + 464) = v18;
      *(v0 + 472) = v19;
      *(v0 + 480) = v23;
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      v43 = sub_1C96A70A4();
      v45 = sub_1C9484164(v43, v44, v60);

      *(v37 + 34) = v45;
      _os_log_impl(&dword_1C945E000, log, v54, "Set syncedDisplayContext:%{private,mask.hash}s for location key %{private,mask.hash}s", v37, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      sub_1C95D0D4C(v35, type metadata accessor for SyncedLocationDisplayContext);
      v42 = v59;
    }

    v46 = *(v0 + 560);
    v47 = *(v0 + 536);
    v48 = *(v0 + 528);
    sub_1C95D0C94(v46, v48, type metadata accessor for SyncedLocationDisplayContext);
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v47);
    *(v0 + 376) = v42;
    *(v0 + 384) = v15;
    *(v0 + 392) = v57;
    *(v0 + 400) = v16;
    *(v0 + 408) = v18;
    *(v0 + 416) = v19;
    *(v0 + 424) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
    sub_1C96A6C14();
    sub_1C95D0D4C(v46, type metadata accessor for SyncedLocationDisplayContext);
  }

  CoherenceDataManager.commitToDisk(_:)();
  sub_1C9485BFC(v49, v50);

  OUTLINED_FUNCTION_17();

  return v51();
}

uint64_t sub_1C95CCB5C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C95CCBF8, 0, 0);
}

uint64_t sub_1C95CCBF8()
{
  v1 = *(v0 + 112);
  CoherenceDataManager.getSyncedData()();
  v2 = type metadata accessor for SyncedData();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 104);
    sub_1C9470AFC(*(v0 + 112), &unk_1EC3A5F90);
    sub_1C9470AA0(v3 + 56, v0 + 56, &qword_1EC3A6838);
    if (*(v0 + 80))
    {
      sub_1C94670AC((v0 + 56), v0 + 16);
      v4 = *(v0 + 40);
      v5 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
      v13 = (OUTLINED_FUNCTION_25_2() + 16);
      v14 = (*v13 + **v13);
      v6 = swift_task_alloc();
      *(v0 + 120) = v6;
      *v6 = v0;
      v6[1] = sub_1C95CCECC;

      return v14(v4, v5);
    }

    v11 = *(v0 + 96);
    sub_1C9470AFC(v0 + 56, &qword_1EC3A6838);
    sub_1C94947B4();
    sub_1C94948B8();
    sub_1C9494964();
    sub_1C9494A68();
    sub_1C96A6CC4();
    type metadata accessor for SyncedLocationDisplayContext();
    sub_1C9495214(&qword_1EDB7D730, type metadata accessor for SyncedLocationDisplayContext);
    sub_1C96A6BE4();
    *(v11 + *(v2 + 24)) = MEMORY[0x1E69E7CC8];
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
    sub_1C95D0CF0(v8, v9, v10);
  }

  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_1C95CCECC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  *(v1 + 128) = v0;

  v2 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C95CCFBC()
{
  OUTLINED_FUNCTION_18();
  SyncedData.init(locations:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_17();

  return v1();
}

void CoherenceDataManager.commitToDisk(_:)()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_7(v4);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v34 - v6;
  sub_1C96A4764();
  OUTLINED_FUNCTION_12_0();
  v36 = v8;
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v11 = v10 - v9;
  if (qword_1EDB7D060 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  v38 = v3;
  v12 = sub_1C96A6154();
  __swift_project_value_buffer(v12, qword_1EDB7D068);
  v13 = sub_1C96A6134();
  v14 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_21(v14))
  {
    *OUTLINED_FUNCTION_29() = 0;
    OUTLINED_FUNCTION_12_10();
    _os_log_impl(v15, v16, v17, v18, v19, 2u);
    OUTLINED_FUNCTION_40();
  }

  v20 = v1[5];
  v21 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v20);
  v22 = *(v21 + 32);
  v23 = type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_4_41();
  v26 = sub_1C9495214(v24, v25);
  v22(v38, v23, v26, v20, v21);
  v27 = v1[5];
  v28 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v27);
  (*(v28 + 8))(v27, v28);
  sub_1C96A4874();
  (*(v36 + 8))(v11, v37);
  sub_1C96A50E4();
  v29 = v35;
  sub_1C95D0C94(v38, v35, type metadata accessor for SyncedData);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v23);
  v30 = OBJC_IVAR____TtC11WeatherCore20CoherenceDataManager_cachedSyncedData;
  swift_beginAccess();
  sub_1C95738B4(v29, v1 + v30);
  swift_endAccess();
  sub_1C96A50F4();
  v31 = sub_1C96A6134();
  v32 = sub_1C96A76A4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_29();
    *v33 = 0;
    _os_log_impl(&dword_1C945E000, v31, v32, "Finished committing SyncedData to disk", v33, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_101();
}

uint64_t CoherenceDataManager.removeLocation(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[123] = v3;
  v4[122] = a3;
  v4[121] = a2;
  v4[120] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6810);
  OUTLINED_FUNCTION_7(v5);
  v4[124] = OUTLINED_FUNCTION_12_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  v4[125] = v6;
  OUTLINED_FUNCTION_9(v6);
  v4[126] = v7;
  v4[127] = OUTLINED_FUNCTION_12_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67A0);
  v4[128] = v8;
  OUTLINED_FUNCTION_9(v8);
  v4[129] = v9;
  v4[130] = OUTLINED_FUNCTION_12_4();
  v10 = type metadata accessor for SyncedData();
  v4[131] = v10;
  OUTLINED_FUNCTION_7(v10);
  v4[132] = swift_task_alloc();
  v4[133] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v4[134] = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_25_15(v11);

  return sub_1C95CCB5C(v13);
}

uint64_t sub_1C95CD618()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95CD6FC()
{
  v42 = v0;
  v1 = v0[133];
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[127];
  v5 = v0[126];
  v6 = v0[125];
  sub_1C95D0C94(v2, v1, type metadata accessor for SyncedData);
  v7 = sub_1C95C5198();
  v8 = sub_1C955FFD8(v7);
  v9 = v1 + *(v3 + 20);
  sub_1C95C5414();
  v11 = sub_1C955FFD8(v10);
  sub_1C95C870C(v8, v11);
  OUTLINED_FUNCTION_25_2();

  sub_1C95C4FBC(v9, v1);

  sub_1C95D0D4C(v2, type metadata accessor for SyncedData);
  (*(v5 + 16))(v4, v1, v6);
  OUTLINED_FUNCTION_24_14(&qword_1EC3A67A8, &qword_1EC3A60A8);
  sub_1C96A71F4();
  OUTLINED_FUNCTION_19_20();
  sub_1C9469CB4(v12, v13);
  while (1)
  {
    sub_1C96A7944();
    memcpy(v0 + 28, v0 + 2, 0xD0uLL);
    if (sub_1C94EA54C((v0 + 28)) == 1)
    {
      break;
    }

    v14 = v0[122];
    v15 = v0[121];
    memcpy(v0 + 80, v0 + 2, 0xD0uLL);
    memcpy(v0 + 54, v0 + 2, 0xD0uLL);
    v16 = v0[61] == v15 && v0[62] == v14;
    if (v16 || (sub_1C96A7DE4() & 1) != 0)
    {
      v17 = v0[133];
      v18 = v0[124];
      v40 = v0[120];
      (*(v0[129] + 8))(v0[130], v0[128]);
      sub_1C95A038C((v0 + 61));
      v19 = v0[54];
      v20 = v0[55];
      v21 = v0[56];
      v22 = v0[57];
      v23 = v0[58];
      v24 = v0[59];
      v25 = v0[60];
      v0[106] = v19;
      v0[107] = v20;
      v0[108] = v21;
      v0[109] = v22;
      v0[110] = v23;
      v0[111] = v24;
      v0[112] = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
      sub_1C96A6B74();
      sub_1C9470AFC(v18, &qword_1EC3A6810);
      v0[113] = v19;
      v0[114] = v20;
      v0[115] = v21;
      v0[116] = v22;
      v0[117] = v23;
      v0[118] = v24;
      v0[119] = v25;
      sub_1C96A6C34();

      CoherenceDataManager.commitToDisk(_:)();
      sub_1C9485BFC(v26, v27);
      OUTLINED_FUNCTION_0_50();
      v29 = v17;
      v30 = v40;
      goto LABEL_15;
    }

    sub_1C9470AFC((v0 + 80), &qword_1EC3A67D0);
  }

  (*(v0[129] + 8))(v0[130], v0[128]);
  if (qword_1EDB7D060 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  v31 = sub_1C96A6154();
  __swift_project_value_buffer(v31, qword_1EDB7D068);
  OUTLINED_FUNCTION_25_2();
  sub_1C96A53C4();
  v32 = sub_1C96A6134();
  v33 = sub_1C96A7684();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = v0[122];
    v35 = v0[121];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41 = v37;
    *v36 = 141558275;
    *(v36 + 4) = 1752392040;
    *(v36 + 12) = 2081;
    *(v36 + 14) = sub_1C9484164(v35, v34, &v41);
    _os_log_impl(&dword_1C945E000, v32, v33, "Not removing location because can't find locationKey and index for location id: %{private,mask.hash}s", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  v29 = v0[133];
  v30 = v0[120];
  v28 = type metadata accessor for SyncedData;
LABEL_15:
  sub_1C95D0CF0(v29, v30, v28);

  OUTLINED_FUNCTION_17();

  return v38();
}

uint64_t CoherenceDataManager.removeAll()()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1C96A4D34();
  v1[4] = v3;
  OUTLINED_FUNCTION_9(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_12_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6840);
  v1[7] = v5;
  OUTLINED_FUNCTION_9(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_12_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6848);
  v1[10] = v7;
  OUTLINED_FUNCTION_7(v7);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6850);
  v1[13] = v8;
  OUTLINED_FUNCTION_9(v8);
  v1[14] = v9;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6858);
  v1[17] = v10;
  OUTLINED_FUNCTION_7(v10);
  v1[18] = OUTLINED_FUNCTION_12_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6860);
  v1[19] = v11;
  OUTLINED_FUNCTION_9(v11);
  v1[20] = v12;
  v1[21] = OUTLINED_FUNCTION_12_4();
  v13 = type metadata accessor for SyncedData();
  v1[22] = v13;
  OUTLINED_FUNCTION_7(v13);
  v1[23] = OUTLINED_FUNCTION_12_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v1[24] = v14;
  *v14 = v15;
  v16 = OUTLINED_FUNCTION_25_15(v14);

  return sub_1C95CCB5C(v16);
}

uint64_t sub_1C95CDE48()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95CDF2C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[2];
  OUTLINED_FUNCTION_17_4();
  sub_1C95D0C94(v1, v3, v4);
  v5 = sub_1C95C5198();
  v6 = sub_1C955FFD8(v5);
  v7 = *(v2 + 20);
  sub_1C95C5414();
  v9 = sub_1C955FFD8(v8);
  sub_1C95C870C(v6, v9);
  OUTLINED_FUNCTION_25_2();

  sub_1C95C4FBC(v3 + v7, v3);

  v10 = OUTLINED_FUNCTION_46();
  sub_1C95D0D4C(v10, v11);
  if (qword_1EDB7D060 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  v12 = sub_1C96A6154();
  OUTLINED_FUNCTION_54_0(v12, qword_1EDB7D068);
  v13 = sub_1C96A6134();
  v14 = sub_1C96A7684();
  if (OUTLINED_FUNCTION_21(v14))
  {
    *OUTLINED_FUNCTION_29() = 0;
    OUTLINED_FUNCTION_12_10();
    _os_log_impl(v15, v16, v17, v18, v19, 2u);
    OUTLINED_FUNCTION_40();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
  sub_1C96A6B64();
  sub_1C96A6BD4();
  sub_1C9469CB4(&qword_1EC3A6868, &qword_1EC3A6850);
  OUTLINED_FUNCTION_46();
  result = sub_1C96A6F84();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = v0[18];
  v39 = v0[17];
  v22 = v0[15];
  v24 = v0[13];
  v23 = v0[14];
  v25 = v0[11];
  v26 = v0[12];
  v27 = v0[10];
  v40 = v0[9];
  v41 = v0[8];
  v42 = v0[7];
  v28 = *(v23 + 32);
  v28(v26, v0[16], v24);
  v28(v26 + *(v27 + 48), v22, v24);
  sub_1C9470AA0(v26, v25, &qword_1EC3A6848);
  v29 = *(v27 + 48);
  v28(v21, v25, v24);
  v30 = *(v23 + 8);
  v30(v25 + v29, v24);
  sub_1C95D0C24(v26, v25);
  v28(v21 + *(v39 + 36), v25 + *(v27 + 48), v24);
  v30(v25, v24);
  sub_1C96A7F74();
  sub_1C9469CB4(&qword_1EC3A6870, &qword_1EC3A60B0);
  sub_1C96A7614();
  (*(v41 + 8))(v40, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  result = sub_1C96A6C84();
  if (result < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v32 = v0[5];
  v31 = v0[6];
  v33 = v0[4];
  sub_1C96A4D24();
  sub_1C96A6CA4();
  CoherenceDataManager.commitToDisk(_:)();
  sub_1C9485BFC(v34, v35);
  (*(v32 + 8))(v31, v33);
  v36 = OUTLINED_FUNCTION_46();
  v37(v36);

  OUTLINED_FUNCTION_17();

  return v38();
}

uint64_t CoherenceDataManager.moveLocation(from:to:)()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_7(v5);
  v1[6] = OUTLINED_FUNCTION_12_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v1[7] = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_25_15(v6);

  return sub_1C95CCB5C(v8);
}

uint64_t sub_1C95CE444()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95CE528()
{
  v2 = v0[3];
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  v3 = sub_1C96A6C84();
  if (v3 <= v2 || v3 < v1)
  {
    v5 = v3;
    if (qword_1EDB7D060 != -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    v6 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v6, qword_1EDB7D068);
    v7 = sub_1C96A6134();
    v8 = sub_1C96A7684();
    if (OUTLINED_FUNCTION_21(v8))
    {
      v10 = v0[3];
      v9 = v0[4];
      v11 = swift_slowAlloc();
      *v11 = 134218496;
      *(v11 + 4) = v10;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v9;
      *(v11 + 22) = 2048;
      *(v11 + 24) = v5;
      OUTLINED_FUNCTION_12_10();
      _os_log_impl(v12, v13, v14, v15, v16, 0x20u);
      OUTLINED_FUNCTION_40();
    }
  }

  else
  {
    sub_1C96A6C74();
    CoherenceDataManager.commitToDisk(_:)();
    sub_1C9485BFC(v17, v18);
  }

  v19 = v0[6];
  OUTLINED_FUNCTION_0_50();
  sub_1C95D0CF0(v19, v20, v21);

  OUTLINED_FUNCTION_17();

  return v22();
}

uint64_t CoherenceDataManager.updateLocationTimeZones(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v129 = &v119[-v7];
  v124 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = (v10 - v9);
  v134 = type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_12_0();
  v131 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v127 = &v119[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v128 = &v119[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v119[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_7(v20);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v119[-v22];
  v24 = type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_14();
  v28 = v27 - v26;
  v123 = v2;
  CoherenceDataManager.getSyncedData()();
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_1C9470AFC(v23, &unk_1EC3A5F90);
    if (qword_1EDB7D060 != -1)
    {
LABEL_60:
      OUTLINED_FUNCTION_0_54();
    }

    v29 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v29, qword_1EDB7D068);
    v30 = sub_1C96A6134();
    v31 = sub_1C96A7684();
    if (OUTLINED_FUNCTION_21(v31))
    {
      v32 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_41_2(v32);
      OUTLINED_FUNCTION_15_25();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    goto LABEL_40;
  }

  OUTLINED_FUNCTION_0_50();
  sub_1C95D0CF0(v23, v28, v38);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  v39 = sub_1C96A6C84();
  if (v39 == *(a1 + 16))
  {
    if (v39)
    {
      v121 = v24;
      v122 = a2;
      v120 = 0;
      v24 = 0;
      v40 = *(v131 + 80);
      v125 = v39;
      v126 = a1 + ((v40 + 32) & ~v40);
      v130 = v19;
      while (1)
      {
        if (v24 >= v39)
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (__OFADD__(v24, 1))
        {
          goto LABEL_59;
        }

        v132 = v24 + 1;
        v41 = v28;
        sub_1C96A6CF4();
        sub_1C95D0C94(v126 + *(v131 + 72) * v24, v19, type metadata accessor for SavedLocation);
        v42 = v128;
        sub_1C95D0C94(v19, v128, type metadata accessor for SavedLocation);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          memcpy(v141, v42, 0x68uLL);
          v43 = v141[0];
          v44 = v141[1];
          v45 = v141[2];
          v46 = v141[3];
          v47 = v141[4];
          v48 = v141[5];
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C955FE40(v141);
        }

        else
        {
          OUTLINED_FUNCTION_18_2();
          sub_1C95D0CF0(v42, v11, v49);
          v43 = *v11;
          v44 = *(v11 + 1);
          v45 = *(v11 + 2);
          v46 = *(v11 + 3);
          v47 = *(v11 + 4);
          v48 = *(v11 + 5);
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C96A53C4();
          OUTLINED_FUNCTION_23_2();
        }

        sub_1C96A66B4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        v50 = sub_1C96A6F04();

        v141[0] = v43;
        v141[1] = v44;
        v141[2] = v45;
        v141[3] = v46;
        v141[4] = v47;
        v141[5] = v48;
        v141[6] = v50;
        v28 = v41;
        sub_1C96A6CE4();

        memcpy(v141, v142, 0x98uLL);
        memcpy(v143, __src, sizeof(v143));
        memcpy(v144, __src, sizeof(v144));
        GEOLocationCoordinate2DMake(v144);
        memcpy(&v141[19], v144, 0x98uLL);
        OUTLINED_FUNCTION_40_6(v145);
        if (sub_1C94EA54C(v145) == 1)
        {
          memcpy(v139, &v141[19], 0x98uLL);
          v51 = sub_1C94EA54C(v139);
          v52 = v129;
          v19 = v130;
          if (v51 != 1)
          {
            sub_1C95A0354(v143, v140);
            goto LABEL_47;
          }

          OUTLINED_FUNCTION_40_6(v140);
          sub_1C95A0354(v143, v138);
          sub_1C9470AFC(v140, &qword_1EC3A6880);
        }

        else
        {
          OUTLINED_FUNCTION_40_6(v140);
          OUTLINED_FUNCTION_40_6(v138);
          memcpy(v139, &v141[19], 0x98uLL);
          v69 = sub_1C94EA54C(v139) == 1;
          v52 = v129;
          v19 = v130;
          if (v69)
          {
            OUTLINED_FUNCTION_40_6(v137);
            sub_1C95A0354(v143, v136);
            sub_1C9470AA0(v140, v136, &qword_1EC3A6880);
            sub_1C95A038C(v137);
LABEL_47:
            memcpy(v139, v141, sizeof(v139));
            sub_1C9470AFC(v139, &qword_1EC3A6878);
LABEL_48:
            if (qword_1EDB7D060 != -1)
            {
              OUTLINED_FUNCTION_0_54();
            }

            v92 = sub_1C96A6154();
            OUTLINED_FUNCTION_54_0(v92, qword_1EDB7D068);
            v93 = sub_1C96A6134();
            v94 = sub_1C96A7684();
            v95 = OUTLINED_FUNCTION_21(v94);
            v96 = v121;
            if (v95)
            {
              v97 = OUTLINED_FUNCTION_29();
              OUTLINED_FUNCTION_41_2(v97);
              OUTLINED_FUNCTION_15_25();
              _os_log_impl(v98, v99, v100, v101, v102, 2u);
              OUTLINED_FUNCTION_7_2();
            }

            OUTLINED_FUNCTION_2_2();
            sub_1C95D0D4C(v19, v103);
            OUTLINED_FUNCTION_3_36();
            sub_1C95D0D4C(v28, v104);
            OUTLINED_FUNCTION_3();
            __swift_storeEnumTagSinglePayload(v105, v106, v107, v96);
            OUTLINED_FUNCTION_33();
            return sub_1C95A038C(v141);
          }

          memcpy(v137, &v141[19], sizeof(v137));
          sub_1C95A0354(v143, v136);
          sub_1C9470AA0(v140, v136, &qword_1EC3A6880);
          static SyncedLocation.== infix(_:_:)(v138, v137);
          v54 = v53;
          memcpy(v135, v137, sizeof(v135));
          sub_1C95A038C(v135);
          memcpy(v136, v138, sizeof(v136));
          sub_1C95A038C(v136);
          OUTLINED_FUNCTION_40_6(v137);
          sub_1C9470AFC(v137, &qword_1EC3A6880);
          if ((v54 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v55 = v127;
        sub_1C95D0C94(v19, v127, type metadata accessor for SavedLocation);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          OUTLINED_FUNCTION_2_2();
          sub_1C95D0D4C(v55, v56);
          v57 = sub_1C96A4DF4();
          v58 = v52;
          v59 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_18_2();
          sub_1C95D0CF0(v55, v11, v60);
          v61 = *(v124 + 20);
          v57 = sub_1C96A4DF4();
          OUTLINED_FUNCTION_6();
          (*(v62 + 16))(v52, &v11[v61], v57);
          OUTLINED_FUNCTION_23_2();
          v58 = v52;
          v59 = 0;
        }

        __swift_storeEnumTagSinglePayload(v58, v59, 1, v57);
        sub_1C96A4DF4();
        if (__swift_getEnumTagSinglePayload(v52, 1, v57) == 1)
        {
          break;
        }

        v64 = v143[6];
        v65 = v143[7];
        v66 = sub_1C96A4D74();
        v68 = v67;
        (*(*(v57 - 8) + 8))(v52, v57);
        v69 = v66 == v64 && v68 == v65;
        if (v69 || (sub_1C96A7DE4() & 1) != 0)
        {
          OUTLINED_FUNCTION_2_2();
          v19 = v130;
          sub_1C95D0D4C(v130, v70);

LABEL_30:
          OUTLINED_FUNCTION_33();
          sub_1C95A038C(v141);
          v39 = v125;
          if (v132 == v125)
          {
            if (v120)
            {
              v73 = v121;
              v72 = v122;
LABEL_44:
              CoherenceDataManager.commitToDisk(_:)();
              sub_1C9485BFC(v89, v90);
              OUTLINED_FUNCTION_0_50();
              sub_1C95D0CF0(v28, v72, v91);
              v84 = v72;
              v85 = 0;
              v86 = 1;
              v87 = v73;
              return __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
            }

            v108 = v121;
            if (qword_1EDB7D060 != -1)
            {
              OUTLINED_FUNCTION_0_54();
            }

            v109 = sub_1C96A6154();
            OUTLINED_FUNCTION_54_0(v109, qword_1EDB7D068);
            v110 = sub_1C96A6134();
            v111 = sub_1C96A76A4();
            if (OUTLINED_FUNCTION_21(v111))
            {
              v112 = OUTLINED_FUNCTION_29();
              OUTLINED_FUNCTION_41_2(v112);
              OUTLINED_FUNCTION_15_25();
              _os_log_impl(v113, v114, v115, v116, v117, 2u);
              OUTLINED_FUNCTION_7_2();
            }

            OUTLINED_FUNCTION_3_36();
            sub_1C95D0D4C(v28, v118);
            OUTLINED_FUNCTION_3();
            v87 = v108;
            return __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
          }

          ++v24;
        }

        else
        {

          __src[6] = v66;
          __src[7] = v68;
          memcpy(v139, __src, 0x98uLL);
          OUTLINED_FUNCTION_33();
          sub_1C95A0354(v139, v142);
          sub_1C96A6D04();
          OUTLINED_FUNCTION_2_2();
          v19 = v130;
          sub_1C95D0D4C(v130, v71);
          OUTLINED_FUNCTION_33();
          sub_1C95A038C(v141);
          v39 = v125;
          v24 = v132;
          v73 = v121;
          v72 = v122;
          if (v132 == v125)
          {
            goto LABEL_44;
          }

          v120 = 1;
        }
      }

      OUTLINED_FUNCTION_2_2();
      sub_1C95D0D4C(v19, v63);
      sub_1C9470AFC(v52, &unk_1EC3A5F60);
      goto LABEL_30;
    }
  }

  else
  {
    if (qword_1EDB7D060 != -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    v74 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v74, qword_1EDB7D068);
    v75 = sub_1C96A6134();
    v76 = sub_1C96A7684();
    if (OUTLINED_FUNCTION_21(v76))
    {
      v77 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_41_2(v77);
      OUTLINED_FUNCTION_15_25();
      _os_log_impl(v78, v79, v80, v81, v82, 2u);
      OUTLINED_FUNCTION_7_2();
    }
  }

  OUTLINED_FUNCTION_3_36();
  sub_1C95D0D4C(v28, v83);
LABEL_40:
  OUTLINED_FUNCTION_3();
  v87 = v24;
  return __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
}

void CoherenceDataManager.getSyncedData()()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v3 = v2;
  sub_1C96A40F4();
  OUTLINED_FUNCTION_12_0();
  v20[0] = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_7(v6);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  v20[1] = *(v0 + OBJC_IVAR____TtC11WeatherCore20CoherenceDataManager_lock);
  sub_1C96A50E4();
  v15 = OBJC_IVAR____TtC11WeatherCore20CoherenceDataManager_cachedSyncedData;
  swift_beginAccess();
  sub_1C9470AA0(v1 + v15, v9, &unk_1EC3A5F90);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1C9470AFC(v9, &unk_1EC3A5F90);
    v16 = v1[5];
    v17 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v16);
    (*(v17 + 24))(v16, v17);
    OUTLINED_FUNCTION_4_41();
    sub_1C9495214(v18, v19);
    OUTLINED_FUNCTION_11();
    sub_1C96A6D24();
  }

  else
  {
    sub_1C95D0CF0(v9, v14, type metadata accessor for SyncedData);
    sub_1C95D0CF0(v14, v3, type metadata accessor for SyncedData);
  }

  __swift_storeEnumTagSinglePayload(v3, 0, 1, v10);
  sub_1C96A50F4();
  OUTLINED_FUNCTION_101();
}

uint64_t CoherenceDataManager.mergeSyncedData(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C95CF660(a1, a2);
  CoherenceDataManager.commitToDisk(_:)();

  return sub_1C9485BFC(v2, v3);
}

uint64_t sub_1C95CF660@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = sub_1C96A6AE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - v13;
  CoherenceDataManager.getSyncedData()();
  v15 = type metadata accessor for SyncedData();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C9470AFC(v14, &unk_1EC3A5F90);
    return sub_1C95D0C94(a1, a2, type metadata accessor for SyncedData);
  }

  else
  {
    sub_1C95D0CF0(v14, a2, type metadata accessor for SyncedData);
    sub_1C9495214(&qword_1EDB7A5D8, type metadata accessor for SyncedData);
    sub_1C96A6924();
    (*(v9 + 8))(v11, v8);
    sub_1C95C8040();
    return (*(v5 + 40))(a2, v7, v4);
  }
}

uint64_t CoherenceDataManager.makeData(from:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_4_41();
  v9 = sub_1C9495214(v7, v8);
  return v5(a1, v6, v9, v3, v4);
}

Swift::Void __swiftcall CoherenceDataManager.removeSyncedData()()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v41[3] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v41 - v4;
  v6 = sub_1C96A4764();
  OUTLINED_FUNCTION_12_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v12 = v11 - v10;
  v13 = [objc_opt_self() defaultManager];
  v14 = v0[5];
  v15 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
  (*(v15 + 8))(v14, v15);
  v16 = sub_1C96A46E4();
  (*(v8 + 8))(v12, v6);
  v41[0] = 0;
  v17 = [v13 removeItemAtURL:v16 error:v41];

  if (v17)
  {
    v18 = v41[0];
    sub_1C96A50E4();
    type metadata accessor for SyncedData();
    OUTLINED_FUNCTION_3();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    v23 = OBJC_IVAR____TtC11WeatherCore20CoherenceDataManager_cachedSyncedData;
    swift_beginAccess();
    sub_1C95738B4(v5, v1 + v23);
    swift_endAccess();
    sub_1C96A50F4();
  }

  else
  {
    v24 = v41[0];
    v25 = sub_1C96A4584();

    swift_willThrow();
    if (qword_1EDB7D060 != -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    v26 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v26, qword_1EDB7D068);
    v27 = v25;
    v28 = sub_1C96A6134();
    v29 = sub_1C96A76A4();

    if (os_log_type_enabled(v28, v29))
    {
      OUTLINED_FUNCTION_9_8();
      v30 = OUTLINED_FUNCTION_11_6();
      v41[0] = v30;
      *v17 = 136446210;
      v40 = v25;
      v31 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
      v32 = sub_1C96A70A4();
      v34 = sub_1C9484164(v32, v33, v41);

      *(v17 + 4) = v34;
      OUTLINED_FUNCTION_15_25();
      _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_7_2();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_101();
}

uint64_t CoherenceDataManager.locationID(by:)(uint64_t a1)
{
  v1[106] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6888);
  OUTLINED_FUNCTION_7(v2);
  v1[107] = OUTLINED_FUNCTION_12_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6890);
  v1[108] = v3;
  OUTLINED_FUNCTION_7(v3);
  v1[109] = OUTLINED_FUNCTION_12_4();
  v4 = type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_7(v4);
  v1[110] = OUTLINED_FUNCTION_12_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  v1[111] = v5;
  OUTLINED_FUNCTION_9(v5);
  v1[112] = v6;
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v1[115] = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_25_15(v7);

  return sub_1C95CCB5C(v9);
}

uint64_t sub_1C95CFF90()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95D0074()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[107];
  v27 = v0[106];
  v28 = v0[108];
  v8 = *(v3 + 16);
  v8(v1, v5, v4);
  OUTLINED_FUNCTION_3_36();
  sub_1C95D0D4C(v5, v9);
  v8(v7, v1, v4);
  (*(v3 + 32))(v2, v7, v4);
  OUTLINED_FUNCTION_24_14(&qword_1EC3A67A8, &qword_1EC3A60A8);
  v26 = v6;
  sub_1C96A71F4();
  v10 = *(v28 + 36);
  OUTLINED_FUNCTION_19_20();
  sub_1C9469CB4(v11, &qword_1EC3A67A0);
  for (i = 0; ; ++i)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67A0);
    sub_1C96A7944();
    memcpy(v0 + 2, v0 + 28, 0xD0uLL);
    result = sub_1C94EA54C((v0 + 2));
    if (result == 1)
    {
      v15 = v0[114];
      v16 = v0[112];
      v17 = v0[111];
      v18 = v0[109];
      *(v26 + v10) = i;
      memcpy(v0 + 54, v0 + 28, 0xD0uLL);
      sub_1C9470AFC((v0 + 54), &qword_1EC3A67D0);
      sub_1C9470AFC(v18, &qword_1EC3A6890);
      (*(v16 + 8))(v15, v17);
      v19 = 0;
      v20 = 0;
      goto LABEL_8;
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
      return result;
    }

    v14 = v0[106];
    memcpy(v0 + 80, v0 + 28, 0xD0uLL);
    if (i == v14)
    {
      break;
    }

    sub_1C9470AFC((v0 + 80), &qword_1EC3A6818);
  }

  v21 = v0[114];
  v22 = v0[112];
  v23 = v0[111];
  v24 = v0[109];
  *(v26 + v10) = v27 + 1;
  sub_1C9470AFC(v24, &qword_1EC3A6890);
  (*(v22 + 8))(v21, v23);

  v19 = v0[87];
  v20 = v0[88];
  sub_1C96A53C4();
  sub_1C95A038C((v0 + 87));
LABEL_8:

  v25 = v0[1];

  return v25(v19, v20);
}

uint64_t sub_1C95D03AC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C94B0C0C;

  return CoherenceDataManager.addLocation(_:displayContext:)(a1, a2, a3);
}

uint64_t sub_1C95D0460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C94B0CEC;

  return CoherenceDataManager.removeLocation(by:)(a1, a2, a3);
}

uint64_t sub_1C95D0514()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return CoherenceDataManager.removeAll()();
}

uint64_t sub_1C95D05B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return CoherenceDataManager.moveLocation(from:to:)();
}

uint64_t sub_1C95D06D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C95D0768;

  return CoherenceDataManager.locationID(by:)(a1);
}

uint64_t sub_1C95D0768()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11();

  return v4(v3);
}

uint64_t sub_1C95D08A0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_12_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  v15 = swift_allocObject();
  (*(v10 + 16))(v14, a1, a4);
  v16 = sub_1C95D09B4(v14, a2, v15, a4, a5);
  (*(v10 + 8))(a1, a4);
  return v16;
}

uint64_t sub_1C95D09B4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v10);
  v17 = a4;
  v18 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v12 = OBJC_IVAR____TtC11WeatherCore20CoherenceDataManager_cachedSyncedData;
  v13 = type metadata accessor for SyncedData();
  __swift_storeEnumTagSinglePayload(a3 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC11WeatherCore20CoherenceDataManager_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A30);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A5104();
  sub_1C9495214(&qword_1EDB7D0A8, MEMORY[0x1E69D6388]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A38);
  sub_1C9469CB4(&qword_1EDB7CEA0, &qword_1EC3A4A38);
  sub_1C96A79E4();
  sub_1C96A5134();
  swift_allocObject();
  *(a3 + v14) = sub_1C96A5124();
  sub_1C94670AC(&v16, a3 + 16);
  sub_1C94670AC(a2, a3 + 56);
  return a3;
}

uint64_t sub_1C95D0C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6848);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C95D0C94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C95D0CF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C95D0D4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of CoherenceDataManagerType.addLocation(_:displayContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_11_26(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_22_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v5 + 16) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_8_30(v6);

  return v9(v8);
}

uint64_t dispatch thunk of CoherenceDataManagerType.removeLocation(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_11_26(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_22_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v5 + 16) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_8_30(v6);

  return v9(v8);
}

uint64_t dispatch thunk of CoherenceDataManagerType.removeAll()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_38_1(a1, a2, a3);
  OUTLINED_FUNCTION_22_0();
  v11 = (v7 + *v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v5 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1C94B0CEC;

  return v11(v6, v4, v3);
}

uint64_t dispatch thunk of CoherenceDataManagerType.moveLocation(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_11_26(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_22_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v5 + 16) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_8_30(v6);

  return v9(v8);
}

uint64_t dispatch thunk of CoherenceDataManagerType.locationID(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_38_1(a1, a2, a3);
  OUTLINED_FUNCTION_22_0();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1C95D0768;

  return v10(v6, v4, v3);
}

uint64_t type metadata accessor for CoherenceDataManager()
{
  result = qword_1EDB7E970;
  if (!qword_1EDB7E970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C95D139C()
{
  sub_1C94940C4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

BOOL static TemperatureScaleConfiguration.ColorStop.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1C96A7DE4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1C95D14F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C96A7DE4();

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

uint64_t sub_1C95D15BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95D14F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95D15E4(uint64_t a1)
{
  v2 = sub_1C948B638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95D1620(uint64_t a1)
{
  v2 = sub_1C948B638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TemperatureScaleConfiguration.ColorStop.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6898);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948B638();
  sub_1C96A7F54();
  v12 = 0;
  v8 = v10;
  sub_1C96A7D24();
  if (!v8)
  {
    v11 = 1;
    sub_1C96A7D44();
  }

  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1C95D1814(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73706F7473 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C96A7DE4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C95D1888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95D1814(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C95D18B4(uint64_t a1)
{
  v2 = sub_1C9481A9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95D18F0(uint64_t a1)
{
  v2 = sub_1C9481A9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TemperatureScaleConfiguration.Gradient.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_119();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68A8);
  OUTLINED_FUNCTION_1();
  v27 = v26;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  OUTLINED_FUNCTION_6_38(v24);
  sub_1C9481A9C();
  sub_1C96A53C4();
  OUTLINED_FUNCTION_69_0();
  sub_1C96A7F54();
  a10 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68B0);
  sub_1C9481AFC(&qword_1EDB7CEB0, sub_1C95D1AA4);
  sub_1C96A7D74();

  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_118();
}

unint64_t sub_1C95D1AA4()
{
  result = qword_1EDB7D600;
  if (!qword_1EDB7D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D600);
  }

  return result;
}

uint64_t static TemperatureScaleConfiguration.Gradient.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDB7D638 != -1)
  {
    OUTLINED_FUNCTION_1_45();
    swift_once();
  }

  *a1 = qword_1EDB7D640;

  return sub_1C96A53C4();
}

double TemperatureScaleConfiguration.gradientValueRange(for:)()
{
  sub_1C95D1C68();
  v0 = [objc_opt_self() fahrenheit];
  v1 = sub_1C96A78B4();

  result = -84.44;
  if (v1)
  {
    return -120.0;
  }

  return result;
}

unint64_t sub_1C95D1C68()
{
  result = qword_1EDB7CD30;
  if (!qword_1EDB7CD30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB7CD30);
  }

  return result;
}

void TemperatureScaleConfiguration.encode(to:)()
{
  OUTLINED_FUNCTION_119();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68C8);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_42();
  OUTLINED_FUNCTION_6_38(v2);
  sub_1C948B51C();
  sub_1C96A53C4();
  OUTLINED_FUNCTION_69_0();
  sub_1C96A7F54();
  sub_1C95D1DD8();
  sub_1C96A7D74();

  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_118();
}

unint64_t sub_1C95D1DD8()
{
  result = qword_1EDB7D628;
  if (!qword_1EDB7D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D628);
  }

  return result;
}

BOOL sub_1C95D1E38@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E3E9C();
  *a1 = result;
  return result;
}

uint64_t sub_1C95D1E6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C947B858();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1C95D1E94@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E3E9C();
  *a1 = result;
  return result;
}

uint64_t sub_1C95D1EC0(uint64_t a1)
{
  v2 = sub_1C948B51C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95D1EFC(uint64_t a1)
{
  v2 = sub_1C948B51C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C95D1F5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C95D1F9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C95D1FE0()
{
  result = qword_1EC3A68D0;
  if (!qword_1EC3A68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A68D0);
  }

  return result;
}

unint64_t sub_1C95D2038()
{
  result = qword_1EC3A68D8;
  if (!qword_1EC3A68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A68D8);
  }

  return result;
}

unint64_t sub_1C95D2090()
{
  result = qword_1EC3A68E0;
  if (!qword_1EC3A68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A68E0);
  }

  return result;
}

uint64_t static OpenIntentHelpers.makeUrlComponents()()
{
  sub_1C96A43A4();
  sub_1C96A4384();
  MEMORY[0x1CCA89CE0](0xD000000000000011, 0x80000001C96D3360);
  MEMORY[0x1CCA89CF0](47, 0xE100000000000000);
  return sub_1C96A4324();
}

void static OpenIntentHelpers.parseLocation(_:into:)(void *a1)
{
  v2 = sub_1C96A4304();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  if (a1)
  {
    v7 = a1;
    v8 = [v7 location];
    if (v8)
    {
      v9 = v8;
      v45 = v2;
      [v8 coordinate];
      sub_1C96A7514();
      [v9 coordinate];
      sub_1C96A7514();
      v11 = OUTLINED_FUNCTION_14_23();
      if (*v10)
      {
        v12 = v10;
        sub_1C96A42F4();

        sub_1C9522924();
        v13 = *(*v12 + 16);
        sub_1C9522954(v13);
        OUTLINED_FUNCTION_7_30(v13 + 1);
        v16 = v45;
        v17(v14 + v15 * v13, v6, v45);
        v18 = OUTLINED_FUNCTION_10_29();
        v11(v18);
      }

      else
      {

        v27 = OUTLINED_FUNCTION_10_29();
        v11(v27);
        v16 = v2;
      }

      v29 = OUTLINED_FUNCTION_14_23();
      if (*v28)
      {
        v30 = v28;
        sub_1C96A42F4();

        sub_1C9522924();
        v31 = *(*v30 + 16);
        sub_1C9522954(v31);
        OUTLINED_FUNCTION_7_30(v31 + 1);
        v34(v32 + v33 * v31, v6, v16);
      }

      else
      {
      }

      v35 = OUTLINED_FUNCTION_10_29();
      v29(v35);
      sub_1C95D336C(v7);
      if (v36)
      {
        v38 = OUTLINED_FUNCTION_14_23();
        if (*v37)
        {
          v39 = v37;
          sub_1C96A42F4();

          sub_1C9522924();
          v40 = *(*v39 + 16);
          sub_1C9522954(v40);
          OUTLINED_FUNCTION_1_46(v40 + 1);
          v43(v41 + v42 * v40, v6, v16);
        }

        else
        {
        }

        v44 = OUTLINED_FUNCTION_10_29();
        v38(v44);
      }

      return;
    }
  }

  v20 = OUTLINED_FUNCTION_14_23();
  if (*v19)
  {
    v21 = v19;
    sub_1C96A42F4();
    sub_1C9522924();
    v22 = *(*v21 + 16);
    sub_1C9522954(v22);
    OUTLINED_FUNCTION_1_46(v22 + 1);
    v25(v23 + v24 * v22, v6, v2);
  }

  v26 = OUTLINED_FUNCTION_10_29();
  v20(v26);
}

unint64_t OpenIntentHelpers.L2KindView.stringValue.getter()
{
  result = 0x696C617551726961;
  switch(*v0)
  {
    case 1:
    case 2:
      result = 0x6F697469646E6F63;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}