uint64_t static Settings.HomeAndWork.homeAndWorkLabelEnabled.getter()
{
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7AA60 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  return v1;
}

uint64_t sub_1C94CAB74(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
    sub_1C96A53C4();
  }

  sub_1C96A53C4();
  return v5;
}

uint64_t sub_1C94CABDC()
{
  v0 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = (v9 - v8);
  *v10 = 0xD000000000000017;
  v10[1] = 0x80000001C96CEEC0;
  (*(v11 + 104))(v9 - v8, *MEMORY[0x1E69D6E98]);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E88], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7AA68 = result;
  return result;
}

uint64_t sub_1C94CAD90()
{
  v40 = sub_1C96A4CF4();
  v0 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1C96A4D14();
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_1C96A4A54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v43 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  sub_1C96A5954();
  v42 = v15;
  sub_1C96A5944();
  v16 = 0;
  v36 = *MEMORY[0x1E6969A48];
  v34 = (v0 + 8);
  v35 = (v0 + 104);
  v17 = (v2 + 8);
  v18 = (v8 + 32);
  v32 = (v8 + 16);
  v33 = v17;
  v41 = (v8 + 8);
  v19 = MEMORY[0x1E69E7CC0];
  while (v16 != 10)
  {
    v20 = v37;
    sub_1C96A4CE4();
    v22 = v39;
    v21 = v40;
    (*v35)(v39, v36, v40);
    sub_1C96A4CC4();
    (*v34)(v22, v21);
    (*v33)(v20, v38);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_1C9505BC8(v6);
      if (qword_1EDB7ACB0 != -1)
      {
        swift_once();
      }

      v27 = sub_1C96A6154();
      __swift_project_value_buffer(v27, qword_1EDB7ACB8);
      v28 = sub_1C96A6134();
      v29 = sub_1C96A7684();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1C945E000, v28, v29, "Failed to generate date", v30, 2u);
        MEMORY[0x1CCA8E3D0](v30, -1, -1);
      }

      break;
    }

    v23 = *v18;
    (*v18)(v13, v6, v7);
    (*v32)(v43, v13, v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C94CB2F4();
      v19 = v25;
    }

    v24 = *(v19 + 16);
    if (v24 >= *(v19 + 24) >> 1)
    {
      sub_1C94CB2F4();
      v19 = v26;
    }

    (*(v8 + 8))(v13, v7);
    *(v19 + 16) = v24 + 1;
    v23((v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24), v43, v7);
    ++v16;
  }

  (*v41)(v42, v7);
  return v19;
}

uint64_t static SavedLocationsManager.maxAllowedLocationsCount.getter()
{
  if (qword_1EC3A46B8 != -1)
  {
    OUTLINED_FUNCTION_79_1();
  }

  return qword_1EC3A5F48;
}

void sub_1C94CB2F4()
{
  OUTLINED_FUNCTION_1_8();
  if (v4)
  {
    OUTLINED_FUNCTION_0_7();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_15_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_23_5(v2, v5, &qword_1EC3A4CA0, &unk_1C96AADF8);
  OUTLINED_FUNCTION_17_7();
  sub_1C96A4A54();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_12_6();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1C94CB3BC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
  }
}

void LocationModel.coalesceLocation.getter()
{
  OUTLINED_FUNCTION_103();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  OUTLINED_FUNCTION_7(v6);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_35_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  OUTLINED_FUNCTION_7(v8);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21_1();
  v10 = type metadata accessor for LocationModelData(0);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_27_7();
  v12 = type metadata accessor for SavedLocation();
  v13 = OUTLINED_FUNCTION_7(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v16 = v15 - v14;
  type metadata accessor for CurrentLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14();
  type metadata accessor for LocationModel(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_2_31();
  sub_1C949E000();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5948);
    OUTLINED_FUNCTION_6_22();
    sub_1C94A8124();
    OUTLINED_FUNCTION_7_17();
    sub_1C94A8124();
    sub_1C94C29E4(v2, v0);
    type metadata accessor for LocationOfInterest();
    OUTLINED_FUNCTION_14_16(v0);
    if (v19)
    {
      sub_1C9470AFC(v0, &qword_1EC3A5930);
      v20 = type metadata accessor for Location();
      __swift_storeEnumTagSinglePayload(v1, 1, 1, v20);
      SavedLocation.location.getter();
      OUTLINED_FUNCTION_0_43();
      sub_1C949A950(v2, v21);
      OUTLINED_FUNCTION_1_31();
      sub_1C949A950(v16, v22);
      OUTLINED_FUNCTION_14_16(v1);
      if (!v19)
      {
        sub_1C9470AFC(v1, &qword_1EC3A5450);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_43();
      sub_1C949A950(v2, v24);
      OUTLINED_FUNCTION_1_31();
      sub_1C949A950(v16, v25);
      OUTLINED_FUNCTION_17_17();
      sub_1C949E000();
      OUTLINED_FUNCTION_12_19();
      sub_1C949A950(v0, v26);
      v27 = type metadata accessor for Location();
      __swift_storeEnumTagSinglePayload(v1, 0, 1, v27);
      OUTLINED_FUNCTION_4_22();
      sub_1C94A8124();
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v27);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_21();
    sub_1C94A8124();
    OUTLINED_FUNCTION_41_0();
    if (swift_getEnumCaseMultiPayload() > 2)
    {
      v23 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_4_22();
      sub_1C94A8124();
      v23 = 0;
    }

    type metadata accessor for Location();
    v28 = OUTLINED_FUNCTION_43_4();
    __swift_storeEnumTagSinglePayload(v28, v23, 1, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5940);
    OUTLINED_FUNCTION_0_43();
    sub_1C949A950(v3 + v30, v31);
  }

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C94CB778()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7920);
  sub_1C96A6024();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C96BA7C0;
  v1 = MEMORY[0x1E69E18B8];
  sub_1C94CB8FC(MEMORY[0x1E69E1870], MEMORY[0x1E69E18B8]);
  v2 = MEMORY[0x1E69E18B0];
  sub_1C94CB8FC(MEMORY[0x1E69E1888], MEMORY[0x1E69E18B0]);
  sub_1C94CB8FC(MEMORY[0x1E69E1878], v1);
  sub_1C94CB8FC(MEMORY[0x1E69E1890], v1);
  sub_1C94CB8FC(MEMORY[0x1E69E1880], v2);
  sub_1C94CB8FC(MEMORY[0x1E69E1868], v1);
  return v0;
}

uint64_t sub_1C94CB8FC(unsigned int *a1, unsigned int *a2)
{
  v4 = sub_1C96A5BC4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  sub_1C96A5B34();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  (*(v14 + 104))(v13 - v12, *a1);
  (*(v6 + 104))(v10, *a2, v4);
  return sub_1C96A6014();
}

uint64_t sub_1C94CBA88@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A78F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v29 - v4;
  v30 = sub_1C96A5AD4();
  v6 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v29 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v29 - v16;
  v18 = sub_1C96A5FF4();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C94CA718(v20);
  result = sub_1C94CAB74(&OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder____lazy_storage___nextDays, sub_1C94CAD90);
  if (*(result + 16))
  {
    v22 = result;
    v23 = sub_1C96A4A54();
    v29[1] = v20;
    v24 = v8;
    v25 = v23;
    (*(*(v23 - 8) + 16))(v17, v22 + ((*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80)), v23);

    v29[0] = a1;
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v25);
    v26 = OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_currentWeatherCondition;
    swift_beginAccess();
    (*(v6 + 16))(v24, v1 + v26, v30);
    v27 = *MEMORY[0x1E69E1898];
    v28 = sub_1C96A5B44();
    (*(*(v28 - 8) + 104))(v5, v27, v28);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v28);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v25);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v25);
    return sub_1C96A57D4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Location.Identifier.name.getter()
{
  v1 = *(v0 + 16);
  sub_1C96A53C4();
  return v1;
}

void sub_1C94CBEDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18 - v2;
  v19 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Location();
  __swift_allocate_value_buffer(v9, qword_1EDB7ADF8);
  v10 = __swift_project_value_buffer(v9, qword_1EDB7ADF8);
  if (qword_1EDB7AB08 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDB94A58;
  v12 = sub_1C96A4534();
  v14 = v13;

  sub_1C96A4DE4();
  v15 = sub_1C96A4A54();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v15);
  v20 = 0x746E6572727563;
  v21 = 0xE700000000000000;
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
  MEMORY[0x1CCA8CB00](v12, v14);

  v16 = v20;
  v17 = v21;
  *(v10 + v9[11]) = 0;
  *v10 = 0x746E6572727563;
  *(v10 + 8) = 0xE700000000000000;
  *(v10 + 16) = v12;
  *(v10 + 24) = v14;
  *(v10 + 32) = xmmword_1C96AED90;
  *(v10 + 48) = 1;
  *(v10 + 56) = v16;
  *(v10 + 64) = v17;
  (*(v5 + 32))(v10 + v9[5], v8, v19);
  sub_1C948E818(v3, v10 + v9[6]);
  OUTLINED_FUNCTION_16_11(v9[7]);
  OUTLINED_FUNCTION_16_11(v9[8]);
  OUTLINED_FUNCTION_16_11(v9[9]);
  OUTLINED_FUNCTION_16_11(v9[10]);
}

uint64_t sub_1C94CC180@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_1C96A5FF4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C96A59E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1C94CC3D0(v8, v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C94CD324();
      v9 = v11;
    }

    v10 = *(v9 + 16);
    if (v10 >= *(v9 + 24) >> 1)
    {
      sub_1C94CD324();
      v9 = v12;
    }

    ++v8;
    *(v9 + 16) = v10 + 1;
    (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v7, v4);
  }

  while (v8 != 10);
  sub_1C94CA718(v3);
  return sub_1C96A5AE4();
}

uint64_t static Location.current.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDB7ADF0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Location();
  v3 = __swift_project_value_buffer(v2, qword_1EDB7ADF8);

  return sub_1C9489760(v3, a1);
}

uint64_t sub_1C94CC3D0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7900);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v70 - v5;
  v7 = sub_1C96A5C04();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v78 = v70 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A78F8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v88 = v70 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v77 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v76 = v70 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v75 = v70 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v74 = v70 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v73 = v70 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v87 = v70 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v86 = v70 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v85 = v70 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v84 = v70 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v83 = v70 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v82 = v70 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v81 = v70 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v91 = v70 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v90 = v70 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7908);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v89 = v70 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7158);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v46 = v70 - v45;
  v47 = sub_1C96A4A54();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = v70 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v2;
  result = sub_1C94CAB74(&OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder____lazy_storage___nextDays, sub_1C94CAD90);
  v92 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(result + 16) <= v92)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v70[2] = v10;
  v71 = v7;
  v72 = v6;
  v54 = *(v48 + 16);
  v52 = v48 + 16;
  v53 = v54;
  v55 = (*(v52 + 64) + 32) & ~*(v52 + 64);
  v56 = v92;
  v57 = *(v52 + 56) * v92;
  v70[1] = v50;
  v54(v50, result + v55 + v57, v47);

  v58 = sub_1C96A5AD4();
  v70[0] = v46;
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v58);
  v59 = *MEMORY[0x1E69E19A0];
  v60 = sub_1C96A6004();
  v61 = v89;
  (*(*(v60 - 8) + 104))(v89, v59, v60);
  v62 = v88;
  __swift_storeEnumTagSinglePayload(v61, 0, 1, v60);
  __swift_storeEnumTagSinglePayload(v90, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v91, 1, 1, v47);
  v63 = sub_1C96A5DD4();
  result = __swift_storeEnumTagSinglePayload(v62, 1, 1, v63);
  v64 = *(v80 + OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder____lazy_storage___nextDays);
  if (*(v64 + 16) > v56)
  {
    v65 = v64 + v55;
    v66 = v81;
    v53(v81, v64 + v55 + v57, v47);
    __swift_storeEnumTagSinglePayload(v66, 0, 1, v47);
    v67 = v65 + v57;
    v68 = v82;
    v53(v82, v67, v47);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v47);
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v47);
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v47);
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v47);
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v47);
    __swift_storeEnumTagSinglePayload(v87, 1, 1, v47);
    __swift_storeEnumTagSinglePayload(v73, 1, 1, v47);
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v47);
    __swift_storeEnumTagSinglePayload(v75, 1, 1, v47);
    __swift_storeEnumTagSinglePayload(v76, 1, 1, v47);
    __swift_storeEnumTagSinglePayload(v77, 1, 1, v47);
    v69 = v92;
    sub_1C94CCC98(v92);
    sub_1C94CCFC8(v69);
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v71);
    return sub_1C96A59D4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C94CCC98(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A78F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_1C96A5AD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7910);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = *MEMORY[0x1E69E1820];
  v14 = sub_1C96A59F4();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
  result = swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v16 = *(v1 + 40);
    if (*(v16 + 16) > a1)
    {
      (*(v7 + 16))(v9, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a1, v6);
      v17 = *MEMORY[0x1E69E1920];
      v18 = sub_1C96A5DD4();
      (*(*(v18 - 8) + 104))(v5, v17, v18);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v18);
      return sub_1C96A5BF4();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C94CCFC8(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A78F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_1C96A5AD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7910);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = *MEMORY[0x1E69E1828];
  v14 = sub_1C96A59F4();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
  result = swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v16 = *(v1 + 48);
    if (*(v16 + 16) > a1)
    {
      (*(v7 + 16))(v9, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a1, v6);
      v17 = *MEMORY[0x1E69E1920];
      v18 = sub_1C96A5DD4();
      (*(*(v18 - 8) + 104))(v5, v17, v18);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v18);
      return sub_1C96A5BF4();
    }
  }

  __break(1u);
  return result;
}

uint64_t Location.Identifier.Kind.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x746E6572727563;
  }

  else
  {
    return 0x6465766173;
  }
}

void sub_1C94CD324()
{
  OUTLINED_FUNCTION_1_8();
  if (v4)
  {
    OUTLINED_FUNCTION_0_7();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_15_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_23_5(v2, v5, &qword_1EC3A4CB0, &unk_1C96AAE08);
  OUTLINED_FUNCTION_17_7();
  sub_1C96A59E4();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_12_6();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1C94CD3EC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
  }
}

uint64_t sub_1C94CD40C()
{
  v0 = sub_1C96A5FF4();
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  v4 = v3 - v2;
  v5 = sub_1C96A5A34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = v10 - v9;
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1C94CD5C4(v12, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C94CDF30();
      v13 = v15;
    }

    v14 = *(v13 + 16);
    if (v14 >= *(v13 + 24) >> 1)
    {
      sub_1C94CDF30();
      v13 = v16;
    }

    ++v12;
    *(v13 + 16) = v14 + 1;
    (*(v7 + 32))(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v11, v5);
  }

  while (v12 != 264);
  sub_1C94CA718(v4);
  return sub_1C96A5B94();
}

uint64_t sub_1C94CD5C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A78F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v23 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A78F8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_1C96A5AD4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C96A4A54();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C94CAB74(&OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder____lazy_storage___nextHours, sub_1C94CD9B4);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(result + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  (*(v14 + 16))(v16, result + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * a1, v13);

  result = swift_beginAccess();
  v18 = *(v2 + 56);
  if (*(v18 + 16) > a1)
  {
    (*(v10 + 16))(v12, v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a1, v9);
    v19 = *MEMORY[0x1E69E1920];
    v20 = sub_1C96A5DD4();
    (*(*(v20 - 8) + 104))(v8, v19, v20);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v20);
    v21 = sub_1C96A5B44();
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v21);
    return sub_1C96A5A24();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C94CD9B4()
{
  v47 = sub_1C96A4CF4();
  v0 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v45 = &v36 - v3;
  v4 = sub_1C96A4D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C96A4A54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v51 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  sub_1C96A5954();
  sub_1C96A5944();
  sub_1C96A4CE4();
  v50 = v19;
  Date.wc_addHours(_:calendar:)();
  v20 = *(v5 + 8);
  v43 = v5 + 8;
  v44 = v4;
  v42 = v20;
  v20(v7, v4);
  v48 = *(v9 + 8);
  v49 = v9 + 8;
  v48(v17, v8);
  v21 = 0;
  v41 = *MEMORY[0x1E6969A58];
  v39 = (v0 + 8);
  v40 = (v0 + 104);
  v22 = (v9 + 32);
  v37 = (v9 + 16);
  v38 = v9;
  v23 = MEMORY[0x1E69E7CC0];
  v24 = v45;
  while (v21 != 264)
  {
    sub_1C96A4CE4();
    v26 = v46;
    v25 = v47;
    (*v40)(v46, v41, v47);
    sub_1C96A4CC4();
    (*v39)(v26, v25);
    v42(v7, v44);
    if (__swift_getEnumTagSinglePayload(v24, 1, v8) == 1)
    {
      sub_1C9505BC8(v24);
      if (qword_1EDB7ACB0 != -1)
      {
        swift_once();
      }

      v31 = sub_1C96A6154();
      __swift_project_value_buffer(v31, qword_1EDB7ACB8);
      v32 = sub_1C96A6134();
      v33 = sub_1C96A7684();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1C945E000, v32, v33, "Failed to generate date", v34, 2u);
        MEMORY[0x1CCA8E3D0](v34, -1, -1);
      }

      break;
    }

    v27 = *v22;
    (*v22)(v14, v24, v8);
    (*v37)(v51, v14, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C94CB2F4();
      v23 = v29;
    }

    v28 = *(v23 + 16);
    if (v28 >= *(v23 + 24) >> 1)
    {
      sub_1C94CB2F4();
      v23 = v30;
    }

    v48(v14, v8);
    *(v23 + 16) = v28 + 1;
    v27((v23 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v28), v51, v8);
    ++v21;
  }

  v48(v50, v8);
  return v23;
}

void sub_1C94CDF30()
{
  OUTLINED_FUNCTION_1_8();
  if (v4)
  {
    OUTLINED_FUNCTION_0_7();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_15_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_23_5(v2, v5, &qword_1EC3A4CA8, &unk_1C96AAE00);
  OUTLINED_FUNCTION_17_7();
  sub_1C96A5A34();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_12_6();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1C94CDFF8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
  }
}

uint64_t sub_1C94CE010@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v29 - v6;
  v7 = sub_1C96A5B84();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C96A5FF4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v33 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1E69E7CC0];
  sub_1C94CE4E0();
  v13 = 0;
  v14 = v34;
  do
  {
    sub_1C94CE538(v13);
    v34 = v14;
    v15 = *(v14 + 16);
    if (v15 >= *(v14 + 24) >> 1)
    {
      sub_1C94CE4E0();
      v14 = v34;
    }

    ++v13;
    *(v14 + 16) = v15 + 1;
    (*(v8 + 32))(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, v10, v7);
  }

  while (v13 != 60);
  sub_1C94CA718(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A78E8);
  v16 = *(sub_1C96A5DA4() - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v29 = xmmword_1C96AA1C0;
  *(v18 + 16) = xmmword_1C96AA1C0;
  sub_1C94CEB88(v18 + v17);
  if (*(v2 + 81))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7238);
    sub_1C96A5CF4();
    *(swift_allocObject() + 16) = v29;
    sub_1C96410E0();
  }

  result = sub_1C94CAB74(&OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder____lazy_storage___nextMinutes, sub_1C94CE688);
  if (*(result + 16))
  {
    v20 = result;
    *&v29 = v18;
    v21 = sub_1C96A4A54();
    v22 = *(v21 - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = *(v22 + 16);
    v25 = v32;
    v24(v32, v20 + v23, v21);

    result = __swift_storeEnumTagSinglePayload(v25, 0, 1, v21);
    v26 = *(v2 + OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder____lazy_storage___nextMinutes);
    if (*(v26 + 16) >= 0x3CuLL)
    {
      v27 = v26 + v23 + 59 * *(v22 + 72);
      v28 = v30;
      v24(v30, v27, v21);
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v21);
      return sub_1C96A5D44();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C94CE538(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  result = sub_1C94CAB74(&OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder____lazy_storage___nextMinutes, sub_1C94CE688);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (*(result + 16) > a1)
    {
      v7 = sub_1C96A4A54();
      (*(*(v7 - 8) + 16))(v4, v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * a1, v7);

      __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
      return sub_1C96A5B74();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C94CE688()
{
  v40 = sub_1C96A4CF4();
  v0 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1C96A4D14();
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_1C96A4A54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v43 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  sub_1C96A5954();
  v42 = v15;
  sub_1C96A5944();
  v16 = 0;
  v36 = *MEMORY[0x1E6969A88];
  v34 = (v0 + 8);
  v35 = (v0 + 104);
  v17 = (v2 + 8);
  v18 = (v8 + 32);
  v32 = (v8 + 16);
  v33 = v17;
  v41 = (v8 + 8);
  v19 = MEMORY[0x1E69E7CC0];
  while (v16 != 60)
  {
    v20 = v37;
    sub_1C96A4CE4();
    v22 = v39;
    v21 = v40;
    (*v35)(v39, v36, v40);
    sub_1C96A4CC4();
    (*v34)(v22, v21);
    (*v33)(v20, v38);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_1C9505BC8(v6);
      if (qword_1EDB7ACB0 != -1)
      {
        swift_once();
      }

      v27 = sub_1C96A6154();
      __swift_project_value_buffer(v27, qword_1EDB7ACB8);
      v28 = sub_1C96A6134();
      v29 = sub_1C96A7684();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1C945E000, v28, v29, "Failed to generate date", v30, 2u);
        MEMORY[0x1CCA8E3D0](v30, -1, -1);
      }

      break;
    }

    v23 = *v18;
    (*v18)(v13, v6, v7);
    (*v32)(v43, v13, v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C94CB2F4();
      v19 = v25;
    }

    v24 = *(v19 + 16);
    if (v24 >= *(v19 + 24) >> 1)
    {
      sub_1C94CB2F4();
      v19 = v26;
    }

    (*(v8 + 8))(v13, v7);
    *(v19 + 16) = v24 + 1;
    v23((v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24), v43, v7);
    ++v16;
  }

  (*v41)(v42, v7);
  return v19;
}

uint64_t sub_1C94CEB88@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = sub_1C96A5B54();
  v1 = *(v23 - 8);
  v2 = MEMORY[0x1EEE9AC00](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v22 = sub_1C96A5B04();
  v7 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_1C96A4A54();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C94CAB74(&OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder____lazy_storage___nextMinutes, sub_1C94CE688);
  if (*(result + 16))
  {
    (*(v14 + 16))(v16, result + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);

    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    (*(v7 + 104))(v9, *MEMORY[0x1E69E1858], v22);
    v18 = *MEMORY[0x1E69E18A0];
    v19 = *(v1 + 104);
    v20 = v23;
    v19(v6, v18, v23);
    v19(v4, v18, v20);
    return sub_1C96A5D94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C94CEEA4()
{
  v0 = sub_1C96A5FF4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1C94CA718(&v3 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_1C96A5A84();
}

uint64_t sub_1C94CEF80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - v4;
  v6 = sub_1C96A5FF4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1C94CA718(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1C96A4A54();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  return sub_1C96A5974();
}

uint64_t AppConfiguration.news.getter()
{
  OUTLINED_FUNCTION_40_0();
  result = type metadata accessor for AppConfiguration();
  v3 = (v1 + *(result + 80));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = v3[2];
  *v0 = v4;
  v0[1] = v5;
  v0[2] = v3;
  return result;
}

uint64_t CLLocation.storeKey.getter()
{
  [v0 coordinate];
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C96AC330;
  v6 = MEMORY[0x1E69E63B0];
  v7 = MEMORY[0x1E69E6438];
  *(v5 + 56) = MEMORY[0x1E69E63B0];
  *(v5 + 64) = v7;
  *(v5 + 32) = v2;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = v4;
  v8 = sub_1C96A4AF4();
  v10 = v9;
  v11 = MEMORY[0x1E69E6158];
  *(v5 + 136) = MEMORY[0x1E69E6158];
  v12 = sub_1C94CF210();
  *(v5 + 144) = v12;
  *(v5 + 112) = v8;
  *(v5 + 120) = v10;
  CurrentCountry = GeocodeManagerGetCurrentCountryCode()();
  *(v5 + 176) = v11;
  *(v5 + 184) = v12;
  *(v5 + 152) = CurrentCountry;

  return MEMORY[0x1EEDC5E80](0x332E252066332E25, 0xEF40252040252066);
}

unint64_t sub_1C94CF210()
{
  result = qword_1EDB7CF10;
  if (!qword_1EDB7CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CF10);
  }

  return result;
}

uint64_t AppConfiguration.temperatureScale.getter()
{
  OUTLINED_FUNCTION_40_0();
  *v0 = *(v1 + *(type metadata accessor for AppConfiguration() + 108));

  return sub_1C96A53C4();
}

uint64_t TemperatureScaleConfiguration.ColorStop.color.getter()
{
  v1 = *v0;
  sub_1C96A53C4();
  return v1;
}

uint64_t sub_1C94CF344()
{
  result = sub_1C96A7004();
  qword_1EDB80010 = result;
  return result;
}

double NSUnitTemperature.feelsLikeVarianceThreshold.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 celsius];
  sub_1C94CF430();
  v2 = sub_1C96A78B4();

  result = 10.0;
  if ((v2 & 1) == 0)
  {
    v4 = [v0 fahrenheit];
    sub_1C96A78B4();

    return 15.0;
  }

  return result;
}

unint64_t sub_1C94CF430()
{
  result = qword_1EDB80068;
  if (!qword_1EDB80068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB80068);
  }

  return result;
}

uint64_t Locale.Language.prefersObjectiveTemperatureTerminology.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6140);
  OUTLINED_FUNCTION_12_28();
  v2 = v1;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v11 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6EB0);
  v6 = *(v0 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C96AC330;
  v9 = v8 + v7;
  sub_1C96A4AD4();
  sub_1C96A4AE4();
  OUTLINED_FUNCTION_4_50(v9);
  sub_1C96A4AD4();
  OUTLINED_FUNCTION_4_50(v9 + v6);
  sub_1C96A4AD4();
  OUTLINED_FUNCTION_4_50(v9 + 2 * v6);
  sub_1C96A4AD4();
  OUTLINED_FUNCTION_4_50(v9 + 3 * v6);
  sub_1C96A4BD4();
  v11[2] = v5;
  LOBYTE(v9) = OUTLINED_FUNCTION_13_34();
  swift_setDeallocating();
  sub_1C94CFAF0();
  sub_1C94BE204(v5, &qword_1EC3A6140);
  return v9 & 1;
}

BOOL sub_1C94CF63C()
{
  OUTLINED_FUNCTION_129();
  v3 = v2;
  v4 = 0;
  v6 = *(v5 + 16);
  do
  {
    v7 = v4;
    if (v6 == v4)
    {
      break;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6140);
    OUTLINED_FUNCTION_9(v8);
    v11 = v3(v1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v10 + 72) * v7);
    if (v0)
    {
      break;
    }

    v4 = v7 + 1;
  }

  while ((v11 & 1) == 0);
  return v6 != v7;
}

uint64_t sub_1C94CF720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C96A4AE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6140);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6EC0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v19 - v12;
  v15 = *(v14 + 56);
  sub_1C94CFA38(a1, v19 - v12);
  sub_1C94CFA38(a2, &v13[v15]);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) != 1)
  {
    sub_1C94CFA38(v13, v10);
    if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1C94CFAA8(&qword_1EDB7CC40, MEMORY[0x1E6969610]);
      v16 = sub_1C96A6F94();
      v17 = *(v5 + 8);
      v17(v7, v4);
      v17(v10, v4);
      sub_1C94BE204(v13, &qword_1EC3A6140);
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C94BE204(v13, &qword_1EC3A6EC0);
    v16 = 0;
    return v16 & 1;
  }

  sub_1C94BE204(v13, &qword_1EC3A6140);
  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1C94CFA38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C94CFAA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C94CFAF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6140);
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t NSUnitSpeed.isBeaufort.getter()
{
  v2 = [v1 symbol];
  sub_1C96A7024();
  OUTLINED_FUNCTION_3_37();
  if (v1 == 7628386 && v0 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_117();
    sub_1C96A7DE4();
    OUTLINED_FUNCTION_2_50();
    return v1 & 1;
  }
}

uint64_t Locale.Language.isChinese.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6140);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_41();
  v4 = sub_1C96A4AE4();
  OUTLINED_FUNCTION_1_53(v4);
  if (v7)
  {
    sub_1C94BE204(v0, &qword_1EC3A6140);
  }

  else
  {
    sub_1C96A4AC4();
    OUTLINED_FUNCTION_0_82();
    v5 = OUTLINED_FUNCTION_12_7();
    v6(v5);
    v7 = v1 == 26746 && v0 == 0xE200000000000000;
    if (v7)
    {
    }

    else
    {
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_10_32();
      OUTLINED_FUNCTION_11_30();
    }
  }

  return OUTLINED_FUNCTION_8_36();
}

void Location.with(identifier:timeZone:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_19();
  v99 = v13;
  v100 = v14;
  v86 = v15;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v85 = v22;
  v84 = v23;
  v25 = v24;
  v82 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v28 = OUTLINED_FUNCTION_7(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_57(v79 - v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v34);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4_42();
  v89 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v88 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_57(v39 - v38);
  v40 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_14();
  v44 = v43 - v42;
  OUTLINED_FUNCTION_50_5(&v92);
  v80 = Location.clLocation.getter();
  if (v93)
  {
    v79[4] = v93;
    v79[1] = v92;
    OUTLINED_FUNCTION_8_39(v94);
    v45 = v95;
    v46 = v96;
    OUTLINED_FUNCTION_7_37(v98);
    OUTLINED_FUNCTION_47_5(v97);
  }

  else
  {
    memcpy(v91, v11, sizeof(v91));
    OUTLINED_FUNCTION_7_37(v91[8]);
    OUTLINED_FUNCTION_47_5(LOBYTE(v91[6]));
    v45 = v91[4];
    v46 = v91[5];
    OUTLINED_FUNCTION_8_39(v91[3]);
    OUTLINED_FUNCTION_29_12();
  }

  sub_1C9470AA0(v25, v12, &unk_1EC3A5F60);
  v47 = OUTLINED_FUNCTION_44_7();
  v48 = v89;
  OUTLINED_FUNCTION_23_1(v47, v49, v89);
  if (v50)
  {
    (*(v88 + 16))(v87, &v11[v40[5]], v48);
    v51 = OUTLINED_FUNCTION_44_7();
    v53 = OUTLINED_FUNCTION_23_1(v51, v52, v48);
    if (!v50)
    {
      OUTLINED_FUNCTION_51_7(v53, v54, &qword_1EC3A71A8);
      sub_1C9470AFC(v12, &unk_1EC3A5F60);
      goto LABEL_9;
    }
  }

  else
  {
    v53 = (*(v88 + 32))(v87, v12, v48);
  }

  OUTLINED_FUNCTION_51_7(v53, v54, &qword_1EC3A71A8);
LABEL_9:
  sub_1C9470AA0(v84, v31, &unk_1EC3A5430);
  v55 = sub_1C96A4A54();
  OUTLINED_FUNCTION_23_1(v31, 1, v55);
  if (v50)
  {
    sub_1C9470AA0(&v11[v40[6]], v90, &unk_1EC3A5430);
    OUTLINED_FUNCTION_23_1(v31, 1, v55);
    if (!v50)
    {
      sub_1C9470AFC(v31, &unk_1EC3A5430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    v57 = v90;
    (*(v56 + 32))(v90, v31, v55);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v55);
  }

  v58 = v21;
  v83 = v21;
  if (!v21)
  {
    v59 = &v11[v40[7]];
    v58 = *(v59 + 1);
    v85 = *v59;
    sub_1C96A53C4();
  }

  v60 = v17;
  v84 = v17;
  if (!v17)
  {
    v61 = &v11[v40[8]];
    v19 = *v61;
    v60 = *(v61 + 1);
    sub_1C96A53C4();
  }

  v81 = v19;
  v63 = a9;
  if (!a9)
  {
    v64 = &v11[v40[9]];
    v63 = *(v64 + 1);
    v86 = *v64;
    sub_1C96A53C4();
  }

  v65 = a11;
  if (!a11)
  {
    v66 = &v11[v40[10]];
    a10 = *v66;
    v65 = *(v66 + 1);
    sub_1C96A53C4();
  }

  v67 = v40[11];
  *(v44 + v67) = 0;
  OUTLINED_FUNCTION_49_8();
  *v44 = v69;
  *(v44 + 8) = v68;
  OUTLINED_FUNCTION_48_9();
  *(v44 + 16) = v71;
  *(v44 + 24) = v70;
  *(v44 + 32) = v45;
  *(v44 + 40) = v46;
  *(v44 + 48) = v72;
  OUTLINED_FUNCTION_41_11();
  *(v44 + 56) = v74;
  *(v44 + 64) = v73;
  (*(v88 + 32))(v44 + v40[5], v87, v89);
  sub_1C948E818(v90, v44 + v40[6]);
  v75 = (v44 + v40[7]);
  *v75 = v85;
  v75[1] = v58;
  v76 = (v44 + v40[8]);
  *v76 = v81;
  v76[1] = v60;
  v77 = (v44 + v40[9]);
  *v77 = v86;
  v77[1] = v63;
  v78 = (v44 + v40[10]);
  *v78 = a10;
  v78[1] = v65;
  *(v44 + v67) = v80;
  sub_1C94898C4(v44, v82);
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  OUTLINED_FUNCTION_30_12();
}

uint64_t StubGeocodeManager.reverseGeocode(location:forceUpdate:ignoreTimeZoneExpiration:qos:)(uint64_t a1)
{
  v2 = type metadata accessor for Location();
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C9489760(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5758);
  OUTLINED_FUNCTION_23();
  return sub_1C96A56A4();
}

uint64_t NSUnitLength.isMetricPrecipitation.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 megameters];
  OUTLINED_FUNCTION_4_67(v1, &qword_1EDB7FDA0);
  OUTLINED_FUNCTION_9_0();
  v2 = sub_1C96A78B4();

  if (v2 & 1) != 0 || (v3 = [v0 kilometers], v4 = OUTLINED_FUNCTION_1_82(), v1, (v4) || (v5 = objc_msgSend(v0, sel_hectometers), v6 = OUTLINED_FUNCTION_1_82(), v1, (v6) || (v7 = objc_msgSend(v0, sel_decameters), v8 = OUTLINED_FUNCTION_1_82(), v1, (v8) || (v9 = objc_msgSend(v0, sel_meters), v10 = OUTLINED_FUNCTION_1_82(), v1, (v10) || (v11 = objc_msgSend(v0, sel_decimeters), v12 = OUTLINED_FUNCTION_1_82(), v1, (v12) || (v13 = objc_msgSend(v0, sel_centimeters), v14 = OUTLINED_FUNCTION_1_82(), v1, (v14) || (v15 = objc_msgSend(v0, sel_millimeters), v16 = OUTLINED_FUNCTION_1_82(), v1, (v16) || (v17 = objc_msgSend(v0, sel_micrometers), v18 = OUTLINED_FUNCTION_1_82(), v1, (v18) || (v19 = objc_msgSend(v0, sel_nanometers), v20 = OUTLINED_FUNCTION_1_82(), v1, (v20) || (v21 = objc_msgSend(v0, sel_picometers), v22 = OUTLINED_FUNCTION_1_82(), v1, (v22) || (v23 = objc_msgSend(v0, sel_lightyears), v24 = OUTLINED_FUNCTION_1_82(), v1, (v24) || (v25 = objc_msgSend(v0, sel_astronomicalUnits), v26 = OUTLINED_FUNCTION_1_82(), v1, (v26) || (v27 = objc_msgSend(v0, sel_parsecs), v28 = OUTLINED_FUNCTION_1_82(), v1, (v28))
  {
    v29 = 1;
  }

  else
  {
    v31 = [v0 inches];
    v32 = OUTLINED_FUNCTION_1_82();

    if (v32 & 1) != 0 || (v33 = [v0 feet], v34 = OUTLINED_FUNCTION_1_82(), v1, (v34) || (v35 = objc_msgSend(v0, sel_yards), v36 = OUTLINED_FUNCTION_1_82(), v1, (v36) || (v37 = objc_msgSend(v0, sel_miles), v38 = OUTLINED_FUNCTION_1_82(), v1, (v38) || (v39 = objc_msgSend(v0, sel_scandinavianMiles), v40 = OUTLINED_FUNCTION_1_82(), v1, (v40) || (v41 = objc_msgSend(v0, sel_nauticalMiles), v42 = OUTLINED_FUNCTION_1_82(), v1, (v42) || (v43 = objc_msgSend(v0, sel_fathoms), v44 = OUTLINED_FUNCTION_1_82(), v1, (v44))
    {
      v29 = 0;
    }

    else
    {
      v45 = [v0 furlongs];
      v46 = sub_1C96A78B4();

      v29 = v46 ^ 1;
    }
  }

  return v29 & 1;
}

uint64_t sub_1C94D07F0()
{
  sub_1C9489304(&qword_1EDB7A268, type metadata accessor for SavedLocation);

  return sub_1C96A53A4();
}

uint64_t SavedLocation.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Location();
  v5 = OUTLINED_FUNCTION_7(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = (v7 - v6);
  type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v12 = (v11 - v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6610);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v30 - v17 + 72;
  sub_1C949A614(v2, v12);
  OUTLINED_FUNCTION_22_23();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(v30, v12, sizeof(v30));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6330);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_19_29(inited, xmmword_1C96AA1C0);
    v21 = v30[0];
    v20 = v30[1];
    inited[4].n128_u64[1] = MEMORY[0x1E69E6158];
    inited[3].n128_u64[0] = v21;
    inited[3].n128_u64[1] = v20;
    sub_1C96A53C4();
    sub_1C955FE40(v30);
    sub_1C96A6F04();
    sub_1C96A53B4();
  }

  else
  {
    OUTLINED_FUNCTION_1_73();
    sub_1C949A7E4(v12, v8, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6330);
    v23 = swift_initStackObject();
    OUTLINED_FUNCTION_19_29(v23, xmmword_1C96AA1C0);
    v25 = *v8;
    v24 = v8[1];
    v23[4].n128_u64[1] = MEMORY[0x1E69E6158];
    v23[3].n128_u64[0] = v25;
    v23[3].n128_u64[1] = v24;
    sub_1C96A53C4();
    sub_1C96A6F04();
    sub_1C96A53B4();
    OUTLINED_FUNCTION_0_98();
    sub_1C949A9FC(v8, v26);
  }

  a1[3] = v13;
  a1[4] = sub_1C94D0B70();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(v15 + 32))(boxed_opaque_existential_1, v18, v13);
}

unint64_t sub_1C94D0B70()
{
  result = qword_1EDB77EE0;
  if (!qword_1EDB77EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A6610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB77EE0);
  }

  return result;
}

uint64_t UnitManager.precipitationSnowfall(locale:)()
{
  v1 = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_1C9486640();
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1((v12 + 1), v13);
  (*(v4 + 16))(v12, v3, v4);
  v5 = LOBYTE(v12[0]);
  if (LOBYTE(v12[0]) == 2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12 + 1);
    sub_1C94D0DC0(v2, v1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12 + 1);
    if (v5)
    {
      sub_1C946B5D0(0, &qword_1EDB7FDA0);
      v6 = sub_1C94D0DC0(v2, v1);
      v7 = objc_opt_self();
      v8 = [v7 millimeters];
      v5 = sub_1C96A78B4();

      if (v5)
      {
        v9 = [v7 millimeters];
      }

      else
      {
        v9 = [v7 centimeters];
      }
    }

    else
    {
      v9 = [objc_opt_self() inches];
    }

    v10 = v9;
  }

  OUTLINED_FUNCTION_66();

  return v5;
}

uint64_t sub_1C94D0D88()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1C94D0DC0(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = *(a2 + 40);
    MEMORY[0x1EEE9AC00](KeyPath);
    os_unfair_lock_lock(v7 + 6);
    sub_1C954DD90(&v7[4], &v12);
    os_unfair_lock_unlock(v7 + 6);
    v8 = v12;

    swift_beginAccess();
    v9 = *v3;
    *v3 = v8;
    v4 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v4;
}

void sub_1C94D0EB8()
{
  OUTLINED_FUNCTION_103();
  v49 = v1;
  v50 = v2;
  v51 = v0;
  v47 = v3;
  v48 = sub_1C96A4C64();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  v10 = sub_1C96A4C74();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v43 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v16 = v15 - v14;
  v17 = sub_1C96A4C44();
  v44 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v22);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v23);
  v45 = &v42 - v24;
  OUTLINED_FUNCTION_15_4();
  v46 = sub_1C96A4D14();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_14();
  v30 = v29 - v28;
  sub_1C96A4C24();
  (*(v18 + 104))(v21, *MEMORY[0x1E69698D0], v17);
  v31 = *(v12 + 104);
  v32 = v10;
  v31(v16, *MEMORY[0x1E69699C8], v10);
  v33 = v48;
  (*(v5 + 104))(v9, *MEMORY[0x1E6969998], v48);
  v34 = v45;
  sub_1C96A4CA4();
  (*(v5 + 8))(v9, v33);
  (*(v43 + 8))(v16, v32);
  (*(v18 + 8))(v21, v44);
  (*(v26 + 8))(v30, v46);
  v35 = sub_1C96A4A54();
  v36 = OUTLINED_FUNCTION_11_4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, v37, v35);
  v39 = *(v35 - 8);
  if (EnumTagSinglePayload == 1)
  {
    (*(v39 + 16))(v50, v51, v35);
    v40 = OUTLINED_FUNCTION_11_4();
    if (__swift_getEnumTagSinglePayload(v40, v41, v35) != 1)
    {
      sub_1C9505BC8(v34);
    }
  }

  else
  {
    (*(v39 + 32))(v50, v34, v35);
  }

  OUTLINED_FUNCTION_101();
}

uint64_t NSUnitPressure.isMetric.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 newtonsPerMetersSquared];
  OUTLINED_FUNCTION_4_67(v1, &qword_1EDB7FD98);
  OUTLINED_FUNCTION_9_0();
  v2 = sub_1C96A78B4();

  if (v2 & 1) != 0 || (v3 = [v0 gigapascals], v4 = OUTLINED_FUNCTION_1_82(), v1, (v4) || (v5 = objc_msgSend(v0, sel_megapascals), v6 = OUTLINED_FUNCTION_1_82(), v1, (v6) || (v7 = objc_msgSend(v0, sel_kilopascals), v8 = OUTLINED_FUNCTION_1_82(), v1, (v8) || (v9 = objc_msgSend(v0, sel_hectopascals), v10 = OUTLINED_FUNCTION_1_82(), v1, (v10) || (v11 = objc_msgSend(v0, sel_bars), v12 = OUTLINED_FUNCTION_1_82(), v1, (v12) || (v13 = objc_msgSend(v0, sel_millibars), v14 = OUTLINED_FUNCTION_1_82(), v1, (v14) || (v15 = objc_msgSend(v0, sel_millimetersOfMercury), v16 = OUTLINED_FUNCTION_1_82(), v1, (v16))
  {
    v17 = 1;
  }

  else
  {
    v19 = [v0 inchesOfMercury];
    v20 = OUTLINED_FUNCTION_1_82();

    if (v20)
    {
      v17 = 0;
    }

    else
    {
      v21 = [v0 poundsForcePerSquareInch];
      v22 = sub_1C96A78B4();

      v17 = v22 ^ 1;
    }
  }

  return v17 & 1;
}

void *UnitManager.windGust(locale:)()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = *(v0 + 40);
  os_unfair_lock_lock(v2 + 6);
  sub_1C954DD90(&v2[4], v12);
  os_unfair_lock_unlock(v2 + 6);
  v3 = v12[0];

  sub_1C9486640();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v4 = OUTLINED_FUNCTION_9_14();
  v5(v4);
  switch(v11)
  {
    case 1:
      v6 = [objc_opt_self() kilometersPerHour];
      goto LABEL_9;
    case 2:
      v6 = [objc_opt_self() metersPerSecond];
      goto LABEL_9;
    case 3:
      if (qword_1EDB77D10 != -1)
      {
        OUTLINED_FUNCTION_21_10();
      }

      v7 = qword_1EDB77D18;
      goto LABEL_10;
    case 4:
      v6 = [objc_opt_self() knots];
      goto LABEL_9;
    case 5:
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      v8 = v3;
      goto LABEL_11;
    default:
      v6 = [objc_opt_self() milesPerHour];
LABEL_9:
      v7 = v6;
LABEL_10:
      v8 = v7;
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
LABEL_11:
      if ((NSUnitSpeed.isBeaufort.getter() & 1) == 0)
      {
        if (*(v1 + 48))
        {
          v9 = v8;
        }

        else
        {
          v9 = v3;
        }

        if (!*(v1 + 48))
        {
          v3 = v8;
        }

        v8 = v9;
      }

      return v3;
  }
}

uint64_t Debouncer.execute(_:)(uint64_t a1, uint64_t a2)
{
  v17[0] = sub_1C96A6604();
  v5 = *(v17[0] - 8);
  MEMORY[0x1EEE9AC00](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  v11 = sub_1C96A6564();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C96A3D04();
  sub_1C96A50E4();

  if (*(v2 + 32))
  {
    sub_1C96A3D04();
    sub_1C96A6644();
  }

  *(v2 + 32) = 0;

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C946FCF8;
  aBlock[3] = &block_descriptor_3;
  _Block_copy(aBlock);
  v17[1] = MEMORY[0x1E69E7CC0];
  sub_1C94D19D8();
  sub_1C96A3D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
  sub_1C94D1A34();
  sub_1C96A79E4();
  sub_1C96A6654();
  swift_allocObject();
  v12 = sub_1C96A6634();

  *(v2 + 32) = v12;
  sub_1C96A3D04();

  sub_1C96A65F4();
  sub_1C96A6684();
  v13 = *(v5 + 8);
  v14 = v7;
  v15 = v17[0];
  v13(v14, v17[0]);
  sub_1C96A7744();

  v13(v10, v15);
  sub_1C96A3D04();
  sub_1C96A50F4();
}

unint64_t sub_1C94D19D8()
{
  result = qword_1EDB7CF40;
  if (!qword_1EDB7CF40)
  {
    sub_1C96A6564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CF40);
  }

  return result;
}

unint64_t sub_1C94D1A34()
{
  result = qword_1EDB7CE80;
  if (!qword_1EDB7CE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC3A5370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CE80);
  }

  return result;
}

uint64_t type metadata accessor for ActiveUserStatus()
{
  result = qword_1EDB79C48;
  if (!qword_1EDB79C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C94D1B20()
{
  sub_1C96A4A94();
  if (v0 <= 0x3F)
  {
    sub_1C94D1BA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C94D1BA4()
{
  if (!qword_1EDB77D80)
  {
    sub_1C96A4A54();
    sub_1C94D1C10();
    v0 = sub_1C96A6F14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB77D80);
    }
  }
}

unint64_t sub_1C94D1C10()
{
  result = qword_1EDB79C60;
  if (!qword_1EDB79C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79C60);
  }

  return result;
}

unint64_t sub_1C94D1C68()
{
  result = qword_1EDB79C58;
  if (!qword_1EDB79C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79C58);
  }

  return result;
}

uint64_t dispatch thunk of ActiveUserServiceType.status.getter()
{
  OUTLINED_FUNCTION_39();
  v10 = (OUTLINED_FUNCTION_38_1(v4, v5, v6) + 8);
  v11 = (*v10 + **v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1C94B0CEC;

  return v11(v3, v1, v0);
}

uint64_t sub_1C94D1E18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return sub_1C94D1EB4();
}

uint64_t sub_1C94D1EB4()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1C96A4A54();
  v1[4] = v3;
  OUTLINED_FUNCTION_9(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_12_4();
  active = type metadata accessor for ActiveUserModel();
  OUTLINED_FUNCTION_7(active);
  v1[7] = OUTLINED_FUNCTION_12_4();
  v6 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C94D1F78()
{
  OUTLINED_FUNCTION_18();
  sub_1C96A4A14();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 64) = v1;
  *v1 = v2;
  v1[1] = sub_1C9643124;

  return sub_1C94D2014();
}

uint64_t sub_1C94D2014()
{
  OUTLINED_FUNCTION_18();
  v1[27] = v2;
  v1[28] = v0;
  v1[26] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7990);
  OUTLINED_FUNCTION_7(v4);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C94D20B0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  active = type metadata accessor for ActiveUserModel();
  v4 = swift_allocBox();
  v6 = v5;
  *(v0 + 248) = v4;
  *(v0 + 256) = v5;
  v7 = OBJC_IVAR____TtCC11WeatherCore17ActiveUserService5Actor__activeUserModel;
  swift_beginAccess();
  sub_1C94D23D0(v2 + v7, v1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, active);
  v9 = *(v0 + 240);
  if (EnumTagSinglePayload == 1)
  {
    sub_1C94BE204(v9, &qword_1EC3A7990);
    swift_deallocBox();
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    *(v0 + 280) = v10;
    *v10 = v11;
    v10[1] = sub_1C964346C;

    return sub_1C94D258C();
  }

  else
  {
    v13 = *(v0 + 216);
    sub_1C94D5F44(v9, v6);
    if (sub_1C959C2F4(v13))
    {
      v15 = *(v0 + 224);
      v14 = *(v0 + 232);
      sub_1C94D5EE0(v6, v14);
      OUTLINED_FUNCTION_48();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, active);
      swift_beginAccess();
      sub_1C9645CE4(v14, v2 + v7, &qword_1EC3A7990);
      swift_endAccess();
      sub_1C9469B6C(v15 + 152, v0 + 16);
      v19 = *(v0 + 40);
      v20 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
      sub_1C9469B6C(v15 + 232, v0 + 56);
      sub_1C9469B6C(v15 + 112, v0 + 96);
      v21 = swift_allocObject();
      *(v0 + 264) = v21;
      sub_1C94670AC((v0 + 56), v21 + 16);
      sub_1C94670AC((v0 + 96), v21 + 56);
      *(v21 + 96) = v4;
      sub_1C96A3D04();
      v22 = swift_task_alloc();
      *(v0 + 272) = v22;
      *v22 = v0;
      v22[1] = sub_1C96432D4;
      OUTLINED_FUNCTION_16_31();

      return sub_1C94D28EC(v23, v24, v21, v19, v25, v20);
    }

    else
    {
      OUTLINED_FUNCTION_21_26();
      v26 = OUTLINED_FUNCTION_4_4();
      sub_1C94D5EE0(v26, v27);

      OUTLINED_FUNCTION_17();

      return v28();
    }
  }
}

uint64_t sub_1C94D23D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C94D2454(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C96A4A94();
  OUTLINED_FUNCTION_16_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_1C96A4A54();
  OUTLINED_FUNCTION_16_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_16_1();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1C94D258C()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  *(v1 + 248) = v3;
  *(v1 + 160) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7990);
  OUTLINED_FUNCTION_7(v5);
  *(v1 + 184) = OUTLINED_FUNCTION_12_4();
  v6 = sub_1C96A4A54();
  *(v1 + 192) = v6;
  OUTLINED_FUNCTION_9(v6);
  *(v1 + 200) = v7;
  *(v1 + 208) = *(v8 + 64);
  *(v1 + 216) = OUTLINED_FUNCTION_12_4();
  v9 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C94D266C()
{
  OUTLINED_FUNCTION_94_0();
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 248);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  sub_1C9469B6C(v6 + 152, v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_1C9469B6C(v6 + 112, v0 + 56);
  (*(v4 + 16))(v1, v7, v3);
  sub_1C9469B6C(v6 + 232, v0 + 96);
  v8 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 224) = v9;
  sub_1C94670AC((v0 + 56), v9 + 16);
  *(v9 + 56) = v5;
  (*(v4 + 32))(v9 + v8, v1, v3);
  sub_1C94670AC((v0 + 96), v9 + ((v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v0 + 232) = v10;
  *(v0 + 240) = type metadata accessor for ActiveUserModel();
  *v10 = v0;
  v10[1] = sub_1C9644560;
  OUTLINED_FUNCTION_49_1();

  return sub_1C94D28EC(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1C94D2814()
{
  v1 = sub_1C96A4A54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 40, v3 | 7);
}

uint64_t sub_1C94D28EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C94D2918, 0, 0);
}

uint64_t sub_1C94D2918()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v1[1] = *(v0 + 40);
  v1[2] = v2;
  v1[3] = v3;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1C95B889C;
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0xD000000000000016, 0x80000001C96D30B0, sub_1C94D2A10, v1, v5);
}

uint64_t Location.Identifier.intentIdentifier.getter()
{
  if (*(v0 + 48))
  {
    return OUTLINED_FUNCTION_1_62();
  }

  OUTLINED_FUNCTION_2_60();
  OUTLINED_FUNCTION_3_46();
  OUTLINED_FUNCTION_0_87();
  return 0;
}

uint64_t sub_1C94D2A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[0] = a3;
  v21[1] = a2;
  v12 = sub_1C96A73A4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - v14;
  (*(v13 + 16))(v21 - v14, a1, v12);
  v16 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a5;
  *(v17 + 3) = a6;
  v18 = v21[0];
  *(v17 + 4) = a7;
  *(v17 + 5) = v18;
  *(v17 + 6) = a4;
  (*(v13 + 32))(&v17[v16], v15, v12);
  v19 = *(a7 + 8);
  sub_1C96A3D04();
  v19(sub_1C94D2CFC, v17, a5, a7);
}

uint64_t sub_1C94D2C30()
{
  v1 = sub_1C96A73A4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C94D2CFC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_1C96A73A4() - 8);
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_1C94D2E9C(a1, v6, v7, v8, v3, v4);
}

_BYTE *storeEnumTagSinglePayload for LocationDisplayContext(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C94D2E74);
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

uint64_t sub_1C94D2E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v16 - v12;
  v14(v11);
  (*(v7 + 16))(v10, v13, a6);
  sub_1C96A73A4();
  sub_1C96A7394();
  return (*(v7 + 8))(v13, a6);
}

uint64_t getEnumTagSinglePayload for LocationDisplayContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C94D306C(uint64_t a1)
{
  v3 = sub_1C96A4A54();
  OUTLINED_FUNCTION_9(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 57) & ~*(v5 + 80);
  v9 = *(v1 + 56);
  v10 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1C94D3118(a1, v1 + 16, v9, v1 + v8, v10);
}

void sub_1C94D32E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_22_14();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  (*(v34 + 8))(&a17, 0x7355657669746361, 0xEF6C65646F4D7265, MEMORY[0x1E6969080], v35, v34);
  if (a18 >> 60 == 15)
  {
    if (qword_1EDB77EA8 != -1)
    {
      OUTLINED_FUNCTION_9_1();
    }

    v36 = sub_1C96A6154();
    __swift_project_value_buffer(v36, qword_1EDB77EB0);
    v37 = sub_1C96A6134();
    v38 = sub_1C96A76A4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1C945E000, v37, v38, "Active user model data not found", v39, 2u);
      OUTLINED_FUNCTION_26();
    }

    type metadata accessor for ActiveUserModel();
    OUTLINED_FUNCTION_3();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  }

  else
  {
    active = type metadata accessor for ActiveUserModel();
    v41 = OUTLINED_FUNCTION_14_2();
    sub_1C94874C0(v41, v42);
    OUTLINED_FUNCTION_5_25();
    sub_1C94B4700(v43, v44);
    OUTLINED_FUNCTION_14_2();
    sub_1C96A6DA4();
    __swift_storeEnumTagSinglePayload(v33, 0, 1, active);
    v45 = OUTLINED_FUNCTION_14_2();
    sub_1C9485BFC(v45, v46);
  }

  OUTLINED_FUNCTION_23_14();
}

uint64_t sub_1C94D3688(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AppConfiguration.providerAttribution.getter()
{
  OUTLINED_FUNCTION_40_0();
  v2 = (v1 + *(type metadata accessor for AppConfiguration() + 100));
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  LOBYTE(v2) = *(v2 + 32);
  *v0 = v4;
  *(v0 + 8) = v3;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 32) = v2;
  sub_1C96A53C4();

  return sub_1C96A53C4();
}

uint64_t ProviderAttributionConfiguration.mapDataLearnMoreURL.getter()
{
  v1 = *(v0 + 16);
  sub_1C96A53C4();
  return v1;
}

id Location.clLocation.getter()
{
  v1 = type metadata accessor for Location();
  v2 = *(v0 + *(v1 + 44));
  if (v2)
  {
    v3 = *(v0 + *(v1 + 44));
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v0 + 32) longitude:*(v0 + 40)];
    v2 = 0;
  }

  v4 = v2;
  return v3;
}

uint64_t ProviderAttributionConfiguration.featureAvailabilityURL.getter()
{
  v1 = *v0;
  sub_1C96A53C4();
  return v1;
}

id CLLocation.init(_:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLatitude:*(a1 + 32) longitude:*(a1 + 40)];

  return v1;
}

Swift::Bool __swiftcall LocationMatchHelper.isSameLocation(firstName:secondName:distance:)(Swift::String_optional firstName, Swift::String_optional secondName, Swift::Double distance)
{
  if (distance >= 30000.0)
  {
    return 0;
  }

  if (!firstName.value._object || !secondName.value._object)
  {
    return distance < 1000.0;
  }

  v3 = sub_1C96A70B4();
  v5 = v4;
  if (v3 == sub_1C96A70B4() && v5 == v6)
  {

    return 1;
  }

  else
  {
    v8 = sub_1C96A7DE4();

    return v8 & 1;
  }
}

uint64_t LocationModel.kind.getter()
{
  LocationModel.identifier.getter();
  sub_1C953AEDC(v1);
  return v1[48];
}

uint64_t OUTLINED_FUNCTION_38_3()
{

  return sub_1C96A7914();
}

uint64_t OUTLINED_FUNCTION_38_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_38_7()
{
}

uint64_t Location.sanitizedSecondaryName.getter()
{
  v1 = (v0 + *(type metadata accessor for Location() + 40));
  v2 = *v1;
  v3 = v1[1];
  if (v3)
  {
    v4 = v2 == *(v0 + 16) && v3 == *(v0 + 24);
    if (v4 || (sub_1C96A7DE4() & 1) != 0)
    {
      return 0;
    }

    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v5)
    {
      return 0;
    }

    else
    {
      sub_1C96A53C4();
    }
  }

  return v2;
}

uint64_t NotificationSubscription.Location.init(location:locationOverride:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_1_78();
  sub_1C9489B58();
  OUTLINED_FUNCTION_23_1(a2, 1, v4);
  if (v6)
  {
    OUTLINED_FUNCTION_0_106();
    sub_1C949A840();
    OUTLINED_FUNCTION_23_1(a2, 1, v4);
    if (!v6)
    {
      sub_1C9470AFC(a2, &qword_1EC3A5450);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_73();
    sub_1C948EAF4(a1, v7);
    OUTLINED_FUNCTION_0_106();
    sub_1C949A840();
  }

  OUTLINED_FUNCTION_20_30();
  OUTLINED_FUNCTION_0_106();
  return sub_1C949A840();
}

uint64_t Locale.Language.isUrdu.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6140);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_41();
  v4 = sub_1C96A4AE4();
  OUTLINED_FUNCTION_1_53(v4);
  if (v7)
  {
    sub_1C94BE204(v0, &qword_1EC3A6140);
  }

  else
  {
    sub_1C96A4AC4();
    OUTLINED_FUNCTION_0_82();
    v5 = OUTLINED_FUNCTION_12_7();
    v6(v5);
    v7 = v1 == 29301 && v0 == 0xE200000000000000;
    if (v7)
    {
    }

    else
    {
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_10_32();
      OUTLINED_FUNCTION_11_30();
    }
  }

  return OUTLINED_FUNCTION_8_36();
}

uint64_t dispatch thunk of NotificationSubscriptionManagerType.updateSubscription(for:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_76_0();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_37(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_72_0(v1);

  return v4(v3);
}

uint64_t LocationOfInterestType.title.getter()
{
  if (*v0)
  {
    if (qword_1EDB7AB08 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1EDB7AB08 != -1)
  {
LABEL_6:
    OUTLINED_FUNCTION_0_2();
  }

LABEL_5:
  v1 = qword_1EDB94A58;
  OUTLINED_FUNCTION_8_50();
  v2 = sub_1C96A4534();

  return v2;
}

uint64_t sub_1C94D3F50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0C0C;

  return NotificationSubscriptionManager.updateSubscription(for:)();
}

id sub_1C94D3FE8()
{
  type metadata accessor for BundleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDB94A58 = result;
  return result;
}

uint64_t NotificationSubscriptionManager.updateSubscription(for:)()
{
  OUTLINED_FUNCTION_18();
  v1[7] = v2;
  v1[8] = v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v1[9] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_34_2(v3);

  return sub_1C94BFCB4(v5);
}

uint64_t sub_1C94D40C8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C94D41E4()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[5];
  v2 = v0[6];
  OUTLINED_FUNCTION_19_7(v0 + 2);
  OUTLINED_FUNCTION_12_3();
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1C94D5630;
  v5 = v0[7];

  return v7(v5, v1, v2);
}

uint64_t sub_1C94D430C(uint64_t a1)
{
  v3 = v1[32];
  v4 = v1[33];
  __swift_project_boxed_opaque_existential_1(v1 + 29, v3);
  (*(v4 + 8))(v3, v4);
  if (!v5)
  {
    sub_1C96A322C();
    v24 = swift_allocError();
    OUTLINED_FUNCTION_21_30(v24, v25);
    return swift_willThrow();
  }

  v6 = OUTLINED_FUNCTION_27_20(*a1, *(a1 + 8));
  if (!v7)
  {
  }

  v8 = v6;
  v9 = v7;
  v10 = sub_1C94C1424();
  if (!*(v10 + 16))
  {
    goto LABEL_22;
  }

  v11 = sub_1C9476F90(v8, v9);
  if ((v12 & 1) == 0)
  {
    goto LABEL_22;
  }

  v13 = *(v10 + 56) + 40 * v11;
  v14 = *(v13 + 24);
  v43 = *(v13 + 16);
  v44 = *v13;
  v15 = *(v13 + 32);
  v45 = *(v13 + 33);
  v48 = *(v13 + 8);
  sub_1C96A53C4();
  v46 = v14;
  sub_1C96A53C4();

  v16 = v15;
  v17 = v8;
  if ((v16 == 2 || (v16 & 1) == 0) && (v45 == 2 || (v45 & 1) == 0))
  {
    goto LABEL_20;
  }

  v42 = v16;
  v18 = v8 == v44 && v9 == v48;
  if (v18 || (sub_1C96A7DE4() & 1) != 0)
  {
    v19 = type metadata accessor for NotificationSubscription.Location(0);
    v20 = OUTLINED_FUNCTION_27_20(*(a1 + *(v19 + 20)), *(a1 + *(v19 + 20) + 8));
    if (v21)
    {
      if (v20 == v43 && v21 == v14)
      {
      }

      v23 = sub_1C96A7DE4();

      if (v23)
      {
LABEL_20:

LABEL_22:
      }
    }
  }

  v27 = (a1 + *(type metadata accessor for NotificationSubscription.Location(0) + 20));
  v29 = *v27;
  v28 = v27[1];
  sub_1C96A53C4();
  v30 = OUTLINED_FUNCTION_27_20(v29, v28);
  v32 = v31;

  if (!v32)
  {
    sub_1C96A53C4();
    v32 = v46;
    v30 = v43;
  }

  *&v52 = v17;
  *(&v52 + 1) = v9;
  *&v53 = v30;
  *(&v53 + 1) = v32;
  LOBYTE(v54) = v42;
  HIBYTE(v54) = v45;
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_5_2();
    swift_once();
  }

  v33 = sub_1C96A6154();
  __swift_project_value_buffer(v33, qword_1EDB7AC90);
  sub_1C96A3738(&v52, v50);
  v34 = sub_1C96A6134();
  v35 = sub_1C96A76A4();
  sub_1C96A3794(&v52);
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_0();
    v47 = swift_slowAlloc();
    v55 = v47;
    *v36 = 141558275;
    OUTLINED_FUNCTION_25();
    *(v36 + 4) = v37;
    *(v36 + 12) = 2081;
    v50[0] = v52;
    v50[1] = v53;
    v51 = v54;
    sub_1C96A3738(&v52, v49);
    v38 = sub_1C96A70A4();
    v40 = sub_1C9484164(v38, v39, &v55);

    *(v36 + 14) = v40;

    _os_log_impl(&dword_1C945E000, v34, v35, "KeyValueStoreNotificationSubscription: updated subscription: %{private,mask.hash}s", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  else
  {
  }

  v41 = sub_1C94C1424();
  swift_isUniquelyReferenced_nonNull_native();
  *&v50[0] = v41;
  sub_1C950BC88();

  sub_1C969EBD4(*&v50[0]);
}

uint64_t Locale.Language.isEnglish.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6140);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_41();
  v4 = sub_1C96A4AE4();
  OUTLINED_FUNCTION_1_53(v4);
  if (v7)
  {
    sub_1C94BE204(v0, &qword_1EC3A6140);
  }

  else
  {
    sub_1C96A4AC4();
    OUTLINED_FUNCTION_0_82();
    v5 = OUTLINED_FUNCTION_12_7();
    v6(v5);
    v7 = v1 == 28261 && v0 == 0xE200000000000000;
    if (v7)
    {
    }

    else
    {
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_10_32();
      OUTLINED_FUNCTION_11_30();
    }
  }

  return OUTLINED_FUNCTION_8_36();
}

uint64_t sub_1C94D485C(uint64_t a1)
{
  sub_1C94D430C(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C94D48EC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = sub_1C96A6E94();
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C96A6E84();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  v59 = a2;
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](a3, a4);
  v14 = sub_1C94D4E50(v58, v59);
  v16 = v15;
  v17 = MEMORY[0x1E6966620];
  sub_1C9487720(&qword_1EDB7AB88, MEMORY[0x1E6966620]);
  sub_1C96A6E74();
  sub_1C94874C0(v14, v16);
  sub_1C9487574(v14, v16, v10, MEMORY[0x1E6966620], &qword_1EDB7AB88, v17);
  v45 = v16;
  sub_1C9482F3C(v14, v16);
  sub_1C96A6E54();
  (*(v56 + 8))(v10, v8);
  v18 = sub_1C94B659C(v13);
  v20 = v19 >> 62;
  v21 = v19;
  v54 = HIDWORD(v18);
  v55 = BYTE6(v19);
  switch(v19 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(v54, v18))
      {
        goto LABEL_45;
      }

      v22 = v54 - v18;
LABEL_6:
      if (v22)
      {
        v56 = v18;
        v57 = MEMORY[0x1E69E7CC0];
        sub_1C94D5558(0, v22 & ~(v22 >> 63), 0);
        v25 = v56;
        v53 = v56;
        v44 = v14;
        if (v20)
        {
          if (v20 == 2)
          {
            v26 = *(v56 + 16);
          }

          else
          {
            v26 = v53;
          }
        }

        else
        {
          v26 = 0;
        }

        if (v22 < 0)
        {
          goto LABEL_44;
        }

        v27 = v57;
        v51 = v56 >> 8;
        v52 = v56 >> 32;
        v49 = v56 >> 24;
        v50 = v56 >> 16;
        v47 = HIWORD(v56);
        v48 = v56 >> 40;
        v46 = HIBYTE(v56);
        while (1)
        {
          if (v20 == 1)
          {
            if (v26 < v53 || v26 >= v52)
            {
              goto LABEL_40;
            }

            v30 = sub_1C96A43E4();
            if (!v30)
            {
              goto LABEL_47;
            }

            v31 = v30;
            v32 = sub_1C96A4404();
            v33 = v26 - v32;
            if (__OFSUB__(v26, v32))
            {
              goto LABEL_42;
            }
          }

          else
          {
            if (!v20)
            {
              if (v26 >= v55)
              {
                goto LABEL_39;
              }

              LOBYTE(v58) = v25;
              BYTE1(v58) = v51;
              BYTE2(v58) = v50;
              BYTE3(v58) = v49;
              BYTE4(v58) = v54;
              BYTE5(v58) = v48;
              BYTE6(v58) = v47;
              HIBYTE(v58) = v46;
              LOWORD(v59) = v21;
              BYTE2(v59) = BYTE2(v21);
              BYTE3(v59) = BYTE3(v21);
              BYTE4(v59) = BYTE4(v21);
              BYTE5(v59) = BYTE5(v21);
              v28 = *(&v58 + v26);
              goto LABEL_33;
            }

            if (v26 < *(v25 + 16))
            {
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
            }

            if (v26 >= *(v25 + 24))
            {
              goto LABEL_41;
            }

            v34 = sub_1C96A43E4();
            if (!v34)
            {
              goto LABEL_48;
            }

            v31 = v34;
            v35 = sub_1C96A4404();
            v33 = v26 - v35;
            if (__OFSUB__(v26, v35))
            {
              goto LABEL_43;
            }
          }

          v28 = *(v31 + v33);
          v25 = v56;
LABEL_33:
          LOBYTE(v58) = v28;
          sub_1C94D5578();
          v36 = sub_1C96A7124();
          v38 = v37;
          v57 = v27;
          v40 = *(v27 + 16);
          v39 = *(v27 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_1C94D5558((v39 > 1), v40 + 1, 1);
            v25 = v56;
            v27 = v57;
          }

          *(v27 + 16) = v40 + 1;
          v41 = v27 + 16 * v40;
          *(v41 + 32) = v36;
          *(v41 + 40) = v38;
          ++v26;
          if (!--v22)
          {
            sub_1C9482F3C(v25, v21);
            v14 = v44;
            goto LABEL_37;
          }
        }
      }

LABEL_10:
      sub_1C9482F3C(v18, v19);
      v27 = MEMORY[0x1E69E7CC0];
LABEL_37:
      v58 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5FC0);
      sub_1C94D55CC();
      v42 = sub_1C96A6F54();
      sub_1C9482F3C(v14, v45);

      return v42;
    case 2uLL:
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      v22 = v23 - v24;
      if (!__OFSUB__(v23, v24))
      {
        goto LABEL_6;
      }

      goto LABEL_46;
    case 3uLL:
      goto LABEL_10;
    default:
      v22 = v55;
      goto LABEL_6;
  }
}

uint64_t sub_1C94D4E50(uint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  *&v45 = a1;
  *(&v45 + 1) = a2;
  sub_1C96A53C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5180);
  if (swift_dynamicCast())
  {
    sub_1C94670AC(v43, &v46);
    __swift_project_boxed_opaque_existential_1(&v46, v47);
    OUTLINED_FUNCTION_0_16();
    sub_1C96A44B4();
    v43[0] = v45;
    __swift_destroy_boxed_opaque_existential_1Tm(&v46);
    goto LABEL_59;
  }

  v44 = 0;
  memset(v43, 0, sizeof(v43));
  sub_1C94D530C(v43);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v43[0] = a1;
    *(&v43[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v43;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1C96A7AF4();
  }

  sub_1C94D5374(v4, v5, &v46);
  v6 = *(&v46 + 1);
  v7 = v46;
  if (*(&v46 + 1) >> 60 != 15)
  {
    v43[0] = v46;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v43[0] = MEMORY[0x1CCA8A190](v8);
  *(&v43[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v43[0]);
  v10 = sub_1C951AD58(sub_1C951B2B4);
  v12 = *(&v43[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v43[0]);
  switch(*(&v43[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v43[0]) - LODWORD(v43[0]);
      if (__OFSUB__(DWORD1(v43[0]), v43[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v43[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v43[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v43[0] + 16);
      v20 = *(*&v43[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1C96A47F4();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v42 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v45 + 7) = 0;
      *&v45 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v43[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v31 = OUTLINED_FUNCTION_3_7();
      v27 = sub_1C951B2D0(v31, v32, v33);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_1C96A7184();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_1C96A71B4();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v46 = v13;
      *(&v46 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v46 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_1C96A7AF4();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v34 = OUTLINED_FUNCTION_3_7();
      v17 = sub_1C951B2D0(v34, v35, v36);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_3_7();
    v17 = sub_1C96A7194();
LABEL_46:
    *(&v45 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      OUTLINED_FUNCTION_5_13();
      sub_1C96A4814();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    OUTLINED_FUNCTION_5_13();
    sub_1C96A4814();
    sub_1C9485BFC(v42, v6);
    goto LABEL_58;
  }

  sub_1C9485BFC(v42, v6);
LABEL_59:
  v37 = OUTLINED_FUNCTION_4_4();
  sub_1C94874C0(v37, v38);

  v39 = OUTLINED_FUNCTION_4_4();
  sub_1C9482F3C(v39, v40);
  return OUTLINED_FUNCTION_4_4();
}

uint64_t sub_1C94D530C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C94D5374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1C96A4784();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1C96A4414();
      swift_allocObject();
      v8 = sub_1C96A43D4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1C96A47E4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_1C94D543C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BA0);
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
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C94D5558(char *a1, int64_t a2, char a3)
{
  result = sub_1C94D543C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1C94D5578()
{
  result = qword_1EDB77CC0;
  if (!qword_1EDB77CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB77CC0);
  }

  return result;
}

unint64_t sub_1C94D55CC()
{
  result = qword_1EDB7AB68;
  if (!qword_1EDB7AB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC3A5FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7AB68);
  }

  return result;
}

uint64_t sub_1C94D5630()
{
  OUTLINED_FUNCTION_30();
  v2 = *v1;
  OUTLINED_FUNCTION_23_3();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_1C951E558;
  }

  else
  {
    v6 = sub_1C94D5750;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1C94D5750()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_5();

  return v0();
}

uint64_t sub_1C94D57A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v44 = a4;
  v45 = a6;
  v48 = a5;
  v50 = a1;
  active = type metadata accessor for ActiveUserModel();
  MEMORY[0x1EEE9AC00](active);
  v47 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7998);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7990);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v43 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v43 - v25;
  v49 = a3;
  sub_1C94D5EE0(a3, &v43 - v25);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, active);
  v46 = v10;
  v27 = *(v10 + 48);
  sub_1C94D23D0(a2, v15);
  sub_1C94D23D0(v26, &v15[v27]);
  if (__swift_getEnumTagSinglePayload(v15, 1, active) == 1)
  {
    sub_1C94BE204(v26, &qword_1EC3A7990);
    if (__swift_getEnumTagSinglePayload(&v15[v27], 1, active) == 1)
    {
      sub_1C94BE204(v15, &qword_1EC3A7990);
      v28 = v49;
      v29 = v47;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1C94D23D0(v15, v23);
    if (__swift_getEnumTagSinglePayload(&v15[v27], 1, active) != 1)
    {
      v29 = v47;
      sub_1C94D5F44(&v15[v27], v47);
      v41 = sub_1C94D5FA8(v23, v29);
      sub_1C94D6860(v29);
      sub_1C94BE204(v26, &qword_1EC3A7990);
      sub_1C94D6860(v23);
      sub_1C94BE204(v15, &qword_1EC3A7990);
      v28 = v49;
      if (v41)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    sub_1C94BE204(v26, &qword_1EC3A7990);
    sub_1C94D6860(v23);
  }

  sub_1C94BE204(v15, &qword_1EC3A7998);
  v28 = v49;
  v29 = v47;
LABEL_7:
  if (qword_1EDB77EA8 != -1)
  {
    swift_once();
  }

  v30 = sub_1C96A6154();
  __swift_project_value_buffer(v30, qword_1EDB77EB0);
  v31 = sub_1C96A6134();
  v32 = sub_1C96A76A4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1C945E000, v31, v32, "Persisting the local active user model", v33, 2u);
    MEMORY[0x1CCA8E3D0](v33, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  sub_1C94D5EE0(v28, v29);
  sub_1C959E940();
  sub_1C94D6860(v29);
LABEL_12:
  sub_1C94D5EE0(v28, v20);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, active);
  v34 = *(v46 + 48);
  sub_1C94D23D0(v48, v12);
  sub_1C94D23D0(v20, &v12[v34]);
  if (__swift_getEnumTagSinglePayload(v12, 1, active) == 1)
  {
    sub_1C94BE204(v20, &qword_1EC3A7990);
    if (__swift_getEnumTagSinglePayload(&v12[v34], 1, active) == 1)
    {
      return sub_1C94BE204(v12, &qword_1EC3A7990);
    }
  }

  else
  {
    v36 = v43;
    sub_1C94D23D0(v12, v43);
    if (__swift_getEnumTagSinglePayload(&v12[v34], 1, active) != 1)
    {
      sub_1C94D5F44(&v12[v34], v29);
      v42 = sub_1C94D5FA8(v36, v29);
      sub_1C94D6860(v29);
      sub_1C94BE204(v20, &qword_1EC3A7990);
      sub_1C94D6860(v36);
      result = sub_1C94BE204(v12, &qword_1EC3A7990);
      if (v42)
      {
        return result;
      }

      goto LABEL_18;
    }

    sub_1C94BE204(v20, &qword_1EC3A7990);
    sub_1C94D6860(v36);
  }

  sub_1C94BE204(v12, &qword_1EC3A7998);
LABEL_18:
  if (qword_1EDB77EA8 != -1)
  {
    swift_once();
  }

  v37 = sub_1C96A6154();
  __swift_project_value_buffer(v37, qword_1EDB77EB0);
  v38 = sub_1C96A6134();
  v39 = sub_1C96A76A4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1C945E000, v38, v39, "Persisting the remote active user model", v40, 2u);
    MEMORY[0x1CCA8E3D0](v40, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  sub_1C94D5EE0(v28, v29);
  sub_1C959E940();
  return sub_1C94D6860(v29);
}

void sub_1C94D5E78(uint64_t a1, void (*a2)(void))
{
  v3 = sub_1C963B2C8();
  a2();
}

uint64_t sub_1C94D5EE0(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveUserModel();
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_1C94D5F44(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveUserModel();
  (*(*(active - 8) + 32))(a2, a1, active);
  return a2;
}

uint64_t sub_1C94D5FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v12 = OUTLINED_FUNCTION_7(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A61F8);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v54[-v25];
  if ((sub_1C96A4A74() & 1) == 0)
  {
    goto LABEL_23;
  }

  v59 = v10;
  active = type metadata accessor for ActiveUserModel();
  if ((sub_1C96A49F4() & 1) == 0)
  {
    goto LABEL_23;
  }

  v56 = v15;
  v57 = active;
  v58 = v6;
  v28 = *(active + 24);
  v29 = *(v19 + 48);
  sub_1C94D63E8(a1 + v28, v26);
  sub_1C94D63E8(a2 + v28, &v26[v29]);
  OUTLINED_FUNCTION_25_1(v26);
  if (v30)
  {
    OUTLINED_FUNCTION_25_1(&v26[v29]);
    if (v30)
    {
      sub_1C9470AFC(v26, &unk_1EC3A5430);
      goto LABEL_13;
    }

LABEL_11:
    v34 = v26;
LABEL_22:
    sub_1C9470AFC(v34, &qword_1EC3A61F8);
    goto LABEL_23;
  }

  sub_1C94D63E8(v26, v18);
  OUTLINED_FUNCTION_25_1(&v26[v29]);
  v31 = v59;
  if (v30)
  {
    v32 = OUTLINED_FUNCTION_16_19();
    v33(v32);
    goto LABEL_11;
  }

  v35 = v58;
  (*(v58 + 32))(v59, &v26[v29], v4);
  OUTLINED_FUNCTION_0_56();
  sub_1C94D3688(v36, v37);
  v55 = OUTLINED_FUNCTION_18_17();
  v38 = *(v35 + 8);
  v38(v31, v4);
  v38(v18, v4);
  sub_1C9470AFC(v26, &unk_1EC3A5430);
  if ((v55 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v39 = v57;
  v40 = *(v57 + 28);
  v41 = *(v19 + 48);
  sub_1C94D63E8(a1 + v40, v23);
  sub_1C94D63E8(a2 + v40, v23 + v41);
  OUTLINED_FUNCTION_25_1(v23);
  if (v30)
  {
    OUTLINED_FUNCTION_25_1(v23 + v41);
    if (v30)
    {
      sub_1C9470AFC(v23, &unk_1EC3A5430);
LABEL_26:
      sub_1C94D6458(*(a1 + *(v39 + 32)), *(a2 + *(v39 + 32)));
      return v46 & 1;
    }

    goto LABEL_21;
  }

  v42 = v56;
  sub_1C94D63E8(v23, v56);
  OUTLINED_FUNCTION_25_1(v23 + v41);
  if (v43)
  {
    v44 = OUTLINED_FUNCTION_16_19();
    v45(v44);
LABEL_21:
    v34 = v23;
    goto LABEL_22;
  }

  v49 = v58;
  v48 = v59;
  (*(v58 + 32))(v59, v23 + v41, v4);
  OUTLINED_FUNCTION_0_56();
  sub_1C94D3688(v50, v51);
  v52 = OUTLINED_FUNCTION_18_17();
  v53 = *(v49 + 8);
  v53(v48, v4);
  v53(v42, v4);
  v39 = v57;
  sub_1C9470AFC(v23, &unk_1EC3A5430);
  if (v52)
  {
    goto LABEL_26;
  }

LABEL_23:
  v46 = 0;
  return v46 & 1;
}

uint64_t sub_1C94D63E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C94D6458(uint64_t a1, uint64_t a2)
{
  v6 = sub_1C96A66B4();
  OUTLINED_FUNCTION_1();
  v51 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_24();
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v52 = a2;
  if (a1 != a2 && *(a1 + 16) == *(v52 + 16))
  {
    v45 = (&v41 - v13);
    v46 = v14;
    v15 = 0;
    v43 = a1;
    v42 = a1 + 64;
    OUTLINED_FUNCTION_9_23();
    v17 = v16 >> 6;
    v48 = v51 + 16;
    v49 = (v51 + 32);
    v44 = (v51 + 8);
    while (1)
    {
      v18 = v46;
      if (!v2)
      {
        break;
      }

      v47 = (v2 - 1) & v2;
      v19 = __clz(__rbit64(v2)) | (v15 << 6);
LABEL_10:
      v22 = *(*(v43 + 48) + 8 * v19);
      v24 = v50;
      v23 = v51;
      (*(v51 + 16))(v50, *(v43 + 56) + *(v51 + 72) * v19, v6);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59F0);
      v26 = *(v25 + 48);
      *v18 = v22;
      (*(v23 + 32))(&v18[v26], v24, v6);
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v25);
      v2 = v47;
LABEL_11:
      v27 = v18;
      v28 = v45;
      sub_1C95647A0(v27, v45);
      v29 = OUTLINED_FUNCTION_15_20();
      if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
      {
        return;
      }

      v30 = *(v29 + 48);
      v31 = *v28;
      (*v49)(v3, v28 + v30, v6);
      v32 = sub_1C950B04C(v31);
      if ((v33 & 1) == 0)
      {
        (*v44)(v3, v6);
        return;
      }

      v34 = v51;
      v35 = v6;
      v36 = v50;
      (*(v51 + 16))(v50, *(v52 + 56) + *(v51 + 72) * v32, v35);
      sub_1C95A12F0(&qword_1EC3A62C0);
      v37 = sub_1C96A6F94();
      v38 = *(v34 + 8);
      v39 = v36;
      v6 = v35;
      v38(v39, v35);
      v38(v3, v35);
      if ((v37 & 1) == 0)
      {
        return;
      }
    }

    while (1)
    {
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v40 = OUTLINED_FUNCTION_15_20();
        __swift_storeEnumTagSinglePayload(v18, 1, 1, v40);
        v2 = 0;
        goto LABEL_11;
      }

      v21 = *(v42 + 8 * v20);
      ++v15;
      if (v21)
      {
        v47 = (v21 - 1) & v21;
        v19 = __clz(__rbit64(v21)) | (v20 << 6);
        v15 = v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C94D6860(uint64_t a1)
{
  active = type metadata accessor for ActiveUserModel();
  (*(*(active - 8) + 8))(a1, active);
  return a1;
}

uint64_t sub_1C94D68BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C96A6504();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 104))(v13, *MEMORY[0x1E69D62C0], v7, v11);
  v16 = a3;
  v17 = v3;
  v18 = a1;
  v19 = a2;
  sub_1C96A6534();
  return (*(v9 + 8))(v13, v7);
}

uint64_t sub_1C94D69FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5048);
  result = sub_1C96A5274();
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E48);
    result = sub_1C96A5274();
    if (v6)
    {
      v5 = type metadata accessor for LocationMetadataManager();
      swift_allocObject();
      result = LocationMetadataManager.init(geocodeService:store:)(v8, v9, v6, v7);
      a2[3] = v5;
      a2[4] = &protocol witness table for LocationMetadataManager;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C94D6B18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for LocationMetadataStore();
  result = sub_1C96A5264();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &protocol witness table for LocationMetadataStore;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void LocationMetadataStore.init(database:configuredCountryCode:)()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1C96A5174();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v1[5] = 0x4132750000000000;
  v1[7] = v5;
  v1[8] = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v7;
  sub_1C94B7608(&qword_1EDB7D098, MEMORY[0x1E69D6420]);
  sub_1C96A3D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5350);
  sub_1C94B7650();
  OUTLINED_FUNCTION_5_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7508);
  OUTLINED_FUNCTION_23();
  v1[6] = OUTLINED_FUNCTION_19_26();
  swift_retain_n();
  OUTLINED_FUNCTION_5_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7510);
  OUTLINED_FUNCTION_23();
  v1[2] = OUTLINED_FUNCTION_19_26();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_5_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7518);
  OUTLINED_FUNCTION_23();
  v1[3] = OUTLINED_FUNCTION_19_26();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_5_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7520);
  OUTLINED_FUNCTION_23();
  v12 = OUTLINED_FUNCTION_19_26();

  v1[4] = v12;
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C94D6DE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1C94D6E18()
{
  result = qword_1EDB7F040;
  if (!qword_1EDB7F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7F040);
  }

  return result;
}

unint64_t sub_1C94D6E74()
{
  result = qword_1EDB7F030;
  if (!qword_1EDB7F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7F030);
  }

  return result;
}

unint64_t sub_1C94D6ED0()
{
  result = qword_1EDB7F038;
  if (!qword_1EDB7F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7F038);
  }

  return result;
}

unint64_t sub_1C94D6F28()
{
  result = qword_1EDB7F050;
  if (!qword_1EDB7F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7F050);
  }

  return result;
}

unint64_t sub_1C94D6F80()
{
  result = qword_1EDB7F058[0];
  if (!qword_1EDB7F058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7F058);
  }

  return result;
}

unint64_t sub_1C94D6FD8()
{
  result = qword_1EDB7F048;
  if (!qword_1EDB7F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7F048);
  }

  return result;
}

unint64_t sub_1C94D7040()
{
  result = qword_1EDB7E0E0;
  if (!qword_1EDB7E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E0E0);
  }

  return result;
}

unint64_t sub_1C94D709C()
{
  result = qword_1EDB7E0D0;
  if (!qword_1EDB7E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E0D0);
  }

  return result;
}

unint64_t sub_1C94D70F8()
{
  result = qword_1EDB7E0D8;
  if (!qword_1EDB7E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E0D8);
  }

  return result;
}

unint64_t sub_1C94D7150()
{
  result = qword_1EDB7E0F0;
  if (!qword_1EDB7E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E0F0);
  }

  return result;
}

unint64_t sub_1C94D71A8()
{
  result = qword_1EDB7E0F8;
  if (!qword_1EDB7E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E0F8);
  }

  return result;
}

unint64_t sub_1C94D7200()
{
  result = qword_1EDB7E0E8;
  if (!qword_1EDB7E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E0E8);
  }

  return result;
}

unint64_t sub_1C94D7268()
{
  result = qword_1EDB7E2E0;
  if (!qword_1EDB7E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E2E0);
  }

  return result;
}

unint64_t sub_1C94D72C4()
{
  result = qword_1EDB7E2D0;
  if (!qword_1EDB7E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E2D0);
  }

  return result;
}

unint64_t sub_1C94D7320()
{
  result = qword_1EDB7E2D8;
  if (!qword_1EDB7E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E2D8);
  }

  return result;
}

unint64_t sub_1C94D7378()
{
  result = qword_1EDB7E2F0;
  if (!qword_1EDB7E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E2F0);
  }

  return result;
}

unint64_t sub_1C94D73D0()
{
  result = qword_1EDB7E2F8;
  if (!qword_1EDB7E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E2F8);
  }

  return result;
}

unint64_t sub_1C94D7428()
{
  result = qword_1EDB7E2E8;
  if (!qword_1EDB7E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E2E8);
  }

  return result;
}

uint64_t GeocodeService.init(appConfigurationManager:privacySampler:locationMetadataUpdater:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = type metadata accessor for AppConfiguration();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v51 = v8 - v7;
  sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v49 = v10;
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v48 = v12 - v11;
  sub_1C96A7724();
  OUTLINED_FUNCTION_1();
  v46 = v14;
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v45 = v16 - v15;
  sub_1C96A5404();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14();
  v18 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_14();
  v19 = objc_opt_self();
  v20 = sub_1C9493F40([v19 mainBundle], &selRef_bundleIdentifier);
  if (!v21)
  {
    goto LABEL_7;
  }

  if (v20 == 0xD000000000000012 && v21 == 0x80000001C96CE5D0)
  {
  }

  else
  {
    v23 = sub_1C96A7DE4();

    if ((v23 & 1) == 0)
    {
LABEL_7:
      v24 = sub_1C9493F40([v19 mainBundle], &selRef_bundleIdentifier);
      if (!v25)
      {
        goto LABEL_13;
      }

      if (v24 == 0xD000000000000016 && v25 == 0x80000001C96D2960)
      {

        goto LABEL_17;
      }

      v27 = sub_1C96A7DE4();

      if ((v27 & 1) == 0)
      {
LABEL_13:
        sub_1C9493F40([v19 mainBundle], &selRef_bundleIdentifier);
      }

LABEL_17:
      sub_1C946B5D0(0, &qword_1EDB7CD60);
      goto LABEL_18;
    }
  }

  sub_1C946B5D0(0, &qword_1EDB7CD60);
  OUTLINED_FUNCTION_1_43();
LABEL_18:
  *(v4 + 16) = sub_1C94D7C00();
  v28 = OBJC_IVAR____TtC11WeatherCore14GeocodeService_serverSideRegionAllowlistGeoJSON;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6380);
  __swift_storeEnumTagSinglePayload(v4 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtC11WeatherCore14GeocodeService_serverSideRegionGeoJSONLock;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *(v4 + v30) = sub_1C96A5124();
  v31 = OBJC_IVAR____TtC11WeatherCore14GeocodeService_geocodeRequestDeduper;
  sub_1C94D7C74(&unk_1EDB7D088, MEMORY[0x1E69D67A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6390);
  sub_1C9469CB4(&qword_1EDB7CE88, &unk_1EC3A6390);
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63A0);
  swift_allocObject();
  *(v4 + v31) = sub_1C96A5314();
  v32 = v4 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_weatherService;
  *(v32 + 32) = 0;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  sub_1C9469B6C(a1, v4 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_appConfigurationManager);
  sub_1C95AE040(a3, v4 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_locationMetadataUpdater, &unk_1EC3A63A8);
  sub_1C9469B6C(a2, v4 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_privacySampler);
  sub_1C946B5D0(0, &qword_1EDB7CDB0);
  sub_1C94D7C74(&qword_1EDB7CDC0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68);
  sub_1C9469CB4(&qword_1EDB7CE50, &qword_1EC3A4A68);
  sub_1C96A79E4();
  sub_1C96A6594();
  v33 = sub_1C96A7714();
  (*(v49 + 8))(v48, v50);
  (*(v46 + 8))(v45, v47);
  *(v4 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_queue) = v33;
  *(v4 + OBJC_IVAR____TtC11WeatherCore14GeocodeService_useBackgroundReverseGeocodingPriority) = sub_1C94D7D4C(a1) & 1;
  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  (*(v35 + 8))(v34, v35);
  v36 = v51 + *(v52 + 56);
  v37 = *(v36 + 16);
  v38 = *(v36 + 24);
  sub_1C96A53C4();
  OUTLINED_FUNCTION_4_34();
  sub_1C948CC9C(v51, v39);
  sub_1C95A6ABC(v37, v38);

  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  v42 = *(v41 + 24);
  v43 = sub_1C96A3D04();
  v42(v43, &protocol witness table for GeocodeService, v40, v41);

  sub_1C9470AFC(a3, &unk_1EC3A63A8);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

id sub_1C94D7C00()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C96A7004();

  v2 = [v0 initWithProxiedApplicationBundleId_];

  return v2;
}

uint64_t sub_1C94D7C74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C94D7CBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C94D7D04(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C94D7D4C(void *a1)
{
  v2 = type metadata accessor for AppConfiguration();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7FC80 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  if (v12[15])
  {
    v5 = 1;
  }

  else
  {
    v6 = a1[3];
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v6);
    (*(v7 + 8))(v6, v7);
    v8 = v4[*(v2 + 128) + 80];
    sub_1C948CC9C(v4, type metadata accessor for AppConfiguration);
    if (v8 == 1 && (v9 = [objc_opt_self() mainBundle], sub_1C9493F40(v9, &selRef_bundleIdentifier), v10))
    {
      if (sub_1C96A7104())
      {
        v5 = 1;
      }

      else
      {
        v5 = sub_1C96A7114();
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

uint64_t sub_1C94D7F0C()
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
  qword_1EDB7FC88 = result;
  return result;
}

uint64_t LocationMetadataManager.init(geocodeService:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1C96A5114();
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C96A5104();
  sub_1C96A5134();
  OUTLINED_FUNCTION_23();
  v12 = sub_1C96A5124();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC8];
  *(v4 + 32) = v12;
  *(v4 + 40) = v13;
  *(v4 + 56) = a4;
  *(v4 + 64) = v14;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 48) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  CurrentCountry = GeocodeManagerGetCurrentCountryCode()();
  *(v4 + 72) = sub_1C94D8350(CurrentCountry._countAndFlagsBits, CurrentCountry._object) & 1;
  sub_1C94D85D4();
  if (qword_1EDB7CF88 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v16 = sub_1C96A6154();
  __swift_project_value_buffer(v16, qword_1EDB7CF90);
  swift_retain_n();
  sub_1C96A53C4();
  v17 = sub_1C96A6134();
  v18 = sub_1C96A76A4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = OUTLINED_FUNCTION_14_2();
    v23 = sub_1C9484164(v20, v21, v22);

    *(v19 + 4) = v23;
    *(v19 + 12) = 1024;
    v24 = *(v5 + 72);

    *(v19 + 14) = v24;

    _os_log_impl(&dword_1C945E000, v17, v18, "Initializing LocationMetadata - configuredCountryCode=%s, supportsVendingFooterInfo=%{BOOL}d", v19, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v5;
}

uint64_t sub_1C94D8350(uint64_t a1, uint64_t a2)
{
  if ([objc_opt_self() isGreenTea])
  {
    goto LABEL_5;
  }

  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7CAD0 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  if (v7 == 1)
  {
LABEL_5:
    if (a1 == 20035 && a2 == 0xE200000000000000)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1C96A7DE4();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C94D844C()
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
  qword_1EDB7CAD8 = result;
  return result;
}

void sub_1C94D85D4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_handleCountryConfigurationChange_ name:*MEMORY[0x1E69A1620] object:0];
}

uint64_t sub_1C94D8650()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  __swift_allocate_value_buffer(v0, qword_1EDB79438);
  __swift_project_value_buffer(v0, qword_1EDB79438);
  v1 = [objc_opt_self() defaultManager];
  v2 = [v1 URLsForDirectory:9 inDomains:1];

  sub_1C96A4764();
  sub_1C96A72A4();

  sub_1C9492F8C();
}

uint64_t SyncedDataContextProvider.init(dataStorageURL:useTransientContext:)(uint64_t a1, int a2)
{
  v36 = a2;
  v37 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v35 = v3 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v34 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v17 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OBJC_IVAR____TtC11WeatherCore25SyncedDataContextProvider_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A30);
  v19 = OUTLINED_FUNCTION_3_17();
  *(v19 + 16) = xmmword_1C96AA1C0;
  sub_1C96A5104();
  v38[0] = v19;
  sub_1C946AA30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A38);
  sub_1C946C9C4();
  v20 = v33;
  sub_1C96A79E4();
  sub_1C96A5134();
  swift_allocObject();
  *(v20 + v18) = sub_1C96A5124();
  type metadata accessor for CoherenceFileMigrator();
  swift_initStackObject();
  sub_1C947F224(v37, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    v21 = v34;
    if (qword_1EDB79430 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v32, qword_1EDB79438);
    sub_1C96A4FD4();
    sub_1C96A4FB4();
    sub_1C96A4F94();

    sub_1C9493028(v22, v13, v16);
    (*(v21 + 8))(v13, v8);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_1C947F1BC(v7);
    }
  }

  else
  {
    v21 = v34;
    (*(v34 + 32))(v16, v7, v8);
  }

  sub_1C96A4704();
  v23 = *(v21 + 32);
  v23(v20 + OBJC_IVAR____TtC11WeatherCore25SyncedDataContextProvider_coherenceDataStorageURL, v13, v8);
  v24 = v35;
  (*(v21 + 16))(v35, v16, v8);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v8);
  v25 = type metadata accessor for CoherenceContextProvider();
  swift_allocObject();
  v26 = sub_1C9492B20(0, v24, v36 & 1);
  v27 = (v20 + OBJC_IVAR____TtC11WeatherCore25SyncedDataContextProvider_contextProvider);
  v27[3] = v25;
  v27[4] = &off_1F4908FD8;
  *v27 = v26;
  sub_1C9469B6C(v27, v38);
  v28 = v39;
  v29 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  (*(v29 + 16))(v28, v29);
  sub_1C947F1BC(v37);
  (*(v21 + 8))(v16, v8);
  v23(v20 + OBJC_IVAR____TtC11WeatherCore25SyncedDataContextProvider_coherenceContextStorageURL, v13, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  return v20;
}

void SyncedDataManager.__allocating_init(syncedDataContextProvider:savedLocationsReconciler:)()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v3 = v2;
  sub_1C96A5174();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  sub_1C9469B6C(v1, v10);
  v5 = swift_allocObject();
  sub_1C94670AC(v10, v5 + 16);
  *&v10[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_14_34();
  sub_1C949525C(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5350);
  sub_1C9469CB4(&qword_1EDB7CE98, &unk_1EC3A5350);
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7AC0);
  swift_allocObject();
  v8 = sub_1C96A5544();
  sub_1C9469B6C(v3, v10);
  swift_allocObject();
  sub_1C964D6D4(v10, v8);
  v9 = OUTLINED_FUNCTION_25_2();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C94D8E10()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

double UnitSetupManager.init()()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

void UnitSetupManager.setupWidget(appConfiguration:)()
{
  if (qword_1EDB80080 != -1)
  {
    OUTLINED_FUNCTION_0_79();
  }

  v0 = sub_1C96A6154();
  __swift_project_value_buffer(v0, qword_1EDB80088);
  oslog = sub_1C96A6134();
  v1 = sub_1C96A76A4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1C945E000, oslog, v1, "Setup unit configuration for Widget", v2, 2u);
    MEMORY[0x1CCA8E3D0](v2, -1, -1);
  }
}

uint64_t SavedLocationsReader.fetchSavedLocations(from:)(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for LocationDataModel();
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  if (qword_1EDB7CFA8 != -1)
  {
    OUTLINED_FUNCTION_0_91();
  }

  v15 = sub_1C96A6154();
  __swift_project_value_buffer(v15, qword_1EDB7CFB0);
  v16 = sub_1C96A6134();
  v17 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v17))
  {
    v18 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_6_27(v18);
    OUTLINED_FUNCTION_39_0(&dword_1C945E000, v19, v17, "Attempting to read saved locations from the CRDT container...");
    OUTLINED_FUNCTION_26();
  }

  sub_1C94D9448(a1, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v10) == 1)
  {
    sub_1C9470AFC(v2, &unk_1EC3A5F90);
    v20 = sub_1C96A6134();
    v21 = sub_1C96A7684();
    if (OUTLINED_FUNCTION_14_7(v21))
    {
      v22 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_6_27(v22);
      OUTLINED_FUNCTION_26();
    }

    v24 = sub_1C96A6134();
    v25 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_7(v25))
    {
      v26 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_6_27(v26);
      OUTLINED_FUNCTION_39_0(&dword_1C945E000, v27, v25, "No mergeable synced data found - falling back to legacy locations.");
      OUTLINED_FUNCTION_26();
    }

    v28 = sub_1C94D9920(a1);
    if (v28)
    {
      v29 = v28;
      v52 = a1;
      v30 = sub_1C962FBE8(v28);
      v31 = *(v30 + 16);
      v32 = *(v29 + 16);

      if (v31 != v32)
      {
        v33 = MEMORY[0x1E69E7CC0];
        if (v31)
        {
          v54 = MEMORY[0x1E69E7CC0];
          sub_1C9522DC0(0, v31, 0);
          v33 = v54;
          v34 = v30 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
          v35 = *(v53 + 72);
          do
          {
            sub_1C9630B44(v34, v8, type metadata accessor for LocationDataModel);
            v36 = sub_1C95F987C();
            sub_1C9630BA4(v8, type metadata accessor for LocationDataModel);
            v54 = v33;
            v38 = *(v33 + 16);
            v37 = *(v33 + 24);
            if (v38 >= v37 >> 1)
            {
              sub_1C9522DC0((v37 > 1), v38 + 1, 1);
              v33 = v54;
            }

            *(v33 + 16) = v38 + 1;
            *(v33 + 8 * v38 + 32) = v36;
            v34 += v35;
            --v31;
          }

          while (v31);
        }

        v47 = v52[3];
        v48 = v52[4];
        __swift_project_boxed_opaque_existential_1(v52, v47);
        v54 = v33;
        v49 = *(v48 + 16);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60D8);
        v49(&v54, 0xD000000000000010, 0x80000001C96D2340, v50, v47, v48);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_65();
    sub_1C9630D7C(v2, v14, v39);
    v40 = sub_1C96A6134();
    v41 = sub_1C96A76A4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_29();
      *v42 = 0;
      _os_log_impl(&dword_1C945E000, v40, v41, "Successfully read saved locations from the CRDT container.", v42, 2u);
      OUTLINED_FUNCTION_26();
    }

    v43 = v3[10];
    v44 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v43);
    v45 = (*(v44 + 24))(v14, v43, v44);
    v30 = sub_1C962FBE8(v45);

    OUTLINED_FUNCTION_2_63();
    sub_1C9630BA4(v14, v46);
  }

  return v30;
}

uint64_t type metadata accessor for LocationDataModel()
{
  result = qword_1EDB7F020;
  if (!qword_1EDB7F020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C94D9448@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28[-v5];
  v7 = type metadata accessor for SyncedData();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28[-v11];
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 8))(&v29, 0x61446465636E7973, 0xEA00000000006174, MEMORY[0x1E6969080], v13, v14);
  v16 = v29;
  v15 = v30;
  if (v30 >> 60 == 15)
  {
    if (qword_1EDB7CFA8 != -1)
    {
      swift_once();
    }

    v17 = sub_1C96A6154();
    __swift_project_value_buffer(v17, qword_1EDB7CFB0);
    v18 = sub_1C96A6134();
    v19 = sub_1C96A76A4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C945E000, v18, v19, "No mergeable synced data object found.", v20, 2u);
      MEMORY[0x1CCA8E3D0](v20, -1, -1);
      sub_1C9485BFC(v16, v15);
    }

    v21 = 1;
  }

  else
  {
    sub_1C94874C0(v29, v30);
    sub_1C9630DDC();
    sub_1C96A6D24();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    sub_1C9630D7C(v6, v12, type metadata accessor for SyncedData);
    if (qword_1EDB7CFA8 != -1)
    {
      swift_once();
    }

    v23 = sub_1C96A6154();
    __swift_project_value_buffer(v23, qword_1EDB7CFB0);
    sub_1C9630B44(v12, v9, type metadata accessor for SyncedData);
    v24 = sub_1C96A6134();
    v25 = sub_1C96A7684();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
      v27 = sub_1C96A6C84();
      sub_1C9630BA4(v9, type metadata accessor for SyncedData);
      *(v26 + 4) = v27;
      _os_log_impl(&dword_1C945E000, v24, v25, "Got serialized synced data with %ld locations.", v26, 0xCu);
      MEMORY[0x1CCA8E3D0](v26, -1, -1);
    }

    else
    {
      sub_1C9630BA4(v9, type metadata accessor for SyncedData);
    }

    sub_1C9485BFC(v16, v15);

    sub_1C9630D7C(v12, a2, type metadata accessor for SyncedData);
    v21 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v21, 1, v7);
}

uint64_t sub_1C94D9920(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6138);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v48 - v5;
  v7 = type metadata accessor for LocationDataModel();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v48 - v11;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = *(v13 + 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60F8);
  v14(v55, 0xD000000000000010, 0x80000001C96D2340, v15, v12, v13);
  v16 = v55[0];
  if (v55[0])
  {
    v17 = *(v55[0] + 16);
    if (v17)
    {
      v51 = v8;
      v18 = 0;
      v19 = v55[0] + 32;
      v54 = MEMORY[0x1E69E7CC0];
LABEL_4:
      v20 = v19 + 32 * v18;
      while (v17 != v18)
      {
        if (v18 >= *(v16 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        sub_1C9484328(v20, v55);
        sub_1C96300F0(v55, v2, v6);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
        {
          v50 = v19;
          v21 = v52;
          sub_1C9630D7C(v6, v52, type metadata accessor for LocationDataModel);
          sub_1C9630D7C(v21, v53, type metadata accessor for LocationDataModel);
          v22 = v54;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C94FB930();
            v22 = v28;
          }

          v23 = v22;
          v24 = *(v22 + 16);
          v54 = v23;
          v25 = v24 + 1;
          v19 = v50;
          if (v24 >= *(v23 + 24) >> 1)
          {
            v49 = v24 + 1;
            sub_1C94FB930();
            v25 = v49;
            v54 = v29;
          }

          ++v18;
          v26 = v53;
          v27 = v54;
          *(v54 + 16) = v25;
          sub_1C9630D7C(v26, v27 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v24, type metadata accessor for LocationDataModel);
          goto LABEL_4;
        }

        sub_1C9470AFC(v6, &qword_1EC3A6138);
        v20 += 32;
        ++v18;
      }

      if (qword_1EDB7CFA8 == -1)
      {
        goto LABEL_15;
      }

LABEL_30:
      swift_once();
LABEL_15:
      v30 = sub_1C96A6154();
      __swift_project_value_buffer(v30, qword_1EDB7CFB0);
      v31 = v54;
      sub_1C96A53C4();
      v32 = sub_1C96A6134();
      v33 = sub_1C96A76A4();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v55[0] = v35;
        *v34 = 134218499;
        *(v34 + 4) = *(v31 + 16);

        *(v34 + 12) = 2160;
        *(v34 + 14) = 1752392040;
        *(v34 + 22) = 2081;
        v36 = MEMORY[0x1CCA8CC40](v31, v7);
        v38 = sub_1C9484164(v36, v37, v55);

        *(v34 + 24) = v38;
        _os_log_impl(&dword_1C945E000, v32, v33, "Successfully fetched locations from the remote key value store. Location count = %ld. Locations=%{private,mask.hash}s", v34, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x1CCA8E3D0](v35, -1, -1);
        MEMORY[0x1CCA8E3D0](v34, -1, -1);
      }

      else
      {
      }
    }

    else
    {

      if (qword_1EDB7CFA8 != -1)
      {
        swift_once();
      }

      v43 = sub_1C96A6154();
      __swift_project_value_buffer(v43, qword_1EDB7CFB0);
      v44 = sub_1C96A6134();
      v45 = sub_1C96A76A4();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1C945E000, v44, v45, "Remote locations object found but empty - returning an empty list", v46, 2u);
        MEMORY[0x1CCA8E3D0](v46, -1, -1);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    if (qword_1EDB7CFA8 != -1)
    {
      swift_once();
    }

    v39 = sub_1C96A6154();
    __swift_project_value_buffer(v39, qword_1EDB7CFB0);
    v40 = sub_1C96A6134();
    v41 = sub_1C96A76A4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1C945E000, v40, v41, "No remote locations object found - returning nil", v42, 2u);
      MEMORY[0x1CCA8E3D0](v42, -1, -1);
    }

    return 0;
  }

  return v31;
}

uint64_t sub_1C94D9F68()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6138);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v45 - v3;
  v5 = type metadata accessor for LocationDataModel();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v45 - v11;
  v13 = type metadata accessor for SyncedData();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v0[15];
  v17 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v16);
  (*(v17 + 40))(v16, v17);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    v47 = v6;
    sub_1C9470AFC(v12, &unk_1EC3A5F90);
    v18 = v0[20];
    v19 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v18);
    v20 = *(v19 + 8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60F8);
    v20(v50, 0x736569746943, 0xE600000000000000, v21, v18, v19);
    v22 = v50[0];
    if (v50[0])
    {
      if (qword_1EDB7D010 != -1)
      {
LABEL_27:
        swift_once();
      }

      v23 = sub_1C96A6154();
      __swift_project_value_buffer(v23, qword_1EDB7D018);
      sub_1C96A53C4();
      v24 = sub_1C96A6134();
      v25 = sub_1C96A76A4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = *(v22 + 16);

        _os_log_impl(&dword_1C945E000, v24, v25, "SavedLocationsReader: found cachedLocationsDictionaries count: %ld", v26, 0xCu);
        MEMORY[0x1CCA8E3D0](v26, -1, -1);
      }

      else
      {
      }

      v34 = 0;
      v35 = *(v22 + 16);
      v36 = v22 + 32;
      v29 = MEMORY[0x1E69E7CC0];
      v46 = v22 + 32;
LABEL_14:
      v37 = v36 + 32 * v34;
      while (v35 != v34)
      {
        if (v34 >= *(v22 + 16))
        {
          __break(1u);
          goto LABEL_27;
        }

        sub_1C9484328(v37, v50);
        sub_1C962FE38(v50, v1, v4);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
        {
          v45 = v29;
          v38 = v48;
          sub_1C9630D7C(v4, v48, type metadata accessor for LocationDataModel);
          v39 = v38;
          v29 = v45;
          sub_1C9630D7C(v39, v49, type metadata accessor for LocationDataModel);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C94FB930();
            v29 = v42;
          }

          v40 = *(v29 + 16);
          v41 = v40 + 1;
          if (v40 >= *(v29 + 24) >> 1)
          {
            v45 = v40 + 1;
            sub_1C94FB930();
            v41 = v45;
            v29 = v43;
          }

          ++v34;
          *(v29 + 16) = v41;
          sub_1C9630D7C(v49, v29 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v40, type metadata accessor for LocationDataModel);
          v36 = v46;
          goto LABEL_14;
        }

        sub_1C9470AFC(v4, &qword_1EC3A6138);
        v37 += 32;
        ++v34;
      }
    }

    else
    {
      if (qword_1EDB7D010 != -1)
      {
        swift_once();
      }

      v30 = sub_1C96A6154();
      __swift_project_value_buffer(v30, qword_1EDB7D018);
      v31 = sub_1C96A6134();
      v32 = sub_1C96A76A4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1C945E000, v31, v32, "SavedLocationsReader: local saved locations not found", v33, 2u);
        MEMORY[0x1CCA8E3D0](v33, -1, -1);
      }

      return 0;
    }
  }

  else
  {
    sub_1C9630D7C(v12, v15, type metadata accessor for SyncedData);
    v27 = v0[10];
    v28 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v27);
    v29 = (*(v28 + 24))(v15, v27, v28);
    sub_1C9630BA4(v15, type metadata accessor for SyncedData);
  }

  return v29;
}

uint64_t sub_1C94DA5C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1C94DA614(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  *(a2 + 16) = v3;
  sub_1C96A53C4();

  return sub_1C96A7834();
}

uint64_t dispatch thunk of DefaultLocationManagerType.defaultLocation.getter()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v10 = (*(v1 + 8) + **(v1 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1C94B0CEC;

  return v10(v6, v4, v2);
}

uint64_t sub_1C94DA7A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0C0C;

  return DefaultLocationManager.defaultLocation.getter();
}

uint64_t DefaultLocationManager.defaultLocation.getter()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  OUTLINED_FUNCTION_7(v3);
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for Location();
  v1[5] = v4;
  OUTLINED_FUNCTION_7(v4);
  v1[6] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C94DA8FC()
{
  OUTLINED_FUNCTION_18();
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7CB00 != -1)
  {
    OUTLINED_FUNCTION_20_7();
  }

  sub_1C96A4EB4();

  if (*(v0 + 72) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v1[1] = sub_1C952AD30;

    return sub_1C9525838(1);
  }

  else
  {
    WCDefaultCityManager.defaultLocation()(*(v0 + 16));
    __swift_storeEnumTagSinglePayload(*(v0 + 16), 0, 1, *(v0 + 40));

    OUTLINED_FUNCTION_17();

    return v3();
  }
}

uint64_t sub_1C94DAA44()
{
  v2 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_16();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  (*(v7 + 104))(v1, *MEMORY[0x1E69D6EA0]);
  (*(v4 + 104))(v0, *MEMORY[0x1E69D6E88], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = OUTLINED_FUNCTION_4_19();
  qword_1EDB7CB08 = result;
  return result;
}

void WCDefaultCityManager.defaultLocation()(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_2();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v80 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_2();
  v82 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v80 - v15;
  v17 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v81 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v80 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v83 = &v80 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v80 - v26;
  if (qword_1EDB7FDC8 != -1)
  {
    swift_once();
  }

  v28 = sub_1C96A6154();
  v84 = __swift_project_value_buffer(v28, qword_1EDB7FDD0);
  v29 = sub_1C96A6134();
  v30 = sub_1C96A76A4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_29();
    v80 = v27;
    *v31 = 0;
    _os_log_impl(&dword_1C945E000, v29, v30, "Attempting to get the defaultLocation", v31, 2u);
    v27 = v80;
    OUTLINED_FUNCTION_26();
  }

  WCDefaultCityManager.defaultLocations()();
  sub_1C94DBCEC();

  if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
  {
    sub_1C94898C4(v16, v27);
    OUTLINED_FUNCTION_5_6();
    v48 = v83;
    sub_1C9489928(v27, v83, v49);
    v50 = sub_1C96A6134();
    v51 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_30_0(v51))
    {
      v52 = swift_slowAlloc();
      v53 = a1;
      v54 = swift_slowAlloc();
      v85 = v54;
      *v52 = 141558275;
      *(v52 + 4) = 1752392040;
      *(v52 + 12) = 2081;
      sub_1C94DBD84();
      v55 = sub_1C96A7DB4();
      v57 = v56;
      sub_1C94DBDDC(v48);
      v58 = sub_1C9484164(v55, v57, &v85);

      *(v52 + 14) = v58;
      _os_log_impl(&dword_1C945E000, v50, v51, "Got a non-empty defaultLocations. Choosing the first location=%{private,mask.hash}s", v52, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      a1 = v53;
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      sub_1C94DBDDC(v48);
    }

    v59 = v27;
    goto LABEL_26;
  }

  sub_1C94FB2D4(v16);
  v32 = sub_1C96A6134();
  v33 = sub_1C96A7684();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_29();
    *v34 = 0;
    _os_log_impl(&dword_1C945E000, v32, v33, "The defaultCities is empty.  Attempting to obtain a defaultCityForLocalTimeZone", v34, 2u);
    OUTLINED_FUNCTION_26();
  }

  v35 = [v2 defaultCityForLocalTimeZone];
  if (!v35)
  {
    v60 = sub_1C96A6134();
    v61 = sub_1C96A7694();
    if (OUTLINED_FUNCTION_30_0(v61))
    {
      *OUTLINED_FUNCTION_29() = 0;
      OUTLINED_FUNCTION_28_3(&dword_1C945E000, v62, v63, "Failed to get default city from AL database - returning Cupertino");
      OUTLINED_FUNCTION_26();
    }

    sub_1C96A4D64();
    v64 = sub_1C96A4DF4();
    if (__swift_getEnumTagSinglePayload(v7, 1, v64) != 1)
    {
      v65 = OUTLINED_FUNCTION_21_5();
      sub_1C95447DC(v65, v66, v7, v67, v68, v69);
      return;
    }

    __break(1u);
    goto LABEL_28;
  }

  v36 = v35;
  v37 = v82;
  Location.init(defaultCity:)();
  if (__swift_getEnumTagSinglePayload(v37, 1, v17) != 1)
  {
    sub_1C94898C4(v37, v22);
    OUTLINED_FUNCTION_5_6();
    v70 = v81;
    sub_1C9489928(v22, v81, v71);
    v72 = sub_1C96A6134();
    v73 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_30_0(v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v85 = v75;
      *v74 = 141558275;
      *(v74 + 4) = 1752392040;
      *(v74 + 12) = 2081;
      sub_1C94DBD84();
      v76 = sub_1C96A7DB4();
      v78 = v77;
      sub_1C94DBDDC(v70);
      v79 = sub_1C9484164(v76, v78, &v85);

      *(v74 + 14) = v79;
      _os_log_impl(&dword_1C945E000, v72, v73, "Got a defaultCityForLocalTimeZone. Location=%{private,mask.hash}s", v74, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      sub_1C94DBDDC(v70);
    }

    v59 = v22;
LABEL_26:
    sub_1C94898C4(v59, a1);
    return;
  }

  sub_1C94FB2D4(v37);
  v38 = sub_1C96A6134();
  v39 = sub_1C96A7694();
  if (OUTLINED_FUNCTION_30_0(v39))
  {
    *OUTLINED_FUNCTION_29() = 0;
    OUTLINED_FUNCTION_28_3(&dword_1C945E000, v40, v41, "Failed to convert DefaultCity to Location - returning Cupertino");
    OUTLINED_FUNCTION_26();
  }

  sub_1C96A4D64();
  v42 = sub_1C96A4DF4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v42) != 1)
  {
    v43 = OUTLINED_FUNCTION_21_5();
    sub_1C95447DC(v43, v44, v10, v45, v46, v47);

    return;
  }

LABEL_28:
  __break(1u);
}

id WCDefaultCityManager.defaultLocations()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v22 - v3;
  v5 = type metadata accessor for Location();
  v22[1] = *(v5 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 defaultCities];
  sub_1C94DB5E8();
  v10 = sub_1C96A72A4();

  result = sub_1C9470260(v10);
  v12 = result;
  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v12 == v13)
    {

      return v14;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA8D440](v13, v10);
    }

    else
    {
      if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      result = *(v10 + 8 * v13 + 32);
    }

    if (__OFADD__(v13, 1))
    {
      break;
    }

    Location.init(defaultCity:)();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      result = sub_1C94FB2D4(v4);
      ++v13;
    }

    else
    {
      sub_1C94898C4(v4, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22[0] = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C94FB4A8();
        v14 = v20;
      }

      v16 = *(v14 + 16);
      if (v16 >= *(v14 + 24) >> 1)
      {
        sub_1C94FB4A8();
        v14 = v21;
      }

      *(v14 + 16) = v16 + 1;
      OUTLINED_FUNCTION_12_6();
      v19 = v14 + v17 + *(v18 + 72) * v16;
      v8 = v22[0];
      result = sub_1C94898C4(v22[0], v19);
      ++v13;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1C94DB5E8()
{
  result = qword_1EDB7AB40;
  if (!qword_1EDB7AB40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB7AB40);
  }

  return result;
}

void Location.init(defaultCity:)()
{
  OUTLINED_FUNCTION_19();
  v86 = v0;
  v87 = v1;
  v3 = v2;
  v79 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_90();
  v81 = v7;
  v8 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v80 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  v18 = OUTLINED_FUNCTION_7(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v21 = v19 - v20;
  *&v23 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
  v25 = &v75 - v24;
  [v3 latitude];
  v27 = v26;
  [v3 longitude];
  v29 = v28;
  v30 = [v3 name];
  v83 = sub_1C96A7024();
  v32 = v31;

  v33 = CLLocationCoordinate2DMake(v27, v29);
  v34 = [v3 timeZone];
  sub_1C96A7024();

  sub_1C96A4D64();

  v82 = v25;
  sub_1C9470AA0(v25, v21, &unk_1EC3A5F60);
  OUTLINED_FUNCTION_23_1(v21, 1, v8);
  if (v64)
  {
    sub_1C9470AFC(v21, &unk_1EC3A5F60);
    if (qword_1EDB7D010 != -1)
    {
      swift_once();
    }

    v35 = sub_1C96A6154();
    __swift_project_value_buffer(v35, qword_1EDB7D018);
    sub_1C96A53C4();
    v36 = v3;
    v37 = sub_1C96A6134();
    v38 = sub_1C96A7684();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v85[0] = v40;
      *v39 = 141559299;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      v41 = v32;
      v42 = [v36 timeZone];
      v43 = sub_1C96A7024();
      v45 = v44;

      v46 = sub_1C9484164(v43, v45, v85);

      *(v39 + 14) = v46;
      *(v39 + 22) = 2160;
      *(v39 + 24) = 1752392040;
      *(v39 + 32) = 2081;
      v47 = sub_1C9484164(v83, v41, v85);

      *(v39 + 34) = v47;
      *(v39 + 42) = 2160;
      *(v39 + 44) = 1752392040;
      *(v39 + 52) = 2081;
      v84 = v33;
      type metadata accessor for CLLocationCoordinate2D(0);
      v48 = sub_1C96A70A4();
      v50 = sub_1C9484164(v48, v49, v85);

      *(v39 + 54) = v50;
      _os_log_impl(&dword_1C945E000, v37, v38, "Initialized a location from a default city and got a nil timeZone. timeZoneIdentifier=%{private,mask.hash}s, name=%{private,mask.hash}s, coordinate=%{private,mask.hash}s", v39, 0x3Eu);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v40, -1, -1);
      MEMORY[0x1CCA8E3D0](v39, -1, -1);
    }

    else
    {
    }

    sub_1C9470AFC(v82, &unk_1EC3A5F60);
    v66 = type metadata accessor for Location();
    v67 = v79;
    v68 = 1;
    v69 = 1;
  }

  else
  {
    v51 = v80;
    v76 = *(v80 + 32);
    v76(v16, v21, v8);
    v52 = sub_1C96A7844();
    v54 = v53;
    v55 = *(v51 + 16);
    v77 = v13;
    v78 = v8;
    v55(v13, v16, v8);
    sub_1C96A5954();
    sub_1C96A5944();
    sub_1C96A4A54();
    v56 = OUTLINED_FUNCTION_1_7();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
    *&v84.latitude = v52;
    v84.longitude = v54;
    swift_bridgeObjectRetain_n();
    sub_1C96A53C4();
    v60 = OUTLINED_FUNCTION_43_13();
    MEMORY[0x1CCA8CB00](v60);
    MEMORY[0x1CCA8CB00](v83, v32);
    v61 = v32;

    latitude = v84.latitude;
    longitude = v84.longitude;
    v64 = v52 == 0x746E6572727563 && *&v54 == 0xE700000000000000;
    if (v64)
    {

      v65 = 1;
    }

    else
    {
      v65 = sub_1C96A7DE4();
    }

    v70 = v16;
    v71 = v78;
    (*(v80 + 8))(v70, v78);
    sub_1C9470AFC(v82, &unk_1EC3A5F60);
    v72 = v65 & 1;
    v73 = type metadata accessor for Location();
    v74 = v79;
    *(v79 + v73[11]) = 0;
    *v74 = v52;
    *(v74 + 8) = v54;
    *(v74 + 16) = v83;
    *(v74 + 24) = v61;
    *(v74 + 32) = v33;
    *(v74 + 48) = v72;
    *(v74 + 56) = latitude;
    *(v74 + 64) = longitude;
    v76((v74 + v73[5]), v77, v71);
    sub_1C948E818(v81, v74 + v73[6]);
    OUTLINED_FUNCTION_14_11(v73[7]);
    OUTLINED_FUNCTION_14_11(v73[8]);
    OUTLINED_FUNCTION_14_11(v73[9]);
    OUTLINED_FUNCTION_14_11(v73[10]);
    v67 = OUTLINED_FUNCTION_1_7();
    v66 = v73;
  }

  __swift_storeEnumTagSinglePayload(v67, v68, v69, v66);
  OUTLINED_FUNCTION_30_12();
}

uint64_t sub_1C94DBCEC()
{
  OUTLINED_FUNCTION_27_2();
  v3 = type metadata accessor for Location();
  if (v2)
  {
    OUTLINED_FUNCTION_12_6();
    OUTLINED_FUNCTION_5_6();
    sub_1C9489928(v1 + v4, v0, v5);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v0, v6, 1, v3);
}

unint64_t sub_1C94DBD84()
{
  result = qword_1EDB7ADD0;
  if (!qword_1EDB7ADD0)
  {
    type metadata accessor for Location();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7ADD0);
  }

  return result;
}

uint64_t sub_1C94DBDDC(uint64_t a1)
{
  v2 = type metadata accessor for Location();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LocationCoordinate.storeKey.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C96AC330;
  OUTLINED_FUNCTION_3_58(v0, MEMORY[0x1E69E63B0]);
  v1 = sub_1C96A4AF4();
  v3 = v2;
  v4 = MEMORY[0x1E69E6158];
  *(v0 + 136) = MEMORY[0x1E69E6158];
  v5 = sub_1C94CF210();
  *(v0 + 144) = v5;
  *(v0 + 112) = v1;
  *(v0 + 120) = v3;
  CurrentCountry = GeocodeManagerGetCurrentCountryCode()();
  *(v0 + 176) = v4;
  *(v0 + 184) = v5;
  *(v0 + 152) = CurrentCountry;

  return MEMORY[0x1EEDC5E80](0x332E252066332E25, 0xEF40252040252066);
}

void LocationMetadataManager.resolveCountryCode(for:)()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17_24();
  v3 = v2;
  v4 = type metadata accessor for Location();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  memcpy(v39, v1, sizeof(v39));
  memcpy(v38, v1, sizeof(v38));
  sub_1C95087DC(v39, v40);
  LocationMetadataManager.availableCountryCode(for:)();
  v12 = v11;
  v14 = v13;
  memcpy(v40, v38, 0x48uLL);
  sub_1C953AEDC(v40);
  if (v14 != 1)
  {
    v38[0] = v12;
LABEL_8:
    v38[1] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6748);
    OUTLINED_FUNCTION_23();
    sub_1C96A56A4();
    goto LABEL_15;
  }

  if (LOBYTE(v39[6]) == 1)
  {
  }

  else
  {
    v15 = sub_1C96A7DE4();

    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v16 = WCCountryCodeEstimate();
  if (v16)
  {
    v17 = v16;
    v18 = sub_1C96A7024();
    v14 = v19;

    v38[0] = v18;
    goto LABEL_8;
  }

LABEL_9:
  v36 = v5;
  v35 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v39[4] longitude:v39[5]];
  if (qword_1EDB7CF88 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v37 = v3;
  v20 = sub_1C96A6154();
  __swift_project_value_buffer(v20, qword_1EDB7CF90);
  sub_1C9489760(v1, v10);
  v21 = sub_1C96A6134();
  v22 = sub_1C96A76A4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38[0] = v34;
    *v23 = 141558275;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    sub_1C94DBD84();
    v24 = sub_1C96A7DB4();
    v26 = v25;
    sub_1C94DBDDC(v10);
    v27 = sub_1C9484164(v24, v26, v38);

    *(v23 + 14) = v27;
    _os_log_impl(&dword_1C945E000, v21, v22, "About to resolve a location's country code by means of performing a reverse geocode request. location=%{private,mask.hash}s", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  else
  {

    v28 = sub_1C94DBDDC(v10);
  }

  MEMORY[0x1EEE9AC00](v28);
  v29 = v35;
  *(&v34 - 2) = v0;
  *(&v34 - 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A63C8);
  sub_1C96A5784();
  v30 = sub_1C96A55A4();
  sub_1C96A5644();

  sub_1C9489760(v1, v7);
  v31 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v32 = swift_allocObject();
  sub_1C94898C4(v7, v32 + v31);
  v33 = sub_1C96A55A4();
  sub_1C96A5664();

LABEL_15:
  OUTLINED_FUNCTION_20_0();
}

void LocationMetadataManager.availableCountryCode(for:)()
{
  OUTLINED_FUNCTION_19();
  memcpy(v12, v1, sizeof(v12));
  sub_1C96A5134();
  sub_1C96A3D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6740);
  sub_1C96A5554();

  if (v11 == 1)
  {
    v2 = *(v0 + 56);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C96A7544();
    OUTLINED_FUNCTION_23_17();
    sub_1C96A7544();
    (*(v2 + 32))(0, 0xE000000000000000, ObjectType, v2);
    v5 = v4;

    v6 = swift_unknownObjectRelease();
    if (v5 != 1)
    {
      MEMORY[0x1EEE9AC00](v6);
      sub_1C96A3D04();
      v7 = OUTLINED_FUNCTION_14_2();
      sub_1C94DDD40(v7, v8);
      sub_1C96A5554();
      v9 = OUTLINED_FUNCTION_14_2();
      sub_1C94DDFD8(v9, v10);
    }
  }

  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1C94DC638@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C96A7544();
  MEMORY[0x1CCA8CB00](45, 0xE100000000000000);
  sub_1C96A7544();
  swift_beginAccess();
  *a2 = sub_1C94DC708(0, 0xE000000000000000, *(a1 + 64));
  a2[1] = v4;
  swift_endAccess();
}

uint64_t sub_1C94DC708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C9476F90(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_17_6();
  return v3;
}

uint64_t LocationMetadataStore.queryCountryCode(for:)()
{
  OUTLINED_FUNCTION_17_5();
  v1 = sub_1C96A6504();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_62();
  v5 = OUTLINED_FUNCTION_28_19();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6740);
  sub_1C96A6534();
  (*(v3 + 8))(v0, v1);
  return v8;
}

uint64_t sub_1C94DC888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1C96A4A54();
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v72 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v75 = (&v68 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v68 - v17;
  v19 = sub_1C96A61C4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1C96A5534();
  if (!v83)
  {
LABEL_9:
    v36 = 0;
    v37 = 1;
LABEL_10:
    *a4 = v36;
    a4[1] = v37;
    return result;
  }

  v79 = v83;
  v80 = a4;
  v82 = sub_1C96A6314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7530);
  v81 = swift_allocBox();
  v24 = MEMORY[0x1E69D62D8];
  v85 = MEMORY[0x1E69E6158];
  v86 = MEMORY[0x1E69D62D8];
  v73 = a2;
  v83 = a2;
  v84 = a3;
  v76 = a3;
  sub_1C96A53C4();
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v83);
  swift_beginAccess();
  v26 = *(a1 + 56);
  v25 = *(a1 + 64);
  v85 = MEMORY[0x1E69E6158];
  v86 = v24;
  v83 = v26;
  v84 = v25;
  sub_1C96A53C4();
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v83);
  *v22 = v81;
  (*(v20 + 104))(v22, *MEMORY[0x1E69D6140], v19);
  v27 = sub_1C96A63E4();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v27);
  v28 = v88;
  sub_1C96A62D4();
  v88 = v28;
  if (v28)
  {

    sub_1C94DDC44(v18);
    (*(v20 + 8))(v22, v19);
    v88 = 0;
LABEL_4:
    v29 = v76;
    v30 = v73;
    a4 = v80;
    if (qword_1EDB7CF88 != -1)
    {
      swift_once();
    }

    v31 = sub_1C96A6154();
    __swift_project_value_buffer(v31, qword_1EDB7CF90);
    sub_1C96A53C4();
    v32 = sub_1C96A6134();
    v33 = sub_1C96A76A4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v83 = v35;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      *(v34 + 14) = sub_1C9484164(v30, v29, &v83);
      _os_log_impl(&dword_1C945E000, v32, v33, "No countryCode found for key: %{private,mask.hash}s", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1CCA8E3D0](v35, -1, -1);
      MEMORY[0x1CCA8E3D0](v34, -1, -1);
    }

    goto LABEL_9;
  }

  v81 = a1;

  sub_1C94DDC44(v18);
  (*(v20 + 8))(v22, v19);
  v38 = v87[0];
  if (!v87[0])
  {
    goto LABEL_4;
  }

  v39 = v87[2];
  v82 = v87[1];
  v40 = v87[3];
  v41 = v75;
  sub_1C96A6354();
  v42 = v78;
  result = __swift_getEnumTagSinglePayload(v41, 1, v78);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C96A5954();
    v43 = v74;
    sub_1C96A5944();
    v44 = v41;
    v45 = sub_1C96A4994();
    v46 = *(v77 + 8);
    v46(v43, v42);
    v75 = v46;
    v46(v44, v42);
    if (v45)
    {
      v36 = sub_1C94DDCAC();
      v37 = v47;

LABEL_22:
      a4 = v80;
      goto LABEL_10;
    }

    if (qword_1EDB7CF88 != -1)
    {
      swift_once();
    }

    v48 = sub_1C96A6154();
    __swift_project_value_buffer(v48, qword_1EDB7CF90);
    v49 = v76;
    sub_1C96A53C4();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
    v50 = sub_1C96A6134();
    v51 = sub_1C96A76A4();

    if (!os_log_type_enabled(v50, v51))
    {

      goto LABEL_21;
    }

    v69 = v51;
    v52 = swift_slowAlloc();
    v70 = v39;
    v53 = v52;
    v68 = swift_slowAlloc();
    v87[0] = v68;
    *v53 = 141559299;
    *(v53 + 4) = 1752392040;
    *(v53 + 12) = 2081;
    *(v53 + 14) = sub_1C9484164(v73, v49, v87);
    *(v53 + 22) = 2160;
    *(v53 + 24) = 1752392040;
    *(v53 + 32) = 2081;
    v83 = sub_1C94DDCAC();
    v84 = v54;
    sub_1C94BAC20();
    v55 = sub_1C96A7DB4();
    v56 = v38;
    v58 = v57;

    v59 = sub_1C9484164(v55, v58, v87);
    v60 = v78;

    *(v53 + 34) = v59;
    *(v53 + 42) = 2160;
    *(v53 + 44) = 1752392040;
    *(v53 + 52) = 2081;
    v61 = v72;
    sub_1C96A6354();
    LODWORD(v59) = __swift_getEnumTagSinglePayload(v61, 1, v60);
    v74 = v40;

    v76 = v56;

    if (v59 != 1)
    {
      v62 = v71;
      (*(v77 + 32))(v71, v61, v60);
      sub_1C94B7608(&qword_1EDB7CC50, MEMORY[0x1E6969530]);
      v63 = sub_1C96A7DB4();
      v65 = v64;
      v75(v62, v60);
      v66 = sub_1C9484164(v63, v65, v87);

      *(v53 + 54) = v66;
      _os_log_impl(&dword_1C945E000, v50, v69, "CountryCode expired. id=%{private,mask.hash}s, countryCode=%{private,mask.hash}s, expires=%{private,mask.hash}s", v53, 0x3Eu);
      v67 = v68;
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v67, -1, -1);
      MEMORY[0x1CCA8E3D0](v53, -1, -1);

LABEL_21:
      LocationMetadataStore.purgeExpiredCountryCodes()();

      v36 = 0;
      v37 = 1;
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C94DD29C@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1C96A5534();
  if (v6)
  {
    a1(result);
    v5 = sub_1C96A64B4();

    sub_1C96A3D04();
    sub_1C96A6324();

    sub_1C96A6374();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1C94DD368@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1C94DD398()
{
  v37 = sub_1C96A6464();
  OUTLINED_FUNCTION_1();
  v35 = v0;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  v36 = v3 - v2;
  v33 = sub_1C96A63F4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v34 = v8 - v7;
  v32 = sub_1C96A64E4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = (v13 - v12);
  v15 = sub_1C96A6404();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  v21 = v20 - v19;
  v22 = sub_1C96A61E4();
  MEMORY[0x1EEE9AC00](v22 - 8);
  OUTLINED_FUNCTION_14();
  v23 = sub_1C96A64D4();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v29 = v28 - v27;
  sub_1C96A64F4();
  if (qword_1EDB7E2C8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v23, qword_1EDB7BEB8);
  (*(v25 + 16))(v29, v30, v23);
  sub_1C96A61D4();
  (*(v17 + 104))(v21, *MEMORY[0x1E69D6268], v15);
  *v14 = 32;
  (*(v10 + 104))(v14, *MEMORY[0x1E69D6298], v32);
  (*(v5 + 104))(v34, *MEMORY[0x1E69D6248], v33);
  (*(v35 + 104))(v36, *MEMORY[0x1E69D6270], v37);
  result = sub_1C96A6444();
  qword_1EDB7CF50 = result;
  return result;
}

uint64_t sub_1C94DD76C()
{
  v0 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = sub_1C96A64D4();
  __swift_allocate_value_buffer(v10, qword_1EDB7BEB8);
  v11 = __swift_project_value_buffer(v10, qword_1EDB7BEB8);
  v12 = WDWeatherLibraryDirectory();
  sub_1C96A4734();

  sub_1C96A4704();
  v13 = *(v2 + 8);
  v13(v6, v0);
  v14 = sub_1C96A4744();
  v16 = v15;
  v13(v9, v0);
  *v11 = v14;
  v11[1] = v16;
  OUTLINED_FUNCTION_8_1();
  return (*(v17 + 104))(v11);
}

unint64_t sub_1C94DD910()
{
  result = qword_1EDB7C3A0;
  if (!qword_1EDB7C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C3A0);
  }

  return result;
}

uint64_t sub_1C94DD984()
{
  v0 = *a002;
  sub_1C96A53C4();
  return v0;
}

uint64_t sub_1C94DD9BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12_34();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_14_30();
  v13 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v6);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_14_30();
  sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v6);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v6);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_14_30();
  sub_1C96A6344();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  return v13;
}

uint64_t sub_1C94DDC18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C94DD9BC();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1C94DDC44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C94DDCAC()
{
  result = sub_1C96A6354();
  if (v4)
  {
    v1 = v3;
    v2 = v3 == 0x766C6F7365726E75 && v4 == 0xEC000000656C6261;
    if (v2 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 0;
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C94DDD40(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_1C96A53C4();
  }

  return result;
}

uint64_t sub_1C94DDD60(uint64_t a1)
{
  sub_1C96A7544();
  MEMORY[0x1CCA8CB00](45, 0xE100000000000000);
  sub_1C96A7544();
  swift_beginAccess();
  sub_1C96A53C4();
  swift_isUniquelyReferenced_nonNull_native();
  v3 = *(a1 + 64);
  sub_1C94DDE5C();
  *(a1 + 64) = v3;

  return swift_endAccess();
}

uint64_t sub_1C94DDE5C()
{
  OUTLINED_FUNCTION_103();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1C9476F90(v3, v1);
  OUTLINED_FUNCTION_0_10();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_1C96A7E44();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F70);
  if (sub_1C96A7B84())
  {
    sub_1C9476F90(v4, v2);
    OUTLINED_FUNCTION_14_6();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  v16 = *v0;
  if (v13)
  {
    v17 = (*(v16 + 56) + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    OUTLINED_FUNCTION_101();
  }

  else
  {
    sub_1C94DDF84(v12, v4, v2, v8, v6, v16);
    OUTLINED_FUNCTION_101();

    return sub_1C96A53C4();
  }
}

void sub_1C94DDF84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_9_40(a6 + 8 * (a1 >> 6));
  v8 = (v6[6] + 16 * v7);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v6[7] + 16 * v7);
  *v11 = v12;
  v11[1] = v13;
  v14 = v6[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v16;
  }
}

uint64_t sub_1C94DDFD8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C94DE060()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C94DE0DC()
{
  v1 = (type metadata accessor for PrecipitationNotification() - 8);
  v37 = *(*v1 + 80);
  v2 = (v37 + 24) & ~v37;
  v3 = *(*v1 + 64);
  v33 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
  OUTLINED_FUNCTION_10_2();
  v36 = *(v4 + 80);
  v5 = (v2 + v3 + v36) & ~v36;
  v34 = *(v6 + 64);

  v7 = v0 + v2;

  v8 = v1[8];
  v9 = sub_1C96A5DD4();
  OUTLINED_FUNCTION_6();
  v11 = *(v10 + 8);
  v11(v7 + v8, v9);
  v11(v7 + v1[9], v9);
  v12 = v1[10];
  sub_1C96A5CB4();
  OUTLINED_FUNCTION_6();
  (*(v13 + 8))(v7 + v12);
  v14 = v1[11];
  sub_1C96A5D64();
  OUTLINED_FUNCTION_6();
  (*(v15 + 8))(v7 + v14);
  v16 = v1[12];
  v17 = sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  (*(v18 + 8))(v7 + v16, v17);
  if (!OUTLINED_FUNCTION_20_1(v7 + v1[13]))
  {
    OUTLINED_FUNCTION_23_4();
    v19();
  }

  v35 = v5;
  v20 = v0 + v5;

  v21 = v20 + *(type metadata accessor for NotificationSubscription(0) + 20);

  v22 = type metadata accessor for Location();
  v23 = v22[5];
  v24 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  v26 = *(v25 + 8);
  v26(v21 + v23, v24);
  if (!OUTLINED_FUNCTION_20_1(v21 + v22[6]))
  {
    OUTLINED_FUNCTION_23_4();
    v27();
  }

  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_17_3();

  v28 = v21 + *(type metadata accessor for NotificationSubscription.Location(0) + 20);

  v26(v28 + v22[5], v24);
  if (!OUTLINED_FUNCTION_20_1(v28 + v22[6]))
  {
    OUTLINED_FUNCTION_23_4();
    v29();
  }

  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_17_3();

  if (!OUTLINED_FUNCTION_20_1(v20 + *(v33 + 20)))
  {
    OUTLINED_FUNCTION_23_4();
    v30();
  }

  v31 = (((v34 + v35 + 7) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v31 + 8, v37 | v36 | 7);
}

uint64_t sub_1C94DE4F8()
{
  v20 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
  OUTLINED_FUNCTION_10_2();
  v2 = *(v1 + 80);
  v21 = *(v3 + 64);

  v4 = v0 + ((v2 + 24) & ~v2);

  v5 = v4 + *(type metadata accessor for NotificationSubscription(0) + 20);

  v6 = type metadata accessor for Location();
  v7 = *(v6 + 20);
  v8 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v11 = *(v6 + 24);
  v12 = sub_1C96A4A54();
  if (!OUTLINED_FUNCTION_21_4(v5 + v11))
  {
    OUTLINED_FUNCTION_7_4();
    (*(v13 + 8))(v5 + v11, v12);
  }

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_28_5();
  v14 = v5 + *(type metadata accessor for NotificationSubscription.Location(0) + 20);

  v10(v14 + *(v6 + 20), v8);
  v15 = *(v6 + 24);
  if (!OUTLINED_FUNCTION_21_4(v14 + v15))
  {
    OUTLINED_FUNCTION_7_4();
    (*(v16 + 8))(v14 + v15, v12);
  }

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_28_5();
  v17 = *(v20 + 20);
  if (!OUTLINED_FUNCTION_21_4(v4 + v17))
  {
    OUTLINED_FUNCTION_7_4();
    (*(v18 + 8))(v4 + v17, v12);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 24) & ~v2) + v21, v2 | 7);
}

uint64_t sub_1C94DE804()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C94DEA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C96A4D14();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_1C96A4DF4();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1C94DEAB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C96A4D14();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_1C96A4DF4();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1C94DEC28()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C94DEC60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F98);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C94DED80()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C94DEDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C94DEE84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

char *sub_1C94DEF80(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_18(a3, result);
  }

  return result;
}

uint64_t sub_1C94DEFA0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1C94DEFDC@<X0>(_BYTE *a1@<X8>)
{
  result = NotificationSubscriptionManager.useSuggestedLocationsEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C94DF04C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51B0);
  OUTLINED_FUNCTION_8_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C94DF0DC()
{

  OUTLINED_FUNCTION_54();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C94DF164@<X0>(uint64_t *a1@<X8>)
{
  result = LocationsOfInterestManager.locations.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C94DF1BC()
{
  v1 = (type metadata accessor for DefaultLocationManager.Configuration() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[7];
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  (*(v6 + 8))(v0 + v3 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1C94DF2C4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C94DF2FC()
{
  v1 = sub_1C96A60A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C94DF3CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C94DF414()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C94DF450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C96A4DF4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C94DF4D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C96A4DF4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C94DF588()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C94DF624()
{
  MEMORY[0x1CCA8E4B0](v0 + 16);
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C94DF658()
{
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C94DF68C()
{

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

uint64_t sub_1C94DF6C4@<X0>(_DWORD *a1@<X8>)
{
  result = LocationManager.authorizationState.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C94DF71C()
{

  v0 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C94DF74C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1C94DF784()
{

  v1 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C94DF7BC()
{

  v1 = OUTLINED_FUNCTION_16_10();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C94DF800()
{
  v1 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C94DF838()
{
  v1 = sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1C94DF904()
{
  v1 = sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);

  (*(v3 + 8))(v0 + ((v4 + 24) & ~v4), v1);
  v5 = OUTLINED_FUNCTION_25_8();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_1C94DF9B4()
{

  v1 = OUTLINED_FUNCTION_16_10();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C94DF9EC()
{
  sub_1C96A60A4();
  OUTLINED_FUNCTION_6();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1C94DFA80()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C94DFAC8()
{
  v1 = type metadata accessor for Location();
  OUTLINED_FUNCTION_10_2();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = v0 + v3;

  v5 = v1[5];
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  (*(v6 + 8))(v0 + v3 + v5);
  v7 = v1[6];
  v8 = sub_1C96A4A54();
  if (!OUTLINED_FUNCTION_43_2(v8))
  {
    (*(*(v5 - 8) + 8))(v4 + v7, v5);
  }

  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();

  v9 = OUTLINED_FUNCTION_25_8();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1C94DFC28()
{

  v0 = OUTLINED_FUNCTION_16_10();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C94DFC60()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C94DFCA8()
{
  v1 = type metadata accessor for Location();
  OUTLINED_FUNCTION_10_2();
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = v0 + v3;

  v5 = v1[5];
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  (*(v6 + 8))(v0 + v3 + v5);
  v7 = v1[6];
  v8 = sub_1C96A4A54();
  if (!OUTLINED_FUNCTION_43_2(v8))
  {
    (*(*(v5 - 8) + 8))(v4 + v7, v5);
  }

  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();

  v9 = OUTLINED_FUNCTION_25_8();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1C94DFE10()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 44, 7);
}

uint64_t sub_1C94DFE50()
{
  v1 = OUTLINED_FUNCTION_16_10();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C94DFF8C()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

BOOL sub_1C94E0038()
{
  v0 = sub_1C96A7BE4();

  return v0 != 0;
}

uint64_t sub_1C94E0080()
{
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C94E00D8()
{
  _Block_release(*(v0 + 16));

  v1 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C94E0114()
{

  v0 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C94E0154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C96A4A94();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C94E0200(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C96A4A94();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C94E0754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C94E0720(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C94E09D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NotificationSubscription(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_1C96A4A54();
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1C94E0AA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for NotificationSubscription(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_1C96A4A54();
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C94E0B94()
{
  MEMORY[0x1CCA8E4B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C94E0BCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C94E0C04()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C94E0CAC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C94E0CEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1C94E0D78(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1C96A5DD4();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_1C96A5CB4();
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(&a1[v10], a2, v9);
  }
}

_BYTE *sub_1C94E0E3C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_1C96A5DD4();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_1C96A5CB4();
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(&v5[v10], a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C94E0F00()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C94E0F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Beaufort.Category.Range(0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C94E1024(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Beaufort.Category.Range(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C94E10CC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C94E1104()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C94E1144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58E0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C94E11FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58E0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C94E13F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9564E08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C94E1420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C94E14E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C94E16B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotificationSubscription(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1C94E175C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NotificationSubscription(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1C94E1834()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C94E18C4()
{
  v1 = (type metadata accessor for UserIdentity() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);

  v8(v0 + v3 + v1[9], v6);

  v8(v0 + v3 + v1[11], v6);
  v8(v0 + v3 + v1[12], v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C94E1AA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C70);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C94E1AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C70);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C94E1B4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C94E1B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158);
  OUTLINED_FUNCTION_16_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5160);
  OUTLINED_FUNCTION_16_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1C94E1C90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158);
  OUTLINED_FUNCTION_16_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5160);
    OUTLINED_FUNCTION_16_1();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1C94E1D90(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C94E1E60()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C94E1F18()
{
  sub_1C96A4764();
  OUTLINED_FUNCTION_1_39();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v1 + v5, v0);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v7, v4 | 7);
}

uint64_t sub_1C94E1FF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C94E2038()
{
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_16_10();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C94E20C0()
{
  MEMORY[0x1CCA8E4B0](v0 + 16);
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C94E20F4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C94E2144()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C94E218C()
{
  type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_124();
  v4 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 32);
  v6 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  OUTLINED_FUNCTION_0_36();
  (*(v7 + 8))(v6);
  v8 = *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
  OUTLINED_FUNCTION_0_36();
  (*(v9 + 8))(v6 + v8);

  if (*(v1 + v5))
  {
  }

  v10 = OUTLINED_FUNCTION_120_1();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1C94E22D0()
{
  OUTLINED_FUNCTION_30_1();
  type metadata accessor for SyncedData();
  OUTLINED_FUNCTION_124();
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  OUTLINED_FUNCTION_0_36();
  (*(v4 + 8))(v1 + v3);
  v5 = *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
  OUTLINED_FUNCTION_0_36();
  (*(v6 + 8))(v1 + v3 + v5);

  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x1EEE6BDD0](v7, v8, v9);
}

uint64_t sub_1C94E23F4()
{

  v0 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C94E242C()
{

  v1 = OUTLINED_FUNCTION_16_10();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C94E246C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C94E24B4()
{
  if (*(v0 + 16) >= 2uLL)
  {
  }

  v1 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C94E24F4()
{
  OUTLINED_FUNCTION_30_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_9(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SyncedData();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v6))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
    OUTLINED_FUNCTION_0_36();
    (*(v7 + 8))(v0 + v3);
    v8 = *(v6 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
    OUTLINED_FUNCTION_0_36();
    (*(v9 + 8))(v0 + v3 + v8);
  }

  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1C94E264C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1C94E2684()
{
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C94E26B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C94E26F4()
{
  OUTLINED_FUNCTION_30_1();
  v1 = type metadata accessor for Location();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[5];
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_36();
  (*(v5 + 8))(v0 + v2 + v4);
  v6 = v1[6];
  v7 = sub_1C96A4A54();
  if (!__swift_getEnumTagSinglePayload(v0 + v2 + v6, 1, v7))
  {
    OUTLINED_FUNCTION_8_1();
    (*(v8 + 8))(v3 + v6, v7);
  }

  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();

  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1C94E2864()
{
  sub_1C9482F3C(*(v0 + 16), *(v0 + 24));
  v1 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C94E2894()
{
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C94E28C8()
{

  v0 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C94E28F8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C94E2938()
{
  if (*(v0 + 24))
  {
  }

  v1 = OUTLINED_FUNCTION_16_10();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C94E2AD4()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

BOOL sub_1C94E2B20()
{
  v0 = sub_1C96A7BE4();

  return v0 != 0;
}

uint64_t sub_1C94E2B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Location();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C94E2C38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Location();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C94E2CE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C94E2D18()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1C94E2D70()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C94E2DB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C94E2E14()
{
  v1 = sub_1C96A5874();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | 7);
}

uint64_t sub_1C94E2F38()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C94E2F70()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C94E307C()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C94E30E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C96A4764();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C94E31A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C96A4764();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C94E3270()
{
  OUTLINED_FUNCTION_103();
  type metadata accessor for UserIdentity();
  OUTLINED_FUNCTION_124();
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 16);
  v4 = v1 + v3;

  v5 = v0[7];
  v6 = sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v8 = *(v7 + 8);
  v8(v4 + v5, v6);

  v8(v4 + v0[9], v6);

  v8(v4 + v0[11], v6);
  v8(v4 + v0[12], v6);

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1C94E33CC()
{
  OUTLINED_FUNCTION_103();
  v1 = *(type metadata accessor for UserIdentityChange() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = type metadata accessor for UserIdentity();
  v4 = v3[5];
  v5 = sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v7 = *(v6 + 8);
  v7(v0 + v2 + v4, v5);
  OUTLINED_FUNCTION_26_0();
  v8 = OUTLINED_FUNCTION_10_25(v3[7]);
  (v7)(v8);
  OUTLINED_FUNCTION_26_0();
  v9 = OUTLINED_FUNCTION_10_25(v3[9]);
  (v7)(v9);
  v10 = OUTLINED_FUNCTION_10_25(v3[10]);
  (v7)(v10);
  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

void *sub_1C94E35EC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1C94E35FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C94E3638()
{

  if ((*(v0 + 32) - 1) >= 3)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C94E36C4()
{

  OUTLINED_FUNCTION_54();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C94E36F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C94E3900()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C94E394C()
{
  type metadata accessor for Location();
  OUTLINED_FUNCTION_0_68();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = v1 + v5;

  OUTLINED_FUNCTION_15_24();
  OUTLINED_FUNCTION_0_36();
  (*(v9 + 8))(v1 + v5 + v2);
  v10 = *(v0 + 24);
  v11 = sub_1C96A4A54();
  if (!OUTLINED_FUNCTION_20_1(v1 + v5 + v10))
  {
    OUTLINED_FUNCTION_3_35();
    (*(v12 + 8))(v8 + v10, v11);
  }

  OUTLINED_FUNCTION_21_20();
  OUTLINED_FUNCTION_21_20();
  OUTLINED_FUNCTION_21_20();
  OUTLINED_FUNCTION_21_20();

  return MEMORY[0x1EEE6BDD0](v1, ((v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_1C94E3AB0()
{
  type metadata accessor for Location();
  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_13_27();

  v3 = v1 + v2;

  OUTLINED_FUNCTION_15_24();
  OUTLINED_FUNCTION_0_36();
  (*(v4 + 8))(v1 + v2 + v2);
  v5 = *(v0 + 24);
  v6 = sub_1C96A4A54();
  if (!OUTLINED_FUNCTION_20_1(v3 + v5))
  {
    OUTLINED_FUNCTION_3_35();
    (*(v7 + 8))(v3 + v5, v6);
  }

  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_9_28();

  OUTLINED_FUNCTION_8_28();
  if (!v8)
  {
  }

  v9 = OUTLINED_FUNCTION_7_29();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1C94E3CAC()
{
  type metadata accessor for Location();
  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_13_27();
  v3 = v1 + v2;

  OUTLINED_FUNCTION_15_24();
  OUTLINED_FUNCTION_0_36();
  (*(v4 + 8))(v1 + v2 + v2);
  v5 = *(v0 + 24);
  v6 = sub_1C96A4A54();
  if (!OUTLINED_FUNCTION_20_1(v3 + v5))
  {
    OUTLINED_FUNCTION_3_35();
    (*(v7 + 8))(v3 + v5, v6);
  }

  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_9_28();

  OUTLINED_FUNCTION_8_28();
  if (!v8)
  {
  }

  v9 = OUTLINED_FUNCTION_7_29();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

BOOL sub_1C94E3E9C()
{
  v0 = sub_1C96A7BE4();

  return v0 != 0;
}

uint64_t sub_1C94E3F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68F0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C94E3FF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68F0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C94E41A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C96A4A54();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C94E41EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C96A4A54();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C94E4238()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C94E43D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C95DC04C();
  *a1 = result;
  return result;
}

uint64_t sub_1C94E4434()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C94E4474()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C94E4508()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + v4;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 1, v3 | 7);
}

uint64_t sub_1C94E45DC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C94E462C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C94E4674()
{
  v1 = sub_1C96A42E4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C94E4784()
{

  v0 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C94E47CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C94E4874()
{
  OUTLINED_FUNCTION_103();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_0();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, AssociatedTypeWitness);
  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1C94E49AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C94E49EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C96A7484();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C94E4A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C96A7484();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C94E4A8C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C94E4AC4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C94E4AFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C94E4B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CachedCurrentLocation.EmbeddedLocation(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_1C96A4A54();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1C94E4DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserIdentity();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C94E4E20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserIdentity();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C94E4E6C()
{
  v1 = (type metadata accessor for NotificationSubscription(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*v1 + 64);

  v4 = v0 + v3 + v1[7];

  v5 = type metadata accessor for Location();
  v6 = v5[5];
  v7 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  v9 = *(v8 + 8);
  v9(v4 + v6, v7);
  v10 = v5[6];
  v11 = sub_1C96A4A54();
  if (!__swift_getEnumTagSinglePayload(v4 + v10, 1, v11))
  {
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();

  v12 = v4 + *(type metadata accessor for NotificationSubscription.Location(0) + 20);

  v9(v12 + v5[5], v7);
  v13 = v5[6];
  if (!__swift_getEnumTagSinglePayload(v12 + v13, 1, v11))
  {
    (*(*(v11 - 8) + 8))(v12 + v13, v11);
  }

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v15, v2 | 7);
}

uint64_t sub_1C94E50F0()
{
  v1 = sub_1C96A5AD4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C94E5200()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C94E5238()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C94E5278()
{
  v2 = OUTLINED_FUNCTION_5_43();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1C94E52B4()
{
  v2 = OUTLINED_FUNCTION_5_43();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_1C94E52F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_5_43();
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5670);
    v8 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v7);
}

uint64_t sub_1C94E5390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_5_43();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5670);
    v10 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

id sub_1C94E5438@<X0>(void *a1@<X8>)
{
  result = Location.clLocation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C94E5650()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C94E5704()
{
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C94E5738()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C94E5770()
{
  v1 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C94E5828()
{
  MEMORY[0x1CCA8E4B0](v0 + 16);
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C94E585C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 44, 7);
}

uint64_t sub_1C94E589C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C94E5914()
{
  OUTLINED_FUNCTION_55_5();
  type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_124();

  OUTLINED_FUNCTION_84_2();

  type metadata accessor for Location();
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_93_1();
  v1(v2);
  v3 = OUTLINED_FUNCTION_104_2();
  if (!OUTLINED_FUNCTION_34_11(v3))
  {
    OUTLINED_FUNCTION_3_35();
    v4 = OUTLINED_FUNCTION_92_2();
    v5(v4);
  }

  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_77_2();
  type metadata accessor for NotificationSubscription.Location(0);
  OUTLINED_FUNCTION_60_5();

  v6 = OUTLINED_FUNCTION_41_12();
  v1(v6);
  if (!OUTLINED_FUNCTION_32_7())
  {
    OUTLINED_FUNCTION_3_35();
    v7 = OUTLINED_FUNCTION_91_2();
    v8(v7);
  }

  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_58_4();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1C94E5AA8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C94E5AF0()
{
  OUTLINED_FUNCTION_100_1();
  v1 = type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_10_2();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  OUTLINED_FUNCTION_10_2();
  v7 = *(v6 + 80);
  v8 = v5 + v7 + v3;

  v35 = v1;
  v9 = v0 + v3 + *(v1 + 20);

  type metadata accessor for Location();
  v10 = OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_6();
  v12 = *(v11 + 8);
  v13 = v11 + 8;
  v12(v9 + v1, v10);
  v14 = v5[6];
  v15 = sub_1C96A4A54();
  if (!OUTLINED_FUNCTION_21_4(v9 + v14))
  {
    OUTLINED_FUNCTION_7_4();
    (*(v16 + 8))(v9 + v14, v15);
  }

  v17 = v8 & ~v7;
  OUTLINED_FUNCTION_74_3();
  OUTLINED_FUNCTION_74_3();
  OUTLINED_FUNCTION_74_3();
  OUTLINED_FUNCTION_74_3();

  v18 = v9 + *(type metadata accessor for NotificationSubscription.Location(0) + 20);

  v12(v18 + v5[5], v10);
  v19 = v5[6];
  if (!OUTLINED_FUNCTION_21_4(v18 + v19))
  {
    OUTLINED_FUNCTION_7_4();
    (*(v20 + 8))(v18 + v19, v15);
  }

  OUTLINED_FUNCTION_74_3();
  OUTLINED_FUNCTION_74_3();
  OUTLINED_FUNCTION_74_3();
  OUTLINED_FUNCTION_74_3();

  v21 = v0 + v17 + *(Schedule + 20);

  v22 = v21 + *(v35 + 20);

  v23 = OUTLINED_FUNCTION_21_25();
  (v12)(v23);
  v24 = v5[6];
  if (!OUTLINED_FUNCTION_21_4(v22 + v24))
  {
    OUTLINED_FUNCTION_7_4();
    (*(v25 + 8))(v22 + v24, v15);
  }

  OUTLINED_FUNCTION_38_7();
  OUTLINED_FUNCTION_37_10();
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_80_2();

  v26 = OUTLINED_FUNCTION_21_25();
  (v12)(v26);
  if (!OUTLINED_FUNCTION_56_4())
  {
    OUTLINED_FUNCTION_7_4();
    (*(v27 + 8))(v22 + v13, v15);
  }

  OUTLINED_FUNCTION_38_7();
  OUTLINED_FUNCTION_37_10();
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_83_1();
  v28 = OUTLINED_FUNCTION_88_1(*(Schedule + 24));
  v29(v28);
  OUTLINED_FUNCTION_99_1();

  return MEMORY[0x1EEE6BDD0](v30, v31, v32);
}

uint64_t sub_1C94E5ECC()
{
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  OUTLINED_FUNCTION_10_2();
  v5 = *(v4 + 80);
  v21 = *(v6 + 64);
  v22 = (v5 + 16) & ~v5;
  v23 = v0;

  v7 = v0 + v22 + *(Schedule + 20);

  v8 = v7 + *(type metadata accessor for NotificationSubscription(0) + 20);

  type metadata accessor for Location();
  v9 = OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_6();
  v11 = *(v10 + 8);
  v11(v8 + v2, v9);
  v12 = v1[6];
  v13 = sub_1C96A4A54();
  if (!OUTLINED_FUNCTION_21_4(v8 + v12))
  {
    OUTLINED_FUNCTION_7_4();
    (*(v14 + 8))(v8 + v12, v13);
  }

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();

  v15 = v8 + *(type metadata accessor for NotificationSubscription.Location(0) + 20);

  v11(v15 + v1[5], v9);
  v16 = v1[6];
  if (!OUTLINED_FUNCTION_21_4(v15 + v16))
  {
    OUTLINED_FUNCTION_7_4();
    (*(v17 + 8))(v15 + v16, v13);
  }

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();

  v18 = OUTLINED_FUNCTION_88_1(*(Schedule + 24));
  v19(v18);

  return MEMORY[0x1EEE6BDD0](v23, v22 + v21, v5 | 7);
}

uint64_t sub_1C94E6148()
{
  v1 = (type metadata accessor for PrecipitationNotification() - 8);
  v34 = *(*v1 + 80);
  v2 = (v34 + 16) & ~v34;
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
  OUTLINED_FUNCTION_10_2();
  v32 = *(v4 + 80);
  v33 = *(v5 + 64);
  v6 = v0 + v2;

  v7 = v1[8];
  v8 = sub_1C96A5DD4();
  OUTLINED_FUNCTION_6();
  v10 = *(v9 + 8);
  v10(v6 + v7, v8);
  v10(v6 + v1[9], v8);
  v11 = v1[10];
  sub_1C96A5CB4();
  OUTLINED_FUNCTION_6();
  (*(v12 + 8))(v6 + v11);
  v13 = v1[11];
  sub_1C96A5D64();
  OUTLINED_FUNCTION_6();
  (*(v14 + 8))(v6 + v13);
  v15 = v1[12];
  v16 = sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  (*(v17 + 8))(v6 + v15, v16);
  if (!OUTLINED_FUNCTION_20_1(v6 + v1[13]))
  {
    OUTLINED_FUNCTION_23_4();
    v18();
  }

  v31 = (v3 + v32 + 72) & ~v32;

  v19 = v0 + v31 + *(type metadata accessor for NotificationSubscription(0) + 20);

  v20 = type metadata accessor for Location();
  v21 = v20[5];
  v22 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  v24 = *(v23 + 8);
  v24(v19 + v21, v22);
  if (!OUTLINED_FUNCTION_20_1(v19 + v20[6]))
  {
    OUTLINED_FUNCTION_23_4();
    v25();
  }

  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_17_3();

  v26 = v19 + *(type metadata accessor for NotificationSubscription.Location(0) + 20);

  v24(v26 + v20[5], v22);
  if (!OUTLINED_FUNCTION_20_1(v26 + v20[6]))
  {
    OUTLINED_FUNCTION_23_4();
    v27();
  }

  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_17_3();

  if (!OUTLINED_FUNCTION_20_1(v0 + v31 + *(v30 + 20)))
  {
    OUTLINED_FUNCTION_23_4();
    v28();
  }

  return MEMORY[0x1EEE6BDD0](v0, v31 + v33, v34 | v32 | 7);
}