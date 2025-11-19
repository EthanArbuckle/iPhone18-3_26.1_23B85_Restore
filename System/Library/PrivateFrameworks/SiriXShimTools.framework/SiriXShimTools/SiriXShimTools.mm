size_t sub_269A7B548(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    sub_269A80198(a4 + v22, v14, v19 + v22, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t static ShimRegistry.actionDefinitions.getter()
{
  v0 = sub_269A824FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131EEF0 != -1)
  {
    swift_once();
  }

  v5 = qword_28131F0E8;
  v6 = *(qword_28131F0E8 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v14 = MEMORY[0x277D84F90];
    sub_269A7B8D4(0, v6, 0);
    v7 = v14;
    v8 = v5 + 40;
    do
    {
      v9 = *(v8 - 8);
      (*(*v8 + 16))();
      v14 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_269A7B8D4(v10 > 1, v11 + 1, 1);
        v7 = v14;
      }

      *(v7 + 16) = v11 + 1;
      (*(v1 + 32))(v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, v4, v0);
      v8 += 16;
      --v6;
    }

    while (v6);
  }

  return v7;
}

size_t sub_269A7B8D4(size_t a1, int64_t a2, char a3)
{
  result = sub_269A7B548(a1, a2, a3, *v3, &qword_280345D30, &qword_269A82CB0, MEMORY[0x277D1C378], MEMORY[0x277D1C378]);
  *v3 = result;
  return result;
}

uint64_t sub_269A7B920@<X0>(uint64_t a1@<X8>)
{
  if (qword_28131EED8 != -1)
  {
    swift_once();
  }

  v2 = sub_269A824FC();
  v3 = __swift_project_value_buffer(v2, qword_28131F0A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_269A7BA00@<X0>(uint64_t a1@<X8>)
{
  if (qword_28131ED18 != -1)
  {
    swift_once();
  }

  v2 = sub_269A824FC();
  v3 = __swift_project_value_buffer(v2, qword_28131EEF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_269A7BAA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_28131EE00 != -1)
  {
    swift_once();
  }

  v2 = sub_269A824FC();
  v3 = __swift_project_value_buffer(v2, qword_28131EFD8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_269A7BB50@<X0>(uint64_t a1@<X8>)
{
  if (qword_28131EEE8 != -1)
  {
    swift_once();
  }

  v2 = sub_269A824FC();
  v3 = __swift_project_value_buffer(v2, qword_28131F0D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_269A7BBF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_28131EEE0 != -1)
  {
    swift_once();
  }

  v2 = sub_269A824FC();
  v3 = __swift_project_value_buffer(v2, qword_28131F0B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_269A7BCA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_28131EE08 != -1)
  {
    swift_once();
  }

  v2 = sub_269A824FC();
  v3 = __swift_project_value_buffer(v2, qword_28131F008);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_269A7BD48@<X0>(uint64_t a1@<X8>)
{
  if (qword_28131EE10 != -1)
  {
    swift_once();
  }

  v2 = sub_269A824FC();
  v3 = __swift_project_value_buffer(v2, qword_28131F020);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_269A7BE18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_269A8257C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_269A7BEA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_269A8257C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269A7BF68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_269A8257C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_269A7BFF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_269A8257C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269A7C080()
{
  v0 = sub_269A8257C();
  v1 = *(v0 - 8);
  v75 = v0;
  v76 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v61 = (&v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CA8, &qword_269A82A00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v57 - v6;
  v8 = sub_269A824FC();
  __swift_allocate_value_buffer(v8, qword_28131F020);
  v9 = __swift_project_value_buffer(v8, qword_28131F020);
  v70 = "nformationFlowPlugin";
  v71 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CB0, &unk_269A82CC0);
  v10 = *(sub_269A824CC() - 8);
  v68 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v69 = v12;
  *(v12 + 16) = xmmword_269A829B0;
  v67 = v12 + v11;
  v66 = "on to a composite location";
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CB8, &qword_269A82A08);
  v62 = swift_allocBox();
  v15 = v14;
  v60 = *(v13 + 48);
  v16 = sub_269A8258C();
  v63 = v16;
  v17 = swift_allocBox();
  v19 = v18;
  v20 = *MEMORY[0x277D72CC0];
  v21 = *(v16 - 8);
  v64 = *(v21 + 104);
  v65 = v21 + 104;
  v64(v19, v20, v16);
  v58 = v15;
  *v15 = v17;
  v73 = *MEMORY[0x277D72D50];
  v22 = v73;
  v59 = sub_269A8259C();
  v23 = *(v59 - 8);
  v72 = *(v23 + 104);
  v74 = v23 + 104;
  v72(v15, v22, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CC0, &qword_269A82A10);
  v24 = sub_269A825AC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  v57 = xmmword_269A829C0;
  *(v28 + 16) = xmmword_269A829C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CC8, &qword_269A82A18);
  v29 = sub_269A8253C();
  v30 = *(*(v29 - 8) + 72);
  v31 = (*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v57;
  sub_269A8251C();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v29);
  sub_269A8250C();
  *(v28 + v27) = v32;
  (*(v25 + 104))(v28 + v27, *MEMORY[0x277D72E68], v24);
  *(v58 + v60) = v28;
  v33 = v61;
  *v61 = v62;
  v34 = *MEMORY[0x277D72AB8];
  v35 = v75;
  v62 = *(v76 + 104);
  v76 += 104;
  v62(v33, v34, v75);
  sub_269A824BC();
  v66 = "com.apple.siri.pommes";
  v36 = v59;
  v37 = swift_allocBox();
  v39 = v38;
  v40 = v63;
  v41 = swift_allocBox();
  v42 = v64;
  v64(v43, *MEMORY[0x277D72C98], v40);
  *v39 = v41;
  v44 = v39;
  v45 = v36;
  v72(v44, v73, v36);
  *v33 = v37;
  v46 = *MEMORY[0x277D72AD0];
  v47 = v33;
  v48 = v35;
  v49 = v62;
  v62(v33, v46, v48);
  sub_269A824BC();
  v50 = v45;
  v51 = swift_allocBox();
  v53 = v52;
  v54 = swift_allocBox();
  v42(v55, *MEMORY[0x277D72CC8], v40);
  *v53 = v54;
  v72(v53, v73, v50);
  *v47 = v51;
  v49(v47, v46, v75);
  return sub_269A824DC();
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_269A7C840()
{
  v0 = sub_269A824CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269A8257C();
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_269A824FC();
  __swift_allocate_value_buffer(v9, qword_28131EFD8);
  v22 = __swift_project_value_buffer(v9, qword_28131EFD8);
  v25 = MEMORY[0x277D84F90];
  sub_269A80260(0, 5, 0);
  v10 = 0;
  v11 = v25;
  do
  {
    sub_269A7CB80(byte_287A6FB58[v10 + 32], v4);
    v25 = v11;
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_269A80260(v12 > 1, v13 + 1, 1);
      v11 = v25;
    }

    ++v10;
    *(v11 + 16) = v13 + 1;
    (*(v1 + 32))(v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13, v4, v0);
  }

  while (v10 != 5);
  v14 = sub_269A8259C();
  v15 = swift_allocBox();
  v17 = v16;
  v18 = sub_269A8258C();
  v19 = swift_allocBox();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D72CC8], v18);
  *v17 = v19;
  (*(*(v14 - 8) + 104))(v17, *MEMORY[0x277D72D50], v14);
  *v8 = v15;
  (*(v23 + 104))(v8, *MEMORY[0x277D72AD0], v24);
  return sub_269A824EC();
}

uint64_t sub_269A7CB80@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v6 = sub_269A8257C();
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = (&v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  switch(a1)
  {
    case 1:
    case 2:
      v64 = sub_269A8259C();
      swift_allocBox();
      v65 = OUTLINED_FUNCTION_2();
      v66 = swift_allocBox();
      v67 = *MEMORY[0x277D72CE0];
      OUTLINED_FUNCTION_0(v65);
      (*(v68 + 104))();
      *v3 = v66;
      v69 = *MEMORY[0x277D72D50];
      OUTLINED_FUNCTION_0(v64);
      (*(v70 + 104))(v3);
      *v13 = v2;
      v71 = *MEMORY[0x277D72AD0];
      v72 = OUTLINED_FUNCTION_1();
      v73(v72);
      break;
    case 3:
      v37 = swift_allocBox();
      v79 = v38;
      v80 = v37;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CB8, &qword_269A82A08);
      v40 = swift_allocBox();
      v42 = v41;
      v77 = *(v39 + 48);
      v78 = v40;
      v43 = sub_269A8258C();
      v44 = swift_allocBox();
      v45 = *MEMORY[0x277D72CC0];
      OUTLINED_FUNCTION_0(v43);
      (*(v46 + 104))();
      *v42 = v44;
      v47 = *MEMORY[0x277D72D50];
      v48 = sub_269A8259C();
      OUTLINED_FUNCTION_0(v48);
      (*(v49 + 104))(v42, v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CC0, &qword_269A82A10);
      v50 = sub_269A825AC();
      OUTLINED_FUNCTION_3(v50);
      v52 = v51;
      v54 = *(v53 + 72);
      v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v56 = swift_allocObject();
      v75 = xmmword_269A829C0;
      *(v56 + 16) = xmmword_269A829C0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CC8, &qword_269A82A18);
      v76 = a2;
      v57 = *(sub_269A8253C() - 8);
      v58 = *(v57 + 72);
      v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = v75;
      sub_269A8252C();
      *(v56 + v55) = v60;
      (*(v52 + 104))(v56 + v55, *MEMORY[0x277D72E68], v50);
      v61 = v78;
      *(v42 + v77) = v56;
      *v79 = v61;
      v62 = *MEMORY[0x277D72AB8];
      v63 = *(v9 + 104);
      v63();
      *v13 = v80;
      (v63)(v13, *MEMORY[0x277D72AB0], v6);
      break;
    case 4:
      v27 = sub_269A8259C();
      swift_allocBox();
      v28 = OUTLINED_FUNCTION_2();
      v29 = swift_allocBox();
      v30 = *MEMORY[0x277D72C98];
      OUTLINED_FUNCTION_0(v28);
      (*(v31 + 104))();
      *v3 = v29;
      v32 = *MEMORY[0x277D72D50];
      OUTLINED_FUNCTION_0(v27);
      (*(v33 + 104))(v3);
      *v13 = v2;
      v34 = *MEMORY[0x277D72AD0];
      v35 = OUTLINED_FUNCTION_1();
      v36(v35);
      break;
    default:
      v80 = "p to receive the message";
      v79 = swift_allocBox();
      v15 = v14;
      v16 = sub_269A8259C();
      v17 = swift_allocBox();
      v19 = v18;
      v20 = sub_269A8258C();
      v21 = swift_allocBox();
      v22 = *MEMORY[0x277D72CD8];
      OUTLINED_FUNCTION_0(v20);
      (*(v23 + 104))();
      *v19 = v21;
      v24 = *MEMORY[0x277D72D50];
      OUTLINED_FUNCTION_0(v16);
      (*(v25 + 104))(v19);
      *v15 = v17;
      v26 = *(v9 + 104);
      v26(v15, *MEMORY[0x277D72AD0], v6);
      *v13 = v79;
      v26(v13, *MEMORY[0x277D72AB0], v6);
      break;
  }

  return sub_269A824BC();
}

uint64_t sub_269A7D2F8(char a1)
{
  result = 0x6E65697069636572;
  switch(a1)
  {
    case 1:
      result = 0x6D614E70756F7267;
      break;
    case 2:
      result = 0x746E65746E6F63;
      break;
    case 3:
      result = 0x656D686361747461;
      break;
    case 4:
      result = 7368801;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2()
{

  return sub_269A8258C();
}

uint64_t sub_269A7D43C()
{
  v0 = sub_269A824CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269A8257C();
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_269A824FC();
  __swift_allocate_value_buffer(v9, qword_28131F0B8);
  v22 = __swift_project_value_buffer(v9, qword_28131F0B8);
  v25 = MEMORY[0x277D84F90];
  sub_269A80260(0, 3, 0);
  v10 = 0;
  v11 = v25;
  do
  {
    sub_269A7D76C(byte_287A6FB80[v10 + 32]);
    v25 = v11;
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_269A80260(v12 > 1, v13 + 1, 1);
      v11 = v25;
    }

    ++v10;
    *(v11 + 16) = v13 + 1;
    (*(v1 + 32))(v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13, v4, v0);
  }

  while (v10 != 3);
  v14 = sub_269A8259C();
  v15 = swift_allocBox();
  v17 = v16;
  v18 = sub_269A8258C();
  v19 = swift_allocBox();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D72CC8], v18);
  *v17 = v19;
  (*(*(v14 - 8) + 104))(v17, *MEMORY[0x277D72D50], v14);
  *v8 = v15;
  (*(v23 + 104))(v8, *MEMORY[0x277D72AD0], v24);
  return sub_269A824EC();
}

uint64_t sub_269A7D76C(char a1)
{
  v2 = sub_269A8257C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = sub_269A8259C();
      v8 = swift_allocBox();
      v10 = v9;
      v11 = sub_269A8258C();
      v12 = swift_allocBox();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D72CB0], v11);
    }

    else
    {
      v7 = sub_269A8259C();
      v8 = swift_allocBox();
      v10 = v24;
      v25 = sub_269A8258C();
      v12 = swift_allocBox();
      (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D72C98], v25);
    }

    *v10 = v12;
    (*(*(v7 - 8) + 104))(v10, *MEMORY[0x277D72D50], v7);
    *v6 = v8;
    (*(v3 + 104))(v6, *MEMORY[0x277D72AD0], v2);
  }

  else
  {
    v28[1] = "peakerphone for this call";
    v28[0] = swift_allocBox();
    v15 = v14;
    v16 = sub_269A8259C();
    v17 = swift_allocBox();
    v19 = v18;
    v20 = sub_269A8258C();
    v21 = swift_allocBox();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D72CD8], v20);
    *v19 = v21;
    (*(*(v16 - 8) + 104))(v19, *MEMORY[0x277D72D50], v16);
    *v15 = v17;
    v23 = *(v3 + 104);
    v23(v15, *MEMORY[0x277D72AD0], v2);
    *v6 = v28[0];
    v23(v6, *MEMORY[0x277D72AB0], v2);
  }

  return sub_269A824BC();
}

uint64_t sub_269A7DBF8()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition();
  v0 = *(Reminder - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_269A824CC();
  v43 = *(v41 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20]();
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_269A8257C();
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v44 = (v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_269A824FC();
  __swift_allocate_value_buffer(v10, qword_28131EEF8);
  v11 = __swift_project_value_buffer(v10, qword_28131EEF8);
  if (qword_28131ED20 != -1)
  {
    swift_once();
  }

  v12 = qword_28131EF10;
  v13 = *(qword_28131EF10 + 16);
  if (v13)
  {
    v36[1] = v11;
    v46 = MEMORY[0x277D84F90];

    sub_269A80260(0, v13, 0);
    v14 = v46;
    v15 = (*(v0 + 80) + 32) & ~*(v0 + 80);
    v36[0] = v12;
    v16 = v12 + v15;
    v17 = *(v0 + 72);
    v39 = (v7 + 16);
    v40 = v17;
    v37 = v7;
    v38 = v43 + 32;
    v18 = v44;
    do
    {
      sub_269A7F0CC(v16, v3);
      v19 = *v3;
      v20 = *(v3 + 1);
      v21 = v6;
      v23 = *(v3 + 2);
      v22 = *(v3 + 3);
      (*v39)(v18, &v3[*(Reminder + 24)], v45);

      sub_269A824BC();
      sub_269A7F130(v3);
      v46 = v14;
      v25 = *(v14 + 16);
      v24 = *(v14 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_269A80260(v24 > 1, v25 + 1, 1);
        v14 = v46;
      }

      *(v14 + 16) = v25 + 1;
      (*(v43 + 32))(v14 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v25, v21, v41);
      v16 += v40;
      --v13;
      v6 = v21;
    }

    while (v13);

    v7 = v37;
  }

  v26 = sub_269A8259C();
  v27 = swift_allocBox();
  v29 = v28;
  v30 = sub_269A8258C();
  v31 = swift_allocBox();
  (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D72CC8], v30);
  *v29 = v31;
  (*(*(v26 - 8) + 104))(v29, *MEMORY[0x277D72D50], v26);
  v34 = v44;
  v33 = v45;
  *v44 = v27;
  (*(v7 + 104))(v34, *MEMORY[0x277D72AD0], v33);
  return sub_269A824EC();
}

uint64_t sub_269A7E09C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CD0, &qword_269A82AD8);
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition();
  v1 = *(*(Reminder - 8) + 72);
  v2 = (*(*(Reminder - 8) + 80) + 32) & ~*(*(Reminder - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_269A82A90;
  v4 = v3 + v2;
  if (qword_28131EDD0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(Reminder, qword_28131EF48);
  sub_269A7F0CC(v5, v4);
  if (qword_28131EDC0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(Reminder, qword_28131EF18);
  sub_269A7F0CC(v6, v4 + v1);
  if (qword_28131EDF0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(Reminder, qword_28131EFA8);
  sub_269A7F0CC(v7, v4 + 2 * v1);
  if (qword_28131EDF8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(Reminder, qword_28131EFC0);
  sub_269A7F0CC(v8, v4 + 3 * v1);
  if (qword_28131EDD8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(Reminder, qword_28131EF60);
  sub_269A7F0CC(v9, v4 + 4 * v1);
  if (qword_28131EDC8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(Reminder, qword_28131EF30);
  sub_269A7F0CC(v10, v4 + 5 * v1);
  if (qword_28131EDE8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(Reminder, qword_28131EF90);
  sub_269A7F0CC(v11, v4 + 6 * v1);
  if (qword_28131EDE0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(Reminder, qword_28131EF78);
  result = sub_269A7F0CC(v12, v4 - v1 + 8 * v1);
  qword_28131EF10 = v3;
  return result;
}

uint64_t sub_269A7E3C8()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition();
  __swift_allocate_value_buffer(Reminder, qword_28131EF48);
  v1 = __swift_project_value_buffer(Reminder, qword_28131EF48);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CE0], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Reminder + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 0x656C746974;
  *(v1 + 1) = 0xE500000000000000;
  *(v1 + 2) = 0xD00000000000004ELL;
  *(v1 + 3) = 0x8000000269A838A0;
  return result;
}

uint64_t sub_269A7E550()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition();
  __swift_allocate_value_buffer(Reminder, qword_28131EF18);
  v1 = __swift_project_value_buffer(Reminder, qword_28131EF18);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CE0], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Reminder + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 0x6C7469547473696CLL;
  *(v1 + 1) = 0xE900000000000065;
  *(v1 + 2) = 0xD000000000000074;
  *(v1 + 3) = 0x8000000269A83820;
  return result;
}

uint64_t sub_269A7E6E0()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition();
  __swift_allocate_value_buffer(Reminder, qword_28131EFA8);
  v1 = __swift_project_value_buffer(Reminder, qword_28131EFA8);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CE0], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Reminder + 24);
  *(v1 + v9) = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(v1 + v9, v10, v11);
  strcpy(v1, "listIdentifier");
  *(v1 + 15) = -18;
  *(v1 + 16) = 0xD000000000000021;
  *(v1 + 24) = 0x8000000269A837F0;
  return result;
}

uint64_t sub_269A7E878()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition();
  __swift_allocate_value_buffer(Reminder, qword_28131EFC0);
  v1 = __swift_project_value_buffer(Reminder, qword_28131EFC0);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CB0], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Reminder + 24);
  *(v1 + v9) = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(v1 + v9, v10, v11);
  strcpy(v1, "listIsGrocery");
  *(v1 + 14) = -4864;
  *(v1 + 16) = 0xD000000000000092;
  *(v1 + 24) = 0x8000000269A83750;
  return result;
}

uint64_t sub_269A7EA10()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition();
  __swift_allocate_value_buffer(Reminder, qword_28131EF60);
  v1 = __swift_project_value_buffer(Reminder, qword_28131EF60);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CB8], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Reminder + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 1701669236;
  *(v1 + 1) = 0xE400000000000000;
  *(v1 + 2) = 0xD000000000000035;
  *(v1 + 3) = 0x8000000269A83710;
  return result;
}

uint64_t sub_269A7EB94()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition();
  __swift_allocate_value_buffer(Reminder, qword_28131EF30);
  v1 = __swift_project_value_buffer(Reminder, qword_28131EF30);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72D00], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Reminder + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 0x6E6F697461636F6CLL;
  *(v1 + 1) = 0xE800000000000000;
  *(v1 + 2) = 0xD000000000000037;
  *(v1 + 3) = 0x8000000269A836D0;
  return result;
}

uint64_t sub_269A7ED20()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition();
  __swift_allocate_value_buffer(Reminder, qword_28131EF90);
  v1 = __swift_project_value_buffer(Reminder, qword_28131EF90);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CB0], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Reminder + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 0xD00000000000001ALL;
  *(v1 + 1) = 0x8000000269A83630;
  *(v1 + 2) = 0xD000000000000071;
  *(v1 + 3) = 0x8000000269A83650;
  return result;
}

uint64_t sub_269A7EEB4()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition();
  __swift_allocate_value_buffer(Reminder, qword_28131EF78);
  v1 = __swift_project_value_buffer(Reminder, qword_28131EF78);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72C98], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Reminder + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 7368801;
  *(v1 + 1) = 0xE300000000000000;
  *(v1 + 2) = 0xD000000000000059;
  *(v1 + 3) = 0x8000000269A835D0;
  return result;
}

uint64_t type metadata accessor for CreateReminderShim.Parameters.Definition()
{
  result = qword_28131EDB0;
  if (!qword_28131EDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269A7F0CC(uint64_t a1, uint64_t a2)
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition();
  (*(*(Reminder - 8) + 16))(a2, a1, Reminder);
  return a2;
}

uint64_t sub_269A7F130(uint64_t a1)
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition();
  (*(*(Reminder - 8) + 8))(a1, Reminder);
  return a1;
}

uint64_t sub_269A7F1EC()
{
  result = sub_269A8257C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269A7F278()
{
  v0 = sub_269A824CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269A8257C();
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_269A824FC();
  __swift_allocate_value_buffer(v9, qword_28131F008);
  v22 = __swift_project_value_buffer(v9, qword_28131F008);
  v25 = MEMORY[0x277D84F90];
  sub_269A80260(0, 4, 0);
  v10 = 0;
  v11 = v25;
  do
  {
    sub_269A7F5C0(byte_287A6FBA8[v10 + 32], v4);
    v25 = v11;
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_269A80260(v12 > 1, v13 + 1, 1);
      v11 = v25;
    }

    ++v10;
    *(v11 + 16) = v13 + 1;
    (*(v1 + 32))(v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13, v4, v0);
  }

  while (v10 != 4);
  v14 = sub_269A8259C();
  v15 = swift_allocBox();
  v17 = v16;
  v18 = sub_269A8258C();
  v19 = swift_allocBox();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D72CC8], v18);
  *v17 = v19;
  (*(*(v14 - 8) + 104))(v17, *MEMORY[0x277D72D50], v14);
  *v8 = v15;
  (*(v23 + 104))(v8, *MEMORY[0x277D72AD0], v24);
  return sub_269A824EC();
}

uint64_t sub_269A7F5C0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v52[1] = a2;
  v3 = sub_269A8257C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269A8259C();
  v7 = swift_allocBox();
  v9 = v8;
  v10 = sub_269A8258C();
  v11 = swift_allocBox();
  v13 = *(*(v10 - 8) + 104);
  v14 = v11;
  switch(a1)
  {
    case 1:
      v13(v12, *MEMORY[0x277D72CB8], v10);
      v42 = MEMORY[0x277D72D50];
      *v9 = v14;
      v43 = *v42;
      OUTLINED_FUNCTION_2_0();
      v45 = *(v44 + 104);
      v46 = OUTLINED_FUNCTION_1_0();
      v47(v46);
      *v6 = v7;
      v48 = *MEMORY[0x277D72AD0];
      v49 = OUTLINED_FUNCTION_0_0();
      v50(v49);
      break;
    case 2:
      v13(v12, *MEMORY[0x277D72C70], v10);
      v24 = MEMORY[0x277D72D50];
      *v9 = v14;
      v25 = *v24;
      OUTLINED_FUNCTION_2_0();
      v27 = *(v26 + 104);
      v28 = OUTLINED_FUNCTION_1_0();
      v29(v28);
      *v6 = v7;
      v30 = *MEMORY[0x277D72AD0];
      v31 = OUTLINED_FUNCTION_0_0();
      v32(v31);
      break;
    case 3:
      v13(v12, *MEMORY[0x277D72CB0], v10);
      v33 = MEMORY[0x277D72D50];
      *v9 = v14;
      v34 = *v33;
      OUTLINED_FUNCTION_2_0();
      v36 = *(v35 + 104);
      v37 = OUTLINED_FUNCTION_1_0();
      v38(v37);
      *v6 = v7;
      v39 = *MEMORY[0x277D72AD0];
      v40 = OUTLINED_FUNCTION_0_0();
      v41(v40);
      break;
    default:
      v13(v12, *MEMORY[0x277D72CE0], v10);
      v15 = MEMORY[0x277D72D50];
      *v9 = v14;
      v16 = *v15;
      OUTLINED_FUNCTION_2_0();
      v18 = *(v17 + 104);
      v19 = OUTLINED_FUNCTION_1_0();
      v20(v19);
      *v6 = v7;
      v21 = *MEMORY[0x277D72AD0];
      v22 = OUTLINED_FUNCTION_0_0();
      v23(v22);
      break;
  }

  return sub_269A824BC();
}

uint64_t sub_269A7F97C(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
      result = 1701669236;
      break;
    case 2:
      result = 0x746165706572;
      break;
    case 3:
      result = 0x657A6F6F6E73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_269A7FA60()
{
  sub_269A806C8();
  result = sub_269A825EC();
  qword_280345D48 = result;
  return result;
}

uint64_t sub_269A7FACC()
{
  v0 = sub_269A8255C();
  __swift_allocate_value_buffer(v0, qword_280345D50);
  __swift_project_value_buffer(v0, qword_280345D50);
  if (qword_280345C90 != -1)
  {
    swift_once();
  }

  v1 = qword_280345D48;
  return sub_269A8256C();
}

double sub_269A7FB58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345D38, &qword_269A82CB8);
  v0 = swift_allocObject();
  *&result = 7;
  *(v0 + 16) = xmmword_269A82B30;
  *(v0 + 32) = &type metadata for CreateNoteShim;
  *(v0 + 40) = &off_287A6FEE0;
  *(v0 + 48) = &type metadata for CreateReminderShim;
  *(v0 + 56) = &off_287A6FCC8;
  *(v0 + 64) = &type metadata for SendMessageShim;
  *(v0 + 72) = &off_287A6FC38;
  *(v0 + 80) = &type metadata for PlayMediaShim;
  *(v0 + 88) = &off_287A6FE98;
  *(v0 + 96) = &type metadata for StartCallShim;
  *(v0 + 104) = &off_287A6FC80;
  *(v0 + 112) = &type metadata for CreateAlarmShim;
  *(v0 + 120) = &off_287A6FD30;
  *(v0 + 128) = &type metadata for NavigateToShim;
  *(v0 + 136) = &off_287A6FBF0;
  qword_28131F0E8 = v0;
  return result;
}

uint64_t sub_269A7FC3C()
{
  if (qword_28131EEF0 != -1)
  {
    swift_once();
  }

  v0 = qword_28131F0E8;
  v1 = *(qword_28131F0E8 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];

    sub_269A8070C(0, v1, 0);
    v3 = 32;
    v2 = v12;
    do
    {
      v11 = *(v0 + v3);
      v4 = (*(*(v0 + v3 + 8) + 8))();
      v6 = v5;
      v8 = *(v12 + 16);
      v7 = *(v12 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_269A8070C((v7 > 1), v8 + 1, 1);
      }

      *(v12 + 16) = v8 + 1;
      v9 = v12 + 32 * v8;
      *(v9 + 32) = v4;
      *(v9 + 40) = v6;
      *(v9 + 48) = v11;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  result = sub_269A7FD90(v2);
  qword_280345CD8 = result;
  return result;
}

uint64_t sub_269A7FD90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345D08, &qword_269A82C88);
    v1 = sub_269A8264C();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_269A8085C(v2, 1, &v4);

  return v4;
}

uint64_t static ShimRegistry.nameToShim.getter()
{
  if (qword_280345CA0 != -1)
  {
    swift_once();
  }
}

uint64_t static SXSTShimRegistry.actionDefinitionsData()()
{
  v0 = sub_269A8249C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_269A8248C();
  static ShimRegistry.actionDefinitions.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CE0, &qword_269A82B60);
  sub_269A802A8();
  v3 = sub_269A8247C();
  v5 = v4;

  v6 = sub_269A824AC();
  sub_269A80434(v3, v5);
  return v6;
}

id SXSTShimRegistry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SXSTShimRegistry.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SXSTShimRegistry();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SXSTShimRegistry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SXSTShimRegistry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269A80198(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_0_1();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_0_1();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

size_t sub_269A80260(size_t a1, int64_t a2, char a3)
{
  result = sub_269A7B548(a1, a2, a3, *v3, &qword_280345CB0, &unk_269A82CC0, MEMORY[0x277D1C370], MEMORY[0x277D1C370]);
  *v3 = result;
  return result;
}

unint64_t sub_269A802A8()
{
  result = qword_280345CE8;
  if (!qword_280345CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280345CE0, &qword_269A82B60);
    sub_269A80374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280345CE8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_269A80374()
{
  result = qword_280345CF0;
  if (!qword_280345CF0)
  {
    sub_269A824FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280345CF0);
  }

  return result;
}

uint64_t sub_269A803CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CF8, &qword_269A82B68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269A80434(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t getEnumTagSinglePayload for ShimRegistry(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ShimRegistry(_BYTE *result, int a2, int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_269A805D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269A80618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_269A806C8()
{
  result = qword_280345D00;
  if (!qword_280345D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280345D00);
  }

  return result;
}

void *sub_269A8070C(void *a1, int64_t a2, char a3)
{
  result = sub_269A8072C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_269A8072C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345D20, &qword_269A82CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345D28, &qword_269A82CA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_269A8085C(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 2)
  {
    if (v26 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_269A8266C();
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v28 = *i;
    v9 = *a3;

    v11 = sub_269A80B34(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345D10, &qword_269A82C90);
      sub_269A8261C();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    *(v19[7] + 16 * v11) = v28;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v5;
    a2 = 1;
  }

  sub_269A80BAC(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_269A80B34(v8, v7);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  MEMORY[0x26D64A440](v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345D18, &qword_269A82C98);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return MEMORY[0x26D64A430](v24);
  }

LABEL_22:
  sub_269A825FC();
  MEMORY[0x26D64A1C0](0xD00000000000001BLL, 0x8000000269A83A50);
  sub_269A8260C();
  MEMORY[0x26D64A1C0](39, 0xE100000000000000);
  result = sub_269A8262C();
  __break(1u);
  return result;
}

unint64_t sub_269A80B34(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_269A826BC();
  sub_269A825BC();
  v6 = sub_269A826CC();

  return sub_269A80E4C(a1, a2, v6);
}

uint64_t sub_269A80BAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345D08, &qword_269A82C88);
  v35 = a2;
  result = sub_269A8263C();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v34 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      sub_269A80F00(0, (v33 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v36 = *(*(v5 + 56) + 16 * v19);
    if ((v35 & 1) == 0)
    {
    }

    v23 = *(v8 + 40);
    sub_269A826BC();
    sub_269A825BC();
    result = sub_269A826CC();
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v8 + 48) + 16 * v27);
    *v32 = v21;
    v32[1] = v22;
    *(*(v8 + 56) + 16 * v27) = v36;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v15 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

unint64_t sub_269A80E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_269A8265C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_269A80F00(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_269A82B40;
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

uint64_t sub_269A80F88()
{
  v0 = sub_269A8257C();
  v1 = *(v0 - 8);
  v75 = v0;
  v76 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v61 = (&v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CA8, &qword_269A82A00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v57 - v6;
  v8 = sub_269A824FC();
  __swift_allocate_value_buffer(v8, qword_28131F0D0);
  v9 = __swift_project_value_buffer(v8, qword_28131F0D0);
  v70 = "udio.AudioFlowDelegatePlugin";
  v71 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CB0, &unk_269A82CC0);
  v10 = *(sub_269A824CC() - 8);
  v68 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v69 = v12;
  *(v12 + 16) = xmmword_269A829B0;
  v67 = v12 + v11;
  v66 = "Plays the provided media item";
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CB8, &qword_269A82A08);
  v62 = swift_allocBox();
  v15 = v14;
  v60 = *(v13 + 48);
  v16 = sub_269A8258C();
  v63 = v16;
  v17 = swift_allocBox();
  v19 = v18;
  v20 = *MEMORY[0x277D72CC0];
  v21 = *(v16 - 8);
  v64 = *(v21 + 104);
  v65 = v21 + 104;
  v64(v19, v20, v16);
  v58 = v15;
  *v15 = v17;
  v73 = *MEMORY[0x277D72D50];
  v22 = v73;
  v59 = sub_269A8259C();
  v23 = *(v59 - 8);
  v72 = *(v23 + 104);
  v74 = v23 + 104;
  v72(v15, v22, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CC0, &qword_269A82A10);
  v24 = sub_269A825AC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  v57 = xmmword_269A829C0;
  *(v28 + 16) = xmmword_269A829C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CC8, &qword_269A82A18);
  v29 = sub_269A8253C();
  v30 = *(*(v29 - 8) + 72);
  v31 = (*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v57;
  sub_269A8251C();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v29);
  sub_269A8250C();
  *(v28 + v27) = v32;
  (*(v25 + 104))(v28 + v27, *MEMORY[0x277D72E68], v24);
  *(v58 + v60) = v28;
  v33 = v61;
  *v61 = v62;
  v34 = *MEMORY[0x277D72AB8];
  v35 = v75;
  v62 = *(v76 + 104);
  v76 += 104;
  v62(v33, v34, v75);
  sub_269A824BC();
  v66 = "results from Search Tool";
  v36 = v59;
  v37 = swift_allocBox();
  v39 = v38;
  v40 = v63;
  v41 = swift_allocBox();
  v42 = v64;
  v64(v43, *MEMORY[0x277D72C98], v40);
  *v39 = v41;
  v44 = v39;
  v45 = v36;
  v72(v44, v73, v36);
  *v33 = v37;
  v46 = *MEMORY[0x277D72AD0];
  v47 = v33;
  v48 = v35;
  v49 = v62;
  v62(v33, v46, v48);
  sub_269A824BC();
  v50 = v45;
  v51 = swift_allocBox();
  v53 = v52;
  v54 = swift_allocBox();
  v42(v55, *MEMORY[0x277D72CC8], v40);
  *v53 = v54;
  v72(v53, v73, v50);
  *v47 = v51;
  v49(v47, v46, v75);
  return sub_269A824DC();
}

uint64_t sub_269A8166C()
{
  Note = type metadata accessor for CreateNoteShim.ParameterDefinition();
  v0 = *(Note - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_269A824CC();
  v43 = *(v41 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20]();
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_269A8257C();
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v44 = (v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_269A824FC();
  __swift_allocate_value_buffer(v10, qword_28131F0A0);
  v11 = __swift_project_value_buffer(v10, qword_28131F0A0);
  if (qword_28131EED0 != -1)
  {
    swift_once();
  }

  v12 = qword_28131F098;
  v13 = *(qword_28131F098 + 16);
  if (v13)
  {
    v36[1] = v11;
    v46 = MEMORY[0x277D84F90];

    sub_269A80260(0, v13, 0);
    v14 = v46;
    v15 = (*(v0 + 80) + 32) & ~*(v0 + 80);
    v36[0] = v12;
    v16 = v12 + v15;
    v17 = *(v0 + 72);
    v39 = (v7 + 16);
    v40 = v17;
    v37 = v7;
    v38 = v43 + 32;
    v18 = v44;
    do
    {
      sub_269A82394(v16, v3);
      v19 = *v3;
      v20 = *(v3 + 1);
      v21 = v6;
      v23 = *(v3 + 2);
      v22 = *(v3 + 3);
      (*v39)(v18, &v3[*(Note + 24)], v45);

      sub_269A824BC();
      sub_269A823F8(v3);
      v46 = v14;
      v25 = *(v14 + 16);
      v24 = *(v14 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_269A80260(v24 > 1, v25 + 1, 1);
        v14 = v46;
      }

      *(v14 + 16) = v25 + 1;
      (*(v43 + 32))(v14 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v25, v21, v41);
      v16 += v40;
      --v13;
      v6 = v21;
    }

    while (v13);

    v7 = v37;
  }

  v26 = sub_269A8259C();
  v27 = swift_allocBox();
  v29 = v28;
  v30 = sub_269A8258C();
  v31 = swift_allocBox();
  (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D72CC8], v30);
  *v29 = v31;
  (*(*(v26 - 8) + 104))(v29, *MEMORY[0x277D72D50], v26);
  v34 = v44;
  v33 = v45;
  *v44 = v27;
  (*(v7 + 104))(v34, *MEMORY[0x277D72AD0], v33);
  return sub_269A824EC();
}

uint64_t sub_269A81B0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345D40, &unk_269A82D40);
  Note = type metadata accessor for CreateNoteShim.ParameterDefinition();
  v1 = *(*(Note - 8) + 72);
  v2 = (*(*(Note - 8) + 80) + 32) & ~*(*(Note - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_269A82D00;
  v4 = v3 + v2;
  if (qword_28131EEC0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(Note, qword_28131F068);
  sub_269A82394(v5, v4);
  if (qword_28131EEB0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(Note, qword_28131F038);
  sub_269A82394(v6, v4 + v1);
  if (qword_28131EEB8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(Note, qword_28131F050);
  sub_269A82394(v7, v4 + 2 * v1);
  if (qword_28131EEC8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(Note, qword_28131F080);
  result = sub_269A82394(v8, v4 + 3 * v1);
  qword_28131F098 = v3;
  return result;
}

uint64_t sub_269A81D00()
{
  Note = type metadata accessor for CreateNoteShim.ParameterDefinition();
  __swift_allocate_value_buffer(Note, qword_28131F068);
  v1 = __swift_project_value_buffer(Note, qword_28131F068);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CE0], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Note + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 0x656C746974;
  *(v1 + 1) = 0xE500000000000000;
  *(v1 + 2) = 0xD00000000000001FLL;
  *(v1 + 3) = 0x8000000269A83C40;
  return result;
}

uint64_t sub_269A81E88()
{
  Note = type metadata accessor for CreateNoteShim.ParameterDefinition();
  __swift_allocate_value_buffer(Note, qword_28131F038);
  v1 = __swift_project_value_buffer(Note, qword_28131F038);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CE0], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Note + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 0x746E65746E6F63;
  *(v1 + 1) = 0xE700000000000000;
  *(v1 + 2) = 0xD000000000000021;
  *(v1 + 3) = 0x8000000269A83C10;
  return result;
}

uint64_t sub_269A82014()
{
  Note = type metadata accessor for CreateNoteShim.ParameterDefinition();
  __swift_allocate_value_buffer(Note, qword_28131F050);
  v1 = __swift_project_value_buffer(Note, qword_28131F050);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CE0], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Note + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 0x7265646C6F66;
  *(v1 + 1) = 0xE600000000000000;
  *(v1 + 2) = 0xD000000000000020;
  *(v1 + 3) = 0x8000000269A83BE0;
  return result;
}

uint64_t sub_269A8219C()
{
  Note = type metadata accessor for CreateNoteShim.ParameterDefinition();
  __swift_allocate_value_buffer(Note, qword_28131F080);
  v1 = __swift_project_value_buffer(Note, qword_28131F080);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72C98], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Note + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 7368801;
  *(v1 + 1) = 0xE300000000000000;
  *(v1 + 2) = 0xD000000000000051;
  *(v1 + 3) = 0x8000000269A83B80;
  return result;
}

uint64_t type metadata accessor for CreateNoteShim.ParameterDefinition()
{
  result = qword_28131EEA0;
  if (!qword_28131EEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269A82394(uint64_t a1, uint64_t a2)
{
  Note = type metadata accessor for CreateNoteShim.ParameterDefinition();
  (*(*(Note - 8) + 16))(a2, a1, Note);
  return a2;
}

uint64_t sub_269A823F8(uint64_t a1)
{
  Note = type metadata accessor for CreateNoteShim.ParameterDefinition();
  (*(*(Note - 8) + 8))(a1, Note);
  return a1;
}