uint64_t static ToolDatabase.Pager.dataVaultPath.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA6D908 != -1)
  {
    OUTLINED_FUNCTION_6_4();
  }

  v2 = sub_1C9061EBC();
  v3 = __swift_project_value_buffer(v2, qword_1EDA6D910);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ToolDatabase.Pager.dataVaultPath.setter(uint64_t a1)
{
  if (qword_1EDA6D908 != -1)
  {
    OUTLINED_FUNCTION_6_4();
  }

  v2 = sub_1C9061EBC();
  v3 = __swift_project_value_buffer(v2, qword_1EDA6D910);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_94();
  return v7(v6);
}

uint64_t (*static ToolDatabase.Pager.dataVaultPath.modify())()
{
  if (qword_1EDA6D908 != -1)
  {
    OUTLINED_FUNCTION_6_4();
  }

  v0 = sub_1C9061EBC();
  __swift_project_value_buffer(v0, qword_1EDA6D910);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C8D17EF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C8D17790();
  swift_beginAccess();
  v3 = sub_1C9061EBC();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C8D17F6C(uint64_t a1)
{
  v2 = sub_1C8D17790();
  swift_beginAccess();
  v3 = sub_1C9061EBC();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t ToolDatabase.Pager.cleanupSchedule.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  result = type metadata accessor for ToolDatabase.Pager(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

void ToolDatabase.Pager.sortedExistingFiles.getter()
{
  OUTLINED_FUNCTION_196();
  v117 = v0;
  v119[1] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313048, &qword_1C906A960);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_97();
  v109 = v7;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313050, &qword_1C906A968);
  OUTLINED_FUNCTION_11(v108);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_34_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  OUTLINED_FUNCTION_9(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_16_5();
  v110 = type metadata accessor for ToolDatabase.DatabaseFile(v17);
  v18 = OUTLINED_FUNCTION_11(v110);
  v101 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25();
  v114 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v107 = v97 - v25;
  OUTLINED_FUNCTION_111();
  v26 = sub_1C9061EBC();
  v27 = OUTLINED_FUNCTION_11(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25();
  v118 = (v32 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v116 = v97 - v35;
  v106 = objc_opt_self();
  v36 = [v106 defaultManager];
  v37 = sub_1C9061DDC();
  v119[0] = 0;
  v38 = [v36 contentsOfDirectoryAtURL:v37 includingPropertiesForKeys:0 options:0 error:v119];

  v39 = v119[0];
  if (!v38)
  {
    v94 = v119[0];
    sub_1C9061D7C();

    swift_willThrow();
LABEL_33:
    v96 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_198();
    return;
  }

  v100 = v1;
  v113 = v26;
  v40 = sub_1C906419C();
  v41 = v39;

  v42 = *(v40 + 16);
  if (v42)
  {
    v44 = *(v29 + 16);
    v43 = v29 + 16;
    v111 = v44;
    v45 = (*(v43 + 64) + 32) & ~*(v43 + 64);
    v97[1] = v40;
    v46 = v40 + v45;
    v99 = (v9 + 32);
    v98 = (v9 + 8);
    v47 = MEMORY[0x1E69E7CC0];
    v112 = v43;
    v103 = *(v43 + 56);
    v104 = v43 - 8;
    v102 = (v43 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48 = v110;
    v50 = v113;
    v49 = v114;
    v105 = v2;
    while (1)
    {
      v115 = v47;
      v51 = v116;
      v52 = v111;
      v111(v116, v46, v50);
      v52(v118, v51, v50);
      v53 = *(v48 + 32);
      v54 = [v106 defaultManager];
      *(v49 + v53) = v54;
      sub_1C9061E5C();
      if (qword_1EDA6DA10 != -1)
      {
        OUTLINED_FUNCTION_14_7();
        swift_once();
      }

      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313060, &qword_1C906A970);
      __swift_project_value_buffer(v55, qword_1EDA6DA18);
      v56 = v109;
      v57 = v117;
      sub_1C906332C();
      if (v57)
      {

        v58 = OUTLINED_FUNCTION_23_3();
        v50 = v113;
        (v55)(v58, v113);
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v59, v60, v61, v108);
        v117 = 0;
      }

      else
      {
        v117 = 0;

        v62 = OUTLINED_FUNCTION_19_1();
        v63 = v108;
        OUTLINED_FUNCTION_108_2(v62, v64, v108);
        if (!v65)
        {
          v78 = v100;
          (*v99)(v100, v56, v63);
          if (qword_1EDA6DA30 != -1)
          {
            OUTLINED_FUNCTION_13_4();
            swift_once();
          }

          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313068, &qword_1C906A978);
          __swift_project_value_buffer(v79, qword_1EDA6DA38);
          v80 = v110;
          v55 = *(v110 + 28);
          sub_1C906204C();
          v81 = v114;
          sub_1C906334C();
          v111(v81, v118, v113);
          v67 = v105;
          if (qword_1EDA6D9E8 != -1)
          {
            OUTLINED_FUNCTION_12_4();
            swift_once();
          }

          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313070, &qword_1C906A980);
          __swift_project_value_buffer(v82, qword_1EDA6D9F0);
          sub_1C906334C();
          *(v81 + *(v80 + 24)) = v119[0];
          v48 = v80;
          if (qword_1EDA6DA50 != -1)
          {
            OUTLINED_FUNCTION_11_3();
            swift_once();
          }

          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313078, &qword_1C906A988);
          __swift_project_value_buffer(v83, qword_1EDA6B1A0);
          sub_1C906334C();
          v84 = OUTLINED_FUNCTION_23_3();
          v85 = v113;
          (v55)(v84, v113);
          v86 = v63;
          v50 = v85;
          (*v98)(v78, v86);
          *(v81 + *(v48 + 20)) = v119[0];
          OUTLINED_FUNCTION_0_11();
          sub_1C8CBA80C(v81, v67);
          OUTLINED_FUNCTION_150();
          __swift_storeEnumTagSinglePayload(v87, v88, v89, v48);
          OUTLINED_FUNCTION_1_11();
          sub_1C8CBA864(v81, v90);
          goto LABEL_12;
        }

        v66 = OUTLINED_FUNCTION_23_3();
        v50 = v113;
        (v55)(v66, v113);
      }

      sub_1C8CBE41C(v56, &qword_1EC313048);

      v67 = v105;
      OUTLINED_FUNCTION_115();
      v48 = v110;
      __swift_storeEnumTagSinglePayload(v68, v69, v70, v110);
LABEL_12:
      (v55)(v116, v50);
      v71 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_108_2(v71, v72, v48);
      v47 = v115;
      if (v65)
      {
        sub_1C8CBE41C(v67, &qword_1EC313058);
      }

      else
      {
        OUTLINED_FUNCTION_0_11();
        sub_1C8CBAF30(v67, v107);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v91 = v47[2];
          sub_1C8D00E4C();
          v47 = v92;
        }

        v74 = v47[2];
        if (v74 >= v47[3] >> 1)
        {
          sub_1C8D00E4C();
          v47 = v93;
        }

        v47[2] = v74 + 1;
        v75 = v47 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
        v76 = *(v101 + 72);
        OUTLINED_FUNCTION_0_11();
        sub_1C8CBAF30(v107, v77);
      }

      v49 = v114;
      v46 += v103;
      if (!--v42)
      {

        goto LABEL_31;
      }
    }
  }

  v47 = MEMORY[0x1E69E7CC0];
LABEL_31:
  v119[0] = v47;

  v95 = v117;
  sub_1C8D1D190(v119);
  if (!v95)
  {

    goto LABEL_33;
  }

  __break(1u);
}

uint64_t ToolDatabase.Pager.init(directory:latestInterpretableVersion:cleanupSchedule:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = *a3;
  if ((sub_1C9061D8C() & 1) == 0)
  {
    __break(1u);
  }

  v8 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11(v8);
  v10 = v9;
  (*(v11 + 16))(a4, a1, v8);
  v12 = type metadata accessor for ToolDatabase.Pager(0);
  *(a4 + *(v12 + 20)) = a2;
  *(a4 + *(v12 + 24)) = v7;
  v13 = [objc_opt_self() defaultManager];
  v14 = sub_1C9061DDC();
  v22[0] = 0;
  v15 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v22];

  if (v15)
  {
    v16 = *(v10 + 8);
    v17 = v22[0];
    result = v16(a1, v8);
  }

  else
  {
    v19 = v22[0];
    sub_1C9061D7C();

    swift_willThrow();
    (*(v10 + 8))(a1, v8);
    OUTLINED_FUNCTION_2_6();
    result = sub_1C8CBA864(a4, v20);
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ToolDatabase.Pager.activeEnvironment.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v10 = OUTLINED_FUNCTION_13_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  sub_1C8CBAA48();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    result = sub_1C8CBE41C(v8, &qword_1EC313058);
    v14 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    sub_1C8CBAF30(v8, v1);
    v14 = *(v1 + *(v9 + 20));
    OUTLINED_FUNCTION_1_11();
    result = sub_1C8CBA864(v1, v15);
  }

  *a1 = v14;
  return result;
}

void ToolDatabase.Pager.createDatabaseFile(environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  a22 = v27;
  a23 = v28;
  v29 = v23;
  v31 = v30;
  v33 = v32;
  v34 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v35 = v34 - 8;
  v36 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  v62 = sub_1C9063D3C();
  v37 = OUTLINED_FUNCTION_11(v62);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_34_3();
  v42 = sub_1C9061EBC();
  v43 = OUTLINED_FUNCTION_11(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  v46 = *v31;
  (*(v47 + 16))(v26, v29);
  a13 = v46;
  v48 = type metadata accessor for ToolDatabase.Pager(0);
  sub_1C8D1922C(v26, &a13, *(v29 + *(v48 + 20)), v33);
  v49 = *(v33 + *(v35 + 40));
  sub_1C9061E5C();
  v50 = sub_1C9063EBC();

  [v49 createFileAtPath:v50 contents:0 attributes:0];

  v51 = *MEMORY[0x1E69E10F0];
  sub_1C906371C();
  OUTLINED_FUNCTION_0_11();
  sub_1C8CBA80C(v33, v25);
  v52 = sub_1C9063D1C();
  v53 = sub_1C906443C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v63 = v55;
    *v54 = 136315138;
    v56 = ToolDatabase.DatabaseFile.debugDescription.getter();
    v58 = v57;
    OUTLINED_FUNCTION_1_11();
    sub_1C8CBA864(v25, v59);
    v60 = sub_1C8CACE04(v56, v58, &v63);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_1C8C9B000, v52, v53, "Created %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_25_0();
  }

  else
  {

    OUTLINED_FUNCTION_1_11();
    sub_1C8CBA864(v25, v61);
  }

  (*(v39 + 8))(v24, v62);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D1922C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v9 = v8[8];
  *(a4 + v9) = [objc_opt_self() defaultManager];
  result = sub_1C9061D8C();
  if (result)
  {
    v11 = v8[7];
    _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
    sub_1C906478C();

    OUTLINED_FUNCTION_24_5();
    if (v7)
    {
      v12 = 7170419;
    }

    else
    {
      v12 = 1685025392;
    }

    if (v7)
    {
      v13 = 0xE300000000000000;
    }

    else
    {
      v13 = 0xE400000000000000;
    }

    MEMORY[0x1CCA81A90](v12, v13);

    MEMORY[0x1CCA81A90](30254, 0xE200000000000000);
    v14 = sub_1C9064BDC();
    MEMORY[0x1CCA81A90](v14);

    MEMORY[0x1CCA81A90](45, 0xE100000000000000);
    v15 = sub_1C906200C();
    MEMORY[0x1CCA81A90](v15);

    MEMORY[0x1CCA81A90](0x6574696C71732ELL, 0xE700000000000000);
    sub_1C9061DFC();

    v16 = sub_1C9061EBC();
    OUTLINED_FUNCTION_13_1(v16);
    result = (*(v17 + 8))(a1);
    *(a4 + v8[6]) = a3;
    *(a4 + v8[5]) = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t ToolDatabase.DatabaseFile.debugDescription.getter()
{
  sub_1C906478C();

  v1 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v9 = *(v0 + v1[6]);
  v2 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v2);

  MEMORY[0x1CCA81A90](0x203A766E65202CLL, 0xE700000000000000);
  if (*(v0 + v1[5]))
  {
    v3 = 7170419;
  }

  else
  {
    v3 = 1685025392;
  }

  if (*(v0 + v1[5]))
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1CCA81A90](v3, v4);

  MEMORY[0x1CCA81A90](0x203A6469202CLL, 0xE600000000000000);
  v5 = v1[7];
  sub_1C906204C();
  sub_1C8D1EAD4(&qword_1EDA6CB98, MEMORY[0x1E69695A8]);
  v6 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v6);

  MEMORY[0x1CCA81A90](0x203A7461202CLL, 0xE600000000000000);
  sub_1C9061EBC();
  sub_1C8D1EAD4(&qword_1EDA6D460, MEMORY[0x1E6968FB0]);
  v7 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v7);

  return 0xD000000000000010;
}

void ToolDatabase.Pager.setActive(databaseFile:)()
{
  OUTLINED_FUNCTION_196();
  v74 = v1;
  v76 = *MEMORY[0x1E69E9840];
  v2 = sub_1C906188C();
  v3 = OUTLINED_FUNCTION_11(v2);
  v63 = v4;
  v64 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v62 = v8 - v7;
  v9 = OUTLINED_FUNCTION_111();
  v10 = type metadata accessor for ToolDatabase.DatabaseFile(v9);
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v65 = v15 - v14;
  OUTLINED_FUNCTION_111();
  v16 = sub_1C9063D3C();
  v17 = OUTLINED_FUNCTION_11(v16);
  v67 = v18;
  v68 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v66 = v22 - v21;
  OUTLINED_FUNCTION_111();
  v23 = sub_1C9061D9C();
  v24 = OUTLINED_FUNCTION_11(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  v29 = sub_1C9061EBC();
  v30 = OUTLINED_FUNCTION_11(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  v37 = v36 - v35;
  v38 = [objc_opt_self() defaultManager];
  strcpy(&v75, "Tools-active");
  BYTE13(v75) = 0;
  HIWORD(v75) = -5120;
  v72 = *MEMORY[0x1E6968F70];
  v71 = *(v26 + 104);
  v71(v0);
  sub_1C8CBAEDC();
  sub_1C9061EAC();
  v70 = *(v26 + 8);
  v70(v0, v23);
  v39 = sub_1C9061DDC();
  v73 = v29;
  v69 = *(v32 + 8);
  v69(v37, v29);
  *&v75 = 0;
  LODWORD(v29) = [v38 removeItemAtURL:v39 error:&v75];

  if (v29)
  {
    v40 = v75;
  }

  else
  {
    v41 = v75;
    v42 = sub_1C9061D7C();

    swift_willThrow();
  }

  sub_1C9061E5C();
  OUTLINED_FUNCTION_24_5();
  *&v75 = v43 & 0xFFFFFFFFFFFFLL | 0x6361000000000000;
  *(&v75 + 1) = 0xEC00000065766974;
  (v71)(v0, v72, v23);
  sub_1C9061EAC();
  v70(v0, v23);
  sub_1C9061E5C();
  v69(v37, v73);
  v44 = sub_1C9063F7C();

  v45 = sub_1C9063F7C();

  v46 = symlink((v44 + 32), (v45 + 32));

  if (v46 < 0)
  {
    MEMORY[0x1CCA817F0](v47);
    v58 = sub_1C9063D4C();
    if ((v58 & 0x100000000) != 0)
    {
      v59 = 5;
    }

    else
    {
      v59 = v58;
    }

    LODWORD(v75) = v59;
    sub_1C8D1CE58(MEMORY[0x1E69E7CC0]);
    sub_1C8D1EAD4(&unk_1EDA62CE0, MEMORY[0x1E6967EB8]);
    sub_1C9061D5C();
    sub_1C906187C();
    (*(v63 + 8))(v62, v64);
    swift_willThrow();
  }

  else
  {
    v48 = *MEMORY[0x1E69E10F0];
    sub_1C906371C();
    OUTLINED_FUNCTION_0_11();
    sub_1C8CBA80C(v74, v65);
    v49 = sub_1C9063D1C();
    v50 = sub_1C906443C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v75 = v52;
      *v51 = 136315138;
      v53 = ToolDatabase.DatabaseFile.debugDescription.getter();
      v55 = v54;
      OUTLINED_FUNCTION_1_11();
      sub_1C8CBA864(v65, v56);
      v57 = sub_1C8CACE04(v53, v55, &v75);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_1C8C9B000, v49, v50, "Pushed active database symlink to %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_25_0();
    }

    else
    {

      OUTLINED_FUNCTION_1_11();
      sub_1C8CBA864(v65, v60);
    }

    (*(v67 + 8))(v66, v68);
    sub_1C8D19C6C();
  }

  v61 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_198();
}

void sub_1C8D19C6C()
{
  v1 = type metadata accessor for ToolDatabase.Pager(0);
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (*(v0 + *(v2 + 32)))
  {
    if (*(v0 + *(v2 + 32)) == 1)
    {
      v9 = sub_1C90642AC();
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
      sub_1C8CBA80C(v0, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      sub_1C8CBAF30(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
      sub_1C8CE80E4(0, 0, v8, &unk_1C906AAF8, v11);
    }
  }

  else
  {

    sub_1C8D19E40();
  }
}

void sub_1C8D19E40()
{
  v0 = sub_1C9063D3C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  sub_1C8D1A020();
}

void sub_1C8D1A020()
{
  v115 = sub_1C9061EBC();
  v118 = *(v115 - 8);
  v0 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v117 = &v97 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for FileLock(0);
  v2 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v112 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1C9063D3C();
  v109 = *(v114 - 8);
  v4 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v97 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v97 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v97 - v14;
  v16 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v108 = *(v16 - 8);
  v17 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v97 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v97 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v97 - v27;
  v29 = v119;
  sub_1C8CBAA48();
  v119 = v29;
  if (!v29)
  {
    v110 = v11;
    v102 = v22;
    v103 = v25;
    v104 = v19;
    v105 = v8;
    v101 = v28;
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      sub_1C8CBE41C(v15, &qword_1EC313058);
    }

    else
    {
      v30 = v16;
      v31 = v101;
      sub_1C8CBAF30(v15, v101);
      v32 = [objc_opt_self() defaultManager];
      v33 = v119;
      ToolDatabase.Pager.sortedExistingFiles.getter();
      v35 = v33;
      if (v33)
      {
        v119 = v33;

        sub_1C8CBA864(v31, type metadata accessor for ToolDatabase.DatabaseFile);
      }

      else
      {
        v36 = v34;
        v98 = v32;
        MEMORY[0x1EEE9AC00](v34);
        *(&v97 - 2) = v31;

        sub_1C8ED5518();
        MEMORY[0x1EEE9AC00](v37);
        *(&v97 - 2) = v31;
        sub_1C8ED5518();
        v39 = v38;
        v40 = v110;
        v111 = *MEMORY[0x1E69E10F0];
        sub_1C906371C();

        v41 = sub_1C9063D1C();
        v42 = sub_1C906443C();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v120 = v119;
          *v43 = 134218498;
          *(v43 + 4) = *(v39 + 16);

          *(v43 + 12) = 2048;
          v44 = *(v36 + 16);

          *(v43 + 14) = v44;

          *(v43 + 22) = 2080;
          v45 = MEMORY[0x1CCA81C30](v39, v30);
          v47 = sub_1C8CACE04(v45, v46, &v120);

          *(v43 + 24) = v47;
          _os_log_impl(&dword_1C8C9B000, v41, v42, "Found %ld stale database files out of %ld: %s", v43, 0x20u);
          v48 = v119;
          __swift_destroy_boxed_opaque_existential_1(v119);
          MEMORY[0x1CCA833A0](v48, -1, -1);
          MEMORY[0x1CCA833A0](v43, -1, -1);

          v50 = v109;
          v49 = v110;
          v51 = *(v109 + 8);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v50 = v109;
          v51 = *(v109 + 8);
          v49 = v40;
        }

        v52 = v114;
        v110 = v51;
        v51(v49, v114);
        v55 = v112;
        v54 = v113;
        v56 = v103;
        v57 = *(v39 + 16);
        if (v57)
        {
          v58 = (*(v108 + 80) + 32) & ~*(v108 + 80);
          v97 = v39;
          v59 = v39 + v58;
          v60 = *(v108 + 72);
          v108 = v118 + 16;
          v109 = v60;
          v106 = v50 + 8;
          v107 = (v118 + 8);
          *&v53 = 136315138;
          v99 = v53;
          *&v53 = 136315394;
          v100 = v53;
          do
          {
            v118 = v57;
            sub_1C8CBA80C(v59, v56);
            v61 = v117;
            v62 = v115;
            (*v108)(v117, v56, v115);
            v63 = v116;
            v64 = v55 + *(v116 + 20);
            *(v64 + 4) = 2;
            *v64 = 0;
            sub_1C9061E0C();
            v65 = (*v107)(v61, v62);
            *(v55 + *(v63 + 24)) = 1;
            MEMORY[0x1EEE9AC00](v65);
            *(&v97 - 2) = v55;
            *(&v97 - 1) = v56;
            sub_1C8D5D318(sub_1C8D1D778);
            if (v35)
            {
              sub_1C906371C();
              v66 = v104;
              sub_1C8CBA80C(v56, v104);
              v67 = v35;
              v68 = v54;
              v69 = sub_1C9063D1C();
              v70 = sub_1C906443C();

              if (os_log_type_enabled(v69, v70))
              {
                v71 = swift_slowAlloc();
                v72 = v66;
                v73 = swift_slowAlloc();
                v74 = swift_slowAlloc();
                v120 = v74;
                *v71 = v100;
                v75 = ToolDatabase.DatabaseFile.debugDescription.getter();
                v119 = v35;
                v77 = v76;
                sub_1C8CBA864(v72, type metadata accessor for ToolDatabase.DatabaseFile);
                v78 = sub_1C8CACE04(v75, v77, &v120);
                v55 = v112;

                *(v71 + 4) = v78;
                *(v71 + 12) = 2112;
                v79 = v119;
                v80 = v119;
                v81 = _swift_stdlib_bridgeErrorToNSError();
                *(v71 + 14) = v81;
                *v73 = v81;
                _os_log_impl(&dword_1C8C9B000, v69, v70, "Cleanup skip %s: %@", v71, 0x16u);
                sub_1C8CBE41C(v73, &qword_1EC312EC8);
                MEMORY[0x1CCA833A0](v73, -1, -1);
                __swift_destroy_boxed_opaque_existential_1(v74);
                v82 = v74;
                v56 = v103;
                MEMORY[0x1CCA833A0](v82, -1, -1);
                v83 = v71;
                v52 = v114;
                MEMORY[0x1CCA833A0](v83, -1, -1);

                v54 = v113;
                v110(v113, v52);
                v35 = 0;
              }

              else
              {

                sub_1C8CBA864(v66, type metadata accessor for ToolDatabase.DatabaseFile);
                v110(v68, v52);
                v35 = 0;
                v54 = v68;
              }
            }

            else
            {
              sub_1C906371C();
              v84 = v102;
              sub_1C8CBA80C(v56, v102);
              v85 = sub_1C9063D1C();
              v86 = sub_1C906443C();
              if (os_log_type_enabled(v85, v86))
              {
                v87 = swift_slowAlloc();
                v88 = v84;
                v89 = swift_slowAlloc();
                v120 = v89;
                *v87 = v99;
                v90 = ToolDatabase.DatabaseFile.debugDescription.getter();
                v119 = 0;
                v91 = v90;
                v93 = v92;
                sub_1C8CBA864(v88, type metadata accessor for ToolDatabase.DatabaseFile);
                v94 = v91;
                v35 = v119;
                v95 = sub_1C8CACE04(v94, v93, &v120);
                v54 = v113;

                *(v87 + 4) = v95;
                _os_log_impl(&dword_1C8C9B000, v85, v86, "Removed stale db file %s", v87, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v89);
                MEMORY[0x1CCA833A0](v89, -1, -1);
                v96 = v87;
                v56 = v103;
                MEMORY[0x1CCA833A0](v96, -1, -1);
              }

              else
              {

                sub_1C8CBA864(v84, type metadata accessor for ToolDatabase.DatabaseFile);
              }

              v52 = v114;
              v110(v105, v114);
            }

            sub_1C8CBA864(v55, type metadata accessor for FileLock);
            sub_1C8CBA864(v56, type metadata accessor for ToolDatabase.DatabaseFile);
            v59 += v109;
            v57 = v118 - 1;
          }

          while (v118 != 1);

          v31 = v101;
        }

        else
        {
        }

        sub_1C8CBA864(v31, type metadata accessor for ToolDatabase.DatabaseFile);
      }
    }
  }
}

uint64_t sub_1C8D1ABC4()
{
  v1 = *(v0 + 16);
  sub_1C8D19E40();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C8D1ACCC()
{
  v4 = 0;
  v3 = 2;
  result = FileLock.lock(_:configuration:)(&v4, &v3);
  if (!v0)
  {
    sub_1C8D1C838();
    v2 = 0;
    return FileLock.unlock(configuration:)(&v2);
  }

  return result;
}

uint64_t sub_1C8D1AD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_387(a1, a2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  __swift_allocate_value_buffer(v7, a4);
  __swift_project_value_buffer(v7, a4);
  return sub_1C906326C();
}

uint64_t sub_1C8D1ADEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313068, &qword_1C906A978);
  __swift_allocate_value_buffer(v0, qword_1EDA6DA38);
  __swift_project_value_buffer(v0, qword_1EDA6DA38);
  sub_1C906204C();
  return sub_1C906326C();
}

uint64_t sub_1C8D1AE54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130D0, &qword_1C9090BD0);
  __swift_allocate_value_buffer(v0, qword_1EDA6D9D0);
  __swift_project_value_buffer(v0, qword_1EDA6D9D0);
  return sub_1C906330C();
}

uint64_t sub_1C8D1AED0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313060, &qword_1C906A970);
  __swift_allocate_value_buffer(v0, qword_1EDA6DA18);
  __swift_project_value_buffer(v0, qword_1EDA6DA18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130A0, &qword_1C906AB18);
  sub_1C8D07450(&qword_1EDA6DA68, &qword_1EC313060);
  return sub_1C906331C();
}

uint64_t sub_1C8D1AFA8@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313060, &qword_1C906A970);
  v110 = *(v111 - 8);
  v1 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v107 = &v94 - v2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130A8, &qword_1C906AB20);
  v108 = *(v106 - 8);
  v3 = *(v108 + 64);
  v4 = MEMORY[0x1EEE9AC00](v106);
  v121 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v120 = &v94 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130B0, &qword_1C906AB28);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v94 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130B8, &qword_1C906AB30);
  v130 = *(v10 - 8);
  v131 = v10;
  v11 = *(v130 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v103 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v128 = &v94 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130C0, &qword_1C906AB38);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v98 = &v94 - v17;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130C8, &qword_1C906AB40);
  v129 = *(v127 - 8);
  v18 = *(v129 + 64);
  v19 = MEMORY[0x1EEE9AC00](v127);
  v99 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v126 = &v94 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130D0, &qword_1C9090BD0);
  v132 = *(v22 - 8);
  v23 = *(v132 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v118 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v125 = &v94 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v94 - v28;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130D8, &qword_1C906AB48);
  v105 = *(v119 - 8);
  v30 = *(v105 + 64);
  v31 = MEMORY[0x1EEE9AC00](v119);
  v117 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v94 - v33;
  v35 = sub_1C90632CC();
  v36 = *(v35 - 8);
  v133 = v35;
  v134 = v36;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v94 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130E0, &qword_1C906AB50);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v94 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v124 = &v94 - v46;
  v139 = 0x2D736C6F6F54;
  v140 = 0xE600000000000000;
  v113 = sub_1C8D1EA80();
  MEMORY[0x1CCA80C70](v141, &v139, MEMORY[0x1E69E6158]);
  if (qword_1EDA6DA50 != -1)
  {
    swift_once();
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313078, &qword_1C906A988);
  __swift_project_value_buffer(v47, qword_1EDA6B1A0);
  sub_1C906321C();
  sub_1C8D1C100(MEMORY[0x1E69E82A0], v29);
  sub_1C906325C();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130E8, &unk_1C9090BF0);
  v49 = sub_1C8D07450(&qword_1EDA6DA70, &qword_1EC3130D0);
  sub_1C906328C();
  v50 = v132 + 8;
  v112 = *(v132 + 8);
  v112(v29, v22);
  v96 = v22;
  v51 = *(v134 + 8);
  v134 += 8;
  v51(v39, v133);
  v116 = v34;
  v100 = v48;
  MEMORY[0x1CCA80C90](v34, v48);
  v97 = sub_1C8D07450(&qword_1EDA6DA90, &qword_1EC3130E0);
  MEMORY[0x1CCA80C70](v45, v40);
  v53 = *(v41 + 8);
  v52 = v41 + 8;
  v115 = v40;
  v101 = v53;
  v53(v45, v40);
  v137 = 30254;
  v138 = 0xE200000000000000;
  v54 = v113;
  MEMORY[0x1CCA80C70](&v139, &v137, MEMORY[0x1E69E6158], v113);
  if (qword_1EDA6D9E8 != -1)
  {
    swift_once();
  }

  v104 = v52;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313070, &qword_1C906A980);
  __swift_project_value_buffer(v55, qword_1EDA6D9F0);
  sub_1C906321C();
  sub_1C8D1C100(MEMORY[0x1E69E82A8], v29);
  sub_1C906325C();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130F0, &qword_1C906AB58);
  v114 = v49;
  v57 = v96;
  v58 = v98;
  sub_1C906328C();
  v122 = v29;
  v59 = v29;
  v132 = v50;
  v60 = v112;
  v112(v59, v57);
  v123 = v51;
  v51(v39, v133);
  v61 = v99;
  MEMORY[0x1CCA80C90](v58, v56);
  v62 = sub_1C8D07450(&qword_1EDA6DA88, &qword_1EC3130C8);
  v63 = v127;
  v98 = v62;
  MEMORY[0x1CCA80C70](v61, v127);
  v64 = *(v129 + 8);
  v129 += 8;
  v99 = v64;
  (v64)(v61, v63);
  v135 = 45;
  v136 = 0xE100000000000000;
  MEMORY[0x1CCA80C70](&v137, &v135, MEMORY[0x1E69E6158], v54);
  if (qword_1EDA6DA30 != -1)
  {
    swift_once();
  }

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313068, &qword_1C906A978);
  __swift_project_value_buffer(v65, qword_1EDA6DA38);
  sub_1C906321C();
  if (qword_1EDA6D9C8 != -1)
  {
    swift_once();
  }

  v66 = __swift_project_value_buffer(v57, qword_1EDA6D9D0);
  v67 = v125;
  v68 = v114;
  MEMORY[0x1CCA80C70](v66, v57, v114);
  v69 = v122;
  sub_1C90631FC();
  v60(v67, v57);
  sub_1C906325C();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130F8, &qword_1C906AB60);
  sub_1C906204C();
  v71 = v102;
  sub_1C906328C();
  v60(v69, v57);
  v123(v39, v133);
  v72 = v103;
  MEMORY[0x1CCA80C90](v71, v70);
  v95 = sub_1C8D07450(&qword_1EDA6DA98, &qword_1EC3130B8);
  v73 = v131;
  MEMORY[0x1CCA80C70](v72, v131, v95);
  v74 = *(v130 + 8);
  v130 += 8;
  v102 = v74;
  (v74)(v72, v73);
  v75 = v125;
  sub_1C906330C();
  MEMORY[0x1CCA80C70](v75, v57, v68);
  v60(v75, v57);
  v135 = v141[0];
  v136 = v141[1];
  sub_1C90631FC();

  sub_1C906321C();
  v76 = v118;
  sub_1C906329C();
  v77 = v60;
  v78 = v116;
  sub_1C906327C();
  v77(v76, v57);
  v79 = v133;
  v80 = v123;
  v123(v39, v133);
  sub_1C8E6FF90(v78, v139, v140, v117);

  sub_1C906321C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313100, &qword_1C906AB68);
  v113 = MEMORY[0x1E69E9290];
  sub_1C8D07450(&qword_1EDA6DA58, &qword_1EC3130D8);
  v81 = v120;
  sub_1C906327C();
  v82 = v79;
  v80(v39, v79);
  v83 = v80;
  sub_1C8D1C48C(v81, v137, v138, v121);

  sub_1C906321C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130A0, &qword_1C906AB18);
  sub_1C8D07450(&qword_1EDA6DA60, &qword_1EC3130A8);
  v84 = v107;
  v85 = v106;
  sub_1C906327C();
  v83(v39, v82);
  sub_1C906321C();
  v86 = v118;
  sub_1C906329C();
  sub_1C8D07450(&qword_1EDA6DA68, &qword_1EC313060);
  v87 = v86;
  v88 = v111;
  sub_1C906327C();
  v89 = v112;
  v112(v87, v57);
  v123(v39, v82);
  (*(v110 + 8))(v84, v88);
  v90 = *(v108 + 8);
  v90(v121, v85);
  v90(v120, v85);
  v91 = *(v105 + 8);
  v92 = v119;
  v91(v117, v119);
  v91(v116, v92);
  v89(v125, v57);
  v89(v122, v57);
  (v102)(v128, v131);
  (v99)(v126, v127);
  return v101(v124, v115);
}

uint64_t sub_1C8D1C100@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130D0, &qword_1C9090BD0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_97();
  v49 = v9;
  OUTLINED_FUNCTION_111();
  v50 = sub_1C90632CC();
  v10 = OUTLINED_FUNCTION_11(v50);
  v48 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313108, &unk_1C9090BE0);
  OUTLINED_FUNCTION_9(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_247();
  v21 = sub_1C906322C();
  v22 = OUTLINED_FUNCTION_11(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313110, &unk_1C906AB70);
  v28 = OUTLINED_FUNCTION_11(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25();
  v35 = v33 - v34;
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v48 - v38;
  a1(v37);
  sub_1C90632FC();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  sub_1C906321C();
  sub_1C8D1EAD4(&qword_1EDA6DA80, MEMORY[0x1E69E8250]);
  v44 = v49;
  sub_1C90632BC();
  (*(v48 + 8))(v16, v50);
  sub_1C8CBE41C(v3, &qword_1EC313108);
  (*(v24 + 8))(v2, v21);
  MEMORY[0x1CCA80CD0](v44, MEMORY[0x1E69E67B0]);
  v45 = sub_1C8D07450(&qword_1EDA6DA78, &qword_1EC313110);
  MEMORY[0x1CCA80C70](v35, v27, v45);
  v46 = *(v30 + 8);
  v46(v35, v27);
  sub_1C90631FC();
  return (v46)(v39, v27);
}

uint64_t sub_1C8D1C48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a4;
  v19 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130D0, &qword_1C9090BD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v17 = sub_1C90632CC();
  v11 = *(v17 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C906321C();
  v20 = a2;
  v21 = a3;
  sub_1C8D1EA80();
  sub_1C906329C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313100, &qword_1C906AB68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130A8, &qword_1C906AB20);
  sub_1C8D07450(&qword_1EDA6DA60, &qword_1EC3130A8);
  sub_1C8D07450(&qword_1EDA6DA70, &qword_1EC3130D0);
  sub_1C906327C();
  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v17);
}

uint64_t sub_1C8D1C6D8()
{
  OUTLINED_FUNCTION_386();
  v0 = sub_1C9061EBC();
  OUTLINED_FUNCTION_13_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_94();

  return v4(v3);
}

uint64_t ToolDatabase.DatabaseFile.environment.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  result = type metadata accessor for ToolDatabase.DatabaseFile(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t ToolDatabase.DatabaseFile.id.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = *(type metadata accessor for ToolDatabase.DatabaseFile(v2) + 28);
  v4 = sub_1C906204C();
  v5 = OUTLINED_FUNCTION_13_1(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t static ToolDatabase.DatabaseFile.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_257();
  v1 = *(type metadata accessor for ToolDatabase.DatabaseFile(v0) + 28);

  return _s7ToolKit0A8DatabaseC7VersionV2eeoiySbAE_AEtFZ_0();
}

void sub_1C8D1C838()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  v38[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1C9061EBC();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v8 = (v7 - v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312BA8, &qword_1C9068F40);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v36 = *(v3 + 72);
  v10 = swift_allocObject();
  *(v10 + 1) = xmmword_1C906A950;
  v37 = *(v4 + 16);
  v37(&v10[v9], v1, v2);
  v38[3] = v1;
  sub_1C8D3F668();
  v38[0] = v10;
  sub_1C8D37820(v11);
  v12 = v10;
  v33 = objc_opt_self();
  v13 = [v33 defaultManager];
  v14 = v13;
  v35 = *(v10 + 2);
  if (v35)
  {
    v15 = 0;
    v16 = v12 + v9;
    v34 = (v4 + 8);
    v17 = &off_1E832F000;
    v32 = v13;
    do
    {
      if (v15 >= *(v12 + 2))
      {
        __break(1u);
      }

      v37(v8, v16, v2);
      sub_1C9061E5C();
      v18 = sub_1C9063EBC();

      v19 = [v14 v17[158]];

      if (v19)
      {
        v20 = v2;
        v21 = v17;
        v22 = v20;
        v23 = v12;
        v24 = [v33 defaultManager];
        v25 = sub_1C9061DDC();
        v38[0] = 0;
        v26 = [v24 removeItemAtURL:v25 error:v38];

        if (!v26)
        {
          v30 = v38[0];

          sub_1C9061D7C();

          swift_willThrow();
          (*v34)(v8, v22);
          goto LABEL_11;
        }

        v27 = *v34;
        v28 = v38[0];
        v27(v8, v22);
        v12 = v23;
        v14 = v32;
        v29 = v22;
        v17 = v21;
        v2 = v29;
      }

      else
      {
        (*v34)(v8, v2);
      }

      ++v15;
      v16 += v36;
    }

    while (v35 != v15);
  }

LABEL_11:
  v31 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D1CBB0(uint64_t *a1)
{
  v2 = sub_1C9061EBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  v9 = sub_1C9061DAC();
  v11 = v10;
  sub_1C9061DEC();
  v13[0] = v9;
  v13[1] = v11;

  MEMORY[0x1CCA81A90](v8, v7);

  sub_1C9061E0C();

  return (*(v3 + 8))(v6, v2);
}

uint64_t ToolDatabase.Pager.switchActiveEnvironment(to:)(char *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_146();
  v9 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v10 = OUTLINED_FUNCTION_13_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_34_3();
  v21 = *a1;
  result = ToolDatabase.Pager.createDatabaseFileIfNeeded(environment:)(&v21);
  if (!v1)
  {
    OUTLINED_FUNCTION_0_11();
    sub_1C8CBA80C(v2, v3);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v9);
    v17 = type metadata accessor for ToolDatabase();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    ToolDatabase.init(file:readonly:)(v3, 0);

    ToolDatabase.Pager.setActive(databaseFile:)();
    OUTLINED_FUNCTION_1_11();
    return sub_1C8CBA864(v2, v20);
  }

  return result;
}

unint64_t sub_1C8D1CE58(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313088, &qword_1C906AB00);
  v2 = sub_1C906495C();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1C8D1D7B4(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_1C8D1CF90(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1C8D1D824(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1C8D1CF90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1C9064D7C();
  sub_1C9063FBC();
  v6 = sub_1C9064DBC();

  return sub_1C8CAE0D8(a1, a2, v6);
}

_BYTE **sub_1C8D1D008(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1C8D1D040(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1C8CACE04(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1C8D1D09C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313098, &qword_1C906AB10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1C8D1D190(uint64_t *a1)
{
  v2 = *(type metadata accessor for ToolDatabase.DatabaseFile(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C8DDC76C(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C8D1D834(v6);
  *a1 = v3;
}

unint64_t sub_1C8D1D23C()
{
  result = qword_1EC313080;
  if (!qword_1EC313080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313080);
  }

  return result;
}

uint64_t sub_1C8D1D300()
{
  result = sub_1C9061EBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s5PagerV15CleanupScheduleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8D1D460()
{
  result = sub_1C9061EBC();
  if (v1 <= 0x3F)
  {
    result = sub_1C906204C();
    if (v2 <= 0x3F)
    {
      result = sub_1C8D1D514();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1C8D1D514()
{
  result = qword_1EDA6D490;
  if (!qword_1EDA6D490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA6D490);
  }

  return result;
}

uint64_t sub_1C8D1D558(uint64_t a1)
{
  v4 = type metadata accessor for ToolDatabase.Pager(0);
  OUTLINED_FUNCTION_9(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C8D1D644;

  return sub_1C8D1ABA4(a1, v7, v8, v1 + v6);
}

uint64_t sub_1C8D1D644()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C8D1D778()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C8D1ACCC();
}

uint64_t sub_1C8D1D7B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313090, &qword_1C906AB08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C8D1D824(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1C8D1D834(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C9064BCC();
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
        type metadata accessor for ToolDatabase.DatabaseFile(0);
        v6 = sub_1C906421C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ToolDatabase.DatabaseFile(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C8D1DBC0(v8, v9, a1, v4);
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
    sub_1C8D1D964(0, v2, 1, a1);
  }
}

void sub_1C8D1D964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v31 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v36 = -v19;
    v37 = v18;
    v21 = a1 - a3;
    v30 = v19;
    v22 = v18 + v19 * a3;
    while (2)
    {
      v34 = v20;
      v35 = a3;
      v32 = v22;
      v33 = v21;
      do
      {
        sub_1C8CBA80C(v22, v17);
        sub_1C8CBA80C(v20, v13);
        v23 = *(v8 + 24);
        v24 = v8;
        v25 = *&v17[v23];
        v26 = *&v13[v23];
        sub_1C8CBA864(v13, type metadata accessor for ToolDatabase.DatabaseFile);
        sub_1C8CBA864(v17, type metadata accessor for ToolDatabase.DatabaseFile);
        v27 = v26 >= v25;
        v8 = v24;
        if (v27)
        {
          break;
        }

        if (!v37)
        {
          __break(1u);
          return;
        }

        v28 = v38;
        sub_1C8CBAF30(v22, v38);
        swift_arrayInitWithTakeFrontToBack();
        sub_1C8CBAF30(v28, v20);
        v20 += v36;
        v22 += v36;
        v27 = __CFADD__(v21++, 1);
      }

      while (!v27);
      a3 = v35 + 1;
      v20 = v34 + v30;
      v21 = v33 - 1;
      v22 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C8D1DBC0(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v117 = a1;
  v6 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v123 = *(v6 - 8);
  v7 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v119 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v114 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v132 = &v114 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v131 = &v114 - v14;
  v125 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v132 = *v117;
    if (!v132)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v126;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_102:
      v106 = v17 + 16;
      v107 = *(v17 + 2);
      while (v107 >= 2)
      {
        if (!*v125)
        {
          goto LABEL_138;
        }

        v108 = v6;
        v109 = v17;
        v6 = &v17[16 * v107];
        v110 = *v6;
        v111 = &v106[2 * v107];
        v112 = *(v111 + 1);
        sub_1C8D1E4E8(*v125 + *(v123 + 72) * *v6, *v125 + *(v123 + 72) * *v111, *v125 + *(v123 + 72) * v112, v132);
        v17 = v108;
        if (v108)
        {
          break;
        }

        if (v112 < v110)
        {
          goto LABEL_126;
        }

        if (v107 - 2 >= *v106)
        {
          goto LABEL_127;
        }

        *v6 = v110;
        *(v6 + 8) = v112;
        v113 = *v106 - v107;
        if (*v106 < v107)
        {
          goto LABEL_128;
        }

        v107 = *v106 - 1;
        sub_1C8DDBD9C(v111 + 16, v113, v111);
        *v106 = v107;
        v6 = 0;
        v17 = v109;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v17 = sub_1C8DDBD88(v17);
    goto LABEL_102;
  }

  v114 = a4;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  v130 = v6;
  while (1)
  {
    v18 = v16++;
    if (v16 < v15)
    {
      v115 = v17;
      v19 = *v125;
      v20 = *(v123 + 72);
      v21 = *v125 + v20 * v16;
      v22 = v16;
      v23 = v131;
      v122 = v15;
      sub_1C8CBA80C(v21, v131);
      v24 = v132;
      sub_1C8CBA80C(v19 + v20 * v18, v132);
      v25 = *(v6 + 24);
      v26 = *(v23 + v25);
      v120 = *(v24 + v25);
      v121 = v26;
      sub_1C8CBA864(v24, type metadata accessor for ToolDatabase.DatabaseFile);
      v27 = v23;
      v16 = v22;
      sub_1C8CBA864(v27, type metadata accessor for ToolDatabase.DatabaseFile);
      v28 = v122;
      v116 = v18;
      v29 = (v18 + 2);
      v124 = v20;
      v30 = v19 + v20 * (v18 + 2);
      while (1)
      {
        v17 = v29;
        v31 = v16 + 1;
        if (v31 >= v28)
        {
          break;
        }

        LODWORD(v128) = v120 < v121;
        v127 = v31;
        v32 = v131;
        sub_1C8CBA80C(v30, v131);
        v33 = v132;
        sub_1C8CBA80C(v21, v132);
        v34 = *(v6 + 24);
        v35 = *(v32 + v34);
        v36 = *(v33 + v34);
        sub_1C8CBA864(v33, type metadata accessor for ToolDatabase.DatabaseFile);
        v37 = v32;
        v16 = v127;
        sub_1C8CBA864(v37, type metadata accessor for ToolDatabase.DatabaseFile);
        v28 = v122;
        v30 += v124;
        v21 += v124;
        v29 = v17 + 1;
        if (((v128 ^ (v36 >= v35)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v16 = v28;
LABEL_9:
      if (v120 < v121)
      {
        v18 = v116;
        if (v16 < v116)
        {
          goto LABEL_132;
        }

        if (v116 >= v16)
        {
          v17 = v115;
          goto LABEL_30;
        }

        if (v28 >= v17)
        {
          v38 = v17;
        }

        else
        {
          v38 = v28;
        }

        v39 = v124 * (v38 - 1);
        v40 = v124 * v38;
        v41 = v116 * v124;
        v42 = v116;
        v43 = v16;
        do
        {
          if (v42 != --v43)
          {
            v44 = *v125;
            if (!*v125)
            {
              goto LABEL_139;
            }

            sub_1C8CBAF30(v44 + v41, v119);
            v45 = v41 < v39 || v44 + v41 >= v44 + v40;
            if (v45)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v41 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C8CBAF30(v119, v44 + v39);
          }

          ++v42;
          v39 -= v124;
          v40 -= v124;
          v41 += v124;
        }

        while (v42 < v43);
      }

      v17 = v115;
      v18 = v116;
    }

LABEL_30:
    v46 = v125[1];
    if (v16 < v46)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_131;
      }

      if (v16 - v18 < v114)
      {
        break;
      }
    }

LABEL_48:
    if (v16 < v18)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = *(v17 + 2);
      sub_1C8D00D94();
      v17 = v103;
    }

    v60 = *(v17 + 2);
    v61 = v60 + 1;
    if (v60 >= *(v17 + 3) >> 1)
    {
      sub_1C8D00D94();
      v17 = v104;
    }

    *(v17 + 2) = v61;
    v62 = v17 + 32;
    v63 = &v17[16 * v60 + 32];
    *v63 = v18;
    *(v63 + 1) = v16;
    v128 = *v117;
    if (!v128)
    {
      goto LABEL_140;
    }

    if (v60)
    {
      while (1)
      {
        v64 = v61 - 1;
        v65 = &v62[16 * v61 - 16];
        v66 = &v17[16 * v61];
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v67 = *(v17 + 4);
          v68 = *(v17 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_68:
          if (v70)
          {
            goto LABEL_117;
          }

          v82 = *v66;
          v81 = *(v66 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_120;
          }

          v86 = *(v65 + 1);
          v87 = v86 - *v65;
          if (__OFSUB__(v86, *v65))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v84, v87))
          {
            goto LABEL_125;
          }

          if (v84 + v87 >= v69)
          {
            if (v69 < v87)
            {
              v64 = v61 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v61 < 2)
        {
          goto LABEL_119;
        }

        v89 = *v66;
        v88 = *(v66 + 1);
        v77 = __OFSUB__(v88, v89);
        v84 = v88 - v89;
        v85 = v77;
LABEL_83:
        if (v85)
        {
          goto LABEL_122;
        }

        v91 = *v65;
        v90 = *(v65 + 1);
        v77 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v77)
        {
          goto LABEL_124;
        }

        if (v92 < v84)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v64 - 1 >= v61)
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

        if (!*v125)
        {
          goto LABEL_137;
        }

        v96 = &v62[16 * v64 - 16];
        v97 = *v96;
        v98 = &v62[16 * v64];
        v99 = *(v98 + 1);
        v100 = v126;
        sub_1C8D1E4E8(*v125 + *(v123 + 72) * *v96, *v125 + *(v123 + 72) * *v98, *v125 + *(v123 + 72) * v99, v128);
        v6 = v100;
        if (v100)
        {
          goto LABEL_110;
        }

        if (v99 < v97)
        {
          goto LABEL_112;
        }

        v126 = 0;
        v6 = v17;
        v17 = *(v17 + 2);
        if (v64 > v17)
        {
          goto LABEL_113;
        }

        *v96 = v97;
        *(v96 + 1) = v99;
        if (v64 >= v17)
        {
          goto LABEL_114;
        }

        v61 = (v17 - 1);
        sub_1C8DDBD9C(v98 + 16, &v17[-v64 - 1], &v62[16 * v64]);
        *(v6 + 16) = v17 - 1;
        v101 = v17 > 2;
        v17 = v6;
        v6 = v130;
        if (!v101)
        {
          goto LABEL_97;
        }
      }

      v71 = &v62[16 * v61];
      v72 = *(v71 - 8);
      v73 = *(v71 - 7);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_115;
      }

      v76 = *(v71 - 6);
      v75 = *(v71 - 5);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_116;
      }

      v78 = *(v66 + 1);
      v79 = v78 - *v66;
      if (__OFSUB__(v78, *v66))
      {
        goto LABEL_118;
      }

      v77 = __OFADD__(v69, v79);
      v80 = v69 + v79;
      if (v77)
      {
        goto LABEL_121;
      }

      if (v80 >= v74)
      {
        v94 = *v65;
        v93 = *(v65 + 1);
        v77 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v77)
        {
          goto LABEL_129;
        }

        if (v69 < v95)
        {
          v64 = v61 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v15 = v125[1];
    if (v16 >= v15)
    {
      goto LABEL_100;
    }
  }

  v47 = v18 + v114;
  if (__OFADD__(v18, v114))
  {
    goto LABEL_133;
  }

  if (v47 >= v46)
  {
    v47 = v125[1];
  }

  if (v47 < v18)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v16 == v47)
  {
    goto LABEL_48;
  }

  v115 = v17;
  v116 = v18;
  v48 = *(v123 + 72);
  v49 = *v125 + v48 * (v16 - 1);
  v50 = -v48;
  v51 = v18 - v16;
  v128 = *v125;
  v118 = v48;
  v52 = v128 + v16 * v48;
  v120 = v47;
LABEL_39:
  v127 = v16;
  v121 = v52;
  v122 = v51;
  v124 = v49;
  v53 = v49;
  while (1)
  {
    v54 = v131;
    sub_1C8CBA80C(v52, v131);
    v55 = v132;
    sub_1C8CBA80C(v53, v132);
    v56 = *(v6 + 24);
    v57 = *(v54 + v56);
    v58 = *(v55 + v56);
    sub_1C8CBA864(v55, type metadata accessor for ToolDatabase.DatabaseFile);
    sub_1C8CBA864(v54, type metadata accessor for ToolDatabase.DatabaseFile);
    if (v58 >= v57)
    {
      v6 = v130;
LABEL_46:
      v16 = v127 + 1;
      v49 = v124 + v118;
      v51 = v122 - 1;
      v52 = v121 + v118;
      if (v127 + 1 == v120)
      {
        v16 = v120;
        v17 = v115;
        v18 = v116;
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    if (!v128)
    {
      break;
    }

    v59 = v129;
    sub_1C8CBAF30(v52, v129);
    v6 = v130;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C8CBAF30(v59, v53);
    v53 += v50;
    v52 += v50;
    v45 = __CFADD__(v51++, 1);
    if (v45)
    {
      goto LABEL_46;
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

void sub_1C8D1E4E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v63 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v8 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v53 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v18 = v14 / v13;
  v66 = a1;
  v65 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_1C8D0922C(a2, v16 / v13, a4);
    v34 = a4 + v19 * v13;
    v35 = -v13;
    v36 = v34;
    v57 = a1;
    v58 = a4;
    v56 = -v13;
LABEL_37:
    v59 = a2;
    v60 = a2 + v35;
    v37 = a3;
    v38 = v36;
    v55 = v36;
    while (1)
    {
      if (v34 <= a4)
      {
        v66 = a2;
        v64 = v38;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v54 = v38;
      v39 = v37 + v35;
      v40 = v34 + v35;
      v41 = v62;
      v42 = v37;
      sub_1C8CBA80C(v34 + v35, v62);
      v43 = v34;
      v44 = v61;
      sub_1C8CBA80C(v60, v61);
      v45 = *(v63 + 24);
      v46 = *(v41 + v45);
      v47 = v44;
      v48 = *(v44 + v45);
      sub_1C8CBA864(v47, type metadata accessor for ToolDatabase.DatabaseFile);
      sub_1C8CBA864(v41, type metadata accessor for ToolDatabase.DatabaseFile);
      if (v48 < v46)
      {
        v34 = v43;
        v51 = v42 < v59 || v39 >= v59;
        a3 = v39;
        if (v51)
        {
          a2 = v60;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v54;
          a1 = v57;
          a4 = v58;
          v35 = v56;
        }

        else
        {
          v36 = v54;
          v15 = v42 == v59;
          v52 = v60;
          a2 = v60;
          a1 = v57;
          a4 = v58;
          v35 = v56;
          if (!v15)
          {
            v36 = v54;
            swift_arrayInitWithTakeBackToFront();
            a2 = v52;
          }
        }

        goto LABEL_37;
      }

      v49 = v42 < v43 || v39 >= v43;
      v50 = v39;
      if (v49)
      {
        swift_arrayInitWithTakeFrontToBack();
        v37 = v39;
        v34 = v40;
        v38 = v40;
        a4 = v58;
        a2 = v59;
        v35 = v56;
        a1 = v57;
        v36 = v55;
      }

      else
      {
        v38 = v40;
        v15 = v43 == v42;
        v37 = v39;
        v34 = v40;
        a4 = v58;
        a2 = v59;
        v35 = v56;
        a1 = v57;
        v36 = v55;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v37 = v50;
          v34 = v40;
          v38 = v40;
        }
      }
    }

    v66 = a2;
    v64 = v36;
  }

  else
  {
    sub_1C8D0922C(a1, v14 / v13, a4);
    v59 = a3;
    v60 = a4 + v18 * v13;
    v64 = v60;
    while (a4 < v60 && a2 < a3)
    {
      v21 = v13;
      v22 = a1;
      v23 = v62;
      sub_1C8CBA80C(a2, v62);
      v24 = a4;
      v25 = a4;
      v26 = v61;
      sub_1C8CBA80C(v24, v61);
      v27 = *(v63 + 24);
      v28 = *(v23 + v27);
      v29 = a2;
      v30 = *(v26 + v27);
      sub_1C8CBA864(v26, type metadata accessor for ToolDatabase.DatabaseFile);
      sub_1C8CBA864(v23, type metadata accessor for ToolDatabase.DatabaseFile);
      if (v30 >= v28)
      {
        a2 = v29;
        v13 = v21;
        a4 = v25 + v21;
        v31 = v22;
        if (v22 < v25 || v22 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v59;
        }

        else
        {
          a3 = v59;
          if (v22 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v65 = v25 + v21;
      }

      else
      {
        a2 = v29 + v21;
        v31 = v22;
        v32 = v22 < v29 || v22 >= a2;
        a4 = v25;
        if (v32)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v59;
        }

        else
        {
          a3 = v59;
          if (v22 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v13 = v21;
      }

      a1 = v31 + v13;
      v66 = a1;
    }
  }

LABEL_59:
  sub_1C8D1E9A0(&v66, &v65, &v64);
}

uint64_t sub_1C8D1E9A0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1C8D1EA80()
{
  result = qword_1EDA6D4B0[0];
  if (!qword_1EDA6D4B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA6D4B0);
  }

  return result;
}

uint64_t sub_1C8D1EAD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C8D1EB30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C8D1EB70(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1C8D1EBC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4972656767697274 && a2 == 0xE900000000000064;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8D1EC98(char a1)
{
  if (a1)
  {
    return 0x6E65644965707974;
  }

  else
  {
    return 0x4972656767697274;
  }
}

uint64_t sub_1C8D1ECE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D1EBC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D1ED10(uint64_t a1)
{
  v2 = sub_1C8D1F7CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D1ED4C(uint64_t a1)
{
  v2 = sub_1C8D1F7CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D1ED88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8D1EDB4();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1C8D1EDB4()
{
  if (qword_1EC311198 != -1)
  {
    OUTLINED_FUNCTION_1_12();
  }

  v0 = sub_1C9062E6C();
  __swift_project_value_buffer(v0, qword_1EC390680);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v2 = v1;

  if (qword_1EC3111A0 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  __swift_project_value_buffer(v0, qword_1EC390698);
  sub_1C9062E5C();
  sub_1C8E2B294();

  return v2;
}

uint64_t sub_1C8D1EED8()
{
  sub_1C8D1F280();

  return sub_1C9062B4C();
}

uint64_t sub_1C8D1EFCC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1C8D1EFD8();
}

uint64_t sub_1C8D1EFD8()
{
  if (qword_1EC311198 != -1)
  {
    OUTLINED_FUNCTION_1_12();
  }

  v0 = sub_1C9062E6C();
  __swift_project_value_buffer(v0, qword_1EC390680);
  sub_1C9062E5C();
  sub_1C9062BFC();
  if (qword_1EC3111A0 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  __swift_project_value_buffer(v0, qword_1EC390698);
  sub_1C9062E5C();

  return sub_1C9062BFC();
}

uint64_t sub_1C8D1F104()
{
  v0 = qword_1EC313118;

  return v0;
}

unint64_t sub_1C8D1F140()
{
  result = qword_1EC313128;
  if (!qword_1EC313128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313128);
  }

  return result;
}

unint64_t sub_1C8D1F198()
{
  result = qword_1EC313130;
  if (!qword_1EC313130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313130);
  }

  return result;
}

unint64_t sub_1C8D1F1EC(void *a1)
{
  a1[1] = sub_1C8D1F22C();
  a1[2] = sub_1C8D1F280();
  a1[3] = sub_1C8D1F2D4();
  result = sub_1C8D1F328();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8D1F22C()
{
  result = qword_1EC313138;
  if (!qword_1EC313138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313138);
  }

  return result;
}

unint64_t sub_1C8D1F280()
{
  result = qword_1EC313140;
  if (!qword_1EC313140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313140);
  }

  return result;
}

unint64_t sub_1C8D1F2D4()
{
  result = qword_1EC313148;
  if (!qword_1EC313148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313148);
  }

  return result;
}

unint64_t sub_1C8D1F328()
{
  result = qword_1EC313150;
  if (!qword_1EC313150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313150);
  }

  return result;
}

uint64_t sub_1C8D1F39C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_1C8D1F7CC();
  return sub_1C9062E8C();
}

uint64_t sub_1C8D1F418(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313170, &qword_1C906ADA0);
  v7 = OUTLINED_FUNCTION_11(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D1F7CC();
  sub_1C9064E1C();
  v18 = 0;
  sub_1C9064B9C();
  if (!v4)
  {
    v17 = 1;
    sub_1C9064B2C();
  }

  return (*(v9 + 8))(v13, v6);
}

uint64_t sub_1C8D1F584(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313160, &qword_1C906AD98);
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v13[-v9];
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1C8D1F7CC();
  sub_1C9064DEC();
  if (!v1)
  {
    v13[15] = 0;
    v11 = sub_1C9064A7C();
    v13[14] = 1;
    sub_1C9064A0C();
    (*(v6 + 8))(v10, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_1C8D1F724@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C8D1F584(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1C8D1F778()
{
  result = qword_1EC313158;
  if (!qword_1EC313158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313158);
  }

  return result;
}

unint64_t sub_1C8D1F7CC()
{
  result = qword_1EC313168;
  if (!qword_1EC313168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313168);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TriggerOutputTypeRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8D1F900()
{
  result = qword_1EC313178;
  if (!qword_1EC313178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313178);
  }

  return result;
}

unint64_t sub_1C8D1F958()
{
  result = qword_1EC313180;
  if (!qword_1EC313180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313180);
  }

  return result;
}

unint64_t sub_1C8D1F9B0()
{
  result = qword_1EC313188;
  if (!qword_1EC313188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313188);
  }

  return result;
}

uint64_t type metadata accessor for ToolRecord()
{
  result = qword_1EDA6B210;
  if (!qword_1EDA6B210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8D1FA78()
{
  sub_1C8D1FDF8(319, &qword_1EDA69458);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1C8D1FBBC();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1C8D1FCA8();
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_1C8D1FD94();
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_1C8D1FDF8(319, &qword_1EDA6E558);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_1C8D1FBBC()
{
  if (!qword_1EDA6B318)
  {
    sub_1C8D1FC54();
    sub_1C8D24DBC(&unk_1EDA6C268);
    v0 = type metadata accessor for ToolDatabaseProtobufArray();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA6B318);
    }
  }
}

unint64_t sub_1C8D1FC54()
{
  result = qword_1EDA69A78;
  if (!qword_1EDA69A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A78);
  }

  return result;
}

void sub_1C8D1FCA8()
{
  if (!qword_1EDA69120)
  {
    sub_1C8D1FD40();
    sub_1C8D24DBC(&qword_1EDA6C600);
    v0 = type metadata accessor for ToolDatabaseProtobufValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA69120);
    }
  }
}

unint64_t sub_1C8D1FD40()
{
  result = qword_1EDA66A38;
  if (!qword_1EDA66A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A38);
  }

  return result;
}

void sub_1C8D1FD94()
{
  if (!qword_1EDA6B290[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313198, &unk_1C9074080);
    v0 = sub_1C906464C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDA6B290);
    }
  }
}

void sub_1C8D1FDF8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C906464C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1C8D1FE44()
{
  v0 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v0, qword_1EDA6E5D8);
  OUTLINED_FUNCTION_10(v0, qword_1EDA6E5D8);
  if (qword_1EDA68DF0 != -1)
  {
    OUTLINED_FUNCTION_5_8();
  }

  __swift_project_value_buffer(v0, qword_1EDA6E8A8);
  OUTLINED_FUNCTION_10_0(v0);
  v2 = *(v1 + 16);

  return v2(qword_1EDA6E5D8);
}

uint64_t sub_1C8D1FEF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657079546C6F6F74 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696C696269736976 && a2 == 0xEF7367616C467974;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D65726975716572 && a2 == 0xEC00000073746E65;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001C90C9860 == a2;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001C90C9880 == a2;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x63496D6F74737563 && a2 == 0xEA00000000006E6FLL;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000018 && 0x80000001C90C98A0 == a2;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000014 && 0x80000001C90C98C0 == a2;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000011 && 0x80000001C90C98E0 == a2;
                        if (v16 || (sub_1C9064C2C() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000016 && 0x80000001C90C9900 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1C9064C2C();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_1C8D20300(char a1)
{
  result = 0x6449776F72;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x657079546C6F6F74;
      break;
    case 3:
      result = 0x7367616C66;
      break;
    case 4:
      result = 0x696C696269736976;
      break;
    case 5:
      result = 0x6D65726975716572;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x63496D6F74737563;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D2047C(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131D8, &qword_1C906B090);
  OUTLINED_FUNCTION_11(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_38();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D21E8C();
  sub_1C9064E1C();
  v13 = *v4;
  v14 = *(v4 + 8);
  OUTLINED_FUNCTION_19_2();
  sub_1C9064B1C();
  if (!v2)
  {
    v15 = v4[2];
    v16 = v4[3];
    OUTLINED_FUNCTION_4_6(1);
    sub_1C9064B2C();
    v32 = *(v4 + 32);
    sub_1C8D2225C();
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_19_2();
    sub_1C9064B8C();
    v33 = v4[5];
    sub_1C8D222B0();
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_19_2();
    sub_1C9064B8C();
    v34 = v4[6];
    sub_1C8D22304();
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_19_2();
    sub_1C9064B8C();
    v35 = v4[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131B8, &unk_1C906B520);
    sub_1C8D22358(&unk_1EC3131E0);
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_19_2();
    sub_1C9064B8C();
    LOBYTE(v35) = *(v4 + 64);
    sub_1C8D223C0();
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_19_2();
    sub_1C9064B8C();
    v36 = v4[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
    OUTLINED_FUNCTION_22_4();
    sub_1C8D22414(v17);
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_19_2();
    sub_1C9064B8C();

    v18 = type metadata accessor for ToolRecord();
    v19 = v18[12];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313198, &unk_1C9074080);
    OUTLINED_FUNCTION_22_4();
    sub_1C8D220D8(v20);
    OUTLINED_FUNCTION_19_2();
    sub_1C9064B0C();
    v21 = (v4 + v18[13]);
    v22 = *v21;
    v23 = v21[1];
    OUTLINED_FUNCTION_4_6(9);
    sub_1C9064ADC();
    v24 = (v4 + v18[14]);
    v25 = *v24;
    v26 = v24[1];
    OUTLINED_FUNCTION_4_6(10);
    sub_1C9064ADC();
    v27 = *(v4 + v18[15]);
    OUTLINED_FUNCTION_19_2();
    sub_1C9064B9C();
    v28 = (v4 + v18[16]);
    v29 = *v28;
    v30 = *(v28 + 8);
    OUTLINED_FUNCTION_4_6(12);
    sub_1C9064B1C();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1C8D20854@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_142();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131B0, &qword_1C906B088);
  OUTLINED_FUNCTION_11(v39);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  v41 = type metadata accessor for ToolRecord();
  v13 = OUTLINED_FUNCTION_13_1(v41);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v18 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1C8D21E8C();
  sub_1C9064DEC();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v37 = a2;
  v38 = v2;
  LOBYTE(v42) = 0;
  OUTLINED_FUNCTION_52_4();
  *v17 = sub_1C90649FC();
  v17[8] = v20 & 1;
  LOBYTE(v42) = 1;
  OUTLINED_FUNCTION_52_4();
  *(v17 + 2) = sub_1C9064A0C();
  *(v17 + 3) = v21;
  v43 = 2;
  sub_1C8D21EE0();
  OUTLINED_FUNCTION_6_5();
  v17[32] = v42;
  v43 = 3;
  sub_1C8D21F34();
  OUTLINED_FUNCTION_6_5();
  *(v17 + 5) = v42;
  v43 = 4;
  sub_1C8D21F88();
  OUTLINED_FUNCTION_6_5();
  *(v17 + 6) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131B8, &unk_1C906B520);
  v43 = 5;
  sub_1C8D22358(&qword_1EDA69140);
  OUTLINED_FUNCTION_15_5();
  sub_1C9064A6C();
  *(v17 + 7) = v42;
  v43 = 6;
  sub_1C8D22084();
  OUTLINED_FUNCTION_6_5();
  v17[64] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  v43 = 7;
  OUTLINED_FUNCTION_20_2();
  sub_1C8D22414(v22);
  OUTLINED_FUNCTION_15_5();
  sub_1C9064A6C();
  *(v17 + 9) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313198, &unk_1C9074080);
  LOBYTE(v42) = 8;
  OUTLINED_FUNCTION_20_2();
  sub_1C8D220D8(v23);
  v24 = v38;
  OUTLINED_FUNCTION_15_5();
  sub_1C90649EC();
  sub_1C8CB2244(v24, &v17[v41[12]], &qword_1EC313190, &unk_1C9074070);
  LOBYTE(v42) = 9;
  OUTLINED_FUNCTION_52_4();
  v25 = sub_1C90649AC();
  v26 = &v17[v41[13]];
  *v26 = v25;
  v26[1] = v27;
  OUTLINED_FUNCTION_13_5(10);
  v28 = sub_1C90649AC();
  v29 = &v17[v41[14]];
  *v29 = v28;
  v29[1] = v30;
  OUTLINED_FUNCTION_13_5(11);
  *&v17[v41[15]] = sub_1C9064A7C();
  OUTLINED_FUNCTION_13_5(12);
  v31 = sub_1C90649FC();
  LOBYTE(v24) = v32;
  v33 = OUTLINED_FUNCTION_26_0();
  v34(v33);
  v35 = &v17[v41[16]];
  *v35 = v31;
  v35[8] = v24 & 1;
  sub_1C8D2219C(v17, v37);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_1C8D22200(v17);
}

uint64_t sub_1C8D20E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D1FEF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D20EB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8D202F8();
  *a1 = result;
  return result;
}

uint64_t sub_1C8D20EE0(uint64_t a1)
{
  v2 = sub_1C8D21E8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D20F1C(uint64_t a1)
{
  v2 = sub_1C8D21E8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D20FD4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA68DF0 != -1)
  {
    OUTLINED_FUNCTION_5_8();
  }

  v3 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v3, qword_1EDA6E8A8);
  sub_1C9062E5C();
  v4 = sub_1C8E29308();
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6 & 1;
  if (qword_1EDA68E08 != -1)
  {
    OUTLINED_FUNCTION_43_3();
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6E8D8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B294();
  OUTLINED_FUNCTION_64();

  *(a1 + 16) = v4;
  *(a1 + 24) = v1;
  if (qword_1EDA68DE0 != -1)
  {
    OUTLINED_FUNCTION_42_3();
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6E890);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B294();
  OUTLINED_FUNCTION_64();

  v7._countAndFlagsBits = v4;
  v7._object = v1;
  ToolTypeDefinition.init(rawValue:)(v7);
  v8 = v27;
  if (v27 == 5)
  {
    v8 = 3;
  }

  *(a1 + 32) = v8;
  if (qword_1EDA68DF8 != -1)
  {
    OUTLINED_FUNCTION_41_3();
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6E8C0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B088();
  OUTLINED_FUNCTION_60_1();

  *(a1 + 40) = v4;
  if (qword_1EDA68E30 != -1)
  {
    OUTLINED_FUNCTION_40_3();
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6E938);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B088();
  OUTLINED_FUNCTION_60_1();

  *(a1 + 48) = v4;
  if (qword_1EDA68E38 != -1)
  {
    OUTLINED_FUNCTION_39_3();
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6E950);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8D279AC();
  OUTLINED_FUNCTION_60_1();

  *(a1 + 56) = v4;
  if (qword_1EDA68E20 != -1)
  {
    OUTLINED_FUNCTION_37_4();
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6E908);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B294();

  v9 = sub_1C906497C();

  if (v9 >= 4)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  *(a1 + 64) = v10;
  if (qword_1EDA68E28 != -1)
  {
    OUTLINED_FUNCTION_36_2();
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6E920);
  sub_1C9062E5C();
  sub_1C8D277DC();

  *(a1 + 72) = v27;
  if (qword_1EDA68E40 != -1)
  {
    OUTLINED_FUNCTION_35_2();
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6E968);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_64();
  v11 = type metadata accessor for ToolRecord();
  sub_1C905CBB0(a1 + v11[12]);

  if (qword_1EDA68E18 != -1)
  {
    OUTLINED_FUNCTION_34_4();
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6E8F0);
  sub_1C9062E5C();
  v12 = sub_1C8E293EC();
  v14 = v13;

  v15 = (a1 + v11[13]);
  *v15 = v12;
  v15[1] = v14;
  if (qword_1EDA6B240 != -1)
  {
    OUTLINED_FUNCTION_33_2();
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6EBC8);
  sub_1C9062E5C();
  v16 = sub_1C8E293EC();
  v18 = v17;

  v19 = (a1 + v11[14]);
  *v19 = v16;
  v19[1] = v18;
  if (qword_1EDA6B248 != -1)
  {
    OUTLINED_FUNCTION_32_2();
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6EBE0);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v21 = v20;

  *(a1 + v11[15]) = v21;
  if (qword_1EDA6B230 != -1)
  {
    OUTLINED_FUNCTION_31_3();
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6EBB0);
  sub_1C9062E5C();
  v22 = sub_1C8E29308();
  v24 = v23;

  v26 = a1 + v11[16];
  *v26 = v22;
  *(v26 + 8) = v24 & 1;
  return result;
}

void sub_1C8D21520()
{
  OUTLINED_FUNCTION_164();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_38();
  if (qword_1EDA68DF0 != -1)
  {
    OUTLINED_FUNCTION_5_8();
  }

  v6 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v6, qword_1EDA6E8A8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  if (v0[1])
  {
    OUTLINED_FUNCTION_30_2();
    *(&v44 + 1) = 0;
    *&v45 = 0;
  }

  else
  {
    v7 = *v0;
    v8 = MEMORY[0x1E69A01D0];
    v9 = MEMORY[0x1E69E7360];
  }

  *&v44 = v7;
  *(&v45 + 1) = v9;
  v46 = v8;
  OUTLINED_FUNCTION_7_4();
  if (qword_1EDA68E08 != -1)
  {
    OUTLINED_FUNCTION_43_3();
  }

  OUTLINED_FUNCTION_10(v6, qword_1EDA6E8D8);
  sub_1C9062E5C();
  v11 = v0[2];
  v10 = v0[3];
  v12 = MEMORY[0x1E69E6158];
  v13 = MEMORY[0x1E69A0138];
  *(&v45 + 1) = MEMORY[0x1E69E6158];
  v46 = MEMORY[0x1E69A0138];
  *&v44 = v11;
  *(&v44 + 1) = v10;

  OUTLINED_FUNCTION_46_2();
  if (qword_1EDA68DE0 != -1)
  {
    OUTLINED_FUNCTION_42_3();
  }

  v14 = 0xE900000000000064;
  OUTLINED_FUNCTION_10(v6, qword_1EDA6E890);
  sub_1C9062E5C();
  v15 = 0xE900000000000074;
  v16 = 0x6E65746E49707061;
  switch(*(v0 + 32))
  {
    case 1:
      v15 = 0xEA0000000000746ELL;
      v16 = 0x65746E4969726973;
      break;
    case 2:
      v15 = 0xE600000000000000;
      v16 = 0x6E6F69746361;
      break;
    case 3:
      v15 = 0xE700000000000000;
      v16 = 0x6E776F6E6B6E75;
      break;
    case 4:
      v15 = 0xE800000000000000;
      v16 = 0x6C6F6F54776F6C66;
      break;
    default:
      break;
  }

  *(&v45 + 1) = v12;
  v46 = v13;
  *&v44 = v16;
  *(&v44 + 1) = v15;
  OUTLINED_FUNCTION_7_4();
  if (qword_1EDA68DF8 != -1)
  {
    OUTLINED_FUNCTION_41_3();
  }

  OUTLINED_FUNCTION_10(v6, qword_1EDA6E8C0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  v17 = MEMORY[0x1E69E6530];
  v18 = v0[5];
  v19 = MEMORY[0x1E69A0180];
  *(&v45 + 1) = MEMORY[0x1E69E6530];
  v46 = MEMORY[0x1E69A0180];
  *&v44 = v18;
  OUTLINED_FUNCTION_7_4();
  if (qword_1EDA68E30 != -1)
  {
    OUTLINED_FUNCTION_40_3();
  }

  OUTLINED_FUNCTION_10(v6, qword_1EDA6E938);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  v20 = v0[6];
  *(&v45 + 1) = v17;
  v46 = v19;
  *&v44 = v20;
  OUTLINED_FUNCTION_7_4();
  if (qword_1EDA68E38 != -1)
  {
    OUTLINED_FUNCTION_39_3();
  }

  OUTLINED_FUNCTION_10(v6, qword_1EDA6E950);
  sub_1C9062E5C();
  v21 = v0[7];
  *(&v45 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131B8, &unk_1C906B520);
  v46 = sub_1C8D24EA8(&unk_1EDA69148);
  *&v44 = v21;

  OUTLINED_FUNCTION_46_2();
  if (qword_1EDA68E20 != -1)
  {
    OUTLINED_FUNCTION_37_4();
  }

  OUTLINED_FUNCTION_10(v6, qword_1EDA6E908);
  sub_1C9062E5C();
  v22 = 0x656E696665646E75;
  switch(*(v0 + 64))
  {
    case 1:
      v14 = 0xE400000000000000;
      v22 = 1701736302;
      break;
    case 2:
      v22 = 0xD00000000000001ELL;
      v14 = 0x80000001C90C91D0;
      break;
    case 3:
      v14 = 0x80000001C90C91F0;
      v22 = 0xD000000000000027;
      break;
    default:
      break;
  }

  *(&v45 + 1) = MEMORY[0x1E69E6158];
  v46 = MEMORY[0x1E69A0138];
  *&v44 = v22;
  *(&v44 + 1) = v14;
  OUTLINED_FUNCTION_7_4();
  if (qword_1EDA68E28 != -1)
  {
    OUTLINED_FUNCTION_36_2();
  }

  OUTLINED_FUNCTION_10(v6, qword_1EDA6E920);
  sub_1C9062E5C();
  v23 = v0[9];
  *(&v45 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  OUTLINED_FUNCTION_23_0();
  v46 = sub_1C8D24EA8(v24);
  *&v44 = v23;

  OUTLINED_FUNCTION_46_2();
  if (qword_1EDA68E40 != -1)
  {
    OUTLINED_FUNCTION_35_2();
  }

  OUTLINED_FUNCTION_10(v6, qword_1EDA6E968);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_64();
  v25 = type metadata accessor for ToolRecord();
  sub_1C8D24768(v0 + v25[12], v1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313198, &unk_1C9074080);
  if (__swift_getEnumTagSinglePayload(v1, 1, v26) == 1)
  {
    sub_1C8D16D78(v1, &qword_1EC313190, &unk_1C9074070);
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
  }

  else
  {
    *(&v45 + 1) = v26;
    OUTLINED_FUNCTION_23_0();
    v46 = sub_1C8D24EA8(v27);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
    sub_1C8CB2244(v1, boxed_opaque_existential_1, &qword_1EC313198, &unk_1C9074080);
  }

  sub_1C9062BFC();
  if (qword_1EDA68E18 != -1)
  {
    OUTLINED_FUNCTION_34_4();
  }

  OUTLINED_FUNCTION_10(v6, qword_1EDA6E8F0);
  sub_1C9062E5C();
  v29 = (v0 + v25[13]);
  v30 = v29[1];
  if (v30)
  {
    v31 = *v29;
    v32 = MEMORY[0x1E69A0138];
    v33 = MEMORY[0x1E69E6158];
  }

  else
  {
    OUTLINED_FUNCTION_30_2();
    *&v45 = 0;
  }

  *&v44 = v31;
  *(&v44 + 1) = v30;
  *(&v45 + 1) = v33;
  v46 = v32;

  OUTLINED_FUNCTION_66_1();
  if (qword_1EDA6B240 != -1)
  {
    OUTLINED_FUNCTION_33_2();
  }

  OUTLINED_FUNCTION_10(v6, qword_1EDA6EBC8);
  sub_1C9062E5C();
  v34 = (v0 + v25[14]);
  v35 = v34[1];
  if (v35)
  {
    v36 = *v34;
    v37 = MEMORY[0x1E69A0138];
    v38 = MEMORY[0x1E69E6158];
  }

  else
  {
    OUTLINED_FUNCTION_30_2();
    *&v45 = 0;
  }

  *&v44 = v36;
  *(&v44 + 1) = v35;
  *(&v45 + 1) = v38;
  v46 = v37;

  OUTLINED_FUNCTION_66_1();
  if (qword_1EDA6B248 != -1)
  {
    OUTLINED_FUNCTION_32_2();
  }

  OUTLINED_FUNCTION_10(v6, qword_1EDA6EBE0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  v39 = *(v0 + v25[15]);
  v46 = MEMORY[0x1E69A01D0];
  *(&v45 + 1) = MEMORY[0x1E69E7360];
  *&v44 = v39;
  OUTLINED_FUNCTION_7_4();
  if (qword_1EDA6B230 != -1)
  {
    OUTLINED_FUNCTION_31_3();
  }

  OUTLINED_FUNCTION_10(v6, qword_1EDA6EBB0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  v40 = (v0 + v25[16]);
  if (v40[1])
  {
    OUTLINED_FUNCTION_30_2();
    *(&v44 + 1) = 0;
    *&v45 = 0;
  }

  else
  {
    v41 = *v40;
    v42 = MEMORY[0x1E69A01D0];
    v43 = MEMORY[0x1E69E7360];
  }

  *&v44 = v41;
  *(&v45 + 1) = v43;
  v46 = v42;
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_163();
}

unint64_t sub_1C8D21CC4(void *a1)
{
  a1[1] = sub_1C8D24DBC(&unk_1EC3131A0);
  a1[2] = sub_1C8D24DBC(&unk_1EDA68DD0);
  a1[3] = sub_1C8D24DBC(&unk_1EDA68DC0);
  result = sub_1C8D24DBC(&unk_1EC3131A8);
  a1[4] = result;
  return result;
}

unint64_t sub_1C8D21DA4(uint64_t a1)
{
  result = sub_1C8D24DBC(&unk_1EDA68DD0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8D21E8C()
{
  result = qword_1EDA6B260;
  if (!qword_1EDA6B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B260);
  }

  return result;
}

unint64_t sub_1C8D21EE0()
{
  result = qword_1EDA6B340;
  if (!qword_1EDA6B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B340);
  }

  return result;
}

unint64_t sub_1C8D21F34()
{
  result = qword_1EDA6B278;
  if (!qword_1EDA6B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B278);
  }

  return result;
}

unint64_t sub_1C8D21F88()
{
  result = qword_1EDA66490;
  if (!qword_1EDA66490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66490);
  }

  return result;
}

unint64_t sub_1C8D21FDC()
{
  result = qword_1EDA6CCE8;
  if (!qword_1EDA6CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CCE8);
  }

  return result;
}

unint64_t sub_1C8D22030()
{
  result = qword_1EDA69A68;
  if (!qword_1EDA69A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A68);
  }

  return result;
}

unint64_t sub_1C8D22084()
{
  result = qword_1EDA691D0;
  if (!qword_1EDA691D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA691D0);
  }

  return result;
}

unint64_t sub_1C8D220D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313198, &unk_1C9074080);
    sub_1C8D24DBC(&unk_1EDA68EC0);
    sub_1C8D24DBC(&unk_1EDA68EC8);
    result = OUTLINED_FUNCTION_62_4();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C8D2219C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D22200(uint64_t a1)
{
  v2 = type metadata accessor for ToolRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C8D2225C()
{
  result = qword_1EDA6B348;
  if (!qword_1EDA6B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B348);
  }

  return result;
}

unint64_t sub_1C8D222B0()
{
  result = qword_1EDA6B288;
  if (!qword_1EDA6B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B288);
  }

  return result;
}

unint64_t sub_1C8D22304()
{
  result = qword_1EDA66498;
  if (!qword_1EDA66498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66498);
  }

  return result;
}

unint64_t sub_1C8D22358(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3131B8, &unk_1C906B520);
    sub_1C8D21FDC();
    sub_1C8D22030();
    result = OUTLINED_FUNCTION_62_4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C8D223C0()
{
  result = qword_1EDA691D8;
  if (!qword_1EDA691D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA691D8);
  }

  return result;
}

unint64_t sub_1C8D22414(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3131C0, &unk_1C906B4E0);
    sub_1C8CAC450();
    sub_1C8CA6D90();
    result = OUTLINED_FUNCTION_62_4();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C8D2254C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  OUTLINED_FUNCTION_10(v3, a2);
  sub_1C8D21E8C();
  return sub_1C9062E8C();
}

uint64_t sub_1C8D2261C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_142();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313278, &qword_1C90C63C0);
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  type metadata accessor for ToolRecord();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313280, &qword_1C906B0B8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C906A950;
  if (*a3 != -1)
  {
    swift_once();
  }

  v14 = sub_1C9062E6C();
  __swift_project_value_buffer(v14, a4);
  v15 = MEMORY[0x1E69A0030];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  __swift_allocate_boxed_opaque_existential_1((v13 + 32));
  OUTLINED_FUNCTION_10_0(v14);
  (*(v16 + 16))();
  sub_1C906240C();
  v17 = sub_1C90623FC();
  OUTLINED_FUNCTION_67_1(v17);
  OUTLINED_FUNCTION_0_13();
  sub_1C8D24DBC(v18);
  sub_1C8D24BA0();
  OUTLINED_FUNCTION_21_1();
  sub_1C906254C();
  return sub_1C8D16D78(v4, &qword_1EC3131F8, &qword_1C90A6B60);
}

void sub_1C8D22808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_164();
  a19 = v20;
  a20 = v21;
  v22 = sub_1C9062E6C();
  v23 = OUTLINED_FUNCTION_11(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v28 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  if (qword_1EDA6C790 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v22, qword_1EDA6EBF8);
  v36 = *(v25 + 16);
  v36(v34, v35, v22);
  if (qword_1EDA624D8 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v22, qword_1EDA6E6C0);
  v36(v31, v34, v22);
  v36(v28, v37, v22);
  (*(v25 + 8))(v34, v22);
  v38 = *(v25 + 80);
  v39 = (v38 + 16) & ~v38;
  v40 = (v27 + v38 + v39) & ~v38;
  v41 = swift_allocObject();
  v42 = *(v25 + 32);
  v42(v41 + v39, v31, v22);
  v42(v41 + v40, v28, v22);
  qword_1EDA6E5F0 = sub_1C8D24C48;
  *algn_1EDA6E5F8 = v41;
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D22A54()
{
  v0 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_9(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_72();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313260, &unk_1C90A7A60);
  __swift_allocate_value_buffer(v4, qword_1EDA6E600);
  OUTLINED_FUNCTION_10(v4, qword_1EDA6E600);
  type metadata accessor for ToolRecord();
  OUTLINED_FUNCTION_49_2();
  v5 = sub_1C90623FC();
  OUTLINED_FUNCTION_17_1(v5);
  OUTLINED_FUNCTION_0_13();
  sub_1C8D24DBC(v6);
  sub_1C8D24B4C();
  OUTLINED_FUNCTION_2_7();
  return OUTLINED_FUNCTION_45_5();
}

uint64_t sub_1C8D22B48()
{
  v0 = sub_1C9062E6C();
  v1 = OUTLINED_FUNCTION_11(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_55_1();
  if (qword_1EDA66A00 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDA6E878);
  v6 = OUTLINED_FUNCTION_56();
  v7(v6);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_58(v9);
  result = v11(v10);
  qword_1EDA6EA38 = sub_1C8D249F4;
  unk_1EDA6EA40 = v5;
  return result;
}

uint64_t sub_1C8D22C70()
{
  v0 = sub_1C9062E6C();
  v1 = OUTLINED_FUNCTION_11(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_55_1();
  if (qword_1EDA66928 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDA6E848);
  v6 = OUTLINED_FUNCTION_56();
  v7(v6);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_58(v9);
  result = v11(v10);
  qword_1EDA6EA28 = sub_1C8D249DC;
  unk_1EDA6EA30 = v5;
  return result;
}

uint64_t sub_1C8D22D98()
{
  v0 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_9(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_72();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313238, &qword_1C906B0B0);
  __swift_allocate_value_buffer(v4, qword_1EDA6E9E0);
  OUTLINED_FUNCTION_10(v4, qword_1EDA6E9E0);
  type metadata accessor for ToolRecord();
  OUTLINED_FUNCTION_49_2();
  v5 = sub_1C90623FC();
  OUTLINED_FUNCTION_17_1(v5);
  OUTLINED_FUNCTION_0_13();
  sub_1C8D24DBC(v6);
  sub_1C8D24988();
  OUTLINED_FUNCTION_2_7();
  return OUTLINED_FUNCTION_45_5();
}

uint64_t sub_1C8D22E8C()
{
  v0 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_9(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_72();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313258, &unk_1C90A7A30);
  __swift_allocate_value_buffer(v4, qword_1EDA6E9B0);
  OUTLINED_FUNCTION_10(v4, qword_1EDA6E9B0);
  type metadata accessor for ToolRecord();
  OUTLINED_FUNCTION_49_2();
  v5 = sub_1C90623FC();
  OUTLINED_FUNCTION_17_1(v5);
  OUTLINED_FUNCTION_0_13();
  sub_1C8D24DBC(v6);
  sub_1C8D24AF8();
  OUTLINED_FUNCTION_2_7();
  return OUTLINED_FUNCTION_45_5();
}

uint64_t sub_1C8D22F80()
{
  v0 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_9(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_72();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313218, &qword_1C906B0A0);
  __swift_allocate_value_buffer(v4, qword_1EDA6E9F8);
  OUTLINED_FUNCTION_10(v4, qword_1EDA6E9F8);
  type metadata accessor for ToolRecord();
  OUTLINED_FUNCTION_49_2();
  v5 = sub_1C90623FC();
  OUTLINED_FUNCTION_17_1(v5);
  OUTLINED_FUNCTION_0_13();
  sub_1C8D24DBC(v6);
  sub_1C8D248E0();
  OUTLINED_FUNCTION_2_7();
  return OUTLINED_FUNCTION_45_5();
}

uint64_t sub_1C8D23074()
{
  v0 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_9(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_72();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313210, &unk_1C90A7A10);
  __swift_allocate_value_buffer(v4, qword_1EDA6E998);
  OUTLINED_FUNCTION_10(v4, qword_1EDA6E998);
  type metadata accessor for ToolRecord();
  OUTLINED_FUNCTION_49_2();
  v5 = sub_1C90623FC();
  OUTLINED_FUNCTION_17_1(v5);
  OUTLINED_FUNCTION_0_13();
  sub_1C8D24DBC(v6);
  sub_1C8D2488C();
  OUTLINED_FUNCTION_2_7();
  return OUTLINED_FUNCTION_45_5();
}

void sub_1C8D23168()
{
  OUTLINED_FUNCTION_164();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313220, &qword_1C90C7320);
  OUTLINED_FUNCTION_11(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313228, &qword_1C906B0A8);
  OUTLINED_FUNCTION_11(v26);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_38();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313230, &unk_1C90A6FF0);
  __swift_allocate_value_buffer(v20, qword_1EDA6E980);
  __swift_project_value_buffer(v20, qword_1EDA6E980);
  type metadata accessor for ToolRecord();
  v21 = sub_1C90623FC();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v21);
  OUTLINED_FUNCTION_0_13();
  sub_1C8D24DBC(v22);
  sub_1C8D24934();
  OUTLINED_FUNCTION_21_1();
  sub_1C906251C();
  sub_1C8D16D78(v14, &qword_1EC3131F8, &qword_1C90A6B60);
  if (qword_1EDA69348 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v1, qword_1EDA6EA68);
  (*(v3 + 16))(v8, v23, v1);
  sub_1C8D24EA8(&unk_1EDA693F8);
  sub_1C8D24EA8(&unk_1EDA69398);
  v24 = v26;
  sub_1C906252C();
  (*(v3 + 8))(v8, v1);
  (*(v16 + 8))(v0, v24);
  OUTLINED_FUNCTION_163();
}

void sub_1C8D234B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_164();
  a19 = v21;
  a20 = v22;
  v23 = sub_1C9062E6C();
  v24 = OUTLINED_FUNCTION_11(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_142();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313200, &qword_1C906B098);
  __swift_allocate_value_buffer(v35, qword_1EC3906B0);
  __swift_project_value_buffer(v35, qword_1EC3906B0);
  OUTLINED_FUNCTION_49_2();
  type metadata accessor for ToolRecord();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1C906A950;
  if (qword_1EC311228 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v23, qword_1EC390810);
  (*(v26 + 16))(v30, v37, v23);
  v38 = sub_1C9062E5C();
  v40 = v39;
  (*(v26 + 8))(v30, v23);
  *(v36 + 32) = v38;
  *(v36 + 40) = v40;
  sub_1C906241C();
  v41 = sub_1C90623FC();
  OUTLINED_FUNCTION_67_1(v41);
  OUTLINED_FUNCTION_0_13();
  sub_1C8D24DBC(v42);
  sub_1C8D24838();
  OUTLINED_FUNCTION_21_1();
  sub_1C906251C();
  sub_1C8D16D78(v20, &qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D23714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a6;
  v31 = a4;
  v30 = a3;
  v34 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v28 - v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313270, &unk_1C90A7010);
  v33 = *(v32 - 8);
  v14 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v16 = &v28 - v15;
  type metadata accessor for ToolRecord();
  v17 = sub_1C90623FC();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v17);
  sub_1C8D24DBC(&qword_1EDA6B220);
  sub_1C8D24D14();
  sub_1C90624EC();
  sub_1C8D16D78(v13, &qword_1EC3131F8, &qword_1C90A6B60);
  v18 = sub_1C9062E6C();
  v41 = v18;
  v42 = MEMORY[0x1E69A0050];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  v20 = *(*(v18 - 8) + 16);
  v20(boxed_opaque_existential_1, a5, v18);
  v21 = MEMORY[0x1E69E6158];
  v22 = MEMORY[0x1E69A0130];
  v37 = MEMORY[0x1E69E6158];
  v38 = MEMORY[0x1E69A0130];
  v36[0] = a1;
  v36[1] = a2;
  v23 = sub_1C90627EC();
  v24 = MEMORY[0x1E699FE60];
  v39[3] = v23;
  v39[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v39);

  sub_1C9062D6C();
  sub_1C8D16D78(v36, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v40);
  v41 = v18;
  v42 = MEMORY[0x1E69A0050];
  v25 = __swift_allocate_boxed_opaque_existential_1(v40);
  v20(v25, v29, v18);
  v35[3] = v21;
  v35[4] = v22;
  v35[0] = v30;
  v35[1] = v31;
  v37 = v23;
  v38 = v24;
  __swift_allocate_boxed_opaque_existential_1(v36);

  sub_1C9062D6C();
  sub_1C8D16D78(v35, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v40);
  v41 = v23;
  v42 = v24;
  __swift_allocate_boxed_opaque_existential_1(v40);
  sub_1C9062D4C();
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_1C8D24EA8(&unk_1EDA69400);
  v26 = v32;
  sub_1C906292C();
  (*(v33 + 8))(v16, v26);
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_1C8D23AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313250, &unk_1C90A7000);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21[-1] - v14;
  type metadata accessor for ToolRecord();
  v16 = sub_1C90623FC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v16);
  sub_1C8D24DBC(&qword_1EDA6B220);
  sub_1C8D24AA4();
  sub_1C906251C();
  sub_1C8D16D78(v10, &qword_1EC3131F8, &qword_1C90A6B60);
  v17 = sub_1C9062E6C();
  v22[3] = v17;
  v22[4] = MEMORY[0x1E69A0050];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, a3, v17);
  v21[3] = MEMORY[0x1E69E6158];
  v21[4] = MEMORY[0x1E69A0130];
  v21[0] = a1;
  v21[1] = a2;
  v23[3] = sub_1C90627EC();
  v23[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v23);

  sub_1C9062D6C();
  sub_1C8D16D78(v21, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_1C8D24EA8(&unk_1EDA693B0);
  sub_1C906292C();
  (*(v12 + 8))(v15, v11);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1C8D23DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313240, &unk_1C90A7A20);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21[-1] - v14;
  type metadata accessor for ToolRecord();
  v16 = sub_1C90623FC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v16);
  sub_1C8D24DBC(&qword_1EDA6B220);
  sub_1C8CE6CE8();
  sub_1C906251C();
  sub_1C8D16D78(v10, &qword_1EC3131F8, &qword_1C90A6B60);
  v17 = sub_1C9062E6C();
  v22[3] = v17;
  v22[4] = MEMORY[0x1E69A0050];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, a3, v17);
  v21[3] = MEMORY[0x1E69E6158];
  v21[4] = MEMORY[0x1E69A0130];
  v21[0] = a1;
  v21[1] = a2;
  v23[3] = sub_1C90627EC();
  v23[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v23);

  sub_1C9062D6C();
  sub_1C8D16D78(v21, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_1C8D24EA8(&unk_1EDA693E0);
  sub_1C906292C();
  (*(v12 + 8))(v15, v11);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

void sub_1C8D240D4()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_27(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_38();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3132A0, &unk_1C9084E20);
  OUTLINED_FUNCTION_11(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_28();
  v13 = sub_1C90623FC();
  OUTLINED_FUNCTION_47_2(v13);
  sub_1C8D24E00();
  sub_1C8D24E54();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_65_0();
  sub_1C8D16D78(v0, &qword_1EC3131F8, &qword_1C90A6B60);
  v14 = sub_1C9062E6C();
  v18[3] = v14;
  v18[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_10_0(v14);
  (*(v15 + 16))();
  v19[3] = OUTLINED_FUNCTION_61(MEMORY[0x1E69E6158]);
  v19[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_60_1();

  sub_1C9062D6C();
  sub_1C8D16D78(&v17, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_3_2();
  sub_1C8D24EA8(v16);
  OUTLINED_FUNCTION_44_2();
  (*(v9 + 8))(v1, v7);
  __swift_destroy_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_163();
}

void sub_1C8D242EC()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_27(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_38();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313288, &qword_1C906B0C0);
  OUTLINED_FUNCTION_11(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_28();
  type metadata accessor for EnumerationCaseRecord();
  v13 = sub_1C90623FC();
  OUTLINED_FUNCTION_47_2(v13);
  sub_1C8D24D68();
  sub_1C8D24DBC(&unk_1EC313290);
  OUTLINED_FUNCTION_21_1();
  sub_1C906251C();
  sub_1C8D16D78(v0, &qword_1EC3131F8, &qword_1C90A6B60);
  v14 = sub_1C9062E6C();
  v18[3] = v14;
  v18[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_10_0(v14);
  (*(v15 + 16))();
  v19[3] = OUTLINED_FUNCTION_61(MEMORY[0x1E69E6158]);
  v19[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v19);

  sub_1C9062D6C();
  sub_1C8D16D78(&v17, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_3_2();
  sub_1C8D24EA8(v16);
  OUTLINED_FUNCTION_44_2();
  (*(v9 + 8))(v1, v7);
  __swift_destroy_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_163();
}

void sub_1C8D24550()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_27(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_38();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313268, &unk_1C909F240);
  OUTLINED_FUNCTION_11(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_28();
  v13 = sub_1C90623FC();
  OUTLINED_FUNCTION_47_2(v13);
  sub_1C8D24BA0();
  sub_1C8D24BF4();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_65_0();
  sub_1C8D16D78(v0, &qword_1EC3131F8, &qword_1C90A6B60);
  v14 = sub_1C9062E6C();
  v18[3] = v14;
  v18[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_10_0(v14);
  (*(v15 + 16))();
  v19[3] = OUTLINED_FUNCTION_61(MEMORY[0x1E69E6158]);
  v19[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_60_1();

  sub_1C9062D6C();
  sub_1C8D16D78(&v17, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_3_2();
  sub_1C8D24EA8(v16);
  OUTLINED_FUNCTION_44_2();
  (*(v9 + 8))(v1, v7);
  __swift_destroy_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D24768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_1C8D24838()
{
  result = qword_1EC313208;
  if (!qword_1EC313208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313208);
  }

  return result;
}

unint64_t sub_1C8D2488C()
{
  result = qword_1EDA691F0;
  if (!qword_1EDA691F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA691F0);
  }

  return result;
}

unint64_t sub_1C8D248E0()
{
  result = qword_1EDA69340;
  if (!qword_1EDA69340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69340);
  }

  return result;
}

unint64_t sub_1C8D24934()
{
  result = qword_1EDA6B4B8;
  if (!qword_1EDA6B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B4B8);
  }

  return result;
}

unint64_t sub_1C8D24988()
{
  result = qword_1EDA668D8;
  if (!qword_1EDA668D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA668D8);
  }

  return result;
}

uint64_t sub_1C8D24A0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_1C9062E6C();
  OUTLINED_FUNCTION_9(v6);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a3(a1, a2, v8);
}

unint64_t sub_1C8D24AA4()
{
  result = qword_1EDA669F8;
  if (!qword_1EDA669F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA669F8);
  }

  return result;
}

unint64_t sub_1C8D24AF8()
{
  result = qword_1EDA66848[0];
  if (!qword_1EDA66848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA66848);
  }

  return result;
}

unint64_t sub_1C8D24B4C()
{
  result = qword_1EDA62680;
  if (!qword_1EDA62680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62680);
  }

  return result;
}

unint64_t sub_1C8D24BA0()
{
  result = qword_1EDA69628;
  if (!qword_1EDA69628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69628);
  }

  return result;
}

unint64_t sub_1C8D24BF4()
{
  result = qword_1EDA69508;
  if (!qword_1EDA69508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69508);
  }

  return result;
}

uint64_t sub_1C8D24C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(sub_1C9062E6C() - 8);
  v12 = *(v11 + 80);
  v13 = (v12 + 16) & ~v12;
  v14 = v5 + ((*(v11 + 64) + v12 + v13) & ~v12);

  return sub_1C8D23714(a1, a2, a3, a4, v5 + v13, v14, a5);
}

unint64_t sub_1C8D24D14()
{
  result = qword_1EDA6C780;
  if (!qword_1EDA6C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6C780);
  }

  return result;
}

unint64_t sub_1C8D24D68()
{
  result = qword_1EDA66B00;
  if (!qword_1EDA66B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66B00);
  }

  return result;
}

unint64_t sub_1C8D24DBC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C8D24E00()
{
  result = qword_1EC3132A8;
  if (!qword_1EC3132A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3132A8);
  }

  return result;
}

unint64_t sub_1C8D24E54()
{
  result = qword_1EC3132B0;
  if (!qword_1EC3132B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3132B0);
  }

  return result;
}

unint64_t sub_1C8D24EA8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ToolRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8D25054()
{
  result = qword_1EC3132C0;
  if (!qword_1EC3132C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3132C0);
  }

  return result;
}

unint64_t sub_1C8D250AC()
{
  result = qword_1EDA6B250;
  if (!qword_1EDA6B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B250);
  }

  return result;
}

unint64_t sub_1C8D25104()
{
  result = qword_1EDA6B258;
  if (!qword_1EDA6B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B258);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_37_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_66_1()
{

  return sub_1C9062BFC();
}

uint64_t sub_1C8D251D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C8D25210(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1C8D25270(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736E4965707974 && a2 == 0xEC00000065636E61;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6564724F74726F73 && a2 == 0xE900000000000072;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4972656767697274 && a2 == 0xE900000000000064)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C9064C2C();

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

uint64_t sub_1C8D254B0(char a1)
{
  result = 0x74736E4965707974;
  switch(a1)
  {
    case 1:
      result = 7955819;
      break;
    case 2:
      result = 0x6564724F74726F73;
      break;
    case 3:
      result = 0x6E6F6974616C6572;
      break;
    case 4:
      result = 0x7367616C66;
      break;
    case 5:
      result = 0x644965707974;
      break;
    case 6:
      result = 0x4972656767697274;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C8D2558C()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313330, &unk_1C906B4F0);
  OUTLINED_FUNCTION_11(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  v12 = *v0;
  v11 = v0[1];
  v13 = v0[3];
  v18[7] = v0[2];
  v18[8] = v11;
  v14 = v0[5];
  v18[5] = v0[4];
  v18[6] = v13;
  v15 = v0[7];
  v18[3] = v0[6];
  v18[4] = v14;
  v18[1] = v0[8];
  v18[2] = v15;
  v16 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v17 = sub_1C8D267AC();

  sub_1C9064E1C();
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  sub_1C8D269CC(&qword_1EC3131E8);
  OUTLINED_FUNCTION_205();
  sub_1C9064B8C();
  if (v17)
  {
  }

  else
  {

    OUTLINED_FUNCTION_205();
    sub_1C9064B2C();
    OUTLINED_FUNCTION_205();
    sub_1C9064B6C();
    v19 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313320, &qword_1C90A6B50);
    sub_1C8D26800(&qword_1EC313338);
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    v19 = 4;
    sub_1C8D26A34();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_205();
    sub_1C9064B2C();
    OUTLINED_FUNCTION_205();
    sub_1C9064B9C();
  }

  (*(v5 + 8))(v10, v3);
  OUTLINED_FUNCTION_198();
}

void sub_1C8D25878()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313310, &qword_1C906B4D8);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C8D267AC();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
    sub_1C8D269CC(&qword_1EC3131C8);
    OUTLINED_FUNCTION_27_1();
    sub_1C9064A6C();
    v22 = v25[0];
    OUTLINED_FUNCTION_9_7(1);
    v10 = sub_1C9064A0C();
    v23 = v11;
    OUTLINED_FUNCTION_9_7(2);
    v21 = sub_1C9064A4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313320, &qword_1C90A6B50);
    sub_1C8D26800(&qword_1EC313328);
    OUTLINED_FUNCTION_27_1();
    sub_1C9064A6C();
    v20 = v25[0];
    LOBYTE(v24[0]) = 4;
    sub_1C8D26910();
    OUTLINED_FUNCTION_27_1();
    sub_1C9064A6C();
    v19 = v25[0];
    OUTLINED_FUNCTION_9_7(5);
    v18 = sub_1C9064A0C();
    v17 = v10;
    v13 = v12;
    OUTLINED_FUNCTION_27_1();
    v14 = sub_1C9064A7C();
    v15 = OUTLINED_FUNCTION_5_9();
    v16(v15);
    v24[0] = v22;
    v24[1] = v17;
    v24[2] = v23;
    v24[3] = v21;
    v24[4] = v20;
    v24[5] = v19;
    v24[6] = v18;
    v24[7] = v13;
    v24[8] = v14;
    memcpy(v4, v24, 0x48uLL);
    sub_1C8D26964(v24, v25);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v25[0] = v22;
    v25[1] = v17;
    v25[2] = v23;
    v25[3] = v21;
    v25[4] = v20;
    v25[5] = v19;
    v25[6] = v18;
    v25[7] = v13;
    v25[8] = v14;
    sub_1C8D2699C(v25);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D25CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D25270(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D25CFC(uint64_t a1)
{
  v2 = sub_1C8D267AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D25D38(uint64_t a1)
{
  v2 = sub_1C8D267AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D25DA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (qword_1EC3111B8 != -1)
  {
    OUTLINED_FUNCTION_23_4();
  }

  v4 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v4, qword_1EC3906C8);
  sub_1C9062E5C();
  sub_1C8D277DC();

  *a2 = v16;
  if (qword_1EC3111C0 != -1)
  {
    OUTLINED_FUNCTION_22_5();
  }

  OUTLINED_FUNCTION_10(v4, qword_1EC3906E0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B294();
  v6 = v5;
  v8 = v7;

  a2[1] = v6;
  a2[2] = v8;
  if (qword_1EC3111C8 != -1)
  {
    OUTLINED_FUNCTION_21_5();
  }

  OUTLINED_FUNCTION_10(v4, qword_1EC3906F8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B088();
  OUTLINED_FUNCTION_60_1();

  a2[3] = v6;
  if (qword_1EC3111D0 != -1)
  {
    OUTLINED_FUNCTION_20_3();
  }

  OUTLINED_FUNCTION_10(v4, qword_1EC390710);
  sub_1C9062E5C();
  sub_1C8D27A0C();
  OUTLINED_FUNCTION_60_1();

  a2[4] = a1;
  if (qword_1EC3111D8 != -1)
  {
    OUTLINED_FUNCTION_19_3();
  }

  OUTLINED_FUNCTION_10(v4, qword_1EC390728);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B088();
  OUTLINED_FUNCTION_60_1();

  a2[5] = a1;
  if (qword_1EC3111E0 != -1)
  {
    OUTLINED_FUNCTION_18_1();
  }

  OUTLINED_FUNCTION_10(v4, qword_1EC390740);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B294();
  v10 = v9;
  v12 = v11;

  a2[6] = v10;
  a2[7] = v12;
  if (qword_1EC3111E8 != -1)
  {
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_10(v4, qword_1EC390758);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v14 = v13;

  a2[8] = v14;
  return result;
}

uint64_t sub_1C8D26090()
{
  sub_1C8D26658();

  return sub_1C9062B4C();
}

uint64_t sub_1C8D26188()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[4];
  v11 = v0[3];
  v12 = v0[5];
  v5 = v0[7];
  v13 = v0[6];
  v14 = v0[8];
  v6 = qword_1EC3111B8;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_23_4();
  }

  v7 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v7, qword_1EC3906C8);
  sub_1C9062E5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  OUTLINED_FUNCTION_23_0();
  sub_1C8D28184(v8, &qword_1EC3131C0, &unk_1C906B4E0);
  sub_1C9062BFC();
  if (qword_1EC3111C0 != -1)
  {
    OUTLINED_FUNCTION_22_5();
  }

  OUTLINED_FUNCTION_10(v7, qword_1EC3906E0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8_6();
  if (qword_1EC3111C8 != -1)
  {
    OUTLINED_FUNCTION_21_5();
  }

  OUTLINED_FUNCTION_10(v7, qword_1EC3906F8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8_6();
  if (qword_1EC3111D0 != -1)
  {
    OUTLINED_FUNCTION_20_3();
  }

  OUTLINED_FUNCTION_10(v7, qword_1EC390710);
  sub_1C9062E5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313320, &qword_1C90A6B50);
  OUTLINED_FUNCTION_11_5();
  sub_1C8D28184(v9, &qword_1EC313320, &qword_1C90A6B50);
  sub_1C9062BFC();
  if (qword_1EC3111D8 != -1)
  {
    OUTLINED_FUNCTION_19_3();
  }

  OUTLINED_FUNCTION_10(v7, qword_1EC390728);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8_6();
  if (qword_1EC3111E0 != -1)
  {
    OUTLINED_FUNCTION_18_1();
  }

  OUTLINED_FUNCTION_10(v7, qword_1EC390740);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8_6();
  if (qword_1EC3111E8 != -1)
  {
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_10(v7, qword_1EC390758);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  return OUTLINED_FUNCTION_8_6();
}

uint64_t sub_1C8D264DC()
{
  v0 = qword_1EC3132C8;

  return v0;
}

unint64_t sub_1C8D26518()
{
  result = qword_1EC3132D8;
  if (!qword_1EC3132D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3132D8);
  }

  return result;
}

unint64_t sub_1C8D26570()
{
  result = qword_1EC3132E0;
  if (!qword_1EC3132E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3132E0);
  }

  return result;
}

unint64_t sub_1C8D265C4(void *a1)
{
  a1[1] = sub_1C8D26604();
  a1[2] = sub_1C8D26658();
  a1[3] = sub_1C8D266AC();
  result = sub_1C8D26700();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8D26604()
{
  result = qword_1EC3132E8;
  if (!qword_1EC3132E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3132E8);
  }

  return result;
}

unint64_t sub_1C8D26658()
{
  result = qword_1EC3132F0;
  if (!qword_1EC3132F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3132F0);
  }

  return result;
}

unint64_t sub_1C8D266AC()
{
  result = qword_1EC3132F8;
  if (!qword_1EC3132F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3132F8);
  }

  return result;
}

unint64_t sub_1C8D26700()
{
  result = qword_1EC313300;
  if (!qword_1EC313300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313300);
  }

  return result;
}

unint64_t sub_1C8D26758()
{
  result = qword_1EC313308;
  if (!qword_1EC313308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313308);
  }

  return result;
}

unint64_t sub_1C8D267AC()
{
  result = qword_1EC313318;
  if (!qword_1EC313318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313318);
  }

  return result;
}

uint64_t sub_1C8D26800(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313320, &qword_1C90A6B50);
    sub_1C8D26868();
    sub_1C8D268BC();
    result = OUTLINED_FUNCTION_43();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8D26868()
{
  result = qword_1EDA694D0;
  if (!qword_1EDA694D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694D0);
  }

  return result;
}

unint64_t sub_1C8D268BC()
{
  result = qword_1EDA694D8;
  if (!qword_1EDA694D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694D8);
  }

  return result;
}

unint64_t sub_1C8D26910()
{
  result = qword_1EDA66968;
  if (!qword_1EDA66968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66968);
  }

  return result;
}

uint64_t sub_1C8D269CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3131C0, &unk_1C906B4E0);
    sub_1C8CAC450();
    sub_1C8CA6D90();
    result = OUTLINED_FUNCTION_43();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8D26A34()
{
  result = qword_1EDA66970;
  if (!qword_1EDA66970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66970);
  }

  return result;
}

uint64_t sub_1C8D26AF8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  OUTLINED_FUNCTION_10(v3, a2);
  sub_1C8D267AC();
  return sub_1C9062E8C();
}

uint64_t sub_1C8D26B70()
{
  v0 = sub_1C9062E6C();
  v1 = OUTLINED_FUNCTION_11(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA62480 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_1EDA6E630);
  (*(v3 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v0);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  result = (*(v3 + 32))(v9 + v8, v6, v0);
  qword_1EC390770 = sub_1C8D27EB4;
  *algn_1EC390778 = v9;
  return result;
}

uint64_t sub_1C8D26CC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313380, &qword_1C906B530);
  __swift_allocate_value_buffer(v6, qword_1EC390780);
  OUTLINED_FUNCTION_10(v6, qword_1EC390780);
  sub_1C90623FC();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  sub_1C8D26570();
  sub_1C8D24D68();
  sub_1C906254C();
  return sub_1C8D27F8C(v5, &qword_1EC3131F8, &qword_1C90A6B60);
}

uint64_t sub_1C8D26DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313388, &qword_1C906B538);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21[-1] - v14;
  v16 = sub_1C90623FC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v16);
  sub_1C8D26570();
  sub_1C8D27F38();
  sub_1C90624EC();
  sub_1C8D27F8C(v10, &qword_1EC3131F8, &qword_1C90A6B60);
  v17 = sub_1C9062E6C();
  v22[3] = v17;
  v22[4] = MEMORY[0x1E69A0050];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, a3, v17);
  v21[3] = MEMORY[0x1E69E6158];
  v21[4] = MEMORY[0x1E69A0130];
  v21[0] = a1;
  v21[1] = a2;
  v23[3] = sub_1C90627EC();
  v23[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v23);

  sub_1C9062D6C();
  sub_1C8D27F8C(v21, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_1C8D28184(&qword_1EC313398, &qword_1EC313388, &qword_1C906B538);
  sub_1C906292C();
  (*(v12 + 8))(v15, v11);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

void sub_1C8D2709C()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_27(v0);
  v1 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_38();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133D0, &qword_1C906B560);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28();
  v9 = sub_1C90623FC();
  OUTLINED_FUNCTION_47_2(v9);
  sub_1C8D24D68();
  sub_1C8D28130();
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_30_3();
  v10 = sub_1C9062E6C();
  OUTLINED_FUNCTION_46_3(v10, MEMORY[0x1E69A0050]);
  OUTLINED_FUNCTION_13_6();
  v12 = *(v11 + 16);
  OUTLINED_FUNCTION_39_4();
  v13();
  v14 = OUTLINED_FUNCTION_61(MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_45_1(v14, MEMORY[0x1E699FE60]);
  OUTLINED_FUNCTION_60_1();

  OUTLINED_FUNCTION_31_4();
  sub_1C8D27F8C(&v18, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(&v19);
  OUTLINED_FUNCTION_0_14();
  sub_1C8D28184(v15, &qword_1EC3133D0, &qword_1C906B560);
  OUTLINED_FUNCTION_44_2();
  v16 = OUTLINED_FUNCTION_14_8();
  v17(v16);
  __swift_destroy_boxed_opaque_existential_1(&v20);
  OUTLINED_FUNCTION_163();
}

void sub_1C8D2726C()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_27(v0);
  v1 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_38();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133C8, &unk_1C909F250);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28();
  v9 = sub_1C90623FC();
  OUTLINED_FUNCTION_47_2(v9);
  sub_1C8D24BA0();
  sub_1C8D280DC();
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_30_3();
  v10 = sub_1C9062E6C();
  OUTLINED_FUNCTION_46_3(v10, MEMORY[0x1E69A0050]);
  OUTLINED_FUNCTION_13_6();
  v12 = *(v11 + 16);
  OUTLINED_FUNCTION_39_4();
  v13();
  v14 = OUTLINED_FUNCTION_61(MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_45_1(v14, MEMORY[0x1E699FE60]);
  OUTLINED_FUNCTION_60_1();

  OUTLINED_FUNCTION_31_4();
  sub_1C8D27F8C(&v18, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(&v19);
  OUTLINED_FUNCTION_0_14();
  sub_1C8D28184(v15, &qword_1EC3133C8, &unk_1C909F250);
  OUTLINED_FUNCTION_44_2();
  v16 = OUTLINED_FUNCTION_14_8();
  v17(v16);
  __swift_destroy_boxed_opaque_existential_1(&v20);
  OUTLINED_FUNCTION_163();
}

void sub_1C8D2743C()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_27(v0);
  v1 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_38();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133A0, &unk_1C90C58F0);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28();
  v9 = sub_1C90623FC();
  OUTLINED_FUNCTION_47_2(v9);
  sub_1C8D27FE0();
  sub_1C8D28034();
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_30_3();
  v10 = sub_1C9062E6C();
  OUTLINED_FUNCTION_46_3(v10, MEMORY[0x1E69A0050]);
  OUTLINED_FUNCTION_13_6();
  v12 = *(v11 + 16);
  OUTLINED_FUNCTION_39_4();
  v13();
  v14 = OUTLINED_FUNCTION_61(MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_45_1(v14, MEMORY[0x1E699FE60]);
  OUTLINED_FUNCTION_60_1();

  OUTLINED_FUNCTION_31_4();
  sub_1C8D27F8C(&v18, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(&v19);
  OUTLINED_FUNCTION_0_14();
  sub_1C8D28184(v15, &qword_1EC3133A0, &unk_1C90C58F0);
  OUTLINED_FUNCTION_44_2();
  v16 = OUTLINED_FUNCTION_14_8();
  v17(v16);
  __swift_destroy_boxed_opaque_existential_1(&v20);
  OUTLINED_FUNCTION_163();
}

void sub_1C8D2760C()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_27(v0);
  v1 = OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_38();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133C0, &unk_1C906B550);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28();
  v9 = sub_1C90623FC();
  OUTLINED_FUNCTION_47_2(v9);
  sub_1C8D24B4C();
  sub_1C8D28088();
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_30_3();
  v10 = sub_1C9062E6C();
  OUTLINED_FUNCTION_46_3(v10, MEMORY[0x1E69A0050]);
  OUTLINED_FUNCTION_13_6();
  v12 = *(v11 + 16);
  OUTLINED_FUNCTION_39_4();
  v13();
  v14 = OUTLINED_FUNCTION_61(MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_45_1(v14, MEMORY[0x1E699FE60]);
  OUTLINED_FUNCTION_60_1();

  OUTLINED_FUNCTION_31_4();
  sub_1C8D27F8C(&v18, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(&v19);
  OUTLINED_FUNCTION_0_14();
  sub_1C8D28184(v15, &qword_1EC3133C0, &unk_1C906B550);
  OUTLINED_FUNCTION_44_2();
  v16 = OUTLINED_FUNCTION_14_8();
  v17(v16);
  __swift_destroy_boxed_opaque_existential_1(&v20);
  OUTLINED_FUNCTION_163();
}

void sub_1C8D277DC()
{
  OUTLINED_FUNCTION_196();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313340, &qword_1C9087E00);
  OUTLINED_FUNCTION_9(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C9062B6C();
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  sub_1C9062DDC();
  if (v13)
  {
    sub_1C9062EAC();
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);

    sub_1C9062B5C();
    sub_1C9062A8C();
    sub_1C8D27BE0();
    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_33_3();
    sub_1C9062A7C();
    (*(v7 + 8))(v12, v4);
    swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
    OUTLINED_FUNCTION_23_0();
    sub_1C8D28184(v18, &qword_1EC3131C0, &unk_1C906B4E0);
    sub_1C9062CDC();
  }

  OUTLINED_FUNCTION_198();
}

void sub_1C8D27A0C()
{
  OUTLINED_FUNCTION_196();
  v23 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313340, &qword_1C9087E00);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C9062B6C();
  v10 = OUTLINED_FUNCTION_11(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  sub_1C9062DDC();
  if (v18)
  {
    sub_1C9062EAC();
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);

    sub_1C9062B5C();
    sub_1C9062A8C();
    sub_1C8D27BE0();
    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_33_3();
    sub_1C9062A7C();
    (*(v12 + 8))(v17, v9);
    swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
    OUTLINED_FUNCTION_11_5();
    sub_1C8D28184(v23, v4, v2);
    sub_1C9062CDC();
  }

  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8D27BE0()
{
  result = qword_1EC313348;
  if (!qword_1EC313348)
  {
    sub_1C9062A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313348);
  }

  return result;
}

void sub_1C8D27CC8()
{
  OUTLINED_FUNCTION_196();
  v23 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313340, &qword_1C9087E00);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28();
  v9 = sub_1C9062B6C();
  v10 = OUTLINED_FUNCTION_11(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  sub_1C9062DDC();
  if (v18)
  {
    sub_1C9062EAC();
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);

    sub_1C9062B5C();
    sub_1C9062A8C();
    sub_1C8D27BE0();
    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_33_3();
    sub_1C9062A7C();
    (*(v12 + 8))(v17, v9);
    swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
    OUTLINED_FUNCTION_23_0();
    sub_1C8D28184(v23, v4, v2);
    sub_1C9062CDC();
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D27EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1C9062E6C();
  OUTLINED_FUNCTION_9(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_1C8D26DE0(a1, a2, v9, a3);
}

unint64_t sub_1C8D27F38()
{
  result = qword_1EC313390;
  if (!qword_1EC313390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313390);
  }

  return result;
}

uint64_t sub_1C8D27F8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_38_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_1C8D27FE0()
{
  result = qword_1EC3133A8;
  if (!qword_1EC3133A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3133A8);
  }

  return result;
}

unint64_t sub_1C8D28034()
{
  result = qword_1EC3133B0;
  if (!qword_1EC3133B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3133B0);
  }

  return result;
}

unint64_t sub_1C8D28088()
{
  result = qword_1EDA62460;
  if (!qword_1EDA62460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62460);
  }

  return result;
}

unint64_t sub_1C8D280DC()
{
  result = qword_1EDA69488;
  if (!qword_1EDA69488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69488);
  }

  return result;
}

unint64_t sub_1C8D28130()
{
  result = qword_1EC3133D8;
  if (!qword_1EC3133D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3133D8);
  }

  return result;
}

uint64_t sub_1C8D28184(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

_BYTE *storeEnumTagSinglePayload for TriggerParameterRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8D282AC()
{
  result = qword_1EC3133E8;
  if (!qword_1EC3133E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3133E8);
  }

  return result;
}

unint64_t sub_1C8D28304()
{
  result = qword_1EC3133F0;
  if (!qword_1EC3133F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3133F0);
  }

  return result;
}

unint64_t sub_1C8D2835C()
{
  result = qword_1EC3133F8;
  if (!qword_1EC3133F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3133F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_4()
{

  return swift_once();
}

uint64_t Query.init(protobuf:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313400, &qword_1C906B680);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v32 - v7;
  v9 = type metadata accessor for AnyPredicate(0);
  OUTLINED_FUNCTION_10_0(v9);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ToolKitProtoQuery(0);
  sub_1C8D28704(&a1[*(v15 + 20)], v8);
  sub_1C8D28AB4(&qword_1EC313408, type metadata accessor for AnyPredicate);
  sub_1C906351C();
  if (v2)
  {
    OUTLINED_FUNCTION_0_15();
    v17 = a1;
    return sub_1C8D2883C(v17, v16);
  }

  sub_1C8D28774(v14, a2);
  if (!*a1)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313410, &qword_1C906B688);
    sub_1C8D287D8();
    swift_allocError();
    *v21 = MEMORY[0x1E6969CB8];
    v22 = *MEMORY[0x1E69E08A8];
    OUTLINED_FUNCTION_10_0(v20);
    (*(v23 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_0_15();
    sub_1C8D2883C(a1, v24);
    v16 = type metadata accessor for AnyPredicate;
    v17 = a2;
    return sub_1C8D2883C(v17, v16);
  }

  v19 = *a1 != 1;
  v25 = type metadata accessor for Query();
  *(a2 + *(v25 + 20)) = v19;
  v26 = &a1[*(v15 + 24)];
  v27 = *v26;
  v28 = v26[8];
  OUTLINED_FUNCTION_0_15();
  result = sub_1C8D2883C(a1, v29);
  if (v28)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  v31 = a2 + *(v25 + 24);
  *v31 = v30;
  *(v31 + 8) = v28;
  return result;
}

uint64_t SortOrder.init(protobuf:)(_BYTE *a1)
{
  if (*a1)
  {
    return *a1 != 1;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313410, &qword_1C906B688);
  sub_1C8D287D8();
  swift_allocError();
  *v3 = MEMORY[0x1E6969CB8];
  v4 = *MEMORY[0x1E69E08A8];
  OUTLINED_FUNCTION_10_0(v2);
  (*(v5 + 104))();
  return swift_willThrow();
}

uint64_t sub_1C8D28704(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313400, &qword_1C906B680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D28774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyPredicate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8D287D8()
{
  result = qword_1EC313418;
  if (!qword_1EC313418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313410, &qword_1C906B688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313418);
  }

  return result;
}

uint64_t sub_1C8D2883C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_10_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void Query.protobuf(useCase:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313400, &qword_1C906B680);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v22 - v8;
  AnyPredicate.protobuf(useCase:)(a1, v22 - v8);
  if (!v3)
  {
    v10 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    v11 = type metadata accessor for Query();
    v12 = *(v11 + 24);
    if (*(v2 + *(v11 + 20)))
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v14 = v2 + v12;
    v15 = *(v2 + v12);
    v16 = *(v14 + 8);
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15;
    }

    v18 = type metadata accessor for ToolKitProtoQuery(0);
    v19 = v18[5];
    __swift_storeEnumTagSinglePayload(&a2[v19], 1, 1, v10);
    v20 = v18[7];
    v21 = &a2[v18[6]];
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    sub_1C8D289FC(v9, &a2[v19]);
    *a2 = v13;
    *v21 = v17;
    v21[8] = v16;
  }
}

void SortOrder.protobuf(useCase:)(char a1@<W1>, char *a2@<X8>)
{
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a2 = v2;
}

uint64_t sub_1C8D289FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313400, &qword_1C906B680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D28AB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C8D28B30()
{
  result = qword_1EC313428;
  if (!qword_1EC313428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313428);
  }

  return result;
}

uint64_t sub_1C8D28B84@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SortOrder.init(protobuf:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1C8D28BE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1C8D28C20(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C8D28C80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x46636972656D756ELL && a2 == 0xED000074616D726FLL;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9064C2C();

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

uint64_t sub_1C8D28E30(char a1)
{
  result = 0x644965707974;
  switch(a1)
  {
    case 1:
      result = 0x656C61636F6CLL;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x46636972656D756ELL;
      break;
    case 4:
      result = 0x736D796E6F6E7973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D28EC4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313480, &unk_1C906B9B0);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v23[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D29D94();
  sub_1C9064E1C();
  v14 = *v3;
  v15 = v3[1];
  v28 = 0;
  OUTLINED_FUNCTION_3_12();
  sub_1C9064B2C();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v27 = 1;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064B2C();
    v18 = v3[4];
    v19 = v3[5];
    v26 = 2;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064B2C();
    v20 = v3[6];
    v21 = v3[7];
    v25 = 3;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064ADC();
    v24 = v3[8];
    v23[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313358, &qword_1C906B508);
    sub_1C8D29E50(&qword_1EC313488);
    sub_1C9064B8C();
  }

  return (*(v8 + 8))(v12, v5);
}

void *sub_1C8D290BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313468, &unk_1C906B9A0);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D29D94();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_2_8();
  v10 = sub_1C9064A0C();
  v26 = v11;
  OUTLINED_FUNCTION_2_8();
  v12 = sub_1C9064A0C();
  v25 = v13;
  v22 = v12;
  OUTLINED_FUNCTION_2_8();
  v21 = sub_1C9064A0C();
  v24 = v14;
  LOBYTE(v28[0]) = 3;
  OUTLINED_FUNCTION_2_8();
  v20 = sub_1C90649AC();
  v23 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313358, &qword_1C906B508);
  v29 = 4;
  sub_1C8D29E50(&qword_1EC313478);
  sub_1C9064A6C();
  v16 = OUTLINED_FUNCTION_0_4();
  v17(v16);
  v19 = v30;
  __src[0] = v10;
  __src[1] = v26;
  __src[2] = v22;
  __src[3] = v25;
  __src[4] = v21;
  __src[5] = v24;
  __src[6] = v20;
  __src[7] = v23;
  __src[8] = v30;
  sub_1C8D29DE8(__src, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v28[0] = v10;
  v28[1] = v26;
  v28[2] = v22;
  v28[3] = v25;
  v28[4] = v21;
  v28[5] = v24;
  v28[6] = v20;
  v28[7] = v23;
  v28[8] = v19;
  sub_1C8D29E20(v28);
  return memcpy(a2, __src, 0x48uLL);
}

uint64_t sub_1C8D29468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D28C80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D29490@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8D28E28();
  *a1 = result;
  return result;
}

uint64_t sub_1C8D294B8(uint64_t a1)
{
  v2 = sub_1C8D29D94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D294F4(uint64_t a1)
{
  v2 = sub_1C8D29D94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C8D29530@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C8D290BC(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x48uLL);
  }

  return result;
}

uint64_t sub_1C8D295D4@<X0>(void *a1@<X8>)
{
  if (qword_1EC311200 != -1)
  {
    OUTLINED_FUNCTION_8_7();
  }

  v2 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v2, qword_1EC390798);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v4 = v3;
  v6 = v5;

  if (qword_1EC311208 != -1)
  {
    OUTLINED_FUNCTION_7_5();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC3907B0);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v20 = v8;
  v21 = v7;
  v22 = v6;

  if (qword_1EC311210 != -1)
  {
    OUTLINED_FUNCTION_6_6();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC3907C8);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v10 = v9;
  v19 = v11;
  v12 = v4;

  if (qword_1EC311218 != -1)
  {
    OUTLINED_FUNCTION_5_10();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC3907E0);
  sub_1C9062E5C();
  v13 = sub_1C8E293EC();
  v15 = v14;

  if (qword_1EC311220 != -1)
  {
    OUTLINED_FUNCTION_4_7();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC3907F8);
  sub_1C9062E5C();
  sub_1C8D27C38();
  v17 = v16;

  *a1 = v12;
  a1[1] = v22;
  a1[2] = v21;
  a1[3] = v20;
  a1[4] = v10;
  a1[5] = v19;
  a1[6] = v13;
  a1[7] = v15;
  a1[8] = v17;
  return result;
}

uint64_t sub_1C8D2982C()
{
  sub_1C8D29C94();

  return sub_1C9062B4C();
}

uint64_t sub_1C8D29924()
{
  if (qword_1EC311200 != -1)
  {
    OUTLINED_FUNCTION_8_7();
  }

  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v1, qword_1EC390798);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v3 = *v0;
  v2 = v0[1];
  v4 = MEMORY[0x1E69E6158];
  v5 = MEMORY[0x1E69A0138];
  v19 = MEMORY[0x1E69E6158];
  v20 = MEMORY[0x1E69A0138];
  v16 = v3;
  v17 = v2;

  OUTLINED_FUNCTION_1_0();
  if (qword_1EC311208 != -1)
  {
    OUTLINED_FUNCTION_7_5();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC3907B0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v7 = v0[2];
  v6 = v0[3];
  v19 = v4;
  v20 = v5;
  v16 = v7;
  v17 = v6;

  OUTLINED_FUNCTION_1_0();
  if (qword_1EC311210 != -1)
  {
    OUTLINED_FUNCTION_6_6();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC3907C8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v9 = v0[4];
  v8 = v0[5];
  v19 = v4;
  v20 = v5;
  v16 = v9;
  v17 = v8;

  OUTLINED_FUNCTION_1_0();
  if (qword_1EC311218 != -1)
  {
    OUTLINED_FUNCTION_5_10();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC3907E0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v21 = *(v0 + 3);
  if (*(&v21 + 1))
  {
    v10 = MEMORY[0x1E69A0138];
    v11 = MEMORY[0x1E69E6158];
    v12 = v21;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v18 = 0;
  }

  v16 = v12;
  v17 = *(&v21 + 1);
  v19 = v11;
  v20 = v10;
  sub_1C8D29F88(&v21, v15);
  OUTLINED_FUNCTION_1_0();
  if (qword_1EC311220 != -1)
  {
    OUTLINED_FUNCTION_4_7();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC3907F8);
  sub_1C9062E5C();
  v13 = v0[8];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313358, &qword_1C906B508);
  v20 = sub_1C8D29FF8();
  v16 = v13;

  return sub_1C9062BFC();
}

uint64_t sub_1C8D29B6C()
{
  v0 = qword_1EC313430;

  return v0;
}

unint64_t sub_1C8D29BA8()
{
  result = qword_1EC313440;
  if (!qword_1EC313440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313440);
  }

  return result;
}

unint64_t sub_1C8D29C00(void *a1)
{
  a1[1] = sub_1C8D29C40();
  a1[2] = sub_1C8D29C94();
  a1[3] = sub_1C8D16868();
  result = sub_1C8D29CE8();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8D29C40()
{
  result = qword_1EC313448;
  if (!qword_1EC313448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313448);
  }

  return result;
}

unint64_t sub_1C8D29C94()
{
  result = qword_1EC313450;
  if (!qword_1EC313450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313450);
  }

  return result;
}

unint64_t sub_1C8D29CE8()
{
  result = qword_1EC313458;
  if (!qword_1EC313458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313458);
  }

  return result;
}

unint64_t sub_1C8D29D40()
{
  result = qword_1EC313460;
  if (!qword_1EC313460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313460);
  }

  return result;
}

unint64_t sub_1C8D29D94()
{
  result = qword_1EC313470;
  if (!qword_1EC313470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313470);
  }

  return result;
}

uint64_t sub_1C8D29E50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313358, &qword_1C906B508);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8D29F10(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  OUTLINED_FUNCTION_10(v3, a2);
  sub_1C8D29D94();
  return sub_1C9062E8C();
}

uint64_t sub_1C8D29F88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312580, &qword_1C9073EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8D29FF8()
{
  result = qword_1EC313360;
  if (!qword_1EC313360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313358, &qword_1C906B508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313360);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TypeDisplayRepresentationRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8D2A13C()
{
  result = qword_1EC313490;
  if (!qword_1EC313490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313490);
  }

  return result;
}

unint64_t sub_1C8D2A194()
{
  result = qword_1EC313498;
  if (!qword_1EC313498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313498);
  }

  return result;
}

unint64_t sub_1C8D2A1EC()
{
  result = qword_1EC3134A0;
  if (!qword_1EC3134A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3134A0);
  }

  return result;
}

uint64_t sub_1C8D2A240@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if (*(result + 16))
  {
    v3 = *(result + 32);
  }

  else
  {
    v3 = 0xF000000000000007;
  }

  *a2 = v3;
  return result;
}

void sub_1C8D2A280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v3 = v30;
    v6 = sub_1C8D39D38(v2);
    v7 = 0;
    v28 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        v8 = v6 >> 6;
        if ((*(v28 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v2 + 36) != v4)
        {
          goto LABEL_26;
        }

        v27 = v5;
        v25 = v7;
        v26 = v4;
        v29 = *(*(v2 + 48) + 8 * v6);
        v9 = TypeInstance.debugDescription.getter();
        v11 = v10;
        v12 = *(v3 + 16);
        if (v12 >= *(v3 + 24) >> 1)
        {
          sub_1C8CA6480();
        }

        *(v3 + 16) = v12 + 1;
        v13 = v3 + 16 * v12;
        *(v13 + 32) = v9;
        *(v13 + 40) = v11;
        if (v27)
        {
          goto LABEL_30;
        }

        v2 = v24;
        v14 = 1 << *(v24 + 32);
        if (v6 >= v14)
        {
          goto LABEL_27;
        }

        v15 = *(v28 + 8 * v8);
        if ((v15 & (1 << v6)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v24 + 36) != v26)
        {
          goto LABEL_29;
        }

        v16 = v15 & (-2 << (v6 & 0x3F));
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = v3;
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v14 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1C8CAF698(v6, v26, 0);
              v14 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1C8CAF698(v6, v26, 0);
LABEL_19:
          v3 = v17;
        }

        v7 = v25 + 1;
        if (v25 + 1 == v1)
        {
          return;
        }

        v5 = 0;
        v4 = *(v24 + 36);
        v6 = v14;
        if (v14 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

void sub_1C8D2A4D8()
{
  OUTLINED_FUNCTION_184_0();
  if (v0 != v1 && (v2 = v1, v3 = v0, OUTLINED_FUNCTION_126(v0, v1), v4))
  {
    v5 = 0;
    v6 = 1 << *(v3 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v3 + 56);
    v9 = (v6 + 63) >> 6;
    if (v8)
    {
      while (2)
      {
        OUTLINED_FUNCTION_173_0();
LABEL_14:
        v21 = *(*(v3 + 48) + 8 * (v10 | (v5 << 6)));
        v14 = *(v2 + 40);
        sub_1C9064D7C();

        TypedValue.hash(into:)();
        v15 = sub_1C9064DBC();
        v16 = ~(-1 << *(v2 + 32));
        do
        {
          v17 = v15 & v16;
          if (((*(v2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
          {

            goto LABEL_21;
          }

          v20 = *(*(v2 + 48) + 8 * v17);

          static TypedValue.== infix(_:_:)();
          v19 = v18;

          v15 = v17 + 1;
        }

        while ((v19 & 1) == 0);

        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_21;
      }

      ++v11;
      if (*(v3 + 56 + 8 * v5))
      {
        OUTLINED_FUNCTION_10_6();
        v8 = v13 & v12;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    OUTLINED_FUNCTION_182();
  }
}

uint64_t sub_1C8D2A650(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = OUTLINED_FUNCTION_126(a1, a2);
  if (!v22)
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v24 = result;
  if (v8)
  {
    while (2)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_14:
      v14 = (*(result + 48) + 16 * (v10 | (v4 << 6)));
      v16 = *v14;
      v15 = v14[1];
      v17 = *(a2 + 40);
      sub_1C9064D7C();

      sub_1C9063FBC();
      v18 = sub_1C9064DBC();
      v19 = ~(-1 << *(a2 + 32));
      do
      {
        v20 = v18 & v19;
        if (((*(a2 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {

          return 0;
        }

        v21 = (*(a2 + 48) + 16 * v20);
        v22 = *v21 == v16 && v21[1] == v15;
        if (v22)
        {
          break;
        }

        v23 = sub_1C9064C2C();
        v18 = v20 + 1;
      }

      while ((v23 & 1) == 0);

      result = v24;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    ++v11;
    if (*(v5 + 8 * v4))
    {
      OUTLINED_FUNCTION_10_6();
      v8 = v13 & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_1C8D2A7E8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    v3 = OUTLINED_FUNCTION_126(a1, a2);
    if (v33)
    {
      v4 = 0;
      v136 = v3 + 56;
      v5 = 1 << *(v3 + 32);
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & *(v3 + 56);
      v8 = (v5 + 63) >> 6;
      v9 = v2 + 56;
      v143 = v2 + 56;
      v144 = v2;
      v137 = v8;
      v138 = v3;
LABEL_8:
      while (v7)
      {
        v10 = __clz(__rbit64(v7));
        v11 = (v7 - 1) & v7;
LABEL_15:
        v15 = *(v3 + 48) + 16 * (v10 | (v4 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v2 + 40);
        sub_1C9064D7C();
        v145 = v17 >> 5;
        v139 = v11;
        v140 = v4;
        switch(v17 >> 5)
        {
          case 1u:
            v19 = 3;
            goto LABEL_23;
          case 2u:
            v20 = 4;
            goto LABEL_20;
          case 3u:
            v20 = 5;
LABEL_20:
            MEMORY[0x1CCA82810](v20);
            v21 = OUTLINED_FUNCTION_334();
            sub_1C8D07154(v21, v22);
            sub_1C8D3977C(__src, v16);
            sub_1C9064D9C();
            goto LABEL_24;
          case 4u:
            v19 = 6;
            goto LABEL_23;
          case 5u:
            v19 = 7;
            goto LABEL_23;
          case 6u:
            MEMORY[0x1CCA82810]((v16 | v17 ^ 0xC0) != 0);
            goto LABEL_24;
          default:
            v19 = 2;
LABEL_23:
            MEMORY[0x1CCA82810](v19);
            v23 = OUTLINED_FUNCTION_334();
            sub_1C8D07154(v23, v24);
            sub_1C8D3977C(__src, v16);
LABEL_24:
            v25 = sub_1C9064DBC();
            v26 = -1 << *(v2 + 32);
            v27 = v25 & ~v26;
            v28 = v17 >> 5;
            if (((*(v9 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_157;
            }

            v29 = ~v26;
            v30 = (v17 >> 5);
            v31 = v17 != 192 || v16 != 1;
            v32 = v17 != 192 || v16 != 0;
            v33 = v30 == 6;
            v146 = v17;
            v147 = v16 + 56;
            v34 = v30 != 6 || v31;
            v35 = !v33 || v32;
            v141 = __PAIR64__(v34, v35);
            v142 = v29;
            break;
        }

        while (2)
        {
          v36 = *(v2 + 48) + 16 * v27;
          v37 = *v36;
          v38 = *(v36 + 8);
          switch(v38 >> 5)
          {
            case 1u:
              if (v28 != 1)
              {
                goto LABEL_143;
              }

              if (v37 == v16)
              {
                goto LABEL_151;
              }

              OUTLINED_FUNCTION_22_6();
              if (!v33)
              {
                goto LABEL_143;
              }

              OUTLINED_FUNCTION_0_16();
              if (v28)
              {
                goto LABEL_97;
              }

              while (1)
              {
                v82 = v9;
                do
                {
                  v9 = v82 + 1;
                  if (__OFADD__(v82, 1))
                  {
                    goto LABEL_161;
                  }

                  if (v9 >= v2)
                  {
                    goto LABEL_149;
                  }

                  OUTLINED_FUNCTION_97_0();
                }

                while (!v83);
                OUTLINED_FUNCTION_5_11();
                while (1)
                {
                  OUTLINED_FUNCTION_8_8(v81);

                  OUTLINED_FUNCTION_151_0();
                  sub_1C9064DBC();
                  OUTLINED_FUNCTION_21_6();
                  do
                  {
                    OUTLINED_FUNCTION_2_9(v84, v85, v86, v87, v88, v89, v90, v91, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
                    if ((v92 & 1) == 0)
                    {
                      goto LABEL_147;
                    }

                    OUTLINED_FUNCTION_27_3();
                    OUTLINED_FUNCTION_152_0();
                    OUTLINED_FUNCTION_67_2();
                    v84 = 0;
                  }

                  while ((__src & 1) == 0);
                  OUTLINED_FUNCTION_144_0();
                  OUTLINED_FUNCTION_23_5();
                  if (!__src)
                  {
                    break;
                  }

LABEL_97:
                  OUTLINED_FUNCTION_4_8();
                }
              }

            case 2u:
              if (v28 != 2)
              {
                goto LABEL_143;
              }

              if (v37 == v16)
              {
                goto LABEL_89;
              }

              OUTLINED_FUNCTION_22_6();
              if (!v33)
              {
                goto LABEL_143;
              }

              OUTLINED_FUNCTION_0_16();
              if (v28)
              {
                goto LABEL_76;
              }

LABEL_77:
              v64 = v9;
              while (2)
              {
                v9 = v64 + 1;
                if (__OFADD__(v64, 1))
                {
                  goto LABEL_164;
                }

                if (v9 < v2)
                {
                  OUTLINED_FUNCTION_97_0();
                  if (v65)
                  {
                    OUTLINED_FUNCTION_5_11();
                    while (1)
                    {
                      OUTLINED_FUNCTION_8_8(v63);

                      OUTLINED_FUNCTION_151_0();
                      sub_1C9064DBC();
                      OUTLINED_FUNCTION_21_6();
                      do
                      {
                        OUTLINED_FUNCTION_2_9(v66, v67, v68, v69, v70, v71, v72, v73, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
                        if ((v74 & 1) == 0)
                        {
                          goto LABEL_147;
                        }

                        OUTLINED_FUNCTION_27_3();
                        OUTLINED_FUNCTION_152_0();
                        OUTLINED_FUNCTION_67_2();
                        v66 = 0;
                      }

                      while ((__src & 1) == 0);
                      OUTLINED_FUNCTION_144_0();
                      OUTLINED_FUNCTION_23_5();
                      if (!__src)
                      {
                        goto LABEL_77;
                      }

LABEL_76:
                      OUTLINED_FUNCTION_4_8();
                    }
                  }

                  continue;
                }

                goto LABEL_148;
              }

            case 3u:
              if (v28 != 3)
              {
                goto LABEL_143;
              }

              if (v37 == v16)
              {
LABEL_89:
                v75 = OUTLINED_FUNCTION_334();
                sub_1C8D07154(v75, v76);
                sub_1C8D07154(v16, v38);
              }

              else
              {
                OUTLINED_FUNCTION_22_6();
                if (!v33)
                {
LABEL_143:
                  v119 = OUTLINED_FUNCTION_334();
                  sub_1C8D07154(v119, v120);
                  v105 = OUTLINED_FUNCTION_114();
                  goto LABEL_144;
                }

                OUTLINED_FUNCTION_0_16();
                if (v28)
                {
LABEL_132:
                  OUTLINED_FUNCTION_4_8();
                  goto LABEL_138;
                }

LABEL_133:
                v108 = v9;
                while (1)
                {
                  v9 = v108 + 1;
                  if (__OFADD__(v108, 1))
                  {
                    goto LABEL_163;
                  }

                  if (v9 >= v2)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_97_0();
                  if (v109)
                  {
                    OUTLINED_FUNCTION_5_11();
LABEL_138:
                    OUTLINED_FUNCTION_8_8(v107);

                    OUTLINED_FUNCTION_151_0();
                    sub_1C9064DBC();
                    OUTLINED_FUNCTION_21_6();
                    do
                    {
                      OUTLINED_FUNCTION_2_9(v110, v111, v112, v113, v114, v115, v116, v117, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
                      if ((v118 & 1) == 0)
                      {
                        goto LABEL_147;
                      }

                      OUTLINED_FUNCTION_27_3();
                      OUTLINED_FUNCTION_152_0();
                      OUTLINED_FUNCTION_67_2();
                      v110 = 0;
                    }

                    while ((__src & 1) == 0);
                    OUTLINED_FUNCTION_144_0();
                    OUTLINED_FUNCTION_23_5();
                    if (__src)
                    {
                      goto LABEL_132;
                    }

                    goto LABEL_133;
                  }
                }

LABEL_148:
                v125 = OUTLINED_FUNCTION_114();
                sub_1C8D07168(v125, v126);
                v9 = v143;
                v2 = v144;
                v28 = v145;
                v29 = v142;
              }

              v77 = OUTLINED_FUNCTION_114();
              sub_1C8D07168(v77, v78);
              v79 = OUTLINED_FUNCTION_334();
              sub_1C8D07168(v79, v80);
              if ((v38 ^ v17))
              {
                goto LABEL_145;
              }

LABEL_152:
              v133 = v16;
              v132 = v17;
              break;
            case 4u:
              if (v28 != 4)
              {
                goto LABEL_143;
              }

              if (v37 == v16)
              {
                goto LABEL_151;
              }

              OUTLINED_FUNCTION_22_6();
              if (!v33)
              {
                goto LABEL_143;
              }

              OUTLINED_FUNCTION_0_16();
              if (v28)
              {
                goto LABEL_60;
              }

LABEL_61:
              v52 = v9;
              while (2)
              {
                v9 = v52 + 1;
                if (__OFADD__(v52, 1))
                {
                  goto LABEL_160;
                }

                if (v9 < v2)
                {
                  OUTLINED_FUNCTION_97_0();
                  if (v53)
                  {
                    OUTLINED_FUNCTION_5_11();
                    while (1)
                    {
                      OUTLINED_FUNCTION_8_8(v51);

                      OUTLINED_FUNCTION_151_0();
                      sub_1C9064DBC();
                      OUTLINED_FUNCTION_21_6();
                      do
                      {
                        OUTLINED_FUNCTION_2_9(v54, v55, v56, v57, v58, v59, v60, v61, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
                        if ((v62 & 1) == 0)
                        {
                          goto LABEL_147;
                        }

                        OUTLINED_FUNCTION_27_3();
                        OUTLINED_FUNCTION_152_0();
                        OUTLINED_FUNCTION_67_2();
                        v54 = 0;
                      }

                      while ((__src & 1) == 0);
                      OUTLINED_FUNCTION_144_0();
                      OUTLINED_FUNCTION_23_5();
                      if (!__src)
                      {
                        goto LABEL_61;
                      }

LABEL_60:
                      OUTLINED_FUNCTION_4_8();
                    }
                  }

                  continue;
                }

                goto LABEL_149;
              }

            case 5u:
              if (v28 != 5)
              {
                goto LABEL_143;
              }

              if (v37 == v16)
              {
                goto LABEL_151;
              }

              OUTLINED_FUNCTION_22_6();
              if (!v33)
              {
                goto LABEL_143;
              }

              OUTLINED_FUNCTION_0_16();
              if (v28)
              {
                goto LABEL_113;
              }

LABEL_114:
              v94 = v9;
              while (2)
              {
                v9 = v94 + 1;
                if (__OFADD__(v94, 1))
                {
                  goto LABEL_159;
                }

                if (v9 < v2)
                {
                  OUTLINED_FUNCTION_97_0();
                  if (v95)
                  {
                    OUTLINED_FUNCTION_5_11();
                    while (1)
                    {
                      OUTLINED_FUNCTION_8_8(v93);

                      OUTLINED_FUNCTION_151_0();
                      sub_1C9064DBC();
                      OUTLINED_FUNCTION_21_6();
                      do
                      {
                        OUTLINED_FUNCTION_2_9(v96, v97, v98, v99, v100, v101, v102, v103, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
                        if ((v104 & 1) == 0)
                        {
                          goto LABEL_147;
                        }

                        OUTLINED_FUNCTION_27_3();
                        OUTLINED_FUNCTION_152_0();
                        OUTLINED_FUNCTION_67_2();
                        v96 = 0;
                      }

                      while ((__src & 1) == 0);
                      OUTLINED_FUNCTION_144_0();
                      OUTLINED_FUNCTION_23_5();
                      if (!__src)
                      {
                        goto LABEL_114;
                      }

LABEL_113:
                      OUTLINED_FUNCTION_4_8();
                    }
                  }

                  continue;
                }

                goto LABEL_149;
              }

            case 6u:
              if (v37 | v38 ^ 0xC0)
              {
                if ((v141 & 0x100000000) != 0)
                {
LABEL_128:
                  v105 = OUTLINED_FUNCTION_334();
LABEL_144:
                  sub_1C8D07154(v105, v106);
                  OUTLINED_FUNCTION_158_1();
                  v121 = OUTLINED_FUNCTION_334();
                  sub_1C8D07168(v121, v122);
                  goto LABEL_145;
                }

                OUTLINED_FUNCTION_158_1();
                v133 = 1;
              }

              else
              {
                if (v141)
                {
                  goto LABEL_128;
                }

                OUTLINED_FUNCTION_158_1();
                v133 = 0;
              }

              v132 = -64;
              break;
            default:
              if (v17 >= 0x20)
              {
                goto LABEL_143;
              }

              if (v37 == v16)
              {
LABEL_151:
                v131 = *v36;

                sub_1C8D07168(v16, v38);
                goto LABEL_152;
              }

              OUTLINED_FUNCTION_22_6();
              if (!v33)
              {
                goto LABEL_143;
              }

              OUTLINED_FUNCTION_0_16();
              if (v28)
              {
LABEL_44:
                OUTLINED_FUNCTION_4_8();
                goto LABEL_50;
              }

LABEL_45:
              v40 = v9;
              do
              {
                v9 = v40 + 1;
                if (__OFADD__(v40, 1))
                {
                  goto LABEL_162;
                }

                if (v9 >= v2)
                {
LABEL_149:
                  v127 = OUTLINED_FUNCTION_334();
                  sub_1C8D07168(v127, v128);
                  v129 = OUTLINED_FUNCTION_114();
                  sub_1C8D07168(v129, v130);
                  OUTLINED_FUNCTION_158_1();
                  sub_1C8D07168(v16, v17);
                  v9 = v143;
                  v2 = v144;
                  v8 = v137;
                  v3 = v138;
                  v7 = v139;
                  v4 = v140;
                  goto LABEL_8;
                }

                OUTLINED_FUNCTION_97_0();
              }

              while (!v41);
              OUTLINED_FUNCTION_5_11();
LABEL_50:
              OUTLINED_FUNCTION_8_8(v39);

              OUTLINED_FUNCTION_151_0();
              sub_1C9064DBC();
              OUTLINED_FUNCTION_21_6();
              while (2)
              {
                OUTLINED_FUNCTION_2_9(v42, v43, v44, v45, v46, v47, v48, v49, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
                if (v50)
                {
                  OUTLINED_FUNCTION_27_3();
                  OUTLINED_FUNCTION_152_0();
                  OUTLINED_FUNCTION_67_2();
                  v42 = 0;
                  if ((__src & 1) == 0)
                  {
                    continue;
                  }

                  OUTLINED_FUNCTION_144_0();
                  OUTLINED_FUNCTION_23_5();
                  if (__src)
                  {
                    goto LABEL_44;
                  }

                  goto LABEL_45;
                }

                break;
              }

LABEL_147:
              v123 = OUTLINED_FUNCTION_114();
              sub_1C8D07168(v123, v124);
              LODWORD(v17) = v146;
              sub_1C8D07168(v16, v146);
              OUTLINED_FUNCTION_158_1();
              OUTLINED_FUNCTION_144_0();
              v9 = v143;
              v2 = v144;
              v28 = v145;
              v29 = v142;
LABEL_145:
              v27 = (v27 + 1) & v29;
              if (((*(v9 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
              {
LABEL_157:
                sub_1C8D07168(v16, v17);
                return;
              }

              continue;
          }

          break;
        }

        sub_1C8D07168(v133, v132);
        v8 = v137;
        v3 = v138;
        v7 = v139;
        v4 = v140;
      }

      v12 = v4;
      while (1)
      {
        v4 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v4 >= v8)
        {
          return;
        }

        ++v12;
        if (*(v136 + 8 * v4))
        {
          OUTLINED_FUNCTION_10_6();
          v11 = v14 & v13;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
    }
  }
}

uint64_t sub_1C8D2AF4C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v17 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v18 = (v7 - 1) & v7;
LABEL_13:
      v20 = *(*(result + 48) + 8 * (v9 | (v3 << 6)));
      v12 = *(a2 + 40);
      v19[9] = v20;
      sub_1C9064D7C();

      TypeInstance.hash(into:)();
      v13 = sub_1C9064DBC();
      v14 = ~(-1 << *(a2 + 32));
      do
      {
        v15 = v13 & v14;
        if (((*(a2 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {

          return 0;
        }

        v19[0] = *(*(a2 + 48) + 8 * v15);

        v16 = static TypeInstance.== infix(_:_:)(v19, &v20);

        v13 = v15 + 1;
      }

      while ((v16 & 1) == 0);

      result = v17;
      v7 = v18;
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v18 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D2B0FC(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1C8D2B114(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_1C8D2B12C()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_223();
  v2 = sub_1C9063C4C();
  v3 = OUTLINED_FUNCTION_11(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_25();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v38 - v12;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v14;
  if (v1 == v0 || *(v1 + 16) != *(v0 + 16))
  {
LABEL_20:
    OUTLINED_FUNCTION_163();
  }

  else
  {
    v17 = 0;
    v18 = *(v1 + 56);
    v39 = v1 + 56;
    v19 = 1 << *(v1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v45 = v5 + 32;
    v47 = v0 + 56;
    v48 = v5 + 16;
    v23 = (v5 + 8);
    v40 = v22;
    v41 = &v38 - v14;
    v42 = v5;
    v43 = v1;
    if (v21)
    {
      while (2)
      {
        v24 = __clz(__rbit64(v21));
        v44 = (v21 - 1) & v21;
LABEL_13:
        v28 = *(v1 + 48);
        v46 = *(v5 + 72);
        v29 = *(v5 + 16);
        v29(v16, v28 + v46 * (v24 | (v17 << 6)), v2, v15);
        (*(v5 + 32))(v49, v16, v2);
        v30 = *(v0 + 40);
        OUTLINED_FUNCTION_48_1();
        sub_1C8D3EE90(&qword_1EDA66688);
        v31 = sub_1C9063E6C();
        v32 = v0;
        v33 = ~(-1 << *(v0 + 32));
        do
        {
          v34 = v31 & v33;
          if (((*(v47 + (((v31 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v33)) & 1) == 0)
          {
            (*v23)(v49, v2);
            goto LABEL_20;
          }

          (v29)(v10, *(v32 + 48) + v34 * v46, v2);
          OUTLINED_FUNCTION_48_1();
          sub_1C8D3EE90(&qword_1EDA62BA8);
          v35 = sub_1C9063EAC();
          v36 = *v23;
          v37 = OUTLINED_FUNCTION_278();
          (v36)(v37);
          v31 = v34 + 1;
        }

        while ((v35 & 1) == 0);
        v36(v49, v2);
        v0 = v32;
        v5 = v42;
        v1 = v43;
        v22 = v40;
        v16 = v41;
        v21 = v44;
        if (v44)
        {
          continue;
        }

        break;
      }
    }

    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v17 >= v22)
      {
        goto LABEL_20;
      }

      ++v25;
      if (*(v39 + 8 * v17))
      {
        OUTLINED_FUNCTION_10_6();
        v44 = v27 & v26;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C8D2B45C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x56746C7561666564 && a2 == 0xEC00000065756C61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8D2B520(char a1)
{
  if (a1)
  {
    return 0x56746C7561666564;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1C8D2B554(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_31_0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_420();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8D2B5F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 26223 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8D2B670(uint64_t a1)
{
  v2 = sub_1C8C9F5F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D2B6AC(uint64_t a1)
{
  v2 = sub_1C8C9F5F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D2B6E8(uint64_t a1)
{
  v2 = sub_1C8CA6D3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D2B724(uint64_t a1)
{
  v2 = sub_1C8CA6D3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D2B760(uint64_t a1)
{
  v2 = sub_1C8D37FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D2B79C(uint64_t a1)
{
  v2 = sub_1C8D37FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D2B7D8(uint64_t a1)
{
  v2 = sub_1C8D37F98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D2B814(uint64_t a1)
{
  v2 = sub_1C8D37F98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D2B858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2B45C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D2B880(uint64_t a1)
{
  v2 = sub_1C8D38158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D2B8BC(uint64_t a1)
{
  v2 = sub_1C8D38158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D2B8F8(uint64_t a1)
{
  v2 = sub_1C8CA5614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D2B934(uint64_t a1)
{
  v2 = sub_1C8CA5614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D2B970(uint64_t a1)
{
  v2 = sub_1C8C9F5A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D2B9AC(uint64_t a1)
{
  v2 = sub_1C8C9F5A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D2B9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2B5F4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8D2BA18(uint64_t a1)
{
  v2 = sub_1C8D38094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D2BA54(uint64_t a1)
{
  v2 = sub_1C8D38094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TypeInstance.hashValue.getter()
{
  v2 = *v0;
  OUTLINED_FUNCTION_191_2();
  TypeInstance.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D2BAE0()
{
  v2 = *v0;
  sub_1C9064D7C();
  TypeInstance.hash(into:)();
  return sub_1C9064DBC();
}

void TypeInstance.typeIdentifiers.getter()
{
  OUTLINED_FUNCTION_135_1();
  switch(v3)
  {
    case 1:
    case 2:
    case 5:
    case 6:
      OUTLINED_FUNCTION_169_0(v2);
      TypeInstance.typeIdentifiers.getter();
      return;
    case 3:
      v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *(v5 + 56);
      v7 = *(v5 + 32);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_186_0();
      i = 0;
      if (v1)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      v4 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312B98, &unk_1C9068F30);
      goto LABEL_12;
    default:
      v4 = *(v2 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312B98, &unk_1C9068F30);
LABEL_12:
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C906A950;
      *(inited + 32) = v4;

      sub_1C8D38200();
      return;
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v0)
    {

      OUTLINED_FUNCTION_88_0();
      sub_1C8CAF750(v12, v13, v14, sub_1C8D8630C);
      return;
    }

    ++i;
    if (*(v5 + 56 + 8 * v9))
    {
      for (i = v9; ; v9 = i)
      {
        OUTLINED_FUNCTION_78_2(v9);
        v10 = TypeInstance.typeIdentifiers.getter();
        sub_1C8D375B4(v10);
LABEL_5:
        ;
      }
    }
  }

  __break(1u);
}