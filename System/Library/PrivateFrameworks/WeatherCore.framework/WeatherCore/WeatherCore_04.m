void sub_1C94B440C()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v2 = sub_1C96A4CF4();
  OUTLINED_FUNCTION_1();
  v37 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v32 - v9;
  if (*(v1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6230), v10 = OUTLINED_FUNCTION_18_18(), v11 = v10, (v36 = *(v1 + 16)) != 0))
  {
    v12 = 0;
    v40 = v10 + 56;
    v13 = *(v37 + 80);
    v34 = v1;
    v35 = v1 + ((v13 + 32) & ~v13);
    v39 = v37 + 16;
    v14 = (v37 + 8);
    v33 = (v37 + 32);
    while (v12 < *(v1 + 16))
    {
      v15 = *(v37 + 72);
      v38 = v12 + 1;
      v16 = *(v37 + 16);
      v16(v41, v35 + v15 * v12, v2);
      OUTLINED_FUNCTION_6_32();
      sub_1C94B4700(&qword_1EDB7CC38, v17);
      v18 = sub_1C96A6F24();
      v19 = ~(-1 << *(v11 + 32));
      while (1)
      {
        v20 = v18 & v19;
        v21 = (v18 & v19) >> 6;
        v22 = *(v40 + 8 * v21);
        v23 = 1 << (v18 & v19);
        if ((v23 & v22) == 0)
        {
          break;
        }

        v24 = v11;
        v16(v7, *(v11 + 48) + v20 * v15, v2);
        OUTLINED_FUNCTION_6_32();
        sub_1C94B4700(&qword_1EDB7CC30, v25);
        v26 = sub_1C96A6F94();
        v27 = *v14;
        (*v14)(v7, v2);
        if (v26)
        {
          v27(v41, v2);
          v11 = v24;
          goto LABEL_12;
        }

        v18 = v20 + 1;
        v11 = v24;
      }

      v28 = v41;
      *(v40 + 8 * v21) = v23 | v22;
      (*v33)(*(v11 + 48) + v20 * v15, v28, v2);
      v29 = *(v11 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_15;
      }

      *(v11 + 16) = v31;
LABEL_12:
      v12 = v38;
      v1 = v34;
      if (v38 == v36)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:

    OUTLINED_FUNCTION_101();
  }
}

uint64_t sub_1C94B4700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C94B4748(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C94B4790()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for UserIdentity();
  MEMORY[0x1EEE9AC00](v3);
  v82 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C96A4A54();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v75 = &v71 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v83 = &v71 - v12;
  if (qword_1EDB7CF60 != -1)
  {
    swift_once();
  }

  v80 = v2;
  v13 = sub_1C96A6154();
  v81 = __swift_project_value_buffer(v13, qword_1EDB7CF68);
  v14 = sub_1C96A6134();
  v15 = sub_1C96A76A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1C945E000, v14, v15, "Checking if privateUserIdentifier needs to be reset...", v16, 2u);
    MEMORY[0x1CCA8E3D0](v16, -1, -1);
  }

  v17 = v1[10];
  v18 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v17);
  v19 = v82;
  (*(v18 + 8))(v17, v18);
  v20 = *(v3 + 28);
  v79 = v6;
  v21 = *(v6 + 16);
  v21(v83, v19 + v20, v5);
  sub_1C94B37E0(v19, type metadata accessor for UserIdentity);
  if (qword_1EDB7CB68 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDB7CB70;
  sub_1C94B39A0(qword_1EDB7BC80);
  v78 = v22;
  sub_1C96A4E44();
  v23 = v9;
  if (v84 == 1)
  {
    goto LABEL_11;
  }

  if (qword_1EDB7CB98 != -1)
  {
    swift_once();
  }

  sub_1C96A4E44();
  if (v85)
  {
LABEL_11:
    v76 = v3;
    v24 = 1;
    v21(v9, v83, v5);
LABEL_12:
    sub_1C96A3D04();
    v25 = v21;
    v26 = sub_1C96A6134();
    v27 = sub_1C96A76A4();

    v28 = os_log_type_enabled(v26, v27);
    v77 = v5;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v73 = v24;
      v30 = v29;
      v31 = swift_slowAlloc();
      v71 = v25;
      v32 = v5;
      v74 = v31;
      v84 = v31;
      *v30 = 141558787;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v33 = v23;
      v34 = v1[10];
      v35 = v1[11];
      __swift_project_boxed_opaque_existential_1(v1 + 7, v34);
      v36 = *(v35 + 8);
      v37 = v82;
      v72 = v27;
      v36(v34, v35);
      v38 = (v37 + *(v76 + 24));
      v39 = *v38;
      v40 = v38[1];
      sub_1C96A53C4();
      sub_1C94B37E0(v37, type metadata accessor for UserIdentity);
      v41 = sub_1C9484164(v39, v40, &v84);

      *(v30 + 14) = v41;
      *(v30 + 22) = 2082;
      v71(v75, v33, v32);
      v42 = sub_1C96A70C4();
      v44 = v43;
      v45 = v32;
      v46 = *(v79 + 8);
      v46(v33, v45);
      v47 = sub_1C9484164(v42, v44, &v84);

      *(v30 + 24) = v47;
      *(v30 + 32) = 1024;
      v48 = v72;
      *(v30 + 34) = v73;
      _os_log_impl(&dword_1C945E000, v26, v48, "About to reset an identifier; (old) privateUserIdentifier=%{private,mask.hash}s; privateUserIdentifierLastResetDate=%{public}s; forcedRotation=%{BOOL}d", v30, 0x26u);
      v49 = v74;
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v49, -1, -1);
      MEMORY[0x1CCA8E3D0](v30, -1, -1);
    }

    else
    {

      v46 = *(v79 + 8);
      v46(v23, v5);
    }

    v50 = v1[10];
    v51 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v50);
    (*(v51 + 24))(v50, v51);
    LOBYTE(v84) = 0;
    sub_1C94B39A0(&qword_1EDB796A0);
    sub_1C96A4FE4();
    sub_1C96A3D04();
    v52 = sub_1C96A6134();
    v53 = sub_1C96A76A4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v84 = v55;
      *v54 = 141558275;
      *(v54 + 4) = 1752392040;
      *(v54 + 12) = 2081;
      v56 = v1[10];
      v57 = v1[11];
      __swift_project_boxed_opaque_existential_1(v1 + 7, v56);
      v58 = v82;
      (*(v57 + 8))(v56, v57);
      v59 = (v58 + *(v76 + 24));
      v60 = *v59;
      v61 = v59[1];
      sub_1C96A53C4();
      sub_1C94B37E0(v58, type metadata accessor for UserIdentity);
      v62 = sub_1C9484164(v60, v61, &v84);

      *(v54 + 14) = v62;
      _os_log_impl(&dword_1C945E000, v52, v53, "Just reset an identifier; (new) privateUserIdentifier=%{private,mask.hash}s", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x1CCA8E3D0](v55, -1, -1);
      MEMORY[0x1CCA8E3D0](v54, -1, -1);
    }

    v46(v83, v77);
    return 1;
  }

  v64 = v21;
  sub_1C96A5954();
  v65 = v75;
  sub_1C96A5944();
  v66 = sub_1C94B3B6C(v65);
  v67 = *(v79 + 8);
  v67(v65, v5);
  if (v66)
  {
    v76 = v3;
    v24 = 0;
    v21 = v64;
    v64(v23, v83, v5);
    goto LABEL_12;
  }

  v68 = sub_1C96A6134();
  v69 = sub_1C96A76A4();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_1C945E000, v68, v69, "The privateUserIdentifier does NOT need to be reset", v70, 2u);
    MEMORY[0x1CCA8E3D0](v70, -1, -1);
  }

  v67(v83, v5);
  return 0;
}

uint64_t sub_1C94B5060()
{
  sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_16();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_21_1();
  v2 = OUTLINED_FUNCTION_6_24();
  v3(v2);
  v4 = OUTLINED_FUNCTION_2_32();
  v5(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_4_23();
  result = OUTLINED_FUNCTION_4_19();
  qword_1EDB7CB70 = result;
  return result;
}

uint64_t sub_1C94B51C0()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for UserIdentity();
  MEMORY[0x1EEE9AC00](v3);
  v82 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C96A4A54();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v75 = &v71 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v83 = &v71 - v12;
  if (qword_1EDB7CF60 != -1)
  {
    swift_once();
  }

  v80 = v2;
  v13 = sub_1C96A6154();
  v81 = __swift_project_value_buffer(v13, qword_1EDB7CF68);
  v14 = sub_1C96A6134();
  v15 = sub_1C96A76A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1C945E000, v14, v15, "Checking if reportWeatherUserIdentifier needs to be reset...", v16, 2u);
    MEMORY[0x1CCA8E3D0](v16, -1, -1);
  }

  v17 = v1[10];
  v18 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v17);
  v19 = v82;
  (*(v18 + 8))(v17, v18);
  v20 = *(v3 + 36);
  v79 = v6;
  v21 = *(v6 + 16);
  v21(v83, v19 + v20, v5);
  sub_1C94B37E0(v19, type metadata accessor for UserIdentity);
  if (qword_1EDB7CBB0 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDB7CBB8;
  sub_1C94B39A0(qword_1EDB7BC80);
  v78 = v22;
  sub_1C96A4E44();
  v23 = v9;
  if (v84 == 1)
  {
    goto LABEL_11;
  }

  if (qword_1EDB7CB98 != -1)
  {
    swift_once();
  }

  sub_1C96A4E44();
  if (v85)
  {
LABEL_11:
    v76 = v3;
    v24 = 1;
    v21(v9, v83, v5);
LABEL_12:
    sub_1C96A3D04();
    v25 = v21;
    v26 = sub_1C96A6134();
    v27 = sub_1C96A76A4();

    v28 = os_log_type_enabled(v26, v27);
    v77 = v5;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v73 = v24;
      v30 = v29;
      v31 = swift_slowAlloc();
      v71 = v25;
      v32 = v5;
      v74 = v31;
      v84 = v31;
      *v30 = 141558787;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v33 = v23;
      v34 = v1[10];
      v35 = v1[11];
      __swift_project_boxed_opaque_existential_1(v1 + 7, v34);
      v36 = *(v35 + 8);
      v37 = v82;
      v72 = v27;
      v36(v34, v35);
      v38 = (v37 + *(v76 + 32));
      v39 = *v38;
      v40 = v38[1];
      sub_1C96A53C4();
      sub_1C94B37E0(v37, type metadata accessor for UserIdentity);
      v41 = sub_1C9484164(v39, v40, &v84);

      *(v30 + 14) = v41;
      *(v30 + 22) = 2082;
      v71(v75, v33, v32);
      v42 = sub_1C96A70C4();
      v44 = v43;
      v45 = v32;
      v46 = *(v79 + 8);
      v46(v33, v45);
      v47 = sub_1C9484164(v42, v44, &v84);

      *(v30 + 24) = v47;
      *(v30 + 32) = 1024;
      v48 = v72;
      *(v30 + 34) = v73;
      _os_log_impl(&dword_1C945E000, v26, v48, "About to reset an identifier; (old) reportWeatherUserIdentifier=%{private,mask.hash}s; reportWeatherUserIdentifierLastResetDate=%{public}s; forcedRotation=%{BOOL}d", v30, 0x26u);
      v49 = v74;
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v49, -1, -1);
      MEMORY[0x1CCA8E3D0](v30, -1, -1);
    }

    else
    {

      v46 = *(v79 + 8);
      v46(v23, v5);
    }

    v50 = v1[10];
    v51 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v50);
    (*(v51 + 32))(v50, v51);
    LOBYTE(v84) = 0;
    sub_1C94B39A0(&qword_1EDB796A0);
    sub_1C96A4FE4();
    sub_1C96A3D04();
    v52 = sub_1C96A6134();
    v53 = sub_1C96A76A4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v84 = v55;
      *v54 = 141558275;
      *(v54 + 4) = 1752392040;
      *(v54 + 12) = 2081;
      v56 = v1[10];
      v57 = v1[11];
      __swift_project_boxed_opaque_existential_1(v1 + 7, v56);
      v58 = v82;
      (*(v57 + 8))(v56, v57);
      v59 = (v58 + *(v76 + 32));
      v60 = *v59;
      v61 = v59[1];
      sub_1C96A53C4();
      sub_1C94B37E0(v58, type metadata accessor for UserIdentity);
      v62 = sub_1C9484164(v60, v61, &v84);

      *(v54 + 14) = v62;
      _os_log_impl(&dword_1C945E000, v52, v53, "Just reset an identifier; (new) reportWeatherUserIdentifier=%{private,mask.hash}s", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x1CCA8E3D0](v55, -1, -1);
      MEMORY[0x1CCA8E3D0](v54, -1, -1);
    }

    v46(v83, v77);
    return 1;
  }

  v64 = v21;
  sub_1C96A5954();
  v65 = v75;
  sub_1C96A5944();
  v66 = sub_1C94B3B6C(v65);
  v67 = *(v79 + 8);
  v67(v65, v5);
  if (v66)
  {
    v76 = v3;
    v24 = 0;
    v21 = v64;
    v64(v23, v83, v5);
    goto LABEL_12;
  }

  v68 = sub_1C96A6134();
  v69 = sub_1C96A76A4();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_1C945E000, v68, v69, "The reportWeatherUserIdentifier does NOT need to be reset", v70, 2u);
    MEMORY[0x1CCA8E3D0](v70, -1, -1);
  }

  v67(v83, v5);
  return 0;
}

uint64_t sub_1C94B5A90()
{
  sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_16();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_21_1();
  v2 = OUTLINED_FUNCTION_6_24();
  v3(v2);
  v4 = OUTLINED_FUNCTION_2_32();
  v5(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_4_23();
  result = OUTLINED_FUNCTION_4_19();
  qword_1EDB7CBB8 = result;
  return result;
}

uint64_t type metadata accessor for UserIdentityChange()
{
  result = qword_1EDB7C230;
  if (!qword_1EDB7C230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Domain.weatherInternal.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A4F34();
  v3 = __swift_project_value_buffer(v2, qword_1EDB80028);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C94B5D78(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C96A6E94();
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C96A6E84();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - v12;
  v14 = sub_1C96A7084();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C94B62CC(a1, a2, v2);
  sub_1C96A7074();
  v18 = sub_1C96A7034();
  v20 = v19;

  (*(v15 + 8))(v17, v14);
  if (v20 >> 60 == 15)
  {
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v21 = sub_1C96A6154();
    __swift_project_value_buffer(v21, qword_1EDB7AC00);
    v22 = sub_1C96A6134();
    v23 = sub_1C96A7684();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C945E000, v22, v23, "PrivacySampler failed to convert the hash input to valid data", v24, 2u);
      MEMORY[0x1CCA8E3D0](v24, -1, -1);
    }

LABEL_17:
    v42 = 0;
    v41 = 1;
    return v42 | (v41 << 16);
  }

  sub_1C94B64E8();
  sub_1C96A6E74();
  sub_1C94874C0(v18, v20);
  sub_1C94B6540(v18, v20, v7);
  v43 = v20;
  sub_1C9485BFC(v18, v20);
  sub_1C96A6E54();
  (*(v44 + 8))(v7, v5);
  v26 = v45;
  v25 = v46;
  (*(v45 + 16))(v11, v13, v46);
  v27 = sub_1C94B659C(v11);
  v29 = v28;
  v30 = v25;
  if (MEMORY[0x1CCA8A1F0]() < 2)
  {
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v31 = sub_1C96A6154();
    __swift_project_value_buffer(v31, qword_1EDB7AC00);
    v32 = sub_1C96A6134();
    v33 = sub_1C96A7684();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1C945E000, v32, v33, "PrivacySampler failed to generated valid SHA256 hash", v34, 2u);
      MEMORY[0x1CCA8E3D0](v34, -1, -1);
      sub_1C9485BFC(v18, v43);

      sub_1C9482F3C(v27, v29);
    }

    else
    {
      sub_1C9485BFC(v18, v43);
      sub_1C9482F3C(v27, v29);
    }

    (*(v26 + 8))(v13, v30);
    goto LABEL_17;
  }

  v35 = MEMORY[0x1CCA8A1F0](v27, v29);
  v36 = __OFSUB__(v35, 2);
  result = v35 - 2;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    v38 = sub_1C96A4824();
    v39 = MEMORY[0x1CCA8A1F0](v27, v29);
    v36 = __OFSUB__(v39, 1);
    result = v39 - 1;
    if (!v36)
    {
      v40 = sub_1C96A4824();
      sub_1C9485BFC(v18, v43);
      sub_1C9482F3C(v27, v29);
      (*(v26 + 8))(v13, v30);
      v41 = 0;
      v42 = v40 | (v38 << 8);
      return v42 | (v41 << 16);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C94B62CC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = a3[5];
    v6 = a3[6];
    __swift_project_boxed_opaque_existential_1(a3 + 2, v5);
    v10 = (*(v6 + 8))(v5, v6);
    MEMORY[0x1CCA8CB00](45, 0xE100000000000000);
    MEMORY[0x1CCA8CB00](a1, a2);
    return v10;
  }

  else
  {
    v8 = a3[5];
    v9 = a3[6];
    __swift_project_boxed_opaque_existential_1(a3 + 2, v8);
    return (*(v9 + 8))(v8, v9);
  }
}

uint64_t PrivacySaltProvider.salt.getter()
{
  v1 = type metadata accessor for UserIdentity();
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  (*(v6 + 8))(v5, v6);
  v7 = *&v4[*(v2 + 32)];
  sub_1C96A53C4();
  sub_1C94B648C(v4);
  return v7;
}

uint64_t sub_1C94B648C(uint64_t a1)
{
  v2 = type metadata accessor for UserIdentity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C94B64E8()
{
  result = qword_1EDB7AB88;
  if (!qword_1EDB7AB88)
  {
    sub_1C96A6E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7AB88);
  }

  return result;
}

uint64_t AppConfigurationSettingsProvider.networkConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for AppConfiguration();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v8 = [v7 processName];

  v9 = sub_1C96A7024();
  v11 = v10;

  v12 = v1[5];
  v13 = v1[6];
  v33 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 2, v12);
  (*(v13 + 8))(v12, v13);
  v34 = v2;
  v14 = *&v6[*(v2 + 72)];
  sub_1C96A53C4();
  sub_1C9484108(v6);
  v39 = v14;
  v15 = *(v14 + 16);
  v16 = 32;
  if (v15)
  {
    while (1)
    {
      memcpy(__dst, (v39 + v16), 0x50uLL);
      v38 = __dst[4];
      v17 = BYTE8(__dst[3]);
      v37 = *(&__dst[2] + 8);
      v18 = BYTE2(__dst[2]);
      v19 = BYTE1(__dst[2]);
      v20 = __dst[2];
      v21 = *(&__dst[1] + 1);
      v22 = __dst[1];
      v23 = *&__dst[0] == v9 && *(&__dst[0] + 1) == v11;
      if (v23 || (sub_1C96A7DE4() & 1) != 0)
      {
        break;
      }

      v16 += 80;
      if (!--v15)
      {
        goto LABEL_8;
      }
    }

    sub_1C95D8330(__dst, v40);

    sub_1C94B694C(&__dst[1], v40);
    sub_1C95D838C(__dst);
    v30 = v38;
    v31 = v37;
  }

  else
  {
LABEL_8:

    v24 = v33[5];
    v25 = v33[6];
    __swift_project_boxed_opaque_existential_1(v33 + 2, v24);
    v26 = v35;
    (*(v25 + 8))(v24, v25);
    v27 = (v26 + *(v34 + 76));
    v28 = v27[1];
    __dst[0] = *v27;
    __dst[1] = v28;
    v29 = v27[3];
    __dst[2] = v27[2];
    __dst[3] = v29;
    sub_1C94B694C(__dst, v40);
    sub_1C9484108(v26);
    v30 = __dst[3];
    v17 = BYTE8(__dst[2]);
    v31 = *(&__dst[1] + 8);
    v18 = BYTE2(__dst[1]);
    v19 = BYTE1(__dst[1]);
    v20 = __dst[1];
    v21 = *(&__dst[0] + 1);
    v22 = __dst[0];
  }

  v40[0] = v17;
  LOBYTE(__dst[0]) = v22;
  *(&__dst[0] + 1) = v21;
  LOBYTE(__dst[1]) = v20;
  BYTE1(__dst[1]) = v19;
  BYTE2(__dst[1]) = v18;
  *(&__dst[1] + 8) = v31;
  BYTE8(__dst[2]) = v17;
  __dst[3] = v30;
  return WDSClientConfiguration.init(networkConfiguration:)(__dst);
}

uint64_t WDSClientConfiguration.init(networkConfiguration:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 56);
  v3 = *(v1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v21 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1_69();
    v5 = v1 + 32;
    do
    {
      v6 = sub_1C96A7F64();
      v8 = v7;
      v10 = *(v21 + 16);
      v9 = *(v21 + 24);
      if (v10 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_0_96(v9);
      }

      *(v21 + 16) = v10 + 1;
      v11 = v21 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      v5 += 8;
      --v3;
    }

    while (v3);
    v4 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v2 + 16);
  if (v12)
  {
    v22 = v4;
    sub_1C96A53C4();
    OUTLINED_FUNCTION_1_69();
    v13 = v2 + 32;
    do
    {
      v14 = sub_1C96A7F64();
      v16 = v15;
      v18 = *(v22 + 16);
      v17 = *(v22 + 24);
      if (v18 >= v17 >> 1)
      {
        OUTLINED_FUNCTION_0_96(v17);
      }

      *(v22 + 16) = v18 + 1;
      v19 = v22 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {
    sub_1C96A53C4();
  }

  sub_1C96A5E54();
}

char *sub_1C94B6B6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51F0);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_1C94B6C6C(char *a1, int64_t a2, char a3)
{
  result = sub_1C94B6B6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C94B6C90(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1CCA8A510]() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for UnitDefaults.UnitLengthCacheKey(0) + 20);
  v5 = sub_1C946B5D0(0, &qword_1EDB7FDA0);

  return MEMORY[0x1EEDC3E70](a1 + v4, a2 + v4, v5);
}

uint64_t sub_1C94B6D18(uint64_t a1, int a2)
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

double AppConfiguration.weatherData.getter()
{
  OUTLINED_FUNCTION_40_0();
  v0 = type metadata accessor for AppConfiguration();
  *&result = OUTLINED_FUNCTION_42_7(*(v0 + 116)).n128_u64[0];
  return result;
}

uint64_t sub_1C94B6DB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C96A5254();
  if (v14 != 2 && (v14 & 1) != 0)
  {
    goto LABEL_12;
  }

  v4 = [objc_opt_self() mainBundle];
  v5 = sub_1C9493F34(v4);
  if (!v6)
  {
    goto LABEL_9;
  }

  if (v5 == 0xD000000000000012 && v6 == 0x80000001C96CE5D0)
  {

    goto LABEL_12;
  }

  v8 = sub_1C96A7DE4();

  if (v8)
  {
LABEL_12:
    v11 = type metadata accessor for CurrentLocationCacheManager();
    swift_allocObject();
    v12 = sub_1C9663E10;
    v13 = 0;
    goto LABEL_13;
  }

LABEL_9:
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D50);
  result = sub_1C96A5274();
  if (v14)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v14;
    *(v10 + 24) = v15;
    v11 = type metadata accessor for CurrentLocationCacheManager();
    swift_allocObject();
    v12 = sub_1C9669E54;
    v13 = v10;
LABEL_13:
    result = CurrentLocationCacheManager.init(store:)(v12, v13);
    a2[3] = v11;
    a2[4] = &protocol witness table for CurrentLocationCacheManager;
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C94B6FAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t type metadata accessor for CurrentLocationCacheManager()
{
  result = qword_1EDB7D8E0;
  if (!qword_1EDB7D8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C94B7034()
{
  sub_1C94B70F4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C94B70F4()
{
  if (!qword_1EDB7E508[0])
  {
    type metadata accessor for CachedCurrentLocation(255);
    v0 = sub_1C96A7934();
    if (!v1)
    {
      atomic_store(v0, qword_1EDB7E508);
    }
  }
}

uint64_t sub_1C94B716C()
{
  result = type metadata accessor for CachedCurrentLocation.EmbeddedLocation(319);
  if (v1 <= 0x3F)
  {
    result = sub_1C96A4A54();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C94B71F0()
{
  result = sub_1C94B7264();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Location();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C94B7264()
{
  result = qword_1EDB7FDB0;
  if (!qword_1EDB7FDB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB7FDB0);
  }

  return result;
}

uint64_t CurrentLocationCacheManager.init(store:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C96A5174();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR____TtC11WeatherCore27CurrentLocationCacheManager_currentLocation;
  v9 = type metadata accessor for CachedCurrentLocation(0);
  __swift_storeEnumTagSinglePayload(v2 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC11WeatherCore27CurrentLocationCacheManager_lock;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *(v2 + v10) = sub_1C96A5124();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_1C94B75C0(&qword_1EDB7D098, MEMORY[0x1E69D6420]);
  sub_1C96A3D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5350);
  sub_1C94B7650();
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5CE8);
  swift_allocObject();
  v12 = sub_1C96A5544();

  *(v3 + 16) = v12;
  return v3;
}

uint64_t sub_1C94B74D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C94B751C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CachedCurrentLocation.EmbeddedLocation(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_1C96A4A54();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1C94B75C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C94B7608(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C94B7650()
{
  result = qword_1EDB7CE98;
  if (!qword_1EDB7CE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC3A5350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CE98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMapOverlayServiceSource(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C94B7790);
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

unint64_t sub_1C94B77C4()
{
  result = qword_1EDB7A620[0];
  if (!qword_1EDB7A620[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7A620);
  }

  return result;
}

uint64_t sub_1C94B7820(uint64_t a1)
{
  v2 = sub_1C947F70C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1C94B7874@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherMapOverlayServiceSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t WeatherMapOverlayServiceSource.rawValue.getter()
{
  result = 0x4C45564544;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x474E4947415453;
      break;
    case 3:
      result = OUTLINED_FUNCTION_1_4();
      break;
    case 4:
    case 5:
      result = 0x49544355444F5250;
      break;
    case 6:
      result = 0x6C61636F6CLL;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_1C94B7960(uint64_t a1)
{
  v2 = sub_1C947F70C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1C94B79B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C947F70C();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t AppConfiguration.maps.getter()
{
  OUTLINED_FUNCTION_40_0();
  v2 = *(type metadata accessor for AppConfiguration() + 68);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0xA0uLL);
  return sub_1C94B7A74(__dst, &v4);
}

uint64_t WeatherMapOverlayServiceSource.description.getter()
{
  result = 0x6C65766544;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x676E6967617453;
      break;
    case 3:
      result = OUTLINED_FUNCTION_1_4();
      break;
    case 4:
      result = 1685025360;
      break;
    case 5:
      result = 0x32482D646F7250;
      break;
    case 6:
      result = 0x6C61636F4CLL;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

void *AppConfiguration.widget.getter()
{
  OUTLINED_FUNCTION_40_0();
  v2 = (v1 + *(type metadata accessor for AppConfiguration() + 128));

  return memcpy(v0, v2, 0x60uLL);
}

uint64_t AppConfiguration.treatmentIDs.getter()
{
  type metadata accessor for AppConfiguration();

  return sub_1C96A53C4();
}

uint64_t AppConfiguration.segmentSetIDs.getter()
{
  type metadata accessor for AppConfiguration();

  return sub_1C96A53C4();
}

id UnitManager.temperature(locale:)()
{
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_15_9();
  v2 = OUTLINED_FUNCTION_9_14();
  v3(v2);
  v4 = OUTLINED_FUNCTION_34_4();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_22();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_6_17();
    v7 = OUTLINED_FUNCTION_23_7();
    sub_1C954DD90(v7, v8);
    os_unfair_lock_unlock(v1 + 6);
    OUTLINED_FUNCTION_54_2();
    return OUTLINED_FUNCTION_20_8();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    v10 = objc_opt_self();
    if (v0)
    {
      v11 = [v10 celsius];
    }

    else
    {
      v11 = [v10 fahrenheit];
    }

    return v11;
  }
}

id NSUnitTemperature.canonical.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 celsius];
  OUTLINED_FUNCTION_4_67(v1, &qword_1EDB80068);
  OUTLINED_FUNCTION_9_0();
  v2 = sub_1C96A78B4();

  if ((v2 & 1) == 0)
  {
    v3 = OUTLINED_FUNCTION_5_55();
    v4 = OUTLINED_FUNCTION_0_111();

    if ((v4 & 1) == 0)
    {
      v5 = [v0 kelvin];
      OUTLINED_FUNCTION_0_111();
    }
  }

  v6 = OUTLINED_FUNCTION_5_55();

  return v6;
}

id sub_1C94B7E90(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t sub_1C94B7EDC()
{
  result = sub_1C96A7004();
  qword_1EDB7C818 = result;
  return result;
}

uint64_t UserIdentity.startDate.getter()
{
  OUTLINED_FUNCTION_7_19();
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_3_24();

  return v1(v0);
}

uint64_t UserIdentity.identifier.getter()
{
  v1 = *v0;
  sub_1C96A53C4();
  return v1;
}

uint64_t UserIdentity.privateIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserIdentity() + 24));
  sub_1C96A53C4();
  return v1;
}

uint64_t sub_1C94B804C()
{
  sub_1C96A5134();
  sub_1C96A3D04();
  sub_1C96A5554();
}

uint64_t sub_1C94B80E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC11WeatherCore15IdentityService_observers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v12 = MEMORY[0x1E69E7CC0];
  v6 = sub_1C946D04C(v5);
  result = sub_1C96A53C4();
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      *(a1 + v4) = v12;

      type metadata accessor for IdentityServiceObserverProxy();
      swift_allocObject();
      v9 = swift_unknownObjectRetain();
      sub_1C94AC734(v9, a3);
      v10 = swift_beginAccess();
      MEMORY[0x1CCA8CC10](v10);
      sub_1C94AC1D4(*((*(a1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1C96A7314();
      return swift_endAccess();
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA8D440](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
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

uint64_t sub_1C94B82D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5038);
  result = sub_1C96A5274();
  if (!v12[3])
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5040);
  result = sub_1C96A5274();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5088);
  result = sub_1C96A5274();
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (qword_1EDB7CDE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1EDB7CDE8;
  active = type metadata accessor for ActiveUserService();
  v7 = swift_allocObject();
  result = sub_1C94B8478(v12, v10, v8, v5, v7);
  a2[3] = active;
  a2[4] = &off_1F49097A8;
  *a2 = result;
  return result;
}

uint64_t sub_1C94B8478(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - v11;
  sub_1C9469B6C(a1, v26);
  sub_1C9469B6C(a2, v25);
  sub_1C9469B6C(a3, v24);
  type metadata accessor for ActiveUserService.Actor();
  v13 = swift_allocObject();
  v23[3] = sub_1C946B5D0(0, &qword_1EDB80340);
  v23[4] = &protocol witness table for NSUserDefaults;
  v23[0] = a4;
  swift_defaultActor_initialize();
  v14 = OBJC_IVAR____TtCC11WeatherCore17ActiveUserService5Actor__activeUserModel;
  active = type metadata accessor for ActiveUserModel();
  __swift_storeEnumTagSinglePayload(v13 + v14, 1, 1, active);
  sub_1C9469B6C(v23, v13 + 112);
  sub_1C9469B6C(v26, v13 + 152);
  sub_1C9469B6C(v25, v13 + 192);
  sub_1C9469B6C(v24, v13 + 232);
  v16 = sub_1C96A7414();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v13;
  sub_1C96A3D04();
  sub_1C951C258();

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  *(a5 + 16) = v13;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = *(v19 + 24);
  v21 = sub_1C96A3D04();
  v20(v21, &off_1F4909798, v18, v19);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return a5;
}

uint64_t sub_1C94B86D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t type metadata accessor for ActiveUserService.Actor()
{
  result = qword_1EDB79BA8;
  if (!qword_1EDB79BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C94B8760()
{
  sub_1C94B880C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C94B880C()
{
  if (!qword_1EDB7A090)
  {
    type metadata accessor for ActiveUserModel();
    v0 = sub_1C96A7934();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB7A090);
    }
  }
}

uint64_t type metadata accessor for ActiveUserModel()
{
  result = qword_1EDB7A0D0;
  if (!qword_1EDB7A0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C94B88B0()
{
  sub_1C96A4A94();
  if (v0 <= 0x3F)
  {
    sub_1C96A4A54();
    if (v1 <= 0x3F)
    {
      sub_1C94612C0();
      if (v2 <= 0x3F)
      {
        sub_1C94B8964();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C94B8964()
{
  if (!qword_1EDB77D70)
  {
    sub_1C96A66B4();
    v0 = sub_1C96A6F14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB77D70);
    }
  }
}

void sub_1C94B89E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C96A4A94();
  OUTLINED_FUNCTION_16_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1C96A4A54();
    OUTLINED_FUNCTION_16_1();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
      OUTLINED_FUNCTION_16_1();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t UbiquitousKeyValueStoreProvider.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  sub_1C96A50E4();
  swift_beginAccess();
  v3 = *(v2 + 64);
  v10 = MEMORY[0x1E69E7CC0];
  v4 = sub_1C946D04C(v3);
  result = sub_1C96A53C4();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      *(v2 + 64) = v10;

      type metadata accessor for UbiquitousKeyValueStoreProviderObserverProxy();
      OUTLINED_FUNCTION_54();
      swift_allocObject();
      v7 = swift_unknownObjectRetain();
      sub_1C94AC734(v7, a2);
      v8 = swift_beginAccess();
      MEMORY[0x1CCA8CC10](v8);
      sub_1C94AC1D4(*((*(v2 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1C96A7314();
      swift_endAccess();
      return sub_1C96A50F4();
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA8D440](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
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

uint64_t sub_1C94B8D0C()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0C0C;

  return sub_1C94B8E4C();
}

uint64_t sub_1C94B8D98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B9278;

  return sub_1C94B8D0C();
}

uint64_t sub_1C94B8E68()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDB7AA78 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = qword_1EDB7AA80;
  *(v0 + 72) = type metadata accessor for ActiveUserService.Actor();
  OUTLINED_FUNCTION_8_42();
  sub_1C94B91C8(v1, v2);
  sub_1C96A4E44();
  if (*(v0 + 88) == 1)
  {
    sub_1C9469B6C(*(v0 + 56) + 152, v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    sub_1C96A3D04();
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_1C9644058;
    OUTLINED_FUNCTION_16_31();

    return sub_1C94D28EC(v6, v7, v8, v3, v9, v4);
  }

  else
  {
    OUTLINED_FUNCTION_17();

    return v11();
  }
}

uint64_t sub_1C94B9020()
{
  v0 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7AA80 = result;
  return result;
}

uint64_t sub_1C94B91C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C94B9210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  active = type metadata accessor for ActiveUserService.Actor();

  return MEMORY[0x1EEE454E0](a1, a2, active, a6);
}

uint64_t sub_1C94B9278()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C94B936C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5080);
  result = sub_1C96A5274();
  if (v7)
  {
    sub_1C94670AC(&v6, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 8))(v2, &off_1F4909780, v4, v5);
    return __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1C94B9434(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_18(a3, result);
  }

  return result;
}

uint64_t UnitSetupManager.__deallocating_deinit()
{
  sub_1C954DF68(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1C94B949C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_1C9469B6C(a1, v11);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  sub_1C94670AC(v11, v8 + 24);
  sub_1C96A3D04();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  MEMORY[0x1CCA893E0](v12, a5, v8, v9);

  return sub_1C94B962C(v12);
}

uint64_t AppDependencyManager.addWeatherDependencies(from:)(uint64_t a1)
{
  sub_1C94B949C(a1, &unk_1F48FFF88, &qword_1EC3A5490, &unk_1C96ADC70, &unk_1C96ADC68);
  sub_1C94B949C(a1, &unk_1F48FFF60, &qword_1EC3A5488, &unk_1C96ADC58, &unk_1C96ADC50);
  return sub_1C94B949C(a1, &unk_1F48FFF38, &qword_1EC3A5478, &unk_1C96ADC38, &unk_1C96ADC30);
}

uint64_t sub_1C94B962C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppLaunchCountManager.init()()
{
  v1 = [objc_opt_self() standardUserDefaults];
  *(v0 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C96AA1C0;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x80000001C96D8570;
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 48) = 0;
  v3 = v1;
  sub_1C96A6F04();
  v4 = sub_1C96A6EC4();

  [v3 registerDefaults_];

  return v0;
}

uint64_t StubCoreRoutineDataManager.init()()
{
  v1 = v0;
  if (qword_1EDB77E58 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB77E60);
  v3 = sub_1C96A6134();
  v4 = sub_1C96A76A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C945E000, v3, v4, "Use StubCoreRoutineDataManager to mock location", v5, 2u);
    MEMORY[0x1CCA8E3D0](v5, -1, -1);
  }

  return v1;
}

uint64_t sub_1C94B9940(__int128 *a1, __int128 *a2, __int128 *a3)
{
  sub_1C94670AC(a1, v3 + 16);
  sub_1C94670AC(a2, v3 + 56);
  sub_1C94670AC(a3, v3 + 96);
  return v3;
}

uint64_t dispatch thunk of NotificationSubscriptionManagerType.addObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

void OUTLINED_FUNCTION_92_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t sub_1C94B9B20(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C94B0C0C;

  return NotificationSubscriptionManager.addObserver(_:)(a1, a2);
}

uint64_t PredictedLocationsAuthorizationManager.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  if (qword_1EDB7B0F8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = byte_1EDB7B100;
  return v0;
}

uint64_t sub_1C94B9C24()
{
  type metadata accessor for PredictedLocationsAuthorizationManager();
  result = sub_1C94B9D78(56);
  byte_1EDB7B100 = result & 1;
  return result;
}

uint64_t NotificationSubscriptionManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = OUTLINED_FUNCTION_15_7();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C94B9C88()
{
  OUTLINED_FUNCTION_49();
  v1 = *(v0 + 56);
  v7 = *(v0 + 40);
  swift_beginAccess();
  sub_1C948ABAC(sub_1C94ADC30);
  v2 = *(*(v1 + 112) + 16);
  sub_1C948AC20(v2, sub_1C94ADC30);
  v3 = *(v1 + 112);
  *(v3 + 16) = v2 + 1;
  *(v3 + 16 * v2 + 32) = v7;
  *(v1 + 112) = v3;
  swift_endAccess();
  OUTLINED_FUNCTION_17();
  v6 = v4;
  swift_unknownObjectRetain();

  return v6();
}

uint64_t sub_1C94B9D78(uint64_t a1)
{
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer == sub_1C96A6544())
  {
    if (qword_1EDB7AC40 != -1)
    {
      swift_once();
    }

    v8 = sub_1C96A6154();
    __swift_project_value_buffer(v8, qword_1EDB7AC48);
    v4 = sub_1C96A6134();
    v9 = sub_1C96A7684();
    if (!os_log_type_enabled(v4, v9))
    {
      v7 = 0;
      goto LABEL_12;
    }

    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_1C945E000, v4, v9, "Determined not eligible for domain %llu", v6, 0xCu);
    v7 = 0;
    goto LABEL_11;
  }

  if (qword_1EDB7AC40 != -1)
  {
    swift_once();
  }

  v3 = sub_1C96A6154();
  __swift_project_value_buffer(v3, qword_1EDB7AC48);
  v4 = sub_1C96A6134();
  v5 = sub_1C96A7694();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = a1;
    *(v6 + 12) = 1024;
    *(v6 + 14) = domain_answer;
    _os_log_impl(&dword_1C945E000, v4, v5, "Unable to determine eligibility for domain %llu, status: %d", v6, 0x12u);
    v7 = 1;
LABEL_11:
    MEMORY[0x1CCA8E3D0](v6, -1, -1);
    goto LABEL_12;
  }

  v7 = 1;
LABEL_12:

  return v7;
}

uint64_t sub_1C94BA04C()
{
  v0 = sub_1C96A6154();
  __swift_allocate_value_buffer(v0, qword_1EDB7AC48);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_2_61();
  OUTLINED_FUNCTION_4_57();
  return sub_1C96A6144();
}

uint64_t sub_1C94BA144@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C96A6154();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1C94BA21C()
{
  v0 = sub_1C96A7754();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  v4 = v3 - v2;
  v5 = sub_1C96A7724();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v6 = sub_1C96A65E4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_14();
  sub_1C94A9950();
  sub_1C96A6594();
  sub_1C94BA40C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68);
  sub_1C94BA464();
  sub_1C96A79E4();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  result = sub_1C96A7784();
  qword_1EDB7CDD0 = result;
  return result;
}

unint64_t sub_1C94BA40C()
{
  result = qword_1EDB7CDC0;
  if (!qword_1EDB7CDC0)
  {
    sub_1C96A7724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CDC0);
  }

  return result;
}

unint64_t sub_1C94BA464()
{
  result = qword_1EDB7CE50;
  if (!qword_1EDB7CE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A4A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CE50);
  }

  return result;
}

uint64_t sub_1C94BA4C8()
{
  result = MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
  qword_1EDB79F88 = 0x746E6572727563;
  qword_1EDB79F90 = 0xE700000000000000;
  qword_1EDB79F98 = 0;
  qword_1EDB79FA0 = 0xE000000000000000;
  qword_1EDB79FA8 = 0;
  unk_1EDB79FB0 = 0;
  byte_1EDB79FB8 = 1;
  qword_1EDB79FC0 = 0x746E6572727563;
  qword_1EDB79FC8 = 0xE700000000000000;
  return result;
}

uint64_t static CurrentLocation.placeholderIdentifier.getter()
{
  if (qword_1EDB79F80 != -1)
  {
    OUTLINED_FUNCTION_4_35();
  }

  memcpy(__dst, &qword_1EDB79F88, sizeof(__dst));
  v0 = OUTLINED_FUNCTION_11();
  memcpy(v0, v1, 0x48uLL);
  return sub_1C95087DC(__dst, &v3);
}

uint64_t sub_1C94BA604()
{
  sub_1C96A7EE4();
  memcpy(v2, v0, sizeof(v2));
  Location.Identifier.hash(into:)();
  return sub_1C96A7F24();
}

uint64_t LocationModel.location.getter()
{
  OUTLINED_FUNCTION_40_0();
  type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_21_1();
  type metadata accessor for CurrentLocation();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  type metadata accessor for LocationModel(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_2_31();
  sub_1C949E000();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_22();
    sub_1C94A8124();
    OUTLINED_FUNCTION_37_5();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_1_31();
      sub_1C949A950(v1, v5);
      v6 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_4_22();
      sub_1C94A8124();
      v6 = 0;
    }

    type metadata accessor for Location();
    v8 = OUTLINED_FUNCTION_43_4();
    __swift_storeEnumTagSinglePayload(v8, v6, 1, v9);
    v10 = &qword_1EC3A5948;
  }

  else
  {
    OUTLINED_FUNCTION_5_21();
    sub_1C94A8124();
    if (swift_getEnumCaseMultiPayload() > 2)
    {
      v7 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_4_22();
      OUTLINED_FUNCTION_33_4();
      sub_1C94A8124();
      v7 = 0;
    }

    type metadata accessor for Location();
    v11 = OUTLINED_FUNCTION_43_4();
    __swift_storeEnumTagSinglePayload(v11, v7, 1, v12);
    v10 = &qword_1EC3A5940;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v10);
  OUTLINED_FUNCTION_0_43();
  return sub_1C949A950(v0 + v13, v14);
}

uint64_t sub_1C94BA84C()
{
  sub_1C94BA888();

  return sub_1C96A53A4();
}

unint64_t sub_1C94BA888()
{
  result = qword_1EDB7AE18[0];
  if (!qword_1EDB7AE18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7AE18);
  }

  return result;
}

uint64_t Location.Identifier.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C96AA1C0;
  *(inited + 32) = 0x4449657571696E75;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  sub_1C96A53C4();
  sub_1C96A6F04();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7AE8);
  a1[4] = sub_1C94BAA48();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1C96A53B4();
}

unint64_t sub_1C94BA9F0()
{
  result = qword_1EDB7AE10;
  if (!qword_1EDB7AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7AE10);
  }

  return result;
}

unint64_t sub_1C94BAA48()
{
  result = qword_1EDB7AD00;
  if (!qword_1EDB7AD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A7AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7AD00);
  }

  return result;
}

uint64_t StubLocationMetadataManager.resolveAddress(for:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6760);
  OUTLINED_FUNCTION_23();
  return sub_1C96A56A4();
}

unint64_t sub_1C94BAB14()
{
  result = qword_1EDB77EF8;
  if (!qword_1EDB77EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB77EF8);
  }

  return result;
}

uint64_t StubLocationMetadataManager.resolveCountryCode(for:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6748);
  OUTLINED_FUNCTION_23();
  return sub_1C96A56A4();
}

uint64_t sub_1C94BABE4()
{
  sub_1C96A7EE4();
  Location.Identifier.hash(into:)();
  return sub_1C96A7F24();
}

unint64_t sub_1C94BAC20()
{
  result = qword_1EDB7A588;
  if (!qword_1EDB7A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A588);
  }

  return result;
}

uint64_t CountryCode.shortDescription.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    MEMORY[0x1CCA8CB00]();
    v4 = 0x6465766C6F736572;
    v3 = 0xE90000000000003ALL;
  }

  else
  {
    v3 = 0xEC000000656C6261;
    v4 = 0x766C6F7365726E75;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C96AA1C0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  sub_1C96A6F04();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8010);
  a2[4] = sub_1C94BADB8();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_1C96A53B4();
}

unint64_t sub_1C94BADB8()
{
  result = qword_1EDB77EE8;
  if (!qword_1EDB77EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A8010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB77EE8);
  }

  return result;
}

void sub_1C94BAE40()
{
  OUTLINED_FUNCTION_103();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C96A4CF4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v12);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10();
  (*(v7 + 104))(v11, *v2, v5);
  sub_1C96A4CC4();
  (*(v7 + 8))(v11, v5);
  v14 = sub_1C96A4A54();
  v15 = OUTLINED_FUNCTION_11_4();
  if (__swift_getEnumTagSinglePayload(v15, v16, v14) == 1)
  {
    v17 = OUTLINED_FUNCTION_12_7();
    v18(v17);
    v19 = OUTLINED_FUNCTION_11_4();
    if (__swift_getEnumTagSinglePayload(v19, v20, v14) != 1)
    {
      sub_1C9505BC8(v0);
    }
  }

  else
  {
    (*(*(v14 - 8) + 32))(v4, v0, v14);
  }

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C94BB03C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_1C96A3D04();
  v3(a2);
}

uint64_t sub_1C94BB090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C94BB10C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C94BB15C(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

_BYTE *sub_1C94BB194@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

void sub_1C94BB1C8(_BYTE *a1, uint64_t a2)
{
  if (!*a1)
  {
    if (qword_1EDB7D038 != -1)
    {
      swift_once();
    }

    v10 = sub_1C96A6154();
    __swift_project_value_buffer(v10, qword_1EDB7D040);
    v11 = sub_1C96A6134();
    v12 = sub_1C96A76A4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C945E000, v11, v12, "Store doesn't require migration", v13, 2u);
      MEMORY[0x1CCA8E3D0](v13, -1, -1);
    }

    v14 = sub_1C9469D80();
    v15 = *(a2 + 48);
    v16 = *(a2 + 56);
    *(a2 + 48) = v14;
    *(a2 + 56) = 1;
    sub_1C94A855C(v15, v16);
    v41 = sub_1C9469D80();
    sub_1C96A54D4();

    v17 = sub_1C946A9D8();
    v18 = sub_1C9469CFC();
    [v17 eraseStoreIfNeeded_];

    goto LABEL_13;
  }

  if (*a1 == 1)
  {
    v3 = sub_1C9469D80();
    v4 = *(a2 + 48);
    v5 = *(a2 + 56);
    *(a2 + 48) = v3;
    *(a2 + 56) = 1;
    sub_1C94A855C(v4, v5);
    v41 = sub_1C9469D80();
    sub_1C96A54D4();

    if (qword_1EDB7D038 != -1)
    {
      swift_once();
    }

    v6 = sub_1C96A6154();
    __swift_project_value_buffer(v6, qword_1EDB7D040);
    v7 = sub_1C96A6134();
    v8 = sub_1C96A76A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C945E000, v7, v8, "Migrator finished processing, notifying clients of store change", v9, 2u);
      MEMORY[0x1CCA8E3D0](v9, -1, -1);
    }

    v41 = 1;
    sub_1C95B91E4(&v41);
LABEL_13:
    v19 = sub_1C9469D80();
    [v19 synchronize];
    goto LABEL_19;
  }

  if (qword_1EDB7D038 != -1)
  {
    swift_once();
  }

  v20 = sub_1C96A6154();
  __swift_project_value_buffer(v20, qword_1EDB7D040);
  sub_1C96A3D04();
  v21 = sub_1C96A6134();
  v22 = sub_1C96A76A4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v23 = 141558787;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    v39 = v22;
    v24 = sub_1C9469CFC();
    v25 = [v24 dictionaryRepresentation];

    sub_1C96A6ED4();
    v26 = sub_1C96A6EE4();
    v28 = v27;

    v29 = sub_1C9484164(v26, v28, &v41);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2160;
    *(v23 + 24) = 1752392040;
    *(v23 + 32) = 2081;
    v30 = sub_1C9469D80();
    v31 = [v30 dictionaryRepresentation];

    sub_1C96A6ED4();
    v32 = sub_1C96A6EE4();
    v34 = v33;

    v35 = sub_1C9484164(v32, v34, &v41);

    *(v23 + 34) = v35;
    _os_log_impl(&dword_1C945E000, v21, v39, "Migration failed, fromContents=%{private,mask.hash}s, toContents=%{private,mask.hash}s", v23, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v40, -1, -1);
    MEMORY[0x1CCA8E3D0](v23, -1, -1);
  }

  v36 = sub_1C9469CFC();
  v37 = *(a2 + 48);
  v38 = *(a2 + 56);
  *(a2 + 48) = v36;
  *(a2 + 56) = 1;
  sub_1C94A855C(v37, v38);
  v19 = sub_1C9469CFC();
  v41 = v19;
  sub_1C96A54D4();
LABEL_19:
}

uint64_t static AppConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1C96A49F4() & 1) == 0)
  {
    goto LABEL_70;
  }

  v4 = type metadata accessor for AppConfiguration();
  OUTLINED_FUNCTION_14_24(*(v4 + 20));
  if (!v12)
  {
    goto LABEL_70;
  }

  v6 = v5;
  if (*(a1 + v5[6]) != *(a2 + v5[6]))
  {
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_14_24(v5[7]);
  if (!v12)
  {
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_14_24(v6[8]);
  if (!v12)
  {
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_14_24(v6[9]);
  if (!v12)
  {
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_14_24(v6[10]);
  if (!v12)
  {
    goto LABEL_70;
  }

  v7 = 0;
  v8 = v6[11];
  v9 = a1 + v8;
  v10 = *(a1 + v8);
  v11 = (a2 + v8);
  if (((v10 ^ *v11) & 1) == 0)
  {
    v12 = *(v9 + 8) == v11[1] && *(v9 + 16) == *(v11 + 2);
    if (v12 && *(v9 + 24) == v11[3])
    {
      OUTLINED_FUNCTION_40_7(v6[12]);
      sub_1C94BC3BC();
      if (v14)
      {
        OUTLINED_FUNCTION_45_6();
        if (!v12)
        {
          return v7 & 1;
        }

        if ((*(v15 + 1) ^ *(v16 + 1)))
        {
          return v7 & 1;
        }

        v17 = v6[14];
        v18 = *(a1 + v17 + 8);
        v19 = *(a1 + v17 + 16);
        v20 = *(a1 + v17 + 24);
        v21 = a2 + v17;
        v22 = *(v21 + 8);
        v24 = *(v21 + 16);
        v23 = *(v21 + 24);
        sub_1C94BCA20();
        v26 = v25;
        v7 = 0;
        if ((v26 & 1) == 0 || v18 != v22)
        {
          return v7 & 1;
        }

        if (v20)
        {
          if (!v23)
          {
            goto LABEL_70;
          }

          v27 = v19 == v24 && v20 == v23;
          if (!v27 && (sub_1C96A7DE4() & 1) == 0)
          {
            goto LABEL_70;
          }
        }

        else if (v23)
        {
          goto LABEL_70;
        }

        v28 = v6[15];
        v29 = *(a1 + v28);
        v30 = *(a2 + v28);
        sub_1C96A53C4();
        sub_1C96A53C4();
        v31 = sub_1C94BCAA4(v29, v30);

        if ((v31 & 1) == 0)
        {
          goto LABEL_70;
        }

        if ((static LocationsConfiguration.== infix(_:_:)((a1 + v6[16]), (a2 + v6[16])) & 1) == 0)
        {
          goto LABEL_70;
        }

        v32 = v6[17];
        memcpy(__dst, (a1 + v32), sizeof(__dst));
        memcpy(v133, (a1 + v32), sizeof(v133));
        v33 = v6[17];
        memcpy(v135, (a2 + v33), sizeof(v135));
        memcpy(__src, (a2 + v33), sizeof(__src));
        sub_1C94B7A74(__dst, v131);
        sub_1C94B7A74(v135, v131);
        v34 = OUTLINED_FUNCTION_34_7();
        LOBYTE(v33) = static MapsConfiguration.== infix(_:_:)(v34, v35);
        memcpy(v136, __src, sizeof(v136));
        sub_1C94BD530(v136);
        memcpy(v137, v133, sizeof(v137));
        sub_1C94BD530(v137);
        if ((v33 & 1) == 0)
        {
          goto LABEL_70;
        }

        v36 = OUTLINED_FUNCTION_40_7(v6[18]);
        if ((sub_1C94BD620(v36, v37) & 1) == 0)
        {
          goto LABEL_70;
        }

        v38 = v6[19];
        v39 = *(a1 + v38 + 16);
        v127[0] = *(a1 + v38);
        v127[1] = v39;
        v40 = *(a1 + v38 + 48);
        v42 = *(a1 + v38);
        v41 = *(a1 + v38 + 16);
        v127[2] = *(a1 + v38 + 32);
        v127[3] = v40;
        v133[0] = v42;
        v133[1] = v41;
        v43 = *(a1 + v38 + 48);
        v133[2] = *(a1 + v38 + 32);
        v133[3] = v43;
        v44 = (a2 + v38);
        v45 = *v44;
        v46 = v44[1];
        v47 = v44[3];
        v128[2] = v44[2];
        v128[3] = v47;
        v48 = v44[1];
        v49 = v44[2];
        v50 = *v44;
        v128[0] = v45;
        v128[1] = v48;
        __src[0] = v50;
        __src[1] = v46;
        v51 = v44[3];
        __src[2] = v49;
        __src[3] = v51;
        v52 = OUTLINED_FUNCTION_34_7();
        v54 = static NetworkConfiguration.== infix(_:_:)(v52, v53);
        v129[0] = __src[0];
        v129[1] = __src[1];
        v129[2] = __src[2];
        v129[3] = __src[3];
        sub_1C94B694C(v127, v131);
        sub_1C94B694C(v128, v131);
        sub_1C94BDA7C(v129);
        v130[0] = v133[0];
        v130[1] = v133[1];
        v130[2] = v133[2];
        v130[3] = v133[3];
        sub_1C94BDA7C(v130);
        if ((v54 & 1) == 0)
        {
          goto LABEL_70;
        }

        OUTLINED_FUNCTION_45_6();
        if (!v12)
        {
          goto LABEL_70;
        }

        v57 = *(v55 + 2);
        if ((sub_1C94BDAD0(*(v55 + 1), *(v56 + 1)) & 1) == 0)
        {
          goto LABEL_70;
        }

        if ((sub_1C94BDB98(v57) & 1) == 0)
        {
          goto LABEL_70;
        }

        v58 = v6[21];
        memcpy(v124, (a1 + v58), sizeof(v124));
        memcpy(v133, (a1 + v58), 0x70uLL);
        v59 = v6[21];
        memcpy(v125, (a2 + v59), sizeof(v125));
        memcpy(__src, (a2 + v59), 0x70uLL);
        v60 = OUTLINED_FUNCTION_34_7();
        LOBYTE(v59) = static NotificationsConfiguration.== infix(_:_:)(v60, v61);
        memcpy(v126, __src, sizeof(v126));
        sub_1C94BDC2C(v124, v123);
        sub_1C94BDC2C(v125, v123);
        sub_1C94BDE74(v126);
        memcpy(v131, v133, 0x70uLL);
        sub_1C94BDE74(v131);
        if ((v59 & 1) == 0)
        {
          goto LABEL_70;
        }

        v62 = v6[22];
        v63 = *(a1 + v62 + 16);
        v133[0] = *(a1 + v62);
        v133[1] = v63;
        v133[2] = *(a1 + v62 + 32);
        *(&v133[2] + 10) = *(a1 + v62 + 42);
        v64 = (a2 + v62);
        v65 = v64[1];
        __src[0] = *v64;
        __src[1] = v65;
        __src[2] = v64[2];
        *(&__src[2] + 10) = *(v64 + 42);
        v66 = OUTLINED_FUNCTION_34_7();
        if ((static PrivacyConfiguration.== infix(_:_:)(v66, v67) & 1) == 0)
        {
          goto LABEL_70;
        }

        memcpy(v133, (a1 + v6[23]), 0x88uLL);
        memcpy(__src, (a2 + v6[23]), 0x88uLL);
        v68 = OUTLINED_FUNCTION_34_7();
        if (!static PredictedLocationsConfiguration.== infix(_:_:)(v68, v69))
        {
          goto LABEL_70;
        }

        v70 = v6[24];
        v71 = *(a1 + v70 + 32);
        v72 = *(a1 + v70 + 16);
        v133[0] = *(a1 + v70);
        v133[1] = v72;
        *&v133[2] = v71;
        v73 = a2 + v70;
        v74 = *(v73 + 32);
        v75 = *(v73 + 16);
        __src[0] = *v73;
        __src[1] = v75;
        *&__src[2] = v74;
        v76 = OUTLINED_FUNCTION_34_7();
        if (!static WidgetPrivacyConfiguration.== infix(_:_:)(v76, v77))
        {
          goto LABEL_70;
        }

        v78 = v6[25];
        v79 = *(a1 + v78);
        v80 = *(a1 + v78 + 8);
        v81 = *(a1 + v78 + 16);
        v82 = *(a1 + v78 + 24);
        v83 = *(a1 + v78 + 32);
        v84 = a2 + v78;
        v85 = *(v84 + 16);
        v86 = *(v84 + 24);
        v87 = *(v84 + 32);
        v88 = v79 == *v84 && v80 == *(v84 + 8);
        if (!v88 && (sub_1C96A7DE4() & 1) == 0)
        {
          goto LABEL_70;
        }

        if (v81 != v85 || v82 != v86)
        {
          if (sub_1C96A7DE4() & 1) == 0 || ((v83 ^ v87))
          {
            goto LABEL_70;
          }

LABEL_63:
          OUTLINED_FUNCTION_4_24(v6[26]);
          v92 = v12 && v90 == v91;
          if (v92 || (sub_1C96A7DE4() & 1) != 0)
          {
            OUTLINED_FUNCTION_40_7(v6[27]);
            sub_1C94BDFC8();
            if (v93 & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + v6[29]), *(a2 + v6[29])), vceqq_f64(*(a1 + v6[29] + 16), *(a2 + v6[29] + 16))))))
            {
              OUTLINED_FUNCTION_4_24(v6[30]);
              v97 = v12 && v95 == v96;
              if (v97 || (sub_1C96A7DE4() & 1) != 0)
              {
                v98 = v6[31];
                v99 = *(a1 + v98 + 16);
                v133[0] = *(a1 + v98);
                v133[1] = v99;
                v100 = *(a1 + v98 + 48);
                v133[2] = *(a1 + v98 + 32);
                v133[3] = v100;
                v101 = (a2 + v98);
                v102 = v101[1];
                __src[0] = *v101;
                __src[1] = v102;
                v103 = v101[3];
                __src[2] = v101[2];
                __src[3] = v103;
                v104 = OUTLINED_FUNCTION_34_7();
                if (static WeatherMenuConfiguration.== infix(_:_:)(v104, v105))
                {
                  v106 = v6[32];
                  memcpy(v133, (a1 + v106), 0x50uLL);
                  v107 = *(a1 + v106 + 80);
                  v108 = *(a1 + v106 + 88);
                  v109 = a2 + v106;
                  memcpy(__src, (a2 + v106), 0x50uLL);
                  v110 = *(a2 + v106 + 80);
                  v111 = *(v109 + 88);
                  v112 = OUTLINED_FUNCTION_34_7();
                  if (static WidgetRefreshConfiguration.== infix(_:_:)(v112, v113) && ((v107 ^ v110) & 1) == 0 && v108 == v111)
                  {
                    v114 = OUTLINED_FUNCTION_40_7(v6[33]);
                    if (sub_1C94BE264(v114, v115))
                    {
                      OUTLINED_FUNCTION_4_24(v6[34]);
                      v118 = v12 && v116 == v117;
                      if (v118 || (sub_1C96A7DE4() & 1) != 0)
                      {
                        v119 = OUTLINED_FUNCTION_40_7(v6[35]);
                        if (sub_1C94BE38C(v119, v120))
                        {
                          v121 = OUTLINED_FUNCTION_40_7(v6[36]);
                          v7 = sub_1C94BE330(v121, v122);
                          return v7 & 1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_70;
        }

        if (v83 == v87)
        {
          goto LABEL_63;
        }
      }

LABEL_70:
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t Sequence.first<A>(map:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a1;
  v50 = a2;
  v44 = a6;
  v51 = a4;
  sub_1C96A7934();
  OUTLINED_FUNCTION_12_0();
  v47 = v10;
  v48 = v9;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  AssociatedConformanceWitness = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_0();
  v45 = v15;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  sub_1C96A7934();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  OUTLINED_FUNCTION_12_0();
  v53 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_0();
  v46 = v27;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v44 - v29;
  (*(v53 + 2))(v25, v54, a3);
  v53 = v30;
  sub_1C96A71F4();
  v54 = v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = (v45 + 32);
  v32 = (v45 + 8);
  for (i = (v47 + 8); ; (*i)(v13, v48))
  {
    sub_1C96A7944();
    if (__swift_getEnumTagSinglePayload(v21, 1, AssociatedTypeWitness) == 1)
    {
      v35 = OUTLINED_FUNCTION_0_116();
      v36(v35);
      v37 = 1;
      v34 = v51;
      v38 = v44;
      return __swift_storeEnumTagSinglePayload(v38, v37, 1, v34);
    }

    (*v31)(v18, v21, AssociatedTypeWitness);
    v49(v18);
    if (v6)
    {
      (*v32)(v18, AssociatedTypeWitness);
      v39 = OUTLINED_FUNCTION_0_116();
      return v40(v39);
    }

    (*v32)(v18, AssociatedTypeWitness);
    v34 = v51;
    if (__swift_getEnumTagSinglePayload(v13, 1, v51) != 1)
    {
      break;
    }
  }

  v42 = OUTLINED_FUNCTION_0_116();
  v43(v42);
  v38 = v44;
  (*(*(v34 - 8) + 32))(v44, v13, v34);
  v37 = 0;
  return __swift_storeEnumTagSinglePayload(v38, v37, 1, v34);
}

uint64_t OUTLINED_FUNCTION_41_5()
{

  return sub_1C9486640();
}

uint64_t OUTLINED_FUNCTION_41_6()
{

  return sub_1C96A7864();
}

uint64_t OUTLINED_FUNCTION_41_8()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_41_10(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_1C96A53C4();
}

void OUTLINED_FUNCTION_41_13(__n128 a1, __n128 a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v2[8].n128_u64[0] = 0x3FE999999999999ALL;
}

uint64_t OUTLINED_FUNCTION_41_14()
{

  return sub_1C96A7D14();
}

void sub_1C94BC3BC()
{
  OUTLINED_FUNCTION_103();
  v3 = v2;
  v5 = v4;
  v56 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57D0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v47 - v14;
  v15 = type metadata accessor for EndpointConfiguration();
  OUTLINED_FUNCTION_2_25();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_18();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_10_13();
  v21 = *(v5 + 16);
  if (v21 != *(v3 + 16) || !v21 || v5 == v3)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_3_15();
  v23 = v5 + v22;
  v24 = v3 + v22;
  OUTLINED_FUNCTION_16_13();
  v47 = 0x80000001C96CBC40;
  v48 = (v7 + 32);
  v49 = (v7 + 8);
  v50 = v12;
  v52 = *(v25 + 72);
  while (1)
  {
    sub_1C948F090(v23, v1, type metadata accessor for EndpointConfiguration);
    sub_1C948F090(v24, v19, type metadata accessor for EndpointConfiguration);
    v26 = *v19;
    v27 = 0xEA00000000004E4FLL;
    v28 = v0;
    switch(*v1)
    {
      case 1:
        v28 = 0xD000000000000010;
        v27 = v47;
        break;
      case 2:
        v27 = 0xE700000000000000;
        v28 = OUTLINED_FUNCTION_48_1();
        break;
      case 3:
        v27 = 0xE200000000000000;
        v28 = 16721;
        break;
      case 4:
        v27 = 0xE400000000000000;
        v28 = 1414743380;
        break;
      case 5:
        v27 = 0xE500000000000000;
        v28 = 0x4C45564544;
        break;
      case 6:
        v27 = 0xE500000000000000;
        v28 = 0x6C61636F6CLL;
        break;
      default:
        break;
    }

    v29 = v0;
    v30 = 0xEA00000000004E4FLL;
    switch(v26)
    {
      case 1:
        v29 = 0xD000000000000010;
        v30 = v47;
        break;
      case 2:
        v30 = 0xE700000000000000;
        OUTLINED_FUNCTION_47_0();
        break;
      case 3:
        v30 = 0xE200000000000000;
        v29 = 16721;
        break;
      case 4:
        v30 = 0xE400000000000000;
        v29 = 1414743380;
        break;
      case 5:
        v30 = 0xE500000000000000;
        v29 = 0x4C45564544;
        break;
      case 6:
        v30 = 0xE500000000000000;
        v29 = 0x6C61636F6CLL;
        break;
      default:
        break;
    }

    v31 = v28 == v29 && v27 == v30;
    if (v31)
    {

      v33 = v56;
    }

    else
    {
      v32 = sub_1C96A7DE4();

      v33 = v56;
      if ((v32 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    if ((sub_1C96A4724() & 1) == 0)
    {
LABEL_40:
      OUTLINED_FUNCTION_0_33();
      sub_1C948F150(v19, v44);
      OUTLINED_FUNCTION_14_13();
      goto LABEL_43;
    }

    v34 = *(v15 + 24);
    v35 = v55;
    v0 = *(v54 + 48);
    sub_1C947F224(&v1[v34], v55);
    sub_1C947F224(&v19[v34], v35 + v0);
    OUTLINED_FUNCTION_25_1(v35);
    if (!v31)
    {
      break;
    }

    OUTLINED_FUNCTION_25_1(v35 + v0);
    if (!v31)
    {
      OUTLINED_FUNCTION_0_33();
      sub_1C948F150(v19, v46);
      OUTLINED_FUNCTION_14_13();
      goto LABEL_42;
    }

    sub_1C9470AFC(v35, &qword_1EC3A4A70);
LABEL_34:
    if ((sub_1C96A4724() & 1) == 0 || (sub_1C96A4724() & 1) == 0)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_0_33();
    sub_1C948F150(v1, v42);
    sub_1C948F150(v19, v0);
    OUTLINED_FUNCTION_16_13();
    if ((v43 & 1) == 0)
    {
      v24 += v52;
      v23 += v52;
      if (--v21)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

  v36 = v50;
  sub_1C947F224(v35, v50);
  OUTLINED_FUNCTION_25_1(v35 + v0);
  if (!v37)
  {
    v38 = (v35 + v0);
    v39 = v53;
    (*v48)(v53, v38, v33);
    sub_1C9554C00();
    v51 = sub_1C96A6F94();
    v40 = v36;
    v0 = v19;
    v41 = *v49;
    (*v49)(v39, v56);
    v41(v40, v56);
    sub_1C9470AFC(v55, &qword_1EC3A4A70);
    if ((v51 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  OUTLINED_FUNCTION_0_33();
  sub_1C948F150(v19, v45);
  OUTLINED_FUNCTION_14_13();
  (*v49)(v36, v33);
LABEL_42:
  sub_1C9470AFC(v35, &qword_1EC3A57D0);
LABEL_43:
  OUTLINED_FUNCTION_101();
}

void sub_1C94BCA20()
{
  OUTLINED_FUNCTION_9_16();
  if (v5 && v0 && v1 != v2)
  {
    v3 = (v1 + 40);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v3 - 1) == *(v4 - 1) && *v3 == *v4;
      if (!v5 && (sub_1C96A7DE4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      v4 += 2;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_1C94BCAA4(uint64_t result, uint64_t a2)
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
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_1C96A7EE4();
      sub_1C96A53C4();
      sub_1C96A7144();
      v15 = sub_1C96A7F24();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_1C96A7DE4();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
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
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t static LocationsConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    if (a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3] && (v4 = type metadata accessor for LocationsConfiguration(), (sub_1C96A4724() & 1) != 0) && (sub_1C96A4724() & 1) != 0)
    {
      v5 = *(a1 + *(v4 + 40)) ^ *(a2 + *(v4 + 40)) ^ 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_1C94BCD18()
{
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_11_14();
  v3 = type metadata accessor for MapsConfiguration.EndpointConfiguration();
  OUTLINED_FUNCTION_2_25();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_18();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17_14();
  v9 = *(v1 + 16);
  if (v9 == *(v2 + 16) && v9 && v1 != v2)
  {
    OUTLINED_FUNCTION_3_15();
    v11 = v1 + v10;
    v12 = v2 + v10;
    v23 = *(v13 + 72);
    while (1)
    {
      sub_1C948F090(v11, v0, type metadata accessor for MapsConfiguration.EndpointConfiguration);
      sub_1C948F090(v12, v7, type metadata accessor for MapsConfiguration.EndpointConfiguration);
      v14 = *v7;
      v15 = 0xE500000000000000;
      v16 = 0x4C45564544;
      switch(*v0)
      {
        case 1:
          break;
        case 2:
          v15 = 0xE700000000000000;
          v16 = OUTLINED_FUNCTION_48_1();
          break;
        case 3:
          v15 = 0xE200000000000000;
          v16 = 16721;
          break;
        case 4:
          v16 = OUTLINED_FUNCTION_13_11();
          v15 = 0xEA00000000000000;
          break;
        case 5:
          v16 = OUTLINED_FUNCTION_13_11();
          v15 = 0xEC00000032480000;
          break;
        case 6:
          v16 = 0x6C61636F6CLL;
          break;
        default:
          v16 = 0xD000000000000017;
          v15 = 0x80000001C96CB820;
          break;
      }

      v17 = 0xE500000000000000;
      v18 = 0x4C45564544;
      switch(v14)
      {
        case 1:
          break;
        case 2:
          v17 = 0xE700000000000000;
          OUTLINED_FUNCTION_47_0();
          break;
        case 3:
          v17 = 0xE200000000000000;
          v18 = 16721;
          break;
        case 4:
          OUTLINED_FUNCTION_12_17();
          v17 = 0xEA00000000000000;
          break;
        case 5:
          OUTLINED_FUNCTION_12_17();
          v17 = 0xEC00000032480000;
          break;
        case 6:
          v18 = 0x6C61636F6CLL;
          break;
        default:
          v18 = 0xD000000000000017;
          v17 = 0x80000001C96CB820;
          break;
      }

      if (v16 == v18 && v15 == v17)
      {
      }

      else
      {
        v20 = sub_1C96A7DE4();

        if ((v20 & 1) == 0)
        {
          break;
        }
      }

      if ((sub_1C96A4724() & 1) == 0)
      {
        break;
      }

      v21 = v0[*(v3 + 28)];
      sub_1C948F150(v0, type metadata accessor for MapsConfiguration.EndpointConfiguration);
      v22 = v7[*(v3 + 28)];
      sub_1C948F150(v7, type metadata accessor for MapsConfiguration.EndpointConfiguration);
      if (((v21 ^ v22) & 1) == 0)
      {
        v12 += v23;
        v11 += v23;
        if (--v9)
        {
          continue;
        }
      }

      goto LABEL_32;
    }

    sub_1C948F150(v7, type metadata accessor for MapsConfiguration.EndpointConfiguration);
    sub_1C948F150(v0, type metadata accessor for MapsConfiguration.EndpointConfiguration);
  }

LABEL_32:
  OUTLINED_FUNCTION_101();
}

BOOL static MapsConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v31 = *(a1 + 140);
  v29 = *(a1 + 144);
  v27 = *(a1 + 152);
  v11 = *(a2 + 8);
  v12 = *(a2 + 9);
  v13 = *(a2 + 10);
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v37 = *(a1 + 137);
  v35 = *(a1 + 138);
  v36 = *(a2 + 137);
  v33 = *(a1 + 139);
  v34 = *(a2 + 138);
  v32 = *(a2 + 139);
  v30 = *(a2 + 140);
  v28 = *(a2 + 144);
  v26 = *(a2 + 152);
  sub_1C94BCD18();
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  if (v4 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v11 == 2 || ((v11 ^ v4) & 1) != 0)
    {
      return result;
    }
  }

  if (v5 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v12 == 2 || ((v12 ^ v5) & 1) != 0)
    {
      return result;
    }
  }

  if (v6 == 2)
  {
    if (v13 != 2 || v8 != v15 || v7 != v14 || v9 != v16)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v13 == 2 || ((v13 ^ v6) & 1) != 0)
    {
      return result;
    }

    v23 = v8 == v15 && v7 == v14;
    if (!v23 || v9 != v16)
    {
      return result;
    }
  }

  if (v10 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v17 == 2 || ((v17 ^ v10) & 1) != 0)
    {
      return result;
    }
  }

  if ((sub_1C94BD364() & 1) == 0 || (static MapsConfiguration.ZoomLevelsConfiguration.== infix(_:_:)(a1 + 48, a2 + 48) & 1) == 0)
  {
    return 0;
  }

  if (v37 == 2)
  {
    if (v36 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v36 == 2 || ((v36 ^ v37) & 1) != 0)
    {
      return result;
    }
  }

  if (v35 == 2)
  {
    if (v34 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v34 == 2 || ((v34 ^ v35) & 1) != 0)
    {
      return result;
    }
  }

  if (v33 == 2)
  {
    if (v32 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v32 == 2 || ((v32 ^ v33) & 1) != 0)
    {
      return result;
    }
  }

  if (v31 == 2)
  {
    if (v30 != 2 || v29 != v28)
    {
      return 0;
    }

    return v27 == v26;
  }

  result = 0;
  if (v30 != 2 && ((v30 ^ v31) & 1) == 0 && v29 == v28)
  {
    return v27 == v26;
  }

  return result;
}

uint64_t sub_1C94BD364()
{
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_45_3();
  v4 = v3;
  v5 = v2;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v5 = 0x696C617551726961;
      v6 = 0xEA00000000007974;
      break;
    case 2:
      v5 = 0x74617265706D6574;
      v6 = 0xEB00000000657275;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v5 = 1684957559;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_43_3();
      v0 = 0xEA00000000007974;
      break;
    case 2:
      OUTLINED_FUNCTION_49_2();
      v0 = 0xEB00000000657275;
      break;
    case 3:
      v0 = 0xE400000000000000;
      v2 = 1684957559;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_11();
  }

  return v8 & 1;
}

uint64_t OUTLINED_FUNCTION_55()
{

  return sub_1C96A7CB4();
}

uint64_t static MapsConfiguration.ZoomLevelsConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48)))))) & 1) != 0 && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
  {
    if (*(a1 + 88))
    {
      if ((*(a2 + 88) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 80) == *(a2 + 80))
      {
        v5 = *(a2 + 88);
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1C94BD620(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = a2 + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_52;
      }

      v6 = v4 + 80 * v3;
      result = *v6;
      v7 = *(v6 + 8);
      v8 = *(v6 + 16);
      v9 = *(v6 + 24);
      v10 = *(v6 + 32);
      v11 = *(v6 + 33);
      v12 = *(v6 + 34);
      v13 = *(v6 + 40);
      v14 = *(v6 + 48);
      v15 = *(v6 + 56);
      v17 = *(v6 + 64);
      v16 = *(v6 + 72);
      v18 = v5 + 80 * v3;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = *(v18 + 32);
      v22 = *(v18 + 33);
      v23 = *(v18 + 34);
      v24 = *(v18 + 40);
      v25 = *(v18 + 48);
      v26 = *(v18 + 56);
      v27 = result == *v18 && v7 == *(v18 + 8);
      v28 = *(v18 + 64);
      v29 = *(v18 + 72);
      if (v27)
      {
        if (v8 != v19)
        {
          return 0;
        }
      }

      else
      {
        v52 = *(v18 + 24);
        v53 = v9;
        v54 = *(v18 + 32);
        v55 = *(v18 + 33);
        v56 = *(v18 + 34);
        v57 = *(v18 + 40);
        v58 = *(v18 + 56);
        v59 = v11;
        v60 = v12;
        v51 = v13;
        v50 = v15;
        v30 = v2;
        v31 = *(v18 + 64);
        v32 = v3;
        v33 = v17;
        v34 = *(v18 + 72);
        v35 = v16;
        v36 = v5;
        v37 = v4;
        v38 = sub_1C96A7DE4();
        result = 0;
        if ((v38 & 1) == 0)
        {
          return result;
        }

        v4 = v37;
        v5 = v36;
        v16 = v35;
        v29 = v34;
        v17 = v33;
        v3 = v32;
        v28 = v31;
        v2 = v30;
        v15 = v50;
        v13 = v51;
        v20 = v52;
        v11 = v59;
        v12 = v60;
        v26 = v58;
        v24 = v57;
        v22 = v55;
        v23 = v56;
        v21 = v54;
        v9 = v53;
        if ((v8 ^ v19))
        {
          return result;
        }
      }

      v39 = *(v9 + 16);
      if (v39 != *(v20 + 16))
      {
        return 0;
      }

      if (v39)
      {
        v40 = v9 == v20;
      }

      else
      {
        v40 = 1;
      }

      if (!v40)
      {
        v41 = (v9 + 32);
        v42 = (v20 + 32);
        while (v39)
        {
          if (*v41 != *v42)
          {
            return 0;
          }

          ++v41;
          ++v42;
          if (!--v39)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        __break(1u);
        __break(1u);
LABEL_52:
        __break(1u);
        return result;
      }

LABEL_23:
      result = 0;
      if (v10 != v21 || ((v11 ^ v22) & 1) != 0 || ((v12 ^ v23) & 1) != 0 || v13 != v24)
      {
        return result;
      }

      if (v15)
      {
        if (!v26)
        {
          return 0;
        }
      }

      else
      {
        if (v14 == v25)
        {
          v43 = v26;
        }

        else
        {
          v43 = 1;
        }

        if (v43)
        {
          return 0;
        }
      }

      v44 = *(v17 + 16);
      if (v44 != *(v28 + 16))
      {
        return 0;
      }

      if (v44 && v17 != v28)
      {
        break;
      }

LABEL_40:
      v47 = *(v16 + 16);
      if (v47 != *(v29 + 16))
      {
        return 0;
      }

      if (v47 && v16 != v29)
      {
        v48 = (v16 + 32);
        v49 = (v29 + 32);
        while (*v48 == *v49)
        {
          ++v48;
          ++v49;
          if (!--v47)
          {
            goto LABEL_46;
          }
        }

        return 0;
      }

LABEL_46:
      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v45 = (v17 + 32);
    v46 = (v28 + 32);
    while (*v45 == *v46)
    {
      ++v45;
      ++v46;
      if (!--v44)
      {
        goto LABEL_40;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t static NetworkConfiguration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 4);
  v4 = a1[40];
  v5 = *(a2 + 4);
  v6 = a2[40];
  v18 = *(a2 + 6);
  v19 = *(a1 + 6);
  v16 = *(a2 + 7);
  v17 = *(a1 + 7);
  v7 = *(a2 + 3);
  v8 = a2[18];
  v9 = a2[17];
  v10 = a2[16];
  v11 = *(a1 + 3);
  v12 = a1[18];
  v13 = a1[17];
  v14 = a1[16];
  if ((sub_1C94BDA20(*(a1 + 1), *(a2 + 1)) & 1) == 0 || ((v10 ^ v14) & 1) != 0 || ((v9 ^ v13) & 1) != 0 || ((v8 ^ v12) & 1) != 0 || v11 != v7)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v5)
    {
      v15 = v6;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if ((sub_1C94BDA20(v19, v18) & 1) == 0)
  {
    return 0;
  }

  return sub_1C94BDA20(v17, v16);
}

uint64_t sub_1C94BDA20(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C94BDAD0(char a1, char a2)
{
  v2 = 0xEF7974696C617551;
  v3 = 0x72694165766F6261;
  if (a1)
  {
    OUTLINED_FUNCTION_28_7();
    if (v5 == 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v6;
    }

    else
    {
      v10 = (v4 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0x72694165766F6261;
    v10 = 0xEF7974696C617551;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_28_7();
    v16 = (v15 - 32) | 0x8000000000000000;
    if (v11 == 1)
    {
      v3 = v13;
    }

    else
    {
      v3 = v14;
    }

    if (v11 == 1)
    {
      v2 = v12;
    }

    else
    {
      v2 = v16;
    }
  }

  if (v9 == v3 && v10 == v2)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_10_11();
  }

  return v18 & 1;
}

uint64_t sub_1C94BDB98(char a1)
{
  if (a1)
  {
    v2 = "aboveDailyForecast";
  }

  else
  {
    v2 = "belowVisibilityAndPressure";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_27_6();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_5_16();
  }

  return v5 & 1;
}

BOOL static NotificationsConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12 = *(a1 + 80);
  v11 = *(a1 + 88);
  v14 = *(a1 + 96);
  v13 = *(a1 + 104);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  v20 = *(a2 + 64);
  v19 = *(a2 + 72);
  v21 = *(a2 + 80);
  v22 = *(a2 + 88);
  v23 = *(a2 + 96);
  v24 = *(a2 + 104);
  if (v5)
  {
    if (!v15)
    {
      return 0;
    }

    if (*(a1 + 24) != *(a2 + 24) || v5 != v15)
    {
      v56 = *(a1 + 80);
      v58 = *(a1 + 72);
      v52 = *(a2 + 104);
      v54 = *(a1 + 88);
      v26 = *(a1 + 96);
      v27 = *(a1 + 104);
      v28 = *(a1 + 64);
      v29 = *(a2 + 80);
      v30 = *(a2 + 88);
      v31 = *(a2 + 96);
      v32 = *(a2 + 64);
      v33 = *(a2 + 72);
      v34 = sub_1C96A7DE4();
      v19 = v33;
      v20 = v32;
      v23 = v31;
      v22 = v30;
      v21 = v29;
      v9 = v28;
      v13 = v27;
      v14 = v26;
      v24 = v52;
      v11 = v54;
      v12 = v56;
      v10 = v58;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v7)
  {
    if (v17)
    {
      if (v6 != v16 || v7 != v17)
      {
        v53 = v19;
        v55 = v23;
        v57 = v9;
        v59 = v13;
        v36 = sub_1C96A7DE4();
        result = 0;
        if ((v36 & 1) == 0)
        {
          return result;
        }

        v37 = v8 == v18 && v57 == v20;
        v38 = v37 && v10 == v53;
        v39 = v38 && v12 == v21;
        v40 = v39 && v11 == v22;
        v41 = v40 && v14 == v55;
        v13 = v59;
        if (!v41)
        {
          return result;
        }

        return v13 == v24;
      }

      if (v8 == v18 && v9 == v20 && v10 == v19 && v12 == v21 && v11 == v22 && v14 == v23)
      {
        return v13 == v24;
      }
    }

    return 0;
  }

  result = 0;
  if (!v17)
  {
    v42 = v8 == v18 && v9 == v20;
    v43 = v42 && v10 == v19;
    v44 = v43 && v12 == v21;
    v45 = v44 && v11 == v22;
    if (v45 && v14 == v23)
    {
      return v13 == v24;
    }
  }

  return result;
}

uint64_t static PrivacyConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16)))));
  v2.i16[0] = vmaxv_u16(v2);
  return (*(a1 + 48) == *(a2 + 48)) & ~(v2.i32[0] | (*(a1 + 32) != *(a2 + 32)) | (*(a1 + 40) != *(a2 + 40)) | *(a1 + 56) ^ *(a2 + 56) | *(a2 + 57) ^ *(a1 + 57));
}

void sub_1C94BDFC8()
{
  OUTLINED_FUNCTION_9_16();
  if (v7 && v0 && v1 != v2)
  {
    v3 = (v1 + 48);
    v4 = (v2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      v7 = *(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1);
      if (v7)
      {
        if (v5 != v6)
        {
          return;
        }
      }

      else if ((sub_1C96A7DE4() & 1) == 0 || v5 != v6)
      {
        return;
      }

      v3 += 3;
      v4 += 3;
      --v0;
    }

    while (v0);
  }
}

uint64_t static WeatherMenuConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 41);
  v11 = *(a2 + 48);
  v10 = *(a2 + 56);
  v12 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v12;
  v18 = v2;
  v13 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v13;
  v16 = v7;
  if (!static WeatherMenuRefreshConfiguration.== infix(_:_:)(v17, v15))
  {
    return 0;
  }

  if (v5 == v10)
  {
    return (v6 == v11) & ~(v3 ^ v8 | v4 ^ v9);
  }

  return 0;
}

BOOL static WidgetRefreshConfiguration.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])), vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3]))))) & 1) == 0)
  {
    return 0;
  }

  if (a1[4].f64[1] == a2[4].f64[1])
  {
    return a1[4].f64[0] == a2[4].f64[0];
  }

  return 0;
}

uint64_t sub_1C94BE204(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C94BE264(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1C96A7DE4() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1C96A7DE4() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C94BE330(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C94BE38C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C94BE3E8@<X0>(uint64_t *a1@<X8>)
{
  result = PredictedLocationsNotificationSubscription.Kind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t AppConfigurationManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  sub_1C96A50E4();
  v3 = OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_observers;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v11 = MEMORY[0x1E69E7CC0];
  v5 = sub_1C946D04C(v4);
  result = sub_1C96A53C4();
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      *(v2 + v3) = v11;

      type metadata accessor for AppConfigurationManagerObserverProxy();
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

uint64_t NotificationAuthorizationManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  sub_1C96A50E4();
  swift_beginAccess();
  v4 = *(v2 + 32);
  v11 = MEMORY[0x1E69E7CC0];
  v5 = sub_1C946D04C(v4);
  result = sub_1C96A53C4();
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      *(v2 + 32) = v11;

      type metadata accessor for NotificationAuthorizationManagerObserverProxy();
      swift_allocObject();
      v8 = swift_unknownObjectRetain();
      sub_1C94AC734(v8, a2);
      v9 = swift_beginAccess();
      MEMORY[0x1CCA8CC10](v9);
      sub_1C94AC1D4(*((*(v2 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1C96A7314();
      swift_endAccess();
      sub_1C96A50F4();
      return sub_1C94BE8F8(a1, a2);
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

uint64_t sub_1C94BE8F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C96A6564();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C96A65E4();
  v10 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + 56);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1C94BED98;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C946FCF8;
  aBlock[3] = &block_descriptor_12;
  v14 = _Block_copy(aBlock);
  sub_1C96A3D04();
  swift_unknownObjectRetain();
  sub_1C96A6594();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1C9469BD0(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
  sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370);
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

Swift::Bool __swiftcall NotificationsOptInManager.tipDismissalOverThreshold()()
{
  OUTLINED_FUNCTION_1_43();
  v0 = sub_1C96A7004();
  v1 = OUTLINED_FUNCTION_2_45();
  v3 = [v1 v2];

  return v3 > 1;
}

Swift::Bool __swiftcall NotificationsOptInManager.resubscriptionTipDismissed()()
{
  OUTLINED_FUNCTION_1_43();
  v0 = sub_1C96A7004();
  v1 = OUTLINED_FUNCTION_2_45();
  v3 = [v1 v2];

  return v3;
}

Swift::Bool __swiftcall NotificationsOptInManager.severeAcknowledged()()
{
  OUTLINED_FUNCTION_1_43();
  v0 = sub_1C96A7004();
  v1 = OUTLINED_FUNCTION_2_45();
  v3 = [v1 v2];

  return v3;
}

void sub_1C94BEDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v9[4] = sub_1C94C2148;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1C94C20E0;
  v9[3] = &block_descriptor_18;
  v8 = _Block_copy(v9);
  sub_1C96A3D04();
  swift_unknownObjectRetain();

  [v6 getNotificationSettingsWithCompletionHandler_];
  _Block_release(v8);
}

void *NotificationsOptInManager.dismissedLocationIds()()
{
  OUTLINED_FUNCTION_1_43();
  v0 = sub_1C96A7004();
  v1 = OUTLINED_FUNCTION_2_45();
  v3 = [v1 v2];

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1C96A6ED4();

  return sub_1C94BEF98(v4);
}

void *sub_1C94BEF98(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1C94FBD00(*(a1 + 16), 0);
  v4 = sub_1C95A4004(&v6, v3 + 4, v2, a1);
  sub_1C95A4160();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t NotificationsOptInManager.lastTipDismissalDate()()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_1_43();
  v2 = sub_1C96A7004();
  [v1 doubleForKey_];

  return sub_1C96A49D4();
}

Swift::Bool __swiftcall NotificationsOptInManager.tappedAllowLocation()()
{
  OUTLINED_FUNCTION_1_43();
  v0 = sub_1C96A7004();
  v1 = OUTLINED_FUNCTION_2_45();
  v3 = [v1 v2];

  return v3;
}

Swift::Bool __swiftcall NotificationsOptInManager.tappedAllowNotifications()()
{
  OUTLINED_FUNCTION_1_43();
  v0 = sub_1C96A7004();
  v1 = OUTLINED_FUNCTION_2_45();
  v3 = [v1 v2];

  return v3;
}

Swift::Bool __swiftcall NotificationsOptInManager.enteredSettingsApp()()
{
  OUTLINED_FUNCTION_1_43();
  v0 = sub_1C96A7004();
  v1 = OUTLINED_FUNCTION_2_45();
  v3 = [v1 v2];

  return v3;
}

uint64_t objectdestroy_8Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t dispatch thunk of PredictedLocationsAuthorizationManagerType.fetchAuthorization()()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v10 = (*(v0 + 8) + **(v0 + 8));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_17_1(v6);
  *v7 = v8;
  v7[1] = sub_1C94B0CEC;

  return v10(v5, v3, v1);
}

uint64_t sub_1C94BF410()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0C0C;

  return PredictedLocationsAuthorizationManager.fetchAuthorization()();
}

uint64_t PredictedLocationsAuthorizationManager.fetchAuthorization()()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v1[5] = sub_1C96A5B24();
  sub_1C96A5B14();
  sub_1C95E1D94();
  v4 = sub_1C96A7374();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C94BF564, v4, v3);
}

uint64_t sub_1C94BF564()
{
  OUTLINED_FUNCTION_39();
  v8 = v0;
  v2 = v0[3];
  v1 = v0[4];
  os_unfair_lock_lock((v2 + 16));
  sub_1C94BF668((v2 + 24), v2, v1, &v7);
  os_unfair_lock_unlock((v2 + 16));
  v3 = v7;
  v0[8] = v7;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1C94C0CC4;
  v5 = v0[2];

  return MEMORY[0x1EEE6DA40](v5, v3, &type metadata for PredictedLocationsAuthorization);
}

uint64_t sub_1C94BF668@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  if (*a1)
  {
    v11 = *a1;
  }

  else
  {
    v12 = sub_1C96A7414();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
    sub_1C96A3D04();
    v13 = sub_1C96A5B24();
    v14 = sub_1C95E1D94();
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v14;
    v15[4] = a2;
    v15[5] = a3;
    sub_1C951C904();
    v11 = v16;
    *a1 = v16;
    sub_1C96A3D04();
  }

  *a4 = v11;
  return sub_1C96A3D04();
}

uint64_t sub_1C94BF7A0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C78);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C94BF7D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t dispatch thunk of NotificationSubscriptionManagerType.isSubscriptionAvailable.getter()
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

uint64_t OUTLINED_FUNCTION_67(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 264) = a4;
  *(v4 - 272) = a3;
  *(v4 - 280) = a2;
  *(v4 - 288) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_67_4()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_67_5()
{
  *(v0 + 14) = v1;
}

uint64_t NotificationSubscriptionManager.isSubscriptionAvailable.getter()
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

uint64_t sub_1C94BFA90()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_4(v1);

  return v4(v3);
}

uint64_t sub_1C94BFB20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94C0604;

  return NotificationSubscriptionManager.isSubscriptionAvailable.getter();
}

uint64_t sub_1C94BFBBC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C9522840;

  return v6(a1);
}

uint64_t sub_1C94BFCB4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C94BFCD4, v1, 0);
}

uint64_t sub_1C94BFCD4()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_1C94ACD20();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1C94BFD80;
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v2, v1, v3);
}

uint64_t sub_1C94BFD80()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1C94BFE98()
{
  OUTLINED_FUNCTION_30();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = 184;
  if (*(v1 + 240))
  {
    v3 = 144;
  }

  v4 = 160;
  if (*(v1 + 240))
  {
    v4 = 120;
  }

  v5 = 192;
  if (*(v1 + 240))
  {
    v5 = 152;
  }

  v6 = *(v1 + v5);
  v7 = *(v1 + v3);
  __swift_project_boxed_opaque_existential_1((v1 + v4), v7);
  v2[3] = v7;
  v2[4] = *(v6 + 8);
  __swift_allocate_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_8_1();
  (*(v8 + 16))();
  OUTLINED_FUNCTION_17();

  return v9();
}

uint64_t sub_1C94BFF78()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C94C0070()
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

uint64_t sub_1C94C016C()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_9_32(v4);

  return sub_1C94C0270(v6, v7, v8, v2, v1);
}

void OUTLINED_FUNCTION_76_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_76_3()
{
}

uint64_t sub_1C94C0270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a4;
  v5[4] = sub_1C96A5B24();
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_1C95E1DEC;

  return sub_1C95E20F8((v5 + 6), a4, a5);
}

uint64_t sub_1C94C0320()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  *(v4 + 80) = v3;

  v5 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C94C0420()
{
  OUTLINED_FUNCTION_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_74();
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_1C94C047C()
{
  result = sub_1C94C04A0();
  byte_1EDB7B0E9 = result & 1;
  return result;
}

uint64_t sub_1C94C04A0()
{
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7CBF8 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  if (v2 == 1)
  {
    sub_1C96A5224();
    if (sub_1C96A5214())
    {
      return 1;
    }
  }

  sub_1C96A4EC4();
  if (qword_1EDB7CBC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C96A4ED4();

  if (v1 & 1) == 0 || ([objc_opt_self() isIPad])
  {
    return 0;
  }

  if (qword_1EDB7B0F8 != -1)
  {
    swift_once();
  }

  return byte_1EDB7B100;
}

uint64_t sub_1C94C0604()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_27();
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;

  OUTLINED_FUNCTION_74();

  return v5(v2);
}

uint64_t sub_1C94C06F4()
{
  v0 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v13 = v12 - v11;
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, qword_1EDB80028);
  (*(v9 + 16))(v13, v14, v7);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E90], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7CC00 = result;
  return result;
}

uint64_t sub_1C94C08D0()
{
  v0 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v13 = v12 - v11;
  v14 = sub_1C96A4E64();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14();
  v20 = v19 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5240);
  (*(v16 + 104))(v20, *MEMORY[0x1E69D6D08], v14);
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v7, qword_1EDB80028);
  (*(v9 + 16))(v13, v21, v7);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E90], v0);
  result = sub_1C96A4F64();
  qword_1EDB7CBD0 = result;
  return result;
}

uint64_t dispatch thunk of NotificationSubscriptionManagerType.subscriptions(of:)()
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

uint64_t OUTLINED_FUNCTION_57_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_57_2(char a1@<W8>)
{
  v4 = (v3 + v2);
  *v4 = a1 & 1;
  v4[1] = v1;
}

uint64_t OUTLINED_FUNCTION_57_3@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 264) = *(a1 + 8);
  return result;
}

void OUTLINED_FUNCTION_83_1()
{
  v3 = *(v1 + *(v0 + 44));
}

uint64_t sub_1C94C0CC4()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_15();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1C94C0DD8, v5, v4);
}

uint64_t sub_1C94C0DD8()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C94C0E3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94C1BD4;

  return NotificationSubscriptionManager.subscriptions(of:)();
}

uint64_t NotificationSubscriptionManager.subscriptions(of:)()
{
  OUTLINED_FUNCTION_18();
  v3 = *v2;
  v1[8] = v0;
  v1[9] = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v1[10] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_34_2(v4);

  return sub_1C94BFCB4(v6);
}

uint64_t sub_1C94C0F60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C94C1058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_49();
  v11 = v10[9];
  OUTLINED_FUNCTION_19_7(v10 + 2);
  v10[7] = v11;
  OUTLINED_FUNCTION_12_3();
  v12 = swift_task_alloc();
  v10[11] = v12;
  *v12 = v10;
  v12[1] = sub_1C94C1CC0;
  OUTLINED_FUNCTION_122_0();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C94C1178()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94C1BD4;

  return sub_1C94C1210();
}

uint64_t sub_1C94C1210()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v1[7] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  OUTLINED_FUNCTION_7(v4);
  v1[8] = OUTLINED_FUNCTION_12_4();
  v5 = type metadata accessor for NotificationSubscription(0);
  v1[9] = v5;
  OUTLINED_FUNCTION_9(v5);
  v1[10] = v6;
  v1[11] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *v3;
  v1[12] = v7;
  v1[13] = v8;
  v1[14] = sub_1C96A5E34();
  sub_1C96A5E24();
  OUTLINED_FUNCTION_14_40();
  sub_1C9487720(v9, v10);
  v12 = sub_1C96A7374();
  v1[15] = v12;
  v1[16] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1C94C1368, v12, v11);
}

uint64_t sub_1C94C1368()
{
  OUTLINED_FUNCTION_30();
  v1 = v0[13];
  v2 = sub_1C94C1424();
  v0[17] = sub_1C94C1658(v2, v1);

  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1C96A0BBC;

  return sub_1C969C27C();
}

uint64_t sub_1C94C1424()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  (*(v2 + 8))(&v6, 0xD000000000000019, 0x80000001C96D9430, MEMORY[0x1E6969080], v1, v2);
  v3 = v7;
  if (v7 >> 60 == 15)
  {
    return sub_1C96A6F04();
  }

  v4 = v6;
  sub_1C96A4184();
  swift_allocObject();
  sub_1C96A4174();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8860);
  sub_1C96A37E8(&qword_1EC3A8868, sub_1C96A36E4);
  sub_1C96A4154();
  sub_1C9485BFC(v4, v3);

  return v6;
}

unint64_t *sub_1C94C1658(uint64_t a1, unint64_t *a2)
{
  v4 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    sub_1C96A3D04();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      a2 = sub_1C96A3280(v10, v6, v4, a2);
      MEMORY[0x1CCA8E3D0](v10, -1, -1);
      return a2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v7 = (v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1C94C18E0(0, v6, v7);
  v8 = sub_1C94C17C8(v7, v6, v4, a2);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return a2;
}

unint64_t *sub_1C94C17C8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  while (v9)
  {
    v10 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v11 = v10 | (v6 << 6);
LABEL_11:
    v14 = *(a3 + 56) + 40 * v11;
    v15 = *(v14 + 32);
    v16 = *(v14 + 33);
    v17 = v15 & 1;
    if (v16)
    {
      v18 = v15 & 1 | 2;
    }

    else
    {
      v18 = v15 & 1;
    }

    if (v16 == 2)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    if ((v19 & a4) != 0)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_1C94C1944(result, a2, v5, a3);
      }
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= ((v7 + 63) >> 6))
    {
      return sub_1C94C1944(result, a2, v5, a3);
    }

    v13 = *(a3 + 64 + 8 * v6);
    ++v12;
    if (v13)
    {
      v9 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C94C18E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C96AEF60;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C94C1944(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    sub_1C96A3D04();
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8878);
  result = sub_1C96A7BD4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v35 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = (*(v4 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v4 + 56) + 40 * v16;
    v21 = *(v20 + 8);
    v22 = *(v20 + 24);
    v38 = *(v20 + 16);
    v39 = *v20;
    v36 = *(v20 + 33);
    v37 = *(v20 + 32);
    sub_1C96A7EE4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A7144();
    result = sub_1C96A7F24();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v18;
    v31[1] = v19;
    v32 = *(v9 + 56) + 40 * v26;
    *v32 = v39;
    *(v32 + 8) = v21;
    *(v32 + 16) = v38;
    *(v32 + 24) = v22;
    *(v32 + 32) = v37;
    *(v32 + 33) = v36;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v34;
    v10 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v35 = (v15 - 1) & v15;
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

uint64_t sub_1C94C1BD4()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_27();
  v4 = *v1;
  OUTLINED_FUNCTION_15();
  *v5 = v4;

  OUTLINED_FUNCTION_74();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1C94C1CC0()
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
  v5[12] = v0;

  v9 = v5[8];
  if (v0)
  {
    v10 = sub_1C951E5AC;
  }

  else
  {
    v5[13] = v3;
    v10 = sub_1C94C2B84;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1C94C1DD4()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_27();
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;

  OUTLINED_FUNCTION_74();

  return v5(v2);
}

WeatherCore::PredictedLocationsNotificationSubscription __swiftcall NotificationSubscriptionManager.predictedLocationsSubscription()()
{
  v1 = v0;
  if (qword_1EDB78B08 != -1)
  {
    OUTLINED_FUNCTION_6_12();
  }

  v2 = qword_1EDB78B10;
  v3 = sub_1C96A7004();
  LOBYTE(v2) = [v2 BOOLForKey_];

  *v1 = v2;
  return result;
}

uint64_t sub_1C94C1F78()
{
  sub_1C96A4FD4();
  sub_1C96A4FB4();
  v0 = sub_1C96A4FA4();

  qword_1EDB78B10 = v0;
  return result;
}

Swift::Bool __swiftcall NotificationSubscriptionManager.resubscribedAfterDeviceRestoreOnce()()
{
  if (qword_1EDB78B20 != -1)
  {
    OUTLINED_FUNCTION_57_0();
  }

  v0 = qword_1EDB78B28;
  v1 = sub_1C96A7004();
  LOBYTE(v0) = [v0 BOOLForKey_];

  return v0;
}

id sub_1C94C2074()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_1EDB78B28 = result;
  return result;
}

uint64_t Location.Identifier.id.getter()
{
  v1 = *v0;
  sub_1C96A53C4();
  return v1;
}

void sub_1C94C20E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1C96A3D04();
  v4 = a2;
  v3();
}

void static LocationModel.== infix(_:_:)()
{
  OUTLINED_FUNCTION_103();
  v1 = type metadata accessor for SavedLocation();
  v2 = OUTLINED_FUNCTION_7(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v55 = v4 - v3;
  v5 = OUTLINED_FUNCTION_15_4();
  v6 = type metadata accessor for LocationModelData(v5);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v53 = v8 - v9;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v54 = &v52 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v52 - v16;
  OUTLINED_FUNCTION_15_4();
  v17 = type metadata accessor for CurrentLocation();
  v18 = OUTLINED_FUNCTION_7(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_44_2();
  type metadata accessor for LocationModel(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v52 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5AA8);
  OUTLINED_FUNCTION_7(v26);
  OUTLINED_FUNCTION_71();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v52 - v29;
  v31 = (&v52 + *(v28 + 56) - v29);
  sub_1C949E000();
  sub_1C949E000();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_31();
    sub_1C949E000();
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5948) + 48);
    OUTLINED_FUNCTION_37_5();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_6_22();
      v33 = v55;
      sub_1C94A8124();
      OUTLINED_FUNCTION_21_12();
      v34 = v54;
      sub_1C94A8124();
      v35 = v53;
      sub_1C94A8124();
      v36 = static SavedLocation.== infix(_:_:)(v22, v33);
      OUTLINED_FUNCTION_1_31();
      sub_1C949A950(v22, v37);
      if (v36)
      {
        static LocationModelData.== infix(_:_:)();
        OUTLINED_FUNCTION_18_13();
        sub_1C949A950(v35, v38);
        sub_1C949A950(v34, v31);
      }

      else
      {
        OUTLINED_FUNCTION_23_9();
        sub_1C949A950(v35, v50);
        sub_1C949A950(v34, v36);
      }

      OUTLINED_FUNCTION_1_31();
      v40 = v33;
LABEL_15:
      sub_1C949A950(v40, v39);
      OUTLINED_FUNCTION_24_7();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_0_43();
    sub_1C949A950(v22 + v32, v45);
    OUTLINED_FUNCTION_1_31();
    v44 = v22;
  }

  else
  {
    OUTLINED_FUNCTION_2_31();
    sub_1C949E000();
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5940) + 48);
    OUTLINED_FUNCTION_37_5();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_5_21();
      sub_1C94A8124();
      OUTLINED_FUNCTION_21_12();
      v46 = v52;
      sub_1C94A8124();
      sub_1C94A8124();
      v47 = static CurrentLocation.== infix(_:_:)(v25, v0);
      OUTLINED_FUNCTION_3_23();
      sub_1C949A950(v25, v48);
      if (v47)
      {
        static LocationModelData.== infix(_:_:)();
        OUTLINED_FUNCTION_18_13();
        sub_1C949A950(v15, v49);
        sub_1C949A950(v46, v31);
      }

      else
      {
        OUTLINED_FUNCTION_23_9();
        sub_1C949A950(v15, v51);
        sub_1C949A950(v46, v47);
      }

      OUTLINED_FUNCTION_3_23();
      v40 = v0;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_0_43();
    sub_1C949A950(&v25[v41], v42);
    OUTLINED_FUNCTION_3_23();
    v44 = v25;
  }

  sub_1C949A950(v44, v43);
  sub_1C9470AFC(v30, &qword_1EC3A5AA8);
LABEL_16:
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C94C25D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C96A6564();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C96A65E4();
  v11 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 24) = sub_1C94C28C4();
  v17[1] = *(a2 + 48);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a2;
  aBlock[4] = sub_1C94C300C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C946FCF8;
  aBlock[3] = &block_descriptor_24;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_1C96A3D04();
  sub_1C96A6594();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1C9469BD0(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
  sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370);
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v18);
}

unint64_t sub_1C94C28C4()
{
  v1 = [v0 authorizationStatus];
  if (v1 < 5)
  {
    return 0x201010200uLL >> (8 * v1);
  }

  sub_1C96A7A94();

  v3 = [v0 description];
  v4 = sub_1C96A7024();
  v6 = v5;

  MEMORY[0x1CCA8CB00](v4, v6);

  result = sub_1C96A7BA4();
  __break(1u);
  return result;
}

uint64_t sub_1C94C29E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static LocationOfInterest.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for LocationOfInterest();
  if ((static Location.== infix(_:_:)(&a1[v4[5]], &a2[v4[5]]) & 1) == 0 || a1[v4[6]] != a2[v4[6]])
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_44();
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v10 = *v8 == *v9 && v6 == v7;
    if (!v10 && (sub_1C96A7DE4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_44();
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  v15 = *v13 == *v14 && v11 == v12;
  if (!v15 && (sub_1C96A7DE4() & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v16 = v4[9];
  v17 = *&a1[v16];
  v18 = *&a1[v16 + 8];
  v19 = &a2[v16];
  if (v17 == *v19 && v18 == *(v19 + 1))
  {
    return 1;
  }

  return sub_1C96A7DE4();
}

uint64_t sub_1C94C2B84()
{
  OUTLINED_FUNCTION_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_74();
  v2 = *(v0 + 104);

  return v1(v2);
}

Swift::Void __swiftcall UnitManager.refreshUnitsFromStorage()()
{
  sub_1C9486640();
  v0 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1 = OUTLINED_FUNCTION_66();
  v2(v1, v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_1C94C2C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[3] = *a3;
  v11[4] = &protocol witness table for NotificationAuthorizationManager;
  v11[0] = a3;
  v4 = *(a3 + 24);
  if (v4 == 3)
  {
    sub_1C9558DB0();
    v5 = swift_allocError();
    v6 = 1;
  }

  else
  {
    v5 = sub_1C94C3018(v4);
    v6 = v7;
  }

  ObjectType = swift_getObjectType();
  v9 = *(a2 + 8);
  sub_1C96A3D04();
  v9(v11, v5, v6 & 1, ObjectType, a2);
  sub_1C94C30F8(v5, v6 & 1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

void sub_1C94C2D80()
{
  sub_1C96A50E4();
  v1 = *(v0 + 84);
  osloga = *(v0 + 85);
  v2 = *(v0 + 80);
  sub_1C9484F64(&v24);
  v3 = v24;
  v4 = BYTE1(v24);
  v5 = BYTE2(v24);
  v6 = BYTE3(v24);
  v7 = BYTE4(v24);
  v8 = BYTE5(v24);
  sub_1C96A50F4();
  LODWORD(v24) = v2;
  BYTE4(v24) = v1;
  BYTE5(v24) = osloga;
  OUTLINED_FUNCTION_2_72();
  if (sub_1C948822C(&v24, v25))
  {
    if (qword_1EDB80080 != -1)
    {
      OUTLINED_FUNCTION_0_79();
    }

    v9 = sub_1C96A6154();
    __swift_project_value_buffer(v9, qword_1EDB80088);
    oslog = sub_1C96A6134();
    v10 = sub_1C96A76A4();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C945E000, oslog, v10, "No new units in store", v11, 2u);
      OUTLINED_FUNCTION_20();
    }

    OUTLINED_FUNCTION_18_3();
  }

  else
  {
    if (qword_1EDB80080 != -1)
    {
      OUTLINED_FUNCTION_0_79();
    }

    v14 = sub_1C96A6154();
    __swift_project_value_buffer(v14, qword_1EDB80088);
    v15 = sub_1C96A6134();
    v16 = sub_1C96A76A4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      oslogb = swift_slowAlloc();
      v24 = oslogb;
      *v17 = 136446210;
      OUTLINED_FUNCTION_2_72();
      sub_1C9485C68();
      v18 = sub_1C96A7DB4();
      v20 = sub_1C9484164(v18, v19, &v24);

      *(v17 + 4) = v20;
      _os_log_impl(&dword_1C945E000, v15, v16, "New units found in local storage. configuration=%{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(oslogb);
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_26();
    }

    LOBYTE(v24) = v3;
    BYTE1(v24) = v4;
    BYTE2(v24) = v5;
    BYTE3(v24) = v6;
    BYTE4(v24) = v7;
    BYTE5(v24) = v8;
    sub_1C966A374(&v24, 0);
    OUTLINED_FUNCTION_18_3();
  }
}

uint64_t sub_1C94C3018(uint64_t result)
{
  if (result)
  {
    if (result == 1)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C9558DB0();
    return swift_allocError();
  }
}

id sub_1C94C3090(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;

  return v3;
}

void sub_1C94C30F8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t NSUserDefaults.registerUnitsConfigurationChanges(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB80350 != -1)
  {
    OUTLINED_FUNCTION_0_101();
  }

  swift_beginAccess();
  v4 = qword_1EDB80358;
  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = v4;
  sub_1C96A3D04();
  v7 = sub_1C96A4684();

  return v7;
}

uint64_t sub_1C94C3220()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
  OUTLINED_FUNCTION_10_2();
  v3 = *(v2 + 80);
  v21 = *(v4 + 64);
  v22 = (v3 + 16) & ~v3;
  v23 = v0;
  v5 = v0 + v22;

  v6 = v0 + v22 + *(type metadata accessor for NotificationSubscription(0) + 20);

  v7 = type metadata accessor for Location();
  v8 = *(v7 + 20);
  v9 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  v11 = *(v10 + 8);
  v11(v6 + v8, v9);
  v12 = *(v7 + 24);
  v13 = sub_1C96A4A54();
  if (!OUTLINED_FUNCTION_21_4(v6 + v12))
  {
    OUTLINED_FUNCTION_7_4();
    (*(v14 + 8))(v6 + v12, v13);
  }

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_28_5();
  v15 = v6 + *(type metadata accessor for NotificationSubscription.Location(0) + 20);

  v11(v15 + *(v7 + 20), v9);
  v16 = *(v7 + 24);
  if (!OUTLINED_FUNCTION_21_4(v15 + v16))
  {
    OUTLINED_FUNCTION_7_4();
    (*(v17 + 8))(v15 + v16, v13);
  }

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_28_5();
  v18 = *(v1 + 20);
  if (!OUTLINED_FUNCTION_21_4(v5 + v18))
  {
    OUTLINED_FUNCTION_7_4();
    (*(v19 + 8))(v5 + v18, v13);
  }

  return MEMORY[0x1EEE6BDD0](v23, v22 + v21, v3 | 7);
}

uint64_t objectdestroyTm_0()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroyTm_1(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t objectdestroyTm_2()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BF0);
  OUTLINED_FUNCTION_6();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 192);

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t objectdestroyTm_4()
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

  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6BDD0](v1, v5 + v7, v4 | 7);
}

uint64_t objectdestroyTm_5()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t objectdestroyTm_6()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t dispatch thunk of LocationsOfInterestDataSourceType.locationsOfInterest()()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v7 = (*(v1 + 8) + **(v1 + 8));
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_1C94C68C4;

  return v7(v4, v2);
}

uint64_t sub_1C94C3998()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94C67D4;

  return LocationsOfInterestDataSource.locationsOfInterest()();
}

uint64_t LocationsOfInterestDataSource.locationsOfInterest()()
{
  *(v1 + 96) = v0;
  OUTLINED_FUNCTION_8_2();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C94C3A54()
{
  if (qword_1EDB77E58 != -1)
  {
    swift_once();
  }

  v1 = sub_1C96A6154();
  v0[13] = __swift_project_value_buffer(v1, qword_1EDB77E60);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C945E000, v2, v3, "Begin to find home and work location", v4, 2u);
    OUTLINED_FUNCTION_26();
  }

  v5 = v0[12];

  v0[11] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 11;
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1C94C5A70;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1C94C3C18(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v3 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1C94B0CEC;

  return sub_1C94C3CC8(a1, a2, v7, v6);
}

uint64_t sub_1C94C3CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  v4[14] = swift_task_alloc();
  v5 = type metadata accessor for LocationOfInterest();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A77F0);
  v4[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A77F8);
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C94C3EB8, 0, 0);
}

uint64_t sub_1C94C3EB8()
{
  sub_1C94C423C();
  v2 = 0;
  v4 = v1 + 56;
  v3 = *(v1 + 56);
  v27 = v1 + 56;
  v28 = v1;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v3;
  v8 = (63 - v6) >> 6;
  v26 = v8;
  if ((v5 & v3) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6DAD8](v1);
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v2;
    if (v7)
    {
      v2 = v9;
      do
      {
LABEL_8:
        v11 = *(v0 + 152);
        v10 = *(v0 + 160);
        v12 = *(v0 + 88);
        v13 = *(*(v28 + 48) + (__clz(__rbit64(v7)) | (v2 << 6)));
        v14 = sub_1C96A7414();
        __swift_storeEnumTagSinglePayload(v10, 1, 1, v14);
        v15 = swift_allocObject();
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        *(v15 + 32) = v12;
        *(v15 + 40) = v13;
        sub_1C94C4364(v10, v11);
        LODWORD(v11) = __swift_getEnumTagSinglePayload(v11, 1, v14);
        sub_1C96A3D04();
        v16 = *(v0 + 152);
        if (v11 == 1)
        {
          sub_1C9470AFC(*(v0 + 152), &qword_1EC3A5090);
        }

        else
        {
          sub_1C96A7404();
          (*(*(v14 - 8) + 8))(v16, v14);
        }

        if (*(v15 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v17 = sub_1C96A7374();
          v19 = v18;
          swift_unknownObjectRelease();
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        v20 = **(v0 + 80);
        sub_1C96A3D04();
        if (v19 | v17)
        {
          v21 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v17;
          *(v0 + 40) = v19;
        }

        else
        {
          v21 = 0;
        }

        v7 &= v7 - 1;
        v22 = *(v0 + 160);
        *(v0 + 48) = 1;
        *(v0 + 56) = v21;
        *(v0 + 64) = v20;
        swift_task_create();

        v1 = sub_1C9470AFC(v22, &qword_1EC3A5090);
        v8 = v26;
        v4 = v27;
      }

      while (v7);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
  sub_1C96A74C4();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 200) = v23;
  *v23 = v24;
  v1 = OUTLINED_FUNCTION_1_71(v23);

  return MEMORY[0x1EEE6DAD8](v1);
}

uint64_t sub_1C94C41FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

void sub_1C94C423C()
{
  OUTLINED_FUNCTION_22_14();
  v1 = v0;
  if (*(v0 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6238), v2 = OUTLINED_FUNCTION_18_18(), v3 = v2, (v4 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v1 + 16))
    {
      v7 = *(v1 + 32 + v5++);
      sub_1C96A7EE4();
      MEMORY[0x1CCA8D880](v7);
      v8 = sub_1C96A7F24();
      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v6 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        if (v7 == *(*(v3 + 48) + v10))
        {
          goto LABEL_11;
        }

        v8 = v10 + 1;
      }

      *(v6 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + v10) = v7;
      v14 = *(v3 + 16);
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_14;
      }

      *(v3 + 16) = v16;
LABEL_11:
      if (v5 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_23_14();
  }
}

uint64_t sub_1C94C4364(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C94C43D4()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    *v1 = 0;
    v1[1] = 0;
    v1[2] = 0;
  }

  else
  {
    v6 = 0xD000000000000018;
    v3 = 0x80000001C96D57F0;
    v5 = 0x80000001C96D5830;
    v7 = 0x80000001C96CC760;
    *v1 = xmmword_1C96BE5E0;
    *(v1 + 8) = 256;
    v4 = 0xD000000000000030;
    v2 = 0xD00000000000003CLL;
  }

  v8 = *(v0 + 16);
  v8[3] = v2;
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v5;
  v8[7] = v6;
  v8[8] = v7;
  return (*(v0 + 8))();
}

uint64_t sub_1C94C448C()
{
  OUTLINED_FUNCTION_39();
  memcpy((v0 + 88), (v0 + 16), 0x48uLL);
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  *(v0 + 266) = *(v0 + 105);
  v3 = *(v0 + 128);
  *(v0 + 200) = *(v0 + 112);
  *(v0 + 216) = v3;
  v4 = *(v0 + 152);
  *(v0 + 232) = *(v0 + 144);
  *(v0 + 240) = v4;
  if (!v4)
  {
LABEL_4:
    v5 = *(v0 + 160);
    v6 = type metadata accessor for LocationOfInterest();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);

    OUTLINED_FUNCTION_17();

    return v7();
  }

  if (*(v0 + 104))
  {
    sub_1C9470AFC(v0 + 88, &qword_1EC3A4F48);
    goto LABEL_4;
  }

  v9 = *(v0 + 168);
  v11 = v9[10];
  v10 = v9[11];
  __swift_project_boxed_opaque_existential_1(v9 + 7, v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 248) = v12;
  *v12 = v13;
  v12[1] = sub_1C94C569C;
  v14 = *(v0 + 176);

  return sub_1C94C4608(v14, v11, v10, v1, v2);
}

uint64_t sub_1C94C4608(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v6 + 48) = a3;
  *(v6 + 56) = v5;
  *(v6 + 40) = a2;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C94C4C58, 0, 0);
}

uint64_t sub_1C94C4634()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1C94B0C0C;

  return sub_1C94C46F0(v3, v4, v5, v6, v7);
}

uint64_t sub_1C94C46F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5 & 1;
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1C94C4B40;

  return sub_1C94C47A4(a1, (v5 + 32));
}

uint64_t sub_1C94C47A4(uint64_t a1, _BYTE *a2)
{
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  type metadata accessor for Location();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 265) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C94C4840, 0, 0);
}

uint64_t sub_1C94C4840()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 265);
  v2 = *(v0 + 168);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  *(v0 + 264) = v1;
  v8 = (*(v4 + 8) + **(v4 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 184) = v5;
  *v5 = v6;
  v5[1] = sub_1C94C4A44;

  return v8(v0 + 16, v0 + 264, v3, v4);
}

uint64_t sub_1C94C497C(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C94B9278;

  return StubCoreRoutineDataManager.fetchLocationOfInterest(locationOfInterestType:)(a1, a2);
}

uint64_t StubCoreRoutineDataManager.fetchLocationOfInterest(locationOfInterestType:)(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1C94C43D4, 0, 0);
}

uint64_t sub_1C94C4A44()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_15();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C94C4B40()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_15();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_2();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_17();

    return v10();
  }
}

uint64_t sub_1C94C4C58()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  type metadata accessor for Location();
  *v5 = v0;
  v5[1] = sub_1C94C557C;
  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1C94C4D64(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  (*(a6 + 24))(a5, a6, a2, a3);
  v23 = *(v12 + 16);
  v23(v14, a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v22 = *(v12 + 32);
  v22(v16 + v15, v14, v11);
  v17 = sub_1C96A55A4();
  v21 = sub_1C96A5644();

  v23(v14, v24, v11);
  v18 = swift_allocObject();
  v22(v18 + v15, v14, v11);
  v19 = sub_1C96A55A4();
  sub_1C96A5674();
}

uint64_t StubGeocodeManager.reverseGeocode(coordinate:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_4_20();
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_2_29();
  v5 = sub_1C96A4DF4();
  result = OUTLINED_FUNCTION_0_1(v5);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_39();
    sub_1C95447DC(v8, v9, v0, v10, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5758);
    OUTLINED_FUNCTION_23();
    return OUTLINED_FUNCTION_8_16();
  }

  return result;
}

uint64_t sub_1C94C50C8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C94C51C4()
{
  v1 = v0[21];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[13]) == 1)
  {
    v2 = v0[24];
    OUTLINED_FUNCTION_11_37();
    v3(v2);

    OUTLINED_FUNCTION_17();

    return v4();
  }

  else
  {
    v7 = v0[14];
    v6 = v0[15];
    sub_1C94A7894(v1, v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v6) == 1)
    {
      sub_1C9470AFC(v0[14], &qword_1EC3A5930);
    }

    else
    {
      v8 = v0[17];
      v9 = v0[18];
      v10 = v0[12];
      sub_1C9499728(v0[14], v9, type metadata accessor for LocationOfInterest);
      sub_1C948F0F0(v9, v8, type metadata accessor for LocationOfInterest);
      v11 = *v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v10 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = v0[12];
        sub_1C94C594C();
        v11 = v22;
        *v21 = v22;
      }

      v13 = *(v11 + 16);
      if (v13 >= *(v11 + 24) >> 1)
      {
        v23 = v0[12];
        sub_1C94C594C();
        *v23 = v24;
      }

      v14 = v0[17];
      v15 = v0[16];
      v16 = v0[12];
      sub_1C94C5A14(v0[18]);
      v17 = *v16;
      *(v17 + 16) = v13 + 1;
      sub_1C9499728(v14, v17 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13, type metadata accessor for LocationOfInterest);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[25] = v18;
    *v18 = v19;
    v20 = OUTLINED_FUNCTION_1_71();

    return MEMORY[0x1EEE6DAD8](v20);
  }
}

uint64_t sub_1C94C5438(uint64_t a1)
{
  v2 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C948F0F0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Location);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BF0);
  return sub_1C96A7394();
}

uint64_t sub_1C94C557C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_7_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_15();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_2();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v10();
  }
}

uint64_t sub_1C94C569C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_7_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_15();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {
    sub_1C9470AFC(v3 + 88, &qword_1EC3A4F48);
  }

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C94C57B0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v15 = *(v0 + 216);
  v16 = *(v0 + 232);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 266);
  v6 = *(v0 + 265);
  v7 = *(v0 + 176);
  v8 = *(v0 + 160);
  v9 = type metadata accessor for LocationOfInterest();
  sub_1C9499728(v7, &v8[v9[5]], type metadata accessor for Location);
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C9470AFC(v0 + 88, &qword_1EC3A4F48);
  *v8 = v6;
  v8[v9[6]] = v5 & 1;
  v10 = &v8[v9[7]];
  *v10 = v4;
  v10[1] = v3;
  v11 = &v8[v9[8]];
  *v11 = v15;
  v11[1] = v2;
  v12 = &v8[v9[9]];
  *v12 = v16;
  v12[1] = v1;
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);

  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_1C94C590C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

void sub_1C94C594C()
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

  OUTLINED_FUNCTION_23_5(v2, v5, &qword_1EC3A4C90, &unk_1C96AADF0);
  OUTLINED_FUNCTION_17_7();
  type metadata accessor for LocationOfInterest();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_12_6();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1C9522AB8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
  }
}

uint64_t sub_1C94C5A14(uint64_t a1)
{
  v2 = type metadata accessor for LocationOfInterest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C94C5A70()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_7_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_15();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C94C5B74()
{
  v25 = v0;
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_8_4();
    v4 = OUTLINED_FUNCTION_8_4();
    v24 = v4;
    *v3 = 134218499;
    swift_beginAccess();
    *(v3 + 4) = *(*(v0 + 88) + 16);
    *(v3 + 12) = 2160;
    *(v3 + 14) = 1752392040;
    *(v3 + 22) = 2081;
    v5 = type metadata accessor for LocationOfInterest();
    v6 = sub_1C96A53C4();
    v7 = MEMORY[0x1CCA8CC40](v6, v5);
    v9 = v8;

    v10 = sub_1C9484164(v7, v9, &v24);

    *(v3 + 24) = v10;
    _os_log_impl(&dword_1C945E000, v1, v2, "Found %ld location of interest with content %{private,mask.hash}s", v3, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  v11 = sub_1C96A6134();
  v12 = sub_1C96A76A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_8_4();
    v14 = OUTLINED_FUNCTION_8_4();
    v24 = v14;
    *v13 = 134218499;
    swift_beginAccess();
    *(v13 + 4) = *(*(v0 + 88) + 16);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    v15 = type metadata accessor for LocationOfInterest();
    v16 = sub_1C96A53C4();
    v17 = MEMORY[0x1CCA8CC40](v16, v15);
    v19 = v18;

    v20 = sub_1C9484164(v17, v19, &v24);

    *(v13 + 24) = v20;
    _os_log_impl(&dword_1C945E000, v11, v12, "Massaged data contains %ld location of interest with content %{private,mask.hash}s", v13, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  swift_beginAccess();
  v21 = *(v0 + 88);
  v22 = *(v0 + 8);

  return v22(v21);
}

uint64_t sub_1C94C5E14()
{
  sub_1C948934C(&qword_1EDB79960, type metadata accessor for LocationOfInterest);

  return sub_1C96A53A4();
}

uint64_t LocationOfInterest.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6330);
  inited = swift_initStackObject();
  v4 = inited;
  *(inited + 16) = xmmword_1C96AE890;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  v5 = 1802661751;
  v6 = MEMORY[0x1E69E6158];
  if (!*v1)
  {
    v5 = 1701670760;
  }

  *(inited + 48) = v5;
  *(inited + 56) = 0xE400000000000000;
  *(inited + 72) = v6;
  *(inited + 80) = 1701667182;
  *(inited + 88) = 0xE400000000000000;
  v7 = type metadata accessor for LocationOfInterest();
  v8 = &v1[v7[5]];
  v9 = *(v8 + 24);
  *(v4 + 96) = *(v8 + 16);
  *(v4 + 104) = v9;
  *(v4 + 120) = v6;
  strcpy((v4 + 128), "isFromMeCard");
  *(v4 + 141) = 0;
  *(v4 + 142) = -5120;
  v10 = MEMORY[0x1E69E6370];
  *(v4 + 144) = v1[v7[6]];
  *(v4 + 168) = v10;
  *(v4 + 176) = 0x726464416C6C7566;
  *(v4 + 184) = 0xEB00000000737365;
  v11 = &v1[v7[7]];
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xE000000000000000;
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  *(v4 + 192) = v13;
  *(v4 + 200) = v15;
  *(v4 + 216) = v6;
  strcpy((v4 + 224), "shortAddress");
  *(v4 + 237) = 0;
  *(v4 + 238) = -5120;
  v16 = &v1[v7[8]];
  v17 = v16[1];
  if (v17)
  {
    v18 = *v16;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v14 = v17;
  }

  *(v4 + 240) = v18;
  *(v4 + 248) = v14;
  *(v4 + 264) = v6;
  *(v4 + 272) = 0xD000000000000014;
  *(v4 + 280) = 0x80000001C96D86A0;
  v19 = &v1[v7[9]];
  v20 = v19[1];
  *(v4 + 288) = *v19;
  *(v4 + 296) = v20;
  *(v4 + 312) = v6;
  *(v4 + 320) = 0x6E6F697461636F6CLL;
  *(v4 + 328) = 0xE800000000000000;
  *(v4 + 360) = type metadata accessor for Location();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 336));
  sub_1C9489BB0(v8, boxed_opaque_existential_1, type metadata accessor for Location);
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A6F04();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8330);
  a1[4] = sub_1C94C6174();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1C96A53B4();
}

unint64_t sub_1C94C6174()
{
  result = qword_1EDB77ED8;
  if (!qword_1EDB77ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A8330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB77ED8);
  }

  return result;
}

void Location.shortDescription.getter()
{
  OUTLINED_FUNCTION_19();
  v43 = v1;
  v44 = v2;
  v3 = v0;
  v38 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_90();
  v37 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C96BD6A0;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v9 = v0[1];
  v10 = MEMORY[0x1E69E6158];
  *(inited + 48) = *v0;
  *(inited + 56) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 1701667182;
  *(inited + 88) = 0xE400000000000000;
  v11 = v0[3];
  *(inited + 96) = v0[2];
  *(inited + 104) = v11;
  *(inited + 120) = v10;
  *(inited + 128) = 0x616E6964726F6F63;
  *(inited + 136) = 0xEA00000000006574;
  v12 = v0[4];
  v13 = v0[5];
  type metadata accessor for CLLocationCoordinate2D(0);
  *(inited + 144) = v12;
  *(inited + 152) = v13;
  *(inited + 168) = v14;
  *(inited + 176) = 1684957547;
  *(inited + 184) = 0xE400000000000000;
  *(inited + 192) = *(v0 + 48);
  *(inited + 216) = &type metadata for Location.Identifier.Kind;
  *(inited + 224) = 0x696669746E656469;
  *(inited + 232) = 0xEA00000000007265;
  memcpy(v42, v0, 0x48uLL);
  *(inited + 264) = &type metadata for Location.Identifier;
  v15 = swift_allocObject();
  *(inited + 240) = v15;
  memcpy((v15 + 16), v42, 0x48uLL);
  *(inited + 272) = 0x656E6F5A656D6974;
  *(inited + 280) = 0xE800000000000000;
  v16 = type metadata accessor for Location();
  *(inited + 312) = sub_1C96A4DF4();
  __swift_allocate_boxed_opaque_existential_1((inited + 288));
  OUTLINED_FUNCTION_8_1();
  (*(v17 + 16))();
  *(inited + 320) = 0x6954686372616573;
  *(inited + 328) = 0xEB00000000656C74;
  v18 = (v0 + v16[7]);
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
  }

  else
  {
    v20 = 7104878;
  }

  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  *(inited + 336) = v20;
  *(inited + 344) = v21;
  *(inited + 360) = v10;
  strcpy((inited + 368), "searchSubtitle");
  *(inited + 383) = -18;
  v22 = (v0 + v16[8]);
  v23 = v22[1];
  if (v23)
  {
    v24 = *v22;
  }

  else
  {
    v24 = 7104878;
  }

  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0xE300000000000000;
  }

  *(inited + 384) = v24;
  *(inited + 392) = v25;
  *(inited + 408) = v10;
  *(inited + 416) = 0x4E65736963657270;
  *(inited + 424) = 0xEB00000000656D61;
  v26 = (v0 + v16[9]);
  v27 = v26[1];
  if (v27)
  {
    v28 = *v26;
  }

  else
  {
    v28 = 7104878;
  }

  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0xE300000000000000;
  }

  *(inited + 432) = v28;
  *(inited + 440) = v29;
  *(inited + 456) = v10;
  strcpy((inited + 464), "secondaryName");
  *(inited + 478) = -4864;
  v30 = (v3 + v16[10]);
  v31 = v30[1];
  if (v31)
  {
    v32 = *v30;
  }

  else
  {
    v32 = 7104878;
  }

  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0xE300000000000000;
  }

  *(inited + 480) = v32;
  *(inited + 488) = v33;
  *(inited + 504) = v10;
  *(inited + 512) = 0x726665527473616CLL;
  *(inited + 520) = 0xEF65746144687365;
  sub_1C9470AA0(v3 + v16[6], v37, &unk_1EC3A5430);
  v34 = sub_1C96A4A54();
  OUTLINED_FUNCTION_23_1(v37, 1, v34);
  if (v35)
  {
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C95087DC(v42, v39);
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C9470AFC(v37, &unk_1EC3A5430);
    *(inited + 552) = MEMORY[0x1E69E6158];
    *(inited + 528) = 7104878;
    *(inited + 536) = 0xE300000000000000;
  }

  else
  {
    v41 = v34;
    __swift_allocate_boxed_opaque_existential_1(&v40);
    OUTLINED_FUNCTION_8_1();
    (*(v36 + 32))();
    sub_1C946306C(&v40, (inited + 528));
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C95087DC(v42, v39);
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
  }

  sub_1C96A6F04();
  v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A71C0);
  v38[4] = sub_1C94C6770();
  __swift_allocate_boxed_opaque_existential_1(v38);
  sub_1C96A53B4();
  OUTLINED_FUNCTION_30_12();
}

uint64_t sub_1C94C671C()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

unint64_t sub_1C94C6770()
{
  result = qword_1EDB7ACF8;
  if (!qword_1EDB7ACF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A71C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7ACF8);
  }

  return result;
}

uint64_t sub_1C94C67D4()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_27();
  v4 = *v1;
  OUTLINED_FUNCTION_15();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1C94C68C4()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_27();
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

WeatherCore::LocationCoordinate __swiftcall LocationCoordinate.init(latitude:longitude:)(Swift::Double latitude, Swift::Double longitude)
{
  *v2 = latitude;
  v2[1] = longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

uint64_t sub_1C94C69C0()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

uint64_t LocationsOfInterestManager.locations.setter()
{
  OUTLINED_FUNCTION_0_19();
  sub_1C94A42AC();
  if (v5)
  {
    sub_1C9469B6C(v4, v2);
    sub_1C94886B4(v4);
    __swift_project_boxed_opaque_existential_1(v2, v3);
    sub_1C948F004(v0);

    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {

    sub_1C94886B4(v4);
  }

  sub_1C94A42AC();
  if (v5)
  {
    sub_1C9469B6C(v4, v2);
    sub_1C94886B4(v4);
    __swift_project_boxed_opaque_existential_1(v2, v3);
    sub_1C948F050();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    sub_1C94886B4(v4);
  }

  return sub_1C96A50F4();
}

uint64_t sub_1C94C6B28()
{
  sub_1C948E788(&unk_1EDB7ADE0, type metadata accessor for Location);

  return sub_1C96A53A4();
}

uint64_t PrivacySampler.hashSum.getter()
{
  result = sub_1C94B5D78(0, 0);
  v1 = 0;
  if ((result & 0x10000) != 0)
  {
    return v1;
  }

  v2 = vcvts_n_f32_u32(100 * result, 0x10uLL);
  if (v2 == INFINITY)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 < 9.2234e18)
  {
    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C94C6CCC(void **a1, void (*a2)(void *))
{
  v3 = *a1;
  v6[3] = sub_1C946B5D0(0, &qword_1EDB7CD48);
  v6[4] = &protocol witness table for NSUbiquitousKeyValueStore;
  v6[0] = v3;
  v4 = v3;
  a2(v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_1C94C6DB0(void *a1)
{
  v74 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6538);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v66 - v2;
  v4 = sub_1C96A4A94();
  v73 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v66 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v66 - v11;
  v13 = type metadata accessor for UserIdentity();
  v71 = *(v13 - 1);
  v14 = *(v71 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v70 = (&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v66 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v66 - v19);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v72 = v20;
    IdentityService.identity.getter(v20);
    v75 = v22;
    if (qword_1EDB7CB98 != -1)
    {
      swift_once();
    }

    v23 = qword_1EDB7CBA0;
    v24 = type metadata accessor for IdentityService();
    sub_1C946F8C0(&qword_1EDB7C628, type metadata accessor for IdentityService);
    v68 = v24;
    v69 = v23;
    sub_1C96A4E44();
    if (LOBYTE(v76[0]) == 1)
    {
      sub_1C96A4A84();
      v25 = sub_1C96A4A64();
      v70 = v26;
      v71 = v25;
      v27 = *(v73 + 8);
      v27(v12, v4);
      sub_1C96A5954();
      sub_1C96A5944();
      sub_1C96A4A84();
      v73 = sub_1C96A4A64();
      v67 = v28;
      v27(v10, v4);
      sub_1C96A5944();
      sub_1C96A4A84();
      v29 = sub_1C96A4A64();
      v31 = v30;
      v27(v7, v4);
      sub_1C96A5944();
      v32 = v13[10];
      v33 = sub_1C96A4A54();
      v34 = v75;
      v35 = v72;
      (*(*(v33 - 8) + 16))(v18 + v32, v72 + v32, v33);
      v36 = v70;
      *v18 = v71;
      v18[1] = v36;
      v37 = (v18 + v13[6]);
      v38 = v74;
      v39 = v67;
      *v37 = v73;
      v37[1] = v39;
      v40 = (v18 + v13[8]);
      *v40 = v29;
      v40[1] = v31;
      v41 = v38[3];
      v42 = v38[4];
      __swift_project_boxed_opaque_existential_1(v38, v41);
      sub_1C959DD5C(v18, v41, v42);
      LOBYTE(v76[0]) = 0;
      sub_1C946F8C0(&qword_1EC3A6550, type metadata accessor for IdentityService);
      sub_1C96A4FE4();
      v43 = *(v34 + 16);
      sub_1C95B2694();

      *&v76[0] = 7;
      sub_1C95B2A9C(v76);

      v44 = v18;
LABEL_18:
      sub_1C94B3788(v44, type metadata accessor for UserIdentity);
      v56 = v35;
      return sub_1C94B3788(v56, type metadata accessor for UserIdentity);
    }

    v45 = v74;
    __swift_project_boxed_opaque_existential_1(v74, v74[3]);
    sub_1C94C77A0();
    if (__swift_getEnumTagSinglePayload(v3, 1, v13) == 1)
    {
      sub_1C9470AFC(v3, &qword_1EC3A6538);
      if (qword_1EDB7CF60 != -1)
      {
        swift_once();
      }

      v46 = sub_1C96A6154();
      __swift_project_value_buffer(v46, qword_1EDB7CF68);
      v47 = sub_1C96A6134();
      v48 = sub_1C96A76A4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1C945E000, v47, v48, "Unable to find a remote identity in the KVS - evaluating potential for local identity migration", v49, 2u);
        MEMORY[0x1CCA8E3D0](v49, -1, -1);
      }

      v50 = v75;
      sub_1C96A5784();
      sub_1C9469B6C(v45, v76);
      v51 = v72;
      sub_1C94C92F8(v72, v18, type metadata accessor for UserIdentity);
      v52 = (*(v71 + 80) + 64) & ~*(v71 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = v50;
      sub_1C94670AC(v76, v53 + 24);
      sub_1C94B3690(v18, v53 + v52, type metadata accessor for UserIdentity);
      sub_1C96A3D04();
      v54 = sub_1C96A55A4();
      sub_1C96A5644();

      v55 = sub_1C96A55A4();
      sub_1C96A5674();

      v56 = v51;
      return sub_1C94B3788(v56, type metadata accessor for UserIdentity);
    }

    v57 = v70;
    sub_1C94B3690(v3, v70, type metadata accessor for UserIdentity);
    v58 = v75;
    v59 = *(v75 + OBJC_IVAR____TtC11WeatherCore15IdentityService_iCloudStatusProvider + 24);
    v60 = *(v75 + OBJC_IVAR____TtC11WeatherCore15IdentityService_iCloudStatusProvider + 32);
    __swift_project_boxed_opaque_existential_1((v75 + OBJC_IVAR____TtC11WeatherCore15IdentityService_iCloudStatusProvider), v59);
    v61 = (*(v60 + 8))(v59, v60);
    v62 = v58;
    v35 = v72;
    v63 = v62;
    v64 = sub_1C94C83E4(v72);
    if ((static UserIdentity.== infix(_:_:)(v35, v57) & 1) != 0 || (v61 & 1) == 0)
    {
      if ((v64 & 1) == 0)
      {
LABEL_17:

        v44 = v57;
        goto LABEL_18;
      }
    }

    else
    {
      v65 = *(v63 + 16);
      sub_1C95B2694();
    }

    *&v76[0] = 7;
    sub_1C95B2A9C(v76);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1C94C75D4()
{
  OUTLINED_FUNCTION_103();
  type metadata accessor for UserIdentity();
  OUTLINED_FUNCTION_124();
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 24);

  v4 = v0[7];
  v5 = sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v7 = *(v6 + 8);
  v7(v1 + v3 + v4, v5);
  OUTLINED_FUNCTION_26_0();
  v8 = OUTLINED_FUNCTION_10_25(v0[9]);
  (v7)(v8);
  OUTLINED_FUNCTION_26_0();
  v9 = OUTLINED_FUNCTION_10_25(v0[11]);
  (v7)(v9);
  v10 = OUTLINED_FUNCTION_10_25(v0[12]);
  (v7)(v10);
  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

unint64_t sub_1C94C7718()
{
  result = sub_1C94C7DF4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DynamicLazy.State();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C94C77A0()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v3 = v2;
  v81 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_2();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_1();
  v77 = v10;
  OUTLINED_FUNCTION_12();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v66 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v66 - v15;
  v17 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v79 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v75 = v20 - v21;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_1();
  v76 = v23;
  OUTLINED_FUNCTION_12();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v66 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_21_16(v28, v29, v30, v31, v32, v33, v34, v35, v66);
  v36 = *(v1 + 8);
  v37 = OUTLINED_FUNCTION_10_20();
  (v36)(&v82, v37);
  if (!v83)
  {
    goto LABEL_17;
  }

  v78 = v83;
  v74 = v82;
  OUTLINED_FUNCTION_8_23();
  v36();
  OUTLINED_FUNCTION_13(v16);
  if (v55)
  {
  }

  else
  {
    v73 = v27;
    v70 = v8;
    v39 = v79;
    v40 = v80;
    v71 = *(v79 + 32);
    v72 = v79 + 32;
    v71(v80, v16, v17);
    (v36)(&v82, 0xD000000000000015, 0x80000001C96CAD90, MEMORY[0x1E69E6158], v3, v1);
    v41 = v83;
    if (!v83)
    {
      (*(v39 + 8))(v40, v17);

      goto LABEL_17;
    }

    v42 = v82;
    OUTLINED_FUNCTION_16_20();
    OUTLINED_FUNCTION_8_23();
    v36();
    OUTLINED_FUNCTION_13(v14);
    if (v55)
    {
      (*(v79 + 8))(v80, v17);

      v38 = v14;
      goto LABEL_10;
    }

    v67 = v42;
    v43 = v73;
    v71(v73, v14, v17);
    (v36)(&v82, 0xD000000000000017, 0x80000001C96CADB0, MEMORY[0x1E69E6158], v3, v1);
    v44 = v80;
    if (!v83)
    {

      v47 = *(v79 + 8);
      v47(v43, v17);
      v47(v44, v17);
      goto LABEL_17;
    }

    v68 = v83;
    v69 = v41;
    v45 = v82;
    v16 = v77;
    OUTLINED_FUNCTION_8_23();
    v36();
    OUTLINED_FUNCTION_13(v16);
    if (!v55)
    {
      v66 = v45;
      v52 = v16;
      v53 = v71;
      v71(v76, v52, v17);
      OUTLINED_FUNCTION_11_21();
      v54 = v70;
      OUTLINED_FUNCTION_8_23();
      v36();
      OUTLINED_FUNCTION_13(v54);
      v56 = v73;
      if (!v55)
      {
        v58 = v75;
        v53(v75, v54, v17);
        v59 = type metadata accessor for UserIdentity();
        v60 = v81;
        v53(v81 + v59[5], v80, v17);
        v53(v60 + v59[7], v56, v17);
        v53(v60 + v59[9], v76, v17);
        v53(v60 + v59[10], v58, v17);
        v61 = v78;
        *v60 = v74;
        v60[1] = v61;
        v62 = (v60 + v59[6]);
        v63 = v69;
        *v62 = v67;
        v62[1] = v63;
        v64 = (v60 + v59[8]);
        v65 = v68;
        *v64 = v66;
        v64[1] = v65;
        v48 = v60;
        v49 = 0;
        v50 = 1;
        v51 = v59;
        goto LABEL_18;
      }

      v57 = *(v79 + 8);
      v57(v76, v17);
      v57(v56, v17);
      v57(v80, v17);
      v38 = v54;
      goto LABEL_10;
    }

    v46 = *(v79 + 8);
    v46(v73, v17);
    v46(v80, v17);
  }

  v38 = v16;
LABEL_10:
  sub_1C94BE204(v38, &unk_1EC3A5430);
LABEL_17:
  type metadata accessor for UserIdentity();
  OUTLINED_FUNCTION_3();
LABEL_18:
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  OUTLINED_FUNCTION_101();
}

unint64_t sub_1C94C7DF4()
{
  result = qword_1EDB77CB8;
  if (!qword_1EDB77CB8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDB77CB8);
  }

  return result;
}

uint64_t NSUbiquitousKeyValueStore.get<A>(for:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1C96A7004();
  v7 = [v3 objectForKey_];

  if (v7)
  {
    sub_1C96A79C4();
    swift_unknownObjectRelease();
    sub_1C946306C(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A90);
  v8 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a2, v8 ^ 1u, 1, a1);
}

BOOL iCloudStatusProvider.isSignedIntoiCloud.getter()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = [v0 ubiquityIdentityToken];

  if (v1)
  {
    swift_unknownObjectRelease();
  }

  return v1 != 0;
}

uint64_t sub_1C94C7FBC()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1C94C8018(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);
  sub_1C96A53C4();
  sub_1C953AEDC(&v2);
  return OUTLINED_FUNCTION_11();
}

void LocationModel.coalesceLocationIdentifier.getter()
{
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_40_0();
  v6 = type metadata accessor for Location();
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  OUTLINED_FUNCTION_7(v8);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_28_2();
  v10 = type metadata accessor for LocationModelData(0);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_21_1();
  v12 = type metadata accessor for SavedLocation();
  v13 = OUTLINED_FUNCTION_7(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_27_7();
  v14 = type metadata accessor for CurrentLocation();
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  v18 = v17 - v16;
  type metadata accessor for LocationModel(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_2_31();
  sub_1C949E000();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5940) + 48);
    OUTLINED_FUNCTION_5_21();
    sub_1C94A8124();
    CurrentLocation.identifier.getter(v0);
    OUTLINED_FUNCTION_3_23();
    sub_1C949A950(v18, v25);
    OUTLINED_FUNCTION_0_43();
    v23 = v5 + v24;
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5948);
  OUTLINED_FUNCTION_6_22();
  sub_1C94A8124();
  OUTLINED_FUNCTION_7_17();
  sub_1C94A8124();
  sub_1C94C29E4(v2, v4);
  type metadata accessor for LocationOfInterest();
  OUTLINED_FUNCTION_14_16(v4);
  if (v20)
  {
    sub_1C9470AFC(v4, &qword_1EC3A5930);
    SavedLocation.identifier.getter();
    OUTLINED_FUNCTION_0_43();
    sub_1C949A950(v2, v21);
    OUTLINED_FUNCTION_1_31();
    v23 = v3;
LABEL_6:
    sub_1C949A950(v23, v22);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_17_17();
  sub_1C949E000();
  OUTLINED_FUNCTION_12_19();
  sub_1C949A950(v4, v26);
  memcpy(v30, v1, sizeof(v30));
  sub_1C95087DC(v30, &v29);
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_0_43();
  sub_1C949A950(v2, v27);
  OUTLINED_FUNCTION_1_31();
  sub_1C949A950(v3, v28);
  memcpy(v0, v30, 0x48uLL);
LABEL_7:
  OUTLINED_FUNCTION_101();
}

uint64_t DynamicLazy.init(initializer:validate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for DynamicLazy();
  result = __swift_storeEnumTagSinglePayload(a6 + *(v12 + 40), 1, 1, a5);
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return result;
}

uint64_t sub_1C94C83E4(void *a1)
{
  v3 = type metadata accessor for UserIdentity();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6538);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15[-v10];
  v18 = *(v1 + OBJC_IVAR____TtC11WeatherCore15IdentityService_lock);
  v16 = v1;
  v17 = a1;
  sub_1C96A5134();
  sub_1C96A3D04();
  sub_1C96A5554();

  sub_1C94C895C(v11, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_1C9470AFC(v11, &qword_1EC3A6538);
    sub_1C9470AFC(v9, &qword_1EC3A6538);
    v12 = 0;
  }

  else
  {
    sub_1C94B3690(v9, v5, type metadata accessor for UserIdentity);
    v13 = static UserIdentity.== infix(_:_:)(a1, v5);
    sub_1C94B3788(v5, type metadata accessor for UserIdentity);
    sub_1C9470AFC(v11, &qword_1EC3A6538);
    v12 = v13 ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_1C94C8610@<X0>(uint64_t a1@<X1>, const char *a2@<X3>, uint64_t *a3@<X8>)
{
  v7 = sub_1C96A5AD4();
  OUTLINED_FUNCTION_7(v7);
  return sub_1C94C87DC(a1, v3 + ((*(v8 + 80) + 24) & ~*(v8 + 80)), a2, a3);
}

uint64_t sub_1C94C86A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6538);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC11WeatherCore15IdentityService_lastKnownIdentity;
  swift_beginAccess();
  sub_1C94C895C(a1 + v9, a3);
  sub_1C94C92F8(a2, v8, type metadata accessor for UserIdentity);
  v10 = type metadata accessor for UserIdentity();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  swift_beginAccess();
  sub_1C946CFA8(v8, a1 + v9, &qword_1EC3A6538);
  return swift_endAccess();
}

uint64_t sub_1C94C87DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, const char *a3@<X5>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_1EDB7ACB0 != -1)
    {
      OUTLINED_FUNCTION_1_59();
    }

    v8 = sub_1C96A6154();
    __swift_project_value_buffer(v8, qword_1EDB7ACB8);
    v9 = sub_1C96A6134();
    v10 = sub_1C96A76A4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_29();
      *v11 = 0;
      _os_log_impl(&dword_1C945E000, v9, v10, a3, v11, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_1C94C89CC(a2, a1, a4);
  }

  else
  {
    v13 = *MEMORY[0x1E69D6480];
    v14 = sub_1C96A5244();
    return (*(*(v14 - 8) + 104))(a4, v13, v14);
  }
}

uint64_t sub_1C94C895C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6538);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C94C89CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v65 = a1;
  v66 = a2;
  v4 = sub_1C96A5AD4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C96A5814();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v63 - v13;
  if (sub_1C94C9354())
  {
    v15 = sub_1C94C9570();
    if (v16 >> 60 == 15)
    {
      if (qword_1EDB7ACB0 != -1)
      {
        swift_once();
      }

      v17 = sub_1C96A6154();
      __swift_project_value_buffer(v17, qword_1EDB7ACB8);
      v18 = sub_1C96A6134();
      v19 = sub_1C96A76A4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1C945E000, v18, v19, "Generate flatbuffer data", v20, 2u);
        MEMORY[0x1CCA8E3D0](v20, -1, -1);
      }

      sub_1C94C9628(v14);
      sub_1C94AF7BC(&qword_1EC3A7160, 255, MEMORY[0x1E69E17E8]);
      v21 = sub_1C96A5014();
      v23 = v22;
      (*(v9 + 8))(v14, v8);
      sub_1C94874C0(v21, v23);
      sub_1C94B055C(v21, v23);
    }

    else
    {
      v21 = v15;
      v23 = v16;
      if (qword_1EDB7ACB0 != -1)
      {
        swift_once();
      }

      v26 = sub_1C96A6154();
      __swift_project_value_buffer(v26, qword_1EDB7ACB8);
      v27 = sub_1C96A6134();
      v28 = sub_1C96A76A4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1C945E000, v27, v28, "Return cached flatbuffer data", v29, 2u);
        MEMORY[0x1CCA8E3D0](v29, -1, -1);
      }
    }

    *a3 = v21;
    a3[1] = v23;
    a3[2] = 0xD000000000000038;
    a3[3] = 0x80000001C96D49E0;
    v30 = MEMORY[0x1E69D6470];
LABEL_16:
    v31 = *v30;
    v32 = sub_1C96A5234();
    (*(*(v32 - 8) + 104))(a3, v31, v32);
    v33 = *MEMORY[0x1E69D6468];
    v34 = sub_1C96A5244();
    return (*(*(v34 - 8) + 104))(a3, v33, v34);
  }

  v64 = v5;
  v24 = sub_1C960A770();
  if (v25 >> 60 == 15)
  {
    sub_1C94C9628(v12);
    sub_1C94AF7BC(&qword_1EDB77ED0, 255, MEMORY[0x1E69E17E8]);
    v47 = sub_1C96A41E4();
    v49 = v48;
    (*(v9 + 8))(v12, v8);
    sub_1C94874C0(v47, v49);
    v63 = v47;
    sub_1C94B055C(v47, v49);
    if (qword_1EDB7ACB0 != -1)
    {
      swift_once();
    }

    v50 = sub_1C96A6154();
    __swift_project_value_buffer(v50, qword_1EDB7ACB8);
    v51 = v64;
    (*(v64 + 16))(v7, v65, v4);
    sub_1C96A53C4();
    v52 = sub_1C96A6134();
    v53 = sub_1C96A76A4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67[0] = v65;
      *v54 = 136446466;
      v55 = sub_1C96A6EE4();
      v57 = sub_1C9484164(v55, v56, v67);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2082;
      v58 = sub_1C96A5AC4();
      v60 = v59;
      (*(v51 + 8))(v7, v4);
      v61 = sub_1C9484164(v58, v60, v67);

      *(v54 + 14) = v61;
      _os_log_impl(&dword_1C945E000, v52, v53, "Serve data with param:%{public}s with condition:%{public}s", v54, 0x16u);
      v62 = v65;
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v62, -1, -1);
      MEMORY[0x1CCA8E3D0](v54, -1, -1);
    }

    else
    {

      (*(v51 + 8))(v7, v4);
    }

    *a3 = v63;
    a3[1] = v49;
    v30 = MEMORY[0x1E69D6478];
    goto LABEL_16;
  }

  v36 = v24;
  v37 = v25;
  if (qword_1EDB7ACB0 != -1)
  {
    swift_once();
  }

  v38 = sub_1C96A6154();
  __swift_project_value_buffer(v38, qword_1EDB7ACB8);
  v39 = sub_1C96A6134();
  v40 = sub_1C96A76A4();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1C945E000, v39, v40, "Serve weather data", v41, 2u);
    MEMORY[0x1CCA8E3D0](v41, -1, -1);
  }

  *a3 = v36;
  a3[1] = v37;
  v42 = *MEMORY[0x1E69D6478];
  v43 = sub_1C96A5234();
  (*(*(v43 - 8) + 104))(a3, v42, v43);
  v44 = *MEMORY[0x1E69D6468];
  v45 = sub_1C96A5244();
  v46 = *(*(v45 - 8) + 104);

  return v46(a3, v44, v45);
}

uint64_t sub_1C94C92F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C94C9354()
{
  v0 = sub_1C96A5164();
  v1 = sub_1C94C9408(0x747065636361, 0xE600000000000000, v0);
  v3 = v2;

  if (v3)
  {
    if (v1 == 0xD000000000000038 && v3 == 0x80000001C96D49E0)
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

uint64_t sub_1C94C9408(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t static UserIdentity.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1C96A7DE4() & 1) == 0)
  {
    return 0;
  }

  v3 = type metadata accessor for UserIdentity();
  OUTLINED_FUNCTION_6_25(v3[5]);
  if ((sub_1C96A49F4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_24(v3[6]);
  v6 = v2 && v4 == v5;
  if (!v6 && (sub_1C96A7DE4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_25(v3[7]);
  if ((sub_1C96A49F4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_24(v3[8]);
  v9 = v2 && v7 == v8;
  if (!v9 && (sub_1C96A7DE4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_25(v3[9]);
  if ((sub_1C96A49F4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_25(v3[10]);

  return sub_1C96A49F4();
}

uint64_t Location.Identifier.uniqueID.getter()
{
  v1 = *(v0 + 56);
  sub_1C96A53C4();
  return v1;
}

uint64_t sub_1C94C9570()
{
  sub_1C96A3D04();
  sub_1C96A55D4();

  return v1;
}

uint64_t Location.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Location() + 20);
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_1C94C9628@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7888);
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_90();
  v88 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7890);
  OUTLINED_FUNCTION_7(v4);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_90();
  v87 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7898);
  OUTLINED_FUNCTION_7(v7);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_90();
  v86 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A78A0);
  OUTLINED_FUNCTION_7(v10);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_90();
  v85 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A78A8);
  OUTLINED_FUNCTION_7(v13);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_90();
  v84 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A78B0);
  OUTLINED_FUNCTION_7(v16);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_90();
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A78B8);
  OUTLINED_FUNCTION_7(v20);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A78C0);
  OUTLINED_FUNCTION_7(v24);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_90();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A78C8);
  OUTLINED_FUNCTION_7(v28);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v83 - v30;
  v83[1] = v83 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BE8);
  OUTLINED_FUNCTION_7(v32);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v83 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A78D0);
  OUTLINED_FUNCTION_7(v36);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v83 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A78D8);
  OUTLINED_FUNCTION_7(v40);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v83 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BF0);
  OUTLINED_FUNCTION_7(v44);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v45);
  v47 = v83 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A78E0);
  OUTLINED_FUNCTION_7(v48);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v49);
  v51 = v83 - v50;
  sub_1C94C9BF4();
  sub_1C94CA58C();
  v52 = sub_1C96A59A4();
  OUTLINED_FUNCTION_6_52(v51, v53, v54, v52);
  sub_1C94CBA88(v47);
  v55 = sub_1C96A57E4();
  OUTLINED_FUNCTION_6_52(v47, v56, v57, v55);
  sub_1C94CC180(v43);
  v58 = sub_1C96A5AF4();
  OUTLINED_FUNCTION_6_52(v43, v59, v60, v58);
  v83[3] = v39;
  sub_1C94CD40C();
  v61 = sub_1C96A5BA4();
  OUTLINED_FUNCTION_6_52(v39, v62, v63, v61);
  v83[2] = v35;
  sub_1C94CE010(v35);
  v64 = sub_1C96A5D64();
  OUTLINED_FUNCTION_4_62(v35, 0, v65, v64);
  v66 = sub_1C96A5DB4();
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v66);
  v83[0] = v27;
  sub_1C94CEEA4();
  v67 = sub_1C96A5AB4();
  OUTLINED_FUNCTION_4_62(v27, 0, v68, v67);
  v69 = sub_1C96A5BB4();
  OUTLINED_FUNCTION_4_62(v23, 1, v70, v69);
  v71 = sub_1C96A5F44();
  OUTLINED_FUNCTION_4_62(v19, 1, v72, v71);
  v73 = sub_1C96A59C4();
  OUTLINED_FUNCTION_4_62(v84, 1, v74, v73);
  v75 = sub_1C96A5964();
  __swift_storeEnumTagSinglePayload(v85, 1, 1, v75);
  v76 = v86;
  sub_1C94CEF80();
  v77 = sub_1C96A5984();
  OUTLINED_FUNCTION_4_62(v76, 0, v78, v77);
  v79 = sub_1C96A5824();
  OUTLINED_FUNCTION_4_62(v87, 1, v80, v79);
  v81 = sub_1C96A5D04();
  __swift_storeEnumTagSinglePayload(v88, 1, 1, v81);
  return sub_1C96A5804();
}

uint64_t sub_1C94C9BF4()
{
  v1 = sub_1C96A5AD4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v41 = &v39 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - v7;
  swift_beginAccess();
  v9 = v0[5];
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E1848];
  if (v10 <= 9)
  {
    swift_beginAccess();
    v40 = *v11;
    v39 = *(v2 + 104);
    v12 = v10 - 10;
    do
    {
      v39(v8, v40, v1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[5] = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C94CA078();
        v9 = v16;
        v0[5] = v16;
      }

      v14 = *(v9 + 16);
      if (v14 >= *(v9 + 24) >> 1)
      {
        sub_1C94CA078();
        v9 = v17;
      }

      *(v9 + 16) = v14 + 1;
      (*(v2 + 32))(v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, v8, v1);
      v0[5] = v9;
      v15 = __CFADD__(v12++, 1);
    }

    while (!v15);
    swift_endAccess();
    v11 = MEMORY[0x1E69E1848];
  }

  swift_beginAccess();
  v18 = v0[6];
  v19 = *(v18 + 16);
  if (v19 <= 9)
  {
    swift_beginAccess();
    v40 = *v11;
    v20 = *(v2 + 104);
    v21 = v19 - 10;
    v22 = v41;
    do
    {
      v20(v22, v40, v1);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v0[6] = v18;
      if ((v23 & 1) == 0)
      {
        sub_1C94CA078();
        v18 = v26;
        v0[6] = v26;
      }

      v24 = *(v18 + 16);
      if (v24 >= *(v18 + 24) >> 1)
      {
        sub_1C94CA078();
        v18 = v27;
      }

      *(v18 + 16) = v24 + 1;
      v25 = v18 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v24;
      v22 = v41;
      (*(v2 + 32))(v25, v41, v1);
      v0[6] = v18;
      v15 = __CFADD__(v21++, 1);
    }

    while (!v15);
    swift_endAccess();
    v11 = MEMORY[0x1E69E1848];
  }

  result = swift_beginAccess();
  v29 = v0[7];
  v30 = *(v29 + 16);
  if (v30 <= 0x107)
  {
    swift_beginAccess();
    LODWORD(v41) = *v11;
    v31 = *(v2 + 104);
    v32 = v30 - 264;
    v33 = v42;
    do
    {
      v31(v33, v41, v1);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v0[7] = v29;
      if ((v34 & 1) == 0)
      {
        sub_1C94CA078();
        v29 = v37;
        v0[7] = v37;
      }

      v35 = *(v29 + 16);
      if (v35 >= *(v29 + 24) >> 1)
      {
        sub_1C94CA078();
        v29 = v38;
      }

      *(v29 + 16) = v35 + 1;
      v36 = v29 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v35;
      v33 = v42;
      (*(v2 + 32))(v36, v42, v1);
      v0[7] = v29;
      v15 = __CFADD__(v32++, 1);
    }

    while (!v15);
    return swift_endAccess();
  }

  return result;
}

void sub_1C94CA078()
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

  OUTLINED_FUNCTION_23_5(v2, v5, &qword_1EC3A4CB8, &unk_1C96AAE10);
  OUTLINED_FUNCTION_17_7();
  sub_1C96A5AD4();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_12_6();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1C94CA140(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
  }
}

uint64_t LocationModel.name.getter()
{
  LocationModel.identifier.getter();
  v1 = v26;
  v0 = v27;
  sub_1C96A53C4();
  sub_1C953AEDC(v25);

  v2 = HIBYTE(v0) & 0xF;
  if ((v0 & 0x2000000000000000) == 0)
  {
    v2 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    LocationModel.identifier.getter();
    sub_1C96A53C4();
    sub_1C953AEDC(v24);
    return OUTLINED_FUNCTION_11();
  }

  LocationModel.identifier.getter();
  sub_1C953AEDC(v24);
  if (v24[48] == 1)
  {

LABEL_8:
    if (qword_1EDB7AB08 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v4 = qword_1EDB94A58;
    sub_1C96A4534();

    return OUTLINED_FUNCTION_11();
  }

  v3 = sub_1C96A7DE4();

  if (v3)
  {
    goto LABEL_8;
  }

  if (qword_1EC3A45E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1EC3A45E8;
  LocationModel.identifier.getter();
  sub_1C953AEDC(v23);
  v6 = sub_1C96A7504();
  v7 = [v5 stringFromNumber_];

  if (v7)
  {
    v8 = sub_1C96A7024();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = qword_1EC3A45E8;
  LocationModel.identifier.getter();
  sub_1C953AEDC(v22);
  v12 = sub_1C96A7504();
  v13 = [v11 stringFromNumber_];

  if (v13)
  {
    v14 = sub_1C96A7024();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  sub_1C96A7A94();

  MEMORY[0x1CCA8CB00](v8, v10);
  MEMORY[0x1CCA8CB00](8236, 0xE200000000000000);
  MEMORY[0x1CCA8CB00](v14, v16);
  if (qword_1EDB7AB08 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v17 = qword_1EDB94A58;
  sub_1C96A4534();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C96AEF50;
  v19 = MEMORY[0x1E69E6158];
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1C94CF210();
  *(v18 + 32) = v8;
  *(v18 + 40) = v10;
  *(v18 + 96) = v19;
  *(v18 + 104) = v20;
  *(v18 + 64) = v20;
  *(v18 + 72) = v14;
  *(v18 + 80) = v16;
  sub_1C96A7014();

  return OUTLINED_FUNCTION_11();
}

uint64_t sub_1C94CA58C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7918);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_1C96A5FF4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C94CA718(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C94CB778();
  v5 = *MEMORY[0x1E69E1888];
  v6 = sub_1C96A5B34();
  (*(*(v6 - 8) + 104))(v2, v5, v6);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  sub_1C96A53C4();
  return sub_1C96A5994();
}

uint64_t sub_1C94CA718@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7228);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7230);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_1C96A4A54();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - v17;
  result = sub_1C94CAB74(&OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder____lazy_storage___nextDays, sub_1C94CAD90);
  if (*(result + 16))
  {
    v30 = v8;
    v31 = v5;
    v32 = a1;
    v20 = *(v13 + 16);
    v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v20(v18, result + v21, v12);

    v22 = *(v1 + OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder____lazy_storage___nextDays);
    if (*(v22 + 16) >= 2uLL)
    {
      v20(v16, v22 + v21 + *(v13 + 72), v12);
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
      v23 = *MEMORY[0x1E69E1998];
      v24 = sub_1C96A5FC4();
      v25 = v30;
      (*(*(v24 - 8) + 104))(v30, v23, v24);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
      v26 = *MEMORY[0x1E69E1810];
      v27 = sub_1C96A59B4();
      v28 = v31;
      (*(*(v27 - 8) + 104))(v31, v26, v27);
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v27);
      return sub_1C96A5FD4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}