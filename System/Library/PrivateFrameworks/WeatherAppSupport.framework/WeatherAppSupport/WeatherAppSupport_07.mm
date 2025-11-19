double sub_220D78988@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220DBFF90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(type metadata accessor for SunriseSunsetDetailChartContent() + 20);
  v10 = *(v9 + 16);
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v11 = sub_220DBFFE0();
  (*(v5 + 8))(v8, v4);
  v12 = *(v9 + 88);
  sub_220DC0120();
  sub_220DBF760();
  v13 = v18;
  v14 = v19;
  v15 = v20;
  v16 = v21;
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  result = *&v22;
  *(a2 + 40) = v22;
  return result;
}

uint64_t sub_220D78B00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v4);
  sub_220DBFA00();
  sub_220DBF5A0();

  sub_220DBFA00();
  v6 = *(a1 + *(type metadata accessor for SunriseSunsetDetailChartViewModel(0) + 56)) + 40.0;
  sub_220DBF5A0();

  return sub_220DBF570();
}

uint64_t sub_220D78CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v90 = sub_220DBF5E0();
  v88 = *(v90 - 8);
  v3 = *(v88 + 64);
  MEMORY[0x28223BE20](v90);
  v85 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95DE0, &qword_220DC58B0);
  v94 = *(v92 - 8);
  v5 = *(v94 + 64);
  MEMORY[0x28223BE20](v92);
  v86 = v70 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E68, &qword_220DC5990);
  v91 = *(v93 - 8);
  v7 = *(v91 + 64);
  v8 = MEMORY[0x28223BE20](v93);
  v89 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v87 = v70 - v10;
  v80 = sub_220DBF600();
  v81 = *(v80 - 8);
  v11 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  v79 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v96 = v70 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v70 - v18;
  v20 = sub_220DBF6F0();
  v21 = *(v20 - 8);
  v97 = v20;
  v98 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v71 = v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D98, &qword_220DC5890);
  v76 = *(v74 - 8);
  v24 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  v26 = v70 - v25;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D90, &qword_220DC5888);
  v78 = *(v77 - 8);
  v27 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  v29 = v70 - v28;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EC0, &qword_220DC59C8);
  v83 = *(v84 - 8);
  v30 = *(v83 + 64);
  v31 = MEMORY[0x28223BE20](v84);
  v82 = v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v73 = v70 - v33;
  sub_220DBFA00();
  v34 = *(type metadata accessor for SunriseSunsetDetailChartViewModel(0) + 20);
  v72 = a1;
  v35 = a1 + v34;
  v36 = sub_220DBE560();
  v70[1] = v19;
  v70[3] = v35;
  v70[2] = v36;
  sub_220DBF5A0();

  sub_220DBFA00();
  v37 = *(v35 + *(type metadata accessor for DetailChartDataElement(0) + 20));
  v100 = v37;
  sub_220DBF5A0();

  v38 = v71;
  sub_220DBF6E0();
  v39 = a1 + *(type metadata accessor for SunriseSunsetDetailChartContent() + 20);
  v40 = *(v39 + 104);
  v41 = v97;
  v42 = MEMORY[0x277CBB468];
  sub_220DBF490();
  v43 = *(v98 + 8);
  v98 += 8;
  v75 = v43;
  v43(v38, v41);
  v44 = v79;
  sub_220DBF5B0();
  v100 = v41;
  v101 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_220D7B1E4(&qword_27CF95DA0, MEMORY[0x277CBB3B8]);
  v47 = v74;
  v48 = v80;
  sub_220DBF540();
  (*(v81 + 8))(v44, v48);
  (*(v76 + 8))(v26, v47);
  v49 = *(v39 + 96);
  v103 = v46;
  v104 = v49;
  v100 = v47;
  v101 = v48;
  v102 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v50 = v73;
  v51 = v77;
  sub_220DBF4A0();
  (*(v78 + 8))(v29, v51);
  sub_220DBFA00();
  sub_220DBF5A0();

  sub_220DBFA00();
  v100 = v37;
  sub_220DBF5A0();

  sub_220DBF6E0();
  v52 = v85;
  sub_220DBF5D0();
  v99 = v72;
  sub_220DC0120();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95DE8, &qword_220DC58B8);
  v69 = sub_220D79A64();
  v54 = MEMORY[0x277CBB468];
  v55 = v86;
  v56 = v97;
  sub_220DBF480();
  (*(v88 + 8))(v52, v90);
  v75(v38, v56);
  v57 = sub_220DBFEE0();
  v103 = v69;
  v104 = v57;
  v100 = v56;
  v101 = v53;
  v102 = v54;
  swift_getOpaqueTypeConformance2();
  v58 = v87;
  v59 = v92;
  sub_220DBF4A0();

  (*(v94 + 8))(v55, v59);
  v60 = v83;
  v61 = v82;
  v62 = v84;
  (*(v83 + 16))(v82, v50, v84);
  v100 = v61;
  v63 = v91;
  v64 = v89;
  v65 = v93;
  (*(v91 + 16))(v89, v58, v93);
  v101 = v64;
  sub_220D77140(&v100, v95);
  v66 = *(v63 + 8);
  v66(v58, v65);
  v67 = *(v60 + 8);
  v67(v50, v62);
  v66(v64, v65);
  return (v67)(v61, v62);
}

unint64_t sub_220D7983C()
{
  result = qword_27CF95DD8;
  if (!qword_27CF95DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95DD0, &qword_220DC58A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D90, &qword_220DC5888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D98, &qword_220DC5890);
    sub_220DBF600();
    sub_220DBF6F0();
    swift_getOpaqueTypeConformance2();
    sub_220D7B1E4(&qword_27CF95DA0, MEMORY[0x277CBB3B8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95DE0, &qword_220DC58B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95DE8, &qword_220DC58B8);
    sub_220D79A64();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95DD8);
  }

  return result;
}

unint64_t sub_220D79A64()
{
  result = qword_27CF95DF0;
  if (!qword_27CF95DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95DE8, &qword_220DC58B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95DF0);
  }

  return result;
}

double sub_220D79AE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220DBFF90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(type metadata accessor for SunriseSunsetDetailChartContent() + 20);
  v10 = *(v9 + 24);
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v11 = sub_220DBFFE0();
  (*(v5 + 8))(v8, v4);
  v12 = *(v9 + 88);
  sub_220DC0120();
  sub_220DBF760();
  v13 = v18;
  v14 = v19;
  v15 = v20;
  v16 = v21;
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  result = *&v22;
  *(a2 + 40) = v22;
  return result;
}

uint64_t sub_220D79C60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v4);
  sub_220DBFA00();
  sub_220DBF5A0();

  sub_220DBFA00();
  v6 = *(a1 + *(type metadata accessor for SunriseSunsetDetailChartViewModel(0) + 60)) + -40.0;
  sub_220DBF5A0();

  return sub_220DBF570();
}

uint64_t sub_220D79E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v50 = a4;
  v46 = a2;
  v5 = sub_220DBF600();
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v39 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_220DBF6F0();
  v40 = *(v14 - 8);
  v15 = *(v40 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D98, &qword_220DC5890);
  v19 = *(v18 - 8);
  v41 = v18;
  v42 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v37 = &v37 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D90, &qword_220DC5888);
  v23 = *(v22 - 8);
  v43 = v22;
  v44 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v38 = &v37 - v25;
  sub_220DBFA00();
  sub_220DBE560();
  sub_220DBF5A0();

  sub_220DBFA00();
  v51 = *(a1 + *(type metadata accessor for DetailChartDataElement(0) + 20));
  sub_220DBF5A0();

  sub_220DBF6E0();
  v26 = *(v46 + *(type metadata accessor for SunriseSunsetDetailChartContent() + 20) + 136);
  v27 = MEMORY[0x277CBB468];
  v28 = v37;
  sub_220DBF490();
  (*(v40 + 8))(v17, v14);
  v29 = v45;
  sub_220DBF5B0();
  v51 = v14;
  v52 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_220D7B1E4(&qword_27CF95DA0, MEMORY[0x277CBB3B8]);
  v32 = v38;
  v33 = v41;
  v34 = v47;
  sub_220DBF540();
  (*(v48 + 8))(v29, v34);
  (*(v42 + 8))(v28, v33);
  v54 = v31;
  v55 = v49;
  v51 = v33;
  v52 = v34;
  v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v35 = v43;
  sub_220DBF4A0();
  return (*(v44 + 8))(v32, v35);
}

void sub_220D7A3D0()
{
  type metadata accessor for SunriseSunsetDetailChartViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_220D7A45C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220D7A45C()
{
  if (!qword_27CF95E10)
  {
    v0 = sub_220DC0770();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF95E10);
    }
  }
}

unint64_t sub_220D7A4AC()
{
  result = qword_27CF95E18;
  if (!qword_27CF95E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E20, &qword_220DC5950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D60, &qword_220DC5868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95DA8, &qword_220DC5898);
    sub_220CE161C(&qword_27CF95DB0, &qword_27CF95D60, &qword_220DC5868);
    sub_220D7803C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E28, &qword_220DC5958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E30, &qword_220DC5960);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E38, &qword_220DC5968);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E40, &qword_220DC5970);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E48, &qword_220DC5978);
    sub_220D7A90C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_220DBF590();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E58, &qword_220DC5980);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E60, &qword_220DC5988);
    sub_220DBF6D0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E68, &qword_220DC5990);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95DE0, &qword_220DC58B0);
    sub_220DBF6F0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95DE8, &qword_220DC58B8);
    sub_220D79A64();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95D38, &qword_220DC5840);
    sub_220CE161C(&qword_27CF95DF8, &qword_27CF95D38, &qword_220DC5840);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95E18);
  }

  return result;
}

unint64_t sub_220D7A90C()
{
  result = qword_27CF95E50;
  if (!qword_27CF95E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E48, &qword_220DC5978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95E50);
  }

  return result;
}

unint64_t sub_220D7A988()
{
  result = qword_27CF95E88;
  if (!qword_27CF95E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95E80, &qword_220DC59A0);
    sub_220D7B1E4(&qword_27CF95E78, type metadata accessor for StyledLineMark);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95E88);
  }

  return result;
}

uint64_t sub_220D7AA3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E80, &qword_220DC59A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D7AAAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95E80, &qword_220DC59A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D7AB1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D68, &qword_220DC5870);
  (*(*(v5 - 8) + 32))(a2, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EA8, &unk_220DC59B0);
  v7 = v6[12];
  v8 = a1[1];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D58, &qword_220DC5860);
  v10 = *(*(v9 - 8) + 32);
  v10(a2 + v7, v8, v9);
  v10(a2 + v6[16], a1[2], v9);
  v11 = v6[20];
  v12 = a1[3];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D50, &qword_220DC5858);
  (*(*(v13 - 8) + 32))(a2 + v11, v12, v13);
  v14 = v6[24];
  v15 = a1[4];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D48, &qword_220DC5850);
  (*(*(v16 - 8) + 32))(a2 + v14, v15, v16);
  v17 = v6[28];
  v18 = a1[5];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95D40, &qword_220DC5848);
  v20 = *(*(v19 - 8) + 32);

  return v20(a2 + v17, v18, v19);
}

uint64_t sub_220D7AD94(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_11_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t objectdestroyTm()
{
  v3 = type metadata accessor for SunriseSunsetDetailChartContent();
  v4 = OUTLINED_FUNCTION_4_19(v3);
  v46 = *(v5 + 80);
  v47 = v4;
  v44 = *(v6 + 64);
  v45 = (v46 + 16) & ~v46;
  v48 = v0;
  v7 = (v0 + v45);
  v8 = *v7;

  v9 = type metadata accessor for SunriseSunsetDetailChartViewModel(0);
  v10 = &v7[v9[5]];
  v11 = sub_220DBE560();
  OUTLINED_FUNCTION_6(v11);
  v13 = *(v12 + 8);
  v13(v10, v11);
  v14 = type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_10_19(v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v19 = *(v2 + 8);
  }

  else if (!EnumCaseMultiPayload)
  {
    v16 = *(v2 + 8);

    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A50, &unk_220DC5A00) + 48);
    v18 = sub_220DBFFC0();
    if (!__swift_getEnumTagSinglePayload(v2 + v17, 1, v18))
    {
      (*(*(v18 - 8) + 8))(v2 + v17, v18);
    }
  }

  OUTLINED_FUNCTION_6_19(v1[9]);
  v20 = *&v10[v1[10]];

  v21 = *&v10[v1[11]];

  OUTLINED_FUNCTION_6_19(v1[12]);
  OUTLINED_FUNCTION_6_19(v1[13]);
  v22 = v9[6];
  v23 = sub_220DBF1D0();
  OUTLINED_FUNCTION_6(v23);
  (*(v24 + 8))(&v7[v22]);
  v25 = *&v7[v9[7]];

  v26 = *&v7[v9[8]];

  v27 = *&v7[v9[9]];

  v13(&v7[v9[10]], v11);
  v28 = *&v7[v9[11]];

  v29 = *&v7[v9[12]];

  v30 = *&v7[v9[13]];

  v31 = &v7[*(v47 + 20)];
  v32 = *v31;

  v33 = *(v31 + 1);

  v34 = *(v31 + 2);

  v35 = *(v31 + 3);

  v36 = *(v31 + 6);

  v37 = *(v31 + 7);

  v38 = *(v31 + 12);

  v39 = *(v31 + 14);

  v40 = *(v31 + 15);

  v41 = *(v31 + 16);

  v42 = *&v7[*(v47 + 24)];

  return MEMORY[0x2821FE8E8](v48, v45 + v44, v46 | 7);
}

uint64_t sub_220D7B150@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for SunriseSunsetDetailChartContent();
  OUTLINED_FUNCTION_18(v9);
  return sub_220D78358(a1, (v4 + ((*(v10 + 80) + 16) & ~*(v10 + 80))), a2, a3, a4);
}

uint64_t sub_220D7B1E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_17Tm()
{
  v3 = type metadata accessor for SunriseSunsetDetailChartContent();
  v50 = OUTLINED_FUNCTION_4_19(v3);
  v51 = *(v4 + 80);
  v5 = (v51 + 16) & ~v51;
  v49 = *(v6 + 64);
  v52 = v0;
  v7 = v0 + v5;
  v8 = *(v0 + v5);

  v9 = type metadata accessor for SunriseSunsetDetailChartViewModel(0);
  v10 = v0 + v5 + v9[5];
  v11 = sub_220DBE560();
  OUTLINED_FUNCTION_6(v11);
  v13 = *(v12 + 8);
  v13(v10, v11);
  v14 = type metadata accessor for DetailChartDataElement(0);
  OUTLINED_FUNCTION_10_19(v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v21 = *(v2 + 8);
  }

  else if (!EnumCaseMultiPayload)
  {
    v16 = *(v2 + 8);

    v17 = v13;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A50, &unk_220DC5A00) + 48);
    v19 = sub_220DBFFC0();
    v48 = v18;
    v20 = v2 + v18;
    v13 = v17;
    if (!__swift_getEnumTagSinglePayload(v20, 1, v19))
    {
      (*(*(v19 - 8) + 8))(v2 + v48, v19);
    }
  }

  v22 = (v49 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_6_19(v1[9]);
  v23 = *(v10 + v1[10]);

  v24 = *(v10 + v1[11]);

  OUTLINED_FUNCTION_6_19(v1[12]);
  OUTLINED_FUNCTION_6_19(v1[13]);
  v25 = v9[6];
  v26 = sub_220DBF1D0();
  OUTLINED_FUNCTION_6(v26);
  (*(v27 + 8))(v7 + v25);
  v28 = *(v7 + v9[7]);

  v29 = *(v7 + v9[8]);

  v30 = *(v7 + v9[9]);

  v13(v7 + v9[10], v11);
  v31 = *(v7 + v9[11]);

  v32 = *(v7 + v9[12]);

  v33 = *(v7 + v9[13]);

  v34 = (v7 + *(v50 + 20));
  v35 = *v34;

  v36 = v34[1];

  v37 = v34[2];

  v38 = v34[3];

  v39 = v34[6];

  v40 = v34[7];

  v41 = v34[12];

  v42 = v34[14];

  v43 = v34[15];

  v44 = v34[16];

  v45 = *(v7 + *(v50 + 24));

  v46 = *(v52 + v22);

  return MEMORY[0x2821FE8E8](v52, v22 + 8, v51 | 7);
}

uint64_t sub_220D7B53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SunriseSunsetDetailChartContent() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_220D79E28(a1, v2 + v6, v7, a2);
}

uint64_t sub_220D7B5E8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_11_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_220D7B644(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220D7B6A0()
{
  sub_220DC0660();
}

uint64_t sub_220D7B7E4()
{
  sub_220DC0CE0();
  sub_220D7B6A0();
  return sub_220DC0D20();
}

uint64_t sub_220D7B828@<X0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v29 = a1;
  v6 = type metadata accessor for DetailChartDataElement(0);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v27 - v16;
  v18 = *(a2 + 16);
  if (v18)
  {
    v27 = a3;
    v28 = v15;
    v19 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    OUTLINED_FUNCTION_0_20();
    sub_220D7FC40();
    for (i = 1; ; ++i)
    {
      if (v18 == i)
      {
        v25 = v27;
        sub_220D804B8();
        v23 = v25;
        v24 = 0;
        v15 = v28;
        return __swift_storeEnumTagSinglePayload(v23, v24, 1, v15);
      }

      v21 = *(v9 + 72);
      OUTLINED_FUNCTION_0_20();
      sub_220D7FC40();
      v22 = v29(v14, v17);
      if (v3)
      {
        break;
      }

      if (v22)
      {
        sub_220D7FC98(v17, type metadata accessor for DetailChartDataElement);
        sub_220D804B8();
      }

      else
      {
        sub_220D7FC98(v14, type metadata accessor for DetailChartDataElement);
      }
    }

    sub_220D7FC98(v14, type metadata accessor for DetailChartDataElement);
    return sub_220D7FC98(v17, type metadata accessor for DetailChartDataElement);
  }

  else
  {
    v23 = a3;
    v24 = 1;
    return __swift_storeEnumTagSinglePayload(v23, v24, 1, v15);
  }
}

uint64_t SunriseSunsetDetailChartViewModelFactory.__allocating_init(sunElevationCalculator:chartBackgroundFactory:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_220CD570C(a1, v4 + 16);
  sub_220CD570C(a2, v4 + 56);
  return v4;
}

uint64_t SunriseSunsetDetailChartViewModelFactory.init(sunElevationCalculator:chartBackgroundFactory:)(__int128 *a1, __int128 *a2)
{
  sub_220CD570C(a1, v2 + 16);
  sub_220CD570C(a2, v2 + 56);
  return v2;
}

uint64_t SunriseSunsetDetailChartViewModelFactory.makeViewModel(location:startDate:numberOfMinutesShownOnChart:currentWeather:sunEvents:cachedElevations:cachedDateHoursString:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *&v589 = a7;
  v597 = a6;
  v556[1] = a5;
  v592 = a2;
  v593 = a3;
  v600 = a1;
  v567 = a8;
  v572 = sub_220DBF1D0();
  v9 = OUTLINED_FUNCTION_0(v572);
  v566 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_4(v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95F00, &unk_220DC5A50);
  v543 = *(v15 - 8);
  v16 = *(v543 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95F08, &qword_220DC5A60);
  v545 = *(v52 - 8);
  v53 = *(v545 + 64);
  MEMORY[0x28223BE20](v52 - 8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955F0, &qword_220DC2938);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71 - 8);
  OUTLINED_FUNCTION_14(v524 - v73);
  v569 = sub_220DBF070();
  v74 = OUTLINED_FUNCTION_0(v569);
  v563 = v75;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_1();
  v80 = OUTLINED_FUNCTION_14(v79 - v78);
  v582 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(v80);
  v81 = OUTLINED_FUNCTION_0(v582);
  v579 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_57();
  v87 = OUTLINED_FUNCTION_14(v86);
  v603 = type metadata accessor for DetailChartDataElement(v87);
  v88 = OUTLINED_FUNCTION_0(v603);
  v588 = v89;
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_25_0();
  v601 = v105;
  v107 = MEMORY[0x28223BE20](v106);
  v109 = v524 - v108;
  MEMORY[0x28223BE20](v107);
  v111 = v524 - v110;
  v596 = sub_220DC0500();
  v112 = OUTLINED_FUNCTION_0(v596);
  v604 = v113;
  v115 = *(v114 + 64);
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  v117 = MEMORY[0x28223BE20](v116);
  v119 = v524 - v118;
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_14(v120);
  v586 = sub_220DBE740();
  v121 = OUTLINED_FUNCTION_0(v586);
  v123 = v122;
  v125 = *(v124 + 64);
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_1();
  v128 = v127 - v126;
  v562 = sub_220DBE6E0();
  v129 = OUTLINED_FUNCTION_0(v562);
  v561 = v130;
  v132 = *(v131 + 64);
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_1();
  v135 = v134 - v133;
  v136 = sub_220DBE560();
  v137 = OUTLINED_FUNCTION_0(v136);
  v576 = v138;
  v140 = *(v139 + 64);
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v142);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  v151 = MEMORY[0x28223BE20](v150);
  v153 = v524 - v152;
  MEMORY[0x28223BE20](v151);
  v155 = v524 - v154;
  v564 = a4;
  sub_220DBEA60();
  v156 = v600;
  sub_220DBF1C0();
  v591 = v135;
  sub_220DBE600();
  v157 = *(v123 + 8);
  v584 = v128;
  v585 = v123 + 8;
  v583 = v157;
  v157(v128, v586);
  v158 = v576;
  OUTLINED_FUNCTION_38_3(&v590);
  sub_220D7EE58(v156, v155, v597, v159);
  v160 = *(v158 + 16);
  v558 = v155;
  v602 = v136;
  v595 = v158 + 16;
  v590 = v160;
  v160(v111, v155, v136);
  sub_220DC04F0();
  v162 = v161;
  v163 = v603;
  v164 = &v111[v603[8]];
  v165 = 0xE000000000000000;
  *v164 = 0;
  *(v164 + 1) = 0xE000000000000000;
  v587 = type metadata accessor for DetailChartDataElement.ValueLabel(0);
  swift_storeEnumTagMultiPayload();
  *&v111[v163[5]] = v162;
  *&v111[v163[6]] = 0;
  v166 = &v111[v163[7]];
  *v166 = 0;
  v166[8] = 1;
  v167 = &v111[v163[9]];
  *v167 = 0;
  *(v167 + 1) = 0xE000000000000000;
  v168 = &v111[v163[12]];
  *v168 = 0;
  *(v168 + 1) = 0xE000000000000000;
  v169 = &v111[v163[13]];
  *v169 = 0;
  *(v169 + 1) = 0xE000000000000000;
  *&v111[v163[10]] = 0;
  v170 = v163[11];
  v575 = v111;
  *&v111[v170] = 0;
  v607 = MEMORY[0x277D84F90];
  v608 = MEMORY[0x277D84F90];
  v606 = MEMORY[0x277D84F90];
  if (v593 < 0)
  {
LABEL_142:
    __break(1u);
LABEL_143:
    swift_once();
    goto LABEL_17;
  }

  v171 = 0;
  v594 = (v604 + 1);
  v599 = (v158 + 8);
  v604 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_220DBE3B0();
    sub_220D7EE58(v600, v153, v597, v119);
    sub_220DC04F0();
    v173 = v172;
    v174 = v589;
    if (v589 && *(v589 + 16) && (v175 = sub_220D7FE8C(v153), (v176 & 1) != 0))
    {
      v177 = (*(v174 + 56) + 16 * v175);
      v178 = *v177;
      v179 = v177[1];
    }

    else
    {
      OUTLINED_FUNCTION_38_3(&v609);
      sub_220DBF1C0();
      v178 = sub_220DBE4B0();
      v179 = v180;
      v583(v165, v586);
    }

    v590(v109, v153, v602);
    v181 = v603;
    v182 = &v109[v603[8]];
    *v182 = 0;
    *(v182 + 1) = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    *&v109[v181[5]] = v173;
    *&v109[v181[6]] = v173;
    v183 = &v109[v181[7]];
    *v183 = 0;
    v183[8] = 1;
    v184 = &v109[v181[9]];
    *v184 = v178;
    v184[1] = v179;
    v185 = &v109[v181[12]];
    *v185 = 0;
    *(v185 + 1) = 0xE000000000000000;
    v186 = &v109[v181[13]];
    *v186 = 0;
    *(v186 + 1) = 0xE000000000000000;
    *&v109[v181[10]] = 0;
    *&v109[v181[11]] = 0;
    OUTLINED_FUNCTION_0_20();
    sub_220D7FC40();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v192 = v604[2];
      OUTLINED_FUNCTION_19_11();
      sub_220D569D8();
      v604 = v193;
    }

    v165 = v604[2];
    if (v165 >= v604[3] >> 1)
    {
      sub_220D569D8();
      v604 = v194;
    }

    sub_220D7FC98(v109, type metadata accessor for DetailChartDataElement);
    v187 = *v594;
    (*v594)(v119, v596);
    v188 = *v599;
    (*v599)(v153, v602);
    v604[2] = v165 + 1;
    v189 = (*(v588 + 80) + 32) & ~*(v588 + 80);
    v190 = *(v588 + 9);
    sub_220D804B8();
    if (v593 == v171)
    {
      break;
    }

    if (__OFADD__(v171++, 1))
    {
      __break(1u);
      goto LABEL_142;
    }
  }

  v593 = v190;
  v601 = v189;
  v588 = v187;
  v577 = v188;
  if (qword_280FA6600 != -1)
  {
    goto LABEL_143;
  }

LABEL_17:
  OUTLINED_FUNCTION_36_3();
  v195 = qword_280FA6608;
  OUTLINED_FUNCTION_11();
  v196 = OUTLINED_FUNCTION_31_5();
  sub_220D7F650(v575, v196, v197, 1, v574);

  v198 = v556[0];
  sub_220D7FCF0();
  v199 = v569;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v198, 1, v569);
  v201 = v602;
  v202 = v555;
  if (EnumTagSinglePayload == 1)
  {
    sub_220CDA548(v198, &qword_27CF955F0, &qword_220DC2938);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952A0, &unk_220DC4F90);
    v203 = *(v579 + 72);
    v204 = (*(v579 + 80) + 32) & ~*(v579 + 80);
    *(swift_allocObject() + 16) = xmmword_220DC17A0;
    OUTLINED_FUNCTION_5_23();
    v601 = v205;
    sub_220D7FC40();
    v206 = v564;
LABEL_141:
    v496 = v559;
    v497 = v598[10];
    v498 = v598[11];
    __swift_project_boxed_opaque_existential_1(v598 + 7, v497);
    v499 = v560;
    sub_220DBEA60();
    v500 = v600;
    sub_220D7EE58(v600, v499, v597, v496);
    v577(v499, v201);
    (*(v498 + 8))(v605, v500, v206, v496, v497, v498);
    OUTLINED_FUNCTION_52_2();
    v501();
    v597 = v605[1];
    v598 = v605[0];
    OUTLINED_FUNCTION_0_20();
    v603 = v502;
    sub_220D7FC40();
    v503 = v566;
    v504 = *(v566 + 16);
    v505 = v201;
    v506 = v565;
    v504(v565, v500, v572);
    *&v589 = v608;
    v593 = v607;
    v600 = v606;
    v507 = v505;
    v508 = v590;
    v590(v499, v592, v507);
    v509 = type metadata accessor for SunriseSunsetDetailChartViewModel(0);
    v510 = v567;
    *&v567[v509[14]] = 0x4056800000000000;
    *&v510[v509[15]] = 0xC056800000000000;
    v511 = v604;
    *v510 = v604;
    v512 = v509[5];
    sub_220D7FC40();
    v513 = v572;
    v504(&v510[v509[6]], v506, v572);
    *&v510[v509[7]] = v589;
    *&v510[v509[8]] = v593;
    *&v510[v509[9]] = v600;
    v514 = v602;
    v508(&v510[v509[10]], v499, v602);
    *&v510[v509[11]] = v601;
    v515 = &v510[v509[12]];
    v516 = v597;
    *v515 = v598;
    *(v515 + 1) = v516;
    v604 = v511;

    v518 = sub_220D823B8(v517, v506, v499);
    v519 = v577;
    v577(v499, v514);
    (*(v503 + 8))(v506, v513);
    v520 = v603;
    sub_220D7FC98(v571, v603);
    OUTLINED_FUNCTION_1_32();
    sub_220D7FC98(v574, v521);
    sub_220D7FC98(v575, v520);
    OUTLINED_FUNCTION_52_2();
    v522();
    (*(v561 + 8))(v591, v562);
    v519(v558, v514);

    *&v510[v509[13]] = v518;
    return result;
  }

  (*(v563 + 32))(v568, v198, v199);
  OUTLINED_FUNCTION_38_3(&v573);
  sub_220DBF040();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_49_2(&v557);
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(0xEA00000000006B73);
  if (v219)
  {
    v198 = &unk_220DC1D80;
    OUTLINED_FUNCTION_52();
    sub_220CDA548(v207, v208, v209);

    OUTLINED_FUNCTION_52();
    sub_220CDA548(v210, v211, v212);
    v587 = 0;
    OUTLINED_FUNCTION_42_2();
  }

  else
  {
    OUTLINED_FUNCTION_30_6();
    OUTLINED_FUNCTION_43_1();
    v213();
    OUTLINED_FUNCTION_29_5();
    MEMORY[0x28223BE20](v214);
    OUTLINED_FUNCTION_12_20();
    *(v215 - 16) = v202;
    OUTLINED_FUNCTION_32_4(&v546);
    sub_220D7B828(v216, v217, v218);
    v587 = 0;
    OUTLINED_FUNCTION_7_18(v202);
    if (v219)
    {

      OUTLINED_FUNCTION_3_26();
      v220();
      sub_220CDA548(v547, &qword_27CF951E0, &unk_220DC1D80);
      sub_220CDA548(v202, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      OUTLINED_FUNCTION_2_29();
      v199 = v524[1];
      sub_220D804B8();
      v221 = OUTLINED_FUNCTION_9_21(&v591);
      OUTLINED_FUNCTION_33_2(v221, v222, v223, v224);

      v225 = OUTLINED_FUNCTION_27_0();
      sub_220D7FC98(v225, v226);
      OUTLINED_FUNCTION_3_26();
      v227();
      sub_220CDA548(v547, &qword_27CF951E0, &unk_220DC1D80);
    }

    OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_36_3();
  }

  v228 = OUTLINED_FUNCTION_13_14(&v591);
  __swift_storeEnumTagSinglePayload(v228, v230, v231, *(v229 - 256));
  sub_220DBF050();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_16_17();
  v232 = v533;
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(v232);
  if (v219)
  {
    OUTLINED_FUNCTION_52();
    sub_220CDA548(v233, v234, v235);

    OUTLINED_FUNCTION_52();
    sub_220CDA548(v236, v237, v238);
  }

  else
  {
    OUTLINED_FUNCTION_30_6();
    v239 = v524[10];
    v240();
    OUTLINED_FUNCTION_29_5();
    MEMORY[0x28223BE20](v241);
    OUTLINED_FUNCTION_12_20();
    *(v242 - 16) = v239;
    v243 = v525;
    v244 = v587;
    sub_220D7B828(sub_220D81A90, v604, v525);
    OUTLINED_FUNCTION_7_18(v243);
    v587 = v244;
    if (v245)
    {

      v246 = OUTLINED_FUNCTION_39_3();
      v198(v246);
      sub_220CDA548(v548, &qword_27CF951E0, &unk_220DC1D80);
      sub_220CDA548(v243, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      OUTLINED_FUNCTION_2_29();
      sub_220D804B8();
      v247 = OUTLINED_FUNCTION_9_21(&v592);
      OUTLINED_FUNCTION_33_2(v247, v248, v249, v250);

      v251 = OUTLINED_FUNCTION_27_0();
      sub_220D7FC98(v251, v252);
      v253 = OUTLINED_FUNCTION_39_3();
      v198(v253);
      sub_220CDA548(v548, &qword_27CF951E0, &unk_220DC1D80);
    }

    v199 = v557;
  }

  v254 = v532;
  v255 = OUTLINED_FUNCTION_13_14(&v592);
  OUTLINED_FUNCTION_37_3(v255, v256, v257, v258);
  sub_220DBEFE0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_11();
  *&v589 = v195;
  v259 = OUTLINED_FUNCTION_31_5();
  v261 = v260;
  OUTLINED_FUNCTION_49_2(&v560);
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(0x6C6163697475614ELL);
  if (v219)
  {
    sub_220CDA548(v199, &qword_27CF951E0, &unk_220DC1D80);

    v262 = 0x6C6163697475614ELL;
    v263 = &qword_27CF951E0;
    v264 = &unk_220DC1D80;
  }

  else
  {
    OUTLINED_FUNCTION_30_6();
    v265 = v524[11];
    OUTLINED_FUNCTION_43_1();
    v267 = v266();
    MEMORY[0x28223BE20](v267);
    OUTLINED_FUNCTION_12_20();
    *(v268 - 16) = v265;
    OUTLINED_FUNCTION_38_3(&v548);
    v269 = v587;
    sub_220D7B828(v270, v604, v271);
    v587 = v269;
    OUTLINED_FUNCTION_7_18(v199);
    if (!v272)
    {
      OUTLINED_FUNCTION_2_29();
      v274 = v524[3];
      sub_220D804B8();
      OUTLINED_FUNCTION_33_2(v274, v259, v261, v573);

      v275 = OUTLINED_FUNCTION_27_0();
      sub_220D7FC98(v275, v276);
      OUTLINED_FUNCTION_3_26();
      v277();
      sub_220CDA548(v557, &qword_27CF951E0, &unk_220DC1D80);
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_3_26();
    v273();
    sub_220CDA548(v557, &qword_27CF951E0, &unk_220DC1D80);
    v263 = &qword_27CF95F00;
    v264 = &unk_220DC5A50;
    v262 = v199;
  }

  sub_220CDA548(v262, v263, v264);
LABEL_40:
  v278 = v550;
  v279 = v534;
  v280 = v549;
  v281 = OUTLINED_FUNCTION_13_14(&v593);
  OUTLINED_FUNCTION_37_3(v281, v282, v283, v284);
  sub_220DBEFF0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_16_17();
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(v279);
  v285 = v587;
  if (v219)
  {
    v254 = &qword_27CF951E0;
    OUTLINED_FUNCTION_40_3(v278);

    OUTLINED_FUNCTION_40_3(v279);
    OUTLINED_FUNCTION_48_1();
  }

  else
  {
    (*(v576 + 32))(v254, v279, v201);
    OUTLINED_FUNCTION_29_5();
    MEMORY[0x28223BE20](v286);
    OUTLINED_FUNCTION_12_20();
    *(v287 - 16) = v254;
    v279 = v254;
    OUTLINED_FUNCTION_32_4(&v550);
    sub_220D7B828(v288, v289, v290);
    OUTLINED_FUNCTION_7_18(v254);
    if (v291)
    {

      OUTLINED_FUNCTION_3_26();
      v292();
      sub_220CDA548(v550, &qword_27CF951E0, &unk_220DC1D80);
      sub_220CDA548(v254, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      OUTLINED_FUNCTION_2_29();
      v278 = v524[4];
      sub_220D804B8();
      v293 = OUTLINED_FUNCTION_9_21(&v594);
      OUTLINED_FUNCTION_33_2(v293, v294, v295, v296);

      v297 = OUTLINED_FUNCTION_27_0();
      sub_220D7FC98(v297, v298);
      OUTLINED_FUNCTION_3_26();
      v299();
      sub_220CDA548(v550, &qword_27CF951E0, &unk_220DC1D80);
    }

    OUTLINED_FUNCTION_48_1();
    v280 = v549;
  }

  v300 = OUTLINED_FUNCTION_13_14(&v594);
  OUTLINED_FUNCTION_37_3(v300, v301, v302, v303);
  sub_220DBF000();
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_16_17();
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(v254);
  if (v219)
  {
    v304 = v278;
    v308 = v254;
    OUTLINED_FUNCTION_40_3(v304);

    OUTLINED_FUNCTION_40_3(v254);
    OUTLINED_FUNCTION_46_2();
  }

  else
  {
    (*(v576 + 32))(v280, v254, v201);
    OUTLINED_FUNCTION_29_5();
    MEMORY[0x28223BE20](v305);
    OUTLINED_FUNCTION_12_20();
    *(v306 - 16) = v280;
    v307 = v528;
    sub_220D7B828(sub_220D81A90, v604, v528);
    v308 = v307;
    OUTLINED_FUNCTION_7_18(v307);
    if (v309)
    {

      OUTLINED_FUNCTION_3_26();
      v310();
      sub_220CDA548(v551, &qword_27CF951E0, &unk_220DC1D80);
      sub_220CDA548(v307, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      v308 = v524[5];
      sub_220D804B8();
      v311 = OUTLINED_FUNCTION_9_21(&v595);
      OUTLINED_FUNCTION_33_2(v311, v312, v313, v314);

      sub_220D7FC98(v308, type metadata accessor for DetailChartDataElement);
      OUTLINED_FUNCTION_3_26();
      v315();
      sub_220CDA548(v551, &qword_27CF951E0, &unk_220DC1D80);
    }

    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_36_3();
  }

  v316 = OUTLINED_FUNCTION_13_14(&v595);
  OUTLINED_FUNCTION_37_3(v316, v317, v318, v319);
  sub_220DBF010();
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_16_17();
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(v279);
  v320 = v576;
  if (v219)
  {
    v332 = v285;
    v285 = &qword_27CF951E0;
    OUTLINED_FUNCTION_52();
    sub_220CDA548(v321, v322, v323);

    OUTLINED_FUNCTION_52();
    sub_220CDA548(v324, v325, v326);
    OUTLINED_FUNCTION_44_2();
  }

  else
  {
    OUTLINED_FUNCTION_30_6();
    v327 = v526;
    v328(v526, v279, v201);
    OUTLINED_FUNCTION_29_5();
    MEMORY[0x28223BE20](v329);
    OUTLINED_FUNCTION_12_20();
    *(v330 - 16) = v327;
    v331 = v529;
    sub_220D7B828(sub_220D81A90, v604, v529);
    v332 = v285;
    OUTLINED_FUNCTION_7_18(v331);
    if (v333)
    {

      OUTLINED_FUNCTION_3_26();
      v334();
      sub_220CDA548(v552, &qword_27CF951E0, &unk_220DC1D80);
      sub_220CDA548(v331, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      OUTLINED_FUNCTION_2_29();
      v308 = v524[6];
      sub_220D804B8();
      v335 = OUTLINED_FUNCTION_9_21(&v596);
      OUTLINED_FUNCTION_33_2(v335, v336, v337, v338);

      v339 = OUTLINED_FUNCTION_27_0();
      sub_220D7FC98(v339, v340);
      OUTLINED_FUNCTION_3_26();
      v341();
      sub_220CDA548(v552, &qword_27CF951E0, &unk_220DC1D80);
    }

    OUTLINED_FUNCTION_44_2();
    v320 = v576;
    OUTLINED_FUNCTION_36_3();
  }

  v342 = OUTLINED_FUNCTION_13_14(&v596);
  OUTLINED_FUNCTION_37_3(v342, v343, v344, v345);
  sub_220DBF030();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_27_0();
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(v285);
  if (v219)
  {
    OUTLINED_FUNCTION_52();
    sub_220CDA548(v346, v347, v348);

    OUTLINED_FUNCTION_52();
    sub_220CDA548(v349, v350, v351);
    v352 = v536;
    v353 = v535;
    v358 = v332;
  }

  else
  {
    OUTLINED_FUNCTION_30_6();
    v354 = v527;
    OUTLINED_FUNCTION_43_1();
    v356 = v355();
    MEMORY[0x28223BE20](v356);
    OUTLINED_FUNCTION_12_20();
    *(v357 - 16) = v354;
    OUTLINED_FUNCTION_38_3(&v555);
    v358 = v332;
    sub_220D7B828(v359, v604, v360);
    OUTLINED_FUNCTION_7_18(v308);
    if (v361)
    {

      OUTLINED_FUNCTION_3_26();
      v362();
      sub_220CDA548(v553, &qword_27CF951E0, &unk_220DC1D80);
      sub_220CDA548(v308, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      v363 = v524[7];
      sub_220D804B8();
      v364 = OUTLINED_FUNCTION_9_21(&v586);
      OUTLINED_FUNCTION_33_2(v364, v365, v366, v367);

      sub_220D7FC98(v363, type metadata accessor for DetailChartDataElement);
      OUTLINED_FUNCTION_3_26();
      v368();
      sub_220CDA548(v553, &qword_27CF951E0, &unk_220DC1D80);
    }

    v352 = v536;
    v320 = v576;
    v353 = v535;
  }

  v369 = v554;
  v370 = OUTLINED_FUNCTION_13_14(&v586);
  __swift_storeEnumTagSinglePayload(v370, v372, v373, *(v371 - 256));
  sub_220DBF060();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_16_17();
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(v352);
  if (v219)
  {
    OUTLINED_FUNCTION_40_3(v369);

    OUTLINED_FUNCTION_40_3(v352);
    v374 = v539;
  }

  else
  {
    OUTLINED_FUNCTION_30_6();
    v375(v353, v352, v201);
    OUTLINED_FUNCTION_29_5();
    MEMORY[0x28223BE20](v376);
    OUTLINED_FUNCTION_12_20();
    *(v377 - 16) = v353;
    OUTLINED_FUNCTION_32_4(v556);
    sub_220D7B828(v378, v379, v380);
    v381 = v369;
    OUTLINED_FUNCTION_7_18(v369);
    v374 = v539;
    if (v382)
    {

      OUTLINED_FUNCTION_3_26();
      v383();
      sub_220CDA548(v554, &qword_27CF951E0, &unk_220DC1D80);
      sub_220CDA548(v381, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      v384 = v524[8];
      sub_220D804B8();
      v385 = OUTLINED_FUNCTION_9_21(&v587);
      sub_220D7F650(v385, v386, v387, 1, v388);

      sub_220D7FC98(v384, type metadata accessor for DetailChartDataElement);
      OUTLINED_FUNCTION_3_26();
      v389();
      sub_220CDA548(v554, &qword_27CF951E0, &unk_220DC1D80);
    }

    OUTLINED_FUNCTION_36_3();
  }

  v390 = OUTLINED_FUNCTION_13_14(&v587);
  __swift_storeEnumTagSinglePayload(v390, v392, v393, *(v391 - 256));
  sub_220DBF020();
  OUTLINED_FUNCTION_2_0();
  v394 = OUTLINED_FUNCTION_10_20();
  v396 = v395;
  v397 = v537;
  sub_220D7FCF0();
  OUTLINED_FUNCTION_11_15(v397);
  if (v219)
  {
    v587 = v358;
    OUTLINED_FUNCTION_52();
    sub_220CDA548(v398, v399, v400);

    OUTLINED_FUNCTION_52();
LABEL_81:
    sub_220CDA548(v401, v402, v403);
    goto LABEL_82;
  }

  v404 = v530;
  (*(v320 + 32))(v530, v397, v201);
  OUTLINED_FUNCTION_29_5();
  MEMORY[0x28223BE20](v405);
  OUTLINED_FUNCTION_12_20();
  *(v406 - 16) = v404;
  v407 = v531;
  sub_220D7B828(sub_220D80510, v604, v531);
  OUTLINED_FUNCTION_7_18(v407);
  v587 = v358;
  if (v408)
  {

    OUTLINED_FUNCTION_3_26();
    v409();
    sub_220CDA548(v374, &qword_27CF951E0, &unk_220DC1D80);
    v402 = &qword_27CF95F00;
    v403 = &unk_220DC5A50;
    v401 = v407;
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_2_29();
  v410 = v524[9];
  sub_220D804B8();
  OUTLINED_FUNCTION_33_2(v410, v394, v396, v570);

  v411 = OUTLINED_FUNCTION_27_0();
  sub_220D7FC98(v411, v412);
  OUTLINED_FUNCTION_3_26();
  v413();
  sub_220CDA548(v374, &qword_27CF951E0, &unk_220DC1D80);
LABEL_82:
  v414 = OUTLINED_FUNCTION_13_14(&v588);
  v416 = *(v415 - 256);
  __swift_storeEnumTagSinglePayload(v414, v417, v418, v416);
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95F10, &qword_220DC5A68);
  v420 = *(v543 + 72);
  v421 = (*(v543 + 80) + 32) & ~*(v543 + 80);
  v422 = swift_allocObject();
  v589 = xmmword_220DC17C0;
  *(v422 + 16) = xmmword_220DC17C0;
  v586 = v422;
  v423 = v422 + v421;
  v424 = v538;
  sub_220D7FCF0();
  OUTLINED_FUNCTION_18_13(v424);
  v425 = v542;
  v426 = v540;
  if (v219)
  {
    sub_220CDA548(v424, &qword_27CF95F08, &qword_220DC5A60);
    v429 = 1;
  }

  else
  {
    v427 = *(v416 + 28);
    OUTLINED_FUNCTION_0_20();
    sub_220D7FC40();
    OUTLINED_FUNCTION_1_32();
    sub_220D7FC98(v424, v428);
    v429 = 0;
  }

  OUTLINED_FUNCTION_41_2(v423, v429);
  sub_220D7FCF0();
  OUTLINED_FUNCTION_18_13(v426);
  if (v219)
  {
    sub_220CDA548(v426, &qword_27CF95F08, &qword_220DC5A60);
    v432 = 1;
  }

  else
  {
    v430 = *(v416 + 28);
    OUTLINED_FUNCTION_0_20();
    sub_220D7FC40();
    OUTLINED_FUNCTION_1_32();
    sub_220D7FC98(v426, v431);
    v432 = 0;
  }

  OUTLINED_FUNCTION_41_2(v423 + v420, v432);
  v433 = swift_allocObject();
  *(v433 + 16) = v589;
  v584 = v433;
  v434 = v433 + v421;
  v435 = v541;
  sub_220D7FCF0();
  OUTLINED_FUNCTION_18_13(v435);
  if (v219)
  {
    sub_220CDA548(v435, &qword_27CF95F08, &qword_220DC5A60);
    v438 = 1;
  }

  else
  {
    v436 = *(v416 + 28);
    OUTLINED_FUNCTION_0_20();
    sub_220D7FC40();
    OUTLINED_FUNCTION_1_32();
    sub_220D7FC98(v435, v437);
    v438 = 0;
  }

  OUTLINED_FUNCTION_41_2(v434, v438);
  sub_220D7FCF0();
  OUTLINED_FUNCTION_18_13(v425);
  if (v219)
  {
    sub_220CDA548(v425, &qword_27CF95F08, &qword_220DC5A60);
    v441 = 1;
  }

  else
  {
    v439 = *(v416 + 28);
    OUTLINED_FUNCTION_0_20();
    sub_220D7FC40();
    OUTLINED_FUNCTION_1_32();
    sub_220D7FC98(v425, v440);
    v441 = 0;
  }

  OUTLINED_FUNCTION_41_2(v434 + v420, v441);
  v442 = swift_allocObject();
  *(v442 + 16) = v589;
  v585 = v442;
  v443 = v442 + v421;
  OUTLINED_FUNCTION_49_2(&v572);
  sub_220D7FCF0();
  OUTLINED_FUNCTION_18_13(v419);
  if (v219)
  {
    sub_220CDA548(v419, &qword_27CF95F08, &qword_220DC5A60);
    v446 = 1;
  }

  else
  {
    v444 = *(v416 + 28);
    OUTLINED_FUNCTION_0_20();
    sub_220D7FC40();
    OUTLINED_FUNCTION_1_32();
    sub_220D7FC98(v419, v445);
    v446 = 0;
  }

  v447 = v578;
  v448 = v544;
  OUTLINED_FUNCTION_41_2(v443, v446);
  sub_220D7FCF0();
  OUTLINED_FUNCTION_18_13(v448);
  if (v219)
  {
    sub_220CDA548(v448, &qword_27CF95F08, &qword_220DC5A60);
    v451 = 1;
  }

  else
  {
    v449 = *(v416 + 28);
    OUTLINED_FUNCTION_0_20();
    sub_220D7FC40();
    OUTLINED_FUNCTION_1_32();
    sub_220D7FC98(v448, v450);
    v451 = 0;
  }

  v452 = v581;
  *&v589 = v443;
  OUTLINED_FUNCTION_41_2(v443 + v420, v451);
  v453 = 0;
  v454 = MEMORY[0x277D84F90];
  do
  {
    v455 = v453;
    sub_220D7FCF0();
    OUTLINED_FUNCTION_43_1();
    sub_220D7FD48();
    OUTLINED_FUNCTION_7_18(v447);
    if (v219)
    {
      sub_220CDA548(v447, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      OUTLINED_FUNCTION_0_20();
      sub_220D804B8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v459 = *(v454 + 16);
        OUTLINED_FUNCTION_19_11();
        sub_220D569D8();
        v454 = v460;
      }

      v458 = *(v454 + 16);
      v457 = *(v454 + 24);
      if (v458 >= v457 >> 1)
      {
        OUTLINED_FUNCTION_27_7(v457);
        sub_220D569D8();
        v454 = v461;
      }

      *(v454 + 16) = v458 + 1;
      OUTLINED_FUNCTION_0_20();
      sub_220D804B8();
      v452 = v581;
      v447 = v578;
    }

    v453 = 1;
  }

  while ((v455 & 1) == 0);

  sub_220D7FA3C(v454);
  v462 = 0;
  v463 = MEMORY[0x277D84F90];
  do
  {
    v464 = v462;
    OUTLINED_FUNCTION_49_2(&v606);
    sub_220D7FCF0();
    sub_220D7FD48();
    OUTLINED_FUNCTION_7_18(v452);
    if (v219)
    {
      v465 = OUTLINED_FUNCTION_20();
      sub_220CDA548(v465, v466, &unk_220DC5A50);
    }

    else
    {
      OUTLINED_FUNCTION_0_20();
      sub_220D804B8();
      v467 = swift_isUniquelyReferenced_nonNull_native();
      if ((v467 & 1) == 0)
      {
        v470 = *(v463 + 16);
        OUTLINED_FUNCTION_19_11();
        sub_220D569D8();
        v463 = v471;
      }

      v469 = *(v463 + 16);
      v468 = *(v463 + 24);
      if (v469 >= v468 >> 1)
      {
        OUTLINED_FUNCTION_27_7(v468);
        sub_220D569D8();
        v463 = v472;
      }

      *(v463 + 16) = v469 + 1;
      OUTLINED_FUNCTION_0_20();
      sub_220D804B8();
      v452 = v581;
    }

    v462 = 1;
  }

  while ((v464 & 1) == 0);

  sub_220D7FA3C(v463);
  v473 = 0;
  v474 = MEMORY[0x277D84F90];
  v475 = v546;
  do
  {
    v476 = v473;
    sub_220D7FCF0();
    sub_220D7FD48();
    OUTLINED_FUNCTION_7_18(v475);
    if (v219)
    {
      sub_220CDA548(v475, &qword_27CF95F00, &unk_220DC5A50);
    }

    else
    {
      OUTLINED_FUNCTION_0_20();
      sub_220D804B8();
      v477 = swift_isUniquelyReferenced_nonNull_native();
      if ((v477 & 1) == 0)
      {
        v479 = *(v474 + 16);
        OUTLINED_FUNCTION_19_11();
        sub_220D569D8();
        v474 = v480;
      }

      v478 = *(v474 + 16);
      if (v478 >= *(v474 + 24) >> 1)
      {
        sub_220D569D8();
        v474 = v481;
      }

      *(v474 + 16) = v478 + 1;
      OUTLINED_FUNCTION_0_20();
      sub_220D804B8();
    }

    v473 = 1;
  }

  while ((v476 & 1) == 0);
  swift_setDeallocating();
  sub_220D7FDA0(&qword_27CF95F00, &unk_220DC5A50);
  sub_220D7FA3C(v474);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95F18, &qword_220DC5A70);
  v482 = *(v545 + 72);
  v483 = (*(v545 + 80) + 32) & ~*(v545 + 80);
  v484 = 10;
  v485 = swift_allocObject();
  *(v485 + 16) = xmmword_220DC5A30;
  v486 = v485 + v483;
  sub_220D7FCF0();
  OUTLINED_FUNCTION_21_9(&v593);
  OUTLINED_FUNCTION_21_9(&v591);
  OUTLINED_FUNCTION_21_9(&v586);
  OUTLINED_FUNCTION_5_23();
  sub_220D7FC40();
  __swift_storeEnumTagSinglePayload(v486 + 4 * v482, 0, 1, v582);
  OUTLINED_FUNCTION_21_9(&v587);
  OUTLINED_FUNCTION_21_9(&v588);
  OUTLINED_FUNCTION_21_9(&v592);
  OUTLINED_FUNCTION_21_9(&v594);
  OUTLINED_FUNCTION_21_9(&v596);
  v487 = MEMORY[0x277D84F90];
  v488 = v580;
  do
  {
    sub_220D7FCF0();
    OUTLINED_FUNCTION_52();
    sub_220D7FD48();
    if (__swift_getEnumTagSinglePayload(v488, 1, v582) == 1)
    {
      sub_220CDA548(v488, &qword_27CF95F08, &qword_220DC5A60);
    }

    else
    {
      OUTLINED_FUNCTION_5_23();
      sub_220D804B8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v492 = *(v487 + 16);
        OUTLINED_FUNCTION_19_11();
        sub_220D56910();
        v487 = v493;
      }

      v490 = *(v487 + 16);
      v489 = *(v487 + 24);
      if (v490 >= v489 >> 1)
      {
        OUTLINED_FUNCTION_27_7(v489);
        sub_220D56910();
        v487 = v494;
      }

      *(v487 + 16) = v490 + 1;
      v491 = v487 + ((*(v579 + 80) + 32) & ~*(v579 + 80)) + *(v579 + 72) * v490;
      OUTLINED_FUNCTION_5_23();
      sub_220D804B8();
      v488 = v580;
    }

    v486 += v482;
    --v484;
  }

  while (v484);
  swift_setDeallocating();
  sub_220D7FDA0(&qword_27CF95F08, &qword_220DC5A60);
  v605[0] = v487;

  v495 = v587;
  sub_220D80410(v605);
  if (!v495)
  {

    OUTLINED_FUNCTION_20_6(&v588);
    OUTLINED_FUNCTION_20_6(&v587);
    OUTLINED_FUNCTION_20_6(&v586);
    OUTLINED_FUNCTION_20_6(&v596);
    OUTLINED_FUNCTION_20_6(&v595);
    OUTLINED_FUNCTION_20_6(&v594);
    OUTLINED_FUNCTION_20_6(&v593);
    OUTLINED_FUNCTION_20_6(&v592);
    OUTLINED_FUNCTION_20_6(&v591);
    (*(v563 + 8))(v568, v569);
    v601 = v605[0];
    v206 = v564;
    v201 = v602;
    goto LABEL_141;
  }

  __break(1u);
  return result;
}

uint64_t sub_220D7EE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95AE8, &qword_220DC47B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v69 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v61 - v13;
  v70 = sub_220DBE560();
  v68 = *(v70 - 8);
  v15 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v67 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220DBE1A0();
  v74 = *(v17 - 8);
  v75 = v17;
  v18 = *(v74 + 64);
  MEMORY[0x28223BE20](v17);
  v73 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_220DBE740();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_220DBE6E0();
  v71 = *(v25 - 8);
  v72 = v25;
  v26 = *(v71 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_220DC0500();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v34 = &v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v51 = v4[5];
    v52 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v51);
    return (*(v52 + 8))(a1, v76, v51, v52);
  }

  v64 = v32;
  v65 = v31;
  v66 = v4;
  if (*(a3 + 16))
  {
    v35 = sub_220D7FE8C(v76);
    if (v36)
    {
      v37 = v64;
      v38 = v65;
      (*(v64 + 16))(v34, *(a3 + 56) + *(v64 + 72) * v35, v65);
      return (*(v37 + 32))(a4, v34, v38);
    }
  }

  v62 = a1;
  v63 = a4;
  sub_220DBF1C0();
  sub_220DBE600();
  (*(v21 + 8))(v24, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
  v40 = sub_220DBE6C0();
  v41 = *(v40 - 8);
  v42 = *(v41 + 72);
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_220DC5A40;
  v45 = v44 + v43;
  v46 = *(v41 + 104);
  v46(v45, *MEMORY[0x277CC9988], v40);
  v46(v45 + v42, *MEMORY[0x277CC9968], v40);
  v46(v45 + 2 * v42, *MEMORY[0x277CC9998], v40);
  v46(v45 + 3 * v42, *MEMORY[0x277CC9980], v40);
  v46(v45 + 4 * v42, *MEMORY[0x277CC99A0], v40);
  sub_220CE05C8(v44);
  v47 = v73;
  v48 = v76;
  sub_220DBE630();

  sub_220DBE660();
  v49 = v70;
  if (__swift_getEnumTagSinglePayload(v14, 1, v70) == 1)
  {
    sub_220CDA548(v14, &qword_27CF951E0, &unk_220DC1D80);
    v50 = v66;
LABEL_10:
    v59 = v50[5];
    v60 = v50[6];
    __swift_project_boxed_opaque_existential_1(v50 + 2, v59);
    (*(v60 + 8))(v62, v48, v59, v60);
    (*(v74 + 8))(v47, v75);
    return (*(v71 + 8))(v28, v72);
  }

  v54 = v67;
  v53 = v68;
  (*(v68 + 32))(v67, v14, v49);
  v55 = v69;
  sub_220D7F588(v54, a3, v69);
  (*(v53 + 8))(v54, v49);
  v56 = v65;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, 1, v65);
  v58 = v63;
  v50 = v66;
  if (EnumTagSinglePayload == 1)
  {
    sub_220CDA548(v55, &qword_27CF95AE8, &qword_220DC47B0);
    goto LABEL_10;
  }

  (*(v74 + 8))(v47, v75);
  (*(v71 + 8))(v28, v72);
  return (*(v64 + 32))(v58, v55, v56);
}

uint64_t sub_220D7F588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_220D7FE8C(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = sub_220DC0500();
    (*(*(v9 - 8) + 16))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_220DC0500();
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_220D7F650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_220DBE740();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBF1C0();
  v15 = sub_220DBE4A0();
  v48 = v16;
  v49 = v15;
  (*(v11 + 8))(v14, v10);
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_220DC17A0;
  v18 = *(a1 + *(type metadata accessor for DetailChartDataElement(0) + 20));
  v19 = MEMORY[0x277D83A80];
  *(v17 + 56) = MEMORY[0x277D839F8];
  *(v17 + 64) = v19;
  *(v17 + 32) = v18;
  v20 = sub_220DC05F0();
  v22 = v21;

  if (a3)
  {

    sub_220D56830(0, 1, 1, MEMORY[0x277D84F90]);
    v24 = v23;
    v26 = *(v23 + 16);
    v25 = *(v23 + 24);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      sub_220D56830(v25 > 1, v26 + 1, 1, v23);
      v24 = v44;
    }

    *(v24 + 16) = v27;
    v28 = v24 + 16 * v26;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    if ((a4 & 1) == 0)
    {

      goto LABEL_15;
    }

    v29 = *(v24 + 24);
    if ((v26 + 2) > (v29 >> 1))
    {
      sub_220D56830(v29 > 1, v26 + 2, 1, v24);
      v24 = v46;
    }

    *(v24 + 16) = v26 + 2;
    v30 = v24 + 16 * v27;
  }

  else
  {
    sub_220D56830(0, 1, 1, MEMORY[0x277D84F90]);
    v24 = v31;
    v33 = *(v31 + 16);
    v32 = *(v31 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_220D56830(v32 > 1, v33 + 1, 1, v31);
      v24 = v45;
    }

    *(v24 + 16) = v33 + 1;
    v30 = v24 + 16 * v33;
  }

  *(v30 + 32) = v20;
  *(v30 + 40) = v22;
LABEL_15:
  v50 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95750, &qword_220DC5B30);
  sub_220D3A694();
  v34 = sub_220DC0570();
  v36 = v35;

  v37 = sub_220DBE560();
  (*(*(v37 - 8) + 16))(a5, a1, v37);
  v38 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0);
  v39 = v38[7];
  result = sub_220D7FC40();
  v41 = (a5 + v38[5]);
  v42 = v48;
  *v41 = v49;
  v41[1] = v42;
  v43 = (a5 + v38[6]);
  *v43 = v34;
  v43[1] = v36;
  return result;
}

uint64_t sub_220D7FA3C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_220D8198C(result, 1, sub_220D569D8);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for DetailChartDataElement(0);
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

BOOL sub_220D7FB50()
{
  sub_220DBE470();
  v1 = fabs(v0);
  sub_220DBE470();
  return v1 < fabs(v2);
}

uint64_t SunriseSunsetDetailChartViewModelFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t SunriseSunsetDetailChartViewModelFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_220D7FC40()
{
  OUTLINED_FUNCTION_6_4();
  v2 = v1(0);
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_20();
  v6(v5);
  return v0;
}

uint64_t sub_220D7FC98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220D7FCF0()
{
  OUTLINED_FUNCTION_6_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_20();
  v7(v6);
  return v0;
}

uint64_t sub_220D7FD48()
{
  OUTLINED_FUNCTION_6_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_20();
  v7(v6);
  return v0;
}

uint64_t sub_220D7FDA0(uint64_t *a1, uint64_t *a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8) + 80);
  v4 = *(v2 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v2, 32, 7);
}

uint64_t sub_220D7FE3C(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v2, 32, 7);
}

unint64_t sub_220D7FE8C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_220DBE560();
  sub_220D14970(&qword_280FA77A0);
  v5 = sub_220DC0550();

  return sub_220D7FF7C(a1, v5);
}

unint64_t sub_220D7FF10(char a1)
{
  v3 = *(v1 + 40);
  sub_220DC0CE0();
  sub_220D7B6A0();
  v4 = sub_220DC0D20();

  return sub_220D80124(a1, v4);
}

unint64_t sub_220D7FF7C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_220DBE560();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_220D14970(&qword_27CF95528);
    v10 = sub_220DC05B0();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_220D80124(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x79746964696D7568;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6572757373657270;
          break;
        case 2:
          v8 = 0xD000000000000012;
          v7 = 0x8000000220DC8A80;
          break;
        case 3:
          v8 = 0x74617265706D6574;
          v7 = 0xEB00000000657275;
          break;
        case 4:
          v8 = 0xD000000000000014;
          v7 = 0x8000000220DC8AA0;
          break;
        case 5:
          v7 = 0xE700000000000000;
          v8 = 0x7865646E497675;
          break;
        case 6:
          v8 = 0x696C696269736976;
          v7 = 0xEA00000000007974;
          break;
        case 7:
          v7 = 0xE400000000000000;
          v8 = 1684957559;
          break;
        case 8:
          v8 = 0x664F65636E616863;
          v7 = 0xEC0000006E696152;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x79746964696D7568;
      switch(a1)
      {
        case 1:
          v10 = 0x6572757373657270;
          break;
        case 2:
          v10 = 0xD000000000000012;
          v9 = 0x8000000220DC8A80;
          break;
        case 3:
          v10 = 0x74617265706D6574;
          v9 = 0xEB00000000657275;
          break;
        case 4:
          v10 = 0xD000000000000014;
          v9 = 0x8000000220DC8AA0;
          break;
        case 5:
          v9 = 0xE700000000000000;
          v10 = 0x7865646E497675;
          break;
        case 6:
          v10 = 0x696C696269736976;
          v9 = 0xEA00000000007974;
          break;
        case 7:
          v9 = 0xE400000000000000;
          v10 = 1684957559;
          break;
        case 8:
          v10 = 0x664F65636E616863;
          v9 = 0xEC0000006E696152;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_220DC0CA0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_220D80410(uint64_t *a1)
{
  v2 = *(type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220D81A64(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_220D8059C(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_220D804B8()
{
  OUTLINED_FUNCTION_6_4();
  v2 = v1(0);
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_20();
  v6(v5);
  return v0;
}

uint64_t sub_220D8059C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_220DC0C60();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0);
        v6 = sub_220DC0760();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_220D80900(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_220D806CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_220D806CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0);
  v8 = *(*(v33 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v33);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v32 = v17;
    v26 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v30 = v19;
      v31 = a3;
      v28 = v22;
      v29 = v21;
      do
      {
        sub_220D7FC40();
        sub_220D7FC40();
        v23 = sub_220DBE440();
        sub_220D7FC98(v12, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
        result = sub_220D7FC98(v16, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
        if ((v23 & 1) == 0)
        {
          break;
        }

        if (!v32)
        {
          __break(1u);
          return result;
        }

        sub_220D804B8();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_220D804B8();
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v31 + 1;
      v19 = v30 + v26;
      v21 = v29 - 1;
      v22 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_220D80900(uint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v4;
  v99 = a1;
  v113 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0);
  v108 = *(v113 - 8);
  v9 = *(v108 + 64);
  v10 = MEMORY[0x28223BE20](v113);
  v103 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v112 = &v96 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v114 = &v96 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v96 - v16;
  v110 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_101:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v90 = v20 + 16;
      v91 = *(v20 + 2);
      for (i = v20; v91 >= 2; v20 = i)
      {
        if (!*v110)
        {
          goto LABEL_139;
        }

        v92 = &v20[16 * v91];
        v93 = *v92;
        v20 = &v90[2 * v91];
        v94 = *(v20 + 1);
        sub_220D811D4(*v110 + *(v108 + 72) * *v92, *v110 + *(v108 + 72) * *v20, *v110 + *(v108 + 72) * v94, v5);
        if (v6)
        {
          break;
        }

        if (v94 < v93)
        {
          goto LABEL_127;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_128;
        }

        *v92 = v93;
        *(v92 + 1) = v94;
        v95 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_129;
        }

        v91 = *v90 - 1;
        memmove(v20, v20 + 16, 16 * v95);
        *v90 = v91;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v20 = sub_220D81650(v20);
    goto LABEL_103;
  }

  v98 = a4;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v104 = &v96 - v16;
  while (1)
  {
    v21 = v19++;
    i = v20;
    v100 = v21;
    if (v19 < v18)
    {
      v22 = *v110;
      v5 = *(v108 + 72);
      v23 = v21;
      v24 = *v110 + v5 * v19;
      v107 = v18;
      sub_220D7FC40();
      v25 = v114;
      sub_220D7FC40();
      LODWORD(v106) = sub_220DBE440();
      sub_220D7FC98(v25, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      sub_220D7FC98(v17, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      v26 = v107;
      v27 = v23 + 2;
      v109 = v5;
      v20 = (v22 + v5 * (v23 + 2));
      while (1)
      {
        v28 = v27;
        if (++v19 >= v26)
        {
          break;
        }

        sub_220D7FC40();
        v5 = v114;
        sub_220D7FC40();
        v29 = sub_220DBE440() & 1;
        sub_220D7FC98(v5, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
        sub_220D7FC98(v17, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
        v20 += v109;
        v24 += v109;
        v27 = v28 + 1;
        v26 = v107;
        if ((v106 & 1) != v29)
        {
          goto LABEL_9;
        }
      }

      v19 = v26;
LABEL_9:
      if (v106)
      {
        v21 = v100;
        if (v19 < v100)
        {
          goto LABEL_133;
        }

        if (v100 >= v19)
        {
          v20 = i;
          goto LABEL_32;
        }

        v97 = v6;
        if (v26 >= v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = v26;
        }

        v31 = v109 * (v30 - 1);
        v32 = v100;
        v33 = v109 * v30;
        v34 = v100 * v109;
        v35 = v19;
        v20 = i;
        do
        {
          if (v32 != --v35)
          {
            v5 = *v110;
            if (!*v110)
            {
              goto LABEL_140;
            }

            sub_220D804B8();
            v36 = v34 < v31 || v5 + v34 >= v5 + v33;
            if (v36)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v34 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_220D804B8();
            v20 = i;
          }

          ++v32;
          v31 -= v109;
          v33 -= v109;
          v34 += v109;
        }

        while (v32 < v35);
        v6 = v97;
      }

      else
      {
        v20 = i;
      }

      v21 = v100;
    }

LABEL_32:
    v37 = v110[1];
    if (v19 < v37)
    {
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_132;
      }

      if (v19 - v21 < v98)
      {
        break;
      }
    }

LABEL_48:
    if (v19 < v21)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = *(v20 + 2);
      sub_220D562D4();
      v20 = v88;
    }

    v46 = *(v20 + 2);
    v47 = v46 + 1;
    if (v46 >= *(v20 + 3) >> 1)
    {
      sub_220D562D4();
      v20 = v89;
    }

    *(v20 + 2) = v47;
    v48 = v20 + 32;
    v49 = &v20[16 * v46 + 32];
    *v49 = v100;
    *(v49 + 1) = v19;
    v109 = *v99;
    if (!v109)
    {
      goto LABEL_141;
    }

    v50 = v17;
    if (v46)
    {
      i = v20;
      while (1)
      {
        v51 = v47 - 1;
        v52 = &v48[16 * v47 - 16];
        v53 = &v20[16 * v47];
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v54 = *(v20 + 4);
          v55 = *(v20 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_69:
          if (v57)
          {
            goto LABEL_118;
          }

          v69 = *v53;
          v68 = *(v53 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_121;
          }

          v73 = *(v52 + 1);
          v74 = v73 - *v52;
          if (__OFSUB__(v73, *v52))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v71, v74))
          {
            goto LABEL_126;
          }

          if (v71 + v74 >= v56)
          {
            if (v56 < v74)
            {
              v51 = v47 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v47 < 2)
        {
          goto LABEL_120;
        }

        v76 = *v53;
        v75 = *(v53 + 1);
        v64 = __OFSUB__(v75, v76);
        v71 = v75 - v76;
        v72 = v64;
LABEL_84:
        if (v72)
        {
          goto LABEL_123;
        }

        v78 = *v52;
        v77 = *(v52 + 1);
        v64 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v64)
        {
          goto LABEL_125;
        }

        if (v79 < v71)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v51 - 1 >= v47)
        {
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
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v110)
        {
          goto LABEL_138;
        }

        v83 = &v48[16 * v51 - 16];
        v84 = *v83;
        v5 = v51;
        v20 = &v48[16 * v51];
        v85 = *(v20 + 1);
        sub_220D811D4(*v110 + *(v108 + 72) * *v83, *v110 + *(v108 + 72) * *v20, *v110 + *(v108 + 72) * v85, v109);
        if (v6)
        {
          goto LABEL_111;
        }

        if (v85 < v84)
        {
          goto LABEL_113;
        }

        v6 = *(i + 2);
        if (v5 > v6)
        {
          goto LABEL_114;
        }

        *v83 = v84;
        *(v83 + 1) = v85;
        if (v5 >= v6)
        {
          goto LABEL_115;
        }

        v47 = v6 - 1;
        memmove(v20, v20 + 16, 16 * (v6 - 1 - v5));
        v20 = i;
        *(i + 2) = v6 - 1;
        v86 = v6 > 2;
        v6 = 0;
        v50 = v104;
        if (!v86)
        {
          goto LABEL_98;
        }
      }

      v58 = &v48[16 * v47];
      v59 = *(v58 - 8);
      v60 = *(v58 - 7);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_116;
      }

      v63 = *(v58 - 6);
      v62 = *(v58 - 5);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_117;
      }

      v65 = *(v53 + 1);
      v66 = v65 - *v53;
      if (__OFSUB__(v65, *v53))
      {
        goto LABEL_119;
      }

      v64 = __OFADD__(v56, v66);
      v67 = v56 + v66;
      if (v64)
      {
        goto LABEL_122;
      }

      if (v67 >= v61)
      {
        v81 = *v52;
        v80 = *(v52 + 1);
        v64 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v64)
        {
          goto LABEL_130;
        }

        if (v56 < v82)
        {
          v51 = v47 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v18 = v110[1];
    v17 = v50;
    if (v19 >= v18)
    {
      goto LABEL_101;
    }
  }

  v38 = v21 + v98;
  if (__OFADD__(v21, v98))
  {
    goto LABEL_134;
  }

  if (v38 >= v37)
  {
    v38 = v110[1];
  }

  if (v38 < v21)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v19 == v38)
  {
    goto LABEL_48;
  }

  v97 = v6;
  v39 = *v110;
  v40 = *(v108 + 72);
  v5 = *v110 + v40 * (v19 - 1);
  v41 = -v40;
  v42 = v21 - v19;
  v101 = v40;
  v102 = v38;
  v43 = v39 + v19 * v40;
LABEL_41:
  v109 = v19;
  v105 = v43;
  v106 = v42;
  v107 = v5;
  while (1)
  {
    sub_220D7FC40();
    v44 = v114;
    sub_220D7FC40();
    v45 = sub_220DBE440();
    sub_220D7FC98(v44, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
    sub_220D7FC98(v17, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
    if ((v45 & 1) == 0)
    {
LABEL_46:
      v19 = v109 + 1;
      v5 = v107 + v101;
      v42 = v106 - 1;
      v43 = v105 + v101;
      if (v109 + 1 == v102)
      {
        v19 = v102;
        v6 = v97;
        v20 = i;
        v21 = v100;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v39)
    {
      break;
    }

    sub_220D804B8();
    swift_arrayInitWithTakeFrontToBack();
    sub_220D804B8();
    v5 += v41;
    v43 += v41;
    v36 = __CFADD__(v42++, 1);
    if (v36)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_220D811D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0);
  v8 = *(*(v49 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v49);
  v51 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v50 = &v43 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v19 = v15 / v14;
  v54 = a1;
  v53 = a4;
  v20 = v17 / v14;
  if (v15 / v14 >= v17 / v14)
  {
    sub_220CFB694(a2, v17 / v14, a4);
    v28 = a4 + v20 * v14;
    v29 = -v14;
    v30 = v28;
    v45 = a1;
    v46 = v29;
LABEL_36:
    v43 = v30;
    v47 = a2 + v29;
    v48 = a2;
    while (1)
    {
      if (v28 <= a4)
      {
        v54 = v48;
        v52 = v30;
        goto LABEL_58;
      }

      if (v48 <= a1)
      {
        break;
      }

      v44 = v30;
      v31 = a4;
      v32 = a3 + v29;
      v33 = v28 + v29;
      v34 = v50;
      v35 = v28;
      sub_220D7FC40();
      v36 = v51;
      sub_220D7FC40();
      v37 = sub_220DBE440();
      sub_220D7FC98(v36, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      sub_220D7FC98(v34, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      if (v37)
      {
        v39 = a3 < v48 || v32 >= v48;
        a4 = v31;
        if (v39)
        {
          v40 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v44;
          a1 = v45;
          a3 += v29;
          a2 = v40;
          v29 = v46;
          v28 = v35;
        }

        else
        {
          a1 = v45;
          v30 = v44;
          v16 = a3 == v48;
          v29 = v46;
          v41 = v47;
          a3 = v32;
          a2 = v47;
          v28 = v35;
          if (!v16)
          {
            v42 = v44;
            swift_arrayInitWithTakeBackToFront();
            v28 = v35;
            a2 = v41;
            v30 = v42;
          }
        }

        goto LABEL_36;
      }

      v38 = a3 < v35 || v32 >= v35;
      a4 = v31;
      if (v38)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 += v29;
        v28 = v33;
        v30 = v33;
        v29 = v46;
        a1 = v45;
      }

      else
      {
        v30 = v33;
        v16 = v35 == a3;
        a3 += v29;
        v28 = v33;
        v29 = v46;
        a1 = v45;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v32;
          v28 = v33;
          v30 = v33;
        }
      }
    }

    v54 = v48;
    v52 = v43;
  }

  else
  {
    sub_220CFB694(a1, v15 / v14, a4);
    v48 = a4 + v19 * v14;
    v52 = v48;
    while (a4 < v48 && a2 < a3)
    {
      v22 = v50;
      sub_220D7FC40();
      v23 = a2;
      v24 = v51;
      sub_220D7FC40();
      v25 = sub_220DBE440();
      sub_220D7FC98(v24, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      sub_220D7FC98(v22, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      if (v25)
      {
        a2 = v23 + v14;
        if (a1 < v23 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v23;
        }

        else
        {
          a2 = v23;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v53 = a4 + v14;
        a4 += v14;
      }

      a1 += v14;
      v54 = a1;
    }
  }

LABEL_58:
  sub_220D81780(&v54, &v53, &v52, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
  return 1;
}

void sub_220D81668(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  OUTLINED_FUNCTION_6(v6);
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v5 - v4 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_45_2();
  v11 = !v11 || v3 >= v10;
  if (v11)
  {
    OUTLINED_FUNCTION_5_13();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {
    OUTLINED_FUNCTION_5_13();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_220D81780(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  OUTLINED_FUNCTION_6(v7);
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_45_2();
  v12 = !v12 || v4 >= v11;
  if (v12)
  {
    OUTLINED_FUNCTION_5_13();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_5_13();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_220D81848(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_220D81874(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95BC0, &unk_220DC5B20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_220D8198C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(v4 - 192);

  return sub_220D7F650(a1, a2, a3, 0, a4);
}

uint64_t OUTLINED_FUNCTION_40_3(uint64_t a1)
{

  return sub_220CDA548(a1, v2, v1);
}

void OUTLINED_FUNCTION_52_2()
{
  v1 = *(v0 - 224);
  v2 = *(v0 - 296);
  v3 = *(v0 - 240);
}

uint64_t SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel.init(date:label:value:dataElement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_220DBE560();
  OUTLINED_FUNCTION_6(v14);
  (*(v15 + 32))(a7, a1);
  v16 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0);
  v17 = (a7 + v16[5]);
  *v17 = a2;
  v17[1] = a3;
  v18 = (a7 + v16[6]);
  *v18 = a4;
  v18[1] = a5;
  v19 = a7 + v16[7];

  return sub_220D81C80(a6, v19);
}

uint64_t sub_220D81C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartDataElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SunriseSunsetDetailChartViewModel.init(chartData:sunLocation:location:twilightCivil:twilightNautical:twilightAstronomical:startDate:sunEventAccessibilityModels:chartBackground:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t *a10)
{
  v31 = a10[1];
  v32 = *a10;
  v17 = type metadata accessor for SunriseSunsetDetailChartViewModel(0);
  *&a9[v17[14]] = 0x4056800000000000;
  *&a9[v17[15]] = 0xC056800000000000;
  *a9 = a1;
  sub_220D81ED8(a2, &a9[v17[5]]);
  v18 = v17[6];
  v19 = sub_220DBF1D0();
  OUTLINED_FUNCTION_5(v19);
  v21 = v20;
  (*(v20 + 16))(&a9[v18], a3, v19);
  *&a9[v17[7]] = a4;
  *&a9[v17[8]] = a5;
  *&a9[v17[9]] = a6;
  v22 = v17[10];
  v23 = sub_220DBE560();
  OUTLINED_FUNCTION_5(v23);
  v25 = v24;
  (*(v24 + 16))(&a9[v22], a7, v23);
  *&a9[v17[11]] = a8;
  v26 = &a9[v17[12]];
  *v26 = v32;
  *(v26 + 1) = v31;

  v28 = sub_220D823B8(v27, a3, a7);

  (*(v25 + 8))(a7, v23);
  (*(v21 + 8))(a3, v19);
  result = sub_220D828F8(a2);
  *&a9[v17[13]] = v28;
  return result;
}

uint64_t sub_220D81ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartDataElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel.date.getter()
{
  OUTLINED_FUNCTION_3();
  v2 = sub_220DBE560();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel.label.getter()
{
  v1 = (v0 + *(type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel.value.getter()
{
  v1 = (v0 + *(type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel.dataElement.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = v1 + *(type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(v2) + 28);

  return sub_220D81ED8(v3, v0);
}

uint64_t static SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel.== infix(_:_:)()
{
  if ((sub_220DBE460() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0);
  OUTLINED_FUNCTION_5_24(v0[5]);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_24(v0[6]);
  v6 = v3 && v4 == v5;
  if (!v6 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_8_15(v0[7]);

  return static DetailChartDataElement.== infix(_:_:)(v7, v8);
}

uint64_t SunriseSunsetDetailChartViewModel.sunLocation.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = v1 + *(type metadata accessor for SunriseSunsetDetailChartViewModel(v2) + 20);

  return sub_220D81ED8(v3, v0);
}

uint64_t SunriseSunsetDetailChartViewModel.location.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = *(type metadata accessor for SunriseSunsetDetailChartViewModel(v2) + 24);
  v4 = sub_220DBF1D0();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t SunriseSunsetDetailChartViewModel.twilightCivil.getter()
{
  v1 = *(v0 + *(type metadata accessor for SunriseSunsetDetailChartViewModel(0) + 28));
}

uint64_t SunriseSunsetDetailChartViewModel.twilightNautical.getter()
{
  v1 = *(v0 + *(type metadata accessor for SunriseSunsetDetailChartViewModel(0) + 32));
}

uint64_t SunriseSunsetDetailChartViewModel.twilightAstronomical.getter()
{
  v1 = *(v0 + *(type metadata accessor for SunriseSunsetDetailChartViewModel(0) + 36));
}

uint64_t SunriseSunsetDetailChartViewModel.startDate.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = *(type metadata accessor for SunriseSunsetDetailChartViewModel(v2) + 40);
  v4 = sub_220DBE560();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t SunriseSunsetDetailChartViewModel.sunEventAccessibilityModels.getter()
{
  v1 = *(v0 + *(type metadata accessor for SunriseSunsetDetailChartViewModel(0) + 44));
}

uint64_t SunriseSunsetDetailChartViewModel.chartBackground.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  *v0 = *(v1 + *(type metadata accessor for SunriseSunsetDetailChartViewModel(v2) + 48));
}

uint64_t SunriseSunsetDetailChartViewModel.xDomain.getter()
{
  v1 = *(v0 + *(type metadata accessor for SunriseSunsetDetailChartViewModel(0) + 52));
}

uint64_t sub_220D823B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v65 = a2;
  v66 = sub_220DBE740();
  v4 = OUTLINED_FUNCTION_0(v66);
  v64 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v63 = v9 - v8;
  v10 = sub_220DBE6E0();
  v11 = OUTLINED_FUNCTION_0(v10);
  v68 = v12;
  v69 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95F00, &unk_220DC5A50);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;
  v25 = sub_220DBE560();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v26);
  v33 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v61 = &v58 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v62 = &v58 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v58 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v58 - v41;
  v43 = a1;
  sub_220D100C8(a1, v24);
  v44 = type metadata accessor for DetailChartDataElement(0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v44) == 1)
  {
    v22 = v24;
    v45 = v25;
  }

  else
  {
    v59 = v17;
    v60 = *(v28 + 16);
    v60(v40, v24, v25);
    sub_220D828F8(v24);
    v58 = *(v28 + 32);
    v58(v42, v40, v25);
    sub_220D108A4(v43, v22);
    v45 = v25;
    if (__swift_getEnumTagSinglePayload(v22, 1, v44) != 1)
    {
      v51 = v61;
      v60(v61, v22, v25);
      sub_220D828F8(v22);
      v52 = v62;
      v53 = v58;
      v58(v62, v51, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95BE0, &qword_220DC4FD8);
      v54 = *(v28 + 72);
      v55 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_220DC17C0;
      v56 = v50 + v55;
      v60(v56, v42, v45);
      v53(v56 + v54, v52, v45);
      (*(v28 + 8))(v42, v45);
      return v50;
    }

    (*(v28 + 8))(v42, v25);
    v17 = v59;
  }

  sub_220CDA548(v22, &qword_27CF95F00, &unk_220DC5A50);
  v46 = v63;
  sub_220DBF1C0();
  sub_220DBE600();
  (*(v64 + 8))(v46, v66);
  sub_220DBE5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95BE0, &qword_220DC4FD8);
  v47 = v17;
  v48 = *(v28 + 72);
  v49 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_220DC17C0;
  (*(v28 + 16))(v50 + v49, v33, v45);
  sub_220DBE390();
  (*(v28 + 8))(v33, v45);
  (*(v68 + 8))(v47, v69);
  return v50;
}

uint64_t sub_220D828F8(uint64_t a1)
{
  v2 = type metadata accessor for DetailChartDataElement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SunriseSunsetDetailChartViewModel.shouldTriggerHaptic(currentDate:previousDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30[-v8];
  v10 = sub_220DBE560();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  sub_220D56F0C(a2, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_220CDA548(v9, &qword_27CF951E0, &unk_220DC1D80);
    return 0;
  }

  else
  {
    (*(v13 + 32))(v18, v9, v10);
    v32 = MEMORY[0x277D84F90];
    v20 = type metadata accessor for SunriseSunsetDetailChartViewModel(0);
    v21 = *(v3 + v20[7]);

    sub_220D7FA3C(v22);
    v23 = *(v3 + v20[8]);

    sub_220D7FA3C(v24);
    v25 = *(v3 + v20[9]);

    v27 = sub_220D7FA3C(v26);
    v31 = 0;
    v28 = v32;
    MEMORY[0x28223BE20](v27);
    *&v30[-32] = v18;
    *&v30[-24] = a1;
    *&v30[-16] = &v31;
    sub_220D82D28(sub_220D82D08, &v30[-48], v28);

    v19 = v31;
    (*(v13 + 8))(v18, v10);
  }

  return v19;
}

uint64_t sub_220D82B80(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = sub_220DBE560();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  if (sub_220DBE440())
  {
    sub_220CD9B24();
    if ((sub_220DC0580() & 1) == 0)
    {
      *a4 = 1;
    }
  }

  sub_220CD9B24();
  if (sub_220DC0580())
  {
    return (*(v7 + 8))(v10, v6);
  }

  v12 = sub_220DBE440();
  result = (*(v7 + 8))(v10, v6);
  if (v12)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t sub_220D82D28(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(type metadata accessor for DetailChartDataElement(0) - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

uint64_t WeatherValueCalculationContext.init(hourWeather:dayWeather:chartCondition:units:currentWeather:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  v14 = sub_220DBE960();
  OUTLINED_FUNCTION_6(v14);
  v27 = a4[1];
  v28 = *a4;
  v26 = a4[2];
  (*(v15 + 32))(a7, a1);
  v16 = type metadata accessor for WeatherValueCalculationContext();
  sub_220D8329C(a2, a7 + v16[5]);
  *(a7 + v16[6]) = v13;
  v17 = (a7 + v16[7]);
  *v17 = v28;
  v17[1] = v27;
  v17[2] = v26;
  v18 = v16[8];
  v19 = sub_220DBEAD0();
  OUTLINED_FUNCTION_6(v19);
  (*(v20 + 32))(a7 + v18, a5);
  v21 = v16[9];
  v22 = sub_220DBE740();
  OUTLINED_FUNCTION_6(v22);
  v24 = *(v23 + 32);

  return v24(a7 + v21, a6);
}

uint64_t type metadata accessor for WeatherValueCalculationContext()
{
  result = qword_27CF95F30;
  if (!qword_27CF95F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D8329C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WeatherValueCalculationContext.hourWeather.getter()
{
  OUTLINED_FUNCTION_3();
  v2 = sub_220DBE960();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t WeatherValueCalculationContext.dayWeather.getter()
{
  OUTLINED_FUNCTION_3();
  v2 = v1 + *(type metadata accessor for WeatherValueCalculationContext() + 20);

  return sub_220D833A8(v2, v0);
}

uint64_t sub_220D833A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WeatherValueCalculationContext.chartCondition.getter()
{
  OUTLINED_FUNCTION_3();
  result = type metadata accessor for WeatherValueCalculationContext();
  *v0 = *(v1 + *(result + 24));
  return result;
}

id WeatherValueCalculationContext.units.getter()
{
  OUTLINED_FUNCTION_3();
  v2 = v1 + *(type metadata accessor for WeatherValueCalculationContext() + 28);
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v14 = *(v2 + 40);
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v0[4] = v7;
  v0[5] = v14;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;

  return v14;
}

uint64_t WeatherValueCalculationContext.currentWeather.getter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for WeatherValueCalculationContext() + 32);
  v3 = sub_220DBEAD0();
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t WeatherValueCalculationContext.timeZone.getter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for WeatherValueCalculationContext() + 36);
  v3 = sub_220DBE740();
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

void sub_220D835D8()
{
  sub_220DBE960();
  if (v0 <= 0x3F)
  {
    sub_220D836A4();
    if (v1 <= 0x3F)
    {
      sub_220DBEAD0();
      if (v2 <= 0x3F)
      {
        sub_220DBE740();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220D836A4()
{
  if (!qword_27CF95F40)
  {
    sub_220DBE830();
    v0 = sub_220DC0AE0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF95F40);
    }
  }
}

uint64_t sub_220D8381C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_220DBF410();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_220DBF400();
}

uint64_t sub_220D838B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_220DBF410();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
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

uint64_t SunEventViewModelFactory.makeSunriseSunsetTableViewRowModel(date:title:timeZone:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = sub_220DBE4A0();
  v8 = v7;
  v9 = type metadata accessor for OverviewTableRowViewModel();
  v10 = a3 + *(v9 + 24);
  *v10 = v6;
  *(v10 + 8) = v8;
  *(v10 + 16) = 2;
  v11 = type metadata accessor for OverviewTableValueString();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  *a3 = a1;
  a3[1] = a2;
  a3[2] = a1;
  a3[3] = a2;
  *(a3 + *(v9 + 28)) = 0;
  return swift_bridgeObjectRetain_n();
}

_BYTE *storeEnumTagSinglePayload for SunEventViewModelFactory(_BYTE *result, int a2, int a3)
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

uint64_t SunriseSunsetChartBackground.init(gradient:opacity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t static SunriseSunsetChartBackground.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return MEMORY[0x223D97D10](*a1, *a2) & (v2 == v3);
}

uint64_t sub_220D83BEC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_220D83C2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_220D83CA4()
{
  sub_220DBFEF0();
  v0 = sub_220DBFF10();

  sub_220DBFED0();
  v1 = sub_220DBFF10();

  result = 6.0;
  xmmword_27CF95FA8 = xmmword_220DC5E80;
  qword_27CF95FB8 = 0xC039000000000000;
  qword_27CF95FC0 = v0;
  qword_27CF95FC8 = v1;
  return result;
}

uint64_t ChartOcclusionHashView.Style.init(occlusionHashWidth:occlusionHashIntersegmentSpacing:occlusionHashAngleDegrees:occlusionHashFillColor:occlusionHashOverlayColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = result;
  *(a3 + 32) = a2;
  return result;
}

uint64_t static ChartOcclusionHashView.Style.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF94F60 != -1)
  {
    swift_once();
  }

  v2 = qword_27CF95FB8;
  v3 = qword_27CF95FC0;
  v4 = qword_27CF95FC8;
  *a1 = xmmword_27CF95FA8;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
}

__n128 ChartOcclusionHashView.init(width:height:style:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = *(a1 + 16);
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = *a1;
  *(a2 + 32) = v4;
  result = *(a1 + 24);
  *(a2 + 40) = result;
  return result;
}

uint64_t ChartOcclusionHashView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v14 = *v1;
  v15 = v1[1];
  v16 = v1[2];
  v17 = *(v1 + 6);
  v3 = hypot(*&v14, *(&v14 + 1));
  v4 = v3 - *&v14;
  v5 = v3 - *(&v14 + 1);
  sub_220DBFCB0();
  v6 = v4 * -0.5;
  v7 = v5 * -0.5;

  sub_220DC01A0();
  v9 = v8;
  v11 = v10;
  v12 = sub_220DBFBC0();
  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 32) = v20;
  *(a1 + 40) = *(&v16 + 1);
  *(a1 + 48) = 256;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = *&v16 * 0.0174532925;
  *(a1 + 80) = v9;
  *(a1 + 88) = v11;
  *(a1 + 96) = v17;
  *(a1 + 104) = v12;
}

uint64_t sub_220D83F1C(double a1, uint64_t a2, double *a3)
{
  v4 = a3[2];
  v5 = v4 + a3[3];
  v6 = ceil(a1 / v5);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = v6;
  v8 = MEMORY[0x277D84F90];
  if (v6 >= 1001)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220DC17A0;
    sub_220DC0B80();

    v11 = *a3;
    v12 = sub_220DC0780();
    MEMORY[0x223D982B0](v12);

    MEMORY[0x223D982B0](0x746867696568202CLL, 0xE90000000000003DLL);
    v13 = *(a3 + 1);
    v14 = sub_220DC0780();
    MEMORY[0x223D982B0](v14);

    MEMORY[0x223D982B0](0x6874676E656C202CLL, 0xE90000000000003DLL);
    v15 = sub_220DC0780();
    MEMORY[0x223D982B0](v15);

    MEMORY[0x223D982B0](0x6F4374636572202CLL, 0xEC0000003D746E75);
    v16 = sub_220DC0C70();
    MEMORY[0x223D982B0](v16);

    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_220CEFDB0();
    *(v10 + 32) = 0x3D6874646977;
    *(v10 + 40) = 0xE600000000000000;
    MEMORY[0x223D96E50]("Occlusion hash pattern is trying to add too many Rects to Path; %@", 66, 2, v10);

    v7 = 1000;
    goto LABEL_8;
  }

  if (v7 < 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  if (v7)
  {
LABEL_8:
    sub_220CFB834(0, v7, 0);
    v17 = 0;
    v18 = v8;
    v19 = v8[2];
    do
    {
      v20 = v8[3];
      v21 = v19 + 1;
      if (v19 >= v20 >> 1)
      {
        sub_220CFB834((v20 > 1), v19 + 1, 1);
      }

      v8[2] = v21;
      *&v8[v19++ + 4] = v17++;
    }

    while (v7 != v17);
    goto LABEL_15;
  }

  v21 = *(MEMORY[0x277D84F90] + 16);
  if (v21)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_15:
    sub_220CFB814(0, v21, 0);
    v22 = v8;
    v23 = v8[2];
    v24 = 32 * v23 + 56;
    v25 = 4;
    do
    {
      v26 = *&v18[v25];
      v27 = v22[3];
      v28 = v23 + 1;
      if (v23 >= v27 >> 1)
      {
        sub_220CFB814((v27 > 1), v23 + 1, 1);
      }

      v22[2] = v28;
      v29 = (v22 + v24);
      *(v29 - 3) = v5 * v26;
      *(v29 - 2) = 0.0;
      *(v29 - 1) = v4;
      *v29 = a1;
      v24 += 32;
      ++v25;
      v23 = v28;
      --v21;
    }

    while (v21);
    goto LABEL_19;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_19:

  v30 = v22[2];
  if (v30)
  {
    v31 = v22 + 7;
    do
    {
      v32 = *(v31 - 3);
      v33 = *(v31 - 2);
      v34 = *(v31 - 1);
      v35 = *v31;
      sub_220DBFC90();
      v31 += 4;
      --v30;
    }

    while (v30);
  }
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

uint64_t sub_220D84334(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_220D84374(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_220D843E0()
{
  result = qword_27CF95FD0;
  if (!qword_27CF95FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95FD8, &qword_220DC5F68);
    sub_220D84498();
    sub_220CE161C(&qword_27CF96010, &qword_27CF96018, qword_220DC5F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95FD0);
  }

  return result;
}

unint64_t sub_220D84498()
{
  result = qword_27CF95FE0;
  if (!qword_27CF95FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95FE8, &qword_220DC5F70);
    sub_220D84524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95FE0);
  }

  return result;
}

unint64_t sub_220D84524()
{
  result = qword_27CF95FF0;
  if (!qword_27CF95FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95FF8, &qword_220DC5F78);
    sub_220CE161C(&qword_27CF96000, &qword_27CF96008, &qword_220DC5F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95FF0);
  }

  return result;
}

uint64_t sub_220D8463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v85 = a2;
  v86 = a6;
  v78 = a3;
  v80 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F8, &qword_220DC1DA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_4();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v75 - v14;
  v16 = sub_220DBE560();
  v17 = OUTLINED_FUNCTION_0(v16);
  v83 = v18;
  v84 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_8_16();
  v26 = OUTLINED_FUNCTION_0(v25);
  v81 = v27;
  v82 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v32 = v31 - v30;
  v33 = sub_220DC0260();
  v34 = OUTLINED_FUNCTION_0(v33);
  v87 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_4();
  v40 = v38 - v39;
  v42 = MEMORY[0x28223BE20](v41);
  v79 = &v75 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v75 - v44;
  if (sub_220DBE610())
  {
    v76 = v12;
    v46 = v86;
    sub_220DBE600();
    sub_220DBE480();
    v78 = v32;
    sub_220DBE320();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
    v47 = sub_220DBEF90();
    MEMORY[0x28223BE20](v47);
    v77 = v6;
    v85 = v23;
    v48 = sub_220CFACFC();
    v49 = v80;
    v50 = sub_220D86028(a4, v80, v48);
    v52 = v51;
    v53 = v76;
    sub_220D86868(a4, v49, v48, v46, v15);

    sub_220CF6B14(v15, v53, &qword_27CF951F8, &qword_220DC1DA0);
    v54 = v33;
    if (__swift_getEnumTagSinglePayload(v53, 1, v33) == 1)
    {
      sub_220CE1ABC(v53, &qword_27CF951F8, &qword_220DC1DA0);
      sub_220DC0240();

      v55 = v77;
      v56 = v87;
    }

    else
    {
      v80 = v50;
      v86 = v15;
      v56 = v87;
      v58 = v79;
      (*(v87 + 32))(v79, v53, v54);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_6_0();
      v59 = sub_220DBE240();
      v75 = v60;
      v76 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      OUTLINED_FUNCTION_7_20();
      v61 = sub_220DC0250();
      OUTLINED_FUNCTION_0(v61);
      v63 = v62;
      v65 = *(v64 + 72);
      v66 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_220DC17C0;
      v68 = (v67 + v66);
      *v68 = v80;
      *(v68 + 1) = v52;
      v69 = *(v63 + 104);
      v69(v68, *MEMORY[0x277D7B3D8], v61);
      (*(v56 + 16))(&v68[v65], v58, v54);
      v69(&v68[v65], *MEMORY[0x277D7B3C0], v61);
      sub_220DC0220();
      (*(v56 + 8))(v58, v54);
      v15 = v86;
      v55 = v77;
    }

    sub_220CE1ABC(v15, &qword_27CF951F8, &qword_220DC1DA0);
    (*(v81 + 8))(v78, v82);
    v70 = v84;
    v71 = *(v83 + 8);
    v71(v85, v84);
    v71(v55, v70);
  }

  else
  {
    v57 = v86;
    if (sub_220DBE640())
    {
      sub_220D851DC(v78, v40);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
      v72 = sub_220DBEF90();
      sub_220D85780(v57, v72, v40);
    }

    v45 = v40;
    v54 = v33;
    v56 = v87;
  }

  v73 = sub_220DC0230();
  (*(v56 + 8))(v45, v54);
  return v73;
}

uint64_t sub_220D84C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a4;
  v72 = a5;
  v73 = sub_220DC0260();
  v9 = OUTLINED_FUNCTION_0(v73);
  v71 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v69 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F8, &qword_220DC1DA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_4();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v61 - v21;
  v23 = sub_220DBE560();
  v24 = OUTLINED_FUNCTION_0(v23);
  v70 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v32 = OUTLINED_FUNCTION_8_16();
  v33 = OUTLINED_FUNCTION_0(v32);
  v66 = v34;
  v67 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1();
  v39 = v38 - v37;
  sub_220DBE600();
  sub_220DBE480();
  sub_220DBE320();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  sub_220DBEF90();
  v74 = v5;
  v75 = v30;
  v68 = v30;
  v40 = sub_220CFACFC();
  v41 = sub_220D86028(a1, a3, v40);
  v65 = v42;
  sub_220D86868(a1, a3, v40, a2, v22);
  v43 = v73;

  sub_220CF6B14(v22, v19, &qword_27CF951F8, &qword_220DC1DA0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v43) == 1)
  {
    sub_220CE1ABC(v19, &qword_27CF951F8, &qword_220DC1DA0);
    sub_220DC0240();
  }

  else
  {
    v62 = v39;
    v63 = v22;
    v64 = v23;
    (*(v71 + 32))(v69, v19, v43);
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_6_0();
    v44 = sub_220DBE240();
    v61[0] = v45;
    v61[1] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v46 = sub_220DC0250();
    OUTLINED_FUNCTION_0(v46);
    v48 = v47;
    v50 = *(v49 + 72);
    v51 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_220DC17C0;
    v53 = (v52 + v51);
    v54 = v65;
    *v53 = v41;
    v53[1] = v54;
    v55 = *(v48 + 104);
    v55(v53, *MEMORY[0x277D7B3D8], v46);
    v56 = v71;
    v57 = v69;
    v58 = v73;
    (*(v71 + 16))(v53 + v50, v69, v73);
    v55((v53 + v50), *MEMORY[0x277D7B3C0], v46);
    sub_220DC0220();
    (*(v56 + 8))(v57, v58);
    v22 = v63;
    v23 = v64;
    v39 = v62;
  }

  sub_220CE1ABC(v22, &qword_27CF951F8, &qword_220DC1DA0);
  (*(v66 + 8))(v39, v67);
  v59 = *(v70 + 8);
  v59(v68, v23);
  return (v59)(v5, v23);
}

uint64_t sub_220D851DC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v47[1] = a2;
  v3 = sub_220DBF410();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v47 - v14;
  v16 = sub_220DBF310();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  sub_220CF6B14(a1, v15, &qword_27CF94F90, &unk_220DC4410);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
  {
    (*(v19 + 32))(v24, v15, v16);
    sub_220DBF300();
    v30 = v29;
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        sub_220DBF2F0();
        if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v31 > -9.22337204e18)
          {
            if (v31 < 9.22337204e18)
            {
              v6 = v30;
              v32 = v31;
              if (*&v30 != *&v31)
              {
                if (qword_280FA6600 != -1)
                {
                  OUTLINED_FUNCTION_10();
                }

                OUTLINED_FUNCTION_5_26();
                OUTLINED_FUNCTION_6_0();
                sub_220DBE240();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
                OUTLINED_FUNCTION_7_20();
                v40 = sub_220DC0250();
                OUTLINED_FUNCTION_0(v40);
                v42 = v41;
                v44 = *(v43 + 72);
                v45 = *(v41 + 80);
                v46 = OUTLINED_FUNCTION_6_21();
                *(v46 + 16) = xmmword_220DC17A0;
                *(&unk_220DC4410 + v46) = v32;
                (*(v42 + 104))(&unk_220DC4410 + v46, *MEMORY[0x277D7B3E0], v40);
                goto LABEL_17;
              }

              if (qword_280FA6600 == -1)
              {
LABEL_13:
                OUTLINED_FUNCTION_5_26();
                OUTLINED_FUNCTION_6_0();
                sub_220DBE240();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
                OUTLINED_FUNCTION_7_20();
                v33 = sub_220DC0250();
                OUTLINED_FUNCTION_0(v33);
                v35 = v34;
                v37 = *(v36 + 72);
                v38 = *(v34 + 80);
                v39 = OUTLINED_FUNCTION_6_21();
                *(v39 + 16) = xmmword_220DC17A0;
                *(&unk_220DC4410 + v39) = v6;
                (*(v35 + 104))(&unk_220DC4410 + v39, *MEMORY[0x277D7B3E0], v33);
LABEL_17:
                sub_220DC0220();
                return (*(v19 + 8))(v24, v16);
              }

LABEL_24:
              OUTLINED_FUNCTION_10();
              goto LABEL_13;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_20;
  }

  sub_220CE1ABC(v15, &qword_27CF94F90, &unk_220DC4410);
  sub_220DBF3C0();
  v25 = sub_220DBF3F0();
  v26 = sub_220DC0980();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_220CD1000, v25, v26, "Failed to create UVI description due to missing extrema values", v27, 2u);
    MEMORY[0x223D98FB0](v27, -1, -1);
  }

  (*(v6 + 8))(v11, v3);
  return sub_220DC0240();
}

uint64_t sub_220D85708@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v4 = sub_220DBEF90();
  sub_220D85780(a1, v4, a2);
}

uint64_t sub_220D85780@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v82 = a2;
  v74 = a3;
  v68 = sub_220DBF410();
  v67 = *(v68 - 8);
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_220DBEF70();
  v79 = *(v81 - 8);
  v6 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220DBE960();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v76 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v65 - v13;
  v15 = sub_220DBE6E0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_220DBE560();
  v72 = *(v20 - 8);
  v73 = v20;
  v21 = *(v72 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v65 - v25;
  sub_220DBE480();
  v69 = a1;
  sub_220DBE600();
  sub_220DBE320();
  v27 = v8;
  (*(v16 + 8))(v19, v15);
  v70 = v26;
  v71 = v24;
  v83 = v26;
  v84 = v24;

  v28 = sub_220CFACFC();
  v29 = 0;
  v82 = *(v28 + 16);
  v30 = (v79 + 8);
  v31 = (v9 + 8);
  v78 = v9 + 16;
  v79 = v9;
  v75 = (v9 + 32);
  v77 = MEMORY[0x277D84F90];
  while (v82 != v29)
  {
    if (v29 >= *(v28 + 16))
    {
      __break(1u);
LABEL_23:
      swift_once();
LABEL_14:
      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v49 = sub_220DC0250();
      v50 = *(v49 - 8);
      v51 = *(v50 + 72);
      v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_220DC17C0;
      v54 = (v53 + v52);
      *v54 = v29;
      v54[1] = v31;
      v55 = *(v50 + 104);
      (v55)(v54, *MEMORY[0x277D7B3D0], v49);
      v56 = (v54 + v51);
      *v56 = v82;
      v56[1] = v27;
      v55();
      sub_220DC0220();
      goto LABEL_21;
    }

    v32 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v33 = *(v79 + 72);
    (*(v79 + 16))(v14, v28 + v32 + v33 * v29, v27);
    v34 = v80;
    v35 = v27;
    sub_220DBE910();
    v36 = sub_220DBEF50();
    (*v30)(v34, v81);
    if (v36 >= 3)
    {
      v37 = *v75;
      (*v75)(v76, v14, v35);
      v38 = v77;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v38;
      v85 = v38;
      v27 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = *(v40 + 16);
        sub_220CE5648();
        v27 = v35;
        v40 = v85;
      }

      v42 = *(v40 + 16);
      v43 = v42 + 1;
      if (v42 >= *(v40 + 24) >> 1)
      {
        v77 = v27;
        v65 = v42;
        sub_220CE5648();
        v42 = v65;
        v27 = v77;
        v40 = v85;
      }

      ++v29;
      *(v40 + 16) = v43;
      v77 = v40;
      v37((v40 + v32 + v42 * v33), v76, v27);
    }

    else
    {
      (*v31)(v14, v35);
      ++v29;
      v27 = v35;
    }
  }

  v44 = *(v77 + 16);

  if (v44)
  {
    v29 = sub_220D87680(2, v28, v69);
    v31 = v45;
    v47 = v46;
    v27 = v48;

    if (v31)
    {
      v82 = v47;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_23;
      }

      goto LABEL_14;
    }

    v57 = v66;
    sub_220DBF3C0();
    v58 = sub_220DBF3F0();
    v59 = sub_220DC0980();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_220CD1000, v58, v59, "Failed to find start time end time above 2", v60, 2u);
      MEMORY[0x223D98FB0](v60, -1, -1);
    }

    (*(v67 + 8))(v57, v68);
    sub_220DC0210();
  }

  else
  {

    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    sub_220DC0240();
  }

LABEL_21:
  v61 = v73;
  v62 = v70;
  v63 = *(v72 + 8);
  v63(v71, v73);
  return (v63)(v62, v61);
}

uint64_t sub_220D86028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v58 = a1;
  v71 = sub_220DBEF70();
  v4 = *(v71 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v71);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220DBE960();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v60 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v56 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v63 = &v56 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v56 - v17;
  v19 = 0;
  v20 = *(a3 + 16);
  v68 = a3;
  v69 = v20;
  v70 = v9 + 16;
  v21 = (v4 + 8);
  v22 = (v9 + 8);
  v64 = (v9 + 32);
  v67 = MEMORY[0x277D84F90];
  while (v69 != v19)
  {
    v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v24 = *(v9 + 72);
    (*(v9 + 16))(v18, v68 + v23 + v24 * v19, v8);
    sub_220DBE910();
    v25 = sub_220DBEF50();
    (*v21)(v7, v71);
    if (v25 >= 3)
    {
      v62 = *v64;
      v62(v63, v18, v8);
      v26 = v67;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = *(v26 + 16);
        sub_220CE5648();
        v26 = v72;
      }

      v29 = *(v26 + 16);
      v30 = v29 + 1;
      if (v29 >= *(v26 + 24) >> 1)
      {
        v67 = v29 + 1;
        v57 = v29;
        sub_220CE5648();
        v30 = v67;
        v29 = v57;
        v26 = v72;
      }

      ++v19;
      *(v26 + 16) = v30;
      v67 = v26;
      v62((v26 + v23 + v29 * v24), v63, v8);
    }

    else
    {
      (*v22)(v18, v8);
      ++v19;
    }
  }

  v31 = *(v67 + 16);

  if (!v31)
  {
    if (qword_280FA6600 == -1)
    {
      return sub_220DBE240();
    }

    goto LABEL_40;
  }

  v32 = sub_220DBEF50();
  if (v32 <= 2)
  {
    v67 = v8;
    MEMORY[0x28223BE20](v32);

    v33 = sub_220CFACFC();
    v34 = 0;
    v69 = *(v33 + 16);
    v63 = MEMORY[0x277D84F90];
    v35 = v59;
    v65 = v7;
    v66 = v9;
    v68 = v33;
    while (v69 != v34)
    {
      if (v34 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v36 = v22;
      v37 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v38 = *(v9 + 72);
      v39 = v67;
      (*(v9 + 16))(v35, v33 + v37 + v38 * v34, v67);
      v40 = v35;
      sub_220DBE910();
      v41 = sub_220DBEF50();
      (*v21)(v7, v71);
      if (v41 >= 3)
      {
        v62 = v37;
        v43 = *v64;
        (*v64)(v60, v40, v39);
        v44 = v63;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v46 = v44;
        v72 = v44;
        if (v45)
        {
          v35 = v40;
        }

        else
        {
          v47 = *(v44 + 2);
          sub_220CE5648();
          v35 = v59;
          v46 = v72;
        }

        v22 = v36;
        v48 = v34;
        v49 = v38;
        v50 = *(v46 + 2);
        v51 = (v50 + 1);
        v52 = v67;
        v33 = v68;
        v53 = v62;
        if (v50 >= *(v46 + 3) >> 1)
        {
          v63 = (v50 + 1);
          sub_220CE5648();
          v51 = v63;
          v48 = v34;
          v35 = v59;
          v46 = v72;
        }

        v34 = v48 + 1;
        *(v46 + 2) = v51;
        v63 = v46;
        v43(v53 + v46 + v50 * v49, v60, v52);
      }

      else
      {
        v42 = v39;
        v22 = v36;
        (*v36)(v40, v42);
        ++v34;
        v35 = v40;
        v33 = v68;
      }

      v7 = v65;
      v9 = v66;
    }

    v54 = *(v63 + 2);

    if (v54)
    {
      if (qword_280FA6600 != -1)
      {
        goto LABEL_40;
      }
    }

    else if (qword_280FA6600 != -1)
    {
      goto LABEL_40;
    }

    return sub_220DBE240();
  }

  if (sub_220DBEF50() >= 8)
  {
    if (qword_280FA6600 == -1)
    {
      return sub_220DBE240();
    }

    goto LABEL_40;
  }

  if (sub_220DBEF50() < 3)
  {
    if (qword_280FA6600 == -1)
    {
      return sub_220DBE240();
    }

    goto LABEL_40;
  }

  if (qword_280FA6600 != -1)
  {
LABEL_40:
    swift_once();
  }

  return sub_220DBE240();
}

uint64_t sub_220D86868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v123 = a4;
  v126 = a2;
  v122 = a1;
  v132 = a5;
  v6 = 0;
  v142 = sub_220DBEF70();
  v7 = *(v142 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v142);
  v10 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220DBE960();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v128 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v129 = &v120 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v125 = &v120 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v124 = &v120 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v133 = &v120 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v130 = &v120 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v136 = &v120 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v120 - v28;
  v30 = *(a3 + 16);
  v139 = a3;
  v140 = v30;
  v141 = v12 + 16;
  v31 = (v7 + 8);
  v32 = (v12 + 8);
  v134 = (v12 + 32);
  v138 = MEMORY[0x277D84F90];
  v127 = 0;
  while (v140 != v6)
  {
    v33 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v34 = *(v12 + 72);
    (*(v12 + 16))(v29, v139 + v33 + v34 * v6, v11);
    sub_220DBE910();
    v35 = sub_220DBEF50();
    (*v31)(v10, v142);
    if (v35 >= 3)
    {
      v131 = *v134;
      (v131)(v136, v29, v11);
      v36 = v138;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v143 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = *(v36 + 2);
        sub_220CE5648();
        v36 = v143;
      }

      v39 = *(v36 + 2);
      v40 = (v39 + 1);
      if (v39 >= *(v36 + 3) >> 1)
      {
        v138 = (v39 + 1);
        v121 = v39;
        sub_220CE5648();
        v40 = v138;
        v39 = v121;
        v36 = v143;
      }

      ++v6;
      *(v36 + 2) = v40;
      v138 = v36;
      (v131)(&v36[v33 + v39 * v34], v136, v11);
    }

    else
    {
      (*v32)(v29, v11);
      ++v6;
    }
  }

  v41 = *(v138 + 2);

  if (!v41)
  {
    goto LABEL_57;
  }

  v42 = 0;
  v138 = MEMORY[0x277D84F90];
  v43 = v130;
  while (v140 != v42)
  {
    v44 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v45 = *(v12 + 72);
    (*(v12 + 16))(v43, v139 + v44 + v45 * v42, v11);
    v46 = v43;
    sub_220DBE910();
    v47 = sub_220DBEF50();
    (*v31)(v10, v142);
    if (v47 <= 2)
    {
      v136 = *v134;
      (v136)(v133, v46, v11);
      v48 = v138;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v50 = v48;
      v143 = v48;
      if (v49)
      {
        v43 = v46;
      }

      else
      {
        v51 = *(v48 + 2);
        sub_220CE5648();
        v43 = v130;
        v50 = v143;
      }

      v52 = *(v50 + 2);
      v53 = (v52 + 1);
      if (v52 >= *(v50 + 3) >> 1)
      {
        v138 = (v52 + 1);
        sub_220CE5648();
        v53 = v138;
        v43 = v130;
        v50 = v143;
      }

      ++v42;
      *(v50 + 2) = v53;
      v138 = v50;
      (v136)(&v50[v44 + v52 * v45], v133, v11);
    }

    else
    {
      (*v32)(v46, v11);
      ++v42;
      v43 = v46;
    }
  }

  v54 = *(v138 + 2);

  if (!v54)
  {
    if (qword_280FA6600 != -1)
    {
LABEL_60:
      swift_once();
    }

    sub_220DBE240();
    v81 = v132;
    sub_220DC0240();

    goto LABEL_56;
  }

  v55 = sub_220DBEF50();
  if (v55 <= 2)
  {
    v137 = v11;
    MEMORY[0x28223BE20](v55);

    v56 = v127;
    v57 = sub_220CFACFC();
    v127 = v56;
    v58 = 0;
    v138 = *(v57 + 16);
    v133 = MEMORY[0x277D84F90];
    v59 = v124;
    v135 = (v12 + 8);
    v136 = v57;
    while (v138 != v58)
    {
      if (v58 >= *(v57 + 16))
      {
        __break(1u);
        goto LABEL_60;
      }

      v60 = v31;
      v61 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v62 = *(v12 + 72);
      v63 = v137;
      (*(v12 + 16))(v59, v57 + v61 + v62 * v58, v137);
      v64 = v59;
      sub_220DBE910();
      v65 = sub_220DBEF50();
      v66 = v60;
      (*v60)(v10, v142);
      if (v65 >= 3)
      {
        v130 = v62;
        v131 = v58;
        v68 = *v134;
        (*v134)(v125, v64, v63);
        v69 = v133;
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v71 = v69;
        v143 = v69;
        if (v70)
        {
          v59 = v64;
        }

        else
        {
          v72 = *(v69 + 2);
          sub_220CE5648();
          v59 = v124;
          v71 = v143;
        }

        v32 = v135;
        v57 = v136;
        v73 = v61;
        v75 = v130;
        v74 = v131;
        v76 = *(v71 + 2);
        v77 = (v76 + 1);
        v31 = v66;
        if (v76 >= *(v71 + 3) >> 1)
        {
          v80 = (v76 + 1);
          v133 = *(v71 + 2);
          sub_220CE5648();
          v77 = v80;
          v76 = v133;
          v74 = v131;
          v59 = v124;
          v71 = v143;
        }

        *(v71 + 2) = v77;
        v133 = v71;
        v78 = &v71[v73 + v76 * v75];
        v79 = v74 + 1;
        (v68)(v78, v125);
        v58 = v79;
      }

      else
      {
        v67 = v63;
        v32 = v135;
        (*v135)(v64, v67);
        ++v58;
        v59 = v64;
        v57 = v136;
        v31 = v60;
      }
    }

    v82 = *(v133 + 2);

    if (v82)
    {
      v11 = v137;
      goto LABEL_38;
    }

    MEMORY[0x28223BE20](v83);

    v105 = sub_220CFACFC();
    v101 = sub_220D87680(2, v105, v123);
    v102 = v106;
    v108 = v107;
    v103 = v109;

    if (v102)
    {
      v142 = v108;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_61;
      }

LABEL_55:
      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v110 = sub_220DC0250();
      v111 = *(v110 - 8);
      v112 = *(v111 + 72);
      v113 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_220DC17C0;
      v115 = (v114 + v113);
      *v115 = v101;
      v115[1] = v102;
      v116 = *(v111 + 104);
      (v116)(v115, *MEMORY[0x277D7B3D0], v110);
      v117 = (v115 + v112);
      *v117 = v142;
      v117[1] = v103;
      v116();
      v81 = v132;
      sub_220DC0220();
LABEL_56:
      v104 = 0;
      goto LABEL_58;
    }

LABEL_57:
    v104 = 1;
    v81 = v132;
    goto LABEL_58;
  }

LABEL_38:
  v84 = 0;
  v138 = MEMORY[0x277D84F90];
LABEL_39:
  v85 = v129;
  while (v140 != v84)
  {
    v86 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v87 = *(v12 + 72);
    (*(v12 + 16))(v85, v139 + v86 + v87 * v84, v11);
    sub_220DBE910();
    v88 = sub_220DBEF50();
    (*v31)(v10, v142);
    if (v88 >= 3)
    {
      v89 = *v134;
      (*v134)(v128, v85, v11);
      v90 = v138;
      v91 = swift_isUniquelyReferenced_nonNull_native();
      v92 = v90;
      v143 = v90;
      if ((v91 & 1) == 0)
      {
        v93 = *(v90 + 2);
        sub_220CE5648();
        v92 = v143;
      }

      v94 = *(v92 + 2);
      v95 = (v94 + 1);
      if (v94 >= *(v92 + 3) >> 1)
      {
        v136 = v89;
        v138 = (v94 + 1);
        sub_220CE5648();
        v95 = v138;
        v89 = v136;
        v92 = v143;
      }

      ++v84;
      *(v92 + 2) = v95;
      v138 = v92;
      (v89)(&v92[v86 + v94 * v87], v128, v11);
      goto LABEL_39;
    }

    (*v32)(v85, v11);
    ++v84;
  }

  v96 = *(v138 + 2);

  if (!v96)
  {
    goto LABEL_57;
  }

  v97 = sub_220D87680(2, v139, v123);
  v81 = v132;
  if (v98)
  {
    v101 = v97;
    v102 = v98;
    v103 = v100;
    v142 = v99;
    if (qword_280FA6600 != -1)
    {
LABEL_61:
      swift_once();
    }

    goto LABEL_55;
  }

  v104 = 1;
LABEL_58:
  v118 = sub_220DC0260();
  return __swift_storeEnumTagSinglePayload(v81, v104, 1, v118);
}

uint64_t sub_220D87598(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = sub_220DBE560();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  sub_220DBE8F0();
  LOBYTE(a3) = a3(v13, a2);
  (*(v8 + 8))(v13, v5);
  return a3 & 1;
}

uint64_t sub_220D87680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v120 = a3;
  v143 = a1;
  v122 = sub_220DBF410();
  v121 = *(v122 - 8);
  v4 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v128 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_220DBE6E0();
  v116 = *(v117 - 8);
  v6 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v115 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_220DBE560();
  v118 = *(v119 - 8);
  v8 = *(v118 + 64);
  v9 = MEMORY[0x28223BE20](v119);
  v112 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v113 = &v111 - v12;
  MEMORY[0x28223BE20](v11);
  v114 = &v111 - v13;
  v141 = sub_220DBEF70();
  v14 = *(v141 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v141);
  v140 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959E0, &unk_220DC3C00);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v127 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v123 = &v111 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v111 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v126 = &v111 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v135 = &v111 - v29;
  MEMORY[0x28223BE20](v28);
  v130 = &v111 - v30;
  v131 = sub_220DBE960();
  v31 = *(v131 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v131);
  v125 = &v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v129 = &v111 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v111 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v132 = &v111 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v111 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v111 - v45;
  v146 = a2;

  sub_220D886C8(&v146);
  v47 = 0;
  v48 = v146;
  v144 = *(v146 + 16);
  v137 = (v14 + 8);
  v138 = v31 + 16;
  v136 = (v31 + 8);
  v134 = (v31 + 32);
  v133 = MEMORY[0x277D84F90];
  v49 = v131;
  v50 = v31;
  v51 = v46;
  v142 = v39;
  v139 = v146;
  while (1)
  {
    if (v144 == v47)
    {

      v67 = v130;
      v68 = v133;
      sub_220D101AC(v133, v130);
      sub_220D10980(v68, v135);

      v69 = v126;
      sub_220CF6B14(v67, v126, &qword_27CF959E0, &unk_220DC3C00);
      if (__swift_getEnumTagSinglePayload(v69, 1, v49) == 1)
      {
        sub_220CE1ABC(v69, &qword_27CF959E0, &unk_220DC3C00);
        v71 = v128;
        v70 = v129;
        v72 = v125;
        v73 = v127;
        v74 = v134;
      }

      else
      {
        v74 = v134;
        v75 = *v134;
        (*v134)(v44, v69, v49);
        sub_220CF6B14(v135, v25, &qword_27CF959E0, &unk_220DC3C00);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v49);
        v71 = v128;
        v70 = v129;
        v73 = v127;
        if (EnumTagSinglePayload == 1)
        {
          (*v136)(v44, v49);
          sub_220CE1ABC(v25, &qword_27CF959E0, &unk_220DC3C00);
        }

        else
        {
          v75(v39, v25, v49);
          sub_220D89E90(&qword_280FA7760, MEMORY[0x277CE31A0]);
          v77 = v44;
          v78 = v49;
          if ((sub_220DC05B0() & 1) == 0)
          {
            v111 = v77;
            v102 = v113;
            sub_220DBE8F0();
            v103 = v114;
            sub_220DBE400();
            v104 = *(v118 + 8);
            v105 = v119;
            v104(v102, v119);
            v91 = sub_220DBE4F0();
            v104(v103, v105);
            v106 = v112;
            sub_220DBE8F0();
            sub_220DBE400();
            v107 = v119;
            v104(v106, v119);
            v108 = v115;
            sub_220DBE6A0();
            sub_220DBE3A0();
            (*(v116 + 8))(v108, v117);
            v104(v102, v107);
            sub_220DBE4F0();
            v104(v103, v107);
            v98 = *v136;
            (*v136)(v142, v78);
            v100 = v111;
            v101 = v78;
            goto LABEL_30;
          }

          v79 = *v136;
          (*v136)(v39, v49);
          v79(v77, v49);
        }

        v72 = v125;
      }

      v80 = v123;
      sub_220CF6B14(v67, v123, &qword_27CF959E0, &unk_220DC3C00);
      if (__swift_getEnumTagSinglePayload(v80, 1, v49) == 1)
      {
        v81 = v80;
LABEL_23:
        sub_220CE1ABC(v81, &qword_27CF959E0, &unk_220DC3C00);
LABEL_24:
        sub_220DBF3C0();
        v84 = sub_220DBF3F0();
        v85 = sub_220DC0980();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v146 = v87;
          *v86 = 136446210;
          v145 = v143;
          v88 = sub_220DC0C70();
          v90 = sub_220D3F210(v88, v89, &v146);

          *(v86 + 4) = v90;
          _os_log_impl(&dword_220CD1000, v84, v85, "Failed to find start time and end time for UVI above:%{public}s", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v87);
          MEMORY[0x223D98FB0](v87, -1, -1);
          MEMORY[0x223D98FB0](v86, -1, -1);
        }

        (*(v121 + 8))(v71, v122);
        sub_220CE1ABC(v135, &qword_27CF959E0, &unk_220DC3C00);
        sub_220CE1ABC(v67, &qword_27CF959E0, &unk_220DC3C00);
        return 0;
      }

      v82 = v80;
      v83 = *v74;
      (*v74)(v70, v82, v49);
      sub_220CF6B14(v135, v73, &qword_27CF959E0, &unk_220DC3C00);
      if (__swift_getEnumTagSinglePayload(v73, 1, v49) == 1)
      {
        (*v136)(v70, v49);
        v81 = v73;
        goto LABEL_23;
      }

      v83(v72, v73, v49);
      if ((sub_220DBE8C0() & 1) == 0)
      {
        v110 = *v136;
        (*v136)(v72, v49);
        v110(v70, v49);
        goto LABEL_24;
      }

      v92 = v113;
      sub_220DBE8F0();
      v93 = v114;
      sub_220DBE400();
      v94 = *(v118 + 8);
      v95 = v119;
      v94(v92, v119);
      v91 = sub_220DBE4F0();
      v94(v93, v95);
      v96 = v112;
      sub_220DBE8F0();
      sub_220DBE400();
      v94(v96, v95);
      v97 = v115;
      sub_220DBE6A0();
      sub_220DBE3A0();
      (*(v116 + 8))(v97, v117);
      v94(v92, v95);
      sub_220DBE4F0();
      v94(v93, v95);
      v98 = *v136;
      v99 = v131;
      (*v136)(v125, v131);
      v100 = v129;
      v101 = v99;
LABEL_30:
      v98(v100, v101);
      sub_220CE1ABC(v135, &qword_27CF959E0, &unk_220DC3C00);
      sub_220CE1ABC(v130, &qword_27CF959E0, &unk_220DC3C00);
      return v91;
    }

    if (v47 >= *(v48 + 16))
    {
      break;
    }

    v52 = v25;
    v53 = v44;
    v54 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v55 = *(v50 + 72);
    v56 = v50;
    (*(v50 + 16))(v51, v48 + v54 + v55 * v47, v49);
    v57 = v51;
    v58 = v140;
    v59 = v49;
    sub_220DBE910();
    v60 = sub_220DBEF50();
    (*v137)(v58, v141);
    if (v60 > v143)
    {
      v124 = *v134;
      v124(v132, v57, v59);
      v61 = v133;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v61;
      v146 = v61;
      v51 = v57;
      if (isUniquelyReferenced_nonNull_native)
      {
        v49 = v59;
      }

      else
      {
        v64 = *(v61 + 16);
        sub_220CE5648();
        v49 = v131;
        v63 = v146;
      }

      v44 = v53;
      v65 = *(v63 + 16);
      v66 = v65 + 1;
      v25 = v52;
      if (v65 >= *(v63 + 24) >> 1)
      {
        sub_220CE5648();
        v66 = v65 + 1;
        v49 = v131;
        v63 = v146;
      }

      ++v47;
      *(v63 + 16) = v66;
      v133 = v63;
      v124((v63 + v54 + v65 * v55), v132, v49);
      v39 = v142;
      v50 = v56;
      v48 = v139;
    }

    else
    {
      (*v136)(v57, v59);
      ++v47;
      v49 = v59;
      v39 = v142;
      v44 = v53;
      v25 = v52;
      v50 = v56;
      v51 = v57;
      v48 = v139;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_220D88568()
{
  OUTLINED_FUNCTION_7_20();
  v0 = sub_220DBE560();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  sub_220DBE8F0();
  sub_220D89E90(&qword_280FA7798, MEMORY[0x277CC9578]);
  v9 = sub_220DC0580();
  v10 = *(v3 + 8);
  v10(v8, v0);
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    sub_220DBE8F0();
    v11 = sub_220DBE440();
    v10(v8, v0);
  }

  return v11 & 1;
}

uint64_t sub_220D886C8(uint64_t *a1)
{
  v2 = *(sub_220DBE960() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220D81A78(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_220D88770(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_220D88770(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_220DC0C60();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_220DBE960();
        v6 = sub_220DC0760();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_220DBE960() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_220D88C38(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_220D888A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_220D888A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_220DBE560();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_220DBE960();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
    while (2)
    {
      v48 = v26;
      v49 = a3;
      v46 = v28;
      v47 = v27;
      v63 = v27;
      do
      {
        v30 = v58;
        v31 = v56;
        v56(v58, v28, v13);
        v32 = v13;
        v33 = v59;
        v31(v59, v26, v32);
        sub_220DBE8F0();
        v34 = v61;
        sub_220DBE8F0();
        v64 = sub_220DBE440();
        v35 = *v55;
        v36 = v34;
        v37 = v62;
        (*v55)(v36, v62);
        v35(v29, v37);
        v38 = *v54;
        v39 = v33;
        v13 = v32;
        (*v54)(v39, v32);
        result = v38(v30, v32);
        if ((v64 & 1) == 0)
        {
          break;
        }

        if (!v52)
        {
          __break(1u);
          return result;
        }

        v40 = *v51;
        v41 = v53;
        (*v51)(v53, v28, v32);
        swift_arrayInitWithTakeFrontToBack();
        result = v40(v26, v41, v32);
        v26 += v50;
        v28 += v50;
      }

      while (!__CFADD__(v63++, 1));
      a3 = v49 + 1;
      v26 = &v48[v44];
      v27 = v47 - 1;
      v28 = v46 + v44;
      if (v49 + 1 != v45)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_220D88C38(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v136 = a1;
  v160 = sub_220DBE560();
  v8 = *(v160 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v160);
  v159 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v133 - v12;
  v13 = sub_220DBE960();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v139 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v150 = &v133 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v157 = &v133 - v21;
  MEMORY[0x28223BE20](v20);
  v161 = &v133 - v22;
  v145 = a3;
  v23 = a3[1];
  v140 = v14;
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_101:
    v162 = *v136;
    if (!v162)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v126 = (v25 + 16);
      v127 = *(v25 + 16);
      while (v127 >= 2)
      {
        if (!*v145)
        {
          goto LABEL_139;
        }

        v128 = v25;
        v129 = (v25 + 16 * v127);
        v130 = *v129;
        v131 = &v126[2 * v127];
        v25 = *(v131 + 1);
        sub_220D89824(*v145 + v140[9] * *v129, *v145 + v140[9] * *v131, *v145 + v140[9] * v25, v162);
        if (v5)
        {
          break;
        }

        if (v25 < v130)
        {
          goto LABEL_127;
        }

        if (v127 - 2 >= *v126)
        {
          goto LABEL_128;
        }

        *v129 = v130;
        v129[1] = v25;
        v132 = *v126 - v127;
        if (*v126 < v127)
        {
          goto LABEL_129;
        }

        v127 = *v126 - 1;
        sub_220D81848(v131 + 16, v132, v131);
        *v126 = v127;
        v25 = v128;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v25 = sub_220D81650(v25);
    goto LABEL_103;
  }

  v134 = a4;
  v24 = 0;
  v154 = (v8 + 8);
  v155 = v14 + 2;
  v152 = v14 + 4;
  v153 = (v14 + 1);
  v25 = MEMORY[0x277D84F90];
  v156 = v13;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    if (v24 + 1 < v23)
    {
      v135 = v25;
      v28 = v24;
      v137 = v24;
      v146 = v5;
      v147 = v24 + 1;
      v29 = *v145;
      v162 = v29;
      v30 = v14;
      v31 = v14[9];
      v148 = v23;
      v149 = v31;
      v32 = v29 + v31 * v27;
      v33 = v13;
      v34 = v30[2];
      v34(v161, v32, v13);
      v35 = v157;
      v143 = v34;
      v34(v157, v29 + v31 * v28, v33);
      v5 = v158;
      v25 = v161;
      sub_220DBE8F0();
      v36 = v159;
      sub_220DBE8F0();
      LODWORD(v144) = sub_220DBE440();
      v37 = *v154;
      v38 = v160;
      (*v154)(v36, v160);
      v142 = v37;
      (v37)(v5, v38);
      v39 = v140[1];
      v39(v35, v33);
      v141 = v39;
      v39(v25, v33);
      v40 = v148;
      v41 = v137 + 2;
      v42 = v162 + v149 * (v137 + 2);
      while (1)
      {
        v43 = v41;
        if (++v147 >= v40)
        {
          break;
        }

        v5 = v161;
        v44 = v156;
        v45 = v143;
        v162 = v41;
        (v143)(v161, v42, v156);
        v25 = v157;
        v45(v157, v32, v44);
        v46 = v158;
        sub_220DBE8F0();
        v47 = v159;
        sub_220DBE8F0();
        LOBYTE(v151) = sub_220DBE440() & 1;
        LODWORD(v151) = v151;
        v48 = v47;
        v49 = v160;
        v50 = v142;
        (v142)(v48, v160);
        v50(v46, v49);
        v51 = v141;
        v141(v25, v44);
        v51(v5, v44);
        v43 = v162;
        v40 = v148;
        v42 += v149;
        v32 += v149;
        v41 = v162 + 1;
        if ((v144 & 1) != v151)
        {
          goto LABEL_9;
        }
      }

      v147 = v40;
LABEL_9:
      if (v144)
      {
        v27 = v147;
        v26 = v137;
        v13 = v156;
        if (v147 < v137)
        {
          goto LABEL_133;
        }

        if (v137 >= v147)
        {
          v5 = v146;
          v14 = v140;
          v25 = v135;
          goto LABEL_32;
        }

        if (v40 >= v43)
        {
          v52 = v43;
        }

        else
        {
          v52 = v40;
        }

        v53 = v149 * (v52 - 1);
        v54 = v149 * v52;
        v55 = v137;
        v56 = v137 * v149;
        v5 = v146;
        v14 = v140;
        do
        {
          if (v55 != --v27)
          {
            v57 = v5;
            v58 = *v145;
            if (!*v145)
            {
              goto LABEL_140;
            }

            v162 = *v152;
            (v162)(v139, v58 + v56, v13);
            v59 = v56 < v53 || v58 + v56 >= v58 + v54;
            if (v59)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v56 != v53)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v162)(v58 + v53, v139, v13);
            v5 = v57;
            v14 = v140;
          }

          ++v55;
          v53 -= v149;
          v54 -= v149;
          v56 += v149;
        }

        while (v55 < v27);
        v25 = v135;
      }

      else
      {
        v5 = v146;
        v14 = v140;
        v25 = v135;
        v13 = v156;
      }

      v27 = v147;
      v26 = v137;
    }

LABEL_32:
    v60 = v145[1];
    if (v27 < v60)
    {
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_132;
      }

      if (v27 - v26 < v134)
      {
        break;
      }
    }

LABEL_48:
    if (v27 < v26)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v123 = *(v25 + 16);
      sub_220D562D4();
      v25 = v124;
    }

    v80 = *(v25 + 16);
    v81 = v80 + 1;
    if (v80 >= *(v25 + 24) >> 1)
    {
      sub_220D562D4();
      v25 = v125;
    }

    *(v25 + 16) = v81;
    v82 = (v25 + 32);
    v83 = (v25 + 32 + 16 * v80);
    *v83 = v26;
    v83[1] = v27;
    v162 = *v136;
    if (!v162)
    {
      goto LABEL_141;
    }

    v147 = v27;
    if (v80)
    {
      v151 = (v25 + 32);
      while (1)
      {
        v84 = v81 - 1;
        v85 = &v82[16 * v81 - 16];
        v86 = (v25 + 16 * v81);
        if (v81 >= 4)
        {
          break;
        }

        if (v81 == 3)
        {
          v87 = *(v25 + 32);
          v88 = *(v25 + 40);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_69:
          if (v90)
          {
            goto LABEL_118;
          }

          v102 = *v86;
          v101 = v86[1];
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_121;
          }

          v106 = *(v85 + 1);
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_126;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v81 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v81 < 2)
        {
          goto LABEL_120;
        }

        v109 = *v86;
        v108 = v86[1];
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_84:
        if (v105)
        {
          goto LABEL_123;
        }

        v111 = *v85;
        v110 = *(v85 + 1);
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_125;
        }

        if (v112 < v104)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v84 - 1 >= v81)
        {
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
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v145)
        {
          goto LABEL_138;
        }

        v116 = &v82[16 * v84 - 16];
        v117 = *v116;
        v118 = v84;
        v119 = &v82[16 * v84];
        v120 = *(v119 + 1);
        sub_220D89824(*v145 + v14[9] * *v116, *v145 + v14[9] * *v119, *v145 + v14[9] * v120, v162);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v120 < v117)
        {
          goto LABEL_113;
        }

        v146 = 0;
        v5 = v14;
        v121 = v25;
        v25 = *(v25 + 16);
        if (v118 > v25)
        {
          goto LABEL_114;
        }

        *v116 = v117;
        *(v116 + 1) = v120;
        if (v118 >= v25)
        {
          goto LABEL_115;
        }

        v81 = v25 - 1;
        sub_220D81848(v119 + 16, v25 - 1 - v118, v119);
        *(v121 + 16) = v25 - 1;
        v122 = v25 > 2;
        v25 = v121;
        v14 = v5;
        v5 = v146;
        v82 = v151;
        if (!v122)
        {
          goto LABEL_98;
        }
      }

      v91 = &v82[16 * v81];
      v92 = *(v91 - 8);
      v93 = *(v91 - 7);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_116;
      }

      v96 = *(v91 - 6);
      v95 = *(v91 - 5);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_117;
      }

      v98 = v86[1];
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_119;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_122;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = *(v85 + 1);
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_130;
        }

        if (v89 < v115)
        {
          v84 = v81 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v23 = v145[1];
    v24 = v147;
    if (v147 >= v23)
    {
      goto LABEL_101;
    }
  }

  v61 = (v26 + v134);
  if (__OFADD__(v26, v134))
  {
    goto LABEL_134;
  }

  if (v61 >= v60)
  {
    v61 = v145[1];
  }

  if (v61 < v26)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v27 == v61)
  {
    goto LABEL_48;
  }

  v135 = v25;
  v146 = v5;
  v62 = *v145;
  v63 = v14[9];
  v151 = v14[2];
  v64 = v62 + v63 * (v27 - 1);
  v148 = -v63;
  v137 = v26;
  v65 = (v26 - v27);
  v149 = v62;
  v138 = v63;
  v66 = (v62 + v27 * v63);
  v141 = v61;
LABEL_41:
  v147 = v27;
  v142 = v66;
  v143 = v65;
  v144 = v64;
  v67 = v64;
  while (1)
  {
    v68 = v161;
    v69 = v151;
    (v151)(v161, v66, v13);
    v70 = v157;
    (v69)(v157, v67, v13);
    v71 = v158;
    sub_220DBE8F0();
    v72 = v159;
    sub_220DBE8F0();
    LODWORD(v162) = sub_220DBE440();
    v73 = *v154;
    v74 = v72;
    v75 = v160;
    (*v154)(v74, v160);
    v76 = v71;
    v13 = v156;
    v73(v76, v75);
    v77 = *v153;
    (*v153)(v70, v13);
    v77(v68, v13);
    if ((v162 & 1) == 0)
    {
LABEL_46:
      v27 = v147 + 1;
      v64 = v144 + v138;
      v65 = v143 - 1;
      v66 = &v142[v138];
      if ((v147 + 1) == v141)
      {
        v27 = v141;
        v5 = v146;
        v14 = v140;
        v25 = v135;
        v26 = v137;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v149)
    {
      break;
    }

    v78 = *v152;
    v79 = v150;
    (*v152)(v150, v66, v13);
    swift_arrayInitWithTakeFrontToBack();
    v78(v67, v79, v13);
    v67 += v148;
    v66 += v148;
    v59 = __CFADD__(v65++, 1);
    if (v59)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_220D89824(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v86 = a4;
  v81 = sub_220DBE560();
  v7 = *(v81 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v81);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v69 - v11;
  v85 = sub_220DBE960();
  v12 = *(*(v85 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v85);
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v83 = &v69 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v20 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v20)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v23 = (a2 - a1) / v19;
  v89 = a1;
  v88 = v86;
  v76 = (v7 + 8);
  v77 = (v16 + 16);
  v75 = (v16 + 8);
  v24 = v21 / v19;
  if (v23 >= v21 / v19)
  {
    v44 = v86;
    sub_220CFB4E0(a2, v21 / v19, v86);
    v45 = v44 + v24 * v19;
    v46 = -v19;
    v47 = v45;
    v84 = a1;
    v71 = v46;
LABEL_36:
    v48 = a2 + v46;
    v49 = a3;
    v69 = v47;
    v50 = v47;
    v72 = a2 + v46;
    v73 = a2;
    while (1)
    {
      if (v45 <= v86)
      {
        v89 = a2;
        v87 = v50;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v70 = v50;
      v82 = v49 + v46;
      v51 = v45 + v46;
      v52 = v45;
      v53 = *v77;
      v54 = v48;
      v55 = v85;
      v56 = v49;
      (*v77)(v83, v45 + v46, v85);
      v57 = v78;
      v53(v78, v54, v55);
      v58 = v79;
      sub_220DBE8F0();
      v59 = v80;
      sub_220DBE8F0();
      LODWORD(v74) = sub_220DBE440();
      v60 = *v76;
      v61 = v59;
      v62 = v81;
      (*v76)(v61, v81);
      v60(v58, v62);
      v63 = *v75;
      (*v75)(v57, v55);
      v63(v83, v55);
      if (v74)
      {
        v45 = v52;
        a3 = v82;
        if (v56 < v73 || v82 >= v73)
        {
          a2 = v72;
          swift_arrayInitWithTakeFrontToBack();
          v47 = v70;
          v46 = v71;
          a1 = v84;
        }

        else
        {
          v67 = v70;
          v46 = v71;
          v47 = v70;
          v20 = v56 == v73;
          v68 = v72;
          a2 = v72;
          a1 = v84;
          if (!v20)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v68;
            v47 = v67;
          }
        }

        goto LABEL_36;
      }

      v64 = v82;
      if (v56 < v52 || v82 >= v52)
      {
        swift_arrayInitWithTakeFrontToBack();
        v49 = v64;
        v45 = v51;
        v50 = v51;
        v48 = v72;
        a2 = v73;
        a1 = v84;
        v46 = v71;
      }

      else
      {
        v50 = v51;
        v20 = v52 == v56;
        v49 = v82;
        v45 = v51;
        v48 = v72;
        a2 = v73;
        a1 = v84;
        v46 = v71;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v49 = v64;
          v45 = v51;
          v50 = v51;
        }
      }
    }

    v89 = a2;
    v87 = v69;
  }

  else
  {
    v25 = v86;
    sub_220CFB4E0(a1, (a2 - a1) / v19, v86);
    v73 = v19;
    v74 = v25 + v23 * v19;
    v87 = v74;
    v82 = a3;
    while (v86 < v74 && a2 < a3)
    {
      v84 = a1;
      v27 = *v77;
      v28 = v83;
      v29 = v85;
      (*v77)(v83, a2, v85);
      v30 = v78;
      v27(v78, v86, v29);
      v31 = v79;
      sub_220DBE8F0();
      v32 = v80;
      sub_220DBE8F0();
      v33 = sub_220DBE440();
      v34 = a2;
      v35 = *v76;
      v36 = v32;
      v37 = v81;
      (*v76)(v36, v81);
      v35(v31, v37);
      v38 = *v75;
      (*v75)(v30, v29);
      v38(v28, v29);
      if (v33)
      {
        v39 = v73;
        a2 = v34 + v73;
        v40 = v84;
        if (v84 < v34 || v84 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
        }

        else
        {
          a3 = v82;
          if (v84 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v39 = v73;
        v42 = v86 + v73;
        v40 = v84;
        if (v84 < v86 || v84 >= v42)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
          a2 = v34;
        }

        else
        {
          a3 = v82;
          a2 = v34;
          if (v84 != v86)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v88 = v42;
        v86 = v42;
      }

      a1 = v40 + v39;
      v89 = a1;
    }
  }

LABEL_58:
  sub_220D81768(&v89, &v88, &v87);
  return 1;
}

uint64_t sub_220D89E90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220D89ED8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_220D88568() & 1;
}

uint64_t sub_220D89F98@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ChartAreaSeries();
  v4 = *(result + 32);
  v5 = (v1 + *(result + 28));
  v7 = *v5;
  v6 = v5 + 1;
  v8 = v7;
  if (!*(v1 + 32))
  {
    v6 = (v1 + 24);
  }

  v9 = *v6;
  v10 = *(v1 + v4 + 8);
  v11 = *(v1 + v4 + 16);
  if (*v6 <= v8 + 0.01)
  {
    v9 = v8 + 0.01;
  }

  if (v8 > v9 || v10 > v11)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v1 + v4);
    if (v10 >= v11)
    {
    }

    else
    {
      sub_220DC00D0();
    }

    sub_220DC0190();
    sub_220DC0180();
    result = sub_220DBF7B0();
    *a1 = v14;
    *(a1 + 16) = v15;
    *(a1 + 32) = v16;
  }

  return result;
}

uint64_t ChartAreaSeries.init(chartData:dateExtrema:visibleDateRange:yAxisRange:areaStyle:halfLineWidth:useSecondValue:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, void *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  v17 = *a4;
  v23 = *(a4 + 1);
  v18 = a4[3];
  v19 = type metadata accessor for ChartAreaSeries();
  v20 = a6 + v19[8];
  *v20 = v17;
  *(v20 + 8) = v23;
  *(v20 + 3) = v18;
  *a6 = a1;
  memcpy(a6 + 1, a2, 0x59uLL);
  result = sub_220D8A1C0(a3, a6 + v19[6]);
  v22 = (a6 + v19[7]);
  *v22 = a7;
  v22[1] = a8;
  *(a6 + v19[10]) = a9;
  *(a6 + v19[9]) = a5;
  return result;
}

uint64_t type metadata accessor for ChartAreaSeries()
{
  result = qword_27CF96058;
  if (!qword_27CF96058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D8A1C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ChartAreaSeries.body.getter@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = type metadata accessor for ChartAreaSeries();
  v3 = *(v2 - 8);
  v55 = v2 - 8;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96020, &qword_220DC5FE8);
  OUTLINED_FUNCTION_0(v5);
  v46 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96028, &qword_220DC5FF0);
  OUTLINED_FUNCTION_0(v49);
  v50 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96030, &qword_220DC5FF8);
  OUTLINED_FUNCTION_0(v51);
  v52 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  v47 = &v45 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96038, &unk_220DC6000);
  v53 = OUTLINED_FUNCTION_0(v23);
  v54 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v27);
  v48 = &v45 - v28;
  *&v61[0] = *v1;
  swift_getKeyPath();
  sub_220D8AA60(v1, &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v30 = swift_allocObject();
  sub_220D8AAC4(&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EE0, &qword_220DC85D0);
  sub_220DBF690();
  sub_220D8ABA8();
  sub_220D8B268(&qword_27CF96040, type metadata accessor for DetailChartDataElement);
  sub_220DC0090();
  sub_220D89F98(v61);
  v58 = v61[0];
  v59 = v61[1];
  v60 = v62;
  v31 = sub_220D8AC0C();
  v32 = MEMORY[0x277CDF838];
  v33 = MEMORY[0x277CDF828];
  sub_220DBF4A0();
  sub_220D7AE00(v61);
  (*(v46 + 8))(v11, v5);
  v57 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96050, &qword_220DC6030);
  *&v58 = v5;
  *(&v58 + 1) = v32;
  *&v59 = v31;
  *(&v59 + 1) = v33;
  OUTLINED_FUNCTION_3_27();
  v35 = OUTLINED_FUNCTION_7_21();
  *&v58 = sub_220DBF590();
  *(&v58 + 1) = MEMORY[0x277CBB2F8];
  OUTLINED_FUNCTION_2_30();
  v36 = OUTLINED_FUNCTION_7_21();
  v37 = v47;
  v38 = v49;
  sub_220DBF500();
  (*(v50 + 8))(v17, v38);
  v39 = *(v1 + *(v55 + 40) + 24);
  *&v58 = v38;
  *(&v58 + 1) = v34;
  *&v59 = v35;
  *(&v59 + 1) = v36;
  OUTLINED_FUNCTION_4_21();
  v40 = OUTLINED_FUNCTION_7_21();
  v41 = v48;
  v42 = v51;
  sub_220DBF550();
  (*(v52 + 8))(v37, v42);
  *&v58 = v42;
  *(&v58 + 1) = v40;
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_7_21();
  v43 = v53;
  sub_220DBF4E0();
  return (*(v54 + 8))(v41, v43);
}

uint64_t sub_220D8A7BC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_220DBFA00();
  sub_220DBE560();
  sub_220DBF5A0();

  sub_220DBFA00();
  v8 = type metadata accessor for ChartAreaSeries();
  v14 = *(a2 + *(v8 + 28));
  sub_220DBF5A0();

  sub_220DBFA00();
  v9 = *(a2 + *(v8 + 36));
  v10 = type metadata accessor for DetailChartDataElement(0);
  v11 = 20;
  if (v9)
  {
    v11 = 24;
  }

  v15 = *(a1 + *(v10 + v11));
  sub_220DBF5A0();

  return sub_220DBF680();
}

uint64_t sub_220D8AA60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartAreaSeries();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D8AAC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartAreaSeries();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D8AB28(uint64_t a1)
{
  v3 = *(type metadata accessor for ChartAreaSeries() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_220D8A7BC(a1, v4);
}

unint64_t sub_220D8ABA8()
{
  result = qword_27CF95EE8;
  if (!qword_27CF95EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95EE0, &qword_220DC85D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95EE8);
  }

  return result;
}

unint64_t sub_220D8AC0C()
{
  result = qword_27CF96048;
  if (!qword_27CF96048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96020, &qword_220DC5FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96048);
  }

  return result;
}

uint64_t sub_220D8AC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB0, &unk_220DC7330);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v32 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95EB8, &qword_220DC59C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v27 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v28 = &v25 - v12;
  v13 = sub_220DBF590();
  v14 = *(v13 - 8);
  v30 = v13;
  v31 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBFA00();
  v26 = type metadata accessor for ChartAreaSeries();
  v18 = a1 + *(v26 + 24);
  sub_220DBE560();
  sub_220DBF5A0();

  sub_220DBFA00();
  v19 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0) + 36);
  sub_220DBF5A0();

  sub_220DBFA00();
  v20 = v26;
  v21 = (a1 + *(v26 + 28));
  v34 = *v21;
  sub_220DBF5A0();

  sub_220DBFA00();
  v34 = v21[1];
  sub_220DBF5A0();

  sub_220DBF580();
  v22 = *(a1 + *(v20 + 40));
  v23 = v30;
  sub_220DBF520();
  return (*(v31 + 8))(v17, v23);
}

void sub_220D8B0BC()
{
  sub_220D8B17C();
  if (v0 <= 0x3F)
  {
    sub_220D8B1D4();
    if (v1 <= 0x3F)
    {
      sub_220D8B2B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220D8B17C()
{
  if (!qword_280FA6638)
  {
    type metadata accessor for DetailChartDataElement(255);
    v0 = sub_220DC0770();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA6638);
    }
  }
}

void sub_220D8B1D4()
{
  if (!qword_27CF96068)
  {
    sub_220DBE560();
    sub_220D8B268(&qword_280FA7798, MEMORY[0x277CC9578]);
    v0 = sub_220DC05A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF96068);
    }
  }
}

uint64_t sub_220D8B268(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_220D8B2B0()
{
  if (!qword_27CF96070)
  {
    v0 = sub_220DC05A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF96070);
    }
  }
}

BOOL static DetailCondition.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 2:
      if (v2 == 2)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_15;
      }

LABEL_13:
      result = 1;
      break;
    default:
      if ((v2 - 2) >= 6)
      {
        result = ((v2 ^ *a1) & 1) == 0;
      }

      else
      {
LABEL_15:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_220D8B3AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79746964696D7568 && a2 == 0xE800000000000000;
  if (v4 || (sub_220DC0CA0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6572757373657270 && a2 == 0xE800000000000000;
    if (v6 || (sub_220DC0CA0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000220DC8A80 == a2;
      if (v7 || (sub_220DC0CA0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F697469646E6F63 && a2 == 0xEA0000000000736ELL;
        if (v8 || (sub_220DC0CA0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7865646E497675 && a2 == 0xE700000000000000;
          if (v9 || (sub_220DC0CA0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x696C696269736976 && a2 == 0xEA00000000007974;
            if (v10 || (sub_220DC0CA0() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 1684957559 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_220DC0CA0();

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

uint64_t sub_220D8B630(unsigned __int8 a1)
{
  sub_220DC0CE0();
  MEMORY[0x223D98920](a1);
  return sub_220DC0D20();
}

unint64_t sub_220D8B684(char a1)
{
  result = 0x79746964696D7568;
  switch(a1)
  {
    case 1:
      result = 0x6572757373657270;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6F697469646E6F63;
      break;
    case 4:
      result = 0x7865646E497675;
      break;
    case 5:
      result = 0x696C696269736976;
      break;
    case 6:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220D8B778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220D8B3AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220D8B7C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220D8B5F0();
  *a1 = result;
  return result;
}

uint64_t sub_220D8B7E8(uint64_t a1)
{
  v2 = sub_220D8C374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D8B824(uint64_t a1)
{
  v2 = sub_220D8C374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D8B860(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220DC0CA0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220D8B8F8()
{
  sub_220DC0CE0();
  MEMORY[0x223D98920](0);
  return sub_220DC0D20();
}

uint64_t sub_220D8B960()
{
  sub_220DC0CE0();
  MEMORY[0x223D98920](0);
  return sub_220DC0D20();
}

uint64_t sub_220D8B9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220D8B860(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220D8B9EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220CE7328();
  *a1 = result & 1;
  return result;
}

uint64_t sub_220D8BA18(uint64_t a1)
{
  v2 = sub_220D8C4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D8BA54(uint64_t a1)
{
  v2 = sub_220D8C4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D8BA94(uint64_t a1)
{
  v2 = sub_220D8C614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D8BAD0(uint64_t a1)
{
  v2 = sub_220D8C614();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D8BB0C(uint64_t a1)
{
  v2 = sub_220D8C56C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D8BB48(uint64_t a1)
{
  v2 = sub_220D8C56C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D8BB84(uint64_t a1)
{
  v2 = sub_220D8C5C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D8BBC0(uint64_t a1)
{
  v2 = sub_220D8C5C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D8BBFC(uint64_t a1)
{
  v2 = sub_220D8C470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D8BC38(uint64_t a1)
{
  v2 = sub_220D8C470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D8BC74(uint64_t a1)
{
  v2 = sub_220D8C41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D8BCB0(uint64_t a1)
{
  v2 = sub_220D8C41C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220D8BCEC(uint64_t a1)
{
  v2 = sub_220D8C3C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220D8BD28(uint64_t a1)
{
  v2 = sub_220D8C3C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DetailCondition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96078, &qword_220DC60C0);
  v4 = OUTLINED_FUNCTION_0(v3);
  v88 = v5;
  v89 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22();
  v87 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96080, &qword_220DC60C8);
  v11 = OUTLINED_FUNCTION_0(v10);
  v85 = v12;
  v86 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22();
  v84 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96088, &qword_220DC60D0);
  v18 = OUTLINED_FUNCTION_0(v17);
  v82 = v19;
  v83 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_22();
  v79 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96090, &qword_220DC60D8);
  v25 = OUTLINED_FUNCTION_0(v24);
  v80 = v26;
  v81 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_22();
  v78 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96098, &qword_220DC60E0);
  v32 = OUTLINED_FUNCTION_0(v31);
  v76 = v33;
  v77 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_22();
  v75 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF960A0, &qword_220DC60E8);
  v39 = OUTLINED_FUNCTION_0(v38);
  v73 = v40;
  v74 = v39;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v43);
  v45 = &v72 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF960A8, &qword_220DC60F0);
  OUTLINED_FUNCTION_0(v46);
  v72 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v50);
  v52 = &v72 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF960B0, &qword_220DC60F8);
  v54 = OUTLINED_FUNCTION_0(v53);
  v90 = v55;
  v91 = v54;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v58);
  v59 = *v1;
  v60 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v60);
  sub_220D8C374();
  sub_220DC0D40();
  switch(v59)
  {
    case 2:
      v92 = 0;
      sub_220D8C614();
      OUTLINED_FUNCTION_3_28();
      (*(v72 + 8))(v52, v46);
      goto LABEL_9;
    case 3:
      v93 = 1;
      sub_220D8C5C0();
      v60 = v91;
      sub_220DC0C40();
      (*(v73 + 8))(v45, v74);
      goto LABEL_9;
    case 4:
      v94 = 2;
      sub_220D8C56C();
      v61 = v75;
      OUTLINED_FUNCTION_3_28();
      v63 = v76;
      v62 = v77;
      goto LABEL_8;
    case 5:
      v97 = 4;
      sub_220D8C470();
      v61 = v79;
      OUTLINED_FUNCTION_3_28();
      v63 = v82;
      v62 = v83;
      goto LABEL_8;
    case 6:
      v98 = 5;
      sub_220D8C41C();
      v61 = v84;
      OUTLINED_FUNCTION_3_28();
      v63 = v85;
      v62 = v86;
      goto LABEL_8;
    case 7:
      v99 = 6;
      sub_220D8C3C8();
      v61 = v87;
      OUTLINED_FUNCTION_3_28();
      v63 = v88;
      v62 = v89;
LABEL_8:
      (*(v63 + 8))(v61, v62);
LABEL_9:
      v64 = OUTLINED_FUNCTION_12_21();
      result = v65(v64, v60);
      break;
    default:
      v96 = 3;
      sub_220D8C4C4();
      v67 = v78;
      v68 = v91;
      sub_220DC0C40();
      v95 = v59 & 1;
      sub_220D8C518();
      v69 = v81;
      sub_220DC0C50();
      (*(v80 + 8))(v67, v69);
      v70 = OUTLINED_FUNCTION_12_21();
      result = v71(v70, v68);
      break;
  }

  return result;
}

unint64_t sub_220D8C374()
{
  result = qword_27CF960B8;
  if (!qword_27CF960B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960B8);
  }

  return result;
}

unint64_t sub_220D8C3C8()
{
  result = qword_27CF960C0;
  if (!qword_27CF960C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960C0);
  }

  return result;
}

unint64_t sub_220D8C41C()
{
  result = qword_27CF960C8;
  if (!qword_27CF960C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960C8);
  }

  return result;
}

unint64_t sub_220D8C470()
{
  result = qword_27CF960D0;
  if (!qword_27CF960D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960D0);
  }

  return result;
}

unint64_t sub_220D8C4C4()
{
  result = qword_27CF960D8;
  if (!qword_27CF960D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960D8);
  }

  return result;
}

unint64_t sub_220D8C518()
{
  result = qword_27CF960E0;
  if (!qword_27CF960E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960E0);
  }

  return result;
}

unint64_t sub_220D8C56C()
{
  result = qword_27CF960E8;
  if (!qword_27CF960E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960E8);
  }

  return result;
}

unint64_t sub_220D8C5C0()
{
  result = qword_27CF960F0;
  if (!qword_27CF960F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960F0);
  }

  return result;
}

unint64_t sub_220D8C614()
{
  result = qword_27CF960F8;
  if (!qword_27CF960F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF960F8);
  }

  return result;
}

uint64_t DetailCondition.hash(into:)()
{
  v1 = *v0;
  if ((*v0 - 2) >= 6u)
  {
    MEMORY[0x223D98920](3);
    v2 = v1 & 1;
  }

  else
  {
    v2 = qword_220DC69A8[(*v0 - 2)];
  }

  return MEMORY[0x223D98920](v2);
}

uint64_t DetailCondition.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  if ((v1 - 2) >= 6u)
  {
    MEMORY[0x223D98920](3);
    v2 = v1 & 1;
  }

  else
  {
    v2 = qword_220DC69A8[(v1 - 2)];
  }

  MEMORY[0x223D98920](v2);
  return sub_220DC0D20();
}

uint64_t DetailCondition.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v121 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96100, &qword_220DC6100);
  v116 = OUTLINED_FUNCTION_0(v3);
  v117 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22();
  v124 = v8;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96108, &qword_220DC6108);
  OUTLINED_FUNCTION_0(v109);
  v115 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22();
  v120 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96110, &qword_220DC6110);
  v111 = OUTLINED_FUNCTION_0(v14);
  v112 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22();
  v118 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96118, &qword_220DC6118);
  v113 = OUTLINED_FUNCTION_0(v20);
  v114 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_22();
  v119 = v25;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96120, &qword_220DC6120);
  OUTLINED_FUNCTION_0(v123);
  v110 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_22();
  v122 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96128, &qword_220DC6128);
  v32 = OUTLINED_FUNCTION_0(v31);
  v107 = v33;
  v108 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v36);
  v38 = v101 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96130, &qword_220DC6130);
  OUTLINED_FUNCTION_0(v39);
  v106 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v43);
  v45 = v101 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96138, &qword_220DC6138);
  OUTLINED_FUNCTION_0(v46);
  v48 = v47;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v51);
  v53 = v101 - v52;
  v54 = a1[3];
  v55 = a1[4];
  v125 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v54);
  sub_220D8C374();
  v56 = v126;
  sub_220DC0D30();
  if (v56)
  {
    goto LABEL_8;
  }

  v103 = v45;
  v102 = v39;
  v104 = v38;
  v58 = v122;
  v57 = v123;
  v126 = v48;
  v105 = v53;
  v59 = sub_220DC0C30();
  result = sub_220D8DAA8(v59, 0);
  if (v62 == v63 >> 1)
  {
LABEL_7:
    v76 = sub_220DC0BA0();
    swift_allocError();
    v78 = v77;
    v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96140, &qword_220DC6140) + 48);
    *v78 = &type metadata for DetailCondition;
    v80 = v105;
    sub_220DC0C10();
    sub_220DC0B90();
    (*(*(v76 - 8) + 104))(v78, *MEMORY[0x277D84160], v76);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v126 + 8))(v80, v46);
LABEL_8:
    v81 = v125;
    return __swift_destroy_boxed_opaque_existential_1(v81);
  }

  v101[1] = 0;
  if (v62 < (v63 >> 1))
  {
    v64 = *(v61 + v62);
    sub_220D8E630(v62 + 1, v63 >> 1, result, v61, v62, v63);
    v66 = v65;
    v68 = v67;
    swift_unknownObjectRelease();
    if (v66 == v68 >> 1)
    {
      v69 = v46;
      v70 = v121;
      v71 = v105;
      switch(v64)
      {
        case 1:
          v128 = 1;
          sub_220D8C5C0();
          v88 = v104;
          OUTLINED_FUNCTION_4_22(&type metadata for DetailCondition.PressureCodingKeys, &v128);
          swift_unknownObjectRelease();
          (*(v107 + 8))(v88, v108);
          v89 = OUTLINED_FUNCTION_2_31();
          v90(v89);
          v75 = 3;
          break;
        case 2:
          v129[0] = 2;
          sub_220D8C56C();
          OUTLINED_FUNCTION_4_22(&type metadata for DetailCondition.PrecipitationTotalCodingKeys, v129);
          swift_unknownObjectRelease();
          (*(v110 + 8))(v58, v57);
          v85 = OUTLINED_FUNCTION_2_31();
          v86(v85);
          v75 = 4;
          break;
        case 3:
          v130 = 3;
          sub_220D8C4C4();
          OUTLINED_FUNCTION_4_22(&type metadata for DetailCondition.ConditionsCodingKeys, &v130);
          sub_220D8DAF0();
          sub_220DC0C20();
          v87 = v126;
          swift_unknownObjectRelease();
          v99 = OUTLINED_FUNCTION_11_16();
          v100(v99);
          (*(v87 + 8))(v71, v69);
          v75 = v129[1];
          break;
        case 4:
          v131 = 4;
          sub_220D8C470();
          v82 = v118;
          OUTLINED_FUNCTION_4_22(&type metadata for DetailCondition.UvIndexCodingKeys, &v131);
          swift_unknownObjectRelease();
          (*(v112 + 8))(v82, v111);
          v83 = OUTLINED_FUNCTION_2_31();
          v84(v83);
          v75 = 5;
          break;
        case 5:
          v132 = 5;
          sub_220D8C41C();
          OUTLINED_FUNCTION_4_22(&type metadata for DetailCondition.VisibilityCodingKeys, &v132);
          swift_unknownObjectRelease();
          v91 = OUTLINED_FUNCTION_12_21();
          v92(v91, v109);
          v93 = OUTLINED_FUNCTION_2_31();
          v94(v93);
          v75 = 6;
          break;
        case 6:
          v133 = 6;
          sub_220D8C3C8();
          OUTLINED_FUNCTION_4_22(&type metadata for DetailCondition.WindCodingKeys, &v133);
          swift_unknownObjectRelease();
          v95 = OUTLINED_FUNCTION_12_21();
          v96(v95);
          v97 = OUTLINED_FUNCTION_2_31();
          v98(v97);
          v75 = 7;
          break;
        default:
          v127 = 0;
          sub_220D8C614();
          v72 = v103;
          OUTLINED_FUNCTION_4_22(&type metadata for DetailCondition.HumidityCodingKeys, &v127);
          swift_unknownObjectRelease();
          (*(v106 + 8))(v72, v102);
          v73 = OUTLINED_FUNCTION_2_31();
          v74(v73);
          v75 = 2;
          break;
      }

      v81 = v125;
      *v70 = v75;
      return __swift_destroy_boxed_opaque_existential_1(v81);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_220D8D0E8()
{
  v1 = *v0;
  sub_220DC0CE0();
  if ((v1 - 2) >= 6u)
  {
    MEMORY[0x223D98920](3);
    v2 = v1 & 1;
  }

  else
  {
    v2 = qword_220DC69A8[(v1 - 2)];
  }

  MEMORY[0x223D98920](v2);
  return sub_220DC0D20();
}

void DetailCondition.primaryChartCondition.getter(char *a1@<X8>)
{
  v2 = *v1;
  v3 = v2 - 2;
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  if (v3 < 6)
  {
    v4 = 0x70605020100uLL >> (8 * v3);
  }

  *a1 = v4;
}

uint64_t DetailCondition.title.getter()
{
  switch(*v0)
  {
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    case 3:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    case 4:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    case 5:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_11;
      }

LABEL_19:
      OUTLINED_FUNCTION_10();
LABEL_11:
      OUTLINED_FUNCTION_5_1();
      goto LABEL_16;
    case 6:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    case 7:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    default:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_15;
      }

LABEL_20:
      OUTLINED_FUNCTION_10();
LABEL_15:
      OUTLINED_FUNCTION_1_6();
LABEL_16:
      OUTLINED_FUNCTION_6_0();
      return sub_220DBE240();
  }
}

uint64_t DetailCondition.subtitle.getter()
{
  if (*v0 - 2 < 6)
  {
    return 0;
  }

  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_0();
  return sub_220DBE240();
}

uint64_t DetailCondition.filledSymbolName.getter()
{
  result = 0x79746964696D7568;
  switch(*v0)
  {
    case 2:
      return result;
    case 3:
      result = OUTLINED_FUNCTION_10_21();
      break;
    case 4:
      result = 0x6C69662E706F7264;
      break;
    case 5:
      result = 0x2E78616D2E6E7573;
      break;
    case 6:
      result = 0x6C6C69662E657965;
      break;
    case 7:
      result = 1684957559;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t DetailCondition.symbolName.getter()
{
  result = 0x79746964696D7568;
  switch(*v0)
  {
    case 2:
      return result;
    case 3:
      result = OUTLINED_FUNCTION_10_21();
      break;
    case 4:
      result = 1886351972;
      break;
    case 5:
      result = 0x78616D2E6E7573;
      break;
    case 6:
      result = 6650213;
      break;
    case 7:
      result = 1684957559;
      break;
    default:
      result = 0x75732E64756F6C63;
      break;
  }

  return result;
}

uint64_t DetailCondition.accessibilityLabel.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96150, &unk_220DC6148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220DC17C0;
  *(inited + 32) = DetailCondition.title.getter();
  *(inited + 40) = v3;
  if ((v1 - 2) >= 6)
  {
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_6_0();
    v4 = sub_220DBE240();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = 0;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v7 = MEMORY[0x277D84F90];
LABEL_7:
  v8 = (inited + 40 + 16 * v6);
  while (++v6 != 3)
  {
    v9 = v8 + 2;
    v10 = *v8;
    v8 += 2;
    if (v10)
    {
      v11 = *(v9 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220D56830(0, *(v7 + 16) + 1, 1, v7);
        v7 = v15;
      }

      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_220D56830(v12 > 1, v13 + 1, 1, v7);
        v7 = v16;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      goto LABEL_7;
    }
  }

  swift_setDeallocating();
  sub_220D7FE14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95750, &qword_220DC5B30);
  sub_220D3A694();
  v17 = sub_220DC0570();

  return v17;
}

unint64_t DetailCondition.description.getter()
{
  v1 = *v0;
  result = 0x79746964696D7568;
  switch(*v0)
  {
    case 2:
      return result;
    case 3:
      result = 0x6572757373657270;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x7865646E497675;
      break;
    case 6:
      result = 0x696C696269736976;
      break;
    case 7:
      result = 1684957559;
      break;
    default:
      BYTE8(v3) = 0;
      MEMORY[0x223D982B0](0x6F697469646E6F63, 0xEB0000000028736ELL);
      *&v3 = v1 & 1;
      sub_220DC0BC0();
      MEMORY[0x223D982B0](41, 0xE100000000000000);
      result = *(&v3 + 1);
      break;
  }

  return result;
}

unint64_t DetailCondition.rawValue.getter()
{
  result = 0x79746964696D7568;
  switch(*v0)
  {
    case 2:
      return result;
    case 3:
      result = 0x6572757373657270;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x7865646E497675;
      break;
    case 6:
      result = 0x696C696269736976;
      break;
    case 7:
      result = 1684957559;
      break;
    default:
      result = 0x6F697469646E6F63;
      break;
  }

  return result;
}

uint64_t sub_220D8DAA8(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_220D8DAF0()
{
  result = qword_27CF96148;
  if (!qword_27CF96148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96148);
  }

  return result;
}

unint64_t sub_220D8DB48()
{
  result = qword_27CF96158;
  if (!qword_27CF96158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96158);
  }

  return result;
}

unint64_t sub_220D8DBA0()
{
  result = qword_27CF96160;
  if (!qword_27CF96160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96160);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for DetailCondition(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = v6 - 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 7)
    {
      return (v7 - 6);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 7;
    if (a2 + 7 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 7);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DetailCondition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xF9)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF8)
  {
    v7 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220D8DD78(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for DetailCondition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DetailCondition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DetailCondition.ConditionsCodingKeys(_BYTE *result, int a2, int a3)
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