uint64_t sub_1C96726C4()
{
  OUTLINED_FUNCTION_20_31();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t LegacyNotificationSubscriptionManager.subscription(with:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_5_2();
    swift_once();
  }

  v6 = sub_1C96A6154();
  __swift_project_value_buffer(v6, qword_1EDB7AC90);
  sub_1C96A53C4();
  v7 = sub_1C96A6134();
  v8 = sub_1C96A76A4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_0();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    *(v9 + 14) = sub_1C9484164(a1, a2, &v13);
    _os_log_impl(&dword_1C945E000, v7, v8, "Use LegacyNotificationSubscriptionManager to fetch notification subscription with identifier: %{private,mask.hash}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  sub_1C96A5444();
  v11 = objc_autoreleasePoolPush();
  sub_1C9676130(a1, a2, &v13, a3);
  objc_autoreleasePoolPop(v11);
  sub_1C96A5434();
}

uint64_t sub_1C967295C(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  if (a1)
  {
    return 1;
  }

  sub_1C9470AA0(a2, &v10 - v5, &qword_1EC3A58D0);
  v7 = type metadata accessor for NotificationSubscription(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1C9470AFC(v6, &qword_1EC3A58D0);
    return 2;
  }

  else
  {
    v8 = v6[*(v7 + 24)];
    sub_1C96776E0(v6, type metadata accessor for NotificationSubscription);
  }

  return v8;
}

uint64_t sub_1C9672A6C(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  if ((a1 & 2) != 0)
  {
    return 1;
  }

  sub_1C9470AA0(a2, &v10 - v5, &qword_1EC3A58D0);
  v7 = type metadata accessor for NotificationSubscription(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1C9470AFC(v6, &qword_1EC3A58D0);
    return 2;
  }

  else
  {
    v8 = v6[*(v7 + 28)];
    sub_1C96776E0(v6, type metadata accessor for NotificationSubscription);
  }

  return v8;
}

uint64_t sub_1C9672B7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v1;
  v16[2] = *(a1 + 32);
  v17 = *(a1 + 48);
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB7AC90);
  sub_1C96777DC(v16, &v14);
  v3 = sub_1C96A6134();
  v4 = sub_1C96A76A4();
  if (!os_log_type_enabled(v3, v4))
  {

    sub_1C9677838(v16);
    goto LABEL_7;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v13 = v6;
  *v5 = 141558275;
  *(v5 + 4) = 1752392040;
  *(v5 + 12) = 2081;
  sub_1C96A6354();
  v7 = v15;
  if (v15)
  {
    v8 = v14;
    sub_1C9677838(v16);
    v9 = sub_1C9484164(v8, v7, &v13);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_1C945E000, v3, v4, "Invalidating fetch schedules for subscription %{private,mask.hash}s", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1CCA8E3D0](v6, -1, -1);
    MEMORY[0x1CCA8E3D0](v5, -1, -1);

LABEL_7:
    sub_1C96A5444();
    v10 = v14;
    v11 = objc_autoreleasePoolPush();
    sub_1C96768CC(v10, v16, &v14);
    objc_autoreleasePoolPop(v11);
    sub_1C96A5434();
  }

  result = sub_1C9677838(v16);
  __break(1u);
  return result;
}

uint64_t LegacyNotificationSubscriptionManager.unsubscribe(from:for:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v1[28] = v2;
  v1[29] = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  OUTLINED_FUNCTION_7(v7);
  v1[30] = OUTLINED_FUNCTION_12_4();
  v8 = type metadata accessor for NotificationSubscription(0);
  v1[31] = v8;
  OUTLINED_FUNCTION_7(v8);
  v9 = OUTLINED_FUNCTION_12_4();
  v10 = *v6;
  v1[32] = v9;
  v1[33] = v10;
  memcpy(v1 + 2, v4, 0x48uLL);
  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C9672E80()
{
  OUTLINED_FUNCTION_49();
  v22 = v0;
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_5_2();
    swift_once();
  }

  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB7AC90);
  sub_1C95087DC((v0 + 2), (v0 + 11));
  v3 = sub_1C96A6134();
  v4 = sub_1C96A7684();
  sub_1C953AEDC((v0 + 2));
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[33];
    OUTLINED_FUNCTION_15_0();
    v6 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v6 = 136446723;
    if (v5 > 3)
    {
      v7 = OUTLINED_FUNCTION_17_37();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_24_23();
      switch(v8)
      {
        case 1:
          v7 = OUTLINED_FUNCTION_10_45();
          break;
        case 2:
          v7 = OUTLINED_FUNCTION_23_24();
          break;
        case 3:
          v7 = OUTLINED_FUNCTION_22_26();
          break;
        default:
          break;
      }
    }

    v9 = sub_1C9484164(v7, v1, &v21);

    *(v6 + 4) = v9;
    OUTLINED_FUNCTION_12_40();
    *(v6 + 24) = sub_1C9484164(v0[2], v0[3], &v21);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v10, v11, v12, v13, v6, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  v14 = v0[3];
  v0[34] = v0[2];
  v0[35] = v14;
  v0[36] = sub_1C96A5E34();
  sub_1C96A5E24();
  OUTLINED_FUNCTION_2_74();
  sub_1C9677698(v15, v16);
  sub_1C96A7374();
  v17 = OUTLINED_FUNCTION_4_16();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1C96730B8()
{
  v1 = *(v0 + 240);

  OUTLINED_FUNCTION_13_43();
  *(v0 + 296) = v1;
  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C9673154()
{
  v29 = v0;
  v1 = v0[30];
  v2 = v0[31];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1C9470AFC(v1, &qword_1EC3A58D0);
  }

  else
  {
    v3 = v0[32];
    v4 = v0[33];
    OUTLINED_FUNCTION_7_51();
    sub_1C949A898(v1, v3, v5);
    v6 = *(v3 + *(v2 + 24));
    v7 = *(v3 + *(v2 + 28));
    v8 = v6 & 1;
    if (v7)
    {
      v9 = v6 & 1 | 2;
    }

    else
    {
      v9 = v6 & 1;
    }

    if (v7 == 2)
    {
      v9 = v8;
    }

    if ((v9 & v4) != 0)
    {
      v10 = v0[37];
      v11 = v0[32];
      v12 = v0[33];
      v13 = objc_autoreleasePoolPush();
      v28[0] = v12;
      sub_1C96733F0(v11, v28);
      if (v10)
      {
        v14 = v0[32];
        objc_autoreleasePoolPop(v13);
        OUTLINED_FUNCTION_1_79();
        sub_1C96776E0(v14, v15);

        OUTLINED_FUNCTION_17();
        goto LABEL_17;
      }

      v17 = v0[28];
      objc_autoreleasePoolPop(v13);
      swift_beginAccess();
      v18 = *(*(v17 + 24) + 16);
      if (v18)
      {
        v19 = (sub_1C96A53C4() + 40);
        do
        {
          v20 = v0[28];
          v21 = v0[29];
          v22 = *v19;
          ObjectType = swift_getObjectType();
          v0[23] = v21;
          v0[24] = &protocol witness table for LegacyNotificationSubscriptionManager;
          v0[20] = v20;
          OUTLINED_FUNCTION_28_0(v28);
          v24 = *(v22 + 16);
          swift_unknownObjectRetain();
          sub_1C96A3D04();
          v24(v0 + 20, v28, ObjectType, v22);
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 20));
          v19 += 2;
          --v18;
        }

        while (v18);
      }
    }

    OUTLINED_FUNCTION_1_79();
    sub_1C96776E0(v25, v26);
  }

  OUTLINED_FUNCTION_17();
LABEL_17:

  return v16();
}

uint64_t sub_1C9673388()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C96733F0(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v90 = v83 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v87 = v83 - v9;
  v10 = sub_1C96A61C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v85 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v84 = v83 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v86 = v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B48);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v102 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v98 = v83 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v95 = v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v97 = v83 - v24;
  v25 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v25);
  v94 = v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v93 = (v83 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v96 = v83 - v30;
  *(&v100 + 1) = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](*(&v100 + 1));
  v32 = (v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *a2;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v88 = v11;
  v34 = sub_1C96A6154();
  __swift_project_value_buffer(v34, qword_1EDB7AC90);
  sub_1C9677780(a1, v32, type metadata accessor for NotificationSubscription);
  v35 = sub_1C96A6134();
  v36 = sub_1C96A76A4();
  v37 = os_log_type_enabled(v35, v36);
  v89 = v10;
  if (v37)
  {
    v103 = v3;
    v38 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *&v112 = v101;
    *v38 = 136446723;
    v39 = 0xE400000000000000;
    v40 = 1701736270;
    switch(v33)
    {
      case 0:
        break;
      case 1:
        v39 = 0xED00006E6F697461;
        v40 = 0x7469706963657250;
        break;
      case 2:
        v39 = 0xE600000000000000;
        v40 = 0x657265766553;
        break;
      case 3:
        v39 = 0x80000001C96D7D40;
        v40 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE700000000000000;
        v40 = 0x6E776F6E6B6E55;
        break;
    }

    v41 = sub_1C9484164(v40, v39, &v112);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2160;
    *(v38 + 14) = 1752392040;
    *(v38 + 22) = 2081;
    v42 = *v32;
    v43 = v32[1];
    sub_1C96A53C4();
    sub_1C96776E0(v32, type metadata accessor for NotificationSubscription);
    v44 = sub_1C9484164(v42, v43, &v112);

    *(v38 + 24) = v44;
    _os_log_impl(&dword_1C945E000, v35, v36, "Use LegacyNotificationSubscriptionManager to disable %{public}s notifications for subscription %{private,mask.hash}s", v38, 0x20u);
    v45 = v101;
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v45, -1, -1);
    MEMORY[0x1CCA8E3D0](v38, -1, -1);

    v3 = v103;
  }

  else
  {

    sub_1C96776E0(v32, type metadata accessor for NotificationSubscription);
  }

  v46 = *(v3 + 16);
  sub_1C96A5444();
  v103 = v112;
  LODWORD(v92) = sub_1C967683C(a1, v33);
  LODWORD(v91) = sub_1C9676884(a1, v33);
  v47 = a1[1];
  *&v100 = *a1;
  v48 = a1 + *(*(&v100 + 1) + 20);
  v49 = v96;
  sub_1C9677780(v48, v96, type metadata accessor for Location);
  v50 = type metadata accessor for NotificationSubscription.Location(0);
  v51 = v97;
  sub_1C9677780(v48 + *(v50 + 20), v97, type metadata accessor for Location);
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v25);
  sub_1C9677780(v49, v93, type metadata accessor for Location);
  sub_1C9677698(&qword_1EDB7D0B8, type metadata accessor for Location);
  sub_1C9677698(&qword_1EDB7ADD8, type metadata accessor for Location);
  *(&v100 + 1) = v47;
  sub_1C96A53C4();
  sub_1C96A6284();
  v52 = v95;
  sub_1C9470AA0(v51, v95, &qword_1EC3A5450);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, v25);
  v101 = v46;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C9677780(v49, v94, type metadata accessor for Location);
    if (__swift_getEnumTagSinglePayload(v52, 1, v25) != 1)
    {
      sub_1C9470AFC(v52, &qword_1EC3A5450);
    }
  }

  else
  {
    sub_1C949A898(v52, v94, type metadata accessor for Location);
  }

  sub_1C96A6284();
  sub_1C95BBA28();
  sub_1C9470AFC(v51, &qword_1EC3A5450);
  sub_1C96776E0(v49, type metadata accessor for Location);
  v54 = *(&v112 + 1);
  v102 = v112;
  v55 = v113;
  v56 = v114;
  v57 = v115;
  v58 = v99;
  NotificationStore.subscriptions.getter();
  if (v58)
  {

LABEL_18:
    sub_1C96A5434();
  }

  else
  {
    sub_1C96A6304();

    *&v112 = v102;
    *(&v112 + 1) = v54;
    v113 = v55;
    v114 = v56;
    v115 = v57;
    sub_1C96A62A4();
    v83[4] = v57;
    v83[2] = *(&v56 + 1);
    v83[3] = v56;
    v98 = *(&v55 + 1);

    NotificationStore.fetchSchedules.getter();
    v91 = v55;
    v83[1] = v54;
    sub_1C96A6314();

    *(&v113 + 1) = MEMORY[0x1E69E6158];
    *&v114 = MEMORY[0x1E69D62D8];
    v112 = v100;
    sub_1C96A53C4();
    v59 = v84;
    sub_1C96A6224();
    __swift_destroy_boxed_opaque_existential_1Tm(&v112);
    *(&v113 + 1) = MEMORY[0x1E69E6370];
    *&v114 = MEMORY[0x1E69D62E8];
    LOBYTE(v112) = 1;
    v60 = v85;
    sub_1C96A6224();
    __swift_destroy_boxed_opaque_existential_1Tm(&v112);
    v61 = v86;
    sub_1C96A6214();
    v62 = *(v88 + 8);
    v63 = v60;
    v64 = v89;
    v62(v63, v89);
    v62(v59, v64);
    v65 = sub_1C96A63E4();
    v66 = v87;
    __swift_storeEnumTagSinglePayload(v87, 1, 1, v65);
    v88 = sub_1C96A62E4();

    sub_1C9470AFC(v66, &qword_1EC3A4B60);
    result = (v62)(v61, v64);
    v68 = v88;
    v69 = 0;
    v89 = *(v88 + 16);
    v70 = (v88 + 40);
    while (1)
    {
      if (v89 == v69)
      {

        goto LABEL_18;
      }

      v71 = *(v68 + 16);
      v96 = v69;
      if (v69 >= v71)
      {
        break;
      }

      v72 = *(v70 - 1);
      v73 = *v70;
      v75 = v70[1];
      v74 = v70[2];
      v76 = v70[3];
      v77 = v70[5];
      sub_1C96A3D04();
      sub_1C96A3D04();
      v99 = v75;
      sub_1C96A3D04();
      *(&v100 + 1) = v74;
      sub_1C96A3D04();
      *&v100 = v76;
      sub_1C96A3D04();
      sub_1C96A3D04();
      v97 = v77;
      sub_1C96A3D04();
      NotificationStore.fetchSchedules.getter();
      v93 = v70;
      v94 = v73;
      sub_1C96A6304();

      v95 = v72;
      result = sub_1C96A6354();
      v78 = *(&v104 + 1);
      if (!*(&v104 + 1))
      {
        goto LABEL_30;
      }

      v79 = *&v104;
      v80 = v90;
      sub_1C96A6354();
      v81 = sub_1C96A4A54();
      result = __swift_getEnumTagSinglePayload(v80, 1, v81);
      if (result == 1)
      {
        goto LABEL_31;
      }

      result = sub_1C96A6354();
      if (v111)
      {
        goto LABEL_28;
      }

      v82 = v110;
      result = sub_1C96A6354();
      if (!v109)
      {
        goto LABEL_29;
      }

      FetchScheduleEntity.init(id:date:gracePeriod:subscription:valid:)(v79, v78, v90, v108, v109, 0, &v112, v82);
      v104 = v112;
      v105 = v113;
      v106 = v114;
      v107 = v115;
      sub_1C96A62A4();
      v92 = *(&v104 + 1);

      v70 = v93 + 7;
      v69 = v96 + 1;
      v68 = v88;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t LegacyNotificationSubscriptionManager.unsubscribe()()
{
  *(v1 + 400) = v0;
  OUTLINED_FUNCTION_8_2();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C96745C0()
{
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_5_2();
    swift_once();
  }

  v1 = sub_1C96A6154();
  *(v0 + 408) = __swift_project_value_buffer(v1, qword_1EDB7AC90);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C945E000, v2, v3, "Use LegacyNotificationSubscriptionManager to unsubscribe from all notifications", v4, 2u);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  *(v0 + 416) = sub_1C96A5E34();
  sub_1C96A5E24();
  OUTLINED_FUNCTION_2_74();
  sub_1C9677698(v5, v6);
  sub_1C96A7374();
  v7 = OUTLINED_FUNCTION_4_16();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9674718()
{

  *(v0 + 424) = LegacyNotificationSubscriptionManager.subscriptions(of:)();
  *(v0 + 432) = 0;
  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

void sub_1C96747A8()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[53];
  v2 = *(v1 + 16);
  v0[55] = v2;
  v0[56] = 0;
  if (v2)
  {
    if (*(v1 + 16))
    {
      v3 = type metadata accessor for NotificationSubscription(0);
      v4 = OUTLINED_FUNCTION_7(v3);
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v0[49] = 3;
      memcpy(v0 + 2, (v1 + *(v4 + 28) + v6), 0x48uLL);
      OUTLINED_FUNCTION_28_0(v0 + 11);
      sub_1C95087DC((v0 + 2), (v0 + 20));
      v7 = swift_task_alloc();
      v0[57] = v7;
      *v7 = v0;
      OUTLINED_FUNCTION_3_55(v7);

      LegacyNotificationSubscriptionManager.unsubscribe(from:for:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    OUTLINED_FUNCTION_17();

    v8();
  }
}

uint64_t sub_1C96748D0()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  v2[58] = v0;

  if (v0)
  {
    memcpy(v2 + 29, v2 + 11, 0x48uLL);
    sub_1C953AEDC((v2 + 29));
  }

  else
  {
    memcpy(v2 + 38, v2 + 11, 0x48uLL);
    sub_1C953AEDC((v2 + 38));
  }

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1C9674A10()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[55];
  v2 = v0[56] + 1;
  v0[56] = v2;
  v3 = v0[53];
  if (v2 == v1)
  {

    OUTLINED_FUNCTION_17();

    v4();
  }

  else if (v2 >= *(v3 + 16))
  {
    __break(1u);
  }

  else
  {
    v5 = type metadata accessor for NotificationSubscription(0);
    v6 = v3 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(*(v5 - 8) + 72) * v2;
    v0[49] = 3;
    memcpy(v0 + 2, (v6 + *(v5 + 20)), 0x48uLL);
    OUTLINED_FUNCTION_28_0(v0 + 11);
    sub_1C95087DC((v0 + 2), (v0 + 20));
    v7 = swift_task_alloc();
    v0[57] = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_3_55();

    LegacyNotificationSubscriptionManager.unsubscribe(from:for:)();
  }
}

uint64_t sub_1C9674B68()
{
  OUTLINED_FUNCTION_49();
  v20 = v0;
  v1 = *(v0 + 432);
  v2 = v1;
  v3 = sub_1C96A6134();
  v4 = sub_1C96A7684();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_0();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136446210;
    *(v0 + 384) = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v8 = sub_1C96A70A4();
    v10 = sub_1C9484164(v8, v9, &v19);

    *(v5 + 4) = v10;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v11, v12, v13, v14, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0](v15);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0](v16);
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();

  return v17();
}

uint64_t sub_1C9674CD8()
{
  OUTLINED_FUNCTION_49();
  v20 = v0;
  v1 = *(v0 + 464);
  v2 = v1;
  v3 = sub_1C96A6134();
  v4 = sub_1C96A7684();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_0();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136446210;
    *(v0 + 384) = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v8 = sub_1C96A70A4();
    v10 = sub_1C9484164(v8, v9, &v19);

    *(v5 + 4) = v10;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v11, v12, v13, v14, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0](v15);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0](v16);
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();

  return v17();
}

uint64_t LegacyNotificationSubscriptionManager.subscriptions(of:)()
{
  v1 = sub_1C96A6504();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_5_2();
    swift_once();
  }

  v5 = sub_1C96A6154();
  __swift_project_value_buffer(v5, qword_1EDB7AC90);
  v6 = sub_1C96A6134();
  v7 = sub_1C96A76A4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C945E000, v6, v7, "Use LegacyNotificationSubscriptionManager to fetching notification subscriptions", v8, 2u);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  sub_1C96A5444();
  v9 = objc_autoreleasePoolPush();
  (*(v2 + 104))(v4, *MEMORY[0x1E69D62C0], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7390);
  sub_1C96A6534();
  (*(v2 + 8))(v4, v1);
  objc_autoreleasePoolPop(v9);
  if (!v0)
  {
    v1 = v11[1];
  }

  sub_1C96A5434();

  return v1;
}

uint64_t LegacyNotificationSubscriptionManager.updateSubscription(for:)(void *a1)
{
  sub_1C96A5444();
  v2 = objc_autoreleasePoolPush();
  sub_1C9675120(v4, a1, &v4);
  objc_autoreleasePoolPop(v2);
  sub_1C96A5434();
}

uint64_t sub_1C9675120(uint64_t a1, void *a2, uint64_t *a3)
{
  v73 = a2;
  v74 = a3;
  v72 = type metadata accessor for NotificationSubscription.Location(0);
  MEMORY[0x1EEE9AC00](v72);
  v70 = (&v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v59 - v8);
  v10 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v71 = &v59 - v20;
  v21 = sub_1C96A61C4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v83;
  result = NotificationStore.subscriptions.getter();
  if (v25)
  {
    *v74 = v25;
    return result;
  }

  v68 = v22;
  v83 = v21;
  v67 = v18;
  v65 = v9;
  v66 = v15;
  v63 = v12;
  v27 = v72;
  v64 = a1;
  sub_1C96A6314();

  v28 = v73;
  v30 = *v73;
  v29 = v73[1];
  *(&v76 + 1) = MEMORY[0x1E69E6158];
  *&v77 = MEMORY[0x1E69D62D8];
  *&v75 = v30;
  *(&v75 + 1) = v29;
  sub_1C96A53C4();
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v75);
  v31 = sub_1C96A63E4();
  v32 = v71;
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v31);
  sub_1C96A62D4();

  sub_1C9470AFC(v32, &qword_1EC3A4B60);
  result = (*(v68 + 8))(v24, v83);
  if (v79)
  {
    v68 = *(&v79 + 1);
    v62 = v79;
    v33 = *(&v80 + 1);
    v71 = v80;
    v34 = v81;
    v83 = v82;
    sub_1C96A6354();
    if (v79 == 2)
    {
      v35 = v67;
    }

    else
    {
      v35 = v67;
      if (v79 != 3 && (v79 & 1) != 0)
      {
        goto LABEL_12;
      }
    }

    sub_1C96A6354();
    if (v79 == 2 || v79 == 3 || (v79 & 1) == 0)
    {
      v46 = v62;
      return sub_1C9518850(v46);
    }

LABEL_12:
    v61 = *(&v34 + 1);
    v67 = v34;
    sub_1C9677780(v28, v35, type metadata accessor for Location);
    v36 = v65;
    v60 = v33;
    sub_1C96A6354();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B48);
    result = __swift_getEnumTagSinglePayload(v36, 1, v37);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v38 = v35;
      v39 = v66;
      sub_1C96A6294();
      v65 = *(*(v37 - 8) + 8);
      v65(v36, v37);
      v40 = static Location.== infix(_:_:)(v38, v39);
      sub_1C96776E0(v39, type metadata accessor for Location);
      sub_1C96776E0(v38, type metadata accessor for Location);
      if ((v40 & 1) == 0)
      {
LABEL_20:
        if (qword_1EDB7AC88 != -1)
        {
          swift_once();
        }

        v47 = sub_1C96A6154();
        __swift_project_value_buffer(v47, qword_1EDB7AC90);
        v48 = v70;
        sub_1C9677780(v73, v70, type metadata accessor for NotificationSubscription.Location);
        v49 = sub_1C96A6134();
        v50 = sub_1C96A7684();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *&v79 = v52;
          *v51 = 141558275;
          *(v51 + 4) = 1752392040;
          *(v51 + 12) = 2081;
          v53 = v48;
          v54 = *v48;
          v55 = *(v53 + 8);
          sub_1C96A53C4();
          sub_1C96776E0(v53, type metadata accessor for NotificationSubscription.Location);
          v56 = sub_1C9484164(v54, v55, &v79);

          *(v51 + 14) = v56;
          _os_log_impl(&dword_1C945E000, v49, v50, "Use LegacyNotificationSubscriptionManager to update location for subscription %{private,mask.hash}s", v51, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v52);
          MEMORY[0x1CCA8E3D0](v52, -1, -1);
          MEMORY[0x1CCA8E3D0](v51, -1, -1);
        }

        else
        {

          sub_1C96776E0(v48, type metadata accessor for NotificationSubscription.Location);
        }

        v57 = v60;
        NotificationStore.subscriptions.getter();
        v58 = v61;
        sub_1C96A6304();

        *&v75 = v62;
        *(&v75 + 1) = v68;
        *&v76 = v71;
        *(&v76 + 1) = v57;
        *&v77 = v67;
        *(&v77 + 1) = v58;
        v78 = v83;
        SubscriptionEntity.withLocation(_:)();
        v75 = v79;
        v76 = v80;
        v77 = v81;
        v78 = v82;
        sub_1C96A62A4();

        return sub_1C9518850(v62);
      }

      v41 = v73 + *(v27 + 20);
      v42 = v63;
      sub_1C9677780(v41, v63, type metadata accessor for Location);
      v43 = v69;
      sub_1C96A6354();
      result = __swift_getEnumTagSinglePayload(v43, 1, v37);
      if (result != 1)
      {
        v44 = v66;
        sub_1C96A6294();
        v65(v43, v37);
        v45 = static Location.== infix(_:_:)(v42, v44);
        sub_1C96776E0(v44, type metadata accessor for Location);
        sub_1C96776E0(v42, type metadata accessor for Location);
        if (v45)
        {
          v46 = v62;
          return sub_1C9518850(v46);
        }

        goto LABEL_20;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C9675ADC@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v48 - v4;
  v55 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v55);
  v64 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v48 - v11;
  v13 = type metadata accessor for NotificationSubscription(0);
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = v48 - v17;
  v65 = sub_1C96A63E4();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v20 = (v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = NotificationStore.subscriptions.getter();
  if (!v1)
  {
    v52 = v18;
    v53 = v15;
    v54 = v12;
    v66 = v9;
    v22 = v64;
    sub_1C96A6314();

    *v20 = 0x64657461657263;
    v20[1] = 0xE700000000000000;
    v23 = v63;
    v24 = v65;
    (*(v63 + 104))(v20, *MEMORY[0x1E69D6228], v65);
    v25 = sub_1C96A62C4();
    v48[1] = 0;
    v26 = v25;
    (*(v23 + 8))(v20, v24);

    v27 = 0;
    v51 = *(v26 + 16);
    v65 = MEMORY[0x1E69E7CC0];
    v28 = (v26 + 40);
    v29 = v22;
    v30 = v54;
    v49 = v26;
    v50 = a1;
    while (1)
    {
      if (v51 == v27)
      {

        *a1 = v65;
        return result;
      }

      if (v27 >= *(v26 + 16))
      {
        break;
      }

      v62 = v28;
      v63 = v27;
      v31 = *v28;
      v32 = v28[1];
      v33 = v28[2];
      v34 = v28[3];
      v61 = *(v28 - 1);
      sub_1C96A3D04();
      v60 = v31;
      sub_1C96A3D04();
      v59 = v32;
      sub_1C96A3D04();
      sub_1C96A3D04();
      v64 = v34;
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A6354();
      v35 = v69;
      if (v69 == 3)
      {
        v35 = 2;
      }

      v67 = v35;
      sub_1C96A6354();
      v36 = v68;
      if (v68 == 3)
      {
        v36 = 2;
      }

      v57 = v36;
      v58 = v33;
      sub_1C96A6354();
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B48);
      result = __swift_getEnumTagSinglePayload(v30, 1, v37);
      if (result == 1)
      {
        goto LABEL_19;
      }

      sub_1C96A6294();
      v38 = *(*(v37 - 8) + 8);
      v38(v30, v37);
      v39 = v66;
      sub_1C96A6354();
      result = __swift_getEnumTagSinglePayload(v39, 1, v37);
      if (result == 1)
      {
        goto LABEL_20;
      }

      sub_1C96A6294();
      v38(v66, v37);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v55);
      v40 = v53;
      NotificationSubscription.init(location:locationOverride:precipitation:severe:)(v29, v5, v67, v57, v53);

      v41 = v52;
      sub_1C949A898(v40, v52, type metadata accessor for NotificationSubscription);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C94FB6E0();
        v65 = v46;
      }

      v26 = v49;
      a1 = v50;
      v30 = v54;
      v42 = v63;
      v43 = *(v65 + 16);
      v44 = v56;
      if (v43 >= *(v65 + 24) >> 1)
      {
        sub_1C94FB6E0();
        v44 = v56;
        v65 = v47;
      }

      v45 = v65;
      *(v65 + 16) = v43 + 1;
      result = sub_1C949A898(v41, v45 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v43, type metadata accessor for NotificationSubscription);
      v28 = v62 + 7;
      v27 = v42 + 1;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9676130@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v49 = a2;
  v50 = a3;
  v47 = a4;
  v48 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = &v39 - v5;
  v6 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v39 - v16;
  v18 = sub_1C96A61C4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v58;
  result = NotificationStore.subscriptions.getter();
  if (v22)
  {
    *v50 = v22;
    return result;
  }

  v44 = v14;
  v45 = v19;
  v58 = v18;
  v42 = v11;
  v43 = v8;
  v41 = v6;
  sub_1C96A6314();

  v51[3] = MEMORY[0x1E69E6158];
  v51[4] = MEMORY[0x1E69D62D8];
  v51[0] = v48;
  v51[1] = v49;
  sub_1C96A53C4();
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  v24 = sub_1C96A63E4();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v24);
  sub_1C96A62D4();

  sub_1C9470AFC(v17, &qword_1EC3A4B60);
  (*(v45 + 8))(v21, v58);
  v25 = v52;
  if (!v52)
  {
    v37 = 1;
    v36 = v47;
    goto LABEL_13;
  }

  v48 = v54;
  v49 = v53;
  v26 = v55;
  v58 = v56;
  v45 = v57;
  sub_1C96A6354();
  v27 = v52;
  if (v52 == 3)
  {
    v27 = 2;
  }

  v40 = v27;
  sub_1C96A6354();
  v28 = v52;
  if (v52 == 3)
  {
    v28 = 2;
  }

  v39 = v28;
  v29 = v44;
  v50 = v26;
  sub_1C96A6354();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B48);
  result = __swift_getEnumTagSinglePayload(v29, 1, v30);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v31 = v43;
    sub_1C96A6294();
    v32 = *(*(v30 - 8) + 8);
    v32(v29, v30);
    v33 = v42;
    sub_1C96A6354();
    v34 = v33;
    result = __swift_getEnumTagSinglePayload(v33, 1, v30);
    if (result != 1)
    {
      v35 = v46;
      sub_1C96A6294();
      v32(v34, v30);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v41);
      v36 = v47;
      NotificationSubscription.init(location:locationOverride:precipitation:severe:)(v31, v35, v40, v39, v47);
      sub_1C9518850(v25);
      v37 = 0;
LABEL_13:
      v38 = type metadata accessor for NotificationSubscription(0);
      return __swift_storeEnumTagSinglePayload(v36, v37, 1, v38);
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall LegacyNotificationSubscriptionManager.removeAllSubscriptions()()
{
  sub_1C96A5444();
  NotificationStore.subscriptions.getter();
  sub_1C96A6334();

  sub_1C96A63B4();

  sub_1C96A5434();
}

uint64_t sub_1C967683C(uint64_t a1, char a2)
{
  v3 = *(a1 + *(type metadata accessor for NotificationSubscription(0) + 24));
  if (v3 == 2)
  {
    return 2;
  }

  else
  {
    return ((a2 & 1) == 0) & v3;
  }
}

uint64_t sub_1C9676884(uint64_t a1, char a2)
{
  v3 = *(a1 + *(type metadata accessor for NotificationSubscription(0) + 28));
  if (v3 == 2)
  {
    return 2;
  }

  else
  {
    return ((a2 & 2) == 0) & v3;
  }
}

uint64_t sub_1C96768CC(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = a3;
  v4 = v3;
  v59 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &i - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &i - v10;
  v12 = sub_1C96A61C4();
  v56 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &i - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &i - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &i - v19;
  result = NotificationStore.fetchSchedules.getter();
  if (v3)
  {
LABEL_2:
    v22 = v49;
LABEL_6:
    *v22 = v4;
    return result;
  }

  v53 = v14;
  v54 = v20;
  v55 = v11;
  v57 = v8;
  v48 = a1;
  v58 = 0;
  sub_1C96A6314();

  result = sub_1C96A6354();
  if (*(&v60 + 1))
  {
    *(&v69 + 1) = MEMORY[0x1E69E6158];
    *&v70 = MEMORY[0x1E69D62D8];
    v68 = v60;
    sub_1C96A6224();
    __swift_destroy_boxed_opaque_existential_1Tm(&v68);
    *(&v69 + 1) = MEMORY[0x1E69E6370];
    *&v70 = MEMORY[0x1E69D62E8];
    LOBYTE(v68) = 1;
    v23 = v53;
    sub_1C96A6224();
    __swift_destroy_boxed_opaque_existential_1Tm(&v68);
    v24 = v54;
    sub_1C96A6214();
    v25 = *(v56 + 8);
    v26 = v23;
    v27 = v12;
    v25(v26, v12);
    v25(v17, v12);
    v28 = sub_1C96A63E4();
    v29 = v55;
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v28);
    v30 = v58;
    v31 = sub_1C96A62E4();
    v58 = v30;
    if (v30)
    {

      sub_1C9470AFC(v29, &qword_1EC3A4B60);
      result = (v25)(v24, v27);
      v22 = v49;
      v4 = v58;
      goto LABEL_6;
    }

    v32 = v31;

    sub_1C9470AFC(v29, &qword_1EC3A4B60);
    result = (v25)(v24, v27);
    v33 = 0;
    v47 = *(v32 + 16);
    v34 = (v32 + 40);
    for (i = v32; ; v32 = i)
    {
      if (v47 == v33)
      {
      }

      v35 = v58;
      if (v33 >= *(v32 + 16))
      {
        break;
      }

      v36 = *(v34 - 1);
      v37 = *v34;
      v38 = v34[1];
      v39 = v34[2];
      v54 = v34;
      v40 = v34[5];
      sub_1C96A3D04();
      sub_1C96A3D04();
      v56 = v38;
      sub_1C96A3D04();
      v59 = v39;
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      v55 = v40;
      sub_1C96A3D04();
      NotificationStore.fetchSchedules.getter();
      v4 = v35;
      if (v35)
      {

        goto LABEL_2;
      }

      v52 = v37;
      v51 = v33;
      sub_1C96A6304();

      v53 = v36;
      result = sub_1C96A6354();
      v41 = *(&v60 + 1);
      if (!*(&v60 + 1))
      {
        goto LABEL_21;
      }

      v42 = *&v60;
      v43 = v57;
      sub_1C96A6354();
      v44 = sub_1C96A4A54();
      result = __swift_getEnumTagSinglePayload(v43, 1, v44);
      if (result == 1)
      {
        goto LABEL_22;
      }

      result = sub_1C96A6354();
      if (v67)
      {
        goto LABEL_19;
      }

      v45 = v66;
      result = sub_1C96A6354();
      if (!v65)
      {
        goto LABEL_20;
      }

      FetchScheduleEntity.init(id:date:gracePeriod:subscription:valid:)(v42, v41, v57, v64, v65, 0, &v68, v45);
      v60 = v68;
      v61 = v69;
      v62 = v70;
      v63 = v71;
      sub_1C96A62A4();
      v58 = 0;
      v50 = v61;

      v34 = v54 + 7;
      v33 = v51 + 1;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9677064()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C967788C;

  return LegacyNotificationSubscriptionManager.subscribe(to:for:)();
}

uint64_t sub_1C967710C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C950AEFC;

  return LegacyNotificationSubscriptionManager.unsubscribe(from:for:)();
}

uint64_t sub_1C96771B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C950AEFC;

  return LegacyNotificationSubscriptionManager.unsubscribe()();
}

uint64_t sub_1C9677244(void *a1)
{
  LegacyNotificationSubscriptionManager.updateSubscription(for:)(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C96772C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_1C96A5E34();
  sub_1C96A5E24();
  sub_1C9677698(&qword_1EDB7ACD0, MEMORY[0x1E69E1940]);
  v4 = sub_1C96A7374();

  return MEMORY[0x1EEE6DFA0](sub_1C9677384, v4, v3);
}

uint64_t sub_1C9677384()
{

  v1 = LegacyNotificationSubscriptionManager.subscriptions(of:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C9677408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_1C96A5E34();
  sub_1C96A5E24();
  sub_1C9677698(&qword_1EDB7ACD0, MEMORY[0x1E69E1940]);
  v6 = sub_1C96A7374();

  return MEMORY[0x1EEE6DFA0](sub_1C96774D0, v6, v5);
}

uint64_t sub_1C96774D0()
{

  OUTLINED_FUNCTION_13_43();
  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C967755C(uint64_t a1)
{
  LegacyNotificationSubscriptionManager.removeObserver(_:)(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C96775BC()
{
  LegacyNotificationSubscriptionManager.removeAllSubscriptions()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C9677698(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C96776E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C9677780(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C96778BC(uint64_t a1, uint64_t a2)
{
  sub_1C948E818(a2, *(*(a1 + 64) + 40));

  return swift_continuation_resume();
}

uint64_t NotificationsManagerProxy.__allocating_init()()
{
  v0 = swift_allocObject();
  NotificationsManagerProxy.init()();
  return v0;
}

id sub_1C967794C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = sub_1C96779A4();
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1C96779A4()
{
  v0 = sub_1C96A5294();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C94F02CC();
  if (qword_1EDB7C750 != -1)
  {
    swift_once();
  }

  v4 = sub_1C96A51A4();
  __swift_project_value_buffer(v4, qword_1EDB7C758);
  v5 = sub_1C96A5194();
  v7 = sub_1C9611DB8(v5, v6, 4096);
  sub_1C96A5184();
  v8 = sub_1C96A5284();
  (*(v1 + 8))(v3, v0);
  [v7 setRemoteObjectInterface_];

  return v7;
}

uint64_t sub_1C9677B04()
{
  sub_1C96A50E4();
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
    if (qword_1EDB7AC20 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7AC28);
  sub_1C96A3D04();
  v5 = sub_1C96A6134();
  v6 = sub_1C96A76A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 134349314;
    *(v7 + 4) = *(v0 + 24);

    *(v7 + 12) = 2082;
    if (qword_1EDB7C750 != -1)
    {
      swift_once();
    }

    v9 = sub_1C96A51A4();
    __swift_project_value_buffer(v9, qword_1EDB7C758);
    v10 = sub_1C96A5194();
    v12 = sub_1C9484164(v10, v11, &v23);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_1C945E000, v5, v6, "Increasing connection reference count to %{public}ld for: %{public}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);
    MEMORY[0x1CCA8E3D0](v7, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 24) == 1)
  {
    v13 = sub_1C96A6134();
    v14 = sub_1C96A76A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      if (qword_1EDB7C750 != -1)
      {
        swift_once();
      }

      v17 = sub_1C96A51A4();
      __swift_project_value_buffer(v17, qword_1EDB7C758);
      v18 = sub_1C96A5194();
      v20 = sub_1C9484164(v18, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1C945E000, v13, v14, "Resuming connection for: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1CCA8E3D0](v16, -1, -1);
      MEMORY[0x1CCA8E3D0](v15, -1, -1);
    }

    v21 = sub_1C967794C();
    [v21 resume];
  }

  return sub_1C96A50F4();
}

uint64_t sub_1C9677E28()
{
  sub_1C96A50E4();
  v1 = *(v0 + 24);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v3;
    if (qword_1EDB7AC20 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7AC28);
  sub_1C96A3D04();
  v5 = sub_1C96A6134();
  v6 = sub_1C96A76A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 134349314;
    *(v7 + 4) = *(v0 + 24);

    *(v7 + 12) = 2082;
    if (qword_1EDB7C750 != -1)
    {
      swift_once();
    }

    v9 = sub_1C96A51A4();
    __swift_project_value_buffer(v9, qword_1EDB7C758);
    v10 = sub_1C96A5194();
    v12 = sub_1C9484164(v10, v11, &v23);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_1C945E000, v5, v6, "Decreasing connection reference count to %{public}ld for: %{public}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);
    MEMORY[0x1CCA8E3D0](v7, -1, -1);
  }

  else
  {
  }

  if (!*(v0 + 24))
  {
    v13 = sub_1C96A6134();
    v14 = sub_1C96A76A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      if (qword_1EDB7C750 != -1)
      {
        swift_once();
      }

      v17 = sub_1C96A51A4();
      __swift_project_value_buffer(v17, qword_1EDB7C758);
      v18 = sub_1C96A5194();
      v20 = sub_1C9484164(v18, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1C945E000, v13, v14, "Suspending connection for: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1CCA8E3D0](v16, -1, -1);
      MEMORY[0x1CCA8E3D0](v15, -1, -1);
    }

    v21 = sub_1C967794C();
    [v21 suspend];
  }

  return sub_1C96A50F4();
}

uint64_t NotificationsManagerProxy.deinit()
{

  return v0;
}

uint64_t NotificationsManagerProxy.__deallocating_deinit()
{
  NotificationsManagerProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void sub_1C96781E0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v29 - v9;
  sub_1C9677B04();
  v11 = sub_1C967794C();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  aBlock[4] = sub_1C96797D0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C963E29C;
  aBlock[3] = &block_descriptor_29;
  v13 = _Block_copy(aBlock);
  sub_1C96A3D04();

  v14 = [v11 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);

  sub_1C96A79C4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7FB0);
  if (swift_dynamicCast())
  {
    v15 = v29[1];
    v16 = sub_1C96A7414();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v15;
    v17[5] = a1;
    v17[6] = a2;
    sub_1C96A3D04();
    sub_1C951C258();
  }

  else
  {
    if (qword_1EDB7AC20 != -1)
    {
      swift_once();
    }

    v18 = sub_1C96A6154();
    __swift_project_value_buffer(v18, qword_1EDB7AC28);
    v19 = sub_1C96A6134();
    v20 = sub_1C96A7684();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136446210;
      if (qword_1EDB7C750 != -1)
      {
        swift_once();
      }

      v23 = sub_1C96A51A4();
      __swift_project_value_buffer(v23, qword_1EDB7C758);
      v24 = sub_1C96A5194();
      v26 = sub_1C9484164(v24, v25, aBlock);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1C945E000, v19, v20, "Remote object proxy remote interface mismatch for: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1CCA8E3D0](v22, -1, -1);
      MEMORY[0x1CCA8E3D0](v21, -1, -1);
    }

    sub_1C967974C();
    v27 = swift_allocError();
    *v28 = 0;
    a3();
  }
}

uint64_t sub_1C967859C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9678648, 0, 0);
}

uint64_t sub_1C9678648()
{
  v1 = v0[21];
  v2 = v0[18];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_1C9678764;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7FC0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C96788DC;
  v0[13] = &block_descriptor_36_0;
  v0[14] = v3;
  [v2 scheduleWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C9678764()
{

  return MEMORY[0x1EEE6DFA0](sub_1C9678844, 0, 0);
}

uint64_t sub_1C9678844()
{
  v1 = v0[22];
  v2 = v0[19];
  sub_1C948E818(v0[21], v1);
  v2(v1);
  sub_1C9505BC8(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1C96788DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1C96A4A04();
    v11 = sub_1C96A4A54();
    v12 = 0;
  }

  else
  {
    v11 = sub_1C96A4A54();
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v12, 1, v11);
  sub_1C948E818(v6, v9);
  return sub_1C96778BC(v10, v9);
}

void sub_1C9678A20(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  sub_1C9677B04();
  v8 = sub_1C967794C();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v30 = sub_1C96797A0;
  v31 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1C963E29C;
  v29 = &block_descriptor_17_0;
  v10 = _Block_copy(&aBlock);
  sub_1C96A3D04();

  v11 = [v8 remoteObjectProxyWithErrorHandler_];
  _Block_release(v10);

  sub_1C96A79C4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7FB0);
  if (swift_dynamicCast())
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    v30 = sub_1C96797C8;
    v31 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1C9678EA4;
    v29 = &block_descriptor_23;
    v13 = _Block_copy(&aBlock);
    sub_1C96A3D04();

    [v25 evaluateWith_];
    _Block_release(v13);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDB7AC20 != -1)
    {
      swift_once();
    }

    v14 = sub_1C96A6154();
    __swift_project_value_buffer(v14, qword_1EDB7AC28);
    v15 = sub_1C96A6134();
    v16 = sub_1C96A7684();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock = v18;
      *v17 = 136446210;
      if (qword_1EDB7C750 != -1)
      {
        swift_once();
      }

      v19 = sub_1C96A51A4();
      __swift_project_value_buffer(v19, qword_1EDB7C758);
      v20 = sub_1C96A5194();
      v22 = sub_1C9484164(v20, v21, &aBlock);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1C945E000, v15, v16, "Remote object proxy remote interface mismatch for: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1CCA8E3D0](v18, -1, -1);
      MEMORY[0x1CCA8E3D0](v17, -1, -1);
    }

    sub_1C967974C();
    v23 = swift_allocError();
    *v24 = 0;
    a3();
  }
}

uint64_t sub_1C9678DD0(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  if (a1)
  {
    sub_1C96A4A04();
    v7 = sub_1C96A4A54();
    v8 = 0;
  }

  else
  {
    v7 = sub_1C96A4A54();
    v8 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v8, 1, v7);
  a2(v6);
  return sub_1C9505BC8(v6);
}

void sub_1C9678EA4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1C96A3D04();
  v4 = a2;
  v3(a2);
}

uint64_t sub_1C9678F4C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  swift_allocObject();
  sub_1C96A5714();
  v1 = sub_1C96A55A4();
  v2 = sub_1C96A56C4();

  return v2;
}

void sub_1C9679000(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1C96A3D04();
  sub_1C9677B04();
  v9 = sub_1C967794C();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v31 = sub_1C96798FC;
  v32 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1C963E29C;
  v30 = &block_descriptor_22;
  v11 = _Block_copy(&aBlock);
  sub_1C96A3D04();

  v12 = [v9 remoteObjectProxyWithErrorHandler_];
  _Block_release(v11);

  sub_1C96A79C4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7FB0);
  if (swift_dynamicCast())
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1C9679724;
    *(v13 + 24) = v8;
    v31 = sub_1C94F0374;
    v32 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_1C946FCF8;
    v30 = &block_descriptor_11_0;
    v14 = _Block_copy(&aBlock);

    [v26 validateWith_];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {

    if (qword_1EDB7AC20 != -1)
    {
      swift_once();
    }

    v15 = sub_1C96A6154();
    __swift_project_value_buffer(v15, qword_1EDB7AC28);
    v16 = sub_1C96A6134();
    v17 = sub_1C96A7684();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock = v19;
      *v18 = 136446210;
      if (qword_1EDB7C750 != -1)
      {
        swift_once();
      }

      v20 = sub_1C96A51A4();
      __swift_project_value_buffer(v20, qword_1EDB7C758);
      v21 = sub_1C96A5194();
      v23 = sub_1C9484164(v21, v22, &aBlock);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1C945E000, v16, v17, "Remote object proxy remote interface mismatch for: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1CCA8E3D0](v19, -1, -1);
      MEMORY[0x1CCA8E3D0](v18, -1, -1);
    }

    sub_1C967974C();
    v24 = swift_allocError();
    *v25 = 0;
    a3();
  }
}

void sub_1C96793E0(void *a1, void (*a2)(void *), uint64_t a3, char a4, char *a5)
{
  if (qword_1EDB7AC20 != -1)
  {
    swift_once();
  }

  v9 = sub_1C96A6154();
  __swift_project_value_buffer(v9, qword_1EDB7AC28);
  v10 = a1;
  v11 = sub_1C96A6134();
  v12 = sub_1C96A7684();

  if (os_log_type_enabled(v11, v12))
  {
    format = a5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136446466;
    if (qword_1EDB7C750 != -1)
    {
      swift_once();
    }

    v15 = sub_1C96A51A4();
    __swift_project_value_buffer(v15, qword_1EDB7C758);
    v16 = sub_1C96A5194();
    v18 = sub_1C9484164(v16, v17, &v27);

    *(v13 + 4) = v18;
    *(v13 + 12) = a4;
    *(v13 + 13) = 8;
    v19 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v20 = sub_1C96A70A4();
    v22 = sub_1C9484164(v20, v21, &v27);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1C945E000, v11, v12, format, v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v14, -1, -1);
    MEMORY[0x1CCA8E3D0](v13, -1, -1);
  }

  sub_1C967974C();
  v23 = swift_allocError();
  *v24 = a1;
  v25 = a1;
  a2(v23);
}

unint64_t sub_1C967974C()
{
  result = qword_1EC3A7FB8;
  if (!qword_1EC3A7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7FB8);
  }

  return result;
}

uint64_t sub_1C96797F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C94B9278;

  return sub_1C967859C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1C9679900(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465766C6F736572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x766C6F7365726E75 && a2 == 0xEC000000656C6261)
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

uint64_t sub_1C96799CC(char a1)
{
  if (a1)
  {
    return 0x766C6F7365726E75;
  }

  else
  {
    return 0x6465766C6F736572;
  }
}

uint64_t sub_1C9679A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9679900(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9679A3C(uint64_t a1)
{
  v2 = sub_1C9679E6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9679A78(uint64_t a1)
{
  v2 = sub_1C9679E6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9679AB4(uint64_t a1)
{
  v2 = sub_1C9679F14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9679AF0(uint64_t a1)
{
  v2 = sub_1C9679F14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9679B2C(uint64_t a1)
{
  v2 = sub_1C9679EC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9679B68(uint64_t a1)
{
  v2 = sub_1C9679EC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CountryCode.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v26 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7FC8);
  OUTLINED_FUNCTION_1();
  v24 = v5;
  v25 = v4;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v23 = &v23 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7FD0);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7FD8);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9679E6C();
  v20 = v27;
  sub_1C96A7F54();
  if (v20)
  {
    v28 = 0;
    sub_1C9679F14();
    sub_1C96A7CD4();
    sub_1C96A7D24();
    (*(v10 + 8))(v13, v8);
  }

  else
  {
    v29 = 1;
    sub_1C9679EC0();
    v22 = v23;
    sub_1C96A7CD4();
    (*(v24 + 8))(v22, v25);
  }

  return (*(v16 + 8))(v19, v14);
}

unint64_t sub_1C9679E6C()
{
  result = qword_1EC3A7FE0;
  if (!qword_1EC3A7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7FE0);
  }

  return result;
}

unint64_t sub_1C9679EC0()
{
  result = qword_1EC3A7FE8;
  if (!qword_1EC3A7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7FE8);
  }

  return result;
}

unint64_t sub_1C9679F14()
{
  result = qword_1EC3A7FF0;
  if (!qword_1EC3A7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7FF0);
  }

  return result;
}

uint64_t CountryCode.init(from:)(void *a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7FF8);
  OUTLINED_FUNCTION_1();
  v41 = v2;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8000);
  OUTLINED_FUNCTION_1();
  v42 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8008);
  OUTLINED_FUNCTION_1();
  v43 = v11;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9679E6C();
  v16 = v45;
  sub_1C96A7F44();
  if (v16)
  {
    goto LABEL_9;
  }

  v39 = v5;
  v40 = v9;
  v45 = a1;
  v17 = v44;
  v18 = sub_1C96A7CC4();
  result = sub_1C9489288(v18, 0);
  v23 = v10;
  if (v21 == v22 >> 1)
  {
LABEL_8:
    v31 = sub_1C96A7AE4();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A78);
    *v33 = &type metadata for CountryCode;
    v15 = v14;
    sub_1C96A7C14();
    sub_1C96A7AD4();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v14, v23);
    a1 = v45;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v15;
  }

  if (v21 < (v22 >> 1))
  {
    v46 = *(v20 + v21);
    sub_1C9489290(v21 + 1);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    if (v25 == v27 >> 1)
    {
      v28 = v10;
      if (v46)
      {
        v48 = 1;
        sub_1C9679EC0();
        v29 = v39;
        OUTLINED_FUNCTION_4_64();
        v30 = v43;
        swift_unknownObjectRelease();
        (*(v41 + 8))(v29, v17);
        (*(v30 + 8))(v14, v28);
        v15 = 0;
      }

      else
      {
        v47 = 0;
        sub_1C9679F14();
        OUTLINED_FUNCTION_4_64();
        v15 = sub_1C96A7C84();
        swift_unknownObjectRelease();
        v34 = OUTLINED_FUNCTION_3_56();
        v35(v34);
        v36 = OUTLINED_FUNCTION_2_75();
        v37(v36);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      return v15;
    }

    v23 = v10;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C967A478@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = CountryCode.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t static CountryCode.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_1C96A7DE4();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

uint64_t CountryCode.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return MEMORY[0x1CCA8D880](0);
  }

  MEMORY[0x1CCA8D880](1);

  return sub_1C96A7144();
}

uint64_t CountryCode.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1C96A7EE4();
  if (a2)
  {
    MEMORY[0x1CCA8D880](1);
    sub_1C96A7144();
  }

  else
  {
    MEMORY[0x1CCA8D880](0);
  }

  return sub_1C96A7F24();
}

uint64_t sub_1C967A5F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C96A7EE4();
  CountryCode.hash(into:)(v4, v1, v2);
  return sub_1C96A7F24();
}

uint64_t sub_1C967A640()
{
  sub_1C967AB84();

  return sub_1C96A53A4();
}

uint64_t CountryCode.value.getter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1C96A53C4();
  return v2;
}

unint64_t sub_1C967A6B8()
{
  result = qword_1EC3A8018;
  if (!qword_1EC3A8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8018);
  }

  return result;
}

void *sub_1C967A70C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CountryCode.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CountryCode.ResolvedCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C967A8C8()
{
  result = qword_1EC3A8020;
  if (!qword_1EC3A8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8020);
  }

  return result;
}

unint64_t sub_1C967A920()
{
  result = qword_1EC3A8028;
  if (!qword_1EC3A8028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8028);
  }

  return result;
}

unint64_t sub_1C967A978()
{
  result = qword_1EC3A8030;
  if (!qword_1EC3A8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8030);
  }

  return result;
}

unint64_t sub_1C967A9D0()
{
  result = qword_1EC3A8038;
  if (!qword_1EC3A8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8038);
  }

  return result;
}

unint64_t sub_1C967AA28()
{
  result = qword_1EC3A8040;
  if (!qword_1EC3A8040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8040);
  }

  return result;
}

unint64_t sub_1C967AA80()
{
  result = qword_1EC3A8048;
  if (!qword_1EC3A8048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8048);
  }

  return result;
}

unint64_t sub_1C967AAD8()
{
  result = qword_1EC3A8050;
  if (!qword_1EC3A8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8050);
  }

  return result;
}

unint64_t sub_1C967AB30()
{
  result = qword_1EC3A8058;
  if (!qword_1EC3A8058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8058);
  }

  return result;
}

unint64_t sub_1C967AB84()
{
  result = qword_1EDB7A590;
  if (!qword_1EDB7A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A590);
  }

  return result;
}

uint64_t PredictedLocationsAuthorization.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

unint64_t PredictedLocationsAuthorization.description.getter()
{
  result = 0x7265746544746F6ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x64656C62616E65;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C967AD38()
{
  result = qword_1EC3A8060;
  if (!qword_1EC3A8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8060);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsAuthorization(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C967AE5C()
{
  v0 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C96A45A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C96A45C4();
  __swift_allocate_value_buffer(v6, qword_1EC3A8068);
  __swift_project_value_buffer(v6, qword_1EC3A8068);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EDB94A40);
  (*(v2 + 16))(v4, v7, v1);
  sub_1C96A4BC4();
  return sub_1C96A45D4();
}

uint64_t sub_1C967B0AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v14 - v1;
  v3 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C96A45A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C96A3E34();
  __swift_allocate_value_buffer(v10, qword_1EC3A8080);
  v14[0] = __swift_project_value_buffer(v10, qword_1EC3A8080);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EDB94A40);
  v12 = *(v5 + 16);
  v12(v7, v11, v4);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  sub_1C96A6FA4();
  v12(v7, v11, v4);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v9);
  return sub_1C96A3E54();
}

uint64_t sub_1C967B440()
{
  v0 = sub_1C96A3B84();
  __swift_allocate_value_buffer(v0, qword_1EC3A8098);
  __swift_project_value_buffer(v0, qword_1EC3A8098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C00);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A3B74();
  sub_1C95E0D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C50);
  sub_1C9469CB4(&qword_1EC3A6C58, &qword_1EC3A6C50);
  return sub_1C96A79E4();
}

uint64_t sub_1C967B5D0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t static RemoveSavedLocationIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A80B0);
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A80B8);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C967B81C();
  sub_1C96A3F44();
  sub_1C96A3F34();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A80C8);
  sub_1C96A3F24();

  sub_1C96A3F34();
  sub_1C96A3F54();
  OUTLINED_FUNCTION_8_2();
  return sub_1C96A3F14();
}

unint64_t sub_1C967B81C()
{
  result = qword_1EC3A80C0;
  if (!qword_1EC3A80C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A80C0);
  }

  return result;
}

uint64_t sub_1C967B894@<X0>(uint64_t *a1@<X8>)
{
  result = RemoveSavedLocationIntent.$entities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C967B904@<X0>(uint64_t *a1@<X8>)
{
  result = RemoveSavedLocationIntent.entities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C967B940()
{
  sub_1C96A53C4();
  sub_1C96A3D04();
  sub_1C96A3D04();
  RemoveSavedLocationIntent.entities.setter();
}

void (*RemoveSavedLocationIntent.entities.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C96A3C54();
  return sub_1C954EF48;
}

uint64_t RemoveSavedLocationIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  sub_1C96A3F64();
  OUTLINED_FUNCTION_1();
  v32 = v2;
  v33 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  v34 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5B40);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v28 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v28 - v12;
  v13 = sub_1C96A4C14();
  v14 = OUTLINED_FUNCTION_7(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v15 = sub_1C96A45A4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  v21 = v20 - v19;
  v22 = sub_1C96A6FF4();
  v23 = OUTLINED_FUNCTION_7(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14();
  v24 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5748);
  sub_1C96A3A74();
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  sub_1C96A3A64();
  *v35 = sub_1C96A3A24();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A80D0);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v15, qword_1EDB94A40);
  (*(v17 + 16))(v21, v25, v15);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_8_2();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v24);
  v36 = 0;
  v26 = sub_1C96A3B94();
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v26);
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v26);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_1C96A3A64();
  *&v37 = sub_1C96A3A24();
  (*(v32 + 104))(v34, *MEMORY[0x1E695A500], v33);
  sub_1C967BED4();
  sub_1C9551824();
  result = sub_1C96A3CA4();
  v35[1] = result;
  return result;
}

unint64_t sub_1C967BED4()
{
  result = qword_1EC3A80D8;
  if (!qword_1EC3A80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A80D8);
  }

  return result;
}

uint64_t RemoveSavedLocationIntent.perform()()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 120) = v2;
  *(v1 + 128) = sub_1C96A6504();
  OUTLINED_FUNCTION_42();
  *(v1 + 136) = v3;
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = *v0;
  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void *sub_1C967BFE4()
{
  (*(v0[17] + 104))(v0[18], *MEMORY[0x1E69D62C0], v0[16]);
  sub_1C96A6524();
  swift_allocObject();
  v0[21] = sub_1C96A6514();
  sub_1C96A3C64();
  result = v0[14];
  v0[22] = result;
  v2 = result[2];
  v0[23] = v2;
  v0[24] = 0;
  if (v2)
  {
    if (result[2])
    {
      v0[25] = result[5];
      v0[26] = result[6];
      v0[27] = result[7];
      v0[28] = result[8];
      v0[29] = result[9];
      v0[30] = result[10];
      v9 = result[4];
      sub_1C96A53C4();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3A14();
      v3 = v0[12];
      v4 = v0[13];
      __swift_project_boxed_opaque_existential_1(v0 + 9, v3);
      OUTLINED_FUNCTION_3_57(v9);
      OUTLINED_FUNCTION_42();
      v10 = (v5 + *v5);
      v6 = swift_task_alloc();
      v0[31] = v6;
      *v6 = v0;
      v7 = OUTLINED_FUNCTION_2_76(v6);

      return v10(v7, v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_1C96A3BB4();

    OUTLINED_FUNCTION_17();

    return v8();
  }

  return result;
}

uint64_t sub_1C967C27C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_15();
  *v5 = v4;
  *(v3 + 256) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C967C384()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9));
  v1 = v0[23];
  v2 = v0[24] + 1;
  v0[24] = v2;
  result = v0[22];
  if (v2 == v1)
  {

    sub_1C96A3BB4();

    OUTLINED_FUNCTION_17();

    return v4();
  }

  else if (v2 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v5 = (result + 56 * v2);
    v0[25] = v5[5];
    v0[26] = v5[6];
    v0[27] = v5[7];
    v0[28] = v5[8];
    v0[29] = v5[9];
    v0[30] = v5[10];
    v11 = v5[4];
    sub_1C96A53C4();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3A14();
    v6 = v0[12];
    v7 = v0[13];
    __swift_project_boxed_opaque_existential_1(v0 + 9, v6);
    OUTLINED_FUNCTION_3_57(v11);
    OUTLINED_FUNCTION_42();
    v12 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[31] = v9;
    *v9 = v0;
    v10 = OUTLINED_FUNCTION_2_76();

    return v12(v10, v6, v7);
  }

  return result;
}

uint64_t sub_1C967C5F4()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);

  OUTLINED_FUNCTION_17();

  return v1();
}

unint64_t sub_1C967C6B4()
{
  result = qword_1EC3A80E0;
  if (!qword_1EC3A80E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A80E0);
  }

  return result;
}

uint64_t sub_1C967C760()
{
  sub_1C96A3A14();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  OUTLINED_FUNCTION_42();
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1C967C88C;

  return v6(v1, v2);
}

uint64_t sub_1C967C88C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  *(v1 + 72) = v0;

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C967C980()
{
  OUTLINED_FUNCTION_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_1C967C9E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1C95D50E0;

  return sub_1C967C740(v3);
}

uint64_t sub_1C967CA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C94B0C0C;

  return MEMORY[0x1EEDB3B80](a1, a2, a3);
}

unint64_t sub_1C967CB34()
{
  result = qword_1EC3A80E8;
  if (!qword_1EC3A80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A80E8);
  }

  return result;
}

unint64_t sub_1C967CB8C()
{
  result = qword_1EC3A80F0;
  if (!qword_1EC3A80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A80F0);
  }

  return result;
}

uint64_t sub_1C967CC24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0C0C;

  return RemoveSavedLocationIntent.perform()();
}

unint64_t sub_1C967CCC4()
{
  result = qword_1EC3A80F8;
  if (!qword_1EC3A80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A80F8);
  }

  return result;
}

uint64_t sub_1C967CD20(uint64_t a1)
{
  v2 = sub_1C967B81C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1C967CD60()
{
  sub_1C96A3E14();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  RemoveSavedLocationIntent.init()(&v7);
  sub_1C967B81C();
  sub_1C96A3E24();
  sub_1C96A3E04();
  v2 = OUTLINED_FUNCTION_17_2();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AA1C0;
  *(v4 + 32) = v0;
  v5 = sub_1C96A3DF4();

  return v5;
}

uint64_t sub_1C967CEAC(uint64_t a1)
{
  v30 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8118);
  v31 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v2 = &v20 - v1;
  v3 = sub_1C96A3D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8120);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C967B81C();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  v29 = sub_1C967D7A4(&qword_1EC3A8110);
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  LODWORD(v26) = *MEMORY[0x1E695A1E0];
  v25 = *(v4 + 104);
  v21 = v3;
  v25(v6);
  sub_1C96A3DA4();
  v8 = *(v4 + 8);
  v23 = v4 + 8;
  v24 = v8;
  v8(v6, v3);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v28 = sub_1C96A3D34();
  v9 = *(v31 + 8);
  v31 += 8;
  v22 = v9;
  v10 = v27;
  v9(v2, v27);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  v11 = v21;
  (v25)(v6, v26, v21);
  sub_1C96A3DA4();
  v24(v6, v11);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v26 = sub_1C96A3D34();
  v12 = v10;
  v13 = v10;
  v14 = v22;
  v22(v2, v13);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v15 = sub_1C96A3D34();
  v14(v2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8128);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C96AB910;
  v17 = v26;
  *(v16 + 32) = v28;
  *(v16 + 40) = v17;
  *(v16 + 48) = v15;
  v18 = sub_1C96A3D24();

  return v18;
}

uint64_t sub_1C967D438()
{
  v0 = sub_1C96A3D94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1C967D7A4(&qword_1EC3A8110);
  sub_1C96A3D04();

  sub_1C967B81C();
  sub_1C96A3D84();
  v4 = sub_1C96A3D74();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C96AA1C0;
  *(v5 + 32) = v4;
  v6 = sub_1C96A3D64();

  return v6;
}

uint64_t sub_1C967D5C4()
{
  sub_1C96A3CF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  sub_1C967B81C();
  sub_1C96A3CE4();
  sub_1C96A3CD4();
  v2 = OUTLINED_FUNCTION_17_2();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AA1C0;
  *(v4 + 32) = v0;
  v5 = sub_1C96A3CC4();

  return v5;
}

uint64_t sub_1C967D6E4()
{
  v0 = sub_1C96A3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C96AA1C0;
  *(v1 + 32) = v0;
  v2 = sub_1C96A3D44();

  return v2;
}

uint64_t sub_1C967D7A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A59D0);
    sub_1C9551924();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id LocationCoordinate.clLocation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = objc_allocWithZone(MEMORY[0x1E6985C40]);

  return [v3 initWithLatitude:v1 longitude:v2];
}

WeatherCore::LocationCoordinate_optional __swiftcall LocationCoordinate.init(_:)(WeatherCore::LocationCoordinate_optional result)
{
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *&result.is_nil;
  }

  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v1;
  }

  *v3 = v4;
  *(v3 + 8) = v5;
  *(v3 + 16) = v2 & 1;
  return result;
}

uint64_t sub_1C967D8B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
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

uint64_t sub_1C967D984(char a1)
{
  if (a1)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_1C967D9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C967D8B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C967D9F0(uint64_t a1)
{
  v2 = sub_1C967DBC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C967DA2C(uint64_t a1)
{
  v2 = sub_1C967DBC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationCoordinate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8130);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C967DBC8();
  sub_1C96A7F54();
  v10[15] = 0;
  sub_1C96A7D44();
  if (!v1)
  {
    v10[14] = 1;
    sub_1C96A7D44();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C967DBC8()
{
  result = qword_1EDB799A0;
  if (!qword_1EDB799A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB799A0);
  }

  return result;
}

uint64_t LocationCoordinate.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8138);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C967DBC8();
  sub_1C96A7F44();
  if (!v2)
  {
    v18 = 0;
    sub_1C96A7CA4();
    v12 = v11;
    v17 = 1;
    sub_1C96A7CA4();
    v14 = v13;
    (*(v7 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t LocationCoordinate.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1CCA8D8A0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1CCA8D8A0](*&v3);
}

uint64_t LocationCoordinate.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  if (v1 == 0.0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = v1;
  }

  MEMORY[0x1CCA8D8A0](*&v2);
  OUTLINED_FUNCTION_4_65();
  return sub_1C96A7F24();
}

uint64_t sub_1C967DEAC()
{
  v1 = *v0;
  sub_1C96A7EE4();
  if (v1 == 0.0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = v1;
  }

  MEMORY[0x1CCA8D8A0](*&v2);
  OUTLINED_FUNCTION_4_65();
  return sub_1C96A7F24();
}

__C::CLLocationCoordinate2D __swiftcall CLLocationCoordinate2D.init(_:)(WeatherCore::LocationCoordinate a1)
{
  v2 = *v1;
  v3 = v1[1];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

Swift::Bool __swiftcall LocationCoordinate.isSignificantlyDifferent(from:precision:)(CLLocation from, Swift::Double precision)
{
  v4 = *v2;
  v5 = v2[1];
  [(objc_class *)from.super.isa coordinate];
  v7 = vabdd_f64(v5, v6) > precision;
  return vabdd_f64(v4, v8) > precision || v7;
}

WeatherCore::LocationCoordinate __swiftcall LocationCoordinate.rounded(with:)(Swift::Int with)
{
  v3 = v1;
  v4 = *v2;
  v5 = v2[1];
  MEMORY[0x1CCA8D260](10);
  sub_1C96A4774();
  v6 = sub_1C96A78E4();
  [v6 doubleValue];
  v8 = v7;

  v9 = round(v4 * v8) / v8;
  v10 = round(v5 * v8) / v8;
  *v3 = v9;
  v3[1] = v10;
  result.longitude = v10;
  result.latitude = v9;
  return result;
}

uint64_t LocationCoordinate.init(from:)@<X0>(void *a1@<X8>)
{
  sub_1C96A3D04();
  v3 = sub_1C96A7324();
  if (v1)
  {
  }

  if (v3[2] != 2)
  {

    v6 = sub_1C96A6AF4();
    sub_1C967E170();
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_0_107();
    v9 = v10 + 6;
    goto LABEL_7;
  }

  v4 = v3[4];
  v5 = v3[5];

  if ((~v4 & 0x7FF0000000000000) == 0 && (v4 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v6 = sub_1C96A6AF4();
    sub_1C967E170();
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_0_107();
LABEL_7:
    *v7 = v9;
    v7[1] = v8;
    (*(*(v6 - 8) + 104))();
    swift_willThrow();
  }

  if ((~v5 & 0x7FF0000000000000) == 0 && (v5 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v6 = sub_1C96A6AF4();
    sub_1C967E170();
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_0_107();
    v9 = v12 | 1;
    goto LABEL_7;
  }

  *a1 = v4;
  a1[1] = v5;
  return result;
}

unint64_t sub_1C967E170()
{
  result = qword_1EC3A8140;
  if (!qword_1EC3A8140)
  {
    sub_1C96A6AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8140);
  }

  return result;
}

uint64_t LocationCoordinate.encode(to:)()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51E8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C96AEF50;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  sub_1C96A7334();
}

uint64_t LocationCoordinate.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E63B0];
  *(v0 + 16) = xmmword_1C96AEF50;
  OUTLINED_FUNCTION_3_58(v0, v1);

  return MEMORY[0x1EEDC5E80](0x25202C66332E2528, 0xEC0000002966332ELL);
}

unint64_t sub_1C967E32C()
{
  result = qword_1EDB79988;
  if (!qword_1EDB79988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79988);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationCoordinate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C967E460()
{
  result = qword_1EC3A8148;
  if (!qword_1EC3A8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8148);
  }

  return result;
}

unint64_t sub_1C967E4B8()
{
  result = qword_1EDB79990;
  if (!qword_1EDB79990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79990);
  }

  return result;
}

unint64_t sub_1C967E510()
{
  result = qword_1EDB79998;
  if (!qword_1EDB79998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79998);
  }

  return result;
}

uint64_t sub_1C967E564()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EC3A8150 = result;
  return result;
}

uint64_t sub_1C967E78C()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EC3A8158 = result;
  return result;
}

uint64_t sub_1C967E9B4()
{
  sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_3_16();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_5();
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  __swift_project_value_buffer(v1, qword_1EDB80028);
  v3 = OUTLINED_FUNCTION_5_1();
  v4(v3);
  v5 = OUTLINED_FUNCTION_6_56();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_5_53();
  result = OUTLINED_FUNCTION_4_19();
  qword_1EDB7FC98 = result;
  return result;
}

uint64_t sub_1C967EB60()
{
  sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_3_16();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_5();
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  __swift_project_value_buffer(v1, qword_1EDB80028);
  v3 = OUTLINED_FUNCTION_5_1();
  v4(v3);
  v5 = OUTLINED_FUNCTION_6_56();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_5_53();
  result = OUTLINED_FUNCTION_4_19();
  qword_1EDB7FCB0 = result;
  return result;
}

uint64_t sub_1C967ED30()
{
  sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_3_16();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_5();
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  __swift_project_value_buffer(v1, qword_1EDB80028);
  v3 = OUTLINED_FUNCTION_5_1();
  v4(v3);
  v5 = OUTLINED_FUNCTION_6_56();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_5_53();
  result = OUTLINED_FUNCTION_4_19();
  qword_1EDB7CA90 = result;
  return result;
}

uint64_t Settings.Geocoding.ClientServerSideRevGeocode.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1C96A7BE4();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Settings.Geocoding.ClientServerSideRevGeocode.rawValue.getter()
{
  v1 = 0x746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x726576726573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1C967EFE0@<X0>(uint64_t *a1@<X8>)
{
  result = Settings.Geocoding.ClientServerSideRevGeocode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C967F008(uint64_t a1)
{
  v2 = sub_1C967F5C8();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1C967F05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C967F5C8();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1C967F0B8(uint64_t a1)
{
  v2 = sub_1C967F5C8();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1C967F10C()
{
  v1 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  v8 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8160);
  (*(v10 + 104))(v0, *MEMORY[0x1E69D6E90], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8170);
  *(swift_allocObject() + 16) = xmmword_1C96AB910;
  OUTLINED_FUNCTION_9_44();
  OUTLINED_FUNCTION_9_44();
  OUTLINED_FUNCTION_9_44();
  (*(v3 + 104))(v7, *MEMORY[0x1E69D6EA0], v1);
  sub_1C967F61C();
  result = sub_1C96A4F54();
  qword_1EDB7CAC0 = result;
  return result;
}

unint64_t sub_1C967F3EC()
{
  result = qword_1EDB7CAA8;
  if (!qword_1EDB7CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CAA8);
  }

  return result;
}

_BYTE *_s9GeocodingVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s9GeocodingV26ClientServerSideRevGeocodeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C967F5C8()
{
  result = qword_1EDB7CAA0;
  if (!qword_1EDB7CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CAA0);
  }

  return result;
}

unint64_t sub_1C967F61C()
{
  result = qword_1EDB7CA98;
  if (!qword_1EDB7CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CA98);
  }

  return result;
}

uint64_t sub_1C967F688(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_42();
}

uint64_t sub_1C967F69C()
{
  v1 = *(v0[3] + 16);
  v2 = *(v1 + 16);
  v3 = type metadata accessor for Location();
  v4 = v3;
  if (v2)
  {
    sub_1C9489760(v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v0[2]);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0[2], v5, 1, v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1C967F784()
{
  v3 = *(v0 + 8);
  v1 = sub_1C96A53C4();

  return v3(v1);
}

uint64_t sub_1C967F7F0()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C967F84C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C94B9278;

  return sub_1C967F688(a1);
}

uint64_t sub_1C967F8E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C967F978;

  return sub_1C967F770();
}

uint64_t sub_1C967F978(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1C967FA74()
{
  v1 = v0;
  if (qword_1EDB7ABD8 != -1)
  {
LABEL_20:
    swift_once();
  }

  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB7ABE0);
  v3 = sub_1C96A6134();
  v4 = sub_1C96A76A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C945E000, v3, v4, "Ubiquity identity changed", v5, 2u);
    MEMORY[0x1CCA8E3D0](v5, -1, -1);
  }

  v6 = v1[6];
  v7 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v6);
  LOBYTE(v6) = (*(v7 + 8))(v6, v7);
  v8 = sub_1C96A6134();
  v9 = sub_1C96A76A4();
  v10 = os_log_type_enabled(v8, v9);
  if (v6)
  {
    if (v10)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      OUTLINED_FUNCTION_1_57(&dword_1C945E000, v12, v13, "User signed into iCloud");
      MEMORY[0x1CCA8E3D0](v11, -1, -1);
    }

    OUTLINED_FUNCTION_0_108();
    v1 = v1[2];
    v14 = v1[2];
    sub_1C96A53C4();
    v15 = 0;
    v16 = v1 + 5;
    while (v14 != v15)
    {
      if (v15 >= v1[2])
      {
        __break(1u);
        goto LABEL_19;
      }

      ++v15;
      v17 = *v16;
      ObjectType = swift_getObjectType();
      v19 = *(v17 + 8);
      swift_unknownObjectRetain();
      v19(ObjectType, v17);
      swift_unknownObjectRelease();
      v16 += 2;
    }
  }

  else
  {
    if (v10)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      OUTLINED_FUNCTION_1_57(&dword_1C945E000, v21, v22, "User signed out of iCloud");
      MEMORY[0x1CCA8E3D0](v20, -1, -1);
    }

    OUTLINED_FUNCTION_0_108();
    v1 = v1[2];
    v23 = v1[2];
    sub_1C96A53C4();
    v24 = 0;
    v25 = v1 + 5;
    while (v23 != v24)
    {
      if (v24 >= v1[2])
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      ++v24;
      v26 = *v25;
      v27 = swift_getObjectType();
      v28 = *(v26 + 16);
      swift_unknownObjectRetain();
      v28(v27, v26);
      swift_unknownObjectRelease();
      v25 += 2;
    }
  }
}

void AccountMonitor.removeObserver(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  sub_1C96A53C4();
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v4 + 32 + 16 * v6);
  while (1)
  {
    if (v5 == v6)
    {

      *(v2 + 16) = v7;

      return;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    ++v6;
    v9 = v8 + 2;
    v10 = *v8;
    v8 += 2;
    if (v10 != a1)
    {
      v11 = *(v9 - 1);
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C9522E20();
      }

      v12 = *(v7 + 16);
      if (v12 >= *(v7 + 24) >> 1)
      {
        sub_1C9522E20();
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t AccountMonitor.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  return v0;
}

uint64_t AccountMonitor.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1C967FFC0()
{
  v0 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C96A45A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C96A45C4();
  __swift_allocate_value_buffer(v6, qword_1EC3A8178);
  __swift_project_value_buffer(v6, qword_1EC3A8178);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EDB94A40);
  (*(v2 + 16))(v4, v7, v1);
  sub_1C96A4BC4();
  return sub_1C96A45D4();
}

uint64_t (*static SetPrecipitationUnitIntent.title.modify())()
{
  if (qword_1EC3A48D0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A45C4();
  __swift_project_value_buffer(v0, qword_1EC3A8178);
  OUTLINED_FUNCTION_19_1();
  return j_j__swift_endAccess;
}

uint64_t sub_1C96802CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C9600FDC(&qword_1EC3A48D0, MEMORY[0x1E6968E10], qword_1EC3A8178);
  swift_beginAccess();
  v3 = sub_1C96A45C4();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C968037C(uint64_t a1)
{
  v2 = sub_1C9600FDC(&qword_1EC3A48D0, MEMORY[0x1E6968E10], qword_1EC3A8178);
  swift_beginAccess();
  v3 = sub_1C96A45C4();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C9680434()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C96A45A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C96A3E34();
  __swift_allocate_value_buffer(v10, qword_1EC3A8190);
  __swift_project_value_buffer(v10, qword_1EC3A8190);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EDB94A40);
  (*(v5 + 16))(v7, v11, v4);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  return sub_1C96A3E54();
}

uint64_t (*static SetPrecipitationUnitIntent.description.modify())()
{
  if (qword_1EC3A48D8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A3E34();
  __swift_project_value_buffer(v0, qword_1EC3A8190);
  OUTLINED_FUNCTION_19_1();
  return j__swift_endAccess;
}

uint64_t sub_1C968080C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C9600FDC(&qword_1EC3A48D8, MEMORY[0x1E695A200], qword_1EC3A8190);
  swift_beginAccess();
  v3 = sub_1C96A3E34();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C96808BC(uint64_t a1)
{
  v2 = sub_1C9600FDC(&qword_1EC3A48D8, MEMORY[0x1E695A200], qword_1EC3A8190);
  swift_beginAccess();
  v3 = sub_1C96A3E34();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C9680974()
{
  v0 = sub_1C96A3B84();
  __swift_allocate_value_buffer(v0, qword_1EC3A81A8);
  __swift_project_value_buffer(v0, qword_1EC3A81A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C00);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A3B74();
  sub_1C95E0D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C50);
  sub_1C9469CB4(&qword_1EC3A6C58, &qword_1EC3A6C50);
  return sub_1C96A79E4();
}

uint64_t static SetPrecipitationUnitIntent.supportedModes.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3A48E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A3B84();
  __swift_project_value_buffer(v2, qword_1EC3A81A8);
  OUTLINED_FUNCTION_8_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t static SetPrecipitationUnitIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A81C0);
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A81C8);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C9680D10();
  sub_1C96A3F44();
  sub_1C96A3F34();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A81D8);
  sub_1C96A3F24();

  sub_1C96A3F34();
  sub_1C96A3F54();
  return sub_1C96A3F14();
}

unint64_t sub_1C9680D10()
{
  result = qword_1EC3A81D0;
  if (!qword_1EC3A81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A81D0);
  }

  return result;
}

uint64_t SetPrecipitationUnitIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v36 = sub_1C96A3F64();
  OUTLINED_FUNCTION_1();
  v34 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v35 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5B40);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = sub_1C96A4C14();
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  v16 = sub_1C96A45A4();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v22 = v21 - v20;
  v23 = sub_1C96A6FF4();
  v24 = OUTLINED_FUNCTION_7(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v25 = sub_1C96A45C4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A81E0);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v16, qword_1EDB94A40);
  v28 = *(v18 + 16);
  v28(v22, v27, v16);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_2_7();
  sub_1C96A45D4();
  sub_1C96A6FA4();
  v28(v22, v27, v16);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_2_7();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v25);
  v38 = 2;
  v29 = sub_1C96A3B94();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v29);
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v29);
  (*(v34 + 104))(v35, *MEMORY[0x1E695A500], v36);
  sub_1C96834F0();
  *v37 = sub_1C96A3C94();
  return sub_1C954DDE0();
}

uint64_t SetPrecipitationUnitIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C968120C, 0, 0);
}

uint64_t sub_1C968120C()
{
  v5 = v0;
  sub_1C96A3C64();
  v1 = *(v0 + 32);
  if (qword_1EDB80318 != -1)
  {
    swift_once();
  }

  v4 = v1;
  UnitManager.setPreferredPrecipitationUnit(_:)(&v4);
  sub_1C9488854();
  static NSUserDefaults.postSettingsUpdatedNotification()();
  static WidgetUtilities.reloadWidget(reason:)(0xD000000000000041, 0x80000001C96D8210);
  sub_1C96A3BB4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C9681308(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C94B9278;

  return SetPrecipitationUnitIntent.perform()(a1);
}

uint64_t sub_1C96813A4(uint64_t a1)
{
  v2 = sub_1C9680D10();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1C96813E0()
{
  sub_1C96A3E14();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  SetPrecipitationUnitIntent.init()(&v7);
  sub_1C9680D10();
  sub_1C96A3E24();
  sub_1C96A3E04();
  v2 = OUTLINED_FUNCTION_17_2();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AA1C0;
  *(v4 + 32) = v0;
  v5 = sub_1C96A3DF4();

  return v5;
}

uint64_t sub_1C9681524(uint64_t a1)
{
  v42 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8288);
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v2 = &v27 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8290);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C9680D10();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  v4 = sub_1C9683838();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v40 = sub_1C96A3D34();
  v5 = *(v43 + 8);
  v43 += 8;
  v44 = v5;
  v6 = v41;
  v5(v2, v41);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  v45 = v4;
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v39 = sub_1C96A3D34();
  v44(v2, v6);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v38 = sub_1C96A3D34();
  v44(v2, v41);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v37 = sub_1C96A3D34();
  v7 = v41;
  v8 = v44;
  v44(v2, v41);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v36 = sub_1C96A3D34();
  v8(v2, v7);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v35 = sub_1C96A3D34();
  v44(v2, v41);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v34 = sub_1C96A3D34();
  v9 = v41;
  v44(v2, v41);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v33 = sub_1C96A3D34();
  v10 = v44;
  v44(v2, v9);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v32 = sub_1C96A3D34();
  v10(v2, v41);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v31 = sub_1C96A3D34();
  v11 = v41;
  v44(v2, v41);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v30 = sub_1C96A3D34();
  v44(v2, v11);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v29 = sub_1C96A3D34();
  v12 = v41;
  v44(v2, v41);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v28 = sub_1C96A3D34();
  v13 = v12;
  v14 = v44;
  v44(v2, v13);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v27 = sub_1C96A3D34();
  v15 = v41;
  v14(v2, v41);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v16 = sub_1C96A3D34();
  v14(v2, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8298);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C96C36C0;
  v18 = v39;
  *(v17 + 32) = v40;
  *(v17 + 40) = v18;
  v19 = v37;
  *(v17 + 48) = v38;
  *(v17 + 56) = v19;
  v20 = v35;
  *(v17 + 64) = v36;
  *(v17 + 72) = v20;
  v21 = v33;
  *(v17 + 80) = v34;
  *(v17 + 88) = v21;
  v22 = v31;
  *(v17 + 96) = v32;
  *(v17 + 104) = v22;
  v23 = v29;
  *(v17 + 112) = v30;
  *(v17 + 120) = v23;
  v24 = v27;
  *(v17 + 128) = v28;
  *(v17 + 136) = v24;
  *(v17 + 144) = v16;
  v25 = sub_1C96A3D24();

  return v25;
}

uint64_t sub_1C9682374()
{
  sub_1C96A3D04();
  sub_1C9680D64();
}

uint64_t sub_1C96823D4()
{
  v0 = sub_1C96A3D94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1C9683838();
  sub_1C96A3D04();

  sub_1C9680D10();
  sub_1C96A3D84();
  v4 = sub_1C96A3D74();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C96AA1C0;
  *(v5 + 32) = v4;
  v6 = sub_1C96A3D64();

  return v6;
}

uint64_t sub_1C9682544()
{
  v0 = sub_1C96A3D54();
  v1 = sub_1C96A3D54();
  v2 = sub_1C96A3D54();
  v3 = sub_1C96A3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AC330;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_1C96A3D44();

  return v5;
}

uint64_t sub_1C968262C()
{
  sub_1C96A3CF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  sub_1C9680D10();
  sub_1C96A3CE4();
  sub_1C96A3CD4();
  v2 = OUTLINED_FUNCTION_17_2();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AA1C0;
  *(v4 + 32) = v0;
  v5 = sub_1C96A3CC4();

  return v5;
}

uint64_t sub_1C9682754()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C96A45A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C96A3FD4();
  __swift_allocate_value_buffer(v10, qword_1EC3C3E18);
  __swift_project_value_buffer(v10, qword_1EC3C3E18);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EDB94A40);
  (*(v5 + 16))(v7, v11, v4);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  return sub_1C96A3FC4();
}

uint64_t sub_1C9682A2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5700);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v48 = v33 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v33 - v3;
  v5 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C96A45A4();
  v49 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v46 = sub_1C96A45C4();
  v10 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8278);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8280);
  v14 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v41 = *(*(v13 - 8) + 72);
  v15 = swift_allocObject();
  v34 = xmmword_1C96AEF50;
  *(v15 + 16) = xmmword_1C96AEF50;
  v42 = v13;
  v43 = v15;
  v39 = *(v13 + 48);
  v40 = v15 + v14;
  *(v15 + v14) = 0;
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v47 = __swift_project_value_buffer(v6, qword_1EDB94A40);
  v17 = v49 + 16;
  v16 = *(v49 + 16);
  v18 = v6;
  v16(v8, v47, v6);
  v19 = v17;
  v20 = v16;
  sub_1C96A4BC4();
  v45 = v12;
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v46);
  v38 = sub_1C96A3E84();
  __swift_storeEnumTagSinglePayload(v48, 1, 1, v38);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5998);
  v22 = *(v10 + 72);
  v44 = v4;
  v36 = *(v10 + 80);
  v37 = v21;
  v35 = (v36 + 32) & ~v36;
  v23 = v22;
  *(swift_allocObject() + 16) = v34;
  sub_1C96A6FA4();
  v24 = v47;
  v33[0] = v18;
  v20(v8, v47, v18);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  sub_1C96A6FA4();
  v20(v8, v24, v18);
  v49 = v19;
  v25 = v20;
  sub_1C96A4BC4();
  v33[1] = v23;
  sub_1C96A45D4();
  v26 = v40;
  v27 = v44;
  v28 = v48;
  sub_1C96A3E94();
  v29 = *(v42 + 48);
  v41 += v26;
  v42 = v29;
  *v41 = 1;
  sub_1C96A6FA4();
  v30 = v33[0];
  v25(v8, v47, v33[0]);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v46);
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v38);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1C96AC330;
  sub_1C96A6FA4();
  v31 = v47;
  v25(v8, v47, v30);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  sub_1C96A6FA4();
  v25(v8, v31, v30);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  sub_1C96A6FA4();
  v25(v8, v31, v30);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  sub_1C96A6FA4();
  v25(v8, v31, v30);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  sub_1C96A3E94();
  sub_1C96A3EB4();
  sub_1C96839E8();
  result = sub_1C96A6F04();
  qword_1EC3C3E30 = result;
  return result;
}

uint64_t sub_1C9683254()
{
  v0 = sub_1C96A7BE4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C96832A8(char a1)
{
  if (a1)
  {
    return 28013;
  }

  else
  {
    return 28265;
  }
}

uint64_t sub_1C96832E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9683254();
  *a1 = result;
  return result;
}

uint64_t sub_1C9683314@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C96832A8(*v1);
  *a1 = result;
  a1[1] = 0xE200000000000000;
  return result;
}

uint64_t sub_1C9683344@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3A48E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A3FD4();
  v3 = __swift_project_value_buffer(v2, qword_1EC3C3E18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C96833EC(uint64_t a1)
{
  v2 = sub_1C96834F0();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1C9683438()
{
  if (qword_1EC3A48F0 != -1)
  {
    swift_once();
  }

  return sub_1C96A53C4();
}

uint64_t sub_1C9683494(uint64_t a1)
{
  v2 = sub_1C9683890();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1C96834F0()
{
  result = qword_1EC3A81E8;
  if (!qword_1EC3A81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A81E8);
  }

  return result;
}

unint64_t sub_1C9683548()
{
  result = qword_1EC3A81F0;
  if (!qword_1EC3A81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A81F0);
  }

  return result;
}

unint64_t sub_1C96835A0()
{
  result = qword_1EC3A81F8;
  if (!qword_1EC3A81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A81F8);
  }

  return result;
}

unint64_t sub_1C9683630()
{
  result = qword_1EC3A8200;
  if (!qword_1EC3A8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8200);
  }

  return result;
}

unint64_t sub_1C9683688()
{
  result = qword_1EC3A8208;
  if (!qword_1EC3A8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8208);
  }

  return result;
}

unint64_t sub_1C96836E0()
{
  result = qword_1EC3A8210;
  if (!qword_1EC3A8210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8210);
  }

  return result;
}

unint64_t sub_1C9683738()
{
  result = qword_1EC3A8218;
  if (!qword_1EC3A8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8218);
  }

  return result;
}

unint64_t sub_1C9683790()
{
  result = qword_1EC3A8220;
  if (!qword_1EC3A8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8220);
  }

  return result;
}

unint64_t sub_1C96837E4()
{
  result = qword_1EC3A8228;
  if (!qword_1EC3A8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8228);
  }

  return result;
}

unint64_t sub_1C9683838()
{
  result = qword_1EC3A8230;
  if (!qword_1EC3A8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8230);
  }

  return result;
}

unint64_t sub_1C9683890()
{
  result = qword_1EC3A8238;
  if (!qword_1EC3A8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8238);
  }

  return result;
}

unint64_t sub_1C9683938()
{
  result = qword_1EC3A8240;
  if (!qword_1EC3A8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8240);
  }

  return result;
}

unint64_t sub_1C9683990()
{
  result = qword_1EC3A8248;
  if (!qword_1EC3A8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8248);
  }

  return result;
}

unint64_t sub_1C96839E8()
{
  result = qword_1EC3A8250;
  if (!qword_1EC3A8250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8250);
  }

  return result;
}

_BYTE *sub_1C9683A98(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t AppLaunchCountManager.__allocating_init()()
{
  v0 = swift_allocObject();
  AppLaunchCountManager.init()();
  return v0;
}

id AppLaunchCountManager.appLaunchCount.getter()
{
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_0_109();
  v3 = [v1 integerForKey_];

  return v3;
}

void AppLaunchCountManager.appLaunchCount.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = OUTLINED_FUNCTION_0_109();
  [v3 setInteger:a1 forKey:v4];
}

void (*AppLaunchCountManager.appLaunchCount.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = AppLaunchCountManager.appLaunchCount.getter();
  return sub_1C9683CB0;
}

uint64_t AppLaunchCountManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void (*sub_1C9683D74(id *a1))(uint64_t *a1)
{
  a1[1] = *v1;
  *a1 = AppLaunchCountManager.appLaunchCount.getter();
  return sub_1C9683CB0;
}

unint64_t sub_1C9683E2C()
{
  result = qword_1EC3A82A0;
  if (!qword_1EC3A82A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A82A0);
  }

  return result;
}

unint64_t sub_1C9683E84()
{
  result = qword_1EC3A82A8;
  if (!qword_1EC3A82A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A82A8);
  }

  return result;
}

unint64_t sub_1C9683EDC()
{
  result = qword_1EC3A82B0;
  if (!qword_1EC3A82B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A82B0);
  }

  return result;
}

uint64_t sub_1C9683F34@<X0>(void *a1@<X8>)
{
  v2 = sub_1C96A4C14();
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v4 = sub_1C96A45A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v8 = sub_1C96A6FF4();
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v10 = sub_1C96A45C4();
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A56E8);
  OUTLINED_FUNCTION_9_45();
  OUTLINED_FUNCTION_8_49();
  if (qword_1EDB7AAF0 != -1)
  {
    OUTLINED_FUNCTION_2_77();
  }

  __swift_project_value_buffer(v4, qword_1EDB94A40);
  v12 = *(v6 + 16);
  v13 = OUTLINED_FUNCTION_3_59();
  v12(v13);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_0_110();
  OUTLINED_FUNCTION_4_66();
  v21 = sub_1C96A3C34();
  sub_1C96A6FA4();
  v14 = OUTLINED_FUNCTION_3_59();
  v12(v14);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_0_110();
  OUTLINED_FUNCTION_4_66();
  v20 = sub_1C96A3C34();
  OUTLINED_FUNCTION_8_49();
  v15 = OUTLINED_FUNCTION_3_59();
  v12(v15);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_0_110();
  OUTLINED_FUNCTION_4_66();
  v23 = sub_1C96A3C34();
  sub_1C96A6FA4();
  v16 = OUTLINED_FUNCTION_3_59();
  v12(v16);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_0_110();
  OUTLINED_FUNCTION_4_66();
  v22 = sub_1C96A3C34();
  sub_1C96A6FA4();
  v17 = OUTLINED_FUNCTION_3_59();
  v12(v17);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_0_110();
  OUTLINED_FUNCTION_4_66();
  v18 = sub_1C96A3C34();
  sub_1C96A3C04();
  sub_1C96A3C04();
  sub_1C96A3C04();
  sub_1C96A3C04();
  result = sub_1C96A3C04();
  *a1 = 0x6572726566657270;
  a1[1] = 0xEF7374696E752E64;
  a1[2] = v21;
  a1[3] = v20;
  a1[4] = v23;
  a1[5] = v22;
  a1[6] = v18;
  return result;
}

uint64_t sub_1C9684464()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5700);
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  v5 = OUTLINED_FUNCTION_7(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23[-v6];
  v8 = sub_1C96A4C14();
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v10 = sub_1C96A45A4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v16 = v15 - v14;
  v17 = sub_1C96A6FF4();
  v18 = OUTLINED_FUNCTION_7(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  v19 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    OUTLINED_FUNCTION_2_77();
  }

  v20 = __swift_project_value_buffer(v10, qword_1EDB94A40);
  (*(v12 + 16))(v16, v20, v10);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v19);
  v21 = sub_1C96A3E84();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v21);
  return sub_1C96A3EA4();
}

uint64_t sub_1C9684734()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18 - v2;
  v4 = sub_1C96A4C14();
  v5 = OUTLINED_FUNCTION_7(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v6 = sub_1C96A45A4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v12 = v11 - v10;
  v13 = sub_1C96A6FF4();
  v14 = OUTLINED_FUNCTION_7(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v15 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    OUTLINED_FUNCTION_2_77();
  }

  v16 = __swift_project_value_buffer(v6, qword_1EDB94A40);
  (*(v8 + 16))(v12, v16, v6);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v15);
  return sub_1C96A3FC4();
}

unint64_t sub_1C96849C0()
{
  result = qword_1EC3A82B8;
  if (!qword_1EC3A82B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A82B8);
  }

  return result;
}

unint64_t sub_1C9684A14()
{
  result = qword_1EC3A82C0;
  if (!qword_1EC3A82C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A82C0);
  }

  return result;
}

unint64_t sub_1C9684A6C()
{
  result = qword_1EC3A82C8;
  if (!qword_1EC3A82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A82C8);
  }

  return result;
}

uint64_t sub_1C9684AC0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_1C96A53C4();
}

unint64_t sub_1C9684AD4()
{
  result = qword_1EC3A82D0;
  if (!qword_1EC3A82D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A82D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A82D0);
  }

  return result;
}

uint64_t sub_1C9684B38(uint64_t a1)
{
  v2 = sub_1C95D529C();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

unint64_t sub_1C9684B88()
{
  result = qword_1EC3A82E0;
  if (!qword_1EC3A82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A82E0);
  }

  return result;
}

uint64_t sub_1C9684BF4(uint64_t a1)
{
  v2 = sub_1C9684A6C();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1C9684C40()
{
  sub_1C96A7A94();
  v0 = OUTLINED_FUNCTION_9_45();
  MEMORY[0x1CCA8CB00](v0, 0xE90000000000003DLL);
  sub_1C96A3BF4();
  OUTLINED_FUNCTION_10_46();

  MEMORY[0x1CCA8CB00](0xD000000000000010, 0x80000001C96D85C0);
  v1 = sub_1C96A3BF4();
  OUTLINED_FUNCTION_6_57(v1, v2, v3, v4, v5, v6, v7, v8, v38, v42);
  OUTLINED_FUNCTION_10_46();

  MEMORY[0x1CCA8CB00](0x757373657250202CLL, 0xEB000000003D6572);
  v9 = sub_1C96A3BF4();
  OUTLINED_FUNCTION_6_57(v9, v10, v11, v12, v13, v14, v15, v16, v39, v43);
  OUTLINED_FUNCTION_10_46();

  MEMORY[0x1CCA8CB00](0x7265706D6554202CLL, 0xEE003D6572757461);
  v17 = sub_1C96A3BF4();
  OUTLINED_FUNCTION_6_57(v17, v18, v19, v20, v21, v22, v23, v24, v40, v44);
  OUTLINED_FUNCTION_10_46();

  MEMORY[0x1CCA8CB00](0x3D646E6957202CLL, 0xE700000000000000);
  v25 = sub_1C96A3BF4();
  v33 = OUTLINED_FUNCTION_6_57(v25, v26, v27, v28, v29, v30, v31, v32, v41, v45);
  if (v35)
  {
    v36 = 0xE300000000000000;
  }

  else
  {
    v36 = v34;
  }

  MEMORY[0x1CCA8CB00](v33, v36);

  return 0;
}

uint64_t LocationOfInterest.init(type:location:isFromMeCard:fullAddress:shortAddress:searchDisplayAddress:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10)
{
  *a9 = *a1;
  v18 = type metadata accessor for LocationOfInterest();
  result = sub_1C94898C4(a2, &a9[v18[5]]);
  a9[v18[6]] = a3;
  v20 = &a9[v18[7]];
  *v20 = a4;
  v20[1] = a5;
  v21 = &a9[v18[8]];
  *v21 = a6;
  v21[1] = a7;
  v22 = &a9[v18[9]];
  *v22 = a8;
  v22[1] = a10;
  return result;
}

uint64_t LocationOfInterestType.description.getter()
{
  if (*v0)
  {
    return 1802661751;
  }

  else
  {
    return 1701670760;
  }
}

uint64_t LocationOfInterestType.imageName.getter()
{
  if (*v0)
  {
    return 0x7361636665697262;
  }

  else
  {
    return 0x69662E6573756F68;
  }
}

uint64_t sub_1C9684F2C(uint64_t a1)
{
  v2 = sub_1C948920C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9684F68(uint64_t a1)
{
  v2 = sub_1C948920C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9684FA4(uint64_t a1)
{
  v2 = sub_1C948DDC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9684FE0(uint64_t a1)
{
  v2 = sub_1C948DDC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C968501C(uint64_t a1)
{
  v2 = sub_1C9685094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9685058(uint64_t a1)
{
  v2 = sub_1C9685094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C9685094()
{
  result = qword_1EC3A8300;
  if (!qword_1EC3A8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8300);
  }

  return result;
}

uint64_t LocationOfInterestType.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

uint64_t LocationOfInterest.fullAddress.getter()
{
  type metadata accessor for LocationOfInterest();
  OUTLINED_FUNCTION_27_0();
  return OUTLINED_FUNCTION_11();
}

uint64_t LocationOfInterest.shortAddress.getter()
{
  type metadata accessor for LocationOfInterest();
  OUTLINED_FUNCTION_27_0();
  return OUTLINED_FUNCTION_11();
}

uint64_t LocationOfInterest.searchDisplayAddress.getter()
{
  type metadata accessor for LocationOfInterest();
  OUTLINED_FUNCTION_27_0();
  return OUTLINED_FUNCTION_11();
}

uint64_t LocationOfInterest.init(type:location:isFromMeCard:fullAddress:shortAddress:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  *a8 = *a1;
  v15 = type metadata accessor for LocationOfInterest();
  OUTLINED_FUNCTION_3_60();
  v17 = v16;
  sub_1C9489BB0(a2, &a8[v18], v16);
  a8[v15[6]] = a3;
  v19 = &a8[v15[7]];
  *v19 = a4;
  v19[1] = a5;
  v20 = &a8[v15[8]];
  *v20 = a6;
  v20[1] = a7;
  result = sub_1C948EB4C(a2, v17);
  v22 = &a8[v15[9]];
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  return result;
}

uint64_t LocationOfInterest.imageName.getter()
{
  if (*v0)
  {
    return 0x7361636665697262;
  }

  else
  {
    return 0x69662E6573756F68;
  }
}

uint64_t sub_1C9685340(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x654D6D6F72467369 && a2 == 0xEC00000064726143;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726464416C6C7566 && a2 == 0xEB00000000737365;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64644174726F6873 && a2 == 0xEC00000073736572;
          if (v9 || (sub_1C96A7DE4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000014 && 0x80000001C96D86A0 == a2)
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

uint64_t sub_1C968553C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9685340(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9685564(uint64_t a1)
{
  v2 = sub_1C948D6F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C96855A0(uint64_t a1)
{
  v2 = sub_1C948D6F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationOfInterest.hashValue.getter()
{
  sub_1C96A7EE4();
  LocationOfInterest.hash(into:)();
  return sub_1C96A7F24();
}

uint64_t sub_1C9685624()
{
  sub_1C96A7EE4();
  LocationOfInterest.hash(into:)();
  return sub_1C96A7F24();
}

unint64_t sub_1C9685664()
{
  result = qword_1EC3A8338;
  if (!qword_1EC3A8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8338);
  }

  return result;
}

unint64_t sub_1C96856BC()
{
  result = qword_1EC3A8340;
  if (!qword_1EC3A8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8340);
  }

  return result;
}

uint64_t sub_1C9685714()
{
  v0 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C96A45A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C96A45C4();
  __swift_allocate_value_buffer(v6, qword_1EC3A8348);
  __swift_project_value_buffer(v6, qword_1EC3A8348);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EDB94A40);
  (*(v2 + 16))(v4, v7, v1);
  sub_1C96A4BC4();
  return sub_1C96A45D4();
}

uint64_t (*static SetDistanceUnitIntent.title.modify())()
{
  if (qword_1EC3A48F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A45C4();
  __swift_project_value_buffer(v0, qword_1EC3A8348);
  OUTLINED_FUNCTION_19_1();
  return j_j__swift_endAccess;
}

uint64_t sub_1C9685A20@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C9600FDC(&qword_1EC3A48F8, MEMORY[0x1E6968E10], qword_1EC3A8348);
  swift_beginAccess();
  v3 = sub_1C96A45C4();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C9685AD0(uint64_t a1)
{
  v2 = sub_1C9600FDC(&qword_1EC3A48F8, MEMORY[0x1E6968E10], qword_1EC3A8348);
  swift_beginAccess();
  v3 = sub_1C96A45C4();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C9685B88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C96A45A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C96A3E34();
  __swift_allocate_value_buffer(v10, qword_1EC3A8360);
  __swift_project_value_buffer(v10, qword_1EC3A8360);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EDB94A40);
  (*(v5 + 16))(v7, v11, v4);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  return sub_1C96A3E54();
}

uint64_t (*static SetDistanceUnitIntent.description.modify())()
{
  if (qword_1EC3A4900 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A3E34();
  __swift_project_value_buffer(v0, qword_1EC3A8360);
  OUTLINED_FUNCTION_19_1();
  return j__swift_endAccess;
}

uint64_t sub_1C9685F60@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C9600FDC(&qword_1EC3A4900, MEMORY[0x1E695A200], qword_1EC3A8360);
  swift_beginAccess();
  v3 = sub_1C96A3E34();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C9686010(uint64_t a1)
{
  v2 = sub_1C9600FDC(&qword_1EC3A4900, MEMORY[0x1E695A200], qword_1EC3A8360);
  swift_beginAccess();
  v3 = sub_1C96A3E34();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C96860C8()
{
  v0 = sub_1C96A3B84();
  __swift_allocate_value_buffer(v0, qword_1EC3A8378);
  __swift_project_value_buffer(v0, qword_1EC3A8378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C00);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A3B74();
  sub_1C95E0D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C50);
  sub_1C9469CB4(&qword_1EC3A6C58, &qword_1EC3A6C50);
  return sub_1C96A79E4();
}

uint64_t static SetDistanceUnitIntent.supportedModes.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3A4908 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A3B84();
  __swift_project_value_buffer(v2, qword_1EC3A8378);
  OUTLINED_FUNCTION_8_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t static SetDistanceUnitIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8390);
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8398);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C9686464();
  sub_1C96A3F44();
  sub_1C96A3F34();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A83A8);
  sub_1C96A3F24();

  sub_1C96A3F34();
  sub_1C96A3F54();
  return sub_1C96A3F14();
}

unint64_t sub_1C9686464()
{
  result = qword_1EC3A83A0;
  if (!qword_1EC3A83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A83A0);
  }

  return result;
}

uint64_t SetDistanceUnitIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v36 = sub_1C96A3F64();
  OUTLINED_FUNCTION_1();
  v34 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v35 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5B40);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = sub_1C96A4C14();
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  v16 = sub_1C96A45A4();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v22 = v21 - v20;
  v23 = sub_1C96A6FF4();
  v24 = OUTLINED_FUNCTION_7(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v25 = sub_1C96A45C4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A83B0);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v16, qword_1EDB94A40);
  v28 = *(v18 + 16);
  v28(v22, v27, v16);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_2_7();
  sub_1C96A45D4();
  sub_1C96A6FA4();
  v28(v22, v27, v16);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_2_7();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v25);
  v38 = 2;
  v29 = sub_1C96A3B94();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v29);
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v29);
  (*(v34 + 104))(v35, *MEMORY[0x1E695A500], v36);
  sub_1C96884E8();
  *v37 = sub_1C96A3C94();
  return sub_1C954DDE0();
}

uint64_t SetDistanceUnitIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C9686928, 0, 0);
}

uint64_t sub_1C9686928()
{
  v5 = v0;
  sub_1C96A3C64();
  v1 = *(v0 + 32);
  if (qword_1EDB80318 != -1)
  {
    swift_once();
  }

  v4 = v1;
  UnitManager.setPreferredDistanceUnit(_:)(&v4);
  sub_1C9488854();
  static NSUserDefaults.postSettingsUpdatedNotification()();
  static WidgetUtilities.reloadWidget(reason:)(0xD000000000000037, 0x80000001C96D86E0);
  sub_1C96A3BB4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C9686A24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C94B9278;

  return SetDistanceUnitIntent.perform()(a1);
}

uint64_t sub_1C9686AC0(uint64_t a1)
{
  v2 = sub_1C9686464();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1C9686AFC()
{
  sub_1C96A3E14();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  SetDistanceUnitIntent.init()(&v7);
  sub_1C9686464();
  sub_1C96A3E24();
  sub_1C96A3E04();
  v2 = OUTLINED_FUNCTION_17_2();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AA1C0;
  *(v4 + 32) = v0;
  v5 = sub_1C96A3DF4();

  return v5;
}

uint64_t sub_1C9686C40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8458);
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8460);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C9686464();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  v31 = sub_1C9688830();
  v28 = a1;
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v6 = sub_1C96A3D34();
  v7 = v30;
  v8 = *(v29 + 8);
  v26 = v6;
  v27 = v8;
  v29 += 8;
  v8(v4, v30);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v25 = sub_1C96A3D34();
  v9 = v27;
  v27(v4, v7);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v24 = sub_1C96A3D34();
  v9(v4, v30);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v23 = sub_1C96A3D34();
  v10 = v27;
  v27(v4, v30);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v22 = sub_1C96A3D34();
  v10(v4, v30);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v21 = sub_1C96A3D34();
  v11 = v30;
  v27(v4, v30);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v20 = sub_1C96A3D34();
  v12 = v27;
  v27(v4, v11);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v13 = sub_1C96A3D34();
  v12(v4, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8468);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C96B2AC0;
  v15 = v25;
  *(v14 + 32) = v26;
  *(v14 + 40) = v15;
  v16 = v23;
  *(v14 + 48) = v24;
  *(v14 + 56) = v16;
  v17 = v21;
  *(v14 + 64) = v22;
  *(v14 + 72) = v17;
  *(v14 + 80) = v20;
  *(v14 + 88) = v13;
  v18 = sub_1C96A3D24();

  return v18;
}

uint64_t sub_1C968749C()
{
  v0 = sub_1C96A3D94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1C9688830();
  sub_1C96A3D04();

  sub_1C9686464();
  sub_1C96A3D84();
  v4 = sub_1C96A3D74();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C96AA1C0;
  *(v5 + 32) = v4;
  v6 = sub_1C96A3D64();

  return v6;
}

uint64_t sub_1C968760C()
{
  v0 = sub_1C96A3D54();
  v1 = sub_1C96A3D54();
  v2 = sub_1C96A3D54();
  v3 = sub_1C96A3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AC330;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_1C96A3D44();

  return v5;
}

uint64_t sub_1C96876F0()
{
  sub_1C96A3CF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  sub_1C9686464();
  sub_1C96A3CE4();
  sub_1C96A3CD4();
  v2 = OUTLINED_FUNCTION_17_2();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AA1C0;
  *(v4 + 32) = v0;
  v5 = sub_1C96A3CC4();

  return v5;
}

uint64_t sub_1C9687818()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C96A45A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C96A3FD4();
  __swift_allocate_value_buffer(v10, qword_1EC3C3E38);
  __swift_project_value_buffer(v10, qword_1EC3C3E38);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EDB94A40);
  (*(v5 + 16))(v7, v11, v4);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  return sub_1C96A3FC4();
}

uint64_t sub_1C9687AF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5700);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v49 = &v31 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v50 = &v31 - v3;
  v4 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1C96A45A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v48 = sub_1C96A45C4();
  v10 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8448);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8450);
  v14 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v41 = *(*(v13 - 8) + 72);
  v15 = swift_allocObject();
  v47 = xmmword_1C96AEF50;
  *(v15 + 16) = xmmword_1C96AEF50;
  v42 = v13;
  v43 = v15;
  v39 = *(v13 + 48);
  v40 = v15 + v14;
  *(v15 + v14) = 0;
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_1EDB94A40);
  v44 = v5;
  v17 = *(v6 + 16);
  v17(v8, v16, v5);
  sub_1C96A4BC4();
  v45 = v12;
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v50, 1, 1, v48);
  v38 = sub_1C96A3E84();
  __swift_storeEnumTagSinglePayload(v49, 1, 1, v38);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5998);
  v46 = *(v10 + 72);
  v19 = *(v10 + 80);
  v34 = ((v19 + 32) & ~v19) + 2 * v46;
  v35 = v19;
  v36 = (v19 + 32) & ~v19;
  v37 = v18;
  *(swift_allocObject() + 16) = v47;
  sub_1C96A6FA4();
  v20 = v44;
  v32 = v17;
  v17(v8, v16, v44);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  sub_1C96A6FA4();
  v21 = v16;
  v33 = v16;
  v17(v8, v16, v20);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  v22 = v40;
  v24 = v49;
  v23 = v50;
  sub_1C96A3E94();
  v25 = *(v42 + 48);
  v41 += v22;
  v42 = v25;
  *v41 = 1;
  sub_1C96A6FA4();
  v26 = v21;
  v27 = v44;
  v28 = v32;
  v32(v8, v26, v44);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v48);
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v38);
  *(swift_allocObject() + 16) = v47;
  sub_1C96A6FA4();
  v29 = v33;
  v28(v8, v33, v27);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  sub_1C96A6FA4();
  v28(v8, v29, v27);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  sub_1C96A3E94();
  sub_1C96A3EB4();
  sub_1C96889E0();
  result = sub_1C96A6F04();
  qword_1EC3C3E50 = result;
  return result;
}

uint64_t sub_1C9688240()
{
  v0 = sub_1C96A7BE4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9688294(char a1)
{
  if (a1)
  {
    return 28011;
  }

  else
  {
    return 0x73656C696DLL;
  }
}

uint64_t sub_1C96882E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9688240();
  *a1 = result;
  return result;
}

uint64_t sub_1C9688310@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9688294(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C968833C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3A4910 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A3FD4();
  v3 = __swift_project_value_buffer(v2, qword_1EC3C3E38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C96883E4(uint64_t a1)
{
  v2 = sub_1C96884E8();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1C9688430()
{
  if (qword_1EC3A4918 != -1)
  {
    swift_once();
  }

  return sub_1C96A53C4();
}

uint64_t sub_1C968848C(uint64_t a1)
{
  v2 = sub_1C9688888();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1C96884E8()
{
  result = qword_1EC3A83B8;
  if (!qword_1EC3A83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A83B8);
  }

  return result;
}

unint64_t sub_1C9688540()
{
  result = qword_1EC3A83C0;
  if (!qword_1EC3A83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A83C0);
  }

  return result;
}

unint64_t sub_1C9688598()
{
  result = qword_1EC3A83C8;
  if (!qword_1EC3A83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A83C8);
  }

  return result;
}

unint64_t sub_1C9688628()
{
  result = qword_1EC3A83D0;
  if (!qword_1EC3A83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A83D0);
  }

  return result;
}

unint64_t sub_1C9688680()
{
  result = qword_1EC3A83D8;
  if (!qword_1EC3A83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A83D8);
  }

  return result;
}

unint64_t sub_1C96886D8()
{
  result = qword_1EC3A83E0;
  if (!qword_1EC3A83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A83E0);
  }

  return result;
}

unint64_t sub_1C9688730()
{
  result = qword_1EC3A83E8;
  if (!qword_1EC3A83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A83E8);
  }

  return result;
}

unint64_t sub_1C9688788()
{
  result = qword_1EC3A83F0;
  if (!qword_1EC3A83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A83F0);
  }

  return result;
}

unint64_t sub_1C96887DC()
{
  result = qword_1EC3A83F8;
  if (!qword_1EC3A83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A83F8);
  }

  return result;
}

unint64_t sub_1C9688830()
{
  result = qword_1EC3A8400;
  if (!qword_1EC3A8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8400);
  }

  return result;
}

unint64_t sub_1C9688888()
{
  result = qword_1EC3A8408;
  if (!qword_1EC3A8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8408);
  }

  return result;
}

unint64_t sub_1C9688930()
{
  result = qword_1EC3A8410;
  if (!qword_1EC3A8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8410);
  }

  return result;
}

unint64_t sub_1C9688988()
{
  result = qword_1EC3A8418;
  if (!qword_1EC3A8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8418);
  }

  return result;
}

unint64_t sub_1C96889E0()
{
  result = qword_1EC3A8420;
  if (!qword_1EC3A8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8420);
  }

  return result;
}

_BYTE *sub_1C9688A90(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C9688B70()
{
  sub_1C96A7144();
}

uint64_t sub_1C9688C0C()
{
  OUTLINED_FUNCTION_24_24();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_22_27();
      break;
    default:
      break;
  }

  sub_1C96A7144();
}

uint64_t sub_1C9688CC4()
{
  sub_1C96A7144();
}

uint64_t sub_1C9688D2C()
{
  sub_1C96A7144();
}

uint64_t sub_1C9688E84()
{
  sub_1C96A7144();
}

uint64_t sub_1C9688F50()
{
  sub_1C96A7144();
}

uint64_t sub_1C9689044(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      OUTLINED_FUNCTION_6_58();
      break;
    default:
      break;
  }

  sub_1C96A7144();
}

uint64_t sub_1C96890F4()
{
  sub_1C96A7144();
}

uint64_t sub_1C968915C()
{
  sub_1C96A7144();
}

uint64_t sub_1C96891F8()
{
  sub_1C96A7144();
}

uint64_t sub_1C9689238()
{
  sub_1C96A7144();
}

uint64_t sub_1C9689294()
{
  sub_1C96A7144();
}

uint64_t sub_1C9689308(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 4:
      OUTLINED_FUNCTION_2_80();
      break;
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_6_58();
      break;
  }

  sub_1C96A7144();
}

uint64_t sub_1C96893C4()
{
  OUTLINED_FUNCTION_37_11();
  switch(v0)
  {
    case 1:
    case 4:
      OUTLINED_FUNCTION_6_58();
      break;
    case 2:
    case 3:
    case 5:
      OUTLINED_FUNCTION_6_58();
      OUTLINED_FUNCTION_45_10();
      break;
    default:
      break;
  }

  sub_1C96A7144();
}

uint64_t sub_1C96894A8()
{
  sub_1C96A7144();
}

uint64_t sub_1C9689574()
{
  sub_1C96A7144();
}

uint64_t sub_1C96895F4()
{
  sub_1C96A7144();
}

uint64_t sub_1C968965C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      OUTLINED_FUNCTION_6_58();
      break;
    default:
      break;
  }

  sub_1C96A7144();
}

uint64_t sub_1C9689740()
{
  sub_1C96A7144();
}

uint64_t sub_1C96897F8()
{
  sub_1C96A7144();
}

uint64_t sub_1C9689880()
{
  sub_1C96A7144();
}

uint64_t sub_1C968991C()
{
  OUTLINED_FUNCTION_44_10();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_6_58();
      break;
    case 2:
      OUTLINED_FUNCTION_36_10();
      break;
    case 5:
      OUTLINED_FUNCTION_47_7();
      break;
    default:
      break;
  }

  sub_1C96A7144();
}

uint64_t sub_1C9689A10()
{
  sub_1C96A7144();
}

uint64_t sub_1C9689A50()
{
  OUTLINED_FUNCTION_29_16();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_6_58();
      break;
    default:
      break;
  }

  sub_1C96A7144();
}

uint64_t sub_1C9689B08()
{
  sub_1C96A7144();
}

uint64_t sub_1C9689BA4()
{
  sub_1C96A7144();
}

uint64_t sub_1C9689C0C()
{
  sub_1C96A7144();
}

uint64_t sub_1C9689CA8()
{
  OUTLINED_FUNCTION_22_27();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_29_16();
      break;
    case 2:
      OUTLINED_FUNCTION_24_24();
      break;
    default:
      break;
  }

  sub_1C96A7144();
}

uint64_t sub_1C9689D60(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_6_58();
      OUTLINED_FUNCTION_45_10();
      break;
    case 4:
      OUTLINED_FUNCTION_6_58();
      break;
    default:
      break;
  }

  sub_1C96A7144();
}

uint64_t sub_1C9689E24(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_6_58();
      break;
    case 3:
    case 4:
    case 5:
    case 6:
      OUTLINED_FUNCTION_2_80();
      break;
    default:
      break;
  }

  sub_1C96A7144();
}

uint64_t sub_1C9689F44()
{
  sub_1C96A7144();
}

uint64_t sub_1C968A03C()
{
  sub_1C96A7144();
}

uint64_t sub_1C968A0F0()
{
  sub_1C96A7144();
}

uint64_t sub_1C968A198()
{
  OUTLINED_FUNCTION_37_11();
  sub_1C96A7144();
}

uint64_t sub_1C968A2E0()
{
  sub_1C96A7144();
}

uint64_t sub_1C968A3D8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_6_58();
      break;
    default:
      break;
  }

  sub_1C96A7144();
}

uint64_t sub_1C968A4BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_1C96A7144();
}

uint64_t sub_1C968A52C()
{
  OUTLINED_FUNCTION_47_7();
  switch(v0)
  {
    case 1:
    case 3:
    case 6:
      break;
    case 2:
      OUTLINED_FUNCTION_36_10();
      break;
    case 4:
    case 5:
      OUTLINED_FUNCTION_44_10();
      break;
    default:
      OUTLINED_FUNCTION_6_58();
      break;
  }

  sub_1C96A7144();
}

uint64_t sub_1C968A5E8()
{
  sub_1C96A7144();
}

uint64_t sub_1C968A658()
{
  sub_1C96A7144();
}

uint64_t sub_1C968A71C()
{
  sub_1C96A7144();
}

uint64_t sub_1C968A764()
{
  sub_1C96A7144();
}

uint64_t sub_1C968A7E8()
{
  sub_1C96A7144();
}

uint64_t sub_1C968A868(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 5:
      OUTLINED_FUNCTION_6_58();
      break;
    default:
      break;
  }

  sub_1C96A7144();
}

uint64_t sub_1C968A98C()
{
  sub_1C96A7144();
}

uint64_t sub_1C968AA88()
{
  sub_1C96A7144();
}

id UnitConfiguration.Pressure.asUnit.getter()
{
  v1 = [objc_opt_self() *off_1E8340F70[*v0]];

  return v1;
}

id UnitConfiguration.WindSpeed.asUnit.getter()
{
  switch(*v0)
  {
    case 1:
      v1 = [objc_opt_self() kilometersPerHour];
      goto LABEL_11;
    case 2:
      v1 = [objc_opt_self() metersPerSecond];
      goto LABEL_11;
    case 3:
      if (qword_1EDB77D10 != -1)
      {
        OUTLINED_FUNCTION_4_68();
      }

      v2 = qword_1EDB77D18;

      return v2;
    case 4:
      v1 = [objc_opt_self() knots];
      goto LABEL_11;
    default:
      v1 = [objc_opt_self() milesPerHour];
LABEL_11:

      return v1;
  }
}

WeatherCore::UnitConfiguration::Precipitation_optional __swiftcall UnitConfiguration.Precipitation.init(_:)(NSUnitLength a1)
{
  isa = a1.super.super.super.isa;
  v3 = v1;
  v4 = objc_opt_self();
  v5 = isa;
  v6 = [v4 centimeters];
  sub_1C946B5D0(0, &qword_1EDB7FDA0);
  v7 = sub_1C96A78B4();

  if (v7)
  {

    v9 = 1;
  }

  else
  {
    v10 = v5;
    v11 = [v4 inches];
    v12 = OUTLINED_FUNCTION_39_11();

    if (v12)
    {

      v9 = 0;
    }

    else
    {
      v13 = [v4 millimeters];
      v14 = OUTLINED_FUNCTION_48_11();

      if (v14)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }
  }

  *v3 = v9;
  return result;
}

WeatherCore::UnitConfiguration::Pressure_optional __swiftcall UnitConfiguration.Pressure.init(_:)(NSUnitPressure a1)
{
  isa = a1.super.super.super.isa;
  v3 = v1;
  v4 = objc_opt_self();
  v5 = isa;
  v6 = [v4 hectopascals];
  sub_1C946B5D0(0, &qword_1EDB7FD98);
  v7 = sub_1C96A78B4();

  if (v7)
  {

    v9 = 3;
  }

  else
  {
    v10 = v5;
    v11 = [v4 inchesOfMercury];
    v12 = OUTLINED_FUNCTION_39_11();

    if (v12)
    {

      v9 = 1;
    }

    else
    {
      v13 = v10;
      v14 = [v4 millibars];
      v15 = OUTLINED_FUNCTION_39_11();

      if (v15)
      {

        v9 = 0;
      }

      else
      {
        v16 = [v4 millimetersOfMercury];
        v17 = OUTLINED_FUNCTION_48_11();

        if (v17)
        {
          v9 = 2;
        }

        else
        {
          v9 = 5;
        }
      }
    }
  }

  *v3 = v9;
  return result;
}

void sub_1C968AF98(void *a1@<X0>, SEL *a2@<X2>, unint64_t *a3@<X3>, SEL *a4@<X4>, char *a5@<X8>)
{
  v10 = objc_opt_self();
  v11 = a1;
  v12 = [v10 *a2];
  sub_1C946B5D0(0, a3);
  v13 = sub_1C96A78B4();

  if (v13)
  {

    v14 = 1;
  }

  else
  {
    v15 = [v10 *a4];
    v16 = sub_1C96A78B4();

    if (v16)
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }
  }

  *a5 = v14;
}

WeatherCore::UnitConfiguration::WindSpeed_optional __swiftcall UnitConfiguration.WindSpeed.init(_:)(NSUnitSpeed a1)
{
  v2 = v1;
  v3 = qword_1EDB77D10;
  v4 = a1.super.super.super.isa;
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_4_68();
  }

  v5 = qword_1EDB77D18;
  sub_1C946B5D0(0, &qword_1EDB80070);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_48_11();

  if (v7)
  {

    v9 = 3;
  }

  else
  {
    v10 = objc_opt_self();
    v11 = v4;
    v12 = [v10 kilometersPerHour];
    v13 = OUTLINED_FUNCTION_39_11();

    if (v13)
    {

      v9 = 1;
    }

    else
    {
      v14 = v11;
      v15 = [v10 knots];
      v16 = OUTLINED_FUNCTION_39_11();

      if (v16)
      {

        v9 = 4;
      }

      else
      {
        v17 = v14;
        v18 = [v10 metersPerSecond];
        v19 = OUTLINED_FUNCTION_39_11();

        if (v19)
        {

          v9 = 2;
        }

        else
        {
          v20 = [v10 milesPerHour];
          v21 = OUTLINED_FUNCTION_48_11();

          if (v21)
          {
            v9 = 0;
          }

          else
          {
            v9 = 5;
          }
        }
      }
    }
  }

  *v2 = v9;
  return result;
}

uint64_t UnitConfiguration.Distance.rawValue.getter()
{
  if (*v0)
  {
    return 28011;
  }

  else
  {
    return 0x73656C696DLL;
  }
}

uint64_t UnitConfiguration.Precipitation.rawValue.getter()
{
  if (*v0)
  {
    return 0x6D63202C6D6DLL;
  }

  else
  {
    return 28265;
  }
}

uint64_t UnitConfiguration.Pressure.rawValue.getter()
{
  result = 1918984813;
  switch(*v0)
  {
    case 1:
      result = 1732800105;
      break;
    case 2:
      result = 1732799853;
      break;
    case 3:
      result = 6377576;
      break;
    case 4:
      result = 6377579;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t UnitConfiguration.Temperature.rawValue.getter()
{
  if (*v0)
  {
    return 99;
  }

  else
  {
    return 102;
  }
}

uint64_t sub_1C968B314(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6174736964 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6572757373657270 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x65657053646E6977 && a2 == 0xE900000000000064)
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

uint64_t sub_1C968B4C8(char a1)
{
  result = 0x65636E6174736964;
  switch(a1)
  {
    case 1:
      result = 0x7469706963657270;
      break;
    case 2:
      result = 0x6572757373657270;
      break;
    case 3:
      result = 0x74617265706D6574;
      break;
    case 4:
      result = 0x65657053646E6977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C968B580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C968B314(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C968B5A8(uint64_t a1)
{
  v2 = sub_1C968C2C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C968B5E4(uint64_t a1)
{
  v2 = sub_1C968C2C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C968B620(uint64_t a1)
{
  v2 = sub_1C968C464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C968B65C(uint64_t a1)
{
  v2 = sub_1C968C464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C968B698(uint64_t a1)
{
  v2 = sub_1C968C410();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C968B6D4(uint64_t a1)
{
  v2 = sub_1C968C410();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C968B710(uint64_t a1)
{
  v2 = sub_1C968C3BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C968B74C(uint64_t a1)
{
  v2 = sub_1C968C3BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C968B788(uint64_t a1)
{
  v2 = sub_1C968C368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C968B7C4(uint64_t a1)
{
  v2 = sub_1C968C368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C968B800(uint64_t a1)
{
  v2 = sub_1C968C314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C968B83C(uint64_t a1)
{
  v2 = sub_1C968C314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C968B89C@<X0>(uint64_t *a1@<X8>)
{
  result = UnitConfiguration.Distance.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C968B8F8@<X0>(uint64_t *a1@<X8>)
{
  result = UnitConfiguration.Precipitation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

WeatherCore::UnitConfiguration::Pressure_optional __swiftcall UnitConfiguration.Pressure.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_5_45();
  v2 = sub_1C96A7BE4();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1C968B99C@<X0>(uint64_t *a1@<X8>)
{
  result = UnitConfiguration.Pressure.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C968B9E0()
{
  OUTLINED_FUNCTION_5_45();
  v1 = sub_1C96A7BE4();

  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!v1)
  {
    v3 = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1C968BA50@<X0>(uint64_t *a1@<X8>)
{
  result = UnitConfiguration.Temperature.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE100000000000000;
  return result;
}

void *sub_1C968BAA8()
{
  result = sub_1C96A6F04();
  off_1EDB7C348 = result;
  return result;
}

uint64_t sub_1C968BB0C()
{
  result = sub_1C96A6F04();
  qword_1EC3A8470 = result;
  return result;
}

uint64_t sub_1C968BB70(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return sub_1C96A53C4();
}

uint64_t sub_1C968BBBC(uint64_t a1)
{
  v2 = sub_1C947BB8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C968BBF8(uint64_t a1)
{
  v2 = sub_1C947BB8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConfiguredUnit.encode(to:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8488);
  OUTLINED_FUNCTION_1();
  v47 = v6;
  v48 = v5;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_90();
  v46 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8490);
  OUTLINED_FUNCTION_1();
  v44 = v10;
  v45 = v9;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_90();
  v43 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8498);
  OUTLINED_FUNCTION_1();
  v41 = v14;
  v42 = v13;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A84A0);
  OUTLINED_FUNCTION_1();
  v39 = v17;
  v40 = v16;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A84A8);
  OUTLINED_FUNCTION_1();
  v38 = v22;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A84B0);
  OUTLINED_FUNCTION_1();
  v50 = v27;
  v51 = v26;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_28_2();
  v49 = *v3;
  v29 = v3[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C968C2C0();
  sub_1C96A7F54();
  switch(v29)
  {
    case 1:
      v55 = 1;
      sub_1C968C410();
      OUTLINED_FUNCTION_13_45();
      v54 = v49;
      sub_1C94870BC();
      v32 = v40;
      OUTLINED_FUNCTION_41_14();
      v33 = v39;
      goto LABEL_7;
    case 2:
      v57 = 2;
      sub_1C968C3BC();
      OUTLINED_FUNCTION_13_45();
      v56 = v49;
      sub_1C9487110();
      v34 = v42;
      sub_1C96A7D14();
      v35 = OUTLINED_FUNCTION_28_22();
      v37 = v34;
      goto LABEL_8;
    case 3:
      v59 = 3;
      sub_1C968C368();
      v20 = v43;
      OUTLINED_FUNCTION_13_45();
      v58 = v49;
      sub_1C9487164();
      v32 = v45;
      OUTLINED_FUNCTION_41_14();
      v33 = v44;
      goto LABEL_7;
    case 4:
      v61 = 4;
      sub_1C968C314();
      v20 = v46;
      OUTLINED_FUNCTION_13_45();
      v60 = v49;
      sub_1C94871B8();
      v32 = v48;
      OUTLINED_FUNCTION_41_14();
      v33 = v47;
LABEL_7:
      v36 = *(v33 + 8);
      v35 = v20;
      v37 = v32;
LABEL_8:
      v36(v35, v37);
      result = (*(v50 + 8))(v2, v21);
      break;
    default:
      v53 = 0;
      sub_1C968C464();
      v30 = v51;
      sub_1C96A7CD4();
      v52 = v49;
      sub_1C9487068();
      sub_1C96A7D14();
      (*(v38 + 8))(v25, v21);
      result = (*(v50 + 8))(v2, v30);
      break;
  }

  return result;
}

unint64_t sub_1C968C2C0()
{
  result = qword_1EC3A84B8;
  if (!qword_1EC3A84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A84B8);
  }

  return result;
}

unint64_t sub_1C968C314()
{
  result = qword_1EC3A84C0;
  if (!qword_1EC3A84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A84C0);
  }

  return result;
}

unint64_t sub_1C968C368()
{
  result = qword_1EC3A84C8;
  if (!qword_1EC3A84C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A84C8);
  }

  return result;
}

unint64_t sub_1C968C3BC()
{
  result = qword_1EC3A84D0;
  if (!qword_1EC3A84D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A84D0);
  }

  return result;
}

unint64_t sub_1C968C410()
{
  result = qword_1EC3A84D8;
  if (!qword_1EC3A84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A84D8);
  }

  return result;
}

unint64_t sub_1C968C464()
{
  result = qword_1EC3A84E0;
  if (!qword_1EC3A84E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A84E0);
  }

  return result;
}

uint64_t ConfiguredUnit.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v91 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A84E8);
  OUTLINED_FUNCTION_1();
  v87 = v3;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_90();
  v90 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A84F0);
  OUTLINED_FUNCTION_1();
  v85 = v7;
  v86 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_90();
  v89 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A84F8);
  OUTLINED_FUNCTION_1();
  v82 = v11;
  v83 = v10;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_90();
  v88 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8500);
  OUTLINED_FUNCTION_1();
  v80 = v15;
  v81 = v14;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v77 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8508);
  OUTLINED_FUNCTION_1();
  v79 = v20;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8510);
  OUTLINED_FUNCTION_1();
  v26 = v25;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v77 - v28;
  v30 = a1[3];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1C968C2C0();
  v31 = v93;
  sub_1C96A7F44();
  if (v31)
  {
    goto LABEL_10;
  }

  v77[1] = v19;
  v77[2] = v23;
  v77[3] = v18;
  v78 = 0;
  v32 = v91;
  v93 = v26;
  v33 = sub_1C96A7CC4();
  result = sub_1C9489288(v33, 0);
  if (v36 == v37 >> 1)
  {
LABEL_9:
    v44 = sub_1C96A7AE4();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A78);
    *v46 = &type metadata for ConfiguredUnit;
    sub_1C96A7C14();
    sub_1C96A7AD4();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v93 + 8))(v29, v24);
LABEL_10:
    v47 = v92;
    return __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }

  if (v36 < (v37 >> 1))
  {
    v38 = v24;
    v77[0] = *(v35 + v36);
    sub_1C9489290(v36 + 1);
    v40 = v39;
    v42 = v41;
    swift_unknownObjectRelease();
    if (v40 == v42 >> 1)
    {
      switch(v77[0])
      {
        case 1:
          v97 = 1;
          sub_1C968C410();
          v53 = v78;
          OUTLINED_FUNCTION_10_48();
          sub_1C96A7C04();
          if (v53)
          {
            goto LABEL_19;
          }

          sub_1C948588C();
          OUTLINED_FUNCTION_25_24();
          OUTLINED_FUNCTION_21_29();
          swift_unknownObjectRelease();
          v73 = OUTLINED_FUNCTION_19_31();
          v74(v73);
          v75 = OUTLINED_FUNCTION_9_46();
          v76(v75);
          v72 = v96;
          goto LABEL_21;
        case 2:
          v99 = 2;
          sub_1C968C3BC();
          OUTLINED_FUNCTION_10_48();
          v50 = v78;
          sub_1C96A7C04();
          if (v50)
          {
            goto LABEL_19;
          }

          sub_1C94858E0();
          v51 = v83;
          sub_1C96A7C74();
          swift_unknownObjectRelease();
          v60 = OUTLINED_FUNCTION_28_22();
          v61(v60, v51);
          v62 = OUTLINED_FUNCTION_16_36();
          v63(v62);
          v72 = v98;
          goto LABEL_21;
        case 3:
          v101 = 3;
          sub_1C968C368();
          OUTLINED_FUNCTION_10_48();
          v52 = v78;
          sub_1C96A7C04();
          if (v52)
          {
            goto LABEL_19;
          }

          sub_1C9485A2C();
          OUTLINED_FUNCTION_25_24();
          OUTLINED_FUNCTION_21_29();
          swift_unknownObjectRelease();
          v64 = OUTLINED_FUNCTION_19_31();
          v65(v64);
          v66 = OUTLINED_FUNCTION_9_46();
          v67(v66);
          v72 = v100;
          goto LABEL_21;
        case 4:
          v103 = 4;
          sub_1C968C314();
          OUTLINED_FUNCTION_10_48();
          v48 = v78;
          sub_1C96A7C04();
          if (v48)
          {
            goto LABEL_19;
          }

          sub_1C947BBF0();
          v49 = v84;
          sub_1C96A7C74();
          OUTLINED_FUNCTION_21_29();
          swift_unknownObjectRelease();
          v56 = OUTLINED_FUNCTION_28_22();
          v57(v56, v49);
          v58 = OUTLINED_FUNCTION_9_46();
          v59(v58);
          v72 = v102;
          goto LABEL_21;
        default:
          v95 = 0;
          sub_1C968C464();
          OUTLINED_FUNCTION_10_48();
          v43 = v78;
          sub_1C96A7C04();
          if (v43)
          {
LABEL_19:
            v54 = OUTLINED_FUNCTION_16_36();
            v55(v54);
            swift_unknownObjectRelease();
            goto LABEL_10;
          }

          sub_1C947BC50();
          OUTLINED_FUNCTION_25_24();
          OUTLINED_FUNCTION_21_29();
          swift_unknownObjectRelease();
          v68 = OUTLINED_FUNCTION_19_31();
          v69(v68);
          v70 = OUTLINED_FUNCTION_9_46();
          v71(v70);
          v72 = v94;
LABEL_21:
          v47 = v92;
          *v32 = v72;
          v32[1] = v77[0];
          break;
      }

      return __swift_destroy_boxed_opaque_existential_1Tm(v47);
    }

    v24 = v38;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t static ConfiguredUnit.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  switch(a1[1])
  {
    case 1u:
      if (v6 != 1)
      {
        return 0;
      }

      if (v4 == 2)
      {
        return v5 == 2;
      }

      return v5 != 2 && (sub_1C9549788(v4 & 1) & 1) != 0;
    case 2u:
      if (v6 != 2)
      {
        return 0;
      }

      if (v4 == 5)
      {
        goto LABEL_14;
      }

      return v5 != 5 && (sub_1C954DD88(v4, v5) & 1) != 0;
    case 3u:
      if (v6 != 3)
      {
        return 0;
      }

      if (v4 == 2)
      {
        return v5 == 2;
      }

      return v5 != 2 && (sub_1C9549808() & 1) != 0;
    case 4u:
      if (v6 != 4)
      {
        return 0;
      }

      if (v4 == 5)
      {
LABEL_14:
        if (v5 == 5)
        {
          return 1;
        }
      }

      else if (v5 != 5 && (sub_1C954986C(v4, v5) & 1) != 0)
      {
        return 1;
      }

      return 0;
    default:
      if (v6)
      {
        return 0;
      }

      if (v4 != 2)
      {
        return v5 != 2 && (sub_1C954DD8C(v4 & 1, v5 & 1) & 1) != 0;
      }

      return v5 == 2;
  }
}

uint64_t ConfiguredUnit.hash(into:)()
{
  v1 = *v0;
  switch(v0[1])
  {
    case 1u:
      MEMORY[0x1CCA8D880](1);
      if (v1 != 2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 2u:
      MEMORY[0x1CCA8D880](2);
      if (v1 == 5)
      {
        goto LABEL_13;
      }

      sub_1C96A7F04();
      result = sub_1C968A0F0();
      break;
    case 3u:
      MEMORY[0x1CCA8D880](3);
      if (v1 != 2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 4u:
      MEMORY[0x1CCA8D880](4);
      if (v1 == 5)
      {
        goto LABEL_13;
      }

      sub_1C96A7F04();

      result = sub_1C968915C();
      break;
    default:
      MEMORY[0x1CCA8D880](0);
      if (v1 == 2)
      {
LABEL_13:
        result = sub_1C96A7F04();
      }

      else
      {
LABEL_14:
        sub_1C96A7F04();
        sub_1C96A7144();
      }

      break;
  }

  return result;
}

uint64_t ConfiguredUnit.hashValue.getter()
{
  sub_1C96A7EE4();
  ConfiguredUnit.hash(into:)();
  return sub_1C96A7F24();
}

uint64_t sub_1C968D348()
{
  sub_1C96A7EE4();
  ConfiguredUnit.hash(into:)();
  return sub_1C96A7F24();
}

id sub_1C968D460()
{
  result = sub_1C968D4A8(1);
  qword_1EC3A8478 = result;
  return result;
}

id sub_1C968D484()
{
  result = sub_1C968D4A8(2);
  qword_1EC3A8480 = result;
  return result;
}

id sub_1C968D4A8(uint64_t a1)
{
  sub_1C96A4C14();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
  [v3 setUnitStyle_];
  sub_1C96A4B74();
  v4 = sub_1C96A4B64();
  v5 = OUTLINED_FUNCTION_4_4();
  v6(v5);
  [v3 setLocale_];

  return v3;
}

uint64_t ConfiguredUnit.description.getter()
{
  v1 = *v0;
  switch(v0[1])
  {
    case 1u:
      sub_1C96A7A94();

      v6[0] = 0x7469706963657270;
      v6[1] = 0xEF203A6E6F697461;
      if (v1 == 2)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_32_8();
      v2 = UnitConfiguration.Precipitation.symbol.getter();
      goto LABEL_13;
    case 2u:
      strcpy(v6, "pressure: ");
      BYTE3(v6[1]) = 0;
      HIDWORD(v6[1]) = -369098752;
      if (v1 == 5)
      {
        goto LABEL_11;
      }

      v2 = UnitConfiguration.Pressure.symbol.getter();
      goto LABEL_13;
    case 3u:
      strcpy(v6, "temperature: ");
      HIWORD(v6[1]) = -4864;
      if (v1 == 2)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_32_8();
      v2 = UnitConfiguration.Temperature.symbol.getter();
      goto LABEL_13;
    case 4u:
      strcpy(v6, "windSpeed: ");
      HIDWORD(v6[1]) = -352321536;
      if (v1 == 5)
      {
        goto LABEL_11;
      }

      v2 = UnitConfiguration.WindSpeed.symbol.getter();
      goto LABEL_13;
    default:
      strcpy(v6, "distance: ");
      BYTE3(v6[1]) = 0;
      HIDWORD(v6[1]) = -369098752;
      if (v1 == 2)
      {
LABEL_11:
        v2 = 0x732D656C61636F6CLL;
        v4 = 0xEF63696669636570;
      }

      else
      {
        OUTLINED_FUNCTION_32_8();
        v2 = UnitConfiguration.Distance.symbol.getter();
LABEL_13:
        v4 = v3;
      }

      MEMORY[0x1CCA8CB00](v2, v4);

      return v6[0];
  }
}

uint64_t UnitConfiguration.Precipitation.symbol.getter()
{
  if (*v0)
  {
    if (qword_1EDB7AB08 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v1 = qword_1EDB94A58;
    sub_1C96A4534();
    goto LABEL_7;
  }

  v2 = objc_opt_self();
  v3 = [v2 inches];
  sub_1C968DDBC();
  OUTLINED_FUNCTION_27_19();

  if (!v3)
  {
    v4 = [v2 inches];
    v1 = [v4 symbol];

    sub_1C96A7024();
LABEL_7:
    OUTLINED_FUNCTION_27_19();
  }

  return OUTLINED_FUNCTION_11();
}

uint64_t UnitConfiguration.Pressure.symbol.getter()
{
  v1 = *v0;
  v2 = [objc_opt_self() *off_1E8340F70[v1]];
  sub_1C968DDBC();
  OUTLINED_FUNCTION_27_19();

  if (!v2)
  {
    if (qword_1EC3A4938 != -1)
    {
      swift_once();
    }

    v3 = qword_1EC3A8480;
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 *off_1E8340F70[v1]];
    v7 = [v5 stringFromUnit_];

    sub_1C96A7024();
    OUTLINED_FUNCTION_27_19();
  }

  return OUTLINED_FUNCTION_11();
}

uint64_t sub_1C968D9F4(uint64_t a1, SEL *a2, SEL *a3)
{
  v6 = *v3;
  v7 = objc_opt_self();
  if (v6)
  {
    v8 = a2;
  }

  else
  {
    v8 = a3;
  }

  v9 = [v7 *v8];
  v10 = sub_1C968DDBC();
  v12 = v11;

  if (!v12)
  {
    if (qword_1EC3A4930 != -1)
    {
      OUTLINED_FUNCTION_18_32();
    }

    v13 = qword_1EC3A8478;
    v14 = objc_opt_self();
    v15 = v13;
    if (v6)
    {
      v16 = a2;
    }

    else
    {
      v16 = a3;
    }

    v17 = [v14 *v16];
    v18 = [v15 stringFromUnit_];

    v10 = sub_1C96A7024();
  }

  return v10;
}

uint64_t UnitConfiguration.WindSpeed.symbol.getter()
{
  v1 = *v0;
  v2 = &selRef_kilometersPerHour;
  switch(*v0)
  {
    case 1:
      goto LABEL_5;
    case 2:
      v2 = &selRef_metersPerSecond;
      goto LABEL_5;
    case 3:
      if (qword_1EDB7AB08 != -1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      v8 = qword_1EDB94A58;
      sub_1C96A4534();
      goto LABEL_21;
    case 4:
      v2 = &selRef_knots;
      goto LABEL_5;
    default:
      v2 = &selRef_milesPerHour;
LABEL_5:
      v3 = [objc_opt_self() *v2];
      sub_1C968DDBC();
      OUTLINED_FUNCTION_27_19();

      if (!v3)
      {
        if (qword_1EC3A4930 != -1)
        {
          OUTLINED_FUNCTION_18_32();
        }

        v4 = qword_1EC3A8478;
        switch(v1)
        {
          case 1:
            v16 = objc_opt_self();
            v17 = v4;
            v7 = [v16 kilometersPerHour];
            goto LABEL_19;
          case 2:
            v11 = objc_opt_self();
            v12 = v4;
            v7 = [v11 metersPerSecond];
            goto LABEL_19;
          case 3:
            v13 = qword_1EDB77D10;
            v14 = qword_1EC3A8478;
            if (v13 != -1)
            {
              OUTLINED_FUNCTION_4_68();
            }

            v15 = qword_1EDB77D18;
            goto LABEL_20;
          case 4:
            v9 = objc_opt_self();
            v10 = v4;
            v7 = [v9 knots];
            goto LABEL_19;
          default:
            v5 = objc_opt_self();
            v6 = v4;
            v7 = [v5 milesPerHour];
LABEL_19:
            v15 = v7;
LABEL_20:
            v18 = v15;
            v8 = [v4 stringFromUnit_];

            sub_1C96A7024();
            break;
        }

LABEL_21:
        OUTLINED_FUNCTION_27_19();
      }

      return OUTLINED_FUNCTION_11();
  }
}

uint64_t sub_1C968DDBC()
{
  v0 = sub_1C96A4C14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A86D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  sub_1C946B5D0(0, &qword_1EC3A8548);
  sub_1C96A4254();
  sub_1C96A4BC4();
  v8 = NSDimension.formattedUnit(width:locale:)(v7, v3);
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t UnitConfiguration.Distance.description.getter()
{
  if (*v0 == 1)
  {
    OUTLINED_FUNCTION_8_51();
    if (!v1)
    {
      OUTLINED_FUNCTION_0_2();
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_51();
    if (!v1)
    {
      OUTLINED_FUNCTION_0_2();
    }
  }

  OUTLINED_FUNCTION_14_14(qword_1EDB94A58);
  OUTLINED_FUNCTION_35_10();
  OUTLINED_FUNCTION_3_61();
  sub_1C96A4534();
  OUTLINED_FUNCTION_40_11();
  return OUTLINED_FUNCTION_4_4();
}

uint64_t UnitConfiguration.Precipitation.description.getter()
{
  if (*v0)
  {
    OUTLINED_FUNCTION_8_51();
    if (!v1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v2 = qword_1EDB94A58;
    OUTLINED_FUNCTION_3_61();
  }

  else
  {
    OUTLINED_FUNCTION_8_51();
    if (!v1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    OUTLINED_FUNCTION_14_14(qword_1EDB94A58);
    OUTLINED_FUNCTION_35_10();
    OUTLINED_FUNCTION_3_61();
  }

  sub_1C96A4534();
  OUTLINED_FUNCTION_40_11();
  return OUTLINED_FUNCTION_4_4();
}

uint64_t UnitConfiguration.Pressure.description.getter()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_8_51();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      goto LABEL_16;
    case 2:
      OUTLINED_FUNCTION_8_51();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_2();
      }

LABEL_16:
      OUTLINED_FUNCTION_14_14(qword_1EDB94A58);
      OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_26_18();
      goto LABEL_17;
    case 3:
      OUTLINED_FUNCTION_8_51();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      goto LABEL_4;
    case 4:
      OUTLINED_FUNCTION_8_51();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      OUTLINED_FUNCTION_21_11(qword_1EDB94A58);
      OUTLINED_FUNCTION_11_41();
LABEL_17:
      OUTLINED_FUNCTION_3_61();
      break;
    default:
      OUTLINED_FUNCTION_8_51();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_2();
      }

LABEL_4:
      OUTLINED_FUNCTION_21_11(qword_1EDB94A58);
      OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_3_61();
      break;
  }

  sub_1C96A4534();
  OUTLINED_FUNCTION_40_11();
  return OUTLINED_FUNCTION_4_4();
}

uint64_t UnitConfiguration.Temperature.description.getter()
{
  if (*v0 == 1)
  {
    OUTLINED_FUNCTION_8_51();
    if (!v1)
    {
      OUTLINED_FUNCTION_0_2();
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_51();
    if (!v1)
    {
      OUTLINED_FUNCTION_0_2();
    }
  }

  OUTLINED_FUNCTION_14_14(qword_1EDB94A58);
  OUTLINED_FUNCTION_35_10();
  OUTLINED_FUNCTION_3_61();
  sub_1C96A4534();
  OUTLINED_FUNCTION_40_11();
  return OUTLINED_FUNCTION_4_4();
}

uint64_t UnitConfiguration.WindSpeed.description.getter()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_8_51();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      goto LABEL_16;
    case 2:
      OUTLINED_FUNCTION_8_51();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_2();
      }

LABEL_16:
      OUTLINED_FUNCTION_14_14(qword_1EDB94A58);
      OUTLINED_FUNCTION_17_38();
      OUTLINED_FUNCTION_26_18();
      goto LABEL_17;
    case 3:
      OUTLINED_FUNCTION_8_51();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      OUTLINED_FUNCTION_21_11(qword_1EDB94A58);
      OUTLINED_FUNCTION_17_38();
      OUTLINED_FUNCTION_3_61();
      goto LABEL_18;
    case 4:
      OUTLINED_FUNCTION_8_51();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      OUTLINED_FUNCTION_21_11(qword_1EDB94A58);
      OUTLINED_FUNCTION_3_61();
      goto LABEL_18;
    default:
      OUTLINED_FUNCTION_8_51();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      OUTLINED_FUNCTION_21_11(qword_1EDB94A58);
      OUTLINED_FUNCTION_17_38();
      OUTLINED_FUNCTION_20_32();
LABEL_17:
      OUTLINED_FUNCTION_3_61();
LABEL_18:
      sub_1C96A4534();
      OUTLINED_FUNCTION_40_11();
      return OUTLINED_FUNCTION_4_4();
  }
}

uint64_t UnitConfiguration.WindSpeed.accessibilityDescription.getter()
{
  switch(*v0)
  {
    case 1:
      if (qword_1EDB7AB08 != -1)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    case 2:
      if (qword_1EDB7AB08 != -1)
      {
LABEL_12:
        OUTLINED_FUNCTION_0_2();
      }

LABEL_9:
      OUTLINED_FUNCTION_14_14(qword_1EDB94A58);
      OUTLINED_FUNCTION_33_13();
      OUTLINED_FUNCTION_26_18();
      goto LABEL_10;
    case 3:
    case 4:
      return UnitConfiguration.WindSpeed.description.getter();
    default:
      if (qword_1EDB7AB08 != -1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      OUTLINED_FUNCTION_21_11(qword_1EDB94A58);
      OUTLINED_FUNCTION_33_13();
      OUTLINED_FUNCTION_20_32();
LABEL_10:
      OUTLINED_FUNCTION_3_61();
      sub_1C96A4534();
      OUTLINED_FUNCTION_40_11();
      return OUTLINED_FUNCTION_4_4();
  }
}

uint64_t NSDimension.formattedUnit(width:locale:)(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v61 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5900);
  OUTLINED_FUNCTION_1();
  v68 = v4;
  v69 = v3;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_90();
  v66 = v6;
  v67 = sub_1C96A44F4();
  OUTLINED_FUNCTION_1();
  v65 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v63 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8520);
  OUTLINED_FUNCTION_1();
  v59 = v11;
  v60 = v12;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_90();
  v56 = v14;
  v15 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8528);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8530);
  OUTLINED_FUNCTION_1();
  v53 = v19;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_28_2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8538);
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v52 - v28;
  v62 = sub_1C96A4524();
  OUTLINED_FUNCTION_1();
  v58 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_14();
  v34 = v33 - v32;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8540);
  OUTLINED_FUNCTION_1();
  v57 = v35;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C946B5D0(0, &qword_1EC3A8548);
  v37 = v55;
  sub_1C96A4214();
  sub_1C96A45F4();
  sub_1C96A4B74();
  sub_1C968F8C0();
  sub_1C96A45E4();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8550);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v38);
  sub_1C96A4124();
  sub_1C94BE204(v18, &qword_1EC3A8528);
  (*(v53 + 8))(v2, v54);
  sub_1C96A4244();
  v39 = *(v23 + 8);
  v39(v26, v21);
  v40 = v56;
  sub_1C96A4234();
  v39(v29, v21);
  sub_1C9469CB4(&qword_1EC3A8558, &qword_1EC3A8520);
  v41 = v40;
  v42 = v52;
  v43 = v59;
  sub_1C96A4274();
  (*(v60 + 8))(v41, v43);
  v44 = v63;
  sub_1C96A4514();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_12_41();
  sub_1C9690830(v45, v46);
  v47 = v66;
  sub_1C96A4504();

  (*(v65 + 8))(v44, v67);
  v71 = v34;
  v48 = sub_1C955F490(sub_1C968F914, v70);
  (*(v68 + 8))(v47, v69);
  if (*(v48 + 16))
  {
    sub_1C96A53C4();
  }

  v49 = OUTLINED_FUNCTION_28_22();
  v50(v49, v42);
  (*(v58 + 8))(v34, v62);
  return OUTLINED_FUNCTION_4_4();
}

uint64_t sub_1C968F088(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_1C9690830(&qword_1EC3A8560, MEMORY[0x1E6968438]);

  return MEMORY[0x1EEDC3C08](v2, v3);
}

uint64_t sub_1C968F0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a2;
  v45 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A86A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v36 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58F0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v36 - v6;
  v7 = sub_1C96A44D4();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A4494();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A86A8);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A86B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v36 - v21;
  (*(v10 + 104))(&v36 - v21, *MEMORY[0x1E69683F0], v9, v20);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v9);
  v23 = *(v13 + 56);
  v43 = a1;
  sub_1C96907CC(a1, v15, &qword_1EC3A86B0);
  sub_1C96907CC(v22, &v15[v23], &qword_1EC3A86B0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v9) != 1)
  {
    sub_1C96907CC(v15, v18, &qword_1EC3A86B0);
    if (__swift_getEnumTagSinglePayload(&v15[v23], 1, v9) != 1)
    {
      v26 = v36;
      (*(v10 + 32))(v36, &v15[v23], v9);
      sub_1C9690830(&qword_1EC3A86C0, MEMORY[0x1E6968400]);
      v27 = sub_1C96A6F94();
      v28 = *(v10 + 8);
      v28(v26, v9);
      sub_1C94BE204(v22, &qword_1EC3A86B0);
      v28(v18, v9);
      result = sub_1C94BE204(v15, &qword_1EC3A86B0);
      if (v27)
      {
        goto LABEL_9;
      }

LABEL_7:
      v25 = v45;
      *v45 = 0;
      v25[1] = 0;
      return result;
    }

    sub_1C94BE204(v22, &qword_1EC3A86B0);
    (*(v10 + 8))(v18, v9);
LABEL_6:
    result = sub_1C94BE204(v15, &qword_1EC3A86A8);
    goto LABEL_7;
  }

  sub_1C94BE204(v22, &qword_1EC3A86B0);
  if (__swift_getEnumTagSinglePayload(&v15[v23], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_1C94BE204(v15, &qword_1EC3A86B0);
LABEL_9:
  v29 = v37;
  sub_1C96A44C4();
  v30 = v42;
  sub_1C96907CC(v43, v42, &qword_1EC3A58F0);
  v31 = *(v40 + 48);
  sub_1C96A44E4();
  (*(v38 + 8))(v29, v39);
  v32 = sub_1C96A7094();
  v34 = v33;
  sub_1C94BE204(v30 + v31, &qword_1EC3A86B8);
  result = sub_1C94BE204(v30, &qword_1EC3A86B0);
  v35 = v45;
  *v45 = v32;
  v35[1] = v34;
  return result;
}

uint64_t UnitConfiguration.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C96AEF50;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001C96D90B0;
  if (qword_1EDB799D0 != -1)
  {
    swift_once();
  }

  v3 = MEMORY[0x1E69E6158];
  *(inited + 48) = sub_1C96A6EE4();
  *(inited + 56) = v4;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x80000001C96D90D0;
  if (qword_1EC3A4928 != -1)
  {
    swift_once();
  }

  v5 = sub_1C96A6EE4();
  *(inited + 120) = v3;
  *(inited + 96) = v5;
  *(inited + 104) = v6;
  OUTLINED_FUNCTION_4_4();
  sub_1C96A6F04();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8568);
  a1[4] = sub_1C9469CB4(qword_1EDB7AD08, &qword_1EC3A8568);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1C96A53B4();
}

uint64_t sub_1C968F884()
{
  sub_1C9690628();

  return sub_1C96A53A4();
}

unint64_t sub_1C968F8C0()
{
  result = qword_1EDB77D88;
  if (!qword_1EDB77D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB77D88);
  }

  return result;
}

unint64_t sub_1C968FA88()
{
  result = qword_1EC3A85C0;
  if (!qword_1EC3A85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A85C0);
  }

  return result;
}

unint64_t sub_1C968FAE0()
{
  result = qword_1EC3A85C8;
  if (!qword_1EC3A85C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A85C8);
  }

  return result;
}

unint64_t sub_1C968FB38()
{
  result = qword_1EC3A85D0;
  if (!qword_1EC3A85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A85D0);
  }

  return result;
}

unint64_t sub_1C968FB90()
{
  result = qword_1EC3A85D8;
  if (!qword_1EC3A85D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A85D8);
  }

  return result;
}

unint64_t sub_1C968FBE8()
{
  result = qword_1EC3A85E0;
  if (!qword_1EC3A85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A85E0);
  }

  return result;
}

unint64_t sub_1C968FC40()
{
  result = qword_1EC3A85E8;
  if (!qword_1EC3A85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A85E8);
  }

  return result;
}

unint64_t sub_1C968FC98()
{
  result = qword_1EDB799A8;
  if (!qword_1EDB799A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB799A8);
  }

  return result;
}

unint64_t sub_1C968FCF0()
{
  result = qword_1EDB7C338;
  if (!qword_1EDB7C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C338);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfiguredUnit(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 65284 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65284 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65285;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = v6 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfiguredUnit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
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
    v6 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = -a2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C968FF00(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_43(a1);
}

_BYTE *sub_1C968FF4C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C968FFFC()
{
  result = qword_1EC3A85F0;
  if (!qword_1EC3A85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A85F0);
  }

  return result;
}

unint64_t sub_1C9690054()
{
  result = qword_1EC3A85F8;
  if (!qword_1EC3A85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A85F8);
  }

  return result;
}

unint64_t sub_1C96900AC()
{
  result = qword_1EC3A8600;
  if (!qword_1EC3A8600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8600);
  }

  return result;
}

unint64_t sub_1C9690104()
{
  result = qword_1EC3A8608;
  if (!qword_1EC3A8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8608);
  }

  return result;
}

unint64_t sub_1C969015C()
{
  result = qword_1EC3A8610;
  if (!qword_1EC3A8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8610);
  }

  return result;
}

unint64_t sub_1C96901B4()
{
  result = qword_1EC3A8618;
  if (!qword_1EC3A8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8618);
  }

  return result;
}

unint64_t sub_1C969020C()
{
  result = qword_1EC3A8620;
  if (!qword_1EC3A8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8620);
  }

  return result;
}

unint64_t sub_1C9690264()
{
  result = qword_1EC3A8628;
  if (!qword_1EC3A8628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8628);
  }

  return result;
}

unint64_t sub_1C96902BC()
{
  result = qword_1EC3A8630;
  if (!qword_1EC3A8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8630);
  }

  return result;
}

unint64_t sub_1C9690314()
{
  result = qword_1EC3A8638;
  if (!qword_1EC3A8638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8638);
  }

  return result;
}

unint64_t sub_1C969036C()
{
  result = qword_1EC3A8640;
  if (!qword_1EC3A8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8640);
  }

  return result;
}

unint64_t sub_1C96903C4()
{
  result = qword_1EC3A8648;
  if (!qword_1EC3A8648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8648);
  }

  return result;
}

unint64_t sub_1C969041C()
{
  result = qword_1EC3A8650;
  if (!qword_1EC3A8650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8650);
  }

  return result;
}

unint64_t sub_1C9690474()
{
  result = qword_1EC3A8658;
  if (!qword_1EC3A8658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8658);
  }

  return result;
}

unint64_t sub_1C96904CC()
{
  result = qword_1EC3A8660;
  if (!qword_1EC3A8660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8660);
  }

  return result;
}

unint64_t sub_1C9690524()
{
  result = qword_1EC3A8668;
  if (!qword_1EC3A8668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8668);
  }

  return result;
}

unint64_t sub_1C969057C()
{
  result = qword_1EC3A8670;
  if (!qword_1EC3A8670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8670);
  }

  return result;
}

unint64_t sub_1C96905D4()
{
  result = qword_1EC3A8678;
  if (!qword_1EC3A8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8678);
  }

  return result;
}

unint64_t sub_1C9690628()
{
  result = qword_1EDB7C340;
  if (!qword_1EDB7C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C340);
  }

  return result;
}

unint64_t sub_1C969067C()
{
  result = qword_1EC3A8680;
  if (!qword_1EC3A8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8680);
  }

  return result;
}

unint64_t sub_1C96906D0()
{
  result = qword_1EC3A8688;
  if (!qword_1EC3A8688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8688);
  }

  return result;
}

unint64_t sub_1C9690724()
{
  result = qword_1EC3A8690;
  if (!qword_1EC3A8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8690);
  }

  return result;
}

unint64_t sub_1C9690778()
{
  result = qword_1EC3A8698;
  if (!qword_1EC3A8698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8698);
  }

  return result;
}

uint64_t sub_1C96907CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C9690830(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_39_11()
{

  return sub_1C96A78B4();
}

void __swiftcall WeatherMenuConfiguration.init(refresh:analytics:)(WeatherCore::WeatherMenuConfiguration *__return_ptr retstr, WeatherCore::WeatherMenuRefreshConfiguration_optional *refresh, WeatherCore::WeatherMenuAnalyticsConfiguration_optional analytics)
{
  v5 = **&analytics.value.enableEvents;
  if (refresh->is_nil)
  {
    v6 = xmmword_1C96B5090;
    v7 = xmmword_1C96B5080;
    maximumTimeSourceOffsetJitter = 60.0;
  }

  else
  {
    maximumTimeSourceOffsetJitter = refresh->value.maximumTimeSourceOffsetJitter;
    v7 = *&refresh->value.minimumIntervalForRefreshWithFetch;
    v6 = *&refresh->value.refreshFromCacheInterval;
  }

  v3.i64[0] = 2;
  v4.i64[0] = **&analytics.value.enableEvents;
  v9 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v4, v3).i64[0], 0), xmmword_1C96B50A0, *(*&analytics.value.enableEvents + 8));
  *&retstr->refresh.minimumIntervalForRefreshWithFetch = v7;
  *&retstr->refresh.refreshFromCacheInterval = v6;
  retstr->refresh.maximumTimeSourceOffsetJitter = maximumTimeSourceOffsetJitter;
  retstr->analytics.enableEvents = (v5 != 2) & v5;
  if (v5 == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = BYTE1(v5) & 1;
  }

  retstr->analytics.allowLaunchEventForNonDnuUsers = v10;
  *&retstr->analytics.minimumIntervalForFlush = v9;
}

double WeatherMenuConfiguration.refresh.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

__n128 WeatherMenuConfiguration.analytics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1[2].n128_u8[9];
  *a1 = v1[2].n128_u8[8];
  *(a1 + 1) = v2;
  result = v1[3];
  *(a1 + 8) = result;
  return result;
}

uint64_t WeatherMenuConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A86E0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = *(v3 + 4);
  v12 = *(v3 + 40);
  v17 = *(v3 + 41);
  v13 = *(v3 + 6);
  v14 = *(v3 + 7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947C128();
  sub_1C96A7F54();
  v15 = *v3;
  v20 = v3[1];
  v19 = v15;
  v21 = v11;
  v18 = 0;
  sub_1C9690C80();
  OUTLINED_FUNCTION_0_112();
  if (!v2)
  {
    LOBYTE(v19) = v12;
    BYTE1(v19) = v17;
    *(&v19 + 1) = v13;
    *&v20 = v14;
    v18 = 1;
    sub_1C9690CD4();
    OUTLINED_FUNCTION_0_112();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C9690AF4()
{
  v0 = sub_1C96A7BE4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9690B6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9690AF4();
  *a1 = result;
  return result;
}

uint64_t sub_1C9690B9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9481F48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C9690BC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9690AF4();
  *a1 = result;
  return result;
}

uint64_t sub_1C9690BF0(uint64_t a1)
{
  v2 = sub_1C947C128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9690C2C(uint64_t a1)
{
  v2 = sub_1C947C128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C9690C80()
{
  result = qword_1EDB7FBA8;
  if (!qword_1EDB7FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBA8);
  }

  return result;
}

unint64_t sub_1C9690CD4()
{
  result = qword_1EDB7FB80;
  if (!qword_1EDB7FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FB80);
  }

  return result;
}

uint64_t sub_1C9690D2C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 64))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
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

unint64_t sub_1C9690D7C()
{
  result = qword_1EC3A86E8;
  if (!qword_1EC3A86E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A86E8);
  }

  return result;
}

uint64_t NotificationStore.deliverySchedules.getter()
{
  sub_1C96A5534();
  OUTLINED_FUNCTION_3_62();
  if (v0)
  {
    swift_willThrow();
  }

  return OUTLINED_FUNCTION_2_81();
}

uint64_t NotificationStore.incomingMessages.getter()
{
  sub_1C96A5534();
  OUTLINED_FUNCTION_3_62();
  if (v0)
  {
    swift_willThrow();
  }

  return OUTLINED_FUNCTION_2_81();
}

uint64_t NotificationStore.weatherAlerts.getter()
{
  sub_1C96A5534();
  OUTLINED_FUNCTION_3_62();
  if (v0)
  {
    swift_willThrow();
  }

  return OUTLINED_FUNCTION_2_81();
}

uint64_t NotificationStore.severeNotifications.getter()
{
  sub_1C96A5534();
  OUTLINED_FUNCTION_3_62();
  if (v0)
  {
    swift_willThrow();
  }

  return OUTLINED_FUNCTION_2_81();
}

uint64_t NotificationStore.fetchSchedules.getter()
{
  sub_1C96A5534();
  OUTLINED_FUNCTION_3_62();
  if (v0)
  {
    swift_willThrow();
  }

  return OUTLINED_FUNCTION_2_81();
}

uint64_t static NotificationStore.preferredCacheSize.getter@<X0>(void *a1@<X8>)
{
  *a1 = 32;
  v2 = *MEMORY[0x1E69D6298];
  sub_1C96A64E4();
  OUTLINED_FUNCTION_8_1();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t NotificationStore.__allocating_init(database:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  NotificationStore.init(database:)(a1, a2);
  return v4;
}

uint64_t NotificationStore.subscriptions.getter()
{
  sub_1C96A5534();
  OUTLINED_FUNCTION_3_62();
  if (v0)
  {
    swift_willThrow();
  }

  return OUTLINED_FUNCTION_2_81();
}

uint64_t NotificationStore.fetchResults.getter()
{
  sub_1C96A5534();
  OUTLINED_FUNCTION_3_62();
  if (v0)
  {
    swift_willThrow();
  }

  return OUTLINED_FUNCTION_2_81();
}

uint64_t NotificationStore.periodicWeatherAlerts.getter()
{
  sub_1C96A5534();
  OUTLINED_FUNCTION_3_62();
  if (v0)
  {
    swift_willThrow();
  }

  return OUTLINED_FUNCTION_2_81();
}

uint64_t NotificationStore.deinit()
{
  sub_1C96A3D04();
  sub_1C96A5534();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A86F0);
  sub_1C96A55F4();
  sub_1C9691560(v2, v3);
  if (v4)
  {
    sub_1C96A64A4();
  }

  return v0;
}

uint64_t NotificationStore.__deallocating_deinit()
{
  NotificationStore.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

void *NotificationStore.init(database:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C96A5174();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1C96915C8();
  sub_1C96A3D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5350);
  sub_1C94B7650();
  OUTLINED_FUNCTION_0_113();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A86F8);
  OUTLINED_FUNCTION_23();
  v3[10] = OUTLINED_FUNCTION_1_83();
  swift_retain_n();
  OUTLINED_FUNCTION_0_113();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8700);
  OUTLINED_FUNCTION_23();
  v3[2] = OUTLINED_FUNCTION_1_83();
  OUTLINED_FUNCTION_5_57();
  OUTLINED_FUNCTION_0_113();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8708);
  OUTLINED_FUNCTION_23();
  v3[3] = OUTLINED_FUNCTION_1_83();
  OUTLINED_FUNCTION_5_57();
  OUTLINED_FUNCTION_0_113();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8710);
  OUTLINED_FUNCTION_23();
  v3[4] = OUTLINED_FUNCTION_1_83();
  OUTLINED_FUNCTION_5_57();
  OUTLINED_FUNCTION_0_113();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8718);
  OUTLINED_FUNCTION_23();
  v3[5] = OUTLINED_FUNCTION_1_83();
  OUTLINED_FUNCTION_5_57();
  OUTLINED_FUNCTION_0_113();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8720);
  OUTLINED_FUNCTION_23();
  v3[6] = OUTLINED_FUNCTION_1_83();
  OUTLINED_FUNCTION_5_57();
  OUTLINED_FUNCTION_0_113();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8728);
  OUTLINED_FUNCTION_23();
  v3[7] = OUTLINED_FUNCTION_1_83();
  OUTLINED_FUNCTION_5_57();
  OUTLINED_FUNCTION_0_113();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8730);
  OUTLINED_FUNCTION_23();
  v3[8] = OUTLINED_FUNCTION_1_83();
  OUTLINED_FUNCTION_5_57();
  OUTLINED_FUNCTION_0_113();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8738);
  OUTLINED_FUNCTION_23();
  v8 = OUTLINED_FUNCTION_1_83();

  v3[9] = v8;
  return v3;
}

void sub_1C9691560(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1C969156C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_1C96915C8()
{
  result = qword_1EDB7D098;
  if (!qword_1EDB7D098)
  {
    sub_1C96A5174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D098);
  }

  return result;
}

void sub_1C9691660(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8758);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8760);
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  sub_1C96A5534();
  v10 = v34;
  if (v35)
  {
    swift_willThrow();
  }

  else
  {
    v29 = v4;
    sub_1C95C145C();
    v11 = sub_1C96A64B4();
    if (!v1)
    {
      v27 = v11;
      v28 = a1;
      v26 = sub_1C96A6324();
      v12 = sub_1C95C1408();
      sub_1C96A6384();
      v34 = v9;
      v13 = sub_1C95C13B4();
      sub_1C96A6384();
      v35 = v6;
      v32 = &type metadata for SubscriptionEntity_005;
      v33 = &type metadata for SubscriptionEntity_004;
      v30 = v12;
      v31 = v13;
      sub_1C96A6394();

      sub_1C9691560(v10, 0);
      (*(v29 + 8))(v6, v3);
      (*(v36 + 8))(v9, v7);
      v25 = v28;
      *v28 = v27;
      *(v25 + 8) = 0;
      return;
    }

    sub_1C9691560(v10, 0);
    v10 = v1;
  }

  v14 = v10;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v15 = sub_1C96A6154();
  __swift_project_value_buffer(v15, qword_1EDB7AC90);
  v16 = v10;
  v17 = sub_1C96A6134();
  v18 = sub_1C96A7694();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = v20;
    *v19 = 136446210;
    v32 = v10;
    v21 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v22 = sub_1C96A70A4();
    v24 = sub_1C9484164(v22, v23, &v34);

    *(v19 + 4) = v24;

    _os_log_impl(&dword_1C945E000, v17, v18, "Failed to migrate Subscription_004 to Subscription_005: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1CCA8E3D0](v20, -1, -1);
    MEMORY[0x1CCA8E3D0](v19, -1, -1);
  }

  else
  {
  }

  *a1 = v10;
  *(a1 + 8) = 1;
}

double sub_1C9691B2C@<D0>(uint64_t a1@<X8>)
{
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C95BC3F8();
  *a1 = v3;
  *(a1 + 16) = v4;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

double sub_1C9691BD8@<D0>(uint64_t a1@<X8>)
{
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C95BC944();
  *a1 = v3;
  *(a1 + 16) = v4;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1C9691D7C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C96A6504();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D62C0], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_1C96A6534();
  return (*(v5 + 8))(v8, v3);
}

void sub_1C9691EE0(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8748);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - v5;
  sub_1C96A5534();
  v7 = v25;
  if (v26)
  {
    swift_willThrow();
  }

  else
  {
    sub_1C95041F8();
    v8 = sub_1C96A64B4();
    if (!v1)
    {
      v9 = v8;
      v24[0] = a1;
      sub_1C96A6324();
      v10 = sub_1C95041A4();
      sub_1C96A6384();
      v25 = v6;
      v27 = &type metadata for SevereNotificationEntity_006;
      v24[1] = v10;
      sub_1C96A6394();

      sub_1C9691560(v7, 0);
      (*(v4 + 8))(v6, v3);
      v23 = v24[0];
      *v24[0] = v9;
      *(v23 + 8) = 0;
      return;
    }

    sub_1C9691560(v7, 0);
    v7 = v1;
  }

  v11 = v7;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v12 = sub_1C96A6154();
  __swift_project_value_buffer(v12, qword_1EDB7AC90);
  v13 = v7;
  v14 = sub_1C96A6134();
  v15 = sub_1C96A7694();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136446210;
    v27 = v7;
    v18 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v19 = sub_1C96A70A4();
    v21 = a1;
    v22 = sub_1C9484164(v19, v20, &v25);

    *(v16 + 4) = v22;
    a1 = v21;

    _os_log_impl(&dword_1C945E000, v14, v15, "Failed to migrate SevereNotificationEntity table: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1CCA8E3D0](v17, -1, -1);
    MEMORY[0x1CCA8E3D0](v16, -1, -1);
  }

  else
  {
  }

  *a1 = v7;
  *(a1 + 8) = 1;
}

void *sub_1C9692298@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_1C95033BC(__dst, __srca);
  sub_1C94FD7EC(v12, v4, v5, v6, v7, v8, v9, v10, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11]);
  return memcpy(a2, __srca, 0x70uLL);
}

void sub_1C969231C(void (*a1)(uint64_t)@<X1>, const char *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_1C96A5534();
  if (v21)
  {
    swift_willThrow();
    v7 = v20;
    v8 = v20;
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v9 = sub_1C96A6154();
    __swift_project_value_buffer(v9, qword_1EDB7AC90);
    v10 = v20;
    v11 = sub_1C96A6134();
    v12 = sub_1C96A7684();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136446210;
      v15 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
      v16 = sub_1C96A70A4();
      v18 = sub_1C9484164(v16, v17, &v20);

      *(v13 + 4) = v18;

      _os_log_impl(&dword_1C945E000, v11, v12, a2, v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1CCA8E3D0](v14, -1, -1);
      MEMORY[0x1CCA8E3D0](v13, -1, -1);
    }

    else
    {
    }

    v19 = 1;
  }

  else
  {
    a1(v6);
    v7 = sub_1C96A64B4();
    sub_1C96A6324();
    sub_1C96A6374();
    sub_1C9691560(v20, 0);

    v19 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = v19;
}

void sub_1C96925B8(uint64_t a1@<X8>)
{
  sub_1C96A5534();
  if (v14)
  {
    swift_willThrow();
    v2 = v13;
    v3 = v13;
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v4 = sub_1C96A6154();
    __swift_project_value_buffer(v4, qword_1EDB7AC90);
    v5 = v13;
    v6 = sub_1C96A6134();
    v7 = sub_1C96A7684();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = v13;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;

      _os_log_impl(&dword_1C945E000, v6, v7, "Failed to create notifications table: %{public}@", v8, 0xCu);
      sub_1C956FEE4(v9);
      MEMORY[0x1CCA8E3D0](v9, -1, -1);
      MEMORY[0x1CCA8E3D0](v8, -1, -1);
    }

    else
    {
    }

    v12 = 1;
  }

  else
  {
    sub_1C95B85F0();
    v2 = sub_1C96A64B4();
    sub_1C96A6324();
    sub_1C96A6374();
    sub_1C9691560(v13, 0);

    v12 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v12;
}

uint64_t sub_1C96927D0()
{
  v0 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = sub_1C96A64D4();
  __swift_allocate_value_buffer(v9, qword_1EDB7C358);
  v10 = __swift_project_value_buffer(v9, qword_1EDB7C358);
  v11 = WDWeatherLibraryDirectory();
  sub_1C96A4734();

  sub_1C96A4704();
  v12 = *(v2 + 8);
  v12(v6, v0);
  v13 = sub_1C96A4744();
  v15 = v14;
  v12(v8, v0);
  *v10 = v13;
  v10[1] = v15;
  OUTLINED_FUNCTION_8_1();
  return (*(v16 + 104))(v10);
}

uint64_t static NotificationStore.location.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDB7C350 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A64D4();
  __swift_project_value_buffer(v2, qword_1EDB7C358);
  OUTLINED_FUNCTION_8_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

unint64_t sub_1C9692A74()
{
  result = qword_1EDB7BF00;
  if (!qword_1EDB7BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BF00);
  }

  return result;
}

uint64_t sub_1C9692AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a5;
  v57 = a3;
  v58 = a4;
  v56 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v10 = OUTLINED_FUNCTION_7(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v55 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B0);
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v18 = OUTLINED_FUNCTION_7(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  v27 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v20);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v20);
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D0);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  v61 = v56;
  v62 = a2;
  sub_1C96A53C4();
  sub_1C96A3D04();
  sub_1C96A6364();

  LOBYTE(v61) = a2 != 0;
  sub_1C96A6364();

  v61 = v57;
  v62 = v58;
  sub_1C96A6364();

  v50 = sub_1C96A4A54();
  v51 = *(v50 - 8);
  v52 = v59;
  v53 = v60;
  (*(v51 + 16))(v59, v60, v50);
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v50);
  sub_1C96A6364();

  (*(v51 + 8))(v53, v50);
  return v27;
}

uint64_t sub_1C9692F64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B0);
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  v16 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v9);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v9);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  return v16;
}

uint64_t sub_1C969325C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73657269707865 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C96A7DE4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C96933B0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x73736572646461;
      break;
    case 2:
      result = 0x616C696176417369;
      break;
    case 3:
      result = 0x73657269707865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9693430(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v18 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8788);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9693FC4();
  sub_1C96A7F54();
  v20 = a2;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_7_41(&qword_1EC3A4B00);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_14_36();
  if (!v5)
  {
    v20 = v18;
    v19 = 1;
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_14_36();
    v20 = a4;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D8);
    OUTLINED_FUNCTION_7_41(&qword_1EC3A54F8);
    OUTLINED_FUNCTION_35_0();
    sub_1C96A7D74();
    v20 = v17;
    v19 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
    OUTLINED_FUNCTION_7_41(&qword_1EC3A4DD8);
    OUTLINED_FUNCTION_35_0();
    sub_1C96A7D74();
  }

  return (*(v11 + 8))(v14, v9);
}

void *sub_1C9693668(uint64_t a1)
{
  v53 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8778);
  OUTLINED_FUNCTION_1();
  v51[0] = v2;
  v51[1] = v1;
  MEMORY[0x1EEE9AC00](v1);
  v54 = v51 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v5 = OUTLINED_FUNCTION_7(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B0);
  v8 = OUTLINED_FUNCTION_7(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  v51[2] = sub_1C96A6344();
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v51[3] = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D0);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v37 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v46 = v53;
  sub_1C96A6344();
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  sub_1C9693FC4();
  v47 = v52;
  sub_1C96A7F44();
  if (v47)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v46);
  }

  else
  {
    v52 = v37;
    v55 = 0;
    OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8);
    OUTLINED_FUNCTION_12_42();
    sub_1C96A7CB4();

    v46 = v56;
    v55 = 1;
    OUTLINED_FUNCTION_12_42();
    sub_1C96A7CB4();

    v55 = 2;
    OUTLINED_FUNCTION_5(&qword_1EC3A5510, &qword_1EC3A54D8);
    sub_1C96A7CB4();

    v55 = 3;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70);
    sub_1C96A7CB4();
    v49 = OUTLINED_FUNCTION_7_52();
    v50(v49);

    __swift_destroy_boxed_opaque_existential_1Tm(v53);
  }

  return v46;
}

uint64_t sub_1C9693C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C969325C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9693C74(uint64_t a1)
{
  v2 = sub_1C9693FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9693CB0(uint64_t a1)
{
  v2 = sub_1C9693FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9693D10()
{
  v0 = *a001_3;
  sub_1C96A53C4();
  return v0;
}

uint64_t sub_1C9693D48(uint64_t a1)
{
  v2 = sub_1C962D9B0();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C9693D94(uint64_t a1)
{
  v2 = sub_1C962D9B0();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C9693DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C962D9B0();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C9693E44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9692F64();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

void *sub_1C9693E70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1C9693668(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1C9693EC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C962D9B0();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C9693F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C962D9B0();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C9693F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C962D9B0();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1C9693FC4()
{
  result = qword_1EC3A8780;
  if (!qword_1EC3A8780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8780);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationAddressEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C96940F8()
{
  result = qword_1EC3A8790;
  if (!qword_1EC3A8790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8790);
  }

  return result;
}

unint64_t sub_1C9694150()
{
  result = qword_1EC3A8798;
  if (!qword_1EC3A8798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8798);
  }

  return result;
}

unint64_t sub_1C96941A8()
{
  result = qword_1EC3A87A0;
  if (!qword_1EC3A87A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A87A0);
  }

  return result;
}

WeatherCore::WeatherDataServiceConfiguration __swiftcall WeatherDataServiceConfiguration.init(wdsBucketIdentifier:)(WeatherCore::WeatherDataServiceConfiguration wdsBucketIdentifier)
{
  if (wdsBucketIdentifier.wdsBucketIdentifier._object)
  {
    countAndFlagsBits = wdsBucketIdentifier.wdsBucketIdentifier._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  object = 0xE000000000000000;
  if (wdsBucketIdentifier.wdsBucketIdentifier._object)
  {
    object = wdsBucketIdentifier.wdsBucketIdentifier._object;
  }

  *v1 = countAndFlagsBits;
  v1[1] = object;
  return wdsBucketIdentifier;
}

uint64_t static WeatherDataServiceConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C96A7DE4();
  }
}

uint64_t WeatherDataServiceConfiguration.wdsBucketIdentifier.getter()
{
  v1 = *v0;
  sub_1C96A53C4();
  return v1;
}

uint64_t WeatherDataServiceConfiguration.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A87B0);
  OUTLINED_FUNCTION_2_3();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947BEAC();
  sub_1C96A7F54();
  sub_1C96A7D24();
  return (*(v4 + 8))(v7, v1);
}

BOOL sub_1C96943AC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1C94EA210();
  *a1 = result;
  return result;
}

unint64_t sub_1C96943E0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C948BCD8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1C9694408@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1C94EA210();
  *a1 = result;
  return result;
}

uint64_t sub_1C9694434(uint64_t a1)
{
  v2 = sub_1C947BEAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9694470(uint64_t a1)
{
  v2 = sub_1C947BEAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C96944CC()
{
  result = qword_1EC3A87B8;
  if (!qword_1EC3A87B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A87B8);
  }

  return result;
}

uint64_t static IncomingMessageEntity.version.getter()
{
  swift_beginAccess();
  v0 = *a003_0;
  sub_1C96A53C4();
  return v0;
}

uint64_t static IncomingMessageEntity.version.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *a003_0 = a1;
  qword_1EC3A87C8 = a2;
}

uint64_t sub_1C9694644@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EC3A87C8;
  *a1 = *a003_0;
  a1[1] = v2;
  return sub_1C96A53C4();
}

uint64_t sub_1C9694694(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *a003_0 = v2;
  qword_1EC3A87C8 = v1;
  sub_1C96A53C4();
}

uint64_t IncomingMessageEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D50);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v39[1] = v4 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v8 = OUTLINED_FUNCTION_7(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v13 = OUTLINED_FUNCTION_7(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12_43();
  MEMORY[0x1EEE9AC00](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_4_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_9_27();
  *a1 = OUTLINED_FUNCTION_17_39();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v15 = *MEMORY[0x1E69D61F8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  (*(v17 + 104))(v11, v15, v16);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v16);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[1] = sub_1C96A6344();
  OUTLINED_FUNCTION_4_69();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[2] = OUTLINED_FUNCTION_17_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D88);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D90);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[3] = sub_1C96A6344();
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  result = sub_1C96A6344();
  a1[4] = result;
  return result;
}

uint64_t IncomingMessageEntity.init(id:messageID:channel:userInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v52 = a7;
  v53 = a8;
  v50 = a5;
  v51 = a6;
  v48 = a3;
  v49 = a4;
  v46 = a1;
  v47 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D50);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v45[1] = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v45[0] = v45 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v17 = OUTLINED_FUNCTION_7(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v22 = OUTLINED_FUNCTION_7(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12_43();
  MEMORY[0x1EEE9AC00](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_4_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_9_27();
  *a9 = OUTLINED_FUNCTION_17_39();
  sub_1C96A3D04();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v24 = *MEMORY[0x1E69D61F8];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  (*(v26 + 104))(v20, v24, v25);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v25);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a9[1] = sub_1C96A6344();
  OUTLINED_FUNCTION_4_69();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a9[2] = OUTLINED_FUNCTION_17_39();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D88);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D90);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_9_27();
  a9[3] = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v31);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v31);
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_9_27();
  a9[4] = sub_1C96A6344();
  v54 = v46;
  v55 = v47;
  sub_1C96A3D04();
  sub_1C96A6364();

  v54 = v48;
  v55 = v49;
  sub_1C96A6364();

  v54 = v50;
  v55 = v51;
  sub_1C96A6364();

  v54 = v52;
  v55 = v53;
  sub_1C96A6364();
}

uint64_t sub_1C9694E50(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x496567617373656DLL && a2 == 0xE900000000000044;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
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

uint64_t sub_1C9694FF0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 0x496567617373656DLL;
      break;
    case 3:
      result = 0x6C656E6E616863;
      break;
    case 4:
      result = 0x6F666E4972657375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9695084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9694E50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C96950AC(uint64_t a1)
{
  v2 = sub_1C9695404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C96950E8(uint64_t a1)
{
  v2 = sub_1C9695404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IncomingMessageEntity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A87D0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v24 = v1[2];
  v25 = v9;
  v22 = v1[4];
  v23 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1C9695404();
  sub_1C96A3D04();
  sub_1C96A7F54();
  v27 = v10;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_4_0();
  sub_1C9469CB4(v13, v14);
  OUTLINED_FUNCTION_7_53();
  OUTLINED_FUNCTION_88();
  if (v12)
  {

    return (*(v5 + 8))(v8, v3);
  }

  else
  {
    v21 = v5;

    v27 = v25;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v16, v17);
    OUTLINED_FUNCTION_88();
    v27 = v24;
    v26 = 2;
    OUTLINED_FUNCTION_7_53();
    OUTLINED_FUNCTION_88();
    v27 = v23;
    v26 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D90);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v18, v19);
    OUTLINED_FUNCTION_7_53();
    OUTLINED_FUNCTION_88();
    v20 = v21;
    v27 = v22;
    v26 = 4;
    OUTLINED_FUNCTION_7_53();
    OUTLINED_FUNCTION_88();
    return (*(v20 + 8))(v8, v3);
  }
}

unint64_t sub_1C9695404()
{
  result = qword_1EC3A87D8;
  if (!qword_1EC3A87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A87D8);
  }

  return result;
}

uint64_t IncomingMessageEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v71 = a1;
  v67 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A87E0);
  OUTLINED_FUNCTION_1();
  v68 = v3;
  v69 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v76 = &v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D50);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v70 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12_43();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v16 = OUTLINED_FUNCTION_7(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_9_27();
  v75 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v25 = *MEMORY[0x1E69D61F8];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  (*(v27 + 104))(v14, v25, v26);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v26);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v74 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v18);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v18);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v37 = v71;
  v38 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D88);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D90);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v73 = sub_1C96A6344();
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v55 = sub_1C96A6344();
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  sub_1C9695404();
  v56 = v72;
  sub_1C96A7F44();
  if (!v56)
  {
    v70 = v55;
    v72 = v38;
    v57 = v68;
    v77 = 0;
    OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8);
    v58 = v69;
    OUTLINED_FUNCTION_14_37();

    v75 = v78;
    v77 = 1;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70);
    v59 = v76;
    sub_1C96A7CB4();

    v74 = v78;
    v77 = 2;
    OUTLINED_FUNCTION_14_37();

    v61 = v78;
    v77 = 3;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E10, &qword_1EC3A4D90);
    OUTLINED_FUNCTION_11_42();

    v62 = v78;
    v77 = 4;
    OUTLINED_FUNCTION_11_42();
    (*(v57 + 8))(v59, v58);

    v63 = v78;
    v64 = v67;
    v65 = v74;
    *v67 = v75;
    v64[1] = v65;
    v64[2] = v61;
    v64[3] = v62;
    v64[4] = v63;
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v37);
}

unint64_t sub_1C9695AEC()
{
  result = qword_1EDB7BEE0;
  if (!qword_1EDB7BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BEE0);
  }

  return result;
}

unint64_t sub_1C9695B44()
{
  result = qword_1EDB7BEF8;
  if (!qword_1EDB7BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BEF8);
  }

  return result;
}

unint64_t sub_1C9695B9C()
{
  result = qword_1EDB7BED0;
  if (!qword_1EDB7BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BED0);
  }

  return result;
}

unint64_t sub_1C9695BF0()
{
  result = qword_1EDB7BED8;
  if (!qword_1EDB7BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BED8);
  }

  return result;
}

unint64_t sub_1C9695C48()
{
  result = qword_1EDB7BEF0;
  if (!qword_1EDB7BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BEF0);
  }

  return result;
}

unint64_t sub_1C9695CC4()
{
  result = qword_1EDB7BEE8;
  if (!qword_1EDB7BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BEE8);
  }

  return result;
}

uint64_t sub_1C9695D18(uint64_t a1)
{
  v2 = sub_1C9692A74();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C9695D64(uint64_t a1)
{
  v2 = sub_1C9692A74();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C9695DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9692A74();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C9695E48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C9692A74();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C9695E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9692A74();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C9695EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C9692A74();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

_BYTE *storeEnumTagSinglePayload for IncomingMessageEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C969603C()
{
  result = qword_1EC3A87E8;
  if (!qword_1EC3A87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A87E8);
  }

  return result;
}

unint64_t sub_1C9696094()
{
  result = qword_1EC3A87F0;
  if (!qword_1EC3A87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A87F0);
  }

  return result;
}

unint64_t sub_1C96960EC()
{
  result = qword_1EC3A87F8;
  if (!qword_1EC3A87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A87F8);
  }

  return result;
}

uint64_t ContentEnvironment.description.getter(char a1)
{
  result = 0x69746375646F7250;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x676E6967617453;
      break;
    case 3:
      result = OUTLINED_FUNCTION_1_4();
      break;
    case 4:
      result = 1953719636;
      break;
    case 5:
      result = 0x6C65766544;
      break;
    case 6:
      result = 0x6C61636F4CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C96962B0()
{
  v0 = sub_1C96A46A4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C96A4DF4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1C96A4D14();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8818);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8820);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_1C96A48C4();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = sub_1C96A48B4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
  sub_1C96A4B74();
  sub_1C96A4C84();
  sub_1C96A4DB4();
  sub_1C96A4694();
  return sub_1C96A48D4();
}

uint64_t PrecipitationNotificationContentFactory.createPrecipitationNotificationContent(from:for:with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v216 = a3;
  v240 = a1;
  v217 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8800);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_6_36(&v211[-v6]);
  v234 = type metadata accessor for PrecipitationNotification();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v218 = v8 - v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v213 = &v211[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_6_36(&v211[-v13]);
  v227 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v225 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_36(v17 - v16);
  v221 = sub_1C96A4944();
  OUTLINED_FUNCTION_1();
  v220 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_36(v21 - v20);
  v229 = type metadata accessor for PrecipitationNotificationLocalizationToken();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v211[-v27];
  MEMORY[0x1EEE9AC00](v29);
  v228 = &v211[-v30];
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v31);
  v231 = &v211[-v32];
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v211[-v34];
  sub_1C96A5DD4();
  OUTLINED_FUNCTION_1();
  v236 = v37;
  v237 = v36;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_14();
  v235 = v39 - v38;
  v40 = type metadata accessor for NotificationSubscription.Location(0);
  MEMORY[0x1EEE9AC00](v40 - 8);
  OUTLINED_FUNCTION_14();
  v43 = (v42 - v41);
  v44 = type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2();
  v230 = (v46 - v47);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v211[-v49];
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v51 = sub_1C96A6154();
  v52 = __swift_project_value_buffer(v51, qword_1EDB7AC90);
  OUTLINED_FUNCTION_6_59();
  v238 = a2;
  sub_1C96980FC(a2, v50, v53);
  v233 = v52;
  v54 = sub_1C96A6134();
  v55 = sub_1C96A76A4();
  v56 = os_log_type_enabled(v54, v55);
  v232 = v35;
  v239 = v43;
  v222 = v28;
  v226 = v25;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v58 = OUTLINED_FUNCTION_8_4();
    *&v241 = v58;
    *v57 = 141558275;
    *(v57 + 4) = 1752392040;
    *(v57 + 12) = 2081;
    v60 = *v50;
    v59 = v50[1];
    sub_1C96A53C4();
    OUTLINED_FUNCTION_2_82();
    sub_1C969815C(v50, v61);
    v62 = sub_1C9484164(v60, v59, &v241);

    *(v57 + 14) = v62;
    v35 = v232;
    _os_log_impl(&dword_1C945E000, v54, v55, "Creating notification content for subscription: %{private,mask.hash}s", v57, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    v63 = v239;
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  else
  {

    OUTLINED_FUNCTION_2_82();
    sub_1C969815C(v50, v64);
    v63 = v43;
  }

  sub_1C96980FC(v238 + *(v44 + 20), v63, type metadata accessor for NotificationSubscription.Location);
  v65 = v240;
  v66 = v234;
  v67 = v235;
  v68 = v237;
  v69 = *(v236 + 16);
  v69(v235, v240 + *(v234 + qword_1C96C9768[*(v240 + 16)]), v237);
  v70 = *(v63 + 48);
  v71 = v229;
  v69(&v35[*(v229 + 20)], v67, v68);
  v72 = *(v66 + 32);
  v73 = *(v71 + 24);
  sub_1C96A5CB4();
  OUTLINED_FUNCTION_6();
  (*(v74 + 16))(&v35[v73], v65 + v72);
  v75 = *(v65 + 16);
  v214 = v70;
  *v35 = v70;
  v35[*(v71 + 28)] = v75;
  OUTLINED_FUNCTION_1_84();
  v76 = v231;
  sub_1C96980FC(v35, v231, v77);
  OUTLINED_FUNCTION_6_59();
  v78 = v230;
  sub_1C96980FC(v238, v230, v79);
  v80 = sub_1C96A6134();
  v81 = sub_1C96A76A4();
  v82 = v35;
  if (OUTLINED_FUNCTION_30_0(v81))
  {
    v83 = OUTLINED_FUNCTION_8_4();
    v229 = swift_slowAlloc();
    *&v241 = v229;
    *v83 = 136446723;
    OUTLINED_FUNCTION_1_84();
    v212 = v81;
    v84 = v228;
    sub_1C96980FC(v76, v228, v85);
    v86 = _s11WeatherCore42PrecipitationNotificationLocalizationTokenV11descriptionSSvg_0();
    v88 = v87;
    sub_1C969815C(v84, type metadata accessor for PrecipitationNotificationLocalizationToken);
    v89 = v239;
    sub_1C969815C(v76, type metadata accessor for PrecipitationNotificationLocalizationToken);
    v90 = sub_1C9484164(v86, v88, &v241);

    *(v83 + 4) = v90;
    *(v83 + 12) = 2160;
    *(v83 + 14) = 1752392040;
    *(v83 + 22) = 2081;
    v91 = *v78;
    v92 = v78[1];
    sub_1C96A53C4();
    OUTLINED_FUNCTION_2_82();
    sub_1C969815C(v78, v93);
    v94 = sub_1C9484164(v91, v92, &v241);

    *(v83 + 24) = v94;
    _os_log_impl(&dword_1C945E000, v80, v212, "Constructed notification localization token: %{public}s for subscription: %{private,mask.hash}s", v83, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_12_5();
  }

  else
  {

    OUTLINED_FUNCTION_2_82();
    sub_1C969815C(v78, v95);
    OUTLINED_FUNCTION_0_114();
    sub_1C969815C(v76, v96);
    v89 = v239;
  }

  v97 = sub_1C969792C(v89, v240);
  v99 = v98;
  v100 = v234;
  if (qword_1EC3A4688 != -1)
  {
    swift_once();
  }

  *&v241 = 0x2D656C746974;
  *(&v241 + 1) = 0xE600000000000000;
  v101 = _s11WeatherCore42PrecipitationNotificationLocalizationTokenV11descriptionSSvg_0();
  MEMORY[0x1CCA8CB00](v101);

  v102 = v241;
  OUTLINED_FUNCTION_19_32();
  v103 = sub_1C94C9408(v102, *(&v102 + 1), qword_1EC3C3D30);
  v105 = v104;

  if (!v105)
  {
    swift_endAccess();

    OUTLINED_FUNCTION_1_84();
    v118 = v226;
    sub_1C96980FC(v82, v226, v119);
    v120 = sub_1C96A6134();
    v121 = sub_1C96A7684();
    v122 = v82;
    if (OUTLINED_FUNCTION_30_0(v121))
    {
      v123 = swift_slowAlloc();
      v124 = OUTLINED_FUNCTION_8_4();
      v244[0] = v124;
      *v123 = 136446210;
      *&v241 = 0x2D656C746974;
      *(&v241 + 1) = 0xE600000000000000;
      v125 = _s11WeatherCore42PrecipitationNotificationLocalizationTokenV11descriptionSSvg_0();
      MEMORY[0x1CCA8CB00](v125);

      v126 = v241;
      OUTLINED_FUNCTION_0_114();
      sub_1C969815C(v118, v127);
      v128 = sub_1C9484164(v126, *(&v126 + 1), v244);

      *(v123 + 4) = v128;
      _os_log_impl(&dword_1C945E000, v120, v121, "Unable to find localized string for token: %{public}s", v123, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v124);
      OUTLINED_FUNCTION_12_5();
LABEL_23:
      OUTLINED_FUNCTION_26();

LABEL_25:
      v139 = v239;
      sub_1C96980A8();
      swift_allocError();
      *v140 = 0;
LABEL_53:
      swift_willThrow();
LABEL_54:
      OUTLINED_FUNCTION_0_114();
      sub_1C969815C(v122, v183);
      (*(v236 + 8))(v235, v237);
      OUTLINED_FUNCTION_5_58();
      return sub_1C969815C(v139, v184);
    }

LABEL_24:

    OUTLINED_FUNCTION_0_114();
    sub_1C969815C(v118, v138);
    goto LABEL_25;
  }

  v231 = v103;
  swift_endAccess();
  if (qword_1EC3A4690 != -1)
  {
    swift_once();
  }

  v106 = v232;
  v107 = sub_1C95590E0();
  v109 = v108;
  OUTLINED_FUNCTION_19_32();
  v110 = sub_1C94C9408(v107, v109, qword_1EC3C3D38);
  v112 = v111;

  if (!v112)
  {
    swift_endAccess();

    OUTLINED_FUNCTION_1_84();
    v118 = v222;
    sub_1C96980FC(v106, v222, v129);
    v120 = sub_1C96A6134();
    v130 = sub_1C96A7684();
    v122 = v106;
    if (OUTLINED_FUNCTION_30_0(v130))
    {
      v131 = swift_slowAlloc();
      v132 = OUTLINED_FUNCTION_8_4();
      *&v241 = v132;
      *v131 = 136446210;
      v133 = sub_1C95590E0();
      v135 = v134;
      OUTLINED_FUNCTION_0_114();
      sub_1C969815C(v118, v136);
      v137 = sub_1C9484164(v133, v135, &v241);

      *(v131 + 4) = v137;
      _os_log_impl(&dword_1C945E000, v120, v130, "Unable to find localized string for token: %{public}s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v132);
      OUTLINED_FUNCTION_12_5();
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  swift_endAccess();
  v230 = v110;
  *&v241 = v110;
  *(&v241 + 1) = v112;
  v244[0] = 0x454D49545F5441;
  v244[1] = 0xE700000000000000;
  sub_1C946DFF0();
  if (sub_1C96A79A4())
  {
    type metadata accessor for Location();
    v113 = v219;
    sub_1C96962B0();
    Date.hour(timeZone:formatStyle:)();
    v115 = v114;
    (*(v220 + 8))(v113, v221);
    sub_1C94FBB88();
    v117 = v116;
    if (*(v116 + 16) >= *(v116 + 24) >> 1)
    {
      OUTLINED_FUNCTION_15_37();
      v117 = v209;
    }

    v242 = MEMORY[0x1E69E6530];
    v243 = MEMORY[0x1E69E65A8];
    *&v241 = v115;
    OUTLINED_FUNCTION_16_37();
  }

  else
  {
    v117 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C94FBB88();
    v117 = v207;
  }

  if (*(v117 + 16) >= *(v117 + 24) >> 1)
  {
    OUTLINED_FUNCTION_15_37();
    v117 = v208;
  }

  v242 = MEMORY[0x1E69E6158];
  v229 = sub_1C94CF210();
  v243 = v229;
  *&v241 = v97;
  *(&v241 + 1) = v99;
  OUTLINED_FUNCTION_16_37();
  v141 = "anguageTag";
  switch(*(v240 + 16))
  {
    case 2:
      goto LABEL_33;
    case 3:
      v141 = "starting-stopping";
LABEL_33:
      if (0x80000001C96CB7C0 != (v141 | 0x8000000000000000))
      {
        goto LABEL_34;
      }

LABEL_39:

      break;
    default:
LABEL_34:
      v142 = sub_1C96A7DE4();

      if ((v142 & 1) == 0)
      {
        switch(*(v240 + 16))
        {
          case 2:
            v143 = 0x80000001C96CB7C0;
            goto LABEL_38;
          case 3:
            v143 = 0x80000001C96CB7E0;
LABEL_38:
            if (0x80000001C96CB7E0 == v143)
            {
              goto LABEL_39;
            }

            goto LABEL_40;
          default:
LABEL_40:
            v144 = sub_1C96A7DE4();

            if (v144)
            {
              goto LABEL_41;
            }

            goto LABEL_48;
        }
      }

      break;
  }

LABEL_41:
  v145 = v240;
  v146 = v223;
  sub_1C94D63E8(v240 + *(v100 + 44), v223);
  v147 = v227;
  if (__swift_getEnumTagSinglePayload(v146, 1, v227) == 1)
  {

    sub_1C9470AFC(v146, &unk_1EC3A5430);
    OUTLINED_FUNCTION_7_54();
    v148 = v218;
    sub_1C96980FC(v145, v218, v149);
    v150 = sub_1C96A6134();
    v151 = sub_1C96A7684();
    if (OUTLINED_FUNCTION_30_0(v151))
    {
      v152 = swift_slowAlloc();
      v153 = OUTLINED_FUNCTION_8_4();
      *&v241 = v153;
      *v152 = 136315138;
      LOBYTE(v244[0]) = *(v148 + 16);
      v154 = sub_1C96A70A4();
      v156 = v155;
      OUTLINED_FUNCTION_3_63();
      sub_1C969815C(v148, v157);
      v158 = sub_1C9484164(v154, v156, &v241);

      *(v152 + 4) = v158;
      _os_log_impl(&dword_1C945E000, v150, v151, "Unexpected nil value for end time with notification kind %s", v152, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v153);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      OUTLINED_FUNCTION_3_63();
      sub_1C969815C(v148, v181);
    }

    v122 = v232;
    v139 = v239;
    sub_1C96980A8();
    swift_allocError();
    *v182 = 1;
    goto LABEL_53;
  }

  (*(v225 + 32))(v224, v146, v147);
  sub_1C96A4964();
  v160 = v159;
  v161 = v145;
  v162 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v162 setUnitsStyle_];
  [v162 setAllowedUnits_];
  v163 = [v162 stringFromTimeInterval_];
  if (!v163)
  {

    OUTLINED_FUNCTION_7_54();
    v192 = v213;
    sub_1C96980FC(v161, v213, v193);
    v194 = sub_1C96A6134();
    v195 = sub_1C96A7684();
    if (os_log_type_enabled(v194, v195))
    {
      v196 = swift_slowAlloc();
      v197 = OUTLINED_FUNCTION_8_4();
      *&v241 = v197;
      *v196 = 134218242;
      *(v196 + 4) = v160;
      *(v196 + 12) = 2082;
      LOBYTE(v244[0]) = v192[16];
      v198 = sub_1C96A70A4();
      v200 = v199;
      OUTLINED_FUNCTION_3_63();
      sub_1C969815C(v192, v201);
      v202 = sub_1C9484164(v198, v200, &v241);

      *(v196 + 14) = v202;
      _os_log_impl(&dword_1C945E000, v194, v195, "Unexpected nil minute component, seconds=%f, notification kind %{public}s", v196, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v197);
      OUTLINED_FUNCTION_12_5();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      OUTLINED_FUNCTION_3_63();
      sub_1C969815C(v192, v203);
    }

    v122 = v232;
    v139 = v239;
    sub_1C96980A8();
    swift_allocError();
    *v204 = 1;
    swift_willThrow();

    v205 = OUTLINED_FUNCTION_14_38();
    v206(v205, v147);
    goto LABEL_54;
  }

  v164 = v163;
  v165 = sub_1C96A7024();
  v167 = v166;

  v168 = *(v117 + 16);
  if (v168 >= *(v117 + 24) >> 1)
  {
    sub_1C94FBB88();
    v117 = v210;
  }

  v242 = MEMORY[0x1E69E6158];
  v243 = v229;
  *&v241 = v165;
  *(&v241 + 1) = v167;
  *(v117 + 16) = v168 + 1;
  sub_1C94670AC(&v241, v117 + 40 * v168 + 32);

  v169 = OUTLINED_FUNCTION_14_38();
  v170(v169, v227);
LABEL_48:
  v171 = v215;
  sub_1C96A4BC4();
  v172 = sub_1C96A4C14();
  __swift_storeEnumTagSinglePayload(v171, 0, 1, v172);
  v173 = sub_1C96A7054();
  v175 = v174;

  sub_1C9470AFC(v171, &qword_1EC3A8800);
  v176 = v239;
  v177 = sub_1C9697E6C(v216, v239, v240);
  if ((v214 & 1) == 0)
  {

    goto LABEL_56;
  }

  v178 = sub_1C96A7DE4();

  if (v178)
  {
LABEL_56:
    v179 = Location.inlineName.getter();
    v180 = v186;
    goto LABEL_57;
  }

  v179 = 0;
  v180 = 0;
LABEL_57:
  OUTLINED_FUNCTION_0_114();
  sub_1C969815C(v232, v187);
  (*(v236 + 8))(v235, v237);
  OUTLINED_FUNCTION_5_58();
  sub_1C969815C(v176, v188);
  v190 = *v238;
  v189 = v238[1];
  v191 = v217;
  *v217 = v231;
  v191[1] = v105;
  v191[2] = v179;
  v191[3] = v180;
  v191[4] = v173;
  v191[5] = v175;
  v191[6] = v190;
  v191[7] = v189;
  v191[8] = v177;
  return sub_1C96A53C4();
}

uint64_t sub_1C969792C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C96A4C14();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C96A4DF4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Location();
  (*(v7 + 16))(v12, a1 + *(v13 + 20), v6);
  v14 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v15 = sub_1C96A4DA4();
  [v14 setTimeZone_];

  [v14 setDateStyle_];
  [v14 setTimeStyle_];
  type metadata accessor for PrecipitationNotification();
  v43 = a2;
  v16 = sub_1C96A4984();
  v17 = [v14 stringFromDate_];

  v18 = sub_1C96A7024();
  v44 = v19;
  v45 = v18;

  sub_1C96A4DE4();
  sub_1C9698360();
  LOBYTE(v16) = sub_1C96A6F94();
  v20 = *(v7 + 8);
  v20(v9, v6);
  if (v16)
  {
    goto LABEL_5;
  }

  if (*(a1 + 48) == 1)
  {

LABEL_5:
    v20(v12, v6);

    return v45;
  }

  v21 = sub_1C96A7DE4();

  if (v21)
  {
    goto LABEL_5;
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v25 = sub_1C96A4DA4();
  [v24 setTimeZone_];

  v26 = v40;
  sub_1C96A4BC4();
  v27 = sub_1C96A4B64();
  (*(v41 + 8))(v26, v42);
  [v24 setLocale_];

  v28 = sub_1C96A7004();
  [v24 setLocalizedDateFormatFromTemplate_];

  v29 = sub_1C96A4984();
  v30 = [v24 stringFromDate_];

  v31 = sub_1C96A7024();
  v42 = v32;
  v43 = v31;

  if (qword_1EDB7AB08 != -1)
  {
    swift_once();
  }

  v33 = qword_1EDB94A58;
  sub_1C96A4534();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1C96AEF50;
  v35 = MEMORY[0x1E69E6158];
  *(v34 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1C94CF210();
  v37 = v44;
  *(v34 + 32) = v45;
  *(v34 + 40) = v37;
  *(v34 + 96) = v35;
  *(v34 + 104) = v36;
  v38 = v42;
  v39 = v43;
  *(v34 + 64) = v36;
  *(v34 + 72) = v39;
  *(v34 + 80) = v38;
  v22 = sub_1C96A7014();

  v20(v12, v6);
  return v22;
}

uint64_t sub_1C9697E6C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1C96A6F04();
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = MEMORY[0x1E69E6158];
  v20 = MEMORY[0x1E69E6158];
  *&v19 = v6;
  *(&v19 + 1) = v7;
  sub_1C946306C(&v19, v18);
  sub_1C96A53C4();
  sub_1C96A53C4();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C950B354();
  type metadata accessor for Location();
  v9 = sub_1C96A4D74();
  v20 = v8;
  *&v19 = v9;
  *(&v19 + 1) = v10;
  sub_1C946306C(&v19, v18);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C950B354();
  v11 = v5;
  v12 = *(type metadata accessor for PrecipitationNotification() + 40);
  v13 = sub_1C96A4A54();
  v20 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, a3 + v12, v13);
  sub_1C946306C(&v19, v18);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C950B354();
  v15 = _s11WeatherCore42PrecipitationNotificationLocalizationTokenV11descriptionSSvg_0();
  v20 = v8;
  *&v19 = v15;
  *(&v19 + 1) = v16;
  sub_1C946306C(&v19, v18);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C950B354();
  return v11;
}

unint64_t sub_1C96980A8()
{
  result = qword_1EC3A8808;
  if (!qword_1EC3A8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8808);
  }

  return result;
}

uint64_t sub_1C96980FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C969815C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationNotificationContentFactory.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C969830C()
{
  result = qword_1EC3A8810;
  if (!qword_1EC3A8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8810);
  }

  return result;
}

unint64_t sub_1C9698360()
{
  result = qword_1EC3A7B50;
  if (!qword_1EC3A7B50)
  {
    sub_1C96A4DF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7B50);
  }

  return result;
}

uint64_t sub_1C969843C()
{
  v0 = OUTLINED_FUNCTION_4_70();
  OUTLINED_FUNCTION_1_85(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1C96A7144();
  return sub_1C96A7F24();
}

uint64_t sub_1C9698580()
{
  OUTLINED_FUNCTION_4_70();
  OUTLINED_FUNCTION_8_52();
  return sub_1C96A7F24();
}

uint64_t sub_1C96985C4(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_4_70();
  MEMORY[0x1CCA8D880](a1 - 1);
  return sub_1C96A7F24();
}

uint64_t sub_1C969862C()
{
  v0 = OUTLINED_FUNCTION_4_70();
  OUTLINED_FUNCTION_1_85(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1C96A7144();
  return sub_1C96A7F24();
}

uint64_t sub_1C9698700()
{
  OUTLINED_FUNCTION_4_70();
  sub_1C96A7144();
  return sub_1C96A7F24();
}

uint64_t sub_1C9698790()
{
  OUTLINED_FUNCTION_4_70();
  OUTLINED_FUNCTION_8_52();
  return sub_1C96A7F24();
}

uint64_t sub_1C9698900()
{
  OUTLINED_FUNCTION_4_70();
  OUTLINED_FUNCTION_3_64();

  return sub_1C96A7F24();
}

uint64_t sub_1C96989AC(uint64_t a1)
{
  OUTLINED_FUNCTION_4_70();
  MEMORY[0x1CCA8D880](a1);
  return sub_1C96A7F24();
}

uint64_t sub_1C9698A58()
{
  v0 = OUTLINED_FUNCTION_4_70();
  OUTLINED_FUNCTION_1_85(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1C96A7144();
  return sub_1C96A7F24();
}

uint64_t sub_1C9698AA0(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_4_70();
  a2(v5, a1);
  return sub_1C96A7F24();
}

uint64_t sub_1C9698B00(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_4_70();
  a2(a1);
  OUTLINED_FUNCTION_5_59();

  return sub_1C96A7F24();
}

uint64_t sub_1C9698B98()
{
  OUTLINED_FUNCTION_2_83();
  OUTLINED_FUNCTION_3_64();

  return sub_1C96A7F24();
}

uint64_t sub_1C9698C1C()
{
  OUTLINED_FUNCTION_2_83();
  OUTLINED_FUNCTION_3_64();

  return sub_1C96A7F24();
}

uint64_t sub_1C9698CA4()
{
  OUTLINED_FUNCTION_2_83();
  sub_1C96A7144();

  return sub_1C96A7F24();
}

uint64_t sub_1C9698D00()
{
  v0 = sub_1C96A7EE4();
  OUTLINED_FUNCTION_1_85(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1C96A7144();
  return sub_1C96A7F24();
}

uint64_t sub_1C9698D64()
{
  OUTLINED_FUNCTION_2_83();
  OUTLINED_FUNCTION_3_64();

  return sub_1C96A7F24();
}

uint64_t sub_1C9698DF0()
{
  v0 = sub_1C96A7EE4();
  OUTLINED_FUNCTION_1_85(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1C96A7144();
  return sub_1C96A7F24();
}

uint64_t sub_1C9698EB4(uint64_t a1, unsigned __int8 a2)
{
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](a2 - 1);
  return sub_1C96A7F24();
}

uint64_t sub_1C9698EFC()
{
  sub_1C96A7EE4();
  OUTLINED_FUNCTION_8_52();
  return sub_1C96A7F24();
}

uint64_t sub_1C9698F44()
{
  OUTLINED_FUNCTION_2_83();
  OUTLINED_FUNCTION_3_64();

  return sub_1C96A7F24();
}

uint64_t sub_1C9699078()
{
  OUTLINED_FUNCTION_2_83();
  OUTLINED_FUNCTION_3_64();

  return sub_1C96A7F24();
}

uint64_t sub_1C9699118()
{
  OUTLINED_FUNCTION_2_83();
  sub_1C96A7144();

  return sub_1C96A7F24();
}

uint64_t sub_1C969918C()
{
  OUTLINED_FUNCTION_2_83();
  OUTLINED_FUNCTION_3_64();

  return sub_1C96A7F24();
}

uint64_t sub_1C9699244()
{
  OUTLINED_FUNCTION_2_83();
  sub_1C96A7144();

  return sub_1C96A7F24();
}

uint64_t sub_1C9699298()
{
  sub_1C96A7EE4();
  OUTLINED_FUNCTION_8_52();
  return sub_1C96A7F24();
}

uint64_t sub_1C96992E0()
{
  OUTLINED_FUNCTION_2_83();
  sub_1C96A7144();

  return sub_1C96A7F24();
}

uint64_t sub_1C9699334()
{
  OUTLINED_FUNCTION_2_83();
  OUTLINED_FUNCTION_3_64();

  return sub_1C96A7F24();
}

uint64_t sub_1C9699394()
{
  OUTLINED_FUNCTION_2_83();
  OUTLINED_FUNCTION_3_64();

  return sub_1C96A7F24();
}

uint64_t sub_1C969943C()
{
  OUTLINED_FUNCTION_2_83();
  OUTLINED_FUNCTION_3_64();

  return sub_1C96A7F24();
}

uint64_t sub_1C96994DC()
{
  sub_1C96A7EE4();
  sub_1C96A7144();

  return sub_1C96A7F24();
}

uint64_t sub_1C96995A8()
{
  sub_1C96A7EE4();
  OUTLINED_FUNCTION_3_64();

  return sub_1C96A7F24();
}

uint64_t sub_1C9699654()
{
  OUTLINED_FUNCTION_2_83();
  sub_1C96A7144();

  return sub_1C96A7F24();
}

uint64_t sub_1C96996C8()
{
  OUTLINED_FUNCTION_2_83();
  OUTLINED_FUNCTION_3_64();

  return sub_1C96A7F24();
}

uint64_t sub_1C96997AC()
{
  OUTLINED_FUNCTION_2_83();
  OUTLINED_FUNCTION_3_64();

  return sub_1C96A7F24();
}

uint64_t sub_1C9699824()
{
  OUTLINED_FUNCTION_2_83();
  OUTLINED_FUNCTION_3_64();

  return sub_1C96A7F24();
}

uint64_t sub_1C9699908()
{
  v0 = sub_1C96A7EE4();
  OUTLINED_FUNCTION_1_85(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1C96A7144();
  return sub_1C96A7F24();
}

uint64_t sub_1C969996C()
{
  sub_1C96A7EE4();
  sub_1C96A7144();
  return sub_1C96A7F24();
}

uint64_t sub_1C96999D0()
{
  sub_1C96A7EE4();
  sub_1C96A7144();

  return sub_1C96A7F24();
}

uint64_t sub_1C9699A68(uint64_t a1, uint64_t a2)
{
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](a2);
  return sub_1C96A7F24();
}

uint64_t sub_1C9699AC4()
{
  OUTLINED_FUNCTION_2_83();
  OUTLINED_FUNCTION_3_64();

  return sub_1C96A7F24();
}

uint64_t sub_1C9699B48(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1C96A7EE4();
  a3(v6, a2);
  return sub_1C96A7F24();
}

uint64_t sub_1C9699BAC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1C96A7EE4();
  a3(a2);
  OUTLINED_FUNCTION_5_59();

  return sub_1C96A7F24();
}

WeatherCore::WeatherMenuAnalyticsConfiguration __swiftcall WeatherMenuAnalyticsConfiguration.init(enableEvents:allowLaunchEventForNonDnuUsers:minimumIntervalForFlush:maximumFlushJitter:)(Swift::Bool_optional enableEvents, Swift::Bool_optional allowLaunchEventForNonDnuUsers, Swift::Double_optional minimumIntervalForFlush, Swift::Double_optional maximumFlushJitter)
{
  v7 = *&minimumIntervalForFlush.is_nil;
  if (maximumFlushJitter.is_nil)
  {
    v7 = 86400.0;
  }

  v8 = v4;
  *v6 = enableEvents.value;
  *(v6 + 1) = allowLaunchEventForNonDnuUsers.value;
  if (v5)
  {
    v8 = 1200.0;
  }

  *(v6 + 8) = v7;
  *(v6 + 16) = v8;
  result.maximumFlushJitter = v8;
  result.minimumIntervalForFlush = v7;
  result.enableEvents = enableEvents.value;
  return result;
}

BOOL static WeatherMenuAnalyticsConfiguration.== infix(_:_:)(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 1) ^ *(a2 + 1)) & 1) == 0 && a1[1] == a2[1])
  {
    return a1[2] == a2[2];
  }

  return result;
}

uint64_t WeatherMenuAnalyticsConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8830);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  v12 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9482070();
  sub_1C96A7F54();
  v16 = 0;
  OUTLINED_FUNCTION_0_0();
  sub_1C96A7D34();
  if (!v2)
  {
    v15 = 1;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D34();
    v14 = 2;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D44();
    v13 = 3;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D44();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1C9699E5C(char a1)
{
  result = 0x7645656C62616E65;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ELL;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9699F74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94EA334();
  *a1 = result;
  return result;
}

unint64_t sub_1C9699FA4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C9699E5C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C9699FD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94EA334();
  *a1 = result;
  return result;
}

uint64_t sub_1C9699FF8(uint64_t a1)
{
  v2 = sub_1C9482070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C969A034(uint64_t a1)
{
  v2 = sub_1C9482070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t getEnumTagSinglePayload for WeatherMenuAnalyticsConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[24])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

unint64_t sub_1C969A0EC()
{
  result = qword_1EC3A8838;
  if (!qword_1EC3A8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8838);
  }

  return result;
}

uint64_t sub_1C969A394()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 8))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1C969A408()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 16))(ObjectType, v2);
    swift_unknownObjectRelease();
    return v4 & 1;
  }

  return result;
}

uint64_t LocationManagerUpdateType.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

unint64_t sub_1C969A520()
{
  result = qword_1EC3A8840;
  if (!qword_1EC3A8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8840);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationManagerUpdateType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C969A6C8(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_3_65();
    OUTLINED_FUNCTION_2_84();
    (*(v5 + 24))(a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C969A758()
{
  result = OUTLINED_FUNCTION_1_86();
  if (result)
  {
    OUTLINED_FUNCTION_3_65();
    OUTLINED_FUNCTION_2_84();
    v1 = OUTLINED_FUNCTION_0_117();
    v2(v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C969A7D0()
{
  result = OUTLINED_FUNCTION_1_86();
  if (result)
  {
    OUTLINED_FUNCTION_3_65();
    OUTLINED_FUNCTION_2_84();
    v1 = OUTLINED_FUNCTION_0_117();
    v2(v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C969A848()
{
  result = OUTLINED_FUNCTION_1_86();
  if (result)
  {
    OUTLINED_FUNCTION_3_65();
    OUTLINED_FUNCTION_2_84();
    v1 = OUTLINED_FUNCTION_0_117();
    v2(v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RandomAccessCollection.binarySearch(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v42 = a1;
  v43 = a2;
  v44 = a4;
  v8 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v38 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v31 - v11;
  v12 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - v21;
  sub_1C96A75C4();
  sub_1C96A75F4();
  v23 = a5;
  v39 = *(swift_getAssociatedConformanceWitness() + 8);
  if (sub_1C96A6F94())
  {
    return (*(v14 + 8))(v22, v12);
  }

  v36 = v8;
  v37 = v5;
  v34 = v38 + 1;
  v35 = (v38 + 2);
  v38 = (v14 + 8);
  v33 = (v14 + 32);
  do
  {
    sub_1C96A75B4();
    sub_1C96A75A4();
    v25 = sub_1C96A7624();
    v26 = a3;
    v28 = v40;
    v27 = AssociatedTypeWitness;
    (*v35)(v40);
    (v25)(v45, 0);
    LOBYTE(v25) = v42(v28);
    (*v34)(v28, v27);
    if (v25)
    {
      v29 = v32;
      sub_1C96A75E4();
      v30 = *v38;
      (*v38)(v19, v12);
      v30(v23, v12);
      (*v33)(v23, v29, v12);
    }

    else
    {
      v30 = *v38;
      (*v38)(v22, v12);
      (*v33)(v22, v19, v12);
    }

    a3 = v26;
  }

  while ((sub_1C96A6F94() & 1) == 0);
  return (v30)(v22, v12);
}

uint64_t LocationDataModelFactory.makeLocationFromRemoteDictionary(_:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_12_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6770);
  if (!OUTLINED_FUNCTION_2_85())
  {
    v4 = 0;
LABEL_13:
    sub_1C969C028();
    swift_allocError();
    *v5 = v4;
    return swift_willThrow();
  }

  OUTLINED_FUNCTION_9_47(0x656D614E79746943);
  if (!v39)
  {

    sub_1C94BE204(&v38, &qword_1EC3A4A90);
LABEL_10:
    v4 = 1;
    goto LABEL_13;
  }

  if ((OUTLINED_FUNCTION_2_85() & 1) == 0)
  {

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_47(0x656475746974614CLL);
  if ((OUTLINED_FUNCTION_2_85() & 1) == 0)
  {

    v4 = 2;
    goto LABEL_13;
  }

  sub_1C94FA584(0x64757469676E6F4CLL, 0xE900000000000065, v36);
  if ((OUTLINED_FUNCTION_2_85() & 1) == 0)
  {

    v4 = 3;
    goto LABEL_13;
  }

  v3 = 0xEB00000000656C74;
  sub_1C94FA584(0x6954686372616553, 0xEB00000000656C74, v36);
  OUTLINED_FUNCTION_2_85();
  OUTLINED_FUNCTION_0_118();
  sub_1C94FA584(0x7553686372616553, 0xEE00656C74697462, v36);
  if (v39)
  {
    OUTLINED_FUNCTION_2_85();
    OUTLINED_FUNCTION_0_118();
  }

  else
  {
    sub_1C94BE204(&v38, &qword_1EC3A4A90);
  }

  v7 = OUTLINED_FUNCTION_15_38();
  sub_1C94FA584(v7, 0xEB00000000656D61, v36);
  if (v39)
  {
    OUTLINED_FUNCTION_2_85();
    OUTLINED_FUNCTION_0_118();
  }

  else
  {
    sub_1C94BE204(&v38, &qword_1EC3A4A90);
  }

  OUTLINED_FUNCTION_5_60();
  if (v39)
  {
    OUTLINED_FUNCTION_2_85();
    OUTLINED_FUNCTION_0_118();
  }

  else
  {
    sub_1C94BE204(&v38, &qword_1EC3A4A90);
  }

  OUTLINED_FUNCTION_9_47(0x656E6F5A656D6954);

  if (!v39)
  {
    sub_1C94BE204(&v38, &qword_1EC3A4A90);
    goto LABEL_29;
  }

  if ((OUTLINED_FUNCTION_2_85() & 1) == 0)
  {
LABEL_29:
    v35 = 0;
    goto LABEL_30;
  }

  v8 = v37;
  v35 = v36;
  if (!v37)
  {
LABEL_30:
    sub_1C96A4DF4();
    v1 = 1;
    OUTLINED_FUNCTION_3();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    v8 = 0;
    goto LABEL_31;
  }

  sub_1C96A4D64();
  v9 = sub_1C96A4DF4();
  if (__swift_getEnumTagSinglePayload(v0, 1, v9) == 1)
  {
    v1 = 0;
LABEL_31:
    if (qword_1EDB7D010 != -1)
    {
      OUTLINED_FUNCTION_0_24();
    }

    v14 = sub_1C96A6154();
    __swift_project_value_buffer(v14, qword_1EDB7D018);
    sub_1C96A53C4();
    sub_1C96A53C4();
    v15 = sub_1C96A6134();
    v3 = sub_1C96A7684();

    v16 = os_log_type_enabled(v15, v3);
    v40 = v8;
    if (v16)
    {
      swift_slowAlloc();
      v8 = OUTLINED_FUNCTION_18_33();
      v38 = v8;
      v17 = OUTLINED_FUNCTION_6_60(7.2227e-34);
      OUTLINED_FUNCTION_7_55(v17);
      v19 = 0;
      if ((v18 & 1) == 0)
      {
        OUTLINED_FUNCTION_11_43();
        v21 = v21 && v35 == v20;
        if (v21 || (OUTLINED_FUNCTION_17_40() & 1) != 0)
        {
          v19 = 1;
        }
      }

      *(v1 + 34) = v19;

      OUTLINED_FUNCTION_16_38(&dword_1C945E000, v22, v23, "failed to obtain a timeZone from remote location. name=%{private,mask.hash}s, timeZoneIdentifier=%{BOOL,private,mask.hash}d");
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }

    goto LABEL_44;
  }

  v40 = v37;
LABEL_44:
  v24 = OUTLINED_FUNCTION_10_49();
  OUTLINED_FUNCTION_13_46(v24, v25);
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
  MEMORY[0x1CCA8CB00]();

  if (v1 != v8 || v3 != 0xE700000000000000)
  {
    OUTLINED_FUNCTION_14_39();
  }

  v27 = type metadata accessor for LocationDataModel();
  OUTLINED_FUNCTION_19_33(v27);
  v28 = sub_1C96A4A54();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v28);
  OUTLINED_FUNCTION_3_66();
  return sub_1C94BE204(v0, &unk_1EC3A5F60);
}

uint64_t LocationDataModelFactory.makeLocationFromLocalDictionary(_:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_12_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6770);
  v3 = MEMORY[0x1E69E7CA0];
  if (!OUTLINED_FUNCTION_1_87())
  {
    v4 = 0;
LABEL_13:
    sub_1C969C028();
    swift_allocError();
    *v5 = v4;
    return swift_willThrow();
  }

  sub_1C94FA584(1701667150, 0xE400000000000000, v36);
  if (!v39)
  {

    sub_1C94BE204(&v38, &qword_1EC3A4A90);
LABEL_10:
    v4 = 1;
    goto LABEL_13;
  }

  if ((OUTLINED_FUNCTION_1_87() & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_1C94FA584(7627084, 0xE300000000000000, v36);
  if ((OUTLINED_FUNCTION_1_87() & 1) == 0)
  {

    v4 = 2;
    goto LABEL_13;
  }

  sub_1C94FA584(7237452, 0xE300000000000000, v36);
  if ((OUTLINED_FUNCTION_1_87() & 1) == 0)
  {

    v4 = 3;
    goto LABEL_13;
  }

  sub_1C94FA584(0x7261655379746943, 0xEF656C7469546863, v36);
  OUTLINED_FUNCTION_1_87();
  OUTLINED_FUNCTION_0_118();
  sub_1C94FA584(0xD000000000000012, 0x80000001C96D4060, v36);
  if (v39)
  {
    OUTLINED_FUNCTION_1_87();
    OUTLINED_FUNCTION_0_118();
  }

  else
  {
    sub_1C94BE204(&v38, &qword_1EC3A4A90);
  }

  v7 = OUTLINED_FUNCTION_15_38();
  sub_1C94FA584(v7, 0xEB00000000656D61, v36);
  if (v39)
  {
    OUTLINED_FUNCTION_1_87();
    OUTLINED_FUNCTION_0_118();
  }

  else
  {
    sub_1C94BE204(&v38, &qword_1EC3A4A90);
  }

  OUTLINED_FUNCTION_5_60();
  if (v39)
  {
    OUTLINED_FUNCTION_1_87();
    OUTLINED_FUNCTION_0_118();
  }

  else
  {
    sub_1C94BE204(&v38, &qword_1EC3A4A90);
  }

  OUTLINED_FUNCTION_9_47(0x656E6F5A656D6954);

  if (!v39)
  {
    sub_1C94BE204(&v38, &qword_1EC3A4A90);
    goto LABEL_29;
  }

  if ((OUTLINED_FUNCTION_1_87() & 1) == 0)
  {
LABEL_29:
    v35 = 0;
    goto LABEL_30;
  }

  v8 = v37;
  v35 = v36;
  if (!v37)
  {
LABEL_30:
    sub_1C96A4DF4();
    v1 = 1;
    OUTLINED_FUNCTION_3();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    v8 = 0;
    goto LABEL_31;
  }

  sub_1C96A4D64();
  v9 = sub_1C96A4DF4();
  if (__swift_getEnumTagSinglePayload(v0, 1, v9) == 1)
  {
    v1 = 0;
LABEL_31:
    if (qword_1EDB7D010 != -1)
    {
      OUTLINED_FUNCTION_0_24();
    }

    v14 = sub_1C96A6154();
    __swift_project_value_buffer(v14, qword_1EDB7D018);
    sub_1C96A53C4();
    sub_1C96A53C4();
    v15 = sub_1C96A6134();
    v3 = sub_1C96A7684();

    v16 = os_log_type_enabled(v15, v3);
    v40 = v8;
    if (v16)
    {
      swift_slowAlloc();
      v8 = OUTLINED_FUNCTION_18_33();
      v38 = v8;
      v17 = OUTLINED_FUNCTION_6_60(7.2227e-34);
      OUTLINED_FUNCTION_7_55(v17);
      v19 = 0;
      if ((v18 & 1) == 0)
      {
        OUTLINED_FUNCTION_11_43();
        v21 = v21 && v35 == v20;
        if (v21 || (OUTLINED_FUNCTION_17_40() & 1) != 0)
        {
          v19 = 1;
        }
      }

      *(v1 + 34) = v19;

      OUTLINED_FUNCTION_16_38(&dword_1C945E000, v22, v23, "failed to obtain a timeZone from local location. name=%{private,mask.hash}s, timeZoneIdentifier=%{BOOL,private,mask.hash}d");
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }

    goto LABEL_44;
  }

  v40 = v37;
LABEL_44:
  v24 = OUTLINED_FUNCTION_10_49();
  OUTLINED_FUNCTION_13_46(v24, v25);
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
  MEMORY[0x1CCA8CB00]();

  if (v1 != v8 || v3 != 0xE700000000000000)
  {
    OUTLINED_FUNCTION_14_39();
  }

  v27 = type metadata accessor for LocationDataModel();
  OUTLINED_FUNCTION_19_33(v27);
  v28 = sub_1C96A4A54();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v28);
  OUTLINED_FUNCTION_3_66();
  return sub_1C94BE204(v0, &unk_1EC3A5F60);
}

uint64_t LocationDataModelFactory.makeLocationsFromSyncedLocations(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  type metadata accessor for LocationDataModel();
  return sub_1C96A6C64();
}

uint64_t sub_1C969BA40@<X0>(const void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51[-v13];
  memcpy(__dst, a1, 0x98uLL);
  v15 = __dst[6];
  v16 = __dst[7];
  sub_1C96A53C4();
  v62 = v15;
  sub_1C96A4D64();
  v17 = sub_1C96A4DF4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v17);
  v61 = v16;
  v63 = v9;
  v64 = v14;
  if (EnumTagSinglePayload == 1)
  {
    if (qword_1EDB7D010 != -1)
    {
      swift_once();
    }

    v19 = sub_1C96A6154();
    __swift_project_value_buffer(v19, qword_1EDB7D018);
    sub_1C96A53C4();
    sub_1C95A0354(__dst, &v68);
    v20 = sub_1C96A6134();
    v21 = sub_1C96A7684();
    sub_1C95A038C(__dst);

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v68 = v23;
      *v22 = 141558787;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      *(v22 + 14) = sub_1C9484164(__dst[2], __dst[3], &v68);
      *(v22 + 22) = 2160;
      *(v22 + 24) = 1752392040;
      *(v22 + 32) = 2081;
      *(v22 + 34) = sub_1C9484164(v62, v61, &v68);
      _os_log_impl(&dword_1C945E000, v20, v21, "failed to obtain a timeZone from synced location. name=%{private,mask.hash}s, timeZoneIdentifier=%{private,mask.hash}s", v22, 0x2Au);
      swift_arrayDestroy();
      v24 = v23;
      v9 = v63;
      MEMORY[0x1CCA8E3D0](v24, -1, -1);
      v25 = v22;
      v14 = v64;
      MEMORY[0x1CCA8E3D0](v25, -1, -1);
    }
  }

  v26 = v9;
  v60 = v6;
  v28 = __dst[0];
  v27 = __dst[1];
  v29 = __dst[2];
  v30 = __dst[3];
  v31 = __dst[4];
  v32 = __dst[5];
  v68 = __dst[0];
  v69 = __dst[1];
  swift_bridgeObjectRetain_n();
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
  v59 = v29;
  MEMORY[0x1CCA8CB00](v29, v30);
  v57 = v69;
  v58 = v68;
  if (v28 == 0x746E6572727563 && v27 == 0xE700000000000000)
  {
    v52 = 1;
  }

  else
  {
    v52 = sub_1C96A7DE4();
  }

  sub_1C95515E0(v14, v67);
  v34 = sub_1C96A4A54();
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v34);
  v35 = __dst[9];
  v36 = __dst[11];
  v53 = __dst[8];
  v54 = __dst[10];
  v55 = __dst[12];
  v56 = __dst[14];
  v65 = __dst[13];
  v66 = __dst[15];
  if (__dst[17])
  {
    v37 = v60;
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v34);
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
  }

  else
  {
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    v37 = v60;
    sub_1C96A49D4();
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v34);
  }

  v38 = v52 & 1;
  *a2 = v28;
  *(a2 + 8) = v27;
  *(a2 + 16) = v59;
  *(a2 + 24) = v30;
  *(a2 + 32) = v31;
  *(a2 + 40) = v32;
  *(a2 + 48) = v38;
  *(a2 + 49) = v68;
  *(a2 + 52) = *(&v68 + 3);
  v39 = v57;
  *(a2 + 56) = v58;
  *(a2 + 64) = v39;
  v40 = type metadata accessor for LocationDataModel();
  sub_1C949E1B4(v67, a2 + v40[5], &unk_1EC3A5F60);
  v41 = (a2 + v40[6]);
  v42 = v61;
  *v41 = v62;
  v41[1] = v42;
  sub_1C949E1B4(v63, a2 + v40[7], &unk_1EC3A5430);
  v43 = (a2 + v40[8]);
  v44 = v54;
  *v43 = v53;
  v43[1] = v35;
  v45 = (a2 + v40[9]);
  *v45 = v44;
  v45[1] = v36;
  v46 = (a2 + v40[10]);
  v47 = v65;
  *v46 = v55;
  v46[1] = v47;
  v48 = (a2 + v40[11]);
  v49 = v66;
  *v48 = v56;
  v48[1] = v49;
  sub_1C949E1B4(v37, a2 + v40[12], &unk_1EC3A5430);
  return sub_1C94BE204(v64, &unk_1EC3A5F60);
}

unint64_t sub_1C969C028()
{
  result = qword_1EC3A8848;
  if (!qword_1EC3A8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8848);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SyncedLocationsDataError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C969C1EC()
{
  result = qword_1EC3A8850;
  if (!qword_1EC3A8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8850);
  }

  return result;
}

uint64_t sub_1C969C27C()
{
  v1[20] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  v1[21] = swift_task_alloc();
  v2 = sub_1C96A4DF4();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  v1[25] = swift_task_alloc();
  v3 = type metadata accessor for Location();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v4 = type metadata accessor for LocationDataModel();
  v1[30] = v4;
  v1[31] = *(v4 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C969C47C, 0, 0);
}

uint64_t sub_1C969C47C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 160) + 72), *(*(v0 + 160) + 96));
  v4 = (OUTLINED_FUNCTION_25_2() + 16);
  v5 = (*v4 + **v4);
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_32_9(v1);

  return v5(v2);
}

uint64_t sub_1C969C594()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 280) = v3;

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C969C680()
{
  v1 = v0[35];
  if (v1)
  {
    v78 = *(v1 + 16);
    if (v78)
    {
      v3 = v0[30];
      v2 = v0[31];
      v68 = v0[26];
      v4 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v67 = (v0[23] + 32);
      v5 = MEMORY[0x1E69E7CC0];
      v75 = *(v2 + 72);
      v76 = v3;
      v6 = &unk_1EC3A5F60;
      do
      {
        v8 = v0[32];
        v7 = v0[33];
        v10 = v0[21];
        v9 = v0[22];
        v11 = OUTLINED_FUNCTION_38();
        sub_1C9489C0C(v11, v12, v13);
        sub_1C949A8F4(v7, v8, type metadata accessor for LocationDataModel);
        sub_1C9470AA0(v8 + v3[5], v10, v6);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v9);
        v15 = v0[32];
        if (EnumTagSinglePayload == 1)
        {
          v16 = v6;
          v17 = v0[26];
          v18 = v0[21];
          OUTLINED_FUNCTION_15_39();
          sub_1C9470AFC(v18, v16);
          v19 = OUTLINED_FUNCTION_24_25();
          __swift_storeEnumTagSinglePayload(v19, v20, 1, v17);
          v6 = v16;
        }

        else
        {
          v21 = v3;
          v22 = v0[28];
          v72 = v0[25];
          v73 = v0[26];
          v74 = v5;
          v23 = v0[24];
          v24 = v0[22];
          v25 = *v67;
          (*v67)(v23, v0[21], v24);
          memcpy(v0 + 2, v15, 0x48uLL);
          v25(&v22[v68[5]], v23, v24);
          v26 = v68[6];
          v27 = sub_1C96A4A54();
          __swift_storeEnumTagSinglePayload(&v22[v26], 1, 1, v27);
          v28 = &v15[v21[8]];
          v29 = *v28;
          v30 = *(v28 + 1);
          v31 = &v15[v21[9]];
          v32 = *(v31 + 1);
          v70 = v29;
          v71 = *v31;
          v33 = v21[11];
          v34 = &v15[v21[10]];
          v36 = *v34;
          v35 = *(v34 + 1);
          v37 = *&v15[v33 + 8];
          v69 = *&v15[v33];
          sub_1C95087DC((v0 + 2), (v0 + 11));
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C96A53C4();
          OUTLINED_FUNCTION_15_39();
          *&v22[v68[11]] = 0;
          memcpy(v22, v0 + 2, 0x48uLL);
          v38 = &v22[v68[7]];
          *v38 = v70;
          *(v38 + 1) = v30;
          v39 = &v22[v68[8]];
          *v39 = v71;
          *(v39 + 1) = v32;
          v5 = v74;
          v40 = &v22[v68[9]];
          *v40 = v36;
          *(v40 + 1) = v35;
          v41 = &v22[v68[10]];
          *v41 = v69;
          *(v41 + 1) = v37;
          OUTLINED_FUNCTION_0_119();
          sub_1C949A8F4(v22, v72, v42);
          __swift_storeEnumTagSinglePayload(v72, 0, 1, v73);
          v6 = &unk_1EC3A5F60;
        }

        v43 = v0[25];
        v44 = OUTLINED_FUNCTION_24_25();
        OUTLINED_FUNCTION_23_1(v44, v45, v46);
        if (v47)
        {
          sub_1C9470AFC(v43, &qword_1EC3A5450);
        }

        else
        {
          OUTLINED_FUNCTION_0_119();
          sub_1C949A8F4(v43, v48, v49);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C94FB4A8();
            v5 = v55;
          }

          v51 = *(v5 + 16);
          if (v51 >= *(v5 + 24) >> 1)
          {
            sub_1C94FB4A8();
            v5 = v56;
          }

          *(v5 + 16) = v51 + 1;
          OUTLINED_FUNCTION_0_119();
          sub_1C949A8F4(v52, v53, v54);
        }

        v3 = v76;
        v4 += v75;
        --v78;
      }

      while (v78);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_74();
    v64 = v5;
  }

  else
  {
    if (qword_1EDB7FDC8 != -1)
    {
      swift_once();
    }

    v57 = sub_1C96A6154();
    __swift_project_value_buffer(v57, qword_1EDB7FDD0);
    v58 = sub_1C96A6134();
    v59 = sub_1C96A76A4();
    if (os_log_type_enabled(v58, v59))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_16_2(&dword_1C945E000, v60, v61, "Saved location is empty so return default location");
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }

    v62 = v0[20];

    __swift_project_boxed_opaque_existential_1((v62 + 112), *(v62 + 136));
    v77 = (OUTLINED_FUNCTION_25_2() + 16);
    v79 = (*v77 + **v77);
    v63 = swift_task_alloc();
    v0[36] = v63;
    *v63 = v0;
    v64 = OUTLINED_FUNCTION_32_9(v63);
    v65 = v79;
  }

  return v65(v64);
}

uint64_t sub_1C969CC60()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1C969CE2C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 232);
  return v0;
}

uint64_t sub_1C969CE84()
{
  sub_1C969CE2C();

  return MEMORY[0x1EEE6BDC0](v0, 272, 7);
}

uint64_t sub_1C969CEB8()
{
  OUTLINED_FUNCTION_18();
  v2 = v0;
  v4 = v3;
  v1[38] = v5;
  v1[39] = v2;
  v1[40] = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  OUTLINED_FUNCTION_7(v6);
  v1[41] = OUTLINED_FUNCTION_12_4();
  v7 = type metadata accessor for NotificationSubscription.Location(0);
  OUTLINED_FUNCTION_7(v7);
  v1[42] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *v4;
  v1[43] = v8;
  v1[44] = v9;
  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C969CFA4()
{
  v34 = v0;
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_5_2();
    swift_once();
  }

  v1 = v0[43];
  v2 = v0[38];
  v3 = sub_1C96A6154();
  __swift_project_value_buffer(v3, qword_1EDB7AC90);
  sub_1C9489C0C(v2, v1, type metadata accessor for NotificationSubscription.Location);
  v4 = OUTLINED_FUNCTION_38();
  sub_1C9489C0C(v4, v5, type metadata accessor for NotificationSubscription.Location);
  v6 = sub_1C96A6134();
  v7 = sub_1C96A76A4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[44];
    v9 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v9 = 136447235;
    v10 = 0xE400000000000000;
    v11 = 1701736270;
    switch(v8)
    {
      case 0:
        break;
      case 1:
        v10 = 0xED00006E6F697461;
        v11 = OUTLINED_FUNCTION_38_9();
        break;
      case 2:
        v10 = 0xE600000000000000;
        v11 = 0x657265766553;
        break;
      case 3:
        v10 = 0x80000001C96D7D40;
        v11 = 0xD000000000000015;
        break;
      default:
        v10 = 0xE700000000000000;
        v11 = OUTLINED_FUNCTION_37_12();
        break;
    }

    v15 = v0[42];
    v16 = v0[43];
    v17 = sub_1C9484164(v11, v10, &v33);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2160;
    OUTLINED_FUNCTION_25();
    *(v9 + 14) = v18;
    *(v9 + 22) = 2081;
    v19 = *v16;
    v20 = v16[1];
    sub_1C96A53C4();
    sub_1C948EBA4(v16, type metadata accessor for NotificationSubscription.Location);
    v21 = sub_1C9484164(v19, v20, &v33);

    *(v9 + 24) = v21;
    *(v9 + 32) = 2160;
    OUTLINED_FUNCTION_25();
    *(v9 + 34) = v22;
    *(v9 + 42) = 2081;
    v23 = *(v15 + 16);
    v24 = *(v15 + 24);
    sub_1C96A53C4();
    sub_1C948EBA4(v15, type metadata accessor for NotificationSubscription.Location);
    v25 = sub_1C9484164(v23, v24, &v33);

    *(v9 + 44) = v25;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v26, v27, v28, v29, v9, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  else
  {
    v12 = v0[42];

    sub_1C948EBA4(v12, type metadata accessor for NotificationSubscription.Location);
    v13 = OUTLINED_FUNCTION_11();
    sub_1C948EBA4(v13, v14);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[45] = v30;
  *v30 = v31;
  v30[1] = sub_1C969D314;

  return sub_1C969D6A8();
}

uint64_t sub_1C969D314()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_15();
  *v5 = v4;
  *(v6 + 368) = v0;

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C969D40C()
{
  v20 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);
  v3 = *(v0 + 328);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  v6 = objc_autoreleasePoolPush();
  sub_1C969DEC4(v4, v3, v2, v5, (v0 + 296));
  if (v1)
  {
    v7 = *(v0 + 328);
    objc_autoreleasePoolPop(v6);
    sub_1C9470AFC(v7, &qword_1EC3A58D0);

    OUTLINED_FUNCTION_17();
  }

  else
  {
    v9 = *(v0 + 312);
    objc_autoreleasePoolPop(v6);
    swift_beginAccess();
    v10 = *(v9 + 64);
    v11 = *(v10 + 16);
    if (v11)
    {
      memcpy((v0 + 16), *(v0 + 304), 0x48uLL);
      sub_1C96A53C4();
      v12 = v11 - 1;
      for (i = (v10 + 40); ; i += 2)
      {
        v14 = *(v0 + 312);
        v15 = *(v0 + 320);
        v16 = *i;
        swift_getObjectType();
        *(v0 + 256) = v15;
        *(v0 + 264) = &off_1F490CF40;
        *(v0 + 232) = v14;
        OUTLINED_FUNCTION_28_0(__src);
        v17 = *(v16 + 8);
        swift_unknownObjectRetain();
        sub_1C96A3D04();
        sub_1C95087DC(v0 + 16, v0 + 160);
        OUTLINED_FUNCTION_39_12();
        v17();
        swift_unknownObjectRelease();
        memcpy((v0 + 88), __src, 0x48uLL);
        sub_1C953AEDC(v0 + 88);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 232);
        if (!v12)
        {
          break;
        }

        --v12;
      }
    }

    sub_1C9470AFC(*(v0 + 328), &qword_1EC3A58D0);

    OUTLINED_FUNCTION_17();
  }

  return v8();
}

uint64_t sub_1C969D630()
{
  OUTLINED_FUNCTION_30();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C969D6A8()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  OUTLINED_FUNCTION_7(v5);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for Location();
  v1[9] = v6;
  OUTLINED_FUNCTION_7(v6);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = sub_1C96A5E34();
  sub_1C96A5E24();
  OUTLINED_FUNCTION_14_40();
  sub_1C9487720(v7, v8);
  v10 = sub_1C96A7374();
  v1[14] = v10;
  v1[15] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C969D7EC, v10, v9);
}

uint64_t sub_1C969D7EC()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 232), *(*(v0 + 40) + 256));
  v1 = OUTLINED_FUNCTION_23_25();
  v3 = v2(v1);
  if (!v4)
  {

    sub_1C96A322C();
    v26 = swift_allocError();
    OUTLINED_FUNCTION_21_30(v26, v27);
    swift_willThrow();

    OUTLINED_FUNCTION_17();
    goto LABEL_22;
  }

  v5 = sub_1C94D48EC(*(v0 + 24), *(v0 + 32), v3, v4);
  v7 = v6;

  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = sub_1C94C1424();
  v9 = v8;
  v10 = v8 + 64;
  v11 = -1;
  v12 = -1 << *(v8 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v8 + 64);
  v14 = (63 - v12) >> 6;
  result = sub_1C96A53C4();
  v16 = 0;
  do
  {
    if (v13)
    {
      goto LABEL_11;
    }

    do
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v17 >= v14)
      {

LABEL_21:

        v28 = *(v0 + 16);
        v29 = type metadata accessor for NotificationSubscription(0);
        __swift_storeEnumTagSinglePayload(v28, 1, 1, v29);

        OUTLINED_FUNCTION_17();
LABEL_22:
        OUTLINED_FUNCTION_49_1();

        __asm { BRAA            X1, X16 }
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
    }

    while (!v13);
    v16 = v17;
LABEL_11:
    v18 = __clz(__rbit64(v13)) | (v16 << 6);
    v19 = (*(v9 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v9 + 56) + 40 * v18;
    *(v0 + 128) = *v22;
    *(v0 + 136) = *(v22 + 8);
    *(v0 + 144) = *(v22 + 16);
    *(v0 + 152) = *(v22 + 24);
    *(v0 + 176) = *(v22 + 32);
    *(v0 + 177) = *(v22 + 33);
    if (v20 == v5 && v7 == v21)
    {
      break;
    }

    v13 &= v13 - 1;
    result = sub_1C96A7DE4();
  }

  while ((result & 1) == 0);
  sub_1C96A53C4();
  sub_1C96A53C4();

  v24 = swift_task_alloc();
  *(v0 + 160) = v24;
  *v24 = v0;
  v24[1] = sub_1C969DB20;
  OUTLINED_FUNCTION_49_1();

  return sub_1C969C27C();
}

uint64_t sub_1C969DB20()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_23_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_25_0();
  *v5 = v4;
  *(v7 + 168) = v6;

  v8 = *(v1 + 120);
  v9 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1C969DC34, v9, v8);
}

uint64_t sub_1C969DC34()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);

  v4 = OUTLINED_FUNCTION_38();
  sub_1C96A16B0(v4, v5, v1, v6);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v2);
  v8 = *(v0 + 168);
  v9 = *(v0 + 152);
  if (EnumTagSinglePayload == 1)
  {
    v10 = *(v0 + 64);

    sub_1C9470AFC(v10, &qword_1EC3A5450);
  }

  else
  {
    v11 = *(v0 + 144);
    v12 = *(v0 + 72);
    v13 = *(v0 + 56);
    OUTLINED_FUNCTION_0_119();
    sub_1C949A8F4(v14, v15, v16);
    sub_1C96A16B0(v11, v9, v8, v13);

    OUTLINED_FUNCTION_23_1(v13, 1, v12);
    if (v17)
    {
      v18 = *(v0 + 72);
      OUTLINED_FUNCTION_3_67();
      sub_1C9489C0C(v19, v20, v21);
      v22 = OUTLINED_FUNCTION_24_25();
      OUTLINED_FUNCTION_23_1(v22, v23, v18);
      if (!v17)
      {
        sub_1C9470AFC(*(v0 + 56), &qword_1EC3A5450);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_119();
      sub_1C949A8F4(v24, v25, v26);
    }

    v27 = *(v0 + 88);
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);
    v30 = *(v0 + 48);
    v31 = *(v0 + 16);
    v32 = *(v0 + 176);
    v33 = *(v0 + 177);
    sub_1C9489C0C(*(v0 + 96), v28, type metadata accessor for Location);
    sub_1C9489C0C(v27, v30, type metadata accessor for Location);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
    NotificationSubscription.init(location:locationOverride:precipitation:severe:)(v28, v30, v32, v33, v31);

    sub_1C948EBA4(v27, type metadata accessor for Location);
    v34 = OUTLINED_FUNCTION_38();
    sub_1C948EBA4(v34, v35);
  }

  v36 = type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_44_11(v36);

  OUTLINED_FUNCTION_17();

  return v37();
}

void sub_1C969DEC4(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t *a5)
{
  v101 = a5;
  v103 = a4;
  v98 = type metadata accessor for NotificationSubscription.Location(0);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v99 = &v87 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v87 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v87 - v14;
  v16 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[32];
  v19 = a1[33];
  __swift_project_boxed_opaque_existential_1(a1 + 29, v20);
  v21 = (*(v19 + 8))(v20, v19);
  if (!v22)
  {
    sub_1C96A322C();
    v26 = swift_allocError();
    *v27 = 1;
    swift_willThrow();
LABEL_33:
    *v101 = v26;
    return;
  }

  v23 = v21;
  v24 = v22;
  sub_1C9470AA0(a2, v15, &qword_1EC3A58D0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1C9470AFC(v15, &qword_1EC3A58D0);
    v25 = v103;
  }

  else
  {
    sub_1C949A8F4(v15, v18, type metadata accessor for NotificationSubscription);
    v28 = v18[*(v16 + 24)];
    v29 = v18[*(v16 + 28)];
    v30 = v28 & 1;
    if (v29)
    {
      v31 = v28 & 1 | 2;
    }

    else
    {
      v31 = v28 & 1;
    }

    if (v29 == 2)
    {
      v31 = v30;
    }

    v25 = v103;
    if (v31 == a3)
    {

      if (qword_1EDB7AC88 != -1)
      {
        swift_once();
      }

      v32 = sub_1C96A6154();
      __swift_project_value_buffer(v32, qword_1EDB7AC90);
      v33 = sub_1C96A6134();
      v34 = sub_1C96A76A4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1C945E000, v33, v34, "No need to re-subscribe when the kind matches an existing subscription", v35, 2u);
        MEMORY[0x1CCA8E3D0](v35, -1, -1);
      }

      v36 = type metadata accessor for NotificationSubscription;
      v37 = v18;
LABEL_30:
      sub_1C948EBA4(v37, v36);
      return;
    }

    sub_1C948EBA4(v18, type metadata accessor for NotificationSubscription);
  }

  v38 = sub_1C969E8A4(a3, a2);
  v39 = sub_1C969E9B4(a3, a2);
  v40 = v25[1];
  v96 = *v25;
  v94 = v23;
  v41 = sub_1C94D48EC(v96, v40, v23, v24);
  v43 = v24;
  if (!v42)
  {
LABEL_25:

    v76 = v99;
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v77 = sub_1C96A6154();
    __swift_project_value_buffer(v77, qword_1EDB7AC90);
    sub_1C9489C0C(v25, v76, type metadata accessor for NotificationSubscription.Location);
    v78 = sub_1C96A6134();
    v79 = sub_1C96A7684();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v104 = v81;
      *v80 = 141558275;
      *(v80 + 4) = 1752392040;
      *(v80 + 12) = 2081;
      sub_1C9489C0C(v76, v97, type metadata accessor for NotificationSubscription.Location);
      v82 = sub_1C96A70A4();
      v84 = v83;
      sub_1C948EBA4(v76, type metadata accessor for NotificationSubscription.Location);
      v85 = sub_1C9484164(v82, v84, &v104);

      *(v80 + 14) = v85;
      _os_log_impl(&dword_1C945E000, v78, v79, "Failed to create KeyValueStoreNotificationSubscription from: %{private,mask.hash}s", v80, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      MEMORY[0x1CCA8E3D0](v81, -1, -1);
      MEMORY[0x1CCA8E3D0](v80, -1, -1);

      return;
    }

    v36 = type metadata accessor for NotificationSubscription.Location;
    v37 = v76;
    goto LABEL_30;
  }

  v44 = v41;
  v45 = v42;
  v95 = v43;
  sub_1C969EAC4(v25, v38, v39, &v104);
  v46 = v105;
  if (!v105)
  {

    goto LABEL_25;
  }

  v93 = v40;
  v47 = v104;
  v49 = v106;
  v48 = v107;
  v50 = v108;
  v51 = a1;
  v52 = v45;
  v53 = v44;
  v54 = HIBYTE(v108);
  v91 = v51;
  v55 = sub_1C94C1424();
  v109 = v47;
  v110 = v46;
  v111 = v49;
  v112 = v48;
  v113 = v50;
  v90 = v54;
  v114 = v54;
  sub_1C96A53C4();
  v97 = v47;
  v98 = v49;
  v99 = v48;
  sub_1C94AA6AC(v47, v46);
  swift_isUniquelyReferenced_nonNull_native();
  v104 = v55;
  v89 = v53;
  sub_1C950BC88();

  v92 = v104;
  v56 = v46;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v57 = sub_1C96A6154();
  __swift_project_value_buffer(v57, qword_1EDB7AC90);
  sub_1C9489C0C(v103, v100, type metadata accessor for NotificationSubscription.Location);
  sub_1C96A53C4();
  v58 = v97;
  sub_1C94AA6AC(v97, v56);
  v59 = v95;
  sub_1C96A53C4();
  v60 = sub_1C96A6134();
  v61 = v50;
  v62 = sub_1C96A76A4();

  v63 = v62;
  sub_1C94AA668(v58, v56);
  v103 = v60;
  if (os_log_type_enabled(v60, v62))
  {
    v64 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v115 = v88;
    *v64 = 141559811;
    *(v64 + 4) = 1752392040;
    *(v64 + 12) = 2081;
    v65 = v100;
    v67 = *(v100 + 16);
    v66 = *(v100 + 24);
    sub_1C96A53C4();
    sub_1C948EBA4(v65, type metadata accessor for NotificationSubscription.Location);
    v68 = sub_1C9484164(v67, v66, &v115);

    *(v64 + 14) = v68;
    *(v64 + 22) = 2160;
    *(v64 + 24) = 1752392040;
    *(v64 + 32) = 2081;
    v69 = sub_1C9484164(v89, v52, &v115);

    *(v64 + 34) = v69;
    *(v64 + 42) = 2160;
    *(v64 + 44) = 1752392040;
    *(v64 + 52) = 2081;
    v70 = sub_1C9484164(v94, v59, &v115);

    *(v64 + 54) = v70;
    *(v64 + 62) = 2160;
    *(v64 + 64) = 1752392040;
    *(v64 + 72) = 2081;
    v104 = v97;
    v105 = v56;
    v106 = v98;
    v107 = v99;
    LOBYTE(v108) = v61;
    HIBYTE(v108) = v90;
    v71 = sub_1C96A70A4();
    v73 = sub_1C9484164(v71, v72, &v115);

    *(v64 + 74) = v73;
    v74 = v103;
    _os_log_impl(&dword_1C945E000, v103, v63, "Subscribe to notification for location: %{private,mask.hash}s with hashed location id: %{private,mask.hash}s, salt: %{private,mask.hash}s, updated subscription: %{private,mask.hash}s", v64, 0x52u);
    v75 = v88;
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v75, -1, -1);
    MEMORY[0x1CCA8E3D0](v64, -1, -1);
  }

  else
  {

    sub_1C94AA668(v97, v56);

    sub_1C948EBA4(v100, type metadata accessor for NotificationSubscription.Location);
  }

  sub_1C969EBD4(v92);

  v86 = v102;
  sub_1C969EEA8(v96, v93);
  v26 = v86;
  if (v86)
  {
    goto LABEL_33;
  }
}

uint64_t sub_1C969E8A4(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  if (a1)
  {
    return 1;
  }

  sub_1C9470AA0(a2, &v10 - v5, &qword_1EC3A58D0);
  v7 = type metadata accessor for NotificationSubscription(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1C9470AFC(v6, &qword_1EC3A58D0);
    return 2;
  }

  else
  {
    v8 = v6[*(v7 + 24)];
    sub_1C948EBA4(v6, type metadata accessor for NotificationSubscription);
  }

  return v8;
}

uint64_t sub_1C969E9B4(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  if ((a1 & 2) != 0)
  {
    return 1;
  }

  sub_1C9470AA0(a2, &v10 - v5, &qword_1EC3A58D0);
  v7 = type metadata accessor for NotificationSubscription(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1C9470AFC(v6, &qword_1EC3A58D0);
    return 2;
  }

  else
  {
    v8 = v6[*(v7 + 28)];
    sub_1C948EBA4(v6, type metadata accessor for NotificationSubscription);
  }

  return v8;
}

double sub_1C969EAC4@<D0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v9 = v4[32];
  v10 = v4[33];
  __swift_project_boxed_opaque_existential_1(v4 + 29, v9);
  v11 = (*(v10 + 8))(v9, v10);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = sub_1C94D48EC(*a1, *(a1 + 8), v11, v12);
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      v19 = type metadata accessor for NotificationSubscription.Location(0);
      v20 = sub_1C94D48EC(*(a1 + *(v19 + 20)), *(a1 + *(v19 + 20) + 8), v13, v14);
      v22 = v21;

      if (v22)
      {
        *a4 = v17;
        *(a4 + 8) = v18;
        *(a4 + 16) = v20;
        *(a4 + 24) = v22;
        *(a4 + 32) = a2 | (a3 << 8);
        return result;
      }
    }
  }

  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_1C969EBD4(uint64_t a1)
{
  v2 = v1;
  sub_1C96A4204();
  swift_allocObject();
  sub_1C96A41F4();
  v12[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8860);
  sub_1C96A37E8(&qword_1EC3A8880, sub_1C96A386C);
  v4 = sub_1C96A41E4();
  v6 = v5;

  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  v12[0] = v4;
  v12[1] = v6;
  (*(v8 + 16))(v12, 0xD000000000000019, 0x80000001C96D9430, MEMORY[0x1E6969080], v7, v8);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  (*(v10 + 32))(v9, v10);
  return sub_1C9482F3C(v4, v6);
}

uint64_t sub_1C969EEA8(uint64_t a1, unint64_t a2)
{
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7AC90);
  sub_1C96A53C4();
  v5 = sub_1C96A6134();
  v6 = sub_1C96A76A4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    *(v7 + 14) = sub_1C9484164(a1, a2, &v12);
    _os_log_impl(&dword_1C945E000, v5, v6, "Invalidating fetch schedules for subscription %{private,mask.hash}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);
    MEMORY[0x1CCA8E3D0](v7, -1, -1);
  }

  sub_1C96A5444();
  v9 = v12;
  v10 = objc_autoreleasePoolPush();
  sub_1C96A2100(v9, a1, a2, &v12);
  objc_autoreleasePoolPop(v10);
  sub_1C96A5434();
}

uint64_t sub_1C969F06C()
{
  OUTLINED_FUNCTION_18();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v1[28] = v2;
  v1[29] = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  OUTLINED_FUNCTION_7(v7);
  v1[30] = OUTLINED_FUNCTION_12_4();
  v8 = type metadata accessor for NotificationSubscription(0);
  v1[31] = v8;
  OUTLINED_FUNCTION_7(v8);
  v9 = OUTLINED_FUNCTION_12_4();
  v10 = *v6;
  v1[32] = v9;
  v1[33] = v10;
  memcpy(v1 + 2, v4, 0x48uLL);
  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C969F15C()
{
  OUTLINED_FUNCTION_49();
  v18 = v0;
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_5_2();
    swift_once();
  }

  v1 = sub_1C96A6154();
  __swift_project_value_buffer(v1, qword_1EDB7AC90);
  sub_1C95087DC((v0 + 2), (v0 + 11));
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  sub_1C953AEDC((v0 + 2));
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[33];
    OUTLINED_FUNCTION_15_0();
    v5 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v5 = 136446723;
    v6 = 0xE400000000000000;
    v7 = 1701736270;
    switch(v4)
    {
      case 0:
        break;
      case 1:
        v6 = 0xED00006E6F697461;
        v7 = OUTLINED_FUNCTION_38_9();
        break;
      case 2:
        v6 = 0xE600000000000000;
        v7 = 0x657265766553;
        break;
      case 3:
        v6 = 0x80000001C96D7D40;
        v7 = 0xD000000000000015;
        break;
      default:
        v6 = 0xE700000000000000;
        v7 = OUTLINED_FUNCTION_37_12();
        break;
    }

    v8 = sub_1C9484164(v7, v6, &v17);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2160;
    OUTLINED_FUNCTION_25();
    *(v5 + 14) = v9;
    *(v5 + 22) = 2081;
    *(v5 + 24) = sub_1C9484164(v0[2], v0[3], &v17);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v10, v11, v12, v13, v5, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[34] = v14;
  *v14 = v15;
  v14[1] = sub_1C969F3D0;

  return sub_1C969D6A8();
}

uint64_t sub_1C969F3D0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_15();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C969F4C8()
{
  v31 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v3 = OUTLINED_FUNCTION_24_25();
  OUTLINED_FUNCTION_23_1(v3, v4, v2);
  if (v5)
  {
    sub_1C9470AFC(v1, &qword_1EC3A58D0);
  }

  else
  {
    v6 = v0[32];
    v7 = v0[33];
    OUTLINED_FUNCTION_2_86();
    sub_1C949A8F4(v1, v6, v8);
    v9 = *(v6 + *(v2 + 24));
    v10 = *(v6 + *(v2 + 28));
    v11 = v9 & 1;
    if (v10)
    {
      v12 = v9 & 1 | 2;
    }

    else
    {
      v12 = v9 & 1;
    }

    if (v10 == 2)
    {
      v12 = v11;
    }

    if ((v12 & v7) != 0)
    {
      v13 = v0[35];
      v14 = v0[32];
      v15 = v0[33];
      v16 = objc_autoreleasePoolPush();
      v30[0] = v15;
      sub_1C969F750(v14, v30);
      if (v13)
      {
        v17 = v0[32];
        objc_autoreleasePoolPop(v16);
        OUTLINED_FUNCTION_4_71();
        sub_1C948EBA4(v17, v18);

        OUTLINED_FUNCTION_17();
        goto LABEL_18;
      }

      v20 = v0[28];
      objc_autoreleasePoolPop(v16);
      swift_beginAccess();
      v21 = *(*(v20 + 64) + 16);
      if (v21)
      {
        v22 = (sub_1C96A53C4() + 40);
        do
        {
          v23 = v0[28];
          v24 = v0[29];
          v25 = *v22;
          swift_getObjectType();
          v0[23] = v24;
          v0[24] = &off_1F490CF40;
          v0[20] = v23;
          OUTLINED_FUNCTION_28_0(v30);
          v26 = *(v25 + 16);
          swift_unknownObjectRetain();
          sub_1C96A3D04();
          OUTLINED_FUNCTION_39_12();
          v26();
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 20));
          v22 += 2;
          --v21;
        }

        while (v21);
      }
    }

    OUTLINED_FUNCTION_4_71();
    sub_1C948EBA4(v27, v28);
  }

  OUTLINED_FUNCTION_17();
LABEL_18:

  return v19();
}

uint64_t sub_1C969F6E8()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C969F750(uint64_t *a1, uint64_t *a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v104 = &v90 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v95 = &v90 - v10;
  v97 = sub_1C96A61C4();
  v11 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v93 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  i = &v90 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v90 - v16;
  v102 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v102);
  v98 = (&v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v90 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v90 - v22);
  v24 = *a2;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v94 = v17;
  v96 = v11;
  v25 = sub_1C96A6154();
  v26 = __swift_project_value_buffer(v25, qword_1EDB7AC90);
  sub_1C9489C0C(a1, v23, type metadata accessor for NotificationSubscription);
  v100 = v26;
  v27 = sub_1C96A6134();
  v28 = sub_1C96A76A4();
  v29 = os_log_type_enabled(v27, v28);
  v105 = v3;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v114 = v31;
    *v30 = 136446723;
    v32 = v24;
    v91 = v24;
    v33 = 0xE400000000000000;
    v34 = 1701736270;
    switch(v32)
    {
      case 0:
        break;
      case 1:
        v33 = 0xED00006E6F697461;
        v34 = 0x7469706963657250;
        break;
      case 2:
        v33 = 0xE600000000000000;
        v34 = 0x657265766553;
        break;
      case 3:
        v33 = 0x80000001C96D7D40;
        v34 = 0xD000000000000015;
        break;
      default:
        v33 = 0xE700000000000000;
        v34 = 0x6E776F6E6B6E55;
        break;
    }

    v35 = sub_1C9484164(v34, v33, &v114);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2160;
    *(v30 + 14) = 1752392040;
    *(v30 + 22) = 2081;
    v36 = *v23;
    v24 = v23[1];
    sub_1C96A53C4();
    sub_1C948EBA4(v23, type metadata accessor for NotificationSubscription);
    v37 = sub_1C9484164(v36, v24, &v114);

    *(v30 + 24) = v37;
    _os_log_impl(&dword_1C945E000, v27, v28, "Disabling %{public}s notifications for subscription %{private,mask.hash}s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v31, -1, -1);
    MEMORY[0x1CCA8E3D0](v30, -1, -1);

    LOBYTE(v24) = v91;
  }

  else
  {

    sub_1C948EBA4(v23, type metadata accessor for NotificationSubscription);
  }

  v38 = v4[32];
  v39 = v4[33];
  __swift_project_boxed_opaque_existential_1(v4 + 29, v38);
  v40 = (*(v39 + 8))(v38, v39);
  if (!v41)
  {
    sub_1C96A322C();
    swift_allocError();
    *v66 = 1;
    return swift_willThrow();
  }

  v42 = v40;
  v43 = v41;
  v99 = v4[2];
  sub_1C96A5444();
  v103 = v114;
  v44 = sub_1C967683C(a1, v24);
  v45 = v24;
  v46 = v44;
  v47 = sub_1C9676884(a1, v45);
  v48 = a1[1];
  v91 = *a1;
  sub_1C94D48EC(v91, v48, v42, v43);
  v50 = v49;

  if (!v50)
  {
    goto LABEL_18;
  }

  sub_1C969EAC4(a1 + *(v102 + 20), v46, v47, &v114);
  v51 = *(&v114 + 1);
  if (!*(&v114 + 1))
  {

LABEL_18:
    v67 = v101;
    sub_1C9489C0C(a1, v101, type metadata accessor for NotificationSubscription);
    v68 = sub_1C96A6134();
    v69 = sub_1C96A7684();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v114 = v71;
      *v70 = 141558275;
      *(v70 + 4) = 1752392040;
      *(v70 + 12) = 2081;
      v72 = v98;
      sub_1C949A8F4(v67, v98, type metadata accessor for NotificationSubscription);
      v73 = *v72;
      v74 = v72[1];
      sub_1C96A53C4();
      sub_1C948EBA4(v72, type metadata accessor for NotificationSubscription);
      v75 = sub_1C9484164(v73, v74, &v114);

      *(v70 + 14) = v75;
      _os_log_impl(&dword_1C945E000, v68, v69, "Failed to create KeyValueStoreNotificationSubscription from: %{private,mask.hash}s", v70, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      MEMORY[0x1CCA8E3D0](v71, -1, -1);
      MEMORY[0x1CCA8E3D0](v70, -1, -1);
    }

    else
    {

      sub_1C948EBA4(v67, type metadata accessor for NotificationSubscription);
    }

LABEL_21:
    sub_1C96A5434();
  }

  v102 = v48;
  v52 = v116;
  v53 = v115;
  v54 = v114;
  v55 = sub_1C94C1424();
  v118 = v54;
  v119 = v51;
  v120 = v53;
  v121 = v52;
  swift_isUniquelyReferenced_nonNull_native();
  *&v114 = v55;
  sub_1C950BC88();

  sub_1C969EBD4(v114);

  v56 = v105;
  NotificationStore.fetchSchedules.getter();
  v57 = v56;
  if (v56)
  {
    goto LABEL_21;
  }

  sub_1C96A6314();

  *(&v115 + 1) = MEMORY[0x1E69E6158];
  *&v116 = MEMORY[0x1E69D62D8];
  *&v114 = v91;
  *(&v114 + 1) = v102;
  sub_1C96A53C4();
  v58 = i;
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v114);
  *(&v115 + 1) = MEMORY[0x1E69E6370];
  *&v116 = MEMORY[0x1E69D62E8];
  LOBYTE(v114) = 1;
  v59 = v93;
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v114);
  v60 = v94;
  sub_1C96A6214();
  v61 = *(v96 + 8);
  v62 = v59;
  v63 = v97;
  v61(v62, v97);
  v61(v58, v63);
  v64 = sub_1C96A63E4();
  v65 = v95;
  __swift_storeEnumTagSinglePayload(v95, 1, 1, v64);
  v76 = sub_1C96A62E4();

  sub_1C9470AFC(v65, &qword_1EC3A4B60);
  result = (v61)(v60, v63);
  v78 = 0;
  v93 = *(v76 + 16);
  v79 = (v76 + 40);
  for (i = v76; ; v76 = i)
  {
    if (v93 == v78)
    {

      goto LABEL_21;
    }

    if (v78 >= *(v76 + 16))
    {
      break;
    }

    v81 = v79[1];
    v80 = v79[2];
    v82 = v79[3];
    v83 = v79[4];
    v97 = v79;
    v84 = v79[5];
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    v102 = v80;
    sub_1C96A3D04();
    v101 = v82;
    sub_1C96A3D04();
    v100 = v83;
    sub_1C96A3D04();
    v98 = v84;
    sub_1C96A3D04();
    NotificationStore.fetchSchedules.getter();
    if (v57)
    {

      sub_1C96A5434();
    }

    v96 = v81;
    v95 = v78;
    sub_1C96A6304();

    result = sub_1C96A6354();
    v85 = *(&v106 + 1);
    if (!*(&v106 + 1))
    {
      goto LABEL_36;
    }

    v86 = *&v106;
    v87 = v104;
    sub_1C96A6354();
    v88 = sub_1C96A4A54();
    result = __swift_getEnumTagSinglePayload(v87, 1, v88);
    if (result == 1)
    {
      goto LABEL_37;
    }

    result = sub_1C96A6354();
    if (v113)
    {
      goto LABEL_34;
    }

    v89 = v112;
    result = sub_1C96A6354();
    if (!v111)
    {
      goto LABEL_35;
    }

    FetchScheduleEntity.init(id:date:gracePeriod:subscription:valid:)(v86, v85, v104, v110, v111, 0, &v114, v89);
    v106 = v114;
    v107 = v115;
    v108 = v116;
    v109 = v117;
    sub_1C96A62A4();
    v105 = 0;
    v94 = v107;

    v79 = (v97 + 56);
    v78 = v95 + 1;
    v57 = v105;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1C96A05B4()
{
  *(v1 + 400) = v0;
  OUTLINED_FUNCTION_8_2();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C96A05E0()
{
  OUTLINED_FUNCTION_30();
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_5_2();
    swift_once();
  }

  v1 = sub_1C96A6154();
  v0[51] = __swift_project_value_buffer(v1, qword_1EDB7AC90);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_16_2(&dword_1C945E000, v4, v5, "Unsubscribing from all notifications");
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  v0[47] = 3;
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[52] = v6;
  *v6 = v7;
  v6[1] = sub_1C96A0718;

  return sub_1C94C1210();
}

uint64_t sub_1C96A0718()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 424) = v4;
  *(v2 + 432) = v0;

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C96A0818()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[53];
  v2 = *(v1 + 16);
  v0[55] = v2;
  v0[56] = 0;
  if (v2)
  {
    if (*(v1 + 16))
    {
      v3 = type metadata accessor for NotificationSubscription(0);
      v4 = OUTLINED_FUNCTION_7(v3);
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v0[49] = 3;
      memcpy(v0 + 2, (v1 + *(v4 + 28) + v6), 0x48uLL);
      OUTLINED_FUNCTION_28_0(v0 + 11);
      sub_1C95087DC((v0 + 2), (v0 + 20));
      swift_task_alloc();
      OUTLINED_FUNCTION_35();
      v0[57] = v7;
      *v7 = v8;
      OUTLINED_FUNCTION_9_48(v7);

      sub_1C969F06C();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    OUTLINED_FUNCTION_17();

    v9();
  }
}

uint64_t sub_1C96A093C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_23_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_15();
  *v6 = v5;
  v3[58] = v0;

  if (v0)
  {
    memcpy(v3 + 29, v3 + 11, 0x48uLL);
    sub_1C953AEDC((v3 + 29));
  }

  else
  {
    memcpy(v3 + 38, v3 + 11, 0x48uLL);
    sub_1C953AEDC((v3 + 38));
  }

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C96A0A70()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[55];
  v2 = v0[56] + 1;
  v0[56] = v2;
  v3 = v0[53];
  if (v2 == v1)
  {

    OUTLINED_FUNCTION_17();

    v4();
  }

  else if (v2 >= *(v3 + 16))
  {
    __break(1u);
  }

  else
  {
    v5 = type metadata accessor for NotificationSubscription(0);
    v6 = OUTLINED_FUNCTION_9(v5);
    v9 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v8 + 72) * v2;
    v0[49] = 3;
    memcpy(v0 + 2, (v9 + *(v6 + 28)), 0x48uLL);
    OUTLINED_FUNCTION_28_0(v0 + 11);
    sub_1C95087DC((v0 + 2), (v0 + 20));
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[57] = v10;
    *v10 = v11;
    OUTLINED_FUNCTION_9_48();

    sub_1C969F06C();
  }
}

uint64_t sub_1C96A0BBC()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_23_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_25_0();
  *v5 = v4;
  *(v7 + 152) = v6;

  v8 = *(v1 + 128);
  v9 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1C96A0CD0, v9, v8);
}

uint64_t sub_1C96A0CD0()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 32);
  *(v0 + 50) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 64);
  *(v0 + 160) = MEMORY[0x1E69E7CC0];
  sub_1C96A3D04();
  if (v5)
  {
    v6 = 0;
LABEL_8:
    *(v0 + 168) = v5;
    *(v0 + 176) = v6;
    OUTLINED_FUNCTION_13_47(__clz(__rbit64(v5)) | (v6 << 6));
    sub_1C96A53C4();
    sub_1C96A53C4();
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    *(v0 + 200) = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_8_53(v8);

    return sub_1C96A1250(v10, v11, v12);
  }

  else
  {
    v7 = 0;
    while (((63 - v4) >> 6) - 1 != v7)
    {
      v6 = v7 + 1;
      v5 = *(v1 + 8 * v7++ + 72);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_74();
    v15 = *(v0 + 160);

    return v14(v15);
  }
}

uint64_t sub_1C96A0E70()
{
  OUTLINED_FUNCTION_30();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_15();
  *v3 = v2;

  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1C96A0FC4, v5, v4);
}

uint64_t sub_1C96A0FC4()
{
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_23_1(v1, 1, *(v0 + 72));
  if (v2)
  {
    sub_1C9470AFC(v1, &qword_1EC3A58D0);
    v3 = *(v0 + 176);
    v4 = (*(v0 + 168) - 1) & *(v0 + 168);
    if (!v4)
    {
      goto LABEL_9;
    }

LABEL_13:
    *(v0 + 168) = v4;
    *(v0 + 176) = v3;
    OUTLINED_FUNCTION_13_47(__clz(__rbit64(v4)) | (v3 << 6));
    sub_1C96A53C4();
    sub_1C96A53C4();
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    *(v0 + 200) = v17;
    *v17 = v18;
    v19 = OUTLINED_FUNCTION_8_53();

    return sub_1C96A1250(v19, v20, v21);
  }

  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  OUTLINED_FUNCTION_2_86();
  sub_1C949A8F4(v1, v5, v7);
  sub_1C9489C0C(v5, v6, type metadata accessor for NotificationSubscription);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 160);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_20:
    sub_1C94FB6E0();
    v9 = v25;
  }

  v10 = *(v9 + 16);
  if (v10 >= *(v9 + 24) >> 1)
  {
    sub_1C94FB6E0();
    v9 = v26;
  }

  v11 = *(v0 + 88);
  OUTLINED_FUNCTION_4_71();
  sub_1C948EBA4(v12, v13);
  *(v9 + 16) = v10 + 1;
  OUTLINED_FUNCTION_2_86();
  sub_1C949A8F4(v11, v14, v15);
  v3 = *(v0 + 176);
  v4 = (*(v0 + 168) - 1) & *(v0 + 168);
  *(v0 + 160) = v9;
  if (v4)
  {
    goto LABEL_13;
  }

  while (1)
  {
LABEL_9:
    v16 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v16 >= (((1 << *(v0 + 50)) + 63) >> 6))
    {
      break;
    }

    v4 = *(*(v0 + 136) + 8 * v16 + 64);
    ++v3;
    if (v4)
    {
      v3 = v16;
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_74();
  v24 = *(v0 + 160);

  return v23(v24);
}

uint64_t sub_1C96A1250(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = type metadata accessor for Location();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a2;
  *(v4 + 88) = v6;
  *(v4 + 96) = v7;
  *(v4 + 104) = *(a2 + 1);
  *(v4 + 120) = a2[3];
  *(v4 + 128) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1C96A1370, 0, 0);
}

void sub_1C96A1370()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  sub_1C96A16B0(*(v0 + 96), *(v0 + 104), *(v0 + 24), v2);
  OUTLINED_FUNCTION_23_1(v2, 1, v1);
  if (v21)
  {
    sub_1C9470AFC(*(v0 + 56), &qword_1EC3A5450);
    if (qword_1EDB7AC88 != -1)
    {
      OUTLINED_FUNCTION_5_2();
      swift_once();
    }

    v3 = sub_1C96A6154();
    __swift_project_value_buffer(v3, qword_1EDB7AC90);
    sub_1C96A53C4();
    sub_1C96A53C4();
    v4 = sub_1C96A6134();
    v5 = sub_1C96A7684();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 96);
      v6 = *(v0 + 104);
      v8 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_0();
      v9 = swift_slowAlloc();
      v42 = v9;
      *v8 = 141558275;
      OUTLINED_FUNCTION_25();
      *(v8 + 4) = v10;
      *(v8 + 12) = 2081;
      *(v8 + 14) = sub_1C9484164(v7, v6, &v42);
      _os_log_impl(&dword_1C945E000, v4, v5, "Failed to make subscription: %{private,mask.hash}s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0](v11);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0](v12);
    }
  }

  else
  {
    v13 = *(v0 + 112);
    v14 = *(v0 + 120);
    v15 = *(v0 + 64);
    v16 = *(v0 + 48);
    v17 = *(v0 + 24);
    OUTLINED_FUNCTION_0_119();
    sub_1C949A8F4(v18, v19, v20);
    sub_1C96A16B0(v13, v14, v17, v16);
    OUTLINED_FUNCTION_23_1(v16, 1, v15);
    if (v21)
    {
      v22 = *(v0 + 64);
      OUTLINED_FUNCTION_3_67();
      sub_1C9489C0C(v23, v24, v25);
      v26 = OUTLINED_FUNCTION_24_25();
      OUTLINED_FUNCTION_23_1(v26, v27, v22);
      if (!v21)
      {
        sub_1C9470AFC(*(v0 + 48), &qword_1EC3A5450);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_119();
      sub_1C949A8F4(v28, v29, v30);
    }

    v31 = *(v0 + 80);
    v32 = *(v0 + 88);
    v34 = *(v0 + 64);
    v33 = *(v0 + 72);
    v35 = *(v0 + 40);
    v36 = *(v0 + 16);
    v37 = *(v0 + 128);
    v38 = *(v0 + 129);
    sub_1C9489C0C(v32, v33, type metadata accessor for Location);
    sub_1C9489C0C(v31, v35, type metadata accessor for Location);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v34);
    NotificationSubscription.init(location:locationOverride:precipitation:severe:)(v33, v35, v37, v38, v36);
    sub_1C948EBA4(v31, type metadata accessor for Location);
    sub_1C948EBA4(v32, type metadata accessor for Location);
  }

  v39 = type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_44_11(v39);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_49_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C96A16B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a3;
  v96 = a2;
  v7 = type metadata accessor for LocationOfInterest();
  v8 = *(v7 - 8);
  v94 = v7;
  v95 = v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v97 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v89 = &v86 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v86 - v13;
  v14 = type metadata accessor for Location();
  v15 = *(v14 - 1);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v92 = &v86 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v86 - v21;
  v22 = v4[32];
  v23 = v4[33];
  __swift_project_boxed_opaque_existential_1(v4 + 29, v22);
  v24 = (*(v23 + 8))(v22, v23);
  if (!v25)
  {
    if (qword_1EDB7AC88 == -1)
    {
LABEL_29:
      v51 = sub_1C96A6154();
      __swift_project_value_buffer(v51, qword_1EDB7AC90);
      v52 = sub_1C96A6134();
      v53 = sub_1C96A7684();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_1C945E000, v52, v53, "Salt is missing when look up location by hashed id", v54, 2u);
        MEMORY[0x1CCA8E3D0](v54, -1, -1);
      }

      v55 = a4;
      v56 = 1;
LABEL_41:

      return __swift_storeEnumTagSinglePayload(v55, v56, 1, v14);
    }

LABEL_51:
    swift_once();
    goto LABEL_29;
  }

  v26 = v24;
  v27 = v25;
  v28 = sub_1C94D48EC(0x746E6572727563, 0xE700000000000000, v24, v25);
  if (v29)
  {
    if (v28 == a1 && v29 == v96)
    {
    }

    else
    {
      v31 = sub_1C96A7DE4();

      if ((v31 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v57 = v4[22];
    v58 = v4[23];
    __swift_project_boxed_opaque_existential_1(v4 + 19, v57);
    v59 = (*(v58 + 48))(v57, v58);
    if (v59)
    {
      v60 = v59;
      sub_1C96A4DE4();
      [v60 coordinate];
      v62 = v61;
      v64 = v63;
      v65 = v14[6];
      v66 = sub_1C96A4A54();
      __swift_storeEnumTagSinglePayload(a4 + v65, 1, 1, v66);
      v98 = 0x746E6572727563;
      v99 = 0xE700000000000000;
      MEMORY[0x1CCA8CB00](58, 0xE100000000000000);

      v67 = v98;
      v68 = v99;
      *(a4 + v14[11]) = 0;
      *a4 = 0x746E6572727563;
      *(a4 + 8) = 0xE700000000000000;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0xE000000000000000;
      *(a4 + 32) = v62;
      *(a4 + 40) = v64;
      *(a4 + 48) = 1;
      *(a4 + 56) = v67;
      *(a4 + 64) = v68;
      v69 = (a4 + v14[7]);
      *v69 = 0;
      v69[1] = 0;
      v70 = (a4 + v14[8]);
      *v70 = 0;
      v70[1] = 0;
      v71 = (a4 + v14[9]);
      *v71 = 0;
      v71[1] = 0;
      *(a4 + v14[10]) = xmmword_1C96BBFB0;
    }

    else
    {
      if (qword_1EDB7AC88 != -1)
      {
        swift_once();
      }

      v72 = sub_1C96A6154();
      __swift_project_value_buffer(v72, qword_1EDB7AC90);
      v73 = sub_1C96A6134();
      v74 = sub_1C96A7684();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1C945E000, v73, v74, "Current location is missing return a mock location", v75, 2u);
        MEMORY[0x1CCA8E3D0](v75, -1, -1);
      }

      sub_1C95FE630(a4);
    }

    v55 = a4;
    v56 = 0;
    goto LABEL_41;
  }

LABEL_8:
  v87 = v14;
  v88 = a4;
  v32 = *(v93 + 16);
  if (!v32)
  {
LABEL_17:
    v39 = v4[27];
    v40 = v4[28];
    __swift_project_boxed_opaque_existential_1(v4 + 24, v39);
    v41 = (*(v40 + 8))(v39, v40);
    v42 = v41;
    if (!*(v41 + 16))
    {
LABEL_27:

      v49 = v88;
      v50 = 1;
      return __swift_storeEnumTagSinglePayload(v49, v50, 1, v87);
    }

    a4 = *(v41 + 16);
    v43 = 0;
    v14 = (v41 + ((*(v95 + 80) + 32) & ~*(v95 + 80)));
    while (v43 < *(v42 + 16))
    {
      v44 = v97;
      sub_1C9489C0C(v14 + *(v95 + 72) * v43, v97, type metadata accessor for LocationOfInterest);
      v45 = sub_1C94D48EC(*(v44 + *(v94 + 20)), *(v44 + *(v94 + 20) + 8), v26, v27);
      if (v46)
      {
        if (v45 == a1 && v46 == v96)
        {

LABEL_47:

          v83 = v89;
          sub_1C949A8F4(v97, v89, type metadata accessor for LocationOfInterest);
          v84 = v83;
          v85 = v90;
          sub_1C949A8F4(v84, v90, type metadata accessor for LocationOfInterest);
          v82 = v88;
          sub_1C9489C0C(v85 + *(v94 + 20), v88, type metadata accessor for Location);
          sub_1C948EBA4(v85, type metadata accessor for LocationOfInterest);
          goto LABEL_48;
        }

        v48 = sub_1C96A7DE4();

        if (v48)
        {
          goto LABEL_47;
        }
      }

      ++v43;
      sub_1C948EBA4(v97, type metadata accessor for LocationOfInterest);
      if (a4 == v43)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  v33 = v93 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v34 = *(v15 + 72);
  while (1)
  {
    sub_1C9489C0C(v33, v18, type metadata accessor for Location);
    v35 = sub_1C94D48EC(*v18, *(v18 + 1), v26, v27);
    if (!v36)
    {
      goto LABEL_16;
    }

    if (v35 == a1 && v36 == v96)
    {
      break;
    }

    v38 = sub_1C96A7DE4();

    if (v38)
    {
      goto LABEL_45;
    }

LABEL_16:
    sub_1C948EBA4(v18, type metadata accessor for Location);
    v33 += v34;
    if (!--v32)
    {
      goto LABEL_17;
    }
  }

LABEL_45:

  v77 = v18;
  v78 = v92;
  sub_1C949A8F4(v77, v92, type metadata accessor for Location);
  v79 = v78;
  v80 = v91;
  sub_1C949A8F4(v79, v91, type metadata accessor for Location);
  v81 = v80;
  v82 = v88;
  sub_1C949A8F4(v81, v88, type metadata accessor for Location);
LABEL_48:
  v49 = v82;
  v50 = 0;
  return __swift_storeEnumTagSinglePayload(v49, v50, 1, v87);
}

void sub_1C96A1F20(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 64);
  v5 = *(v4 + 16);
  sub_1C96A53C4();
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v4 + 32 + 16 * v6);
  while (1)
  {
    if (v5 == v6)
    {

      *(v2 + 64) = v7;

      return;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    ++v6;
    v9 = v8 + 2;
    v10 = *v8;
    v8 += 2;
    if (v10 != a1)
    {
      v11 = *(v9 - 1);
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C9522C18();
      }

      v12 = *(v7 + 16);
      if (v12 >= *(v7 + 24) >> 1)
      {
        sub_1C9522C18();
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_1C96A2064()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  (*(v2 + 24))(0xD000000000000019, 0x80000001C96D9430, v1, v2);
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v4 = OUTLINED_FUNCTION_25_2();
  return v5(v4, v3);
}

uint64_t sub_1C96A2100(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = a4;
  *(&v50 + 1) = a3;
  *&v50 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &i - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &i - v10;
  v12 = sub_1C96A61C4();
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &i - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &i - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &i - v19;
  result = NotificationStore.fetchSchedules.getter();
  v22 = v4;
  if (v4)
  {
LABEL_2:
    *v44 = v22;
  }

  else
  {
    v51 = v8;
    v43 = a1;
    v49 = sub_1C96A6314();

    *(&v63 + 1) = MEMORY[0x1E69E6158];
    *&v64 = MEMORY[0x1E69D62D8];
    v62 = v50;
    sub_1C96A53C4();
    sub_1C96A6224();
    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
    *(&v63 + 1) = MEMORY[0x1E69E6370];
    *&v64 = MEMORY[0x1E69D62E8];
    LOBYTE(v62) = 1;
    sub_1C96A6224();
    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
    sub_1C96A6214();
    v23 = v53;
    v24 = *(v52 + 8);
    v24(v14, v53);
    v24(v17, v23);
    v25 = sub_1C96A63E4();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v25);
    v26 = sub_1C96A62E4();
    v52 = 0;
    v27 = v26;

    sub_1C9470AFC(v11, &qword_1EC3A4B60);
    result = (v24)(v20, v23);
    v28 = 0;
    v42 = *(v27 + 16);
    v29 = (v27 + 40);
    for (i = v27; ; v27 = i)
    {
      if (v42 == v28)
      {
      }

      v30 = v52;
      if (v28 >= *(v27 + 16))
      {
        break;
      }

      v32 = *(v29 - 1);
      v31 = *v29;
      v33 = v29[1];
      v34 = v29[2];
      v48 = v29;
      v35 = v29[5];
      sub_1C96A3D04();
      *(&v50 + 1) = v31;
      sub_1C96A3D04();
      *&v50 = v33;
      sub_1C96A3D04();
      v53 = v34;
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      v49 = v35;
      sub_1C96A3D04();
      NotificationStore.fetchSchedules.getter();
      v22 = v30;
      if (v30)
      {

        goto LABEL_2;
      }

      v46 = v28;
      sub_1C96A6304();

      v47 = v32;
      result = sub_1C96A6354();
      v36 = *(&v54 + 1);
      if (!*(&v54 + 1))
      {
        goto LABEL_17;
      }

      v37 = *&v54;
      v38 = v51;
      sub_1C96A6354();
      v39 = sub_1C96A4A54();
      result = __swift_getEnumTagSinglePayload(v38, 1, v39);
      if (result == 1)
      {
        goto LABEL_18;
      }

      result = sub_1C96A6354();
      if (v61)
      {
        goto LABEL_15;
      }

      v40 = v60;
      result = sub_1C96A6354();
      if (!v59)
      {
        goto LABEL_16;
      }

      FetchScheduleEntity.init(id:date:gracePeriod:subscription:valid:)(v37, v36, v51, v58, v59, 0, &v62, v40);
      v54 = v62;
      v55 = v63;
      v56 = v64;
      v57 = v65;
      sub_1C96A62A4();
      v52 = 0;
      v45 = v55;

      v29 = v48 + 7;
      v28 = v46 + 1;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C96A284C()
{
  v1 = v0;
  v2 = v0[32];
  v3 = v0[33];
  __swift_project_boxed_opaque_existential_1(v0 + 29, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v5)
  {
    v6 = sub_1C94D48EC(0xD000000000000010, 0x80000001C96D9410, v4, v5);
    v8 = v7;

    v9 = v1[6];
    v10 = v1[7];
    __swift_project_boxed_opaque_existential_1(v1 + 3, v9);
    v20[0] = v6;
    v20[1] = v8;
    v11 = *(v10 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430);
    v11(v20, 0xD000000000000010, 0x80000001C96D9410, v12, v9, v10);
  }

  else
  {
    if (qword_1EDB7AC88 != -1)
    {
      OUTLINED_FUNCTION_5_2();
      swift_once();
    }

    v14 = sub_1C96A6154();
    __swift_project_value_buffer(v14, qword_1EDB7AC90);
    v15 = sub_1C96A6134();
    v16 = sub_1C96A7684();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C945E000, v15, v16, "No salt found when setting up verification data", v17, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }

    sub_1C96A322C();
    v18 = swift_allocError();
    OUTLINED_FUNCTION_21_30(v18, v19);
    return swift_willThrow();
  }
}

uint64_t sub_1C96A2A44(uint64_t a1, uint64_t a2)
{
  v5 = v2[32];
  v6 = v2[33];
  __swift_project_boxed_opaque_existential_1(v2 + 29, v5);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v9 = *(v6 + 16);
  sub_1C96A3D04();
  sub_1C96A3D04();
  v9(sub_1C96A3220, v8, v5, v6);
}

void sub_1C96A2B44(char a1, void *a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C96A2C0C(a1 & 1, a2, a4);
  }

  else
  {
    sub_1C95EB204();
    v7 = swift_allocError();
    *v8 = 1;
    a4();
  }
}

void sub_1C96A2C0C(char a1, id a2, void (*a3)(void))
{
  if (!a2)
  {
    if ((a1 & 1) == 0 || (v8 = v3[32], v9 = v3[33], __swift_project_boxed_opaque_existential_1(v3 + 29, v8), v10 = (*(v9 + 8))(v8, v9), !v11))
    {
      sub_1C96A322C();
      v23 = swift_allocError();
      *v24 = 1;
      a3();
      v7 = v23;
      goto LABEL_14;
    }

    v12 = v10;
    v13 = v11;
    v14 = v3[6];
    v15 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v14);
    (*(v15 + 8))(&v27, 0xD000000000000010, 0x80000001C96D9410, MEMORY[0x1E69E6158], v14, v15);
    v16 = v28;
    if (v28 && (v17 = v27, v18 = sub_1C94D48EC(0xD000000000000010, 0x80000001C96D9410, v12, v13), v20 = v19, , v20))
    {
      if (v17 == v18 && v16 == v20)
      {

LABEL_20:
        (a3)(0);
        return;
      }

      v22 = sub_1C96A7DE4();

      if (v22)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    sub_1C96A322C();
    v25 = swift_allocError();
    *v26 = 2;
    a3();

    return;
  }

  v6 = a2;
  (a3)(a2);
  v7 = a2;
LABEL_14:
}

uint64_t sub_1C96A2EB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return sub_1C969CEB8();
}

uint64_t sub_1C96A2F5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0C0C;

  return sub_1C969F06C();
}

uint64_t sub_1C96A3004()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0C0C;

  return sub_1C96A05B4();
}

uint64_t sub_1C96A3094()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return sub_1C969D6A8();
}

uint64_t sub_1C96A3148(uint64_t a1)
{
  sub_1C96A1F20(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C96A31A8()
{
  sub_1C96A2064();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1C96A322C()
{
  result = qword_1EC3A8858;
  if (!qword_1EC3A8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8858);
  }

  return result;
}

unint64_t *sub_1C96A3280(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1C94C17C8(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1C96A3308(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Location();
  v9 = OUTLINED_FUNCTION_9(v8);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v42 - v13;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (*(a4 + 16) == a3)
  {
    sub_1C96A3D04();
    return a4;
  }

  v44 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8890);
  OUTLINED_FUNCTION_25_2();
  result = sub_1C96A7BD4();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v18 = result + 64;
  v19 = v44;
  v43 = a4;
  while (v16)
  {
    v20 = __clz(__rbit64(v16));
    v47 = (v16 - 1) & v16;
LABEL_16:
    v23 = (*(a4 + 48) + 16 * (v20 | (v17 << 6)));
    v25 = *v23;
    v24 = v23[1];
    v26 = v45;
    v48 = *(v46 + 72);
    OUTLINED_FUNCTION_3_67();
    sub_1C9489C0C(v27, v26, v28);
    OUTLINED_FUNCTION_0_119();
    sub_1C949A8F4(v26, v19, v29);
    sub_1C96A7EE4();
    sub_1C96A53C4();
    sub_1C96A7144();
    result = sub_1C96A7F24();
    v30 = -1 << *(v15 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      v19 = v44;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v18 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v19 = v44;
LABEL_25:
    *(v18 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    v38 = (*(v15 + 48) + 16 * v33);
    *v38 = v25;
    v38[1] = v24;
    OUTLINED_FUNCTION_0_119();
    result = sub_1C949A8F4(v19, v39, v40);
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v43;
    v16 = v47;
    if (!a3)
    {
      return v15;
    }
  }

  v21 = v17;
  while (1)
  {
    v17 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v22 = a1[v17];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v47 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C96A3610(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  a4(0);
  sub_1C9487720(a5, a6);
  return sub_1C96A6E44();
}

unint64_t sub_1C96A36E4()
{
  result = qword_1EC3A8870;
  if (!qword_1EC3A8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8870);
  }

  return result;
}

uint64_t sub_1C96A37E8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A8860);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C96A386C()
{
  result = qword_1EC3A8888;
  if (!qword_1EC3A8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A8888);
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