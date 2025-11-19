uint64_t sub_25E8072C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E807334(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E8073B0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_25E80745C(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  sub_25E817448(v2, v3, 0, 1, a1);
}

uint64_t sub_25E807498(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25E82A32C() & 1;
  }
}

uint64_t sub_25E80750C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25E80739C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v12 = *(v9 + 32);
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = *(v9 + 16);
    *(a2 + 32) = v12;
    result = memmove(v9, (v9 + 40), 40 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_25E8075B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      v7 = v3 + 40 * v5;
      v8 = *v7;
      v9 = *(v7 + 24);
      *a1 = *(v7 - 8);
      *(a1 + 8) = v8;
      *(a1 + 16) = *(v7 + 8);
      *(a1 + 32) = v9;
      *(v3 + 16) = v6;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_25E80739C(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25E807644(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25E80768C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25E82A32C() & 1;
  }
}

unint64_t sub_25E8076E4()
{
  result = qword_27FD07430;
  if (!qword_27FD07430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD07428, &qword_25E82AE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07430);
  }

  return result;
}

uint64_t PlanksReader.readBatch<A>(label:as:batchIndex:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_25E7FCC80();
  if (*(v12 + 16) && (v13 = sub_25E800EB4(a1, a2), (v14 & 1) != 0) && ((v15 = *(*(v12 + 56) + 8 * v13), , , (v16 = *(v15 + 16)) != 0) ? (v17 = v16 > a4) : (v17 = 0), v17))
  {
    v24 = v15 + 16 * a4;
    v25 = *(v24 + 32);
    v26 = *(v24 + 40);

    return sub_25E807984(a1, a2, a3, v25, v26, a5, a6);
  }

  else
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v18 = sub_25E829CDC();
    __swift_project_value_buffer(v18, qword_27FD0A4B0);

    v19 = sub_25E829CBC();
    v20 = sub_25E82A02C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_25E7FFAF0(a1, a2, &v27);
      _os_log_impl(&dword_25E7F6000, v19, v20, "Found no valid indices for label: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x25F8C1620](v22, -1, -1);
      MEMORY[0x25F8C1620](v21, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_25E807984(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = sub_25E7FC954();
  if (!*(v15 + 16) || (v16 = sub_25E800EB4(a1, a2), (v17 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v25 = sub_25E829CDC();
    __swift_project_value_buffer(v25, qword_27FD0A4B0);

    v26 = sub_25E829CBC();
    v27 = sub_25E82A02C();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_23;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v72[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_25E7FFAF0(a1, a2, v72);
    _os_log_impl(&dword_25E7F6000, v26, v27, "Invalid SchemaElement for label: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x25F8C1620](v29, -1, -1);
    v30 = v28;
    goto LABEL_22;
  }

  v18 = *(v15 + 56) + 32 * v16;
  v19 = *(v18 + 8);
  v65 = *v18;
  v20 = *(v18 + 16);
  v68 = *(v18 + 24);

  v66 = *(a7 + 8);
  v66(v71, a6, a7);
  v67 = v20;
  LOBYTE(v72[0]) = v20;
  v21 = FieldType.rawValue.getter();
  v23 = v22;
  if (v21 == FieldType.rawValue.getter() && v23 == v24)
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

      v45 = sub_25E829CDC();
      __swift_project_value_buffer(v45, qword_27FD0A4B0);

      v46 = sub_25E829CBC();
      v47 = sub_25E82A02C();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v72[0] = v49;
        *v48 = 136315394;
        v66(v71, a6, a7);
        v50 = FieldType.description.getter();
        v52 = sub_25E7FFAF0(v50, v51, v72);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        v53 = sub_25E7FED8C(v65, v19, v67, v68);
        v55 = v54;

        v56 = sub_25E7FFAF0(v53, v55, v72);

        *(v48 + 14) = v56;
        _os_log_impl(&dword_25E7F6000, v46, v47, "Invalid array type: %s for schema: %s", v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v49, -1, -1);
        MEMORY[0x25F8C1620](v48, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  if (a4 < 0 || (v31 = *(v8 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16), *(v31 + 16) <= a4) || a5 < 0 || (v32 = v31 + 40 * a4, v33 = *(v32 + 40), *(v33 + 16) <= a5))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v41 = sub_25E829CDC();
    __swift_project_value_buffer(v41, qword_27FD0A4B0);
    v26 = sub_25E829CBC();
    v42 = sub_25E82A02C();
    if (!os_log_type_enabled(v26, v42))
    {
      goto LABEL_23;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_25E7F6000, v26, v42, "Invalid index", v43, 2u);
    v30 = v43;
LABEL_22:
    MEMORY[0x25F8C1620](v30, -1, -1);
LABEL_23:

    return 0;
  }

  v34 = *(v32 + 64);
  v35 = (v33 + (a5 << 6));
  v36 = v35[2];
  v37 = v35[3];
  v38 = v35[4];
  *&v73[10] = *(v35 + 74);
  v72[1] = v37;
  *v73 = v38;
  v72[0] = v36;
  sub_25E8026B4(v72, v71);

  v70 = 0;
  v39 = v68 * v34;
  if ((v68 * v34) >> 64 == (v68 * v34) >> 63)
  {
    if ((v67 - 1) > 9)
    {
      v40 = 1;
    }

    else
    {
      v40 = qword_25E82B0A0[(v67 - 1)];
    }

    if ((v39 * v40) >> 64 == (v39 * v40) >> 63)
    {
      MEMORY[0x28223BE20](v39);
      sub_25E829EFC();
      sub_25E80281C(v72);

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  swift_once();
  v57 = sub_25E829CDC();
  __swift_project_value_buffer(v57, qword_27FD0A4B0);

  v58 = sub_25E829CBC();
  v59 = sub_25E82A01C();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v71[0] = v61;
    *v60 = 134218242;
    *(v60 + 4) = sub_25E829F1C();

    *(v60 + 12) = 2080;
    v66(&v69, a6, a7);
    v62 = FieldType.description.getter();
    v64 = sub_25E7FFAF0(v62, v63, v71);

    *(v60 + 14) = v64;
    _os_log_impl(&dword_25E7F6000, v58, v59, "Loaded array of %ld elements of type %s.", v60, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x25F8C1620](v61, -1, -1);
    MEMORY[0x25F8C1620](v60, -1, -1);
  }

  else
  {
  }

  return v21;
}

double PlanksReader.iterBatches<A>(label:as:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_25E7FCC80();
  if (*(v8 + 16) && (v9 = sub_25E800EB4(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);

    v12 = *(v11 + 16);

    if (v12)
    {

      return sub_25E808330(v4, a1, a2, a3);
    }
  }

  else
  {
  }

  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v14 = sub_25E829CDC();
  __swift_project_value_buffer(v14, qword_27FD0A4B0);

  v15 = sub_25E829CBC();
  v16 = sub_25E82A02C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_25E7FFAF0(a1, a2, &v19);
    _os_log_impl(&dword_25E7F6000, v15, v16, "Found no valid indices for label: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x25F8C1620](v18, -1, -1);
    MEMORY[0x25F8C1620](v17, -1, -1);
  }

  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_25E808330@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_25E7FCC80();
  if (*(v8 + 16) && (v9 = sub_25E800EB4(a2, a3), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);

    sub_25E7FE000(a2, a3);
    v13 = v12;

    *a4 = v13;
    a4[1] = a1;
    a4[2] = a2;
    a4[3] = a3;
    a4[4] = v11;
    a4[5] = 0;
  }

  else
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v15 = sub_25E829CDC();
    __swift_project_value_buffer(v15, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      v20 = sub_25E7FFAF0(a2, a3, &v21);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_25E7F6000, v16, v17, "Invalid label: %s for AsyncArraySequence.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x25F8C1620](v19, -1, -1);
      MEMORY[0x25F8C1620](v18, -1, -1);
    }

    else
    {
    }

    result = 0.0;
    *(a4 + 1) = 0u;
    *(a4 + 2) = 0u;
    *a4 = 0u;
  }

  return result;
}

uint64_t PlanksReader.readArray<A>(label:as:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_25E7FC954();
  if (!*(v9 + 16) || (v10 = sub_25E800EB4(a1, a2), (v11 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v19 = sub_25E829CDC();
    __swift_project_value_buffer(v19, qword_27FD0A4B0);

    v20 = sub_25E829CBC();
    v21 = sub_25E82A02C();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_11;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v63 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_25E7FFAF0(a1, a2, &v63);
    v24 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v12 = *(v9 + 56) + 32 * v10;
  v13 = *(v12 + 8);
  v58 = *v12;
  v14 = *(v12 + 16);
  v60 = *(v12 + 24);

  v57 = *(a5 + 8);
  v57(&v62, a4, a5);
  v59 = v14;
  LOBYTE(v63) = v14;
  v15 = FieldType.rawValue.getter();
  v17 = v16;
  if (v15 == FieldType.rawValue.getter() && v17 == v18)
  {
  }

  else
  {
    v26 = sub_25E82A32C();

    if ((v26 & 1) == 0)
    {
      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v37 = sub_25E829CDC();
      __swift_project_value_buffer(v37, qword_27FD0A4B0);

      v38 = sub_25E829CBC();
      v39 = sub_25E82A02C();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v63 = v41;
        *v40 = 136315394;
        v42 = sub_25E82A43C();
        v44 = sub_25E7FFAF0(v42, v43, &v63);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2080;
        v45 = sub_25E7FED8C(v58, v13, v59, v60);
        v47 = v46;

        v48 = sub_25E7FFAF0(v45, v47, &v63);

        *(v40 + 14) = v48;
        _os_log_impl(&dword_25E7F6000, v38, v39, "Invalid array type: %s for schema: %s", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v41, -1, -1);
        MEMORY[0x25F8C1620](v40, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v27 = sub_25E7FDF0C(a1, a2);
  if (v27 < 1)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v36 = sub_25E829CDC();
    __swift_project_value_buffer(v36, qword_27FD0A4B0);

    v20 = sub_25E829CBC();
    v21 = sub_25E82A02C();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_11;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v63 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_25E7FFAF0(a1, a2, &v63);
    v24 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v28 = v27;
  v29 = sub_25E7FCC80();
  if (!*(v29 + 16) || (v30 = sub_25E800EB4(a1, a2), (v31 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v35 = sub_25E829CDC();
    __swift_project_value_buffer(v35, qword_27FD0A4B0);

    v20 = sub_25E829CBC();
    v21 = sub_25E82A02C();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_11;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v63 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_25E7FFAF0(a1, a2, &v63);
    v24 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v20, v21, v24, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x25F8C1620](v23, -1, -1);
    MEMORY[0x25F8C1620](v22, -1, -1);
LABEL_11:

    return 0;
  }

  v32 = *(*(v29 + 56) + 8 * v30);

  v33 = v60 * v28;
  if ((v60 * v28) >> 64 != (v60 * v28) >> 63)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if ((v59 - 1) > 9)
  {
    v34 = 1;
  }

  else
  {
    v34 = qword_25E82B0A0[(v59 - 1)];
  }

  if ((v33 * v34) >> 64 != (v33 * v34) >> 63)
  {
    goto LABEL_44;
  }

  v62 = 0;
  MEMORY[0x28223BE20](v33);
  a1 = sub_25E829EFC();

  if ((v62 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_45:
    swift_once();
  }

  v49 = sub_25E829CDC();
  __swift_project_value_buffer(v49, qword_27FD0A4B0);

  v50 = sub_25E829CBC();
  v51 = sub_25E82A01C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v63 = v53;
    *v52 = 134218242;
    *(v52 + 4) = sub_25E829F1C();

    *(v52 + 12) = 2080;
    v57(&v61, a4, a5);
    v54 = FieldType.description.getter();
    v56 = sub_25E7FFAF0(v54, v55, &v63);

    *(v52 + 14) = v56;
    _os_log_impl(&dword_25E7F6000, v50, v51, "Loaded array of %ld elements of type %s.", v52, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x25F8C1620](v53, -1, -1);
    MEMORY[0x25F8C1620](v52, -1, -1);
  }

  else
  {
  }

  return a1;
}

void sub_25E808D94(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, _BYTE *a10, uint64_t a11)
{
  v73 = a5;
  v12 = a1[1];
  v13 = *(*(a11 - 8) + 72);
  v63 = v12 * v13;
  if ((v12 * v13) >> 64 == (v12 * v13) >> 63)
  {
    v16 = *a1;
    v17 = sub_25E82A04C();
    v18 = *(a4 + 16);
    if (v18)
    {
      v19 = 0;
      v67 = OBJC_IVAR____TtC6Planks12PlanksReader_fd;
      v68 = v73 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata;
      v20 = (a8 - 1);
      v21 = (a4 + 40);
      v65 = v17;
      v66 = a2;
      v64 = v20;
      do
      {
        v22 = *(v21 - 1);
        if (v22 < 0 || (v23 = *(v68 + 16), v22 >= *(v23 + 16)) || (v24 = *v21, *v21 < 0) || (v25 = v23 + 40 * v22, v26 = *(v25 + 40), v24 >= *(v26 + 16)))
        {
          if (qword_27FD072A0 != -1)
          {
            goto LABEL_57;
          }

          goto LABEL_27;
        }

        v27 = *(v25 + 64);
        v28 = (v26 + (v24 << 6));
        v29 = v28[2];
        v30 = v28[3];
        v31 = v28[4];
        *&v72[10] = *(v28 + 74);
        v71 = v30;
        *v72 = v31;
        v70 = v29;
        v32 = a9 * v27;
        if ((a9 * v27) >> 64 != (a9 * v27) >> 63)
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        if (v20 > 9)
        {
          v33 = 1;
        }

        else
        {
          v33 = qword_25E82B0A0[v20];
        }

        v34 = v32 * v33;
        if ((v32 * v33) >> 64 != (v32 * v33) >> 63)
        {
          goto LABEL_51;
        }

        v35 = *(&v71 + 1);
        if (*(&v71 + 1) != v34)
        {
          sub_25E8026B4(&v70, v69);
          if (qword_27FD072A0 != -1)
          {
            swift_once();
          }

          v52 = sub_25E829CDC();
          __swift_project_value_buffer(v52, qword_27FD0A4B0);
          sub_25E8026B4(&v70, v69);
          v44 = sub_25E829CBC();
          v53 = sub_25E82A02C();
          if (os_log_type_enabled(v44, v53))
          {
            v46 = swift_slowAlloc();
            *v46 = 134218240;
            sub_25E80281C(&v70);
            *(v46 + 4) = v35;
            sub_25E80281C(&v70);
            *(v46 + 12) = 2048;
            *(v46 + 14) = v34;
            v47 = "Found invalid chunk: %lld vs %ld";
LABEL_45:
            v48 = v53;
            v49 = v44;
            v50 = v46;
            v51 = 22;
            goto LABEL_46;
          }

          goto LABEL_48;
        }

        v36 = v19 + v34;
        if (__OFADD__(v19, v34))
        {
          goto LABEL_52;
        }

        if (v17)
        {
          if (v63 < v36)
          {
            goto LABEL_33;
          }

          if (v36 < v19)
          {
            goto LABEL_54;
          }

          v37 = v17 + v19;
          v38 = v17 + v36;
        }

        else
        {
          if (v36 > 0)
          {
LABEL_33:
            v54 = v17;
            if (qword_27FD072A0 != -1)
            {
              swift_once();
            }

            v55 = sub_25E829CDC();
            __swift_project_value_buffer(v55, qword_27FD0A4B0);
            v44 = sub_25E829CBC();
            v56 = sub_25E82A02C();
            if (os_log_type_enabled(v44, v56))
            {
              v57 = swift_slowAlloc();
              v58 = v57;
              *v57 = 134218240;
              v59 = v63;
              if (!v54)
              {
                v59 = 0;
              }

              *(v57 + 4) = v59;
              *(v57 + 12) = 2048;
              *(v57 + 14) = v36;
              _os_log_impl(&dword_25E7F6000, v44, v56, "Failed at computing chunk offset: %ld vs %ld ", v57, 0x16u);
              v60 = v58;
              goto LABEL_47;
            }

            goto LABEL_49;
          }

          if (v36 < v19)
          {
            goto LABEL_55;
          }

          v38 = 0;
          v37 = 0;
        }

        v39 = *(v73 + v67);
        v40 = v71;
        sub_25E8026B4(&v70, v69);
        v41 = sub_25E829CFC();
        if (v42)
        {
          v69[0] = v41;
          sub_25E7FFC08();
          swift_willThrowTypedImpl();
          if (qword_27FD072A0 != -1)
          {
            swift_once();
          }

          v61 = sub_25E829CDC();
          __swift_project_value_buffer(v61, qword_27FD0A4B0);
          sub_25E8026B4(&v70, v69);
          v44 = sub_25E829CBC();
          v53 = sub_25E82A02C();
          if (os_log_type_enabled(v44, v53))
          {
            v46 = swift_slowAlloc();
            *v46 = 134218240;
            sub_25E80281C(&v70);
            *(v46 + 4) = v40;
            sub_25E80281C(&v70);
            *(v46 + 12) = 2048;
            v62 = v38 - v37;
            if (!v37)
            {
              v62 = 0;
            }

            *(v46 + 14) = v62;
            v47 = "Failed at reading chunk at %lld for %ld bytes.";
            goto LABEL_45;
          }

LABEL_48:
          sub_25E80281C(&v70);
          sub_25E80281C(&v70);
          goto LABEL_49;
        }

        sub_25E80281C(&v70);
        if (__OFADD__(*v66, v32))
        {
          goto LABEL_53;
        }

        v21 += 2;
        *v66 += v32;
        v19 = v36;
        --v18;
        v20 = v64;
        v17 = v65;
      }

      while (v18);
    }

    *a10 = 1;
  }

  else
  {
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
LABEL_27:
    v43 = sub_25E829CDC();
    __swift_project_value_buffer(v43, qword_27FD0A4B0);
    v44 = sub_25E829CBC();
    v45 = sub_25E82A02C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = "Invalid index";
      v48 = v45;
      v49 = v44;
      v50 = v46;
      v51 = 2;
LABEL_46:
      _os_log_impl(&dword_25E7F6000, v49, v48, v47, v50, v51);
      v60 = v46;
LABEL_47:
      MEMORY[0x25F8C1620](v60, -1, -1);
    }

LABEL_49:
  }
}

uint64_t PlanksReader.readBatch<A, B>(label:as:quantization:batchIndex:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = sub_25E7FCC80();
  if (*(v18 + 16))
  {
    v19 = sub_25E800EB4(a1, a2);
    if (v20)
    {
      v34 = a1;
      v21 = *(*(v18 + 56) + 8 * v19);

      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = v22 > a5;
      }

      else
      {
        v23 = 0;
      }

      if (v23)
      {
        v31 = v21 + 16 * a5;
        v32 = *(v31 + 40);
        v33 = *(v31 + 32);

        return sub_25E80959C(v34, a2, v33, v32, a3, a4, a6, a7, a8, a9, a10);
      }

      a1 = v34;
    }
  }

  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v24 = sub_25E829CDC();
  __swift_project_value_buffer(v24, qword_27FD0A4B0);

  v25 = sub_25E829CBC();
  v26 = sub_25E82A02C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = a1;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_25E7FFAF0(v27, a2, &v35);
    _os_log_impl(&dword_25E7F6000, v25, v26, "Found no valid indices for label: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x25F8C1620](v29, -1, -1);
    MEMORY[0x25F8C1620](v28, -1, -1);
  }

  return 0;
}

uint64_t sub_25E80959C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a3 < 0 || (v12 = *(v11 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16), *(v12 + 16) <= a3) || a4 < 0 || (v13 = *(v12 + 40 * a3 + 40), *(v13 + 16) <= a4) || (v14 = v13 + (a4 << 6), v15 = *(v14 + 88), v15 == 12))
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
      *v19 = 0;
      _os_log_impl(&dword_25E7F6000, v17, v18, "Invalid index.", v19, 2u);
      MEMORY[0x25F8C1620](v19, -1, -1);
    }

    return 0;
  }

  v23 = *(v14 + 72);
  v22 = *(v14 + 80);
  v25 = sub_25E807984(a1, a2, a6, a3, a4, a8, a11);
  if (!v25)
  {
    goto LABEL_15;
  }

  v41 = v25;
  v39[0] = v23;
  v39[1] = v22;
  v40 = v15;
  v26 = sub_25E829F4C();
  swift_getWitnessTable();
  v27 = rebuildArray<A, B, C>(_:parameters:)(&v41, v39, a7, a8, v26, a9, a10, a11);

  result = v27;
  if (!v27)
  {
LABEL_15:
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v28 = sub_25E829CDC();
    __swift_project_value_buffer(v28, qword_27FD0A4B0);
    v29 = sub_25E829CBC();
    v30 = sub_25E82A02C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39[0] = v32;
      *v31 = 136315394;
      v33 = sub_25E82A43C();
      v35 = sub_25E7FFAF0(v33, v34, v39);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v36 = sub_25E82A43C();
      v38 = sub_25E7FFAF0(v36, v37, v39);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_25E7F6000, v29, v30, "Failed rebuilding of array of type %s into type %s.", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C1620](v32, -1, -1);
      MEMORY[0x25F8C1620](v31, -1, -1);
    }

    return 0;
  }

  return result;
}

double PlanksReader.iterBatches<A, B>(label:as:quantization:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_25E7FCC80();
  if (*(v10 + 16) && (v11 = sub_25E800EB4(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);

    v14 = *(v13 + 16);

    if (v14)
    {

      return sub_25E809B10(v5, a1, a2, a3, a4);
    }
  }

  else
  {
  }

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
    v21 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_25E7FFAF0(a1, a2, &v21);
    _os_log_impl(&dword_25E7F6000, v17, v18, "Found no valid indices for label: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x25F8C1620](v20, -1, -1);
    MEMORY[0x25F8C1620](v19, -1, -1);
  }

  *(a4 + 48) = 0;
  result = 0.0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  return result;
}

double sub_25E809B10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = sub_25E7FCC80();
  if (*(v10 + 16) && (v11 = sub_25E800EB4(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);

    sub_25E7FE000(a2, a3);
    v15 = v14;

    *a5 = v15;
    a5[1] = a1;
    a5[2] = a2;
    a5[3] = a3;
    a5[4] = v13;
    a5[5] = a4;
    a5[6] = 0;
  }

  else
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v17 = sub_25E829CDC();
    __swift_project_value_buffer(v17, qword_27FD0A4B0);

    v18 = sub_25E829CBC();
    v19 = sub_25E82A02C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136315138;
      v22 = sub_25E7FFAF0(a2, a3, &v23);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_25E7F6000, v18, v19, "Invalid label: %s for AsyncArraySequence.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x25F8C1620](v21, -1, -1);
      MEMORY[0x25F8C1620](v20, -1, -1);
    }

    else
    {
    }

    a5[6] = 0;
    result = 0.0;
    *(a5 + 1) = 0u;
    *(a5 + 2) = 0u;
    *a5 = 0u;
  }

  return result;
}

uint64_t PlanksReader.readArray<A, B>(label:as:quantization:)(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = sub_25E7FC954();
  if (!*(v16 + 16) || (v17 = sub_25E800EB4(a1, a2), (v18 & 1) == 0))
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
      goto LABEL_18;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v45 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_25E7FFAF0(a1, a2, &v45);
    v35 = "Invalid SchemaElement for label: %s";
    goto LABEL_17;
  }

  v41 = a7;
  v42 = a8;
  v19 = *(*(v16 + 56) + 32 * v17 + 24);

  v20 = sub_25E7FDF0C(a1, a2);
  if (v20 < 1)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v37 = sub_25E829CDC();
    __swift_project_value_buffer(v37, qword_27FD0A4B0);

    v31 = sub_25E829CBC();
    v32 = sub_25E82A02C();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_18;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v45 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_25E7FFAF0(a1, a2, &v45);
    v35 = "Found no valid rows for label: %s";
    goto LABEL_17;
  }

  v21 = v20;
  v22 = sub_25E7FCC80();
  if (!*(v22 + 16) || (v23 = sub_25E800EB4(a1, a2), (v24 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
LABEL_30:
      swift_once();
    }

    v36 = sub_25E829CDC();
    __swift_project_value_buffer(v36, qword_27FD0A4B0);

    v31 = sub_25E829CBC();
    v32 = sub_25E82A02C();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_18;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v45 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_25E7FFAF0(a1, a2, &v45);
    v35 = "Found no valid indices for label: %s";
    goto LABEL_17;
  }

  v40 = a1;
  v25 = *(*(v22 + 56) + 8 * v23);

  if ((v19 * v21) >> 64 == (v19 * v21) >> 63)
  {
    v45 = sub_25E829EDC();
    sub_25E829F4C();
    sub_25E829EAC();
    v26 = v25;
    v39 = *(v25 + 16);
    if (!v39)
    {
LABEL_12:

      return v45;
    }

    v27 = 0;
    a1 = (v25 + 40);
    while (1)
    {
      if (v27 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v28 = sub_25E80959C(v40, a2, *(a1 - 1), *a1, a3, a4, a5, a6, v41, v42, a9);
      if (!v28)
      {
        break;
      }

      ++v27;
      v44 = v28;
      swift_getWitnessTable();
      sub_25E829F2C();
      a1 += 2;
      if (v39 == v27)
      {
        goto LABEL_12;
      }
    }

    if (qword_27FD072A0 != -1)
    {
      goto LABEL_32;
    }
  }

  else
  {
    __break(1u);
LABEL_32:
    swift_once();
  }

  v38 = sub_25E829CDC();
  __swift_project_value_buffer(v38, qword_27FD0A4B0);

  v31 = sub_25E829CBC();
  v32 = sub_25E82A02C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v44 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_25E7FFAF0(v40, a2, &v44);
    v35 = "Failed at loading array: %s";
LABEL_17:
    _os_log_impl(&dword_25E7F6000, v31, v32, v35, v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x25F8C1620](v34, -1, -1);
    MEMORY[0x25F8C1620](v33, -1, -1);
  }

LABEL_18:

  return 0;
}

void sub_25E80A2DC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v12 = a1[1];
  v13 = *(*(a8 - 8) + 72);
  v14 = v12 * v13;
  if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
  {
    __break(1u);
LABEL_20:
    swift_once();
LABEL_12:
    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);
    sub_25E8026B4(v9, v34);
    v26 = sub_25E829CBC();
    v32 = sub_25E82A02C();
    if (os_log_type_enabled(v26, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134218240;
      *(v33 + 4) = v8;
      sub_25E80281C(v9);
      *(v33 + 12) = 2048;
      *(v33 + 14) = v10;
      _os_log_impl(&dword_25E7F6000, v26, v32, "Found invalid chunk: %lld vs %ld", v33, 0x16u);
      v30 = v33;
LABEL_14:
      MEMORY[0x25F8C1620](v30, -1, -1);
LABEL_16:

      return;
    }

LABEL_15:
    sub_25E80281C(v9);
    goto LABEL_16;
  }

  v9 = a4;
  v10 = a3;
  v18 = *a1;
  v19 = sub_25E82A04C();
  v8 = *(v9 + 24);
  if (v8 != v10)
  {
    if (qword_27FD072A0 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v20 = v19;
  v21 = *(a5 + OBJC_IVAR____TtC6Planks12PlanksReader_fd);
  v22 = *(v9 + 16);
  v23 = sub_25E829CFC();
  if (v24)
  {
    v34[0] = v23;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v25 = sub_25E829CDC();
    __swift_project_value_buffer(v25, qword_27FD0A4B0);
    sub_25E8026B4(v9, v34);
    v26 = sub_25E829CBC();
    v27 = sub_25E82A02C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134218240;
      *(v28 + 4) = v22;
      sub_25E80281C(v9);
      *(v28 + 12) = 2048;
      if (v20)
      {
        v29 = v14;
      }

      else
      {
        v29 = 0;
      }

      *(v28 + 14) = v29;
      _os_log_impl(&dword_25E7F6000, v26, v27, "Failed at reading chunk at %lld for %ld bytes.", v28, 0x16u);
      v30 = v28;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (__OFADD__(*a2, a6))
  {
    __break(1u);
  }

  else
  {
    *a2 += a6;
    *a7 = 1;
  }
}

uint64_t AsyncArraySequence.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

uint64_t AsyncArraySequence.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25E80A66C, 0, 0);
}

uint64_t sub_25E80A66C()
{
  if ((sub_25E829F7C() & 1) != 0 || (v1 = v0[3], v3 = v1[4], v2 = v1[5], v2 >= *(v3 + 16)))
  {
    v9 = 0;
  }

  else
  {
    v4 = v0[2];
    v5 = v3 + 16 * v2;
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    v1[5] = v2 + 1;
    v8 = v1[1];
    v9 = sub_25E807984(v1[2], v1[3], *(v4 + 16), v6, v7, *(v4 + 16), *(v4 + 24));
  }

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_25E80A710@<X0>(void *a1@<X8>)
{
  AsyncArraySequence.makeAsyncIterator()(a1);
  v2 = v1[1];
  v4 = v1[3];
  v3 = v1[4];
}

uint64_t sub_25E80A760(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25E80A7F8;

  return AsyncArraySequence.next()(a2);
}

uint64_t sub_25E80A7F8(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_25E80A90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25E80A9D8;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_25E80A9D8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t AsyncTransformedArraySequence.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v5;
}

uint64_t AsyncTransformedArraySequence.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25E80AB90, 0, 0);
}

uint64_t sub_25E80AB90()
{
  if ((sub_25E829F7C() & 1) != 0 || (v1 = v0[3], v2 = v1[6], v3 = v1[4], v2 >= *(v3 + 16)))
  {
    v9 = 0;
  }

  else
  {
    v4 = v0[2];
    v5 = v3 + 16 * v2;
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    v1[6] = v2 + 1;
    v8 = v1[1];
    v12 = v4[7];
    v9 = sub_25E80959C(v1[2], v1[3], v6, v7, v4[2], v1[5], v4[2], v4[3], v4[4], v4[5], v4[6]);
  }

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_25E80AC4C@<X0>(uint64_t a1@<X8>)
{
  AsyncTransformedArraySequence.makeAsyncIterator()(a1);
  v2 = v1[1];
  v4 = v1[3];
  v3 = v1[4];
}

uint64_t sub_25E80AC9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25E80B0C8;

  return AsyncTransformedArraySequence.next()(a2);
}

uint64_t sub_25E80AD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25E80B0C4;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_25E80AE84()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25E80AEE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25E80AF28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25E80AF8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25E80AFE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25E80B02C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25E80B0CC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 947154537 && v14 == 0xE400000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(947154505, 0xE400000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E813C10(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(947154537, 0xE400000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80B878(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x3631746E69 && v14 == 0xE500000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x3631746E49, 0xE500000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E8141BC(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x3631746E69;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE500000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80C02C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x3233746E69 && v14 == 0xE500000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x3233746E49, 0xE500000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E814780(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x3233746E69;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE500000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80C7E0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x3436746E69 && v14 == 0xE500000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x3436746E49, 0xE500000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E814D4C(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x3436746E69;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE500000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80CF94(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x38746E6975 && v14 == 0xE500000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x38746E4955, 0xE500000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E813C10(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x38746E6975;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE500000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80D750(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x3631746E6975 && v14 == 0xE600000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x3631746E4955, 0xE600000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E8141BC(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x3631746E6975;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE600000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80DF0C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x3233746E6975 && v14 == 0xE600000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x3233746E4955, 0xE600000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E814780(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x3233746E6975;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE600000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80E6C8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x3436746E6975 && v14 == 0xE600000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x3436746E4955, 0xE600000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E814D4C(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x3436746E6975;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE600000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80EE84(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x363174616F6C66 && v14 == 0xE700000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x363174616F6C46, 0xE700000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E8141BC(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x363174616F6C66;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE700000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80F640(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x323374616F6C66 && v14 == 0xE700000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x74616F6C46, 0xE500000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E814780(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x323374616F6C66;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE700000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80FE04(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x343674616F6C66 && v14 == 0xE700000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x656C62756F44, 0xE600000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E814D4C(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x343674616F6C66;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE700000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E8105C8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 1819242338 && v14 == 0xE400000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(1819242306, 0xE400000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E813C10(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(1819242338, 0xE400000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

uint64_t PlanksReader.readDataFrame(label:columns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v149 = a4;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07548, &qword_25E82B0F0);
  v7 = *(v134 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v134);
  v133 = &v111 - v9;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07550, &qword_25E82B0F8);
  v10 = *(v132 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v132);
  v131 = &v111 - v12;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07558, &qword_25E82B100);
  v13 = *(v130 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v130);
  v129 = &v111 - v15;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07560, &qword_25E82B108);
  *&v147 = *(v128 - 8);
  v16 = *(v147 + 64);
  MEMORY[0x28223BE20](v128);
  v127 = &v111 - v17;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07568, &qword_25E82B110);
  v146 = *(v126 - 8);
  v18 = *(v146 + 64);
  MEMORY[0x28223BE20](v126);
  v125 = &v111 - v19;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07570, &qword_25E82B118);
  v145 = *(v124 - 8);
  v20 = *(v145 + 64);
  MEMORY[0x28223BE20](v124);
  v123 = &v111 - v21;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07578, &qword_25E82B120);
  v144 = *(v122 - 8);
  v22 = *(v144 + 64);
  MEMORY[0x28223BE20](v122);
  v121 = &v111 - v23;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07580, &qword_25E82B128);
  v143 = *(v120 - 8);
  v24 = *(v143 + 64);
  MEMORY[0x28223BE20](v120);
  v119 = &v111 - v25;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07588, &qword_25E82B130);
  v142 = *(v118 - 8);
  v26 = *(v142 + 64);
  MEMORY[0x28223BE20](v118);
  v117 = &v111 - v27;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07590, &qword_25E82B138);
  v141 = *(v116 - 8);
  v28 = *(v141 + 64);
  MEMORY[0x28223BE20](v116);
  v115 = &v111 - v29;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07598, &qword_25E82B140);
  v140 = *(v114 - 8);
  v30 = *(v140 + 64);
  MEMORY[0x28223BE20](v114);
  v113 = &v111 - v31;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD075A0, &qword_25E82B148);
  v139 = *(v112 - 8);
  v32 = *(v139 + 64);
  MEMORY[0x28223BE20](v112);
  v111 = &v111 - v33;
  v148 = sub_25E829B0C();
  v150 = *(v148 - 8);
  v34 = *(v150 + 64);
  MEMORY[0x28223BE20](v148);
  v151 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a3[2];
  v37 = MEMORY[0x277D84F90];
  v153 = v36;
  if (v36)
  {
    v135 = v13;
    v136 = v10;
    v137 = v7;
    v156 = MEMORY[0x277D84F90];
    sub_25E81F1CC(0, v36, 0);
    v37 = v156;
    v138 = a3;
    v38 = (a3 + 5);
    do
    {
      v39 = *(v38 - 1);
      v40 = *v38;
      v154 = a1;
      v155 = a2;

      MEMORY[0x25F8C0BC0](46, 0xE100000000000000);
      MEMORY[0x25F8C0BC0](v39, v40);

      v41 = v154;
      v42 = v155;
      v156 = v37;
      v44 = v37[2];
      v43 = v37[3];
      if (v44 >= v43 >> 1)
      {
        sub_25E81F1CC((v43 > 1), v44 + 1, 1);
        v37 = v156;
      }

      v37[2] = v44 + 1;
      v45 = &v37[2 * v44];
      v45[4] = v41;
      v45[5] = v42;
      v38 += 2;
      --v36;
    }

    while (v36);
    v36 = v153;
    v7 = v137;
    a3 = v138;
    v10 = v136;
    v13 = v135;
  }

  v47 = sub_25E80203C(v46);

  v48 = v152;
  v49 = sub_25E7FC83C();
  v50 = sub_25E8125B8(v49, v47);

  if (v50)
  {

    sub_25E829AFC();
    if (v36)
    {
      v52 = 0;
      v137 = v10 + 1;
      v138 = v7 + 1;
      v136 = v13 + 1;
      v135 = (v147 + 8);
      v145 += 8;
      v146 += 8;
      v143 += 8;
      v144 += 8;
      v141 += 8;
      v142 += 8;
      v139 += 8;
      v140 += 8;
      v53 = (a3 + 5);
      v54 = v37 + 5;
      *&v51 = 136315138;
      v147 = v51;
      do
      {
        v55 = v37[2];
        if (v52 == v55)
        {
          break;
        }

        if (v52 >= v55)
        {
          __break(1u);
          goto LABEL_69;
        }

        v56 = *(v53 - 1);
        v57 = *v53;
        v59 = *(v54 - 1);
        v58 = *v54;

        v60 = sub_25E7FC954();
        if (!*(v60 + 16) || (v61 = sub_25E800EB4(v59, v58), (v62 & 1) == 0))
        {

          if (qword_27FD072A0 != -1)
          {
            swift_once();
          }

          v66 = sub_25E829CDC();
          __swift_project_value_buffer(v66, qword_27FD0A4B0);

          v67 = sub_25E829CBC();
          v68 = sub_25E82A02C();

          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v154 = v70;
            *v69 = v147;
            v71 = sub_25E7FFAF0(v59, v58, &v154);

            *(v69 + 4) = v71;
            _os_log_impl(&dword_25E7F6000, v67, v68, "Invalid schema element: %s", v69, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v70);
            MEMORY[0x25F8C1620](v70, -1, -1);
            MEMORY[0x25F8C1620](v69, -1, -1);
          }

          else
          {
          }

          goto LABEL_12;
        }

        v63 = *(*(v60 + 56) + 32 * v61 + 16);

        if (v63 > 5)
        {
          if (v63 > 8)
          {
            if (v63 == 9)
            {
              v84 = sub_25E80F640(v59, v58);

              if (!v84)
              {
                goto LABEL_56;
              }

              v154 = v84;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD075C8, &qword_25E82B160);
              sub_25E813BBC(&qword_27FD075D0, &qword_27FD075C8, &qword_25E82B160);
              v85 = v129;
              sub_25E829B5C();
              sub_25E829AEC();
              (*v136)(v85, v130);
            }

            else if (v63 == 10)
            {
              v76 = sub_25E80FE04(v59, v58);

              if (!v76)
              {
                goto LABEL_56;
              }

              v154 = v76;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD075B8, &qword_25E82B158);
              sub_25E813BBC(&qword_27FD075C0, &qword_27FD075B8, &qword_25E82B158);
              v77 = v131;
              sub_25E829B5C();
              sub_25E829AEC();
              (*v137)(v77, v132);
            }

            else
            {
              v92 = sub_25E8105C8(v59, v58);

              if (!v92)
              {
LABEL_56:

                goto LABEL_12;
              }

              v154 = v92;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD075A8, &qword_25E82B150);
              sub_25E813BBC(&qword_27FD075B0, &qword_27FD075A8, &qword_25E82B150);
              v93 = v133;
              sub_25E829B5C();
              sub_25E829AEC();
              (*v138)(v93, v134);
            }
          }

          else if (v63 == 6)
          {
            v80 = sub_25E80DF0C(v59, v58);

            if (!v80)
            {
              goto LABEL_56;
            }

            v154 = v80;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD075F8, &qword_25E82B178);
            sub_25E813BBC(&qword_27FD07600, &qword_27FD075F8, &qword_25E82B178);
            v81 = v123;
            sub_25E829B5C();
            sub_25E829AEC();
            (*v145)(v81, v124);
          }

          else if (v63 == 7)
          {
            v72 = sub_25E80E6C8(v59, v58);

            if (!v72)
            {
              goto LABEL_56;
            }

            v154 = v72;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD075E8, &qword_25E82B170);
            sub_25E813BBC(&qword_27FD075F0, &qword_27FD075E8, &qword_25E82B170);
            v73 = v125;
            sub_25E829B5C();
            sub_25E829AEC();
            (*v146)(v73, v126);
          }

          else
          {
            v88 = sub_25E80EE84(v59, v58);

            if (!v88)
            {
              goto LABEL_56;
            }

            v154 = v88;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD075D8, &qword_25E82B168);
            sub_25E813BBC(&qword_27FD075E0, &qword_27FD075D8, &qword_25E82B168);
            v89 = v127;
            sub_25E829B5C();
            sub_25E829AEC();
            (*v135)(v89, v128);
          }
        }

        else if (v63 > 2)
        {
          if (v63 == 3)
          {
            v82 = sub_25E80C7E0(v59, v58);

            if (!v82)
            {
              goto LABEL_56;
            }

            v154 = v82;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07628, &qword_25E82B190);
            sub_25E813BBC(&qword_27FD07630, &qword_27FD07628, &qword_25E82B190);
            v83 = v117;
            sub_25E829B5C();
            sub_25E829AEC();
            (*v142)(v83, v118);
          }

          else if (v63 == 4)
          {
            v74 = sub_25E80CF94(v59, v58);

            if (!v74)
            {
              goto LABEL_56;
            }

            v154 = v74;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07618, &qword_25E82B188);
            sub_25E813BBC(&qword_27FD07620, &qword_27FD07618, &qword_25E82B188);
            v75 = v119;
            sub_25E829B5C();
            sub_25E829AEC();
            (*v143)(v75, v120);
          }

          else
          {
            v90 = sub_25E80D750(v59, v58);

            if (!v90)
            {
              goto LABEL_56;
            }

            v154 = v90;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07608, &qword_25E82B180);
            sub_25E813BBC(&qword_27FD07610, &qword_27FD07608, &qword_25E82B180);
            v91 = v121;
            sub_25E829B5C();
            sub_25E829AEC();
            (*v144)(v91, v122);
          }
        }

        else if (v63)
        {
          if (v63 == 1)
          {
            v64 = sub_25E80B878(v59, v58);

            if (!v64)
            {
              goto LABEL_56;
            }

            v154 = v64;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07648, &qword_25E82B1A0);
            sub_25E813BBC(&qword_27FD07650, &qword_27FD07648, &qword_25E82B1A0);
            v65 = v113;
            sub_25E829B5C();
            sub_25E829AEC();
            (*v140)(v65, v114);
          }

          else
          {
            v86 = sub_25E80C02C(v59, v58);

            if (!v86)
            {
              goto LABEL_56;
            }

            v154 = v86;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07638, &qword_25E82B198);
            sub_25E813BBC(&qword_27FD07640, &qword_27FD07638, &qword_25E82B198);
            v87 = v115;
            sub_25E829B5C();
            sub_25E829AEC();
            (*v141)(v87, v116);
          }
        }

        else
        {
          v78 = sub_25E80B0CC(v59, v58);

          if (!v78)
          {
            goto LABEL_56;
          }

          v154 = v78;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07658, &qword_25E82B1A8);
          sub_25E813BBC(&qword_27FD07660, &qword_27FD07658, &qword_25E82B1A8);
          v79 = v111;
          sub_25E829B5C();
          sub_25E829AEC();
          (*v139)(v79, v112);
        }

LABEL_12:
        ++v52;
        v53 += 2;
        v54 += 2;
      }

      while (v153 != v52);
    }

    v96 = v149;
    v97 = v148;
    (*(v150 + 32))(v149, v151, v148);
    return (*(v150 + 56))(v96, 0, 1, v97);
  }

  else
  {

    v94 = *(v48 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___fieldSet);

    v95 = sub_25E81358C(v47, v94);
    if (*(v95 + 16) <= *(v47 + 16) >> 3)
    {
      v154 = v47;
      sub_25E812794(v95);
    }

    else
    {
      sub_25E8128C0(v95, v47);
    }

    if (qword_27FD072A0 != -1)
    {
LABEL_69:
      swift_once();
    }

    v99 = sub_25E829CDC();
    __swift_project_value_buffer(v99, qword_27FD0A4B0);

    v100 = sub_25E829CBC();
    v101 = sub_25E82A02C();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v154 = v103;
      *v102 = 136315138;
      v104 = sub_25E829F8C();
      v106 = v105;

      v107 = sub_25E7FFAF0(v104, v106, &v154);

      *(v102 + 4) = v107;
      _os_log_impl(&dword_25E7F6000, v100, v101, "Request columns not available in Planks file: %s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v103);
      MEMORY[0x25F8C1620](v103, -1, -1);
      MEMORY[0x25F8C1620](v102, -1, -1);
    }

    else
    {
    }

    v109 = v148;
    v108 = v149;
    v110 = *(v150 + 56);

    return v110(v108, 1, 1, v109);
  }
}

void *sub_25E81231C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073F0, &qword_25E82ADC0);
  v2 = *v0;
  v3 = sub_25E82A0BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25E812478()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073E0, &qword_25E82ADB0);
  v2 = *v0;
  v3 = sub_25E82A0BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25E8125B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v22);
          ++v11;
        }

        while (!v7);
        v11 = v22;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 40);
      sub_25E82A39C();

      sub_25E829DDC();
      v16 = sub_25E82A3BC();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = ~v17;
      while (1)
      {
        v20 = (*(a1 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (sub_25E82A32C() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

uint64_t sub_25E812794(uint64_t result)
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

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_25E812E30(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_25E8128C0(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_25E82A39C();

    sub_25E829DDC();
    v24 = sub_25E82A3BC();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_25E82A32C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_25E8131A4(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_25E82A39C();

            sub_25E829DDC();
            v43 = sub_25E82A3BC();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_25E82A32C() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_25E812F6C(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x25F8C1620](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_25E80293C();
    goto LABEL_53;
  }

  result = MEMORY[0x25F8C1620](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_25E812E30(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_25E82A39C();
  sub_25E829DDC();
  v7 = sub_25E82A3BC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_25E82A32C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25E81231C();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_25E8133C8(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_25E812F6C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_25E8131A4(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_25E82A39C();

        sub_25E829DDC();
        v20 = sub_25E82A3BC();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_25E82A32C() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_25E8131A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073F0, &qword_25E82ADC0);
  result = sub_25E82A0DC();
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
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_25E82A39C();

    sub_25E829DDC();
    result = sub_25E82A3BC();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_25E8133C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_25E82A0AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_25E82A39C();

        sub_25E829DDC();
        v15 = sub_25E82A3BC();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_25E81358C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_25E8137E0(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_25E813750(v12, v6, a2, a1);

    MEMORY[0x25F8C1620](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_25E813750(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_25E8137E0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_25E8137E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_25E82A39C();

      sub_25E829DDC();
      v27 = sub_25E82A3BC();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_25E82A32C() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_25E8131A4(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_25E82A39C();

      sub_25E829DDC();
      v41 = sub_25E82A3BC();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_25E82A32C() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25E813BBC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_25E813C10(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, _BYTE *a9)
{
  v9 = *(a3 + 16);
  if (!v9)
  {
LABEL_24:
    *a9 = 1;
    return;
  }

  v11 = 0;
  v57 = OBJC_IVAR____TtC6Planks12PlanksReader_fd;
  v12 = a1[1];
  v64 = *a1;
  v54 = v12;
  v58 = a4 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata;
  v13 = (a7 - 1);
  v14 = (a3 + 40);
  v55 = v13;
  while (1)
  {
    v15 = *(v14 - 1);
    if (v15 < 0 || (v16 = *(v58 + 16), v15 >= *(v16 + 16)) || (v17 = *v14, *v14 < 0) || (v18 = v16 + 40 * v15, v19 = *(v18 + 40), v17 >= *(v19 + 16)))
    {
      if (qword_27FD072A0 == -1)
      {
LABEL_26:
        v36 = sub_25E829CDC();
        __swift_project_value_buffer(v36, qword_27FD0A4B0);
        v37 = sub_25E829CBC();
        v38 = sub_25E82A02C();
        if (!os_log_type_enabled(v37, v38))
        {
          goto LABEL_38;
        }

        v39 = swift_slowAlloc();
        *v39 = 0;
        v40 = "Invalid index";
        v41 = v38;
        v42 = v37;
        v43 = v39;
        v44 = 2;
        goto LABEL_46;
      }

LABEL_55:
      swift_once();
      goto LABEL_26;
    }

    v20 = *(v18 + 64);
    v21 = (v19 + (v17 << 6));
    v22 = v21[2];
    v23 = v21[3];
    v24 = v21[4];
    *&v63[10] = *(v21 + 74);
    v62 = v23;
    *v63 = v24;
    v61 = v22;
    v25 = a8 * v20;
    if ((a8 * v20) >> 64 != (a8 * v20) >> 63)
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v13 > 9)
    {
      v26 = 1;
    }

    else
    {
      v26 = qword_25E82B1B0[v13];
    }

    v27 = v25 * v26;
    if ((v25 * v26) >> 64 != (v25 * v26) >> 63)
    {
      goto LABEL_50;
    }

    v28 = *(&v62 + 1);
    if (*(&v62 + 1) != v27)
    {
      break;
    }

    v29 = v11 + v27;
    if (__OFADD__(v11, v27))
    {
      goto LABEL_51;
    }

    if (v64)
    {
      if (v54 < v29)
      {
        goto LABEL_32;
      }

      if (v29 < v11)
      {
        goto LABEL_53;
      }

      v30 = v64 + v11;
      v31 = v64 + v29;
    }

    else
    {
      if (v29 > 0)
      {
LABEL_32:
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v47 = sub_25E829CDC();
        __swift_project_value_buffer(v47, qword_27FD0A4B0);
        v37 = sub_25E829CBC();
        v48 = sub_25E82A02C();
        if (os_log_type_enabled(v37, v48))
        {
          v49 = swift_slowAlloc();
          v50 = v49;
          *v49 = 134218240;
          v51 = v54;
          if (!v64)
          {
            v51 = 0;
          }

          *(v49 + 4) = v51;
          *(v49 + 12) = 2048;
          *(v49 + 14) = v29;
          _os_log_impl(&dword_25E7F6000, v37, v48, "Failed at computing chunk offset: %ld vs %ld ", v49, 0x16u);
          MEMORY[0x25F8C1620](v50, -1, -1);
        }

        goto LABEL_38;
      }

      if (v29 < v11)
      {
        goto LABEL_54;
      }

      v31 = 0;
      v30 = 0;
    }

    v32 = *(a4 + v57);
    v33 = v62;
    sub_25E8026B4(&v61, v60);
    v34 = sub_25E829CFC();
    if (v35)
    {
      v60[0] = v34;
      sub_25E7FFC08();
      swift_willThrowTypedImpl();
      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v52 = sub_25E829CDC();
      __swift_project_value_buffer(v52, qword_27FD0A4B0);
      sub_25E8026B4(&v61, v60);
      v37 = sub_25E829CBC();
      v46 = sub_25E82A02C();
      if (!os_log_type_enabled(v37, v46))
      {
        goto LABEL_47;
      }

      v39 = swift_slowAlloc();
      *v39 = 134218240;
      sub_25E80281C(&v61);
      *(v39 + 4) = v33;
      sub_25E80281C(&v61);
      *(v39 + 12) = 2048;
      v53 = v31 - v30;
      if (!v30)
      {
        v53 = 0;
      }

      *(v39 + 14) = v53;
      v40 = "Failed at reading chunk at %lld for %ld bytes.";
LABEL_45:
      v41 = v46;
      v42 = v37;
      v43 = v39;
      v44 = 22;
LABEL_46:
      _os_log_impl(&dword_25E7F6000, v42, v41, v40, v43, v44);
      MEMORY[0x25F8C1620](v39, -1, -1);
      goto LABEL_38;
    }

    sub_25E80281C(&v61);
    if (__OFADD__(*a2, v25))
    {
      goto LABEL_52;
    }

    v14 += 2;
    *a2 += v25;
    v11 = v29;
    --v9;
    v13 = v55;
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  sub_25E8026B4(&v61, v60);
  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v45 = sub_25E829CDC();
  __swift_project_value_buffer(v45, qword_27FD0A4B0);
  sub_25E8026B4(&v61, v60);
  v37 = sub_25E829CBC();
  v46 = sub_25E82A02C();
  if (os_log_type_enabled(v37, v46))
  {
    v39 = swift_slowAlloc();
    *v39 = 134218240;
    sub_25E80281C(&v61);
    *(v39 + 4) = v28;
    sub_25E80281C(&v61);
    *(v39 + 12) = 2048;
    *(v39 + 14) = v27;
    v40 = "Found invalid chunk: %lld vs %ld";
    goto LABEL_45;
  }

LABEL_47:
  sub_25E80281C(&v61);
  sub_25E80281C(&v61);
LABEL_38:
}

void sub_25E8141BC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, _BYTE *a9)
{
  v9 = a1[1];
  if (v9 + 0x4000000000000000 >= 0)
  {
    v10 = *(a3 + 16);
    if (!v10)
    {
LABEL_25:
      *a9 = 1;
      return;
    }

    v12 = 0;
    v64 = *a1;
    v57 = OBJC_IVAR____TtC6Planks12PlanksReader_fd;
    v54 = 2 * v9;
    v58 = a4 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata;
    v13 = (a7 - 1);
    v14 = (a3 + 40);
    v55 = v13;
    while (1)
    {
      v15 = *(v14 - 1);
      if (v15 < 0 || (v16 = *(v58 + 16), v15 >= *(v16 + 16)) || (v17 = *v14, *v14 < 0) || (v18 = v16 + 40 * v15, v19 = *(v18 + 40), v17 >= *(v19 + 16)))
      {
        if (qword_27FD072A0 != -1)
        {
          goto LABEL_57;
        }

        goto LABEL_27;
      }

      v20 = *(v18 + 64);
      v21 = (v19 + (v17 << 6));
      v22 = v21[2];
      v23 = v21[3];
      v24 = v21[4];
      *&v63[10] = *(v21 + 74);
      v62 = v23;
      *v63 = v24;
      v61 = v22;
      v25 = a8 * v20;
      if ((a8 * v20) >> 64 != (a8 * v20) >> 63)
      {
        break;
      }

      if (v13 > 9)
      {
        v26 = 1;
      }

      else
      {
        v26 = qword_25E82B1B0[v13];
      }

      v27 = v25 * v26;
      if ((v25 * v26) >> 64 != (v25 * v26) >> 63)
      {
        goto LABEL_51;
      }

      v28 = *(&v62 + 1);
      if (*(&v62 + 1) != v27)
      {
        sub_25E8026B4(&v61, v60);
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v45 = sub_25E829CDC();
        __swift_project_value_buffer(v45, qword_27FD0A4B0);
        sub_25E8026B4(&v61, v60);
        v37 = sub_25E829CBC();
        v46 = sub_25E82A02C();
        if (os_log_type_enabled(v37, v46))
        {
          v39 = swift_slowAlloc();
          *v39 = 134218240;
          sub_25E80281C(&v61);
          *(v39 + 4) = v28;
          sub_25E80281C(&v61);
          *(v39 + 12) = 2048;
          *(v39 + 14) = v27;
          v40 = "Found invalid chunk: %lld vs %ld";
LABEL_46:
          v41 = v46;
          v42 = v37;
          v43 = v39;
          v44 = 22;
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      v29 = v12 + v27;
      if (__OFADD__(v12, v27))
      {
        goto LABEL_52;
      }

      if (v64)
      {
        if (v54 < v29)
        {
          goto LABEL_33;
        }

        if (v29 < v12)
        {
          goto LABEL_54;
        }

        v30 = v64 + v12;
        v31 = v64 + v29;
      }

      else
      {
        if (v29 > 0)
        {
LABEL_33:
          if (qword_27FD072A0 != -1)
          {
            swift_once();
          }

          v47 = sub_25E829CDC();
          __swift_project_value_buffer(v47, qword_27FD0A4B0);
          v37 = sub_25E829CBC();
          v48 = sub_25E82A02C();
          if (os_log_type_enabled(v37, v48))
          {
            v49 = swift_slowAlloc();
            v50 = v49;
            *v49 = 134218240;
            v51 = v54;
            if (!v64)
            {
              v51 = 0;
            }

            *(v49 + 4) = v51;
            *(v49 + 12) = 2048;
            *(v49 + 14) = v29;
            _os_log_impl(&dword_25E7F6000, v37, v48, "Failed at computing chunk offset: %ld vs %ld ", v49, 0x16u);
            MEMORY[0x25F8C1620](v50, -1, -1);
          }

          goto LABEL_39;
        }

        if (v29 < v12)
        {
          goto LABEL_55;
        }

        v31 = 0;
        v30 = 0;
      }

      v32 = *(a4 + v57);
      v33 = v62;
      sub_25E8026B4(&v61, v60);
      v34 = sub_25E829CFC();
      if (v35)
      {
        v60[0] = v34;
        sub_25E7FFC08();
        swift_willThrowTypedImpl();
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v52 = sub_25E829CDC();
        __swift_project_value_buffer(v52, qword_27FD0A4B0);
        sub_25E8026B4(&v61, v60);
        v37 = sub_25E829CBC();
        v46 = sub_25E82A02C();
        if (os_log_type_enabled(v37, v46))
        {
          v39 = swift_slowAlloc();
          *v39 = 134218240;
          sub_25E80281C(&v61);
          *(v39 + 4) = v33;
          sub_25E80281C(&v61);
          *(v39 + 12) = 2048;
          v53 = v31 - v30;
          if (!v30)
          {
            v53 = 0;
          }

          *(v39 + 14) = v53;
          v40 = "Failed at reading chunk at %lld for %ld bytes.";
          goto LABEL_46;
        }

LABEL_48:
        sub_25E80281C(&v61);
        sub_25E80281C(&v61);
        goto LABEL_39;
      }

      sub_25E80281C(&v61);
      if (__OFADD__(*a2, v25))
      {
        goto LABEL_53;
      }

      v14 += 2;
      *a2 += v25;
      v12 = v29;
      --v10;
      v13 = v55;
      if (!v10)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  __break(1u);
LABEL_57:
  swift_once();
LABEL_27:
  v36 = sub_25E829CDC();
  __swift_project_value_buffer(v36, qword_27FD0A4B0);
  v37 = sub_25E829CBC();
  v38 = sub_25E82A02C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Invalid index";
    v41 = v38;
    v42 = v37;
    v43 = v39;
    v44 = 2;
LABEL_47:
    _os_log_impl(&dword_25E7F6000, v42, v41, v40, v43, v44);
    MEMORY[0x25F8C1620](v39, -1, -1);
  }

LABEL_39:
}

void sub_25E814780(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, _BYTE *a9)
{
  v9 = a1[1];
  if ((v9 - 0x2000000000000000) >> 62 == 3)
  {
    v10 = *(a3 + 16);
    if (!v10)
    {
LABEL_25:
      *a9 = 1;
      return;
    }

    v12 = 0;
    v64 = *a1;
    v57 = OBJC_IVAR____TtC6Planks12PlanksReader_fd;
    v54 = 4 * v9;
    v58 = a4 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata;
    v13 = (a7 - 1);
    v14 = (a3 + 40);
    v55 = v13;
    while (1)
    {
      v15 = *(v14 - 1);
      if (v15 < 0 || (v16 = *(v58 + 16), v15 >= *(v16 + 16)) || (v17 = *v14, *v14 < 0) || (v18 = v16 + 40 * v15, v19 = *(v18 + 40), v17 >= *(v19 + 16)))
      {
        if (qword_27FD072A0 != -1)
        {
          goto LABEL_57;
        }

        goto LABEL_27;
      }

      v20 = *(v18 + 64);
      v21 = (v19 + (v17 << 6));
      v22 = v21[2];
      v23 = v21[3];
      v24 = v21[4];
      *&v63[10] = *(v21 + 74);
      v62 = v23;
      *v63 = v24;
      v61 = v22;
      v25 = a8 * v20;
      if ((a8 * v20) >> 64 != (a8 * v20) >> 63)
      {
        break;
      }

      if (v13 > 9)
      {
        v26 = 1;
      }

      else
      {
        v26 = qword_25E82B1B0[v13];
      }

      v27 = v25 * v26;
      if ((v25 * v26) >> 64 != (v25 * v26) >> 63)
      {
        goto LABEL_51;
      }

      v28 = *(&v62 + 1);
      if (*(&v62 + 1) != v27)
      {
        sub_25E8026B4(&v61, v60);
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v45 = sub_25E829CDC();
        __swift_project_value_buffer(v45, qword_27FD0A4B0);
        sub_25E8026B4(&v61, v60);
        v37 = sub_25E829CBC();
        v46 = sub_25E82A02C();
        if (os_log_type_enabled(v37, v46))
        {
          v39 = swift_slowAlloc();
          *v39 = 134218240;
          sub_25E80281C(&v61);
          *(v39 + 4) = v28;
          sub_25E80281C(&v61);
          *(v39 + 12) = 2048;
          *(v39 + 14) = v27;
          v40 = "Found invalid chunk: %lld vs %ld";
LABEL_46:
          v41 = v46;
          v42 = v37;
          v43 = v39;
          v44 = 22;
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      v29 = v12 + v27;
      if (__OFADD__(v12, v27))
      {
        goto LABEL_52;
      }

      if (v64)
      {
        if (v54 < v29)
        {
          goto LABEL_33;
        }

        if (v29 < v12)
        {
          goto LABEL_54;
        }

        v30 = v64 + v12;
        v31 = v64 + v29;
      }

      else
      {
        if (v29 > 0)
        {
LABEL_33:
          if (qword_27FD072A0 != -1)
          {
            swift_once();
          }

          v47 = sub_25E829CDC();
          __swift_project_value_buffer(v47, qword_27FD0A4B0);
          v37 = sub_25E829CBC();
          v48 = sub_25E82A02C();
          if (os_log_type_enabled(v37, v48))
          {
            v49 = swift_slowAlloc();
            v50 = v49;
            *v49 = 134218240;
            v51 = v54;
            if (!v64)
            {
              v51 = 0;
            }

            *(v49 + 4) = v51;
            *(v49 + 12) = 2048;
            *(v49 + 14) = v29;
            _os_log_impl(&dword_25E7F6000, v37, v48, "Failed at computing chunk offset: %ld vs %ld ", v49, 0x16u);
            MEMORY[0x25F8C1620](v50, -1, -1);
          }

          goto LABEL_39;
        }

        if (v29 < v12)
        {
          goto LABEL_55;
        }

        v31 = 0;
        v30 = 0;
      }

      v32 = *(a4 + v57);
      v33 = v62;
      sub_25E8026B4(&v61, v60);
      v34 = sub_25E829CFC();
      if (v35)
      {
        v60[0] = v34;
        sub_25E7FFC08();
        swift_willThrowTypedImpl();
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v52 = sub_25E829CDC();
        __swift_project_value_buffer(v52, qword_27FD0A4B0);
        sub_25E8026B4(&v61, v60);
        v37 = sub_25E829CBC();
        v46 = sub_25E82A02C();
        if (os_log_type_enabled(v37, v46))
        {
          v39 = swift_slowAlloc();
          *v39 = 134218240;
          sub_25E80281C(&v61);
          *(v39 + 4) = v33;
          sub_25E80281C(&v61);
          *(v39 + 12) = 2048;
          v53 = v31 - v30;
          if (!v30)
          {
            v53 = 0;
          }

          *(v39 + 14) = v53;
          v40 = "Failed at reading chunk at %lld for %ld bytes.";
          goto LABEL_46;
        }

LABEL_48:
        sub_25E80281C(&v61);
        sub_25E80281C(&v61);
        goto LABEL_39;
      }

      sub_25E80281C(&v61);
      if (__OFADD__(*a2, v25))
      {
        goto LABEL_53;
      }

      v14 += 2;
      *a2 += v25;
      v12 = v29;
      --v10;
      v13 = v55;
      if (!v10)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  __break(1u);
LABEL_57:
  swift_once();
LABEL_27:
  v36 = sub_25E829CDC();
  __swift_project_value_buffer(v36, qword_27FD0A4B0);
  v37 = sub_25E829CBC();
  v38 = sub_25E82A02C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Invalid index";
    v41 = v38;
    v42 = v37;
    v43 = v39;
    v44 = 2;
LABEL_47:
    _os_log_impl(&dword_25E7F6000, v42, v41, v40, v43, v44);
    MEMORY[0x25F8C1620](v39, -1, -1);
  }

LABEL_39:
}

void sub_25E814D4C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, _BYTE *a9)
{
  v9 = a1[1];
  if ((v9 - 0x1000000000000000) >> 61 == 7)
  {
    v10 = *(a3 + 16);
    if (!v10)
    {
LABEL_25:
      *a9 = 1;
      return;
    }

    v12 = 0;
    v64 = *a1;
    v57 = OBJC_IVAR____TtC6Planks12PlanksReader_fd;
    v54 = 8 * v9;
    v58 = a4 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata;
    v13 = (a7 - 1);
    v14 = (a3 + 40);
    v55 = v13;
    while (1)
    {
      v15 = *(v14 - 1);
      if (v15 < 0 || (v16 = *(v58 + 16), v15 >= *(v16 + 16)) || (v17 = *v14, *v14 < 0) || (v18 = v16 + 40 * v15, v19 = *(v18 + 40), v17 >= *(v19 + 16)))
      {
        if (qword_27FD072A0 != -1)
        {
          goto LABEL_57;
        }

        goto LABEL_27;
      }

      v20 = *(v18 + 64);
      v21 = (v19 + (v17 << 6));
      v22 = v21[2];
      v23 = v21[3];
      v24 = v21[4];
      *&v63[10] = *(v21 + 74);
      v62 = v23;
      *v63 = v24;
      v61 = v22;
      v25 = a8 * v20;
      if ((a8 * v20) >> 64 != (a8 * v20) >> 63)
      {
        break;
      }

      if (v13 > 9)
      {
        v26 = 1;
      }

      else
      {
        v26 = qword_25E82B1B0[v13];
      }

      v27 = v25 * v26;
      if ((v25 * v26) >> 64 != (v25 * v26) >> 63)
      {
        goto LABEL_51;
      }

      v28 = *(&v62 + 1);
      if (*(&v62 + 1) != v27)
      {
        sub_25E8026B4(&v61, v60);
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v45 = sub_25E829CDC();
        __swift_project_value_buffer(v45, qword_27FD0A4B0);
        sub_25E8026B4(&v61, v60);
        v37 = sub_25E829CBC();
        v46 = sub_25E82A02C();
        if (os_log_type_enabled(v37, v46))
        {
          v39 = swift_slowAlloc();
          *v39 = 134218240;
          sub_25E80281C(&v61);
          *(v39 + 4) = v28;
          sub_25E80281C(&v61);
          *(v39 + 12) = 2048;
          *(v39 + 14) = v27;
          v40 = "Found invalid chunk: %lld vs %ld";
LABEL_46:
          v41 = v46;
          v42 = v37;
          v43 = v39;
          v44 = 22;
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      v29 = v12 + v27;
      if (__OFADD__(v12, v27))
      {
        goto LABEL_52;
      }

      if (v64)
      {
        if (v54 < v29)
        {
          goto LABEL_33;
        }

        if (v29 < v12)
        {
          goto LABEL_54;
        }

        v30 = v64 + v12;
        v31 = v64 + v29;
      }

      else
      {
        if (v29 > 0)
        {
LABEL_33:
          if (qword_27FD072A0 != -1)
          {
            swift_once();
          }

          v47 = sub_25E829CDC();
          __swift_project_value_buffer(v47, qword_27FD0A4B0);
          v37 = sub_25E829CBC();
          v48 = sub_25E82A02C();
          if (os_log_type_enabled(v37, v48))
          {
            v49 = swift_slowAlloc();
            v50 = v49;
            *v49 = 134218240;
            v51 = v54;
            if (!v64)
            {
              v51 = 0;
            }

            *(v49 + 4) = v51;
            *(v49 + 12) = 2048;
            *(v49 + 14) = v29;
            _os_log_impl(&dword_25E7F6000, v37, v48, "Failed at computing chunk offset: %ld vs %ld ", v49, 0x16u);
            MEMORY[0x25F8C1620](v50, -1, -1);
          }

          goto LABEL_39;
        }

        if (v29 < v12)
        {
          goto LABEL_55;
        }

        v31 = 0;
        v30 = 0;
      }

      v32 = *(a4 + v57);
      v33 = v62;
      sub_25E8026B4(&v61, v60);
      v34 = sub_25E829CFC();
      if (v35)
      {
        v60[0] = v34;
        sub_25E7FFC08();
        swift_willThrowTypedImpl();
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v52 = sub_25E829CDC();
        __swift_project_value_buffer(v52, qword_27FD0A4B0);
        sub_25E8026B4(&v61, v60);
        v37 = sub_25E829CBC();
        v46 = sub_25E82A02C();
        if (os_log_type_enabled(v37, v46))
        {
          v39 = swift_slowAlloc();
          *v39 = 134218240;
          sub_25E80281C(&v61);
          *(v39 + 4) = v33;
          sub_25E80281C(&v61);
          *(v39 + 12) = 2048;
          v53 = v31 - v30;
          if (!v30)
          {
            v53 = 0;
          }

          *(v39 + 14) = v53;
          v40 = "Failed at reading chunk at %lld for %ld bytes.";
          goto LABEL_46;
        }

LABEL_48:
        sub_25E80281C(&v61);
        sub_25E80281C(&v61);
        goto LABEL_39;
      }

      sub_25E80281C(&v61);
      if (__OFADD__(*a2, v25))
      {
        goto LABEL_53;
      }

      v14 += 2;
      *a2 += v25;
      v12 = v29;
      --v10;
      v13 = v55;
      if (!v10)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  __break(1u);
LABEL_57:
  swift_once();
LABEL_27:
  v36 = sub_25E829CDC();
  __swift_project_value_buffer(v36, qword_27FD0A4B0);
  v37 = sub_25E829CBC();
  v38 = sub_25E82A02C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Invalid index";
    v41 = v38;
    v42 = v37;
    v43 = v39;
    v44 = 2;
LABEL_47:
    _os_log_impl(&dword_25E7F6000, v42, v41, v40, v43, v44);
    MEMORY[0x25F8C1620](v39, -1, -1);
  }

LABEL_39:
}

uint64_t PlanksWriter.filePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Planks12PlanksWriter_filePath;
  v4 = sub_25E829D6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_25E815390@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  *a2 = v5;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v6;
}

uint64_t sub_25E815408(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = (*a2 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata);
  swift_beginAccess();
  v7 = v6[1];
  v8 = v6[2];
  v9 = v6[3];
  *v6 = v3;
  v6[1] = v2;
  v6[2] = v4;
  v6[3] = v5;
}

uint64_t sub_25E8154B0@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  *a1 = v5;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v6;
}

unint64_t PlanksWriter.__allocating_init(filePath:append:)(uint64_t a1, unint64_t a2, int a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return PlanksWriter.init(filePath:append:)(a1, a2, a3);
}

unint64_t PlanksWriter.init(filePath:append:)(uint64_t a1, unint64_t a2, int a3)
{
  v98 = a3;
  v97 = sub_25E829A8C();
  v96 = *(v97 - 8);
  v6 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_25E829AAC();
  v94 = *(v95 - 8);
  v9 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25E829D6C();
  v92 = *(v12 - 8);
  v13 = v92;
  v14 = *(v92 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v93 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v90 - v17;
  *(v3 + OBJC_IVAR____TtC6Planks12PlanksWriter_finalized) = 0;

  v91 = a1;
  v99 = a2;
  MEMORY[0x25F8C0B50](a1, a2);
  v19 = OBJC_IVAR____TtC6Planks12PlanksWriter_filePath;
  (*(v13 + 32))(v3 + OBJC_IVAR____TtC6Planks12PlanksWriter_filePath, v18, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07670, &qword_25E82B208);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E82A940;
  *(inited + 32) = 0xD000000000000010;
  v21 = inited + 32;
  *(inited + 40) = 0x800000025E82C630;
  sub_25E829A9C();
  sub_25E8161FC(v8);
  v22 = sub_25E829A2C();
  v24 = v23;
  v25 = v8;
  v26 = v3;
  (*(v96 + 8))(v25, v97);
  (*(v94 + 8))(v11, v95);
  *(inited + 48) = v22;
  *(inited + 56) = v24;
  v27 = v93;
  v28 = sub_25E818978(inited);
  v29 = v92;
  swift_setDeallocating();
  v30 = v21;
  v31 = v98;
  sub_25E802774(v30, &qword_27FD07678, &qword_25E82B210);
  v32 = MEMORY[0x277D84F90];
  sub_25E818978(MEMORY[0x277D84F90]);

  v33 = (v26 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata);
  *v33 = 1;
  v33[1] = v32;
  v33[2] = v32;
  v33[3] = v28;
  if (v31)
  {
    v34 = 520;
  }

  else
  {
    v34 = 1536;
  }

  v35 = *(v29 + 16);
  v97 = v19;
  v35(v27, v26 + v19, v12);
  v100 = 2;
  v101 = v34;
  v102 = 16777652;
  sub_25E829D5C();
  v36 = v99;
  (*(v29 + 8))(v27, v12);
  v37 = OBJC_IVAR____TtC6Planks12PlanksWriter_fd;
  *(v26 + OBJC_IVAR____TtC6Planks12PlanksWriter_fd) = v103;
  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v38 = sub_25E829CDC();
  __swift_project_value_buffer(v38, qword_27FD0A4B0);

  v39 = sub_25E829CBC();
  v40 = sub_25E82A01C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v103 = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_25E7FFAF0(v91, v36, &v103);
    _os_log_impl(&dword_25E7F6000, v39, v40, "PlanksWriter file path: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x25F8C1620](v42, -1, -1);
    MEMORY[0x25F8C1620](v41, -1, -1);
  }

  v43 = *(v26 + v37);
  v44 = sub_25E829D1C();
  if (v45)
  {
    LODWORD(v103) = v44;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();

    v46 = sub_25E829CBC();
    v47 = sub_25E82A02C();

    if (!os_log_type_enabled(v46, v47))
    {

      return v26;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v103 = v49;
    *v48 = 136315138;
    v50 = sub_25E7FFAF0(v91, v36, &v103);

    *(v48 + 4) = v50;
    _os_log_impl(&dword_25E7F6000, v46, v47, "Failed at seeking file: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x25F8C1620](v49, -1, -1);
    v51 = v48;
    goto LABEL_11;
  }

  v53 = *(v26 + v37);
  if ((v31 & 1) == 0 || !v44)
  {
    v58 = *(v26 + v37);
    sub_25E818AD8();

LABEL_18:

    v46 = sub_25E829CBC();
    v59 = sub_25E82A01C();

    if (!os_log_type_enabled(v46, v59))
    {

      return v26;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v107 = v61;
    *v60 = 136315138;
    v62 = (v26 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata);
    swift_beginAccess();
    v63 = *v62;
    v64 = v62[1];
    v66 = v62[2];
    v65 = v62[3];

    v67 = sub_25E7FEA6C(v63, v64, v66, v65);
    v69 = v68;

    v70 = sub_25E7FFAF0(v67, v69, &v107);

    *(v60 + 4) = v70;
    _os_log_impl(&dword_25E7F6000, v46, v59, "PlanksWriter file metadata: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x25F8C1620](v61, -1, -1);
    v51 = v60;
LABEL_11:
    MEMORY[0x25F8C1620](v51, -1, -1);

    return v26;
  }

  v54 = v44;
  v55 = *(v26 + v37);
  v56 = sub_25E801C34();
  if ((v57 & 1) == 0)
  {
    v76 = v56;
    type metadata accessor for PlanksReader();
    v77 = *(v26 + v37);
    static PlanksReader.readMetadata(_:metadataSize:)(v76, &v103);
    v78 = v104;
    if (v104)
    {
      v79 = v103;
      v80 = v26;
      v81 = v105;
      v82 = v106;

      v99 = v80;
      v83 = (v80 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata);
      swift_beginAccess();
      v84 = v83[1];
      v85 = v83[2];
      v86 = v83[3];
      *v83 = v79;
      v83[1] = v78;
      v83[2] = v81;
      v83[3] = v82;

      v87 = sub_25E829CBC();
      v88 = sub_25E82A01C();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 134217984;
        *(v89 + 4) = v54;
        _os_log_impl(&dword_25E7F6000, v87, v88, "PlanksWriter existing file size: %lld", v89, 0xCu);
        MEMORY[0x25F8C1620](v89, -1, -1);
      }

      v26 = v99;
      goto LABEL_18;
    }
  }

  v71 = sub_25E829CBC();
  v72 = sub_25E82A02C();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v103 = v74;
    *v73 = 136315138;
    v75 = sub_25E7FFAF0(v91, v36, &v103);

    *(v73 + 4) = v75;
    _os_log_impl(&dword_25E7F6000, v71, v72, "Failed at reading existing file: %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x25F8C1620](v74, -1, -1);
    MEMORY[0x25F8C1620](v73, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_25E8161FC@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD076A0, &qword_25E82B278);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = &v30 - v3;
  v34 = sub_25E829ACC();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_25E829A7C();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25E829A5C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25E829A3C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25E829A4C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  (*(v24 + 104))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v25 = v16;
  v26 = v34;
  (*(v17 + 104))(v20, *MEMORY[0x277CC9458], v25);
  v27 = v10;
  v28 = v35;
  (*(v12 + 104))(v15, *MEMORY[0x277CC9468], v11);
  (*(v7 + 104))(v27, *MEMORY[0x277CC9480], v33);
  sub_25E829ABC();
  result = (*(v4 + 48))(v28, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v31, v28, v26);
    return sub_25E829A6C();
  }

  return result;
}

uint64_t PlanksWriter.deinit()
{
  if ((*(v0 + OBJC_IVAR____TtC6Planks12PlanksWriter_finalized) & 1) == 0)
  {
    sub_25E816A2C();
  }

  v1 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksWriter_fd);
  if ((sub_25E829D2C() & 0x100000000) != 0)
  {
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
  }

  v2 = OBJC_IVAR____TtC6Planks12PlanksWriter_filePath;
  v3 = sub_25E829D6C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata + 8);
  v5 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata + 16);
  v6 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata + 24);

  return v0;
}

uint64_t PlanksWriter.__deallocating_deinit()
{
  if ((*(v0 + OBJC_IVAR____TtC6Planks12PlanksWriter_finalized) & 1) == 0)
  {
    sub_25E816A2C();
  }

  v1 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksWriter_fd);
  if ((sub_25E829D2C() & 0x100000000) != 0)
  {
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
  }

  v2 = OBJC_IVAR____TtC6Planks12PlanksWriter_filePath;
  v3 = sub_25E829D6C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata + 8);
  v5 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata + 16);
  v6 = *(v0 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata + 24);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_25E816820()
{
  v1 = sub_25E818734(MEMORY[0x277D84F90]);
  v2 = v0 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  swift_beginAccess();
  v3 = *(*(v2 + 8) + 16);

  v30 = v3;
  if (!v3)
  {
LABEL_16:

    return v1;
  }

  v5 = 0;
  v6 = (v4 + 56);
  v29 = v4;
  while (v5 < *(v4 + 16))
  {
    v11 = *(v6 - 3);
    v10 = *(v6 - 2);
    v12 = *(v6 - 8);
    v13 = *v6;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = sub_25E800EB4(v11, v10);
    v17 = v1[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_18;
    }

    v21 = v16;
    if (v1[3] < v20)
    {
      sub_25E8177B8(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_25E800EB4(v11, v10);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v21)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v27 = v15;
    sub_25E8181A0();
    v15 = v27;
    if (v21)
    {
LABEL_3:
      v7 = v15;

      v8 = v1[7] + 32 * v7;
      v9 = *(v8 + 8);
      *v8 = v11;
      *(v8 + 8) = v10;
      *(v8 + 16) = v12;
      *(v8 + 24) = v13;

      goto LABEL_4;
    }

LABEL_12:
    v1[(v15 >> 6) + 8] |= 1 << v15;
    v23 = (v1[6] + 16 * v15);
    *v23 = v11;
    v23[1] = v10;
    v24 = v1[7] + 32 * v15;
    *v24 = v11;
    *(v24 + 8) = v10;
    *(v24 + 16) = v12;
    *(v24 + 24) = v13;
    v25 = v1[2];
    v19 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v19)
    {
      goto LABEL_19;
    }

    v1[2] = v26;
LABEL_4:
    ++v5;
    v6 += 4;
    v4 = v29;
    if (v30 == v5)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_25E82A37C();
  __break(1u);
  return result;
}

void sub_25E816A2C()
{
  v1 = v0;
  v76[5] = *MEMORY[0x277D85DE8];
  v2 = sub_25E829A8C();
  v71 = *(v2 - 8);
  v72 = v2;
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_25E829AAC();
  v6 = *(v70 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v70);
  v9 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v10 = sub_25E829CDC();
  v11 = __swift_project_value_buffer(v10, qword_27FD0A4B0);

  v69[1] = v11;
  v12 = sub_25E829CBC();
  v13 = sub_25E82A01C();
  v74 = v1;

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v76[0] = v15;
    *v14 = 136315138;
    sub_25E829D6C();
    sub_25E801E34();
    v16 = sub_25E82A2EC();
    v18 = sub_25E7FFAF0(v16, v17, v76);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_25E7F6000, v12, v13, "PlanksWriter: finalizing %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x25F8C1620](v15, -1, -1);
    MEMORY[0x25F8C1620](v14, -1, -1);
  }

  sub_25E829A9C();
  sub_25E8161FC(v5);
  v19 = sub_25E829A2C();
  v21 = v20;
  (*(v71 + 8))(v5, v72);
  (*(v6 + 8))(v9, v70);
  v22 = v74;
  v23 = (v74 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata);
  swift_beginAccess();
  v24 = v23[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v23[3];
  v23[3] = 0x8000000000000000;
  sub_25E818018(v19, v21, 0xD000000000000014, 0x800000025E82C650, isUniquelyReferenced_nonNull_native);
  v23[3] = v75;
  swift_endAccess();
  v26 = sub_25E8299AC();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_25E82999C();
  v29 = *v23;
  v30 = v23[1];
  v31 = v23[2];
  v32 = v23[3];
  v76[0] = v29;
  v76[1] = v30;
  v76[2] = v31;
  v76[3] = v32;
  sub_25E818BAC();

  v33 = v73;
  v34 = sub_25E82998C();
  v36 = v22;
  if (v33)
  {

LABEL_23:
    *(v36 + OBJC_IVAR____TtC6Planks12PlanksWriter_finalized) = 1;
    goto LABEL_24;
  }

  v37 = v34;
  v38 = v35;

  v39 = v38 >> 62;
  if ((v38 >> 62) > 1)
  {
    if (v39 != 2)
    {
      goto LABEL_19;
    }

    v42 = *(v37 + 16);
    v41 = *(v37 + 24);
    v40 = v41 - v42;
    if (!__OFSUB__(v41, v42))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v39)
  {
    v40 = BYTE6(v38);
    goto LABEL_20;
  }

  if (__OFSUB__(HIDWORD(v37), v37))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v40 = HIDWORD(v37) - v37;
LABEL_16:
  if ((v40 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (!HIDWORD(v40))
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_19:
  v40 = 0;
LABEL_20:
  v43 = sub_25E8173B4();
  v44 = *(v36 + OBJC_IVAR____TtC6Planks12PlanksWriter_fd);
  v45 = sub_25E829D1C();
  if (v46)
  {
    LODWORD(v76[0]) = v45;
    v47 = v45;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v48 = v47;
    sub_25E801F30(v37, v38);

    goto LABEL_23;
  }

  sub_25E8171E0(v37, v38, v36);
  v73 = v40;
  LODWORD(v75) = v40;
  v50 = sub_25E7FFFD0(4, 0);
  if (sub_25E81862C(v76, v50 + 4, 4, 0, 4uLL, &v75, &v75 + 4) != 4)
  {
LABEL_38:
    __break(1u);
  }

  v76[0] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07618, &qword_25E82B188);
  sub_25E818C00();
  v51 = sub_25E829D4C();
  v53 = v52;

  if (v53)
  {
    LODWORD(v75) = v51;
    sub_25E7FFC08();
LABEL_30:
    swift_willThrowTypedImpl();
    swift_allocError();
    *v56 = v51;

    sub_25E801F30(v37, v38);
    v36 = v74;
    goto LABEL_23;
  }

  v54 = sub_25E829D3C();
  if (v55)
  {
    LODWORD(v76[0]) = v54;
    v51 = v54;
    sub_25E7FFC08();
    goto LABEL_30;
  }

  v57 = sub_25E829CBC();
  v58 = sub_25E82A01C();
  v59 = os_log_type_enabled(v57, v58);
  v60 = v74;
  if (v59)
  {
    v61 = v74;
    v62 = swift_slowAlloc();
    *v62 = 134217984;
    *(v62 + 4) = v43;
    _os_log_impl(&dword_25E7F6000, v57, v58, "PlanksWriter: metadata offset: %lld", v62, 0xCu);
    v63 = v62;
    v60 = v61;
    MEMORY[0x25F8C1620](v63, -1, -1);
  }

  v64 = sub_25E829CBC();
  v65 = sub_25E82A01C();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = v60;
    v67 = swift_slowAlloc();
    *v67 = 67109120;
    *(v67 + 4) = v73;
    _os_log_impl(&dword_25E7F6000, v64, v65, "PlanksWriter: metadata size: %u", v67, 8u);
    v68 = v67;
    v60 = v66;
    MEMORY[0x25F8C1620](v68, -1, -1);
  }

  sub_25E801F30(v37, v38);

  *(v60 + OBJC_IVAR____TtC6Planks12PlanksWriter_finalized) = 1;
LABEL_24:
  v49 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25E8171E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v8 = *(a3 + OBJC_IVAR____TtC6Planks12PlanksWriter_fd);
      goto LABEL_9;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
LABEL_7:
    v7 = sub_25E818DF4(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);

    goto LABEL_13;
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  v4 = *(a3 + OBJC_IVAR____TtC6Planks12PlanksWriter_fd);
LABEL_9:
  v7 = sub_25E829D3C();
  if (v9)
  {
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v10 = v7;
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

unint64_t sub_25E8173B4()
{
  v1 = v0 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 40 * v4;
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    v8 = __OFADD__(v7, v6);
    v9 = v7 + v6;
    if (v8)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 4;
  }

  v8 = __OFADD__(v9, 4);
  v10 = v9 + 4;
  if (v8)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v12 = v10 - 1;
  v11 = v10 < 1;
  v13 = v10 + 2;
  if (!v11)
  {
    v13 = v12;
  }

  return v13 & 0xFFFFFFFFFFFFFFFCLL;
}

void sub_25E817448(uint64_t a1@<X2>, uint64_t a2@<X3>, unint64_t a3@<X4>, char a4@<W5>, uint64_t a5@<X8>)
{
  if (a4)
  {
    a3 = sub_25E8173B4();
  }

  v10 = *(v5 + OBJC_IVAR____TtC6Planks12PlanksWriter_fd);
  sub_25E829D1C();
  if (v11)
  {
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
  }

  v12 = sub_25E829D3C();
  if (v13)
  {
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v14 = sub_25E829CDC();
    __swift_project_value_buffer(v14, qword_27FD0A4B0);
    v15 = sub_25E829CBC();
    v16 = sub_25E82A02C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_25E7F6000, v15, v16, "Failed at writing column chunk data.", v17, 2u);
      MEMORY[0x25F8C1620](v17, -1, -1);
    }

    *(a5 + 42) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
  }

  else
  {
    *a5 = a1;
    *(a5 + 8) = a2;
    *(a5 + 16) = a3;
    *(a5 + 24) = v12;
    *(a5 + 32) = 0;
    *(a5 + 40) = 0;
    *(a5 + 48) = 0;
    *(a5 + 56) = 12;
  }
}

uint64_t sub_25E8177B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD076A8, &qword_25E82B280);
  v39 = a2;
  result = sub_25E82A1DC();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 32 * v22;
      v27 = *(v26 + 8);
      v42 = *v26;
      v41 = *(v26 + 16);
      v40 = *(v26 + 24);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_25E82A39C();
      sub_25E829DDC();
      result = sub_25E82A3BC();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 32 * v16;
      *v18 = v42;
      *(v18 + 8) = v27;
      *(v18 + 16) = v41;
      *(v18 + 24) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25E817AB8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_25E82A1DC();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_25E82A39C();
      sub_25E829DDC();
      result = sub_25E82A3BC();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_25E817D58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07698, &qword_25E82B270);
  v40 = a2;
  result = sub_25E82A1DC();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_25E82A39C();
      sub_25E829DDC();
      result = sub_25E82A3BC();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25E818018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25E800EB4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_25E817D58(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_25E800EB4(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_25E82A37C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_25E8184B4();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_25E8181A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD076A8, &qword_25E82B280);
  v2 = *v0;
  v3 = sub_25E82A1CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v23;
        *(v28 + 8) = v24;
        *(v28 + 16) = v25;
        *(v28 + 24) = v26;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25E818354(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25E82A1CC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_25E8184B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07698, &qword_25E82B270);
  v2 = *v0;
  v3 = sub_25E82A1CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

size_t *sub_25E81862C(size_t *result, void *__dst, int64_t a3, size_t a4, size_t a5, size_t a6, size_t a7)
{
  if (!a6)
  {
    goto LABEL_16;
  }

  v7 = a7 - a6;
  if ((a7 - a6) < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v7 < a4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v7 < a5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFADD__(a4, a5 - a4))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a5 < a4)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = 0;
  if (a5 != a4 && a3)
  {
    if ((a5 - a4) >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = a5 - a4;
    }

    v9 = result;
    v10 = a7;
    v11 = a6;
    v12 = a5;
    v13 = a4;
    memcpy(__dst, (a6 + a4), v8);
    a4 = v13;
    result = v9;
    a5 = v12;
    a6 = v11;
    a7 = v10;
  }

  v14 = a4 + v8;
  if (__OFADD__(a4, v8))
  {
    goto LABEL_25;
  }

  if (v14 <= v7)
  {
LABEL_19:
    result[3] = a7;
    result[4] = v14;
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    return v8;
  }

  __break(1u);
LABEL_16:
  if (a4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!a5)
  {
    v14 = 0;
    v8 = 0;
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_25E818734(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD076A8, &qword_25E82B280);
    v3 = sub_25E82A1EC();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *i;

      result = sub_25E800EB4(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 32 * result;
      *v14 = v8;
      *(v14 + 8) = v7;
      *(v14 + 16) = v9;
      *(v14 + 24) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25E81887C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_25E82A1EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_25E800EB4(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25E818978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07698, &qword_25E82B270);
    v3 = sub_25E82A1EC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_25E800EB4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t type metadata accessor for PlanksWriter()
{
  result = qword_27FD07688;
  if (!qword_27FD07688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E818AD8()
{
  v0 = sub_25E829D1C();
  if (v1)
  {
    v2 = v0;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
LABEL_5:
    swift_allocError();
    *v4 = v2;
    return v2;
  }

  v2 = sub_25E829D3C();
  if (v3)
  {
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    goto LABEL_5;
  }

  return v2;
}

unint64_t sub_25E818BAC()
{
  result = qword_27FD07680;
  if (!qword_27FD07680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07680);
  }

  return result;
}

unint64_t sub_25E818C00()
{
  result = qword_27FD07620;
  if (!qword_27FD07620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD07618, &qword_25E82B188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07620);
  }

  return result;
}

uint64_t sub_25E818C74()
{
  result = sub_25E829D6C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25E818DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_25E8299DC();
  if (result)
  {
    result = sub_25E8299FC();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_8;
    }
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  sub_25E8299EC();
  v8 = *(a4 + OBJC_IVAR____TtC6Planks12PlanksWriter_fd);
  result = sub_25E829D3C();
  if (v9)
  {
    v10 = result;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    swift_allocError();
    result = v10;
    *v11 = v10;
  }

  return result;
}

uint64_t PlanksWriter.writeDataFrame(df:label:columnTypes:batchSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v170 = a2;
  v171 = a3;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD076C0, &qword_25E82B2B8);
  v178 = *(v156 - 8);
  v10 = *(v178 + 64);
  MEMORY[0x28223BE20](v156);
  v155 = &v145 - v11;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD076C8, qword_25E82B2C0);
  v12 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v153 = &v145 - v13;
  v166 = sub_25E829B6C();
  v175 = *(v166 - 8);
  v14 = *(v175 + 8);
  MEMORY[0x28223BE20](v166);
  v172 = &v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_25E829B3C();
  v174 = *(v180 - 8);
  v16 = *(v174 + 64);
  v17 = MEMORY[0x28223BE20](v180);
  v164 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v182 = &v145 - v19;
  v165 = a1;
  v150 = sub_25E829ADC();
  v20 = *(a4 + 64);
  v176 = a4 + 64;
  v21 = 1 << *(a4 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v159 = v6;
  v24 = v6 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  v177 = a4;

  result = swift_beginAccess();
  v26 = 0;
  v157 = 0;
  v158 = a5;
  v27 = (v21 + 63) >> 6;
  v179 = v27;
  v28 = v176;
  if (v23)
  {
LABEL_8:
    while (1)
    {
      v30 = __clz(__rbit64(v23)) | (v26 << 6);
      v31 = (*(v177 + 48) + 16 * v30);
      v32 = *v31;
      v33 = v31[1];
      LODWORD(v181) = *(*(v177 + 56) + v30);
      v189 = v170;
      *&v190 = v171;

      MEMORY[0x25F8C0BC0](46, 0xE100000000000000);
      MEMORY[0x25F8C0BC0](v32, v33);

      v34 = v189;
      v35 = v190;
      v36 = *(v24 + 24);
      v189 = *v24;
      v190 = *(v24 + 8);
      v191 = v36;
      v37 = FileMetadata.fieldNames.getter();
      *&v195[0] = v34;
      *(&v195[0] + 1) = v35;
      MEMORY[0x28223BE20](v37);
      *(&v145 - 2) = v195;
      v38 = v157;
      v39 = sub_25E8073B0(sub_25E81A090, (&v145 - 2), v37);

      if (v39)
      {
        break;
      }

      swift_beginAccess();
      v40 = *(v24 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8) = v40;
      v157 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = sub_25E7FF7B8(0, *(v40 + 2) + 1, 1, v40);
        *(v24 + 8) = v40;
      }

      v43 = *(v40 + 2);
      v42 = *(v40 + 3);
      if (v43 >= v42 >> 1)
      {
        v40 = sub_25E7FF7B8((v42 > 1), v43 + 1, 1, v40);
      }

      v23 &= v23 - 1;
      *(v40 + 2) = v43 + 1;
      v44 = &v40[32 * v43];
      *(v44 + 4) = v34;
      *(v44 + 5) = v35;
      v44[48] = v181;
      a5 = v158;
      *(v44 + 7) = v158;
      *(v24 + 8) = v40;
      result = swift_endAccess();
      v27 = v179;
      v28 = v176;
      if (!v23)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

  while (1)
  {
LABEL_4:
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    if (v29 >= v27)
    {
      break;
    }

    v23 = *(v28 + 8 * v29);
    ++v26;
    if (v23)
    {
      v26 = v29;
      goto LABEL_8;
    }
  }

  if (!a5)
  {
    goto LABEL_114;
  }

  v189 = 0;
  *&v190 = v150;
  *(&v190 + 1) = a5;
  v191 = 0;
  v192 = 0;
  v193 = 0;
  v194 = 0;
  v152 = OBJC_IVAR____TtC6Planks12PlanksWriter_fd;
  result = sub_25E805E88();
  v45 = v166;
  v46 = v172;
  if (v47)
  {
    return 1;
  }

  v163 = v175 + 8;
  v179 = (v174 + 8);
  v151 = (v178 + 8);
  *(&v48 + 1) = 1;
  v148 = xmmword_25E82B2A0;
  *&v48 = 136315138;
  v145 = v48;
  *&v48 = 134218498;
  v146 = v48;
  *&v48 = 136315394;
  v149 = v48;
  v147 = v24;
  while (2)
  {
    if (__OFADD__(result, a5))
    {
      goto LABEL_112;
    }

    v49 = v150;
    if (v150 >= result + a5)
    {
      v49 = result + a5;
    }

    if (!__OFSUB__(v49, result))
    {
      if (v49 - result >= 1)
      {
        v169 = v49;
        v173 = result;
        v50 = sub_25E8173B4();
        LOBYTE(v187) = 1;
        v51 = MEMORY[0x277D84F90];
        *(&v187 + 1) = MEMORY[0x277D84F90];
        *v188 = v50;
        v168 = v50;
        *&v188[8] = v148;
        v52 = 1 << *(v177 + 32);
        if (v52 < 64)
        {
          v53 = ~(-1 << v52);
        }

        else
        {
          v53 = -1;
        }

        v54 = v53 & *(v177 + 64);
        v55 = (v52 + 63) >> 6;

        v56 = 0;
        v167 = v55;
LABEL_28:
        v175 = v51;
        v161 = v51 - 32;
        while (v54)
        {
LABEL_36:
          v58 = __clz(__rbit64(v54)) | (v56 << 6);
          v59 = (*(v177 + 48) + 16 * v58);
          v61 = *v59;
          v60 = v59[1];
          v62 = *(*(v177 + 56) + v58);
          v183 = v170;
          v184 = v171;

          MEMORY[0x25F8C0BC0](46, 0xE100000000000000);
          MEMORY[0x25F8C0BC0](v61, v60);
          v162 = v183;
          v178 = v184;
          v181 = v60;
          sub_25E829B1C();
          sub_25E81A0B0(&qword_27FD076D0, MEMORY[0x277CE1950]);
          result = sub_25E829FCC();
          if (v186 < v173)
          {
            goto LABEL_109;
          }

          v174 = v61;
          v183 = v173;
          v184 = v186;
          v63 = v164;
          sub_25E829FFC();
          (*v163)(v46, v45);
          sub_25E81A0B0(&qword_27FD076D8, MEMORY[0x277CE18B8]);
          v64 = v180;
          result = sub_25E829FAC();
          if (v169 < v186)
          {
            goto LABEL_110;
          }

          v183 = v186;
          v184 = v169;
          sub_25E829FFC();
          v65 = *v179;
          result = (*v179)(v63, v64);
          v66 = *(v175 + 2);
          v67 = v168;
          if (v66)
          {
            v68 = &v161[64 * v66];
            v70 = *(v68 + 2);
            v69 = *(v68 + 3);
            v67 = v70 + v69;
            if (__OFADD__(v70, v69))
            {
              goto LABEL_111;
            }
          }

          v54 &= v54 - 1;
          if (v62)
          {
            v71 = v65;

            if (qword_27FD072A0 != -1)
            {
              swift_once();
            }

            v72 = sub_25E829CDC();
            __swift_project_value_buffer(v72, qword_27FD0A4B0);

            v73 = sub_25E829CBC();
            v74 = sub_25E82A02C();

            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v183 = v76;
              *v75 = v149;
              if (v62 <= 5)
              {
                v77 = 0x38746E6975;
                if (v62 != 4)
                {
                  v77 = 0x3631746E6975;
                }

                v78 = 0xE500000000000000;
                v79 = 0xE600000000000000;
                if (v62 == 4)
                {
                  v79 = 0xE500000000000000;
                }

                if (v62 == 3)
                {
                  v77 = 0x3436746E69;
                  v79 = 0xE500000000000000;
                }

                v80 = 0x3631746E69;
                if (v62 != 1)
                {
                  v80 = 0x3233746E69;
                }

                v81 = v62 <= 2;
              }

              else
              {
                v77 = 0x343674616F6C66;
                if (v62 != 10)
                {
                  v77 = 1819242338;
                }

                v78 = 0xE700000000000000;
                v79 = 0xE400000000000000;
                if (v62 == 10)
                {
                  v79 = 0xE700000000000000;
                }

                if (v62 == 9)
                {
                  v77 = 0x323374616F6C66;
                  v79 = 0xE700000000000000;
                }

                v80 = 0x3436746E6975;
                if (v62 == 7)
                {
                  v78 = 0xE600000000000000;
                }

                else
                {
                  v80 = 0x363174616F6C66;
                }

                if (v62 == 6)
                {
                  v80 = 0x3233746E6975;
                  v78 = 0xE600000000000000;
                }

                v81 = v62 <= 8;
              }

              if (v81)
              {
                v105 = v80;
              }

              else
              {
                v105 = v77;
              }

              if (v81)
              {
                v106 = v78;
              }

              else
              {
                v106 = v79;
              }

              v107 = sub_25E7FFAF0(v105, v106, &v183);

              *(v75 + 4) = v107;
              *(v75 + 12) = 2080;
              v108 = sub_25E7FFAF0(v174, v181, &v183);

              *(v75 + 14) = v108;
              _os_log_impl(&dword_25E7F6000, v73, v74, "Unsupported column type %s for column %s", v75, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x25F8C1620](v76, -1, -1);
              MEMORY[0x25F8C1620](v75, -1, -1);

              result = v71(v182, v180);
              v45 = v166;
            }

            else
            {

              result = v71(v182, v180);
            }
          }

          else
          {
            v160 = v65;
            v82 = v155;
            sub_25E829B2C();
            LOBYTE(v183) = 0;
            sub_25E81A0F8(&qword_27FD076E0, &qword_27FD076C0, &qword_25E82B2B8);
            v83 = v156;
            sub_25E829B4C();
            (*v151)(v82, v83);
            sub_25E81A0F8(&qword_27FD076E8, &qword_27FD076C8, qword_25E82B2C0);
            v84 = *(sub_25E829E2C() + 16);
            v85 = *(v159 + v152);
            v86 = sub_25E829D1C();
            if (v87)
            {
              LODWORD(v183) = v86;
              sub_25E7FFC08();
              swift_willThrowTypedImpl();
            }

            v88 = sub_25E829D3C();
            if ((v89 & 1) == 0)
            {
              v109 = v88;

              swift_beginAccess();
              v110 = swift_isUniquelyReferenced_nonNull_native();
              v111 = v166;
              if (v110)
              {
                v55 = v167;
                v112 = v175;
              }

              else
              {
                v112 = sub_25E7FF9E4(0, *(v175 + 2) + 1, 1, v175);
                v55 = v167;
              }

              v114 = *(v112 + 2);
              v113 = *(v112 + 3);
              v115 = v112;
              if (v114 >= v113 >> 1)
              {
                v115 = sub_25E7FF9E4((v113 > 1), v114 + 1, 1, v112);
              }

              v116 = v115;
              *(v115 + 2) = v114 + 1;
              v117 = &v115[64 * v114];
              v118 = v178;
              *(v117 + 4) = v162;
              *(v117 + 5) = v118;
              *(v117 + 6) = v67;
              *(v117 + 7) = v109;
              *(v117 + 32) = 0;
              v119 = WORD2(v186);
              *(v117 + 66) = v186;
              *(v117 + 35) = v119;
              *(v117 + 9) = 0;
              *(v117 + 10) = 0;
              *(v117 + 44) = 12;
              *(&v187 + 1) = v115;
              swift_endAccess();
              result = v160(v182, v180);
              v51 = v116;
              v46 = v172;
              v28 = v176;
              v45 = v111;
              goto LABEL_28;
            }

            v185 = v88;
            sub_25E7FFC08();
            swift_willThrowTypedImpl();
            v45 = v166;
            if (qword_27FD072A0 != -1)
            {
              swift_once();
            }

            v90 = sub_25E829CDC();
            __swift_project_value_buffer(v90, qword_27FD0A4B0);
            v91 = sub_25E829CBC();
            v92 = sub_25E82A02C();
            if (os_log_type_enabled(v91, v92))
            {
              v93 = swift_slowAlloc();
              *v93 = 0;
              _os_log_impl(&dword_25E7F6000, v91, v92, "Failed at writing column chunk data.", v93, 2u);
              v94 = v93;
              v45 = v166;
              MEMORY[0x25F8C1620](v94, -1, -1);
            }

            v95 = v181;

            v96 = sub_25E829CBC();
            v97 = sub_25E82A02C();

            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              v178 = swift_slowAlloc();
              v183 = v178;
              *v98 = v146;
              v99 = v174;
              *(v98 + 4) = v173;
              *(v98 + 12) = 2080;
              v100 = sub_25E7FFAF0(v99, v95, &v183);

              *(v98 + 14) = v100;
              *(v98 + 22) = 2080;
              LOBYTE(v186) = 0;
              v101 = FieldType.description.getter();
              v103 = sub_25E7FFAF0(v101, v102, &v183);

              *(v98 + 24) = v103;
              _os_log_impl(&dword_25E7F6000, v96, v97, "Failed at writing batch %ld: %s %s", v98, 0x20u);
              v104 = v178;
              swift_arrayDestroy();
              MEMORY[0x25F8C1620](v104, -1, -1);
              MEMORY[0x25F8C1620](v98, -1, -1);
            }

            else
            {
            }

            result = v160(v182, v180);
          }

          v46 = v172;
          v28 = v176;
          v55 = v167;
        }

        while (1)
        {
          v57 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          if (v57 >= v55)
          {
            break;
          }

          v54 = *(v28 + 8 * v57);
          ++v56;
          if (v54)
          {
            v56 = v57;
            goto LABEL_36;
          }
        }

        v120 = 0;
        v121 = v175 + 56;
        v122 = *(v175 + 2) + 1;
        v123 = v147;
        while (--v122)
        {
          v124 = *v121;
          v121 += 64;
          v125 = __OFADD__(v120, v124);
          v120 += v124;
          if (v125)
          {
            goto LABEL_107;
          }
        }

        swift_beginAccess();
        *&v188[8] = v120;
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v126 = sub_25E829CDC();
        __swift_project_value_buffer(v126, qword_27FD0A4B0);
        v127 = sub_25E829CBC();
        v128 = sub_25E82A01C();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v186 = v130;
          *v129 = v145;
          v195[0] = v187;
          v195[1] = *v188;
          v196 = *&v188[16];
          sub_25E8028A8(v195, &v183);
          v131 = sub_25E7FF0A0();
          v133 = v132;
          sub_25E81A140(v195);
          v134 = sub_25E7FFAF0(v131, v133, &v186);

          *(v129 + 4) = v134;
          _os_log_impl(&dword_25E7F6000, v127, v128, "Written rowGroup: %s", v129, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v130);
          MEMORY[0x25F8C1620](v130, -1, -1);
          MEMORY[0x25F8C1620](v129, -1, -1);
        }

        v135 = v187;
        v136 = *(&v187 + 1);
        v138 = *v188;
        v137 = *&v188[16];
        swift_beginAccess();
        v139 = *(v123 + 16);

        v140 = swift_isUniquelyReferenced_nonNull_native();
        *(v123 + 16) = v139;
        if ((v140 & 1) == 0)
        {
          v139 = sub_25E7FF8C4(0, *(v139 + 2) + 1, 1, v139);
          *(v123 + 16) = v139;
        }

        v142 = *(v139 + 2);
        v141 = *(v139 + 3);
        if (v142 >= v141 >> 1)
        {
          v139 = sub_25E7FF8C4((v141 > 1), v142 + 1, 1, v139);
        }

        *(v139 + 2) = v142 + 1;
        v143 = &v139[40 * v142];
        v143[32] = v135;
        *(v143 + 5) = v136;
        *(v143 + 3) = v138;
        *(v143 + 8) = v137;
        *(v123 + 16) = v139;
        swift_endAccess();

        result = sub_25E805E88();
        a5 = v158;
        v45 = v166;
        v46 = v172;
        v28 = v176;
        if ((v144 & 1) == 0)
        {
          continue;
        }
      }

      return 1;
    }

    break;
  }

LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
  return result;
}