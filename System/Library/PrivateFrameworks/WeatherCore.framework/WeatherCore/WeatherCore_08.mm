uint64_t sub_1C9514770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a8;
  v35 = a7;
  v37 = a6;
  v38 = a4;
  v39 = a3;
  v36 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v33 - v11;
  v13 = sub_1C96A61C4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v33 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v33 - v21;
  v23 = *(a5 + 16);
  sub_1C96A5444();
  v40 = v41[0];
  NotificationStore.fetchSchedules.getter();
  v33[0] = a1;
  v33[1] = v23;
  sub_1C96A6314();

  sub_1C955F848(v37);
  sub_1C96A6234();

  v41[3] = MEMORY[0x1E69E6370];
  v41[4] = MEMORY[0x1E69D62E8];
  LOBYTE(v41[0]) = 1;
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  sub_1C96A6214();
  v24 = *(v14 + 8);
  v24(v16, v13);
  v24(v19, v13);
  v25 = sub_1C96A63E4();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v25);
  v27 = sub_1C96A62E4();

  sub_1C9470AFC(v12, &qword_1EC3A4B60);
  v28 = (v24)(v22, v13);
  MEMORY[0x1EEE9AC00](v28);
  v29 = v34;
  v30 = v35;
  v33[-2] = v27;
  v33[-1] = v29;
  sub_1C96A53C4();
  sub_1C957F168(sub_1C9518AF0, &v33[-4], v30);
  v32 = v31;

  v41[0] = v32;
  (v33[0])(v41);

  sub_1C96A5434();
}

uint64_t sub_1C9514C68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v11[4] = a1;
  sub_1C95F6BE4(sub_1C9518B10, a2, v12);
  v7 = v12[0];
  if (!v12[0])
  {
    v10 = 1;
    return v10 & 1;
  }

  v12[8] = v12[1];
  v11[1] = v12[2];
  sub_1C96A6354();
  v8 = sub_1C96A4A54();
  result = __swift_getEnumTagSinglePayload(v6, 1, v8);
  if (result != 1)
  {
    v10 = sub_1C96A49A4();
    sub_1C9518850(v7);
    (*(*(v8 - 8) + 8))(v6, v8);
    return v10 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9514DF4(uint64_t a1, void *a2)
{
  sub_1C96A6354();
  if (v7)
  {
    if (v6 == *a2 && v7 == a2[1])
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1C96A7DE4();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t PrecipitationNotificationFetchScheduler.updateSchedules(_:)()
{
  if (qword_1EDB77E80 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v0 = sub_1C96A6154();
  __swift_project_value_buffer(v0, qword_1EDB77E88);
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v2))
  {
    *OUTLINED_FUNCTION_29() = 0;
    OUTLINED_FUNCTION_20_5(&dword_1C945E000, v3, v4, "Updating fetching schedules");
    OUTLINED_FUNCTION_26();
  }

  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A78);
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_15_6();
}

uint64_t sub_1C9514F7C(uint64_t (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[1] = a4;
  v16[2] = a3;
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  v8 = *(Schedule - 8);
  v9 = MEMORY[0x1EEE9AC00](Schedule - 8);
  v11 = (v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = 0;
  v13 = *(a5 + 16);
  while (v13 != v12)
  {
    sub_1C9518A38(a5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12, v11, type metadata accessor for PrecipitationNotificationFetchSchedule);
    v14 = objc_autoreleasePoolPush();
    sub_1C9515254(v11);
    ++v12;
    objc_autoreleasePoolPop(v14);
    sub_1C9518A98(v11, type metadata accessor for PrecipitationNotificationFetchSchedule);
  }

  return a1(v9);
}

uint64_t sub_1C9515254(double *a1)
{
  v3 = v2;
  v5 = sub_1C96A4A54();
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v34 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  MEMORY[0x1EEE9AC00](Schedule);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB77E80 != -1)
  {
    swift_once();
  }

  v10 = sub_1C96A6154();
  __swift_project_value_buffer(v10, qword_1EDB77E88);
  sub_1C9518A38(a1, v9, type metadata accessor for PrecipitationNotificationFetchSchedule);
  v11 = sub_1C96A6134();
  v12 = sub_1C96A76A4();
  v13 = os_log_type_enabled(v11, v12);
  v33 = v5;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v30[1] = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v31 = v2;
    v17 = v16;
    *&v35[0] = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    *&v37[0] = 0;
    *(&v37[0] + 1) = 0xE000000000000000;
    sub_1C96A7A94();

    strcpy(v37, "Subscription: ");
    HIBYTE(v37[0]) = -18;
    MEMORY[0x1CCA8CB00](*&v9[Schedule[5]], *&v9[Schedule[5] + 8]);
    MEMORY[0x1CCA8CB00](0x203A65746144203BLL, 0xE800000000000000);
    sub_1C95188DC();
    v18 = sub_1C96A7DB4();
    MEMORY[0x1CCA8CB00](v18);

    v19 = v37[0];
    sub_1C9518A98(v9, type metadata accessor for PrecipitationNotificationFetchSchedule);
    v20 = sub_1C9484164(v19, *(&v19 + 1), v35);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_1C945E000, v11, v12, "Updating fetched schedule: %{private,mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v21 = v17;
    v3 = v31;
    MEMORY[0x1CCA8E3D0](v21, -1, -1);
    MEMORY[0x1CCA8E3D0](v15, -1, -1);
  }

  else
  {

    sub_1C9518A98(v9, type metadata accessor for PrecipitationNotificationFetchSchedule);
  }

  sub_1C96A5444();
  v22 = (a1 + Schedule[5]);
  sub_1C9516F8C(v22);
  if (!v3)
  {
    NotificationStore.fetchSchedules.getter();
    v31 = sub_1C96A6304();

    v23 = *a1;
    v24 = *(a1 + 1);
    v25 = v34;
    (*(v32 + 16))(v34, a1 + Schedule[6], v33);
    v26 = *(a1 + Schedule[7]);
    v28 = *v22;
    v27 = *(v22 + 1);
    sub_1C96A53C4();
    sub_1C96A53C4();
    FetchScheduleEntity.init(id:date:gracePeriod:subscription:valid:)(v23, v24, v25, v28, v27, 1, v37, v26);
    v35[0] = v37[0];
    v35[1] = v37[1];
    v35[2] = v37[2];
    v36 = v38;
    sub_1C96A62A4();
    v33 = *(&v35[0] + 1);
    v34 = *&v35[0];
  }

  sub_1C96A5434();
}

uint64_t PrecipitationNotificationFetchScheduler.verifyFetchSchedule(with:)(uint64_t a1, uint64_t a2)
{
  v116 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  v5 = OUTLINED_FUNCTION_7(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_57(&v100 - v7);
  v109 = sub_1C96A61C4();
  OUTLINED_FUNCTION_1();
  v110 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v100 - v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_57(&v100 - v14);
  v15 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v100 - v20;
  v114 = *(v2 + 16);
  sub_1C96A5444();
  v22 = v121;
  if (qword_1EDB77E80 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v23 = sub_1C96A6154();
  v24 = __swift_project_value_buffer(v23, qword_1EDB77E88);
  v25 = v17 + 16;
  v111 = *(v17 + 16);
  v111(v21, v116, v15);
  v26 = sub_1C96A6134();
  v27 = sub_1C96A76A4();
  v28 = os_log_type_enabled(v26, v27);
  v117 = v15;
  v112 = v17 + 16;
  v105 = v17;
  if (v28)
  {
    OUTLINED_FUNCTION_9_8();
    v29 = OUTLINED_FUNCTION_11_6();
    v113 = v24;
    v30 = v29;
    v121 = v29;
    *v25 = 136446210;
    sub_1C95188DC();
    v31 = sub_1C96A7DB4();
    v32 = v22;
    v33 = a1;
    v35 = v34;
    v36 = *(v17 + 8);
    v36(v21, v117);
    v37 = sub_1C9484164(v31, v35, &v121);
    a1 = v33;
    v22 = v32;
    v15 = v117;

    *(v25 + 4) = v37;
    _os_log_impl(&dword_1C945E000, v26, v27, "Verifying schedule date %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v24 = v113;
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_7_2();
  }

  else
  {

    v36 = *(v17 + 8);
    v36(v21, v15);
  }

  NotificationStore.fetchSchedules.getter();
  v38 = v115;
  v100 = v36;
  v113 = v24;
  v101 = a1;
  sub_1C96A6314();

  v39 = MEMORY[0x1E69D6130];
  v119 = v15;
  v120 = MEMORY[0x1E69D6130];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v118);
  v111(boxed_opaque_existential_1, v116, v15);
  sub_1C96A6254();
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  v119 = MEMORY[0x1E69E6370];
  v120 = MEMORY[0x1E69D62E8];
  OUTLINED_FUNCTION_16_9();
  v42 = *(v41 - 256);
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  v43 = v106;
  sub_1C96A6214();
  v45 = v110 + 8;
  v44 = *(v110 + 8);
  v46 = v42;
  v47 = v109;
  v44(v46, v109);
  v48 = v38;
  v49 = v43;
  v44(v48, v47);
  v50 = sub_1C96A63E4();
  v51 = v107;
  __swift_storeEnumTagSinglePayload(v107, 1, 1, v50);
  sub_1C96A62D4();

  sub_1C9470AFC(v51, &qword_1EC3A4B60);
  v44(v49, v47);
  v57 = v121;
  if (v121)
  {
    v115 = v22;
    v58 = v122;
    v110 = v123;
    v109 = v124;
    v108 = v126;
    v107 = v127;
    v59 = v117;
    v61 = v111;
    v60 = v112;
    v111(v104, v116, v117);
    v62 = sub_1C96A6134();
    v63 = sub_1C96A76A4();
    if (os_log_type_enabled(v62, v63))
    {
      OUTLINED_FUNCTION_9_8();
      v64 = OUTLINED_FUNCTION_11_6();
      v113 = v58;
      v65 = v64;
      v121 = v64;
      *v60 = 136446210;
      sub_1C95188DC();
      v66 = sub_1C96A7DB4();
      v68 = v67;
      v69 = OUTLINED_FUNCTION_8_10();
      v70(v69);
      v71 = sub_1C9484164(v66, v68, &v121);

      *(v60 + 4) = v71;
      _os_log_impl(&dword_1C945E000, v62, v63, "Found valid schedules before date: %{public}s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      v61 = v111;
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      v80 = OUTLINED_FUNCTION_8_10();
      v81(v80);
    }

    v82 = v101;
    v61(v101, v116, v59);
    __swift_storeEnumTagSinglePayload(v82, 0, 1, v59);
    sub_1C96A6354();
    v83 = v57;
LABEL_17:
    sub_1C9518850(v83);
    v55 = v121;
    goto LABEL_10;
  }

  v110 = v45;
  NotificationStore.fetchSchedules.getter();
  sub_1C96A6314();

  v72 = v117;
  v119 = v117;
  v120 = v39;
  v73 = __swift_allocate_boxed_opaque_existential_1(v118);
  v111(v73, v116, v72);
  v74 = v115;
  sub_1C96A6244();
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  v119 = MEMORY[0x1E69E6370];
  v120 = MEMORY[0x1E69D62E8];
  OUTLINED_FUNCTION_16_9();
  v76 = *(v75 - 256);
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  v77 = v102;
  sub_1C96A6214();
  v78 = v109;
  v44(v76, v109);
  v44(v74, v78);
  v79 = v103;
  *v103 = 1702125924;
  *(v79 + 8) = 0xE400000000000000;
  (*(*(v50 - 8) + 104))(v79, *MEMORY[0x1E69D6228], v50);
  __swift_storeEnumTagSinglePayload(v79, 0, 1, v50);
  sub_1C96A62D4();

  sub_1C9470AFC(v79, &qword_1EC3A4B60);
  v44(v77, v78);
  v84 = v121;
  v85 = v101;
  if (v121)
  {
    v115 = v22;
    v87 = v122;
    v86 = v123;
    v88 = v124;
    v89 = v125;
    v90 = v126;
    v91 = v127;
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    v92 = sub_1C96A6134();
    v93 = sub_1C96A76A4();
    v94 = OUTLINED_FUNCTION_9_10();
    sub_1C9518850(v94);
    v117 = v92;
    if (os_log_type_enabled(v92, v93))
    {
      v95 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v118[0] = v116;
      *v95 = 141558275;
      *(v95 + 4) = 1752392040;
      *(v95 + 12) = 2081;
      v121 = v84;
      v122 = v87;
      v123 = v86;
      v124 = v88;
      v125 = v89;
      v126 = v90;
      v127 = v91;
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      v96 = sub_1C96A70A4();
      LODWORD(v113) = v93;
      v98 = sub_1C9484164(v96, v97, v118);

      *(v95 + 14) = v98;
      v99 = v117;
      _os_log_impl(&dword_1C945E000, v117, v113, "Found valid schedule for fetching verification: %{private,mask.hash}s", v95, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v116);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }

    sub_1C96A6354();
    sub_1C96A6354();
    v83 = OUTLINED_FUNCTION_9_10();
    goto LABEL_17;
  }

  v52 = sub_1C96A6134();
  v53 = sub_1C96A76A4();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = OUTLINED_FUNCTION_29();
    *v54 = 0;
    _os_log_impl(&dword_1C945E000, v52, v53, "Unable to verify schedule based on stored fetch schedules", v54, 2u);
    OUTLINED_FUNCTION_26();
  }

  __swift_storeEnumTagSinglePayload(v85, 1, 1, v117);
  v55 = 0;
LABEL_10:
  sub_1C96A5434();

  return v55;
}

Swift::Void __swiftcall PrecipitationNotificationFetchScheduler.unschedule()()
{
  v50 = sub_1C96A5A14();
  OUTLINED_FUNCTION_1();
  v49 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_57(v4 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_57(&i - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &i - v10;
  v12 = sub_1C96A61C4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  v18 = v17 - v16;
  v48 = v0;
  v46 = *(v0 + 16);
  sub_1C96A5444();
  v62 = v71;
  if (qword_1EDB77E80 != -1)
  {
LABEL_14:
    OUTLINED_FUNCTION_0_13();
  }

  v19 = sub_1C96A6154();
  v45 = __swift_project_value_buffer(v19, qword_1EDB77E88);
  v20 = sub_1C96A6134();
  v21 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v21))
  {
    v22 = OUTLINED_FUNCTION_29();
    *v22 = 0;
    _os_log_impl(&dword_1C945E000, v20, v21, "Unscheduling notification fetches", v22, 2u);
    OUTLINED_FUNCTION_26();
  }

  NotificationStore.fetchSchedules.getter();
  sub_1C96A6314();

  *(&v72 + 1) = MEMORY[0x1E69E6370];
  *&v73 = MEMORY[0x1E69D62E8];
  LOBYTE(v71) = 1;
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v71);
  v23 = sub_1C96A63E4();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v23);
  v24 = sub_1C96A62E4();

  sub_1C9470AFC(v11, &qword_1EC3A4B60);
  v25 = *(v14 + 8);
  v14 += 8;
  v25(v18, v12);
  v26 = 0;
  v44 = *(v24 + 16);
  v27 = (v24 + 40);
  for (i = v24; ; v24 = i)
  {
    if (v44 == v26)
    {

      v40 = v50;
      v41 = v49;
      __swift_project_boxed_opaque_existential_1((v48 + 24), *(v48 + 48));
      v42 = v47;
      sub_1C96A5A04();
      sub_1C96A5E74();
      (*(v41 + 8))(v42, v40);
      sub_1C96A5434();

      return;
    }

    if (v26 >= *(v24 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    v28 = *(v27 - 1);
    v18 = *v27;
    v29 = v27[1];
    v30 = v27[2];
    v31 = v27[3];
    v32 = v27[4];
    v56 = v27;
    v33 = v27[5];
    sub_1C96A3D04();
    v58 = v18;
    sub_1C96A3D04();
    sub_1C96A3D04();
    v61 = v30;
    sub_1C96A3D04();
    v60 = v31;
    sub_1C96A3D04();
    v59 = v32;
    sub_1C96A3D04();
    v57 = v33;
    sub_1C96A3D04();
    v34 = objc_autoreleasePoolPush();
    NotificationStore.fetchSchedules.getter();
    v52 = v26;
    v55 = v29;
    sub_1C96A6304();

    sub_1C96A6354();
    v35 = *(&v63 + 1);
    if (!*(&v63 + 1))
    {
      goto LABEL_17;
    }

    v36 = *&v63;
    v37 = v51;
    sub_1C96A6354();
    v38 = sub_1C96A4A54();
    if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
    {
      goto LABEL_18;
    }

    sub_1C96A6354();
    if (v70)
    {
      break;
    }

    v39 = v69;
    sub_1C96A6354();
    if (!v68)
    {
      goto LABEL_16;
    }

    v53 = v34;
    v54 = v28;
    FetchScheduleEntity.init(id:date:gracePeriod:subscription:valid:)(v36, v35, v37, v67, v68, 0, &v71, v39);
    v63 = v71;
    v64 = v72;
    v65 = v73;
    v66 = v74;
    sub_1C96A62A4();
    v14 = *(&v65 + 1);
    v12 = v65;
    v11 = v66;

    objc_autoreleasePoolPop(v53);

    v27 = v56 + 7;
    v26 = v52 + 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t PrecipitationNotificationFetchScheduler.unschedule(_:)(uint64_t a1)
{
  v2 = type metadata accessor for NotificationSubscription(0);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v20 - v5);
  if (qword_1EDB77E80 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v7 = sub_1C96A6154();
  __swift_project_value_buffer(v7, qword_1EDB77E88);
  v8 = OUTLINED_FUNCTION_3_6();
  sub_1C9518A38(v8, v6, v9);
  v10 = sub_1C96A6134();
  v11 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    v20 = a1;
    v15 = *v6;
    v14 = v6[1];
    sub_1C96A53C4();
    OUTLINED_FUNCTION_1_15();
    sub_1C9518A98(v6, v16);
    v17 = sub_1C9484164(v15, v14, &v21);
    a1 = v20;

    *(v12 + 14) = v17;
    _os_log_impl(&dword_1C945E000, v10, v11, "Unscheduling subscription %{private,mask.hash}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  else
  {

    OUTLINED_FUNCTION_1_15();
    sub_1C9518A98(v6, v18);
  }

  return sub_1C9516F8C(a1);
}

uint64_t sub_1C9516F8C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v100 = v82 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v99 = v82 - v7;
  v95 = sub_1C96A61C4();
  v96 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v9 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v97 = (v82 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v82 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v102 = (v82 - v16);
  v17 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = v82 - v21;
  if (qword_1EDB77E80 != -1)
  {
    swift_once();
  }

  v23 = sub_1C96A6154();
  v24 = __swift_project_value_buffer(v23, qword_1EDB77E88);
  sub_1C9518A38(a1, v22, type metadata accessor for NotificationSubscription);
  v94 = v24;
  v25 = sub_1C96A6134();
  v26 = sub_1C96A76A4();
  v27 = os_log_type_enabled(v25, v26);
  v85 = v9;
  v98 = a1;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v101 = v14;
    v30 = v29;
    *&v110 = v29;
    *v28 = 141558275;
    *(v28 + 4) = 1752392040;
    *(v28 + 12) = 2081;
    sub_1C9518B30(v22, v19, type metadata accessor for NotificationSubscription);
    v32 = *v19;
    v31 = v19[1];
    sub_1C96A53C4();
    sub_1C9518A98(v19, type metadata accessor for NotificationSubscription);
    v33 = sub_1C9484164(v32, v31, &v110);

    *(v28 + 14) = v33;
    _os_log_impl(&dword_1C945E000, v25, v26, "Invalidating schedules for subscription: %{private,mask.hash}s", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v34 = v30;
    v2 = v1;
    v14 = v101;
    MEMORY[0x1CCA8E3D0](v34, -1, -1);
    MEMORY[0x1CCA8E3D0](v28, -1, -1);
  }

  else
  {

    sub_1C9518A98(v22, type metadata accessor for NotificationSubscription);
  }

  v35 = *(v103 + 16);
  sub_1C96A5444();
  v101 = v110;
  v36 = v2;
  NotificationStore.fetchSchedules.getter();
  v37 = v95;
  v38 = v96;
  v39 = v102;
  if (v36)
  {
    v103 = v36;
LABEL_27:
    sub_1C96A5434();
  }

  sub_1C96A6314();

  *(&v111 + 1) = MEMORY[0x1E69E6370];
  *&v112 = MEMORY[0x1E69D62E8];
  LOBYTE(v110) = 1;
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v110);
  v41 = *v98;
  v40 = v98[1];
  *(&v111 + 1) = MEMORY[0x1E69E6158];
  *&v112 = MEMORY[0x1E69D62D8];
  *&v110 = v41;
  *(&v110 + 1) = v40;
  sub_1C96A53C4();
  v42 = v97;
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v110);
  sub_1C96A6214();
  v43 = *(v38 + 8);
  v43(v42, v37);
  v43(v14, v37);
  v44 = sub_1C96A63E4();
  v45 = v99;
  __swift_storeEnumTagSinglePayload(v99, 1, 1, v44);
  v46 = sub_1C96A62E4();
  v103 = 0;
  v82[1] = v35;
  v87 = v46;

  sub_1C9470AFC(v45, &qword_1EC3A4B60);
  v96 = v38 + 8;
  v43(v39, v37);
  result = v87;
  v86 = *(v87 + 16);
  if (!v86)
  {
LABEL_21:

    v78 = objc_autoreleasePoolPush();
    v79 = v103;
    NotificationStore.fetchSchedules.getter();
    v103 = v79;
    if (!v79)
    {
      sub_1C96A6334();

      *(&v111 + 1) = sub_1C96A4A54();
      *&v112 = MEMORY[0x1E69D6130];
      __swift_allocate_boxed_opaque_existential_1(&v110);
      sub_1C96A49B4();
      v80 = v85;
      sub_1C96A6204();
      __swift_destroy_boxed_opaque_existential_1Tm(&v110);
      v81 = v103;
      sub_1C96A63C4();
      v103 = v81;
      v43(v80, v95);
    }

    objc_autoreleasePoolPop(v78);
    goto LABEL_27;
  }

  v49 = 0;
  v50 = (v87 + 40);
  *&v47 = 141558275;
  v83 = v47;
  v84 = v43;
  while (v49 < *(result + 16))
  {
    v92 = v49;
    v51 = *(v50 - 1);
    v52 = *v50;
    v53 = v50[1];
    v54 = v50[2];
    v56 = v50[3];
    v55 = v50[4];
    v91 = v50;
    v57 = v50[5];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v58 = sub_1C96A6134();
    v59 = sub_1C96A76A4();

    v102 = v56;

    LODWORD(v90) = v59;
    v97 = v58;
    v60 = os_log_type_enabled(v58, v59);
    v99 = v51;
    v98 = v55;
    v93 = v57;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v62 = v54;
      v63 = swift_slowAlloc();
      *&v104[0] = v63;
      *v61 = v83;
      *(v61 + 4) = 1752392040;
      *(v61 + 12) = 2081;
      *&v110 = v51;
      *(&v110 + 1) = v52;
      *&v111 = v53;
      *(&v111 + 1) = v62;
      *&v112 = v102;
      *(&v112 + 1) = v55;
      v113 = v57;
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      v64 = sub_1C96A70A4();
      v66 = sub_1C9484164(v64, v65, v104);

      *(v61 + 14) = v66;
      v67 = v53;
      v68 = v97;
      _os_log_impl(&dword_1C945E000, v97, v90, "Invalidating schedule %{private,mask.hash}s", v61, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      v69 = v63;
      v54 = v62;
      MEMORY[0x1CCA8E3D0](v69, -1, -1);
      MEMORY[0x1CCA8E3D0](v61, -1, -1);
    }

    else
    {

      v67 = v53;
    }

    v70 = objc_autoreleasePoolPush();
    v71 = v103;
    NotificationStore.fetchSchedules.getter();
    v103 = v71;
    if (v71)
    {

LABEL_26:
      objc_autoreleasePoolPop(v70);

      goto LABEL_27;
    }

    v97 = v54;
    sub_1C96A6304();

    result = sub_1C96A6354();
    v72 = *(&v104[0] + 1);
    if (!*(&v104[0] + 1))
    {
      goto LABEL_32;
    }

    v73 = *v104;
    v74 = v100;
    sub_1C96A6354();
    v75 = sub_1C96A4A54();
    result = __swift_getEnumTagSinglePayload(v74, 1, v75);
    if (result == 1)
    {
      goto LABEL_31;
    }

    result = sub_1C96A6354();
    if (v109)
    {
      goto LABEL_30;
    }

    v76 = v108;
    result = sub_1C96A6354();
    if (!v107)
    {
      goto LABEL_29;
    }

    v89 = v67;
    v90 = v52;
    FetchScheduleEntity.init(id:date:gracePeriod:subscription:valid:)(v73, v72, v100, v106, v107, 0, &v110, v76);
    v104[0] = v110;
    v104[1] = v111;
    v104[2] = v112;
    v105 = v113;
    v77 = v103;
    sub_1C96A62A4();
    v103 = v77;
    if (v77)
    {

      goto LABEL_26;
    }

    v88 = v70;
    v49 = v92 + 1;

    objc_autoreleasePoolPop(v88);

    v50 = v91 + 7;
    v43 = v84;
    result = v87;
    if (v86 == v49)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t PrecipitationNotificationFetchScheduler.reschedule()()
{
  if (qword_1EDB77E80 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v0 = sub_1C96A6154();
  __swift_project_value_buffer(v0, qword_1EDB77E88);
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v2))
  {
    v3 = OUTLINED_FUNCTION_29();
    *v3 = 0;
    _os_log_impl(&dword_1C945E000, v1, v2, "Attempting to determine rescheduling date based on stored fetch schedules", v3, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F0);
  OUTLINED_FUNCTION_23();
  return sub_1C96A5714();
}

uint64_t sub_1C9517D30(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v82 = a2;
  v83 = a1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v81 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v67 - v10;
  v12 = sub_1C96A5A14();
  v75 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (v67 - v16);
  v18 = sub_1C96A61C4();
  v76 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v67 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v67 - v25;
  v84 = a5;
  v78 = *(a5 + 16);
  sub_1C96A5444();
  v77 = v89;
  NotificationStore.fetchSchedules.getter();
  v72 = v14;
  v71 = v12;
  v73 = v11;
  v74 = sub_1C96A6314();

  v87 = MEMORY[0x1E69E6370];
  v88 = MEMORY[0x1E69D62E8];
  LOBYTE(v85) = 1;
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v85);
  v27 = sub_1C96A4A54();
  v87 = v27;
  v88 = MEMORY[0x1E69D6130];
  __swift_allocate_boxed_opaque_existential_1(&v85);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  sub_1C96A61F4();
  __swift_destroy_boxed_opaque_existential_1Tm(&v85);
  sub_1C96A6214();
  v28 = *(v76 + 8);
  v28(v20, v18);
  v28(v23, v18);
  *v17 = 1702125924;
  v17[1] = 0xE400000000000000;
  v29 = *MEMORY[0x1E69D6228];
  v30 = sub_1C96A63E4();
  (*(*(v30 - 8) + 104))(v17, v29, v30);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v30);
  sub_1C96A62D4();

  sub_1C9470AFC(v17, &qword_1EC3A4B60);
  v28(v26, v18);
  v41 = v89;
  if (!v89)
  {
    if (qword_1EDB77E80 != -1)
    {
      swift_once();
    }

    v31 = sub_1C96A6154();
    __swift_project_value_buffer(v31, qword_1EDB77E88);
    v32 = sub_1C96A6134();
    v33 = sub_1C96A7684();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1C945E000, v32, v33, "Failed to find valid schedules to leverage for rescheduling", v34, 2u);
      MEMORY[0x1CCA8E3D0](v34, -1, -1);
    }

    PrecipitationNotificationFetchScheduler.unschedule()();
    v35 = sub_1C96A4A54();
    v36 = v81;
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v35);
    v37 = v79;
    sub_1C94D63E8(v36, v79);
    v38 = v37 + *(v80 + 48);
    *v38 = 0;
    *(v38 + 8) = 1;
    v83(v37);
    sub_1C9470AFC(v37, &qword_1EC3A50F8);
    v39 = v36;
    goto LABEL_7;
  }

  v76 = v27;
  v42 = v90;
  v43 = v91;
  v44 = v92;
  v45 = v93;
  v47 = v94;
  v46 = v95;
  if (qword_1EDB77E80 != -1)
  {
    swift_once();
  }

  v48 = sub_1C96A6154();
  __swift_project_value_buffer(v48, qword_1EDB77E88);
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  v49 = sub_1C96A6134();
  v50 = sub_1C96A76A4();
  sub_1C9518850(v41);
  v51 = os_log_type_enabled(v49, v50);
  v52 = v44;
  v70 = v42;
  v69 = v43;
  v74 = v45;
  v68 = v41;
  v67[2] = v47;
  v67[1] = v46;
  if (v51)
  {
    v53 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    v85 = v67[0];
    *v53 = 141558275;
    *(v53 + 4) = 1752392040;
    *(v53 + 12) = 2081;
    v89 = v41;
    v90 = v42;
    v91 = v43;
    v92 = v52;
    v93 = v45;
    v94 = v47;
    v95 = v46;
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    v54 = sub_1C96A70A4();
    v56 = sub_1C9484164(v54, v55, &v85);

    *(v53 + 14) = v56;
    _os_log_impl(&dword_1C945E000, v49, v50, "Registering for activity scheduling based on schedule: %{private,mask.hash}s", v53, 0x16u);
    v57 = v67[0];
    __swift_destroy_boxed_opaque_existential_1Tm(v67[0]);
    MEMORY[0x1CCA8E3D0](v57, -1, -1);
    MEMORY[0x1CCA8E3D0](v53, -1, -1);
  }

  v58 = v71;
  v59 = v75;
  v60 = v72;
  sub_1C9469B6C(v84 + 24, &v89);
  __swift_project_boxed_opaque_existential_1(&v89, v92);
  sub_1C96A5A04();
  v61 = v73;
  sub_1C96A6354();
  result = __swift_getEnumTagSinglePayload(v61, 1, v76);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    result = sub_1C96A6354();
    if ((v86 & 1) == 0)
    {
      sub_1C96A5E64();
      (*(v59 + 8))(v60, v58);
      (*(*(v76 - 8) + 8))(v61);
      __swift_destroy_boxed_opaque_existential_1Tm(&v89);
      v62 = v81;
      sub_1C96A6354();
      sub_1C96A6354();
      v63 = v89;
      v64 = v90;
      v65 = v79;
      sub_1C94D63E8(v62, v79);
      v66 = v65 + *(v80 + 48);
      *v66 = v63;
      *(v66 + 8) = v64;
      v83(v65);
      sub_1C9518850(v68);
      sub_1C9470AFC(v65, &qword_1EC3A50F8);
      v39 = v62;
LABEL_7:
      sub_1C9470AFC(v39, &unk_1EC3A5430);
      sub_1C96A5434();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9518850(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1C95188DC()
{
  result = qword_1EDB7CC50;
  if (!qword_1EDB7CC50)
  {
    sub_1C96A4A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CC50);
  }

  return result;
}

uint64_t sub_1C9518A38(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C9518A98(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C9518B30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t GeocodeConfiguration.ServerSideRevGeo.regionAllowlistGeoJSON.getter()
{
  v1 = *(v0 + 8);
  sub_1C96A53C4();
  return v1;
}

WeatherCore::GeocodeConfiguration::ServerSideRevGeo __swiftcall GeocodeConfiguration.ServerSideRevGeo.init(enablementRate:regionAllowlistGeoJSON:)(Swift::Double_optional enablementRate, Swift::String_optional regionAllowlistGeoJSON)
{
  v4 = v2;
  object = regionAllowlistGeoJSON.value._object;
  v6 = v3;
  v7 = 1.0;
  if ((regionAllowlistGeoJSON.value._countAndFlagsBits & 1) == 0)
  {
    *&enablementRate.is_nil = sub_1C96A7534();
  }

  *v6 = v7;
  *(v6 + 8) = object;
  *(v6 + 16) = v4;
  result.regionAllowlistGeoJSON.value._object = regionAllowlistGeoJSON.value._countAndFlagsBits;
  LOBYTE(result.regionAllowlistGeoJSON.value._countAndFlagsBits) = enablementRate.is_nil;
  result.enablementRate = v7;
  return result;
}

uint64_t static GeocodeConfiguration.ServerSideRevGeo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a2 + 16);
    if (v3)
    {
      if (v4)
      {
        v5 = *(a1 + 8) == *(a2 + 8) && v3 == v4;
        if (v5 || (sub_1C96A7DE4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t GeocodeConfiguration.serverSideRevGeo.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  *a1 = v1[1];
  a1[1] = v3;
  a1[2] = v2;
  return sub_1C96A53C4();
}

WeatherCore::GeocodeConfiguration __swiftcall GeocodeConfiguration.init(legacyRevGeoCountryList:serverSideRevGeo:)(Swift::OpaquePointer_optional legacyRevGeoCountryList, WeatherCore::GeocodeConfiguration::ServerSideRevGeo_optional serverSideRevGeo)
{
  v3 = *(*&legacyRevGeoCountryList.is_nil + 16);
  if (v3 == 1)
  {
    v4 = 0;
    v3 = 0;
    v5 = 1.0;
  }

  else
  {
    v4 = *(*&legacyRevGeoCountryList.is_nil + 8);
    v5 = **&legacyRevGeoCountryList.is_nil;
  }

  rawValue = &unk_1F48FACF0;
  if (legacyRevGeoCountryList.value._rawValue)
  {
    rawValue = legacyRevGeoCountryList.value._rawValue;
  }

  *v2 = rawValue;
  *(v2 + 8) = v5;
  *(v2 + 16) = v4;
  *(v2 + 24) = v3;
  result.serverSideRevGeo.regionAllowlistGeoJSON.value._object = serverSideRevGeo.value.regionAllowlistGeoJSON.value._countAndFlagsBits;
  result.legacyRevGeoCountryList = legacyRevGeoCountryList.value;
  LOBYTE(result.serverSideRevGeo.regionAllowlistGeoJSON.value._countAndFlagsBits) = legacyRevGeoCountryList.is_nil;
  result.serverSideRevGeo.enablementRate = v5;
  return result;
}

uint64_t GeocodeConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5110);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[2];
  v14 = v1[3];
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1C947DE54();
  sub_1C96A53C4();
  sub_1C96A7F54();
  v16 = v9;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5FC0);
  sub_1C946E8FC(&unk_1EDB7CE70);
  OUTLINED_FUNCTION_0_14();

  if (!v11)
  {
    v16 = v15;
    v17 = v14;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430);
    sub_1C948A00C();
    OUTLINED_FUNCTION_0_14();
    LOBYTE(v16) = 2;
    sub_1C96A7D44();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C9518EFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94DED80();
  *a1 = result;
  return result;
}

unint64_t sub_1C9518F2C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C947DEB0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C9518F58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94DED80();
  *a1 = result;
  return result;
}

uint64_t sub_1C9518F80(uint64_t a1)
{
  v2 = sub_1C947DE54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9518FBC(uint64_t a1)
{
  v2 = sub_1C947DE54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static GeocodeConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1C94BCA20();
  if ((v8 & 1) != 0 && v2 == v5)
  {
    if (v3)
    {
      if (v6)
      {
        v9 = v4 == v7 && v3 == v6;
        if (v9 || (sub_1C96A7DE4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C95190B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C95190F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1C9519144(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1C95191AC()
{
  result = qword_1EC3A5118;
  if (!qword_1EC3A5118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5118);
  }

  return result;
}

uint64_t sub_1C9519200()
{
  qword_1EDB94AA8 = 0xD00000000000001BLL;
  unk_1EDB94AB0 = 0x80000001C96CDD00;
  result = swift_getKeyPath();
  qword_1EDB94AB8 = result;
  return result;
}

uint64_t sub_1C9519250@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DataProtectionValue();
  OUTLINED_FUNCTION_1_16();
  sub_1C94ABB48(v2, v3);
  sub_1C96A6BE4();
  result = type metadata accessor for DataProtectionData();
  *(a1 + *(result + 20)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1C95192E0()
{
  if (qword_1EDB7CA78 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDB94AA8;
  sub_1C96A53C4();
  sub_1C96A3D04();
  return v0;
}

uint64_t sub_1C9519360(uint64_t a1)
{
  v2 = sub_1C94ABB48(&unk_1EDB7CA68, type metadata accessor for DataProtectionData);

  return MEMORY[0x1EEDF4618](a1, v2);
}

uint64_t sub_1C95193D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1C9519440(uint64_t a1)
{
  v2 = sub_1C94ABB48(&qword_1EDB7CA40, type metadata accessor for DataProtectionData);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1C95194AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABB48(&unk_1EDB7CA68, type metadata accessor for DataProtectionData);

  return MEMORY[0x1EEDF4600](a1, a2, v4);
}

uint64_t sub_1C9519528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABB48(&unk_1EDB7CA68, type metadata accessor for DataProtectionData);

  return MEMORY[0x1EEDF45A8](a1, a2, v4);
}

uint64_t sub_1C95195AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABB48(&unk_1EDB7CA68, type metadata accessor for DataProtectionData);

  return MEMORY[0x1EEDF45D0](a1, a2, v4);
}

uint64_t sub_1C9519628(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABB48(&unk_1EDB7CA68, type metadata accessor for DataProtectionData);

  return MEMORY[0x1EEDF4610](a1, a2, v4);
}

uint64_t sub_1C95196A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94ABB48(&unk_1EDB7CA68, type metadata accessor for DataProtectionData);

  return MEMORY[0x1EEDF45D8](a1, a2, a3, v6);
}

uint64_t sub_1C9519738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABB48(&unk_1EDB7CA68, type metadata accessor for DataProtectionData);

  return MEMORY[0x1EEDF4608](a1, a2, v4);
}

uint64_t sub_1C95197B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABB48(&unk_1EDB7CA68, type metadata accessor for DataProtectionData);

  return MEMORY[0x1EEDF45E0](a1, a2, v4);
}

uint64_t sub_1C9519830(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABB48(&unk_1EDB7CA68, type metadata accessor for DataProtectionData);

  return MEMORY[0x1EEDF45C0](a1, a2, v4);
}

uint64_t sub_1C95198B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABB48(&unk_1EDB7CA68, type metadata accessor for DataProtectionData);

  return MEMORY[0x1EEDF45B8](a1, a2, v4);
}

uint64_t sub_1C9519938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94ABB48(&unk_1EDB7CA68, type metadata accessor for DataProtectionData);

  return MEMORY[0x1EEDF45A0](a1, a2, a3, v6);
}

uint64_t sub_1C95199CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABB48(&unk_1EDB7CA68, type metadata accessor for DataProtectionData);

  return MEMORY[0x1EEDF4588](a1, a2, v4);
}

uint64_t sub_1C9519A48(uint64_t a1)
{
  v2 = sub_1C94ABB48(&unk_1EDB7CA68, type metadata accessor for DataProtectionData);

  return MEMORY[0x1EEDF45B0](a1, v2);
}

uint64_t sub_1C9519AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABB48(&unk_1EDB7CA68, type metadata accessor for DataProtectionData);

  return MEMORY[0x1EEDF4590](a1, a2, v4);
}

uint64_t sub_1C9519B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABB48(&unk_1EDB7CA68, type metadata accessor for DataProtectionData);

  return MEMORY[0x1EEDF45E8](a1, a2, v4);
}

void sub_1C9519BBC()
{
  sub_1C94ABB48(&unk_1EDB7CA68, type metadata accessor for DataProtectionData);

  JUMPOUT(0x1CCA8C190);
}

uint64_t sub_1C9519E40(uint64_t a1)
{
  v2 = sub_1C94ABB48(&unk_1EDB7CA68, type metadata accessor for DataProtectionData);

  return MEMORY[0x1EEDF4598](a1, v2);
}

uint64_t sub_1C9519EE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120);
  v0 = sub_1C96A6BA4();
  if (v0 == sub_1C96A6BA4() && (type metadata accessor for DataProtectionValue(), OUTLINED_FUNCTION_1_16(), sub_1C94ABB48(v1, v2), (sub_1C96A6B94() & 1) != 0) && (type metadata accessor for DataProtectionData(), OUTLINED_FUNCTION_0_15(), sub_1C94ABB48(v3, v4), (sub_1C96A6B14() & 1) == 0))
  {
    v5 = sub_1C96A6B14() ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C951A02C(uint64_t a1)
{
  v40 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5128);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v36 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5130);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v36 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5138);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v36 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120);
  v13 = *(v12 - 8);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5140) - 8;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5148);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v36 - v26;
  (*(v13 + 16))(&v36 - v26, v43, v12, v25);
  v36 = v27;
  sub_1C951A60C(v27, v23);
  (*(v13 + 32))(v16, v23, v12);
  sub_1C9469CB4(&qword_1EDB7ABA8, &qword_1EC3A5120);
  sub_1C96A71F4();
  v37 = *(v17 + 44);
  *&v20[v37] = 0;
  v43 = sub_1C9469CB4(&qword_1EDB7ABB8, &qword_1EC3A5150);
  v28 = 0;
  v39 = v11;
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5150);
    sub_1C96A7944();
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
    {
      sub_1C9470AFC(v20, &qword_1EC3A5140);
      sub_1C9470AFC(v36, &qword_1EC3A5148);
      return sub_1C9470AFC(v3, &qword_1EC3A5128);
    }

    v29 = v42;
    sub_1C951A67C(v3, v42);
    v30 = (v11 + *(v41 + 48));
    *v11 = v28;
    result = sub_1C951A67C(v29, v30);
    if (__OFADD__(v28, 1))
    {
      break;
    }

    v32 = v38;
    *&v20[v37] = v28 + 1;
    v33 = v30[1];
    v34 = *(v4 + 48);
    *v32 = *v30;
    v32[1] = v33;
    sub_1C951A6EC(v30 + v34, v32 + v34);
    sub_1C96A53C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158);
    sub_1C96A66E4();
    sub_1C96A7144();

    type metadata accessor for DataProtectionValue();
    sub_1C96A66E4();
    sub_1C96A7144();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5160);
    sub_1C96A66E4();
    v35 = v44;
    if (v44 == 0.0)
    {
      v35 = 0.0;
    }

    v11 = v39;
    MEMORY[0x1CCA8D8A0](*&v35);
    sub_1C9470AFC(v32, &qword_1EC3A5130);
    sub_1C9470AFC(v11, &qword_1EC3A5138);
    ++v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C951A588()
{
  sub_1C96A7EE4();
  sub_1C951A02C(v1);
  return sub_1C96A7F24();
}

uint64_t sub_1C951A5D0()
{
  sub_1C96A7EE4();
  sub_1C951A02C(v1);
  return sub_1C96A7F24();
}

uint64_t sub_1C951A60C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C951A67C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C951A6EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataProtectionValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static HashFunction.hash(encodable:)(void *a1)
{
  v3 = sub_1C96A41A4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_14();
  sub_1C96A4204();
  swift_allocObject();
  sub_1C96A41F4();
  sub_1C96A4194();
  sub_1C96A41B4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1C96A41E4();
  if (v1)
  {
  }

  v7 = v4;
  v8 = v5;
  sub_1C951AB04();
  sub_1C96A6E64();

  return sub_1C9482F3C(v7, v8);
}

unint64_t sub_1C951AB04()
{
  result = qword_1EC3A5178;
  if (!qword_1EC3A5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5178);
  }

  return result;
}

uint64_t Encodable.insecureMD5Digest()(uint64_t a1, uint64_t a2)
{
  v6[4] = a2;
  v6[3] = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  sub_1C9486BC4(v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

Swift::String __swiftcall Encodable.insecureMD5(default:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  v5 = sub_1C96A6EB4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  Encodable.insecureMD5Digest()(v4, v3);
  OUTLINED_FUNCTION_2_15();
  sub_1C94877B0(v8, v9, v10, MEMORY[0x1E69666B0]);
  v11 = sub_1C96A4844();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_4_4();
  sub_1C9482F3C(v14, v15);
  v16 = v11;
  v17 = v13;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

void *sub_1C951AD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1C951B164(sub_1C951B38C, v5, a1, a2);
}

uint64_t sub_1C951AD58(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      sub_1C96A3D04();
      sub_1C9482F3C(v6, v5);
      *v4 = xmmword_1C96ACFD0;
      sub_1C9482F3C(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      sub_1C96A3D04();
      if (sub_1C96A43E4() && __OFSUB__(v6, sub_1C96A4404()))
      {
        goto LABEL_24;
      }

      sub_1C96A4414();
      swift_allocObject();
      v13 = sub_1C96A43C4();

      v11 = v13;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      sub_1C96A3D04();
      v3 = sub_1C951B1C8(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C9482F3C(v6, v5);
      v16 = v6;
      v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_1C96ACFD0;
      sub_1C9482F3C(0, 0xC000000000000000);
      sub_1C96A4794();
      v6 = v16;
      v9 = sub_1C951B1C8(*(v16 + 16), *(v16 + 24), a1);
      if (v2)
      {
        v10 = v17 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v17 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

      return v3;
    case 3uLL:
      memset(v18, 0, 15);
      a1(&v16, v18, v18);
      if (!v2)
      {
        return v16;
      }

      return v3;
    default:
      v3 = v6 >> 8;
      sub_1C9482F3C(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        v3 = v16;
      }

      v8 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v4 = v18[0];
      v4[1] = v8;
      return v3;
  }
}

uint64_t sub_1C951B11C(uint64_t result)
{
  if (result)
  {
    result = sub_1C96A7AA4();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C951B164(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1C951B1C8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1C96A43E4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1C96A4404();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1C96A43F4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void *sub_1C951B27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_1C951AD04(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1C951B2D0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C96A71C4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1CCA8CB30](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1C951B34C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C951B11C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void sub_1C951B3AC()
{
  OUTLINED_FUNCTION_76_0();
  v1 = v0;
  v2 = sub_1C96A4A54();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v2);
  sub_1C96A7E24();
  OUTLINED_FUNCTION_18_8();
  v5 = sub_1C96A7004();
  OUTLINED_FUNCTION_56_0(v5, sel_setObject_forKey_);
  swift_unknownObjectRelease();
}

void sub_1C951B4A8()
{
  OUTLINED_FUNCTION_76_0();
  sub_1C96A7E24();
  OUTLINED_FUNCTION_18_8();
  v0 = sub_1C96A7004();
  OUTLINED_FUNCTION_56_0(v0, sel_setObject_forKey_);
  swift_unknownObjectRelease();
}

void sub_1C951B510()
{
  OUTLINED_FUNCTION_76_0();
  sub_1C96A53C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6770);
  sub_1C96A7E24();
  OUTLINED_FUNCTION_18_8();
  v0 = sub_1C96A7004();
  OUTLINED_FUNCTION_56_0(v0, sel_setObject_forKey_);
  swift_unknownObjectRelease();
}

void sub_1C951B58C()
{
  sub_1C96A7E24();
  OUTLINED_FUNCTION_18_8();
  v0 = sub_1C96A7004();
  OUTLINED_FUNCTION_56_0(v0, sel_setObject_forKey_);
  swift_unknownObjectRelease();
}

void sub_1C951B5F8()
{
  OUTLINED_FUNCTION_76_0();
  sub_1C96A7E24();
  OUTLINED_FUNCTION_18_8();
  v0 = sub_1C96A7004();
  OUTLINED_FUNCTION_56_0(v0, sel_setObject_forKey_);
  swift_unknownObjectRelease();
}

uint64_t sub_1C951B66C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C951B764()
{
  OUTLINED_FUNCTION_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  OUTLINED_FUNCTION_24_5();

  return v1();
}

uint64_t sub_1C951B7DC()
{
  OUTLINED_FUNCTION_30();
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_4_14();
  }

  v1 = sub_1C96A6154();
  v0[9] = __swift_project_value_buffer(v1, qword_1EDB7AC90);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_41(v3))
  {
    v4 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_47(v4);
    OUTLINED_FUNCTION_16_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_38_0();
  }

  v10 = v0[8];

  v11 = sub_1C94ACEF0();
  v12 = swift_task_alloc();
  v0[10] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51A8);
  *v12 = v0;
  v12[1] = sub_1C951B950;
  v14 = v0[8];

  return MEMORY[0x1EEE6DDE0](v0 + 2, v10, v11, 0xD000000000000019, 0x80000001C96CDF90, sub_1C95247B8, v14, v13);
}

uint64_t sub_1C951B950()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C951BA48()
{
  OUTLINED_FUNCTION_49();
  v60 = v0;
  v1 = *(v0 + 16);
  *(v0 + 88) = v1;
  if (v1)
  {
    *(v0 + 24) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    if (OUTLINED_FUNCTION_118_0() && *(v0 + 120) == 1)
    {
      v3 = sub_1C96A6134();
      v4 = sub_1C96A7684();
      if (OUTLINED_FUNCTION_41(v4))
      {
        v5 = OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_47(v5);
        OUTLINED_FUNCTION_16_4();
        _os_log_impl(v6, v7, v8, v9, v10, 2u);
        OUTLINED_FUNCTION_38_0();
      }

      v11 = swift_task_alloc();
      *(v0 + 96) = v11;
      *v11 = v0;
      v12 = sub_1C951BEBC;
LABEL_19:
      v11[1] = v12;

      return sub_1C951CE94();
    }

    *(v0 + 32) = v1;
    v13 = v1;
    if (OUTLINED_FUNCTION_118_0() && !*(v0 + 121))
    {
      v34 = sub_1C96A6134();
      v42 = sub_1C96A7684();
      if (!OUTLINED_FUNCTION_41(v42))
      {
LABEL_27:

        v49 = sub_1C96A6134();
        v50 = sub_1C96A76A4();
        v51 = OUTLINED_FUNCTION_14_7(v50);
        v52 = *(v0 + 88);
        if (v51)
        {
          v53 = OUTLINED_FUNCTION_29();
          *v53 = 0;
          OUTLINED_FUNCTION_69();
          _os_log_impl(v54, v55, v56, v57, v53, 2u);
          OUTLINED_FUNCTION_40();
        }

        goto LABEL_30;
      }

      v43 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_47(v43);
      OUTLINED_FUNCTION_16_4();
      _os_log_impl(v44, v45, v46, v47, v48, 2u);
    }

    else
    {
      *(v0 + 40) = v1;
      v14 = v1;
      if (OUTLINED_FUNCTION_118_0() && *(v0 + 122) == 2)
      {
        v15 = sub_1C96A6134();
        v16 = sub_1C96A7684();
        if (OUTLINED_FUNCTION_41(v16))
        {
          v17 = OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_47(v17);
          OUTLINED_FUNCTION_16_4();
          _os_log_impl(v18, v19, v20, v21, v22, 2u);
          OUTLINED_FUNCTION_38_0();
        }

        v11 = swift_task_alloc();
        *(v0 + 104) = v11;
        *v11 = v0;
        v12 = sub_1C951C068;
        goto LABEL_19;
      }

      *(v0 + 48) = v1;
      v23 = v1;
      if (OUTLINED_FUNCTION_118_0() && *(v0 + 123) == 3)
      {
        v24 = sub_1C96A6134();
        v25 = sub_1C96A7684();
        if (OUTLINED_FUNCTION_41(v25))
        {
          v26 = OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_47(v26);
          OUTLINED_FUNCTION_16_4();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_38_0();
        }

        v11 = swift_task_alloc();
        *(v0 + 112) = v11;
        *v11 = v0;
        v12 = sub_1C951C160;
        goto LABEL_19;
      }

      v33 = v1;
      v34 = sub_1C96A6134();
      v35 = sub_1C96A7684();

      if (!os_log_type_enabled(v34, v35))
      {
        goto LABEL_27;
      }

      v36 = OUTLINED_FUNCTION_9_8();
      v37 = OUTLINED_FUNCTION_8_4();
      v59 = v37;
      *v36 = 136446210;
      *(v0 + 56) = v1;
      v38 = v1;
      v39 = sub_1C96A70A4();
      v41 = sub_1C9484164(v39, v40, &v59);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1C945E000, v34, v35, "NotificationSubscriptionManager: Unhandled verification error :%{public}s)", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_26();
    goto LABEL_27;
  }

LABEL_30:
  OUTLINED_FUNCTION_17();

  return v58();
}

uint64_t sub_1C951BEBC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C951BFB4()
{
  OUTLINED_FUNCTION_30();
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  v3 = OUTLINED_FUNCTION_14_7(v2);
  v4 = *(v0 + 88);
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_29();
    *v5 = 0;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v6, v7, v8, v9, v5, 2u);
    OUTLINED_FUNCTION_40();
  }

  OUTLINED_FUNCTION_17();

  return v10();
}

uint64_t sub_1C951C068()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C951C160()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1C951C258()
{
  OUTLINED_FUNCTION_103();
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_55_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  OUTLINED_FUNCTION_7(v9);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_43_0(v11, v19);
  v12 = sub_1C96A7414();
  v13 = OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_108_1(v13, v14, v12);
  if (v3 == 1)
  {
    sub_1C94AC78C(v0, &qword_1EC3A5090);
  }

  else
  {
    v3 = sub_1C96A7404();
    OUTLINED_FUNCTION_8_1();
    (*(v15 + 8))(v0, v12);
  }

  OUTLINED_FUNCTION_120_0();

  if (v4)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_119_0();
    OUTLINED_FUNCTION_73_0();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_110_0();
      OUTLINED_FUNCTION_54();
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_115_0(v16);
      if (v8)
      {
        OUTLINED_FUNCTION_53();
      }

      else
      {
        v17 = 0;
      }

      OUTLINED_FUNCTION_51_1(v17);
      OUTLINED_FUNCTION_104_1();
      swift_task_create();

      sub_1C94AC78C(v2, &qword_1EC3A5090);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_106_0();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_1C94AC78C(v2, &qword_1EC3A5090);
  OUTLINED_FUNCTION_54();
  v18 = swift_allocObject();
  *(v18 + 16) = v8;
  *(v18 + 24) = v6;
  if (v3 | v0)
  {
    OUTLINED_FUNCTION_52_1();
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_101();
}

void sub_1C951C480()
{
  OUTLINED_FUNCTION_103();
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_55_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  OUTLINED_FUNCTION_7(v9);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_43_0(v11, v20);
  v12 = sub_1C96A7414();
  v13 = OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_108_1(v13, v14, v12);
  if (v3 == 1)
  {
    sub_1C94AC78C(v0, &qword_1EC3A5090);
  }

  else
  {
    sub_1C96A7404();
    OUTLINED_FUNCTION_8_1();
    (*(v15 + 8))(v0, v12);
  }

  OUTLINED_FUNCTION_120_0();

  if (v4)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_119_0();
    OUTLINED_FUNCTION_73_0();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_110_0();
      OUTLINED_FUNCTION_54();
      v16 = swift_allocObject();
      *(v16 + 16) = v8;
      *(v16 + 24) = v6;
      sub_1C96A3D04();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5210);
      OUTLINED_FUNCTION_103_0();
      if (v17)
      {
        OUTLINED_FUNCTION_53();
      }

      OUTLINED_FUNCTION_51_1(v17);
      OUTLINED_FUNCTION_104_1();
      swift_task_create();

      sub_1C94AC78C(v2, &qword_1EC3A5090);

      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_106_0();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_1C94AC78C(v2, &qword_1EC3A5090);
  OUTLINED_FUNCTION_54();
  v18 = swift_allocObject();
  *(v18 + 16) = v8;
  *(v18 + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5210);
  OUTLINED_FUNCTION_103_0();
  if (v19)
  {
    OUTLINED_FUNCTION_52_1();
  }

  swift_task_create();
LABEL_13:
  OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_101();
}

void sub_1C951C6C4()
{
  OUTLINED_FUNCTION_103();
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_55_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  OUTLINED_FUNCTION_7(v9);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_43_0(v11, v20);
  v12 = sub_1C96A7414();
  v13 = OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_108_1(v13, v14, v12);
  if (v3 == 1)
  {
    sub_1C94AC78C(v0, &qword_1EC3A5090);
  }

  else
  {
    sub_1C96A7404();
    OUTLINED_FUNCTION_8_1();
    (*(v15 + 8))(v0, v12);
  }

  OUTLINED_FUNCTION_120_0();

  if (v4)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_119_0();
    OUTLINED_FUNCTION_73_0();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_110_0();
      OUTLINED_FUNCTION_54();
      v16 = swift_allocObject();
      *(v16 + 16) = v8;
      *(v16 + 24) = v6;
      sub_1C96A3D04();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51D8);
      OUTLINED_FUNCTION_103_0();
      if (v17)
      {
        OUTLINED_FUNCTION_53();
      }

      OUTLINED_FUNCTION_51_1(v17);
      OUTLINED_FUNCTION_104_1();
      swift_task_create();
      OUTLINED_FUNCTION_66();

      sub_1C94AC78C(v2, &qword_1EC3A5090);

      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_106_0();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_1C94AC78C(v2, &qword_1EC3A5090);
  OUTLINED_FUNCTION_54();
  v18 = swift_allocObject();
  *(v18 + 16) = v8;
  *(v18 + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51D8);
  OUTLINED_FUNCTION_103_0();
  if (v19)
  {
    OUTLINED_FUNCTION_52_1();
  }

  swift_task_create();
LABEL_13:
  OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_101();
}

void sub_1C951C904()
{
  OUTLINED_FUNCTION_103();
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_55_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  OUTLINED_FUNCTION_7(v9);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_43_0(v11, v19);
  v12 = sub_1C96A7414();
  v13 = OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_108_1(v13, v14, v12);
  if (v3 == 1)
  {
    sub_1C94AC78C(v0, &qword_1EC3A5090);
  }

  else
  {
    v3 = sub_1C96A7404();
    OUTLINED_FUNCTION_8_1();
    (*(v15 + 8))(v0, v12);
  }

  OUTLINED_FUNCTION_120_0();

  if (v4)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_119_0();
    OUTLINED_FUNCTION_73_0();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_110_0();
      OUTLINED_FUNCTION_54();
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_115_0(v16);
      if (v8)
      {
        OUTLINED_FUNCTION_53();
      }

      else
      {
        v17 = 0;
      }

      OUTLINED_FUNCTION_51_1(v17);
      OUTLINED_FUNCTION_104_1();
      swift_task_create();
      OUTLINED_FUNCTION_66();

      sub_1C94AC78C(v2, &qword_1EC3A5090);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_106_0();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_1C94AC78C(v2, &qword_1EC3A5090);
  OUTLINED_FUNCTION_54();
  v18 = swift_allocObject();
  *(v18 + 16) = v8;
  *(v18 + 24) = v6;
  if (v3 | v0)
  {
    OUTLINED_FUNCTION_52_1();
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_101();
}

void sub_1C951CB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_103();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = *(v29 + 24);
  v36 = *(v29 + 32);
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v29, v35);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &a9 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 16))(v40, v38);
  v24(v34, v32, v40, v28, v26, v20, v35, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  OUTLINED_FUNCTION_101();
}

Swift::Void __swiftcall NotificationSubscriptionManager.setResubscribedAfterDeviceRestoreOnce()()
{
  if (qword_1EDB78B20 != -1)
  {
    OUTLINED_FUNCTION_57_0();
  }

  sub_1C951B4A8();
}

uint64_t sub_1C951CCCC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = a2[23];
  v9 = a2[24];
  __swift_project_boxed_opaque_existential_1(a2 + 20, v8);
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  (*(v9 + 24))(sub_1C95247C0, v11, v8, v9);
}

uint64_t sub_1C951CE44(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51B0);
  return sub_1C96A7394();
}

uint64_t sub_1C951CEB4()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_4_14();
  }

  v1 = sub_1C96A6154();
  v0[5] = __swift_project_value_buffer(v1, qword_1EDB7AC90);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A7684();
  if (OUTLINED_FUNCTION_41(v3))
  {
    v4 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_47(v4);
    OUTLINED_FUNCTION_16_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_38_0();
  }

  v10 = v0[4];

  OUTLINED_FUNCTION_19_7((v10 + 160));
  OUTLINED_FUNCTION_75_1();
  *(v10 + 16) = v11;
  OUTLINED_FUNCTION_9_11();
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v13 = OUTLINED_FUNCTION_8_11(v12);

  return v14(v13);
}

uint64_t sub_1C951D03C()
{
  OUTLINED_FUNCTION_30();
  v3 = v2;
  OUTLINED_FUNCTION_27();
  v5 = v4;
  OUTLINED_FUNCTION_23_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_15();
  *v8 = v7;
  v5[7] = v0;

  if (v0)
  {
    v9 = v5[4];

    v10 = sub_1C951D474;
    v11 = v9;
  }

  else
  {
    v11 = v5[4];
    v5[8] = v3;
    v10 = sub_1C951D164;
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, 0);
}

void sub_1C951D164()
{
  OUTLINED_FUNCTION_113_0();
  v46 = v0;
  v1 = v0[7];
  v2 = *(v0[8] + 16);

  v3 = sub_1C96A6134();
  v4 = sub_1C96A7684();
  v5 = OUTLINED_FUNCTION_41(v4);
  if (v2)
  {
    if (v5)
    {
      *OUTLINED_FUNCTION_29() = 0;
      OUTLINED_FUNCTION_83_0();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_40();
    }

    v11 = v0[4];

    v12 = v11[24];
    __swift_project_boxed_opaque_existential_1(v11 + 20, v11[23]);
    v13 = OUTLINED_FUNCTION_66();
    v14(v13, v12);
    if (v1)
    {
      v15 = v1;
      v16 = sub_1C96A6134();
      v17 = sub_1C96A7684();

      if (os_log_type_enabled(v16, v17))
      {
        OUTLINED_FUNCTION_9_8();
        v45 = OUTLINED_FUNCTION_62();
        *v12 = 136446210;
        v0[3] = v1;
        v18 = v1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
        v19 = sub_1C96A70A4();
        v21 = sub_1C9484164(v19, v20, &v45);

        *(v12 + 4) = v21;
        OUTLINED_FUNCTION_83_0();
        _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
        OUTLINED_FUNCTION_46_0();
        OUTLINED_FUNCTION_40();
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_117_1();

    __asm { BRAA            X1, X16 }
  }

  if (v5)
  {
    v27 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_47(v27);
    OUTLINED_FUNCTION_16_4();
    _os_log_impl(v28, v29, v30, v31, v32, 2u);
    OUTLINED_FUNCTION_38_0();
  }

  OUTLINED_FUNCTION_50();
  v33 = OUTLINED_FUNCTION_12_7();
  v34(v33);
  if (!v35)
  {
    OUTLINED_FUNCTION_50();
    v36 = OUTLINED_FUNCTION_12_7();
    v37(v36);
  }

  __swift_project_boxed_opaque_existential_1((v0[4] + 160), *(v0[4] + 184));
  OUTLINED_FUNCTION_3_8();
  v38 = swift_task_alloc();
  v39 = OUTLINED_FUNCTION_93_0(v38);
  *v39 = v40;
  OUTLINED_FUNCTION_5_0(v39);
  OUTLINED_FUNCTION_117_1();

  __asm { BRAA            X2, X16 }
}

void sub_1C951D474()
{
  OUTLINED_FUNCTION_113_0();
  v1 = *(MEMORY[0x1E69E7CC0] + 16);

  v2 = sub_1C96A6134();
  v3 = sub_1C96A7684();
  v4 = OUTLINED_FUNCTION_41(v3);
  if (v1)
  {
    if (v4)
    {
      v5 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_47(v5);
      OUTLINED_FUNCTION_16_4();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_38_0();
    }

    v11 = *(v0 + 32);

    v12 = v11[23];
    v13 = v11[24];
    __swift_project_boxed_opaque_existential_1(v11 + 20, v12);
    (*(v13 + 16))(v12, v13);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_117_1();

    __asm { BRAA            X1, X16 }
  }

  if (v4)
  {
    v14 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_47(v14);
    OUTLINED_FUNCTION_16_4();
    _os_log_impl(v15, v16, v17, v18, v19, 2u);
    OUTLINED_FUNCTION_38_0();
  }

  OUTLINED_FUNCTION_50();
  v20 = OUTLINED_FUNCTION_12_7();
  v21(v20);
  if (!v22)
  {
    OUTLINED_FUNCTION_50();
    v23 = OUTLINED_FUNCTION_12_7();
    v24(v23);
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 160), *(*(v0 + 32) + 184));
  OUTLINED_FUNCTION_3_8();
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_93_0(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_5_0(v26);
  OUTLINED_FUNCTION_117_1();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C951D78C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t NotificationSubscriptionManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 200);

  sub_1C94AF5A0(*(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t NotificationSubscriptionManager.__deallocating_deinit()
{
  NotificationSubscriptionManager.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t NotificationSubscriptionManager.subscribe(to:for:)()
{
  OUTLINED_FUNCTION_18();
  v1[8] = v2;
  v1[9] = v0;
  v1[10] = *v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v1[11] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_34_2(v4);

  return sub_1C94BFCB4(v6);
}

uint64_t sub_1C951D990()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C951DA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_49();
  v11 = v10[10];
  OUTLINED_FUNCTION_19_7(v10 + 2);
  v10[7] = v11;
  OUTLINED_FUNCTION_12_3();
  v12 = swift_task_alloc();
  v10[12] = v12;
  *v12 = v10;
  v12[1] = sub_1C951DBA4;
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_122_0();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C951DBA4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_23_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_15();
  *v6 = v5;
  *(v3 + 104) = v0;

  v7 = *(v3 + 72);
  if (v0)
  {
    v8 = sub_1C951DCA4;
  }

  else
  {
    v8 = sub_1C9524AD8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C951DCA4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_5();

  return v0();
}

uint64_t NotificationSubscriptionManager.unsubscribe(from:for:)()
{
  OUTLINED_FUNCTION_18();
  v1[17] = v2;
  v1[18] = v0;
  v1[19] = *v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v1[20] = v4;
  *v4 = v5;
  v4[1] = sub_1C951DD90;

  return sub_1C94BFCB4((v1 + 11));
}

uint64_t sub_1C951DD90()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C951DE88()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v3);
  v0[16] = v1;
  memcpy(v0 + 2, v2, 0x48uLL);
  OUTLINED_FUNCTION_22_0();
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1C951DFDC;

  return (v8)(v0 + 16, v0 + 2, v3, v4);
}

uint64_t sub_1C951DFDC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_23_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_15();
  *v6 = v5;
  *(v3 + 176) = v0;

  v7 = *(v3 + 144);
  if (v0)
  {
    v8 = sub_1C951E138;
  }

  else
  {
    v8 = sub_1C951E0DC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C951E0DC()
{
  OUTLINED_FUNCTION_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 88);
  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_1C951E138()
{
  OUTLINED_FUNCTION_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 88);
  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t NotificationSubscriptionManager.unsubscribe()()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 56) = v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 64) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_34_2(v2);

  return sub_1C94BFCB4(v4);
}

uint64_t sub_1C951E21C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C951E314()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_19_7((v0 + 16));
  OUTLINED_FUNCTION_12_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_93_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_0(v2);

  return v5(v4);
}

uint64_t sub_1C951E410()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C951E508()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_5();

  return v0();
}

uint64_t sub_1C951E558()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_5();

  return v0();
}

uint64_t sub_1C951E5AC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_5();

  return v0();
}

uint64_t NotificationSubscriptionManager.subscription(with:)()
{
  OUTLINED_FUNCTION_18();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v1[11] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_34_2(v5);

  return sub_1C94BFCB4(v7);
}

uint64_t sub_1C951E68C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C951E784()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[5];
  v2 = v0[6];
  OUTLINED_FUNCTION_19_7(v0 + 2);
  OUTLINED_FUNCTION_12_3();
  v10 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[12] = v4;
  *v4 = v5;
  v4[1] = sub_1C951E89C;
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];

  return v10(v8, v6, v7, v1, v2);
}

uint64_t sub_1C951E89C()
{
  OUTLINED_FUNCTION_30();
  v2 = *v1;
  OUTLINED_FUNCTION_23_3();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_1C951DCA4;
  }

  else
  {
    v6 = sub_1C9524AD8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t NotificationSubscriptionManager.removeObserver(_:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_28_1(sub_1C951E9D8, v1);
}

void sub_1C951E9D8()
{
  OUTLINED_FUNCTION_113_0();
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  sub_1C96A53C4();
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = (v2 + 32 + 16 * v4);
  while (1)
  {
    if (v3 == v4)
    {

      *(v1 + 112) = v5;

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_85_0();

      __asm { BRAA            X1, X16 }
    }

    if (v4 >= *(v2 + 16))
    {
      break;
    }

    v7 = v6 + 2;
    ++v4;
    v8 = *v6;
    v6 += 2;
    if (v8 != *(v0 + 40))
    {
      v9 = *(v7 - 1);
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C9522C18();
      }

      v10 = *(v5 + 16);
      if (v10 >= *(v5 + 24) >> 1)
      {
        sub_1C9522C18();
      }

      *(v5 + 16) = v10 + 1;
      v11 = v5 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v9;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_1C951EB3C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_1();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  OUTLINED_FUNCTION_91_0();

  OUTLINED_FUNCTION_45_1();

  return v3();
}

uint64_t sub_1C951EC70()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_23_3();
  *v4 = v3;
  *v4 = *v1;
  v3[21] = v5;
  v3[22] = v0;

  v6 = v3[12];
  if (v0)
  {
    v7 = sub_1C9520D80;
  }

  else
  {
    v7 = sub_1C951ED78;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1C951ED78()
{
  OUTLINED_FUNCTION_39();
  v2 = v1[12];
  v1[23] = *(v1[21] + 16);
  OUTLINED_FUNCTION_19_7((v2 + 160));
  OUTLINED_FUNCTION_75_1();
  *(v0 + 32) = v3;
  OUTLINED_FUNCTION_9_11();
  v4 = swift_task_alloc();
  v1[24] = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_8_11(v4);

  return v6(v5);
}

uint64_t sub_1C951EE90()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_23_3();
  *v4 = v3;
  *v4 = *v1;
  v3[25] = v5;
  v3[26] = v0;

  if (v0)
  {
    v6 = v3[12];

    v7 = sub_1C9520E6C;
    v8 = v6;
  }

  else
  {
    v8 = v3[12];
    v7 = sub_1C951EFA8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

void sub_1C951EFA8()
{
  OUTLINED_FUNCTION_113_0();
  v68 = v0;
  v2 = *(*(v0 + 200) + 16);
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_4_14();
  }

  v3 = sub_1C96A6154();
  *(v0 + 216) = __swift_project_value_buffer(v3, qword_1EDB7AC90);
  v4 = sub_1C96A6134();
  v5 = sub_1C96A76A4();
  if (os_log_type_enabled(v4, v5))
  {
    v66 = *(v0 + 184);
    v1 = OUTLINED_FUNCTION_102();
    v67 = swift_slowAlloc();
    *v1 = 136446466;
    *(v0 + 80) = v2;
    v6 = sub_1C96A7DB4();
    v8 = sub_1C9484164(v6, v7, &v67);

    *(v1 + 4) = v8;
    *(v1 + 12) = 2082;
    *(v0 + 88) = v66;
    v9 = sub_1C96A7DB4();
    v11 = sub_1C9484164(v9, v10, &v67);

    *(v1 + 14) = v11;
    _os_log_impl(&dword_1C945E000, v4, v5, "%{public}s subscriptions in key value store, %{public}s subscriptions in legacy db table.", v1, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_40();
  }

  v12 = *(v0 + 184);
  sub_1C9521224();
  if (v12)
  {
    v13 = sub_1C96A6134();
    v14 = sub_1C96A76A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 184);
      OUTLINED_FUNCTION_9_8();
      v67 = OUTLINED_FUNCTION_62();
      *v1 = 136446210;
      *(v0 + 72) = v15;
      v16 = sub_1C96A7DB4();
      v18 = sub_1C9484164(v16, v17, &v67);

      *(v1 + 4) = v18;
      OUTLINED_FUNCTION_116_0(&dword_1C945E000, v19, v20, "Start migrating %{public}s subscriptions from TeaDB");
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_40();
    }

    v21 = *(v0 + 168);
    v22 = *(v21 + 16);
    *(v0 + 232) = v22;
    if (!v22)
    {
      OUTLINED_FUNCTION_19_7((*(v0 + 96) + 160));
      OUTLINED_FUNCTION_75_1();
      *(v14 + 48) = v56;
      OUTLINED_FUNCTION_9_11();
      v57 = swift_task_alloc();
      *(v0 + 264) = v57;
      *v57 = v0;
      OUTLINED_FUNCTION_8_11(v57);
      OUTLINED_FUNCTION_85_0();

      __asm { BRAA            X3, X16 }
    }

    v23 = *(*(v0 + 112) + 80);
    *(v0 + 368) = v23;
    *(v0 + 240) = 0;
    if (*(v21 + 16))
    {
      sub_1C9524958(v21 + ((v23 + 32) & ~v23), *(v0 + 136));
      v24 = OUTLINED_FUNCTION_12_7();
      sub_1C9524958(v24, v25);
      v26 = sub_1C96A6134();
      v27 = sub_1C96A7664();
      v28 = OUTLINED_FUNCTION_41(v27);
      v29 = *(v0 + 128);
      if (v28)
      {
        v30 = *(v0 + 120);
        v31 = OUTLINED_FUNCTION_102();
        v32 = OUTLINED_FUNCTION_8_4();
        v67 = v32;
        OUTLINED_FUNCTION_31(7.2225e-34);
        v33 = OUTLINED_FUNCTION_95_0();
        sub_1C9524A18(v33, v34);
        v35 = *v30;
        v36 = v30[1];
        sub_1C96A53C4();
        sub_1C95249BC(v30);
        v37 = sub_1C9484164(v35, v36, &v67);

        *(v31 + 14) = v37;
        OUTLINED_FUNCTION_16_4();
        _os_log_impl(v38, v39, v40, v41, v42, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_38_0();
      }

      else
      {

        sub_1C95249BC(v29);
      }

      OUTLINED_FUNCTION_19_7((*(v0 + 96) + 160));
      OUTLINED_FUNCTION_58_1();
      if (v62 == 2)
      {
        v60 = v61;
      }

      *(v0 + 40) = v60;
      OUTLINED_FUNCTION_22_0();
      v63 = swift_task_alloc();
      *(v0 + 248) = v63;
      *v63 = v0;
      OUTLINED_FUNCTION_42_1(v63);
      OUTLINED_FUNCTION_85_0();

      __asm { BRAA            X4, X16 }
    }

    __break(1u);
  }

  else
  {
    v43 = *(v0 + 96);
    sub_1C952144C();
    *(v43 + 240) = 0;
    v44 = sub_1C96A6134();
    v45 = sub_1C96A76A4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_47(v46);
      _os_log_impl(&dword_1C945E000, v44, v45, "Subscription db table, and store are both empty. no need to copy data, just update version number", 0, 2u);
      OUTLINED_FUNCTION_38_0();
    }

    v47 = *(v0 + 200);
    v48 = *(v0 + 168);
    v49 = *(v0 + 96);

    sub_1C96A53C4();
    sub_1C94AE8E8();
    OUTLINED_FUNCTION_105_0();
    *(v49 + 256) = v48;
    *(v49 + 264) = v47;
    OUTLINED_FUNCTION_97_0(v50, v51, v52, v53);
    v54 = swift_task_alloc();
    *(v0 + 224) = v54;
    *v54 = v0;
    v54[1] = sub_1C951F5A8;
    OUTLINED_FUNCTION_85_0();

    sub_1C94AF63C();
  }
}

uint64_t sub_1C951F5A8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_1();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  OUTLINED_FUNCTION_91_0();

  OUTLINED_FUNCTION_45_1();

  return v3();
}

uint64_t sub_1C951F6DC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_23_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_15();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_90_0();
  }

  else
  {
    v8 = *(v3 + 96);
    v7 = sub_1C951F7F4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1C951F7F4()
{
  v37 = v1;
  v2 = *(v1 + 232);
  v3 = *(v1 + 240) + 1;
  result = sub_1C95249BC(*(v1 + 136));
  if (v3 == v2)
  {
    OUTLINED_FUNCTION_19_7((*(v1 + 96) + 160));
    OUTLINED_FUNCTION_75_1();
    *(v0 + 48) = v5;
    OUTLINED_FUNCTION_9_11();
    v6 = swift_task_alloc();
    *(v1 + 264) = v6;
    *v6 = v1;
    v7 = OUTLINED_FUNCTION_8_11(v6);

    return v8(v7);
  }

  else
  {
    v9 = *(v1 + 240) + 1;
    *(v1 + 240) = v9;
    v10 = *(v1 + 168);
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1C9524958(v10 + ((*(v1 + 368) + 32) & ~*(v1 + 368)) + *(*(v1 + 112) + 72) * v9, *(v1 + 136));
      v11 = OUTLINED_FUNCTION_12_7();
      sub_1C9524958(v11, v12);
      v13 = sub_1C96A6134();
      v14 = sub_1C96A7664();
      v15 = OUTLINED_FUNCTION_41(v14);
      v16 = *(v1 + 128);
      if (v15)
      {
        v17 = *(v1 + 120);
        v18 = OUTLINED_FUNCTION_102();
        v19 = OUTLINED_FUNCTION_8_4();
        v36 = v19;
        OUTLINED_FUNCTION_31(7.2225e-34);
        v20 = OUTLINED_FUNCTION_95_0();
        sub_1C9524A18(v20, v21);
        v22 = *v17;
        v23 = v17[1];
        sub_1C96A53C4();
        sub_1C95249BC(v17);
        v24 = sub_1C9484164(v22, v23, &v36);

        *(v18 + 14) = v24;
        OUTLINED_FUNCTION_16_4();
        _os_log_impl(v25, v26, v27, v28, v29, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_38_0();
      }

      else
      {

        sub_1C95249BC(v16);
      }

      OUTLINED_FUNCTION_19_7((*(v1 + 96) + 160));
      OUTLINED_FUNCTION_58_1();
      if (v32 == 2)
      {
        v30 = v31;
      }

      *(v1 + 40) = v30;
      OUTLINED_FUNCTION_22_0();
      v33 = swift_task_alloc();
      *(v1 + 248) = v33;
      *v33 = v1;
      v34 = OUTLINED_FUNCTION_42_1();

      return v35(v34);
    }
  }

  return result;
}

uint64_t sub_1C951FB1C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_23_3();
  *v4 = v3;
  *v4 = *v1;
  v3[34] = v5;
  v3[35] = v0;

  if (v0)
  {

    v6 = OUTLINED_FUNCTION_90_0();
  }

  else
  {
    v7 = v3[12];
    v6 = sub_1C951FC3C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1C951FC3C()
{
  v61 = v0;
  v1 = v0[34];
  sub_1C96A53C4();
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[34];
    OUTLINED_FUNCTION_9_8();
    v60[0] = OUTLINED_FUNCTION_62();
    *v1 = 136446210;
    v0[8] = *(v4 + 16);
    v5 = sub_1C96A7DB4();
    v7 = sub_1C9484164(v5, v6, v60);

    *(v1 + 4) = v7;
    OUTLINED_FUNCTION_116_0(&dword_1C945E000, v8, v9, "Migrated %{public}s subscription");
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_40();
  }

  sub_1C96A53C4();
  v10 = sub_1C96A6134();
  v11 = sub_1C96A76A4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[34];
    v13 = v0[13];
    v14 = OUTLINED_FUNCTION_102();
    v15 = OUTLINED_FUNCTION_8_4();
    v60[0] = v15;
    OUTLINED_FUNCTION_31(7.2225e-34);
    v16 = MEMORY[0x1CCA8CC40](v12, v13);
    v18 = sub_1C9484164(v16, v17, v60);

    *(v14 + 14) = v18;
    OUTLINED_FUNCTION_16_4();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_38_0();
  }

  v24 = v0[35];
  v60[0] = v0[21];
  sub_1C96A53C4();
  sub_1C952DACC(v60);
  if (v24)
  {
  }

  else
  {
    v60[0] = v0[34];
    sub_1C96A53C4();
    sub_1C952DACC(v60);

    sub_1C9554184();
    v27 = v26;

    if (v27)
    {
      v28 = sub_1C96A6134();
      v29 = sub_1C96A76A4();
      if (OUTLINED_FUNCTION_41(v29))
      {
        v30 = OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_47(v30);
        OUTLINED_FUNCTION_16_4();
        _os_log_impl(v31, v32, v33, v34, v35, 2u);
        OUTLINED_FUNCTION_38_0();
      }

      v36 = v0[12];

      v37 = *(v36 + 152);
      OUTLINED_FUNCTION_19_7((v36 + 120));
      OUTLINED_FUNCTION_11_7(*(v37 + 8));
      v59 = (v38 + *v38);
      v39 = swift_task_alloc();
      v0[36] = v39;
      *v39 = v0;
      v40 = sub_1C95201B4;
    }

    else
    {

      sub_1C96A53C4();
      v41 = sub_1C96A6134();
      v42 = sub_1C96A7684();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v60[0] = swift_slowAlloc();
        *v43 = 141558787;
        *(v43 + 4) = 1752392040;
        *(v43 + 12) = 2081;
        v44 = OUTLINED_FUNCTION_95_0();
        v45 = MEMORY[0x1CCA8CC40](v44);
        v47 = sub_1C9484164(v45, v46, v60);

        *(v43 + 14) = v47;
        *(v43 + 22) = 2160;
        *(v43 + 24) = 1752392040;
        *(v43 + 32) = 2081;
        v48 = OUTLINED_FUNCTION_95_0();
        MEMORY[0x1CCA8CC40](v48);

        v49 = OUTLINED_FUNCTION_89();
        v52 = sub_1C9484164(v49, v50, v51);

        *(v43 + 34) = v52;
        OUTLINED_FUNCTION_69();
        _os_log_impl(v53, v54, v55, v56, v43, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_26();
      }

      else
      {
      }

      OUTLINED_FUNCTION_13_6();
      __swift_project_boxed_opaque_existential_1((v41 + 160), *(v41 + 184));
      OUTLINED_FUNCTION_3_8();
      v59 = (v57 + *v57);
      v39 = swift_task_alloc();
      v0[41] = v39;
      *v39 = v0;
      v40 = sub_1C952075C;
    }

    v39[1] = v40;
    v58 = OUTLINED_FUNCTION_12_7();

    return v59(v58);
  }
}

uint64_t sub_1C95201B4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95202AC()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 96);
  sub_1C952144C();
  OUTLINED_FUNCTION_19_7((v2 + 120));
  OUTLINED_FUNCTION_75_1();
  *(v0 + 56) = v3;
  OUTLINED_FUNCTION_9_11();
  v4 = swift_task_alloc();
  *(v1 + 296) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_8_11(v4);

  return v6(v5);
}

uint64_t sub_1C95203BC()
{
  OUTLINED_FUNCTION_30();
  v3 = v2;
  OUTLINED_FUNCTION_27();
  v5 = v4;
  OUTLINED_FUNCTION_23_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_15();
  *v8 = v7;
  v5[38] = v0;

  if (v0)
  {
    v9 = v5[12];

    v10 = sub_1C9521138;
    v11 = v9;
  }

  else
  {
    v11 = v5[12];
    v5[39] = v3;
    v10 = sub_1C95204F0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, 0);
}

uint64_t sub_1C95204F0()
{
  OUTLINED_FUNCTION_30();
  v1 = v0[34];
  v2 = v0[21];
  v3 = v0[12];
  sub_1C94AE8E8();
  OUTLINED_FUNCTION_105_0();
  *(v3 + 256) = v2;
  *(v3 + 264) = v1;
  OUTLINED_FUNCTION_97_0(v4, v5, v6, v7);
  v8 = swift_task_alloc();
  v0[40] = v8;
  *v8 = v0;
  v8[1] = sub_1C95205A4;

  return sub_1C94AF63C();
}

uint64_t sub_1C95205A4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C952069C()
{
  OUTLINED_FUNCTION_30();
  *(*(v0 + 96) + 240) = 0;
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_41(v2))
  {
    v3 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_47(v3);
    OUTLINED_FUNCTION_16_4();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_38_0();
  }

  OUTLINED_FUNCTION_17();

  return v9();
}

uint64_t sub_1C952075C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_15();
  *v2 = v0;
  v3 = *v1;
  *v2 = *v1;

  v4 = swift_task_alloc();
  *(v0 + 336) = v4;
  *v4 = v3;
  v4[1] = sub_1C952088C;

  return sub_1C94AF63C();
}

uint64_t sub_1C952088C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_1();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  OUTLINED_FUNCTION_91_0();

  OUTLINED_FUNCTION_45_1();

  return v3();
}

uint64_t sub_1C95209C0()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_15();
  *v2 = v0;
  v3 = *v1;
  *v2 = *v1;

  v4 = swift_task_alloc();
  *(v0 + 360) = v4;
  *v4 = v3;
  v4[1] = sub_1C9520AF0;

  return sub_1C94AF63C();
}

uint64_t sub_1C9520AF0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9520BE8()
{
  OUTLINED_FUNCTION_49();
  v20 = v0;
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_4_14();
  }

  v2 = *(v0 + 344);
  v3 = sub_1C96A6154();
  __swift_project_value_buffer(v3, qword_1EDB7AC90);
  v4 = OUTLINED_FUNCTION_66();
  v5 = sub_1C96A6134();
  v6 = sub_1C96A7684();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 344);
  if (v7)
  {
    OUTLINED_FUNCTION_9_8();
    v19 = OUTLINED_FUNCTION_62();
    *v1 = 136446210;
    *(v0 + 24) = v8;
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v10 = sub_1C96A70A4();
    v12 = sub_1C9484164(v10, v11, &v19);

    *(v1 + 4) = v12;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v13, v14, v15, v16, v1, 0xCu);
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_40();
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();

  return v17();
}

uint64_t sub_1C9520D80()
{
  OUTLINED_FUNCTION_39();
  *(v1 + 344) = *(v1 + 176);
  OUTLINED_FUNCTION_13_6();
  __swift_project_boxed_opaque_existential_1((v0 + 160), *(v0 + 184));
  OUTLINED_FUNCTION_3_8();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_92_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_17(v3);

  return v6(v5);
}

uint64_t sub_1C9520E6C()
{
  OUTLINED_FUNCTION_39();
  *(v1 + 344) = *(v1 + 208);
  OUTLINED_FUNCTION_13_6();
  __swift_project_boxed_opaque_existential_1((v0 + 160), *(v0 + 184));
  OUTLINED_FUNCTION_3_8();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_92_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_17(v3);

  return v6(v5);
}

uint64_t sub_1C9520F58()
{
  OUTLINED_FUNCTION_39();
  sub_1C95249BC(v1[17]);
  v1[43] = v1[32];
  OUTLINED_FUNCTION_13_6();
  __swift_project_boxed_opaque_existential_1((v0 + 160), *(v0 + 184));
  OUTLINED_FUNCTION_3_8();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_92_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_17(v3);

  return v6(v5);
}

uint64_t sub_1C952104C()
{
  OUTLINED_FUNCTION_39();
  *(v1 + 344) = *(v1 + 280);
  OUTLINED_FUNCTION_13_6();
  __swift_project_boxed_opaque_existential_1((v0 + 160), *(v0 + 184));
  OUTLINED_FUNCTION_3_8();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_92_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_17(v3);

  return v6(v5);
}

uint64_t sub_1C9521138()
{
  OUTLINED_FUNCTION_39();
  *(v1 + 344) = *(v1 + 304);
  OUTLINED_FUNCTION_13_6();
  __swift_project_boxed_opaque_existential_1((v0 + 160), *(v0 + 184));
  OUTLINED_FUNCTION_3_8();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_92_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_17(v3);

  return v6(v5);
}

uint64_t sub_1C9521224()
{
  v1 = v0[40];
  v2 = v0[41];
  __swift_project_boxed_opaque_existential_1(v0 + 37, v1);
  (*(v2 + 24))(v1, v2);

  v3 = v0[23];
  v4 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v3);
  return (*(v4 + 16))(v3, v4);
}

uint64_t sub_1C952144C()
{
  v1 = v0[28];
  v2 = v0[29];
  __swift_project_boxed_opaque_existential_1(v0 + 25, v1);
  v4 = 0x4000000000000000;
  return (*(v2 + 16))(&v4, 0xD00000000000001ELL, 0x80000001C96CDFB0, MEMORY[0x1E69E63B0], v1, v2);
}

uint64_t sub_1C95214D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return NotificationSubscriptionManager.subscribe(to:for:)();
}

uint64_t sub_1C952157C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return NotificationSubscriptionManager.unsubscribe(from:for:)();
}

uint64_t sub_1C9521624()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return NotificationSubscriptionManager.unsubscribe()();
}

uint64_t sub_1C95216B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return NotificationSubscriptionManager.subscription(with:)();
}

uint64_t sub_1C9521768(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C94B0CEC;

  return NotificationSubscriptionManager.removeObserver(_:)(a1);
}

uint64_t sub_1C9521818(uint64_t a1)
{
  GEOLocationCoordinate2DMake(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t NotificationSubscriptionManager.saltDidChange(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - v4;
  result = OUTLINED_FUNCTION_84();
  if (*(a1 + 112))
  {
    v7 = sub_1C96A7414();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v8;
    sub_1C951C258();
  }

  return result;
}

uint64_t sub_1C95219A4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_84();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C9521A4C, Strong, 0);
  }

  else
  {
    OUTLINED_FUNCTION_17();

    return v2();
  }
}

uint64_t sub_1C9521A4C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_84();
  *(v0 + 120) = *(v1 + 112);
  sub_1C96A53C4();
  v2 = OUTLINED_FUNCTION_81_0();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

void sub_1C9521AC0()
{
  v1 = 0;
  v2 = v0[15];
  v9 = *(v2 + 16);
  v3 = (v2 + 40);
  while (v9 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v4 = v0[14];
    ++v1;
    v5 = *v3;
    ObjectType = swift_getObjectType();
    v0[5] = type metadata accessor for NotificationSubscriptionManager();
    v0[6] = &protocol witness table for NotificationSubscriptionManager;
    v0[2] = v4;
    v7 = *(v5 + 32);
    swift_unknownObjectRetain();
    sub_1C96A3D04();
    v7(v0 + 2, ObjectType, v5);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    v3 += 2;
  }

  OUTLINED_FUNCTION_17();

  v8();
}

void sub_1C9521C00()
{
  if (qword_1EDB78B08 != -1)
  {
    OUTLINED_FUNCTION_6_12();
  }

  sub_1C951B4A8();
}

id NotificationSubscriptionManager.useSuggestedLocationsEnabled.getter()
{
  if (qword_1EDB78B08 != -1)
  {
    OUTLINED_FUNCTION_6_12();
  }

  v0 = qword_1EDB78B10;
  v1 = sub_1C96A7004();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NotificationSubscriptionManager.useSuggestedLocationsEnabled.setter()
{
  if (qword_1EDB78B08 != -1)
  {
    OUTLINED_FUNCTION_6_12();
  }

  sub_1C951B4A8();
}

void sub_1C9521D98()
{
  if (qword_1EDB78B08 != -1)
  {
    OUTLINED_FUNCTION_6_12();
  }

  OUTLINED_FUNCTION_101_0();
}

uint64_t sub_1C9521EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C9521EDC, 0, 0);
}

uint64_t sub_1C9521EDC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_84();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C9521F84, Strong, 0);
  }

  else
  {
    OUTLINED_FUNCTION_17();

    return v2();
  }
}

uint64_t sub_1C9521F84()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_84();
  *(v0 + 176) = *(v1 + 112);
  sub_1C96A53C4();
  v2 = OUTLINED_FUNCTION_81_0();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C9521FF8()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 184) = OUTLINED_FUNCTION_71_0(*(v0 + 152));
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 192) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_111_0(v1);

  return sub_1C94BFCB4(v3);
}

uint64_t sub_1C952208C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9522170()
{
  v1 = v0[23];
  v2 = OUTLINED_FUNCTION_71_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  v3 = v0[22];
  if (v1 == v2)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      type metadata accessor for NotificationSubscriptionManager();
      v5 = (v3 + 40);
      do
      {
        v6 = *v5;
        swift_getObjectType();
        OUTLINED_FUNCTION_100_0(&protocol witness table for NotificationSubscriptionManager, v11);
        v7 = *(v6 + 8);
        swift_unknownObjectRetain();
        sub_1C96A3D04();
        v8 = OUTLINED_FUNCTION_87_0();
        v7(v8);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
        v5 += 2;
        --v4;
      }

      while (v4);
    }
  }

  OUTLINED_FUNCTION_17();

  return v9();
}

uint64_t sub_1C95222C0(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  OUTLINED_FUNCTION_7(v4);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  memcpy(__dst, a2, sizeof(__dst));
  sub_1C96A7414();
  v6 = OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_1C949D8BC(a1, v12);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  sub_1C94670AC(v12, (v10 + 5));
  memcpy(v10 + 10, __dst, 0x48uLL);
  sub_1C95087DC(__dst, v12);
  sub_1C951C258();
}

uint64_t sub_1C9522404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C9522428, 0, 0);
}

uint64_t sub_1C9522428()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_84();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C95224D0, Strong, 0);
  }

  else
  {
    OUTLINED_FUNCTION_17();

    return v2();
  }
}

uint64_t sub_1C95224D0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_84();
  *(v0 + 176) = *(v1 + 112);
  sub_1C96A53C4();
  v2 = OUTLINED_FUNCTION_81_0();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C9522544()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 184) = OUTLINED_FUNCTION_71_0(*(v0 + 152));
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 192) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_111_0(v1);

  return sub_1C94BFCB4(v3);
}

uint64_t sub_1C95225D8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95226BC()
{
  v1 = v0[23];
  v2 = OUTLINED_FUNCTION_71_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  v3 = v0[22];
  if (v1 == v2)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      type metadata accessor for NotificationSubscriptionManager();
      v5 = (v3 + 40);
      do
      {
        v6 = *v5;
        swift_getObjectType();
        OUTLINED_FUNCTION_100_0(&protocol witness table for NotificationSubscriptionManager, v11);
        v7 = *(v6 + 16);
        swift_unknownObjectRetain();
        sub_1C96A3D04();
        v8 = OUTLINED_FUNCTION_87_0();
        v7(v8);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
        v5 += 2;
        --v4;
      }

      while (v4);
    }
  }

  OUTLINED_FUNCTION_17();

  return v9();
}

uint64_t sub_1C9522840()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

void sub_1C95229B4()
{
  OUTLINED_FUNCTION_112_0();
  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5218), OUTLINED_FUNCTION_8_1(), v1 + *(v4 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      OUTLINED_FUNCTION_36_0();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5218);
    OUTLINED_FUNCTION_36_0();

    swift_arrayInitWithTakeFrontToBack();
  }
}

char *sub_1C9522A90(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_18(a3, result);
  }

  return result;
}

char *sub_1C9522AD0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[56 * a2] <= __dst)
  {
    return memmove(__dst, __src, 56 * a2);
  }

  return __src;
}

char *sub_1C9522B18(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_18(a3, result);
  }

  return result;
}

char *sub_1C9522BB0(char *a1, int64_t a2, char a3)
{
  result = sub_1C9522E9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C9522BD0()
{
  OUTLINED_FUNCTION_67_0();
  sub_1C949B7D0();
  *v0 = v1;
}

char *sub_1C9522D08(char *a1, int64_t a2, char a3)
{
  result = sub_1C9523164(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C9522D28(char *a1, int64_t a2, char a3)
{
  result = sub_1C9523264(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C9522D48(char *a1, int64_t a2, char a3)
{
  result = sub_1C9523364(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C9522DC0(void *a1, int64_t a2, char a3)
{
  result = sub_1C952347C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C9522DE0(char *a1, int64_t a2, char a3)
{
  result = sub_1C95235AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C9522E00(char *a1, int64_t a2, char a3)
{
  result = sub_1C95236C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C9522E9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5238);
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
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C9522FB4(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_8_7();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_18_5();
      if (v7)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 16);
  if (v6 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v6;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5220);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5218);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v17 = _swift_stdlib_malloc_size(v16);
  if (!v13)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v17 - v15 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_22;
  }

  v16[2] = v9;
  v16[3] = 2 * ((v17 - v15) / v13);
LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5218);
  if (a1)
  {
    sub_1C95229B4();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1C9523164(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5208);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

char *sub_1C9523264(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_1C9523364(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C952347C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51D0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6770);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C95235AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C95236C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_1C95237C4()
{
  OUTLINED_FUNCTION_109_0();
  if (v5)
  {
    OUTLINED_FUNCTION_8_7();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_18_5();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v6 = v3;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v4);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v2)
  {
    if (v11 != v0 || &v0[2 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_89();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v1);
    OUTLINED_FUNCTION_89();
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1C95238CC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1C95239C0;

  return v5(v2 + 16);
}

uint64_t sub_1C95239C0()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_1();
  v2 = *(v0 + 24);
  v3 = *v1;
  OUTLINED_FUNCTION_15();
  *v4 = v3;

  OUTLINED_FUNCTION_91_0();
  *v2 = *(v5 + 16);
  OUTLINED_FUNCTION_45_1();

  return v6();
}

uint64_t sub_1C9523AD4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C9523BC8;

  return v5(v2 + 32);
}

uint64_t sub_1C9523BC8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v2 = v1;
  OUTLINED_FUNCTION_23_3();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_15();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_1C9523CC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - v19;
  (*(v14 + 32))(&v26 - v19, v21, v22, v18);
  v23 = swift_allocObject();
  (*(v14 + 16))(v16, v20, a7);
  v24 = sub_1C94B0D18(a1, a2, v16, a4, a5, v23, a7, a8);
  (*(v14 + 8))(v20, a7);
  return v24;
}

uint64_t sub_1C9523E40()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_82_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_17_1(v2);
  *v3 = v4;
  v3[1] = sub_1C94B0CEC;
  v5 = OUTLINED_FUNCTION_21_8();

  return sub_1C9521984(v5, v6, v1, v0);
}

uint64_t sub_1C9523ED8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17_1(v3);
  *v4 = v5;
  v4[1] = sub_1C94B0CEC;
  v6 = OUTLINED_FUNCTION_21_8();

  return sub_1C9521EB8(v6, v7, v1, v2, v8, v9);
}

uint64_t objectdestroy_27Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1C9523FE8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17_1(v3);
  *v4 = v5;
  v4[1] = sub_1C94B0CEC;
  v6 = OUTLINED_FUNCTION_21_8();

  return sub_1C9522404(v6, v7, v1, v2, v8, v9);
}

uint64_t dispatch thunk of NotificationSubscriptionManagerType.subscribe(to:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_25_6(v10, v11, v12, v13);
  OUTLINED_FUNCTION_12_3();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_37(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_20_6(v15);
  OUTLINED_FUNCTION_122_0();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of NotificationSubscriptionManagerType.unsubscribe(from:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_25_6(v10, v11, v12, v13);
  OUTLINED_FUNCTION_12_3();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_37(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_20_6(v15);
  OUTLINED_FUNCTION_122_0();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of NotificationSubscriptionManagerType.unsubscribe()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v8 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_37(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_14_8(v4);

  return v8(v6);
}

uint64_t dispatch thunk of NotificationSubscriptionManagerType.subscription(with:)()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_22_0();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_17_1(v11);
  *v12 = v13;
  v12[1] = sub_1C94B0CEC;

  return v15(v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of NotificationSubscriptionManagerType.removeObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_25_6(v10, v11, v12, v13);
  OUTLINED_FUNCTION_12_3();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_37(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_20_6(v15);
  OUTLINED_FUNCTION_122_0();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of NotificationSubscriptionManagerType.removeAllSubscriptions()()
{
  OUTLINED_FUNCTION_39();
  v2 = OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_11_7(v2);
  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_37(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_14_8(v5);

  return v9(v7);
}

_BYTE *storeEnumTagSinglePayload for NotificationSubscriptionManager.DefaultsKeys(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C95247C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51B0);
  OUTLINED_FUNCTION_7(v2);

  return sub_1C951CE44(a1);
}

uint64_t sub_1C9524838()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_4(v1);

  return v4(v3);
}

uint64_t sub_1C95248C8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_4(v1);

  return v4(v3);
}

uint64_t sub_1C9524958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationSubscription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C95249BC(uint64_t a1)
{
  v2 = type metadata accessor for NotificationSubscription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C9524A18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationSubscription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9524A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 0xC0) == 0x40)
  {
    sub_1C96A53C4();
    sub_1C96A53C4();

    return sub_1C96A53C4();
  }

  return result;
}

void OUTLINED_FUNCTION_51_1(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;
}

id OUTLINED_FUNCTION_56_0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_97_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(v7 + 272) = v6;
  *(v7 + 280) = a1;
  v9 = *(v7 + 288);
  *(v7 + 288) = v5;

  return sub_1C94AF5A0(a4, v4, a2, a3, v9);
}

void *OUTLINED_FUNCTION_100_0@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v5[10] = v2;
  v5[11] = a1;
  v5[7] = v3;

  return memcpy(&a2, v4, 0x48uLL);
}

void OUTLINED_FUNCTION_101_0()
{

  sub_1C951B4A8();
}

uint64_t OUTLINED_FUNCTION_107_0(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_108_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_getEnumTagSinglePayload(a1, a2, a3);

  return sub_1C96A3D04();
}

uint64_t OUTLINED_FUNCTION_115_0(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;

  return sub_1C96A3D04();
}

void OUTLINED_FUNCTION_116_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_118_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_119_0()
{

  return sub_1C96A7374();
}

uint64_t OUTLINED_FUNCTION_120_0()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_121_0()
{

  return sub_1C96A70D4();
}

uint64_t sub_1C9524D80()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C96A4E64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5240);
  (*(v9 + 104))(v11, *MEMORY[0x1E69D6D10], v8);
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v12, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1C96A4F64();
  qword_1EDB7CBE8 = result;
  return result;
}

uint64_t static Settings.InternationalAuthenticity.verticalHeroEnabledForCurrentLocale.getter()
{
  v0 = sub_1C96A4C14();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  if (_AXSPrefersHorizontalTextLayout())
  {
    v7 = 0;
  }

  else
  {
    sub_1C96A4EE4();
    sub_1C96A4EC4();
    if (qword_1EDB7CBE0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C96A4ED4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      sub_1C96A4BC4();
      v7 = sub_1C952517C();
      (*(v2 + 8))(v6, v0);
    }
  }

  return v7 & 1;
}

uint64_t sub_1C952517C()
{
  v0 = sub_1C96A4BE4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1C96A4BF4();
  v9 = Locale.Language.isJapanese.getter();
  v10 = *(v2 + 8);
  v10(v8, v0);
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    sub_1C96A4BF4();
    v11 = Locale.Language.isChinese.getter();
    v10(v5, v0);
  }

  return v11 & 1;
}

_BYTE *sub_1C95252E0(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C9525394()
{
  result = sub_1C96A7004();
  qword_1EDB79428 = result;
  return result;
}

uint64_t sub_1C95253F0()
{
  result = sub_1C96A7004();
  qword_1EDB79410 = result;
  return result;
}

uint64_t (*LocationsOfInterestManager.locations.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = LocationsOfInterestManager.locations.getter();
  return sub_1C95254E0;
}

uint64_t sub_1C95254E0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return LocationsOfInterestManager.locations.setter();
  }

  sub_1C96A53C4();
  LocationsOfInterestManager.locations.setter();
}

uint64_t LocationsOfInterestManager.deinit()
{

  return v0;
}

uint64_t LocationsOfInterestManager.__deallocating_deinit()
{
  LocationsOfInterestManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t (*sub_1C952559C(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = *v1;
  *a1 = LocationsOfInterestManager.locations.getter();
  return sub_1C95254E0;
}

_BYTE *storeEnumTagSinglePayload for LocationsOfInterestManager.Notification(_BYTE *result, int a2, int a3)
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

uint64_t DefaultLocationManager.__allocating_init(defaultCityManager:geocodeManager:)()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_38();
  DefaultLocationManager.init(defaultCityManager:geocodeManager:)(v1, v2);
  return v0;
}

uint64_t DefaultLocationManager.init(defaultCityManager:geocodeManager:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  sub_1C946B5D0(0, &unk_1EDB7CD20);
  *(v2 + 160) = sub_1C96A7904();
  *(v2 + 112) = a1;
  sub_1C9469B6C(a2, v2 + 120);
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5270);
  *(v3 + 176) = sub_1C96A6F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5210);
  v7 = sub_1C96A6F04();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v3 + 168) = v7;
  return v3;
}

uint64_t sub_1C9525838(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  v2[15] = swift_task_alloc();
  v3 = type metadata accessor for DefaultLocationManager.Configuration();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v2[18] = *(v4 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9525944, v1, 0);
}

uint64_t sub_1C9525944()
{
  v1 = v0[20];
  v2 = v0[14];
  sub_1C952611C(v1);
  v56 = *v1;
  v58 = v1[1];
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
  v3 = sub_1C96A4D74();
  MEMORY[0x1CCA8CB00](v3);

  swift_beginAccess();
  v4 = OUTLINED_FUNCTION_11();
  v7 = sub_1C94FA5DC(v4, v5, v6);
  if (v7)
  {
    v8 = v7;
    v9 = v0[13];
    swift_endAccess();
    if (*(v8 + 16) < v9)
    {

      goto LABEL_5;
    }

    v14 = v0[13];

    if (v14 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_1C9526C90(0, v0[13], v8);
      v9 = v15;
      v2 = v16;

      if ((v2 & 1) == 0)
      {
LABEL_9:
        v17 = v0[20];
        v18 = OUTLINED_FUNCTION_117();
        sub_1C952BB98(v18, v19, v9, v2);
        swift_unknownObjectRelease();
        sub_1C952BB3C(v17);
        goto LABEL_21;
      }

      sub_1C96A7DF4();
      swift_unknownObjectRetain_n();
      v48 = swift_dynamicCastClass();
      if (!v48)
      {
        swift_unknownObjectRelease();
        v48 = MEMORY[0x1E69E7CC0];
      }

      v49 = *(v48 + 16);

      if (!__OFSUB__(v2 >> 1, v9))
      {
        if (v49 == (v2 >> 1) - v9)
        {
          v50 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (!v50)
          {
            swift_unknownObjectRelease();
          }

          sub_1C952BB3C(v0[20]);
          swift_unknownObjectRelease();
LABEL_21:

          OUTLINED_FUNCTION_74();
          OUTLINED_FUNCTION_35_1();

          __asm { BRAA            X2, X16 }
        }

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_26:
    swift_unknownObjectRelease_n();
    goto LABEL_9;
  }

  swift_endAccess();
LABEL_5:
  v10 = v0[13];
  v11 = v0[14];
  swift_beginAccess();
  v12 = sub_1C94FA62C(v10, *(v11 + 176));
  v0[21] = v12;
  if (v12)
  {
    swift_endAccess();

    v13 = swift_task_alloc();
    v0[22] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5210);
    *v13 = v0;
    v13[1] = sub_1C9525E18;
  }

  else
  {
    v20 = v0[19];
    v21 = v0[20];
    v22 = v0[17];
    v23 = v0[18];
    v25 = v0[14];
    v24 = v0[15];
    v55 = v0[13];
    swift_endAccess();
    v26 = sub_1C96A7414();
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v26);
    sub_1C952B9A0(v21, v20);
    OUTLINED_FUNCTION_2_16();
    v30 = sub_1C952D554(v27, v28, v29);
    v31 = (*(v22 + 80) + 48) & ~*(v22 + 80);
    v32 = (v23 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v33[2] = v25;
    v33[3] = v30;
    v33[4] = v25;
    v33[5] = v55;
    sub_1C949A678(v20, v33 + v31, type metadata accessor for DefaultLocationManager.Configuration);
    v34 = (v33 + v32);
    *v34 = v56;
    v34[1] = v58;
    swift_retain_n();
    sub_1C951C480();
    v36 = v35;
    v0[23] = v35;
    swift_beginAccess();
    sub_1C96A3D04();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v11 + 176);
    sub_1C950BB98(v36, v55, isUniquelyReferenced_nonNull_native, v38, v39, v40, v41, v42, v54, v55);
    *(v11 + 176) = v57;
    swift_endAccess();
    v43 = swift_task_alloc();
    v0[24] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5210);
    *v43 = v0;
    v43[1] = sub_1C9525F98;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x1EEE6DA40](v44, v45, v46);
}

uint64_t sub_1C9525E18()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9525F10()
{
  OUTLINED_FUNCTION_30();
  v1 = *(v0 + 160);

  sub_1C952BB3C(v1);

  v2 = OUTLINED_FUNCTION_6_13();

  return v3(v2);
}

uint64_t sub_1C9525F98()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9526090()
{
  OUTLINED_FUNCTION_30();
  v1 = *(v0 + 160);

  sub_1C952BB3C(v1);

  v2 = OUTLINED_FUNCTION_6_13();

  return v3(v2);
}

uint64_t sub_1C952611C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C96A4C14();
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v78 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5290);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v81 = &v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v75 - v7;
  v8 = sub_1C96A42A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C96A4DF4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v75 - v19;
  if (qword_1EDB7CB18 != -1)
  {
    swift_once();
  }

  v21 = sub_1C96A4E94();
  v86 = v20;
  if (v21)
  {
    v76 = v12;
    v77 = v13;
    v84 = a1;
    sub_1C96A4EE4();
    sub_1C96A4EC4();
    if (qword_1EC3A46A0 != -1)
    {
      swift_once();
    }

    sub_1C96A4EB4();

    v87 = v89;
    v88 = v90;
    sub_1C96A4294();
    sub_1C946DFF0();
    v85 = sub_1C96A7974();
    object = v22;
    v24 = *(v9 + 8);
    v24(v11, v8);

    sub_1C96A4EC4();
    if (qword_1EC3A46A8 != -1)
    {
      swift_once();
    }

    sub_1C96A4EB4();

    v87 = v89;
    v88 = v90;
    sub_1C96A4294();
    v25 = sub_1C96A7974();
    v27 = v26;
    v24(v11, v8);

    if (qword_1EDB7AC60 != -1)
    {
      swift_once();
    }

    v28 = sub_1C96A6154();
    __swift_project_value_buffer(v28, qword_1EDB7AC68);
    sub_1C96A53C4();
    sub_1C96A53C4();
    v29 = sub_1C96A6134();
    v30 = sub_1C96A76A4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v89 = v32;
      *v31 = 141558787;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      countAndFlagsBits = v85;
      *(v31 + 14) = sub_1C9484164(v85, object, &v89);
      *(v31 + 22) = 2160;
      *(v31 + 24) = 1752392040;
      *(v31 + 32) = 2081;
      *(v31 + 34) = sub_1C9484164(v25, v27, &v89);
      _os_log_impl(&dword_1C945E000, v29, v30, "Default locations force enabled; country code override: %{private,mask.hash}s, time zone override: %{private,mask.hash}s.", v31, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v32, -1, -1);
      MEMORY[0x1CCA8E3D0](v31, -1, -1);

      v12 = v76;
    }

    else
    {

      v12 = v76;
      countAndFlagsBits = v85;
    }

    v51 = v82;
    v50 = v83;
    v52 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v52 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    v37 = v77;
    v53 = v86;
    v54 = &qword_1EDB7A000;
    if (!v52)
    {

      CurrentCountry = GeocodeManagerGetCurrentCountryCode()();
      countAndFlagsBits = CurrentCountry._countAndFlagsBits;
      object = CurrentCountry._object;
    }

    v56 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v56 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v56)
    {
      sub_1C96A4D64();

      if (__swift_getEnumTagSinglePayload(v50, 1, v12) == 1)
      {
        sub_1C96A4DE4();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v12);
        a1 = v84;
        if (EnumTagSinglePayload != 1)
        {
          sub_1C9470AFC(v50, &unk_1EC3A5F60);
        }

        goto LABEL_32;
      }

      (*(v37 + 32))(v51, v50, v12);
    }

    else
    {

      sub_1C96A4DE4();
    }

    a1 = v84;
LABEL_32:
    (*(v37 + 32))(v53, v51, v12);
    goto LABEL_33;
  }

  v34 = GeocodeManagerGetCurrentCountryCode()();
  countAndFlagsBits = v34._countAndFlagsBits;
  object = v34._object;
  sub_1C96A4DE4();
  if (qword_1EDB7AC60 != -1)
  {
    swift_once();
  }

  v35 = sub_1C96A6154();
  __swift_project_value_buffer(v35, qword_1EDB7AC68);
  (*(v13 + 16))(v15, v20, v12);
  v36 = sub_1C96A6134();
  v37 = v13;
  v38 = sub_1C96A76A4();
  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v84 = a1;
    v40 = v39;
    v41 = swift_slowAlloc();
    v85 = v34._countAndFlagsBits;
    v42 = v41;
    v89 = v41;
    *v40 = 141558787;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2081;
    sub_1C96A53C4();
    v43 = sub_1C9484164(v85, v34._object, &v89);

    *(v40 + 14) = v43;
    *(v40 + 22) = 2160;
    *(v40 + 24) = 1752392040;
    *(v40 + 32) = 2081;
    sub_1C952D554(&qword_1EDB7CC20, 255, MEMORY[0x1E6969BC0]);
    v44 = sub_1C96A7DB4();
    v46 = v45;
    (*(v37 + 8))(v15, v12);
    v47 = sub_1C9484164(v44, v46, &v89);

    *(v40 + 34) = v47;
    _os_log_impl(&dword_1C945E000, v36, v38, "Default locations will be fetched; country code: %{private,mask.hash}s, time zone: %{private,mask.hash}s.", v40, 0x2Au);
    swift_arrayDestroy();
    v48 = v42;
    countAndFlagsBits = v85;
    MEMORY[0x1CCA8E3D0](v48, -1, -1);
    v49 = v40;
    a1 = v84;
    MEMORY[0x1CCA8E3D0](v49, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v53 = v86;
  v54 = &qword_1EDB7A000;
LABEL_33:
  v58 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v58 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v58)
  {
    goto LABEL_45;
  }

  if (v54[396] != -1)
  {
    swift_once();
  }

  v59 = sub_1C96A6154();
  __swift_project_value_buffer(v59, qword_1EDB7AC68);
  v60 = sub_1C96A6134();
  v61 = sub_1C96A7684();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_1C945E000, v60, v61, "GeoServices unexpectedly returned an empty country code string", v62, 2u);
    MEMORY[0x1CCA8E3D0](v62, -1, -1);
  }

  v63 = v78;
  sub_1C96A4BC4();
  v64 = v81;
  sub_1C96A4BB4();
  v65 = v64;
  (*(v79 + 8))(v63, v80);
  v66 = sub_1C96A4BA4();
  if (__swift_getEnumTagSinglePayload(v65, 1, v66) != 1)
  {
    countAndFlagsBits = sub_1C96A4AC4();
    v73 = v72;
    (*(*(v66 - 8) + 8))(v65, v66);

    object = v73;
LABEL_45:
    v74 = type metadata accessor for DefaultLocationManager.Configuration();
    result = (*(v37 + 32))(a1 + *(v74 + 20), v53, v12);
    goto LABEL_46;
  }

  sub_1C9470AFC(v65, &qword_1EC3A5290);
  v67 = sub_1C96A6134();
  v68 = sub_1C96A7684();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_1C945E000, v67, v68, "Fallback region identifier not available -- default locations list will be empty", v69, 2u);
    MEMORY[0x1CCA8E3D0](v69, -1, -1);
  }

  v70 = type metadata accessor for DefaultLocationManager.Configuration();
  (*(v37 + 32))(a1 + *(v70 + 20), v53, v12);

  countAndFlagsBits = 0;
  object = 0xE000000000000000;
LABEL_46:
  *a1 = countAndFlagsBits;
  a1[1] = object;
  return result;
}

unint64_t sub_1C9526C90(unint64_t result, uint64_t a2, uint64_t a3)
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
    type metadata accessor for Location();
    return sub_1C96A53C4();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1C9526D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a4;
  v8[7] = a5;
  v8[5] = a1;
  v11 = swift_task_alloc();
  v8[10] = v11;
  *v11 = v8;
  v11[1] = sub_1C9526DF0;

  return sub_1C95270C0(a6, a5);
}

uint64_t sub_1C9526DF0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  *(v6 + 88) = v5;

  v7 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C9526EEC()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  swift_beginAccess();
  sub_1C96A53C4();
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + 168);
  sub_1C950BD74();
  *(v3 + 168) = v7;
  swift_endAccess();
  *v4 = v1;
  sub_1C9526FC0(v3, v2);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_43_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C9526FC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C950B04C(a2);
  if (v4)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v6 = *(a1 + 176);
    *(a1 + 176) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F88);
    sub_1C96A7B84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5270);
    sub_1C96A7B94();
    *(a1 + 176) = v6;
  }

  return swift_endAccess();
}

uint64_t sub_1C95270C0(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = sub_1C96A4DF4();
  v3[30] = v4;
  v5 = *(v4 - 8);
  v3[31] = v5;
  v3[32] = *(v5 + 64);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  sub_1C96A4C14();
  v3[36] = swift_task_alloc();
  v6 = sub_1C96A60A4();
  v3[37] = v6;
  v7 = *(v6 - 8);
  v3[38] = v7;
  v3[39] = *(v7 + 64);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9527240, v2, 0);
}

uint64_t sub_1C9527240()
{
  v1 = v0;
  v26 = v0 + 2;
  v27 = v0 + 24;
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[38];
  aBlock = v0 + 18;
  v5 = v0[36];
  v6 = v0[37];
  v7 = v0[35];
  v8 = v0[31];
  v24 = v1[30];
  v25 = v7;
  v23 = v1[27];
  v9 = *(v1[29] + 160);
  sub_1C96A6084();
  sub_1C96A77F4();
  sub_1C96A6074();
  v10 = sub_1C95288E4();
  v1[42] = v10;
  sub_1C946B5D0(0, &qword_1EDB7AB38);
  sub_1C96A4BC4();
  v11 = sub_1C9528C00(v5);
  v1[43] = v11;
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v3, v2, v6);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v12;
  (*(v4 + 32))(v14 + v13, v3, v6);
  v1[22] = sub_1C952BC78;
  v1[23] = v14;
  v1[18] = MEMORY[0x1E69E9820];
  v1[19] = 1107296256;
  v1[20] = sub_1C946FCF8;
  v1[21] = &block_descriptor_1;
  v15 = _Block_copy(aBlock);
  v16 = v10;

  [v11 setDatabaseTornDownCallback_];
  _Block_release(v15);
  v1[44] = *v23;
  v1[45] = *(v23 + 1);
  v17 = *(type metadata accessor for DefaultLocationManager.Configuration() + 20);
  v18 = *(v8 + 16);
  v1[46] = v18;
  v1[47] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v25, &v23[v17], v24);
  v19 = sub_1C96A7004();
  v1[48] = v19;
  v1[2] = v1;
  v1[7] = v27;
  v1[3] = sub_1C95275A0;
  v20 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5278);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C9528D48;
  v1[13] = &block_descriptor_21;
  v1[14] = v20;
  [v11 regionByISOCode:v19 result:?];

  return MEMORY[0x1EEE6DEC8](v26);
}

uint64_t sub_1C95275A0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 392) = v4;
  v5 = *(v3 + 232);
  if (v4)
  {
    v6 = sub_1C9528388;
  }

  else
  {
    v6 = sub_1C95276B4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1C95276B4()
{
  OUTLINED_FUNCTION_49();
  v41 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 384);
  *(v0 + 400) = v1;

  if (!v1)
  {
    if (qword_1EDB7AC60 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v19 = sub_1C96A6154();
    __swift_project_value_buffer(v19, qword_1EDB7AC68);
    sub_1C96A53C4();
    v20 = sub_1C96A6134();
    v21 = sub_1C96A7684();
    v22 = OUTLINED_FUNCTION_41(v21);
    v23 = *(v0 + 360);
    if (v22)
    {
      v24 = *(v0 + 352);
      v25 = OUTLINED_FUNCTION_102();
      v26 = swift_slowAlloc();
      v40 = v26;
      *v25 = 141558275;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2081;
      v27 = sub_1C9484164(v24, v23, &v40);

      *(v25 + 14) = v27;
      OUTLINED_FUNCTION_16_4();
      _os_log_impl(v28, v29, v30, v31, v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }

    v33 = *(v0 + 336);

    v34 = OUTLINED_FUNCTION_48_0();
    v35(v34);
    v36 = OUTLINED_FUNCTION_117();
    v37(v36);
    OUTLINED_FUNCTION_29_1();

    OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_43_1();

    __asm { BRAA            X2, X16 }
  }

  v3 = *(v0 + 368);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 248);
  v7 = *(v0 + 240);
  *(v0 + 200) = MEMORY[0x1E69E7CC0];
  v3(v5, v4, v7);
  v8 = *(v6 + 80);
  *(v0 + 512) = v8;
  v9 = (v8 + 16) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 408) = v10;
  v11 = *(v6 + 32);
  *(v0 + 416) = v11;
  *(v0 + 424) = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v5, v7);
  v12 = swift_task_alloc();
  *(v0 + 432) = v12;
  *v12 = v0;
  v12[1] = sub_1C95279B8;
  OUTLINED_FUNCTION_43_1();

  return sub_1C9529120(v13, v14, v15, v16);
}

uint64_t sub_1C95279B8()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_15();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 440) = v0;

  v7 = *(v4 + 232);

  if (v0)
  {
    v8 = sub_1C9528564;
  }

  else
  {
    *(v5 + 448) = v3;
    v8 = sub_1C9527B04;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C9527B04()
{
  v1 = v0 + 200;
  v2 = *(v0 + 224);
  sub_1C9648E04(*(v0 + 448));
  v3 = *(v0 + 200);
  *(v0 + 456) = v3;
  if (sub_1C946D04C(v3) < v2)
  {
    v1 = *(v0 + 224);
    v4 = sub_1C946D04C(v3);
    v5 = v1 - v4;
    if (!__OFSUB__(v1, v4))
    {
      v6 = *(v0 + 416);
      v7 = *(v0 + 400);
      (*(v0 + 368))(*(v0 + 264), *(v0 + 280), *(v0 + 240));
      v8 = swift_allocObject();
      *(v0 + 464) = v8;
      OUTLINED_FUNCTION_25_7();
      v6();
      v9 = swift_task_alloc();
      *(v0 + 472) = v9;
      *v9 = v0;
      v9[1] = sub_1C9527E38;

      return sub_1C9529120(v7, v5, sub_1C952BE48, v8);
    }

    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_0_20();
    goto LABEL_12;
  }

  if (!sub_1C946D04C(v3))
  {
    MEMORY[0x1CCA8CC10](*(v0 + 400));
    OUTLINED_FUNCTION_45_2();
    if (v11)
    {
      sub_1C96A72F4();
    }

    sub_1C96A7314();
    v3 = *(v0 + 200);
  }

  v12 = *(v0 + 224);
  if (sub_1C946D04C(v3) >= v12)
  {
    goto LABEL_15;
  }

  if (qword_1EDB7AC60 != -1)
  {
    goto LABEL_19;
  }

LABEL_12:
  v13 = sub_1C96A6154();
  OUTLINED_FUNCTION_54_0(v13, qword_1EDB7AC68);
  v14 = sub_1C96A6134();
  v15 = sub_1C96A7684();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 224);
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v16;
    OUTLINED_FUNCTION_12_10();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    OUTLINED_FUNCTION_40();
  }

LABEL_15:
  v23 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5210);
  OUTLINED_FUNCTION_2_16();
  sub_1C952D554(v24, v25, v26);
  v27 = swift_task_alloc();
  *(v0 + 496) = v27;
  *(v27 + 16) = v1;
  *(v27 + 24) = v23;
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 504) = v28;
  *v28 = v29;
  OUTLINED_FUNCTION_4_15(v28);
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DBF8](v30);
}

uint64_t sub_1C9527E38()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_15();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 480) = v0;

  v7 = *(v4 + 232);

  if (v0)
  {
    v8 = sub_1C9528710;
  }

  else
  {
    *(v5 + 488) = v3;
    v8 = sub_1C9527F84;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C9527F84()
{
  OUTLINED_FUNCTION_39();
  sub_1C9648E04(*(v0 + 488));
  v1 = *(v0 + 200);
  if (!sub_1C946D04C(v1))
  {
    MEMORY[0x1CCA8CC10](*(v0 + 400));
    OUTLINED_FUNCTION_45_2();
    if (v2)
    {
      sub_1C96A72F4();
    }

    sub_1C96A7314();
    v1 = *(v0 + 200);
  }

  v3 = *(v0 + 224);
  if (sub_1C946D04C(v1) < v3)
  {
    if (qword_1EDB7AC60 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v4 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v4, qword_1EDB7AC68);
    v5 = sub_1C96A6134();
    v6 = sub_1C96A7684();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 224);
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v7;
      OUTLINED_FUNCTION_12_10();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
      OUTLINED_FUNCTION_40();
    }
  }

  v14 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5210);
  OUTLINED_FUNCTION_2_16();
  sub_1C952D554(v15, v16, v17);
  v18 = swift_task_alloc();
  *(v0 + 496) = v18;
  *(v18 + 16) = v0 + 200;
  *(v18 + 24) = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 504) = v19;
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_4_15(v19);

  return MEMORY[0x1EEE6DBF8](v21);
}

uint64_t sub_1C9528190()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v2 = *(v1 + 232);
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C95282AC, v2, 0);
}

uint64_t sub_1C95282AC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_34_3();

  v2 = OUTLINED_FUNCTION_48_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_117();
  v5(v4);

  v6 = OUTLINED_FUNCTION_6_13();

  return v7(v6);
}

uint64_t sub_1C9528388()
{
  v23 = v0[48];
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[35];
  swift_willThrow();

  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  v6 = OUTLINED_FUNCTION_117();
  v7(v6);

  v8 = v0[49];
  if (qword_1EDB7AC60 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v9 = sub_1C96A6154();
  OUTLINED_FUNCTION_54_0(v9, qword_1EDB7AC68);
  v10 = v8;
  v11 = sub_1C96A6134();
  v12 = sub_1C96A7684();

  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_102();
    v13 = OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_9_12(7.2225e-34);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v14;
    *v13 = v14;
    OUTLINED_FUNCTION_12_10();
    _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    sub_1C9470AFC(v13, &qword_1EC3A5410);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_40();
  }

  OUTLINED_FUNCTION_29_1();

  OUTLINED_FUNCTION_74();
  v21 = MEMORY[0x1E69E7CC0];

  return v20(v21);
}

uint64_t sub_1C9528564()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_34_3();

  v4 = OUTLINED_FUNCTION_48_0();
  v5(v4);
  v6 = OUTLINED_FUNCTION_117();
  v7(v6);
  v8 = *(v0 + 440);
  if (qword_1EDB7AC60 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v9 = sub_1C96A6154();
  OUTLINED_FUNCTION_54_0(v9, qword_1EDB7AC68);
  v10 = v8;
  v11 = sub_1C96A6134();
  v12 = sub_1C96A7684();

  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_102();
    v13 = OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_9_12(7.2225e-34);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 14) = v14;
    *v13 = v14;
    OUTLINED_FUNCTION_12_10();
    _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    sub_1C9470AFC(v13, &qword_1EC3A5410);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_40();
  }

  OUTLINED_FUNCTION_29_1();

  OUTLINED_FUNCTION_74();
  v21 = MEMORY[0x1E69E7CC0];

  return v20(v21);
}

void sub_1C9528710()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 336);
  v3 = *(v0 + 328);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v6 = *(v0 + 280);

  v7 = OUTLINED_FUNCTION_46();
  v8(v7);
  (*(v5 + 8))(v3, v4);

  v9 = *(v0 + 480);
  if (qword_1EDB7AC60 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v10 = sub_1C96A6154();
  OUTLINED_FUNCTION_54_0(v10, qword_1EDB7AC68);
  v11 = v9;
  v12 = sub_1C96A6134();
  v13 = sub_1C96A7684();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_102();
    v14 = OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_9_12(7.2225e-34);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v15;
    *v14 = v15;
    OUTLINED_FUNCTION_12_10();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    sub_1C9470AFC(v14, &qword_1EC3A5410);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_40();
  }

  OUTLINED_FUNCTION_29_1();

  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_49_1();

  __asm { BRAA            X2, X16 }
}

id sub_1C95288E4()
{
  v19[1] = *MEMORY[0x1E69E9840];
  sub_1C946B5D0(0, &qword_1EDB7AB20);
  v0 = sub_1C94AE264();
  v1 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5390);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C96ACFF0;
  *(v2 + 32) = v0;
  objc_allocWithZone(MEMORY[0x1E69C7548]);
  v3 = v0;
  v4 = sub_1C94AE2F4(0xD00000000000001FLL, 0x80000001C96CE2F0, v1);
  v19[0] = 0;
  if ([v4 acquireWithError_])
  {
    v5 = v19[0];
  }

  else
  {
    v6 = v19[0];
    v7 = sub_1C96A4584();

    swift_willThrow();
    if (qword_1EDB7AC60 != -1)
    {
      swift_once();
    }

    v8 = sub_1C96A6154();
    __swift_project_value_buffer(v8, qword_1EDB7AC68);
    v9 = v7;
    v10 = sub_1C96A6134();
    v11 = sub_1C96A76A4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v12 = 136446210;
      v14 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
      v15 = sub_1C96A70A4();
      v17 = sub_1C9484164(v15, v16, v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1C945E000, v10, v11, "Failed to acquire runningboard assertion. error=%{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1CCA8E3D0](v13, -1, -1);
      MEMORY[0x1CCA8E3D0](v12, -1, -1);
    }

    [v4 invalidate];
    return 0;
  }

  return v4;
}

id sub_1C9528C00(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C96A4B64();
  v4 = [v2 initWithLocale_];

  v5 = sub_1C96A4C14();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_1C9528C9C(void *a1)
{
  [a1 invalidate];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1C96A77E4();
    v3 = *(v2 + 160);
    sub_1C96A6074();
  }
}

uint64_t sub_1C9528D48(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1C9614994(v5, v6);
  }

  else
  {
    v8 = a2;

    return sub_1C9611EA0(v5, a2);
  }
}

uint64_t sub_1C9528DD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v12 - v4;
  v6 = [a1 timeZone];
  if (v6)
  {
    v7 = v6;
    sub_1C96A4DD4();

    v8 = sub_1C96A4DF4();
    v9 = 0;
  }

  else
  {
    v8 = sub_1C96A4DF4();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v9, 1, v8);
  v10 = sub_1C9528ECC(v5);
  sub_1C9470AFC(v5, &unk_1EC3A5F60);
  return v10 & 1;
}

uint64_t sub_1C9528ECC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_1C96A4DF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C94709F4(a1, v4, &unk_1EC3A5F60);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = sub_1C952B4F4();
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      v14 = sub_1C952B4F4();
      if (v15)
      {
        if (v12 == v14 && v13 == v15)
        {
          v9 = 1;
          goto LABEL_18;
        }

        goto LABEL_9;
      }
    }

    v17 = sub_1C96A4D74();
    v19 = v18;
    if (v17 == sub_1C96A4D74() && v19 == v20)
    {
      v9 = 1;
      goto LABEL_18;
    }

LABEL_9:
    v9 = sub_1C96A7DE4();
LABEL_18:

    (*(v6 + 8))(v8, v5);
    return v9 & 1;
  }

  sub_1C9470AFC(v4, &unk_1EC3A5F60);
  v9 = 0;
  return v9 & 1;
}

uint64_t sub_1C9529120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C9529148, 0, 0);
}

uint64_t sub_1C9529148()
{
  OUTLINED_FUNCTION_39();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 96) = MEMORY[0x1E69E7CC0];
  if (*(v0 + 128) < 1)
  {
    OUTLINED_FUNCTION_74();
    v9 = MEMORY[0x1E69E7CC0];

    return v8(v9);
  }

  else
  {
    [*(v0 + 120) regionId];
    sub_1C96A76B4();
    v2 = *(v0 + 40);
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = *(v2 - 8);
    v5 = swift_task_alloc();
    (*(v4 + 16))(v5, v3, v2);
    *(v0 + 80) = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_38();
    *(v0 + 88) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_1C96A74F4();

    *(v0 + 160) = v1;
    *(v0 + 168) = v1;
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, *(v0 + 80));
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    *(v0 + 176) = v6;
    *v6 = v7;
    OUTLINED_FUNCTION_14_9(v6);
    OUTLINED_FUNCTION_33_1();

    return MEMORY[0x1EEE6D8D0]();
  }
}

uint64_t sub_1C9529360()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v2 = *v1;
  OUTLINED_FUNCTION_15();
  *v3 = v2;

  if (v0)
  {
    v4 = sub_1C9529610;
  }

  else
  {
    v4 = sub_1C9529460;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C9529460()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[13];
  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = v0[17];
  if (v2 && (v2(v0[13]) & 1) == 0)
  {
    v6 = v0[20];
    v5 = v0[21];
  }

  else
  {
    v3 = v0 + 12;
    v4 = v1;
    MEMORY[0x1CCA8CC10]();
    if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C96A72F4();
    }

    sub_1C96A7314();
    v5 = *v3;
    v6 = v5;
  }

  v7 = v6 >> 62 ? sub_1C96A7BB4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = v0[16];

  if (v7 >= v8)
  {
LABEL_15:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_43_1();

    __asm { BRAA            X2, X16 }
  }

  v0[20] = v6;
  v0[21] = v5;
  v9 = OUTLINED_FUNCTION_48_0();
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[22] = v11;
  *v11 = v12;
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_43_1();

  return MEMORY[0x1EEE6D8D0]();
}

uint64_t sub_1C9529610()
{
  OUTLINED_FUNCTION_18();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_17();

  return v1();
}

BOOL sub_1C952967C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v12 - v4;
  v6 = [a1 timeZone];
  if (v6)
  {
    v7 = v6;
    sub_1C96A4DD4();

    v8 = sub_1C96A4DF4();
    v9 = 0;
  }

  else
  {
    v8 = sub_1C96A4DF4();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v9, 1, v8);
  v10 = sub_1C9528ECC(v5);
  sub_1C9470AFC(v5, &unk_1EC3A5F60);
  return (v10 & 1) == 0;
}

uint64_t sub_1C952977C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5218);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = *(type metadata accessor for Location() - 8);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C95298F8, a4, 0);
}

uint64_t sub_1C95298F8()
{
  v26 = **(v0 + 96);
  v27 = sub_1C946D04C(v26);
  v1 = sub_1C96A53C4();
  for (i = 0; v27 != i; i = v28 + 1)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x1CCA8D440](i, v26);
    }

    else
    {
      if (i >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v1 = *(v26 + 8 * i + 32);
    }

    v4 = v1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return MEMORY[0x1EEE453B0](v1, v2);
    }

    v5 = *(v0 + 160);
    v6 = *(v0 + 168);
    v7 = *(v0 + 104);
    v8 = sub_1C96A7414();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v4;
    v9[5] = v7;
    v9[6] = i;
    v28 = i;
    sub_1C94709F4(v6, v5, &qword_1EC3A5090);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v8);
    v11 = v4;
    sub_1C96A3D04();
    v12 = *(v0 + 160);
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_25_7();
      sub_1C9470AFC(v13, v14);
    }

    else
    {
      sub_1C96A7404();
      (*(*(v8 - 8) + 8))(v12, v8);
    }

    if (v9[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_38();
      v15 = sub_1C96A7374();
      v17 = v16;
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v18 = **(v0 + 88);
    v19 = swift_allocObject();
    *(v19 + 16) = &unk_1C96AD6C0;
    *(v19 + 24) = v9;
    sub_1C96A3D04();
    if (v17 | v15)
    {
      v20 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v15;
      *(v0 + 40) = v17;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v0 + 168);
    *(v0 + 48) = 1;
    *(v0 + 56) = v20;
    *(v0 + 64) = v18;
    swift_task_create();

    v1 = sub_1C9470AFC(v21, &qword_1EC3A5090);
  }

  v22 = *(v0 + 88);

  *(v0 + 72) = *v22;
  v23 = swift_task_alloc();
  *(v0 + 176) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5280);
  v2 = sub_1C952D36C();
  *v23 = v0;
  v23[1] = sub_1C9529C88;
  v1 = v24;

  return MEMORY[0x1EEE453B0](v1, v2);
}

void sub_1C9529C88()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_7_11();
  *v4 = v3;
  *v4 = *v1;
  v3[23] = v5;
  v3[24] = v0;

  if (v0)
  {
  }

  else
  {
    v6 = v3[13];

    MEMORY[0x1EEE6DFA0](sub_1C9529DB4, v6, 0);
  }
}

uint64_t sub_1C9529DB4()
{
  v22 = v0;
  v1 = *(v0 + 192);
  v21 = *(v0 + 184);
  sub_1C96A53C4();
  sub_1C952BED8(&v21);
  if (!v1)
  {

    v4 = v21;
    v5 = *(v21 + 16);
    if (v5)
    {
      v6 = *(v0 + 120);
      v21 = MEMORY[0x1E69E7CC0];
      sub_1C9522C58();
      v7 = v21;
      v8 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v20 = *(v6 + 72);
      do
      {
        v9 = *(v0 + 152);
        v11 = *(v0 + 128);
        v10 = *(v0 + 136);
        sub_1C94709F4(v8, v10, &qword_1EC3A5218);
        sub_1C949E110(v10, v11, &qword_1EC3A5218);
        OUTLINED_FUNCTION_15_8();
        sub_1C949A678(v11 + v12, v9, v13);
        v21 = v7;
        v14 = *(v7 + 16);
        if (v14 >= *(v7 + 24) >> 1)
        {
          sub_1C9522C58();
          v7 = v21;
        }

        *(v7 + 16) = v14 + 1;
        OUTLINED_FUNCTION_15_8();
        sub_1C949A678(v15, v16, v17);
        v8 += v20;
        --v5;
      }

      while (v5);
    }

    else
    {

      v7 = MEMORY[0x1E69E7CC0];
    }

    **(v0 + 80) = v7;

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_35_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_35_1();
}

uint64_t sub_1C9529FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v6[6] = swift_task_alloc();
  v7 = sub_1C96A4DF4();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C952A0F4, 0, 0);
}

uint64_t sub_1C952A0F4()
{
  v2 = *(v0 + 24);
  [v2 representativeCoordinate];
  v4 = v3;
  [v2 representativeCoordinate];
  v6 = CLLocationCoordinate2DMake(v4, v5);
  *(v0 + 96) = v6;
  v7 = [v2 timeZone];
  if (v7)
  {
    v8 = v7;
    v9 = *(v0 + 56);
    sub_1C96A4DD4();

    OUTLINED_FUNCTION_25_7();
    v10();
    v55 = OUTLINED_FUNCTION_27_5();
    v12 = v11;
    v13 = [v9 name];
    v14 = sub_1C96A7024();

    v15 = OUTLINED_FUNCTION_44_0();
    v16(v15);
    sub_1C96A5954();
    sub_1C96A5944();
    v17 = sub_1C96A4A54();
    OUTLINED_FUNCTION_37_2(v17);
    sub_1C96A53C4();
    MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
    v18 = OUTLINED_FUNCTION_46();
    MEMORY[0x1CCA8CB00](v18);

    OUTLINED_FUNCTION_22_5();
    v19 = v19 && v12 == 0xE700000000000000;
    if (v19)
    {

      v20 = 1;
    }

    else
    {
      v20 = OUTLINED_FUNCTION_50_0();
    }

    v34 = OUTLINED_FUNCTION_18_9();
    v35(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5218);
    v36 = OUTLINED_FUNCTION_52_2();
    v44 = OUTLINED_FUNCTION_11_8(v36, v37, v38, v39, v40, v41, v42, v43, v49, v50, v52, v53, v54, v55, v14);
    v45(v44);
    sub_1C949E110(v51, v1 + *(v20 + 24), &unk_1EC3A5430);
    OUTLINED_FUNCTION_17_10();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_39_1();

    __asm { BRAA            X1, X16 }
  }

  v21 = swift_allocObject();
  *(v0 + 112) = v21;
  swift_weakInit();
  v22 = swift_task_alloc();
  *(v0 + 120) = v22;
  *(v22 + 16) = v21;
  *(v22 + 24) = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 128) = v23;
  *v23 = v24;
  v23[1] = sub_1C952A40C;
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x1EEE6DDE0](v25, v26, v27, v28, v29, v30, v31, v32);
}

uint64_t sub_1C952A40C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C952A530, 0, 0);
}

void sub_1C952A530()
{
  v32 = OUTLINED_FUNCTION_27_5();
  v3 = v2;
  v4 = [v0 name];
  v5 = sub_1C96A7024();

  v6 = OUTLINED_FUNCTION_44_0();
  v7(v6);
  sub_1C96A5954();
  sub_1C96A5944();
  v8 = sub_1C96A4A54();
  OUTLINED_FUNCTION_37_2(v8);
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
  v9 = OUTLINED_FUNCTION_46();
  MEMORY[0x1CCA8CB00](v9);

  OUTLINED_FUNCTION_22_5();
  v10 = v10 && v3 == 0xE700000000000000;
  if (v10)
  {

    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_50_0();
  }

  v12 = OUTLINED_FUNCTION_18_9();
  v13(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5218);
  v14 = OUTLINED_FUNCTION_52_2();
  v22 = OUTLINED_FUNCTION_11_8(v14, v15, v16, v17, v18, v19, v20, v21, v26, v27, v29, v30, v31, v32, v5);
  v23(v22);
  sub_1C949E110(v28, v1 + *(v11 + 24), &unk_1EC3A5430);
  OUTLINED_FUNCTION_17_10();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_39_1();

  __asm { BRAA            X1, X16 }
}

void sub_1C952A6DC(uint64_t a1, double a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5288);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = sub_1C96A4DF4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong[18];
    v14 = Strong[19];
    __swift_project_boxed_opaque_existential_1(Strong + 15, v13);
    v26 = (*(v14 + 24))(v13, v14, a2, a3);
    v28 = sub_1C946B5D0(0, &qword_1EDB7CDB0);
    v15 = sub_1C96A7764();
    v25 = v8;
    v16 = v15;
    v27 = *(v7 + 16);
    v27(v10, a1, v6);
    v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    v23 = a1;
    v19 = v6;
    v24 = *(v7 + 32);
    v24(v18 + v17, v10, v6);
    v22 = sub_1C96A5644();

    v20 = sub_1C96A7764();
    v27(v10, v23, v19);
    v21 = swift_allocObject();
    v24(v21 + v17, v10, v19);
    sub_1C96A5674();
  }

  else
  {
    sub_1C96A4DE4();
    sub_1C96A7394();
  }
}

uint64_t sub_1C952AA10(uint64_t a1)
{
  v2 = sub_1C96A4DF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB7AC60 != -1)
  {
    swift_once();
  }

  v6 = sub_1C96A6154();
  __swift_project_value_buffer(v6, qword_1EDB7AC68);
  v7 = sub_1C96A6134();
  v8 = sub_1C96A7684();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C945E000, v7, v8, "Default location unexpectedly did not include timezone information; fell back on revgeo location", v9, 2u);
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
  }

  v10 = type metadata accessor for Location();
  (*(v3 + 16))(v5, a1 + *(v10 + 20), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5288);
  return sub_1C96A7394();
}

uint64_t sub_1C952ABD8()
{
  v0 = sub_1C96A4DF4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  if (qword_1EDB7AC60 != -1)
  {
    swift_once();
  }

  v1 = sub_1C96A6154();
  __swift_project_value_buffer(v1, qword_1EDB7AC68);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A7684();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C945E000, v2, v3, "Default location unexpectedly did not include timezone information and revgeo failed; fell back to current timezone", v4, 2u);
    MEMORY[0x1CCA8E3D0](v4, -1, -1);
  }

  sub_1C96A4DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5288);
  return sub_1C96A7394();
}

uint64_t sub_1C952AD30()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  *(v6 + 64) = v5;

  v7 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C952AE2C()
{
  OUTLINED_FUNCTION_30();
  v2 = v0[4];
  v1 = v0[5];
  sub_1C94DBCEC();

  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1C9470AFC(v0[4], &qword_1EC3A5450);
    if (qword_1EDB7AC60 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v3 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v3, qword_1EDB7AC68);
    v4 = sub_1C96A6134();
    v5 = sub_1C96A7694();
    if (OUTLINED_FUNCTION_41(v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_16_4();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_26();
    }

    v11 = 1;
  }

  else
  {
    sub_1C949A678(v0[4], v0[6], type metadata accessor for Location);
    v12 = OUTLINED_FUNCTION_117();
    sub_1C949A678(v12, v13, type metadata accessor for Location);
    v11 = 0;
  }

  __swift_storeEnumTagSinglePayload(v0[2], v11, 1, v0[5]);

  OUTLINED_FUNCTION_17();

  return v14();
}

uint64_t sub_1C952AFDC()
{
  OUTLINED_FUNCTION_18();
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7CB00 != -1)
  {
    OUTLINED_FUNCTION_20_7();
  }

  sub_1C96A4EB4();

  if (*(v0 + 40) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 24) = v1;
    *v1 = v0;
    v1[1] = sub_1C952B0FC;

    return sub_1C9525838(3);
  }

  else
  {
    WCDefaultCityManager.defaultLocations()();
    OUTLINED_FUNCTION_74();

    return v3();
  }
}

uint64_t sub_1C952B0FC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  *(v6 + 32) = v5;

  v7 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C952B1F8()
{
  OUTLINED_FUNCTION_30();
  if (!*(*(v0 + 32) + 16))
  {
    if (qword_1EDB7AC60 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v1 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v1, qword_1EDB7AC68);
    v2 = sub_1C96A6134();
    v3 = sub_1C96A7694();
    if (OUTLINED_FUNCTION_41(v3))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_16_4();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
      OUTLINED_FUNCTION_26();
    }
  }

  OUTLINED_FUNCTION_74();

  return v9();
}

uint64_t DefaultLocationManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DefaultLocationManager.__deallocating_deinit()
{
  DefaultLocationManager.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C952B380()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C952B410;

  return DefaultLocationManager.defaultLocations.getter();
}

uint64_t sub_1C952B410()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_13();

  return v4(v3);
}

uint64_t sub_1C952B4F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v19 - v1;
  v3 = sub_1C96A4B04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C96A4C14();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  strcpy(v19, "en@timezone=");
  HIBYTE(v19[6]) = 0;
  v19[7] = -5120;
  v14 = sub_1C96A4D74();
  MEMORY[0x1CCA8CB00](v14);

  sub_1C96A4AA4();
  (*(v4 + 104))(v6, *MEMORY[0x1E6969640], v3);
  sub_1C96A4AB4();
  (*(v4 + 8))(v6, v3);
  v15 = *(v8 + 8);
  v15(v13, v7);
  sub_1C96A4AA4();
  sub_1C96A4C04();
  v16 = sub_1C96A4DF4();
  if (__swift_getEnumTagSinglePayload(v2, 1, v16) == 1)
  {
    v15(v10, v7);
    sub_1C9470AFC(v2, &unk_1EC3A5F60);
    return 0;
  }

  else
  {
    v17 = sub_1C96A4D74();
    v15(v10, v7);
    (*(*(v16 - 8) + 8))(v2, v16);
  }

  return v17;
}

uint64_t dispatch thunk of DefaultLocationManagerType.defaultLocations.getter()
{
  OUTLINED_FUNCTION_39();
  v5 = (*(v1 + 16) + **(v1 + 16));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1C952B410;
  v3 = OUTLINED_FUNCTION_38();

  return v5(v3);
}

uint64_t type metadata accessor for DefaultLocationManager.Configuration()
{
  result = qword_1EDB7BE80;
  if (!qword_1EDB7BE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C952B9A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultLocationManager.Configuration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C952BA04()
{
  type metadata accessor for DefaultLocationManager.Configuration();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;
  OUTLINED_FUNCTION_25_7();
  OUTLINED_FUNCTION_49_1();

  return sub_1C9526D38(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C952BB3C(uint64_t a1)
{
  v2 = type metadata accessor for DefaultLocationManager.Configuration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C952BB98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
    sub_1C94FBD70();
    if (v4 != a3)
    {
      type metadata accessor for Location();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_1C952BC78()
{
  v1 = sub_1C96A60A4();
  OUTLINED_FUNCTION_7(v1);
  v2 = *(v0 + 16);

  sub_1C9528C9C(v2);
}

uint64_t sub_1C952BD1C()
{
  OUTLINED_FUNCTION_30();
  v3 = v2;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1C94B0CEC;

  return sub_1C952977C(v5, v3, v7, v6);
}

uint64_t objectdestroy_23Tm()
{
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C952BE60(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_31_1();

  return a2(a1);
}

void sub_1C952BED8(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5218) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C964B164(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C952BF8C(v6);
  *a1 = v3;
}

void sub_1C952BF8C(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C96A7DA4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5218);
        v6 = sub_1C96A7304();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5218) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C952C320(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C952C0D4(0, v2, 1, a1);
  }
}

void sub_1C952C0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5218);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v26 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v26 - v14);
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v33 = -v17;
    v34 = v16;
    v19 = a1 - a3;
    v27 = v17;
    v20 = v16 + v17 * a3;
    while (2)
    {
      v31 = v18;
      v32 = a3;
      v29 = v20;
      v30 = v19;
      v21 = v19;
      do
      {
        sub_1C94709F4(v20, v15, &qword_1EC3A5218);
        sub_1C94709F4(v18, v11, &qword_1EC3A5218);
        v22 = *v15;
        v23 = *v11;
        sub_1C9470AFC(v11, &qword_1EC3A5218);
        sub_1C9470AFC(v15, &qword_1EC3A5218);
        if (v22 >= v23)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return;
        }

        v24 = v35;
        sub_1C949E110(v20, v35, &qword_1EC3A5218);
        swift_arrayInitWithTakeFrontToBack();
        sub_1C949E110(v24, v18, &qword_1EC3A5218);
        v18 += v33;
        v20 += v33;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v32 + 1;
      v18 = v31 + v27;
      v19 = v30 - 1;
      v20 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C952C320(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v105 = a1;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5218);
  v112 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v109 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v119 = &v104 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v122 = (&v104 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v121 = (&v104 - v13);
  v14 = a3[1];
  v114 = a3;
  if (v14 < 1)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v116 = v16;
    v16 = *v105;
    if (!*v105)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v115;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_103:
      v97 = (v116 + 16);
      for (i = *(v116 + 2); i >= 2; *v97 = i)
      {
        if (!*v114)
        {
          goto LABEL_138;
        }

        v99 = &v116[16 * i];
        v100 = *v99;
        v101 = &v97[2 * i];
        v102 = *(v101 + 1);
        sub_1C952CC64(*v114 + *(v112 + 72) * *v99, *v114 + *(v112 + 72) * *v101, *v114 + *(v112 + 72) * v102, v16);
        if (v4)
        {
          break;
        }

        if (v102 < v100)
        {
          goto LABEL_126;
        }

        if (i - 2 >= *v97)
        {
          goto LABEL_127;
        }

        *v99 = v100;
        *(v99 + 1) = v102;
        v103 = *v97 - i;
        if (*v97 < i)
        {
          goto LABEL_128;
        }

        i = *v97 - 1;
        sub_1C964AD0C(v101 + 16, v103, v101);
      }

LABEL_99:

      return;
    }

LABEL_135:
    v116 = sub_1C964ACF8(v116);
    goto LABEL_103;
  }

  v104 = a4;
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = v15;
    v18 = v15 + 1;
    v106 = v15;
    if (v15 + 1 < v14)
    {
      v116 = v16;
      v117 = v15 + 1;
      v19 = *v114;
      v20 = *(v112 + 72);
      v16 = *v114 + v20 * v18;
      v21 = v121;
      sub_1C94709F4(v16, v121, &qword_1EC3A5218);
      v22 = v122;
      sub_1C94709F4(v19 + v20 * v17, v122, &qword_1EC3A5218);
      v23 = *v21;
      v110 = *v22;
      v111 = v23;
      sub_1C9470AFC(v22, &qword_1EC3A5218);
      sub_1C9470AFC(v21, &qword_1EC3A5218);
      v24 = v17 + 2;
      v113 = v20;
      v25 = v19 + v20 * (v17 + 2);
      while (1)
      {
        v26 = v24;
        if (++v117 >= v14)
        {
          break;
        }

        LODWORD(v118) = v111 < v110;
        v27 = v121;
        sub_1C94709F4(v25, v121, &qword_1EC3A5218);
        v28 = v14;
        v29 = v122;
        sub_1C94709F4(v16, v122, &qword_1EC3A5218);
        v4 = *v27;
        v30 = *v29;
        v31 = v29;
        v14 = v28;
        sub_1C9470AFC(v31, &qword_1EC3A5218);
        sub_1C9470AFC(v27, &qword_1EC3A5218);
        v25 += v113;
        v16 += v113;
        v24 = v26 + 1;
        if (((v118 ^ (v4 >= v30)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v117 = v14;
LABEL_9:
      if (v111 >= v110)
      {
        v16 = v116;
        v18 = v117;
        v17 = v106;
      }

      else
      {
        v18 = v117;
        if (v117 < v106)
        {
          goto LABEL_132;
        }

        if (v106 >= v117)
        {
          v16 = v116;
          v17 = v106;
        }

        else
        {
          if (v14 >= v26)
          {
            v32 = v26;
          }

          else
          {
            v32 = v14;
          }

          v33 = v113 * (v32 - 1);
          v34 = v113 * v32;
          v4 = v106 * v113;
          v35 = v106;
          v17 = v106;
          do
          {
            if (v35 != --v18)
            {
              v36 = *v114;
              if (!*v114)
              {
                goto LABEL_139;
              }

              sub_1C949E110(v36 + v4, v109, &qword_1EC3A5218);
              v37 = v4 < v33 || v36 + v4 >= v36 + v34;
              if (v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v4 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1C949E110(v109, v36 + v33, &qword_1EC3A5218);
              v17 = v106;
            }

            ++v35;
            v33 -= v113;
            v34 -= v113;
            v4 += v113;
          }

          while (v35 < v18);
          v16 = v116;
          v18 = v117;
        }
      }
    }

    v38 = v114[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v17))
      {
        goto LABEL_131;
      }

      if (v18 - v17 < v104)
      {
        break;
      }
    }

LABEL_47:
    if (v18 < v17)
    {
      goto LABEL_130;
    }

    v50 = swift_isUniquelyReferenced_nonNull_native();
    v117 = v18;
    if ((v50 & 1) == 0)
    {
      sub_1C94FB33C();
      v16 = v94;
    }

    v51 = *(v16 + 16);
    v52 = v51 + 1;
    if (v51 >= *(v16 + 24) >> 1)
    {
      sub_1C94FB33C();
      v16 = v95;
    }

    *(v16 + 16) = v52;
    v53 = v16 + 32;
    v54 = (v16 + 32 + 16 * v51);
    v55 = v117;
    *v54 = v17;
    v54[1] = v55;
    v118 = *v105;
    if (!v118)
    {
      goto LABEL_140;
    }

    if (v51)
    {
      v116 = v16;
      while (1)
      {
        v56 = v52 - 1;
        v57 = (v53 + 16 * (v52 - 1));
        v58 = (v16 + 16 * v52);
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v59 = *(v16 + 32);
          v60 = *(v16 + 40);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_68:
          if (v62)
          {
            goto LABEL_117;
          }

          v74 = *v58;
          v73 = v58[1];
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_120;
          }

          v78 = v57[1];
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_125;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v52 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v52 < 2)
        {
          goto LABEL_119;
        }

        v81 = *v58;
        v80 = v58[1];
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_83:
        if (v77)
        {
          goto LABEL_122;
        }

        v83 = *v57;
        v82 = v57[1];
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_124;
        }

        if (v84 < v76)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v56 - 1 >= v52)
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

        if (!*v114)
        {
          goto LABEL_137;
        }

        v88 = (v53 + 16 * (v56 - 1));
        v89 = *v88;
        v90 = v53;
        v91 = v56;
        v16 = v53 + 16 * v56;
        v4 = *(v16 + 8);
        v92 = v115;
        sub_1C952CC64(*v114 + *(v112 + 72) * *v88, *v114 + *(v112 + 72) * *v16, *v114 + *(v112 + 72) * v4, v118);
        v115 = v92;
        if (v92)
        {
          goto LABEL_99;
        }

        if (v4 < v89)
        {
          goto LABEL_112;
        }

        v93 = *(v116 + 2);
        if (v91 > v93)
        {
          goto LABEL_113;
        }

        *v88 = v89;
        v88[1] = v4;
        if (v91 >= v93)
        {
          goto LABEL_114;
        }

        v52 = v93 - 1;
        sub_1C964AD0C((v16 + 16), v93 - 1 - v91, v16);
        v16 = v116;
        *(v116 + 2) = v93 - 1;
        v53 = v90;
        if (v93 <= 2)
        {
          goto LABEL_97;
        }
      }

      v63 = v53 + 16 * v52;
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_115;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_116;
      }

      v70 = v58[1];
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_118;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_121;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = v57[1];
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_129;
        }

        if (v61 < v87)
        {
          v56 = v52 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v14 = v114[1];
    v15 = v117;
    if (v117 >= v14)
    {
      goto LABEL_101;
    }
  }

  v39 = v17 + v104;
  if (__OFADD__(v17, v104))
  {
    goto LABEL_133;
  }

  if (v39 >= v38)
  {
    v39 = v114[1];
  }

  if (v39 < v17)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v18 == v39)
  {
    goto LABEL_47;
  }

  v116 = v16;
  v40 = *(v112 + 72);
  v41 = *v114 + v40 * (v18 - 1);
  v4 = -v40;
  v42 = v17 - v18;
  v118 = *v114;
  v107 = v40;
  v108 = v39;
  v43 = v118 + v18 * v40;
LABEL_40:
  v117 = v18;
  v110 = v43;
  v111 = v42;
  v113 = v41;
  v44 = v41;
  while (1)
  {
    v45 = v121;
    sub_1C94709F4(v43, v121, &qword_1EC3A5218);
    v46 = v122;
    sub_1C94709F4(v44, v122, &qword_1EC3A5218);
    v47 = *v45;
    v48 = *v46;
    sub_1C9470AFC(v46, &qword_1EC3A5218);
    sub_1C9470AFC(v45, &qword_1EC3A5218);
    if (v47 >= v48)
    {
LABEL_45:
      v18 = v117 + 1;
      v41 = v113 + v107;
      v42 = v111 - 1;
      v43 = v110 + v107;
      if (v117 + 1 == v108)
      {
        v18 = v108;
        v16 = v116;
        v17 = v106;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v118)
    {
      break;
    }

    v49 = v119;
    sub_1C949E110(v43, v119, &qword_1EC3A5218);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C949E110(v49, v44, &qword_1EC3A5218);
    v44 += v4;
    v43 += v4;
    v37 = __CFADD__(v42++, 1);
    if (v37)
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

void sub_1C952CC64(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5218);
  MEMORY[0x1EEE9AC00](v58);
  v59 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v60 = (&v51 - v10);
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v13 = a2 - a1;
  v14 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v14)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v17 = v13 / v12;
  v64 = a1;
  v63 = a4;
  v18 = v15 / v12;
  if (v13 / v12 >= v15 / v12)
  {
    sub_1C95229B4();
    v33 = a4 + v18 * v12;
    v34 = -v12;
    v35 = v33;
    v54 = -v12;
    v55 = a4;
    v61 = a1;
LABEL_36:
    v36 = a2 + v34;
    v52 = v35;
    v56 = a2 + v34;
    while (1)
    {
      if (v33 <= a4)
      {
        v64 = a2;
        v62 = v35;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v53 = v35;
      v37 = a2;
      v38 = a3 + v34;
      v39 = v33 + v34;
      v40 = v60;
      v41 = v36;
      v42 = v33;
      sub_1C94709F4(v33 + v34, v60, &qword_1EC3A5218);
      v43 = v41;
      v44 = v59;
      sub_1C94709F4(v43, v59, &qword_1EC3A5218);
      v57 = *v40;
      v45 = v44;
      v46 = *v44;
      sub_1C9470AFC(v45, &qword_1EC3A5218);
      sub_1C9470AFC(v40, &qword_1EC3A5218);
      if (v57 < v46)
      {
        if (a3 < v37 || v38 >= v37)
        {
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          v35 = v53;
          v34 = v54;
          a4 = v55;
          a3 = v38;
          a1 = v61;
          v33 = v42;
        }

        else
        {
          v34 = v54;
          v35 = v53;
          v14 = a3 == v37;
          a4 = v55;
          v49 = v56;
          a2 = v56;
          a3 = v38;
          a1 = v61;
          v33 = v42;
          if (!v14)
          {
            v50 = v53;
            swift_arrayInitWithTakeBackToFront();
            v33 = v42;
            a2 = v49;
            v35 = v50;
          }
        }

        goto LABEL_36;
      }

      v47 = a3 < v42 || v38 >= v42;
      a2 = v37;
      if (v47)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 += v34;
        v33 = v39;
        v35 = v39;
        v34 = v54;
        a4 = v55;
        a1 = v61;
        v36 = v56;
      }

      else
      {
        v35 = v39;
        v14 = v42 == a3;
        a3 += v34;
        v33 = v39;
        v34 = v54;
        a4 = v55;
        a1 = v61;
        v36 = v56;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v38;
          v33 = v39;
          v35 = v39;
        }
      }
    }

    v64 = a2;
    v62 = v52;
  }

  else
  {
    sub_1C95229B4();
    v56 = a3;
    v57 = a4 + v17 * v12;
    v62 = v57;
    v19 = a1;
    while (a4 < v57 && a2 < a3)
    {
      v61 = v19;
      v21 = v12;
      v22 = a2;
      v23 = a2;
      v24 = v60;
      sub_1C94709F4(v22, v60, &qword_1EC3A5218);
      v25 = a4;
      v26 = a4;
      v27 = v59;
      sub_1C94709F4(v25, v59, &qword_1EC3A5218);
      v28 = *v24;
      v29 = *v27;
      sub_1C9470AFC(v27, &qword_1EC3A5218);
      sub_1C9470AFC(v24, &qword_1EC3A5218);
      if (v28 >= v29)
      {
        v12 = v21;
        a4 = v26 + v21;
        v30 = v61;
        if (v61 < v26 || v61 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v23;
        }

        else
        {
          a2 = v23;
          if (v61 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v63 = v26 + v21;
      }

      else
      {
        v12 = v21;
        a2 = v23 + v21;
        v30 = v61;
        v31 = v61 < v23 || v61 >= a2;
        a4 = v26;
        if (v31)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v61 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v19 = v30 + v12;
      v64 = v19;
      a3 = v56;
    }
  }

LABEL_58:
  sub_1C952EF88(&v64, &v63, &v62);
}