uint64_t sub_1BD4901F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - v6;
  v8 = type metadata accessor for AccountBalance(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for SavingsSummaryView();
  sub_1BD0DE19C(v7, v3, &qword_1EBD40EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47370);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v7, &qword_1EBD40EC8);
}

id sub_1BD490334()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B80E0], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v1 + 8))(v5, v0);
    v26 = v8;
    v27 = v10;
    sub_1BD0DDEBC();
    v11 = sub_1BE0506C4();
    v13 = v12;
    LOBYTE(v7) = v14;
    sub_1BE050424();
    v15 = sub_1BE0505F4();
    v17 = v16;
    v19 = v18;

    sub_1BD0DDF10(v11, v13, v7 & 1);

    sub_1BE051494();
    v20 = sub_1BE050564();
    v22 = v21;
    LOBYTE(v8) = v23;
    v25 = v24;

    sub_1BD0DDF10(v15, v17, v19 & 1);

    v26 = v20;
    v27 = v22;
    LOBYTE(v8) = v8 & 1;
    v28 = v8;
    v29 = v25;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v20, v22, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD4905A0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47398);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v19 - v5;
  *v6 = sub_1BE04F7C4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473A0);
  sub_1BD48E7EC(v1, &v6[*(v7 + 44)]);
  v8 = sub_1BE0501F4();
  PKSavingsFDICSignageEnabled();
  sub_1BE04E1F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1BD06ED94(v6, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473A8);
  v18 = a1 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_1BD4906C0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SavingsSummaryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD48FC38(a1, a2, v6);
}

unint64_t sub_1BD490740()
{
  result = qword_1EBD473F0;
  if (!qword_1EBD473F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40EC8);
    sub_1BD490A30(&qword_1EBD387D0, type metadata accessor for AccountBalance);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD473F0);
  }

  return result;
}

uint64_t sub_1BD4907F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD49085C()
{
  result = qword_1EBD47408;
  if (!qword_1EBD47408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47408);
  }

  return result;
}

unint64_t sub_1BD4908B0()
{
  result = qword_1EBD47410;
  if (!qword_1EBD47410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47400);
    sub_1BD490934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47410);
  }

  return result;
}

unint64_t sub_1BD490934()
{
  result = qword_1EBD47418;
  if (!qword_1EBD47418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47420);
    sub_1BD49085C();
    swift_getOpaqueTypeConformance2();
    sub_1BD490A30(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47418);
  }

  return result;
}

uint64_t sub_1BD490A30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_47()
{
  v1 = (type metadata accessor for SavingsSummaryView() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v2 + v1[9];
  v4 = type metadata accessor for AccountBalance(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = *(v4 + 20);
    v6 = sub_1BE04AF64();
    (*(*(v6 - 8) + 8))(&v3[v5], v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47370);

  return swift_deallocObject();
}

uint64_t sub_1BD490BDC()
{
  type metadata accessor for SavingsSummaryView();

  return sub_1BD4901F4();
}

uint64_t sub_1BD490C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD490CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD490D14()
{
  result = qword_1EBD47450;
  if (!qword_1EBD47450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47450);
  }

  return result;
}

uint64_t sub_1BD490D68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD490DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD490E38()
{
  result = qword_1EBD47460;
  if (!qword_1EBD47460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD473A8);
    sub_1BD0DE4F4(&qword_1EBD47468, &qword_1EBD47398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47460);
  }

  return result;
}

uint64_t sub_1BD490F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47488);
  v3 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v4);
  v6 = (&v113 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47490);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v113 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47498);
  MEMORY[0x1EEE9AC00](v11, v12);
  v128 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v113 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v113 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD474A0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v130 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v132 = &v113 - v28;
  v158[0] = *a1;
  v29 = v158[0];
  if (v158[0])
  {
    v115 = *(a1 + 32);
    v126 = *(a1 + 16);
    v127 = v3;
    v125 = *(a1 + 24);
    v114 = v7;
    v118 = v11;
    sub_1BD0DE19C(v158, &v140, &qword_1EBD474B8);
    sub_1BD0DE19C(v158, &v140, &qword_1EBD474B8);
    sub_1BE048C84();
    v124 = sub_1BE050224();
    sub_1BE04E1F4();
    v122 = v31;
    v123 = v30;
    v120 = v33;
    v121 = v32;
    v156 = 0;
    v119 = sub_1BE0501E4();
    sub_1BE04E1F4();
    v35 = v34;
    v37 = v36;
    v116 = v39;
    v117 = v38;
    v157 = 0;
    sub_1BE051984();
    v40 = sub_1BE0501E4();
    sub_1BE04E1F4();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8) + 36)];
    *v49 = v40;
    *(v49 + 1) = v42;
    *(v49 + 2) = v44;
    *(v49 + 3) = v46;
    *(v49 + 4) = v48;
    v49[40] = 0;
    v50 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v51 = &v10[*(v114 + 9)];
    *v51 = v50;
    *(v51 + 1) = v52;
    *(v51 + 2) = v53;
    *(v51 + 3) = v54;
    *(v51 + 4) = v55;
    v51[40] = 0;
    v56 = sub_1BE050224();
    if (v115)
    {
      v57 = 2;
    }

    else
    {
      v57 = 1;
    }

    v115 = v57;
    sub_1BE04E1F4();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    sub_1BD0DE204(v10, v17, &qword_1EBD47490);
    v66 = &v17[*(v118 + 36)];
    *v66 = v56;
    *(v66 + 1) = v59;
    *(v66 + 2) = v61;
    *(v66 + 3) = v63;
    *(v66 + 4) = v65;
    v66[40] = 0;
    sub_1BD0DE204(v17, v21, &qword_1EBD47498);
    v67 = v128;
    sub_1BD0DE19C(v21, v128, &qword_1EBD47498);
    v114 = v21;
    v69 = v125;
    v68 = v126;
    *&v133 = v29;
    *(&v133 + 1) = v126;
    *&v134 = v125;
    BYTE8(v134) = v57;
    v70 = v124;
    LOBYTE(v135) = v124;
    v72 = v122;
    v71 = v123;
    *(&v135 + 1) = v123;
    *&v136 = v122;
    v74 = v120;
    v73 = v121;
    *(&v136 + 1) = v121;
    *&v137 = v120;
    BYTE8(v137) = 0;
    v118 = v29;
    v75 = v119;
    LOBYTE(v138) = v119;
    *(&v138 + 1) = v35;
    *&v139[0] = v37;
    v77 = v116;
    v76 = v117;
    *(&v139[0] + 1) = v117;
    *&v139[1] = v116;
    BYTE8(v139[1]) = 0;
    v78 = v136;
    v6[2] = v135;
    v6[3] = v78;
    *(v6 + 105) = *(v139 + 9);
    v79 = v139[0];
    v6[5] = v138;
    v6[6] = v79;
    v6[4] = v137;
    v80 = v134;
    *v6 = v133;
    v6[1] = v80;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD474C0);
    sub_1BD0DE19C(v67, v6 + *(v81 + 48), &qword_1EBD47498);
    sub_1BD0DE19C(&v133, &v140, &qword_1EBD474B0);
    sub_1BD0DE53C(v158, &qword_1EBD474B8);
    sub_1BD0DE53C(v114, &qword_1EBD47498);
    sub_1BD0DE53C(v67, &qword_1EBD47498);
    v140 = v118;
    v141 = v68;
    v142 = v69;
    v143 = v115;
    v144 = v70;
    v145 = v71;
    v146 = v72;
    v147 = v73;
    v148 = v74;
    v149 = 0;
    v150 = v75;
    v151 = v35;
    v152 = v37;
    v153 = v76;
    v154 = v77;
    v155 = 0;
    sub_1BD0DE53C(&v140, &qword_1EBD474B0);
    v82 = v132;
    sub_1BD0DE204(v6, v132, &qword_1EBD47488);
    (*(v127 + 56))(v82, 0, 1, v129);
  }

  else
  {
    (*(v3 + 56))(v132, 1, 1, v129, v27);
  }

  if (*(a1 + 32))
  {
    v83 = 2;
  }

  else
  {
    v83 = 1;
  }

  v84 = *(a1 + 8);
  v85 = *(a1 + 16);
  v129 = *(a1 + 24);
  v86 = v84;
  sub_1BE048C84();
  v87 = sub_1BE050224();
  sub_1BE04E1F4();
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v156 = 0;
  v96 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v157 = 0;
  v105 = v130;
  sub_1BD0DE19C(v132, v130, &qword_1EBD474A0);
  v106 = v131;
  sub_1BD0DE19C(v105, v131, &qword_1EBD474A0);
  v107 = (v106 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD474A8) + 48));
  *&v133 = v86;
  *(&v133 + 1) = v85;
  v108 = v129;
  *&v134 = v129;
  BYTE8(v134) = v83;
  LOBYTE(v135) = v87;
  *(&v135 + 1) = v89;
  *&v136 = v91;
  *(&v136 + 1) = v93;
  *&v137 = v95;
  BYTE8(v137) = 0;
  LOBYTE(v138) = v96;
  *(&v138 + 1) = v98;
  *&v139[0] = v100;
  *(&v139[0] + 1) = v102;
  *&v139[1] = v104;
  BYTE8(v139[1]) = 0;
  v109 = v134;
  *v107 = v133;
  v107[1] = v109;
  v110 = v138;
  v107[4] = v137;
  v107[5] = v110;
  v107[6] = v139[0];
  *(v107 + 105) = *(v139 + 9);
  v111 = v136;
  v107[2] = v135;
  v107[3] = v111;
  sub_1BD0DE19C(&v133, &v140, &qword_1EBD474B0);
  sub_1BD0DE53C(v132, &qword_1EBD474A0);
  v140 = v86;
  v141 = v85;
  v142 = v108;
  v143 = v83;
  v144 = v87;
  v145 = v89;
  v146 = v91;
  v147 = v93;
  v148 = v95;
  v149 = 0;
  v150 = v96;
  v151 = v98;
  v152 = v100;
  v153 = v102;
  v154 = v104;
  v155 = 0;
  sub_1BD0DE53C(&v140, &qword_1EBD474B0);
  return sub_1BD0DE53C(v105, &qword_1EBD474A0);
}

uint64_t sub_1BD4916C4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47470);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v20 - v5;
  v7 = *(v1 + 16);
  v20[0] = *v1;
  v20[1] = v7;
  v20[2] = *(v1 + 32);
  v21 = *(v1 + 48);
  *v6 = sub_1BE04F7C4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47478);
  sub_1BD490F1C(v20, &v6[*(v8 + 44)]);
  v9 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1BD0DE204(v6, a1, &qword_1EBD47470);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47480);
  v19 = a1 + *(result + 36);
  *v19 = v9;
  *(v19 + 8) = v11;
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = 0;
  return result;
}

unint64_t sub_1BD491828()
{
  result = qword_1EBD474C8;
  if (!qword_1EBD474C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47480);
    sub_1BD4918B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD474C8);
  }

  return result;
}

unint64_t sub_1BD4918B4()
{
  result = qword_1EBD474D0;
  if (!qword_1EBD474D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD474D0);
  }

  return result;
}

unint64_t sub_1BD49191C()
{
  result = qword_1EBD474D8;
  if (!qword_1EBD474D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD474D8);
  }

  return result;
}

void sub_1BD491970()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v7, v8, "startAuthenticatorEvaluation", v9, 2u);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_1BD4218D0();
  v10 = sub_1BE04CA64();

  if (v10)
  {
    sub_1BD4218D0();
    v11 = sub_1BE04CB34();

    if (v11)
    {
      sub_1BD429354();
      return;
    }
  }

  sub_1BD4218D0();
  v12 = sub_1BE04CA44();

  sub_1BD4218D0();
  v13 = sub_1BE04C984();

  if (v12)
  {
    if ((v13 & 1) == 0)
    {
      [*(*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) fallbackToSystemPasscodeUI];
      return;
    }

    goto LABEL_10;
  }

  if (v13)
  {
LABEL_10:
    sub_1BD7F2C38();
    sub_1BD42989C();
    return;
  }

  sub_1BD42B138();
}

uint64_t sub_1BD491BC4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52060);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE28);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0BA770;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  v7 = *MEMORY[0x1E69BCA88];
  v8 = sub_1BE04C974();
  v9 = *(*(v8 - 8) + 104);
  v9(v5, v7, v8);
  *(v5 + v6) = 0;
  v10 = *(v1 + 48);
  v9(v5 + v2, *MEMORY[0x1E69BCA40], v8);
  *(v5 + v2 + v10) = 1;
  v11 = *(v1 + 48);
  v9(v5 + 2 * v2, *MEMORY[0x1E69BCA48], v8);
  *(v5 + 2 * v2 + v11) = 2;
  v12 = *(v1 + 48);
  v9(v5 + 3 * v2, *MEMORY[0x1E69BCA80], v8);
  *(v5 + 3 * v2 + v12) = 3;
  v13 = *(v1 + 48);
  v9(v5 + 4 * v2, *MEMORY[0x1E69BCA78], v8);
  *(v5 + 4 * v2 + v13) = 4;
  v14 = *(v1 + 48);
  v9(v5 + 5 * v2, *MEMORY[0x1E69BCA38], v8);
  *(v5 + 5 * v2 + v14) = 5;
  v15 = *(v1 + 48);
  v9(v5 + 6 * v2, *MEMORY[0x1E69BCA50], v8);
  *(v5 + 6 * v2 + v15) = 6;
  v16 = *(v1 + 48);
  v9(v5 + 7 * v2, *MEMORY[0x1E69BCA60], v8);
  *(v5 + 7 * v2 + v16) = 7;
  v17 = *(v1 + 48);
  v9(v5 + 8 * v2, *MEMORY[0x1E69BCA70], v8);
  *(v5 + 8 * v2 + v17) = 8;
  v18 = *(v1 + 48);
  v9(v5 + 9 * v2, *MEMORY[0x1E69BCA58], v8);
  *(v5 + 9 * v2 + v18) = 9;
  v19 = *(v1 + 48);
  v9(v5 + 10 * v2, *MEMORY[0x1E69BCA30], v8);
  *(v5 + 10 * v2 + v19) = 10;
  v20 = *(v1 + 48);
  v9(v5 + 11 * v2, *MEMORY[0x1E69BCA68], v8);
  *(v5 + 11 * v2 + v20) = 11;
  v21 = sub_1BD1AB490(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v22 = sub_1BD421A40();
  if (v22)
  {
    v23 = v22;
    if ([v22 respondsToSelector_])
    {
      if (*(v21 + 16) && (v24 = sub_1BD1490C0(a1), (v25 & 1) != 0))
      {
        v26 = *(*(v21 + 56) + 8 * v24);
      }

      else
      {
        v26 = 0;
      }

      [v23 didEncounterAuthorizationEvent_];
    }

    else
    {
    }

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1BD492024()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v5 = sub_1BE04D204();
  v6 = sub_1BE052C54();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v5, v6, "suspendAuthenticatorEvaluation", v7, 2u);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return sub_1BD4241C0(1);
}

uint64_t sub_1BD492170()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v5 = sub_1BE04D204();
  v6 = sub_1BE052C54();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v5, v6, "resumeAuthenticatorEvaluation", v7, 2u);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return sub_1BD429900();
}

void sub_1BD4922B8(void *a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v49 - v10);
  v12 = sub_1BE04C7B4();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = [a1 kind];
  if (v18 <= 4)
  {
    if (v18 > 1)
    {
      if (v18 != 2)
      {
        if (v18 == 3)
        {
          v27 = [a1 paymentMethod];
          sub_1BD492A14(v27);
        }

        else
        {
          sub_1BD492BDC();
        }

        goto LABEL_43;
      }

      v30 = [a1 shippingMethod];
      if (!v30)
      {
        goto LABEL_49;
      }

      v25 = v30;
      v26 = &selRef_authorizationDidSelectShippingMethod_;
      goto LABEL_28;
    }

    if (!v18)
    {
      sub_1BD4929C0();
      goto LABEL_43;
    }

    if (v18 == 1)
    {
      v24 = [a1 shippingContact];
      if (v24)
      {
        v25 = v24;
        v26 = &selRef_authorizationDidSelectShippingAddress_;
LABEL_28:
        sub_1BD492AF4(v25, v26);

        goto LABEL_43;
      }

      __break(1u);
      goto LABEL_45;
    }

LABEL_35:
    sub_1BE04D084();
    v35 = a1;
    v36 = sub_1BE04D204();
    v37 = sub_1BE052C34();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v38 = 136315138;
      v39 = [v35 kind];
      if (v39 > 0xA)
      {
        v40 = @"unknown";
        v41 = @"unknown";
      }

      else
      {
        v40 = off_1E800FEA8[v39];
        v41 = off_1E800FF00[v39];
      }

      v42 = v40;
      v43 = v41;

      if (!v43)
      {
        goto LABEL_52;
      }

      v44 = sub_1BE052434();
      v46 = v45;

      v47 = sub_1BD123690(v44, v46, &v50);

      *(v38 + 4) = v47;
      _os_log_impl(&dword_1BD026000, v36, v37, "Unhandled client callback for %s", v38, 0xCu);
      v48 = v49;
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x1BFB45F20](v48, -1, -1);
      MEMORY[0x1BFB45F20](v38, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v7, v3);
    goto LABEL_43;
  }

  if (v18 <= 7)
  {
    if (v18 == 5)
    {
      v31 = [a1 payment];
      if (v31)
      {
        v32 = v31;
        sub_1BD492AF4(v31, &selRef_authorizationDidAuthorizePayment_);

        if ([*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0)) mode] == 2)
        {
          sub_1BD4218D0();
          (*(v13 + 104))(v17, *MEMORY[0x1E69BC988], v12);
          v33 = sub_1BE051F44();
          (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
          sub_1BD83C0A8(v17, 0, 0, v11);

          sub_1BD492C4C(v11);
          (*(v13 + 8))(v17, v12);
        }

        goto LABEL_43;
      }

      goto LABEL_50;
    }

    if (v18 != 6)
    {
      v19 = [a1 authorizedPeerPaymentQuote];
      if (v19)
      {
        v20 = v19;
        v21 = &selRef_authorizationDidAuthorizePeerPaymentQuote_;
LABEL_34:
        sub_1BD492B5C(v20, v21);

        goto LABEL_43;
      }

      goto LABEL_47;
    }

    v28 = [a1 purchase];
    if (v28)
    {
      v25 = v28;
      v26 = &selRef_authorizationDidAuthorizePurchase_;
      goto LABEL_28;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v18 == 8)
  {
    v34 = [a1 applePayTrustSignature];
    if (v34)
    {
      v20 = v34;
      v21 = &selRef_authorizationDidAuthorizeApplePayTrustSignature_;
      goto LABEL_34;
    }

    goto LABEL_51;
  }

  if (v18 == 9)
  {
    v29 = [a1 accountServicePaymentMethod];
    if (v29)
    {
      v20 = v29;
      v21 = &selRef_authorizationDidUpdateAccountServicePaymentMethod_;
      goto LABEL_34;
    }

    goto LABEL_46;
  }

  if (v18 != 10)
  {
    goto LABEL_35;
  }

  v22 = [a1 couponCode];
  if (v22)
  {
    v23 = v22;
    sub_1BE052434();

    sub_1BD492A70();

LABEL_43:
    [a1 kind];
    return;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t sub_1BD492914(uint64_t a1)
{
  result = sub_1BD421C94(0);
  v4 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x90));
  if (*(v4 + 32) == 1)
  {
    result = sub_1BD421A40();
    if (result)
    {
      v5 = result;
      if (a1)
      {
        v6 = sub_1BE04A844();
      }

      else
      {
        v6 = 0;
      }

      [v5 authorizationDidFinishWithError_];

      result = swift_unknownObjectRelease();
    }

    *(v4 + 32) = 0;
  }

  return result;
}

void *sub_1BD4929C0()
{
  result = sub_1BD421A40();
  if (result)
  {
    [result authorizationDidRequestMerchantSession];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1BD492A14(uint64_t a1)
{
  result = sub_1BD421A40();
  if (result)
  {
    [result authorizationDidSelectPaymentMethod_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD492A70()
{
  result = sub_1BD421A40();
  if (result)
  {
    v1 = result;
    v2 = sub_1BE052404();
    [v1 authorizationDidChangeCouponCode_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1BD492AF4(uint64_t a1, SEL *a2)
{
  result = sub_1BD421A40();
  if (result)
  {
    [result *a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1BD492B5C(uint64_t a1, SEL *a2)
{
  result = sub_1BD421A40();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 *a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1BD492BDC()
{
  result = sub_1BD421A40();
  if (result)
  {
    v1 = result;
    if ([result respondsToSelector_])
    {
      [v1 authorizationDidAuthorizeContext];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD492C4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id WrappedPass.secureElementPass.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD49C4D4(v1, v9, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD492EA0(v9, type metadata accessor for WrappedPass);
      return 0;
    }

    else
    {
      sub_1BD49C53C(v9, v5, type metadata accessor for PlaceholderPass);
      v11 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
      [v11 setCardType_];
      sub_1BD492EA0(v5, type metadata accessor for PlaceholderPass);
    }
  }

  else
  {
    v12 = *v9;
    v11 = [*v9 secureElementPass];
  }

  return v11;
}

uint64_t sub_1BD492EA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1BD492F00()
{
  v1 = v0;
  v2 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD49C4D4(v1, v9, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1BD49C53C(v9, v5, type metadata accessor for PlaceholderPass);
      v14 = *(v5 + 2);
      sub_1BE048C84();
      sub_1BD492EA0(v5, type metadata accessor for PlaceholderPass);
      return v14;
    }

    v11 = *v9;
    result = [*v9 passIdentifier];
    if (result)
    {
LABEL_6:
      v13 = result;
      v14 = sub_1BE052434();

      return v14;
    }

    __break(1u);
  }

  v11 = *v9;
  result = [*v9 uniqueID];
  if (result)
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_1BD4930AC(char *a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v136 = type metadata accessor for UnavailablePass(0);
  v134 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v3);
  v5 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for AvailablePass(0);
  v6 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v7);
  v128 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v127 - v11;
  v137 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v137, v13);
  v135 = (&v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v127 - v17);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v127 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v131 = &v127 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v130 = &v127 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v37 = &v127 - v36;
  v138 = a1;
  v38 = [a1 paymentRequest];
  if (!v38)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v39 = v38;
  v40 = [v38 originatingURL];

  v129 = v26;
  if (v40)
  {
    sub_1BE04A9F4();

    v41 = sub_1BE04AA64();
    (*(*(v41 - 8) + 56))(v37, 0, 1, v41);
  }

  else
  {
    v42 = sub_1BE04AA64();
    (*(*(v42 - 8) + 56))(v37, 1, 1, v42);
  }

  v43 = v133;
  sub_1BD0DE53C(v37, &unk_1EBD3CF70);
  v44 = type metadata accessor for Passes(0);
  *(v43 + *(v44 + 40)) = v40 != 0;
  v45 = v138;
  v46 = [v138 paymentRequest];
  if (!v46)
  {
    goto LABEL_65;
  }

  v47 = v46;
  v48 = [v46 supportedNetworks];

  type metadata accessor for PKPaymentNetwork(0);
  v49 = sub_1BE052744();

  *(v43 + *(v44 + 44)) = v49;
  v50 = v44;
  if ([v45 mode] == 1)
  {
    v51 = [v45 pass];
    v37 = v45;
    if (v51)
    {
      *v22 = v51;
      swift_storeEnumTagMultiPayload();
      v52 = v45;
      v53 = v130;
      sub_1BD4954F8(v22, v52, v130);
      v54 = 0;
    }

    else
    {
      v54 = 1;
      v53 = v130;
    }

    (*(v6 + 56))(v53, v54, 1, v132);
    sub_1BD49C65C(v53, v43);
    v64 = [v45 paymentApplication];
    v132 = v50;
    *(v43 + v50[5]) = v64;
    v65 = [v45 acceptedPasses];
    if (v65)
    {
      v66 = v65;
      v67 = sub_1BE052744();

      v68 = v67;
      v69 = *(v67 + 16);
      v70 = MEMORY[0x1E69E7CC0];
      if (v69)
      {
        v140 = MEMORY[0x1E69E7CC0];
        v71 = v68;
        sub_1BD531A40(0, v69, 0);
        v72 = v140;
        v131 = v71;
        v73 = v71 + 32;
        do
        {
          sub_1BD038CD0(v73, &v143);
          sub_1BD038CD0(&v143, &v141);
          sub_1BD0E5E8C(0, &unk_1EBD40340);
          swift_dynamicCast();
          *v22 = v139;
          swift_storeEnumTagMultiPayload();
          sub_1BD4954F8(v22, v138, v12);
          __swift_destroy_boxed_opaque_existential_0(&v143);
          v140 = v72;
          v75 = v72[2];
          v74 = v72[3];
          if (v75 >= v74 >> 1)
          {
            sub_1BD531A40(v74 > 1, v75 + 1, 1);
            v72 = v140;
          }

          v72[2] = v75 + 1;
          sub_1BD49C53C(v12, v72 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v75, type metadata accessor for AvailablePass);
          v73 += 32;
          --v69;
        }

        while (v69);

        v43 = v133;
        v37 = v138;
        v70 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v72 = MEMORY[0x1E69E7CC0];
      }

      v76 = v132;
      *(v43 + *(v132 + 28)) = v72;
      v77 = [v37 unavailablePasses];
      if (v77)
      {
        v78 = v77;
        v79 = sub_1BE052744();

        v80 = *(v79 + 16);
        if (v80)
        {
          v140 = v70;
          v81 = v79;
          sub_1BD5319FC(0, v80, 0);
          v82 = v140;
          v131 = v81;
          v83 = v81 + 32;
          while (1)
          {
            sub_1BD038CD0(v83, &v143);
            sub_1BD038CD0(&v143, &v141);
            sub_1BD0E5E8C(0, &unk_1EBD40340);
            swift_dynamicCast();
            v84 = v139;
            *v18 = v139;
            swift_storeEnumTagMultiPayload();
            sub_1BD49C4D4(v18, v5, type metadata accessor for WrappedPass);
            v85 = v5;
            v86 = v136;
            v87 = &v85[*(v136 + 20)];
            *v87 = 0;
            *(v87 + 1) = 0;
            v88 = v37;
            v89 = v84;
            v90 = sub_1BD49ABC8(v18, v88);
            v91 = *(v86 + 28);
            v5 = v85;
            v92 = &v85[v91];
            *v92 = v90;
            *(v92 + 1) = v93;
            v92[16] = v94;
            sub_1BD49C4D4(v18, v135, type metadata accessor for WrappedPass);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload != 1)
              {

                sub_1BD492EA0(v18, type metadata accessor for WrappedPass);
                __swift_destroy_boxed_opaque_existential_0(&v143);
                sub_1BD492EA0(v135, type metadata accessor for WrappedPass);
                v97 = 0;
                goto LABEL_33;
              }

              v96 = *v135;
              v97 = [*v135 hasAssociatedPeerPaymentAccount];
            }

            else
            {
              v98 = *v135;
              v97 = [*v135 hasAssociatedPeerPaymentAccount];
            }

            sub_1BD492EA0(v18, type metadata accessor for WrappedPass);
            __swift_destroy_boxed_opaque_existential_0(&v143);
LABEL_33:
            v5[*(v136 + 24)] = v97;
            v140 = v82;
            v100 = v82[2];
            v99 = v82[3];
            if (v100 >= v99 >> 1)
            {
              sub_1BD5319FC(v99 > 1, v100 + 1, 1);
              v82 = v140;
            }

            v82[2] = v100 + 1;
            sub_1BD49C53C(v5, v82 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v100, type metadata accessor for UnavailablePass);
            v83 += 32;
            --v80;
            v37 = v138;
            if (!v80)
            {
              v101 = v138;

              v76 = v132;
              v43 = v133;
              goto LABEL_38;
            }
          }
        }

        v101 = v37;

        v82 = MEMORY[0x1E69E7CC0];
LABEL_38:
        *&v143 = v82;
        sub_1BE048C84();
        sub_1BD495FE4(&v143);

        *(v43 + v76[9]) = v143;
        v102 = v101;
        if ([v101 itemForType_])
        {
          sub_1BE053624();
          swift_unknownObjectRelease();
        }

        else
        {
          v141 = 0u;
          v142 = 0u;
        }

        v143 = v141;
        v144 = v142;
        if (*(&v142 + 1))
        {
          sub_1BD0E5E8C(0, &qword_1EBD3E6D0);
          if (swift_dynamicCast())
          {
            v103 = v140;
LABEL_46:
            v104 = v103 != 0;

            *(v43 + v76[6]) = v104;
            v105 = [v102 canAddPasses];

            *(v43 + v76[8]) = v105;
            return;
          }
        }

        else
        {
          sub_1BD0DE53C(&v143, &qword_1EBD3EC90);
        }

        v103 = 0;
        goto LABEL_46;
      }

      goto LABEL_68;
    }

    goto LABEL_66;
  }

  if ([v45 mode] == 2)
  {
    v55 = [v45 remotePaymentInstrument];
    v56 = v132;
    if (v55 || (v55 = [v45 initialRemotePaymentInstrument]) != 0)
    {
      *v22 = v55;
      v57 = v55;
      swift_storeEnumTagMultiPayload();
      v58 = v45;
      v59 = v57;
      v60 = v131;
      sub_1BD4954F8(v22, v58, v131);
      (*(v6 + 56))(v60, 0, 1, v56);
      sub_1BD49C65C(v60, v43);
      v61 = [v59 primaryPaymentApplication];
      if (v61)
      {
        v62 = v61;
        v63 = v129;
        sub_1BD0DE19C(v43, v129, &qword_1EBD520A0);
        if ((*(v6 + 48))(v63, 1, v56) == 1)
        {

          sub_1BD0DE53C(v63, &qword_1EBD520A0);
          v37 = 0;
        }

        else
        {
          v106 = v128;
          v107 = sub_1BD49C53C(v63, v128, type metadata accessor for AvailablePass);
          *&v143 = v62;
          MEMORY[0x1EEE9AC00](v107, v108);
          v125 = &v143;
          v37 = 0;
          v110 = sub_1BD30114C(sub_1BD49C6CC, (&v127 - 4), v109);
          sub_1BD492EA0(v106, type metadata accessor for AvailablePass);
          if (v110)
          {
LABEL_53:
            *(v43 + v50[5]) = v62;
            v112 = [v45 allAcceptedRemotePaymentInstruments];
            if (!v112)
            {
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
              goto LABEL_69;
            }

            v113 = v50;
            v114 = v112;
            v115 = v43;
            sub_1BD0E5E8C(0, &qword_1EBD47510);
            sub_1BD214890(&qword_1EBD475C8, &qword_1EBD47510);
            v116 = sub_1BE052A34();

            v117 = v45;
            v118 = sub_1BD49A760(v116, v117);

            *(v115 + v113[7]) = v118;
            v119 = [v117 allUnavailableRemotePaymentInstruments];
            if (!v119)
            {
LABEL_69:
              __break(1u);

              __break(1u);
              goto LABEL_70;
            }

            v120 = v119;
            v121 = sub_1BE052A34();

            v122 = v117;
            v123 = sub_1BD49B404(v121, v122);

            *&v143 = v123;
            sub_1BE048C84();
            sub_1BD495FE4(&v143);

            v124 = v133;
            *(v133 + v113[9]) = v143;
            if ([v122 itemForType_])
            {
              sub_1BE053624();

              swift_unknownObjectRelease();
            }

            else
            {

              v141 = 0u;
              v142 = 0u;
            }

            v143 = v141;
            v144 = v142;
            if (*(&v142 + 1))
            {
              sub_1BD0E5E8C(0, &qword_1EBD3E6D8);
              if (swift_dynamicCast())
              {

                *(v124 + v113[6]) = 1;
LABEL_63:
                *(v124 + v113[8]) = 0;
                return;
              }
            }

            else
            {
              sub_1BD0DE53C(&v143, &qword_1EBD3EC90);
            }

            *(v124 + v113[6]) = 0;
            goto LABEL_63;
          }
        }
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v111 = v131;
      (*(v6 + 56))(v131, 1, 1, v56);
      sub_1BD49C65C(v111, v43);
      v59 = 0;
      v37 = 0;
    }

    v62 = [v45 paymentApplication];
    goto LABEL_53;
  }

LABEL_70:
  v126 = 0;
  v125 = 584;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD49404C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnavailablePass(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for Passes(0);
  v9 = *(v1 + *(result + 36));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v11 < *(v9 + 16))
    {
      sub_1BD49C4D4(v12 + *(v4 + 72) * v11, v7, type metadata accessor for UnavailablePass);
      v13 = &v7[*(v3 + 28)];
      if (v13[16] >= 3u && *v13 >= 5uLL)
      {
        sub_1BD49C53C(v7, a1, type metadata accessor for UnavailablePass);
        v14 = 0;
        return (*(v4 + 56))(a1, v14, 1, v3);
      }

      ++v11;
      result = sub_1BD492EA0(v7, type metadata accessor for UnavailablePass);
      if (v10 == v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v14 = 1;
    return (*(v4 + 56))(a1, v14, 1, v3);
  }

  return result;
}

uint64_t sub_1BD4941F8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnavailablePass(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for Passes(0);
  v9 = *(v1 + *(result + 36));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v11 < *(v9 + 16))
    {
      sub_1BD49C4D4(v12 + *(v4 + 72) * v11, v7, type metadata accessor for UnavailablePass);
      if ((v7[*(v3 + 24)] & 1) == 0)
      {
        v13 = &v7[*(v3 + 28)];
        if (v13[16] < 3u || *v13 ^ 3 | *(v13 + 1))
        {
          sub_1BD49C53C(v7, a1, type metadata accessor for UnavailablePass);
          v14 = 0;
          return (*(v4 + 56))(a1, v14, 1, v3);
        }
      }

      ++v11;
      result = sub_1BD492EA0(v7, type metadata accessor for UnavailablePass);
      if (v10 == v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v14 = 1;
    return (*(v4 + 56))(a1, v14, 1, v3);
  }

  return result;
}

uint64_t sub_1BD4943B0()
{
  v1 = v0;
  v2 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD49C4D4(v1, v9, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1BD49C53C(v9, v5, type metadata accessor for PlaceholderPass);
    v14 = *v5;
    sub_1BE048C84();
    sub_1BD492EA0(v5, type metadata accessor for PlaceholderPass);
    return v14;
  }

  v11 = *v9;
  v12 = [*v9 displayName];
  if (!v12)
  {
    __break(1u);
LABEL_5:
    v11 = *v9;
    v12 = [*v9 localizedDescription];
  }

  v13 = v12;
  v14 = sub_1BE052434();

  return v14;
}

uint64_t sub_1BD494550()
{
  v1 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD49C4D4(v0, v4, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = *v4;
      v7 = [v6 primaryAccountNumberSuffix];
      v8 = PKMaskedPaymentPAN();

      if (v8)
      {
        v9 = sub_1BE052434();

        return v9;
      }

      goto LABEL_11;
    }

    sub_1BD492EA0(v4, type metadata accessor for WrappedPass);
  }

  else
  {
    v6 = *v4;
    v11 = PKSanitizedPrimaryAccountRepresentationForPass();
    if (!v11)
    {
LABEL_11:

      return 0;
    }

    v12 = v11;
    v13 = sub_1BE052434();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      return v13;
    }
  }

  return 0;
}

void WrappedPass.devicePrimaryPaymentApplication.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD49C4D4(v1, v9, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v11 = *v9;
    v12 = [*v9 devicePrimaryPaymentApplication];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *v9;
    v12 = [*v9 primaryPaymentApplication];
LABEL_5:
    v12;

    return;
  }

  sub_1BD49C53C(v9, v5, type metadata accessor for PlaceholderPass);
  v13 = [objc_allocWithZone(MEMORY[0x1E69B8B40]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B7020;
  v15 = objc_allocWithZone(MEMORY[0x1E69B85A0]);
  v16 = sub_1BE052404();
  v17 = [v15 initWithIdentifier_];

  if (v17)
  {
    *(inited + 32) = v17;
    sub_1BD111DE4(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1BD0E5E8C(0, &qword_1EBD398B8);
    sub_1BD214890(&qword_1EBD474E0, &qword_1EBD398B8);
    v18 = sub_1BE052A24();

    [v13 setSubcredentials_];

    sub_1BD492EA0(v5, type metadata accessor for PlaceholderPass);
  }

  else
  {
    __break(1u);
  }
}

uint64_t static WrappedPass.== infix(_:_:)()
{
  v0 = sub_1BD492F00();
  v2 = v1;
  if (v0 == sub_1BD492F00() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1BE053B84();
  }

  return v4 & 1;
}

uint64_t WrappedPass.hash(into:)()
{
  sub_1BD492F00();
  sub_1BE052524();
}

uint64_t WrappedPass.hashValue.getter()
{
  sub_1BE053D04();
  sub_1BD492F00();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD494ACC()
{
  sub_1BE053D04();
  sub_1BD492F00();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD494B28()
{
  sub_1BD492F00();
  sub_1BE052524();
}

uint64_t sub_1BD494B78()
{
  sub_1BE053D04();
  sub_1BD492F00();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD494BD0()
{
  v0 = sub_1BD492F00();
  v2 = v1;
  if (v0 == sub_1BD492F00() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1BE053B84();
  }

  return v4 & 1;
}

uint64_t PlaceholderPass.hash(into:)()
{
  sub_1BE052524();
  sub_1BE052524();
  MEMORY[0x1BFB40DA0](*(v0 + 32));
  type metadata accessor for PlaceholderPass(0);
  sub_1BE04CF34();
  sub_1BD49B98C(&qword_1EBD474E8, MEMORY[0x1E6966770]);
  return sub_1BE052294();
}

uint64_t PlaceholderPass.hashValue.getter()
{
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE052524();
  MEMORY[0x1BFB40DA0](*(v0 + 32));
  type metadata accessor for PlaceholderPass(0);
  sub_1BE04CF34();
  sub_1BD49B98C(&qword_1EBD474E8, MEMORY[0x1E6966770]);
  sub_1BE052294();
  return sub_1BE053D64();
}

uint64_t sub_1BD494DD4()
{
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE052524();
  MEMORY[0x1BFB40DA0](*(v0 + 32));
  sub_1BE04CF34();
  sub_1BD49B98C(&qword_1EBD474E8, MEMORY[0x1E6966770]);
  sub_1BE052294();
  return sub_1BE053D64();
}

uint64_t sub_1BD494E98()
{
  sub_1BE052524();
  sub_1BE052524();
  MEMORY[0x1BFB40DA0](*(v0 + 32));
  sub_1BE04CF34();
  sub_1BD49B98C(&qword_1EBD474E8, MEMORY[0x1E6966770]);
  return sub_1BE052294();
}

uint64_t sub_1BD494F40()
{
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE052524();
  MEMORY[0x1BFB40DA0](*(v0 + 32));
  sub_1BE04CF34();
  sub_1BD49B98C(&qword_1EBD474E8, MEMORY[0x1E6966770]);
  sub_1BE052294();
  return sub_1BE053D64();
}

id sub_1BD495024(SEL *a1)
{
  v3 = v1;
  v4 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD49C4D4(v3, v11, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD492EA0(v11, type metadata accessor for WrappedPass);
      return 0;
    }

    sub_1BD49C53C(v11, v7, type metadata accessor for PlaceholderPass);
    v15 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
    [v15 setCardType_];
    sub_1BD492EA0(v7, type metadata accessor for PlaceholderPass);
  }

  else
  {
    v14 = *v11;
    v15 = [*v11 secureElementPass];

    if (!v15)
    {
      return 0;
    }
  }

  v16 = [v15 *a1];

  return v16;
}

uint64_t sub_1BD495204(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v13 = a2[6];
  v14 = a1[6];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1BE053B84()) && (v2 == v7 && v4 == v8 || (sub_1BE053B84()) && (v3 == v9 && v5 == v10 || (sub_1BE053B84()))
  {
    if (v6)
    {
      if (v11 && (v14 == v13 && v6 == v11 || (sub_1BE053B84() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1BD49532C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  return sub_1BE053074() & 1;
}

uint64_t sub_1BD49540C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD492F00();
  v8 = v7;
  if (v6 == sub_1BD492F00() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_1BE053B84();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a3 + 28);
  v12 = a1 + v11;
  v13 = *(a1 + v11);
  v14 = *(a1 + v11 + 8);
  v15 = a2 + v11;
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = *(v12 + 16);

  return sub_1BD498408(v13, v14, v19, v16, v17, v18);
}

uint64_t sub_1BD4954F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WrappedPass(0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v45 - v12);
  sub_1BD49C4D4(a1, a3, type metadata accessor for WrappedPass);
  v14 = type metadata accessor for AvailablePass(0);
  v15 = v14[6];
  v16 = type metadata accessor for IdentityCredential(0);
  (*(*(v16 - 8) + 56))(a3 + v15, 1, 1, v16);
  sub_1BD49C4D4(a1, v13, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *v13;
      v19 = [*v13 hasAssociatedPeerPaymentAccount];

      *(a3 + v14[5]) = v19;
      if ((v19 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      sub_1BD49C4D4(a1, v10, type metadata accessor for WrappedPass);
      v22 = v14[7];
      v23 = a2;
      sub_1BD4958E0(v10, v23, a3 + v22);
      v24 = v23;
      sub_1BD499F70(v24);
      v25 = (a3 + v14[8]);
      *v25 = v26;
      v25[1] = v27;
      v28 = sub_1BD49A330(v24);
      goto LABEL_9;
    }

    sub_1BD492EA0(v13, type metadata accessor for WrappedPass);
    *(a3 + v14[5]) = 0;
  }

  else
  {
    v20 = *v13;
    v21 = [*v13 hasAssociatedPeerPaymentAccount];

    *(a3 + v14[5]) = v21;
    if (v21)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  sub_1BD49C4D4(a1, v10, type metadata accessor for WrappedPass);
  sub_1BD495BD8(v10, a2, a3 + v14[7]);
  v28 = 0;
  v29 = (a3 + v14[8]);
  *v29 = 0;
  v29[1] = 0;
LABEL_9:
  *(a3 + v14[9]) = v28;
  sub_1BD49C4D4(a1, v10, type metadata accessor for WrappedPass);
  v30 = v14[10];
  v31 = a2;
  sub_1BD578D58(v10, v31, a3 + v30);
  sub_1BD49C4D4(a1, v10, type metadata accessor for WrappedPass);
  v32 = v31;
  sub_1BD42E9E4(v32, v10, v46);
  v33 = a3 + v14[13];
  v34 = v46[1];
  *v33 = v46[0];
  *(v33 + 16) = v34;
  *(v33 + 32) = v47;
  sub_1BD49C4D4(a1, v10, type metadata accessor for WrappedPass);
  v35 = v32;
  sub_1BD59B2B4(v35, v10, &v48);
  v36 = (a3 + v14[12]);
  v37 = v49[0];
  *v36 = v48;
  v36[1] = v37;
  *(v36 + 25) = *(v49 + 9);
  v38 = sub_1BD49A5B4(a1, v35, &selRef_acceptedPaymentApplicationsForPass_, &selRef_acceptedPaymentApplicationsForRemoteInstrument_);
  v39 = MEMORY[0x1E69E7CC0];
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  *(a3 + v14[14]) = v40;
  v41 = sub_1BD49A5B4(a1, v35, &selRef_unavailablePaymentApplicationsForPass_, &selRef_unavailablePaymentApplicationsForRemoteInstrument_);
  if (v41)
  {
    v42 = v41;
  }

  else
  {
    v42 = v39;
  }

  *(a3 + v14[15]) = v42;
  sub_1BD49C4D4(a1, v10, type metadata accessor for WrappedPass);
  v43 = sub_1BD2EE5AC(v10);

  result = sub_1BD492EA0(a1, type metadata accessor for WrappedPass);
  *(a3 + v14[11]) = v43;
  return result;
}

id sub_1BD4958E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for BalanceInfo(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD49C4D4(a1, v9, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {

      sub_1BD492EA0(v9, type metadata accessor for WrappedPass);
LABEL_12:
      sub_1BD492EA0(a1, type metadata accessor for WrappedPass);
      v26 = 1;
      return (*(v11 + 56))(a3, v26, 1, v10);
    }

    v16 = &selRef_peerPaymentAccountBalance;
  }

  else
  {
    v16 = &selRef_peerPaymentBalance;
  }

  v17 = *v9;
  v18 = [*v9 *v16];

  if (!v18)
  {

    goto LABEL_12;
  }

  *v14 = v18;
  v19 = v18;
  result = [a2 paymentRequest];
  if (result)
  {
    v21 = result;
    v22 = sub_1BD499A38(v19, result);

    v23 = sub_1BD499D4C(a1, a2);
    LOBYTE(v21) = v24;

    sub_1BD492EA0(a1, type metadata accessor for WrappedPass);
    if (v21)
    {
      if ((v22 & 1) == 0)
      {
LABEL_9:
        v25 = 0;
LABEL_15:
        v14[8] = v25;
        v27 = *(v10 + 28);
        v28 = sub_1BE04AF64();
        (*(*(v28 - 8) + 56))(&v14[v27], 1, 1, v28);
        v14[9] = 0;
        sub_1BD49C53C(v14, a3, type metadata accessor for BalanceInfo);
        v26 = 0;
        return (*(v11 + 56))(a3, v26, 1, v10);
      }
    }

    else if (!((v23 == 5) | v22 & 1))
    {
      goto LABEL_9;
    }

    v25 = 1;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

id sub_1BD495BD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for BalanceInfo(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD49C4D4(a1, v9, type metadata accessor for WrappedPass);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1BD492EA0(a1, type metadata accessor for WrappedPass);

    sub_1BD492EA0(v9, type metadata accessor for WrappedPass);
LABEL_9:
    v18 = 1;
    return (*(v11 + 56))(a3, v18, 1, v10);
  }

  v15 = *v9;
  v16 = [v15 bankConnectAccount];
  if (!v16)
  {
    sub_1BD492EA0(a1, type metadata accessor for WrappedPass);

    goto LABEL_8;
  }

  v17 = v16;
  if ([v16 accountType] || (v20 = objc_msgSend(v17, sel_balance)) == 0)
  {
    sub_1BD492EA0(a1, type metadata accessor for WrappedPass);

LABEL_6:
LABEL_8:

    goto LABEL_9;
  }

  v21 = v20;
  v22 = [v20 availableBalance];
  if (!v22)
  {
    v22 = [v21 bookedBalance];
    if (!v22)
    {
      sub_1BD492EA0(a1, type metadata accessor for WrappedPass);

      goto LABEL_6;
    }
  }

  v33 = v22;
  sub_1BD49A490(v22);
  v31 = v23;
  *v14 = v23;
  v24 = *(v10 + 28);
  v25 = [v21 lastUpdatedAt];
  v32 = v21;
  v26 = v25;
  sub_1BE04AEE4();

  v27 = sub_1BE04AF64();
  (*(*(v27 - 8) + 56))(&v14[v24], 0, 1, v27);
  if (!PKConnectedCardLowBalanceEnabled())
  {
    sub_1BD492EA0(a1, type metadata accessor for WrappedPass);

    v14[8] = 0;
    goto LABEL_18;
  }

  v28 = v33;
  result = [a2 paymentRequest];
  if (result)
  {
    v29 = result;
    LODWORD(v31) = sub_1BD499A38(v31, result);

    sub_1BD492EA0(a1, type metadata accessor for WrappedPass);
    v14[8] = v31 & 1;
LABEL_18:
    v14[9] = 1;
    sub_1BD49C53C(v14, a3, type metadata accessor for BalanceInfo);
    v18 = 0;
    return (*(v11 + 56))(a3, v18, 1, v10);
  }

  __break(1u);
  return result;
}

void sub_1BD495FE4(void **a1)
{
  v2 = *(type metadata accessor for UnavailablePass(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED6F0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1BD49608C(v5);
  *a1 = v3;
}

void sub_1BD49608C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BE053B14();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for UnavailablePass(0);
        v6 = sub_1BE0527B4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for UnavailablePass(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BD49676C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BD4961B8(0, v2, 1, a1);
  }
}

void sub_1BD4961B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v70 = (&v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v78 = (&v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v63 - v16);
  v74 = type metadata accessor for UnavailablePass(0);
  MEMORY[0x1EEE9AC00](v74, v18);
  v73 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v63 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v63 - v27;
  v65 = a2;
  if (a3 == a2)
  {
    return;
  }

  v29 = *a4;
  v30 = *(v26 + 72);
  v31 = *a4 + v30 * (a3 - 1);
  v71 = -v30;
  v72 = v29;
  v32 = a1 - a3;
  v64 = v30;
  v33 = v29 + v30 * a3;
  v76 = v17;
  v77 = v11;
  v79 = v23;
  v75 = &v63 - v27;
LABEL_6:
  v68 = v31;
  v69 = a3;
  v66 = v33;
  v67 = v32;
  while (1)
  {
    sub_1BD49C4D4(v33, v28, type metadata accessor for UnavailablePass);
    sub_1BD49C4D4(v31, v23, type metadata accessor for UnavailablePass);
    sub_1BD49C4D4(v28, v17, type metadata accessor for WrappedPass);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v42 = *v17;
      v43 = [*v17 localizedDescription];
      v38 = sub_1BE052434();
      v40 = v44;

LABEL_13:
      v41 = v78;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v45 = v70;
      sub_1BD49C53C(v17, v70, type metadata accessor for PlaceholderPass);
      v38 = *v45;
      v40 = v45[1];
      sub_1BE048C84();
      sub_1BD492EA0(v45, type metadata accessor for PlaceholderPass);
      goto LABEL_13;
    }

    v35 = *v17;
    v36 = [v35 displayName];
    if (!v36)
    {
      goto LABEL_30;
    }

    v37 = v36;
    v38 = sub_1BE052434();
    v40 = v39;

    v41 = v78;
    v23 = v79;
LABEL_14:
    sub_1BD49C4D4(v23, v41, type metadata accessor for WrappedPass);
    v46 = swift_getEnumCaseMultiPayload();
    if (v46)
    {
      if (v46 == 1)
      {
        v47 = *v41;
        v48 = [*v41 displayName];
        if (!v48)
        {
          goto LABEL_29;
        }

        v49 = v48;
        v50 = sub_1BE052434();
        v52 = v51;

        if (v38 != v50)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v57 = v41;
        v58 = v70;
        sub_1BD49C53C(v57, v70, type metadata accessor for PlaceholderPass);
        v59 = *v58;
        v52 = v58[1];
        sub_1BE048C84();
        sub_1BD492EA0(v58, type metadata accessor for PlaceholderPass);
        if (v38 != v59)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v53 = *v41;
      v54 = [v53 localizedDescription];
      v55 = sub_1BE052434();
      v52 = v56;

      if (v38 != v55)
      {
        goto LABEL_23;
      }
    }

    if (v40 == v52)
    {

      v23 = v79;
      sub_1BD492EA0(v79, type metadata accessor for UnavailablePass);
      v28 = v75;
      sub_1BD492EA0(v75, type metadata accessor for UnavailablePass);
      v17 = v76;
LABEL_5:
      a3 = v69 + 1;
      v31 = v68 + v64;
      v32 = v67 - 1;
      v33 = v66 + v64;
      if (v69 + 1 == v65)
      {
        return;
      }

      goto LABEL_6;
    }

LABEL_23:
    v60 = sub_1BE053B84();

    v23 = v79;
    sub_1BD492EA0(v79, type metadata accessor for UnavailablePass);
    v28 = v75;
    sub_1BD492EA0(v75, type metadata accessor for UnavailablePass);
    v17 = v76;
    if ((v60 & 1) == 0)
    {
      goto LABEL_5;
    }

    if (!v72)
    {
      break;
    }

    v61 = v73;
    sub_1BD49C53C(v33, v73, type metadata accessor for UnavailablePass);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BD49C53C(v61, v31, type metadata accessor for UnavailablePass);
    v31 += v71;
    v33 += v71;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1BD49676C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v183 = a1;
  v6 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v199 = (&v178 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v207 = (&v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v208 = (&v178 - v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v195 = (&v178 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v196 = (&v178 - v20);
  v203 = type metadata accessor for UnavailablePass(0);
  v190 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203, v21);
  v187 = &v178 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v202 = &v178 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v178 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v206 = &v178 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v198 = &v178 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v194 = &v178 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v181 = &v178 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v180 = &v178 - v44;
  v192 = a3;
  v45 = *(a3 + 8);
  if (v45 < 1)
  {
    v47 = MEMORY[0x1E69E7CC0];
LABEL_128:
    a3 = *v183;
    if (!*v183)
    {
      goto LABEL_170;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_130:
      v209 = v47;
      v172 = *(v47 + 16);
      if (v172 >= 2)
      {
        while (*v192)
        {
          v173 = v47;
          v47 = *(v47 + 16 * v172);
          v174 = v173;
          v175 = *&v173[16 * v172 + 24];
          v176 = v197;
          sub_1BD49781C(*v192 + *(v190 + 72) * v47, *v192 + *(v190 + 72) * *&v173[16 * v172 + 16], *v192 + *(v190 + 72) * v175, a3);
          v197 = v176;
          if (v176)
          {
            goto LABEL_138;
          }

          if (v175 < v47)
          {
            goto LABEL_153;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v174 = sub_1BD5ED6C8(v174);
          }

          if (v172 - 2 >= *(v174 + 2))
          {
            goto LABEL_154;
          }

          v177 = &v174[16 * v172];
          *v177 = v47;
          v177[1] = v175;
          v209 = v174;
          sub_1BD5ED63C(v172 - 1);
          v47 = v209;
          v172 = *(v209 + 16);
          if (v172 <= 1)
          {
            goto LABEL_138;
          }
        }

        goto LABEL_168;
      }

LABEL_138:

      return;
    }

LABEL_160:
    v47 = sub_1BD5ED6C8(v47);
    goto LABEL_130;
  }

  v46 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  v182 = a4;
  v204 = v9;
  v205 = v29;
  while (1)
  {
    v48 = v46++;
    if (v46 < v45)
    {
      v188 = v45;
      v179 = v47;
      v49 = *v192;
      v50 = *(v190 + 72);
      v51 = v46;
      sub_1BD49C4D4(*v192 + v50 * v46, v180, type metadata accessor for UnavailablePass);
      v184 = v48;
      v191 = v50;
      sub_1BD49C4D4(v49 + v50 * v48, v181, type metadata accessor for UnavailablePass);
      v52 = sub_1BD4943B0();
      v54 = v53;
      if (v52 == sub_1BD4943B0() && v54 == v55)
      {
        LODWORD(v189) = 0;
      }

      else
      {
        LODWORD(v189) = sub_1BE053B84();
      }

      a3 = type metadata accessor for UnavailablePass;
      sub_1BD492EA0(v181, type metadata accessor for UnavailablePass);
      sub_1BD492EA0(v180, type metadata accessor for UnavailablePass);
      v56 = v184 + 2;
      v57 = v191 * (v184 + 2);
      v58 = v49 + v57;
      v59 = v191 * v46;
      v60 = v49 + v191 * v46;
      do
      {
        v46 = v56;
        v63 = v51;
        v47 = v59;
        v64 = v57;
        v201 = v56;
        if (v56 >= v188)
        {
          break;
        }

        v200 = v51;
        v65 = v194;
        sub_1BD49C4D4(v58, v194, type metadata accessor for UnavailablePass);
        sub_1BD49C4D4(v60, v198, type metadata accessor for UnavailablePass);
        sub_1BD49C4D4(v65, v196, type metadata accessor for WrappedPass);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v67 = *v196;
            v68 = [*v196 displayName];
            if (!v68)
            {
              goto LABEL_166;
            }

            v69 = v68;
            v193 = sub_1BE052434();
            v71 = v70;
          }

          else
          {
            v75 = v199;
            sub_1BD49C53C(v196, v199, type metadata accessor for PlaceholderPass);
            v71 = v75[1];
            v193 = *v75;
            sub_1BE048C84();
            sub_1BD492EA0(v75, type metadata accessor for PlaceholderPass);
          }
        }

        else
        {
          v72 = *v196;
          v73 = [*v196 localizedDescription];
          v193 = sub_1BE052434();
          v71 = v74;
        }

        sub_1BD49C4D4(v198, v195, type metadata accessor for WrappedPass);
        v76 = swift_getEnumCaseMultiPayload();
        if (v76)
        {
          if (v76 == 1)
          {
            v77 = *v195;
            v78 = [*v195 displayName];
            if (!v78)
            {
              goto LABEL_165;
            }

            v79 = v78;
            v80 = sub_1BE052434();
            v82 = v81;
          }

          else
          {
            v86 = v199;
            sub_1BD49C53C(v195, v199, type metadata accessor for PlaceholderPass);
            v80 = *v86;
            v82 = v86[1];
            sub_1BE048C84();
            sub_1BD492EA0(v86, type metadata accessor for PlaceholderPass);
          }
        }

        else
        {
          v83 = *v195;
          v84 = [*v195 localizedDescription];
          v80 = sub_1BE052434();
          v82 = v85;
        }

        v61 = v193 == v80 && v71 == v82 ? 0 : sub_1BE053B84();

        a3 = type metadata accessor for UnavailablePass;
        sub_1BD492EA0(v198, type metadata accessor for UnavailablePass);
        sub_1BD492EA0(v194, type metadata accessor for UnavailablePass);
        v62 = v189 ^ v61;
        v63 = v200;
        v46 = v201;
        v56 = v201 + 1;
        v58 += v191;
        v60 += v191;
        v51 = v200 + 1;
        v59 = v47 + v191;
        v57 = v64 + v191;
        v29 = v205;
      }

      while ((v62 & 1) == 0);
      if ((v189 & 1) == 0)
      {
        goto LABEL_43;
      }

      v48 = v184;
      a4 = v182;
      if (v46 < v184)
      {
        goto LABEL_157;
      }

      if (v184 < v46)
      {
        a3 = v184 * v191;
        do
        {
          if (v48 != v63)
          {
            v88 = *v192;
            if (!*v192)
            {
              goto LABEL_167;
            }

            v89 = v63;
            sub_1BD49C53C(v88 + a3, v187, type metadata accessor for UnavailablePass);
            if (a3 < v47 || v88 + a3 >= v88 + v64)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a3 != v47)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1BD49C53C(v187, v88 + v47, type metadata accessor for UnavailablePass);
            v63 = v89;
          }

          ++v48;
          v47 -= v191;
          v64 -= v191;
          a3 += v191;
        }

        while (v48 < v63--);
        v46 = v201;
LABEL_43:
        a4 = v182;
        v47 = v179;
        v48 = v184;
        goto LABEL_44;
      }

      v47 = v179;
    }

LABEL_44:
    v90 = v192[1];
    if (v46 < v90)
    {
      if (__OFSUB__(v46, v48))
      {
        goto LABEL_156;
      }

      if (v46 - v48 < a4)
      {
        break;
      }
    }

LABEL_77:
    if (v46 < v48)
    {
      goto LABEL_155;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_1BD1D7844(0, *(v47 + 16) + 1, 1, v47);
    }

    a3 = *(v47 + 16);
    v125 = *(v47 + 24);
    v126 = a3 + 1;
    if (a3 >= v125 >> 1)
    {
      v47 = sub_1BD1D7844((v125 > 1), a3 + 1, 1, v47);
    }

    *(v47 + 16) = v126;
    v127 = v47 + 16 * a3;
    *(v127 + 32) = v48;
    *(v127 + 40) = v46;
    v128 = *v183;
    if (!*v183)
    {
      goto LABEL_169;
    }

    if (a3)
    {
      while (1)
      {
        v129 = v126 - 1;
        if (v126 >= 4)
        {
          break;
        }

        if (v126 == 3)
        {
          v130 = *(v47 + 32);
          v131 = *(v47 + 40);
          v140 = __OFSUB__(v131, v130);
          v132 = v131 - v130;
          v133 = v140;
LABEL_97:
          if (v133)
          {
            goto LABEL_144;
          }

          v146 = (v47 + 16 * v126);
          v148 = *v146;
          v147 = v146[1];
          v149 = __OFSUB__(v147, v148);
          v150 = v147 - v148;
          v151 = v149;
          if (v149)
          {
            goto LABEL_147;
          }

          v152 = (v47 + 32 + 16 * v129);
          v154 = *v152;
          v153 = v152[1];
          v140 = __OFSUB__(v153, v154);
          v155 = v153 - v154;
          if (v140)
          {
            goto LABEL_150;
          }

          if (__OFADD__(v150, v155))
          {
            goto LABEL_151;
          }

          if (v150 + v155 >= v132)
          {
            if (v132 < v155)
            {
              v129 = v126 - 2;
            }

            goto LABEL_118;
          }

          goto LABEL_111;
        }

        v156 = (v47 + 16 * v126);
        v158 = *v156;
        v157 = v156[1];
        v140 = __OFSUB__(v157, v158);
        v150 = v157 - v158;
        v151 = v140;
LABEL_111:
        if (v151)
        {
          goto LABEL_146;
        }

        v159 = v47 + 16 * v129;
        v161 = *(v159 + 32);
        v160 = *(v159 + 40);
        v140 = __OFSUB__(v160, v161);
        v162 = v160 - v161;
        if (v140)
        {
          goto LABEL_149;
        }

        if (v162 < v150)
        {
          goto LABEL_3;
        }

LABEL_118:
        a3 = v129 - 1;
        if (v129 - 1 >= v126)
        {
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        if (!*v192)
        {
          goto LABEL_164;
        }

        v167 = v47;
        v168 = *(v47 + 32 + 16 * a3);
        v169 = *(v47 + 32 + 16 * v129);
        v47 = *(v47 + 32 + 16 * v129 + 8);
        v170 = v197;
        sub_1BD49781C(*v192 + *(v190 + 72) * v168, *v192 + *(v190 + 72) * v169, *v192 + *(v190 + 72) * v47, v128);
        v197 = v170;
        if (v170)
        {
          goto LABEL_138;
        }

        if (v47 < v168)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v167 = sub_1BD5ED6C8(v167);
        }

        if (a3 >= *(v167 + 2))
        {
          goto LABEL_141;
        }

        v171 = &v167[16 * a3];
        *(v171 + 4) = v168;
        *(v171 + 5) = v47;
        v209 = v167;
        sub_1BD5ED63C(v129);
        v47 = v209;
        v126 = *(v209 + 16);
        v29 = v205;
        if (v126 <= 1)
        {
          goto LABEL_3;
        }
      }

      v134 = v47 + 32 + 16 * v126;
      v135 = *(v134 - 64);
      v136 = *(v134 - 56);
      v140 = __OFSUB__(v136, v135);
      v137 = v136 - v135;
      if (v140)
      {
        goto LABEL_142;
      }

      v139 = *(v134 - 48);
      v138 = *(v134 - 40);
      v140 = __OFSUB__(v138, v139);
      v132 = v138 - v139;
      v133 = v140;
      if (v140)
      {
        goto LABEL_143;
      }

      v141 = (v47 + 16 * v126);
      v143 = *v141;
      v142 = v141[1];
      v140 = __OFSUB__(v142, v143);
      v144 = v142 - v143;
      if (v140)
      {
        goto LABEL_145;
      }

      v140 = __OFADD__(v132, v144);
      v145 = v132 + v144;
      if (v140)
      {
        goto LABEL_148;
      }

      if (v145 >= v137)
      {
        v163 = (v47 + 32 + 16 * v129);
        v165 = *v163;
        v164 = v163[1];
        v140 = __OFSUB__(v164, v165);
        v166 = v164 - v165;
        if (v140)
        {
          goto LABEL_152;
        }

        if (v132 < v166)
        {
          v129 = v126 - 2;
        }

        goto LABEL_118;
      }

      goto LABEL_97;
    }

LABEL_3:
    v45 = v192[1];
    a4 = v182;
    if (v46 >= v45)
    {
      goto LABEL_128;
    }
  }

  v91 = v48 + a4;
  if (__OFADD__(v48, a4))
  {
    goto LABEL_158;
  }

  if (v91 >= v90)
  {
    v91 = v192[1];
  }

  if (v91 < v48)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  if (v46 == v91)
  {
    goto LABEL_77;
  }

  v179 = v47;
  v92 = *v192;
  v93 = *(v190 + 72);
  v94 = *v192 + v93 * (v46 - 1);
  v200 = -v93;
  v184 = v48;
  v95 = v48 - v46;
  v201 = v92;
  v185 = v93;
  v96 = v92 + v46 * v93;
  v186 = v91;
LABEL_55:
  v193 = v46;
  v188 = v96;
  v189 = v95;
  v191 = v94;
  v97 = v94;
  while (1)
  {
    v98 = v206;
    sub_1BD49C4D4(v96, v206, type metadata accessor for UnavailablePass);
    sub_1BD49C4D4(v97, v29, type metadata accessor for UnavailablePass);
    sub_1BD49C4D4(v98, v208, type metadata accessor for WrappedPass);
    v99 = swift_getEnumCaseMultiPayload();
    if (v99)
    {
      if (v99 == 1)
      {
        v100 = *v208;
        v101 = [*v208 displayName];
        if (!v101)
        {
          goto LABEL_163;
        }

        v102 = v101;
        v103 = sub_1BE052434();
        v105 = v104;
      }

      else
      {
        v109 = v199;
        sub_1BD49C53C(v208, v199, type metadata accessor for PlaceholderPass);
        v103 = *v109;
        v105 = v109[1];
        sub_1BE048C84();
        sub_1BD492EA0(v109, type metadata accessor for PlaceholderPass);
      }
    }

    else
    {
      v106 = *v208;
      v107 = [*v208 localizedDescription];
      v103 = sub_1BE052434();
      v105 = v108;
    }

    sub_1BD49C4D4(v29, v207, type metadata accessor for WrappedPass);
    v110 = swift_getEnumCaseMultiPayload();
    if (v110)
    {
      if (v110 == 1)
      {
        v111 = *v207;
        v112 = [*v207 displayName];
        if (!v112)
        {
          goto LABEL_162;
        }

        v113 = v112;
        v114 = sub_1BE052434();
        v116 = v115;

        if (v103 != v114)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v121 = v199;
        sub_1BD49C53C(v207, v199, type metadata accessor for PlaceholderPass);
        v122 = *v121;
        v116 = v121[1];
        sub_1BE048C84();
        sub_1BD492EA0(v121, type metadata accessor for PlaceholderPass);
        if (v103 != v122)
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
      v117 = *v207;
      v118 = [*v207 localizedDescription];
      v119 = sub_1BE052434();
      v116 = v120;

      if (v103 != v119)
      {
        goto LABEL_71;
      }
    }

    if (v105 == v116)
    {

      a3 = type metadata accessor for UnavailablePass;
      v29 = v205;
      sub_1BD492EA0(v205, type metadata accessor for UnavailablePass);
      sub_1BD492EA0(v206, type metadata accessor for UnavailablePass);
LABEL_54:
      v46 = v193 + 1;
      v94 = v191 + v185;
      v95 = v189 - 1;
      v96 = v188 + v185;
      if (v193 + 1 == v186)
      {
        v46 = v186;
        v47 = v179;
        v48 = v184;
        goto LABEL_77;
      }

      goto LABEL_55;
    }

LABEL_71:
    a3 = sub_1BE053B84();

    v29 = v205;
    sub_1BD492EA0(v205, type metadata accessor for UnavailablePass);
    sub_1BD492EA0(v206, type metadata accessor for UnavailablePass);
    if ((a3 & 1) == 0)
    {
      goto LABEL_54;
    }

    if (!v201)
    {
      break;
    }

    a3 = type metadata accessor for UnavailablePass;
    v123 = v202;
    sub_1BD49C53C(v96, v202, type metadata accessor for UnavailablePass);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BD49C53C(v123, v97, type metadata accessor for UnavailablePass);
    v97 += v200;
    v96 += v200;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
}

void sub_1BD49781C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v118 = (&v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v120 = (&v110 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v110 - v20);
  MEMORY[0x1EEE9AC00](v22, v23);
  v123 = (&v110 - v24);
  v121 = type metadata accessor for UnavailablePass(0);
  MEMORY[0x1EEE9AC00](v121, v25);
  v116 = (&v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27, v28);
  v119 = &v110 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v124 = &v110 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v122 = &v110 - v35;
  v37 = *(v36 + 72);
  if (!v37)
  {
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v37 == -1)
  {
    goto LABEL_97;
  }

  v38 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v37 == -1)
  {
    goto LABEL_98;
  }

  v39 = (a2 - a1) / v37;
  v127 = a1;
  v126 = a4;
  v117 = v11;
  if (v39 >= v38 / v37)
  {
    v123 = v14;
    v41 = v38 / v37 * v37;
    if (a4 < a2 || a2 + v41 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v42 = v116;
    }

    else
    {
      v42 = v116;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v75 = a4 + v41;
    if (v41 < 1)
    {
      v78 = a4 + v41;
      goto LABEL_94;
    }

    v113 = a4;
    v76 = -v37;
    v77 = a4 + v41;
    v78 = v75;
    v122 = -v37;
    while (1)
    {
      v111 = v78;
      v79 = a2;
      v80 = a2 + v76;
      v114 = a2;
      v115 = a2 + v76;
      v81 = v76;
      while (1)
      {
        if (v79 <= a1)
        {
          v127 = v79;
          v125 = v111;
          goto LABEL_95;
        }

        v82 = a3;
        v112 = v78;
        v124 = v77 + v81;
        v83 = v119;
        sub_1BD49C4D4(v77 + v81, v119, type metadata accessor for UnavailablePass);
        sub_1BD49C4D4(v80, v42, type metadata accessor for UnavailablePass);
        sub_1BD49C4D4(v83, v120, type metadata accessor for WrappedPass);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (!EnumCaseMultiPayload)
        {
          v92 = *v120;
          v93 = [*v120 localizedDescription];
          v88 = sub_1BE052434();
          v90 = v94;

LABEL_67:
          v91 = v123;
          goto LABEL_68;
        }

        if (EnumCaseMultiPayload != 1)
        {
          v95 = v118;
          sub_1BD49C53C(v120, v118, type metadata accessor for PlaceholderPass);
          v88 = *v95;
          v90 = v95[1];
          sub_1BE048C84();
          sub_1BD492EA0(v95, type metadata accessor for PlaceholderPass);
          goto LABEL_67;
        }

        v85 = *v120;
        v86 = [*v120 displayName];
        if (!v86)
        {
          goto LABEL_101;
        }

        v87 = v86;
        v88 = sub_1BE052434();
        v90 = v89;

        v91 = v123;
        v42 = v116;
LABEL_68:
        sub_1BD49C4D4(v42, v91, type metadata accessor for WrappedPass);
        v96 = swift_getEnumCaseMultiPayload();
        if (v96)
        {
          if (v96 != 1)
          {
            v106 = v91;
            v107 = v118;
            sub_1BD49C53C(v106, v118, type metadata accessor for PlaceholderPass);
            v108 = *v107;
            v102 = v107[1];
            sub_1BE048C84();
            sub_1BD492EA0(v107, type metadata accessor for PlaceholderPass);
            if (v88 != v108)
            {
              goto LABEL_78;
            }

            goto LABEL_76;
          }

          v97 = *v91;
          v98 = [*v91 displayName];
          if (!v98)
          {
            goto LABEL_102;
          }

          v99 = v98;
          v100 = sub_1BE052434();
          v102 = v101;
        }

        else
        {
          v103 = *v91;
          v104 = [v103 localizedDescription];
          v100 = sub_1BE052434();
          v102 = v105;
        }

        if (v88 != v100)
        {
          goto LABEL_78;
        }

LABEL_76:
        if (v90 == v102)
        {
          v109 = 0;
          goto LABEL_79;
        }

LABEL_78:
        v109 = sub_1BE053B84();
LABEL_79:

        v81 = v122;
        a3 = v82 + v122;
        v42 = v116;
        sub_1BD492EA0(v116, type metadata accessor for UnavailablePass);
        sub_1BD492EA0(v119, type metadata accessor for UnavailablePass);
        if (v109)
        {
          break;
        }

        v78 = v124;
        v80 = v115;
        if (v82 < v77 || a3 >= v77)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v82 != v77)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v77 = v78;
        v79 = v114;
        if (v124 <= v113)
        {
          a2 = v114;
          goto LABEL_94;
        }
      }

      a2 = v115;
      if (v82 < v114 || a3 >= v114)
      {
        swift_arrayInitWithTakeFrontToBack();
        v78 = v112;
      }

      else
      {
        v78 = v112;
        if (v82 != v114)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v76 = v122;
      if (v77 <= v113)
      {
LABEL_94:
        v127 = a2;
        v125 = v78;
        goto LABEL_95;
      }
    }
  }

  v40 = v39 * v37;
  if (a4 < a1 || a1 + v40 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v120 = (a4 + v40);
  v125 = a4 + v40;
  if (v40 >= 1 && a2 < a3)
  {
    v119 = a3;
    v115 = v37;
    v116 = v21;
    while (1)
    {
      v44 = v122;
      sub_1BD49C4D4(a2, v122, type metadata accessor for UnavailablePass);
      sub_1BD49C4D4(a4, v124, type metadata accessor for UnavailablePass);
      sub_1BD49C4D4(v44, v123, type metadata accessor for WrappedPass);
      v45 = swift_getEnumCaseMultiPayload();
      if (!v45)
      {
        break;
      }

      if (v45 == 1)
      {
        v46 = *v123;
        v47 = [*v123 displayName];
        if (!v47)
        {
          goto LABEL_99;
        }

        goto LABEL_26;
      }

      v52 = v118;
      sub_1BD49C53C(v123, v118, type metadata accessor for PlaceholderPass);
      v49 = *v52;
      v51 = v52[1];
      sub_1BE048C84();
      sub_1BD492EA0(v52, type metadata accessor for PlaceholderPass);
LABEL_28:
      sub_1BD49C4D4(v124, v21, type metadata accessor for WrappedPass);
      v53 = swift_getEnumCaseMultiPayload();
      if (v53)
      {
        if (v53 == 1)
        {
          v54 = a4;
          v55 = a2;
          v56 = *v21;
          v57 = [v56 displayName];
          if (!v57)
          {
            goto LABEL_100;
          }

          v58 = v57;
          v59 = sub_1BE052434();
          v61 = v60;

          a2 = v55;
          a4 = v54;
          if (v49 != v59)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v68 = v21;
          v69 = v118;
          sub_1BD49C53C(v68, v118, type metadata accessor for PlaceholderPass);
          v70 = *v69;
          v61 = v69[1];
          sub_1BE048C84();
          sub_1BD492EA0(v69, type metadata accessor for PlaceholderPass);
          if (v49 != v70)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        v62 = a4;
        v63 = a2;
        v64 = *v21;
        v65 = [*v21 localizedDescription];
        v66 = sub_1BE052434();
        v61 = v67;

        a2 = v63;
        a4 = v62;

        if (v49 != v66)
        {
          goto LABEL_38;
        }
      }

      if (v51 == v61)
      {

        sub_1BD492EA0(v124, type metadata accessor for UnavailablePass);
        sub_1BD492EA0(v122, type metadata accessor for UnavailablePass);
        v71 = v119;
        v21 = v116;
LABEL_43:
        v73 = v115;
        v74 = a4 + v115;
        if (a1 < a4 || a1 >= v74)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v126 = v74;
        a4 += v73;
        goto LABEL_51;
      }

LABEL_38:
      v72 = sub_1BE053B84();

      sub_1BD492EA0(v124, type metadata accessor for UnavailablePass);
      sub_1BD492EA0(v122, type metadata accessor for UnavailablePass);
      v71 = v119;
      v21 = v116;
      if ((v72 & 1) == 0)
      {
        goto LABEL_43;
      }

      v73 = v115;
      if (a1 < a2 || a1 >= a2 + v115)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v73;
LABEL_51:
      a1 += v73;
      v127 = a1;
      if (a4 >= v120 || a2 >= v71)
      {
        goto LABEL_95;
      }
    }

    v46 = *v123;
    v47 = [*v123 localizedDescription];
LABEL_26:
    v48 = v47;
    v49 = sub_1BE052434();
    v51 = v50;

    goto LABEL_28;
  }

LABEL_95:
  sub_1BD935168(&v127, &v126, &v125);
}

uint64_t _s9PassKitUI011PlaceholderA0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1BE053B84() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1BE053B84()) && a1[4] == a2[4])
    {
      type metadata accessor for PlaceholderPass(0);

      JUMPOUT(0x1BFB39FA0);
    }
  }

  return 0;
}

uint64_t sub_1BD498408(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
        return sub_1BE053074() & 1;
      }
    }

    else if (a1 > 2)
    {
      if (a1 ^ 3 | a2)
      {
        if (a1 ^ 4 | a2)
        {
          if (a6 == 3 && a4 == 5 && !a5)
          {
            return 1;
          }
        }

        else if (a6 == 3 && a4 == 4 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 3 && !a5)
      {
        return 1;
      }
    }

    else if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 3 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (!a3)
  {
    if (!a6)
    {
      return a1 == a4;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_1BE053B84();
}

uint64_t sub_1BD4985D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailablePass(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39738);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v33 - v15;
  v18 = *(v17 + 56);
  sub_1BD0DE19C(a1, &v33 - v15, &qword_1EBD520A0);
  sub_1BD0DE19C(a2, &v16[v18], &qword_1EBD520A0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1BD0DE19C(v16, v12, &qword_1EBD520A0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      sub_1BD49C53C(&v16[v18], v8, type metadata accessor for AvailablePass);
      v21 = sub_1BD498D50(v12, v8);
      sub_1BD492EA0(v8, type metadata accessor for AvailablePass);
      sub_1BD492EA0(v12, type metadata accessor for AvailablePass);
      sub_1BD0DE53C(v16, &qword_1EBD520A0);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_1BD492EA0(v12, type metadata accessor for AvailablePass);
LABEL_6:
    sub_1BD0DE53C(v16, &qword_1EBD39738);
    return 0;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1BD0DE53C(v16, &qword_1EBD520A0);
LABEL_10:
  v22 = type metadata accessor for Passes(0);
  v23 = v22[5];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    sub_1BD0E5E8C(0, &qword_1EBD43BA0);
    v26 = v25;
    v27 = v24;
    v28 = sub_1BE053074();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (*(a1 + v22[6]) == *(a2 + v22[6]) && (sub_1BD3FD448(*(a1 + v22[7]), *(a2 + v22[7])) & 1) != 0 && *(a1 + v22[8]) == *(a2 + v22[8]) && (sub_1BD3FD49C(*(a1 + v22[9]), *(a2 + v22[9])) & 1) != 0 && *(a1 + v22[10]) == *(a2 + v22[10]))
  {
    v29 = v22[11];
    v30 = *(a1 + v29);
    v31 = *(a2 + v29);
    if (v30)
    {
      if (v31)
      {
        sub_1BE048C84();
        v32 = sub_1BD3FDAD4(v30, v31);

        if (v32)
        {
          return 1;
        }
      }
    }

    else if (!v31)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_1BD4989C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v24 - v15;
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  if ((sub_1BE053074() & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v17 = *(type metadata accessor for BalanceInfo(0) + 28);
  v18 = a1 + v17;
  v19 = *(v13 + 48);
  sub_1BD0DE19C(v18, v16, &unk_1EBD39970);
  sub_1BD0DE19C(a2 + v17, &v16[v19], &unk_1EBD39970);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      sub_1BD0DE53C(v16, &unk_1EBD39970);
      return 1;
    }

    goto LABEL_9;
  }

  sub_1BD0DE19C(v16, v12, &unk_1EBD39970);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_1BD0DE53C(v16, &qword_1EBD3A750);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v19], v4);
  sub_1BD49B98C(&qword_1EBD3E460, MEMORY[0x1E6969530]);
  v22 = sub_1BE052334();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v12, v4);
  sub_1BD0DE53C(v16, &unk_1EBD39970);
  return (v22 & 1) != 0;
}

uint64_t sub_1BD498D50(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for PassEligibleRewardsInfo();
  v125 = *(v4 - 1);
  v126 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v122 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v123 = &v118 - v9;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD475B0);
  MEMORY[0x1EEE9AC00](v124, v10);
  v127 = &v118 - v11;
  v12 = type metadata accessor for BalanceInfo(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v118 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD475B8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v118 - v23;
  v129 = a1;
  v25 = sub_1BD492F00();
  v27 = v26;
  v130 = a2;
  if (v25 == sub_1BD492F00() && v27 == v28)
  {
  }

  else
  {
    v29 = sub_1BE053B84();

    if ((v29 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v128 = type metadata accessor for AvailablePass(0);
  v30 = v128[7];
  v31 = *(v21 + 48);
  v32 = v129;
  sub_1BD0DE19C(&v129[v30], v24, &qword_1EBD39FF0);
  v33 = v130 + v30;
  v34 = v130;
  sub_1BD0DE19C(v33, &v24[v31], &qword_1EBD39FF0);
  v35 = *(v13 + 48);
  if (v35(v24, 1, v12) == 1)
  {
    if (v35(&v24[v31], 1, v12) == 1)
    {
      sub_1BD0DE53C(v24, &qword_1EBD39FF0);
      goto LABEL_15;
    }

LABEL_10:
    v36 = &qword_1EBD475B8;
LABEL_11:
    sub_1BD0DE53C(v24, v36);
    goto LABEL_12;
  }

  sub_1BD0DE19C(v24, v20, &qword_1EBD39FF0);
  if (v35(&v24[v31], 1, v12) == 1)
  {
    sub_1BD492EA0(v20, type metadata accessor for BalanceInfo);
    goto LABEL_10;
  }

  sub_1BD49C53C(&v24[v31], v16, type metadata accessor for BalanceInfo);
  v39 = sub_1BD4989C4(v20, v16);
  sub_1BD492EA0(v16, type metadata accessor for BalanceInfo);
  sub_1BD492EA0(v20, type metadata accessor for BalanceInfo);
  sub_1BD0DE53C(v24, &qword_1EBD39FF0);
  if (!v39)
  {
    goto LABEL_12;
  }

LABEL_15:
  v40 = v128;
  v41 = v128[8];
  v42 = &v32[v41];
  v43 = *&v32[v41 + 8];
  v44 = (v34 + v41);
  v45 = v44[1];
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_12;
    }

    if ((*v44 ^ *v42))
    {
      goto LABEL_12;
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
    v46 = v45;
    v47 = sub_1BE053074();

    if ((v47 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v45)
  {
    goto LABEL_12;
  }

  v48 = v40[9];
  v49 = *(v34 + v48);
  if (*&v32[v48])
  {
    if (!v49)
    {
      goto LABEL_12;
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
    v50 = v49;
    v51 = sub_1BE053074();

    if ((v51 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v49)
  {
    goto LABEL_12;
  }

  v52 = v40[10];
  v53 = v124[12];
  v54 = v127;
  sub_1BD0DE19C(&v32[v52], v127, &unk_1EBD4C940);
  v55 = v34 + v52;
  v24 = v54;
  sub_1BD0DE19C(v55, v54 + v53, &unk_1EBD4C940);
  v56 = v126;
  v57 = v125[6];
  if (v57(v54, 1, v126) == 1)
  {
    if (v57(v54 + v53, 1, v56) == 1)
    {
      sub_1BD0DE53C(v54, &unk_1EBD4C940);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v58 = v123;
  sub_1BD0DE19C(v24, v123, &unk_1EBD4C940);
  if (v57(&v24[v53], 1, v56) == 1)
  {
    sub_1BD492EA0(v58, type metadata accessor for PassEligibleRewardsInfo);
LABEL_31:
    v36 = &qword_1EBD475B0;
    goto LABEL_11;
  }

  v59 = &v24[v53];
  v60 = v122;
  sub_1BD49C53C(v59, v122, type metadata accessor for PassEligibleRewardsInfo);
  v61 = sub_1BD57A43C(v58, v60);
  sub_1BD492EA0(v60, type metadata accessor for PassEligibleRewardsInfo);
  sub_1BD492EA0(v58, type metadata accessor for PassEligibleRewardsInfo);
  sub_1BD0DE53C(v24, &unk_1EBD4C940);
  if (!v61)
  {
    goto LABEL_12;
  }

LABEL_33:
  v62 = v40[11];
  v63 = v32[v62];
  v64 = *(v34 + v62);
  if (v63 == 2)
  {
    if (v64 != 2)
    {
      goto LABEL_12;
    }

LABEL_38:
    v65 = v40[12];
    v66 = *&v32[v65];
    v67 = *&v32[v65 + 8];
    v69 = *&v32[v65 + 16];
    v68 = *&v32[v65 + 24];
    v70 = *&v32[v65 + 32];
    v71 = v32[v65 + 40];
    v72 = v34 + v65;
    v73 = *v72;
    v74 = *(v72 + 8);
    v75 = *(v72 + 16);
    v76 = *(v72 + 24);
    v125 = v68;
    v126 = v75;
    v127 = *(v72 + 32);
    v77 = *(v72 + 40);
    v124 = v66;
    if (v66)
    {
      if (v73)
      {
        v118 = v77;
        sub_1BD49C5A4(v73, v74, v126, v76);
        v78 = v125;
        v120 = v67;
        sub_1BD49C5A4(v124, v67, v69, v125);
        v79 = [v78 uniqueID];
        v119 = v71;
        v123 = v70;
        v121 = v69;
        if (v79)
        {
          v80 = v79;
          v81 = sub_1BE052434();
          v83 = v82;
        }

        else
        {
          v81 = 0;
          v83 = 0;
        }

        v87 = [v76 uniqueID];
        if (v87)
        {
          v88 = v87;
          v89 = sub_1BE052434();
          v91 = v90;

          if (v83)
          {
            if (v91)
            {
              if (v81 == v89 && v83 == v91)
              {
              }

              else
              {
                v92 = sub_1BE053B84();

                if ((v92 & 1) == 0)
                {
                  goto LABEL_75;
                }
              }

              goto LABEL_56;
            }

LABEL_54:

            goto LABEL_75;
          }

          if (v91)
          {
            goto LABEL_54;
          }
        }

        else if (v83)
        {
          goto LABEL_54;
        }

LABEL_56:
        if (sub_1BD400190(v123, v127))
        {
          if (v121)
          {
            if (!v126)
            {
              goto LABEL_75;
            }

            sub_1BD0E5E8C(0, &unk_1EBD3E560);
            v93 = v126;
            v94 = v121;
            v95 = sub_1BE053074();

            if ((v95 & 1) == 0 || v120 != v74)
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (v126 || v120 != v74)
            {
              goto LABEL_75;
            }

            v93 = v126;
          }

          v96 = v118 ^ v119;
          sub_1BD49C600(v124, v120, v121, v125);
          if ((v96 & 1) == 0)
          {
LABEL_66:
            v97 = v128[13];
            v98 = *&v129[v97];
            v99 = *&v129[v97 + 8];
            v100 = *&v129[v97 + 16];
            v101 = *&v129[v97 + 24];
            v102 = v129[v97 + 32];
            v103 = v130 + v97;
            v105 = *v103;
            v104 = *(v103 + 8);
            v107 = *(v103 + 16);
            v106 = *(v103 + 24);
            v108 = *(v103 + 32);
            if (v98)
            {
              if (v105)
              {
                if (v99 == v104 && v100 == v107 || (sub_1BE053B84() & 1) != 0)
                {
                  if (!v101)
                  {
                    if (!v106)
                    {
                      sub_1BD2EE178(v105, v104, v107, 0);
                      sub_1BD2EE178(v98, v99, v100, 0);
                      goto LABEL_86;
                    }

                    sub_1BD2EE178(v105, v104, v107, v106);
                    v110 = v98;
                    v111 = v99;
                    v112 = v100;
                    v113 = 0;
LABEL_84:
                    sub_1BD2EE178(v110, v111, v112, v113);
                    v37 = 0;
                    goto LABEL_87;
                  }

                  if (v106)
                  {
                    v130 = sub_1BD0E5E8C(0, &qword_1EBD45EA0);
                    sub_1BD2EE178(v105, v104, v107, v106);
                    sub_1BD2EE178(v98, v99, v100, v101);
                    v128 = v106;
                    v129 = v101;
                    v109 = sub_1BE053074();

                    if ((v109 & 1) == 0)
                    {
                      v37 = 0;
LABEL_87:

                      sub_1BD2EE1C0(v98, v99, v100, v101);
                      return v37 & 1;
                    }

LABEL_86:
                    v37 = v108 ^ v102 ^ 1;
                    goto LABEL_87;
                  }

                  v114 = v105;
                  v115 = v104;
                  v116 = v107;
                  v117 = 0;
                }

                else
                {
                  v114 = v105;
                  v115 = v104;
                  v116 = v107;
                  v117 = v106;
                }

                sub_1BD2EE178(v114, v115, v116, v117);
                v110 = v98;
                v111 = v99;
                v112 = v100;
                v113 = v101;
                goto LABEL_84;
              }
            }

            else if (!v105)
            {
              v37 = 1;
              return v37 & 1;
            }

            sub_1BD2EE178(*v103, *(v103 + 8), *(v103 + 16), *(v103 + 24));
            sub_1BD2EE178(v98, v99, v100, v101);
            sub_1BD2EE1C0(v98, v99, v100, v101);
            sub_1BD2EE1C0(v105, v104, v107, v106);
          }

LABEL_12:
          v37 = 0;
          return v37 & 1;
        }

LABEL_75:

        sub_1BD49C600(v124, v120, v121, v125);
        goto LABEL_12;
      }
    }

    else if (!v73)
    {
      goto LABEL_66;
    }

    v84 = v126;
    v122 = v76;
    sub_1BD49C5A4(v73, v74, v126, v76);
    v86 = v124;
    v85 = v125;
    sub_1BD49C5A4(v124, v67, v69, v125);
    sub_1BD49C600(v86, v67, v69, v85);
    sub_1BD49C600(v73, v74, v84, v122);
    goto LABEL_12;
  }

  v37 = 0;
  if (v64 != 2 && ((v64 ^ v63) & 1) == 0)
  {
    goto LABEL_38;
  }

  return v37 & 1;
}

uint64_t sub_1BD4999A8(void *a1)
{
  v2 = [a1 requestType];
  v3 = [a1 accountServiceTransferRequest];
  if (!v3)
  {
    if (v2 < 0xB)
    {
      v6 = 0x1FBu >> v2;
      return v6 & 1;
    }

LABEL_6:
    LOBYTE(v6) = 1;
    return v6 & 1;
  }

  v4 = v3;
  v5 = [v3 transferType];

  if (v5 == 2)
  {
    goto LABEL_6;
  }

  LOBYTE(v6) = 0;
  return v6 & 1;
}

unint64_t sub_1BD499A38(void *a1, void *a2)
{
  if ((sub_1BD4999A8(a2) & 1) == 0)
  {
    return 0;
  }

  v4 = [a1 amount];
  v5 = [objc_opt_self() zero];
  v6 = v5;
  if (!v4)
  {
    if (!v5)
    {
      return 1;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!v5)
  {
    v6 = v4;
    goto LABEL_9;
  }

  sub_1BD0E5E8C(0, &qword_1EBD38840);
  v7 = sub_1BE053074();

  if (v7)
  {
    return 1;
  }

LABEL_10:
  v9 = [a1 currency];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BE052434();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [a2 currencyCode];
  v15 = sub_1BE052434();
  v17 = v16;

  if (!v13)
  {

    return 0;
  }

  if (v11 == v15 && v13 == v17)
  {

    goto LABEL_19;
  }

  v18 = sub_1BE053B84();

  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v19 = [a2 paymentSummaryItems];
  sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
  v20 = sub_1BE052744();

  if (v20 >> 62)
  {
    v21 = sub_1BE053704();
    if (v21)
    {
LABEL_21:
      v22 = __OFSUB__(v21, 1);
      result = v21 - 1;
      if (v22)
      {
        __break(1u);
      }

      else if ((v20 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v23 = *(v20 + 8 * result + 32);
          goto LABEL_26;
        }

        __break(1u);
        goto LABEL_38;
      }

      v23 = MEMORY[0x1BFB40900](result, v20);
LABEL_26:
      v24 = v23;

      v25 = [v24 amount];

      if (v25)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_21;
    }
  }

LABEL_31:
  sub_1BD0E5E8C(0, &qword_1EBD38840);
  v25 = sub_1BE053054();
LABEL_32:
  result = [a1 amount];
  if (result)
  {
    v26 = result;
    v27 = [result compare_];

    return v27 == -1;
  }

LABEL_38:
  __break(1u);
  return result;
}

id sub_1BD499D4C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD49C4D4(a1, v7, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1BD492EA0(v7, type metadata accessor for WrappedPass);
  if (!EnumCaseMultiPayload)
  {
    if ([a2 itemForType_])
    {
      sub_1BE053624();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      sub_1BD1B6140(&v17, v19);
      v9 = &unk_1EBD3E6D0;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    if ([a2 itemForType_])
    {
      sub_1BE053624();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      sub_1BD1B6140(&v17, v19);
      v9 = &unk_1EBD3E6D8;
LABEL_13:
      sub_1BD0E5E8C(0, v9);
      swift_dynamicCast();
      v10 = v14;
      v11 = [v14 status];

      return v11;
    }

LABEL_14:
    sub_1BD0DE53C(&v17, &qword_1EBD3EC90);
  }

  return 0;
}

void sub_1BD499F70(void *a1)
{
  v2 = [a1 paymentRequest];
  if (!v2)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 accountServiceTransferRequest];

  if (!v4)
  {

    return;
  }

  v5 = [v4 account];
  v6 = [v4 transferType];
  if (v6 == 2)
  {
    v7 = &selRef_oneTimeDepositWithAppleCashFeatureDescriptor;
  }

  else
  {
    if (v6 != 3)
    {
LABEL_12:

      return;
    }

    v7 = &selRef_oneTimeWithdrawalWithAppleCashFeatureDescriptor;
  }

  v8 = [v5 *v7];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = v4;
  v11 = [v10 _transactionAmount];
  if (v11)
  {
    v12 = v11;
    sub_1BE0533E4();
  }
}

id sub_1BD49A330(void *a1)
{
  result = [a1 paymentRequest];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = result;
  v4 = [result accountServiceTransferRequest];

  if (!v4)
  {
LABEL_14:

    return 0;
  }

  v5 = [a1 peerPaymentAccount];
  if (!v5)
  {

    goto LABEL_14;
  }

  v6 = v5;
  v7 = [a1 peerPaymentPass];
  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = v7;
  v9 = [v4 transferType];
  if ((v9 - 2) >= 2)
  {
    if (v9 <= 1)
    {

      return 0;
    }

    goto LABEL_13;
  }

  if ((PKPeerPaymentNeedsResolutionToPerformAccountServicePayments() & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  result = [v6 currentBalance];
  if (result)
  {
    v10 = result;

    return v10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1BD49A490(void *a1)
{
  v2 = [a1 amount];
  v3 = [v2 decimal];

  v4 = [a1 amount];
  v5 = [v4 currency];

  if (!v5)
  {
    sub_1BE052434();
    v5 = sub_1BE052404();
  }

  if ([a1 creditDebitIndicator] == 1)
  {
    v6 = [v3 pk_negativeValue];
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = v6;

    v3 = v7;
  }

  v8 = PKCurrencyAmountMake();

  if (v8)
  {

    return;
  }

  __break(1u);
LABEL_9:

  __break(1u);
}

uint64_t sub_1BD49A5B4(uint64_t a1, void *a2, SEL *a3, SEL *a4)
{
  v8 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD49C4D4(a1, v11, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *v11;
      v14 = [a2 *a4];
      if (v14)
      {
        v15 = v14;
        sub_1BD0E5E8C(0, &qword_1EBD43BA0);
        v16 = sub_1BE052744();

        return v16;
      }
    }

    else
    {
      sub_1BD492EA0(v11, type metadata accessor for WrappedPass);
    }
  }

  else
  {
    v18 = *v11;
    v19 = [a2 *a3];
    if (v19)
    {
      v20 = v19;
      sub_1BD0E5E8C(0, &qword_1EBD43BA0);
      v21 = sub_1BE052744();

      return v21;
    }
  }

  return 0;
}

uint64_t sub_1BD49A760(uint64_t a1, void *a2)
{
  v45 = a2;
  v44 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v44, v4);
  v43 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AvailablePass(0);
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = sub_1BE053704();
  }

  else
  {
    v10 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v52 = MEMORY[0x1E69E7CC0];
    sub_1BD531A40(0, v10 & ~(v10 >> 63), 0);
    v47 = v52;
    if (v46)
    {
      result = sub_1BE0536A4();
    }

    else
    {
      result = sub_1BE053674();
      v12 = *(a1 + 36);
    }

    v49 = result;
    v50 = v12;
    v51 = v46 != 0;
    if ((v10 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v14 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v14 = a1;
      }

      v39 = a1 + 56;
      v40 = v14;
      v37 = v2;
      v38 = a1 + 64;
      v41 = v10;
      while (v13 < v10)
      {
        if (__OFADD__(v13++, 1))
        {
          goto LABEL_38;
        }

        v17 = v49;
        v18 = v50;
        v19 = v51;
        sub_1BD965D04(v49, v50, v51, a1);
        v20 = v43;
        *v43 = v21;
        swift_storeEnumTagMultiPayload();
        sub_1BD4954F8(v20, v45, v9);
        v22 = v47;
        v52 = v47;
        v23 = v9;
        v25 = *(v47 + 16);
        v24 = *(v47 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1BD531A40(v24 > 1, v25 + 1, 1);
          v22 = v52;
        }

        *(v22 + 16) = v25 + 1;
        v26 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v47 = v22;
        result = sub_1BD49C53C(v23, v22 + v26 + *(v42 + 72) * v25, type metadata accessor for AvailablePass);
        v9 = v23;
        if (v46)
        {
          if (!v19)
          {
            goto LABEL_43;
          }

          if (sub_1BE0536C4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v10 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD475D0);
          v15 = sub_1BE052A64();
          sub_1BE053774();
          result = v15(v48, 0);
          if (v13 == v10)
          {
LABEL_35:
            sub_1BD20DE9C(v49, v50, v51);
            return v47;
          }
        }

        else
        {
          if (v19)
          {
            goto LABEL_44;
          }

          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v27 = 1 << *(a1 + 32);
          if (v17 >= v27)
          {
            goto LABEL_39;
          }

          v28 = v17 >> 6;
          v29 = *(v39 + 8 * (v17 >> 6));
          if (((v29 >> v17) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (*(a1 + 36) != v18)
          {
            goto LABEL_41;
          }

          v30 = v29 & (-2 << (v17 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v17 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_1BD20DE9C(v17, v18, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_1BD20DE9C(v17, v18, 0);
LABEL_33:
            v9 = v23;
          }

          v36 = *(a1 + 36);
          v49 = v27;
          v50 = v36;
          v51 = 0;
          v10 = v41;
          if (v13 == v41)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD49ABC8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v66 - v10);
  sub_1BD49C4D4(a1, &v66 - v10, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v15 = *v11;
    v16 = [v15 hasAssociatedPeerPaymentAccount];

    if (!v16)
    {
      goto LABEL_13;
    }

LABEL_6:
    v17 = [a2 peerPaymentAccount];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 state];
      if (v19 == 4)
      {

        return 1;
      }

      if (v19 == 3)
      {

        return 0;
      }

      if (v19 == 1)
      {
        v20 = [objc_opt_self() peerPaymentPassIsProvisionedOnDeviceForAccount_];

        if ((v20 & 1) == 0)
        {
          return 2;
        }
      }

      else
      {
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1BD492EA0(v11, type metadata accessor for WrappedPass);
    goto LABEL_13;
  }

  v13 = *v11;
  v14 = [v13 hasAssociatedPeerPaymentAccount];

  if (v14)
  {
    goto LABEL_6;
  }

LABEL_13:
  sub_1BD49C4D4(a1, v7, type metadata accessor for WrappedPass);
  v22 = swift_getEnumCaseMultiPayload();
  if (!v22)
  {
    v38 = *v7;
    v39 = [v38 deviceInAppPaymentApplications];
    if (!v39 || ((v40 = v39, sub_1BD0E5E8C(0, &qword_1EBD43BA0), sub_1BD214890(&qword_1EBD43BB0, &qword_1EBD43BA0), v41 = sub_1BE052A34(), v40, (v41 & 0xC000000000000001) == 0) ? (v42 = *(v41 + 16)) : (v42 = sub_1BE053704()), , v42))
    {
      v23 = v38;
      v44 = [v23 secureElementPass];
      if (v44)
      {
        v45 = v44;
        v46 = [v44 passActivationState];

        if (v46 == 1)
        {

          return 5;
        }
      }

      if ([v23 isDevicePrimaryPaymentApplicationPersonalized])
      {
        v47 = [v23 devicePrimaryInAppPaymentApplication];

        if (v47)
        {
          if ([v47 paymentNetworkIdentifier] == 100)
          {
            v48 = [v23 organizationName];

            v49 = sub_1BE052434();
            return v49;
          }
        }

        return 4;
      }

      v50 = [v23 devicePrimaryPaymentApplication];
      if (v50)
      {
        v43 = [v50 state];

        goto LABEL_47;
      }

LABEL_48:

      return 0;
    }

    return 3;
  }

  if (v22 != 1)
  {
    sub_1BD492EA0(v7, type metadata accessor for WrappedPass);
    return 3;
  }

  v23 = *v7;
  v24 = [v23 paymentApplications];
  if (v24)
  {
    v25 = v24;
    sub_1BD0E5E8C(0, &qword_1EBD43BA0);
    v26 = sub_1BE052744();

    if (v26 >> 62)
    {
      goto LABEL_88;
    }

    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:

    if (!v27)
    {

      return 3;
    }
  }

  result = [v23 primaryPaymentApplication];
  if (!result)
  {
    __break(1u);
    goto LABEL_94;
  }

  v28 = result;
  v29 = [result state];

  v30 = [v23 primaryPaymentApplication];
  v31 = v30;
  if (v29 != 1)
  {
    if (v30)
    {
      v43 = [v30 state];

LABEL_47:
      return v43;
    }

    goto LABEL_48;
  }

  if (v30)
  {
    if ([v30 paymentNetworkIdentifier] == 100)
    {
      v32 = [v23 organizationName];
      if (v32)
      {
        v33 = v32;
        v34 = sub_1BE052434();
        v36 = v35;

        v37 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v37 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (v37)
        {

          return v34;
        }
      }
    }
  }

  result = [a2 allUnavailableRemoteDevices];
  if (result)
  {
    v51 = result;
    sub_1BD0E5E8C(0, &qword_1EBD475C0);
    v52 = sub_1BE052744();

    if (v52 >> 62)
    {
      goto LABEL_90;
    }

    a2 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      while (1)
      {
        v53 = 0;
        v54 = v52 & 0xC000000000000001;
        v66 = v52 + 32;
        v67 = v52 & 0xFFFFFFFFFFFFFF8;
        v55 = &selRef_setIsFinalViewController_;
        v69 = a2;
        v70 = v52;
        v68 = v52 & 0xC000000000000001;
        v71 = v31;
        while (v54)
        {
          v56 = MEMORY[0x1BFB40900](v53, v52);
          v57 = __OFADD__(v53++, 1);
          if (v57)
          {
            goto LABEL_87;
          }

LABEL_68:
          v58 = v56;
          v59 = [v56 v55[441]];
          if (v59)
          {
            v60 = v59;
            sub_1BD0E5E8C(0, &qword_1EBD47510);
            v61 = sub_1BE052744();

            if (v61 >> 62)
            {
              v62 = sub_1BE053704();
              if (v62)
              {
LABEL_71:
                v63 = 0;
                a2 = (v61 + 32);
                do
                {
                  if ((v61 & 0xC000000000000001) != 0)
                  {
                    v64 = MEMORY[0x1BFB40900](v63, v61);
                    v57 = __OFADD__(v63++, 1);
                    if (v57)
                    {
                      __break(1u);
LABEL_85:
                      __break(1u);
LABEL_86:
                      __break(1u);
LABEL_87:
                      __break(1u);
LABEL_88:
                      v27 = sub_1BE053704();
                      goto LABEL_18;
                    }

                    v65 = v64;
                    swift_unknownObjectRelease();
                    if (v65 == v23)
                    {
                      goto LABEL_83;
                    }
                  }

                  else
                  {
                    if ((v63 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_85;
                    }

                    if (v63 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_86;
                    }

                    if (*(a2 + v63) == v23)
                    {
LABEL_83:

                      return v58;
                    }

                    ++v63;
                  }
                }

                while (v63 != v62);
              }
            }

            else
            {
              v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v62)
              {
                goto LABEL_71;
              }
            }

            v52 = v70;
            v31 = v71;
            v54 = v68;
            a2 = v69;
            v55 = &selRef_setIsFinalViewController_;
          }

          if (v53 == a2)
          {
            goto LABEL_91;
          }
        }

        if (v53 < *(v67 + 16))
        {
          break;
        }

        __break(1u);
LABEL_90:
        a2 = sub_1BE053704();
        if (!a2)
        {
          goto LABEL_91;
        }
      }

      v56 = *(v66 + 8 * v53);
      v57 = __OFADD__(v53++, 1);
      if (v57)
      {
        goto LABEL_87;
      }

      goto LABEL_68;
    }

LABEL_91:

    return 4;
  }

LABEL_94:
  __break(1u);
  return result;
}

uint64_t sub_1BD49B404(uint64_t a1, void *a2)
{
  v58 = a2;
  v57 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v57, v4);
  v65 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v63 = (&v50 - v8);
  v64 = type metadata accessor for UnavailablePass(0);
  v56 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = sub_1BE053704();
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    return v13;
  }

  v62 = v11;
  v70 = MEMORY[0x1E69E7CC0];
  sub_1BD5319FC(0, v12 & ~(v12 >> 63), 0);
  v13 = v70;
  if (v59)
  {
    result = sub_1BE0536A4();
  }

  else
  {
    result = sub_1BE053674();
    v15 = *(a1 + 36);
  }

  v67 = result;
  v68 = v15;
  v69 = v59 != 0;
  if ((v12 & 0x8000000000000000) == 0)
  {
    v50 = v2;
    v16 = 0;
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v17 = a1;
    }

    v52 = a1 + 56;
    v53 = v17;
    v51 = a1 + 64;
    v54 = v12;
    v55 = a1;
    while (v16 < v12)
    {
      if (__OFADD__(v16++, 1))
      {
        goto LABEL_40;
      }

      v20 = v67;
      v61 = v68;
      v60 = v69;
      sub_1BD965D04(v67, v68, v69, a1);
      v22 = v21;
      v23 = v63;
      *v63 = v21;
      swift_storeEnumTagMultiPayload();
      v24 = v62;
      sub_1BD49C4D4(v23, v62, type metadata accessor for WrappedPass);
      v25 = v64;
      v26 = (v24 + *(v64 + 20));
      *v26 = 0;
      v26[1] = 0;
      v27 = v22;
      v28 = sub_1BD49ABC8(v23, v58);
      v29 = v24 + *(v25 + 28);
      *v29 = v28;
      *(v29 + 8) = v30;
      *(v29 + 16) = v31;
      sub_1BD49C4D4(v23, v65, type metadata accessor for WrappedPass);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        sub_1BD492EA0(v63, type metadata accessor for WrappedPass);
        v33 = 0;
        v34 = v65;
      }

      else
      {
        v32 = *v65;
        v33 = [*v65 hasAssociatedPeerPaymentAccount];

        v34 = v63;
      }

      v35 = v61;
      v36 = v60;
      sub_1BD492EA0(v34, type metadata accessor for WrappedPass);

      v37 = v62;
      v62[*(v64 + 24)] = v33;
      v70 = v13;
      v39 = *(v13 + 16);
      v38 = *(v13 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1BD5319FC(v38 > 1, v39 + 1, 1);
        v37 = v62;
        v13 = v70;
      }

      *(v13 + 16) = v39 + 1;
      result = sub_1BD49C53C(v37, v13 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v39, type metadata accessor for UnavailablePass);
      if (v59)
      {
        a1 = v55;
        if (!v36)
        {
          goto LABEL_45;
        }

        if (sub_1BE0536C4())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v12 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD475D0);
        v18 = sub_1BE052A64();
        sub_1BE053774();
        result = v18(v66, 0);
        if (v16 == v12)
        {
LABEL_37:
          sub_1BD20DE9C(v67, v68, v69);
          return v13;
        }
      }

      else
      {
        a1 = v55;
        if (v36)
        {
          goto LABEL_46;
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        v40 = 1 << *(v55 + 32);
        if (v20 >= v40)
        {
          goto LABEL_41;
        }

        v41 = v20 >> 6;
        v42 = *(v52 + 8 * (v20 >> 6));
        if (((v42 >> v20) & 1) == 0)
        {
          goto LABEL_42;
        }

        if (*(v55 + 36) != v35)
        {
          goto LABEL_43;
        }

        v43 = v42 & (-2 << (v20 & 0x3F));
        if (v43)
        {
          v40 = __clz(__rbit64(v43)) | v20 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v44 = v41 << 6;
          v45 = v41 + 1;
          v46 = (v51 + 8 * v41);
          while (v45 < (v40 + 63) >> 6)
          {
            v48 = *v46++;
            v47 = v48;
            v44 += 64;
            ++v45;
            if (v48)
            {
              result = sub_1BD20DE9C(v20, v35, 0);
              v40 = __clz(__rbit64(v47)) + v44;
              goto LABEL_36;
            }
          }

          result = sub_1BD20DE9C(v20, v35, 0);
        }

LABEL_36:
        v49 = *(a1 + 36);
        v67 = v40;
        v68 = v49;
        v69 = 0;
        v12 = v54;
        if (v16 == v54)
        {
          goto LABEL_37;
        }
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1BD49B98C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD49BA64()
{
  result = sub_1BD0E5E8C(319, &unk_1EBD40340);
  if (v1 <= 0x3F)
  {
    result = sub_1BD0E5E8C(319, &qword_1EBD47510);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PlaceholderPass(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1BD49BB34()
{
  type metadata accessor for PKPaymentCardType(319);
  if (v0 <= 0x3F)
  {
    sub_1BE04CF34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD49BC10()
{
  sub_1BD49BE20(319, &qword_1EBD365F8, type metadata accessor for AvailablePass, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BD49BDB0(319, &qword_1EBD392F0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BD49BE20(319, &qword_1EBD47528, type metadata accessor for AvailablePass, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1BD49BE20(319, &qword_1EBD47530, type metadata accessor for UnavailablePass, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1BD49BEA4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD49BDB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BD0E5E8C(255, &qword_1EBD43BA0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1BD49BE20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD49BEA4()
{
  if (!qword_1EBD3F220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F228);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3F220);
    }
  }
}

void sub_1BD49BF30()
{
  type metadata accessor for WrappedPass(319);
  if (v0 <= 0x3F)
  {
    sub_1BD1C2DD8(319, &qword_1EBD4F750);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI011UnavailableA0V6ReasonO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_1BD49C030()
{
  type metadata accessor for WrappedPass(319);
  if (v0 <= 0x3F)
  {
    sub_1BD49BE20(319, &qword_1EBD47548, type metadata accessor for IdentityCredential, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BD49BE20(319, &qword_1EBD47550, type metadata accessor for BalanceInfo, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BD1C2DD8(319, &qword_1EBD47558);
        if (v3 <= 0x3F)
        {
          sub_1BD1C2DD8(319, &qword_1EBD47560);
          if (v4 <= 0x3F)
          {
            sub_1BD49BE20(319, &qword_1EBD365E0, type metadata accessor for PassEligibleRewardsInfo, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1BD1C2DD8(319, &qword_1EBD47568);
              if (v6 <= 0x3F)
              {
                sub_1BD1C2DD8(319, &qword_1EBD47570);
                if (v7 <= 0x3F)
                {
                  sub_1BD1C2DD8(319, &qword_1EBD47578);
                  if (v8 <= 0x3F)
                  {
                    sub_1BD49BDB0(319, &qword_1EBD47580, MEMORY[0x1E69E62F8]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BD49C2E0()
{
  sub_1BD0E5E8C(319, &qword_1EBD43B00);
  if (v0 <= 0x3F)
  {
    sub_1BD49BE20(319, &qword_1EBD36A40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BD49C3E0()
{
  result = qword_1EBD47598;
  if (!qword_1EBD47598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47598);
  }

  return result;
}

unint64_t sub_1BD49C438()
{
  result = qword_1EBD475A0;
  if (!qword_1EBD475A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD475A0);
  }

  return result;
}

uint64_t sub_1BD49C4D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD49C53C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1BD49C5A4(id result, uint64_t a2, void *a3, void *a4)
{
  if (result)
  {
    v7 = result;
    v5 = a3;
    v6 = a4;
    sub_1BE048C84();

    return v7;
  }

  return result;
}

void sub_1BD49C600(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
  }
}

uint64_t sub_1BD49C65C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD49C768()
{
  result = qword_1EBD475D8;
  if (!qword_1EBD475D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD475D8);
  }

  return result;
}

unint64_t sub_1BD49C7C0()
{
  result = qword_1EBD475E0;
  if (!qword_1EBD475E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD475E0);
  }

  return result;
}

void sub_1BD49C888()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_loadView);
  v2 = [v0 dockView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v2 footerView];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 setPrimaryButton_];
  v6 = [v1 headerView];
  v7 = PKOBKCardHeaderViewSize(3);
  if (v6)
  {
    v9 = v7;
    v10 = v8;
    v11 = *&v1[OBJC_IVAR____TtC9PassKitUI48PaymentSetupVerificationCompletionViewController_verificationController];
    v12 = v6;
    v13 = [v11 passSnapshot];
    [v12 setPassSnapshot:v13 withSize:0 animated:0 needsCorners:{v9, v10}];

    v3 = v12;
    v5 = v12;
  }
}

id sub_1BD49CAB0()
{
  v1 = v0;
  v2 = sub_1BE051F54();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1BE051FA4();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v5);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051F44();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1BE051FC4();
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v34 - v18;
  sub_1BD49D038();
  v21 = v20;
  v22 = sub_1BE052404();
  if (v21)
  {
    sub_1BE048C84();
    v23 = sub_1BE052404();
  }

  else
  {
    v23 = 0;
  }

  [v1 hideActivitySpinnerWithTitle:v22 subtitle:v23 animated:1];

  [v1 showCheckmarkAnimated_];
  result = [v1 dockView];
  if (result)
  {
    v25 = result;

    [v25 setButtonsEnabled_];

    sub_1BD14BE3C();
    v35 = sub_1BE052D54();
    sub_1BE051FB4();
    *v11 = 2000000000;
    (*(v8 + 104))(v11, *MEMORY[0x1E69E7F28], v7);
    MEMORY[0x1BFB3F070](v15, v11);
    (*(v8 + 8))(v11, v7);
    v26 = v37;
    v27 = *(v36 + 8);
    v27(v15, v37);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD49D8F0;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_104;
    v29 = _Block_copy(aBlock);

    v30 = v38;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    v31 = v40;
    v32 = v43;
    sub_1BE053664();
    v33 = v35;
    MEMORY[0x1BFB3FD90](v19, v30, v31, v29);
    _Block_release(v29);

    (*(v42 + 8))(v31, v32);
    (*(v39 + 8))(v30, v41);
    return (v27)(v19, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD49D038()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v36 - v8;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v36 - v13;
  result = [*(v0 + OBJC_IVAR____TtC9PassKitUI48PaymentSetupVerificationCompletionViewController_verificationController) pass];
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = result;
  v17 = [result contactlessActivationState];
  v18 = *MEMORY[0x1E69B80D8];
  v19 = *(v2 + 104);
  if (v17)
  {
    v38 = v16;
    v19(v5, v18, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v20 = result;
      v39 = sub_1BE04B6F4();

      v21 = *(v2 + 8);
      v21(v5, v1);
      v37 = "CODE_ACCEPTED_TITLE";
      v19(v9, v18, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1BE0B69E0;
      v23 = v38;
      v24 = [v38 localizedDescription];
      v25 = sub_1BE052434();
      v27 = v26;

      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1BD110550();
      *(v22 + 32) = v25;
      *(v22 + 40) = v27;
      sub_1BE04B714();

      v21(v9, v1);
      return v39;
    }

    goto LABEL_11;
  }

  v19(v14, *MEMORY[0x1E69B80D8], v1);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v28 = result;
  v29 = sub_1BE04B6F4();
  v38 = v30;
  v39 = v29;

  v37 = *(v2 + 8);
  (v37)(v14, v1);
  if ([v16 hasActiveVirtualCard])
  {
    v19(v9, *MEMORY[0x1E69B8058], v1);
  }

  else
  {
    v19(v9, v18, v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BE0B69E0;
  v32 = [v16 localizedDescription];
  v33 = sub_1BE052434();
  v35 = v34;

  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = sub_1BD110550();
  *(v31 + 32) = v33;
  *(v31 + 40) = v35;
  sub_1BE04B714();

  (v37)(v9, v1);
  return v39;
}

void sub_1BD49D528()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9PassKitUI48PaymentSetupVerificationCompletionViewController_reporter);
    if (v2)
    {
      [v2 reportPageCompleted:1 context:0];
    }

    v3 = swift_unknownObjectUnownedLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = v3 + OBJC_IVAR____TtC9PassKitUI42ProvisioningVerificationCompletionFlowItem_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 8);
        ObjectType = swift_getObjectType();
        sub_1BD8659A4(v4, &off_1F3B9AAB8, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for FinanceKitPredictedTransactionDetailView()
{
  result = qword_1EBD47628;
  if (!qword_1EBD47628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD49D96C()
{
  sub_1BD49DA08();
  if (v0 <= 0x3F)
  {
    sub_1BD49DA9C();
    if (v1 <= 0x3F)
    {
      sub_1BE0490F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD49DA08()
{
  if (!qword_1EBD47638)
  {
    type metadata accessor for NavigationController();
    sub_1BD4A0710(&qword_1EBD38DA8, type metadata accessor for NavigationController);
    v0 = sub_1BE04EED4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD47638);
    }
  }
}

void sub_1BD49DA9C()
{
  if (!qword_1EBD47640)
  {
    sub_1BE049BF4();
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD47640);
    }
  }
}

uint64_t sub_1BD49DB10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47658);
  v63 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v3);
  v58 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v62 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47660);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47668);
  v56 = *(v12 - 8);
  v13 = v56;
  v57 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v61 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v54 - v18;
  v20 = sub_1BE04F504();
  v69 = 1;
  sub_1BD49EA14(a1, v67);
  memcpy(v70, v67, 0x101uLL);
  memcpy(v71, v67, 0x101uLL);
  sub_1BD0DE19C(v70, &v66, &qword_1EBD47670);
  sub_1BD0DE53C(v71, &qword_1EBD47670);
  memcpy(&v68[7], v70, 0x101uLL);
  v21 = v69;
  v22 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47678) + 36)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
  v24 = sub_1BE0505C4();
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  *v22 = swift_getKeyPath();
  *v11 = v20;
  *(v11 + 1) = 0;
  v11[16] = v21;
  memcpy(v11 + 17, v68, 0x108uLL);
  v25 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47680) + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v36 = &v11[*(v8 + 36)];
  *v36 = v35;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  v65 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47688);
  sub_1BD4A032C(&qword_1EBD47690, &qword_1EBD47660, &unk_1BE0DA390, sub_1BD4A02FC);
  sub_1BD0DE4F4(&qword_1EBD476B8, &qword_1EBD47688);
  v55 = v19;
  sub_1BE051A24();
  v64 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  v41 = v62;
  sub_1BE051A44();
  v42 = *(v13 + 16);
  v43 = v61;
  v44 = v19;
  v45 = v57;
  v42(v61, v44, v57);
  v46 = *(v63 + 16);
  v47 = v58;
  v48 = v59;
  v46(v58, v41, v59);
  v49 = v60;
  v42(v60, v43, v45);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD476C0);
  v46(&v49[*(v50 + 48)], v47, v48);
  v51 = *(v63 + 8);
  v51(v62, v48);
  v52 = *(v56 + 8);
  v52(v55, v45);
  v51(v47, v48);
  return (v52)(v61, v45);
}

id sub_1BD49E0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1BE04F7C4();
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8040], v3);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v4 + 8))(v7, v3);
    *&v52 = v10;
    *(&v52 + 1) = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    LOBYTE(v9) = v16;
    v17 = sub_1BE0505D4();
    v19 = v18;
    v21 = v20;
    sub_1BD0DDF10(v13, v15, v9 & 1);

    sub_1BE0502A4();
    v22 = sub_1BE0505F4();
    v24 = v23;
    v39 = v25;
    v27 = v26;

    sub_1BD0DDF10(v17, v19, v21 & 1);

    v28 = sub_1BE04F504();
    v42[0] = 1;
    sub_1BD49E4B0(v40, &v52);
    v46 = *&v53[16];
    v47 = *&v53[32];
    v44 = v52;
    v45 = *v53;
    v49[2] = *&v53[16];
    v49[3] = *&v53[32];
    v49[4] = *&v53[48];
    v49[1] = *v53;
    v48 = *&v53[48];
    v49[0] = v52;
    sub_1BD0DE19C(&v44, &v50, &qword_1EBD3E1F0);
    sub_1BD0DE53C(v49, &qword_1EBD3E1F0);
    *(&v43[1] + 7) = v45;
    *(&v43[2] + 7) = v46;
    *(&v43[3] + 7) = v47;
    *(&v43[4] + 7) = v48;
    *(v43 + 7) = v44;
    v29 = v42[0];
    v50 = v28;
    v51[0] = v42[0];
    *&v51[17] = v43[1];
    v30 = v43[0];
    *&v51[1] = v43[0];
    *&v51[80] = *(&v48 + 1);
    v31 = v43[3];
    *&v51[65] = v43[4];
    v32 = v43[2];
    *&v51[49] = v43[3];
    v33 = v43[1];
    *&v51[33] = v43[2];
    v34 = *&v51[32];
    *(a2 + 88) = *&v51[16];
    v35 = v50;
    *(a2 + 72) = *v51;
    *(a2 + 56) = v35;
    v36 = *&v51[48];
    *(a2 + 136) = *&v51[64];
    *(a2 + 120) = v36;
    *(a2 + 104) = v34;
    *&v53[17] = v33;
    v42[112] = 1;
    v37 = v39 & 1;
    v42[104] = v39 & 1;
    *a2 = v41;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    *(a2 + 24) = v22;
    *(a2 + 32) = v24;
    *(a2 + 40) = v37;
    *(a2 + 48) = v27;
    *(a2 + 152) = *&v51[80];
    v52 = v28;
    v53[0] = v29;
    *&v53[1] = v30;
    *&v54[15] = *(&v43[4] + 15);
    *v54 = v43[4];
    *&v53[49] = v31;
    *&v53[33] = v32;
    sub_1BD0D7F18(v22, v24, v37);
    sub_1BE048C84();
    sub_1BD0DE19C(&v50, v42, &unk_1EBD4D3D0);
    sub_1BD0DE53C(&v52, &unk_1EBD4D3D0);
    sub_1BD0DDF10(v22, v24, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD49E4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v3 = sub_1BE04B0F4();
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1BE0493F4();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v6);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE049BF4();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04BD74();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v17, *MEMORY[0x1E69B80D8], v12, v15);
  result = PKPassKitBundle();
  if (result)
  {
    v19 = result;
    v20 = sub_1BE04B6F4();
    v22 = v21;

    (*(v13 + 8))(v17, v12);
    v76 = v20;
    v77 = v22;
    v59 = sub_1BD0DDEBC();
    v23 = sub_1BE0506C4();
    v25 = v24;
    LOBYTE(v19) = v26;
    v27 = sub_1BE0505D4();
    v29 = v28;
    v31 = v30;
    sub_1BD0DDF10(v23, v25, v19 & 1);

    sub_1BE0502A4();
    v32 = sub_1BE0505F4();
    v61 = v33;
    v62 = v32;
    v60 = v34;
    v63 = v35;

    sub_1BD0DDF10(v27, v29, v31 & 1);

    type metadata accessor for FinanceKitPredictedTransactionDetailView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47620);
    sub_1BE0516A4();
    v36 = v66;
    sub_1BE049BD4();
    (*(v64 + 8))(v11, v65);
    v37 = v69;
    sub_1BE04B054();
    v38 = sub_1BE0493E4();
    v40 = v39;
    (*(v71 + 8))(v37, v72);
    (*(v68 + 8))(v36, v70);
    v76 = v38;
    v77 = v40;
    v41 = sub_1BE0506C4();
    v43 = v42;
    LOBYTE(v37) = v44;
    v45 = sub_1BE0505D4();
    v47 = v46;
    LOBYTE(v25) = v48;
    sub_1BD0DDF10(v41, v43, v37 & 1);

    sub_1BE0502A4();
    v49 = sub_1BE0505F4();
    v51 = v50;
    LOBYTE(v20) = v52;
    v54 = v53;

    sub_1BD0DDF10(v45, v47, v25 & 1);

    v55 = v60 & 1;
    LOBYTE(v76) = v60 & 1;
    v75 = v60 & 1;
    v74 = 1;
    v73 = v20 & 1;
    v57 = v61;
    v56 = v62;
    *a2 = v62;
    *(a2 + 8) = v57;
    *(a2 + 16) = v55;
    *(a2 + 24) = v63;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    *(a2 + 48) = v49;
    *(a2 + 56) = v51;
    *(a2 + 64) = v20 & 1;
    *(a2 + 72) = v54;
    v58 = v56;
    sub_1BD0D7F18(v56, v57, v55);
    sub_1BE048C84();
    sub_1BD0D7F18(v49, v51, v20 & 1);
    sub_1BE048C84();
    sub_1BD0DDF10(v49, v51, v20 & 1);

    sub_1BD0DDF10(v58, v57, v76);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD49EA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F7B4();
  v25[0] = 1;
  sub_1BD49ED78(a1, &v45);
  v39 = *&v46[144];
  v40 = *&v46[160];
  v41 = *&v46[176];
  v35 = *&v46[80];
  v36 = *&v46[96];
  v37 = *&v46[112];
  v38 = *&v46[128];
  v31 = *&v46[16];
  v32 = *&v46[32];
  v33 = *&v46[48];
  v34 = *&v46[64];
  v29 = v45;
  v30 = *v46;
  v42[10] = *&v46[144];
  v42[11] = *&v46[160];
  v42[12] = *&v46[176];
  v42[6] = *&v46[80];
  v42[7] = *&v46[96];
  v42[9] = *&v46[128];
  v42[8] = *&v46[112];
  v42[2] = *&v46[16];
  v42[3] = *&v46[32];
  v42[4] = *&v46[48];
  v42[5] = *&v46[64];
  v42[0] = v45;
  v42[1] = *v46;
  sub_1BD0DE19C(&v29, &v43, &qword_1EBD476C8);
  sub_1BD0DE53C(v42, &qword_1EBD476C8);
  *&v28[151] = v38;
  *&v28[167] = v39;
  *&v28[183] = v40;
  *&v28[199] = v41;
  *&v28[87] = v34;
  *&v28[103] = v35;
  *&v28[119] = v36;
  *&v28[135] = v37;
  *&v28[23] = v30;
  *&v28[39] = v31;
  *&v28[55] = v32;
  *&v28[71] = v33;
  *&v28[7] = v29;
  v43 = v4;
  v44[0] = 1;
  v5 = *&v28[144];
  *&v44[161] = *&v28[160];
  v6 = *&v28[160];
  *&v44[177] = *&v28[176];
  v7 = *&v28[176];
  *&v44[193] = *&v28[192];
  *&v44[208] = *(&v41 + 1);
  v8 = *&v28[80];
  *&v44[97] = *&v28[96];
  v9 = *&v28[96];
  *&v44[113] = *&v28[112];
  v10 = *&v28[112];
  *&v44[129] = *&v28[128];
  v11 = *&v28[128];
  *&v44[145] = *&v28[144];
  v12 = *&v28[16];
  *&v44[33] = *&v28[32];
  v13 = *&v28[32];
  *&v44[49] = *&v28[48];
  v14 = *&v28[48];
  *&v44[65] = *&v28[64];
  v15 = *&v28[64];
  *&v44[81] = *&v28[80];
  *&v44[1] = *v28;
  v16 = *v28;
  *&v44[17] = *&v28[16];
  *&v26[183] = *&v44[160];
  *&v26[199] = *&v44[176];
  *&v26[215] = *&v44[192];
  *&v26[231] = *(&v41 + 1);
  *&v26[119] = *&v44[96];
  *&v26[135] = *&v44[112];
  *&v26[151] = *&v44[128];
  *&v26[167] = *&v44[144];
  *&v26[55] = *&v44[32];
  *&v26[71] = *&v44[48];
  *&v26[87] = *&v44[64];
  *&v26[103] = *&v44[80];
  *&v26[7] = v4;
  *&v26[23] = *v44;
  *&v26[39] = *&v44[16];
  v17 = *&v26[160];
  *(a2 + 185) = *&v26[176];
  v18 = *&v26[208];
  *(a2 + 201) = *&v26[192];
  *(a2 + 217) = v18;
  *(a2 + 232) = *&v26[223];
  v19 = *&v26[96];
  *(a2 + 121) = *&v26[112];
  v20 = *&v26[144];
  *(a2 + 137) = *&v26[128];
  *(a2 + 153) = v20;
  *(a2 + 169) = v17;
  v21 = *&v26[32];
  *(a2 + 57) = *&v26[48];
  v22 = *&v26[80];
  *(a2 + 73) = *&v26[64];
  *(a2 + 89) = v22;
  *(a2 + 105) = v19;
  v23 = *&v26[16];
  *(a2 + 9) = *v26;
  *(a2 + 25) = v23;
  *(a2 + 41) = v21;
  *&v46[161] = v6;
  *&v46[177] = v7;
  *v47 = *&v28[192];
  *&v46[97] = v9;
  *&v46[113] = v10;
  *&v46[129] = v11;
  *&v46[145] = v5;
  *&v46[33] = v13;
  *&v46[49] = v14;
  *&v46[65] = v15;
  *&v46[81] = v8;
  *&v46[1] = v16;
  v27 = 1;
  v25[232] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 248) = 0;
  *(a2 + 256) = 1;
  v45 = v4;
  v46[0] = 1;
  *&v47[15] = *&v28[207];
  *&v46[17] = v12;
  sub_1BD0DE19C(&v43, v25, &qword_1EBD476D0);
  return sub_1BD0DE53C(&v45, &qword_1EBD476D0);
}

id sub_1BD49ED78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = sub_1BE04AF64();
  v101 = *(v3 - 8);
  v102 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v100 = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = sub_1BE04B0F4();
  v6 = *(KeyPath - 8);
  MEMORY[0x1EEE9AC00](KeyPath, v7);
  v9 = v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0493F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE049BF4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1 + *(type metadata accessor for FinanceKitPredictedTransactionDetailView() + 20);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47620);
  v114 = v20;
  sub_1BE0516A4();
  sub_1BE049BD4();
  v21 = *(v16 + 8);
  v99 = v19;
  v115 = v15;
  v116 = v16 + 8;
  v112 = v21;
  v21(v19, v15);
  sub_1BE04B054();
  v22 = sub_1BE0493E4();
  v24 = v23;
  (*(v6 + 8))(v9, KeyPath);
  (*(v11 + 8))(v14, v10);
  v128 = v22;
  v129 = v24;
  v25 = sub_1BD0DDEBC();
  v26 = sub_1BE0506C4();
  v28 = v27;
  v30 = v29;
  result = PKRoundedSystemFontOfSizeAndWeight(64.0, *MEMORY[0x1E69DB980]);
  if (result)
  {
    sub_1BE050484();
    v32 = sub_1BE0505F4();
    v105 = v33;
    v106 = v32;
    v35 = v34;
    v107 = v36;

    sub_1BD0DDF10(v26, v28, v30 & 1);

    KeyPath = swift_getKeyPath();
    v104 = swift_getKeyPath();
    v108 = v35 & 1;
    v150 = v35 & 1;
    v148 = 0;
    v109 = sub_1BE0501D4();
    sub_1BE04E1F4();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v151 = 0;
    v110 = sub_1BE051464();
    v45 = v99;
    sub_1BE0516A4();
    v46 = sub_1BE049BB4();
    v48 = v47;
    v112(v45, v115);
    v128 = v46;
    v129 = v48;
    v49 = sub_1BE0506C4();
    v51 = v50;
    v53 = v52;
    sub_1BE0502A4();
    v54 = sub_1BE0505F4();
    v95 = v55;
    v93[1] = v25;
    v57 = v56;

    sub_1BD0DDF10(v49, v51, v53 & 1);

    v128 = sub_1BE051494();
    v58 = v95;
    v59 = sub_1BE050574();
    v96 = v60;
    v97 = v59;
    v94 = v61;
    v98 = v62;
    sub_1BD0DDF10(v54, v58, v57 & 1);

    v95 = swift_getKeyPath();
    sub_1BE0516A4();
    v63 = v100;
    sub_1BE049B84();
    v112(v45, v115);
    v64 = sub_1BE04AF34();
    v66 = v65;
    (*(v101 + 8))(v63, v102);
    v128 = v64;
    v129 = v66;
    v67 = sub_1BE0506C4();
    v69 = v68;
    LOBYTE(v63) = v70;
    sub_1BE0502A4();
    v71 = sub_1BE0505F4();
    v73 = v72;
    v75 = v74;

    sub_1BD0DDF10(v67, v69, v63 & 1);

    v128 = sub_1BE051494();
    v76 = sub_1BE050574();
    v78 = v77;
    LOBYTE(v63) = v79;
    v81 = v80;
    sub_1BD0DDF10(v71, v73, v75 & 1);

    v82 = v94 & 1;
    v119 = v94 & 1;
    *&v120 = v106;
    *(&v120 + 1) = v105;
    LOBYTE(v121) = v108;
    *(&v121 + 1) = *v149;
    DWORD1(v121) = *&v149[3];
    *(&v121 + 1) = v107;
    *&v122 = KeyPath;
    *(&v122 + 1) = 0x3FE0000000000000;
    *&v123 = v104;
    *(&v123 + 1) = 1;
    LOBYTE(v124) = 0;
    DWORD1(v124) = *&v153[3];
    *(&v124 + 1) = *v153;
    BYTE8(v124) = v109;
    HIDWORD(v124) = *&v152[3];
    *(&v124 + 9) = *v152;
    *&v125 = v38;
    *(&v125 + 1) = v40;
    *&v126 = v42;
    *(&v126 + 1) = v44;
    LOBYTE(v127) = 0;
    DWORD1(v127) = *(v154 + 3);
    *(&v127 + 1) = v154[0];
    *(&v127 + 1) = v110;
    v118 = v94 & 1;
    LOBYTE(v63) = v63 & 1;
    v117 = v63;
    v83 = v124;
    v84 = v125;
    v85 = v127;
    v86 = v103;
    *(v103 + 96) = v126;
    *(v86 + 112) = v85;
    *(v86 + 64) = v83;
    *(v86 + 80) = v84;
    v87 = v120;
    v88 = v121;
    v89 = v123;
    *(v86 + 32) = v122;
    *(v86 + 48) = v89;
    *v86 = v87;
    *(v86 + 16) = v88;
    v91 = v96;
    v90 = v97;
    *(v86 + 128) = v97;
    *(v86 + 136) = v91;
    *(v86 + 144) = v82;
    v92 = v95;
    *(v86 + 152) = v98;
    *(v86 + 160) = v92;
    *(v86 + 168) = 1;
    *(v86 + 176) = v76;
    *(v86 + 184) = v78;
    *(v86 + 192) = v63;
    *(v86 + 200) = v81;
    sub_1BD0DE19C(&v120, &v128, &qword_1EBD476D8);
    sub_1BD0D7F18(v90, v91, v82);
    sub_1BE048C84();
    sub_1BE048964();
    sub_1BD0D7F18(v76, v78, v63);
    sub_1BE048C84();
    sub_1BD0DDF10(v76, v78, v63);

    sub_1BD0DDF10(v90, v91, v119);

    v128 = v106;
    v129 = v105;
    v130 = v108;
    *v131 = *v149;
    *&v131[3] = *&v149[3];
    v132 = v107;
    v133 = KeyPath;
    v134 = 0x3FE0000000000000;
    v135 = v104;
    v136 = 1;
    v137 = 0;
    *v138 = *v153;
    *&v138[3] = *&v153[3];
    v139 = v109;
    *&v140[3] = *&v152[3];
    *v140 = *v152;
    v141 = v38;
    v142 = v40;
    v143 = v42;
    v144 = v44;
    v145 = 0;
    *v146 = v154[0];
    *&v146[3] = *(v154 + 3);
    v147 = v110;
    return sub_1BD0DE53C(&v128, &qword_1EBD476D8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD49F604(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitPredictedTransactionDetailView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  sub_1BE04F624();
  sub_1BD4A049C(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1BD4A0500(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  return sub_1BE051734();
}

uint64_t sub_1BD49F754(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitPredictedTransactionDetailView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = sub_1BE0528D4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1BD4A049C(a1, v6);
  sub_1BE0528A4();
  v12 = sub_1BE052894();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_1BD4A0500(v6, v14 + v13);
  sub_1BD122C00(0, 0, v10, &unk_1BE0DA400, v14);
}

uint64_t sub_1BD49F90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for FinanceKitPredictedTransactionDetailView();
  v4[4] = swift_task_alloc();
  v5 = sub_1BE04D214();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v7 = sub_1BE049BF4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  sub_1BE0528A4();
  v4[16] = sub_1BE052894();
  v9 = sub_1BE052844();
  v4[17] = v9;
  v4[18] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD49FB00, v9, v8);
}

uint64_t sub_1BD49FB00()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v0[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47620);
  v4 = sub_1BE0516A4();
  MEMORY[0x1BFB36C50](v4);
  v5 = *(v3 + 8);
  v0[20] = v5;
  v0[21] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1BD49FC20;
  v7 = v0[11];

  return MEMORY[0x1EEDC1540](1, v7);
}

uint64_t sub_1BD49FC20()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v2[23] = v0;

  v6 = *(v4 + 8);
  v2[24] = v6;
  v2[25] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[18];
  v8 = v2[17];
  if (v0)
  {
    v9 = sub_1BD49FF7C;
  }

  else
  {
    v9 = sub_1BD49FDCC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1BD49FDCC()
{
  v1 = *(v0 + 16);

  v2 = *v1;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      sub_1BE048964();
      v4 = v3;
      if ([v4 _pk_settings_useStateDrivenNavigation])
      {
        [v4 _pk_settings_popViewController];
      }

      else
      {
        v6 = [v4 popViewControllerAnimated_];

        v4 = v6;
      }
    }

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    type metadata accessor for NavigationController();
    sub_1BD4A0710(&qword_1EBD38DA8, type metadata accessor for NavigationController);

    return sub_1BE04EEB4();
  }
}

uint64_t sub_1BD49FF7C()
{
  v30 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  sub_1BE04D114();
  sub_1BD4A049C(v2, v1);
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();
  if (os_log_type_enabled(v3, v4))
  {
    v24 = *(v0 + 192);
    v22 = *(v0 + 160);
    v5 = *(v0 + 112);
    v21 = *(v0 + 96);
    v6 = *(v0 + 80);
    v23 = *(v0 + 64);
    v25 = *(v0 + 48);
    v26 = *(v0 + 184);
    v27 = *(v0 + 40);
    v28 = *(v0 + 56);
    v7 = *(v0 + 32);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    v10 = sub_1BE0516A4();
    MEMORY[0x1BFB36C50](v10);
    v22(v5, v21);
    sub_1BD4A0710(&unk_1EBD39960, MEMORY[0x1E69695A8]);
    v11 = sub_1BE053B24();
    v13 = v12;
    v24(v6, v23);
    sub_1BD4A06B4(v7);
    v14 = sub_1BD123690(v11, v13, &v29);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to delete predicted transaction with ID: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);

    (*(v25 + 8))(v28, v27);
  }

  else
  {
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);

    sub_1BD4A06B4(v18);
    (*(v16 + 8))(v15, v17);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1BD4A0248()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47648);
  sub_1BD0DE4F4(&qword_1EBD47650, &qword_1EBD47648);
  return sub_1BE0504E4();
}

uint64_t sub_1BD4A032C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD4A03B0()
{
  result = qword_1EBD476A0;
  if (!qword_1EBD476A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47678);
    sub_1BD0DE4F4(&qword_1EBD476A8, &qword_1EBD476B0);
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD476A0);
  }

  return result;
}

uint64_t sub_1BD4A049C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitPredictedTransactionDetailView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4A0500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitPredictedTransactionDetailView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4A0564()
{
  v1 = *(type metadata accessor for FinanceKitPredictedTransactionDetailView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD49F754(v2);
}

uint64_t sub_1BD4A05C4(uint64_t a1)
{
  v4 = *(type metadata accessor for FinanceKitPredictedTransactionDetailView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD49F90C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1BD4A06B4(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitPredictedTransactionDetailView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD4A0710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD4A0758(uint64_t a1)
{
  v36 = sub_1BE04DEB4();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v4);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v28 = v1;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1BD03B254(0, v6, 0);
    v39 = v40;
    v8 = a1 + 64;
    result = sub_1BE053674();
    v9 = result;
    v10 = 0;
    v33 = v3 + 8;
    v34 = v3 + 16;
    v29 = a1 + 72;
    v30 = v6;
    v31 = v3;
    v32 = a1 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v37 = *(a1 + 36);
      v13 = v35;
      v14 = v36;
      (*(v3 + 16))(v35, *(a1 + 56) + *(v3 + 72) * v9, v36);
      v38 = sub_1BD4A3AE8();
      v16 = v15;
      result = (*(v3 + 8))(v13, v14);
      v17 = v39;
      v40 = v39;
      v19 = *(v39 + 16);
      v18 = *(v39 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1BD03B254((v18 > 1), v19 + 1, 1);
        v17 = v40;
      }

      *(v17 + 16) = v19 + 1;
      v20 = v17 + 16 * v19;
      *(v20 + 32) = v38;
      *(v20 + 40) = v16;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v8 = v32;
      v21 = *(v32 + 8 * v12);
      if ((v21 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v39 = v17;
      if (v37 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v9 & 0x3F));
      if (v22)
      {
        v11 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v3 = v31;
      }

      else
      {
        v23 = v12 << 6;
        v24 = v12 + 1;
        v25 = (v29 + 8 * v12);
        v3 = v31;
        while (v24 < (v11 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1BD20DE9C(v9, v37, 0);
            v11 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_1BD20DE9C(v9, v37, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v30)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t NearbyPeerPaymentReceiverState.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F690);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD26681C(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1BD043990(v13, v28);
      v26 = 0x28726F727265;
      v27 = 0xE600000000000000;
      __swift_project_boxed_opaque_existential_1(v28, v28[3]);
      v23 = sub_1BE053B24();
      MEMORY[0x1BFB3F610](v23);

      MEMORY[0x1BFB3F610](41, 0xE100000000000000);
      v24 = v26;
      __swift_destroy_boxed_opaque_existential_0(v28);
      return v24;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000012;
    }

    else
    {
      return 0x6574656C706D6F63;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v15 = *v13;
    v16 = *(v13 + 1);
    v28[0] = 0;
    v28[1] = 0xE000000000000000;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BE053834();

      v28[0] = 0xD000000000000010;
      v28[1] = 0x80000001BE12B860;
    }

    else
    {
      sub_1BE053834();

      strcpy(v28, "transferring(");
      HIWORD(v28[1]) = -4864;
    }

    MEMORY[0x1BFB3F610](v15, v16);

    MEMORY[0x1BFB3F610](41, 0xE100000000000000);
    return v28[0];
  }

  else
  {
    v18 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680) + 48);
    v20 = *v18;
    v19 = *(v18 + 1);
    sub_1BD0DE204(v13, v9, &unk_1EBD3F690);
    v28[0] = 0;
    v28[1] = 0xE000000000000000;
    sub_1BE053834();

    v28[0] = 0xD000000000000012;
    v28[1] = 0x80000001BE12B880;
    sub_1BD0DE19C(v9, v5, &unk_1EBD3F690);
    v21 = sub_1BE0524A4();
    MEMORY[0x1BFB3F610](v21);

    MEMORY[0x1BFB3F610](8236, 0xE200000000000000);
    MEMORY[0x1BFB3F610](v20, v19);

    MEMORY[0x1BFB3F610](41, 0xE100000000000000);
    v22 = v28[0];
    sub_1BD0DE53C(v9, &unk_1EBD3F690);
    return v22;
  }
}

BOOL NearbyPeerPaymentReceiverState.isError.getter()
{
  v1 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD26681C(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    sub_1BD32E45C(v4);
  }

  return EnumCaseMultiPayload == 3;
}

uint64_t NearbyPeerPaymentReceiverState.isTerminal.getter()
{
  v1 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD26681C(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      __swift_destroy_boxed_opaque_existential_0(v4);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0;
    }

    return 1;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1BD32E45C(v4);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680);

      sub_1BD0DE53C(v4, &unk_1EBD3F690);
    }

    return 0;
  }
}

uint64_t NearbyPeerPaymentReceiverState.nonce.getter()
{
  v1 = v0;
  v2 = sub_1BE04AFE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD26681C(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      __swift_destroy_boxed_opaque_existential_0(v10);
      return 0;
    }

    else
    {
      v13 = EnumCaseMultiPayload;
      result = 0;
      if (v13 == 4)
      {
        sub_1BE04AFD4();
        v14 = sub_1BE04AF74();
        (*(v3 + 8))(v6, v2);
        return v14;
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    return *v10;
  }

  else
  {
    v15 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680) + 48)];
    sub_1BD0DE53C(v10, &unk_1EBD3F690);
    return v15;
  }

  return result;
}

uint64_t NearbyPeerPaymentReceiverState.canAccept.getter()
{
  v1 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD26681C(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      __swift_destroy_boxed_opaque_existential_0(v4);
    }

    return 0;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1BD32E45C(v4);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680);

      sub_1BD0DE53C(v4, &unk_1EBD3F690);
    }

    return 1;
  }
}

uint64_t NearbyPeerPaymentReceiverState.canCancelConnection.getter()
{
  v1 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD26681C(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      __swift_destroy_boxed_opaque_existential_0(v4);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 1;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680);

      sub_1BD0DE53C(v4, &unk_1EBD3F690);
      return 1;
    }

    sub_1BD32E45C(v4);
  }

  return 0;
}

uint64_t NearbyPeerPaymentTransferMonitor.receiveState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiveState;
  swift_beginAccess();
  return sub_1BD26681C(v1 + v3, a1);
}

uint64_t sub_1BD4A1440(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15[-v10];
  sub_1BD26681C(a1, &v15[-v10]);
  v12 = *a2;
  v13 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiveState;
  swift_beginAccess();
  sub_1BD26681C(v12 + v13, v7);
  swift_beginAccess();
  sub_1BD32E4B8(v11, v12 + v13);
  swift_endAccess();
  sub_1BD4A1550(v7);
  sub_1BD32E45C(v7);
  return sub_1BD32E45C(v11);
}

uint64_t sub_1BD4A1550(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19[-1] - v10;
  v12 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiveState;
  swift_beginAccess();
  sub_1BD26681C(v1 + v12, v11);
  LOBYTE(a1) = _s9PassKitUI30NearbyPeerPaymentReceiverStateO2eeoiySbAC_ACtFZ_0(a1, v11);
  result = sub_1BD32E45C(v11);
  if ((a1 & 1) == 0)
  {
    sub_1BD26681C(v1 + v12, v7);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1BD32E45C(v7);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680);

      sub_1BD4A1778(0x78);
      sub_1BD0DE53C(v7, &unk_1EBD3F690);
    }

    v14 = (v1 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_delegate);
    result = swift_beginAccess();
    if (*v14)
    {
      v15 = v14[1];
      ObjectType = swift_getObjectType();
      v19[3] = v3;
      v19[4] = &protocol witness table for NearbyPeerPaymentTransferMonitor;
      v19[0] = v1;
      sub_1BD26681C(v1 + v12, v11);
      v17 = *(v15 + 8);
      swift_unknownObjectRetain();
      sub_1BE048964();
      v17(v19, v11, ObjectType, v15);
      swift_unknownObjectRelease();
      sub_1BD32E45C(v11);
      return __swift_destroy_boxed_opaque_existential_0(v19);
    }
  }

  return result;
}

uint64_t sub_1BD4A1778(uint64_t (**a1)())
{
  v82 = a1;
  v91 = sub_1BE051F54();
  v88 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v2);
  v87 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1BE051FA4();
  v86 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v4);
  v85 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051F44();
  v81 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v80 = (&v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v76 = (&v71 - v11);
  v79 = sub_1BE051FC4();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v12);
  v75 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v77 = &v71 - v16;
  v17 = sub_1BE052DC4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v73 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1BE04D214();
  v21 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v22);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  v74 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v83 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v71 - v30;
  v89 = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v71 - v35;
  v94 = v1;
  v84 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_timeoutTimer;
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_timeoutTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1BE052E04();
    swift_unknownObjectRelease();
  }

  v37 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiveState;
  v38 = v94;
  swift_beginAccess();
  sub_1BD26681C(v38 + v37, v36);
  sub_1BE04D094();
  v93 = v36;
  sub_1BD26681C(v36, v31);
  v39 = sub_1BE04D204();
  v40 = sub_1BE052C54();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v72 = v6;
    v71 = v18;
    v42 = v41;
    v43 = swift_slowAlloc();
    aBlock = v43;
    *v42 = 136315138;
    v44 = NearbyPeerPaymentReceiverState.description.getter();
    v45 = v17;
    v47 = v46;
    sub_1BD32E45C(v31);
    v48 = sub_1BD123690(v44, v47, &aBlock);
    v17 = v45;

    *(v42 + 4) = v48;
    _os_log_impl(&dword_1BD026000, v39, v40, "NearbyPeerPayment: starting timer for state: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x1BFB45F20](v43, -1, -1);
    v49 = v42;
    v18 = v71;
    v6 = v72;
    MEMORY[0x1BFB45F20](v49, -1, -1);
  }

  else
  {

    sub_1BD32E45C(v31);
  }

  (*(v21 + 8))(v24, v92);
  sub_1BD0E5E8C(0, &unk_1EBD39A90);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v50 = sub_1BE052D54();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1BD4B52D8(&unk_1EBD3F6A0, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AA0);
  sub_1BD0DE4F4(&qword_1EBD3F6B0, &unk_1EBD39AA0);
  v51 = v73;
  sub_1BE053664();
  v92 = sub_1BE052DD4();

  (*(v18 + 8))(v51, v17);
  ObjectType = swift_getObjectType();
  v53 = v75;
  sub_1BE051FB4();
  v54 = v76;
  *v76 = v82;
  v55 = v81;
  (*(v81 + 104))(v54, *MEMORY[0x1E69E7F48], v6);
  v56 = v77;
  MEMORY[0x1BFB3F070](v53, v54);
  v57 = *(v55 + 8);
  v57(v54, v6);
  v82 = *(v78 + 8);
  v58 = v79;
  (v82)(v53, v79);
  v73 = ObjectType;
  sub_1BD85BB68(v54);
  v59 = v80;
  sub_1BD85BBDC(v80);
  MEMORY[0x1BFB3FF60](v56, v54, v59, ObjectType);
  v57(v59, v6);
  v57(v54, v6);
  (v82)(v56, v58);
  v60 = swift_allocObject();
  swift_weakInit();
  v61 = v83;
  sub_1BD26681C(v93, v83);
  v62 = *(v74 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = v60;
  sub_1BD266F10(v61, v63 + ((v62 + 24) & ~v62));
  v99 = sub_1BD4B45F0;
  v100 = v63;
  aBlock = MEMORY[0x1E69E9820];
  v96 = 1107296256;
  v82 = &v97;
  v97 = sub_1BD126964;
  v98 = &block_descriptor_38_1;
  v64 = _Block_copy(&aBlock);
  sub_1BE048964();
  v65 = v85;
  sub_1BD85BC54();
  v66 = v87;
  sub_1BD56AC68();
  sub_1BE052DE4();
  _Block_release(v64);
  v88 = *(v88 + 8);
  (v88)(v66, v91);
  v86 = *(v86 + 8);
  (v86)(v65, v90);

  sub_1BD26681C(v93, v61);
  v67 = swift_allocObject();
  sub_1BD266F10(v61, v67 + ((v62 + 16) & ~v62));
  v99 = sub_1BD4B4654;
  v100 = v67;
  aBlock = MEMORY[0x1E69E9820];
  v96 = 1107296256;
  v97 = sub_1BD126964;
  v98 = &block_descriptor_44_1;
  v68 = _Block_copy(&aBlock);
  sub_1BD56AC64();
  sub_1BD56AC68();
  v69 = v92;
  sub_1BE052DF4();
  _Block_release(v68);
  (v88)(v66, v91);
  (v86)(v65, v90);

  sub_1BE052E14();
  sub_1BD32E45C(v93);
  *(v94 + v84) = v69;
  return swift_unknownObjectRelease();
}

uint64_t sub_1BD4A22CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_1BD0DE19C(v3 + v6, a3, a2);
}

uint64_t NearbyPeerPaymentTransferMonitor.canAutoAccept.getter()
{
  v1 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_canAutoAccept;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NearbyPeerPaymentTransferMonitor.requiresIDVToCompleteTransfer.getter()
{
  v1 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_requiresIDVToCompleteTransfer;
  swift_beginAccess();
  return *(v0 + v1);
}

void *NearbyPeerPaymentTransferMonitor.receiverCoordinator.getter()
{
  v1 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiverCoordinator;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *NearbyPeerPaymentTransferMonitor.appearanceData.getter()
{
  v1 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_appearanceData;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void NearbyPeerPaymentTransferMonitor.appearanceData.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_appearanceData;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t NearbyPeerPaymentTransferMonitor.delegate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_delegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t NearbyPeerPaymentTransferMonitor.isDebug.getter()
{
  v1 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_isDebug;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NearbyPeerPaymentTransferMonitor.isDebug.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_isDebug;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1BD4A2730(uint64_t a1)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_1BE04DD64();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v48 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE052D44();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v44 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE052CF4();
  MEMORY[0x1EEE9AC00](v9, v10);
  v43[1] = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_currentTransferID;
  v15 = sub_1BE04E0B4();
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  v16 = (v2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_currentTransferContactID);
  *v16 = 0;
  v16[1] = 0;
  *(v2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_askResponseProcessed) = 0;
  type metadata accessor for NearbyPeerPaymentReceiverState(0);
  swift_storeEnumTagMultiPayload();
  v17 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_senderMetadata;
  v18 = sub_1BE04C4C4();
  (*(*(v18 - 8) + 56))(v2 + v17, 1, 1, v18);
  *(v2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_canAutoAccept) = 0;
  *(v2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_requiresIDVToCompleteTransfer) = 0;
  *(v2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiverCoordinator) = 0;
  v19 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_permissionRequest;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43AE0);
  (*(*(v20 - 8) + 56))(v2 + v19, 1, 1, v20);
  *(v2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_appearanceData) = 0;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v22 = result;
    v23 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_peerPaymentAccount;
    v24 = [result account];

    *(v2 + v23) = v24;
    v25 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_lockStateMonitor;
    type metadata accessor for LockStateMonitor();
    swift_allocObject();
    *(v2 + v25) = sub_1BD4DA4FC();
    v26 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor__lock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39A88);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v2 + v26) = v27;
    *(v2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_updating) = 0;
    *(v2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_transferSession) = 0;
    *(v2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_effectiveState) = 0;
    v28 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_queue;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    sub_1BE051F84();
    v51 = MEMORY[0x1E69E7CC0];
    sub_1BD4B52D8(&unk_1EBD35EB0, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420);
    sub_1BD0DE4F4(&unk_1EBD35F10, &unk_1EBD3D420);
    sub_1BE053664();
    (*(v45 + 104))(v44, *MEMORY[0x1E69E8090], v46);
    *(v2 + v28) = sub_1BE052D74();
    v29 = (v2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_delegate);
    *v29 = 0;
    v29[1] = 0;
    *(v2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_isDebug) = 0;
    *(v2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_timeoutTimer) = 0;
    v30 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_creationDate;
    v31 = sub_1BE04AF64();
    v32 = *(v31 - 8);
    v33 = v47;
    (*(v32 + 16))(v2 + v30, v47, v31);
    v34 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_lockStateMonitor;
    sub_1BE048964();
    LOBYTE(v25) = sub_1BD4DA364();

    *(v2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_currentLockState) = v25 & 1;
    *(*(v2 + v34) + 24) = &off_1F3BA9578;
    swift_unknownObjectWeakAssign();
    v35 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for NearbyPeerPaymentTransferSession(0);
    v36 = swift_allocObject();
    *(v36 + 3) = 0;
    v37 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferSession_transferAssertionId;
    v38 = sub_1BE04AFE4();
    (*(*(v38 - 8) + 56))(&v36[v37], 1, 1, v38);
    sub_1BE04DDC4();
    v39 = qword_1EBD36B98;
    sub_1BE048964();
    if (v39 != -1)
    {
      swift_once();
    }

    v40 = v50;
    v41 = __swift_project_value_buffer(v50, qword_1EBD40A58);
    (*(v49 + 16))(v48, v41, v40);
    v42 = sub_1BE04DD74();
    (*(v32 + 8))(v33, v31);
    *(v36 + 2) = v42;
    *(v36 + 4) = sub_1BD4B4920;
    *(v36 + 5) = v35;

    *(v2 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_transferSession) = v36;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD4A2E90(uint64_t a1)
{
  v23 = a1;
  v1 = sub_1BE051F54();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04E0E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v22 = sub_1BE052D54();
    (*(v10 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v9);
    v15 = *(v10 + 80);
    v23 = v5;
    v16 = (v15 + 24) & ~v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    (*(v10 + 32))(v17 + v16, &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    aBlock[4] = sub_1BD4B4928;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_82_1;
    v18 = _Block_copy(aBlock);
    sub_1BE048964();

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD4B52D8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    v19 = v25;
    sub_1BE053664();
    v20 = v22;
    MEMORY[0x1BFB3FDF0](0, v8, v19, v18);
    _Block_release(v18);

    (*(v2 + 8))(v19, v1);
    return (*(v24 + 8))(v8, v23);
  }

  return result;
}

uint64_t sub_1BD4A3284()
{
  v0 = sub_1BE04DE04();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v67 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1BE04E0B4();
  v4 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v5);
  v71 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47868);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v77 = &v63 - v9;
  v76 = sub_1BE04E084();
  v81 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v10);
  v70 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1BE04DEB4();
  v82 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v12);
  v14 = (&v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v78 = &v63 - v17;
  v80 = sub_1BE04D214();
  v75 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v18);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE051FD4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = (&v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  *v25 = sub_1BE052D54();
  (*(v22 + 104))(v25, *MEMORY[0x1E69E8020], v21);
  v26 = sub_1BE052004();
  result = (*(v22 + 8))(v25, v21);
  if ((v26 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v73 = v4;
  v28 = sub_1BE04E0D4();
  sub_1BE04D094();
  sub_1BE048C84();
  v29 = sub_1BE04D204();
  v30 = sub_1BE052C54();
  v31 = os_log_type_enabled(v29, v30);
  v65 = v1;
  v66 = v0;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v84 = v33;
    *v32 = 134218242;
    *(v32 + 4) = *(v28 + 16);

    *(v32 + 12) = 2080;
    sub_1BD4A0758(v28);
    v64 = 0;
    v34 = MEMORY[0x1BFB3F7F0]();
    v36 = v35;

    v37 = sub_1BD123690(v34, v36, &v84);

    *(v32 + 14) = v37;
    _os_log_impl(&dword_1BD026000, v29, v30, "NearbyPeerPayment: TransferMonitor: %ld receive transfer updates: %s", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1BFB45F20](v33, -1, -1);
    MEMORY[0x1BFB45F20](v32, -1, -1);

    (v75)[1](v20, v80);
  }

  else
  {

    (v75)[1](v20, v80);
    v64 = 0;
  }

  v39 = v78;
  v38 = v79;
  v40 = v28 + 64;
  v41 = 1 << *(v28 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v28 + 64);
  v44 = (v41 + 63) >> 6;
  v45 = v81;
  v80 = v82 + 32;
  v81 = v82 + 16;
  ++v73;
  v74 = (v45 + 48);
  v68 = (v45 + 8);
  v69 = (v45 + 32);
  v46 = (v82 + 8);
  result = sub_1BE048C84();
  v47 = 0;
  v75 = v46;
  if (!v43)
  {
LABEL_8:
    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v48 >= v44)
      {
      }

      v43 = *(v40 + 8 * v48);
      ++v47;
      if (v43)
      {
        v47 = v48;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  while (1)
  {
LABEL_12:
    v49 = v82;
    (*(v82 + 16))(v39, *(v28 + 56) + *(v82 + 72) * (__clz(__rbit64(v43)) | (v47 << 6)), v38);
    (*(v49 + 32))(v14, v39, v38);
    if (sub_1BD4A3FB8(v14))
    {
      v50 = v28;
      v51 = v77;
      sub_1BE04DE44();
      v52 = v51;
      v53 = v76;
      if ((*v74)(v52, 1, v76) != 1)
      {
        v54 = v70;
        (*v69)(v70, v52, v53);
        v55 = v71;
        sub_1BE04DE54();
        sub_1BD4B498C(v55, v54);
        v56 = v55;
        v38 = v79;
        (*v73)(v56, v72);
        v57 = v54;
        v39 = v78;
        (*v68)(v57, v53);
        v28 = v50;
        v46 = v75;
        goto LABEL_18;
      }

      sub_1BD0DE53C(v52, &qword_1EBD47868);
      v28 = v50;
      v46 = v75;
    }

    if (sub_1BD4A4848(v14))
    {
      break;
    }

LABEL_18:
    v43 &= v43 - 1;
    result = (*v46)(v14, v38);
    if (!v43)
    {
      goto LABEL_8;
    }
  }

  v58 = (v83 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_currentTransferContactID);
  if (!*(v83 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_currentTransferContactID + 8))
  {
    v59 = v67;
    sub_1BE04DE34();
    v60 = sub_1BE04DDE4();
    v62 = v61;
    (*(v65 + 8))(v59, v66);
    *v58 = v60;
    v58[1] = v62;
  }

  sub_1BD4A5F08(v14);

  return (*v46)(v14, v79);
}

uint64_t sub_1BD4A3AE8()
{
  v0 = sub_1BE04AF64();
  v1 = *(v0 - 8);
  v31 = v0;
  v32 = v1;
  MEMORY[0x1EEE9AC00](v0, v2);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04DE64();
  v5 = *(v4 - 8);
  v28 = v4;
  v29 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04DD64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04E0B4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1BE053834();
  MEMORY[0x1BFB3F610](979659099, 0xE400000000000000);
  sub_1BE04DE54();
  sub_1BD4B52D8(&unk_1EBD47730, MEMORY[0x1E69CDDE8]);
  v19 = sub_1BE053B24();
  MEMORY[0x1BFB3F610](v19);

  (*(v15 + 8))(v18, v14);
  MEMORY[0x1BFB3F610](0x6E6573657270202CLL, 0xEC0000003A726574);
  sub_1BE04DE94();
  sub_1BD4B52D8(&qword_1EBD47870, MEMORY[0x1E69CDC18]);
  v20 = sub_1BE053B24();
  MEMORY[0x1BFB3F610](v20);

  (*(v10 + 8))(v13, v9);
  MEMORY[0x1BFB3F610](0x3A6574617473202CLL, 0xE800000000000000);
  sub_1BE04DE74();
  sub_1BD4B52D8(&qword_1EBD47878, MEMORY[0x1E69CDCC0]);
  v21 = v28;
  v22 = sub_1BE053B24();
  MEMORY[0x1BFB3F610](v22);

  (*(v29 + 8))(v8, v21);
  MEMORY[0x1BFB3F610](0x447472617473202CLL, 0xEC0000003A657461);
  v23 = v30;
  sub_1BE04DEA4();
  sub_1BD4B52D8(&unk_1EBD38830, MEMORY[0x1E6969530]);
  v24 = v31;
  v25 = sub_1BE053B24();
  MEMORY[0x1BFB3F610](v25);

  (*(v32 + 8))(v23, v24);
  MEMORY[0x1BFB3F610](0xD000000000000014, 0x80000001BE12BB60);
  return v33;
}

uint64_t sub_1BD4A3FB8(uint64_t a1)
{
  v2 = sub_1BE04E0B4();
  v81 = *(v2 - 8);
  v82 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v79 = (&v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1BE04DEB4();
  v90 = *(v5 - 8);
  v91 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v84 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v80 = &v78 - v10;
  v11 = sub_1BE04D214();
  v87 = *(v11 - 8);
  v88 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v85 = (&v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v15);
  v83 = &v78 - v16;
  v86 = sub_1BE04AF64();
  v17 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v18);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v78 - v23;
  v25 = sub_1BE04E054();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BE04DE04();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a1;
  sub_1BE04DE34();
  sub_1BE04DDF4();
  (*(v31 + 8))(v34, v30);
  LOBYTE(a1) = sub_1BE04E034();
  (*(v26 + 8))(v29, v25);
  if (a1)
  {
    v35 = v90;
    v36 = v91;
    sub_1BE04DEA4();
    v37 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_creationDate;
    v38 = v86;
    v85 = *(v17 + 16);
    v85(v20, v89 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_creationDate, v86);
    v39 = sub_1BE04AE74();
    v42 = *(v17 + 8);
    v40 = (v17 + 8);
    v41 = v42;
    v42(v20, v38);
    v42(v24, v38);
    if (v39)
    {
      return 0;
    }

    v82 = v24;
    v84 = v40;
    v60 = v83;
    sub_1BE04D094();
    v61 = v35;
    v62 = v80;
    (*(v35 + 16))(v80, v92, v36);
    sub_1BE048964();
    v63 = sub_1BE04D204();
    v64 = sub_1BE052C34();

    LODWORD(v92) = v64;
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v93 = v81;
      *v65 = 136315394;
      v79 = v63;
      v66 = sub_1BD4A3AE8();
      v68 = v67;
      (*(v61 + 8))(v62, v36);
      v69 = sub_1BD123690(v66, v68, &v93);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      v70 = v82;
      v71 = v86;
      v85(v82, v89 + v37, v86);
      sub_1BD4B52D8(&unk_1EBD38830, MEMORY[0x1E6969530]);
      v72 = sub_1BE053B24();
      v74 = v73;
      v41(v70, v71);
      v75 = sub_1BD123690(v72, v74, &v93);

      *(v65 + 14) = v75;
      v76 = v79;
      _os_log_impl(&dword_1BD026000, v79, v92, "NearbyPeerPayment: TransferMonitor: %s older than creation date:%s. It should be declined.", v65, 0x16u);
      v77 = v81;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v77, -1, -1);
      MEMORY[0x1BFB45F20](v65, -1, -1);

      (*(v87 + 8))(v83, v88);
    }

    else
    {

      (*(v61 + 8))(v62, v36);
      (*(v87 + 8))(v60, v88);
    }
  }

  else
  {
    v44 = v85;
    sub_1BE04D094();
    v46 = v90;
    v45 = v91;
    v47 = v84;
    (*(v90 + 16))(v84, v92, v91);
    v48 = sub_1BE04D204();
    v49 = sub_1BE052C34();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v93 = v92;
      *v50 = 136315138;
      v51 = v79;
      LODWORD(v89) = v49;
      sub_1BE04DE54();
      sub_1BD4B52D8(&unk_1EBD47730, MEMORY[0x1E69CDDE8]);
      v52 = v82;
      v53 = sub_1BE053B24();
      v54 = v45;
      v55 = v47;
      v57 = v56;
      (*(v81 + 8))(v51, v52);
      (*(v46 + 8))(v55, v54);
      v58 = sub_1BD123690(v53, v57, &v93);

      *(v50 + 4) = v58;
      _os_log_impl(&dword_1BD026000, v48, v89, "NearbyPeerPayment: TransferMonitor: unexpected transfer type will not keep track of:%s", v50, 0xCu);
      v59 = v92;
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x1BFB45F20](v59, -1, -1);
      MEMORY[0x1BFB45F20](v50, -1, -1);
    }

    else
    {

      (*(v46 + 8))(v47, v45);
    }

    (*(v87 + 8))(v44, v88);
  }

  return 1;
}

uint64_t sub_1BD4A4848(uint64_t a1)
{
  v224 = sub_1BE04DEB4();
  v227 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224, v2);
  v228 = &v199 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v213 = &v199 - v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v210 = &v199 - v9;
  v207 = sub_1BE04DE64();
  v206 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207, v10);
  v208 = &v199 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v205 = &v199 - v14;
  v15 = sub_1BE04D214();
  v16 = *(v15 - 8);
  v225 = v15;
  v226 = v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v229 = &v199 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v216 = &v199 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v211 = &v199 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v202 = &v199 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A80);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v203 = &v199 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v209 = &v199 - v33;
  v215 = sub_1BE04AF64();
  v223 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215, v34);
  v212 = &v199 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v214 = &v199 - v38;
  v221 = sub_1BE04DD64();
  v219 = *(v221 - 1);
  MEMORY[0x1EEE9AC00](v221, v39);
  v218 = &v199 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v199 - v43;
  v45 = sub_1BE04DE04();
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v47);
  v49 = &v199 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1BE04E054();
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v52);
  v220 = &v199 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v199 - v56;
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = &v199 - v60;
  v62 = sub_1BE04E0B4();
  v63 = *(v62 - 8);
  v230 = v62;
  v231 = v63;
  MEMORY[0x1EEE9AC00](v62, v64);
  v201 = &v199 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66, v67);
  v200 = &v199 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v204 = &v199 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v232 = &v199 - v74;
  sub_1BE04DE54();
  sub_1BE04DE34();
  sub_1BE04DDF4();
  (*(v46 + 8))(v49, v45);
  v75 = v50;
  (*(v51 + 104))(v57, *MEMORY[0x1E69CDDB0], v50);
  LOBYTE(v45) = MEMORY[0x1BFB3B0D0](v61, v57);
  v76 = *(v51 + 8);
  v233 = v51 + 8;
  v76(v57, v75);
  if ((v45 & 1) == 0)
  {
    sub_1BE04D094();
    v100 = v220;
    (*(v51 + 16))(v220, v61, v75);
    v101 = v227;
    v102 = v224;
    (*(v227 + 16))(v228, a1, v224);
    v103 = sub_1BE04D204();
    v104 = sub_1BE052C34();
    v105 = v61;
    v106 = v101;
    if (os_log_type_enabled(v103, v104))
    {
      v107 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v235 = v223;
      *v107 = 136315394;
      sub_1BD4B52D8(&unk_1EBD478D0, MEMORY[0x1E69CDDC0]);
      v222 = v105;
      v108 = sub_1BE053B24();
      v109 = v100;
      v110 = v102;
      v112 = v111;
      v76(v109, v75);
      v113 = sub_1BD123690(v108, v112, &v235);

      *(v107 + 4) = v113;
      *(v107 + 12) = 2080;
      v114 = v228;
      v115 = sub_1BD4A3AE8();
      v117 = v116;
      (*(v106 + 8))(v114, v110);
      v118 = sub_1BD123690(v115, v117, &v235);

      *(v107 + 14) = v118;
      _os_log_impl(&dword_1BD026000, v103, v104, "NearbyPeerPayment: TransferMonitor: unexpected transfer type %s; do not keep track of: %s", v107, 0x16u);
      v119 = v223;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v119, -1, -1);
      MEMORY[0x1BFB45F20](v107, -1, -1);

      (*(v226 + 8))(v229, v225);
      v76(v222, v75);
    }

    else
    {

      (*(v101 + 8))(v228, v102);
      v76(v100, v75);
      (*(v226 + 8))(v229, v225);
      v76(v105, v75);
    }

LABEL_21:
    (*(v231 + 8))(v232, v230);
    return 0;
  }

  v77 = v227;
  v229 = v75;
  sub_1BE04DE94();
  v78 = v219;
  v79 = v218;
  v80 = v221;
  (*(v219 + 13))(v218, *MEMORY[0x1E69CDC08], v221);
  v81 = MEMORY[0x1BFB3ADE0](v44, v79);
  v82 = v78[1];
  v82(v79, v80);
  v82(v44, v80);
  v83 = a1;
  v222 = v61;
  if ((v81 & 1) == 0)
  {
    v120 = v216;
    sub_1BE04D094();
    v121 = v77;
    v122 = v213;
    v123 = v224;
    (*(v77 + 16))(v213, v83, v224);
    v124 = sub_1BE04D204();
    v125 = sub_1BE052C34();
    v126 = os_log_type_enabled(v124, v125);
    v127 = v231;
    if (v126)
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v235 = v129;
      *v128 = 136315138;
      v130 = sub_1BD4A3AE8();
      v131 = v121;
      v133 = v132;
      (*(v131 + 8))(v122, v123);
      v134 = sub_1BD123690(v130, v133, &v235);

      *(v128 + 4) = v134;
      _os_log_impl(&dword_1BD026000, v124, v125, "NearbyPeerPayment: TransferMonitor: unexpected presenter type; do not keep track of: %s", v128, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v129);
      MEMORY[0x1BFB45F20](v129, -1, -1);
      MEMORY[0x1BFB45F20](v128, -1, -1);

      (*(v226 + 8))(v216, v225);
    }

    else
    {

      (*(v77 + 8))(v122, v123);
      (*(v226 + 8))(v120, v225);
    }

    v76(v222, v229);
    (*(v127 + 8))(v232, v230);
    return 0;
  }

  v228 = v76;
  v84 = v214;
  sub_1BE04DEA4();
  v85 = v223;
  v86 = *(v223 + 16);
  v87 = v217;
  v220 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_creationDate;
  v88 = v212;
  v89 = v215;
  v221 = v86;
  (v86)(v212, v217 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_creationDate, v215);
  v90 = sub_1BE04AE74();
  v91 = *(v85 + 8);
  v91(v88, v89);
  v223 = v85 + 8;
  v91(v84, v89);
  if ((v90 & 1) == 0)
  {
    v135 = v77;
    v136 = v211;
    sub_1BE04D094();
    v137 = v210;
    v138 = v83;
    v139 = v224;
    (*(v135 + 16))(v210, v138, v224);
    sub_1BE048964();
    v140 = sub_1BE04D204();
    v141 = v217;
    v142 = v140;
    v143 = sub_1BE052C34();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v219 = v91;
      v145 = v144;
      v146 = swift_slowAlloc();
      v235 = v146;
      *v145 = 136315394;
      v147 = v141;
      v148 = sub_1BD4A3AE8();
      v149 = v135;
      v151 = v150;
      (*(v149 + 8))(v137, v139);
      v152 = sub_1BD123690(v148, v151, &v235);

      *(v145 + 4) = v152;
      *(v145 + 12) = 2080;
      v153 = v214;
      v154 = v215;
      (v221)(v214, &v220[v147], v215);
      sub_1BD4B52D8(&unk_1EBD38830, MEMORY[0x1E6969530]);
      v155 = sub_1BE053B24();
      v157 = v156;
      v219(v153, v154);
      v158 = sub_1BD123690(v155, v157, &v235);

      *(v145 + 14) = v158;
      _os_log_impl(&dword_1BD026000, v142, v143, "NearbyPeerPayment: TransferMonitor: Ignoring transfer: %s older that nearby interaction creation date: %s", v145, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v146, -1, -1);
      MEMORY[0x1BFB45F20](v145, -1, -1);

      (*(v226 + 8))(v211, v225);
    }

    else
    {

      (*(v135 + 8))(v137, v139);
      (*(v226 + 8))(v136, v225);
    }

    (v228)(v222, v229);
    goto LABEL_21;
  }

  v92 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_currentTransferID;
  swift_beginAccess();
  v93 = v209;
  sub_1BD0DE19C(v87 + v92, v209, &qword_1EBD40A80);
  v94 = v230;
  v95 = v231;
  v96 = (*(v231 + 48))(v93, 1, v230);
  v97 = v222;
  if (v96 == 1)
  {
    sub_1BD0DE53C(v93, &qword_1EBD40A80);
    v98 = v203;
    sub_1BE04DE54();
    (*(v95 + 56))(v98, 0, 1, v94);
    swift_beginAccess();
    sub_1BD2C7C4C(v98, v87 + v92, &qword_1EBD40A80);
    swift_endAccess();
    v99 = v232;
  }

  else
  {
    v159 = v204;
    (*(v95 + 32))(v204, v93, v94);
    v99 = v232;
    if ((_s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
    {
      v173 = v202;
      sub_1BE04D094();
      v174 = *(v95 + 16);
      v175 = v200;
      v174(v200, v159, v94);
      v176 = v201;
      v174(v201, v99, v94);
      v177 = sub_1BE04D204();
      v178 = sub_1BE052C34();
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        v227 = swift_slowAlloc();
        v234 = v227;
        *v179 = 136315394;
        sub_1BD4B52D8(&unk_1EBD47730, MEMORY[0x1E69CDDE8]);
        LODWORD(v224) = v178;
        v180 = v175;
        v181 = v176;
        v182 = sub_1BE053B24();
        v183 = v94;
        v185 = v184;
        v186 = *(v95 + 8);
        v186(v180, v183);
        v187 = sub_1BD123690(v182, v185, &v234);

        *(v179 + 4) = v187;
        *(v179 + 12) = 2080;
        v188 = sub_1BE053B24();
        v190 = v189;
        v186(v181, v183);
        v191 = sub_1BD123690(v188, v190, &v234);

        *(v179 + 14) = v191;
        _os_log_impl(&dword_1BD026000, v177, v224, "NearbyPeerPayment: TransferMonitor: currently monitored transfer ID %s does not match transfer update ID: %s", v179, 0x16u);
        v192 = v227;
        swift_arrayDestroy();
        MEMORY[0x1BFB45F20](v192, -1, -1);
        MEMORY[0x1BFB45F20](v179, -1, -1);

        (*(v226 + 8))(v202, v225);
        v186(v204, v183);
        (v228)(v222, v229);
        v186(v232, v183);
      }

      else
      {

        v196 = *(v95 + 8);
        v196(v176, v94);
        v196(v175, v94);
        (*(v226 + 8))(v173, v225);
        v196(v159, v94);
        (v228)(v97, v229);
        v196(v99, v94);
      }

      return 0;
    }

    (*(v95 + 8))(v159, v94);
  }

  v160 = v205;
  sub_1BE04DE74();
  (v228)(v97, v229);
  (*(v95 + 8))(v99, v94);
  v161 = v206;
  v162 = v208;
  v163 = v160;
  v164 = v207;
  (*(v206 + 32))(v208, v163, v207);
  v165 = (*(v161 + 88))(v162, v164);
  if (v165 == *MEMORY[0x1E69CDCB0])
  {
    (*(v161 + 96))(v162, v164);
    v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43AE0);
LABEL_31:
    (*(*(v166 - 8) + 8))(v162, v166);
    return 1;
  }

  if (v165 == *MEMORY[0x1E69CDCA0])
  {
    (*(v161 + 96))(v162, v164);
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD478C0);
    v169 = *(v168 + 48);

    v170 = *(v168 + 80);
    v171 = sub_1BE04E084();
    (*(*(v171 - 8) + 8))(&v162[v170], v171);
    v172 = sub_1BE04E0C4();
    (*(*(v172 - 8) + 8))(&v162[v169], v172);
LABEL_30:
    v166 = sub_1BE04DE14();
    goto LABEL_31;
  }

  if (v165 == *MEMORY[0x1E69CDCB8])
  {
    (*(v161 + 96))(v162, v164);
    v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD478A8);

    v194 = *(v193 + 80);
    v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43AE0);
    (*(*(v195 - 8) + 8))(&v162[v194], v195);
    goto LABEL_30;
  }

  if (v165 == *MEMORY[0x1E69CDCA8])
  {
    (*(v161 + 96))(v162, v164);
    v197 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47888) + 48);
    v198 = sub_1BE04DE24();
    (*(*(v198 - 8) + 8))(&v162[v197], v198);
    v166 = sub_1BE04DE84();
    goto LABEL_31;
  }

  (*(v161 + 8))(v162, v164);
  return 0;
}

uint64_t sub_1BD4A5F08(void (*a1)(char *, uint64_t))
{
  v426 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399A8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v373 = &v368 - v3;
  v372 = sub_1BE04B884();
  v382 = *(v372 - 8);
  MEMORY[0x1EEE9AC00](v372, v4);
  v370 = &v368 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v392 = sub_1BE04DC04();
  v397 = *(v392 - 8);
  MEMORY[0x1EEE9AC00](v392, v6);
  v391 = &v368 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v381 = &v368 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v380 = &v368 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v379 = &v368 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v389 = &v368 - v19;
  v396 = sub_1BE04DE24();
  v402 = *(v396 - 8);
  MEMORY[0x1EEE9AC00](v396, v20);
  v390 = &v368 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v406 = &v368 - v24;
  v409 = sub_1BE04C4F4();
  v408 = *(v409 - 1);
  MEMORY[0x1EEE9AC00](v409, v25);
  v371 = &v368 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v388 = sub_1BE04B674();
  v378 = *(v388 - 8);
  MEMORY[0x1EEE9AC00](v388, v27);
  v377 = &v368 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v405 = sub_1BE04AA64();
  v404 = *(v405 - 8);
  MEMORY[0x1EEE9AC00](v405, v29);
  v395 = &v368 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v403 = &v368 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47880);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v376 = &v368 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v375 = &v368 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v414 = &v368 - v42;
  v422 = sub_1BE04D214();
  v423 = *(v422 - 8);
  MEMORY[0x1EEE9AC00](v422, v43);
  v387 = &v368 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v410 = &v368 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v419 = &v368 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v386 = &v368 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v384 = &v368 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v407 = &v368 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v393 = &v368 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v383 = &v368 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v66 - 8, v67);
  v399 = &v368 - v68;
  v401 = sub_1BE04AF64();
  v400 = *(v401 - 8);
  MEMORY[0x1EEE9AC00](v401, v69);
  v374 = &v368 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71, v72);
  v385 = &v368 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v394 = &v368 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F690);
  MEMORY[0x1EEE9AC00](v77 - 8, v78);
  v398 = &v368 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0);
  MEMORY[0x1EEE9AC00](v80 - 8, v81);
  v411 = &v368 - v82;
  v415 = sub_1BE04C4C4();
  v413 = *(v415 - 8);
  MEMORY[0x1EEE9AC00](v415, v83);
  v369 = &v368 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85, v86);
  v416 = &v368 - v87;
  v418 = sub_1BE04DE04();
  v417 = *(v418 - 8);
  MEMORY[0x1EEE9AC00](v418, v88);
  v90 = &v368 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43AE0);
  isa = v425[-1].isa;
  MEMORY[0x1EEE9AC00](v425, v91);
  v412 = &v368 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v93, v94);
  v420 = &v368 - v95;
  v428 = sub_1BE04DE64();
  v429 = *(v428 - 8);
  MEMORY[0x1EEE9AC00](v428, v96);
  v430 = &v368 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v98, v99);
  v431 = &v368 - v100;
  v101 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v101, v102);
  v104 = &v368 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v105, v106);
  v424 = &v368 - v107;
  MEMORY[0x1EEE9AC00](v108, v109);
  v111 = &v368 - v110;
  MEMORY[0x1EEE9AC00](v112, v113);
  v427 = (&v368 - v114);
  MEMORY[0x1EEE9AC00](v115, v116);
  v432 = (&v368 - v117);
  MEMORY[0x1EEE9AC00](v118, v119);
  v121 = &v368 - v120;
  MEMORY[0x1EEE9AC00](v122, v123);
  v125 = &v368 - v124;
  v126 = sub_1BE051FD4();
  v127 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v128);
  v130 = (&v368 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  *v130 = sub_1BE052D54();
  (*(v127 + 104))(v130, *MEMORY[0x1E69E8020], v126);
  v131 = sub_1BE052004();
  result = (*(v127 + 8))(v130, v126);
  if (v131)
  {
    v133 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiveState;
    v134 = v433;
    swift_beginAccess();
    sub_1BD26681C(v134 + v133, v125);
    sub_1BD26681C(v125, v121);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1BD32E45C(v121);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680);

        sub_1BD0DE53C(v121, &unk_1EBD3F690);
      }

LABEL_9:
      v419 = v133;
      sub_1BD26681C(v125, v432);
      v137 = v431;
      sub_1BE04DE74();
      v138 = v429;
      v139 = v430;
      v140 = v137;
      v141 = v428;
      (*(v429 + 16))(v430, v140, v428);
      v142 = (*(v138 + 88))(v139, v141);
      if (v142 == *MEMORY[0x1E69CDCB0])
      {
        v414 = v125;
        (*(v138 + 96))(v139, v141);
        v143 = isa;
        v144 = v420;
        v145 = v138;
        v146 = v425;
        (*(isa + 4))(v420, v139, v425);
        sub_1BE04DE34();
        v147 = sub_1BE04DDD4();
        v149 = v148;
        (*(v417 + 8))(v90, v418);
        if (v149 >> 60 == 15)
        {
          (*(v143 + 1))(v144, v146);
          (*(v145 + 8))(v431, v141);
          v125 = v414;
          v150 = v424;
          v151 = v419;
          v152 = v432;
          v153 = v433;
LABEL_74:
          v347 = v427;
          sub_1BD26681C(v152, v427);
          sub_1BD26681C(&v151[v153], v150);
          swift_beginAccess();
          sub_1BD32E4B8(v347, &v151[v153]);
          swift_endAccess();
          sub_1BD4A1550(v150);
          sub_1BD32E45C(v150);
          sub_1BD32E45C(v347);
          sub_1BD32E45C(v152);
          return sub_1BD32E45C(v125);
        }

        v418 = v101;
        sub_1BE04A1B4();
        swift_allocObject();
        sub_1BE04A1A4();
        sub_1BD4B52D8(&qword_1EBD478C8, MEMORY[0x1E69B82C0]);
        v169 = v416;
        v170 = v415;
        sub_1BE04A194();
        v171 = v149;
        v172 = v433;

        LODWORD(v412) = [objc_opt_self() useMock];
        v231 = v413;
        v232 = v413 + 16;
        v233 = v411;
        v409 = *(v413 + 16);
        v409(v411, v169, v170);
        (*(v231 + 56))(v233, 0, 1, v170);
        v234 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_senderMetadata;
        swift_beginAccess();
        v410 = v234;
        sub_1BD2C7C4C(v233, v172 + v234, &unk_1EBD476F0);
        swift_endAccess();
        v235 = objc_allocWithZone(sub_1BE04C2C4());
        sub_1BD041A38(v147, v171);
        v417 = v147;
        v430 = v171;
        v236 = sub_1BE04C2A4();
        v237 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiverCoordinator;
        swift_beginAccess();
        v238 = *(v172 + v237);
        *(v172 + v237) = v236;

        v239 = v143;
        v240 = *(v143 + 2);
        v241 = v398;
        v242 = v420;
        v243 = v425;
        v411 = v240;
        (v240)(v398, v420, v425);
        v244 = v172;
        v245 = *(v239 + 7);
        v245(v241, 0, 1, v243);
        v246 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_permissionRequest;
        swift_beginAccess();
        sub_1BD2C7C4C(v241, v244 + v246, &unk_1EBD3F690);
        swift_endAccess();
        v247 = v399;
        sub_1BE04C434();
        v248 = v247;
        v249 = v400;
        v250 = v247;
        v251 = v401;
        v252 = (*(v400 + 48))(v250, 1, v401);
        if (v252 == 1)
        {
          sub_1BD0DE53C(v248, &unk_1EBD39970);
        }

        else
        {
          v408 = v232;
          v273 = v245;
          v274 = v394;
          (*(v249 + 32))(v394, v248, v251);
          v275 = v385;
          sub_1BE04AEF4();
          v276 = sub_1BE04AE84();
          v277 = *(v249 + 8);
          v277(v275, v251);
          if (v276)
          {
            v278 = v383;
            sub_1BE04D094();
            v279 = v374;
            (*(v249 + 16))(v374, v274, v251);
            v280 = sub_1BE04D204();
            v281 = sub_1BE052C34();
            if (os_log_type_enabled(v280, v281))
            {
              v282 = swift_slowAlloc();
              v283 = swift_slowAlloc();
              v437[0] = v283;
              *v282 = 136315138;
              sub_1BD4B52D8(&unk_1EBD38830, MEMORY[0x1E6969530]);
              v284 = sub_1BE053B24();
              v285 = v279;
              v287 = v286;
              v288 = v277;
              v277(v285, v251);
              v289 = sub_1BD123690(v284, v287, v437);

              *(v282 + 4) = v289;
              _os_log_impl(&dword_1BD026000, v280, v281, "NearbyPeerPayment: error, quote expired with expiry %s", v282, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v283);
              MEMORY[0x1BFB45F20](v283, -1, -1);
              MEMORY[0x1BFB45F20](v282, -1, -1);

              (*(v423 + 8))(v383, v422);
            }

            else
            {

              v288 = v277;
              v277(v279, v251);
              (*(v423 + 8))(v278, v422);
            }

            v348 = v251;
            v152 = v432;
            v349 = v429;
            v350 = v425;
            v351 = sub_1BE04B7C4();
            v352 = v427;
            v427[3] = v351;
            v352[4] = sub_1BD4B52D8(&qword_1EBD399D8, MEMORY[0x1E69B7EE0]);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v352);
            (*(*(v351 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69B7EA0], v351);
            sub_1BD32E45C(v152);
            swift_storeEnumTagMultiPayload();
            sub_1BD266F10(v352, v152);
            v153 = v433;
            sub_1BD4ABFA8(v426);
            sub_1BD030220(v417, v430);
            v288(v394, v348);
            (*(v413 + 8))(v416, v415);
            (*(isa + 1))(v420, v350);
            (*(v349 + 8))(v431, v428);
LABEL_22:
            v125 = v414;
LABEL_23:
            v150 = v424;
LABEL_73:
            v151 = v419;
            goto LABEL_74;
          }

          v277(v274, v251);
          v242 = v420;
          v245 = v273;
          v231 = v413;
        }

        if (sub_1BE04C404())
        {
          v308 = v433;
          if (sub_1BD4DA364() & 1) != 0 || (v309 = *(v308 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_peerPaymentAccount)) == 0 || (v310 = [v309 stage] != 1, ((v310 | v412)))
          {
            v311 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_askResponseProcessed;
            if ((*(v308 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_askResponseProcessed) & 1) != 0 || (v312 = NearbyPeerPaymentReceiverState.nonce.getter(), !v313))
            {
              sub_1BD030220(v417, v430);
              (*(v231 + 8))(v416, v415);
              (*(isa + 1))(v242, v425);
              (*(v429 + 8))(v431, v428);
              v152 = v432;
              v153 = v433;
            }

            else
            {
              v314 = v313;
              v426 = v311;
              v152 = v432;
              v423 = v312;
              sub_1BD32E45C(v432);
              v315 = (v152 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680) + 48));
              v316 = v425;
              (v411)(v152, v242, v425);
              v245(v152, 0, 1, v316);
              *v315 = v423;
              v315[1] = v314;
              swift_storeEnumTagMultiPayload();
              v153 = v433;
              v317 = *(v433 + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_peerPaymentAccount);
              if (v317)
              {
                v318 = v410;
                v319 = v415;
                v320 = (*(v231 + 48))(&v410[v433], 1, v415);
                v321 = isa;
                if (v320)
                {
                  v322 = v317;
                  v323 = 0;
                }

                else
                {
                  v363 = v369;
                  v409(v369, &v318[v153], v319);
                  v364 = v317;
                  sub_1BE04C474();
                  v365 = v363;
                  v242 = v420;
                  (*(v231 + 8))(v365, v319);
                  v152 = v432;
                  v323 = sub_1BE053344();
                }

                v366 = [v317 willTriggerIdentityVerificationForTransactionAmount_];

                sub_1BD030220(v417, v430);
                (*(v231 + 8))(v416, v319);
                (*(v321 + 1))(v242, v425);
                (*(v429 + 8))(v431, v428);
                if (v366)
                {
                  v367 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_requiresIDVToCompleteTransfer;
                  swift_beginAccess();
                  *(v153 + v367) = 1;
                }
              }

              else
              {
                sub_1BD030220(v417, v430);
                (*(v231 + 8))(v416, v415);
                (*(isa + 1))(v242, v425);
                (*(v429 + 8))(v431, v428);
              }

              *(v426 + v153) = 1;
            }
          }

          else
          {
            v360 = sub_1BE04B7C4();
            v361 = v427;
            v427[3] = v360;
            v361[4] = sub_1BD4B52D8(&qword_1EBD399D8, MEMORY[0x1E69B7EE0]);
            v362 = __swift_allocate_boxed_opaque_existential_1(v361);
            (*(*(v360 - 8) + 104))(v362, *MEMORY[0x1E69B7EC0], v360);
            v152 = v432;
            sub_1BD32E45C(v432);
            swift_storeEnumTagMultiPayload();
            sub_1BD266F10(v361, v152);
            sub_1BD4ABFA8(v426);
            sub_1BD030220(v417, v430);
            (*(v231 + 8))(v416, v415);
            (*(isa + 1))(v242, v425);
            (*(v429 + 8))(v431, v428);
            v153 = v308;
          }
        }

        else
        {
          sub_1BE04D094();
          v324 = sub_1BE04D204();
          v325 = sub_1BE052C34();
          v326 = os_log_type_enabled(v324, v325);
          v327 = isa;
          v328 = v426;
          if (v326)
          {
            v329 = swift_slowAlloc();
            *v329 = 0;
            _os_log_impl(&dword_1BD026000, v324, v325, "NearbyPeerPayment: error, sender restriction", v329, 2u);
            MEMORY[0x1BFB45F20](v329, -1, -1);
          }

          (*(v423 + 8))(v393, v422);
          v330 = sub_1BE04B7C4();
          v331 = v427;
          v427[3] = v330;
          v331[4] = sub_1BD4B52D8(&qword_1EBD399D8, MEMORY[0x1E69B7EE0]);
          v332 = __swift_allocate_boxed_opaque_existential_1(v331);
          (*(*(v330 - 8) + 104))(v332, *MEMORY[0x1E69B7EB0], v330);
          v152 = v432;
          sub_1BD32E45C(v432);
          swift_storeEnumTagMultiPayload();
          sub_1BD266F10(v331, v152);
          v333 = v328;
          v153 = v433;
          sub_1BD4ABFA8(v333);
          sub_1BD030220(v417, v430);
          (*(v231 + 8))(v416, v415);
          (*(v327 + 1))(v242, v425);
          (*(v429 + 8))(v431, v428);
        }

        goto LABEL_22;
      }

      v154 = v142 == *MEMORY[0x1E69CDCA0];
      v418 = v101;
      v153 = v433;
      if (v154)
      {
        (*(v138 + 96))(v139, v141);
        v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD478C0);

        v156 = NearbyPeerPaymentReceiverState.nonce.getter();
        v152 = v432;
        if (v157)
        {
          v158 = v156;
          v159 = v138;
          v160 = v157;
          (*(v159 + 8))(v431, v141);
          sub_1BD32E45C(v152);
          *v152 = v158;
          v152[1] = v160;
          swift_storeEnumTagMultiPayload();
          v150 = v424;
        }

        else
        {
          v221 = v407;
          sub_1BE04D094();
          sub_1BD26681C(v125, v111);
          v222 = sub_1BE04D204();
          v223 = sub_1BE052C34();
          if (os_log_type_enabled(v222, v223))
          {
            v224 = swift_slowAlloc();
            v225 = swift_slowAlloc();
            v437[0] = v225;
            *v224 = 136315138;
            v226 = NearbyPeerPaymentReceiverState.description.getter();
            v228 = v227;
            sub_1BD32E45C(v111);
            v229 = sub_1BD123690(v226, v228, v437);

            *(v224 + 4) = v229;
            _os_log_impl(&dword_1BD026000, v222, v223, "NearbyPeerPayment: TransferMonitor: nonce not available from state %s", v224, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v225);
            v141 = v428;
            MEMORY[0x1BFB45F20](v225, -1, -1);
            v230 = v224;
            v152 = v432;
            MEMORY[0x1BFB45F20](v230, -1, -1);

            (*(v423 + 8))(v407, v422);
          }

          else
          {

            sub_1BD32E45C(v111);
            (*(v423 + 8))(v221, v422);
          }

          v153 = v433;
          v150 = v424;
          v264 = sub_1BE04B7C4();
          v265 = v427;
          v427[3] = v264;
          v265[4] = sub_1BD4B52D8(&qword_1EBD399D8, MEMORY[0x1E69B7EE0]);
          v266 = __swift_allocate_boxed_opaque_existential_1(v265);
          (*(*(v264 - 8) + 104))(v266, *MEMORY[0x1E69B7EB0], v264);
          (*(v429 + 8))(v431, v141);
          sub_1BD32E45C(v152);
          swift_storeEnumTagMultiPayload();
          sub_1BD266F10(v265, v152);
        }

        v267 = *(v155 + 48);
        v268 = *(v155 + 80);
        v269 = sub_1BE04E084();
        v270 = v430;
        (*(*(v269 - 8) + 8))(v430 + v268, v269);
        v271 = sub_1BE04E0C4();
        (*(*(v271 - 8) + 8))(v270 + v267, v271);
        v272 = sub_1BE04DE14();
        (*(*(v272 - 8) + 8))(v270, v272);
        goto LABEL_73;
      }

      v152 = v432;
      if (v142 == *MEMORY[0x1E69CDCB8])
      {
        (*(v138 + 96))(v139, v141);
        v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD478A8);

        v174 = *(v430 + *(v173 + 64));
        v175 = v412;
        (*(isa + 4))(v412, v430 + *(v173 + 80), v425);
        v176 = v414;
        (*(v408 + 56))(v414, 1, 1, v409);
        v150 = v424;
        if (*(v174 + 16))
        {
          v177 = v404;
          v178 = v395;
          v179 = v405;
          (*(v404 + 16))(v395, v174 + ((*(v177 + 80) + 32) & ~*(v177 + 80)), v405);

          (*(v177 + 32))(v403, v178, v179);
          v180 = sub_1BE04AA84();
          v294 = v293;
          v295 = v378;
          v296 = v377;
          v297 = v180;
          (*(v378 + 104))(v377, *MEMORY[0x1E69B7E60], v388);
          v298 = MEMORY[0x1E69B82D0];
          sub_1BD4B52D8(&qword_1EBD478B0, MEMORY[0x1E69B82D0]);
          sub_1BD4B52D8(&qword_1EBD478B8, v298);
          v299 = v375;
          v423 = v297;
          v426 = v294;
          v300 = v409;
          sub_1BE04B664();
          (*(v295 + 8))(v296, v388);
          v301 = v414;
          sub_1BD0DE53C(v414, &qword_1EBD47880);
          sub_1BD0DE204(v299, v301, &qword_1EBD47880);
          v302 = v376;
          sub_1BD0DE19C(v301, v376, &qword_1EBD47880);
          v303 = v408;
          v304 = (*(v408 + 48))(v302, 1, v300);
          if (v304 == 1)
          {
            sub_1BD0DE53C(v302, &qword_1EBD47880);
            v305 = sub_1BE04B7C4();
            v306 = v427;
            v427[3] = v305;
            v306[4] = sub_1BD4B52D8(&qword_1EBD399D8, MEMORY[0x1E69B7EE0]);
            v307 = __swift_allocate_boxed_opaque_existential_1(v306);
            (*(*(v305 - 8) + 104))(v307, *MEMORY[0x1E69B7EB0], v305);
            sub_1BD1245AC(v423, v426);
            (*(v404 + 8))(v403, v405);
            v152 = v432;
            sub_1BD32E45C(v432);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v345 = v371;
            (*(v303 + 32))(v371, v302, v300);
            v306 = v427;
            sub_1BD4AD164(v345, v427);
            sub_1BD1245AC(v423, v426);
            (*(v303 + 8))(v345, v300);
            (*(v404 + 8))(v403, v405);
            v152 = v432;
            sub_1BD32E45C(v432);
          }

          sub_1BD266F10(v306, v152);
          v138 = v429;
          v176 = v414;
          v263 = v412;
        }

        else
        {
          v254 = v175;

          v255 = v384;
          sub_1BE04D094();
          v256 = sub_1BE04D204();
          v257 = sub_1BE052C34();
          if (os_log_type_enabled(v256, v257))
          {
            v258 = swift_slowAlloc();
            *v258 = 0;
            _os_log_impl(&dword_1BD026000, v256, v257, "NearbyPeerPayment: TransferMonitor: no post transaction metadata URL.", v258, 2u);
            v259 = v258;
            v138 = v429;
            MEMORY[0x1BFB45F20](v259, -1, -1);
          }

          (*(v423 + 8))(v255, v422);
          v260 = sub_1BE04B7C4();
          v261 = v427;
          v427[3] = v260;
          v261[4] = sub_1BD4B52D8(&qword_1EBD399D8, MEMORY[0x1E69B7EE0]);
          v262 = __swift_allocate_boxed_opaque_existential_1(v261);
          (*(*(v260 - 8) + 104))(v262, *MEMORY[0x1E69B7EB0], v260);
          sub_1BD32E45C(v152);
          swift_storeEnumTagMultiPayload();
          sub_1BD266F10(v261, v152);
          v263 = v254;
        }

        sub_1BD4AC350();
        sub_1BD0DE53C(v176, &qword_1EBD47880);
        (*(isa + 1))(v263, v425);
        (*(v138 + 8))(v431, v428);
        v346 = sub_1BE04DE14();
        (*(*(v346 - 8) + 8))(v430, v346);
        goto LABEL_73;
      }

      if (v142 != *MEMORY[0x1E69CDCA8])
      {
        v253 = *(v138 + 8);
        v253(v431, v141);
        v253(v139, v141);
        goto LABEL_23;
      }

      v414 = v125;
      (*(v138 + 96))(v139, v141);
      v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47888);
      v182 = v402;
      v183 = v139 + *(v181 + 48);
      v184 = v406;
      v185 = v396;
      (*(v402 + 32))(v406, v183, v396);
      v186 = sub_1BE04B7C4();
      v437[3] = v186;
      v437[4] = sub_1BD4B52D8(&qword_1EBD399D8, MEMORY[0x1E69B7EE0]);
      v187 = __swift_allocate_boxed_opaque_existential_1(v437);
      (*(*(v186 - 8) + 104))(v187, *MEMORY[0x1E69B7EB0], v186);
      v188 = *(v182 + 16);
      v189 = v390;
      v188(v390, v184, v185);
      v190 = (*(v182 + 88))(v189, v185);
      if (v190 != *MEMORY[0x1E69CDC60])
      {
        if (v190 == *MEMORY[0x1E69CDC70])
        {
          v290 = sub_1BE04B784();
          v435 = v290;
          v436 = sub_1BD4B52D8(&qword_1EBD47890, MEMORY[0x1E69B7E88]);
          v291 = __swift_allocate_boxed_opaque_existential_1(&v434);
          v292 = v406;
          v188(v291, v406, v185);
          (*(*(v290 - 8) + 104))(v291, *MEMORY[0x1E69B7E78], v290);
          (*(v182 + 8))(v292, v185);
          (*(v429 + 8))(v431, v428);
          sub_1BD32E45C(v152);
          __swift_destroy_boxed_opaque_existential_0(v437);
          sub_1BD043990(&v434, v437);
        }

        else
        {
          v341 = *(v182 + 8);
          v341(v406, v185);
          (*(v429 + 8))(v431, v428);
          sub_1BD32E45C(v152);
          v341(v189, v185);
        }

        v150 = v424;
        v151 = v419;
        v342 = v415;
        v125 = v414;
        goto LABEL_81;
      }

      v420 = v188;
      isa = (v182 + 16);
      (*(v182 + 96))(v189, v185);
      v191 = v397;
      v192 = v389;
      v193 = v392;
      (*(v397 + 32))(v389, v189, v392);
      v194 = v386;
      sub_1BE04D094();
      v195 = *(v191 + 16);
      v196 = v379;
      v195(v379, v192, v193);
      v197 = v380;
      v195(v380, v192, v193);
      v198 = v381;
      v195(v381, v192, v193);
      v195(v391, v192, v193);
      v199 = sub_1BE04D204();
      LODWORD(v417) = sub_1BE052C34();
      v425 = v199;
      if (os_log_type_enabled(v199, v417))
      {
        v200 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        v416 = swift_slowAlloc();
        *&v434 = v416;
        *v200 = 138413058;
        sub_1BD4B52D8(&qword_1EBD478A0, MEMORY[0x1E69CDB60]);
        swift_allocError();
        v195(v202, v196, v193);
        v203 = _swift_stdlib_bridgeErrorToNSError();
        v204 = *(v397 + 8);
        v204(v196, v193);
        *(v200 + 4) = v203;
        *v201 = v203;
        v205 = v201;
        *(v200 + 12) = 2080;
        v206 = sub_1BE04DBE4();
        v208 = v207;
        v204(v197, v193);
        v209 = sub_1BD123690(v206, v208, &v434);

        *(v200 + 14) = v209;
        *(v200 + 22) = 2048;
        v210 = sub_1BE04DBF4();
        v204(v198, v193);
        *(v200 + 24) = v210;
        *(v200 + 32) = 2080;
        v211 = v391;
        sub_1BE04DBD4();
        v212 = sub_1BE052254();
        v214 = v213;

        v426 = v204;
        v204(v211, v193);
        v153 = v433;
        v215 = sub_1BD123690(v212, v214, &v434);
        v185 = v396;

        *(v200 + 34) = v215;
        v216 = v425;
        _os_log_impl(&dword_1BD026000, v425, v417, "NearbyPeerPayment: TransferMonitor: transferFailed error: %@ error: %s error: %ld error: %s", v200, 0x2Au);
        sub_1BD0DE53C(v205, &unk_1EBD3E590);
        MEMORY[0x1BFB45F20](v205, -1, -1);
        v217 = v416;
        swift_arrayDestroy();
        MEMORY[0x1BFB45F20](v217, -1, -1);
        v218 = v200;
        v219 = v429;
        MEMORY[0x1BFB45F20](v218, -1, -1);

        (*(v423 + 8))(v386, v422);
        v152 = v432;
        v220 = v382;
      }

      else
      {
        v334 = *(v397 + 8);
        v334(v198, v193);

        v334(v391, v193);
        v334(v197, v193);
        v426 = v334;
        v334(v196, v193);
        (*(v423 + 8))(v194, v422);
        v152 = v432;
        v220 = v382;
        v219 = v429;
      }

      v335 = v389;
      sub_1BE04DBE4();
      v336 = sub_1BE04B774();

      v337 = v402;
      if (v336)
      {
        v338 = sub_1BE04B784();
        v435 = v338;
        v436 = sub_1BD4B52D8(&qword_1EBD47890, MEMORY[0x1E69B7E88]);
        v339 = __swift_allocate_boxed_opaque_existential_1(&v434);
        v340 = v406;
        (v420)(v339, v406, v185);
        (*(*(v338 - 8) + 104))(v339, *MEMORY[0x1E69B7E78], v338);
        v426(v335, v392);
        (*(v337 + 8))(v340, v185);
      }

      else
      {
        sub_1BE04DBF4();
        v343 = v373;
        sub_1BE04B874();
        v344 = v372;
        if ((*(v220 + 48))(v343, 1, v372) == 1)
        {
          v426(v335, v392);
          (*(v337 + 8))(v406, v185);
          (*(v219 + 8))(v431, v428);
          sub_1BD32E45C(v152);
          sub_1BD0DE53C(v343, &qword_1EBD399A8);
LABEL_80:
          v125 = v414;
          v150 = v424;
          v151 = v419;
          v342 = v415;
LABEL_81:
          sub_1BD0EE8CC(v437, v152);
          swift_storeEnumTagMultiPayload();
          v357 = v411;
          (*(v413 + 56))(v411, 1, 1, v342);
          v358 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_senderMetadata;
          swift_beginAccess();
          sub_1BD2C7C4C(v357, v153 + v358, &unk_1EBD476F0);
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_0(v437);
          v359 = sub_1BE04DE84();
          (*(*(v359 - 8) + 8))(v430, v359);
          goto LABEL_74;
        }

        v354 = *(v220 + 32);
        v355 = v370;
        v354(v370, v343, v344);
        v435 = v344;
        v436 = sub_1BD4B52D8(&qword_1EBD47898, MEMORY[0x1E69B7F50]);
        v356 = __swift_allocate_boxed_opaque_existential_1(&v434);
        v354(v356, v355, v344);
        v426(v335, v392);
        (*(v337 + 8))(v406, v185);
      }

      (*(v219 + 8))(v431, v428);
      sub_1BD32E45C(v152);
      __swift_destroy_boxed_opaque_existential_0(v437);
      sub_1BD043990(&v434, v437);
      goto LABEL_80;
    }

    if (EnumCaseMultiPayload == 3)
    {
      __swift_destroy_boxed_opaque_existential_0(v121);
      v136 = v419;
    }

    else
    {
      v136 = v419;
      if (EnumCaseMultiPayload == 4)
      {
        goto LABEL_9;
      }
    }

    sub_1BE04D094();
    sub_1BD26681C(v125, v104);
    v161 = sub_1BE04D204();
    v162 = sub_1BE052C34();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v437[0] = v164;
      *v163 = 136315138;
      v165 = NearbyPeerPaymentReceiverState.description.getter();
      v167 = v166;
      sub_1BD32E45C(v104);
      v168 = sub_1BD123690(v165, v167, v437);

      *(v163 + 4) = v168;
      _os_log_impl(&dword_1BD026000, v161, v162, "NearbyPeerPayment: TransferMonitor: already reached a terminal UI state %s", v163, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v164);
      MEMORY[0x1BFB45F20](v164, -1, -1);
      MEMORY[0x1BFB45F20](v163, -1, -1);
    }

    else
    {

      sub_1BD32E45C(v104);
    }

    (*(v423 + 8))(v136, v422);
    return sub_1BD32E45C(v125);
  }

  __break(1u);
  return result;
}