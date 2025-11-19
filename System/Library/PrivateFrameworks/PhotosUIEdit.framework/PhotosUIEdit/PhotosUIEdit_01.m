uint64_t sub_25E7066EC()
{
  v0 = sub_25E756CC8();
  v2 = v1;
  if (v0 == sub_25E756CC8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_17();
  }

  return v5 & 1;
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return sub_25E756F08();
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return sub_25E756F08();
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return sub_25E756CC8();
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return sub_25E756CC8();
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return sub_25E756CC8();
}

uint64_t OUTLINED_FUNCTION_13_0()
{
}

uint64_t OUTLINED_FUNCTION_15()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_16()
{
}

uint64_t OUTLINED_FUNCTION_17()
{

  return sub_25E756F08();
}

double OUTLINED_FUNCTION_18(CGRect rect)
{

  return CGRectGetMinX(rect);
}

uint64_t OUTLINED_FUNCTION_20()
{

  return sub_25E756F08();
}

uint64_t OUTLINED_FUNCTION_21()
{
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_allocObject();
}

uint64_t sub_25E7069C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E756288();
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_25E756298();
}

uint64_t sub_25E706AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25E756288();
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_25E756298();
}

uint64_t sub_25E706BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E756E68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_25E706C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  (*(v11 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  (*(v6 + 16))(v9, a1, a4);
  return sub_25E755C98();
}

uint64_t sub_25E706DD0()
{
  sub_25E755D28();
  sub_25E71248C();
  return sub_25E7143DC(v1);
}

uint64_t sub_25E706E84()
{
  v0 = sub_25E756128();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD041C0);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for PhotoStyleValueLabels(0);
  sub_25E704F3C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25E714CFC();
  }

  sub_25E756DC8();
  v6 = sub_25E756388();
  sub_25E755AB8();

  sub_25E756118();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t PhotoStyleValueLabels.body.getter@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v60 = sub_25E756418();
  OUTLINED_FUNCTION_4_2();
  v59 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_3();
  v58 = v5 - v4;
  v65 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_3();
  v69 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03E40);
  OUTLINED_FUNCTION_20_0(v9);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03E48);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03E50);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03E58);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03E60);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - v21;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03E68);
  OUTLINED_FUNCTION_4_2();
  v67 = v23;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v24);
  v66 = &v57 - v25;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03E70);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v57 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E75B240;
  v30 = sub_25E756398();
  *(inited + 32) = v30;
  v31 = sub_25E7563B8();
  *(inited + 33) = v31;
  v32 = sub_25E7563A8();
  sub_25E7563A8();
  if (sub_25E7563A8() != v30)
  {
    v32 = sub_25E7563A8();
  }

  sub_25E7563A8();
  if (sub_25E7563A8() != v31)
  {
    v32 = sub_25E7563A8();
  }

  *v12 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03E80);
  v34 = v71;
  sub_25E7078E8(v71, &v12[*(v33 + 44)]);
  v35 = *(v34 + 25);
  sub_25E704EE4();
  *(v1 + *(v61 + 52)) = v35;
  sub_25E755DA8();
  sub_25E756AF8();
  v36 = sub_25E755DC8();

  sub_25E704EE4();
  *&v16[*(v62 + 36)] = v36;
  sub_25E756A78();
  sub_25E756018();
  sub_25E704EE4();
  memcpy(&v19[*(v63 + 36)], __src, 0x70uLL);
  v37 = v69;
  v38 = sub_25E706E84();
  if (MEMORY[0x25F8BEB80](v38))
  {
    sub_25E756438();
    v39 = v58;
    sub_25E756408();
    v40 = sub_25E756448();
    (*(v59 + 8))(v39, v60);
  }

  else
  {
    v41 = PXMonospacedNumberFontWithSizeAndWeight();
    v40 = sub_25E756468();
  }

  OUTLINED_FUNCTION_0_2();
  sub_25E712B98(v37, v42);
  KeyPath = swift_getKeyPath();
  sub_25E704EE4();
  v44 = &v22[*(v64 + 36)];
  *v44 = KeyPath;
  v44[1] = v40;
  sub_25E756438();
  sub_25E712654();
  v45 = v66;
  sub_25E756538();
  sub_25E704C40(v22, &qword_27FD03E60);
  v46 = swift_getKeyPath();
  v47 = v70;
  v48 = &v28[*(v70 + 36)];
  v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03EC8) + 28);
  sub_25E756A38();
  v50 = sub_25E756A58();
  __swift_storeEnumTagSinglePayload(v48 + v49, 0, 1, v50);
  *v48 = v46;
  (*(v67 + 32))(v28, v45, v68);
  v51 = sub_25E756A68();
  MEMORY[0x28223BE20](v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03ED8);
  sub_25E712884();
  OUTLINED_FUNCTION_28();
  v52 = sub_25E756908();
  OUTLINED_FUNCTION_12_1();
  v55 = sub_25E712E0C(v53, v54);
  v73 = v47;
  v74 = v52;
  v75 = v45;
  v76 = v55;
  OUTLINED_FUNCTION_11_1();
  swift_getOpaqueTypeConformance2();
  sub_25E712978();
  sub_25E756658();
  return sub_25E704C40(v28, &qword_27FD03E70);
}

uint64_t sub_25E7078E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v48 = sub_25E756128();
  v53 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD041C0);
  v6 = MEMORY[0x28223BE20](v5);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v47 = &v47 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD043D0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v56 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v55 = &v47 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v47 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v54 = &v47 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v57 = &v47 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v47 - v33;
  sub_25E706E84();
  v52 = v34;
  sub_25E707FD0(v20, v34);
  sub_25E712B98(v20, type metadata accessor for PhotoStyleValueLabels.Configuration);
  type metadata accessor for PhotoStyleValueLabels(0);
  v58 = a1;
  sub_25E704F3C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25E714CFC();
  }

  else
  {
    sub_25E756DC8();
    v35 = sub_25E756388();
    sub_25E755AB8();

    v36 = v48;
    v37 = v53;
    sub_25E756118();
    swift_getAtKeyPath();

    (*(v37 + 8))(v4, v36);
  }

  sub_25E714CFC();
  *v18 = 1;
  sub_25E707FD0(v18, v57);
  sub_25E712B98(v18, type metadata accessor for PhotoStyleValueLabels.Configuration);
  sub_25E704F3C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25E714CFC();
  }

  else
  {
    v38 = v4;
    v39 = v53;
    sub_25E756DC8();
    v40 = sub_25E756388();
    sub_25E755AB8();

    sub_25E756118();
    swift_getAtKeyPath();

    (*(v39 + 8))(v38, v48);
  }

  sub_25E714CFC();
  *v13 = 2;
  v41 = v54;
  sub_25E707FD0(v13, v54);
  sub_25E712B98(v13, type metadata accessor for PhotoStyleValueLabels.Configuration);
  v42 = v52;
  sub_25E704F3C();
  v43 = v57;
  v44 = v55;
  sub_25E704F3C();
  v45 = v56;
  sub_25E704F3C();
  sub_25E704F3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD043D8);
  sub_25E704F3C();
  sub_25E704F3C();
  sub_25E704C40(v41, &qword_27FD043D0);
  sub_25E704C40(v43, &qword_27FD043D0);
  sub_25E704C40(v42, &qword_27FD043D0);
  sub_25E704C40(v45, &qword_27FD043D0);
  sub_25E704C40(v44, &qword_27FD043D0);
  return sub_25E704C40(v28, &qword_27FD043D0);
}

uint64_t sub_25E707FD0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD043E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD043E8);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD043F0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD043F8);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - v18;
  v20 = *a1;
  v21 = sub_25E756168();
  v22 = 0x4000000000000000;
  if (!v20)
  {
    v22 = 0x4020000000000000;
  }

  *v7 = v21;
  *(v7 + 1) = v22;
  v7[16] = 0;
  if (v20)
  {
    v23 = 0.5;
  }

  else
  {
    v23 = 1.0;
  }

  if (v20)
  {
    v24 = 0x4030000000000000;
  }

  else
  {
    v24 = 0x4036000000000000;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04400);
  sub_25E7087D8(v3, a1, &v7[*(v25 + 44)]);
  KeyPath = swift_getKeyPath();
  sub_25E704EE4();
  v27 = &v11[*(v9 + 44)];
  *v27 = KeyPath;
  *(v27 + 1) = v23;
  sub_25E704EE4();
  v28 = &v15[*(v13 + 44)];
  *v28 = 0;
  *(v28 + 4) = 1;
  v29 = sub_25E7563D8();
  sub_25E704EE4();
  v30 = &v19[*(v17 + 44)];
  *v30 = v29;
  *(v30 + 1) = 0x4018000000000000;
  *(v30 + 2) = v24;
  *(v30 + 24) = xmmword_25E75C9D0;
  v30[40] = 0;
  v31 = swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD043D0);
  v33 = (v36 + *(v32 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD041C8);
  sub_25E712B40();
  *v33 = v31;
  return sub_25E704EE4();
}

uint64_t sub_25E708300()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03F28);
  MEMORY[0x28223BE20](v0 - 8);
  sub_25E704F3C();
  return sub_25E756088();
}

uint64_t sub_25E7083A8()
{
  v0 = sub_25E756908();
  MEMORY[0x28223BE20](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25E756788();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E756778();
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_25E7561E8();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03E70);
  sub_25E712884();
  sub_25E712E0C(&qword_27FD03D90, MEMORY[0x277CE1260]);
  sub_25E756558();
  sub_25E712B98(v2, MEMORY[0x277CE1260]);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25E7085AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[0] = a2;
  v20[1] = a1;
  v4 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E706E84();
  v8 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03F00) + 36);
  v9 = a3;
  sub_25E712B40();
  sub_25E712B98(v7, type metadata accessor for PhotoStyleValueLabels.Configuration);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03F10) + 36);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_25E7561E8();
  v13 = *(*(v12 - 8) + 104);
  v13(v8 + v10, v11, v12);
  v14 = v9;
  sub_25E704F3C();
  sub_25E706E84();
  v15 = &v7[*(v5 + 40)];
  v16 = *v15;
  LOBYTE(v5) = v15[8];
  sub_25E712B98(v7, type metadata accessor for PhotoStyleValueLabels.Configuration);
  v17 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03ED8) + 36);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03F20);
  result = (v13)(v17 + *(v18 + 36), v11, v12);
  *v17 = v16;
  *(v17 + 8) = v5;
  *(v17 + *(v18 + 40)) = 0x3FA999999999999ALL;
  return result;
}

uint64_t sub_25E7087D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a2;
  v88 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04408);
  MEMORY[0x28223BE20](v4);
  v6 = &v75 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04410);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04418);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v86 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v90 = &v75 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04420);
  MEMORY[0x28223BE20](v82);
  v79 = &v75 - v16;
  v17 = type metadata accessor for PhotoStyleValueLabels.ValueLabel(0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = (&v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v18);
  v80 = &v75 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v78 = &v75 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v75 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v75 - v29);
  MEMORY[0x28223BE20](v28);
  v32 = (&v75 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04428);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v83 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v75 - v36;
  v38 = *(a1 + 24);
  v87 = v10;
  v84 = v4;
  v89 = &v75 - v36;
  if (v38)
  {
    v39 = 1;
  }

  else
  {
    v76 = v6;
    if (qword_27FD031B0 != -1)
    {
      swift_once();
    }

    v40 = qword_27FD060C8;
    v41 = unk_27FD060D0;
    v42 = *a1;
    v43 = *(v17 + 28);
    *(v32 + v43) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD041C0);
    v77 = a1;
    swift_storeEnumTagMultiPayload();
    v44 = *(v17 + 32);
    *(v32 + v44) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03BD8);
    swift_storeEnumTagMultiPayload();
    *v32 = v40;
    v32[1] = v41;
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v42;
    v45 = qword_27FD031B8;

    if (v45 != -1)
    {
      swift_once();
    }

    v46 = qword_27FD060D8;
    v47 = unk_27FD060E0;
    v48 = *(v77 + 8);
    v49 = *(v17 + 28);
    *(v30 + v49) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v50 = *(v17 + 32);
    *(v30 + v50) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *v30 = v46;
    v30[1] = v47;
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v48;
    sub_25E712B40();
    v51 = v78;
    sub_25E712B40();
    sub_25E712B40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04430);
    sub_25E712B40();

    sub_25E712B98(v30, type metadata accessor for PhotoStyleValueLabels.ValueLabel);
    sub_25E712B98(v32, type metadata accessor for PhotoStyleValueLabels.ValueLabel);
    sub_25E712B98(v51, type metadata accessor for PhotoStyleValueLabels.ValueLabel);
    sub_25E712B98(v27, type metadata accessor for PhotoStyleValueLabels.ValueLabel);
    v37 = v89;
    sub_25E704EE4();
    v39 = 0;
    v6 = v76;
    a1 = v77;
  }

  __swift_storeEnumTagSinglePayload(v37, v39, 1, v82);
  if (*(a1 + 25))
  {
    __swift_storeEnumTagSinglePayload(v90, 1, 1, v17);
  }

  else
  {
    v52 = a1;
    if (qword_27FD031C0 != -1)
    {
      swift_once();
    }

    v54 = qword_27FD060E8;
    v53 = unk_27FD060F0;
    if (*v81 == 2)
    {
      v55 = 0xD000000000000012;
    }

    else
    {
      v55 = 0;
    }

    if (*v81 == 2)
    {
      v56 = 0x800000025E76ABB0;
    }

    else
    {
      v56 = 0;
    }

    v57 = *(v52 + 16);
    v58 = *(v17 + 28);
    *(v20 + v58) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD041C0);
    swift_storeEnumTagMultiPayload();
    v59 = *(v17 + 32);
    *(v20 + v59) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03BD8);
    swift_storeEnumTagMultiPayload();
    *v20 = v54;
    v20[1] = v53;
    v20[2] = v55;
    v20[3] = v56;
    v20[4] = v57;
    sub_25E714CFC();
    v60 = v90;
    sub_25E714CFC();
    __swift_storeEnumTagSinglePayload(v60, 0, 1, v17);
    a1 = v52;
  }

  if (*(a1 + 26))
  {
    v61 = 1;
    v62 = v84;
    v63 = v85;
  }

  else
  {
    v65 = *(a1 + 32);
    v64 = *(a1 + 40);
    *v6 = *(a1 + 27);
    *(v6 + 1) = v65;
    *(v6 + 2) = v64;
    *(v6 + 3) = 0x4018000000000000;
    v91 = 0;

    sub_25E756858();
    v66 = v93;
    *(v6 + 4) = v92;
    *(v6 + 5) = v66;
    v67 = type metadata accessor for PhotoStyleValueLabels.ResetButton(0);
    v68 = *(v67 + 32);
    *&v6[v68] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD041C0);
    swift_storeEnumTagMultiPayload();
    v69 = *(v67 + 36);
    *&v6[v69] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03BD8);
    swift_storeEnumTagMultiPayload();
    v62 = v84;
    *&v6[*(v84 + 36)] = 0x3FF0000000000000;
    v63 = v85;
    sub_25E704EE4();
    v61 = 0;
  }

  __swift_storeEnumTagSinglePayload(v63, v61, 1, v62);
  v70 = v83;
  sub_25E704F3C();
  v71 = v90;
  v72 = v86;
  sub_25E704F3C();
  v73 = v87;
  sub_25E704F3C();
  sub_25E704F3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04438);
  sub_25E704F3C();
  sub_25E704F3C();
  sub_25E704C40(v63, &qword_27FD04410);
  sub_25E704C40(v71, &qword_27FD04418);
  sub_25E704C40(v89, &qword_27FD04428);
  sub_25E704C40(v73, &qword_27FD04410);
  sub_25E704C40(v72, &qword_27FD04418);
  return sub_25E704C40(v70, &qword_27FD04428);
}

void sub_25E709190()
{
  v0 = sub_25E756C98();
  v1 = PELocalizedString(v0);

  v2 = sub_25E756CC8();
  v4 = v3;

  qword_27FD060C8 = v2;
  unk_27FD060D0 = v4;
}

void sub_25E709208()
{
  v0 = sub_25E756C98();
  v1 = PELocalizedString(v0);

  v2 = sub_25E756CC8();
  v4 = v3;

  qword_27FD060D8 = v2;
  unk_27FD060E0 = v4;
}

void sub_25E709280()
{
  v0 = sub_25E756C98();
  v1 = PELocalizedString(v0);

  v2 = sub_25E756CC8();
  v4 = v3;

  qword_27FD060E8 = v2;
  unk_27FD060F0 = v4;
}

uint64_t sub_25E7092FC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_25E7561B8();
  MEMORY[0x28223BE20](v2 - 8);
  v25 = sub_25E756328();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD042F0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD042F8);
  v10 = *(v9 - 8);
  v23 = v9;
  v24 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04300);
  MEMORY[0x28223BE20](v26);
  v14 = &v22 - v13;
  *v8 = sub_25E756168();
  *(v8 + 1) = 0x4000000000000000;
  v8[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04308);
  sub_25E7096F8(v1, &v8[*(v15 + 44)]);
  KeyPath = swift_getKeyPath();
  v17 = &v8[*(v6 + 36)];
  *v17 = KeyPath;
  *(v17 + 1) = 1;
  v17[16] = 0;
  sub_25E756318();
  v18 = sub_25E714FB0();
  sub_25E756608();
  (*(v3 + 8))(v5, v25);
  sub_25E704C40(v8, &qword_27FD042F0);
  v19 = *(v1 + 8);
  v30 = *v1;
  v31 = v19;
  v28 = v6;
  v29 = v18;
  swift_getOpaqueTypeConformance2();
  sub_25E714CA8();
  v20 = v23;
  sub_25E7565E8();
  (*(v24 + 8))(v12, v20);
  sub_25E7561A8();
  sub_25E756198();
  v30 = sub_25E70A88C(*(v1 + 32));
  sub_25E756188();
  sub_25E756198();
  sub_25E7561D8();
  sub_25E755F08();

  return sub_25E704C40(v14, &qword_27FD04300);
}

uint64_t sub_25E7096F8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04338);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v28 - v8);
  v10 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E7099D0(a1, &v39);
  v13 = v39;
  v32 = v41;
  v33 = v40;
  v30 = v43;
  v31 = v42;
  v14 = v44;
  type metadata accessor for PhotoStyleValueLabels.ValueLabel(0);
  sub_25E711988();
  v28 = *(v12 + 1);
  v15 = v28;

  sub_25E712B98(v12, type metadata accessor for PhotoStyleValueLabels.Configuration);
  LOBYTE(v39) = v14;
  v29 = v14;
  v16 = sub_25E7561F8();
  v17 = sub_25E756158();
  v18 = v9 + *(v4 + 44);
  sub_25E709DA4(a1, v18);
  v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04340) + 36));
  *v19 = v16;
  v19[1] = v17;
  *v9 = -100;
  sub_25E704F3C();
  v20 = v32;
  v21 = v33;
  *&v35 = v13;
  *(&v35 + 1) = v33;
  v23 = v30;
  v22 = v31;
  *&v36 = v32;
  *(&v36 + 1) = v31;
  *&v37 = v30;
  BYTE8(v37) = v14;
  *&v38 = v15;
  *(&v38 + 1) = 1;
  v24 = v36;
  v25 = v34;
  *v34 = v35;
  v25[1] = v24;
  v26 = v38;
  v25[2] = v37;
  v25[3] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04348);
  sub_25E704F3C();
  sub_25E704F3C();
  sub_25E704C40(v9, &qword_27FD04338);
  sub_25E704C40(v7, &qword_27FD04338);
  v39 = v13;
  v40 = v21;
  v41 = v20;
  v42 = v22;
  v43 = v23;
  v44 = v29;
  v45 = v28;
  v46 = 1;
  return sub_25E704C40(&v39, &qword_27FD04350);
}

double sub_25E7099D0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = sub_25E755EE8();
  v4 = *(v41 - 8);
  v5 = MEMORY[0x28223BE20](v41);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = sub_25E7567C8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD043B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v40 - v15;
  if (a1[3])
  {
    v40 = a2;

    sub_25E7567B8();
    sub_25E756208();
    v17 = sub_25E756218();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
    sub_25E7567D8();

    sub_25E704C40(v16, &qword_27FD043B0);
    (*(v11 + 104))(v13, *MEMORY[0x277CE0FE0], v10);
    v18 = sub_25E7567E8();
    a2 = v40;

    (*(v11 + 8))(v13, v10);
    v19 = type metadata accessor for PhotoStyleValueLabels.ValueLabel(0);
    sub_25E7117C0(v19, v20, v21, v22, v23, v24, v25, v26, v40, v41, v42, v43, *(&v43 + 1), v44, v45, v46, v47, *(&v47 + 1), v48, *(&v48 + 1));
    v27 = v41;
    (*(v4 + 104))(v7, *MEMORY[0x277CDFA88], v41);
    v28 = sub_25E755ED8();
    v29 = *(v4 + 8);
    v29(v7, v27);
    v29(v9, v27);
    v30 = 0x4008000000000000;
    v42 = v18;
    if ((v28 & 1) == 0)
    {
      v30 = 0;
    }

    v43 = xmmword_25E75C9E0;
    v44 = v30;
    v45 = 0;
    LOBYTE(v46) = 0;
  }

  else
  {
    v31 = *a1;
    v32 = a1[1];
    *&v47 = v31;
    *(&v47 + 1) = v32;
    sub_25E714CA8();

    v42 = sub_25E7564E8();
    *&v43 = v33;
    *(&v43 + 1) = v34 & 1;
    v44 = v35;
    v45 = 0;
    LOBYTE(v46) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD043B8);
  sub_25E71522C();
  sub_25E756298();
  result = *&v47;
  v37 = v48;
  v38 = v49;
  v39 = v50;
  *a2 = v47;
  *(a2 + 16) = v37;
  *(a2 + 32) = v38;
  *(a2 + 40) = v39;
  return result;
}

uint64_t sub_25E709DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25E756168();
  v17 = 0;
  sub_25E70A060(a1, v20);
  memcpy(v18, v20, sizeof(v18));
  memcpy(v19, v20, sizeof(v19));
  sub_25E704F3C();
  sub_25E704C40(v19, &qword_27FD04358);
  memcpy(&v16[7], v18, 0xC0uLL);
  v15[0] = v7;
  v15[1] = 0;
  LOBYTE(v15[2]) = v17;
  memcpy(&v15[2] + 1, v16, 0xC7uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04360);
  sub_25E704D38(&qword_27FD04368, &qword_27FD04360);
  sub_25E7565A8();
  memcpy(v20, v15, sizeof(v20));
  sub_25E704C40(v20, &qword_27FD04360);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04370) + 36)) = 1;
  type metadata accessor for PhotoStyleValueLabels.ValueLabel(0);
  sub_25E711988();
  v8 = *(v6 + 1);

  sub_25E712B98(v6, type metadata accessor for PhotoStyleValueLabels.Configuration);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04378) + 36)) = v8;
  KeyPath = swift_getKeyPath();
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04380) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03208) + 28);
  v12 = *MEMORY[0x277CDFA88];
  v13 = sub_25E755EE8();
  result = (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = KeyPath;
  return result;
}

uint64_t sub_25E70A060@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v81 = sub_25E756048();
  v77 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v76 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25E7561B8();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v79 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E7561C8();
  v12 = sub_25E7564D8();
  v85 = v13;
  v86 = v12;
  v15 = v14;
  v87 = v16;
  v17 = *(a1 + 32);
  v78 = sub_25E70A88C(v17);
  v84 = sub_25E7563E8();
  type metadata accessor for PhotoStyleValueLabels.ValueLabel(0);
  sub_25E711988();
  sub_25E712B98(v11, type metadata accessor for PhotoStyleValueLabels.Configuration);
  sub_25E755C88();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v83 = v15 & 1;
  v107 = v15 & 1;
  v106 = 0;
  v82 = a1;
  sub_25E711988();
  v26 = v11[*(v9 + 44)];
  sub_25E712B98(v11, type metadata accessor for PhotoStyleValueLabels.Configuration);
  if (v26 == 1)
  {
    sub_25E7561A8();
    sub_25E756198();
    v27 = sub_25E70A88C(v17);
    v28 = v27 / 10;
    if (v27 < -9)
    {
      v28 = v27 / -10;
    }

    *v92 = v28;
    sub_25E756188();
    sub_25E756198();
    sub_25E7561D8();
    v29 = sub_25E7564D8();
    v31 = v30;
    v33 = v32;
    sub_25E70A88C(v17);
    v34 = v76;
    sub_25E756038();
    v35 = sub_25E7564B8();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_25E71521C(v29, v31, v33 & 1);

    (*(v77 + 8))(v34, v81);
    v93 = v35;
    v94 = v37;
    v95 = v39 & 1;
    v96 = v41;
    v97 = 0.0;
    v98 = 0.0;
    LOBYTE(v99) = 0;
  }

  else
  {
    sub_25E7561A8();
    sub_25E756198();
    v42 = sub_25E70A88C(v17);
    v43 = v42 / 10;
    if (v42 < -9)
    {
      v43 = v42 / -10;
    }

    *v92 = v43;
    sub_25E756188();
    sub_25E756198();
    sub_25E7561D8();
    v93 = sub_25E7564D8();
    v94 = v44;
    v95 = v45 & 1;
    v96 = v46;
    v97 = 0.0;
    v98 = v17;
    LOBYTE(v99) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04388);
  sub_25E715094();
  sub_25E756298();
  v47 = v92[48];
  v73 = *&v92[16];
  v74 = *v92;
  v76 = *&v92[8];
  v77 = *v92;
  v75 = *&v92[16];
  v81 = *&v92[24];
  v72 = *&v92[32];
  v48 = *&v92[40];
  sub_25E71514C(*v92, *&v92[8], v92[16], *&v92[24], *&v92[32], *&v92[40], v92[48]);
  sub_25E7561A8();
  sub_25E756198();
  v49 = sub_25E70A88C(v17) % 10;
  if (v49 < 0)
  {
    v49 = -v49;
  }

  if (((v78 > 0) | (v78 >> 63)) == 0xFFFFFFFFFFFFFFFFLL)
  {
    v50 = 1.0;
  }

  else
  {
    v50 = 0.0;
  }

  *v92 = v49;
  sub_25E756188();
  sub_25E756198();
  sub_25E7561D8();
  v51 = sub_25E7564D8();
  v79 = v51;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v82 = v56;
  v90 = v47;
  v91[0] = v86;
  v91[1] = v85;
  LOBYTE(v91[2]) = v83;
  *(&v91[2] + 1) = v105[0];
  HIDWORD(v91[2]) = *(v105 + 3);
  v91[3] = v87;
  *&v91[4] = v50;
  LOBYTE(v91[5]) = v84;
  HIDWORD(v91[5]) = *&v104[3];
  *(&v91[5] + 1) = *v104;
  v91[6] = v19;
  v91[7] = v21;
  v91[8] = v23;
  v91[9] = v25;
  LOBYTE(v91[10]) = 0;
  memcpy(v92, v91, 0x51uLL);
  v89 = v47;
  v55 &= 1u;
  v88 = v55;
  v58 = v80;
  memcpy(v80, v92, 0x58uLL);
  v59 = v74;
  *(v58 + 104) = v73;
  *(v58 + 88) = v59;
  v60 = v72;
  *(v58 + 15) = v72;
  *(v58 + 16) = v48;
  v61 = v48;
  v71 = v48;
  v58[136] = v47;
  *(v58 + 18) = v51;
  *(v58 + 19) = v53;
  v62 = v53;
  v78 = v53;
  v58[160] = v55;
  *(v58 + 21) = v57;
  *(v58 + 22) = 0;
  *(v58 + 23) = v17;
  sub_25E704F3C();
  v63 = v76;
  v64 = v77;
  v65 = v75;
  v66 = v81;
  sub_25E71514C(v77, v76, v75, v81, v60, v61, v47);
  v67 = v79;
  sub_25E7151A4(v79, v62, v55);

  v68 = v66;
  v69 = v71;
  sub_25E7151B4(v64, v63, v65, v68, v60, v71, v47);
  sub_25E71521C(v67, v78, v55);

  sub_25E7151B4(v64, v63, v65, v81, v60, v69, v90);
  v93 = v86;
  v94 = v85;
  LOBYTE(v95) = v83;
  *(&v95 + 1) = v105[0];
  HIDWORD(v95) = *(v105 + 3);
  v96 = v87;
  v97 = v50;
  LOBYTE(v98) = v84;
  *(&v98 + 1) = *v104;
  HIDWORD(v98) = *&v104[3];
  v99 = v19;
  v100 = v21;
  v101 = v23;
  v102 = v25;
  v103 = 0;
  return sub_25E704C40(&v93, &qword_27FD043A8);
}

uint64_t sub_25E70A88C(double a1)
{
  v1 = round(a1 * 100.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25E70A8E8@<X0>(uint64_t a1@<X8>)
{
  sub_25E70A96C(a1, 0.0);
  v3 = sub_25E756A78();
  v5 = v4;
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD041F0) + 36);
  sub_25E70A96C(v6, *(v1 + 24));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD041F8);
  v8 = (v6 + *(result + 36));
  *v8 = v3;
  v8[1] = v5;
  return result;
}

uint64_t sub_25E70A96C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v33 = a1;
  v5 = sub_25E755FD8();
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhotoStyleValueLabels.ResetButton(0);
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04200);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04208);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04210);
  MEMORY[0x28223BE20](v30);
  v18 = &v30 - v17;
  sub_25E712B40();
  swift_allocObject();
  sub_25E714CFC();
  v34 = v3;
  v35 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04218);
  sub_25E7145DC();
  sub_25E756888();
  *&v12[*(v10 + 36)] = xmmword_25E75C9F0;
  sub_25E755FC8();
  sub_25E7149D8();
  sub_25E712E0C(&qword_27FD042A8, MEMORY[0x277CDDB18]);
  v19 = v31;
  sub_25E756548();
  (*(v32 + 8))(v8, v19);
  sub_25E704C40(v12, &qword_27FD04200);
  LODWORD(v19) = *v3;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v19 ^ 1;
  v22 = &v16[*(v14 + 44)];
  *v22 = KeyPath;
  v22[1] = sub_25E714AC0;
  v22[2] = v21;
  if (v19)
  {
    v23 = 1.0;
  }

  else
  {
    v23 = 0.3;
  }

  sub_25E6ED578();
  *&v18[*(v30 + 36)] = v23;
  v24 = sub_25E756C98();
  v25 = PELocalizedString(v24);

  v26 = sub_25E756CC8();
  v28 = v27;

  v36 = v26;
  v37 = v28;
  sub_25E714AD8();
  sub_25E714CA8();
  sub_25E7565E8();

  return sub_25E704C40(v18, &qword_27FD04210);
}

uint64_t sub_25E70AE28()
{
  v1 = v0;
  v2 = type metadata accessor for PhotoStyleValueLabels.ResetButton(0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_25E756348();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25E756338();
  v9 = v1;
  sub_25E712B40();
  swift_allocObject();
  sub_25E714CFC();
  sub_25E756AE8();
  sub_25E755E68();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25E70B038@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = sub_25E756BF8();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v5 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = sub_25E756BD8();
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD042D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38[-v9];
  v11 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = sub_25E7567B8();
  type metadata accessor for PhotoStyleValueLabels.ResetButton(0);
  sub_25E711988();
  sub_25E712B98(v13, type metadata accessor for PhotoStyleValueLabels.Configuration);
  sub_25E756438();
  v14 = sub_25E756428();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v14);
  v41 = sub_25E756458();
  sub_25E704C40(v10, &qword_27FD042D8);
  KeyPath = swift_getKeyPath();
  sub_25E711988();
  v15 = *(v13 + 1);

  sub_25E712B98(v13, type metadata accessor for PhotoStyleValueLabels.Configuration);
  v16 = *(a1 + 5);
  v48 = *(a1 + 4);
  v49 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD042E0);
  sub_25E756868();
  v17 = v47;
  v18 = v7;
  sub_25E756BC8();
  v39 = *a1;
  v19 = v5;
  sub_25E756BE8();
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04240) + 36);
  v21 = sub_25E756378();
  v22 = v43;
  v23 = v45;
  (*(v43 + 16))(v20 + *(v21 + 20), v5, v45);
  sub_25E712E0C(&qword_27FD042E8, MEMORY[0x277CE1570]);
  v24 = v44;
  sub_25E756BB8();
  (*(v22 + 8))(v19, v23);
  (*(v46 + 8))(v18, v24);
  *(v20 + *(v21 + 24)) = v39;
  v26 = KeyPath;
  v25 = v41;
  *a2 = v42;
  *(a2 + 8) = v26;
  *(a2 + 16) = v25;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  *(a2 + 40) = xmmword_25E75CA00;
  v27 = sub_25E7563D8();
  sub_25E755C88();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04230) + 36);
  *v36 = v27;
  *(v36 + 8) = v29;
  *(v36 + 16) = v31;
  *(v36 + 24) = v33;
  *(v36 + 32) = v35;
  *(v36 + 40) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04218);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_25E70B4C8(uint64_t a1)
{
  v2 = sub_25E755EE8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - v8;
  (*(a1 + 8))(v7);
  v10 = type metadata accessor for PhotoStyleValueLabels.ResetButton(0);
  sub_25E7117C0(v10, v11, v12, v13, v14, v15, v16, v17, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  (*(v3 + 104))(v6, *MEMORY[0x277CDFA88], v2);
  v18 = sub_25E755ED8();
  v19 = *(v3 + 8);
  v19(v6, v2);
  v19(v9, v2);
  v20 = 6.28318531;
  if (v18)
  {
    v20 = -6.28318531;
  }

  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v25 = *&v20;
  v26 = v21;
  v27 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD042E0);
  return sub_25E756878();
}

uint64_t sub_25E70B6D8()
{
  v0 = sub_25E714524();

  return MEMORY[0x282131AD8](&type metadata for PhotoStyleValueLabelsConfigurationKey, &type metadata for PhotoStyleValueLabelsConfigurationKey, v0);
}

uint64_t sub_25E70B720()
{
  v0 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E712B40();
  return sub_25E70B7BC(v2);
}

uint64_t sub_25E70B7BC(uint64_t a1)
{
  v2 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  v3 = OUTLINED_FUNCTION_20_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_1_3();
  sub_25E712B40();
  sub_25E714524();
  sub_25E756148();
  OUTLINED_FUNCTION_0_2();
  return sub_25E712B98(a1, v4);
}

uint64_t sub_25E70B858@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25E7561B8();
  MEMORY[0x28223BE20](v2 - 8);
  sub_25E7561A8();
  sub_25E756198();
  sub_25E756188();
  sub_25E756198();
  sub_25E7561D8();
  v3 = sub_25E7564D8();
  v5 = v4;
  v7 = v6;
  v8 = sub_25E7564A8();
  v10 = v9;
  v12 = v11;
  sub_25E71521C(v3, v5, v7 & 1);

  v13 = sub_25E7564C8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_25E71521C(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_25E70BA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v40 = a1;
  v41 = a3;
  swift_getWitnessTable();
  sub_25E7562D8();
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(v5 + 8);
  v55 = sub_25E755CA8();
  v56 = type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle(255);
  WitnessTable = swift_getWitnessTable();
  v58 = sub_25E712E0C(&qword_27FD041A0, type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle);
  v36 = sub_25E756898();
  v37 = swift_getWitnessTable();
  v38 = sub_25E756278();
  v31 = sub_25E755F18();
  v39 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v35 = &v30 - v8;
  v55 = v6;
  v56 = MEMORY[0x277CDF838];
  v9 = MEMORY[0x277CE1428];
  WitnessTable = MEMORY[0x277CE1428];
  v58 = v5;
  v10 = MEMORY[0x277CE1410];
  v59 = MEMORY[0x277CDF828];
  v60 = MEMORY[0x277CE1410];
  sub_25E7562C8();
  v55 = v6;
  v56 = MEMORY[0x277CE0F78];
  WitnessTable = v9;
  v58 = v7;
  v59 = MEMORY[0x277CE0F60];
  v60 = v10;
  sub_25E755FA8();
  sub_25E7562A8();
  v11 = sub_25E756E68();
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v53 = v12;
  v54 = v13;
  v52 = swift_getWitnessTable();
  v32 = v11;
  v33 = swift_getWitnessTable();
  v34 = sub_25E756028();
  v14 = sub_25E755F18();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  v45 = v6;
  v46 = v5;
  v47 = v3;
  v21 = swift_getWitnessTable();
  sub_25E756A78();
  v22 = v35;
  sub_25E756518();
  v42 = v6;
  v43 = v5;
  v44 = v3;
  v23 = swift_getWitnessTable();
  v50 = v21;
  v51 = v23;
  v24 = v31;
  v25 = swift_getWitnessTable();
  sub_25E756A78();
  sub_25E756648();
  (*(v39 + 8))(v22, v24);
  v26 = swift_getWitnessTable();
  v48 = v25;
  v49 = v26;
  swift_getWitnessTable();
  v27 = *(v15 + 16);
  v27(v20, v18, v14);
  v28 = *(v15 + 8);
  v28(v18, v14);
  v27(v41, v20, v14);
  return (v28)(v20, v14);
}

uint64_t sub_25E70BFBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v26 = a3;
  v24 = *(a2 + 8);
  v27 = a1;
  v28 = MEMORY[0x277CDF6A8];
  v29 = v24;
  v30 = MEMORY[0x277CDF6A0];
  v4 = sub_25E755CA8();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - v5;
  v6 = type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle(255);
  v22 = v6;
  WitnessTable = swift_getWitnessTable();
  v21 = WitnessTable;
  v20 = sub_25E712E0C(&qword_27FD041A0, type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle);
  v27 = v4;
  v28 = v6;
  v29 = WitnessTable;
  v30 = v20;
  v8 = sub_25E756898();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  type metadata accessor for BackgroundPlatter();
  v27 = sub_25E70C2D4();
  v15 = v23;
  sub_25E706C3C(&v27, 256, a1, MEMORY[0x277CDF6A8]);

  sub_25E756618();
  (*(v25 + 8))(v15, v4);
  swift_getWitnessTable();
  v16 = *(v9 + 16);
  v16(v14, v12, v8);
  v17 = *(v9 + 8);
  v17(v12, v8);
  v16(v26, v14, v8);
  return (v17)(v14, v8);
}

uint64_t sub_25E70C2D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD041A8);
  MEMORY[0x28223BE20](v0);
  v2 = (&v23 - v1);
  v3 = sub_25E756A58();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03F28);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E712B40();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25E704EE4();
    sub_25E704F3C();
    if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
    {
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = [objc_opt_self() bundleForClass_];
      sub_25E7569D8();

      if (__swift_getEnumTagSinglePayload(v9, 1, v3) != 1)
      {
        sub_25E704C40(v9, &qword_27FD03F28);
      }
    }

    else
    {
      (*(v23 + 32))(v5, v9, v3);
    }

    v21 = sub_25E755D88();
    sub_25E704C40(v11, &qword_27FD03F28);
  }

  else
  {
    sub_25E712B98(v14, type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle);
    sub_25E70D078();
    v17 = sub_25E756728();

    v18 = *(v0 + 36);
    v19 = *MEMORY[0x277CE1400];
    v20 = sub_25E756B18();
    (*(*(v20 - 8) + 104))(v2 + v18, v19, v20);
    *v2 = v17;
    sub_25E704D38(&qword_27FD041B0, &qword_27FD041A8);
    return sub_25E755D88();
  }

  return v21;
}

uint64_t sub_25E70C6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v7 = *(a3 + 8);
  *&v77 = a2;
  *(&v77 + 1) = MEMORY[0x277CE0F78];
  v8 = MEMORY[0x277CE1428];
  *&v78 = MEMORY[0x277CE1428];
  *(&v78 + 1) = v7;
  v59 = v7;
  v9 = MEMORY[0x277CE1410];
  v79 = MEMORY[0x277CE0F60];
  v80 = MEMORY[0x277CE1410];
  v10 = sub_25E755FA8();
  v61 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = &v59 - v14;
  v64 = a2;
  *&v77 = a2;
  *(&v77 + 1) = MEMORY[0x277CDF838];
  *&v78 = v8;
  *(&v78 + 1) = a3;
  v79 = MEMORY[0x277CDF828];
  v80 = v9;
  v15 = sub_25E7562C8();
  v63 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v62 = &v59 - v19;
  v20 = type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle(0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v25 = &v59 - v24;
  v65 = sub_25E7562A8();
  v69 = sub_25E756E68();
  v68 = *(v69 - 8);
  v26 = MEMORY[0x28223BE20](v69);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v67 = &v59 - v29;
  v66 = a1;
  sub_25E712B40();
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  sub_25E712B98(v25, type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle);
  if (a1 == 1)
  {
    type metadata accessor for BackgroundPlatter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03468);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_25E75CA10;
    sub_25E756718();
    sub_25E756728();

    *(v30 + 32) = sub_25E7569A8();
    *(v30 + 40) = v31;
    sub_25E756708();
    *(v30 + 48) = sub_25E7569A8();
    *(v30 + 56) = v32;
    sub_25E756708();
    *(v30 + 64) = sub_25E7569A8();
    *(v30 + 72) = v33;
    sub_25E756718();
    sub_25E756728();

    *(v30 + 80) = sub_25E7569A8();
    *(v30 + 88) = v34;
    sub_25E7569B8();
    sub_25E755E98();
    v72 = v77;
    v73 = v78;
    v74 = v79;
    sub_25E706DD0();
    sub_25E714388(&v77);
    WitnessTable = swift_getWitnessTable();
    v36 = v63;
    v37 = *(v63 + 16);
    v38 = v62;
    v37(v62, v18, v15);
    v39 = *(v36 + 8);
    v39(v18, v15);
    v37(v18, v38, v15);
    v40 = swift_getWitnessTable();
    sub_25E7069C0(v18, v15);
    v39(v18, v15);
    v39(v38, v15);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v65);
    v71 = WitnessTable;
    v41 = &v71;
    v42 = v28;
  }

  else
  {
    sub_25E712B40();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25E712B98(v23, type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle);
      v42 = v28;
      __swift_storeEnumTagSinglePayload(v28, 1, 1, v65);
      v43 = swift_getWitnessTable();
      v40 = swift_getWitnessTable();
      v76 = v43;
      v41 = &v76;
    }

    else
    {
      v44 = *v23;
      v63 = v44;
      type metadata accessor for BackgroundPlatter();
      *&v77 = v44;
      sub_25E706DD0();
      v40 = swift_getWitnessTable();
      v45 = v61;
      v46 = *(v61 + 16);
      v47 = v60;
      v46(v60, v13, v10);
      v48 = *(v45 + 8);
      v48(v13, v10);
      v46(v13, v47, v10);
      v49 = swift_getWitnessTable();
      sub_25E706AB8(v13, v15, v10);

      v50 = v13;
      v42 = v28;
      v48(v50, v10);
      v48(v47, v10);
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v65);
      v75[0] = v49;
      v41 = v75;
    }
  }

  v41[1] = v40;
  swift_getWitnessTable();
  v51 = v67;
  sub_25E706BB0(v42, v67);
  v52 = v68;
  v53 = *(v68 + 8);
  v54 = v42;
  v55 = v69;
  v53(v54, v69);
  v56 = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v75[3] = v56;
  v75[4] = v57;
  v75[2] = swift_getWitnessTable();
  swift_getWitnessTable();
  (*(v52 + 16))(v70, v51, v55);
  return (v53)(v51, v55);
}

uint64_t sub_25E70D078()
{
  v0 = type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E712B40();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_25E756708();
    sub_25E712B98(v2, type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle);
  }

  else
  {
    sub_25E712B98(v2, type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle);
    v4 = [objc_opt_self() systemBackgroundColor];
    return sub_25E7566A8();
  }

  return v3;
}

uint64_t sub_25E70D194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v17[2] = a1;
  v18 = a3;
  swift_getWitnessTable();
  sub_25E7562D8();
  v4 = *(a2 + 16);
  v17[0] = *(a2 + 24);
  v31 = v4;
  v32 = MEMORY[0x277CE0F78];
  v33 = v17[0];
  v34 = MEMORY[0x277CE0F60];
  sub_25E755CA8();
  sub_25E755F18();
  sub_25E756008();
  sub_25E755F18();
  sub_25E755F18();
  sub_25E756E68();
  WitnessTable = swift_getWitnessTable();
  v30 = MEMORY[0x277CE00B8];
  v27 = swift_getWitnessTable();
  v28 = MEMORY[0x277CDFC30];
  v25 = swift_getWitnessTable();
  v26 = MEMORY[0x277CDF900];
  v24 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25E756028();
  v5 = sub_25E755F18();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  v19 = v4;
  v20 = v17[0];
  v21 = v17[1];
  v12 = swift_getWitnessTable();
  sub_25E756A78();
  sub_25E756648();
  v13 = swift_getWitnessTable();
  v22 = v12;
  v23 = v13;
  swift_getWitnessTable();
  v14 = *(v6 + 16);
  v14(v11, v9, v5);
  v15 = *(v6 + 8);
  v15(v9, v5);
  v14(v18, v11, v5);
  return (v15)(v11, v5);
}

uint64_t sub_25E70D508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a4;
  v7 = sub_25E756B18();
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v60 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88[0] = a2;
  v88[1] = MEMORY[0x277CE0F78];
  v57 = a3;
  v88[2] = a3;
  v88[3] = MEMORY[0x277CE0F60];
  v9 = sub_25E755CA8();
  v53 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v52 = &v49 - v10;
  v68 = v11;
  v12 = sub_25E755F18();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - v14;
  sub_25E756008();
  v16 = sub_25E755F18();
  v56 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v54 = &v49 - v17;
  v18 = sub_25E755F18();
  v59 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v58 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v55 = &v49 - v21;
  v64 = sub_25E756E68();
  v66 = *(v64 - 8);
  v22 = MEMORY[0x28223BE20](v64);
  v63 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v65 = &v49 - v24;
  v25 = MEMORY[0x277CE00B8];
  v26 = MEMORY[0x277CDFC30];
  if ((*(a1 + 8) & 1) != 0 || *a1 <= 1.0)
  {
    v43 = v63;
    __swift_storeEnumTagSinglePayload(v63, 1, 1, v18);
    WitnessTable = swift_getWitnessTable();
    v87 = v25;
    v84 = swift_getWitnessTable();
    v85 = v26;
    v82 = swift_getWitnessTable();
    v39 = MEMORY[0x277CDF900];
    v83 = MEMORY[0x277CDF900];
    swift_getWitnessTable();
  }

  else
  {
    v50 = v13;
    v51 = type metadata accessor for BrightnessMultiply();
    v49 = v7;
    v27 = sub_25E756718();
    v62 = v12;
    v88[0] = v27;
    v28 = v52;
    sub_25E706C3C(v88, 256, a2, MEMORY[0x277CE0F78]);

    v29 = v68;
    v30 = swift_getWitnessTable();
    v31 = v15;
    sub_25E756528();
    (*(v53 + 8))(v28, v29);
    v32 = v61;
    v33 = v60;
    v34 = v49;
    (*(v61 + 104))(v60, *MEMORY[0x277CE13F8], v49);
    v73 = v30;
    v74 = MEMORY[0x277CE00B8];
    v57 = MEMORY[0x277CDFAD8];
    v35 = swift_getWitnessTable();
    v36 = v54;
    sub_25E756688();
    (*(v32 + 8))(v33, v34);
    (*(v50 + 8))(v31, v62);
    v71 = v35;
    v72 = MEMORY[0x277CDFC30];
    v37 = swift_getWitnessTable();
    v38 = v58;
    sub_25E756638();
    (*(v56 + 8))(v36, v16);
    v69 = v37;
    v39 = MEMORY[0x277CDF900];
    v70 = MEMORY[0x277CDF900];
    swift_getWitnessTable();
    v40 = v59;
    v61 = *(v59 + 16);
    v41 = v55;
    (v61)(v55, v38, v18);
    v42 = *(v40 + 8);
    v42(v38, v18);
    (v61)(v38, v41, v18);
    v42(v41, v18);
    v43 = v63;
    (*(v40 + 32))();
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v18);
  }

  v44 = v65;
  sub_25E706BB0(v43, v65);
  v45 = v66;
  v46 = *(v66 + 8);
  v47 = v64;
  v46(v43, v64);
  v80 = swift_getWitnessTable();
  v81 = MEMORY[0x277CE00B8];
  v78 = swift_getWitnessTable();
  v79 = MEMORY[0x277CDFC30];
  v76 = swift_getWitnessTable();
  v77 = v39;
  v75 = swift_getWitnessTable();
  swift_getWitnessTable();
  (*(v45 + 16))(v67, v44, v47);
  return (v46)(v44, v47);
}

uint64_t sub_25E70DE48()
{
  v0 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  __swift_allocate_value_buffer(v0, qword_27FD03DF0);
  __swift_project_value_buffer(v0, qword_27FD03DF0);
  if (qword_27FD031D8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FD03E10);
  return sub_25E712B40();
}

uint64_t sub_25E70DEEC()
{
  if (qword_27FD031C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  __swift_project_value_buffer(v0, qword_27FD03DF0);
  return sub_25E712B40();
}

uint64_t sub_25E70DF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25E712E0C(&qword_27FD04480, type metadata accessor for PhotoStyleValueLabels.Configuration);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_25E70E028(unsigned __int8 a1)
{
  sub_25E756F38();
  MEMORY[0x25F8BE680](a1);
  return sub_25E756F58();
}

uint64_t sub_25E70E08C()
{
  v0 = [objc_msgSend(objc_opt_self() sharedSettings)];
  result = swift_unknownObjectRelease();
  byte_27FD03E08 = v0;
  return result;
}

uint64_t sub_25E70E0EC()
{
  v0 = type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  __swift_allocate_value_buffer(v3, qword_27FD03E10);
  v4 = __swift_project_value_buffer(v3, qword_27FD03E10);
  v5 = sub_25E756A58();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
  swift_storeEnumTagMultiPayload();
  v6 = [objc_opt_self() labelColor];
  v7 = sub_25E7566A8();
  if (qword_27FD031D0 != -1)
  {
    swift_once();
  }

  v8 = byte_27FD03E08;
  *v4 = 0;
  *(v4 + 8) = v7;
  result = sub_25E714CFC();
  *(v4 + v3[7]) = 0x4028000000000000;
  v10 = v4 + v3[8];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v4 + v3[9]) = v8;
  return result;
}

uint64_t sub_25E70E298()
{
  v0 = type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  __swift_allocate_value_buffer(v3, qword_27FD03E28);
  v4 = __swift_project_value_buffer(v3, qword_27FD03E28);
  sub_25E756738();
  v5 = sub_25E756728();

  *v2 = v5;
  swift_storeEnumTagMultiPayload();
  v6 = [objc_opt_self() labelColor];
  v7 = sub_25E7566A8();
  if (qword_27FD031D0 != -1)
  {
    swift_once();
  }

  v8 = byte_27FD03E08;
  *v4 = 0;
  *(v4 + 8) = v7;
  result = sub_25E714CFC();
  *(v4 + v3[7]) = 0x4028000000000000;
  v10 = v4 + v3[8];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v4 + v3[9]) = v8;
  return result;
}

uint64_t sub_25E70E44C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  __swift_project_value_buffer(v3, a2);
  OUTLINED_FUNCTION_1_3();
  return sub_25E712B40();
}

uint64_t static PhotoStyleValueLabels.Configuration.glass(textColor:extendedBrightness:)()
{
  v1 = *(OUTLINED_FUNCTION_40() + 24);
  v2 = sub_25E756A58();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle(0);
  swift_storeEnumTagMultiPayload();
  if (qword_27FD031D0 != -1)
  {
    OUTLINED_FUNCTION_17_0();
  }

  OUTLINED_FUNCTION_7_2();
}

uint64_t static PhotoStyleValueLabels.Configuration.bordered(textColor:extendedBrightness:)()
{
  v1 = *(OUTLINED_FUNCTION_40() + 24);
  sub_25E756738();
  v2 = sub_25E756728();

  *(v0 + v1) = v2;
  type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle(0);
  swift_storeEnumTagMultiPayload();
  if (qword_27FD031D0 != -1)
  {
    OUTLINED_FUNCTION_17_0();
  }

  OUTLINED_FUNCTION_7_2();
}

void PhotoStyleValueLabels.Configuration.BackgroundStyle.hash(into:)()
{
  OUTLINED_FUNCTION_38();
  v1 = sub_25E756A58();
  OUTLINED_FUNCTION_4_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_26();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03F28);
  v6 = OUTLINED_FUNCTION_20_0(v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_10_1();
  sub_25E712B40();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25E704EE4();
    sub_25E704F3C();
    if (__swift_getEnumTagSinglePayload(v9, 1, v1) == 1)
    {
      sub_25E704C40(v11, &qword_27FD03F28);
      v13 = v9;
    }

    else
    {
      (*(v3 + 32))(v0, v9, v1);
      v14[0] = 0;
      v14[1] = 0xE000000000000000;
      sub_25E756EB8();
      sub_25E756D08();

      (*(v3 + 8))(v0, v1);
      v13 = v11;
    }

    sub_25E704C40(v13, &qword_27FD03F28);
  }

  else
  {
    sub_25E7566E8();
  }

  OUTLINED_FUNCTION_37();
}

uint64_t static PhotoStyleValueLabels.Configuration.BackgroundStyle.== infix(_:_:)()
{
  type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_26();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03F30);
  OUTLINED_FUNCTION_20_0(v0);
  OUTLINED_FUNCTION_15_0();
  v1 = MEMORY[0x28223BE20]();
  v3 = &v9 - v2;
  v4 = *(v1 + 56);
  sub_25E712B40();
  sub_25E712B40();
  OUTLINED_FUNCTION_14();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_10_1();
    sub_25E712B40();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v7 = sub_25E7566C8();

      sub_25E712B98(v3, type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle);
      return v7 & 1;
    }

    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:
    sub_25E704C40(v3, &qword_27FD03F30);
    v7 = 0;
    return v7 & 1;
  }

  sub_25E712B98(&v3[v4], type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle);
  v5 = OUTLINED_FUNCTION_14();
  sub_25E712B98(v5, v6);
  v7 = 1;
  return v7 & 1;
}

uint64_t PhotoStyleValueLabels.Configuration.BackgroundStyle.hashValue.getter()
{
  sub_25E756F38();
  PhotoStyleValueLabels.Configuration.BackgroundStyle.hash(into:)();
  return sub_25E756F58();
}

uint64_t sub_25E70EAAC()
{
  sub_25E756F38();
  PhotoStyleValueLabels.Configuration.BackgroundStyle.hash(into:)();
  return sub_25E756F58();
}

uint64_t static PhotoStyleValueLabels.Configuration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  OUTLINED_FUNCTION_3_1();
  if ((sub_25E7566C8() & 1) == 0 || (v4 = type metadata accessor for PhotoStyleValueLabels.Configuration(0), (static PhotoStyleValueLabels.Configuration.BackgroundStyle.== infix(_:_:)() & 1) == 0) || *(v3 + v4[7]) != *(v2 + v4[7]))
  {
LABEL_12:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  v5 = v4[8];
  v6 = (v3 + v5);
  v7 = *(v3 + v5 + 8);
  v8 = (v2 + v5);
  v9 = *(v2 + v5 + 8);
  if ((v7 & 1) == 0)
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v9)
  {
LABEL_14:
    LOBYTE(v9) = *(v3 + v4[9]) ^ *(v2 + v4[9]) ^ 1;
  }

  return v9 & 1;
}

double sub_25E70ECBC()
{
  swift_getKeyPath();
  sub_25E712E0C(&qword_27FD043C8, _s16IntegrationModelCMa_0);
  sub_25E755938();

  return *(v0 + 16);
}

void sub_25E70ED5C(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25E710E88();
  }
}

double sub_25E70EED0()
{
  swift_getKeyPath();
  sub_25E712E0C(&qword_27FD043C8, _s16IntegrationModelCMa_0);
  sub_25E755938();

  return *(v0 + 24);
}

void sub_25E70EF70(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25E710E88();
  }
}

double sub_25E70F074(double (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_3_0();
  v3 = a1(v2);

  return v3;
}

uint64_t sub_25E70F130()
{
  sub_25E756AE8();
  OUTLINED_FUNCTION_34();
  sub_25E755E78();
}

double sub_25E70F190()
{
  swift_getKeyPath();
  sub_25E712E0C(&qword_27FD043C8, _s16IntegrationModelCMa_0);
  sub_25E755938();

  return *(v0 + 32);
}

uint64_t sub_25E70F230(double a1, uint64_t a2, void (*a3)(uint64_t, double))
{

  a3(v5, a1);
}

void sub_25E70F294(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25E710E88();
  }
}

uint64_t sub_25E70F3FC()
{
  swift_getKeyPath();
  sub_25E712E0C(&qword_27FD043C8, _s16IntegrationModelCMa_0);
  sub_25E755938();

  return *(v0 + 40);
}

uint64_t sub_25E70F49C(uint64_t result)
{
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25E710E88();
  }

  return result;
}

uint64_t sub_25E70F5FC()
{
  swift_getKeyPath();
  sub_25E712E0C(&qword_27FD043C8, _s16IntegrationModelCMa_0);
  sub_25E755938();

  return *(v0 + 41);
}

uint64_t sub_25E70F69C(uint64_t result)
{
  if (*(v1 + 41) == (result & 1))
  {
    *(v1 + 41) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25E710E88();
  }

  return result;
}

uint64_t sub_25E70F7FC()
{
  swift_getKeyPath();
  sub_25E712E0C(&qword_27FD043C8, _s16IntegrationModelCMa_0);
  sub_25E755938();

  return *(v0 + 42);
}

uint64_t sub_25E70F89C(uint64_t result)
{
  if (*(v1 + 42) == (result & 1))
  {
    *(v1 + 42) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25E710E88();
  }

  return result;
}

uint64_t sub_25E70F990(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_3_0();
  LOBYTE(a1) = a1(v2);

  return a1 & 1;
}

uint64_t sub_25E70FA40()
{
  sub_25E756AE8();
  OUTLINED_FUNCTION_34();
  sub_25E755E78();
}

uint64_t sub_25E70FAA0()
{
  swift_getKeyPath();
  sub_25E712E0C(&qword_27FD043C8, _s16IntegrationModelCMa_0);
  sub_25E755938();

  return *(v0 + 43);
}

uint64_t sub_25E70FB40(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(a2);
}

uint64_t sub_25E70FB9C(uint64_t result)
{
  if (*(v1 + 43) == (result & 1))
  {
    *(v1 + 43) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25E710E88();
  }

  return result;
}

uint64_t PEPhotoStyleValuesPlatterView.resetAction.getter()
{
  OUTLINED_FUNCTION_3_0();
  v0 = sub_25E70FFD4();

  return v0;
}

uint64_t PEPhotoStyleValuesPlatterView.resetAction.setter()
{
  sub_25E756AE8();
  OUTLINED_FUNCTION_34();
  sub_25E755E78();
}

uint64_t sub_25E70FE54@<X0>(id *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = [*a1 resetAction];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = sub_25E7019C0;
  *(result + 24) = v4;
  *a2 = sub_25E7014B4;
  a2[1] = result;
  return result;
}

void sub_25E70FEF0(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v8[4] = sub_25E7014AC;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_25E71D6D8;
  v8[3] = &block_descriptor_119;
  v7 = _Block_copy(v8);

  [v6 setResetAction_];
  _Block_release(v7);
}

uint64_t sub_25E70FFD4()
{
  swift_getKeyPath();
  sub_25E712E0C(&qword_27FD043C8, _s16IntegrationModelCMa_0);
  sub_25E755938();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_25E710084()
{

  sub_25E7100EC();
}

uint64_t sub_25E7100EC()
{
  swift_getKeyPath();
  sub_25E710E88();
}

uint64_t PEPhotoStyleValuesPlatterView.configuration.getter()
{
  OUTLINED_FUNCTION_3_0();
  sub_25E710228();
}

uint64_t PEPhotoStyleValuesPlatterView.configuration.setter(uint64_t a1)
{
  sub_25E756AE8();
  OUTLINED_FUNCTION_34();
  sub_25E755E78();

  OUTLINED_FUNCTION_0_2();
  return sub_25E712B98(a1, v2);
}

uint64_t sub_25E710228()
{
  swift_getKeyPath();
  sub_25E712E0C(&qword_27FD043C8, _s16IntegrationModelCMa_0);
  sub_25E755938();

  swift_beginAccess();
  return sub_25E712B40();
}

uint64_t sub_25E710304()
{
  type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  MEMORY[0x28223BE20]();
  v1 = &v3 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E712B40();

  sub_25E7103C8(v1);
}

uint64_t sub_25E7103C8(unsigned __int8 *a1)
{
  type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  MEMORY[0x28223BE20]();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtCE12PhotosUIEditCSo29PEPhotoStyleValuesPlatterViewP33_5CDC474A5E4048E96FA7A0FF4B3ACE2F16IntegrationModel__configuration;
  swift_beginAccess();
  sub_25E712B40();
  v6 = static PhotoStyleValueLabels.Configuration.== infix(_:_:)(v4, a1);
  sub_25E712B98(v4, type metadata accessor for PhotoStyleValueLabels.Configuration);
  if (v6)
  {
    swift_beginAccess();
    sub_25E7152EC(a1, v1 + v5);
    swift_endAccess();
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    *(&v8 - 2) = v1;
    *(&v8 - 1) = a1;
    sub_25E710E88();
  }

  return sub_25E712B98(a1, type metadata accessor for PhotoStyleValueLabels.Configuration);
}

void (*PEPhotoStyleValuesPlatterView.configuration.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  PEPhotoStyleValuesPlatterView.configuration.getter();
  return sub_25E7105E4;
}

void sub_25E7105E4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_25E712B40();
    PEPhotoStyleValuesPlatterView.configuration.setter(v2);
    OUTLINED_FUNCTION_0_2();
    sub_25E712B98(v3, v4);
  }

  else
  {
    PEPhotoStyleValuesPlatterView.configuration.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

void __swiftcall PEPhotoStyleValuesPlatterView.init(tone:color:palette:)(PEPhotoStyleValuesPlatterView *__return_ptr retstr, Swift::Double tone, Swift::Double color, Swift::Double palette)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v7 initWithTone:tone color:color palette:palette];
}

id PEPhotoStyleValuesPlatterView.init(tone:color:palette:)(double a1, double a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_3();
  v12 = v11 - v10;
  if (qword_27FD031E0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_27FD03E28);
  OUTLINED_FUNCTION_1_3();
  sub_25E712B40();
  _s16IntegrationModelCMa_0(0);
  swift_allocObject();
  v13 = sub_25E71110C(0, 0, 0, a1, a2, a3, v12, 0, nullsub_1, 0);
  *&v4[OBJC_IVAR___PEPhotoStyleValuesPlatterView_valueLabelsModel] = v13;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03F40));
  v17 = v13;

  *&v4[OBJC_IVAR___PEPhotoStyleValuesPlatterView_hostingController] = sub_25E756258();
  v16.receiver = v4;
  v16.super_class = PEPhotoStyleValuesPlatterView;
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_25E7108C4();

  return v14;
}

void sub_25E7108C4()
{
  v1 = v0;
  v2 = OBJC_IVAR___PEPhotoStyleValuesPlatterView_hostingController;
  v3 = *&v0[OBJC_IVAR___PEPhotoStyleValuesPlatterView_hostingController];
  sub_25E756238();

  v4 = [*&v1[v2] view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [*&v1[v2] view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v1 addSubview_];

  v8 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03BF8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25E75C270;
  v11 = [v5 topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v10 + 32) = v13;
  v14 = [v5 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v10 + 40) = v16;
  v17 = [v5 leadingAnchor];
  v18 = [v1 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v10 + 48) = v19;
  v20 = [v5 trailingAnchor];
  v21 = [v1 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v10 + 56) = v22;
  sub_25E701520(0, &qword_27FD03C00);
  v23 = sub_25E756D38();

  [v9 activateConstraints_];
}

uint64_t sub_25E710CC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD041B8);
  MEMORY[0x28223BE20](v0);
  v2 = (&v16 - v1);
  v3 = sub_25E70ECBC();
  v4 = sub_25E70EED0();
  v5 = sub_25E70F190();
  v6 = sub_25E70F3FC();
  v7 = sub_25E70F5FC();
  v8 = sub_25E70F7FC();
  v9 = sub_25E70FAA0();
  v10 = sub_25E70FFD4();
  *v2 = v3;
  v2[1] = v4;
  v2[2] = v5;
  *(v2 + 24) = v6 & 1;
  *(v2 + 25) = v7 & 1;
  *(v2 + 26) = v8 & 1;
  *(v2 + 27) = v9 & 1;
  *(v2 + 4) = v10;
  *(v2 + 5) = v11;
  v12 = *(type metadata accessor for PhotoStyleValueLabels(0) + 48);
  *(v2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD041C0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v14 = (v2 + *(v0 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD041C8);
  sub_25E710228();
  *v14 = KeyPath;
  sub_25E71443C();
  sub_25E7565F8();
  return sub_25E704C40(v2, &qword_27FD041B8);
}

uint64_t sub_25E710F40@<X0>(void *a1@<X8>)
{
  v2 = sub_25E70FFD4();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_25E7019E0;
  a1[1] = result;
  return result;
}

uint64_t sub_25E710FA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return sub_25E7100EC();
}

uint64_t sub_25E711014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  v7 = OUTLINED_FUNCTION_20_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_3();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_1_3();
  sub_25E712B40();
  return a5(v10);
}

uint64_t sub_25E7110A0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCE12PhotosUIEditCSo29PEPhotoStyleValuesPlatterViewP33_5CDC474A5E4048E96FA7A0FF4B3ACE2F16IntegrationModel__configuration;
  swift_beginAccess();
  sub_25E7152EC(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_25E71110C(char a1, char a2, char a3, double a4, double a5, double a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  sub_25E755968();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  *(v10 + 32) = a6;
  *(v10 + 40) = a1;
  *(v10 + 41) = a2;
  *(v10 + 42) = a3;
  *(v10 + 43) = a8;
  *(v10 + 48) = a9;
  *(v10 + 56) = a10;
  sub_25E714CFC();
  return v10;
}

uint64_t sub_25E7111D0()
{

  sub_25E712B98(v0 + OBJC_IVAR____TtCE12PhotosUIEditCSo29PEPhotoStyleValuesPlatterViewP33_5CDC474A5E4048E96FA7A0FF4B3ACE2F16IntegrationModel__configuration, type metadata accessor for PhotoStyleValueLabels.Configuration);
  v1 = OBJC_IVAR____TtCE12PhotosUIEditCSo29PEPhotoStyleValuesPlatterViewP33_5CDC474A5E4048E96FA7A0FF4B3ACE2F16IntegrationModel___observationRegistrar;
  v2 = sub_25E755978();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_25E71125C()
{
  v0 = sub_25E7111D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void __swiftcall PEPhotoStyleValuesPlatterView.init(frame:)(PEPhotoStyleValuesPlatterView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

uint64_t sub_25E7113CC(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + qword_27FD03FD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - v5, a1, v3);
  v6 = sub_25E756258();
  (*(v4 + 8))(a1, v3);
  return v6;
}

void *sub_25E711534(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + qword_27FD03FD8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = sub_25E756248();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_25E71166C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SecureDrawHostingController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_25E711744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureDrawHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25E7117C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_25E756128();
  OUTLINED_FUNCTION_4_2();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03BD8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  sub_25E704F3C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25E755EE8();
    OUTLINED_FUNCTION_1();
    (*(v32 + 32))(v24, v31);
  }

  else
  {
    sub_25E756DC8();
    v33 = sub_25E756388();
    sub_25E755AB8();

    sub_25E756118();
    swift_getAtKeyPath();

    (*(v27 + 8))(v20, v25);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_25E711988()
{
  v0 = sub_25E756128();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD041C0);
  MEMORY[0x28223BE20](v4);
  sub_25E704F3C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25E714CFC();
  }

  sub_25E756DC8();
  v6 = sub_25E756388();
  sub_25E755AB8();

  sub_25E756118();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_25E711B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v52 = a4;
  LODWORD(v50) = a3;
  v48 = a2;
  v42 = a8;
  v55 = a10;
  v56 = a1;
  v46 = a7;
  v49 = *(a7 - 8);
  v53 = a11;
  MEMORY[0x28223BE20](a1);
  v47 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_25E756278();
  v15 = MEMORY[0x28223BE20](v54);
  v51 = &v36 - v16;
  v36 = a6;
  v45 = *(a6 - 8);
  MEMORY[0x28223BE20](v15);
  v43 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v41 = a9;
  v39 = *(swift_getAssociatedConformanceWitness() + 8);
  v19 = sub_25E755E58();
  MEMORY[0x28223BE20](v19);
  WitnessTable = swift_getWitnessTable();
  v57 = v19;
  v58 = a6;
  v59 = WitnessTable;
  v60 = v55;
  v44 = sub_25E755CA8();
  MEMORY[0x28223BE20](v44);
  v38 = &v36 - v20;
  v21 = a5;
  v22 = *(a5 - 8);
  v23 = *(v22 + 16);
  v37 = v21;
  v23(a8, v56, v21);
  sub_25E755EC8();
  sub_25E755E48();
  v24 = v45;
  v25 = v48;
  v26 = v36;
  (*(v45 + 16))(v43, v48, v36);
  v27 = v26;
  v28 = v55;
  sub_25E755C98();
  v29 = v49;
  v30 = v46;
  v31 = v52;
  (*(v49 + 16))(v47, v52, v46);
  sub_25E756A78();
  v50 = v32;
  (*(v29 + 8))(v31, v30);
  (*(v24 + 8))(v25, v26);
  v33 = v37;
  (*(v22 + 8))(v56, v37);
  v34 = v53;
  sub_25E756268();
  v57 = v33;
  v58 = v27;
  v59 = v30;
  v60 = v41;
  v61 = v28;
  v62 = v34;
  sub_25E7562C8();
  return sub_25E755EF8();
}

uint64_t sub_25E71206C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a5;
  v41 = a4;
  v36 = a3;
  v37 = a8;
  v39 = a2;
  v46 = a9;
  v47 = a1;
  v32[1] = a10;
  v40 = *(a8 - 8);
  v44 = a12;
  MEMORY[0x28223BE20](a1);
  v38 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_25E756278();
  v15 = MEMORY[0x28223BE20](v45);
  v42 = v32 - v16;
  v35 = *(a7 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a6 - 8);
  v20 = v33;
  MEMORY[0x28223BE20](v17);
  v22 = v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_25E755E58();
  MEMORY[0x28223BE20](v23);
  WitnessTable = swift_getWitnessTable();
  v48 = v23;
  v49 = a7;
  v50 = WitnessTable;
  v51 = a11;
  v34 = sub_25E755CA8();
  MEMORY[0x28223BE20](v34);
  v25 = *(v20 + 16);
  v32[0] = a6;
  v25(v22, v47, a6);
  sub_25E755E48();
  v26 = v35;
  v27 = v39;
  (*(v35 + 16))(v19, v39, a7);
  sub_25E755C98();
  v28 = v40;
  v29 = v37;
  v30 = v43;
  (*(v40 + 16))(v38, v43, v37);
  sub_25E756A78();
  (*(v28 + 8))(v30, v29);
  (*(v26 + 8))(v27, a7);
  (*(v33 + 8))(v47, v32[0]);
  sub_25E756268();
  return sub_25E755EF8();
}

void sub_25E71248C()
{
  OUTLINED_FUNCTION_38();
  v22 = v0;
  v2 = v1;
  v21 = v3;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_4_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_3();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_3();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15, v20, v19);
  (*(v9 + 16))(v13, v7, v2);

  v22(v17, v13, v5, v21);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_25E712654()
{
  result = qword_27FD03E88;
  if (!qword_27FD03E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03E60);
    sub_25E71270C();
    sub_25E704D38(&qword_27FD03EB8, &qword_27FD03EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03E88);
  }

  return result;
}

unint64_t sub_25E71270C()
{
  result = qword_27FD03E90;
  if (!qword_27FD03E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03E58);
    sub_25E712798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03E90);
  }

  return result;
}

unint64_t sub_25E712798()
{
  result = qword_27FD03E98;
  if (!qword_27FD03E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03E50);
    sub_25E704D38(&qword_27FD03EA0, &qword_27FD03E48);
    sub_25E704D38(&qword_27FD03EA8, &qword_27FD03EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03E98);
  }

  return result;
}

unint64_t sub_25E712884()
{
  result = qword_27FD03EE0;
  if (!qword_27FD03EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03E70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03E60);
    sub_25E712654();
    swift_getOpaqueTypeConformance2();
    sub_25E704D38(&qword_27FD03EE8, &qword_27FD03EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03EE0);
  }

  return result;
}

unint64_t sub_25E712978()
{
  result = qword_27FD03EF0;
  if (!qword_27FD03EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03ED8);
    sub_25E712A30();
    sub_25E704D38(&qword_27FD03F18, &qword_27FD03F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03EF0);
  }

  return result;
}

unint64_t sub_25E712A30()
{
  result = qword_27FD03EF8;
  if (!qword_27FD03EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03F00);
    sub_25E712884();
    sub_25E704D38(&qword_27FD03F08, &qword_27FD03F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03EF8);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25E712B40()
{
  OUTLINED_FUNCTION_3_1();
  v1(0);
  OUTLINED_FUNCTION_1();
  v2 = OUTLINED_FUNCTION_14();
  v3(v2);
  return v0;
}

uint64_t sub_25E712B98(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_25E712E0C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25E712EFC()
{
  sub_25E712FDC();
  if (v0 <= 0x3F)
  {
    sub_25E7131B8(319, &qword_27FD03F78, type metadata accessor for PhotoStyleValueLabels.Configuration, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_25E712FDC()
{
  result = qword_27FD03F70;
  if (!qword_27FD03F70)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FD03F70);
  }

  return result;
}

void sub_25E71304C()
{
  type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle(319);
  if (v0 <= 0x3F)
  {
    sub_25E7141EC(319, &qword_27FD03F90, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25E71311C()
{
  sub_25E7131B8(319, &qword_27FD03FA8, MEMORY[0x277CE1338], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_25E7131B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25E713248()
{
  result = type metadata accessor for PhotoStyleValueLabels.Configuration(319);
  if (v1 <= 0x3F)
  {
    result = sub_25E755978();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotoStyleValueLabels.Configuration.SizeFamily(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PhotoStyleValueLabels.Configuration.SizeFamily(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_25E713534()
{
  sub_25E7141EC(319, &qword_27FD03F90, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_DWORD *sub_25E7135E4(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v6 < a2)
  {
    v8 = ((*(*(v4 - 8) + 64) + ((v7 + 9) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v6;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (v14)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (v14)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_22;
        }

LABEL_18:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        return (v6 + (v10 | v15) + 1);
      default:
LABEL_22:
        if (v6)
        {
          return __swift_getEnumTagSinglePayload((result + v7 + 9) & ~v7, v6, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload((result + v7 + 9) & ~v7, v6, v4);
}

void sub_25E713708(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  v10 = *(v7 + 80);
  v11 = ((*(v7 + 64) + ((v10 + 9) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(v7 + 64) + ((v10 + 9) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          v18 = &a1[v10 + 9] & ~v10;

          __swift_storeEnumTagSinglePayload(v18, a2, v9, v6);
        }

        break;
    }
  }

  else
  {
    if (v11)
    {
      v16 = 1;
    }

    else
    {
      v16 = a2 - v9;
    }

    if (v11)
    {
      v17 = ~v9 + a2;
      bzero(a1, ((*(v8 + 64) + ((v10 + 9) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_25E7138E0()
{
  result = type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle(319);
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25E713968(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_25E756A58() - 8);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  if (*(v6 + 84))
  {
    v11 = *(v6 + 64);
  }

  else
  {
    v11 = *(v6 + 64) + 1;
  }

  if (v11 <= 8)
  {
    v11 = 8;
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v11 + v12 + 1;
  if (a2 <= v10)
  {
    goto LABEL_30;
  }

  v15 = (v14 & ~v12) + v13;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v10 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_30:
      if (v9 > 0xFE)
      {

        return __swift_getEnumTagSinglePayload((a1 + v14) & ~v12, v9, v7);
      }

      else
      {
        v23 = *(a1 + v11);
        if (v23 >= 2)
        {
          return (v23 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_30;
  }

LABEL_20:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v20) + 1;
}

void sub_25E713B90(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_25E756A58() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  if (v9)
  {
    v15 = v10;
  }

  else
  {
    v15 = v10 + 1;
  }

  if (v15 <= 8)
  {
    v15 = 8;
  }

  v16 = *(v12 + 80);
  v17 = v15 + v16 + 1;
  v18 = (v17 & ~v16) + *(v12 + 64);
  v19 = 8 * v18;
  if (a3 <= v14)
  {
    v20 = 0;
  }

  else if (v18 <= 3)
  {
    v23 = ((a3 - v14 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v14 >= a2)
  {
    switch(v20)
    {
      case 1:
        a1[v18] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v18] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_60:
        __break(1u);
        break;
      case 4:
        *&a1[v18] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v13 > 0xFE)
          {

            __swift_storeEnumTagSinglePayload(&a1[v17] & ~v16, a2, v13, v11);
          }

          else if (a2 > 0xFE)
          {
            v26 = (v15 + 1);
            if (v26 <= 3)
            {
              v27 = ~(-1 << (8 * (v15 + 1)));
            }

            else
            {
              v27 = -1;
            }

            if (v15 != -1)
            {
              v28 = v27 & (a2 - 255);
              if (v26 <= 3)
              {
                v29 = v15 + 1;
              }

              else
              {
                v29 = 4;
              }

              bzero(a1, v26);
              switch(v29)
              {
                case 2:
                  *a1 = v28;
                  break;
                case 3:
                  *a1 = v28;
                  a1[2] = BYTE2(v28);
                  break;
                case 4:
                  *a1 = v28;
                  break;
                default:
                  *a1 = v28;
                  break;
              }
            }
          }

          else
          {
            a1[v15] = -a2;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v14 + a2;
    if (v18 < 4)
    {
      v22 = (v21 >> v19) + 1;
      if (v18)
      {
        v25 = v21 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else if (v18 == 2)
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v21;
      v22 = 1;
    }

    switch(v20)
    {
      case 1:
        a1[v18] = v22;
        break;
      case 2:
        *&a1[v18] = v22;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *&a1[v18] = v22;
        break;
      default:
        return;
    }
  }
}

void sub_25E713F24()
{
  sub_25E712FDC();
  if (v0 <= 0x3F)
  {
    sub_25E7141EC(319, &qword_27FD04178, MEMORY[0x277CE0EC8], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_25E7131B8(319, &qword_27FD03F78, type metadata accessor for PhotoStyleValueLabels.Configuration, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_25E7131B8(319, &qword_27FD03C70, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25E7140BC()
{
  sub_25E7141EC(319, &qword_27FD04190, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_25E7131B8(319, &qword_27FD03F78, type metadata accessor for PhotoStyleValueLabels.Configuration, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_25E7131B8(319, &qword_27FD03C70, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25E7141EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_25E714294()
{
  result = qword_27FD04198;
  if (!qword_27FD04198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04198);
  }

  return result;
}

unint64_t sub_25E71443C()
{
  result = qword_27FD041D0;
  if (!qword_27FD041D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD041B8);
    sub_25E712E0C(&qword_27FD041D8, type metadata accessor for PhotoStyleValueLabels);
    sub_25E704D38(&qword_27FD041E0, &qword_27FD041C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD041D0);
  }

  return result;
}

unint64_t sub_25E714524()
{
  result = qword_27FD041E8;
  if (!qword_27FD041E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD041E8);
  }

  return result;
}

uint64_t sub_25E714578()
{
  v0 = type metadata accessor for PhotoStyleValueLabels.ResetButton(0);
  OUTLINED_FUNCTION_20_0(v0);
  return sub_25E70AE28();
}

unint64_t sub_25E7145DC()
{
  result = qword_27FD04220;
  if (!qword_27FD04220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD04218);
    sub_25E714694();
    sub_25E704D38(&qword_27FD035C8, &qword_27FD035D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04220);
  }

  return result;
}

unint64_t sub_25E714694()
{
  result = qword_27FD04228;
  if (!qword_27FD04228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD04230);
    sub_25E714720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04228);
  }

  return result;
}

unint64_t sub_25E714720()
{
  result = qword_27FD04238;
  if (!qword_27FD04238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD04240);
    sub_25E7147DC();
    sub_25E712E0C(&qword_27FD04288, MEMORY[0x277CDE4D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04238);
  }

  return result;
}

unint64_t sub_25E7147DC()
{
  result = qword_27FD04248;
  if (!qword_27FD04248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD04250);
    sub_25E714868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04248);
  }

  return result;
}

unint64_t sub_25E714868()
{
  result = qword_27FD04258;
  if (!qword_27FD04258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD04260);
    sub_25E714920();
    sub_25E704D38(&qword_27FD04278, &qword_27FD04280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04258);
  }

  return result;
}

unint64_t sub_25E714920()
{
  result = qword_27FD04268;
  if (!qword_27FD04268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD04270);
    sub_25E704D38(&qword_27FD03EB8, &qword_27FD03EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04268);
  }

  return result;
}

unint64_t sub_25E7149D8()
{
  result = qword_27FD04290;
  if (!qword_27FD04290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD04200);
    sub_25E704D38(&qword_27FD04298, &qword_27FD042A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04290);
  }

  return result;
}

unint64_t sub_25E714AD8()
{
  result = qword_27FD042B0;
  if (!qword_27FD042B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD04210);
    sub_25E714B64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD042B0);
  }

  return result;
}

unint64_t sub_25E714B64()
{
  result = qword_27FD042B8;
  if (!qword_27FD042B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD04208);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD04200);
    sub_25E755FD8();
    sub_25E7149D8();
    sub_25E712E0C(&qword_27FD042A8, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_25E704D38(&qword_27FD042C0, &qword_27FD042C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD042B8);
  }

  return result;
}

unint64_t sub_25E714CA8()
{
  result = qword_27FD042D0;
  if (!qword_27FD042D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD042D0);
  }

  return result;
}

uint64_t sub_25E714CFC()
{
  OUTLINED_FUNCTION_3_1();
  v1(0);
  OUTLINED_FUNCTION_1();
  v2 = OUTLINED_FUNCTION_14();
  v3(v2);
  return v0;
}

uint64_t objectdestroyTm_0()
{
  OUTLINED_FUNCTION_38();
  v1 = type metadata accessor for PhotoStyleValueLabels.ResetButton(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD041C0);
  if (swift_getEnumCaseMultiPayload() == 1 && (, v4 = *(type metadata accessor for PhotoStyleValueLabels.Configuration(0) + 24), type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle(0), swift_getEnumCaseMultiPayload() == 1))
  {
    v5 = sub_25E756A58();
    if (!__swift_getEnumTagSinglePayload(v3 + v4, 1, v5))
    {
      (*(*(v5 - 8) + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  v6 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03BD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25E755EE8();
    OUTLINED_FUNCTION_1();
    (*(v7 + 8))(v2 + v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_37();

  return MEMORY[0x2821FE8E8](v8, v9, v10);
}

uint64_t sub_25E714F54()
{
  v0 = type metadata accessor for PhotoStyleValueLabels.ResetButton(0);
  OUTLINED_FUNCTION_20_0(v0);

  return sub_25E70B67C();
}

unint64_t sub_25E714FB0()
{
  result = qword_27FD04310;
  if (!qword_27FD04310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD042F0);
    sub_25E704D38(&qword_27FD04318, &qword_27FD04320);
    sub_25E704D38(&qword_27FD04328, &qword_27FD04330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04310);
  }

  return result;
}

unint64_t sub_25E715094()
{
  result = qword_27FD04390;
  if (!qword_27FD04390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD04388);
    sub_25E704D38(&qword_27FD04398, &qword_27FD043A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04390);
  }

  return result;
}

uint64_t sub_25E71514C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_25E7151A4(a1, a2, a3 & 1);
  if (a7)
  {
  }
}

uint64_t sub_25E7151A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25E7151B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_25E71521C(a1, a2, a3 & 1);

  if (a7)
  {
  }

  return result;
}

uint64_t sub_25E71521C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_25E71522C()
{
  result = qword_27FD043C0;
  if (!qword_27FD043C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD043B8);
    sub_25E6FC6AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD043C0);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25E7152EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoStyleValueLabels.Configuration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_25E715390()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

double sub_25E7153A0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
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

unint64_t sub_25E715434()
{
  result = qword_27FD04440;
  if (!qword_27FD04440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD041F0);
    sub_25E7154EC();
    sub_25E704D38(&qword_27FD04470, &qword_27FD041F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04440);
  }

  return result;
}

unint64_t sub_25E7154EC()
{
  result = qword_27FD04448;
  if (!qword_27FD04448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD04450);
    sub_25E715578();
    sub_25E704E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04448);
  }

  return result;
}

unint64_t sub_25E715578()
{
  result = qword_27FD04458;
  if (!qword_27FD04458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD04460);
    sub_25E714AD8();
    sub_25E712E0C(&qword_27FD04468, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04458);
  }

  return result;
}

unint64_t sub_25E715634()
{
  result = qword_27FD04478;
  if (!qword_27FD04478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD04300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD042F0);
    sub_25E714FB0();
    swift_getOpaqueTypeConformance2();
    sub_25E712E0C(&qword_27FD04468, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04478);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_2@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_7_2()
{
  v5 = byte_27FD03E08;
  *v1 = 0;
  *(v1 + 8) = v0;
  *(v1 + v4[7]) = 0x4028000000000000;
  v6 = v1 + v4[8];
  *v6 = v3;
  *(v6 + 8) = v2 & 1;
  *(v1 + v4[9]) = v5;
  return v0;
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_36()
{

  return sub_25E755F18();
}

uint64_t sub_25E715A48()
{
  v0 = sub_25E755B98();
  __swift_allocate_value_buffer(v0, qword_27FD04488);
  __swift_project_value_buffer(v0, qword_27FD04488);
  return sub_25E755B88();
}

uint64_t sub_25E715ACC()
{
  v0 = sub_25E755B98();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25E755B18();
  __swift_allocate_value_buffer(v4, qword_27FD044A0);
  __swift_project_value_buffer(v4, qword_27FD044A0);
  if (qword_27FD031E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27FD04488);
  (*(v1 + 16))(v3, v5, v0);
  return sub_25E755AF8();
}

id sub_25E715C08(uint64_t a1)
{
  v3 = &v2[OBJC_IVAR___PEModelDeliveryManager_updateHandler];
  *v3 = 0;
  v3[1] = 0;
  *&v2[OBJC_IVAR___PEModelDeliveryManager_networkMonitor] = 0;
  *&v2[OBJC_IVAR___PEModelDeliveryManager_packageType] = a1;
  v2[OBJC_IVAR___PEModelDeliveryManager_isNetworkAvailable] = 1;
  switch(a1)
  {
    case 0:
      v1 = type metadata accessor for PECleanupModelDeliveryHelper();
      v4 = swift_allocObject();
      v5 = &off_287064940;
      break;
    case 1:
      type metadata accessor for PEDebugSimulatedModelDeliveryHelper();
      v4 = OUTLINED_FUNCTION_44();
      __asm { FMOV            V0.2D, #4.0 }

      goto LABEL_8;
    case 2:
      type metadata accessor for PEDebugSimulatedModelDeliveryHelper();
      v4 = OUTLINED_FUNCTION_44();
      _Q0 = xmmword_25E75D520;
LABEL_8:
      *(v4 + 16) = _Q0;
      *(v4 + 32) = 0;
      goto LABEL_9;
    case 3:
      type metadata accessor for PEDebugSimulatedModelDeliveryHelper();
      v4 = OUTLINED_FUNCTION_44();
      __asm { FMOV            V0.2D, #4.0 }

      *(v4 + 16) = _Q0;
      v11 = 1;
      goto LABEL_6;
    case 4:
      type metadata accessor for PEDebugSimulatedModelDeliveryHelper();
      v4 = OUTLINED_FUNCTION_44();
      __asm { FMOV            V0.2D, #4.0 }

      *(v4 + 16) = _Q0;
      v11 = 256;
LABEL_6:
      *(v4 + 32) = v11;
LABEL_9:
      v5 = &off_287064918;
      break;
    default:
      v1 = type metadata accessor for PEEmptyModelDeliveryHelper();
      v4 = swift_allocObject();
      v5 = &off_2870648F0;
      break;
  }

  v14 = &v2[OBJC_IVAR___PEModelDeliveryManager_packageHelper];
  v14[3] = v1;
  v14[4] = v5;
  *v14 = v4;
  v15 = &v2[OBJC_IVAR___PEModelDeliveryManager_progressCallback];
  *v15 = nullsub_1;
  v15[1] = 0;
  v2[OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState] = 0;
  v17.receiver = v2;
  v17.super_class = PEModelDeliveryManager;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_25E715DB8()
{
  v1 = sub_25E756C18();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E755BF8();
  swift_allocObject();
  *(v0 + OBJC_IVAR___PEModelDeliveryManager_networkMonitor) = sub_25E755BE8();

  sub_25E701520(0, &qword_27FD037B8);
  (*(v3 + 104))(v6, *MEMORY[0x277D851A8], v1);
  v7 = sub_25E756E08();
  (*(v3 + 8))(v6, v1);
  sub_25E755BC8();
  OUTLINED_FUNCTION_39();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_25E71CF9C(sub_25E71CF94);
  sub_25E755BB8();
}

void sub_25E715F7C(uint64_t a1)
{
  v2 = sub_25E755BA8();
  v65 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v58[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = sub_25E755C58();
  v5 = *(v70 - 8);
  v6 = MEMORY[0x28223BE20](v70);
  v73 = &v58[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v72 = &v58[-v8];
  v9 = sub_25E755C38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v58[-v14];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v64 = v2;
    sub_25E755C48();
    v18 = *(v10 + 104);
    v69 = *MEMORY[0x277CD8F78];
    v67 = v18;
    v68 = v10 + 104;
    v18(v13);
    v19 = sub_25E755C28();
    v20 = *(v10 + 8);
    v20(v13, v9);
    v66 = v20;
    v20(v15, v9);
    v71 = a1;
    if (v19)
    {
      v62 = v4;
      v63 = v17;
      if (qword_27FD031E8 != -1)
      {
        swift_once();
      }

      v21 = sub_25E755B98();
      __swift_project_value_buffer(v21, qword_27FD04488);
      v22 = *(v5 + 16);
      v23 = v71;
      v24 = v70;
      v22(v72, v71, v70);
      v22(v73, v23, v24);
      v25 = sub_25E755B78();
      v61 = sub_25E756DD8();
      if (os_log_type_enabled(v25, v61))
      {
        v26 = swift_slowAlloc();
        *v26 = 67109376;
        v27 = v72;
        v28 = sub_25E755C08() & 1;
        v60 = *(v5 + 8);
        v60(v27, v24);
        *(v26 + 4) = v28;
        *(v26 + 8) = 1024;
        v29 = *MEMORY[0x277CD8CB8];
        v31 = v64;
        v30 = v65;
        v32 = *(v65 + 104);
        v72 = v25;
        v33 = v62;
        v32(v62, v29, v64);
        v34 = v73;
        v59 = sub_25E755C18();
        v35 = v33;
        v25 = v72;
        (*(v30 + 8))(v35, v31);
        LODWORD(v30) = v59 & 1;
        v60(v34, v70);
        *(v26 + 10) = v30;
        _os_log_impl(&dword_25E6E9000, v25, v61, "Network is connected; is expensive? %{BOOL}d usesCell: %{BOOL}d", v26, 0xEu);
        MEMORY[0x25F8BF560](v26, -1, -1);
      }

      else
      {
        v39 = *(v5 + 8);
        v39(v73, v24);
        v39(v72, v24);
      }

      v17 = v63;
    }

    else
    {
      if (qword_27FD031E8 != -1)
      {
        swift_once();
      }

      v36 = sub_25E755B98();
      __swift_project_value_buffer(v36, qword_27FD04488);
      v25 = sub_25E755B78();
      v37 = sub_25E756DD8();
      if (os_log_type_enabled(v25, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_25E6E9000, v25, v37, "Network is not connected", v38, 2u);
        MEMORY[0x25F8BF560](v38, -1, -1);
      }
    }

    sub_25E755C48();
    v67(v13, v69, v9);
    v40 = sub_25E755C28();
    v41 = v66;
    v66(v13, v9);
    v41(v15, v9);
    if ((v40 & 1) != 0 && (sub_25E755C08() & 1) == 0)
    {
      v52 = OBJC_IVAR___PEModelDeliveryManager_isNetworkAvailable;
      if ((v17[OBJC_IVAR___PEModelDeliveryManager_isNetworkAvailable] & 1) == 0)
      {
        if (qword_27FD031E8 != -1)
        {
          swift_once();
        }

        v53 = sub_25E755B98();
        __swift_project_value_buffer(v53, qword_27FD04488);
        v54 = sub_25E755B78();
        v55 = sub_25E756DD8();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_25E6E9000, v54, v55, "Resuming download", v56, 2u);
          MEMORY[0x25F8BF560](v56, -1, -1);
        }

        v17[OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState] = 0;
        v17[v52] = 1;
        v57 = *&v17[OBJC_IVAR___PEModelDeliveryManager_updateHandler];
        if (v57)
        {

          v57(0, 0);
          sub_25E71CE04(v57);
        }

        sub_25E7167B0();
      }
    }

    else
    {
      v42 = OBJC_IVAR___PEModelDeliveryManager_isNetworkAvailable;
      if (v17[OBJC_IVAR___PEModelDeliveryManager_isNetworkAvailable] == 1)
      {
        if (qword_27FD031E8 != -1)
        {
          swift_once();
        }

        v43 = sub_25E755B98();
        __swift_project_value_buffer(v43, qword_27FD04488);
        v44 = sub_25E755B78();
        v45 = sub_25E756DD8();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_25E6E9000, v44, v45, "Pausing download; showing error message", v46, 2u);
          MEMORY[0x25F8BF560](v46, -1, -1);
        }

        v17[OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState] = 6;
        v17[v42] = 0;
        v47 = *&v17[OBJC_IVAR___PEModelDeliveryManager_updateHandler];
        if (v47)
        {
          v48 = sub_25E756CC8();
          v50 = v49;
          objc_allocWithZone(MEMORY[0x277CCA9B8]);

          v51 = sub_25E71BE40(v48, v50, 3, 0);
          v47(0, v51);
          sub_25E71CE04(v47);
        }
      }
    }
  }
}

uint64_t sub_25E7167B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD044F8);
  OUTLINED_FUNCTION_20_0(v1);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - v3;
  sub_25E756D78();
  OUTLINED_FUNCTION_30_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v0;
  v10 = v0;
  v11 = OUTLINED_FUNCTION_48();
  sub_25E716DA0(v11, v12, v4, v13, v9);
}

uint64_t sub_25E71687C()
{
  v1 = OBJC_IVAR___PEModelDeliveryManager_networkMonitor;
  if (*(v0 + OBJC_IVAR___PEModelDeliveryManager_networkMonitor))
  {

    sub_25E755BD8();

    *(v0 + v1) = 0;
  }

  return result;
}

uint64_t sub_25E716978()
{
  OUTLINED_FUNCTION_62((v0 + OBJC_IVAR___PEModelDeliveryManager_packageHelper));
  v1 = OUTLINED_FUNCTION_26_0();
  return v2(v1) & 1;
}

void sub_25E7169FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD044F8);
  OUTLINED_FUNCTION_20_0(v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState;
  if (v5[OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState])
  {
    if (qword_27FD031E8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v15 = sub_25E755B98();
    OUTLINED_FUNCTION_33_0(v15, qword_27FD04488);
    v16 = v5;
    v40 = sub_25E755B78();
    v17 = sub_25E756DB8();

    if (os_log_type_enabled(v40, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136446466;
      v41 = *&v16[OBJC_IVAR___PEModelDeliveryManager_packageType];
      v42 = v19;
      type metadata accessor for PEModelDeliveryPackage(0);
      v20 = sub_25E756CE8();
      v22 = sub_25E71C160(v20, v21, &v42);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      LOBYTE(v41) = v5[v14];
      v23 = sub_25E756CE8();
      v25 = sub_25E71C160(v23, v24, &v42);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_25E6E9000, v40, v17, "Package delivery manager %{public}s attempt to start download when state is %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_27_0();
    }

    else
    {
      v38 = v40;
    }
  }

  else
  {
    v26 = &v5[OBJC_IVAR___PEModelDeliveryManager_progressCallback];
    *v26 = a1;
    *(v26 + 1) = a2;

    v27 = &v5[OBJC_IVAR___PEModelDeliveryManager_updateHandler];
    v28 = *&v5[OBJC_IVAR___PEModelDeliveryManager_updateHandler];
    *v27 = a3;
    *(v27 + 1) = a4;
    sub_25E71CE04(v28);
    sub_25E756D78();
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v5;
    v34 = v5;

    v35 = OUTLINED_FUNCTION_48();
    sub_25E716DA0(v35, v36, v13, v37, v33);
  }
}

uint64_t sub_25E716CF0()
{
  OUTLINED_FUNCTION_37_0();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_62((v1 + OBJC_IVAR___PEModelDeliveryManager_packageHelper));
  v2 = OUTLINED_FUNCTION_26_0();
  if (v3(v2))
  {
    *(v1 + OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState) = 2;
  }

  else
  {
    *(v1 + OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState) = 0;
    sub_25E715DB8();
  }

  sub_25E7167B0();
  OUTLINED_FUNCTION_9_2();

  return v4();
}

uint64_t sub_25E716DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD044F8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_25E71C960(a3, v24 - v10, &qword_27FD044F8);
  v12 = sub_25E756D78();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_25E71C9C8(v11, &qword_27FD044F8);
  }

  else
  {
    sub_25E756D68();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25E756D58();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25E756CF8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_25E71C9C8(a3, &qword_27FD044F8);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25E71C9C8(a3, &qword_27FD044F8);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_25E71715C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_25E7558C8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_25E7171EC()
{
  v31 = v0;
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState;
  switch(v1[OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState])
  {
    case 1:
      v1[OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState] = 2;
      sub_25E7167B0();
      break;
    case 2:
      v1[OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState] = 3;
      v10 = *&v1[OBJC_IVAR___PEModelDeliveryManager_progressCallback];

      v10(1, 1.0);

      v11 = *&v1[OBJC_IVAR___PEModelDeliveryManager_packageHelper + 32];
      __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR___PEModelDeliveryManager_packageHelper], *&v1[OBJC_IVAR___PEModelDeliveryManager_packageHelper + 24]);
      OUTLINED_FUNCTION_39();
      *(swift_allocObject() + 16) = v1;
      v12 = *(v11 + 32);
      v13 = v1;
      v14 = OUTLINED_FUNCTION_61();
      v12(v14);
      goto LABEL_8;
    case 3:
      v1[OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState] = 4;
      v7 = &v1[OBJC_IVAR___PEModelDeliveryManager_updateHandler];
      v8 = *&v1[OBJC_IVAR___PEModelDeliveryManager_updateHandler];
      if (v8)
      {

        v8(1, 0);
        sub_25E71CE04(v8);
        v9 = *v7;
      }

      else
      {
        v9 = 0;
      }

      *v7 = 0;
      v7[1] = 0;
      sub_25E71CE04(v9);
      break;
    case 4:
      [*(v0 + 24) stopNetworkMonitoring];
      break;
    case 5:
    case 6:
      break;
    default:
      v1[OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState] = 1;
      v3 = *&v1[OBJC_IVAR___PEModelDeliveryManager_packageHelper + 32];
      __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR___PEModelDeliveryManager_packageHelper], *&v1[OBJC_IVAR___PEModelDeliveryManager_packageHelper + 24]);
      OUTLINED_FUNCTION_39();
      *(swift_allocObject() + 16) = v1;
      v4 = *(v3 + 24);
      v5 = v1;
      v6 = OUTLINED_FUNCTION_61();
      v4(v6);
LABEL_8:

      break;
  }

  if (qword_27FD031E8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v15 = *(v0 + 24);
  v16 = sub_25E755B98();
  OUTLINED_FUNCTION_33_0(v16, qword_27FD04488);
  v17 = v15;
  v18 = sub_25E755B78();
  v19 = sub_25E756DD8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 24);
    v21 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v21 = 136446466;
    *(v0 + 16) = *(v20 + OBJC_IVAR___PEModelDeliveryManager_packageType);
    type metadata accessor for PEModelDeliveryPackage(0);
    v22 = sub_25E756CD8();
    v24 = sub_25E71C160(v22, v23, &v30);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    *(v0 + 16) = v1[v2];
    v25 = sub_25E756CD8();
    v27 = sub_25E71C160(v25, v26, &v30);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_25E6E9000, v18, v19, "Model delivery manager for %{public}s entered stage: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_27_0();
  }

  OUTLINED_FUNCTION_9_2();

  return v28();
}

void sub_25E717584(char a1, uint64_t a2, double a3)
{
  switch(a1)
  {
    case 1:
      *(a2 + OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState) = 2;
      sub_25E7167B0();
      break;
    case 2:
      v12 = *(a2 + OBJC_IVAR___PEModelDeliveryManager_updateHandler);
      if (v12)
      {
        v13 = sub_25E756CC8();
        v15 = v14;
        objc_allocWithZone(MEMORY[0x277CCA9B8]);

        v16 = sub_25E71BE40(v13, v15, 1, 0);
        v12(0, v16);
        sub_25E71CE04(v12);
      }

      *(a2 + OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState) = 5;
      break;
    case 3:
      return;
    case 4:
      v6 = OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState;
      if (*(a2 + OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState) != 6)
      {
        v7 = *(a2 + OBJC_IVAR___PEModelDeliveryManager_updateHandler);
        if (v7)
        {
          v8 = sub_25E756CC8();
          v10 = v9;
          objc_allocWithZone(MEMORY[0x277CCA9B8]);

          v11 = sub_25E71BE40(v8, v10, 2, 0);
          v7(0, v11);
          sub_25E71CE04(v7);
        }

        *(a2 + v6) = 5;
      }

      break;
    default:
      v5 = *(a2 + OBJC_IVAR___PEModelDeliveryManager_progressCallback);

      v5(0, a3);

      break;
  }
}

uint64_t sub_25E7177A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    return sub_25E7167B0();
  }

  *(a3 + OBJC_IVAR___PEModelDeliveryManager_deliveryManagerState) = 5;
  v3 = *(a3 + OBJC_IVAR___PEModelDeliveryManager_updateHandler);
  if (v3)
  {

    v3(0, a2);

    return sub_25E71CE04(v3);
  }

  return result;
}

uint64_t sub_25E717840()
{
  OUTLINED_FUNCTION_62((v0 + OBJC_IVAR___PEModelDeliveryManager_packageHelper));
  v1 = OUTLINED_FUNCTION_26_0();
  return v2(v1);
}

void __swiftcall PEModelDeliveryManager.init()(PEModelDeliveryManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_25E717A0C()
{
  v180 = sub_25E755A38();
  OUTLINED_FUNCTION_5();
  v179 = v0;
  MEMORY[0x28223BE20](v1);
  v178 = &v172 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25E755918();
  OUTLINED_FUNCTION_5();
  v198 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_1();
  v194 = v8;
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x28223BE20](v17);
  v190 = &v172 - v18;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04538);
  OUTLINED_FUNCTION_5();
  v182 = v19;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v172 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04540);
  v24 = OUTLINED_FUNCTION_20_0(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_60();
  v195 = v25;
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18_1();
  v193 = v27;
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18_1();
  v192 = v29;
  OUTLINED_FUNCTION_14_2();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v172 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v172 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v172 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v172 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v172 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v172 - v48;
  MEMORY[0x28223BE20](v47);
  v199 = &v172 - v50;
  OUTLINED_FUNCTION_30_0();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v3);
  v196 = v49;
  OUTLINED_FUNCTION_30_0();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v3);
  v197 = v46;
  OUTLINED_FUNCTION_30_0();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v3);
  sub_25E7559C8();
  __swift_project_boxed_opaque_existential_1(v201, v201[3]);
  sub_25E755A08();
  v172 = v39;
  v60 = v177;
  v173 = v36;
  v174 = v33;
  v61 = v178;
  v62 = sub_25E7559E8();
  MEMORY[0x25F8BD160](v62);
  (*(v179 + 8))(v61, v180);
  sub_25E7558E8();
  sub_25E755908();

  OUTLINED_FUNCTION_8_3(v43);
  v175 = v22;
  if (v63)
  {
    sub_25E71C9C8(v43, &qword_27FD04540);
    v66 = v196;
    v64 = v199;
  }

  else
  {
    (*(v198 + 32))(v60, v43, v3);
    sub_25E7558F8();
    v64 = v199;
    sub_25E71C9C8(v199, &qword_27FD04540);
    v65 = OUTLINED_FUNCTION_31_0();
    sub_25E71CC14(v65, v64);
    OUTLINED_FUNCTION_49();
    v66 = v196;
    sub_25E71C9C8(v196, &qword_27FD04540);
    v67 = OUTLINED_FUNCTION_31_0();
    sub_25E71CC14(v67, v66);
    OUTLINED_FUNCTION_49();
    v68 = OUTLINED_FUNCTION_23_1();
    v69(v68);
    v70 = v197;
    sub_25E71C9C8(v197, &qword_27FD04540);
    v71 = OUTLINED_FUNCTION_31_0();
    sub_25E71CC14(v71, v70);
  }

  v72 = v172;
  sub_25E71C960(v64, v172, &qword_27FD04540);
  OUTLINED_FUNCTION_8_3(v72);
  v73 = v183;
  if (v63)
  {
    v74 = v64;
    sub_25E71C9C8(v72, &qword_27FD04540);
    v84 = v198;
    v75 = v184;
    if (qword_27FD031E8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v76 = sub_25E755B98();
    OUTLINED_FUNCTION_33_0(v76, qword_27FD04488);
    v77 = sub_25E755B78();
    v78 = sub_25E756DB8();
    v79 = OUTLINED_FUNCTION_55(v78);
    v80 = v195;
    v81 = v197;
    if (v79)
    {
      *OUTLINED_FUNCTION_32_0() = 0;
      OUTLINED_FUNCTION_34_0(&dword_25E6E9000, v82, v83, "Could not get the segmentation model url");
      OUTLINED_FUNCTION_19_0();
    }
  }

  else
  {
    v84 = v198;
    v85 = OUTLINED_FUNCTION_10_2();
    v86(v85);
    v75 = v184;
    if (qword_27FD031E8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v87 = sub_25E755B98();
    OUTLINED_FUNCTION_33_0(v87, qword_27FD04488);
    v88 = v176;
    (*(v84 + 16))(v176, v73, v3);
    v89 = sub_25E755B78();
    v90 = sub_25E756DD8();
    if (OUTLINED_FUNCTION_56(v90))
    {
      v91 = OUTLINED_FUNCTION_54();
      v92 = v88;
      v93 = OUTLINED_FUNCTION_52();
      v200 = v93;
      *v91 = 136315138;
      v94 = sub_25E7558E8();
      v66 = v95;
      v96 = *(v84 + 8);
      v97 = OUTLINED_FUNCTION_23_1();
      v96(v97);
      v98 = v94;
      v75 = v184;
      sub_25E71C160(v98, v66, &v200);
      OUTLINED_FUNCTION_53();
      *(v91 + 4) = v92;
      OUTLINED_FUNCTION_35_0(&dword_25E6E9000, v99, v100, "Segmentation URL is: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v93);
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_19_0();

      (v96)(v183, v3);
      v84 = v198;
    }

    else
    {

      v101 = *(v84 + 8);
      v101(v88, v3);
      v102 = OUTLINED_FUNCTION_38_0();
      (v101)(v102);
    }

    v80 = v195;
    v81 = v197;
    v74 = v199;
  }

  v103 = v173;
  sub_25E71C960(v66, v173, &qword_27FD04540);
  OUTLINED_FUNCTION_8_3(v103);
  if (v63)
  {
    sub_25E71C9C8(v103, &qword_27FD04540);
    if (qword_27FD031E8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v104 = sub_25E755B98();
    OUTLINED_FUNCTION_33_0(v104, qword_27FD04488);
    v105 = sub_25E755B78();
    v106 = sub_25E756DB8();
    v107 = OUTLINED_FUNCTION_55(v106);
    v108 = v181;
    if (v107)
    {
      *OUTLINED_FUNCTION_32_0() = 0;
      OUTLINED_FUNCTION_34_0(&dword_25E6E9000, v109, v110, "Could not get the inpainting model url");
      OUTLINED_FUNCTION_19_0();
    }
  }

  else
  {
    v111 = OUTLINED_FUNCTION_10_2();
    v112(v111);
    if (qword_27FD031E8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v113 = sub_25E755B98();
    OUTLINED_FUNCTION_33_0(v113, qword_27FD04488);
    v114 = OUTLINED_FUNCTION_7_3();
    v115(v114);
    v116 = sub_25E755B78();
    v117 = sub_25E756DD8();
    if (OUTLINED_FUNCTION_56(v117))
    {
      v118 = v75;
      v119 = OUTLINED_FUNCTION_54();
      v120 = OUTLINED_FUNCTION_52();
      v200 = v120;
      *v119 = 136315138;
      v121 = sub_25E7558E8();
      v66 = v122;
      v123 = *(v84 + 8);
      v124 = OUTLINED_FUNCTION_23_1();
      v123(v124);
      sub_25E71C160(v121, v66, &v200);
      OUTLINED_FUNCTION_53();
      *(v119 + 4) = v118;
      OUTLINED_FUNCTION_35_0(&dword_25E6E9000, v125, v126, "Inpainting URL is: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v120);
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_19_0();

      (v123)(v185, v3);
      v81 = v197;
      v84 = v198;
      v80 = v195;
    }

    else
    {

      v127 = OUTLINED_FUNCTION_57();
      (v116)(v127);
      v128 = OUTLINED_FUNCTION_38_0();
      (v116)(v128);
    }

    v74 = v199;
    v108 = v181;
  }

  v129 = v174;
  sub_25E71C960(v81, v174, &qword_27FD04540);
  OUTLINED_FUNCTION_8_3(v129);
  if (v63)
  {
    sub_25E71C9C8(v129, &qword_27FD04540);
    if (qword_27FD031E8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v130 = sub_25E755B98();
    OUTLINED_FUNCTION_33_0(v130, qword_27FD04488);
    v131 = sub_25E755B78();
    v132 = sub_25E756DB8();
    v133 = OUTLINED_FUNCTION_55(v132);
    v134 = v194;
    if (v133)
    {
      *OUTLINED_FUNCTION_32_0() = 0;
      OUTLINED_FUNCTION_34_0(&dword_25E6E9000, v135, v136, "Could not get the refinement model url");
      OUTLINED_FUNCTION_19_0();
    }

    (*(v84 + 8))(v190, v3);
    v137 = OUTLINED_FUNCTION_42();
    v138(v137);
  }

  else
  {
    v139 = OUTLINED_FUNCTION_10_2();
    v140(v139);
    if (qword_27FD031E8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v141 = sub_25E755B98();
    OUTLINED_FUNCTION_33_0(v141, qword_27FD04488);
    v142 = OUTLINED_FUNCTION_7_3();
    v143(v142);
    v144 = sub_25E755B78();
    v145 = sub_25E756DD8();
    if (OUTLINED_FUNCTION_56(v145))
    {
      v146 = OUTLINED_FUNCTION_54();
      v147 = OUTLINED_FUNCTION_52();
      v200 = v147;
      *v146 = 136315138;
      v148 = sub_25E7558E8();
      v66 = v149;
      v150 = v108;
      v151 = *(v84 + 8);
      v151(v150, v3);
      sub_25E71C160(v148, v66, &v200);
      OUTLINED_FUNCTION_53();
      *(v146 + 4) = v148;
      OUTLINED_FUNCTION_35_0(&dword_25E6E9000, v152, v153, "Refinement URL is: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v147);
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_19_0();

      v151(v186, v3);
      v151(v190, v3);
      v81 = v197;
      v80 = v195;
    }

    else
    {

      v154 = OUTLINED_FUNCTION_57();
      (v144)(v154);
      v155 = OUTLINED_FUNCTION_38_0();
      (v144)(v155);
      (v144)(v190, v3);
    }

    v156 = OUTLINED_FUNCTION_42();
    v157(v156);
    v134 = v194;
    v74 = v199;
  }

  v158 = v192;
  v159 = v193;
  sub_25E71C960(v74, v192, &qword_27FD04540);
  OUTLINED_FUNCTION_8_3(v158);
  if (v63)
  {
    sub_25E71C9C8(v158, &qword_27FD04540);
    v162 = MEMORY[0x277D84F98];
  }

  else
  {
    v160 = v187;
    (*(v84 + 32))(v187, v158, v3);
    (*(v84 + 16))(v134, v160, v3);
    v161 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v200 = v161;
    sub_25E71CAA0(v134, 0x61746E656D676573, 0xEC0000006E6F6974);
    v162 = v200;
    (*(v84 + 8))(v160, v3);
  }

  sub_25E71C960(v66, v159, &qword_27FD04540);
  OUTLINED_FUNCTION_8_3(v159);
  if (v63)
  {
    sub_25E71C9C8(v159, &qword_27FD04540);
  }

  else
  {
    (*(v84 + 32))(v188, v159, v3);
    v163 = OUTLINED_FUNCTION_7_3();
    v164(v163);
    swift_isUniquelyReferenced_nonNull_native();
    v200 = v162;
    sub_25E71CAA0(v134, 0x69746E6961706E69, 0xEA0000000000676ELL);
    v162 = v200;
    v165 = OUTLINED_FUNCTION_38_0();
    v166(v165);
  }

  sub_25E71C960(v81, v80, &qword_27FD04540);
  OUTLINED_FUNCTION_8_3(v80);
  if (v63)
  {
    sub_25E71C9C8(v81, &qword_27FD04540);
    v81 = v66;
    v66 = v74;
  }

  else
  {
    (*(v84 + 32))(v189, v80, v3);
    v167 = OUTLINED_FUNCTION_7_3();
    v168(v167);
    swift_isUniquelyReferenced_nonNull_native();
    v200 = v162;
    sub_25E71CAA0(v134, 0x656D656E69666572, 0xEA0000000000746ELL);
    v162 = v200;
    v169 = OUTLINED_FUNCTION_38_0();
    v170(v169);
    v80 = v74;
  }

  sub_25E71C9C8(v81, &qword_27FD04540);
  sub_25E71C9C8(v66, &qword_27FD04540);
  sub_25E71C9C8(v80, &qword_27FD04540);
  __swift_destroy_boxed_opaque_existential_0Tm(v201);
  return v162;
}

uint64_t sub_25E718B50@<X0>(uint64_t *a1@<X8>)
{
  sub_25E7559C8();
  v2 = v8;
  v3 = v9;
  v4 = __swift_project_boxed_opaque_existential_1(v7, v8);
  a1[3] = v2;
  a1[4] = *(v3 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

uint64_t sub_25E718BE8()
{
  sub_25E718B50(v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_40_0();
  sub_25E755A08();
  v1 = OUTLINED_FUNCTION_38_0();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return 1;
}

uint64_t sub_25E718D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = sub_25E755A78();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04508);
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  v9 = sub_25E755B28();
  v6[22] = v9;
  v6[23] = *(v9 - 8);
  v6[24] = swift_task_alloc();
  v10 = sub_25E755A18();
  v6[25] = v10;
  v6[26] = *(v10 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v11 = sub_25E755A68();
  v6[29] = v11;
  v6[30] = *(v11 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04510);
  v6[34] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04518);
  v6[35] = v12;
  v6[36] = *(v12 - 8);
  v6[37] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04520);
  v6[38] = v13;
  v6[39] = *(v13 - 8);
  v6[40] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04528);
  v6[41] = v14;
  v6[42] = *(v14 - 8);
  v6[43] = swift_task_alloc();
  v15 = sub_25E7559D8();
  v6[44] = v15;
  v6[45] = *(v15 - 8);
  v6[46] = swift_task_alloc();
  v16 = sub_25E755AE8();
  v6[47] = v16;
  v6[48] = *(v16 - 8);
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25E7191E8, 0, 0);
}

uint64_t sub_25E7191E8()
{
  if (qword_27FD031F0 != -1)
  {
    OUTLINED_FUNCTION_20_1();
  }

  v1 = sub_25E755B18();
  *(v0 + 416) = OUTLINED_FUNCTION_33_0(v1, qword_27FD044A0);
  sub_25E755B08();
  sub_25E755AC8();
  v2 = sub_25E755B08();
  v3 = sub_25E756E28();
  if (sub_25E756E58())
  {
    v4 = OUTLINED_FUNCTION_32_0();
    *v4 = 0;
    v5 = sub_25E755AD8();
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v2, v3, v5, "modelDownload", "", v4, 2u);
    OUTLINED_FUNCTION_27_0();
  }

  v6 = OUTLINED_FUNCTION_47();
  v7(v6);
  sub_25E755B58();
  swift_allocObject();
  OUTLINED_FUNCTION_59();
  *(v0 + 424) = sub_25E755B48();
  sub_25E718B50((v0 + 16));
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_59();
  sub_25E7559F8();
  sub_25E7559B8();
  (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04530);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25E75C5E0;
  sub_25E71C89C(v0 + 16, v8 + 32);
  sub_25E755998();

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25E75C5E0;
  sub_25E71C89C(v0 + 16, v9 + 32);
  sub_25E7559A8();

  sub_25E756D88();
  *(v0 + 464) = *MEMORY[0x277D29BD0];
  *(v0 + 468) = *MEMORY[0x277D29BE8];
  *(v0 + 472) = *MEMORY[0x277D29BC8];
  *(v0 + 476) = *MEMORY[0x277D29BC0];
  *(v0 + 480) = *MEMORY[0x277D85B00];
  *(v0 + 484) = *MEMORY[0x277D29CB0];
  *(v0 + 488) = *MEMORY[0x277D29CA8];
  *(v0 + 492) = *MEMORY[0x277D29CB8];
  *(v0 + 496) = *MEMORY[0x277D29C98];
  *(v0 + 500) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_15_1();
  *(v0 + 432) = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_2_2(v10);
  OUTLINED_FUNCTION_25();

  return MEMORY[0x2822003E8]();
}

uint64_t sub_25E719794()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_1();
  v1 = *v0;
  OUTLINED_FUNCTION_4_3();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_25E71987C()
{
  v115 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 500);
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
    if (v3 & 1) == 0 && (sub_25E718BE8())
    {
      if (qword_27FD031E8 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v4 = sub_25E755B98();
      OUTLINED_FUNCTION_33_0(v4, qword_27FD04488);
      v5 = sub_25E755B78();
      v6 = sub_25E756DD8();
      if (OUTLINED_FUNCTION_43(v6))
      {
        v7 = OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_58(v7);
        OUTLINED_FUNCTION_36_0(&dword_25E6E9000, v8, v9, "Stream finished without receiving a .complete status, but model is available. Continuing with loading");
        OUTLINED_FUNCTION_27_0();
      }

      v10 = *(v0 + 104);

      v10(1, 1.0);
    }

    v12 = *(v0 + 336);
    v11 = *(v0 + 344);
    v14 = *(v0 + 320);
    v13 = *(v0 + 328);
    v15 = *(v0 + 304);
    v16 = *(v0 + 312);

    (*(v16 + 8))(v14, v15);
    (*(v12 + 8))(v11, v13);
    v17 = OUTLINED_FUNCTION_23_1();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
    OUTLINED_FUNCTION_16_1();

    OUTLINED_FUNCTION_9_2();

    return v19();
  }

  (*(*(v0 + 240) + 32))(*(v0 + 264), v1, v2);
  if (qword_27FD031E8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v22 = *(v0 + 256);
  v21 = *(v0 + 264);
  v23 = *(v0 + 240);
  v24 = *(v0 + 232);
  v25 = sub_25E755B98();
  *(v0 + 440) = __swift_project_value_buffer(v25, qword_27FD04488);
  v26 = *(v23 + 16);
  v26(v22, v21, v24);
  v27 = OUTLINED_FUNCTION_47();
  (v26)(v27);
  v28 = sub_25E755B78();
  v29 = sub_25E756DD8();
  v30 = os_log_type_enabled(v28, v29);
  v32 = *(v0 + 248);
  v31 = *(v0 + 256);
  v33 = *(v0 + 232);
  v34 = *(v0 + 240);
  if (v30)
  {
    v112 = v29;
    v35 = swift_slowAlloc();
    v111 = OUTLINED_FUNCTION_52();
    v114 = v111;
    *v35 = 136446466;
    sub_25E755A48();
    v36 = sub_25E756CE8();
    v38 = v37;
    v39 = *(v34 + 8);
    v40 = OUTLINED_FUNCTION_41();
    v39(v40);
    sub_25E71C160(v36, v38, &v114);
    OUTLINED_FUNCTION_59();

    *(v35 + 4) = v31;
    *(v35 + 12) = 2048;
    sub_25E755A58();
    v42 = v41;
    (v39)(v32, v33);
    *(v35 + 14) = v42;
    _os_log_impl(&dword_25E6E9000, v28, v112, "Cleanup Resource Download Status: %{public}s / Progress: %f", v35, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v111);
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_22_0();
  }

  else
  {

    v39 = *(v34 + 8);
    (v39)(v32, v33);
    v43 = OUTLINED_FUNCTION_41();
    v39(v43);
  }

  *(v0 + 448) = v39;
  v44 = *(v0 + 464);
  sub_25E755A48();
  v45 = OUTLINED_FUNCTION_26_0();
  v47 = v46(v45);
  if (v47 == v44)
  {
    v48 = *(v0 + 484);
    v49 = *(v0 + 216);
    v51 = *(v0 + 136);
    v50 = *(v0 + 144);
    v52 = *(v0 + 120);
    v53 = *(v0 + 128);
    (*(*(v0 + 208) + 96))(v49, *(v0 + 200));
    (*(v53 + 32))(v50, v49, v52);
    (*(v53 + 16))(v51, v50, v52);
    v54 = (*(v53 + 88))(v51, v52);
    if (v54 == v48)
    {
      v55 = sub_25E755B78();
      v56 = sub_25E756DD8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_32_0();
        *v57 = 0;
        _os_log_impl(&dword_25E6E9000, v55, v56, "Cleanup Resource Not Downloading", v57, 2u);
        OUTLINED_FUNCTION_27_0();

        v58 = OUTLINED_FUNCTION_40_0();
        v59(v58);
        v60 = OUTLINED_FUNCTION_23_1();
        v39(v60);
        goto LABEL_51;
      }

      v81 = OUTLINED_FUNCTION_40_0();
      v82(v81);
      v73 = OUTLINED_FUNCTION_23_1();
    }

    else
    {
      if (v54 != *(v0 + 488))
      {
        if (v54 == *(v0 + 492))
        {
          (*(v0 + 104))(3, 0.0);
        }

        else
        {
          if (v54 != *(v0 + 496))
          {
            v105 = *(*(v0 + 128) + 8);
            v106 = OUTLINED_FUNCTION_40_0();
            v105(v106);
            v107 = OUTLINED_FUNCTION_26_0();
            v39(v107);
            v108 = OUTLINED_FUNCTION_41();
            v105(v108);
            goto LABEL_51;
          }

          (*(v0 + 104))(2, 0.0);
        }

        v100 = OUTLINED_FUNCTION_40_0();
        v101(v100);
        v102 = OUTLINED_FUNCTION_26_0();
        v39(v102);
LABEL_51:
        v91 = *(v0 + 500);
        goto LABEL_52;
      }

      v68 = *(v0 + 264);
      v113 = *(v0 + 232);
      v69 = *(v0 + 104);
      sub_25E755A58();
      v69(0, v70 / 100.0);
      v71 = OUTLINED_FUNCTION_40_0();
      v72(v71);
      v73 = v68;
      v74 = v113;
    }

    (v39)(v73, v74);
    goto LABEL_51;
  }

  if (v47 != *(v0 + 468))
  {
    if (v47 == *(v0 + 472))
    {
      v75 = sub_25E755B78();
      v76 = sub_25E756DD8();
      if (!OUTLINED_FUNCTION_43(v76))
      {
LABEL_38:
        v85 = *(v0 + 104);

        v85(4, 0.0);
        v86 = OUTLINED_FUNCTION_26_0();
        v39(v86);
        goto LABEL_51;
      }

      v77 = OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_58(v77);
      v80 = "Cleanup Resource Non Network Error";
    }

    else
    {
      if (v47 != *(v0 + 476))
      {
        (v39)(*(v0 + 264), *(v0 + 232));
        v103 = OUTLINED_FUNCTION_23_1();
        v104(v103);
        goto LABEL_51;
      }

      v75 = sub_25E755B78();
      v83 = sub_25E756DD8();
      if (!OUTLINED_FUNCTION_43(v83))
      {
        goto LABEL_38;
      }

      v84 = OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_58(v84);
      v80 = "Cleanup Resource Network Error";
    }

    OUTLINED_FUNCTION_36_0(&dword_25E6E9000, v78, v79, v80);
    OUTLINED_FUNCTION_27_0();
    goto LABEL_38;
  }

  v61 = sub_25E755B08();
  sub_25E755B38();
  v62 = sub_25E756E18();
  if (sub_25E756E58())
  {
    v63 = *(v0 + 480);
    v65 = *(v0 + 184);
    v64 = *(v0 + 192);
    v66 = *(v0 + 176);

    sub_25E755B68();

    if ((*(v65 + 88))(v64, v66) == v63)
    {
      v67 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
      v67 = "";
    }

    v87 = OUTLINED_FUNCTION_32_0();
    *v87 = 0;
    v88 = sub_25E755AD8();
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v61, v62, v88, "modelDownload", v67, v87, 2u);
    OUTLINED_FUNCTION_27_0();
  }

  v89 = OUTLINED_FUNCTION_23_1();
  v90(v89);
  if ((sub_25E718BE8() & 1) == 0)
  {
    v93 = sub_25E755B78();
    v94 = sub_25E756DB8();
    if (OUTLINED_FUNCTION_43(v94))
    {
      v95 = OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_58(v95);
      OUTLINED_FUNCTION_36_0(&dword_25E6E9000, v96, v97, "Download status was 'complete', but model isn't yet available. Watch for updates using 'monitorUpdates'");
      OUTLINED_FUNCTION_27_0();
    }

    sub_25E756D88();
    swift_task_alloc();
    OUTLINED_FUNCTION_15_1();
    *(v0 + 456) = v98;
    *v98 = v99;
    OUTLINED_FUNCTION_13_2(v98);
    goto LABEL_53;
  }

  v91 = 1;
  (*(v0 + 104))(1, 1.0);
  v92 = OUTLINED_FUNCTION_26_0();
  v39(v92);
LABEL_52:
  *(v0 + 500) = v91;
  swift_task_alloc();
  OUTLINED_FUNCTION_15_1();
  *(v0 + 432) = v109;
  *v109 = v110;
  OUTLINED_FUNCTION_2_2();
LABEL_53:
  OUTLINED_FUNCTION_25();

  return MEMORY[0x2822003E8]();
}

uint64_t sub_25E71A2B0()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_1();
  v1 = *v0;
  OUTLINED_FUNCTION_4_3();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_25E71A398()
{
  OUTLINED_FUNCTION_51();
  if (*(v0 + 88))
  {

    v1 = sub_25E755B78();
    v2 = sub_25E756DD8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = OUTLINED_FUNCTION_32_0();
      *v3 = 0;
      _os_log_impl(&dword_25E6E9000, v1, v2, "Cleanup Resource Download; monitorUpdates has fired", v3, 2u);
      OUTLINED_FUNCTION_27_0();
    }

    v4 = *(v0 + 104);

    v4(1, 1.0);
    swift_task_alloc();
    OUTLINED_FUNCTION_15_1();
    *(v0 + 456) = v5;
    *v5 = v6;
    OUTLINED_FUNCTION_13_2();
  }

  else
  {
    v7 = *(v0 + 448);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    v8 = OUTLINED_FUNCTION_23_1();
    v7(v8);
    *(v0 + 500) = 1;
    swift_task_alloc();
    OUTLINED_FUNCTION_15_1();
    *(v0 + 432) = v9;
    *v9 = v10;
    OUTLINED_FUNCTION_2_2();
  }

  OUTLINED_FUNCTION_25();

  return MEMORY[0x2822003E8]();
}

uint64_t sub_25E71A518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD044F8);
  OUTLINED_FUNCTION_20_0(v4);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  sub_25E756D78();
  OUTLINED_FUNCTION_30_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;

  v13 = OUTLINED_FUNCTION_48();
  sub_25E716DA0(v13, v14, v7, v15, v12);
}

uint64_t sub_25E71A5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_25E755B28();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_25E755AE8();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25E71A750, 0, 0);
}

uint64_t sub_25E71A750()
{
  v55 = v0;
  v54[1] = *MEMORY[0x277D85DE8];
  if (qword_27FD031F0 != -1)
  {
    OUTLINED_FUNCTION_20_1();
  }

  v1 = sub_25E755B18();
  __swift_project_value_buffer(v1, qword_27FD044A0);
  sub_25E755B08();
  sub_25E755AC8();
  v2 = sub_25E755B08();
  v3 = sub_25E756E28();
  if (sub_25E756E58())
  {
    v4 = OUTLINED_FUNCTION_32_0();
    *v4 = 0;
    v5 = sub_25E755AD8();
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v2, v3, v5, "modelCompile", "", v4, 2u);
    OUTLINED_FUNCTION_17_1();
  }

  v6 = OUTLINED_FUNCTION_47();
  v7(v6);
  sub_25E755B58();
  swift_allocObject();
  OUTLINED_FUNCTION_59();
  sub_25E755B48();
  if (qword_27FD031E8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v8 = sub_25E755B98();
  OUTLINED_FUNCTION_33_0(v8, qword_27FD04488);
  v9 = sub_25E755B78();
  v10 = sub_25E756DD8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_32_0();
    *v11 = 0;
    _os_log_impl(&dword_25E6E9000, v9, v10, "Cleanup Resource - Loading and registering models", v11, 2u);
    OUTLINED_FUNCTION_22_0();
  }

  v12 = objc_opt_self();
  v0[5] = 0;
  v13 = [v12 loadAndRegisterInpaintModel_];
  v14 = v0[5];
  if (v13 && (v0[7] = 0, v15 = v14, v16 = [v12 loadAndRegisterRefinementModel_], v14 = v0[7], v16))
  {
    v17 = v14;
    v18 = sub_25E755B78();
    v19 = sub_25E756DD8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_32_0();
      *v20 = 0;
      _os_log_impl(&dword_25E6E9000, v18, v19, "Cleanup Resource - Warming up inpaint model", v20, 2u);
      OUTLINED_FUNCTION_27_0();
    }

    [v12 warmUpResources];
    v21 = sub_25E755B78();
    v22 = sub_25E756DD8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_32_0();
      *v23 = 0;
      _os_log_impl(&dword_25E6E9000, v21, v22, "Cleanup Resource - Finished loading and warming", v23, 2u);
      OUTLINED_FUNCTION_17_1();
    }

    v24 = sub_25E755B08();
    sub_25E755B38();
    v25 = sub_25E756E18();
    if (sub_25E756E58())
    {

      sub_25E755B68();

      v26 = OUTLINED_FUNCTION_41();
      if (v27(v26) == *MEMORY[0x277D85B00])
      {
        v28 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[11] + 8))(v0[12], v0[10]);
        v28 = "";
      }

      v46 = OUTLINED_FUNCTION_32_0();
      *v46 = 0;
      v47 = sub_25E755AD8();
      _os_signpost_emit_with_name_impl(&dword_25E6E9000, v24, v25, v47, "modelCompile", v28, v46, 2u);
      OUTLINED_FUNCTION_22_0();
    }

    v49 = v0[14];
    v48 = v0[15];
    v50 = v0[13];
    v51 = v0[8];

    v45 = *(v49 + 8);
    v45(v48, v50);
    v51(1, 0);
  }

  else
  {
    v29 = v14;
    v30 = sub_25E7558D8();

    swift_willThrow();
    v31 = v30;
    v32 = sub_25E755B78();
    v33 = sub_25E756DD8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_54();
      v35 = OUTLINED_FUNCTION_52();
      v54[0] = v35;
      *v34 = 136446210;
      swift_getErrorValue();
      v36 = sub_25E756F28();
      v38 = sub_25E71C160(v36, v37, v54);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_25E6E9000, v32, v33, "Error compiling model: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_22_0();
    }

    v39 = v0[14];
    v40 = v0[8];
    sub_25E756CC8();
    v41 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v42 = OUTLINED_FUNCTION_41();
    v44 = sub_25E71BE40(v42, v43, 4, 0);
    v40(0, v44);

    v45 = *(v39 + 8);
  }

  v45(v0[17], v0[13]);

  OUTLINED_FUNCTION_9_2();

  return v52();
}

uint64_t sub_25E71AE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25E71AE50, 0, 0);
}

uint64_t sub_25E71AE50()
{
  OUTLINED_FUNCTION_12_2();
  if (*(v0[2] + 32) == 1)
  {
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_25E71AF28;
    v2 = 450000000;
  }

  else
  {
    v0[6] = 0;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v2 = OUTLINED_FUNCTION_11_2(v3);
  }

  return MEMORY[0x282200480](v2);
}

uint64_t sub_25E71AF28()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4_3();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_9_2();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_25E71B040()
{
  OUTLINED_FUNCTION_12_2();
  (*(v0 + 24))(2, 0.0);
  OUTLINED_FUNCTION_9_2();

  return v1();
}

uint64_t sub_25E71B0A8()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4_3();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_9_2();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_25E71B1C0()
{
  OUTLINED_FUNCTION_37_0();
  v1 = *(v0 + 48) + 0.05 / *(*(v0 + 16) + 16);
  (*(v0 + 24))(0, v1);
  *(v0 + 48) = v1;
  if (v1 < 1.0)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_11_2();
LABEL_5:

    return MEMORY[0x282200480](v3);
  }

  v4 = *(v0 + 16);
  (*(v0 + 24))(1);
  if (*(v4 + 33) == 1)
  {
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = sub_25E71B320;
    v3 = 10000000;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_9_2();

  return v6();
}

uint64_t sub_25E71B320()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4_3();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_9_2();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_25E71B438()
{
  OUTLINED_FUNCTION_12_2();
  (*(v0 + 24))(4, 0.0);
  OUTLINED_FUNCTION_9_2();

  return v1();
}

uint64_t sub_25E71B4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD044F8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_25E71C960(a3, v21 - v9, &qword_27FD044F8);
  v11 = sub_25E756D78();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_25E71C9C8(v10, &qword_27FD044F8);
  }

  else
  {
    sub_25E756D68();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_25E756D58();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_25E756CF8() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_25E71C9C8(a3, &qword_27FD044F8);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25E71C9C8(a3, &qword_27FD044F8);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_25E71B764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, char *, uint64_t, void *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD044F8);
  OUTLINED_FUNCTION_20_0(v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_25E756D78();
  OUTLINED_FUNCTION_30_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v5;
  v18[5] = a1;
  v18[6] = a2;

  a5(0, 0, v13, a4, v18);
}

uint64_t sub_25E71B85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25E71B880, 0, 0);
}

uint64_t sub_25E71B880(unint64_t a1)
{
  v3 = *(*(v1 + 16) + 24) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  OUTLINED_FUNCTION_12_2();
  v5 = v4;
  v6 = swift_task_alloc();
  *(v1 + 40) = v6;
  *v6 = v1;
  v6[1] = sub_25E71B964;
  a1 = v5;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_25E71B964()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4_3();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_9_2();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return MEMORY[0x2822009F8]();
  }
}

uint64_t sub_25E71BA7C()
{
  OUTLINED_FUNCTION_12_2();
  (*(v0 + 24))(1, 0);
  OUTLINED_FUNCTION_9_2();

  return v1();
}

uint64_t sub_25E71BB8C()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_4(v1);
  OUTLINED_FUNCTION_46();

  return sub_25E71B85C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_25E71BC24()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_1();
  v1 = *v0;
  OUTLINED_FUNCTION_4_3();
  *v2 = v1;

  OUTLINED_FUNCTION_9_2();

  return v3();
}

uint64_t sub_25E71BD04()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_4(v1);
  OUTLINED_FUNCTION_46();

  return sub_25E71AE2C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_25E71BD9C()
{
  OUTLINED_FUNCTION_51();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_4(v4);

  return sub_25E71A5F0(v6, v7, v8, v2, v1);
}

id sub_25E71BE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_25E756C98();

  if (a4)
  {
    v8 = sub_25E756C78();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_25E71BEF0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25E71BFE8;

  return v6(a1);
}

uint64_t sub_25E71BFE8()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_1();
  v1 = *v0;
  OUTLINED_FUNCTION_4_3();
  *v2 = v1;

  OUTLINED_FUNCTION_9_2();

  return v3();
}

uint64_t sub_25E71C0CC()
{
  OUTLINED_FUNCTION_37_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_29_0(v1);

  return v4(v3);
}

unint64_t sub_25E71C160(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25E71C224(v11, 0, 0, 1, a1, a2);
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
    sub_25E71C324(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_25E71C224(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25E71C380(a5, a6);
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
    result = sub_25E756EA8();
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

uint64_t sub_25E71C324(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25E71C380(uint64_t a1, unint64_t a2)
{
  v3 = sub_25E71C3CC(a1, a2);
  sub_25E71C4E4(&unk_287063598);
  return v3;
}

uint64_t sub_25E71C3CC(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_25E756D18())
  {
    result = sub_25E71C5C8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_25E756E88();
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
          result = sub_25E756EA8();
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

uint64_t sub_25E71C4E4(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_25E71C638(result, v7, 1, v3);
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

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25E71C5C8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04500);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_25E71C638(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04500);
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

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25E71C774()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_4(v1);
  OUTLINED_FUNCTION_46();

  return sub_25E718D38(v3, v4, v5, v6, v7, v8);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_25E71C89C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
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

uint64_t sub_25E71C960(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25E71C9C8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25E71CA28(uint64_t a1, uint64_t a2)
{
  sub_25E756F38();
  sub_25E756D08();
  v4 = sub_25E756F58();

  return sub_25E71CD34(a1, a2, v4);
}

uint64_t sub_25E71CAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25E71CA28(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04548);
  if ((sub_25E756EC8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_25E71CA28(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_25E756F18();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7];
    v17 = sub_25E755918();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v11;

    return v19(v21, a1, v20);
  }

  else
  {
    sub_25E71CC84(v11, a2, a3, a1, v15);
  }
}

uint64_t sub_25E71CC14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E71CC84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_25E755918();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_25E71CD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_25E756F08() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_25E71CE04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25E71CE14()
{
  OUTLINED_FUNCTION_37_0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_4(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_4(v3);

  return sub_25E716CD0(v5, v6, v7, v1);
}

uint64_t objectdestroy_51Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25E71CEEC()
{
  OUTLINED_FUNCTION_37_0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_4(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_4(v3);

  return sub_25E7171CC(v5, v6, v7, v1);
}

uint64_t sub_25E71CF9C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeliveryManagerState(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DeliveryManagerState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25E71D114()
{
  result = qword_27FD04550;
  if (!qword_27FD04550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04550);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_1()
{
}

void OUTLINED_FUNCTION_17_1()
{

  JUMPOUT(0x25F8BF560);
}

void OUTLINED_FUNCTION_19_0()
{

  JUMPOUT(0x25F8BF560);
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return swift_once();
}

void OUTLINED_FUNCTION_22_0()
{

  JUMPOUT(0x25F8BF560);
}

void OUTLINED_FUNCTION_27_0()
{

  JUMPOUT(0x25F8BF560);
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_34_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_35_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_36_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

BOOL OUTLINED_FUNCTION_43(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49()
{

  return sub_25E7558F8();
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_53()
{
}

uint64_t OUTLINED_FUNCTION_54()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_55(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_56(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_25E71D6D8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t PEPhotoStyleDPad.value.setter()
{
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_3_0();
  v0 = OUTLINED_FUNCTION_11_3();
  sub_25E720C34(1, v0, v1);
}

double sub_25E71D8E8(double (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_3_0();
  v3 = a1(v2);

  return v3;
}

uint64_t PEPhotoStyleDPad.defaultValue.setter()
{
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_3_0();
  v0 = OUTLINED_FUNCTION_11_3();
  sub_25E71DA8C(v0, v1);
}

double sub_25E71D9EC()
{
  swift_getKeyPath();
  sub_25E722DE0(&qword_27FD04568, _s16IntegrationModelCMa_1);
  sub_25E755938();

  return *(v0 + 40);
}

void sub_25E71DA8C(double a1, double a2)
{
  if (*(v2 + 40) == a1 && *(v2 + 48) == a2)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25E721260();
  }
}

id sub_25E71DC14@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 backgroundImage];
  *a2 = result;
  return result;
}

void *sub_25E71DC50()
{
  swift_getKeyPath();
  sub_25E722DE0(&qword_27FD04568, _s16IntegrationModelCMa_1);
  sub_25E755938();

  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void sub_25E71DCF8(void *a1)
{
  v3 = *(v1 + 56);
  v4 = v3;
  LOBYTE(v3) = sub_25E721134(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25E721260();
  }

  else
  {
    v6 = *(v1 + 56);
    *(v1 + 56) = a1;
  }
}

id sub_25E71DEB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 backgroundColor];
  *a2 = result;
  return result;
}

void *sub_25E71DEF4()
{
  swift_getKeyPath();
  sub_25E722DE0(&qword_27FD04568, _s16IntegrationModelCMa_1);
  sub_25E755938();

  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void sub_25E71DF9C(void *a1)
{
  v3 = *(v1 + 64);
  v4 = v3;
  LOBYTE(v3) = sub_25E7211D4(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25E721260();
  }

  else
  {
    v6 = *(v1 + 64);
    *(v1 + 64) = a1;
  }
}

id sub_25E71E15C()
{
  swift_getKeyPath();
  sub_25E722DE0(&qword_27FD04568, _s16IntegrationModelCMa_1);
  sub_25E755938();

  v1 = *(v0 + 72);

  return v1;
}

void sub_25E71E20C(void *a1)
{
  v3 = *(v1 + 72);
  v4 = sub_25E7007E8();

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25E721260();
  }

  else
  {
    v6 = *(v1 + 72);
    *(v1 + 72) = a1;
  }
}

uint64_t sub_25E71E354(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_3_0();
  v3 = a1(v2);

  return v3;
}

uint64_t sub_25E71E40C(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_3_0();
  a2(a1);
}

id sub_25E71E464@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 staticDottedGridImage];
  *a2 = result;
  return result;
}

void *sub_25E71E4A0()
{
  swift_getKeyPath();
  sub_25E722DE0(&qword_27FD04568, _s16IntegrationModelCMa_1);
  sub_25E755938();

  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void sub_25E71E548(void *a1)
{
  v3 = *(v1 + 80);
  v4 = v3;
  LOBYTE(v3) = sub_25E721134(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25E721260();
  }

  else
  {
    v6 = *(v1 + 80);
    *(v1 + 80) = a1;
  }
}

uint64_t sub_25E71E704(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 32);

  v5(v6, a2, a3);
}

uint64_t sub_25E71E7B4@<X0>(id *a1@<X0>, uint64_t (**a2)(double *a1)@<X8>)
{
  v3 = [*a1 onValueChanged];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = sub_25E7019D8;
  *(result + 24) = v4;
  *a2 = sub_25E722CD8;
  a2[1] = result;
  return result;
}

void sub_25E71E850(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v8[4] = sub_25E722CD4;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_25E71E704;
  v8[3] = &block_descriptor_94;
  v7 = _Block_copy(v8);

  [v6 setOnValueChanged_];
  _Block_release(v7);
}

uint64_t sub_25E71E934()
{
  swift_getKeyPath();
  sub_25E722DE0(&qword_27FD04568, _s16IntegrationModelCMa_1);
  sub_25E755938();

  v1 = *(v0 + 240);

  return v1;
}

uint64_t sub_25E71EA30()
{
  swift_getKeyPath();
  sub_25E722DE0(&qword_27FD04568, _s16IntegrationModelCMa_1);
  sub_25E755938();

  return *(v0 + 32);
}

uint64_t sub_25E71EB1C(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_3_0();
  LOBYTE(a1) = a1(v2);

  return a1 & 1;
}

uint64_t PEPhotoStyleDPad.pulsingValueIndicator.setter()
{
  sub_25E756AE8();
  sub_25E755E78();
}

uint64_t sub_25E71EC24()
{
  swift_getKeyPath();
  sub_25E722DE0(&qword_27FD04568, _s16IntegrationModelCMa_1);
  sub_25E755938();

  return *(v0 + 33);
}

uint64_t sub_25E71ECC4(uint64_t a1, uint64_t a2)
{

  sub_25E71ED10(a2);
}

uint64_t sub_25E71ED10(uint64_t result)
{
  if (*(v1 + 33) == (result & 1))
  {
    *(v1 + 33) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25E721260();
  }

  return result;
}

BOOL PEPhotoStyleDPad.isDottedGridAnimated.getter()
{
  OUTLINED_FUNCTION_3_0();
  sub_25E71EFC0(v1);

  return (~v1[48] & 0x8100) == 0;
}

uint64_t PEPhotoStyleDPad.isDottedGridAnimated.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR___PEPhotoStyleDPad_stylePadModel);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_4();
  sub_25E722DE0(v4, v5);

  OUTLINED_FUNCTION_7_4(v6, v7, v8, v9, v10, v11, v12, v13, v32, v3);
  sub_25E755938();

  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_7_4(KeyPath, v15, v16, v17, v18, v19, v20, v21, v33, v3);
  sub_25E755958();

  if (*(v3 + 184) < 0)
  {
    if (a1)
    {
      v22 = -32512;
    }

    else
    {
      v22 = 0x8000;
    }

    *(v3 + 184) = v22 & 0xFFFE | *(v3 + 184) & 1;
  }

  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_7_4(v23, v24, v25, v26, v27, v28, v29, v30, v34, v3);
  sub_25E755948();
}

void *sub_25E71EFC0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_25E722DE0(&qword_27FD04568, _s16IntegrationModelCMa_1);
  sub_25E755938();

  return memcpy(a1, (v1 + 88), 0x80uLL);
}

uint64_t PEPhotoStyleDPad.snapIndicatorToGrid.getter()
{
  OUTLINED_FUNCTION_3_0();
  sub_25E71EFC0(&v1);

  return (v2 < 0) & v2;
}

uint64_t PEPhotoStyleDPad.snapIndicatorToGrid.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR___PEPhotoStyleDPad_stylePadModel);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_4();
  sub_25E722DE0(v4, v5);

  OUTLINED_FUNCTION_7_4(v6, v7, v8, v9, v10, v11, v12, v13, v32, v3);
  sub_25E755938();

  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_7_4(KeyPath, v15, v16, v17, v18, v19, v20, v21, v33, v3);
  sub_25E755958();

  v22 = *(v3 + 184);
  if (v22 < 0)
  {
    *(v3 + 184) = v22 & 0x100 | a1 & 1 | 0x8000;
  }

  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_7_4(v23, v24, v25, v26, v27, v28, v29, v30, v34, v3);
  sub_25E755948();
}

void sub_25E71F2DC(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_25E71F398@<X0>(id *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = [*a1 onGestureDidBegin];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = sub_25E722EB0;
  *(result + 24) = v4;
  *a2 = sub_25E722ED4;
  a2[1] = result;
  return result;
}

uint64_t sub_25E71F434()
{
  swift_getKeyPath();
  sub_25E722DE0(&qword_27FD04568, _s16IntegrationModelCMa_1);
  sub_25E755938();

  v1 = *(v0 + 256);

  return v1;
}

uint64_t sub_25E71F4E4()
{
  swift_getKeyPath();
  sub_25E721260();
}

id sub_25E71F578(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6 = a1;
  v7 = a3();
  v9 = v8;

  v13[4] = v7;
  v13[5] = v9;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  v13[2] = v10;
  v13[3] = a4;
  v11 = _Block_copy(v13);

  return v11;
}

uint64_t sub_25E71F620(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_3_0();
  v3 = a1(v2);

  return v3;
}

uint64_t sub_25E71F6C8()
{
  OUTLINED_FUNCTION_3_0();
  sub_25E71F4E4();
}

uint64_t sub_25E71F738@<X0>(id *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = [*a1 onGestureDidEnd];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = sub_25E722EB0;
  *(result + 24) = v4;
  *a2 = sub_25E722CAC;
  a2[1] = result;
  return result;
}

uint64_t sub_25E71F7D4()
{
  swift_getKeyPath();
  sub_25E722DE0(&qword_27FD04568, _s16IntegrationModelCMa_1);
  sub_25E755938();

  v1 = *(v0 + 272);

  return v1;
}

uint64_t PEPhotoStyleDPad.configuration.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_3_0();
  sub_25E71EFC0(a1);
}

uint64_t PEPhotoStyleDPad.configuration.setter(void *__src)
{
  memcpy(v2, __src, sizeof(v2));
  OUTLINED_FUNCTION_3_0();
  sub_25E71F96C(v2);
}

uint64_t sub_25E71F96C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  swift_getKeyPath();
  sub_25E721260();
}

void (*PEPhotoStyleDPad.configuration.modify(void *a1))(const void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  PEPhotoStyleDPad.configuration.getter(v3);
  return sub_25E71FA4C;
}

void sub_25E71FA4C(const void **a1)
{
  v1 = *a1;
  memcpy(v2, *a1, sizeof(v2));
  PEPhotoStyleDPad.configuration.setter(v2);

  free(v1);
}

uint64_t PEPhotoStyleDPad.size.getter()
{
  OUTLINED_FUNCTION_3_0();
  v0 = sub_25E71FBC0();

  return v0;
}

uint64_t sub_25E71FAF8@<X0>(uint64_t a1@<X8>)
{
  result = PEPhotoStyleDPad.size.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t PEPhotoStyleDPad.size.setter(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_3_0();
  sub_25E71FC64(a1, a2, a3 & 1);
}

uint64_t sub_25E71FBC0()
{
  swift_getKeyPath();
  sub_25E722DE0(&qword_27FD04568, _s16IntegrationModelCMa_1);
  sub_25E755938();

  return *(v0 + 216);
}

uint64_t sub_25E71FC64(uint64_t result, uint64_t a2, int a3)
{
  v4 = *(v3 + 232);
  if ((v4 & 1) == 0 && (a3 & 1) == 0)
  {
    if (*(v3 + 216) != *&result || *(v3 + 224) != *&a2)
    {
      goto LABEL_10;
    }

LABEL_8:
    *(v3 + 216) = *&result;
    *(v3 + 224) = *&a2;
    *(v3 + 232) = a3 & 1;
    return result;
  }

  if (v4 & a3)
  {
    goto LABEL_8;
  }

LABEL_10:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_25E721260();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t (*PEPhotoStyleDPad.size.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  *a1 = PEPhotoStyleDPad.size.getter();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return sub_25E71FD9C;
}

id PEPhotoStyleDPad.init(initialValue:defaultValue:gradientCast:configuration:size:onValueChanged:)(void *a1, const void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  memcpy(__dst, a2, sizeof(__dst));
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSize_];
  _s16IntegrationModelCMa_1(0);
  swift_allocObject();
  v20 = v19;
  v21 = a1;

  OUTLINED_FUNCTION_4_4();
  *&v23 = a3;
  *(&v23 + 1) = a4;
  sub_25E721938(0, 0, v21, 0, __dst, *&a9, *&a10, 0, a5, a6, a7, a8, v23, nullsub_1, v24, v25);
  sub_25E71FF2C();

  return v20;
}

uint64_t sub_25E71FF2C()
{

  v0 = sub_25E720F94();
  sub_25E720C34(1, v0, v1);

  v2 = sub_25E71D9EC();
  sub_25E71DA8C(v2, v3);

  v4 = sub_25E71DC50();
  sub_25E71DCF8(v4);

  v5 = sub_25E71DEF4();
  sub_25E71DF9C(v5);

  v6 = sub_25E71E15C();
  sub_25E71E20C(v6);

  sub_25E71EFC0(v11);
  sub_25E71F96C(v11);

  v7 = sub_25E71FBC0();
  sub_25E71FC64(v7, v9, v8 & 1);

  sub_25E71E934();
  sub_25E71F4E4();
}

void __swiftcall PEPhotoStyleDPad.init(size:)(PEPhotoStyleDPad *__return_ptr retstr, CGSize size)
{
  OUTLINED_FUNCTION_8_4();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = OUTLINED_FUNCTION_11_3();

  [v3 v4];
}

id PEPhotoStyleDPad.init(size:)()
{
  v3 = v0;
  OUTLINED_FUNCTION_8_4();
  v4 = _s15IntegrationViewVMa_1(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = qword_27FD03128;
  v11 = *MEMORY[0x277D3AB70];
  if (v10 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &word_27FD03130, sizeof(__dst));
  _s16IntegrationModelCMa_1(0);
  swift_allocObject();
  OUTLINED_FUNCTION_4_4();
  *&v3[OBJC_IVAR___PEPhotoStyleDPad_stylePadModel] = sub_25E721938(0, 0, v11, 0, __dst, 0, 0, 1, 0.0, 0.0, 0.0, 0.0, nullsub_1, nullsub_1, v18, v19);
  OUTLINED_FUNCTION_0_4();
  sub_25E722DE0(v12, v13);

  sub_25E756978();
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04570));
  sub_25E721A74(v9, v7);
  v15 = sub_25E756258();
  sub_25E721AD8(v9);
  *&v3[OBJC_IVAR___PEPhotoStyleDPad_hostingController] = v15;
  v20.receiver = v3;
  v20.super_class = PEPhotoStyleDPad;
  v16 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  PEPhotoStyleDPad.size.setter(v2, v1, 0);
  sub_25E7203BC();

  return v16;
}

void sub_25E7203BC()
{
  v1 = v0;
  v2 = sub_25E756368();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = OBJC_IVAR___PEPhotoStyleDPad_hostingController;
  [v0 addChildViewController_];
  [*&v0[v3] didMoveToParentViewController_];
  v4 = *&v0[v3];
  sub_25E756238();

  v5 = *&v1[v3];
  sub_25E756358();
  sub_25E756228();

  v6 = [*&v1[v3] view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v1 view];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [*&v1[v3] view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  [v9 addSubview_];

  v12 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03BF8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25E75C270;
  v14 = [v7 topAnchor];
  v15 = [v1 view];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v13 + 32) = v18;
  v19 = [v7 bottomAnchor];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v20;
  v22 = [v20 bottomAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v13 + 40) = v23;
  v24 = [v7 leadingAnchor];
  v25 = [v1 view];
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = v25;
  v27 = [v25 leadingAnchor];

  v28 = [v24 constraintEqualToAnchor_];
  *(v13 + 48) = v28;
  v29 = [v7 trailingAnchor];
  v30 = [v1 view];
  if (v30)
  {
    v31 = v30;
    v32 = objc_opt_self();
    v33 = [v31 trailingAnchor];

    v34 = [v29 constraintEqualToAnchor_];
    *(v13 + 56) = v34;
    sub_25E701520(0, &qword_27FD03C00);
    v35 = sub_25E756D38();

    [v32 activateConstraints_];

    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t PEPhotoStyleDPad.withAnimation(duration:_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_25E756348();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25E756B08();
  sub_25E756338();
  v17 = a1;
  v18 = a2;
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a3;
  v13[4] = a4;
  v14 = v4;
  sub_25E71CF9C(a3);
  sub_25E755E68();

  return (*(v10 + 8))(v12, v9);
}

Swift::Void __swiftcall PEPhotoStyleDPad.setValue(_:notifyObserver:)(CGPoint _, Swift::Bool notifyObserver)
{
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_3_0();
  v3 = OUTLINED_FUNCTION_11_3();
  sub_25E720C34(notifyObserver, v3, v4);
}

void sub_25E720C34(char a1, double a2, double a3)
{
  sub_25E720F94();
  if ((sub_25E755988() & 1) == 0 || (sub_25E720F94(), (sub_25E755988() & 1) == 0))
  {
    sub_25E72107C(a2, a3);
    if (a1)
    {
      v6 = sub_25E71E934();
      v6(a2, a3);
    }
  }
}

void sub_25E720D40(uint64_t a1, void (*a2)(void))
{
  PEPhotoStyleDPad.resizeToFitContent()();
  if (a2)
  {
    a2();
  }
}

Swift::Void __swiftcall PEPhotoStyleDPad.resizeToFitContent()()
{
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = [*&v0[OBJC_IVAR___PEPhotoStyleDPad_hostingController] view];
  if (!v1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v2 = v1;
  [v1 intrinsicContentSize];

  [v3 bounds];
  [v3 setBounds_];
}

CGImageRef_optional __swiftcall PEPhotoStyleDPad.generateDottedGridImage()()
{
  OUTLINED_FUNCTION_3_0();
  sub_25E71EFC0(&v9);

  if ((v21 & 0x80000000) == 0)
  {
    return 0;
  }

  v1 = v19;
  v2 = v20;
  v3 = sub_25E7563D8();
  sub_25E755C88();
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  v13 = v1;
  v14 = v2;
  v15 = 0x3FD47AE147AE147BLL;
  v16 = 0;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04580);
  swift_allocObject();
  MEMORY[0x25F8BD570](&v9);
  sub_25E755E28();
  LOBYTE(v9) = 0;
  sub_25E755E18();
  result.value = sub_25E755E08();
  if (result.value)
  {
    value = result.value;

    return value;
  }

  __break(1u);
  return result;
}

double sub_25E720F94()
{
  swift_getKeyPath();
  sub_25E722DE0(&qword_27FD04568, _s16IntegrationModelCMa_1);
  sub_25E755938();

  return *(v0 + 16);
}

void sub_25E72107C(double a1, double a2)
{
  if (*(v2 + 16) == a1 && *(v2 + 24) == a2)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25E721260();
  }
}

BOOL sub_25E721134(uint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    type metadata accessor for CGImage(0);
    sub_25E722DE0(&qword_27FD04678, type metadata accessor for CGImage);
    v3 = sub_25E755A88();
  }

  return (v3 & 1) == 0;
}

BOOL sub_25E7211D4(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_25E701520(0, &qword_27FD03BF0);
    v5 = a1;
    v6 = a2;
    v2 = sub_25E756E48();
  }

  return (v2 & 1) == 0;
}

uint64_t sub_25E721260()
{
  OUTLINED_FUNCTION_0_4();
  sub_25E722DE0(v0, v1);
  return sub_25E755928();
}

uint64_t sub_25E721308(uint64_t result, char a2)
{
  if ((result & 1) != (a2 & 1))
  {
    if (sub_25E71EC24())
    {
      sub_25E756AE8();
      sub_25E755E78();
    }

    if (a2)
    {
      v3 = sub_25E71F434();
    }

    else
    {
      v3 = sub_25E71F7D4();
    }

    v3();
  }

  return result;
}

uint64_t sub_25E7213D0(char a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  v3 = sub_25E71EA30() & 1;

  return sub_25E721308(v2, v3);
}

uint64_t sub_25E721410(char a1)
{
  if (*(v1 + 32) == (a1 & 1))
  {
    v4 = a1 & 1;

    return sub_25E7213D0(v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25E721260();
  }
}

void sub_25E72150C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_25E71DCF8(v1);
}

void sub_25E72153C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  *(a1 + 56) = a2;
  v3 = a2;
}

void sub_25E721570(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_25E71DF9C(v1);
}

void sub_25E7215A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  *(a1 + 64) = a2;
  v3 = a2;
}

void sub_25E721600(uint64_t a1, void *a2)
{
  v2 = *(a1 + 72);
  *(a1 + 72) = a2;
  v3 = a2;
}

void sub_25E721634(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_25E71E548(v1);
}

void sub_25E721664(uint64_t a1, void *a2)
{
  v2 = *(a1 + 80);
  *(a1 + 80) = a2;
  v3 = a2;
}

uint64_t sub_25E721740@<X0>(uint64_t a1@<X8>)
{
  result = sub_25E71FBC0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_25E7217A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 240) = a2;
  *(a1 + 248) = a3;
}

uint64_t sub_25E7217E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 256) = a2;
  *(a1 + 264) = a3;
}

uint64_t sub_25E721820@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X5>, void *a3@<X8>)
{
  v5 = a1();
  v7 = v6;
  OUTLINED_FUNCTION_5_0();
  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 24) = v7;
  *a3 = a2;
  a3[1] = result;
  return result;
}

uint64_t sub_25E721880(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  OUTLINED_FUNCTION_5_0();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return sub_25E71F4E4();
}

uint64_t sub_25E7218FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 272) = a2;
  *(a1 + 280) = a3;
}

uint64_t sub_25E721938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  *(v16 + 32) = 0;
  *(v16 + 80) = 0;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  *(v16 + 216) = 0;
  *(v16 + 224) = 0;
  *(v16 + 232) = 1;
  sub_25E755968();
  *(v16 + 16) = a9;
  *(v16 + 24) = a10;
  *(v16 + 40) = a11;
  *(v16 + 48) = a12;

  *(v16 + 56) = a1;
  *(v16 + 64) = a2;
  *(v16 + 72) = a3;

  *(v16 + 80) = a4;
  memcpy((v16 + 88), a5, 0x80uLL);
  *(v16 + 216) = a6;
  *(v16 + 224) = a7;
  *(v16 + 232) = a8 & 1;
  *(v16 + 240) = a13;
  *(v16 + 256) = a14;
  *(v16 + 272) = a15;
  *(v16 + 280) = a16;
  return v16;
}

uint64_t sub_25E721A74(uint64_t a1, uint64_t a2)
{
  v4 = _s15IntegrationViewVMa_1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E721AD8(uint64_t a1)
{
  v2 = _s15IntegrationViewVMa_1(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id *sub_25E721B9C()
{

  v1 = OBJC_IVAR____TtCE12PhotosUIEditCSo16PEPhotoStyleDPadP33_AA1EE9CF7D273E93D23CCED039C6510B16IntegrationModel___observationRegistrar;
  v2 = sub_25E755978();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_25E721C34()
{
  v0 = sub_25E721B9C();
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_25E721C88(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04630);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  sub_25E756968();
  swift_getKeyPath();
  sub_25E756988();

  v8 = *(v2 + 8);
  v8(v7, v1);
  v16 = v21;
  v17 = v20;
  sub_25E756968();
  swift_getKeyPath();
  sub_25E756988();

  v8(v5, v1);
  v14 = v25;
  v15 = v24;
  v13 = v26;
  sub_25E756958();
  sub_25E71EC24();

  sub_25E756958();
  sub_25E71D9EC();

  sub_25E756958();
  v12[5] = sub_25E71DC50();

  sub_25E756958();
  v12[4] = sub_25E71DEF4();

  sub_25E756958();
  v9 = sub_25E71E15C();
  v10 = PISemanticStyleCast.gradientImageName.getter();
  v12[2] = v11;
  v12[3] = v10;

  sub_25E756958();
  v12[1] = sub_25E71E4A0();

  sub_25E756958();
  sub_25E71EFC0(&v27);

  type metadata accessor for CGPoint(0);
  v23 = 0;
  v22 = 0;
  sub_25E756858();
  v12[0] = v19;
  LOBYTE(v22) = 0;
  sub_25E756858();
  sub_25E755DB8();
  sub_25E6F57D0();
}

uint64_t sub_25E721F94()
{
  sub_25E755DC8();

  sub_25E755DB8();
  sub_25E756AF8();
  sub_25E755DC8();

  v10 = sub_25E755D98();

  *(v0 + 864) = 0;
  sub_25E756958();
  sub_25E71FBC0();

  sub_25E756958();
  sub_25E71FBC0();

  sub_25E756A78();
  sub_25E755D78();
  *(v0 + 888) = *(v0 + 936);
  *(v0 + 904) = *(v0 + 952);
  *(v0 + 920) = *(v0 + 968);
  v11 = *(v0 + 72);
  *(v0 + 96) = *(v0 + 80);
  *(v0 + 104) = v11;
  *(v0 + 112) = v6;
  *(v0 + 120) = v7;
  v12 = *(v0 + 56);
  *(v0 + 128) = *(v0 + 64);
  *(v0 + 136) = v12;
  *(v0 + 144) = *(v0 + 52);
  *(v0 + 145) = v2 & 1;
  *(v0 + 152) = v8;
  *(v0 + 160) = v9;
  *(v0 + 168) = *v0;
  *(v0 + 176) = v1;
  *(v0 + 184) = v3;
  *(v0 + 192) = v4;
  *(v0 + 200) = v5;
  __asm
  {
    FMOV            V0.2D, #-1.0
    FMOV            V1.2D, #1.0
  }

  *(v0 + 208) = _Q0;
  *(v0 + 224) = _Q1;
  v19 = *(v0 + 32);
  *(v0 + 240) = *(v0 + 40);
  *(v0 + 248) = v19;
  v20 = *(v0 + 16);
  *(v0 + 256) = *(v0 + 24);
  *(v0 + 264) = v20;
  *(v0 + 272) = *(v0 + 8);
  memcpy((v0 + 280), (v0 + 984), 0x80uLL);
  *(v0 + 408) = v10;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  v21 = *(v0 + 898);
  *(v0 + 426) = *(v0 + 882);
  *(v0 + 442) = v21;
  *(v0 + 458) = *(v0 + 914);
  *(v0 + 472) = *(v0 + 928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04650);
  sub_25E722A20();
  sub_25E7565F8();
  memcpy((v0 + 480), (v0 + 96), 0x180uLL);
  return sub_25E722B8C(v0 + 480);
}

void __swiftcall PEPhotoStyleDPad.init(nibName:bundle:)(PEPhotoStyleDPad *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_25E756C98();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id keypath_get_1Tm(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_23_0(a1);
  result = [v2 *v3];
  *v1 = v5;
  v1[1] = v6;
  return result;
}

uint64_t sub_25E722330()
{
  result = sub_25E755978();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25E72250C(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + qword_27FD045A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - v5, a1, v3);
  v6 = sub_25E756258();
  (*(v4 + 8))(a1, v3);
  return v6;
}

void *sub_25E722674(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + qword_27FD045A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = sub_25E756248();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_25E7227AC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PadHostingController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_25E722884()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PadHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25E722940()
{
  sub_25E7229AC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25E7229AC()
{
  if (!qword_27FD04648)
  {
    _s16IntegrationModelCMa_1(255);
    v0 = sub_25E756998();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD04648);
    }
  }
}

unint64_t sub_25E722A20()
{
  result = qword_27FD04658;
  if (!qword_27FD04658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD04650);
    sub_25E722AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04658);
  }

  return result;
}

unint64_t sub_25E722AAC()
{
  result = qword_27FD04660;
  if (!qword_27FD04660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD04668);
    sub_25E722B38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04660);
  }

  return result;
}

unint64_t sub_25E722B38()
{
  result = qword_27FD04670;
  if (!qword_27FD04670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD04670);
  }

  return result;
}

uint64_t sub_25E722B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_25E722D04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  *(v1 + 216) = result;
  *(v1 + 232) = v2;
  return result;
}

uint64_t sub_25E722D8C(double a1, double a2)
{
  v3 = *(v2 + 16);
  *v5 = a1;
  *&v5[1] = a2;
  return v3(v5);
}

uint64_t sub_25E722DE0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_25E722E7C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

__n128 sub_25E722E8C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return PEPhotoStyleDPad.withAnimation(duration:_:completion:)(v9, &a9, 0, 0);
}

void sub_25E724E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E726DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PECopyEditsSettingIdentifierName(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"PECopyEditsSettingIdentifierCinematic";
  }

  else
  {
    return off_279A30190[a1 - 1];
  }
}

void sub_25E72EF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E72FE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_25E731ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVNSceneprintClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNSceneprintClass_softClass;
  v7 = getVNSceneprintClass_softClass;
  if (!getVNSceneprintClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getVNSceneprintClass_block_invoke;
    v3[3] = &unk_279A304A0;
    v3[4] = &v4;
    __getVNSceneprintClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25E7332A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNSceneprintClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __VisionLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279A304C0;
    v8 = 0;
    VisionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VisionLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *VisionLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PEEditAction.m" lineNumber:53 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("VNSceneprint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getVNSceneprintClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PEEditAction.m" lineNumber:54 description:{@"Unable to find class %s", "VNSceneprint"}];

LABEL_10:
    __break(1u);
  }

  getVNSceneprintClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary = result;
  return result;
}

double PEExteriorAngleSum(void *a1)
{
  v1 = a1;
  v2 = 0.0;
  if ([v1 pointCount] >= 3)
  {
    v3 = 1;
    do
    {
      [v1 pointAtIndex:v3 - 1];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      [v1 pointAtIndex:v3];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [v1 pointAtIndex:++v3];
      LODWORD(v16) = v9;
      LODWORD(v17) = v15;
      v2 = v2 + PESignedAngleBetweenPoints(v5, v7, v16, v11, v13, v17, v20, v21, v18, v19);
    }

    while ([v1 pointCount] - 1 > v3);
  }

  return v2;
}

double PESignedAngleBetweenPoints(float a1, float a2, double a3, float a4, float a5, double a6, double a7, double a8, float a9, float a10)
{
  v15 = (a4 - a1);
  v16 = (a5 - a2);
  v17 = (a9 - a4);
  v18 = (a10 - a5);
  v19 = sqrt(v16 * v16 + v15 * v15);
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  if (v19 >= 0.00001)
  {
    v22 = 1.0 / v19 * v15;
    v21 = 1.0 / v19 * v16;
  }

  v23 = sqrt(v18 * v18 + v17 * v17);
  v24 = 0.0;
  if (v23 >= 0.00001)
  {
    v24 = 1.0 / v23 * v17;
    v20 = 1.0 / v23 * v18;
  }

  return atan2(v24 * v21 - v20 * v22, v21 * v20 + v24 * v22);
}

id thresholdImage(void *a1, float a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBF738];
  v4 = a1;
  v5 = [v3 cachedKernelWithString:{@"kernel vec4 PECleanupSegmentAnalyzerColorThreshold(__sample c, float t) { c = compare(c - t, vec4(0.0), vec4(1.0)) return c; }"}];;
  [v4 extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v18[0] = v4;
  *&v6 = a2;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

  v16 = [v5 applyWithExtent:v15 arguments:{v7, v9, v11, v13}];

  return v16;
}

double PEVectorNormalize(double a1, double a2)
{
  v2 = sqrt(a2 * a2 + a1 * a1);
  v3 = 0.0;
  if (v2 >= 0.00001)
  {
    return a1 * (1.0 / v2);
  }

  return v3;
}

id PELocalizedString(void *a1)
{
  v1 = a1;
  if (PELocalizedString_once != -1)
  {
    dispatch_once(&PELocalizedString_once, &__block_literal_global_713);
  }

  v2 = [PELocalizedString_frameworkBundle localizedStringForKey:v1 value:&stru_2870659C0 table:@"PhotosUIEdit"];
  if ([v2 isEqualToString:v1])
  {
    v3 = [PELocalizedString_frameworkBundle localizedStringForKey:v1 value:&stru_2870659C0 table:@"PhotosUIEdit-Styles"];

    v2 = v3;
  }

  if ([v2 isEqualToString:v1])
  {
    v4 = [PELocalizedString_frameworkBundle localizedStringForKey:v1 value:&stru_2870659C0 table:@"PhotosUIEdit-Cleanup"];

    v2 = v4;
  }

  if ([v2 isEqualToString:v1])
  {
    v5 = [PELocalizedString_frameworkBundle localizedStringForKey:v1 value:&stru_2870659C0 table:@"PhotosUIEdit-4K120"];

    v2 = v5;
  }

  if ([v2 isEqualToString:v1])
  {
    v6 = [PELocalizedString_frameworkBundle localizedStringForKey:v1 value:&stru_2870659C0 table:@"PhotosUIEdit-SpatialAudio"];

    v2 = v6;
  }

  if ([v2 isEqualToString:v1])
  {
    v7 = [PELocalizedString_frameworkBundle localizedStringForKey:v1 value:&stru_2870659C0 table:@"PhotosUIEdit-Styles-BP"];

    v2 = v7;
  }

  return v2;
}

uint64_t __PELocalizedString_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = PELocalizedString_frameworkBundle;
  PELocalizedString_frameworkBundle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id PEStringWithValidatedFormat()
{
  v0 = PFStringWithValidatedFormatAndLocale();

  return v0;
}

id PELocalizedStringWithValidatedFormat(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEAF8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 currentLocale];
  v7 = PFStringWithValidatedFormatAndLocale();

  return v7;
}

__CFString *PEEditActionTypeString(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_279A30810[a1 - 1];
  }
}

__CFString *PESCAPReviewFallbackReasonString(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_279A308C0[a1 - 1];
  }
}

__CFString *PESCAPActionTypeString(uint64_t a1)
{
  if (a1)
  {
    return @"Smart C&P";
  }

  else
  {
    return @"Legacy C&P";
  }
}

void sub_25E742538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25E743468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1609(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2266(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E74710C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_25E748440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose((v71 - 224), 8);
  _Block_object_dispose((v71 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_25E74A498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2457(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E74AE7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_25E74B284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_25E74B9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id location, char a49)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_25E74C58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E74D568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2556(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PECanRenderPortrait()
{
  if (PECanRenderPortrait_onceToken != -1)
  {
    dispatch_once(&PECanRenderPortrait_onceToken, &__block_literal_global_210);
  }

  return PECanRenderPortrait_canRenderPortrait;
}

void __PECanRenderPortrait_block_invoke()
{
  v0 = MTLCreateSystemDefaultDevice();
  PECanRenderPortrait_canRenderPortrait = [v0 supportsFeatureSet:1];
}

__CFString *PEPhotoEditSessionEndString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Saved";
  }

  else
  {
    return off_279A31388[a1 - 1];
  }
}

__CFString *PEPhotoEditSessionEntryPointString(uint64_t a1)
{
  v1 = @"1UPButton";
  if (a1 == 1)
  {
    v1 = @"1UPQuickCrop";
  }

  if (a1 == 2)
  {
    return @"Arrowing";
  }

  else
  {
    return v1;
  }
}

__CFString *PEPhotoEditSessionSaveActionTypeString(uint64_t a1)
{
  v1 = @"Save";
  if (a1 == 2)
  {
    v1 = @"SaveAsDuplicate";
  }

  if (a1 == 1)
  {
    return @"SaveAsNewClip";
  }

  else
  {
    return v1;
  }
}

uint64_t __Block_byref_object_copy__3065(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PEAdjustmentCanApplyAdjustments(void *a1, void *a2, void *a3)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a2;
  v35 = v5;
  if (![v4 count])
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL PEAdjustmentCanApplyAdjustments(NSArray<id<PEAdjustment>> *__strong _Nonnull, NSArray<PHAsset *> *__strong _Nonnull, NSError *__autoreleasing * _Nullable)"}];
    [v27 handleFailureInFunction:v28 file:@"PEAdjustment.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"adjustments.count"}];

    v5 = v35;
  }

  if (![v5 count])
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL PEAdjustmentCanApplyAdjustments(NSArray<id<PEAdjustment>> *__strong _Nonnull, NSArray<PHAsset *> *__strong _Nonnull, NSError *__autoreleasing * _Nullable)"}];
    [v29 handleFailureInFunction:v30 file:@"PEAdjustment.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"assets.count"}];

    v5 = v35;
  }

  v33 = objc_alloc_init(PEResourceManager);
  v6 = 0;
  if ([v5 count])
  {
    v36 = 0;
    v32 = *MEMORY[0x277CCA068];
    do
    {
      v7 = [v5 objectAtIndexedSubscript:v36];
      v48 = 0;
      v49 = &v48;
      v50 = 0x3032000000;
      v51 = __Block_byref_object_copy__3117;
      v52 = __Block_byref_object_dispose__3118;
      v53 = 0;
      v42 = 0;
      v43 = &v42;
      v44 = 0x3032000000;
      v45 = __Block_byref_object_copy__3117;
      v46 = __Block_byref_object_dispose__3118;
      v47 = 0;
      v8 = dispatch_group_create();
      dispatch_group_enter(v8);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __PEAdjustmentCanApplyAdjustments_block_invoke_2;
      v38[3] = &unk_279A31628;
      v40 = &v48;
      v41 = &v42;
      v9 = v8;
      v39 = v9;
      [(PEResourceManager *)v33 loadResourceForAsset:v7 requireLocalResources:0 forceRunAsUnadjustedAsset:0 progressHandler:&__block_literal_global_3119 resultHandler:v38];
      v10 = dispatch_time(0, 120000000000);
      v34 = dispatch_group_wait(v9, v10);
      if (v34)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [v7 uuid];
        v13 = [v11 stringWithFormat:@"Timed out loading edit resources for asset: %@", v12];

        v14 = MEMORY[0x277CCA9B8];
        v54 = v32;
        v55[0] = v13;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
        v16 = [v14 errorWithDomain:@"PEAdjustmentErrorDomain" code:1 userInfo:v15];
LABEL_9:

        v17 = 0;
        v6 = v16;
      }

      else
      {
        for (i = 0; i < [v4 count]; ++i)
        {
          v13 = [v4 objectAtIndexedSubscript:i];
          if (objc_opt_respondsToSelector())
          {
            v15 = objc_alloc_init(PEValuesCalculator);
            [(PEValuesCalculator *)v15 setEditSource:v49[5]];
            [(PEValuesCalculator *)v15 setCompositionController:v43[5]];
            v19 = v43[5];
            v37 = 0;
            v20 = [v13 canApplyToCompositionController:v19 valuesCalculator:v15 asset:v7 error:&v37];
            v21 = v37;
            v16 = v21;
            if (!v20)
            {
              goto LABEL_9;
            }
          }
        }

        v17 = 1;
      }

      _Block_object_dispose(&v42, 8);
      _Block_object_dispose(&v48, 8);

      if (v34)
      {
        break;
      }

      v22 = [v35 count];
      v5 = v35;
      ++v36;
      v23 = v17 ^ 1;
      if (v36 >= v22)
      {
        v23 = 1;
      }
    }

    while ((v23 & 1) == 0);
    if (a3)
    {
      v24 = v17;
    }

    else
    {
      v24 = 1;
    }

    if ((v24 & 1) == 0)
    {
      v25 = v6;
      v17 = 0;
      *a3 = v6;
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

void sub_25E7557E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3117(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PEAdjustmentCanApplyAdjustments_block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 editSource];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 compositionController];

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = a1[4];

  dispatch_group_leave(v10);
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}