uint64_t sub_27597FC64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_27597FCCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_27597FD34()
{
  result = qword_280A123A0;
  if (!qword_280A123A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12388, &qword_2759CE8A8);
    sub_27589B02C(&qword_280A123A8, &qword_280A12398, &qword_2759CE8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A123A0);
  }

  return result;
}

unint64_t sub_27597FDEC()
{
  result = qword_280A123B0;
  if (!qword_280A123B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12390, &qword_2759CE8B0);
    sub_27597FE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A123B0);
  }

  return result;
}

unint64_t sub_27597FE78()
{
  result = qword_280A123B8;
  if (!qword_280A123B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A123C0, &qword_2759CE8C0);
    sub_27597FF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A123B8);
  }

  return result;
}

unint64_t sub_27597FF04()
{
  result = qword_280A123C8;
  if (!qword_280A123C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A123D0, &qword_2759CE8C8);
    sub_27597FF90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A123C8);
  }

  return result;
}

unint64_t sub_27597FF90()
{
  result = qword_280A123D8;
  if (!qword_280A123D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A123E0, &qword_2759CE8D0);
    sub_27597FD34();
    sub_27597E8D8(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A123D8);
  }

  return result;
}

unint64_t sub_27598004C()
{
  result = qword_280A123E8;
  if (!qword_280A123E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12378, &qword_2759CE898);
    sub_27597FF90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A123E8);
  }

  return result;
}

unint64_t sub_2759800D8()
{
  result = qword_280A123F0;
  if (!qword_280A123F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12370, &qword_2759CE890);
    sub_275980164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A123F0);
  }

  return result;
}

unint64_t sub_275980164()
{
  result = qword_280A123F8;
  if (!qword_280A123F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12338, &qword_2759CE828);
    sub_27598021C();
    sub_27589B02C(&qword_280A12418, &qword_280A12368, &qword_2759CE888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A123F8);
  }

  return result;
}

unint64_t sub_27598021C()
{
  result = qword_280A12400;
  if (!qword_280A12400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12330, &qword_2759CE820);
    sub_27597E8D8(&qword_280A12408, MEMORY[0x277CDE278]);
    sub_27589B02C(&qword_280A12410, &qword_280A12340, &qword_2759CE830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12400);
  }

  return result;
}

unint64_t sub_275980304()
{
  result = qword_280A12420;
  if (!qword_280A12420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12428, &unk_2759CE8D8);
    sub_27597FDEC();
    sub_27598004C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12420);
  }

  return result;
}

uint64_t sub_2759803C0()
{
  v0[2] = sub_2759BA4C8();
  v0[3] = sub_2759BA4B8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_27588B550;

  return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(0, 1);
}

char *sub_275980478@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v167 = a4;
  v158 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v164 = &v124 - v10;
  v163 = sub_2759B8458();
  v162 = *(v163 - 8);
  v11 = *(v162 + 64);
  MEMORY[0x28223BE20](v163);
  v13 = (&v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_2759B85C8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v160 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2759BA248();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v136 = sub_2759B8468();
  v161 = *(v136 - 8);
  v166 = v161;
  v19 = *(v161 + 64);
  MEMORY[0x28223BE20](v136);
  v165 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2759BA188();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (&v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12430, &qword_2759CE9B0);
  v129 = *(v131 - 8);
  v26 = *(v129 + 64);
  MEMORY[0x28223BE20](v131);
  v28 = &v124 - v27;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12438, &qword_2759CE9B8);
  v128 = *(v130 - 8);
  v29 = *(v128 + 64);
  MEMORY[0x28223BE20](v130);
  v126 = &v124 - v30;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12440, &qword_2759CE9C0);
  v31 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v137 = &v124 - v32;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12448, &qword_2759CE9C8);
  v33 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v139 = &v124 - v34;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12450, &qword_2759CE9D0);
  v35 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v140 = &v124 - v36;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12458, &qword_2759CE9D8);
  v37 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v142 = &v124 - v38;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12460, &qword_2759CE9E0);
  v151 = *(v154 - 8);
  v39 = *(v151 + 64);
  MEMORY[0x28223BE20](v154);
  v145 = &v124 - v40;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12468, &qword_2759CE9E8);
  v41 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v147 = &v124 - v42;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12470, &qword_2759CE9F0);
  v153 = *(v155 - 8);
  v43 = *(v153 + 64);
  MEMORY[0x28223BE20](v155);
  v146 = &v124 - v44;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12478, &qword_2759CE9F8);
  v45 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v152 = &v124 - v46;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12480, &qword_2759CEA00);
  v47 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v150 = &v124 - v48;
  v156 = a1;
  v168 = a1;
  v169 = a2;
  v157 = a2;
  v141 = a3;
  v170 = a3;
  v171 = v167;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12488, &qword_2759CEA08);
  sub_27589B02C(&qword_280A12490, &qword_280A12488, &qword_2759CEA08);
  v127 = v28;
  sub_2759B9938();
  *v25 = 0xD000000000000021;
  v25[1] = 0x80000002759DDB00;
  v49 = *MEMORY[0x277D4D788];
  v133 = v22;
  v50 = *(v22 + 104);
  v132 = v25;
  v134 = v21;
  v50(v25, v49, v21);
  sub_2759BA238();
  v159 = "Localizable-Backup";
  sub_2759B85B8();
  v51 = type metadata accessor for iCloudHomeViewModel();
  *v13 = v51;
  v52 = *MEMORY[0x277CC9120];
  v53 = *(v162 + 104);
  v54 = v13;
  v55 = v13;
  v56 = v163;
  v53(v54, v52, v163);
  sub_2759B8478();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12498, &qword_2759CEA10);
  v162 = *(v161 + 72);
  v57 = (*(v166 + 80) + 32) & ~*(v166 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_2759C2110;
  v161 = v58;
  sub_2759BA238();
  sub_2759B85B8();
  *v55 = v51;
  v53(v55, v52, v56);
  sub_2759B8478();
  sub_2759BA238();
  sub_2759B85B8();
  *v55 = v51;
  v53(v55, v52, v56);
  v59 = v164;
  sub_2759B8478();
  sub_2759B84F8();
  v60 = sub_2759B8508();
  v61 = *(v60 - 8);
  result = (*(v61 + 48))(v59, 1, v60);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    LODWORD(v163) = v141 & 1;
    sub_27589B02C(&qword_280A124A0, &qword_280A12430, &qword_2759CE9B0);
    v63 = v126;
    v64 = v132;
    v65 = v165;
    v66 = v131;
    v67 = v127;
    sub_2759B9A18();

    (*(v166 + 8))(v65, v136);
    (*(v133 + 8))(v64, v134);
    (*(v129 + 8))(v67, v66);
    (*(v61 + 8))(v59, v60);
    KeyPath = swift_getKeyPath();
    v69 = v137;
    (*(v128 + 32))(v137, v63, v130);
    v70 = &v69[*(v125 + 36)];
    *v70 = KeyPath;
    v70[1] = 0;
    v71 = sub_2759BA098();
    v72 = v156;
    v73 = v157;
    v174 = v156;
    v175 = v157;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
    sub_2759B9D68();
    v74 = v172;
    swift_getKeyPath();
    v174 = v74;
    sub_275982050(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    v75 = *&v74[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
    v76 = v75;

    v77 = v69;
    v78 = v139;
    sub_27589F26C(v77, v139, &qword_280A12440, &qword_2759CE9C0);
    v79 = (v78 + *(v135 + 36));
    *v79 = v71;
    v79[1] = v75;
    v80 = sub_2759BA098();
    v174 = v72;
    v175 = v73;
    sub_2759B9D68();
    v81 = v172;
    v82 = *&v172[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_primaryApps];

    v83 = v78;
    v84 = v140;
    sub_27589F26C(v83, v140, &qword_280A12448, &qword_2759CE9C8);
    v85 = (v84 + *(v138 + 36));
    *v85 = v80;
    v85[1] = v82;
    v86 = sub_2759BA098();
    v174 = v72;
    v175 = v73;
    sub_2759B9D68();
    v87 = v172;
    v88 = *&v172[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_secondaryApps];

    v89 = v84;
    v90 = v142;
    sub_27589F26C(v89, v142, &qword_280A12450, &qword_2759CE9D0);
    v91 = (v90 + *(v143 + 36));
    *v91 = v86;
    v91[1] = v88;
    v174 = v72;
    v175 = v73;
    sub_2759B9D68();
    v92 = v172;
    swift_getKeyPath();
    v174 = v92;
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();

    v94 = v73;
    if (!Strong)
    {
      goto LABEL_5;
    }

    swift_getKeyPath();
    v174 = Strong;
    sub_275982050(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8638();

    v95 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
    swift_beginAccess();
    v96 = *&Strong[v95];
    v97 = v96;

    if (v96)
    {
      v98 = *&v97[OBJC_IVAR___ICSHomeDataModel_manageStorageViewInfo];

      v100 = *&v98[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_title];
      v99 = *&v98[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_title + 8];
    }

    else
    {
LABEL_5:
      v100 = 0;
      v99 = 0xE000000000000000;
    }

    v172 = v100;
    v173 = v99;
    sub_275982098();
    sub_27589F2D4();
    v101 = v145;
    sub_2759B9AC8();

    sub_27586BF04(v90, &qword_280A12458, &qword_2759CE9D8);
    v102 = sub_2759B97E8();
    sub_2759B8D78();
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v111 = v147;
    (*(v151 + 32))(v147, v101, v154);
    v112 = v111 + *(v149 + 36);
    *v112 = v102;
    *(v112 + 8) = v104;
    *(v112 + 16) = v106;
    *(v112 + 24) = v108;
    *(v112 + 32) = v110;
    *(v112 + 40) = 0;
    sub_2759823E8();
    v113 = v146;
    sub_2759B9A08();
    sub_27586BF04(v111, &qword_280A12468, &qword_2759CE9E8);
    v114 = swift_allocObject();
    *(v114 + 16) = v72;
    *(v114 + 24) = v94;
    v115 = v163;
    *(v114 + 32) = v163;
    v116 = v167;
    *(v114 + 40) = v167;
    v117 = v152;
    (*(v153 + 32))(v152, v113, v155);
    v118 = &v117[*(v144 + 36)];
    *v118 = sub_2759824CC;
    v118[1] = v114;
    v118[2] = 0;
    v118[3] = 0;
    v119 = swift_allocObject();
    *(v119 + 16) = v72;
    *(v119 + 24) = v94;
    *(v119 + 32) = v115;
    *(v119 + 40) = v116;
    v120 = v117;
    v121 = v150;
    sub_27589F26C(v120, v150, &qword_280A12478, &qword_2759CE9F8);
    v122 = (v121 + *(v148 + 36));
    *v122 = 0;
    v122[1] = 0;
    v122[2] = sub_275982524;
    v122[3] = v119;
    sub_27589F26C(v121, v158, &qword_280A12480, &qword_2759CEA00);
    swift_retain_n();
    v167 = v72;
    swift_retain_n();
    v123 = v167;

    return v123;
  }

  return result;
}

uint64_t sub_2759816BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ManageStorageThermometerView(0);
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v41 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  *&v50[0] = a1;
  *(&v50[0] + 1) = a2;
  *&v40 = a1;
  *(&v40 + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  sub_2759308A0(0, *&v48[0], &v42);
  *&v50[0] = a1;
  *(&v50[0] + 1) = a2;
  sub_2759B9D68();
  v13 = *&v48[0];
  *&v48[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A11C70, qword_2759C1240);
  sub_2759B9D58();
  v14 = *&v50[0];
  v15 = v7[11];
  *&v12[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  *&v12[v7[12]] = 0x3FEBBE76C8B43958;
  v16 = &v12[v7[13]];
  *v16 = 0x303838373837;
  *(v16 + 1) = 0xE600000000000000;
  *&v12[v7[14]] = 0x3FD47AE147AE147BLL;
  *&v48[0] = v13;
  v17 = v13;
  sub_2759B9D58();

  *v12 = v50[0];
  LOBYTE(v48[0]) = 0;
  sub_2759B9D58();

  v18 = *(&v50[0] + 1);
  v12[16] = v50[0];
  *(v12 + 3) = v18;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *(v12 + 4) = 0u;
  v19 = v40;
  v50[0] = v40;
  sub_2759B9D68();
  type metadata accessor for ManageStorageAppsListViewModel(0);
  sub_2759B9D58();
  v20 = *(&v50[0] + 1);
  v39 = *&v50[0];
  v50[0] = v19;
  sub_2759B9D68();
  sub_2759B9D58();
  v21 = *(&v50[0] + 1);
  v38 = *&v50[0];
  v50[0] = v19;
  sub_2759B9D68();
  sub_2759B9D58();
  v22 = v50[0];
  v23 = v41;
  sub_275982534(v12, v41);
  v24 = v45;
  v25 = v46;
  v48[3] = v45;
  v48[4] = v46;
  v26 = v47;
  v49 = v47;
  v27 = v42;
  v28 = v43;
  v48[0] = v42;
  v48[1] = v43;
  v48[2] = v44;
  *(a3 + 32) = v44;
  *(a3 + 48) = v24;
  *(a3 + 64) = v25;
  *(a3 + 80) = v26;
  *a3 = v27;
  *(a3 + 16) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A124F0, &qword_2759CEB18);
  sub_275982534(v23, a3 + v29[12]);
  v30 = (a3 + v29[16]);
  v31 = v38;
  v32 = v39;
  *v30 = v39;
  v30[1] = v20;
  v30[2] = 0x4044000000000000;
  v33 = (a3 + v29[20]);
  *v33 = v31;
  v33[1] = v21;
  *(a3 + v29[24]) = v22;
  sub_275931040(v48, v50);

  v34 = v32;

  v35 = v31;

  v36 = v22;
  sub_275982598(v12);

  sub_275982598(v41);
  v50[2] = v44;
  v50[3] = v45;
  v50[4] = v46;
  v51 = v47;
  v50[0] = v42;
  v50[1] = v43;
  return sub_275931078(v50);
}

uint64_t sub_275981AC4@<X0>(void *a1@<X8>)
{
  result = sub_2759B92C8();
  *a1 = v3;
  return result;
}

uint64_t sub_275981B18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v16 = a1;
  v17 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v8 = v15;
  v9 = *&v15[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController];

  sub_2759BA4D8();
  v10 = sub_2759BA518();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v11;
  *(v12 + 40) = xmmword_2759C3450;
  *(v12 + 56) = 6666;
  *(v12 + 58) = 1;
  *(v12 + 64) = 0;
  *(v12 + 72) = 1;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  *(v12 + 96) = -1;
  sub_275931D20(0, 0, v7, &unk_2759C4530, v12);

  return sub_275936100(v7);
}

void sub_275981CD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  ManageStorageAppsListViewModel.cancelPendingTasks()();
}

uint64_t sub_275981D38(void *a1)
{
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  LOBYTE(v15) = 1;
  sub_2759B9D58();
  v15 = a1;
  v6 = a1;
  sub_2759B9D58();
  v7 = v16;
  sub_2759BA4E8();
  v8 = sub_2759BA518();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  sub_2759BA4C8();
  v9 = v6;
  v10 = sub_2759BA4B8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_27587D460(0, 0, v5, &unk_2759CE8F0, v11);

  return v7;
}

uint64_t sub_275981ED8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_27585A7E4;

  return sub_2759803C0();
}

uint64_t sub_275981F8C(uint64_t *a1, int a2)
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

uint64_t sub_275981FD4(uint64_t result, int a2, int a3)
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

uint64_t sub_275982040@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_2759816BC(*(v1 + 16), *(v1 + 24), a1);
}

uint64_t sub_275982050(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_275982098()
{
  result = qword_280A124A8;
  if (!qword_280A124A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12458, &qword_2759CE9D8);
    sub_275982150();
    sub_27589B02C(&qword_280A124D8, &qword_280A124E0, &qword_2759CEAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A124A8);
  }

  return result;
}

unint64_t sub_275982150()
{
  result = qword_280A124B0;
  if (!qword_280A124B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12450, &qword_2759CE9D0);
    sub_275982208();
    sub_27589B02C(&qword_280A124D8, &qword_280A124E0, &qword_2759CEAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A124B0);
  }

  return result;
}

unint64_t sub_275982208()
{
  result = qword_280A124B8;
  if (!qword_280A124B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12448, &qword_2759CE9C8);
    sub_2759822C0();
    sub_27589B02C(&qword_280A124C8, &qword_280A124D0, &qword_2759CEAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A124B8);
  }

  return result;
}

unint64_t sub_2759822C0()
{
  result = qword_280A124C0;
  if (!qword_280A124C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12440, &qword_2759CE9C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12430, &qword_2759CE9B0);
    sub_27589B02C(&qword_280A124A0, &qword_280A12430, &qword_2759CE9B0);
    swift_getOpaqueTypeConformance2();
    sub_27589B02C(&qword_280A12180, &qword_280A12188, &qword_2759CE5E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A124C0);
  }

  return result;
}

unint64_t sub_2759823E8()
{
  result = qword_280A124E8;
  if (!qword_280A124E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12468, &qword_2759CE9E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12458, &qword_2759CE9D8);
    sub_275982098();
    sub_27589F2D4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A124E8);
  }

  return result;
}

uint64_t sub_2759824CC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_275981B18(*(v0 + 16), *(v0 + 24));
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_275982524()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_275981CD4();
}

uint64_t sub_275982534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageStorageThermometerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275982598(uint64_t a1)
{
  v2 = type metadata accessor for ManageStorageThermometerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2759825F4()
{
  result = qword_280A124F8;
  if (!qword_280A124F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12480, &qword_2759CEA00);
    sub_275982680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A124F8);
  }

  return result;
}

unint64_t sub_275982680()
{
  result = qword_280A12500;
  if (!qword_280A12500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12478, &qword_2759CE9F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12468, &qword_2759CE9E8);
    sub_2759823E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12500);
  }

  return result;
}

id Feature.__allocating_init(featureId:title:subtitle:icons:action:iTunesItemId:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = objc_allocWithZone(v12);
  v21 = &v20[OBJC_IVAR____TtC14iCloudSettings7Feature_featureId];
  *v21 = a1;
  *(v21 + 1) = a2;
  v22 = &v20[OBJC_IVAR____TtC14iCloudSettings7Feature_title];
  *v22 = a3;
  *(v22 + 1) = a4;
  v23 = &v20[OBJC_IVAR____TtC14iCloudSettings7Feature_subtitle];
  *v23 = a5;
  *(v23 + 1) = a6;
  *&v20[OBJC_IVAR____TtC14iCloudSettings7Feature_action] = a8;
  v24 = &v20[OBJC_IVAR____TtC14iCloudSettings7Feature_iTunesItemId];
  *v24 = a9;
  *(v24 + 1) = a10;
  v25 = &v20[OBJC_IVAR____TtC14iCloudSettings7Feature_bundleIdentifier];
  *v25 = a11;
  *(v25 + 1) = a12;
  *&v20[OBJC_IVAR____TtC14iCloudSettings7Feature_icons] = a7;
  v28.receiver = v20;
  v28.super_class = v12;
  return objc_msgSendSuper2(&v28, sel_init);
}

void *iCloudHomeDataModel.upsellCard.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICSHomeDataModel_upsellCard);
  v2 = v1;
  return v1;
}

void *iCloudHomeDataModel.icloudPlusCard.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICSHomeDataModel_icloudPlusCard);
  v2 = v1;
  return v1;
}

void *iCloudHomeDataModel.backupViewInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICSHomeDataModel_backupViewInfo);
  v2 = v1;
  return v1;
}

void *iCloudHomeDataModel.preLaunchAction.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICSHomeDataModel_preLaunchAction);
  v2 = v1;
  return v1;
}

void *iCloudHomeDataModel.manageSubscriptionsAction.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICSHomeDataModel_manageSubscriptionsAction);
  v2 = v1;
  return v1;
}

void *iCloudHomeDataModel.settingsFooter.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICSHomeDataModel_settingsFooter);
  v2 = v1;
  return v1;
}

void *iCloudHomeDataModel.informationCard.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICSHomeDataModel_informationCard);
  v2 = v1;
  return v1;
}

unint64_t sub_275982AC0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x6143726564616568;
    v6 = 0x6C5064756F6C4369;
    v7 = 0x704164756F6C4369;
    if (a1 != 3)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x61436C6C65737075;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x65537265746F6F66;
    v2 = 0x74616D726F666E69;
    if (a1 == 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000019;
    if (a1 == 6)
    {
      v3 = 0x636E75614C657270;
    }

    if (a1 == 5)
    {
      v3 = 0x695670756B636162;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

id iCloudHomeDataModel.init(_:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___ICSHomeDataModel__rawJsonObject] = a1;
  v5 = *(a1 + 16);

  if (v5 && (v6 = sub_27586F8A0(0x6143726564616568, 0xEA00000000006472), (v7 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v6, v52), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v8 = v50;
  }

  else
  {
    v8 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v9 = objc_allocWithZone(type metadata accessor for HeaderCard());
  *&v2[OBJC_IVAR___ICSHomeDataModel_headerCard] = HeaderCard.init(_:)(v8);
  if (*(a1 + 16) && (v10 = sub_27586F8A0(0x61436C6C65737075, 0xEA00000000006472), (v11 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v10, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
    if (swift_dynamicCast())
    {
      v12 = v50;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_allocWithZone(type metadata accessor for UpsellCard());
  *&v2[OBJC_IVAR___ICSHomeDataModel_upsellCard] = UpsellCard.init(_:)(v12);
  if (*(a1 + 16) && (v14 = sub_27586F8A0(0x6C5064756F6C4369, 0xEE00647261437375), (v15 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v14, v52), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v50;
  }

  else
  {
    v16 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v17 = objc_allocWithZone(type metadata accessor for iCloudPlusCard());
  *&v2[OBJC_IVAR___ICSHomeDataModel_icloudPlusCard] = iCloudPlusCard.init(_:)(v16);
  if (*(a1 + 16) && (v18 = sub_27586F8A0(0x704164756F6C4369, 0xEE00647261437370), (v19 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v18, v52), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v20 = v50;
  }

  else
  {
    v20 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v21 = objc_allocWithZone(type metadata accessor for iCloudAppsCard());
  *&v2[OBJC_IVAR___ICSHomeDataModel_icloudAppsCard] = iCloudAppsCard.init(_:)(v20);
  if (*(a1 + 16) && (v22 = sub_27586F8A0(0xD000000000000011, 0x80000002759E2D20), (v23 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v22, v52), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v24 = v50;
  }

  else
  {
    v24 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v25 = objc_allocWithZone(type metadata accessor for ManageStorageViewInfo());
  *&v2[OBJC_IVAR___ICSHomeDataModel_manageStorageViewInfo] = ManageStorageViewInfo.init(_:)(v24);
  if (*(a1 + 16) && (v26 = sub_27586F8A0(0x695670756B636162, 0xEA00000000007765), (v27 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v26, v52), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v28 = v50;
  }

  else
  {
    v28 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v29 = objc_allocWithZone(type metadata accessor for BackupViewInfo());
  *&v2[OBJC_IVAR___ICSHomeDataModel_backupViewInfo] = BackupViewInfo.init(_:)(v28);
  v30 = *(a1 + 16);
  if (v30)
  {
    v31 = sub_27586F8A0(0xD000000000000010, 0x80000002759E2D40);
    if ((v32 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v31, v52), swift_dynamicCast()))
    {
      LOBYTE(v30) = v50;
    }

    else
    {
      LOBYTE(v30) = 0;
    }
  }

  v2[OBJC_IVAR___ICSHomeDataModel_underMaintenance] = v30;
  if (*(a1 + 16) && (v33 = sub_27586F8A0(0x74616D726F666E69, 0xEF647261436E6F69), (v34 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v33, v52), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v35 = objc_allocWithZone(type metadata accessor for InformationCard());
    v36 = InformationCard.init(_:)(v50);
  }

  else
  {
    v36 = 0;
  }

  *&v2[OBJC_IVAR___ICSHomeDataModel_informationCard] = v36;
  if (*(a1 + 16) && (v37 = sub_27586F8A0(0x636E75614C657270, 0xEF6E6F6974634168), (v38 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v37, v52), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v39 = objc_allocWithZone(type metadata accessor for Action());
    v40 = Action.init(_:)(v50);
  }

  else
  {
    v40 = 0;
  }

  *&v2[OBJC_IVAR___ICSHomeDataModel_preLaunchAction] = v40;
  if (*(a1 + 16) && (v41 = sub_27586F8A0(0x65537265746F6F66, 0xED00006E6F697463), (v42 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v41, v52), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750), (swift_dynamicCast() & 1) != 0))
  {
    v43 = v50;
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

  v44 = objc_allocWithZone(type metadata accessor for SettingsFooter());
  *&v2[OBJC_IVAR___ICSHomeDataModel_settingsFooter] = SettingsFooter.init(_:)(v43);
  if (!*(a1 + 16) || (v45 = sub_27586F8A0(0xD000000000000019, 0x80000002759E2D60), (v46 & 1) == 0))
  {

    goto LABEL_57;
  }

  sub_275864C94(*(a1 + 56) + 32 * v45, v52);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_57:
    v48 = 0;
    goto LABEL_58;
  }

  v47 = objc_allocWithZone(type metadata accessor for Action());
  v48 = Action.init(_:)(v50);
LABEL_58:
  *&v2[OBJC_IVAR___ICSHomeDataModel_manageSubscriptionsAction] = v48;
  v51.receiver = v2;
  v51.super_class = ObjectType;
  return objc_msgSendSuper2(&v51, sel_init);
}

unint64_t iCloudHomeDataModel.description.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_2759852D8(&OBJC_IVAR___ICSHomeDataModel__rawJsonObject);
}

id iCloudHomeDataModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_275983868(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1685024583;
  v4 = 0xE400000000000000;
  v5 = 1819047238;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E55;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x754674736F6D6C41;
    v2 = 0xEA00000000006C6CLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t HeaderCard.storageState.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageState);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageState + 8);

  return v1;
}

void *HeaderCard.statefulHeader.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_statefulHeader);
  v2 = v1;
  return v1;
}

id HeaderCard.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = sub_27586F8A0(0xD000000000000014, 0x80000002759E2DB0);
    if ((v6 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v5, v24), swift_dynamicCast()))
    {
      LOBYTE(v4) = v21;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  v1[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_isiCloudPlusSubscriber] = v4;
  if (*(a1 + 16) && (v7 = sub_27586F8A0(0x53656761726F7473, 0xEC00000065746174), (v8 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v7, v24), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v21;
    v10 = v22;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = &v1[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageState];
  *v11 = v9;
  v11[1] = v10;
  if (*(a1 + 16) && (v12 = sub_27586F8A0(0x53656761726F7473, 0xEE007972616D6D75), (v13 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v12, v24), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v14 = v21;
  }

  else
  {
    v14 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v15 = objc_allocWithZone(type metadata accessor for StorageSummary());
  *&v2[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary] = StorageSummary.init(_:)(v14);
  if (!*(a1 + 16) || (v16 = sub_27586F8A0(0x6C75666574617473, 0xEE00726564616548), (v17 & 1) == 0))
  {

    goto LABEL_21;
  }

  sub_275864C94(*(a1 + 56) + 32 * v16, v24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v19 = 0;
    goto LABEL_22;
  }

  v18 = objc_allocWithZone(type metadata accessor for StatefulHeader());
  v19 = StatefulHeader.init(_:)(v21);
LABEL_22:
  *&v2[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_statefulHeader] = v19;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for HeaderCard();
  return objc_msgSendSuper2(&v23, sel_init);
}

uint64_t StorageSummary.subscriptionLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_subscriptionLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_subscriptionLabel + 8);

  return v1;
}

uint64_t StorageSummary.storageBarLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarLabel + 8);

  return v1;
}

uint64_t StorageSummary.storageBarColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarColor);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarColor + 8);

  return v1;
}

uint64_t StorageSummary.usageLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usageLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usageLabel + 8);

  return v1;
}

id StorageSummary.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0xD000000000000011, 0x80000002759E2DF0), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v38), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v35;
    v7 = v36;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_subscriptionLabel];
  *v8 = v6;
  *(v8 + 1) = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x42656761726F7473, 0xEF6C6562614C7261), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v38), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v35;
    v12 = v36;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v2[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarLabel];
  *v13 = v11;
  *(v13 + 1) = v12;
  if (*(a1 + 16) && (v14 = sub_27586F8A0(0x42656761726F7473, 0xEF726F6C6F437261), (v15 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v14, v38), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v35;
    v17 = v36;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = &v2[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarColor];
  *v18 = v16;
  *(v18 + 1) = v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = sub_27586F8A0(0xD000000000000013, 0x80000002759E2E10);
    if ((v21 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v20, v38), swift_dynamicCast()))
    {
      v19 = v35;
    }

    else
    {
      v19 = 0;
    }
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_totalStorageInBytes] = v19;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = sub_27586F8A0(0xD000000000000012, 0x80000002759E2E30);
    if ((v24 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v23, v38), swift_dynamicCast()))
    {
      v22 = v35;
    }

    else
    {
      v22 = 0;
    }
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usedStorageInBytes] = v22;
  if (*(a1 + 16) && (v25 = sub_27586F8A0(0x62614C6567617375, 0xEA00000000006C65), (v26 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v25, v38), (swift_dynamicCast() & 1) != 0))
  {
    v27 = v35;
    v28 = v36;
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = &v2[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usageLabel];
  *v29 = v27;
  *(v29 + 1) = v28;
  if (!*(a1 + 16) || (v30 = sub_27586F8A0(0x6E6F69746361, 0xE600000000000000), (v31 & 1) == 0))
  {

    goto LABEL_36;
  }

  sub_275864C94(*(a1 + 56) + 32 * v30, v38);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v32 = sub_2758A2A88(MEMORY[0x277D84F90]);
    goto LABEL_37;
  }

  v32 = v35;
LABEL_37:
  v33 = objc_allocWithZone(type metadata accessor for Action());
  *&v2[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_action] = Action.init(_:)(v32);
  v37.receiver = v2;
  v37.super_class = type metadata accessor for StorageSummary();
  return objc_msgSendSuper2(&v37, sel_init);
}

uint64_t StatefulHeader.layoutType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_layoutType);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_layoutType + 8);

  return v1;
}

uint64_t StatefulHeader.subTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_subTitle);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_subTitle + 8);

  return v1;
}

uint64_t StatefulHeader.impressionUrlString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_impressionUrlString);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_impressionUrlString + 8);

  return v1;
}

id StatefulHeader.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x795474756F79616CLL, 0xEA00000000006570), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v39), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v35;
    v7 = v36;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v1[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_layoutType];
  *v8 = v6;
  *(v8 + 1) = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v39), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v35;
    v12 = v36;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v1[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_subTitle];
  *v13 = v11;
  *(v13 + 1) = v12;
  v38 = MEMORY[0x277D84F90];
  if (*(a1 + 16) && (v14 = sub_27586F8A0(0x736E6F69746361, 0xE700000000000000), (v15 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v14, v39), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750), (swift_dynamicCast() & 1) != 0))
  {
    v16 = *(v35 + 16);
    if (v16)
    {
      v17 = (v35 + 32);
      v18 = type metadata accessor for Action();
      do
      {
        v19 = *v17;
        v20 = objc_allocWithZone(v18);
        swift_bridgeObjectRetain_n();
        Action.init(_:)(v19);
        MEMORY[0x277C84160]();
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2759BA3F8();
        }

        sub_2759BA418();
        v21 = v38;

        ++v17;
        --v16;
      }

      while (v16);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  *&v1[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_actions] = v21;
  v23 = *(a1 + 16);

  if (v23 && (v24 = sub_27586F8A0(0x7255796669746F6ELL, 0xE90000000000006CLL), (v25 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v24, v39);
    v26 = swift_dynamicCast();
    v27 = v35;
    v28 = v36;
    if (!v26)
    {
      v27 = 0;
      v28 = 0;
    }
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v29 = &v2[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_impressionUrlString];
  *v29 = v27;
  *(v29 + 1) = v28;
  if (*(a1 + 16) && (v30 = sub_27586F8A0(0x6150796669746F6ELL, 0xED000064616F6C79), (v31 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v30, v39);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
    v32 = swift_dynamicCast();
    v33 = v35;
    if (!v32)
    {
      v33 = 0;
    }
  }

  else
  {

    v33 = 0;
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_impressionPayload] = v33;

  v37.receiver = v2;
  v37.super_class = type metadata accessor for StatefulHeader();
  return objc_msgSendSuper2(&v37, sel_init);
}

uint64_t Action.type.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings6Action_type);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings6Action_type + 8);

  return v1;
}

uint64_t Action.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings6Action_title);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings6Action_title + 8);

  return v1;
}

uint64_t Action.urlString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8);

  return v1;
}

void *Action.actionConfirmation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings6Action_actionConfirmation);
  v2 = v1;
  return v1;
}

id Action.init(_:)(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC14iCloudSettings6Action__rawJsonObject] = a1;
  v4 = *(a1 + 16);

  if (v4 && (v5 = sub_27586F8A0(0x6C75616665447369, 0xE900000000000074), (v6 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v5, v44), swift_dynamicCast()))
  {
    v7 = v41;
  }

  else
  {
    v7 = 0;
  }

  v2[OBJC_IVAR____TtC14iCloudSettings6Action_isDefault] = v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = sub_27586F8A0(0x7572747365447369, 0xED00006576697463);
    if ((v10 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v9, v44), swift_dynamicCast()))
    {
      LOBYTE(v8) = v41;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  v2[OBJC_IVAR____TtC14iCloudSettings6Action_isDestructive] = v8;
  if (*(a1 + 16) && (v11 = sub_27586F8A0(0x79546E6F69746361, 0xEA00000000006570), (v12 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v11, v44), (swift_dynamicCast() & 1) != 0))
  {
    v13 = v41;
    v14 = v42;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = &v2[OBJC_IVAR____TtC14iCloudSettings6Action_type];
  *v15 = v13;
  v15[1] = v14;
  v16 = *(a1 + 16);
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = sub_27586F8A0(0x656C746974, 0xE500000000000000);
  if ((v18 & 1) == 0)
  {
    v16 = 0;
LABEL_21:
    v20 = 0;
    goto LABEL_22;
  }

  sub_275864C94(*(a1 + 56) + 32 * v17, v44);
  v19 = swift_dynamicCast();
  v16 = v41;
  v20 = v42;
  if (!v19)
  {
    v16 = 0;
    v20 = 0;
  }

LABEL_22:
  v21 = &v2[OBJC_IVAR____TtC14iCloudSettings6Action_title];
  *v21 = v16;
  v21[1] = v20;
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_27:
    v26 = 0;
    goto LABEL_28;
  }

  v23 = sub_27586F8A0(0x52556E6F69746361, 0xE90000000000004CLL);
  if ((v24 & 1) == 0)
  {
    v22 = 0;
    goto LABEL_27;
  }

  sub_275864C94(*(a1 + 56) + 32 * v23, v44);
  v25 = swift_dynamicCast();
  v22 = v41;
  v26 = v42;
  if (!v25)
  {
    v22 = 0;
    v26 = 0;
  }

LABEL_28:
  v27 = &v2[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
  *v27 = v22;
  v27[1] = v26;
  v28 = *(a1 + 16);
  if (v28)
  {
    v29 = sub_27586F8A0(0xD000000000000010, 0x80000002759DEB80);
    if (v30)
    {
      sub_275864C94(*(a1 + 56) + 32 * v29, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
      v31 = swift_dynamicCast();
      v28 = v41;
      if (!v31)
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters] = v28;
  v32 = *(a1 + 16);
  if (v32)
  {
    v33 = sub_27586F8A0(0x6D61726150797562, 0xED00007372657465);
    if (v34)
    {
      sub_275864C94(*(a1 + 56) + 32 * v33, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
      v35 = swift_dynamicCast();
      v32 = v41;
      if (!v35)
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings6Action_buyParameters] = v32;
  if (!*(a1 + 16) || (v36 = sub_27586F8A0(0x616D7269666E6F63, 0xEC0000006E6F6974), (v37 & 1) == 0))
  {

    goto LABEL_45;
  }

  sub_275864C94(*(a1 + 56) + 32 * v36, v44);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_45:
    v39 = 0;
    goto LABEL_46;
  }

  v38 = objc_allocWithZone(type metadata accessor for ActionConfirmation());
  v39 = ActionConfirmation.init(_:)(v41);
LABEL_46:
  *&v2[OBJC_IVAR____TtC14iCloudSettings6Action_actionConfirmation] = v39;
  v43.receiver = v2;
  v43.super_class = type metadata accessor for Action();
  return objc_msgSendSuper2(&v43, sel_init);
}

unint64_t sub_275985278()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_2759852D8(&OBJC_IVAR____TtC14iCloudSettings6Action__rawJsonObject);
}

unint64_t sub_2759852D8(void *a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2759BA2D8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = objc_opt_self();
  v6 = *(v1 + *a1);
  v7 = sub_2759BA1C8();
  v8 = [v5 isValidJSONObject_];

  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = sub_2759BA1C8();
  v22[0] = 0;
  v10 = [v5 dataWithJSONObject:v9 options:1 error:v22];

  v11 = v22[0];
  if (!v10)
  {
    v19 = v11;
    v20 = sub_2759B8448();

    swift_willThrow();
    goto LABEL_6;
  }

  v12 = sub_2759B8538();
  v14 = v13;

  sub_2759BA2C8();
  v15 = sub_2759BA2A8();
  v17 = v16;
  sub_27585A900(v12, v14);
  if (!v17)
  {
LABEL_6:
    result = 0xD000000000000020;
    goto LABEL_7;
  }

  result = v15;
LABEL_7:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_275985538()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings6Action_type);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings6Action_type + 8);
  v3 = sub_2759BA258();
  v4 = _ICQActionForString();

  return ((v4 - 114) < 0xE) & (0x20F1u >> (v4 - 114));
}

uint64_t UpsellCard.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings10UpsellCard_title);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings10UpsellCard_title + 8);

  return v1;
}

uint64_t UpsellCard.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings10UpsellCard_subtitle);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings10UpsellCard_subtitle + 8);

  return v1;
}

id UpsellCard.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    if (*(a1 + 16) && (v4 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v39), (swift_dynamicCast() & 1) != 0))
    {
      v6 = v34;
      v7 = v36;
    }

    else
    {
      v6 = 0;
      v7 = 0xE000000000000000;
    }

    v8 = &v1[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_title];
    *v8 = v6;
    *(v8 + 1) = v7;
    if (*(a1 + 16) && (v9 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v39), (swift_dynamicCast() & 1) != 0))
    {
      v11 = v34;
      v12 = v36;
    }

    else
    {
      v11 = 0;
      v12 = 0xE000000000000000;
    }

    v13 = &v1[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_subtitle];
    *v13 = v11;
    *(v13 + 1) = v12;
    v14 = MEMORY[0x277D84F90];
    v35 = MEMORY[0x277D84F90];
    if (*(a1 + 16))
    {
      v15 = sub_27586F8A0(0x7365727574616566, 0xE800000000000000);
      if (v16)
      {
        sub_275864C94(*(a1 + 56) + 32 * v15, v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
        if (swift_dynamicCast())
        {
          v14 = v37;
        }
      }
    }

    v17 = *(v14 + 16);
    if (v17)
    {
      v18 = (v14 + 32);
      v19 = type metadata accessor for Feature();
      do
      {
        v20 = *v18;
        v21 = objc_allocWithZone(v19);
        swift_bridgeObjectRetain_n();
        Feature.init(_:)(v20);
        MEMORY[0x277C84160]();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2759BA3F8();
        }

        sub_2759BA418();
        v22 = v35;

        ++v18;
        --v17;
      }

      while (v17);
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    *&v1[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_features] = v22;
    v29 = *(a1 + 16);

    if (v29 && (v30 = sub_27586F8A0(0x6E6F69746361, 0xE600000000000000), (v31 & 1) != 0))
    {
      sub_275864C94(*(a1 + 56) + 32 * v30, v39);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
      if (swift_dynamicCast())
      {
        v32 = v37;
LABEL_34:
        v33 = objc_allocWithZone(type metadata accessor for Action());
        *&v2[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_action] = Action.init(_:)(v32);

        v38.receiver = v2;
        v38.super_class = type metadata accessor for UpsellCard();
        return objc_msgSendSuper2(&v38, sel_init);
      }
    }

    else
    {
    }

    v32 = sub_2758A2A88(MEMORY[0x277D84F90]);
    goto LABEL_34;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v24 = sub_2759B89A8();
  __swift_project_value_buffer(v24, qword_2815ADE70);
  v25 = sub_2759B8988();
  v26 = sub_2759BA648();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_275819000, v25, v26, "No upsell card info received.", v27, 2u);
    MEMORY[0x277C85860](v27, -1, -1);
  }

  type metadata accessor for UpsellCard();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t iCloudPlusCard.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14iCloudPlusCard_title);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14iCloudPlusCard_title + 8);

  return v1;
}

id iCloudPlusCard.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    if (*(a1 + 16) && (v4 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v29), (swift_dynamicCast() & 1) != 0))
    {
      v6 = v24;
      v7 = v26;
    }

    else
    {
      v6 = 0;
      v7 = 0xE000000000000000;
    }

    v8 = &v2[OBJC_IVAR____TtC14iCloudSettings14iCloudPlusCard_title];
    *v8 = v6;
    *(v8 + 1) = v7;
    v25 = MEMORY[0x277D84F90];
    if (*(a1 + 16) && (v9 = sub_27586F8A0(0x7365727574616566, 0xE800000000000000), (v10 & 1) != 0))
    {
      sub_275864C94(*(a1 + 56) + 32 * v9, v29);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
      if (swift_dynamicCast())
      {
        v11 = v27;
        v12 = *(v27 + 16);
        if (!v12)
        {
LABEL_11:
          v13 = MEMORY[0x277D84F90];
LABEL_12:

          *&v2[OBJC_IVAR____TtC14iCloudSettings14iCloudPlusCard_features] = v13;
          v28.receiver = v2;
          v28.super_class = type metadata accessor for iCloudPlusCard();
          return objc_msgSendSuper2(&v28, sel_init);
        }

LABEL_15:
        v15 = (v11 + 32);
        v16 = type metadata accessor for Feature();
        do
        {
          v17 = *v15;
          v18 = objc_allocWithZone(v16);
          swift_bridgeObjectRetain_n();
          Feature.init(_:)(v17);
          MEMORY[0x277C84160]();
          if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v19 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2759BA3F8();
          }

          sub_2759BA418();
          v13 = v25;

          ++v15;
          --v12;
        }

        while (v12);
        goto LABEL_12;
      }
    }

    else
    {
    }

    v11 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v20 = sub_2759B89A8();
  __swift_project_value_buffer(v20, qword_2815ADE70);
  v21 = sub_2759B8988();
  v22 = sub_2759BA648();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_275819000, v21, v22, "No iCloud+ features info received.", v23, 2u);
    MEMORY[0x277C85860](v23, -1, -1);
  }

  type metadata accessor for iCloudPlusCard();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2759860B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a3)
  {
    v5 = sub_2759BA1D8();
  }

  else
  {
    v5 = 0;
  }

  return a4(v5);
}

uint64_t Feature.featureId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings7Feature_featureId);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings7Feature_featureId + 8);

  return v1;
}

void *Feature.action.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings7Feature_action);
  v2 = v1;
  return v1;
}

uint64_t Feature.iTunesItemId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings7Feature_iTunesItemId);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings7Feature_iTunesItemId + 8);

  return v1;
}

uint64_t Feature.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings7Feature_bundleIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings7Feature_bundleIdentifier + 8);

  return v1;
}

void *Feature.icons.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings7Feature_icons);
  v2 = v1;
  return v1;
}

id Feature.init(_:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (*(a1 + 16) && (v5 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v6 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v5, v45), (swift_dynamicCast() & 1) != 0))
  {
    v7 = v42;
    v8 = v43;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = &v1[OBJC_IVAR____TtC14iCloudSettings7Feature_title];
  *v9 = v7;
  v9[1] = v8;
  if (*(a1 + 16) && (v10 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v11 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v10, v45), (swift_dynamicCast() & 1) != 0))
  {
    v12 = v42;
    v13 = v43;
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = &v1[OBJC_IVAR____TtC14iCloudSettings7Feature_subtitle];
  *v14 = v12;
  v14[1] = v13;
  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = sub_27586F8A0(0x4965727574616566, 0xE900000000000064);
  if ((v17 & 1) == 0)
  {
    v15 = 0;
LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

  sub_275864C94(*(a1 + 56) + 32 * v16, v45);
  v18 = swift_dynamicCast();
  v15 = v42;
  v19 = v43;
  if (!v18)
  {
    v15 = 0;
    v19 = 0;
  }

LABEL_17:
  v20 = &v1[OBJC_IVAR____TtC14iCloudSettings7Feature_featureId];
  *v20 = v15;
  v20[1] = v19;
  if (*(a1 + 16) && (v21 = sub_27586F8A0(0x6E6F69746361, 0xE600000000000000), (v22 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v21, v45), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v23 = v42;
  }

  else
  {
    v23 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v24 = objc_allocWithZone(type metadata accessor for Action());
  *&v2[OBJC_IVAR____TtC14iCloudSettings7Feature_action] = Action.init(_:)(v23);
  v25 = *(a1 + 16);
  if (!v25)
  {
    goto LABEL_27;
  }

  v26 = sub_27586F8A0(0x744973656E755469, 0xEC00000064496D65);
  if ((v27 & 1) == 0)
  {
    v25 = 0;
LABEL_27:
    v29 = 0;
    goto LABEL_28;
  }

  sub_275864C94(*(a1 + 56) + 32 * v26, v45);
  v28 = swift_dynamicCast();
  v25 = v42;
  v29 = v43;
  if (!v28)
  {
    v25 = 0;
    v29 = 0;
  }

LABEL_28:
  v30 = &v2[OBJC_IVAR____TtC14iCloudSettings7Feature_iTunesItemId];
  *v30 = v25;
  *(v30 + 1) = v29;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_33:
    v35 = 0;
    goto LABEL_34;
  }

  v32 = sub_27586F8A0(0xD000000000000010, 0x80000002759E2EF0);
  if ((v33 & 1) == 0)
  {
    v31 = 0;
    goto LABEL_33;
  }

  sub_275864C94(*(a1 + 56) + 32 * v32, v45);
  v34 = swift_dynamicCast();
  v31 = v42;
  v35 = v43;
  if (!v34)
  {
    v31 = 0;
    v35 = 0;
  }

LABEL_34:
  v36 = &v2[OBJC_IVAR____TtC14iCloudSettings7Feature_bundleIdentifier];
  *v36 = v31;
  *(v36 + 1) = v35;
  if (!*(a1 + 16) || (v37 = sub_27586F8A0(0x736E6F6369, 0xE500000000000000), (v38 & 1) == 0))
  {

    goto LABEL_39;
  }

  sub_275864C94(*(a1 + 56) + 32 * v37, v45);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    v39 = sub_2758A2A88(MEMORY[0x277D84F90]);
    goto LABEL_40;
  }

  v39 = v42;
LABEL_40:
  v40 = objc_allocWithZone(type metadata accessor for Icons());
  *&v2[OBJC_IVAR____TtC14iCloudSettings7Feature_icons] = Icons.init(_:)(v39);
  v44.receiver = v2;
  v44.super_class = ObjectType;
  return objc_msgSendSuper2(&v44, sel_init);
}

id Feature.init(featureId:title:subtitle:icons:action:iTunesItemId:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  v21 = &v12[OBJC_IVAR____TtC14iCloudSettings7Feature_featureId];
  *v21 = a1;
  *(v21 + 1) = a2;
  v22 = &v12[OBJC_IVAR____TtC14iCloudSettings7Feature_title];
  *v22 = a3;
  *(v22 + 1) = a4;
  v23 = &v12[OBJC_IVAR____TtC14iCloudSettings7Feature_subtitle];
  *v23 = a5;
  *(v23 + 1) = a6;
  *&v12[OBJC_IVAR____TtC14iCloudSettings7Feature_action] = a8;
  v24 = &v12[OBJC_IVAR____TtC14iCloudSettings7Feature_iTunesItemId];
  *v24 = a9;
  *(v24 + 1) = a10;
  v25 = &v12[OBJC_IVAR____TtC14iCloudSettings7Feature_bundleIdentifier];
  *v25 = a11;
  *(v25 + 1) = a12;
  *&v12[OBJC_IVAR____TtC14iCloudSettings7Feature_icons] = a7;
  v28.receiver = v12;
  v28.super_class = ObjectType;
  return objc_msgSendSuper2(&v28, sel_init);
}

id _s14iCloudSettings01iA13HomeDataModelCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t iCloudAppsCard.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_title);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_title + 8);

  return v1;
}

uint64_t iCloudAppsCard.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_subtitle);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_subtitle + 8);

  return v1;
}

uint64_t iCloudAppsCard.detailLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_detailLabel);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_detailLabel + 8);

  return v1;
}

uint64_t iCloudAppsCard.statusColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_statusColor);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_statusColor + 8);

  return v1;
}

id iCloudAppsCard.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v38), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v35;
    v7 = v36;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_title];
  *v8 = v6;
  *(v8 + 1) = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v38), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v35;
    v12 = v36;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v2[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_subtitle];
  *v13 = v11;
  *(v13 + 1) = v12;
  if (*(a1 + 16) && (v14 = sub_27586F8A0(0x614C6C6961746564, 0xEB000000006C6562), (v15 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v14, v38), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v35;
    v17 = v36;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = &v2[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_detailLabel];
  *v18 = v16;
  *(v18 + 1) = v17;
  if (*(a1 + 16) && (v19 = sub_27586F8A0(0x6F43737574617473, 0xEB00000000726F6CLL), (v20 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v19, v38), (swift_dynamicCast() & 1) != 0))
  {
    v21 = v35;
    v22 = v36;
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = &v2[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_statusColor];
  *v23 = v21;
  *(v23 + 1) = v22;
  v24 = MEMORY[0x277D84F90];
  if (*(a1 + 16) && (v25 = sub_27586F8A0(1936748641, 0xE400000000000000), (v26 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v25, v38);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
    if (swift_dynamicCast())
    {
      v27 = v35;
      goto LABEL_27;
    }
  }

  else
  {
  }

  v27 = MEMORY[0x277D84F90];
LABEL_27:
  v38[0] = v24;
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = (v27 + 32);
    v30 = type metadata accessor for iCloudApp();
    do
    {
      v31 = *v29;
      objc_allocWithZone(v30);

      iCloudApp.init(_:)(v32);
      MEMORY[0x277C84160]();
      if (*((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v33 = *((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2759BA3F8();
      }

      sub_2759BA418();
      ++v29;
      --v28;
    }

    while (v28);
    v24 = v38[0];
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_apps] = v24;
  v37.receiver = v2;
  v37.super_class = type metadata accessor for iCloudAppsCard();
  return objc_msgSendSuper2(&v37, sel_init);
}

uint64_t iCloudApp.dataclass.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings9iCloudApp_dataclass);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings9iCloudApp_dataclass + 8);

  return v1;
}

uint64_t iCloudApp.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings9iCloudApp_subtitle);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings9iCloudApp_subtitle + 8);

  return v1;
}

uint64_t iCloudApp.iTunesItemId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings9iCloudApp_iTunesItemId);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings9iCloudApp_iTunesItemId + 8);

  return v1;
}

void *iCloudApp.icons.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings9iCloudApp_icons);
  v2 = v1;
  return v1;
}

id iCloudApp.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x73616C6361746164, 0xE900000000000073), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v28), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v25;
    v7 = v26;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_dataclass];
  *v8 = v6;
  v8[1] = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v28), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v25;
    v12 = v26;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v2[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_subtitle];
  *v13 = v11;
  v13[1] = v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = sub_27586F8A0(0x744973656E755469, 0xEC00000064496D65);
  if ((v16 & 1) == 0)
  {
    v14 = 0;
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  sub_275864C94(*(a1 + 56) + 32 * v15, v28);
  v17 = swift_dynamicCast();
  v14 = v25;
  v18 = v26;
  if (!v17)
  {
    v14 = 0;
    v18 = 0;
  }

LABEL_17:
  v19 = &v2[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_iTunesItemId];
  *v19 = v14;
  v19[1] = v18;
  if (!*(a1 + 16) || (v20 = sub_27586F8A0(0x736E6F6369, 0xE500000000000000), (v21 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_275864C94(*(a1 + 56) + 32 * v20, v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v23 = 0;
    goto LABEL_23;
  }

  v22 = objc_allocWithZone(type metadata accessor for Icons());
  v23 = Icons.init(_:)(v25);
LABEL_23:
  *&v2[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_icons] = v23;
  v27.receiver = v2;
  v27.super_class = type metadata accessor for iCloudApp();
  return objc_msgSendSuper2(&v27, sel_init);
}

id BackupViewInfo.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84F90];
  if (*(a1 + 16) && (v5 = sub_27586F8A0(1936746868, 0xE400000000000000), (v6 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v5, v17);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
    if (swift_dynamicCast())
    {
      v7 = v15;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v7 = MEMORY[0x277D84F90];
LABEL_7:
  v17[0] = v4;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 32);
    v10 = type metadata accessor for InlineTip();
    do
    {
      v11 = *v9;
      v12 = objc_allocWithZone(v10);
      swift_bridgeObjectRetain_n();
      InlineTip.init(_:)(v11);
      MEMORY[0x277C84160]();
      if (*((v17[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v17[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v4 = v17[0];

      ++v9;
      --v8;
    }

    while (v8);
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings14BackupViewInfo_tips] = v4;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for BackupViewInfo();
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t InlineTip.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings9InlineTip_title);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings9InlineTip_title + 8);

  return v1;
}

uint64_t InlineTip.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings9InlineTip_subtitle);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings9InlineTip_subtitle + 8);

  return v1;
}

id InlineTip.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - v6;
  if (*(a1 + 16) && (v8 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v9 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v8, v42), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v38;
    v11 = v39;
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = &v1[OBJC_IVAR____TtC14iCloudSettings9InlineTip_title];
  *v12 = v10;
  v12[1] = v11;
  if (*(a1 + 16) && (v13 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v14 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v13, v42), (swift_dynamicCast() & 1) != 0))
  {
    v15 = v38;
    v16 = v39;
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = &v1[OBJC_IVAR____TtC14iCloudSettings9InlineTip_subtitle];
  *v17 = v15;
  v17[1] = v16;
  if (*(a1 + 16) && (v18 = sub_27586F8A0(0x736E6F6369, 0xE500000000000000), (v19 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v18, v42), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v20 = v38;
    if (!*(v38 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v20 = sub_2758A2A88(MEMORY[0x277D84F90]);
    if (!*(v20 + 16))
    {
LABEL_21:

      goto LABEL_22;
    }
  }

  v21 = sub_27586F8A0(1936487029, 0xE400000000000000);
  if ((v22 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_275864C94(*(v20 + 56) + 32 * v21, v42);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if (swift_dynamicCast())
  {
    v23 = v38;
    if (!*(v38 + 16))
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

LABEL_22:
  v23 = sub_2758A2A88(MEMORY[0x277D84F90]);
  if (!*(v23 + 16))
  {
LABEL_25:

    goto LABEL_26;
  }

LABEL_23:
  v24 = sub_27586F8A0(30771, 0xE200000000000000);
  if ((v25 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_275864C94(*(v23 + 56) + 32 * v24, v42);

  swift_dynamicCast();
LABEL_26:
  sub_2759B84F8();

  sub_2758B4BD0(v7, &v2[OBJC_IVAR____TtC14iCloudSettings9InlineTip_iconURL]);
  v38 = MEMORY[0x277D84F90];
  if (!*(a1 + 16) || (v26 = sub_27586F8A0(0x736E6F69746361, 0xE700000000000000), (v27 & 1) == 0))
  {

    goto LABEL_36;
  }

  sub_275864C94(*(a1 + 56) + 32 * v26, v42);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v33 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

  v28 = *(v40 + 16);
  if (v28)
  {
    v29 = (v40 + 32);
    v30 = type metadata accessor for Action();
    do
    {
      v31 = *v29;
      v32 = objc_allocWithZone(v30);
      swift_bridgeObjectRetain_n();
      Action.init(_:)(v31);
      MEMORY[0x277C84160]();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v34 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v33 = v38;

      ++v29;
      --v28;
    }

    while (v28);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

LABEL_37:
  *&v2[OBJC_IVAR____TtC14iCloudSettings9InlineTip_actions] = v33;
  v35 = type metadata accessor for InlineTip();
  v41.receiver = v2;
  v41.super_class = v35;
  return objc_msgSendSuper2(&v41, sel_init);
}

uint64_t Icons.assetId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings5Icons_assetId);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings5Icons_assetId + 8);

  return v1;
}

uint64_t Icons.sfSymbolId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings5Icons_sfSymbolId);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings5Icons_sfSymbolId + 8);

  return v1;
}

id sub_2759883B0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3))
  {
    v3 = *(a1 + *a3);

    v4 = sub_2759BA1C8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_275988434(char a1)
{
  result = 1936487029;
  switch(a1)
  {
    case 1:
      result = 0x64497465737361;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6C6F626D79536673;
      break;
    case 4:
      result = 30769;
      break;
    case 5:
      result = 30770;
      break;
    case 6:
      result = 30771;
      break;
    case 7:
      result = 0x78316B726164;
      break;
    case 8:
      result = 0x78326B726164;
      break;
    case 9:
      result = 0x78336B726164;
      break;
    case 10:
      result = 0x7831746E6974;
      break;
    case 11:
      result = 0x7832746E6974;
      break;
    case 12:
      result = 0x7833746E6974;
      break;
    default:
      return result;
  }

  return result;
}

id Icons.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(1936487029, 0xE400000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v27), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE78, &qword_2759CEB20), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v24;
  }

  else
  {
    v6 = sub_2758A30D4(MEMORY[0x277D84F90]);
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings5Icons_urls] = v6;
  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = sub_27586F8A0(0x64497465737361, 0xE700000000000000);
  if ((v9 & 1) == 0)
  {
    v7 = 0;
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  sub_275864C94(*(a1 + 56) + 32 * v8, v27);
  v10 = swift_dynamicCast();
  v7 = v24;
  v11 = v25;
  if (!v10)
  {
    v7 = 0;
    v11 = 0;
  }

LABEL_12:
  v12 = &v2[OBJC_IVAR____TtC14iCloudSettings5Icons_assetId];
  *v12 = v7;
  *(v12 + 1) = v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = sub_27586F8A0(0xD000000000000011, 0x80000002759E2FB0);
    if (v15)
    {
      sub_275864C94(*(a1 + 56) + 32 * v14, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2F8, &qword_2759C3760);
      v16 = swift_dynamicCast();
      v13 = v24;
      if (!v16)
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings5Icons_bundleIdentifiers] = v13;
  if (*(a1 + 16) && (v17 = sub_27586F8A0(0x6C6F626D79536673, 0xEA00000000006449), (v18 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v17, v27);

    v19 = swift_dynamicCast();
    v20 = v24;
    v21 = v25;
    if (!v19)
    {
      v20 = 0;
      v21 = 0;
    }
  }

  else
  {

    v20 = 0;
    v21 = 0;
  }

  v22 = &v2[OBJC_IVAR____TtC14iCloudSettings5Icons_sfSymbolId];
  *v22 = v20;
  *(v22 + 1) = v21;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for Icons();
  return objc_msgSendSuper2(&v26, sel_init);
}

id sub_27598884C(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = a1;
  a3();

  v10 = sub_2759B8508();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_2759B84B8();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t sub_275988AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = *(v3 + OBJC_IVAR____TtC14iCloudSettings5Icons_urls);
  if (v11)
  {
    if (*(v11 + 16))
    {
      v12 = sub_27586F8A0(a1, a2);
      if (v13)
      {
        v14 = (*(v11 + 56) + 16 * v12);
        v15 = *v14;
        v16 = v14[1];

        sub_2759B84F8();

        v17 = sub_2759B8508();
        v18 = *(v17 - 8);
        if ((*(v18 + 48))(v10, 1, v17) != 1)
        {
          (*(v18 + 32))(a3, v10, v17);
          return (*(v18 + 56))(a3, 0, 1, v17);
        }

        sub_27585A458(v10);
      }
    }
  }

  v19 = sub_2759B8508();
  return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
}

uint64_t ActionConfirmation.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings18ActionConfirmation_title);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings18ActionConfirmation_title + 8);

  return v1;
}

uint64_t ActionConfirmation.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings18ActionConfirmation_message);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings18ActionConfirmation_message + 8);

  return v1;
}

id ActionConfirmation.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v30), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v25;
    v7 = v27;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings18ActionConfirmation_title];
  *v8 = v6;
  *(v8 + 1) = v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000);
  if ((v11 & 1) == 0)
  {
    v9 = 0;
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  sub_275864C94(*(a1 + 56) + 32 * v10, v30);
  v12 = swift_dynamicCast();
  v9 = v25;
  v13 = v27;
  if (!v12)
  {
    v9 = 0;
    v13 = 0;
  }

LABEL_12:
  v14 = &v2[OBJC_IVAR____TtC14iCloudSettings18ActionConfirmation_message];
  *v14 = v9;
  *(v14 + 1) = v13;
  v26 = MEMORY[0x277D84F90];
  if (!*(a1 + 16) || (v15 = sub_27586F8A0(0x736E6F69746361, 0xE700000000000000), (v16 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_275864C94(*(a1 + 56) + 32 * v15, v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v22 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v17 = *(v28 + 16);
  if (v17)
  {
    v18 = (v28 + 32);
    v19 = type metadata accessor for Action();
    do
    {
      v20 = *v18;
      v21 = objc_allocWithZone(v19);
      swift_bridgeObjectRetain_n();
      Action.init(_:)(v20);
      MEMORY[0x277C84160]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v22 = v26;

      ++v18;
      --v17;
    }

    while (v17);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

LABEL_23:
  *&v2[OBJC_IVAR____TtC14iCloudSettings18ActionConfirmation_actions] = v22;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for ActionConfirmation();
  return objc_msgSendSuper2(&v29, sel_init);
}

id sub_2759892A4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_2759BA258();

  return v6;
}

uint64_t sub_275989328(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_275989388(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2759BA298();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_275989400(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_27598945C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

uint64_t SettingsFooterItem.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_identifier + 8);

  return v1;
}

void *SettingsFooterItem.action.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_action);
  v2 = v1;
  return v1;
}

id SettingsFooterItem.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v28), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v25;
    v7 = v26;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_title];
  *v8 = v6;
  *(v8 + 1) = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v28), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v25;
    v12 = v26;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v2[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_subtitle];
  *v13 = v11;
  *(v13 + 1) = v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = sub_27586F8A0(0x4965727574616566, 0xE900000000000064);
  if ((v16 & 1) == 0)
  {
    v14 = 0;
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  sub_275864C94(*(a1 + 56) + 32 * v15, v28);
  v17 = swift_dynamicCast();
  v14 = v25;
  v18 = v26;
  if (!v17)
  {
    v14 = 0;
    v18 = 0;
  }

LABEL_17:
  v19 = &v2[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_identifier];
  *v19 = v14;
  *(v19 + 1) = v18;
  if (!*(a1 + 16) || (v20 = sub_27586F8A0(0x6E6F69746361, 0xE600000000000000), (v21 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_275864C94(*(a1 + 56) + 32 * v20, v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v22 = sub_2758A2A88(MEMORY[0x277D84F90]);
    goto LABEL_23;
  }

  v22 = v25;
LABEL_23:
  v23 = objc_allocWithZone(type metadata accessor for Action());
  *&v2[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_action] = Action.init(_:)(v22);
  v27.receiver = v2;
  v27.super_class = type metadata accessor for SettingsFooterItem();
  return objc_msgSendSuper2(&v27, sel_init);
}

id SettingsFooterItem.__allocating_init(identifier:title:subtitle:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_identifier];
  *v16 = a1;
  *(v16 + 1) = a2;
  v17 = &v15[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_title];
  *v17 = a3;
  *(v17 + 1) = a4;
  v18 = &v15[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_subtitle];
  *v18 = a5;
  *(v18 + 1) = a6;
  *&v15[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_action] = a7;
  v20.receiver = v15;
  v20.super_class = v7;
  return objc_msgSendSuper2(&v20, sel_init);
}

id SettingsFooterItem.init(identifier:title:subtitle:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = &v7[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_identifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = &v7[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_title];
  *v9 = a3;
  *(v9 + 1) = a4;
  v10 = &v7[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_subtitle];
  *v10 = a5;
  *(v10 + 1) = a6;
  *&v7[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_action] = a7;
  v12.receiver = v7;
  v12.super_class = type metadata accessor for SettingsFooterItem();
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_275989B3C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = *(a1 + *a3 + 8);

  v11 = *(a1 + *a4 + 8);

  v12 = *(a1 + *a5 + 8);

  v13 = *(a1 + *a6);
}

id sub_275989BD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v5 = *(a1 + *a3);
  a5(a4);

  v6 = sub_2759BA3D8();

  return v6;
}

id SettingsFooter.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = MEMORY[0x277D84F90];
    v16 = MEMORY[0x277D84F90];
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = (a1 + 32);
      v6 = type metadata accessor for SettingsFooterItem();
      do
      {
        v7 = *v5;
        objc_allocWithZone(v6);

        SettingsFooterItem.init(_:)(v8);
        MEMORY[0x277C84160]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v9 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2759BA3F8();
        }

        sub_2759BA418();
        ++v5;
        --v4;
      }

      while (v4);
      v3 = v16;
    }

    *&v2[OBJC_IVAR____TtC14iCloudSettings14SettingsFooter_footerItems] = v3;
    v15.receiver = v2;
    v15.super_class = type metadata accessor for SettingsFooter();
    return objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v11 = sub_2759B89A8();
    __swift_project_value_buffer(v11, qword_2815ADE70);
    v12 = sub_2759B8988();
    v13 = sub_2759BA648();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_275819000, v12, v13, "No items in footer section.", v14, 2u);
      MEMORY[0x277C85860](v14, -1, -1);
    }

    type metadata accessor for SettingsFooter();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t InformationCard.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings15InformationCard_message);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings15InformationCard_message + 8);

  return v1;
}

id InformationCard.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16) || (v4 = sub_27586F8A0(0x6567617373656DLL, 0xE700000000000000), (v5 & 1) == 0))
  {

    goto LABEL_6;
  }

  sub_275864C94(*(a1 + 56) + 32 * v4, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v6 = 0;
    v7 = 0xE000000000000000;
    goto LABEL_7;
  }

  v6 = v10;
  v7 = v11;
LABEL_7:
  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings15InformationCard_message];
  *v8 = v6;
  *(v8 + 1) = v7;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for InformationCard();
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_27598A0F4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for InlineTip()
{
  result = qword_280A12750;
  if (!qword_280A12750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_getTm_0@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

void sub_27598A66C()
{
  sub_2758BB454();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_27598AB3C()
{
  v0 = sub_2759BAA48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27598AC44()
{
  v1 = v0;
  v2 = sub_2759B88F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[7])
  {
    v7 = qword_280A0E350;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_280A238D0);
    v9 = sub_2759B8988();
    v10 = sub_2759BA658();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2758937B8(0xD000000000000024, 0x80000002759E3D60, &v17);
      _os_log_impl(&dword_275819000, v9, v10, "%s signpost started before previous was ended", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    sub_2758D85BC("iOSManageStorageDrilldownLoad", 29, 2);
  }

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_2759B8918();
  sub_2759B88D8();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v13 = sub_2758D88D0("iOSManageStorageDrilldownLoad", 29, 2, v6);
  (*(v3 + 8))(v6, v2);
  v14 = v1[7];
  v1[7] = v13;
}

void sub_27598AEBC()
{
  if (v0[7])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

    sub_2758D85BC("iOSManageStorageDrilldownLoad", 29, 2);

    v1 = v0[7];
    v0[7] = 0;
  }

  else
  {
    if (qword_280A0E350 != -1)
    {
      swift_once();
    }

    v2 = sub_2759B89A8();
    __swift_project_value_buffer(v2, qword_280A238D0);
    oslog = sub_2759B8988();
    v3 = sub_2759BA658();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_2758937B8(0xD000000000000024, 0x80000002759E3D10, &v7);
      _os_log_impl(&dword_275819000, oslog, v3, "Unbalanced call to %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x277C85860](v5, -1, -1);
      MEMORY[0x277C85860](v4, -1, -1);
    }
  }
}

uint64_t sub_27598B078()
{
  v1 = v0;
  v2 = sub_2759B88F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[8])
  {
    v7 = qword_280A0E350;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_280A238D0);
    v9 = sub_2759B8988();
    v10 = sub_2759BA658();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2758937B8(0xD000000000000023, 0x80000002759E3E40, &v17);
      _os_log_impl(&dword_275819000, v9, v10, "%s signpost started before previous was ended", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    sub_2758D85BC("iOSManageStorageLoad", 20, 2);
  }

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_2759B8918();
  sub_2759B88D8();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v13 = sub_2758D88D0("iOSManageStorageLoad", 20, 2, v6);
  (*(v3 + 8))(v6, v2);
  v14 = v1[8];
  v1[8] = v13;
}

void sub_27598B2F0()
{
  if (v0[8])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

    sub_2758D85BC("iOSManageStorageLoad", 20, 2);

    v1 = v0[8];
    v0[8] = 0;
  }

  else
  {
    if (qword_280A0E350 != -1)
    {
      swift_once();
    }

    v2 = sub_2759B89A8();
    __swift_project_value_buffer(v2, qword_280A238D0);
    oslog = sub_2759B8988();
    v3 = sub_2759BA658();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_2758937B8(0xD000000000000023, 0x80000002759E3DF0, &v7);
      _os_log_impl(&dword_275819000, oslog, v3, "Unbalanced call to %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x277C85860](v5, -1, -1);
      MEMORY[0x277C85860](v4, -1, -1);
    }
  }
}

uint64_t sub_27598B4AC()
{
  v1 = v0;
  v2 = sub_2759B88F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[9])
  {
    v7 = qword_280A0E350;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_280A238D0);
    v9 = sub_2759B8988();
    v10 = sub_2759BA658();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2758937B8(0xD00000000000001ALL, 0x80000002759E3DD0, &v17);
      _os_log_impl(&dword_275819000, v9, v10, "%s signpost started before previous was ended", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    sub_2758D85BC("iOSDriveDeleteAction", 20, 2);
  }

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_2759B8918();
  sub_2759B88D8();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v13 = sub_2758D88D0("iOSDriveDeleteAction", 20, 2, v6);
  (*(v3 + 8))(v6, v2);
  v14 = v1[9];
  v1[9] = v13;
}

void sub_27598B724()
{
  if (v0[9])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

    sub_2758D85BC("iOSDriveDeleteAction", 20, 2);

    v1 = v0[9];
    v0[9] = 0;
  }

  else
  {
    if (qword_280A0E350 != -1)
    {
      swift_once();
    }

    v2 = sub_2759B89A8();
    __swift_project_value_buffer(v2, qword_280A238D0);
    oslog = sub_2759B8988();
    v3 = sub_2759BA658();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_2758937B8(0xD00000000000001BLL, 0x80000002759E3D90, &v7);
      _os_log_impl(&dword_275819000, oslog, v3, "Unbalanced call to %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x277C85860](v5, -1, -1);
      MEMORY[0x277C85860](v4, -1, -1);
    }
  }
}

uint64_t sub_27598B8E0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_27598B970(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 49);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_27598B9C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 1;
    }
  }

  return result;
}

double sub_27598BA28(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char *a5)
{
  v7 = sub_27598BAE4(a1, a2 & 1, a3, a4, a5);
  if (a2)
  {
    v8 = *(v7 + 2);
    if (v8)
    {
      v9 = (v7 + 40);
      v10 = 0.0;
      v11 = *(v7 + 2);
      do
      {
        v12 = *v9;
        v9 += 4;
        v13 = v12;
        if (v10 <= v12)
        {
          v10 = v13;
        }

        --v11;
      }

      while (v11);
      goto LABEL_9;
    }

    v10 = 0.0;
  }

  else
  {
    v10 = *&a1;
    v8 = *(v7 + 2);
    if (v8)
    {
LABEL_9:
      v14 = &v7[32 * v8];
      v15 = *(v14 + 2);
      v16 = *(v14 + 3);

      v19 = v15 + v16;
      goto LABEL_12;
    }
  }

  v19 = 0.0;
LABEL_12:

  return CGPointMake(v17, v10, v19, v18);
}

char *sub_27598BAE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char *a5)
{
  v185 = sub_2759B8E58();
  v180 = *(v185 - 8);
  v10 = *(v180 + 8);
  v11 = MEMORY[0x28223BE20](v185);
  v182 = &v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v184 = &v178 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v181 = &v178 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v183 = &v178 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v189 = &v178 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v188 = &v178 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v178 - v24;
  MEMORY[0x28223BE20](v23);
  v186 = &v178 - v26;
  v199 = type metadata accessor for WrappingHStackLayout.RowItem();
  v209 = *(v199 - 8);
  v27 = *(v209 + 64);
  v28 = MEMORY[0x28223BE20](v199);
  *&v215 = &v178 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v214 = &v178 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v210 = &v178 - v33;
  MEMORY[0x28223BE20](v32);
  v179 = &v178 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12768, &qword_2759CEF20);
  v207 = *(v35 - 8);
  v36 = *(v207 + 8);
  MEMORY[0x28223BE20](v35);
  v202 = &v178 - v37;
  v204 = sub_2759B8F98();
  v197 = *(v204 - 8);
  v38 = *(v197 + 64);
  v39 = MEMORY[0x28223BE20](v204);
  v213 = &v178 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v191 = &v178 - v42;
  MEMORY[0x28223BE20](v41);
  v211 = (&v178 - v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12770, &qword_2759CEF28);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v48 = &v178 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v212 = &v178 - v49;
  v50 = sub_2759B9028();
  v206 = *(v50 - 8);
  v51 = *(v206 + 64);
  MEMORY[0x28223BE20](v50);
  v53 = &v178 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12778, &qword_2759CEF30);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v200 = (&v178 - v56);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12780, &qword_2759CEF38);
  v57 = *(*(v201 - 8) + 64);
  MEMORY[0x28223BE20](v201);
  v208 = &v178 - v58;
  if (a2)
  {
    v59 = INFINITY;
  }

  else
  {
    v59 = *&a1;
  }

  v60 = sub_27598DAE8(&qword_280A0EBB0);
  v61 = a5;
  v62 = sub_2759BA5C8();
  v193 = v25;
  v195 = v48;
  v187 = v50;
  v203 = v60;
  if (v62)
  {
    v63 = v62;
    v64 = v197;
    v216 = MEMORY[0x277D84F90];
    sub_275950A70(0, v62 & ~(v62 >> 63), 0);
    v65 = v216;
    sub_2759BA5B8();
    if (v63 < 0)
    {
      goto LABEL_85;
    }

    v66 = v60;
    v194 = v53;
    v198 = v35;
    v67 = (v64 + 16);
    v68 = (v64 + 8);
    do
    {
      v69 = sub_2759BA5F8();
      v70 = v211;
      v71 = v66;
      v72 = v204;
      (*v67)(v211);
      v69(&v220, 0);
      sub_2759B90F8();
      LOBYTE(v220) = v73 & 1;
      v219 = v74 & 1;
      sub_2759B8F68();
      v76 = v75;
      v78 = v77;
      (*v68)(v70, v72);
      v216 = v65;
      v80 = *(v65 + 2);
      v79 = *(v65 + 3);
      if (v80 >= v79 >> 1)
      {
        sub_275950A70((v79 > 1), v80 + 1, 1);
        v65 = v216;
      }

      *(v65 + 2) = v80 + 1;
      v81 = &v65[16 * v80];
      *(v81 + 4) = v76;
      *(v81 + 5) = v78;
      sub_2759BA5E8();
      --v63;
      v66 = v71;
    }

    while (v63);
    v205 = v65;
    v35 = v198;
    v48 = v195;
    v82 = v207;
    v53 = v194;
  }

  else
  {
    v205 = MEMORY[0x277D84F90];
    v82 = v207;
  }

  v83 = v206;
  v84 = v200;
  v85 = v187;
  (*(v206 + 16))(v200, v61, v187);
  (*(v83 + 32))(v53, v84, v85);
  sub_27598DAE8(&qword_280A12788);
  v86 = v208;
  sub_2759BA398();
  v190 = *(v201 + 36);
  *&v86[v190] = 0;
  v61 = 0;
  v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10DF0, &qword_2759C9250) + 36);
  v206 = v197 + 16;
  v207 = (v197 + 32);
  v201 = (v82 + 56);
  v200 = (v82 + 48);
  v192 = v180 + 8;
  v198 = v205 + 32;
  v197 += 8;
  v5 = 0.0;
  v178 = xmmword_2759C17A0;
  v194 = MEMORY[0x277D84F90];
  v6 = 0.0;
  v211 = MEMORY[0x277D84F90];
  v53 = v179;
  v60 = v204;
  while (1)
  {
    sub_2759BA5D8();
    if (*&v86[v87] == v220)
    {
      (*v201)(v48, 1, 1, v35);
    }

    else
    {
      v88 = sub_2759BA5F8();
      v89 = v191;
      (*v206)(v191);
      v88(&v220, 0);
      a5 = v208;
      sub_2759BA5E8();
      v90 = *(v35 + 48);
      v91 = v202;
      *v202 = v61;
      (*v207)(&v91[v90], v89, v60);
      if (__OFADD__(v61++, 1))
      {
        goto LABEL_80;
      }

      *&a5[v190] = v61;
      v48 = v195;
      sub_27589F26C(v202, v195, &qword_280A12768, &qword_2759CEF20);
      (*v201)(v48, 0, 1, v35);
    }

    v93 = v212;
    sub_27589F26C(v48, v212, &qword_280A12770, &qword_2759CEF28);
    v94 = (*v200)(v93, 1, v35);
    v95 = v211;
    if (v94 == 1)
    {
      break;
    }

    v96 = *v212;
    (*v207)(v213, v212 + *(v35 + 48), v60);
    v97 = v95[2];
    if (v97)
    {
      sub_27598D5D8(v95 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * (v97 - 1), v53);
      if (*(v196 + 32))
      {
        v98 = v186;
        sub_2759B8F88();
        v99 = v61;
        v100 = v193;
        sub_2759B8F88();
        sub_2759B8E38();
        v102 = v101;
        v103 = v35;
        v104 = v185;
        v105 = *v192;
        v106 = v100;
        v61 = v99;
        (*v192)(v106, v185);
        v105(v98, v104);
        v35 = v103;
        v48 = v195;
        v60 = v204;
      }

      else
      {
        v102 = *(v196 + 24);
      }

      a5 = v205;
      sub_27598D63C(v53);
    }

    else
    {
      v102 = 0.0;
      a5 = v205;
    }

    if ((v96 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v96 >= *(a5 + 2))
    {
      goto LABEL_79;
    }

    v107 = &v198[16 * v96];
    v108 = *v107;
    v109 = v102 + v6 + *v107;
    if (v109 > v59)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_275870F54(0, *(v194 + 2) + 1, 1, v194);
      }

      v120 = *(v194 + 2);
      v119 = *(v194 + 3);
      if (v120 >= v119 >> 1)
      {
        v194 = sub_275870F54((v119 > 1), v120 + 1, 1, v194);
      }

      v121 = v194;
      *(v194 + 2) = v120 + 1;
      v122 = &v121[32 * v120];
      *(v122 + 4) = v211;
      *(v122 + 5) = v6;
      *(v122 + 6) = v5;
      *(v122 + 7) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECD0, &qword_2759C26B8);
      v123 = *(v209 + 72);
      v124 = (*(v209 + 80) + 32) & ~*(v209 + 80);
      v125 = swift_allocObject();
      *(v125 + 16) = v178;
      v211 = v125;
      v126 = v125 + v124;
      v127 = *v107;
      v128 = *(v107 + 1);
      v129 = v213;
      v60 = v204;
      (*v206)(v126, v213, v204);
      v130 = v199;
      *(v126 + *(v199 + 20)) = 0;
      v131 = (v126 + *(v130 + 24));
      *v131 = v127;
      *(v131 + 1) = v128;
      v6 = *v107;
      v5 = v107[1];
      (*v197)(v129, v60);
      v53 = v179;
      v48 = v195;
    }

    else
    {
      v110 = v6 + v102;
      v111 = v107[1];
      if (v5 <= v111)
      {
        v5 = v107[1];
      }

      v112 = v210;
      (*v206)(v210, v213, v60);
      v113 = v199;
      *(v112 + *(v199 + 20)) = v110;
      v114 = (v112 + *(v113 + 24));
      *v114 = v108;
      v114[1] = v111;
      v115 = v211;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = sub_275871060(0, v115[2] + 1, 1, v115);
      }

      v211 = v115;
      v117 = v115[2];
      v116 = v115[3];
      if (v117 >= v116 >> 1)
      {
        v211 = sub_275871060(v116 > 1, v117 + 1, 1, v211);
      }

      (*v197)(v213, v60);
      v118 = v211;
      v211[2] = v117 + 1;
      sub_27598DB94(v210, v118 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v117);
      v6 = v109;
    }

    v86 = v208;
  }

  v132 = v211;
  a5 = v180;
  sub_27598DB2C(v208);

  if (v132[2])
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v184;
    v60 = v185;
    v61 = v186;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_42;
    }

    goto LABEL_86;
  }

  v136 = *(v194 + 2);
  v53 = v184;
  v60 = v185;
  v61 = v186;
  if (v136 < 2)
  {
    goto LABEL_45;
  }

LABEL_56:
  v5 = *(v196 + 40);
  LODWORD(v149) = *(v196 + 48);
  v207 = a5 + 16;
  v213 = a5 + 32;
  v150 = 1;
  v151 = v192;
  v202 = (v192 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v139 = v136;
  a5 = v183;
  v140 = v194;
  v204 = v136;
  LODWORD(v203) = v149;
  while (v150 <= v139)
  {
    if (v150 >= v139)
    {
      goto LABEL_82;
    }

    v152 = &v140[32 * v150];
    v153 = *(v152 + 2);
    v6 = *(v152 + 3);
    v154 = v5;
    if (v149)
    {
      v206 = v150;
      v194 = v140;
      v155 = *(v152 + 4);
      v156 = *v152;

      v210 = v156;

      v157 = v189;
      sub_2759B8E18();
      v205 = *v207;
      (v205)(a5, v157, v60);
      v158 = *(v155 + 2);
      if (v158)
      {
        v159 = (*(v209 + 80) + 32) & ~*(v209 + 80);
        v208 = v155;
        v160 = v155 + v159;
        v161 = a5;
        v162 = v61;
        v163 = v60;
        v212 = *(v209 + 72);
        v164 = v193;
        v166 = v213;
        v165 = v214;
        do
        {
          sub_27598D5D8(v160, v165);
          sub_2759B8F88();
          sub_2759B97D8();
          sub_2759B8E28();
          v165 = v214;
          v167 = *v151;
          (*v151)(v164, v163);
          sub_27598D63C(v165);
          v167(v161, v163);
          (*v166)(v161, v162, v163);
          v160 += v212;
          --v158;
        }

        while (v158);

        a5 = v161;
        v53 = v184;
        v60 = v163;
        v61 = v162;
        v136 = v204;
      }

      else
      {

        v167 = *v151;
      }

      v167(v189, v60);
      v208 = *v213;
      (v208)(v188, a5, v60);
      sub_2759B8E18();
      v168 = v182;
      (v205)(v182, v53, v60);
      v169 = *(v210 + 16);
      if (v169)
      {
        v170 = v210 + ((*(v209 + 80) + 32) & ~*(v209 + 80));
        v171 = v168;
        v212 = *(v209 + 72);
        v172 = v193;
        v173 = v215;
        v174 = v208;
        do
        {
          sub_27598D5D8(v170, v173);
          sub_2759B8F88();
          sub_2759B97D8();
          sub_2759B8E28();
          v173 = v215;
          v167(v172, v60);
          sub_27598D63C(v173);
          v167(v171, v60);
          (v174)(v171, v61, v60);
          v170 += v212;
          --v169;
        }

        while (v169);

        v168 = v171;
        v53 = v184;
        v136 = v204;
      }

      else
      {
      }

      v167(v53, v60);
      v149 = v181;
      (v208)(v181, v168, v60);
      v175 = v188;
      sub_2759B8E38();
      v154 = v176;
      v167(v149, v60);
      v167(v175, v60);
      a5 = v183;
      v140 = v194;
      v151 = v192;
      LOBYTE(v149) = v203;
      v150 = v206;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v140 = sub_275893F6C(v140);
    }

    v139 = *(v140 + 2);
    if (v150 >= v139)
    {
      goto LABEL_83;
    }

    *&v140[32 * v150++ + 56] = v6 + v153 + v154;
    if (v150 == v136)
    {
      goto LABEL_46;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    v194 = sub_275870F54(0, *(v194 + 2) + 1, 1, v194);
LABEL_42:
    v135 = *(v194 + 2);
    v134 = *(v194 + 3);
    v136 = v135 + 1;
    if (v135 >= v134 >> 1)
    {
      v194 = sub_275870F54((v134 > 1), v135 + 1, 1, v194);
    }

    v137 = v194;
    *(v194 + 2) = v136;
    v138 = &v137[32 * v135];
    *(v138 + 4) = v211;
    *(v138 + 5) = v6;
    *(v138 + 6) = v5;
    *(v138 + 7) = 0;
    if (v136 >= 2)
    {
      goto LABEL_56;
    }

LABEL_45:
    v139 = v136;
    v140 = v194;
LABEL_46:
    if ((*(v196 + 49) & 1) == 0)
    {

      return v140;
    }

    if (!v139)
    {
      break;
    }

    v223 = MEMORY[0x277D84F90];
    sub_275950A50(0, v139, 0);
    v60 = 0;
    a5 = v223;
    v141 = v140 + 56;
    while (v60 < *(v140 + 2))
    {
      v142 = *v141;
      v143 = *(v141 - 1);
      v216 = *(v141 - 3);
      v217 = v143;
      v218 = v142;
      sub_27598D698(&v216, &v220, v59);
      v144 = v220;
      v145 = v221;
      v146 = v222;
      v223 = a5;
      v53 = *(a5 + 2);
      v147 = *(a5 + 3);
      if (v53 >= v147 >> 1)
      {
        v215 = v221;
        sub_275950A50((v147 > 1), (v53 + 1), 1);
        v145 = v215;
        a5 = v223;
      }

      *(a5 + 2) = v53 + 1;
      v148 = &a5[32 * v53];
      *(v148 + 4) = v144;
      ++v60;
      *(v148 + 40) = v145;
      *(v148 + 7) = v146;
      v141 += 4;
      if (v139 == v60)
      {

        return a5;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_27598D13C(uint64_t a1, char a2, uint64_t a3, char a4, char *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v52 = type metadata accessor for WrappingHStackLayout.RowItem();
  v51 = *(v52 - 8);
  v19 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_27598BAE4(a1, a2 & 1, v22, v23, a5);
  if (*(v9 + 16) == 1)
  {
    sub_2759BA028();
  }

  else
  {
    v25 = *v9;
    v26 = v9[1];
  }

  result = sub_27592E0F0();
  v54 = *(v24 + 2);
  if (v54)
  {
    v30 = v28;
    v31 = v29;
    v50 = a3;
    v32 = 0;
    v53 = v24 + 32;
    v33 = a2 & 1;
    v34 = a4 & 1;
    v49 = v24;
    while (v32 < *(v24 + 2))
    {
      v35 = &v53[32 * v32];
      result = *v35;
      v36 = *(*v35 + 16);
      if (v36)
      {
        v56 = v32;
        v37 = *(v35 + 1);
        v60 = *(v35 + 2);
        v61 = v37;
        v59 = *(v35 + 3);
        v38 = *(v52 + 20);
        v57 = *(v52 + 24);
        v58 = v38;
        v39 = v51;
        v40 = result + ((*(v51 + 80) + 32) & ~*(v51 + 80));
        v55 = result;

        v41 = a1;
        v42 = *(v39 + 72);
        do
        {
          sub_27598D5D8(v40, v21);
          v43 = *&v21[v58];
          v65.origin.x = a6;
          v65.origin.y = a7;
          v65.size.width = a8;
          v65.size.height = a9;
          v44 = v43 + CGRectGetMinX(v65);
          v66.origin.x = a6;
          v66.origin.y = a7;
          v66.size.width = a8;
          v66.size.height = a9;
          v45 = v44 + v30 * (CGRectGetWidth(v66) - v61);
          v67.origin.x = a6;
          v67.origin.y = a7;
          v67.size.width = a8;
          v67.size.height = a9;
          MinY = CGRectGetMinY(v67);
          CGPointMake(v47, v45, v59 + MinY + v31 * (v60 - *&v21[v57 + 8]), v60);
          sub_2759BA0B8();
          v63 = v33;
          v62 = v34;
          sub_2759B8F78();
          sub_27598D63C(v21);
          v40 += v42;
          --v36;
        }

        while (v36);

        a1 = v41;
        v24 = v49;
        v32 = v56;
      }

      if (++v32 == v54)
      {
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

void (*sub_27598D4AC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2759B8D18();
  return sub_27586D848;
}

unint64_t sub_27598D538()
{
  result = qword_280A12760;
  if (!qword_280A12760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12760);
  }

  return result;
}

uint64_t type metadata accessor for WrappingHStackLayout.RowItem()
{
  result = qword_280A12790;
  if (!qword_280A12790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27598D5D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WrappingHStackLayout.RowItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27598D63C(uint64_t a1)
{
  v2 = type metadata accessor for WrappingHStackLayout.RowItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

size_t sub_27598D698@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v5 = v3;
  v47 = a2;
  v48 = type metadata accessor for WrappingHStackLayout.RowItem();
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v48);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v50 = *(a1 + 8);
  v13 = *(a1 + 24);
  v14 = v12[2];
  v15 = MEMORY[0x277D84F90];
  v49 = v8;
  if (v14)
  {
    v46 = v5;
    v53 = MEMORY[0x277D84F90];
    swift_bridgeObjectRetain_n();
    sub_275950AB0(0, v14, 0);
    v16 = v53;
    v17 = v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v18 = *(v8 + 72);
    do
    {
      sub_27598D5D8(v17, v11);
      v52 = 0;
      v51 = 0;
      sub_2759B8F68();
      v4 = v19;
      sub_27598D63C(v11);
      v53 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_275950AB0((v20 > 1), v21 + 1, 1);
        v16 = v53;
      }

      *(v16 + 16) = v21 + 1;
      *(v16 + 8 * v21 + 32) = v4;
      v17 += v18;
      --v14;
    }

    while (v14);

    v15 = MEMORY[0x277D84F90];
    v22 = *(v16 + 16);
    if (v22)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
    v22 = *(MEMORY[0x277D84F90] + 16);
    if (v22)
    {
LABEL_7:
      v53 = v15;
      sub_275950A90(0, v22, 0);
      v23 = v53;
      v24 = *(v53 + 16);
      v25 = 32;
      v4 = INFINITY;
      do
      {
        v26 = *(v16 + v25);
        v53 = v23;
        v27 = *(v23 + 24);
        if (v24 >= v27 >> 1)
        {
          sub_275950A90((v27 > 1), v24 + 1, 1);
          v23 = v53;
        }

        *(v23 + 16) = v24 + 1;
        *(v23 + v24 + 32) = v26 == INFINITY;
        v25 += 8;
        ++v24;
        --v22;
      }

      while (v22);

      goto LABEL_14;
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_14:
  v29 = a3 - *&v50;
  v30 = *(v23 + 16);
  v31 = v49;
  if (!v30)
  {
    goto LABEL_28;
  }

  v32 = 0;
  v33 = 0;
  v34 = v23 + 32;
  do
  {
    v35 = *(v23 + v32 + 32);
    v36 = __OFADD__(v33, v35);
    v33 += v35;
    if (v36)
    {
      __break(1u);
      goto LABEL_37;
    }

    ++v32;
  }

  while (v30 != v32);
  if (v33 <= 0)
  {
LABEL_28:

    v41 = v12[2];
    v34 = v48;
    if (v41 >= 2)
    {
      v4 = (v41 - 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        goto LABEL_30;
      }

      goto LABEL_39;
    }

    goto LABEL_35;
  }

  v37 = v12[2];
  v38 = v48;
  if (!v37)
  {
LABEL_34:

LABEL_35:
    v45 = v47;
    *v47 = v12;
    *(v45 + 1) = v50;
    v45[3] = v13;
    return result;
  }

  if (v37 <= v30)
  {
    v39 = 0;
    v29 = v29 / v33;
    v4 = 0.0;
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_275893F80(v12);
      }

      if (v39 >= v12[2])
      {
        while (1)
        {
          __break(1u);
LABEL_39:
          result = sub_275893F80(v12);
          v12 = result;
LABEL_30:
          v42 = 1;
          while (1)
          {
            v43 = v12[2];
            if (v42 >= v43)
            {
              break;
            }

            v44 = v12 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v42;
            *(v44 + *(v34 + 20)) = v29 / v4 * v42++ + *(v44 + *(v34 + 20));
            if (v42 >= v43)
            {
              goto LABEL_35;
            }
          }

LABEL_37:
          __break(1u);
        }
      }

      v40 = v12 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v39;
      *(v40 + *(v38 + 20)) = v4 + *(v40 + *(v38 + 20));
      if (*(v34 + v39) == 1)
      {
        v4 = v29 + v4;
        *(v40 + *(v38 + 24)) = v29 + *(v40 + *(v38 + 24));
      }

      ++v39;
    }

    while (v37 != v39);
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t sub_27598DAE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2759B9028();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27598DB2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12780, &qword_2759CEF38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27598DB94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WrappingHStackLayout.RowItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_27598DC68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_27598DCB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_27598DD18(uint64_t *a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  if (*(v1 + 56) == 1)
  {
    v9 = v8;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = *(v1 + 48);

    sub_2759BA658();
    v11 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();
    sub_27595CCC4(v8, 0);
    (*(v4 + 8))(v7, v3);
    v8 = v18;
    if (!v18)
    {
LABEL_7:
      v16 = 0;
      goto LABEL_8;
    }
  }

  v12 = *&v8[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage];
  v13 = v12;

  if (!v12)
  {
    goto LABEL_7;
  }

  v14 = v13;
  sub_2759B9C98();
  v15 = *(v1 + 16);
  v16 = sub_2759B9CA8();

LABEL_8:
  *a1 = v16;
}

uint64_t sub_27598DED0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x646F4D6567616D69;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xEE00737265696669;
  }

  if (*a2)
  {
    v6 = 0x646F4D6567616D69;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0xEE00737265696669;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2759BAAC8();
  }

  return v9 & 1;
}

uint64_t sub_27598DF78()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27598DFFC()
{
  *v0;
  sub_2759BA328();
}

uint64_t sub_27598E06C()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27598E0EC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2759BAA48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_27598E14C(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x646F4D6567616D69;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xEE00737265696669;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_27598E18C()
{
  if (*v0)
  {
    result = 0x646F4D6567616D69;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_27598E1C8@<X0>(char *a1@<X8>)
{
  v2 = sub_2759BAA48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_27598E22C(uint64_t a1)
{
  v2 = sub_27598EC48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27598E268(uint64_t a1)
{
  v2 = sub_27598EC48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27598E2A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v47 = sub_2759B8C88();
  v42 = *(v47 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2759B85A8();
  v45 = *(v43 - 8);
  v5 = v45[8];
  MEMORY[0x28223BE20](v43);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A127C0, &qword_2759CF168);
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v56[3] = MEMORY[0x277D84F90];
  sub_2759B8C08();
  sub_27598EC9C(&qword_280A0E6E0, MEMORY[0x277D23330]);
  v49 = sub_2759B9168();
  v56[4] = v49;
  v56[5] = v12;
  v56[6] = swift_getKeyPath();
  v57 = 0;
  v54 = &type metadata for DefaultApplicationRecordProvider;
  v55 = &off_28847F8A0;
  v13 = type metadata accessor for DefaultIconLoader();
  v14 = objc_allocWithZone(v13);
  __swift_mutable_project_boxed_opaque_existential_1(&v53, &type metadata for DefaultApplicationRecordProvider);
  v52[3] = &type metadata for DefaultApplicationRecordProvider;
  v52[4] = &off_28847F8A0;
  sub_27586E058(v52, v14 + OBJC_IVAR___ICSDefaultIconLoader_applicationRecordProvider);
  v51.receiver = v14;
  v51.super_class = v13;
  v15 = objc_msgSendSuper2(&v51, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  v58[3] = v13;
  v58[4] = &off_28847F800;
  v58[0] = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27598EC48();
  v17 = v50;
  sub_2759BAC18();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v18 = v45;
  LOBYTE(v53) = 0;
  v19 = sub_2759BAA58();
  v21 = v8;
  v41 = v11;
  if (!v20)
  {
    v23 = v7;
    sub_2759B8598();
    v24 = sub_2759B8588();
    v26 = v25;
    (v18[1])(v23, v43);
    v20 = v26;
    v19 = v24;
  }

  v27 = v48;
  v56[0] = v19;
  v56[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FD28, &qword_2759C56F8);
  LOBYTE(v53) = 1;
  sub_2758CD9FC();
  sub_2759BAA68();
  v28 = v52[0];
  v29 = MEMORY[0x277D84F90];
  v30 = v46;
  if (v52[0])
  {
    v31 = *(v52[0] + 16);
    if (v31)
    {
      v43 = v21;
      v45 = a1;
      v59 = MEMORY[0x277D84F90];
      sub_2759509F0(0, v31, 0);
      v29 = v59;
      v32 = v42 + 16;
      v50 = *(v42 + 16);
      v33 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v42 = v28;
      v34 = v28 + v33;
      v49 = *(v32 + 56);
      v35 = (v32 - 8);
      v36 = v47;
      do
      {
        v37 = v32;
        v50(v27, v34, v36);
        sub_2759B8C78();
        v36 = v47;
        (*v35)(v27, v47);
        v59 = v29;
        v39 = *(v29 + 16);
        v38 = *(v29 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_2759509F0((v38 > 1), v39 + 1, 1);
          v36 = v47;
          v29 = v59;
        }

        *(v29 + 16) = v39 + 1;
        sub_275827D1C(&v53, v29 + 40 * v39 + 32);
        v34 += v49;
        --v31;
        v32 = v37;
        v27 = v48;
      }

      while (v31);

      v40 = v44;
      a1 = v45;
      v21 = v43;
      v30 = v46;
      goto LABEL_15;
    }
  }

  v40 = v44;
LABEL_15:
  (*(v30 + 8))(v41, v21);
  v56[2] = v29;
  sub_27598ECE4(v56, v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_27598ED1C(v56);
}

uint64_t sub_27598E91C(uint64_t a1, uint64_t a2)
{
  v4 = sub_27592DF2C();

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_27598E970(uint64_t a1, uint64_t a2)
{
  v4 = sub_27598EAF0();

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_27598E9BC(uint64_t a1)
{
  v2 = sub_27598EAF0();

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_27598EA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_27598EBF4();

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_27598EA94()
{
  sub_27592DF2C();
  sub_27598EAF0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_27598EAF0()
{
  result = qword_280A127A0;
  if (!qword_280A127A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127A0);
  }

  return result;
}

unint64_t sub_27598EB48()
{
  result = qword_280A127A8;
  if (!qword_280A127A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127A8);
  }

  return result;
}

unint64_t sub_27598EBA0()
{
  result = qword_280A127B0;
  if (!qword_280A127B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127B0);
  }

  return result;
}

unint64_t sub_27598EBF4()
{
  result = qword_280A127B8;
  if (!qword_280A127B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127B8);
  }

  return result;
}

unint64_t sub_27598EC48()
{
  result = qword_280A127C8;
  if (!qword_280A127C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127C8);
  }

  return result;
}

uint64_t sub_27598EC9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27598ED5C()
{
  result = qword_280A127D0;
  if (!qword_280A127D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A127D8, &qword_2759CF1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127D0);
  }

  return result;
}

unint64_t sub_27598EDDC()
{
  result = qword_280A127E0;
  if (!qword_280A127E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127E0);
  }

  return result;
}

unint64_t sub_27598EE34()
{
  result = qword_280A127E8;
  if (!qword_280A127E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127E8);
  }

  return result;
}

unint64_t sub_27598EE8C()
{
  result = qword_280A127F0;
  if (!qword_280A127F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127F0);
  }

  return result;
}

uint64_t sub_27598F76C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled);
  return result;
}

void ManageStorageAppsListViewModel.loadApp(app:refreshDataModels:from:)(uint64_t *a1, int a2, char *a3)
{
  v4 = v3;
  v87 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v86 - v9;
  v11 = *a3;
  v12 = *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController];
  sub_275920694(&v91);
  v13 = v91;
  v14 = v92;
  v15 = v93;
  sub_27591E640(v91, v92, v93);
  sub_2759BA4D8();
  v16 = sub_2759BA518();
  v17 = *(v16 - 8);
  v89 = *(v17 + 56);
  v90 = v16;
  v88 = v17 + 56;
  (v89)(v10, 0, 1);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v18;
  *(v19 + 40) = xmmword_2759C3450;
  *(v19 + 56) = 10;
  *(v19 + 57) = v11;
  *(v19 + 58) = 0;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 80) = v13;
  *(v19 + 88) = v14;
  *(v19 + 96) = v15;
  sub_27591E640(v13, v14, v15);
  sub_275931D20(0, 0, v10, &unk_2759C4530, v19);

  sub_27589F7F0(v13, v14, v15);
  sub_27589F7F0(v13, v14, v15);
  sub_27586BF04(v10, &unk_280A0E510, &qword_2759C33C0);
  swift_getKeyPath();
  v91 = a1;
  sub_275996FD8(&qword_280A12800, type metadata accessor for ManageStorageAppViewModel);
  sub_2759B8638();

  if (*(a1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading) == 1)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v20 = sub_2759B89A8();
    __swift_project_value_buffer(v20, qword_280A238A0);
    v21 = a1;
    v22 = sub_2759B8988();
    v23 = sub_2759BA668();

    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_7;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v91 = v25;
    *v24 = 136315138;
    v26 = (*(v21 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
    v27 = *v26;
    v28 = v26[1];

    v29 = sub_2758937B8(v27, v28, &v91);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_275819000, v22, v23, "ManageStorageAppsListViewModel.loadApp already loading %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x277C85860](v25, -1, -1);
    v30 = v24;
LABEL_6:
    MEMORY[0x277C85860](v30, -1, -1);
LABEL_7:

    return;
  }

  v31 = v4;
  if (v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_isFetchingAppsList] == 1)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v32 = sub_2759B89A8();
    __swift_project_value_buffer(v32, qword_280A238A0);
    v33 = a1;
    v34 = sub_2759B8988();
    v35 = sub_2759BA668();

    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_47;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v91 = v37;
    *v36 = 136315138;
    v38 = (*(v33 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category);
    v39 = v38[1];
    if (v39 <= 1)
    {
      if (!v39)
      {
        v41 = 0x70756B636162;
        v40 = 0xE600000000000000;
        goto LABEL_46;
      }

      if (v39 == 1)
      {
        v41 = 0x735F796C696D6166;
        v40 = 0xEE00676E69726168;
        goto LABEL_46;
      }
    }

    else
    {
      switch(v39)
      {
        case 2:
          v40 = 0xE600000000000000;
          v41 = 0x68746C616568;
          goto LABEL_46;
        case 3:
          v40 = 0xE800000000000000;
          v41 = 0x736567617373656DLL;
          goto LABEL_46;
        case 4:
          v40 = 0xE400000000000000;
          v41 = 1769105779;
LABEL_46:
          sub_27585A8D8(*v38, v39);
          v67 = sub_2758937B8(v41, v40, &v91);

          *(v36 + 4) = v67;
          _os_log_impl(&dword_275819000, v34, v35, "ManageStorageAppsListViewModel.loadApp but apps list is in progress, saving for later. app: %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v37);
          MEMORY[0x277C85860](v37, -1, -1);
          MEMORY[0x277C85860](v36, -1, -1);
LABEL_47:

          v89(v10, 1, 1, v90);
          sub_2759BA4C8();
          v68 = v33;
          v69 = v31;
          v70 = sub_2759BA4B8();
          v71 = swift_allocObject();
          v72 = MEMORY[0x277D85700];
          *(v71 + 16) = v70;
          *(v71 + 24) = v72;
          *(v71 + 32) = v68;
          *(v71 + 40) = 1;
          *(v71 + 48) = v69;
          sub_27587D460(0, 0, v10, &unk_2759CF3C0, v71);

          v73 = (*&v68[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category);
          v74 = *v73;
          v75 = v73[1];
          v76 = &v69[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete];
          v77 = *&v69[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete];
          v78 = *&v69[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete + 8];
          *v76 = v74;
          v76[1] = v75;
          sub_27585A8D8(v74, v75);
          sub_2758ACC08(v77, v78);
          return;
      }
    }

    v41 = *v38;
    v40 = v38[1];
    goto LABEL_46;
  }

  if (*&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_loadDataTask])
  {
    v42 = *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_loadDataTask];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    sub_2759BA538();
  }

  v43 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
  v44 = *(a1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel);
  v45 = *(*(v44 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_action) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionType);
  if (v45 != 115)
  {
    if (v45 != 126)
    {
      return;
    }

    if (*(v44 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category + 8) == 3)
    {
      sub_275992394(a1);
      return;
    }

    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v57 = sub_2759B89A8();
    __swift_project_value_buffer(v57, qword_2815ADE70);
    v58 = a1;
    v22 = sub_2759B8988();
    v59 = sub_2759BA648();

    if (!os_log_type_enabled(v22, v59))
    {
      goto LABEL_7;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v91 = v61;
    v62 = *(a1 + v43);
    *v60 = 136315138;
    v63 = (v62 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category);
    v64 = v63[1];
    if (v64 <= 1)
    {
      if (!v64)
      {
        v66 = 0x70756B636162;
        v65 = 0xE600000000000000;
        goto LABEL_70;
      }

      if (v64 == 1)
      {
        v66 = 0x735F796C696D6166;
        v65 = 0xEE00676E69726168;
        goto LABEL_70;
      }
    }

    else
    {
      switch(v64)
      {
        case 2:
          v65 = 0xE600000000000000;
          v66 = 0x68746C616568;
          goto LABEL_70;
        case 3:
          v65 = 0xE800000000000000;
          v66 = 0x736567617373656DLL;
          goto LABEL_70;
        case 4:
          v65 = 0xE400000000000000;
          v66 = 1769105779;
LABEL_70:
          sub_27585A8D8(*v63, v64);
          v85 = sub_2758937B8(v66, v65, &v91);

          *(v60 + 4) = v85;
          _os_log_impl(&dword_275819000, v22, v59, "No native handling for app %s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v61);
          MEMORY[0x277C85860](v61, -1, -1);
          v30 = v60;
          goto LABEL_6;
      }
    }

    v66 = *v63;
    v65 = v63[1];
    goto LABEL_70;
  }

  v90 = v4;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v46 = sub_2759B89A8();
  __swift_project_value_buffer(v46, qword_2815ADE70);
  v47 = a1;
  v48 = sub_2759B8988();
  v49 = sub_2759BA668();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v91 = v51;
    v52 = *(a1 + v43);
    *v50 = 136315138;
    v53 = (v52 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category);
    v54 = v53[1];
    if (v54 <= 1)
    {
      if (!v54)
      {
        v56 = 0x70756B636162;
        v55 = 0xE600000000000000;
        goto LABEL_59;
      }

      if (v54 == 1)
      {
        v56 = 0x735F796C696D6166;
        v55 = 0xEE00676E69726168;
        goto LABEL_59;
      }
    }

    else
    {
      switch(v54)
      {
        case 2:
          v55 = 0xE600000000000000;
          v56 = 0x68746C616568;
          goto LABEL_59;
        case 3:
          v55 = 0xE800000000000000;
          v56 = 0x736567617373656DLL;
          goto LABEL_59;
        case 4:
          v55 = 0xE400000000000000;
          v56 = 1769105779;
LABEL_59:
          sub_27585A8D8(*v53, v54);
          v79 = sub_2758937B8(v56, v55, &v91);

          *(v50 + 4) = v79;
          _os_log_impl(&dword_275819000, v48, v49, "Launching LiftUI action with category: %s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v51);
          MEMORY[0x277C85860](v51, -1, -1);
          MEMORY[0x277C85860](v50, -1, -1);
          goto LABEL_60;
      }
    }

    v56 = *v53;
    v55 = v53[1];
    goto LABEL_59;
  }

LABEL_60:

  v80 = *(*(a1 + v43) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category + 8);
  v81 = v90;
  if (v80)
  {
    if (v80 == 2)
    {
      v82 = swift_allocObject();
      *(v82 + 16) = v81;
      v83 = v81;
      sub_275992B60(v47, v87 & 1, &unk_2759CF3B0, v82);

      return;
    }

    v84 = &unk_2759CF398;
  }

  else
  {
    v84 = &unk_2759CF3A0;
  }

  sub_275992B60(v47, v87 & 1, v84, 0);
}

uint64_t sub_275990C9C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277CCD128]) initWithHealthStore_];
  v0[13] = v2;

  v3 = swift_allocObject();
  v0[14] = v3;
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  v0[15] = v4;
  *(v4 + 16) = 0;
  v5 = swift_task_alloc();
  v0[16] = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_275990E1C;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_275990E1C()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_275990F34, 0, 0);
}

uint64_t sub_275990F34()
{
  v1 = v0[15];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2;
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_280A238A0);
    v5 = v2;
    v6 = sub_2759B8988();
    v7 = sub_2759BA668();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_275819000, v6, v7, "Error encountered fetching health enabled status: %@", v8, 0xCu);
      sub_27586BF04(v9, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v9, -1, -1);
      MEMORY[0x277C85860](v8, -1, -1);
    }

    else
    {
    }
  }

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v12 = v0[14];
  v13 = sub_2759B89A8();
  __swift_project_value_buffer(v13, qword_280A238A0);

  v14 = sub_2759B8988();
  v15 = sub_2759BA668();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[14];
  if (v16)
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    swift_beginAccess();
    *(v18 + 4) = *(v17 + 16);

    _os_log_impl(&dword_275819000, v14, v15, "ManageStorageAppsListViewModel setting healthEnabled: %{BOOL}d", v18, 8u);
    MEMORY[0x277C85860](v18, -1, -1);
  }

  else
  {
    v19 = v0[14];
  }

  v20 = v0[14];
  v21 = v0[12];
  swift_beginAccess();
  v22 = *(v20 + 16);
  v23 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled;
  v24 = v0[14];
  v25 = v0[15];
  v26 = v0[13];
  if (v22 == *(v21 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled))
  {

    *(v21 + v23) = v22;
  }

  else
  {
    v27 = v0[12];
    swift_getKeyPath();
    v28 = swift_task_alloc();
    *(v28 + 16) = v27;
    *(v28 + 24) = v22;
    v0[11] = v27;
    sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
    sub_2759B8628();
  }

  v29 = v0[1];

  return v29();
}

void sub_27599131C(uint64_t a1)
{
  swift_getKeyPath();
  sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_27591C038(a1);
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_280A238A0);
    v3 = sub_2759B8988();
    v5 = sub_2759BA648();
    if (os_log_type_enabled(v3, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_275819000, v3, v5, "Unable to push without home view model", v6, 2u);
      MEMORY[0x277C85860](v6, -1, -1);
    }
  }
}

uint64_t sub_275991494@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_275996FD8(&qword_280A12800, type metadata accessor for ManageStorageAppViewModel);
  sub_2759B8638();

  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading);
  return result;
}

Swift::Void __swiftcall ManageStorageAppsListViewModel.cancelPendingTasks()()
{
  if (*(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_loadDataTask))
  {
    v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_loadDataTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    sub_2759BA538();
  }

  v2 = (v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete);
  v3 = *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete);
  v4 = *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete + 8);
  if (v4 == 5)
  {
    sub_2758ACC18(*(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete), 5uLL);
    sub_2758ACC08(v3, 5uLL);
    sub_2758ACC08(0, 1uLL);
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete);
    v12 = v4;
    v10 = xmmword_2759C8CA0;
    sub_2758ACC18(v3, v4);
    sub_2758ACC18(v3, v4);
    v5 = _s14iCloudSettings24ManageStorageAppCategoryO2eeoiySbAC_ACtFZ_0(&v11, &v10);
    sub_27585A8EC(v10, *(&v10 + 1));
    sub_27585A8EC(v11, v12);
    sub_2758ACC08(v3, v4);
    if (v5)
    {
      swift_getKeyPath();
      v11 = v0;
      sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
      sub_2759B8638();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        [Strong didStopLoadingWithView_];
      }
    }
  }

  v8 = *v2;
  v9 = v2[1];
  *v2 = xmmword_2759C39E0;
  sub_2758ACC08(v8, v9);
}

uint64_t sub_275991740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2759917E0, 0, 0);
}

uint64_t sub_2759917E0()
{
  v1 = *(v0 + 32);
  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (!Strong)
  {
    v5 = *(v0 + 48);
    **(v0 + 24) = 1;

    v6 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 64) = sub_2759BA4C8();
  *(v0 + 72) = sub_2759BA4B8();
  v4 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275991954, v4, v3);
}

uint64_t sub_275991954()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];

  sub_2759BA4E8();
  v6 = sub_2759BA518();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v7 = v4;
  v8 = v5;
  v9 = sub_2759BA4B8();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v7;
  *(v10 + 40) = v8;
  *(v10 + 48) = 0;
  sub_27587D460(0, 0, v3, &unk_2759CF520, v10);

  return MEMORY[0x2822009F8](sub_275991A8C, 0, 0);
}

uint64_t sub_275991A8C()
{
  v1 = *(v0 + 48);
  **(v0 + 24) = *(v0 + 56) == 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_275991AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 49) = a7;
  *(v7 + 48) = a6;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  sub_2759BA4C8();
  *(v7 + 40) = sub_2759BA4B8();
  v9 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275991B9C, v9, v8);
}

uint64_t sub_275991B9C()
{
  v19 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  ManageStorageAppsListViewModel.cancelPendingTasks()();
  swift_getKeyPath();
  *(v0 + 16) = v2;
  sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(v0 + 49);
    v6 = *(v0 + 32);
    v17 = *(v0 + 48);
    v18 = v5;
    sub_27590A460(v6, 0, &v17, &v18, 0);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 32);
    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_2815ADE70);
    v9 = v7;
    v4 = sub_2759B8988();
    v10 = sub_2759BA668();

    if (os_log_type_enabled(v4, v10))
    {
      v11 = *(v0 + 32);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_2758937B8(*(v11 + OBJC_IVAR____TtC14iCloudSettings6Action_type), *(v11 + OBJC_IVAR____TtC14iCloudSettings6Action_type + 8), &v16);
      _os_log_impl(&dword_275819000, v4, v10, "unable to perform action without homeViewModel: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x277C85860](v13, -1, -1);
      MEMORY[0x277C85860](v12, -1, -1);
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_275991DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_2759BA4C8();
  v5[5] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275991E80, v7, v6);
}

uint64_t sub_275991E80()
{
  v15 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  swift_getKeyPath();
  *(v0 + 16) = v2;
  sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_275912078(*(*(v0 + 32) + OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters), *(v0 + 24));
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 32);
    v6 = sub_2759B89A8();
    __swift_project_value_buffer(v6, qword_2815ADE70);
    v7 = v5;
    v4 = sub_2759B8988();
    v8 = sub_2759BA648();

    if (os_log_type_enabled(v4, v8))
    {
      v9 = *(v0 + 32);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2758937B8(*(v9 + OBJC_IVAR____TtC14iCloudSettings6Action_type), *(v9 + OBJC_IVAR____TtC14iCloudSettings6Action_type + 8), &v14);
      _os_log_impl(&dword_275819000, v4, v8, "unable to perform action without homeViewModel: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x277C85860](v11, -1, -1);
      MEMORY[0x277C85860](v10, -1, -1);
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2759920B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  sub_2759BA4C8();
  v4[5] = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27599214C, v6, v5);
}

uint64_t sub_27599214C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);

  swift_getKeyPath();
  *(v0 + 16) = v2;
  sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    [Strong didStartLoadingWithView_];
  }

  **(v0 + 24) = v4 == 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_275992264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 41) = a7;
  *(v7 + 40) = a6;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  sub_2759BA4C8();
  *(v7 + 32) = sub_2759BA4B8();
  v9 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275992304, v9, v8);
}

uint64_t sub_275992304()
{
  v9 = v0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 41);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  v8 = v3;
  ManageStorageAppsListViewModel.loadApp(app:refreshDataModels:from:)(v2, v4, &v8);
  v6 = *(v0 + 8);

  return v6();
}

void sub_275992394(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v21 = [objc_opt_self() messagesSettingsSpecifier];
  [v21 detailControllerClass];
  v6 = CreateDetailControllerInstanceWithClass();
  if (v6)
  {
    v7 = v6;
    [v6 setSpecifier_];
    v8 = sub_2759BA518();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2759BA4C8();

    v10 = v7;
    v11 = a1;
    v12 = sub_2759BA4B8();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v9;
    v13[5] = v10;
    v13[6] = v11;

    sub_27587D460(0, 0, v5, &unk_2759CF440, v13);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v15 = sub_2759B89A8();
    __swift_project_value_buffer(v15, qword_2815ADE70);
    v16 = sub_2759B8988();
    v17 = sub_2759BA668();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_275819000, v16, v17, "Unable to push messages drilldown, no detail controller", v18, 2u);
      MEMORY[0x277C85860](v18, -1, -1);
    }

    v19 = v21;
  }
}

uint64_t sub_275992650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  sub_2759BA4C8();
  v6[16] = sub_2759BA4B8();
  v9 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275992724, v9, v8);
}

uint64_t sub_275992724()
{
  v33 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v4 = Strong;
  swift_getKeyPath();
  *(v0 + 88) = v4;
  sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v5 = swift_unknownObjectWeakLoadStrong();

  if (v5)
  {
    v6 = *(v0 + 96);
    sub_27590C4A0(*(v0 + 104), 1, 0, 0xD000000000000021, 0x80000002759E3EC0);
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = *(v7 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityBarButtonItem);
      if (v9)
      {
        [v9 setHidden_];
      }

      v10 = *&v8[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityIndicator];
      if (v10)
      {
        v11 = v10;
        [v11 stopAnimating];
      }
    }

    v12 = *(v0 + 96);
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = *(v0 + 112);
      v15 = *(v0 + 120);
      v16 = v13;
      v17 = *(v13 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController);

      sub_275920694(v31);
      v18 = v31[0];
      v19 = v31[1];
      v20 = v32;
      sub_2759BA4D8();
      v21 = sub_2759BA518();
      (*(*(v21 - 8) + 56))(v15, 0, 1, v21);
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      *(v23 + 32) = v22;
      *(v23 + 40) = v18;
      *(v23 + 48) = v19;
      *(v23 + 56) = v20;
      *(v23 + 57) = 282;
      *(v23 + 64) = 0;
      *(v23 + 72) = 1;
      *(v23 + 80) = 0;
      *(v23 + 88) = 0;
      *(v23 + 96) = -1;
      sub_27591E640(v18, v19, v20);
      sub_275931D20(0, 0, v15, &unk_2759C5998, v23);

      sub_27589F7F0(v18, v19, v20);
      sub_27586BF04(v15, &unk_280A0E510, &qword_2759C33C0);
    }

    else
    {
    }
  }

  else
  {
LABEL_11:
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v24 = sub_2759B89A8();
    __swift_project_value_buffer(v24, qword_280A238A0);
    v25 = sub_2759B8988();
    v26 = sub_2759BA668();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_275819000, v25, v26, "Unable to push messages drilldown, no homeViewModel", v27, 2u);
      MEMORY[0x277C85860](v27, -1, -1);
    }
  }

  v28 = *(v0 + 120);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_275992B60(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v50 = a3;
  v49 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - v10;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v12 = sub_2759B89A8();
  __swift_project_value_buffer(v12, qword_280A238A0);
  v13 = a1;
  v14 = sub_2759B8988();
  v15 = sub_2759BA668();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v48 = a4;
    v18 = v17;
    v51 = v17;
    *v16 = 136315394;
    v19 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
    v20 = (*&v13[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
    v21 = *v20;
    v22 = v20[1];

    v23 = sub_2758937B8(v21, v22, &v51);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2080;
    v24 = (*(*&v13[v19] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_action) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionURL);
    v25 = *v24;
    v26 = v24[1];

    v27 = sub_2758937B8(v25, v26, &v51);

    *(v16 + 14) = v27;
    _os_log_impl(&dword_275819000, v14, v15, "Loading LiftUI Drilldown for app %s %s", v16, 0x16u);
    swift_arrayDestroy();
    v28 = v18;
    a4 = v48;
    MEMORY[0x277C85860](v28, -1, -1);
    MEMORY[0x277C85860](v16, -1, -1);
  }

  v29 = *&v5[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_liftUIDataSource];
  v30 = *&v5[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_liftUIDataSource + 8];
  ObjectType = swift_getObjectType();
  v32 = *&v5[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_account];
  swift_unknownObjectRetain();
  v33 = v32;
  v34 = sub_275858C5C(v13, v33, ObjectType, v30);

  result = swift_unknownObjectRelease();
  if (v34)
  {
    v36 = sub_2759BA518();
    v37 = *(*(v36 - 8) + 56);
    v37(v11, 1, 1, v36);
    sub_2759BA4C8();
    v38 = v13;
    v39 = v5;
    v40 = sub_2759BA4B8();
    v41 = swift_allocObject();
    v42 = MEMORY[0x277D85700];
    *(v41 + 16) = v40;
    *(v41 + 24) = v42;
    *(v41 + 32) = v38;
    *(v41 + 40) = 1;
    *(v41 + 48) = v39;
    sub_27587D460(0, 0, v11, &unk_2759CF478, v41);

    v43 = *&v39[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_loadDataTask];
    *&v39[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_loadDataTask] = v34;

    v44 = *__swift_project_boxed_opaque_existential_1(&v39[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController], *&v39[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController + 24]);
    sub_27598AC44();
    sub_2759BA4E8();
    v37(v11, 0, 1, v36);
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    *(v45 + 32) = v39;
    *(v45 + 40) = v38;
    *(v45 + 48) = v49 & 1;
    *(v45 + 56) = v50;
    *(v45 + 64) = a4;
    v46 = v38;
    v47 = v39;

    sub_27587D460(0, 0, v11, &unk_2759CF488, v45);
  }

  return result;
}

uint64_t sub_275992FC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_275993054;

  return ManageStorageAppsListViewModel.fetchHealthEnabled()();
}

uint64_t sub_275993054()
{
  v1 = *(*v0 + 16);
  v5 = *v0;

  v2 = *(v5 + 8);
  v3 = MEMORY[0x277D84F98];

  return v2(v3);
}

uint64_t sub_275993150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_275993174, 0, 0);
}

uint64_t sub_275993174()
{
  v1 = v0[4];
  v2 = v0[5];
  type metadata accessor for ManageStorageBackupsDataModel();
  swift_allocObject();
  sub_2758755BC(v1, v2);
  v0[6] = sub_2758BF818(v1, v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_275993248;

  return sub_2758C2074();
}

uint64_t sub_275993248(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_275993348, 0, 0);
}

uint64_t sub_275993348()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v0[2] = v3;
  sub_275996FD8(&qword_280A12800, type metadata accessor for ManageStorageAppViewModel);
  sub_2759B8628();

  v5 = sub_2758C1BAC();

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_275993494()
{
  v18[4] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_2759B8528();
  v18[0] = 0;
  v2 = [v0 JSONObjectWithData:v1 options:0 error:v18];

  if (v2)
  {
    v3 = v18[0];
    sub_2759BA818();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
    if (swift_dynamicCast())
    {
      v4 = v17;
      if (!*(v17 + 16))
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v5 = v18[0];
    v6 = sub_2759B8448();

    swift_willThrow();
  }

  v4 = sub_2758A2A88(MEMORY[0x277D84F90]);
  if (!*(v4 + 16))
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_7:
  v7 = sub_27586F8A0(1635017060, 0xE400000000000000);
  if ((v8 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_275864C94(*(v4 + 56) + 32 * v7, v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if (swift_dynamicCast())
  {
    v9 = v17;
    if (!*(v17 + 16))
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = sub_2758A2A88(MEMORY[0x277D84F90]);
  if (!*(v9 + 16))
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_13:
  v10 = sub_27586F8A0(0x726564616568, 0xE600000000000000);
  if ((v11 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_275864C94(*(v9 + 56) + 32 * v10, v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if (swift_dynamicCast())
  {
    v12 = v17;
    if (!*(v17 + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = sub_2758A2A88(MEMORY[0x277D84F90]);
  if (!*(v12 + 16))
  {
LABEL_21:

    goto LABEL_22;
  }

LABEL_19:
  v13 = sub_27586F8A0(0x4C52556567616D69, 0xE800000000000000);
  if ((v14 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_275864C94(*(v12 + 56) + 32 * v13, v18);

  swift_dynamicCast();
LABEL_22:
  sub_2759B84F8();

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2759937A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_27585A7E4;

  return sub_275993868(a5, a6, a7, a8);
}

uint64_t sub_275993868(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 224) = a2;
  *(v5 + 32) = a1;
  *(v5 + 40) = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v8 = sub_2759B8AF8();
  *(v5 + 80) = v8;
  v9 = *(v8 - 8);
  *(v5 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2759939AC, 0, 0);
}

uint64_t sub_2759939AC()
{
  v1 = *(v0[7] + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_loadDataTask);
  v0[14] = v1;
  if (v1)
  {
    v2 = *(MEMORY[0x277D857C8] + 4);

    v3 = swift_task_alloc();
    v0[15] = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    *v3 = v0;
    v3[1] = sub_275993AF8;
    v5 = MEMORY[0x277CC9318];
    v6 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 2, v1, v5, v4, v6);
  }

  else
  {
    v8 = v0[12];
    v7 = v0[13];
    v10 = v0[8];
    v9 = v0[9];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_275993AF8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 112);

  if (v0)
  {
    v6 = sub_275994C68;
  }

  else
  {
    v6 = sub_275993C2C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_275993C2C()
{
  v1 = v0[16];
  v3 = v0[2];
  v2 = v0[3];
  v0[17] = v3;
  v0[18] = v2;
  sub_2759BA558();
  v0[19] = v1;
  if (v1)
  {
    sub_27585A900(v3, v2);
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_280A238A0);
    v5 = v1;
    v6 = sub_2759B8988();
    v7 = sub_2759BA648();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_275819000, v6, v7, "Error while loading LiftUI drilldown, aborting: %@", v8, 0xCu);
      sub_27586BF04(v9, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v9, -1, -1);
      MEMORY[0x277C85860](v8, -1, -1);
    }

    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[4];

    v15 = sub_2759BA518();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    sub_2759BA4C8();
    v16 = v14;
    v17 = v13;
    v18 = sub_2759BA4B8();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v18;
    *(v19 + 24) = v20;
    *(v19 + 32) = v16;
    *(v19 + 40) = 0;
    *(v19 + 48) = v17;
    sub_27587D460(0, 0, v12, &unk_2759CF4A0, v19);

    v21 = *__swift_project_boxed_opaque_existential_1(&v17[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController], *&v17[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController + 24]);
    sub_27598AEBC();

    v23 = v0[12];
    v22 = v0[13];
    v25 = v0[8];
    v24 = v0[9];

    v26 = v0[1];

    return v26();
  }

  else
  {
    v32 = (v0[5] + *v0[5]);
    v28 = *(v0[5] + 4);
    v29 = swift_task_alloc();
    v0[20] = v29;
    *v29 = v0;
    v29[1] = sub_275993FC0;
    v30 = v0[6];
    v31 = v0[4];

    return v32(v31, v3, v2);
  }
}

uint64_t sub_275993FC0(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_2759940C0, 0, 0);
}

uint64_t sub_2759940C0()
{
  v1 = *(v0 + 168);
  v46 = *(v0 + 144);
  v47 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);
  v10 = swift_allocObject();
  v11 = (*(*(v9 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_action) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionURL);
  v12 = v11[1];
  *(v10 + 16) = *v11;
  *(v10 + 24) = v12;
  *v4 = v10;
  (*(v5 + 104))(v4, *MEMORY[0x277D232A0], v6);
  (*(v5 + 32))(v3, v4, v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2759068D8(v3, 0x725564616F6C6572, 0xE90000000000006CLL, isUniquelyReferenced_nonNull_native);
  *(v0 + 176) = v1;
  sub_275993494();
  sub_2759BA558();
  if (v47)
  {
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    sub_27586BF04(*(v0 + 72), &unk_280A0EB10, &qword_2759C0740);
    sub_27585A900(v14, v15);

    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v16 = sub_2759B89A8();
    __swift_project_value_buffer(v16, qword_280A238A0);
    v17 = v47;
    v18 = sub_2759B8988();
    v19 = sub_2759BA648();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v47;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_275819000, v18, v19, "Error while loading LiftUI drilldown, aborting: %@", v20, 0xCu);
      sub_27586BF04(v21, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v21, -1, -1);
      MEMORY[0x277C85860](v20, -1, -1);
    }

    v25 = *(v0 + 56);
    v24 = *(v0 + 64);
    v26 = *(v0 + 32);

    v27 = sub_2759BA518();
    (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
    sub_2759BA4C8();
    v28 = v26;
    v29 = v25;
    v30 = sub_2759BA4B8();
    v31 = swift_allocObject();
    v32 = MEMORY[0x277D85700];
    *(v31 + 16) = v30;
    *(v31 + 24) = v32;
    *(v31 + 32) = v28;
    *(v31 + 40) = 0;
    *(v31 + 48) = v29;
    sub_27587D460(0, 0, v24, &unk_2759CF4A0, v31);

    v33 = *__swift_project_boxed_opaque_existential_1(&v29[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController], *&v29[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController + 24]);
    sub_27598AEBC();

    v35 = *(v0 + 96);
    v34 = *(v0 + 104);
    v37 = *(v0 + 64);
    v36 = *(v0 + 72);

    v38 = *(v0 + 8);

    return v38();
  }

  else if (*(v0 + 224) == 1)
  {
    v40 = swift_task_alloc();
    *(v0 + 184) = v40;
    *v40 = v0;
    v40[1] = sub_2759945D0;
    v41 = *(v0 + 56);
    v42 = *(v0 + 32);

    return sub_2759951BC(v42);
  }

  else
  {
    v43 = *(v0 + 32);
    *(v0 + 200) = 0;
    *(v0 + 208) = v43;
    v43;
    v44 = swift_task_alloc();
    *(v0 + 216) = v44;
    *v44 = v0;
    v44[1] = sub_275994764;
    v45 = *(v0 + 72);

    return sub_275921A1C(v45);
  }
}

uint64_t sub_2759945D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = v4[22];

    return MEMORY[0x2822009F8](sub_275994F00, 0, 0);
  }

  else
  {
    v4[25] = 0;
    v4[26] = a1;
    v8 = swift_task_alloc();
    v4[27] = v8;
    *v8 = v6;
    v8[1] = sub_275994764;
    v9 = v4[9];

    return sub_275921A1C(v9);
  }
}

uint64_t sub_275994764()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_275994860, 0, 0);
}

uint64_t sub_275994860()
{
  v1 = v0[25];
  sub_2759BA558();
  v2 = v0[26];
  v3 = v0[22];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[9];
  if (v1)
  {
    sub_27586BF04(v0[9], &unk_280A0EB10, &qword_2759C0740);
    sub_27585A900(v5, v4);

    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v7 = sub_2759B89A8();
    __swift_project_value_buffer(v7, qword_280A238A0);
    v8 = v1;
    v9 = sub_2759B8988();
    v10 = sub_2759BA648();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_275819000, v9, v10, "Error while loading LiftUI drilldown, aborting: %@", v11, 0xCu);
      sub_27586BF04(v12, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[4];

    v18 = sub_2759BA518();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    sub_2759BA4C8();
    v19 = v17;
    v20 = v16;
    v21 = sub_2759BA4B8();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    *(v22 + 16) = v21;
    *(v22 + 24) = v23;
    *(v22 + 32) = v19;
    *(v22 + 40) = 0;
    *(v22 + 48) = v20;
    sub_27587D460(0, 0, v15, &unk_2759CF4A0, v22);

    v24 = *__swift_project_boxed_opaque_existential_1(&v20[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController], *&v20[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController + 24]);
    sub_27598AEBC();
  }

  else
  {
    v26 = v0[7];
    v25 = v0[8];
    v27 = sub_2759BA518();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
    sub_2759BA4C8();
    v28 = v26;
    sub_2758755BC(v5, v4);
    v29 = v2;
    v30 = sub_2759BA4B8();
    v31 = swift_allocObject();
    v32 = MEMORY[0x277D85700];
    v31[2] = v30;
    v31[3] = v32;
    v31[4] = v28;
    v31[5] = v5;
    v31[6] = v4;
    v31[7] = v29;
    v31[8] = v3;
    sub_27587D460(0, 0, v25, &unk_2759CF4B0, v31);

    v33 = *__swift_project_boxed_opaque_existential_1(&v28[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController], *&v28[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController + 24]);
    sub_27598AEBC();

    sub_27585A900(v5, v4);
    sub_27586BF04(v6, &unk_280A0EB10, &qword_2759C0740);
  }

  v35 = v0[12];
  v34 = v0[13];
  v37 = v0[8];
  v36 = v0[9];

  v38 = v0[1];

  return v38();
}

uint64_t sub_275994C68()
{
  v1 = v0[16];
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_275819000, v4, v5, "Error while loading LiftUI drilldown, aborting: %@", v6, 0xCu);
    sub_27586BF04(v7, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v7, -1, -1);
    MEMORY[0x277C85860](v6, -1, -1);
  }

  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[4];

  v13 = sub_2759BA518();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_2759BA4C8();
  v14 = v12;
  v15 = v11;
  v16 = sub_2759BA4B8();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v14;
  *(v17 + 40) = 0;
  *(v17 + 48) = v15;
  sub_27587D460(0, 0, v10, &unk_2759CF4A0, v17);

  v19 = *__swift_project_boxed_opaque_existential_1(&v15[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController], *&v15[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController + 24]);
  sub_27598AEBC();

  v21 = v0[12];
  v20 = v0[13];
  v23 = v0[8];
  v22 = v0[9];

  v24 = v0[1];

  return v24();
}

uint64_t sub_275994F00()
{
  v1 = v0[9];
  sub_27585A900(v0[17], v0[18]);
  sub_27586BF04(v1, &unk_280A0EB10, &qword_2759C0740);
  v2 = v0[24];
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v3 = sub_2759B89A8();
  __swift_project_value_buffer(v3, qword_280A238A0);
  v4 = v2;
  v5 = sub_2759B8988();
  v6 = sub_2759BA648();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_275819000, v5, v6, "Error while loading LiftUI drilldown, aborting: %@", v7, 0xCu);
    sub_27586BF04(v8, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[4];

  v14 = sub_2759BA518();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  sub_2759BA4C8();
  v15 = v13;
  v16 = v12;
  v17 = sub_2759BA4B8();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = v15;
  *(v18 + 40) = 0;
  *(v18 + 48) = v16;
  sub_27587D460(0, 0, v11, &unk_2759CF4A0, v18);

  v20 = *__swift_project_boxed_opaque_existential_1(&v16[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController], *&v16[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController + 24]);
  sub_27598AEBC();

  v22 = v0[12];
  v21 = v0[13];
  v24 = v0[8];
  v23 = v0[9];

  v25 = v0[1];

  return v25();
}

uint64_t sub_2759951BC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = swift_task_alloc();
  v2[7] = v3;
  *v3 = v2;
  v3[1] = sub_275995258;

  return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(1, 1);
}

uint64_t sub_275995258()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_275995354, 0, 0);
}

uint64_t sub_275995354()
{
  v1 = v0[5];
  v2 = &OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
  v36 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
  v3 = *(*(v1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds);
  if (v3[2])
  {
    v5 = v3[4];
    v4 = v3[5];
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = v0[6];
  v7 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 >> 62)
  {
LABEL_61:
    v9 = sub_2759BA9E8();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {
LABEL_53:

    sub_275997388();
    swift_allocError();
    swift_willThrow();
    v32 = v0[1];

    return v32();
  }

  v10 = 0;
  v11 = v8 & 0xC000000000000001;
  v34 = v9;
  v35 = v1;
  while (v11)
  {
    v12 = MEMORY[0x277C846A0](v10, v8);
    v13 = __OFADD__(v10++, 1);
    if (v13)
    {
      goto LABEL_48;
    }

LABEL_12:
    v14 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
    v37 = v12;
    v15 = (*(v12 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v1 + v36) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category;
    v20 = *v18;
    v19 = *(v18 + 8);
    if (v17 <= 1)
    {
      if (v17)
      {
        if (v17 != 1)
        {
          goto LABEL_38;
        }

        if (v19 == 1)
        {

          sub_27585A8EC(v16, 1uLL);
          sub_27585A8EC(v20, 1uLL);
          goto LABEL_59;
        }
      }

      else if (!v19)
      {

        sub_27585A8EC(v16, 0);
        sub_27585A8EC(v20, 0);
        goto LABEL_59;
      }

LABEL_27:
      v21 = *v18;
      v22 = *(v18 + 8);
LABEL_28:
      sub_27585A8D8(v21, v22);
      sub_27585A8EC(v16, v17);
      sub_27585A8EC(v20, v19);
      goto LABEL_29;
    }

    switch(v17)
    {
      case 2:
        if (v19 == 2)
        {

          sub_27585A8EC(v16, 2uLL);
          sub_27585A8EC(v20, 2uLL);
          goto LABEL_59;
        }

        goto LABEL_27;
      case 3:
        if (v19 == 3)
        {

          sub_27585A8EC(v16, 3uLL);
          sub_27585A8EC(v20, 3uLL);
          goto LABEL_59;
        }

        goto LABEL_27;
      case 4:
        if (v19 == 4)
        {

          sub_27585A8EC(v16, 4uLL);
          sub_27585A8EC(v20, 4uLL);
          goto LABEL_59;
        }

        goto LABEL_27;
    }

LABEL_38:
    if (v19 < 5)
    {
      sub_27585A8D8(*v18, *(v18 + 8));
      v21 = v16;
      v22 = v17;
      goto LABEL_28;
    }

    if (v16 == v20 && v17 == v19)
    {
      sub_27585A8D8(v16, v17);
      sub_27585A8D8(v16, v17);
      sub_27585A8EC(v16, v17);
      sub_27585A8EC(v16, v17);
LABEL_58:

LABEL_59:
      v2 = v37;
      goto LABEL_50;
    }

    v28 = *v18;
    v29 = *(v18 + 8);
    v33 = sub_2759BAAC8();
    sub_27585A8D8(v20, v19);
    sub_27585A8D8(v16, v17);
    sub_27585A8EC(v16, v17);
    sub_27585A8EC(v20, v19);
    if (v33)
    {
      goto LABEL_58;
    }

LABEL_29:
    v2 = v37;
    if (v4)
    {
      v23 = *(*(v37 + v14) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds);
      v24 = (v23 + 40);
      v25 = *(v23 + 16) + 1;
      while (--v25)
      {
        if (v5 != *(v24 - 1) || v4 != *v24)
        {
          v24 += 2;
          if ((sub_2759BAAC8() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_49;
      }
    }

    v1 = v35;
    v2 = &OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
    v11 = v8 & 0xC000000000000001;
    if (v10 == v34)
    {
      goto LABEL_53;
    }
  }

  if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_61;
  }

  v12 = *(v8 + 32 + 8 * v10);
  v13 = __OFADD__(v10++, 1);
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_48:
  __break(1u);
LABEL_49:

LABEL_50:
  v30 = v0[1];

  return v30(v2);
}

uint64_t sub_275995830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[42] = a7;
  v8[43] = a8;
  v8[40] = a5;
  v8[41] = a6;
  v8[39] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v8[44] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10DE0, &unk_2759CF4C0) - 8) + 64) + 15;
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v11 = type metadata accessor for ManageStorageLiftUIDrilldownView();
  v8[47] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A12840, &qword_2759C8E78);
  v8[50] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v8[51] = swift_task_alloc();
  v8[52] = sub_2759BA4C8();
  v8[53] = sub_2759BA4B8();
  v16 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2759959C8, v16, v15);
}

uint64_t sub_2759959C8()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 344);
  v52 = *(v0 + 336);
  v5 = *(v0 + 320);
  v51 = *(v0 + 328);
  v6 = *(v0 + 312);

  swift_getKeyPath();
  *(v0 + 248) = v6;
  sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10040, &qword_2759C2630);
  v8 = sub_2758DC754();
  *(v0 + 16) = v4;
  *(v0 + 48) = v8;
  v9 = sub_2759B8C08();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v12 = sub_2759B8BF8();
  *(v0 + 256) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E7F0, &unk_2759C1230);
  sub_2759B9D58();
  v46 = *(v0 + 120);
  v48 = *(v0 + 128);
  v13 = *(v2 + 36);
  *(v3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  *(v0 + 136) = v5;
  *(v0 + 144) = v51;
  sub_2758755BC(v5, v51);
  sub_2759B9D58();
  v14 = *(v0 + 112);
  *v3 = *(v0 + 96);
  *(v3 + 16) = v14;
  *(v0 + 264) = v52;
  type metadata accessor for ManageStorageAppViewModel();
  v15 = v52;
  sub_2759B9D58();
  v16 = *(v0 + 160);
  *(v3 + 24) = *(v0 + 152);
  *(v3 + 32) = v16;
  *(v0 + 272) = Strong;
  v50 = Strong;
  sub_2759B9D58();

  *(v3 + 40) = *(v0 + 168);
  *(v0 + 280) = v6;
  type metadata accessor for ManageStorageAppsListViewModel(0);
  v17 = v6;
  sub_2759B9D58();
  v18 = *(v0 + 192);
  *(v3 + 56) = *(v0 + 184);
  *(v3 + 64) = v18;
  *(v0 + 288) = v12;

  sub_2759B9D58();
  v20 = *(v0 + 200);
  v19 = *(v0 + 208);
  *(v3 + 72) = v20;
  *(v3 + 80) = v19;
  *(v0 + 216) = v20;
  *(v0 + 224) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE98, &unk_2759C59F0);
  sub_2759B9D68();
  v21 = *(v0 + 296);
  sub_2759973DC(v0 + 16, v0 + 56);
  v22 = *(v0 + 368);
  if (*(v0 + 80))
  {
    v23 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));

    sub_2759B8B08();
    v24 = sub_2759B8AF8();
    (*(*(v24 - 8) + 56))(v22, 0, 1, v24);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  else
  {

    sub_27586BF04(v0 + 56, &qword_280A0FEA0, &qword_2759CF500);
    v24 = sub_2759B8AF8();
    (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  }

  v25 = *(v0 + 408);
  v40 = *(v0 + 384);
  v41 = *(v0 + 392);
  v26 = *(v0 + 360);
  v47 = *(v0 + 416);
  v49 = *(v0 + 368);
  v45 = *(v0 + 352);
  v43 = *(v0 + 336);
  v44 = *(v0 + 400);
  v42 = *(v0 + 312);
  sub_2759B8C28();

  *(v0 + 232) = v20;
  *(v0 + 240) = v19;
  sub_2759B9D68();
  v27 = *(v0 + 304);

  sub_2758F649C();
  sub_2759BA208();

  sub_2759B8AF8();
  (*(*(v24 - 8) + 56))(v26, 0, 1, v24);
  sub_2759B8C28();

  sub_27586BF04(v0 + 16, &qword_280A0FEA0, &qword_2759CF500);
  sub_2758D5EC4(v40, v41);
  v28 = swift_allocObject();
  *(v28 + 16) = v42;
  *(v28 + 24) = v43;
  sub_2758D5EC4(v41, v25);
  v29 = (v25 + *(v44 + 36));
  *v29 = sub_27599744C;
  v29[1] = v28;
  v29[2] = 0;
  v29[3] = 0;
  v30 = v43;
  v31 = v42;
  sub_27599131C(v25);
  sub_27586BF04(v25, &unk_280A12840, &qword_2759C8E78);
  v32 = sub_2759BA518();
  (*(*(v32 - 8) + 56))(v45, 1, 1, v32);
  v33 = v30;
  v34 = v31;
  v35 = sub_2759BA4B8();
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D85700];
  *(v36 + 16) = v35;
  *(v36 + 24) = v37;
  *(v36 + 32) = v33;
  *(v36 + 40) = 0;
  *(v36 + 48) = v34;
  sub_27587D460(0, 0, v45, &unk_2759CF508, v36);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_275996070(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15[-1] - v4;
  v6 = *(a1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController);
  sub_275920694(v15);
  v7 = v15[0];
  v8 = v15[1];
  v9 = v16;
  sub_2759BA4D8();
  v10 = sub_2759BA518();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v11;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  *(v12 + 56) = v9;
  *(v12 + 57) = 282;
  *(v12 + 64) = 0;
  *(v12 + 72) = 1;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  *(v12 + 96) = -1;
  sub_27591E640(v7, v8, v9);
  sub_275931D20(0, 0, v5, &unk_2759CF510, v12);

  sub_27589F7F0(v7, v8, v9);
  return sub_27586BF04(v5, &unk_280A0E510, &qword_2759C33C0);
}

uint64_t sub_275996240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  sub_2759BA4C8();
  *(v6 + 40) = sub_2759BA4B8();
  v8 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2759962DC, v8, v7);
}

uint64_t sub_2759962DC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);

  v4 = *(v0 + 48);
  if (v2 == *(v3 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading))
  {
    *(v3 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading) = v4;
    if (*(v0 + 48))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = *(v0 + 24);
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    *(v0 + 16) = v5;
    sub_275996FD8(&qword_280A12800, type metadata accessor for ManageStorageAppViewModel);
    sub_2759B8628();

    if (*(v0 + 48))
    {
      goto LABEL_9;
    }
  }

  v7 = *(v0 + 32);
  v8 = *(v7 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityBarButtonItem);
  if (v8)
  {
    [v8 setHidden_];
    v7 = *(v0 + 32);
  }

  v9 = *(v7 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityIndicator);
  if (v9)
  {
    [v9 stopAnimating];
  }

LABEL_9:
  v10 = *(*(v0 + 24) + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category;
  v11 = *v10;
  v12 = *(v10 + 8);
  if (v12 != 1)
  {
    sub_27585A8D8(*v10, *(v10 + 8));
    sub_27585A8EC(v11, v12);
    sub_27585A8EC(0, 1uLL);
    goto LABEL_17;
  }

  v13 = *(v0 + 32);
  v14 = *(v0 + 48);
  sub_27585A8EC(*v10, 1uLL);
  sub_27585A8EC(0, 1uLL);
  swift_getKeyPath();
  *(v0 + 16) = *(v0 + 32);
  sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (v14 == 1)
  {
    if (!Strong)
    {
      goto LABEL_17;
    }

    v16 = sel_didStartLoadingWithView_;
  }

  else
  {
    if (!Strong)
    {
      goto LABEL_17;
    }

    v16 = sel_didStopLoadingWithView_;
  }

  v17 = Strong;
  [Strong v16];

LABEL_17:
  v18 = *(v0 + 8);

  return v18();
}

void sub_2759965B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12818, &qword_2759CF420);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  (*(v9 + 32))(v14 + v13, v12, v8);
  aBlock[4] = sub_275997020;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275996830;
  aBlock[3] = &block_descriptor_17;
  v15 = _Block_copy(aBlock);

  [a2 fetchCloudSyncStatusWithCompletion_];
  _Block_release(v15);
}

uint64_t sub_275996788(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v11 = *(a6 + 16);
  *(a6 + 16) = a5;
  v12 = a5;

  swift_beginAccess();
  *(a7 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12818, &qword_2759CF420);
  return sub_2759BA488();
}

uint64_t sub_275996830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A12820, &qword_2759CF428);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  if (a3)
  {
    sub_2759B8558();
    v21 = sub_2759B8578();
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
  }

  else
  {
    v22 = sub_2759B8578();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  }

  if (a4)
  {
    sub_2759B8558();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = sub_2759B8578();
  (*(*(v24 - 8) + 56))(v16, v23, 1, v24);

  v25 = a6;
  v20(a2, v18, v16, a5, a6);

  sub_27586BF04(v16, &unk_280A12820, &qword_2759CF428);
  return sub_27586BF04(v18, &unk_280A12820, &qword_2759CF428);
}

uint64_t sub_275996A48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 49);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27585F7A0;

  return sub_275991AFC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_275996B20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_275991DE8(a1, v4, v5, v7, v6);
}

uint64_t sub_275996BE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_275991740(a1, v4, v5, v7, v6);
}

uint64_t sub_275996CA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 49);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27585F7A0;

  return sub_275992264(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_275996D78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2759920B4(a1, v4, v5, v6);
}

uint64_t sub_275996E2C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_275874DDC;

  return sub_275992FC4();
}

uint64_t sub_275996EE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585F7A0;

  return sub_275996240(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_275996FD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275997020(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12818, &qword_2759CF420) - 8) + 80);
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);

  return sub_275996788(a1, a2, a3, a4, a5, v12, v13);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275997108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585F7A0;

  return sub_275992650(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2759971D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_27585F7A0;

  return sub_2759937A4(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_2759972AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_27585F7A0;

  return sub_275995830(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_275997388()
{
  result = qword_280A12830;
  if (!qword_280A12830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12830);
  }

  return result;
}

uint64_t sub_2759973DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEA0, &qword_2759CF500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_30Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_2759974B0()
{
  result = qword_280A12860;
  if (!qword_280A12860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12860);
  }

  return result;
}

void sub_275997530(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCB8, &qword_2759C5660);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v17 = a1;
  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v10 = v16[1];
  swift_getKeyPath();
  v17 = v10;
  sub_275997B18(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v11 = *&v10[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__ADPView];

  if (!v11)
  {
    sub_2759B8E88();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    v13 = &v9[*(v6 + 36)];
    v14 = *(sub_2759B8FD8() + 20);

    v15 = a1;
    sub_2759BA4E8();
    *v13 = &unk_2759CF6C8;
    *(v13 + 1) = v12;
    sub_2758CD014();
    v11 = sub_2759B9E68();
  }

  *a3 = v11;
}

uint64_t sub_2759976F8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_2759BA4C8();
  v2[9] = sub_2759BA4B8();
  v5 = sub_2759BA468();
  v2[10] = v5;
  v2[11] = v4;

  return MEMORY[0x2822009F8](sub_2759977CC, v5, v4);
}

uint64_t sub_2759977CC()
{
  v1 = v0[8];
  v2 = v0[6];
  v0[2] = v0[5];
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v0[12] = v0[4];
  v0[13] = sub_2759BA4B8();
  v4 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27599788C, v4, v3);
}

uint64_t sub_27599788C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[7];
  v4 = v0[8];

  v5 = sub_2759BA518();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = v2;
  v7 = sub_2759BA4B8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_27590A1A4(0, 0, v3, &unk_2759CF6D0, v8);

  v10 = v0[10];
  v11 = v0[11];

  return MEMORY[0x2822009F8](sub_2759979A8, v10, v11);
}

uint64_t sub_2759979A8()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_275997A1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27585A7E4;

  return sub_2759976F8(v2, v3);
}

unint64_t sub_275997AB4()
{
  result = qword_280A0FD00;
  if (!qword_280A0FD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FD08, &qword_2759C56A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FD00);
  }

  return result;
}

uint64_t sub_275997B18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275997B60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585A7E4;

  return sub_275883E80(a1, v4, v5, v6);
}

uint64_t sub_275997C40@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2759B8858();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v37 = sub_2759B87E8();
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12870, &qword_2759CF798);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v21 = *(a1 + 3);
  if ((sub_275881FD0() & 1) == 0)
  {
    v27 = 1;
LABEL_6:
    v26 = v37;
    goto LABEL_7;
  }

  v35 = a2;
  swift_getKeyPath();
  *&v39 = v21;
  sub_27586BDE8();
  sub_2759B8638();

  if (!swift_unknownObjectWeakLoadStrong())
  {
    v27 = 1;
    a2 = v35;
    goto LABEL_6;
  }

  v22 = *(a1 + 5);
  v39 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12878, &qword_2759CF7A0);
  sub_2759B9D68();
  v23 = v36;
  sub_2759B87D8();
  v24 = v23;
  v25 = v37;
  (*(v11 + 32))(v20, v24, v37);
  v26 = v25;
  v27 = 0;
  a2 = v35;
LABEL_7:
  (*(v11 + 56))(v20, v27, 1, v26);
  v28 = *(a1 + 5);
  v39 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12878, &qword_2759CF7A0);
  sub_2759B9D68();
  sub_2759B8848();
  sub_275998048(v20, v18);
  v29 = v5[2];
  v30 = v38;
  v29(v38, v10, v4);
  sub_275998048(v18, a2);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12880, &qword_2759CF7A8);
  v29((a2 + *(v31 + 48)), v30, v4);
  v32 = v5[1];
  v32(v10, v4);
  sub_2759980B8(v20);
  v32(v30, v4);
  return sub_2759980B8(v18);
}

uint64_t sub_275998014@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = v1[2];
  return sub_275997C40(v4, a1);
}

uint64_t sub_275998048(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12870, &qword_2759CF798);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2759980B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12870, &qword_2759CF798);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_275998120()
{
  result = qword_280A12888;
  if (!qword_280A12888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12890, &qword_2759CF7D8);
    sub_2759981A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12888);
  }

  return result;
}

unint64_t sub_2759981A4()
{
  result = qword_280A12898;
  if (!qword_280A12898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A128A0, qword_2759CF7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12898);
  }

  return result;
}

uint64_t type metadata accessor for ManageStorageLiftUIDrilldownView()
{
  result = qword_280A128C8;
  if (!qword_280A128C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27599827C()
{
  sub_275998420();
  if (v0 <= 0x3F)
  {
    sub_2759984D4(319, &qword_280A128E0, type metadata accessor for ManageStorageAppViewModel, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_275998470();
      if (v2 <= 0x3F)
      {
        sub_2759984D4(319, &qword_280A11A28, type metadata accessor for ManageStorageAppsListViewModel, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2759984D4(319, &qword_280A128F0, MEMORY[0x277D23330], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_2759984D4(319, &qword_280A0F928, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
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

void sub_275998420()
{
  if (!qword_280A128D8)
  {
    v0 = sub_2759B9D98();
    if (!v1)
    {
      atomic_store(v0, &qword_280A128D8);
    }
  }
}

void sub_275998470()
{
  if (!qword_280A128E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E7F0, &unk_2759C1230);
    v0 = sub_2759B9D98();
    if (!v1)
    {
      atomic_store(v0, &qword_280A128E8);
    }
  }
}

void sub_2759984D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_275998554@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ManageStorageLiftUIDrilldownView();
  sub_2759999B0(v1 + *(v12 + 36), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2759B8DA8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2759BA658();
    v16 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_275998744@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v107 = a1;
  v3 = type metadata accessor for ManageStorageLiftUIDrilldownView();
  v108 = *(v3 - 8);
  v4 = *(v108 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = v5;
  v110 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A128F8, &qword_2759CF880);
  v6 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v106 = &v92 - v7;
  v95 = sub_2759B8DA8();
  v94 = *(v95 - 8);
  v8 = *(v94 + 64);
  v9 = MEMORY[0x28223BE20](v95);
  v93 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v92 = &v92 - v11;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12900, &qword_2759CF888);
  v12 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v96 = &v92 - v13;
  v113 = sub_2759B85A8();
  v14 = *(v113 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v113);
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12908, &qword_2759CF890);
  v18 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v20 = &v92 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12910, &qword_2759CF898);
  v22 = *(v21 - 8);
  v100 = v21;
  v101 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v97 = &v92 - v24;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12918, &qword_2759CF8A0);
  v25 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v99 = &v92 - v26;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12920, &qword_2759CF8A8);
  v104 = *(v102 - 8);
  v27 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  v112 = &v92 - v28;
  v29 = *(v1 + 16);
  v115 = *v1;
  v116 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12928, &qword_2759CF8B0);
  sub_2759B9D68();
  v30 = *(v1 + 80);
  *&v115 = *(v1 + 72);
  *(&v115 + 1) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE98, &unk_2759C59F0);
  sub_2759B9D68();
  sub_2759B8598();
  sub_2759B8588();
  (*(v14 + 8))(v17, v113);
  v31 = sub_2759B8BB8();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_2759B8BA8();
  sub_2759B8C58();
  v35 = *(v1 + 64);
  *&v115 = *(v1 + 56);
  v34 = v115;
  *(&v115 + 1) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v36 = v114;
  KeyPath = swift_getKeyPath();
  v38 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12930, &qword_2759CF8E0) + 36)];
  *v38 = KeyPath;
  v38[1] = v36;
  v115 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12938, &qword_2759CF8E8);
  sub_2759B9D68();
  v39 = v114;
  v40 = swift_getKeyPath();
  v41 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12940, &qword_2759CF918) + 36)];
  *v41 = v40;
  v41[1] = v39;
  v42 = *(v2 + 24);
  v43 = *(v2 + 32);
  v113 = v2;
  *&v115 = v42;
  *(&v115 + 1) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12948, &qword_2759CF920);
  sub_2759B9D68();
  v44 = v114;
  v45 = swift_getKeyPath();
  v46 = v98;
  v47 = &v20[*(v98 + 36)];
  *v47 = v45;
  v47[1] = v44;
  v48 = sub_27592D168();
  v49 = sub_2759992C4();
  v50 = v97;
  MEMORY[0x277C83780](v48, v46, v49);

  sub_275999544(v20);
  *&v115 = v34;
  *(&v115 + 1) = v35;
  sub_2759B9D68();
  v51 = v114;
  v53 = *&v114[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_liftUIDataSource];
  v52 = *&v114[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_liftUIDataSource + 8];
  swift_unknownObjectRetain();

  *&v115 = v46;
  *(&v115 + 1) = v49;
  v54 = v112;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v99;
  v56 = v100;
  MEMORY[0x277C83770](v53, v52, v100, OpaqueTypeConformance2);
  v58 = v111;
  swift_unknownObjectRelease();
  (*(v101 + 8))(v50, v56);
  v59 = swift_getKeyPath();
  v60 = v57;
  v61 = &v57[*(v58 + 36)];
  *v61 = v59;
  v61[1] = 0;
  v62 = sub_2759995AC();
  sub_2759B9A08();
  sub_27586BF04(v60, &qword_280A12918, &qword_2759CF8A0);
  v63 = [objc_opt_self() currentDevice];
  v64 = [v63 userInterfaceIdiom];

  if (v64 == 1)
  {
    v101 = v62;
    v66 = v102;
    v65 = v103;
    v67 = v106;
    v68 = v92;
    sub_275998554(v92);
    v69 = v94;
    v70 = v93;
    v71 = v95;
    (*(v94 + 104))(v93, *MEMORY[0x277CDF3D0], v95);
    v72 = sub_2759B8D98();
    v73 = *(v69 + 8);
    v73(v70, v71);
    v73(v68, v71);
    if (v72)
    {
      v74 = v67;
      if (qword_280A0E3D8 != -1)
      {
        swift_once();
      }

      v75 = &qword_280A239D8;
    }

    else
    {
      v74 = v67;
      if (qword_280A0E3D0 != -1)
      {
        swift_once();
      }

      v75 = &qword_280A239D0;
    }

    v79 = v101;
    v80 = *v75;

    v81 = sub_2759B97D8();
    v78 = v104;
    v82 = v96;
    v54 = v112;
    (*(v104 + 16))(v96, v112, v66);
    v83 = v82 + *(v65 + 36);
    *v83 = v80;
    *(v83 + 8) = v81;
    sub_275826DF4(v82, v74);
    swift_storeEnumTagMultiPayload();
    sub_2759996E4();
    *&v115 = v111;
    *(&v115 + 1) = v79;
    swift_getOpaqueTypeConformance2();
    v77 = v107;
    sub_2759B95E8();
    sub_27586BF04(v82, &qword_280A12900, &qword_2759CF888);
  }

  else
  {
    v76 = v104;
    v66 = v102;
    (*(v104 + 16))(v106, v54, v102);
    swift_storeEnumTagMultiPayload();
    sub_2759996E4();
    *&v115 = v58;
    *(&v115 + 1) = v62;
    swift_getOpaqueTypeConformance2();
    v77 = v107;
    sub_2759B95E8();
    v78 = v76;
  }

  (*(v78 + 8))(v54, v66);
  v84 = v113;
  v85 = v110;
  sub_27591EF5C(v113, v110);
  v86 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v87 = swift_allocObject();
  sub_2758D5EC4(v85, v87 + v86);
  v88 = (v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12980, &qword_2759CF9A0) + 36));
  *v88 = sub_2759997D8;
  v88[1] = v87;
  v88[2] = 0;
  v88[3] = 0;
  sub_27591EF5C(v84, v85);
  v89 = swift_allocObject();
  sub_2758D5EC4(v85, v89 + v86);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12988, &qword_2759CF9A8);
  v91 = (v77 + *(result + 36));
  *v91 = 0;
  v91[1] = 0;
  v91[2] = sub_275999944;
  v91[3] = v89;
  return result;
}

void sub_275999258(uint64_t a1, char a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12948, &qword_2759CF920);
  sub_2759B9D68();
  v3[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_isPresented] = a2;
}

unint64_t sub_2759992C4()
{
  result = qword_280A12950;
  if (!qword_280A12950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12908, &qword_2759CF890);
    sub_27599937C();
    sub_27589B02C(&qword_280A0E7A0, &qword_280A0E798, &qword_2759C1210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12950);
  }

  return result;
}

unint64_t sub_27599937C()
{
  result = qword_280A12958;
  if (!qword_280A12958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12940, &qword_2759CF918);
    sub_275999434();
    sub_27589B02C(&qword_280A0E7B0, &qword_280A0E7A8, &qword_2759C1218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12958);
  }

  return result;
}

unint64_t sub_275999434()
{
  result = qword_280A12960;
  if (!qword_280A12960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12930, &qword_2759CF8E0);
    sub_2759994EC();
    sub_27589B02C(&qword_280A0E790, &qword_280A0E788, &qword_2759CF950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12960);
  }

  return result;
}

unint64_t sub_2759994EC()
{
  result = qword_280A12968;
  if (!qword_280A12968)
  {
    sub_2759B8C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12968);
  }

  return result;
}

uint64_t sub_275999544(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12908, &qword_2759CF890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2759995AC()
{
  result = qword_280A12970;
  if (!qword_280A12970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12918, &qword_2759CF8A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12910, &qword_2759CF898);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12908, &qword_2759CF890);
    sub_2759992C4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_27589B02C(&qword_280A12180, &qword_280A12188, &qword_2759CE5E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12970);
  }

  return result;
}

unint64_t sub_2759996E4()
{
  result = qword_280A12978;
  if (!qword_280A12978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12900, &qword_2759CF888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12918, &qword_2759CF8A0);
    sub_2759995AC();
    swift_getOpaqueTypeConformance2();
    sub_27589B02C(&qword_280A11650, &qword_280A11658, &unk_2759CF990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12978);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for ManageStorageLiftUIDrilldownView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  sub_27585A900(*(v0 + v3), *(v0 + v3 + 8));
  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 48);

  v9 = *(v0 + v3 + 64);

  v10 = *(v0 + v3 + 72);

  v11 = *(v0 + v3 + 80);

  v12 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2759B8DA8();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2759999B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275999A50(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_275999AD4()
{
  result = qword_280A129A0;
  if (!qword_280A129A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A129A8, &qword_2759CF9B0);
    sub_2759996E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12918, &qword_2759CF8A0);
    sub_2759995AC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A129A0);
  }

  return result;
}

uint64_t sub_275999BD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000656761726FLL;
  v3 = 0x74536567616E616DLL;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x366C6961746564;
  if (a1 != 6)
  {
    v6 = 0x764F70756B636162;
    v5 = 0xED000079616C7265;
  }

  v7 = 0x346C6961746564;
  v8 = 0xE700000000000000;
  if (a1 != 4)
  {
    v7 = 0x356C6961746564;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v9 = 0xE700000000000000;
  v10 = 0x326C6961746564;
  if (a1 != 2)
  {
    v10 = 0x336C6961746564;
    v9 = 0xE700000000000000;
  }

  v11 = 0x316C6961746564;
  if (!a1)
  {
    v11 = 0x74536567616E616DLL;
    v8 = 0xED0000656761726FLL;
  }

  if (a1 <= 1u)
  {
    v10 = v11;
    v9 = v8;
  }

  if (a1 <= 3u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 3)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE700000000000000;
        if (v12 != 0x366C6961746564)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xED000079616C7265;
        if (v12 != 0x764F70756B636162)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (a2 == 4)
      {
        if (v12 != 0x346C6961746564)
        {
          goto LABEL_41;
        }
      }

      else if (v12 != 0x356C6961746564)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      v2 = 0xE700000000000000;
      if (a2 == 2)
      {
        if (v12 != 0x326C6961746564)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x336C6961746564;
    }

    else if (a2)
    {
      v2 = 0xE700000000000000;
      if (v12 != 0x316C6961746564)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v12 != v3)
    {
LABEL_41:
      v14 = sub_2759BAAC8();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v13 != v2)
  {
    goto LABEL_41;
  }

  v14 = 1;
LABEL_42:

  return v14 & 1;
}

uint64_t sub_275999E48(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x444977656976;
    }

    else
    {
      v3 = 0x746E657665;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6E656E6F706D6F63;
    v4 = 0xEB00000000444974;
  }

  else if (a1 == 3)
  {
    v3 = 0x79546E6F69746361;
    v4 = 0xEA00000000006570;
  }

  else
  {
    v3 = 0x6956746567726174;
    v4 = 0xEC00000044497765;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x444977656976;
    }

    else
    {
      v9 = 0x746E657665;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x79546E6F69746361;
    v6 = 0xEA00000000006570;
    if (a2 != 3)
    {
      v5 = 0x6956746567726174;
      v6 = 0xEC00000044497765;
    }

    if (a2 == 2)
    {
      v7 = 0x6E656E6F706D6F63;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xEB00000000444974;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_2759BAAC8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_275999FF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6554726564616568;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEA00000000007478;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x7865546567617375;
    v4 = 0xE900000000000074;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6449656C646E7562;
    }

    else
    {
      v3 = 0x616D696E41657375;
    }

    if (v2 == 3)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xEC0000006E6F6974;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6554726564616568;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xEA00000000007478;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE900000000000074;
    if (v3 != 0x7865546567617375)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x6449656C646E7562)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEC0000006E6F6974;
    if (v3 != 0x616D696E41657375)
    {
LABEL_34:
      v7 = sub_2759BAAC8();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_27599A1A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 1702063205;
    }

    else
    {
      v3 = 0x73616C6361746164;
    }

    if (v2 == 2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xEB00000000644973;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1852139636;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE400000000000000;
  v8 = 1702063205;
  if (a2 != 2)
  {
    v8 = 0x73616C6361746164;
    v7 = 0xEB00000000644973;
  }

  if (a2)
  {
    v6 = 1852139636;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2759BAAC8();
  }

  return v11 & 1;
}

uint64_t sub_27599A2D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7107189;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000002759DCD70;
  }

  else if (a1 == 3)
  {
    v3 = 0x6C6F686563616C70;
    v4 = 0xEB00000000726564;
  }

  else
  {
    v3 = 0x646F4D6567616D69;
    v4 = 0xEE00737265696669;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 7107189;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000002759DCD70;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEB00000000726564;
    if (v3 != 0x6C6F686563616C70)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEE00737265696669;
    if (v3 != 0x646F4D6567616D69)
    {
LABEL_31:
      v7 = sub_2759BAAC8();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}