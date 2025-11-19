uint64_t GetContactView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC0, &unk_2669C7330);
  v1 = OUTLINED_FUNCTION_0(v40);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v37 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABED0, &qword_2669C7340);
  v12 = OUTLINED_FUNCTION_0(v39);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = sub_2669C5A14();
  v18 = OUTLINED_FUNCTION_2(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContactView = type metadata accessor for GetContactView();
  v26 = OUTLINED_FUNCTION_0(ContactView);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v37 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26699A374();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *(v20 + 32);
    v38 = v17;
    v31(v24, v30, v17);
    sub_2669C59F4();
    v32 = sub_2669C5964();
    (*(v7 + 8))(v11, v4);
    *v16 = sub_2669C5F94();
    *(v16 + 1) = 0;
    v16[16] = 1;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEF0, &qword_2669C7350);
    sub_2669982BC(v32, v24, &v16[*(v33 + 44)]);
    v34 = sub_2669C6084();

    v35 = &v16[*(v39 + 36)];
    *v35 = v34;
    *(v35 + 8) = xmmword_2669C7320;
    *(v35 + 24) = xmmword_2669C7320;
    v35[40] = 0;
    sub_26699A318();
    swift_storeEnumTagMultiPayload();
    sub_2669981BC();
    sub_2669C5FB4();
    sub_26699A428(v16, &qword_2800ABED0, &qword_2669C7340);
    return (*(v20 + 8))(v24, v38);
  }

  else
  {
    sub_26699A3D0(v30, type metadata accessor for GetContactView);
    swift_storeEnumTagMultiPayload();
    sub_2669981BC();
    return sub_2669C5FB4();
  }
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

uint64_t type metadata accessor for GetContactView()
{
  result = qword_2800ABEF8;
  if (!qword_2800ABEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2669981BC()
{
  result = qword_2800ABED8;
  if (!qword_2800ABED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ABED0, &qword_2669C7340);
    sub_26699A174(&qword_2800ABEE0, &qword_2800ABEE8, &qword_2669C7348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ABED8);
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

uint64_t sub_2669982BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v171 = a2;
  v169 = a3;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF80, &qword_2669C76E8);
  v4 = *(*(v166 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v166);
  v165 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v164 = &v138 - v7;
  v162 = sub_2669C5A14();
  v161 = *(v162 - 8);
  v8 = *(v161 + 64);
  MEMORY[0x28223BE20](v162);
  v160 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  v158 = *(v159 - 8);
  v10 = *(v158 + 64);
  MEMORY[0x28223BE20](v159);
  v157 = &v138 - v11;
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  v12 = *(*(ContactQuickActionButtonsView - 8) + 64);
  v13 = MEMORY[0x28223BE20](ContactQuickActionButtonsView);
  v168 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v167 = (&v138 - v15);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF88, &qword_2669C76F0);
  v16 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v142 = &v138 - v17;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF90, &qword_2669C76F8);
  v18 = *(*(v140 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v140);
  v141 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v139 = &v138 - v22;
  MEMORY[0x28223BE20](v21);
  v170 = &v138 - v23;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF98, &qword_2669C7700);
  v24 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v154 = (&v138 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFA0, &qword_2669C7708);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v176 = &v138 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v178 = &v138 - v30;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFA8, &qword_2669C7710);
  v31 = *(*(v144 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v144);
  v138 = &v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v138 - v34;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFB0, &qword_2669C7718);
  v147 = *(v148 - 8);
  v36 = *(v147 + 64);
  MEMORY[0x28223BE20](v148);
  v143 = &v138 - v37;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFB8, &qword_2669C7720);
  v38 = *(*(v146 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v146);
  v175 = &v138 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v145 = &v138 - v42;
  MEMORY[0x28223BE20](v41);
  v177 = &v138 - v43;
  v44 = sub_2669C5844();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = sub_2669C6454();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v50 = &v138 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFC0, &qword_2669C7728);
  v156 = *(v174 - 8);
  v51 = *(v156 + 64);
  v52 = MEMORY[0x28223BE20](v174);
  v173 = &v138 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v55 = &v138 - v54;
  v56 = [a1 identifier];
  sub_2669C6654();

  sub_2669C5834();

  sub_2669C6464();
  sub_266999D28(&qword_2800ABFC8, MEMORY[0x277D63B20]);
  v172 = v55;
  sub_2669C6254();
  (*(v47 + 8))(v50, v46);
  sub_2669C63F4();
  sub_2669C5DB4();
  v152 = v182;
  v151 = v184;
  v150 = v186;
  v149 = v187;
  v195 = 1;
  v194 = v183;
  v193 = v185;
  v188 = sub_2669C6924();
  v189 = v57;
  sub_266999FC4();
  v58 = sub_2669C6164();
  v60 = v59;
  v188 = v58;
  v189 = v59;
  v62 = v61 & 1;
  LOBYTE(v190) = v61 & 1;
  v191 = v63;
  sub_2669C6254();
  v64 = v60;
  v65 = v143;
  v66 = v62;
  v67 = v144;
  sub_26699A018(v58, v64, v66);

  v68 = sub_2669C60D4();
  KeyPath = swift_getKeyPath();
  v70 = &v35[*(v67 + 36)];
  *v70 = KeyPath;
  v70[1] = v68;
  sub_2669C60B4();
  sub_26699A030();
  sub_2669C61F4();
  sub_26699A428(v35, &qword_2800ABFA8, &qword_2669C7710);
  v71 = v171;
  if (sub_2669C59D4())
  {
    v72 = sub_2669C62D4();
  }

  else
  {
    v72 = sub_2669C62C4();
  }

  v73 = v72;
  v74 = v145;
  (*(v147 + 32))(v145, v65, v148);
  *&v74[*(v146 + 36)] = v73;
  sub_26699A118();
  v75 = [a1 organizationName];
  v76 = sub_2669C6654();
  v78 = v77;

  v79 = HIBYTE(v78) & 0xF;
  if ((v78 & 0x2000000000000000) == 0)
  {
    v79 = v76 & 0xFFFFFFFFFFFFLL;
  }

  if (v79)
  {
    v80 = [a1 organizationName];
    v81 = sub_2669C6654();
    v83 = v82;

    v188 = v81;
    v189 = v83;
    v84 = sub_2669C6164();
    v86 = v85;
    v188 = v84;
    v189 = v85;
    v88 = v87 & 1;
    LOBYTE(v190) = v87 & 1;
    v191 = v89;
    v90 = v138;
    sub_2669C6254();
    sub_26699A018(v84, v86, v88);

    v91 = sub_2669C6094();
    v92 = swift_getKeyPath();
    v93 = &v90[*(v67 + 36)];
    *v93 = v92;
    v93[1] = v91;
    if (sub_2669C59D4())
    {
      v94 = sub_2669C62D4();
    }

    else
    {
      v94 = sub_2669C62C4();
    }

    v100 = v94;
    v101 = v139;
    sub_26699A118();
    *&v101[*(v140 + 36)] = v100;
    sub_26699A118();
    sub_2669C63F4();
    sub_2669C5DB4();
    v148 = v188;
    v102 = v190;
    v103 = v192;
    v181 = 1;
    v180 = v189;
    v179 = v191;
    v104 = v141;
    sub_26699A318();
    v105 = v181;
    v106 = v180;
    v107 = v179;
    v108 = v142;
    sub_26699A318();
    v109 = v108 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFF0, &qword_2669C7768) + 48);
    *v109 = 0;
    *(v109 + 8) = v105;
    *(v109 + 16) = v148;
    *(v109 + 24) = v106;
    *(v109 + 32) = v102;
    *(v109 + 40) = v107;
    *(v109 + 48) = v103;
    sub_26699A428(v104, &qword_2800ABF90, &qword_2669C76F8);
    sub_26699A318();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFF8, &qword_2669C7770);
    sub_26699A174(&qword_2800AC000, &qword_2800ABF88, &qword_2669C76F0);
    sub_26699A1BC();
    sub_2669C5FB4();
    sub_26699A428(v108, &qword_2800ABF88, &qword_2669C76F0);
    sub_26699A428(v170, &qword_2800ABF90, &qword_2669C76F8);
    v71 = v171;
  }

  else
  {
    sub_2669C63F4();
    sub_2669C5DB4();
    v95 = v188;
    v96 = v189;
    v97 = v190;
    v98 = v191;
    v181 = 1;
    v180 = v189;
    v179 = v191;
    v99 = v154;
    *v154 = 0;
    *(v99 + 8) = 1;
    v99[2] = v95;
    *(v99 + 24) = v96;
    v99[4] = v97;
    *(v99 + 40) = v98;
    *(v99 + 3) = v192;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFF8, &qword_2669C7770);
    sub_26699A174(&qword_2800AC000, &qword_2800ABF88, &qword_2669C76F0);
    sub_26699A1BC();
    sub_2669C5FB4();
  }

  v110 = v157;
  sub_2669C59F4();
  v111 = v159;
  v112 = sub_2669C5964();
  (*(v158 + 8))(v110, v111);
  type metadata accessor for GetContactQuickActionButtonsViewModel();
  (*(v161 + 16))(v160, v71, v162);
  sub_2669BBC20();
  sub_2669C65D4();
  sub_266999D28(&qword_2800AC010, MEMORY[0x277D63F60]);
  v113 = sub_2669C5E84();
  v114 = v167;
  *v167 = v113;
  *(v114 + 8) = v115;
  v116 = ContactQuickActionButtonsView;
  v117 = *(ContactQuickActionButtonsView + 20);
  v118 = sub_2669C5954();
  v119 = v164;
  __swift_storeEnumTagSinglePayload(v164, 1, 1, v118);
  sub_26699A240(v119, v165);
  sub_2669C6334();
  sub_26699A2B0(v119);
  *(v114 + *(v116 + 24)) = v112;
  v120 = (v114 + *(v116 + 28));
  sub_266999D28(&qword_2800AC018, type metadata accessor for GetContactQuickActionButtonsViewModel);
  *v120 = sub_2669C5E24();
  v120[1] = v121;
  v122 = v156;
  v123 = *(v156 + 16);
  v124 = v173;
  v125 = v174;
  v123(v173, v172, v174);
  LODWORD(v166) = v195;
  LODWORD(v170) = v194;
  LODWORD(v171) = v193;
  sub_26699A318();
  sub_26699A318();
  v126 = v168;
  sub_26699A374();
  v127 = v169;
  v123(v169, v124, v125);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC020, &qword_2669C7778);
  v129 = &v127[v128[12]];
  *v129 = 0;
  v129[8] = v166;
  *(v129 + 2) = v152;
  v129[24] = v170;
  *(v129 + 4) = v151;
  v129[40] = v171;
  v130 = v149;
  *(v129 + 6) = v150;
  *(v129 + 7) = v130;
  v131 = v128[16];
  sub_26699A318();
  v132 = v128[20];
  v133 = v176;
  sub_26699A318();
  v134 = v128[24];
  sub_26699A374();
  sub_26699A3D0(v114, type metadata accessor for GetContactQuickActionButtonsView);
  sub_26699A428(v178, &qword_2800ABFA0, &qword_2669C7708);
  sub_26699A428(v177, &qword_2800ABFB8, &qword_2669C7720);
  v135 = *(v122 + 8);
  v136 = v174;
  v135(v172, v174);
  sub_26699A3D0(v126, type metadata accessor for GetContactQuickActionButtonsView);
  sub_26699A428(v133, &qword_2800ABFA0, &qword_2669C7708);
  sub_26699A428(v175, &qword_2800ABFB8, &qword_2669C7720);
  return (v135)(v173, v136);
}

uint64_t sub_2669995C4()
{
  result = sub_2669C5A14();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_266999628()
{
  result = qword_2800ABF08;
  if (!qword_2800ABF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ABF10, &qword_2669C73D8);
    sub_2669981BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ABF08);
  }

  return result;
}

uint64_t sub_2669996E0()
{
  v0 = sub_2669C6654();
  v2 = v1;
  if (v0 == sub_2669C6654() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2669C6A94();
  }

  return v5 & 1;
}

uint64_t sub_2669997F4(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_266999D28(a4, a5);
  sub_2669C6734();
  sub_2669C6734();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2669C6A94();
  }

  return v8 & 1;
}

uint64_t sub_2669998D4()
{
  OUTLINED_FUNCTION_1();

  result = sub_2669C6634();
  *v0 = 0;
  return result;
}

uint64_t sub_266999948()
{
  OUTLINED_FUNCTION_1();

  v2 = sub_2669C6644();
  *v0 = 0;
  return v2 & 1;
}

uint64_t sub_2669999C4()
{
  sub_2669C6654();
  v0 = sub_2669C6624();

  return v0;
}

uint64_t sub_2669999FC()
{
  v0 = sub_2669C6654();
  v1 = MEMORY[0x26D5E43D0](v0);

  return v1;
}

uint64_t sub_266999A34()
{
  sub_2669C6654();
  sub_2669C66F4();
}

uint64_t sub_266999A8C()
{
  sub_2669C6654();
  sub_2669C6AC4();
  sub_2669C66F4();
  v0 = sub_2669C6AD4();

  return v0;
}

uint64_t sub_266999B90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2669999C4();
  *a1 = result;
  return result;
}

uint64_t sub_266999BB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2669996E0() & 1;
}

uint64_t sub_266999BDC(uint64_t a1)
{
  v2 = sub_266999D28(&qword_2800ABF60, type metadata accessor for VNImageOption);
  v3 = sub_266999D28(&qword_2800ABF68, type metadata accessor for VNImageOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_266999D28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266999D74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2669C6624();

  *a2 = v5;
  return result;
}

uint64_t sub_266999DBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2669998CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266999DE8(uint64_t a1)
{
  v2 = sub_266999D28(&qword_2800ACAB0, type metadata accessor for CNActionType);
  v3 = sub_266999D28(&qword_2800ABF58, type metadata accessor for CNActionType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_266999FC4()
{
  result = qword_2800ABFD0;
  if (!qword_2800ABFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ABFD0);
  }

  return result;
}

uint64_t sub_26699A018(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_26699A030()
{
  result = qword_2800ABFD8;
  if (!qword_2800ABFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ABFA8, &qword_2669C7710);
    swift_getOpaqueTypeConformance2();
    sub_26699A174(&qword_2800ABFE0, &qword_2800ABFE8, &qword_2669C7760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ABFD8);
  }

  return result;
}

uint64_t sub_26699A118()
{
  OUTLINED_FUNCTION_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_0(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26699A174(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_26699A1BC()
{
  result = qword_2800AC008;
  if (!qword_2800AC008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ABFF8, &qword_2669C7770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC008);
  }

  return result;
}

uint64_t sub_26699A240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF80, &qword_2669C76E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26699A2B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF80, &qword_2669C76E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26699A318()
{
  OUTLINED_FUNCTION_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_0(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26699A374()
{
  OUTLINED_FUNCTION_1();
  v3 = v2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26699A3D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26699A428(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26699A490(uint64_t a1, int a2)
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

uint64_t sub_26699A4B0(uint64_t result, int a2, int a3)
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

void sub_26699A4EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_26699A5AC()
{
  v0 = sub_2669C5A44();
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v1);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = sub_2669C5A94();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  if (sub_2669C5AB4())
  {
    result = MEMORY[0x26D5E3750]();
    if (!*(result + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v33 = v19;
    v23 = *(v14 + 16);
    v31 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v32 = v23;
    v23(v21, result + v31, v11);

    sub_2669C5A84();
    v30 = *(v14 + 8);
    v30(v21, v11);
    (*(v3 + 104))(v8, *MEMORY[0x277D55A68], v0);
    v24 = sub_266999764(v10, v8);
    v25 = *(v3 + 8);
    v25(v8, v0);
    v26 = (v25)(v10, v0);
    if (v24)
    {
      result = MEMORY[0x26D5E3750](v26);
      if (*(result + 16))
      {
        v27 = v33;
        v32(v33, result + v31, v11);

        sub_2669C5A64();
        v29 = v28;
        v30(v27, v11);
        if (v29)
        {

          return 1;
        }

        return 0;
      }

LABEL_10:
      __break(1u);
      return result;
    }
  }

  return 0;
}

uint64_t sub_26699A870()
{
  if ((sub_26699A920() & 1) == 0)
  {
    return sub_2669C66D4();
  }

  v0 = sub_2669C5A64();
  if (v1)
  {
    MEMORY[0x26D5E43B0](v0);
  }

  v2 = sub_2669C5A54();
  if (v3)
  {
    MEMORY[0x26D5E43B0](v2);

    MEMORY[0x26D5E43B0](8236, 0xE200000000000000);
  }

  return 0;
}

uint64_t sub_26699A920()
{
  v0 = sub_2669C5A44();
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2669C5A84();
  v8 = (*(v3 + 88))(v7, v0);
  if (v8 == *MEMORY[0x277D55A70] || v8 == *MEMORY[0x277D55A58] || v8 == *MEMORY[0x277D55A60])
  {
    sub_2669C5A64();
    v11 = sub_2669C6984();

    if (v11)
    {
      sub_2669C5A54();
      v12 = sub_2669C6984();

      v13 = v12 ^ 1;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    (*(v3 + 8))(v7, v0);
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_26699AA84(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC030, qword_2669C77F0);
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = sub_2669C5C14();
      v11 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_26699AB7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC030, qword_2669C77F0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_2669C5C14();
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for ModifyContactAttributeIntentHandledView()
{
  result = qword_2800AC038;
  if (!qword_2800AC038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26699AC9C()
{
  sub_26699AD38();
  if (v0 <= 0x3F)
  {
    sub_26699ADCC();
    if (v1 <= 0x3F)
    {
      sub_2669C5C14();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26699AD38()
{
  if (!qword_2800AC048)
  {
    sub_2669C65D4();
    sub_26699C024(&qword_2800AC010, MEMORY[0x277D63F60]);
    v0 = sub_2669C5E94();
    if (!v1)
    {
      atomic_store(v0, &qword_2800AC048);
    }
  }
}

void sub_26699ADCC()
{
  if (!qword_2800AC050)
  {
    sub_2669C5D44();
    v0 = sub_2669C5D54();
    if (!v1)
    {
      atomic_store(v0, &qword_2800AC050);
    }
  }
}

void sub_26699AE44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v2 = sub_2669C5C94();
    __swift_project_value_buffer(v2, qword_2800ACC88);
    oslog = sub_2669C5C74();
    v3 = sub_2669C6864();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_266996000, oslog, v3, "#SiriContactsActionableView could not obtain direct invocation for view press", v4, 2u);
      MEMORY[0x26D5E4D50](v4, -1, -1);
    }

LABEL_15:

    return;
  }

  sub_26699BEF0();
  v5 = OUTLINED_FUNCTION_3();
  sub_26699BF34(v5, v6);
  OUTLINED_FUNCTION_3();
  v7 = sub_2669C6844();
  if (!v7)
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v11 = sub_2669C5C94();
    __swift_project_value_buffer(v11, qword_2800ACC88);
    oslog = sub_2669C5C74();
    v12 = sub_2669C6864();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_266996000, oslog, v12, "#SiriContactsActionableView could not convert direct invocation to actionable command", v13, 2u);
      MEMORY[0x26D5E4D50](v13, -1, -1);
    }

    v14 = OUTLINED_FUNCTION_3();
    sub_26699BE4C(v14, v15);
    goto LABEL_15;
  }

  v8 = v7;
  sub_2669C65C4();

  v9 = OUTLINED_FUNCTION_3();

  sub_26699BE4C(v9, v10);
}

uint64_t sub_26699B04C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v3 = type metadata accessor for ModifyContactAttributeIntentHandledView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC058, &qword_2669C7898);
  v7 = *(v6 - 8);
  v18 = v6;
  v19 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  sub_26699C06C(v2, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ModifyContactAttributeIntentHandledView);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_26699BBC4(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC068, &qword_2669C78A8);
  sub_26699A174(&qword_2800AC070, &qword_2800AC068, &qword_2669C78A8);
  sub_2669C6484();
  sub_26699C06C(v17, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ModifyContactAttributeIntentHandledView);
  v13 = swift_allocObject();
  sub_26699BBC4(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11);
  OUTLINED_FUNCTION_0_0();
  sub_26699A174(v14, &qword_2800AC058, &qword_2669C7898);
  v15 = v18;
  sub_2669C6234();

  return (*(v19 + 8))(v10, v15);
}

uint64_t sub_26699B2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64[0] = a1;
  v82 = a2;
  v3 = sub_2669C5814();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  MEMORY[0x28223BE20](v3);
  v75 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2669C6504();
  v70 = *(v6 - 8);
  v71 = v6;
  v7 = *(v70 + 64);
  MEMORY[0x28223BE20](v6);
  v69 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2669C6524();
  v76 = *(v73 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x28223BE20](v73);
  v66 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC088, &qword_2669C78B0);
  v79 = *(v77 - 8);
  v11 = *(v79 + 64);
  MEMORY[0x28223BE20](v77);
  v67 = v64 - v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC090, &qword_2669C78B8);
  v74 = *(v78 - 8);
  v13 = *(v74 + 64);
  v14 = MEMORY[0x28223BE20](v78);
  v72 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = v64 - v16;
  v17 = sub_2669C60E4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ModifyContactAttributeBodyView();
  v23 = (v22 - 8);
  v24 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v65 = v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = (v64 - v27);
  v29 = *(type metadata accessor for ModifyContactAttributeIntentHandledView() + 24);
  v64[1] = v29;
  v30 = v23[9];
  v31 = sub_2669C5C14();
  (*(*(v31 - 8) + 16))(v28 + v30, a1 + v29, v31);
  sub_2669C65D4();
  sub_26699C024(&qword_2800AC010, MEMORY[0x277D63F60]);
  *v28 = sub_2669C5E84();
  v28[1] = v32;
  v33 = v23[7];
  v83 = 0x402E000000000000;
  v34 = *MEMORY[0x277CE0A68];
  v35 = *(v18 + 104);
  v35(v21, v34, v17);
  sub_26699BF8C();
  sub_2669C5D84();
  v36 = v23[8];
  v83 = 0x4031000000000000;
  v35(v21, v34, v17);
  sub_2669C5D84();
  v83 = sub_2669BB230();
  v84 = v37;
  sub_266999FC4();
  v38 = sub_2669C6164();
  v40 = v39;
  LOBYTE(v23) = v41;
  v43 = v42;
  v85 = MEMORY[0x277CE0BD8];
  v86 = MEMORY[0x277D638E8];
  v44 = swift_allocObject();
  v83 = v44;
  *(v44 + 16) = v38;
  *(v44 + 24) = v40;
  *(v44 + 32) = v23 & 1;
  *(v44 + 40) = v43;
  (*(v70 + 104))(v69, *MEMORY[0x277D63D60], v71);
  v45 = v66;
  sub_2669C6514();
  v47 = v80;
  v46 = v81;
  v48 = v75;
  (*(v80 + 104))(v75, *MEMORY[0x277D62F38], v81);
  v49 = sub_26699C024(&qword_2800AC0A0, MEMORY[0x277D63D80]);
  v50 = v67;
  v51 = v73;
  sub_2669C6194();
  (*(v47 + 8))(v48, v46);
  (*(v76 + 8))(v45, v51);
  v83 = v51;
  v84 = v49;
  swift_getOpaqueTypeConformance2();
  v52 = v68;
  v53 = v77;
  sub_2669C61A4();
  (*(v79 + 8))(v50, v53);
  v54 = v65;
  sub_26699C06C(v28, v65, type metadata accessor for ModifyContactAttributeBodyView);
  v55 = v74;
  v56 = *(v74 + 16);
  v57 = v72;
  v58 = v52;
  v59 = v78;
  v56(v72, v52, v78);
  v60 = v82;
  sub_26699C06C(v54, v82, type metadata accessor for ModifyContactAttributeBodyView);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC0A8, &unk_2669C78C0);
  v56((v60 + *(v61 + 48)), v57, v59);
  v62 = *(v55 + 8);
  v62(v58, v59);
  sub_26699C0CC(v28);
  v62(v57, v59);
  return sub_26699C0CC(v54);
}

uint64_t sub_26699BAD4(uint64_t a1)
{
  v2 = a1 + *(type metadata accessor for ModifyContactAttributeIntentHandledView() + 24);
  v3 = sub_2669C5B84();
  if (*a1)
  {
    v5 = v3;
    v6 = v4;
    v7 = *a1;
    sub_26699AE44(v5, v6);

    return sub_26699BE4C(v5, v6);
  }

  else
  {
    v9 = *(a1 + 8);
    sub_2669C65D4();
    sub_26699C024(&qword_2800AC010, MEMORY[0x277D63F60]);
    result = sub_2669C5E74();
    __break(1u);
  }

  return result;
}

uint64_t sub_26699BBC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModifyContactAttributeIntentHandledView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26699BC28@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ModifyContactAttributeIntentHandledView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26699B2F4(v4, a1);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for ModifyContactAttributeIntentHandledView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC060, &qword_2669C78A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2669C5D44();
    OUTLINED_FUNCTION_0(v7);
    (*(v8 + 8))(v5 + v6);
  }

  else
  {
    v9 = *(v5 + v6);
  }

  v10 = *(v1 + 24);
  v11 = sub_2669C5C14();
  OUTLINED_FUNCTION_0(v11);
  (*(v12 + 8))(v5 + v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26699BDEC()
{
  v1 = *(type metadata accessor for ModifyContactAttributeIntentHandledView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26699BAD4(v2);
}

uint64_t sub_26699BE4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26699BE60(a1, a2);
  }

  return a1;
}

uint64_t sub_26699BE60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_26699BEF0()
{
  result = qword_2800AC080;
  if (!qword_2800AC080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800AC080);
  }

  return result;
}

uint64_t sub_26699BF34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_26699BF8C()
{
  result = qword_2800AC098;
  if (!qword_2800AC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC098);
  }

  return result;
}

uint64_t sub_26699BFE0()
{
  sub_26699A018(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26699C024(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26699C06C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26699C0CC(uint64_t a1)
{
  v2 = type metadata accessor for ModifyContactAttributeBodyView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26699C128()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC058, &qword_2669C7898);
  OUTLINED_FUNCTION_0_0();
  sub_26699A174(v0, &qword_2800AC058, &qword_2669C7898);
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_once();
}

uint64_t sub_26699C21C(uint64_t a1)
{
  v2 = sub_2669C5D44();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  (*(v8 + 16))(v7 - v6, a1);
  return sub_2669C5EB4();
}

uint64_t ModifyContactAttributeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v63 = type metadata accessor for ModifyContactAttributeIntentHandledView();
  v2 = OUTLINED_FUNCTION_0(v63);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_1();
  v7 = (v6 - v5);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC0B0, &qword_2669C78D0);
  v8 = OUTLINED_FUNCTION_0(v61);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v60 - v11;
  v13 = type metadata accessor for ModifyContactAttributeConfirmationView();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_1();
  v19 = (v18 - v17);
  v20 = sub_2669C5C14();
  v21 = OUTLINED_FUNCTION_2(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_1();
  v28 = v27 - v26;
  v29 = type metadata accessor for ModifyContactAttributeView();
  v30 = OUTLINED_FUNCTION_0(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_1();
  v35 = v34 - v33;
  sub_26699C850(v1, v34 - v33, type metadata accessor for ModifyContactAttributeView);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v23 + 32))(v28, v35, v20);
  v37 = *(v23 + 16);
  if (EnumCaseMultiPayload == 1)
  {
    v38 = v63;
    v37(v7 + *(v63 + 24), v28, v20);
    sub_2669C65D4();
    OUTLINED_FUNCTION_2_0();
    sub_26699C808(v39, v40);
    *v7 = sub_2669C5E84();
    v7[1] = v41;
    v42 = *(v38 + 20);
    *(v7 + v42) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC060, &qword_2669C78A0);
    swift_storeEnumTagMultiPayload();
    sub_26699C850(v7, v12, type metadata accessor for ModifyContactAttributeIntentHandledView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4();
    sub_26699C808(v43, v44);
    OUTLINED_FUNCTION_3_0();
    sub_26699C808(v45, v46);
    sub_2669C5FB4();
    v47 = type metadata accessor for ModifyContactAttributeIntentHandledView;
    v48 = v7;
  }

  else
  {
    v37(v19 + *(v13 + 24), v28, v20);
    sub_2669C65D4();
    OUTLINED_FUNCTION_2_0();
    sub_26699C808(v49, v50);
    v51 = sub_2669C5E84();
    v53 = v52;
    *v19 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC060, &qword_2669C78A0);
    swift_storeEnumTagMultiPayload();
    v54 = (v19 + *(v13 + 20));
    *v54 = v51;
    v54[1] = v53;
    sub_26699C850(v19, v12, type metadata accessor for ModifyContactAttributeConfirmationView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4();
    sub_26699C808(v55, v56);
    OUTLINED_FUNCTION_3_0();
    sub_26699C808(v57, v58);
    sub_2669C5FB4();
    v47 = type metadata accessor for ModifyContactAttributeConfirmationView;
    v48 = v19;
  }

  sub_26699C8B0(v48, v47);
  return (*(v23 + 8))(v28, v20);
}

uint64_t type metadata accessor for ModifyContactAttributeView()
{
  result = qword_2800AC0C8;
  if (!qword_2800AC0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26699C808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26699C850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26699C8B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26699C928()
{
  result = sub_2669C5C14();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26699C98C()
{
  result = qword_2800AC0D8;
  if (!qword_2800AC0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC0E0, &qword_2669C79A8);
    sub_26699C808(&qword_2800AC0B8, type metadata accessor for ModifyContactAttributeConfirmationView);
    sub_26699C808(&qword_2800AC0C0, type metadata accessor for ModifyContactAttributeIntentHandledView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC0D8);
  }

  return result;
}

uint64_t static ContactsFlowImageColorGenerator.colors(for:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v2 = sub_2669C5C94();
    __swift_project_value_buffer(v2, qword_2800ACC88);
    v3 = sub_2669C5C74();
    v4 = sub_2669C6854();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_7();
      *v5 = 0;
      _os_log_impl(&dword_266996000, v3, v4, "ContactsFlowImageColorGenerator no imageData, falling back to default color set", v5, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    return sub_26699CC0C();
  }

  else
  {
    sub_26699F8F0(0, &qword_2800AC0E8, 0x277D755B8);
    v7 = OUTLINED_FUNCTION_3();
    sub_26699EF8C(v7, v8);
    v9 = OUTLINED_FUNCTION_3();
    sub_26699BF34(v9, v10);
    v11 = OUTLINED_FUNCTION_3();
    v13 = sub_26699CE00(v11, v12);
    v14 = sub_26699CE78(v13);

    v15 = OUTLINED_FUNCTION_3();
    sub_26699BE4C(v15, v16);
    return v14;
  }
}

uint64_t sub_26699CC0C()
{
  v0 = sub_2669C6284();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC120, &qword_2669C7AD8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2669C79B0;
  v4 = *MEMORY[0x277CE0EE0];
  v5 = *(v1 + 104);
  v6 = OUTLINED_FUNCTION_1_2();
  v5(v6);
  OUTLINED_FUNCTION_3_1();
  *(v3 + 32) = sub_2669C62F4();
  v7 = OUTLINED_FUNCTION_1_2();
  v5(v7);
  OUTLINED_FUNCTION_3_1();
  *(v3 + 40) = sub_2669C62F4();
  v8 = OUTLINED_FUNCTION_1_2();
  v5(v8);
  OUTLINED_FUNCTION_3_1();
  *(v3 + 48) = sub_2669C62F4();
  v9 = OUTLINED_FUNCTION_1_2();
  v5(v9);
  OUTLINED_FUNCTION_3_1();
  *(v3 + 56) = sub_2669C62F4();
  v10 = OUTLINED_FUNCTION_1_2();
  v5(v10);
  OUTLINED_FUNCTION_3_1();
  *(v3 + 64) = sub_2669C62F4();
  return v3;
}

id sub_26699CE00(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2669C57D4();
  v6 = [v4 initWithData_];

  sub_26699BE60(a1, a2);
  return v6;
}

uint64_t sub_26699CE78(void *a1)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v2 = [a1 ioSurface];
  if (v2)
  {
    v3 = v2;
    v4 = &selRef_initWithIOSurface_;
  }

  else
  {
    v5 = [a1 CGImage];
    if (!v5)
    {
      goto LABEL_8;
    }

    v3 = v5;
    v4 = &selRef_initWithCGImage_;
  }

  v6 = [objc_allocWithZone(MEMORY[0x277CBF758]) *v4];

  if (v6)
  {
    v7 = sub_26699D1F4(v6);

    return v7;
  }

LABEL_8:
  if (qword_2800ABEB8 != -1)
  {
    swift_once();
  }

  v9 = sub_2669C5C94();
  __swift_project_value_buffer(v9, qword_2800ACC88);
  v10 = sub_2669C5C74();
  v11 = sub_2669C6854();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_266996000, v10, v11, "ContactsFlowImageColorGenerator couldn't get CIImage from UIImage base, falling back to default color set", v12, 2u);
    MEMORY[0x26D5E4D50](v12, -1, -1);
  }

  return sub_26699CC0C();
}

uint64_t static ContactsFlowImageColorGenerator.shouldDisplayLightText(against:)(uint64_t a1)
{
  sub_26699D054(a1);
  sub_2669C62D4();
  v1 = sub_2669C6294();

  return v1 & 1;
}

uint64_t sub_26699D054(uint64_t a1)
{
  if (qword_2800ABEB8 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v2 = sub_2669C5C94();
  __swift_project_value_buffer(v2, qword_2800ACC88);
  v3 = sub_2669C5C74();
  v4 = sub_2669C6854();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_7();
    *v5 = 0;
    _os_log_impl(&dword_266996000, v3, v4, "ContactsFlowImageColorGenerator idealTextColor", v5, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  sub_26699EBBC(a1);
  sub_2669C62D4();
  v6 = sub_26699E944();

  v7 = sub_2669C5C74();
  v8 = sub_2669C6854();
  v9 = os_log_type_enabled(v7, v8);
  if (v6 <= 0.45)
  {
    if (v9)
    {
      *OUTLINED_FUNCTION_7() = 0;
      OUTLINED_FUNCTION_6(&dword_266996000, v13, v14, "ContactsFlowImageColorGenerator idealTextColor returning dark text color");
      OUTLINED_FUNCTION_4_0();
    }

    v12 = sub_2669C62C4();
  }

  else
  {
    if (v9)
    {
      *OUTLINED_FUNCTION_7() = 0;
      OUTLINED_FUNCTION_6(&dword_266996000, v10, v11, "ContactsFlowImageColorGenerator idealTextColor returning light text color");
      OUTLINED_FUNCTION_4_0();
    }

    v12 = sub_2669C62D4();
  }

  v15 = v12;

  return v15;
}

uint64_t sub_26699D1F4(void *a1)
{
  [a1 extent];
  v3 = v2;
  v5 = v4;
  v6 = static ContactsFlowImageColorGenerator.performSaliencyExtraction(from:)(a1);
  if (v6)
  {
    v7 = v6;
    v8 = static ContactsFlowImageColorGenerator.makeImageMask(from:originalScale:)(v6, v3, v5);
    v9 = static ContactsFlowImageColorGenerator.makeThresholdImage(from:threshold:)(v8, 0.5);
    if (v9)
    {
      v10 = v9;
      v11 = [objc_opt_self() maskToAlphaFilter];
      [v11 setInputImage_];
      v12 = [v11 outputImage];

      if (v12)
      {
        v13 = static ContactsFlowImageColorGenerator.makeSubtractedImage(baseImage:imageToSubtract:)(a1, v12);
        if (v13)
        {
          v14 = v13;
          v15 = static ContactsFlowImageColorGenerator.makeGradientCGImage(from:originalSize:)(v13, v3, v5);
          v16 = sub_26699DF4C(v15);

          return v16;
        }

        if (qword_2800ABEB8 != -1)
        {
          swift_once();
        }

        v31 = sub_2669C5C94();
        __swift_project_value_buffer(v31, qword_2800ACC88);
        v32 = sub_2669C5C74();
        v33 = sub_2669C6854();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_266996000, v32, v33, "ContactsFlowImageColorGenerator failed to extract subject from image for color sampling, falling back to default color set", v34, 2u);
          MEMORY[0x26D5E4D50](v34, -1, -1);
        }

        v26 = sub_26699CC0C();
      }

      else
      {
        if (qword_2800ABEB8 != -1)
        {
          swift_once();
        }

        v27 = sub_2669C5C94();
        __swift_project_value_buffer(v27, qword_2800ACC88);
        v28 = sub_2669C5C74();
        v29 = sub_2669C6854();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_266996000, v28, v29, "ContactsFlowImageColorGenerator failed to remove background from filtered image mask, falling back to default color set", v30, 2u);
          MEMORY[0x26D5E4D50](v30, -1, -1);
        }

        v26 = sub_26699CC0C();
      }
    }

    else
    {
      if (qword_2800ABEB8 != -1)
      {
        swift_once();
      }

      v22 = sub_2669C5C94();
      __swift_project_value_buffer(v22, qword_2800ACC88);
      v23 = sub_2669C5C74();
      v24 = sub_2669C6854();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_266996000, v23, v24, "ContactsFlowImageColorGenerator failed to obtain filtered image mask, falling back to default color set", v25, 2u);
        MEMORY[0x26D5E4D50](v25, -1, -1);
      }

      v26 = sub_26699CC0C();
    }

    return v26;
  }

  else
  {
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v18 = sub_2669C5C94();
    __swift_project_value_buffer(v18, qword_2800ACC88);
    v19 = sub_2669C5C74();
    v20 = sub_2669C6854();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_266996000, v19, v20, "ContactsFlowImageColorGenerator failed to obtain result from completed request, falling back to default color set", v21, 2u);
      MEMORY[0x26D5E4D50](v21, -1, -1);
    }

    return sub_26699CC0C();
  }
}

unint64_t static ContactsFlowImageColorGenerator.performSaliencyExtraction(from:)(void *a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for Signpost.OpenSignpost();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  type metadata accessor for VNImageOption(0);
  sub_26699EFA0();
  sub_2669C65F4();
  v6 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  v7 = sub_26699EEB4(a1);
  v8 = [objc_allocWithZone(MEMORY[0x277CE2D00]) init];
  [v8 setRevision_];
  if (qword_2800ABEB0 != -1)
  {
    swift_once();
  }

  v9 = qword_2800AC2A8;
  sub_2669C5C54();
  sub_2669C68C4();
  OUTLINED_FUNCTION_2_1();
  sub_2669C5C34();
  v10 = &v5[*(v2 + 20)];
  *v10 = "VisionSaliencyRequest";
  *(v10 + 1) = 21;
  v10[16] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC0F0, &qword_2669C7A90);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2669C79C0;
  *(v11 + 32) = v8;
  sub_26699F8F0(0, &qword_2800AC0F8, 0x277CE2DF0);
  v12 = sub_2669C6754();

  v33[0] = 0;
  v13 = [v7 performRequests:v12 error:v33];

  if (v13)
  {
    v14 = v33[0];
    v15 = sub_26699F6F0(v8);
    v16 = v15;
    if (v15)
    {
      if (sub_26699F058(v15))
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x26D5E4670](0, v16);
        }

        else
        {
          if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v17 = *(v16 + 32);
        }

        v18 = v17;

        v16 = [v18 pixelBuffer];
      }

      else
      {

        v16 = 0;
      }
    }

    sub_2669C68B4();
    OUTLINED_FUNCTION_2_1();
    sub_2669C5C44();

    sub_26699EFF8(v5);
  }

  else
  {
    v19 = v33[0];
    v20 = sub_2669C5784();

    swift_willThrow();
    sub_2669C68B4();
    OUTLINED_FUNCTION_2_1();
    sub_2669C5C44();
    sub_26699EFF8(v5);
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v21 = sub_2669C5C94();
    __swift_project_value_buffer(v21, qword_2800ACC88);
    v22 = v20;
    v23 = sub_2669C5C74();
    v24 = sub_2669C6854();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33[0] = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v27 = sub_2669C6AB4();
      v29 = sub_26699F100(v27, v28, v33);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_266996000, v23, v24, "ContactsFlowImageColorGenerator failed to complete image request, falling back to default color set with error: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_4_0();
    }

    else
    {
    }

    v16 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v16;
}

id static ContactsFlowImageColorGenerator.makeImageMask(from:originalScale:)(uint64_t a1, double a2, double a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  [v5 extent];
  CGAffineTransformMakeScale(&v10, a2 / v6, a3 / v7);
  v8 = [v5 imageByApplyingTransform_];

  return v8;
}

id static ContactsFlowImageColorGenerator.makeThresholdImage(from:threshold:)(uint64_t a1, float a2)
{
  v4 = [objc_opt_self() colorThresholdFilter];
  [v4 setInputImage_];
  *&v5 = a2;
  [v4 setThreshold_];
  v6 = [v4 outputImage];

  return v6;
}

id static ContactsFlowImageColorGenerator.makeTransparencyImage(fromThreshold:)(uint64_t a1)
{
  v2 = [objc_opt_self() maskToAlphaFilter];
  [v2 setInputImage_];
  v3 = [v2 outputImage];

  return v3;
}

id static ContactsFlowImageColorGenerator.makeSubtractedImage(baseImage:imageToSubtract:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sourceOutCompositingFilter];
  [v4 setInputImage_];
  [v4 setBackgroundImage_];
  v5 = [v4 outputImage];

  return v5;
}

id static ContactsFlowImageColorGenerator.makeGradientCGImage(from:originalSize:)(void *a1, double a2, double a3)
{
  v6 = sub_2669C6624();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC100, qword_2669C7A98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2669C79D0;
  *(inited + 32) = 0x6469577475706E69;
  *(inited + 40) = 0xEA00000000006874;
  v8 = MEMORY[0x277D85048];
  *(inited + 48) = a2;
  *(inited + 72) = v8;
  *(inited + 80) = 0x6965487475706E69;
  *(inited + 88) = 0xEB00000000746867;
  *(inited + 120) = v8;
  *(inited + 96) = a3;
  sub_2669C65F4();
  v9 = sub_2669C65E4();

  v10 = [a1 imageByApplyingFilter:v6 withInputParameters:v9];

  [v10 extent];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v18 = [v17 createCGImage:v10 fromRect:{v12, v14, 8.0, v16}];

  return v18;
}

uint64_t sub_26699DF4C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    Width = CGImageGetWidth(v2);
    Height = CGImageGetHeight(v2);
    if (Width && (v5 = Height) != 0)
    {
      v6 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
      if (v6)
      {
        v7 = fmax(v5, 160.0);
        if (v7 <= -9.22337204e18)
        {
          __break(1u);
        }

        else if (v7 < 9.22337204e18)
        {
          Width = v6;
          v8 = v7;
          v1 = __CGBitmapContextCreate(v7, v6);
          if (v1)
          {
            sub_2669C6834();
            Data = CGBitmapContextGetData(v1);
            if (Data)
            {
              if (v8 >= 1)
              {
                v10 = 0;
                v11 = Data + 3;
                while (v10 != 0x2000000000000000)
                {
                  if ((*(v11 - 3) | *(v11 - 2) || *(v11 - 1)) && *v11)
                  {
                    goto LABEL_39;
                  }

                  ++v10;
                  v11 += 4;
                  if (v8 == v10)
                  {
                    v10 = v7;
                    goto LABEL_39;
                  }
                }

                goto LABEL_67;
              }

              v10 = 0;
LABEL_39:
              v28 = v7 + -1.0;
              if (COERCE__INT64(fabs(v7 + -1.0)) > 0x7FEFFFFFFFFFFFFFLL)
              {
                __break(1u);
              }

              else if (v28 > -9.22337204e18)
              {
                if (v28 < 9.22337204e18)
                {
                  v29 = v28;
                  if (v28 >= 1)
                  {
                    v30 = &Data[4 * v29 + 1];
                    v31 = v29 >> 61;
                    while (!v31)
                    {
                      if ((*(v30 - 1) | *v30 || v30[1]) && v30[2])
                      {
                        goto LABEL_51;
                      }

                      v30 -= 4;
                      if (v29-- <= 1)
                      {
                        v29 = 0;
                        goto LABEL_51;
                      }
                    }

                    goto LABEL_68;
                  }

LABEL_51:
                  v48 = MEMORY[0x277D84F90];
                  if (!__OFSUB__(v29, v10))
                  {
                    v33 = ceil(vcvtd_n_f64_s64(v29 - v10, 2uLL));
                    if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      v44 = v1;
                      v45 = Width;
                      v46 = v2;
                      if (v33 > -9.22337204e18)
                      {
                        v47 = Data;
                        if (v33 < 9.22337204e18)
                        {
                          if (v10 < v29)
                          {
                            v34 = v33;
                            v35 = v10 - 0x2000000000000000;
                            v1 = &Data[4 * v10 + 3];
                            Width = 4 * v33;
                            v2 = &_OBJC_LABEL_PROTOCOL___NSObject;
                            while (v35 >> 62 == 3)
                            {
                              LOBYTE(v33) = *(v1 - 3);
                              *&v36 = *&v33;
                              v37 = *&v36 / 255.0;
                              LOBYTE(v36) = *(v1 - 2);
                              *&v38 = v36;
                              v39 = *&v38 / 255.0;
                              LOBYTE(v38) = *(v1 - 1);
                              *&v40 = v38;
                              v41 = *&v40 / 255.0;
                              LOBYTE(v40) = *v1;
                              [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v37 green:v39 blue:v41 alpha:v40 / 255.0];
                              sub_2669C6274();
                              MEMORY[0x26D5E43F0]();
                              if (*(v48 + 16) >= *(v48 + 24) >> 1)
                              {
                                sub_2669C6774();
                              }

                              sub_2669C6794();
                              v42 = v10 + v34;
                              if (__OFADD__(v10, v34))
                              {
                                goto LABEL_66;
                              }

                              v35 += v34;
                              v10 += v34;
                              v1 = (v1 + Width);
                              if (v42 >= v29)
                              {
                                goto LABEL_62;
                              }
                            }

                            __break(1u);
LABEL_66:
                            __break(1u);
LABEL_67:
                            __break(1u);
LABEL_68:
                            __break(1u);
                            goto LABEL_69;
                          }

LABEL_62:
                          if ((v29 - 0x2000000000000000) >> 62 == 3)
                          {
                            sub_26699E66C(*&v47[4 * v29]);
                            MEMORY[0x26D5E43F0]();
                            Width = v45;
                            v2 = v46;
                            v1 = v44;
                            if (*(v48 + 16) < *(v48 + 24) >> 1)
                            {
LABEL_64:
                              sub_2669C6794();
                              v43 = sub_26699E700(v48);

                              return v43;
                            }

LABEL_81:
                            sub_2669C6774();
                            goto LABEL_64;
                          }

LABEL_80:
                          __break(1u);
                          goto LABEL_81;
                        }

LABEL_79:
                        __break(1u);
                        goto LABEL_80;
                      }

LABEL_78:
                      __break(1u);
                      goto LABEL_79;
                    }

LABEL_77:
                    __break(1u);
                    goto LABEL_78;
                  }

LABEL_76:
                  __break(1u);
                  goto LABEL_77;
                }

LABEL_75:
                __break(1u);
                goto LABEL_76;
              }

              __break(1u);
              goto LABEL_75;
            }
          }

          if (qword_2800ABEB8 == -1)
          {
            goto LABEL_28;
          }

          goto LABEL_72;
        }

        __break(1u);
LABEL_72:
        swift_once();
LABEL_28:
        v22 = sub_2669C5C94();
        __swift_project_value_buffer(v22, qword_2800ACC88);
        v23 = sub_2669C5C74();
        v24 = sub_2669C6854();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_266996000, v23, v24, "ContactsFlowImageColorGenerator rawImageData was nil after drawing, falling back to default color set", v25, 2u);
          MEMORY[0x26D5E4D50](v25, -1, -1);
        }

        v26 = sub_26699CC0C();
        goto LABEL_37;
      }

      if (qword_2800ABEB8 != -1)
      {
        swift_once();
      }

      v27 = sub_2669C5C94();
      __swift_project_value_buffer(v27, qword_2800ACC88);
      v18 = sub_2669C5C74();
      v19 = sub_2669C6854();
      if (!os_log_type_enabled(v18, v19))
      {
LABEL_36:

        v26 = sub_26699CC0C();
LABEL_37:

        return v26;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "ContactsFlowImageColorGenerator failed to create sRGB color space, falling back to default color set";
    }

    else
    {
      if (qword_2800ABEB8 != -1)
      {
        swift_once();
      }

      v17 = sub_2669C5C94();
      __swift_project_value_buffer(v17, qword_2800ACC88);
      v18 = sub_2669C5C74();
      v19 = sub_2669C6854();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_36;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "ContactsFlowImageColorGenerator cgImage had a side length 0, falling back to default color set";
    }

    _os_log_impl(&dword_266996000, v18, v19, v21, v20, 2u);
    MEMORY[0x26D5E4D50](v20, -1, -1);
    goto LABEL_36;
  }

  if (qword_2800ABEB8 != -1)
  {
LABEL_69:
    swift_once();
  }

  v12 = sub_2669C5C94();
  __swift_project_value_buffer(v12, qword_2800ACC88);
  v13 = sub_2669C5C74();
  v14 = sub_2669C6854();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_266996000, v13, v14, "ContactsFlowImageColorGenerator no cgImage, falling back to default color set", v15, 2u);
    MEMORY[0x26D5E4D50](v15, -1, -1);
  }

  return sub_26699CC0C();
}

uint64_t sub_26699E66C(unsigned int a1)
{
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:a1 / 255.0 green:BYTE1(a1) / 255.0 blue:BYTE2(a1) / 255.0 alpha:HIBYTE(a1) / 255.0];

  return sub_2669C6274();
}

uint64_t sub_26699E700(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_26699F8F0(0, &qword_2800AC118, 0x277D75348);
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v15 = 0.0;
      v16 = 0;
      v13 = 0.0;
      v14 = 0;
      v11 = 0.0;
      v12 = 0.0;
      v10 = 1.0;
      swift_retain_n();
      v6 = sub_2669C68D4();
      [v6 getRed:&v13 green:&v12 blue:&v11 alpha:&v10];
      v12 = v12 * 0.33 + 0.0;
      v13 = v13 * 0.33 + 0.0;
      v11 = v11 * 0.33 + 0.0;
      v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v13 green:v12 blue:v11 alpha:v10];
      [v7 getHue:&v16 saturation:&v15 brightness:&v14 alpha:0];
      v15 = v15 * 1.6 / (v15 + 0.6);
      sub_2669C62A4();
      sub_2669C62E4();

      MEMORY[0x26D5E43F0](v8);
      if (*(v17 + 16) >= *(v17 + 24) >> 1)
      {
        sub_2669C6774();
      }

      sub_2669C6794();

      ++v4;
      --v3;
    }

    while (v3);
    result = v17;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_26699E944()
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (qword_2800ABEB8 != -1)
  {
    swift_once();
  }

  v0 = sub_2669C5C94();
  __swift_project_value_buffer(v0, qword_2800ACC88);
  v1 = sub_2669C5C74();
  v2 = sub_2669C6854();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_266996000, v1, v2, "ContactsFlowImageColorGenerator calculating color difference", v3, 2u);
    MEMORY[0x26D5E4D50](v3, -1, -1);
  }

  v18 = 0.0;
  v19[0] = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  sub_26699F8F0(0, &qword_2800AC118, 0x277D75348);

  v4 = sub_2669C68D4();
  [v4 getRed:v19 green:&v18 blue:&v17 alpha:&v16];

  v5 = sub_2669C68D4();
  [v5 getRed:&v15 green:&v14 blue:&v13 alpha:&v12];
  v6 = vabdd_f64(v19[0] * v16, v15 * v12) + vabdd_f64(v16 * v18, v12 * v14) + vabdd_f64(v16 * v17, v12 * v13);
  v7 = sub_2669C5C74();
  v8 = sub_2669C6854();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v6;
    _os_log_impl(&dword_266996000, v7, v8, "ContactsFlowImageColorGenerator color difference was %f", v9, 0xCu);
    MEMORY[0x26D5E4D50](v9, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_26699EBBC(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2669C6284();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v26 = 0.0;
    v27[0] = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    sub_26699F8F0(0, &qword_2800AC118, 0x277D75348);
    v8 = 0;
    v9 = a1 + 32;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      v14 = *(v9 + 8 * v8++);
      swift_retain_n();
      v15 = sub_2669C68D4();
      [v15 getRed:v27 green:&v26 blue:&v25 alpha:&v24];

      v13 = v13 + v27[0];
      v12 = v12 + v26;
      v11 = v11 + v25;
      v10 = v10 + v24;
    }

    while (v7 != v8);
    (*(v3 + 104))(v6, *MEMORY[0x277CE0EE0], v2);
    result = sub_2669C62F4();
    v17 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v18 = sub_2669C5C94();
    __swift_project_value_buffer(v18, qword_2800ACC88);
    v19 = sub_2669C5C74();
    v20 = sub_2669C6854();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_266996000, v19, v20, "ContactsFlowImageColorGenerator no colors provided from which to calculate mean, returning default", v21, 2u);
      MEMORY[0x26D5E4D50](v21, -1, -1);
    }

    v22 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282133418]();
  }

  return result;
}

id sub_26699EEB4(void *a1)
{
  type metadata accessor for VNImageOption(0);
  sub_26699EFA0();
  v3 = sub_2669C65E4();

  v4 = [v1 initWithCIImage:a1 options:v3];

  return v4;
}

uint64_t sub_26699EF40(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26699EF8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26699BF34(a1, a2);
  }

  return a1;
}

unint64_t sub_26699EFA0()
{
  result = qword_2800ABF60;
  if (!qword_2800ABF60)
  {
    type metadata accessor for VNImageOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ABF60);
  }

  return result;
}

uint64_t sub_26699EFF8(uint64_t a1)
{
  v2 = type metadata accessor for Signpost.OpenSignpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26699F058(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2669C6A54();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_26699F0A4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_26699F100(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_26699F100(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26699F1C4(v11, 0, 0, 1, a1, a2);
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
    sub_26699F890(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26699F1C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26699F2C4(a5, a6);
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
    result = sub_2669C69D4();
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

uint64_t sub_26699F2C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_26699F310(a1, a2);
  sub_26699F428(&unk_28782B700);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26699F310(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2669C6714())
  {
    result = sub_26699F50C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2669C69B4();
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
          result = sub_2669C69D4();
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

uint64_t sub_26699F428(uint64_t result)
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

    result = sub_26699F57C(result, v8, 1, v3);
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

void *sub_26699F50C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC110, &qword_2669C7AD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26699F57C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC110, &qword_2669C7AD0);
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

_BYTE **sub_26699F670(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_26699F6CC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26699F6F0(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_26699F8F0(0, &qword_2800AC108, 0x277CE2DF8);
  v3 = sub_2669C6764();

  return v3;
}

uint64_t getEnumTagSinglePayload for ContactsFlowImageColorGenerator(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ContactsFlowImageColorGenerator(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x26699F850);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26699F890(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26699F8F0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void OUTLINED_FUNCTION_4_0()
{

  JUMPOUT(0x26D5E4D50);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_7()
{

  return swift_slowAlloc();
}

uint64_t GetContactAttributeMultiResultView.body.getter@<X0>(uint64_t a1@<X8>)
{
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView();
  v4 = ContactAttributeMultiResultView - 8;
  v5 = *(ContactAttributeMultiResultView - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](ContactAttributeMultiResultView);
  sub_2669A0704(v1, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2669A076C(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC128, &qword_2669C7AF0);
  sub_26699A174(&qword_2800AC130, &qword_2800AC128, &qword_2669C7AF0);
  sub_2669C6484();
  v9 = v1 + *(v4 + 28);
  v10 = *(v9 + *(type metadata accessor for GetContactAttributeViewModel() + 28));
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC138, &qword_2669C7AF8) + 36)) = v10;
}

uint64_t type metadata accessor for GetContactAttributeMultiResultView()
{
  result = qword_2800AC140;
  if (!qword_2800AC140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26699FBB4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v91 = a1;
  v107 = a2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC178, &qword_2669C7BB8);
  v112 = *(v106 - 8);
  v3 = v112[8];
  v4 = MEMORY[0x28223BE20](v106);
  v105 = v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v111 = v88 - v6;
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView();
  v8 = ContactAttributeMultiResultView - 8;
  v102 = *(ContactAttributeMultiResultView - 8);
  v101 = *(v102 + 64);
  MEMORY[0x28223BE20](ContactAttributeMultiResultView);
  v100 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2669C5814();
  v98 = *(v10 - 8);
  v99 = v10;
  v11 = *(v98 + 64);
  MEMORY[0x28223BE20](v10);
  v97 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2669C5844();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v94 = v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v88 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC180, &qword_2669C8740);
  v22 = *(v21 - 8);
  v89 = v21;
  v90 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v88 - v24;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC188, &qword_2669C7BD0);
  v26 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v92 = v88 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC190, &qword_2669C7BD8);
  v29 = *(v28 - 8);
  v95 = v28;
  v96 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v109 = v88 - v31;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC198, &qword_2669C7BE0);
  v110 = *(v104 - 8);
  v32 = v110[8];
  v33 = MEMORY[0x28223BE20](v104);
  v103 = v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v113 = v88 - v35;
  v108 = *(v8 + 28);
  v88[1] = a1 + *(type metadata accessor for GetContactAttributeViewModel() + 20);
  sub_2669C5AE4();
  v36 = sub_2669C5964();
  (*(v17 + 8))(v20, v16);
  v37 = sub_2669C6924();
  v39 = v38;

  v114 = v37;
  v115 = v39;
  sub_266999FC4();
  v40 = sub_2669C6164();
  v42 = v41;
  v114 = v40;
  v115 = v41;
  v44 = v43 & 1;
  LOBYTE(v116) = v43 & 1;
  v117 = v45;
  v46 = MEMORY[0x277CE0BD8];
  v47 = MEMORY[0x277CE0BC8];
  sub_2669C6254();
  sub_26699A018(v40, v42, v44);

  v114 = v46;
  v115 = v47;
  swift_getOpaqueTypeConformance2();
  v48 = v89;
  v49 = sub_2669C6174();
  (*(v90 + 8))(v25, v48);
  v118 = MEMORY[0x277D63A60];
  v117 = MEMORY[0x277CE11C8];
  v114 = v49;
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  v135 = 0;
  v133 = 0u;
  v134 = 0u;
  v132 = 0;
  v130 = 0u;
  v131 = 0u;
  v129 = 0;
  v127 = 0u;
  v128 = 0u;
  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  sub_2669C5AC4();
  sub_2669C5834();

  v120[3] = sub_2669C6454();
  v120[4] = MEMORY[0x277D63B10];
  __swift_allocate_boxed_opaque_existential_1(v120);
  sub_2669C6464();
  v50 = v92;
  sub_2669C64C4();
  v51 = sub_2669C6084();
  v52 = v93;
  v53 = v50 + *(v93 + 36);
  *v53 = v51;
  *(v53 + 8) = xmmword_2669C7AE0;
  *(v53 + 24) = xmmword_2669C7AE0;
  *(v53 + 40) = 0;
  v55 = v97;
  v54 = v98;
  v56 = v99;
  (*(v98 + 104))(v97, *MEMORY[0x277D62F20], v99);
  v57 = sub_2669A18F0();
  v58 = v52;
  sub_2669C6194();
  (*(v54 + 8))(v55, v56);
  sub_2669A19AC(v50);
  v59 = v91;
  v60 = v100;
  sub_2669A0704(v91, v100);
  v61 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v62 = swift_allocObject();
  sub_2669A076C(v60, v62 + v61);
  v114 = v58;
  v115 = v57;
  swift_getOpaqueTypeConformance2();
  v63 = v95;
  v64 = v109;
  sub_2669C6234();

  v65 = (*(v96 + 8))(v64, v63);
  *&v139 = MEMORY[0x26D5E3750](v65);
  sub_2669A0704(v59, v60);
  v66 = swift_allocObject();
  sub_2669A076C(v60, v66 + v61);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC1B0, &qword_2669C7BE8);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC1B8, &qword_2669C7BF0);
  sub_26699A174(&qword_2800AC1C0, &qword_2800AC1B0, &qword_2669C7BE8);
  v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC1C8, &qword_2669C7BF8);
  v68 = sub_2669C6564();
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC1D0, &qword_2669C7C00);
  v70 = sub_2669A1D2C(&qword_2800AC1D8, MEMORY[0x277D63DE8]);
  v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC1E0, &qword_2669C7C08);
  v72 = sub_2669A1C20();
  v73 = sub_2669A1CD8();
  v114 = v68;
  v115 = v71;
  v116 = MEMORY[0x277D837D0];
  v117 = v70;
  v118 = v72;
  v119 = v73;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v114 = v68;
  v115 = v69;
  v116 = v70;
  v117 = OpaqueTypeConformance2;
  v75 = swift_getOpaqueTypeConformance2();
  v114 = v67;
  v115 = v75;
  swift_getOpaqueTypeConformance2();
  sub_2669A1D2C(&qword_2800AC208, MEMORY[0x277D55A90]);
  v76 = v111;
  sub_2669C63D4();
  v77 = v110[2];
  v78 = v103;
  v79 = v104;
  v77(v103, v113, v104);
  v80 = v112[2];
  v82 = v105;
  v81 = v106;
  v80(v105, v76, v106);
  v83 = v107;
  v77(v107, v78, v79);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC210, &qword_2669C7C18);
  v80(&v83[*(v84 + 48)], v82, v81);
  v85 = v112[1];
  v85(v111, v81);
  v86 = v110[1];
  v86(v113, v79);
  v85(v82, v81);
  return (v86)(v78, v79);
}

uint64_t sub_2669A0704(uint64_t a1, uint64_t a2)
{
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView();
  (*(*(ContactAttributeMultiResultView - 8) + 16))(a2, a1, ContactAttributeMultiResultView);
  return a2;
}

uint64_t sub_2669A076C(uint64_t a1, uint64_t a2)
{
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView();
  (*(*(ContactAttributeMultiResultView - 8) + 32))(a2, a1, ContactAttributeMultiResultView);
  return a2;
}

uint64_t sub_2669A07D0@<X0>(char *a1@<X8>)
{
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView();
  OUTLINED_FUNCTION_2_2(ContactAttributeMultiResultView);
  v4 = OUTLINED_FUNCTION_1_3(*(v3 + 80));

  return sub_26699FBB4(v4, a1);
}

uint64_t sub_2669A0850(uint64_t a1)
{
  v2 = sub_2669C5B54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for GetContactAttributeMultiResultView() + 20);
  v8 = v7 + *(type metadata accessor for GetContactAttributeViewModel() + 20);
  sub_2669C5A34();
  v9 = sub_2669C5B24();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  sub_2669A62F8(v9, v11);
  return sub_26699BE4C(v9, v11);
}

uint64_t sub_2669A0970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = sub_2669C5814();
  v21[0] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC1C8, &qword_2669C7BF8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  sub_2669A0C18(a1, v21 - v11);
  (*(v4 + 104))(v7, *MEMORY[0x277D62F28], v3);
  v13 = sub_2669C6564();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC1D0, &qword_2669C7C00);
  v15 = sub_2669A1D2C(&qword_2800AC1D8, MEMORY[0x277D63DE8]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC1E0, &qword_2669C7C08);
  v17 = sub_2669A1C20();
  v18 = sub_2669A1CD8();
  v22 = v13;
  v23 = v16;
  v24 = MEMORY[0x277D837D0];
  v25 = v15;
  v26 = v17;
  v27 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_2669C6194();
  (*(v4 + 8))(v7, v21[0]);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2669A0C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v66 = a2;
  v67 = a1;
  v4 = sub_2669C6564();
  v5 = *(v4 - 8);
  v64 = v4;
  v65 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2669C5A64();
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (v9)
  {
    v11 = v9;
  }

  v69 = v10;
  v70 = v11;
  v62[2] = sub_266999FC4();
  v12 = sub_2669C6164();
  v14 = v13;
  v16 = v15;
  v17 = v3 + *(type metadata accessor for GetContactAttributeMultiResultView() + 20);
  v69 = *(v17 + *(type metadata accessor for GetContactAttributeViewModel() + 28));

  v18 = sub_2669C6144();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_26699A018(v12, v14, v16 & 1);

  v72 = MEMORY[0x277CE0BD8];
  v73 = MEMORY[0x277D638E8];
  v25 = swift_allocObject();
  v69 = v25;
  *(v25 + 16) = v18;
  *(v25 + 24) = v20;
  *(v25 + 32) = v22 & 1;
  *(v25 + 40) = v24;
  v26 = v67;
  sub_2669A6574();
  v28 = v27;
  v30 = v29;
  v31 = (v29 >> 40) & 1;
  v97 = v27;
  v98 = v29;
  v99 = BYTE4(v29);
  v100 = BYTE5(v29) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC218, &unk_2669C7C20);
  sub_2669A1DB8(&qword_2800AC220, &qword_2800AC218, &unk_2669C7C20, sub_2669A1E3C);
  v32 = sub_2669C6174();
  sub_2669A20B0(v28, v30, v31);
  v101 = MEMORY[0x277CE11C8];
  v102 = MEMORY[0x277D63A60];
  v97 = v32;
  v33 = sub_2669A7268(v26);
  v35 = v34;
  v91 = v33;
  v93 = BYTE2(v34);
  LODWORD(v31) = BYTE3(v34) & 1;
  v92 = v34;
  v94 = BYTE3(v34) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC288, &unk_2669C8100);
  sub_2669A1DB8(&qword_2800AC290, &qword_2800AC288, &unk_2669C8100, sub_2669A210C);
  v36 = sub_2669C6174();
  sub_2669A2198(v33, v35, v31);
  v96 = MEMORY[0x277D63A60];
  v95 = MEMORY[0x277CE11C8];
  v91 = v36;
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  v37 = sub_2669C5A54();
  if (v38)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0;
  }

  v40 = 0xE000000000000000;
  if (v38)
  {
    v40 = v38;
  }

  v78 = v39;
  v79 = v40;
  v41 = sub_2669C6164();
  v43 = v42;
  v45 = v44;
  v78 = sub_2669C62E4();
  v46 = sub_2669C6144();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_26699A018(v41, v43, v45 & 1);

  v80 = MEMORY[0x277CE0BD8];
  v81 = MEMORY[0x277D638E8];
  v53 = swift_allocObject();
  v78 = v53;
  *(v53 + 16) = v46;
  *(v53 + 24) = v48;
  *(v53 + 32) = v50 & 1;
  *(v53 + 40) = v52;
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  v54 = v63;
  sub_2669C6554();
  v55 = v67;
  sub_26699A920();
  v68 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC1D0, &qword_2669C7C00);
  v56 = sub_2669A1D2C(&qword_2800AC1D8, MEMORY[0x277D63DE8]);
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC1E0, &qword_2669C7C08);
  v58 = sub_2669A1C20();
  v59 = sub_2669A1CD8();
  v60 = v64;
  v69 = v64;
  v70 = v57;
  v71 = MEMORY[0x277D837D0];
  v72 = v56;
  v73 = v58;
  v74 = v59;
  swift_getOpaqueTypeConformance2();
  sub_2669C61C4();
  return (*(v65 + 8))(v54, v60);
}

uint64_t sub_2669A11BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2669C5A94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v3);
  v10 = a2;
  sub_2669C6564();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC1E0, &qword_2669C7C08);
  sub_2669A1D2C(&qword_2800AC1D8, MEMORY[0x277D63DE8]);
  sub_2669A1C20();
  sub_2669A1CD8();
  sub_2669C6264();
}

uint64_t sub_2669A13A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26699A870();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_2669A13D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2669C5FA4();
  sub_2669A1494(v14);
  *&__src[7] = v14[0];
  *&__src[23] = v14[1];
  *&__src[39] = v14[2];
  *&__src[55] = v14[3];
  v3 = sub_2669C6084();
  sub_2669C5D24();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *a1 = v2;
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  result = memcpy((a1 + 17), __src, 0x47uLL);
  *(a1 + 88) = v3;
  *(a1 + 96) = v5;
  *(a1 + 104) = v7;
  *(a1 + 112) = v9;
  *(a1 + 120) = v11;
  *(a1 + 128) = 0;
  return result;
}

uint64_t sub_2669A1494@<X0>(uint64_t a1@<X8>)
{
  sub_2669C5A64();
  sub_266999FC4();
  v2 = sub_2669C6164();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_2669C5A54();
  v9 = sub_2669C6164();
  v11 = v10;
  v12 = v6 & 1;
  v17 = v6 & 1;
  v14 = v13 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v12;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v13 & 1;
  *(a1 + 56) = v15;
  sub_2669A22A8(v2, v4, v12);

  sub_2669A22A8(v9, v11, v14);

  sub_26699A018(v9, v11, v14);

  sub_26699A018(v2, v4, v17);
}

uint64_t sub_2669A15FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, ContactAttributeViewModel);
  }
}

void *sub_2669A16A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, ContactAttributeViewModel);
  }

  return result;
}

void sub_2669A1724()
{
  sub_26699AD38();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GetContactAttributeViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2669A17AC()
{
  result = qword_2800AC150;
  if (!qword_2800AC150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC138, &qword_2669C7AF8);
    sub_26699A174(&qword_2800AC158, &qword_2800AC160, &qword_2669C7BA8);
    sub_26699A174(&qword_2800AC168, &qword_2800AC170, &qword_2669C7BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC150);
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

unint64_t sub_2669A18F0()
{
  result = qword_2800AC1A0;
  if (!qword_2800AC1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC188, &qword_2669C7BD0);
    sub_2669A1D2C(&qword_2800AC1A8, MEMORY[0x277D63D08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC1A0);
  }

  return result;
}

uint64_t sub_2669A19AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC188, &qword_2669C7BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2669A1A14()
{
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView();
  OUTLINED_FUNCTION_2_2(ContactAttributeMultiResultView);
  v2 = OUTLINED_FUNCTION_1_3(*(v1 + 80));

  return sub_2669A0850(v2);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for GetContactAttributeMultiResultView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = (v0 + v3 + v1[7]);
  __swift_destroy_boxed_opaque_existential_0(v5);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
  v7 = ContactAttributeViewModel[5];
  v8 = sub_2669C5B04();
  OUTLINED_FUNCTION_0_1(v8);
  (*(v9 + 8))(v5 + v7);
  v10 = ContactAttributeViewModel[6];
  v11 = sub_2669C5D44();
  OUTLINED_FUNCTION_0_1(v11);
  (*(v12 + 8))(v5 + v10);
  v13 = *(v5 + ContactAttributeViewModel[7]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2669A1BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView();
  OUTLINED_FUNCTION_2_2(ContactAttributeMultiResultView);
  v6 = *(v5 + 80);

  return sub_2669A0970(a1, a2);
}

unint64_t sub_2669A1C20()
{
  result = qword_2800AC1E8;
  if (!qword_2800AC1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC1E0, &qword_2669C7C08);
    sub_26699A174(&qword_2800AC1F0, &qword_2800AC1F8, &qword_2669C7C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC1E8);
  }

  return result;
}

unint64_t sub_2669A1CD8()
{
  result = qword_2800AC200;
  if (!qword_2800AC200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC200);
  }

  return result;
}

uint64_t sub_2669A1D2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2669A1D74()
{
  sub_26699A018(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2669A1DB8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2669A1E3C()
{
  result = qword_2800AC228;
  if (!qword_2800AC228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC230, &unk_2669C80D0);
    sub_2669A1EC8();
    sub_2669A1FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC228);
  }

  return result;
}

unint64_t sub_2669A1EC8()
{
  result = qword_2800AC238;
  if (!qword_2800AC238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC240, &unk_2669C7C30);
    sub_2669A1F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC238);
  }

  return result;
}

unint64_t sub_2669A1F7C()
{
  result = qword_2800AC258;
  if (!qword_2800AC258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC260, &unk_2669C7C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC258);
  }

  return result;
}

unint64_t sub_2669A1FF8()
{
  result = qword_2800AC268;
  if (!qword_2800AC268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC270, &unk_2669C80F0);
    sub_2669A1F4C();
    sub_2669A1DB8(&qword_2800AC278, &qword_2800AC280, &unk_2669C7C50, sub_2669A1F4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC268);
  }

  return result;
}

uint64_t sub_2669A20B0(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2669A20C0(result, a2, BYTE4(a2) & 1);
  }

  return result;
}

uint64_t sub_2669A20C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_2669A20E8(a1, a2, BYTE3(a2) & 1);
  }

  else
  {
    return sub_2669A20D4(a1, a2);
  }
}

uint64_t sub_2669A20DC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2669A20E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_2669A20FC(a1, a2, BYTE2(a2) & 1);
  }

  else
  {
    return sub_2669A20DC(a1, a2, BYTE1(a2) & 1);
  }
}

uint64_t sub_2669A20FC(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2669A20DC(result, a2, BYTE1(a2) & 1);
  }

  return result;
}

unint64_t sub_2669A210C()
{
  result = qword_2800AC298;
  if (!qword_2800AC298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC2A0, &qword_2669C7C60);
    sub_2669A1F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC298);
  }

  return result;
}

uint64_t sub_2669A2198(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2669A21A8(result, a2, BYTE2(a2) & 1);
  }

  return result;
}

uint64_t sub_2669A21A8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_2669A20DC(result, a2, BYTE1(a2) & 1);
  }

  return result;
}

uint64_t sub_2669A21C0()
{
  v1 = sub_2669C5A94();
  OUTLINED_FUNCTION_0_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2669A223C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2669C5A94();
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_1_3(*(v3 + 80));

  return sub_2669A13A4(a1);
}

uint64_t sub_2669A22A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t static Signpost.beginEnabled(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  if (qword_2800ABEB0 != -1)
  {
    OUTLINED_FUNCTION_1_4();
  }

  v4 = qword_2800AC2A8;
  sub_2669C5C54();
  sub_2669C68C4();
  OUTLINED_FUNCTION_2_3();
  sub_2669C5C34();
  v5 = type metadata accessor for Signpost.OpenSignpost();
  return OUTLINED_FUNCTION_3_2(v5);
}

uint64_t sub_2669A23AC()
{
  sub_2669A28B0();
  result = sub_2669C6964();
  qword_2800AC2A8 = result;
  return result;
}

uint64_t type metadata accessor for Signpost.OpenSignpost()
{
  result = qword_2800AC2B0;
  if (!qword_2800AC2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id static Signpost.contactsLog.getter()
{
  if (qword_2800ABEB0 != -1)
  {
    OUTLINED_FUNCTION_1_4();
  }

  v1 = qword_2800AC2A8;

  return v1;
}

uint64_t static Signpost.begin(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  if (qword_2800ABEB0 != -1)
  {
    OUTLINED_FUNCTION_1_4();
  }

  v4 = qword_2800AC2A8;
  sub_2669C5C54();
  sub_2669C68C4();
  OUTLINED_FUNCTION_2_3();
  sub_2669C5C44();
  v5 = type metadata accessor for Signpost.OpenSignpost();
  return OUTLINED_FUNCTION_3_2(v5);
}

Swift::Void __swiftcall Signpost.OpenSignpost.end()()
{
  sub_2669C68B4();
  if (qword_2800ABEB0 != -1)
  {
    OUTLINED_FUNCTION_1_4();
  }

  v1 = (v0 + *(type metadata accessor for Signpost.OpenSignpost() + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);

  sub_2669C5C44();
}

_BYTE *storeEnumTagSinglePayload for Signpost(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2669A26D8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2669A2724(uint64_t a1, uint64_t a2)
{
  v4 = sub_2669C5C64();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2669A2780(uint64_t a1, uint64_t a2)
{
  v4 = sub_2669C5C64();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2669A27CC()
{
  result = sub_2669C5C64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t getEnumTagSinglePayload for SignpostName(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SignpostName(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_2669A28B0()
{
  result = qword_2800AC2C0;
  if (!qword_2800AC2C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800AC2C0);
  }

  return result;
}

void OUTLINED_FUNCTION_0_2(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_1_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t result)
{
  v5 = v1 + *(result + 20);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t sub_2669A2950()
{
  v0 = sub_2669C60E4();
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0x4040000000000000;
  v8 = *MEMORY[0x277CE0A68];
  v9 = *(v3 + 104);
  v9(v7, v8, v0);
  sub_26699BF8C();
  sub_2669C5D84();
  v10 = *(type metadata accessor for SiriContactsGCAButtonStyle() + 20);
  v13 = 0x4030000000000000;
  v9(v7, v8, v0);
  return sub_2669C5D84();
}

uint64_t type metadata accessor for SiriContactsGCAButtonStyle()
{
  result = qword_2800AC2D0;
  if (!qword_2800AC2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2669A2B00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2669A2B68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void sub_2669A2BC0()
{
  sub_2669A2C2C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2669A2C2C()
{
  if (!qword_2800AC2E0)
  {
    sub_26699BF8C();
    v0 = sub_2669C5DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2800AC2E0);
    }
  }
}

uint64_t sub_2669A2CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48[1] = a1;
  v52 = a2;
  v2 = sub_2669C5F74();
  v50 = OUTLINED_FUNCTION_2(v2);
  v51 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2E8, &qword_2669C81D0) - 8) + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v8);
  v10 = v48 - v9;
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2F0, &qword_2669C7D50) - 8);
  v12 = *(*v11 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v13);
  v15 = v48 - v14;
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2F8, &qword_2669C7D58) - 8);
  v17 = *(*v16 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v18);
  v20 = v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC300, &qword_2669C7D60);
  OUTLINED_FUNCTION_0(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v24);
  v26 = v48 - v25;
  sub_2669C6024();
  v27 = *(type metadata accessor for SiriContactsGCAButtonStyle() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  sub_2669C5D94();
  v28 = sub_2669C60A4();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v28);
  v29 = sub_2669C60C4();
  sub_26699A428(v10, &qword_2800AC2E8, &qword_2669C81D0);
  KeyPath = swift_getKeyPath();
  v31 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC308, &qword_2669C7D98) + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  sub_2669C5D94();
  sub_2669C5D94();
  sub_2669C63F4();
  sub_2669C5DB4();
  v32 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC310, &qword_2669C7DA0) + 36)];
  v33 = v54;
  *v32 = v53;
  *(v32 + 1) = v33;
  *(v32 + 2) = v55;
  v34 = sub_2669C5FD4();
  LOBYTE(v29) = sub_2669C6084();
  v35 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC318, &qword_2669C7DA8) + 36)];
  *v35 = v34;
  v35[4] = v29;
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC320, &unk_2669C7DB0) + 36)] = 256;
  v15[v11[11]] = 0;
  if (sub_2669C6034())
  {
    v36 = 0.5;
  }

  else
  {
    v36 = 0.8;
  }

  sub_2669A3150(v15, v20, &qword_2800AC2F0, &qword_2669C7D50);
  *&v20[v16[11]] = v36;
  if (sub_2669C6034())
  {
    v37 = 0.98;
  }

  else
  {
    v37 = 1.0;
  }

  sub_2669C6404();
  v39 = v38;
  v41 = v40;
  sub_2669A3150(v20, v26, &qword_2800AC2F8, &qword_2669C7D58);
  v42 = &v26[*(v21 + 36)];
  *v42 = v37;
  *(v42 + 1) = v37;
  *(v42 + 2) = v39;
  *(v42 + 3) = v41;
  v43 = v49;
  sub_2669C5F64();
  sub_2669A31B0();
  OUTLINED_FUNCTION_0_3();
  sub_2669A3664(v44, v45);
  v46 = v50;
  sub_2669C6204();
  (*(v51 + 8))(v43, v46);
  return sub_26699A428(v26, &qword_2800AC300, &qword_2669C7D60);
}

uint64_t sub_2669A3150(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2669A31B0()
{
  result = qword_2800AC328;
  if (!qword_2800AC328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC300, &qword_2669C7D60);
    sub_2669A323C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC328);
  }

  return result;
}

unint64_t sub_2669A323C()
{
  result = qword_2800AC330;
  if (!qword_2800AC330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC2F8, &qword_2669C7D58);
    sub_2669A32C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC330);
  }

  return result;
}

unint64_t sub_2669A32C8()
{
  result = qword_2800AC338;
  if (!qword_2800AC338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC2F0, &qword_2669C7D50);
    sub_2669A3380();
    sub_26699A174(&qword_2800AC388, &qword_2800AC390, qword_2669C7DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC338);
  }

  return result;
}

unint64_t sub_2669A3380()
{
  result = qword_2800AC340;
  if (!qword_2800AC340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC320, &unk_2669C7DB0);
    sub_2669A3438();
    sub_26699A174(&qword_2800AC378, &qword_2800AC380, &qword_2669C7DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC340);
  }

  return result;
}

unint64_t sub_2669A3438()
{
  result = qword_2800AC348;
  if (!qword_2800AC348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC318, &qword_2669C7DA8);
    sub_2669A34F0();
    sub_26699A174(&qword_2800AC368, &qword_2800AC370, &qword_2669C7DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC348);
  }

  return result;
}

unint64_t sub_2669A34F0()
{
  result = qword_2800AC350;
  if (!qword_2800AC350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC310, &qword_2669C7DA0);
    sub_2669A357C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC350);
  }

  return result;
}

unint64_t sub_2669A357C()
{
  result = qword_2800AC358;
  if (!qword_2800AC358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC308, &qword_2669C7D98);
    sub_2669A3664(&qword_2800AC360, MEMORY[0x277CDE278]);
    sub_26699A174(&qword_2800ABFE0, &qword_2800ABFE8, &qword_2669C7760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC358);
  }

  return result;
}

uint64_t sub_2669A3664(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2669A36AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC300, &qword_2669C7D60);
  sub_2669C5F74();
  sub_2669A31B0();
  OUTLINED_FUNCTION_0_3();
  sub_2669A3664(v0, v1);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2669A3788()
{
  result = qword_2800AC3A0;
  if (!qword_2800AC3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC3A0);
  }

  return result;
}

BOOL sub_2669A37DC()
{
  sub_2669C5E04();
  sub_2669A45BC();
  sub_2669C67D4();
  sub_2669C6804();
  return v2 == v1;
}

uint64_t sub_2669A3848(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_2669A37DC();
  if ((result & 1) == 0)
  {
    sub_2669A3998(a5);
    v10 = v9;
    v11 = sub_2669A3F14();
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_0_4();
    v15 = sub_2669A3F84(sub_2669A4648, v12, v13, v14);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 32);
      v18 = 0.0;
      do
      {
        v19 = *v17++;
        v18 = v18 + v19;
        --v16;
      }

      while (v16);
    }

    sub_2669C5E04();
    sub_2669A45BC();
    OUTLINED_FUNCTION_1_5();
    sub_2669C67D4();
    OUTLINED_FUNCTION_1_5();
    sub_2669C6804();
    result = OUTLINED_FUNCTION_3_4();
    if ((a2 & 1) != 0 || v10 >= *&a1)
    {
      OUTLINED_FUNCTION_1_5();
      sub_2669C67D4();
      OUTLINED_FUNCTION_1_5();
      sub_2669C6804();
      return OUTLINED_FUNCTION_3_4();
    }
  }

  return result;
}

uint64_t sub_2669A3998(uint64_t a1)
{
  *&v29.f64[0] = sub_2669C5DF4();
  v2 = *(*&v29.f64[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](*&v29.f64[0]);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2669C5E04();
  sub_2669A45BC();
  v6 = sub_2669C67E4();
  v8 = MEMORY[0x277D84F90];
  if (v6)
  {
    v9 = v6;
    v32 = MEMORY[0x277D84F90];
    sub_2669C0F78(0, v6 & ~(v6 >> 63), 0);
    v8 = v32;
    result = sub_2669C67D4();
    if (v9 < 0)
    {
      __break(1u);
      return result;
    }

    v28 = (v2 + 16);
    do
    {
      v11 = sub_2669C6824();
      v12 = v29.f64[0];
      (*v28)(v5);
      v11(v31, 0);
      sub_2669C5E44();
      v31[0] = v13 & 1;
      v30 = v14 & 1;
      sub_2669C5DC4();
      v16 = v15;
      v18 = v17;
      (*(v2 + 8))(v5, COERCE_FLOAT64_T(*&v12));
      v32 = v8;
      v19 = a1;
      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2669C0F78(v20 > 1, v21 + 1, 1);
        v8 = v32;
      }

      *(v8 + 16) = v21 + 1;
      v22 = v8 + 16 * v21;
      *(v22 + 32) = v16;
      *(v22 + 40) = v18;
      sub_2669C6814();
      --v9;
      a1 = v19;
    }

    while (v9);
  }

  v23 = *(v8 + 16);
  if (v23)
  {
    v24 = (v8 + 32);
    v25 = 0uLL;
    do
    {
      v26 = *v24++;
      v25 = vbslq_s8(vcgeq_f64(v26, v25), v26, v25);
      --v23;
    }

    while (v23);
    v29 = v25;
  }

  else
  {
    v7.f64[0] = 0.0;
    v29 = v7;
  }
}

uint64_t sub_2669A3C24(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2669C5DF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2669A37DC();
  if ((result & 1) == 0)
  {
    sub_2669A3998(a5);
    v15 = v14;
    v17 = v16;
    v18 = sub_2669A3F14();
    MEMORY[0x28223BE20](v18);
    OUTLINED_FUNCTION_0_4();
    v22 = sub_2669A3F84(sub_2669A459C, v19, v20, v21);
    v23 = v22;
    if ((a2 & 1) == 0 && v15 < *&a1)
    {
      v24 = *(v22 + 16);
      if (v24)
      {
        v25 = (v22 + 32);
        v26 = 0.0;
        do
        {
          v27 = *v25++;
          v26 = v26 + v27;
          --v24;
        }

        while (v24);
      }

      else
      {
        v26 = 0.0;
      }

      v28 = *&a1 - v26;
      sub_2669C5E04();
      sub_2669A45BC();
      sub_2669C67D4();
      sub_2669C6804();
      v15 = v28 / sub_2669C67F4();
    }

    v40.origin.x = OUTLINED_FUNCTION_2_4();
    MinX = CGRectGetMinX(v40);
    result = sub_2669A3F14();
    if (result == v30)
    {
    }

    v31 = result;
    v32 = v30;
    if (v30 < result)
    {
      __break(1u);
    }

    else if (result < v30)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        v33 = *(v23 + 16);
        if (result < v33 && v30 - 1 < v33)
        {
          v37 = v17;
          v35 = MinX + v15 * 0.5;
          v36 = (v9 + 8);
          do
          {
            sub_2669C5E14();
            v41.origin.x = OUTLINED_FUNCTION_2_4();
            CGRectGetMidY(v41);
            sub_2669C6404();
            v39 = 0;
            v38 = 0;
            sub_2669C5DD4();
            (*v36)(v12, v8);
            v35 = v35 + v15 + *(v23 + 8 * v31++ + 32);
          }

          while (v32 != v31);
        }

LABEL_25:
        __break(1u);
        return result;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_2669A3F14()
{
  sub_2669C5E04();
  sub_2669A45BC();
  sub_2669C67D4();
  sub_2669C6804();
  result = v2;
  if (v1 < v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2669A3F84(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_2669C0F98(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v6 = v18;
    while (v9 < v5)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_15;
      }

      v16 = a3 + v9;
      a1(&v17, &v16);
      if (v4)
      {
        goto LABEL_20;
      }

      v11 = v17;
      v18 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2669C0F98(v12 > 1, v13 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_16;
      }

      ++v9;
      if ((a3 + v9 - 1) >= a4)
      {
        goto LABEL_17;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_2669A40F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v3 = sub_2669C5D74();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v26 = sub_2669C5DF4();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v26);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = *a1;
  sub_2669C5E04();
  sub_2669A45BC();
  sub_2669C67D4();
  sub_2669C6804();
  result = sub_2669C67F4();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v18 = 0;
    if (v16 < result - 1)
    {
      sub_2669C5E14();
      sub_2669C5DE4();
      v19 = *(v9 + 8);
      v20 = v15;
      v21 = v26;
      v19(v20, v26);
      sub_2669C5E14();
      v22 = v27;
      sub_2669C5DE4();
      v19(v13, v21);
      sub_2669C5D64();
      v18 = v23;
      v24 = v29;
      v25 = *(v28 + 8);
      v25(v22, v29);
      result = (v25)(v8, v24);
    }

    *v30 = v18;
  }

  return result;
}

void (*sub_2669A4484(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_2669C5D04();
  return sub_2669A44F8;
}

void sub_2669A44F8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_2669A4548()
{
  result = qword_2800AC3A8;
  if (!qword_2800AC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC3A8);
  }

  return result;
}

unint64_t sub_2669A45BC()
{
  result = qword_2800AC3B0;
  if (!qword_2800AC3B0)
  {
    sub_2669C5E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC3B0);
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return sub_2669C67F4();
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_2669A46D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 11))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_2669A4714(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2669A4788@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v228 = a2;
  v221 = a1;
  v227 = a3;
  ContactQuickActionButtonLabelStyle = type metadata accessor for GetContactQuickActionButtonLabelStyle(0);
  v4 = OUTLINED_FUNCTION_0_5(ContactQuickActionButtonLabelStyle, &__src[4]);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_1(v8 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3B8, &qword_2669C7FD8);
  OUTLINED_FUNCTION_0_5(v9, &__src[5]);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3C0, &qword_2669C7FE0);
  OUTLINED_FUNCTION_0_5(v14, &__src[7]);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3C8, &qword_2669C7FE8);
  OUTLINED_FUNCTION_0_5(v19, &__src[8]);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3D0, &qword_2669C7FF0);
  OUTLINED_FUNCTION_0_5(v24, v231);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3D8, &qword_2669C7FF8);
  OUTLINED_FUNCTION_0_5(v29, &__src[12]);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1(v33);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3E0, &qword_2669C8000);
  v34 = OUTLINED_FUNCTION_0(v226);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4_1(&v203[-v38]);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3E8, &qword_2669C8008);
  OUTLINED_FUNCTION_0(v224);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_9();
  v225 = v42;
  v223 = sub_2669C5D44();
  v43 = OUTLINED_FUNCTION_2(v223);
  v222 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_4_1(&v203[-v48]);
  v217 = sub_2669C5F54();
  v49 = OUTLINED_FUNCTION_2(v217);
  v216 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_1(v54 - v53);
  v55 = sub_2669C60E4();
  v56 = OUTLINED_FUNCTION_2(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_1();
  v63 = v62 - v61;
  ContactQuickActionButtonLabelStyleIconOnly = type metadata accessor for GetContactQuickActionButtonLabelStyleIconOnly(0);
  v65 = OUTLINED_FUNCTION_0_5(ContactQuickActionButtonLabelStyleIconOnly, &v224);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_1_1();
  v70 = v69 - v68;
  v71 = sub_2669C6044();
  v72 = OUTLINED_FUNCTION_2(v71);
  v74 = v73;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_1_1();
  v79 = v78 - v77;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3F0, &qword_2669C8010);
  OUTLINED_FUNCTION_0_5(v80, &v223);
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v83);
  v85 = &v203[-v84];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3F8, &qword_2669C8018);
  OUTLINED_FUNCTION_0_5(v86, &v225);
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v89);
  v91 = &v203[-v90];
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC400, &qword_2669C8020);
  OUTLINED_FUNCTION_0_5(v92, &v227);
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC408, &qword_2669C8028);
  OUTLINED_FUNCTION_0_5(v97, &v226);
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1(v101);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC410, &qword_2669C8030);
  v103 = OUTLINED_FUNCTION_0_5(v102, &v232);
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_4_1(&v203[-v107]);
  sub_2669C6054();
  if ((v228 & 0x100) != 0)
  {
    __src[0] = 0x4030000000000000;
    (*(v58 + 104))(v63, *MEMORY[0x277CE0A68], v55);
    sub_26699BF8C();
    sub_2669C5D84();
    OUTLINED_FUNCTION_5();
    sub_2669A5A88(v124, v125);
    sub_2669A5A88(&qword_2800AC460, type metadata accessor for GetContactQuickActionButtonLabelStyleIconOnly);
    sub_2669C6204();
    sub_2669A5F4C(v70, type metadata accessor for GetContactQuickActionButtonLabelStyleIconOnly);
    (*(v74 + 8))(v79, v71);
    sub_2669C6084();
    OUTLINED_FUNCTION_7_0(&v223);
    v127 = &v85[v126];
    *v127 = v128;
    __asm { FMOV            V0.2D, #12.0 }

    *(v127 + 8) = _Q0;
    v219 = _Q0;
    *(v127 + 24) = _Q0;
    v127[40] = 0;
    sub_2669C63F4();
    OUTLINED_FUNCTION_10();
    sub_2669A5FA4(v85, v91, &qword_2800AC3F0, &qword_2669C8010);
    OUTLINED_FUNCTION_7_0(&v225);
    memcpy(&v91[v134], __src, 0x70uLL);
    v135 = v228;
    v136 = v91;
    if (v228)
    {
      v137 = v221;
    }

    else
    {
      v172 = v221;

      sub_2669C6874();
      v173 = sub_2669C6064();
      OUTLINED_FUNCTION_16(v173, &dword_266996000, v174, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

      sub_2669C5F44();
      swift_getAtKeyPath();
      sub_2669A56B0(v172, 0);
      v175 = OUTLINED_FUNCTION_11();
      v176(v175);
      v137 = v229;
    }

    if (v137)
    {
      v177 = 1.0;
    }

    else
    {
      v177 = 0.5;
    }

    v178 = v204;
    sub_2669A5FA4(v136, v204, &qword_2800AC3F8, &qword_2669C8018);
    OUTLINED_FUNCTION_7_0(&v227);
    *(v178 + v179) = v177;
    OUTLINED_FUNCTION_7_0(&v226);
    v180 = v206;
    sub_2669C63E4();
    v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC428, &qword_2669C8068);
    v182 = *(OUTLINED_FUNCTION_17(v181) + 20);
    v183 = *MEMORY[0x277CE0118];
    v184 = sub_2669C5F84();
    OUTLINED_FUNCTION_0(v184);
    (*(v185 + 104))(v136 + v182, v183);
    OUTLINED_FUNCTION_14(v219);
    sub_2669A5FA4(v178, v180, &qword_2800AC400, &qword_2669C8020);
    KeyPath = swift_getKeyPath();
    v187 = v222;
    v188 = MEMORY[0x277CDF3C0];
    if ((v135 & 0x10000) != 0)
    {
      v188 = MEMORY[0x277CDF3D0];
    }

    v189 = v212;
    v190 = v223;
    (*(v222 + 104))(v212, *v188, v223);
    v191 = v205;
    v192 = (v205 + *(v220 + 36));
    v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC430, &qword_2669C80A0);
    (*(v187 + 32))(v192 + *(v193 + 28), v189, v190);
    *v192 = KeyPath;
    sub_2669A5FA4(v180, v191, &qword_2800AC408, &qword_2669C8028);
    v161 = &qword_2800AC410;
    v162 = &qword_2669C8030;
    v163 = v207;
    OUTLINED_FUNCTION_13();
    sub_2669A5FA4(v194, v195, v196, v197);
    OUTLINED_FUNCTION_13();
    sub_2669A5FF4(v198, v199, v200, v201);
    swift_storeEnumTagMultiPayload();
    sub_2669A56C4();
    sub_2669A5AD0();
  }

  else
  {
    v108 = v208;
    sub_2669B9574();
    OUTLINED_FUNCTION_5();
    sub_2669A5A88(v109, v110);
    sub_2669A5A88(&qword_2800AC420, type metadata accessor for GetContactQuickActionButtonLabelStyle);
    v111 = v210;
    sub_2669C6204();
    sub_2669A5F4C(v108, type metadata accessor for GetContactQuickActionButtonLabelStyle);
    (*(v74 + 8))(v79, v71);
    sub_2669C6084();
    OUTLINED_FUNCTION_7_0(&__src[5]);
    v113 = v111 + v112;
    *v113 = v114;
    *(v113 + 8) = xmmword_2669C7EE0;
    *(v113 + 24) = xmmword_2669C7EE0;
    *(v113 + 40) = 0;
    sub_2669C63F4();
    OUTLINED_FUNCTION_10();
    v115 = v111;
    v116 = v211;
    sub_2669A5FA4(v115, v211, &qword_2800AC3B8, &qword_2669C7FD8);
    OUTLINED_FUNCTION_7_0(&__src[7]);
    memcpy((v116 + v117), __src, 0x70uLL);
    v118 = swift_getKeyPath();
    v119 = v209;
    sub_2669A5FA4(v116, v209, &qword_2800AC3C0, &qword_2669C7FE0);
    OUTLINED_FUNCTION_7_0(&__src[8]);
    v121 = v119 + v120;
    *v121 = v118;
    *(v121 + 8) = 1;
    *(v121 + 16) = 0;
    v122 = v228;
    if (v228)
    {
      v123 = v221;
    }

    else
    {
      v138 = v221;

      sub_2669C6874();
      v139 = sub_2669C6064();
      OUTLINED_FUNCTION_16(v139, &dword_266996000, v140, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

      sub_2669C5F44();
      swift_getAtKeyPath();
      sub_2669A56B0(v138, 0);
      v141 = OUTLINED_FUNCTION_11();
      v142(v141);
      v123 = v229;
    }

    if (v123)
    {
      v143 = 1.0;
    }

    else
    {
      v143 = 0.5;
    }

    v144 = v214;
    sub_2669A5FA4(v119, v214, &qword_2800AC3C8, &qword_2669C7FE8);
    OUTLINED_FUNCTION_7_0(v231);
    *(v144 + v145) = v143;
    OUTLINED_FUNCTION_7_0(&__src[12]);
    v146 = v218;
    sub_2669C63E4();
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC428, &qword_2669C8068);
    v148 = *(OUTLINED_FUNCTION_17(v147) + 20);
    v149 = *MEMORY[0x277CE0118];
    v150 = sub_2669C5F84();
    OUTLINED_FUNCTION_0(v150);
    (*(v151 + 104))(v119 + v148, v149);
    __asm { FMOV            V0.2D, #12.0 }

    OUTLINED_FUNCTION_14(_Q0);
    sub_2669A5FA4(v144, v146, &qword_2800AC3D0, &qword_2669C7FF0);
    v153 = swift_getKeyPath();
    v154 = v222;
    v155 = MEMORY[0x277CDF3C0];
    if ((v122 & 0x10000) != 0)
    {
      v155 = MEMORY[0x277CDF3D0];
    }

    v156 = v213;
    v157 = v223;
    (*(v222 + 104))(v213, *v155, v223);
    v158 = v215;
    v159 = (v215 + *(v226 + 36));
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC430, &qword_2669C80A0);
    (*(v154 + 32))(v159 + *(v160 + 28), v156, v157);
    *v159 = v153;
    sub_2669A5FA4(v146, v158, &qword_2800AC3D8, &qword_2669C7FF8);
    v161 = &qword_2800AC3E0;
    v162 = &qword_2669C8000;
    v163 = v219.n128_u64[0];
    OUTLINED_FUNCTION_13();
    sub_2669A5FA4(v164, v165, v166, v167);
    OUTLINED_FUNCTION_13();
    sub_2669A5FF4(v168, v169, v170, v171);
    swift_storeEnumTagMultiPayload();
    sub_2669A56C4();
    sub_2669A5AD0();
  }

  sub_2669C5FB4();
  return sub_26699A428(v163, v161, v162);
}

uint64_t sub_2669A566C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 10))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_2669A4788(*v1, v2 | v3 | *(v1 + 8), a1);
}

uint64_t sub_2669A56B0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_2669A56C4()
{
  result = qword_2800AC438;
  if (!qword_2800AC438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC410, &qword_2669C8030);
    sub_2669A577C();
    sub_26699A174(&qword_2800AC470, &qword_2800AC430, &qword_2669C80A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC438);
  }

  return result;
}

unint64_t sub_2669A577C()
{
  result = qword_2800AC440;
  if (!qword_2800AC440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC408, &qword_2669C8028);
    sub_2669A5834();
    sub_26699A174(&qword_2800AC468, &qword_2800AC428, &qword_2669C8068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC440);
  }

  return result;
}

unint64_t sub_2669A5834()
{
  result = qword_2800AC448;
  if (!qword_2800AC448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC400, &qword_2669C8020);
    sub_2669A58C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC448);
  }

  return result;
}

unint64_t sub_2669A58C0()
{
  result = qword_2800AC450;
  if (!qword_2800AC450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC3F8, &qword_2669C8018);
    sub_2669A594C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC450);
  }

  return result;
}

unint64_t sub_2669A594C()
{
  result = qword_2800AC458;
  if (!qword_2800AC458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC3F0, &qword_2669C8010);
    sub_2669C6044();
    type metadata accessor for GetContactQuickActionButtonLabelStyleIconOnly(255);
    sub_2669A5A88(&qword_2800AC418, MEMORY[0x277CDE500]);
    sub_2669A5A88(&qword_2800AC460, type metadata accessor for GetContactQuickActionButtonLabelStyleIconOnly);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC458);
  }

  return result;
}

uint64_t sub_2669A5A88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2669A5AD0()
{
  result = qword_2800AC478;
  if (!qword_2800AC478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC3E0, &qword_2669C8000);
    sub_2669A5B88();
    sub_26699A174(&qword_2800AC470, &qword_2800AC430, &qword_2669C80A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC478);
  }

  return result;
}

unint64_t sub_2669A5B88()
{
  result = qword_2800AC480;
  if (!qword_2800AC480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC3D8, &qword_2669C7FF8);
    sub_2669A5C40();
    sub_26699A174(&qword_2800AC468, &qword_2800AC428, &qword_2669C8068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC480);
  }

  return result;
}

unint64_t sub_2669A5C40()
{
  result = qword_2800AC488;
  if (!qword_2800AC488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC3D0, &qword_2669C7FF0);
    sub_2669A5CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC488);
  }

  return result;
}

unint64_t sub_2669A5CCC()
{
  result = qword_2800AC490;
  if (!qword_2800AC490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC3C8, &qword_2669C7FE8);
    sub_2669A5D84();
    sub_26699A174(&qword_2800AC4A8, &qword_2800AC4B0, &qword_2669C80A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC490);
  }

  return result;
}

unint64_t sub_2669A5D84()
{
  result = qword_2800AC498;
  if (!qword_2800AC498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC3C0, &qword_2669C7FE0);
    sub_2669A5E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC498);
  }

  return result;
}

unint64_t sub_2669A5E10()
{
  result = qword_2800AC4A0;
  if (!qword_2800AC4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC3B8, &qword_2669C7FD8);
    sub_2669C6044();
    type metadata accessor for GetContactQuickActionButtonLabelStyle(255);
    sub_2669A5A88(&qword_2800AC418, MEMORY[0x277CDE500]);
    sub_2669A5A88(&qword_2800AC420, type metadata accessor for GetContactQuickActionButtonLabelStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC4A0);
  }

  return result;
}

uint64_t sub_2669A5F4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2669A5FA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_15(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2669A5FF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_15(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

unint64_t sub_2669A6048()
{
  result = qword_2800AC4B8;
  if (!qword_2800AC4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC4C0, &qword_2669C80B0);
    sub_2669A56C4();
    sub_2669A5AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC4B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10()
{

  return MEMORY[0x2821314A8](0, 1, 0, 1, 0x7FF0000000000000, 0, 0, 1, 0);
}

uint64_t OUTLINED_FUNCTION_11()
{
  v2 = *(*(v1 - 328) + 8);
  result = v0;
  v4 = *(v1 - 320);
  return result;
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x282200C58](v4, a2, v5, a4, 128, 2);
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1)
{
  v3 = v1 + *(a1 + 52);

  return MEMORY[0x282131468](0);
}

uint64_t sub_2669A6218@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_2669AC930(a1);
  if (v6)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v7 = sub_2669AC970(&v12, result, v5, 0, a1);
    v8 = v11;
    v10 = *(&v12 + 1);
    v9 = v12;

    sub_26699BF34(v9, v10);

    result = sub_26699BE60(v9, v10);
  }

  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;
  return result;
}

void sub_2669A62FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v3 = sub_2669C5C94();
    __swift_project_value_buffer(v3, qword_2800ACC88);
    oslog = sub_2669C5C74();
    v4 = sub_2669C6864();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_266996000, oslog, v4, "#GetContactAttributeButtonableView could not obtain direct invocation for button press", v5, 2u);
      MEMORY[0x26D5E4D50](v5, -1, -1);
    }

LABEL_16:

    return;
  }

  sub_26699BEF0();
  v6 = OUTLINED_FUNCTION_3();
  sub_26699BF34(v6, v7);
  OUTLINED_FUNCTION_3();
  v8 = sub_2669C6844();
  if (!v8)
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v13 = sub_2669C5C94();
    __swift_project_value_buffer(v13, qword_2800ACC88);
    oslog = sub_2669C5C74();
    v14 = sub_2669C6864();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_266996000, oslog, v14, "#GetContactAttributeButtonableView could not convert direct invocation to actionable command", v15, 2u);
      MEMORY[0x26D5E4D50](v15, -1, -1);
    }

    v16 = OUTLINED_FUNCTION_3();
    sub_26699BE4C(v16, v17);
    goto LABEL_16;
  }

  if (*v2)
  {
    v9 = v8;
    v10 = *v2;
    sub_2669C65C4();

    v11 = OUTLINED_FUNCTION_3();

    sub_26699BE4C(v11, v12);
  }

  else
  {
    v18 = *(v2 + 8);
    sub_2669C65D4();
    sub_2669AC684(&qword_2800AC010, MEMORY[0x277D63F60]);
    sub_2669C5E74();
    __break(1u);
  }
}

void sub_2669A65A0()
{
  OUTLINED_FUNCTION_35();
  v141 = v1;
  v143 = v2;
  v144 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  OUTLINED_FUNCTION_2_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v8);
  v142 = &v130 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  v11 = OUTLINED_FUNCTION_2(v10);
  v137 = v12;
  v138 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v15);
  v17 = &v130 - v16;
  v18 = sub_2669C5B54();
  v19 = OUTLINED_FUNCTION_2(v18);
  v139 = v20;
  v140 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8();
  v135 = v23;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  v132 = &v130 - v25;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  v133 = &v130 - v27;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v30 = &v130 - v29;
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
  v32 = OUTLINED_FUNCTION_0(ContactAttributeViewModel);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8();
  v134 = v35;
  OUTLINED_FUNCTION_29();
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v130 - v38;
  MEMORY[0x28223BE20](v37);
  v131 = &v130 - v40;
  OUTLINED_FUNCTION_29();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v130 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v130 - v45;
  v47 = sub_2669C5A44();
  v48 = OUTLINED_FUNCTION_2(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_1();
  v55 = v54 - v53;
  v136 = v4;
  sub_2669C5A84();
  v56 = (*(v50 + 88))(v55, v47);
  if (v56 == *MEMORY[0x277D55A78])
  {
    v57 = *(v143(0) + 20);
    OUTLINED_FUNCTION_2_5();
    v58 = v144;
    sub_2669ACA10();
    v59 = &v39[*(ContactAttributeViewModel + 20)];
    sub_2669C5AE4();
    v60 = v138;
    v61 = sub_2669C5964();
    (*(v137 + 8))(v17, v60);
    v62 = sub_2669C6914();

    OUTLINED_FUNCTION_0_6();
    sub_2669AC868(v39, v63);
    if (v62)
    {
      v64 = v134;
      sub_2669ACA10();
      v65 = v64 + *(ContactAttributeViewModel + 20);
      v66 = v135;
      sub_2669C5A34();
      OUTLINED_FUNCTION_0_6();
      sub_2669AC868(v64, v67);
      sub_2669C5B44();
      OUTLINED_FUNCTION_14_0();
      v68(v66);
      sub_2669A6218(ContactAttributeViewModel, &v145);

      if (v146)
      {
        v69 = v147;
      }

      else
      {
        v69 = 0xF000000000000000;
      }

      v89 = sub_2669C57C4();
      v90 = v142;
      __swift_storeEnumTagSinglePayload(v142, 1, 1, v89);
      v91 = OUTLINED_FUNCTION_16_0();
      v141(v91);
      v92 = OUTLINED_FUNCTION_11_0();
      sub_26699BE4C(v92, v69);
      sub_2669AC1BC(v90, &qword_2800AC540);
      v148 = v58;
      LOWORD(v149) = v58 & 0x1FF;
      BYTE2(v149) = 0;
    }

    else
    {
      v148 = 0;
      LOWORD(v149) = 0;
      BYTE2(v149) = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC250, &unk_2669C80E0);
    sub_2669A1F4C();
    sub_2669C5FB4();
    LOBYTE(v17) = BYTE2(v146);
    v148 = v145;
    LOWORD(v149) = v146;
    BYTE2(v149) = BYTE2(v146) != 0;
    HIBYTE(v149) = 1;
    v93 = OUTLINED_FUNCTION_5_0();
    sub_2669AC8BC(v93, v94, v95);
    v96 = OUTLINED_FUNCTION_5_0();
    sub_2669AC8BC(v96, v97, v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC250, &unk_2669C80E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC280, &unk_2669C7C50);
    sub_2669A1F4C();
    OUTLINED_FUNCTION_9_0(&qword_2800AC278);
    OUTLINED_FUNCTION_6_0();
    sub_2669C5FB4();
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_19(v99);
    LOBYTE(v150) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC240, &unk_2669C7C30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC270, &unk_2669C80F0);
    sub_2669A1EC8();
    sub_2669A1FF8();
    OUTLINED_FUNCTION_6_0();
    sub_2669C5FB4();
    v100 = v145;
    v101 = v146;
    v102 = BYTE4(v146);
    v148 = v145;
    LOBYTE(v150) = BYTE4(v146) != 0;
    v149 = v146;
    HIBYTE(v150) = 0;
    sub_2669AC8CC(v145, v146, SBYTE4(v146), sub_2669AC90C, sub_2669AC39C, sub_2669AC8BC);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC230, &unk_2669C80D0);
    sub_2669A1E3C();
    sub_2669C5FB4();
    v103 = OUTLINED_FUNCTION_5_0();
    sub_2669A20FC(v103, v104, v105);
    sub_2669AC8CC(v100, v101, v102, sub_2669A20D4, sub_2669A20DC, sub_2669A20FC);
    v106 = OUTLINED_FUNCTION_5_0();
    sub_2669A20FC(v106, v107, v108);
    goto LABEL_30;
  }

  if (v56 == *MEMORY[0x277D55A70])
  {
    v70 = *(v143(0) + 20);
    OUTLINED_FUNCTION_2_5();
    sub_2669ACA10();
    v71 = &v46[*(ContactAttributeViewModel + 20)];
    sub_2669C5A34();
    OUTLINED_FUNCTION_0_6();
    sub_2669AC868(v46, v72);
    sub_2669C5B14();
    OUTLINED_FUNCTION_14_0();
    v73(v30);
    v74 = sub_2669C5A74();
    LOBYTE(v17) = v75;
    if (*(ContactAttributeViewModel + 16))
    {
      sub_2669BB76C(v74, v75);
      OUTLINED_FUNCTION_11_0();

      if (v50)
      {
        OUTLINED_FUNCTION_10_0();

LABEL_23:
        v109 = sub_2669C57C4();
        OUTLINED_FUNCTION_36(v109, v110, v111, v109);
        OUTLINED_FUNCTION_26();
        v112();
        OUTLINED_FUNCTION_15_0();
        sub_26699BE4C(v50, v30);
        sub_2669AC1BC(v55, &qword_2800AC540);
        OUTLINED_FUNCTION_21();
        BYTE2(v149) = 0;
LABEL_28:
        v116 = OUTLINED_FUNCTION_5_0();
        sub_2669AC39C(v116, v117, v118);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC250, &unk_2669C80E0);
        sub_2669A1F4C();
        OUTLINED_FUNCTION_6_0();
        sub_2669C5FB4();
        OUTLINED_FUNCTION_19(v145);
        LOBYTE(v150) = 0;
LABEL_29:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC240, &unk_2669C7C30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC270, &unk_2669C80F0);
        sub_2669A1EC8();
        sub_2669A1FF8();
        OUTLINED_FUNCTION_6_0();
        sub_2669C5FB4();
        v148 = v145;
        LOBYTE(v150) = BYTE4(v146) != 0;
        v149 = v146;
        HIBYTE(v150) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC230, &unk_2669C80D0);
        sub_2669A1E3C();
        OUTLINED_FUNCTION_6_0();
        sub_2669C5FB4();
        v119 = OUTLINED_FUNCTION_5_0();
        sub_2669A20DC(v119, v120, v121);
LABEL_30:
        OUTLINED_FUNCTION_27();
        goto LABEL_31;
      }
    }

    else
    {
    }

    v50 = 0;
    v30 = 0xF000000000000000;
    goto LABEL_23;
  }

  if (v56 == *MEMORY[0x277D55A58])
  {
    v76 = *(v143(0) + 20);
    OUTLINED_FUNCTION_2_5();
    sub_2669ACA10();
    v77 = &v44[*(ContactAttributeViewModel + 20)];
    v17 = v133;
    sub_2669C5A34();
    OUTLINED_FUNCTION_0_6();
    sub_2669AC868(v44, v78);
    sub_2669C5B44();
    OUTLINED_FUNCTION_14_0();
    v79(v17);
    v80 = sub_2669C5A74();
    LOBYTE(v17) = v81;
    if (*(ContactAttributeViewModel + 16))
    {
      sub_2669BB76C(v80, v81);
      OUTLINED_FUNCTION_11_0();

      if (v50)
      {
        OUTLINED_FUNCTION_10_0();

LABEL_27:
        v113 = sub_2669C57C4();
        v114 = v142;
        __swift_storeEnumTagSinglePayload(v142, 1, 1, v113);
        v115 = OUTLINED_FUNCTION_16_0();
        v141(v115);
        OUTLINED_FUNCTION_15_0();
        sub_26699BE4C(v50, v30);
        sub_2669AC1BC(v114, &qword_2800AC540);
        OUTLINED_FUNCTION_21();
        BYTE2(v149) = 1;
        goto LABEL_28;
      }
    }

    else
    {
    }

    v50 = 0;
    v30 = 0xF000000000000000;
    goto LABEL_27;
  }

  if (v56 == *MEMORY[0x277D55A60])
  {
    v82 = *(v143(0) + 20);
    OUTLINED_FUNCTION_2_5();
    v83 = v131;
    sub_2669ACA10();
    v84 = v83 + *(ContactAttributeViewModel + 20);
    v17 = v132;
    sub_2669C5A34();
    OUTLINED_FUNCTION_0_6();
    sub_2669AC868(v83, v85);
    sub_2669C5B34();
    OUTLINED_FUNCTION_14_0();
    v86(v17);
    v87 = sub_2669C5A74();
    LOBYTE(v17) = v88;
    if (*(ContactAttributeViewModel + 16))
    {
      sub_2669BB76C(v87, v88);
      OUTLINED_FUNCTION_11_0();

      if (v83)
      {
        OUTLINED_FUNCTION_10_0();

LABEL_34:
        v122 = sub_2669C57C4();
        OUTLINED_FUNCTION_36(v122, v123, v124, v122);
        OUTLINED_FUNCTION_26();
        v125();
        OUTLINED_FUNCTION_15_0();
        sub_26699BE4C(v83, v30);
        sub_2669AC1BC(v55, &qword_2800AC540);
        OUTLINED_FUNCTION_21();
        HIWORD(v149) = 0;
        v126 = OUTLINED_FUNCTION_5_0();
        sub_2669AC39C(v126, v127, v128);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC250, &unk_2669C80E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC280, &unk_2669C7C50);
        sub_2669A1F4C();
        OUTLINED_FUNCTION_9_0(&qword_2800AC278);
        OUTLINED_FUNCTION_6_0();
        sub_2669C5FB4();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_19(v129);
        LOBYTE(v150) = 1;
        goto LABEL_29;
      }
    }

    else
    {
    }

    v83 = 0;
    v30 = 0xF000000000000000;
    goto LABEL_34;
  }

  v148 = 0;
  v149 = 0;
  v150 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC230, &unk_2669C80D0);
  sub_2669A1E3C();
  sub_2669C5FB4();
  OUTLINED_FUNCTION_27();
  (*(v50 + 8))(v55, v47);
LABEL_31:
  LOBYTE(v145) = v17;
  OUTLINED_FUNCTION_37();
}

void (*sub_2669A7294(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, unint64_t, void, unint64_t, char *)))(uint64_t, unint64_t, void, unint64_t, char *)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  OUTLINED_FUNCTION_2_2(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = sub_2669C5A44();
  v13 = OUTLINED_FUNCTION_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_1();
  v20 = v19 - v18;
  sub_2669C5A84();
  v21 = (*(v15 + 88))(v20, v12);
  if (v21 == *MEMORY[0x277D55A70])
  {
    v34 = 0;
    LOWORD(v35) = 0;
    BYTE2(v35) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC250, &unk_2669C80E0);
    sub_2669A1F4C();
    OUTLINED_FUNCTION_25();
    sub_2669C5FB4();
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_23(v22);
    a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2A0, &qword_2669C7C60);
    sub_2669A210C();
    OUTLINED_FUNCTION_25();
    sub_2669C5FB4();
  }

  else
  {
    if (v21 != *MEMORY[0x277D55A58])
    {
      v34 = 0;
      v35 = 0x1000000;
      a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2A0, &qword_2669C7C60);
      sub_2669A210C();
      OUTLINED_FUNCTION_25();
      sub_2669C5FB4();
      OUTLINED_FUNCTION_28();
      (*(v15 + 8))(v20, v12);
      return a3;
    }

    v23 = *(a2(0) + 20);
    sub_2669C5A64();
    sub_2669C5030(v24, v11);

    a3(0x69662E656E6F6870, 0xEA00000000006C6CLL, 0, 0xF000000000000000, v11);
    OUTLINED_FUNCTION_15_0();
    sub_2669AC1BC(v11, &qword_2800AC540);
    v34 = a3;
    LOWORD(v35) = v3 & 0x1FF;
    BYTE2(v35) = 1;
    v25 = OUTLINED_FUNCTION_5_0();
    sub_2669AC39C(v25, v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC250, &unk_2669C80E0);
    sub_2669A1F4C();
    OUTLINED_FUNCTION_25();
    sub_2669C5FB4();
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_23(v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2A0, &qword_2669C7C60);
    sub_2669A210C();
    OUTLINED_FUNCTION_25();
    sub_2669C5FB4();
    v29 = OUTLINED_FUNCTION_5_0();
    sub_2669A20DC(v29, v30, v31);
  }

  OUTLINED_FUNCTION_28();
  return a3;
}

uint64_t sub_2669A7600@<X0>(uint64_t *a1@<X8>)
{
  v96 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  v93 = *(v2 - 8);
  v94 = v2;
  v3 = *(v93 + 64);
  MEMORY[0x28223BE20](v2);
  v92 = &v87 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC180, &qword_2669C8740);
  v95 = *(v5 - 8);
  v6 = *(v95 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v87 - v7;
  v9 = sub_2669C5A44();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v87 - v15;
  v17 = sub_2669C5A94();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v89 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v88 = &v87 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - v24;
  v26 = v1 + *(type metadata accessor for GetContactAttributeSingleResultView() + 20);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
  v27 = *(ContactAttributeViewModel + 20);
  v103 = v26;
  v104 = v27;
  result = MEMORY[0x26D5E3750]();
  if (!*(result + 16))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v90 = v8;
  v91 = v5;
  v29 = *(v18 + 16);
  v99 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v100 = v29;
  v101 = v18 + 16;
  v29(v25, result + v99, v17);

  sub_2669C5A84();
  v31 = *(v18 + 8);
  v30 = v18 + 8;
  v102 = v17;
  v98 = v31;
  v31(v25, v17);
  v32 = v10[13];
  v32(v14, *MEMORY[0x277D55A68], v9);
  v33 = sub_266999764(v16, v14);
  v34 = v10[1];
  v34(v14, v9);
  v35 = (v34)(v16, v9);
  if (v33)
  {
    v36 = v103;
LABEL_4:
    v37 = v92;
    sub_2669C5AE4();
    v38 = v94;
    v39 = sub_2669C5964();
    (*(v93 + 8))(v37, v38);
    v40 = sub_2669C6924();
    v42 = v41;

    v105 = v40;
    v106 = v42;
    sub_266999FC4();
    v43 = sub_2669C6164();
    v45 = v44;
    LOBYTE(v42) = v46;
    v105 = *(v36 + *(ContactAttributeViewModel + 28));

    v47 = sub_2669C6144();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_26699A018(v43, v45, v42 & 1);

    v105 = v47;
    v106 = v49;
    v107 = v51 & 1;
    v108 = v53;
    v54 = MEMORY[0x277CE0BD8];
    v55 = MEMORY[0x277CE0BC8];
    v56 = v90;
    sub_2669C6254();
    sub_26699A018(v47, v49, v51 & 1);

    v105 = v54;
    v106 = v55;
    swift_getOpaqueTypeConformance2();
    v57 = v91;
    v58 = sub_2669C6174();
    result = (*(v95 + 8))(v56, v57);
LABEL_17:
    v85 = MEMORY[0x277D63A60];
    v86 = v96;
    v96[3] = MEMORY[0x277CE11C8];
    v86[4] = v85;
    *v86 = v58;
    return result;
  }

  result = MEMORY[0x26D5E3750](v35);
  if (!*(result + 16))
  {
    goto LABEL_19;
  }

  v87 = v30;
  v59 = v102;
  v100(v25, result + v99, v102);

  sub_2669C5A84();
  v98(v25, v59);
  v32(v14, *MEMORY[0x277D55A78], v9);
  v60 = sub_266999764(v16, v14);
  v34(v14, v9);
  v61 = (v34)(v16, v9);
  v36 = v103;
  if ((v60 & 1) == 0)
  {
LABEL_10:
    result = MEMORY[0x26D5E3750](v61);
    if (*(result + 16))
    {
      v66 = v89;
      v67 = v102;
      v100(v89, result + v99, v102);

      v68 = sub_2669C5A64();
      v70 = v69;
      v98(v66, v67);
      if (v70)
      {
        v71 = v68;
      }

      else
      {
        v71 = 0;
      }

      v72 = 0xE000000000000000;
      if (v70)
      {
        v72 = v70;
      }

      v105 = v71;
      v106 = v72;
      sub_266999FC4();
      v73 = sub_2669C6164();
      v75 = v74;
      v77 = v76;
      v105 = *(v36 + *(ContactAttributeViewModel + 28));

      v78 = sub_2669C6144();
      v80 = v79;
      v82 = v81;
      v84 = v83;
      sub_26699A018(v73, v75, v77 & 1);

      v105 = v78;
      v106 = v80;
      v107 = v82 & 1;
      v108 = v84;
      v58 = sub_2669C6174();
      sub_26699A018(v78, v80, v82 & 1);

      goto LABEL_17;
    }

    goto LABEL_20;
  }

  result = MEMORY[0x26D5E3750](v61);
  if (*(result + 16))
  {
    v62 = v88;
    v63 = v102;
    v100(v88, result + v99, v102);

    sub_2669C5A64();
    v98(v62, v63);
    sub_2669C6974();
    v65 = v64;

    if (!v65)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2669A7E5C@<X0>(uint64_t *a1@<X8>)
{
  v175 = a1;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  v163 = *(v164 - 8);
  v2 = *(v163 + 64);
  MEMORY[0x28223BE20](v164);
  v162 = &v153 - v3;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFA8, &qword_2669C7710);
  v4 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v171 = &v153 - v5;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC518, &qword_2669C81D8);
  v156 = *(v161 - 8);
  v6 = *(v156 + 64);
  MEMORY[0x28223BE20](v161);
  v160 = &v153 - v7;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC520, &qword_2669C81E0);
  v155 = *(v157 - 8);
  v8 = *(v155 + 64);
  MEMORY[0x28223BE20](v157);
  v154 = &v153 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2E8, &qword_2669C81D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v174 = &v153 - v12;
  v13 = sub_2669C5A44();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v153 - v19;
  v21 = sub_2669C5A94();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v153 = &v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v159 = &v153 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v158 = &v153 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v172 = &v153 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v153 - v32;
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView();
  v34 = v1;
  v35 = &v1[*(ContactAttributeSingleResultView + 20)];
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
  v182 = *(ContactAttributeViewModel + 20);
  v183 = v35;
  result = MEMORY[0x26D5E3750]();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_20;
  }

  v165 = ContactAttributeViewModel;
  v176 = v34;
  v38 = *(v22 + 16);
  v179 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v180 = v38;
  v181 = v22 + 16;
  v38(v33, result + v179, v21);

  sub_2669C5A84();
  v41 = *(v22 + 8);
  v39 = (v22 + 8);
  v40 = v41;
  v178 = v21;
  v41(v33, v21);
  v42 = *MEMORY[0x277D55A68];
  v166 = v14[13];
  v166(v18, v42, v13);
  v43 = sub_266999764(v20, v18);
  v44 = v14[1];
  v44(v18, v13);
  v167 = v20;
  v169 = v13;
  v168 = v14 + 1;
  v45 = (v44)(v20, v13);
  if (v43)
  {
    result = MEMORY[0x26D5E3750](v45);
    if (!*(result + 16))
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v46 = v172;
    v177 = v40;
    v47 = v39;
    v48 = v178;
    v180(v172, result + v179, v178);

    v49 = sub_2669C5A54();
    v51 = v50;
    v52 = v48;
    v39 = v47;
    v40 = v177;
    v45 = (v177)(v46, v52);
    if (v51)
    {
      v184 = v49;
      v185 = v51;
      sub_266999FC4();
      v53 = sub_2669C6164();
      v55 = v54;
      v57 = v56;
      v58 = *(ContactAttributeSingleResultView + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
      sub_2669C5D94();
      v59 = sub_2669C60A4();
      v60 = v174;
      __swift_storeEnumTagSinglePayload(v174, 1, 1, v59);
      sub_2669C60C4();
      sub_2669AC1BC(v60, &qword_2800AC2E8);
      v61 = sub_2669C6154();
      v63 = v62;
      v65 = v64;

      sub_26699A018(v53, v55, v57 & 1);

      v184 = *&v183[*(v165 + 28)];

      v66 = sub_2669C6144();
      v68 = v67;
      LOBYTE(v55) = v69;
      v71 = v70;
      sub_26699A018(v61, v63, v65 & 1);

      v72 = MEMORY[0x277D638E8];
      v73 = v175;
      v175[3] = MEMORY[0x277CE0BD8];
      v73[4] = v72;
      result = swift_allocObject();
      *v73 = result;
      *(result + 16) = v66;
      *(result + 24) = v68;
      *(result + 32) = v55 & 1;
      *(result + 40) = v71;
      return result;
    }
  }

  result = MEMORY[0x26D5E3750](v45);
  if (!*(result + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v74 = v178;
  v180(v33, result + v179, v178);

  v75 = v167;
  sub_2669C5A84();
  v172 = v39;
  v40(v33, v74);
  v76 = v169;
  v166(v18, *MEMORY[0x277D55A78], v169);
  v77 = sub_266999764(v75, v18);
  v44(v18, v76);
  v78 = (v44)(v75, v76);
  if (v77)
  {
    result = MEMORY[0x26D5E3750](v78);
    if (*(result + 16))
    {
      v79 = v158;
      v180(v158, result + v179, v74);

      v80 = sub_2669C5A54();
      v82 = v81;
      result = (v40)(v79, v74);
      if (v82)
      {
        v184 = v80;
        v185 = v82;
        sub_266999FC4();
        v83 = sub_2669C6164();
        v85 = v84;
        v87 = v86;
        v88 = *(ContactAttributeSingleResultView + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
        sub_2669C5D94();
        v89 = sub_2669C60A4();
        v90 = v174;
        __swift_storeEnumTagSinglePayload(v174, 1, 1, v89);
        sub_2669C60C4();
        sub_2669AC1BC(v90, &qword_2800AC2E8);
        v91 = sub_2669C6154();
        v93 = v92;
        v95 = v94;

        sub_26699A018(v83, v85, v87 & 1);

        v96 = *&v183[*(v165 + 28)];
        v184 = sub_2669C62E4();
        v97 = sub_2669C6144();
        v99 = v98;
        v101 = v100;
        v103 = v102;
        sub_26699A018(v91, v93, v95 & 1);

        v104 = MEMORY[0x277D638E8];
        v105 = v175;
        v175[3] = MEMORY[0x277CE0BD8];
        v105[4] = v104;
        result = swift_allocObject();
        *v105 = result;
        *(result + 16) = v97;
        *(result + 24) = v99;
        *(result + 32) = v101 & 1;
        *(result + 40) = v103;
      }

      else
      {
        v152 = v175;
        v175[4] = 0;
        *v152 = 0u;
        *(v152 + 1) = 0u;
      }

      return result;
    }

    goto LABEL_22;
  }

  v177 = v40;
  v106 = v162;
  sub_2669C5AE4();
  v107 = v164;
  v108 = sub_2669C5964();
  (*(v163 + 8))(v106, v107);
  v109 = sub_2669C6924();
  v111 = v110;

  v184 = v109;
  v185 = v111;
  sub_266999FC4();
  v112 = sub_2669C6164();
  v114 = v113;
  v184 = v112;
  v185 = v113;
  v116 = v115 & 1;
  LOBYTE(v186) = v115 & 1;
  v187 = v117;
  v118 = v171;
  sub_2669C6254();
  sub_26699A018(v112, v114, v116);

  v119 = *(ContactAttributeSingleResultView + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  v120 = v176;
  sub_2669C5D94();
  v121 = sub_2669C60A4();
  v122 = v174;
  __swift_storeEnumTagSinglePayload(v174, 1, 1, v121);
  v123 = sub_2669C60C4();
  sub_2669AC1BC(v122, &qword_2800AC2E8);
  KeyPath = swift_getKeyPath();
  v125 = &v118[*(v170 + 36)];
  *v125 = KeyPath;
  v125[1] = v123;
  result = MEMORY[0x26D5E3750]();
  if (!*(result + 16))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v126 = v178;
  v127 = v159;
  v180(v159, result + v179, v178);

  sub_2669C5A54();
  v129 = v128;
  v130 = (v177)(v127, v126);
  if (v129)
  {
  }

  MEMORY[0x28223BE20](v130);
  v131 = v120;
  *(&v153 - 2) = v120;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF90, &qword_2669C76F8);
  v133 = sub_26699A030();
  v134 = sub_2669AC104();
  v135 = v160;
  v136 = v171;
  sub_2669C61C4();
  v137 = sub_2669AC1BC(v136, &qword_2800ABFA8);
  result = MEMORY[0x26D5E3750](v137);
  v138 = v161;
  if (!*(result + 16))
  {
    goto LABEL_24;
  }

  v139 = v178;
  v140 = v153;
  v180(v153, result + v179, v178);

  sub_2669C5A54();
  v142 = v141;
  v143 = (v177)(v140, v139);
  if (v142)
  {
  }

  MEMORY[0x28223BE20](v143);
  *(&v153 - 2) = v131;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC530, &qword_2669C8218);
  v184 = v170;
  v185 = v132;
  v186 = v133;
  v187 = v134;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v146 = sub_2669AC214();
  v147 = v154;
  sub_2669C61C4();
  (*(v156 + 8))(v135, v138);
  v184 = v138;
  v185 = v144;
  v186 = OpaqueTypeConformance2;
  v187 = v146;
  swift_getOpaqueTypeConformance2();
  v148 = v157;
  v149 = sub_2669C6174();
  result = (*(v155 + 8))(v147, v148);
  v150 = MEMORY[0x277D63A60];
  v151 = v175;
  v175[3] = MEMORY[0x277CE11C8];
  v151[4] = v150;
  *v151 = v149;
  return result;
}

uint64_t sub_2669A8E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 + *(type metadata accessor for GetContactAttributeSingleResultView() + 20);
  v6 = *(v5 + *(type metadata accessor for GetContactAttributeViewModel() + 28));
  v7 = sub_2669C62E4();
  sub_2669AC334(a1, a3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF90, &qword_2669C76F8);
  *(a3 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_2669A8E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 + *(type metadata accessor for GetContactAttributeSingleResultView() + 20);
  v6 = *(v5 + *(type metadata accessor for GetContactAttributeViewModel() + 28));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC518, &qword_2669C81D8);
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC530, &qword_2669C8218) + 36)) = v6;
}

uint64_t sub_2669A8F54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2E8, &qword_2669C81D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v63 - v5;
  v7 = sub_2669C5A44();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v63 - v13;
  v15 = sub_2669C5A94();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v66 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v63 - v20;
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView();
  v22 = v1 + *(ContactAttributeSingleResultView + 20);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
  v74 = *(ContactAttributeViewModel + 20);
  v75 = v22;
  result = MEMORY[0x26D5E3750]();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v63[1] = v2;
  v64 = v6;
  v24 = *(v16 + 16);
  v71 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v72 = v24;
  v24(v21, result + v71, v15);

  sub_2669C5A84();
  v25 = *(v16 + 8);
  v73 = v15;
  v70 = v25;
  v25(v21, v15);
  v26 = *MEMORY[0x277D55A68];
  v67 = v8[13];
  v67(v12, v26, v7);
  v27 = sub_266999764(v14, v12);
  v28 = v8[1];
  v28(v12, v7);
  v68 = v7;
  result = (v28)(v14, v7);
  if (v27)
  {
LABEL_8:
    v62 = v76;
    *(v76 + 32) = 0;
    *v62 = 0u;
    v62[1] = 0u;
    return result;
  }

  result = MEMORY[0x26D5E3750](result);
  if (!*(result + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v29 = v73;
  v72(v21, result + v71, v73);

  sub_2669C5A84();
  v30 = v29;
  v31 = ContactAttributeSingleResultView;
  v70(v21, v30);
  v32 = v68;
  v67(v12, *MEMORY[0x277D55A78], v68);
  v33 = sub_266999764(v14, v12);
  v28(v12, v32);
  result = (v28)(v14, v32);
  if (v33)
  {
    goto LABEL_8;
  }

  result = MEMORY[0x26D5E3750](result);
  if (*(result + 16))
  {
    v34 = v66;
    v35 = v73;
    v72(v66, result + v71, v73);

    v36 = sub_2669C5A54();
    v38 = v37;
    result = (v70)(v34, v35);
    if (v38)
    {
      v77 = v36;
      v78 = v38;
      sub_266999FC4();
      v39 = sub_2669C6164();
      v41 = v40;
      v43 = v42;
      v44 = *(v31 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
      sub_2669C5D94();
      v45 = sub_2669C60A4();
      v46 = v64;
      __swift_storeEnumTagSinglePayload(v64, 1, 1, v45);
      sub_2669C60C4();
      sub_2669AC1BC(v46, &qword_2800AC2E8);
      v47 = sub_2669C6154();
      v49 = v48;
      v51 = v50;

      sub_26699A018(v39, v41, v43 & 1);

      v52 = *(v75 + *(ContactAttributeViewModel + 28));
      v77 = sub_2669C62E4();
      v53 = sub_2669C6144();
      v55 = v54;
      v57 = v56;
      v59 = v58;
      sub_26699A018(v47, v49, v51 & 1);

      v60 = MEMORY[0x277D638E8];
      v61 = v76;
      *(v76 + 24) = MEMORY[0x277CE0BD8];
      v61[4] = v60;
      result = swift_allocObject();
      *v61 = result;
      *(result + 16) = v53;
      *(result + 24) = v55;
      *(result + 32) = v57 & 1;
      *(result + 40) = v59;
      return result;
    }

    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
  return result;
}

void GetContactAttributeSingleResultView.body.getter()
{
  OUTLINED_FUNCTION_35();
  v81 = v1;
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView();
  v3 = ContactAttributeSingleResultView - 8;
  v4 = *(ContactAttributeSingleResultView - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](ContactAttributeSingleResultView);
  v6 = sub_2669C5844();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  v82 = v11 - v10;
  v89 = sub_2669C5A94();
  v12 = OUTLINED_FUNCTION_2(v89);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_1();
  v19 = v18 - v17;
  v20 = sub_2669C6564();
  v21 = OUTLINED_FUNCTION_2(v20);
  v78 = v22;
  v79 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_1();
  v83 = v26 - v25;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC4C8, &unk_2669C80C0);
  OUTLINED_FUNCTION_0(v80);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v29);
  v31 = &v72 - v30;
  sub_2669A7600(v91);
  v32 = v0 + *(v3 + 28);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
  v34 = *(ContactAttributeViewModel + 20);
  v90 = v32;
  v88 = v34;
  v35 = MEMORY[0x26D5E3750]();
  if (!*(v35 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v72 = ContactAttributeViewModel;
  v73 = v31;
  v74 = v4;
  v75 = v5;
  v76 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v14;
  v37 = *(v14 + 16);
  v85 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v86 = v37;
  v38 = v89;
  v77 = v14 + 16;
  v37(v19, v35 + v85, v89);

  OUTLINED_FUNCTION_8_0();
  sub_2669A65A0();
  v40 = v39;
  v42 = v41;
  v43 = (v41 >> 40) & 1;
  v44 = *(v36 + 8);
  v87 = v36 + 8;
  v84 = v44;
  v44(v19, v38);
  v107 = v40;
  v109 = BYTE4(v42);
  v108 = v42;
  v110 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC218, &unk_2669C7C20);
  sub_2669A9D68(&qword_2800AC220, &qword_2800AC218, &unk_2669C7C20, sub_2669A1E3C);
  v45 = sub_2669C6174();
  v46 = sub_2669A20B0(v40, v42, v43);
  v111 = MEMORY[0x277CE11C8];
  v112 = MEMORY[0x277D63A60];
  v107 = v45;
  v47 = MEMORY[0x26D5E3750](v46);
  if (!*(v47 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v48 = OUTLINED_FUNCTION_34(v47);
  v49 = v89;
  v50(v48);

  OUTLINED_FUNCTION_8_0();
  v52 = sub_2669A7294(v19, v51, sub_2669AB398);
  v54 = v53;
  v55 = BYTE3(v53) & 1;
  v84(v19, v49);
  v101 = v52;
  v103 = BYTE2(v54);
  v102 = v54;
  v104 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC288, &unk_2669C8100);
  sub_2669A9D68(&qword_2800AC290, &qword_2800AC288, &unk_2669C8100, sub_2669A210C);
  v56 = sub_2669C6174();
  sub_2669A2198(v52, v54, v55);
  v106 = MEMORY[0x277D63A60];
  v105 = MEMORY[0x277CE11C8];
  v101 = v56;
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  sub_2669A7E5C(v97);
  sub_2669A8F54(&v96);
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  sub_2669C5AC4();
  sub_2669C5834();

  v92[3] = sub_2669C6454();
  v92[4] = MEMORY[0x277D63B10];
  __swift_allocate_boxed_opaque_existential_1(v92);
  sub_2669C6464();
  v57 = v83;
  v58 = sub_2669C6554();
  v59 = MEMORY[0x26D5E3750](v58);
  if (*(v59 + 16))
  {
    v60 = OUTLINED_FUNCTION_34(v59);
    v61 = v89;
    v62(v60);

    sub_26699A920();
    v63 = (v84)(v19, v61);
    v89 = &v72;
    MEMORY[0x28223BE20](v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC4D0, &qword_2669C8110);
    v64 = v57;
    v65 = sub_2669AC684(&qword_2800AC1D8, MEMORY[0x277D63DE8]);
    v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC4D8, &qword_2669C8118);
    v67 = sub_2669A9FD4();
    v68 = sub_2669A1CD8();
    v69 = v79;
    v91[0] = v79;
    v91[1] = v66;
    v91[2] = MEMORY[0x277D837D0];
    v91[3] = v65;
    v91[4] = v67;
    v91[5] = v68;
    swift_getOpaqueTypeConformance2();
    v70 = v73;
    sub_2669C61C4();
    (*(v78 + 8))(v64, v69);
    *(v70 + *(v80 + 36)) = *(v90 + *(v72 + 28));
    sub_2669ACA10();
    v71 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    swift_allocObject();
    sub_2669ACC00();
    sub_2669AA4B4();

    sub_2669C6234();

    sub_2669AC1BC(v70, &qword_2800AC4C8);
    OUTLINED_FUNCTION_37();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t type metadata accessor for GetContactAttributeSingleResultView()
{
  result = qword_2800AC500;
  if (!qword_2800AC500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2669A9D68(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_30(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2669A9DE8()
{
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView();
  v1 = *(ContactAttributeSingleResultView - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](ContactAttributeSingleResultView - 8);
  sub_2669ACA10();
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  swift_allocObject();
  sub_2669ACC00();
  sub_2669C6564();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC4D8, &qword_2669C8118);
  sub_2669AC684(&qword_2800AC1D8, MEMORY[0x277D63DE8]);
  sub_2669A9FD4();
  sub_2669A1CD8();
  sub_2669C6264();
}

unint64_t sub_2669A9FD4()
{
  result = qword_2800AC4E0;
  if (!qword_2800AC4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC4D8, &qword_2669C8118);
    sub_2669AC640(&qword_2800AC4E8, &unk_2800AC4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC4E0);
  }

  return result;
}

uint64_t sub_2669AA08C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2669C5A94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(type metadata accessor for GetContactAttributeSingleResultView() + 20);
  v10 = *(type metadata accessor for GetContactAttributeViewModel() + 20);
  result = MEMORY[0x26D5E3750]();
  if (*(result + 16))
  {
    (*(v5 + 16))(v8, result + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    v12 = sub_26699A870();
    v14 = v13;
    result = (*(v5 + 8))(v8, v4);
    *a2 = v12;
    a2[1] = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2669AA1D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2669C5FA4();
  sub_2669AA25C(v11);
  v3 = v11[0];
  v4 = v11[1];
  v5 = sub_2669C6084();
  result = sub_2669C5D24();
  *a1 = v2;
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_2669AA25C@<X0>(uint64_t *a1@<X8>)
{
  sub_2669A7600(v5);
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v2 = sub_2669C64B4();
  __swift_destroy_boxed_opaque_existential_0(v5);
  sub_2669A8F54(v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = sub_2669C64B4();
    result = __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    result = sub_2669AC1BC(v5, &unk_2800AC510);
    v3 = 0;
  }

  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2669AA334(uint64_t a1)
{
  v2 = sub_2669C5B54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for GetContactAttributeSingleResultView() + 20);
  v8 = v7 + *(type metadata accessor for GetContactAttributeViewModel() + 20);
  sub_2669C5A34();
  v9 = sub_2669C5B24();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  sub_2669A62FC(v9, v11);
  return sub_26699BE4C(v9, v11);
}

uint64_t sub_2669AA458()
{
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView();
  OUTLINED_FUNCTION_2_2(ContactAttributeSingleResultView);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_2669AA334(v3);
}

unint64_t sub_2669AA4B4()
{
  result = qword_2800AC4F8;
  if (!qword_2800AC4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC4C8, &unk_2669C80C0);
    sub_2669C6564();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC4D0, &qword_2669C8110);
    sub_2669AC684(&qword_2800AC1D8, MEMORY[0x277D63DE8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC4D8, &qword_2669C8118);
    sub_2669A9FD4();
    sub_2669A1CD8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2669AC640(&qword_2800AC168, &qword_2800AC170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC4F8);
  }

  return result;
}

uint64_t sub_2669AA688(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
    if (*(*(ContactAttributeViewModel - 8) + 84) == a2)
    {
      v10 = ContactAttributeViewModel;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
      v11 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_2669AA780(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
    if (*(*(ContactAttributeViewModel - 8) + 84) == a3)
    {
      v9 = ContactAttributeViewModel;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_2669AA854()
{
  sub_26699AD38();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GetContactAttributeViewModel();
    if (v1 <= 0x3F)
    {
      sub_2669A2C2C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2669AA8F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC4C8, &unk_2669C80C0);
  sub_2669AA4B4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2669AA954(char *a1, char *a2, char *a3, unint64_t a4, void (*a5)(char *, char *, uint64_t))
{
  v66 = a5;
  v67 = a3;
  v70 = a1;
  v71 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v62 - v8;
  v74 = sub_2669C57C4();
  v65 = *(v74 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x28223BE20](v74);
  v64 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v68 = &v62 - v12;
  v73 = type metadata accessor for SiriContactsGCAButtonStyle();
  v13 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v69 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView();
  v16 = *(ContactAttributeMultiResultView - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](ContactAttributeMultiResultView - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC548, &qword_2669C8228);
  v72 = *(v18 - 8);
  v19 = *(v72 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC550, qword_2669C8230);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v62 - v25;
  v75 = v24;
  v76 = v27;
  if (a4 >> 60 == 15)
  {
    v62 = v21;
    v63 = v18;
    v67 = &v62 - v25;
    sub_2669AC3A8(v66, v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v74) == 1)
    {
      sub_2669AC1BC(v9, &qword_2800AC540);
      v81 = 0;
      v82 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC260, &unk_2669C7C40);
      sub_2669A1F7C();
      sub_2669C5FB4();
    }

    else
    {
      v41 = v65;
      v66 = *(v65 + 32);
      v42 = v68;
      v43 = v9;
      v44 = v74;
      v66(v68, v43, v74);
      sub_2669ACA10();
      v45 = v64;
      v46 = v42;
      v47 = v44;
      (*(v41 + 16))(v64, v46, v44);
      v48 = (v17 + *(v41 + 80) + ((*(v16 + 80) + 16) & ~*(v16 + 80))) & ~*(v41 + 80);
      v49 = swift_allocObject();
      sub_2669ACC00();
      v50 = (v66)(v49 + v48, v45, v47);
      MEMORY[0x28223BE20](v50);
      v51 = v71;
      *(&v62 - 2) = v70;
      *(&v62 - 1) = v51;
      sub_2669C6454();
      sub_2669AC684(&qword_2800ABFC8, MEMORY[0x277D63B20]);
      v52 = v62;
      sub_2669C6364();
      v53 = v69;
      sub_2669A2950();
      v54 = sub_2669AC640(&qword_2800AC558, &qword_2800AC548);
      v55 = sub_2669AC684(&qword_2800AC560, type metadata accessor for SiriContactsGCAButtonStyle);
      v56 = v67;
      v57 = v63;
      v58 = v73;
      sub_2669C6224();
      sub_2669AC868(v53, type metadata accessor for SiriContactsGCAButtonStyle);
      (*(v72 + 8))(v52, v57);
      v77 = v57;
      v78 = v58;
      v79 = v54;
      v80 = v55;
      swift_getOpaqueTypeConformance2();
      v59 = v75;
      v60 = sub_2669C6174();
      (*(v76 + 8))(v56, v59);
      v81 = v60;
      LOBYTE(v82) = 1;

      sub_2669C5FB4();
      v81 = v77;
      v82 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC260, &unk_2669C7C40);
      sub_2669A1F7C();
      sub_2669C5FB4();

      (*(v41 + 8))(v68, v47);
    }
  }

  else
  {
    v28 = a4;
    sub_2669ACA10();
    v29 = (v17 + ((*(v16 + 80) + 16) & ~*(v16 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    sub_2669ACC00();
    v31 = (v30 + v29);
    v32 = v67;
    *v31 = v67;
    v31[1] = v28;
    v33 = MEMORY[0x28223BE20](v32);
    v34 = v71;
    *(&v62 - 2) = v70;
    *(&v62 - 1) = v34;
    sub_26699BF34(v33, v28);
    sub_2669C6454();
    sub_2669AC684(&qword_2800ABFC8, MEMORY[0x277D63B20]);
    sub_2669C6364();
    v35 = v69;
    sub_2669A2950();
    v36 = sub_2669AC640(&qword_2800AC558, &qword_2800AC548);
    v37 = sub_2669AC684(&qword_2800AC560, type metadata accessor for SiriContactsGCAButtonStyle);
    v38 = v73;
    sub_2669C6224();
    sub_2669AC868(v35, type metadata accessor for SiriContactsGCAButtonStyle);
    (*(v72 + 8))(v21, v18);
    v77 = v18;
    v78 = v38;
    v79 = v36;
    v80 = v37;
    swift_getOpaqueTypeConformance2();
    v39 = v75;
    v40 = sub_2669C6174();
    (*(v76 + 8))(v26, v39);
    v81 = v40;
    LOBYTE(v82) = 0;

    sub_2669C5FB4();
    v81 = v77;
    v82 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC260, &unk_2669C7C40);
    sub_2669A1F7C();
    sub_2669C5FB4();
  }

  return v77;
}

uint64_t sub_2669AB398(char *a1, char *a2, char *a3, unint64_t a4, void (*a5)(char *, char *, uint64_t))
{
  v66 = a5;
  v67 = a3;
  v70 = a1;
  v71 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v62 - v8;
  v74 = sub_2669C57C4();
  v65 = *(v74 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x28223BE20](v74);
  v64 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v68 = &v62 - v12;
  v73 = type metadata accessor for SiriContactsGCAButtonStyle();
  v13 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v69 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView();
  v16 = *(ContactAttributeSingleResultView - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](ContactAttributeSingleResultView - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC548, &qword_2669C8228);
  v72 = *(v18 - 8);
  v19 = *(v72 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC550, qword_2669C8230);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v62 - v25;
  v75 = v24;
  v76 = v27;
  if (a4 >> 60 == 15)
  {
    v62 = v21;
    v63 = v18;
    v67 = &v62 - v25;
    sub_2669AC3A8(v66, v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v74) == 1)
    {
      sub_2669AC1BC(v9, &qword_2800AC540);
      v81 = 0;
      v82 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC260, &unk_2669C7C40);
      sub_2669A1F7C();
      sub_2669C5FB4();
    }

    else
    {
      v41 = v65;
      v66 = *(v65 + 32);
      v42 = v68;
      v43 = v9;
      v44 = v74;
      v66(v68, v43, v74);
      sub_2669ACA10();
      v45 = v64;
      v46 = v42;
      v47 = v44;
      (*(v41 + 16))(v64, v46, v44);
      v48 = (v17 + *(v41 + 80) + ((*(v16 + 80) + 16) & ~*(v16 + 80))) & ~*(v41 + 80);
      v49 = swift_allocObject();
      sub_2669ACC00();
      v50 = (v66)(v49 + v48, v45, v47);
      MEMORY[0x28223BE20](v50);
      v51 = v71;
      *(&v62 - 2) = v70;
      *(&v62 - 1) = v51;
      sub_2669C6454();
      sub_2669AC684(&qword_2800ABFC8, MEMORY[0x277D63B20]);
      v52 = v62;
      sub_2669C6364();
      v53 = v69;
      sub_2669A2950();
      v54 = sub_2669AC640(&qword_2800AC558, &qword_2800AC548);
      v55 = sub_2669AC684(&qword_2800AC560, type metadata accessor for SiriContactsGCAButtonStyle);
      v56 = v67;
      v57 = v63;
      v58 = v73;
      sub_2669C6224();
      sub_2669AC868(v53, type metadata accessor for SiriContactsGCAButtonStyle);
      (*(v72 + 8))(v52, v57);
      v77 = v57;
      v78 = v58;
      v79 = v54;
      v80 = v55;
      swift_getOpaqueTypeConformance2();
      v59 = v75;
      v60 = sub_2669C6174();
      (*(v76 + 8))(v56, v59);
      v81 = v60;
      LOBYTE(v82) = 1;

      sub_2669C5FB4();
      v81 = v77;
      v82 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC260, &unk_2669C7C40);
      sub_2669A1F7C();
      sub_2669C5FB4();

      (*(v41 + 8))(v68, v47);
    }
  }

  else
  {
    v28 = a4;
    sub_2669ACA10();
    v29 = (v17 + ((*(v16 + 80) + 16) & ~*(v16 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    sub_2669ACC00();
    v31 = (v30 + v29);
    v32 = v67;
    *v31 = v67;
    v31[1] = v28;
    v33 = MEMORY[0x28223BE20](v32);
    v34 = v71;
    *(&v62 - 2) = v70;
    *(&v62 - 1) = v34;
    sub_26699BF34(v33, v28);
    sub_2669C6454();
    sub_2669AC684(&qword_2800ABFC8, MEMORY[0x277D63B20]);
    sub_2669C6364();
    v35 = v69;
    sub_2669A2950();
    v36 = sub_2669AC640(&qword_2800AC558, &qword_2800AC548);
    v37 = sub_2669AC684(&qword_2800AC560, type metadata accessor for SiriContactsGCAButtonStyle);
    v38 = v73;
    sub_2669C6224();
    sub_2669AC868(v35, type metadata accessor for SiriContactsGCAButtonStyle);
    (*(v72 + 8))(v21, v18);
    v77 = v18;
    v78 = v38;
    v79 = v36;
    v80 = v37;
    swift_getOpaqueTypeConformance2();
    v39 = v75;
    v40 = sub_2669C6174();
    (*(v76 + 8))(v26, v39);
    v81 = v40;
    LOBYTE(v82) = 0;

    sub_2669C5FB4();
    v81 = v77;
    v82 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC260, &unk_2669C7C40);
    sub_2669A1F7C();
    sub_2669C5FB4();
  }

  return v77;
}

void sub_2669ABDDC()
{
  v2 = OUTLINED_FUNCTION_20();
  v4 = v1 + *(v3(v2) + 20);
  sub_2669C5344(v0);
}

uint64_t objectdestroyTm_1()
{
  OUTLINED_FUNCTION_35();
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView();
  OUTLINED_FUNCTION_13_0(ContactAttributeSingleResultView);
  v5 = *(v4 + 64);
  v6 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  v7 = (v6 + *(v0 + 28));
  __swift_destroy_boxed_opaque_existential_0(v7);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
  v9 = ContactAttributeViewModel[5];
  v10 = sub_2669C5B04();
  OUTLINED_FUNCTION_0_1(v10);
  (*(v11 + 8))(v7 + v9);
  v12 = ContactAttributeViewModel[6];
  v13 = sub_2669C5D44();
  OUTLINED_FUNCTION_0_1(v13);
  (*(v14 + 8))(v7 + v12);
  v15 = *(v7 + ContactAttributeViewModel[7]);

  v16 = *(v0 + 32);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  OUTLINED_FUNCTION_0_1(v17);
  (*(v18 + 8))(v6 + v16);
  OUTLINED_FUNCTION_37();

  return MEMORY[0x2821FE8E8](v19, v20, v21);
}

uint64_t sub_2669ABF78@<X0>(uint64_t *a1@<X8>)
{
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView();
  OUTLINED_FUNCTION_2_2(ContactAttributeSingleResultView);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_2669AA08C(v5, a1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2669AC030()
{
  sub_26699A018(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2669AC074@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2669C5EE4();
  *a1 = result;
  return result;
}

uint64_t sub_2669AC0A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2669C5EE4();
  *a1 = result;
  return result;
}

uint64_t sub_2669AC0CC(uint64_t *a1)
{
  v1 = *a1;

  return sub_2669C5EF4();
}

unint64_t sub_2669AC104()
{
  result = qword_2800AC528;
  if (!qword_2800AC528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ABF90, &qword_2669C76F8);
    sub_26699A030();
    sub_2669AC640(&qword_2800AC168, &qword_2800AC170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC528);
  }

  return result;
}

uint64_t sub_2669AC1BC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_0_1(v5);
  (*(v6 + 8))(a1);
  return a1;
}

unint64_t sub_2669AC214()
{
  result = qword_2800AC538;
  if (!qword_2800AC538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC530, &qword_2669C8218);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ABFA8, &qword_2669C7710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ABF90, &qword_2669C76F8);
    sub_26699A030();
    sub_2669AC104();
    swift_getOpaqueTypeConformance2();
    sub_2669AC640(&qword_2800AC168, &qword_2800AC170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC538);
  }

  return result;
}

uint64_t sub_2669AC334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFA8, &qword_2669C7710);
  OUTLINED_FUNCTION_0(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2669AC39C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2669AC3A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2669AC418()
{
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView();
  OUTLINED_FUNCTION_31(ContactAttributeSingleResultView);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_2669C57C4();
  OUTLINED_FUNCTION_2(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v30 = *(v12 + 64);
  v15 = v4 | v13;
  v16 = v0 + v5;

  v17 = (v0 + v5 + *(v1 + 28));
  __swift_destroy_boxed_opaque_existential_0(v17);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
  v19 = ContactAttributeViewModel[5];
  v20 = sub_2669C5B04();
  OUTLINED_FUNCTION_0_1(v20);
  (*(v21 + 8))(v17 + v19);
  v22 = ContactAttributeViewModel[6];
  v23 = sub_2669C5D44();
  OUTLINED_FUNCTION_0_1(v23);
  (*(v24 + 8))(v17 + v22);
  v25 = *(v17 + ContactAttributeViewModel[7]);

  v26 = *(v1 + 32);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  OUTLINED_FUNCTION_0_1(v27);
  (*(v28 + 8))(v16 + v26);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v30, v15 | 7);
}

uint64_t sub_2669AC640(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_30(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2669AC684(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2669AC6CC()
{
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView();
  OUTLINED_FUNCTION_13_0(ContactAttributeSingleResultView);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1 + v8;

  v11 = (v10 + *(v0 + 28));
  __swift_destroy_boxed_opaque_existential_0(v11);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
  v13 = ContactAttributeViewModel[5];
  v14 = sub_2669C5B04();
  OUTLINED_FUNCTION_0_1(v14);
  (*(v15 + 8))(v11 + v13);
  v16 = ContactAttributeViewModel[6];
  v17 = sub_2669C5D44();
  OUTLINED_FUNCTION_0_1(v17);
  (*(v18 + 8))(v11 + v16);
  v19 = *(v11 + ContactAttributeViewModel[7]);

  v20 = *(v0 + 32);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  OUTLINED_FUNCTION_0_1(v21);
  (*(v22 + 8))(v10 + v20);
  sub_26699BE60(*(v1 + v9), *(v1 + v9 + 8));

  return MEMORY[0x2821FE8E8](v1, v9 + 16, v7 | 7);
}

uint64_t sub_2669AC868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2669AC8BC(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2669AC39C(result, a2, BYTE1(a2) & 1);
  }

  return result;
}

uint64_t sub_2669AC8CC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void), uint64_t (*a5)(uint64_t, uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t, void))
{
  if (a3)
  {
    return sub_2669AC914(a1, a2, BYTE3(a2) & 1, a5, a6);
  }

  return a4(a1, a2, WORD1(a2) & 1);
}

uint64_t sub_2669AC914(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void), uint64_t (*a5)(uint64_t, uint64_t, void))
{
  if (a3)
  {
    return a5(a1, a2, WORD1(a2) & 1);
  }

  else
  {
    return a4(a1, a2, (a2 >> 8) & 1);
  }
}

uint64_t sub_2669AC930(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_2669C69A4();
  v4 = *(a1 + 36);
  return result;
}

_OWORD *sub_2669AC970(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(*(a5 + 56) + 16 * a2);
    *result = v8;

    sub_26699BF34(v8, *(&v8 + 1));
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2669ACA10()
{
  v2 = OUTLINED_FUNCTION_20();
  v4 = v3(v2);
  OUTLINED_FUNCTION_0(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_2669ACA68()
{
  OUTLINED_FUNCTION_35();
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView();
  OUTLINED_FUNCTION_31(ContactAttributeMultiResultView);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_2669C57C4();
  OUTLINED_FUNCTION_2(v7);
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);

  v13 = (v0 + v4 + *(v1 + 28));
  __swift_destroy_boxed_opaque_existential_0(v13);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
  v15 = ContactAttributeViewModel[5];
  v16 = sub_2669C5B04();
  OUTLINED_FUNCTION_0_1(v16);
  (*(v17 + 8))(v13 + v15);
  v18 = ContactAttributeViewModel[6];
  v19 = sub_2669C5D44();
  OUTLINED_FUNCTION_0_1(v19);
  (*(v20 + 8))(v13 + v18);
  v21 = *(v13 + ContactAttributeViewModel[7]);

  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_37();

  return MEMORY[0x2821FE8E8](v22, v23, v24);
}

uint64_t sub_2669ACC00()
{
  v2 = OUTLINED_FUNCTION_20();
  v4 = v3(v2);
  OUTLINED_FUNCTION_0(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

void sub_2669ACC84(uint64_t (*a1)(void))
{
  v1 = *(a1(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_2669C57C4();
  OUTLINED_FUNCTION_2_2(v4);
  v6 = *(v5 + 80);
  sub_2669ABDDC();
}

uint64_t sub_2669ACD50()
{
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView();
  OUTLINED_FUNCTION_13_0(ContactAttributeMultiResultView);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1 + v8;

  v11 = (v10 + *(v0 + 28));
  __swift_destroy_boxed_opaque_existential_0(v11);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel();
  v13 = ContactAttributeViewModel[5];
  v14 = sub_2669C5B04();
  OUTLINED_FUNCTION_0_1(v14);
  (*(v15 + 8))(v11 + v13);
  v16 = ContactAttributeViewModel[6];
  v17 = sub_2669C5D44();
  OUTLINED_FUNCTION_0_1(v17);
  (*(v18 + 8))(v11 + v16);
  v19 = *(v11 + ContactAttributeViewModel[7]);

  sub_26699BE60(*(v1 + v9), *(v1 + v9 + 8));

  return MEMORY[0x2821FE8E8](v1, v9 + 16, v7 | 7);
}

void sub_2669ACEA8(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = v1 + ((*(v2 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_2669A62FC(*v3, *(v3 + 8));
}

uint64_t OUTLINED_FUNCTION_9_0(unint64_t *a1)
{

  return sub_2669A9D68(a1, v1, v2, sub_2669A1F4C);
}

uint64_t OUTLINED_FUNCTION_10_0()
{
  v3 = (*(v0 + 56) + 16 * v1);
  v4 = *v3;
  v5 = v3[1];

  return sub_26699BF34(v4, v5);
}

void OUTLINED_FUNCTION_17_0()
{
  v1 = *(v0 - 136);
  v2 = *(v0 - 128) | (*(v0 - 126) << 16);
  v3 = *(v0 - 125) == 0;
}

void OUTLINED_FUNCTION_23(uint64_t a1@<X8>)
{
  *(v3 - 96) = a1;
  *(v3 - 86) = BYTE2(v2);
  *(v3 - 88) = v1;
  *(v3 - 85) = 0;
}

void OUTLINED_FUNCTION_24()
{
  v1 = *(v0 - 80);
  v2 = *(v0 - 72);
  v3 = *(v0 - 70) == 0;
}

void OUTLINED_FUNCTION_27()
{
  v1 = *(v0 - 136);
  v2 = *(v0 - 128) | (*(v0 - 124) << 32);
  v3 = *(v0 - 123);
}

void OUTLINED_FUNCTION_28()
{
  v1 = *(v0 - 80);
  v2 = *(v0 - 72) | (*(v0 - 70) << 16);
  v3 = *(v0 - 69);
}

uint64_t OUTLINED_FUNCTION_34(uint64_t a1)
{
  v3 = *(v1 + 112);
  v4 = a1 + *(v1 + 104);
  return v2;
}

uint64_t OUTLINED_FUNCTION_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 - 160);

  return __swift_storeEnumTagSinglePayload(v6, 1, 1, a4);
}

BOOL sub_2669AD1C4(void (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v5 = *(v2 + *(type metadata accessor for GetContactQuickActionButtonsView(0) + 28) + 8);
  a1();
  v6 = sub_26699F950();

  if (v6)
  {
    return 0;
  }

  v9 = *(a2(v7) + 16);

  return v9 == 0;
}

uint64_t sub_2669AD244@<X0>(_BYTE *a1@<X8>)
{
  *a1 = sub_2669C6074();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC5A8, &qword_2669C8310);
  return sub_2669AD290(v1, &a1[*(v3 + 44)]);
}

uint64_t sub_2669AD290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v36 = a2;
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  v4 = *(ContactQuickActionButtonsView - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](ContactQuickActionButtonsView - 8);
  v31[1] = v6;
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC5B0, &qword_2669C8318);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v35 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v34 = v31 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v33 = v31 - v15;
  MEMORY[0x28223BE20](v14);
  v31[0] = v31 - v16;
  v37 = sub_2669C5944();
  sub_2669B2C48(a1, v7);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_2669B2CB0(v7, v18 + v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC5B8, &qword_2669C8320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC5C0, &qword_2669C8328);
  sub_26699A174(&qword_2800AC5C8, &qword_2800AC5B8, &qword_2669C8320);
  sub_2669B2D5C();
  sub_2669B3724(&qword_2800AC5F8, MEMORY[0x277D55A40]);
  v19 = v31[0];
  sub_2669C63D4();
  v37 = sub_2669C5934();
  sub_2669B2C48(v32, v7);
  v20 = swift_allocObject();
  sub_2669B2CB0(v7, v20 + v17);
  v21 = v33;
  sub_2669C63D4();
  v22 = v19;
  v23 = v19;
  v24 = v34;
  sub_2669B4E38(v23, v34, &qword_2800AC5B0, &qword_2669C8318);
  v25 = v35;
  sub_2669B4E38(v21, v35, &qword_2800AC5B0, &qword_2669C8318);
  v26 = v24;
  v27 = v24;
  v28 = v36;
  sub_2669B4E38(v26, v36, &qword_2800AC5B0, &qword_2669C8318);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC600, &qword_2669C8340);
  sub_2669B4E38(v25, v28 + *(v29 + 48), &qword_2800AC5B0, &qword_2669C8318);
  sub_2669B5184(v21, &qword_2800AC5B0, &qword_2669C8318);
  sub_2669B5184(v22, &qword_2800AC5B0, &qword_2669C8318);
  sub_2669B5184(v25, &qword_2800AC5B0, &qword_2669C8318);
  return sub_2669B5184(v27, &qword_2800AC5B0, &qword_2669C8318);
}

uint64_t sub_2669AD698@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v191 = a1;
  v192 = a2;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC620, &qword_2669C8388);
  v156 = *(v173 - 8);
  v2 = *(v156 + 64);
  MEMORY[0x28223BE20](v173);
  v159 = &v154 - v3;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC628, &qword_2669C8390);
  v4 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v171 = &v154 - v5;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC630, &qword_2669C8398);
  v6 = *(*(v185 - 8) + 64);
  MEMORY[0x28223BE20](v185);
  v172 = &v154 - v7;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC638, &qword_2669C83A0);
  v155 = *(v166 - 8);
  v8 = *(v155 + 64);
  MEMORY[0x28223BE20](v166);
  v158 = &v154 - v9;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC640, &qword_2669C83A8);
  v10 = *(*(v189 - 8) + 64);
  MEMORY[0x28223BE20](v189);
  v12 = &v154 - v11;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC648, &qword_2669C83B0);
  v13 = *(*(v181 - 8) + 64);
  MEMORY[0x28223BE20](v181);
  v184 = &v154 - v14;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC650, &qword_2669C83B8);
  v15 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v164 = &v154 - v16;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC658, &qword_2669C83C0);
  v17 = *(*(v183 - 8) + 64);
  MEMORY[0x28223BE20](v183);
  v165 = &v154 - v18;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC660, &qword_2669C83C8);
  v19 = *(*(v188 - 8) + 64);
  MEMORY[0x28223BE20](v188);
  v21 = &v154 - v20;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC668, &qword_2669C83D0);
  v22 = *(*(v187 - 8) + 64);
  MEMORY[0x28223BE20](v187);
  v182 = &v154 - v23;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC670, &qword_2669C83D8);
  v169 = *(v177 - 8);
  v24 = *(v169 + 64);
  v25 = MEMORY[0x28223BE20](v177);
  v157 = &v154 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v162 = &v154 - v28;
  MEMORY[0x28223BE20](v27);
  v160 = &v154 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC678, &qword_2669C83E0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v161 = &v154 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v186 = &v154 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v179 = &v154 - v37;
  MEMORY[0x28223BE20](v36);
  v168 = &v154 - v38;
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  v40 = *(ContactQuickActionButtonsView - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](ContactQuickActionButtonsView);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC680, &qword_2669C83E8);
  v180 = *(v193 - 8);
  v42 = *(v180 + 64);
  v43 = MEMORY[0x28223BE20](v193);
  v167 = &v154 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v154 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v178 = &v154 - v49;
  MEMORY[0x28223BE20](v48);
  v174 = &v154 - v50;
  v51 = sub_2669C5954();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v55 = &v154 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v52 + 16))(v55, v191, v51);
  v56 = v55;
  v57 = v194;
  v58 = (*(v52 + 88))(v56, v51);
  v59 = *MEMORY[0x277D55A28];
  v190 = v41;
  v191 = (&v154 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v58 == v59)
  {
    v175 = v21;
    v176 = v12;
    v60 = *&v57[*(ContactQuickActionButtonsView + 28) + 8];
    v195 = sub_2669BBE70();
    sub_2669B2C48(v57, &v154 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    v61 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v62 = swift_allocObject();
    sub_2669B2CB0(&v154 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v62 + v61);
    v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC688, &qword_2669C83F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC690, &qword_2669C83F8);
    sub_26699A174(&qword_2800AC698, &qword_2800AC688, &qword_2669C83F0);
    sub_26699A174(&qword_2800AC6A0, &qword_2800AC690, &qword_2669C83F8);
    sub_2669B3724(&qword_2800AC6A8, MEMORY[0x277D55A08]);
    sub_2669C63D4();
    v63 = *(sub_2669BBF88() + 16);

    v64 = v47;
    if (v63)
    {
      v65 = sub_2669BBF88();
      v195 = sub_2669B37D8(v65);
      sub_2669B376C(&v195);

      swift_getKeyPath();
      v66 = v191;
      sub_2669B2C48(v194, v191);
      v67 = swift_allocObject();
      sub_2669B2CB0(v66, v67 + v61);
      v68 = swift_allocObject();
      *(v68 + 16) = sub_2669B3C64;
      *(v68 + 24) = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6B0, &qword_2669C8420);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6B8, &qword_2669C8428);
      sub_26699A174(&qword_2800AC6C0, &qword_2800AC6B0, &qword_2669C8420);
      sub_26699A174(&qword_2800AC6C8, &qword_2800AC6B8, &qword_2669C8428);
      v69 = v162;
      sub_2669C63C4();
      v70 = v186;
      v71 = v177;
      (*(v169 + 32))(v186, v69, v177);
      v72 = 0;
    }

    else
    {
      v72 = 1;
      v71 = v177;
      v70 = v186;
    }

    __swift_storeEnumTagSinglePayload(v70, v72, 1, v71);
    v105 = v180;
    v106 = *(v180 + 16);
    v107 = v70;
    v108 = v178;
    v109 = v193;
    v106(v178, v64, v193);
    v110 = v107;
    v111 = v179;
    sub_2669B4E38(v110, v179, &qword_2800AC678, &qword_2669C83E0);
    v194 = v64;
    v112 = v182;
    v106(v182, v108, v109);
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6D0, &qword_2669C8430);
    sub_2669B4E38(v111, v112 + *(v113 + 48), &qword_2800AC678, &qword_2669C83E0);
    sub_2669B5184(v111, &qword_2800AC678, &qword_2669C83E0);
    v191 = *(v105 + 8);
    (v191)(v108, v109);
    sub_2669B4E38(v112, v171, &qword_2800AC668, &qword_2669C83D0);
    swift_storeEnumTagMultiPayload();
    sub_26699A174(&qword_2800AC6E8, &qword_2800AC668, &qword_2669C83D0);
    sub_2669B3B30();
    v114 = v172;
    sub_2669C5FB4();
    sub_2669B4E38(v114, v184, &qword_2800AC630, &qword_2669C8398);
    swift_storeEnumTagMultiPayload();
    sub_2669B39E0(&qword_2800AC6E0, &qword_2800AC658, &qword_2669C83C0, sub_2669B3A80);
    sub_2669B39E0(&qword_2800AC6F8, &qword_2800AC630, &qword_2669C8398, sub_2669B3B30);
    v115 = v175;
    sub_2669C5FB4();
    sub_2669B5184(v114, &qword_2800AC630, &qword_2669C8398);
    sub_2669B4E38(v115, v176, &qword_2800AC660, &qword_2669C83C8);
    swift_storeEnumTagMultiPayload();
    sub_2669B38FC();
    sub_2669C5FB4();
    sub_2669B5184(v115, &qword_2800AC660, &qword_2669C83C8);
    sub_2669B5184(v112, &qword_2800AC668, &qword_2669C83D0);
    sub_2669B5184(v186, &qword_2800AC678, &qword_2669C83E0);
    return (v191)(v194, v193);
  }

  else
  {
    v73 = v40;
    if (v58 == *MEMORY[0x277D55A18])
    {
      v175 = v21;
      v176 = v12;
      v74 = v194;
      v75 = *&v194[*(ContactQuickActionButtonsView + 28) + 8];
      v195 = sub_2669BBE64();
      v76 = v74;
      v77 = v191;
      sub_2669B2C48(v76, v191);
      v78 = (*(v40 + 80) + 16) & ~*(v40 + 80);
      v79 = swift_allocObject();
      sub_2669B2CB0(v77, v79 + v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC688, &qword_2669C83F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC690, &qword_2669C83F8);
      sub_26699A174(&qword_2800AC698, &qword_2800AC688, &qword_2669C83F0);
      sub_26699A174(&qword_2800AC6A0, &qword_2800AC690, &qword_2669C83F8);
      sub_2669B3724(&qword_2800AC6A8, MEMORY[0x277D55A08]);
      sub_2669C63D4();
      v80 = *(sub_2669BBF60() + 16);

      if (v80)
      {
        v81 = sub_2669BBF60();
        v195 = sub_2669B37D8(v81);
        sub_2669B376C(&v195);

        swift_getKeyPath();
        v82 = v191;
        sub_2669B2C48(v194, v191);
        v83 = swift_allocObject();
        sub_2669B2CB0(v82, v83 + v78);
        v84 = swift_allocObject();
        *(v84 + 16) = sub_2669B3CF0;
        *(v84 + 24) = v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6B0, &qword_2669C8420);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6B8, &qword_2669C8428);
        sub_26699A174(&qword_2800AC6C0, &qword_2800AC6B0, &qword_2669C8420);
        sub_26699A174(&qword_2800AC6C8, &qword_2800AC6B8, &qword_2669C8428);
        v85 = v160;
        sub_2669C63C4();
        v86 = v168;
        v87 = v177;
        (*(v169 + 32))(v168, v85, v177);
        v88 = 0;
      }

      else
      {
        v88 = 1;
        v87 = v177;
        v86 = v168;
      }

      __swift_storeEnumTagSinglePayload(v86, v88, 1, v87);
      v127 = v180;
      v128 = *(v180 + 16);
      v129 = v178;
      v130 = v193;
      v128(v178, v174, v193);
      v131 = v86;
      v132 = v179;
      sub_2669B4E38(v131, v179, &qword_2800AC678, &qword_2669C83E0);
      v133 = v182;
      v128(v182, v129, v130);
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6D0, &qword_2669C8430);
      sub_2669B4E38(v132, v133 + *(v134 + 48), &qword_2800AC678, &qword_2669C83E0);
      sub_2669B5184(v132, &qword_2800AC678, &qword_2669C83E0);
      v194 = *(v127 + 8);
      (v194)(v129, v130);
      sub_2669B4E38(v133, v164, &qword_2800AC668, &qword_2669C83D0);
      swift_storeEnumTagMultiPayload();
      sub_26699A174(&qword_2800AC6E8, &qword_2800AC668, &qword_2669C83D0);
      sub_2669B3A80();
      v135 = v165;
      sub_2669C5FB4();
      sub_2669B4E38(v135, v184, &qword_2800AC658, &qword_2669C83C0);
      swift_storeEnumTagMultiPayload();
      sub_2669B39E0(&qword_2800AC6E0, &qword_2800AC658, &qword_2669C83C0, sub_2669B3A80);
      sub_2669B39E0(&qword_2800AC6F8, &qword_2800AC630, &qword_2669C8398, sub_2669B3B30);
      v136 = v175;
      sub_2669C5FB4();
      sub_2669B5184(v135, &qword_2800AC658, &qword_2669C83C0);
      sub_2669B4E38(v136, v176, &qword_2800AC660, &qword_2669C83C8);
      swift_storeEnumTagMultiPayload();
      sub_2669B38FC();
      sub_2669C5FB4();
      sub_2669B5184(v136, &qword_2800AC660, &qword_2669C83C8);
      sub_2669B5184(v133, &qword_2800AC668, &qword_2669C83D0);
      sub_2669B5184(v168, &qword_2800AC678, &qword_2669C83E0);
      return (v194)(v174, v193);
    }

    else
    {
      v89 = v194;
      v90 = v191;
      if (v58 == *MEMORY[0x277D55A38])
      {
        v91 = v12;
        v92 = *&v194[*(ContactQuickActionButtonsView + 28) + 8];
        v195 = sub_2669BBF2C();
        sub_2669B2C48(v89, v90);
        v93 = (*(v73 + 80) + 16) & ~*(v73 + 80);
        v94 = swift_allocObject();
        v186 = v93;
        sub_2669B2CB0(v90, v94 + v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC688, &qword_2669C83F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC690, &qword_2669C83F8);
        sub_26699A174(&qword_2800AC698, &qword_2800AC688, &qword_2669C83F0);
        sub_26699A174(&qword_2800AC6A0, &qword_2800AC690, &qword_2669C83F8);
        sub_2669B3724(&qword_2800AC6A8, MEMORY[0x277D55A08]);
        sub_2669C63D4();
        v95 = *(sub_2669BBFB0() + 16);

        if (v95)
        {
          v96 = sub_2669BBFB0();
          v195 = sub_2669B37D8(v96);
          sub_2669B376C(&v195);

          swift_getKeyPath();
          v97 = v191;
          sub_2669B2C48(v194, v191);
          v98 = v186;
          v99 = swift_allocObject();
          sub_2669B2CB0(v97, v99 + v98);
          v100 = swift_allocObject();
          *(v100 + 16) = sub_2669B3894;
          *(v100 + 24) = v99;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6B0, &qword_2669C8420);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6B8, &qword_2669C8428);
          sub_26699A174(&qword_2800AC6C0, &qword_2800AC6B0, &qword_2669C8420);
          sub_26699A174(&qword_2800AC6C8, &qword_2800AC6B8, &qword_2669C8428);
          v101 = v157;
          sub_2669C63C4();
          v102 = v161;
          v103 = v177;
          (*(v169 + 32))(v161, v101, v177);
          v104 = 0;
        }

        else
        {
          v104 = 1;
          v103 = v177;
          v102 = v161;
        }

        __swift_storeEnumTagSinglePayload(v102, v104, 1, v103);
        v146 = v180;
        v147 = *(v180 + 16);
        v148 = v178;
        v149 = v193;
        v147(v178, v167, v193);
        v150 = v179;
        sub_2669B4E38(v102, v179, &qword_2800AC678, &qword_2669C83E0);
        v151 = v182;
        v147(v182, v148, v149);
        v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6D0, &qword_2669C8430);
        sub_2669B4E38(v150, v151 + *(v152 + 48), &qword_2800AC678, &qword_2669C83E0);
        sub_2669B5184(v150, &qword_2800AC678, &qword_2669C83E0);
        v153 = *(v146 + 8);
        v153(v148, v149);
        sub_2669B4E38(v151, v91, &qword_2800AC668, &qword_2669C83D0);
        swift_storeEnumTagMultiPayload();
        sub_2669B38FC();
        sub_26699A174(&qword_2800AC6E8, &qword_2800AC668, &qword_2669C83D0);
        sub_2669C5FB4();
        sub_2669B5184(v151, &qword_2800AC668, &qword_2669C83D0);
        sub_2669B5184(v161, &qword_2800AC678, &qword_2669C83E0);
        return (v153)(v167, v149);
      }

      else
      {
        v117 = v58 == *MEMORY[0x277D55A20];
        v176 = v12;
        v175 = v21;
        if (v117)
        {
          v118 = [*&v194[*(ContactQuickActionButtonsView + 24)] emailAddresses];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC718, qword_2669C8440);
          v119 = sub_2669C6764();

          v195 = v119;
          swift_getKeyPath();
          sub_2669B2C48(v89, v90);
          v120 = (*(v40 + 80) + 16) & ~*(v40 + 80);
          v121 = swift_allocObject();
          sub_2669B2CB0(v90, v121 + v120);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC720, &qword_2669C8480);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC690, &qword_2669C83F8);
          sub_26699A174(&qword_2800AC730, &qword_2800AC720, &qword_2669C8480);
          sub_26699A174(&qword_2800AC6A0, &qword_2800AC690, &qword_2669C83F8);
          v122 = v158;
          sub_2669C63C4();
          v123 = v155;
          v124 = v166;
          (*(v155 + 16))(v164, v122, v166);
          swift_storeEnumTagMultiPayload();
          sub_26699A174(&qword_2800AC6E8, &qword_2800AC668, &qword_2669C83D0);
          sub_2669B3A80();
          v125 = v165;
          sub_2669C5FB4();
          sub_2669B4E38(v125, v184, &qword_2800AC658, &qword_2669C83C0);
          swift_storeEnumTagMultiPayload();
          sub_2669B39E0(&qword_2800AC6E0, &qword_2800AC658, &qword_2669C83C0, sub_2669B3A80);
          sub_2669B39E0(&qword_2800AC6F8, &qword_2800AC630, &qword_2669C8398, sub_2669B3B30);
          v126 = v175;
          sub_2669C5FB4();
          sub_2669B5184(v125, &qword_2800AC658, &qword_2669C83C0);
          sub_2669B4E38(v126, v176, &qword_2800AC660, &qword_2669C83C8);
          swift_storeEnumTagMultiPayload();
          sub_2669B38FC();
          sub_2669C5FB4();
          sub_2669B5184(v126, &qword_2800AC660, &qword_2669C83C8);
          return (*(v123 + 8))(v158, v124);
        }

        else if (v58 == *MEMORY[0x277D55A30])
        {
          v137 = [*&v194[*(ContactQuickActionButtonsView + 24)] postalAddresses];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC718, qword_2669C8440);
          v138 = sub_2669C6764();

          v195 = v138;
          swift_getKeyPath();
          sub_2669B2C48(v89, v90);
          v139 = (*(v40 + 80) + 16) & ~*(v40 + 80);
          v140 = swift_allocObject();
          sub_2669B2CB0(v90, v140 + v139);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC720, &qword_2669C8480);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC710, &qword_2669C8438);
          sub_26699A174(&qword_2800AC728, &qword_2800AC720, &qword_2669C8480);
          sub_26699A174(&qword_2800AC708, &qword_2800AC710, &qword_2669C8438);
          v141 = v159;
          sub_2669C63C4();
          v142 = v156;
          v143 = v173;
          (*(v156 + 16))(v171, v141, v173);
          swift_storeEnumTagMultiPayload();
          v194 = sub_26699A174(&qword_2800AC6E8, &qword_2800AC668, &qword_2669C83D0);
          sub_2669B3B30();
          v144 = v172;
          sub_2669C5FB4();
          sub_2669B4E38(v144, v184, &qword_2800AC630, &qword_2669C8398);
          swift_storeEnumTagMultiPayload();
          sub_2669B39E0(&qword_2800AC6E0, &qword_2800AC658, &qword_2669C83C0, sub_2669B3A80);
          sub_2669B39E0(&qword_2800AC6F8, &qword_2800AC630, &qword_2669C8398, sub_2669B3B30);
          v145 = v175;
          sub_2669C5FB4();
          sub_2669B5184(v144, &qword_2800AC630, &qword_2669C8398);
          sub_2669B4E38(v145, v176, &qword_2800AC660, &qword_2669C83C8);
          swift_storeEnumTagMultiPayload();
          sub_2669B38FC();
          sub_2669C5FB4();
          sub_2669B5184(v145, &qword_2800AC660, &qword_2669C83C8);
          return (*(v142 + 8))(v159, v143);
        }

        else
        {
          result = sub_2669C6A84();
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2669AF7AC(uint64_t a1)
{
  v3 = sub_2669C5954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x277D55A28])
  {
    v9 = *(v1 + *(type metadata accessor for GetContactQuickActionButtonsView(0) + 28) + 8);
    sub_2669BBE70();
    v10 = sub_26699F950();

    return v10 == 0;
  }

  if (v8 == *MEMORY[0x277D55A18])
  {
    v13 = sub_2669BBE64;
    v14 = sub_2669BBF60;
    return sub_2669AD1C4(v13, v14);
  }

  if (v8 == *MEMORY[0x277D55A38])
  {
    v13 = sub_2669BBF2C;
    v14 = sub_2669BBFB0;
    return sub_2669AD1C4(v13, v14);
  }

  if (v8 == *MEMORY[0x277D55A20])
  {
    v16 = *(v1 + *(type metadata accessor for GetContactQuickActionButtonsView(0) + 28) + 8) + OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_directInvocationsModel;
    v17 = sub_2669C5B14();
LABEL_16:
    v19 = *(v17 + 16);

    return v19 == 0;
  }

  if (v8 == *MEMORY[0x277D55A30])
  {
    v18 = *(v1 + *(type metadata accessor for GetContactQuickActionButtonsView(0) + 28) + 8) + OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_directInvocationsModel;
    v17 = sub_2669C5B34();
    goto LABEL_16;
  }

  result = sub_2669C6A84();
  __break(1u);
  return result;
}

void sub_2669AF9F0()
{
  OUTLINED_FUNCTION_35();
  v32 = v1;
  v33 = v0;
  v31[2] = v2;
  v31[3] = v3;
  v31[1] = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC5E0, &qword_2669C8330);
  OUTLINED_FUNCTION_14_1(v9);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = v31 - v13;
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  if (*v6)
  {
    v16 = *(v6 + *(ContactQuickActionButtonsView + 28) + 8);
    v17 = *(v16 + OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_shouldUseLightBackground);
    v18 = *v6;
    sub_2669C65B4();

    *v14 = sub_2669C68E4() & 1;
    v14[1] = v17;
    v19 = sub_2669AD698(v8, &v14[*(v9 + 56)]);
    v20 = &v14[*(v9 + 60)];
    MEMORY[0x28223BE20](v19);
    v31[-2] = v6;
    v31[-1] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC608, &qword_2669C8348);
    OUTLINED_FUNCTION_1_6();
    sub_26699A174(v21, &qword_2800AC608, &qword_2669C8348);
    sub_2669C6364();
    v22 = *(v16 + OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_textColor);
    *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC618, &qword_2669C8350) + 36)] = v22;

    LOBYTE(v20) = sub_2669AF7AC(v8);
    KeyPath = swift_getKeyPath();
    v24 = swift_allocObject();
    *(v24 + 16) = v20 & 1;
    v25 = v32;
    sub_2669B366C(v14, v32);
    v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC5C0, &qword_2669C8328) + 36));
    v27 = v33;
    *v26 = KeyPath;
    v26[1] = v27;
    v26[2] = v24;
    OUTLINED_FUNCTION_37();
  }

  else
  {
    v28 = *(v6 + 8);
    sub_2669C65D4();
    OUTLINED_FUNCTION_6_1();
    sub_2669B3724(v29, v30);
    OUTLINED_FUNCTION_22();
    __break(1u);
  }
}

uint64_t sub_2669AFC5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + *(type metadata accessor for GetContactQuickActionButtonsView(0) + 28) + 8);
  sub_2669BC1FC(a2);
  sub_2669C2108();
  sub_266999FC4();
  return sub_2669C6324();
}

uint64_t sub_2669AFCE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC768, &qword_2669C84C8);
  sub_26699A174(&qword_2800AC770, &qword_2800AC768, &qword_2669C84C8);
  return sub_2669C6314();
}

uint64_t sub_2669AFDB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2669C6304();
  *a1 = result;
  return result;
}

uint64_t sub_2669AFDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26699F950();
  if (v4)
  {
    sub_26699F6CC(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D5E4670](0, a1);
    }

    else
    {
      v5 = *(a1 + 32);
    }

    v6 = v5;
    sub_2669C58C4();
  }

  sub_2669C66E4();
  v8 = v7;

  if (!v8 && v4)
  {
    sub_26699F6CC(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D5E4670](0, a1);
    }

    else
    {
      v9 = *(a1 + 32);
    }

    v10 = v9;
    sub_2669C5904();
  }

  sub_266999FC4();
  result = sub_2669C6164();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_2669AFF28(void **a1, uint64_t a2)
{
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  v5 = *(ContactQuickActionButtonsView - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](ContactQuickActionButtonsView - 8);
  v7 = *a1;
  sub_2669B2C48(a2, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2669B2CB0(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v13 = a2;
  v14 = v7;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7A0, &qword_2669C84F0);
  sub_26699A174(&qword_2800AC7A8, &qword_2800AC7A0, &qword_2669C84F0);
  return sub_2669C6364();
}

uint64_t sub_2669B00C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7B0, &qword_2669C84F8);
  sub_26699A174(&qword_2800AC7B8, &qword_2800AC7B0, &qword_2669C84F8);
  return sub_2669C6314();
}

uint64_t sub_2669B018C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2669C5FA4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7C0, &qword_2669C8500) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC778, &qword_2669C84D0);
  sub_26699A174(&qword_2800AC780, &qword_2800AC778, &qword_2669C84D0);
  sub_2669C5D34();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7C8, &unk_2669C8538);
  v5 = v2 + *(result + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_2669B0298@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for GetContactQuickActionButtonsView(0) + 28) + 8);
  v6 = [a2 identifier];
  v7 = sub_2669C6654();
  v9 = v8;

  v10 = sub_2669C5874();
  sub_2669BB23C(v7, v9, v10);

  sub_266999FC4();
  v11 = sub_2669C6164();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [a2 value];
  sub_2669C6654();

  v19 = sub_2669C6164();
  v21 = v20;
  v22 = v15 & 1;
  v27 = v15 & 1;
  v24 = v23 & 1;
  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v22;
  *(a3 + 24) = v17;
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;
  *(a3 + 48) = v23 & 1;
  *(a3 + 56) = v25;
  sub_2669A22A8(v11, v13, v22);

  sub_2669A22A8(v19, v21, v24);

  sub_26699A018(v19, v21, v24);

  sub_26699A018(v11, v13, v27);
}

uint64_t sub_2669B0480@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2669C6304();
  *a1 = result;
  return result;
}

void sub_2669B04BC()
{
  OUTLINED_FUNCTION_35();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_2_6();
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_1(v10, v11, v12, v13, v14, v15, v16, v17, v21);
  v18 = OUTLINED_FUNCTION_9_1();
  sub_2669B2CB0(v0, v18 + v2);
  *(v18 + v7) = v4;
  v19 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7A0, &qword_2669C84F0);
  OUTLINED_FUNCTION_1_6();
  sub_26699A174(v20, &qword_2800AC7A0, &qword_2669C84F0);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_37();
}

void sub_2669B05B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF80, &qword_2669C76E8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  v10 = *(a1 + *(ContactQuickActionButtonsView + 28) + 8) + OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_directInvocationsModel;
  v11 = sub_2669C5B44();
  v12 = sub_2669C58D4();
  if (!*(v11 + 16))
  {

    goto LABEL_7;
  }

  v14 = sub_2669BB76C(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_7:

    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v26 = sub_2669C5C94();
    __swift_project_value_buffer(v26, qword_2800ACC88);
    v35 = sub_2669C5C74();
    v27 = sub_2669C6864();
    if (os_log_type_enabled(v35, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266996000, v35, v27, "#GetContactQuickActionButtonsView could not obtain direct invocation for button press", v28, 2u);
      MEMORY[0x26D5E4D50](v28, -1, -1);
    }

    goto LABEL_16;
  }

  v17 = (*(v11 + 56) + 16 * v14);
  v19 = *v17;
  v18 = v17[1];
  sub_26699BF34(*v17, v18);

  sub_26699F8F0(0, &qword_2800AC080, 0x277D471B0);
  v20 = sub_2669C6844();
  if (v20)
  {
    v21 = v20;
    v22 = sub_2669C5954();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v22);
    v23 = *(ContactQuickActionButtonsView + 20);
    sub_2669B4E38(v8, v6, &qword_2800ABF80, &qword_2669C76E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC578, "~#");
    sub_2669C6344();
    sub_2669B5184(v8, &qword_2800ABF80, &qword_2669C76E8);
    if (*a1)
    {
      v24 = *a1;
      v25 = v21;
      sub_2669C65C4();

      sub_26699BE60(v19, v18);
    }

    else
    {
      v33 = *(a1 + 8);
      sub_2669C65D4();
      sub_2669B3724(&qword_2800AC010, MEMORY[0x277D63F60]);
      sub_2669C5E74();
      __break(1u);
    }

    return;
  }

  if (qword_2800ABEB8 != -1)
  {
    swift_once();
  }

  v29 = sub_2669C5C94();
  __swift_project_value_buffer(v29, qword_2800ACC88);
  v35 = sub_2669C5C74();
  v30 = sub_2669C6864();
  if (os_log_type_enabled(v35, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_266996000, v35, v30, "#GetContactQuickActionButtonsView could not convert direct invocation to actionable command", v31, 2u);
    MEMORY[0x26D5E4D50](v31, -1, -1);
  }

  sub_26699BE60(v19, v18);
LABEL_16:
  v32 = v35;
}

uint64_t sub_2669B09E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7B0, &qword_2669C84F8);
  sub_26699A174(&qword_2800AC7B8, &qword_2800AC7B0, &qword_2669C84F8);
  return sub_2669C6314();
}

uint64_t sub_2669B0AA0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2669C5FA4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7C0, &qword_2669C8500) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC778, &qword_2669C84D0);
  OUTLINED_FUNCTION_0_7();
  sub_26699A174(v3, &qword_2800AC778, &qword_2669C84D0);
  sub_2669C5D34();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7C8, &unk_2669C8538);
  v6 = v2 + *(result + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 0;
  return result;
}

uint64_t sub_2669B0B94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC738, &qword_2669C84B0);
  sub_2669B3E08();
  return sub_2669C60F4();
}

void sub_2669B0C20()
{
  OUTLINED_FUNCTION_35();
  v1 = v0;
  v3 = v2;
  v4 = OUTLINED_FUNCTION_2_6();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v11[1] = v3;
  sub_2669B2C48(v1, v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_2669B2CB0(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC688, &qword_2669C83F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC750, &qword_2669C84B8);
  sub_26699A174(&qword_2800AC698, &qword_2800AC688, &qword_2669C83F0);
  sub_26699A174(&qword_2800AC748, &qword_2800AC750, &qword_2669C84B8);
  sub_2669B3724(&qword_2800AC6A8, MEMORY[0x277D55A08]);
  sub_2669C63D4();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_2669B0E0C(void **a1, uint64_t a2)
{
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  v5 = *(ContactQuickActionButtonsView - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](ContactQuickActionButtonsView - 8);
  v7 = *a1;
  sub_2669B2C48(a2, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  sub_2669B2CB0(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  v13 = v7;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC758, &qword_2669C84C0);
  sub_26699A174(&qword_2800AC760, &qword_2800AC758, &qword_2669C84C0);
  return sub_2669C6364();
}

void sub_2669B0F90(uint64_t a1, uint64_t a2)
{
  v3 = sub_2669C5804();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - v10;
  v12 = sub_2669C57C4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  sub_2669C58E4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2669B5184(v11, &qword_2800AC540, &qword_2669C8220);
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v20 = sub_2669C5C94();
    __swift_project_value_buffer(v20, qword_2800ACC88);
    v21 = sub_2669C5C74();
    v22 = sub_2669C6854();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_266996000, v21, v22, "#GetContactQuickActionButtonsView message tapped but no URL available", v23, 2u);
      MEMORY[0x26D5E4D50](v23, -1, -1);
    }
  }

  else
  {
    v52 = v7;
    (*(v13 + 32))(v19, v11, v12);
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v24 = sub_2669C5C94();
    __swift_project_value_buffer(v24, qword_2800ACC88);
    (*(v13 + 16))(v17, v19, v12);
    v25 = sub_2669C5C74();
    v26 = sub_2669C6854();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v48 = v4;
      v28 = v27;
      v29 = swift_slowAlloc();
      v50 = a2;
      v30 = v29;
      v53 = v29;
      *v28 = 136315138;
      v31 = sub_2669C5794();
      v49 = v3;
      v33 = v32;
      v51 = *(v13 + 8);
      v51(v17, v12);
      v34 = sub_26699F100(v31, v33, &v53);
      v3 = v49;

      *(v28 + 4) = v34;
      _os_log_impl(&dword_266996000, v25, v26, "#GetContactQuickActionButtonsView opening URL %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      v35 = v30;
      a2 = v50;
      MEMORY[0x26D5E4D50](v35, -1, -1);
      v36 = v28;
      v4 = v48;
      MEMORY[0x26D5E4D50](v36, -1, -1);
    }

    else
    {

      v51 = *(v13 + 8);
      v51(v17, v12);
    }

    v37 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
    sub_2669B49DC(v37);
    v38 = v52;
    if (v39)
    {
    }

    else
    {
      sub_2669C57F4();
      v40 = sub_2669C57E4();
      v42 = v41;
      (*(v4 + 8))(v38, v3);
      sub_2669B4A4C(v40, v42, v37);
    }

    v43 = sub_2669C57A4();
    [v37 setPunchOutUri_];

    v44 = *a2;
    if (*a2)
    {
      v45 = v37;
      v46 = v44;
      sub_2669C65C4();

      v51(v19, v12);
    }

    else
    {
      v47 = *(a2 + 8);
      sub_2669C65D4();
      sub_2669B3724(&qword_2800AC010, MEMORY[0x277D63F60]);
      sub_2669C5E74();
      __break(1u);
    }
  }
}

uint64_t sub_2669B1538()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC768, &qword_2669C84C8);
  sub_26699A174(&qword_2800AC770, &qword_2800AC768, &qword_2669C84C8);
  return sub_2669C6314();
}

uint64_t sub_2669B1604()
{
  v0 = OUTLINED_FUNCTION_15_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_0_7();
  sub_26699A174(v2, &qword_2800AC778, &qword_2669C84D0);
  return sub_2669C5D34();
}

uint64_t sub_2669B1690@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2669C6304();
  *a1 = result;
  return result;
}

void sub_2669B16CC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_2669C6654();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_2669B1724(void **a1, uint64_t a2)
{
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  v5 = *(ContactQuickActionButtonsView - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](ContactQuickActionButtonsView - 8);
  v7 = *a1;
  sub_2669B2C48(a2, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2669B2CB0(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v13 = a2;
  v14 = v7;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7D0, &qword_2669C8548);
  sub_26699A174(&qword_2800AC7D8, &qword_2800AC7D0, &qword_2669C8548);
  return sub_2669C6364();
}

void sub_2669B18BC()
{
  OUTLINED_FUNCTION_35();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF80, &qword_2669C76E8);
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  v16 = *(v5 + *(ContactQuickActionButtonsView + 28) + 8);
  v17 = v1();
  v18 = [v3 identifier];
  sub_2669C6654();

  if (!*(v17 + 16))
  {

    goto LABEL_7;
  }

  v19 = OUTLINED_FUNCTION_3();
  v21 = sub_2669BB76C(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_7:

    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v37 = sub_2669C5C94();
    __swift_project_value_buffer(v37, qword_2800ACC88);
    v51 = sub_2669C5C74();
    v38 = sub_2669C6864();
    if (os_log_type_enabled(v51, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_266996000, v51, v38, "#GetContactQuickActionButtonsView could not obtain direct invocation for button press", v39, 2u);
      MEMORY[0x26D5E4D50](v39, -1, -1);
    }

    goto LABEL_16;
  }

  v24 = (*(v17 + 56) + 16 * v21);
  v26 = *v24;
  v25 = v24[1];
  v27 = OUTLINED_FUNCTION_3();
  sub_26699BF34(v27, v28);

  sub_26699F8F0(0, &qword_2800AC080, 0x277D471B0);
  OUTLINED_FUNCTION_3();
  v29 = sub_2669C6844();
  if (v29)
  {
    v30 = v29;
    v31 = sub_2669C5954();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v31);
    v32 = *(ContactQuickActionButtonsView + 20);
    sub_2669B4E38(v14, v12, &qword_2800ABF80, &qword_2669C76E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC578, "~#");
    sub_2669C6344();
    sub_2669B5184(v14, &qword_2800ABF80, &qword_2669C76E8);
    if (*v5)
    {
      v33 = *v5;
      v34 = v30;
      sub_2669C65C4();

      v35 = OUTLINED_FUNCTION_3();
      sub_26699BE60(v35, v36);
      OUTLINED_FUNCTION_37();
    }

    else
    {
      v47 = *(v5 + 8);
      sub_2669C65D4();
      OUTLINED_FUNCTION_6_1();
      sub_2669B3724(v48, v49);
      OUTLINED_FUNCTION_22();
      __break(1u);
    }

    return;
  }

  if (qword_2800ABEB8 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v40 = sub_2669C5C94();
  __swift_project_value_buffer(v40, qword_2800ACC88);
  v51 = sub_2669C5C74();
  v41 = sub_2669C6864();
  if (os_log_type_enabled(v51, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_266996000, v51, v41, "#GetContactQuickActionButtonsView could not convert direct invocation to actionable command", v42, 2u);
    MEMORY[0x26D5E4D50](v42, -1, -1);
  }

  v43 = OUTLINED_FUNCTION_3();
  sub_26699BE60(v43, v44);
LABEL_16:
  OUTLINED_FUNCTION_37();
}

uint64_t sub_2669B1CA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7E0, &qword_2669C8550);
  sub_26699A174(&qword_2800AC7E8, &qword_2800AC7E0, &qword_2669C8550);
  return sub_2669C6314();
}

uint64_t sub_2669B1D70@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2669C5FA4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7F0, &qword_2669C8558) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7F8, &qword_2669C8560);
  sub_26699A174(&qword_2800AC800, &qword_2800AC7F8, &qword_2669C8560);
  sub_2669C5D34();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC808, &qword_2669C8568);
  v5 = v2 + *(result + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_2669B1E7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for GetContactQuickActionButtonsView(0) + 28) + 8);
  v6 = [a2 identifier];
  v7 = sub_2669C6654();
  v9 = v8;

  v10 = sub_2669C5874();
  sub_2669BB23C(v7, v9, v10);

  sub_266999FC4();
  v11 = sub_2669C6164();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_2669C6884();
  v18 = sub_2669C6164();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  KeyPath = swift_getKeyPath();
  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v15 & 1;
  *(a3 + 24) = v17;
  *(a3 + 32) = v18;
  *(a3 + 40) = v20;
  *(a3 + 48) = v22 & 1;
  *(a3 + 56) = v24;
  *(a3 + 64) = KeyPath;
  *(a3 + 72) = 0;
  *(a3 + 80) = 1;
  sub_2669A22A8(v11, v13, v15 & 1);

  sub_2669A22A8(v18, v20, v22 & 1);

  sub_26699A018(v18, v20, v22 & 1);

  sub_26699A018(v11, v13, v15 & 1);
}