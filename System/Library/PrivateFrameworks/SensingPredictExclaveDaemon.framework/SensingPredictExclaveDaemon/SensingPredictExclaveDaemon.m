uint64_t sub_2655DEE28()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2655DEE60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2655DF8D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_2655DF8F4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_2655DF8E4();
  result = (*(v5 + 8))(a1, v4);
  *(v9 + 16) = v13;
  *a2 = v9;
  return result;
}

uint64_t sub_2655DEF90@<X0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v44 = a1;
  v3 = v2;
  v43 = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280017D48, &qword_2655DFB08) - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v41 = &v39[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v39[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v39[-v13];
  v15 = sub_2655DF8B4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v46 = v14;
  v47 = v15;
  v42 = v17;
  (v17)(v14, 1, 1);
  v18 = sub_2655DF5C0();
  v19 = v3[6];
  v20 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v19);
  if (v18)
  {
    if (v18 == 1)
    {
      v48 = sub_2655DF854();
      v40 = sub_2655DF864();
      v21 = sub_2655DF864();
      v22 = sub_2655DF864();
      v23 = sub_2655DF864();
      (*(v20 + 16))(v48 & 1, v40, v21, v22, v23, v19, v20);
      v7 = v41;
    }

    else
    {
      (*(v20 + 24))(v19, v20);
    }

    v32 = v45;
    sub_2655DF884();
    if (v32)
    {
      goto LABEL_11;
    }

    v29 = v47;
    v42(v7, 0, 1, v47);
    v27 = *(v16 + 48);
    v28 = v46;
    if (v27(v46, 1, v29) != 1)
    {
      sub_2655DF730(v28);
    }

    sub_2655DF798(v7, v28);
    v31 = v43;
  }

  else
  {
    v24 = sub_2655DF864();
    (*(v20 + 8))(v24, v19, v20);
    v25 = v45;
    sub_2655DF884();
    if (v25)
    {
LABEL_11:
      v33 = v49;
      v34 = v46;
      result = (*(v16 + 48))(v46, 1, v47);
      if (result != 1)
      {
        result = sub_2655DF730(v34);
      }

      *v44 = v33;
      return result;
    }

    v26 = v47;
    v42(v12, 0, 1, v47);
    v27 = *(v16 + 48);
    v28 = v46;
    if (v27(v46, 1, v26) != 1)
    {
      sub_2655DF730(v28);
    }

    sub_2655DF798(v12, v28);
    v29 = v47;
    v30 = v27(v28, 1, v47);
    v31 = v43;
    if (!v30)
    {
      sub_2655DF894();
    }
  }

  v36 = v27(v28, 1, v29);
  v37 = v36;
  if (v36 != 1)
  {
    if (v36)
    {
      sub_2655DF730(v28);
      v37 = 1;
    }

    else
    {
      sub_2655DF8A4();
    }
  }

  v38 = sub_2655DF8C4();
  return (*(*(v38 - 8) + 56))(v31, v37, 1, v38);
}

uint64_t sub_2655DF3E4()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2655DF424@<X0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = sub_2655DEF90(&v7, a2);
  if (v3)
  {
    *a1 = v7;
  }

  return result;
}

unint64_t sub_2655DF524()
{
  result = qword_280017D40;
  if (!qword_280017D40)
  {
    type metadata accessor for SensingPredictExclave.Server();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280017D40);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2655DF5C0()
{
  v0 = sub_2655DF874();
  switch(v0)
  {
    case 0x593FCFDACD942A8FLL:
      return 0;
    case 0x2CCB7972B527C121:
      return 2;
    case 0xEBC2F6D65C098EDCLL:
      return 1;
  }

  sub_2655DF914();
  MEMORY[0x266759210](0xD000000000000034, 0x80000002655DFC30);
  v2 = sub_2655DF934();
  MEMORY[0x266759210](v2);

  result = sub_2655DF924();
  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2655DF730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280017D48, &qword_2655DFB08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2655DF798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280017D48, &qword_2655DFB08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}