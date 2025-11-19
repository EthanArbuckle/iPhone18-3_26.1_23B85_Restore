uint64_t sub_2744111B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_27463918C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  sub_27463B0CC();
  sub_2746392FC();
  v9 = v25;
  v22 = v26;
  v23 = v24;
  v10 = v27;
  v20 = v29;
  v21 = v28;
  v11 = sub_27463A31C();
  sub_27440F938(v8);
  (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v2);
  sub_27463917C();
  v12 = *(v3 + 8);
  v12(v6, v2);
  v12(v8, v2);
  result = sub_2746390AC();
  *a1 = 0;
  *(a1 + 8) = 1;
  v14 = v22;
  *(a1 + 16) = v23;
  *(a1 + 24) = v9;
  *(a1 + 32) = v14;
  *(a1 + 40) = v10;
  v15 = v20;
  *(a1 + 48) = v21;
  *(a1 + 56) = v15;
  *(a1 + 64) = 0x3FB999999999999ALL;
  *(a1 + 72) = v11;
  *(a1 + 80) = v16;
  *(a1 + 88) = v17;
  *(a1 + 96) = v18;
  *(a1 + 104) = v19;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_2744113B8@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v135 = a2;
  v144 = a3;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F50);
  MEMORY[0x28223BE20](v143);
  v125 = &v122 - v4;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F58);
  v5 = MEMORY[0x28223BE20](v131);
  v132 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v139 = &v122 - v7;
  v8 = type metadata accessor for WorkflowOutputPreviewView();
  v123 = *(v8 - 8);
  v9 = *(v123 + 64);
  MEMORY[0x28223BE20](v8);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F60);
  MEMORY[0x28223BE20](v136);
  v128 = &v122 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F68);
  v133 = *(v11 - 8);
  v134 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v130 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v138 = &v122 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F70);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v129 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v146 = &v122 - v18;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F78);
  MEMORY[0x28223BE20](v140);
  v142 = &v122 - v19;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F80);
  MEMORY[0x28223BE20](v141);
  v127 = &v122 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F88);
  MEMORY[0x28223BE20](v21 - 8);
  v137 = sub_274638ABC();
  v126 = *(v137 - 8);
  v22 = MEMORY[0x28223BE20](v137);
  v124 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v145 = &v122 - v24;
  v25 = sub_274638C1C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 104))(v28, *MEMORY[0x277D79BD0], v25);
  v29 = sub_274638C0C();
  (*(v26 + 8))(v28, v25);
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FE0);
    v30 = sub_2746389EC();
    v31 = *(v30 - 8);
    v32 = *(v31 + 72);
    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_2746486A0;
    v35 = v34 + v33;
    v36 = *(v31 + 104);
    v36(v35, *MEMORY[0x277D7D3F8], v30);
    v36(v35 + v32, *MEMORY[0x277D7D400], v30);
    v37 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0);
    sub_27463AD0C();
    sub_274638AAC();
    sub_27463B70C();
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v38 = qword_28094BB00;
    v39 = sub_27463B66C();
    v40 = sub_27463B66C();

    v41 = [v38 localizedStringForKey:v39 value:v40 table:0];

    sub_27463B6AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_274648570;
    v43 = [v37 items];
    sub_274412734(0, &qword_280949F00);
    v44 = sub_27463B81C();

    v45 = sub_274453594(v44);

    v46 = MEMORY[0x277D83C10];
    *(v42 + 56) = MEMORY[0x277D83B88];
    *(v42 + 64) = v46;
    *(v42 + 32) = v45;
    v47 = sub_27463B67C();
    v49 = v48;

    v152[0] = v47;
    v152[1] = v49;
    sub_274412BBC();
    v50 = sub_27463A53C();
    v52 = v51;
    LOBYTE(v49) = v53;
    sub_27463ABCC();
    v54 = sub_27463A4DC();
    v56 = v55;
    v58 = v57;
    v60 = v59;

    sub_274412C10(v50, v52, v49 & 1);

    LOBYTE(v50) = sub_27463A37C();
    sub_2746390AC();
    v148[0] = v58 & 1;
    v147[0] = 0;
    v150[0] = v54;
    v150[1] = v56;
    LOBYTE(v150[2]) = v58 & 1;
    *(&v150[2] + 1) = v152[0];
    HIDWORD(v150[2]) = *(v152 + 3);
    v150[3] = v60;
    LOBYTE(v150[4]) = v50;
    *(&v150[4] + 1) = __dst[0];
    HIDWORD(v150[4]) = *(__dst + 3);
    v150[5] = v61;
    v150[6] = v62;
    v150[7] = v63;
    v150[8] = v64;
    LOBYTE(v150[9]) = 0;
    v65 = v126;
    v66 = *(v126 + 16);
    v67 = v124;
    v68 = v137;
    v66(v124, v145, v137);
    v149 = 1;
    memcpy(v148, v150, sizeof(v148));
    v69 = v127;
    v66(v127, v67, v68);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FE8);
    v71 = v69 + *(v70 + 48);
    v72 = v149;
    *v71 = 0;
    *(v71 + 8) = v72;
    v73 = *(v70 + 64);
    memcpy(__dst, v148, 0x49uLL);
    memcpy((v69 + v73), v148, 0x49uLL);
    memcpy(v152, v148, 0x49uLL);
    sub_274412C20(v150, v147, &qword_280949FF0);
    sub_274412C20(__dst, v147, &qword_280949FF0);
    sub_27440CB1C(v152, &qword_280949FF0);
    v74 = *(v65 + 8);
    v74(v67, v68);
    sub_274412C20(v69, v142, &qword_280949F80);
    swift_storeEnumTagMultiPayload();
    sub_27440CA78(&qword_280949FD0, &qword_280949F80);
    sub_27440CA78(&qword_280949FD8, &qword_280949F50);
    sub_274639DDC();
    sub_27440CB1C(v150, &qword_280949FF0);
    sub_27440CB1C(v69, &qword_280949F80);
    return (v74)(v145, v68);
  }

  else
  {
    v76 = *a1;
    v77 = [*a1 items];
    sub_274412734(0, &qword_280949F00);
    v78 = sub_27463B81C();

    v79 = sub_274453594(v78);

    if (v79 < 2)
    {
      v82 = 1;
      v81 = v146;
    }

    else
    {
      v80 = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0);
      sub_27463AD0C();
      sub_2746389DC();
      v81 = v146;
      sub_274638AAC();
      v82 = 0;
    }

    v83 = v135;
    v84 = v128;
    __swift_storeEnumTagSinglePayload(v81, v82, 1, v137);
    sub_2744127F8(a1, &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v85 = (*(v123 + 80) + 16) & ~*(v123 + 80);
    v86 = swift_allocObject();
    sub_27441285C(&v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v86 + v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F90);
    sub_274412920();
    sub_27463AD5C();
    KeyPath = swift_getKeyPath();
    v88 = swift_allocObject();
    *(v88 + 16) = v83 == 0;
    v89 = (v84 + *(v136 + 36));
    *v89 = KeyPath;
    v89[1] = sub_274412AC8;
    v89[2] = v88;
    if (v83)
    {
      v90 = v83;
      sub_27463B70C();
      if (qword_2809492C0 != -1)
      {
        swift_once();
      }

      v91 = qword_28094BB00;
      v92 = sub_27463B66C();
      v93 = sub_27463B66C();

      v94 = [v91 localizedStringForKey:v92 value:v93 table:0];

      sub_27463B6AC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_274648570;
      v96 = [v90 name];
      v97 = sub_27463B6AC();
      v99 = v98;

      *(v95 + 56) = MEMORY[0x277D837D0];
      *(v95 + 64) = sub_27440F250();
      *(v95 + 32) = v97;
      *(v95 + 40) = v99;
      v100 = sub_27463B67C();
      v102 = v101;

      v83 = v135;
    }

    else
    {
      v100 = 0;
      v102 = 0xE000000000000000;
    }

    v152[0] = v100;
    v152[1] = v102;
    sub_274412AD8();
    sub_274412BBC();
    v103 = v138;
    sub_27463A8DC();

    sub_27440CB1C(v84, &qword_280949F60);
    v104 = v83;
    v105 = v139;
    sub_27463870C();
    v106 = sub_27463A35C();
    sub_2746390AC();
    v107 = v105 + *(v131 + 36);
    *v107 = v106;
    *(v107 + 8) = v108;
    *(v107 + 16) = v109;
    *(v107 + 24) = v110;
    *(v107 + 32) = v111;
    *(v107 + 40) = 0;
    v112 = v129;
    sub_274412C20(v146, v129, &qword_280949F70);
    v113 = v133;
    v114 = v134;
    v115 = *(v133 + 16);
    v116 = v130;
    v115(v130, v103, v134);
    v117 = v132;
    sub_274412C20(v105, v132, &qword_280949F58);
    v118 = v125;
    sub_274412C20(v112, v125, &qword_280949F70);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FC8);
    v120 = v118 + v119[12];
    *v120 = 0;
    *(v120 + 8) = 1;
    v115((v118 + v119[16]), v116, v114);
    sub_274412C20(v117, v118 + v119[20], &qword_280949F58);
    sub_27440CB1C(v117, &qword_280949F58);
    v121 = *(v113 + 8);
    v121(v116, v114);
    sub_27440CB1C(v112, &qword_280949F70);
    sub_274412C20(v118, v142, &qword_280949F50);
    swift_storeEnumTagMultiPayload();
    sub_27440CA78(&qword_280949FD0, &qword_280949F80);
    sub_27440CA78(&qword_280949FD8, &qword_280949F50);
    sub_274639DDC();
    sub_27440CB1C(v118, &qword_280949F50);
    sub_27440CB1C(v139, &qword_280949F58);
    v121(v138, v114);
    return sub_27440CB1C(v146, &qword_280949F70);
  }
}

uint64_t sub_2744124B0(id *a1)
{
  v1 = [*a1 items];
  sub_274412734(0, &qword_280949F00);
  v2 = sub_27463B81C();

  type metadata accessor for WorkflowOutputPreviewView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A000);
  sub_27463ACEC();
  sub_2744535A4(v5, (v2 & 0xC000000000000001) == 0);
  if ((v2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x277C58B20](v5, v2);
  }

  else
  {
    v3 = *(v2 + 8 * v5 + 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A008);
  return sub_27463ACFC();
}

double sub_2744125E0@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FF8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_27463AC2C();
  v6 = [objc_opt_self() defaultMetrics];
  [v6 scaledValueForValue_];

  v7 = sub_27463A3BC();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
  v8 = sub_27463A40C();
  sub_27440CB1C(v4, &qword_280949FF8);
  KeyPath = swift_getKeyPath();
  *a1 = v5;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v8;
  result = 0.0;
  *(a1 + 24) = xmmword_2746486B0;
  return result;
}

uint64_t sub_274412734(uint64_t a1, unint64_t *a2)
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

uint64_t sub_27441277C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_2_0(a1, a2, a3);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_5_0();
  v5(v4);
  return v3;
}

uint64_t sub_2744127F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkflowOutputPreviewView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27441285C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkflowOutputPreviewView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2744128C0()
{
  v1 = *(type metadata accessor for WorkflowOutputPreviewView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_2744124B0(v2);
}

unint64_t sub_274412920()
{
  result = qword_280949F98;
  if (!qword_280949F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949F90);
    sub_2744129AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949F98);
  }

  return result;
}

unint64_t sub_2744129AC()
{
  result = qword_28094A9F0;
  if (!qword_28094A9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949FA0);
    sub_27440CA78(&unk_28094AA00, &qword_28094CC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A9F0);
  }

  return result;
}

uint64_t sub_274412A64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274639A6C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_274412AD8()
{
  result = qword_280949FA8;
  if (!qword_280949FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949F60);
    sub_27440CA78(&qword_280949FB0, &qword_280949FB8);
    sub_27440CA78(&unk_28094C740, &qword_280949FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949FA8);
  }

  return result;
}

unint64_t sub_274412BBC()
{
  result = qword_28094B3E0;
  if (!qword_28094B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B3E0);
  }

  return result;
}

uint64_t sub_274412C10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_274412C20(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_2_0(a1, a2, a3);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_5_0();
  v5(v4);
  return v3;
}

uint64_t sub_274412C6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_274412CB4()
{
  result = qword_28094A048;
  if (!qword_28094A048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A010);
    sub_274412D6C();
    sub_27440CA78(&qword_28094A058, &qword_28094A060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A048);
  }

  return result;
}

unint64_t sub_274412D6C()
{
  result = qword_28094A050;
  if (!qword_28094A050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A030);
    sub_274638A2C();
    sub_274412C6C(&qword_28094A028, MEMORY[0x277D7D428]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A050);
  }

  return result;
}

uint64_t sub_274412E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

id sub_274412F10()
{
  sub_274413030();
  sub_27463B6AC();
  v0 = sub_274595918();
  v1 = sub_2746386DC();
  OUTLINED_FUNCTION_0_1();

  v2 = sub_27463B95C();
  OUTLINED_FUNCTION_0_1();

  v3 = sub_27463B95C();
  OUTLINED_FUNCTION_0_1();

  v4 = sub_27463B66C();
  [v0 setValue:v4 forKey:*MEMORY[0x277CDA4E8]];

  v5 = sub_27463B66C();
  OUTLINED_FUNCTION_0_1();

  return v0;
}

unint64_t sub_274413030()
{
  result = qword_2809525F0;
  if (!qword_2809525F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809525F0);
  }

  return result;
}

id OUTLINED_FUNCTION_0_1()
{

  return [v0 (v2 + 3192)];
}

uint64_t sub_274413090()
{
  swift_unknownObjectWeakInit();

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2744130C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_280949288 != -1)
  {
    swift_once();
  }

  return sub_274413224(&unk_28094A080, a1);
}

uint64_t EnvironmentValues.auxiliaryViewPresenter.getter()
{
  sub_27441317C();

  return sub_274639ACC();
}

unint64_t sub_27441317C()
{
  result = qword_28094A088;
  if (!qword_28094A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A088);
  }

  return result;
}

uint64_t EnvironmentValues.auxiliaryViewPresenter.setter(uint64_t a1)
{
  sub_274413224(a1, v3);
  sub_27441317C();
  sub_274639ADC();
  return sub_274413294(a1);
}

uint64_t sub_274413224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A0F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274413294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A0F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*EnvironmentValues.auxiliaryViewPresenter.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v3[4] = sub_27441317C();
  sub_274639ACC();
  return sub_274413378;
}

void sub_274413378(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_274413224(*a1, v2 + 8);
    sub_274413224(v2 + 8, v2 + 16);
    sub_274639ADC();
    sub_274413294(v2 + 8);
  }

  else
  {
    sub_274413224(*a1, v2 + 8);
    sub_274639ADC();
  }

  sub_274413294(v2);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_2744134D4()
{
  v0 = sub_27441363C();
  sub_27463BF8C();
}

BOOL sub_27441352C()
{
  v0 = sub_27441363C();
  v1 = sub_27441363C();

  return v0 == v1;
}

uint64_t sub_27441357C()
{
  sub_27463C74C();
  sub_2744134D4();
  return sub_27463C7AC();
}

uint64_t sub_2744135EC()
{
  sub_27463C74C();
  sub_2744134D4();
  return sub_27463C7AC();
}

id sub_27441364C()
{
  [*&v0[qword_28094A100] removeEventObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParameterObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27441370C()
{
  type metadata accessor for ParameterObserver();
  swift_getWitnessTable();
  sub_274638EFC();
  sub_274638F3C();
}

void sub_27441379C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_27441370C();
}

uint64_t sub_274413870()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2744138B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2744138F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_274413968@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ParameterObserver();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

uint64_t sub_2744139D8()
{
  static WFRegexFieldParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_274413A00(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for RegexFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v6, sel_textEntryWillBegin_allowMultipleLines_, a1, a2);
  sub_274413CC4();
  v5 = [v2 parameter];
  [v5 addEventObserver_];
}

void sub_274413B04(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RegexFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v3, sel_textEntryTextDidChange_, a1);
  sub_274413CC4();
}

id sub_274413BBC()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RegexFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v4, sel_textEntryDidFinish);
  v1 = [v0 parameter];
  [v1 removeEventObserver_];

  result = [v0 variableUIDelegate];
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector_])
    {
      [v3 showParameterEditingHint_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_274413CC4()
{
  v1 = v0;
  v15 = [v0 parameter];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = v2, (v4 = [v1 currentState]) == 0))
  {
    v10 = v15;
LABEL_6:

    return;
  }

  v5 = v4;
  v6 = [v3 hintForState_];
  if (v6)
  {
    v7 = v6;
    sub_27463B6AC();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v11 = [v1 variableUIDelegate];
  if (v11)
  {
    v12 = v11;
    if ([v11 respondsToSelector_])
    {
      if (v9)
      {
        v13 = sub_27463B66C();
      }

      else
      {
        v13 = 0;
      }

      [v12 showParameterEditingHint_];

      swift_unknownObjectRelease();
      v10 = v14;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_274413EF0(void *a1, uint64_t a2, char a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for RegexFieldParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_274413FA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RegexFieldParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_274413FD8(void *a1)
{
  v2 = *(*(v1 + 8) + qword_28094A100);
  sub_274414140();
  v4 = v3;

  v5 = 0;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_10:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(v4 + 48) + ((v10 << 8) | (4 * v11)));
    if ([a1 hasValueForPropertyID_])
    {
      [a1 contactWithPropertyID:v12 multivalueIndex:0];

      return;
    }
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v4 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_10;
    }
  }

  v13 = a1;
}

void sub_274414140()
{
  v1 = sub_274415114(v0);
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = *(v1 + 16);
    v25 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v4 == v3)
      {

        break;
      }

      v5 = v3;
      if (v3 >= *(v2 + 16))
      {
        __break(1u);
        return;
      }

      v6 = *(v2 + 8 * v3 + 32);
      v7 = sub_27463B6AC();
      v9 = v8;
      if (v7 == sub_27463B6AC() && v9 == v10)
      {

LABEL_18:
        v20 = 4;
        goto LABEL_21;
      }

      v12 = sub_27463C6BC();
      v13 = v6;

      if (v12)
      {

        goto LABEL_18;
      }

      v14 = sub_27463B6AC();
      v16 = v15;
      if (v14 == sub_27463B6AC() && v16 == v17)
      {

LABEL_20:
        v20 = 3;
LABEL_21:
        v21 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_27444FCA8();
          v21 = v23;
        }

        v22 = *(v21 + 16);
        if (v22 >= *(v21 + 24) >> 1)
        {
          sub_27444FCA8();
          v21 = v24;
        }

        v3 = v5 + 1;
        *(v21 + 16) = v22 + 1;
        v25 = v21;
        *(v21 + 4 * v22 + 32) = v20;
      }

      else
      {
        v19 = sub_27463C6BC();

        v3 = v5 + 1;
        if (v19)
        {
          goto LABEL_20;
        }
      }
    }
  }

  sub_2745E1824();
}

void sub_274414380(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_opt_self() contactWithCNContact_];
  sub_274413FD8(v3);
  v5 = v4;

  v6 = [objc_allocWithZone(MEMORY[0x277CFC2C0]) initWithContact_];
  *a2 = v6;
}

uint64_t sub_274414414(void *a1)
{
  v2 = v1;
  v4 = sub_2746396DC();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = v1[2];
  v11 = v1[4];
  v47 = v1[3];
  v48 = v10;
  v50 = v10;
  v51 = v47;
  v52 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C1D0);
  MEMORY[0x277C575F0](&v53);
  if (!v53 || (v13 = sub_2745DDBAC(v53)) == 0 || (v14 = sub_2745DBE3C(v13), , !v14))
  {

    v14 = MEMORY[0x277D84F90];
  }

  v53 = v14;
  v15 = v2[1];
  v16 = qword_28094A100;
  if (![*(v15 + qword_28094A100) allowsMultipleValues])
  {

    v53 = a1;

    goto LABEL_20;
  }

  v17 = v2[5];
  if (!v17)
  {
LABEL_19:

    sub_27445BBD0(v33);
    goto LABEL_20;
  }

  v45 = v12;
  v46 = v11;
  v18 = v7;
  v44 = v9;
  v19 = v17;
  v20 = [v19 arrayIndex];
  if (v20 >= sub_274453594(v14))
  {

    v7 = v18;
    v11 = v46;
    v9 = v44;
    goto LABEL_19;
  }

  v43 = v19;
  v21 = [v19 arrayIndex];
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  v41 = v18;
  v42 = v6;
  if (!result || v14 < 0 || (v14 & 0x4000000000000000) != 0)
  {
    result = sub_27453BA6C(v14);
    v14 = result;
  }

  v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v11 = v46;
  if (v21 >= v23)
  {
    __break(1u);
    goto LABEL_32;
  }

  v24 = v23 - 1;
  v25 = v23 - 1 - v21;
  v26 = (v14 & 0xFFFFFFFFFFFFFF8) + 8 * v21;
  v27 = *(v26 + 0x20);
  sub_274453590((v26 + 40), v25, (v26 + 32));
  *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = v24;

  v53 = v14;

  v28 = v43;
  result = [v43 arrayIndex];
  if (result < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v29 = result;
  result = sub_274453594(v14);
  if (result < v29)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v30 = sub_274453594(a1);
  v31 = sub_274453594(v14);
  v32 = __OFADD__(v31, v30);
  result = v31 + v30;
  if (v32)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  sub_274547EA4(result, 1);
  sub_274546BBC();

  v7 = v41;
  v9 = v44;
LABEL_20:
  [*(v15 + v16) multipleStateClass];
  swift_getObjCClassMetadata();
  sub_274412734(0, &unk_28094A220);
  v34 = swift_dynamicCastMetatype();
  v35 = v53;
  if (v34)
  {

    if (v35 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50);
      sub_27463C57C();
    }

    else
    {
      sub_27463C6CC();
    }

    v36 = sub_274467468();
  }

  else
  {

    v36 = 0;
  }

  v50 = v48;
  v51 = v47;
  v52 = v11;
  v49 = v36;
  sub_27463AEBC();
  v37 = v2[6];
  if (v37)
  {

    v37(v38);
    return sub_274406A94(v37);
  }

  else
  {
    sub_2745DC2EC();
    if (v39)
    {
      v39();
    }

    else
    {
      sub_2745DC448(v9);
      MEMORY[0x277C575F0](v7);
      sub_2746396CC();
      sub_27463AEBC();
      return sub_274415174(v9, &unk_28094A210);
    }
  }
}

uint64_t sub_27441489C(void *a1)
{
  if (![a1 value])
  {
    memset(v43, 0, sizeof(v43));
    sub_274415174(v43, &unk_28094A230);
    return 0;
  }

  sub_27463C13C();
  swift_unknownObjectRelease();
  sub_274415174(v43, &unk_28094A230);
  v3 = sub_274415114(v1);
  if (!v3)
  {
    return v3;
  }

  v4 = sub_274637CAC();
  *&v43[0] = *MEMORY[0x277D7CBF8];
  MEMORY[0x28223BE20](v4);
  v5 = sub_27446EC04();
  v6 = &selRef_maximumDate;
  if ((v5 & 1) == 0)
  {
    goto LABEL_27;
  }

  if ([a1 value])
  {
    sub_27463C13C();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_2_1();
  }

  OUTLINED_FUNCTION_1_1();
  if (!v7)
  {
    goto LABEL_26;
  }

  sub_274412734(0, qword_28094A248);
  v5 = OUTLINED_FUNCTION_0_2();
  if ((v5 & 1) == 0)
  {
    goto LABEL_27;
  }

  v8 = [a1 contact];
  v9 = [a1 key];
  if (!v9)
  {
    sub_27463B6AC();
    v9 = sub_27463B66C();
  }

  v10 = [v8 valueForKey_];

  if (v10)
  {
    sub_27463C13C();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_2_1();
  }

  v6 = &selRef_maximumDate;
  OUTLINED_FUNCTION_1_1();
  if (!v11)
  {

LABEL_26:
    v5 = sub_274415174(v43, &unk_28094A230);
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A240);
  if ((OUTLINED_FUNCTION_0_2() & 1) == 0)
  {

LABEL_27:
    *&v43[0] = *MEMORY[0x277D7CBF0];
    MEMORY[0x28223BE20](v5);
    v19 = sub_27446EC04();

    if (!v19)
    {
      goto LABEL_50;
    }

    if ([a1 value])
    {
      sub_27463C13C();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_2_1();
    }

    OUTLINED_FUNCTION_1_1();
    if (v20)
    {
      sub_274412734(0, &unk_28094D720);
      if ((OUTLINED_FUNCTION_0_2() & 1) == 0)
      {
        goto LABEL_50;
      }

      v21 = [a1 contact];
      v22 = [a1 key];
      if (!v22)
      {
        sub_27463B6AC();
        v22 = sub_27463B66C();
      }

      v23 = [v21 valueForKey_];

      if (v23)
      {
        sub_27463C13C();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_2_1();
      }

      OUTLINED_FUNCTION_1_1();
      v6 = &selRef_maximumDate;
      if (v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A240);
        if (OUTLINED_FUNCTION_0_2())
        {
          v25 = sub_274453594();
          if (v25)
          {
            v26 = v25;
            *&v43[0] = MEMORY[0x277D84F90];
            result = sub_27463C44C();
            if (v26 < 0)
            {
              goto LABEL_66;
            }

            v27 = 0;
            do
            {
              if ((v42 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x277C58B20](v27);
              }

              else
              {
                v28 = *(v42 + 8 * v27 + 32);
              }

              v29 = v28;
              ++v27;
              v30 = [v28 value];

              sub_27463C41C();
              sub_27463C46C();
              sub_27463C47C();
              sub_27463C42C();
            }

            while (v26 != v27);

            v6 = &selRef_maximumDate;
          }

          else
          {
          }

          sub_2744B2978();
          v4 = v39;
          v41 = v40;

          if (v41)
          {
            v4 = sub_274637CAC();
          }

          v32 = 0;
          v31 = 4;
          goto LABEL_51;
        }

LABEL_50:
        v31 = 0xFFFFFFFFLL;
        v32 = 1;
LABEL_51:
        v33 = sub_274637CAC();
        v3 = 0;
        if ((v32 & 1) == 0 && v4 != v33)
        {
          v34 = [a1 v6[382]];
          v35 = [objc_opt_self() contactWithCNContact:v34 propertyID:v31 multivalueIndex:v4];

          v3 = [objc_allocWithZone(MEMORY[0x277CFC2C0]) initWithContact_];
        }

        return v3;
      }
    }

    sub_274415174(v43, &unk_28094A230);
    goto LABEL_50;
  }

  v12 = sub_274453594();
  if (!v12)
  {

    goto LABEL_58;
  }

  v13 = v12;
  *&v43[0] = MEMORY[0x277D84F90];
  result = sub_27463C44C();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    do
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x277C58B20](v15);
      }

      else
      {
        v16 = *(v42 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      v18 = [v16 value];

      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
    }

    while (v13 != v15);

    v6 = &selRef_maximumDate;
LABEL_58:
    sub_2744B2950();
    v4 = v36;
    v38 = v37;

    if (v38)
    {
      v4 = sub_274637CAC();
    }

    v32 = 0;
    v31 = 3;
    goto LABEL_51;
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

void sub_274414F9C()
{
  sub_274414140();
  v1 = v0 + 56;
  v2 = 1 << *(v0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v0 + 56);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v4)
  {
LABEL_9:
    v4 &= v4 - 1;
    v9 = CNContactPropertyKeyFromWFContactPropertyID();
    if (v9)
    {
      v10 = v9;
      v11 = sub_27463B6AC();
      v13 = v12;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_27444FD7C();
        v7 = v17;
      }

      v14 = *(v7 + 16);
      v15 = v14 + 1;
      if (v14 >= *(v7 + 24) >> 1)
      {
        v18 = *(v7 + 16);
        sub_27444FD7C();
        v14 = v18;
        v7 = v19;
      }

      *(v7 + 16) = v15;
      v16 = v7 + 16 * v14;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return;
    }

    v4 = *(v1 + 8 * v8);
    ++v6;
    if (v4)
    {
      v6 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_274415114(void *a1)
{
  v1 = [a1 supportedContactProperties];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for WFContactFieldProperty(0);
  v3 = sub_27463B81C();

  return v3;
}

uint64_t sub_274415174(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_1_1()
{
  result = *(v0 - 144);
  *(v0 - 112) = *(v0 - 160);
  *(v0 - 96) = result;
  return result;
}

double OUTLINED_FUNCTION_2_1()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t sub_274415274()
{
  type metadata accessor for ListParameterOutlineModalEditor();
  sub_27463C0AC();
  result = sub_274638FCC();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27441532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  result = type metadata accessor for ListParameterOutlineModalEditor();
  v12 = (a5 + *(result + 36));
  *v12 = a2;
  v12[1] = a3;
  *(a5 + *(result + 40)) = a4;
  return result;
}

uint64_t sub_2744153F4()
{
  OUTLINED_FUNCTION_57();
  swift_getWitnessTable();

  return sub_27463950C();
}

uint64_t sub_274415448(uint64_t a1)
{
  type metadata accessor for ListParameterOutlineModalEditor();
  v2 = sub_27463C0AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_2745C4778();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_27441554C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();
}

uint64_t sub_274415718(uint64_t a1, int64x2_t a2)
{
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  a2.i64[0] = v6;
  v23 = a2;
  v7 = v4[16];
  type metadata accessor for ListParameterOutlineModalEditor();
  v8 = sub_27463C0AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20.i8[-v10];
  v12 = *(v5 + 17);
  v35 = v5[18];
  v13 = v12;
  v22 = v12;
  v36 = v4[19];
  v14 = v36;
  v15 = v4[20];
  v37 = v15;
  v21 = *(v5 + 11);
  v16 = vzip1q_s64(v23, v21);
  v23 = *(v5 + 13);
  v17.i64[0] = v7;
  v33 = *(v5 + 7);
  v34 = vzip1q_s64(v17, v13);
  v31 = v16;
  v32 = vzip1q_s64(vdupq_laneq_s64(v21, 1), v23);
  v16.i64[0] = v5[15];
  v20 = v16;
  swift_getKeyPath();
  v24 = v6;
  v25 = v21;
  v26 = v23;
  *&v18 = v20.i64[0];
  *(&v18 + 1) = v7;
  v28 = v22;
  v27 = v18;
  v29 = v14;
  v30 = v15;
  swift_getKeyPath();
  (*(v9 + 16))(v11, a1, v8);

  sub_274638FBC();
  return (*(v9 + 8))(a1, v8);
}

uint64_t sub_27441599C@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t sub_274415A1C()
{
  v1 = *(*v0 + 168);
  type metadata accessor for ListParameterOutlineModalEditor();
  sub_27463C0AC();
  v2 = sub_274638FCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_274415B2C()
{
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  result = sub_274638FCC();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_274415BF0()
{
  v13 = *v0;
  v1 = v13;
  v2 = type metadata accessor for ListParameterOutlineModalEditor();
  sub_27463C0AC();
  v3 = sub_274638FCC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v1 + 168);
  __swift_storeEnumTagSinglePayload(&v12 - v8, 1, 1, v2);
  sub_274415448(v9);
  (*(v4 + 32))(&v0[v10], v7, v3);
  return v0;
}

uint64_t sub_274415E5C()
{
  OUTLINED_FUNCTION_57();
  type metadata accessor for ListParameterListContentView.Model();
  OUTLINED_FUNCTION_47_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65();
  return sub_2746391FC();
}

uint64_t sub_274415EDC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ListParameterListContentView.Model();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

void sub_274415FA0()
{
  OUTLINED_FUNCTION_24();
  v0 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_75();
  sub_2744342DC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274433B6C();
  }

  else
  {
    sub_27463BC0C();
    v8 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    (*(v2 + 8))(v6, v0);
  }

  OUTLINED_FUNCTION_23();
}

void sub_27441614C()
{
  OUTLINED_FUNCTION_24();
  v149 = v0;
  v142 = v1;
  OUTLINED_FUNCTION_1();
  v138 = v2;
  v139 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v137 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = *(v5 + 16);
  v7.i64[0] = v150;
  v154 = v7;
  v8 = *(v5 + 64);
  v9 = v5;
  v148 = type metadata accessor for ListParameterOutlineModalEditor();
  sub_27463C0AC();
  OUTLINED_FUNCTION_35_0();
  sub_27463AF4C();
  OUTLINED_FUNCTION_1();
  v140 = v11;
  v141 = v10;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v12);
  v136 = &v115 - v13;
  v14 = *(v9 + 40);
  OUTLINED_FUNCTION_30();
  v170 = sub_27463965C();
  v15 = *(v9 + 48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  v171.i64[0] = sub_274639DEC();
  v171.i64[1] = MEMORY[0x277CE1180];
  v172.i64[0] = *(v9 + 56);
  v16 = v172.i64[0];
  OUTLINED_FUNCTION_77();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  v17 = sub_27463ADAC();
  OUTLINED_FUNCTION_5_1();
  WitnessTable = swift_getWitnessTable();
  v170 = v17;
  v171.i64[0] = MEMORY[0x277D83B88];
  v171.i64[1] = WitnessTable;
  v172.i64[0] = MEMORY[0x277D83B98];
  sub_27463ADBC();
  OUTLINED_FUNCTION_67();
  v19 = sub_274639EFC();
  OUTLINED_FUNCTION_34_0();
  v21 = sub_274433D44(v20);
  v172.i64[0] = v21;
  v152 = v9;
  v155 = *(v9 + 24);
  v170 = v155.i64[1];
  *&v22 = vdupq_laneq_s64(v155, 1).u64[0];
  v151 = vzip1q_s64(v154, v155);
  *(&v22 + 1) = v14;
  v23.i64[0] = v14;
  v23.i64[1] = v15;
  v154 = v23;
  v23.i64[0] = v16;
  v147 = v8;
  v23.i64[1] = v8;
  v153 = v23;
  v24 = *(v9 + 72);
  v171.i64[0] = v19;
  v171.i64[1] = v24;
  v23.i64[0] = v15;
  v23.i64[1] = v16;
  v134 = v23;
  v135 = v22;
  v23.i64[0] = v8;
  v23.i64[1] = v24;
  v133 = v23;
  v132 = v24;
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  OUTLINED_FUNCTION_62_0();
  sub_27463965C();
  OUTLINED_FUNCTION_69();
  sub_27463965C();
  v25 = OUTLINED_FUNCTION_51_0();
  v170 = v155.i64[1];
  v171.i64[0] = v19;
  v171.i64[1] = v24;
  v172.i64[0] = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_50_0();
  v28 = sub_274433D44(v27);
  v200 = OpaqueTypeConformance2;
  v201 = v28;
  v29 = MEMORY[0x277CDFAD8];
  v198 = swift_getWitnessTable();
  v199 = MEMORY[0x277CDF918];
  v196 = swift_getWitnessTable();
  v197 = MEMORY[0x277CDFC60];
  v30 = swift_getWitnessTable();
  v170 = v150;
  v171.i64[0] = v155.i64[0];
  v171.i64[1] = v17;
  v172.i64[0] = v8;
  v172.i64[1] = v147;
  v173.i64[0] = v25;
  v173.i64[1] = v30;
  type metadata accessor for StackList();
  v31 = sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6C8);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  OUTLINED_FUNCTION_62_0();
  sub_27463965C();
  OUTLINED_FUNCTION_69();
  sub_27463965C();
  v32 = sub_274430088();
  OUTLINED_FUNCTION_49_0();
  v33 = swift_getWitnessTable();
  v194 = v32;
  v195 = v33;
  OUTLINED_FUNCTION_9_0();
  v144 = v34;
  v35 = swift_getWitnessTable();
  v128 = v35;
  OUTLINED_FUNCTION_48_0();
  v37 = sub_274434E04(v36);
  v192 = v35;
  v193 = v37;
  v190 = swift_getWitnessTable();
  v38 = MEMORY[0x277CDF918];
  v191 = MEMORY[0x277CDF918];
  v127 = v29;
  v188 = swift_getWitnessTable();
  v189 = v38;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  v125 = sub_27463914C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  OUTLINED_FUNCTION_20_0();
  v126 = sub_27463965C();
  OUTLINED_FUNCTION_52_0();
  v146 = sub_274639DEC();
  v39 = sub_27463AC1C();
  OUTLINED_FUNCTION_1();
  v130 = v40;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v41);
  v129 = &v115 - v42;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6E0);
  v121 = v39;
  v145 = sub_27463965C();
  OUTLINED_FUNCTION_1();
  v131 = v43;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v44);
  v147 = &v115 - v45;
  sub_274639F1C();
  OUTLINED_FUNCTION_31_0();
  v46 = v152;
  v47 = swift_getWitnessTable();
  v170 = v46;
  v171.i64[0] = v31;
  v48 = MEMORY[0x277CDE0D0];
  v171.i64[1] = v47;
  v172.i64[0] = MEMORY[0x277CDE0D0];
  OUTLINED_FUNCTION_46_0();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v170 = v46;
  v171.i64[0] = v31;
  v171.i64[1] = v47;
  v172.i64[0] = v48;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = sub_274412BBC();
  v52 = MEMORY[0x277D837D0];
  v170 = OpaqueTypeMetadata2;
  v171.i64[0] = MEMORY[0x277D837D0];
  v171.i64[1] = v50;
  v172.i64[0] = v51;
  v53 = swift_getOpaqueTypeMetadata2();
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6F0);
  v170 = OpaqueTypeMetadata2;
  v171.i64[0] = v52;
  v171.i64[1] = v50;
  v172.i64[0] = v51;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D100);
  OUTLINED_FUNCTION_44_0();
  v58 = sub_274434E04(v57);
  v170 = v56;
  v171.i64[0] = v58;
  OUTLINED_FUNCTION_43_0();
  v59 = swift_getOpaqueTypeConformance2();
  v170 = v53;
  v171.i64[0] = v54;
  v171.i64[1] = v55;
  v172.i64[0] = v59;
  v60 = swift_getOpaqueTypeMetadata2();
  v170 = v53;
  v171.i64[0] = v54;
  v171.i64[1] = v55;
  v172.i64[0] = v59;
  v61 = swift_getOpaqueTypeConformance2();
  v170 = v60;
  v171.i64[0] = v61;
  swift_getOpaqueTypeMetadata2();
  v170 = v60;
  v171.i64[0] = v61;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_22();
  v62 = sub_2746394FC();
  v63 = sub_27463A11C();
  v117 = v63;
  OUTLINED_FUNCTION_42_0();
  v64 = swift_getWitnessTable();
  v116 = v64;
  OUTLINED_FUNCTION_41_0();
  v66 = sub_274433D44(v65);
  v170 = v62;
  v171.i64[0] = v63;
  v171.i64[1] = v64;
  v172.i64[0] = v66;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_67();
  type metadata accessor for VariableEditorModifier();
  OUTLINED_FUNCTION_22();
  v118 = sub_27463965C();
  v122 = sub_27463965C();
  v143 = sub_27463C0AC();
  OUTLINED_FUNCTION_40_0();
  v67 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_0();
  v69 = sub_274434E04(v68);
  v186 = v67;
  v187 = v69;
  v70 = swift_getWitnessTable();
  v184 = v128;
  v185 = v70;
  v119 = swift_getWitnessTable();
  v183 = v119;
  OUTLINED_FUNCTION_39_0();
  v71 = swift_getWitnessTable();
  v120 = v71;
  OUTLINED_FUNCTION_7_0();
  v73 = sub_274434E04(v72);
  v181 = v71;
  v182 = v73;
  v74 = v145;
  v75 = swift_getWitnessTable();
  v124 = v75;
  OUTLINED_FUNCTION_38_0();
  v76 = v148;
  v77 = swift_getWitnessTable();
  v123 = v77;
  v170 = v62;
  v171.i64[0] = v117;
  v171.i64[1] = v116;
  v172.i64[0] = v66;
  v78 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_37_0();
  v80 = sub_274433D44(v79);
  v179 = v78;
  v180 = v80;
  v177 = swift_getWitnessTable();
  v178 = v73;
  v176 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  v81 = v143;
  v122 = swift_getWitnessTable();
  v170 = v74;
  v171.i64[0] = v76;
  v171.i64[1] = v81;
  v172.i64[0] = v75;
  v172.i64[1] = v77;
  v173.i64[0] = v122;
  v126 = MEMORY[0x277CDEE40];
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v127 = v82;
  v128 = v83;
  v84 = MEMORY[0x28223BE20](v82);
  v144 = &v115 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v125 = &v115 - v86;
  v163 = v151;
  v164 = v135;
  v87.i64[1] = v134.i64[1];
  v165 = v134;
  v166 = v133;
  *&v135 = *(v152 + 96);
  v168 = v135;
  v169 = v149;
  v88 = v132;
  v87.i64[0] = v132;
  v134 = v87;
  v151 = *(v152 + 80);
  v167 = v151;
  v133 = *(v152 + 88);
  v89 = v129;
  sub_27463AC0C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A490);
  sub_2746392AC();
  v90 = v121;
  sub_27463A6CC();

  (*(v130 + 8))(v89, v90);
  v91 = v150;
  v170 = v150;
  v171 = v155;
  v173 = v153;
  v172 = v154;
  v175 = v133;
  v174 = vzip1q_s64(v134, v151);
  type metadata accessor for ListParameterListContentView.Model();
  OUTLINED_FUNCTION_47_0();
  swift_getWitnessTable();
  sub_27463921C();
  v156 = v91;
  v157 = v155;
  v159 = v153;
  v158 = v154;
  v160 = v88;
  v92 = v88;
  v161 = v151;
  v93 = v135;
  v162 = v135;
  swift_getKeyPath();
  v94 = v136;
  sub_27463952C();

  v96 = v137;
  v95 = v138;
  v97 = v152;
  (*(v138 + 16))(v137, v149, v152);
  v98 = v95;
  v99 = (*(v95 + 80) + 104) & ~*(v95 + 80);
  v100 = swift_allocObject();
  *(v100 + 16) = v91;
  *(v100 + 24) = v155;
  v101 = v154;
  *(v100 + 56) = v153;
  *(v100 + 40) = v101;
  *(v100 + 72) = v92;
  *(v100 + 80) = v151;
  *(v100 + 96) = v93;
  (*(v98 + 32))(v100 + v99, v96, v97);
  v102 = swift_checkMetadataState();
  v103 = v122;
  v104 = v123;
  v105 = v124;
  v106 = v94;
  v107 = v145;
  v108 = v147;
  v109 = v148;
  sub_27463A92C();

  (*(v140 + 8))(v106, v141);
  (*(v131 + 8))(v108, v107);
  v170 = v107;
  v171.i64[0] = v109;
  v171.i64[1] = v102;
  v172.i64[0] = v105;
  v172.i64[1] = v104;
  v173.i64[0] = v103;
  v110 = swift_getOpaqueTypeConformance2();
  v111 = v125;
  v112 = v144;
  v113 = v127;
  sub_2744E9688(v144, v127, v110);
  v114 = *(v128 + 8);
  v114(v112, v113);
  sub_2744E9688(v111, v113, v110);
  v114(v111, v113);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_274417060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v78 = a3;
  v79 = a8;
  v77 = a2;
  v66 = a1;
  v75 = a9;
  v74 = a13;
  v72 = a12;
  v70 = a11;
  v69 = a5;
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0);
  sub_27463965C();
  v71 = a6;
  sub_274639DEC();
  v73 = a7;
  swift_getTupleTypeMetadata();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getWitnessTable();
  v16 = sub_27463ADBC();
  sub_274639EFC();
  sub_274433D44(&qword_28094A6B8);
  v17 = a4;
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  sub_27463965C();
  sub_27463965C();
  v18 = sub_27463965C();
  WitnessTable = swift_getWitnessTable();
  v67 = v17;
  v68 = a10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v113 = sub_274433D44(&qword_28094A6C0);
  v110 = swift_getWitnessTable();
  v111 = MEMORY[0x277CDF918];
  v108 = swift_getWitnessTable();
  v109 = MEMORY[0x277CDFC60];
  v83 = v77;
  v84 = v78;
  v85 = v16;
  v86 = v18;
  v87 = v79;
  v88 = WitnessTable;
  v89 = swift_getWitnessTable();
  type metadata accessor for StackList();
  v19 = sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6C8);
  sub_27463965C();
  sub_27463965C();
  v20 = sub_27463965C();
  v106 = sub_274430088();
  v107 = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v104 = WitnessTable;
  v105 = sub_274434E04(&unk_28094A6D0);
  v102 = swift_getWitnessTable();
  v21 = MEMORY[0x277CDF918];
  v103 = MEMORY[0x277CDF918];
  v100 = swift_getWitnessTable();
  v101 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_27463914C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v60 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  v27 = sub_27463965C();
  v62 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v61 = v60 - v31;
  v32 = sub_274639DEC();
  v64 = *(v32 - 8);
  v65 = v32;
  v33 = MEMORY[0x28223BE20](v32);
  v63 = v60 - v34;
  v35 = v66;
  if (*(v66 + 83) == 1)
  {
    v83 = v77;
    v84 = v78;
    v85 = v67;
    v86 = v69;
    v87 = v71;
    v88 = v73;
    v89 = v79;
    v90 = v68;
    v91 = v70;
    v92 = v72;
    v93 = v74;
    v36 = type metadata accessor for ListParameterListContentView();
    sub_274417B24(v36);
    v37 = WitnessTable;
    sub_2744E9688(v82, v19, WitnessTable);
    v38 = *(*(v19 - 8) + 8);
    v38(v82, v19);
    sub_2744E9688(&v83, v19, v37);
    v39 = swift_getWitnessTable();
    v40 = sub_274434E04(&qword_28094A710);
    v80 = v39;
    v81 = v40;
    swift_getWitnessTable();
    v41 = v63;
    sub_27456E7CC();
    v38(v82, v19);
    v38(&v83, v19);
  }

  else
  {
    v60[0] = v60;
    MEMORY[0x28223BE20](v33);
    v60[1] = v19;
    v42 = v78;
    v60[-12] = v77;
    v60[-11] = v42;
    v43 = v69;
    v60[-10] = v67;
    v60[-9] = v43;
    v44 = v73;
    v60[-8] = v71;
    v60[-7] = v44;
    v45 = v68;
    v60[-6] = v79;
    v60[-5] = v45;
    v46 = v72;
    v60[-4] = v70;
    v60[-3] = v46;
    v60[-2] = v74;
    v60[-1] = v35;
    v47 = sub_2744B2C04();
    sub_2744B2C08(v47, sub_274431E60, &v60[-14], v20, v22);
    v48 = [objc_opt_self() wf_systemGroupedBackgroundColor];
    v83 = sub_27463AB0C();
    v49 = swift_getWitnessTable();
    sub_27463A32C();
    sub_27463A65C();

    (*(v24 + 8))(v26, v23);
    v50 = sub_274434E04(&qword_28094A710);
    v98 = v49;
    v99 = v50;
    v51 = swift_getWitnessTable();
    v52 = v61;
    sub_2744E9688(v30, v27, v51);
    v53 = *(v62 + 8);
    v53(v30, v27);
    sub_2744E9688(v52, v27, v51);
    v41 = v63;
    sub_27456E878();
    v53(v30, v27);
    v53(v52, v27);
  }

  v54 = swift_getWitnessTable();
  v55 = sub_274434E04(&qword_28094A710);
  v96 = v54;
  v97 = v55;
  v56 = swift_getWitnessTable();
  v94 = WitnessTable;
  v95 = v56;
  v57 = v65;
  v58 = swift_getWitnessTable();
  sub_2744E9688(v41, v57, v58);
  return (*(v64 + 8))(v41, v57);
}

uint64_t sub_274417B24(uint64_t a1)
{
  v2 = v1;
  sub_2744C6ABC();
  v3 = v83;
  sub_27440CB1C(&v81, &unk_2809507C0);
  v4 = MEMORY[0x277CE1180];
  v5 = MEMORY[0x277D83B88];
  v6 = MEMORY[0x277D83B98];
  if (v3)
  {
    sub_27441A8E4(a1, &v81);
    sub_27463965C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0);
    sub_27463965C();
    sub_274639DEC();
    swift_getTupleTypeMetadata();
    sub_27463B19C();
    swift_getWitnessTable();
    *&v60 = sub_27463ADAC();
    *(&v60 + 1) = v5;
    WitnessTable = swift_getWitnessTable();
    v62 = v6;
    v7 = sub_27463ADBC();
    v8 = *(a1 + 32);
    v9 = sub_274639EFC();
    v10 = *(a1 + 72);
    *&v60 = v8;
    *(&v60 + 1) = v9;
    WitnessTable = v10;
    v62 = sub_274433D44(&qword_28094A6B8);
    swift_getOpaqueTypeMetadata2();
    sub_27463A29C();
    sub_27463965C();
    sub_27463965C();
    v11 = sub_27463965C();
    v50 = *(a1 + 64);
    v45 = swift_getWitnessTable();
    v48 = v10;
    v49 = v8;
    *&v60 = v8;
    *(&v60 + 1) = v9;
    v47 = v9;
    WitnessTable = v10;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v59 = sub_274433D44(&qword_28094A6C0);
    v56 = swift_getWitnessTable();
    v57 = MEMORY[0x277CDF918];
    v54 = swift_getWitnessTable();
    v55 = MEMORY[0x277CDFC60];
    v12 = swift_getWitnessTable();
    v60 = *(a1 + 16);
    WitnessTable = v7;
    v62 = v11;
    v63 = v50;
    v64 = v45;
    v65 = v12;
    v13 = type metadata accessor for StackList();
    v14 = swift_getWitnessTable();
    sub_2744E9688(&v81, v13, v14);
    v15 = *(*(v13 - 8) + 8);
    v15(&v81, v13);
    sub_2744E9688(&v60, v13, v14);
    sub_274430088();
    sub_27456E878();
    v15(v53, v13);
    v15(&v60, v13);
  }

  else
  {
    v63 = a1;
    v64 = &off_288362B58;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60 + 1);
    (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
    v17 = sub_27441A184(a1);
    KeyPath = swift_getKeyPath();
    v66 = 0;
    v65 = KeyPath;
    *&v60 = v17;
    *&v81 = sub_27463965C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0);
    sub_27463965C();
    *(&v81 + 1) = sub_274639DEC();
    v82 = v4;
    v83 = *(a1 + 56);
    swift_getTupleTypeMetadata();
    sub_27463B19C();
    swift_getWitnessTable();
    v19 = sub_27463ADAC();
    v20 = swift_getWitnessTable();
    *&v81 = v19;
    *(&v81 + 1) = v5;
    v82 = v20;
    v83 = v6;
    v51 = sub_27463ADBC();
    v21 = *(a1 + 32);
    v22 = sub_274639EFC();
    v23 = *(a1 + 72);
    v24 = sub_274433D44(&qword_28094A6B8);
    *&v81 = v21;
    *(&v81 + 1) = v22;
    v82 = v23;
    v83 = v24;
    swift_getOpaqueTypeMetadata2();
    sub_27463A29C();
    sub_27463965C();
    sub_27463965C();
    v46 = sub_27463965C();
    v25 = *(a1 + 64);
    v44 = swift_getWitnessTable();
    v48 = v23;
    v49 = v21;
    *&v81 = v21;
    v47 = v22;
    *(&v81 + 1) = v22;
    v82 = v23;
    v83 = v24;
    v26 = swift_getOpaqueTypeConformance2();
    v27 = sub_274433D44(&qword_28094A6C0);
    v79 = v26;
    v80 = v27;
    v77 = swift_getWitnessTable();
    v78 = MEMORY[0x277CDF918];
    v75 = swift_getWitnessTable();
    v76 = MEMORY[0x277CDFC60];
    v28 = swift_getWitnessTable();
    v81 = *(a1 + 16);
    v82 = v51;
    v83 = v46;
    v50 = v25;
    v84 = v25;
    v85 = v44;
    v86 = v28;
    type metadata accessor for StackList();
    sub_274430088();
    swift_getWitnessTable();
    sub_27456E7CC();
    sub_274431E78(&v60);
  }

  *&v60 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0);
  sub_27463965C();
  *(&v60 + 1) = sub_274639DEC();
  v29 = *(a1 + 56);
  WitnessTable = MEMORY[0x277CE1180];
  v62 = v29;
  swift_getTupleTypeMetadata();
  sub_27463B19C();
  swift_getWitnessTable();
  v30 = sub_27463ADAC();
  v31 = swift_getWitnessTable();
  *&v60 = v30;
  *(&v60 + 1) = MEMORY[0x277D83B88];
  WitnessTable = v31;
  v62 = MEMORY[0x277D83B98];
  v32 = sub_27463ADBC();
  sub_274639EFC();
  v33 = sub_274433D44(&qword_28094A6B8);
  *&v60 = v49;
  *(&v60 + 1) = v47;
  WitnessTable = v48;
  v62 = v33;
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  sub_27463965C();
  sub_27463965C();
  v34 = sub_27463965C();
  v35 = swift_getWitnessTable();
  *&v60 = v49;
  *(&v60 + 1) = v47;
  WitnessTable = v48;
  v62 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_274433D44(&qword_28094A6C0);
  v73 = v36;
  v74 = v37;
  v71 = swift_getWitnessTable();
  v72 = MEMORY[0x277CDF918];
  v69 = swift_getWitnessTable();
  v70 = MEMORY[0x277CDFC60];
  v38 = swift_getWitnessTable();
  v60 = *(a1 + 16);
  WitnessTable = v32;
  v62 = v34;
  v63 = v50;
  v64 = v35;
  v65 = v38;
  type metadata accessor for StackList();
  v39 = sub_274639DEC();
  v40 = sub_274430088();
  v41 = swift_getWitnessTable();
  v67 = v40;
  v68 = v41;
  v42 = swift_getWitnessTable();
  sub_2744E9688(&v81, v39, v42);
  return (*(*(v39 - 8) + 8))(&v81, v39);
}

uint64_t sub_2744186A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12)
{
  v50 = a8;
  v51 = a7;
  v52 = a6;
  v53 = a5;
  v57 = a9;
  v58 = a3;
  v49 = a2;
  v56 = a1;
  v55 = a12;
  v54 = a11;
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0);
  sub_27463965C();
  sub_274639DEC();
  swift_getTupleTypeMetadata();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getWitnessTable();
  v13 = sub_27463ADBC();
  sub_274639EFC();
  sub_274433D44(&qword_28094A6B8);
  v44 = a4;
  v45 = a10;
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  sub_27463965C();
  sub_27463965C();
  v14 = sub_27463965C();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = sub_274433D44(&qword_28094A6C0);
  v48 = MEMORY[0x277CDFAD8];
  v79 = swift_getWitnessTable();
  v80 = MEMORY[0x277CDF918];
  v77 = swift_getWitnessTable();
  v78 = MEMORY[0x277CDFC60];
  v15 = v49;
  v16 = v50;
  v67 = v49;
  v68 = v58;
  v69 = v13;
  v70 = v14;
  v71 = v50;
  v72 = WitnessTable;
  v73 = swift_getWitnessTable();
  v41[1] = type metadata accessor for StackList();
  v17 = sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6C8);
  v18 = sub_27463965C();
  v43 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = v41 - v19;
  v21 = sub_27463965C();
  v46 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v41 - v22;
  v24 = sub_27463965C();
  WitnessTable = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v42 = v41 - v28;
  v67 = v15;
  v68 = v58;
  v69 = v44;
  v70 = v53;
  v71 = v52;
  v72 = v51;
  v73 = v16;
  v74 = v45;
  v75 = v54;
  v76 = v55;
  v29 = type metadata accessor for ListParameterListContentView();
  sub_274417B24(v29);
  v30 = sub_274430088();
  v31 = swift_getWitnessTable();
  v65 = v30;
  v66 = v31;
  v32 = swift_getWitnessTable();
  sub_27463A70C();
  (*(*(v17 - 8) + 8))(&v67, v17);
  sub_27463A31C();
  v33 = sub_274434E04(&unk_28094A6D0);
  v63 = v32;
  v64 = v33;
  v34 = swift_getWitnessTable();
  sub_27463A9FC();
  (*(v43 + 8))(v20, v18);
  sub_27463A38C();
  v61 = v34;
  v35 = MEMORY[0x277CDF918];
  v62 = MEMORY[0x277CDF918];
  v36 = swift_getWitnessTable();
  sub_27463A9FC();
  (*(v46 + 8))(v23, v21);
  v59 = v36;
  v60 = v35;
  v37 = swift_getWitnessTable();
  v38 = v42;
  sub_2744E9688(v27, v24, v37);
  v39 = *(WitnessTable + 8);
  v39(v27, v24);
  sub_2744E9688(v38, v24, v37);
  return (v39)(v38, v24);
}

double sub_274418E04()
{
  sub_274431E0C();
  sub_274639ACC();
  return v1;
}

uint64_t sub_274418E7C(uint64_t a1)
{
  type metadata accessor for ListParameterOutlineModalEditor();
  v2 = sub_27463C0AC();
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - v3;
  *v6.i64 = (*(v5 + 16))(&v8 - v3, a1);
  return sub_274415718(v4, v6);
}

uint64_t sub_274418F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, __int128 a8, uint64_t a9, uint64_t a10)
{
  v60 = a3;
  v61 = a2;
  v62 = a1;
  v68 = a6;
  v89 = a4;
  v90 = a5;
  v91 = a7;
  v92 = a8;
  v93 = a9;
  v94 = a10;
  type metadata accessor for ListParameterListContentView();
  sub_274639F1C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_274412BBC();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6F0);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D100);
  sub_274434E04(&unk_28094A700);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v67 = sub_2746394FC();
  v85 = v67;
  v86 = sub_27463A11C();
  v71 = v86;
  WitnessTable = swift_getWitnessTable();
  v87 = WitnessTable;
  v88 = sub_274433D44(&unk_28094A708);
  v69 = v88;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for VariableEditorModifier();
  v10 = sub_27463965C();
  v56 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v55 = &v54 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6E0);
  v65 = v10;
  v12 = sub_27463965C();
  v58 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v54 - v16;
  v66 = sub_27463C0AC();
  v64 = *(v66 - 8);
  v17 = MEMORY[0x28223BE20](v66);
  v59 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v63 = &v54 - v19;
  v20 = swift_checkMetadataState();
  v21 = *(v61 + 8);
  v22 = type metadata accessor for ListParameterOutlineModalEditor();
  v23 = v62;
  v24 = *(v62 + *(v22 + 40));
  v25 = *((*MEMORY[0x277D85000] & *v21) + 0xD0);
  v26 = v21;
  v27 = v25(v24);

  if (v27)
  {
    v28 = (v23 + *(v22 + 36));
    v29 = v55;
    sub_274419A4C(*v28, v28[1], v27, v20, v55);
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A490);
    sub_2746392AC();
    v30 = v67;
    v85 = v67;
    v86 = v71;
    v87 = WitnessTable;
    v88 = v69;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v32 = sub_274433D44(&unk_28094A720);
    v74 = OpaqueTypeConformance2;
    v75 = v32;
    v33 = v65;
    v34 = swift_getWitnessTable();
    sub_27463A6CC();

    (*(v56 + 8))(v29, v33);
    v35 = sub_274434E04(&unk_28094A718);
    v72 = v34;
    v73 = v35;
    v36 = swift_getWitnessTable();
    v37 = v57;
    sub_2744E9688(v15, v12, v36);
    v38 = v58;
    v39 = *(v58 + 8);
    v39(v15, v12);
    sub_2744E9688(v37, v12, v36);
    v39(v37, v12);
    v40 = v59;
    (*(v38 + 32))(v59, v15, v12);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v12);
  }

  else
  {
    v40 = v59;
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v12);
    v30 = v67;
    v85 = v67;
    v86 = v71;
    v87 = WitnessTable;
    v88 = v69;
    v41 = swift_getOpaqueTypeConformance2();
    v42 = sub_274433D44(&unk_28094A720);
    v83 = v41;
    v84 = v42;
    v43 = swift_getWitnessTable();
    v44 = sub_274434E04(&unk_28094A718);
    v81 = v43;
    v82 = v44;
    swift_getWitnessTable();
  }

  v45 = v63;
  sub_2745758B8(v40, v63);
  v46 = *(v64 + 8);
  v47 = v66;
  v46(v40, v66);
  v85 = v30;
  v86 = v71;
  v87 = WitnessTable;
  v88 = v69;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_274433D44(&unk_28094A720);
  v79 = v48;
  v80 = v49;
  v50 = swift_getWitnessTable();
  v51 = sub_274434E04(&unk_28094A718);
  v77 = v50;
  v78 = v51;
  v76 = swift_getWitnessTable();
  v52 = swift_getWitnessTable();
  sub_2744E9688(v45, v47, v52);
  return (v46)(v45, v47);
}

uint64_t sub_274419A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a3;
  v54 = a2;
  v53 = a1;
  v57 = a5;
  v6 = sub_27463A11C();
  v56 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274639F1C();
  WitnessTable = swift_getWitnessTable();
  v69 = a4;
  v70 = v8;
  v10 = MEMORY[0x277CDE0D0];
  v71 = WitnessTable;
  v72 = MEMORY[0x277CDE0D0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = a4;
  v70 = v8;
  v71 = WitnessTable;
  v72 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = sub_274412BBC();
  v14 = MEMORY[0x277D837D0];
  v69 = OpaqueTypeMetadata2;
  v70 = MEMORY[0x277D837D0];
  v71 = OpaqueTypeConformance2;
  v72 = v13;
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6F0);
  v69 = OpaqueTypeMetadata2;
  v70 = v14;
  v71 = OpaqueTypeConformance2;
  v72 = v13;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D100);
  v19 = sub_274434E04(&unk_28094A700);
  v69 = v18;
  v70 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v69 = v15;
  v70 = v16;
  v71 = v17;
  v72 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v69 = v15;
  v70 = v16;
  v71 = v17;
  v72 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v69 = v21;
  v70 = v22;
  v49 = swift_getOpaqueTypeMetadata2();
  v69 = v21;
  v70 = v22;
  v48 = swift_getOpaqueTypeConformance2();
  v23 = sub_2746394FC();
  v50 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = v45 - v24;
  v26 = swift_getWitnessTable();
  v27 = sub_274433D44(&unk_28094A708);
  v69 = v23;
  v70 = v6;
  v28 = v6;
  v71 = v26;
  v72 = v27;
  v45[1] = MEMORY[0x277CDE5B8];
  v29 = swift_getOpaqueTypeMetadata2();
  v46 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = v45 - v30;
  type metadata accessor for VariableEditorModifier();
  v32 = sub_27463965C();
  v47 = *(v32 - 8);
  v33 = MEMORY[0x28223BE20](v32);
  v35 = v45 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v45[0] = v45 - v36;
  v37 = *(a4 + 40);
  v58 = *(a4 + 24);
  v59 = v37;
  v60 = *(a4 + 56);
  v61 = *(a4 + 72);
  v62 = *(a4 + 88);
  v63 = v52;
  v64 = v55;
  v65 = v53;
  v66 = v54;
  sub_2746394EC();
  v38 = v51;
  sub_27463A10C();
  sub_27463A62C();
  (*(v56 + 8))(v38, v28);
  (*(v50 + 8))(v25, v23);
  v69 = v23;
  v70 = v28;
  v71 = v26;
  v72 = v27;
  v39 = swift_getOpaqueTypeConformance2();
  sub_274548EAC(v29, v39);
  (*(v46 + 8))(v31, v29);
  v40 = sub_274433D44(&unk_28094A720);
  v67 = v39;
  v68 = v40;
  v41 = swift_getWitnessTable();
  v42 = v45[0];
  sub_2744E9688(v35, v32, v41);
  v43 = *(v47 + 8);
  v43(v35, v32);
  sub_2744E9688(v42, v32, v41);
  return (v43)(v42, v32);
}

uint64_t sub_27441A184(uint64_t a1)
{
  v2 = v1;
  v3 = a1 - 8;
  v60 = *(a1 - 8);
  v61 = a1;
  MEMORY[0x28223BE20](a1);
  v57 = v4;
  v58 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + 8);
  v6 = *((*MEMORY[0x277D85000] & *v5) + 0x88);
  v7 = v5;
  v8 = v6();
  v10 = v9;
  v12 = v11;

  *&v85[0] = v8;
  *(&v85[0] + 1) = v10;
  *&v85[1] = v12;
  v13 = *(v3 + 24);
  sub_27463B92C();
  v14 = sub_27463AF4C();
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  MEMORY[0x277C57F10](&v102, v14, v15);

  v85[0] = v102;
  *&v85[1] = v103;
  v16 = *(v3 + 32);
  v75[2] = v13;
  v75[3] = v16;
  v76 = *(v3 + 40);
  v17 = *(v3 + 64);
  v77 = *(v3 + 56);
  v78 = v17;
  v18 = *(v3 + 80);
  v79 = *(v3 + 72);
  v80 = v18;
  v19 = *(v3 + 96);
  v81 = *(v3 + 88);
  v82 = v19;
  v20 = *(v3 + 104);
  v83 = v20;
  v84 = v2;
  v55 = v77;
  v56 = v13;
  v63 = v13;
  v64 = v16;
  v21 = v16;
  v62 = v76;
  v65 = v76;
  v66 = v77;
  v67 = v17;
  v53 = v79;
  v54 = v17;
  v68 = v79;
  v69 = v18;
  v59 = v18;
  v51 = v19;
  v52 = v81;
  v70 = v81;
  v71 = v19;
  v72 = v20;
  v73 = sub_274432110;
  v74 = v75;
  sub_27463C5BC();
  swift_getWitnessTable();
  v22 = sub_27463B7BC();

  if (*(v2 + 80) == 1)
  {
    memset(v85, 0, 40);
    v24 = v60;
    v23 = v61;
    v25 = v58;
    (*(v60 + 16))(v58, v2, v61);
    v26 = (*(v24 + 80) + 104) & ~*(v24 + 80);
    v27 = swift_allocObject();
    *&v28 = v56;
    *(&v28 + 1) = v21;
    v29 = v62;
    *(v27 + 16) = v28;
    *(v27 + 32) = v29;
    v30 = v54;
    *(v27 + 48) = v55;
    *(v27 + 56) = v30;
    v31 = v52;
    v32 = v59;
    *(v27 + 64) = v53;
    *(v27 + 72) = v32;
    v33 = v51;
    *(v27 + 80) = v31;
    *(v27 + 88) = v33;
    *(v27 + 96) = v20;
    (*(v24 + 32))(v27 + v26, v25, v23);
    v34 = sub_274639EFC();
    v35 = sub_274433D44(&qword_28094A6B8);
    *&v102 = v62;
    *(&v102 + 1) = v34;
    v103 = v32;
    v104 = v35;
    swift_getOpaqueTypeMetadata2();
    sub_27463A29C();
    sub_27463965C();
    v61 = v22;
    sub_27463965C();
    sub_27463965C();
    v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
    v57 = sub_27463965C();
    sub_27463965C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A760);
    v58 = sub_27463965C();
    *&v102 = v62;
    *(&v102 + 1) = v34;
    v103 = v32;
    v104 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = sub_274433D44(&qword_28094A6C0);
    v100 = OpaqueTypeConformance2;
    v101 = v37;
    v38 = swift_getWitnessTable();
    v39 = MEMORY[0x277CDF918];
    v98 = v38;
    v99 = MEMORY[0x277CDF918];
    v40 = swift_getWitnessTable();
    v41 = MEMORY[0x277CDFC60];
    v96 = v40;
    v97 = MEMORY[0x277CDFC60];
    v42 = swift_getWitnessTable();
    v43 = sub_274434E04(&qword_28094A710);
    v94 = v42;
    v95 = v43;
    v92 = swift_getWitnessTable();
    v93 = v39;
    v44 = swift_getWitnessTable();
    v45 = sub_274434E04(&unk_28094A768);
    v90 = v44;
    v91 = v45;
    swift_getWitnessTable();
    sub_27463AE6C();
    sub_27463965C();
    sub_27463965C();
    v88 = swift_getWitnessTable();
    v89 = v41;
    v86 = swift_getWitnessTable();
    v87 = v43;
    v22 = v61;
    swift_getWitnessTable();
    sub_27441CC60(0x7265746F6F66, 0xE600000000000000, v85, sub_27443235C, &v102);
    v105 = 1;
    sub_2744307DC(&v102, v85);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_27444FE4C();
      v22 = v48;
    }

    v46 = *(v22 + 16);
    if (v46 >= *(v22 + 24) >> 1)
    {
      sub_27444FE4C();
      v22 = v49;
    }

    sub_274430814(&v102);
    *(v22 + 16) = v46 + 1;
    memcpy((v22 + 80 * v46 + 32), v85, 0x50uLL);
  }

  return v22;
}

uint64_t sub_27441A8E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v5 = *(a1 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v57 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - v8;
  v52 = &v48 - v8;
  v10 = *(v2 + 8);
  v11 = *(v2 + 82);
  v62 = *(v2 + 81);
  v63 = v11;
  v61 = v10;
  v60 = sub_27441AEE4();
  v59 = *(v2 + 80);
  v56 = *(v5 + 16);
  v56(v9, v2, a1);
  v12 = (*(v5 + 80) + 104) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v58 = v13;
  v14 = a1[3];
  v69 = a1[2];
  v13[2] = v69;
  v13[3] = v14;
  v66 = a1[4];
  v67 = v14;
  v16 = a1[5];
  v15 = a1[6];
  v13[4] = v66;
  v13[5] = v16;
  v53 = v15;
  v17 = a1[8];
  v54 = a1[7];
  v18 = v54;
  v55 = v16;
  v13[6] = v15;
  v13[7] = v18;
  v68 = v17;
  v65 = a1[9];
  v19 = v65;
  v13[8] = v17;
  v13[9] = v19;
  v20 = a1[10];
  v50 = a1[11];
  v21 = v50;
  v51 = v20;
  v13[10] = v20;
  v13[11] = v21;
  v22 = a1[12];
  v13[12] = v22;
  v49 = *(v5 + 32);
  v49(v13 + v12, v52, a1);
  v23 = v57;
  v56(v57, v3, a1);
  v24 = swift_allocObject();
  v25 = v66;
  v26 = v67;
  *(v24 + 2) = v69;
  *(v24 + 3) = v26;
  v28 = v54;
  v27 = v55;
  *(v24 + 4) = v25;
  *(v24 + 5) = v27;
  *(v24 + 6) = v53;
  *(v24 + 7) = v28;
  v29 = v65;
  *(v24 + 8) = v68;
  *(v24 + 9) = v29;
  v30 = v50;
  *(v24 + 10) = v51;
  *(v24 + 11) = v30;
  *(v24 + 12) = v22;
  v49(&v24[v12], v23, a1);
  v77 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0);
  sub_27463965C();
  v78 = sub_274639DEC();
  v79 = MEMORY[0x277CE1180];
  v80 = v28;
  swift_getTupleTypeMetadata();
  sub_27463B19C();
  swift_getWitnessTable();
  v31 = sub_27463ADAC();
  WitnessTable = swift_getWitnessTable();
  v77 = v31;
  v78 = MEMORY[0x277D83B88];
  v79 = WitnessTable;
  v80 = MEMORY[0x277D83B98];
  v57 = sub_27463ADBC();
  v33 = sub_274639EFC();
  v34 = sub_274433D44(&qword_28094A6B8);
  v35 = v65;
  v36 = v66;
  v77 = v66;
  v78 = v33;
  v79 = v65;
  v80 = v34;
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  sub_27463965C();
  sub_27463965C();
  v56 = sub_27463965C();
  v55 = swift_getWitnessTable();
  v77 = v36;
  v78 = v33;
  v79 = v35;
  v80 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_274433D44(&qword_28094A6C0);
  v74 = OpaqueTypeConformance2;
  v75 = v38;
  v72 = swift_getWitnessTable();
  v73 = MEMORY[0x277CDF918];
  v70 = swift_getWitnessTable();
  v71 = MEMORY[0x277CDFC60];
  v39 = v56;
  v40 = swift_getWitnessTable();
  v41 = v55;
  v42 = v57;
  v43 = v67;
  sub_27441C018(v61, v63, v62, v60, v59, sub_274431EA8, v58, sub_274431EC0, v76, v24, v67, v57, v39, v55, v40);
  v77 = v69;
  v78 = v43;
  v79 = v42;
  v80 = v39;
  v81 = v68;
  v82 = v41;
  v83 = v40;
  v44 = type metadata accessor for StackList();
  v45 = swift_getWitnessTable();
  sub_2744E9688(v76, v44, v45);
  v46 = *(*(v44 - 8) + 8);
  v46(v76, v44);
  sub_2744E9688(&v77, v44, v45);
  return v46(&v77, v44);
}

uint64_t sub_27441AEE4()
{
  v1 = v0;
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2744C6ABC();
  if (v17)
  {
    sub_2743F45D0(&v16, v18);
    v6 = v19;
    v7 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    if ((*(v7 + 16))(v6, v7))
    {
      v8 = sub_27463AB0C();
    }

    else
    {
      v8 = sub_27463AB7C();
    }

    v11 = v8;
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_27440CB1C(&v16, &unk_2809507C0);
    v9 = *(v0 + 160);
    if (*(v1 + 168) == 1)
    {
      v10 = v9;
    }

    else
    {

      sub_27463BC0C();
      v12 = sub_27463A2FC();
      sub_274638CEC();

      sub_274639AAC();
      swift_getAtKeyPath();
      sub_2743F45E8(v9, 0);
      (*(v3 + 8))(v5, v2);
      v10 = LOBYTE(v18[0]);
    }

    if (v10 == 1)
    {
      return sub_27463AB7C();
    }

    v14 = objc_allocWithZone(MEMORY[0x277D75348]);
    sub_27451A6B0(sub_274420558, 0);
    return sub_27463AB0C();
  }

  return v11;
}

uint64_t sub_27441B104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12)
{
  v35 = a7;
  v36 = a8;
  v33 = a6;
  v32 = a5;
  v29 = a3;
  v37 = a1;
  v38 = a9;
  v31 = a12;
  v30 = a11;
  v28 = sub_274639EFC();
  v14 = sub_274433D44(&qword_28094A6B8);
  v45 = a4;
  v46 = v28;
  v47 = a10;
  v48 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  sub_27463965C();
  v34 = sub_27463965C();
  v15 = sub_27463965C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - v20;
  v45 = a2;
  v46 = v29;
  v47 = a4;
  v48 = v32;
  v49 = v33;
  v50 = v35;
  v51 = v36;
  v52 = a10;
  v53 = v30;
  v54 = v31;
  v22 = type metadata accessor for ListParameterListContentView();
  sub_27441B458(v22, v19);
  v45 = a4;
  v46 = v28;
  v47 = a10;
  v48 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_274433D44(&qword_28094A6C0);
  v43 = OpaqueTypeConformance2;
  v44 = v24;
  WitnessTable = swift_getWitnessTable();
  v42 = MEMORY[0x277CDF918];
  v39 = swift_getWitnessTable();
  v40 = MEMORY[0x277CDFC60];
  v25 = swift_getWitnessTable();
  sub_2744E9688(v19, v15, v25);
  v26 = *(v16 + 8);
  v26(v19, v15);
  sub_2744E9688(v21, v15, v25);
  return (v26)(v21, v15);
}

uint64_t sub_27441B458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a2;
  v5 = sub_274639EFC();
  v56 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v52 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 72);
  v47 = v11;
  v46 = sub_274433D44(&qword_28094A6B8);
  v66 = v8;
  v67 = v5;
  v12 = v8;
  v13 = v5;
  v68 = v11;
  v69 = v46;
  v49 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = &v43 - v14;
  sub_27463A29C();
  v48 = sub_27463965C();
  v54 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v43 = &v43 - v16;
  v17 = sub_27463965C();
  v57 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v45 = &v43 - v18;
  v19 = sub_27463965C();
  v58 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v55 = &v43 - v22;
  v23 = *(v3 + 64);
  v24 = *(v3 + 8);
  v23();

  v25 = v52;
  sub_274639EEC();
  v26 = v12;
  v27 = v13;
  v28 = v47;
  v29 = v46;
  sub_27463A69C();
  (*(v56 + 8))(v25, v27);
  (*(v53 + 8))(v10, v26);
  v66 = v26;
  v67 = v27;
  v68 = v28;
  v69 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v43;
  v32 = OpaqueTypeMetadata2;
  sub_27463A86C();
  (*(v51 + 8))(v15, v32);
  sub_27463A31C();
  v33 = sub_274433D44(&qword_28094A6C0);
  v64 = OpaqueTypeConformance2;
  v65 = v33;
  v34 = v48;
  WitnessTable = swift_getWitnessTable();
  v36 = v45;
  sub_27463A9FC();
  (*(v54 + 8))(v31, v34);
  v62 = WitnessTable;
  v63 = MEMORY[0x277CDF918];
  v42 = swift_getWitnessTable();
  sub_27457574C();
  v37 = v50;
  sub_27463A90C();
  (*(v57 + 8))(v36, v17);
  v60 = v42;
  v61 = MEMORY[0x277CDFC60];
  v38 = swift_getWitnessTable();
  v39 = v55;
  sub_2744E9688(v37, v19, v38);
  v40 = *(v58 + 8);
  v40(v37, v19);
  sub_2744E9688(v39, v19, v38);
  return (v40)(v39, v19);
}

uint64_t sub_27441BB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v26 = a1;
  v27 = a3;
  v28 = a8;
  v25 = a12;
  v24 = a10;
  v29 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0);
  sub_27463965C();
  v30 = sub_274639DEC();
  v31 = MEMORY[0x277CE1180];
  v32 = a9;
  swift_getTupleTypeMetadata();
  sub_27463B19C();
  swift_getWitnessTable();
  v17 = sub_27463ADAC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v24 - v19;
  v21 = *(a4 + 88);
  v29 = *(a4 + 80);
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a9;
  v35 = v21;
  v36 = a10;
  v37 = a11;
  v38 = a12;
  v22 = type metadata accessor for ListParameterListContentView();
  sub_27441BD64(v26, a2, v22, v20);
  v29 = a2;
  swift_getWitnessTable();
  sub_27463A8BC();
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_27441BD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a2;
  v22[0] = a1;
  v24 = a4;
  v5 = *(a3 + 40);
  v34 = sub_27463965C();
  v6 = *(a3 + 48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0);
  sub_27463965C();
  v35 = sub_274639DEC();
  v36 = MEMORY[0x277CE1180];
  v37 = *(a3 + 56);
  v7 = v37;
  swift_getTupleTypeMetadata();
  sub_27463B19C();
  swift_getWitnessTable();
  v8 = sub_27463ADAC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - v13;
  *&v15 = *(a3 + 32);
  *(&v15 + 1) = v5;
  *&v16 = v6;
  *(&v16 + 1) = v7;
  v25 = *(a3 + 16);
  v26 = v15;
  v17 = *(a3 + 64);
  v18 = *(a3 + 80);
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v30 = *(a3 + 96);
  v31 = v22[1];
  v32 = v22[0];
  v33 = v23;
  sub_27456E924();
  sub_27463AD9C();
  WitnessTable = swift_getWitnessTable();
  sub_2744E9688(v12, v8, WitnessTable);
  v20 = *(v9 + 8);
  v20(v12, v8);
  sub_2744E9688(v14, v8, WitnessTable);
  return (v20)(v14, v8);
}

uint64_t sub_27441C018@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = swift_allocObject();
  v20 = *(a11 + 88);
  v19[2] = *(a11 + 80);
  v19[3] = a11;
  v19[4] = a12;
  v19[5] = a13;
  v19[6] = v20;
  v19[7] = a14;
  v19[8] = a15;
  *(a9 + 64) = sub_274421CBC();
  *(a9 + 72) = v21;
  *(a9 + 80) = v22 & 1;
  *(a9 + 88) = swift_getKeyPath();
  *(a9 + 96) = 0;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274433D44(&qword_28094A730);
  *(a9 + 104) = sub_27463979C();
  *(a9 + 112) = v23;
  *(a9 + 120) = swift_getKeyPath();
  *(a9 + 160) = 0;
  result = swift_getKeyPath();
  *(a9 + 168) = result;
  *(a9 + 176) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 9) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  return result;
}

uint64_t sub_27441C1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  v58 = a8;
  v57 = a7;
  v63 = a6;
  v61 = a5;
  v71 = a3;
  v53 = a2;
  v65 = a1;
  v66 = a9;
  v64 = a15;
  v62 = a14;
  v60 = a13;
  v59 = a12;
  v68 = a11;
  v70 = a10;
  v50 = sub_27463AF4C();
  v55 = *(v50 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v49 - v20;
  v77 = a4;
  v78 = a5;
  v79 = a6;
  v80 = a7;
  v81 = a8;
  v82 = a10;
  v83 = a11;
  v84 = a12;
  v85 = a13;
  v86 = a14;
  v87 = a15;
  v51 = type metadata accessor for ListParameterListContentView();
  v67 = *(v51 - 8);
  v52 = *(v67 + 64);
  v21 = MEMORY[0x28223BE20](v51);
  v69 = &v49 - v22;
  v23 = *(a4 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v29 = &v49 - v28;
  v30 = v50;
  v31 = v53;
  MEMORY[0x277C575F0](v50);
  sub_27463C39C();
  (*(v23 + 8))(v25, a4);
  swift_getAssociatedConformanceWitness();
  sub_27463C63C();
  (*(v27 + 8))(v29, AssociatedTypeWitness);
  v32 = v67;
  v33 = v51;
  (*(v67 + 16))(v69, v71, v51);
  v34 = v55;
  v35 = v54;
  v36 = v30;
  (*(v55 + 16))(v54, v31, v30);
  v37 = (*(v32 + 80) + 104) & ~*(v32 + 80);
  v38 = v34;
  v39 = (v52 + *(v34 + 80) + v37) & ~*(v34 + 80);
  v40 = (v56 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v61;
  *(v41 + 2) = a4;
  *(v41 + 3) = v42;
  v43 = v57;
  *(v41 + 4) = v63;
  *(v41 + 5) = v43;
  v44 = v70;
  *(v41 + 6) = v58;
  *(v41 + 7) = v44;
  v45 = v59;
  *(v41 + 8) = v68;
  *(v41 + 9) = v45;
  v46 = v62;
  *(v41 + 10) = v60;
  *(v41 + 11) = v46;
  *(v41 + 12) = v64;
  (*(v67 + 32))(&v41[v37], v69, v33);
  (*(v38 + 32))(&v41[v39], v35, v36);
  *&v41[v40] = v65;
  v77 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0);
  sub_27463965C();
  v78 = sub_274639DEC();
  v79 = MEMORY[0x277CE1180];
  v80 = v70;
  swift_getTupleTypeMetadata();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  sub_27463965C();
  sub_27463965C();
  WitnessTable = swift_getWitnessTable();
  v75 = MEMORY[0x277CDF918];
  v72 = swift_getWitnessTable();
  v73 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  sub_27441CC60(0x776F727473696CLL, 0xE700000000000000, v76, sub_27443276C, &v77);
  sub_274412734(0, qword_28094A770);
  sub_27441AEE4();
  v47 = sub_27463BF4C();

  v86 = v47;
  sub_2744307DC(&v77, v66);
  return sub_274430814(&v77);
}

uint64_t sub_27441C8B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, __int128 a10, __int128 a11, uint64_t a12)
{
  v30 = a5;
  v28 = a4;
  v26 = a3;
  v31 = a1;
  v32 = a2;
  v33 = a8;
  v29 = a12;
  v27 = a11;
  v25 = a10;
  v36 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0);
  sub_27463965C();
  v37 = sub_274639DEC();
  v38 = MEMORY[0x277CE1180];
  v39 = a9;
  swift_getTupleTypeMetadata();
  sub_27463B19C();
  swift_getWitnessTable();
  v14 = sub_27463ADAC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  v18 = sub_27463965C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v25 - v20;
  v36 = v26;
  v37 = v28;
  v38 = v30;
  v39 = a6;
  v40 = a7;
  v41 = a9;
  v42 = v25;
  v43 = v27;
  v44 = v29;
  v22 = type metadata accessor for ListParameterListContentView();
  sub_27441BD64(v31, v32, v22, v17);
  sub_27463A31C();
  WitnessTable = swift_getWitnessTable();
  sub_27463A9FC();
  (*(v15 + 8))(v17, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A490);
  sub_2746392AC();
  v34 = WitnessTable;
  v35 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_27457574C();
  sub_27463A90C();
  return (*(v19 + 8))(v21, v18);
}

uint64_t sub_27441CC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  MEMORY[0x28223BE20](a1);
  *(a5 + 64) = 0;
  *(a5 + 72) = [objc_opt_self() clearColor];
  v9 = sub_2744342DC();
  a4(v9);
  v10 = sub_27463AE9C();

  result = sub_27440CB1C(a3, &qword_28094A4B0);
  *a5 = v10;
  *(a5 + 48) = a1;
  *(a5 + 56) = a2;
  return result;
}

uint64_t sub_27441CD94(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  sub_27463AF4C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_27441CE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v53 = a1;
  v54 = a8;
  v51 = a6;
  v52 = a7;
  v49 = a5;
  v46 = a3;
  v59 = a2;
  v55 = a9;
  v50 = a13;
  v48 = a12;
  v47 = a11;
  v14 = sub_274639EFC();
  v15 = sub_274433D44(&qword_28094A6B8);
  v58 = a4;
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  sub_27463965C();
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  v57 = sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A760);
  v56 = sub_27463965C();
  v74 = a4;
  v75 = v14;
  v76 = a10;
  v77 = v15;
  v39[0] = a10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = sub_274433D44(&qword_28094A6C0);
  v16 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v18 = MEMORY[0x277CDF918];
  v93 = WitnessTable;
  v94 = MEMORY[0x277CDF918];
  v91 = swift_getWitnessTable();
  v92 = MEMORY[0x277CDFC60];
  v89 = swift_getWitnessTable();
  v90 = sub_274434E04(&qword_28094A710);
  v87 = swift_getWitnessTable();
  v88 = v18;
  v45 = v16;
  v85 = swift_getWitnessTable();
  v86 = sub_274434E04(&unk_28094A768);
  v39[1] = swift_getWitnessTable();
  v19 = sub_27463AE6C();
  v20 = *(v19 - 8);
  v41 = v19;
  v42 = v20;
  MEMORY[0x28223BE20](v19);
  v57 = v39 - v21;
  v22 = sub_27463965C();
  v23 = *(v22 - 8);
  v43 = v22;
  v44 = v23;
  MEMORY[0x28223BE20](v22);
  v40 = v39 - v24;
  v25 = v46;
  v60 = v59;
  v61 = v46;
  v26 = v48;
  v27 = v49;
  v62 = v58;
  v63 = v49;
  v29 = v51;
  v28 = v52;
  v64 = v51;
  v65 = v52;
  v30 = v54;
  v66 = v54;
  v67 = a10;
  v31 = v47;
  v68 = v47;
  v69 = v48;
  v32 = v50;
  v70 = v50;
  v71 = v53;
  sub_274639C5C();
  sub_27463AE5C();
  v74 = v59;
  v75 = v25;
  v76 = v58;
  v77 = v27;
  v78 = v29;
  v79 = v28;
  v80 = v30;
  v81 = v39[0];
  v82 = v31;
  v83 = v26;
  v84 = v32;
  type metadata accessor for ListParameterListContentView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A490);
  sub_2746392AC();
  v37 = v41;
  v38 = swift_getWitnessTable();
  sub_27457574C();
  v33 = v40;
  v34 = v57;
  sub_27463A90C();
  (*(v42 + 8))(v34, v37);
  v74 = sub_27441AEE4();
  v72 = v38;
  v73 = MEMORY[0x277CDFC60];
  v35 = v43;
  swift_getWitnessTable();
  sub_27463A32C();
  sub_27463A65C();

  return (*(v44 + 8))(v33, v35);
}

uint64_t sub_27441D420@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, __int128 a10, uint64_t a11)
{
  v47 = a6;
  v45 = a5;
  v44 = a4;
  *(&v40 + 1) = a2;
  *&v40 = a1;
  v56 = a8;
  v43 = a10;
  v42 = sub_274639EFC();
  v41 = sub_274433D44(&qword_28094A6B8);
  *&v70 = a3;
  *(&v70 + 1) = v42;
  *&v71 = a9;
  *(&v71 + 1) = v41;
  v39[1] = MEMORY[0x277CDE668];
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  v46 = sub_27463965C();
  v49 = sub_27463965C();
  v13 = sub_27463965C();
  v51 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v39 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  v16 = sub_27463965C();
  v52 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v39[0] = v39 - v17;
  v18 = sub_27463965C();
  v54 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v48 = v39 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A760);
  v20 = sub_27463965C();
  v55 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v50 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v53 = v39 - v23;
  v70 = v40;
  *&v71 = a3;
  *(&v71 + 1) = v44;
  v72 = v45;
  v73 = v47;
  v74 = a7;
  v75 = a9;
  v76 = v43;
  v77 = a11;
  v24 = type metadata accessor for ListParameterListContentView();
  sub_27441B458(v24, v15);
  v69 = sub_27441AEE4();
  *&v70 = a3;
  *(&v70 + 1) = v42;
  *&v71 = a9;
  *(&v71 + 1) = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_274433D44(&qword_28094A6C0);
  v67 = OpaqueTypeConformance2;
  v68 = v26;
  WitnessTable = swift_getWitnessTable();
  v66 = MEMORY[0x277CDF918];
  v63 = swift_getWitnessTable();
  v64 = MEMORY[0x277CDFC60];
  v27 = swift_getWitnessTable();
  sub_27463A32C();
  v28 = v39[0];
  sub_27463A65C();

  (*(v51 + 8))(v15, v13);
  v29 = sub_274434E04(&qword_28094A710);
  v61 = v27;
  v62 = v29;
  v30 = swift_getWitnessTable();
  v31 = v48;
  sub_27463A9EC();
  (*(v52 + 8))(v28, v16);
  swift_getKeyPath();
  LOBYTE(v72) = 0;
  v70 = 0u;
  v71 = 0u;
  v59 = v30;
  v60 = MEMORY[0x277CDF918];
  v32 = swift_getWitnessTable();
  v33 = v50;
  sub_27463A6CC();

  (*(v54 + 8))(v31, v18);
  v34 = sub_274434E04(&unk_28094A768);
  v57 = v32;
  v58 = v34;
  v35 = swift_getWitnessTable();
  v36 = v53;
  sub_2744E9688(v33, v20, v35);
  v37 = *(v55 + 8);
  v37(v33, v20);
  sub_2744E9688(v36, v20, v35);
  return (v37)(v36, v20);
}

uint64_t sub_27441DB6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v129 = a8;
  v127 = a7;
  v16 = a6;
  v109 = a6;
  v118 = a4;
  v117 = a3;
  v113 = a1;
  v122 = a9;
  v128 = a13;
  v126 = a12;
  v125 = a11;
  v124 = a10;
  v121 = sub_274639AEC();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v77[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = sub_274639F1C();
  v116 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v112 = &v77[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0);
  MEMORY[0x28223BE20](v21 - 8);
  v105 = &v77[-v22];
  v110 = a5;
  v114 = *(a5 + 80);
  v115 = *(a5 + 88);
  v142 = v114;
  v143 = a5;
  v144 = v16;
  v145 = a7;
  v146 = a8;
  v147 = a10;
  v148 = v115;
  v149 = a11;
  v150 = a12;
  v151 = a13;
  v152 = a14;
  v83 = a14;
  v23 = type metadata accessor for ListParameterListContentView();
  v111 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v107 = &v77[-v24];
  WitnessTable = swift_getWitnessTable();
  v103 = v23;
  v26 = v123;
  v142 = v23;
  v143 = v123;
  v144 = WitnessTable;
  v145 = MEMORY[0x277CDE0D0];
  v27 = WitnessTable;
  v104 = WitnessTable;
  v28 = MEMORY[0x277CDE0D0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v108 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v102 = &v77[-v30];
  v142 = v23;
  v143 = v26;
  v144 = v27;
  v145 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_274412BBC();
  v97 = OpaqueTypeMetadata2;
  v142 = OpaqueTypeMetadata2;
  v143 = MEMORY[0x277D837D0];
  v33 = MEMORY[0x277D837D0];
  v144 = OpaqueTypeConformance2;
  v145 = v32;
  v99 = OpaqueTypeConformance2;
  v34 = v32;
  v98 = v32;
  v35 = swift_getOpaqueTypeMetadata2();
  v106 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v101 = &v77[-v36];
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6F0);
  v142 = OpaqueTypeMetadata2;
  v143 = v33;
  v144 = OpaqueTypeConformance2;
  v145 = v34;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D100);
  v40 = sub_274434E04(&unk_28094A700);
  v142 = v39;
  v143 = v40;
  v41 = swift_getOpaqueTypeConformance2();
  v87 = v35;
  v142 = v35;
  v143 = v37;
  v90 = v37;
  v89 = v38;
  v144 = v38;
  v145 = v41;
  v42 = v41;
  v88 = v41;
  v43 = swift_getOpaqueTypeMetadata2();
  v93 = v43;
  v100 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v86 = &v77[-v44];
  v142 = v35;
  v143 = v37;
  v144 = v38;
  v145 = v42;
  v92 = swift_getOpaqueTypeConformance2();
  v142 = v43;
  v143 = v92;
  v94 = MEMORY[0x277CDED18];
  v95 = swift_getOpaqueTypeMetadata2();
  v96 = *(v95 - 8);
  v45 = MEMORY[0x28223BE20](v95);
  v85 = &v77[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v45);
  v91 = &v77[-v47];
  v84 = a2;
  v48 = *(a2 + 24);
  v82 = *(a2 + 16);
  v49 = *(a2 + 40);
  v81 = *(a2 + 32);
  v50 = *(a2 + 56);
  v80 = *(a2 + 48);
  v51 = *(a2 + 72);
  v79 = *(a2 + 64);
  v78 = *(a2 + 80);
  LOBYTE(v35) = *(a2 + 81);
  LOBYTE(v16) = *(a2 + 82);
  v52 = v105;
  sub_27441E720(v105);
  v53 = v113;

  v54 = v109;
  v55 = v110;
  v76 = v16;
  v56 = v107;
  sub_27441E780(v82, v48, v81, v49, v80, v50, v79, v107, v51, v78, v35, v76, 0, v52, v110, v109, v127, v129, v124, v125, v126, v128, a14);
  v57 = v112;
  sub_274639F0C();
  v58 = v102;
  v59 = v103;
  v60 = v123;
  sub_27463AAAC();
  (*(v116 + 8))(v57, v60);
  (*(v111 + 8))(v56, v59);
  v142 = v117;
  v143 = v118;
  v61 = v101;
  v62 = v97;
  sub_27463A79C();
  (*(v108 + 8))(v58, v62);
  v130 = v114;
  v131 = v55;
  v132 = v54;
  v133 = v127;
  v134 = v129;
  v135 = v124;
  v136 = v115;
  v137 = v125;
  v138 = v126;
  v139 = v128;
  v140 = v83;
  v141 = v84;
  v63 = v86;
  v64 = v87;
  sub_27463AA0C();
  (*(v106 + 8))(v61, v64);
  v65 = v120;
  v66 = v119;
  v67 = v121;
  (*(v120 + 104))(v119, *MEMORY[0x277CDDDC0], v121);
  v68 = v85;
  v69 = v93;
  v70 = v92;
  sub_27463A8AC();
  (*(v65 + 8))(v66, v67);
  (*(v100 + 8))(v63, v69);
  v142 = v69;
  v143 = v70;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = v91;
  v73 = v95;
  sub_2744E9688(v68, v95, v71);
  v74 = *(v96 + 8);
  v74(v68, v73);
  sub_2744E9688(v72, v73, v71);
  return (v74)(v72, v73);
}

uint64_t sub_27441E720@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_27441E780@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, char a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *a8 = sub_2744153F4();
  *(a8 + 8) = v27;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 64) = a7;
  *(a8 + 72) = a9;
  *(a8 + 80) = a10;
  *(a8 + 81) = a11;
  *(a8 + 82) = a12;
  *(a8 + 83) = a13;
  v28 = swift_allocObject();
  v29 = *(a15 + 88);
  v28[2] = *(a15 + 80);
  v28[3] = a15;
  v28[4] = a16;
  v28[5] = a17;
  v28[6] = a18;
  v28[7] = a19;
  v28[8] = v29;
  v28[9] = a20;
  v28[10] = a21;
  v28[11] = a22;
  v28[12] = a23;
  *(a8 + 88) = sub_274415E5C();
  *(a8 + 96) = v30;
  *(a8 + 104) = v31 & 1;
  *(a8 + 112) = swift_getKeyPath();
  *(a8 + 152) = 0;
  *(a8 + 160) = swift_getKeyPath();
  *(a8 + 168) = 0;
  v32 = type metadata accessor for ListParameterListContentView();
  sub_274433B6C();
  v33 = a8 + *(v32 + 156);
  *v33 = swift_getKeyPath();
  *(v33 + 8) = 0;
  sub_274430610();
  return sub_27463929C();
}

uint64_t sub_27441E9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v26 = a7;
  v27 = a8;
  v24 = a6;
  v25 = a1;
  v28 = a9;
  v23 = a10;
  v16 = sub_274639EBC();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D100);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v23 - v19;
  sub_274639EAC();
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = v24;
  v34 = v26;
  v35 = v27;
  v36 = v23;
  v37 = a11;
  v38 = a12;
  v39 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809493A0);
  sub_274434E04(&unk_2809493B0);
  sub_27463925C();
  v21 = sub_274434E04(&unk_28094A700);
  MEMORY[0x277C56680](v20, v17, v21);
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_27441EBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v32 = a7;
  v33 = a8;
  v34 = a9;
  v35 = a2;
  v30 = a13;
  v31 = a6;
  v28 = a12;
  v29 = a5;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v40 = a7;
  v41 = a8;
  v42 = a10;
  v43 = a11;
  v44 = a12;
  v45 = a13;
  v17 = type metadata accessor for ListParameterListContentView();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v27 - v19;
  (*(v18 + 16))(&v27 - v19, a1, v17);
  v21 = (*(v18 + 80) + 104) & ~*(v18 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  *(v22 + 3) = a3;
  v23 = v29;
  *(v22 + 4) = a4;
  *(v22 + 5) = v23;
  v24 = v32;
  *(v22 + 6) = v31;
  *(v22 + 7) = v24;
  *(v22 + 8) = v33;
  *(v22 + 9) = a10;
  v25 = v28;
  *(v22 + 10) = a11;
  *(v22 + 11) = v25;
  *(v22 + 12) = v30;
  (*(v18 + 32))(&v22[v21], v20, v17);
  return sub_27463AD5C();
}

uint64_t sub_27441EDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v24 = a6;
  v25 = a7;
  v22 = a5;
  v23 = a11;
  v21 = a9;
  v15 = type metadata accessor for ListParameterOutlineModalEditor();
  v16 = sub_27463C0AC();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v21 - v17;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = v22;
  v30 = v24;
  v31 = v25;
  v32 = a8;
  v33 = a9;
  v34 = a10;
  v35 = a11;
  type metadata accessor for ListParameterListContentView.Model();
  swift_getWitnessTable();
  sub_27463920C();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v15);
  sub_274415718(v18, v19);
}

uint64_t sub_27441EF24@<X0>(uint64_t a1@<X8>)
{
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v2 = qword_28094BB00;
  v3 = sub_27463B66C();
  v4 = sub_27463B66C();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  sub_27463B6AC();
  sub_274412BBC();
  result = sub_27463A53C();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_27441F044@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(void, void), void (*a14)(void, void), uint64_t a15)
{
  v94 = a6;
  v91 = a5;
  v89 = a4;
  v105 = a3;
  v106 = a2;
  v99 = a9;
  v111 = a15;
  v104 = a14;
  v107 = a10;
  v87 = a11;
  v95 = *(a10 - 8);
  v100 = a13;
  v86 = a12;
  v18 = MEMORY[0x28223BE20](a1);
  v98 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v97 = &v82 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0);
  v92 = sub_27463965C();
  v96 = sub_274639DEC();
  v93 = *(v96 - 8);
  v21 = MEMORY[0x28223BE20](v96);
  v110 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v109 = &v82 - v23;
  v85 = sub_274639FEC();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BC50);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v82 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A610);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v83 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v82 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v82 - v36;
  WitnessTable = *(a7 - 1);
  MEMORY[0x28223BE20](v35);
  v39 = &v82 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_27463965C();
  v101 = *(v103 - 8);
  v40 = MEMORY[0x28223BE20](v103);
  v102 = &v82 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v88 = &v82 - v43;
  MEMORY[0x28223BE20](v42);
  v108 = &v82 - v44;
  v45 = *(a1 + 16);
  v125 = v89;
  v126 = v91;
  v127 = v94;
  v128 = a7;
  v91 = a7;
  v129 = a8;
  v130 = v107;
  v131 = v87;
  v132 = v86;
  v133 = v100;
  v134 = v104;
  v135 = v111;
  v46 = type metadata accessor for ListParameterListContentView();
  v47 = *(a1 + 8);
  v89 = v39;
  v48 = v84;
  v45(v106, v47, v105);

  v94 = a1;
  v49 = v85;
  sub_274415FA0();
  (*(v48 + 104))(v34, *MEMORY[0x277CE0558], v49);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v49);
  v50 = *(v26 + 56);
  sub_2744342DC();
  sub_2744342DC();
  if (__swift_getEnumTagSinglePayload(v28, 1, v49) != 1)
  {
    v51 = v83;
    sub_2744342DC();
    if (__swift_getEnumTagSinglePayload(&v28[v50], 1, v49) != 1)
    {
      v52 = v82;
      (*(v48 + 32))(v82, &v28[v50], v49);
      sub_274433D44(&unk_28094BC90);
      LODWORD(v87) = sub_27463B5BC();
      v53 = *(v48 + 8);
      v53(v52, v49);
      sub_27440CB1C(v34, &qword_28094A610);
      sub_27440CB1C(v37, &qword_28094A610);
      v53(v51, v49);
      sub_27440CB1C(v28, &qword_28094A610);
      goto LABEL_8;
    }

    sub_27440CB1C(v34, &qword_28094A610);
    sub_27440CB1C(v37, &qword_28094A610);
    (*(v48 + 8))(v51, v49);
    goto LABEL_6;
  }

  sub_27440CB1C(v34, &qword_28094A610);
  sub_27440CB1C(v37, &qword_28094A610);
  if (__swift_getEnumTagSinglePayload(&v28[v50], 1, v49) != 1)
  {
LABEL_6:
    sub_27440CB1C(v28, &unk_28094BC50);
    goto LABEL_8;
  }

  sub_27440CB1C(v28, &qword_28094A610);
LABEL_8:
  sub_27463B0DC();
  v54 = v88;
  v55 = v91;
  v56 = v100;
  v57 = v89;
  sub_27463A8FC();
  (*(WitnessTable + 8))(v57, v55);
  v123 = v56;
  v124 = MEMORY[0x277CDF678];
  v58 = v103;
  WitnessTable = swift_getWitnessTable();
  sub_2744E9688(v54, v58, WitnessTable);
  v59 = *(v101 + 8);
  v91 = v101 + 8;
  v100 = v59;
  v59(v54, v58);
  v60 = v110;
  v61 = v106;
  v62 = v105;
  v63 = v94;
  sub_27441FCF4(v106, v105, v46, v110);
  v64 = sub_274434E04(&unk_28094A740);
  v65 = v104;
  v121 = v104;
  v122 = v64;
  v119 = swift_getWitnessTable();
  v120 = v65;
  v66 = v96;
  v92 = swift_getWitnessTable();
  sub_2744E9688(v60, v66, v92);
  v67 = v93;
  v104 = *(v93 + 8);
  v104(v60, v66);
  v68 = v63[6];
  v69 = v63[1];
  v70 = v98;
  v68(v61, v69, v62);

  v71 = v97;
  v72 = v107;
  sub_2744E9688(v70, v107, v111);
  v73 = v95;
  v106 = *(v95 + 8);
  v106(v70, v72);
  v74 = v102;
  v75 = v103;
  (*(v101 + 16))(v102, v108, v103);
  v125 = v74;
  v76 = v110;
  (*(v67 + 16))(v110, v109, v66);
  v117 = 0;
  v118 = 0;
  v126 = v76;
  v127 = &v117;
  (*(v73 + 16))(v70, v71, v72);
  v128 = v70;
  v77 = v75;
  v116[0] = v75;
  v116[1] = v66;
  v116[2] = MEMORY[0x277CE1180];
  v116[3] = v72;
  v112 = WitnessTable;
  v113 = v92;
  v114 = MEMORY[0x277CE1170];
  v115 = v111;
  sub_274575750(&v125, 4, v116);
  v78 = v106;
  v106(v71, v72);
  v79 = v104;
  v104(v109, v66);
  v80 = v100;
  v100(v108, v77);
  v78(v70, v72);
  v79(v110, v66);
  return v80(v102, v77);
}

uint64_t sub_27441FCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  *&v76 = a1;
  v81 = a4;
  v68 = *(a3 + 16);
  v71 = sub_27463AF4C();
  v70 = *(v71 - 8);
  v67 = *(v70 + 64);
  v8 = MEMORY[0x28223BE20](v71);
  v69 = &v64 - v9;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v66 = v12;
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  v77 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v83 = &v64 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0);
  v20 = sub_27463965C();
  v74 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v73 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v72 = &v64 - v23;
  v75 = v24;
  v82 = v15;
  v25 = sub_274639DEC();
  v79 = *(v25 - 8);
  v80 = v25;
  MEMORY[0x28223BE20](v25);
  v78 = &v64 - v26;
  v27 = *(v5 + 8);
  v28 = *((*MEMORY[0x277D85000] & *v27) + 0xD0);
  v29 = v27;
  v30 = v28(a2);

  if (v30)
  {

    v31 = *(v5 + 32);
    v32 = v29;
    v33 = v76;
    v65 = a2;
    v31(v76, v32, a2);

    (*(v10 + 16))(v13, v5, a3);
    v34 = v70;
    v35 = v69;
    v36 = v33;
    v37 = v71;
    (*(v70 + 16))(v69, v36, v71);
    v38 = (*(v10 + 80) + 104) & ~*(v10 + 80);
    v39 = (v66 + v38 + *(v34 + 80)) & ~*(v34 + 80);
    v40 = (v67 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    *(v41 + 16) = v68;
    *(v41 + 24) = *(a3 + 24);
    v42 = v82;
    *(v41 + 40) = *(a3 + 40);
    *(v41 + 48) = v42;
    *(v41 + 56) = *(a3 + 56);
    *(v41 + 72) = *(a3 + 72);
    v76 = *(a3 + 88);
    *(v41 + 88) = v76;
    (*(v10 + 32))(v41 + v38, v13, a3);
    (*(v34 + 32))(v41 + v39, v35, v37);
    *(v41 + v40) = v65;
    type metadata accessor for CollectionPropertyListItemConfiguration();
    v43 = swift_allocObject();
    *(v43 + 16) = sub_274431FDC;
    *(v43 + 24) = v41;
    sub_274433D44(&unk_28094A750);
    v44 = v76;
    v45 = v73;
    v46 = v82;
    v47 = v83;
    sub_27463A7AC();

    (*(v77 + 8))(v47, v46);
    v48 = sub_274434E04(&unk_28094A740);
    v84 = v76;
    v85 = v48;
    v49 = v75;
    WitnessTable = swift_getWitnessTable();
    v51 = v72;
    sub_2744E9688(v45, v49, WitnessTable);
    v52 = *(v74 + 8);
    v52(v45, v49);
    sub_2744E9688(v51, v49, WitnessTable);
    v53 = v78;
    sub_27456E7CC();
    v52(v45, v49);
    v52(v51, v49);
  }

  else
  {
    v54 = *(v5 + 32);
    v55 = v29;
    v54(v76, v55, a2);

    v44 = *(a3 + 88);
    v56 = v82;
    v57 = v83;
    sub_2744E9688(v18, v82, v44);
    v58 = *(v77 + 8);
    v58(v18, v56);
    sub_2744E9688(v57, v56, v44);
    v59 = sub_274434E04(&unk_28094A740);
    v90 = v44;
    v91 = v59;
    swift_getWitnessTable();
    v53 = v78;
    sub_27456E878();
    v58(v18, v56);
    v58(v57, v56);
  }

  v60 = sub_274434E04(&unk_28094A740);
  v88 = v44;
  v89 = v60;
  v86 = swift_getWitnessTable();
  v87 = v44;
  v61 = v80;
  v62 = swift_getWitnessTable();
  sub_2744E9688(v53, v61, v62);
  return (*(v79 + 8))(v53, v61);
}

id sub_274420558(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemGray5Color;
  if (v1 != 2)
  {
    v3 = &selRef_whiteColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t sub_2744205C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v45 = a7;
  v46 = a8;
  v43 = a13;
  v44 = a6;
  v41 = a12;
  v42 = a5;
  v40 = a11;
  v47 = *(a4 - 8);
  v48 = a3;
  MEMORY[0x28223BE20](a1);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v18 = (&v38 - v17);
  v39 = type metadata accessor for ListParameterOutlineModalEditor();
  v19 = sub_27463C0AC();
  MEMORY[0x28223BE20](v19 - 8);
  v38 = &v38 - v20;
  v49 = a4;
  v50 = v42;
  v51 = v44;
  v52 = v45;
  v53 = v46;
  v54 = a9;
  v55 = a10;
  v56 = v40;
  v57 = v41;
  v58 = v43;
  type metadata accessor for ListParameterListContentView.Model();
  swift_getWitnessTable();
  v21 = v18;
  sub_27463920C();
  v22 = sub_27463AF4C();
  sub_27463AF3C();
  MEMORY[0x277C575F0](v22);
  v23 = (*(a10 + 24))(a4, a10);
  v25 = v24;
  v47[1](v15, a4);
  if (!v25)
  {
    v26 = v48;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
    }

    else
    {
      v47 = v18;
      sub_27463B70C();
      sub_27463B70C();
      if (qword_2809492C0 == -1)
      {
LABEL_5:
        v27 = qword_28094BB00;
        v28 = sub_27463B66C();

        v29 = sub_27463B66C();

        v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

        sub_27463B6AC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
        v31 = swift_allocObject();
        v32 = MEMORY[0x277D83B88];
        *(v31 + 16) = xmmword_274648570;
        v33 = MEMORY[0x277D83C10];
        *(v31 + 56) = v32;
        *(v31 + 64) = v33;
        *(v31 + 32) = v26 + 1;
        v23 = sub_27463B67C();
        v25 = v34;

        v21 = v47;
        goto LABEL_6;
      }
    }

    swift_once();
    goto LABEL_5;
  }

  v26 = v48;
LABEL_6:
  v35 = v38;
  sub_27441532C(v21, v23, v25, v26, v38);
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v39);
  sub_274415718(v35, v36);
}

uint64_t sub_274420A14()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 112);
  v3 = v2;
  v1();

  sub_27463B92C();
  OUTLINED_FUNCTION_6_0();
  swift_getWitnessTable();
  sub_27463BABC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A498);
  return sub_27463BB7C() & 1;
}

uint64_t sub_274420B0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  if (*(v2 + 82) == 1)
  {
    OUTLINED_FUNCTION_91();
    v10 = *(v9 + 112);
    v12 = v11;
    v10();

    OUTLINED_FUNCTION_97();

    v13 = v8;
    (*(*(a2 + 64) + 48))(v4);
    v14 = OUTLINED_FUNCTION_88();
    v15(v14);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_274420C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_24();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  OUTLINED_FUNCTION_4_0();
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v32 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480);
  OUTLINED_FUNCTION_53_0(v33);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  v37 = sub_27463B9FC();
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v37);
  (*(v28 + 16))(v32, v20, v24);
  sub_27463B9CC();
  v38 = sub_27463B9BC();
  v39 = (*(v28 + 80) + 120) & ~*(v28 + 80);
  v40 = (v30 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = MEMORY[0x277D85700];
  *(v41 + 16) = v38;
  *(v41 + 24) = v42;
  v43 = *(v24 + 32);
  *(v41 + 32) = *(v24 + 16);
  *(v41 + 48) = v43;
  v44 = *(v24 + 64);
  *(v41 + 64) = *(v24 + 48);
  *(v41 + 80) = v44;
  *(v41 + 96) = *(v24 + 80);
  *(v41 + 112) = *(v24 + 96);
  (*(v28 + 32))(v41 + v39, v32, v24);
  *(v41 + v40) = v26;
  sub_27451222C();

  OUTLINED_FUNCTION_23();
}

uint64_t sub_274420E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v16;
  *(v8 + 208) = v17;
  *(v8 + 184) = v15;
  *(v8 + 168) = v14;
  *(v8 + 152) = v13;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 104) = a1;
  *(v8 + 112) = a4;
  sub_27463B9CC();
  *(v8 + 216) = sub_27463B9BC();
  v10 = sub_27463B96C();
  *(v8 + 224) = v10;
  *(v8 + 232) = v9;

  return MEMORY[0x2822009F8](sub_274420EDC, v10, v9);
}

uint64_t sub_274420EDC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 112);
  v3 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  v4 = *(v0 + 160);
  v5 = *(v0 + 176);
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  v6 = *(v0 + 192);
  *(v0 + 64) = v5;
  *(v0 + 80) = v6;
  *(v0 + 96) = v1;
  type metadata accessor for ListParameterListContentView();
  *(v0 + 240) = *(v2 + 8);
  OUTLINED_FUNCTION_91();
  v8 = *(v7 + 176);
  v9;
  v13 = (v8 + *v8);
  v10 = swift_task_alloc();
  *(v0 + 248) = v10;
  *v10 = v0;
  v10[1] = sub_274421048;
  v11 = *(v0 + 120);

  return v13(v11);
}

uint64_t sub_274421048()
{
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  *v3 = v2;
  v4 = v1[30];
  v5 = *v0;
  OUTLINED_FUNCTION_70();
  *v6 = v5;
  *(v8 + 256) = v7;

  v9 = v1[29];
  v10 = v1[28];

  return MEMORY[0x2822009F8](sub_274421188, v10, v9);
}

uint64_t sub_274421188()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 256);
  v2 = *(v0 + 104);

  *v2 = v1;
  OUTLINED_FUNCTION_92();

  return v3();
}

uint64_t sub_2744211EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  if (*(v2 + 81) == 1)
  {
    OUTLINED_FUNCTION_91();
    v10 = *(v9 + 112);
    v12 = v11;
    v10();

    OUTLINED_FUNCTION_97();

    v13 = v8;
    (*(*(a2 + 64) + 56))(v4);
    v14 = OUTLINED_FUNCTION_88();
    v15(v14);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_274421324(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  if (a1 < a2 && (v6 = __OFADD__(a2, 1), ++a2, v6))
  {
    __break(1u);
  }

  else
  {
    v7 = v5;
    (*((*MEMORY[0x277D85000] & *v5) + 0xC8))(a1, a2);
  }
}

uint64_t sub_27442140C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_35_0();
  v2 = sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_65();
  v6();
  sub_2745C4778();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_274421518()
{
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();
}

void sub_274421658()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  v5 = *(*v0 + 80);
  v6.i64[0] = v5;
  v18 = v6;
  v7 = *(v3 + 112);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_35_0();
  v8 = sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20]();
  v12 = &v16.i8[-v11];
  v25 = v7;
  v26 = *(v4 + 120);
  v16 = *(v4 + 88);
  v17 = v26;
  v13 = vzip1q_s64(v18, v16);
  v14 = *(v4 + 96);
  v23 = v13;
  v24 = v14;
  v13.i64[0] = *(v4 + 104);
  v18 = v13;
  swift_getKeyPath();
  v19 = v5;
  v20 = v16;
  *&v15 = v18.i64[0];
  *(&v15 + 1) = v7;
  v22 = v17;
  v21 = v15;
  swift_getKeyPath();
  (*(v10 + 16))(v12, v2, v8);

  sub_274638FBC();
  (*(v10 + 8))(v2, v8);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_274421834()
{
  v1 = *(*v0 + 136);
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  v2 = sub_274638FCC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + *(*v0 + 144), v2);
  return v0;
}

uint64_t sub_27442194C(uint64_t (*a1)(void))
{
  a1();

  return MEMORY[0x2821FE8D8]();
}

uint64_t sub_274421A10()
{
  v1 = *v0;
  v12[2] = *(*v0 + 112);
  v12[1] = v1[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = AssociatedTypeWitness;
  sub_27463C0AC();
  v15 = sub_274638FCC();
  v3 = *(v15 - 8);
  v4 = MEMORY[0x28223BE20](v15);
  v6 = v12 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v13 = v1[17];
  __swift_storeEnumTagSinglePayload(v12 - v7, 1, 1, AssociatedTypeWitness);
  v12[0] = v1[11];
  sub_27442140C(v8);
  v9 = *(v3 + 32);
  v10 = v15;
  v9(v0 + v13, v6, v15);
  v13 = *(*v0 + 144);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_27442140C(v8);
  v9(v0 + v13, v6, v10);
  return v0;
}

uint64_t sub_274421CBC()
{
  type metadata accessor for StackList.StackListModel();
  swift_getWitnessTable();
  return sub_2746391FC();
}

uint64_t sub_274421D48@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StackList.StackListModel();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

uint64_t sub_274421DF4()
{
  type metadata accessor for StackList.StackListModel();
  swift_getWitnessTable();
  return sub_27463921C();
}

uint64_t sub_274421E84@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v79 = sub_274639ABC();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v84 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_274639F2C();
  MEMORY[0x28223BE20](v4 - 8);
  v85 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 2);
  sub_27463AF4C();
  swift_getTupleTypeMetadata2();
  v7 = sub_27463B92C();
  v8 = *(a1 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v103 = *(a1 + 7);
  v114 = v6;
  v102 = *(a1 + 24);
  v89 = a1;
  v115 = v102;
  v116 = v8;
  v117 = v103;
  v104 = v8;
  type metadata accessor for StackListRow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  v10 = sub_27463965C();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v114 = v7;
  *&v115 = AssociatedTypeWitness;
  *(&v115 + 1) = v10;
  v116 = WitnessTable;
  v117 = AssociatedConformanceWitness;
  sub_27463AF9C();
  v101 = *(a1 + 5);
  sub_27463965C();
  v13 = v6;
  type metadata accessor for DismissDeleteConfirmationModifier();
  sub_27463965C();
  sub_27463965C();
  sub_27463C0AC();
  swift_getTupleTypeMetadata2();
  v14 = sub_27463B19C();
  v15 = swift_getWitnessTable();
  v16 = sub_27463913C();
  v83 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v87 = &v76 - v17;
  v18 = sub_27463965C();
  v19 = swift_getWitnessTable();
  v112 = v19;
  v113 = MEMORY[0x277CDF918];
  v20 = swift_getWitnessTable();
  v90 = v16;
  v114 = v16;
  *&v115 = v18;
  v100 = v18;
  v98 = v19;
  *(&v115 + 1) = v19;
  v116 = v20;
  v97 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v82 = *(OpaqueTypeMetadata2 - 8);
  v22 = (MEMORY[0x28223BE20])(OpaqueTypeMetadata2);
  v81 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = (MEMORY[0x28223BE20])(v22);
  v80 = &v76 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v76 - v26;
  v92 = v14;
  v91 = v15;
  v28 = sub_27463AE6C();
  v86 = *(v28 - 8);
  v29 = (MEMORY[0x28223BE20])(v28);
  v31 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v76 - v32;
  v95 = OpaqueTypeMetadata2;
  v96 = sub_274639DEC();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v35 = &v76 - v34;
  v36 = v93;
  sub_2744C6ABC();
  v37 = v116;
  sub_27440CB1C(&v114, &unk_2809507C0);
  v88 = &v76;
  v105 = v13;
  v106 = v102;
  v38 = *(v89 + 8);
  *&v39 = v103;
  *(&v39 + 1) = v38;
  *&v40 = v101;
  *(&v40 + 1) = v104;
  v107 = v40;
  v108 = v39;
  v109 = v36;
  sub_274639C5C();
  if (v37)
  {
    sub_27463AE5C();
    v41 = swift_getWitnessTable();
    sub_2744E9688(v31, v28, v41);
    v42 = *(v86 + 8);
    v42(v31, v28);
    sub_2744E9688(v33, v28, v41);
    v43 = v90;
    v104 = v33;
    v44 = v100;
    v114 = v90;
    *&v115 = v100;
    v45 = v98;
    v46 = v97;
    *(&v115 + 1) = v98;
    v116 = v97;
    swift_getOpaqueTypeConformance2();
    sub_27456E7CC();
    v42(v31, v28);
    v42(v104, v28);
    v47 = v43;
    v48 = v44;
    v49 = v45;
    v50 = v46;
  }

  else
  {
    v77 = v27;
    v86 = v28;
    v89 = v35;
    v51 = v84;
    v52 = v90;
    sub_274423E18();
    v53 = sub_27463912C();
    v54 = *(v36 + 168);
    if (*(v36 + 176) != 1)
    {

      sub_27463BC0C();
      v55 = sub_27463A2FC();
      sub_274638CEC();

      sub_274639AAC();
      swift_getAtKeyPath();
      sub_2743F45E8(v54, 0);
      v53 = (*(v78 + 8))(v51, v79);
    }

    v56 = v83;
    v57 = MEMORY[0x28223BE20](v53);
    v57.i64[0] = v13;
    *&v59 = vdupq_laneq_s64(v58, 1).u64[0];
    *(&v59 + 1) = v60;
    *(&v76 - 4) = vzip1q_s64(v57, v58);
    *(&v76 - 3) = v59;
    *(&v76 - 4) = v61;
    *(&v76 - 3) = v62;
    *(&v76 - 2) = v38;
    v63 = swift_checkMetadataState();
    v64 = v80;
    v47 = v52;
    v49 = v98;
    v50 = v97;
    v65 = v87;
    sub_27463A60C();
    (*(v56 + 8))(v65, v52);
    v114 = v52;
    *&v115 = v63;
    *(&v115 + 1) = v49;
    v116 = v50;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v67 = v77;
    v68 = v95;
    sub_2744E9688(v64, v95, OpaqueTypeConformance2);
    v69 = *(v82 + 8);
    v69(v64, v68);
    v70 = v81;
    sub_2744E9688(v67, v68, OpaqueTypeConformance2);
    swift_getWitnessTable();
    v35 = v89;
    sub_27456E878();
    v69(v70, v68);
    v48 = v100;
    v69(v77, v68);
  }

  v71 = swift_getWitnessTable();
  v114 = v47;
  *&v115 = v48;
  *(&v115 + 1) = v49;
  v116 = v50;
  v72 = swift_getOpaqueTypeConformance2();
  v110 = v71;
  v111 = v72;
  v73 = v96;
  v74 = swift_getWitnessTable();
  sub_2744E9688(v35, v73, v74);
  return (*(v94 + 8))(v35, v73);
}

uint64_t sub_274422A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  v7 = sub_27463AF4C();
  MEMORY[0x28223BE20](v7 - 8);
  v109 = &v96 - v8;
  *(&v126 + 1) = v5;
  v9 = type metadata accessor for DismissDeleteConfirmationModifier();
  v111 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v110 = &v96 - v10;
  v11 = sub_274639ABC();
  v97 = *(v11 - 8);
  v98 = v11;
  MEMORY[0x28223BE20](v11);
  v96 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v126 = *(a1 + 40);
  v101 = *(v126 - 8);
  MEMORY[0x28223BE20](v13);
  v100 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_27463965C();
  v102 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v118 = v16;
  v119 = &v96 - v17;
  v133 = v9;
  v18 = sub_27463965C();
  v106 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v105 = &v96 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  v132 = v18;
  v20 = sub_27463965C();
  v108 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v107 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v103 = &v96 - v23;
  MEMORY[0x28223BE20](v24);
  v104 = &v96 - v25;
  v129 = v26;
  v123 = sub_27463C0AC();
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v120 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v122 = &v96 - v29;
  sub_27463AF4C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = sub_27463B92C();
  v117 = v30;
  v137 = *(a1 + 24);
  v31 = *(a1 + 56);
  *&v170[1] = v137;
  v170[0] = v4;
  v170[3] = v5;
  v170[4] = v31;
  v125 = type metadata accessor for StackListRow();
  v32 = sub_27463965C();
  v114 = v32;
  WitnessTable = swift_getWitnessTable();
  v116 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v170[0] = v30;
  v170[1] = AssociatedTypeWitness;
  v170[2] = v32;
  v170[3] = WitnessTable;
  v170[4] = AssociatedConformanceWitness;
  v131 = sub_27463AF9C();
  v128 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v130 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v35);
  v134 = &v96 - v37;
  v171 = (*((*MEMORY[0x277D85000] & **v2) + 0x88))(v36);
  v172 = v38;
  v173 = v39;
  sub_27463B92C();
  v40 = sub_27463AF4C();
  v170[24] = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  MEMORY[0x277C57F10](v170, v40, v41);

  v171 = v170[0];
  v172 = v170[1];
  v173 = v170[2];
  v142 = v4;
  v42 = *(a1 + 64);
  v99 = v31;
  *&v43 = v31;
  v127 = v42;
  *(&v43 + 1) = v42;
  v143 = v137;
  v135 = v126;
  v136 = v43;
  v144 = v126;
  v145 = v43;
  sub_27463C5BC();
  swift_getWitnessTable();
  v44 = v112;
  v45 = sub_27463B7BC();

  v171 = v45;
  v138 = v4;
  v139 = v137;
  v141 = v136;
  v140 = v135;
  swift_getKeyPath();
  (*(*(a1 - 8) + 16))(v170, v44, a1);
  v46 = swift_allocObject();
  *(v46 + 16) = v4;
  v47 = v136;
  *(v46 + 24) = v137;
  *(v46 + 56) = v47;
  *(v46 + 40) = v135;
  memcpy((v46 + 72), v170, 0xB1uLL);
  v48 = swift_allocObject();
  v49 = v4;
  *(v48 + 16) = v4;
  v50 = v136;
  *(v48 + 24) = v137;
  *(v48 + 56) = v50;
  *(v48 + 40) = v135;
  *(v48 + 72) = sub_274432920;
  *(v48 + 80) = v46;
  v51 = swift_getWitnessTable();
  v52 = sub_274434E04(&qword_28094A710);
  v168 = v51;
  v169 = v52;
  v95 = swift_getWitnessTable();
  v53 = v130;
  sub_27463AF7C();
  v167 = v95;
  v54 = v131;
  AssociatedConformanceWitness = swift_getWitnessTable();
  sub_2744E9688(v53, v54, AssociatedConformanceWitness);
  v116 = *(v128 + 8);
  v117 = v128 + 8;
  v55 = v116(v53, v54);
  v56 = *(v44 + 24);
  v57 = MEMORY[0x277CDFC60];
  v125 = v52;
  if (v56 == 1)
  {
    v58 = v127;
    v59 = v100;
    (*(v44 + 32))(v55);
    v60 = *(v44 + 88);
    if ((*(v44 + 96) & 1) == 0)
    {

      sub_27463BC0C();
      v61 = sub_27463A2FC();
      sub_274638CEC();

      v62 = v96;
      sub_274639AAC();
      swift_getAtKeyPath();
      sub_2743F45E8(v60, 0);
      (*(v97 + 8))(v62, v98);
    }

    v63 = v126;
    sub_27457574C();
    sub_27463A90C();
    (*(v101 + 8))(v59, v63);
    v64 = sub_274421DF4();
    MEMORY[0x28223BE20](v64);
    swift_getKeyPath();
    v170[0] = v49;
    *&v170[1] = v137;
    *&v170[5] = v136;
    *&v170[3] = v135;
    type metadata accessor for StackList.StackListModel();
    swift_getWitnessTable();
    v65 = v109;
    sub_27463952C();

    v66 = v110;
    sub_274424FAC(v65, v110);
    v150 = v58;
    v151 = MEMORY[0x277CDFC60];
    v67 = v118;
    v68 = swift_getWitnessTable();
    v69 = v105;
    v70 = v133;
    v71 = v119;
    MEMORY[0x277C57160](v66, v67, v133, v68);
    (*(v111 + 8))(v66, v70);
    (*(v102 + 8))(v71, v67);
    v170[0] = *(v44 + 16);

    v72 = swift_getWitnessTable();
    v148 = v68;
    v149 = v72;
    v73 = v132;
    v74 = swift_getWitnessTable();
    sub_27463A32C();
    v75 = v103;
    sub_27463A65C();

    (*(v106 + 8))(v69, v73);
    v146 = v74;
    v147 = v125;
    v76 = v129;
    v77 = swift_getWitnessTable();
    v78 = v104;
    sub_2744E9688(v75, v76, v77);
    v79 = v108;
    v80 = *(v108 + 8);
    v80(v75, v76);
    v81 = v107;
    sub_2744E9688(v78, v76, v77);
    v80(v78, v76);
    v82 = v120;
    (*(v79 + 32))(v120, v81, v76);
    __swift_storeEnumTagSinglePayload(v82, 0, 1, v76);
  }

  else
  {
    v82 = v120;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v129);
    v165 = v127;
    v166 = v57;
    v83 = swift_getWitnessTable();
    v84 = swift_getWitnessTable();
    v163 = v83;
    v164 = v84;
    v161 = swift_getWitnessTable();
    v162 = v52;
    swift_getWitnessTable();
  }

  v85 = v122;
  sub_2745758B8(v82, v122);
  v86 = v121;
  v87 = *(v121 + 8);
  v88 = v123;
  v87(v82, v123);
  v89 = v130;
  v90 = v131;
  (*(v128 + 16))(v130, v134, v131);
  v170[0] = v89;
  (*(v86 + 16))(v82, v85, v88);
  v170[1] = v82;
  v171 = v90;
  v172 = v88;
  v159 = AssociatedConformanceWitness;
  v157 = v127;
  v158 = MEMORY[0x277CDFC60];
  v91 = swift_getWitnessTable();
  v92 = swift_getWitnessTable();
  v155 = v91;
  v156 = v92;
  v153 = swift_getWitnessTable();
  v154 = v125;
  v152 = swift_getWitnessTable();
  v160 = swift_getWitnessTable();
  sub_274575750(v170, 2, &v171);
  v87(v85, v88);
  v93 = v116;
  v116(v134, v90);
  v87(v82, v88);
  return v93(v89, v90);
}

void sub_274423B64()
{
  OUTLINED_FUNCTION_24();
  v30 = v0;
  v31 = v1;
  v3 = v2;
  v5 = v4;
  v28 = v6;
  v29 = v7;
  v9 = v8;
  v32 = v10;
  v33 = v11;
  sub_27463AF4C();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  v12 = sub_27463B92C();
  OUTLINED_FUNCTION_30();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for StackListRow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  OUTLINED_FUNCTION_69();
  v14 = sub_27463965C();
  OUTLINED_FUNCTION_6_0();
  v34 = v12;
  v35 = AssociatedTypeWitness;
  v36 = v14;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_27463AF9C();
  sub_27463965C();
  type metadata accessor for DismissDeleteConfirmationModifier();
  OUTLINED_FUNCTION_20_0();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_77();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_35_0();
  v15 = sub_27463B19C();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v27 - v22;
  v34 = v9;
  v35 = v28;
  v36 = v29;
  WitnessTable = v5;
  AssociatedConformanceWitness = v3;
  v39 = v30;
  v40 = v31;
  v24 = type metadata accessor for StackList();
  sub_274422A9C(v24, v20);
  OUTLINED_FUNCTION_0_3();
  v25 = swift_getWitnessTable();
  sub_2744E9688(v20, v15, v25);
  v26 = *(v17 + 8);
  v26(v20, v15);
  sub_2744E9688(v23, v15, v25);
  v26(v23, v15);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_274423E18()
{
  sub_274639F2C();
  sub_274433D44(&unk_28094DE80);
  return sub_27463C7DC();
}

uint64_t sub_274423E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a1;
  v15[2] = a2;
  sub_27463AF4C();
  swift_getTupleTypeMetadata2();
  v2 = sub_27463B92C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for StackListRow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  v15[5] = v2;
  v15[6] = AssociatedTypeWitness;
  v15[7] = sub_27463965C();
  v15[8] = swift_getWitnessTable();
  v15[9] = swift_getAssociatedConformanceWitness();
  sub_27463AF9C();
  sub_27463965C();
  type metadata accessor for DismissDeleteConfirmationModifier();
  sub_27463965C();
  sub_27463965C();
  sub_27463C0AC();
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463913C();
  v4 = sub_27463965C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  sub_27463A31C();
  WitnessTable = swift_getWitnessTable();
  sub_27463A9FC();
  v15[3] = WitnessTable;
  v15[4] = MEMORY[0x277CDF918];
  v12 = swift_getWitnessTable();
  sub_2744E9688(v8, v4, v12);
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_2744E9688(v10, v4, v12);
  return (v13)(v10, v4);
}

uint64_t sub_274424218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_27463AF4C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 16))(a2, a1, TupleTypeMetadata2);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, TupleTypeMetadata2);
}

uint64_t sub_27442430C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v28 = a7;
  v29 = a8;
  v26 = a5;
  v27 = a6;
  v25 = a3;
  v15 = sub_27463AF4C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v24 - v21;
  (*(v16 + 16))(&v24 - v21, a2, v15, v20);
  sub_274430770(v22, v18);
  sub_27442447C(a1, v25, a4, v26, v27, v28, v29, a9, a10, a11);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_27442447C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v88 = a6;
  v85 = a1;
  v80 = a8;
  v81 = a10;
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  v15 = sub_27463AF4C();
  MEMORY[0x28223BE20](v15 - 8);
  v77 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v84 = &v66 - v18;
  v19 = *(a3 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a3;
  v92 = a4;
  v82 = a5;
  v93 = a5;
  v94 = a7;
  v95 = a9;
  v23 = type metadata accessor for StackListRow();
  v74 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v72 = &v66 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  v76 = v23;
  v25 = sub_27463965C();
  v78 = *(v25 - 8);
  v79 = v25;
  MEMORY[0x28223BE20](v25);
  v73 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v75 = &v66 - v28;
  v29 = *a2;
  v87 = a2;
  LODWORD(a2) = *(a2 + 8);
  v86 = v29;
  v83 = a9;
  v30 = a4;
  if (a2 == 1)
  {
    v31 = v82;
    v32 = v81;
    sub_274424C64();
    v71 = (*(a7 + 48))(a3, a7);
    v33 = a3;
    (*(v19 + 8))(v22, a3);
    v34 = v31;
  }

  else
  {
    v32 = v81;
    v33 = a3;
    v71 = 0;
    v34 = v82;
  }

  v35 = v87;
  if (*(v87 + 9) == 1)
  {
    sub_274424C64();
    LODWORD(v81) = (*(a7 + 56))(v33, a7);
    (*(v19 + 8))(v22, v33);
  }

  else
  {
    LODWORD(v81) = 0;
  }

  v36 = *((*MEMORY[0x277D85000] & *v86) + 0x70);
  v82 = *(v35 + 16);

  v36(v37);
  v38 = sub_27463B8BC();

  if (__OFSUB__(v38, 1))
  {
    __break(1u);
  }

  else
  {
    v40 = v33;
    v41 = a7;
    if (v38 - 1 <= v85)
    {
      v70 = *(v87 + 24);
    }

    else
    {
      v70 = 1;
    }

    v42 = v88;
    v91 = v40;
    v92 = v30;
    v43 = v34;
    v93 = v34;
    v94 = v88;
    v44 = v83;
    v95 = v41;
    v96 = v83;
    v97 = v32;
    v69 = type metadata accessor for StackList();
    v45 = sub_274421DF4();
    MEMORY[0x28223BE20](v45);
    *(&v66 - 8) = v40;
    *(&v66 - 7) = v30;
    swift_getKeyPath();
    v68 = v40;
    v91 = v40;
    v92 = v30;
    v67 = v30;
    v93 = v43;
    v94 = v42;
    v95 = v41;
    v96 = v44;
    v97 = v32;
    type metadata accessor for StackList.StackListModel();
    swift_getWitnessTable();
    sub_27463952C();

    v46 = v87;
    v47 = sub_274421DF4();
    MEMORY[0x28223BE20](v47);
    *(&v66 - 8) = v68;
    *(&v66 - 7) = v30;
    v61 = v43;
    v62 = v88;
    v63 = v41;
    v64 = v44;
    v65 = v32;
    swift_getKeyPath();
    v48 = v77;
    sub_27463952C();

    v50 = *(v46 + 48);
    v49 = *(v46 + 56);
    v51 = v82;

    v61 = v50;
    v52 = v72;
    sub_274424D78(v85, v86, v71 & 1, v81 & 1, v51, v70, v84, v48, v72, v61, v49, v67, v43, v44);
    v91 = v51;
    v53 = v76;
    WitnessTable = swift_getWitnessTable();
    sub_27463A32C();
    v55 = v73;
    sub_27463A65C();

    (*(v74 + 8))(v52, v53);
    v56 = sub_274434E04(&qword_28094A710);
    v89 = WitnessTable;
    v90 = v56;
    v57 = v79;
    v58 = swift_getWitnessTable();
    v59 = v75;
    sub_2744E9688(v55, v57, v58);
    v60 = *(v78 + 8);
    v60(v55, v57);
    sub_2744E9688(v59, v57, v58);
    return (v60)(v59, v57);
  }

  return result;
}

uint64_t sub_274424C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_35_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_75();
  (*(v8 + 16))(v5, a1);
  return a5(v5);
}

uint64_t sub_274424D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  v15 = *(a12 + 88);
  *&v27 = *(a12 + 80);
  *(&v27 + 1) = a12;
  *&v28 = a13;
  *(&v28 + 1) = v15;
  v29 = a14;
  v16 = type metadata accessor for StackListRow();
  v17 = v16[20];
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  v18 = sub_27463AF4C();
  v19 = *(*(v18 - 8) + 32);
  v19(a9 + v17, a7, v18);
  v19(a9 + v16[21], a8, v18);
  v20 = (a9 + v16[22]);
  *v20 = a10;
  v20[1] = a11;
  v21 = a9 + v16[23];
  sub_27442538C(&v27);
  v22 = v28;
  *v21 = v27;
  *(v21 + 16) = v22;
  *(v21 + 32) = v29;
  v23 = a9 + v16[24];
  result = swift_getKeyPath();
  *v23 = result;
  *(v23 + 8) = 0;
  *(a9 + v16[25]) = 0x4054000000000000;
  return result;
}

uint64_t sub_274424F28(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  sub_27463AF4C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_274424FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  v4 = sub_27463AF4C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_27442504C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_27463C0AC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_27463AF4C();
  sub_27463AEBC();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_274425178(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_35_0();
  v3 = sub_27463AF4C();
  return a2(v3);
}

uint64_t sub_2744251EC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_27463C0AC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_27463AF4C();
  sub_27463AEBC();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_274425318(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_35_0();
  v3 = sub_27463AF4C();
  return a2(v3);
}

double sub_27442538C@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CGRect(0);
  sub_27463ACDC();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_2744253E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v45 = *(*(a1 + 40) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v39 = &v38 - v4;
  v47 = v5;
  v6 = sub_27463C0AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v46 = &v38 - v7;
  v41 = *(v2 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27463AF4C();
  v40 = sub_27463C0AC();
  v12 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v14 = &v38 - v13;
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v16);
  v42 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v21);
  v48 = &v38 - v22;
  sub_274425178(a1, MEMORY[0x277CE11D8]);
  sub_274425A2C(v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v11) == 1)
  {
    (*(v12 + 8))(v14, v40);
    v23 = 1;
  }

  else
  {
    MEMORY[0x277C575F0](v11);
    (*(*(v11 - 8) + 8))(v14, v11);
    sub_27463C39C();
    (*(v41 + 8))(v10, v2);
    v23 = 0;
  }

  v24 = v47;
  __swift_storeEnumTagSinglePayload(v20, v23, 1, v47);
  v25 = v48;
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = *(v15 + 16);
  v28 = v46;
  v27(v46, v48, v6);
  v27((v28 + v26), v20, v6);
  if (__swift_getEnumTagSinglePayload(v28, 1, v24) != 1)
  {
    v31 = v42;
    v27(v42, v28, v6);
    if (__swift_getEnumTagSinglePayload(v28 + v26, 1, v24) != 1)
    {
      v33 = v44;
      v34 = v39;
      (*(v44 + 32))(v39, v28 + v26, v24);
      swift_getAssociatedConformanceWitness();
      v30 = sub_27463B5BC();
      v35 = *(v33 + 8);
      v35(v34, v24);
      v36 = *(v15 + 8);
      v36(v20, v6);
      v36(v48, v6);
      v35(v31, v24);
      v36(v28, v6);
      return v30 & 1;
    }

    v32 = *(v15 + 8);
    v32(v20, v6);
    v32(v48, v6);
    (*(v44 + 8))(v31, v24);
    goto LABEL_9;
  }

  v29 = *(v15 + 8);
  v29(v20, v6);
  v29(v25, v6);
  if (__swift_getEnumTagSinglePayload(v28 + v26, 1, v24) != 1)
  {
LABEL_9:
    (*(v43 + 8))(v28, TupleTypeMetadata2);
    v30 = 0;
    return v30 & 1;
  }

  v29(v28, v6);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_274425A2C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x70))();
  sub_27463B92C();
  swift_getWitnessTable();
  sub_27463BABC();

  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A498);
  if (sub_27463BB7C())
  {
    (*((*v4 & *v3) + 0xA0))(v5);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_27463AF4C();
  return __swift_storeEnumTagSinglePayload(a1, v6, 1, v7);
}

uint64_t sub_274425BA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v62 = *(*(a1 + 40) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_27463C0AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v67 = v51 - v5;
  v59 = *(v2 - 8);
  MEMORY[0x28223BE20](v6);
  v58 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v2;
  v63 = sub_27463AF4C();
  v8 = sub_27463C0AC();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v51 - v9;
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v12);
  v68 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = v51 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v51 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v51 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v23);
  v55 = v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v51 - v26;
  v64 = a1;
  v28 = a1;
  v29 = AssociatedTypeWitness;
  sub_274425318(v28, MEMORY[0x277CE11D8]);
  if (__swift_getEnumTagSinglePayload(v21, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v21, v4);
LABEL_12:
    v44 = 0;
    return v44 & 1;
  }

  v30 = *(v22 + 32);
  v51[1] = v22 + 32;
  v52 = v11;
  v51[0] = v30;
  v30(v27, v21, AssociatedTypeWitness);
  v53 = v27;
  v54 = v22;
  (*(v22 + 16))(v18, v27, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, AssociatedTypeWitness);
  sub_274425A2C(v10);
  v31 = v63;
  v32 = v18;
  if (__swift_getEnumTagSinglePayload(v10, 1, v63) == 1)
  {
    (*(v56 + 8))(v10, v57);
    v33 = 1;
    v35 = v65;
    v34 = TupleTypeMetadata2;
  }

  else
  {
    v36 = v58;
    MEMORY[0x277C575F0](v31);
    (*(*(v31 - 8) + 8))(v10, v31);
    v35 = v65;
    v37 = v61;
    sub_27463C39C();
    (*(v59 + 8))(v36, v37);
    v33 = 0;
    v34 = TupleTypeMetadata2;
  }

  v38 = v52;
  v39 = v4;
  __swift_storeEnumTagSinglePayload(v35, v33, 1, v29);
  v40 = *(v34 + 48);
  v41 = *(v38 + 16);
  v42 = v67;
  v41(v67, v32, v39);
  v41((v42 + v40), v35, v39);
  if (__swift_getEnumTagSinglePayload(v42, 1, v29) != 1)
  {
    v41(v68, v42, v39);
    if (__swift_getEnumTagSinglePayload(v42 + v40, 1, v29) != 1)
    {
      v48 = v55;
      (v51[0])(v55, v42 + v40, v29);
      swift_getAssociatedConformanceWitness();
      v44 = sub_27463B5BC();
      v49 = *(v54 + 8);
      v49(v48, v29);
      v50 = *(v38 + 8);
      v50(v35, v39);
      v50(v32, v39);
      v49(v53, v29);
      v49(v68, v29);
      v50(v42, v39);
      return v44 & 1;
    }

    v45 = *(v38 + 8);
    v45(v35, v39);
    v45(v32, v39);
    v46 = *(v54 + 8);
    v46(v53, v29);
    v46(v68, v29);
    goto LABEL_11;
  }

  v43 = *(v38 + 8);
  v43(v35, v39);
  v43(v32, v39);
  (*(v54 + 8))(v53, v29);
  if (__swift_getEnumTagSinglePayload(v42 + v40, 1, v29) != 1)
  {
LABEL_11:
    (*(v60 + 8))(v42, v34);
    goto LABEL_12;
  }

  v43(v42, v39);
  v44 = 1;
  return v44 & 1;
}

double sub_274426310(uint64_t a1)
{
  v1 = sub_274425BA8(a1);
  result = 1.0;
  if (v1)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_274426338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A898);
  v3 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A0);
  v72 = v3;
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  v83 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_27463ADAC();
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A8);
  sub_27463965C();
  v80 = a1;
  v84 = a1[2];
  v71 = a1[5];
  type metadata accessor for DismissDeleteConfirmationModifier();
  sub_27463965C();
  sub_27463965C();
  v4 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A760);
  sub_27463965C();
  WitnessTable = swift_getWitnessTable();
  v105 = MEMORY[0x277CDF918];
  v102 = swift_getWitnessTable();
  v103 = MEMORY[0x277CDF748];
  v100 = swift_getWitnessTable();
  v101 = sub_274434E04(&unk_28094A8B0);
  v98 = swift_getWitnessTable();
  v99 = swift_getWitnessTable();
  v96 = swift_getWitnessTable();
  v97 = MEMORY[0x277CDF900];
  v94 = swift_getWitnessTable();
  v95 = MEMORY[0x277CDFC60];
  v92 = swift_getWitnessTable();
  v93 = sub_274434E04(&qword_28094A710);
  v90 = swift_getWitnessTable();
  v91 = sub_274434E04(&unk_28094A768);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v86 = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v88 = v92;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8B8);
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A8C0);
  swift_getTupleTypeMetadata2();
  v67 = sub_27463B19C();
  v65 = swift_getWitnessTable();
  v5 = sub_27463AE6C();
  v70 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v69 = &v59 - v6;
  v7 = swift_getWitnessTable();
  v86 = v5;
  OpaqueTypeMetadata2 = v7;
  v8 = swift_getOpaqueTypeMetadata2();
  v86 = v5;
  OpaqueTypeMetadata2 = v7;
  v9 = swift_getOpaqueTypeConformance2();
  v86 = v5;
  OpaqueTypeMetadata2 = v8;
  v83 = v8;
  v79 = v7;
  v88 = v7;
  OpaqueTypeConformance2 = v9;
  v78 = v9;
  v10 = swift_getOpaqueTypeMetadata2();
  v68 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v66 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = &v59 - v13;
  v14 = sub_27463AF4C();
  v15 = sub_27463C0AC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - v17;
  v73 = *(v14 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  v77 = sub_27463C0AC();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v76 = &v59 - v24;
  v25 = v80;
  v26 = v81;
  sub_274425A2C(v18);
  v27 = v14;
  if (__swift_getEnumTagSinglePayload(v18, 1, v14) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v28 = v74;
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v10);
    v29 = v83;
    v86 = v5;
    OpaqueTypeMetadata2 = v83;
    v30 = v79;
    v31 = v78;
    v88 = v79;
    OpaqueTypeConformance2 = v78;
    swift_getOpaqueTypeConformance2();
    v32 = v76;
    sub_2745758B8(v28, v76);
    v33 = *(v75 + 8);
    v34 = v28;
    v35 = v77;
    v33(v34, v77);
  }

  else
  {
    v36 = *(v73 + 32);
    v37 = v21;
    v62 = v27;
    v38 = v36(v21, v18, v27);
    MEMORY[0x28223BE20](v38);
    v39 = v25;
    v60 = v25[3];
    v40 = v60;
    v63 = v5;
    v41 = v84;
    *(&v59 - 8) = v84;
    *(&v59 - 7) = v40;
    v42 = v72;
    v43 = v71;
    *(&v59 - 6) = v72;
    *(&v59 - 5) = v43;
    v44 = v39[6];
    *(&v59 - 4) = v44;
    *(&v59 - 3) = v26;
    *(&v59 - 2) = v37;
    v45 = v37;
    v61 = v37;
    sub_274639C5C();
    v46 = v69;
    v47 = sub_27463AE5C();
    v80 = &v59;
    MEMORY[0x28223BE20](v47);
    *(&v59 - 8) = v41;
    v5 = v63;
    *(&v59 - 7) = v60;
    *(&v59 - 6) = v42;
    *(&v59 - 5) = v43;
    *(&v59 - 4) = v44;
    *(&v59 - 3) = v45;
    *(&v59 - 2) = v26;
    v48 = swift_checkMetadataState();
    v49 = v66;
    v30 = v79;
    v31 = v78;
    sub_27463A60C();
    (*(v70 + 8))(v46, v5);
    v86 = v5;
    OpaqueTypeMetadata2 = v48;
    v88 = v30;
    OpaqueTypeConformance2 = v31;
    v50 = swift_getOpaqueTypeConformance2();
    v51 = v64;
    sub_2744E9688(v49, v10, v50);
    v52 = v68;
    v53 = *(v68 + 8);
    v53(v49, v10);
    sub_2744E9688(v51, v10, v50);
    v54 = v51;
    v29 = v83;
    v53(v54, v10);
    v55 = v74;
    (*(v52 + 32))(v74, v49, v10);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v10);
    v32 = v76;
    sub_2745758B8(v55, v76);
    v33 = *(v75 + 8);
    v56 = v55;
    v35 = v77;
    v33(v56, v77);
    (*(v73 + 8))(v61, v62);
  }

  v86 = v5;
  OpaqueTypeMetadata2 = v29;
  v88 = v30;
  OpaqueTypeConformance2 = v31;
  v85 = swift_getOpaqueTypeConformance2();
  v57 = swift_getWitnessTable();
  sub_2744E9688(v32, v35, v57);
  return (v33)(v32, v35);
}

uint64_t sub_274427030@<X0>(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v186 = a7;
  v187 = a5;
  v183 = a2;
  v184 = a6;
  v188 = a4;
  v185 = a1;
  v176 = a8;
  v9 = sub_27463AF6C();
  v132 = *(v9 - 8);
  v133 = v9;
  MEMORY[0x28223BE20](v9);
  v130 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8D0);
  MEMORY[0x28223BE20](v129);
  v131 = &v124 - v11;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8D8);
  MEMORY[0x28223BE20](v173);
  v128 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v127 = &v124 - v14;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A8C0);
  MEMORY[0x28223BE20](v172);
  v175 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v174 = &v124 - v17;
  v18 = sub_274639ABC();
  v125 = *(v18 - 8);
  v126 = v18;
  MEMORY[0x28223BE20](v18);
  v124 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = a3;
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  v20 = sub_27463AF4C();
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v124 - v21;
  v182 = type metadata accessor for DismissDeleteConfirmationModifier();
  v171 = *(v182 - 1);
  MEMORY[0x28223BE20](v182);
  v169 = &v124 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A898);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A0);
  swift_getTupleTypeMetadata3();
  v145 = sub_27463B19C();
  WitnessTable = swift_getWitnessTable();
  v23 = sub_27463ADAC();
  v149 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v143 = &v124 - v24;
  v135 = v23;
  v25 = sub_27463965C();
  v150 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v177 = &v124 - v26;
  v27 = sub_27463965C();
  v157 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v154 = &v124 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A8);
  v29 = sub_27463965C();
  v159 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v155 = &v124 - v30;
  v31 = sub_27463965C();
  v156 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v153 = &v124 - v32;
  v33 = sub_27463965C();
  v164 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v163 = &v124 - v34;
  v35 = sub_27463965C();
  v167 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v166 = &v124 - v36;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A760);
  v37 = sub_27463965C();
  v134 = swift_getWitnessTable();
  v219 = v134;
  v220 = MEMORY[0x277CDF918];
  v151 = v25;
  v136 = swift_getWitnessTable();
  v217 = v136;
  v218 = MEMORY[0x277CDF748];
  v160 = v27;
  v38 = swift_getWitnessTable();
  v39 = sub_274434E04(&unk_28094A8B0);
  v137 = v38;
  v215 = v38;
  v216 = v39;
  v161 = v29;
  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v138 = v40;
  v213 = v40;
  v214 = v41;
  v158 = v31;
  v139 = swift_getWitnessTable();
  v211 = v139;
  v212 = MEMORY[0x277CDF900];
  v165 = v33;
  v142 = swift_getWitnessTable();
  v209 = v142;
  v210 = MEMORY[0x277CDFC60];
  v42 = swift_getWitnessTable();
  v43 = sub_274434E04(&qword_28094A710);
  v207 = v42;
  v208 = v43;
  v44 = swift_getWitnessTable();
  v45 = sub_274434E04(&unk_28094A768);
  v205 = v44;
  v206 = v45;
  v46 = swift_getWitnessTable();
  v200 = v37;
  v201 = v46;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v200 = v37;
  v201 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v200 = OpaqueTypeMetadata2;
  v201 = OpaqueTypeConformance2;
  v49 = swift_getOpaqueTypeMetadata2();
  v200 = OpaqueTypeMetadata2;
  v201 = OpaqueTypeConformance2;
  v50 = v185;
  v51 = swift_getOpaqueTypeConformance2();
  v168 = v35;
  v200 = v35;
  v140 = v49;
  v141 = v51;
  v201 = v49;
  v152 = v42;
  v202 = v42;
  v203 = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  v147 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v178 = &v124 - v53;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8B8);
  v148 = v52;
  v181 = sub_27463965C();
  v179 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v162 = &v124 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v146 = &v124 - v56;
  MEMORY[0x28223BE20](v57);
  v180 = &v124 - v58;
  v59 = v189;
  v190 = v189;
  v60 = v187;
  v61 = v188;
  v191 = v188;
  v192 = v187;
  v62 = v184;
  v193 = v184;
  v63 = v186;
  v194 = v186;
  v195 = v50;
  v196 = v183;
  sub_27456E924();
  v64 = v143;
  sub_27463AD9C();
  LODWORD(v145) = *(v50 + 16);
  v65 = v135;
  sub_27463A9EC();
  (*(v149 + 8))(v64, v65);
  v200 = v59;
  v201 = v61;
  v202 = v60;
  v203 = v62;
  v204 = v63;
  v66 = type metadata accessor for StackListRow();
  sub_2744253E8(v66);
  v67 = v154;
  v68 = v151;
  v69 = v177;
  sub_27463A93C();
  v70 = (*(v150 + 8))(v69, v68);
  MEMORY[0x28223BE20](v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8E0);
  sub_274433790();
  sub_27463B0CC();
  v71 = v155;
  v72 = v160;
  sub_27463A9BC();
  (*(v157 + 8))(v67, v72);
  v73 = v170;
  sub_274425178(v66, MEMORY[0x277CE11E8]);
  v74 = v169;
  sub_274424FAC(v73, v169);
  v75 = v153;
  v76 = v161;
  v77 = v182;
  MEMORY[0x277C57160](v74, v161, v182, v138);
  (*(v171 + 8))(v74, v77);
  v78 = v185;
  (*(v159 + 8))(v71, v76);
  sub_274426310(v66);
  v79 = v163;
  v80 = v158;
  sub_27463A9AC();
  (*(v156 + 8))(v75, v80);
  v170 = v66;
  v81 = v78 + *(v66 + 96);
  v82 = *v81;
  if ((*(v81 + 8) & 1) == 0)
  {

    sub_27463BC0C();
    v83 = sub_27463A2FC();
    sub_274638CEC();

    v84 = v124;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v82, 0);
    (*(v125 + 8))(v84, v126);
  }

  v85 = v165;
  sub_27457574C();
  v86 = v166;
  sub_27463A90C();
  v87 = (*(v164 + 8))(v79, v85);
  v182 = &v124;
  MEMORY[0x28223BE20](v87);
  v171 = swift_checkMetadataState();
  v88 = v168;
  v89 = v152;
  v90 = v141;
  sub_27463A60C();
  (*(v167 + 8))(v86, v88);
  v91 = sub_27463B0EC();
  v177 = v92;
  v182 = v91;
  v183 = &v124;
  MEMORY[0x28223BE20](v91);
  v93 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8F0);
  v200 = v88;
  v201 = v171;
  v202 = v89;
  v203 = v90;
  v94 = swift_getOpaqueTypeConformance2();
  sub_2744339C8(&unk_28094A8F8);
  v95 = v146;
  v96 = v148;
  v97 = v178;
  sub_27463A9BC();
  (*(v147 + 8))(v97, v96);
  v98 = sub_274434E04(&unk_28094A928);
  v199[2] = v94;
  v199[3] = v98;
  v99 = v181;
  v189 = swift_getWitnessTable();
  sub_2744E9688(v95, v99, v189);
  v100 = *(v179 + 8);
  v100(v95, v99);
  v101 = 1;
  v102 = *(v93 + 32);
  v103 = v173;
  v104 = v174;
  if (v102 == 1)
  {
    v105 = v130;
    sub_27463AF5C();
    v106 = sub_27463A35C();
    sub_2746390AC();
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v114 = v113;
    v115 = v131;
    (*(v132 + 32))(v131, v105, v133);
    v116 = &v115[*(v129 + 36)];
    *v116 = v106;
    *(v116 + 1) = v108;
    *(v116 + 2) = v110;
    *(v116 + 3) = v112;
    *(v116 + 4) = v114;
    v116[40] = 0;
    v117 = sub_274426310(v170);
    v118 = v128;
    sub_274433B6C();
    *&v118[*(v103 + 36)] = v117;
    sub_274433B6C();
    sub_274433B6C();
    v101 = 0;
  }

  __swift_storeEnumTagSinglePayload(v104, v101, 1, v103);
  v119 = v180;
  v120 = v162;
  v121 = v181;
  (*(v179 + 16))(v162, v180, v181);
  v200 = v120;
  v122 = v175;
  sub_2744342DC();
  v201 = v122;
  v199[0] = v121;
  v199[1] = v172;
  v197 = v189;
  v198 = sub_2744339C8(&unk_28094A930);
  sub_274575750(&v200, 2, v199);
  sub_27440CB1C(v104, &unk_28094A8C0);
  v100(v119, v121);
  sub_27440CB1C(v122, &unk_28094A8C0);
  return (v100)(v120, v121);
}

uint64_t sub_27442851C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v100 = a8;
  v101 = a2;
  v13 = a1;
  v102 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v103 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v81 - v16;
  v18 = sub_2746396BC();
  v94 = *(v18 - 8);
  v95 = v18;
  MEMORY[0x28223BE20](v18);
  v93 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_27463AF4C();
  v20 = *(v84 - 8);
  v83 = *(v20 + 64);
  MEMORY[0x28223BE20](v84);
  v22 = &v81 - v21;
  v89 = a3;
  v90 = a4;
  __src[0] = a3;
  __src[1] = a4;
  v104 = a5;
  __src[2] = a5;
  __src[3] = a6;
  v91 = a6;
  __src[4] = a7;
  v23 = type metadata accessor for StackListRow();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v81 - v26;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A988);
  MEMORY[0x28223BE20](v88);
  v85 = &v81 - v28;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A990);
  v87 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v86 = &v81 - v29;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A898);
  MEMORY[0x28223BE20](v98);
  v99 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  if (*(v13 + 16) == 1)
  {
    v34 = *(v24 + 16);
    v82 = &v81 - v32;
    v34(v27, v13, v23, v33);
    v35 = *(v20 + 16);
    v81 = v27;
    v36 = v84;
    v35(v22, v101, v84);
    v37 = *(v24 + 80);
    v96 = a7;
    v38 = v17;
    v39 = (v37 + 56) & ~v37;
    v40 = *(v20 + 80);
    v92 = v23;
    v41 = v13;
    v42 = (v25 + v40 + v39) & ~v40;
    v43 = swift_allocObject();
    v44 = v90;
    v43[2] = v89;
    v43[3] = v44;
    v46 = v91;
    v45 = v92;
    v43[4] = v104;
    v43[5] = v46;
    v43[6] = v96;
    v47 = v43 + v39;
    v17 = v38;
    (*(v24 + 32))(v47, v81, v45);
    v48 = v43 + v42;
    v13 = v41;
    (*(v20 + 32))(v48, v22, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA20);
    sub_274434AB4();
    v49 = v85;
    sub_27463AD5C();
    *(v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A9B0) + 36)) = 257;
    LOBYTE(v43) = sub_27463A37C();
    sub_2746390AC();
    v50 = v49 + *(v88 + 36);
    *v50 = v43;
    *(v50 + 8) = v51;
    *(v50 + 16) = v52;
    *(v50 + 24) = v53;
    *(v50 + 32) = v54;
    *(v50 + 40) = 0;
    v55 = v93;
    sub_2746396AC();
    sub_274434478(&unk_28094A9A0);
    sub_274433D44(&qword_280949470);
    v56 = v86;
    v57 = v95;
    a7 = v96;
    sub_27463A69C();
    v23 = v92;
    (*(v94 + 8))(v55, v57);
    sub_27440CB1C(v49, &qword_28094A988);
    v58 = v82;
    v59 = v56;
    v60 = v97;
    (*(v87 + 32))(v82, v59, v97);
    v61 = 0;
    v62 = v60;
  }

  else
  {
    v61 = 1;
    v58 = &v81 - v32;
    v62 = v97;
  }

  __swift_storeEnumTagSinglePayload(v58, v61, 1, v62);
  v63 = v103;
  (*(v13 + *(v23 + 88)))(v101, *(v13 + 8), *v13);
  v64 = v104;
  sub_2744E9688(v63, v104, a7);
  v101 = *(v102 + 8);
  v101(v63, v64);
  if (*(v13 + 17) == 1)
  {
    v65 = sub_27463AC2C();
    v66 = sub_27463A3AC();
    KeyPath = swift_getKeyPath();
    v68 = v17;
    v69 = a7;
    v70 = sub_274639F9C();
    v71 = sub_27463A35C();
    sub_2746390AC();
    __src[0] = v65;
    LODWORD(__src[3]) = v70;
    a7 = v69;
    v17 = v68;
    LOBYTE(__src[4]) = v71;
    *(&v73 + 1) = v72;
    *(&v75 + 1) = v74;
  }

  else
  {
    KeyPath = 0;
    v66 = 0;
    __src[0] = 0;
    v73 = 0uLL;
    *&__src[3] = 0u;
    v75 = 0uLL;
  }

  __src[1] = KeyPath;
  __src[2] = v66;
  *&__src[5] = v73;
  *&__src[7] = v75;
  LOBYTE(__src[9]) = 0;
  v76 = v99;
  sub_2743F58A8();
  v110[0] = v76;
  v77 = v103;
  v78 = v104;
  (*(v102 + 16))(v103, v17, v104);
  v110[1] = v77;
  memcpy(v109, __src, 0x49uLL);
  v110[2] = v109;
  sub_2744342DC();
  v108[0] = v98;
  v108[1] = v78;
  v108[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8A0);
  v105 = sub_274434334();
  v106 = a7;
  v107 = sub_274434594();
  sub_274575750(v110, 3, v108);
  sub_27440CB1C(__src, &qword_28094A8A0);
  v79 = v101;
  v101(v17, v78);
  sub_2743F5908(v58);
  memcpy(__dst, v109, 0x49uLL);
  sub_27440CB1C(__dst, &qword_28094A8A0);
  v79(v77, v78);
  return sub_2743F5908(v76);
}

uint64_t sub_274428DF8()
{
  sub_27463B13C();
  sub_27463946C();
}

uint64_t sub_274428E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[0] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_27463C0AC();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v17 - v14;
  sub_27463AF4C();
  sub_27463AF3C();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, AssociatedTypeWitness);
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  type metadata accessor for StackListRow();
  return sub_27442504C(v15);
}

uint64_t sub_274428F94@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_27463AC2C();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA38) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA48) + 28);
  v5 = *MEMORY[0x277CE1048];
  v6 = sub_27463AC8C();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = swift_getKeyPath();
  *a1 = v2;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA20) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA58) + 28);
  sub_274639C7C();
  v9 = sub_274639C9C();
  __swift_storeEnumTagSinglePayload(v7 + v8, 0, 1, v9);
  result = swift_getKeyPath();
  *v7 = result;
  return result;
}

uint64_t sub_2744290DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StackListRow();
  v3 = sub_274425BA8(v2);
  result = 0;
  if (v3)
  {
  }

  *a1 = result;
  return result;
}

uint64_t sub_27442913C@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v95 = a8;
  v85 = a5;
  v87 = a3;
  v92 = a2;
  v81 = a1;
  v88 = a9;
  v96 = sub_27463AF4C();
  v83 = *(v96 - 8);
  v86 = *(v83 + 64);
  MEMORY[0x28223BE20](v96);
  v97 = v65 - v14;
  *&v114 = a4;
  *(&v114 + 1) = a5;
  v90 = a4;
  *&v115 = a6;
  *(&v115 + 1) = a7;
  v79 = a6;
  v91 = a7;
  v116 = a8;
  v94 = type metadata accessor for StackListRow();
  v80 = *(v94 - 8);
  v82 = *(v80 + 64);
  MEMORY[0x28223BE20](v94);
  v84 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v93 = v65 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A898);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A0);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A8);
  sub_27463965C();
  type metadata accessor for DismissDeleteConfirmationModifier();
  sub_27463965C();
  sub_27463965C();
  v65[1] = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  v18 = sub_27463965C();
  v77 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = v65 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A760);
  v21 = sub_27463965C();
  v78 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v89 = v65 - v22;
  WitnessTable = swift_getWitnessTable();
  v113 = MEMORY[0x277CDF918];
  v110 = swift_getWitnessTable();
  v111 = MEMORY[0x277CDF748];
  v23 = swift_getWitnessTable();
  v24 = sub_274434E04(&unk_28094A8B0);
  v108 = v23;
  v109 = v24;
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v106 = v25;
  v107 = v26;
  v104 = swift_getWitnessTable();
  v105 = MEMORY[0x277CDF900];
  v102 = swift_getWitnessTable();
  v103 = MEMORY[0x277CDFC60];
  v27 = swift_getWitnessTable();
  v28 = sub_274434E04(&qword_28094A710);
  v100 = v27;
  v101 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_274434E04(&unk_28094A768);
  v98 = v29;
  v99 = v30;
  v31 = swift_getWitnessTable();
  *&v114 = v21;
  *(&v114 + 1) = v31;
  v32 = v21;
  v69 = v21;
  v33 = v31;
  v70 = v31;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = OpaqueTypeMetadata2;
  v76 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v68 = v65 - v35;
  *&v114 = v32;
  *(&v114 + 1) = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v114 = OpaqueTypeMetadata2;
  *(&v114 + 1) = OpaqueTypeConformance2;
  v73 = MEMORY[0x277CDECE8];
  v74 = swift_getOpaqueTypeMetadata2();
  v75 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v66 = v65 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v67 = v65 - v38;
  v39 = v92;
  *&v114 = *(v92 + 24);

  sub_27463A32C();
  sub_27463A65C();

  swift_getKeyPath();
  LOBYTE(v116) = 0;
  v114 = 0u;
  v115 = 0u;
  sub_27463A6CC();

  (*(v77 + 8))(v20, v18);
  v40 = v80;
  v81 = *(v80 + 16);
  v81(v93, v39, v94);
  v41 = v83;
  (*(v83 + 16))(v97, v87, v96);
  v42 = *(v40 + 80);
  v43 = (v42 + 56) & ~v42;
  v87 = v43 + v82;
  v82 = v42 | 7;
  v44 = (v87 + *(v41 + 80)) & ~*(v41 + 80);
  v45 = swift_allocObject();
  v46 = v85;
  *(v45 + 2) = v90;
  *(v45 + 3) = v46;
  v47 = v79;
  v48 = v91;
  *(v45 + 4) = v79;
  *(v45 + 5) = v48;
  *(v45 + 6) = v95;
  v49 = *(v40 + 32);
  v50 = v94;
  v49(&v45[v43], v93, v94);
  (*(v41 + 32))(&v45[v44], v97, v96);
  v51 = v84;
  v81(v84, v92, v50);
  v52 = swift_allocObject();
  *(v52 + 2) = v90;
  *(v52 + 3) = v46;
  v53 = v91;
  *(v52 + 4) = v47;
  *(v52 + 5) = v53;
  *(v52 + 6) = v95;
  v49(&v52[v43], v51, v50);
  v54 = v68;
  v55 = v69;
  v56 = v89;
  sub_27463A95C();

  (*(v78 + 8))(v56, v55);
  v57 = v66;
  v58 = v72;
  v59 = OpaqueTypeConformance2;
  sub_27463A89C();
  (*(v76 + 8))(v54, v58);
  *&v114 = v58;
  *(&v114 + 1) = v59;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v67;
  v62 = v74;
  sub_2744E9688(v57, v74, v60);
  v63 = *(v75 + 8);
  v63(v57, v62);
  sub_2744E9688(v61, v62, v60);
  return (v63)(v61, v62);
}

id sub_274429D10()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAA88]);

  return [v0 init];
}

uint64_t sub_274429D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_27463C0AC();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v19[-v16];
  __swift_storeEnumTagSinglePayload(&v19[-v16], 1, 1, AssociatedTypeWitness);
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  type metadata accessor for StackListRow();
  sub_27442504C(v17);
  sub_27463B14C();
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a1;
  v26 = a2;
  sub_27463946C();
}

uint64_t sub_274429E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a5;
  v20 = a7;
  v21 = a1;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_27463C0AC();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v19 - v15;
  v17 = sub_27463AF4C();
  MEMORY[0x277C575F0](v17);
  sub_27463C39C();
  (*(v10 + 8))(v12, a3);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, AssociatedTypeWitness);
  v22 = a3;
  v23 = a4;
  v24 = v19;
  v25 = a6;
  v26 = v20;
  type metadata accessor for StackListRow();
  return sub_2744251EC(v16);
}

uint64_t sub_27442A050()
{
  sub_27463B13C();
  sub_27463946C();
}

uint64_t sub_27442A0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_27463C0AC();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v16 - v13;
  __swift_storeEnumTagSinglePayload(v16 - v13, 1, 1, AssociatedTypeWitness);
  v16[1] = a2;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  type metadata accessor for StackListRow();
  return sub_2744251EC(v14);
}

uint64_t sub_27442A1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_2746394DC();
  v59 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v57 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v58 = &v46 - v17;
  v18 = sub_2746396BC();
  v55 = *(v18 - 8);
  v56 = v18;
  MEMORY[0x28223BE20](v18);
  v53 = a6;
  v54 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  v50 = a3;
  v60 = a2;
  v61 = a3;
  v51 = a4;
  v52 = a5;
  v62 = a4;
  v63 = a5;
  v64 = a6;
  v20 = type metadata accessor for StackListRow();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v46 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A910);
  v47 = *(v24 - 8);
  v48 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v46 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A908);
  MEMORY[0x28223BE20](v27);
  v29 = &v46 - v28;
  if (sub_2744253E8(v20))
  {
    (*(v21 + 16))(v23, a1, v20);
    v30 = *(v21 + 80);
    v46 = v14;
    v31 = a7;
    v32 = (v30 + 56) & ~v30;
    v33 = swift_allocObject();
    v34 = v50;
    v33[2] = v49;
    v33[3] = v34;
    v35 = v52;
    v33[4] = v51;
    v33[5] = v35;
    v33[6] = v53;
    v36 = v33 + v32;
    a7 = v31;
    (*(v21 + 32))(v36, v23, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A950);
    sub_274433BDC();
    sub_27463AD5C();
    v37 = v54;
    sub_2746396AC();
    sub_274434E04(&unk_28094A918);
    sub_274433D44(&qword_280949470);
    v38 = v48;
    v39 = v56;
    sub_27463A69C();
    (*(v55 + 8))(v37, v39);
    (*(v47 + 8))(v26, v38);
    v40 = v58;
    sub_2746394CC();
    v41 = v59;
    v42 = v46;
    (*(v59 + 16))(v57, v40, v46);
    sub_274433D44(&unk_28094A980);
    v43 = sub_27463934C();
    (*(v41 + 8))(v40, v42);
    *&v29[*(v27 + 36)] = v43;
    sub_2743F5674();
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a7, v44, 1, v27);
}

uint64_t sub_27442A730()
{
  sub_27463B14C();
  sub_27463946C();
}

uint64_t sub_27442A7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a4;
  v32 = a6;
  v29 = a5;
  v30 = a3;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v8 = type metadata accessor for StackListRow();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_27463C0AC();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v28 - v17;
  __swift_storeEnumTagSinglePayload(&v28 - v17, 1, 1, AssociatedTypeWitness);
  sub_27442504C(v18);
  v19 = sub_27463B9FC();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v19);
  (*(v9 + 16))(v11, a1, v8);
  sub_27463B9CC();
  v20 = sub_27463B9BC();
  v21 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 2) = v20;
  *(v22 + 3) = v23;
  v24 = v30;
  v25 = v31;
  *(v22 + 4) = a2;
  *(v22 + 5) = v24;
  v26 = v29;
  *(v22 + 6) = v25;
  *(v22 + 7) = v26;
  *(v22 + 8) = v32;
  (*(v9 + 32))(&v22[v21], v11, v8);
  sub_27451222C();
}

uint64_t sub_27442AA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_27463B9CC();
  v4[4] = sub_27463B9BC();
  v6 = sub_27463B96C();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_27442AB0C, v6, v5);
}

uint64_t sub_27442AB0C()
{
  v1 = *(v0 + 24);
  v2 = *v1;
  v3 = *((*MEMORY[0x277D85000] & *v1[1]) + 0xB0);
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_27442AC40;

  return v6(v2);
}

uint64_t sub_27442AC40()
{
  OUTLINED_FUNCTION_79();
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_70();
  *v5 = v4;
  *(v7 + 64) = v6;

  v8 = *(v1 + 48);
  v9 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_27442AD5C, v9, v8);
}

uint64_t sub_27442AD5C()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);

  *v2 = v1;
  OUTLINED_FUNCTION_92();

  return v3();
}

void *sub_27442ADC0@<X0>(uint64_t a1@<X8>)
{
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v2 = qword_28094BB00;
  v3 = sub_27463B66C();
  v4 = sub_27463B66C();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = sub_27463B6AC();
  v8 = v7;

  __src[0] = v6;
  __src[1] = v8;
  sub_274412BBC();
  v9 = sub_27463A53C();
  v11 = v10;
  LOBYTE(v8) = v12;
  sub_27463A39C();
  sub_27463A3DC();
  sub_27463A42C();

  v13 = sub_27463A50C();
  v15 = v14;
  v17 = v16;

  sub_274412C10(v9, v11, v8 & 1);

  sub_27463AB8C();
  v18 = sub_27463A4DC();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_274412C10(v13, v15, v17 & 1);

  sub_27463B0CC();
  sub_27463973C();
  LOBYTE(v15) = v22 & 1;
  LOBYTE(v3) = sub_27463A31C();
  sub_2746390AC();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = sub_27463AB4C();
  v34 = sub_27463A32C();
  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v15;
  *(a1 + 24) = v24;
  result = memcpy((a1 + 32), __src, 0x70uLL);
  *(a1 + 144) = v3;
  *(a1 + 152) = v26;
  *(a1 + 160) = v28;
  *(a1 + 168) = v30;
  *(a1 + 176) = v32;
  *(a1 + 184) = 0;
  *(a1 + 192) = v33;
  *(a1 + 200) = v34;
  return result;
}

uint64_t sub_27442B06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v68 = a8;
  v60 = a6;
  v67 = a5;
  v66 = a3;
  v65 = a2;
  v69 = a1;
  v70 = a9;
  v63 = *(a7 + 16);
  v58 = a7;
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  v10 = sub_27463AF4C();
  MEMORY[0x28223BE20](v10 - 8);
  v64 = &v51 - v11;
  MEMORY[0x28223BE20](v12);
  v61 = &v51 - v13;
  v57 = a4;
  v62 = *(a4 - 8);
  MEMORY[0x28223BE20](v14);
  v59 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A898);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A0);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  v56 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_27463ADAC();
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A8);
  sub_27463965C();
  type metadata accessor for DismissDeleteConfirmationModifier();
  sub_27463965C();
  sub_27463965C();
  v16 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A760);
  v17 = sub_27463965C();
  WitnessTable = swift_getWitnessTable();
  v91 = MEMORY[0x277CDF918];
  v88 = swift_getWitnessTable();
  v89 = MEMORY[0x277CDF748];
  v18 = swift_getWitnessTable();
  v19 = sub_274434E04(&unk_28094A8B0);
  v86 = v18;
  v87 = v19;
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v84 = v20;
  v85 = v21;
  v82 = swift_getWitnessTable();
  v83 = MEMORY[0x277CDF900];
  v80 = swift_getWitnessTable();
  v81 = MEMORY[0x277CDFC60];
  v22 = swift_getWitnessTable();
  v23 = sub_274434E04(&qword_28094A710);
  v78 = v22;
  v79 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_274434E04(&unk_28094A768);
  v76 = v24;
  v77 = v25;
  v26 = swift_getWitnessTable();
  v71 = v17;
  v72 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = v17;
  v72 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = OpaqueTypeMetadata2;
  v72 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeMetadata2();
  v71 = OpaqueTypeMetadata2;
  v72 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v71 = v16;
  v72 = v29;
  v73 = v22;
  v74 = v30;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8B8);
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A8C0);
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  v31 = sub_27463AE6C();
  v53 = v31;
  v54 = swift_getWitnessTable();
  v71 = v31;
  v72 = v54;
  v55 = MEMORY[0x277CDEE98];
  v32 = swift_getOpaqueTypeMetadata2();
  v56 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v51 = &v51 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v52 = &v51 - v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E160);
  sub_274638C8C();
  *(swift_allocObject() + 16) = xmmword_274648570;
  sub_274638C7C();
  v36 = v57;
  v37 = sub_27463AF4C();
  v38 = v59;
  MEMORY[0x277C575F0](v37);
  v39 = v61;
  sub_27463C39C();
  (*(v62 + 8))(v38, v36);
  v40 = *(v66 + 8);
  v71 = v36;
  v72 = v67;
  v73 = v60;
  v74 = v58;
  v75 = v68;
  v41 = type metadata accessor for StackListRow();
  v42 = v64;
  sub_274425318(v41, MEMORY[0x277CE11E8]);
  v74 = type metadata accessor for ItemDropDelegate();
  v75 = swift_getWitnessTable();
  v43 = __swift_allocate_boxed_opaque_existential_1(&v71);
  sub_27442BA6C(v39, v40, v42, v43);
  v44 = swift_checkMetadataState();
  v45 = v51;
  v46 = v54;
  sub_27463A96C();

  __swift_destroy_boxed_opaque_existential_1(&v71);
  v71 = v44;
  v72 = v46;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v52;
  sub_2744E9688(v45, v32, v47);
  v49 = *(v56 + 8);
  v49(v45, v32);
  sub_2744E9688(v48, v32, v47);
  return (v49)(v48, v32);
}

id sub_27442BA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  v9 = type metadata accessor for ItemDropDelegate();
  *(a4 + v9[11]) = a2;
  v10 = v9[12];
  sub_27463C0AC();
  v11 = sub_27463AF4C();
  (*(*(v11 - 8) + 32))(a4 + v10, a3, v11);
  v12 = v9[13];
  result = [objc_allocWithZone(WFDragFeedbackGenerator) init];
  *(a4 + v12) = result;
  return result;
}

uint64_t sub_27442BBA0()
{
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  v0 = sub_27463AF4C();
  return MEMORY[0x277C575F0](v0);
}

BOOL sub_27442BC18()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = sub_27463C0AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  sub_27442BBA0();
  v5 = __swift_getEnumTagSinglePayload(v4, 1, AssociatedTypeWitness) != 1;
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_27442BD58@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_27463939C();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v2 + *(a1 + 52)) draggingPositionUpdated];
  (*(v6 + 104))(v9, *MEMORY[0x277CDD860], v5);
  sub_27463927C();
  v10 = sub_27463928C();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
}

uint64_t sub_27442BE68(uint64_t a1, uint64_t a2)
{
  v52 = *(a2 + 32);
  v4 = *(a2 + 16);
  v47 = *(v52 + 16);
  v51 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v46 = &v45 - v6;
  v7 = sub_27463C0AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v45 - v9;
  v11 = *(v7 - 8);
  MEMORY[0x28223BE20](v12);
  v48 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  v50 = a2;
  sub_27442BBA0();
  v20 = *(v55 + 2);
  v54 = v2;
  v20(v16, v2, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, AssociatedTypeWitness);
  v21 = *(TupleTypeMetadata2 + 48);
  v53 = v11;
  v22 = *(v11 + 16);
  v22(v10, v16, v7);
  v56 = v19;
  v22(&v10[v21], v19, v7);
  if (__swift_getEnumTagSinglePayload(v10, 1, AssociatedTypeWitness) == 1)
  {
    v23 = *(v11 + 8);
    v23(v16, v7);
    if (__swift_getEnumTagSinglePayload(&v10[v21], 1, AssociatedTypeWitness) == 1)
    {
      v23(v10, v7);
      return (v23)(v56, v7);
    }
  }

  else
  {
    v24 = v48;
    v22(v48, v10, v7);
    if (__swift_getEnumTagSinglePayload(&v10[v21], 1, AssociatedTypeWitness) != 1)
    {
      v39 = v7;
      v40 = v55;
      v41 = v46;
      (*(v55 + 4))(v46, &v10[v21], AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v42 = sub_27463B5BC();
      v43 = v24;
      v44 = v40[1];
      v44(v41, AssociatedTypeWitness);
      v23 = *(v11 + 8);
      v23(v16, v39);
      v44(v43, AssociatedTypeWitness);
      v7 = v39;
      v25 = (v23)(v10, v39);
      v26 = v54;
      if (v42)
      {
        return (v23)(v56, v7);
      }

      goto LABEL_7;
    }

    v23 = *(v11 + 8);
    v23(v16, v7);
    (*(v55 + 1))(v24, AssociatedTypeWitness);
  }

  v25 = (*(v49 + 8))(v10, TupleTypeMetadata2);
  v26 = v54;
LABEL_7:
  v55 = v23;
  v27 = v50;
  v48 = *((*MEMORY[0x277D85000] & **(v26 + *(v50 + 44))) + 0x70);
  v57 = (v48)(v25);
  MEMORY[0x28223BE20](v57);
  v28 = *(v27 + 24);
  v29 = v51;
  *(&v45 - 4) = v51;
  *(&v45 - 3) = v28;
  v49 = v28;
  v30 = v56;
  *(&v45 - 2) = v52;
  *(&v45 - 1) = v30;
  sub_27463B92C();
  swift_getWitnessTable();
  sub_27463BB2C();

  if ((v59 & 1) == 0)
  {
    v47 = v58;
    v32 = (v48)(v31);
    v48 = &v45;
    v57 = v32;
    MEMORY[0x28223BE20](v32);
    v33 = v49;
    *(&v45 - 4) = v29;
    *(&v45 - 3) = v33;
    v34 = v52;
    v35 = v54;
    *(&v45 - 2) = v52;
    *(&v45 - 1) = v35;
    sub_27463BB2C();

    if (v59 != 1)
    {
      v36 = v58;
      v37 = [*(v35 + *(v50 + 52)) draggingItemSnapped];
      MEMORY[0x28223BE20](v37);
      *(&v45 - 6) = v29;
      *(&v45 - 5) = v33;
      *(&v45 - 4) = v34;
      *(&v45 - 3) = v35;
      *(&v45 - 2) = v47;
      *(&v45 - 1) = v36;
      sub_27463B13C();
      sub_27463946C();
    }
  }

  v23 = v55;
  return (v23)(v56, v7);
}

uint64_t sub_27442C538(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a2;
  v6 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v29[0] = v29 - v8;
  v9 = sub_27463C0AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v29 - v11;
  v13 = *(v9 - 8);
  MEMORY[0x28223BE20](v14);
  v33 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v29 - v17;
  v29[1] = v6;
  v29[2] = a3;
  sub_27463C39C();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, AssociatedTypeWitness);
  v31 = TupleTypeMetadata2;
  v19 = *(TupleTypeMetadata2 + 48);
  v20 = *(v13 + 16);
  v20(v12, v18, v9);
  v20(&v12[v19], v34, v9);
  if (__swift_getEnumTagSinglePayload(v12, 1, AssociatedTypeWitness) != 1)
  {
    v23 = v33;
    v20(v33, v12, v9);
    if (__swift_getEnumTagSinglePayload(&v12[v19], 1, AssociatedTypeWitness) != 1)
    {
      v24 = v32;
      v25 = v29[0];
      (*(v32 + 32))(v29[0], &v12[v19], AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v22 = sub_27463B5BC();
      v26 = *(v24 + 8);
      v26(v25, AssociatedTypeWitness);
      v27 = *(v13 + 8);
      v27(v18, v9);
      v26(v33, AssociatedTypeWitness);
      v27(v12, v9);
      return v22 & 1;
    }

    (*(v13 + 8))(v18, v9);
    (*(v32 + 8))(v23, AssociatedTypeWitness);
    goto LABEL_6;
  }

  v21 = *(v13 + 8);
  v21(v18, v9);
  if (__swift_getEnumTagSinglePayload(&v12[v19], 1, AssociatedTypeWitness) != 1)
  {
LABEL_6:
    (*(v30 + 8))(v12, v31);
    v22 = 0;
    return v22 & 1;
  }

  v21(v12, v9);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_27442C954()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v3 = &v6 - v2;
  sub_27463C39C();
  swift_getAssociatedConformanceWitness();
  v4 = sub_27463B5BC();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t sub_27442CA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for ItemDropDelegate();
  v7 = *(a1 + *(result + 44));
  if (a2 >= a3)
  {
    return (*((*MEMORY[0x277D85000] & *v7) + 0xC8))(a2, a3);
  }

  if (!__OFADD__(a3++, 1))
  {
    return (*((*MEMORY[0x277D85000] & *v7) + 0xC8))(a2, a3);
  }

  __break(1u);
  return result;
}

void sub_27442CB60()
{
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  sub_27463AF4C();

  JUMPOUT(0x277C575F0);
}

uint64_t sub_27442CBCC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_27463C0AC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_27463AF4C();
  sub_27463AEBC();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_27442CCE8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  swift_getWitnessTable();
  sub_274639F5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA60);
  v4 = sub_27463965C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  v17 = *(a1 + 16);
  v18 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA68);
  WitnessTable = swift_getWitnessTable();
  sub_274434C8C();
  sub_27463B0CC();
  sub_27463A9BC();
  v12 = sub_274434E04(&unk_28094AA98);
  v19 = WitnessTable;
  v20 = v12;
  v13 = swift_getWitnessTable();
  sub_2744E9688(v7, v4, v13);
  v14 = *(v5 + 8);
  v14(v7, v4);
  sub_2744E9688(v10, v4, v13);
  return (v14)(v10, v4);
}

uint64_t sub_27442CF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = type metadata accessor for DismissDeleteConfirmationModifier();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v27 = &v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AAA0);
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v29 = a3;
  v30 = &v27 - v11;
  v28 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_27463C0AC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  sub_27442CB60();
  v17 = 1;
  LODWORD(AssociatedTypeWitness) = __swift_getEnumTagSinglePayload(v16, 1, AssociatedTypeWitness);
  v18 = v13;
  v19 = v32;
  (*(v14 + 8))(v16, v18);
  v20 = v10;
  if (AssociatedTypeWitness != 1)
  {
    v33 = sub_27463AB7C();
    v34 = 0;
    v21 = v27;
    (*(v8 + 16))(v27, a1, v7);
    v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v23 = swift_allocObject();
    v24 = v29;
    *(v23 + 16) = v28;
    *(v23 + 24) = v24;
    (*(v8 + 32))(v23 + v22, v21, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA78);
    sub_274434D4C();
    v25 = v30;
    sub_27463A72C();

    (*(v31 + 32))(v19, v25, v20);
    v17 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v19, v17, 1, v20);
}

uint64_t sub_27442D2C8()
{
  sub_27463B14C();
  sub_27463946C();
}

uint64_t sub_27442D348()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = sub_27463C0AC();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - v2;
  __swift_storeEnumTagSinglePayload(&v5 - v2, 1, 1, AssociatedTypeWitness);
  type metadata accessor for DismissDeleteConfirmationModifier();
  return sub_27442CBCC(v3);
}

uint64_t sub_27442D460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2744336B0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void sub_27442D4C4()
{
  v1 = v0;
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 clearColor];
  [v8 setBackgroundColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4C0);
  sub_27463A1BC();
  v10 = v28;
  [v8 setDelegate_];

  sub_27463A1BC();
  v11 = v28;
  sub_27442EBFC(v8);

  v12 = *(v1 + 48);
  if (*(v1 + 56) == 1)
  {
    v13 = *(v1 + 48);
  }

  else
  {

    sub_27463BC0C();
    v14 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v12, 0);
    (*(v3 + 8))(v5, v2);
    v13 = *&v28;
  }

  [v8 setRowHeight_];
  [v8 setSeparatorStyle_];
  v15 = v8;
  [v15 setContentInsetAdjustmentBehavior_];
  [v15 setScrollEnabled_];
  [v15 setAlwaysBounceVertical_];

  [v15 setEditing_];
  [v15 setAllowsFocus_];
  [v15 setClipsToBounds_];

  [v15 setAllowsSelection_];
  [v15 setSelectionFollowsFocus_];
  [v15 setAllowsMultipleSelection_];
  [v15 setAllowsSelectionDuringEditing_];
  [v15 setAllowsMultipleSelectionDuringEditing_];

  v17 = sub_27442D918(v16);
  v18 = 0;
  v19 = v17 + 64;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v17 + 64);
  v23 = (v20 + 63) >> 6;
  if (v22)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return;
    }

    v22 = *(v19 + 8 * v24);
    ++v18;
    if (v22)
    {
      v18 = v24;
      do
      {
LABEL_12:
        v22 &= v22 - 1;
        sub_274412734(0, &qword_28094A4C8);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

        v26 = sub_27463B66C();

        [v15 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v26];
      }

      while (v22);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_27442D918(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v28 = v4;
  while (1)
  {
    if (v4 == v2)
    {

      return v3;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    sub_2744307DC(v5, __src);
    v7 = __src[6];
    v6 = __src[7];

    v9 = sub_274534C48(v7, v6);
    v10 = v3[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      goto LABEL_19;
    }

    v13 = v8;
    if (v3[3] < v12)
    {
      sub_274430844(v12, 1);
      v3 = v31;
      v14 = sub_274534C48(v7, v6);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_21;
      }

      v9 = v14;
    }

    if (v13)
    {

      v16 = v3[7];
      memcpy(__dst, __src, sizeof(__dst));
      v17 = *(v16 + 8 * v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 8 * v9) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27444FE4C();
        v17 = v25;
        *(v16 + 8 * v9) = v25;
      }

      v19 = *(v17 + 16);
      if (v19 >= *(v17 + 24) >> 1)
      {
        sub_27444FE4C();
        v17 = v26;
        *(v16 + 8 * v9) = v26;
      }

      *(v17 + 16) = v19 + 1;
      memcpy((v17 + 80 * v19 + 32), __dst, 0x50uLL);
      v4 = v28;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4E0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_274648570;
      memcpy((v20 + 32), __src, 0x50uLL);
      v3[(v9 >> 6) + 8] |= 1 << v9;
      v21 = (v3[6] + 16 * v9);
      *v21 = v7;
      v21[1] = v6;
      *(v3[7] + 8 * v9) = v20;
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v3[2] = v24;
    }

    v5 += 80;
    ++v2;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_27463C71C();
  __break(1u);
  return result;
}

void sub_27442DB80(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4B8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v64 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4C0);
  sub_27463A1BC();
  v11 = v73;
  sub_2744306B8((v1 + 1), v76);
  v12 = OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_delegate;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v11 + v12);
  sub_2743F45D0(v76, v11 + v12);
  swift_endAccess();

  sub_27463A1BC();
  v13 = *&v76[0];
  v14 = *(*&v76[0] + OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_dataSource);
  v15 = v14;

  if (v14)
  {
    if ([a1 isDragging])
    {
    }

    else
    {
      v72 = a1;
      v70 = v7;
      v16 = *v2;

      v66 = v15;
      sub_274638E4C();
      v68 = sub_274638DFC();
      v17 = *(v5 + 8);
      v71 = v4;
      v67 = v5 + 8;
      v65 = v17;
      v17(v10, v4);

      v69 = v16;
      v19 = sub_27442D918(v18);
      v20 = 0;
      v21 = v19 + 64;
      v22 = 1 << *(v19 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      v24 = v23 & *(v19 + 64);
      v25 = (v22 + 63) >> 6;
      if (v24)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v26 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          return;
        }

        if (v26 >= v25)
        {
          break;
        }

        v24 = *(v21 + 8 * v26);
        ++v20;
        if (v24)
        {
          v20 = v26;
          do
          {
LABEL_12:
            v24 &= v24 - 1;
            sub_274412734(0, &qword_28094A4C8);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

            v28 = sub_27463B66C();

            [v72 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v28];
          }

          while (v24);
          continue;
        }
      }

      sub_27443071C();
      sub_274638E0C();
      v29 = v71;
      sub_274638DEC();
      v76[0] = 0uLL;
      v30 = v69;
      sub_274638DCC();
      v31 = *(v30 + 16);
      v32 = MEMORY[0x277D84F90];
      if (v31)
      {
        v81 = MEMORY[0x277D84F90];
        sub_27445124C(0, v31, 0);
        v33 = v81;
        v34 = v30 + 32;
        do
        {
          sub_2744307DC(v34, v76);
          sub_2744342DC();
          if (*(&v74 + 1))
          {
            v78 = v73;
            v79 = v74;
            v80 = v75;
          }

          else
          {
            sub_27440CB1C(&v73, &qword_28094A4B0);
            v73 = v77;

            sub_27463C31C();
          }

          sub_274430814(v76);
          v81 = v33;
          v36 = *(v33 + 16);
          v35 = *(v33 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_27445124C((v35 > 1), v36 + 1, 1);
            v33 = v81;
          }

          *(v33 + 16) = v36 + 1;
          v37 = v33 + 40 * v36;
          v38 = v78;
          v39 = v79;
          *(v37 + 64) = v80;
          *(v37 + 32) = v38;
          *(v37 + 48) = v39;
          v34 += 80;
          --v31;
        }

        while (v31);
        v29 = v71;
        v32 = MEMORY[0x277D84F90];
      }

      else
      {
        v33 = MEMORY[0x277D84F90];
      }

      v40 = v68;
      v41 = *(v68 + 16);
      if (v41)
      {
        v81 = v32;
        sub_27445124C(0, v41, 0);
        v42 = v81;
        v43 = v40 + 32;
        do
        {
          sub_2744307DC(v43, v76);
          sub_2744342DC();
          if (*(&v74 + 1))
          {
            v78 = v73;
            v79 = v74;
            v80 = v75;
          }

          else
          {
            sub_27440CB1C(&v73, &qword_28094A4B0);
            v73 = v77;

            sub_27463C31C();
          }

          sub_274430814(v76);
          v81 = v42;
          v45 = *(v42 + 16);
          v44 = *(v42 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_27445124C((v44 > 1), v45 + 1, 1);
            v42 = v81;
          }

          *(v42 + 16) = v45 + 1;
          v46 = v42 + 40 * v45;
          v47 = v78;
          v48 = v79;
          *(v46 + 64) = v80;
          *(v46 + 32) = v47;
          *(v46 + 48) = v48;
          v43 += 80;
          --v41;
        }

        while (v41);

        v29 = v71;
      }

      else
      {

        v42 = MEMORY[0x277D84F90];
      }

      v49 = sub_2744F5A48(v33, v42);

      v50 = v70;
      v51 = v66;
      v52 = v72;
      if (v49)
      {
        sub_27442E4B4();
        if (v53)
        {
          v54 = v53;
          v55 = [v52 visibleCells];
          sub_274412734(0, &qword_28094A4C8);
          v56 = sub_27463B81C();

          v57 = sub_274453594(v56);
          v58 = 0;
          while (v57 != v58)
          {
            if ((v56 & 0xC000000000000001) != 0)
            {
              v59 = MEMORY[0x277C58B20](v58, v56);
            }

            else
            {
              if (v58 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_53;
              }

              v59 = *(v56 + 8 * v58 + 32);
            }

            v60 = v59;
            if (__OFADD__(v58, 1))
            {
              goto LABEL_52;
            }

            v61 = [v59 contentView];
            sub_274412734(0, &qword_28094A4D8);
            v62 = sub_27463BD2C();

            ++v58;
            if (v62)
            {

              v69 = MEMORY[0x277D84F90];
              goto LABEL_47;
            }
          }

LABEL_47:

          v29 = v71;
          v50 = v70;
          v51 = v66;
        }

        v63 = v65;
        sub_274638DDC();

        sub_274638E3C();
      }

      else
      {

        sub_274638E1C();
        v63 = v65;
      }

      v63(v50, v29);
    }
  }
}

uint64_t sub_27442E410@<X0>(uint64_t a1@<X8>)
{
  result = sub_2744342DC();
  if (*(&v7 + 1))
  {
    v4 = v7;
    *a1 = v6;
    *(a1 + 16) = v4;
    *(a1 + 32) = v8;
  }

  else
  {
    sub_27440CB1C(&v6, &qword_28094A4B0);
    v5 = *(v1 + 56);
    *&v6 = *(v1 + 48);
    *(&v6 + 1) = v5;

    return sub_27463C31C();
  }

  return result;
}

void sub_27442E4B4()
{
  if ([v0 isFirstResponder])
  {
    v1 = v0;
  }

  else
  {
    v2 = [v0 subviews];
    sub_274412734(0, &qword_28094A4D8);
    v3 = sub_27463B81C();

    v4 = sub_274453594(v3);
    v5 = 0;
    while (1)
    {
      if (v4 == v5)
      {
LABEL_10:

        return;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x277C58B20](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v8 = sub_27442E4B4();

      ++v5;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_27442E5E4(uint64_t a1, char a2, int a3, int a4, id a5)
{
  [a5 contentSize];
  if (a2)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

id sub_27442E628()
{
  sub_2744306B8(v0 + 8, v3);
  v1 = objc_allocWithZone(type metadata accessor for WFTableView.Coordinator());
  return sub_27442E670(v3);
}

id sub_27442E670(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_dataSource] = 0;
  sub_2744306B8(a1, &v1[OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_delegate]);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFTableView.Coordinator();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_27442E6E0()
{
  v1 = OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_delegate;
  swift_beginAccess();
  sub_2744306B8(v0 + v1, v7);
  v2 = v8;
  v3 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v4 = sub_27463807C();
  v5 = (*(v3 + 16))(v4, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5 & 1;
}

uint64_t sub_27442E890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = sub_2746380BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27463807C();
  v10 = OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_delegate;
  swift_beginAccess();
  sub_2744306B8(v3 + v10, v20);
  v11 = v21;
  v12 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  LOBYTE(v10) = (*(v12 + 8))(v9, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v20);
  if (v10)
  {
    return MEMORY[0x277C547B0](v9, 0);
  }

  result = sub_27463807C();
  v14 = -1;
  if (result >= v9)
  {
    v14 = 1;
  }

  v15 = __OFADD__(v9, v14);
  v16 = v9 + v14;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v17 = sub_27463808C();
    MEMORY[0x277C547B0](v16, v17);
    sub_27442E890(v19, a2, v8);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void sub_27442EBFC(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for WFTableView.Coordinator.DataSource());
  swift_unknownObjectWeakInit();
  v5 = a1;
  v6 = sub_274638E2C();
  swift_unknownObjectWeakAssign();
  v7 = *(v2 + OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_dataSource);
  *(v2 + OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_dataSource) = v6;
  v8 = v6;

  [v5 setDataSource_];
}

id sub_27442ECDC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A510);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18[-1] - v10;
  sub_2744307DC(a3, v19);
  v12 = sub_27463B66C();
  v13 = [a1 dequeueReusableCellWithIdentifier_];

  if (v13)
  {
    v14 = [v13 setBackgroundColor_];
    MEMORY[0x28223BE20](v14);
    *(&v17 - 2) = v19;
    *(&v17 - 1) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A518);
    sub_274431528();
    sub_274639FDC();
    sub_27463A32C();
    sub_274639FBC();
    v15 = *(v6 + 8);
    v15(v8, v5);
    v18[3] = v5;
    v18[4] = sub_274434E04(&unk_28094A558);
    __swift_allocate_boxed_opaque_existential_1(v18);
    sub_274639FCC();
    v15(v11, v5);
    MEMORY[0x277C583C0](v18);
    if (v19[64] == 1)
    {
      [v13 setSeparatorInset_];
    }
  }

  sub_274430814(v19);
  return v13;
}

uint64_t sub_27442EF7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(a2 + 24) = 0;
  *a2 = v3;
  *(a2 + 8) = KeyPath;
  *(a2 + 32) = 0xD00000000000001BLL;
  *(a2 + 40) = 0x8000000274688E00;
}

uint64_t sub_27442F00C()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  return sub_274638E2C();
}

uint64_t sub_27442F06C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_delegate;
    swift_beginAccess();
    sub_2744306B8(Strong + v1, v5);

    Strong = v6;
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = sub_27463807C();
    LOBYTE(Strong) = (*(v2 + 8))(v3, Strong, v2);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return Strong & 1;
}

uint64_t sub_27442F14C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_delegate;
    swift_beginAccess();
    sub_2744306B8(Strong + v1, v5);

    Strong = v6;
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = sub_27463807C();
    LOBYTE(Strong) = (*(v2 + 32))(v3, Strong, v2);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return Strong & 1;
}

uint64_t sub_27442F22C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id, uint64_t))
{
  v8 = sub_2746380BC();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_0();
  v14 = v13 - v12;
  sub_27463805C();
  v15 = a3;
  v16 = a1;
  LOBYTE(a5) = a5(v15, v14);

  (*(v10 + 8))(v14, v8);
  return a5 & 1;
}

void sub_27442F32C(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_delegate;
      swift_beginAccess();
      sub_2744306B8(v3 + v4, v8);

      v5 = v9;
      v6 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      v7 = sub_27463807C();
      (*(v6 + 24))(v7, v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v8);
    }
  }
}

uint64_t sub_27442F3F4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_2746380BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27463805C();
  v11 = a3;
  v12 = a1;
  sub_27442F32C(v11, a4);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_27442F504()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_delegate;
    swift_beginAccess();
    sub_2744306B8(v1 + v2, v7);

    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = sub_27463807C();
    v6 = sub_27463807C();
    (*(v4 + 40))(v5, v6, v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

uint64_t sub_27442F5DC(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_2746380BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  sub_27463805C();
  sub_27463805C();
  v12 = a3;
  v13 = a1;
  sub_27442F504();

  v14 = *(v6 + 8);
  v14(v8, v5);
  return (v14)(v11, v5);
}

id sub_27442F7D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for WFTableView.Coordinator.DataSource()
{
  result = qword_28094A3E0;
  if (!qword_28094A3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27442F928(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_27442F968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_27442F9E8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_27442FA28(uint64_t result, int a2, int a3)
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
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27442FA90()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_27442FB2C(_DWORD *a1, unsigned int a2)
{
  result = swift_getAssociatedTypeWitness();
  v5 = *(*(result - 8) + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(*(result - 8) + 84);
  }

  v7 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v15 = *(((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v5, result);
    }
  }

  else
  {
    v8 = ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v10 = 2;
    }

    else
    {
      v10 = a2 - v6 + 1;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(a1 + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(a1 + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(a1 + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = v13 - 1;
        if (v9)
        {
          v14 = 0;
          LODWORD(v9) = *a1;
        }

        result = v6 + (v9 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_27442FCC8(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v13 = 0;
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = a3 - v8 + 1;
    }

    else
    {
      v11 = 2;
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
  }

  if (a2 <= v8)
  {
    switch(v13)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v16 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v16 = a2 & 0x7FFFFFFF;
              v16[1] = 0;
            }

            else
            {
              v16[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v8;
    }

    else
    {
      v14 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v8 + a2;
      bzero(a1, v10);
      *a1 = v15;
    }

    switch(v13)
    {
      case 1:
        *(a1 + v10) = v14;
        break;
      case 2:
        *(a1 + v10) = v14;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v10) = v14;
        break;
      default:
        return;
    }
  }
}

id sub_27442FF24@<X0>(void *a1@<X8>)
{
  result = sub_27442E628();
  *a1 = result;
  return result;
}

uint64_t sub_27442FF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274431488();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_27442FFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274431488();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_27443005C()
{
  sub_274431488();
  sub_274639D9C();
  __break(1u);
}

unint64_t sub_274430088()
{
  result = qword_28094A470;
  if (!qword_28094A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A470);
  }

  return result;
}

uint64_t sub_2744300DC()
{
  sub_2744342DC();
  if (*(&v4 + 1))
  {
    v6[0] = v3;
    v6[1] = v4;
    v7 = v5;
  }

  else
  {
    sub_27440CB1C(&v3, &qword_28094A4B0);
    v1 = *(v0 + 56);
    *&v3 = *(v0 + 48);
    *(&v3 + 1) = v1;

    sub_27463C31C();
  }

  sub_27463C30C();
  return sub_274430664(v6);
}

uint64_t sub_274430194()
{
  sub_27442E410(v3);
  sub_27442E410(v2);
  v0 = MEMORY[0x277C58A40](v3, v2);
  sub_274430664(v2);
  sub_274430664(v3);
  return v0 & 1;
}

uint64_t sub_2744301F8()
{
  sub_27463C74C();
  sub_2744300DC();
  return sub_27463C7AC();
}

uint64_t sub_274430240()
{
  sub_27463C74C();
  sub_2744300DC();
  return sub_27463C7AC();
}

unint64_t sub_274430294()
{
  result = qword_28094A478;
  if (!qword_28094A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A478);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
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

uint64_t sub_27443034C(uint64_t a1)
{
  v3 = v2;
  v23 = v1[4];
  v21 = v1[6];
  v22 = v1[5];
  v4 = v1[8];
  v20 = v1[7];
  v19 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v8 = v1[12];
  v7 = v1[13];
  v9 = v1[14];
  v3[2] = v23;
  v3[3] = v22;
  v3[4] = v21;
  v3[5] = v20;
  v3[6] = v4;
  v3[7] = v19;
  v3[8] = v5;
  v3[9] = v6;
  v3[10] = v8;
  v3[11] = v7;
  v3[12] = v9;
  v10 = type metadata accessor for ListParameterListContentView();
  OUTLINED_FUNCTION_19_0(v10);
  v12 = (*(v11 + 80) + 120) & ~*(v11 + 80);
  v14 = v1[3];
  v18 = v1[2];
  v15 = *(v1 + ((*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  v3[13] = v16;
  *v16 = v3;
  v16[1] = sub_2744304E8;

  return sub_274420E1C(a1, v18, v14, v1 + v12, v15, v23, v22, v21);
}

uint64_t sub_2744304E8()
{
  OUTLINED_FUNCTION_79();
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  *v2 = v1;

  OUTLINED_FUNCTION_92();

  return v3();
}

unint64_t sub_274430610()
{
  result = qword_28094A4A8;
  if (!qword_28094A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A4A8);
  }

  return result;
}

uint64_t sub_2744306B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_27443071C()
{
  result = qword_28094A4D0;
  if (!qword_28094A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A4D0);
  }

  return result;
}

uint64_t sub_274430770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27463AF4C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_274430844(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4E8);
  v34 = a2;
  result = sub_27463C5FC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_274525134(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_27463C74C();
    sub_27463B71C();
    result = sub_27463C7AC();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

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
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}