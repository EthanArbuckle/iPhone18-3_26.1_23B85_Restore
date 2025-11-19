uint64_t sub_25E81A0B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25E81A0F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_25E81A194(uint64_t a1)
{
  result = sub_25E81A1BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25E81A1BC()
{
  result = qword_27FD076F0;
  if (!qword_27FD076F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD076F0);
  }

  return result;
}

unint64_t sub_25E81A21C(uint64_t a1)
{
  result = sub_25E81A244();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25E81A244()
{
  result = qword_27FD076F8;
  if (!qword_27FD076F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD076F8);
  }

  return result;
}

uint64_t sub_25E81A298()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_25E7FF0A0();
}

unint64_t sub_25E81A2D4(uint64_t a1)
{
  result = sub_25E81A2FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25E81A2FC()
{
  result = qword_27FD07700;
  if (!qword_27FD07700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07700);
  }

  return result;
}

uint64_t sub_25E81A350()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[10] = *(v0 + 42);
  return sub_25E7FE75C();
}

unint64_t sub_25E81A394(uint64_t a1)
{
  result = sub_25E81A3BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25E81A3BC()
{
  result = qword_27FD07708;
  if (!qword_27FD07708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07708);
  }

  return result;
}

uint64_t PlanksWriter.writeBatch<A>(_:label:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  (*(a5 + 8))(&v61, a4, a5);
  v58 = v61;
  v57 = sub_25E829F1C();

  v9 = sub_25E816820();
  if (*(v9 + 16))
  {
    v10 = sub_25E800EB4(a2, a3);
    if (v11)
    {
      v12 = *(v9 + 56) + 32 * v10;
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);

      v61 = v14;
      *&v62 = v13;
      BYTE8(v62) = v15;
      v63 = v16;
      *v59 = a2;
      *&v59[8] = a3;
      v59[16] = v58;
      *&v59[24] = v57;
      if (!_s6Planks13SchemaElementV2eeoiySbAC_ACtFZ_0(&v61, v59))
      {
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v43 = sub_25E829CDC();
        __swift_project_value_buffer(v43, qword_27FD0A4B0);
        swift_bridgeObjectRetain_n();

        v33 = sub_25E829CBC();
        v44 = sub_25E82A02C();

        swift_bridgeObjectRelease_n();
        if (!os_log_type_enabled(v33, v44))
        {

          goto LABEL_26;
        }

        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v61 = v46;
        *v45 = 136315650;
        *(v45 + 4) = sub_25E7FFAF0(a2, a3, &v61);
        *(v45 + 12) = 2080;
        v47 = sub_25E7FED8C(v14, v13, v15, v16);
        v49 = v48;

        v50 = sub_25E7FFAF0(v47, v49, &v61);

        *(v45 + 14) = v50;
        *(v45 + 22) = 2080;
        v51 = sub_25E7FED8C(a2, a3, v58, v57);
        v53 = v52;

        v54 = sub_25E7FFAF0(v51, v53, &v61);

        *(v45 + 24) = v54;
        _os_log_impl(&dword_25E7F6000, v33, v44, "Invalid batch label: %s with existing schema: %s vs %s", v45, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v46, -1, -1);
        v37 = v45;
LABEL_24:
        MEMORY[0x25F8C1620](v37, -1, -1);
LABEL_26:

        return 0;
      }
    }
  }

  MEMORY[0x28223BE20](v17);
  v55[0] = v6;
  v55[1] = a2;
  v56 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07418, &qword_25E82AE08);
  sub_25E829EBC();
  v18 = v61;
  v20 = v62;
  v19 = v63;
  *v59 = v64[0];
  *&v59[10] = *(v64 + 10);
  if (!v62)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v33 = sub_25E829CBC();
    v34 = sub_25E82A02C();

    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_26;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v61 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_25E7FFAF0(a2, a3, &v61);
    _os_log_impl(&dword_25E7F6000, v33, v34, "Failed at writing batch: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x25F8C1620](v36, -1, -1);
    v37 = v35;
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073C0, &qword_25E82AD90);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25E82A940;
  *(v21 + 32) = v18;
  *(v21 + 40) = v20;
  *(v21 + 56) = v19;
  *(v21 + 64) = *v59;
  *(v21 + 74) = *&v59[10];
  v22 = v6 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  swift_beginAccess();
  v23 = *(v22 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 16) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_25E7FF8C4(0, *(v23 + 2) + 1, 1, v23);
    *(v22 + 16) = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    sub_25E7FF8C4((v25 > 1), v26 + 1, 1, v23);
  }

  *(v20 + 16) = v26 + 1;
  v27 = v20 + 40 * v26;
  *(v27 + 32) = 1;
  *(v27 + 40) = v21;
  *(v27 + 48) = *(&v20 + 1);
  *(v27 + 56) = v19;
  *(v27 + 64) = 1;
  *(v22 + 16) = v20;
  swift_endAccess();
  v28 = *(v22 + 24);
  v61 = *v22;
  v62 = *(v22 + 8);
  v63 = v28;
  v29 = FileMetadata.fieldNames.getter();
  v60[0] = a2;
  v60[1] = a3;
  MEMORY[0x28223BE20](v29);
  v56 = v60;
  v30 = sub_25E8073B0(sub_25E81A090, v55, v29);

  if (v30)
  {

    return 1;
  }

  else
  {
    swift_beginAccess();
    v38 = *(v22 + 8);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    *(v22 + 8) = v38;
    if ((v39 & 1) == 0)
    {
      v38 = sub_25E7FF7B8(0, *(v38 + 2) + 1, 1, v38);
      *(v22 + 8) = v38;
    }

    v41 = *(v38 + 2);
    v40 = *(v38 + 3);
    if (v41 >= v40 >> 1)
    {
      v38 = sub_25E7FF7B8((v40 > 1), v41 + 1, 1, v38);
    }

    *(v38 + 2) = v41 + 1;
    v42 = &v38[32 * v41];
    *(v42 + 4) = a2;
    *(v42 + 5) = a3;
    v42[48] = v58;
    *(v42 + 7) = v57;
    *(v22 + 8) = v38;
    swift_endAccess();
    return 1;
  }
}

uint64_t PlanksWriter.writeArray<A>(_:label:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  swift_beginAccess();
  v11 = *(v10 + 24);
  v42 = *v10;
  v43 = *(v10 + 8);
  v44 = v11;
  v12 = FileMetadata.fieldNames.getter();
  *&v46[0] = a2;
  *(&v46[0] + 1) = a3;
  v41 = v46;
  v13 = sub_25E8073B0(sub_25E81B6CC, v40, v12);

  if (v13)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v15 = sub_25E829CDC();
    __swift_project_value_buffer(v15, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_21;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v42 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a2, a3, &v42);
    v20 = "Invalid array label: %s";
LABEL_20:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_21:

    return 0;
  }

  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07418, &qword_25E82AE08);
  sub_25E829EBC();
  v21 = v43;
  v39 = v44;
  v46[0] = v45[0];
  *(v46 + 10) = *(v45 + 10);
  if (!v43)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v36 = sub_25E829CDC();
    __swift_project_value_buffer(v36, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_21;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v42 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a2, a3, &v42);
    v20 = "Failed at writing array: %s";
    goto LABEL_20;
  }

  v38 = v42;
  (*(a5 + 8))(&v42, a4, a5);
  v22 = v42;
  v23 = sub_25E829F1C();
  swift_beginAccess();
  v24 = *(v10 + 8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 8) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_25E7FF7B8(0, *(v24 + 2) + 1, 1, v24);
    *(v10 + 8) = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = sub_25E7FF7B8((v26 > 1), v27 + 1, 1, v24);
  }

  *(v24 + 2) = v27 + 1;
  v28 = &v24[32 * v27];
  *(v28 + 4) = a2;
  *(v28 + 5) = a3;
  v28[48] = v22;
  *(v28 + 7) = v23;
  *(v10 + 8) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073C0, &qword_25E82AD90);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_25E82A940;
  *(v29 + 32) = v38;
  *(v29 + 40) = v21;
  *(v29 + 56) = v39;
  *(v29 + 64) = v46[0];
  *(v29 + 74) = *(v46 + 10);
  v30 = *(v10 + 16);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 16) = v30;
  if ((v31 & 1) == 0)
  {
    v30 = sub_25E7FF8C4(0, *(v30 + 2) + 1, 1, v30);
    *(v10 + 16) = v30;
  }

  v33 = *(v30 + 2);
  v32 = *(v30 + 3);
  if (v33 >= v32 >> 1)
  {
    v30 = sub_25E7FF8C4((v32 > 1), v33 + 1, 1, v30);
  }

  *(v30 + 2) = v33 + 1;
  v34 = &v30[40 * v33];
  v35 = 1;
  v34[32] = 1;
  *(v34 + 5) = v29;
  *(v34 + 6) = *(&v21 + 1);
  *(v34 + 7) = v39;
  *(v34 + 8) = 1;
  *(v10 + 16) = v30;
  swift_endAccess();
  return v35;
}

uint64_t sub_25E81B0B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t), const char *a12)
{
  v71[0] = a1;
  v18 = sub_25E829F4C();
  WitnessTable = swift_getWitnessTable();
  computeQuantizationParameters<A, B, C>(_:upperbound:)(v71, a4, a6, a5, v18, a9, a10, a7, &v72, a8, WitnessTable);
  v20 = v72;
  v21 = BYTE1(v73);
  v71[0] = a1;
  v64 = v73;
  v22 = quantizeArray<A, B, C>(_:parameters:)(v71, &v72, a6, a5, v18, a9, a10, a7);
  if (!v22)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v30 = sub_25E829CDC();
    __swift_project_value_buffer(v30, qword_27FD0A4B0);

    v31 = sub_25E829CBC();
    v32 = sub_25E82A02C();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_15;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v72 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_25E7FFAF0(a2, a3, &v72);
    _os_log_impl(&dword_25E7F6000, v31, v32, a12, v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x25F8C1620](v34, -1, -1);
    v35 = v33;
    goto LABEL_14;
  }

  v23 = a2;
  v24 = a11(v22, a2);

  v25 = a3;
  if ((v24 & 1) == 0)
  {
LABEL_11:
    if (qword_27FD072A0 == -1)
    {
LABEL_12:
      v36 = sub_25E829CDC();
      __swift_project_value_buffer(v36, qword_27FD0A4B0);

      v31 = sub_25E829CBC();
      v37 = sub_25E82A02C();

      if (!os_log_type_enabled(v31, v37))
      {
LABEL_15:

        return 0;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v72 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_25E7FFAF0(v23, v25, &v72);
      _os_log_impl(&dword_25E7F6000, v31, v37, "Failed at writing quantizedData: %s.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x25F8C1620](v39, -1, -1);
      v35 = v38;
LABEL_14:
      MEMORY[0x25F8C1620](v35, -1, -1);
      goto LABEL_15;
    }

LABEL_33:
    swift_once();
    goto LABEL_12;
  }

  v26 = v65 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  swift_beginAccess();
  v27 = v26 + 16;
  if (!*(*(v26 + 16) + 16))
  {
    swift_endAccess();
    goto LABEL_11;
  }

  sub_25E8075B8(&v72);
  v28 = *(&v72 + 1);
  if (*(&v72 + 1))
  {
    v29 = *(&v73 + 1);
    v70 = v73;
    v25 = *&v74[0];
    v63 = v72;
  }

  else
  {

    sub_25E80750C(*(*v27 + 16) - 1, &v72);
    v63 = v72;
    v28 = *(&v72 + 1);
    v29 = *(&v73 + 1);
    v70 = v73;
    v25 = *&v74[0];
  }

  swift_endAccess();
  v62 = v25;
  v66 = v29;
  v68 = v26;
  v23 = *(v28 + 16);

  if (v23)
  {
    v41 = 0;
    v42 = (v28 + 66);
    v43 = MEMORY[0x277D84F90];
    v44 = v64 | (v21 << 8);
    while (v41 < *(v28 + 16))
    {
      v45 = *(v42 - 34);
      v46 = *(v42 - 18);
      v47 = *(v42 - 2);
      *(v74 + 10) = *(v42 + 2);
      v73 = v46;
      v74[0] = v47;
      v72 = v45;
      v48 = *(v42 - 34);
      v49 = *(v42 - 18);
      v79 = *(v42 - 2);
      v77 = v48;
      v78 = v49;
      v50 = *v42;
      v76 = *(v42 + 2);
      v75 = v50;
      sub_25E8026B4(&v72, v71);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_25E7FF9E4(0, *(v43 + 2) + 1, 1, v43);
      }

      v52 = *(v43 + 2);
      v51 = *(v43 + 3);
      v25 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v43 = sub_25E7FF9E4((v51 > 1), v52 + 1, 1, v43);
      }

      ++v41;
      *(v43 + 2) = v25;
      v53 = &v43[64 * v52];
      v54 = v77;
      v55 = v78;
      v53[64] = v79;
      *(v53 + 2) = v54;
      *(v53 + 3) = v55;
      v53[65] = 1;
      v56 = v75;
      *(v53 + 35) = v76;
      *(v53 + 66) = v56;
      *(v53 + 72) = v20;
      *(v53 + 44) = v44;
      v42 += 16;
      if (v23 == v41)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_27:
  swift_bridgeObjectRelease_n();
  swift_beginAccess();
  v57 = *(v68 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v68 + 16) = v57;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v57 = sub_25E7FF8C4(0, *(v57 + 2) + 1, 1, v57);
    *v27 = v57;
  }

  v60 = *(v57 + 2);
  v59 = *(v57 + 3);
  if (v60 >= v59 >> 1)
  {
    v57 = sub_25E7FF8C4((v59 > 1), v60 + 1, 1, v57);
  }

  *(v57 + 2) = v60 + 1;
  v61 = &v57[40 * v60];
  v61[32] = v63;
  *(v61 + 5) = v43;
  *(v61 + 6) = v70;
  *(v61 + 7) = v66;
  *(v61 + 8) = v62;
  *v27 = v57;
  swift_endAccess();

  return 1;
}

uint64_t FieldType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x323374616F6C66;
    v8 = 0x343674616F6C66;
    if (v1 != 10)
    {
      v8 = 1819242338;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x3233746E6975;
    v10 = 0x3436746E6975;
    if (v1 != 7)
    {
      v10 = 0x363174616F6C66;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 947154537;
    v3 = 0x3436746E69;
    v4 = 0x38746E6975;
    if (v1 != 4)
    {
      v4 = 0x3631746E6975;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x3631746E69;
    if (v1 != 1)
    {
      v5 = 0x3233746E69;
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t FileMetadata.fieldNames.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_25E81F1CC(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_25E81F1CC((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

_BYTE *RowGroup.init(chunkType:columnChunks:beginOffset:byteSize:rowsCount:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

Planks::FileMetadata __swiftcall FileMetadata.init(version:schema:rowGroups:keyValueMetadata:)(Swift::Int version, Swift::OpaquePointer schema, Swift::OpaquePointer rowGroups, Swift::OpaquePointer keyValueMetadata)
{
  v9 = v4;
  sub_25E818978(MEMORY[0x277D84F90]);

  v9->_rawValue = version;
  v9[1]._rawValue = schema._rawValue;
  v9[2]._rawValue = rowGroups._rawValue;
  v9[3]._rawValue = keyValueMetadata._rawValue;
  result.keyValueMetadata._rawValue = v13;
  result.rowGroups._rawValue = v12;
  result.schema._rawValue = v11;
  result.version = v10;
  return result;
}

uint64_t ColumnChunk.init(schemaPath:beginOffset:byteSize:encoding:compression:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  v8 = *a6;
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 56) = 12;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v7;
  *(a7 + 33) = v8;
  return result;
}

uint64_t Chunkable.endOffset.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  v5 = (*(a2 + 16))(a1, a2);
  v6 = __OFADD__(v4, v5);
  result = v4 + v5;
  if (v6)
  {
    __break(1u);
  }

  return result;
}

Planks::FieldType_optional __swiftcall FieldType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E82A20C();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25E81BACC(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = FieldType.rawValue.getter();
  v4 = v3;
  if (v2 == FieldType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25E82A32C();
  }

  return v7 & 1;
}

uint64_t sub_25E81BB68()
{
  v1 = *v0;
  sub_25E82A39C();
  FieldType.rawValue.getter();
  sub_25E829DDC();

  return sub_25E82A3BC();
}

uint64_t sub_25E81BBD0()
{
  v2 = *v0;
  FieldType.rawValue.getter();
  sub_25E829DDC();
}

uint64_t sub_25E81BC34()
{
  v1 = *v0;
  sub_25E82A39C();
  FieldType.rawValue.getter();
  sub_25E829DDC();

  return sub_25E82A3BC();
}

uint64_t sub_25E81BCA4@<X0>(uint64_t *a1@<X8>)
{
  result = FieldType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SchemaElement.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SchemaElement.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_25E81BE80()
{
  v1 = 0x707954646C656966;
  if (*v0 != 1)
  {
    v1 = 0x756F43646C656966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_25E81BEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25E821824(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25E81BF10(uint64_t a1)
{
  v2 = sub_25E81FB2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E81BF4C(uint64_t a1)
{
  v2 = sub_25E81FB2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SchemaElement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07710, &qword_25E82B3F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v13[0] = v1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E81FB2C();
  sub_25E82A40C();
  v18 = 0;
  v11 = v13[1];
  sub_25E82A28C();
  if (!v11)
  {
    v17 = v14;
    v16 = 1;
    sub_25E81FB80();
    sub_25E82A2BC();
    v15 = 2;
    sub_25E82A2AC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SchemaElement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07728, &qword_25E82B3F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E81FB2C();
  sub_25E82A3FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = 0;
  v11 = sub_25E82A22C();
  v13 = v12;
  v14 = v11;
  v20 = 1;
  sub_25E81FBD4();
  sub_25E82A25C();
  v18 = v21;
  v19 = 2;
  v16 = sub_25E82A24C();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v18;
  *(a2 + 24) = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ChunkEncoding.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25E82A20C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_25E81C42C()
{
  sub_25E82A39C();
  sub_25E829DDC();
  return sub_25E82A3BC();
}

uint64_t sub_25E81C490()
{
  sub_25E82A39C();
  sub_25E829DDC();
  return sub_25E82A3BC();
}

uint64_t sub_25E81C4DC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25E82A20C();

  *a2 = v5 != 0;
  return result;
}

Planks::ChunkCompression_optional __swiftcall ChunkCompression.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E82A20C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ChunkCompression.rawValue.getter()
{
  if (*v0)
  {
    result = 0x657A69746E617571;
  }

  else
  {
    result = 0x6572706D6F636E75;
  }

  *v0;
  return result;
}

uint64_t sub_25E81C6C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x657A69746E617571;
  }

  else
  {
    v4 = 0x6572706D6F636E75;
  }

  if (v3)
  {
    v5 = 0xEC00000064657373;
  }

  else
  {
    v5 = 0xE900000000000064;
  }

  if (*a2)
  {
    v6 = 0x657A69746E617571;
  }

  else
  {
    v6 = 0x6572706D6F636E75;
  }

  if (*a2)
  {
    v7 = 0xE900000000000064;
  }

  else
  {
    v7 = 0xEC00000064657373;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25E82A32C();
  }

  return v9 & 1;
}

uint64_t sub_25E81C774()
{
  v1 = *v0;
  sub_25E82A39C();
  sub_25E829DDC();

  return sub_25E82A3BC();
}

uint64_t sub_25E81C804()
{
  *v0;
  sub_25E829DDC();
}

uint64_t sub_25E81C880()
{
  v1 = *v0;
  sub_25E82A39C();
  sub_25E829DDC();

  return sub_25E82A3BC();
}

uint64_t sub_25E81C90C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25E82A20C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25E81C96C(uint64_t *a1@<X8>)
{
  v2 = 0x6572706D6F636E75;
  if (*v1)
  {
    v2 = 0x657A69746E617571;
  }

  v3 = 0xEC00000064657373;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ColumnChunk.schemaPath.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ColumnChunk.schemaPath.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 ColumnChunk.quantization.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 56);
  result = *(v1 + 40);
  *a1 = result;
  a1[1].n128_u16[0] = v2;
  return result;
}

__n128 ColumnChunk.quantization.setter(__n128 *a1)
{
  v2 = a1[1].n128_u16[0];
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_25E81CC64()
{
  v1 = *v0;
  v2 = 0x6150616D65686373;
  v3 = 0x676E69646F636E65;
  v4 = 0x73736572706D6F63;
  if (v1 != 4)
  {
    v4 = 0x617A69746E617571;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x66664F6E69676562;
  if (v1 != 1)
  {
    v5 = 0x657A695365747962;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25E81CD3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25E82194C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25E81CD64(uint64_t a1)
{
  v2 = sub_25E81FC28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E81CDA0(uint64_t a1)
{
  v2 = sub_25E81FC28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ColumnChunk.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07738, &qword_25E82B400);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v24 = v1[3];
  v25 = v10;
  v30 = *(v1 + 32);
  v23 = *(v1 + 33);
  v11 = v1[5];
  v21 = v1[6];
  v22 = v11;
  HIDWORD(v20) = *(v1 + 28);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E81FC28();
  v13 = v3;
  sub_25E82A40C();
  LOBYTE(v27) = 0;
  v14 = v26;
  sub_25E82A28C();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v15 = v30;
  v16 = v23;
  v18 = v21;
  v17 = v22;
  LOBYTE(v27) = 1;
  sub_25E82A2CC();
  LOBYTE(v27) = 2;
  sub_25E82A2CC();
  LOBYTE(v27) = v15;
  v31 = 3;
  sub_25E81FC7C();
  sub_25E82A27C();
  LOBYTE(v27) = v16;
  v31 = 4;
  sub_25E81FCD0();
  sub_25E82A27C();
  v27 = v17;
  v28 = v18;
  v29 = WORD2(v20);
  v31 = 5;
  sub_25E81FD24();
  sub_25E82A27C();
  return (*(v4 + 8))(v7, v13);
}

uint64_t ColumnChunk.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07760, &qword_25E82B408);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v39 = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E81FC28();
  sub_25E82A3FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v30[0]) = 0;
  v11 = sub_25E82A22C();
  v13 = v12;
  v14 = v11;
  LOBYTE(v30[0]) = 1;
  v26 = sub_25E82A26C();
  LOBYTE(v30[0]) = 2;
  v25 = sub_25E82A26C();
  LOBYTE(v27) = 3;
  sub_25E81FD78();
  sub_25E82A21C();
  v39 = v30[0];
  LOBYTE(v27) = 4;
  sub_25E81FDCC();
  sub_25E82A21C();
  v24 = LOBYTE(v30[0]);
  v40 = 5;
  sub_25E81FE20();
  sub_25E82A21C();
  (*(v6 + 8))(v9, v5);
  v23 = v36;
  v22 = v37;
  HIDWORD(v21) = v38;
  *&v27 = v14;
  *(&v27 + 1) = v13;
  v15 = v25;
  v16 = v26;
  *&v28 = v26;
  *(&v28 + 1) = v25;
  v17 = v39;
  v29[0] = v39;
  v18 = v24;
  v29[1] = v24;
  *&v29[8] = v36;
  *&v29[16] = v37;
  *&v29[24] = v38;
  v19 = v28;
  *a2 = v27;
  a2[1] = v19;
  a2[2] = *v29;
  *(a2 + 42) = *&v29[10];
  sub_25E8026B4(&v27, v30);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v30[0] = v14;
  v30[1] = v13;
  v30[2] = v16;
  v30[3] = v15;
  v31 = v17;
  v32 = v18;
  v33 = v23;
  v34 = v22;
  v35 = WORD2(v21);
  return sub_25E80281C(v30);
}

uint64_t sub_25E81D420()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

Planks::RowGroupType_optional __swiftcall RowGroupType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E82A20C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RowGroupType.rawValue.getter()
{
  v1 = 1635017060;
  if (*v0 != 1)
  {
    v1 = 0x7865646E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C706D6973;
  }
}

uint64_t sub_25E81D51C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1635017060;
  if (v2 != 1)
  {
    v4 = 0x7865646E69;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656C706D6973;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1635017060;
  if (*a2 != 1)
  {
    v8 = 0x7865646E69;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C706D6973;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25E82A32C();
  }

  return v11 & 1;
}

uint64_t sub_25E81D604()
{
  v1 = *v0;
  sub_25E82A39C();
  sub_25E829DDC();

  return sub_25E82A3BC();
}

uint64_t sub_25E81D698()
{
  *v0;
  *v0;
  sub_25E829DDC();
}

uint64_t sub_25E81D718()
{
  v1 = *v0;
  sub_25E82A39C();
  sub_25E829DDC();

  return sub_25E82A3BC();
}

void sub_25E81D7B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1635017060;
  if (v2 != 1)
  {
    v5 = 0x7865646E69;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C706D6973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t RowGroup.columnChunks.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_25E81D9E4()
{
  v1 = *v0;
  v2 = 0x7079546B6E756863;
  v3 = 0x66664F6E69676562;
  v4 = 0x657A695365747962;
  if (v1 != 3)
  {
    v4 = 0x6E756F4373776F72;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x68436E6D756C6F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25E81DA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25E821B5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25E81DABC(uint64_t a1)
{
  v2 = sub_25E81FE74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E81DAF8(uint64_t a1)
{
  v2 = sub_25E81FE74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RowGroup.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07780, &qword_25E82B410);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v14[3] = *(v1 + 2);
  v15 = v10;
  v11 = *(v1 + 3);
  v14[1] = *(v1 + 4);
  v14[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E81FE74();
  sub_25E82A40C();
  v22 = v9;
  v21 = 0;
  sub_25E81FEC8();
  sub_25E82A2BC();
  if (!v2)
  {
    v16 = v15;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07798, &qword_25E82B418);
    sub_25E81FF1C();
    sub_25E82A2BC();
    v19 = 2;
    sub_25E82A2CC();
    v18 = 3;
    sub_25E82A2CC();
    v17 = 4;
    sub_25E82A2AC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t RowGroup.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD077B0, &qword_25E82B420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E81FE74();
  sub_25E82A3FC();
  if (!v2)
  {
    v25 = 0;
    sub_25E81FFF4();
    sub_25E82A25C();
    v11 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07798, &qword_25E82B418);
    v24 = 1;
    sub_25E820048();
    sub_25E82A25C();
    v13 = v20;
    v23 = 2;
    v19 = sub_25E82A26C();
    v22 = 3;
    v18 = sub_25E82A26C();
    v21 = 4;
    v14 = sub_25E82A24C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    v15 = v18;
    v16 = v19;
    *(a2 + 8) = v13;
    *(a2 + 16) = v16;
    *(a2 + 24) = v15;
    *(a2 + 32) = v14;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t FileMetadata.schema.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t FileMetadata.rowGroups.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t FileMetadata.keyValueMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_25E81E174(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_25E800EB4(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_25E82A32C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
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
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25E81E318()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x70756F7247776F72;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x616D65686373;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25E81E398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25E821D20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25E81E3C0(uint64_t a1)
{
  v2 = sub_25E820120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E81E3FC(uint64_t a1)
{
  v2 = sub_25E820120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD077D0, &qword_25E82B428);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v18 = v1[2];
  v19 = v9;
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E820120();
  v13 = v4;
  sub_25E82A40C();
  LOBYTE(v21) = 0;
  sub_25E82A2AC();
  if (!v2)
  {
    v15 = v17;
    v14 = v18;
    v21 = v19;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD077E0, &qword_25E82B430);
    sub_25E820174();
    sub_25E82A2BC();
    v21 = v14;
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD077F8, &qword_25E82B438);
    sub_25E82024C();
    sub_25E82A2BC();
    v21 = v15;
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07810, &qword_25E82B440);
    sub_25E8204D4(&qword_27FD07818);
    sub_25E82A2BC();
  }

  return (*(v5 + 8))(v8, v13);
}

uint64_t FileMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07820, &qword_25E82B448);
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v18);
  v8 = &v17 - v7;
  v19 = sub_25E818978(MEMORY[0x277D84F90]);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E820120();
  sub_25E82A3FC();
  if (!v2)
  {
    v10 = v5;
    LOBYTE(v21) = 0;
    v11 = v18;
    v12 = sub_25E82A24C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD077E0, &qword_25E82B430);
    v20 = 1;
    sub_25E820324();
    sub_25E82A25C();
    v13 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD077F8, &qword_25E82B438);
    v20 = 2;
    sub_25E8203FC();
    sub_25E82A25C();
    v17 = v12;
    v14 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07810, &qword_25E82B440);
    v20 = 3;
    sub_25E8204D4(&qword_27FD07848);
    sub_25E82A25C();
    (*(v10 + 8))(v8, v11);

    v16 = v21;
    *a2 = v17;
    a2[1] = v13;
    a2[2] = v14;
    a2[3] = v16;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t FileMetadata.rowsCount.getter()
{
  result = 0;
  v2 = *(v0 + 16);
  v3 = (v2 + 64);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = *v3;
    v3 += 5;
    v6 = __OFADD__(result, v5);
    result += v5;
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t FileMetadata.dataByteSize.getter()
{
  result = 0;
  v2 = *(v0 + 16);
  v3 = (v2 + 56);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = *v3;
    v3 += 5;
    v6 = __OFADD__(result, v5);
    result += v5;
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_25E81EB8C()
{
  v1 = *v0;
  sub_25E82A39C();
  MEMORY[0x25F8C1180](v1);
  return sub_25E82A3BC();
}

uint64_t sub_25E81EBD4()
{
  v1 = *v0;
  sub_25E82A39C();
  MEMORY[0x25F8C1180](v1);
  return sub_25E82A3BC();
}

uint64_t sub_25E81EC18()
{
  v1 = 1935763810;
  v2 = 0x6C61636973796870;
  if (*v0 != 2)
  {
    v2 = 0x546C616369676F6CLL;
  }

  if (*v0)
  {
    v1 = 0x656C616373;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25E81EC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25E821E90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25E81ECC0(uint64_t a1)
{
  v2 = sub_25E820540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E81ECFC(uint64_t a1)
{
  v2 = sub_25E820540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t QuantizationParameters.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07850, &qword_25E82B450);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v16 = *(v1 + 16);
  v11 = *(v1 + 17);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E820540();
  sub_25E82A40C();
  v22 = 0;
  sub_25E82A29C();
  if (!v2)
  {
    v13 = v16;
    v21 = 1;
    sub_25E82A29C();
    v20 = v13;
    v19 = 2;
    sub_25E81FB80();
    sub_25E82A2BC();
    v18 = v11;
    v17 = 3;
    sub_25E82A2BC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t QuantizationParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07860, &qword_25E82B458);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E820540();
  sub_25E82A3FC();
  if (!v2)
  {
    v24 = 0;
    sub_25E82A23C();
    v12 = v11;
    v23 = 1;
    sub_25E82A23C();
    v14 = v13;
    v21 = 2;
    sub_25E81FBD4();
    sub_25E82A25C();
    v16 = v22;
    v19 = 3;
    sub_25E82A25C();
    (*(v6 + 8))(v9, v5);
    v17 = v20;
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
    *(a2 + 17) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

char *sub_25E81F1CC(char *a1, int64_t a2, char a3)
{
  result = sub_25E81F22C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25E81F1EC(char *a1, int64_t a2, char a3)
{
  result = sub_25E81F338(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25E81F20C(char *a1, int64_t a2, char a3)
{
  result = sub_25E81F43C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25E81F22C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073B8, &unk_25E82C2E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25E81F338(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD072A8, &qword_25E82C300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25E81F43C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07960, &unk_25E82C2D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t _s6Planks22QuantizationParametersV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_5;
  }

  v4 = *(a1 + 17);
  v5 = *(a2 + 17);
  v17 = *(a1 + 16);
  v16 = *(a2 + 16);
  v6 = FieldType.rawValue.getter();
  v8 = v7;
  if (v6 == FieldType.rawValue.getter() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_25E82A32C();

    if ((v10 & 1) == 0)
    {
LABEL_5:
      v3 = 0;
      return v3 & 1;
    }
  }

  v11 = FieldType.rawValue.getter();
  v13 = v12;
  if (v11 == FieldType.rawValue.getter() && v13 == v14)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_25E82A32C();
  }

  return v3 & 1;
}

uint64_t _s6Planks11ColumnChunkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 56);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v19 = *(a2 + 40);
  v20 = *(a1 + 40);
  v11 = *(a2 + 56);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
  }

  else
  {
    v13 = sub_25E82A32C();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v8 && v3 == v7 && ((v4 ^ v9) & 1) == 0)
  {
    if (v5 == 2)
    {
      if (v10 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v10 == 2)
      {
        return 0;
      }

      if (v5)
      {
        v14 = 0x657A69746E617571;
      }

      else
      {
        v14 = 0x6572706D6F636E75;
      }

      if (v5)
      {
        v15 = 0xE900000000000064;
      }

      else
      {
        v15 = 0xEC00000064657373;
      }

      if (v10)
      {
        v16 = 0x657A69746E617571;
      }

      else
      {
        v16 = 0x6572706D6F636E75;
      }

      if (v10)
      {
        v17 = 0xE900000000000064;
      }

      else
      {
        v17 = 0xEC00000064657373;
      }

      if (v14 == v16 && v15 == v17)
      {

        goto LABEL_28;
      }

      v18 = sub_25E82A32C();

      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_28:
    if (v6 == 12)
    {
      if (v11 != 12)
      {
        return 0;
      }
    }

    else
    {
      v23 = v20;
      v24 = v6;
      if (v11 == 12)
      {
        return 0;
      }

      v21 = v19;
      v22 = v11;
      if ((_s6Planks22QuantizationParametersV2eeoiySbAC_ACtFZ_0(&v23, &v21) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t _s6Planks12FileMetadataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if ((sub_25E7FB138(a1[1], a2[1]) & 1) == 0 || (sub_25E7FB578(v3, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_25E81E174(v2, v4);
}

BOOL _s6Planks13SchemaElementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (sub_25E82A32C() & 1) != 0)
  {
    v7 = FieldType.rawValue.getter();
    v9 = v8;
    if (v7 == FieldType.rawValue.getter() && v9 == v10)
    {

      return v3 == v5;
    }

    v11 = sub_25E82A32C();

    if (v11)
    {
      return v3 == v5;
    }
  }

  return 0;
}

uint64_t _s6Planks8RowGroupV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v21 = *(a1 + 4);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = 0xE400000000000000;
  v11 = 1635017060;
  if (v2 != 1)
  {
    v11 = 0x7865646E69;
    v10 = 0xE500000000000000;
  }

  if (*a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x656C706D6973;
  }

  if (v2)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  v14 = 0xE400000000000000;
  v15 = 1635017060;
  if (*a2 != 1)
  {
    v15 = 0x7865646E69;
    v14 = 0xE500000000000000;
  }

  if (*a2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x656C706D6973;
  }

  if (*a2)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xE600000000000000;
  }

  if (v12 == v16 && v13 == v17)
  {
  }

  else
  {
    v18 = sub_25E82A32C();

    result = 0;
    if ((v18 & 1) == 0)
    {
      return result;
    }
  }

  v20 = sub_25E7FAFF0(v3, v6) & (v4 == v7);
  if (v5 != v9)
  {
    v20 = 0;
  }

  if (v21 == v8)
  {
    return v20;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_25E81FB2C()
{
  result = qword_27FD07718;
  if (!qword_27FD07718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07718);
  }

  return result;
}

unint64_t sub_25E81FB80()
{
  result = qword_27FD07720;
  if (!qword_27FD07720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07720);
  }

  return result;
}

unint64_t sub_25E81FBD4()
{
  result = qword_27FD07730;
  if (!qword_27FD07730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07730);
  }

  return result;
}

unint64_t sub_25E81FC28()
{
  result = qword_27FD07740;
  if (!qword_27FD07740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07740);
  }

  return result;
}

unint64_t sub_25E81FC7C()
{
  result = qword_27FD07748;
  if (!qword_27FD07748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07748);
  }

  return result;
}

unint64_t sub_25E81FCD0()
{
  result = qword_27FD07750;
  if (!qword_27FD07750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07750);
  }

  return result;
}

unint64_t sub_25E81FD24()
{
  result = qword_27FD07758;
  if (!qword_27FD07758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07758);
  }

  return result;
}

unint64_t sub_25E81FD78()
{
  result = qword_27FD07768;
  if (!qword_27FD07768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07768);
  }

  return result;
}

unint64_t sub_25E81FDCC()
{
  result = qword_27FD07770;
  if (!qword_27FD07770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07770);
  }

  return result;
}

unint64_t sub_25E81FE20()
{
  result = qword_27FD07778;
  if (!qword_27FD07778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07778);
  }

  return result;
}

unint64_t sub_25E81FE74()
{
  result = qword_27FD07788;
  if (!qword_27FD07788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07788);
  }

  return result;
}

unint64_t sub_25E81FEC8()
{
  result = qword_27FD07790;
  if (!qword_27FD07790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07790);
  }

  return result;
}

unint64_t sub_25E81FF1C()
{
  result = qword_27FD077A0;
  if (!qword_27FD077A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD07798, &qword_25E82B418);
    sub_25E81FFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD077A0);
  }

  return result;
}

unint64_t sub_25E81FFA0()
{
  result = qword_27FD077A8;
  if (!qword_27FD077A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD077A8);
  }

  return result;
}

unint64_t sub_25E81FFF4()
{
  result = qword_27FD077B8;
  if (!qword_27FD077B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD077B8);
  }

  return result;
}

unint64_t sub_25E820048()
{
  result = qword_27FD077C0;
  if (!qword_27FD077C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD07798, &qword_25E82B418);
    sub_25E8200CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD077C0);
  }

  return result;
}

unint64_t sub_25E8200CC()
{
  result = qword_27FD077C8;
  if (!qword_27FD077C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD077C8);
  }

  return result;
}

unint64_t sub_25E820120()
{
  result = qword_27FD077D8;
  if (!qword_27FD077D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD077D8);
  }

  return result;
}

unint64_t sub_25E820174()
{
  result = qword_27FD077E8;
  if (!qword_27FD077E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD077E0, &qword_25E82B430);
    sub_25E8201F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD077E8);
  }

  return result;
}

unint64_t sub_25E8201F8()
{
  result = qword_27FD077F0;
  if (!qword_27FD077F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD077F0);
  }

  return result;
}

unint64_t sub_25E82024C()
{
  result = qword_27FD07800;
  if (!qword_27FD07800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD077F8, &qword_25E82B438);
    sub_25E8202D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07800);
  }

  return result;
}

unint64_t sub_25E8202D0()
{
  result = qword_27FD07808;
  if (!qword_27FD07808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07808);
  }

  return result;
}

unint64_t sub_25E820324()
{
  result = qword_27FD07828;
  if (!qword_27FD07828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD077E0, &qword_25E82B430);
    sub_25E8203A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07828);
  }

  return result;
}

unint64_t sub_25E8203A8()
{
  result = qword_27FD07830;
  if (!qword_27FD07830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07830);
  }

  return result;
}

unint64_t sub_25E8203FC()
{
  result = qword_27FD07838;
  if (!qword_27FD07838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD077F8, &qword_25E82B438);
    sub_25E820480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07838);
  }

  return result;
}

unint64_t sub_25E820480()
{
  result = qword_27FD07840;
  if (!qword_27FD07840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07840);
  }

  return result;
}

uint64_t sub_25E8204D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD07810, &qword_25E82B440);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25E820540()
{
  result = qword_27FD07858;
  if (!qword_27FD07858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07858);
  }

  return result;
}

unint64_t sub_25E820598()
{
  result = qword_27FD07868;
  if (!qword_27FD07868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07868);
  }

  return result;
}

unint64_t sub_25E820620()
{
  result = qword_27FD07880;
  if (!qword_27FD07880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07880);
  }

  return result;
}

unint64_t sub_25E8206A8()
{
  result = qword_27FD07898;
  if (!qword_27FD07898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07898);
  }

  return result;
}

unint64_t sub_25E820730()
{
  result = qword_27FD078B0;
  if (!qword_27FD078B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD078B0);
  }

  return result;
}

uint64_t sub_25E8207B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for FieldType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FieldType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25E8209D4(unsigned int *a1, int a2)
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

  return *a1;
}

_WORD *sub_25E820A24(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25E820ADC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25E820B24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25E820BB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25E820C00(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25E820C5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25E820CA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for QuantizationParameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 18))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 0xC;
  v5 = v3 - 12;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for QuantizationParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 16) = 0;
    *result = a2 - 245;
    *(result + 8) = 0;
    if (a3 >= 0xF5)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 11;
    }
  }

  return result;
}

uint64_t sub_25E820DB8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25E820E4C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RowGroup.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RowGroup.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColumnChunk.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ColumnChunk.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25E8211AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25E82123C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25E821300()
{
  result = qword_27FD078C8;
  if (!qword_27FD078C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD078C8);
  }

  return result;
}

unint64_t sub_25E821358()
{
  result = qword_27FD078D0;
  if (!qword_27FD078D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD078D0);
  }

  return result;
}

unint64_t sub_25E8213B0()
{
  result = qword_27FD078D8;
  if (!qword_27FD078D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD078D8);
  }

  return result;
}

unint64_t sub_25E821408()
{
  result = qword_27FD078E0;
  if (!qword_27FD078E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD078E0);
  }

  return result;
}

unint64_t sub_25E821460()
{
  result = qword_27FD078E8;
  if (!qword_27FD078E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD078E8);
  }

  return result;
}

unint64_t sub_25E8214B8()
{
  result = qword_27FD078F0;
  if (!qword_27FD078F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD078F0);
  }

  return result;
}

unint64_t sub_25E821510()
{
  result = qword_27FD078F8;
  if (!qword_27FD078F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD078F8);
  }

  return result;
}

unint64_t sub_25E821568()
{
  result = qword_27FD07900;
  if (!qword_27FD07900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07900);
  }

  return result;
}

unint64_t sub_25E8215C0()
{
  result = qword_27FD07908;
  if (!qword_27FD07908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07908);
  }

  return result;
}

unint64_t sub_25E821618()
{
  result = qword_27FD07910;
  if (!qword_27FD07910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07910);
  }

  return result;
}

unint64_t sub_25E821670()
{
  result = qword_27FD07918;
  if (!qword_27FD07918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07918);
  }

  return result;
}

unint64_t sub_25E8216C8()
{
  result = qword_27FD07920;
  if (!qword_27FD07920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07920);
  }

  return result;
}

unint64_t sub_25E821720()
{
  result = qword_27FD07928;
  if (!qword_27FD07928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07928);
  }

  return result;
}

unint64_t sub_25E821778()
{
  result = qword_27FD07930;
  if (!qword_27FD07930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07930);
  }

  return result;
}

unint64_t sub_25E8217D0()
{
  result = qword_27FD07938;
  if (!qword_27FD07938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07938);
  }

  return result;
}

uint64_t sub_25E821824(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_25E82A32C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954646C656966 && a2 == 0xE900000000000065 || (sub_25E82A32C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F43646C656966 && a2 == 0xEA0000000000746ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_25E82A32C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_25E82194C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6150616D65686373 && a2 == 0xEA00000000006874;
  if (v4 || (sub_25E82A32C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x66664F6E69676562 && a2 == 0xEB00000000746573 || (sub_25E82A32C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657A695365747962 && a2 == 0xE800000000000000 || (sub_25E82A32C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69646F636E65 && a2 == 0xE800000000000000 || (sub_25E82A32C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73736572706D6F63 && a2 == 0xEB000000006E6F69 || (sub_25E82A32C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x617A69746E617571 && a2 == 0xEC0000006E6F6974)
  {

    return 5;
  }

  else
  {
    v6 = sub_25E82A32C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_25E821B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546B6E756863 && a2 == 0xE900000000000065;
  if (v4 || (sub_25E82A32C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68436E6D756C6F63 && a2 == 0xEC000000736B6E75 || (sub_25E82A32C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x66664F6E69676562 && a2 == 0xEB00000000746573 || (sub_25E82A32C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A695365747962 && a2 == 0xE800000000000000 || (sub_25E82A32C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E756F4373776F72 && a2 == 0xE900000000000074)
  {

    return 4;
  }

  else
  {
    v6 = sub_25E82A32C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_25E821D20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_25E82A32C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000 || (sub_25E82A32C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70756F7247776F72 && a2 == 0xE900000000000073 || (sub_25E82A32C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025E82C6B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_25E82A32C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_25E821E90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1935763810 && a2 == 0xE400000000000000;
  if (v3 || (sub_25E82A32C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_25E82A32C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61636973796870 && a2 == 0xEC00000065707954 || (sub_25E82A32C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x546C616369676F6CLL && a2 == 0xEB00000000657079)
  {

    return 3;
  }

  else
  {
    v6 = sub_25E82A32C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_25E821FF8()
{
  result = qword_27FD07940;
  if (!qword_27FD07940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07940);
  }

  return result;
}

unint64_t sub_25E82204C()
{
  result = qword_27FD07948;
  if (!qword_27FD07948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07948);
  }

  return result;
}

unint64_t sub_25E8220A0()
{
  result = qword_27FD07950;
  if (!qword_27FD07950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07950);
  }

  return result;
}

unint64_t sub_25E8220F4()
{
  result = qword_27FD07958;
  if (!qword_27FD07958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07958);
  }

  return result;
}

uint64_t sub_25E822184(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25E8221A4, 0, 0);
}

uint64_t sub_25E8221A4()
{
  if ((sub_25E829F7C() & 1) != 0 || (v1 = v0[3], v2 = type metadata accessor for AsyncTensorSequence(), v3 = v2[9], v4 = *(v1 + v3), v5 = *(v1 + v2[8]), v4 >= *(v5 + 16)))
  {
    v11 = v0[2];
    v12 = sub_25E829CAC();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    v6 = v0[2];
    v7 = v5 + 16 * v4;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    *(v1 + v3) = v4 + 1;
    v10 = v1[1];
    sub_25E8224F4(v1[2], v1[3], v8, v9, v1 + v2[7], v6);
  }

  v13 = v0[1];

  return v13();
}

uint64_t PlanksReader.readBatch(label:as:batchIndex:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25E7FCC80();
  if (*(v10 + 16) && (v11 = sub_25E800EB4(a1, a2), (v12 & 1) != 0) && ((v13 = *(*(v10 + 56) + 8 * v11), , , (v14 = *(v13 + 16)) != 0) ? (v15 = v14 > a4) : (v15 = 0), v15))
  {
    v24 = v13 + 16 * a4;
    v25 = *(v24 + 32);
    v26 = *(v24 + 40);

    return sub_25E8224F4(a1, a2, v25, v26, a3, a5);
  }

  else
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v16 = sub_25E829CDC();
    __swift_project_value_buffer(v16, qword_27FD0A4B0);

    v17 = sub_25E829CBC();
    v18 = sub_25E82A02C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_25E7FFAF0(a1, a2, &v27);
      _os_log_impl(&dword_25E7F6000, v17, v18, "Found no valid indices for label: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x25F8C1620](v20, -1, -1);
      MEMORY[0x25F8C1620](v19, -1, -1);
    }

    v21 = sub_25E829CAC();
    v22 = *(*(v21 - 8) + 56);

    return v22(a5, 1, 1, v21);
  }
}

uint64_t sub_25E8224F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v221 = a5;
  v219 = a4;
  v220 = a3;
  v225 = a6;
  v208 = sub_25E82A30C();
  v207 = *(v208 - 8);
  v10 = *(v207 + 64);
  MEMORY[0x28223BE20](v208);
  v206 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07438, &qword_25E82AE18);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v193 - v14;
  v210 = sub_25E829B9C();
  v209 = *(v210 - 8);
  v16 = *(v209 + 64);
  MEMORY[0x28223BE20](v210);
  v217 = &v193 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_25E829CAC();
  v227 = *(v226 - 1);
  v18 = *(v227 + 64);
  v19 = MEMORY[0x28223BE20](v226);
  v213 = &v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v216 = &v193 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v212 = &v193 - v24;
  MEMORY[0x28223BE20](v23);
  v218 = &v193 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v214 = &v193 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v193 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v193 - v33;
  v223 = sub_25E829B8C();
  v224 = *(v223 - 8);
  v35 = *(v224 + 8);
  v36 = MEMORY[0x28223BE20](v223);
  v215 = &v193 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v205 = &v193 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v211 = &v193 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v193 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v193 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v193 - v49;
  MEMORY[0x28223BE20](v48);
  v222 = &v193 - v51;
  v52 = sub_25E7FC954();
  if (*(v52 + 16))
  {
    v53 = sub_25E800EB4(a1, a2);
    if (v54)
    {
      v202 = v15;
      v55 = *(v52 + 56) + 32 * v53;
      v56 = *(v55 + 8);
      v201 = *v55;
      v57 = *(v55 + 16);
      v200 = *(v55 + 24);
      v204 = v56;

      v203 = v57;
      LOBYTE(v232[0]) = v57;
      ScalarType.init(fieldType:)(v232, v34);
      v58 = v224;
      v59 = v224 + 48;
      v60 = *(v224 + 6);
      v61 = v223;
      if (v60(v34, 1, v223) == 1)
      {
        sub_25E802774(v34, &qword_27FD07408, &unk_25E82C2F0);
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v62 = sub_25E829CDC();
        __swift_project_value_buffer(v62, qword_27FD0A4B0);
        v63 = sub_25E829CBC();
        v64 = sub_25E82A02C();

        v65 = os_log_type_enabled(v63, v64);
        v66 = v226;
        if (v65)
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          *&v232[0] = v68;
          *v67 = 136315138;
          LOBYTE(v228) = v203;
          v69 = FieldType.description.getter();
          v71 = sub_25E7FFAF0(v69, v70, v232);

          *(v67 + 4) = v71;
          _os_log_impl(&dword_25E7F6000, v63, v64, "Invalid ScalarType for element: %s", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v68);
          MEMORY[0x25F8C1620](v68, -1, -1);
          MEMORY[0x25F8C1620](v67, -1, -1);
        }

        return (*(v227 + 56))(v225, 1, 1, v66);
      }

      v198 = v7;
      v199 = v44;
      v84 = *(v58 + 4);
      v82 = (v58 + 32);
      v83 = v84;
      v84(v222, v34, v61);
      sub_25E8072C4(v221, v32);
      v197 = v59;
      if (v60(v32, 1, v61) == 1)
      {
        v195 = v83;
        v196 = v82;
        sub_25E802774(v32, &qword_27FD07408, &unk_25E82C2F0);
        v85 = v226;
        v86 = v224;
      }

      else
      {
        v83(v50, v32, v61);
        if ((sub_25E829B7C() & 1) == 0)
        {
          v145 = v224;
          if (qword_27FD072A0 != -1)
          {
            swift_once();
          }

          v146 = sub_25E829CDC();
          __swift_project_value_buffer(v146, qword_27FD0A4B0);
          v147 = v223;
          (*(v145 + 2))(v47, v50, v223);
          v148 = sub_25E829CBC();
          v149 = sub_25E82A02C();

          if (os_log_type_enabled(v148, v149))
          {
            v150 = swift_slowAlloc();
            v221 = swift_slowAlloc();
            *&v232[0] = v221;
            *v150 = 136315394;
            LODWORD(v220) = v149;
            v151 = ScalarType.description.getter();
            v153 = v152;
            v154 = *(v145 + 1);
            v154(v47, v147);
            v155 = sub_25E7FFAF0(v151, v153, v232);

            *(v150 + 4) = v155;
            *(v150 + 12) = 2080;
            LOBYTE(v228) = v203;
            v156 = FieldType.description.getter();
            v158 = sub_25E7FFAF0(v156, v157, v232);

            *(v150 + 14) = v158;
            _os_log_impl(&dword_25E7F6000, v148, v220, "Invalid requested type %s for tensor of type: %s", v150, 0x16u);
            v159 = v221;
            swift_arrayDestroy();
            MEMORY[0x25F8C1620](v159, -1, -1);
            MEMORY[0x25F8C1620](v150, -1, -1);
          }

          else
          {

            v154 = *(v145 + 1);
            v154(v47, v147);
          }

          v160 = v225;
          sub_25E829C1C();
          v154(v50, v147);
          v154(v222, v147);
          v141 = *(v227 + 56);
          v142 = v160;
          v143 = 0;
          v144 = v226;
          return v141(v142, v143, 1, v144);
        }

        v195 = v83;
        v196 = v82;
        v86 = v224;
        (*(v224 + 1))(v50, v61);
        v85 = v226;
      }

      v87 = v199;
      v88 = v198;
      if (v220 < 0 || (v89 = *(v198 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16), *(v89 + 16) <= v220) || (v90 = v89 + 40 * v220, v92 = *(v90 + 32), v91 = *(v90 + 48), v231 = *(v90 + 64), v230[0] = v92, v230[1] = v91, v219 < 0) || *(*(&v230[0] + 1) + 16) <= v219)
      {

        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v135 = sub_25E829CDC();
        __swift_project_value_buffer(v135, qword_27FD0A4B0);
        v136 = sub_25E829CBC();
        v137 = sub_25E82A02C();
        v138 = os_log_type_enabled(v136, v137);
        v139 = v222;
        if (v138)
        {
          v140 = swift_slowAlloc();
          *v140 = 0;
          _os_log_impl(&dword_25E7F6000, v136, v137, "Invalid index", v140, 2u);
          MEMORY[0x25F8C1620](v140, -1, -1);
        }

        (*(v86 + 1))(v139, v223);
      }

      else
      {
        v220 = v60;
        v93 = (*(&v230[0] + 1) + (v219 << 6));
        v94 = v93[2];
        v95 = v93[3];
        v96 = v93[4];
        *&v233[10] = *(v93 + 74);
        v232[1] = v95;
        *v233 = v96;
        v232[0] = v94;
        v229 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD072A8, &qword_25E82C300);
        v97 = swift_allocObject();
        *(v97 + 16) = xmmword_25E82A950;
        v98 = v200;
        *(v97 + 32) = v231;
        *(v97 + 40) = v98;
        sub_25E8028A8(v230, &v228);
        sub_25E8026B4(v232, &v228);
        sub_25E829BAC();
        v99 = v222;
        v194 = *(v86 + 2);
        v219 = v86 + 16;
        v194(v87, v222, v61);
        v100 = v202;
        sub_25E829BDC();
        v101 = sub_25E829BEC();
        v102 = (*(*(v101 - 8) + 56))(v100, 0, 1, v101);
        MEMORY[0x28223BE20](v102);
        v103 = v204;
        *(&v193 - 8) = v201;
        *(&v193 - 7) = v103;
        *(&v193 - 48) = v203;
        *(&v193 - 5) = v98;
        *(&v193 - 4) = v230;
        *(&v193 - 3) = v232;
        *(&v193 - 2) = v88;
        *(&v193 - 1) = &v229;
        v104 = v218;
        sub_25E829C3C();
        sub_25E80281C(v232);
        sub_25E81A140(v230);

        if (v229)
        {
          if (qword_27FD072A0 != -1)
          {
            swift_once();
          }

          v105 = sub_25E829CDC();
          v106 = __swift_project_value_buffer(v105, qword_27FD0A4B0);
          v107 = *(v227 + 16);
          v108 = v212;
          v107(v212, v104, v85);
          v109 = v216;
          v107(v216, v104, v85);
          v110 = v213;
          v107(v213, v104, v85);
          v111 = sub_25E829CBC();
          v112 = sub_25E82A01C();
          v113 = os_log_type_enabled(v111, v112);
          v204 = v106;
          if (v113)
          {
            v114 = swift_slowAlloc();
            v228 = swift_slowAlloc();
            v115 = v228;
            *v114 = 136315650;
            v116 = v217;
            sub_25E829C7C();
            sub_25E82767C(&qword_27FD07410, MEMORY[0x277D2CCF0]);
            v117 = v210;
            v118 = sub_25E82A2EC();
            v119 = v108;
            v121 = v120;
            (*(v209 + 8))(v116, v117);
            v122 = *(v227 + 8);
            (v122)(v119, v226);
            v123 = sub_25E7FFAF0(v118, v121, &v228);

            *(v114 + 4) = v123;
            *(v114 + 12) = 2048;
            v124 = v216;
            v125 = sub_25E829C0C();
            (v122)(v124, v226);
            *(v114 + 14) = v125;
            *(v114 + 22) = 2080;
            LOBYTE(v124) = v112;
            v126 = v199;
            sub_25E829BFC();
            v127 = ScalarType.description.getter();
            v129 = v128;
            v130 = v126;
            v131 = v110;
            v132 = v223;
            (*(v224 + 1))(v130, v223);
            (v122)(v131, v226);
            v133 = sub_25E7FFAF0(v127, v129, &v228);

            *(v114 + 24) = v133;
            _os_log_impl(&dword_25E7F6000, v111, v124, "Loaded tensor %s of %ld elements of type %s.", v114, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x25F8C1620](v115, -1, -1);
            v134 = v114;
            v85 = v226;
            MEMORY[0x25F8C1620](v134, -1, -1);
          }

          else
          {
            v122 = *(v227 + 8);
            (v122)(v109, v85);

            (v122)(v110, v85);
            (v122)(v108, v85);
            v132 = v223;
          }

          v161 = v222;
          v162 = v215;
          v163 = v214;
          sub_25E8072C4(v221, v214);
          v164 = (v220)(v163, 1, v132);
          v165 = v218;
          if (v164 == 1)
          {
            (*(v224 + 1))(v161, v132);
            sub_25E802774(v163, &qword_27FD07408, &unk_25E82C2F0);
          }

          else
          {
            v226 = v122;
            v166 = v211;
            v195(v211, v163, v132);
            sub_25E82767C(&qword_27FD07420, MEMORY[0x277D2CCE0]);
            v167 = v132;
            if ((sub_25E829DCC() & 1) == 0)
            {
              v170 = v205;
              v171 = v194;
              v194(v205, v161, v167);
              v172 = v162;
              v171(v162, v166, v167);
              v173 = sub_25E829CBC();
              v174 = sub_25E82A01C();
              if (os_log_type_enabled(v173, v174))
              {
                v175 = swift_slowAlloc();
                v221 = swift_slowAlloc();
                v228 = v221;
                *v175 = 136315394;
                LODWORD(v220) = v174;
                v176 = ScalarType.description.getter();
                v178 = v177;
                v179 = *(v224 + 1);
                v179(v170, v167);
                v180 = sub_25E7FFAF0(v176, v178, &v228);

                *(v175 + 4) = v180;
                *(v175 + 12) = 2080;
                v181 = ScalarType.description.getter();
                v183 = v182;
                v224 = v179;
                v179(v172, v167);
                v184 = sub_25E7FFAF0(v181, v183, &v228);
                v161 = v222;

                *(v175 + 14) = v184;
                _os_log_impl(&dword_25E7F6000, v173, v220, "Casting tensor of type %s to type %s.", v175, 0x16u);
                v185 = v221;
                swift_arrayDestroy();
                MEMORY[0x25F8C1620](v185, -1, -1);
                MEMORY[0x25F8C1620](v175, -1, -1);
              }

              else
              {

                v186 = *(v224 + 1);
                v186(v162, v167);
                v224 = v186;
                v186(v170, v167);
              }

              v187 = v207;
              v188 = v206;
              v189 = v208;
              (*(v207 + 104))(v206, *MEMORY[0x277D84660], v208);
              v169 = v225;
              v190 = v211;
              v191 = v218;
              sub_25E829C4C();
              (*(v187 + 8))(v188, v189);
              v192 = v224;
              v224(v190, v167);
              (v226)(v191, v85);
              v192(v161, v167);
              goto LABEL_54;
            }

            v168 = *(v224 + 1);
            v168(v166, v132);
            v168(v161, v132);
          }

          v169 = v225;
          (*(v227 + 32))(v225, v165, v85);
LABEL_54:
          v141 = *(v227 + 56);
          v142 = v169;
          v143 = 0;
          goto LABEL_35;
        }

        (*(v227 + 8))(v104, v85);
        (*(v86 + 1))(v99, v223);
      }

      v141 = *(v227 + 56);
      v142 = v225;
      v143 = 1;
LABEL_35:
      v144 = v85;
      return v141(v142, v143, 1, v144);
    }
  }

  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v73 = sub_25E829CDC();
  __swift_project_value_buffer(v73, qword_27FD0A4B0);

  v74 = sub_25E829CBC();
  v75 = sub_25E82A02C();

  v76 = os_log_type_enabled(v74, v75);
  v77 = v226;
  if (v76)
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *&v232[0] = v79;
    *v78 = 136315138;
    *(v78 + 4) = sub_25E7FFAF0(a1, a2, v232);
    _os_log_impl(&dword_25E7F6000, v74, v75, "Invalid SchemaElement for label: %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v79);
    MEMORY[0x25F8C1620](v79, -1, -1);
    MEMORY[0x25F8C1620](v78, -1, -1);
  }

  v80 = *(v227 + 56);
  v81 = v225;

  return v80(v81, 1, 1, v77);
}

uint64_t PlanksReader.iterBatches(label:as:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - v12;
  v14 = sub_25E7FCC80();
  if (*(v14 + 16) && (v15 = sub_25E800EB4(a1, a2), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);

    v18 = *(v17 + 16);

    if (v18)
    {
      sub_25E8072C4(a3, v13);

      return sub_25E823EE0(v5, a1, a2, v13, a4);
    }
  }

  else
  {
  }

  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v20 = sub_25E829CDC();
  __swift_project_value_buffer(v20, qword_27FD0A4B0);

  v21 = sub_25E829CBC();
  v22 = sub_25E82A02C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_25E7FFAF0(a1, a2, &v28);
    _os_log_impl(&dword_25E7F6000, v21, v22, "Found no valid indices for label: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x25F8C1620](v24, -1, -1);
    MEMORY[0x25F8C1620](v23, -1, -1);
  }

  v25 = type metadata accessor for AsyncTensorSequence();
  v26 = *(*(v25 - 8) + 56);

  return v26(a4, 1, 1, v25);
}

uint64_t sub_25E823EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for AsyncTensorSequence();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v14 + *(v12 + 36)) = 0;
  v15 = sub_25E7FCC80();
  if (*(v15 + 16) && (v16 = sub_25E800EB4(a2, a3), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);

    v14[1] = a1;
    v14[2] = a2;
    v14[3] = a3;
    sub_25E8072C4(a4, v14 + *(v10 + 28));
    *(v14 + *(v10 + 32)) = v18;

    sub_25E7FE000(a2, a3);
    v20 = v19;

    sub_25E802774(a4, &qword_27FD07408, &unk_25E82C2F0);
    *v14 = v20;
    sub_25E8279C8(v14, a5);
    return (*(v29 + 56))(a5, 0, 1, v10);
  }

  else
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v22 = sub_25E829CDC();
    __swift_project_value_buffer(v22, qword_27FD0A4B0);

    v23 = sub_25E829CBC();
    v24 = sub_25E82A02C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      v27 = sub_25E7FFAF0(a2, a3, &v30);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_25E7F6000, v23, v24, "Invalid label: %s for AsyncTensorSequence.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x25F8C1620](v26, -1, -1);
      MEMORY[0x25F8C1620](v25, -1, -1);
    }

    else
    {
    }

    sub_25E802774(a4, &qword_27FD07408, &unk_25E82C2F0);
    v28 = *(v29 + 56);

    return v28(a5, 1, 1, v10);
  }
}

uint64_t PlanksReader.readTensor(label:as:)@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v231 = a3;
  v234 = a4;
  v8 = sub_25E82A30C();
  v219 = *(v8 - 8);
  v220 = v8;
  v9 = *(v219 + 64);
  MEMORY[0x28223BE20](v8);
  v218 = &v203 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07438, &qword_25E82AE18);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v228 = &v203 - v13;
  v14 = sub_25E829B9C();
  v221 = *(v14 - 8);
  v222 = v14;
  v15 = *(v221 + 64);
  MEMORY[0x28223BE20](v14);
  v229 = &v203 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25E829CAC();
  v18 = *(v17 - 8);
  v235 = v17;
  v236 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v227 = &v203 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v224 = &v203 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v223 = &v203 - v25;
  MEMORY[0x28223BE20](v24);
  v230 = &v203 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v225 = &v203 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v203 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v203 - v34;
  v233 = sub_25E829B8C();
  v36 = *(v233 - 8);
  v37 = v36[8];
  v38 = MEMORY[0x28223BE20](v233);
  v217 = &v203 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v216 = &v203 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v226 = &v203 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v203 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v203 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v203 - v51;
  MEMORY[0x28223BE20](v50);
  v232 = &v203 - v53;
  v54 = sub_25E7FC954();
  if (*(v54 + 16) && (v55 = sub_25E800EB4(a1, a2), (v56 & 1) != 0))
  {
    v213 = a2;
    v212 = v5;
    v214 = a1;
    v57 = *(v54 + 56) + 32 * v55;
    v58 = *(v57 + 8);
    v210 = *v57;
    v59 = *(v57 + 16);
    v209 = *(v57 + 24);
    v215 = v58;

    LOBYTE(v238) = v59;
    ScalarType.init(fieldType:)(&v238, v35);
    v60 = v36[6];
    v61 = v233;
    if (v60(v35, 1, v233) == 1)
    {
      sub_25E802774(v35, &qword_27FD07408, &unk_25E82C2F0);
      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v62 = sub_25E829CDC();
      __swift_project_value_buffer(v62, qword_27FD0A4B0);
      v63 = sub_25E829CBC();
      v64 = sub_25E82A02C();

      v65 = os_log_type_enabled(v63, v64);
      v66 = v235;
      if (v65)
      {
        v67 = v59;
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v238 = v69;
        *v68 = 136315138;
        v237 = v67;
        v70 = FieldType.description.getter();
        v72 = sub_25E7FFAF0(v70, v71, &v238);

        *(v68 + 4) = v72;
        _os_log_impl(&dword_25E7F6000, v63, v64, "Invalid ScalarType for element: %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x25F8C1620](v69, -1, -1);
        MEMORY[0x25F8C1620](v68, -1, -1);
      }

      return (*(v236 + 56))(v234, 1, 1, v66);
    }

    v207 = v59;
    v208 = v46;
    v211 = v36;
    v85 = v36[4];
    v85(v232, v35, v61);
    sub_25E8072C4(v231, v33);
    v206 = v36 + 6;
    v86 = v60(v33, 1, v61);
    v87 = v60;
    v205 = v36 + 4;
    if (v86 == 1)
    {
      v204 = v85;
      sub_25E802774(v33, &qword_27FD07408, &unk_25E82C2F0);
      v88 = v211;
      v89 = v212;
      goto LABEL_20;
    }

    v85(v52, v33, v61);
    v90 = sub_25E829B7C();
    v89 = v212;
    if (v90)
    {
      v204 = v85;
      v88 = v211;
      (v211[1])(v52, v61);
LABEL_20:
      v91 = sub_25E7FDF0C(v214, v213);
      v92 = v235;
      v93 = v208;
      if (v91 < 1)
      {

        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v146 = sub_25E829CDC();
        __swift_project_value_buffer(v146, qword_27FD0A4B0);
        v147 = v213;

        v139 = sub_25E829CBC();
        v140 = sub_25E82A02C();

        v148 = os_log_type_enabled(v139, v140);
        v149 = v214;
        if (!v148)
        {
          goto LABEL_37;
        }

        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v238 = v144;
        *v143 = 136315138;
        *(v143 + 4) = sub_25E7FFAF0(v149, v147, &v238);
        v145 = "Found no valid rows for label: %s";
      }

      else
      {
        v94 = v91;
        v95 = sub_25E7FCC80();
        if (*(v95 + 16))
        {
          v96 = sub_25E800EB4(v214, v213);
          if (v97)
          {
            v214 = v87;
            v98 = *(*(v95 + 56) + 8 * v96);

            v237 = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD072A8, &qword_25E82C300);
            v99 = swift_allocObject();
            *(v99 + 16) = xmmword_25E82A950;
            v100 = v209;
            *(v99 + 32) = v94;
            *(v99 + 40) = v100;
            sub_25E829BAC();
            v101 = v88[2];
            v102 = v232;
            v213 = v88 + 2;
            v212 = v101;
            v101(v93, v232, v233);
            v103 = v228;
            sub_25E829BDC();
            v104 = sub_25E829BEC();
            v105 = (*(*(v104 - 8) + 56))(v103, 0, 1, v104);
            MEMORY[0x28223BE20](v105);
            *(&v203 - 8) = v98;
            *(&v203 - 7) = v89;
            v106 = v215;
            *(&v203 - 6) = v210;
            *(&v203 - 5) = v106;
            *(&v203 - 32) = v207;
            *(&v203 - 3) = v100;
            *(&v203 - 2) = &v237;
            v107 = v230;
            sub_25E829C3C();

            if (v237)
            {
              v108 = v235;
              if (qword_27FD072A0 != -1)
              {
                swift_once();
              }

              v109 = sub_25E829CDC();
              v110 = __swift_project_value_buffer(v109, qword_27FD0A4B0);
              v111 = *(v236 + 16);
              v112 = v223;
              v111(v223, v107, v108);
              v113 = v224;
              v111(v224, v107, v108);
              v114 = v227;
              v111(v227, v107, v108);
              v115 = sub_25E829CBC();
              v116 = sub_25E82A01C();
              if (os_log_type_enabled(v115, v116))
              {
                v117 = v113;
                v118 = swift_slowAlloc();
                v215 = swift_slowAlloc();
                v238 = v215;
                *v118 = 136315650;
                v119 = v229;
                LODWORD(v210) = v116;
                sub_25E829C7C();
                sub_25E82767C(&qword_27FD07410, MEMORY[0x277D2CCF0]);
                v120 = v222;
                v121 = sub_25E82A2EC();
                v123 = v122;
                (*(v221 + 8))(v119, v120);
                v228 = v110;
                v124 = *(v236 + 8);
                v124(v112, v235);
                v125 = v88;
                v126 = sub_25E7FFAF0(v121, v123, &v238);
                v108 = v235;

                *(v118 + 4) = v126;
                *(v118 + 12) = 2048;
                v127 = sub_25E829C0C();
                v124(v117, v108);
                *(v118 + 14) = v127;
                *(v118 + 22) = 2080;
                v128 = v208;
                v129 = v227;
                sub_25E829BFC();
                v130 = ScalarType.description.getter();
                v132 = v131;
                v133 = v128;
                v134 = v233;
                (v125[1])(v133, v233);
                v229 = v124;
                v124(v129, v108);
                v135 = sub_25E7FFAF0(v130, v132, &v238);

                *(v118 + 24) = v135;
                _os_log_impl(&dword_25E7F6000, v115, v210, "Loaded tensor %s of %ld elements of type %s.", v118, 0x20u);
                v136 = v215;
                swift_arrayDestroy();
                MEMORY[0x25F8C1620](v136, -1, -1);
                MEMORY[0x25F8C1620](v118, -1, -1);
              }

              else
              {
                v171 = *(v236 + 8);
                v171(v113, v108);

                v171(v114, v108);
                v229 = v171;
                v171(v112, v108);
                v134 = v233;
              }

              v172 = v232;
              v173 = v225;
              v174 = v226;
              sub_25E8072C4(v231, v225);
              v175 = v214(v173, 1, v134);
              v176 = v230;
              if (v175 == 1)
              {
                (v211[1])(v172, v134);
                sub_25E802774(v173, &qword_27FD07408, &unk_25E82C2F0);
LABEL_51:
                v179 = v234;
                (*(v236 + 32))(v234, v176, v108);
                v167 = *(v236 + 56);
                v168 = v179;
                v169 = 0;
                v170 = v108;
                return v167(v168, v169, 1, v170);
              }

              v204(v174, v173, v134);
              sub_25E82767C(&qword_27FD07420, MEMORY[0x277D2CCE0]);
              v177 = v134;
              if (sub_25E829DCC())
              {
                v178 = v211[1];
                v178(v174, v134);
                v178(v172, v134);
                goto LABEL_51;
              }

              v180 = v216;
              v181 = v212;
              v212(v216, v172, v134);
              v182 = v217;
              v181(v217, v174, v134);
              v183 = sub_25E829CBC();
              v184 = sub_25E82A01C();
              if (os_log_type_enabled(v183, v184))
              {
                v185 = swift_slowAlloc();
                v233 = swift_slowAlloc();
                v238 = v233;
                *v185 = 136315394;
                v186 = ScalarType.description.getter();
                v187 = v182;
                v189 = v188;
                v190 = v211[1];
                v190(v180, v177);
                v191 = sub_25E7FFAF0(v186, v189, &v238);

                *(v185 + 4) = v191;
                *(v185 + 12) = 2080;
                v192 = ScalarType.description.getter();
                v194 = v193;
                v190(v187, v177);
                v174 = v226;
                v195 = sub_25E7FFAF0(v192, v194, &v238);

                *(v185 + 14) = v195;
                _os_log_impl(&dword_25E7F6000, v183, v184, "Casting tensor of type %s to type %s.", v185, 0x16u);
                v196 = v233;
                swift_arrayDestroy();
                v172 = v232;
                MEMORY[0x25F8C1620](v196, -1, -1);
                MEMORY[0x25F8C1620](v185, -1, -1);
              }

              else
              {

                v190 = v211[1];
                v190(v182, v177);
                v190(v180, v177);
              }

              v198 = v219;
              v197 = v220;
              v199 = v218;
              (*(v219 + 104))(v218, *MEMORY[0x277D84660], v220);
              v200 = v234;
              v201 = v230;
              sub_25E829C4C();
              (*(v198 + 8))(v199, v197);
              v190(v174, v177);
              v202 = v201;
              v166 = v235;
              (v229)(v202, v235);
              v190(v172, v177);
              v167 = *(v236 + 56);
              v168 = v200;
              v169 = 0;
            }

            else
            {
              v166 = v235;
              (*(v236 + 8))(v107, v235);
              (v88[1])(v102, v233);
              v167 = *(v236 + 56);
              v168 = v234;
              v169 = 1;
            }

            v170 = v166;
            return v167(v168, v169, 1, v170);
          }
        }

        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v137 = sub_25E829CDC();
        __swift_project_value_buffer(v137, qword_27FD0A4B0);
        v138 = v213;

        v139 = sub_25E829CBC();
        v140 = sub_25E82A02C();

        v141 = os_log_type_enabled(v139, v140);
        v142 = v214;
        if (!v141)
        {
LABEL_37:

          (v211[1])(v232, v233);
          return (*(v236 + 56))(v234, 1, 1, v92);
        }

        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v238 = v144;
        *v143 = 136315138;
        *(v143 + 4) = sub_25E7FFAF0(v142, v138, &v238);
        v145 = "Found no valid indices for label: %s";
      }

      _os_log_impl(&dword_25E7F6000, v139, v140, v145, v143, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v144);
      MEMORY[0x25F8C1620](v144, -1, -1);
      MEMORY[0x25F8C1620](v143, -1, -1);
      goto LABEL_37;
    }

    v150 = v211;
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v151 = sub_25E829CDC();
    __swift_project_value_buffer(v151, qword_27FD0A4B0);
    v152 = v233;
    (v150[2])(v49, v52, v233);
    v153 = sub_25E829CBC();
    v154 = sub_25E82A02C();

    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v231 = swift_slowAlloc();
      v238 = v231;
      *v155 = 136315394;
      LODWORD(v230) = v154;
      v156 = ScalarType.description.getter();
      v158 = v157;
      v159 = v150[1];
      v159(v49, v152);
      v160 = sub_25E7FFAF0(v156, v158, &v238);

      *(v155 + 4) = v160;
      *(v155 + 12) = 2080;
      v237 = v207;
      v161 = FieldType.description.getter();
      v163 = sub_25E7FFAF0(v161, v162, &v238);

      *(v155 + 14) = v163;
      _os_log_impl(&dword_25E7F6000, v153, v230, "Invalid requested type %s for tensor of type: %s", v155, 0x16u);
      v164 = v231;
      swift_arrayDestroy();
      MEMORY[0x25F8C1620](v164, -1, -1);
      MEMORY[0x25F8C1620](v155, -1, -1);
    }

    else
    {

      v159 = v150[1];
      v159(v49, v152);
    }

    v165 = v234;
    sub_25E829C1C();
    v159(v52, v152);
    v159(v232, v152);
    return (*(v236 + 56))(v165, 0, 1, v235);
  }

  else
  {
    v74 = a1;

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v75 = sub_25E829CDC();
    __swift_project_value_buffer(v75, qword_27FD0A4B0);

    v76 = a2;
    v77 = sub_25E829CBC();
    v78 = sub_25E82A02C();

    v79 = os_log_type_enabled(v77, v78);
    v80 = v235;
    if (v79)
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v238 = v82;
      *v81 = 136315138;
      *(v81 + 4) = sub_25E7FFAF0(v74, v76, &v238);
      _os_log_impl(&dword_25E7F6000, v77, v78, "Invalid SchemaElement for label: %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x25F8C1620](v82, -1, -1);
      MEMORY[0x25F8C1620](v81, -1, -1);
    }

    v83 = *(v236 + 56);
    v84 = v234;

    return v83(v84, 1, 1, v80);
  }
}

void sub_25E825944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, _BYTE *a9)
{
  v63 = a4;
  v9 = *(a3 + 16);
  if (!v9)
  {
LABEL_23:
    *a9 = 1;
    return;
  }

  v12 = 0;
  v57 = OBJC_IVAR____TtC6Planks12PlanksReader_fd;
  v58 = v63 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata;
  v55 = a2 - a1;
  v13 = (a7 - 1);
  v14 = (a3 + 40);
  v56 = v13;
  while (1)
  {
    v15 = *(v14 - 1);
    if (v15 < 0 || (v16 = *(v58 + 16), v15 >= *(v16 + 16)) || (v17 = *v14, *v14 < 0) || (v18 = v16 + 40 * v15, v19 = *(v18 + 40), v17 >= *(v19 + 16)))
    {
      if (qword_27FD072A0 == -1)
      {
LABEL_25:
        v36 = sub_25E829CDC();
        __swift_project_value_buffer(v36, qword_27FD0A4B0);
        v37 = sub_25E829CBC();
        v38 = sub_25E82A02C();
        if (!os_log_type_enabled(v37, v38))
        {
          goto LABEL_47;
        }

        v39 = swift_slowAlloc();
        *v39 = 0;
        v40 = "Invalid index";
        v41 = v38;
        v42 = v37;
        v43 = v39;
        v44 = 2;
LABEL_44:
        _os_log_impl(&dword_25E7F6000, v42, v41, v40, v43, v44);
        v52 = v39;
        goto LABEL_45;
      }

LABEL_53:
      swift_once();
      goto LABEL_25;
    }

    v20 = *(v18 + 64);
    v21 = (v19 + (v17 << 6));
    v22 = v21[2];
    v23 = v21[3];
    v24 = v21[4];
    *&v62[10] = *(v21 + 74);
    v61 = v23;
    *v62 = v24;
    v60 = v22;
    if (v13 > 9)
    {
      v25 = 1;
    }

    else
    {
      v25 = qword_25E82C3F8[v13];
    }

    v26 = a8 * v25;
    if ((a8 * v25) >> 64 != (a8 * v25) >> 63)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v27 = v26 * v20;
    if ((v26 * v20) >> 64 != (v26 * v20) >> 63)
    {
      goto LABEL_49;
    }

    v28 = *(&v61 + 1);
    if (*(&v61 + 1) != v27)
    {
      break;
    }

    v29 = v12 + v27;
    if (__OFADD__(v12, v27))
    {
      goto LABEL_50;
    }

    if (a1)
    {
      if (v55 < v29)
      {
        goto LABEL_31;
      }

      if (v29 < v12)
      {
        goto LABEL_51;
      }

      v30 = a1 + v12;
      v31 = a1 + v29;
    }

    else
    {
      if (v29 > 0)
      {
LABEL_31:
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v47 = sub_25E829CDC();
        __swift_project_value_buffer(v47, qword_27FD0A4B0);
        v37 = sub_25E829CBC();
        v48 = sub_25E82A02C();
        if (!os_log_type_enabled(v37, v48))
        {
          goto LABEL_47;
        }

        v49 = swift_slowAlloc();
        v50 = v49;
        *v49 = 134218240;
        v51 = v55;
        if (!a1)
        {
          v51 = 0;
        }

        *(v49 + 4) = v51;
        *(v49 + 12) = 2048;
        *(v49 + 14) = v29;
        _os_log_impl(&dword_25E7F6000, v37, v48, "Failed at computing chunk offset: %ld vs %ld ", v49, 0x16u);
        v52 = v50;
LABEL_45:
        MEMORY[0x25F8C1620](v52, -1, -1);
        goto LABEL_47;
      }

      if (v29 < v12)
      {
        goto LABEL_52;
      }

      v31 = 0;
      v30 = 0;
    }

    v32 = *(v63 + v57);
    v33 = v61;
    sub_25E8026B4(&v60, v59);
    v34 = sub_25E829CFC();
    if (v35)
    {
      v59[0] = v34;
      sub_25E7FFC08();
      swift_willThrowTypedImpl();
      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v53 = sub_25E829CDC();
      __swift_project_value_buffer(v53, qword_27FD0A4B0);
      sub_25E8026B4(&v60, v59);
      v37 = sub_25E829CBC();
      v46 = sub_25E82A02C();
      if (!os_log_type_enabled(v37, v46))
      {
        goto LABEL_46;
      }

      v39 = swift_slowAlloc();
      *v39 = 134218240;
      sub_25E80281C(&v60);
      *(v39 + 4) = v33;
      sub_25E80281C(&v60);
      *(v39 + 12) = 2048;
      v54 = v31 - v30;
      if (!v30)
      {
        v54 = 0;
      }

      *(v39 + 14) = v54;
      v40 = "Failed at reading chunk at %lld for %ld bytes.";
LABEL_43:
      v41 = v46;
      v42 = v37;
      v43 = v39;
      v44 = 22;
      goto LABEL_44;
    }

    v14 += 2;
    sub_25E80281C(&v60);
    v12 = v29;
    --v9;
    v13 = v56;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  sub_25E8026B4(&v60, v59);
  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v45 = sub_25E829CDC();
  __swift_project_value_buffer(v45, qword_27FD0A4B0);
  sub_25E8026B4(&v60, v59);
  v37 = sub_25E829CBC();
  v46 = sub_25E82A02C();
  if (os_log_type_enabled(v37, v46))
  {
    v39 = swift_slowAlloc();
    *v39 = 134218240;
    sub_25E80281C(&v60);
    *(v39 + 4) = v28;
    sub_25E80281C(&v60);
    *(v39 + 12) = 2048;
    *(v39 + 14) = v27;
    v40 = "Found invalid chunk: %lld vs %ld";
    goto LABEL_43;
  }

LABEL_46:
  sub_25E80281C(&v60);
  sub_25E80281C(&v60);
LABEL_47:
}

uint64_t PlanksReader.readBatch<A, B>(label:as:quantization:batchIndex:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, unint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = sub_25E7FCC80();
  if (*(v19 + 16))
  {
    v41 = a7;
    v20 = a1;
    v21 = sub_25E800EB4(a1, a2);
    if (v22)
    {
      v40 = a9;
      v23 = *(*(v19 + 56) + 8 * v21);

      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = v24 > a5;
      }

      else
      {
        v25 = 0;
      }

      if (v25)
      {
        v37 = v23 + 16 * a5;
        v38 = *(v37 + 32);
        v39 = *(v37 + 40);

        return sub_25E826158(a1, a2, v38, v39, a3, a4, a6, v41, v40, a8, a10, a11, a12, a13, a14);
      }

      a9 = v40;
    }
  }

  else
  {
    v20 = a1;
  }

  v26 = v20;
  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v27 = sub_25E829CDC();
  __swift_project_value_buffer(v27, qword_27FD0A4B0);

  v28 = sub_25E829CBC();
  v29 = sub_25E82A02C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = a9;
    v32 = swift_slowAlloc();
    v46 = v32;
    *v30 = 136315138;
    *(v30 + 4) = sub_25E7FFAF0(v26, a2, &v46);
    _os_log_impl(&dword_25E7F6000, v28, v29, "Found no valid indices for label: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v33 = v32;
    a9 = v31;
    MEMORY[0x25F8C1620](v33, -1, -1);
    MEMORY[0x25F8C1620](v30, -1, -1);
  }

  v34 = sub_25E829CAC();
  v35 = *(*(v34 - 8) + 56);

  return v35(a9, 1, 1, v34);
}

uint64_t sub_25E826158@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = v15;
  v137 = a8;
  v138 = a6;
  v132 = a1;
  v133 = a2;
  v135 = a7;
  v136 = a14;
  v130 = a13;
  v126 = a12;
  v127 = a15;
  v134 = a11;
  v125 = a10;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07438, &qword_25E82AE18);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v124 = &v118[-v23];
  v24 = sub_25E829B8C();
  v131 = *(v24 - 8);
  v25 = *(v131 + 64);
  MEMORY[0x28223BE20](v24);
  v129 = &v118[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_25E829B9C();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v128 = &v118[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v118[-v32];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07998, &qword_25E82C3E8);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v118[-v36];
  v38 = sub_25E829CAC();
  v139 = *(v38 - 8);
  v39 = *(v139 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v118[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3 < 0 || (v42 = *(v16 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16), *(v42 + 16) <= a3) || a4 < 0 || (v43 = *(v42 + 40 * a3 + 40), *(v43 + 16) <= a4) || (v44 = v43 + (a4 << 6), v45 = *(v44 + 88), *(v44 + 88) == 12))
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v46 = sub_25E829CDC();
    __swift_project_value_buffer(v46, qword_27FD0A4B0);
    v47 = sub_25E829CBC();
    v48 = sub_25E82A02C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_25E7F6000, v47, v48, "Invalid index.", v49, 2u);
      MEMORY[0x25F8C1620](v49, -1, -1);
    }

    v50 = *(v139 + 56);
    v51 = a9;
    v52 = 1;
LABEL_11:

    return v50(v51, v52, 1, v38);
  }

  v119 = *(v44 + 88);
  v120 = v41;
  v121 = a5;
  v122 = a9;
  v55 = *(v44 + 72);
  v54 = *(v44 + 80);
  v123 = v45 >> 8;
  (*(v136 + 8))(v140, v137);
  LOBYTE(v143) = v45;
  v56 = FieldType.rawValue.getter();
  v58 = v57;
  if (v56 == FieldType.rawValue.getter() && v58 == v59)
  {
  }

  else
  {
    v60 = sub_25E82A32C();

    if ((v60 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  (*(v134 + 8))(v140, v135);
  LOBYTE(v143) = v123;
  v61 = FieldType.rawValue.getter();
  v63 = v62;
  if (v61 == FieldType.rawValue.getter() && v63 == v64)
  {

    goto LABEL_22;
  }

  v65 = sub_25E82A32C();

  if ((v65 & 1) == 0)
  {
LABEL_28:
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v74 = sub_25E829CDC();
    __swift_project_value_buffer(v74, qword_27FD0A4B0);
    v75 = sub_25E829CBC();
    v76 = sub_25E82A02C();
    v77 = os_log_type_enabled(v75, v76);
    v78 = v122;
    if (v77)
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v140[0] = v80;
      *v79 = 136315394;
      v81 = sub_25E82A43C();
      v83 = sub_25E7FFAF0(v81, v82, v140);

      *(v79 + 4) = v83;
      *(v79 + 12) = 2080;
      LOBYTE(v143) = v123;
      v84 = FieldType.description.getter();
      v86 = sub_25E7FFAF0(v84, v85, v140);

      *(v79 + 14) = v86;
      _os_log_impl(&dword_25E7F6000, v75, v76, "Invalid requested type %s for tensor of type: %s", v79, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C1620](v80, -1, -1);
      MEMORY[0x25F8C1620](v79, -1, -1);
    }

    sub_25E829C1C();
    v50 = *(v139 + 56);
    v51 = v78;
    v52 = 0;
    goto LABEL_11;
  }

LABEL_22:
  (*(v131 + 56))(v33, 1, 1, v24);
  v67 = v132;
  v66 = v133;
  sub_25E8224F4(v132, v133, a3, a4, v33, v37);
  sub_25E802774(v33, &qword_27FD07408, &unk_25E82C2F0);
  if ((*(v139 + 48))(v37, 1, v38) == 1)
  {
    sub_25E802774(v37, &qword_27FD07998, &qword_25E82C3E8);
    v68 = v122;
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v69 = sub_25E829CDC();
    __swift_project_value_buffer(v69, qword_27FD0A4B0);

    v70 = sub_25E829CBC();
    v71 = sub_25E82A02C();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v140[0] = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_25E7FFAF0(v67, v66, v140);
      _os_log_impl(&dword_25E7F6000, v70, v71, "Failed reading batch: %s.", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x25F8C1620](v73, -1, -1);
      MEMORY[0x25F8C1620](v72, -1, -1);
    }

    return (*(v139 + 56))(v68, 1, 1, v38);
  }

  else
  {
    v87 = v120;
    (*(v139 + 32))(v120, v37, v38);
    v88 = v137;
    v143 = sub_25E829C9C();
    v140[0] = v55;
    v140[1] = v54;
    v141 = v119;
    v142 = v123;
    v89 = sub_25E829F4C();
    WitnessTable = swift_getWitnessTable();
    v133 = v38;
    v90 = v127;
    v116 = v127;
    v92 = v134;
    v91 = v135;
    v93 = v126;
    v94 = v136;
    v95 = rebuildArray<A, B, C>(_:parameters:)(&v143, v140, v135, v88, v89, v134, v126, v136);

    if (v95)
    {
      sub_25E829C7C();
      v96 = v125;
      sub_25E829BCC();
      v97 = v124;
      sub_25E829BDC();
      v98 = sub_25E829BEC();
      v99 = (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
      v138 = v118;
      MEMORY[0x28223BE20](v99);
      *&v118[-80] = v91;
      *&v118[-72] = v88;
      *&v118[-64] = v96;
      *&v118[-56] = v92;
      v100 = v130;
      *&v118[-48] = v93;
      *&v118[-40] = v100;
      *&v118[-32] = v94;
      *&v118[-24] = v90;
      v116 = v95;
      v101 = v122;
      sub_25E829C3C();

      v102 = v133;
      (*(v139 + 8))(v87, v133);
      return (*(v139 + 56))(v101, 0, 1, v102);
    }

    else
    {
      v103 = v122;
      v104 = v133;
      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v105 = sub_25E829CDC();
      __swift_project_value_buffer(v105, qword_27FD0A4B0);
      v106 = sub_25E829CBC();
      v107 = sub_25E82A02C();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v140[0] = v109;
        *v108 = 136315394;
        v110 = sub_25E82A43C();
        v112 = sub_25E7FFAF0(v110, v111, v140);

        *(v108 + 4) = v112;
        *(v108 + 12) = 2080;
        v113 = sub_25E82A43C();
        v115 = sub_25E7FFAF0(v113, v114, v140);

        *(v108 + 14) = v115;
        _os_log_impl(&dword_25E7F6000, v106, v107, "Failed rebuilding of array of type %s into type %s.", v108, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v109, -1, -1);
        MEMORY[0x25F8C1620](v108, -1, -1);
      }

      (*(v139 + 8))(v120, v104);
      return (*(v139 + 56))(v103, 1, 1, v104);
    }
  }
}

void sub_25E826DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10)
{
  if ((a5 - 1) > 9u)
  {
    v15 = 1;
  }

  else
  {
    v15 = qword_25E82C3F8[(a5 - 1)];
  }

  v16 = a6 * v15;
  if ((a6 * v15) >> 64 != (a6 * v15) >> 63)
  {
    __break(1u);
    goto LABEL_22;
  }

  v17 = *(a7 + 32);
  v10 = v16 * v17;
  if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
LABEL_15:
    v28 = sub_25E829CDC();
    __swift_project_value_buffer(v28, qword_27FD0A4B0);
    sub_25E8026B4(a8, v31);
    v23 = sub_25E829CBC();
    v29 = sub_25E82A02C();
    if (os_log_type_enabled(v23, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134218240;
      *(v30 + 4) = v11;
      sub_25E80281C(a8);
      *(v30 + 12) = 2048;
      *(v30 + 14) = v10;
      _os_log_impl(&dword_25E7F6000, v23, v29, "Found invalid chunk: %lld vs %ld", v30, 0x16u);
      v27 = v30;
LABEL_17:
      MEMORY[0x25F8C1620](v27, -1, -1);
LABEL_19:

      return;
    }

LABEL_18:
    sub_25E80281C(a8);
    goto LABEL_19;
  }

  v11 = *(a8 + 24);
  if (v11 != v10)
  {
    if (qword_27FD072A0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v18 = *(a9 + OBJC_IVAR____TtC6Planks12PlanksReader_fd);
  v19 = *(a8 + 16);
  v20 = sub_25E829CFC();
  if (v21)
  {
    v31[0] = v20;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v22 = sub_25E829CDC();
    __swift_project_value_buffer(v22, qword_27FD0A4B0);
    sub_25E8026B4(a8, v31);
    v23 = sub_25E829CBC();
    v24 = sub_25E82A02C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134218240;
      *(v25 + 4) = v19;
      sub_25E80281C(a8);
      *(v25 + 12) = 2048;
      v26 = a2 - a1;
      if (!a1)
      {
        v26 = 0;
      }

      *(v25 + 14) = v26;
      _os_log_impl(&dword_25E7F6000, v23, v24, "Failed at reading chunk at %lld for %ld bytes.", v25, 0x16u);
      v27 = v25;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  *a10 = 1;
}

uint64_t AsyncTensorSequence.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25E8270F4, 0, 0);
}

uint64_t sub_25E8270F4()
{
  if ((sub_25E829F7C() & 1) != 0 || (v1 = v0[3], v2 = type metadata accessor for AsyncTensorSequence(), v3 = v2[9], v4 = *(v1 + v3), v5 = *(v1 + v2[8]), v4 >= *(v5 + 16)))
  {
    v11 = v0[2];
    v12 = sub_25E829CAC();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    v6 = v0[2];
    v7 = v5 + 16 * v4;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    *(v1 + v3) = v4 + 1;
    v10 = v1[1];
    sub_25E8224F4(v1[2], v1[3], v8, v9, v1 + v2[7], v6);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_25E8271F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25E827290;

  return AsyncTensorSequence.next()(a1);
}

uint64_t sub_25E827290()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25E827388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_25E827454;

  return (sub_25E822184)(a1, a2, a3, v3 + 16);
}

uint64_t sub_25E827454()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t type metadata accessor for AsyncTensorSequence()
{
  result = qword_27FD07970;
  if (!qword_27FD07970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E8275D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncTensorSequence();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E82767C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25E8276D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25E8277A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25E827858()
{
  type metadata accessor for PlanksReader();
  if (v0 <= 0x3F)
  {
    sub_25E82790C();
    if (v1 <= 0x3F)
    {
      sub_25E827964();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25E82790C()
{
  if (!qword_27FD07980)
  {
    sub_25E829B8C();
    v0 = sub_25E82A03C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD07980);
    }
  }
}

void sub_25E827964()
{
  if (!qword_27FD07988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD07990, &qword_25E82C3D8);
    v0 = sub_25E829F4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD07988);
    }
  }
}

uint64_t sub_25E8279C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncTensorSequence();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E827A2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 80);
  return sub_25E829EBC();
}

uint64_t sub_25E827A7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_25E827AE8();
  result = sub_25E8299BC();
  *a1 = result;
  return result;
}

unint64_t sub_25E827AE8()
{
  result = qword_27FD079A0;
  if (!qword_27FD079A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD079A0);
  }

  return result;
}

uint64_t computeQuantizationParameters<A, B, C>(_:upperbound:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v79 = a8;
  v80 = a6;
  v71 = a2;
  v81 = a9;
  v74 = a4;
  v77 = *(a4 - 8);
  v15 = *(v77 + 64);
  v70 = a10;
  MEMORY[0x28223BE20](a1);
  v73 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v64 = v60 - v21;
  v61 = sub_25E82A03C();
  v60[0] = *(v61 - 8);
  v22 = *(v60[0] + 64);
  v23 = MEMORY[0x28223BE20](v61);
  v65 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v60 - v26;
  v28 = *(a3 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v25);
  v72 = v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v76 = v60 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = v60 - v34;
  v78 = a7;
  v36 = *(a7 + 16);
  v68 = a5;
  v69 = v36;
  v37 = *(*(v36 + 24) + 8);
  v66 = a11;
  v63 = v37;
  v67 = a1;
  sub_25E829E3C();
  v38 = *(v28 + 48);
  v39 = v38(v27, 1, a3);
  v75 = v35;
  v62 = v18;
  v60[1] = AssociatedTypeWitness;
  if (v39 == 1)
  {
    swift_getAssociatedConformanceWitness();
    sub_25E82A33C();
    sub_25E82A2FC();
    if (v38(v27, 1, a3) != 1)
    {
      (*(v60[0] + 8))(v27, v61);
    }
  }

  else
  {
    (*(v28 + 32))(v35, v27, a3);
  }

  v40 = v65;
  sub_25E829E4C();
  v41 = v38(v40, 1, a3);
  v42 = v74;
  if (v41 == 1)
  {
    swift_getAssociatedConformanceWitness();
    sub_25E82A33C();
    v43 = v76;
    sub_25E82A2FC();
    if (v38(v40, 1, a3) != 1)
    {
      (*(v60[0] + 8))(v40, v61);
    }
  }

  else
  {
    v43 = v76;
    (*(v28 + 32))(v76, v40, a3);
  }

  v44 = v77;
  v45 = v73;
  (*(v77 + 16))(v73, v71, v42);
  v46 = *(v70 + 8);
  if (sub_25E82A07C() < 65)
  {
    v48 = sub_25E82A08C();
    v49 = sub_25E82A06C();
    (*(v44 + 8))(v45, v42);
    if (v48)
    {
      v47 = v49;
    }

    else
    {
      v47 = v49;
    }
  }

  else
  {
    sub_25E8032B4();
    sub_25E828CB0();
    sub_25E829D9C();
    (*(v44 + 8))(v45, v42);
    v47 = v83[0];
  }

  v50 = v75;
  v51 = *(*(*(v69 + 16) + 8) + 8);
  v52 = v72;
  sub_25E82A1BC();
  sub_25E8032B4();
  sub_25E829D8C();
  v53 = v47 / v83[0];
  (*(v28 + 16))(v52, v43, a3);
  sub_25E829D8C();
  v54 = -(v83[0] * v53);
  (*(v79 + 8))(v83, v42);
  v55 = LOBYTE(v83[0]);
  (*(v80 + 8))(&v82, a3);
  v56 = *(v28 + 8);
  v56(v43, a3);
  result = (v56)(v50, a3);
  v58 = v82;
  v59 = v81;
  *v81 = v54;
  v59[1] = v53;
  *(v59 + 16) = v55;
  *(v59 + 17) = v58;
  return result;
}

uint64_t quantizeArray<A, B, C>(_:parameters:)(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4, unsigned int (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a7;
  v59 = a1;
  v13 = *a2;
  v14 = a2[1];
  v61 = *(a2 + 16);
  v15 = *(a2 + 17);
  v16 = *(a6 + 8);
  v16(&v62, a3, a6);
  v60 = v15;
  LOBYTE(v63) = v15;
  v17 = FieldType.rawValue.getter();
  v19 = v18;
  if (v17 == FieldType.rawValue.getter() && v19 == v20)
  {
  }

  else
  {
    v21 = sub_25E82A32C();

    if ((v21 & 1) == 0)
    {
      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v33 = sub_25E829CDC();
      __swift_project_value_buffer(v33, qword_27FD0A4B0);
      v34 = sub_25E829CBC();
      v35 = sub_25E82A02C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v62 = v37;
        *v36 = 136315394;
        v16(&v63, a3, a6);
        v38 = FieldType.description.getter();
        v40 = sub_25E7FFAF0(v38, v39, &v62);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2080;
        LOBYTE(v63) = v60;
        v41 = FieldType.description.getter();
        v43 = sub_25E7FFAF0(v41, v42, &v62);

        *(v36 + 14) = v43;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid input type %s for quantization logical type: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      return 0;
    }
  }

  v22 = *(a8 + 8);
  v22(&v62, a4, a8);
  LOBYTE(v63) = v61;
  v23 = FieldType.rawValue.getter();
  v25 = v24;
  if (v23 == FieldType.rawValue.getter() && v25 == v26)
  {

LABEL_9:
    MEMORY[0x28223BE20](v27);
    v55[2] = a3;
    v55[3] = a4;
    v55[4] = a5;
    v55[5] = a6;
    v55[6] = v58;
    v55[7] = a8;
    v55[8] = v30;
    v55[9] = v29;
    v55[10] = v13;
    v55[11] = v14;
    v56 = v61;
    v57 = v60;
    return sub_25E828FB4(sub_25E829898, v55, a5, a4, MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v31);
  }

  v28 = sub_25E82A32C();

  if (v28)
  {
    goto LABEL_9;
  }

  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v44 = sub_25E829CDC();
  __swift_project_value_buffer(v44, qword_27FD0A4B0);
  v45 = sub_25E829CBC();
  v46 = sub_25E82A02C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v62 = v48;
    *v47 = 136315394;
    v22(&v63, a4, a8);
    v49 = FieldType.description.getter();
    v51 = sub_25E7FFAF0(v49, v50, &v62);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    LOBYTE(v63) = v61;
    v52 = FieldType.description.getter();
    v54 = sub_25E7FFAF0(v52, v53, &v62);

    *(v47 + 14) = v54;
    _os_log_impl(&dword_25E7F6000, v45, v46, "Invalid output type %s for quantization physical type: %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C1620](v48, -1, -1);
    MEMORY[0x25F8C1620](v47, -1, -1);
  }

  return 0;
}

uint64_t rebuildArray<A, B, C>(_:parameters:)(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, unsigned int (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a7;
  v59 = a1;
  v13 = *a2;
  v14 = a2[1];
  v61 = *(a2 + 16);
  v15 = *(a2 + 17);
  v16 = *(a6 + 8);
  v16(&v62, a3, a6);
  v60 = v15;
  LOBYTE(v63) = v15;
  v17 = FieldType.rawValue.getter();
  v19 = v18;
  if (v17 == FieldType.rawValue.getter() && v19 == v20)
  {
  }

  else
  {
    v21 = sub_25E82A32C();

    if ((v21 & 1) == 0)
    {
      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v33 = sub_25E829CDC();
      __swift_project_value_buffer(v33, qword_27FD0A4B0);
      v34 = sub_25E829CBC();
      v35 = sub_25E82A02C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v62 = v37;
        *v36 = 136315394;
        v16(&v63, a3, a6);
        v38 = FieldType.description.getter();
        v40 = sub_25E7FFAF0(v38, v39, &v62);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2080;
        LOBYTE(v63) = v60;
        v41 = FieldType.description.getter();
        v43 = sub_25E7FFAF0(v41, v42, &v62);

        *(v36 + 14) = v43;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid input type %s for quantization logical type: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      return 0;
    }
  }

  v22 = *(a8 + 8);
  v22(&v62, a4, a8);
  LOBYTE(v63) = v61;
  v23 = FieldType.rawValue.getter();
  v25 = v24;
  if (v23 == FieldType.rawValue.getter() && v25 == v26)
  {

LABEL_9:
    MEMORY[0x28223BE20](v27);
    v55[2] = a3;
    v55[3] = a4;
    v55[4] = a5;
    v55[5] = a6;
    v55[6] = v58;
    v55[7] = a8;
    v55[8] = v30;
    v55[9] = v29;
    v55[10] = v13;
    v55[11] = v14;
    v56 = v61;
    v57 = v60;
    return sub_25E828FB4(sub_25E8298C4, v55, a5, a3, MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v31);
  }

  v28 = sub_25E82A32C();

  if (v28)
  {
    goto LABEL_9;
  }

  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v44 = sub_25E829CDC();
  __swift_project_value_buffer(v44, qword_27FD0A4B0);
  v45 = sub_25E829CBC();
  v46 = sub_25E82A02C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v62 = v48;
    *v47 = 136315394;
    v22(&v63, a4, a8);
    v49 = FieldType.description.getter();
    v51 = sub_25E7FFAF0(v49, v50, &v62);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    LOBYTE(v63) = v61;
    v52 = FieldType.description.getter();
    v54 = sub_25E7FFAF0(v52, v53, &v62);

    *(v47 + 14) = v54;
    _os_log_impl(&dword_25E7F6000, v45, v46, "Invalid output type %s for quantization physical type: %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C1620](v48, -1, -1);
    MEMORY[0x25F8C1620](v47, -1, -1);
  }

  return 0;
}

unint64_t sub_25E828CB0()
{
  result = qword_27FD079A8;
  if (!qword_27FD079A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD079A8);
  }

  return result;
}

uint64_t sub_25E828D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, uint64_t a8)
{
  v31[2] = a5;
  v31[1] = a4;
  v11 = *(*(a2 - 8) + 64);
  v31[0] = a8;
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v12);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v31 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v31 - v24;
  (*(v26 + 16))(v14);
  sub_25E8032B4();
  sub_25E829D8C();
  v32 = v32 * a7 + a6;
  v27 = *(v31[0] + 8);
  sub_25E82A09C();
  sub_25E82A19C();
  v28 = *(*(v27 + 32) + 8);
  sub_25E82A34C();
  v29 = *(v16 + 8);
  v29(v20, a3);
  sub_25E82A18C();
  sub_25E82A35C();
  v29(v20, a3);
  v29(v23, a3);
  return (v29)(v25, a3);
}

uint64_t sub_25E828FB4(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_25E82A03C();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_25E829E1C();
  v70 = sub_25E82A14C();
  v65 = sub_25E82A15C();
  sub_25E82A12C();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_25E829E0C();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_25E82A05C();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_25E82A13C();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_25E82A05C();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_25E82A13C();
      sub_25E82A05C();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t sub_25E8296A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>, uint64_t a4)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9);
  v10 = *(a4 + 8);
  if (sub_25E82A07C() < 65)
  {
    v12[1] = a3;
    sub_25E82A08C();
    sub_25E82A06C();
  }

  else
  {
    sub_25E8032B4();
    sub_25E828CB0();
    sub_25E829D9C();
  }

  (*(v6 + 8))(v9, a2);
  return sub_25E829DAC();
}