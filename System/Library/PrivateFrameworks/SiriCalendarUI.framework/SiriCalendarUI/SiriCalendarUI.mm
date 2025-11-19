void type metadata accessor for VRXIdiom()
{
  if (!qword_280095998)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280095998);
    }
  }
}

uint64_t sub_2666B1ABC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_2666D805C();
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959A0, &qword_2666D9538);
  v15 = OUTLINED_FUNCTION_2(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959A8, &qword_2666D9540);
  v21 = OUTLINED_FUNCTION_3(v20);
  v35 = v22;
  v36 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v34 - v25;
  *v19 = sub_2666D863C();
  *(v19 + 1) = 0x4020000000000000;
  v19[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959B0, &qword_2666D9548);
  sub_2666B1D98(v2, &v19[*(v27 + 44)]);
  OUTLINED_FUNCTION_0();
  v29 = sub_2666B2B90(v28, &qword_2800959A0, &qword_2666D9538);
  sub_2666D884C();
  sub_2666B2A70(v19, &qword_2800959A0, &qword_2666D9538);
  v30 = *(v6 + 104);
  v30(v13, *MEMORY[0x277D62F20], v3);
  v30(v11, *MEMORY[0x277D62F38], v3);
  v38 = v14;
  v39 = v29;
  OUTLINED_FUNCTION_1();
  swift_getOpaqueTypeConformance2();
  v31 = v36;
  sub_2666D881C();
  v32 = *(v6 + 8);
  v32(v11, v3);
  v32(v13, v3);
  return (*(v35 + 8))(v26, v31);
}

uint64_t sub_2666B1D98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959C0, &qword_2666D9550);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959C8, &qword_2666D9558);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  *v16 = sub_2666D858C();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959D0, &qword_2666D9560);
  sub_2666B20A0(a1, &v16[*(v17 + 44)]);
  *v9 = sub_2666D863C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959D8, &qword_2666D9568) + 44);
  v22[1] = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959E0, &qword_2666D9570);
  sub_2666D7F5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959E8, &qword_2666D9578);
  sub_2666B2B90(&qword_2800959F0, &qword_2800959E0, &qword_2666D9570);
  sub_2666B2800();
  sub_2666B28E8(&qword_280095A18, MEMORY[0x277D558F0]);
  sub_2666D8A4C();
  sub_2666B2930(v16, v14);
  sub_2666B2998(v9, v7);
  v19 = v22[0];
  sub_2666B2930(v14, v22[0]);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A20, &qword_2666D9588);
  sub_2666B2998(v7, v19 + *(v20 + 48));
  sub_2666B2A08(v9);
  sub_2666B2A70(v16, &qword_2800959C8, &qword_2666D9558);
  sub_2666B2A08(v7);
  return sub_2666B2A70(v14, &qword_2800959C8, &qword_2666D9558);
}

uint64_t sub_2666B20A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = *(*(sub_2666D7FFC() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A28, &unk_2666D95C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A30, &qword_2666D9960);
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - v9;
  sub_2666D85EC();
  if (qword_280095990 != -1)
  {
    swift_once();
  }

  v11 = qword_2800978F0;
  v12 = sub_2666D87DC();
  v14 = v13;
  v48 = v12;
  v49 = v13;
  v16 = v15 & 1;
  v50 = v15 & 1;
  v51 = v17;
  sub_2666D88FC();
  sub_2666B2B2C(v12, v14, v16);

  v48 = *(*a1 + 16);
  sub_2666D7F7C();
  sub_2666B2B3C();
  sub_2666D7DFC();
  sub_2666B2B90(&qword_280095A40, &qword_280095A28, &unk_2666D95C0);
  v18 = sub_2666D87CC();
  v20 = v19;
  v22 = v21;
  LODWORD(v48) = sub_2666D86AC();
  v23 = sub_2666D878C();
  v25 = v24;
  v26 = v10;
  v43 = v10;
  v28 = v27;
  v30 = v29;
  sub_2666B2B2C(v18, v20, v22 & 1);

  v31 = v44;
  v32 = *(v44 + 16);
  v33 = v46;
  v34 = v26;
  v35 = v45;
  v32(v46, v34, v45);
  v36 = v47;
  v32(v47, v33, v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A48, &qword_2666D95D0);
  v38 = &v36[*(v37 + 48)];
  *v38 = 0;
  v38[8] = 1;
  v39 = &v36[*(v37 + 64)];
  *v39 = v23;
  *(v39 + 1) = v25;
  v39[16] = v28 & 1;
  *(v39 + 3) = v30;
  sub_2666B2BD8(v23, v25, v28 & 1);
  v40 = *(v31 + 8);

  v40(v43, v35);
  sub_2666B2B2C(v23, v25, v28 & 1);

  return (v40)(v33, v35);
}

uint64_t sub_2666B24E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2666B2AC8(a1, a2);
  v3 = type metadata accessor for ParticipantLabelView();
  *(a2 + *(v3 + 20)) = 0;
  *(a2 + *(v3 + 24)) = 0;
  v4 = sub_2666D876C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959E8, &qword_2666D9578);
  v7 = (a2 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  return result;
}

void sub_2666B25DC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_2666B2610();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_2666B2618@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2666B2648@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2666D84CC();
  *a1 = result;
  return result;
}

uint64_t sub_2666B2674(uint64_t *a1)
{
  v1 = *a1;

  return sub_2666D84DC();
}

uint64_t sub_2666B26B4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2666B26F4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2666B2800()
{
  result = qword_2800959F8;
  if (!qword_2800959F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800959E8, &qword_2666D9578);
    sub_2666B28E8(&qword_280095A00, type metadata accessor for ParticipantLabelView);
    sub_2666B2B90(&qword_280095A08, &qword_280095A10, &qword_2666D9580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800959F8);
  }

  return result;
}

uint64_t sub_2666B28E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2666B2930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959C8, &qword_2666D9558);
  OUTLINED_FUNCTION_2(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2666B2998(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959C0, &qword_2666D9550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666B2A08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959C0, &qword_2666D9550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666B2A70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2666B2AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2666D81DC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666B2B2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2666B2B3C()
{
  result = qword_280095A38;
  if (!qword_280095A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095A38);
  }

  return result;
}

uint64_t sub_2666B2B90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2666B2BD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2666B2BE8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800959A8, &qword_2666D9540);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800959A0, &qword_2666D9538);
  OUTLINED_FUNCTION_0();
  sub_2666B2B90(v0, &qword_2800959A0, &qword_2666D9538);
  OUTLINED_FUNCTION_1();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2666B2D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2666D825C();
  v7 = OUTLINED_FUNCTION_2_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_2666D815C();
  v12 = OUTLINED_FUNCTION_2_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2666B2E30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2666D825C();
  v9 = OUTLINED_FUNCTION_2_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_2666D815C();
    result = OUTLINED_FUNCTION_2_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t type metadata accessor for RenderableEvent()
{
  result = qword_280095A50;
  if (!qword_280095A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666B2F90()
{
  result = sub_2666D825C();
  if (v1 <= 0x3F)
  {
    result = sub_2666D815C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2666B3028()
{
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else
  {
    v3 = (v0 + *(type metadata accessor for RenderableEvent() + 24));
    v1 = *v3;
    v4 = v3[1];
  }

  return v1;
}

uint64_t sub_2666B3080@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2666B3028();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2666B30A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v77 = a1;
  v4 = sub_2666D82AC();
  v5 = OUTLINED_FUNCTION_3(v4);
  v81 = v6;
  v82 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v79 = v9;
  MEMORY[0x28223BE20](v10);
  v72 = &v69 - v11;
  v75 = sub_2666D809C();
  v12 = OUTLINED_FUNCTION_3(v75);
  v70 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v69 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A60, &qword_2666D9628);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v69 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A68, &unk_2666DAB40);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v69 - v23;
  v76 = sub_2666D815C();
  v25 = OUTLINED_FUNCTION_3(v76);
  v74 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v71 = v29;
  MEMORY[0x28223BE20](v30);
  v78 = &v69 - v31;
  v32 = sub_2666D7F5C();
  v33 = OUTLINED_FUNCTION_3(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  v39 = &v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for RenderableEvent();
  v40 = (a3 + *(v73 + 24));
  sub_2666D7F4C();
  v41 = sub_2666D7F3C();
  v43 = v42;
  (*(v35 + 8))(v39, v32);
  *v40 = v41;
  v40[1] = v43;
  v44 = v77;
  v45 = v75;
  v80 = a3;
  sub_2666B3738(v77, a3);
  v46 = sub_2666D825C();
  sub_2666B379C(v44 + *(v46 + 56), v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v45) == 1)
  {
    v47 = v76;
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v76);
  }

  else
  {
    v48 = v70;
    v49 = v69;
    (*(v70 + 32))(v69, v20, v45);
    v85[3] = v45;
    v85[4] = sub_2666B38D0();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v85);
    (*(v48 + 16))(boxed_opaque_existential_1, v49, v45);
    sub_2666B3988(v85, v84);
    sub_2666D812C();
    __swift_destroy_boxed_opaque_existential_1(v85);
    (*(v48 + 8))(v49, v45);
    v47 = v76;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v47);
  v52 = v81;
  if (EnumTagSinglePayload == 1)
  {
    sub_2666B380C(v24);
    v53 = sub_2666D828C();
    v54 = v72;
    v55 = v82;
    (*(v52 + 16))(v72, v53, v82);
    v56 = sub_2666D829C();
    v57 = sub_2666D8DAC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2666B0000, v56, v57, "[RenderableEvent] Using event store to make event cell model", v58, 2u);
      MEMORY[0x26678ACD0](v58, -1, -1);
    }

    (*(v52 + 8))(v54, v55);
    v59 = v71;
    v60 = v83;
    v61 = v85[7];
    sub_2666D210C(v83, v71);
    sub_2666B3874(v44);

    if (v61)
    {
      sub_2666B3874(v80);
    }

    else
    {
      return (*(v74 + 32))(v80 + *(v73 + 20), v59, v47);
    }
  }

  else
  {
    v63 = *(v74 + 32);
    v63(v78, v24, v47);
    v64 = sub_2666D828C();
    v65 = v82;
    (*(v52 + 16))(v79, v64, v82);
    v66 = sub_2666D829C();
    v67 = sub_2666D8DAC();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_2666B0000, v66, v67, "[RenderableEvent] Using event cell model to render event", v68, 2u);
      MEMORY[0x26678ACD0](v68, -1, -1);
    }

    sub_2666B3874(v44);
    (*(v52 + 8))(v79, v65);
    return (v63)(v80 + *(v73 + 20), v78, v47);
  }
}

uint64_t sub_2666B3738(uint64_t a1, uint64_t a2)
{
  v4 = sub_2666D825C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666B379C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A60, &qword_2666D9628);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666B380C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A68, &unk_2666DAB40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666B3874(uint64_t a1)
{
  v2 = sub_2666D825C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2666B38D0()
{
  result = qword_280095A70;
  if (!qword_280095A70)
  {
    sub_2666D809C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095A70);
  }

  return result;
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

uint64_t sub_2666B3988(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
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

uint64_t sub_2666B3A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RenderableEvent();
  v7 = OUTLINED_FUNCTION_2_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  v12 = OUTLINED_FUNCTION_2_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 28) + 48);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2666B3B7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RenderableEvent();
  v9 = OUTLINED_FUNCTION_2_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
    result = OUTLINED_FUNCTION_2_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 48) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t type metadata accessor for EventCellView()
{
  result = qword_280095A80;
  if (!qword_280095A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666B3CC0()
{
  type metadata accessor for RenderableEvent();
  if (v0 <= 0x3F)
  {
    sub_2666B3E2C(319, &qword_280095A90, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2666B3DDC();
      if (v2 <= 0x3F)
      {
        sub_2666B3E2C(319, &qword_280095AA0, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2666B3DDC()
{
  if (!qword_280095A98)
  {
    v0 = type metadata accessor for IdiomConstant();
    if (!v1)
    {
      atomic_store(v0, &qword_280095A98);
    }
  }
}

void sub_2666B3E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2666B3EAC()
{
  v1 = sub_2666D857C();
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_1();
  v9 = v8 - v7;
  v10 = v0 + *(type metadata accessor for EventCellView() + 32);
  v11 = *v10;
  if ((*(v10 + 8) & 1) == 0)
  {

    sub_2666D8D9C();
    v12 = sub_2666D86DC();
    sub_2666D827C();

    sub_2666D856C();
    swift_getAtKeyPath();
    sub_2666B4670(v11, 0);
    (*(v4 + 8))(v9, v1);
    return v14;
  }

  return v11;
}

uint64_t sub_2666B3FEC()
{
  sub_2666B3EAC();
  sub_2666D8DDC();
  sub_2666D874C();
  sub_2666D875C();

  sub_2666D873C();
  v1 = *(v0 + *(type metadata accessor for EventCellView() + 24));
  v2 = sub_2666D80EC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_2666D80DC();
}

uint64_t sub_2666B40D8@<X0>(_BYTE *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_4();
  v6 = sub_2666D7F2C();
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  v14 = v13 - v12;
  v15 = type metadata accessor for EventCellView();
  sub_2666B467C(v1 + *(v15 + 20), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_2666B2A70(v2, &qword_280095A78, &unk_2666DAB30);
LABEL_6:
    *a1 = 0;
    v19 = MEMORY[0x277CF7D10];
    goto LABEL_7;
  }

  v16 = *(v9 + 32);
  v16(v14, v2, v6);
  v17 = v1 + *(sub_2666D825C() + 32);
  if ((sub_2666D7DDC() & 1) == 0)
  {
    (*(v9 + 8))(v14, v6);
    goto LABEL_6;
  }

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095AD0, &unk_2666D96B0) + 48);
  v16(a1, v14, v6);
  a1[v18] = 0;
  v19 = MEMORY[0x277CF7D18];
LABEL_7:
  v20 = *v19;
  v21 = sub_2666D811C();
  OUTLINED_FUNCTION_2(v21);
  return (*(v22 + 104))(a1, v20);
}

__n128 sub_2666B42DC@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v44 = a1;
  v4 = sub_2666D811C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_1_1();
  v8 = (v7 - v6);
  v9 = sub_2666D815C();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095AA8, &qword_2666D9698);
  v19 = OUTLINED_FUNCTION_2(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095AB0, &qword_2666D96A0);
  v25 = OUTLINED_FUNCTION_3(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4();
  v30 = type metadata accessor for RenderableEvent();
  (*(v12 + 16))(v17, v3 + *(v30 + 20), v9);
  sub_2666B40D8(v8);
  sub_2666D80FC();
  sub_2666B3FEC();
  sub_2666B4594();
  sub_2666D887C();

  sub_2666B2A70(v23, &qword_280095AA8, &qword_2666D9698);
  v31 = sub_2666D86EC();
  v32 = v3 + *(type metadata accessor for EventCellView() + 28);
  v33 = *(v32 + 32);
  v34 = 0uLL;
  v35 = 0uLL;
  if ((v33 & 1) == 0)
  {
    v36 = *(v32 + 24);
    sub_2666D82BC();
    *(&v35 + 1) = v37;
    v34.n128_u64[1] = v38;
  }

  v42 = v35;
  v43 = v34;
  v39 = v44;
  (*(v27 + 32))(v44, v2, v24);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095AC8, &qword_2666D96A8) + 36);
  *v40 = v31;
  result = v43;
  *(v40 + 24) = v42;
  *(v40 + 8) = result;
  *(v40 + 40) = v33;
  return result;
}

unint64_t sub_2666B4594()
{
  result = qword_280095AB8;
  if (!qword_280095AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095AA8, &qword_2666D9698);
    sub_2666B4618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095AB8);
  }

  return result;
}

unint64_t sub_2666B4618()
{
  result = qword_280095AC0;
  if (!qword_280095AC0)
  {
    sub_2666D810C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095AC0);
  }

  return result;
}

uint64_t sub_2666B4670(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2666B467C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2666B46F0()
{
  result = qword_280095AD8;
  if (!qword_280095AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095AC8, &qword_2666D96A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095AA8, &qword_2666D9698);
    sub_2666B4594();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095AD8);
  }

  return result;
}

uint64_t sub_2666B4890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v11 = a3;
  v12 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v7 = sub_2666D81AC();
  v8 = sub_2666D819C();

  LOBYTE(v4) = sub_2666D8C6C();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v4 & 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2666B49C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_2666D8B9C();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_2666B4A6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_2666D8B9C();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PunchoutButtonSnippet()
{
  result = qword_280095AE0;
  if (!qword_280095AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666B4B38()
{
  result = sub_2666D8B9C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2666B4BD0()
{
  v1 = type metadata accessor for PunchoutButtonSnippet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2666B506C(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2666B50D4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095AF0, &qword_2666DA9A0);
  sub_2666B2B90(&qword_280095AF8, &qword_280095AF0, &qword_2666DA9A0);
  return sub_2666D8AAC();
}

uint64_t sub_2666B4D20(uint64_t a1)
{
  v2 = type metadata accessor for PunchoutButtonSnippet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2666B506C(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2666B50D4(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v9 = a1;
  return sub_2666D8A2C();
}

uint64_t sub_2666B4E54(uint64_t a1)
{
  v2 = sub_2666D8C7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for PunchoutButtonSnippet() + 20);
  sub_2666D8B7C();
  v8 = sub_2666D81EC();
  sub_2666D8C5C();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2666B4F44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = 0;
    v5 = *a1;
    v6 = MEMORY[0x277D84F90];
    v7 = v3;
  }

  else
  {
    sub_2666D85EC();
    if (qword_280095990 != -1)
    {
      swift_once();
    }

    v8 = qword_2800978F0;
    v5 = sub_2666D87DC();
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v4 & 1;
  *(a2 + 24) = v6;
}

uint64_t sub_2666B506C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PunchoutButtonSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666B50D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PunchoutButtonSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666B5138()
{
  v1 = *(type metadata accessor for PunchoutButtonSnippet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2666B4D20(v2);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for PunchoutButtonSnippet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = sub_2666D8B9C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666B5290()
{
  v1 = *(type metadata accessor for PunchoutButtonSnippet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2666B4E54(v2);
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

uint64_t sub_2666B5354(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_2666B53A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void (**sub_2666B5430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>))(char *, uint64_t)
{
  v33[1] = a1;
  v39 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B10, &qword_2666D97E0);
  v3 = OUTLINED_FUNCTION_3(v35);
  v40 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B18, &qword_2666D97E8);
  v10 = OUTLINED_FUNCTION_3(v9);
  v37 = v11;
  v38 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v34 = v33 - v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B20, &qword_2666D97F0);
  v15 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v17 = v33 - v16;
  v43 = *v2;
  v44 = *(v2 + 16);
  v41 = *v2;
  v42 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B28, &qword_2666D97F8);
  sub_2666D82EC();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B30, &unk_2666D9800);
  v19 = sub_2666B2B90(&qword_280095B38, &qword_280095B30, &unk_2666D9800);
  sub_2666D892C();

  v41 = v43;
  v42 = v44;
  sub_2666D82CC();
  v20 = *(v2 + 3);
  v21 = *(v2 + 4);
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_1_2(v22);
  sub_2666B5ADC(&v43, &v41);
  v23 = v20;
  *&v41 = v18;
  *(&v41 + 1) = v19;
  v24 = v34;
  swift_getOpaqueTypeConformance2();
  v25 = v35;
  sub_2666D893C();

  v40[1](v8, v25);
  if (v20)
  {
    v40 = v23;
    v26 = sub_2666D8CEC();

    v27 = swift_allocObject();
    v28 = OUTLINED_FUNCTION_1_2(v27);
    (*(v37 + 32))(v17, v24, v38, v28);
    v29 = v36;
    *&v17[*(v36 + 52)] = v26;
    v30 = &v17[*(v29 + 56)];
    *v30 = sub_2666B5BE4;
    v30[1] = v27;
    sub_2666B5BEC(v17, v39);
    sub_2666B5ADC(&v43, &v41);
    v31 = v40;

    return v31;
  }

  else
  {
    sub_2666D8D1C();
    sub_2666B5B4C();
    result = sub_2666D842C();
    __break(1u);
  }

  return result;
}

void sub_2666B5848(__int128 *a1)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B28, &qword_2666D97F8);
  sub_2666D82CC();
  v2 = *(a1 + 3);
  if (v6 == 1)
  {
    if (v2)
    {
      v3 = v2;
      sub_2666D8CDC();
      v4 = [objc_allocWithZone(sub_2666D8C8C()) init];
      sub_2666D8CFC();

LABEL_6:
      return;
    }
  }

  else if (v2)
  {
    v3 = v2;
    sub_2666D8CCC();
    goto LABEL_6;
  }

  v5 = *(a1 + 4);
  sub_2666D8D1C();
  sub_2666B5B4C();
  sub_2666D842C();
  __break(1u);
}

uint64_t sub_2666B5928(uint64_t a1, __int128 *a2)
{
  v4 = sub_2666D8D0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v5 + 88))(v8, v4) != *MEMORY[0x277D63F38])
  {
    return (*(v5 + 8))(v8, v4);
  }

  result = (*(v5 + 96))(v8, v4);
  if ((*v8 - 3) <= 1)
  {
    v11 = *a2;
    v12 = *(a2 + 16);
    v10[15] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B28, &qword_2666D97F8);
    return sub_2666D82DC();
  }

  return result;
}

uint64_t sub_2666B5ADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B28, &qword_2666D97F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2666B5B4C()
{
  result = qword_280095B40;
  if (!qword_280095B40)
  {
    sub_2666D8D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095B40);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2666B5BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B20, &qword_2666D97F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 OUTLINED_FUNCTION_1_2(uint64_t a1)
{
  result = *v1;
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);
  return result;
}

uint64_t sub_2666B5CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2666D8B9C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2666B5D68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_2666D8B9C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PromptForTitleSnippet()
{
  result = qword_280095B50;
  if (!qword_280095B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666B5E34()
{
  sub_2666B5EC8();
  if (v0 <= 0x3F)
  {
    sub_2666D8B9C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2666B5EC8()
{
  if (!qword_280095B60)
  {
    v0 = sub_2666D8A1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280095B60);
    }
  }
}

uint64_t sub_2666B5F34()
{
  v1 = v0;
  v2 = sub_2666D8C7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  v18 = v7;
  v19 = v8;
  v20 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095BA8, &qword_2666D98C0);
  sub_2666D89FC();
  v11 = v17[1];
  v10 = v17[2];

  v13 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v13 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = v1 + *(type metadata accessor for PromptForTitleSnippet() + 24);
    sub_2666D8B7C();
    v18 = v7;
    v19 = v8;
    v20 = v9;
    sub_2666D89FC();
    v15 = sub_2666D817C();
    sub_2666CF2CC(v15, v16);

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_2666B60AC()
{
  v1 = type metadata accessor for PromptForTitleSnippet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2666B78A8(v0, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_1_3();
  sub_2666B805C(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B68, &qword_2666D9888);
  sub_2666B2B90(&qword_280095B70, &qword_280095B68, &qword_2666D9888);
  return sub_2666D8AAC();
}

uint64_t sub_2666B6200@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v141 = a2;
  v143 = sub_2666D8ADC();
  v142 = *(v143 - 8);
  v3 = *(v142 + 64);
  v4 = MEMORY[0x28223BE20](v143);
  v151 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v150 = &v121 - v6;
  v137 = sub_2666D838C();
  v136 = *(v137 - 8);
  v7 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v134 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PromptForTitleSnippet();
  v133 = *(v9 - 8);
  v132 = *(v133 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v131 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_2666D832C();
  v129 = *(v130 - 8);
  v11 = *(v129 + 64);
  MEMORY[0x28223BE20](v130);
  v126 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2666D865C();
  v125 = *(v13 - 8);
  v14 = *(v125 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B78, &qword_2666D9890);
  v122 = *(v17 - 8);
  v18 = *(v122 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v121 - v19;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B80, &qword_2666D9898);
  v124 = *(v123 - 8);
  v21 = *(v124 + 64);
  MEMORY[0x28223BE20](v123);
  v23 = &v121 - v22;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B88, &qword_2666D98A0);
  v128 = *(v127 - 8);
  v24 = *(v128 + 64);
  MEMORY[0x28223BE20](v127);
  v121 = &v121 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B90, &qword_2666D98A8);
  v27 = *(v26 - 8);
  v135 = v26 - 8;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v30 = &v121 - v29;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B98, &qword_2666D98B0);
  v31 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v138 = (&v121 - v32);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095BA0, &qword_2666D98B8);
  v140 = *(v149 - 8);
  v33 = *(v140 + 64);
  v34 = MEMORY[0x28223BE20](v149);
  v152 = &v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v146 = &v121 - v36;
  v148 = sub_2666D8CBC();
  v147 = *(v148 - 8);
  v37 = v147[8];
  v38 = MEMORY[0x28223BE20](v148);
  v145 = &v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v121 - v40;
  v42 = sub_2666B71FC();
  v160 = MEMORY[0x277CE11C8];
  v161 = MEMORY[0x277D63A60];
  v157 = v42;
  v144 = v41;
  sub_2666D8CAC();
  v43 = *(a1 + 24);
  v153 = *(a1 + 8);
  v154 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095BA8, &qword_2666D98C0);
  sub_2666D8A0C();
  sub_2666D8A5C();
  sub_2666D864C();
  v44 = sub_2666B2B90(&qword_280095BB0, &qword_280095B78, &qword_2666D9890);
  v45 = sub_2666B81A4(&qword_280095BB8, MEMORY[0x277CDDF20]);
  sub_2666D88EC();
  (*(v125 + 8))(v16, v13);
  (*(v122 + 8))(v20, v17);
  v46 = v126;
  sub_2666D831C();
  v157 = v17;
  v158 = v13;
  v159 = v44;
  v160 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v121;
  v49 = v123;
  sub_2666D88AC();
  (*(v129 + 8))(v46, v130);
  v50 = v49;
  (*(v124 + 8))(v23, v49);
  v51 = v131;
  sub_2666B78A8(a1, v131);
  v52 = (*(v133 + 80) + 16) & ~*(v133 + 80);
  v53 = swift_allocObject();
  sub_2666B805C(v51, v53 + v52, type metadata accessor for PromptForTitleSnippet);
  v54 = v134;
  sub_2666D837C();
  v157 = v50;
  v158 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v55 = v127;
  sub_2666D894C();

  (*(v136 + 8))(v54, v137);
  (*(v128 + 8))(v48, v55);
  LOBYTE(OpaqueTypeConformance2) = sub_2666D86FC();
  sub_2666D82BC();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095BC0, &qword_2666D98C8) + 36)];
  *v64 = OpaqueTypeConformance2;
  *(v64 + 1) = v57;
  *(v64 + 2) = v59;
  *(v64 + 3) = v61;
  *(v64 + 4) = v63;
  v64[40] = 0;
  LODWORD(OpaqueTypeConformance2) = sub_2666D869C();
  v65 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095BC8, &qword_2666D98D0) + 36)];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095BD0, &qword_2666D98D8);
  v67 = &v65[*(v66 + 52)];
  v68 = *(sub_2666D841C() + 20);
  v69 = *MEMORY[0x277CE0118];
  v70 = sub_2666D861C();
  (*(*(v70 - 8) + 104))(&v67[v68], v69, v70);
  __asm { FMOV            V0.2D, #5.0 }

  *v67 = _Q0;
  *v65 = OpaqueTypeConformance2;
  *&v65[*(v66 + 56)] = 256;
  LOBYTE(OpaqueTypeConformance2) = sub_2666D82FC();
  v77 = v76;
  LOBYTE(v69) = v78;
  sub_2666D8D1C();
  sub_2666B81A4(&qword_280095B40, MEMORY[0x277D63F60]);
  v79 = sub_2666D843C();
  v80 = &v30[*(v135 + 44)];
  *v80 = OpaqueTypeConformance2 & 1;
  *(v80 + 1) = v77;
  v80[16] = v69 & 1;
  *(v80 + 3) = v79;
  *(v80 + 4) = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095BD8, &qword_2666D98E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2666D9810;
  LOBYTE(v65) = sub_2666D86EC();
  *(inited + 32) = v65;
  v83 = sub_2666D870C();
  *(inited + 33) = v83;
  v84 = sub_2666D871C();
  sub_2666D871C();
  if (sub_2666D871C() != v65)
  {
    v84 = sub_2666D871C();
  }

  sub_2666D871C();
  if (sub_2666D871C() != v83)
  {
    v84 = sub_2666D871C();
  }

  v85 = v138;
  sub_2666B7980(v30, v138);
  v86 = &v85[*(v139 + 36)];
  *v86 = v84;
  *(v86 + 8) = 0u;
  *(v86 + 24) = 0u;
  v86[40] = 1;
  sub_2666B79E8();
  v87 = v146;
  sub_2666D883C();
  sub_2666B7DD8(v85);
  v88 = sub_2666B74F0();
  v161 = MEMORY[0x277D63A60];
  v160 = MEMORY[0x277CE11C8];
  v157 = v88;
  v89 = sub_2666D85EC();
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v96 = type metadata accessor for CalendarButtonView(0);
  v155 = v96;
  v156 = sub_2666B81A4(&qword_280095C10, type metadata accessor for CalendarButtonView);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v153);
  boxed_opaque_existential_1[7] = MEMORY[0x277D558C8];
  boxed_opaque_existential_1[8] = sub_2666B7E38();
  *(boxed_opaque_existential_1 + 32) = 2;
  *(boxed_opaque_existential_1 + 72) = 1;
  v98 = type metadata accessor for CalendarButtonView.Model(0);
  v99 = v98[6];
  v100 = *MEMORY[0x277D63A88];
  v101 = sub_2666D8A7C();
  (*(*(v101 - 8) + 104))(boxed_opaque_existential_1 + v99, v100, v101);
  *boxed_opaque_existential_1 = v89;
  boxed_opaque_existential_1[1] = v91;
  *(boxed_opaque_existential_1 + 16) = v93 & 1;
  boxed_opaque_existential_1[3] = v95;
  *(boxed_opaque_existential_1 + v98[7]) = 0;
  *(boxed_opaque_existential_1 + v98[8]) = 0;
  v102 = boxed_opaque_existential_1 + *(v96 + 20);
  *v102 = swift_getKeyPath();
  v102[8] = 0;
  v103 = boxed_opaque_existential_1 + *(v96 + 24);
  sub_2666D8B8C();
  v104 = v150;
  sub_2666D8ACC();
  v105 = v147[2];
  v106 = v145;
  v107 = v148;
  v105(v145, v144, v148);
  v108 = v140;
  v139 = *(v140 + 16);
  (v139)(v152, v87, v149);
  v109 = v142;
  v138 = *(v142 + 16);
  v110 = v104;
  v111 = v143;
  (v138)(v151, v110, v143);
  v112 = v141;
  v105(v141, v106, v107);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C20, &qword_2666D9918);
  v114 = v149;
  (v139)(&v112[*(v113 + 48)], v152, v149);
  v115 = v151;
  (v138)(&v112[*(v113 + 64)], v151, v111);
  v116 = *(v109 + 8);
  v116(v150, v111);
  v117 = *(v108 + 8);
  v117(v146, v114);
  v118 = v147[1];
  v119 = v148;
  v118(v144, v148);
  v116(v115, v111);
  v117(v152, v114);
  return (v118)(v145, v119);
}

uint64_t sub_2666B71FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A30, &qword_2666D9960);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - v3;
  sub_2666D85EC();
  if (qword_280095990 != -1)
  {
    swift_once();
  }

  v5 = qword_2800978F0;
  v6 = sub_2666D87DC();
  v8 = v7;
  v17 = v6;
  v18 = v7;
  v10 = v9 & 1;
  v19 = v9 & 1;
  v20 = v11;
  v12 = MEMORY[0x277CE0BD8];
  v13 = MEMORY[0x277CE0BC8];
  sub_2666D88FC();
  sub_2666B2B2C(v6, v8, v10);

  v17 = v12;
  v18 = v13;
  swift_getOpaqueTypeConformance2();
  v14 = sub_2666D87FC();
  (*(v1 + 8))(v4, v0);
  return v14;
}

uint64_t sub_2666B7410@<X0>(uint64_t a1@<X8>)
{
  sub_2666D85EC();
  if (qword_280095990 != -1)
  {
    swift_once();
  }

  v2 = qword_2800978F0;
  result = sub_2666D87DC();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2666B74F0()
{
  v1 = type metadata accessor for PromptForTitleSnippet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CalendarButtonView.Model(0);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CalendarButtonView(0);
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C28, &qword_2666D9920);
  v17 = OUTLINED_FUNCTION_2(v52);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v48 - v20;
  *v0;
  v22 = sub_2666D85EC();
  v50 = v23;
  v51 = v22;
  v25 = v24;
  v49 = v26;
  sub_2666B78A8(v0, v4);
  v27 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_1_3();
  sub_2666B805C(v4, v29 + v27, v30);
  *(v10 + 4) = sub_2666B7F7C;
  *(v10 + 5) = v28;
  v10[72] = 0;
  v31 = v5[6];
  v32 = *MEMORY[0x277D63A90];
  v33 = sub_2666D8A7C();
  OUTLINED_FUNCTION_2(v33);
  (*(v34 + 104))(&v10[v31], v32);
  v35 = v50;
  *v10 = v51;
  *(v10 + 1) = v35;
  v10[16] = v25 & 1;
  *(v10 + 3) = v49;
  *&v10[v5[7]] = 0;
  *&v10[v5[8]] = 0;
  sub_2666B805C(v10, v16, type metadata accessor for CalendarButtonView.Model);
  v36 = &v16[*(v11 + 20)];
  *v36 = swift_getKeyPath();
  v36[8] = 0;
  v37 = &v16[*(v11 + 24)];
  sub_2666D8B8C();
  v38 = *(v0 + 24);
  v55 = *(v0 + 8);
  v56 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095BA8, &qword_2666D98C0);
  sub_2666D89FC();
  v40 = v53;
  v39 = v54;

  v41 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v41 = v40 & 0xFFFFFFFFFFFFLL;
  }

  v42 = v41 == 0;
  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  sub_2666B805C(v16, v21, type metadata accessor for CalendarButtonView);
  v45 = &v21[*(v52 + 36)];
  *v45 = KeyPath;
  v45[1] = sub_2666B8044;
  v45[2] = v44;
  sub_2666B80BC();
  v46 = sub_2666D87FC();
  sub_2666B81EC(v21);
  return v46;
}

uint64_t sub_2666B78A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptForTitleSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666B7910@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for PromptForTitleSnippet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2666B6200(v4, a1);
}

uint64_t sub_2666B7980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B90, &qword_2666D98A8);
  OUTLINED_FUNCTION_2(v4);
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2666B79E8()
{
  result = qword_280095BE0;
  if (!qword_280095BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095B98, &qword_2666D98B0);
    sub_2666B7A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095BE0);
  }

  return result;
}

unint64_t sub_2666B7A74()
{
  result = qword_280095BE8;
  if (!qword_280095BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095B90, &qword_2666D98A8);
    sub_2666B7B00();
    sub_2666B7D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095BE8);
  }

  return result;
}

unint64_t sub_2666B7B00()
{
  result = qword_280095BF0;
  if (!qword_280095BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095BC8, &qword_2666D98D0);
    sub_2666B7BB8();
    sub_2666B2B90(&qword_280095C00, &qword_280095BD0, &qword_2666D98D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095BF0);
  }

  return result;
}

unint64_t sub_2666B7BB8()
{
  result = qword_280095BF8;
  if (!qword_280095BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095BC0, &qword_2666D98C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095B88, &qword_2666D98A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095B80, &qword_2666D9898);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095B78, &qword_2666D9890);
    sub_2666D865C();
    sub_2666B2B90(&qword_280095BB0, &qword_280095B78, &qword_2666D9890);
    sub_2666B81A4(&qword_280095BB8, MEMORY[0x277CDDF20]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095BF8);
  }

  return result;
}

unint64_t sub_2666B7D84()
{
  result = qword_280095C08;
  if (!qword_280095C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095C08);
  }

  return result;
}

uint64_t sub_2666B7DD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B98, &qword_2666D98B0);
  OUTLINED_FUNCTION_2(v2);
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2666B7E38()
{
  result = qword_280095C18;
  if (!qword_280095C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095C18);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for PromptForTitleSnippet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 16);

  v6 = *(v0 + v3 + 24);

  v7 = v1[8];
  v8 = sub_2666D8B9C();
  OUTLINED_FUNCTION_2(v8);
  (*(v9 + 8))(v0 + v3 + v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666B7F80()
{
  v1 = *(type metadata accessor for PromptForTitleSnippet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_2666B5F34();
}

uint64_t sub_2666B7FDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2666D850C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2666B805C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2666B80BC()
{
  result = qword_280095C30;
  if (!qword_280095C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095C28, &qword_2666D9920);
    sub_2666B81A4(&qword_280095C38, type metadata accessor for CalendarButtonView);
    sub_2666B2B90(&qword_280095C40, &qword_280095C48, &qword_2666D9958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095C30);
  }

  return result;
}

uint64_t sub_2666B81A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2666B81EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C28, &qword_2666D9920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666B82D0(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_17();
  v6 = type metadata accessor for RenderableEvent();
  v7 = OUTLINED_FUNCTION_2_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C60, &unk_2666D9990);
    v14 = OUTLINED_FUNCTION_2_0(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[6];
    }

    else
    {
      v9 = sub_2666D8B9C();
      v16 = a3[8];
    }

    v10 = v3 + v16;
    goto LABEL_11;
  }

  v11 = *(v3 + a3[5]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_2666B83F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_17();
  v8 = type metadata accessor for RenderableEvent();
  result = OUTLINED_FUNCTION_2_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[5]) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C60, &unk_2666D9990);
    v14 = OUTLINED_FUNCTION_2_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v11 = sub_2666D8B9C();
      v16 = a4[8];
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t type metadata accessor for ConflictingEventConfirmationSnippet()
{
  result = qword_280095C68;
  if (!qword_280095C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666B8554()
{
  type metadata accessor for RenderableEvent();
  if (v0 <= 0x3F)
  {
    sub_2666B86C8(319, &qword_280095C78, type metadata accessor for RenderableEvent, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2666B86C8(319, &qword_280095C80, MEMORY[0x277D55908], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2666B86C8(319, &qword_280095AA0, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_2666D8B9C();
          if (v4 <= 0x3F)
          {
            sub_2666B3DDC();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2666B86C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2666B8748()
{
  v1 = sub_2666D857C();
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0 + *(type metadata accessor for ConflictingEventConfirmationSnippet() + 28);
  v10 = *v9;
  if ((*(v9 + 8) & 1) == 0)
  {

    sub_2666D8D9C();
    v11 = sub_2666D86DC();
    sub_2666D827C();

    sub_2666D856C();
    swift_getAtKeyPath();
    sub_2666B4670(v10, 0);
    (*(v4 + 8))(v8, v1);
    return v13[1];
  }

  return v10;
}

uint64_t sub_2666B8890()
{
  OUTLINED_FUNCTION_18();
  sub_2666D89CC();
  sub_2666D87EC();
  OUTLINED_FUNCTION_13();
  v0 = sub_2666D879C();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_15();
  sub_2666B2B2C(v5, v6, v7);

  OUTLINED_FUNCTION_18();
  sub_2666D85EC();
  if (qword_280095990 != -1)
  {
    swift_once();
  }

  v8 = qword_2800978F0;
  OUTLINED_FUNCTION_15();
  sub_2666D87DC();
  OUTLINED_FUNCTION_13();
  v13 = sub_2666D879C();
  v9 = OUTLINED_FUNCTION_15();
  sub_2666B2B2C(v9, v10, v11);

  sub_2666B2B2C(v0, v2, v4 & 1);

  return v13;
}

uint64_t sub_2666B8A20@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for ConflictingEventConfirmationSnippet();
  v3 = OUTLINED_FUNCTION_10(v2);
  v43 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C88, &qword_2666D9A18);
  OUTLINED_FUNCTION_3(v7);
  v44 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C90, &qword_2666D9A20);
  OUTLINED_FUNCTION_2(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C98, &qword_2666D9A28);
  OUTLINED_FUNCTION_3(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v25);
  v27 = &v42 - v26;
  sub_2666B8748();
  if (sub_2666D8DDC())
  {
    sub_2666B8E24(v27);
    (*(v22 + 16))(v19, v27, v20);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095CB0, &qword_2666D9A38);
    OUTLINED_FUNCTION_5();
    v29 = sub_2666B2B90(v28, &qword_280095CB0, &qword_2666D9A38);
    OUTLINED_FUNCTION_4_0(v29);
    sub_2666B2B90(&qword_280095CC0, &qword_280095C88, &qword_2666D9A18);
    OUTLINED_FUNCTION_11();
    sub_2666D868C();
    return (*(v22 + 8))(v27, v20);
  }

  else
  {
    OUTLINED_FUNCTION_9();
    sub_2666BC104(v1, &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    swift_allocObject();
    OUTLINED_FUNCTION_8();
    sub_2666BC1B0(&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095CA0, &qword_2666D9A30);
    OUTLINED_FUNCTION_7();
    sub_2666B2B90(v33, &qword_280095CA0, &qword_2666D9A30);
    sub_2666D8AAC();
    v34 = v44;
    v35 = *(v44 + 16);
    v36 = OUTLINED_FUNCTION_15();
    v37(v36);
    swift_storeEnumTagMultiPayload();
    v38 = OUTLINED_FUNCTION_12();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v38, v39);
    OUTLINED_FUNCTION_5();
    v41 = sub_2666B2B90(v40, &qword_280095CB0, &qword_2666D9A38);
    OUTLINED_FUNCTION_4_0(v41);
    sub_2666B2B90(&qword_280095CC0, &qword_280095C88, &qword_2666D9A18);
    OUTLINED_FUNCTION_11();
    sub_2666D868C();
    return (*(v34 + 8))(v13, v7);
  }
}

uint64_t sub_2666B8E24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v29 = sub_2666D8C9C();
  v3 = OUTLINED_FUNCTION_3(v29);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = (v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ConflictingEventConfirmationSnippet();
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095CB0, &qword_2666D9A38);
  OUTLINED_FUNCTION_3(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v19);
  v21 = v28 - v20;
  OUTLINED_FUNCTION_9();
  sub_2666BC104(v2, v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_8();
  sub_2666BC1B0(v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095CC8, &qword_2666D9A40);
  OUTLINED_FUNCTION_7();
  sub_2666B2B90(v24, &qword_280095CC8, &qword_2666D9A40);
  sub_2666D8AAC();
  v25 = *(v11 + 44);
  v26 = v29;
  *v9 = *(v28[1] + v25 + 16);
  (*(v5 + 104))(v9, *MEMORY[0x277D63ED0], v26);
  sub_2666B2B90(&qword_280095CB8, &qword_280095CB0, &qword_2666D9A38);
  sub_2666D885C();
  (*(v5 + 8))(v9, v26);
  return (*(v16 + 8))(v21, v14);
}

uint64_t sub_2666B911C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a1;
  v110 = a2;
  v121 = sub_2666D8ADC();
  v126 = *(v121 - 8);
  v3 = v126[8];
  v4 = MEMORY[0x28223BE20](v121);
  v119 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v118 = &v102 - v6;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D20, &qword_2666D9B48);
  v7 = *(*(v109 - 1) + 64);
  MEMORY[0x28223BE20](v109);
  v108 = (&v102 - v8);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D28, &qword_2666D9B50);
  v120 = *(v117 - 8);
  v9 = v120[8];
  v10 = MEMORY[0x28223BE20](v117);
  v116 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v125 = &v102 - v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D30, &qword_2666D9B58);
  v13 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v15 = &v102 - v14;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D38, &qword_2666D9B60);
  v107 = *(v106 - 1);
  v16 = *(v107 + 64);
  MEMORY[0x28223BE20](v106);
  v104 = &v102 - v17;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D40, &qword_2666D9B68);
  v115 = *(v123 - 8);
  v18 = v115[8];
  v19 = MEMORY[0x28223BE20](v123);
  v122 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v124 = &v102 - v21;
  v22 = sub_2666D805C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SingleEventView();
  v28 = *(*(v27 - 1) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D48, &qword_2666D9B70);
  v114 = *(v113 - 8);
  v31 = v114[8];
  v32 = MEMORY[0x28223BE20](v113);
  v112 = &v102 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v111 = &v102 - v34;
  sub_2666BC104(a1, v30);
  v30[v27[5]] = 0;
  v35 = &v30[v27[6]];
  sub_2666D8B8C();
  v36 = &v30[v27[7]];
  KeyPath = swift_getKeyPath();
  v130 = 0;
  v129 = 1;
  *v36 = KeyPath;
  v36[8] = 0;
  *(v36 + 2) = 0x4030000000000000;
  *(v36 + 3) = 0;
  v36[32] = 1;
  *(v36 + 5) = 1;
  *(v36 + 6) = sub_2666BD078;
  *(v36 + 7) = 0;
  v38 = &v30[v27[8]];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  *(v38 + 1) = xmmword_2666D9980;
  *(v38 + 4) = 1;
  *(v38 + 5) = sub_2666BD0AC;
  *(v38 + 6) = 0;
  v39 = &v30[v27[9]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  (*(v23 + 104))(v26, *MEMORY[0x277D62F20], v22);
  sub_2666BBFF0(&qword_280095D50, type metadata accessor for SingleEventView);
  sub_2666D882C();
  (*(v23 + 8))(v26, v22);
  sub_2666BC208(v30, type metadata accessor for SingleEventView);
  v40 = sub_2666B8890();
  v42 = v41;
  LOBYTE(v26) = v43;
  v45 = v44;
  v46 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D58, &qword_2666D9B78) + 36)];
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D60, &qword_2666D9B80) + 28);
  sub_2666D866C();
  v48 = sub_2666D867C();
  __swift_storeEnumTagSinglePayload(v46 + v47, 0, 1, v48);
  *v46 = swift_getKeyPath();
  *v15 = v40;
  *(v15 + 1) = v42;
  v15[16] = v26 & 1;
  *(v15 + 3) = v45;
  v49 = sub_2666D86EC();
  v50 = v105;
  v51 = &v15[*(v105 + 36)];
  *v51 = v49;
  *(v51 + 8) = 0u;
  *(v51 + 24) = 0u;
  v51[40] = 1;
  v52 = type metadata accessor for ConflictingEventConfirmationSnippet();
  v53 = v103;
  v54 = *(v103 + *(v52 + 36) + 16);
  v55 = sub_2666BBDC0();
  v56 = v104;
  sub_2666D884C();
  sub_2666BC15C(v15, &qword_280095D30, &qword_2666D9B58);
  v128[0] = v50;
  v128[1] = v55;
  swift_getOpaqueTypeConformance2();
  v57 = v106;
  sub_2666D883C();
  (*(v107 + 8))(v56, v57);
  v58 = sub_2666D862C();
  v59 = v108;
  *v108 = v58;
  *(v59 + 8) = 0x4024000000000000;
  *(v59 + 16) = 0;
  LODWORD(v56) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D80, &qword_2666D9BB8) + 44);
  v128[0] = *(v53 + *(v52 + 20));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D88, &unk_2666D9BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D90, &qword_2666DAB20);
  sub_2666B2B90(&qword_280095D98, &qword_280095D88, &unk_2666D9BC0);
  sub_2666BBF04();
  sub_2666BBFF0(&qword_280095DB8, type metadata accessor for RenderableEvent);
  sub_2666D8A4C();
  sub_2666B2B90(&qword_280095DC0, &qword_280095D20, &qword_2666D9B48);
  sub_2666D883C();
  sub_2666BC15C(v59, &qword_280095D20, &qword_2666D9B48);
  v107 = sub_2666D85EC();
  v106 = v60;
  LOBYTE(v22) = v61;
  v108 = v62;
  v63 = type metadata accessor for CalendarButtonView(0);
  v128[3] = v63;
  v64 = sub_2666BBFF0(&qword_280095C10, type metadata accessor for CalendarButtonView);
  v128[4] = v64;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v128);
  boxed_opaque_existential_1[7] = MEMORY[0x277D558C8];
  v109 = sub_2666B7E38();
  boxed_opaque_existential_1[8] = v109;
  *(boxed_opaque_existential_1 + 32) = 0;
  *(boxed_opaque_existential_1 + 72) = 1;
  v66 = type metadata accessor for CalendarButtonView.Model(0);
  v67 = v66[6];
  v68 = *MEMORY[0x277D63A90];
  v69 = sub_2666D8A7C();
  v70 = *(*(v69 - 8) + 104);
  v70(boxed_opaque_existential_1 + v67, v68, v69);
  v71 = v106;
  *boxed_opaque_existential_1 = v107;
  boxed_opaque_existential_1[1] = v71;
  *(boxed_opaque_existential_1 + 16) = v22 & 1;
  boxed_opaque_existential_1[3] = v108;
  *(boxed_opaque_existential_1 + v66[7]) = 0;
  *(boxed_opaque_existential_1 + v66[8]) = 0;
  v72 = boxed_opaque_existential_1 + *(v63 + 20);
  *v72 = swift_getKeyPath();
  v72[8] = 0;
  v73 = boxed_opaque_existential_1 + *(v63 + 24);
  sub_2666D8B8C();
  v74 = sub_2666D85EC();
  v76 = v75;
  LOBYTE(v68) = v77;
  v79 = v78;
  v127[3] = v63;
  v127[4] = v64;
  v80 = __swift_allocate_boxed_opaque_existential_1(v127);
  v81 = v109;
  v80[7] = MEMORY[0x277D558C8];
  v80[8] = v81;
  *(v80 + 32) = 2;
  *(v80 + 72) = 1;
  v70(v80 + v66[6], *MEMORY[0x277D63A88], v69);
  *v80 = v74;
  v80[1] = v76;
  *(v80 + 16) = v68 & 1;
  v80[3] = v79;
  *(v80 + v66[7]) = 0;
  *(v80 + v66[8]) = 0;
  v82 = v80 + *(v63 + 20);
  *v82 = swift_getKeyPath();
  v82[8] = 0;
  v83 = v80 + *(v63 + 24);
  sub_2666D8B8C();
  v84 = v118;
  sub_2666D8ACC();
  v106 = v114[2];
  v85 = v112;
  v86 = v113;
  (v106)(v112, v111, v113);
  v109 = v115[2];
  (v109)(v122, v124, v123);
  v108 = v120[2];
  v87 = v116;
  v108(v116, v125, v117);
  v107 = v126[2];
  v88 = v119;
  v89 = v84;
  v90 = v121;
  (v107)(v119, v89, v121);
  v91 = v110;
  (v106)(v110, v85, v86);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095DC8, &unk_2666D9BD0);
  (v109)(v91 + v92[12], v122, v123);
  v93 = v117;
  v108((v91 + v92[16]), v87, v117);
  (v107)(v91 + v92[20], v88, v90);
  v94 = v126[1];
  ++v126;
  v94(v118, v90);
  v95 = v120[1];
  v96 = v93;
  v95(v125, v93);
  v97 = v115[1];
  v98 = v123;
  v97(v124, v123);
  v99 = v114[1];
  v100 = v113;
  v99(v111, v113);
  v94(v119, v121);
  v95(v116, v96);
  v97(v122, v98);
  return (v99)(v112, v100);
}

uint64_t sub_2666B9FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18[-v6 - 7];
  sub_2666BC104(a1, a2);
  v8 = sub_2666D7F2C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = type metadata accessor for EventCellView();
  v10 = v9[5];
  __swift_storeEnumTagSinglePayload(a2 + v10, 1, 1, v8);
  v11 = a2 + v9[7];
  KeyPath = swift_getKeyPath();
  v21 = 0;
  v19 = 1;
  *v11 = KeyPath;
  *(v11 + 8) = 0;
  *(v11 + 9) = *v20;
  *(v11 + 12) = *&v20[3];
  *(v11 + 16) = 0x4030000000000000;
  *(v11 + 24) = 0;
  *(v11 + 32) = 1;
  *(v11 + 33) = *v18;
  *(v11 + 36) = *&v18[3];
  *(v11 + 40) = 1;
  *(v11 + 48) = sub_2666BD078;
  *(v11 + 56) = 0;
  v13 = a2 + v9[8];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  sub_2666BC038(v7, a2 + v10);
  *(a2 + v9[6]) = 0;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D90, &qword_2666DAB20) + 36);
  sub_2666BC104(a1, v14);
  v15 = v14 + *(type metadata accessor for PunchoutToEventDetailsModifier() + 20);
  return sub_2666D8B8C();
}

uint64_t sub_2666BA188@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v75 = sub_2666D8ADC();
  v82 = *(v75 - 8);
  v3 = v82[8];
  v4 = MEMORY[0x28223BE20](v75);
  v74 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v80 = &v67 - v6;
  v7 = type metadata accessor for EventCellView();
  v8 = (v7 - 8);
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v73 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095CD8, &qword_2666D9A48);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095CE0, &qword_2666D9A50);
  v81 = *(v72 - 8);
  v18 = v81[8];
  v19 = MEMORY[0x28223BE20](v72);
  v78 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v79 = &v67 - v21;
  *v17 = sub_2666D858C();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095CE8, &qword_2666D9A58);
  sub_2666BA948(a1, &v17[*(v22 + 44)]);
  v23 = *(a1 + *(type metadata accessor for ConflictingEventConfirmationSnippet() + 36) + 16);
  sub_2666B2B90(&qword_280095CF0, &qword_280095CD8, &qword_2666D9A48);
  sub_2666D884C();
  sub_2666BC15C(v17, &qword_280095CD8, &qword_2666D9A48);
  sub_2666BC104(a1, v13);
  v24 = v8[7];
  v25 = sub_2666D7F2C();
  __swift_storeEnumTagSinglePayload(&v13[v24], 1, 1, v25);
  KeyPath = swift_getKeyPath();
  v13[v8[8]] = 0;
  v27 = &v13[v8[9]];
  v77 = v13;
  v28 = swift_getKeyPath();
  v88 = 0;
  v86 = 1;
  *v27 = v28;
  v27[8] = 0;
  *(v27 + 9) = *v87;
  *(v27 + 3) = *&v87[3];
  *(v27 + 2) = 0x4030000000000000;
  *(v27 + 3) = 0;
  v27[32] = 1;
  *(v27 + 33) = *v85;
  *(v27 + 9) = *&v85[3];
  *(v27 + 5) = 1;
  *(v27 + 6) = sub_2666BD078;
  *(v27 + 7) = 0;
  v29 = &v13[v8[10]];
  *v29 = KeyPath;
  v29[8] = 0;
  v68 = sub_2666D85EC();
  v31 = v30;
  v69 = v32;
  v70 = v33;
  v34 = type metadata accessor for CalendarButtonView(0);
  v84[3] = v34;
  v35 = sub_2666BBFF0(&qword_280095C10, type metadata accessor for CalendarButtonView);
  v84[4] = v35;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
  boxed_opaque_existential_1[7] = MEMORY[0x277D558C8];
  v71 = sub_2666B7E38();
  boxed_opaque_existential_1[8] = v71;
  *(boxed_opaque_existential_1 + 32) = 0;
  *(boxed_opaque_existential_1 + 72) = 1;
  v37 = type metadata accessor for CalendarButtonView.Model(0);
  v38 = v37[6];
  v39 = *MEMORY[0x277D63A90];
  v40 = sub_2666D8A7C();
  v41 = *(*(v40 - 8) + 104);
  v41(boxed_opaque_existential_1 + v38, v39, v40);
  *boxed_opaque_existential_1 = v68;
  boxed_opaque_existential_1[1] = v31;
  *(boxed_opaque_existential_1 + 16) = v69 & 1;
  boxed_opaque_existential_1[3] = v70;
  *(boxed_opaque_existential_1 + v37[7]) = 0;
  *(boxed_opaque_existential_1 + v37[8]) = 0;
  v42 = boxed_opaque_existential_1 + *(v34 + 20);
  *v42 = swift_getKeyPath();
  v42[8] = 0;
  v43 = boxed_opaque_existential_1 + *(v34 + 24);
  sub_2666D8B8C();
  v44 = sub_2666D85EC();
  v46 = v45;
  LOBYTE(v39) = v47;
  v49 = v48;
  v83[3] = v34;
  v83[4] = v35;
  v50 = __swift_allocate_boxed_opaque_existential_1(v83);
  v51 = v71;
  v50[7] = MEMORY[0x277D558C8];
  v50[8] = v51;
  *(v50 + 32) = 2;
  *(v50 + 72) = 1;
  v41(v50 + v37[6], *MEMORY[0x277D63A88], v40);
  *v50 = v44;
  v50[1] = v46;
  *(v50 + 16) = v39 & 1;
  v50[3] = v49;
  *(v50 + v37[7]) = 0;
  *(v50 + v37[8]) = 0;
  v52 = v50 + *(v34 + 20);
  *v52 = swift_getKeyPath();
  v52[8] = 0;
  v53 = v50 + *(v34 + 24);
  sub_2666D8B8C();
  v54 = v80;
  sub_2666D8ACC();
  v55 = v81[2];
  v56 = v78;
  v57 = v72;
  v55(v78, v79, v72);
  v58 = v73;
  sub_2666BC104(v77, v73);
  v71 = v82[2];
  v59 = v74;
  v60 = v54;
  v61 = v75;
  v71(v74, v60, v75);
  v62 = v76;
  v55(v76, v56, v57);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095CF8, &qword_2666D9AC0);
  sub_2666BC104(v58, &v62[*(v63 + 48)]);
  v71(&v62[*(v63 + 64)], v59, v61);
  v64 = v82[1];
  v64(v80, v61);
  sub_2666BC208(v77, type metadata accessor for EventCellView);
  v65 = v81[1];
  v65(v79, v57);
  v64(v59, v61);
  sub_2666BC208(v58, type metadata accessor for EventCellView);
  return (v65)(v78, v57);
}

uint64_t sub_2666BA948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a1;
  v86 = a2;
  v3 = sub_2666D85DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v85 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2666D7EDC();
  v82 = *(v83 - 8);
  v6 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2666D7EBC();
  v79 = *(v80 - 8);
  v8 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2666D7EFC();
  v76 = *(v77 - 8);
  v10 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2666D7F1C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v76 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v76 - v22;
  v24 = type metadata accessor for DateHeaderView();
  v25 = (v24 - 8);
  v26 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v84 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v76 - v29;
  v31 = a1 + *(sub_2666D825C() + 32);
  sub_2666D7DCC();
  *&v30[v25[7]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D00, &qword_2666D9AF8);
  swift_storeEnumTagMultiPayload();
  *&v30[v25[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D08, &qword_2666D9B30);
  swift_storeEnumTagMultiPayload();
  v32 = &v30[v25[9]];
  sub_2666D8B8C();
  v33 = &v30[v25[10]];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  *(v33 + 2) = 0;
  v33[24] = 1;
  *(v33 + 4) = 1;
  *(v33 + 5) = sub_2666C1B98;
  *(v33 + 6) = 0;
  v34 = v25[11];
  MEMORY[0x2667897B0]();
  sub_2666D7EEC();
  sub_2666D7F0C();
  (*(v76 + 8))(v12, v77);
  v35 = *(v14 + 8);
  v35(v18, v13);
  v36 = v78;
  sub_2666D7EAC();
  sub_2666D7E7C();
  (*(v79 + 8))(v36, v80);
  v35(v21, v13);
  v37 = v81;
  sub_2666D7ECC();
  sub_2666D7E9C();
  (*(v82 + 8))(v37, v83);
  v35(v23, v13);
  *&v30[v25[12]] = &unk_287810A08;
  sub_2666D85CC();
  sub_2666D85BC();
  v83 = type metadata accessor for ConflictingEventConfirmationSnippet();
  v89[0] = *(*(v87 + *(v83 + 20)) + 16);
  sub_2666D859C();
  sub_2666D85BC();
  sub_2666D85FC();
  if (qword_280095990 != -1)
  {
    swift_once();
  }

  v38 = qword_2800978F0;
  v39 = sub_2666D87DC();
  v41 = v40;
  v43 = v42;
  LODWORD(v89[0]) = sub_2666D86AC();
  v44 = sub_2666D878C();
  v46 = v45;
  v48 = v47;
  sub_2666B2B2C(v39, v41, v43 & 1);

  sub_2666D877C();
  v49 = sub_2666D87BC();
  v51 = v50;
  v53 = v52;
  v85 = v54;

  sub_2666B2B2C(v44, v46, v48 & 1);

  v55 = sub_2666D872C();
  v56 = v87 + *(v83 + 36);
  v57 = *(v56 + 32);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  if ((v57 & 1) == 0)
  {
    v62 = *(v56 + 24);
    sub_2666D82BC();
    v58 = v63;
    v59 = v64;
    v60 = v65;
    v61 = v66;
  }

  v67 = v53 & 1;
  v103 = v53 & 1;
  v100 = v57;
  v68 = v84;
  sub_2666BC104(v30, v84);
  v69 = v86;
  sub_2666BC104(v68, v86);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D10, &qword_2666D9B38);
  v71 = v69 + *(v70 + 48);
  *v71 = 0;
  *(v71 + 8) = 1;
  v72 = *(v70 + 64);
  __src[0] = v49;
  __src[1] = v51;
  LOBYTE(__src[2]) = v67;
  *(&__src[2] + 1) = *v102;
  HIDWORD(__src[2]) = *&v102[3];
  v73 = v49;
  v74 = v85;
  __src[3] = v85;
  LOBYTE(__src[4]) = v55;
  *(&__src[4] + 1) = *v101;
  HIDWORD(__src[4]) = *&v101[3];
  __src[5] = v58;
  __src[6] = v59;
  __src[7] = v60;
  __src[8] = v61;
  LOBYTE(__src[9]) = v57;
  memcpy((v69 + v72), __src, 0x49uLL);
  sub_2666BC0A8(__src, v89, &qword_280095D18, &qword_2666D9B40);
  sub_2666BC208(v30, type metadata accessor for DateHeaderView);
  v89[0] = v73;
  v89[1] = v51;
  v90 = v67;
  *v91 = *v102;
  *&v91[3] = *&v102[3];
  v92 = v74;
  v93 = v55;
  *v94 = *v101;
  *&v94[3] = *&v101[3];
  v95 = v58;
  v96 = v59;
  v97 = v60;
  v98 = v61;
  v99 = v57;
  sub_2666BC15C(v89, &qword_280095D18, &qword_2666D9B40);
  return sub_2666BC208(v68, type metadata accessor for DateHeaderView);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for ConflictingEventConfirmationSnippet();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 104);

  v11 = sub_2666D825C();
  v12 = v11[8];
  v13 = sub_2666D7DEC();
  OUTLINED_FUNCTION_1_4(v13);
  (*(v14 + 8))(v0 + v3 + v12);
  v15 = *(v0 + v3 + v11[10] + 8);

  v16 = *(v0 + v3 + v11[11] + 8);

  v17 = v0 + v3 + v11[12];
  v18 = sub_2666D822C();
  if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
  {
    v19 = *(v18 + 28);
    sub_2666D821C();
    if (!swift_getEnumCaseMultiPayload())
    {
      v20 = sub_2666D7F2C();
      OUTLINED_FUNCTION_1_4(v20);
      (*(v21 + 8))(v17 + v19);
    }
  }

  v22 = *(v5 + v11[13]);

  v23 = v11[14];
  v24 = sub_2666D809C();
  if (!__swift_getEnumTagSinglePayload(v5 + v23, 1, v24))
  {
    (*(*(v24 - 8) + 8))(v5 + v23, v24);
  }

  v25 = type metadata accessor for RenderableEvent();
  v26 = *(v25 + 20);
  v27 = sub_2666D815C();
  OUTLINED_FUNCTION_1_4(v27);
  (*(v28 + 8))(v5 + v26);
  v29 = *(v5 + *(v25 + 24) + 8);

  v30 = *(v5 + v1[5]);

  v31 = v5 + v1[6];
  v32 = sub_2666D81FC();
  if (!__swift_getEnumTagSinglePayload(v31, 1, v32))
  {
    v33 = *(v31 + 16);

    v34 = *(v31 + 32);

    v35 = v32[7];
    v36 = sub_2666D7F2C();
    if (!__swift_getEnumTagSinglePayload(v31 + v35, 1, v36))
    {
      (*(*(v36 - 8) + 8))(v31 + v35, v36);
    }

    v37 = v32[8];
    if (!__swift_getEnumTagSinglePayload(v31 + v37, 1, v36))
    {
      (*(*(v36 - 8) + 8))(v31 + v37, v36);
    }

    v38 = *(v31 + v32[11]);

    v39 = *(v31 + v32[12] + 8);
  }

  sub_2666B4670(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v40 = v1[8];
  v41 = sub_2666D8B9C();
  OUTLINED_FUNCTION_1_4(v41);
  (*(v42 + 8))(v5 + v40);
  v43 = v5 + v1[9];
  sub_2666B4670(*v43, *(v43 + 8));
  v44 = *(v43 + 56);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666BB670(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ConflictingEventConfirmationSnippet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2666BB6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v75 = a4;
  v66 = a2;
  v67 = a3;
  v7 = sub_2666D825C();
  v8 = OUTLINED_FUNCTION_10(v7);
  v74 = v9;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v73 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v72 = v62 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v62 - v16;
  v18 = type metadata accessor for RenderableEvent();
  v19 = OUTLINED_FUNCTION_10(v18);
  v71 = v20;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v19);
  v25 = v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v62 - v26;
  v28 = type metadata accessor for ConflictingEventConfirmationSnippet();
  v29 = a5 + v28[7];
  KeyPath = swift_getKeyPath();
  *v29 = KeyPath;
  *(v29 + 8) = 0;
  v31 = v28[8];
  v64 = KeyPath;
  v65 = v31;
  sub_2666D8B8C();
  v32 = a5 + v28[9];
  v33 = swift_getKeyPath();
  v79 = 0;
  v78 = 1;
  *v32 = v33;
  *(v32 + 8) = 0;
  *(v32 + 16) = 0x4030000000000000;
  *(v32 + 24) = 0;
  *(v32 + 32) = 1;
  *(v32 + 40) = 1;
  *(v32 + 48) = sub_2666BD078;
  *(v32 + 56) = 0;
  sub_2666BC104(a1, v17);
  v34 = v75;
  v35 = v76;
  sub_2666B30A8(v17, v34, v27);
  if (v35)
  {

    sub_2666BC15C(v67, &qword_280095C60, &unk_2666D9990);
    OUTLINED_FUNCTION_0_1();
    sub_2666BC208(a1, v36);
LABEL_3:

    v37 = sub_2666D8B9C();
    OUTLINED_FUNCTION_1_4(v37);
    (*(v38 + 8))(a5 + v65);
  }

  else
  {
    v75 = v25;
    v76 = 0;
    v69 = v28;
    v70 = v34;
    v62[1] = v33;
    v63 = a1;
    OUTLINED_FUNCTION_6();
    sub_2666BC1B0(v27, a5);
    v41 = v66;
    v40 = v67;
    v42 = *(v66 + 16);
    if (v42)
    {
      v62[0] = a5;
      v77 = MEMORY[0x277D84F90];
      result = sub_2666C8090(0, v42, 0);
      v43 = 0;
      v44 = v77;
      v45 = v74;
      v68 = v41 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      while (v43 < *(v41 + 16))
      {
        v46 = v72;
        sub_2666BC104(v68 + *(v45 + 72) * v43, v72);
        v47 = v73;
        sub_2666BC104(v46, v73);
        v48 = v70;
        v49 = v76;
        sub_2666B30A8(v47, v48, v75);
        v76 = v49;
        if (v49)
        {

          sub_2666BC15C(v40, &qword_280095C60, &unk_2666D9990);
          v60 = MEMORY[0x277D55918];
          sub_2666BC208(v63, MEMORY[0x277D55918]);
          sub_2666BC208(v46, v60);

          a5 = v62[0];
          sub_2666BC208(v62[0], type metadata accessor for RenderableEvent);
          goto LABEL_3;
        }

        v50 = v41;
        v51 = v40;
        OUTLINED_FUNCTION_0_1();
        sub_2666BC208(v46, v52);
        v77 = v44;
        v54 = *(v44 + 16);
        v53 = *(v44 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_2666C8090(v53 > 1, v54 + 1, 1);
          v44 = v77;
        }

        ++v43;
        *(v44 + 16) = v54 + 1;
        v55 = v44 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
        v56 = *(v71 + 72);
        OUTLINED_FUNCTION_6();
        result = sub_2666BC1B0(v75, v57);
        v40 = v51;
        v41 = v50;
        v45 = v74;
        v58 = v69;
        if (v42 == v43)
        {
          OUTLINED_FUNCTION_0_1();
          sub_2666BC208(v63, v61);

          a5 = v62[0];
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {

      OUTLINED_FUNCTION_0_1();
      sub_2666BC208(v63, v59);
      v44 = MEMORY[0x277D84F90];
      v58 = v69;
LABEL_14:
      *(a5 + v58[5]) = v44;
      return sub_2666BC25C(v40, a5 + v58[6]);
    }
  }

  return result;
}

uint64_t sub_2666BBC30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2666D850C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2666BBC88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095DD0, &qword_2666D9BE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2666BC0A8(a1, &v6 - v4, &qword_280095DD0, &qword_2666D9BE0);
  return sub_2666D84BC();
}

uint64_t sub_2666BBD30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2666D850C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2666BBDC0()
{
  result = qword_280095D68;
  if (!qword_280095D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095D30, &qword_2666D9B58);
    sub_2666BBE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095D68);
  }

  return result;
}

unint64_t sub_2666BBE4C()
{
  result = qword_280095D70;
  if (!qword_280095D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095D58, &qword_2666D9B78);
    sub_2666B2B90(&qword_280095D78, &qword_280095D60, &qword_2666D9B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095D70);
  }

  return result;
}

unint64_t sub_2666BBF04()
{
  result = qword_280095DA0;
  if (!qword_280095DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095D90, &qword_2666DAB20);
    sub_2666BBFF0(&qword_280095DA8, type metadata accessor for EventCellView);
    sub_2666BBFF0(&qword_280095DB0, type metadata accessor for PunchoutToEventDetailsModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095DA0);
  }

  return result;
}

uint64_t sub_2666BBFF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2666BC038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666BC0A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_12();
  v9(v8);
  return a2;
}

uint64_t sub_2666BC104(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v5 = v4(v3);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_12();
  v9(v8);
  return a2;
}

uint64_t sub_2666BC15C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2666BC1B0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v5 = v4(v3);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_12();
  v9(v8);
  return a2;
}

uint64_t sub_2666BC208(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2666BC25C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C60, &unk_2666D9990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2666BC2D0()
{
  result = qword_280095DD8;
  if (!qword_280095DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095DE0, &qword_2666D9BE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095CB0, &qword_2666D9A38);
    sub_2666B2B90(&qword_280095CB8, &qword_280095CB0, &qword_2666D9A38);
    swift_getOpaqueTypeConformance2();
    sub_2666B2B90(&qword_280095CC0, &qword_280095C88, &qword_2666D9A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095DD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2666BC54C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2666D844C();
  *a1 = result;
  return result;
}

uint64_t TamaleEvent.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TamaleEvent.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TamaleEvent.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TamaleEvent() + 20);
  v4 = sub_2666D7DEC();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for TamaleEvent()
{
  result = qword_280095DE8;
  if (!qword_280095DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TamaleEvent.dateInterval.setter()
{
  OUTLINED_FUNCTION_1_5();
  v2 = *(type metadata accessor for TamaleEvent() + 20);
  v3 = sub_2666D7DEC();
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*TamaleEvent.dateInterval.modify())(void)
{
  OUTLINED_FUNCTION_1_5();
  v0 = *(type metadata accessor for TamaleEvent() + 20);
  return nullsub_1;
}

uint64_t TamaleEvent.allDay.setter(char a1)
{
  result = type metadata accessor for TamaleEvent();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*TamaleEvent.allDay.modify())(void)
{
  OUTLINED_FUNCTION_1_5();
  v0 = *(type metadata accessor for TamaleEvent() + 24);
  return nullsub_1;
}

uint64_t TamaleEvent.location.getter()
{
  v1 = (v0 + *(type metadata accessor for TamaleEvent() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TamaleEvent.location.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TamaleEvent() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*TamaleEvent.location.modify())(void)
{
  OUTLINED_FUNCTION_1_5();
  v0 = *(type metadata accessor for TamaleEvent() + 28);
  return nullsub_1;
}

uint64_t TamaleEvent.init(title:dateInterval:allDay:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for TamaleEvent();
  v15 = &a7[v14[7]];
  *a7 = a1;
  *(a7 + 1) = a2;
  v16 = v14[5];
  v17 = sub_2666D7DEC();
  OUTLINED_FUNCTION_2(v17);
  result = (*(v18 + 32))(&a7[v16], a3);
  a7[v14[6]] = a4;
  *v15 = a5;
  *(v15 + 1) = a6;
  return result;
}

uint64_t sub_2666BC9B4()
{
  v1 = *v0;
  v2 = [v1 defaultCalendarForNewEvents];
  if (v2)
  {
    goto LABEL_2;
  }

  v5 = [v1 calendarsForEntityType_];
  sub_2666BD4BC();
  v6 = sub_2666D8D7C();

  result = sub_2666BD054(v6);
  if (!result)
  {

    v2 = [objc_opt_self() calendarForEntityType:0 eventStore:v1];
LABEL_2:
    v3 = v2;

    return v3;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x26678A7C0](0, v6);
    goto LABEL_7;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
LABEL_7:
    v8 = v7;

    return v8;
  }

  __break(1u);
  return result;
}

SiriCalendarUI::SiriCalendarTamaleEventViewProvider __swiftcall SiriCalendarTamaleEventViewProvider.init()()
{
  v1 = v0;
  result.eventStore.super.isa = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
  v1->eventStore.super.isa = result.eventStore.super.isa;
  return result;
}

int *SiriCalendarTamaleEventViewProvider.getView(for:)(char *a1)
{
  v4 = type metadata accessor for SingleEventView();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for RenderableEvent();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = *v1;
  sub_2666BCD2C(a1, v13);
  if (!v2)
  {
    sub_2666BD408(v13, v9, type metadata accessor for RenderableEvent);
    v9[v4[5]] = 0;
    v14 = &v9[v4[6]];
    sub_2666D8B8C();
    v15 = &v9[v4[7]];
    KeyPath = swift_getKeyPath();
    v20[8] = 0;
    v20[0] = 1;
    *v15 = KeyPath;
    v15[8] = 0;
    *(v15 + 2) = 0x4030000000000000;
    *(v15 + 3) = 0;
    v15[32] = 1;
    *(v15 + 5) = 1;
    *(v15 + 6) = sub_2666BD078;
    *(v15 + 7) = 0;
    v17 = &v9[v4[8]];
    *v17 = swift_getKeyPath();
    v17[8] = 0;
    *(v17 + 1) = xmmword_2666D9980;
    *(v17 + 4) = 1;
    *(v17 + 5) = sub_2666BD0AC;
    *(v17 + 6) = 0;
    v18 = &v9[v4[9]];
    *v18 = swift_getKeyPath();
    v18[8] = 0;
    sub_2666BD0D4();
    v4 = sub_2666D87FC();
    sub_2666BD468();
    sub_2666BD468();
  }

  return v4;
}

uint64_t sub_2666BCD2C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E00, &qword_2666D9CD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = v30 - v7;
  v8 = sub_2666D7DEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2666D825C();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v30 - v18;
  v20 = *v2;
  v35 = *v2;
  sub_2666BC9B4();
  result = sub_2666D81BC();
  if (!v3)
  {
    v22 = *(a1 + 1);
    v32 = *a1;
    v30[1] = v22;
    v23 = type metadata accessor for TamaleEvent();
    (*(v9 + 16))(v12, &a1[v23[5]], v8);
    v24 = v23[7];
    v31 = a1[v23[6]];
    v25 = &a1[v24];
    v26 = *&a1[v24];
    v27 = *(v25 + 1);
    v28 = sub_2666D822C();
    __swift_storeEnumTagSinglePayload(v33, 1, 1, v28);

    sub_2666D824C();
    sub_2666D823C();
    sub_2666BD408(v19, v17, MEMORY[0x277D55918]);
    v29 = v20;
    sub_2666B30A8(v17, v29, v34);
    return sub_2666BD468();
  }

  return result;
}

uint64_t sub_2666BCFE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2666D844C();
  *a1 = result;
  return result;
}

uint64_t sub_2666BD054(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t sub_2666BD078@<X0>(uint64_t a1@<X8>)
{
  result = sub_2666C192C();
  *a1 = v3;
  *(a1 + 8) = result;
  *(a1 + 16) = v4 & 1;
  return result;
}

unint64_t sub_2666BD0D4()
{
  result = qword_280095D50;
  if (!qword_280095D50)
  {
    type metadata accessor for SingleEventView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095D50);
  }

  return result;
}

uint64_t sub_2666BD140(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2666D7DEC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2666BD1DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2666D7DEC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_2666BD25C()
{
  sub_2666D7DEC();
  if (v0 <= 0x3F)
  {
    sub_2666BD2F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2666BD2F8()
{
  if (!qword_280095DF8)
  {
    v0 = sub_2666D8DFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280095DF8);
    }
  }
}

uint64_t sub_2666BD37C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2666BD3BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2666BD408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2666BD468()
{
  v1 = OUTLINED_FUNCTION_1_5();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_2666BD4BC()
{
  result = qword_280095E08;
  if (!qword_280095E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280095E08);
  }

  return result;
}

uint64_t sub_2666BD520(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_17();
  v6 = type metadata accessor for RenderableEvent();
  v7 = OUTLINED_FUNCTION_2_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_12:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = type metadata accessor for CalendarButtonView.Model(0);
  v12 = OUTLINED_FUNCTION_2_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_11:
    v10 = v3 + v14;
    goto LABEL_12;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E10, &unk_2666D9CE0);
  v16 = OUTLINED_FUNCTION_2_0(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[7];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C60, &unk_2666D9990);
  v19 = OUTLINED_FUNCTION_2_0(v18);
  if (*(v20 + 84) == a2)
  {
    v9 = v19;
    v14 = a3[11];
    goto LABEL_11;
  }

  v21 = sub_2666D8B9C();
  v22 = OUTLINED_FUNCTION_2_0(v21);
  if (*(v23 + 84) == a2)
  {
    v9 = v22;
    v14 = a3[12];
    goto LABEL_11;
  }

  v25 = *(v3 + a3[13] + 48);
  if (v25 >= 0xFFFFFFFF)
  {
    LODWORD(v25) = -1;
  }

  return (v25 + 1);
}

uint64_t sub_2666BD6F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_17();
  v8 = type metadata accessor for RenderableEvent();
  v9 = OUTLINED_FUNCTION_2_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for CalendarButtonView.Model(0);
    v14 = OUTLINED_FUNCTION_2_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E10, &unk_2666D9CE0);
      v18 = OUTLINED_FUNCTION_2_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[7];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C60, &unk_2666D9990);
        v21 = OUTLINED_FUNCTION_2_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[11];
        }

        else
        {
          v23 = sub_2666D8B9C();
          result = OUTLINED_FUNCTION_2_0(v23);
          if (*(v25 + 84) != a3)
          {
            *(v4 + a4[13] + 48) = (a2 - 1);
            return result;
          }

          v11 = result;
          v16 = a4[12];
        }
      }
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t type metadata accessor for SingleEventWithButtonsSnippet()
{
  result = qword_280095E18;
  if (!qword_280095E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666BD904()
{
  type metadata accessor for RenderableEvent();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CalendarButtonView.Model(319);
    if (v1 <= 0x3F)
    {
      sub_2666BDA34(319, &qword_280095E28, type metadata accessor for CalendarButtonView.Model);
      if (v2 <= 0x3F)
      {
        sub_2666BDA34(319, &qword_280095C80, MEMORY[0x277D55908]);
        if (v3 <= 0x3F)
        {
          sub_2666D8B9C();
          if (v4 <= 0x3F)
          {
            sub_2666B3DDC();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2666BDA34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2666D8DFC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2666BDAA4()
{
  v1 = type metadata accessor for SingleEventWithButtonsSnippet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2666BF468(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2666BF368(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E30, &qword_2666D9D60);
  sub_2666B2B90(&qword_280095E38, &qword_280095E30, &qword_2666D9D60);
  return sub_2666D8AAC();
}

uint64_t sub_2666BDC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E40, &qword_2666D9D68);
  v3 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E48, &qword_2666D9D70);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = &v36 - v11;
  v12 = type metadata accessor for SingleEventView();
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v37 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - v17;
  v19 = type metadata accessor for SingleEventWithButtonsSnippet();
  v20 = *(a1 + *(v19 + 36));
  sub_2666BF468(a1, v18);
  v18[v13[7]] = v20;
  v21 = &v18[v13[8]];
  sub_2666D8B8C();
  v22 = &v18[v13[9]];
  KeyPath = swift_getKeyPath();
  v43 = 0;
  v42 = 1;
  *v22 = KeyPath;
  v22[8] = 0;
  *(v22 + 2) = 0x4030000000000000;
  *(v22 + 3) = 0;
  v22[32] = 1;
  *(v22 + 5) = 1;
  *(v22 + 6) = sub_2666BD078;
  *(v22 + 7) = 0;
  v24 = &v18[v13[10]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  *(v24 + 1) = xmmword_2666D9980;
  *(v24 + 4) = 1;
  *(v24 + 5) = sub_2666BD0AC;
  *(v24 + 6) = 0;
  v25 = &v18[v13[11]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = *(a1 + *(v19 + 52) + 16);
  *v5 = sub_2666D862C();
  *(v5 + 1) = v26;
  v5[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E50, &qword_2666D9DA8);
  sub_2666BE058(a1, &v5[*(v27 + 44)]);
  sub_2666B2B90(&qword_280095E58, &qword_280095E40, &qword_2666D9D68);
  v28 = v38;
  sub_2666D884C();
  sub_2666BC15C(v5, &qword_280095E40, &qword_2666D9D68);
  v29 = v37;
  sub_2666BF468(v18, v37);
  v30 = v7[2];
  v31 = v39;
  v30(v39, v28, v6);
  v32 = v41;
  sub_2666BF468(v29, v41);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E60, &qword_2666D9DB0);
  v30((v32 + *(v33 + 48)), v31, v6);
  v34 = v7[1];
  v34(v28, v6);
  sub_2666BF3CC(v18, type metadata accessor for SingleEventView);
  v34(v31, v6);
  return sub_2666BF3CC(v29, type metadata accessor for SingleEventView);
}

uint64_t sub_2666BE058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = type metadata accessor for CalendarButtonView(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v76 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E68, &qword_2666D9DB8);
  v77 = *(v89 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v89);
  v75 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E10, &unk_2666D9CE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v74 - v10;
  v84 = type metadata accessor for CalendarButtonView.Model(0);
  v12 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v74 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E70, &qword_2666D9DC0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v88 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v87 = &v74 - v18;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E78, &qword_2666D9DC8);
  v19 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v21 = &v74 - v20;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E80, &qword_2666D9DD0);
  v22 = *(v83 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v83);
  v25 = &v74 - v24;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E88, &qword_2666D9DD8);
  v26 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v74 - v27;
  v82 = sub_2666D8ADC();
  v28 = *(v82 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v82);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E90, &qword_2666D9DE0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v85 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v81 = &v74 - v36;
  v37 = type metadata accessor for SingleEventWithButtonsSnippet();
  v38 = *(a1 + *(v37 + 32));
  v86 = a1;
  if (v38 == 1)
  {
    v39 = *(v37 + 20);
    v94 = v3;
    v40 = v37;
    v41 = sub_2666BF420(&qword_280095C10, type metadata accessor for CalendarButtonView);
    v95 = v41;
    v42 = __swift_allocate_boxed_opaque_existential_1(&v92);
    sub_2666BF468(a1 + v39, v42);
    v43 = v42 + *(v3 + 20);
    *v43 = swift_getKeyPath();
    v43[8] = 0;
    v44 = v40;
    v45 = v42 + *(v3 + 24);
    sub_2666D8B8C();
    v46 = *(v40 + 24);
    v91[3] = v3;
    v91[4] = v41;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v91);
    sub_2666BF468(a1 + v46, boxed_opaque_existential_1);
    v48 = boxed_opaque_existential_1 + *(v3 + 20);
    *v48 = swift_getKeyPath();
    v48[8] = 0;
    v49 = boxed_opaque_existential_1 + *(v3 + 24);
    sub_2666D8B8C();
    sub_2666D8ACC();
    v50 = v82;
    (*(v28 + 16))(v78, v31, v82);
    swift_storeEnumTagMultiPayload();
    sub_2666BF420(&qword_280095EA8, MEMORY[0x277D63C38]);
    v51 = sub_2666B2B90(&qword_280095EA0, &qword_280095E78, &qword_2666D9DC8);
    v92 = v80;
    v93 = v51;
    swift_getOpaqueTypeConformance2();
    v52 = v81;
    sub_2666D868C();
    (*(v28 + 8))(v31, v50);
    v53 = v52;
  }

  else
  {
    v54 = v37;
    *v21 = sub_2666D862C();
    *(v21 + 1) = 0;
    v21[16] = 1;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E98, &qword_2666D9DE8);
    sub_2666BEAD0(a1, &v21[*(v55 + 44)]);
    v56 = sub_2666B2B90(&qword_280095EA0, &qword_280095E78, &qword_2666D9DC8);
    v57 = v80;
    sub_2666D883C();
    sub_2666BC15C(v21, &qword_280095E78, &qword_2666D9DC8);
    v58 = v83;
    (*(v22 + 16))(v78, v25, v83);
    swift_storeEnumTagMultiPayload();
    sub_2666BF420(&qword_280095EA8, MEMORY[0x277D63C38]);
    v92 = v57;
    v93 = v56;
    swift_getOpaqueTypeConformance2();
    v59 = v81;
    sub_2666D868C();
    (*(v22 + 8))(v25, v58);
    v44 = v54;
    v53 = v59;
  }

  sub_2666BF298(v86 + *(v44 + 28), v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v84) == 1)
  {
    sub_2666BC15C(v11, &qword_280095E10, &unk_2666D9CE0);
    v60 = 1;
    v61 = v89;
    v62 = v87;
  }

  else
  {
    v63 = v74;
    sub_2666BF368(v11, v74);
    v64 = v76;
    sub_2666BF468(v63, v76);
    v65 = v64 + *(v3 + 20);
    *v65 = swift_getKeyPath();
    *(v65 + 8) = 0;
    v66 = v64 + *(v3 + 24);
    sub_2666D8B8C();
    sub_2666BF420(&qword_280095C38, type metadata accessor for CalendarButtonView);
    v67 = v75;
    sub_2666D883C();
    sub_2666BF3CC(v64, type metadata accessor for CalendarButtonView);
    sub_2666BF3CC(v63, type metadata accessor for CalendarButtonView.Model);
    v62 = v87;
    v68 = v67;
    v61 = v89;
    (*(v77 + 32))(v87, v68, v89);
    v60 = 0;
  }

  __swift_storeEnumTagSinglePayload(v62, v60, 1, v61);
  v69 = v85;
  sub_2666BF308(v53, v85, &qword_280095E90, &qword_2666D9DE0);
  v70 = v88;
  sub_2666BF308(v62, v88, &qword_280095E70, &qword_2666D9DC0);
  v71 = v90;
  sub_2666BF308(v69, v90, &qword_280095E90, &qword_2666D9DE0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095EB0, &qword_2666D9DF0);
  sub_2666BF308(v70, v71 + *(v72 + 48), &qword_280095E70, &qword_2666D9DC0);
  sub_2666BC15C(v62, &qword_280095E70, &qword_2666D9DC0);
  sub_2666BC15C(v53, &qword_280095E90, &qword_2666D9DE0);
  sub_2666BC15C(v70, &qword_280095E70, &qword_2666D9DC0);
  return sub_2666BC15C(v69, &qword_280095E90, &qword_2666D9DE0);
}

uint64_t sub_2666BEAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for CalendarButtonView(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v17 = type metadata accessor for SingleEventWithButtonsSnippet();
  sub_2666BF468(a1 + *(v17 + 20), v16);
  v18 = &v16[*(v4 + 28)];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = &v16[*(v4 + 32)];
  sub_2666D8B8C();
  sub_2666BF468(a1 + *(v17 + 24), v14);
  v20 = &v14[*(v4 + 28)];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &v14[*(v4 + 32)];
  sub_2666D8B8C();
  sub_2666BF468(v16, v11);
  sub_2666BF468(v14, v8);
  v22 = v26;
  sub_2666BF468(v11, v26);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095EB8, &qword_2666D9E28);
  sub_2666BF468(v8, v22 + *(v23 + 48));
  sub_2666BF3CC(v14, type metadata accessor for CalendarButtonView);
  sub_2666BF3CC(v16, type metadata accessor for CalendarButtonView);
  sub_2666BF3CC(v8, type metadata accessor for CalendarButtonView);
  return sub_2666BF3CC(v11, type metadata accessor for CalendarButtonView);
}

uint64_t sub_2666BED14()
{
  v1 = type metadata accessor for SingleEventWithButtonsSnippet();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v67 = *(*(v1 - 1) + 64);
  v68 = v0;
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = *(v0 + v3 + 56);

  v9 = *(v0 + v3 + 104);

  v10 = sub_2666D825C();
  v11 = v10[8];
  v12 = sub_2666D7DEC();
  OUTLINED_FUNCTION_1_4(v12);
  (*(v13 + 8))(v0 + v3 + v11);
  v14 = *(v0 + v3 + v10[10] + 8);

  v15 = *(v0 + v3 + v10[11] + 8);

  v16 = v0 + v3 + v10[12];
  v17 = sub_2666D822C();
  if (!__swift_getEnumTagSinglePayload(v16, 1, v17))
  {
    v18 = *(v17 + 28);
    sub_2666D821C();
    if (!swift_getEnumCaseMultiPayload())
    {
      v19 = sub_2666D7F2C();
      OUTLINED_FUNCTION_1_4(v19);
      (*(v20 + 8))(v16 + v18);
    }
  }

  v21 = *(v4 + v10[13]);

  v22 = v10[14];
  v23 = sub_2666D809C();
  if (!__swift_getEnumTagSinglePayload(v4 + v22, 1, v23))
  {
    (*(*(v23 - 8) + 8))(v4 + v22, v23);
  }

  v24 = type metadata accessor for RenderableEvent();
  v25 = *(v24 + 20);
  v26 = sub_2666D815C();
  OUTLINED_FUNCTION_1_4(v26);
  (*(v27 + 8))(v4 + v25);
  v28 = *(v4 + *(v24 + 24) + 8);

  v29 = v4 + v1[5];
  v30 = *(v29 + 8);

  v31 = *(v29 + 24);

  if (*(v29 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((v29 + 32));
  }

  else
  {
    v32 = *(v29 + 40);
  }

  v33 = type metadata accessor for CalendarButtonView.Model(0);
  v34 = v33[6];
  v35 = sub_2666D8A7C();
  OUTLINED_FUNCTION_2(v35);
  v37 = *(v36 + 8);
  v37(v29 + v34, v35);
  v38 = *(v29 + v33[7]);

  v39 = *(v29 + v33[8]);

  v40 = v4 + v1[6];
  v41 = *(v40 + 8);

  v42 = *(v40 + 24);

  if (*(v40 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((v40 + 32));
  }

  else
  {
    v43 = *(v40 + 40);
  }

  v37(v40 + v33[6], v35);
  v44 = *(v40 + v33[7]);

  v45 = *(v40 + v33[8]);

  v46 = v4 + v1[7];
  if (!__swift_getEnumTagSinglePayload(v46, 1, v33))
  {
    v47 = *(v46 + 8);

    v48 = *(v46 + 24);

    if (*(v46 + 72))
    {
      __swift_destroy_boxed_opaque_existential_1((v46 + 32));
    }

    else
    {
      v49 = *(v46 + 40);
    }

    v37(v46 + v33[6], v35);
    v50 = *(v46 + v33[7]);

    v51 = *(v46 + v33[8]);
  }

  v52 = v4 + v1[11];
  v53 = sub_2666D81FC();
  if (!__swift_getEnumTagSinglePayload(v52, 1, v53))
  {
    v54 = *(v52 + 16);

    v55 = *(v52 + 32);

    v56 = v53[7];
    v57 = sub_2666D7F2C();
    if (!__swift_getEnumTagSinglePayload(v52 + v56, 1, v57))
    {
      (*(*(v57 - 8) + 8))(v52 + v56, v57);
    }

    v58 = v53[8];
    if (!__swift_getEnumTagSinglePayload(v52 + v58, 1, v57))
    {
      (*(*(v57 - 8) + 8))(v52 + v58, v57);
    }

    v59 = *(v52 + v53[11]);

    v60 = *(v52 + v53[12] + 8);
  }

  v61 = v1[12];
  v62 = sub_2666D8B9C();
  OUTLINED_FUNCTION_1_4(v62);
  (*(v63 + 8))(v4 + v61);
  v64 = v4 + v1[13];
  sub_2666B4670(*v64, *(v64 + 8));
  v65 = *(v64 + 56);

  return MEMORY[0x2821FE8E8](v68, v3 + v67, v2 | 7);
}

uint64_t sub_2666BF220@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SingleEventWithButtonsSnippet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2666BDC1C(v4, a1);
}

uint64_t sub_2666BF298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E10, &unk_2666D9CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666BF308(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2666BF368(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_17();
  v6 = v5(v4);
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2666BF3CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2666BF420(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2666BF468(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_17();
  v6 = v5(v4);
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2666BF51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RenderableEvent();
  v7 = OUTLINED_FUNCTION_2_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_2666D8B9C();
  v12 = OUTLINED_FUNCTION_2_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 28) + 48);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2666BF620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RenderableEvent();
  v9 = OUTLINED_FUNCTION_2_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_2666D8B9C();
    result = OUTLINED_FUNCTION_2_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 48) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t type metadata accessor for SingleEventView()
{
  result = qword_280095ED0;
  if (!qword_280095ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666BF758()
{
  type metadata accessor for RenderableEvent();
  if (v0 <= 0x3F)
  {
    sub_2666D8B9C();
    if (v1 <= 0x3F)
    {
      sub_2666BF84C(319, &qword_280095A98);
      if (v2 <= 0x3F)
      {
        sub_2666BF84C(319, &qword_280095EE0);
        if (v3 <= 0x3F)
        {
          sub_2666BF898();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2666BF84C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for IdiomConstant();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2666BF898()
{
  if (!qword_280095AA0)
  {
    type metadata accessor for VRXIdiom();
    v0 = sub_2666D830C();
    if (!v1)
    {
      atomic_store(v0, &qword_280095AA0);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SingleEventView.StyleConstants(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SingleEventView.StyleConstants(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2666BF958@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = sub_2666D8C9C();
  v4 = OUTLINED_FUNCTION_3(v3);
  v52 = v5;
  v53 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  v48 = v9 - v8;
  v10 = type metadata accessor for SingleEventView();
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095EE8, &qword_2666D9F48);
  OUTLINED_FUNCTION_3(v14);
  v47 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v18);
  v20 = v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095EF0, &qword_2666D9F50);
  OUTLINED_FUNCTION_3(v21);
  v49 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v25);
  v27 = v46 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095EF8, &qword_2666D9F58);
  v50 = OUTLINED_FUNCTION_3(v28);
  v51 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v32);
  v34 = v46 - v33;
  sub_2666C1BC8(v2, v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleEventView);
  v35 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v36 = swift_allocObject();
  sub_2666C17A8(v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F00, &qword_2666D9F60);
  sub_2666B2B90(&qword_280095F08, &qword_280095F00, &qword_2666D9F60);
  sub_2666D8AAC();
  v38 = v52;
  v37 = v53;
  v39 = v48;
  (*(v52 + 104))(v48, *MEMORY[0x277D63EC0], v53);
  OUTLINED_FUNCTION_5_0();
  v41 = sub_2666B2B90(v40, &qword_280095EE8, &qword_2666D9F48);
  sub_2666D885C();
  (*(v38 + 8))(v39, v37);
  (*(v47 + 8))(v20, v14);
  v42 = *(v46[1] + *(v11 + 36) + 16);
  v55 = v14;
  v56 = v41;
  OUTLINED_FUNCTION_4_1();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2666D884C();
  (*(v49 + 8))(v27, v21);
  v55 = v21;
  v56 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_1();
  swift_getOpaqueTypeConformance2();
  v44 = v50;
  sub_2666D883C();
  return (*(v51 + 8))(v34, v44);
}

uint64_t sub_2666BFDE0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v62 = a1;
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F18, &qword_2666D9F68);
  v4 = *(v3 - 8);
  v75 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v76 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v74 = &v62 - v8;
  v9 = sub_2666D7EDC();
  v72 = *(v9 - 8);
  v73 = v9;
  v10 = *(v72 + 64);
  MEMORY[0x28223BE20](v9);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2666D7EBC();
  v68 = *(v70 - 8);
  v12 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v65 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2666D7EFC();
  v63 = *(v14 - 8);
  v64 = v14;
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2666D7F1C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v62 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v62 - v27;
  v29 = type metadata accessor for DateHeaderView();
  v30 = *(*(v29 - 1) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F20, &qword_2666D9F70);
  v67 = *(v69 - 8);
  v33 = *(v67 + 64);
  v34 = MEMORY[0x28223BE20](v69);
  v66 = &v62 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v78 = &v62 - v36;
  v37 = a1 + *(sub_2666D825C() + 32);
  sub_2666D7DCC();
  *&v32[v29[5]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D00, &qword_2666D9AF8);
  swift_storeEnumTagMultiPayload();
  *&v32[v29[6]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D08, &qword_2666D9B30);
  swift_storeEnumTagMultiPayload();
  v38 = &v32[v29[7]];
  sub_2666D8B8C();
  v39 = &v32[v29[8]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  *(v39 + 2) = 0;
  v39[24] = 1;
  *(v39 + 4) = 1;
  *(v39 + 5) = sub_2666C1B98;
  *(v39 + 6) = 0;
  v40 = v29[9];
  MEMORY[0x2667897B0]();
  sub_2666D7EEC();
  sub_2666D7F0C();
  (*(v63 + 8))(v17, v64);
  v41 = *(v19 + 8);
  v41(v23, v18);
  v42 = v65;
  sub_2666D7EAC();
  sub_2666D7E7C();
  (*(v68 + 8))(v42, v70);
  v41(v26, v18);
  v43 = v71;
  sub_2666D7ECC();
  sub_2666D7E9C();
  (*(v72 + 8))(v43, v73);
  v41(v28, v18);
  *&v32[v29[10]] = &unk_287810A08;
  v44 = type metadata accessor for SingleEventView();
  v45 = v62;
  v46 = v62 + *(v44 + 32);
  v47 = *(v46 + 16);
  v48 = *(v46 + 24);
  sub_2666C1C24(&qword_280095F28, type metadata accessor for DateHeaderView);
  v49 = v78;
  sub_2666D884C();
  sub_2666C1C6C(v32, type metadata accessor for DateHeaderView);
  v50 = v74;
  sub_2666C054C(v45, v74);
  v51 = v50 + *(v75 + 44);
  sub_2666C1BC8(v45, v51, type metadata accessor for RenderableEvent);
  v52 = v51 + *(type metadata accessor for PunchoutToEventDetailsModifier() + 20);
  sub_2666D8B8C();
  v53 = v66;
  v54 = v67;
  v55 = *(v67 + 16);
  v56 = v69;
  v55(v66, v49, v69);
  v57 = v76;
  sub_2666C1CC0(v50, v76, &qword_280095F18, &qword_2666D9F68);
  v58 = v77;
  v55(v77, v53, v56);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F30, &qword_2666DA008);
  sub_2666C1CC0(v57, &v58[*(v59 + 48)], &qword_280095F18, &qword_2666D9F68);
  sub_2666BC15C(v50, &qword_280095F18, &qword_2666D9F68);
  v60 = *(v54 + 8);
  v60(v78, v56);
  sub_2666BC15C(v57, &qword_280095F18, &qword_2666D9F68);
  return (v60)(v53, v56);
}

uint64_t sub_2666C054C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F38, &qword_2666DA010);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for EventCellView();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F40, &unk_2666DA7A0);
  v43 = *(v16 - 8);
  v44 = v16;
  v17 = *(v43 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v47 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  sub_2666C1BC8(a1, v15, type metadata accessor for RenderableEvent);
  v22 = sub_2666D7F2C();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v22);
  v23 = v12[5];
  __swift_storeEnumTagSinglePayload(&v15[v23], 1, 1, v22);
  v24 = &v15[v12[7]];
  KeyPath = swift_getKeyPath();
  v53 = 0;
  v51 = 1;
  *v24 = KeyPath;
  v24[8] = 0;
  *(v24 + 9) = *v52;
  *(v24 + 3) = *&v52[3];
  *(v24 + 2) = 0x4030000000000000;
  *(v24 + 3) = 0;
  v24[32] = 1;
  *(v24 + 33) = *v50;
  *(v24 + 9) = *&v50[3];
  *(v24 + 5) = 1;
  *(v24 + 6) = sub_2666BD078;
  *(v24 + 7) = 0;
  v26 = &v15[v12[8]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  sub_2666BC038(v11, &v15[v23]);
  v15[v12[6]] = 0;
  v27 = *(a1 + *(type metadata accessor for SingleEventView() + 32) + 24);
  sub_2666C1C24(&qword_280095DA8, type metadata accessor for EventCellView);
  v42 = v21;
  sub_2666D884C();
  sub_2666C1C6C(v15, type metadata accessor for EventCellView);
  v28 = v48;
  sub_2666C0A2C(v48);
  v29 = sub_2666C0F30(v49);
  v30 = v43;
  v31 = *(v43 + 16);
  v32 = v47;
  v33 = v21;
  v34 = v44;
  v31(v47, v33, v44, v29);
  v35 = v45;
  sub_2666C1CC0(v28, v45, &qword_280095F38, &qword_2666DA010);
  v36 = v46;
  (v31)(v46, v32, v34);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F48, &qword_2666DA018);
  sub_2666C1CC0(v35, v36 + *(v37 + 48), &qword_280095F38, &qword_2666DA010);
  v38 = *(v37 + 64);
  memcpy(v54, v49, 0x71uLL);
  memcpy((v36 + v38), v49, 0x71uLL);
  sub_2666C1CC0(v54, __dst, &qword_280095F50, &qword_2666DA020);
  sub_2666BC15C(v48, &qword_280095F38, &qword_2666DA010);
  v39 = *(v30 + 8);
  v39(v42, v34);
  memcpy(__dst, v49, 0x71uLL);
  sub_2666BC15C(__dst, &qword_280095F50, &qword_2666DA020);
  sub_2666BC15C(v35, &qword_280095F38, &qword_2666DA010);
  return (v39)(v47, v34);
}

uint64_t sub_2666C0A2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2666D85DC();
  v4 = OUTLINED_FUNCTION_10_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F58, &qword_2666DA028);
  OUTLINED_FUNCTION_3(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v12);
  v60 = &v56 - v13;
  v14 = sub_2666D857C();
  v15 = OUTLINED_FUNCTION_3(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_1();
  v22 = v21 - v20;
  v59 = type metadata accessor for SingleEventView();
  v23 = v1 + *(v59 + 36);
  v24 = *v23;
  if ((*(v23 + 8) & 1) == 0)
  {

    sub_2666D8D9C();
    v25 = sub_2666D86DC();
    v58 = v14;
    v26 = a1;
    v27 = v9;
    v28 = v7;
    v29 = v25;
    sub_2666D827C();

    v7 = v28;
    v9 = v27;
    a1 = v26;
    sub_2666D856C();
    swift_getAtKeyPath();
    sub_2666B4670(v24, 0);
    (*(v17 + 8))(v22, v58);
  }

  if ((sub_2666D8DEC() & 1) != 0 && (sub_2666C1168(), v30))
  {
    v56 = v7;
    v31 = v1;
    v57 = v9;
    v58 = a1;
    sub_2666D85CC();
    sub_2666D85BC();
    sub_2666D85AC();

    sub_2666D85BC();
    v32 = sub_2666D85FC();
    v34 = v33;
    v36 = v35;
    if (qword_280095990 != -1)
    {
      swift_once();
    }

    v37 = qword_2800978F0;
    v38 = qword_2800978F0;
    sub_2666D87DC();
    OUTLINED_FUNCTION_9_0();
    sub_2666D873C();
    v39 = sub_2666D87BC();
    v41 = v40;
    v43 = v42;

    v44 = OUTLINED_FUNCTION_12();
    sub_2666B2B2C(v44, v45, v46);

    __dst[0] = sub_2666D86AC();
    sub_2666D878C();
    OUTLINED_FUNCTION_9_0();
    sub_2666B2B2C(v39, v41, v43 & 1);

    v47 = sub_2666D86EC();
    v63 = v34 & 1;
    v62 = 1;
    __src[0] = v37;
    __src[1] = v32;
    LOBYTE(__src[2]) = v34 & 1;
    __src[3] = v36;
    LOBYTE(__src[4]) = v47;
    memset(&__src[5], 0, 32);
    LOBYTE(__src[9]) = 1;
    v48 = *(v31 + *(v59 + 32) + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D18, &qword_2666D9B40);
    sub_2666C1D0C();
    v49 = v60;
    sub_2666D884C();
    memcpy(__dst, __src, 0x49uLL);
    sub_2666BC15C(__dst, &qword_280095D18, &qword_2666D9B40);
    v50 = v58;
    v51 = v56;
    (*(v57 + 32))(v58, v49, v56);
    v52 = v50;
    v53 = 0;
    v54 = v51;
  }

  else
  {
    v52 = a1;
    v53 = 1;
    v54 = v7;
  }

  return __swift_storeEnumTagSinglePayload(v52, v53, 1, v54);
}

double sub_2666C0F30@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_2666D857C();
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  v11 = v10 - v9;
  v12 = type metadata accessor for SingleEventView();
  v13 = v1 + *(v12 + 36);
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    v25 = *v13;
  }

  else
  {

    sub_2666D8D9C();
    v15 = sub_2666D86DC();
    sub_2666D827C();

    sub_2666D856C();
    swift_getAtKeyPath();
    sub_2666B4670(v14, 0);
    (*(v6 + 8))(v11, v3);
  }

  if ((sub_2666D8DDC() & 1) != 0 || *(v1 + *(v12 + 20)) != 1)
  {
    v16 = 0;
    KeyPath = 0;
    v17 = 0;
LABEL_9:
    v19 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  v16 = *(v1 + *(sub_2666D825C() + 52));
  v17 = *(v16 + 16);
  if (!v17)
  {
    v16 = 0;
    KeyPath = 0;
    goto LABEL_9;
  }

  KeyPath = swift_getKeyPath();
  v19 = 1;
  v20 = 1;

  v21 = sub_2666D86EC();
  v22 = sub_2666BD078;
  v17 = 0x4030000000000000;
  v23 = 1;
LABEL_10:
  *a1 = v16;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = 0;
  *(a1 + 24) = v17;
  *(a1 + 32) = 0;
  *(a1 + 40) = v20;
  *(a1 + 48) = v19;
  *(a1 + 56) = v22;
  *(a1 + 64) = 0;
  *(a1 + 72) = v21;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = v23;
  return result;
}

uint64_t sub_2666C1168()
{
  v1 = v0;
  v2 = sub_2666D7F2C();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A60, &qword_2666D9628);
  OUTLINED_FUNCTION_10_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F68, &unk_2666DA030);
  OUTLINED_FUNCTION_10_0(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v20);
  v22 = &v32 - v21;
  v23 = sub_2666D825C();
  sub_2666C1CC0(v1 + *(v23 + 56), v16, &qword_280095A60, &qword_2666D9628);
  v24 = sub_2666D809C();
  if (__swift_getEnumTagSinglePayload(v16, 1, v24) == 1)
  {
    v25 = &qword_280095A60;
    v26 = &qword_2666D9628;
    v27 = v16;
  }

  else
  {
    sub_2666D808C();
    (*(*(v24 - 8) + 8))(v16, v24);
    v28 = sub_2666D80CC();
    if (__swift_getEnumTagSinglePayload(v22, 1, v28) != 1)
    {
      v30 = v1 + *(v23 + 32);
      sub_2666D7DCC();
      v29 = sub_2666D80BC();
      (*(v5 + 8))(v10, v2);
      (*(*(v28 - 8) + 8))(v22, v28);
      return v29;
    }

    v25 = &qword_280095F68;
    v26 = &unk_2666DA030;
    v27 = v22;
  }

  sub_2666BC15C(v27, v25, v26);
  return 0;
}

double sub_2666C1404@<D0>(_OWORD *a1@<X8>)
{
  result = 12.0;
  *a1 = xmmword_2666D9980;
  return result;
}

double sub_2666C1444@<D0>(_OWORD *a1@<X8>)
{
  result = 10.0;
  *a1 = xmmword_2666D9E40;
  return result;
}

uint64_t sub_2666C14D4()
{
  v1 = type metadata accessor for SingleEventView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 104);

  v11 = sub_2666D825C();
  v12 = v11[8];
  v13 = sub_2666D7DEC();
  OUTLINED_FUNCTION_1_4(v13);
  (*(v14 + 8))(v0 + v3 + v12);
  v15 = *(v0 + v3 + v11[10] + 8);

  v16 = *(v0 + v3 + v11[11] + 8);

  v17 = v0 + v3 + v11[12];
  v18 = sub_2666D822C();
  if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
  {
    v19 = *(v18 + 28);
    sub_2666D821C();
    if (!swift_getEnumCaseMultiPayload())
    {
      v20 = sub_2666D7F2C();
      OUTLINED_FUNCTION_1_4(v20);
      (*(v21 + 8))(v17 + v19);
    }
  }

  v22 = *(v5 + v11[13]);

  v23 = v11[14];
  v24 = sub_2666D809C();
  if (!__swift_getEnumTagSinglePayload(v5 + v23, 1, v24))
  {
    (*(*(v24 - 8) + 8))(v5 + v23, v24);
  }

  v25 = type metadata accessor for RenderableEvent();
  v26 = *(v25 + 20);
  v27 = sub_2666D815C();
  OUTLINED_FUNCTION_1_4(v27);
  (*(v28 + 8))(v5 + v26);
  v29 = *(v5 + *(v25 + 24) + 8);

  v30 = v1[6];
  v31 = sub_2666D8B9C();
  OUTLINED_FUNCTION_1_4(v31);
  (*(v32 + 8))(v5 + v30);
  v33 = v5 + v1[7];
  sub_2666B4670(*v33, *(v33 + 8));
  v34 = *(v33 + 56);

  v35 = v5 + v1[8];
  sub_2666B4670(*v35, *(v35 + 8));
  v36 = *(v35 + 48);

  sub_2666B4670(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666C17A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleEventView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666C180C@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for SingleEventView();
  OUTLINED_FUNCTION_10_0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_2666BFDE0(v5, a1);
}

uint64_t sub_2666C192C()
{
  sub_2666C1E38();
  sub_2666D8C3C();
  return v1;
}

double sub_2666C1980()
{
  sub_2666C1DE4();
  sub_2666D8C3C();
  return v1;
}

uint64_t sub_2666C19CC()
{
  sub_2666C1D90();
  sub_2666D8C3C();
  return v1;
}

uint64_t sub_2666C1A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_3(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a1);
  return a6(v13);
}

uint64_t sub_2666C1B98@<X0>(uint64_t a1@<X8>)
{
  result = sub_2666C19CC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2666C1BC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_12();
  v8(v7);
  return a2;
}

uint64_t sub_2666C1C24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2666C1C6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2666C1CC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_12_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_12();
  v9(v8);
  return v4;
}

unint64_t sub_2666C1D0C()
{
  result = qword_280095F60;
  if (!qword_280095F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095D18, &qword_2666D9B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095F60);
  }

  return result;
}

unint64_t sub_2666C1D90()
{
  result = qword_280095F70;
  if (!qword_280095F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095F70);
  }

  return result;
}

unint64_t sub_2666C1DE4()
{
  result = qword_280095F78;
  if (!qword_280095F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095F78);
  }

  return result;
}

unint64_t sub_2666C1E38()
{
  result = qword_280095F80;
  if (!qword_280095F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095F80);
  }

  return result;
}

uint64_t sub_2666C1E8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095EF8, &qword_2666D9F58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095EF0, &qword_2666D9F50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095EE8, &qword_2666D9F48);
  OUTLINED_FUNCTION_5_0();
  sub_2666B2B90(v0, &qword_280095EE8, &qword_2666D9F48);
  OUTLINED_FUNCTION_4_1();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_2666C1FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_25();
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v7 = sub_2666D8B9C();
    v8 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v7);
}

uint64_t sub_2666C209C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_25();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = sub_2666D8B9C();
    v10 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

uint64_t type metadata accessor for ComposeEventSnippet()
{
  result = qword_280095F88;
  if (!qword_280095F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666C2180()
{
  result = sub_2666D81FC();
  if (v1 <= 0x3F)
  {
    result = sub_2666D8B9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2666C2220@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2666D862C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F98, &qword_2666DA0A8);
  return sub_2666C2274(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_2666C2274@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25 = a1;
  v28 = a2;
  v3 = type metadata accessor for ComposeEventSnippet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_2666D8B1C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FA0, &qword_2666DA0B0);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v27 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  sub_2666C564C(a1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposeEventSnippet);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_2666C5404(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_2666CAB10(0, sub_2666C61EC, v17, v26);
  sub_2666C564C(v25, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposeEventSnippet);
  v18 = swift_allocObject();
  sub_2666C5404(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FA8, &qword_2666DA0B8);
  sub_2666B2B90(&qword_280095FB0, &qword_280095FA8, &qword_2666DA0B8);
  sub_2666D8ABC();
  v19 = v10[2];
  v20 = v27;
  v19(v27, v15, v9);
  v21 = v28;
  v19(v28, v20, v9);
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FB8, &qword_2666DA0C0) + 48)];
  *v22 = 0;
  v22[8] = 1;
  v23 = v10[1];
  v23(v15, v9);
  return (v23)(v20, v9);
}

uint64_t sub_2666C25DC@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FC0, &qword_2666DA0C8);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FC8, &qword_2666DA0D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FD0, &qword_2666DA0D8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FD8, &qword_2666DA0E0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v32 - v26;
  sub_2666C29DC();
  sub_2666C30B0();
  v34 = v13;
  sub_2666C403C();
  sub_2666C42BC();
  v35 = v25;
  sub_2666C1CC0(v27, v25, &qword_280095FD8, &qword_2666DA0E0);
  v33 = v18;
  sub_2666C1CC0(v20, v18, &qword_280095FD0, &qword_2666DA0D8);
  v32 = v11;
  sub_2666C1CC0(v13, v11, &qword_280095FC8, &qword_2666DA0D0);
  v28 = v36;
  sub_2666C1CC0(v6, v36, &qword_280095FC0, &qword_2666DA0C8);
  v29 = v37;
  sub_2666C1CC0(v25, v37, &qword_280095FD8, &qword_2666DA0E0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FE0, &qword_2666DA0E8);
  sub_2666C1CC0(v18, v29 + v30[12], &qword_280095FD0, &qword_2666DA0D8);
  sub_2666C1CC0(v11, v29 + v30[16], &qword_280095FC8, &qword_2666DA0D0);
  sub_2666C1CC0(v28, v29 + v30[20], &qword_280095FC0, &qword_2666DA0C8);
  sub_2666B2A70(v6, &qword_280095FC0, &qword_2666DA0C8);
  sub_2666B2A70(v34, &qword_280095FC8, &qword_2666DA0D0);
  sub_2666B2A70(v20, &qword_280095FD0, &qword_2666DA0D8);
  sub_2666B2A70(v27, &qword_280095FD8, &qword_2666DA0E0);
  sub_2666B2A70(v28, &qword_280095FC0, &qword_2666DA0C8);
  sub_2666B2A70(v32, &qword_280095FC8, &qword_2666DA0D0);
  sub_2666B2A70(v33, &qword_280095FD0, &qword_2666DA0D8);
  return sub_2666B2A70(v35, &qword_280095FD8, &qword_2666DA0E0);
}

void sub_2666C29DC()
{
  OUTLINED_FUNCTION_17_0();
  v80 = v0;
  v77 = sub_2666D8B3C();
  v1 = OUTLINED_FUNCTION_3(v77);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_1();
  v8 = v7 - v6;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096010, &qword_2666DA110);
  OUTLINED_FUNCTION_3(v78);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v13);
  v15 = &v72 - v14;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800960A0, &qword_2666DA178);
  OUTLINED_FUNCTION_2(v79);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_23();
  v76 = v19;
  v20 = type metadata accessor for ComposeEventSnippet();
  v21 = OUTLINED_FUNCTION_10(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096008, &qword_2666DA108);
  OUTLINED_FUNCTION_3(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v30);
  v34 = &v72 - v33;
  v35 = *(v31 + 2);
  if (v35)
  {
    v75 = v27;
    v36 = *(v31 + 1);
    v37 = v31;
    v38 = v32;
    v83 = sub_2666D807C();
    v84 = MEMORY[0x277D63868];
    __swift_allocate_boxed_opaque_existential_1(&v81);

    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_0_2();
    sub_2666C564C(v37, &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v39);
    v40 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v41 = (v25 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    sub_2666C5404(v26, v42 + v40);
    v43 = (v42 + v41);
    *v43 = v36;
    v43[1] = v35;
    sub_2666D8AFC();
    OUTLINED_FUNCTION_6_0();
    sub_2666C5B28(v44, v45);
    sub_2666D8BDC();
    v46 = v75;
    (*(v38 + 16))(v76, v34, v75);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_14_0(&qword_2800960B0, &qword_280096008, &qword_2666DA108);
    OUTLINED_FUNCTION_3_0();
    v49 = sub_2666C5B28(v47, v48);
    v81 = v77;
    v82 = v49;
    OUTLINED_FUNCTION_2_1();
    swift_getOpaqueTypeConformance2();
    sub_2666D868C();
    (*(v38 + 8))(v34, v46);
  }

  else
  {
    v73 = v10;
    v74 = v3;
    v51 = *v31;
    if (v51 == 2 || (v72 = v31, LOBYTE(v81) = v51, v85 = 0, sub_2666C56D0(), (sub_2666D8D2C() & 1) == 0))
    {
      v50 = 1;
      goto LABEL_10;
    }

    v75 = v27;
    sub_2666D85EC();
    if (qword_280095990 != -1)
    {
      OUTLINED_FUNCTION_15_0();
    }

    v52 = qword_2800978F0;
    OUTLINED_FUNCTION_31();
    v53 = sub_2666D87DC();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v83 = MEMORY[0x277CE0BD8];
    v84 = MEMORY[0x277D638E8];
    v60 = swift_allocObject();
    v81 = v60;
    *(v60 + 16) = v53;
    *(v60 + 24) = v55;
    *(v60 + 32) = v57 & 1;
    *(v60 + 40) = v59;
    sub_2666D8B2C();
    OUTLINED_FUNCTION_0_2();
    sub_2666C564C(v72, &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v61);
    v62 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v63 = swift_allocObject();
    sub_2666C5404(v26, v63 + v62);
    OUTLINED_FUNCTION_3_0();
    v66 = sub_2666C5B28(v64, v65);
    v67 = v15;
    v68 = v77;
    sub_2666D88BC();

    (*(v74 + 8))(v8, v68);
    v69 = v73;
    v70 = v78;
    (*(v73 + 16))(v76, v67, v78);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_14_0(&qword_2800960B0, &qword_280096008, &qword_2666DA108);
    v81 = v68;
    v82 = v66;
    OUTLINED_FUNCTION_2_1();
    swift_getOpaqueTypeConformance2();
    sub_2666D868C();
    (*(v69 + 8))(v67, v70);
  }

  v50 = 0;
LABEL_10:
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800960A8, &qword_2666DA180);
  __swift_storeEnumTagSinglePayload(v80, v50, 1, v71);
  OUTLINED_FUNCTION_16();
}

void sub_2666C30B0()
{
  OUTLINED_FUNCTION_17_0();
  v190 = v1;
  v185 = sub_2666D8B3C();
  v2 = OUTLINED_FUNCTION_3(v185);
  v163 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_18_0(v7 - v6);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096010, &qword_2666DA110);
  OUTLINED_FUNCTION_3(v178);
  v165 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_18_0(v12);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096018, &qword_2666DA118);
  OUTLINED_FUNCTION_2(v175);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_18_0(v16);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096020, &qword_2666DA120);
  OUTLINED_FUNCTION_2(v176);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_18_0(v20);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096008, &qword_2666DA108);
  OUTLINED_FUNCTION_3(v171);
  v168 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_18_0(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FC8, &qword_2666DA0D0);
  v27 = OUTLINED_FUNCTION_10_0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_30();
  v187 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096028, &qword_2666DA128);
  v33 = OUTLINED_FUNCTION_10_0(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_30();
  v184 = v37;
  v38 = type metadata accessor for ComposeEventSnippet();
  v39 = OUTLINED_FUNCTION_10(v38);
  v182 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  v188 = &v154 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096030, &unk_2666DA130);
  v43 = OUTLINED_FUNCTION_3(v183);
  v181 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_0();
  v180 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_30();
  v189 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  v51 = OUTLINED_FUNCTION_10_0(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v54);
  v56 = &v154 - v55;
  v57 = sub_2666D7F2C();
  v58 = OUTLINED_FUNCTION_3(v57);
  v186 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_18_0(&v154 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_30();
  v179 = v63;
  MEMORY[0x28223BE20](v64);
  v66 = &v154 - v65;
  v67 = sub_2666D81FC();
  v68 = v0;
  sub_2666C1CC0(&v0[*(v67 + 28)], v56, &qword_280095A78, &unk_2666DAB30);
  if (OUTLINED_FUNCTION_37(v56) != 1)
  {
    v94 = v186;
    v96 = v186 + 32;
    v95 = *(v186 + 32);
    v95(v66, v56, v57);
    v159 = sub_2666D807C();
    *(&v192 + 1) = v159;
    v193 = MEMORY[0x277D63868];
    __swift_allocate_boxed_opaque_existential_1(&v191);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_0_2();
    v160 = v67;
    v166 = v68;
    v97 = v188;
    sub_2666C564C(v68, v188, v98);
    v100 = v94 + 16;
    v99 = *(v94 + 16);
    v101 = v179;
    v165 = v66;
    v155 = v99;
    v99(v179, v66, v57);
    v102 = *(v182 + 80);
    v103 = (v102 + 16) & ~v102;
    v104 = v103 + v42;
    v105 = *(v100 + 64);
    v158 = v104 + 1;
    v106 = (v104 + 1 + v105) & ~v105;
    v163 = v102 | 7;
    v154 = v105;
    v107 = swift_allocObject();
    v182 = v57;
    v108 = v107;
    v164 = v103;
    sub_2666C5404(v97, v107 + v103);
    v161 = v104;
    *(v108 + v104) = 1;
    v156 = v106;
    v162 = v95;
    v157 = v96;
    v95((v108 + v106), v101, v182);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096058, &qword_2666DA148);
    OUTLINED_FUNCTION_7();
    sub_2666B2B90(v110, &qword_280096058, &qword_2666DA148);
    v111 = v182;
    sub_2666D8BDC();
    v112 = v160;
    v113 = v166;
    v114 = v169;
    sub_2666C1CC0(v166 + *(v160 + 32), v169, &qword_280095A78, &unk_2666DAB30);
    if (OUTLINED_FUNCTION_37(v114) == 1)
    {
      sub_2666B2A70(v114, &qword_280095A78, &unk_2666DAB30);
      v115 = 1;
      v117 = v183;
      v116 = v184;
      v118 = v188;
      v119 = v171;
      v120 = v161;
    }

    else
    {
      v121 = v170;
      v169 = v109;
      v162(v170, v114, v111);
      v193 = 0;
      v191 = 0u;
      v192 = 0u;
      OUTLINED_FUNCTION_0_2();
      v122 = v113;
      v123 = v188;
      sub_2666C564C(v122, v188, v124);
      v125 = v179;
      v155(v179, v121, v111);
      v126 = v156;
      v127 = swift_allocObject();
      OUTLINED_FUNCTION_29(v127);
      sub_2666C5404(v123, v128);
      v120 = v161;
      *(v111 + v161) = 0;
      v162(v111 + v126, v125, v111);
      v129 = v180;
      sub_2666D8BDC();
      (*(v186 + 8))(v170, v111);
      v117 = v183;
      v116 = v184;
      (*(v181 + 32))(v184, v129, v183);
      v115 = 0;
      v118 = v123;
      v113 = v166;
      v119 = v171;
    }

    v130 = 1;
    __swift_storeEnumTagSinglePayload(v116, v115, 1, v117);
    v131 = *(v113 + *(v112 + 40));
    v132 = v189;
    if (v131 != 4)
    {
      *(&v192 + 1) = v159;
      v193 = MEMORY[0x277D63868];
      __swift_allocate_boxed_opaque_existential_1(&v191);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_0_2();
      sub_2666C564C(v113, v118, v133);
      v134 = swift_allocObject();
      OUTLINED_FUNCTION_29(v134);
      sub_2666C5404(v118, v135);
      *(v120 + 1) = v131;
      sub_2666D8AFC();
      OUTLINED_FUNCTION_6_0();
      sub_2666C5B28(v136, v137);
      v138 = v167;
      sub_2666D8BDC();
      (*(v168 + 32))(v187, v138, v119);
      v130 = 0;
    }

    v139 = v187;
    __swift_storeEnumTagSinglePayload(v187, v130, 1, v119);
    v141 = v180;
    v140 = v181;
    v142 = *(v181 + 16);
    v142(v180, v132, v117);
    v143 = v172;
    sub_2666C1CC0(v116, v172, &qword_280096028, &qword_2666DA128);
    v144 = v173;
    sub_2666C1CC0(v139, v173, &qword_280095FC8, &qword_2666DA0D0);
    v145 = v174;
    v142(v174, v141, v117);
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096068, &qword_2666DA150);
    sub_2666C1CC0(v143, v145 + *(v146 + 48), &qword_280096028, &qword_2666DA128);
    sub_2666C1CC0(v144, v145 + *(v146 + 64), &qword_280095FC8, &qword_2666DA0D0);
    sub_2666B2A70(v144, &qword_280095FC8, &qword_2666DA0D0);
    sub_2666B2A70(v143, &qword_280096028, &qword_2666DA128);
    v147 = *(v140 + 8);
    v148 = v183;
    v147(v141, v183);
    sub_2666C1CC0(v145, v177, &qword_280096020, &qword_2666DA120);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_7();
    sub_2666B2B90(v149, &qword_280096020, &qword_2666DA120);
    OUTLINED_FUNCTION_3_0();
    v152 = sub_2666C5B28(v150, v151);
    *&v191 = v185;
    *(&v191 + 1) = v152;
    OUTLINED_FUNCTION_2_1();
    swift_getOpaqueTypeConformance2();
    sub_2666D868C();
    sub_2666B2A70(v145, &qword_280096020, &qword_2666DA120);
    sub_2666B2A70(v187, &qword_280095FC8, &qword_2666DA0D0);
    sub_2666B2A70(v184, &qword_280096028, &qword_2666DA128);
    v147(v189, v148);
    (*(v186 + 8))(v165, v182);
    goto LABEL_13;
  }

  v189 = v42;
  v69 = v185;
  v70 = v188;
  sub_2666B2A70(v56, &qword_280095A78, &unk_2666DAB30);
  v71 = 1;
  if (*v0 != 2)
  {
    LOBYTE(v191) = *v0;
    v194 = 1;
    sub_2666C56D0();
    if (sub_2666D8D2C())
    {
      sub_2666D85EC();
      if (qword_280095990 != -1)
      {
        OUTLINED_FUNCTION_15_0();
      }

      v72 = qword_2800978F0;
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_12();
      v73 = sub_2666D87DC();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      *(&v192 + 1) = MEMORY[0x277CE0BD8];
      v193 = MEMORY[0x277D638E8];
      v80 = swift_allocObject();
      *&v191 = v80;
      *(v80 + 16) = v73;
      *(v80 + 24) = v75;
      *(v80 + 32) = v77 & 1;
      *(v80 + 40) = v79;
      v81 = v162;
      sub_2666D8B2C();
      OUTLINED_FUNCTION_0_2();
      sub_2666C564C(v68, v70, v82);
      v83 = (*(v182 + 80) + 16) & ~*(v182 + 80);
      v84 = swift_allocObject();
      sub_2666C5404(v70, v84 + v83);
      OUTLINED_FUNCTION_3_0();
      v87 = sub_2666C5B28(v85, v86);
      v88 = v164;
      sub_2666D88BC();

      (*(v163 + 8))(v81, v69);
      v89 = v165;
      v90 = v178;
      (*(v165 + 2))(v177, v88, v178);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7();
      sub_2666B2B90(v91, v92, v93);
      *&v191 = v69;
      *(&v191 + 1) = v87;
      OUTLINED_FUNCTION_2_1();
      swift_getOpaqueTypeConformance2();
      sub_2666D868C();
      (*(v89 + 1))(v88, v90);
LABEL_13:
      v71 = 0;
    }
  }

  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096038, &qword_2666DA140);
  __swift_storeEnumTagSinglePayload(v190, v71, 1, v153);
  OUTLINED_FUNCTION_16();
}

void sub_2666C403C()
{
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_19();
  v3 = type metadata accessor for ComposeEventSnippet();
  v4 = OUTLINED_FUNCTION_10(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096008, &qword_2666DA108);
  OUTLINED_FUNCTION_3(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21();
  v15 = (v1 + *(sub_2666D81FC() + 48));
  v16 = v15[1];
  if (v16)
  {
    v32 = v0;
    v17 = *v15;
    v33[3] = sub_2666D807C();
    v33[4] = MEMORY[0x277D63868];
    __swift_allocate_boxed_opaque_existential_1(v33);

    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_0_2();
    sub_2666C564C(v1, &v33[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
    v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v20 = swift_allocObject();
    sub_2666C5404(&v33[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v21 = v17;
    v21[1] = v16;
    sub_2666D8AFC();
    OUTLINED_FUNCTION_6_0();
    sub_2666C5B28(v22, v23);
    sub_2666D8BDC();
    (*(v11 + 32))(v32, v2, v9);
    OUTLINED_FUNCTION_34();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v9);
    OUTLINED_FUNCTION_16();
  }

  else
  {
    OUTLINED_FUNCTION_16();

    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  }
}

uint64_t sub_2666C42BC()
{
  OUTLINED_FUNCTION_19();
  v3 = type metadata accessor for ComposeEventSnippet();
  v4 = OUTLINED_FUNCTION_10(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FE8, &qword_2666DA0F0);
  OUTLINED_FUNCTION_3(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21();
  if (*(*(v1 + *(sub_2666D81FC() + 44)) + 16))
  {
    v23[3] = sub_2666D807C();
    v23[4] = MEMORY[0x277D63868];
    __swift_allocate_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_0_2();
    sub_2666C564C(v1, &v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
    v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v17 = swift_allocObject();
    sub_2666C5404(&v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FF0, &unk_2666DA0F8);
    sub_2666C5514();
    sub_2666D8BDC();
    (*(v11 + 32))(v0, v2, v9);
    OUTLINED_FUNCTION_34();
    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v9);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(v0, 1, 1, v9);
  }
}

uint64_t sub_2666C450C(unsigned __int8 a1, void (*a2)(uint64_t))
{
  v3 = v2;
  v6 = a1;
  v7 = type metadata accessor for ComposeEventSnippet();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  if (v6 == 7)
  {
    a2(v10);
    v11 = sub_2666D87FC();
    sub_2666B2B2C(v17, v18, v19);

    v20 = MEMORY[0x277CE11C8];
    v21 = MEMORY[0x277D63A60];
    v17 = v11;
  }

  else
  {
    (a2)(&v17, v10);
    v12 = sub_2666D87FC();
    sub_2666B2B2C(v17, v18, v19);

    v20 = MEMORY[0x277CE11C8];
    v21 = MEMORY[0x277D63A60];
    v17 = v12;
    sub_2666C564C(v3, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposeEventSnippet);
    v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v14 = swift_allocObject();
    sub_2666C5404(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
    *(v14 + v13 + v9) = a1;
  }

  return sub_2666D8AEC();
}

void sub_2666C4714()
{
  v1 = OUTLINED_FUNCTION_25();
  v2 = OUTLINED_FUNCTION_10_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_1();
  sub_2666C564C(v0, v6 - v5, MEMORY[0x277D55908]);
  sub_2666D818C();
  sub_2666D8E3C();
  __break(1u);
}

uint64_t sub_2666C47E4()
{
  sub_2666B47DC();
  if (qword_280095990 != -1)
  {
    swift_once();
  }

  v0 = qword_2800978F0;
  v1 = sub_2666D87DC();
  v3 = v2;
  v5 = v4 & 1;
  sub_2666D87FC();
  sub_2666B2B2C(v1, v3, v5);

  return sub_2666D8AEC();
}

void sub_2666C491C()
{
  OUTLINED_FUNCTION_17_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for ComposeEventSnippet();
  v9 = OUTLINED_FUNCTION_10(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v19 = v5;
  v20 = v3;
  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v14 = sub_2666D87FC();
  v22 = MEMORY[0x277CE11C8];
  v23 = MEMORY[0x277D63A60];
  v19 = v14;
  OUTLINED_FUNCTION_0_2();
  sub_2666C564C(v7, &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  sub_2666C5404(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  *(v17 + v16 + v13) = v1;
  sub_2666D8AEC();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_2666C4A70(uint64_t a1)
{
  v2 = type metadata accessor for ComposeEventSnippet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = *(a1 + *(sub_2666D81FC() + 44));
  sub_2666C564C(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposeEventSnippet);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2666C5404(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959E0, &qword_2666D9570);
  sub_2666D7F5C();
  sub_2666D8AFC();
  sub_2666B2B90(&qword_2800959F0, &qword_2800959E0, &qword_2666D9570);
  sub_2666C5B28(&qword_280096000, MEMORY[0x277D63C50]);
  sub_2666C5B28(&qword_280095A18, MEMORY[0x277D558F0]);
  return sub_2666D8A4C();
}

uint64_t sub_2666C4CA0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_2666D87FC();
  return sub_2666D8AEC();
}

uint64_t sub_2666C4D24@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v39 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096070, &qword_2666DA158);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = sub_2666D8AFC();
  v40 = *(v13 - 8);
  v14 = *(v40 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v37 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  v41 = a3;
  if (a2)
  {
    v23 = 1;
  }

  else
  {
    v23 = 3;
  }

  sub_2666C450C(v23, sub_2666C5AA0);
  v24 = sub_2666D81FC();
  if (*(a1 + *(v24 + 36)))
  {
    v25 = 1;
  }

  else
  {
    MEMORY[0x28223BE20](v24);
    *(&v37 - 2) = a3;
    if (a2)
    {
      v26 = 2;
    }

    else
    {
      v26 = 4;
    }

    sub_2666C450C(v26, sub_2666C5AE4);
    (*(v40 + 32))(v12, v20, v13);
    v25 = 0;
  }

  __swift_storeEnumTagSinglePayload(v12, v25, 1, v13);
  v27 = v40;
  v28 = *(v40 + 16);
  v28(v17, v22, v13);
  v29 = v38;
  sub_2666C1CC0(v12, v38, &qword_280096070, &qword_2666DA158);
  v30 = v22;
  v31 = v17;
  v32 = v29;
  v33 = v39;
  v28(v39, v31, v13);
  v34 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096078, &qword_2666DA160) + 48)];
  sub_2666C1CC0(v32, v34, &qword_280096070, &qword_2666DA158);
  sub_2666B2A70(v12, &qword_280096070, &qword_2666DA158);
  v35 = *(v27 + 8);
  v35(v30, v13);
  sub_2666B2A70(v32, &qword_280096070, &qword_2666DA158);
  return (v35)(v31, v13);
}

void sub_2666C5084()
{
  OUTLINED_FUNCTION_17_0();
  v53 = v1;
  v54 = v2;
  v52 = v3;
  OUTLINED_FUNCTION_19();
  v4 = sub_2666D7E2C();
  v5 = OUTLINED_FUNCTION_10_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v8 = sub_2666D804C();
  v9 = OUTLINED_FUNCTION_10_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  v12 = sub_2666D802C();
  v13 = OUTLINED_FUNCTION_10_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_1();
  v16 = sub_2666D7FFC();
  v17 = OUTLINED_FUNCTION_10_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096080, &qword_2666DA168);
  OUTLINED_FUNCTION_10_0(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096088, &qword_2666DA170);
  OUTLINED_FUNCTION_10_0(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v27);
  v28 = sub_2666D7F1C();
  v29 = OUTLINED_FUNCTION_2(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_21();
  v32 = sub_2666D7F2C();
  v33 = OUTLINED_FUNCTION_3(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_1();
  v39 = (*(v38 + 16))(v37 - v36, v52);
  v53(v39);
  sub_2666D7E6C();
  OUTLINED_FUNCTION_34();
  v44 = __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v54(v44);
  sub_2666D7E5C();
  OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  sub_2666D7F7C();
  sub_2666D801C();
  sub_2666D803C();
  sub_2666D7E1C();
  sub_2666D7E8C();
  sub_2666C5B28(&qword_280096090, MEMORY[0x277CC9428]);
  sub_2666C5B28(&qword_280096098, MEMORY[0x277CC9578]);
  *v0 = sub_2666D87CC();
  *(v0 + 8) = v49;
  *(v0 + 16) = v50 & 1;
  *(v0 + 24) = v51;
  OUTLINED_FUNCTION_16();
}

uint64_t sub_2666C5404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposeEventSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666C5498(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_19();
  v2 = type metadata accessor for ComposeEventSnippet();
  OUTLINED_FUNCTION_10_0(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

unint64_t sub_2666C5514()
{
  result = qword_280095FF8;
  if (!qword_280095FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095FF0, &unk_2666DA0F8);
    sub_2666C5B28(&qword_280096000, MEMORY[0x277D63C50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095FF8);
  }

  return result;
}

uint64_t sub_2666C55C8(uint64_t *a1)
{
  v2 = type metadata accessor for ComposeEventSnippet();
  OUTLINED_FUNCTION_10_0(v2);
  v4 = *(v3 + 80);

  return sub_2666C4CA0(a1);
}

uint64_t sub_2666C564C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_12();
  v8(v7);
  return a2;
}

unint64_t sub_2666C56D0()
{
  result = qword_280096040;
  if (!qword_280096040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096040);
  }

  return result;
}

uint64_t sub_2666C5724()
{
  sub_2666B2B2C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2666C5778()
{
  OUTLINED_FUNCTION_19();
  v0 = type metadata accessor for ComposeEventSnippet();
  OUTLINED_FUNCTION_10(v0);
  v2 = v1;
  v4 = v3;
  v5 = *(v2 + 80);
  v6 = *(v4 + 64);
  OUTLINED_FUNCTION_28(v5);

  return sub_2666C47E4();
}

uint64_t objectdestroy_29Tm()
{
  v1 = type metadata accessor for ComposeEventSnippet();
  OUTLINED_FUNCTION_11_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v27 = *(v5 + 64);
  v6 = sub_2666D7F2C();
  OUTLINED_FUNCTION_3(v6);
  v8 = v7;
  v9 = *(v7 + 80);
  v28 = *(v10 + 64);
  v11 = v0 + v4;
  v12 = *(v0 + v4 + 16);

  v13 = *(v0 + v4 + 32);

  v14 = sub_2666D81FC();
  if (!OUTLINED_FUNCTION_37(v0 + v4 + v14[7]))
  {
    v15 = OUTLINED_FUNCTION_35();
    v16(v15);
  }

  if (!OUTLINED_FUNCTION_37(v11 + v14[8]))
  {
    v17 = OUTLINED_FUNCTION_35();
    v18(v17);
  }

  v19 = v3 | v9;
  v20 = (v27 + v4 + v9 + 1) & ~v9;
  v21 = *(v11 + v14[11]);

  v22 = *(v11 + v14[12] + 8);

  v23 = *(v1 + 20);
  v24 = sub_2666D8B9C();
  OUTLINED_FUNCTION_2(v24);
  (*(v25 + 8))(v11 + v23);
  (*(v8 + 8))(v0 + v20, v6);

  return MEMORY[0x2821FE8E8](v0, v20 + v28, v19 | 7);
}

uint64_t sub_2666C59D4()
{
  OUTLINED_FUNCTION_19();
  v2 = type metadata accessor for ComposeEventSnippet();
  OUTLINED_FUNCTION_10(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = sub_2666D7F2C();
  OUTLINED_FUNCTION_10_0(v7);
  v9 = *(v1 + v6);
  v10 = v1 + ((v6 + *(v8 + 80) + 1) & ~*(v8 + 80));

  return sub_2666C4D24(v1 + v4, v9, v10, v0);
}

uint64_t sub_2666C5B28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_3()
{
  OUTLINED_FUNCTION_17_0();
  v3 = type metadata accessor for ComposeEventSnippet();
  OUTLINED_FUNCTION_11_0(v3);
  v6 = *(v5 + 64);
  v7 = v0 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v8 = *(v7 + 16);

  v9 = *(v7 + 32);

  v10 = sub_2666D81FC();
  v11 = OUTLINED_FUNCTION_24(v10);
  if (!__swift_getEnumTagSinglePayload(v7 + v2, 1, v11))
  {
    OUTLINED_FUNCTION_9_1();
    (*(v12 + 8))(v7 + v2, v11);
  }

  v13 = v1[8];
  if (!__swift_getEnumTagSinglePayload(v7 + v13, 1, v11))
  {
    OUTLINED_FUNCTION_9_1();
    (*(v14 + 8))(v7 + v13, v11);
  }

  v15 = *(v7 + v1[11]);

  v16 = *(v7 + v1[12] + 8);

  v17 = *(v3 + 20);
  v18 = sub_2666D8B9C();
  OUTLINED_FUNCTION_2(v18);
  (*(v19 + 8))(v7 + v17);
  OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE8E8](v20, v21, v22);
}

void sub_2666C5D00()
{
  v0 = type metadata accessor for ComposeEventSnippet();
  OUTLINED_FUNCTION_10_0(v0);
  v2 = *(v1 + 80);
  sub_2666C4714();
}

uint64_t objectdestroy_15Tm()
{
  OUTLINED_FUNCTION_17_0();
  v2 = type metadata accessor for ComposeEventSnippet();
  OUTLINED_FUNCTION_11_0(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = v0 + v4;
  v8 = *(v0 + v4 + 16);

  v9 = *(v0 + v4 + 32);

  v10 = sub_2666D81FC();
  OUTLINED_FUNCTION_24(v10);
  if (!OUTLINED_FUNCTION_20())
  {
    OUTLINED_FUNCTION_9_1();
    v12 = *(v11 + 8);
    v13 = OUTLINED_FUNCTION_33();
    v14(v13);
  }

  v15 = v1[8];
  if (!OUTLINED_FUNCTION_20())
  {
    OUTLINED_FUNCTION_9_1();
    v17 = *(v16 + 8);
    v18 = OUTLINED_FUNCTION_33();
    v19(v18);
  }

  v20 = *(v7 + v1[11]);

  v21 = *(v7 + v1[12] + 8);

  v22 = *(v2 + 20);
  v23 = sub_2666D8B9C();
  OUTLINED_FUNCTION_2(v23);
  (*(v24 + 8))(v7 + v22);
  v25 = *(v0 + ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE8E8](v26, v27, v28);
}

void sub_2666C5F04()
{
  v1 = type metadata accessor for ComposeEventSnippet();
  OUTLINED_FUNCTION_10(v1);
  v4 = (v0 + ((*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  sub_2666C491C();
}

uint64_t objectdestroy_12Tm()
{
  OUTLINED_FUNCTION_17_0();
  v2 = type metadata accessor for ComposeEventSnippet();
  OUTLINED_FUNCTION_11_0(v2);
  v5 = *(v4 + 64);
  v6 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v7 = *(v6 + 16);

  v8 = *(v6 + 32);

  v9 = sub_2666D81FC();
  OUTLINED_FUNCTION_24(v9);
  if (!OUTLINED_FUNCTION_20())
  {
    OUTLINED_FUNCTION_9_1();
    v11 = *(v10 + 8);
    v12 = OUTLINED_FUNCTION_33();
    v13(v12);
  }

  v14 = v1[8];
  if (!OUTLINED_FUNCTION_20())
  {
    OUTLINED_FUNCTION_9_1();
    v16 = *(v15 + 8);
    v17 = OUTLINED_FUNCTION_33();
    v18(v17);
  }

  v19 = *(v6 + v1[11]);

  v20 = *(v6 + v1[12] + 8);

  v21 = *(v2 + 20);
  v22 = sub_2666D8B9C();
  OUTLINED_FUNCTION_2(v22);
  (*(v23 + 8))(v6 + v21);
  OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE8E8](v24, v25, v26);
}

void sub_2666C6124()
{
  v0 = type metadata accessor for ComposeEventSnippet();
  OUTLINED_FUNCTION_10(v0);
  v2 = v1;
  v4 = v3;
  v5 = *(v2 + 80);
  v6 = *(v4 + 64);
  OUTLINED_FUNCTION_28(v5);

  sub_2666C4714();
}

uint64_t OUTLINED_FUNCTION_14_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_2666B2B90(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20()
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_24(uint64_t a1)
{
  v2 = *(a1 + 28);

  return sub_2666D7F2C();
}

uint64_t OUTLINED_FUNCTION_25()
{

  return sub_2666D81FC();
}

uint64_t OUTLINED_FUNCTION_26()
{

  return sub_2666D806C();
}

uint64_t OUTLINED_FUNCTION_28@<X0>(uint64_t a1@<X8>)
{
  result = v2 + ((a1 + 16) & ~a1);
  v4 = *(result + v1);
  return result;
}

uint64_t OUTLINED_FUNCTION_37(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

id sub_2666C6450()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CC5A40]) initWithEKOptions_];
    if (!v3)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
    }

    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t CalendarSnippetProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t CalendarSnippetProvider.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t CalendarSnippetProvider.snippet(for:mode:idiom:)(uint64_t a1)
{
  v285 = a1;
  v2 = type metadata accessor for EventListSnippet();
  v3 = OUTLINED_FUNCTION_10_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_2();
  v281 = v6;
  OUTLINED_FUNCTION_13_0();
  v278 = type metadata accessor for ComposeEventSnippet();
  v7 = OUTLINED_FUNCTION_2(v278);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_2();
  v280 = v10;
  OUTLINED_FUNCTION_13_0();
  v11 = sub_2666D81FC();
  v12 = OUTLINED_FUNCTION_10_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_2();
  v279 = v15;
  OUTLINED_FUNCTION_13_0();
  v276 = type metadata accessor for PromptForTitleSnippet();
  v16 = OUTLINED_FUNCTION_2(v276);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_2();
  v277 = v19;
  OUTLINED_FUNCTION_13_0();
  v258 = type metadata accessor for EventStatusSnippet();
  v20 = OUTLINED_FUNCTION_2(v258);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_2();
  v259 = v23;
  OUTLINED_FUNCTION_13_0();
  v254 = type metadata accessor for SingleEventSnippet();
  v24 = OUTLINED_FUNCTION_2(v254);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_2();
  v255 = v27;
  OUTLINED_FUNCTION_13_0();
  v271 = type metadata accessor for PunchoutButtonSnippet();
  v28 = OUTLINED_FUNCTION_2(v271);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_2();
  v272 = v31;
  OUTLINED_FUNCTION_13_0();
  v32 = type metadata accessor for ConflictingEventConfirmationSnippet();
  v33 = OUTLINED_FUNCTION_10_0(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_2();
  v275 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C60, &unk_2666D9990);
  v38 = OUTLINED_FUNCTION_10_0(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  v274 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v43);
  v273 = &v254 - v44;
  OUTLINED_FUNCTION_13_0();
  v45 = sub_2666D825C();
  v46 = OUTLINED_FUNCTION_10(v45);
  v284 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_7_0();
  v283 = v68;
  MEMORY[0x28223BE20](v69);
  v71 = &v254 - v70;
  v72 = type metadata accessor for RenderableEvent();
  v73 = OUTLINED_FUNCTION_10(v72);
  v282 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  v78 = MEMORY[0x28223BE20](v77);
  v80 = &v254 - v79;
  v81 = MEMORY[0x28223BE20](v78);
  v83 = &v254 - v82;
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  v86 = MEMORY[0x28223BE20](v85);
  v88 = &v254 - v87;
  v89 = MEMORY[0x28223BE20](v86);
  v91 = &v254 - v90;
  v92 = MEMORY[0x28223BE20](v89);
  v94 = &v254 - v93;
  MEMORY[0x28223BE20](v92);
  v96 = &v254 - v95;
  v256 = type metadata accessor for DisambiguateEventsSnippet();
  v97 = OUTLINED_FUNCTION_2(v256);
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_4_2();
  v257 = v100;
  OUTLINED_FUNCTION_13_0();
  v101 = sub_2666D826C();
  v102 = OUTLINED_FUNCTION_2(v101);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v102);
  v106 = &v254 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2666C8A20(v285, v106, MEMORY[0x277D55930]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v91 = v106[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800960C8, &qword_2666DA198) + 48)];
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_14_1(&v290);
      sub_2666C7ADC(v173, v174, v175);
      OUTLINED_FUNCTION_2_2();
      v176 = v265;
      sub_2666C8A20(v101, v265, v177);
      v178 = sub_2666C6450();
      v179 = v290;
      sub_2666B30A8(v176, v178, v88);
      if (v179)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_9_2();
      v212 = v255;
      sub_2666C7ADC(v88, v255, v213);
      *(v212 + *(v254 + 20)) = v91;
      v91 = sub_2666C7988(&qword_280096150, &qword_2666DA280, type metadata accessor for SingleEventSnippet, sub_2666C86A0);
      v214 = OUTLINED_FUNCTION_20_0();
      sub_2666C82E8(v214, v215);
      goto LABEL_20;
    case 2u:
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_14_1(v286);
      sub_2666C7ADC(v148, v149, v150);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_18_1(v101, v151, &v283);
      v152 = sub_2666C6450();
      OUTLINED_FUNCTION_17_1(v152, v94);
      if (v1)
      {
        goto LABEL_25;
      }

      sub_2666D6464();
      v118 = v153;
      OUTLINED_FUNCTION_3_1();
      v120 = v94;
      goto LABEL_19;
    case 3u:
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800960E0, &qword_2666DA1A8);
      v91 = *&v106[*(v156 + 48)];
      v157 = *(v156 + 64);
      v158 = OUTLINED_FUNCTION_1_6();
      v159 = v266;
      sub_2666C7ADC(v158, v266, v160);
      v161 = &v106[v157];
      v162 = v273;
      sub_2666BC25C(v161, v273);
      OUTLINED_FUNCTION_2_2();
      v163 = v262;
      sub_2666C8A20(v159, v262, v164);
      v165 = v269;
      sub_2666C7B3C(v162, v269);
      v166 = sub_2666C6450();
      v167 = v290;
      sub_2666BB6FC(v163, v91, v165, v166, v275);
      if (v167)
      {
        goto LABEL_27;
      }

      v91 = sub_2666C7988(&qword_280096120, &qword_2666DA270, type metadata accessor for ConflictingEventConfirmationSnippet, sub_2666C84C8);
      v168 = OUTLINED_FUNCTION_20_0();
      sub_2666C82E8(v168, v169);
      goto LABEL_40;
    case 4u:
      v91 = *v106;
      v121 = *(*v106 + 16);
      if (v121)
      {
        *&v287 = MEMORY[0x277D84F90];
        sub_2666C8090(0, v121, 0);
        v122 = 0;
        v123 = v287;
        v285 = v91 + ((*(v284 + 80) + 32) & ~*(v284 + 80));
        do
        {
          if (v122 >= *(v91 + 16))
          {
            __break(1u);
            JUMPOUT(0x2666C77F0);
          }

          v124 = MEMORY[0x277D55918];
          sub_2666C8A20(v285 + *(v284 + 72) * v122, v71, MEMORY[0x277D55918]);
          v125 = v283;
          sub_2666C8A20(v71, v283, v124);
          v126 = sub_2666C6450();
          v127 = v290;
          sub_2666B30A8(v125, v126, v96);
          v290 = v127;
          if (v127)
          {

            OUTLINED_FUNCTION_0_3();
            sub_2666C82E8(v71, v248);

            return v91;
          }

          OUTLINED_FUNCTION_0_3();
          sub_2666C82E8(v71, v128);
          *&v287 = v123;
          v130 = *(v123 + 16);
          v129 = *(v123 + 24);
          if (v130 >= v129 >> 1)
          {
            sub_2666C8090(v129 > 1, v130 + 1, 1);
            v123 = v287;
          }

          ++v122;
          *(v123 + 16) = v130 + 1;
          v131 = v123 + ((*(v282 + 80) + 32) & ~*(v282 + 80));
          v132 = *(v282 + 72);
          OUTLINED_FUNCTION_9_2();
          sub_2666C7ADC(v96, v133, v134);
        }

        while (v121 != v122);
      }

      else
      {
        v211 = *v106;

        v123 = MEMORY[0x277D84F90];
      }

      v109 = v257;
      *v257 = v123;
      v249 = v256;
      v250 = &v109[*(v256 + 20)];
      sub_2666D8B8C();
      v251 = &v109[*(v249 + 24)];
      KeyPath = swift_getKeyPath();
      LOBYTE(v287) = 0;
      LOBYTE(v286[0]) = 1;
      *v251 = KeyPath;
      v251[8] = 0;
      *(v251 + 2) = 0x4030000000000000;
      *(v251 + 3) = 0;
      v251[32] = 1;
      *(v251 + 5) = 1;
      *(v251 + 6) = sub_2666BD078;
      *(v251 + 7) = 0;
      v91 = sub_2666C7988(&qword_2800960F0, &qword_2666DA258, type metadata accessor for DisambiguateEventsSnippet, sub_2666C83D8);
      v111 = type metadata accessor for DisambiguateEventsSnippet;
LABEL_45:
      v154 = v111;
      v155 = v109;
      goto LABEL_46;
    case 5u:
      v182 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800960D8, &qword_2666DA1A0) + 48);
      v183 = OUTLINED_FUNCTION_1_6();
      v159 = v267;
      sub_2666C7ADC(v183, v267, v184);
      v185 = &v106[v182];
      v162 = v274;
      sub_2666BC25C(v185, v274);
      OUTLINED_FUNCTION_2_2();
      v186 = v264;
      sub_2666C8A20(v159, v264, v187);
      v188 = sub_2666C6450();
      v189 = v290;
      sub_2666B30A8(v186, v188, v91);
      if (v189)
      {
LABEL_27:
        sub_2666B2A70(v162, &qword_280095C60, &unk_2666D9990);
        OUTLINED_FUNCTION_0_3();
        v181 = v159;
        goto LABEL_34;
      }

      sub_2666D6738();
      v217 = v216;
      OUTLINED_FUNCTION_3_1();
      sub_2666C82E8(v91, v218);
      sub_2666C7828(v217);
      OUTLINED_FUNCTION_22_0();
LABEL_40:
      sub_2666B2A70(v162, &qword_280095C60, &unk_2666D9990);
      OUTLINED_FUNCTION_0_3();
      v155 = v159;
      goto LABEL_46;
    case 6u:
      v193 = OUTLINED_FUNCTION_1_6();
      v194 = v268;
      sub_2666C7ADC(v193, v268, v195);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_18_1(v194, v196, &v287);
      v197 = sub_2666C6450();
      v198 = v261;
      OUTLINED_FUNCTION_17_1(v197, v261);
      if (v1)
      {
        OUTLINED_FUNCTION_0_3();
        v181 = v194;
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_14_1(&v280);
      sub_2666C8A20(v219, v220, v221);
      v222 = v258;
      v223 = *(v258 + 24);
      v91 = *MEMORY[0x277D63D60];
      v224 = sub_2666D8BAC();
      OUTLINED_FUNCTION_2(v224);
      (*(v225 + 104))(v101 + v223, v91);
      v226 = sub_2666D85EC();
      *(v101 + *(v222 + 20)) = 1;
      OUTLINED_FUNCTION_21_0(v226, v227, v228, v229, v101 + *(v222 + 28));
      OUTLINED_FUNCTION_11_1();
      sub_2666C8B6C(v230, v231);
      sub_2666D87FC();
      OUTLINED_FUNCTION_8_0();
      sub_2666C82E8(v101, v232);
      OUTLINED_FUNCTION_3_1();
      sub_2666C82E8(v198, v233);
      sub_2666C7828(v101);
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_0_3();
      v155 = v194;
      goto LABEL_46;
    case 7u:
      v170 = *v106;
      v109 = v277;
      *v277 = v170;
      v286[0] = 0;
      v286[1] = 0xE000000000000000;
      sub_2666D89EC();
      v171 = v288;
      *(v109 + 8) = v287;
      *(v109 + 3) = v171;
      v172 = &v109[*(v276 + 24)];
      sub_2666D8B8C();
      v91 = sub_2666C7988(&qword_280096168, &qword_2666DA288, type metadata accessor for PromptForTitleSnippet, sub_2666C878C);
      v111 = type metadata accessor for PromptForTitleSnippet;
      goto LABEL_45;
    case 8u:
      v206 = v279;
      sub_2666C7ADC(v106, v279, MEMORY[0x277D55908]);
      v207 = v280;
      sub_2666C8A20(v206, v280, MEMORY[0x277D55908]);
      v208 = v207 + *(v278 + 20);
      sub_2666D8B8C();
      v91 = sub_2666C7988(&qword_280096180, &qword_2666DA290, type metadata accessor for ComposeEventSnippet, sub_2666C8878);
      v209 = OUTLINED_FUNCTION_20_0();
      sub_2666C82E8(v209, v210);
      v154 = MEMORY[0x277D55908];
      v155 = v206;
      goto LABEL_46;
    case 9u:
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_14_1(&v293);
      sub_2666C7ADC(v142, v143, v144);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_18_1(v101, v145, v289);
      v146 = sub_2666C6450();
      OUTLINED_FUNCTION_17_1(v146, v83);
      if (v1)
      {
        goto LABEL_25;
      }

      sub_2666D6AA0();
      v118 = v147;
      OUTLINED_FUNCTION_3_1();
      v120 = v83;
      goto LABEL_19;
    case 0xAu:
      v199 = v106[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800960C8, &qword_2666DA198) + 48)];
      v200 = OUTLINED_FUNCTION_1_6();
      v201 = v270;
      sub_2666C7ADC(v200, v270, v202);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_18_1(v201, v203, &v288);
      v204 = sub_2666C6450();
      v205 = v263;
      OUTLINED_FUNCTION_17_1(v204, v263);
      if (v1)
      {
        OUTLINED_FUNCTION_0_3();
        v181 = v201;
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_10_1();
      v234 = v259;
      sub_2666C8A20(v205, v259, v235);
      v236 = v258;
      v237 = *(v258 + 24);
      v91 = *MEMORY[0x277D63D60];
      v238 = sub_2666D8BAC();
      OUTLINED_FUNCTION_2(v238);
      (*(v239 + 104))(v234 + v237, v91);
      v240 = sub_2666D85EC();
      *(v234 + *(v236 + 20)) = v199;
      OUTLINED_FUNCTION_21_0(v240, v241, v242, v243, v234 + *(v236 + 28));
      OUTLINED_FUNCTION_11_1();
      sub_2666C8B6C(v244, v245);
      sub_2666D87FC();
      OUTLINED_FUNCTION_8_0();
      sub_2666C82E8(v234, v246);
      OUTLINED_FUNCTION_3_1();
      sub_2666C82E8(v205, v247);
      sub_2666C7828(v234);
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_0_3();
      v155 = v201;
      goto LABEL_46;
    case 0xBu:
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_14_1(&v294);
      sub_2666C7ADC(v112, v113, v114);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_18_1(v101, v115, &v291);
      v116 = sub_2666C6450();
      OUTLINED_FUNCTION_17_1(v116, v80);
      if (v1)
      {
        goto LABEL_25;
      }

      sub_2666D6CD8();
      v118 = v117;
      OUTLINED_FUNCTION_3_1();
      v120 = v80;
      goto LABEL_19;
    case 0xCu:
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_14_1(&v295);
      sub_2666C7ADC(v135, v136, v137);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_18_1(v101, v138, &v292);
      v139 = sub_2666C6450();
      v140 = v260;
      OUTLINED_FUNCTION_17_1(v139, v260);
      if (v1)
      {
LABEL_25:
        OUTLINED_FUNCTION_0_3();
        v181 = v101;
LABEL_34:
        sub_2666C82E8(v181, v180);
      }

      else
      {
        sub_2666D6F40();
        v118 = v141;
        OUTLINED_FUNCTION_3_1();
        v120 = v140;
LABEL_19:
        sub_2666C82E8(v120, v119);
        sub_2666C7828(v118);
        OUTLINED_FUNCTION_22_0();
LABEL_20:
        OUTLINED_FUNCTION_0_3();
        v155 = v101;
LABEL_46:
        sub_2666C82E8(v155, v154);
      }

      return v91;
    case 0xDu:
      v91 = *v106;
      v190 = v106[8];
      v191 = sub_2666C6450();
      v192 = v290;
      sub_2666CC60C(v91, v190, v191, v281);
      if (v192)
      {
        return v91;
      }

      v91 = sub_2666C7988(&qword_2800961A8, &qword_2666DA2A0, type metadata accessor for EventListSnippet, sub_2666C8A80);
      v155 = OUTLINED_FUNCTION_20_0();
      goto LABEL_46;
    default:
      v107 = *v106;
      v108 = v271;
      v109 = v272;
      *v272 = v107;
      v110 = &v109[*(v108 + 20)];
      sub_2666D8B8C();
      v91 = sub_2666C7988(&qword_280096138, &qword_2666DA278, type metadata accessor for PunchoutButtonSnippet, sub_2666C85B4);
      v111 = type metadata accessor for PunchoutButtonSnippet;
      goto LABEL_45;
  }
}

uint64_t sub_2666C7828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096198, &qword_2666DA298);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v14 - v5);
  v7 = &v14 + *(v4 + 36) - v5;
  sub_2666C7E38(v7);
  v8 = *(type metadata accessor for CalendarEnvironmentSetupModifier() + 20);
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = sub_2666D8D3C();
  v11 = [v9 BOOLForKey_];

  v7[v8] = v11;
  *v6 = a1;
  sub_2666C8964();

  v12 = sub_2666D87FC();
  sub_2666B2A70(v6, &qword_280096198, &qword_2666DA298);
  return v12;
}

uint64_t sub_2666C7988(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v22 = a3;
  v23 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v22 - v12;
  v14 = &v22 + *(v11 + 36) - v12;
  sub_2666C7CA4(v14);
  v15 = *(type metadata accessor for CalendarEnvironmentSetupModifier() + 20);
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = sub_2666D8D3C();
  v18 = [v16 BOOLForKey_];

  v14[v15] = v18;
  v19 = sub_2666C8A20(v4, v13, v22);
  v23(v19);
  v20 = sub_2666D87FC();
  sub_2666B2A70(v13, a1, a2);
  return v20;
}

uint64_t sub_2666C7ADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2666C7B3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C60, &unk_2666D9990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CalendarSnippetProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2666C7C04@<X0>(uint64_t *a1@<X8>)
{
  result = CalendarSnippetProvider.__allocating_init()();
  *a1 = result;
  return result;
}

id sub_2666C7C50()
{
  type metadata accessor for CalendarSnippetProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2800978F0 = result;
  return result;
}

uint64_t sub_2666C7CA4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096110, &qword_2666DA260);
  v3 = OUTLINED_FUNCTION_10_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = [objc_opt_self() sharedPreferences];
  v9 = [v8 languageCode];

  if (v9)
  {
    sub_2666D8D4C();

    sub_2666D7F6C();
    v10 = sub_2666D7FFC();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
    return (*(*(v10 - 8) + 32))(a1, v7, v10);
  }

  else
  {
    v12 = sub_2666D7FFC();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
    sub_2666D7FBC();
    result = __swift_getEnumTagSinglePayload(v7, 1, v12);
    if (result != 1)
    {
      return sub_2666B2A70(v7, &qword_280096110, &qword_2666DA260);
    }
  }

  return result;
}

uint64_t sub_2666C7E38@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096110, &qword_2666DA260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = [objc_opt_self() sharedPreferences];
  v7 = [v6 languageCode];

  if (v7)
  {
    sub_2666D8D4C();

    sub_2666D7F6C();
    v8 = sub_2666D7FFC();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
    return (*(*(v8 - 8) + 32))(a1, v5, v8);
  }

  else
  {
    v10 = sub_2666D7FFC();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
    sub_2666D7FBC();
    result = __swift_getEnumTagSinglePayload(v5, 1, v10);
    if (result != 1)
    {
      return sub_2666B2A70(v5, &qword_280096110, &qword_2666DA260);
    }
  }

  return result;
}

uint64_t sub_2666C7FD0(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_2(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    v12 = OUTLINED_FUNCTION_19_0();

    return MEMORY[0x2821FE828](v12);
  }

  else if (a3 != a1)
  {
    v11 = OUTLINED_FUNCTION_19_0();

    return MEMORY[0x2821FE820](v11);
  }

  return result;
}

size_t sub_2666C8090(size_t a1, int64_t a2, char a3)
{
  result = sub_2666C8128(a1, a2, a3, *v3, &qword_280096118, &qword_2666DA268, type metadata accessor for RenderableEvent, type metadata accessor for RenderableEvent);
  *v3 = result;
  return result;
}

size_t sub_2666C80E0(size_t a1, int64_t a2, char a3)
{
  result = sub_2666C8128(a1, a2, a3, *v3, &qword_2800961C0, &qword_2666DA2A8, type metadata accessor for DayEventGroupView.DayEventGroup, type metadata accessor for DayEventGroupView.DayEventGroup);
  *v3 = result;
  return result;
}

size_t sub_2666C8128(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
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
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = a7(0);
  OUTLINED_FUNCTION_10(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((result - v20) / v18);
LABEL_19:
  v23 = *(a7(0) - 8);
  if (v11)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_2666C7FD0(a4 + v24, v14, v21 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v21;
}

uint64_t sub_2666C82E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_2666C83D8()
{
  result = qword_2800960F8;
  if (!qword_2800960F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800960F0, &qword_2666DA258);
    sub_2666C8B6C(&qword_280096100, type metadata accessor for DisambiguateEventsSnippet);
    sub_2666C8B6C(&qword_280096108, type metadata accessor for CalendarEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800960F8);
  }

  return result;
}

unint64_t sub_2666C84C8()
{
  result = qword_280096128;
  if (!qword_280096128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096120, &qword_2666DA270);
    sub_2666C8B6C(&qword_280096130, type metadata accessor for ConflictingEventConfirmationSnippet);
    sub_2666C8B6C(&qword_280096108, type metadata accessor for CalendarEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096128);
  }

  return result;
}

unint64_t sub_2666C85B4()
{
  result = qword_280096140;
  if (!qword_280096140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096138, &qword_2666DA278);
    sub_2666C8B6C(&qword_280096148, type metadata accessor for PunchoutButtonSnippet);
    sub_2666C8B6C(&qword_280096108, type metadata accessor for CalendarEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096140);
  }

  return result;
}

unint64_t sub_2666C86A0()
{
  result = qword_280096158;
  if (!qword_280096158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096150, &qword_2666DA280);
    sub_2666C8B6C(&qword_280096160, type metadata accessor for SingleEventSnippet);
    sub_2666C8B6C(&qword_280096108, type metadata accessor for CalendarEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096158);
  }

  return result;
}

unint64_t sub_2666C878C()
{
  result = qword_280096170;
  if (!qword_280096170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096168, &qword_2666DA288);
    sub_2666C8B6C(&qword_280096178, type metadata accessor for PromptForTitleSnippet);
    sub_2666C8B6C(&qword_280096108, type metadata accessor for CalendarEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096170);
  }

  return result;
}

unint64_t sub_2666C8878()
{
  result = qword_280096188;
  if (!qword_280096188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096180, &qword_2666DA290);
    sub_2666C8B6C(&qword_280096190, type metadata accessor for ComposeEventSnippet);
    sub_2666C8B6C(&qword_280096108, type metadata accessor for CalendarEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096188);
  }

  return result;
}

unint64_t sub_2666C8964()
{
  result = qword_2800961A0;
  if (!qword_2800961A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096198, &qword_2666DA298);
    sub_2666C8B6C(&qword_280096108, type metadata accessor for CalendarEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800961A0);
  }

  return result;
}

uint64_t sub_2666C8A20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2666C8A80()
{
  result = qword_2800961B0;
  if (!qword_2800961B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800961A8, &qword_2666DA2A0);
    sub_2666C8B6C(&qword_2800961B8, type metadata accessor for EventListSnippet);
    sub_2666C8B6C(&qword_280096108, type metadata accessor for CalendarEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800961B0);
  }

  return result;
}

uint64_t sub_2666C8B6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_17_1@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(v3 - 72);

  return sub_2666B30A8(v2, a1, a2);
}

uint64_t OUTLINED_FUNCTION_18_1@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_2666C8A20(a1, v4, a2);
}

uint64_t OUTLINED_FUNCTION_21_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_0()
{
}

uint64_t sub_2666C8D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RenderableEvent();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2666D8B9C();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2666C8DF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RenderableEvent();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2666D8B9C();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for PunchoutToEventDetailsModifier()
{
  result = qword_2800961C8;
  if (!qword_2800961C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666C8EE4()
{
  result = type metadata accessor for RenderableEvent();
  if (v1 <= 0x3F)
  {
    result = sub_2666D8B9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2666C8F84(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = sub_2666D7E4C();
  v4 = OUTLINED_FUNCTION_3(v3);
  v49 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  v13 = sub_2666D82AC();
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  v24 = (a1 + *(sub_2666D825C() + 44));
  if (v24[1] && (v25 = *v24, sub_2666C9B88(), , (v26 = sub_2666D8DCC()) != 0))
  {
    v27 = v26;
    v28 = sub_2666D828C();
    (*(v16 + 16))(v23, v28, v13);
    v29 = v27;
    v30 = sub_2666D829C();
    v31 = sub_2666D8DAC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = v46;
      v47 = v32;
      *v32 = 136315138;
      v33 = [v29 punchOutUri];
      v48 = v29;

      if (!v33)
      {
        __break(1u);
        return;
      }

      sub_2666D7E3C();

      v34 = v49;
      (*(v49 + 32))(v12, v10, v3);
      sub_2666CA13C();
      v35 = sub_2666D8E6C();
      v37 = v36;
      (*(v34 + 8))(v12, v3);
      v38 = sub_2666C9BCC(v35, v37, &v51);

      v39 = v47;
      *(v47 + 1) = v38;
      _os_log_impl(&dword_2666B0000, v30, v31, "Attempting to punchout to %s", v39, 0xCu);
      v40 = v46;
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x26678ACD0](v40, -1, -1);
      MEMORY[0x26678ACD0](v39, -1, -1);

      (*(v16 + 8))(v23, v13);
      v29 = v48;
    }

    else
    {

      (*(v16 + 8))(v23, v13);
    }

    v45 = v29;
    sub_2666D8C5C();
  }

  else
  {
    v41 = sub_2666D828C();
    (*(v16 + 16))(v21, v41, v13);
    v42 = sub_2666D829C();
    v43 = sub_2666D8DAC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2666B0000, v42, v43, "Punchout command not available for current event", v44, 2u);
      MEMORY[0x26678ACD0](v44, -1, -1);
    }

    (*(v16 + 8))(v21, v13);
  }
}

uint64_t sub_2666C93C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PunchoutToEventDetailsModifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800961D8, &qword_2666DA330);
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800961E0, &qword_2666DA338);
  OUTLINED_FUNCTION_2(v13);
  (*(v14 + 16))(v12, a1);
  v12[*(v7 + 36)] = 0;
  sub_2666C967C(v2, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_2666C9978(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_2666C9A3C();
  sub_2666D88BC();

  return sub_2666C9B20(v12);
}

uint64_t sub_2666C9590(uint64_t a1)
{
  v2 = sub_2666D8C7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for PunchoutToEventDetailsModifier() + 20);
  sub_2666D8B7C();
  sub_2666C8F84(a1, v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2666C967C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PunchoutToEventDetailsModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666C96E0()
{
  v1 = type metadata accessor for PunchoutToEventDetailsModifier();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 104);

  v11 = sub_2666D825C();
  v12 = v11[8];
  v13 = sub_2666D7DEC();
  OUTLINED_FUNCTION_2(v13);
  (*(v14 + 8))(v0 + v3 + v12);
  v15 = *(v0 + v3 + v11[10] + 8);

  v16 = *(v0 + v3 + v11[11] + 8);

  v17 = v0 + v3 + v11[12];
  v18 = sub_2666D822C();
  if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
  {
    v19 = *(v18 + 28);
    sub_2666D821C();
    if (!swift_getEnumCaseMultiPayload())
    {
      v20 = sub_2666D7F2C();
      OUTLINED_FUNCTION_2(v20);
      (*(v21 + 8))(v17 + v19);
    }
  }

  v22 = *(v5 + v11[13]);

  v23 = v11[14];
  v24 = sub_2666D809C();
  if (!__swift_getEnumTagSinglePayload(v5 + v23, 1, v24))
  {
    (*(*(v24 - 8) + 8))(v5 + v23, v24);
  }

  v25 = type metadata accessor for RenderableEvent();
  v26 = *(v25 + 20);
  v27 = sub_2666D815C();
  OUTLINED_FUNCTION_2(v27);
  (*(v28 + 8))(v5 + v26);
  v29 = *(v5 + *(v25 + 24) + 8);

  v30 = *(v1 + 20);
  v31 = sub_2666D8B9C();
  OUTLINED_FUNCTION_2(v31);
  (*(v32 + 8))(v5 + v30);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666C9978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PunchoutToEventDetailsModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666C99DC()
{
  v1 = *(type metadata accessor for PunchoutToEventDetailsModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2666C9590(v2);
}

unint64_t sub_2666C9A3C()
{
  result = qword_2800961E8;
  if (!qword_2800961E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800961D8, &qword_2666DA330);
    sub_2666B2B90(&qword_2800961F0, &qword_2800961E0, &qword_2666DA338);
    sub_2666B2B90(&qword_2800961F8, &qword_280096200, &qword_2666DA340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800961E8);
  }

  return result;
}

uint64_t sub_2666C9B20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800961D8, &qword_2666DA330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2666C9B88()
{
  result = qword_280096208;
  if (!qword_280096208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280096208);
  }

  return result;
}

uint64_t sub_2666C9BCC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2666C9C90(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2666CA194(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2666C9C90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2666C9D90(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2666D8E2C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2666C9D90(uint64_t a1, unint64_t a2)
{
  v4 = sub_2666C9DDC(a1, a2);
  sub_2666C9EF4(&unk_287810A48);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2666C9DDC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2666D8D6C())
  {
    result = sub_2666C9FD8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2666D8E0C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2666D8E2C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2666C9EF4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2666CA048(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2666C9FD8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096218, &qword_2666DA348);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2666CA048(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096218, &qword_2666DA348);
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

unint64_t sub_2666CA13C()
{
  result = qword_280096210;
  if (!qword_280096210)
  {
    sub_2666D7E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096210);
  }

  return result;
}

uint64_t sub_2666CA194(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2666CA1F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800961D8, &qword_2666DA330);
  sub_2666C9A3C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2666CA268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RenderableEvent();
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

uint64_t sub_2666CA338(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RenderableEvent();
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

uint64_t type metadata accessor for SingleEventSnippet()
{
  result = qword_280096220;
  if (!qword_280096220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666CA42C()
{
  result = type metadata accessor for RenderableEvent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2666CA4BC()
{
  v1 = type metadata accessor for SingleEventSnippet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2666CAA38(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleEventSnippet);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2666CA964(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  type metadata accessor for SingleEventView();
  sub_2666BD0D4();
  return sub_2666D8AAC();
}

uint64_t sub_2666CA5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for SingleEventSnippet() + 20));
  sub_2666CAA38(a1, a2, type metadata accessor for RenderableEvent);
  v5 = type metadata accessor for SingleEventView();
  *(a2 + v5[5]) = v4;
  v6 = a2 + v5[6];
  sub_2666D8B8C();
  v7 = a2 + v5[7];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  *(v7 + 16) = 0x4030000000000000;
  *(v7 + 24) = 0;
  *(v7 + 32) = 1;
  *(v7 + 40) = 1;
  *(v7 + 48) = sub_2666BD078;
  *(v7 + 56) = 0;
  v8 = a2 + v5[8];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  *(v8 + 16) = xmmword_2666D9980;
  *(v8 + 32) = 1;
  *(v8 + 40) = sub_2666BD0AC;
  *(v8 + 48) = 0;
  v9 = a2 + v5[9];
  result = swift_getKeyPath();
  *v9 = result;
  *(v9 + 8) = 0;
  return result;
}

uint64_t sub_2666CA71C()
{
  v1 = *(type metadata accessor for SingleEventSnippet() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 104);

  v11 = sub_2666D825C();
  v12 = v11[8];
  v13 = sub_2666D7DEC();
  OUTLINED_FUNCTION_1_4(v13);
  (*(v14 + 8))(v0 + v3 + v12);
  v15 = *(v0 + v3 + v11[10] + 8);

  v16 = *(v0 + v3 + v11[11] + 8);

  v17 = v0 + v3 + v11[12];
  v18 = sub_2666D822C();
  if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
  {
    v19 = *(v18 + 28);
    sub_2666D821C();
    if (!swift_getEnumCaseMultiPayload())
    {
      v20 = sub_2666D7F2C();
      OUTLINED_FUNCTION_1_4(v20);
      (*(v21 + 8))(v17 + v19);
    }
  }

  v22 = *(v5 + v11[13]);

  v23 = v11[14];
  v24 = sub_2666D809C();
  if (!__swift_getEnumTagSinglePayload(v5 + v23, 1, v24))
  {
    (*(*(v24 - 8) + 8))(v5 + v23, v24);
  }

  v25 = type metadata accessor for RenderableEvent();
  v26 = *(v25 + 20);
  v27 = sub_2666D815C();
  OUTLINED_FUNCTION_1_4(v27);
  (*(v28 + 8))(v5 + v26);
  v29 = *(v5 + *(v25 + 24) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666CA964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleEventSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666CA9C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SingleEventSnippet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2666CA5E8(v4, a1);
}

uint64_t sub_2666CAA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2666CAAAC()
{
  result = qword_280096230;
  if (!qword_280096230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096238, &qword_2666DA3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096230);
  }

  return result;
}

uint64_t sub_2666CAB10@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a2;
  v59 = a3;
  v57 = a4;
  v54 = sub_2666D86CC();
  v5 = OUTLINED_FUNCTION_3(v54);
  v51 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v11 = v10 - v9;
  v12 = sub_2666D807C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_1_1();
  v14 = sub_2666D8A8C();
  v15 = OUTLINED_FUNCTION_3(v14);
  v50 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_1();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096240, &qword_2666DA3F0);
  v23 = OUTLINED_FUNCTION_3(v22);
  v55 = v24;
  v56 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  v53 = &v49 - v27;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096248, &qword_2666DA3F8);
  v28 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v30 = &v49 - v29;
  if (!a1)
  {
    OUTLINED_FUNCTION_4_3();
  }

  sub_2666D85EC();
  if (qword_280095990 != -1)
  {
    swift_once();
  }

  v31 = qword_2800978F0;
  OUTLINED_FUNCTION_31();
  v32 = OUTLINED_FUNCTION_3_2();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v65 = MEMORY[0x277CE0BD8];
  v66 = MEMORY[0x277D638E8];
  v39 = swift_allocObject();
  v64 = v39;
  *(v39 + 16) = v32;
  *(v39 + 24) = v34;
  *(v39 + 32) = v36 & 1;
  *(v39 + 40) = v38;
  sub_2666D806C();
  sub_2666D8A9C();
  sub_2666D86BC();
  v40 = sub_2666CB244(&qword_280096250, MEMORY[0x277D63B20]);
  v41 = v53;
  sub_2666D891C();
  (*(v51 + 8))(v11, v54);
  (*(v50 + 8))(v21, v14);
  sub_2666D85EC();
  OUTLINED_FUNCTION_31();
  v42 = OUTLINED_FUNCTION_3_2();
  v44 = v43;
  LOBYTE(v32) = v45;
  v60 = v14;
  v61 = v40;
  swift_getOpaqueTypeConformance2();
  v46 = v56;
  sub_2666D890C();
  sub_2666B2B2C(v42, v44, v32 & 1);

  (*(v55 + 8))(v41, v46);
  sub_2666CB128();
  v47 = sub_2666D87FC();
  sub_2666CB28C(v30);
  v62 = MEMORY[0x277CE11C8];
  v63 = MEMORY[0x277D63A60];
  v60 = v47;

  sub_2666D895C();
  sub_2666D8B0C();
}

uint64_t sub_2666CB030()
{
  v0 = sub_2666D8E5C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2666CB07C(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_4_3();
  }

  if (a1 == 1)
  {
    return 0x455F4554454C4544;
  }

  return 0x455F455441445055;
}

uint64_t sub_2666CB0E4()
{
  sub_2666B2B2C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2666CB128()
{
  result = qword_280096258;
  if (!qword_280096258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096248, &qword_2666DA3F8);
    sub_2666D8A8C();
    sub_2666CB244(&qword_280096250, MEMORY[0x277D63B20]);
    swift_getOpaqueTypeConformance2();
    sub_2666CB244(&qword_280096260, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096258);
  }

  return result;
}

uint64_t sub_2666CB244(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2666CB28C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096248, &qword_2666DA3F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s11HeaderTitleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11HeaderTitleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2666CB454);
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

uint64_t sub_2666CB4A8(char a1, char a2)
{
  v2 = 0xE900000000000054;
  v3 = 0x4E4556455F57454ELL;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x455F4554454C4544;
    }

    else
    {
      v4 = 0x455F455441445055;
    }

    v5 = 0xEC000000544E4556;
  }

  else
  {
    v4 = 0x4E4556455F57454ELL;
    v5 = 0xE900000000000054;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x455F4554454C4544;
    }

    else
    {
      v3 = 0x455F455441445055;
    }

    v2 = 0xEC000000544E4556;
  }

  if (v4 == v3 && v5 == v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2666D8E7C();
  }

  return v7 & 1;
}

uint64_t sub_2666CB5C0()
{
  sub_2666D8D5C();
}

uint64_t sub_2666CB668()
{
  sub_2666D8ECC();
  sub_2666D8D5C();

  return sub_2666D8EEC();
}

uint64_t sub_2666CB71C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2666CB030();
  *a2 = result;
  return result;
}

uint64_t sub_2666CB74C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2666CB07C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2666CB77C()
{
  result = qword_280096268;
  if (!qword_280096268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096268);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return sub_2666D87DC();
}

uint64_t sub_2666CB820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2666D7FFC();
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

uint64_t sub_2666CB8F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2666D7FFC();
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

uint64_t type metadata accessor for CalendarEnvironmentSetupModifier()
{
  result = qword_280096270;
  if (!qword_280096270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666CB9E4()
{
  result = sub_2666D7FFC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2666CBA74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2666D7FDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2666D7FEC();
  v7 = sub_2666D7FCC();
  (*(v3 + 8))(v6, v2);
  v8 = sub_2666D840C();
  v9 = MEMORY[0x277CDFA90];
  if (v7 != 2)
  {
    v9 = MEMORY[0x277CDFA88];
  }

  return (*(*(v8 - 8) + 104))(a1, *v9, v8);
}

uint64_t sub_2666CBBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v3 = sub_2666D840C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096280, &qword_2666DA538);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096288, &qword_2666DA540);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  KeyPath = swift_getKeyPath();
  v18 = &v12[*(v9 + 44)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096290, &qword_2666DA578) + 28);
  v20 = sub_2666D7FFC();
  OUTLINED_FUNCTION_0_4(v20);
  (*(v21 + 16))(v18 + v19, v2);
  *v18 = KeyPath;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096298, &qword_2666DA580);
  OUTLINED_FUNCTION_0_4(v22);
  (*(v23 + 16))(v12, v32);
  v24 = swift_getKeyPath();
  if (*(v2 + *(type metadata accessor for CalendarEnvironmentSetupModifier() + 20)) == 1)
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CDFA90], v3);
  }

  else
  {
    sub_2666CBA74(v7);
  }

  v25 = &v16[*(v13 + 36)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800962A0, &qword_2666DA5B8);
  (*(v4 + 32))(v25 + *(v26 + 28), v7, v3);
  *v25 = v24;
  sub_2666CC00C(v12, v16, &qword_280096280, &qword_2666DA538);
  v27 = sub_2666D895C();
  v28 = swift_getKeyPath();
  v29 = v33;
  sub_2666CC00C(v16, v33, &qword_280096288, &qword_2666DA540);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800962A8, &qword_2666DA5F0);
  v31 = (v29 + *(result + 36));
  *v31 = v28;
  v31[1] = v27;
  return result;
}

uint64_t sub_2666CBEB4(uint64_t a1)
{
  v2 = sub_2666D840C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2666D849C();
}

uint64_t sub_2666CBFB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2666D854C();
  *a1 = result;
  return result;
}

uint64_t sub_2666CBFDC(uint64_t *a1)
{
  v1 = *a1;

  return sub_2666D855C();
}

uint64_t sub_2666CC00C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_4(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2666CC06C()
{
  result = qword_2800962B0;
  if (!qword_2800962B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800962A8, &qword_2666DA5F0);
    sub_2666CC124();
    sub_2666B2B90(&qword_2800962E0, &qword_2800962E8, &qword_2666DA5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800962B0);
  }

  return result;
}

unint64_t sub_2666CC124()
{
  result = qword_2800962B8;
  if (!qword_2800962B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096288, &qword_2666DA540);
    sub_2666CC1DC();
    sub_2666B2B90(&qword_2800962D8, &qword_2800962A0, &qword_2666DA5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800962B8);
  }

  return result;
}

unint64_t sub_2666CC1DC()
{
  result = qword_2800962C0;
  if (!qword_2800962C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096280, &qword_2666DA538);
    sub_2666B2B90(&qword_2800962C8, &qword_280096298, &qword_2666DA580);
    sub_2666B2B90(&qword_2800962D0, &qword_280096290, &qword_2666DA578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800962C0);
  }

  return result;
}

uint64_t sub_2666CC2E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2666D8B9C();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = type metadata accessor for CalendarButtonView.Model(0);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_2666CC3C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_2666D8B9C();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = type metadata accessor for CalendarButtonView.Model(0);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for EventListSnippet()
{
  result = qword_2800962F0;
  if (!qword_2800962F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666CC4DC()
{
  sub_2666CC598();
  if (v0 <= 0x3F)
  {
    sub_2666D8B9C();
    if (v1 <= 0x3F)
    {
      sub_2666B3DDC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CalendarButtonView.Model(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2666CC598()
{
  if (!qword_280096300)
  {
    type metadata accessor for DayEventGroupView.DayEventGroup(255);
    v0 = sub_2666D8D8C();
    if (!v1)
    {
      atomic_store(v0, &qword_280096300);
    }
  }
}

void sub_2666CC60C(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, char *a4@<X8>)
{
  v116 = a3;
  v123 = a2;
  v7 = sub_2666D825C();
  v8 = OUTLINED_FUNCTION_10(v7);
  v117 = v9;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v114 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v115 = v96 - v14;
  OUTLINED_FUNCTION_13_0();
  v15 = type metadata accessor for RenderableEvent();
  v16 = OUTLINED_FUNCTION_10(v15);
  v113 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_2();
  v118 = v20;
  OUTLINED_FUNCTION_13_0();
  v107 = sub_2666D7F5C();
  v21 = OUTLINED_FUNCTION_3(v107);
  v99 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_2();
  v106 = v25;
  OUTLINED_FUNCTION_13_0();
  v110 = sub_2666D81CC();
  v26 = OUTLINED_FUNCTION_3(v110);
  v102 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4_2();
  v109 = v30;
  v31 = OUTLINED_FUNCTION_13_0();
  v32 = type metadata accessor for DayEventGroupView.DayEventGroup(v31);
  v33 = OUTLINED_FUNCTION_3(v32);
  v104 = v34;
  v105 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_2();
  v103 = v37;
  OUTLINED_FUNCTION_13_0();
  v38 = type metadata accessor for EventListSnippet();
  v97 = v38[6];
  sub_2666D8B8C();
  v39 = &a4[v38[7]];
  KeyPath = swift_getKeyPath();
  v122 = 0;
  v121 = 1;
  v96[1] = KeyPath;
  *v39 = KeyPath;
  v39[8] = 0;
  *(v39 + 2) = 0x4030000000000000;
  *(v39 + 3) = 0;
  v39[32] = 1;
  *(v39 + 5) = 1;
  *(v39 + 6) = sub_2666BD078;
  *(v39 + 7) = 0;
  v41 = v38[8];
  v101 = a4;
  v42 = &a4[v41];
  v111 = sub_2666D85EC();
  v112 = v43;
  v45 = v44;
  v47 = v46;
  *(v42 + 56) = MEMORY[0x277D558C8];
  *(v42 + 64) = sub_2666B7E38();
  *(v42 + 32) = 0;
  *(v42 + 72) = 1;
  v48 = type metadata accessor for CalendarButtonView.Model(0);
  v49 = v48[6];
  v50 = *MEMORY[0x277D63A90];
  v51 = sub_2666D8A7C();
  OUTLINED_FUNCTION_2(v51);
  (*(v52 + 104))(v42 + v49, v50);
  *v42 = v111;
  *(v42 + 8) = v45;
  *(v42 + 16) = v47 & 1;
  *(v42 + 24) = v112;
  *(v42 + v48[7]) = 0;
  v53 = v48[8];
  v96[0] = v42;
  *(v42 + v53) = 0;
  v54 = *(a1 + 16);
  if (v54)
  {
    v120 = MEMORY[0x277D84F90];
    sub_2666C80E0(0, v54, 0);
    v55 = 0;
    v56 = v120;
    v57 = v102;
    v58 = *(v102 + 80);
    OUTLINED_FUNCTION_7_1();
    v108 = a1 + v59;
    ++v99;
    v60 = v109;
    v98 = a1;
    v100 = v54;
    while (v55 < *(a1 + 16))
    {
      v111 = v55;
      v112 = v56;
      sub_2666CD9F0(v108 + *(v57 + 72) * v55, v60, MEMORY[0x277D558E8]);
      v61 = *(v60 + *(v110 + 20));
      v62 = *(v61 + 16);
      if (v62)
      {
        v119 = MEMORY[0x277D84F90];
        sub_2666C8090(0, v62, 0);
        v63 = 0;
        v64 = v119;
        v65 = *(v117 + 80);
        OUTLINED_FUNCTION_7_1();
        v67 = v61 + v66;
        while (v63 < *(v61 + 16))
        {
          v68 = MEMORY[0x277D55918];
          v69 = v115;
          sub_2666CD9F0(v67 + *(v117 + 72) * v63, v115, MEMORY[0x277D55918]);
          v70 = v114;
          sub_2666CD9F0(v69, v114, v68);
          v71 = v116;
          sub_2666B30A8(v70, v71, v118);
          if (v4)
          {

            OUTLINED_FUNCTION_3_3();
            OUTLINED_FUNCTION_2_3();
            sub_2666CDA50(v109, v91);

            v92 = sub_2666D8B9C();
            OUTLINED_FUNCTION_2(v92);
            (*(v93 + 8))(&v101[v97]);

            sub_2666CDA50(v96[0], type metadata accessor for CalendarButtonView.Model);
            return;
          }

          OUTLINED_FUNCTION_3_3();
          v119 = v64;
          v73 = *(v64 + 16);
          v72 = *(v64 + 24);
          if (v73 >= v72 >> 1)
          {
            sub_2666C8090(v72 > 1, v73 + 1, 1);
            v64 = v119;
          }

          ++v63;
          *(v64 + 16) = v73 + 1;
          v74 = *(v113 + 80);
          OUTLINED_FUNCTION_7_1();
          sub_2666CDAA8(v118, v64 + v75 + *(v76 + 72) * v73, type metadata accessor for RenderableEvent);
          if (v62 == v63)
          {
            a1 = v98;
            v60 = v109;
            v57 = v102;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

      v64 = MEMORY[0x277D84F90];
LABEL_13:
      v77 = *(v105 + 24);
      v78 = sub_2666D7F2C();
      OUTLINED_FUNCTION_2(v78);
      v80 = v103;
      (*(v79 + 16))(v103 + v77, v60);
      v81 = v106;
      sub_2666D7F4C();
      v82 = sub_2666D7F3C();
      v84 = v83;
      (*v99)(v81, v107);
      OUTLINED_FUNCTION_2_3();
      sub_2666CDA50(v60, v85);
      *v80 = v82;
      v80[1] = v84;
      v80[2] = v64;
      v56 = v112;
      v120 = v112;
      v87 = *(v112 + 16);
      v86 = *(v112 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_2666C80E0(v86 > 1, v87 + 1, 1);
        v56 = v120;
      }

      v55 = v111 + 1;
      *(v56 + 16) = v87 + 1;
      v88 = *(v104 + 80);
      OUTLINED_FUNCTION_7_1();
      sub_2666CDAA8(v80, v56 + v89 + *(v90 + 72) * v87, type metadata accessor for DayEventGroupView.DayEventGroup);
      if (v55 == v100)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {

    v56 = MEMORY[0x277D84F90];
LABEL_19:
    v94 = v101;
    v95 = v123;
    *v101 = v56;
    v94[8] = v95 & 1;
  }
}