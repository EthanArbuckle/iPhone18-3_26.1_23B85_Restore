unint64_t sub_264695758()
{
  result = qword_27FF76E50;
  if (!qword_27FF76E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E28, &qword_26478BE18);
    sub_2646957E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76E50);
  }

  return result;
}

unint64_t sub_2646957E4()
{
  result = qword_27FF76E58;
  if (!qword_27FF76E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E60, &qword_26478BE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76E58);
  }

  return result;
}

unint64_t sub_264695854()
{
  result = qword_27FF76E68;
  if (!qword_27FF76E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E70, &unk_26478BE60);
    sub_2646955F8();
    sub_264695758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76E68);
  }

  return result;
}

uint64_t LocationSelectionView.init(sessionViewModel:userSessionConfiguration:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationSelectionView(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  swift_storeEnumTagMultiPayload();
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v4[9];
  sub_2647852E4();
  *v7 = v16;
  *(v7 + 8) = v17;
  v8 = a2 + v4[10];
  sub_2647852E4();
  *v8 = v16;
  *(v8 + 8) = v17;
  v9 = (a2 + v4[7]);
  type metadata accessor for SessionViewModel(0);
  sub_264695EA8(&qword_27FF75DC0, type metadata accessor for SessionViewModel);

  *v9 = sub_264784174();
  v9[1] = v10;
  v11 = (a2 + v4[8]);
  type metadata accessor for UserSessionConfiguration();
  sub_264695EA8(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration);

  v12 = sub_264784174();
  v14 = v13;

  *v11 = v12;
  v11[1] = v14;
  *a2 = sub_264695EF0;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  return result;
}

void sub_264695B24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v1 = v2;
  v0 = objc_allocWithZone(type metadata accessor for LocationSearchViewModel());
  LocationSearchViewModel.init(selectedLocation:destinationType:geofenceSize:)(v2, v2, &v1);
}

uint64_t sub_264695C58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264784574();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for LocationSelectionView(0);
  sub_26460CCE8(v1 + *(v12 + 20), v11, &qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2647840D4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2647859E4();
    v16 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_264695EA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LocationSelectionView.mapContentView.getter@<X0>(uint64_t a1@<X8>)
{
  v147 = a1;
  v2 = sub_2647848B4();
  v145 = *(v2 - 8);
  v146 = v2;
  v3 = *(v145 + 64);
  MEMORY[0x28223BE20](v2);
  v142 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2647845A4();
  v140 = *(v5 - 8);
  v141 = v5;
  v6 = *(v140 + 64);
  MEMORY[0x28223BE20](v5);
  v139 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264783B94();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v150 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264785704();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v148 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E80, &qword_26478BEE0);
  v14 = *(*(v124 - 1) + 64);
  MEMORY[0x28223BE20](v124);
  v121 = &v104 - v15;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E88, &qword_26478BEE8);
  v16 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v122 = &v104 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E90, &qword_26478BEF0);
  v19 = *(v18 - 8);
  v127 = v18;
  v128 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v125 = &v104 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E98, &qword_26478BEF8);
  v23 = *(v22 - 8);
  v131 = v22;
  v132 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v126 = &v104 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76EA0, &qword_26478BF00);
  v27 = *(v26 - 8);
  v133 = v26;
  v134 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v129 = &v104 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76EA8, &qword_26478BF08);
  v31 = *(v30 - 8);
  v136 = v30;
  v137 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v130 = &v104 - v33;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76EB0, &qword_26478BF10);
  v138 = *(v151 - 8);
  v34 = *(v138 + 64);
  MEMORY[0x28223BE20](v151);
  v135 = &v104 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76EB8, &qword_26478BF18);
  v37 = *(v36 - 8);
  v143 = v36;
  v144 = v37;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v152 = &v104 - v39;
  v149 = v1;
  v41 = *v1;
  v40 = v1[1];
  v42 = *(v1 + 16);
  v43 = type metadata accessor for LocationSearchViewModel();
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel);
  v44 = v43;
  v45 = sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v114 = *(&v174 + 1);
  v115 = v174;
  v116 = v175;
  v113 = v176;
  v46 = sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v112 = *&v156[0];
  v111 = *(v156 + 8);
  v47 = sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v109 = v172;
  v110 = v171;
  v108 = v173;
  v48 = sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v107 = v169;
  v106 = v170;
  v117 = v41;
  v119 = v40;
  v120 = v44;
  v118 = v42;
  v49 = sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v105 = v166;
  v50 = v167;
  v51 = v168;
  v52 = sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  *&v156[0] = v115;
  *(&v156[0] + 1) = v114;
  v157 = v113;
  v156[1] = v116;
  *(v158 + 8) = v111;
  *&v158[0] = v112;
  *(&v158[1] + 1) = v110;
  *&v159 = v109;
  BYTE8(v159) = v108;
  *(v160 + 8) = v106;
  *&v160[0] = v107;
  *(&v160[1] + 1) = v105;
  *&v161 = v50;
  BYTE8(v161) = v51;
  v162 = v164;
  v163 = v165;
  sub_264686EA8();
  v53 = v121;
  sub_264785034();
  v182 = v161;
  v183 = v162;
  v184 = v163;
  v178 = v158[1];
  v179 = v159;
  v180 = v160[0];
  v181 = v160[1];
  v174 = v156[0];
  v175 = v156[1];
  v176 = v157;
  v177 = v158[0];
  sub_2646870F0(&v174);
  sub_26469751C();
  v54 = v122;
  sub_264785074();
  sub_26460CD50(v53, &qword_27FF76E80, &qword_26478BEE0);
  v55 = sub_264784294();
  v56 = sub_264784C34();
  v57 = v123;
  v58 = v54 + *(v123 + 36);
  *v58 = v55;
  *(v58 + 8) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B70, &qword_26478C010);
  v59 = *(sub_264784304() - 8);
  v60 = *(v59 + 72);
  v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_2647889B0;
  sub_2647842E4();
  sub_2647842F4();
  v63 = sub_2646975D8();
  v64 = v125;
  MEMORY[0x26673ED90](1, v62, v57, v63);

  sub_26460CD50(v54, &qword_27FF76E88, &qword_26478BEE8);
  v155 = v149;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76ED8, &qword_26478C018);
  *&v156[0] = v57;
  *(&v156[0] + 1) = v63;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = sub_26460CDF0(&qword_27FF76EE0, &qword_27FF76ED8, &qword_26478C018);
  v69 = v126;
  v68 = v127;
  sub_2647850E4();
  (*(v128 + 8))(v64, v68);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v125 = ObjCClassFromMetadata;
  v124 = objc_opt_self();
  v71 = [v124 bundleForClass_];
  sub_264783B84();
  v169 = sub_264785754();
  *&v170 = v72;
  *&v156[0] = v68;
  *(&v156[0] + 1) = v65;
  *&v156[1] = OpaqueTypeConformance2;
  *(&v156[1] + 1) = v67;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = sub_264613FC4();
  v75 = v129;
  v76 = v131;
  v77 = MEMORY[0x277D837D0];
  v78 = v74;
  v128 = v74;
  sub_264784F54();

  v79 = v69;
  v80 = v76;
  (*(v132 + 8))(v79, v76);
  v81 = v139;
  v82 = v140;
  v83 = v141;
  (*(v140 + 104))(v139, *MEMORY[0x277CDDDC0], v141);
  *&v156[0] = v80;
  *(&v156[0] + 1) = v77;
  *&v156[1] = v73;
  *(&v156[1] + 1) = v78;
  v84 = swift_getOpaqueTypeConformance2();
  v85 = v130;
  v86 = v133;
  sub_264785084();
  (*(v82 + 8))(v81, v83);
  (*(v134 + 8))(v75, v86);
  v87 = sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v88 = v142;
  sub_2647848A4();
  v169 = v86;
  *&v170 = v84;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = v136;
  v91 = v135;
  sub_264784EB4();

  (*(v145 + 8))(v88, v146);
  (*(v137 + 8))(v85, v90);
  v92 = v149;
  v154 = v149;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76EE8, &qword_26478C048);
  *&v156[0] = v90;
  *(&v156[0] + 1) = v89;
  v145 = swift_getOpaqueTypeConformance2();
  v93 = sub_26469A614();
  v94 = v151;
  sub_264784F94();
  (*(v138 + 8))(v91, v94);
  sub_264785694();
  v95 = [v124 bundleForClass_];
  sub_264783B84();
  v96 = sub_264785754();
  v150 = v97;
  v169 = v96;
  *&v170 = v97;
  v98 = v92 + *(type metadata accessor for LocationSelectionView(0) + 36);
  v99 = *v98;
  v100 = *(v98 + 1);
  LOBYTE(v164) = v99;
  *(&v164 + 1) = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  sub_264785314();
  LODWORD(v148) = LOBYTE(v156[1]);
  v153 = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FF8, &qword_264789B68);
  *&v156[0] = v151;
  *(&v156[0] + 1) = v146;
  *&v156[1] = v145;
  *(&v156[1] + 1) = v93;
  swift_getOpaqueTypeConformance2();
  sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90);
  sub_2646A2298(&qword_27FF76048, &qword_27FF75FF8, &qword_264789B68, sub_26465D250);
  v101 = v143;
  v102 = v152;
  sub_2647850A4();

  return (*(v144 + 8))(v102, v101);
}

double sub_264697040@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2646970C4(__int128 *a1, void **a2)
{
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = *a1;
  v7 = a1[1];
  v4 = v3;
  return sub_264783EE4();
}

uint64_t sub_264697178(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_264783EE4();
}

uint64_t sub_264697230(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_264783EE4();
}

uint64_t sub_2646972E0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3;
  sub_264783EE4();
  return sub_2646CA060();
}

uint64_t sub_2646973A4(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3;
  sub_264783EE4();
  return sub_2646CD74C();
}

uint64_t sub_264697424@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  return result;
}

uint64_t sub_2646974A8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_264783EE4();
}

unint64_t sub_26469751C()
{
  result = qword_27FF76EC8;
  if (!qword_27FF76EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E80, &qword_26478BEE0);
    sub_264686EA8();
    sub_264695EA8(&qword_27FF76008, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76EC8);
  }

  return result;
}

unint64_t sub_2646975D8()
{
  result = qword_27FF76ED0;
  if (!qword_27FF76ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E88, &qword_26478BEE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E80, &qword_26478BEE0);
    sub_26469751C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76ED0);
  }

  return result;
}

uint64_t sub_2646976A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77040, &qword_26478C378);
  v3 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77048, &qword_26478C380);
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = *(v66 + 64);
  MEMORY[0x28223BE20](v5);
  v65 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77050, &qword_26478C388);
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77058, &qword_26478C390);
  v58 = *(v63 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v63);
  v14 = &v56 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77060, &qword_26478C398);
  v57 = *(v62 - 8);
  v15 = *(v57 + 64);
  MEMORY[0x28223BE20](v62);
  v17 = &v56 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77068, &qword_26478C3A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v71 = &v56 - v20;
  v21 = sub_264784934();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77070, &qword_26478C3A8);
  v61 = *(v23 - 8);
  v24 = *(v61 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v56 - v28;
  sub_2647848F4();
  v72 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77078, &unk_26478C3B0);
  sub_2646A25E4();
  v64 = v29;
  sub_264783FE4();
  LOBYTE(v29) = sub_264698438();
  v30 = sub_264784904();
  if (v29)
  {
    MEMORY[0x28223BE20](v30);
    *(&v56 - 2) = a1;
    sub_264783FE4();
    v31 = sub_26460CDF0(&qword_27FF770D0, &qword_27FF77070, &qword_26478C3A8);
    MEMORY[0x26673E690](v27, v23, v31);
    v73 = v23;
    v74 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v33 = sub_26460CDF0(&qword_27FF770C8, &qword_27FF77058, &qword_26478C390);
    v73 = v63;
    v74 = v33;
    v34 = swift_getOpaqueTypeConformance2();
    v35 = v62;
    MEMORY[0x26673E6A0](v17, v62, v60, OpaqueTypeConformance2, v34);
    (*(v57 + 8))(v17, v35);
    v36 = v61;
    v37 = v23;
    (*(v61 + 8))(v27, v23);
    v38 = v36;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77088, &qword_26478C3C0);
    sub_2646A269C();
    sub_264783FE4();
    v39 = sub_26460CDF0(&qword_27FF770C8, &qword_27FF77058, &qword_26478C390);
    v40 = v63;
    MEMORY[0x26673E690](v14, v63, v39);
    v41 = sub_26460CDF0(&qword_27FF770D0, &qword_27FF77070, &qword_26478C3A8);
    v37 = v23;
    v73 = v23;
    v74 = v41;
    v42 = swift_getOpaqueTypeConformance2();
    v73 = v40;
    v74 = v39;
    v43 = swift_getOpaqueTypeConformance2();
    v44 = v60;
    MEMORY[0x26673E6B0](v11, v62, v60, v42, v43);
    (*(v59 + 8))(v11, v44);
    (*(v58 + 8))(v14, v40);
    v38 = v61;
  }

  v45 = sub_264784914();
  MEMORY[0x28223BE20](v45);
  *(&v56 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF770D8, &qword_26478C3E8);
  sub_2646A28FC();
  v46 = v65;
  sub_2647842D4();
  v47 = v68;
  v48 = *(v69 + 48);
  v49 = *(v69 + 64);
  v50 = v64;
  v51 = v37;
  (*(v38 + 16))(v68, v64, v37);
  v52 = v71;
  sub_26460CCE8(v71, &v47[v48], &qword_27FF77068, &qword_26478C3A0);
  v54 = v66;
  v53 = v67;
  (*(v66 + 16))(&v47[v49], v46, v67);
  sub_264784754();
  (*(v54 + 8))(v46, v53);
  sub_26460CD50(v52, &qword_27FF77068, &qword_26478C3A0);
  return (*(v38 + 8))(v50, v51);
}

uint64_t sub_264697F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationSelectionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_264783F44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76330, &qword_264789F30);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  sub_264783F24();
  sub_2646A247C(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSelectionView);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_2646A24F4(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for LocationSelectionView);
  MEMORY[0x26673F080](v10, sub_2646A30F8, v17);
  sub_26460CDF0(&qword_27FF76328, &qword_27FF76330, &qword_264789F30);
  sub_264785034();
  (*(v12 + 8))(v15, v11);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77078, &unk_26478C3B0);
  v20 = (a2 + *(result + 36));
  *v20 = KeyPath;
  v20[1] = 0;
  return result;
}

uint64_t sub_2646981B0(uint64_t a1)
{
  v20 = sub_264784574();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v19 - v8);
  v10 = sub_2647840D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocationSelectionView(0);
  sub_26460CCE8(a1 + *(v15 + 20), v9, &qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_2647859E4();
    v17 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  sub_2647840C4();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_264698438()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  type metadata accessor for LocationSearchViewModel();
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel);
  v4 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (!(v15 >> 62))
  {
    v5 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = 1;
    return v8 & 1;
  }

  v11 = sub_264785C14();

  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_3:
  v6 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v14 == 1)
  {
LABEL_7:

    v8 = 0;
    return v8 & 1;
  }

  v7 = sub_264785E84();

  v8 = 0;
  if ((v7 & 1) == 0)
  {
    v9 = sub_264783FA4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (!v13 || v13 != 1)
    {
      v10 = sub_264785E84();

      v8 = v10 ^ 1;
      return v8 & 1;
    }

    goto LABEL_7;
  }

  return v8 & 1;
}

uint64_t sub_2646987B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationSelectionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_264783F44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76330, &qword_264789F30);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  sub_264783F34();
  sub_2646A247C(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSelectionView);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_2646A24F4(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for LocationSelectionView);
  MEMORY[0x26673F080](v10, sub_2646A2D44, v17);
  sub_26460CDF0(&qword_27FF76328, &qword_27FF76330, &qword_264789F30);
  sub_264785034();
  (*(v12 + 8))(v15, v11);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77078, &unk_26478C3B0);
  v20 = (a2 + *(result + 36));
  *v20 = KeyPath;
  v20[1] = 0;
  return result;
}

uint64_t sub_264698A54(uint64_t *a1)
{
  v2 = sub_2647840D4();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264783E24();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a1 + 16);
  type metadata accessor for LocationSearchViewModel();
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel);
  v14 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (LOBYTE(v51[0]) <= 2u && LOBYTE(v51[0]) && LOBYTE(v51[0]) != 1)
  {
  }

  else
  {
    v15 = sub_264785E84();

    if ((v15 & 1) == 0)
    {
      v16 = a1 + *(type metadata accessor for LocationSelectionView(0) + 36);
      v17 = *v16;
      v18 = *(v16 + 1);
      LOBYTE(v51[0]) = v17;
      v51[1] = v18;
      v50 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
      return sub_264785304();
    }
  }

  v20 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v21 = v51[0];
  if (!(v51[0] >> 62))
  {
    result = *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_9;
    }

LABEL_16:

    sub_264783DF4();
    v29 = sub_264783E14();
    v38 = sub_2647859F4();
    if (os_log_type_enabled(v29, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_264605000, v29, v38, "No selected location found on dismiss of location selection.", v39, 2u);
      MEMORY[0x266740650](v39, -1, -1);
    }

    goto LABEL_18;
  }

  result = sub_264785C14();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x26673FA30](0, v21);
    goto LABEL_12;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v21 + 32);
LABEL_12:
    v23 = v22;

    v43 = *(a1 + *(type metadata accessor for LocationSelectionView(0) + 32) + 8);
    v24 = sub_264783FA4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v25 = v51[0];
    v26 = sub_264783FA4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v50 = v51[0];
    sub_26470BEF8(v23, v25, &v50);
    v27 = v44;
    sub_264783DF4();
    v28 = v23;
    v29 = sub_264783E14();
    v30 = sub_2647859F4();

    if (!os_log_type_enabled(v29, v30))
    {

      (*(v45 + 8))(v27, v46);
LABEL_19:
      v41 = v48;
      v40 = v49;
      v42 = v47;
      sub_264695C58(v47);
      sub_2647840C4();
      return (*(v41 + 8))(v42, v40);
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v51[0] = v32;
    *v31 = 136642819;
    v10 = v27;
    v33 = [v28 debugDescription];
    v34 = sub_264785724();
    v36 = v35;

    v37 = sub_2646DF234(v34, v36, v51);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_264605000, v29, v30, "Set session end location to %{sensitive}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x266740650](v32, -1, -1);
    MEMORY[0x266740650](v31, -1, -1);

LABEL_18:
    (*(v45 + 8))(v10, v46);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_264699164@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF770C0, &unk_26478C3D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF771D8, &unk_26478C520);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF771E0, &qword_264792500);
  v8 = sub_264784A74();
  v9 = sub_26460CDF0(&qword_27FF771E8, &qword_27FF771E0, &qword_264792500);
  v10 = sub_264695EA8(&qword_27FF771F0, MEMORY[0x277CDE330]);
  v17[0] = v7;
  v17[1] = v8;
  v17[2] = v9;
  v17[3] = v10;
  swift_getOpaqueTypeConformance2();
  sub_264785334();
  sub_26460CDF0(&qword_27FF770B8, &qword_27FF770C0, &unk_26478C3D8);
  sub_264785034();
  (*(v3 + 8))(v6, v2);
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = 1;
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF770A0, &qword_26478C3C8) + 36));
  *v13 = KeyPath;
  v13[1] = sub_264664980;
  v13[2] = v12;
  v14 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77088, &qword_26478C3C0);
  v16 = (a1 + *(result + 36));
  *v16 = v14;
  v16[1] = 0;
  return result;
}

uint64_t sub_264699440()
{
  v0 = sub_264784A74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF771E0, &qword_264792500);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  sub_264784014();
  sub_264784A64();
  sub_26460CDF0(&qword_27FF771E8, &qword_27FF771E0, &qword_264792500);
  sub_264695EA8(&qword_27FF771F0, MEMORY[0x277CDE330]);
  sub_264784E84();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_264699644()
{
  sub_2647854D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF770F0, &qword_26478C3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77100, &qword_26478C3F8);
  sub_26460CDF0(&qword_27FF770E8, &qword_27FF770F0, &qword_26478C3F0);
  sub_2646A29C0();
  return sub_2647854E4();
}

uint64_t sub_26469974C@<X0>(char *a1@<X8>)
{
  v31 = sub_264784694();
  v28 = *(v31 - 8);
  v2 = v28;
  v3 = *(v28 + 64);
  v4 = MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v27 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77178, &qword_26478C4E0);
  v29 = *(v8 - 8);
  v9 = v29;
  v10 = *(v29 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  sub_2646999FC(&v27 - v14);
  sub_264784684();
  v16 = *(v9 + 16);
  v16(v13, v15, v8);
  v32 = 1;
  v17 = *(v2 + 16);
  v18 = v30;
  v19 = v7;
  v20 = v31;
  v17(v30, v19, v31);
  v16(a1, v13, v8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77180, &qword_26478C4E8);
  v22 = &a1[*(v21 + 48)];
  v23 = v32;
  *v22 = 0;
  v22[8] = v23;
  v17(&a1[*(v21 + 64)], v18, v20);
  v24 = *(v28 + 8);
  v24(v27, v20);
  v25 = *(v29 + 8);
  v25(v15, v8);
  v24(v18, v20);
  return (v25)(v13, v8);
}

uint64_t sub_2646999FC@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_264784214();
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77188, &qword_26478C4F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77190, &qword_26478C4F8);
  v12 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v14 = &v25 - v13;
  v15 = *v1;
  v16 = v1[1];
  v17 = *(v1 + 16);
  type metadata accessor for LocationSearchViewModel();
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel);
  v18 = sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v29 = v32;
  v30 = v33;
  v31 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77198, &qword_26478C500);
  sub_2646A2F44();
  sub_26460CDF0(&qword_27FF771A8, &qword_27FF77198, &qword_26478C500);
  sub_2647853A4();
  sub_264784204();
  sub_26460CDF0(&qword_27FF771B0, &qword_27FF77188, &qword_26478C4F0);
  v19 = v26;
  sub_264784EF4();
  (*(v27 + 8))(v6, v19);
  (*(v8 + 8))(v11, v7);
  v20 = &v14[*(v25 + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C20, &qword_26478B740) + 28);
  v22 = *MEMORY[0x277CDF438];
  v23 = sub_264783F84();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  sub_2646A2F98();
  sub_264784F04();
  return sub_26460CD50(v14, &qword_27FF77190, &qword_26478C4F8);
}

uint64_t sub_264699E08@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2647845C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77140, &qword_26478C450);
  sub_26469B6EC(a1 + *(v2 + 44));
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77110, &qword_26478C400) + 36));
  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77130, &unk_26478C410) + 28);
  sub_264784334();
  *v3 = swift_getKeyPath();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77100, &qword_26478C3F8) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C20, &qword_26478B740) + 28);
  v7 = *MEMORY[0x277CDF438];
  v8 = sub_264783F84();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  result = swift_getKeyPath();
  *v5 = result;
  return result;
}

uint64_t sub_264699F40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_264699FC4(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return sub_264783EE4();
}

uint64_t sub_26469A048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77028, &qword_26478C298);
  v3 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = (&v39 - v4);
  v5 = type metadata accessor for LocationSelectionView(0);
  v6 = v5 - 8;
  v39 = *(v5 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F00, &unk_26478C050);
  v41 = *(v45 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v45);
  v40 = &v39 - v9;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = type metadata accessor for LocationSearchViewModel();
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel);
  v43 = v13;
  v14 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v15 = v48[2];

  v16 = a1 + *(v6 + 36);
  v17 = *(v16 + 8);
  if (v15)
  {
    v18 = *(v16 + 8);

    sub_264783FA4();
    type metadata accessor for SessionViewModel(0);
    sub_264695EA8(&qword_27FF75DC0, type metadata accessor for SessionViewModel);
    v19 = sub_264784174();
    v21 = v20;
    v22 = sub_264784174();
    v23 = v47;
    *v47 = v19;
    v23[1] = v21;
    v23[2] = v22;
    v23[3] = v24;
    swift_storeEnumTagMultiPayload();
    sub_26469A6A0();
    sub_26469A774();
    return sub_264784874();
  }

  v43 = v7;
  v26 = v42;
  v27 = a1;
  v28 = v45;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v30 = v47;
  v29 = v48;
  v31 = v48[2];
  if (!v31)
  {
    goto LABEL_6;
  }

  v32 = sub_2646A1DBC(v48[2], 0);
  v33 = sub_2646C5E8C(&v48, (v32 + 4), v31, v29);
  sub_26467A824();
  if (v33 != v31)
  {
    __break(1u);
LABEL_6:

    v32 = MEMORY[0x277D84F90];
  }

  v34 = v39;
  v48 = v32;
  swift_getKeyPath();
  sub_2646A247C(v27, v26, type metadata accessor for LocationSelectionView);
  v35 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v36 = swift_allocObject();
  sub_2646A24F4(v26, v36 + v35, type metadata accessor for LocationSelectionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77030, &qword_26478C350);
  type metadata accessor for LocationSearchResultRow(0);
  sub_26460CDF0(&qword_27FF77038, &qword_27FF77030, &qword_26478C350);
  sub_264659D00();
  sub_264695EA8(&qword_27FF76F08, type metadata accessor for LocationSearchResultRow);
  v37 = v40;
  sub_264785424();
  v38 = v41;
  (*(v41 + 16))(v30, v37, v28);
  swift_storeEnumTagMultiPayload();
  sub_26469A6A0();
  sub_26469A774();
  sub_264784874();
  return (*(v38 + 8))(v37, v28);
}

unint64_t sub_26469A614()
{
  result = qword_27FF76EF0;
  if (!qword_27FF76EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76EE8, &qword_26478C048);
    sub_26469A6A0();
    sub_26469A774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76EF0);
  }

  return result;
}

unint64_t sub_26469A6A0()
{
  result = qword_27FF76EF8;
  if (!qword_27FF76EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76F00, &unk_26478C050);
    sub_264695EA8(&qword_27FF76F08, type metadata accessor for LocationSearchResultRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76EF8);
  }

  return result;
}

unint64_t sub_26469A774()
{
  result = qword_27FF76F10;
  if (!qword_27FF76F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76F10);
  }

  return result;
}

uint64_t sub_26469A7C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v21 = *(a1 + 16);
  v7 = [*a1 name];
  if (v7)
  {
    v8 = v7;
    v9 = sub_264785724();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 16);
  type metadata accessor for LocationSearchViewModel();
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel);
  v15 = v5;
  sub_264783FA4();
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for LocationSearchResultRow(0);
  v17 = (a3 + v16[6]);
  *v17 = 0;
  v17[1] = v5;
  v17[2] = v9;
  v17[3] = v11;
  *(a3 + v16[7]) = v6;
  v18 = (a3 + v16[5]);
  result = sub_264784174();
  *v18 = result;
  v18[1] = v20;
  *(a3 + v16[8]) = v21;
  return result;
}

uint64_t sub_26469A948()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785744();
  sub_264613FC4();
  return sub_264785374();
}

uint64_t sub_26469AAD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_264783B94();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v32[1] = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264785704();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  type metadata accessor for LocationSearchViewModel();
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel);
  v11 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v39 != 4)
  {
    v12 = sub_264785E84();

    if (v12)
    {
      goto LABEL_4;
    }

    v24 = sub_264783FA4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (v39 > 2u)
    {
      if (v39 == 3)
      {
        v23 = v33;
      }

      else
      {
        v23 = v33;
        if (v39 != 4)
        {

          goto LABEL_14;
        }
      }
    }

    else
    {
      v23 = v33;
    }

    v25 = sub_264785E84();

    if ((v25 & 1) == 0)
    {
      v21 = 0uLL;
      v22 = -1;
      v20 = 0uLL;
      goto LABEL_15;
    }

LABEL_14:
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    *&v39 = sub_264785754();
    *(&v39 + 1) = v28;
    sub_264613FC4();
    v34 = sub_264784E44();
    v35 = v30;
    v36 = v29 & 1;
    v37 = v31;
    v38 = 1;
    result = sub_264784874();
    v20 = v40;
    v21 = v39;
    v22 = v41;
    goto LABEL_15;
  }

LABEL_4:
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  v13 = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  *&v39 = sub_264785754();
  *(&v39 + 1) = v15;
  sub_264613FC4();
  v34 = sub_264784E44();
  v35 = v16;
  v36 = v17 & 1;
  v37 = v18;
  v38 = 0;
  result = sub_264784874();
  v20 = v40;
  v21 = v39;
  v22 = v41;
  v23 = v33;
LABEL_15:
  *v23 = v21;
  *(v23 + 16) = v20;
  *(v23 + 32) = v22;
  return result;
}

uint64_t static LocationSelectionView.locationRadiusDisplayName(fenceSize:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (qword_27FF75238 != -1)
      {
        swift_once();
      }

      v1 = &qword_27FF79028;
    }

    else
    {
      if (qword_27FF75240 != -1)
      {
        swift_once();
      }

      v1 = &qword_27FF79038;
    }
  }

  else
  {
    if (qword_27FF75230 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FF79018;
  }

  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_26469B1B8@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF771C0, &qword_26478C508);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF771C8, &qword_26478C510);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v39 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v39 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v39 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - v21;
  if (qword_27FF75230 != -1)
  {
    swift_once();
  }

  v43 = qword_27FF79018;
  v44 = qword_27FF79020;
  sub_264613FC4();

  *v5 = sub_264784E44();
  *(v5 + 1) = v23;
  v5[16] = v24 & 1;
  *(v5 + 3) = v25;
  *(v5 + 16) = 256;
  v26 = sub_2646A2F44();
  v43 = MEMORY[0x277CE0BD8];
  v44 = &type metadata for GeofenceSize;
  v45 = MEMORY[0x277CE0BC8];
  v46 = v26;
  swift_getOpaqueTypeConformance2();
  sub_264785034();
  v27 = *(v2 + 8);
  v27(v5, v1);
  if (qword_27FF75238 != -1)
  {
    swift_once();
  }

  v43 = qword_27FF79028;
  v44 = qword_27FF79030;

  *v5 = sub_264784E44();
  *(v5 + 1) = v28;
  v5[16] = v29 & 1;
  *(v5 + 3) = v30;
  *(v5 + 16) = 257;
  sub_264785034();
  v27(v5, v1);
  if (qword_27FF75240 != -1)
  {
    swift_once();
  }

  v43 = qword_27FF79038;
  v44 = qword_27FF79040;

  *v5 = sub_264784E44();
  *(v5 + 1) = v31;
  v5[16] = v32 & 1;
  *(v5 + 3) = v33;
  *(v5 + 16) = 258;
  sub_264785034();
  v27(v5, v1);
  sub_26460CCE8(v22, v14, &qword_27FF771C8, &qword_26478C510);
  v34 = v40;
  sub_26460CCE8(v20, v40, &qword_27FF771C8, &qword_26478C510);
  v35 = v41;
  sub_26460CCE8(v17, v41, &qword_27FF771C8, &qword_26478C510);
  v36 = v42;
  sub_26460CCE8(v14, v42, &qword_27FF771C8, &qword_26478C510);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF771D0, &qword_26478C518);
  sub_26460CCE8(v34, v36 + *(v37 + 48), &qword_27FF771C8, &qword_26478C510);
  sub_26460CCE8(v35, v36 + *(v37 + 64), &qword_27FF771C8, &qword_26478C510);
  sub_26460CD50(v17, &qword_27FF771C8, &qword_26478C510);
  sub_26460CD50(v20, &qword_27FF771C8, &qword_26478C510);
  sub_26460CD50(v22, &qword_27FF771C8, &qword_26478C510);
  sub_26460CD50(v35, &qword_27FF771C8, &qword_26478C510);
  sub_26460CD50(v34, &qword_27FF771C8, &qword_26478C510);
  return sub_26460CD50(v14, &qword_27FF771C8, &qword_26478C510);
}

uint64_t sub_26469B6EC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77148, &qword_26478C4B8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77150, &qword_26478C4C0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v32 = &v29 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v31 = &v29 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v30 = &v29 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  sub_26469BABC(v4);
  sub_2646A2D84();
  v29 = v19;
  sub_264785034();
  sub_26460CD50(v4, &qword_27FF77148, &qword_26478C4B8);
  sub_26469C228(v4);
  sub_264785034();
  sub_26460CD50(v4, &qword_27FF77148, &qword_26478C4B8);
  sub_26469C98C(v4);
  v20 = v30;
  sub_264785034();
  sub_26460CD50(v4, &qword_27FF77148, &qword_26478C4B8);
  v21 = v31;
  sub_26460CCE8(v19, v31, &qword_27FF77150, &qword_26478C4C0);
  v22 = v32;
  sub_26460CCE8(v17, v32, &qword_27FF77150, &qword_26478C4C0);
  v23 = v33;
  sub_26460CCE8(v20, v33, &qword_27FF77150, &qword_26478C4C0);
  v24 = v34;
  sub_26460CCE8(v21, v34, &qword_27FF77150, &qword_26478C4C0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77160, &qword_26478C4C8);
  v26 = v24 + v25[12];
  *v26 = 0;
  *(v26 + 8) = 0;
  sub_26460CCE8(v22, v24 + v25[16], &qword_27FF77150, &qword_26478C4C0);
  v27 = v24 + v25[20];
  *v27 = 0;
  *(v27 + 8) = 0;
  sub_26460CCE8(v23, v24 + v25[24], &qword_27FF77150, &qword_26478C4C0);
  sub_26460CD50(v20, &qword_27FF77150, &qword_26478C4C0);
  sub_26460CD50(v17, &qword_27FF77150, &qword_26478C4C0);
  sub_26460CD50(v29, &qword_27FF77150, &qword_26478C4C0);
  sub_26460CD50(v23, &qword_27FF77150, &qword_26478C4C0);
  sub_26460CD50(v22, &qword_27FF77150, &qword_26478C4C0);
  return sub_26460CD50(v21, &qword_27FF77150, &qword_26478C4C0);
}

uint64_t sub_26469BABC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77168, &qword_26478C4D0);
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v45 = &v37 - v4;
  v44 = sub_264784B04();
  v37 = *(v44 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v44);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocationSelectionView(0);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v40 = &v37 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77170, &qword_26478C4D8);
  v38 = *(v42 - 8);
  v14 = *(v38 + 64);
  MEMORY[0x28223BE20](v42);
  v16 = &v37 - v15;
  v18 = *v2;
  v17 = *(v2 + 8);
  v19 = *(v2 + 16);
  type metadata accessor for LocationSearchViewModel();
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel);
  v20 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v47)
  {
    if (qword_27FF75230 != -1)
    {
      swift_once();
    }

    v47 = qword_27FF79018;
    v48 = qword_27FF79020;
    sub_2646A247C(v2, &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSelectionView);
    v21 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v22 = swift_allocObject();
    sub_2646A24F4(v10, v22 + v21, type metadata accessor for LocationSelectionView);
    sub_264613FC4();

    v23 = v40;
    sub_264785374();
    v24 = v41;
    (*(v41 + 16))(v45, v23, v11);
    swift_storeEnumTagMultiPayload();
    v25 = sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90);
    v26 = sub_264695EA8(&qword_27FF76C18, MEMORY[0x277CDE400]);
    v47 = v11;
    v48 = v44;
    v49 = v25;
    v50 = v26;
    swift_getOpaqueTypeConformance2();
    sub_264784874();
    return (*(v24 + 8))(v23, v11);
  }

  else
  {
    v28 = v16;
    if (qword_27FF75230 != -1)
    {
      swift_once();
    }

    v47 = qword_27FF79018;
    v48 = qword_27FF79020;
    sub_2646A247C(v2, &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSelectionView);
    v29 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v30 = swift_allocObject();
    sub_2646A24F4(v10, v30 + v29, type metadata accessor for LocationSelectionView);
    sub_264613FC4();

    v31 = v40;
    sub_264785374();
    sub_264784AF4();
    v32 = sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90);
    v33 = sub_264695EA8(&qword_27FF76C18, MEMORY[0x277CDE400]);
    v34 = v44;
    sub_264784EC4();
    (*(v37 + 8))(v7, v34);
    (*(v41 + 8))(v31, v11);
    v35 = v38;
    v36 = v42;
    (*(v38 + 16))(v45, v28, v42);
    swift_storeEnumTagMultiPayload();
    v47 = v11;
    v48 = v34;
    v49 = v32;
    v50 = v33;
    swift_getOpaqueTypeConformance2();
    sub_264784874();
    return (*(v35 + 8))(v28, v36);
  }
}

uint64_t sub_26469C228@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77168, &qword_26478C4D0);
  v3 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v43 = &v35 - v4;
  v42 = sub_264784B04();
  v37 = *(v42 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v42);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationSelectionView(0);
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77170, &qword_26478C4D8);
  v35 = *(v40 - 8);
  v14 = *(v35 + 64);
  MEMORY[0x28223BE20](v40);
  v16 = &v35 - v15;
  v17 = *v2;
  v18 = *(v2 + 8);
  v19 = *(v2 + 16);
  type metadata accessor for LocationSearchViewModel();
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel);
  v20 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v45 == 1)
  {
    if (qword_27FF75238 != -1)
    {
      swift_once();
    }

    v45 = qword_27FF79028;
    v46 = qword_27FF79030;
    sub_2646A247C(v2, &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSelectionView);
    v21 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v22 = swift_allocObject();
    sub_2646A24F4(v9, v22 + v21, type metadata accessor for LocationSelectionView);
    sub_264613FC4();

    sub_264785374();
    v23 = v36;
    sub_264784AF4();
    v24 = sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90);
    v25 = sub_264695EA8(&qword_27FF76C18, MEMORY[0x277CDE400]);
    v26 = v42;
    sub_264784EC4();
    (*(v37 + 8))(v23, v26);
    (*(v39 + 8))(v13, v10);
    v27 = v35;
    v28 = v40;
    (*(v35 + 16))(v43, v16, v40);
    swift_storeEnumTagMultiPayload();
    v45 = v10;
    v46 = v26;
    v47 = v24;
    v48 = v25;
    swift_getOpaqueTypeConformance2();
    sub_264784874();
    return (*(v27 + 8))(v16, v28);
  }

  else
  {
    if (qword_27FF75238 != -1)
    {
      swift_once();
    }

    v45 = qword_27FF79028;
    v46 = qword_27FF79030;
    sub_2646A247C(v2, &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSelectionView);
    v30 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v31 = swift_allocObject();
    sub_2646A24F4(v9, v31 + v30, type metadata accessor for LocationSelectionView);
    sub_264613FC4();

    sub_264785374();
    v32 = v39;
    (*(v39 + 16))(v43, v13, v10);
    swift_storeEnumTagMultiPayload();
    v33 = sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90);
    v34 = sub_264695EA8(&qword_27FF76C18, MEMORY[0x277CDE400]);
    v45 = v10;
    v46 = v42;
    v47 = v33;
    v48 = v34;
    swift_getOpaqueTypeConformance2();
    sub_264784874();
    return (*(v32 + 8))(v13, v10);
  }
}

uint64_t sub_26469C98C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77168, &qword_26478C4D0);
  v3 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v43 = &v35 - v4;
  v42 = sub_264784B04();
  v37 = *(v42 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v42);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationSelectionView(0);
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77170, &qword_26478C4D8);
  v35 = *(v40 - 8);
  v14 = *(v35 + 64);
  MEMORY[0x28223BE20](v40);
  v16 = &v35 - v15;
  v17 = *v2;
  v18 = *(v2 + 8);
  v19 = *(v2 + 16);
  type metadata accessor for LocationSearchViewModel();
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel);
  v20 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v45 == 2)
  {
    if (qword_27FF75240 != -1)
    {
      swift_once();
    }

    v45 = qword_27FF79038;
    v46 = qword_27FF79040;
    sub_2646A247C(v2, &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSelectionView);
    v21 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v22 = swift_allocObject();
    sub_2646A24F4(v9, v22 + v21, type metadata accessor for LocationSelectionView);
    sub_264613FC4();

    sub_264785374();
    v23 = v36;
    sub_264784AF4();
    v24 = sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90);
    v25 = sub_264695EA8(&qword_27FF76C18, MEMORY[0x277CDE400]);
    v26 = v42;
    sub_264784EC4();
    (*(v37 + 8))(v23, v26);
    (*(v39 + 8))(v13, v10);
    v27 = v35;
    v28 = v40;
    (*(v35 + 16))(v43, v16, v40);
    swift_storeEnumTagMultiPayload();
    v45 = v10;
    v46 = v26;
    v47 = v24;
    v48 = v25;
    swift_getOpaqueTypeConformance2();
    sub_264784874();
    return (*(v27 + 8))(v16, v28);
  }

  else
  {
    if (qword_27FF75240 != -1)
    {
      swift_once();
    }

    v45 = qword_27FF79038;
    v46 = qword_27FF79040;
    sub_2646A247C(v2, &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSelectionView);
    v30 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v31 = swift_allocObject();
    sub_2646A24F4(v9, v31 + v30, type metadata accessor for LocationSelectionView);
    sub_264613FC4();

    sub_264785374();
    v32 = v39;
    (*(v39 + 16))(v43, v13, v10);
    swift_storeEnumTagMultiPayload();
    v33 = sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90);
    v34 = sub_264695EA8(&qword_27FF76C18, MEMORY[0x277CDE400]);
    v45 = v10;
    v46 = v42;
    v47 = v33;
    v48 = v34;
    swift_getOpaqueTypeConformance2();
    sub_264784874();
    return (*(v32 + 8))(v13, v10);
  }
}

uint64_t sub_26469D0F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  type metadata accessor for LocationSearchViewModel();
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel);
  sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_264783EE4();
}

uint64_t sub_26469D1C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264784574();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_26460CCE8(v2, &v17 - v11, &qword_27FF76E78, &qword_26478E520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2647846F4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_2647859E4();
    v16 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_26469D3C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v51 = sub_2647849E4();
  v49 = *(v51 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v48 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_264784AA4();
  v45 = *(v47 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v43 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationSearchResultRow(0);
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v35 = v9;
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F68, &qword_26478C158);
  v12 = *(v11 - 8);
  v41 = v11;
  v42 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v39 = &v33 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F70, &qword_26478C160);
  v46 = *(v44 - 8);
  v15 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v40 = &v33 - v16;
  v17 = sub_2647845C4();
  v36 = v1;
  v37 = v17;
  v55 = 0;
  sub_26469DAC4(v1, v53);
  v62 = *&v53[96];
  v63 = *&v53[112];
  v64 = *&v53[128];
  v58 = *&v53[32];
  v59 = *&v53[48];
  v60 = *&v53[64];
  v61 = *&v53[80];
  v56 = *v53;
  v57 = *&v53[16];
  v66[6] = *&v53[96];
  v66[7] = *&v53[112];
  v66[8] = *&v53[128];
  v66[2] = *&v53[32];
  v66[3] = *&v53[48];
  v66[4] = *&v53[64];
  v66[5] = *&v53[80];
  v65 = *&v53[144];
  v67 = *&v53[144];
  v66[0] = *v53;
  v66[1] = *&v53[16];
  sub_26460CCE8(&v56, v52, &qword_27FF76F78, &qword_26478C168);
  sub_26460CD50(v66, &qword_27FF76F78, &qword_26478C168);
  *(&v54[6] + 7) = v62;
  *(&v54[7] + 7) = v63;
  *(&v54[8] + 7) = v64;
  *(&v54[2] + 7) = v58;
  *(&v54[3] + 7) = v59;
  *(&v54[4] + 7) = v60;
  *(&v54[5] + 7) = v61;
  *(v54 + 7) = v56;
  *(&v54[9] + 7) = v65;
  *(&v54[1] + 7) = v57;
  v18 = v55;
  sub_264785514();
  sub_264784314();
  *&v52[113] = v54[6];
  *&v52[129] = v54[7];
  *&v52[145] = v54[8];
  *&v52[160] = *(&v54[8] + 15);
  *&v52[49] = v54[2];
  *&v52[65] = v54[3];
  *&v52[81] = v54[4];
  *&v52[97] = v54[5];
  *&v52[17] = v54[0];
  *v52 = v37;
  *&v52[8] = 0x4034000000000000;
  v52[16] = v18;
  *&v52[33] = v54[1];
  v52[288] = 0;
  v34 = v10;
  sub_2646A247C(v2, v10, type metadata accessor for LocationSearchResultRow);
  v19 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v20 = swift_allocObject();
  sub_2646A24F4(v10, v20 + v19, type metadata accessor for LocationSearchResultRow);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F80, &qword_26478C170);
  v22 = sub_2646A16FC();
  v23 = v39;
  sub_264784F14();

  memcpy(v53, v52, sizeof(v53));
  sub_26460CD50(v53, &qword_27FF76F80, &qword_26478C170);
  v24 = v43;
  sub_264784A94();
  *v52 = v21;
  *&v52[8] = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v40;
  v26 = v41;
  sub_264784FF4();
  (*(v45 + 8))(v24, v47);
  (*(v42 + 8))(v23, v26);
  v28 = v34;
  sub_2646A247C(v36, v34, type metadata accessor for LocationSearchResultRow);
  v29 = swift_allocObject();
  sub_2646A24F4(v28, v29 + v19, type metadata accessor for LocationSearchResultRow);
  v30 = v48;
  sub_2647849D4();
  *v52 = v26;
  *&v52[8] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v31 = v44;
  sub_264784FD4();

  (*(v49 + 8))(v30, v51);
  return (*(v46 + 8))(v27, v31);
}

uint64_t sub_26469DAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for LocationSearchResultRow(0) + 28));
  if ((v4 - 1) < 3)
  {
    sub_26469E3D4(v28);
    *&v26[16] = *v29;
    *&v26[25] = *&v29[9];
    v26[41] = 0;
    j__swift_retain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FD8, &unk_26478C210);
    sub_2646A21E0();
    sub_264784874();
    v25 = v18;
    *v26 = v19;
LABEL_9:
    LOBYTE(v21[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FD0, &qword_26478C208);
    sub_2646A215C();
    sub_264784874();
    sub_26460CD50(v28, &qword_27FF76FD8, &unk_26478C210);
    *&v26[27] = *&v24[27];
    *v26 = *v24;
    *&v26[16] = *&v24[16];
    v25 = v23;
    v30 = v23;
    v31 = *v24;
    v32[0] = *&v24[16];
    *(v32 + 11) = *&v26[27];
    *(v35 + 11) = *&v26[27];
    v34 = *v24;
    v35[0] = *&v24[16];
    v33 = v23;
    goto LABEL_10;
  }

  if (v4)
  {
    v5 = v4 == 4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    sub_26469DF6C(v28);
    *&v26[16] = *v29;
    *&v26[25] = *&v29[9];
    v26[41] = 1;
    j__swift_retain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FD8, &unk_26478C210);
    sub_2646A21E0();
    sub_264784874();
    v25 = v18;
    *v26 = v19;
    goto LABEL_9;
  }

  sub_26469DF6C(&v18);
  v23 = v18;
  *v24 = v19;
  *&v24[16] = v20[0];
  *&v24[25] = *(v20 + 9);
  LOBYTE(v28[0]) = 1;
  v24[42] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FD0, &qword_26478C208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FD8, &unk_26478C210);
  sub_2646A215C();
  sub_2646A21E0();
  sub_264784874();
  v30 = v25;
  v31 = *v26;
  v32[0] = *&v26[16];
  *(v32 + 11) = *&v26[27];
  v33 = v25;
  v34 = *v26;
  v35[0] = *&v26[16];
  *(v35 + 11) = *&v26[27];
LABEL_10:
  sub_26460CCE8(&v33, &v25, &qword_27FF77000, &qword_26478C228);
  v6 = sub_264784724();
  LOBYTE(v25) = 0;
  sub_26469E83C(a1, &v18);
  *&v17[7] = v18;
  *&v17[23] = v19;
  *&v17[39] = v20[0];
  *&v17[55] = v20[1];
  v7 = v25;
  v21[0] = v30;
  v21[1] = v31;
  v22[0] = v32[0];
  *(v22 + 11) = *(v32 + 11);
  *&v16[11] = *(v32 + 11);
  v15 = v31;
  *v16 = v32[0];
  v14 = v30;
  *&v23 = v6;
  *(&v23 + 1) = 0x4000000000000000;
  v24[0] = v25;
  *&v24[1] = *v17;
  *&v24[64] = *(&v20[1] + 1);
  *&v24[49] = *&v17[48];
  *&v24[33] = *&v17[32];
  *&v24[17] = *&v17[16];
  sub_26460CCE8(v21, &v25, &qword_27FF77008, &unk_26478C230);
  sub_26460CCE8(&v23, &v25, &qword_27FF76830, &unk_26478AE00);
  sub_26460CD50(&v33, &qword_27FF77000, &qword_26478C228);
  v8 = *v24;
  v10 = *&v24[32];
  v9 = *&v24[48];
  v11 = *&v24[16];
  v12 = *&v24[64];
  *(a2 + 64) = v23;
  *(a2 + 80) = v8;
  *(a2 + 32) = *v16;
  *(a2 + 48) = *&v16[16];
  *(a2 + 144) = v12;
  *(a2 + 96) = v11;
  *(a2 + 112) = v10;
  *(a2 + 128) = v9;
  *a2 = v14;
  *(a2 + 16) = v15;
  *&v25 = v6;
  *(&v25 + 1) = 0x4000000000000000;
  v26[0] = v7;
  *&v26[17] = *&v17[16];
  *&v26[33] = *&v17[32];
  *v27 = *&v17[48];
  *&v27[15] = *&v17[63];
  *&v26[1] = *v17;
  sub_26460CD50(&v25, &qword_27FF76830, &unk_26478AE00);
  v28[0] = v30;
  v28[1] = v31;
  *v29 = v32[0];
  *&v29[11] = *(v32 + 11);
  return sub_26460CD50(v28, &qword_27FF77000, &qword_26478C228);
}

double sub_26469DF6C@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_264785284();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [objc_opt_self() mainScreen];
  v9 = [v8 traitCollection];

  [v9 displayScale];
  v11 = v10;

  v12 = v1 + *(type metadata accessor for LocationSearchResultRow(0) + 24);
  v13 = *(v12 + 8);
  v14 = v13;
  if (!v13)
  {
    v14 = [*v12 mapItem];
  }

  v15 = objc_opt_self();
  v16 = v13;
  v17 = [v15 imageForMapItem:v14 size:2 forScale:6 format:0 fallbackToBundleIcon:v11];

  if (v17)
  {
    v18 = v17;
    sub_264785254();
    (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
    v19 = sub_2647852C4();

    (*(v4 + 8))(v7, v3);
    sub_264785504();
    sub_2647840A4();
    v26 = v34;
    v24 = v36;
    v22[8] = 0;
    *&v30 = v19;
    *(&v30 + 1) = v33;
    LOBYTE(v31) = v34;
    *(&v31 + 1) = *v25;
    DWORD1(v31) = *&v25[3];
    *(&v31 + 1) = v35;
    v32[0] = v36;
    *&v32[1] = *v23;
    *&v32[4] = *&v23[3];
    *&v32[8] = v37;
    v32[24] = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76D60, &unk_26478B980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FF8, &qword_26478C220);
    sub_264690D34();
    sub_2646A2298(&qword_27FF76FF0, &qword_27FF76FF8, &qword_26478C220, sub_264690D34);
    sub_264784874();

    v30 = v27;
    v31 = v28;
    *v32 = *v29;
    *&v32[9] = *&v29[9];
  }

  else
  {
    sub_2646A0878(&v30);
    LOBYTE(v33) = 1;
    v27 = v30;
    v28 = v31;
    *v29 = *v32;
    *&v29[16] = *&v32[16];
    v29[24] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76D60, &unk_26478B980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FF8, &qword_26478C220);
    sub_264690D34();
    sub_2646A2298(&qword_27FF76FF0, &qword_27FF76FF8, &qword_26478C220, sub_264690D34);
    sub_264784874();
  }

  v20 = v31;
  *a1 = v30;
  a1[1] = v20;
  a1[2] = *v32;
  result = *&v32[9];
  *(a1 + 41) = *&v32[9];
  return result;
}

void sub_26469E3D4(_OWORD *a1@<X8>)
{
  v3 = sub_264785284();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [objc_opt_self() mainScreen];
  v9 = [v8 traitCollection];

  [v9 displayScale];
  v11 = v10;

  v12 = [objc_allocWithZone(MEMORY[0x277D0EB18]) init];
  if (v12)
  {
    v13 = v12;
    v14 = type metadata accessor for LocationSearchResultRow(0);
    v15 = sub_264691340(*(v1 + *(v14 + 28)));

    v16 = [objc_opt_self() imageForStyle:v15 size:2 forScale:6 format:0 nightMode:v11];
    if (v16)
    {
      v17 = v16;
      sub_264785254();
      (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
      v18 = sub_2647852C4();

      (*(v4 + 8))(v7, v3);
      sub_264785504();
      sub_2647840A4();
      v24 = v32;
      v22 = v34;
      v20[8] = 0;
      *&v28 = v18;
      *(&v28 + 1) = v31;
      LOBYTE(v29) = v32;
      *(&v29 + 1) = *v23;
      DWORD1(v29) = *&v23[3];
      *(&v29 + 1) = v33;
      v30[0] = v34;
      *&v30[1] = *v21;
      *&v30[4] = *&v21[3];
      *&v30[8] = v35;
      v30[24] = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76D60, &unk_26478B980);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FF8, &qword_26478C220);
      sub_264690D34();
      sub_2646A2298(&qword_27FF76FF0, &qword_27FF76FF8, &qword_26478C220, sub_264690D34);
      sub_264784874();
    }

    else
    {
      sub_2646A0878(&v28);
      LOBYTE(v31) = 1;
      v30[24] = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76D60, &unk_26478B980);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FF8, &qword_26478C220);
      sub_264690D34();
      sub_2646A2298(&qword_27FF76FF0, &qword_27FF76FF8, &qword_26478C220, sub_264690D34);
      sub_264784874();
    }

    v28 = v25;
    v29 = v26;
    *v30 = v27[0];
    *&v30[9] = *(v27 + 9);
    v19 = v26;
    *a1 = v25;
    a1[1] = v19;
    a1[2] = *v30;
    *(a1 + 41) = *&v30[9];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26469E83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77010, &unk_26478C240);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v51 - v6;
  v56 = sub_26469EB88();
  *&v57 = v8;
  sub_264613FC4();
  v9 = sub_264784E44();
  v11 = v10;
  v13 = v12;
  v14 = sub_264784E14();
  v54 = v15;
  v55 = v14;
  v53 = v16;
  v18 = v17;
  sub_26460ECC4(v9, v11, v13 & 1);

  v19 = a1 + *(type metadata accessor for LocationSearchResultRow(0) + 24);
  v21 = *(v19 + 24);
  v56 = *v19;
  v20 = v56;
  v57 = *(v19 + 8);
  v58 = v21;
  v22 = v57;

  v23 = v20;
  _s15SafetyMonitorUI0aB11UIUtilitiesC18shortAddressFormat3forSSSgAA31LocationSearchRowCompletionItemVSg_tFZ_0(&v56);
  v25 = v24;
  v27 = v26;
  sub_2646A2318(v56, v57, *(&v57 + 1), v58);
  if (v27)
  {
    v56 = v25;
    *&v57 = v27;
    v28 = sub_264784E44();
    v30 = v29;
    v32 = v31;
    v33 = sub_264784CE4();
    (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
    sub_264784D24();
    sub_26460CD50(v7, &qword_27FF77010, &unk_26478C240);
    v34 = sub_264784E24();
    v36 = v35;
    v52 = v18;
    v38 = v37;

    sub_26460ECC4(v28, v30, v32 & 1);

    sub_264785214();
    v39 = sub_264784DE4();
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v46 = v38 & 1;
    v18 = v52;
    sub_26460ECC4(v34, v36, v46);

    v27 = v43 & 1;
    sub_26460C474(v39, v41, v43 & 1);
  }

  else
  {
    v39 = 0;
    v41 = 0;
    v45 = 0;
  }

  v47 = v53 & 1;
  v49 = v54;
  v48 = v55;
  sub_26460C474(v55, v54, v53 & 1);

  sub_26466D538(v39, v41, v27, v45);
  sub_26466D57C(v39, v41, v27, v45);
  LOBYTE(v56) = v47;
  *a2 = v48;
  *(a2 + 8) = v49;
  *(a2 + 16) = v47;
  *(a2 + 24) = v18;
  *(a2 + 32) = v39;
  *(a2 + 40) = v41;
  *(a2 + 48) = v27;
  *(a2 + 56) = v45;
  sub_26466D57C(v39, v41, v27, v45);
  sub_26460ECC4(v48, v49, v47);
}

uint64_t sub_26469EB88()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocationSearchResultRow(0);
  v7 = *(v0 + *(v6 + 28));
  switch(v7)
  {
    case 3:
      if (qword_27FF75098 != -1)
      {
        swift_once();
      }

      v8 = &qword_27FF78CF0;
      goto LABEL_13;
    case 2:
      if (qword_27FF75090 != -1)
      {
        swift_once();
      }

      v8 = &qword_27FF78CE0;
      goto LABEL_13;
    case 1:
      if (qword_27FF75088 != -1)
      {
        swift_once();
      }

      v8 = &qword_27FF78CD0;
LABEL_13:
      v9 = *v8;
      v10 = v8[1];
      goto LABEL_14;
  }

  v12 = v0 + *(v6 + 24);
  v9 = *(v12 + 16);
  if (v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v12 + 24) == 0xE000000000000000;
  }

  if (v13 || (sub_264785E84() & 1) != 0)
  {
    sub_264783DF4();
    v14 = sub_264783E14();
    v15 = sub_2647859D4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_264605000, v14, v15, "#Initiator, LocationSearchResultRow, destinationDisplayName empty", v16, 2u);
      MEMORY[0x266740650](v16, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

LABEL_14:

  return v9;
}

void sub_26469EDF0()
{
  v1 = sub_264783E24();
  v45 = *(v1 - 8);
  v46 = v1;
  v2 = *(v45 + 64);
  MEMORY[0x28223BE20](v1);
  v50 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_264785594();
  v49 = *(v47 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2647855C4();
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocationSearchResultRow(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = sub_2647855A4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v12 + 32);
  v51 = v0;
  v21 = (v0 + v20);
  v22 = *(v0 + v20 + 8);
  if (v22)
  {
    v50 = v22;
    sub_26469F424(v50);
    v23 = v50;
  }

  else
  {
    v41 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = v10;
    v43 = v6;
    v44 = v7;
    v24 = *v21;
    if (*v21)
    {
      v25 = v17;
      v26 = objc_allocWithZone(MEMORY[0x277CD4E38]);
      v50 = v24;
      v27 = [v26 initWithCompletion_];
      sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
      (*(v25 + 104))(v19, *MEMORY[0x277D851B8], v15);
      v28 = sub_264785A64();
      (*(v25 + 8))(v19, v15);
      v29 = v41;
      sub_2646A247C(v51, v41, type metadata accessor for LocationSearchResultRow);
      v30 = (*(v13 + 80) + 24) & ~*(v13 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = v27;
      sub_2646A24F4(v29, v31 + v30, type metadata accessor for LocationSearchResultRow);
      aBlock[4] = sub_2646A1B58;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264659F60;
      aBlock[3] = &block_descriptor_7;
      v32 = _Block_copy(aBlock);
      v33 = v27;
      v34 = v42;
      sub_2647855B4();
      v52 = MEMORY[0x277D84F90];
      sub_264695EA8(&qword_27FF75CD8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
      sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
      v35 = v43;
      v36 = v47;
      sub_264785BD4();
      MEMORY[0x26673F780](0, v34, v35, v32);
      _Block_release(v32);

      (*(v49 + 8))(v35, v36);
      (*(v48 + 8))(v34, v44);
    }

    else
    {
      v37 = v50;
      sub_264783DF4();
      v38 = sub_264783E14();
      v39 = sub_2647859E4();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_264605000, v38, v39, "#Initiator, LocationSearchResultRow, setLocationAction mklocalsearch response no MKMapItem or searchCompletion", v40, 2u);
        MEMORY[0x266740650](v40, -1, -1);
      }

      (*(v45 + 8))(v37, v46);
    }
  }
}

uint64_t sub_26469F424(void *a1)
{
  v3 = sub_264785594();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2647855C4();
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocationSearchResultRow(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v14 = sub_264785A44();
  sub_2646A247C(v1, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSearchResultRow);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  sub_2646A24F4(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for LocationSearchResultRow);
  *(v16 + ((v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_2646A1D2C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_63;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264695EA8(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v10, v6, v17);
  _Block_release(v17);

  (*(v23 + 8))(v6, v3);
  return (*(v21 + 8))(v10, v22);
}

uint64_t sub_26469F7D8(uint64_t a1, id a2)
{
  v5 = sub_2647846F4();
  v99 = *(v5 - 8);
  v100 = v5;
  v6 = *(v99 + 64);
  MEMORY[0x28223BE20](v5);
  v98 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocationSearchResultRow(0);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_264783E24();
  v96 = *(v12 - 8);
  v97 = v12;
  v13 = *(v96 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v95 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v89 - v16;
  v18 = v8[5];
  v101 = a1;
  v19 = *(a1 + v18 + 8);
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  sub_264783ED4();

  v21 = v102[0];
  v22 = v102[0] >> 62;
  v94 = v11;
  if (v102[0] < 0 || (v102[0] & 0x4000000000000000) != 0 || (swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
  {
    if (v22)
    {
      v85 = sub_264785C14();
      v86 = sub_264785C14();
      if (v86 < 0)
      {
        goto LABEL_59;
      }

      v87 = sub_264785C14();
      if (v85 < 0 || (v25 = v85, v87 < v85))
      {
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
      v25 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    }

    v24 = sub_2646A1E4C(0, v25);

    goto LABEL_10;
  }

  if (v22)
  {
    goto LABEL_55;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v86)
  {
    sub_2646A2380(0, i, &qword_27FF76FC8, 0x277CD4E80);
    v24 = v102[0];
LABEL_10:
    swift_getKeyPath();
    v2 = &unk_26478C188;
    swift_getKeyPath();
    v103 = v24;
    v26 = v19;
    sub_264783EE4();
    sub_2646CA060();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v27 = a2;
    MEMORY[0x26673F500]();
    if (*((v102[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v80 = *((v102[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_264785814();
    }

    sub_264785844();
    v28 = v102[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v103 = v28;
    v29 = v26;
    sub_264783EE4();
    sub_2646CA060();
    v30 = v101;
    v19 = *(v101 + v8[7]);
    swift_getKeyPath();
    swift_getKeyPath();
    v102[0] = v19;
    a2 = v29;
    sub_264783EE4();
    LOBYTE(v30) = *(v30 + v8[8]);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v102[0]) = v30;
    sub_264783EE4();
    swift_getKeyPath();
    v11 = swift_getKeyPath();
    sub_264783ED4();

    v21 = v102[0];
    if (v102[0] >> 62)
    {
      if (!sub_264785C14())
      {
LABEL_42:

        goto LABEL_43;
      }
    }

    else if (!*((v102[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
LABEL_48:
      v31 = MEMORY[0x26673FA30](0, v21);
    }

    else
    {
      if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }

      v31 = *(v21 + 32);
    }

    v2 = v31;

    v32 = [v2 placemark];
    v33 = [v32 location];

    if (!v33)
    {

      goto LABEL_43;
    }

    v91 = v19;
    sub_264783DF4();
    v34 = v33;
    v35 = sub_264783E14();
    v36 = sub_2647859F4();

    v37 = os_log_type_enabled(v35, v36);
    v93 = v34;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v92 = v2;
      v40 = v39;
      v102[0] = v39;
      *v38 = 136642819;
      v41 = [v34 debugDescription];
      v42 = sub_264785724();
      v44 = v43;

      v45 = sub_2646DF234(v42, v44, v102);

      *(v38 + 4) = v45;
      v34 = v93;
      _os_log_impl(&dword_264605000, v35, v36, "#Initiator, LocationSearchResultRow, setting Annotation: %{sensitive}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      v46 = v40;
      v2 = v92;
      MEMORY[0x266740650](v46, -1, -1);
      MEMORY[0x266740650](v38, -1, -1);
    }

    v19 = *(v96 + 8);
    (v19)(v17, v97);
    v11 = v94;
    v17 = swift_getKeyPath();
    swift_getKeyPath();
    KeyPath = sub_264783EC4();
    v48 = v47;
    v49 = *v47;
    v92 = v19;
    if ((v49 & 0x8000000000000000) == 0 && (v49 & 0x4000000000000000) == 0)
    {
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v49 = *v48;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        break;
      }
    }

    if (!(v49 >> 62))
    {
      v52 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_28:
      v53 = sub_2646A1E4C(0, v52);
      v54 = *v48;
      *v48 = v53;

      goto LABEL_29;
    }

    v90 = sub_264785C14();
    v86 = sub_264785C14();
    if (v86 < 0)
    {
      goto LABEL_60;
    }

    v88 = sub_264785C14();
    v52 = v90;
    v34 = v93;
    if ((v90 & 0x8000000000000000) == 0 && v88 >= v90)
    {
      goto LABEL_28;
    }

    __break(1u);
LABEL_55:
    v86 = sub_264785C14();
    if (v86 < 0)
    {
      __break(1u);
      goto LABEL_57;
    }

LABEL_61:
    ;
  }

  if (!(v49 >> 62))
  {
    v51 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_25;
  }

LABEL_57:
  v86 = sub_264785C14();
  if (v86 < 0)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v51 = v86;
  v34 = v93;
LABEL_25:
  sub_2646A2380(0, v51, &qword_27FF76FC0, 0x277CD4F08);
LABEL_29:
  KeyPath(v102, 0);

  sub_2646CFDA4(v2, v91);
  v56 = v55;
  v58 = v57;
  v59 = [objc_allocWithZone(MEMORY[0x277CD4F08]) init];
  [v34 coordinate];
  [v59 setCoordinate_];
  v60 = v59;
  if (v56)
  {

    v61 = sub_264785714();
  }

  else
  {
    v61 = 0;
  }

  [v59 setTitle_];

  if (v58)
  {
    v62 = sub_264785714();
  }

  else
  {
    v62 = 0;
  }

  [v59 setSubtitle_];

  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v59;
  a2 = sub_264783EC4();
  v64 = v63;
  MEMORY[0x26673F500]();
  if (*((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_50:
    sub_264785814();
  }

  sub_264785844();
  (a2)(v102, 0);

  v65 = v95;
  sub_264783DF4();
  sub_2646A247C(v101, v11, type metadata accessor for LocationSearchResultRow);
  v66 = sub_264783E14();
  v67 = sub_2647859F4();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v102[0] = v69;
    *v68 = 136642819;
    v70 = *&v11[v8[5] + 8];
    swift_getKeyPath();
    v71 = v2;
    v72 = v11;
    swift_getKeyPath();
    sub_264783ED4();

    v73 = v103;
    v74 = sub_264659B70(0, &qword_27FF76FC0, 0x277CD4F08);
    v75 = MEMORY[0x26673F550](v73, v74);
    v77 = v76;

    sub_2646A1F74(v72);
    v78 = sub_2646DF234(v75, v77, v102);

    *(v68 + 4) = v78;
    _os_log_impl(&dword_264605000, v66, v67, "#Initiator, LocationSearchResultRow, set Annotations: %{sensitive}s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x266740650](v69, -1, -1);
    MEMORY[0x266740650](v68, -1, -1);

    v79 = v95;
  }

  else
  {

    sub_2646A1F74(v11);
    v79 = v65;
  }

  v92(v79, v97);
LABEL_43:
  v82 = v99;
  v81 = v100;
  v83 = v98;
  sub_26469D1C4(v98);
  sub_2647846E4();
  return (*(v82 + 8))(v83, v81);
}

void sub_2646A0398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationSearchResultRow(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = [objc_allocWithZone(MEMORY[0x277CD4E20]) initWithRequest_];
  sub_2646A247C(a2, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSearchResultRow);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2646A24F4(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for LocationSearchResultRow);
  aBlock[4] = sub_2646A20DC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26464CCBC;
  aBlock[3] = &block_descriptor_77;
  v10 = _Block_copy(aBlock);

  [v7 startWithCompletionHandler_];
  _Block_release(v10);
}

void sub_2646A0548(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_264783E24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v9)
  {
    sub_264783DF4();
    v16 = a2;
    v17 = sub_264783E14();
    v18 = sub_2647859D4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      if (a2)
      {
        v21 = a2;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        v23 = v22;
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      *(v19 + 4) = v22;
      *v20 = v23;
      _os_log_impl(&dword_264605000, v17, v18, "#Initiator, LocationSearchResultRow, setLocationAction mklocalsearch response nil error:%@", v19, 0xCu);
      sub_26460CD50(v20, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v20, -1, -1);
      MEMORY[0x266740650](v19, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    v24 = *(a3 + *(type metadata accessor for LocationSearchResultRow(0) + 24));
    if (v24)
    {
      v25 = [v24 mapItem];
      if (v25)
      {
        v26 = v25;
        sub_26469F424(v25);
      }
    }

    return;
  }

  v12 = [v9 mapItems];
  sub_264659B70(0, &qword_27FF76FC8, 0x277CD4E80);
  v13 = sub_2647857F4();

  if (v13 >> 62)
  {
    if (sub_264785C14())
    {
      goto LABEL_4;
    }

LABEL_20:

    return;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x26673FA30](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v14 = *(v13 + 32);
  }

  v28 = v14;

  sub_26469F424(v28);
  v15 = v28;
}

void sub_2646A0878(uint64_t a1@<X8>)
{
  v2 = sub_264785284();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() mainScreen];
  v8 = [v7 traitCollection];

  [v8 displayScale];
  v10 = v9;

  v11 = objc_opt_self();
  v12 = [objc_opt_self() addressMarkerStyleAttributes];
  v13 = [v11 imageForStyle:v12 size:2 forScale:6 format:0 nightMode:v10];

  if (v13)
  {
    v14 = v13;
    sub_264785254();
    (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
    v13 = sub_2647852C4();

    (*(v3 + 8))(v6, v2);
    sub_264785504();
    sub_2647840A4();
    v15 = v21;
    v16 = v22;
    v17 = v23;
    v18 = v24;
    v20 = v25;

    v19 = v20;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0uLL;
  }

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = v18;
  *(a1 + 40) = v19;
}

uint64_t sub_2646A0B1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76190, &unk_264789D60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F18, &qword_26478C0C8);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_2646A0C54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76190, &unk_264789D60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F18, &qword_26478C0C8);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_2646A0D74()
{
  sub_2646A163C(319, &qword_27FF76F30, MEMORY[0x277CDF4A0]);
  if (v0 <= 0x3F)
  {
    sub_2646A0EAC(319, &qword_27FF761A8, MEMORY[0x277CDD848]);
    if (v1 <= 0x3F)
    {
      sub_2646A0EAC(319, &qword_27FF76F38, MEMORY[0x277CDDEE8]);
      if (v2 <= 0x3F)
      {
        sub_2646A0F00();
        if (v3 <= 0x3F)
        {
          sub_2646A0F94();
          if (v4 <= 0x3F)
          {
            sub_2646A1028();
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

void sub_2646A0EAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264783F94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2646A0F00()
{
  if (!qword_27FF76F40)
  {
    type metadata accessor for SessionViewModel(255);
    sub_264695EA8(&qword_27FF75DC0, type metadata accessor for SessionViewModel);
    v0 = sub_2647841A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF76F40);
    }
  }
}

void sub_2646A0F94()
{
  if (!qword_27FF76F48)
  {
    type metadata accessor for UserSessionConfiguration();
    sub_264695EA8(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration);
    v0 = sub_2647841A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF76F48);
    }
  }
}

void sub_2646A1028()
{
  if (!qword_27FF761C0)
  {
    v0 = sub_264785324();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF761C0);
    }
  }
}

uint64_t sub_2646A1078()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76EB8, &qword_26478BF18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76378, &unk_264789F90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75FF8, &qword_264789B68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76EB0, &qword_26478BF10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76EE8, &qword_26478C048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76EA8, &qword_26478BF08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76EA0, &qword_26478BF00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E98, &qword_26478BEF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E90, &qword_26478BEF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76ED8, &qword_26478C018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E88, &qword_26478BEE8);
  sub_2646975D8();
  swift_getOpaqueTypeConformance2();
  sub_26460CDF0(&qword_27FF76EE0, &qword_27FF76ED8, &qword_26478C018);
  swift_getOpaqueTypeConformance2();
  sub_264613FC4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_26469A614();
  swift_getOpaqueTypeConformance2();
  sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90);
  sub_2646A2298(&qword_27FF76048, &qword_27FF75FF8, &qword_264789B68, sub_26465D250);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2646A13B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F18, &qword_26478C0C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2646A1490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F18, &qword_26478C0C8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_2646A1558()
{
  sub_2646A0EAC(319, &qword_27FF76F38, MEMORY[0x277CDDEE8]);
  if (v0 <= 0x3F)
  {
    sub_2646A163C(319, &qword_27FF76F60, MEMORY[0x277CDF860]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SMSessionDestinationType(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2646A163C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LocationSearchViewModel();
    v7 = sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2646A16FC()
{
  result = qword_27FF76F88;
  if (!qword_27FF76F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76F80, &qword_26478C170);
    sub_2646A17B4();
    sub_26460CDF0(&qword_27FF76FB0, &qword_27FF76FB8, &qword_26478FD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76F88);
  }

  return result;
}

unint64_t sub_2646A17B4()
{
  result = qword_27FF76F90;
  if (!qword_27FF76F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76F98, &qword_26478C178);
    sub_26460CDF0(&qword_27FF76FA0, &qword_27FF76FA8, &qword_26478C180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76F90);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for LocationSearchResultRow(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2647846F4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v5 + *(v1 + 24));
  v9 = v8[3];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_2646A19B0()
{
  v1 = *(type metadata accessor for LocationSearchResultRow(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_26469EDF0();
}

uint64_t sub_2646A1A0C()
{
  v1 = type metadata accessor for LocationSearchResultRow(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2647846F4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v5 + *(v1 + 24));
  v9 = v8[3];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_2646A1B58()
{
  v1 = *(type metadata accessor for LocationSearchResultRow(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_2646A0398(v2, v3);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2646A1BD4()
{
  v1 = type metadata accessor for LocationSearchResultRow(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2647846F4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v9 = (v5 + *(v1 + 24));
  v10 = v9[3];

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v2 | 7);
}

uint64_t sub_2646A1D2C()
{
  v1 = *(type metadata accessor for LocationSearchResultRow(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26469F7D8(v0 + v2, v3);
}

void *sub_2646A1DBC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77020, &qword_26478FE70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_2646A1E4C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_2646A1ED4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_264785C14();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_264785D14();
  *v1 = result;
  return result;
}

uint64_t sub_2646A1F74(uint64_t a1)
{
  v2 = type metadata accessor for LocationSearchResultRow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2646A1FD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_264659B70(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_264785C14();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_264785C14();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_2646A20DC(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for LocationSearchResultRow(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_2646A0548(a1, a2, v6);
}

unint64_t sub_2646A215C()
{
  result = qword_27FF76FE0;
  if (!qword_27FF76FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76FD0, &qword_26478C208);
    sub_2646A21E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76FE0);
  }

  return result;
}

unint64_t sub_2646A21E0()
{
  result = qword_27FF76FE8;
  if (!qword_27FF76FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76FD8, &unk_26478C210);
    sub_264690D34();
    sub_2646A2298(&qword_27FF76FF0, &qword_27FF76FF8, &qword_26478C220, sub_264690D34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76FE8);
  }

  return result;
}

uint64_t sub_2646A2298(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

void sub_2646A2318(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }
}

uint64_t sub_2646A2380(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_264785C14();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v8 - v7;
  if (__OFSUB__(0, v7 - v8))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = sub_264785C14();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    sub_2646A1ED4(result);
    return sub_2646A1FD0(v8, v7, 0, v6, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2646A247C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2646A24E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8]();
  }

  else
  {
  }
}

uint64_t sub_2646A24F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2646A255C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for LocationSelectionView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_26469A7C8(a1, v6, a2);
}

unint64_t sub_2646A25E4()
{
  result = qword_27FF77080;
  if (!qword_27FF77080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77078, &unk_26478C3B0);
    sub_2646647A8();
    sub_26460CDF0(&qword_27FF76B98, &qword_27FF76BA0, &qword_264791250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77080);
  }

  return result;
}

unint64_t sub_2646A269C()
{
  result = qword_27FF77090;
  if (!qword_27FF77090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77088, &qword_26478C3C0);
    sub_2646A2754();
    sub_26460CDF0(&qword_27FF76B98, &qword_27FF76BA0, &qword_264791250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77090);
  }

  return result;
}

unint64_t sub_2646A2754()
{
  result = qword_27FF77098;
  if (!qword_27FF77098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF770A0, &qword_26478C3C8);
    sub_2646A280C();
    sub_26460CDF0(&qword_27FF76358, &qword_27FF76360, &qword_264789F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77098);
  }

  return result;
}

unint64_t sub_2646A280C()
{
  result = qword_27FF770A8;
  if (!qword_27FF770A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF770B0, &qword_26478C3D0);
    sub_26460CDF0(&qword_27FF770B8, &qword_27FF770C0, &unk_26478C3D8);
    sub_264695EA8(&qword_27FF76008, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF770A8);
  }

  return result;
}

unint64_t sub_2646A28FC()
{
  result = qword_27FF770E0;
  if (!qword_27FF770E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF770D8, &qword_26478C3E8);
    sub_26460CDF0(&qword_27FF770E8, &qword_27FF770F0, &qword_26478C3F0);
    sub_2646A29C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF770E0);
  }

  return result;
}

unint64_t sub_2646A29C0()
{
  result = qword_27FF770F8;
  if (!qword_27FF770F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77100, &qword_26478C3F8);
    sub_2646A2A78();
    sub_26460CDF0(&qword_27FF77138, &qword_27FF76C20, &qword_26478B740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF770F8);
  }

  return result;
}

unint64_t sub_2646A2A78()
{
  result = qword_27FF77108;
  if (!qword_27FF77108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77110, &qword_26478C400);
    sub_26460CDF0(&qword_27FF77118, &qword_27FF77120, &qword_26478C408);
    sub_26460CDF0(&qword_27FF77128, &qword_27FF77130, &unk_26478C410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77108);
  }

  return result;
}

uint64_t objectdestroy_99Tm()
{
  v1 = type metadata accessor for LocationSelectionView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_2646A24E4(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2647840D4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2647846F4();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = *(v5 + v1[7] + 8);

  v13 = *(v5 + v1[8] + 8);

  v14 = *(v5 + v1[9] + 8);

  v15 = *(v5 + v1[10] + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

unint64_t sub_2646A2D84()
{
  result = qword_27FF77158;
  if (!qword_27FF77158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77148, &qword_26478C4B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76378, &unk_264789F90);
    sub_264784B04();
    sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90);
    sub_264695EA8(&qword_27FF76C18, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77158);
  }

  return result;
}

unint64_t sub_2646A2F44()
{
  result = qword_27FF771A0;
  if (!qword_27FF771A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF771A0);
  }

  return result;
}

unint64_t sub_2646A2F98()
{
  result = qword_27FF771B8;
  if (!qword_27FF771B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77190, &qword_26478C4F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77188, &qword_26478C4F0);
    sub_264784214();
    sub_26460CDF0(&qword_27FF771B0, &qword_27FF77188, &qword_26478C4F0);
    swift_getOpaqueTypeConformance2();
    sub_26460CDF0(&qword_27FF77138, &qword_27FF76C20, &qword_26478B740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF771B8);
  }

  return result;
}

uint64_t sub_2646A3110(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LocationSelectionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2646A31A0()
{
  result = qword_27FF771F8;
  if (!qword_27FF771F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77200, &qword_26478C678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76F68, &qword_26478C158);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76F80, &qword_26478C170);
    sub_2646A16FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_264695EA8(&qword_27FF76008, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF771F8);
  }

  return result;
}

uint64_t InitiatorConfigurationView.customTint.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t InitiatorConfigurationView.init(sessionViewModel:handlerManager:customTint:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  LOBYTE(v14) = 0;
  sub_2647852E4();
  type metadata accessor for SessionViewModel(0);
  sub_2646A5414(&qword_27FF75DC0, type metadata accessor for SessionViewModel);

  v6 = sub_264784174();
  v8 = v7;
  v9 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
  swift_beginAccess();
  if (*(v8 + v9))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_264783ED4();

    if (v14 && (v10 = [v14 sessionState], v14, v10 == 11))
    {
      if (a1)
      {
        swift_beginAccess();
        v11 = *(a1 + 32);
        sub_264611394(v11);

        if (v11)
        {
          v11(v12);
          sub_26460C9A0(v11);
        }
      }
    }

    else
    {
    }
  }

  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v15;
  *(a3 + 24) = v16;
  *(a3 + 32) = a2;
  *(a3 + 40) = a1;
  *(a3 + 48) = "SMPhonePlatterStaging";
  *(a3 + 56) = 21;
  *(a3 + 64) = 2;
  return result;
}

uint64_t InitiatorConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v63 = type metadata accessor for CheckInView();
  v2 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77208, &qword_26478C6C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77210, &qword_26478C6D0);
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9);
  v64 = &v62 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77218, &qword_26478C6D8);
  v12 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v68 = &v62 - v13;
  v14 = v1[1];
  v15 = v1[3];
  v81 = v1[2];
  v82 = v15;
  v16 = v1[1];
  v79 = *v1;
  v80 = v16;
  v17 = v1[3];
  v77[2] = v81;
  v77[3] = v17;
  v83 = *(v1 + 64);
  v78 = *(v1 + 64);
  v77[0] = v79;
  v77[1] = v14;
  sub_2646A3DEC(v74);
  v71[0] = v74[0];
  v71[1] = v74[1];
  v71[2] = v74[2];
  v73 = v76;
  v72 = v75;
  v18 = swift_allocObject();
  v19 = v82;
  *(v18 + 48) = v81;
  *(v18 + 64) = v19;
  *(v18 + 80) = v83;
  v20 = v80;
  *(v18 + 16) = v79;
  *(v18 + 32) = v20;
  sub_2646A505C(&v79, v70);
  CheckInView.init(state:edgeInsets:buttonAction:)(v71, sub_2646A5004, v18, v4, 0.0, 0.0, 0.0, 0.0);
  v70[0] = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  sub_264785314();
  v21 = swift_allocObject();
  v22 = v82;
  *(v21 + 48) = v81;
  *(v21 + 64) = v22;
  *(v21 + 80) = v83;
  v23 = v80;
  *(v21 + 16) = v79;
  *(v21 + 32) = v23;
  sub_2646A505C(&v79, v77);
  type metadata accessor for InitiatorConfigurationSheet();
  sub_2646A5414(&qword_27FF75440, type metadata accessor for CheckInView);
  sub_2646A5414(&qword_27FF77220, type metadata accessor for InitiatorConfigurationSheet);
  sub_2647850B4();

  v24 = v5;

  sub_2646A509C(v4);
  v25 = objc_opt_self();
  v26 = [v25 defaultCenter];
  v27 = *MEMORY[0x277D76660];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77228, &qword_26478C6E8);
  v29 = &v8[*(v28 + 52)];
  sub_264785A94();

  v30 = swift_allocObject();
  v31 = v82;
  *(v30 + 48) = v81;
  *(v30 + 64) = v31;
  *(v30 + 80) = v83;
  v32 = v80;
  *(v30 + 16) = v79;
  *(v30 + 32) = v32;
  v33 = &v8[*(v28 + 56)];
  *v33 = sub_2646A50F8;
  v33[1] = v30;
  sub_2646A505C(&v79, v77);
  v34 = [v25 defaultCenter];
  v35 = *MEMORY[0x277D76758];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77230, &qword_26478C6F0);
  v37 = &v8[*(v36 + 52)];
  sub_264785A94();

  v38 = swift_allocObject();
  v39 = v82;
  *(v38 + 48) = v81;
  *(v38 + 64) = v39;
  *(v38 + 80) = v83;
  v40 = v80;
  *(v38 + 16) = v79;
  *(v38 + 32) = v40;
  v41 = &v8[*(v36 + 56)];
  *v41 = sub_2646A5100;
  v41[1] = v38;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77238, &qword_26478C6F8) + 36)] = 256;
  v42 = swift_allocObject();
  v43 = v82;
  *(v42 + 48) = v81;
  *(v42 + 64) = v43;
  *(v42 + 80) = v83;
  v45 = v79;
  v44 = v80;
  *(v42 + 16) = v79;
  *(v42 + 32) = v44;
  v46 = &v8[*(v24 + 36)];
  *v46 = sub_2646A495C;
  *(v46 + 1) = 0;
  *(v46 + 2) = sub_2646A5108;
  *(v46 + 3) = v42;
  v70[0] = v45;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2646A505C(&v79, v77);
  sub_2646A505C(&v79, v77);
  sub_2646A5110(v70, v77);
  sub_264783ED4();
  sub_2646A5180(v70);

  v47 = *&v77[0];
  if (*&v77[0])
  {
    v48 = [*&v77[0] sessionState];
  }

  else
  {
    v48 = 0;
  }

  *&v74[0] = v48;
  BYTE8(v74[0]) = v47 == 0;
  v49 = swift_allocObject();
  v50 = v82;
  *(v49 + 48) = v81;
  *(v49 + 64) = v50;
  *(v49 + 80) = v83;
  v51 = v80;
  *(v49 + 16) = v79;
  *(v49 + 32) = v51;
  sub_2646A505C(&v79, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77248, &qword_26478C708);
  sub_2646A51F0();
  sub_2646A5360();
  v52 = v64;
  sub_2647850F4();

  sub_26460CD50(v8, &qword_27FF77208, &qword_26478C6C8);
  v53 = swift_allocObject();
  v54 = v82;
  *(v53 + 48) = v81;
  *(v53 + 64) = v54;
  *(v53 + 80) = v83;
  v55 = v80;
  *(v53 + 16) = v79;
  *(v53 + 32) = v55;
  v56 = v68;
  (*(v65 + 32))(v68, v52, v66);
  v57 = (v56 + *(v67 + 36));
  *v57 = sub_2646A545C;
  v57[1] = v53;
  v57[2] = 0;
  v57[3] = 0;
  sub_2646A505C(&v79, v77);
  sub_2646A5110(v70, v77);
  LOBYTE(v53) = SessionViewModel.isInitiatorLoading.getter();
  sub_2646A5180(v70);
  LOBYTE(v74[0]) = v53 & 1;
  v58 = swift_allocObject();
  v59 = v82;
  *(v58 + 48) = v81;
  *(v58 + 64) = v59;
  *(v58 + 80) = v83;
  v60 = v80;
  *(v58 + 16) = v79;
  *(v58 + 32) = v60;
  sub_2646A505C(&v79, v77);
  sub_2646A54BC();
  sub_2647850F4();

  return sub_26460CD50(v56, &qword_27FF77218, &qword_26478C6D8);
}

double sub_2646A3DEC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_264783E24();
  v50 = *(v3 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264783C74();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v1[1];
  v12 = v1[3];
  v13 = v1[4];
  v14 = v1[5];

  v15 = SessionViewModel.isInitiatorLoading.getter();

  if (v15)
  {
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 50) = -64;
    *(a1 + 48) = 0;
    return result;
  }

  SessionViewModel.sendStartMessageValidity.getter(v10);

  v17 = SessionViewModel.isReadyToConfigure.getter();

  if (v17 & 1) != 0 || (sub_264783C64())
  {

    v48 = sub_264668BD8();
    v19 = v18;

    v49 = v19;
    if (!v19)
    {
      v47 = v7;
      sub_264783DF4();

      v20 = sub_264783E14();
      v21 = sub_2647859D4();

      v46 = v21;
      v22 = v21;
      v23 = v20;
      if (os_log_type_enabled(v20, v22))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v52 = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_2646DF234(7104878, 0xE300000000000000, &v52);
        *(v24 + 12) = 2080;
        v26 = objc_opt_self();
        v45 = v23;
        v27 = [v26 sessionTypeToString_];
        v28 = sub_264785724();
        v30 = v29;

        v31 = sub_2646DF234(v28, v30, &v52);

        *(v24 + 14) = v31;
        v23 = v45;
        _os_log_impl(&dword_264605000, v45, v46, "#Initiator,InitiatorConfigurationView,checkInStateView - sessionTimeString %s, sessionType %s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v25, -1, -1);
        MEMORY[0x266740650](v24, -1, -1);
      }

      (*(v50 + 8))(v6, v3);
      v7 = v47;
    }

    v32 = SessionViewModel.sessionType.getter();

    if (v32 == 4)
    {

      v54 = 0;
      started = _s15SafetyMonitorUI0aB11UIUtilitiesC28transcriptWorkoutStartString8userTypeSSAA04UserJ0O_tFZ_0(&v54);
      v40 = v39;
      (*(v51 + 8))(v10, v7);
      *a1 = started;
      *(a1 + 8) = v40;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      goto LABEL_21;
    }

    v33 = v49;
    if (v32 == 2)
    {
      if (v49)
      {

        v34 = sub_26466856C();
        v36 = v37;

        if (!v36)
        {
          if (qword_27FF750A8 != -1)
          {
            swift_once();
          }

          v34 = qword_27FF78D08;
          v36 = unk_27FF78D10;
        }

        goto LABEL_19;
      }
    }

    else if (v32 == 1)
    {
      if (v49)
      {
        v53 = 0;
        v34 = _s15SafetyMonitorUI0aB11UIUtilitiesC11timerString8userTypeSSAA04UserH0O_tFZ_0(&v53);
        v36 = v35;
LABEL_19:
        (*(v51 + 8))(v10, v7);
        *a1 = v34;
        *(a1 + 8) = v36;
        *(a1 + 16) = v48;
        *(a1 + 24) = v33;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
LABEL_21:
        *(a1 + 50) = 33;
        *(a1 + 48) = 256;
        return result;
      }
    }

    else
    {
    }
  }

  v41 = sub_264783C24();
  v43 = v42;
  (*(v51 + 8))(v10, v7);
  *a1 = v41;
  *(a1 + 8) = v43;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 47) = 0;
  return result;
}

uint64_t sub_2646A431C@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = *a1;
  v3 = *(&v7 + 1);
  v4 = *(a1 + 4);
  sub_2646A5110(&v7, &v6);

  return sub_26465DF00(v3, v4, a2);
}

uint64_t sub_2646A4380(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_264783E24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v12 = sub_264783E14();
  v13 = sub_2647859F4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_264605000, v12, v13, "Notification received for didEnterBackgroundNotification, will cancelInitialization()", v14, 2u);
    MEMORY[0x266740650](v14, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v15 = *(a2 + 8);
  v16 = sub_2647858E4();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_2647858B4();

  v17 = sub_2647858A4();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v15;
  sub_264635730(0, 0, v6, &unk_26478C7D0, v18);
}

uint64_t sub_2646A45BC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v7 = sub_264783DD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_264783E24();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v17 = sub_264783E14();
  v18 = sub_2647859F4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = a2;
    v20 = v8;
    v21 = v7;
    v22 = v6;
    v23 = v19;
    *v19 = 0;
    _os_log_impl(&dword_264605000, v17, v18, "Notification received for willEnterForegroundNotification, will initializeIfNeeded()", v19, 2u);
    v24 = v23;
    v6 = v22;
    v7 = v21;
    v8 = v20;
    a2 = v35;
    MEMORY[0x266740650](v24, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v25 = *(a2 + 48);
  v26 = *(a2 + 56);
  v27 = *(a2 + 64);
  sub_264783DC4();
  sub_264785A84();
  if (qword_27FF75010 != -1)
  {
    swift_once();
  }

  sub_264783DB4();
  (*(v8 + 8))(v11, v7);
  v28 = *(a2 + 8);
  v29 = sub_2647858E4();
  (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
  sub_2647858B4();

  v30 = sub_2647858A4();
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  *(v31 + 16) = v30;
  *(v31 + 24) = v32;
  *(v31 + 32) = v28;
  *(v31 + 40) = 1;
  sub_264635430(0, 0, v6, &unk_264789310, v31);
}

uint64_t sub_2646A495C@<X0>(void *a1@<X8>)
{
  result = sub_2647840E4();
  *a1 = v3;
  return result;
}

uint64_t sub_2646A4988(double *a1, uint64_t a2)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*a1 > 222.0)
  {
    sub_264783DF4();
    v11 = sub_264783E14();
    v12 = sub_2647859F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v10;
      _os_log_impl(&dword_264605000, v11, v12, "#Initiator,InitiatorConfigurationView, onGeometryChange - requesting to resize view, height, %f", v13, 0xCu);
      MEMORY[0x266740650](v13, -1, -1);
    }

    result = (*(v5 + 8))(v9, v4);
    v14 = *(a2 + 40);
    if (v14)
    {
      result = swift_beginAccess();
      v15 = *(v14 + 64);
      if (v15)
      {
        v16 = *(v14 + 72);

        v15(v17);
        return sub_26460C9A0(v15);
      }
    }
  }

  return result;
}

uint64_t sub_2646A4B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + 8) & 1) == 0 && *a2 == 10)
  {
    v11 = result;
    sub_264783DF4();
    v12 = sub_264783E14();
    v13 = sub_2647859F4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_264605000, v12, v13, "#Initiator,InitiatorConfigurationView, on session state change - requesting to resize view", v14, 2u);
      MEMORY[0x266740650](v14, -1, -1);
    }

    result = (*(v6 + 8))(v10, v11);
    v15 = *(a3 + 40);
    if (v15)
    {
      result = swift_beginAccess();
      v16 = *(v15 + 64);
      if (v16)
      {
        v17 = *(v15 + 72);

        v16(v18);
        return sub_26460C9A0(v16);
      }
    }
  }

  return result;
}

uint64_t sub_2646A4CE0(uint64_t a1)
{
  v2 = sub_264783DD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  sub_264783DC4();
  sub_264785A84();
  if (qword_27FF75010 != -1)
  {
    swift_once();
  }

  sub_264783DB4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2646A4E4C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_264783DD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1 && (*a2 & 1) == 0)
  {
    v12 = *(a3 + 8);
    v13 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
    result = swift_beginAccess();
    if ((*(v12 + v13) & 1) == 0)
    {
      v14 = *(a3 + 48);
      v15 = *(a3 + 56);
      v16 = *(a3 + 64);
      sub_264783DC4();
      v17 = sub_264785A74();
      if (qword_27FF75010 != -1)
      {
        v18[1] = v17;
        swift_once();
      }

      sub_264783DB4();
      return (*(v7 + 8))(v11, v6);
    }
  }

  return result;
}

uint64_t sub_2646A5004()
{
  v2 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  return sub_264785304();
}

uint64_t sub_2646A509C(uint64_t a1)
{
  v2 = type metadata accessor for CheckInView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2646A5110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77240, &qword_26478C700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646A5180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77240, &qword_26478C700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2646A51F0()
{
  result = qword_27FF77250;
  if (!qword_27FF77250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77208, &qword_26478C6C8);
    sub_2646A52A8();
    sub_26460CDF0(&qword_27FF77268, &qword_27FF77270, &qword_26478C710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77250);
  }

  return result;
}

unint64_t sub_2646A52A8()
{
  result = qword_27FF77258;
  if (!qword_27FF77258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77238, &qword_26478C6F8);
    sub_26460CDF0(&qword_27FF77260, &qword_27FF77230, &qword_26478C6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77258);
  }

  return result;
}

unint64_t sub_2646A5360()
{
  result = qword_27FF77278;
  if (!qword_27FF77278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77248, &qword_26478C708);
    sub_2646A5414(&qword_27FF77280, type metadata accessor for SMSessionState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77278);
  }

  return result;
}

uint64_t sub_2646A5414(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_5()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

unint64_t sub_2646A54BC()
{
  result = qword_27FF77288;
  if (!qword_27FF77288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77218, &qword_26478C6D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77208, &qword_26478C6C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77248, &qword_26478C708);
    sub_2646A51F0();
    sub_2646A5360();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77288);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2646A55F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2646A5638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2646A569C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77218, &qword_26478C6D8);
  sub_2646A54BC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroy_27Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2646A57E4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;

  return sub_2646A5840();
}

uint64_t sub_2646A5840()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DE4();

  v7 = sub_264783E14();
  v8 = sub_2647859F4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = v2;
    v10 = v9;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315651;
    v21 = v1;
    type metadata accessor for DestinationMapViewModel();

    v13 = sub_264785764();
    v15 = sub_2646DF234(v13, v14, &v22);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0x7461636F4C646E65, 0xEB000000006E6F69, &v22);
    *(v10 + 22) = 2117;
    swift_beginAccess();
    v16 = *(v1 + 16);
    *(v10 + 24) = v16;
    *v11 = v16;
    v17 = v16;
    _os_log_impl(&dword_264605000, v7, v8, "%s, %s: endLocation was changed to %{sensitive}@", v10, 0x20u);
    sub_26468367C(v11);
    MEMORY[0x266740650](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v12, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);

    return (*(v3 + 8))(v6, v20);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

void *sub_2646A5AB8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_2646A5AFC(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = a1;

  sub_2646A5840();
}

uint64_t (*sub_2646A5B5C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2646A5BB0;
}

uint64_t sub_2646A5BB0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2646A5840();
  }

  return result;
}

uint64_t sub_2646A5C18(double a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_2646A5CDC(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t DestinationMapViewModel.__allocating_init(endLocation:endLocationGeofenceRadius:destinationType:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 32) = a2;
  return v6;
}

uint64_t DestinationMapViewModel.init(endLocation:endLocationGeofenceRadius:destinationType:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = 0;
  swift_beginAccess();
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = a2;
  return v3;
}

uint64_t DestinationMapViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2646A5EB0(uint64_t a1)
{
  result = sub_2646A5ED8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2646A5ED8()
{
  result = qword_27FF77290;
  if (!qword_27FF77290)
  {
    type metadata accessor for DestinationMapViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77290);
  }

  return result;
}

uint64_t sub_2646A5F50@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DestinationMapViewModel();
  result = sub_264783E64();
  *a1 = result;
  return result;
}

id sub_2646A5F8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

double sub_2646A5FE8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_2646A6030(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_2646A607C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_2646A60C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t DurationSelectionGroup.body.getter()
{
  v1 = sub_264783B94();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_264785704();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF754B8, &qword_264787630);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = *(v0 + 1);
  v8 = *(v0 + 2);
  v9 = v0[3];
  v19 = *v0;
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264613FC4();
  v12 = sub_264784E44();
  v14 = v13;
  *&v20 = v12;
  *(&v20 + 1) = v13;
  v16 = v15 & 1;
  v21 = v15 & 1;
  v22 = v17;
  sub_264785034();
  sub_26460ECC4(v12, v14, v16);

  sub_2646A6710(v7, v8, &v20, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77298, &qword_26478C8C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772A0, &qword_26478C8D0);
  sub_26465D02C();
  sub_2646A7124();
  sub_2646A7290();
  return sub_264785454();
}

__n128 sub_2646A6558@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772B8, &unk_26478C8D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16[-v10];
  *&v18 = a1;
  *(&v18 + 1) = a2;
  *&v19 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772F0, &qword_26478C998);
  sub_2647853F4();
  v18 = *&v16[8];
  *&v19 = v17;
  sub_2646A723C();
  sub_264785034();

  sub_264785504();
  sub_264784314();
  sub_2646A74F4(v11, a3);
  v12 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77298, &qword_26478C8C8) + 36);
  v13 = v23;
  *(v12 + 64) = v22;
  *(v12 + 80) = v13;
  *(v12 + 96) = v24;
  v14 = v19;
  *v12 = v18;
  *(v12 + 16) = v14;
  result = v21;
  *(v12 + 32) = v20;
  *(v12 + 48) = result;
  return result;
}

double sub_2646A6700@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_2646A6558(*(v1 + 24), *(v1 + 32), a1, *(v1 + 40)).n128_u64[0];
  return result;
}

double sub_2646A6710@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>, double a4@<D0>)
{
  v62 = a3;
  v7 = sub_264783B94();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v61[3] = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264785704();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v61[2] = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264783AF4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2647856E4();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  sub_264783D04();
  v20 = sub_26462B210();
  v61[1] = MEMORY[0x26673DA20]();
  v22 = v21;

  v23 = sub_26462B210();
  if (v23 && (v24 = v23, v25 = [v23 isGroup], v24, v25))
  {
    sub_2647856D4();
    sub_2647856C4();
    *&v66 = a1;
    *(&v66 + 1) = a2;
    *&v67 = a4;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772F0, &qword_26478C998);
    MEMORY[0x26673F100](&v63, v26);
    sub_264783A94();
    v27 = sub_264783A64();
    v28 = [v27 absoluteTimeString:0 preposition:2 capitalized:0];

    sub_264785724();
    (*(v14 + 8))(v17, v13);
    sub_2647856B4();

    sub_2647856C4();
    if (v22)
    {
      sub_2647856B4();

      sub_2647856C4();
      sub_2647856F4();
      sub_26460EC78();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v30 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      *&v66 = sub_264785744();
      *(&v66 + 1) = v31;
      sub_264613FC4();
      *&v63 = sub_264784E44();
      *(&v63 + 1) = v32;
      *&v64 = v33 & 1;
      *(&v64 + 1) = v34;
      LOBYTE(v65) = 0;
    }

    else
    {
      sub_2647856F4();
      sub_26460EC78();
      v50 = swift_getObjCClassFromMetadata();
      v51 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      *&v66 = sub_264785744();
      *(&v66 + 1) = v52;
      sub_264613FC4();
      *&v63 = sub_264784E44();
      *(&v63 + 1) = v53;
      *&v64 = v54 & 1;
      *(&v64 + 1) = v55;
      LOBYTE(v65) = 1;
    }

    sub_264784874();
    v63 = v66;
    v64 = v67;
    v65 = v68;
  }

  else
  {
    sub_2647856D4();
    sub_2647856C4();
    *&v66 = a1;
    *(&v66 + 1) = a2;
    *&v67 = a4;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772F0, &qword_26478C998);
    MEMORY[0x26673F100](&v63, v35);
    sub_264783A94();
    v36 = sub_264783A64();
    v37 = [v36 absoluteTimeString:0 preposition:2 capitalized:0];

    sub_264785724();
    (*(v14 + 8))(v17, v13);
    sub_2647856B4();

    sub_2647856C4();
    if (v22)
    {
      sub_2647856B4();

      sub_2647856C4();
      sub_2647856F4();
      sub_26460EC78();
      v38 = swift_getObjCClassFromMetadata();
      v39 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      *&v66 = sub_264785754();
      *(&v66 + 1) = v40;
      sub_264613FC4();
      *&v63 = sub_264784E44();
      *(&v63 + 1) = v41;
      *&v64 = v42 & 1;
      *(&v64 + 1) = v43;
      LOBYTE(v65) = 0;
    }

    else
    {
      sub_2647856F4();
      sub_26460EC78();
      v44 = swift_getObjCClassFromMetadata();
      v45 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      *&v66 = sub_264785754();
      *(&v66 + 1) = v46;
      sub_264613FC4();
      *&v63 = sub_264784E44();
      *(&v63 + 1) = v47;
      *&v64 = v48 & 1;
      *(&v64 + 1) = v49;
      LOBYTE(v65) = 1;
    }

    sub_264784874();
    v63 = v66;
    v64 = v67;
    LOBYTE(v65) = v68;
    HIBYTE(v65) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76058, &qword_26478C060);
  sub_26465D250();
  sub_264784874();
  result = *&v66;
  v57 = v67;
  v58 = v68;
  v59 = v69;
  v60 = v62;
  *v62 = v66;
  v60[1] = v57;
  *(v60 + 32) = v58;
  *(v60 + 33) = v59;
  return result;
}

unint64_t sub_2646A7124()
{
  result = qword_27FF772A8;
  if (!qword_27FF772A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77298, &qword_26478C8C8);
    sub_2646A71B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF772A8);
  }

  return result;
}

unint64_t sub_2646A71B0()
{
  result = qword_27FF772B0;
  if (!qword_27FF772B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF772B8, &unk_26478C8D8);
    sub_2646A723C();
    sub_264695700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF772B0);
  }

  return result;
}

unint64_t sub_2646A723C()
{
  result = qword_27FF772C0;
  if (!qword_27FF772C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF772C0);
  }

  return result;
}

unint64_t sub_2646A7290()
{
  result = qword_27FF772C8;
  if (!qword_27FF772C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF772A0, &qword_26478C8D0);
    sub_26465D250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF772C8);
  }

  return result;
}

uint64_t sub_2646A7334(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2646A737C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2646A73D0()
{
  result = qword_27FF772D0;
  if (!qword_27FF772D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF772D8, &qword_26478C988);
    sub_2646A7454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF772D0);
  }

  return result;
}

unint64_t sub_2646A7454()
{
  result = qword_27FF772E0;
  if (!qword_27FF772E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF772E8, &qword_26478C990);
    sub_26465D02C();
    sub_2646A7124();
    sub_2646A7290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF772E0);
  }

  return result;
}

uint64_t sub_2646A74F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772B8, &unk_26478C8D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CacheNotAvailableView.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t CacheNotAvailableView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_264784714();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772F8, &qword_26478C9F8);
  return sub_2646A7660(v1, a1 + *(v3 + 44));
}

uint64_t sub_2646A7660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_264783B94();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264785704();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v67 - v15;
  v17 = type metadata accessor for CacheNotAvailableView();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77320, &qword_264791240);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v68 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v67 - v25;
  sub_2646A816C(a1, &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v28 = swift_allocObject();
  sub_2646A82D0(&v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  *v26 = sub_2647845C4();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v29 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77328, &unk_26478CA80) + 44)];
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2646A8334;
  *(v30 + 24) = v28;

  sub_264785334();
  v31 = v10[2];
  v31(v14, v16, v9);
  *v29 = 0;
  v29[8] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77330, &qword_264791A60);
  v31(&v29[*(v32 + 48)], v14, v9);
  v33 = v10[1];
  v33(v16, v9);
  v33(v14, v9);
  LOBYTE(v33) = sub_264784C44();
  sub_264783F54();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77338, &qword_26478CA90) + 36)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  LOBYTE(v33) = sub_264784C84();
  sub_264783F54();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v51 = &v26[*(v21 + 44)];
  *v51 = v33;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v53 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v72 = sub_264785754();
  v73 = v54;
  sub_264613FC4();
  v55 = sub_264784E44();
  v57 = v56;
  LOBYTE(v31) = v58;
  v60 = v59;
  v61 = v68;
  sub_26460CCE8(v26, v68, &qword_27FF77320, &qword_264791240);
  v62 = v71;
  sub_26460CCE8(v61, v71, &qword_27FF77320, &qword_264791240);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77340, &qword_26478CA98);
  v64 = v62 + *(v63 + 48);
  *v64 = 0;
  *(v64 + 8) = 1;
  v65 = v62 + *(v63 + 64);
  *v65 = v55;
  *(v65 + 8) = v57;
  LOBYTE(v31) = v31 & 1;
  *(v65 + 16) = v31;
  *(v65 + 24) = v60;
  sub_26460C474(v55, v57, v31);

  sub_2646A83DC(v26);
  sub_26460ECC4(v55, v57, v31);

  return sub_2646A83DC(v61);
}

uint64_t sub_2646A7C60(uint64_t a1)
{
  v19 = sub_264784574();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v18 - v8);
  v10 = sub_2647840D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26460CCE8(a1, v9, &qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v15 = *v9;
    sub_2647859E4();
    v16 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_2647840C4();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_2646A7EDC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_264784714();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772F8, &qword_26478C9F8);
  return sub_2646A7660(v1, a1 + *(v3 + 44));
}

uint64_t sub_2646A7F44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76190, &unk_264789D60);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2646A7FD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76190, &unk_264789D60);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CacheNotAvailableView()
{
  result = qword_27FF77300;
  if (!qword_27FF77300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2646A8098()
{
  sub_26465DD44();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2646A8108()
{
  result = qword_27FF77310;
  if (!qword_27FF77310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77318, &qword_26478CA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77310);
  }

  return result;
}

uint64_t sub_2646A816C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheNotAvailableView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646A81D0()
{
  v1 = *(type metadata accessor for CacheNotAvailableView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2647840D4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
    v6 = *(v0 + v3);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2646A82D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheNotAvailableView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646A8334()
{
  v1 = *(type metadata accessor for CacheNotAvailableView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2646A7C60(v2);
}

uint64_t sub_2646A8394()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2646A83DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77320, &qword_264791240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2646A8460()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();
}

uint64_t sub_2646A84E0(__int128 *a1)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a1 + 24);
  v5 = *(a1 + 50);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = a1[1];
  v7 = *a1;

  return sub_264783EE4();
}

uint64_t (*sub_2646A8580(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646A8624(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77358, &qword_26478CB00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77350, &qword_26478CAF8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646A87C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77358, &qword_26478CB00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77350, &qword_26478CAF8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646A88FC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77358, &qword_26478CB00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77350, &qword_26478CAF8);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646A8A6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  return result;
}

uint64_t sub_2646A8AEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t (*sub_2646A8B98(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646A8C3C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77370, &qword_26478CB58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77368, &qword_26478CB50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646A8DDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77370, &qword_26478CB58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77368, &qword_26478CB50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646A8F14(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77370, &qword_26478CB58);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__sessionViewModel;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77368, &qword_26478CB50);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646A90B4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t (*sub_2646A9120(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_264622F4C;
}

uint64_t sub_2646A91C4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77388, &qword_26478CBB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77380, &qword_26478CBA8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646A9364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77388, &qword_26478CBB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77380, &qword_26478CBA8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646A949C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77388, &qword_26478CBB0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__safetyCacheViewModel;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77380, &qword_26478CBA8);
  sub_264783EA4();
  swift_endAccess();
  return sub_2646263E8;
}

uint64_t (*sub_2646A9664(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646A9708(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646A98A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646A99E0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__primaryDetailString;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_2646A9BA8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646A9C4C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646A9DEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646A9F24(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__secondaryDetailString;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646AA0EC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t (*sub_2646AA164(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646AA208(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646AA3A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646AA4E0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__warningString;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646AA650@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  return result;
}

uint64_t sub_2646AA6D0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_2646AA744()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_2646AA7C0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t (*sub_2646AA830(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646AA8D4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646AAA74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646AABAC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__showLPMWarningIcon;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646AAD1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  return result;
}

uint64_t sub_2646AAD9C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  sub_264783EE4();
  return sub_2646AAE18();
}

uint64_t sub_2646AAE18()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 48))
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v7 = sub_264783E14();
  v8 = sub_2647859B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138739971;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v11 = v14;
    *(v9 + 4) = v14;
    *v10 = v11;
    _os_log_impl(&dword_264605000, v7, v8, "resolvedMapItem: %{sensitive}@", v9, 0xCu);
    sub_26460CD50(v10, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return sub_2646AC848();
}

void sub_2646AB028(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;

  sub_264783EE4();
  sub_2646AAE18();
}

void (*sub_2646AB0A8(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a1 = a1[1];
  return sub_2646AB13C;
}

void sub_2646AB13C(uint64_t a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 8) = v4;
  v5 = *(a1 + 16);
  v8 = v4;

  if (a2)
  {
    v6 = v8;
    sub_264783EE4();
    sub_2646AAE18();

    v7 = *a1;
  }

  else
  {
    sub_264783EE4();
    sub_2646AAE18();
    v7 = v8;
  }
}

uint64_t sub_2646AB228(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646AB3C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646AB500(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__resolvedMapItem;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t TranscriptViewModel.__allocating_init(message:userType:messageSenderContact:handlerManager:sessionViewModel:safetyCacheViewModel:)(void *a1, unsigned __int8 *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v44 = a3;
  v45 = a6;
  v47 = a4;
  v48 = a5;
  v46 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v12 = *(v40 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v40);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  v21 = *(v6 + 48);
  v22 = *(v6 + 52);
  v23 = swift_allocObject();
  v43 = *a2;
  if (MEMORY[0x277D84F90] >> 62 && sub_264785C14())
  {
    v24 = sub_26476D298(MEMORY[0x277D84F90]);
  }

  else
  {
    v24 = MEMORY[0x277D84FA0];
  }

  *(v23 + 24) = v24;
  v25 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__primaryDetailString;
  v49 = 0;
  *&v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
  sub_264783E94();
  v26 = *(v17 + 32);
  v26(v23 + v25, v20, v16);
  v27 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__secondaryDetailString;
  v49 = 0;
  *&v50 = 0;
  sub_264783E94();
  v26(v23 + v27, v20, v16);
  v28 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__warningString;
  v49 = 0;
  *&v50 = 0;
  sub_264783E94();
  v26(v23 + v28, v20, v16);
  v29 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__showLPMWarningIcon;
  LOBYTE(v49) = 0;
  sub_264783E94();
  (*(v12 + 32))(v23 + v29, v15, v40);
  v30 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__resolvedMapItem;
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  sub_264783E94();
  (*(v41 + 32))(v23 + v30, v11, v42);
  v32 = v43;
  v31 = v44;
  *(v23 + 48) = v43;
  *(v23 + 40) = v31;
  *(v23 + 56) = v47;
  swift_beginAccess();
  v55 = v48;
  type metadata accessor for SessionViewModel(0);
  v33 = v31;

  sub_264783E94();
  swift_endAccess();
  swift_beginAccess();
  v34 = v45;
  v55 = v45;
  type metadata accessor for SafetyCacheViewModel();
  v35 = v34;
  sub_264783E94();
  swift_endAccess();
  v36 = v46;
  *(v23 + 16) = v46;
  ObjCClassFromObject = swift_getObjCClassFromObject();
  v38 = v36;
  *(v23 + 64) = [ObjCClassFromObject messageType];
  swift_beginAccess();
  v49 = v32;
  v50 = 0u;
  v51 = 0u;
  v52 = 0;
  v54 = -96;
  v53 = 0;
  sub_264783E94();
  swift_endAccess();
  *(v23 + 32) = 0;
  sub_2646AF184();
  sub_2646AC134();
  sub_2646ACB28();

  return v23;
}

uint64_t TranscriptViewModel.init(message:userType:messageSenderContact:handlerManager:sessionViewModel:safetyCacheViewModel:)(void *a1, unsigned __int8 *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v41 = a3;
  v42 = a6;
  v44 = a4;
  v45 = a5;
  v43 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v12 = *(v37 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v37);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v40 = *a2;
  if (MEMORY[0x277D84F90] >> 62 && sub_264785C14())
  {
    v21 = sub_26476D298(MEMORY[0x277D84F90]);
  }

  else
  {
    v21 = MEMORY[0x277D84FA0];
  }

  *(v6 + 24) = v21;
  v22 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__primaryDetailString;
  v46 = 0;
  *&v47 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
  sub_264783E94();
  v23 = *(v17 + 32);
  v23(v6 + v22, v20, v16);
  v24 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__secondaryDetailString;
  v46 = 0;
  *&v47 = 0;
  sub_264783E94();
  v23(v6 + v24, v20, v16);
  v25 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__warningString;
  v46 = 0;
  *&v47 = 0;
  sub_264783E94();
  v23(v6 + v25, v20, v16);
  v26 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__showLPMWarningIcon;
  LOBYTE(v46) = 0;
  sub_264783E94();
  (*(v12 + 32))(v6 + v26, v15, v37);
  v27 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__resolvedMapItem;
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  sub_264783E94();
  (*(v38 + 32))(v6 + v27, v11, v39);
  v29 = v40;
  v28 = v41;
  *(v6 + 48) = v40;
  *(v6 + 40) = v28;
  *(v6 + 56) = v44;
  swift_beginAccess();
  v52 = v45;
  type metadata accessor for SessionViewModel(0);
  v30 = v28;

  sub_264783E94();
  swift_endAccess();
  swift_beginAccess();
  v31 = v42;
  v52 = v42;
  type metadata accessor for SafetyCacheViewModel();
  v32 = v31;
  sub_264783E94();
  swift_endAccess();
  v33 = v43;
  *(v6 + 16) = v43;
  ObjCClassFromObject = swift_getObjCClassFromObject();
  v35 = v33;
  *(v6 + 64) = [ObjCClassFromObject messageType];
  swift_beginAccess();
  v46 = v29;
  v47 = 0u;
  v48 = 0u;
  v49 = 0;
  v51 = -96;
  v50 = 0;
  sub_264783E94();
  swift_endAccess();
  *(v6 + 32) = 0;
  sub_2646AF184();
  sub_2646AC134();
  sub_2646ACB28();

  return v6;
}

uint64_t sub_2646AC020()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

id sub_2646AC09C()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
  {

    return [result destinationType];
  }

  return result;
}

uint64_t sub_2646AC134()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF773E8, &qword_26478CF78);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF773F0, &unk_26478CF80);
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  type metadata accessor for SessionViewModel(0);
  sub_2646B6550(&qword_27FF75DC0, type metadata accessor for SessionViewModel);
  v8 = sub_264783E64();

  v21 = v8;
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v9 = sub_264785A44();
  v22 = v9;
  v10 = sub_264785A34();
  v11 = *(v10 - 8);
  v18 = *(v11 + 56);
  v19 = v11 + 56;
  v18(v3, 1, 1, v10);
  v17[2] = sub_264783E84();
  v17[1] = sub_2646B66B0();
  sub_264783F04();
  sub_26460CD50(v3, &qword_27FF773E8, &qword_26478CF78);

  swift_allocObject();
  swift_weakInit();
  v17[0] = sub_26460CDF0(&qword_27FF77400, &qword_27FF773F0, &unk_26478CF80);
  sub_264783F14();

  v12 = *(v20 + 8);
  v20 += 8;
  v12(v7, v4);
  swift_beginAccess();
  sub_264783E34();
  swift_endAccess();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v13 = v21;
  type metadata accessor for SafetyCacheViewModel();
  sub_2646B6550(&qword_27FF756E8, type metadata accessor for SafetyCacheViewModel);
  v14 = sub_264783E64();

  v21 = v14;
  v15 = sub_264785A44();
  v22 = v15;
  v18(v3, 1, 1, v10);
  sub_264783F04();
  sub_26460CD50(v3, &qword_27FF773E8, &qword_26478CF78);

  swift_allocObject();
  swift_weakInit();
  sub_264783F14();

  v12(v7, v4);
  swift_beginAccess();
  sub_264783E34();
  swift_endAccess();
}

uint64_t sub_2646AC650()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2646AC848();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for TranscriptViewModel();
    sub_2646B6550(&qword_27FF75410, type metadata accessor for TranscriptViewModel);
    sub_264783E64();

    sub_264783E74();
  }

  return result;
}

uint64_t sub_2646AC734()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2646AC848();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2646AF184();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for TranscriptViewModel();
    sub_2646B6550(&qword_27FF75410, type metadata accessor for TranscriptViewModel);
    sub_264783E64();

    sub_264783E74();
  }

  return result;
}

uint64_t sub_2646AC848()
{
  v1 = sub_264785594();
  v13 = *(v1 - 8);
  v2 = *(v13 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2647855C4();
  v5 = *(v12 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v12);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v9 = sub_264785A44();
  aBlock[4] = sub_2646B669C;
  v15 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_109;
  v10 = _Block_copy(aBlock);

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2646B6550(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v8, v4, v10);
  _Block_release(v10);

  (*(v13 + 8))(v4, v1);
  return (*(v5 + 8))(v8, v12);
}

uint64_t sub_2646ACB28()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = [swift_getObjCClassFromObject() messageType];
  if (v8 == 3)
  {
    sub_2646ADA7C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v37 = *v39;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v36 = *v39;
    v21 = *(v1 + 48);
    v22 = sub_2646B395C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v23 = 256;
    if ((v22 & 1) == 0)
    {
      v23 = 0;
    }

    v24 = v23 | v21;
    v25 = 0x10000;
    if (!v39[0])
    {
      v25 = 0;
    }

    v26 = v24 | v25;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v39[16] = v36;
    *v39 = v37;
    *&v39[32] = v26;
    v40 = 0;
    v15 = 96;
    goto LABEL_17;
  }

  if (v8 == 2)
  {
    sub_2646AD1C8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v16 = *v39;
    v17 = *(v1 + 48);
    v18 = sub_2646B395C();
    v19 = 256;
    if ((v18 & 1) == 0)
    {
      v19 = 0;
    }

    v20 = v19 | v17;
    swift_getKeyPath();
    swift_getKeyPath();
    *v39 = v16;
    *&v39[16] = v20;
    *&v39[32] = 0;
    v40 = 0;
    v15 = 0x80;
    goto LABEL_17;
  }

  if (v8 == 1)
  {
    sub_2646AE4B8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v37 = *v39;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v36 = *v39;
    v9 = *(v1 + 48);
    v10 = sub_2646B395C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v11 = 0x10000;
    if ((v10 & 1) == 0)
    {
      v11 = 0;
    }

    v12 = v11 | v9;
    v13 = 0x1000000;
    if (!v39[0])
    {
      v13 = 0;
    }

    v14 = v12 | v13;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v39[16] = v36;
    *v39 = v37;
    *&v39[32] = v14;
    v15 = 64;
LABEL_17:
    v42 = v15;
    v41 = 0;
    goto LABEL_24;
  }

  *&v37 = v8;
  if (*(v1 + 48))
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v27 = sub_264783E14();
  v28 = sub_2647859D4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v1;
    *v39 = v30;
    *v29 = 136315650;
    type metadata accessor for TranscriptViewModel();

    v31 = sub_264785764();
    v33 = sub_2646DF234(v31, v32, v39);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264796AC0, v39);
    *(v29 + 22) = 2048;
    *(v29 + 24) = v37;
    _os_log_impl(&dword_264605000, v27, v28, "%s, %s: Unknown message type, %lu", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v30, -1, -1);
    MEMORY[0x266740650](v29, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v34 = *(v1 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  *v39 = v34;
  memset(&v39[8], 0, 32);
  v40 = 0;
  v42 = -96;
  v41 = 0;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  *v39 = 0uLL;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  *v39 = 0uLL;
LABEL_24:

  return sub_264783EE4();
}

void sub_2646AD1C8()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v61 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v61 - v11;
  v13 = *(v1 + 16);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = v13;
    v17 = [v15 sessionEndReason];
    if (v17 <= 3)
    {
      switch(v17)
      {
        case 1:
          v33 = [v15 destinationType];
          v34 = 0;
          if (qword_287614810 == v33 || qword_287614818 == v33)
          {
            v35 = 0;
          }

          else
          {
            v35 = 0;
            if (qword_287614820 != v33)
            {
              v36 = v33;
              swift_getKeyPath();
              swift_getKeyPath();
              sub_264783ED4();

              v37 = v65;
              v34 = _s15SafetyMonitorUI0aB11UIUtilitiesC29fullThoroughfareAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(v65);
              v35 = v38;

              v33 = v36;
            }
          }

          LOBYTE(v65) = *(v1 + 48);
          v48 = _s15SafetyMonitorUI0aB11UIUtilitiesC49formatSafeArrivalTranscriptTextForDestinationType011destinationL07address04userL0SSSo09SMSessionkL0V_SSSgAA04UserL0OtFZ_0(v33, v34, v35, &v65);
          v50 = v49;

          swift_getKeyPath();
          swift_getKeyPath();
          v65 = v48;
          v66 = v50;

          goto LABEL_39;
        case 2:
          goto LABEL_36;
        case 3:
          v20 = [v15 sessionType];
          v21 = *(v1 + 48);
          if ((v20 - 1) <= 3)
          {
LABEL_37:
            LOBYTE(v65) = v21;
            v18 = _s15SafetyMonitorUI0aB11UIUtilitiesC21transcriptEndedString8userTypeSSAA04UserI0O_tFZ_0(&v65);
            goto LABEL_38;
          }

          v22 = v20;
          if (*(v1 + 48))
          {
            sub_264783DE4();
          }

          else
          {
            sub_264783DF4();
          }

          v51 = sub_264783E14();
          v52 = sub_2647859D4();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v64 = v1;
            v65 = v62;
            *v53 = 136315650;
            type metadata accessor for TranscriptViewModel();

            v54 = sub_264785764();
            v56 = sub_2646DF234(v54, v55, &v65);
            v63 = v2;
            v57 = v56;

            *(v53 + 4) = v57;
            *(v53 + 12) = 2080;
            *(v53 + 14) = sub_2646DF234(0xD000000000000013, 0x8000000264796AA0, &v65);
            *(v53 + 22) = 2048;
            *(v53 + 24) = v22;
            _os_log_impl(&dword_264605000, v51, v52, "%s, %s: Undefined session type, %lu", v53, 0x20u);
            v58 = v62;
            swift_arrayDestroy();
            MEMORY[0x266740650](v58, -1, -1);
            MEMORY[0x266740650](v53, -1, -1);

            (*(v3 + 8))(v12, v63);
            goto LABEL_36;
          }

          v46 = *(v3 + 8);
          v47 = v12;
          goto LABEL_35;
      }
    }

    else
    {
      if ((v17 - 4) < 4)
      {
LABEL_36:
        v21 = *(v1 + 48);
        goto LABEL_37;
      }

      if (v17 == 8)
      {
        LOBYTE(v65) = *(v1 + 48);
        v18 = _s15SafetyMonitorUI0aB11UIUtilitiesC28transcriptWorkoutEndedString8userTypeSSAA04UserJ0O_tFZ_0(&v65);
LABEL_38:
        v59 = v18;
        v60 = v19;
        swift_getKeyPath();
        swift_getKeyPath();
        v65 = v59;
        v66 = v60;

LABEL_39:
        sub_264783EE4();
        swift_getKeyPath();
        swift_getKeyPath();
        v65 = 0;
        v66 = 0;

        sub_264783EE4();

        return;
      }
    }

    v62 = v17;
    if (*(v1 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v39 = sub_264783E14();
    v40 = sub_2647859D4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v64 = v1;
      v65 = v42;
      *v41 = 136315650;
      type metadata accessor for TranscriptViewModel();
      v63 = v2;

      v43 = sub_264785764();
      v45 = sub_2646DF234(v43, v44, &v65);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_2646DF234(0xD000000000000013, 0x8000000264796AA0, &v65);
      *(v41 + 22) = 2048;
      *(v41 + 24) = v62;
      _os_log_impl(&dword_264605000, v39, v40, "%s, %s: Undefined session end reason, %lu", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v42, -1, -1);
      MEMORY[0x266740650](v41, -1, -1);

      (*(v3 + 8))(v10, v63);
      goto LABEL_36;
    }

    v46 = *(v3 + 8);
    v47 = v10;
LABEL_35:
    v46(v47, v2);
    goto LABEL_36;
  }

  if (*(v1 + 48))
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v23 = sub_264783E14();
  v24 = sub_2647859D4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v63 = v2;
    v27 = v26;
    v28 = swift_slowAlloc();
    v64 = v1;
    v65 = v28;
    *v25 = 136315650;
    type metadata accessor for TranscriptViewModel();
    v62 = v3;

    v29 = sub_264785764();
    v31 = sub_2646DF234(v29, v30, &v65);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_2646DF234(0xD000000000000013, 0x8000000264796AA0, &v65);
    *(v25 + 22) = 2112;
    *(v25 + 24) = v13;
    *v27 = v13;
    v32 = v13;
    _os_log_impl(&dword_264605000, v23, v24, "%s, %s: Unable to transform SMMessage into SMSessionEndMessage, %@", v25, 0x20u);
    sub_26460CD50(v27, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v27, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v28, -1, -1);
    MEMORY[0x266740650](v25, -1, -1);

    (v62)[1](v7, v63);
  }

  else
  {

    (*(v3 + 8))(v7, v2);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v65 = 0;
  v66 = 0;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v65 = 0;
  v66 = 0;

  sub_264783EE4();
}

void sub_2646ADA7C()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v69 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v69 - v11;
  v13 = *(v1 + 16);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = v13;
    v17 = [v15 triggerType];
    if (*(v1 + 48) == 1)
    {
      v72 = v10;
      v73 = v3;
      v18 = v16;
      v19 = v2;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v20 = v75;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v21 = v75;
      if (v75 && (v22 = [v75 lowPowerModeWarningState], v21, v22))
      {
        v23 = v22 == 2;
      }

      else
      {
        v23 = [v15 lowPowerModeWarningState] == 2;
      }

      v24 = v23;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v75) = v24;

      sub_264783EE4();
      v2 = v19;
      v16 = v18;
      v10 = v72;
      v3 = v73;
    }

    if (v17 <= 0x15)
    {
      if (((1 << v17) & 0x3903BF) != 0)
      {
        goto LABEL_15;
      }

      if (((1 << v17) & 0x7C00) != 0)
      {
LABEL_20:
        LOBYTE(v75) = *(v1 + 48);
        v28 = _s15SafetyMonitorUI0aB11UIUtilitiesC33transcriptSOSTriggerPrimaryString8userTypeSSAA04UserJ0O_tFZ_0(&v75);
        v30 = v29;
        swift_getKeyPath();
        swift_getKeyPath();
        v75 = v28;
        v76 = v30;

        sub_264783EE4();
        swift_getKeyPath();
        swift_getKeyPath();
        v75 = 0;
        v76 = 0;

LABEL_34:
        sub_264783EE4();

        return;
      }

      if (v17 == 15)
      {
        LOBYTE(v75) = *(v1 + 48);
        v26 = _s15SafetyMonitorUI0aB11UIUtilitiesC30transcriptOfflinePrimaryString8userTypeSSAA04UserJ0O_tFZ_0(&v75);
        goto LABEL_32;
      }
    }

    if (*(v1 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v56 = sub_264783E14();
    v57 = sub_2647859D4();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v72 = v10;
      v59 = v58;
      v73 = swift_slowAlloc();
      v74 = v1;
      v75 = v73;
      *v59 = 136315650;
      type metadata accessor for TranscriptViewModel();
      LODWORD(v71) = v57;

      v60 = sub_264785764();
      v62 = sub_2646DF234(v60, v61, &v75);
      v70 = v56;
      v63 = v16;
      v64 = v2;
      v65 = v62;

      *(v59 + 4) = v65;
      v2 = v64;
      v16 = v63;
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264796A80, &v75);
      *(v59 + 22) = 2048;
      *(v59 + 24) = v17;
      v66 = v70;
      _os_log_impl(&dword_264605000, v70, v71, "%s, %s: Undefined trigger type, %lu", v59, 0x20u);
      v67 = v73;
      swift_arrayDestroy();
      MEMORY[0x266740650](v67, -1, -1);
      v68 = v59;
      v10 = v72;
      MEMORY[0x266740650](v68, -1, -1);
    }

    else
    {
    }

    (v3)[1](v12, v2);
    if (![v15 isSOSTrigger])
    {
LABEL_15:
      v25 = [v15 sessionType];
      if ((v25 - 2) < 2)
      {
        LOBYTE(v75) = *(v1 + 48);
        v26 = _s15SafetyMonitorUI0aB11UIUtilitiesC38transcriptDestinationTypePrimaryString04userG0SSAA04UserG0O_tFZ_0(&v75);
      }

      else if (v25 == 1)
      {
        LOBYTE(v75) = *(v1 + 48);
        v26 = _s15SafetyMonitorUI0aB11UIUtilitiesC35transcriptDurationTypePrimaryString04userG0SSAA04UserG0O_tFZ_0(&v75);
      }

      else
      {
        if (v25 != 4)
        {
          v42 = v25;
          if (*(v1 + 48))
          {
            sub_264783DE4();
          }

          else
          {
            sub_264783DF4();
          }

          v48 = sub_264783E14();
          v49 = sub_2647859D4();

          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v71 = v2;
            v52 = v51;
            v74 = v1;
            v75 = v51;
            *v50 = 136315650;
            type metadata accessor for TranscriptViewModel();
            v72 = v10;

            v53 = sub_264785764();
            v55 = sub_2646DF234(v53, v54, &v75);

            *(v50 + 4) = v55;
            *(v50 + 12) = 2080;
            *(v50 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264796A80, &v75);
            *(v50 + 22) = 2048;
            *(v50 + 24) = v42;
            _os_log_impl(&dword_264605000, v48, v49, "%s, %s: Undefined session type, %lu", v50, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x266740650](v52, -1, -1);
            MEMORY[0x266740650](v50, -1, -1);

            (v3)[1](v72, v71);
          }

          else
          {

            (v3)[1](v10, v2);
          }

          swift_getKeyPath();
          swift_getKeyPath();
          v75 = 0;
          v76 = 0;

          goto LABEL_33;
        }

        LOBYTE(v75) = *(v1 + 48);
        v26 = _s15SafetyMonitorUI0aB11UIUtilitiesC34transcriptWorkoutTypePrimaryString04userG0SSAA04UserG0O_tFZ_0(&v75);
      }

LABEL_32:
      v43 = v26;
      v44 = v27;
      swift_getKeyPath();
      swift_getKeyPath();
      v75 = v43;
      v76 = v44;

LABEL_33:
      sub_264783EE4();
      LOBYTE(v75) = *(v1 + 48);
      v45 = _s15SafetyMonitorUI0aB11UIUtilitiesC37transcriptCacheReleaseSecondaryString8userTypeSSAA04UserK0O_tFZ_0(&v75);
      v47 = v46;
      swift_getKeyPath();
      swift_getKeyPath();
      v75 = v45;
      v76 = v47;

      goto LABEL_34;
    }

    goto LABEL_20;
  }

  if (*(v1 + 48))
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v31 = sub_264783E14();
  v32 = sub_2647859D4();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v73 = v3;
    v34 = v33;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v71 = v2;
    v37 = v36;
    v74 = v1;
    v75 = v36;
    *v34 = 136315650;
    type metadata accessor for TranscriptViewModel();

    v38 = sub_264785764();
    v40 = sub_2646DF234(v38, v39, &v75);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264796A80, &v75);
    *(v34 + 22) = 2112;
    *(v34 + 24) = v13;
    *v35 = v13;
    v41 = v13;
    _os_log_impl(&dword_264605000, v31, v32, "%s, %s: Unable to transform SMMessage into SMKeyReleaseMessage, %@", v34, 0x20u);
    sub_26460CD50(v35, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v35, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v37, -1, -1);
    MEMORY[0x266740650](v34, -1, -1);

    (v73)[1](v7, v71);
  }

  else
  {

    (v3)[1](v7, v2);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v75 = 0;
  v76 = 0;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v75 = 0;
  v76 = 0;

  sub_264783EE4();
}

void sub_2646AE4B8()
{
  v1 = v0;
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264785704();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264783E24();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v90 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v90 - v19;
  v21 = *(v1 + 16);
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {
    if (*(v1 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v44 = sub_264783E14();
    v45 = sub_2647859D4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v93 = v11;
      v48 = v47;
      v49 = swift_slowAlloc();
      v94 = v1;
      v95 = v49;
      *v46 = 136315650;
      type metadata accessor for TranscriptViewModel();
      v92 = v10;

      v50 = sub_264785764();
      v52 = sub_2646DF234(v50, v51, &v95);

      *(v46 + 4) = v52;
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264796A00, &v95);
      *(v46 + 22) = 2112;
      *(v46 + 24) = v21;
      *v48 = v21;
      v53 = v21;
      _os_log_impl(&dword_264605000, v44, v45, "%s, %s: Unable to transform SMMessage into SMSessionStartMessage, %@", v46, 0x20u);
      sub_26460CD50(v48, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v48, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v49, -1, -1);
      MEMORY[0x266740650](v46, -1, -1);

      (*(v93 + 8))(v15, v92);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v95 = 0;
    v96 = 0;

    sub_264783EE4();
    swift_getKeyPath();
    swift_getKeyPath();
    v95 = 0;
    v96 = 0;

    sub_264783EE4();
    return;
  }

  v23 = v22;
  v93 = v11;
  v24 = v21;
  v25 = [v23 sessionType];
  v26 = [v23 destinationType];
  if (*(v1 + 48) == 1)
  {
    v91 = v26;
    v92 = v9;
    v90 = v5;
    v27 = v24;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v28 = v95;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v29 = v95;
    if (v95 && (v30 = [v95 lowPowerModeWarningState], v29, v30))
    {
      v31 = v30 == 2;
    }

    else
    {
      v31 = [v23 lowPowerModeWarningState] == 2;
    }

    v32 = v31;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v95) = v32;

    sub_264783EE4();
    v24 = v27;
    v26 = v91;
    v9 = v92;
  }

  if ((v25 - 2) < 2)
  {
    if ((v26 - 1) >= 3)
    {
      if (v26 != 4)
      {
        v56 = v26;
        if (*(v1 + 48))
        {
          sub_264783DE4();
        }

        else
        {
          sub_264783DF4();
        }

        v70 = sub_264783E14();
        v71 = sub_2647859D4();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v94 = v1;
          v95 = v90;
          *v72 = 136315650;
          type metadata accessor for TranscriptViewModel();
          v91 = v56;

          v73 = sub_264785764();
          v75 = sub_2646DF234(v73, v74, &v95);
          v92 = v9;
          v76 = v10;
          v77 = v75;

          *(v72 + 4) = v77;
          *(v72 + 12) = 2080;
          *(v72 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264796A00, &v95);
          *(v72 + 22) = 2048;
          *(v72 + 24) = v91;
          _os_log_impl(&dword_264605000, v70, v71, "%s, %s: Undefined destination type, %lu", v72, 0x20u);
          v78 = v90;
          swift_arrayDestroy();
          MEMORY[0x266740650](v78, -1, -1);
          MEMORY[0x266740650](v72, -1, -1);

          (*(v93 + 8))(v20, v76);
        }

        else
        {

          (*(v93 + 8))(v20, v10);
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v79 = v95;
      v80 = _s15SafetyMonitorUI0aB11UIUtilitiesC29fullThoroughfareAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(v95);
      v82 = v81;

      if (v82)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v95 = v80;
        v96 = v82;

LABEL_44:
        sub_264783EE4();
        goto LABEL_45;
      }
    }

    else
    {
      v36 = v26;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v37 = v95;
      v38 = _s15SafetyMonitorUI0aB11UIUtilitiesC17cityAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(v95);
      v40 = v39;

      if (v40)
      {
        LOBYTE(v95) = *(v1 + 48);

        v41 = _s15SafetyMonitorUI0aB11UIUtilitiesC31formatAddressForDestinationType011destinationI07address04userI0SSSo09SMSessionhI0V_SSAA04UserI0OtFZ_0(v36, v38, v40, &v95);
        v43 = v42;

        swift_getKeyPath();
        swift_getKeyPath();
        v95 = v41;
        v96 = v43;

        sub_264783EE4();

LABEL_45:
        v87 = sub_2646B1D04();
        v89 = v88;
        swift_getKeyPath();
        swift_getKeyPath();
        v95 = v87;
        v96 = v89;

        goto LABEL_46;
      }
    }

    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v84 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v54 = sub_264785754();
LABEL_43:
    v85 = v54;
    v86 = v55;
    swift_getKeyPath();
    swift_getKeyPath();
    v95 = v85;
    v96 = v86;

    goto LABEL_44;
  }

  if (v25 == 1)
  {
    LOBYTE(v95) = *(v1 + 48);
    v54 = _s15SafetyMonitorUI0aB11UIUtilitiesC11timerString8userTypeSSAA04UserH0O_tFZ_0(&v95);
    goto LABEL_43;
  }

  if (v25 == 4)
  {
    LOBYTE(v95) = *(v1 + 48);
    started = _s15SafetyMonitorUI0aB11UIUtilitiesC28transcriptWorkoutStartString8userTypeSSAA04UserJ0O_tFZ_0(&v95);
    v35 = v34;
    swift_getKeyPath();
    swift_getKeyPath();
    v95 = started;
    v96 = v35;

    sub_264783EE4();
    swift_getKeyPath();
    swift_getKeyPath();
    v95 = 0;
    v96 = 0;

LABEL_46:
    sub_264783EE4();

    return;
  }

  if (*(v1 + 48))
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v57 = sub_264783E14();
  v58 = sub_2647859D4();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v92 = v24;
    v61 = v60;
    v94 = v1;
    v95 = v60;
    *v59 = 136315650;
    type metadata accessor for TranscriptViewModel();

    v62 = sub_264785764();
    v64 = v10;
    v65 = sub_2646DF234(v62, v63, &v95);

    *(v59 + 4) = v65;
    *(v59 + 12) = 2080;
    *(v59 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264796A00, &v95);
    *(v59 + 22) = 2048;
    *(v59 + 24) = v25;
    _os_log_impl(&dword_264605000, v57, v58, "%s, %s: Undefined message session type, %lu", v59, 0x20u);
    swift_arrayDestroy();
    v66 = v61;
    v24 = v92;
    MEMORY[0x266740650](v66, -1, -1);
    MEMORY[0x266740650](v59, -1, -1);

    (*(v93 + 8))(v18, v64);
  }

  else
  {

    (*(v93 + 8))(v18, v10);
  }

  LOBYTE(v95) = *(v1 + 48);
  v67 = _s15SafetyMonitorUI0aB11UIUtilitiesC23transcriptStartedString8userTypeSSAA04UserI0O_tFZ_0(&v95);
  v69 = v68;
  swift_getKeyPath();
  swift_getKeyPath();
  v95 = v67;
  v96 = v69;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v95 = 0;
  v96 = 0;

  sub_264783EE4();

  *(v1 + 32) = 1;
}

void sub_2646AF184()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v202 = v1;
  v203 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v199 = &v188 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v201 = &v188 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v198 = &v188 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v197 = &v188 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v188 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v188 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v188 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v188 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v188 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v188 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v188 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v188 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v188 - v36;
  v200 = *(v0 + 16);
  v38 = [swift_getObjCClassFromObject() messageType];
  if ((v38 - 6) < 0xF)
  {
LABEL_2:
    v39 = v0;
    v40 = v201;
    if (*(v0 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v41 = sub_264783E14();
    v42 = sub_2647859D4();

    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_8;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v204 = v39;
    v205 = v45;
    *v43 = 136315650;
    type metadata accessor for TranscriptViewModel();

    v46 = sub_264785764();
    v48 = sub_2646DF234(v46, v47, &v205);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v205);
    *(v43 + 22) = 2112;
    v49 = v200;
    *(v43 + 24) = v200;
    *v44 = v49;
    v50 = v49;
    _os_log_impl(&dword_264605000, v41, v42, "%s, %s: Unable resolve map item for this type of message, %@", v43, 0x20u);
    sub_26460CD50(v44, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v44, -1, -1);
LABEL_7:
    swift_arrayDestroy();
    MEMORY[0x266740650](v45, -1, -1);
    MEMORY[0x266740650](v43, -1, -1);
LABEL_8:

LABEL_9:
    (*(v203 + 8))(v40, v202);
    return;
  }

  v191 = v35;
  v192 = v26;
  v193 = v37;
  v194 = v32;
  v52 = v197;
  v51 = v198;
  v195 = v29;
  v196 = v0;
  v189 = v20;
  v190 = v17;
  if (v38 <= 1)
  {
    v0 = v196;
    if (!v38)
    {
      goto LABEL_2;
    }

    if (v38 == 1)
    {
      objc_opt_self();
      v53 = v200;
      v54 = swift_dynamicCastObjCClass();
      v55 = v196;
      if (v54)
      {
        v56 = v54;
        v57 = v53;
        v58 = [v56 destinationMapItem];
        if (v58)
        {
          v59 = v58;
          v60 = sub_264783A14();
          v62 = v61;

          if ([v56 sessionType] == 2 || objc_msgSend(v56, sel_sessionType) == 3)
          {
            v63 = v193;
            if (*(v55 + 48))
            {
              sub_264783DE4();
            }

            else
            {
              sub_264783DF4();
            }

            v145 = sub_264783E14();
            v146 = sub_2647859F4();

            if (os_log_type_enabled(v145, v146))
            {
              v147 = swift_slowAlloc();
              v148 = swift_slowAlloc();
              v201 = v57;
              v149 = v148;
              v204 = v55;
              v205 = v148;
              *v147 = 136315394;
              type metadata accessor for TranscriptViewModel();

              v150 = sub_264785764();
              v152 = sub_2646DF234(v150, v151, &v205);

              *(v147 + 4) = v152;
              *(v147 + 12) = 2080;
              *(v147 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v205);
              _os_log_impl(&dword_264605000, v145, v146, "#Transcript, %s, %s: resolving map item for start message", v147, 0x16u);
              swift_arrayDestroy();
              v153 = v149;
              v57 = v201;
              MEMORY[0x266740650](v153, -1, -1);
              MEMORY[0x266740650](v147, -1, -1);
            }

            (*(v203 + 8))(v63, v202);
            sub_2646B09FC(v60, v62);

            sub_264655264(v60, v62);
            return;
          }

          v168 = v60;
          v169 = v62;
          goto LABEL_85;
        }

        v106 = v191;
        if (*(v55 + 48))
        {
          sub_264783DE4();
        }

        else
        {
          sub_264783DF4();
        }

        v161 = sub_264783E14();
        v162 = sub_2647859B4();

        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          v204 = v55;
          v205 = v164;
          *v163 = 136315394;
          type metadata accessor for TranscriptViewModel();

          v165 = sub_264785764();
          v167 = sub_2646DF234(v165, v166, &v205);

          *(v163 + 4) = v167;
          *(v163 + 12) = 2080;
          *(v163 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v205);
          _os_log_impl(&dword_264605000, v161, v162, "%s, %s: Destination map item is not available in the SMStartMessage", v163, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v164, -1, -1);
          MEMORY[0x266740650](v163, -1, -1);
        }

        (*(v203 + 8))(v106, v202);
      }

      else
      {
        v95 = v194;
        if (*(v196 + 48))
        {
          sub_264783DE4();
        }

        else
        {
          sub_264783DF4();
        }

        v117 = sub_264783E14();
        v118 = sub_2647859D4();

        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v204 = v55;
          v205 = v121;
          *v119 = 136315650;
          type metadata accessor for TranscriptViewModel();

          v122 = sub_264785764();
          v124 = sub_2646DF234(v122, v123, &v205);

          *(v119 + 4) = v124;
          *(v119 + 12) = 2080;
          *(v119 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v205);
          *(v119 + 22) = 2112;
          v125 = v200;
          *(v119 + 24) = v200;
          *v120 = v125;
          v126 = v125;
          _os_log_impl(&dword_264605000, v117, v118, "%s, %s: Unable to create start message from message, %@", v119, 0x20u);
          sub_26460CD50(v120, &qword_27FF779D0, &qword_26478A9A0);
          MEMORY[0x266740650](v120, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x266740650](v121, -1, -1);
          MEMORY[0x266740650](v119, -1, -1);
        }

        (*(v203 + 8))(v95, v202);
      }

      return;
    }

LABEL_34:
    v87 = v38;
    v88 = v196;
    v40 = v199;
    if (*(v196 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v41 = sub_264783E14();
    v89 = sub_2647859D4();

    if (!os_log_type_enabled(v41, v89))
    {
      goto LABEL_8;
    }

    v43 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v204 = v88;
    v205 = v45;
    *v43 = 136315650;
    type metadata accessor for TranscriptViewModel();

    v90 = sub_264785764();
    v92 = sub_2646DF234(v90, v91, &v205);

    *(v43 + 4) = v92;
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v205);
    *(v43 + 22) = 2048;
    *(v43 + 24) = v87;
    _os_log_impl(&dword_264605000, v41, v89, "%s, %s: Undefined message type, %lu", v43, 0x20u);
    goto LABEL_7;
  }

  if (v38 != 2)
  {
    if (v38 != 3)
    {
      goto LABEL_34;
    }

    objc_opt_self();
    v64 = v200;
    v65 = swift_dynamicCastObjCClass();
    v66 = v196;
    v67 = *(v196 + 48);
    if (!v65)
    {
      v96 = v51;
      if (v67)
      {
        sub_264783DE4();
      }

      else
      {
        sub_264783DF4();
      }

      v127 = sub_264783E14();
      v128 = sub_2647859D4();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = v64;
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v204 = v66;
        v205 = v132;
        *v129 = 136315650;
        type metadata accessor for TranscriptViewModel();

        v133 = sub_264785764();
        v135 = sub_2646DF234(v133, v134, &v205);

        *(v129 + 4) = v135;
        *(v129 + 12) = 2080;
        *(v129 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v205);
        *(v129 + 22) = 2112;
        *(v129 + 24) = v130;
        *v131 = v130;
        v136 = v130;
        _os_log_impl(&dword_264605000, v127, v128, "%s, %s: Unable to create key release message from message, %@", v129, 0x20u);
        sub_26460CD50(v131, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v131, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266740650](v132, -1, -1);
        MEMORY[0x266740650](v129, -1, -1);
      }

      (*(v203 + 8))(v96, v202);
      return;
    }

    v68 = v65;
    v69 = v64;
    if (!v67)
    {
      sub_264783DF4();

      v97 = sub_264783E14();
      v98 = sub_2647859B4();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v204 = v66;
        v205 = v100;
        *v99 = 136315394;
        type metadata accessor for TranscriptViewModel();

        v101 = sub_264785764();
        v103 = sub_2646DF234(v101, v102, &v205);

        *(v99 + 4) = v103;
        *(v99 + 12) = 2080;
        *(v99 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v205);
        _os_log_impl(&dword_264605000, v97, v98, "#Transcript, %s, %s: not attempting to resolve map item for key release message for the initiator", v99, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v100, -1, -1);
        MEMORY[0x266740650](v99, -1, -1);
      }

      (*(v203 + 8))(v52, v202);
      return;
    }

    if ([v68 sessionType] == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v70 = v205;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v71 = v205;
      if (v205)
      {
        v72 = [v205 destinationMapItem];

        if (v72)
        {
          v73 = sub_264783A14();
          v75 = v74;

          v76 = v189;
          if (*(v66 + 48))
          {
            sub_264783DE4();
          }

          else
          {
            sub_264783DF4();
          }

          v181 = sub_264783E14();
          v182 = sub_2647859F4();

          if (os_log_type_enabled(v181, v182))
          {
            v183 = swift_slowAlloc();
            v184 = swift_slowAlloc();
            v204 = v66;
            v205 = v184;
            *v183 = 136315394;
            type metadata accessor for TranscriptViewModel();

            v185 = sub_264785764();
            v187 = sub_2646DF234(v185, v186, &v205);

            *(v183 + 4) = v187;
            *(v183 + 12) = 2080;
            *(v183 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v205);
            _os_log_impl(&dword_264605000, v181, v182, "#Transcript, %s, %s: resolving map item for key release message", v183, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266740650](v184, -1, -1);
            MEMORY[0x266740650](v183, -1, -1);

            (*(v203 + 8))(v189, v202);
          }

          else
          {

            (*(v203 + 8))(v76, v202);
          }

          sub_2646B09FC(v73, v75);
          sub_264655264(v73, v75);

          return;
        }
      }

      v40 = v190;
      if (*(v66 + 48))
      {
        sub_264783DE4();
      }

      else
      {
        sub_264783DF4();
      }

      v170 = sub_264783E14();
      v171 = sub_2647859D4();

      if (!os_log_type_enabled(v170, v171))
      {
LABEL_97:

        goto LABEL_9;
      }

      v172 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v204 = v66;
      v205 = v173;
      *v172 = 136315394;
      type metadata accessor for TranscriptViewModel();

      v178 = sub_264785764();
      v180 = sub_2646DF234(v178, v179, &v205);

      *(v172 + 4) = v180;
      *(v172 + 12) = 2080;
      *(v172 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v205);
      v177 = "#Transcript, %s, %s: no map item to resolve for key release message";
    }

    else
    {
      v40 = v14;
      if (*(v66 + 48))
      {
        sub_264783DE4();
      }

      else
      {
        sub_264783DF4();
      }

      v170 = sub_264783E14();
      v171 = sub_2647859B4();

      if (!os_log_type_enabled(v170, v171))
      {
        goto LABEL_97;
      }

      v172 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v204 = v66;
      v205 = v173;
      *v172 = 136315394;
      type metadata accessor for TranscriptViewModel();

      v174 = sub_264785764();
      v176 = sub_2646DF234(v174, v175, &v205);

      *(v172 + 4) = v176;
      *(v172 + 12) = 2080;
      *(v172 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v205);
      v177 = "#Transcript, %s, %s: not attempting to resolve map item for non-destination session types";
    }

    _os_log_impl(&dword_264605000, v170, v171, v177, v172, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v173, -1, -1);
    MEMORY[0x266740650](v172, -1, -1);
    goto LABEL_97;
  }

  objc_opt_self();
  v77 = v200;
  v78 = swift_dynamicCastObjCClass();
  if (v78)
  {
    v79 = v78;
    v80 = v77;
    v81 = [v79 destinationMapItem];
    if (v81)
    {
      v82 = v81;
      v83 = sub_264783A14();
      v85 = v84;

      if ([v79 sessionType] == 2 || objc_msgSend(v79, sel_sessionType) == 3)
      {
        v86 = v195;
        if (*(v196 + 48))
        {
          sub_264783DE4();
        }

        else
        {
          sub_264783DF4();
        }

        v137 = v196;

        v138 = sub_264783E14();
        v139 = sub_2647859F4();

        if (os_log_type_enabled(v138, v139))
        {
          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v204 = v137;
          v205 = v141;
          *v140 = 136315394;
          type metadata accessor for TranscriptViewModel();

          v142 = sub_264785764();
          v144 = sub_2646DF234(v142, v143, &v205);

          *(v140 + 4) = v144;
          *(v140 + 12) = 2080;
          *(v140 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v205);
          _os_log_impl(&dword_264605000, v138, v139, "#Transcript, %s, %s: resolving map item for end message", v140, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v141, -1, -1);
          MEMORY[0x266740650](v140, -1, -1);

          (*(v203 + 8))(v195, v202);
        }

        else
        {

          (*(v203 + 8))(v86, v202);
        }

        sub_2646B09FC(v83, v85);

        sub_264655264(v83, v85);
        return;
      }

      v168 = v83;
      v169 = v85;
LABEL_85:

      sub_264655264(v168, v169);
      return;
    }

    v104 = v196;
    v105 = v192;
    if (*(v196 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v154 = sub_264783E14();
    v155 = sub_2647859B4();

    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v204 = v104;
      v205 = v157;
      *v156 = 136315394;
      type metadata accessor for TranscriptViewModel();

      v158 = sub_264785764();
      v160 = sub_2646DF234(v158, v159, &v205);

      *(v156 + 4) = v160;
      *(v156 + 12) = 2080;
      *(v156 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v205);
      _os_log_impl(&dword_264605000, v154, v155, "%s, %s: Destination map item is not available in the SMEndMessage", v156, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v157, -1, -1);
      MEMORY[0x266740650](v156, -1, -1);
    }

    (*(v203 + 8))(v105, v202);
  }

  else
  {
    v93 = v196;
    v94 = v23;
    if (*(v196 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v107 = sub_264783E14();
    v108 = sub_2647859D4();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v111 = v77;
      v112 = swift_slowAlloc();
      v204 = v93;
      v205 = v112;
      *v109 = 136315650;
      type metadata accessor for TranscriptViewModel();

      v113 = sub_264785764();
      v115 = sub_2646DF234(v113, v114, &v205);

      *(v109 + 4) = v115;
      *(v109 + 12) = 2080;
      *(v109 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v205);
      *(v109 + 22) = 2112;
      *(v109 + 24) = v111;
      *v110 = v111;
      v116 = v111;
      _os_log_impl(&dword_264605000, v107, v108, "%s, %s: Unable to create end message from message, %@", v109, 0x20u);
      sub_26460CD50(v110, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v110, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v112, -1, -1);
      MEMORY[0x266740650](v109, -1, -1);
    }

    (*(v203 + 8))(v94, v202);
  }
}

void sub_2646B09FC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v66 = a1;
  v67 = a2;
  v61 = sub_264785594();
  v63 = *(v61 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  v70 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2647855C4();
  v69 = *(v71 - 8);
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v68 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2647855A4();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v8);
  v62 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264783E24();
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = *(v72 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = sub_264783B94();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783B84();
  v23 = sub_264783B74();
  v25 = v24;
  (*(v19 + 8))(v22, v18);
  if (qword_27FF75000 != -1)
  {
    swift_once();
  }

  v26 = *(v3 + 16);
  v27 = *(qword_27FF807E0 + 16);
  v28 = [v26 messageID];
  if (!v28)
  {
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = [v27 objectForKey_];

  if (v30)
  {
    v31 = v30[2];
    if (v23 == v30[3] && v25 == v30[4] || (sub_264785E84() & 1) != 0)
    {
      v32 = v31;

      if (*(v3 + 48))
      {
        sub_264783DE4();
      }

      else
      {
        sub_264783DF4();
      }

      v33 = sub_264783E14();
      v34 = sub_2647859F4();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v74 = v3;
        aBlock[0] = v36;
        *v35 = 136315394;
        type metadata accessor for TranscriptViewModel();

        v37 = sub_264785764();
        v39 = sub_2646DF234(v37, v38, aBlock);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264794670, aBlock);
        _os_log_impl(&dword_264605000, v33, v34, "#Transcript, %s, %s: using cached map item", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v36, -1, -1);
        MEMORY[0x266740650](v35, -1, -1);
      }

      (*(v72 + 8))(v17, v73);
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock[0] = v32;
      v40 = v32;

      sub_264783EE4();
      sub_2646AAE18();

      return;
    }
  }

  if (*(v3 + 48))
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v41 = sub_264783E14();
  v42 = sub_2647859F4();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v74 = v3;
    aBlock[0] = v60;
    *v43 = 136315650;
    type metadata accessor for TranscriptViewModel();

    v44 = sub_264785764();
    v46 = sub_2646DF234(v44, v45, aBlock);

    *(v43 + 4) = v46;
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264794670, aBlock);
    *(v43 + 22) = 2080;
    v47 = v23;
    *(v43 + 24) = sub_2646DF234(v23, v25, aBlock);
    _os_log_impl(&dword_264605000, v41, v42, "#Transcript, %s, %s: will attempt to hydrate map item,currentLocaleIdentifier,%s", v43, 0x20u);
    v48 = v60;
    swift_arrayDestroy();
    MEMORY[0x266740650](v48, -1, -1);
    MEMORY[0x266740650](v43, -1, -1);

    (*(v72 + 8))(v15, v73);
    v50 = v66;
    v49 = v67;
    v51 = v65;
  }

  else
  {

    (*(v72 + 8))(v15, v73);
    v50 = v66;
    v49 = v67;
    v51 = v65;
    v47 = v23;
  }

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v52 = v64;
  v53 = v62;
  (*(v64 + 104))(v62, *MEMORY[0x277D851B8], v51);
  v54 = sub_264785A64();
  (*(v52 + 8))(v53, v51);
  v55 = swift_allocObject();
  v55[2] = v50;
  v55[3] = v49;
  v55[4] = v3;
  v55[5] = v47;
  v55[6] = v25;
  aBlock[4] = sub_2646B65E0;
  aBlock[5] = v55;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_8;
  v56 = _Block_copy(aBlock);

  sub_26465944C(v50, v49);
  v57 = v68;
  sub_2647855B4();
  v74 = MEMORY[0x277D84F90];
  sub_2646B6550(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  v58 = v70;
  v59 = v61;
  sub_264785BD4();
  MEMORY[0x26673F780](0, v57, v58, v56);
  _Block_release(v56);

  (*(v63 + 8))(v58, v59);
  (*(v69 + 8))(v57, v71);
}

void sub_2646B137C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_opt_self();
  v9 = sub_264783A04();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v12[4] = sub_2646B6648;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_26464CCBC;
  v12[3] = &block_descriptor_100;
  v11 = _Block_copy(v12);

  [v8 _mapItemFromHandle_completionHandler_];
  _Block_release(v11);
}

void sub_2646B14A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a4;
  v67 = a5;
  v8 = sub_264785594();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v8);
  v62 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2647855C4();
  v61 = *(v63 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264783E24();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v57 - v19;
  if (a2)
  {
    if (*(a3 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v21 = sub_264783E14();
    v22 = sub_2647859D4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      aBlock[0] = v58;
      *v23 = 136315394;
      v69 = a3;
      type metadata accessor for TranscriptViewModel();
      v59 = v18;

      v24 = sub_264785764();
      v26 = v14;
      v27 = v13;
      v28 = sub_2646DF234(v24, v25, aBlock);
      v18 = v59;

      *(v23 + 4) = v28;
      v13 = v27;
      v14 = v26;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264794670, aBlock);
      _os_log_impl(&dword_264605000, v21, v22, "#Transcript, %s, %s: Error resolving map item from map data handle", v23, 0x16u);
      v29 = v58;
      swift_arrayDestroy();
      MEMORY[0x266740650](v29, -1, -1);
      MEMORY[0x266740650](v23, -1, -1);

      v30 = v26;
    }

    else
    {

      v30 = v14;
    }

    (*(v30 + 8))(v20, v13);
  }

  if (a1)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v31 = a1;
    v32 = sub_264785A44();
    v33 = swift_allocObject();
    *(v33 + 16) = a3;
    *(v33 + 24) = a1;
    aBlock[4] = sub_2646B6694;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264659F60;
    aBlock[3] = &block_descriptor_106;
    v34 = _Block_copy(aBlock);

    v35 = v31;

    v36 = v60;
    sub_2647855B4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2646B6550(&qword_27FF75CD8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
    v37 = v62;
    v38 = v65;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v36, v37, v34);
    _Block_release(v34);

    (*(v64 + 8))(v37, v38);
    (*(v61 + 8))(v36, v63);
    type metadata accessor for MessageInfo();
    v39 = swift_allocObject();
    v40 = v66;
    v41 = v67;
    v39[2] = v35;
    v39[3] = v40;
    v39[4] = v41;
    v42 = qword_27FF75000;
    v43 = v35;

    if (v42 != -1)
    {
      swift_once();
    }

    v44 = *(a3 + 16);
    v45 = *(qword_27FF807E0 + 16);
    v46 = [v44 messageID];
    if (v46)
    {
      v47 = v46;
      [v45 setObject:v39 forKey:v46];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (*(a3 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v48 = sub_264783E14();
    v49 = sub_2647859D4();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = v18;
      v53 = swift_slowAlloc();
      aBlock[0] = v53;
      *v50 = 136315650;
      v69 = a3;
      type metadata accessor for TranscriptViewModel();

      v54 = sub_264785764();
      v56 = sub_2646DF234(v54, v55, aBlock);

      *(v50 + 4) = v56;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264794670, aBlock);
      *(v50 + 22) = 2112;
      *(v50 + 24) = 0;
      *v51 = 0;
      _os_log_impl(&dword_264605000, v48, v49, "#Transcript, %s, %s: Hydrated map item in invalid,map item,%@", v50, 0x20u);
      sub_26460CD50(v51, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v51, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v53, -1, -1);
      MEMORY[0x266740650](v50, -1, -1);

      (*(v14 + 8))(v52, v13);
    }

    else
    {

      (*(v14 + 8))(v18, v13);
    }
  }
}

uint64_t sub_2646B1C88(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a2;

  sub_264783EE4();
  return sub_2646AAE18();
}

uint64_t sub_2646B1D04()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v231 = v2;
  v232 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v227 = &v206 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v224 = &v206 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v219 = &v206 - v13;
  MEMORY[0x28223BE20](v12);
  v215 = &v206 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v206 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v220 = &v206 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v206 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v228 = &v206 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v225 = &v206 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v214 = &v206 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v218 = &v206 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v211 = &v206 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v212 = &v206 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v206 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v206 - v40;
  v42 = sub_264783AF4();
  v43 = *(v42 - 8);
  v229 = v42;
  v230 = v43;
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v222 = &v206 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v221 = &v206 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v206 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v213 = &v206 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v206 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v206 - v58;
  v60 = MEMORY[0x28223BE20](v57);
  v223 = &v206 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v217 = &v206 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v210 = &v206 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v216 = &v206 - v67;
  MEMORY[0x28223BE20](v66);
  v226 = &v206 - v68;
  v69 = *(v1 + 16);
  objc_opt_self();
  v70 = swift_dynamicCastObjCClass();
  if (!v70)
  {
    if (*(v1 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v87 = sub_264783E14();
    v88 = sub_2647859D4();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v233[0] = v91;
      *v89 = 136315650;
      v234[0] = v1;
      type metadata accessor for TranscriptViewModel();

      v92 = sub_264785764();
      v94 = sub_2646DF234(v92, v93, v233);

      *(v89 + 4) = v94;
      *(v89 + 12) = 2080;
      *(v89 + 14) = sub_2646DF234(0x6E69727453617465, 0xEB00000000292867, v233);
      *(v89 + 22) = 2112;
      *(v89 + 24) = v69;
      *v90 = v69;
      v95 = v69;
      _os_log_impl(&dword_264605000, v87, v88, "%s, %s: Unable to create start message from message, %@", v89, 0x20u);
      sub_26460CD50(v90, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v90, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v91, -1, -1);
      MEMORY[0x266740650](v89, -1, -1);
    }

    (*(v232 + 8))(v7, v231);
    return 0;
  }

  v207 = v19;
  v71 = v70;
  v72 = v69;
  v209 = v71;
  v73 = [v71 sessionType];
  if ((*(v1 + 48) & 1) == 0)
  {
    v81 = v73;
    v228 = v1;
    v82 = v226;
    sub_264783AE4();
    if ((v81 - 2) < 2)
    {
      v219 = v72;
      swift_getKeyPath();
      swift_getKeyPath();
      v97 = v228;
      sub_264783ED4();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v98 = v233[0];
      v99 = v229;
      if (v233[0])
      {
        v100 = [v233[0] estimatedEndDate];

        if (v100)
        {
          sub_264783AC4();

          v101 = 0;
        }

        else
        {
          v101 = 1;
        }

        v169 = v230;
        v153 = *(v230 + 56);
        v153(v39, v101, 1, v99);
        sub_26460CF84(v39, v41);
        v170 = v99;
        v171 = *(v169 + 48);
        if (v171(v41, 1, v99) != 1)
        {
          v179 = *(v169 + 32);
          v179(v216, v41, v170);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_264783ED4();

          swift_getKeyPath();
          swift_getKeyPath();
          sub_264783ED4();

          v180 = v233[0];
          if (v233[0])
          {
            v181 = [v233[0] coarseEstimatedEndDate];

            v227 = v179;
            if (v181)
            {
              v182 = v211;
              sub_264783AC4();

              v183 = 0;
              v184 = v212;
            }

            else
            {
              v183 = 1;
              v184 = v212;
              v182 = v211;
            }

            v99 = v229;
            v153(v182, v183, 1, v229);
            sub_26460CF84(v182, v184);
            if (v171(v184, 1, v99) != 1)
            {
              v116 = v230;
              (*(v230 + 8))(v216, v99);
              v191 = v210;
              (v227)(v210, v184, v99);
              v120 = v191;
              v97 = v228;
              v82 = v226;
              goto LABEL_83;
            }
          }

          else
          {
            v184 = v212;
            v153(v212, 1, 1, v170);
            v99 = v170;
          }

          sub_26460CD50(v184, &qword_27FF756B8, &qword_26478AC90);
          v116 = v230;
          v97 = v228;
          v82 = v226;
          v147 = v224;
          v120 = v216;
LABEL_84:
          (*(v116 + 40))(v82, v120, v99);
          v96 = _s15SafetyMonitorUI0aB11UIUtilitiesC10presentETA3forSS10Foundation4DateV_tFZ_0();
          v193 = v192;
          if (v97[48])
          {
            sub_264783DE4();
          }

          else
          {
            sub_264783DF4();
          }

          v194 = sub_264783E14();
          v195 = sub_2647859F4();

          if (os_log_type_enabled(v194, v195))
          {
            v196 = swift_slowAlloc();
            v230 = swift_slowAlloc();
            v234[0] = v230;
            *v196 = 136315906;
            v233[0] = v97;
            type metadata accessor for TranscriptViewModel();

            v197 = sub_264785764();
            v199 = v116;
            v200 = sub_2646DF234(v197, v198, v234);

            *(v196 + 4) = v200;
            *(v196 + 12) = 2080;
            *(v196 + 14) = sub_2646DF234(0x6E69727453617465, 0xEB00000000292867, v234);
            *(v196 + 22) = 2080;
            swift_beginAccess();
            sub_2646B6550(&qword_27FF773E0, MEMORY[0x277CC9578]);
            v201 = sub_264785E44();
            v203 = sub_2646DF234(v201, v202, v234);

            *(v196 + 24) = v203;
            *(v196 + 32) = 2080;
            *(v196 + 34) = sub_2646DF234(v96, v193, v234);
            _os_log_impl(&dword_264605000, v194, v195, "%s, %s: originator, eta: %s, etaString: %s", v196, 0x2Au);
            v204 = v230;
            swift_arrayDestroy();
            MEMORY[0x266740650](v204, -1, -1);
            MEMORY[0x266740650](v196, -1, -1);

            (*(v232 + 8))(v224, v231);
            (*(v199 + 8))(v82, v99);
          }

          else
          {

            (*(v232 + 8))(v147, v231);
            (*(v116 + 8))(v82, v99);
          }

          return v96;
        }

        v116 = v169;
        v97 = v228;
        v82 = v226;
      }

      else
      {
        v116 = v230;
        v153 = *(v230 + 56);
        v153(v41, 1, 1, v229);
      }

      v147 = v224;
      sub_26460CD50(v41, &qword_27FF756B8, &qword_26478AC90);
      v172 = v209;
      v173 = [v209 coarseEstimatedEndTime];
      if (v173)
      {
        v174 = v223;
        v175 = v173;
        sub_264783AC4();

        v176 = *(v116 + 32);
        v177 = v218;
        v176(v218, v174, v99);
        v153(v177, 0, 1, v99);
        v178 = v217;
        v176(v217, v177, v99);
      }

      else
      {
        v185 = v218;
        v153(v218, 1, 1, v99);
        v186 = [v172 estimatedEndTime];
        v178 = v217;
        sub_264783AC4();

        if ((*(v116 + 48))(v185, 1, v99) != 1)
        {
          v187 = v185;
LABEL_76:
          sub_26460CD50(v187, &qword_27FF756B8, &qword_26478AC90);
        }
      }
    }

    else
    {
      if (v81 != 1)
      {
        v83 = v230;
        if (v81 == 4)
        {
          v84 = v228;
          v85 = v72;
          v86 = v215;
          if (v228[48])
          {
            sub_264783DE4();
          }

          else
          {
            sub_264783DF4();
          }

          v154 = sub_264783E14();
          v155 = sub_2647859D4();

          if (os_log_type_enabled(v154, v155))
          {
            v156 = swift_slowAlloc();
            v157 = swift_slowAlloc();
            v233[0] = v157;
            *v156 = 136315394;
            v234[0] = v84;
            type metadata accessor for TranscriptViewModel();

            v158 = sub_264785764();
            v160 = sub_2646DF234(v158, v159, v233);

            *(v156 + 4) = v160;
            *(v156 + 12) = 2080;
            *(v156 + 14) = sub_2646DF234(0x6E69727453617465, 0xEB00000000292867, v233);
            _os_log_impl(&dword_264605000, v154, v155, "%s, %s: Workout bound session does not support eta", v156, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266740650](v157, -1, -1);
            MEMORY[0x266740650](v156, -1, -1);
          }

          (*(v232 + 8))(v86, v231);
          (*(v83 + 8))(v82, v229);
        }

        else
        {
          v121 = v72;
          v122 = v219;
          if (v228[48])
          {
            sub_264783DE4();
          }

          else
          {
            sub_264783DF4();
          }

          v161 = v228;

          v162 = sub_264783E14();
          v163 = sub_2647859D4();

          if (os_log_type_enabled(v162, v163))
          {
            v164 = swift_slowAlloc();
            v165 = swift_slowAlloc();
            v233[0] = v165;
            *v164 = 136315650;
            v234[0] = v161;
            type metadata accessor for TranscriptViewModel();

            v166 = sub_264785764();
            v168 = sub_2646DF234(v166, v167, v233);

            *(v164 + 4) = v168;
            *(v164 + 12) = 2080;
            *(v164 + 14) = sub_2646DF234(0x6E69727453617465, 0xEB00000000292867, v233);
            *(v164 + 22) = 2048;
            *(v164 + 24) = v81;
            _os_log_impl(&dword_264605000, v162, v163, "%s, %s: Undefined session type, %lu", v164, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x266740650](v165, -1, -1);
            MEMORY[0x266740650](v164, -1, -1);

            (*(v232 + 8))(v219, v231);
          }

          else
          {

            (*(v232 + 8))(v122, v231);
          }

          (*(v83 + 8))(v82, v229);
        }

        return 0;
      }

      v219 = v72;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v115 = v233[0];
      v116 = v230;
      if (v233[0])
      {
        v117 = [v233[0] configuration];

        if (v117)
        {
          v118 = [v117 time];

          if (v118)
          {
            v119 = [v118 timeBound];

            sub_264783AC4();
            v99 = v229;
            (*(v116 + 32))(v59, v56, v229);
            v120 = v59;
            v97 = v228;
LABEL_83:
            v147 = v224;
            goto LABEL_84;
          }
        }
      }

      v145 = v209;
      v146 = [v209 coarseEstimatedEndTime];
      v147 = v224;
      if (v146)
      {
        v148 = v223;
        v149 = v146;
        sub_264783AC4();

        v150 = *(v116 + 32);
        v151 = v214;
        v99 = v229;
        v150(v214, v148, v229);
        (*(v116 + 56))(v151, 0, 1, v99);
        v152 = v213;
        v150(v213, v151, v99);
        v120 = v152;
        v97 = v228;
        goto LABEL_84;
      }

      v188 = v214;
      v99 = v229;
      (*(v116 + 56))(v214, 1, 1, v229);
      v189 = [v145 estimatedEndTime];
      v178 = v213;
      sub_264783AC4();

      v190 = (*(v116 + 48))(v188, 1, v99);
      v97 = v228;
      if (v190 != 1)
      {
        v187 = v188;
        goto LABEL_76;
      }
    }

    v120 = v178;
    goto LABEL_84;
  }

  v219 = v72;
  sub_264783AE4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v74 = v233[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v75 = v233[0];
  v208 = v51;
  if (!v233[0])
  {
    v102 = v229;
    v77 = v230;
    v103 = *(v230 + 56);
    v103(v228, 1, 1, v229);
    v104 = v227;
    v79 = v225;
    goto LABEL_25;
  }

  v76 = [v233[0] coarseEstimatedEndDate];

  v77 = v230;
  v78 = v227;
  v79 = v225;
  if (v76)
  {
    sub_264783AC4();

    v80 = 0;
  }

  else
  {
    v80 = 1;
  }

  v103 = *(v77 + 56);
  v105 = v229;
  v103(v24, v80, 1, v229);
  v106 = v24;
  v102 = v105;
  v107 = v228;
  sub_26460CF84(v106, v228);
  v108 = *(v77 + 48);
  if (v108(v107, 1, v102) == 1)
  {
    v104 = v78;
    v51 = v208;
LABEL_25:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v109 = v233[0];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v110 = v233[0];
    if (v233[0])
    {
      v111 = [v233[0] estimatedEndDate];

      if (v111)
      {
        v112 = v220;
        sub_264783AC4();

        v113 = 0;
        v114 = v228;
      }

      else
      {
        v113 = 1;
        v114 = v228;
        v112 = v220;
      }

      v103(v112, v113, 1, v102);
      sub_26460CF84(v112, v79);
    }

    else
    {
      v103(v79, 1, 1, v102);
      v114 = v228;
    }

    v108 = *(v77 + 48);
    if (v108(v114, 1, v102) != 1)
    {
      sub_26460CD50(v114, &qword_27FF756B8, &qword_26478AC90);
    }

    goto LABEL_40;
  }

  (*(v77 + 32))(v79, v107, v102);
  v103(v79, 0, 1, v102);
  v104 = v78;
  v51 = v208;
LABEL_40:
  if (v108(v79, 1, v102) == 1)
  {
    sub_26460CD50(v79, &qword_27FF756B8, &qword_26478AC90);
    v123 = v209;
    v124 = [v209 coarseEstimatedEndTime];
    if (v124)
    {
      v125 = v223;
      v126 = v124;
      sub_264783AC4();

      v127 = *(v77 + 32);
      v128 = v207;
      v127(v207, v125, v102);
      v103(v128, 0, 1, v102);
      v129 = v222;
      v127(v222, v128, v102);
    }

    else
    {
      v143 = v207;
      v103(v207, 1, 1, v102);
      v144 = [v123 estimatedEndTime];
      v129 = v222;
      sub_264783AC4();

      if (v108(v143, 1, v102) != 1)
      {
        sub_26460CD50(v143, &qword_27FF756B8, &qword_26478AC90);
      }
    }
  }

  else
  {
    v129 = v221;
    (*(v77 + 32))(v221, v79, v102);
  }

  (*(v77 + 40))(v51, v129, v102);
  v96 = _s15SafetyMonitorUI0aB11UIUtilitiesC10presentETA3forSS10Foundation4DateV_tFZ_0();
  v131 = v130;
  if (*(v1 + 48))
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v132 = sub_264783E14();
  v133 = sub_2647859F4();

  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v234[0] = v135;
    *v134 = 136315906;
    v233[0] = v1;
    type metadata accessor for TranscriptViewModel();

    v136 = sub_264785764();
    v138 = v77;
    v139 = sub_2646DF234(v136, v137, v234);

    *(v134 + 4) = v139;
    *(v134 + 12) = 2080;
    *(v134 + 14) = sub_2646DF234(0x6E69727453617465, 0xEB00000000292867, v234);
    *(v134 + 22) = 2080;
    swift_beginAccess();
    sub_2646B6550(&qword_27FF773E0, MEMORY[0x277CC9578]);
    v140 = sub_264785E44();
    v142 = sub_2646DF234(v140, v141, v234);

    *(v134 + 24) = v142;
    *(v134 + 32) = 2080;
    *(v134 + 34) = sub_2646DF234(v96, v131, v234);
    _os_log_impl(&dword_264605000, v132, v133, "%s, %s: receiver, eta: %s, etaString: %s", v134, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266740650](v135, -1, -1);
    MEMORY[0x266740650](v134, -1, -1);

    (*(v232 + 8))(v227, v231);
    (*(v138 + 8))(v208, v102);
  }

  else
  {

    (*(v232 + 8))(v104, v231);
    (*(v77 + 8))(v51, v102);
  }

  return v96;
}