uint64_t sub_26A4DEFF8()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0 + *(type metadata accessor for SummaryItemSwitchView() + 20);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    OUTLINED_FUNCTION_112();
    swift_getAtKeyPath();
    sub_26A4D82E8(v8, 0);
    (*(v3 + 8))(v6, v1);
    return v11[1];
  }

  return v8;
}

uint64_t sub_26A4DF13C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for SummaryItemSwitchView();
  sub_26A4E233C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t SummaryItemSwitchView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v41[0] = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v43 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  v15 = OUTLINED_FUNCTION_79(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  v18 = v41 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v20 = OUTLINED_FUNCTION_79(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_0();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v41 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA300);
  v28 = OUTLINED_FUNCTION_79(v27);
  MEMORY[0x28223BE20](v28);
  v30 = v41 - v29;
  v41[2] = *(type metadata accessor for SummaryItemSwitchView() + 28);
  sub_26A84C7C8();
  v46 = 0u;
  v47 = 0u;
  v48 = 1;
  v41[1] = sub_26A4DEFF8();
  sub_26A4DF13C(v18);
  v31 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v31);
  v42 = v1;
  v45 = v1;
  sub_26A4E233C();
  if (__swift_getEnumTagSinglePayload(v23, 1, v2) == 1)
  {
    sub_26A4E2544(v23, &qword_2803B3800);
    v32 = type metadata accessor for ActionType();
    v33 = v13;
    v34 = 1;
  }

  else
  {
    v35 = *(v4 + 32);
    v36 = v41[0];
    v35(v41[0], v23, v2);
    v35(v13, v36, v2);
    v37 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    v33 = v13;
    v34 = 0;
    v32 = v37;
  }

  __swift_storeEnumTagSinglePayload(v33, v34, 1, v32);
  sub_26A4E233C();
  sub_26A4E233C();
  sub_26A4C487C();
  sub_26A4E2544(v13, &qword_2803A91C8);
  sub_26A4E2544(v18, &qword_2803A91C0);
  sub_26A4E2544(v26, &qword_2803B3800);
  v38 = sub_26A84C758();
  sub_26A4DBFA4(v38, v39, v44);

  sub_26A4E2544(v30, &qword_2803AA300);
  sub_26A84C768();
}

uint64_t type metadata accessor for SummaryItemSwitchView()
{
  result = qword_2803AA8A8;
  if (!qword_2803AA8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A4DF810@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA338);
  MEMORY[0x28223BE20](v24[0]);
  v4 = v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD30);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA318);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  v9 = sub_26A84F3A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A4DF13C(v12);
  v13 = sub_26A84F388();
  (*(v10 + 8))(v12, v9);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28);
  if (v13)
  {
    v15 = sub_26A84FC08();
    v16 = *&a1[v14];
    *v8 = v15;
    *(v8 + 1) = v16;
    v8[16] = 0;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD40);
    sub_26A4E0A20(a1, &a1[v14], &v8[*(v17 + 44)]);
    *&v8[*(v6 + 36)] = 256;
    v18 = &qword_2803AA318;
    sub_26A4E233C();
    swift_storeEnumTagMultiPayload();
    sub_26A4D775C();
    sub_26A4D7814();
    sub_26A84FDF8();
    v19 = v8;
  }

  else
  {
    v20 = v24[0];
    if (qword_28157FCB0 != -1)
    {
      swift_once();
    }

    v21 = *&a1[v14];
    *v4 = qword_2815889E0;
    *(v4 + 1) = v21;
    v4[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD38);
    sub_26A4DFBCC(a1, &v4[*(v22 + 44)]);
    *&v4[*(v20 + 36)] = 256;
    v18 = &qword_2803AA338;
    sub_26A4E233C();
    swift_storeEnumTagMultiPayload();
    sub_26A4D775C();
    sub_26A4D7814();
    sub_26A84FDF8();
    v19 = v4;
  }

  return sub_26A4E2544(v19, v18);
}

uint64_t sub_26A4DFBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = sub_26A84E228();
  v95 = *(v3 - 8);
  v96 = v3;
  MEMORY[0x28223BE20](v3);
  v94 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for SwitchView();
  v5 = MEMORY[0x28223BE20](v93);
  v97 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v87 = &v82 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  MEMORY[0x28223BE20](v8 - 8);
  v84 = &v82 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v82 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v82 - v17;
  v19 = sub_26A84B888();
  v83 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for SummaryItemStandardLayout(0);
  v22 = MEMORY[0x28223BE20](v86);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v90 = &v82 - v25;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADA0);
  v26 = MEMORY[0x28223BE20](v89);
  v92 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v88 = &v82 - v29;
  MEMORY[0x28223BE20](v28);
  v91 = &v82 - v30;
  v31 = *(type metadata accessor for SummaryItemSwitchView() + 28);
  v85 = v21;
  sub_26A84C788();
  v99 = a1;
  v100 = v31;
  v32 = v19;
  sub_26A84C798();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_26A4E2544(v18, &qword_2803AA838);
    memset(__src, 0, 40);
    v33 = v83;
  }

  else
  {
    __src[3] = v19;
    __src[4] = &protocol witness table for TextProperty;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__src);
    v33 = v83;
    (*(v83 + 32))(boxed_opaque_existential_1, v18, v32);
  }

  sub_26A84C7A8();
  v35 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v12, 1, v35) == 1)
  {
    sub_26A4E2544(v12, &qword_2803AA830);
    v110 = 0u;
    v111 = 0u;
    v112 = 0;
  }

  else
  {
    *(&v111 + 1) = v35;
    v112 = &protocol witness table for MultilineTextProperty;
    v36 = __swift_allocate_boxed_opaque_existential_1(&v110);
    (*(*(v35 - 8) + 32))(v36, v12, v35);
  }

  sub_26A84C7B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v32);
  v38 = v84;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4E2544(v16, &qword_2803AA838);
    v107 = 0u;
    v108 = 0u;
    v109 = 0;
  }

  else
  {
    *(&v108 + 1) = v32;
    v109 = &protocol witness table for TextProperty;
    v39 = __swift_allocate_boxed_opaque_existential_1(&v107);
    (*(v33 + 32))(v39, v16, v32);
  }

  sub_26A84C7E8();
  v40 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v38, 1, v40) == 1)
  {
    sub_26A4E2544(v38, &qword_2803AAD50);
    v104 = 0u;
    v105 = 0u;
    v106 = 0;
  }

  else
  {
    *(&v105 + 1) = v40;
    v106 = &protocol witness table for VisualProperty;
    v41 = __swift_allocate_boxed_opaque_existential_1(&v104);
    (*(*(v40 - 8) + 32))(v41, v38, v40);
  }

  if (qword_28157E670 != -1)
  {
    swift_once();
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_project_value_buffer(v42, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  sub_26A4E233C();
  sub_26A6AEE74(v113);
  memcpy(v24, v113, 0xBFuLL);
  sub_26A4E23EC();
  v43 = v86;
  v44 = *(v86 + 20);
  *&v24[v44] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v45 = &v24[v43[6]];
  *v45 = swift_getKeyPath();
  v45[8] = 0;
  v46 = v85;
  *&v24[v43[7]] = TextProperty.asAnyView()();
  sub_26A4E233C();
  v47 = v102;
  if (v102)
  {
    v48 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    v49 = (*(v48 + 8))(v47, v48);
    __swift_destroy_boxed_opaque_existential_1(v101);
  }

  else
  {
    sub_26A4E2544(v101, &qword_2803A91B8);
    v49 = 0;
  }

  *&v24[v43[8]] = v49;
  sub_26A4E233C();
  v50 = v102;
  if (v102)
  {
    v51 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    v52 = (*(v51 + 8))(v50, v51);
    __swift_destroy_boxed_opaque_existential_1(v101);
  }

  else
  {
    sub_26A4E2544(v101, &qword_2803A91B8);
    v52 = 0;
  }

  *&v24[v43[9]] = v52;
  sub_26A4E233C();
  v53 = v102;
  if (v102)
  {
    v54 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    v55 = (*(v54 + 8))(v53, v54);
    __swift_destroy_boxed_opaque_existential_1(v101);
  }

  else
  {
    sub_26A4E2544(v101, &qword_2803A91B8);
    v55 = 0;
  }

  *&v24[v43[10]] = v55;
  sub_26A4E233C();
  v56 = v102;
  if (v102)
  {
    v57 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    v58 = (*(v57 + 8))(v56, v57);
    (*(v33 + 8))(v46, v32);
    sub_26A4E2544(&v104, &qword_2803A91B8);
    sub_26A4E2544(&v107, &qword_2803A91B8);
    sub_26A4E2544(&v110, &qword_2803A91B8);
    sub_26A4E2544(__src, &qword_2803A91B8);
    __swift_destroy_boxed_opaque_existential_1(v101);
  }

  else
  {
    (*(v33 + 8))(v46, v32);
    sub_26A4E2544(&v104, &qword_2803A91B8);
    sub_26A4E2544(&v107, &qword_2803A91B8);
    sub_26A4E2544(&v110, &qword_2803A91B8);
    sub_26A4E2544(__src, &qword_2803A91B8);
    sub_26A4E2544(v101, &qword_2803A91B8);
    v58 = 0;
  }

  *&v24[v43[11]] = v58;
  sub_26A4E249C();
  sub_26A851458();
  sub_26A84F628();
  v59 = v88;
  sub_26A4E249C();
  memcpy(&v59[*(v89 + 36)], __src, 0x70uLL);
  v60 = v91;
  sub_26A4E24F0();
  v61 = v94;
  sub_26A84C7D8();
  v62 = v87;
  v63 = v96;
  __swift_storeEnumTagSinglePayload(v87, 1, 1, v96);
  v64 = v93;
  v65 = v62 + *(v93 + 20);
  *v65 = 0;
  *(v65 + 8) = 0;
  *(v65 + 16) = 0;
  v66 = v62 + v64[6];
  *v66 = swift_getKeyPath();
  *(v66 + 8) = 0;
  v67 = v62 + v64[7];
  *v67 = swift_getKeyPath();
  *(v67 + 8) = 0;
  *(v67 + 16) = 0;
  *(v67 + 24) = swift_getKeyPath();
  *(v67 + 32) = 0;
  v68 = type metadata accessor for ActionHandler(0);
  v69 = v68[6];
  *(v67 + v69) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v70 = v67 + v68[7];
  *v70 = swift_getKeyPath();
  *(v70 + 8) = 0;
  *(v70 + 16) = 0;
  v71 = v67 + v68[8];
  *v71 = swift_getKeyPath();
  *(v71 + 8) = 0;
  v72 = v67 + v68[9];
  *v72 = swift_getKeyPath();
  *(v72 + 8) = 0;
  v73 = v67 + v68[10];
  *v73 = swift_getKeyPath();
  *(v73 + 9) = 0;
  swift_unknownObjectWeakInit();
  v74 = v68[11];
  v75 = type metadata accessor for StandardActionHandler(0);
  __swift_storeEnumTagSinglePayload(v67 + v74, 1, 1, v75);
  sub_26A4E2544(v67 + v74, &qword_2803B3910);
  __swift_storeEnumTagSinglePayload(v67 + v74, 1, 1, v75);
  v76 = v62 + v64[8];
  LOBYTE(v107) = 0;
  sub_26A851048();
  sub_26A4E2544(v62, &qword_2803AAD90);
  v77 = v95;
  (*(v95 + 16))(v62, v61, v63);
  __swift_storeEnumTagSinglePayload(v62, 0, 1, v63);
  LOBYTE(v107) = sub_26A84E1F8() & 1;
  sub_26A851048();
  (*(v77 + 8))(v61, v63);

  v78 = *(&v110 + 1);
  *v76 = v110;
  *(v76 + 8) = v78;
  v79 = v92;
  sub_26A4E233C();
  v80 = v97;
  sub_26A4E23EC();
  sub_26A4E233C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADA8);
  sub_26A4E23EC();
  sub_26A4E2544(v60, &qword_2803AADA0);
  sub_26A4E2440(v62);
  sub_26A4E2440(v80);
  return sub_26A4E2544(v79, &qword_2803AADA0);
}

uint64_t sub_26A4E0A20@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v71 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD48);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v61 - v8;
  v65 = sub_26A84B1D8();
  v10 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v66 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - v16;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD58);
  MEMORY[0x28223BE20](v64);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD60);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v68 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v61 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v61 - v26;
  v28 = *(type metadata accessor for SummaryItemSwitchView() + 28);
  v70 = a1;
  v67 = v28;
  sub_26A84C7E8();
  v29 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v17, 1, v29) == 1)
  {
    sub_26A4E2544(v17, &qword_2803AAD50);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD68);
    v31 = v25;
    v32 = 1;
  }

  else
  {
    v33 = *(v29 - 8);
    v62 = v27;
    v34 = v33;
    (*(v33 + 16))(v19, v17, v29);
    v35 = type metadata accessor for VisualPropertyView();
    v36 = v35[5];
    v63 = v7;
    v37 = &v19[v36];
    *v37 = swift_getKeyPath();
    v37[9] = 0;
    swift_unknownObjectWeakInit();
    v38 = &v19[v35[6]];
    *v38 = swift_getKeyPath();
    v38[8] = 0;
    v39 = &v19[v35[7]];
    *v39 = swift_getKeyPath();
    v39[8] = 0;
    v40 = v35[8];
    *&v19[v40] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
    swift_storeEnumTagMultiPayload();
    v41 = &v19[v35[9]];
    v72 = 0;
    sub_26A851048();
    v42 = v74;
    *v41 = v73;
    *(v41 + 1) = v42;
    (*(v34 + 8))(v17, v29);
    v43 = v65;
    (*(v10 + 104))(v12, *MEMORY[0x277D62B38], v65);
    KeyPath = swift_getKeyPath();
    v45 = &v19[*(v64 + 36)];
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
    (*(v10 + 32))(v45 + v46, v12, v43);
    v47 = v45 + v46;
    v48 = v43;
    v27 = v62;
    v7 = v63;
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v48);
    *v45 = KeyPath;
    v49 = swift_getKeyPath();
    sub_26A4E24F0();
    v50 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD80) + 36)];
    *v50 = v49;
    v50[8] = 1;
    v51 = swift_getKeyPath();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD68);
    v52 = &v25[*(v30 + 36)];
    *v52 = v51;
    v52[8] = 0;
    v31 = v25;
    v32 = 0;
  }

  __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
  sub_26A4E24F0();
  v53 = v70;
  v54 = v66;
  sub_26A84C7E8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v29);
  sub_26A4E2544(v54, &qword_2803AAD50);
  if (EnumTagSinglePayload == 1)
  {
    v56 = sub_26A84FA78();
  }

  else
  {
    v56 = sub_26A84FA58();
  }

  v57 = *v69;
  *v9 = v56;
  *(v9 + 1) = v57;
  v9[16] = 0;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD70);
  sub_26A4E1134(v53, &v9[*(v58 + 44)]);
  v59 = v68;
  sub_26A4E233C();
  sub_26A4E233C();
  sub_26A4E233C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD78);
  sub_26A4E233C();
  sub_26A4E2544(v9, &qword_2803AAD48);
  sub_26A4E2544(v27, &qword_2803AAD60);
  sub_26A4E2544(v7, &qword_2803AAD48);
  return sub_26A4E2544(v59, &qword_2803AAD60);
}

uint64_t sub_26A4E1134@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = sub_26A84E228();
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x28223BE20](v3);
  v90 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for SwitchView();
  v5 = MEMORY[0x28223BE20](v89);
  v94 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v81 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v86 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v81 - v14;
  v16 = sub_26A84B888();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SummaryItemStandardTextLayout();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v85 = &v81 - v24;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD88);
  v25 = MEMORY[0x28223BE20](v84);
  v88 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v83 = &v81 - v28;
  MEMORY[0x28223BE20](v27);
  v87 = &v81 - v29;
  v30 = *(type metadata accessor for SummaryItemSwitchView() + 28);
  v82 = v19;
  v31 = a1;
  sub_26A84C788();
  v97 = v30;
  sub_26A84C798();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v96 = v17;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4E2544(v15, &qword_2803AA838);
    memset(__src, 0, 40);
  }

  else
  {
    __src[3] = v16;
    __src[4] = &protocol witness table for TextProperty;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__src);
    (*(v17 + 32))(boxed_opaque_existential_1, v15, v16);
  }

  sub_26A84C7A8();
  v34 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v10, 1, v34) == 1)
  {
    sub_26A4E2544(v10, &qword_2803AA830);
    v108 = 0u;
    v109 = 0u;
    v110 = 0;
  }

  else
  {
    *(&v109 + 1) = v34;
    v110 = &protocol witness table for MultilineTextProperty;
    v35 = __swift_allocate_boxed_opaque_existential_1(&v108);
    (*(*(v34 - 8) + 32))(v35, v10, v34);
  }

  v36 = v86;
  sub_26A84C7B8();
  if (__swift_getEnumTagSinglePayload(v36, 1, v16) == 1)
  {
    sub_26A4E2544(v36, &qword_2803AA838);
    v105 = 0u;
    v106 = 0u;
    v107 = 0;
  }

  else
  {
    *(&v106 + 1) = v16;
    v107 = &protocol witness table for TextProperty;
    v37 = __swift_allocate_boxed_opaque_existential_1(&v105);
    (*(v96 + 32))(v37, v36, v16);
  }

  v86 = v31;
  if (qword_28157E670 != -1)
  {
    swift_once();
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_project_value_buffer(v38, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  sub_26A4E233C();
  sub_26A6AEE74(v111);
  memcpy(v23, v111, 0xBFuLL);
  sub_26A4E23EC();
  v39 = &v23[v20[5]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  v40 = &v23[v20[6]];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  v41 = &v23[v20[7]];
  *v41 = swift_getKeyPath();
  v41[8] = 0;
  v42 = v20[8];
  *&v23[v42] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v43 = &v23[v20[9]];
  *v43 = swift_getKeyPath();
  v43[8] = 0;
  v44 = &v23[v20[10]];
  v103 = 0;
  v104 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA470);
  sub_26A851048();
  v45 = v99;
  v46 = v100;
  *v44 = v98;
  v44[8] = v45;
  *(v44 + 2) = v46;
  v47 = v82;
  *&v23[v20[12]] = TextProperty.asAnyView()();
  sub_26A4E233C();
  v48 = v101;
  if (v101)
  {
    v49 = v102;
    __swift_project_boxed_opaque_existential_1(&v98, v101);
    v50 = (*(v49 + 8))(v48, v49);
    __swift_destroy_boxed_opaque_existential_1(&v98);
  }

  else
  {
    sub_26A4E2544(&v98, &qword_2803A91B8);
    v50 = 0;
  }

  v51 = v96;
  *&v23[v20[13]] = v50;
  sub_26A4E233C();
  v52 = v101;
  if (v101)
  {
    v53 = v102;
    __swift_project_boxed_opaque_existential_1(&v98, v101);
    v54 = (*(v53 + 8))(v52, v53);
    __swift_destroy_boxed_opaque_existential_1(&v98);
  }

  else
  {
    sub_26A4E2544(&v98, &qword_2803A91B8);
    v54 = 0;
  }

  *&v23[v20[14]] = v54;
  sub_26A4E233C();
  v55 = v101;
  if (v101)
  {
    v56 = v102;
    __swift_project_boxed_opaque_existential_1(&v98, v101);
    v57 = (*(v56 + 8))(v55, v56);
    (*(v51 + 8))(v47, v16);
    sub_26A4E2544(&v105, &qword_2803A91B8);
    sub_26A4E2544(&v108, &qword_2803A91B8);
    sub_26A4E2544(__src, &qword_2803A91B8);
    __swift_destroy_boxed_opaque_existential_1(&v98);
  }

  else
  {
    (*(v51 + 8))(v47, v16);
    sub_26A4E2544(&v105, &qword_2803A91B8);
    sub_26A4E2544(&v108, &qword_2803A91B8);
    sub_26A4E2544(__src, &qword_2803A91B8);
    sub_26A4E2544(&v98, &qword_2803A91B8);
    v57 = 0;
  }

  *&v23[v20[15]] = v57;
  v23[v20[11]] = 0;
  sub_26A4E249C();
  sub_26A851458();
  sub_26A84F628();
  v58 = v83;
  sub_26A4E249C();
  memcpy(&v58[*(v84 + 36)], __src, 0x70uLL);
  v59 = v87;
  sub_26A4E24F0();
  v60 = v90;
  sub_26A84C7D8();
  v62 = v92;
  v61 = v93;
  __swift_storeEnumTagSinglePayload(v93, 1, 1, v92);
  v63 = v89;
  v64 = v61 + *(v89 + 20);
  *v64 = 0;
  *(v64 + 8) = 0;
  *(v64 + 16) = 0;
  v65 = v61 + v63[6];
  *v65 = swift_getKeyPath();
  *(v65 + 8) = 0;
  v66 = v61 + v63[7];
  *v66 = swift_getKeyPath();
  *(v66 + 8) = 0;
  *(v66 + 16) = 0;
  *(v66 + 24) = swift_getKeyPath();
  *(v66 + 32) = 0;
  v67 = type metadata accessor for ActionHandler(0);
  v68 = v67[6];
  *(v66 + v68) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v69 = v66 + v67[7];
  *v69 = swift_getKeyPath();
  *(v69 + 8) = 0;
  *(v69 + 16) = 0;
  v70 = v66 + v67[8];
  *v70 = swift_getKeyPath();
  *(v70 + 8) = 0;
  v71 = v66 + v67[9];
  *v71 = swift_getKeyPath();
  *(v71 + 8) = 0;
  v72 = v66 + v67[10];
  *v72 = swift_getKeyPath();
  *(v72 + 9) = 0;
  swift_unknownObjectWeakInit();
  v73 = v67[11];
  v74 = type metadata accessor for StandardActionHandler(0);
  __swift_storeEnumTagSinglePayload(v66 + v73, 1, 1, v74);
  sub_26A4E2544(v66 + v73, &qword_2803B3910);
  __swift_storeEnumTagSinglePayload(v66 + v73, 1, 1, v74);
  v75 = v61 + v63[8];
  LOBYTE(v105) = 0;
  sub_26A851048();
  sub_26A4E2544(v61, &qword_2803AAD90);
  v76 = v91;
  (*(v91 + 16))(v61, v60, v62);
  __swift_storeEnumTagSinglePayload(v61, 0, 1, v62);
  LOBYTE(v105) = sub_26A84E1F8() & 1;
  sub_26A851048();
  (*(v76 + 8))(v60, v62);

  v77 = *(&v108 + 1);
  *v75 = v108;
  *(v75 + 8) = v77;
  v78 = v88;
  sub_26A4E233C();
  v79 = v94;
  sub_26A4E23EC();
  sub_26A4E233C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD98);
  sub_26A4E23EC();
  sub_26A4E2544(v59, &qword_2803AAD88);
  sub_26A4E2440(v61);
  sub_26A4E2440(v79);
  return sub_26A4E2544(v78, &qword_2803AAD88);
}

uint64_t sub_26A4E1EE4(uint64_t a1)
{
  result = sub_26A4E2298(&qword_2803AA8A0, MEMORY[0x277D63340]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A4E1F80()
{
  sub_26A4E20C4(319, qword_28157E830, type metadata accessor for SummaryItemConstants, type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A4E20C4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26A4E20C4(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A84C7F8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A4E20C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26A4E2128()
{
  result = qword_2803AA8B8;
  if (!qword_2803AA8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA8C0);
    sub_26A4E21E0();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA8B8);
  }

  return result;
}

unint64_t sub_26A4E21E0()
{
  result = qword_2803AA8C8;
  if (!qword_2803AA8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA8D0);
    sub_26A4DBCC8(&qword_2803AA8D8, &qword_2803AA300);
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA8C8);
  }

  return result;
}

uint64_t sub_26A4E2298(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A4E233C()
{
  OUTLINED_FUNCTION_6_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_5_0();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A4E23EC()
{
  OUTLINED_FUNCTION_6_1();
  v1(0);
  OUTLINED_FUNCTION_5_0();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A4E2440(uint64_t a1)
{
  v2 = type metadata accessor for SwitchView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A4E249C()
{
  OUTLINED_FUNCTION_6_1();
  v1(0);
  OUTLINED_FUNCTION_5_0();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A4E24F0()
{
  OUTLINED_FUNCTION_6_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_5_0();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A4E2544(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1)
{
  v6 = (v3 + *(a1 + 36));
  *v6 = v4;
  v6[1] = v2;
  v6[2] = v1;
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 25) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t result)
{
  *(v1 + 104) = result;
  *(v1 + 112) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t result)
{
  *(v1 + 88) = result;
  *(v1 + 96) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return sub_26A851048();
}

uint64_t type metadata accessor for SimpleItemConstants()
{
  result = qword_2803AADB0;
  if (!qword_2803AADB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A4E2734()
{
  sub_26A84B1D8();
  if (v0 <= 0x3F)
  {
    sub_26A4E27D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A4E27D8()
{
  if (!qword_2803AADC0)
  {
    v0 = sub_26A852068();
    if (!v1)
    {
      atomic_store(v0, &qword_2803AADC0);
    }
  }
}

uint64_t sub_26A4E2828()
{
  v0 = type metadata accessor for SimpleItemConstants();
  MEMORY[0x28223BE20](v0);
  v137 = &v133 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8);
  __swift_allocate_value_buffer(v2, qword_2803D1900);
  v136 = __swift_project_value_buffer(v2, qword_2803D1900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADD0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADD8);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v142 = *(*(v3 - 8) + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26A8570C0;
  v135 = v5;
  v6 = (v5 + v4);
  v7 = (v5 + v4 + *(v3 + 48));
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v139 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v9 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v10 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v9, v10);
  sub_26A621A9C(inited);
  *v6 = v11;
  v147 = v6;
  v12 = v0[8];
  v13 = *MEMORY[0x277D62B28];
  v14 = sub_26A84B1D8();
  v15 = *(v14 - 8);
  v148 = *(v15 + 104);
  v146 = v15 + 104;
  v144 = v13;
  v148(&v7[v12], v13, v14);
  v16 = sub_26A84FA58();
  *v7 = 0;
  *(v7 + 1) = 0;
  OUTLINED_FUNCTION_0_2(v16, 0x4024000000000000);
  v141 = xmmword_26A8570E0;
  OUTLINED_FUNCTION_1_1(v17, xmmword_26A8570E0);
  *(v18 + 32) = 1;
  *&v7[v0[12]] = 0x4028000000000000;
  OUTLINED_FUNCTION_6_2();
  *&v7[v19] = v20;
  v21 = v142;
  v22 = (v147 + v142);
  v23 = v147 + v142 + *(v3 + 48);
  v24 = swift_initStackObject();
  v25 = v3;
  v138 = v3;
  v26 = v24;
  v140 = xmmword_26A8570F0;
  *(v24 + 16) = xmmword_26A8570F0;
  v27 = qword_281588968;
  *(v26 + 32) = qword_281588968;
  v28 = byte_281588970;
  *(v26 + 40) = byte_281588970;
  *(v26 + 48) = 3;
  *(v26 + 56) = 1;
  sub_26A4E324C(v27, v28);
  sub_26A621A9C(v26);
  *v22 = v29;
  v30 = *MEMORY[0x277D62B20];
  v148(&v23[v0[8]], v30, v14);
  v31 = sub_26A84FA58();
  *v23 = 0;
  *(v23 + 1) = 0;
  OUTLINED_FUNCTION_0_2(v31, 0x4024000000000000);
  OUTLINED_FUNCTION_5_1(v32, v141);
  v33 = &v23[v0[11]];
  v133 = xmmword_26A857100;
  OUTLINED_FUNCTION_5_1(v33, xmmword_26A857100);
  OUTLINED_FUNCTION_4_1();
  *&v23[v34] = 0x4032000000000000;
  v35 = v21;
  v36 = (v147 + 2 * v21);
  v37 = (v36 + *(v25 + 48));
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_26A857110;
  v39 = OUTLINED_FUNCTION_11_1(&qword_281588968);
  *(v38 + 48) = 3;
  v40 = v147;
  *(v38 + 56) = 1;
  *(v38 + 64) = 1;
  *(v38 + 72) = 5;
  sub_26A4E324C(v39, v41);
  sub_26A621A9C(v38);
  *v36 = v42;
  v43 = v37 + v0[8];
  v145 = v14;
  v148(v43, v30, v14);
  v44 = v35;
  v45 = sub_26A84FA58();
  *v37 = 0;
  v37[1] = 0;
  OUTLINED_FUNCTION_9_2(v45, 0x4020000000000000);
  __asm { FMOV            V0.2D, #10.0 }

  *v51 = _Q0;
  v51[1] = _Q0;
  v134 = _Q0;
  v51[2].n128_u8[0] = 0;
  OUTLINED_FUNCTION_5_1((v37 + v0[11]), v133);
  *(v37 + v0[12]) = 0;
  OUTLINED_FUNCTION_6_2();
  *(v37 + v52) = v53;
  v54 = (v40 + 3 * v35);
  v55 = v138;
  v56 = v54 + *(v138 + 48);
  v57 = swift_initStackObject();
  OUTLINED_FUNCTION_8_2(v57);
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v58 = OUTLINED_FUNCTION_2_2(&qword_281588938);
  sub_26A4E324C(v58, v59);
  sub_26A621A9C(v30);
  *v54 = v60;
  v61 = v144;
  v148(&v56[v0[8]], v144, v145);
  v62 = sub_26A84FA58();
  *v56 = xmmword_26A857120;
  *(v56 + 1) = xmmword_26A857130;
  OUTLINED_FUNCTION_10_2(v62);
  *v63 = 0u;
  *(v63 + 16) = 0u;
  *(v63 + 32) = 1;
  v64 = &v56[v0[11]];
  *v64 = 0u;
  *(v64 + 1) = 0u;
  v64[32] = 1;
  *&v56[v0[12]] = 0;
  OUTLINED_FUNCTION_6_2();
  *&v56[v65] = v66;
  v67 = (v40 + 4 * v44 + *(v55 + 48));
  v68 = swift_initStackObject();
  OUTLINED_FUNCTION_8_2(v68);
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v69 = OUTLINED_FUNCTION_2_2(&qword_281588998);
  sub_26A4E324C(v69, v70);
  sub_26A621A9C(v30);
  v72 = OUTLINED_FUNCTION_7_2(v71);
  v148(v72, v61, v145);
  v73 = sub_26A84FA58();
  *v67 = 0x4010000000000000;
  v67[1] = 0;
  OUTLINED_FUNCTION_0_2(v73, 0x4034000000000000);
  OUTLINED_FUNCTION_3_1(v74);
  OUTLINED_FUNCTION_5_1((v67 + v0[11]), xmmword_26A857140);
  OUTLINED_FUNCTION_4_1();
  *(v67 + v75) = 0x4032000000000000;
  v76 = 5 * v44;
  v77 = v61;
  v78 = v147;
  v79 = (v147 + v76);
  v80 = v138;
  v81 = v147 + v76 + *(v138 + 48);
  v82 = swift_initStackObject();
  *(v82 + 16) = v140;
  v83 = OUTLINED_FUNCTION_11_1(&qword_281588998);
  *(v82 + 48) = 1;
  *(v82 + 56) = 5;
  sub_26A4E324C(v83, v84);
  sub_26A621A9C(v82);
  *v79 = v85;
  v86 = v142;
  v148(&v81[v0[8]], v77, v145);
  v87 = sub_26A84FA58();
  *v81 = 0x4010000000000000;
  *(v81 + 1) = 0;
  OUTLINED_FUNCTION_9_2(v87, 0x4034000000000000);
  OUTLINED_FUNCTION_3_1(v88);
  OUTLINED_FUNCTION_5_1(&v81[v0[11]], vdupq_n_s64(0x4043000000000000uLL));
  *&v81[v0[12]] = 0;
  OUTLINED_FUNCTION_6_2();
  *&v81[v89] = v90;
  v91 = (v78 + 6 * v86);
  v92 = v91 + *(v80 + 48);
  v93 = swift_initStackObject();
  OUTLINED_FUNCTION_8_2(v93);
  if (qword_28157E788 != -1)
  {
    swift_once();
  }

  v94 = OUTLINED_FUNCTION_2_2(&qword_2815889A8);
  sub_26A4E324C(v94, v95);
  sub_26A621A9C(v80);
  *v91 = v96;
  v97 = v145;
  v98 = v148;
  v148(&v92[v0[8]], v144, v145);
  v99 = sub_26A84FA58();
  *v92 = 0;
  *(v92 + 1) = 0;
  OUTLINED_FUNCTION_0_2(v99, 0x4024000000000000);
  OUTLINED_FUNCTION_1_1(v100, xmmword_26A857150);
  *(v101 + 32) = 1;
  OUTLINED_FUNCTION_4_1();
  *&v92[v102] = 0x4032000000000000;
  v103 = v138;
  v104 = (&v78[v86] + *(v138 + 48) - v86);
  v105 = swift_initStackObject();
  *(v105 + 16) = v140;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v106 = OUTLINED_FUNCTION_2_2(&qword_281588978);
  *(v105 + 48) = 1;
  *(v105 + 56) = 3;
  sub_26A4E324C(v106, v107);
  sub_26A621A9C(v105);
  v109 = OUTLINED_FUNCTION_7_2(v108);
  v98(v109, v144, v97);
  v110 = sub_26A84FA78();
  *v104 = 0;
  v104[1] = 0;
  OUTLINED_FUNCTION_0_2(v110, 0x402C000000000000);
  OUTLINED_FUNCTION_1_1(v111, v141);
  *(v112 + 32) = 1;
  OUTLINED_FUNCTION_4_1();
  *(v104 + v113) = 0x4032000000000000;
  v114 = *(v103 + 48);
  v115 = swift_initStackObject();
  *(v115 + 16) = v140;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v116 = (&v147[v142] + v114);
  v117 = qword_281588988;
  *(v115 + 32) = qword_281588988;
  v118 = byte_281588990;
  *(v115 + 40) = byte_281588990;
  *(v115 + 48) = 1;
  *(v115 + 56) = 3;
  sub_26A4E324C(v117, v118);
  sub_26A621A9C(v115);
  v120 = OUTLINED_FUNCTION_7_2(v119);
  v121 = v144;
  v122 = v98;
  v98(v120, v144, v97);
  v123 = sub_26A84FA58();
  *v116 = 0;
  v116[1] = 0;
  OUTLINED_FUNCTION_0_2(v123, 0x401C000000000000);
  OUTLINED_FUNCTION_1_1(v124, v134);
  *(v125 + 32) = 1;
  OUTLINED_FUNCTION_4_1();
  *(v116 + v126) = 0x4032000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v127 = sub_26A8516A8();
  v128 = v137;
  v122(&v137[v0[8]], v121, v97);
  v129 = sub_26A84FA58();
  *v128 = 0;
  v128[1] = 0;
  v128[2] = 0;
  v128[3] = 0x4024000000000000;
  OUTLINED_FUNCTION_10_2(v129);
  OUTLINED_FUNCTION_5_1(v130, v141);
  v131 = v128 + v0[11];
  *v131 = 0u;
  *(v131 + 1) = 0u;
  v131[32] = 1;
  *(v128 + v0[12]) = 0;
  *(v128 + v0[13]) = 0x4032000000000000;
  return sub_26A80D78C(v127, v128);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_26A4E324C(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

unint64_t sub_26A4E325C()
{
  result = qword_28157D8B8;
  if (!qword_28157D8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157D8B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = a2;
  *(v3 + *(v2 + 36)) = result;
  return result;
}

double OUTLINED_FUNCTION_1_1@<D0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1] = a2;
  a1[2].n128_u8[0] = 0;
  v4 = (v3 + *(v2 + 44));
  result = 0.0;
  *v4 = 0u;
  v4[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_2@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *(v1 + 32) = *a1;
  *(v1 + 40) = *(a1 + 8);
  return result;
}

double OUTLINED_FUNCTION_3_1@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

void OUTLINED_FUNCTION_5_1(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1] = a2;
  a1[2].n128_u8[0] = 0;
}

__n128 OUTLINED_FUNCTION_8_2(__n128 *a1)
{
  result = v1[4];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = a2;
  *(v3 + *(v2 + 36)) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_1@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *(v1 + 32) = *a1;
  *(v1 + 40) = *(a1 + 8);
  return result;
}

id sub_26A4E33CC()
{
  v1 = [v0 button];
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE150);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_26A8571A0;
    *(v3 + 32) = v2;
    return sub_26A6F9208(v3, 4, 0, 0);
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v5 = v0;
    *(v5 + 8) = &unk_287B130B8;
    *(v5 + 16) = 0;
    swift_willThrow();
    return v0;
  }
}

unint64_t sub_26A4E34E4()
{
  result = qword_2803AADE8;
  if (!qword_2803AADE8)
  {
    type metadata accessor for SearchUIMultiButtonView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AADE8);
  }

  return result;
}

unint64_t sub_26A4E353C()
{
  result = qword_2803AADF0;
  if (!qword_2803AADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AADF0);
  }

  return result;
}

BOOL sub_26A4E3594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 48);
  while (v5)
  {
    v7 = *v6;
    if (*(*v6 + 16))
    {

      v8 = sub_26A548510(a1, a2);
      if (v9)
      {
        v10 = *(*(v7 + 56) + v8);

        if (v10)
        {
          return v5 != 0;
        }
      }

      else
      {
      }
    }

    v6 += 3;
    --v5;
  }

  return v5 != 0;
}

uint64_t sub_26A4E3654(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E69616D6F64 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A852598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A4E36CC()
{
  sub_26A8526B8();
  MEMORY[0x26D664930](0);
  return sub_26A8526F8();
}

uint64_t sub_26A4E373C()
{
  sub_26A8526B8();
  MEMORY[0x26D664930](0);
  return sub_26A8526F8();
}

uint64_t sub_26A4E3780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A4E3654(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A4E37C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A4E34A0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A4E37F4(uint64_t a1)
{
  v2 = sub_26A4E3F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A4E3830(uint64_t a1)
{
  v2 = sub_26A4E3F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26A4E386C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAE10);
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A4E3F7C();
  sub_26A852708();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAE20);
    sub_26A4E3FD0();
    sub_26A852508();
    (*(v5 + 8))(v8, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

void *sub_26A4E39E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_26A4E386C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26A4E3A10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_26A852598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000026A88AE20 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A852598();

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

uint64_t sub_26A4E3B20(char a1)
{
  sub_26A8526B8();
  MEMORY[0x26D664930](a1 & 1);
  return sub_26A8526F8();
}

uint64_t sub_26A4E3B68(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_26A4E3BA4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAE50);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A4E435C();
  sub_26A852708();
  if (!v1)
  {
    v4 = sub_26A8524F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAE60);
    sub_26A4E43B0();
    sub_26A852508();
    v6 = OUTLINED_FUNCTION_0_3();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_26A4E3D8C()
{
  v1 = *v0;
  sub_26A8526B8();
  MEMORY[0x26D664930](v1);
  return sub_26A8526F8();
}

uint64_t sub_26A4E3DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A4E3A10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A4E3E20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A4E3AE0();
  *a1 = result;
  return result;
}

uint64_t sub_26A4E3E48(uint64_t a1)
{
  v2 = sub_26A4E435C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A4E3E84(uint64_t a1)
{
  v2 = sub_26A4E435C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A4E3EC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26A4E3BA4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_26A4E3F00(uint64_t a1)
{
  result = sub_26A4E3F28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A4E3F28()
{
  result = qword_2803AAE08;
  if (!qword_2803AAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE08);
  }

  return result;
}

unint64_t sub_26A4E3F7C()
{
  result = qword_2803AAE18;
  if (!qword_2803AAE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE18);
  }

  return result;
}

unint64_t sub_26A4E3FD0()
{
  result = qword_2803AAE28;
  if (!qword_2803AAE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAE20);
    sub_26A4E4054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE28);
  }

  return result;
}

unint64_t sub_26A4E4054()
{
  result = qword_2803AAE30;
  if (!qword_2803AAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DomainConfigurations.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for DomainConfigurations.CodingKeys(_BYTE *result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26A4E41C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26A4E4204(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_26A4E4258()
{
  result = qword_2803AAE38;
  if (!qword_2803AAE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE38);
  }

  return result;
}

unint64_t sub_26A4E42B0()
{
  result = qword_2803AAE40;
  if (!qword_2803AAE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE40);
  }

  return result;
}

unint64_t sub_26A4E4308()
{
  result = qword_2803AAE48;
  if (!qword_2803AAE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE48);
  }

  return result;
}

unint64_t sub_26A4E435C()
{
  result = qword_2803AAE58;
  if (!qword_2803AAE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE58);
  }

  return result;
}

unint64_t sub_26A4E43B0()
{
  result = qword_2803AAE68;
  if (!qword_2803AAE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceScreenSize(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DomainConfigurations.Domain.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A4E45A8()
{
  result = qword_2803AAE70;
  if (!qword_2803AAE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE70);
  }

  return result;
}

unint64_t sub_26A4E4600()
{
  result = qword_2803AAE78;
  if (!qword_2803AAE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE78);
  }

  return result;
}

unint64_t sub_26A4E4658()
{
  result = qword_2803AAE80;
  if (!qword_2803AAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE80);
  }

  return result;
}

uint64_t sub_26A4E46C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_26A4DBD68(v2, &v13 - v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v10, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26A4E48A0()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SummaryItemLargeTextView() + 20);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A4E49F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SummaryItemLargeTextView();
  sub_26A4DBD68(v1 + *(v10 + 24), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t SummaryItemLargeTextView.init(text1:text2:text3:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SummaryItemLargeTextView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = (v11 - v10);
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v13 = v12 + v8[5];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = v8[6];
  *(v12 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = OUTLINED_FUNCTION_1_2();
  *(v12 + v8[7]) = v16(v15);
  sub_26A4DBD68(a2, v24, &qword_2803A91B8);
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v17 = OUTLINED_FUNCTION_1_2();
    v19 = v18(v17);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    sub_26A4DBD10(v24, &qword_2803A91B8);
    v19 = 0;
  }

  *(v12 + v8[8]) = v19;
  sub_26A4DBD68(a3, v24, &qword_2803A91B8);
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v20 = OUTLINED_FUNCTION_1_2();
    v22 = v21(v20);
    sub_26A4DBD10(a3, &qword_2803A91B8);
    sub_26A4DBD10(a2, &qword_2803A91B8);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    sub_26A4DBD10(a3, &qword_2803A91B8);
    sub_26A4DBD10(a2, &qword_2803A91B8);
    sub_26A4DBD10(v24, &qword_2803A91B8);
    v22 = 0;
  }

  *(v12 + v8[9]) = v22;
  sub_26A4E5BC8(v12, a4);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for SummaryItemLargeTextView()
{
  result = qword_2803AAEA0;
  if (!qword_2803AAEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SummaryItemLargeTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  v4 = OUTLINED_FUNCTION_79(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  sub_26A4E46C0(&v17[-v9]);
  v19 = 0u;
  v20 = 0u;
  v21 = 1;
  sub_26A4E48A0();
  sub_26A4E49F4(v6);
  v10 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  v18 = v1;
  sub_26A4C48EC();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_26A68CCBC;
  *(v11 + 24) = 0;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAE88) + 36);
  *(v12 + 16) = swift_getKeyPath();
  *(v12 + 24) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v14 = *(v13 + 40);
  *(v12 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v15 = v12 + *(v13 + 44);
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *v12 = sub_26A4D1F7C;
  *(v12 + 8) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAE90);
  *(a1 + *(result + 36)) = 11;
  return result;
}

void *sub_26A4E5134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84FA78();
  v10 = 1;
  sub_26A4E5210(a1, __src);
  memcpy(__dst, __src, 0x79uLL);
  memcpy(v12, __src, 0x79uLL);
  sub_26A4DBD68(__dst, v7, &qword_2803AAEE8);
  sub_26A4DBD10(v12, &qword_2803AAEE8);
  memcpy(&v9[7], __dst, 0x79uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x80uLL);
}

uint64_t sub_26A4E5210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84FC08();
  v6[0] = 1;
  sub_26A4E5364(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v9, __src, sizeof(v9));
  sub_26A4DBD68(__dst, v10, &qword_2803AAEF0);
  sub_26A4DBD10(v9, &qword_2803AAEF0);
  memcpy(&v7[7], __dst, 0x58uLL);
  v10[0] = v4;
  v10[1] = 0;
  LOBYTE(v10[2]) = 1;
  memcpy(&v10[2] + 1, v7, 0x5FuLL);
  v6[112] = 1;
  memcpy(a2, v10, 0x70uLL);
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *__src = v4;
  *&__src[8] = 0;
  __src[16] = 1;
  memcpy(&__src[17], v7, 0x5FuLL);
  sub_26A4DBD68(v10, v6, &qword_2803AAEF8);
  return sub_26A4DBD10(__src, &qword_2803AAEF8);
}

uint64_t sub_26A4E5364@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for SummaryItemLargeTextView();
  v5 = *(a1 + v4[7]);

  v16 = sub_26A8502C8();
  KeyPath = swift_getKeyPath();
  v7 = *(a1 + v4[8]);
  if (v7)
  {

    v15 = sub_26A8502F8();
    v8 = swift_getKeyPath();
  }

  else
  {
    v8 = 0;
    v15 = 0;
  }

  v9 = *(a1 + v4[9]);
  if (v9)
  {

    sub_26A850468();
    sub_26A850398();
    v14 = sub_26A850428();

    v10 = swift_getKeyPath();
    v11 = sub_26A850E88();
    v12 = swift_getKeyPath();
  }

  else
  {
    v10 = 0;
    v14 = 0;
    v12 = 0;
    v11 = 0;
  }

  *a2 = v5;
  a2[1] = KeyPath;
  a2[2] = v16;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v15;
  a2[6] = v9;
  a2[7] = v10;
  a2[8] = v14;
  a2[9] = v12;
  a2[10] = v11;

  sub_26A4E624C(v7);
  sub_26A4E629C(v9);
  sub_26A4E630C(v9);
  sub_26A4E6378(v7);
}

uint64_t sub_26A4E5548()
{
  v70 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v65 = v0;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v64 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830);
  v13 = OUTLINED_FUNCTION_79(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  v20 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_41();
  v26 = v25 - v24;
  v27 = type metadata accessor for SummaryItemLargeTextView();
  v28 = OUTLINED_FUNCTION_79(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_41();
  v71 = v30 - v29;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAAB0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v31);
  v33 = &v64 - v32;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAAB8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_0();
  v68 = v35 - v36;
  MEMORY[0x28223BE20](v37);
  v67 = &v64 - v38;
  sub_26A84CF98();
  v39 = TextProperty.asAnyView()();
  (*(v22 + 8))(v26, v20);
  v74[3] = MEMORY[0x277CE11C8];
  v74[4] = &protocol witness table for AnyView;
  v74[0] = v39;
  sub_26A84CFA8();
  v40 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v19, 1, v40) == 1)
  {
    sub_26A4DBD10(v19, &qword_2803AA830);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v73[1] = 0;
    v73[2] = 0;
  }

  else
  {
    v41 = v19;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_8_3();
    (*(v44 + 8))(v19, v40);
    v43 = &protocol witness table for AnyView;
    v42 = MEMORY[0x277CE11C8];
  }

  v73[0] = v41;
  v73[3] = v42;
  v73[4] = v43;
  sub_26A84CFB8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v40) == 1)
  {
    sub_26A4DBD10(v16, &qword_2803AA830);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v72[1] = 0;
    v72[2] = 0;
  }

  else
  {
    v45 = v16;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_8_3();
    (*(v48 + 8))(v16, v40);
    v47 = &protocol witness table for AnyView;
    v46 = MEMORY[0x277CE11C8];
  }

  v72[0] = v45;
  v72[3] = v46;
  v72[4] = v47;
  SummaryItemLargeTextView.init(text1:text2:text3:)(v74, v73, v72, v71);
  sub_26A84CFC8();
  sub_26A4DBDB4(v11, v8, &qword_2803B3800);
  v49 = v70;
  if (__swift_getEnumTagSinglePayload(v8, 1, v70) == 1)
  {
    sub_26A4DBD10(v8, &qword_2803B3800);
    KeyPath = swift_getKeyPath();
    v51 = &v33[*(v66 + 36)];
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v53 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v51 + v52, 1, 1, v53);
    *v51 = KeyPath;
  }

  else
  {
    v54 = *(v65 + 32);
    v55 = v64;
    v54(v64, v8, v49);
    v56 = swift_getKeyPath();
    v57 = &v33[*(v66 + 36)];
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v54(v57 + v58, v55, v49);
    v59 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v57 + v58, 0, 1, v59);
    *v57 = v56;
  }

  sub_26A4E5BC8(v71, v33);
  v60 = sub_26A84CF68();
  v61 = v67;
  sub_26A4DC0F4(v60);

  sub_26A4DBD10(v33, &qword_2803AAAB0);
  sub_26A84CF78();

  sub_26A4DBD68(v61, v68, &qword_2803AAAB8);
  sub_26A4E5FD8();
  v62 = sub_26A851248();
  sub_26A4DBD10(v61, &qword_2803AAAB8);
  return v62;
}

uint64_t sub_26A4E5BC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemLargeTextView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A4E5C50(uint64_t a1)
{
  result = sub_26A4E6204(&qword_2803AAE98, MEMORY[0x277D634A8]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A4E5CD0()
{
  sub_26A4D27F4();
  if (v0 <= 0x3F)
  {
    sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
    if (v1 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
      if (v2 <= 0x3F)
      {
        sub_26A4E5E18();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A4E5DC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A4E5E18()
{
  if (!qword_2803A9240)
  {
    v0 = sub_26A852068();
    if (!v1)
    {
      atomic_store(v0, &qword_2803A9240);
    }
  }
}

unint64_t sub_26A4E5E68()
{
  result = qword_2803AAEB0;
  if (!qword_2803AAEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAE90);
    sub_26A4E5EF4();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAEB0);
  }

  return result;
}

unint64_t sub_26A4E5EF4()
{
  result = qword_2803AAEB8;
  if (!qword_2803AAEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAE88);
    sub_26A4DBCC8(&qword_2803AAEC0, &qword_2803AA2D8);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAEB8);
  }

  return result;
}

unint64_t sub_26A4E5FD8()
{
  result = qword_2803AAEC8;
  if (!qword_2803AAEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAB8);
    sub_26A4E6090();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAEC8);
  }

  return result;
}

unint64_t sub_26A4E6090()
{
  result = qword_2803AAED0;
  if (!qword_2803AAED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAA8);
    sub_26A4E611C();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAED0);
  }

  return result;
}

unint64_t sub_26A4E611C()
{
  result = qword_2803AAED8;
  if (!qword_2803AAED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAB0);
    sub_26A4E6204(&qword_2803AAEE0, type metadata accessor for SummaryItemLargeTextView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAED8);
  }

  return result;
}

uint64_t sub_26A4E6204(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A4E624C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26A4E629C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26A4E630C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26A4E6378(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26A4E63F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SummaryItemDetailedTextView();
  sub_26A4DBD68(v1 + *(v10 + 20), v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A4E65D8()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SummaryItemDetailedTextView() + 24);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A4E672C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SummaryItemDetailedTextView();
  sub_26A4DBD68(v1 + *(v10 + 28), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t SummaryItemDetailedTextView.init(text1:text2:text3:text4:text5:text6:thumbnail:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = type metadata accessor for SummaryItemDetailedTextView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v14 = (v13 - v12);
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  v16 = __swift_project_value_buffer(v15, qword_281588798);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  v18 = &v14[*(v17 + 32)];
  sub_26A4DBD68(v16, v18, &qword_2803B3890);
  sub_26A6AEE74(__src);
  memcpy(v14, __src, 0xBFuLL);
  sub_26A4DB4E0(v18 + *(v15 + 36), &v14[*(v17 + 28)]);
  v19 = v10[5];
  *&v14[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v20 = &v14[v10[6]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = v10[7];
  *&v14[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = OUTLINED_FUNCTION_15_0();
  *&v14[v10[8]] = v24(v23);
  sub_26A4DBD68(a2, v46, &qword_2803A91B8);
  OUTLINED_FUNCTION_14_1();
  if (v22)
  {
    v25 = OUTLINED_FUNCTION_1_3();
    v26(v25);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v46, &qword_2803A91B8);
    v21 = 0;
  }

  *&v14[v10[9]] = v21;
  v27 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v28 = OUTLINED_FUNCTION_15_0();
  *&v14[v10[10]] = v29(v28);
  sub_26A4DBD68(a4, v46, &qword_2803A91B8);
  OUTLINED_FUNCTION_14_1();
  if (v27)
  {
    v30 = OUTLINED_FUNCTION_1_3();
    v31(v30);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v46, &qword_2803A91B8);
    v21 = 0;
  }

  *&v14[v10[11]] = v21;
  sub_26A4DBD68(a5, v46, &qword_2803A91B8);
  OUTLINED_FUNCTION_14_1();
  if (v27)
  {
    v32 = OUTLINED_FUNCTION_1_3();
    v33(v32);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v46, &qword_2803A91B8);
    v21 = 0;
  }

  *&v14[v10[12]] = v21;
  sub_26A4DBD68(a6, v46, &qword_2803A91B8);
  OUTLINED_FUNCTION_14_1();
  if (v27)
  {
    v34 = OUTLINED_FUNCTION_1_3();
    v35(v34);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v46, &qword_2803A91B8);
    v21 = 0;
  }

  *&v14[v10[13]] = v21;
  sub_26A4DBD68(a7, v46, &qword_2803A91B8);
  OUTLINED_FUNCTION_14_1();
  if (v27)
  {
    v36 = OUTLINED_FUNCTION_1_3();
    v38 = v37(v36);
    OUTLINED_FUNCTION_20_0(a7);
    OUTLINED_FUNCTION_20_0(a6);
    OUTLINED_FUNCTION_20_0(a5);
    OUTLINED_FUNCTION_20_0(a4);
    OUTLINED_FUNCTION_20_0(a2);
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    OUTLINED_FUNCTION_18_0(a7);
    OUTLINED_FUNCTION_18_0(a6);
    OUTLINED_FUNCTION_18_0(a5);
    OUTLINED_FUNCTION_18_0(a4);
    OUTLINED_FUNCTION_18_0(a2);
    OUTLINED_FUNCTION_18_0(v46);
    v38 = 0;
  }

  *&v14[v10[14]] = v38;
  sub_26A4E95F8(v14, a8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for SummaryItemDetailedTextView()
{
  result = qword_2803AAF18;
  if (!qword_2803AAF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SummaryItemDetailedTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v20[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A4E63F0(&v20[-v9]);
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  sub_26A4E65D8();
  sub_26A4E672C(v6);
  sub_26A84F3A8();
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v21 = v1;
  sub_26A4C50BC();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_26A68CCBC;
  *(v14 + 24) = 0;
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF00) + 36);
  *(v15 + 16) = swift_getKeyPath();
  *(v15 + 24) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v17 = *(v16 + 40);
  *(v15 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v18 = v15 + *(v16 + 44);
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  *v15 = sub_26A4D1F7C;
  *(v15 + 8) = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF08);
  *(a1 + *(result + 36)) = 12;
  return result;
}

uint64_t sub_26A4E70AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA2C8);
  MEMORY[0x28223BE20](v29);
  v4 = &v27 - v3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF60);
  MEMORY[0x28223BE20](v27);
  v28 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA2B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA2A8);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = sub_26A84F3A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A4E672C(v15);
  v16 = sub_26A84F388();
  (*(v13 + 8))(v15, v12);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28));
  if (v16)
  {
    v18 = sub_26A84FC08();
    v19 = v17[4];
    *v8 = v18;
    *(v8 + 1) = v19;
    v8[16] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF70);
    sub_26A4E816C(a1, &v8[*(v20 + 44)]);
    sub_26A851458();
    sub_26A84F628();
    sub_26A4DBDB4(v8, v11, &qword_2803AA2B8);
    memcpy(&v11[*(v9 + 36)], __src, 0x70uLL);
    v21 = &qword_2803AA2A8;
    sub_26A4DBD68(v11, v28, &qword_2803AA2A8);
    swift_storeEnumTagMultiPayload();
    sub_26A4D7618();
    sub_26A4DBCC8(&qword_2803AA2C0, &qword_2803AA2C8);
    sub_26A84FDF8();
    v22 = v11;
  }

  else
  {
    v23 = v28;
    if (qword_28157FC98 != -1)
    {
      swift_once();
    }

    v24 = *v17;
    *v4 = qword_2815889D8;
    *(v4 + 1) = v24;
    v4[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF68);
    sub_26A4E7558(a1, v17, &v4[*(v25 + 44)]);
    v21 = &qword_2803AA2C8;
    sub_26A4DBD68(v4, v23, &qword_2803AA2C8);
    swift_storeEnumTagMultiPayload();
    sub_26A4D7618();
    sub_26A4DBCC8(&qword_2803AA2C0, &qword_2803AA2C8);
    sub_26A84FDF8();
    v22 = v4;
  }

  return sub_26A4DBD10(v22, v21);
}

uint64_t sub_26A4E7558@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFB0);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v8);
  v12 = &v21[-v11 - 8];
  sub_26A4E7834();
  v13 = *a2;
  KeyPath = swift_getKeyPath();
  v15 = &v12[*(v7 + 44)];
  *v15 = KeyPath;
  v15[8] = 0;
  *(v15 + 2) = v13;
  v16 = sub_26A84FC08();
  v17 = a2[4];
  v25[0] = v16;
  v25[1] = v17;
  LOBYTE(v25[2]) = 0;
  sub_26A4E7AB0(a1, &v25[3]);
  sub_26A851458();
  sub_26A84F628();
  memcpy(v24, v25, 0x639uLL);
  memcpy(v25, v24, 0x6B0uLL);
  sub_26A4E80B8();
  v22[37] = swift_getKeyPath();
  v23 = 2;
  sub_26A4DBD68(v12, v10, &qword_2803AAFB0);
  sub_26A4DBD68(v25, v24, &qword_2803AAFB8);
  sub_26A4DBD68(v22, v21, &qword_2803AAFC0);
  sub_26A4DBD68(v10, a3, &qword_2803AAFB0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFC8);
  sub_26A4DBD68(v24, a3 + *(v18 + 48), &qword_2803AAFB8);
  sub_26A4DBD68(v21, a3 + *(v18 + 64), &qword_2803AAFC0);
  sub_26A4DBD10(v22, &qword_2803AAFC0);
  sub_26A4DBD10(v25, &qword_2803AAFB8);
  sub_26A4DBD10(v12, &qword_2803AAFB0);
  sub_26A4DBD10(v21, &qword_2803AAFC0);
  sub_26A4DBD10(v24, &qword_2803AAFB8);
  return sub_26A4DBD10(v10, &qword_2803AAFB0);
}

uint64_t sub_26A4E7834()
{
  OUTLINED_FUNCTION_13_1();
  v2 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  v12 = (&v35 - v11);
  v13 = *(v1 + *(type metadata accessor for SummaryItemDetailedTextView() + 56));
  if (v13)
  {
    (*(v4 + 104))(v8, *MEMORY[0x277D62B28], v2);
    KeyPath = swift_getKeyPath();
    v15 = (v12 + *(v9 + 36));
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440);
    (*(v4 + 32))(v15 + *(v16 + 28), v8, v2);
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v2);
    *v15 = KeyPath;
    *v12 = v13;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFD8);
    v21 = (v0 + *(v20 + 36));
    v22 = *(sub_26A84F5F8() + 20);
    v23 = *MEMORY[0x277CE0118];
    sub_26A84FB88();
    OUTLINED_FUNCTION_46();
    (*(v24 + 104))(&v21[v22], v23);
    __asm { FMOV            V0.2D, #4.0 }

    *v21 = _Q0;
    *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)] = 256;
    sub_26A4DBDB4(v12, v0, &qword_2803AAFA0);
    OUTLINED_FUNCTION_22_0();
    v33 = v20;
  }

  else
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFD8);
    v30 = v0;
    v31 = 1;
    v32 = 1;
  }

  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
}

uint64_t sub_26A4E7AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A4E7E9C();
  v4 = type metadata accessor for SummaryItemDetailedTextView();
  v5 = *(a1 + *(v4 + 32));
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815888E8, v31, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v30, __src, sizeof(v30));
  v31[11] = 0;
  v31[10] = sub_26A80A810;
  v29 = v5;
  v6 = qword_28157FC78;

  if (v6 != -1)
  {
    swift_once();
  }

  v31[12] = qword_28157FC80;
  v31[13] = sub_26A4D82F0;
  v31[14] = 0;
  v31[15] = sub_26A84FBD8();
  v31[16] = sub_26A4D82F0;
  v31[17] = 0;
  sub_26A4E7F50();
  v7 = *(a1 + *(v4 + 40));
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588898, v27, &qword_2803AA880);
  sub_26A6AEE74(v34);
  memcpy(v26, v34, sizeof(v26));
  v27[11] = 0;
  v27[10] = sub_26A80A810;
  v25 = v7;

  sub_26A4E8004();
  v8 = sub_26A850258();
  sub_26A84ED48();
  v19[296] = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = 0;
  sub_26A4DBD68(v32, v18, &qword_2803AA888);
  sub_26A4DBD68(&v29, v17, &qword_2803AAFD0);
  sub_26A4DBD68(v28, v16, &qword_2803AA888);
  sub_26A4DBD68(&v25, v15, &qword_2803A99A0);
  sub_26A4DBD68(v19, v14, &qword_2803AAF88);
  sub_26A4DBD68(v18, a2, &qword_2803AA888);
  sub_26A4DBD68(v17, a2 + 296, &qword_2803AAFD0);
  sub_26A4DBD68(v16, a2 + 640, &qword_2803AA888);
  sub_26A4DBD68(v15, a2 + 936, &qword_2803A99A0);
  sub_26A4DBD68(v14, a2 + 1232, &qword_2803AAF88);
  sub_26A4DBD10(v19, &qword_2803AAF88);
  sub_26A4DBD10(&v25, &qword_2803A99A0);
  sub_26A4DBD10(v28, &qword_2803AA888);
  sub_26A4DBD10(&v29, &qword_2803AAFD0);
  sub_26A4DBD10(v32, &qword_2803AA888);
  sub_26A4DBD10(v14, &qword_2803AAF88);
  sub_26A4DBD10(v15, &qword_2803A99A0);
  sub_26A4DBD10(v16, &qword_2803AA888);
  sub_26A4DBD10(v17, &qword_2803AAFD0);
  return sub_26A4DBD10(v18, &qword_2803AA888);
}

uint64_t sub_26A4E7E9C()
{
  OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemDetailedTextView() + 52)))
  {
    if (qword_2803A9028 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2803D27B0, v0 + 200, &qword_2803AA880);
    v2 = sub_26A6AEE74(v11);
    OUTLINED_FUNCTION_12_1(v2, v3, v4, v5, v6, v7, v8, v9, v11[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_26A4E7F50()
{
  OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemDetailedTextView() + 36)))
  {
    if (qword_2803A9018 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2803D2760, v0 + 200, &qword_2803AA880);
    v2 = sub_26A6AEE74(v11);
    OUTLINED_FUNCTION_12_1(v2, v3, v4, v5, v6, v7, v8, v9, v11[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_26A4E8004()
{
  OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemDetailedTextView() + 44)))
  {
    if (qword_28157E6A0 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2815887F8, v0 + 200, &qword_2803AA880);
    v2 = sub_26A6AEE74(v11);
    OUTLINED_FUNCTION_12_1(v2, v3, v4, v5, v6, v7, v8, v9, v11[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_26A4E80B8()
{
  OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemDetailedTextView() + 48)))
  {
    if (qword_28157E6B0 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_281588898, v0 + 200, &qword_2803AA880);
    v2 = sub_26A6AEE74(v11);
    OUTLINED_FUNCTION_12_1(v2, v3, v4, v5, v6, v7, v8, v9, v11[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_26A4E816C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF78);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v4);
  v8 = &v28[-v7 - 8];
  sub_26A4E7E9C();
  *v8 = sub_26A84FA78();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF80);
  sub_26A4E8598(a1, &v8[*(v9 + 44)]);
  sub_26A4E7F50();
  v10 = sub_26A850258();
  sub_26A84ED48();
  v50[296] = v10;
  v51 = v11;
  v52 = v12;
  v53 = v13;
  v54 = v14;
  v55 = 0;
  v15 = *(a1 + *(type metadata accessor for SummaryItemDetailedTextView() + 40));
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588898, v49, &qword_2803AA880);
  sub_26A6AEE74(v57);
  memcpy(v48, v57, sizeof(v48));
  v49[11] = 0;
  v49[10] = sub_26A80A810;
  v47 = v15;

  sub_26A4E8004();
  v16 = sub_26A850258();
  sub_26A84ED48();
  v41[296] = v16;
  v42 = v17;
  v43 = v18;
  v44 = v19;
  v45 = v20;
  v46 = 0;
  sub_26A4E80B8();
  v34[37] = swift_getKeyPath();
  v34[38] = 0x4000000000000000;
  v21 = sub_26A850258();
  sub_26A84ED48();
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v40 = 0;
  sub_26A4DBD68(v56, v32, &qword_2803AA888);
  v33[0] = v32;
  sub_26A4DBD68(v8, v6, &qword_2803AAF78);
  v33[1] = v6;
  sub_26A4DBD68(v50, v31, &qword_2803AAF88);
  v33[2] = v31;
  sub_26A4DBD68(&v47, v30, &qword_2803A99A0);
  v33[3] = v30;
  sub_26A4DBD68(v41, v29, &qword_2803AAF88);
  v33[4] = v29;
  sub_26A4DBD68(v34, v28, &qword_2803AAF90);
  v33[5] = v28;
  sub_26A593EA0(v33);
  sub_26A4DBD10(v34, &qword_2803AAF90);
  sub_26A4DBD10(v41, &qword_2803AAF88);
  sub_26A4DBD10(&v47, &qword_2803A99A0);
  sub_26A4DBD10(v50, &qword_2803AAF88);
  sub_26A4DBD10(v8, &qword_2803AAF78);
  sub_26A4DBD10(v56, &qword_2803AA888);
  sub_26A4DBD10(v28, &qword_2803AAF90);
  sub_26A4DBD10(v29, &qword_2803AAF88);
  sub_26A4DBD10(v30, &qword_2803A99A0);
  sub_26A4DBD10(v31, &qword_2803AAF88);
  sub_26A4DBD10(v6, &qword_2803AAF78);
  return sub_26A4DBD10(v32, &qword_2803AA888);
}

uint64_t sub_26A4E8598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84B1D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF98);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v34 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&KeyPath - v12);
  MEMORY[0x28223BE20](v11);
  v33 = &KeyPath - v14;
  v15 = type metadata accessor for SummaryItemDetailedTextView();
  v16 = *(a1 + *(v15 + 56));
  if (v16)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D62B18], v4);
    KeyPath = swift_getKeyPath();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
    v31 = v15;
    v32 = a2;
    v18 = v17;
    v19 = (v13 + *(v17 + 36));
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
    (*(v5 + 32))(v19 + v20, v7, v4);
    __swift_storeEnumTagSinglePayload(v19 + v20, 0, 1, v4);
    *v19 = KeyPath;
    *v13 = v16;
    v21 = v13;
    v22 = 0;
    v23 = v18;
    v15 = v31;
    a2 = v32;
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
    v21 = v13;
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v21, v22, 1, v23);
  v24 = v33;
  sub_26A4DBDB4(v13, v33, &qword_2803AAF98);
  v25 = *(a1 + *(v15 + 32));
  v26 = qword_28157E6C0;

  if (v26 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815888E8, v38, &qword_2803AA880);
  sub_26A6AEE74(v39);
  memcpy(v37, v39, sizeof(v37));
  v38[11] = 0;
  v38[10] = sub_26A80A810;
  v36 = v25;
  v27 = v34;
  sub_26A4DBD68(v24, v34, &qword_2803AAF98);
  sub_26A4DBD68(&v36, v35, &qword_2803A99A0);
  sub_26A4DBD68(v27, a2, &qword_2803AAF98);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA8);
  sub_26A4DBD68(v35, a2 + *(v28 + 48), &qword_2803A99A0);

  sub_26A4DBD10(&v36, &qword_2803A99A0);
  sub_26A4DBD10(v24, &qword_2803AAF98);
  sub_26A4DBD10(v35, &qword_2803A99A0);
  return sub_26A4DBD10(v27, &qword_2803AAF98);
}

uint64_t sub_26A4E8990()
{
  v128 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v114 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v113 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v127 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v125 = &v112 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  OUTLINED_FUNCTION_79(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  v119 = &v112 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  v115 = &v112 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  v18 = OUTLINED_FUNCTION_79(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  v116 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v112 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v112 - v25;
  v27 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_41();
  v33 = v32 - v31;
  v120 = type metadata accessor for SummaryItemDetailedTextView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_0();
  v37 = (v35 - v36);
  MEMORY[0x28223BE20](v38);
  v129 = &v112 - v39;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAAC8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v40);
  v122 = &v112 - v41;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAAD0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_0();
  v124 = v43 - v44;
  MEMORY[0x28223BE20](v45);
  v123 = &v112 - v46;
  sub_26A84D698();
  v118 = TextProperty.asAnyView()();
  v47 = *(v29 + 8);
  v47(v33, v27);
  v130 = v0;
  sub_26A84D6A8();
  OUTLINED_FUNCTION_26_0(v26);
  if (v48)
  {
    sub_26A4DBD10(v26, &qword_2803AA838);
    OUTLINED_FUNCTION_2_0();
    v137[1] = 0;
    v137[2] = 0;
  }

  else
  {
    v0 = TextProperty.asAnyView()();
    v47(v26, v27);
    v49 = &protocol witness table for AnyView;
    v50 = MEMORY[0x277CE11C8];
  }

  v137[0] = v0;
  v137[3] = v50;
  v137[4] = v49;
  v51 = v130;
  sub_26A84D6B8();
  v117 = TextProperty.asAnyView()();
  v47(v33, v27);
  v52 = v51;
  sub_26A84D6C8();
  OUTLINED_FUNCTION_26_0(v23);
  v53 = v115;
  if (v48)
  {
    sub_26A4DBD10(v23, &qword_2803AA838);
    OUTLINED_FUNCTION_2_0();
    v136[1] = 0;
    v136[2] = 0;
  }

  else
  {
    v52 = TextProperty.asAnyView()();
    v47(v23, v27);
    v54 = &protocol witness table for AnyView;
    v55 = MEMORY[0x277CE11C8];
  }

  v136[0] = v52;
  v136[3] = v55;
  v136[4] = v54;
  v56 = v51;
  sub_26A84D6D8();
  v57 = sub_26A84D098();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v57);
  v59 = v119;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4DBD10(v53, &qword_2803AA830);
    OUTLINED_FUNCTION_2_0();
    v135[1] = 0;
    v135[2] = 0;
  }

  else
  {
    v56 = v53;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_29();
    (*(v62 + 8))(v53, v57);
    v60 = &protocol witness table for AnyView;
    v61 = MEMORY[0x277CE11C8];
  }

  v135[0] = v56;
  v135[3] = v61;
  v135[4] = v60;
  v63 = v116;
  v64 = v51;
  sub_26A84D6E8();
  OUTLINED_FUNCTION_26_0(v63);
  v65 = v122;
  if (v48)
  {
    sub_26A4DBD10(v63, &qword_2803AA838);
    OUTLINED_FUNCTION_2_0();
    v134[1] = 0;
    v134[2] = 0;
  }

  else
  {
    v64 = TextProperty.asAnyView()();
    v47(v63, v27);
    v66 = &protocol witness table for AnyView;
    v67 = MEMORY[0x277CE11C8];
  }

  v68 = v120;
  v134[0] = v64;
  v134[3] = v67;
  v134[4] = v66;
  v69 = v51;
  sub_26A84D708();
  v70 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v59, 1, v70) == 1)
  {
    sub_26A4DBD10(v59, &qword_2803AAD50);
    OUTLINED_FUNCTION_2_0();
    v133[1] = 0;
    v133[2] = 0;
  }

  else
  {
    v69 = v59;
    VisualProperty.asAnyView()();
    OUTLINED_FUNCTION_29();
    (*(v73 + 8))(v59, v70);
    v71 = &protocol witness table for AnyView;
    v72 = MEMORY[0x277CE11C8];
  }

  v133[0] = v69;
  v133[3] = v72;
  v133[4] = v71;
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146();
  }

  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  v75 = __swift_project_value_buffer(v74, qword_281588798);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  v77 = &v37[*(v76 + 32)];
  sub_26A4DBD68(v75, v77, &qword_2803B3890);
  sub_26A6AEE74(v138);
  memcpy(v37, v138, 0xBFuLL);
  sub_26A4DB4E0(v77 + *(v74 + 36), &v37[*(v76 + 28)]);
  v78 = v68[5];
  *&v37[v78] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v79 = &v37[v68[6]];
  *v79 = swift_getKeyPath();
  v79[8] = 0;
  v80 = v68[7];
  *&v37[v80] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  *&v37[v68[8]] = v118;
  sub_26A4DBD68(v137, v131, &qword_2803A91B8);
  if (v132)
  {
    v81 = OUTLINED_FUNCTION_2_3();
    v82(v81);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4DBD10(v131, &qword_2803A91B8);
    v80 = 0;
  }

  v83 = v128;
  *&v37[v68[9]] = v80;
  *&v37[v68[10]] = v117;
  sub_26A4DBD68(v136, v131, &qword_2803A91B8);
  if (v132)
  {
    v84 = OUTLINED_FUNCTION_2_3();
    v85(v84);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4DBD10(v131, &qword_2803A91B8);
    v80 = 0;
  }

  *&v37[v68[11]] = v80;
  sub_26A4DBD68(v135, v131, &qword_2803A91B8);
  if (v132)
  {
    v86 = OUTLINED_FUNCTION_2_3();
    v87(v86);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4DBD10(v131, &qword_2803A91B8);
    v80 = 0;
  }

  *&v37[v68[12]] = v80;
  sub_26A4DBD68(v134, v131, &qword_2803A91B8);
  if (v132)
  {
    v88 = OUTLINED_FUNCTION_2_3();
    v89(v88);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4DBD10(v131, &qword_2803A91B8);
    v80 = 0;
  }

  *&v37[v68[13]] = v80;
  sub_26A4DBD68(v133, v131, &qword_2803A91B8);
  if (v132)
  {
    v90 = OUTLINED_FUNCTION_2_3();
    v92 = v91(v90);
    OUTLINED_FUNCTION_19_0(v133);
    OUTLINED_FUNCTION_19_0(v134);
    OUTLINED_FUNCTION_19_0(v135);
    OUTLINED_FUNCTION_19_0(v136);
    OUTLINED_FUNCTION_19_0(v137);
    __swift_destroy_boxed_opaque_existential_1(v131);
  }

  else
  {
    OUTLINED_FUNCTION_9_0(v133);
    OUTLINED_FUNCTION_9_0(v134);
    OUTLINED_FUNCTION_9_0(v135);
    OUTLINED_FUNCTION_9_0(v136);
    OUTLINED_FUNCTION_9_0(v137);
    OUTLINED_FUNCTION_9_0(v131);
    v92 = 0;
  }

  *&v37[v68[14]] = v92;
  sub_26A4E95F8(v37, v129);
  v93 = v125;
  sub_26A84D6F8();
  v94 = v127;
  sub_26A4DBDB4(v93, v127, &qword_2803B3800);
  if (__swift_getEnumTagSinglePayload(v94, 1, v83) == 1)
  {
    sub_26A4DBD10(v94, &qword_2803B3800);
    KeyPath = swift_getKeyPath();
    v96 = (v65 + *(v121 + 36));
    v97 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v98 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v96 + v97, 1, 1, v98);
    *v96 = KeyPath;
  }

  else
  {
    v99 = v113;
    v100 = *(v114 + 32);
    v100(v113, v94, v83);
    v101 = swift_getKeyPath();
    v102 = (v65 + *(v121 + 36));
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0);
    v100(v102 + *(v103 + 28), v99, v83);
    v104 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v104);
    *v102 = v101;
  }

  sub_26A4E95F8(v129, v65);
  v108 = sub_26A84D668();
  v109 = v123;
  sub_26A4DC1DC(v108);

  sub_26A4DBD10(v65, &qword_2803AAAC8);
  sub_26A84D678();

  sub_26A4DBD68(v109, v124, &qword_2803AAAD0);
  sub_26A4E99E0();
  v110 = sub_26A851248();
  OUTLINED_FUNCTION_9_0(v109);
  return v110;
}

uint64_t sub_26A4E95F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemDetailedTextView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A4E9680(uint64_t a1)
{
  result = sub_26A4E9C0C(&qword_2803AAF10, MEMORY[0x277D63568]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A4E9700()
{
  sub_26A4E20C4(319, qword_28157E830, type metadata accessor for SummaryItemConstants, type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A4D27F4();
    if (v1 <= 0x3F)
    {
      sub_26A4E20C4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A4E20C4(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26A4E5E18();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_26A4E9870()
{
  result = qword_2803AAF28;
  if (!qword_2803AAF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAF08);
    sub_26A4E98FC();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAF28);
  }

  return result;
}

unint64_t sub_26A4E98FC()
{
  result = qword_2803AAF30;
  if (!qword_2803AAF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAF00);
    sub_26A4DBCC8(&qword_2803AAF38, &qword_2803AA290);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAF30);
  }

  return result;
}

unint64_t sub_26A4E99E0()
{
  result = qword_2803AAF40;
  if (!qword_2803AAF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAD0);
    sub_26A4E9A98();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAF40);
  }

  return result;
}

unint64_t sub_26A4E9A98()
{
  result = qword_2803AAF48;
  if (!qword_2803AAF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAC0);
    sub_26A4E9B24();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAF48);
  }

  return result;
}

unint64_t sub_26A4E9B24()
{
  result = qword_2803AAF50;
  if (!qword_2803AAF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAC8);
    sub_26A4E9C0C(&qword_2803AAF58, type metadata accessor for SummaryItemDetailedTextView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAF50);
  }

  return result;
}

uint64_t sub_26A4E9C0C(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_0_4()
{
  v0[35] = sub_26A80A810;
  v0[36] = 0;
  *v0 = v1;
}

void *OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy((v9 + 8), &a9, 0xBFuLL);
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1);
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1);
}

uint64_t OUTLINED_FUNCTION_20_0(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1);
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 - 320);
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 + 152);
}

void OUTLINED_FUNCTION_25_0()
{

  bzero(v0, 0x128uLL);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26A4E9DF8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 9))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26A4E9E4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26A4E9ECC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    if (qword_2803A9098 != -1)
    {
      swift_once();
    }

    v5 = &unk_2803D2BC0;
  }

  else
  {
    if (qword_2803A90A0 != -1)
    {
      swift_once();
    }

    v5 = &unk_2803D2C10;
  }

  sub_26A4EA070(v5, v8, &qword_2803AA880);
  sub_26A4EA070(v8, v11, &qword_2803AA880);
  sub_26A6AEE74(__src);
  sub_26A4E2544(v8, &qword_2803AA880);
  memcpy(v10, __src, sizeof(v10));
  v11[11] = 0;
  v11[10] = sub_26A80A810;
  v9 = a1;
  sub_26A4EA070(&v9, v8, &qword_2803AAFE0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFE0);
  sub_26A4EA0D8();
  v6 = sub_26A851248();
  result = sub_26A4E2544(&v9, &qword_2803AAFE0);
  *a3 = v6;
  return result;
}

uint64_t sub_26A4EA070(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26A4EA0D8()
{
  result = qword_2803AAFE8;
  if (!qword_2803AAFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAFE0);
    sub_26A4EA164();
    sub_26A4EA1E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAFE8);
  }

  return result;
}

unint64_t sub_26A4EA164()
{
  result = qword_2803AAFF0;
  if (!qword_2803AAFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAFF0);
  }

  return result;
}

unint64_t sub_26A4EA1E0()
{
  result = qword_2803A99A8;
  if (!qword_2803A99A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A99B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A99A8);
  }

  return result;
}

uint64_t sub_26A4EA244@<X0>(uint64_t a1@<X0>, double *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v10 = sub_26A851E88();
  LOBYTE(v63) = 2;
  sub_26A7A8D74(v10, 1, "SnippetUI/TableLayoutComputer+StandardLayout.swift", 50, 2, 14, "resolveStandardLayout(columns:metrics:useCompact:)", 50, v63, v64, v65, v66, v67, v68, v69, *&v70, v71, v72, v73, v74, v75, v76);
  v64 = a1;
  v12 = v4[1];
  v11 = v4[2];
  v13 = v4[3];
  v14 = v4[4];

  if ((a3 & 1) == 0)
  {

    v16 = v12;
    goto LABEL_7;
  }

  v16 = v11;
  if (sub_26A69676C(v15))
  {

    v16 = v12;
  }

  if (sub_26A69676C(v14))
  {
    v12 = v16;
LABEL_7:
    v17 = v12;
    v18 = v13;
    goto LABEL_9;
  }

  v17 = v16;
  v18 = v14;
LABEL_9:
  v19 = sub_26A69620C(v17, v18);

  sub_26A4EA694(&v64, v19, a2);
  sub_26A5377F8(&v64, v19);

  sub_26A581720(&v64);
  v20 = 0;
  v21 = v64;
  v22 = *a2;
  v23 = *(a2 + 1);
  v24 = *(v64 + 16);
  v25 = (v64 + 64);
  v26 = 0.0;
  v27 = v24;
  if (v24)
  {
    while (1)
    {
      v28 = *v25;
      v29 = __OFADD__(v20, v28);
      v20 += v28;
      if (v29)
      {
        break;
      }

      v26 = v26 + *(v25 - 4);
      v25 += 9;
      if (!--v27)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

LABEL_12:
  v16 = v24 - v20;
  if (__OFSUB__(v24, v20))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v30 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v31 = v30;
  if (v30 < 0)
  {
    v31 = 0.0;
  }

  v72 = v22;
  v73 = v23;
  v74 = v24 - v20;
  v75 = v20;
  *&v76 = *&v23 * v31;
  v77 = *&v22 - *&v23 * v31;
  v78 = v26;
  v5 = v77 - v26;
  if (v77 - v26 > 0.0)
  {
    if (v20 < 1)
    {
      if (v24)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_32:
          v36 = 0;
          v38 = v26 == 0.0 && v16 > 0;
          v39 = *(v21 + 16);
          v40 = 32;
          while (1)
          {
            if (v36 >= v39)
            {
              goto LABEL_67;
            }

            v41 = v5 / v16;
            if (v38)
            {
              goto LABEL_43;
            }

            if (v26 > 0.0)
            {
              break;
            }

LABEL_44:
            ++v36;
            v40 += 72;
            if (v24 == v36)
            {
              goto LABEL_45;
            }
          }

          v41 = *(v21 + v40) + floor(v5 * *(v21 + v40) / v26);
LABEL_43:
          *(v21 + v40) = v41;
          goto LABEL_44;
        }

LABEL_73:
        sub_26A848EC8();
        v21 = v62;
        goto LABEL_32;
      }
    }

    else if (v24)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_20:
        if (v24 <= *(v21 + 16))
        {
          v32 = (v21 + 64);
          do
          {
            if (*v32 == 1)
            {
              *(v32 - 4) = v5 / v20;
            }

            v32 += 9;
            --v24;
          }

          while (v24);
          goto LABEL_45;
        }

        __break(1u);
        goto LABEL_73;
      }

LABEL_71:
      sub_26A848EC8();
      v21 = v61;
      goto LABEL_20;
    }

LABEL_45:
    sub_26A84ACB8();
    v34 = type metadata accessor for ResolvedTableLayout();
    v35 = a4 + *(v34 + 20);
    *v35 = v21;
    goto LABEL_46;
  }

  if (v5 >= 0.0)
  {
    goto LABEL_45;
  }

  if (a3 & 1) != 0 || (sub_26A69676C(v14) & 1) != 0 && (sub_26A69676C(v11))
  {
    if (sub_26A4EA794(&v64, &v72))
    {
      v33 = v64;
      sub_26A84ACB8();
      v34 = type metadata accessor for ResolvedTableLayout();
      v35 = a4 + *(v34 + 20);
      *v35 = v33;
LABEL_46:
      *(v35 + 8) = 0;
      *(a4 + *(v34 + 24)) = a3 & 1;
LABEL_47:
      OUTLINED_FUNCTION_0_5();

      return __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    }

    result = sub_26A4EAA0C(&v64, &v72);
    if ((result & 1) == 0)
    {

      type metadata accessor for ResolvedTableLayout();
      goto LABEL_47;
    }

    v51 = 0;
    v52 = *(v64 + 16);
    v53 = (v64 + 64);
    v54 = 0.0;
    v55 = v52;
    if (v52)
    {
      while (1)
      {
        v56 = *v53;
        v29 = __OFADD__(v51, v56);
        v51 += v56;
        if (v29)
        {
          break;
        }

        v54 = v54 + *(v53 - 4);
        v53 += 9;
        if (!--v55)
        {
          goto LABEL_57;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

LABEL_57:
    v29 = __OFSUB__(v52, v51);
    v57 = v52 - v51;
    if (v29)
    {
      __break(1u);
    }

    else
    {
      v58 = v57 - 1;
      if (!__OFSUB__(v57, 1))
      {
        v59 = v58;
        if (v58 < 0)
        {
          v59 = 0.0;
        }

        v65 = v22;
        v66 = v23;
        v67 = v57;
        v68 = v51;
        *&v69 = *&v23 * v59;
        v70 = *&v22 - *&v23 * v59;
        v71 = *&v54;
        v48 = &v65;
        v50 = a3 & 1;
        v49 = v64;
        goto LABEL_62;
      }
    }

    __break(1u);
    return result;
  }

  v48 = &v72;
  v49 = v21;
  v50 = 1;
LABEL_62:
  sub_26A4EA244(v49, v48, v50);
  OUTLINED_FUNCTION_0_5();
}

void sub_26A4EA694(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_18:
      sub_26A848EC8();
      v3 = v16;
    }

    v8 = 0;
    v9 = (v3 + 64);
    do
    {
      if (v8 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      if ((*v9 & 1) == 0)
      {
        if (*(v9 - 16))
        {
          v10 = 0.0;
          if (*(a2 + 16))
          {
            v11 = sub_26A5484D4(*(v9 - 1));
            if (v12)
            {
              v13 = *(*(a2 + 56) + 8 * v11);
              if (*(v13 + 16))
              {
                v14 = sub_26A5484D4(1);
                if (v15)
                {
                  v10 = *(*(v13 + 56) + 8 * v14);
                }
              }
            }
          }
        }

        else
        {
          v10 = *(v9 - 3) * *(a3 + 40);
        }

        *(v9 - 4) = v10;
      }

      ++v8;
      v9 += 72;
    }

    while (v4 != v8);
    *a1 = v3;
  }
}

BOOL sub_26A4EA794(void *a1, uint64_t a2)
{
  v5 = v2;
  v7 = a1;
  v8 = 0;
  v9 = *(a2 + 40);
  if (v9 / *(a2 + 16) > 32.0)
  {
    v10 = v9 / *(a2 + 16);
  }

  else
  {
    v10 = 32.0;
  }

  v11 = *a1;
  v12 = *(*a1 + 16);
  v13 = MEMORY[0x277D84F90];
LABEL_5:
  v14 = 72 * v8;
  while (v12 != v8)
  {
    if (v8 >= *(v11 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      sub_26A848EC8();
      v11 = v28;
      goto LABEL_25;
    }

    v3 = *(v11 + v14 + 32);
    v15 = *(v11 + v14 + 40);
    v16 = *(v11 + v14 + 48);
    v30 = *(v11 + v14 + 49);
    v31 = *(v11 + v14 + 65);
    v32 = *(v11 + v14 + 81);
    if (v16)
    {
      v17 = *(v11 + v14 + 97);
      if ((v17 & 1) == 0 && v10 < v3)
      {
        v29 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7DCCC0(0, *(v13 + 16) + 1, 1);
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          sub_26A7DCCC0(v18 > 1, v19 + 1, 1);
          v20 = v19 + 1;
        }

        v21 = v13 + 80 * v19;
        *(v21 + 32) = v8++;
        *(v13 + 16) = v20;
        *(v21 + 40) = v3;
        *(v21 + 48) = v15;
        *(v21 + 56) = v16;
        *(v21 + 89) = v32;
        *(v21 + 73) = v31;
        *(v21 + 57) = v30;
        *(v21 + 105) = v17;
        v7 = v29;
        goto LABEL_5;
      }
    }

    v14 += 72;
    ++v8;
  }

  v12 = *(v13 + 16);
  if (v12)
  {
    v22 = (v13 + 40);
    v10 = 0.0;
    v23 = *(v13 + 16);
    do
    {
      v24 = *v22;
      v22 += 10;
      v10 = v10 + v24;
      --v23;
    }

    while (v23);
  }

  else
  {
    v10 = 0.0;
  }

  v4 = v9 - *(a2 + 48);
  v9 = -v4;
  v3 = v10 * *(v5 + 48);
  if (v3 < -v4 || !v12)
  {

    return v3 >= v9;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_25:
  v25 = 32;
  do
  {
    v26 = *(v13 + v25);
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    if (v26 >= *(v11 + 16))
    {
      goto LABEL_34;
    }

    *(v11 + 32 + 72 * v26) = *(v11 + 32 + 72 * v26) + v4 * (*(v11 + 32 + 72 * v26) / v10);
    v25 += 80;
    --v12;
  }

  while (v12);

  *v7 = v11;
  return v3 >= v9;
}

uint64_t sub_26A4EAA0C(void *a1, uint64_t a2)
{
  v3 = v2;
  __dst[0] = *a1;
  v4 = __dst[0];
  __dst[1] = sub_26A4EADFC;
  __dst[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB008);
  *(swift_allocObject() + 16) = xmmword_26A8570D0;
  swift_getKeyPath();

  sub_26A84A8C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB018);
  sub_26A4DBCC8(&qword_2803AB020, &qword_2803AB010);
  sub_26A4DBCC8(&qword_2803AB028, &qword_2803AB018);
  sub_26A4DBCC8(&qword_2803AB030, &qword_2803AB008);
  v5 = v4;
  v6 = sub_26A851988();

  v7 = *(a2 + 40) - *(a2 + 48);
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = -v7;
    v12 = (v6 + 80);
    v13 = 1;
    v14 = 0.0;
    do
    {
      v15 = v13;
      v16 = *(v12 - 1);
      v13 = *v12;
      if (v14 >= v11)
      {
        if (v15)
        {
          if (!*v12)
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v10 == v16)
          {
            v17 = *v12;
          }

          else
          {
            v17 = 1;
          }

          if (v17)
          {
            goto LABEL_13;
          }
        }
      }

      ++v9;
      v14 = v14 + *(v12 - 6) + *(v3 + 40);
      v12 += 72;
      v10 = v16;
    }

    while (v8 != v9);
    v9 = *(v6 + 16);
LABEL_13:
    if (v14 >= v11)
    {
      goto LABEL_18;
    }

LABEL_16:

    return 0;
  }

  if (v7 < 0.0)
  {
    goto LABEL_16;
  }

  v9 = 0;
LABEL_18:
  v22 = sub_26A7F7BA0(v9, v6);
  v23 = *(v4 + 16);
  if (v23)
  {
    v24 = v19;
    v25 = v20;
    v26 = v21;
    v27 = (v5 + 32);
    v28 = MEMORY[0x277D84F90];
    do
    {
      memcpy(__dst, v27, 0x42uLL);
      if (!sub_26A61B088(__dst, v22, v24, v25, v26))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7DCCE0(0, *(v28 + 16) + 1, 1);
        }

        v30 = *(v28 + 16);
        v29 = *(v28 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_26A7DCCE0(v29 > 1, v30 + 1, 1);
        }

        *(v28 + 16) = v30 + 1;
        memcpy((v28 + 72 * v30 + 32), __dst, 0x42uLL);
      }

      v27 += 72;
      --v23;
    }

    while (v23);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  swift_unknownObjectRelease();
  *a1 = v28;
  return 1;
}

uint64_t sub_26A4EB1A0()
{
  sub_26A852248();
  MEMORY[0x26D663B00](0xD000000000000015, 0x800000026A88AF10);
  sub_26A84E278();
  sub_26A4EB2DC();
  v0 = sub_26A852568();
  MEMORY[0x26D663B00](v0);

  MEMORY[0x26D663B00](0xD000000000000023, 0x800000026A88AF30);
  return 0;
}

uint64_t sub_26A4EB27C()
{
  sub_26A84E278();

  return sub_26A4EB1A0();
}

unint64_t sub_26A4EB2DC()
{
  result = qword_2803AB038;
  if (!qword_2803AB038)
  {
    sub_26A84E278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB038);
  }

  return result;
}

id sub_26A4EB3BC@<X0>(char *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = [v4 text_1];
  if (!v6)
  {
    sub_26A4E353C();
    swift_allocError();
    *v31 = v4;
    *(v31 + 8) = &unk_287B13170;
    *(v31 + 16) = 0;
    swift_willThrow();
    return v4;
  }

  v7 = v6;
  v140 = a1;
  v142 = v4;
  v8 = sub_26A4EC1C4(v4, &selRef_expanding_component_content, &qword_2803AB080);
  v144 = v7;
  if (!v8)
  {
    v10 = 0;
LABEL_53:
    v33 = [v142 attribution];
    if (v33)
    {
      v34 = v33;
      sub_26A761EE8(v232);
      if (v3)
      {

        v35 = 0;
      }

      else
      {

        __dst[0] = v232[0];
        LOBYTE(__dst[1]) = v232[1];
        __dst[2] = v232[2];
        *&__dst[3] = *&v232[3];
        sub_26A4EC55C();
        v35 = sub_26A851248();
      }
    }

    else
    {
      v35 = 0;
    }

    RFTextProperty.asPartialText()(v232);
    v36 = [v142 text_2];
    if (v36)
    {
      v37 = v36;
      *(&v230 + 1) = &type metadata for PartialText;
      v231 = &protocol witness table for PartialText;
      v229[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v229[0] + 16);
    }

    else
    {
      v231 = 0;
      v230 = 0u;
      *v229 = 0u;
    }

    v38 = [v142 thumbnail];
    if (v38)
    {
      v39 = v38;
      *(&v227 + 1) = sub_26A84BD28();
      v228 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(v226);
      RFVisualProperty.asVisualProperty()();

      if (v35)
      {
LABEL_63:
        v40 = &protocol witness table for AnyView;
        v41 = MEMORY[0x277CE11C8];
        goto LABEL_66;
      }
    }

    else
    {
      v228 = 0;
      v227 = 0u;
      *v226 = 0u;
      if (v35)
      {
        goto LABEL_63;
      }
    }

    v41 = 0;
    v40 = 0;
    v225[2] = 0;
    v225[1] = 0;
LABEL_66:
    v225[0] = v35;
    v225[3] = v41;
    v225[4] = v40;

    v42 = [v142 attribution_caveat];
    if (v42)
    {
      v43 = v42;
      *(&v223 + 1) = &type metadata for PartialText;
      v224 = &protocol witness table for PartialText;
      v222[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v222[0] + 16);

      if (v10)
      {
LABEL_68:
        v44 = Array<A>.asExpandedContentStack()(v10);

        v45 = &protocol witness table for AnyView;
        v46 = MEMORY[0x277CE11C8];
        goto LABEL_71;
      }
    }

    else
    {
      v224 = 0;
      v223 = 0u;
      *v222 = 0u;
      if (v10)
      {
        goto LABEL_68;
      }
    }

    v44 = 0;
    v46 = 0;
    v45 = 0;
    v221[2] = 0;
    v221[1] = 0;
LABEL_71:
    v235 = v35;
    v221[0] = v44;
    v221[3] = v46;
    v221[4] = v45;
    LODWORD(v165) = [v142 attribution_ignores_expansion];
    v9 = v140;
    *v140 = swift_getKeyPath();
    *(v140 + 9) = 0;
    swift_unknownObjectWeakInit();
    v12 = type metadata accessor for SummaryItemExpandableView();
    a1 = (v140 + *(v12 + 20));
    if (qword_28157E670 != -1)
    {
      goto LABEL_96;
    }

    goto LABEL_72;
  }

  v9 = v8;
  v10 = MEMORY[0x277D84F90];
  *v200 = MEMORY[0x277D84F90];
  v11 = sub_26A73670C(v8);
  v12 = 0;
  v13 = v9 & 0xC000000000000001;
  v235 = v9 & 0xFFFFFFFFFFFFFF8;
  v136 = v9 & 0xC000000000000001;
  v138 = v11;
  while (1)
  {
    if (v11 == v12)
    {

      goto LABEL_53;
    }

    if (v13)
    {
      v14 = MEMORY[0x26D6644E0](v12, v9);
    }

    else
    {
      if (v12 >= *(v235 + 16))
      {
        goto LABEL_93;
      }

      v14 = *(v9 + 8 * v12 + 32);
    }

    a1 = v14;
    v15 = (v12 + 1);
    if (__OFADD__(v12, 1))
    {
      break;
    }

    sub_26A7624FC(__dst);
    if (v3)
    {

      v3 = 0;
      ++v12;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v17 = sub_26A4EC1C4(v142, &selRef_referencedCommands, &qword_2803AB078);
      if (!v17)
      {
        v20 = 0;
        goto LABEL_46;
      }

      v18 = v17;
      v134 = KeyPath;
      v165 = [a1 command_reference];
      v158 = sub_26A73670C(v18);
      v12 = 0;
      v151 = v18 & 0xFFFFFFFFFFFFFF8;
      v153 = v18 & 0xC000000000000001;
      v147 = v18;
      for (i = v9; ; v9 = i)
      {
        if (v158 == v12)
        {

          v20 = 0;
          goto LABEL_45;
        }

        if (v153)
        {
          v19 = MEMORY[0x26D6644E0](v12, v18);
        }

        else
        {
          if (v12 >= *(v151 + 16))
          {
            goto LABEL_95;
          }

          v19 = *(v18 + 8 * v12 + 32);
        }

        v20 = v19;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_94;
        }

        v21 = [v19 commandReference];
        if (v21)
        {
          v22 = sub_26A4EC238(v21);
          v24 = v23;
          if (!v165)
          {
            v18 = v147;
            if (!v23)
            {
              goto LABEL_43;
            }

            goto LABEL_36;
          }

          v25 = v22;
        }

        else
        {
          if (!v165)
          {
            goto LABEL_43;
          }

          v24 = 0;
          v25 = 0;
        }

        v26 = sub_26A758F24(v165);
        if (!v24)
        {
          v18 = v147;
          if (!v27)
          {
            goto LABEL_43;
          }

          goto LABEL_36;
        }

        if (v27)
        {
          break;
        }

        v18 = v147;
LABEL_36:

LABEL_37:
        ++v12;
      }

      if (v25 == v26 && v24 == v27)
      {

        goto LABEL_44;
      }

      v29 = sub_26A852598();

      if ((v29 & 1) == 0)
      {

        v18 = v147;
        goto LABEL_37;
      }

LABEL_43:

LABEL_44:

      v9 = i;
LABEL_45:
      KeyPath = v134;
LABEL_46:
      sub_26A4EC2A8(__dst, v232);
      v232[6] = KeyPath;
      v232[7] = v20;
      sub_26A4EA070(v232, __dst, &qword_2803AB048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB048);
      sub_26A4EC304();
      sub_26A851248();

      v30 = sub_26A4E2544(v232, &qword_2803AB048);
      MEMORY[0x26D663CE0](v30);
      if (*(*v200 + 16) >= *(*v200 + 24) >> 1)
      {
        sub_26A851B08();
      }

      a1 = v200;
      sub_26A851B28();
      v10 = *v200;
      v12 = v15;
      v13 = v136;
      v11 = v138;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  swift_once();
LABEL_72:
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  v48 = __swift_project_value_buffer(v47, qword_281588798);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  v50 = &a1[*(v49 + 32)];
  sub_26A4EA070(v48, v50, &qword_2803B3890);
  sub_26A6AEE74(__src);
  memcpy(a1, __src, 0xBFuLL);
  sub_26A4DB4E0(v50 + *(v47 + 36), &a1[*(v49 + 28)]);
  v51 = (v9 + *(v12 + 24));
  if (qword_2803A8C48 != -1)
  {
    swift_once();
  }

  *v202 = xmmword_2803D1DE8;
  v203 = unk_2803D1DF8;
  *v204 = xmmword_2803D1E08;
  v205 = unk_2803D1E18;
  *v206 = xmmword_2803D1DE8;
  v207 = unk_2803D1DF8;
  *v208 = xmmword_2803D1E08;
  v209 = unk_2803D1E18;
  *v154 = unk_2803D1E18;
  v159 = xmmword_2803D1E08;
  sub_26A4EA070(v202, __dst, &qword_2803A91B0);
  sub_26A6AEE74(v210);
  memcpy(v51, v210, 0xC0uLL);
  v51[12] = v159;
  v51[13] = *v154;
  v52 = v209;
  v51[16] = *v208;
  v51[17] = v52;
  v53 = v207;
  v51[14] = *v206;
  v51[15] = v53;
  v54 = (v9 + *(v12 + 28));
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  *v211 = xmmword_281588758[0];
  v212 = unk_281588768;
  *v213 = xmmword_281588778;
  v214 = unk_281588788;
  *v215 = xmmword_281588758[0];
  *v216 = unk_281588768;
  v217 = xmmword_281588778;
  *v218 = unk_281588788;
  *v155 = unk_281588788;
  v160 = xmmword_281588778;
  sub_26A4EA070(v211, __dst, &qword_2803A91B0);
  sub_26A6AEE74(v219);
  memcpy(v54, v219, 0xC0uLL);
  v54[12] = v160;
  v54[13] = *v155;
  v55 = *v216;
  v54[14] = *v215;
  v54[15] = v55;
  v56 = *v218;
  v54[16] = v217;
  v54[17] = v56;
  v57 = *(v12 + 32);
  sub_26A6AEE74(v234);
  memcpy((v9 + v57), v234, 0xBFuLL);
  v58 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v58);
  v59 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v59);
  v60 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v60);
  v61 = *(v12 + 48);
  *(v9 + v61) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v62 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v62);
  v63 = v9 + *(v12 + 56);
  v200[0] = 0;
  sub_26A851048();
  v64 = __dst[1];
  *v63 = __dst[0];
  *(v63 + 8) = v64;
  v65 = memcpy(__dst, v232, 0xFAuLL);
  OUTLINED_FUNCTION_2_4(v65, v66, v67, v68, v69, v70, v71, v72, v132, v134, v136, v138, v140, v142, v144, v147, i, v151, v155[0], v155[1], v160, *(&v160 + 1), v163, v165, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, *v200);
  sub_26A4EC458(__dst, &v168);
  sub_26A4EC4B4();
  *(v9 + *(v12 + 60)) = sub_26A851248();
  sub_26A4EA070(v229, v200, &qword_2803A91B8);
  if (v201)
  {
    __swift_project_boxed_opaque_existential_1(v200, v201);
    v73 = OUTLINED_FUNCTION_0_7();
    v75 = v74(v73);
    OUTLINED_FUNCTION_5_2(v75, v76, v77, v78, v79, v80, v81, v82, v133, v135, v137, v139, v141, v143, v145, v148, v150, v152, v156, v157, v161, v162, v164, v166, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200[0]);
  }

  else
  {
    sub_26A4E2544(v200, &qword_2803A91B8);
    v63 = 0;
  }

  *(v9 + *(v12 + 64)) = v63;
  sub_26A4EA070(v226, v200, &qword_2803A91B8);
  if (v201)
  {
    __swift_project_boxed_opaque_existential_1(v200, v201);
    v83 = OUTLINED_FUNCTION_0_7();
    v85 = v84(v83);
    OUTLINED_FUNCTION_5_2(v85, v86, v87, v88, v89, v90, v91, v92, v133, v135, v137, v139, v141, v143, v145, v148, v150, v152, v156, v157, v161, v162, v164, v166, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200[0]);
  }

  else
  {
    sub_26A4E2544(v200, &qword_2803A91B8);
    v63 = 0;
  }

  *(v9 + *(v12 + 68)) = v63;
  sub_26A4EA070(v225, v200, &qword_2803A91B8);
  if (v201)
  {
    __swift_project_boxed_opaque_existential_1(v200, v201);
    v93 = OUTLINED_FUNCTION_0_7();
    v95 = v94(v93);
    OUTLINED_FUNCTION_5_2(v95, v96, v97, v98, v99, v100, v101, v102, v133, v135, v137, v139, v141, v143, v145, v148, v150, v152, v156, v157, v161, v162, v164, v166, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200[0]);
  }

  else
  {
    sub_26A4E2544(v200, &qword_2803A91B8);
    v63 = 0;
  }

  *(v9 + *(v12 + 72)) = v63;
  sub_26A4EA070(v222, v200, &qword_2803A91B8);
  if (v201)
  {
    __swift_project_boxed_opaque_existential_1(v200, v201);
    v103 = OUTLINED_FUNCTION_0_7();
    v105 = v104(v103);
    OUTLINED_FUNCTION_5_2(v105, v106, v107, v108, v109, v110, v111, v112, v133, v135, v137, v139, v141, v143, v145, v148, v150, v152, v156, v157, v161, v162, v164, v166, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200[0]);
  }

  else
  {
    sub_26A4E2544(v200, &qword_2803A91B8);
    v63 = 0;
  }

  *(v9 + *(v12 + 76)) = v63;
  v113 = sub_26A4EA070(v221, &v168, &qword_2803A91B8);
  if (v171)
  {
    __swift_project_boxed_opaque_existential_1(&v168, v171);
    v121 = OUTLINED_FUNCTION_0_7();
    v123 = v122(v121);

    OUTLINED_FUNCTION_2_4(v124, v125, v126, v127, v128, v129, v130, v131, v133, v135, v137, v139, v141, v143, v145, v148, v150, v152, v156, v157, v161, v162, v164, v166, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, *v200);
    sub_26A4EC508(v200);
    OUTLINED_FUNCTION_3_2(v221);
    OUTLINED_FUNCTION_3_2(v222);
    OUTLINED_FUNCTION_3_2(v225);
    OUTLINED_FUNCTION_3_2(v226);
    OUTLINED_FUNCTION_3_2(v229);
    result = __swift_destroy_boxed_opaque_existential_1(&v168);
  }

  else
  {
    OUTLINED_FUNCTION_2_4(v113, v114, v115, v116, v117, v118, v119, v120, v133, v135, v137, v139, v141, v143, v145, v148, v150, v152, v156, v157, v161, v162, v164, v166, v168, v169, v170, 0, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, *v200);
    sub_26A4EC508(v200);

    OUTLINED_FUNCTION_1_5(v221);
    OUTLINED_FUNCTION_1_5(v222);
    OUTLINED_FUNCTION_1_5(v225);
    OUTLINED_FUNCTION_1_5(v226);
    OUTLINED_FUNCTION_1_5(v229);
    result = OUTLINED_FUNCTION_1_5(&v168);
    v123 = 0;
  }

  *(v9 + *(v12 + 80)) = v123;
  *(v9 + *(v12 + 84)) = v167;
  *(v9 + *(v12 + 88)) = 0;
  return result;
}

unint64_t sub_26A4EC16C()
{
  result = qword_2803AB040;
  if (!qword_2803AB040)
  {
    type metadata accessor for SummaryItemExpandableView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB040);
  }

  return result;
}

uint64_t sub_26A4EC1C4(void *a1, SEL *a2, unint64_t *a3)
{
  v4 = [a1 *a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  sub_26A4EC5B0(0, a3);
  v6 = sub_26A851A98();

  return v6;
}

uint64_t sub_26A4EC238(void *a1)
{
  v2 = [a1 referenceIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26A8517B8();

  return v3;
}

unint64_t sub_26A4EC304()
{
  result = qword_2803AB050;
  if (!qword_2803AB050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB048);
    sub_26A4EC390();
    sub_26A4EC3E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB050);
  }

  return result;
}

unint64_t sub_26A4EC390()
{
  result = qword_2803AB058;
  if (!qword_2803AB058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB058);
  }

  return result;
}

unint64_t sub_26A4EC3E4()
{
  result = qword_2803AB060;
  if (!qword_2803AB060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB060);
  }

  return result;
}

uint64_t sub_26A4EC448(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_26A4EC4B4()
{
  result = qword_28157F800;
  if (!qword_28157F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157F800);
  }

  return result;
}

unint64_t sub_26A4EC55C()
{
  result = qword_2803AB070;
  if (!qword_2803AB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB070);
  }

  return result;
}

uint64_t sub_26A4EC5B0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{

  return sub_26A4E2544(a1, v1);
}

void *OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x6D8], 0xFAuLL);
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1)
{

  return sub_26A4E2544(a1, v1);
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{

  return __swift_destroy_boxed_opaque_existential_1(&a57);
}

double sub_26A4EC66C()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  v6 = *v0;
  if (v0[8] == 1)
  {
    return *v0;
  }

  sub_26A851EA8();
  v8 = sub_26A8501F8();
  OUTLINED_FUNCTION_55();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v6, 0);
  (*(v4 + 8))(v1, v2);
  return v9;
}

uint64_t sub_26A4EC78C()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  v6 = *(v0 + 16);
  if ((*(v0 + 24) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v4 + 8))(v1, v2);
    return v9;
  }

  return v6;
}

uint64_t KeyValueStandardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD20);
  v3 = OUTLINED_FUNCTION_79(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  *v5 = sub_26A84FBF8();
  *(v5 + 1) = 0x4014000000000000;
  v5[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB088);
  sub_26A4ECAA0();
  type metadata accessor for KeyValueStandardView();
  v6 = sub_26A84C108();
  sub_26A4DC2C4(v6);

  sub_26A4DBD10(v5, &qword_2803AAD20);
  if (qword_2803A8CB8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for SeparatorsConfig(0);
  __swift_project_value_buffer(v7, qword_2803D1E50);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB090) + 36);
  sub_26A4EEE08();
  __swift_storeEnumTagSinglePayload(a1 + v8, 0, 1, v7);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB098) + 36)) = 62;
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB0A0);
  v12 = a1 + *(result + 36);
  *v12 = KeyPath;
  *(v12 + 8) = 0;
  *(v12 + 16) = v10;
  *(v12 + 24) = 256;
  return result;
}

uint64_t sub_26A4ECAA0()
{
  v0 = type metadata accessor for KeyValueStandardView();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = *(sub_26A84C148() + 16);

  v7[0] = 0;
  v7[1] = v3;
  swift_getKeyPath();
  sub_26A4EEE08();
  v4 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v5 = swift_allocObject();
  sub_26A4EEE60(v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB118);
  sub_26A4EEF40();
  sub_26A4DBCC8(&qword_2803AB130, &qword_2803AB118);
  return sub_26A8512F8();
}

uint64_t type metadata accessor for KeyValueStandardView()
{
  result = qword_2803AB0B8;
  if (!qword_2803AB0B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A4ECCC4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_26A84FA58();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB138);
  return sub_26A4ECD2C(v3, a2 + *(v4 + 44));
}

uint64_t sub_26A4ECD2C@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB140);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB148);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_26A84B888();
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26A84C138();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v44 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - v18;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB150);
  v20 = MEMORY[0x28223BE20](v49);
  v45 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v35 - v22;
  v48 = *(type metadata accessor for KeyValueStandardView() + 24);
  v24 = sub_26A84C148();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(v24 + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v42 = v6;
  v40 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v25 = *(v15 + 72) * a1;
  v26 = *(v15 + 16);
  v43 = a1;
  v39 = v25;
  v41 = v26;
  v26(v19, v24 + v40 + v25, v14);

  sub_26A84C118();
  v38 = *(v15 + 8);
  v38(v19, v14);
  *v10 = sub_26A84FA78();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB158);
  sub_26A4ED638(v13, &v10[*(v27 + 44)]);
  sub_26A4EC66C();
  sub_26A851448();
  while (1)
  {
    sub_26A84F628();
    sub_26A4EF020();
    memcpy(&v23[*(v49 + 36)], __src, 0x70uLL);
    (*(v50 + 8))(v13, v51);
    v28 = sub_26A84C148();
    if (*(v28 + 16) > v43)
    {
      break;
    }

LABEL_8:
    __break(1u);
    v37 = sub_26A851EA8();
    v36 = sub_26A8501F8();
    sub_26A84EA78();
  }

  v29 = v44;
  v41(v44, v28 + v40 + v39, v14);

  v30 = sub_26A84C128();
  v38(v29, v14);
  v31 = v46;
  sub_26A4ED37C(v30, v46);

  v32 = v45;
  sub_26A4EF6D0();
  v33 = v42;
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB160);
  sub_26A4EF6D0();
  sub_26A4DBD10(v31, &qword_2803AB140);
  sub_26A4DBD10(v23, &qword_2803AB150);
  sub_26A4DBD10(v33, &qword_2803AB140);
  return sub_26A4DBD10(v32, &qword_2803AB150);
}

void *sub_26A4ED37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB168);
  v5 = OUTLINED_FUNCTION_79(v4);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &__src[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &__src[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB170);
  v12 = OUTLINED_FUNCTION_79(v11);
  MEMORY[0x28223BE20](v12);
  v14 = &__src[-v13];
  *v14 = sub_26A84FA78();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB178) + 44)];
  *v10 = sub_26A84FC08();
  *(v10 + 1) = 0;
  v10[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB180);
  sub_26A4ED960(a1);
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  v16 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB188) + 48)];
  *v16 = 0;
  v16[8] = 1;
  sub_26A4DBD10(v10, &qword_2803AB168);
  sub_26A4DBD10(v8, &qword_2803AB168);
  sub_26A4EC66C();
  sub_26A851448();
  OUTLINED_FUNCTION_7_4();
  sub_26A84F628();
  sub_26A4EF020();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB140);
  return memcpy((a2 + *(v17 + 36)), __src, 0x70uLL);
}

uint64_t sub_26A4ED638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB210);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = sub_26A84B888();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  v12 = type metadata accessor for TextPropertyView();
  v13 = &v10[v12[5]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = v12[6];
  *&v10[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v15 = &v10[v12[7]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = &v10[v12[8]];
  *v16 = swift_getKeyPath();
  *(v16 + 1) = 0;
  v16[16] = 0;
  *(v16 + 3) = swift_getKeyPath();
  v16[32] = 0;
  v17 = type metadata accessor for ActionHandler(0);
  v18 = v17[6];
  *&v16[v18] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v19 = &v16[v17[7]];
  *v19 = swift_getKeyPath();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = &v16[v17[8]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &v16[v17[9]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v16[v17[10]];
  *v22 = swift_getKeyPath();
  v22[9] = 0;
  swift_unknownObjectWeakInit();
  v23 = v17[11];
  v24 = type metadata accessor for StandardActionHandler(0);
  __swift_storeEnumTagSinglePayload(&v16[v23], 1, 1, v24);
  sub_26A4DBD10(&v16[v23], &qword_2803B3910);
  __swift_storeEnumTagSinglePayload(&v16[v23], 1, 1, v24);
  *&v10[*(v5 + 44)] = sub_26A84FED8();
  sub_26A4EF6D0();
  *a2 = 0;
  *(a2 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB218);
  sub_26A4EF6D0();
  sub_26A4DBD10(v10, &qword_2803AB210);
  return sub_26A4DBD10(v8, &qword_2803AB210);
}

uint64_t sub_26A4ED960(uint64_t a1)
{
  v2 = type metadata accessor for KeyValueStandardView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *(a1 + 16);
  v9[0] = 0;
  v9[1] = v5;
  swift_getKeyPath();
  sub_26A4EEE08();
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_26A4EEE60(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *(v7 + ((v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB190);
  sub_26A4EEF40();
  sub_26A4EF11C();
  return sub_26A8512F8();
}

void sub_26A4EDB18(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(a2 + 16))
  {
    v6 = *(sub_26A84B888() - 8);
    sub_26A4EDBC8(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3, a3);
    return;
  }

  __break(1u);
}

double sub_26A4EDBC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for KeyValueStandardView();
  v5 = OUTLINED_FUNCTION_2_5(v4);
  v27 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v16 = *(v12 + 16);
  v16(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  TextPropertyView.init(_:)(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v16(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  sub_26A4EEE08();
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = (v14 + *(v27 + 80) + v17) & ~*(v27 + 80);
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v17, &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  sub_26A4EEE60(v9, v19 + v18);
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26A4EF390;
  *(v21 + 24) = v19;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26A4EF584;
  *(v22 + 24) = v21;
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB1B8) + 36));
  *v23 = KeyPath;
  v23[1] = sub_26A4EF5B0;
  v23[2] = v22;
  LODWORD(KeyPath) = sub_26A84FEA8();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB1A8) + 36)) = KeyPath;
  sub_26A851458();
  OUTLINED_FUNCTION_7_4();
  sub_26A84F028();
  v24 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB190) + 36));
  v25 = v29;
  *v24 = v28;
  v24[1] = v25;
  result = *&v30;
  v24[2] = v30;
  return result;
}

__n128 sub_26A4EDEB8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __n128 *a7@<X8>)
{
  *(&v67 + 1) = a2;
  v68 = a4;
  v65 = a6;
  v66 = a3;
  *&v67 = a1;
  v69 = a7;
  v8 = sub_26A84B058();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v59 - v13;
  v63 = sub_26A84E278();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  v22 = sub_26A84BAB8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a5;
  sub_26A84B868();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_26A4DBD10(v21, &qword_2803B3800);
  }

  else
  {
    (*(v23 + 32))(v25, v21, v22);
    v26 = sub_26A4EC78C();
    VRXIdiom.idiom.getter(v26, v11);
    sub_26A84BAA8();
    (*(v9 + 8))(v11, v8);
    v27 = v63;
    if (__swift_getEnumTagSinglePayload(v14, 1, v63) == 1)
    {
      (*(v23 + 8))(v25, v22);
      sub_26A4DBD10(v14, &qword_2803B38C0);
    }

    else
    {
      v60 = v23;
      v28 = v62;
      v29 = v61;
      (*(v62 + 32))(v61, v14, v27);
      if (sub_26A84E258())
      {
        v30 = sub_26A4EE644();
        v32 = v31;
        v34 = v33;
        v35 = sub_26A8506F8();
        v37 = v36;
        v39 = v38;
        v41 = v40;
        sub_26A4EC448(v30, v32, v34 & 1);

        v70.n128_u64[0] = v35;
        v70.n128_u64[1] = v37;
        v71.n128_u64[0] = v39 & 1;
        v71.n128_u64[1] = v41;
        LOBYTE(v72) = 0;
        sub_26A4EF6C0(v35, v37, v39 & 1);

        sub_26A84FDF8();
        v70 = v73;
        v71 = v74;
        v72 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB200);
        sub_26A4EF644();
        sub_26A84FDF8();
        sub_26A4EC448(v35, v37, v39 & 1);

        (*(v62 + 8))(v61, v63);
        (*(v60 + 8))(v25, v22);
        goto LABEL_11;
      }

      (*(v28 + 8))(v29, v27);
      (*(v60 + 8))(v25, v22);
    }
  }

  sub_26A84B868();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v22);
  sub_26A4DBD10(v19, &qword_2803B3800);
  if (EnumTagSinglePayload == 1)
  {
    v70 = v67;
    v71.n128_u64[0] = v66 & 1;
    v71.n128_u64[1] = v68;
    v72 = 256;
    sub_26A4EF6C0(v67, *(&v67 + 1), v66 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB200);
    sub_26A4EF644();
    sub_26A84FDF8();
  }

  else
  {
    v43 = sub_26A4EE644();
    v45 = v44;
    v47 = v46;
    v48 = sub_26A8506F8();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    sub_26A4EC448(v43, v45, v47 & 1);

    v70.n128_u64[0] = v48;
    v70.n128_u64[1] = v50;
    v71.n128_u64[0] = v52 & 1;
    v71.n128_u64[1] = v54;
    LOBYTE(v72) = 1;
    sub_26A4EF6C0(v48, v50, v52 & 1);

    sub_26A84FDF8();
    v70 = v73;
    v71 = v74;
    v72 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB200);
    sub_26A4EF644();
    sub_26A84FDF8();
    sub_26A4EC448(v48, v50, v52 & 1);
  }

LABEL_11:
  result = v74;
  v56 = v75;
  v57 = v76;
  v58 = v69;
  *v69 = v73;
  v58[1] = result;
  v58[2].n128_u8[0] = v56;
  v58[2].n128_u8[1] = v57;
  return result;
}

uint64_t sub_26A4EE644()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v6 - v1;
  v6[4] = 0;
  v6[5] = 0xE000000000000000;
  MEMORY[0x26D663B00](32, 0xE100000000000000);

  v6[3] = sub_26A850F08();
  sub_26A8523D8();

  sub_26A850398();
  v3 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  sub_26A8503E8();
  sub_26A4DBD10(v2, &qword_2803AB208);
  v4 = sub_26A850738();

  return v4;
}

uint64_t sub_26A4EE7D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void *__return_ptr, void *))
{
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3;
  v9 = a4;
  a5(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB1E8);
  sub_26A4EF5B8();
  return sub_26A851248();
}

uint64_t sub_26A4EE844(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void *__return_ptr, void *))
{
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3;
  v9 = a4;
  a5(v6, v7);
  return sub_26A851248();
}

uint64_t sub_26A4EE904(uint64_t a1)
{
  result = sub_26A4EF348(&qword_2803AB0B0, MEMORY[0x277D63268]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A4EE984()
{
  sub_26A4EEA20();
  if (v0 <= 0x3F)
  {
    sub_26A4EEA70();
    if (v1 <= 0x3F)
    {
      sub_26A84C168();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A4EEA20()
{
  if (!qword_2803AB0C8)
  {
    v0 = sub_26A84EEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2803AB0C8);
    }
  }
}

void sub_26A4EEA70()
{
  if (!qword_2803A9218)
  {
    type metadata accessor for VRXIdiom();
    v0 = sub_26A84EEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2803A9218);
    }
  }
}

unint64_t sub_26A4EEAC8()
{
  result = qword_2803AB0D0;
  if (!qword_2803AB0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB0A0);
    sub_26A4EEB54();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB0D0);
  }

  return result;
}

unint64_t sub_26A4EEB54()
{
  result = qword_2803AB0D8;
  if (!qword_2803AB0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB098);
    sub_26A4EEBE0();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB0D8);
  }

  return result;
}

unint64_t sub_26A4EEBE0()
{
  result = qword_2803AB0E0;
  if (!qword_2803AB0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB090);
    sub_26A4EEC98();
    sub_26A4DBCC8(&qword_2803AB100, &qword_2803AB108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB0E0);
  }

  return result;
}

unint64_t sub_26A4EEC98()
{
  result = qword_2803AB0E8;
  if (!qword_2803AB0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAD28);
    sub_26A4EED50();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB0E8);
  }

  return result;
}

unint64_t sub_26A4EED50()
{
  result = qword_2803AB0F0;
  if (!qword_2803AB0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAD18);
    sub_26A4DBCC8(&qword_2803AB0F8, &qword_2803AAD20);
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB0F0);
  }

  return result;
}

uint64_t sub_26A4EEE08()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A4EEE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyValueStandardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A4EEEC4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for KeyValueStandardView();
  OUTLINED_FUNCTION_79(v4);

  return sub_26A4ECCC4(a1, a2);
}

unint64_t sub_26A4EEF40()
{
  result = qword_2803AB120;
  if (!qword_2803AB120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB110);
    sub_26A4EEFCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB120);
  }

  return result;
}

unint64_t sub_26A4EEFCC()
{
  result = qword_2803AB128;
  if (!qword_2803AB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB128);
  }

  return result;
}

uint64_t sub_26A4EF020()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_46();
  (*(v3 + 32))(v0, v1);
  return v0;
}

void sub_26A4EF078(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for KeyValueStandardView();
  OUTLINED_FUNCTION_2_5(v5);
  v8 = *(v2 + ((*(v7 + 64) + ((*(v6 + 80) + 16) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_26A4EDB18(a1, v8, a2);
}

unint64_t sub_26A4EF11C()
{
  result = qword_2803AB198;
  if (!qword_2803AB198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB190);
    sub_26A4EF1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB198);
  }

  return result;
}

unint64_t sub_26A4EF1A8()
{
  result = qword_2803AB1A0;
  if (!qword_2803AB1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB1A8);
    sub_26A4EF260();
    sub_26A4DBCC8(&qword_2803AB1D8, &qword_2803AB1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB1A0);
  }

  return result;
}

unint64_t sub_26A4EF260()
{
  result = qword_2803AB1B0;
  if (!qword_2803AB1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB1B8);
    sub_26A4EF348(&qword_2803AB1C0, type metadata accessor for TextPropertyView);
    sub_26A4DBCC8(&qword_2803AB1C8, &qword_2803AB1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB1B0);
  }

  return result;
}

uint64_t sub_26A4EF348(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_26A4EF390@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, __n128 *a5@<X8>)
{
  v11 = sub_26A84B888();
  OUTLINED_FUNCTION_2_5(v11);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = *(v14 + 64);
  v16 = type metadata accessor for KeyValueStandardView();
  OUTLINED_FUNCTION_79(v16);
  v18 = v5 + ((v13 + v15 + *(v17 + 80)) & ~*(v17 + 80));

  *&result = sub_26A4EDEB8(a1, a2, a3 & 1, a4, v5 + v13, v18, a5).n128_u64[0];
  return result;
}

double sub_26A4EF4D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void (*a4)(_OWORD *__return_ptr, uint64_t, uint64_t, void)@<X4>, uint64_t a5@<X8>)
{
  a4(v10, a1, a2, a3 & 1);
  v6 = v11;
  v7 = v12;
  result = *v10;
  v9 = v10[1];
  *a5 = v10[0];
  *(a5 + 16) = v9;
  *(a5 + 32) = v6;
  *(a5 + 33) = v7;
  return result;
}

double sub_26A4EF528@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t, void)@<X1>, uint64_t a3@<X8>)
{
  sub_26A4EF4D4(*a1, *(a1 + 8), *(a1 + 16), a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

unint64_t sub_26A4EF5B8()
{
  result = qword_2803AB1F0;
  if (!qword_2803AB1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB1E8);
    sub_26A4EF644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB1F0);
  }

  return result;
}

unint64_t sub_26A4EF644()
{
  result = qword_2803AB1F8;
  if (!qword_2803AB1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB1F8);
  }

  return result;
}

uint64_t sub_26A4EF6C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26A4EF6D0()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_46();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A4EF778@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ControlSwitchView();
  sub_26A4DBD68(v1 + *(v10 + 32), v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A4EF960()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ControlSwitchView() + 36);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A4EFAB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ControlSwitchView();
  sub_26A4DBD68(v1 + *(v10 + 40), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ControlSwitchView.init(isOn:text1:text2:thumbnail:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = type metadata accessor for ControlSwitchView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v14 = v13 - v12;
  v16 = *(v15 + 32);
  *(v14 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v17 = v14 + v10[9];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = v10[10];
  *(v14 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  sub_26A84E228();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = type metadata accessor for SwitchView();
  v24 = v14 + v23[5];
  v25 = v14 + v23[6];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = v14 + v23[7];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  *(v26 + 24) = swift_getKeyPath();
  *(v26 + 32) = 0;
  v27 = type metadata accessor for ActionHandler(0);
  v28 = v27[6];
  *(v26 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v29 = v26 + v27[7];
  *v29 = swift_getKeyPath();
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_144(KeyPath);
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v31);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_123(v32);
  v33 = v27[11];
  v34 = type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  sub_26A4DBD10(v26 + v33, &qword_2803B3910);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v34);
  v41 = v14 + v23[8];
  v58 = 0;
  sub_26A851048();
  v42 = v56[1];
  *v41 = v56[0];
  *(v41 + 8) = v42;
  *v24 = a1;
  *(v24 + 8) = a2;
  *(v24 + 16) = a3;
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v43 = OUTLINED_FUNCTION_3_3();
  *(v14 + v10[5]) = v44(v43);
  sub_26A4DBD68(a5, v56, &qword_2803A91B8);
  if (v57)
  {
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v45 = OUTLINED_FUNCTION_3_3();
    v47 = v46(v45);
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {
    sub_26A4DBD10(v56, &qword_2803A91B8);
    v47 = 0;
  }

  *(v14 + v10[6]) = v47;
  sub_26A4DBD68(a6, v56, &qword_2803A91B8);
  if (v57)
  {
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v48 = OUTLINED_FUNCTION_3_3();
    v50 = v49(v48);
    sub_26A4DBD10(a6, &qword_2803A91B8);
    sub_26A4DBD10(a5, &qword_2803A91B8);
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {
    sub_26A4DBD10(a6, &qword_2803A91B8);
    sub_26A4DBD10(a5, &qword_2803A91B8);
    sub_26A4DBD10(v56, &qword_2803A91B8);
    v50 = 0;
  }

  *(v14 + v10[7]) = v50;
  sub_26A4F1A70(v14, a7);
  return __swift_destroy_boxed_opaque_existential_1(a4);
}

uint64_t type metadata accessor for ControlSwitchView()
{
  result = qword_2803AB2A8;
  if (!qword_2803AB2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A4F0154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v64 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v61 = &v60 - v8;
  sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v62 = v9;
  v63 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  v14 = sub_26A84E228();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  v21 = type metadata accessor for ControlSwitchView();
  v22 = v21[8];
  *(a2 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v23 = a2 + v21[9];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = v21[10];
  *(a2 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  sub_26A84B978();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v14);
  v28 = type metadata accessor for SwitchView();
  v29 = a2 + v28[5];
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_144(KeyPath);
  v31 = a2 + v28[7];
  *v31 = swift_getKeyPath();
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = swift_getKeyPath();
  *(v31 + 32) = 0;
  v32 = type metadata accessor for ActionHandler(0);
  v33 = v32[6];
  *(v31 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v34 = v31 + v32[7];
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
  *(v34 + 16) = 0;
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v36);
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_123(v37);
  v38 = v32[11];
  v39 = type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  sub_26A4DBD10(v31 + v38, &qword_2803B3910);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v39);
  v46 = a2 + v28[8];
  v65 = 0;
  sub_26A851048();
  sub_26A4DBD10(a2, &qword_2803AAD90);
  (*(v16 + 16))(a2, v20, v14);
  __swift_storeEnumTagSinglePayload(a2, 0, 1, v14);
  v65 = sub_26A84E1F8() & 1;
  v47 = v61;
  sub_26A851048();
  (*(v16 + 8))(v20, v14);
  v48 = v62;

  v49 = v67;
  *v46 = v66;
  *(v46 + 8) = v49;
  v50 = v60;
  sub_26A84B948();
  v51 = TextProperty.asAnyView()();
  v52 = *(v63 + 8);
  v52(v13, v48);
  *(a2 + v21[5]) = v51;
  sub_26A84B958();
  if (__swift_getEnumTagSinglePayload(v47, 1, v48) == 1)
  {
    sub_26A4DBD10(v47, &qword_2803AA838);
    v53 = 0;
  }

  else
  {
    v53 = TextProperty.asAnyView()();
    v52(v47, v48);
  }

  *(a2 + v21[6]) = v53;
  v54 = v64;
  sub_26A84B988();
  v55 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
  {
    sub_26A84B998();
    OUTLINED_FUNCTION_46();
    (*(v56 + 8))(v50);
    result = sub_26A4DBD10(v54, &qword_2803AAD50);
    v58 = 0;
  }

  else
  {
    v58 = VisualProperty.asAnyView()();
    sub_26A84B998();
    OUTLINED_FUNCTION_46();
    (*(v59 + 8))(v50);
    result = (*(*(v55 - 8) + 8))(v54, v55);
  }

  *(a2 + v21[7]) = v58;
  return result;
}

uint64_t ControlSwitchView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A4EF778(&v17[-v9]);
  v19 = 0u;
  v20 = 0u;
  v21 = 1;
  sub_26A4EF960();
  sub_26A4EFAB4(v6);
  v10 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  v18 = v1;
  sub_26A4C512C();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_26A68CCBC;
  *(v11 + 24) = 0;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB270) + 36);
  *(v12 + 16) = swift_getKeyPath();
  *(v12 + 24) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v14 = *(v13 + 40);
  *(v12 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v15 = v12 + *(v13 + 44);
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *v12 = sub_26A4D1F7C;
  *(v12 + 8) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB278);
  *(a1 + *(result + 36)) = 30;
  return result;
}

uint64_t sub_26A4F09BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26A84FA78();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2D0);
  return sub_26A4F0A14(a1, a2 + *(v4 + 44));
}

uint64_t sub_26A4F0A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2D8);
  v3 = MEMORY[0x28223BE20](v56);
  v60 = &KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v58 = &KeyPath - v5;
  v6 = sub_26A84B1D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
  MEMORY[0x28223BE20](v10);
  v12 = (&KeyPath - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0);
  MEMORY[0x28223BE20](v13);
  v15 = &KeyPath - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v57 = &KeyPath - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &KeyPath - v20;
  MEMORY[0x28223BE20](v19);
  v61 = &KeyPath - v22;
  v23 = *(type metadata accessor for ControlSwitchView() + 28);
  v55 = a1;
  v24 = *(a1 + v23);
  if (v24)
  {
    (*(v7 + 104))(v9, *MEMORY[0x277D62B28], v6);
    KeyPath = swift_getKeyPath();
    v25 = (v12 + *(v10 + 36));
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440);
    v54 = v13;
    v27 = v24;
    v28 = v6;
    v29 = *(v26 + 28);
    (*(v7 + 32))(v25 + v29, v9, v28);
    __swift_storeEnumTagSinglePayload(v25 + v29, 0, 1, v28);
    *v25 = KeyPath;
    *v12 = v27;
    v30 = swift_getKeyPath();
    sub_26A4DBDB4(v12, v15, &qword_2803AAFA0);
    v31 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB308) + 36)];
    *v31 = v30;
    v31[8] = 1;
    v32 = swift_getKeyPath();
    v33 = &v15[*(v54 + 36)];
    *v33 = v32;
    v33[8] = 0;
    v34 = swift_getKeyPath();
    v35 = swift_getKeyPath();
    sub_26A4DBDB4(v15, v21, &qword_2803AB2E0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2F0);
    v37 = &v21[*(v36 + 36)];
    *v37 = v34;
    v37[8] = 0;
    *(v37 + 2) = v35;
    *(v37 + 12) = 256;
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v36);
  }

  else
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2F0);
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v38);
  }

  v39 = v61;
  sub_26A4DBDB4(v21, v61, &qword_2803AB2E8);

  v63[0] = sub_26A84FC08();
  v63[1] = 0;
  v64 = 1;
  v40 = v55;
  sub_26A4F10A8(v55, v65);
  v41 = swift_getKeyPath();
  v42 = swift_getKeyPath();
  v65[74] = v41;
  v66 = 0;
  v67 = v42;
  v68 = 0;
  v69 = 1;
  v43 = swift_getKeyPath();
  v44 = swift_getKeyPath();
  v45 = v58;
  sub_26A4F2068(v40, v58);
  v46 = v57;
  v47 = v45 + *(v56 + 36);
  *v47 = v43;
  *(v47 + 8) = 0;
  *(v47 + 16) = v44;
  *(v47 + 24) = 0;
  sub_26A4DBD68(v39, v46, &qword_2803AB2E8);
  sub_26A4DBD68(v63, v62, &qword_2803AB2F8);
  v48 = v60;
  sub_26A4DBD68(v45, v60, &qword_2803AB2D8);
  v49 = v59;
  sub_26A4DBD68(v46, v59, &qword_2803AB2E8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB300);
  sub_26A4DBD68(v62, v49 + v50[12], &qword_2803AB2F8);
  v51 = v49 + v50[16];
  *v51 = 0;
  *(v51 + 8) = 1;
  sub_26A4DBD68(v48, v49 + v50[20], &qword_2803AB2D8);
  sub_26A4DBD10(v45, &qword_2803AB2D8);
  sub_26A4DBD10(v63, &qword_2803AB2F8);
  sub_26A4DBD10(v61, &qword_2803AB2E8);
  sub_26A4DBD10(v48, &qword_2803AB2D8);
  sub_26A4DBD10(v62, &qword_2803AB2F8);
  return sub_26A4DBD10(v46, &qword_2803AB2E8);
}

uint64_t sub_26A4F10A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ControlSwitchView();
  v5 = *(a1 + *(v4 + 20));
  if (qword_2803A89D8 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803AB220, v14, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v13, __src, sizeof(v13));
  v14[11] = 0;
  v14[10] = sub_26A80A810;
  v12 = v5;
  v6 = *(a1 + *(v4 + 24));
  if (v6)
  {
    v7 = qword_2803A9018;

    if (v7 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2803D2760, &v10[25], &qword_2803AA880);
    sub_26A6AEE74(v16);
    memcpy(&v10[1], v16, 0xBFuLL);
    v10[36] = 0;
    v10[35] = sub_26A80A810;
    v10[0] = v6;
  }

  else
  {
    bzero(v10, 0x128uLL);
  }

  memcpy(__dst, v10, sizeof(__dst));
  sub_26A4DBD68(&v12, v10, &qword_2803A99A0);
  sub_26A4DBD68(__dst, v9, &qword_2803AA888);
  sub_26A4DBD68(v10, a2, &qword_2803A99A0);
  sub_26A4DBD68(v9, a2 + 296, &qword_2803AA888);

  sub_26A4DBD10(__dst, &qword_2803AA888);
  sub_26A4DBD10(&v12, &qword_2803A99A0);
  sub_26A4DBD10(v9, &qword_2803AA888);
  return sub_26A4DBD10(v10, &qword_2803A99A0);
}

uint64_t ControlSwitch.view.getter()
{
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v53 = v2;
  v54 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v52 = (v4 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v12 = sub_26A84B998();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v18 = v17 - v16;
  v19 = type metadata accessor for ControlSwitchView();
  v20 = OUTLINED_FUNCTION_79(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD08);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v25);
  v27 = &v51 - v26;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD10);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v28);
  v55 = &v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v51 - v32;
  (*(v14 + 16))(v18, v0, v12, v31);
  v56 = v23;
  sub_26A4F0154(v18, v23);
  v58 = v0;
  sub_26A84B968();
  v34 = v11;
  v35 = v54;
  sub_26A4DBDB4(v34, v8, &qword_2803B3800);
  if (__swift_getEnumTagSinglePayload(v8, 1, v35) == 1)
  {
    sub_26A4DBD10(v8, &qword_2803B3800);
    KeyPath = swift_getKeyPath();
    v37 = &v27[*(v24 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0);
    type metadata accessor for ActionType();
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
    *v37 = KeyPath;
  }

  else
  {
    v42 = v52;
    v43 = *(v53 + 32);
    v43(v52, v8, v35);
    v44 = swift_getKeyPath();
    v45 = &v27[*(v24 + 36)];
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v43(v45 + v46, v42, v35);
    v47 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v45 + v46, 0, 1, v47);
    *v45 = v44;
  }

  sub_26A4F1A70(v56, v27);
  v48 = sub_26A84B928();
  sub_26A4DC3AC(v48);

  sub_26A4DBD10(v27, &qword_2803AAD08);
  sub_26A4DBD68(v33, v55, &qword_2803AAD10);
  sub_26A4F1ADC();
  v49 = sub_26A851248();
  sub_26A4DBD10(v33, &qword_2803AAD10);
  return v49;
}

void sub_26A4F1780()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A8502F8();
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 80) = 0;
  *(inited + 40) = v5;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_26A8570D0;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v7 = qword_281588938;
  *(v6 + 32) = qword_281588938;
  v8 = byte_281588940;
  *(v6 + 40) = byte_281588940;
  sub_26A4E324C(v7, v8);
  sub_26A621A9C(v6);
  *(inited + 88) = v9;
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815888E8, &v18, &qword_2803AA880);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_26A8570D0;
  v11 = qword_281588938;
  *(v10 + 32) = qword_281588938;
  v12 = byte_281588940;
  *(v10 + 40) = byte_281588940;
  sub_26A4E324C(v11, v12);

  sub_26A58787C(v13);
  sub_26A5075B0();

  if (v15)
  {
    *(inited + 96) = v15;
    *(inited + 112) = v16;
    *(inited + 128) = v17;
  }

  else
  {
    sub_26A4F20CC(&v20 + 8, inited + 96);
  }

  sub_26A4DBD10(&v18, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  sub_26A8516A8();
  v14 = sub_26A8502F8();
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v18 = v14;
  sub_26A80D690();
}

uint64_t sub_26A4F1A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlSwitchView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A4F1ADC()
{
  result = qword_2803AB280;
  if (!qword_2803AB280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAD10);
    sub_26A4F1B94();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB280);
  }

  return result;
}

unint64_t sub_26A4F1B94()
{
  result = qword_2803AB288;
  if (!qword_2803AB288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAD00);
    sub_26A4F1C20();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB288);
  }

  return result;
}

unint64_t sub_26A4F1C20()
{
  result = qword_2803AB290;
  if (!qword_2803AB290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAD08);
    sub_26A4F1D7C(&qword_2803AB298, type metadata accessor for ControlSwitchView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB290);
  }

  return result;
}

uint64_t sub_26A4F1D24(uint64_t a1)
{
  result = sub_26A4F1D7C(&qword_2803AB2A0, MEMORY[0x277D62E60]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A4F1D7C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26A4F1DEC()
{
  type metadata accessor for SwitchView();
  if (v0 <= 0x3F)
  {
    sub_26A4E5E18();
    if (v1 <= 0x3F)
    {
      sub_26A4D27F4();
      if (v2 <= 0x3F)
      {
        sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
        if (v3 <= 0x3F)
        {
          sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_26A4F1EF8()
{
  result = qword_2803AB2B8;
  if (!qword_2803AB2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB278);
    sub_26A4F1F84();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB2B8);
  }

  return result;
}

unint64_t sub_26A4F1F84()
{
  result = qword_2803AB2C0;
  if (!qword_2803AB2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB270);
    sub_26A4DBCC8(&qword_2803AB2C8, &qword_2803AA270);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB2C0);
  }

  return result;
}

uint64_t sub_26A4F2068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwitchView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A4F2140()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  if (*(v0 + 41) != 1)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4F5724(v8, v9, 0);
    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v8;
}

uint64_t sub_26A4F228C@<X0>(uint64_t a1@<X8>)
{
  v44 = sub_26A84FA98();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  memcpy(__dst, (v1 + 80), sizeof(__dst));
  sub_26A4F5680(__dst, v47);
  sub_26A7D1500();
  v43 = v8;
  v9 = sub_26A4F49D4();
  v11 = v10;
  memcpy(v48, (v1 + 80), sizeof(v48));
  v12 = sub_26A7D18DC();
  v42 = sub_26A628634(v9, v11 & 1, v12);
  v14 = v13;
  v16 = v15;
  sub_26A4F56DC(v1, v47);
  v17 = swift_allocObject();
  sub_26A4F5730(v47, v17 + 16);
  v18 = sub_26A851448();
  v20 = v19;
  v50 = v16 & 1;
  sub_26A4F56DC(v1, v47);
  v21 = swift_allocObject();
  sub_26A4F5730(v47, v21 + 16);
  v22 = v50;
  v23 = sub_26A850248();
  sub_26A84ED48();
  v47[216] = 0;
  v46[0] = v43;
  v46[1] = v42;
  v46[2] = v14;
  LOBYTE(v46[3]) = v22;
  v46[4] = sub_26A4F5768;
  v46[5] = v17;
  v46[6] = v18;
  v46[7] = v20;
  v46[8] = 0;
  v46[9] = 0;
  v46[10] = sub_26A4F5800;
  v46[11] = v21;
  LOBYTE(v46[12]) = v23;
  v46[13] = v24;
  v46[14] = v25;
  v46[15] = v26;
  v46[16] = v27;
  LOBYTE(v46[17]) = 0;
  (*(v3 + 104))(v7, *MEMORY[0x277CE00F0], v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB3C0);
  sub_26A4F60AC(&qword_2803AB3C8, &qword_2803AB3C0, &unk_26A8588E0, sub_26A4F5808);
  sub_26A850A18();
  (*(v3 + 8))(v7, v44);
  memcpy(v47, v46, 0x89uLL);
  sub_26A491A94();
  v28 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB428) + 36));
  v29 = type metadata accessor for VibrancyModifier();
  v30 = *(v29 + 20);
  *&v28[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v31 = &v28[*(v29 + 24)];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  *v28 = 2;
  LOBYTE(v31) = sub_26A850248();
  sub_26A84ED48();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB438);
  v41 = a1 + *(result + 36);
  *v41 = v31;
  *(v41 + 8) = v33;
  *(v41 + 16) = v35;
  *(v41 + 24) = v37;
  *(v41 + 32) = v39;
  *(v41 + 40) = 0;
  return result;
}

uint64_t sub_26A4F262C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *a1;
  sub_26A4F56DC(a2, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_26A4F5730(v7, v5 + 24);
  *a3 = sub_26A4F5A58;
  a3[1] = v5;
}

uint64_t sub_26A4F26B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a1;
  v77 = sub_26A84F088();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = v7;
  v74 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26A84FE18();
  MEMORY[0x28223BE20](v8);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26A84FA18();
  v78 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v84 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB440);
  v72 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v79 = v64 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB448);
  MEMORY[0x28223BE20](v83);
  v16 = v64 - v15;
  v17 = sub_26A8507A8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  result = MEMORY[0x28223BE20](v19);
  if (*(a2 + 16))
  {
    v67 = v22;
    v65 = v18;
    v82 = v23;
    v64[1] = v10;
    v25 = v24;
    v66 = v8;
    v26 = v64 - v21;
    sub_26A850828();
    v71 = v13;
    v70 = a4;
    sub_26A850808();
    v80 = sub_26A850818();
    v27 = sub_26A4F2140();
    v29 = v28;
    v69 = v11;
    v30 = *(v18 + 16);
    v31 = v26;
    v30(v16, v26, v25);
    v64[0] = v30;
    v32 = _s15TextLayoutShapeVMa();
    v33 = &v16[*(v32 + 20)];
    *v33 = v27;
    v33[8] = v29 & 1;
    v34 = sub_26A850DF8();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB450);
    *&v16[*(v35 + 52)] = v34;
    *&v16[*(v35 + 56)] = 256;
    v36 = sub_26A4F2140();
    v38 = v37;
    v39 = *(v83 + 36);
    v81 = a3;
    v40 = &v16[v39];
    v68 = v26;
    v30(&v16[v39], v26, v25);
    v41 = &v40[*(v32 + 20)];
    *v41 = v36;
    v41[8] = v38 & 1;
    v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB458) + 36)] = 0;
    v42 = v73;
    sub_26A84F068();
    type metadata accessor for CGPoint();
    sub_26A84F098();
    v43 = v86;
    v44 = v87;
    sub_26A84FF48();
    sub_26A84FA08();
    v45 = v76;
    v46 = v74;
    v47 = v77;
    (*(v76 + 16))(v74, v42, v77);
    v66 = v16;
    v48 = v67;
    (v64[0])(v67, v31, v25);
    sub_26A4F56DC(v81, v85);
    v49 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v50 = v65;
    v73 = *(v65 + 80);
    v51 = (v75 + v73 + v49) & ~v73;
    v75 = v73 | 7;
    v52 = (v82 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    *(v53 + 16) = v43;
    *(v53 + 24) = v44;
    (*(v45 + 32))(v53 + v49, v46, v47);
    v54 = *(v50 + 32);
    v55 = v48;
    v54(v53 + v51, v48, v25);
    sub_26A4F5730(v85, v53 + v52);
    sub_26A4F625C();
    v56 = v79;
    v57 = v69;
    v58 = v84;
    sub_26A851338();

    (*(v78 + 8))(v58, v57);
    sub_26A84EEB8();
    sub_26A4F5B58();
    sub_26A4D7DCC();
    v59 = v70;
    v60 = v71;
    sub_26A850C28();

    (*(v72 + 8))(v56, v60);
    sub_26A4D6FD8();
    sub_26A4F56DC(v81, v85);
    v54(v55, v68, v25);
    v61 = (v73 + 232) & ~v73;
    v62 = swift_allocObject();
    sub_26A4F5730(v85, v62 + 16);
    v54(v62 + v61, v55, v25);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB488);
    v63 = (v59 + *(result + 36));
    *v63 = sub_26A4F2F50;
    v63[1] = 0;
    v63[2] = sub_26A4F5C3C;
    v63[3] = v62;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26A4F2F50@<X0>(void *a1@<X8>)
{
  result = sub_26A84F068();
  *a1 = v3;
  return result;
}

uint64_t sub_26A4F2F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB490);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = *(a2 + 208);
  v9 = sub_26A8507A8();
  (*(*(v9 - 8) + 16))(v7, a3, v9);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  v10 = OBJC_IVAR____TtC9SnippetUI14PopOverManager_layout;
  swift_beginAccess();
  sub_26A4F5CB0(v7, v8 + v10);
  return swift_endAccess();
}

uint64_t sub_26A4F30A8(double a1, double a2, uint64_t a3, void (**a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v100 = a6;
  v109 = a5;
  v124 = a4;
  v93 = sub_26A84F988();
  v116 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB490);
  MEMORY[0x28223BE20](v9 - 8);
  v99 = v90 - v10;
  v120 = sub_26A8507A8();
  v103 = *(v120 - 8);
  v104 = *(v103 + 64);
  v11 = MEMORY[0x28223BE20](v120);
  v108 = v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v107 = v90 - v13;
  v122 = sub_26A850758();
  v96 = *(v122 - 8);
  v14 = MEMORY[0x28223BE20](v122);
  v16 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v125 = v90 - v17;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB498);
  MEMORY[0x28223BE20](v110);
  v19 = v90 - v18;
  v20 = sub_26A850798();
  v123 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v119 = v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v112 = v90 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4A0);
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24);
  v27 = v90 - v26;
  v28 = sub_26A84FE48();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84F9F8();
  v33 = v32 - a1;
  sub_26A84F9F8();
  v144.origin.y = v34 - a2;
  v144.size.width = 0.0;
  v144.size.height = 0.0;
  v144.origin.x = v33;
  v145 = CGRectInset(v144, -8.0, -8.0);
  x = v145.origin.x;
  y = v145.origin.y;
  width = v145.size.width;
  height = v145.size.height;
  sub_26A84FF58();
  sub_26A84F078();
  v101 = v40;
  v102 = v39;
  v97 = v42;
  v98 = v41;
  v43 = v28;
  v44 = v122;
  (*(v29 + 8))(v31, v43);
  v105 = *(v103 + 16);
  v106 = v103 + 16;
  v105(v27, v109, v120);
  v45 = *(v25 + 44);
  v46 = sub_26A4F625C();
  v115 = v45;
  sub_26A851D88();
  LODWORD(v121) = 0;
  v118 = (v123 + 2);
  v111 = (v123 + 4);
  v113 = (v123 + 1);
  v114 = v27;
  v47 = (v96 + 32);
  v123 = (v96 + 16);
  v124 = (v96 + 8);
  v94 = v103 + 32;
  v91 = (v116 + 8);
  v95 = (v103 + 8);
  v96 = v104 + 7;
  v117 = v46;
LABEL_2:
  while (1)
  {
    sub_26A851DD8();
    if (*&v27[v115] == v130)
    {
      return sub_26A4D6FD8();
    }

    v48 = sub_26A851E18();
    v116 = *v118;
    v116(v112);
    v48(&v130, 0);
    sub_26A851DE8();
    v49 = v119;
    (*v111)();
    sub_26A850778();
    v146.origin.x = v132;
    v146.size.width = v134;
    v146.origin.y = v133 - v135;
    v146.size.height = v135 + v136;
    v148.origin.x = x;
    v148.origin.y = y;
    v148.size.width = width;
    v148.size.height = height;
    if (CGRectIntersectsRect(v146, v148))
    {
      (v116)(v19, v49, v20);
      v50 = *(v110 + 36);
      sub_26A4F625C();
      sub_26A851D88();
      while (1)
      {
        while (1)
        {
          sub_26A851DD8();
          if (*&v19[v50] == v130)
          {
            sub_26A4D6FD8();
            (*v113)(v119, v20);
            v27 = v114;
            goto LABEL_2;
          }

          v51 = sub_26A851E18();
          v52 = v125;
          (*v123)(v125);
          v51(&v130, 0);
          sub_26A851DE8();
          (*v47)(v16, v52, v44);
          sub_26A4F5D20();
          sub_26A850768();
          v53 = v44;
          v54 = v131;
          if (v131)
          {
            break;
          }

          (*v124)(v16, v53);
          v44 = v53;
        }

        v55 = v130;
        sub_26A850748();
        v147.origin.x = v137;
        v147.size.width = v139;
        v147.origin.y = v138 - v140;
        v147.size.height = v140 + v141;
        v149.origin.x = x;
        v149.origin.y = y;
        v149.size.width = width;
        v149.size.height = height;
        if (CGRectIntersectsRect(v147, v149) && (v121 & 1) == 0)
        {
          break;
        }

        v56 = v122;
        (*v124)(v16, v122);
        v44 = v56;
      }

      sub_26A4F56DC(v100, &v130);
      v57 = v107;
      v58 = v105;
      v105(v107, v109, v120);
      sub_26A4F56DC(&v130, &v127);
      v59 = v57;
      v60 = v120;
      v58(v108, v59, v120);
      v61 = v103;
      v62 = (*(v103 + 80) + 248) & ~*(v103 + 80);
      v104 = (v96 + v62) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      v121 = v55;
      v64 = v63;
      sub_26A4F5730(&v130, v63 + 16);
      *(v64 + 232) = v121;
      *(v64 + 240) = v54;
      (*(v61 + 32))(v64 + v62, v107, v60);
      v116 = v64;
      v65 = v105;
      v66 = v64 + v104;
      v67 = v121;
      v68 = v101;
      *v66 = v102;
      *(v66 + 8) = v68;
      v69 = v97;
      *(v66 + 16) = v98;
      *(v66 + 24) = v69;
      v70 = v99;
      v65(v99, v109, v60);
      __swift_storeEnumTagSinglePayload(v70, 0, 1, v60);

      sub_26A4F41B8(v67, v70, v142);
      sub_26A4D6FD8();
      if (v143)
      {
        (*v95)(v108, v60);
        sub_26A4F5E34(&v127);
        v83 = v100;
        sub_26A4F56DC(v100, v126);
        v84 = swift_allocObject();
        sub_26A4F5730(v126, (v84 + 2));
        v84[29] = v67;
        v84[30] = v54;
        v85 = v116;
        v84[31] = sub_26A4F5D74;
        v84[32] = v85;
        v86 = *(v83 + 16);
        if (*(v83 + 24) == 1)
        {

          j__swift_retain();
        }

        else
        {

          j__swift_retain();
          sub_26A851EA8();
          v87 = sub_26A8501F8();
          sub_26A84EA78();

          v88 = v92;
          sub_26A84F978();
          swift_getAtKeyPath();
          j__swift_release();
          (*v91)(v88, v93);
          v86 = v126[0];
        }

        if (v86)
        {
          v89 = swift_allocObject();
          *(v89 + 16) = sub_26A4F5E64;
          *(v89 + 24) = v84;
          v126[0] = sub_26A4F5E78;
          v126[1] = v89;

          sub_26A84EB98();
        }

        (*v124)(v16, v122);
        sub_26A4D6FD8();
        (*v113)(v119, v20);
        return sub_26A4D6FD8();
      }

      v72 = *v142;
      v71 = *&v142[1];
      v73 = *&v142[2];
      v74 = *&v142[3];
      v75 = v129[18];
      v76 = sub_26A4F49D4();
      if ((v77 & 1) != 0 || v76 != v67)
      {
        v104 = v75;
        v78 = v127;
        v27 = v114;
        if (v128 == 1)
        {
        }

        else
        {

          v90[3] = sub_26A851EA8();
          v80 = sub_26A8501F8();
          sub_26A84EA78();

          v81 = v92;
          sub_26A84F978();
          swift_getAtKeyPath();
          sub_26A4F5714(v78, 0);
          (*v91)(v81, v93);
          v78 = v126[0];
        }

        sub_26A4F4D04(v121, v54, v72, v71, v73, v74, v102, v101, v79, v129, v78);

        v60 = v120;
      }

      else
      {

        v27 = v114;
      }

      (*v95)(v108, v60);
      v44 = v122;
      (*v124)(v16, v122);
      sub_26A4D6FD8();
      (*v113)(v119, v20);
      sub_26A4F5E34(&v127);
      LODWORD(v121) = 1;
    }

    else
    {
      (*v113)(v49, v20);
      v27 = v114;
    }
  }
}

uint64_t sub_26A4F3ED4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v18 = sub_26A84F988();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26A4F49D4();
  if ((v23 & 1) != 0 || result != a2)
  {
    v24 = *a1;
    if (*(a1 + 8) == 1)
    {
    }

    else
    {

      sub_26A851EA8();
      v26 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A4F5714(v24, 0);
      (*(v19 + 8))(v21, v18);
      v24 = v27[1];
    }

    sub_26A4F4D04(a2, a3, a4, a5, a6, a7, a8, a9, v25, a1 + 64, v24);
  }

  return result;
}

uint64_t sub_26A4F40B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, double, double, double, double))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB490);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13[-v8];
  v10 = *(a1 + 208);
  v11 = OBJC_IVAR____TtC9SnippetUI14PopOverManager_layout;
  swift_beginAccess();
  sub_26A4F5EA0(v10 + v11, v9);
  sub_26A4F41B8(a2, v9, v14);
  result = sub_26A4D6FD8();
  if ((v15 & 1) == 0)
  {
    return a4(result, v14[0], v14[1], v14[2], v14[3]);
  }

  return result;
}

uint64_t sub_26A4F41B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v78 = a2;
  v76 = a1;
  v4 = sub_26A850758();
  OUTLINED_FUNCTION_15();
  v75 = v5;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  *&v79 = v64 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB498);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = v64 - v12;
  v14 = sub_26A850798();
  OUTLINED_FUNCTION_15();
  v77 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  v74 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4A0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v20);
  v71 = v64 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB490);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v22);
  v24 = v64 - v23;
  v25 = sub_26A8507A8();
  OUTLINED_FUNCTION_15();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_41();
  v31 = v30 - v29;
  sub_26A4F5EA0(v78, v24);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    result = sub_26A4D6FD8();
    v33 = 0uLL;
    v34 = 1;
    v35 = 0uLL;
  }

  else
  {
    v65 = a3;
    (*(v27 + 32))(v31, v24, v25);
    v64[2] = v27;
    (*(v27 + 16))();
    v36 = *(v19 + 36);
    v37 = sub_26A4F625C();
    v64[1] = v31;
    sub_26A851D88();
    v67 = (v77 + 2);
    v66 = (v77 + 1);
    v77 = (v75 + 32);
    *&v78 = v75 + 16;
    v38 = (v75 + 8);
    v39 = MEMORY[0x277D84F90];
    v40 = v71;
    v69 = v25;
    v68 = v36;
    v73 = v37;
    while (1)
    {
      sub_26A851DD8();
      if (*&v40[v36] == v80)
      {
        break;
      }

      v75 = v39;
      v72 = sub_26A851E18();
      v41 = *v67;
      (*v67)(v74);
      v72(&v80, 0);
      sub_26A851DE8();
      v42 = v74;
      (v41)(v13, v74, v14);
      v43 = *(v70 + 36);
      sub_26A4F625C();
      sub_26A851D88();
      (*v66)(v42, v14);
LABEL_6:
      v44 = v9;
      for (i = v4; ; (*v38)(v44, i))
      {
        sub_26A851DD8();
        if (*&v13[v43] == v80)
        {
          break;
        }

        v46 = sub_26A851E18();
        v47 = v79;
        v4 = i;
        (*v78)(v79);
        v46(&v80, 0);
        sub_26A851DE8();
        v48 = v47;
        v9 = v44;
        (*v77)(v44, v48, i);
        sub_26A4F5F10();
        sub_26A850768();
        if (v81 != 1 && v80 == v76)
        {
          sub_26A850748();
          v49 = v75;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26A7A12C4();
            v49 = v56;
          }

          v50 = *(v49 + 16);
          if (v50 >= *(v49 + 24) >> 1)
          {
            sub_26A7A12C4();
            v49 = v57;
          }

          v51 = v82;
          v52 = v84;
          v53 = v83 - v85;
          v54 = v85 + v86;
          (*v38)(v9, i);
          *(v49 + 16) = v50 + 1;
          v75 = v49;
          v55 = v49 + 32 * v50;
          *(v55 + 32) = v51;
          *(v55 + 40) = v53;
          *(v55 + 48) = v52;
          *(v55 + 56) = v54;
          goto LABEL_6;
        }
      }

      sub_26A4D6FD8();
      v25 = v69;
      v4 = i;
      v9 = v44;
      v40 = v71;
      v39 = v75;
      v36 = v68;
    }

    sub_26A4D6FD8();
    v58 = *(v39 + 16);
    v34 = v58 == 0;
    if (v58)
    {
      v59 = v39 + 56;
      OUTLINED_FUNCTION_11_2();
      do
      {
        *&v60 = CGRectUnion(*&v60, *(v59 - 24));
        v59 += 32;
        --v58;
      }

      while (v58);
      *(&v60 + 1) = v61;
      *(&v62 + 1) = v63;
      v78 = v62;
      v79 = v60;
    }

    else
    {
      v78 = 0u;
      v79 = 0u;
      OUTLINED_FUNCTION_11_2();
    }

    (*(v4 + 8))(v9, v25);

    a3 = v65;
    v35 = v78;
    v33 = v79;
  }

  *a3 = v33;
  *(a3 + 16) = v35;
  *(a3 + 32) = v34;
  return result;
}

uint64_t sub_26A4F49D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A4F4A4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_26A84EC28();
}

id sub_26A4F4ACC(void *a1, id a2)
{
  result = [a2 view];
  if (result)
  {
    v6 = result;
    [result frame];
    [v6 convertPoint:0 toView:?];
    [a1 setModalPresentationStyle_];
    v7 = OUTLINED_FUNCTION_12_2();
    if (v7)
    {
      v8 = v7;
      [v7 setPermittedArrowDirections_];
    }

    v9 = OUTLINED_FUNCTION_12_2();
    if (v9)
    {
      v10 = v9;
      [v9 setDelegate_];
    }

    v11 = OUTLINED_FUNCTION_12_2();
    if (v11)
    {
      v12 = v11;
      [v11 setSourceView_];
    }

    v13 = OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_9_3();
    [v14 v15];

    [a2 presentViewController:a1 animated:1 completion:0];

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

void sub_26A4F4C9C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_26A4F4D04(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v21 = type metadata accessor for PopOver();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_41();
  v25 = (v24 - v23);
  if ((*(v12 + OBJC_IVAR____TtC9SnippetUI14PopOverManager_isPopOverPresented) & 1) == 0)
  {
    sub_26A4F5FCC(a10, (v25 + 2));
    *v25 = a2;
    v25[1] = a11;
    v26 = *(v21 + 28);
    *(v25 + v26) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
    swift_storeEnumTagMultiPayload();

    OUTLINED_FUNCTION_9_3();
    MinX = CGRectGetMinX(v34);
    OUTLINED_FUNCTION_9_3();
    MinY = CGRectGetMinY(v35);
    v29 = sub_26A69F2DC();
    v30 = sub_26A5E5E04();
    if (v30)
    {
      v31 = v30;
      sub_26A6A7238(a2);
      MEMORY[0x28223BE20](v32);
      *&v33[-64] = v12;
      *&v33[-56] = a1;
      *&v33[-48] = v29;
      *&v33[-40] = v31;
      *&v33[-32] = MinX + a7;
      *&v33[-24] = MinY + a8;
      *&v33[-16] = a5;
      *&v33[-8] = a6;
      sub_26A8514B8();
      sub_26A84F1C8();

      sub_26A4F6028(v25);
    }

    else
    {
      sub_26A4F6028(v25);
    }
  }
}

uint64_t sub_26A4F4FE4()
{
  sub_26A8514B8();
  sub_26A84F1C8();

  return 1;
}

id sub_26A4F50D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4B8);
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR____TtC9SnippetUI14PopOverManager_layout;
  v8 = sub_26A8507A8();
  __swift_storeEnumTagSinglePayload(&v0[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SnippetUI14PopOverManager__selection;
  v13 = 0;
  v14 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB3B8);
  sub_26A84EBD8();
  (*(v3 + 32))(&v0[v9], v6, v1);
  v0[OBJC_IVAR____TtC9SnippetUI14PopOverManager_isPopOverPresented] = 0;
  swift_unknownObjectWeakInit();
  v10 = type metadata accessor for PopOverManager();
  v12.receiver = v0;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_26A4F524C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PopOverManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PopOverManager()
{
  result = qword_2803AB398;
  if (!qword_2803AB398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A4F5378()
{
  sub_26A4F5458();
  if (v0 <= 0x3F)
  {
    sub_26A4F54B0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26A4F5458()
{
  if (!qword_2803AB3A8)
  {
    sub_26A8507A8();
    v0 = sub_26A852068();
    if (!v1)
    {
      atomic_store(v0, &qword_2803AB3A8);
    }
  }
}

void sub_26A4F54B0()
{
  if (!qword_28157FEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB3B8);
    v0 = sub_26A84EC38();
    if (!v1)
    {
      atomic_store(v0, &qword_28157FEC0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9SnippetUI24RFInteractionDelegateBoxVSg(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4TextVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26A4F5554(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_26A4F5594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A4F5640@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PopOverManager();
  result = sub_26A84EB88();
  *a1 = result;
  return result;
}

uint64_t sub_26A4F5714(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_26A4F5724(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroyTm()
{
  OUTLINED_FUNCTION_1_6();
  if (v1)
  {
    if ((*(v0 + 72) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + 64);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v0 + 80);

  OUTLINED_FUNCTION_6_4();
  if (*(v0 + 160))
  {
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_4_3();

  return swift_deallocObject();
}

unint64_t sub_26A4F5808()
{
  result = qword_2803AB3D0;
  if (!qword_2803AB3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB3D8);
    sub_26A4F5894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB3D0);
  }

  return result;
}

unint64_t sub_26A4F5894()
{
  result = qword_2803AB3E0;
  if (!qword_2803AB3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB3E8);
    sub_26A4F594C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB3E0);
  }

  return result;
}

unint64_t sub_26A4F594C()
{
  result = qword_2803AB3F0;
  if (!qword_2803AB3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803AB3F8);
    sub_26A4F5A04();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB3F0);
  }

  return result;
}

unint64_t sub_26A4F5A04()
{
  result = qword_28157EC00[0];
  if (!qword_28157EC00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28157EC00);
  }

  return result;
}

uint64_t sub_26A4F5A64(uint64_t a1)
{
  v3 = sub_26A84F088();
  OUTLINED_FUNCTION_2_5(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_26A8507A8();
  OUTLINED_FUNCTION_2_5(v8);
  v10 = v9;
  v12 = v11;
  v13 = (v5 + v7 + *(v10 + 80)) & ~*(v10 + 80);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = v1 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_26A4F30A8(v14, v15, a1, (v1 + v5), v1 + v13, v16);
}

unint64_t sub_26A4F5B58()
{
  result = qword_2803AB468;
  if (!qword_2803AB468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB448);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB468);
  }

  return result;
}

uint64_t sub_26A4F5C3C(uint64_t a1)
{
  v3 = *(sub_26A8507A8() - 8);
  v4 = v1 + ((*(v3 + 80) + 232) & ~*(v3 + 80));

  return sub_26A4F2F7C(a1, v1 + 16, v4);
}

uint64_t sub_26A4F5CB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A4F5D20()
{
  result = qword_2803AB4A8;
  if (!qword_2803AB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB4A8);
  }

  return result;
}

uint64_t sub_26A4F5D74()
{
  v0 = sub_26A8507A8();
  OUTLINED_FUNCTION_2_5(v0);
  OUTLINED_FUNCTION_9_3();

  return sub_26A4F3ED4(v1, v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26A4F5EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A4F5F10()
{
  result = qword_2803AB4B0;
  if (!qword_2803AB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB4B0);
  }

  return result;
}

uint64_t sub_26A4F6028(uint64_t a1)
{
  v2 = type metadata accessor for PopOver();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A4F60AC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A4F6130()
{
  result = qword_2803AB4C8;
  if (!qword_2803AB4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB428);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB3C0);
    sub_26A4F60AC(&qword_2803AB3C8, &qword_2803AB3C0, &unk_26A8588E0, sub_26A4F5808);
    swift_getOpaqueTypeConformance2();
    sub_26A4F625C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB4C8);
  }

  return result;
}

unint64_t sub_26A4F625C()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_6()
{
  sub_26A4F5714(*(v0 + 16), *(v0 + 24));
  j__swift_release();
  return sub_26A4F5724(*(v0 + 48), *(v0 + 56), *(v0 + 57));
}

uint64_t OUTLINED_FUNCTION_4_3()
{
  sub_26A4EC448(*(v0 + 168), *(v0 + 176), *(v0 + 184));
}

uint64_t OUTLINED_FUNCTION_5_3()
{
  sub_26A4EC448(*(v0 + 136), *(v0 + 144), *(v0 + 152));
}

uint64_t OUTLINED_FUNCTION_6_4()
{
  sub_26A4EC448(*(v0 + 104), *(v0 + 112), *(v0 + 120));
}

id OUTLINED_FUNCTION_12_2()
{

  return [v0 (v1 + 3509)];
}

void (*sub_26A4F63D4(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

void sub_26A4F6448(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_26A4F6494()
{
  sub_26A84ACC8();
  type metadata accessor for SmartDialogAnimation(0);
  sub_26A4FA450();
  v0 = sub_26A8516A8();
  type metadata accessor for SmartDialogAnimations(0);
  swift_allocObject();
  return sub_26A5D57D4(v0);
}

uint64_t sub_26A4F6538()
{
  type metadata accessor for AnimationWatchdog(0);
  swift_allocObject();
  return sub_26A4FA5A8();
}

uint64_t sub_26A4F6570@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for SmartDialogAnimationModifier(0);
  v4 = v3 - 8;
  v35 = *(v3 - 8);
  v34 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmartDialogAnimationSettings(0);
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = *(v2 + 96);
  v9 = v8[4];
  v31 = v8[5];
  v32 = v9;
  v30 = v8[6];
  v11 = *(v2 + *(v4 + 48) + *(v10 + 28)) * v9;

  sub_26A8511C8();
  v13 = v11 + v12;
  v36 = sub_26A850DF8();
  v42 = 0;
  v43 = v36;
  v38 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5E8);
  sub_26A851058();
  type metadata accessor for SmartDialogAnimations(0);
  sub_26A4FA450();
  v14 = sub_26A84EEF8();
  v15 = *(v2 + 88);
  LOWORD(v38) = *(v2 + 80);
  *(&v38 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5E0);
  sub_26A851058();
  v16 = v41;
  type metadata accessor for AnimationWatchdog(0);
  sub_26A4FA450();
  v17 = sub_26A84EEF8();
  sub_26A4FAAE8();
  v18 = (v7 + ((*(v29 + 80) + 34) & ~*(v29 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v13;
  *(v19 + 32) = v16;
  sub_26A4FAB3C();
  v20 = (v19 + v18);
  v21 = v31;
  *v20 = v32;
  v20[1] = v21;
  v20[2] = v30;
  *(v19 + ((v18 + 31) & 0xFFFFFFFFFFFFFFF8)) = v14;
  sub_26A4FAAE8();
  v22 = (v34 + ((*(v35 + 80) + 16) & ~*(v35 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_26A4FAB3C();
  *(v23 + v22) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5F8);
  v24 = type metadata accessor for SmartDialogLineAnimatingView();
  v25 = sub_26A4FA450();
  *&v38 = v24;
  *(&v38 + 1) = MEMORY[0x277D839F8];
  v39 = v25;
  v40 = MEMORY[0x277D83A28];
  swift_getOpaqueTypeConformance2();
  sub_26A4D7DCC();
  v26 = v37;
  sub_26A850AE8();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB610);
  *(v26 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_26A4F6ADC@<X0>(double *a1@<X1>, __int16 a2@<W3>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, double a7@<D0>, uint64_t a8)
{
  v25 = a6;
  v23 = a3;
  v24 = a8;
  v13 = type metadata accessor for SmartDialogAnimationSettings(0);
  v22 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v14 = type metadata accessor for SmartDialogLineAnimatingView();
  MEMORY[0x28223BE20](v14);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v27 = a2;
  sub_26A4F9D38(&v27, v17, a7);
  sub_26A4FAAE8();
  *v16 = v17;
  v18 = (v16 + *(v14 + 24));
  v19 = v23;
  *v18 = v23;
  v18[1] = a4;
  v18[2] = a5;
  *(v16 + *(v14 + 28)) = a2;
  v26 = v17;
  sub_26A4FAAE8();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a4;
  *(v20 + 32) = a5;
  *(v20 + 40) = a2;
  *(v20 + 48) = v24;
  *(v20 + 56) = v17;
  sub_26A4FAB3C();
  sub_26A4FA450();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  sub_26A850C88();

  return sub_26A4FAD5C();
}

uint64_t sub_26A4F6DA0(uint64_t a1, double a2, uint64_t a3, uint64_t a4, unsigned __int16 a5, uint64_t a6, uint64_t a7)
{
  v70 = a7;
  v74 = a6;
  v56 = a1;
  v69 = type metadata accessor for SmartDialogAnimation(0);
  v67 = *(v69 - 8);
  v10 = MEMORY[0x28223BE20](v69);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v68 = (&v56 - v13);
  v14 = type metadata accessor for SmartDialogAnimationDrawableType(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26A84ACC8();
  v57 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v75 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - v20;
  v22 = type metadata accessor for SmartDialogAnimationChunk(0);
  MEMORY[0x28223BE20](v22);
  v25 = (&v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(a4 + 16);
  if (v26)
  {
    v66 = a5;
    v73 = OBJC_IVAR____TtC9SnippetUI21SmartDialogAnimations_animations;
    v27 = a4 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v72 = (v57 + 16);
    v64 = (v57 + 8);
    v65 = (v57 + 32);
    v28 = *(v23 + 72);
    v62 = v16;
    v63 = v14;
    v61 = v21;
    v60 = v22;
    v59 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = v28;
    do
    {
      sub_26A4FAAE8();
      sub_26A4FAAE8();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v65)(v21, v16, v17);
        v29 = *v25;
        if ((v66 & 0x100) != 0)
        {
          v30 = __OFSUB__(v56, v29);
          v29 = v56 - v29;
          if (v30)
          {
            goto LABEL_21;
          }
        }

        v31 = v21;
        v32 = v17;
        v33 = v17;
        v34 = v66;
        v71 = *v72;
        v71(v75, v31, v33);
        v36 = v68;
        v35 = v69;
        sub_26A4FAAE8();
        *v36 = v29;
        v36[1] = a2;
        *(v36 + *(v35 + 28)) = 1;
        *(v36 + *(v35 + 32)) = v34;
        v38 = v73;
        v37 = v74;
        swift_beginAccess();
        sub_26A4FAB3C();
        swift_isUniquelyReferenced_nonNull_native();
        v76 = *(v37 + v38);
        v39 = v76;
        *(v37 + v38) = 0x8000000000000000;
        v40 = sub_26A5485E4();
        if (__OFADD__(*(v39 + 16), (v41 & 1) == 0))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          result = sub_26A852618();
          __break(1u);
          return result;
        }

        v42 = v40;
        v43 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB650);
        if (sub_26A8523E8())
        {
          v44 = sub_26A5485E4();
          v46 = v64;
          if ((v43 & 1) != (v45 & 1))
          {
            goto LABEL_24;
          }

          v42 = v44;
          v17 = v32;
        }

        else
        {
          v17 = v32;
          v46 = v64;
        }

        v47 = v76;
        if (v43)
        {
          sub_26A4FAE00(v12, *(v76 + 56) + *(v67 + 72) * v42);
          v48 = *v46;
          (*v46)(v75, v17);
        }

        else
        {
          *(v76 + 8 * (v42 >> 6) + 64) |= 1 << v42;
          v49 = v57;
          v50 = v75;
          v71((*(v47 + 48) + *(v57 + 72) * v42), v75, v17);
          sub_26A4FAB3C();
          v48 = *(v49 + 8);
          v48(v50, v17);
          v51 = *(v47 + 16);
          v30 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v30)
          {
            goto LABEL_22;
          }

          *(v47 + 16) = v52;
        }

        v21 = v61;
        *(v74 + v73) = v47;

        swift_endAccess();
        v48(v21, v17);
        v25 = v59;
        sub_26A4FAD5C();
        v16 = v62;
        v28 = v58;
      }

      else
      {
        sub_26A4FAD5C();
        sub_26A4FAD5C();
      }

      v27 += v28;
      --v26;
    }

    while (v26);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v53 = sub_26A84EC08();
  if (__OFADD__(*v54, 1))
  {
    goto LABEL_23;
  }

  ++*v54;
  v53(v77, 0);
}

uint64_t sub_26A4F7480@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v67 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB618);
  v62 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v61 = &v53 - v5;
  v6 = sub_26A851558();
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB620);
  v60 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v58 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB628);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v53 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB630);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v63 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v53 - v28;
  v30 = *(a1 + 88);
  LOWORD(v68) = *(a1 + 80);
  v69 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5E0);
  sub_26A851058();
  v64 = v25;
  if (!v73)
  {
    a3 = 0.0;
    goto LABEL_5;
  }

  if (v73 != 2)
  {
LABEL_5:
    v68 = a3;
    v45 = MEMORY[0x277D839F8];
    sub_26A84EF88();
    v46 = sub_26A4D7DCC();
    MEMORY[0x26D661790](v14, *&v45, v11, v46);
    v47 = *(v12 + 8);
    v47(v14, v11);
    MEMORY[0x26D6617C0](v17, *&v45, v11, v46);
    v48 = sub_26A4D7DCC();
    v68 = v45;
    v69 = v11;
    v70 = v65;
    v71 = v46;
    v72 = v48;
    swift_getOpaqueTypeConformance2();
    sub_26A84F518();
    v47(v23, v11);
    v47(v17, v11);
    goto LABEL_6;
  }

  v68 = 0.0;
  v31 = MEMORY[0x277D839F8];
  sub_26A84EF88();
  v53 = sub_26A4D7DCC();
  MEMORY[0x26D661790](v20, v31, v11, v53);
  v32 = *(v12 + 8);
  v55 = v12 + 8;
  v56 = v32;
  v32(v20, v11);
  v68 = a3;
  sub_26A851548();
  v33 = v58;
  v34 = v31;
  sub_26A84F248();
  v35 = sub_26A4D7DCC();
  v36 = v59;
  v54 = v23;
  v37 = v34;
  v38 = v65;
  MEMORY[0x26D661790](v33, v37, v65, v35);
  v57 = v29;
  v60 = *(v60 + 8);
  (v60)(v33, v38);
  v39 = v23;
  v40 = MEMORY[0x277D839F8];
  v41 = v53;
  MEMORY[0x26D6617C0](v39, MEMORY[0x277D839F8], v11, v53);
  v42 = v61;
  sub_26A84F548();
  v68 = v40;
  v69 = v11;
  v70 = v38;
  v71 = v41;
  v72 = v35;
  swift_getOpaqueTypeConformance2();
  v43 = v66;
  sub_26A84F508();
  (*(v62 + 8))(v42, v43);
  v44 = v56;
  v56(v20, v11);
  (v60)(v36, v38);
  v29 = v57;
  v44(v54, v11);
LABEL_6:
  v49 = sub_26A4D7DCC();
  v50 = v63;
  MEMORY[0x26D6617C0](v29, MEMORY[0x277D839F8], v24, v49);
  sub_26A84F538();
  v51 = *(v64 + 8);
  v51(v50, v24);
  return (v51)(v29, v24);
}

uint64_t sub_26A4F7C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = type metadata accessor for SmartDialogAnimationModifier(0);
  v5 = *(v4 - 8);
  v34 = v4 - 8;
  MEMORY[0x28223BE20](v4 - 8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5B0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5B8);
  OUTLINED_FUNCTION_46();
  (*(v9 + 16))(v8, a1);
  v29 = v2;
  sub_26A4FAAE8();
  v10 = *(v5 + 80);
  v11 = swift_allocObject();
  sub_26A4FAB3C();
  v12 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5C0) + 36)];
  *v12 = sub_26A4FA720;
  v12[1] = v11;
  v32 = type metadata accessor for SmartDialogAnimationModifier;
  sub_26A4FAAE8();
  v31 = v10;
  v13 = swift_allocObject();
  v30 = type metadata accessor for SmartDialogAnimationModifier;
  sub_26A4FAB3C();
  v14 = sub_26A851448();
  v16 = v15;
  v17 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5C8) + 36)];
  *v17 = sub_26A4FA888;
  v17[1] = v13;
  v17[2] = v14;
  v17[3] = v16;
  v18 = *(v29 + *(v34 + 52));
  sub_26A4FAAE8();
  v19 = swift_allocObject();
  sub_26A4FAB3C();
  v20 = v36;
  v21 = *(v36 + 52);
  v33 = v8;
  *&v8[v21] = v18;
  v22 = &v8[*(v20 + 56)];
  *v22 = sub_26A4FA8F0;
  v22[1] = v19;
  type metadata accessor for AnimationWatchdog(0);
  sub_26A4FA450();

  sub_26A84EEF8();
  LOBYTE(v18) = sub_26A4F9BFC();

  v37 = v18 & 1;
  sub_26A4FAAE8();
  swift_allocObject();
  sub_26A4FAB3C();
  sub_26A4D7DCC();
  v23 = v35;
  sub_26A850C88();

  sub_26A492288();
  type metadata accessor for SmartDialogAnimations(0);
  sub_26A4FA450();
  v24 = sub_26A84EEF8();
  v25 = sub_26A84EB78();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5D8);
  v27 = (v23 + *(result + 36));
  *v27 = v25;
  v27[1] = v24;
  return result;
}

uint64_t sub_26A4F8130()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB658);
  return sub_26A851068();
}

uint64_t sub_26A4F818C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = type metadata accessor for SmartDialogAnimationModifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *a1;
  sub_26A4FAAE8();
  v8 = (v6 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_26A4FAB3C();
  *(v9 + v8) = v7;
  *a2 = sub_26A4FAA54;
  a2[1] = v9;
}

uint64_t sub_26A4F82CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = sub_26A4F8334(a2, a1);
  sub_26A540618(v4);

  return sub_26A4F6570(a3);
}

uint64_t sub_26A4F8334(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);
  v24 = *(v2 + 64);
  v25 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB658);
  sub_26A851058();
  v22 = a2;
  v6 = sub_26A4F8D30(sub_26A4FAE64, v21, v23);

  v20[2] = a2;
  result = sub_26A4F8F2C(sub_26A4FAE84, v20, a1);
  v8 = result;
  v9 = 0;
  v10 = *(result + 16);
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v10 == v9)
    {

      v24 = v6;
      sub_26A614A28(v11);
      return v24;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    v12 = *(v8 + 8 * v9 + 32);
    v13 = *(v12 + 16);
    v14 = *(v11 + 16);
    if (__OFADD__(v14, v13))
    {
      goto LABEL_17;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v14 + v13 > *(v11 + 24) >> 1)
    {
      sub_26A7A138C();
      v11 = v15;
    }

    if (*(v12 + 16))
    {
      v16 = (*(v11 + 24) >> 1) - *(v11 + 16);
      result = type metadata accessor for SmartDialogCollatableItem(0);
      if (v16 < v13)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v13)
      {
        v17 = *(v11 + 16);
        v18 = __OFADD__(v17, v13);
        v19 = v17 + v13;
        if (v18)
        {
          goto LABEL_20;
        }

        *(v11 + 16) = v19;
      }
    }

    else
    {

      if (v13)
      {
        goto LABEL_18;
      }
    }

    ++v9;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26A4F8550(__int16 *a1, uint64_t a2)
{
  v15[1] = a2;
  v3 = sub_26A851618();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26A851648();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SmartDialogAnimationModifier(0);
  MEMORY[0x28223BE20](v9 - 8);
  v10 = *a1;
  sub_26A4FA9A0();
  v11 = sub_26A851F28();
  sub_26A4FAAE8();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  sub_26A4FAB3C();
  aBlock[4] = sub_26A4FA9E4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A4F8A68;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);

  sub_26A851638();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26A4FA450();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1C60);
  sub_26A4D7DCC();
  sub_26A852118();
  MEMORY[0x26D6641A0](0, v8, v5, v13);
  _Block_release(v13);

  (*(v17 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v16);
}

uint64_t sub_26A4F88F4(char a1)
{
  if (a1 == 2)
  {
    type metadata accessor for AnimationWatchdog(0);
    sub_26A4FA450();
    *(sub_26A84EEF8() + OBJC_IVAR____TtC9SnippetUIP33_08BC3339106E03C478B5B13852E725C017AnimationWatchdog_enabled) = 1;
    sub_26A4F9C70();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5E0);
  sub_26A851068();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5E8);
  result = sub_26A851058();
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    sub_26A851068();
  }

  return result;
}

uint64_t sub_26A4F8A68(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26A4F8AAC()
{
  type metadata accessor for AnimationWatchdog(0);
  sub_26A4FA450();
  sub_26A84EEF8();
  v0 = sub_26A4F9BFC();

  if (v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5E0);
    sub_26A851058();
    v2 = v4 & 0x100;
    if (v4 < 0)
    {
      v3 = v2 | 0x8001;
    }

    else
    {
      v3 = v2 | 1;
    }

    LOWORD(v5) = v3;

    sub_26A851068();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5E8);
    result = sub_26A851058();
    if (__OFADD__(v5, 1))
    {
      __break(1u);
    }

    else
    {
      sub_26A851068();
    }
  }

  return result;
}

uint64_t sub_26A4F8C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CGRect();
  sub_26A84F098();
  v4 = type metadata accessor for SmartDialogAnimatableRect(0);
  v5 = sub_26A84ACC8();
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668) + 48));
  (*(*(v5 - 8) + 16))(a2, a1 + *(v4 + 20), v5);
  *v6 = v8;
  v6[1] = v9;
  type metadata accessor for SmartDialogCollatableItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26A4F8D30(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for SmartDialogCollatableItem(0) - 8;
  MEMORY[0x28223BE20](v6);
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v15 = MEMORY[0x277D84F90];
  sub_26A7DCD84();
  v8 = v15;
  v9 = *(type metadata accessor for SmartDialogAnimatableRect(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v13 = *(v9 + 72);
  while (1)
  {
    a1(v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v11 = *(v15 + 16);
    if (v11 >= *(v15 + 24) >> 1)
    {
      sub_26A7DCD84();
    }

    *(v15 + 16) = v11 + 1;
    sub_26A4FAB3C();
    v10 += v13;
    if (!--v7)
    {
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A4F8F2C(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x277D84F90];
  sub_26A7DCD64(0, v5, 0);
  v6 = v17;
  v8 = *(sub_26A850828() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v16, v9);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_26A7DCD64(v12 > 1, v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    v9 += v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}