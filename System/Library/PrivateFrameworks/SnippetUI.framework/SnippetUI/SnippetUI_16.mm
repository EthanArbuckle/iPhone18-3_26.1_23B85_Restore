uint64_t sub_26A62D3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for SummaryItemStandardLayout(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v51 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADA0);
  MEMORY[0x28223BE20](v54);
  v57 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v51 - v10;
  MEMORY[0x28223BE20](v11);
  v56 = &v51 - v12;
  v13 = type metadata accessor for SummaryItemSwitchV2View();
  v14 = v13[8];
  if (*(a1 + v13[9]))
  {
    v15 = &protocol witness table for AnyView;
    v16 = MEMORY[0x277CE11C8];
    v17 = *(a1 + v13[9]);
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    __src[1] = 0;
    __src[2] = 0;
  }

  v18 = *(a1 + v14);
  __src[0] = v17;
  __src[3] = v16;
  __src[4] = v15;
  if (*(a1 + v13[10]))
  {
    v19 = &protocol witness table for AnyView;
    v20 = MEMORY[0x277CE11C8];
    v21 = *(a1 + v13[10]);
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v65[1] = 0;
    v65[2] = 0;
  }

  v65[0] = v21;
  v65[3] = v20;
  v65[4] = v19;
  if (*(a1 + v13[11]))
  {
    v22 = &protocol witness table for AnyView;
    v23 = MEMORY[0x277CE11C8];
    v24 = *(a1 + v13[11]);
  }

  else
  {
    v24 = 0;
    v23 = 0;
    v22 = 0;
    v64[1] = 0;
    v64[2] = 0;
  }

  v64[0] = v24;
  v64[3] = v23;
  v64[4] = v22;
  v25 = *(a1 + v13[12]);
  v58 = a1;
  v52 = v13;
  if (v25)
  {
    v26 = &protocol witness table for AnyView;
    v27 = MEMORY[0x277CE11C8];
  }

  else
  {
    v27 = 0;
    v26 = 0;
    v63[1] = 0;
    v63[2] = 0;
  }

  v63[0] = v25;
  v63[3] = v27;
  v63[4] = v26;
  v28 = qword_28157E670;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_project_value_buffer(v29, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  sub_26A4D7E54();
  sub_26A6AEE74(v66);
  memcpy(v5, v66, 0xBFuLL);
  sub_26A62ECC0();
  v30 = v3[5];
  *&v5[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v31 = &v5[v3[6]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  *&v5[v3[7]] = v18;
  sub_26A4D7E54();
  v32 = v61;
  if (v61)
  {
    v33 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v34 = *(v33 + 8);

    v35 = v34(v32, v33);
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {

    sub_26A4DBD10(v60, &qword_2803A91B8);
    v35 = 0;
  }

  *&v5[v3[8]] = v35;
  sub_26A4D7E54();
  v36 = v61;
  if (v61)
  {
    v37 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v38 = (*(v37 + 8))(v36, v37);
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    sub_26A4DBD10(v60, &qword_2803A91B8);
    v38 = 0;
  }

  *&v5[v3[9]] = v38;
  sub_26A4D7E54();
  v39 = v61;
  if (v61)
  {
    v40 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v41 = (*(v40 + 8))(v39, v40);
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    sub_26A4DBD10(v60, &qword_2803A91B8);
    v41 = 0;
  }

  *&v5[v3[10]] = v41;
  sub_26A4D7E54();
  v42 = v61;
  if (v61)
  {
    v43 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v44 = (*(v43 + 8))(v42, v43);
    sub_26A4DBD10(v63, &qword_2803A91B8);
    sub_26A4DBD10(v64, &qword_2803A91B8);
    sub_26A4DBD10(v65, &qword_2803A91B8);
    sub_26A4DBD10(__src, &qword_2803A91B8);
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    sub_26A4DBD10(v63, &qword_2803A91B8);
    sub_26A4DBD10(v64, &qword_2803A91B8);
    sub_26A4DBD10(v65, &qword_2803A91B8);
    sub_26A4DBD10(__src, &qword_2803A91B8);
    sub_26A4DBD10(v60, &qword_2803A91B8);
    v44 = 0;
  }

  *&v5[v3[11]] = v44;
  sub_26A62F098();
  sub_26A851458();
  sub_26A84F628();
  v45 = v53;
  sub_26A62F098();
  memcpy(&v45[*(v54 + 36)], __src, 0x70uLL);
  v46 = v56;
  sub_26A4D7EA8();
  v47 = v57;
  v48 = *(v58 + v52[13]);
  sub_26A4D7E54();
  v49 = v59;
  sub_26A4D7E54();
  *(v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1348) + 48)) = v48;
  swift_retain_n();
  sub_26A4DBD10(v46, &qword_2803AADA0);

  return sub_26A4DBD10(v47, &qword_2803AADA0);
}

uint64_t sub_26A62DB9C(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1328);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v43 - v8);
  v10 = sub_26A84B1D8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v43 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD620);
  MEMORY[0x28223BE20](v17 - 8);
  v48 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  MEMORY[0x28223BE20](v22);
  v47 = &v43 - v23;
  v24 = *(a1 + *(type metadata accessor for SummaryItemSwitchV2View() + 48));
  if (v24)
  {
    v25 = *MEMORY[0x277D62B38];
    v26 = *(v11 + 104);
    v45 = v24;
    v26(v13, v25, v10);
    KeyPath = swift_getKeyPath();
    v27 = (v16 + *(v14 + 36));
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440);
    v46 = a1;
    v29 = v6;
    v30 = *(v28 + 28);
    (*(v11 + 32))(v27 + v30, v13, v10);
    v31 = v27 + v30;
    v6 = v29;
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v10);
    *v27 = KeyPath;
    *v16 = v45;
    v32 = swift_getKeyPath();
    sub_26A4D7EA8();
    v33 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB308) + 36)];
    *v33 = v32;
    v33[8] = 1;
    v34 = swift_getKeyPath();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0);
    v36 = &v21[*(v35 + 36)];
    *v36 = v34;
    a1 = v46;
    v36[8] = 0;
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v35);
    v37 = v47;
    sub_26A4D7EA8();

    v38 = sub_26A84FA58();
  }

  else
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0);
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v39);
    v37 = v47;
    sub_26A4D7EA8();
    v38 = sub_26A84FA78();
  }

  *v9 = v38;
  v9[1] = a2;
  *(v9 + 16) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1330);
  sub_26A62E0A4(a1, v9 + *(v40 + 44));
  v41 = v48;
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1338);
  sub_26A4D7E54();
  sub_26A4DBD10(v9, &qword_2803B1328);
  sub_26A4DBD10(v37, &qword_2803AD620);
  sub_26A4DBD10(v6, &qword_2803B1328);
  return sub_26A4DBD10(v41, &qword_2803AD620);
}

uint64_t sub_26A62E0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for SummaryItemStandardTextLayout();
  MEMORY[0x28223BE20](v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v51 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD88);
  MEMORY[0x28223BE20](v53);
  v56 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v51 - v10;
  MEMORY[0x28223BE20](v11);
  v55 = &v51 - v12;
  v13 = type metadata accessor for SummaryItemSwitchV2View();
  v14 = v13[8];
  if (*(a1 + v13[9]))
  {
    v15 = &protocol witness table for AnyView;
    v16 = MEMORY[0x277CE11C8];
    v17 = *(a1 + v13[9]);
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    __src[1] = 0;
    __src[2] = 0;
  }

  v18 = *(a1 + v14);
  __src[0] = v17;
  __src[3] = v16;
  __src[4] = v15;
  if (*(a1 + v13[10]))
  {
    v19 = &protocol witness table for AnyView;
    v20 = MEMORY[0x277CE11C8];
    v21 = *(a1 + v13[10]);
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v67[1] = 0;
    v67[2] = 0;
  }

  v67[0] = v21;
  v67[3] = v20;
  v67[4] = v19;
  v22 = *(a1 + v13[11]);
  v57 = a1;
  if (v22)
  {
    v23 = &protocol witness table for AnyView;
    v24 = MEMORY[0x277CE11C8];
  }

  else
  {
    v24 = 0;
    v23 = 0;
    v66[1] = 0;
    v66[2] = 0;
  }

  v51 = v18;
  v66[0] = v22;
  v66[3] = v24;
  v66[4] = v23;
  v25 = qword_28157E670;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_project_value_buffer(v26, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  sub_26A4D7E54();
  sub_26A6AEE74(v68);
  memcpy(v5, v68, 0xBFuLL);
  sub_26A62ECC0();
  v27 = &v5[v3[5]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = &v5[v3[6]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = &v5[v3[7]];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = v3[8];
  *&v5[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v31 = &v5[v3[9]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = &v5[v3[10]];
  v64 = 0;
  v65 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA470);
  sub_26A851048();
  v33 = v60;
  v34 = v61;
  *v32 = v59;
  v32[8] = v33;
  *(v32 + 2) = v34;
  *&v5[v3[12]] = v51;
  sub_26A4D7E54();
  v35 = v62;
  if (v62)
  {
    v36 = v63;
    __swift_project_boxed_opaque_existential_1(&v59, v62);
    v37 = *(v36 + 8);

    v38 = v37(v35, v36);
    __swift_destroy_boxed_opaque_existential_1(&v59);
  }

  else
  {

    sub_26A4DBD10(&v59, &qword_2803A91B8);
    v38 = 0;
  }

  *&v5[v3[13]] = v38;
  sub_26A4D7E54();
  v39 = v62;
  if (v62)
  {
    v40 = v63;
    __swift_project_boxed_opaque_existential_1(&v59, v62);
    v41 = (*(v40 + 8))(v39, v40);
    __swift_destroy_boxed_opaque_existential_1(&v59);
  }

  else
  {
    sub_26A4DBD10(&v59, &qword_2803A91B8);
    v41 = 0;
  }

  *&v5[v3[14]] = v41;
  sub_26A4D7E54();
  v42 = v62;
  if (v62)
  {
    v43 = v63;
    __swift_project_boxed_opaque_existential_1(&v59, v62);
    v44 = (*(v43 + 8))(v42, v43);
    sub_26A4DBD10(v66, &qword_2803A91B8);
    sub_26A4DBD10(v67, &qword_2803A91B8);
    sub_26A4DBD10(__src, &qword_2803A91B8);
    __swift_destroy_boxed_opaque_existential_1(&v59);
  }

  else
  {
    sub_26A4DBD10(v66, &qword_2803A91B8);
    sub_26A4DBD10(v67, &qword_2803A91B8);
    sub_26A4DBD10(__src, &qword_2803A91B8);
    sub_26A4DBD10(&v59, &qword_2803A91B8);
    v44 = 0;
  }

  *&v5[v3[15]] = v44;
  v5[v3[11]] = 0;
  sub_26A62F098();
  sub_26A851458();
  sub_26A84F628();
  v45 = v52;
  sub_26A62F098();
  memcpy(&v45[*(v53 + 36)], __src, 0x70uLL);
  v46 = v55;
  sub_26A4D7EA8();
  v47 = v56;
  v48 = *(v57 + v13[13]);
  sub_26A4D7E54();
  v49 = v58;
  sub_26A4D7E54();
  *(v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1340) + 48)) = v48;
  swift_retain_n();
  sub_26A4DBD10(v46, &qword_2803AAD88);

  return sub_26A4DBD10(v47, &qword_2803AAD88);
}

void sub_26A62E834()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v49 = v3;
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v48 = (v5 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v11 = sub_26A84CE28();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  v18 = type metadata accessor for SummaryItemSwitchV2View();
  v19 = OUTLINED_FUNCTION_79(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAA98);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  v26 = &v47 - v25;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAAA0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_19();
  v52 = v28;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v47 - v31;
  (*(v13 + 16))(v17, v1, v11, v30);
  v51 = v22;
  SummaryItemSwitchV2View.init(model:)();
  v54 = v1;
  v33 = v50;
  sub_26A84CDF8();
  sub_26A4D7EA8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v33) == 1)
  {
    sub_26A4DBD10(v9, &qword_2803B3800);
    KeyPath = swift_getKeyPath();
    v35 = &v26[*(v23 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0);
    type metadata accessor for ActionType();
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
    *v35 = KeyPath;
  }

  else
  {
    v40 = v48;
    v41 = *(v49 + 32);
    v41(v48, v9, v33);
    v42 = swift_getKeyPath();
    v43 = &v26[*(v23 + 36)];
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v41(v43 + v44, v40, v33);
    v45 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v43 + v44, 0, 1, v45);
    *v43 = v42;
  }

  sub_26A62F098();
  v46 = sub_26A84CD88();
  sub_26A4DD9BC(v46);

  sub_26A4DBD10(v26, &qword_2803AAA98);
  sub_26A84CD98();

  sub_26A4D7E54();
  sub_26A62F0EC();
  sub_26A851248();
  sub_26A4DBD10(v32, &qword_2803AAAA0);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A62ECC0()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A62ED38(uint64_t a1)
{
  result = sub_26A62F318(&qword_2803B12E0, MEMORY[0x277D63468]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A62EDB8()
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

unint64_t sub_26A62EF28()
{
  result = qword_2803B12F8;
  if (!qword_2803B12F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B12D8);
    sub_26A62EFB4();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B12F8);
  }

  return result;
}

unint64_t sub_26A62EFB4()
{
  result = qword_2803B1300;
  if (!qword_2803B1300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B12D0);
    sub_26A4DBCC8(&qword_2803B1308, &qword_2803A9D48);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1300);
  }

  return result;
}

uint64_t sub_26A62F098()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A62F0EC()
{
  result = qword_2803B1350;
  if (!qword_2803B1350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAA0);
    sub_26A62F1A4();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1350);
  }

  return result;
}

unint64_t sub_26A62F1A4()
{
  result = qword_2803B1358;
  if (!qword_2803B1358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA90);
    sub_26A62F230();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1358);
  }

  return result;
}

unint64_t sub_26A62F230()
{
  result = qword_2803B1360;
  if (!qword_2803B1360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA98);
    sub_26A62F318(&qword_2803ADF18, type metadata accessor for SummaryItemSwitchV2View);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1360);
  }

  return result;
}

uint64_t sub_26A62F318(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_19_16@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);

  return sub_26A4DBD10(v3, v1);
}

uint64_t OUTLINED_FUNCTION_27_9(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1);
}

uint64_t sub_26A62F44C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 66))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 49);
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

uint64_t sub_26A62F498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26A62F500(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        return v2 & 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if (v2)
      {
        goto LABEL_22;
      }
    }

    if (*(a1 + 17) == *(a2 + 17))
    {
      v2 = *(a2 + 32);
      if (*(a1 + 32))
      {
        if (!*(a2 + 32))
        {
          return v2 & 1;
        }
      }

      else
      {
        if (*(a1 + 24) != *(a2 + 24))
        {
          v2 = 1;
        }

        if (v2)
        {
          goto LABEL_22;
        }
      }

      v2 = *(a2 + 48);
      if (*(a1 + 48))
      {
        if (!*(a2 + 48))
        {
          return v2 & 1;
        }
      }

      else
      {
        if (*(a1 + 40) != *(a2 + 40))
        {
          v2 = 1;
        }

        if (v2)
        {
          goto LABEL_22;
        }
      }

      if (((*(a1 + 49) ^ *(a2 + 49)) & 1) == 0)
      {
        v2 = *(a2 + 64);
        if (*(a1 + 64))
        {
          if (!*(a2 + 64))
          {
            return v2 & 1;
          }
        }

        else
        {
          if (*(a1 + 56) != *(a2 + 56))
          {
            v2 = 1;
          }

          if (v2)
          {
            goto LABEL_22;
          }
        }

        v2 = *(a1 + 65) ^ *(a2 + 65) ^ 1;
        return v2 & 1;
      }
    }
  }

LABEL_22:
  v2 = 0;
  return v2 & 1;
}

uint64_t sub_26A62F5F0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x26D664950](*&v1);
  if (*(v0 + 16) == 1)
  {
    sub_26A8526D8();
  }

  else
  {
    v2 = *(v0 + 8);
    sub_26A8526D8();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x26D664950](v3);
  }

  MEMORY[0x26D664930](*(v0 + 17));
  if (*(v0 + 32) == 1)
  {
    sub_26A8526D8();
  }

  else
  {
    v4 = *(v0 + 24);
    sub_26A8526D8();
    MEMORY[0x26D664930](v4);
  }

  if (*(v0 + 48) == 1)
  {
    sub_26A8526D8();
  }

  else
  {
    v5 = *(v0 + 40);
    sub_26A8526D8();
    MEMORY[0x26D664930](v5);
  }

  sub_26A8526D8();
  if (*(v0 + 64) == 1)
  {
    sub_26A8526D8();
  }

  else
  {
    v6 = *(v0 + 56);
    sub_26A8526D8();
    MEMORY[0x26D664930](v6);
  }

  return sub_26A8526D8();
}

uint64_t sub_26A62F708()
{
  sub_26A8526B8();
  sub_26A62F5F0();
  return sub_26A8526F8();
}

uint64_t sub_26A62F750()
{
  sub_26A8526B8();
  sub_26A62F5F0();
  return sub_26A8526F8();
}

unint64_t sub_26A62F794()
{
  result = qword_2803B1368;
  if (!qword_2803B1368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1368);
  }

  return result;
}

uint64_t sub_26A62F7E8()
{
  v0 = sub_26A8517B8();
  v2 = v1;
  if (v0 == sub_26A8517B8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_1_49();
  }

  return v5 & 1;
}

uint64_t sub_26A62F860(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x4667756265444652;
  }

  if (v2)
  {
    v4 = 0xED00007265746F6FLL;
  }

  else
  {
    v4 = 0x800000026A88A260;
  }

  if (a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x4667756265444652;
  }

  if (a2)
  {
    v6 = 0x800000026A88A260;
  }

  else
  {
    v6 = 0xED00007265746F6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_49();
  }

  return v8 & 1;
}

uint64_t sub_26A62F904(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x6867696C746F7053;
  v4 = a1;
  v5 = 0x6867696C746F7053;
  v6 = 0xE900000000000074;
  switch(v4)
  {
    case 1:
      v6 = 0xE400000000000000;
      v5 = 1769105747;
      break;
    case 2:
      v5 = 0xD000000000000010;
      v6 = 0x800000026A88A230;
      break;
    case 3:
      v5 = 0x6153656C69626F4DLL;
      v6 = 0xEC00000069726166;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE400000000000000;
      v3 = 1769105747;
      break;
    case 2:
      v3 = 0xD000000000000010;
      v2 = 0x800000026A88A230;
      break;
    case 3:
      v3 = 0x6153656C69626F4DLL;
      v2 = 0xEC00000069726166;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_49();
  }

  return v8 & 1;
}

uint64_t sub_26A62FA4C(unsigned __int8 a1, char a2)
{
  v2 = 0x6E6F74747542;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1954047316;
    }

    else
    {
      v4 = 0x6567616D49;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x6E6F74747542;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1954047316;
    }

    else
    {
      v2 = 0x6567616D49;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_49();
  }

  return v8 & 1;
}

uint64_t sub_26A62FB44(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000736E6FLL;
  v3 = 0x74747542776F6873;
  v4 = a1;
  v5 = 0x74747542776F6873;
  v6 = 0xEB00000000736E6FLL;
  switch(v4)
  {
    case 1:
      v6 = 0x800000026A88AD20;
      v5 = 0xD000000000000013;
      break;
    case 2:
      v6 = 0x800000026A88AD40;
      v5 = 0xD00000000000001ELL;
      break;
    case 3:
      v6 = 0x800000026A88AD60;
      v5 = 0xD000000000000020;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x800000026A88AD20;
      v3 = 0xD000000000000013;
      break;
    case 2:
      v2 = 0x800000026A88AD40;
      v3 = 0xD00000000000001ELL;
      break;
    case 3:
      v2 = 0x800000026A88AD60;
      v3 = 0xD000000000000020;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_49();
  }

  return v8 & 1;
}

BOOL sub_26A62FC84(char a1, char a2)
{
  v2 = 0.0;
  if (a1)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  if (a2)
  {
    v2 = 1.0;
  }

  return v3 == v2;
}

uint64_t sub_26A62FCA8(char a1, char a2)
{
  v3 = sub_26A6300C8(a1);
  v5 = v4;
  if (v3 == sub_26A6300C8(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26A852598();
  }

  return v8 & 1;
}

uint64_t sub_26A62FD2C(char a1, char a2)
{
  v2 = 0xEA00000000006465;
  v3 = 0x7A69736168706D65;
  v4 = "stronglyEmphasized";
  if (a1)
  {
    OUTLINED_FUNCTION_7_40();
    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xED00006867756F72;
    }
  }

  else
  {
    v9 = 0x7A69736168706D65;
    v10 = 0xEA00000000006465;
  }

  if (a2)
  {
    v11 = (v4 - 32) | 0x8000000000000000;
    if (a2 == 1)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0x6874656B69727473;
    }

    if (a2 == 1)
    {
      v2 = v11;
    }

    else
    {
      v2 = 0xED00006867756F72;
    }
  }

  if (v9 == v3 && v10 == v2)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_3_49();
  }

  return v13 & 1;
}

uint64_t sub_26A62FE2C(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x656772616CLL;
  }

  else
  {
    v2 = 0x6369736162;
  }

  if (a2)
  {
    v3 = 0x656772616CLL;
  }

  else
  {
    v3 = 0x6369736162;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_26A852598();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_26A62FEA4(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x6574616C706D6574;
  }

  else
  {
    v2 = 0x6C616E696769726FLL;
  }

  if (a2)
  {
    v3 = 0x6574616C706D6574;
  }

  else
  {
    v3 = 0x6C616E696769726FLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_26A852598();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_26A62FF24()
{
  v0 = sub_26A632610();
  OUTLINED_FUNCTION_2_39(v0, &_s27ComponentTypeEnvironmentKeyVN);

  return sub_26A84F998();
}

uint64_t sub_26A62FF84@<X0>(char *a1@<X8>)
{
  result = sub_26A6315E4();
  if (result == 74)
  {
    v3 = 73;
  }

  else
  {
    v3 = result;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_26A62FFBC()
{
  v0 = sub_26A6325BC();
  OUTLINED_FUNCTION_2_39(v0, &_s35PreviousComponentTypeEnvironmentKeyVN);

  return sub_26A84F998();
}

uint64_t sub_26A63001C()
{
  v0 = sub_26A632568();
  OUTLINED_FUNCTION_2_39(v0, &_s31NextComponentTypeEnvironmentKeyVN);

  return sub_26A84F998();
}

uint64_t sub_26A6300C8(char a1)
{
  result = 0x61436D6F74737563;
  switch(a1)
  {
    case 1:
    case 16:
    case 47:
    case 55:
    case 62:
    case 72:
      OUTLINED_FUNCTION_5_39();
      result = v12 - 1;
      break;
    case 2:
    case 8:
    case 50:
    case 52:
    case 67:
      OUTLINED_FUNCTION_5_39();
      result = v13 | 2;
      break;
    case 3:
    case 4:
    case 6:
    case 14:
    case 45:
    case 54:
    case 69:
      OUTLINED_FUNCTION_5_39();
      result = v11 + 1;
      break;
    case 5:
    case 9:
    case 25:
    case 59:
    case 63:
    case 68:
      OUTLINED_FUNCTION_5_39();
      result = v14 + 5;
      break;
    case 7:
    case 13:
    case 18:
    case 39:
    case 48:
    case 60:
      OUTLINED_FUNCTION_5_39();
      result = v8 | 4;
      break;
    case 10:
    case 37:
      result = 0x497972616D6D7573;
      break;
    case 11:
    case 19:
    case 26:
      OUTLINED_FUNCTION_5_39();
      result = v10 + 3;
      break;
    case 12:
    case 17:
    case 22:
    case 40:
      OUTLINED_FUNCTION_5_39();
      result = v7 | 6;
      break;
    case 15:
      result = 0x7449656C706D6973;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 21:
    case 27:
    case 49:
      OUTLINED_FUNCTION_5_39();
      result = v6 | 8;
      break;
    case 23:
      result = 0x6E6F74747562;
      break;
    case 24:
      result = 0x75427972616E6962;
      break;
    case 28:
      OUTLINED_FUNCTION_5_39();
      result = v9 + 7;
      break;
    case 29:
      result = 0x75706E4974786574;
      break;
    case 30:
    case 31:
      result = 0x536C6F72746E6F63;
      break;
    case 32:
      result = 0x444970756F7267;
      break;
    case 33:
      result = 0xD000000000000011;
      break;
    case 34:
    case 35:
    case 36:
      result = 0x636E657265666572;
      break;
    case 38:
      result = 0xD000000000000011;
      break;
    case 41:
      result = 0xD000000000000011;
      break;
    case 42:
      v4 = 1952670054;
      goto LABEL_27;
    case 43:
      result = 0xD000000000000011;
      break;
    case 44:
      v4 = 1735290732;
LABEL_27:
      result = v4 | 0x6D65744900000000;
      break;
    case 46:
      result = 0xD000000000000011;
      break;
    case 51:
      result = 0xD000000000000011;
      break;
    case 53:
      OUTLINED_FUNCTION_5_39();
      result = v3 + 11;
      break;
    case 56:
      result = 0xD000000000000011;
      break;
    case 57:
      result = 0x6E61745368736173;
      break;
    case 58:
      result = 0x646165486F726568;
      break;
    case 61:
      result = 0xD000000000000011;
      break;
    case 64:
      OUTLINED_FUNCTION_5_39();
      result = v5 + 9;
      break;
    case 65:
      result = 0x776F52656C626174;
      break;
    case 66:
      result = 0x616548656C626174;
      break;
    case 70:
      result = 7364973;
      break;
    case 71:
      result = 0x6C69617465446673;
      break;
    case 73:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26A630730(char a1)
{
  OUTLINED_FUNCTION_6_36();
  sub_26A6AEC98(v3, a1 & 1);
  return sub_26A8526F8();
}

uint64_t sub_26A630770(char a1)
{
  sub_26A8526B8();
  sub_26A6300C8(a1);
  sub_26A851848();

  return sub_26A8526F8();
}

uint64_t sub_26A630834(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_6_36();
  a2(v5, a1);
  return sub_26A8526F8();
}

uint64_t sub_26A63087C(char a1)
{
  OUTLINED_FUNCTION_6_36();
  MEMORY[0x26D664930](a1 & 1);
  return sub_26A8526F8();
}

uint64_t sub_26A6308BC(uint64_t a1)
{
  OUTLINED_FUNCTION_6_36();
  MEMORY[0x26D664930](a1);
  return sub_26A8526F8();
}

uint64_t sub_26A6308FC()
{
  OUTLINED_FUNCTION_4_43();
  sub_26A851848();

  return sub_26A8526F8();
}

uint64_t sub_26A630968()
{
  OUTLINED_FUNCTION_4_43();
  sub_26A851848();

  return sub_26A8526F8();
}

uint64_t sub_26A6309CC()
{
  OUTLINED_FUNCTION_4_43();
  if (v0)
  {
    OUTLINED_FUNCTION_7_40();
  }

  sub_26A851848();

  return sub_26A8526F8();
}

uint64_t sub_26A630A6C(uint64_t a1, char a2)
{
  sub_26A8526B8();
  sub_26A6300C8(a2);
  sub_26A851848();

  return sub_26A8526F8();
}

uint64_t sub_26A630ACC()
{
  OUTLINED_FUNCTION_4_43();
  sub_26A6AEC98(v2, v0 & 1);
  return sub_26A8526F8();
}

uint64_t sub_26A630B38(uint64_t a1, char a2)
{
  sub_26A8526B8();
  MEMORY[0x26D664930](a2 & 1);
  return sub_26A8526F8();
}

uint64_t sub_26A630B7C()
{
  OUTLINED_FUNCTION_4_43();
  sub_26A851848();

  return sub_26A8526F8();
}

uint64_t sub_26A630C1C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_26A8526B8();
  a3(v6, a2);
  return sub_26A8526F8();
}

uint64_t sub_26A630C68()
{
  OUTLINED_FUNCTION_4_43();
  sub_26A851848();

  return sub_26A8526F8();
}

uint64_t sub_26A630CF0(uint64_t a1, uint64_t a2)
{
  sub_26A8526B8();
  MEMORY[0x26D664930](a2);
  return sub_26A8526F8();
}

uint64_t sub_26A630D34()
{
  sub_26A56BEB0();
  sub_26A84FF18();
  if (v8 != 74)
  {
    if (sub_26A6300C8(v8) == 0x6E6F74747562 && v1 == 0xE600000000000000)
    {
    }

    else
    {
      v3 = sub_26A852598();

      if ((v3 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    v0 = 1;
    return v0 & 1;
  }

LABEL_2:
  sub_26A84FF18();
  if (v7 == 74)
  {
    v0 = 0;
  }

  else
  {
    if (sub_26A6300C8(v7) == 0x75427972616E6962 && v4 == 0xEC0000006E6F7474)
    {

      v0 = 1;
    }

    else
    {
      v0 = sub_26A852598();
    }
  }

  return v0 & 1;
}

uint64_t _s7SwiftUI4ViewP07SnippetB0E13componentNameyQrSSF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x26D662ED0](v4, a3, &type metadata for ComponentNameWritingModifier);
}

uint64_t static ComponentType.== infix(_:_:)(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_26A6300C8(*a1);
  v5 = v4;
  if (v3 == sub_26A6300C8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_49();
  }

  return v8 & 1;
}

uint64_t ComponentType.hash(into:)()
{
  sub_26A6300C8(*v0);
  sub_26A851848();
}

uint64_t ComponentType.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_6_36();
  sub_26A6300C8(v1);
  sub_26A851848();

  return sub_26A8526F8();
}

uint64_t sub_26A631244()
{
  v0 = sub_26A8525C8();

  if (v0 >= 0x4A)
  {
    return 74;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26A6312A0()
{
  result = qword_28157F410[0];
  if (!qword_28157F410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28157F410);
  }

  return result;
}

uint64_t sub_26A6312FC()
{
  v1 = *v0;
  sub_26A8526B8();
  sub_26A6300C8(v1);
  sub_26A851848();

  return sub_26A8526F8();
}

uint64_t sub_26A63138C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xB7)
  {
    if (a2 + 73 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 73) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 74;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x4A;
  v5 = v6 - 74;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_26A631414(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 73 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 73) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xB7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xB6)
  {
    v6 = ((a2 - 183) >> 8) + 1;
    *result = a2 + 73;
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
          *result = a2 + 73;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26A631514@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A631244();
  *a1 = result;
  return result;
}

uint64_t sub_26A631544@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A6300C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_26A631574()
{
  result = qword_2803B1370;
  if (!qword_2803B1370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1370);
  }

  return result;
}

uint64_t sub_26A6315E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v21 - v1;
  v3 = sub_26A84BD98();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26A84BD78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v15 = v14;
  sub_26A84E4E8();
  sub_26A84BD88();
  (*(v4 + 8))(v6, v3);
  if (__swift_getEnumTagSinglePayload(v2, 1, v15) == 1)
  {
    sub_26A54CE1C(v2);
    return 74;
  }

  v17 = *(v8 + 32);
  v17(v13, v2, v15);
  v17(v10, v13, v15);
  v18 = (*(v8 + 88))(v10, v15);
  if (v18 == *MEMORY[0x277D62FD8])
  {
    (*(v8 + 8))(v10, v15);
    return 0;
  }

  if (v18 == *MEMORY[0x277D63040])
  {
    (*(v8 + 8))(v10, v15);
    return 1;
  }

  if (v18 == *MEMORY[0x277D630D0])
  {
    (*(v8 + 8))(v10, v15);
    return 2;
  }

  if (v18 == *MEMORY[0x277D630A8])
  {
    (*(v8 + 8))(v10, v15);
    return 3;
  }

  if (v18 == *MEMORY[0x277D630D8])
  {
    (*(v8 + 8))(v10, v15);
    return 8;
  }

  if (v18 == *MEMORY[0x277D63130])
  {
    (*(v8 + 8))(v10, v15);
    return 9;
  }

  if (v18 == *MEMORY[0x277D63038])
  {
    (*(v8 + 8))(v10, v15);
    return 10;
  }

  if (v18 == *MEMORY[0x277D630F8])
  {
    (*(v8 + 8))(v10, v15);
    return 11;
  }

  if (v18 == *MEMORY[0x277D63148])
  {
    (*(v8 + 8))(v10, v15);
    return 12;
  }

  if (v18 == *MEMORY[0x277D630B0])
  {
    (*(v8 + 8))(v10, v15);
    return 14;
  }

  if (v18 == *MEMORY[0x277D63018])
  {
    (*(v8 + 8))(v10, v15);
    return 15;
  }

  if (v18 == *MEMORY[0x277D63050])
  {
    (*(v8 + 8))(v10, v15);
    return 16;
  }

  if (v18 == *MEMORY[0x277D63100])
  {
    (*(v8 + 8))(v10, v15);
    return 18;
  }

  if (v18 == *MEMORY[0x277D630E8])
  {
    (*(v8 + 8))(v10, v15);
    return 19;
  }

  v19 = v18;
  if (v18 == *MEMORY[0x277D63068])
  {
    (*(v8 + 8))(v10, v15);
    return 20;
  }

  if (v18 == *MEMORY[0x277D63140])
  {
    (*(v8 + 8))(v10, v15);
    return 22;
  }

  if (v18 == *MEMORY[0x277D63188])
  {
    (*(v8 + 8))(v10, v15);
    return 23;
  }

  if (v18 == *MEMORY[0x277D62FD0])
  {
    (*(v8 + 8))(v10, v15);
    return 24;
  }

  if (v18 == *MEMORY[0x277D63128])
  {
    (*(v8 + 8))(v10, v15);
    return 25;
  }

  if (v18 == *MEMORY[0x277D630F0])
  {
    (*(v8 + 8))(v10, v15);
    return 26;
  }

  if (v18 == *MEMORY[0x277D63168])
  {
    (*(v8 + 8))(v10, v15);
    return 27;
  }

  if (v18 == *MEMORY[0x277D63158])
  {
    (*(v8 + 8))(v10, v15);
    return 28;
  }

  if (v18 == *MEMORY[0x277D63198])
  {
    (*(v8 + 8))(v10, v15);
    return 29;
  }

  if (v18 == *MEMORY[0x277D62FF8])
  {
    (*(v8 + 8))(v10, v15);
    return 30;
  }

  if (v18 == *MEMORY[0x277D62FF0])
  {
    (*(v8 + 8))(v10, v15);
    return 31;
  }

  if (v18 == *MEMORY[0x277D630C8])
  {
    (*(v8 + 8))(v10, v15);
    return 67;
  }

  if (v18 == *MEMORY[0x277D63190])
  {
    (*(v8 + 8))(v10, v15);
    return 32;
  }

  if (v18 == *MEMORY[0x277D63078])
  {
    (*(v8 + 8))(v10, v15);
    return 33;
  }

  if (v18 == *MEMORY[0x277D63000])
  {
    (*(v8 + 8))(v10, v15);
    return 34;
  }

  if (v18 == *MEMORY[0x277D63008])
  {
    (*(v8 + 8))(v10, v15);
    return 35;
  }

  if (v18 == *MEMORY[0x277D63028])
  {
    (*(v8 + 8))(v10, v15);
    return 36;
  }

  if (v18 == *MEMORY[0x277D63030])
  {
    (*(v8 + 8))(v10, v15);
    return 37;
  }

  if (v18 == *MEMORY[0x277D63090])
  {
    (*(v8 + 8))(v10, v15);
    return 38;
  }

  if (v18 == *MEMORY[0x277D63118])
  {
    (*(v8 + 8))(v10, v15);
    return 39;
  }

  if (v18 == *MEMORY[0x277D63150])
  {
    (*(v8 + 8))(v10, v15);
    return 40;
  }

  if (v18 == *MEMORY[0x277D63088])
  {
    (*(v8 + 8))(v10, v15);
    return 41;
  }

  if (v18 == *MEMORY[0x277D63010])
  {
    (*(v8 + 8))(v10, v15);
    return 42;
  }

  if (v18 == *MEMORY[0x277D63180])
  {
LABEL_79:
    (*(v8 + 8))(v10, v15);
    return 74;
  }

  if (v18 == *MEMORY[0x277D63070])
  {
    (*(v8 + 8))(v10, v15);
    return 43;
  }

  else if (v18 == *MEMORY[0x277D62FE0])
  {
    (*(v8 + 8))(v10, v15);
    return 44;
  }

  else if (v18 == *MEMORY[0x277D630B8])
  {
    (*(v8 + 8))(v10, v15);
    return 45;
  }

  else if (v18 == *MEMORY[0x277D63098])
  {
    (*(v8 + 8))(v10, v15);
    return 46;
  }

  else if (v18 == *MEMORY[0x277D63048])
  {
    (*(v8 + 8))(v10, v15);
    return 47;
  }

  else if (v18 == *MEMORY[0x277D63110])
  {
    (*(v8 + 8))(v10, v15);
    return 48;
  }

  else if (v18 == *MEMORY[0x277D63160])
  {
    (*(v8 + 8))(v10, v15);
    return 49;
  }

  else if (v18 == *MEMORY[0x277D630A0])
  {
    (*(v8 + 8))(v10, v15);
    return 51;
  }

  else if (v18 == *MEMORY[0x277D63178])
  {
    (*(v8 + 8))(v10, v15);
    return 53;
  }

  else if (v18 == *MEMORY[0x277D630C0])
  {
    (*(v8 + 8))(v10, v15);
    return 54;
  }

  else if (v18 == *MEMORY[0x277D63058])
  {
    (*(v8 + 8))(v10, v15);
    return 55;
  }

  else
  {
    if (v18 == *MEMORY[0x277D63020])
    {
      goto LABEL_79;
    }

    if (v18 == *MEMORY[0x277D63060])
    {
      (*(v8 + 8))(v10, v15);
      return 56;
    }

    else if (v18 == *MEMORY[0x277D62FE8])
    {
      (*(v8 + 8))(v10, v15);
      return 57;
    }

    else if (v18 == *MEMORY[0x277D62FC8])
    {
      (*(v8 + 8))(v10, v15);
      return 58;
    }

    else if (v18 == *MEMORY[0x277D63120])
    {
      (*(v8 + 8))(v10, v15);
      return 59;
    }

    else if (v18 == *MEMORY[0x277D63108])
    {
      (*(v8 + 8))(v10, v15);
      return 60;
    }

    else if (v18 == *MEMORY[0x277D63080])
    {
      (*(v8 + 8))(v10, v15);
      return 61;
    }

    else if (v18 == *MEMORY[0x277D62FC0])
    {
      (*(v8 + 8))(v10, v15);
      return 62;
    }

    else if (v18 == *MEMORY[0x277D63138])
    {
      (*(v8 + 8))(v10, v15);
      return 63;
    }

    else if (v18 == *MEMORY[0x277D63170])
    {
      (*(v8 + 8))(v10, v15);
      return 64;
    }

    else
    {
      v20 = *MEMORY[0x277D630E0];
      (*(v8 + 8))(v10, v15);
      if (v19 == v20)
      {
        return 52;
      }

      else
      {
        return 74;
      }
    }
  }
}

uint64_t sub_26A63239C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1378);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1380) + 36)) = v5;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1388);
  v9 = a2 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = v5;
  return result;
}

uint64_t sub_26A632468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1390);
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  v9 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1398) + 36));
  *v9 = a2;
  v9[1] = a3;
  KeyPath = swift_getKeyPath();
  v11 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B13A0) + 36));
  *v11 = KeyPath;
  v11[1] = a2;
  v11[2] = a3;
  return swift_bridgeObjectRetain_n();
}

unint64_t sub_26A632568()
{
  result = qword_28157FD20;
  if (!qword_28157FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD20);
  }

  return result;
}

unint64_t sub_26A6325BC()
{
  result = qword_28157FD18;
  if (!qword_28157FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD18);
  }

  return result;
}

unint64_t sub_26A632610()
{
  result = qword_28157FD40;
  if (!qword_28157FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD40);
  }

  return result;
}

unint64_t sub_26A6326B4()
{
  result = qword_28157FDB0;
  if (!qword_28157FDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1388);
    sub_26A63276C();
    sub_26A4DBCC8(&qword_28157FBA8, &qword_2803ABBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FDB0);
  }

  return result;
}

unint64_t sub_26A63276C()
{
  result = qword_28157FE40;
  if (!qword_28157FE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1380);
    sub_26A4DBCC8(&qword_28157FBE8, &qword_2803B1378);
    sub_26A4DBCC8(&qword_28157FC18, &qword_2803B13A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE40);
  }

  return result;
}

unint64_t sub_26A632850()
{
  result = qword_2803B13B0;
  if (!qword_2803B13B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B13A0);
    sub_26A632908();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B13B0);
  }

  return result;
}

unint64_t sub_26A632908()
{
  result = qword_2803B13B8;
  if (!qword_2803B13B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1398);
    sub_26A4DBCC8(&qword_2803B13C0, &qword_2803B1390);
    sub_26A4DBCC8(&qword_2803B13C8, &qword_2803B13D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B13B8);
  }

  return result;
}

unint64_t sub_26A6329EC()
{
  result = qword_28157F408;
  if (!qword_28157F408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADBF0);
    sub_26A6312A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157F408);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_49()
{

  return sub_26A852598();
}

uint64_t OUTLINED_FUNCTION_3_49()
{

  return sub_26A852598();
}

uint64_t OUTLINED_FUNCTION_4_43()
{

  return sub_26A8526B8();
}

uint64_t OUTLINED_FUNCTION_6_36()
{

  return sub_26A8526B8();
}

uint64_t SFLatLng.isoDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B13D8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26A8570D0;
  [v0 lat];
  v2 = MEMORY[0x277D839F8];
  v3 = MEMORY[0x277D83A80];
  *(v1 + 56) = MEMORY[0x277D839F8];
  *(v1 + 64) = v3;
  *(v1 + 32) = v4;
  v5 = sub_26A8517C8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26A8570D0;
  [v0 lng];
  *(v6 + 56) = v2;
  *(v6 + 64) = v3;
  *(v6 + 32) = v7;
  v8 = sub_26A8517C8();
  v10 = v9;

  MEMORY[0x26D663B00](v8, v10);

  return v5;
}

uint64_t sub_26A632C90(uint64_t a1)
{
  sub_26A84EE68();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_26A84F6E8();
}

uint64_t sub_26A632D44()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A84F948();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A632D6C()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.isVibrant.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A632DC0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __src[0] = 0;
  sub_26A851048();
  v6 = __dst[1];
  *(a2 + 24) = __dst[0];
  *(a2 + 32) = v6;
  *(a2 + 40) = swift_getKeyPath();
  *(a2 + 48) = 0;
  *(a2 + 56) = swift_getKeyPath();
  *(a2 + 64) = 0;
  v7 = type metadata accessor for ButtonItemButtonStyle(0);
  v8 = v7[10];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v7[11];
  *v9 = KeyPath;
  *(v9 + 8) = 0;
  v10 = a2 + v7[12];
  *v10 = v5;
  *(v10 + 8) = 0;
  v11 = a2 + v7[13];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = v7[14];
  if (qword_2803A8AE8 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v13 = a2 + v12;
  memcpy(__dst, qword_2803D1B00, sizeof(__dst));
  memcpy((v13 + 368), qword_2803D1B00, 0xD0uLL);
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy(v13, __src, 0xBFuLL);
  memcpy(v19, (v13 + 400), sizeof(v19));
  memcpy((v13 + 192), (v13 + 400), 0xB0uLL);
  v14 = v7[15];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  return sub_26A54DFFC(v19, &v16);
}

uint64_t ButtonItemButtonStyle.Role.hashValue.getter()
{
  v1 = *v0;
  sub_26A8526B8();
  MEMORY[0x26D664930](v1);
  return sub_26A8526F8();
}

uint64_t sub_26A633078()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  if (*(v0 + 48) != 1)
  {

    sub_26A851EA8();
    v6 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_26A6331C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for ButtonItemButtonStyle(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84EE68();
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

uint64_t sub_26A6333C8()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for ButtonItemButtonStyle(0) + 44);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v9;
}

uint64_t sub_26A6334F8()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for ButtonItemButtonStyle(0) + 48);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v9, 0);
    (*(v3 + 8))(v7, v1);
    LOBYTE(v9) = v12;
  }

  return v9 & 1;
}

uint64_t sub_26A63362C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ButtonItemButtonStyle(0) + 52);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26A633784@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for ButtonItemButtonStyle(0);
  sub_26A4D7E54();
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

uint64_t ButtonItemButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  v2 = type metadata accessor for ButtonItemButtonStyle(0);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B13F8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  sub_26A633B74(a1, &v6[-v4]);
  v6[15] = sub_26A84FFC8() & 1;
  sub_26A638B04();
  swift_allocObject();
  sub_26A638AB0();
  sub_26A637D30();
  sub_26A850C78();

  return sub_26A4D6FD8();
}

uint64_t sub_26A633B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v77 = a1;
  v82 = a2;
  v65 = sub_26A84F5F8();
  MEMORY[0x28223BE20](v65);
  v5 = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1500);
  MEMORY[0x28223BE20](v66);
  v68 = &v58 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B14F0);
  MEMORY[0x28223BE20](v76);
  v67 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v58 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1538);
  MEMORY[0x28223BE20](v72);
  v75 = &v58 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1438);
  MEMORY[0x28223BE20](v73);
  v64 = &v58 - v11;
  v70 = sub_26A84F3A8();
  v12 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1428);
  MEMORY[0x28223BE20](v81);
  v74 = &v58 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1458);
  MEMORY[0x28223BE20](v16 - 8);
  v71 = &v58 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1540);
  MEMORY[0x28223BE20](v79);
  v80 = &v58 - v18;
  v62 = sub_26A84FCA8();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26A84FFA8();
  v58 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1548);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v25 = &v58 - v24;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1410);
  MEMORY[0x28223BE20](v78);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v63 = &v58 - v29;
  if ((sub_26A633078() & 1) != 0 || (v30 = sub_26A6333C8(), sub_26A61B05C(v30, &unk_287B13B08)) || (v31 = sub_26A6333C8(), sub_26A61B05C(v31, &unk_287B131A0)) || (v32 = sub_26A6333C8(), sub_26A61B05C(v32, &unk_287B13B48)))
  {
    sub_26A634888(v77, v71);
    v33 = sub_26A6333C8();
    v34 = sub_26A61B05C(v33, &unk_287B13068);
    v35 = v70;
    if (v34 || (sub_26A633784(v14), v36 = sub_26A84F388(), (*(v12 + 8))(v14, v35), (v36 & 1) != 0))
    {
      sub_26A633784(v14);
      v37 = sub_26A84F388();
      (*(v12 + 8))(v14, v35);
      v38 = 20.0;
      if ((v37 & 1) == 0)
      {
        sub_26A635100();
        v38 = v39;
      }

      v40 = *(v65 + 20);
      v41 = *MEMORY[0x277CE0118];
      v42 = sub_26A84FB88();
      (*(*(v42 - 8) + 104))(v5 + v40, v41, v42);
      *v5 = v38;
      v5[1] = v38;
      v43 = &v68[*(v66 + 36)];
      sub_26A638AB0();
      *&v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)] = 256;
      sub_26A4D7E54();
      v44 = sub_26A851448();
      v46 = v45;
      v47 = &v67[*(v76 + 36)];
      sub_26A635258(v3, v47);
      v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1510) + 36));
      *v48 = v44;
      v48[1] = v46;
      sub_26A4D7EA8();
      sub_26A4D7EA8();
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A637F84();
      sub_26A638528();
      sub_26A84FDF8();
    }

    else
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1448);
      v50 = v64;
      v51 = &v64[*(v49 + 36)];
      v52 = *MEMORY[0x277CE0118];
      v53 = sub_26A84FB88();
      v54 = *(*(v53 - 8) + 104);
      v54(v51, v52, v53);
      *&v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B14D0) + 36)] = 256;
      sub_26A4D7E54();
      v55 = &v50[*(v73 + 36)];
      v54(v55, v52, v53);
      v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B14E0) + 36)] = 0;
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A637F84();
      sub_26A638528();
      sub_26A84FDF8();
    }

    sub_26A4D6FD8();
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A637DBC();
    sub_26A637EF8();
    sub_26A84FDF8();
    sub_26A4D6FD8();
  }

  else
  {
    sub_26A84FFB8();
    sub_26A84FC98();
    sub_26A6384E4();
    sub_26A6384E4();
    v57 = v62;
    sub_26A850948();
    (*(v61 + 8))(v20, v57);
    (*(v58 + 8))(v23, v21);
    sub_26A851448();
    sub_26A84F628();
    (*(v59 + 32))(v27, v25, v60);
    memcpy(&v27[*(v78 + 36)], __src, 0x70uLL);
    sub_26A4D7EA8();
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A637DBC();
    sub_26A637EF8();
    sub_26A84FDF8();
  }

  return sub_26A4D6FD8();
}

uint64_t sub_26A634888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v70 = a2;
  v3 = sub_26A84F648();
  v4 = *(v3 - 8);
  v61 = v3;
  v62 = v4;
  MEMORY[0x28223BE20](v3);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_26A84FFA8();
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1578);
  v60 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v54 = &v47 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1498) - 8;
  MEMORY[0x28223BE20](v58);
  v52 = &v47 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1488);
  MEMORY[0x28223BE20](v64);
  v68 = &v47 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1478);
  MEMORY[0x28223BE20](v67);
  v66 = &v47 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1468);
  MEMORY[0x28223BE20](v65);
  v69 = &v47 - v11;
  v51 = sub_26A84EE68();
  v12 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ButtonItemButtonStyle.ButtonAppearance(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26A635100();
  v72[0] = *v2;
  v19 = *(v2 + 16);
  v49 = *(v2 + 8);
  v50 = v18;
  v48 = v19;
  v20 = *(v2 + 32);
  LOBYTE(v74[0]) = *(v2 + 24);
  v74[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  sub_26A851058();
  v21 = v78[0];
  v22 = sub_26A633078();
  v23 = sub_26A63362C();
  sub_26A6331C0(v14);
  v24 = v23 & 1;
  v25 = v17;
  v26 = v52;
  v50(v72, v49, v48, v21, (v22 & 1) == 0, v24, v14);

  (*(v12 + 8))(v14, v51);
  v27 = v53;
  sub_26A84FFB8();
  v28 = v55;
  sub_26A84F638();
  sub_26A6384E4();
  sub_26A6384E4();
  v29 = v54;
  v30 = v57;
  v31 = v61;
  sub_26A850948();
  (*(v62 + 8))(v28, v31);
  (*(v59 + 8))(v27, v30);
  sub_26A851448();
  sub_26A84F628();
  (*(v60 + 32))(v26, v29, v63);
  memcpy(&v26[*(v58 + 44)], v77, 0x70uLL);
  KeyPath = swift_getKeyPath();
  v33 = swift_getKeyPath();
  if (qword_2803A8AE8 != -1)
  {
    swift_once();
  }

  memcpy(v72, qword_2803D1B00, sizeof(v72));
  memcpy(&v71[368], qword_2803D1B00, 0xD0uLL);
  sub_26A4D7E54();
  sub_26A6AEE74(v71);
  memcpy(v73, &v71[400], sizeof(v73));
  memcpy(&v71[192], &v71[400], 0xB0uLL);
  v76 = 0;
  v75 = 0;
  memcpy(v74 + 7, v71, 0x240uLL);
  v34 = v68;
  sub_26A4D7EA8();
  v35 = &v34[*(v64 + 36)];
  *v35 = KeyPath;
  v35[8] = v76;
  *(v35 + 2) = v33;
  v35[24] = v75;
  memcpy(v35 + 25, v74, 0x247uLL);
  v35[608] = 0;
  v36 = v25[1];
  sub_26A54DFFC(v73, v78);

  v37 = sub_26A851448();
  v39 = v38;
  v40 = v66;
  sub_26A4D7EA8();
  v41 = &v40[*(v67 + 36)];
  *v41 = v36;
  *(v41 + 1) = v37;
  *(v41 + 2) = v39;
  v42 = *v25;
  v43 = v69;
  sub_26A4D7EA8();
  *&v43[*(v65 + 36)] = v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1458);
  v45 = (v70 + *(v44 + 36));
  sub_26A4D7E54();

  sub_26A6AEE74(v78);
  sub_26A638C3C();
  memcpy(v45, v78, 0xBFuLL);
  v45[34] = sub_26A80A810;
  v45[35] = 0;
  return sub_26A4D7EA8();
}

uint64_t sub_26A635100()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ButtonItemButtonStyle(0) + 44);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v9[1];
  }

  return sub_26A59FE20(v6);
}

uint64_t sub_26A635258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_26A850D48();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26A84EE68();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v49 - v10;
  v12 = sub_26A84F3A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26A84F5F8();
  MEMORY[0x28223BE20](v16);
  v55 = (v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1550);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v49 - v19;
  v54 = a1;
  sub_26A633784(v15);
  LOBYTE(a1) = sub_26A84F388();
  (*(v13 + 8))(v15, v12);
  v21 = 20.0;
  if ((a1 & 1) == 0)
  {
    sub_26A635100();
    v21 = v22;
  }

  v23 = *(v16 + 20);
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_26A84FB88();
  v26 = v55;
  (*(*(v25 - 8) + 104))(v55 + v23, v24, v25);
  *v26 = v21;
  v26[1] = v21;
  sub_26A6331C0(v11);
  v27 = *MEMORY[0x277CDF3C0];
  v28 = *(v6 + 104);
  v28(v8, v27, v5);
  v49[1] = sub_26A84EE58();
  v29 = *(v6 + 8);
  v29(v8, v5);
  v29(v11, v5);
  if (sub_26A6334F8())
  {
    sub_26A6331C0(v11);
    v28(v8, v27, v5);
    sub_26A84EE58();
    v29(v8, v5);
    v29(v11, v5);
  }

  (*(v51 + 104))(v50, *MEMORY[0x277CE0EE0], v52);
  v30 = sub_26A850EA8();
  sub_26A84EF18();
  sub_26A638B04();
  v31 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1558) + 36)];
  v32 = v57;
  *v31 = v56;
  *(v31 + 1) = v32;
  *(v31 + 4) = v58;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1560);
  *&v20[*(v33 + 52)] = v30;
  *&v20[*(v33 + 56)] = 256;
  v34 = sub_26A851448();
  v36 = v35;
  sub_26A638C3C();
  v37 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1568) + 36)];
  *v37 = v34;
  v37[1] = v36;
  LOBYTE(v34) = sub_26A850248();
  sub_26A84ED48();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v53;
  sub_26A638B58(v20, v53);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1570);
  v48 = v46 + *(result + 36);
  *v48 = v34;
  *(v48 + 8) = v39;
  *(v48 + 16) = v41;
  *(v48 + 24) = v43;
  *(v48 + 32) = v45;
  *(v48 + 40) = 0;
  return result;
}

uint64_t sub_26A635800()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A84F928();
  return OUTLINED_FUNCTION_5_7(v0);
}

void sub_26A635850()
{
  OUTLINED_FUNCTION_85();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = *v10;
  v12 = sub_26A637C00(v0, v2, v6);
  v13 = [objc_opt_self() tertiarySystemFillColor];
  sub_26A850D38();
  if (v3)
  {
    v14 = 0.75;
  }

  else
  {
    v14 = 1.0;
  }

  v15 = sub_26A850E68();

  *&__dst[0] = v15;
  v16 = sub_26A84F038();
  if (!v7)
  {
    if (v1)
    {
      LODWORD(__dst[0]) = sub_26A84FEC8();
      v17 = sub_26A84F038();
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      LODWORD(__dst[0]) = sub_26A84FEA8();
      v17 = sub_26A84F038();
      if (!v5)
      {
        goto LABEL_21;
      }
    }

LABEL_13:

    v18 = v5;
    v19 = v5;
    v20 = v5;
    if (!v11)
    {
      goto LABEL_36;
    }

    goto LABEL_14;
  }

  v17 = v7;
  if (v5)
  {
    goto LABEL_13;
  }

  v17 = v7;
  if ((v1 & 1) == 0)
  {
LABEL_21:
    v23 = qword_2803A8AE8;

    if (v23 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v75 = v12;
    v24 = qword_2803D1B10;
    memcpy(__dst, &unk_2803D1B20, 0xB0uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
    v25 = OUTLINED_FUNCTION_11_13();
    *(v25 + 16) = xmmword_26A8570D0;
    if (qword_28157E760 != -1)
    {
      swift_once();
    }

    v26 = qword_281588978;
    v27 = byte_281588980;
    *(v25 + 32) = qword_281588978;
    *(v25 + 40) = v27;
    v74 = v26;
    sub_26A4E324C(v26, v27);

    v29 = sub_26A58787C(v28);
    if (*(v24 + 16))
    {
      v30 = sub_26A548580(v29);
      v32 = v31;

      if (v32)
      {
        OUTLINED_FUNCTION_14_24();
        memcpy(v79, (v33 + v30 * v34), sizeof(v79));
        sub_26A54DFFC(v79, v78);

        OUTLINED_FUNCTION_19_17();
        v41 = v79[3];
        v40 = v79[4];
        v42 = v79[5];
        v44 = v79[1];
        v43 = v79[2];
        v45 = v79[0];
        goto LABEL_30;
      }
    }

    else
    {
    }

    sub_26A54DFFC(__dst, v79);

    v35 = *&__dst[10];
    v36 = *(&__dst[8] + 8);
    v37 = *(&__dst[7] + 8);
    v38 = *(&__dst[6] + 8);
    v39 = *(&__dst[5] + 8);
    v41 = __dst[3];
    v40 = __dst[4];
    v42 = __dst[5];
    v44 = __dst[1];
    v43 = __dst[2];
    v45 = __dst[0];
LABEL_30:
    v79[0] = v45;
    v79[1] = v44;
    v79[2] = v43;
    v79[3] = v41;
    v79[4] = v40;
    LOBYTE(v79[5]) = v42;
    OUTLINED_FUNCTION_22_18(v35, v36, v37, v38, v39);
    *(&v79[9] + 1) = v46;
    v79[10] = v47;

    sub_26A638BC8(v79);
    v48 = sub_26A850E68();

    *&v78[0] = v48;
    v20 = sub_26A84F038();
    memcpy(v78, &unk_2803D1B20, sizeof(v78));
    v49 = OUTLINED_FUNCTION_11_13();
    *(v49 + 16) = xmmword_26A8570D0;
    *(v49 + 32) = v74;
    *(v49 + 40) = v27;
    sub_26A4E324C(v74, v27);

    v51 = sub_26A58787C(v50);
    if (*(v24 + 16))
    {
      v52 = sub_26A548580(v51);
      v54 = v53;

      if (v54)
      {
        OUTLINED_FUNCTION_14_24();
        memcpy(v77, (v55 + v52 * v56), sizeof(v77));
        sub_26A54DFFC(v77, v76);

        OUTLINED_FUNCTION_19_17();
        v63 = v77[3];
        v62 = v77[4];
        v64 = v77[5];
        v66 = v77[1];
        v65 = v77[2];
        v67 = v77[0];
        goto LABEL_35;
      }
    }

    else
    {
    }

    sub_26A54DFFC(v78, v77);

    v57 = *&v78[10];
    v58 = *(&v78[8] + 8);
    v59 = *(&v78[7] + 8);
    v60 = *(&v78[6] + 8);
    v61 = *(&v78[5] + 8);
    v63 = v78[3];
    v62 = v78[4];
    v64 = v78[5];
    v66 = v78[1];
    v65 = v78[2];
    v67 = v78[0];
LABEL_35:
    v77[0] = v67;
    v77[1] = v66;
    v77[2] = v65;
    v77[3] = v63;
    v77[4] = v62;
    LOBYTE(v77[5]) = v64;
    OUTLINED_FUNCTION_22_18(v57, v58, v59, v60, v61);
    *(&v77[9] + 1) = v68;
    v77[10] = v69;

    sub_26A638BC8(v77);
    v70 = sub_26A850E68();

    v76[0] = v70;
    v18 = sub_26A84F038();
    v19 = v16;
    v12 = v75;
    if (!v11)
    {
      goto LABEL_36;
    }

    goto LABEL_14;
  }

LABEL_10:
  swift_retain_n();

  v18 = v16;
  v19 = v16;
  v20 = v16;
  if (!v11)
  {
LABEL_36:
    v71 = qword_2803A90A8;
    swift_retain_n();
    if (v71 != -1)
    {
      OUTLINED_FUNCTION_4_44();
    }

    goto LABEL_38;
  }

LABEL_14:
  if (v11 == 1)
  {
    v21 = qword_2803A90B0;
    swift_retain_n();
    if (v21 != -1)
    {
      OUTLINED_FUNCTION_1_50();
    }

    v17 = v12;
    v19 = v20;
  }

  else
  {
    v22 = qword_2803A90B0;
    swift_retain_n();
    if (v22 != -1)
    {
      OUTLINED_FUNCTION_1_50();
    }

    v17 = v12;
    v19 = v18;
  }

LABEL_38:
  sub_26A4D7E54();

  v72 = *(type metadata accessor for ButtonItemButtonStyle.ButtonAppearance(0) + 32);
  v73 = sub_26A84EE68();
  __swift_storeEnumTagSinglePayload(v9 + v72, 1, 1, v73);
  *v9 = v17;
  *(v9 + 8) = v19;
  *(v9 + 16) = v14;
  OUTLINED_FUNCTION_86();
}

void sub_26A635E8C()
{
  OUTLINED_FUNCTION_85();
  v4 = v3;
  v5 = v2;
  v7 = v6;
  if (*v0)
  {
    if (*v0 == 1)
    {
      if (v1)
      {
        v8 = v1;
        if (!v2)
        {
LABEL_12:
          v11 = qword_2803A8AE8;

          if (v11 != -1)
          {
            OUTLINED_FUNCTION_0_20();
          }

          v12 = qword_2803D1B10;
          memcpy(__dst, &unk_2803D1B20, 0xB0uLL);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
          v13 = OUTLINED_FUNCTION_11_13();
          *(v13 + 16) = xmmword_26A8570D0;
          if (qword_28157E738 != -1)
          {
            OUTLINED_FUNCTION_2_19();
          }

          v14 = qword_281588938;
          *(v13 + 32) = qword_281588938;
          v15 = byte_281588940;
          *(v13 + 40) = byte_281588940;
          sub_26A4E324C(v14, v15);

          v17 = sub_26A58787C(v16);
          if (*(v12 + 16))
          {
            v18 = sub_26A548580(v17);
            v20 = v19;

            if (v20)
            {
              OUTLINED_FUNCTION_14_24();
              memcpy(v115, (v21 + v18 * v22), sizeof(v115));
              sub_26A54DFFC(v115, &v93);

              v23 = OUTLINED_FUNCTION_12_26();
LABEL_37:
              OUTLINED_FUNCTION_10_32(v23, v24, v25, v26);
              v115[10] = v53;

              sub_26A638BC8(v115);
              v93 = v91;
LABEL_52:
              v27 = sub_26A84F038();
              goto LABEL_53;
            }
          }

          else
          {
          }

          sub_26A54DFFC(__dst, v115);

          v23.n128_f64[0] = OUTLINED_FUNCTION_9_35(v45, v46, v47, v48, v49, v50, v51, v52, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, *v115, *(v115 + 1), *&v115[1], *(&v115[1] + 1), *&v115[2], *(&v115[2] + 1), *&v115[3], *(&v115[3] + 1), *&v115[4], *(&v115[4] + 1), *&v115[5], *(&v115[5] + 1), *&v115[6], *(&v115[6] + 1), *&v115[7], *(&v115[7] + 1), *&v115[8], *(&v115[8] + 1), *&v115[9], *(&v115[9] + 1), *&v115[10], *(&v115[10] + 1), *__dst, *(__dst + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4]);
          goto LABEL_37;
        }
      }

      else
      {
        LODWORD(__dst[0]) = sub_26A84FEA8();
        v8 = sub_26A84F038();
        if (!v5)
        {
          goto LABEL_12;
        }
      }

LABEL_41:

      v27 = v5;
LABEL_53:
      if (v4)
      {
        v28 = 0.75;
      }

      else
      {
        v28 = 1.0;
      }

      v88 = qword_2803A90B0;

      if (v88 != -1)
      {
        OUTLINED_FUNCTION_1_50();
      }

      goto LABEL_58;
    }

    v9 = 0x2803A8000uLL;
    v10 = &unk_28157E000;
    if (v1)
    {
      v8 = v1;
      if (v2)
      {
        goto LABEL_41;
      }

LABEL_42:
      v63 = *(v9 + 2792);

      if (v63 != -1)
      {
        OUTLINED_FUNCTION_0_20();
      }

      v64 = qword_2803D1B10;
      memcpy(__dst, &unk_2803D1B20, 0xB0uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
      v65 = OUTLINED_FUNCTION_11_13();
      *(v65 + 16) = xmmword_26A8570D0;
      if (v10[231] != -1)
      {
        OUTLINED_FUNCTION_2_19();
      }

      v66 = qword_281588938;
      *(v65 + 32) = qword_281588938;
      v67 = byte_281588940;
      *(v65 + 40) = byte_281588940;
      sub_26A4E324C(v66, v67);

      v69 = sub_26A58787C(v68);
      if (*(v64 + 16))
      {
        v70 = sub_26A548580(v69);
        v72 = v71;

        if (v72)
        {
          OUTLINED_FUNCTION_14_24();
          memcpy(v115, (v73 + v70 * v74), sizeof(v115));
          sub_26A54DFFC(v115, &v93);

          v75 = v115[10];
          v76 = *(&v115[9] + 1);
          v77 = *(&v115[8] + 8);
          v78 = *(&v115[7] + 8);
          v79 = *(&v115[6] + 8);
          v80 = *(&v115[5] + 8);
          v82 = v115[3];
          v81 = v115[4];
          v83 = v115[5];
          v85 = v115[1];
          v84 = v115[2];
          v86 = v115[0];
LABEL_51:
          v115[0] = v86;
          v115[1] = v85;
          v115[2] = v84;
          v115[3] = v82;
          v115[4] = v81;
          LOBYTE(v115[5]) = v83;
          *(&v115[5] + 8) = v80;
          *(&v115[6] + 8) = v79;
          *(&v115[7] + 8) = v78;
          *(&v115[8] + 8) = v77;
          *(&v115[9] + 1) = v76;
          v115[10] = v75;

          sub_26A638BC8(v115);
          v87 = sub_26A850E68();

          v93 = *&v87;
          goto LABEL_52;
        }
      }

      else
      {
      }

      sub_26A54DFFC(__dst, v115);

      v75 = __dst[10];
      v76 = *(&__dst[9] + 1);
      v77 = *(&__dst[8] + 8);
      v78 = *(&__dst[7] + 8);
      v79 = *(&__dst[6] + 8);
      v80 = *(&__dst[5] + 8);
      v82 = __dst[3];
      v81 = __dst[4];
      v83 = __dst[5];
      v85 = __dst[1];
      v84 = __dst[2];
      v86 = __dst[0];
      goto LABEL_51;
    }

    if (qword_2803A8AE8 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v30 = qword_2803D1B10;
    memcpy(__dst, &unk_2803D1B20, 0xB0uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
    v31 = OUTLINED_FUNCTION_11_13();
    *(v31 + 16) = xmmword_26A8570D0;
    if (qword_28157E738 != -1)
    {
      OUTLINED_FUNCTION_2_19();
    }

    v32 = qword_281588938;
    *(v31 + 32) = qword_281588938;
    v33 = byte_281588940;
    *(v31 + 40) = byte_281588940;
    sub_26A4E324C(v32, v33);

    v35 = sub_26A58787C(v34);
    if (*(v30 + 16))
    {
      v36 = sub_26A548580(v35);
      v38 = v37;

      if (v38)
      {
        OUTLINED_FUNCTION_14_24();
        memcpy(v115, (v39 + v36 * v40), sizeof(v115));
        sub_26A54DFFC(v115, &v93);

        v41 = OUTLINED_FUNCTION_12_26();
        goto LABEL_40;
      }
    }

    else
    {
    }

    sub_26A54DFFC(__dst, v115);

    v41.n128_f64[0] = OUTLINED_FUNCTION_9_35(v54, v55, v56, v57, v58, v59, v60, v61, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, *v115, *(v115 + 1), *&v115[1], *(&v115[1] + 1), *&v115[2], *(&v115[2] + 1), *&v115[3], *(&v115[3] + 1), *&v115[4], *(&v115[4] + 1), *&v115[5], *(&v115[5] + 1), *&v115[6], *(&v115[6] + 1), *&v115[7], *(&v115[7] + 1), *&v115[8], *(&v115[8] + 1), *&v115[9], *(&v115[9] + 1), *&v115[10], *(&v115[10] + 1), *__dst, *(__dst + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4]);
LABEL_40:
    OUTLINED_FUNCTION_10_32(v41, v42, v43, v44);
    v115[10] = v62;

    sub_26A638BC8(v115);
    v93 = v92;
    v8 = sub_26A84F038();
    v10 = &unk_28157E000;
    v9 = 0x2803A8000;
    if (v5)
    {
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  if (v1)
  {
    v8 = v1;
  }

  else
  {
    LODWORD(__dst[0]) = sub_26A84FEA8();
    v8 = sub_26A84F038();
  }

  if (v5)
  {
    v27 = v5;
  }

  else
  {
    LODWORD(__dst[0]) = sub_26A84FE98();
    v27 = sub_26A84F038();
  }

  if (v4)
  {
    v28 = 0.75;
  }

  else
  {
    v28 = 1.0;
  }

  v29 = qword_2803A90A8;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_4_44();
  }

LABEL_58:
  sub_26A4D7E54();
  v89 = *(type metadata accessor for ButtonItemButtonStyle.ButtonAppearance(0) + 32);
  v90 = sub_26A84EE68();
  __swift_storeEnumTagSinglePayload(v7 + v89, 1, 1, v90);
  *v7 = v8;
  *(v7 + 8) = v27;
  *(v7 + 16) = v28;
  OUTLINED_FUNCTION_86();
}

void sub_26A636528()
{
  OUTLINED_FUNCTION_85();
  LODWORD(v83) = v0;
  v76 = v1;
  v79 = v2;
  v86 = v4;
  v87 = v3;
  v6 = v5;
  v80 = v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1580);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  v10 = v74 - v9;
  v85 = sub_26A84EEE8();
  OUTLINED_FUNCTION_15();
  v81 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  v88 = v14 - v13;
  v15 = sub_26A850D48();
  OUTLINED_FUNCTION_15();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_41();
  v21 = v20 - v19;
  v22 = sub_26A84EE68();
  OUTLINED_FUNCTION_15();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_41();
  v28 = v27 - v26;
  v29 = *v6;
  (*(v24 + 104))(v27 - v26, *MEMORY[0x277CDF3C0], v22);
  v30 = sub_26A84EE58();
  v31 = *(v24 + 8);
  v78 = v22;
  v31(v28, v22);
  (*(v17 + 104))(v21, *MEMORY[0x277CE0EE0], v15);
  v32 = sub_26A850E98();
  sub_26A850E18();
  sub_26A850E68();

  v33 = v88;
  sub_26A84EED8();

  v34 = sub_26A636EF4();
  v77 = v32;
  v82 = sub_26A6370D8(v83 & 1, v30 & 1, v33, v32);
  v84 = sub_26A637310(v30 & 1, v33);
  v35 = v76;
  v36 = v79;
  v37 = v87;
  v38 = sub_26A637498(v76 & 1, v79 & 1, v87);
  v39 = v86;
  if (v86)
  {

    v40 = v39;
  }

  else if (v35)
  {

    v40 = v84;
  }

  else
  {
    MEMORY[0x26D6635D0](v34);
    sub_26A851588();
    sub_26A851598();
    sub_26A84F238();
    if (v30 & 1 | ((v83 & 1) == 0))
    {
      v41 = v85;
      (*(v81 + 16))(&v10[*(v75 + 36)], v88, v85);
      v42 = v93;
      *v10 = v92;
      *(v10 + 1) = v42;
      *(v10 + 4) = v94;
      sub_26A4D7DCC();
      v40 = sub_26A84F038();
      if (v29)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    v91[0] = v92;
    v91[1] = v93;
    *&v91[2] = v94;
    v40 = sub_26A84F038();
  }

  v41 = v85;
  if (v29)
  {
LABEL_14:
    if (v29 == 1)
    {
      if (qword_2803A90B0 != -1)
      {
        OUTLINED_FUNCTION_1_50();
      }

      v10 = v80;
      sub_26A4D7E54();
      v43 = v38;
      v45 = v40;
      v38 = v78;
      goto LABEL_41;
    }

    v74[1] = v38;
    if (v37)
    {
      v43 = v37;
      OUTLINED_FUNCTION_11_30();
      goto LABEL_36;
    }

    if (v35)
    {
      v46 = sub_26A84FEC8();
      OUTLINED_FUNCTION_24_17(v46);
      v10 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1590);
      OUTLINED_FUNCTION_8_40();
      sub_26A4D7DCC();
      v43 = sub_26A84F038();
      OUTLINED_FUNCTION_11_30();
      goto LABEL_36;
    }

    if (qword_2803A8AE8 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v48 = qword_2803D1B10;
    memcpy(v91, &unk_2803D1B20, sizeof(v91));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26A8570D0;
    if (qword_28157E758 != -1)
    {
      swift_once();
    }

    v50 = qword_281588968;
    *(inited + 32) = qword_281588968;
    v51 = byte_281588970;
    *(inited + 40) = byte_281588970;
    sub_26A4E324C(v50, v51);

    v53 = sub_26A58787C(v52);
    if (*(v48 + 16))
    {
      v54 = sub_26A548580(v53);
      v56 = v55;

      if (v56)
      {
        OUTLINED_FUNCTION_14_24();
        memcpy(v90, (v57 + v54 * v58), 0xB0uLL);
        sub_26A54DFFC(v90, v89);

        v59 = v90[10];
        v60 = *(&v90[9] + 1);
        v61 = *(&v90[8] + 8);
        v62 = *(&v90[7] + 8);
        v63 = *(&v90[6] + 8);
        v64 = *(&v90[5] + 8);
        v66 = v90[3];
        v65 = v90[4];
        v67 = v90[5];
        v69 = v90[1];
        v68 = v90[2];
        v70 = v90[0];
        goto LABEL_35;
      }
    }

    else
    {
    }

    sub_26A54DFFC(v91, v90);

    v59 = v91[10];
    v60 = *(&v91[9] + 1);
    v61 = *(&v91[8] + 8);
    v62 = *(&v91[7] + 8);
    v63 = *(&v91[6] + 8);
    v64 = *(&v91[5] + 8);
    v66 = v91[3];
    v65 = v91[4];
    v67 = v91[5];
    v69 = v91[1];
    v68 = v91[2];
    v70 = v91[0];
LABEL_35:
    v10 = v80;
    v38 = v78;
    v83 = v59;
    v90[0] = v70;
    v90[1] = v69;
    v90[2] = v68;
    v90[3] = v66;
    v90[4] = v65;
    LOBYTE(v90[5]) = v67;
    *(&v90[5] + 8) = v64;
    *(&v90[6] + 8) = v63;
    *(&v90[7] + 8) = v62;
    *(&v90[8] + 8) = v61;
    *(&v90[9] + 1) = v60;
    v90[10] = v59;

    sub_26A638BC8(v90);
    v89[0] = *(&v83 + 1);
    v43 = sub_26A84F038();
    v29 = v86;
    if (!v86)
    {

      goto LABEL_38;
    }

LABEL_36:
    v45 = v29;
LABEL_38:
    v71 = qword_2803A90B0;

    if (v71 != -1)
    {
      OUTLINED_FUNCTION_1_50();
    }

    sub_26A4D7E54();

    goto LABEL_41;
  }

LABEL_7:
  if (v37)
  {
    OUTLINED_FUNCTION_11_30();
    v43 = v87;
  }

  else
  {
    OUTLINED_FUNCTION_11_30();
    if (v35)
    {
      v44 = sub_26A84FEC8();
      OUTLINED_FUNCTION_24_17(v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1590);
      OUTLINED_FUNCTION_8_40();
      sub_26A4D7DCC();
    }

    else
    {
      LODWORD(v91[0]) = sub_26A84FEA8();
    }

    v43 = sub_26A84F038();
  }

  v47 = qword_2803A90A8;

  if (v47 != -1)
  {
    OUTLINED_FUNCTION_4_44();
  }

  sub_26A4D7E54();

  v41 = v85;
LABEL_41:
  if (v36)
  {
    v72 = 0.75;
  }

  else
  {
    v72 = 1.0;
  }

  (*(v81 + 8))(v88, v41);
  v73 = type metadata accessor for ButtonItemButtonStyle.ButtonAppearance(0);
  __swift_storeEnumTagSinglePayload(&v10[*(v73 + 32)], 1, 1, v38);
  *v10 = v43;
  *(v10 + 1) = v45;
  *(v10 + 2) = v72;
  OUTLINED_FUNCTION_86();
}

uint64_t sub_26A636EF4()
{
  v0 = sub_26A850D48();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE8A8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A8570F0;
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  *(v4 + 32) = sub_26A850E98();
  v6(v3, v5, v0);
  *(v4 + 40) = sub_26A850E98();
  return v4;
}

uint64_t sub_26A6370D8(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B15B0);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B15A0);
  MEMORY[0x28223BE20](v11);
  v13 = v20 - v12;
  if (a1)
  {
    if (a2)
    {
      v14 = sub_26A84FEC8();
      v15 = *(v11 + 36);
      v16 = sub_26A84EEE8();
      (*(*(v16 - 8) + 16))(&v13[v15], a3, v16);
      *v13 = v14;
      sub_26A4D7DCC();
    }

    else
    {
      v20[3] = sub_26A84FE98();
    }
  }

  else
  {
    v17 = *(v8 + 36);
    v18 = sub_26A84EEE8();
    (*(*(v18 - 8) + 16))(&v10[v17], a3, v18);
    *v10 = a4;
    sub_26A4D7DCC();
  }

  return sub_26A84F038();
}

uint64_t sub_26A637310(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B15A0);
  MEMORY[0x28223BE20](v4);
  v6 = v11 - v5;
  if (a1)
  {
    v7 = sub_26A84FE98();
    v8 = *(v4 + 36);
    v9 = sub_26A84EEE8();
    (*(*(v9 - 8) + 16))(&v6[v8], a2, v9);
    *v6 = v7;
  }

  else
  {
    v11[2] = sub_26A84FEB8();
    v11[3] = 1063675494;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1590);
  }

  sub_26A4D7DCC();
  return sub_26A84F038();
}

uint64_t sub_26A637498(char a1, char a2, uint64_t a3)
{
  if (a1)
  {
    sub_26A84FEC8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1590);
    sub_26A4D7DCC();
  }

  else if (a2)
  {
    sub_26A850E18();
    sub_26A850E68();
  }

  else if (a3)
  {
  }

  else
  {
    sub_26A850E18();
  }

  return sub_26A84F038();
}

uint64_t sub_26A63759C()
{
  result = _UISolariumEnabled();
  v1 = 12.0;
  if (result)
  {
    v1 = 18.0;
  }

  qword_2803B13E0 = *&v1;
  qword_2803B13E8 = sub_26A6375E4;
  unk_2803B13F0 = 0;
  return result;
}

uint64_t sub_26A6375E4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = sub_26A637C00(a5, a4, a2);
  if (v11)
  {
    if (v11 == 1)
    {
      if (!a3)
      {
        if ((a5 & 1) == 0)
        {
          if (qword_2803A8AE8 != -1)
          {
            swift_once();
          }

          v13 = qword_2803D1B10;
          memcpy(__dst, &unk_2803D1B20, 0xB0uLL);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_26A8570D0;
          if (qword_28157E770 != -1)
          {
            swift_once();
          }

          v15 = qword_281588988;
          *(v14 + 32) = qword_281588988;
          v16 = byte_281588990;
          *(v14 + 40) = byte_281588990;
          sub_26A4E324C(v15, v16);

          v18 = sub_26A58787C(v17);
          if (*(v13 + 16))
          {
            v19 = sub_26A548580(v18);
            v21 = v20;

            if (v21)
            {
              memcpy(v67, (*(v13 + 56) + 176 * v19), sizeof(v67));
              sub_26A54DFFC(v67, v66);

              v22 = v67[10];
              v23 = *(&v67[9] + 1);
              v24 = *(&v67[8] + 8);
              v25 = *(&v67[7] + 8);
              v26 = *(&v67[6] + 8);
              v27 = *(&v67[5] + 8);
              v29 = v67[3];
              v28 = v67[4];
              v30 = v67[5];
              v32 = v67[1];
              v31 = v67[2];
              v33 = v67[0];
LABEL_37:
              v64 = v22;
              v67[0] = v33;
              v67[1] = v32;
              v67[2] = v31;
              v67[3] = v29;
              v67[4] = v28;
              LOBYTE(v67[5]) = v30;
              *(&v67[5] + 8) = v27;
              *(&v67[6] + 8) = v26;
              *(&v67[7] + 8) = v25;
              *(&v67[8] + 8) = v24;
              *(&v67[9] + 1) = v23;
              v67[10] = v22;

              sub_26A638BC8(v67);
              v66[0] = v64;
              goto LABEL_41;
            }
          }

          else
          {
          }

          sub_26A54DFFC(__dst, v67);

          v22 = __dst[10];
          v23 = *(&__dst[9] + 1);
          v24 = *(&__dst[8] + 8);
          v25 = *(&__dst[7] + 8);
          v26 = *(&__dst[6] + 8);
          v27 = *(&__dst[5] + 8);
          v29 = __dst[3];
          v28 = __dst[4];
          v30 = __dst[5];
          v32 = __dst[1];
          v31 = __dst[2];
          v33 = __dst[0];
          goto LABEL_37;
        }

LABEL_19:
        LODWORD(__dst[0]) = sub_26A84FEC8();
LABEL_41:
        v35 = sub_26A84F038();
        goto LABEL_42;
      }

LABEL_15:
      v35 = a3;
LABEL_42:
      v59 = qword_2803A90B0;

      if (v59 != -1)
      {
        swift_once();
      }

      sub_26A4D7E54();
      v34 = v12;
      goto LABEL_45;
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (a5)
    {
      goto LABEL_19;
    }

    if (qword_2803A8AE8 != -1)
    {
      swift_once();
    }

    v38 = qword_2803D1B10;
    memcpy(__dst, &unk_2803D1B20, 0xB0uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_26A8570D0;
    if (qword_28157E770 != -1)
    {
      swift_once();
    }

    v40 = qword_281588988;
    *(v39 + 32) = qword_281588988;
    v41 = byte_281588990;
    *(v39 + 40) = byte_281588990;
    sub_26A4E324C(v40, v41);

    v43 = sub_26A58787C(v42);
    if (*(v38 + 16))
    {
      v44 = sub_26A548580(v43);
      v46 = v45;

      if (v46)
      {
        memcpy(v67, (*(v38 + 56) + 176 * v44), sizeof(v67));
        sub_26A54DFFC(v67, v66);

        v47 = v67[10];
        v48 = *(&v67[9] + 1);
        v49 = *(&v67[8] + 8);
        v50 = *(&v67[7] + 8);
        v51 = *(&v67[6] + 8);
        v52 = *(&v67[5] + 8);
        v54 = v67[3];
        v53 = v67[4];
        v55 = v67[5];
        v57 = v67[1];
        v56 = v67[2];
        v58 = v67[0];
LABEL_40:
        v65 = *(&v47 + 1);
        v67[0] = v58;
        v67[1] = v57;
        v67[2] = v56;
        v67[3] = v54;
        v67[4] = v53;
        LOBYTE(v67[5]) = v55;
        *(&v67[5] + 8) = v52;
        *(&v67[6] + 8) = v51;
        *(&v67[7] + 8) = v50;
        *(&v67[8] + 8) = v49;
        *(&v67[9] + 1) = v48;
        v67[10] = v47;

        sub_26A638BC8(v67);
        v66[0] = v65;
        goto LABEL_41;
      }
    }

    else
    {
    }

    sub_26A54DFFC(__dst, v67);

    v47 = __dst[10];
    v48 = *(&__dst[9] + 1);
    v49 = *(&__dst[8] + 8);
    v50 = *(&__dst[7] + 8);
    v51 = *(&__dst[6] + 8);
    v52 = *(&__dst[5] + 8);
    v54 = __dst[3];
    v53 = __dst[4];
    v55 = __dst[5];
    v57 = __dst[1];
    v56 = __dst[2];
    v58 = __dst[0];
    goto LABEL_40;
  }

  if (a2)
  {
    v34 = a2;
  }

  else
  {
    if (a5)
    {
      v36 = sub_26A84FEC8();
    }

    else
    {
      v36 = sub_26A84FEA8();
    }

    LODWORD(__dst[0]) = v36;
    v34 = sub_26A84F038();
  }

  if (a3)
  {
    v35 = a3;
  }

  else
  {
    LODWORD(__dst[0]) = sub_26A84FEC8();
    v35 = sub_26A84F038();
  }

  v37 = qword_2803A90A8;

  if (v37 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();

LABEL_45:
  if (a4)
  {
    v60 = 0.75;
  }

  else
  {
    v60 = 1.0;
  }

  v61 = *(type metadata accessor for ButtonItemButtonStyle.ButtonAppearance(0) + 32);
  v62 = sub_26A84EE68();
  result = __swift_storeEnumTagSinglePayload(a6 + v61, 1, 1, v62);
  *a6 = v34;
  *(a6 + 8) = v35;
  *(a6 + 16) = v60;
  return result;
}

uint64_t sub_26A637C00(char a1, char a2, uint64_t a3)
{
  if (a1)
  {
    sub_26A84FEC8();
  }

  else if (a2)
  {
    sub_26A850E18();
    sub_26A850E68();
  }

  else if (a3)
  {
  }

  else
  {
    sub_26A850E18();
  }

  return sub_26A84F038();
}

uint64_t sub_26A637CB0()
{
  type metadata accessor for ButtonItemButtonStyle(0);

  return sub_26A634828();
}

unint64_t sub_26A637D30()
{
  result = qword_2803B1400;
  if (!qword_2803B1400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B13F8);
    sub_26A637DBC();
    sub_26A637EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1400);
  }

  return result;
}

unint64_t sub_26A637DBC()
{
  result = qword_2803B1408;
  if (!qword_2803B1408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1410);
    sub_26A84FFA8();
    sub_26A84FCA8();
    sub_26A6384E4();
    sub_26A6384E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1408);
  }

  return result;
}

unint64_t sub_26A637EF8()
{
  result = qword_2803B1420;
  if (!qword_2803B1420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1428);
    sub_26A637F84();
    sub_26A638528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1420);
  }

  return result;
}

unint64_t sub_26A637F84()
{
  result = qword_2803B1430;
  if (!qword_2803B1430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1438);
    sub_26A63803C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1430);
  }

  return result;
}

unint64_t sub_26A63803C()
{
  result = qword_2803B1440;
  if (!qword_2803B1440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1448);
    sub_26A6380F4();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1440);
  }

  return result;
}

unint64_t sub_26A6380F4()
{
  result = qword_2803B1450;
  if (!qword_2803B1450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1458);
    sub_26A6381AC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1450);
  }

  return result;
}

unint64_t sub_26A6381AC()
{
  result = qword_2803B1460;
  if (!qword_2803B1460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1468);
    sub_26A638264();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1460);
  }

  return result;
}

unint64_t sub_26A638264()
{
  result = qword_2803B1470;
  if (!qword_2803B1470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1478);
    sub_26A63831C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1470);
  }

  return result;
}

unint64_t sub_26A63831C()
{
  result = qword_2803B1480;
  if (!qword_2803B1480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1488);
    sub_26A6383A8();
    sub_26A5C896C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1480);
  }

  return result;
}

unint64_t sub_26A6383A8()
{
  result = qword_2803B1490;
  if (!qword_2803B1490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1498);
    sub_26A84FFA8();
    sub_26A84F648();
    sub_26A6384E4();
    sub_26A6384E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1490);
  }

  return result;
}

unint64_t sub_26A6384E4()
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

unint64_t sub_26A638528()
{
  result = qword_2803B14E8;
  if (!qword_2803B14E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B14F0);
    sub_26A6385E0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B14E8);
  }

  return result;
}

unint64_t sub_26A6385E0()
{
  result = qword_2803B14F8;
  if (!qword_2803B14F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1500);
    sub_26A6380F4();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B14F8);
  }

  return result;
}

unint64_t sub_26A63869C()
{
  result = qword_2803B1518;
  if (!qword_2803B1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1518);
  }

  return result;
}

uint64_t sub_26A638734()
{
  sub_26A638DB0(319, &qword_2803B1530, MEMORY[0x277CDF6A8], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_26A638DB0(319, &qword_2803B3840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_26A638DB0(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_26A638E00(319, &qword_2803ADCF8, type metadata accessor for VRXVisualResponseLocation, MEMORY[0x277CDF468]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_26A638E00(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_26A638E00(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
        if (v10 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_26A638DB0(319, &qword_2803ADD00, &type metadata for ButtonViewConstants, type metadata accessor for EnvironmentConstant);
          v1 = v11;
          if (v12 <= 0x3F)
          {
            sub_26A638E00(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
            v1 = v13;
            if (v14 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for ButtonItemButtonStyle.Role(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26A638AB0()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A638B04()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A638B58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A638C3C()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

void sub_26A638CB8()
{
  sub_26A638DB0(319, &qword_2803B15D8, &type metadata for TextAppearance, type metadata accessor for EnvironmentDependent);
  if (v0 <= 0x3F)
  {
    sub_26A638E00(319, &qword_2803B15E0, MEMORY[0x277CDF3E0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A638DB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26A638E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_50()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_44()
{

  return swift_once();
}

void OUTLINED_FUNCTION_10_32(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *(v4 + 88) = a4;
  *(v4 + 104) = a3;
  *(v4 + 120) = a2;
  *(v4 + 136) = a1;
}

uint64_t OUTLINED_FUNCTION_17_16@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_26A49035C(v4, v5);
}

void OUTLINED_FUNCTION_22_18(double a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  *(v5 + 88) = a5;
  *(v5 + 104) = a4;
  *(v5 + 120) = a3;
  *(v5 + 136) = a2;
}

uint64_t OUTLINED_FUNCTION_24_17(uint64_t result)
{
  *(v1 + 544) = result;
  *(v1 + 548) = 1063675494;
  return result;
}

BOOL sub_26A638FE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A565064(v4);
  return v5 != 0;
}

void sub_26A6390B8()
{
  v1 = v0;
  v2 = [v0 button_1];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = [v0 text_1];
  if (!v4)
  {

LABEL_6:
    sub_26A4E353C();
    swift_allocError();
    *v9 = v0;
    *(v9 + 8) = &unk_287B13598;
    *(v9 + 16) = 0;
    swift_willThrow();
    v10 = v0;
    return;
  }

  v5 = v4;
  v41[3] = &type metadata for PartialText;
  v41[4] = &protocol witness table for PartialText;
  OUTLINED_FUNCTION_1_9();
  v41[0] = swift_allocObject();
  RFTextProperty.asPartialText()(v41[0] + 16);
  v42 = [v0 button_2];
  v6 = [v0 button_3];
  v7 = [v0 text_2];
  if (v7)
  {
    v8 = v7;
    *(&v39 + 1) = &type metadata for PartialText;
    v40 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v38 = swift_allocObject();
    RFTextProperty.asPartialText()(v38 + 16);
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
  }

  v11 = [v1 text_3];
  if (v11)
  {
    v12 = v11;
    *(&v36 + 1) = &type metadata for PartialText;
    v37 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v35 = swift_allocObject();
    RFTextProperty.asPartialText()(v35 + 16);
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
  }

  v13 = sub_26A6394FC(v1);
  if (v13)
  {
    sub_26A51B744(v13, v34);
    sub_26A54AAEC();
    v13 = sub_26A851248();
    v14 = &protocol witness table for AnyView;
    v15 = MEMORY[0x277CE11C8];
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v34[1] = 0;
    v34[2] = 0;
  }

  v34[0] = v13;
  v34[3] = v15;
  v34[4] = v14;
  v16 = [v1 text_5];
  if (v16)
  {
    v17 = v16;
    *(&v32 + 1) = &type metadata for PartialText;
    v33 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v31 = swift_allocObject();
    RFTextProperty.asPartialText()(v31 + 16);
  }

  else
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
  }

  v18 = [v1 thumbnail];
  if (v18)
  {
    v19 = v18;
    *(&v29 + 1) = sub_26A84BD28();
    v30 = &protocol witness table for VisualProperty;
    __swift_allocate_boxed_opaque_existential_1(&v28);
    RFVisualProperty.asVisualProperty()();
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
  }

  v20 = [v1 thumbnail2];
  if (v20)
  {
    v21 = v20;
    *(&v25 + 1) = sub_26A84BD28();
    v26 = &protocol witness table for VisualProperty;
    __swift_allocate_boxed_opaque_existential_1(&v24);
    RFVisualProperty.asVisualProperty()();
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
  }

  LOBYTE(v22) = [v1 buttonItemsAreBottom];
  FactItemButtonView.init(text1:buttonItem1:buttonItem2:buttonItem3:text2:text3:text4:text5:thumbnail:thumbnail2:buttonItemsAreBottom:)(v41, v3, v42, v6, &v38, &v35, v34, &v31, &v28, &v24, v22, v23, v24, *(&v24 + 1), v25, *(&v25 + 1), v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30);
}

unint64_t sub_26A6394A4()
{
  result = qword_2803B15E8;
  if (!qword_2803B15E8)
  {
    type metadata accessor for FactItemButtonView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B15E8);
  }

  return result;
}

uint64_t sub_26A6394FC(void *a1)
{
  v1 = [a1 text_4];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_26A5377B4();
  v3 = sub_26A851A98();

  return v3;
}

uint64_t sub_26A63955C()
{
  type metadata accessor for SummaryItemPairCompanionView.PairState(0);
  swift_allocObject();
  return sub_26A5BDFD4();
}

uint64_t sub_26A639594()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0 + *(type metadata accessor for SummaryItemPairNumberView() + 24);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v8, 0);
    (*(v3 + 8))(v6, v1);
    return v11[1];
  }

  return v8;
}

uint64_t sub_26A6396DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for SummaryItemPairNumberView();
  sub_26A4EF6D0();
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

uint64_t SummaryItemPairNumberView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v41[0] = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v41[2] = v9 - v10;
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
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9D18);
  v26 = OUTLINED_FUNCTION_79(v25);
  MEMORY[0x28223BE20](v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA950);
  v28 = OUTLINED_FUNCTION_79(v27);
  MEMORY[0x28223BE20](v28);
  v41[3] = v41 - v29;
  sub_26A84D2E8();
  v45 = 0u;
  v46 = 0u;
  v47 = 1;
  v41[1] = sub_26A639594();
  sub_26A6396DC(v18);
  v30 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v30);
  v42 = v1;
  v44 = v1;
  sub_26A4EF6D0();
  if (__swift_getEnumTagSinglePayload(v23, 1, v2) == 1)
  {
    sub_26A4D6FD8();
    v31 = type metadata accessor for ActionType();
    v32 = v13;
    v33 = 1;
  }

  else
  {
    v34 = *(v4 + 32);
    v35 = v41[0];
    v34(v41[0], v23, v2);
    v34(v13, v35, v2);
    v36 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    v32 = v13;
    v33 = 0;
    v31 = v36;
  }

  __swift_storeEnumTagSinglePayload(v32, v33, 1, v31);
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4CA264();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  v37 = sub_26A84D228();
  sub_26A4DEC28(v37);

  sub_26A4D6FD8();
  sub_26A84D238();

  v38 = v43;
  sub_26A4A52CC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B15F0);
  v40 = (v38 + *(result + 36));
  *v40 = 0xD00000000000001FLL;
  v40[1] = 0x800000026A88DA10;
  return result;
}

uint64_t sub_26A639DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9D30);
  MEMORY[0x28223BE20](v38);
  v31 = (v30 - v3);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A98E0);
  MEMORY[0x28223BE20](v35);
  v32 = v30 - v4;
  v5 = sub_26A84F3A8();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1648);
  MEMORY[0x28223BE20](v36);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1650);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A98C0);
  MEMORY[0x28223BE20](v9);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A98D0);
  MEMORY[0x28223BE20](v12);
  v14 = v30 - v13;
  v15 = sub_26A639594();
  if (sub_26A61B05C(v15, &unk_287B13068))
  {
    *v14 = sub_26A84FBF8();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1660);
    sub_26A63A5D4(&v14[*(v16 + 44)]);
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A4D7DCC();
    sub_26A4D48C0();
    sub_26A84FDF8();
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A4D4808();
    sub_26A4D7DCC();
    sub_26A84FDF8();
    sub_26A4D6FD8();
    return sub_26A4D6FD8();
  }

  v30[0] = v8;
  v30[1] = v12;
  v30[2] = v11;
  v30[3] = v9;
  sub_26A6396DC(v7);
  v17 = sub_26A84F388();
  (*(v33 + 8))(v7, v34);
  if (v17)
  {
    v18 = v32;
    sub_26A84D258();
    v19 = type metadata accessor for SummaryItemPairWatchView();
    sub_26A84D268();
    sub_26A84D278();
    v20 = v19[7];
    sub_26A84D2F8();
    v21 = sub_26A84B888();
    __swift_storeEnumTagSinglePayload(&v18[v20], 0, 1, v21);
    sub_26A84D288();
    sub_26A84D298();
    sub_26A84D208();
    v22 = v19[11];
    sub_26A84D308();
    __swift_storeEnumTagSinglePayload(&v18[v22], 0, 1, v21);
    sub_26A84D2A8();
    sub_26A84D2B8();
    sub_26A84D218();
    sub_26A84D2D8();
    __swift_storeEnumTagSinglePayload(&v18[v19[16]], 1, 1, v21);
    type metadata accessor for SummaryItemPairNumberView();
    type metadata accessor for SummaryItemPairCompanionView.PairState(0);
    sub_26A63C664();
    v23 = sub_26A84EEF8();
    v24 = sub_26A84EB78();
    v25 = &v18[*(v35 + 36)];
    *v25 = v24;
    v25[1] = v23;
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A4D7DCC();
    sub_26A4D48C0();
    sub_26A84FDF8();
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A4D4808();
    sub_26A4D7DCC();
    sub_26A84FDF8();
    sub_26A4D6FD8();
    return sub_26A4D6FD8();
  }

  v27 = sub_26A84FBF8();
  v28 = v31;
  *v31 = v27;
  v28[1] = 0x4014000000000000;
  *(v28 + 16) = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1658);
  sub_26A63A774(a1, v28 + *(v29 + 44));
  sub_26A4EF6D0();
  swift_storeEnumTagMultiPayload();
  sub_26A4D4808();
  sub_26A4D7DCC();
  sub_26A84FDF8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A63A5D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84B888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_26A84D258();
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_26A4D6FD8();
    v9 = 1;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    TextPropertyView.init(_:)(v5, a1);
    (*(v3 + 8))(v8, v2);
    v9 = 0;
  }

  v10 = type metadata accessor for TextPropertyView();
  return __swift_storeEnumTagSinglePayload(a1, v9, 1, v10);
}

uint64_t sub_26A63A774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1668);
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SummaryItemPairTitleView();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  sub_26A84D258();
  sub_26A84D268();
  sub_26A84D278();
  *v7 = sub_26A84FA78();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1670);
  sub_26A63A974(a1, &v7[*(v14 + 44)]);
  sub_26A63C6A8(v13, v10);
  sub_26A4EF6D0();
  sub_26A63C6A8(v10, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1678);
  sub_26A4EF6D0();
  sub_26A4D6FD8();
  sub_26A63C70C(v13);
  sub_26A4D6FD8();
  return sub_26A63C70C(v10);
}

uint64_t sub_26A63A974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1680) - 8;
  MEMORY[0x28223BE20](v50);
  v53 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1688);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v45 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  sub_26A84D208();
  v18 = type metadata accessor for SummaryItemPairCompanionView(0);
  v19 = v18[5];
  v49 = sub_26A84B888();
  __swift_storeEnumTagSinglePayload(&v17[v19], 1, 1, v49);
  sub_26A84D288();
  sub_26A84D298();
  v20 = &v17[v18[8]];
  type metadata accessor for SummaryItemPairCompanionView.PairState(0);
  sub_26A63C664();
  *v20 = sub_26A84F678();
  v20[1] = v21;
  v22 = &v17[v18[9]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = a1 + *(type metadata accessor for SummaryItemPairNumberView() + 20);
  v24 = *v23;
  v47 = *(v23 + 8);
  v48 = v24;
  v46 = *(v23 + 16);
  v25 = sub_26A84EEF8();
  v26 = sub_26A84EB78();
  v27 = &v17[*(v8 + 44)];
  *v27 = v26;
  v27[1] = v25;
  *v6 = sub_26A84FBF8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1690);
  sub_26A63AE88(a1, &v6[*(v28 + 44)]);
  LOBYTE(v22) = sub_26A850238();
  sub_26A84ED48();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1698) + 36)];
  *v37 = v22;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  *&v6[*(v50 + 44)] = 0x3FF0000000000000;
  v45 = v6;
  sub_26A84D218();
  __swift_storeEnumTagSinglePayload(&v14[v18[5]], 1, 1, v49);
  sub_26A84D2A8();
  sub_26A84D2B8();
  v38 = &v14[v18[8]];
  *v38 = sub_26A84F678();
  v38[1] = v39;
  v40 = &v14[v18[9]];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  v41 = sub_26A84EEF8();
  v42 = sub_26A84EB78();
  v43 = &v14[*(v8 + 44)];
  *v43 = v42;
  v43[1] = v41;
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B16A0);
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A63AE88@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v57 - v4;
  v57 = type metadata accessor for TextPropertyView();
  MEMORY[0x28223BE20](v57);
  v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD360);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v57 - v10;
  MEMORY[0x28223BE20](v11);
  v64 = &v57 - v12;
  v13 = sub_26A850058();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B16A8);
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B16B0);
  v59 = *(v20 - 8);
  v60 = v20;
  MEMORY[0x28223BE20](v20);
  v62 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - v23;
  *v19 = sub_26A84FA78();
  *(v19 + 1) = 0x4014000000000000;
  v19[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B16B8);
  sub_26A63B610(a1, &v19[*(v25 + 44)]);
  sub_26A850038();
  sub_26A4D7DCC();
  v61 = v24;
  v26 = v5;
  sub_26A850B48();
  (*(v14 + 8))(v16, v13);
  sub_26A4D6FD8();
  sub_26A84D2D8();
  v27 = sub_26A84B888();
  if (__swift_getEnumTagSinglePayload(v5, 1, v27) == 1)
  {
    sub_26A4D6FD8();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD378);
    v29 = v63;
    v30 = v63;
    v31 = 1;
  }

  else
  {
    v32 = *(v27 - 8);
    v33 = v58;
    (*(v32 + 16))(v58, v5, v27);
    v34 = v57;
    v35 = v33 + *(v57 + 20);
    *v35 = swift_getKeyPath();
    *(v35 + 8) = 0;
    v36 = v34[6];
    *(v33 + v36) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
    swift_storeEnumTagMultiPayload();
    v37 = v33 + v34[7];
    *v37 = swift_getKeyPath();
    *(v37 + 8) = 0;
    v38 = v33 + v34[8];
    *v38 = swift_getKeyPath();
    *(v38 + 8) = 0;
    *(v38 + 16) = 0;
    *(v38 + 24) = swift_getKeyPath();
    *(v38 + 32) = 0;
    v39 = type metadata accessor for ActionHandler(0);
    v40 = v39[6];
    *(v38 + v40) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v41 = v38 + v39[7];
    *v41 = swift_getKeyPath();
    *(v41 + 8) = 0;
    *(v41 + 16) = 0;
    v42 = v38 + v39[8];
    *v42 = swift_getKeyPath();
    *(v42 + 8) = 0;
    v43 = v38 + v39[9];
    *v43 = swift_getKeyPath();
    *(v43 + 8) = 0;
    v44 = v38 + v39[10];
    *v44 = swift_getKeyPath();
    *(v44 + 9) = 0;
    swift_unknownObjectWeakInit();
    v45 = v39[11];
    v46 = type metadata accessor for StandardActionHandler(0);
    __swift_storeEnumTagSinglePayload(v38 + v45, 1, 1, v46);
    sub_26A4D6FD8();
    __swift_storeEnumTagSinglePayload(v38 + v45, 1, 1, v46);
    (*(v32 + 8))(v26, v27);
    v47 = sub_26A8502F8();
    KeyPath = swift_getKeyPath();
    v29 = v63;
    sub_26A592070(v33, v63);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD378);
    v49 = (v29 + *(v28 + 36));
    *v49 = KeyPath;
    v49[1] = v47;
    v30 = v29;
    v31 = 0;
  }

  __swift_storeEnumTagSinglePayload(v30, v31, 1, v28);
  sub_26A5629D8(v29, v64);
  v50 = v59;
  v51 = v60;
  v52 = *(v59 + 16);
  v53 = v61;
  v54 = v62;
  v52(v62, v61, v60);
  sub_26A4EF6D0();
  v52(v66, v54, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B16C8);
  sub_26A4EF6D0();
  sub_26A4D6FD8();
  v55 = *(v50 + 8);
  v55(v53, v51);
  sub_26A4D6FD8();
  return (v55)(v54, v51);
}

uint64_t sub_26A63B610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD378);
  MEMORY[0x28223BE20](v97);
  v104 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v105 = &v90 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v94 = &v90 - v9;
  v10 = type metadata accessor for TextPropertyView();
  MEMORY[0x28223BE20](v10);
  v93 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD360);
  MEMORY[0x28223BE20](v12 - 8);
  v102 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v95 = &v90 - v15;
  MEMORY[0x28223BE20](v16);
  v106 = &v90 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B16D0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v101 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v90 - v22;
  sub_26A84D2F8();
  v24 = &v23[v10[5]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v10[6];
  *&v23[v25] = swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v27 = &v23[v10[7]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = &v23[v10[8]];
  *v28 = swift_getKeyPath();
  *(v28 + 1) = 0;
  v28[16] = 0;
  *(v28 + 3) = swift_getKeyPath();
  v28[32] = 0;
  v29 = type metadata accessor for ActionHandler(0);
  v30 = v29[6];
  *&v28[v30] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v31 = &v28[v29[7]];
  *v31 = swift_getKeyPath();
  *(v31 + 1) = 0;
  v31[16] = 0;
  v32 = &v28[v29[8]];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = &v28[v29[9]];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = &v28[v29[10]];
  *v34 = swift_getKeyPath();
  v34[9] = 0;
  swift_unknownObjectWeakInit();
  v35 = v29[11];
  v36 = type metadata accessor for StandardActionHandler(0);
  __swift_storeEnumTagSinglePayload(&v28[v35], 1, 1, v36);
  sub_26A4D6FD8();
  __swift_storeEnumTagSinglePayload(&v28[v35], 1, 1, v36);
  KeyPath = swift_getKeyPath();
  v38 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE58) + 36)];
  *v38 = KeyPath;
  *(v38 + 1) = 1;
  v38[16] = 0;
  v39 = sub_26A850328();
  v40 = swift_getKeyPath();
  v41 = *(v19 + 44);
  v99 = a1;
  v100 = v23;
  v42 = &v23[v41];
  v43 = v94;
  *v42 = v40;
  v42[1] = v39;
  sub_26A84D2C8();
  v44 = sub_26A84B888();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v44);
  v98 = v26;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4D6FD8();
    v46 = 1;
    v47 = v97;
    v48 = v36;
    v49 = v95;
  }

  else
  {
    v50 = *(v44 - 8);
    v51 = v93;
    (*(v50 + 16))(v93, v43, v44);
    v52 = &v51[v10[5]];
    *v52 = swift_getKeyPath();
    v52[8] = 0;
    v53 = v10[6];
    *&v51[v53] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v54 = &v51[v10[7]];
    *v54 = swift_getKeyPath();
    v54[8] = 0;
    v55 = &v51[v10[8]];
    *v55 = swift_getKeyPath();
    *(v55 + 1) = 0;
    v55[16] = 0;
    *(v55 + 3) = swift_getKeyPath();
    v55[32] = 0;
    v56 = v29[6];
    *&v55[v56] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v57 = &v55[v29[7]];
    *v57 = swift_getKeyPath();
    *(v57 + 1) = 0;
    v57[16] = 0;
    v58 = &v55[v29[8]];
    *v58 = swift_getKeyPath();
    v58[8] = 0;
    v59 = &v55[v29[9]];
    *v59 = swift_getKeyPath();
    v59[8] = 0;
    v60 = &v55[v29[10]];
    *v60 = swift_getKeyPath();
    v60[9] = 0;
    swift_unknownObjectWeakInit();
    v61 = v29[11];
    __swift_storeEnumTagSinglePayload(&v55[v61], 1, 1, v36);
    sub_26A4D6FD8();
    __swift_storeEnumTagSinglePayload(&v55[v61], 1, 1, v36);
    (*(v50 + 8))(v43, v44);
    v62 = sub_26A850328();
    v63 = swift_getKeyPath();
    v64 = v51;
    v49 = v95;
    sub_26A592070(v64, v95);
    v46 = 0;
    v47 = v97;
    v65 = (v49 + *(v97 + 36));
    *v65 = v63;
    v65[1] = v62;
    v48 = v36;
  }

  __swift_storeEnumTagSinglePayload(v49, v46, 1, v47);
  sub_26A5629D8(v49, v106);
  v66 = v96;
  sub_26A84D2C8();
  v67 = __swift_getEnumTagSinglePayload(v66, 1, v44);
  sub_26A4D6FD8();
  if (v67 == 1)
  {
    v68 = sub_26A850DF8();
    sub_26A851448();
    sub_26A84F028();
    v95 = v108;
    v96 = v107;
    v93 = v110;
    v94 = v109;
    v92 = v111;
    v91 = v112;
    v97 = v68;
  }

  else
  {
    v96 = 0;
    v97 = 0;
    v94 = 0;
    v95 = 0;
    v92 = 0;
    v93 = 0;
    v91 = 0;
  }

  v69 = v105;
  sub_26A84D308();
  v70 = &v69[v10[5]];
  *v70 = swift_getKeyPath();
  v70[8] = 0;
  v71 = v10[6];
  *&v69[v71] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v72 = &v69[v10[7]];
  *v72 = swift_getKeyPath();
  v72[8] = 0;
  v73 = &v69[v10[8]];
  *v73 = swift_getKeyPath();
  *(v73 + 1) = 0;
  v73[16] = 0;
  *(v73 + 3) = swift_getKeyPath();
  v73[32] = 0;
  v74 = v29[6];
  *&v73[v74] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v75 = &v73[v29[7]];
  *v75 = swift_getKeyPath();
  *(v75 + 1) = 0;
  v75[16] = 0;
  v76 = &v73[v29[8]];
  *v76 = swift_getKeyPath();
  v76[8] = 0;
  v77 = &v73[v29[9]];
  *v77 = swift_getKeyPath();
  v77[8] = 0;
  v78 = &v73[v29[10]];
  *v78 = swift_getKeyPath();
  v78[9] = 0;
  swift_unknownObjectWeakInit();
  v79 = v29[11];
  __swift_storeEnumTagSinglePayload(&v73[v79], 1, 1, v48);
  sub_26A4D6FD8();
  __swift_storeEnumTagSinglePayload(&v73[v79], 1, 1, v48);
  v80 = sub_26A850328();
  v81 = swift_getKeyPath();
  v82 = &v69[*(v47 + 36)];
  *v82 = v81;
  v82[1] = v80;
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  v83 = v103;
  sub_26A4EF6D0();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B16D8);
  sub_26A4EF6D0();
  v85 = (v83 + *(v84 + 64));
  v86 = v96;
  *v85 = v97;
  v85[1] = v86;
  v87 = v94;
  v85[2] = v95;
  v85[3] = v87;
  v88 = v92;
  v85[4] = v93;
  v85[5] = v88;
  v85[6] = v91;
  sub_26A4EF6D0();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();

  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t type metadata accessor for SummaryItemPairNumberView()
{
  result = qword_2803B1600;
  if (!qword_2803B1600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26A63C1F8(uint64_t a1)
{
  result = sub_26A63C664();
  *(a1 + 8) = result;
  return result;
}

void sub_26A63C294()
{
  sub_26A84D318();
  if (v0 <= 0x3F)
  {
    sub_26A63C380();
    if (v1 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
      if (v2 <= 0x3F)
      {
        sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A63C380()
{
  if (!qword_2803B1610)
  {
    type metadata accessor for SummaryItemPairCompanionView.PairState(255);
    sub_26A63C664();
    v0 = sub_26A84EF08();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B1610);
    }
  }
}

unint64_t sub_26A63C414()
{
  result = qword_2803B1618;
  if (!qword_2803B1618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B15F0);
    sub_26A63C4A0();
    sub_26A63C610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1618);
  }

  return result;
}

unint64_t sub_26A63C4A0()
{
  result = qword_2803B1620;
  if (!qword_2803B1620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA950);
    sub_26A63C558();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1620);
  }

  return result;
}

unint64_t sub_26A63C558()
{
  result = qword_2803B1628;
  if (!qword_2803B1628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA948);
    sub_26A4D7DCC();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1628);
  }

  return result;
}

unint64_t sub_26A63C610()
{
  result = qword_2803B1638;
  if (!qword_2803B1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1638);
  }

  return result;
}

unint64_t sub_26A63C664()
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

uint64_t sub_26A63C6A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemPairTitleView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A63C70C(uint64_t a1)
{
  v2 = type metadata accessor for SummaryItemPairTitleView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A63C768()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B16E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  sub_26A63CB70();
  sub_26A84F998();
  v3 = sub_26A84E288();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_26A4E2544(v2, &qword_2803B16E0);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  else
  {
    *(&v11 + 1) = v3;
    OUTLINED_FUNCTION_0_51();
    v12 = sub_26A63CBC4(v4, v5);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10);
    (*(*(v3 - 8) + 32))(boxed_opaque_existential_1, v2, v3);
  }

  sub_26A84B2B8();
  OUTLINED_FUNCTION_1_51();
  sub_26A63CBC4(v7, v8);
  return sub_26A84C988();
}

uint64_t sub_26A63C8F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B16E0);
  MEMORY[0x28223BE20](v5 - 8);
  sub_26A63CB00(a1, v4);
  v6 = sub_26A84B2B8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    sub_26A4E2544(v4, &qword_2803AF0C0);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  else
  {
    *(&v14 + 1) = v6;
    OUTLINED_FUNCTION_1_51();
    v15 = sub_26A63CBC4(v7, v8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
    (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v4, v6);
  }

  sub_26A84E288();
  OUTLINED_FUNCTION_0_51();
  sub_26A63CBC4(v10, v11);
  sub_26A84C988();
  sub_26A63CB70();
  sub_26A84F9A8();
  return sub_26A4E2544(a1, &qword_2803AF0C0);
}

uint64_t sub_26A63CB00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A63CB70()
{
  result = qword_2803B16F0;
  if (!qword_2803B16F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B16F0);
  }

  return result;
}

uint64_t sub_26A63CBC4(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *_s7ProcessOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26A63CD18()
{
  v0 = [swift_getObjCClassFromMetadata() processInfo];
  v1 = [v0 processName];

  sub_26A8517B8();

  return sub_26A63CE30();
}

unint64_t sub_26A63CDA4(char a1)
{
  result = 0x6867696C746F7053;
  switch(a1)
  {
    case 1:
      result = 1769105747;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6153656C69626F4DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26A63CE30()
{
  v0 = sub_26A8524B8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26A63CEA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A63CE30();
  *a1 = result;
  return result;
}

unint64_t sub_26A63CED0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26A63CDA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t type metadata accessor for ResolvedTableLayout()
{
  result = qword_2803B16F8;
  if (!qword_2803B16F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A63CF74()
{
  result = sub_26A84ACC8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RowVerticalAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A63D0FC()
{
  result = qword_2803B1708;
  if (!qword_2803B1708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1708);
  }

  return result;
}

uint64_t sub_26A63D150(char a1)
{
  switch(a1)
  {
    case 1:
      result = sub_26A84FA78();
      break;
    case 2:
      result = sub_26A84FA68();
      break;
    case 3:
      result = sub_26A84FA38();
      break;
    case 4:
      result = sub_26A84FA28();
      break;
    case 5:
      result = MEMORY[0x282131B48]();
      break;
    default:
      result = sub_26A84FA58();
      break;
  }

  return result;
}

uint64_t HeroHeaderView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A84ADD8();
  OUTLINED_FUNCTION_46();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t HeroHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v36[2] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1710);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v36 - v5;
  v7 = sub_26A84BD28();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA938);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v36 - v13;
  sub_26A84ADC8();
  (*(v8 + 16))(v14, v10, v7);
  v15 = type metadata accessor for VisualPropertyView();
  v16 = &v14[v15[5]];
  *v16 = swift_getKeyPath();
  v16[9] = 0;
  swift_unknownObjectWeakInit();
  v17 = &v14[v15[6]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = &v14[v15[7]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = v15[8];
  *&v14[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v20 = &v14[v15[9]];
  v37 = 0;
  sub_26A851048();
  (*(v8 + 8))(v10, v7);
  v21 = *(&v38 + 1);
  *v20 = v38;
  *(v20 + 1) = v21;
  v22 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1718) + 36)];
  *v22 = 0;
  *(v22 + 4) = 257;
  sub_26A851438();
  sub_26A84F028();
  v23 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1720) + 36)];
  v24 = v39;
  *v23 = v38;
  *(v23 + 1) = v24;
  *(v23 + 2) = v40;
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1728) + 36)] = 0;
  v36[0] = sub_26A851448();
  v26 = v25;
  v27 = &v14[*(v12 + 44)];
  *v27 = sub_26A84FBF8();
  *(v27 + 1) = 0;
  v27[16] = 1;
  v28 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1730) + 44)];
  *v6 = sub_26A84FA78();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v29 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1738) + 44)];
  *v29 = sub_26A84FC08();
  *(v29 + 1) = 0;
  v29[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1740);
  sub_26A63D6C0(&v29[*(v30 + 44)]);
  LOBYTE(v20) = sub_26A850248();
  v31 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1748) + 36)];
  *v31 = v20;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  v31[40] = 1;
  sub_26A4DBD68(v6, v3, &qword_2803B1710);
  *v28 = 0;
  v28[8] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1750);
  sub_26A4DBD68(v3, &v28[*(v32 + 48)], &qword_2803B1710);
  sub_26A4DBD10(v6, &qword_2803B1710);
  sub_26A4DBD10(v3, &qword_2803B1710);
  v33 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1758) + 36)];
  *v33 = v36[0];
  *(v33 + 1) = v26;
  v34 = sub_26A84AD88();
  sub_26A4DED10(v34);

  return sub_26A4DBD10(v14, &qword_2803AA938);
}

uint64_t sub_26A63D6C0@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  MEMORY[0x28223BE20](v1 - 8);
  v86 = &v73 - v2;
  v3 = type metadata accessor for TextPropertyView();
  MEMORY[0x28223BE20](v3);
  v80 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B17B0);
  MEMORY[0x28223BE20](v75);
  v79 = &v73 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B17B8);
  MEMORY[0x28223BE20](v78);
  v77 = &v73 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B17C0);
  MEMORY[0x28223BE20](v74);
  v76 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B17C8);
  MEMORY[0x28223BE20](v8 - 8);
  v84 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v81 = &v73 - v11;
  MEMORY[0x28223BE20](v12);
  v83 = &v73 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B17D0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v82 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v73 - v18;
  sub_26A84ADA8();
  v20 = &v19[v3[5]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = v3[6];
  *&v19[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v22 = &v19[v3[7]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = &v19[v3[8]];
  *v23 = swift_getKeyPath();
  *(v23 + 1) = 0;
  v23[16] = 0;
  *(v23 + 3) = swift_getKeyPath();
  v23[32] = 0;
  v24 = type metadata accessor for ActionHandler(0);
  v25 = v24[6];
  *&v23[v25] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v26 = &v23[v24[7]];
  *v26 = swift_getKeyPath();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v27 = &v23[v24[8]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = &v23[v24[9]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = &v23[v24[10]];
  *v29 = swift_getKeyPath();
  v29[9] = 0;
  swift_unknownObjectWeakInit();
  v30 = v24[11];
  v31 = type metadata accessor for StandardActionHandler(0);
  __swift_storeEnumTagSinglePayload(&v23[v30], 1, 1, v31);
  sub_26A4DBD10(&v23[v30], &qword_2803B3910);
  __swift_storeEnumTagSinglePayload(&v23[v30], 1, 1, v31);
  KeyPath = swift_getKeyPath();
  v33 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE58) + 36)];
  *v33 = KeyPath;
  *(v33 + 1) = 1;
  v33[16] = 0;
  LODWORD(KeyPath) = sub_26A84FEA8();
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B17D8) + 36)] = KeyPath;
  sub_26A850328();
  v34 = sub_26A850308();

  v35 = swift_getKeyPath();
  v36 = *(v15 + 44);
  v37 = v86;
  v38 = &v19[v36];
  *v38 = v35;
  v38[1] = v34;
  sub_26A84ADB8();
  v39 = sub_26A84B888();
  if (__swift_getEnumTagSinglePayload(v37, 1, v39) == 1)
  {
    sub_26A4DBD10(v37, &qword_2803AA838);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B17E0);
    v41 = v81;
    v42 = v81;
    v43 = 1;
  }

  else
  {
    v73 = *(v39 - 8);
    v44 = v80;
    (*(v73 + 16))(v80, v37, v39);
    v45 = v44 + v3[5];
    *v45 = swift_getKeyPath();
    *(v45 + 8) = 0;
    v46 = v3[6];
    *(v44 + v46) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v47 = v44 + v3[7];
    *v47 = swift_getKeyPath();
    *(v47 + 8) = 0;
    v48 = v44 + v3[8];
    *v48 = swift_getKeyPath();
    *(v48 + 8) = 0;
    *(v48 + 16) = 0;
    *(v48 + 24) = swift_getKeyPath();
    *(v48 + 32) = 0;
    v49 = v24[6];
    *(v48 + v49) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v50 = v48 + v24[7];
    *v50 = swift_getKeyPath();
    *(v50 + 8) = 0;
    *(v50 + 16) = 0;
    v51 = v48 + v24[8];
    *v51 = swift_getKeyPath();
    *(v51 + 8) = 0;
    v52 = v48 + v24[9];
    *v52 = swift_getKeyPath();
    *(v52 + 8) = 0;
    v53 = v48 + v24[10];
    *v53 = swift_getKeyPath();
    *(v53 + 9) = 0;
    swift_unknownObjectWeakInit();
    v54 = v24[11];
    __swift_storeEnumTagSinglePayload(v48 + v54, 1, 1, v31);
    sub_26A4DBD10(v48 + v54, &qword_2803B3910);
    __swift_storeEnumTagSinglePayload(v48 + v54, 1, 1, v31);
    (*(v73 + 8))(v86, v39);
    v55 = v79;
    sub_26A592070(v44, v79);
    *(v55 + *(v75 + 36)) = 0x3FECCCCCCCCCCCCDLL;
    v56 = sub_26A850D98();
    v57 = swift_getKeyPath();
    v58 = v55;
    v59 = v77;
    sub_26A4DBDB4(v58, v77, &qword_2803B17B0);
    v60 = (v59 + *(v78 + 36));
    *v60 = v57;
    v60[1] = v56;
    LODWORD(v56) = sub_26A84FED8();
    v61 = v59;
    v62 = v76;
    sub_26A4DBDB4(v61, v76, &qword_2803B17B8);
    *(v62 + *(v74 + 36)) = v56;
    v63 = sub_26A8502D8();
    v64 = swift_getKeyPath();
    v65 = v62;
    v41 = v81;
    sub_26A4DBDB4(v65, v81, &qword_2803B17C0);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B17E0);
    v66 = (v41 + *(v40 + 36));
    *v66 = v64;
    v66[1] = v63;
    v42 = v41;
    v43 = 0;
  }

  __swift_storeEnumTagSinglePayload(v42, v43, 1, v40);
  v67 = v83;
  sub_26A4DBDB4(v41, v83, &qword_2803B17C8);
  v68 = v82;
  sub_26A4DBD68(v19, v82, &qword_2803B17D0);
  v69 = v84;
  sub_26A4DBD68(v67, v84, &qword_2803B17C8);
  v70 = v85;
  sub_26A4DBD68(v68, v85, &qword_2803B17D0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B17E8);
  sub_26A4DBD68(v69, v70 + *(v71 + 48), &qword_2803B17C8);
  sub_26A4DBD10(v67, &qword_2803B17C8);
  sub_26A4DBD10(v19, &qword_2803B17D0);
  sub_26A4DBD10(v69, &qword_2803B17C8);
  return sub_26A4DBD10(v68, &qword_2803B17D0);
}

uint64_t type metadata accessor for HeroHeaderView()
{
  result = qword_2803B1768;
  if (!qword_2803B1768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A63E10C(uint64_t a1)
{
  result = sub_26A63E5F4(&qword_2803B1760, MEMORY[0x277D62868]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A63E18C()
{
  result = sub_26A84ADD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26A63E1F8()
{
  result = qword_2803B1778;
  if (!qword_2803B1778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA940);
    sub_26A63E2B0();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1778);
  }

  return result;
}

unint64_t sub_26A63E2B0()
{
  result = qword_2803B1780;
  if (!qword_2803B1780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA930);
    sub_26A63E33C();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1780);
  }

  return result;
}

unint64_t sub_26A63E33C()
{
  result = qword_2803B1788;
  if (!qword_2803B1788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA938);
    sub_26A63E3F4();
    sub_26A4DBCC8(&qword_2803B17A8, &qword_2803B1758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1788);
  }

  return result;
}

unint64_t sub_26A63E3F4()
{
  result = qword_2803B1790;
  if (!qword_2803B1790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1728);
    sub_26A63E4AC();
    sub_26A4DBCC8(&unk_28157FE90, &qword_2803B0200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1790);
  }

  return result;
}

unint64_t sub_26A63E4AC()
{
  result = qword_2803B1798;
  if (!qword_2803B1798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1720);
    sub_26A63E538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1798);
  }

  return result;
}

unint64_t sub_26A63E538()
{
  result = qword_2803B17A0;
  if (!qword_2803B17A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1718);
    sub_26A63E5F4(&qword_28157E9E0, type metadata accessor for VisualPropertyView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B17A0);
  }

  return result;
}

uint64_t sub_26A63E5F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_52()
{

  return sub_26A84ADD8();
}

uint64_t type metadata accessor for ReferenceConstants()
{
  result = qword_2803B17F0;
  if (!qword_2803B17F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A63E6D0()
{
  result = sub_26A84B1D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A63E750()
{
  v0 = type metadata accessor for ReferenceConstants();
  MEMORY[0x28223BE20](v0);
  v57 = (&v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE40);
  __swift_allocate_value_buffer(v2, qword_2803D1E30);
  v56 = __swift_project_value_buffer(v2, qword_2803D1E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1800);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1808);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v59 = *(*(v3 - 8) + 72);
  v5 = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26A86D390;
  v55 = v6;
  v7 = (v6 + v4);
  v8 = (v6 + v4 + *(v5 + 48));
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v10 = qword_281588978;
  *(inited + 32) = qword_281588978;
  v11 = byte_281588980;
  *(inited + 40) = byte_281588980;
  *(inited + 48) = 1;
  *(inited + 56) = 11;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(inited);
  *v7 = v12;
  v64 = xmmword_26A860600;
  v65 = xmmword_26A86D3A0;
  *v8 = xmmword_26A860600;
  *(v8 + 1) = xmmword_26A86D3A0;
  v13 = *(v0 + 32);
  HIDWORD(v51) = *MEMORY[0x277D62B18];
  v14 = HIDWORD(v51);
  v15 = sub_26A84B1D8();
  v16 = *(*(v15 - 8) + 104);
  v16(&v8[v13], v14, v15);
  v17 = v59;
  v18 = *(v5 + 48);
  v52 = v5;
  v19 = (v7 + v59 + v18);
  v20 = swift_initStackObject();
  v62 = xmmword_26A8570D0;
  *(v20 + 16) = xmmword_26A8570D0;
  OUTLINED_FUNCTION_0_52(&qword_281588978);
  *(v7 + v17) = v21;
  v22 = v65;
  *v19 = v64;
  v19[1] = v22;
  v60 = v16;
  v61 = v0;
  v23 = *(v0 + 32);
  v24 = HIDWORD(v51);
  v58 = v15;
  v16(v19 + v23, HIDWORD(v51), v15);
  v25 = (v7 + 2 * v17);
  v26 = v52;
  v27 = (v25 + *(v52 + 48));
  *(swift_initStackObject() + 16) = v62;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_52(&qword_281588968);
  *v25 = v28;
  v29 = v65;
  *v27 = v64;
  v27[1] = v29;
  v60(v27 + *(v61 + 32), v24, v58);
  v54 = v7;
  v30 = (v7 + 3 * v17);
  v31 = (v30 + *(v26 + 48));
  *(swift_initStackObject() + 16) = v62;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_52(&qword_281588998);
  *v30 = v32;
  v53 = xmmword_26A86D3B0;
  v33 = v65;
  *v31 = xmmword_26A86D3B0;
  v31[1] = v33;
  v34 = v60;
  v35 = OUTLINED_FUNCTION_1_52();
  v34(v35);
  v36 = *(v26 + 48);
  v37 = swift_initStackObject();
  *(v37 + 16) = v62;
  v38 = v34;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v39 = (v54 + 4 * v59);
  v40 = (v39 + v36);
  v41 = qword_281588938;
  *(v37 + 32) = qword_281588938;
  v42 = byte_281588940;
  *(v37 + 40) = byte_281588940;
  sub_26A4E324C(v41, v42);
  sub_26A621A9C(v37);
  *v39 = v43;
  v44 = v65;
  *v40 = v53;
  v40[1] = v44;
  v45 = OUTLINED_FUNCTION_1_52();
  v38(v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v46 = sub_26A8516A8();
  v47 = v57;
  v48 = v65;
  *v57 = v64;
  v47[1] = v48;
  v49 = OUTLINED_FUNCTION_1_52();
  v38(v49);
  return sub_26A80DD90(v46, v47);
}

void OUTLINED_FUNCTION_0_52(uint64_t a1@<X8>)
{
  v2 = *a1;
  *(v1 + 32) = *a1;
  v3 = *(a1 + 8);
  *(v1 + 40) = v3;
  sub_26A4E324C(v2, v3);

  sub_26A621A9C(v1);
}

uint64_t type metadata accessor for QuotedContentModifier()
{
  result = qword_2803B1810;
  if (!qword_2803B1810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A63ED74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26A84FA58();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1820);
  return sub_26A63EDD8(v2, a1, a2 + *(v5 + 44));
}

uint64_t sub_26A63EDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v70 = a1;
  v78 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1828);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = (&v62 - v4);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1830) - 8;
  MEMORY[0x28223BE20](v76);
  v77 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v62 - v7;
  MEMORY[0x28223BE20](v8);
  v75 = &v62 - v9;
  v10 = sub_26A84EE68();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v62 - v15;
  v69 = sub_26A8514D8();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1838) - 8;
  MEMORY[0x28223BE20](v66);
  v65 = (&v62 - v18);
  v19 = sub_26A84F5F8();
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1840);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = &v62 - v25;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1848) - 8;
  MEMORY[0x28223BE20](v64);
  v71 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v62 - v29;
  MEMORY[0x28223BE20](v31);
  v63 = &v62 - v32;
  v33 = *(v20 + 28);
  v34 = *MEMORY[0x277CE0128];
  v35 = sub_26A84FB88();
  (*(*(v35 - 8) + 104))(&v22[v33], v34, v35);
  __asm { FMOV            V0.2D, #8.0 }

  *v22 = _Q0;
  sub_26A850E88();
  v62 = sub_26A850E68();

  sub_26A720064(v16);
  v41 = v13;
  (*(v11 + 104))(v13, *MEMORY[0x277CDF3C0], v10);
  LOBYTE(v13) = sub_26A84EE58();
  v42 = *(v11 + 8);
  v42(v41, v10);
  v42(v16, v10);
  v43 = v68;
  v44 = MEMORY[0x277CE13B8];
  if ((v13 & 1) == 0)
  {
    v44 = MEMORY[0x277CE13B0];
  }

  v45 = v67;
  v46 = v69;
  (*(v68 + 104))(v67, *v44, v69);
  v47 = v65;
  (*(v43 + 32))(v65 + *(v66 + 44), v45, v46);
  *v47 = v62;
  sub_26A63F65C(v22, v26);
  sub_26A4DBDB4(v47, &v26[*(v24 + 60)], &qword_2803B1838);
  *&v26[*(v24 + 64)] = 256;
  sub_26A851448();
  sub_26A84F028();
  sub_26A4DBDB4(v26, v30, &qword_2803B1840);
  v48 = &v30[*(v64 + 44)];
  v49 = v80;
  *v48 = v79;
  *(v48 + 1) = v49;
  *(v48 + 2) = v81;
  v50 = v63;
  sub_26A4DBDB4(v30, v63, &qword_2803B1848);
  v51 = sub_26A84FA78();
  v52 = v72;
  *v72 = v51;
  *(v52 + 8) = 0;
  *(v52 + 16) = 1;
  v53 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1850) + 44);
  LODWORD(v46) = sub_26A84FED8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1858);
  (*(*(v54 - 8) + 16))(v53, v74, v54);
  *(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1860) + 36)) = v46;
  sub_26A851448();
  sub_26A84F628();
  v55 = v73;
  sub_26A4DBDB4(v52, v73, &qword_2803B1828);
  memcpy((v55 + *(v76 + 44)), __src, 0x70uLL);
  v56 = v75;
  sub_26A4DBDB4(v55, v75, &qword_2803B1830);
  v57 = v71;
  sub_26A4DBD68(v50, v71, &qword_2803B1848);
  v58 = v77;
  sub_26A4DBD68(v56, v77, &qword_2803B1830);
  v59 = v78;
  sub_26A4DBD68(v57, v78, &qword_2803B1848);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1868);
  sub_26A4DBD68(v58, v59 + *(v60 + 48), &qword_2803B1830);
  sub_26A4DBD10(v56, &qword_2803B1830);
  sub_26A4DBD10(v50, &qword_2803B1848);
  sub_26A4DBD10(v58, &qword_2803B1830);
  return sub_26A4DBD10(v57, &qword_2803B1848);
}

uint64_t sub_26A63F65C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A84F5F8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A63F6C0()
{
  result = qword_2803B1870;
  if (!qword_2803B1870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1870);
  }

  return result;
}

uint64_t sub_26A63F724@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v9 = sub_26A851E88();
  LOBYTE(v90) = 2;
  sub_26A7B5E9C(v9, 1, "SnippetUI/TableLayoutComputer+FlowLayout.swift", 46, 2, 14, "resolveFlowLayout(columns:in:useImageFirstLayout:)", 50, v90, v91, a3, v94, v96, v98, v100, v102, v104, v106, v109, *(&v109 + 1), v110, *(&v110 + 1));
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = (a1 + 82);
    v13 = MEMORY[0x277D84F90];
    do
    {
      v14 = *(v12 - 34);
      v110 = *(v12 - 50);
      v111 = v14;
      v112 = *(v12 - 18);
      v113 = *(v12 - 2);
      v15 = *(v12 - 1);
      v109 = *v12;
      if ((v15 & 1) == 0)
      {
        v114 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7DCCE0(0, *(v13 + 16) + 1, 1);
          v13 = v114;
        }

        v17 = *(v13 + 16);
        v16 = *(v13 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_26A7DCCE0(v16 > 1, v17 + 1, 1);
          v13 = v114;
        }

        *(v13 + 16) = v17 + 1;
        v18 = v13 + 72 * v17;
        v20 = v111;
        v19 = v112;
        v21 = v110;
        *(v18 + 80) = v113;
        *(v18 + 48) = v20;
        *(v18 + 64) = v19;
        *(v18 + 32) = v21;
        *(v18 + 81) = v15;
        *(v18 + 82) = v109;
      }

      v12 = (v12 + 72);
      --v10;
    }

    while (v10);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  *&v110 = v13;
  v22 = *(v5 + 8);
  v23 = *(v5 + 16);
  v24 = *(v5 + 24);
  v25 = *(v5 + 32);

  v27 = sub_26A69676C(v26);
  v28 = v23;
  if (v27)
  {

    v28 = v22;
  }

  *&v109 = v28;
  if (a2)
  {
    sub_26A695ED0(&v109);
  }

  if (sub_26A69676C(v25))
  {
    v29 = v24;
  }

  else
  {
    v29 = v25;
  }

  v30 = sub_26A69620C(v109, v29);

  sub_26A63FE4C(&v110, v30);
  sub_26A5377F8(&v110, v30);
  sub_26A581720(&v110);
  v31 = sub_26A63FF3C(v110, v30);

  v107 = *(v31 + 16);
  if (v107)
  {
    v32 = 0;
    v33 = 0;
    v11 = 0;
    v34 = *(v5 + 40);
    v35 = 0.0;
    v36 = MEMORY[0x277D84F90];
    v37 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v11 >= *(v31 + 16))
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        OUTLINED_FUNCTION_0_53();
        sub_26A7A201C();
        v65 = v88;
        goto LABEL_56;
      }

      v38 = v31 + 32 + 24 * v11;
      v39 = *v38;
      v40 = *(*v38 + 16);
      if (v40)
      {
        v41 = (v39 + 32);
        v42 = 0.0;
        v43 = *(*v38 + 16);
        do
        {
          v44 = *v41;
          v41 += 9;
          v42 = v42 + v44;
          --v43;
        }

        while (v43);
      }

      else
      {
        v42 = 0.0;
      }

      v45 = *(v38 + 8);
      v46 = __OFSUB__(v40, v45);
      v47 = v40 - v45;
      if (v46)
      {
        goto LABEL_84;
      }

      v46 = __OFSUB__(v47, 1);
      v48 = v47 - 1;
      if (v46)
      {
        goto LABEL_85;
      }

      v49 = *(v38 + 16);
      if ((v48 & 0x8000000000000000) != 0)
      {
        v50 = v34 * 0.0 + v42;
        if (v33)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v50 = v34 * v48 + v42;
        if (v33)
        {
          goto LABEL_34;
        }
      }

      if (v35 + v50 <= a4)
      {
        swift_bridgeObjectRetain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v36;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }

LABEL_34:

      if (v32)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v51 = v37;
        }

        else
        {
          OUTLINED_FUNCTION_0_53();
          sub_26A7A201C();
          v51 = v62;
        }

        v52 = *(v51 + 16);
        if (v52 >= *(v51 + 24) >> 1)
        {
          sub_26A7A201C();
          v53 = v36;
          v51 = v63;
        }

        else
        {
          v53 = v36;
        }

        *(v51 + 16) = v52 + 1;
        v37 = v51;
        *(v51 + 8 * v52 + 32) = v53;

        v32 = 0;
        v35 = 0.0;
      }

      else
      {

        v56 = swift_isUniquelyReferenced_nonNull_native();
        v55 = v36;
        v32 = 0;
        if (v56)
        {
          goto LABEL_44;
        }
      }

LABEL_40:
      OUTLINED_FUNCTION_0_53();
      sub_26A7A1F44();
      v55 = v54;
LABEL_44:
      v58 = *(v55 + 16);
      if (v58 >= *(v55 + 24) >> 1)
      {
        sub_26A7A1F44();
        v55 = v61;
      }

      *(v55 + 16) = v58 + 1;
      v36 = v55;
      v59 = v55 + 24 * v58;
      *(v59 + 32) = v39;
      *(v59 + 40) = v45;
      *(v59 + 48) = v49;
      if (v32)
      {

        v32 = 1;
      }

      else
      {
        v60 = *(v39 + 16);

        v32 = v45 < v60;
      }

      ++v11;
      v35 = v35 + v34 + v50;
      v33 = v45 > 0;
      if (v11 == v107)
      {

        v11 = MEMORY[0x277D84F90];
        v64 = v36;
        goto LABEL_54;
      }
    }
  }

  v37 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
LABEL_54:
  v95 = v64;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_87;
  }

  v65 = v37;
LABEL_56:
  v66 = *(v65 + 16);
  v67 = v66 + 1;
  v99 = v66;
  v68 = v66 >= *(v65 + 24) >> 1;
  v69 = v95;
  if (v68)
  {
    sub_26A7A201C();
    v69 = v95;
    v65 = v89;
  }

  *(v65 + 16) = v67;
  v101 = v65;
  v97 = v65 + 32;
  *(v65 + 32 + 8 * v99) = v69;
  *&v109 = v11;
  sub_26A7DD0AC(0, v67, 0);
  v70 = 0;
  v71 = v109;
  v11 = 72;
  do
  {
    if (v70 >= *(v101 + 16))
    {
      goto LABEL_86;
    }

    v105 = v70;
    v108 = v71;
    v103 = v70 + 1;
    v72 = *(v97 + 8 * v70);
    v73 = *(v72 + 16);

    v74 = 0;
    v75 = 32;
    v76 = MEMORY[0x277D84F90];
    while (v73 != v74)
    {
      if (v74 >= *(v72 + 16))
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v77 = *(v72 + v75);
      v78 = *(v77 + 16);
      v79 = *(v76 + 16);
      if (__OFADD__(v79, v78))
      {
        goto LABEL_79;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v79 + v78 > *(v76 + 24) >> 1)
      {
        sub_26A7A0DD0();
        v76 = v80;
      }

      if (*(v77 + 16))
      {
        v81 = *(v76 + 16);
        if ((*(v76 + 24) >> 1) - v81 < v78)
        {
          goto LABEL_81;
        }

        memcpy((v76 + 72 * v81 + 32), (v77 + 32), 72 * v78);

        if (v78)
        {
          v82 = *(v76 + 16);
          v46 = __OFADD__(v82, v78);
          v83 = v82 + v78;
          if (v46)
          {
            goto LABEL_82;
          }

          *(v76 + 16) = v83;
        }
      }

      else
      {

        if (v78)
        {
          goto LABEL_80;
        }
      }

      v75 += 24;
      ++v74;
    }

    v71 = v108;
    *&v109 = v108;
    v85 = *(v108 + 16);
    v84 = *(v108 + 24);
    if (v85 >= v84 >> 1)
    {
      sub_26A7DD0AC(v84 > 1, v85 + 1, 1);
      v71 = v109;
    }

    *(v71 + 16) = v85 + 1;
    *(v71 + 8 * v85 + 32) = v76;
    v70 = v103;
  }

  while (v105 != v99);

  sub_26A84ACB8();
  result = type metadata accessor for ResolvedTableLayout();
  v87 = v93 + *(result + 20);
  *v87 = v71;
  *(v87 + 8) = 1;
  *(v93 + *(result + 24)) = 1;
  return result;
}

void sub_26A63FE4C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_17:
      sub_26A848EC8();
      v2 = v14;
    }

    v6 = 0;
    v7 = v2 + 32;
    do
    {
      if (v6 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (*(v7 + 32))
      {
        *v7 = 0;
      }

      else
      {
        v8 = 0;
        if (*(a2 + 16))
        {
          v9 = sub_26A5484D4(*(v7 + 24));
          if (v10)
          {
            v11 = *(*(a2 + 56) + 8 * v9);
            if (*(v11 + 16))
            {
              v12 = sub_26A5484D4(1);
              if (v13)
              {
                v8 = *(*(v11 + 56) + 8 * v12);
              }
            }
          }
        }

        *v7 = v8;
        *(v7 + 17) = 0;
      }

      ++v6;
      v7 += 72;
    }

    while (v3 != v6);
    *a1 = v2;
  }
}

unint64_t sub_26A63FF3C(unint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = a2;
    v4 = result;
    v5 = 0;
    v6 = result + 32;
    v7 = MEMORY[0x277D84F90];
    while (v2 >= v5)
    {
      if (v5 < 0)
      {
        goto LABEL_37;
      }

      if (v5 == v2)
      {
        v8 = 0;
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        v10 = v6 + 72 * v5;
        v11 = *(v10 + 24);
        v12 = *(v10 + 32);
        if (v12)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1880);
          v9 = swift_allocObject();
          v13 = *v10;
          *(v9 + 16) = xmmword_26A8570D0;
          *(v9 + 32) = v13;
          *(v9 + 48) = *(v10 + 16);
          *(v9 + 56) = v11;
          *(v9 + 64) = v12;
          *(v9 + 65) = *(v10 + 33);
          *(v9 + 81) = *(v10 + 49);
          v14 = *(v10 + 65);
          v8 = 1;
          *(v9 + 97) = v14;
        }

        else
        {
          if (*(v3 + 16) && (result = sub_26A5484D4(*(v10 + 24)), (v15 & 1) != 0))
          {

            v16 = sub_26A6A5550();
            v18 = v17;

            if (v18)
            {
              v19 = 1;
            }

            else
            {
              v19 = v16;
            }
          }

          else
          {
            v19 = 1;
          }

          v20 = 0;
          v21 = 0;
          v22 = (2 * v5) | 1;
          for (i = 72 * v5 + 64; v5 - v2 != v20 && v21 < v19; i += 72)
          {
            v21 += (*(v4 + i) & 1) == 0;
            --v20;
            v22 += 2;
          }

          if (v5 - v20 < v5)
          {
            goto LABEL_39;
          }

          v25 = v6;
          v26 = *(v4 + 16);
          swift_unknownObjectRetain_n();
          v9 = v4;
          if (v20 + v26)
          {
            sub_26A817FC4(v4, v25, v5, v22);
            v9 = v33;
          }

          if (__OFSUB__(-v20, v19))
          {
            goto LABEL_40;
          }

          v8 = (-v20 - v19) & ~((-v20 - v19) >> 63);
          v6 = v25;
          v3 = a2;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A1F44();
        v7 = v31;
      }

      v27 = *(v7 + 16);
      if (v27 >= *(v7 + 24) >> 1)
      {
        sub_26A7A1F44();
        v7 = v32;
      }

      *(v7 + 16) = v27 + 1;
      v28 = v7 + 24 * v27;
      *(v28 + 32) = v9;
      *(v28 + 40) = v8;
      *(v28 + 48) = 0;
      v29 = *(v9 + 16);

      v30 = __OFADD__(v5, v29);
      v5 += v29;
      if (v30)
      {
        goto LABEL_38;
      }

      if (v5 >= v2)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t type metadata accessor for OptionalLineLimitModifier()
{
  result = qword_2803B1888;
  if (!qword_2803B1888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A6402B8()
{
  sub_26A64054C(319, &qword_2803B1898, &qword_2803B18A0, &unk_26A86D500, MEMORY[0x277CDF468]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_26A64054C(319, &qword_2803B18A8, &qword_2803AB3B8, &unk_26A858510, MEMORY[0x277CDF468]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_26A5F203C();
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_26A5A3EDC(319, &qword_2803AB788, MEMORY[0x277CDF468]);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_26A64054C(319, &qword_2803B18B0, &qword_2803B18B8, &unk_26A86D510, MEMORY[0x277CDF468]);
      if (v8 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_26A64054C(319, &qword_2803B18C0, &qword_2803AB3B8, &unk_26A858510, MEMORY[0x277CE10B8]);
        v1 = v9;
        if (v10 <= 0x3F)
        {
          sub_26A64054C(319, &qword_2803B18C8, &qword_2803B18B8, &unk_26A86D510, MEMORY[0x277CE10B8]);
          v1 = v11;
          if (v12 <= 0x3F)
          {
            sub_26A5A3EDC(319, &qword_2803B3840, MEMORY[0x277CE10B8]);
            v1 = v13;
            if (v14 <= 0x3F)
            {
              sub_26A64054C(319, &qword_2803AD130, &qword_2803ABFB8, &unk_26A85A410, MEMORY[0x277CE10B8]);
              v1 = v15;
              if (v16 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_26A64054C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_26A6405CC@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_7_3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A6405F8()
{
  sub_26A64304C();
  sub_26A84F998();
  return v1;
}

uint64_t sub_26A640670@<X0>(uint64_t (**a1)()@<X8>)
{
  result = OUTLINED_FUNCTION_29_3();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_26A51A898;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t (*sub_26A6406DC())()
{
  sub_26A6430C8();
  sub_26A84F998();
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_29_7();
  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_26A6432B4;
}

uint64_t sub_26A640760(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_26A6430C8();
  return sub_26A84F9A8();
}

uint64_t sub_26A640858@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  HIDWORD(v82) = a5;
  HIDWORD(v64) = a2;
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 16) = swift_getKeyPath();
  *(a6 + 24) = 0;
  v8 = type metadata accessor for OptionalLineLimitModifier();
  v9 = v8[6];
  *(a6 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v10 = a6 + v8[7];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = a6 + v8[8];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v12 = a6 + v8[9];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a6 + v8[10];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB3B8);
  OUTLINED_FUNCTION_5_40(v14, v15, v16, v17, v18, v19, v20, v21, v64, a3, a4, v82, 0);
  sub_26A851048();
  v22 = a6 + v8[11];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B18B8);
  OUTLINED_FUNCTION_5_40(v23, v23, v24, v25, v26, v27, v28, v29, v65, v71, v77, v83, 0);
  sub_26A851048();
  *v22 = v88;
  *(v22 + 16) = v89;
  v30 = a6 + v8[13];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFB8);
  OUTLINED_FUNCTION_5_40(v31, v32, v33, v34, v35, v36, v37, v38, v66, v72, v78, v84, 0);
  v39 = sub_26A851048();
  OUTLINED_FUNCTION_5_40(v39, v40, v41, v42, v43, v44, v45, v46, v67, v73, v79, v85, a1);
  sub_26A851048();

  *v13 = v88;
  *(v13 + 8) = BYTE8(v88);
  *(v13 + 16) = v89;
  OUTLINED_FUNCTION_5_40(v47, v48, v49, v50, v51, v52, v53, v54, v68, v74, v80, v86, v74);
  sub_26A851048();

  *v30 = v88;
  *(v30 + 16) = v89;
  v56 = a6 + v8[12];
  OUTLINED_FUNCTION_5_40(v55, MEMORY[0x277D839B0], v57, v58, v59, v60, v61, v62, v69, v75, v81, v87, SBYTE4(v87));
  result = sub_26A851048();
  *v56 = v88;
  *(v56 + 8) = *(&v88 + 1);
  return result;
}

BOOL sub_26A640ABC()
{
  v0 = type metadata accessor for OptionalLineLimitModifier();
  OUTLINED_FUNCTION_12_27(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD150);
  sub_26A851058();
  if (v2)
  {
  }

  return v2 != 0;
}

BOOL sub_26A640B2C()
{
  v1 = v0;
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v8 = v7 - v6;
  v9 = v1 + *(type metadata accessor for OptionalLineLimitModifier() + 28);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    if (v10)
    {
      return sub_26A640ABC();
    }
  }

  else
  {

    sub_26A851EA8();
    v11 = sub_26A8501F8();
    OUTLINED_FUNCTION_8_41();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v10, 0);
    (*(v4 + 8))(v8, v2);
    if (v15)
    {
      return sub_26A640ABC();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  sub_26A851058();
  if (v14 != 1)
  {
    return 0;
  }

  return sub_26A640ABC();
}

uint64_t sub_26A640CD8()
{
  v0 = type metadata accessor for OptionalLineLimitModifier();
  OUTLINED_FUNCTION_12_27(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD150);
  sub_26A851058();
  sub_26A53ACC8();
  sub_26A850898();
  OUTLINED_FUNCTION_15_21();
  v1 = sub_26A850718();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_211();
  sub_26A4EC448(v6, v7, v8);

  sub_26A642B08();
  sub_26A850698();
  OUTLINED_FUNCTION_15_21();
  sub_26A4EC448(v1, v3, v5 & 1);

  return OUTLINED_FUNCTION_211();
}

uint64_t sub_26A640DF4(uint64_t a1)
{
  v2 = type metadata accessor for OptionalLineLimitModifier();
  v57 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = v3;
  v59 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1900);
  OUTLINED_FUNCTION_15();
  v63 = v5;
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19();
  v61 = v6;
  MEMORY[0x28223BE20](v7);
  v62 = &v56 - v8;
  v78 = sub_26A850758();
  OUTLINED_FUNCTION_15();
  v76 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v77 = v11;
  MEMORY[0x28223BE20](v12);
  v75 = &v56 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB498);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - v15;
  v17 = sub_26A850798();
  OUTLINED_FUNCTION_15();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  v73 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4A0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - v25;
  v27 = sub_26A8507A8();
  OUTLINED_FUNCTION_46();
  (*(v28 + 16))(v26, a1, v27);
  v29 = *(v23 + 44);
  v30 = sub_26A642AC4();
  sub_26A851D88();
  v68 = (v19 + 8);
  v69 = (v19 + 16);
  v74 = (v76 + 16);
  v31 = (v76 + 32);
  v76 += 8;
  v71 = v26;
  v66 = v29;
  v67 = v27;
  v65 = v30;
LABEL_2:
  sub_26A851DD8();
  if (*&v26[v29] == v81[0])
  {
    sub_26A4D6FD8();
    return sub_26A851248();
  }

  else
  {
    v32 = sub_26A851E18();
    v72 = *v69;
    v72(v73);
    v32(v81, 0);
    sub_26A851DE8();
    v33 = v73;
    (v72)(v16, v73, v17);
    v34 = *(v70 + 36);
    sub_26A642AC4();
    OUTLINED_FUNCTION_8_30();
    sub_26A851D88();
    v35 = *v68;
    v36 = v33;
    v37 = v17;
    while (1)
    {
      v35(v36, v37);
      OUTLINED_FUNCTION_8_30();
      sub_26A851DD8();
      if (*&v16[v34] == v81[0])
      {
        sub_26A4D6FD8();
        v26 = v71;
        v29 = v66;
        goto LABEL_2;
      }

      v38 = sub_26A851E18();
      v39 = v75;
      v40 = v78;
      (*v74)(v75);
      v38(v81, 0);
      sub_26A851DE8();
      (*v31)(v77, v39, v40);
      sub_26A642B08();
      sub_26A850768();
      if (v82 != 1)
      {
        break;
      }

      v36 = OUTLINED_FUNCTION_11_31();
    }

    sub_26A850748();
    v41 = sub_26A850DF8();
    sub_26A851448();
    sub_26A84F028();
    *&v80[7] = v83;
    *&v80[23] = v84;
    *&v80[39] = v85;
    v86.origin.x = OUTLINED_FUNCTION_16_16();
    MidX = CGRectGetMidX(v86);
    v87.origin.x = OUTLINED_FUNCTION_16_16();
    MidY = CGRectGetMidY(v87);
    v79[0] = v41;
    LOBYTE(v79[1]) = 0;
    *(&v79[1] + 1) = *v80;
    *(&v79[3] + 1) = *&v80[16];
    *(&v79[5] + 1) = *&v80[32];
    v79[7] = *&v80[47];
    *&v79[8] = MidX;
    *&v79[9] = MidY;
    v44 = v59;
    sub_26A64290C(v60, v59);
    v45 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v46 = swift_allocObject();
    sub_26A642970(v44, v46 + v45);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1910);
    v48 = sub_26A642D88();
    v49 = v62;
    sub_26A850A38();

    memcpy(v81, v79, sizeof(v81));
    sub_26A4D6FD8();
    v51 = v63;
    v50 = v64;
    (*(v63 + 16))(v61, v49, v64);
    v79[0] = v47;
    v79[1] = v48;
    swift_getOpaqueTypeConformance2();
    v52 = sub_26A851248();
    (*(v51 + 8))(v49, v50);
    v53 = OUTLINED_FUNCTION_11_31();
    v54(v53);
    sub_26A4D6FD8();
    sub_26A4D6FD8();
  }

  return v52;
}

uint64_t sub_26A641634(uint64_t a1)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OptionalLineLimitModifier();
  v7 = (a1 + v6[10]);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = v7[2];
  *&v20 = v8;
  BYTE8(v20) = v9;
  v21 = v10;
  v18 = 0;
  LOBYTE(v19) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD8C8);
  sub_26A851068();
  v11 = (a1 + v6[13]);
  v12 = *(v11 + 2);
  v20 = *v11;
  v21 = v12;
  v18 = 0;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD150);
  sub_26A851068();
  v13 = a1 + v6[8];
  v15 = *v13;
  v14 = *(v13 + 8);
  if (*(v13 + 16) != 1)
  {

    sub_26A851EA8();
    v17 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A58FF48(v15, v14, 0);
    result = (*(v3 + 8))(v5, v2);
    v15 = v20;
    if (!v20)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_26A4C2304(*v13);
  if (v15)
  {
LABEL_5:
    v15(result);
    return sub_26A4C24DC(v15);
  }

  return result;
}

uint64_t sub_26A641850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26A84F3A8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  v12 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v34 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v33 = v16 - v15;
  if (sub_26A640ABC())
  {
    v17 = 0;
    v35 = 1;
  }

  else
  {
    v17 = *(v2 + 16);
    v18 = *(v2 + 24);
    if (*(v2 + 25) != 1)
    {
      v36 = *(v2 + 24);

      sub_26A851EA8();
      v19 = v12;
      v20 = sub_26A8501F8();
      OUTLINED_FUNCTION_8_41();

      v12 = v19;
      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A4F5724(v17, v36, 0);
      (*(v34 + 8))(v33, v19);
      v17 = v39;
      v18 = v40;
    }

    v35 = v18;
  }

  v21 = v2 + *(type metadata accessor for OptionalLineLimitModifier() + 36);
  v22 = *v21;
  v23 = *(v21 + 8);
  if (*(v21 + 9) == 1)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {

    sub_26A851EA8();
    v32 = v11;
    v24 = v7;
    v25 = sub_26A8501F8();
    OUTLINED_FUNCTION_8_41();

    v7 = v24;
    v11 = v32;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4F5724(v22, v23, 0);
    (*(v34 + 8))(v33, v12);
    if (v40 != 1)
    {
      v22 = v39;
      goto LABEL_16;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD8C8);
  sub_26A851058();
  if (v38)
  {
    v22 = v17;
  }

  else
  {
    v22 = v37;
  }

  if (v38 & v35)
  {
    v26 = 1;
LABEL_20:
    KeyPath = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B18F0);
    OUTLINED_FUNCTION_46();
    (*(v30 + 16))(a2, a1);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B18D0);
    v31 = a2 + *(result + 36);
    *v31 = KeyPath;
    *(v31 + 8) = v17;
    *(v31 + 16) = v26;
    return result;
  }

LABEL_16:
  sub_26A72003C(v11);
  v27 = sub_26A84F388();
  result = (*(v7 + 8))(v11, v5);
  if ((v27 & 1) == 0)
  {
    v26 = 0;
    v17 = v22;
    goto LABEL_20;
  }

  if (v22 + 0x4000000000000000 >= 0)
  {
    v26 = 0;
    v17 = 2 * v22;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A641C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v3;
  v50 = a1;
  v55 = a2;
  v6 = type metadata accessor for OptionalLineLimitModifier();
  v7 = v6 - 8;
  v51 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v56 = v8;
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B18D0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B18F8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v52 = &v46 - v14;
  v15 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_41();
  v21 = v20 - v19;
  sub_26A8507D8();
  OUTLINED_FUNCTION_15();
  v53 = v23;
  v54 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_41();
  v26 = v25 - v24;
  v27 = v5 + *(v7 + 36);
  v28 = *v27;
  LODWORD(v27) = *(v27 + 8);
  v46 = v17;
  v47 = v15;
  if (v27 == 1)
  {
    if ((v28 & 1) == 0)
    {
LABEL_3:
      sub_26A640CD8();
      OUTLINED_FUNCTION_6_37();
      sub_26A8507C8();
      goto LABEL_6;
    }
  }

  else
  {

    v2 = sub_26A851EA8();
    v4 = sub_26A8501F8();
    OUTLINED_FUNCTION_8_41();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v28, 0);
    (*(v17 + 8))(v21, v15);
    if (v58 != 1)
    {
      goto LABEL_3;
    }
  }

  sub_26A640CD8();
  OUTLINED_FUNCTION_6_37();
  sub_26A8507B8();
LABEL_6:
  sub_26A4EC448(v2, v4, v15 & 1);
  v29 = v52;

  sub_26A641850(v50, v12);
  sub_26A642828();
  sub_26A850968();
  sub_26A4D6FD8();
  v30 = OUTLINED_FUNCTION_8_30();
  sub_26A64290C(v30, v31);
  v32 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v33 = swift_allocObject();
  sub_26A642970(v9, v33 + v32);
  v34 = sub_26A851448();
  v35 = (v29 + *(v49 + 36));
  *v35 = sub_26A6429D4;
  v35[1] = v33;
  v35[2] = v34;
  v35[3] = v36;
  v37 = *v5;
  v38 = *(v5 + 8);

  if ((v38 & 1) == 0)
  {
    sub_26A851EA8();
    v39 = sub_26A8501F8();
    OUTLINED_FUNCTION_8_41();

    sub_26A84F978();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v46 + 8))(v21, v47);
    v37 = v57;
  }

  if (!v37)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFC0);
    swift_allocObject();
    v37 = sub_26A84EBA8();
  }

  (*(v53 + 8))(v26, v54);
  v40 = OUTLINED_FUNCTION_8_30();
  sub_26A64290C(v40, v41);
  v42 = swift_allocObject();
  sub_26A642970(v9, v42 + v32);
  v43 = v55;
  sub_26A4A5BCC(v29, v55);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B18E0);
  *(v43 + *(result + 52)) = v37;
  v45 = (v43 + *(result + 56));
  *v45 = sub_26A642A54;
  v45[1] = v42;
  return result;
}

void sub_26A64217C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26A850828();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26A8507A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v17 - v14;
  if (*(*a1 + 16))
  {
    (*(v5 + 16))(v7, *a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4, v13);
    sub_26A850808();
    (*(v5 + 8))(v7, v4);
    (*(v9 + 32))(v15, v11, v8);
    v16 = sub_26A640DF4(v15);
    (*(v9 + 8))(v15, v8);
  }

  else
  {
    v16 = 0;
  }

  *a2 = v16;
}

uint64_t sub_26A642384(uint64_t a1, uint64_t a2)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OptionalLineLimitModifier();
  v8 = (a2 + v7[10]);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = v8[2];
  *&v21 = *v8;
  BYTE8(v21) = v10;
  v22 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD8C8);
  result = sub_26A851058();
  if ((v20 & 1) == 0)
  {
    *&v21 = v9;
    BYTE8(v21) = v10;
    v22 = v11;
    v19 = 0;
    LOBYTE(v20) = 1;
    sub_26A851068();
    v13 = (a2 + v7[13]);
    v14 = *(v13 + 2);
    v21 = *v13;
    v22 = v14;
    v19 = 0;
    v20 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD150);
    sub_26A851068();
    v15 = a2 + v7[8];
    v17 = *v15;
    v16 = *(v15 + 8);
    if (*(v15 + 16) == 1)
    {
      result = sub_26A4C2304(*v15);
      if (!v17)
      {
        return result;
      }
    }

    else
    {

      sub_26A851EA8();
      v18 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A58FF48(v17, v16, 0);
      result = (*(v4 + 8))(v6, v3);
      v17 = v21;
      if (!v21)
      {
        return result;
      }
    }

    v17(result);
    return sub_26A4C24DC(v17);
  }

  return result;
}

uint64_t sub_26A6425C8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B18D0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B18D8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B18E0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  if (sub_26A640B2C())
  {
    sub_26A641C7C(a1, v10);
    sub_26A4A5B08(v10, v7);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_50();
    sub_26A642828();
    OUTLINED_FUNCTION_7_41();
    return sub_26A4A5B6C();
  }

  else
  {
    sub_26A641850(a1, v4);
    sub_26A6427B8(v4, v7);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_50();
    sub_26A642828();
    OUTLINED_FUNCTION_7_41();
    return sub_26A4D6FD8();
  }
}

uint64_t sub_26A6427B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B18D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A642828()
{
  result = qword_28157FE48;
  if (!qword_28157FE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B18D0);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE48);
  }

  return result;
}

uint64_t sub_26A64290C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OptionalLineLimitModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A642970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OptionalLineLimitModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26A6429D4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OptionalLineLimitModifier();

  sub_26A64217C(a1, a2);
}

uint64_t sub_26A642A54(uint64_t a1)
{
  v3 = *(type metadata accessor for OptionalLineLimitModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26A642384(a1, v4);
}

unint64_t sub_26A642AC4()
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

unint64_t sub_26A642B08()
{
  result = qword_2803B1908;
  if (!qword_2803B1908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1908);
  }

  return result;
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for OptionalLineLimitModifier();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  j__swift_release();
  sub_26A4F5724(*(v2 + 16), *(v2 + 24), *(v2 + 25));
  v3 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  sub_26A49035C(*(v2 + v1[7]), *(v2 + v1[7] + 8));
  sub_26A58FF48(*(v2 + v1[8]), *(v2 + v1[8] + 8), *(v2 + v1[8] + 16));
  sub_26A4F5724(*(v2 + v1[9]), *(v2 + v1[9] + 8), *(v2 + v1[9] + 9));

  if (*(v2 + v1[11]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26A642D28()
{
  v1 = *(type metadata accessor for OptionalLineLimitModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26A641634(v2);
}

unint64_t sub_26A642D88()
{
  result = qword_2803B1918;
  if (!qword_2803B1918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1910);
    sub_26A642E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1918);
  }

  return result;
}

unint64_t sub_26A642E14()
{
  result = qword_2803B1920;
  if (!qword_2803B1920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1928);
    sub_26A642EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1920);
  }

  return result;
}

unint64_t sub_26A642EA0()
{
  result = qword_2803B1930;
  if (!qword_2803B1930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1938);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1930);
  }

  return result;
}

uint64_t sub_26A642F58@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_26A6406DC();
  if (result)
  {
    v4 = result;
    v5 = v3;
    OUTLINED_FUNCTION_29_7();
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_26A51A898;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_26A642FC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    OUTLINED_FUNCTION_29_7();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_26A6430A0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_26A4C2304(v1);
  return sub_26A640760(v4, v3);
}

unint64_t sub_26A64304C()
{
  result = qword_2803B1940;
  if (!qword_2803B1940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1940);
  }

  return result;
}

unint64_t sub_26A6430C8()
{
  result = qword_2803B1948;
  if (!qword_2803B1948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1948);
  }

  return result;
}

unint64_t sub_26A64314C()
{
  result = qword_2803B1950;
  if (!qword_2803B1950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1958);
    sub_26A4D7DCC();
    sub_26A642828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1950);
  }

  return result;
}

unint64_t sub_26A643208()
{
  result = qword_2803B1960;
  if (!qword_2803B1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1960);
  }

  return result;
}

unint64_t sub_26A643260()
{
  result = qword_2803B1968[0];
  if (!qword_2803B1968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803B1968);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_3_50()
{

  return sub_26A4D7DCC();
}

uint64_t OUTLINED_FUNCTION_7_41()
{

  return sub_26A84FDF8();
}

uint64_t OUTLINED_FUNCTION_8_41()
{

  return sub_26A84EA78();
}

uint64_t sub_26A643394()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_x7SwiftUI7AnyViewVRi_zRi0_zlyxIsegno_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t (*sub_26A643400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  return sub_26A6435E8;
}

uint64_t sub_26A64347C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B19F0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE178);
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  sub_26A6435F8();
  return sub_26A851248();
}

uint64_t sub_26A643558(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v2(v1);
  return sub_26A851248();
}

unint64_t sub_26A6435F8()
{
  result = qword_2803B19F8;
  if (!qword_2803B19F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B19F0);
    sub_26A643684();
    sub_26A6436E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B19F8);
  }

  return result;
}

unint64_t sub_26A643684()
{
  result = qword_2803AE180;
  if (!qword_2803AE180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE180);
  }

  return result;
}

unint64_t sub_26A6436E8()
{
  result = qword_2803B1A00;
  if (!qword_2803B1A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1A00);
  }

  return result;
}

BOOL sub_26A643764()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A565064(v4);
  return v5 != 0;
}

uint64_t sub_26A64383C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 number];
  if (v4)
  {
    v5 = v4;
    *(&v18 + 1) = &type metadata for PartialText;
    v19 = &protocol witness table for PartialText;
    *&v17 = swift_allocObject();
    RFTextProperty.asPartialText()(v17 + 16);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  v6 = [v2 text_1];
  if (v6)
  {
    v7 = v6;
    *(&v15 + 1) = &type metadata for PartialText;
    v16 = &protocol witness table for PartialText;
    *&v14 = swift_allocObject();
    RFTextProperty.asPartialText()(v14 + 16);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
  }

  v8 = [v2 thumbnail];
  if (v8)
  {
    v9 = v8;
    *(&v12 + 1) = sub_26A84BD28();
    v13 = &protocol witness table for VisualProperty;
    __swift_allocate_boxed_opaque_existential_1(&v11);
    RFVisualProperty.asVisualProperty()();
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  return FactItemImageRightView.init(number:text1:thumbnail:)(&v17, &v14, &v11, a1);
}

unint64_t sub_26A643A10()
{
  result = qword_2803B1A08;
  if (!qword_2803B1A08)
  {
    type metadata accessor for FactItemImageRightView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1A08);
  }

  return result;
}

uint64_t sub_26A643A68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  sub_26A51D0F8(v2, &v16 - v12, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A51A3E0(v13, a1);
  }

  sub_26A851EA8();
  v15 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_26A643C1C()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for TertiaryHeaderStandardView() + 20);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v9;
}

uint64_t sub_26A643D5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TertiaryHeaderStandardView();
  sub_26A51D0F8(v1 + *(v10 + 24), v9, &qword_2803A91A8);
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

uint64_t TertiaryHeaderStandardView.init(text1:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for TertiaryHeaderStandardView();
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  *(a2 + v4[7]) = (*(v8 + 8))(v7, v8);

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for TertiaryHeaderStandardView()
{
  result = qword_2803B1A28;
  if (!qword_2803B1A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TertiaryHeaderStandardView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  sub_26A84D578();
  v11 = TextProperty.asAnyView()();
  (*(v6 + 8))(v10, v4);
  v14[3] = MEMORY[0x277CE11C8];
  v14[4] = &protocol witness table for AnyView;
  v14[0] = v11;
  TertiaryHeaderStandardView.init(text1:)(v14, a2);
  sub_26A84D588();
  OUTLINED_FUNCTION_46();
  return (*(v12 + 8))(a1);
}

uint64_t TertiaryHeaderStandardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v6 - 8);
  sub_26A643A68(&v13[-v7]);
  v15 = 0u;
  v16 = 0u;
  v17 = 1;
  sub_26A643C1C();
  sub_26A643D5C(v5);
  v8 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  v14 = v1;
  sub_26A4CA2D4();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1A10) + 36)) = 63;
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1A18);
  v12 = a1 + *(result + 36);
  *v12 = KeyPath;
  *(v12 + 8) = 0;
  *(v12 + 16) = v10;
  *(v12 + 24) = 256;
  return result;
}

uint64_t sub_26A6443B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84FA78();
  type metadata accessor for TertiaryHeaderStandardView();
  sub_26A644458();
  sub_26A6078C0();
  v4 = v3;
  result = sub_26A57E57C(&v6);
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_26A644458()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for TertiaryHeaderStandardView() + 20);
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
    v6 = v9[1];
  }

  return sub_26A59FF20(v6);
}

uint64_t sub_26A64460C(uint64_t a1)
{
  result = sub_26A644664(&qword_2803B1A20, MEMORY[0x277D63540]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A644664(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26A6446D4()
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
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_26A6447B0()
{
  result = qword_2803B1A38;
  if (!qword_2803B1A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1A18);
    sub_26A64483C();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1A38);
  }

  return result;
}

unint64_t sub_26A64483C()
{
  result = qword_2803B1A40;
  if (!qword_2803B1A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1A10);
    sub_26A6448C8();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1A40);
  }

  return result;
}

unint64_t sub_26A6448C8()
{
  result = qword_2803B1A48[0];
  if (!qword_2803B1A48[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9CF0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803B1A48);
  }

  return result;
}

void sub_26A64492C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  if ([v3 url])
  {
    OUTLINED_FUNCTION_1_53();
    sub_26A627650(v9, v10);
LABEL_3:

    return;
  }

  v11 = [v3 symbol];
  if (!v11)
  {
    if ([v3 app_icon])
    {
      OUTLINED_FUNCTION_1_53();
      sub_26A7791DC(v37, v38);
      goto LABEL_3;
    }

    v50 = v3;
    v51 = sub_26A851E98();
    LOBYTE(v61) = 2;
    sub_26A7AA0C0(v51, 1, "SnippetUI/RFImageSource+FormattedTextView.swift", 47, 2, 30, "asFormattedTextRun(engageable:color:)", 37, v61, v50, v62, v64, v66, v68, v70, v72, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
    goto LABEL_15;
  }

  v12 = v11;
  v13 = sub_26A51D368();
  if (!v16)
  {

LABEL_15:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v52 = -256;
LABEL_18:
    *(a3 + 40) = v52;
    return;
  }

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  if (v8 != 255)
  {
    v77 = v7;
    LOBYTE(v78) = v8;
    sub_26A5065E0(v7, v8);
    sub_26A53AC74();
    OUTLINED_FUNCTION_2_53();
    v21 = sub_26A850698();
    v69 = v22;
    v71 = v21;
    v67 = v23;
    v73 = v24;
    if (a2)
    {
      sub_26A68D9FC(&v77);
      __swift_project_boxed_opaque_existential_1(&v77, v80);
      v25 = sub_26A8506B8();
      v63 = v26;
      v65 = v25;
      v28 = v27;
      v30 = v29;

      sub_26A5066E8(v7, v8);
      __swift_destroy_boxed_opaque_existential_1(&v77);
      v31 = OUTLINED_FUNCTION_0_54();
      v33 = v63;
      v32 = v65;
      sub_26A506720(v31, v34, v35, v36);
    }

    else
    {

      sub_26A5066E8(v7, v8);
      v33 = v69;
      v32 = v71;
      sub_26A4EF6C0(v71, v69, v67 & 1);
      v30 = v73;

      v53 = OUTLINED_FUNCTION_0_54();
      sub_26A506720(v53, v54, v55, v56);
      v28 = v67;
    }

    sub_26A4EC448(v71, v69, v67 & 1);

    *a3 = v32;
    *(a3 + 8) = v33;
    *(a3 + 16) = v28 & 1;
    *(a3 + 24) = v30;
    *(a3 + 32) = 1;
    v52 = 1280;
    goto LABEL_18;
  }

  if (a2)
  {
    sub_26A68D9FC(&v77);
    __swift_project_boxed_opaque_existential_1(&v77, v80);
    OUTLINED_FUNCTION_2_53();
    v39 = sub_26A8506B8();
    v41 = v40;
    v43 = v42;
    v45 = v44;

    __swift_destroy_boxed_opaque_existential_1(&v77);
    v46 = OUTLINED_FUNCTION_0_54();
    sub_26A506720(v46, v47, v48, v49);
    v17 = v39;
    v18 = v41;
    v19 = v43;
    v20 = v45;
  }

  else
  {

    sub_26A4EF6C0(v17, v18, v19 & 1);

    v57 = OUTLINED_FUNCTION_0_54();
    sub_26A506720(v57, v58, v59, v60);
  }

  *a3 = v17;
  *(a3 + 8) = v18;
  *(a3 + 16) = v19 & 1;
  *(a3 + 24) = v20;
  *(a3 + 32) = 1;
  *(a3 + 40) = 0;
}