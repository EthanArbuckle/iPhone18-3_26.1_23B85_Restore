uint64_t sub_273D7E860(uint64_t a1)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  return sub_273DA222C();
}

uint64_t sub_273D7E928@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_273DA1B6C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(sub_273D82D04(&qword_280925828, &qword_273DA2E38) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = (&v15 - v9);
  v11 = type metadata accessor for WelcomeView();
  sub_273D84048(v1 + *(v11 + 44), v10, &qword_280925828, &qword_273DA2E38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_273D84270(v10, a1, &qword_280925888, &qword_273DA2EF8);
  }

  v13 = *v10;
  sub_273DA24BC();
  v14 = sub_273DA1E2C();
  sub_273DA17BC();

  sub_273DA1B5C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_273D7EB10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_273DA1B6C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(sub_273D82D04(&qword_280925828, &qword_273DA2E38) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = (&v15 - v9);
  v11 = type metadata accessor for WelcomeView();
  sub_273D84048(v1 + *(v11 + 48), v10, &qword_280925828, &qword_273DA2E38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_273D84270(v10, a1, &qword_280925888, &qword_273DA2EF8);
  }

  v13 = *v10;
  sub_273DA24BC();
  v14 = sub_273DA1E2C();
  sub_273DA17BC();

  sub_273DA1B5C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t WelcomeView.init(content:actionHandler:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 104) = swift_getKeyPath();
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  sub_273DA21BC();
  *(a4 + 128) = v12;
  *(a4 + 136) = v13;
  v8 = type metadata accessor for WelcomeView();
  v9 = *(v8 + 44);
  *(a4 + v9) = swift_getKeyPath();
  sub_273D82D04(&qword_280925828, &qword_273DA2E38);
  swift_storeEnumTagMultiPayload();
  v10 = *(v8 + 48);
  *(a4 + v10) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_273D82E38(a1, a4);
  sub_273DA225C();
  result = sub_273D82E9C(a1);
  *(a4 + 40) = v12;
  *(a4 + 48) = v13;
  *(a4 + 56) = v14;
  *(a4 + 96) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  return result;
}

uint64_t WelcomeView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_273DA22DC();
  a1[1] = v3;
  v4 = sub_273D82D04(&qword_280925830, &qword_273DA2E70);
  return sub_273D7EE84(v1, (a1 + *(v4 + 44)));
}

uint64_t sub_273D7EE84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  v3 = sub_273D82D04(&qword_2809258A0, &qword_273DA2F08);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  sub_273DA244C();
  v23 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a1[3];
  v11 = a1[4];
  sub_273D8339C(a1, v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v23 - v15;
  (*(v11 + 88))(v10, v11);
  swift_getAssociatedConformanceWitness();
  v17 = sub_273D7E860(AssociatedTypeWitness);
  (*(v13 + 8))(v16, AssociatedTypeWitness);
  v18 = sub_273DA19EC();
  LOBYTE(v10) = sub_273DA1E7C();
  *v9 = sub_273DA1C1C();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v19 = sub_273D82D04(&qword_2809258A8, &qword_273DA2F10);
  sub_273D7F184(a1, &v9[*(v19 + 44)]);
  sub_273D84048(v9, v7, &qword_2809258A0, &qword_273DA2F08);
  v20 = v24;
  *v24 = v17;
  v20[1] = v18;
  *(v20 + 16) = v10;
  v21 = sub_273D82D04(&qword_2809258B0, &qword_273DA2F18);
  sub_273D84048(v7, v20 + *(v21 + 48), &qword_2809258A0, &qword_273DA2F08);

  sub_273D84218(v9, &qword_2809258A0);
  sub_273D84218(v7, &qword_2809258A0);
}

uint64_t sub_273D7F184@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v159 = sub_273D82D04(&qword_2809258B8, &qword_273DA2F20);
  v4 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v6 = &v143 - v5;
  v161 = sub_273D82D04(&qword_2809258C0, &qword_273DA2F28);
  v7 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v147 = &v143 - v8;
  v9 = sub_273D82D04(&qword_2809258C8, &qword_273DA2F30);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v162 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v143 - v13;
  v15 = type metadata accessor for WelcomeView();
  v164 = *(v15 - 8);
  v16 = *(v164 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v170 = v17;
  v165 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_273D82D04(&qword_280925888, &qword_273DA2EF8);
  v18 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v153 = &v143 - v19;
  v167 = sub_273D82D04(&qword_2809258D0, &qword_273DA2F38);
  v20 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v148 = &v143 - v21;
  v22 = sub_273D82D04(&qword_2809258D8, &qword_273DA2F40);
  v151 = *(v22 - 8);
  v152 = v22;
  v23 = *(v151 + 64);
  MEMORY[0x28223BE20](v22);
  v168 = &v143 - v24;
  v155 = sub_273D82D04(&qword_2809258E0, &qword_273DA2F48);
  v150 = *(v155 - 8);
  v25 = *(v150 + 64);
  MEMORY[0x28223BE20](v155);
  v149 = &v143 - v26;
  v27 = sub_273D82D04(&qword_2809258E8, &qword_273DA2F50);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v160 = &v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v171 = &v143 - v31;
  v32 = sub_273D82D04(&qword_2809258F0, &qword_273DA2F58);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v158 = &v143 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v143 - v36;
  sub_273DA244C();
  v157 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v38 = *(a1 + 24);
  v39 = *(a1 + 32);
  sub_273D8339C(a1, v38);
  (*(v39 + 152))(v38, v39);
  _s7Welcome0A7ContentPAAE15headerAlignment7SwiftUI08VerticalD0Vvg_0();
  if (sub_273DA1B9C())
  {
    v156 = 1;
  }

  else
  {
    v40 = *(a1 + 24);
    v41 = *(a1 + 32);
    sub_273D8339C(a1, v40);
    (*(v41 + 152))(v40, v41);
    sub_273DA1BBC();
    v42 = sub_273DA1B9C();
    LODWORD(v156) = v42 & 1;
    HIDWORD(v156) = v42 ^ 1;
  }

  v43 = *(a1 + 24);
  v44 = *(a1 + 32);
  sub_273D8339C(a1, v43);
  v45 = v14;
  if ((*(v44 + 168))(v43, v44))
  {
    sub_273D802CC(v173);
    memcpy(v174, v173, 0xB1uLL);
    nullsub_1(v174);
    memcpy(v175, v174, 0xB1uLL);
  }

  else
  {
    sub_273D833E0(v175);
  }

  *v37 = sub_273DA1C1C();
  *(v37 + 1) = 0;
  v46 = 1;
  v37[16] = 1;
  v47 = sub_273D82D04(&qword_2809258F8, &qword_273DA2F60);
  sub_273D80590(a1, &v37[*(v47 + 44)]);
  v48 = *(a1 + 24);
  v49 = *(a1 + 32);
  sub_273D8339C(a1, v48);
  v50 = *((*(v49 + 96))(v48, v49) + 16);

  v163 = a2;
  v166 = v45;
  v169 = v37;
  if (v50)
  {
    v146 = v6;
    v51 = *(a1 + 24);
    v52 = *(a1 + 32);
    sub_273D8339C(a1, v51);
    v53 = (*(v52 + 96))(v51, v52);
    v54 = *(a1 + 128);
    v55 = *(a1 + 136);
    v173[0] = v54;
    v145 = v55;
    v173[1] = v55;
    v144 = sub_273D82D04(&qword_280925900, &qword_273DA2F68);
    sub_273DA21EC();
    v56 = v174[0];
    v57 = v174[1];
    v58 = v174[2];
    v143 = v53;
    v174[0] = v53;
    v174[1] = v56;
    v174[2] = v57;
    v174[3] = v58;
    if (qword_280925810 != -1)
    {
      swift_once();
    }

    v59 = sub_273D82D04(&qword_280925908, &qword_273DA3C00);
    sub_273D833F0(v59, qword_280927820);
    sub_273D83428();
    sub_273D84664(&unk_280925918);
    v60 = v148;
    sub_273DA1FEC();

    v174[0] = v54;
    v174[1] = v145;
    sub_273DA21CC();
    sub_273DA22DC();
    sub_273DA18EC();
    v61 = (v60 + *(sub_273D82D04(&qword_280925920, &qword_273DA2F70) + 36));
    v62 = v177;
    *v61 = v176;
    v61[1] = v62;
    v61[2] = v178;
    v63 = sub_273DA1E6C();
    sub_273DA181C();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v72 = v60 + *(sub_273D82D04(&qword_280925928, &qword_273DA2F78) + 36);
    *v72 = v63;
    *(v72 + 8) = v65;
    *(v72 + 16) = v67;
    *(v72 + 24) = v69;
    *(v72 + 32) = v71;
    *(v72 + 40) = 0;
    v73 = sub_273DA1EAC();
    sub_273DA181C();
    v74 = v60 + *(v167 + 36);
    *v74 = v73;
    *(v74 + 8) = v75;
    *(v74 + 16) = v76;
    *(v74 + 24) = v77;
    *(v74 + 32) = v78;
    *(v74 + 40) = 0;
    v79 = v153;
    sub_273D7E928(v153);
    v145 = type metadata accessor for WelcomeView;
    v80 = v165;
    sub_273D83C48(a1, v165, type metadata accessor for WelcomeView);
    v81 = (*(v164 + 80) + 16) & ~*(v164 + 80);
    v82 = swift_allocObject();
    sub_273D8348C(v80, v82 + v81);
    v144 = sub_273D83914(&unk_280925930);
    v143 = sub_273D83640();
    v83 = v154;
    sub_273DA20CC();

    sub_273D84218(v79, &qword_280925888);
    sub_273D84218(v60, &qword_2809258D0);
    sub_273D7EB10(v79);
    sub_273D83C48(a1, v80, v145);
    v84 = swift_allocObject();
    sub_273D8348C(v80, v84 + v81);
    v174[0] = v167;
    v174[1] = v83;
    v174[2] = v144;
    v174[3] = v143;
    swift_getOpaqueTypeConformance2();
    v85 = v149;
    v86 = v152;
    v87 = v168;
    sub_273DA20CC();

    sub_273D84218(v79, &qword_280925888);
    (*(v151 + 8))(v87, v86);
    v88 = v171;
    v89 = v155;
    (*(v150 + 32))(v171, v85, v155);
    v46 = 0;
    v90 = v166;
    v6 = v146;
    v37 = v169;
  }

  else
  {
    v88 = v171;
    v90 = v45;
    v89 = v155;
  }

  sub_273D83074(v88, v46, 1, v89);
  if (*(a1 + 96) == 1)
  {
    v91 = *(a1 + 24);
    v92 = *(a1 + 32);
    sub_273D8339C(a1, v91);
    v93 = v147;
    (*(v92 + 72))(v91, v92);
    v94 = *(a1 + 40);
    v95 = *(a1 + 48);
    v96 = *(a1 + 56);
    v97 = v165;
    sub_273D83C48(a1, v165, type metadata accessor for WelcomeView);
    v98 = (*(v164 + 80) + 16) & ~*(v164 + 80);
    v99 = swift_allocObject();
    sub_273D8348C(v97, v99 + v98);
    v100 = type metadata accessor for ContinueButton();
    v101 = v93 + *(v100 + 20);
    *v101 = v94;
    *(v101 + 8) = v95;
    *(v101 + 16) = v96;
    v102 = (v93 + *(v100 + 24));
    *v102 = sub_273D83BD4;
    v102[1] = v99;

    LOBYTE(v94) = sub_273DA1E6C();
    sub_273DA181C();
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v111 = v93 + *(sub_273D82D04(&qword_280925970, &qword_273DA2F88) + 36);
    *v111 = v94;
    *(v111 + 8) = v104;
    *(v111 + 16) = v106;
    *(v111 + 24) = v108;
    *(v111 + 32) = v110;
    *(v111 + 40) = 0;
    LOBYTE(v94) = sub_273DA1EAC();
    sub_273DA181C();
    v112 = v93 + *(v161 + 36);
    *v112 = v94;
    *(v112 + 8) = v113;
    *(v112 + 16) = v114;
    *(v112 + 24) = v115;
    *(v112 + 32) = v116;
    *(v112 + 40) = 0;
    sub_273D84048(v93, v6, &qword_2809258C0, &qword_273DA2F28);
    swift_storeEnumTagMultiPayload();
    sub_273D82D04(&qword_280925958, &qword_273DA2F80);
    sub_273D83914(&unk_280925960);
    sub_273D83834();
    v117 = v166;
    sub_273DA1C5C();
    sub_273D84218(v93, &qword_2809258C0);
  }

  else
  {
    v118 = *(a1 + 24);
    v119 = *(a1 + 32);
    sub_273D8339C(a1, v118);
    (*(v119 + 112))(v174, v118, v119);
    if (v174[2])
    {
      goto LABEL_19;
    }

    v120 = *(a1 + 24);
    v121 = *(a1 + 32);
    sub_273D8339C(a1, v120);
    (*(v121 + 120))(v174, v120, v121);
    if (v174[2] || (v122 = *(a1 + 24), v123 = *(a1 + 32), sub_273D8339C(a1, v122), (*(v123 + 128))(v174, v122, v123), v174[2]))
    {
LABEL_19:

      sub_273D82E38(a1, v173);
      v124 = *(a1 + 88);
      v173[5] = *(a1 + 80);
      v173[6] = v124;
      sub_273D839C8(v173[5]);
      v125 = sub_273DA1E6C();
      sub_273DA181C();
      LOBYTE(v173[7]) = v125;
      v173[8] = v126;
      v173[9] = v127;
      v173[10] = v128;
      v173[11] = v129;
      LOBYTE(v173[12]) = 0;
      v130 = sub_273DA1EAC();
      sub_273DA181C();
      LOBYTE(v173[13]) = v130;
      v173[14] = v131;
      v173[15] = v132;
      v173[16] = v133;
      v173[17] = v134;
      LOBYTE(v173[18]) = 0;
      memcpy(v174, v173, 0x91uLL);
    }

    else
    {
      bzero(v174, 0x91uLL);
    }

    sub_273D84048(v174, v6, &qword_280925958, &qword_273DA2F80);
    swift_storeEnumTagMultiPayload();
    sub_273D82D04(&qword_280925958, &qword_273DA2F80);
    sub_273D83914(&unk_280925960);
    sub_273D83834();
    sub_273DA1C5C();
    sub_273D84218(v174, &qword_280925958);
    v117 = v90;
  }

  memcpy(v172, v175, sizeof(v172));
  v135 = v158;
  sub_273D84048(v37, v158, &qword_2809258F0, &qword_273DA2F58);
  v136 = v171;
  v137 = v160;
  sub_273D84048(v171, v160, &qword_2809258E8, &qword_273DA2F50);
  v138 = v162;
  sub_273D84048(v117, v162, &qword_2809258C8, &qword_273DA2F30);
  v139 = v163;
  *v163 = 0;
  v140 = BYTE4(v156);
  v139[8] = v156;
  v139[9] = v140 & 1;
  memcpy(v173, v172, 0xB1uLL);
  memcpy(v139 + 16, v172, 0xB1uLL);
  v141 = sub_273D82D04(&qword_2809259B0, &qword_273DA2FA0);
  sub_273D84048(v135, &v139[v141[16]], &qword_2809258F0, &qword_273DA2F58);
  sub_273D84048(v137, &v139[v141[20]], &qword_2809258E8, &qword_273DA2F50);
  sub_273D84048(v138, &v139[v141[24]], &qword_2809258C8, &qword_273DA2F30);
  sub_273D84048(v173, v174, &qword_2809259B8, &qword_273DA2FA8);
  sub_273D84218(v117, &qword_2809258C8);
  sub_273D84218(v136, &qword_2809258E8);
  sub_273D84218(v169, &qword_2809258F0);
  sub_273D84218(v138, &qword_2809258C8);
  sub_273D84218(v137, &qword_2809258E8);
  sub_273D84218(v135, &qword_2809258F0);
  memcpy(v174, v172, 0xB1uLL);
  sub_273D84218(v174, &qword_2809259B8);
}

void *sub_273D802CC@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  sub_273D8339C(v1, v3);
  if ((*(v4 + 168))(v3, v4))
  {
    v5 = v1[3];
    v6 = v1[4];
    sub_273D8339C(v1, v5);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v8 = *(AssociatedTypeWitness - 8);
    v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20]();
    v11 = &v26[-1] - v10;
    (*(v6 + 80))(v5, v6);
    swift_getAssociatedConformanceWitness();
    v12 = sub_273D7E860(AssociatedTypeWitness);
    (*(v8 + 8))(v11, AssociatedTypeWitness);
    v13 = sub_273DA1E7C();
    sub_273DA181C();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    sub_273DA22DC();
    sub_273DA1A7C();
    v27[120] = 0;
    memcpy(&v27[7], v28, 0x70uLL);
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v23 = sub_273DA213C();
    LOBYTE(v6) = sub_273DA1E7C();
    v26[0] = v12;
    LOBYTE(v26[1]) = v13;
    v26[2] = v15;
    v26[3] = v17;
    v26[4] = v19;
    v26[5] = v21;
    LOBYTE(v26[6]) = 0;
    memcpy(&v26[6] + 1, v27, 0x77uLL);
    v26[21] = v23;
    LOBYTE(v26[22]) = v6;
    nullsub_1(v26);
    memcpy(v29, v26, 0xB1uLL);
  }

  else
  {
    sub_273D83C38(v29);
  }

  return memcpy(a1, v29, 0xB1uLL);
}

uint64_t sub_273D80590@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_273DA1D6C();
  v70 = *(v3 - 8);
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v3);
  v68 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_273DA1C8C();
  v64 = *(v66 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v61 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WelcomeListItem();
  v71 = *(v8 - 8);
  v9 = *(v71 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_273D82D04(&qword_2809259C0, &qword_273DA2FB0);
  v53 = *(v55 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v14 = &v50 - v13;
  v51 = sub_273D82D04(&qword_2809259C8, &qword_273DA2FB8);
  v15 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v54 = &v50 - v16;
  v58 = sub_273D82D04(&qword_2809259D0, &qword_273DA2FC0);
  v17 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v56 = &v50 - v18;
  v63 = sub_273D82D04(&qword_2809259D8, &qword_273DA2FC8);
  v59 = *(v63 - 8);
  v19 = *(v59 + 64);
  MEMORY[0x28223BE20](v63);
  v57 = &v50 - v20;
  v67 = sub_273D82D04(&qword_2809259E0, &qword_273DA2FD0);
  v65 = *(v67 - 8);
  v21 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v62 = &v50 - v22;
  sub_273DA244C();
  v60 = sub_273DA243C();
  sub_273DA242C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_273D82D04(&qword_2809259E8, &qword_273DA2FD8);
  sub_273D84664(&unk_2809259F0);
  v52 = v14;
  sub_273DA1F1C();
  v24 = a1[3];
  v25 = a1[4];
  sub_273D8339C(a1, v24);
  result = (*(v25 + 136))(v24, v25);
  v27 = result;
  v28 = *(result + 16);
  if (v28)
  {
    v50 = v3;
    v29 = 0;
    v30 = result + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    while (v29 < *(v27 + 16))
    {
      sub_273D83C48(v30 + *(v71 + 72) * v29, v11, type metadata accessor for WelcomeListItem);
      sub_273DA243C();
      sub_273DA242C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (*(v11 + 5))
      {

        sub_273D83CA0(v11);
        goto LABEL_15;
      }

      v31 = *(v11 + 6);

      sub_273D83CA0(v11);
      if (v31)
      {

LABEL_15:

        v32 = 1;
LABEL_16:
        v3 = v50;
        goto LABEL_17;
      }

      ++v29;

      if (v28 == v29)
      {

        v32 = 0;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

    v32 = 0;
LABEL_17:
    v33 = v54;
    (*(v53 + 32))(v54, v52, v55);
    v33[*(v51 + 36)] = v32;
    sub_273DA22EC();
    sub_273DA1A7C();
    v34 = v33;
    v35 = v56;
    sub_273D84270(v34, v56, &qword_2809259C8, &qword_273DA2FB8);
    v36 = v58;
    memcpy((v35 + *(v58 + 36)), __src, 0x70uLL);
    v37 = sub_273D83CFC();
    v38 = v57;
    sub_273DA207C();
    sub_273D84218(v35, &qword_2809259D0);
    v39 = v61;
    sub_273DA1C7C();
    v40 = sub_273DA1E5C();
    sub_273DA1E4C();
    sub_273DA1E4C();
    v41 = sub_273DA1E4C();
    v42 = v68;
    v43 = v63;
    v44 = v62;
    if (v41 != v40)
    {
      sub_273DA1E4C();
    }

    v72 = v36;
    v73 = v37;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_273DA204C();
    (*(v64 + 8))(v39, v66);
    (*(v59 + 8))(v38, v43);
    sub_273DA1D5C();
    sub_273D82D04(&qword_280925A18, &qword_273DA4050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_273DA2DD0;
    v47 = sub_273DA1E5C();
    *(inited + 32) = v47;
    v48 = sub_273DA1E3C();
    *(inited + 33) = v48;
    sub_273DA1E4C();
    sub_273DA1E4C();
    if (sub_273DA1E4C() != v47)
    {
      sub_273DA1E4C();
    }

    sub_273DA1E4C();
    if (sub_273DA1E4C() != v48)
    {
      sub_273DA1E4C();
    }

    v72 = v43;
    v73 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v49 = v67;
    sub_273DA200C();
    (*(v70 + 8))(v42, v3);
    (*(v65 + 8))(v44, v49);
  }

  return result;
}

uint64_t sub_273D80F80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_273D82D04(&qword_280925A20, &qword_273DA2FE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v72 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v75 = &v61 - v7;
  v8 = sub_273D82D04(&qword_280925A28, &qword_273DA2FE8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v61 - v10;
  v12 = sub_273D82D04(&qword_280925A30, &qword_273DA2FF0);
  v71 = *(v12 - 8);
  v13 = *(v71 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - v16;
  v18 = sub_273D82D04(&qword_280925A38, &qword_273DA2FF8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v73 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v61 - v22;
  sub_273DA244C();
  v69 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = a1[3];
  v25 = a1[4];
  sub_273D8339C(a1, v24);
  if ((*(v25 + 168))(v24, v25))
  {
    v26 = sub_273D82D04(&qword_280925A40, &qword_273DA3000);
    v27 = v23;
    v28 = 1;
  }

  else
  {
    sub_273D816A8(v23);
    v26 = sub_273D82D04(&qword_280925A40, &qword_273DA3000);
    v27 = v23;
    v28 = 0;
  }

  sub_273D83074(v27, v28, 1, v26);
  sub_273D81BC0(a1, v11);
  sub_273D83E94();
  sub_273DA229C();
  v29 = a1[3];
  v30 = a1[4];
  sub_273D8339C(a1, v29);
  v31 = *((*(v30 + 136))(v29, v30) + 16);

  if (v31)
  {
    sub_273D82774(&v76);
    v67 = v77;
    v68 = v76;
    v32 = sub_273D829FC();
    v33 = sub_273D829FC();
    v34 = 0x4043000000000000;
    if (v32)
    {
      v35 = 0x4034000000000000;
    }

    else
    {
      v35 = 0x4043000000000000;
    }

    if (v33)
    {
      v34 = 0x4034000000000000;
    }

    v65 = v34;
    v66 = v35;
    v64 = 0x4024000000000000;
  }

  else
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 255;
    v68 = 0;
  }

  v36 = a1[3];
  v37 = a1[4];
  sub_273D8339C(a1, v36);
  (*(v37 + 152))(v36, v37);
  _s7Welcome0A7ContentPAAE15headerAlignment7SwiftUI08VerticalD0Vvg_0();
  v38 = sub_273DA1B9C();
  v39 = v75;
  if (v38 & 1) != 0 || (v40 = a1[3], v41 = a1[4], sub_273D8339C(a1, v40), (*(v41 + 152))(v40, v41), sub_273DA1BAC(), (sub_273DA1B9C()))
  {
    v76 = sub_273DA210C();
    v42 = sub_273DA222C();
    v76 = 0;
    v77 = 1;
    v78 = v42;
    sub_273DA189C();
    sub_273D82D04(&qword_280925A90, &qword_273DA3030);
    sub_273D840B8();
    sub_273DA1FFC();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = sub_273D82D04(&qword_280925A80, &qword_273DA3020);
  sub_273D83074(v39, v43, 1, v44);
  v63 = v23;
  v45 = v73;
  sub_273D84048(v23, v73, &qword_280925A38, &qword_273DA2FF8);
  v46 = v71;
  v47 = *(v71 + 16);
  v48 = v74;
  v62 = v17;
  v47(v74, v17, v12);
  v49 = v39;
  v50 = v72;
  sub_273D84048(v49, v72, &qword_280925A20, &qword_273DA2FE0);
  v51 = v70;
  sub_273D84048(v45, v70, &qword_280925A38, &qword_273DA2FF8);
  v52 = sub_273D82D04(&qword_280925A88, &qword_273DA3028);
  v47((v51 + v52[12]), v48, v12);
  v53 = v51 + v52[16];
  v55 = v67;
  v54 = v68;
  *v53 = v68;
  *(v53 + 8) = v55;
  v56 = v64;
  v57 = v65;
  v58 = v66;
  *(v53 + 16) = v64;
  *(v53 + 24) = v58;
  *(v53 + 32) = v56;
  *(v53 + 40) = v57;
  *(v53 + 48) = 0;
  sub_273D84048(v50, v51 + v52[20], &qword_280925A20, &qword_273DA2FE0);
  sub_273D84090(v54, v55);
  sub_273D84218(v75, &qword_280925A20);
  v59 = *(v46 + 8);
  v59(v62, v12);
  sub_273D84218(v63, &qword_280925A38);
  sub_273D84218(v72, &qword_280925A20);
  sub_273D840A4(v54, v55);
  v59(v74, v12);
  sub_273D84218(v73, &qword_280925A38);
}

uint64_t sub_273D816A8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = (*(*(sub_273D82D04(&qword_280925B60, &qword_273DA30F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v26 = &v24 - v3;
  v27 = sub_273D82D04(&qword_280925B68, &qword_273DA3100);
  v4 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v24 - v5;
  v7 = (*(*(sub_273D82D04(&qword_280925B70, &qword_273DA3108) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v25 = &v24 - v8;
  v28 = sub_273D82D04(&qword_280925B78, &qword_273DA3110);
  v9 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v24 - v10;
  v13 = v1[3];
  v12 = v1[4];
  sub_273D8339C(v1, v13);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v24 - v17;
  (*(v12 + 80))(v13, v12);
  swift_getAssociatedConformanceWitness();
  v19 = sub_273D7E860(AssociatedTypeWitness);
  (*(v15 + 8))(v18, AssociatedTypeWitness);
  sub_273DA22DC();
  sub_273DA1A7C();
  LOBYTE(v12) = sub_273DA1E8C();
  v32[168] = 1;
  v30[0] = v19;
  memcpy(&v30[1], v31, 0x70uLL);
  LOBYTE(v30[15]) = v12;
  memset(&v30[16], 0, 32);
  LOBYTE(v30[20]) = 1;
  sub_273D82D04(&qword_280925B80, &qword_273DA3118);
  sub_273D846A4();
  v20 = v26;
  sub_273DA201C();
  memcpy(v32, v30, 0xA1uLL);
  sub_273D84218(v32, &qword_280925B80);
  sub_273D84270(v20, v6, &qword_280925B60, &qword_273DA30F8);
  v6[*(v27 + 36)] = 1;
  sub_273D847B4();
  v21 = v25;
  sub_273DA206C();
  sub_273D84218(v6, &qword_280925B68);
  v30[0] = sub_273DA210C();
  v22 = sub_273DA222C();
  sub_273D84270(v21, v11, &qword_280925B70, &qword_273DA3108);
  *&v11[*(v28 + 36)] = v22;
  sub_273DA189C();
  sub_273D84950();
  sub_273DA1FFC();
  return sub_273D84218(v11, &qword_280925B78);
}

uint64_t sub_273D81B30()
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_273D81BC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v26 = sub_273D82D04(&qword_280925A60, &qword_273DA3010);
  v3 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v5 = &v23 - v4;
  v28 = sub_273D82D04(&qword_280925AC0, &qword_273DA3038);
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = &v23 - v8;
  v24 = sub_273D82D04(&qword_280925A58, &qword_273DA3008);
  v10 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v12 = &v23 - v11;
  v27 = sub_273D82D04(&qword_280925A28, &qword_273DA2FE8);
  v13 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v15 = &v23 - v14;
  sub_273DA244C();
  v25 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v5 = sub_273DA1C1C();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v16 = sub_273D82D04(&qword_280925AC8, &qword_273DA3040);
  sub_273D81F84(a1, &v5[*(v16 + 44)]);
  sub_273DA189C();
  sub_273D84664(&unk_280925A68);
  sub_273DA1FFC();
  sub_273D84218(v5, &qword_280925A60);
  v17 = sub_273D829FC();
  v18 = sub_273D829FC();
  if (v17)
  {
    v19 = 0x4034000000000000;
  }

  else
  {
    v19 = 0x4043000000000000;
  }

  if (v18)
  {
    v20 = 0x4034000000000000;
  }

  else
  {
    v20 = 0x4043000000000000;
  }

  (*(v6 + 32))(v12, v9, v28);
  v21 = &v12[*(v24 + 36)];
  *v21 = 0x4024000000000000;
  *(v21 + 1) = v19;
  *(v21 + 2) = 0x4024000000000000;
  *(v21 + 3) = v20;
  v21[32] = 0;
  sub_273DA22EC();
  sub_273DA1A7C();
  sub_273D84270(v12, v15, &qword_280925A58, &qword_273DA3008);
  memcpy(&v15[*(v27 + 36)], __src, 0x70uLL);
  sub_273D84270(v15, v29, &qword_280925A28, &qword_273DA2FE8);
}

uint64_t sub_273D81F84@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v79 = a2;
  v75 = sub_273D82D04(&qword_280925AD0, &qword_273DA3048);
  v3 = *(*(v75 - 1) + 64);
  MEMORY[0x28223BE20](v75);
  v74 = &v67 - v4;
  v78 = sub_273D82D04(&qword_280925AD8, &qword_273DA3050);
  v77 = *(v78 - 8);
  v5 = *(v77 + 64);
  v6 = MEMORY[0x28223BE20](v78);
  v76 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = &v67 - v8;
  v69 = sub_273D82D04(&qword_280925AE0, &qword_273DA3058);
  v9 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v67 - v10;
  v73 = sub_273D82D04(&qword_280925AE8, &qword_273DA3060);
  v72 = *(v73 - 8);
  v11 = *(v72 + 64);
  v12 = MEMORY[0x28223BE20](v73);
  v71 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v81 = &v67 - v14;
  sub_273DA244C();
  v70 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = a1[3];
  v16 = a1[4];
  sub_273D8339C(a1, v15);
  v17 = (*(v16 + 56))(v15, v16);
  v19 = v18;
  LOBYTE(v16) = v20;
  sub_273DA1EFC();
  v21 = sub_273DA1F5C();
  v23 = v22;
  v25 = v24;

  sub_273D842B8(v17, v19, v16 & 1);

  sub_273DA211C();
  v26 = sub_273DA1F3C();
  v28 = v27;
  v30 = v29;

  sub_273D842B8(v21, v23, v25 & 1);

  sub_273DA1ECC();
  v31 = sub_273DA1F2C();
  v33 = v32;
  LOBYTE(v17) = v34;
  v36 = v35;
  sub_273D842B8(v26, v28, v30 & 1);

  *&v86 = v31;
  *(&v86 + 1) = v33;
  LOBYTE(v87) = v17 & 1;
  *(&v87 + 1) = v36;
  v37 = v68;
  sub_273DA206C();
  sub_273D842B8(v31, v33, v17 & 1);

  if (qword_280925810 != -1)
  {
    swift_once();
  }

  v38 = sub_273D82D04(&qword_280925908, &qword_273DA3C00);
  sub_273D833F0(v38, qword_280927820);
  sub_273D842C8();
  sub_273D84664(&unk_280925918);
  sub_273DA1FEC();
  sub_273D84218(v37, &qword_280925AE0);
  v39 = a1[3];
  v40 = a1[4];
  sub_273D8339C(a1, v39);
  v41 = (*(v40 + 64))(v39, v40);
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = sub_273DA1EFC();
  KeyPath = swift_getKeyPath();
  v50 = sub_273DA212C();
  v51 = swift_getKeyPath();
  *&v82 = v41;
  *(&v82 + 1) = v43;
  *&v83 = v45;
  *(&v83 + 1) = v47;
  *&v84 = KeyPath;
  *(&v84 + 1) = v48;
  *&v85 = v51;
  *(&v85 + 1) = v50;
  sub_273D82D04(&qword_280925B00, &qword_273DA30C8);
  sub_273D84478();
  v52 = v74;
  sub_273DA206C();
  v86 = v82;
  v87 = v83;
  v88 = v84;
  v89 = v85;
  sub_273D84218(&v86, &qword_280925B00);
  sub_273D8486C(&unk_280925B50);
  v53 = v80;
  sub_273DA1FEC();
  sub_273D84218(v52, &qword_280925AD0);
  v54 = v72;
  v55 = *(v72 + 16);
  v56 = v71;
  v57 = v73;
  v55(v71, v81, v73);
  v58 = v77;
  v75 = *(v77 + 16);
  v59 = v76;
  v60 = v53;
  v61 = v78;
  v75(v76, v60, v78);
  v62 = v79;
  v55(v79, v56, v57);
  v63 = sub_273D82D04(&qword_280925B58, &qword_273DA30F0);
  v75(&v62[*(v63 + 48)], v59, v61);
  v64 = *(v58 + 8);
  v64(v80, v61);
  v65 = *(v54 + 8);
  v65(v81, v57);
  v64(v59, v61);
  v65(v56, v57);
}

uint64_t sub_273D82774@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  sub_273D8339C(v1, v3);
  (*(v4 + 144))(&v10, v3, v4);
  v5 = v1[3];
  v6 = v1[4];
  sub_273D8339C(v1, v5);
  (*(v6 + 136))(v5, v6);
  sub_273D84170();
  sub_273D841C4();
  result = sub_273DA1C5C();
  *a1 = v8;
  *(a1 + 8) = v9;
  return result;
}

uint64_t sub_273D82874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(a3 + 128);
  v6 = *(a3 + 136);
  sub_273D82D04(&qword_280925900, &qword_273DA2F68);
  sub_273DA21DC();
}

uint64_t sub_273D8294C(void *a1)
{
  v2 = type metadata accessor for WelcomeDataManager(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_273D8B870();
  v5 = a1[3];
  v6 = a1[4];
  sub_273D8339C(a1, v5);
  v7 = (*(v6 + 48))(v5, v6);
  sub_273D8BF68(v7, v8);

  v10 = a1[8];
  if (v10)
  {
    v11 = a1[9];
    return v10(result);
  }

  return result;
}

uint64_t sub_273D829FC()
{
  v1 = type metadata accessor for WelcomeListItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[3];
  v7 = v0[4];
  sub_273D8339C(v0, v6);
  v8 = (*(v7 + 136))(v6, v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    result = sub_273DA244C();
    v11 = 0;
    v12 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    while (v11 < *(v8 + 16))
    {
      sub_273D83C48(v12 + *(v2 + 72) * v11, v5, type metadata accessor for WelcomeListItem);
      sub_273DA243C();
      sub_273DA242C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (*(v5 + 5))
      {

        sub_273D83CA0(v5);
LABEL_12:

        return 1;
      }

      v13 = *(v5 + 6);

      sub_273D83CA0(v5);
      if (v13)
      {

        goto LABEL_12;
      }

      ++v11;

      if (v9 == v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    return 0;
  }

  return result;
}

uint64_t sub_273D82C54(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  return sub_273D89C94();
}

uint64_t type metadata accessor for WelcomeView()
{
  result = qword_280925840;
  if (!qword_280925840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_273D82D04(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_273D82D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_273D82D04(&qword_280925888, &qword_273DA2EF8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12 - v9;
  sub_273D84048(a1, &v12 - v9, &qword_280925888, &qword_273DA2EF8);
  return a5(v10);
}

uint64_t sub_273D82E38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_273D82E9C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_273D82F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_273D82D04(&qword_280925838, &qword_273DA2ED0);
    v9 = a1 + *(a3 + 44);

    return sub_273D82FAC(v9, a2, v8);
  }
}

uint64_t sub_273D82FE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_273D82D04(&qword_280925838, &qword_273DA2ED0);
    v8 = v5 + *(a4 + 44);

    return sub_273D83074(v8, a2, a2, v7);
  }

  return result;
}

void sub_273D8309C()
{
  sub_273D83250();
  if (v0 <= 0x3F)
  {
    sub_273D84AB4(319, &qword_280925858, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_273D832F4(319, &qword_280925860, &qword_280925868, "2 ", MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_273D84AB4(319, &qword_280925870, &type metadata for WelcomeViewEnvironment, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_273D84AB4(319, &qword_280925878, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_273D832F4(319, &qword_280925880, &qword_280925888, &qword_273DA2EF8, MEMORY[0x277CDF468]);
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

unint64_t sub_273D83250()
{
  result = qword_280925850;
  if (!qword_280925850)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280925850);
  }

  return result;
}

uint64_t sub_273D832AC(uint64_t *a1, uint64_t *a2)
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

void sub_273D832F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_273D832AC(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_273D8339C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_273D833F0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_273D83428()
{
  result = qword_280925910;
  if (!qword_280925910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925910);
  }

  return result;
}

uint64_t sub_273D83480(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_273D8348C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_273D83528()
{
  result = qword_280925940;
  if (!qword_280925940)
  {
    sub_273D832AC(&qword_280925920, &qword_273DA2F70);
    sub_273D832AC(&qword_280925908, &qword_273DA3C00);
    sub_273D83428();
    sub_273D84664(&unk_280925918);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925940);
  }

  return result;
}

unint64_t sub_273D83640()
{
  result = qword_280925948;
  if (!qword_280925948)
  {
    sub_273D832AC(&qword_280925888, &qword_273DA2EF8);
    sub_273D84384(&unk_280925950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925948);
  }

  return result;
}

unint64_t sub_273D83778()
{
  result = qword_280925968;
  if (!qword_280925968)
  {
    sub_273D832AC(&qword_280925970, &qword_273DA2F88);
    sub_273D84384(&unk_280925978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925968);
  }

  return result;
}

unint64_t sub_273D83834()
{
  result = qword_280925980;
  if (!qword_280925980)
  {
    sub_273D832AC(&qword_280925958, &qword_273DA2F80);
    sub_273D83914(&unk_280925988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925980);
  }

  return result;
}

unint64_t sub_273D83914(uint64_t a1)
{
  result = sub_273D84B90(a1);
  if (!result)
  {
    v5 = v4;
    v6 = sub_273D84B84(0, v3);
    sub_273D832AC(v6, v7);
    v5();
    result = sub_273D84B20();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_273D83974()
{
  result = qword_2809259A8;
  if (!qword_2809259A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809259A8);
  }

  return result;
}

uint64_t sub_273D839C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_273D839D8()
{
  v1 = type metadata accessor for WelcomeView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_273D82E9C((v0 + v3));
  v6 = *(v0 + v3 + 40);

  v7 = *(v0 + v3 + 48);

  if (*(v0 + v3 + 64))
  {
    v8 = *(v5 + 72);
  }

  if (*(v5 + 80))
  {
    v9 = *(v5 + 88);
  }

  sub_273D83480(*(v5 + 104), *(v5 + 112), *(v5 + 120));
  v10 = *(v5 + 136);

  v11 = *(v1 + 44);
  sub_273D82D04(&qword_280925828, &qword_273DA2E38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_273DA1D0C();
    if (!sub_273D82FAC(v5 + v11, 1, v12))
    {
      sub_273D84B6C(v12);
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
    v14 = *(v5 + v11);
  }

  v15 = *(v1 + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_273DA1D0C();
    if (!sub_273D82FAC(v5 + v15, 1, v16))
    {
      sub_273D84B6C(v16);
      (*(v17 + 8))(v5 + v15, v16);
    }
  }

  else
  {
    v18 = *(v5 + v15);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_273D83BD4()
{
  v1 = *(type metadata accessor for WelcomeView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_273D8294C(v2);
}

uint64_t sub_273D83C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_273D84B0C(v4);
  v6 = *(v5 + 16);
  v7 = sub_273D84B78();
  v8(v7);
  return a2;
}

uint64_t sub_273D83CA0(uint64_t a1)
{
  v2 = type metadata accessor for WelcomeListItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_273D83CFC()
{
  result = qword_2809259F8;
  if (!qword_2809259F8)
  {
    sub_273D832AC(&qword_2809259D0, &qword_273DA2FC0);
    sub_273D83D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809259F8);
  }

  return result;
}

unint64_t sub_273D83D88()
{
  result = qword_280925A00;
  if (!qword_280925A00)
  {
    sub_273D832AC(&qword_2809259C8, &qword_273DA2FB8);
    sub_273D84664(&unk_280925A08);
    sub_273D83E40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925A00);
  }

  return result;
}

unint64_t sub_273D83E40()
{
  result = qword_280925A10;
  if (!qword_280925A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925A10);
  }

  return result;
}

unint64_t sub_273D83E94()
{
  result = qword_280925A48;
  if (!qword_280925A48)
  {
    sub_273D832AC(&qword_280925A28, &qword_273DA2FE8);
    sub_273D83F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925A48);
  }

  return result;
}

unint64_t sub_273D83F20()
{
  result = qword_280925A50;
  if (!qword_280925A50)
  {
    sub_273D832AC(&qword_280925A58, &qword_273DA3008);
    sub_273D832AC(&qword_280925A60, &qword_273DA3010);
    sub_273D84664(&unk_280925A68);
    swift_getOpaqueTypeConformance2();
    sub_273D84664(&unk_280925A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925A50);
  }

  return result;
}

uint64_t sub_273D84048(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_273D84B4C(a1, a2, a3, a4);
  sub_273D84B0C(v5);
  v7 = *(v6 + 16);
  v8 = sub_273D84B78();
  v9(v8);
  return v4;
}

uint64_t sub_273D84090(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_273D840A4(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

unint64_t sub_273D840B8()
{
  result = qword_280925A98;
  if (!qword_280925A98)
  {
    sub_273D832AC(&qword_280925A90, &qword_273DA3030);
    sub_273D84664(&unk_280925AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925A98);
  }

  return result;
}

unint64_t sub_273D84170()
{
  result = qword_280925AB0;
  if (!qword_280925AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925AB0);
  }

  return result;
}

unint64_t sub_273D841C4()
{
  result = qword_280925AB8;
  if (!qword_280925AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925AB8);
  }

  return result;
}

uint64_t sub_273D84218(uint64_t a1, uint64_t a2)
{
  v3 = sub_273D84B84(a1, a2);
  v5 = sub_273D82D04(v3, v4);
  sub_273D84B6C(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_273D84270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_273D84B4C(a1, a2, a3, a4);
  sub_273D84B0C(v5);
  v7 = *(v6 + 32);
  v8 = sub_273D84B78();
  v9(v8);
  return v4;
}

uint64_t sub_273D842B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_273D842C8()
{
  result = qword_280925AF0;
  if (!qword_280925AF0)
  {
    sub_273D832AC(&qword_280925AE0, &qword_273DA3058);
    sub_273D84384(&unk_280925AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925AF0);
  }

  return result;
}

unint64_t sub_273D84384(uint64_t a1)
{
  result = sub_273D84B90(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_273D843C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_273DA1B2C();
  *a1 = result;
  return result;
}

uint64_t sub_273D843F4(uint64_t *a1)
{
  v1 = *a1;

  return sub_273DA1B3C();
}

uint64_t sub_273D84420@<X0>(uint64_t *a1@<X8>)
{
  result = sub_273DA1ACC();
  *a1 = result;
  return result;
}

uint64_t sub_273D8444C(uint64_t *a1)
{
  v1 = *a1;

  return sub_273DA1ADC();
}

unint64_t sub_273D84478()
{
  result = qword_280925B08;
  if (!qword_280925B08)
  {
    sub_273D832AC(&qword_280925B00, &qword_273DA30C8);
    sub_273D84530();
    sub_273D84664(&unk_280925B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925B08);
  }

  return result;
}

unint64_t sub_273D84530()
{
  result = qword_280925B10;
  if (!qword_280925B10)
  {
    sub_273D832AC(&qword_280925B18, &qword_273DA30D0);
    sub_273D845E8();
    sub_273D84664(&unk_280925B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925B10);
  }

  return result;
}

unint64_t sub_273D845E8()
{
  result = qword_280925B20;
  if (!qword_280925B20)
  {
    sub_273D832AC(&qword_280925B28, &qword_273DA30D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925B20);
  }

  return result;
}

unint64_t sub_273D84664(uint64_t a1)
{
  result = sub_273D84B90(a1);
  if (!result)
  {
    v4 = sub_273D84B84(0, v3);
    sub_273D832AC(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_273D846A4()
{
  result = qword_280925B88;
  if (!qword_280925B88)
  {
    sub_273D832AC(&qword_280925B80, &qword_273DA3118);
    sub_273D84730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925B88);
  }

  return result;
}

unint64_t sub_273D84730()
{
  result = qword_280925B90;
  if (!qword_280925B90)
  {
    sub_273D832AC(&qword_280925B98, qword_273DA3120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925B90);
  }

  return result;
}

unint64_t sub_273D847B4()
{
  result = qword_280925BA0;
  if (!qword_280925BA0)
  {
    sub_273D832AC(&qword_280925B68, &qword_273DA3100);
    sub_273D8486C(&unk_280925BA8);
    sub_273D848FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925BA0);
  }

  return result;
}

unint64_t sub_273D8486C(uint64_t a1)
{
  result = sub_273D84B90(a1);
  if (!result)
  {
    v5 = v4;
    v6 = sub_273D84B84(0, v3);
    sub_273D832AC(v6, v7);
    v5();
    sub_273D84384(&unk_280925AF8);
    result = sub_273D84B20();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_273D848FC()
{
  result = qword_280925BB0;
  if (!qword_280925BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925BB0);
  }

  return result;
}

unint64_t sub_273D84950()
{
  result = qword_280925BB8;
  if (!qword_280925BB8)
  {
    sub_273D832AC(&qword_280925B78, &qword_273DA3110);
    sub_273D8486C(&unk_280925BC0);
    sub_273D84664(&unk_280925AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925BB8);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for WelcomeViewEnvironment(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WelcomeViewEnvironment(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WelcomeViewEnvironment(uint64_t result, int a2, int a3)
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

void sub_273D84AB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_273D84B20()
{

  return swift_getWitnessTable();
}

uint64_t sub_273D84B4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_273D82D04(a3, a4);
}

uint64_t WelcomeContentType.hashValue.getter()
{
  v1 = *v0;
  sub_273DA26FC();
  MEMORY[0x2743DE210](v1);
  return sub_273DA271C();
}

uint64_t sub_273D84C30()
{
  v1 = *v0;
  sub_273DA26FC();
  MEMORY[0x2743DE210](v1);
  return sub_273DA271C();
}

unint64_t sub_273D84C78()
{
  result = qword_280925BD0;
  if (!qword_280925BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925BD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WelcomeAction.WelcomeActionType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for WelcomeContentType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x273D84E2CLL);
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

uint64_t sub_273D84E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_273DA16DC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_273D82FAC(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_273D84F4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_273DA16DC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_273D83074(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ContinueButton()
{
  result = qword_280925BD8;
  if (!qword_280925BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_273D85044()
{
  sub_273DA16DC();
  if (v0 <= 0x3F)
  {
    sub_273D850E0();
    if (v1 <= 0x3F)
    {
      sub_273D85130();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_273D850E0()
{
  if (!qword_280925858)
  {
    v0 = sub_273DA226C();
    if (!v1)
    {
      atomic_store(v0, &qword_280925858);
    }
  }
}

void sub_273D85130()
{
  if (!qword_280925860)
  {
    sub_273D832AC(&qword_280925868, "2 ");
    v0 = sub_273DA24FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280925860);
    }
  }
}

uint64_t sub_273D851B0()
{
  sub_273D82D04(&qword_280925BE8, &qword_273DA3248);
  sub_273D85C0C();
  return sub_273DA1C6C();
}

uint64_t sub_273D85228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v32 = a2;
  v2 = sub_273DA1D3C();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContinueButton();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_273D82D04(&qword_280925C20, &qword_273DA3260);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v27 = sub_273D82D04(&qword_280925C08, &qword_273DA3258);
  v13 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v15 = &v25 - v14;
  sub_273DA244C();
  v29 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = v28;
  sub_273D85EE0(v28, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v18 = swift_allocObject();
  v19 = sub_273D86050(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  MEMORY[0x28223BE20](v19);
  *(&v25 - 2) = v16;
  sub_273D82D04(&qword_280925C30, &qword_273DA3268);
  sub_273D8611C();
  sub_273DA221C();
  sub_273D86338(&qword_280925C18, &qword_280925C20, &qword_273DA3260);
  sub_273DA206C();
  (*(v9 + 8))(v12, v8);
  sub_273DA1D2C();
  sub_273D85DB0();
  sub_273D85E98(&qword_280925C28, MEMORY[0x277CDE340]);
  v21 = v31;
  v20 = v32;
  sub_273DA1FBC();
  (*(v30 + 8))(v5, v21);
  sub_273D8622C(v15);
  sub_273DA22DC();
  sub_273DA18EC();

  v22 = (v20 + *(sub_273D82D04(&qword_280925C00, &qword_273DA3250) + 36));
  v23 = v34;
  *v22 = v33;
  v22[1] = v23;
  v22[2] = v35;
  result = sub_273D82D04(&qword_280925BE8, &qword_273DA3248);
  *(v20 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_273D856CC(uint64_t a1)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for ContinueButton();
  v3 = (a1 + *(v2 + 20));
  v8 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  sub_273D82D04(&qword_280925C48, &qword_273DA3270);
  v4 = sub_273DA224C();
  v5 = a1 + *(v2 + 24);
  if (*v5)
  {
    v6 = *(v5 + 8);
    (*v5)(v4);
  }
}

uint64_t sub_273D857C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_273DA16DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_273D82D04(&qword_280925C40, &qword_273DA3C30);
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v36 = v34 - v10;
  v35 = sub_273D82D04(&qword_280925C30, &qword_273DA3268);
  v11 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v13 = v34 - v12;
  sub_273DA244C();
  v34[1] = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v4 + 16))(v7, a1, v3);
  v14 = sub_273DA1F6C();
  v16 = v15;
  v18 = v17;
  sub_273DA1EBC();
  v19 = sub_273DA1F5C();
  v21 = v20;
  v23 = v22;

  sub_273D842B8(v14, v16, v18 & 1);

  sub_273DA1EDC();
  v24 = sub_273DA1F2C();
  v26 = v25;
  LOBYTE(v14) = v27;
  v29 = v28;
  sub_273D842B8(v19, v21, v23 & 1);

  __src[0] = v24;
  __src[1] = v26;
  v30 = v14 & 1;
  LOBYTE(__src[2]) = v30;
  __src[3] = v29;
  if (qword_280925810 != -1)
  {
    swift_once();
  }

  v31 = sub_273D82D04(&qword_280925908, &qword_273DA3C00);
  sub_273D833F0(v31, qword_280927820);
  sub_273D86338(&qword_280925918, &qword_280925908, &qword_273DA3C00);
  v32 = v36;
  sub_273DA1FEC();
  sub_273D842B8(v24, v26, v30);

  sub_273DA22DC();
  sub_273DA1A7C();
  (*(v37 + 32))(v13, v32, v38);
  memcpy(&v13[*(v35 + 36)], __src, 0x70uLL);
  sub_273D8628C(v13, v39);
}

unint64_t sub_273D85C0C()
{
  result = qword_280925BF0;
  if (!qword_280925BF0)
  {
    sub_273D832AC(&qword_280925BE8, &qword_273DA3248);
    sub_273D85C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925BF0);
  }

  return result;
}

unint64_t sub_273D85C98()
{
  result = qword_280925BF8;
  if (!qword_280925BF8)
  {
    sub_273D832AC(&qword_280925C00, &qword_273DA3250);
    sub_273D832AC(&qword_280925C08, &qword_273DA3258);
    sub_273DA1D3C();
    sub_273D85DB0();
    sub_273D85E98(&qword_280925C28, MEMORY[0x277CDE340]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925BF8);
  }

  return result;
}

unint64_t sub_273D85DB0()
{
  result = qword_280925C10;
  if (!qword_280925C10)
  {
    sub_273D832AC(&qword_280925C08, &qword_273DA3258);
    sub_273D86338(&qword_280925C18, &qword_280925C20, &qword_273DA3260);
    sub_273D85E98(&qword_280925AF8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925C10);
  }

  return result;
}

uint64_t sub_273D85E98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_273D85EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinueButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D85F44()
{
  v1 = (type metadata accessor for ContinueButton() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_273DA16DC();
  sub_273D86380(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = (v0 + v3 + v1[7]);
  v8 = *v7;

  v9 = v7[1];

  v10 = (v0 + v3 + v1[8]);
  if (*v10)
  {
    v11 = v10[1];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_273D86050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinueButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D860B4()
{
  v1 = *(type metadata accessor for ContinueButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_273D856CC(v2);
}

unint64_t sub_273D8611C()
{
  result = qword_280925C38;
  if (!qword_280925C38)
  {
    sub_273D832AC(&qword_280925C30, &qword_273DA3268);
    sub_273D832AC(&qword_280925908, &qword_273DA3C00);
    sub_273D86338(&qword_280925918, &qword_280925908, &qword_273DA3C00);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925C38);
  }

  return result;
}

uint64_t sub_273D8622C(uint64_t a1)
{
  v2 = sub_273D82D04(&qword_280925C08, &qword_273DA3258);
  sub_273D86380(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_273D8628C(uint64_t a1, uint64_t a2)
{
  v4 = sub_273D82D04(&qword_280925C30, &qword_273DA3268);
  sub_273D86380(v4);
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_273D86338(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_273D832AC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomContentListStyleModifier(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CustomContentListStyleModifier(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x273D864F4);
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

uint64_t sub_273D8655C(uint64_t a1)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_273D866BC(a1);
  v4 = v2[2];
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v2;
  sub_273D82D04(&qword_280925CD0, &qword_273DA3438);
  sub_273D82D04(&qword_280925CD8, &qword_273DA3440);
  sub_273D88130();
  sub_273D88210();
  sub_273DA227C();
}

void *sub_273D866BC(uint64_t a1)
{
  v2 = type metadata accessor for WelcomeListItem();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(v6 + 80);
    v29 = v10;
    v11 = (v10 + 32) & ~v10;
    v12 = a1 + v11;
    v13 = *(v6 + 72);
    v14 = MEMORY[0x277D84F90];
    v28 = xmmword_273DA3280;
    v15 = MEMORY[0x277D84F90];
    do
    {
      sub_273D888E4(v12, v8);
      if (*(v8 + 5) || *(v8 + 6))
      {
        if (*(v14 + 16))
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_273D87CC8(0, v15[2] + 1, 1, v15);
          }

          v17 = v15[2];
          v16 = v15[3];
          if (v17 >= v16 >> 1)
          {
            v15 = sub_273D87CC8((v16 > 1), v17 + 1, 1, v15);
          }

          v15[2] = v17 + 1;
          v15[v17 + 4] = v14;

          v14 = MEMORY[0x277D84F90];
        }

        sub_273D82D04(&qword_280925D60, &qword_273DA34B8);
        v18 = swift_allocObject();
        *(v18 + 16) = v28;
        sub_273D888E4(v8, v18 + v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_273D87CC8(0, v15[2] + 1, 1, v15);
        }

        v20 = v15[2];
        v19 = v15[3];
        if (v20 >= v19 >> 1)
        {
          v15 = sub_273D87CC8((v19 > 1), v20 + 1, 1, v15);
        }

        v15[2] = v20 + 1;
        v15[v20 + 4] = v18;
      }

      else
      {
        sub_273D888E4(v8, v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_273D87BDC(0, *(v14 + 16) + 1, 1, v14);
        }

        v22 = *(v14 + 16);
        v21 = *(v14 + 24);
        if (v22 >= v21 >> 1)
        {
          v14 = sub_273D87BDC(v21 > 1, v22 + 1, 1, v14);
        }

        *(v14 + 16) = v22 + 1;
        sub_273D88A04(v27, v14 + v11 + v22 * v13);
      }

      sub_273D88948(v8, type metadata accessor for WelcomeListItem);
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F90];
  }

  if (*(v14 + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_273D87CC8(0, v15[2] + 1, 1, v15);
    }

    v24 = v15[2];
    v23 = v15[3];
    if (v24 >= v23 >> 1)
    {
      v15 = sub_273D87CC8((v23 > 1), v24 + 1, 1, v15);
    }

    v15[2] = v24 + 1;
    v15[v24 + 4] = v14;
  }

  else
  {
  }

  return v15;
}

uint64_t sub_273D86A50@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = sub_273D82D04(&qword_280925D30, &qword_273DA3468);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v24 = sub_273D82D04(&qword_280925D00, &qword_273DA3448);
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v24);
  v12 = &v23 - v11;
  v23 = sub_273D82D04(&qword_280925CD8, &qword_273DA3440);
  v13 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v15 = &v23 - v14;
  v16 = *a1;
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v23 - 2) = a2;
  *(&v23 - 1) = v16;
  sub_273D82D04(&qword_280925D10, &qword_273DA3450);
  sub_273D88358();
  result = sub_273DA22AC();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *(a2 + 16))
  {
    sub_273D90B04(*(a2 + 8 * v16 + 32), v8);
    v19 = type metadata accessor for WelcomeListItem();
    if (sub_273D82FAC(v8, 1, v19) == 1)
    {
      sub_273D884D0(v8, &qword_280925D30, &qword_273DA3468);
    }

    else
    {
      if (*(v8 + 5) || *(v8 + 6))
      {
        sub_273D88948(v8, type metadata accessor for WelcomeListItem);
        v20 = &selRef_secondarySystemBackgroundColor;
        goto LABEL_11;
      }

      sub_273D88948(v8, type metadata accessor for WelcomeListItem);
    }

    v20 = &selRef_clearColor;
LABEL_11:
    v21 = [objc_opt_self() *v20];
    v26 = sub_273DA213C();
    v22 = sub_273DA222C();
    (*(v9 + 32))(v15, v12, v24);
    *&v15[*(v23 + 36)] = v22;
    sub_273D889A0(v15, v25, &qword_280925CD8, &qword_273DA3440);
  }

  __break(1u);
  return result;
}

uint64_t sub_273D86DD8(uint64_t a1, unint64_t a2)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a1 + 16) > a2)
  {
    v5 = *(a1 + 8 * a2 + 32);

    sub_273D88528(v6);

    swift_getKeyPath();
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_273D88854;
    *(v8 + 24) = v7;
    sub_273D82D04(&qword_280925D38, &qword_273DA34A0);
    sub_273D82D04(&qword_280925D20, &qword_273DA3458);
    sub_273D86338(&qword_280925D40, &qword_280925D38, &qword_273DA34A0);
    sub_273D8889C(&qword_280925D48, MEMORY[0x277CC95F0]);
    sub_273D883DC();
    sub_273DA227C();
  }

  __break(1u);
  return result;
}

uint64_t sub_273D86FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WelcomeListItemView();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D888E4(a2, v9);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_273DA255C();

  v15 = 0xD000000000000013;
  v16 = 0x8000000273DAA570;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = a3 + 1;
    v11 = sub_273DA268C();
    MEMORY[0x2743DDEE0](v11);

    result = MEMORY[0x2743DDEE0](0x5F6D6574695FLL, 0xE600000000000000);
    if (!__OFADD__(a1, 1))
    {
      v14 = a1 + 1;
      v12 = sub_273DA268C();
      MEMORY[0x2743DDEE0](v12);

      sub_273D8889C(&qword_280925D28, type metadata accessor for WelcomeListItemView);
      sub_273DA206C();

      sub_273D88948(v9, type metadata accessor for WelcomeListItemView);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_273D8723C(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = sub_273D82D04(&qword_280925D50, &qword_273DA34A8);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_273D872CC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v47) = a2;
  v48 = a1;
  v53 = a3;
  v54 = sub_273DA196C();
  v46 = *(v54 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v54);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_273D82D04(&qword_280925C60, &qword_273DA33A0);
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v55);
  v9 = &v44 - v8;
  v50 = sub_273D82D04(&qword_280925C68, &qword_273DA33A8);
  v10 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v52 = &v44 - v11;
  v49 = sub_273DA1CCC();
  v45 = *(v49 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_273DA1BEC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_273D82D04(&qword_280925C70, &qword_273DA33B0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v44 - v22;
  v51 = sub_273D82D04(&qword_280925C78, &qword_273DA33B8);
  v24 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v27 = &v44 - v26;
  if (v47)
  {
    v47 = v25;
    sub_273DA1BDC();
    v28 = *(sub_273D82D04(&qword_280925CA0, &qword_273DA33C8) + 36);
    (*(v16 + 16))(&v23[v28], v19, v15);
    sub_273D83074(&v23[v28], 0, 1, v15);
    v46 = sub_273D82D04(&qword_280925C80, &qword_273DA33C0);
    (*(*(v46 - 8) + 16))(v23, v48, v46);
    KeyPath = swift_getKeyPath();
    v30 = &v23[*(v20 + 36)];
    v31 = *(sub_273D82D04(&qword_280925CC0, &qword_273DA33D8) + 28);
    (*(v16 + 32))(v30 + v31, v19, v15);
    sub_273D83074(v30 + v31, 0, 1, v15);
    *v30 = KeyPath;
    sub_273DA1CBC();
    v32 = sub_273D87A40();
    v33 = MEMORY[0x277CDE0D0];
    v34 = v49;
    sub_273DA20EC();
    (*(v45 + 8))(v14, v34);
    sub_273D884D0(v23, &qword_280925C70, &qword_273DA33B0);
    v35 = v47;
    v36 = v51;
    (*(v47 + 16))(v52, v27, v51);
    swift_storeEnumTagMultiPayload();
    v56 = v20;
    v57 = v34;
    v58 = v32;
    v59 = v33;
    swift_getOpaqueTypeConformance2();
    v37 = sub_273D86338(&qword_280925C88, &qword_280925C80, &qword_273DA33C0);
    v56 = v46;
    v57 = v54;
    v58 = v37;
    v59 = MEMORY[0x277CDD980];
    swift_getOpaqueTypeConformance2();
    sub_273DA1C5C();
    return (*(v35 + 8))(v27, v36);
  }

  else
  {
    sub_273DA195C();
    v39 = sub_273D82D04(&qword_280925C80, &qword_273DA33C0);
    v40 = sub_273D86338(&qword_280925C88, &qword_280925C80, &qword_273DA33C0);
    v41 = v54;
    sub_273DA20EC();
    (*(v46 + 8))(v5, v41);
    v42 = v55;
    (*(v6 + 16))(v52, v9, v55);
    swift_storeEnumTagMultiPayload();
    v43 = sub_273D87A40();
    v56 = v20;
    v57 = v49;
    v58 = v43;
    v59 = MEMORY[0x277CDE0D0];
    swift_getOpaqueTypeConformance2();
    v56 = v39;
    v57 = v41;
    v58 = v40;
    v59 = MEMORY[0x277CDD980];
    swift_getOpaqueTypeConformance2();
    sub_273DA1C5C();
    return (*(v6 + 8))(v9, v42);
  }
}

unint64_t sub_273D87A40()
{
  result = qword_280925C90;
  if (!qword_280925C90)
  {
    sub_273D832AC(&qword_280925C70, &qword_273DA33B0);
    sub_273D87AF8();
    sub_273D86338(&qword_280925CB8, &qword_280925CC0, &qword_273DA33D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925C90);
  }

  return result;
}

unint64_t sub_273D87AF8()
{
  result = qword_280925C98;
  if (!qword_280925C98)
  {
    sub_273D832AC(&qword_280925CA0, &qword_273DA33C8);
    sub_273D86338(&qword_280925C88, &qword_280925C80, &qword_273DA33C0);
    sub_273D86338(&qword_280925CA8, &qword_280925CB0, &qword_273DA33D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925C98);
  }

  return result;
}

size_t sub_273D87BDC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_273D87DF8(v8, v7);
  v10 = *(type metadata accessor for WelcomeListItem() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_273D87EF4(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_273D87CC8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_273D82D04(&qword_280925D68, &qword_273DA34C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_273D82D04(&qword_280925D70, &qword_273DA34C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_273D87DF8(uint64_t a1, uint64_t a2)
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

  sub_273D82D04(&qword_280925D60, &qword_273DA34B8);
  v4 = *(type metadata accessor for WelcomeListItem() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_273D87EF4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for WelcomeListItem(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for WelcomeListItem();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_273D87FEC(uint64_t a1)
{
  v2 = sub_273D82D04(&qword_280925CC8, &unk_273DA3410);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_273D88080(a1, &v7 - v4);
  return MEMORY[0x2743DD610](v5);
}

uint64_t sub_273D88080(uint64_t a1, uint64_t a2)
{
  v4 = sub_273D82D04(&qword_280925CC8, &unk_273DA3410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D880F0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_273D88130()
{
  result = qword_280925CE0;
  if (!qword_280925CE0)
  {
    sub_273D832AC(&qword_280925CD0, &qword_273DA3438);
    sub_273D881BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925CE0);
  }

  return result;
}

unint64_t sub_273D881BC()
{
  result = qword_280925CE8;
  if (!qword_280925CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925CE8);
  }

  return result;
}

unint64_t sub_273D88210()
{
  result = qword_280925CF0;
  if (!qword_280925CF0)
  {
    sub_273D832AC(&qword_280925CD8, &qword_273DA3440);
    sub_273D882C8();
    sub_273D86338(&qword_280925AA0, &qword_280925AA8, &qword_273DA3460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925CF0);
  }

  return result;
}

unint64_t sub_273D882C8()
{
  result = qword_280925CF8;
  if (!qword_280925CF8)
  {
    sub_273D832AC(&qword_280925D00, &qword_273DA3448);
    sub_273D88358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925CF8);
  }

  return result;
}

unint64_t sub_273D88358()
{
  result = qword_280925D08;
  if (!qword_280925D08)
  {
    sub_273D832AC(&qword_280925D10, &qword_273DA3450);
    sub_273D883DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925D08);
  }

  return result;
}

unint64_t sub_273D883DC()
{
  result = qword_280925D18;
  if (!qword_280925D18)
  {
    sub_273D832AC(&qword_280925D20, &qword_273DA3458);
    sub_273D8889C(&qword_280925D28, type metadata accessor for WelcomeListItemView);
    sub_273D8889C(&qword_280925AF8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925D18);
  }

  return result;
}

uint64_t sub_273D884D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_273D82D04(a2, a3);
  sub_273D86380(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_273D88528(uint64_t a1)
{
  v2 = sub_273D82D04(&qword_280925D50, &qword_273DA34A8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v4);
  v39 = v9;
  v40 = &v35 - v8;
  v10 = 0;
  v11 = 0;
  v36 = *(v9 + 80);
  v12 = MEMORY[0x277D84F90];
  v37 = (v36 + 32) & ~v36;
  v13 = MEMORY[0x277D84F90] + v37;
  v38 = *(a1 + 16);
  while (1)
  {
    if (v38 == v11)
    {
      v32 = v12[3];
      if (v32 >= 2)
      {
        v33 = v32 >> 1;
        v31 = __OFSUB__(v33, v10);
        v34 = v33 - v10;
        if (v31)
        {
          goto LABEL_35;
        }

        v12[2] = v34;
      }

      return v12;
    }

    v14 = *(type metadata accessor for WelcomeListItem() - 8);
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11;
    v16 = *(v2 + 48);
    *v6 = v11;
    sub_273D888E4(v15, v6 + v16);
    result = sub_273D889A0(v6, v40, &qword_280925D50, &qword_273DA34A8);
    if (v10)
    {
      v17 = v12;
    }

    else
    {
      v18 = v12[3];
      if (((v18 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v19 = a1;
      v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
      if (v20 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      sub_273D82D04(&qword_280925D58, &qword_273DA34B0);
      v22 = *(v39 + 72);
      v23 = v37;
      v17 = swift_allocObject();
      result = j__malloc_size(v17);
      if (!v22)
      {
        goto LABEL_33;
      }

      v24 = result - v23;
      if (result - v23 == 0x8000000000000000 && v22 == -1)
      {
        goto LABEL_34;
      }

      v26 = v24 / v22;
      v17[2] = v21;
      v17[3] = 2 * (v24 / v22);
      v27 = v17 + v23;
      v28 = v12[3];
      v29 = (v28 >> 1) * v22;
      if (v12[2])
      {
        if (v17 < v12 || v27 >= v12 + v37 + v29)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v17 != v12)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v12[2] = 0;
      }

      v13 = &v27[v29];
      v10 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - (v28 >> 1);

      a1 = v19;
    }

    v31 = __OFSUB__(v10--, 1);
    if (v31)
    {
      break;
    }

    result = sub_273D889A0(v40, v13, &qword_280925D50, &qword_273DA34A8);
    v13 += *(v39 + 72);
    ++v11;
    v12 = v17;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_273D8885C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_273D8889C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_273D888E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeListItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D88948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_273D86380(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_273D889A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_273D82D04(a3, a4);
  sub_273D86380(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_273D88A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeListItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_273D88A6C()
{
  result = qword_280925D78;
  if (!qword_280925D78)
  {
    sub_273D832AC(&qword_280925D80, &qword_273DA34D0);
    sub_273D832AC(&qword_280925C70, &qword_273DA33B0);
    sub_273DA1CCC();
    sub_273D87A40();
    swift_getOpaqueTypeConformance2();
    sub_273D832AC(&qword_280925C80, &qword_273DA33C0);
    sub_273DA196C();
    sub_273D86338(&qword_280925C88, &qword_280925C80, &qword_273DA33C0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925D78);
  }

  return result;
}

unint64_t sub_273D88BDC()
{
  result = qword_280925D88;
  if (!qword_280925D88)
  {
    sub_273D832AC(&qword_280925D90, &qword_273DA34D8);
    sub_273D88C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925D88);
  }

  return result;
}

unint64_t sub_273D88C60()
{
  result = qword_280925D98;
  if (!qword_280925D98)
  {
    sub_273D832AC(&qword_280925DA0, &unk_273DA34E0);
    sub_273D88210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925D98);
  }

  return result;
}

void sub_273D88CE4(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = objc_opt_self();
  if ([v6 disableActions])
  {
    sub_273D9B890(a4, a1, a2);
  }

  else
  {
    [v6 setDisableActions_];
    sub_273D9B890(a4, a1, a2);
    [v6 setDisableActions_];
  }
}

uint64_t sub_273D88DAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeListItem();

  return sub_273D82FAC(a1, a2, v4);
}

uint64_t sub_273D88E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeListItem();

  return sub_273D83074(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CarouselListItemView()
{
  result = qword_280925DA8;
  if (!qword_280925DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_273D88EA0()
{
  result = type metadata accessor for WelcomeListItem();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_273D88F28@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_273DA1C1C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_273D82D04(&qword_280925DB8, &qword_273DA3558);
  return sub_273D88F7C(v1, a1 + *(v3 + 44));
}

uint64_t sub_273D88F7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_273D82D04(&qword_280925DC0, &qword_273DA3560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v77 - v5);
  v7 = sub_273D82D04(&qword_280925DC8, &qword_273DA3568);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v83 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v77 - v11;
  sub_273DA244C();
  v81 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = a1[4];
  if (v13)
  {
    v14 = a1[4];

    v15 = sub_273DA20FC();
    v16 = (v6 + *(sub_273D82D04(&qword_280925DE0, &unk_273DA3B90) + 36));
    v17 = *(sub_273D82D04(&qword_280925DE8, &qword_273DA3580) + 28);
    v18 = *MEMORY[0x277CE1048];
    v19 = sub_273DA217C();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = swift_getKeyPath();
    *v6 = v13;
    v6[1] = v15;

    v20 = sub_273DA1EFC();
    KeyPath = swift_getKeyPath();
    v22 = (v6 + *(sub_273D82D04(&qword_280925DF0, &qword_273DA3B60) + 36));
    *v22 = KeyPath;
    v22[1] = v20;
    LOBYTE(v20) = sub_273DA1E9C();
    sub_273DA181C();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = v6 + *(v3 + 36);
    *v31 = v20;
    *(v31 + 1) = v24;
    *(v31 + 2) = v26;
    *(v31 + 3) = v28;
    *(v31 + 4) = v30;
    v31[40] = 0;
    sub_273D896F0(v6, v12);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v84 = v12;
  sub_273D83074(v12, v32, 1, v3);
  v33 = a1[1];
  v85 = *a1;
  v86 = v33;
  v34 = sub_273D8951C();

  v77 = v34;
  v35 = sub_273DA1F7C();
  v37 = v36;
  v39 = v38;
  sub_273DA1EFC();
  v40 = sub_273DA1F5C();
  v42 = v41;
  v44 = v43;

  sub_273D842B8(v35, v37, v39 & 1);

  sub_273DA1ECC();
  v45 = sub_273DA1F2C();
  v78 = v46;
  v79 = v45;
  v48 = v47;
  v80 = v49;
  sub_273D842B8(v40, v42, v44 & 1);

  v50 = a1[3];
  if (v50)
  {
    v85 = a1[2];
    v86 = v50;

    v51 = sub_273DA1F7C();
    v53 = v52;
    v55 = v54;
    sub_273DA1EFC();
    v56 = sub_273DA1F5C();
    v58 = v57;
    LODWORD(v77) = v48;
    v60 = v59;

    sub_273D842B8(v51, v53, v55 & 1);

    LODWORD(v85) = sub_273DA1CFC();
    v61 = sub_273DA1F4C();
    v63 = v62;
    LOBYTE(v51) = v64;
    v66 = v65;
    v67 = v60 & 1;
    LOBYTE(v48) = v77;
    sub_273D842B8(v56, v58, v67);

    v68 = v51 & 1;
    sub_273D895E0(v61, v63, v51 & 1);
  }

  else
  {
    v61 = 0;
    v63 = 0;
    v68 = 0;
    v66 = 0;
  }

  v69 = v83;
  sub_273D89570(v84, v83);
  v70 = v82;
  sub_273D89570(v69, v82);
  v71 = sub_273D82D04(&qword_280925DD8, &unk_273DA3570);
  v72 = v70 + *(v71 + 48);
  v73 = v78;
  v74 = v79;
  *v72 = v79;
  *(v72 + 8) = v73;
  *(v72 + 16) = v48 & 1;
  *(v72 + 24) = v80;
  v75 = (v70 + *(v71 + 64));
  sub_273D895E0(v74, v73, v48 & 1);

  sub_273D895F0(v61, v63, v68, v66);
  sub_273D89634(v61, v63, v68, v66);
  *v75 = v61;
  v75[1] = v63;
  v75[2] = v68;
  v75[3] = v66;
  sub_273D89678(v84);
  sub_273D89634(v61, v63, v68, v66);
  sub_273D842B8(v74, v73, v48 & 1);

  sub_273D89678(v69);
}

unint64_t sub_273D8951C()
{
  result = qword_280925DD0;
  if (!qword_280925DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925DD0);
  }

  return result;
}

uint64_t sub_273D89570(uint64_t a1, uint64_t a2)
{
  v4 = sub_273D82D04(&qword_280925DC8, &qword_273DA3568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D895E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_273D895F0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_273D895E0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_273D89634(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_273D842B8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_273D89678(uint64_t a1)
{
  v2 = sub_273D82D04(&qword_280925DC8, &qword_273DA3568);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_273D896F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_273D82D04(&qword_280925DC0, &qword_273DA3560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_273D89764()
{
  result = qword_280925DF8;
  if (!qword_280925DF8)
  {
    sub_273D832AC(&qword_280925E00, &unk_273DA35F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925DF8);
  }

  return result;
}

uint64_t WelcomeImageView.init(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_273DA219C();
  *a1 = result;
  return result;
}

void *WelcomeImageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_273DA215C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v1;
  (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
  v9 = sub_273DA218C();
  (*(v4 + 8))(v7, v3);
  sub_273DA22DC();
  sub_273DA1A7C();
  memcpy(&v11[8], __src, 0x70uLL);
  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = 1;
  return memcpy((a1 + 18), &v11[2], 0x76uLL);
}

void *initializeBufferWithCopyOfBuffer for WelcomeImageView(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for WelcomeImageView(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for WelcomeImageView(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for WelcomeImageView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WelcomeImageView(uint64_t result, int a2, int a3)
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

unint64_t sub_273D89AFC()
{
  result = qword_280925E08;
  if (!qword_280925E08)
  {
    sub_273D832AC(&qword_280925E10, &qword_273DA3698);
    sub_273D89B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925E08);
  }

  return result;
}

unint64_t sub_273D89B88()
{
  result = qword_280925E18;
  if (!qword_280925E18)
  {
    sub_273D832AC(&qword_280925E20, &qword_273DA36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925E18);
  }

  return result;
}

double sub_273D89C58()
{
  sub_273D89CD0();
  sub_273DA1B7C();
  return v1;
}

unint64_t sub_273D89CD0()
{
  result = qword_280925E28;
  if (!qword_280925E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925E28);
  }

  return result;
}

uint64_t View.welcome(with:detent:showsCloseButton:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for WelcomeSheet(0);
  v11 = sub_273D86380(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_273D8A384();
  v16 = (v15 - v14);
  sub_273D82E38(a1, v26);
  v17 = v10[5];
  v18 = sub_273DA1BFC();
  sub_273D86380(v18);
  (*(v19 + 16))(v16 + v17, a2);
  sub_273D8A394(v16 + v10[6]);
  v20 = v10[7];
  sub_273D8A3A0();
  *(v16 + v20) = v25;
  sub_273D8A394(v16 + v10[8]);
  v21 = v16 + v10[11];
  sub_273D8A3A0();
  *v21 = v25;
  *(v21 + 1) = *(&v25 + 1);
  v22 = (v16 + v10[12]);
  sub_273D82D04(&qword_280925E30, &qword_273DA3748);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_273DA3280;
  sub_273D89EEC(v26, v23 + 32);
  *v16 = v23;
  *(v16 + v10[9]) = 1;
  *(v16 + v10[10]) = a3;
  *v22 = 0;
  v22[1] = 0;
  MEMORY[0x2743DDBC0](v16, a4, v10, a5);
  return sub_273D89F04(v16);
}

{
  v10 = type metadata accessor for WelcomeSheet(0);
  v11 = sub_273D86380(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_273D8A384();
  v16 = (v15 - v14);
  v18 = *(v17 + 20);
  v19 = sub_273DA1BFC();
  sub_273D86380(v19);
  (*(v20 + 16))(&v16[v18], a2);
  sub_273D8A394(&v16[v10[6]]);
  v21 = v10[7];
  sub_273DA21BC();
  *&v16[v21] = v25;
  sub_273D8A394(&v16[v10[8]]);
  v22 = &v16[v10[11]];
  sub_273DA21BC();
  *v22 = v25;
  *(v22 + 1) = *(&v25 + 1);
  v23 = &v16[v10[12]];
  *v23 = 0;
  *(v23 + 1) = 0;
  *v16 = a1;
  *&v16[v10[9]] = *(a1 + 16);
  v16[v10[10]] = a3;

  MEMORY[0x2743DDBC0](v16, a4, v10, a5);
  return sub_273D89F04(v16);
}

uint64_t sub_273D89EEC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_273D89F04(uint64_t a1)
{
  v2 = type metadata accessor for WelcomeSheet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.welcome(with:detent:showsCloseButton:onCloseAction:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WelcomeSheet(0);
  v14 = sub_273D86380(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_273D8A384();
  v19 = (v18 - v17);
  sub_273D82E38(a1, v32);
  v20 = v13[5];
  v21 = sub_273DA1BFC();
  sub_273D86380(v21);
  (*(v22 + 16))(v19 + v20, a2);
  v23 = v19 + v13[6];
  *v23 = 1;
  *(v23 + 1) = 0;
  v24 = v13[7];
  sub_273D8A3A0();
  *(v19 + v24) = v31;
  v25 = v19 + v13[8];
  *v25 = 1;
  *(v25 + 1) = 0;
  v26 = v19 + v13[11];
  sub_273D8A3A0();
  *v26 = v31;
  *(v26 + 1) = *(&v31 + 1);
  v27 = (v19 + v13[12]);
  sub_273D82D04(&qword_280925E30, &qword_273DA3748);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_273DA3280;
  sub_273D89EEC(v32, v28 + 32);
  *v19 = v28;
  *(v19 + v13[9]) = 1;
  *(v19 + v13[10]) = a3;
  *v27 = a4;
  v27[1] = a5;
  sub_273D839C8(a4);
  MEMORY[0x2743DDBC0](v19, a6, v13, a7);
  return sub_273D89F04(v19);
}

uint64_t sub_273D8A2C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for WelcomeSheet(255);
  sub_273DA19CC();
  sub_273D8A32C();
  return swift_getWitnessTable();
}

unint64_t sub_273D8A32C()
{
  result = qword_280925E38;
  if (!qword_280925E38)
  {
    type metadata accessor for WelcomeSheet(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925E38);
  }

  return result;
}

uint64_t sub_273D8A3A0()
{

  return sub_273DA21BC();
}

void sub_273D8A3B8(unsigned __int8 *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_273DA239C();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

uint64_t static WelcomeConfiguration.showAllContentForTesting()()
{
  if (qword_280925800 != -1)
  {
    sub_273D8A6F0();
  }

  result = sub_273D8A710();
  byte_280925E40 = 1;
  return result;
}

uint64_t static WelcomeConfiguration.shared.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_280925800 != -1)
  {
    sub_273D8A6F0();
  }

  result = swift_beginAccess();
  *a1 = byte_280925E40;
  return result;
}

uint64_t static WelcomeConfiguration.shared.setter(char *a1)
{
  v1 = *a1;
  if (qword_280925800 != -1)
  {
    sub_273D8A6F0();
  }

  result = sub_273D8A710();
  byte_280925E40 = v1;
  return result;
}

uint64_t (*static WelcomeConfiguration.shared.modify())()
{
  if (qword_280925800 != -1)
  {
    sub_273D8A6F0();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

_BYTE *storeEnumTagSinglePayload for WelcomeConfiguration(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x273D8A6B8);
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

uint64_t sub_273D8A6F0()
{

  return swift_once();
}

uint64_t sub_273D8A710()
{

  return swift_beginAccess();
}

__n128 sub_273D8A730(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_273D8A73C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_273D8A77C(uint64_t result, int a2, int a3)
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

id sub_273D8A7D8()
{
  v0 = objc_opt_self();
  v1 = sub_273DA240C();
  v2 = [v0 linkWithBundleIdentifiers_];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x277D37670]);

  return [v4 init];
}

id sub_273D8A880(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_273DA230C();
  v12 = sub_273D8AF94(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[0] = sub_273DA232C();
  v19 = sub_273D8AF94(v33[0]);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 view];
  if (result)
  {
    v27 = result;
    [result intrinsicContentSize];
    v29 = v28;

    sub_273D8ADD0();
    v30 = sub_273DA24CC();
    v31 = swift_allocObject();
    *(v31 + 16) = a4;
    *(v31 + 24) = a5;
    *(v31 + 32) = a6;
    *(v31 + 40) = a2;
    *(v31 + 48) = v29;
    aBlock[4] = sub_273D8AE5C;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_273D8AC38;
    aBlock[3] = &unk_2882C5DF0;
    v32 = _Block_copy(aBlock);

    sub_273DA231C();
    v33[1] = MEMORY[0x277D84F90];
    sub_273D8AE84();
    sub_273D82D04(&qword_280925E58, &qword_273DA3898);
    sub_273D8AEDC();
    sub_273DA250C();
    MEMORY[0x2743DDFE0](0, v25, v18, v32);
    _Block_release(v32);

    (*(v14 + 8))(v18, v11);
    (*(v21 + 8))(v25, v33[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_273D8AB58()
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D82D04(&qword_280925E68, &qword_273DA38A0);
  sub_273DA224C();
}

uint64_t sub_273D8AC38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_273D8ACDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_273D8AF40();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_273D8AD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_273D8AF40();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_273D8ADA4()
{
  sub_273D8AF40();
  sub_273DA1DFC();
  __break(1u);
}

unint64_t sub_273D8ADD0()
{
  result = qword_280925E48;
  if (!qword_280925E48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280925E48);
  }

  return result;
}

uint64_t sub_273D8AE14()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_273D8AE5C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_273D8AB58();
}

uint64_t sub_273D8AE6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_273D8AE84()
{
  result = qword_280925E50;
  if (!qword_280925E50)
  {
    sub_273DA230C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925E50);
  }

  return result;
}

unint64_t sub_273D8AEDC()
{
  result = qword_280925E60;
  if (!qword_280925E60)
  {
    sub_273D832AC(&qword_280925E58, &qword_273DA3898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925E60);
  }

  return result;
}

unint64_t sub_273D8AF40()
{
  result = qword_280925E70;
  if (!qword_280925E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925E70);
  }

  return result;
}

uint64_t sub_273D8AFA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000273DAA690 == a2;
  if (v3 || (sub_273DA269C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000273DAA6B0 == a2;
    if (v6 || (sub_273DA269C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x776569567473616CLL && a2 == 0xEE00656D69546465)
    {

      return 2;
    }

    else
    {
      v8 = sub_273DA269C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_273D8B10C(unsigned __int8 a1)
{
  sub_273DA26FC();
  MEMORY[0x2743DE210](a1);
  return sub_273DA271C();
}

uint64_t sub_273D8B160(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x776569567473616CLL;
}

uint64_t sub_273D8B1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_273D8AFA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_273D8B23C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_273D8B0CC();
  *a1 = result;
  return result;
}

uint64_t sub_273D8B264(uint64_t a1)
{
  v2 = sub_273D8C9EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_273D8B2A0(uint64_t a1)
{
  v2 = sub_273D8C9EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_273D8B2DC(void *a1)
{
  v3 = v1;
  v5 = sub_273D82D04(&qword_280925EE8, &qword_273DA3978);
  sub_273D8AF94(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-v11];
  v13 = a1[4];
  sub_273D8339C(a1, a1[3]);
  sub_273D8C9EC();
  sub_273DA273C();
  v21 = *v3;
  v20[7] = 0;
  sub_273D82D04(&qword_280925ED0, &qword_273DA3970);
  sub_273D8CB00(&qword_280925EF0);
  sub_273D8D8E0();
  sub_273DA267C();
  if (!v2)
  {
    v14 = v3[1];
    v15 = v3[2];
    v20[6] = 1;
    sub_273DA265C();
    v16 = *(type metadata accessor for WelcomeData(0) + 24);
    v20[5] = 2;
    sub_273DA176C();
    sub_273D8D884();
    sub_273D8CB6C(v17, v18);
    sub_273D8D8E0();
    sub_273DA266C();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_273D8B4D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_273D82D04(&qword_280925E90, &qword_273DA3900);
  sub_273D8D8A8(v4);
  v6 = *(v5 + 64);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v7);
  v9 = v33 - v8;
  v10 = sub_273D82D04(&qword_280925EC0, &qword_273DA3968);
  v11 = sub_273D8AF94(v10);
  v36 = v12;
  v37 = v11;
  v14 = *(v13 + 64);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v15);
  v16 = type metadata accessor for WelcomeData(0);
  v17 = sub_273D8D8A8(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_273D8A384();
  v22 = (v21 - v20);
  v24 = *(v23 + 32);
  v25 = sub_273DA176C();
  v38 = v24;
  sub_273D83074(v22 + v24, 1, 1, v25);
  v26 = a1[4];
  sub_273D8339C(a1, a1[3]);
  sub_273D8C9EC();
  sub_273DA272C();
  if (v2)
  {
    sub_273D82E9C(a1);
    return sub_273D884D0(v22 + v38, &qword_280925E90, &qword_273DA3900);
  }

  else
  {
    v34 = v9;
    sub_273D82D04(&qword_280925ED0, &qword_273DA3970);
    v41 = 0;
    sub_273D8CB00(&qword_280925ED8);
    sub_273DA264C();
    v33[1] = v42;
    *v22 = v42;
    v40 = 1;
    v22[1] = sub_273DA262C();
    v22[2] = v27;
    v39 = 2;
    sub_273D8D884();
    sub_273D8CB6C(v28, v29);
    sub_273DA263C();
    v30 = sub_273D8D8B4();
    v31(v30);
    sub_273D8CCE0(v34, v22 + v38, &qword_280925E90, &qword_273DA3900);
    sub_273D8CA40(v22, v35);
    sub_273D82E9C(a1);
    return sub_273D8CAA4(v22);
  }
}

uint64_t sub_273D8B870()
{
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x8000000273DAA670;
  v1 = OBJC_IVAR____TtC7Welcome18WelcomeDataManager_welcomeData;
  v2 = type metadata accessor for WelcomeData(0);
  sub_273D83074(v0 + v1, 1, 1, v2);
  sub_273D8B8D4();
  return v0;
}

void sub_273D8B8D4()
{
  v1 = v0;
  v2 = sub_273D82D04(&qword_280925F00, &qword_273DA3980);
  sub_273D8D8A8(v2);
  v4 = *(v3 + 64);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for WelcomeData(0);
  v9 = sub_273D86380(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_273D8A384();
  v14 = v13 - v12;
  v15 = [objc_opt_self() standardUserDefaults];
  v16 = *(v0 + 16);
  v17 = *(v0 + 24);
  v18 = sub_273DA239C();
  v19 = [v15 dataForKey_];

  if (v19)
  {
    sub_273DA174C();

    v20 = sub_273DA167C();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_273DA166C();
    sub_273D8D86C();
    sub_273D8CB6C(v23, v24);
    sub_273DA165C();

    v25 = sub_273D8D8F4();
    sub_273D8CC88(v25, v26);
    sub_273D8CC24(v14, v7);
    sub_273D83074(v7, 0, 1, v8);
    v27 = OBJC_IVAR____TtC7Welcome18WelcomeDataManager_welcomeData;
    swift_beginAccess();
    sub_273D8CCE0(v7, v1 + v27, &qword_280925F00, &qword_273DA3980);
    swift_endAccess();
  }
}

uint64_t sub_273D8BC28()
{
  v1 = v0;
  v2 = sub_273D82D04(&qword_280925F00, &qword_273DA3980);
  sub_273D8D8A8(v2);
  v4 = *(v3 + 64);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for WelcomeData(0);
  v9 = sub_273D86380(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_273D8A384();
  v14 = v13 - v12;
  v15 = OBJC_IVAR____TtC7Welcome18WelcomeDataManager_welcomeData;
  swift_beginAccess();
  sub_273D8CBB4(v1 + v15, v7);
  if (sub_273D82FAC(v7, 1, v8) == 1)
  {
    return sub_273D884D0(v7, &qword_280925F00, &qword_273DA3980);
  }

  sub_273D8CC24(v7, v14);
  v17 = sub_273DA16AC();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_273DA169C();
  sub_273D8D86C();
  sub_273D8CB6C(v20, v21);
  v22 = sub_273DA168C();
  v24 = v23;
  v25 = [objc_opt_self() standardUserDefaults];
  v26 = sub_273DA173C();
  v27 = *(v1 + 16);
  v28 = *(v1 + 24);
  v29 = sub_273DA239C();
  [v25 setObject:v26 forKey:v29];
  sub_273D8CC88(v22, v24);

  return sub_273D8CAA4(v14);
}

uint64_t sub_273D8BF68(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_273D82D04(&qword_280925E90, &qword_273DA3900);
  sub_273D8D8A8(v6);
  v8 = *(v7 + 64);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = sub_273D82D04(&qword_280925F00, &qword_273DA3980);
  v13 = sub_273D8D8A8(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  v21 = type metadata accessor for WelcomeData(0);
  v22 = sub_273D86380(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_273D8A384();
  v27 = (v26 - v25);
  v28 = OBJC_IVAR____TtC7Welcome18WelcomeDataManager_welcomeData;
  swift_beginAccess();
  sub_273D8CBB4(v3 + v28, v20);
  if (sub_273D82FAC(v20, 1, v21) == 1)
  {
    v29 = *(v21 + 24);
    v30 = sub_273DA176C();
    sub_273D83074(v27 + v29, 1, 1, v30);
    v31 = MEMORY[0x277D84FA0];
    v27[1] = 0;
    v27[2] = 0;
    *v27 = v31;
    if (sub_273D82FAC(v20, 1, v21) != 1)
    {
      sub_273D884D0(v20, &qword_280925F00, &qword_273DA3980);
    }
  }

  else
  {
    sub_273D8CC24(v20, v27);
  }

  sub_273D8CD40(&v40, a1, a2);

  v32 = v27[2];

  v27[1] = a1;
  v27[2] = a2;
  sub_273DA175C();
  v33 = sub_273DA176C();
  sub_273D83074(v11, 0, 1, v33);
  sub_273D8CCE0(v11, v27 + *(v21 + 24), &qword_280925E90, &qword_273DA3900);
  sub_273D8CA40(v27, v18);
  sub_273D83074(v18, 0, 1, v21);
  swift_beginAccess();
  sub_273D8CCE0(v18, v3 + v28, &qword_280925F00, &qword_273DA3980);
  swift_endAccess();
  sub_273D8BC28();
  if (qword_280925808 != -1)
  {
    sub_273D8D84C();
  }

  v34 = sub_273DA17EC();
  sub_273D833F0(v34, qword_280927808);

  v35 = sub_273DA17CC();
  v36 = sub_273DA249C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_273D990C4(a1, a2, &v40);
    _os_log_impl(&dword_273D7D000, v35, v36, "Marked content with ID %s as viewed", v37, 0xCu);
    sub_273D82E9C(v38);
    sub_273D8D8C4();
    MEMORY[0x2743DE750](v37, -1, -1);
  }

  return sub_273D8CAA4(v27);
}

BOOL sub_273D8C32C()
{
  v1 = sub_273D82D04(&qword_280925F00, &qword_273DA3980);
  sub_273D8D8A8(v1);
  v3 = *(v2 + 64);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v4);
  v6 = (&v14 - v5);
  v7 = OBJC_IVAR____TtC7Welcome18WelcomeDataManager_welcomeData;
  swift_beginAccess();
  sub_273D8CBB4(v0 + v7, v6);
  v8 = type metadata accessor for WelcomeData(0);
  if (sub_273D82FAC(v6, 1, v8))
  {
    sub_273D884D0(v6, &qword_280925F00, &qword_273DA3980);
    return 0;
  }

  else
  {
    v10 = *v6;

    sub_273D884D0(v6, &qword_280925F00, &qword_273DA3980);
    v11 = sub_273D8D8F4();
    v9 = sub_273D8C450(v11, v12, v10);
  }

  return v9;
}

BOOL sub_273D8C450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_273DA26FC();
  sub_273DA23CC();
  v7 = sub_273DA271C();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_273DA269C();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_273D8C53C()
{
  v1 = v0[3];

  sub_273D884D0(v0 + OBJC_IVAR____TtC7Welcome18WelcomeDataManager_welcomeData, &qword_280925F00, &qword_273DA3980);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

void sub_273D8C5E0()
{
  sub_273D8C998(319, &qword_280925E88, type metadata accessor for WelcomeData);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_273D8C6B8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_273D8C704(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_273D82D04(&qword_280925E90, &qword_273DA3900);
    v9 = a1 + *(a3 + 24);

    return sub_273D82FAC(v9, a2, v8);
  }
}

void *sub_273D8C7AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_273D82D04(&qword_280925E90, &qword_273DA3900);
    v8 = v5 + *(a4 + 24);

    return sub_273D83074(v8, a2, a2, v7);
  }

  return result;
}

void sub_273D8C838()
{
  sub_273D8C8F0();
  if (v0 <= 0x3F)
  {
    sub_273D8C948();
    if (v1 <= 0x3F)
    {
      sub_273D8C998(319, &qword_280925EB8, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_273D8C8F0()
{
  if (!qword_280925EA8)
  {
    v0 = sub_273DA248C();
    if (!v1)
    {
      atomic_store(v0, &qword_280925EA8);
    }
  }
}

void sub_273D8C948()
{
  if (!qword_280925EB0)
  {
    v0 = sub_273DA24FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280925EB0);
    }
  }
}

void sub_273D8C998(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_273DA24FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_273D8C9EC()
{
  result = qword_280925EC8;
  if (!qword_280925EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925EC8);
  }

  return result;
}

uint64_t sub_273D8CA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D8CAA4(uint64_t a1)
{
  v2 = type metadata accessor for WelcomeData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_273D8CB00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_273D832AC(&qword_280925ED0, &qword_273DA3970);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_273D8CB6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_273D8CBB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_273D82D04(&qword_280925F00, &qword_273DA3980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D8CC24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D8CC88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_273D8CCE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_273D82D04(a3, a4);
  sub_273D86380(v6);
  (*(v7 + 40))(a2, a1);
  return a2;
}

BOOL sub_273D8CD40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_273DA26FC();
  sub_273DA23CC();
  v9 = sub_273DA271C();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_273DA269C() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_273D8D0E8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_273D8CE8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_273D82D04(&qword_280925F18, &qword_273DA3988);
  result = sub_273DA252C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_273D8D250(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_273DA26FC();
    sub_273DA23CC();
    result = sub_273DA271C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_273D8D0E8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_273D8CE8C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_273D8D40C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_273DA26FC();
      sub_273DA23CC();
      result = sub_273DA271C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_273DA269C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_273D8D2B4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_273DA26AC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_273D8D250(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_273DA38B0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_273D8D2B4()
{
  v1 = v0;
  sub_273D82D04(&qword_280925F18, &qword_273DA3988);
  v2 = *v0;
  v3 = sub_273DA251C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_273D8D40C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_273D82D04(&qword_280925F18, &qword_273DA3988);
  result = sub_273DA252C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_273DA26FC();

        sub_273DA23CC();
        result = sub_273DA271C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WelcomeData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x273D8D70CLL);
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

unint64_t sub_273D8D748()
{
  result = qword_280925F20;
  if (!qword_280925F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925F20);
  }

  return result;
}

unint64_t sub_273D8D7A0()
{
  result = qword_280925F28;
  if (!qword_280925F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925F28);
  }

  return result;
}

unint64_t sub_273D8D7F8()
{
  result = qword_280925F30;
  if (!qword_280925F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925F30);
  }

  return result;
}

uint64_t sub_273D8D84C()
{

  return swift_once();
}

void sub_273D8D8C4()
{

  JUMPOUT(0x2743DE750);
}

uint64_t sub_273D8D914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeListItem();

  return sub_273D82FAC(a1, a2, v4);
}

uint64_t sub_273D8D970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeListItem();

  return sub_273D83074(a1, a2, a2, v4);
}

uint64_t type metadata accessor for WelcomeListItemView()
{
  result = qword_280925F38;
  if (!qword_280925F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_273D8DA24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v56 = sub_273D82D04(&qword_280925F48, &qword_273DA3B18);
  sub_273D86380(v56);
  v4 = *(v3 + 64);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v5);
  v7 = (&v54 - v6);
  v8 = type metadata accessor for WelcomeListItemView();
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = sub_273D82D04(&qword_280925F50, &qword_273DA3B20);
  sub_273D8AF94(v57);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  v62 = sub_273D82D04(&qword_280925F58, &qword_273DA3B28);
  sub_273D86380(v62);
  v18 = *(v17 + 64);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  v59 = sub_273D82D04(&qword_280925F60, &qword_273DA3B30);
  sub_273D86380(v59);
  v23 = *(v22 + 64);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v24);
  v61 = &v54 - v25;
  v58 = sub_273D82D04(&qword_280925F68, &qword_273DA3B38);
  sub_273D86380(v58);
  v27 = *(v26 + 64);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v28);
  v30 = &v54 - v29;
  v60 = sub_273D82D04(&qword_280925F70, &qword_273DA3B40);
  sub_273D8AF94(v60);
  v32 = *(v31 + 64);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v33);
  v36 = &v54 - v35;
  v38 = v2[5];
  v37 = v2[6];
  if (!v38)
  {
    if (!v37)
    {
      v48 = v34;
      *v30 = sub_273DA1BAC();
      *(v30 + 1) = 0x4024000000000000;
      v30[16] = 0;
      v49 = sub_273D82D04(&qword_280925F78, &qword_273DA3B48);
      sub_273D8E058(v2, &v30[*(v49 + 44)]);
      sub_273DA189C();
      sub_273D8F670();
      v51 = sub_273D86338(v50, &qword_280925F68, &qword_273DA3B38);
      v52 = v58;
      sub_273DA1FFC();
      sub_273D884D0(v30, &qword_280925F68, &qword_273DA3B38);
      v53 = v60;
      (*(v48 + 16))(v61, v36, v60);
      swift_storeEnumTagMultiPayload();
      v64 = v52;
      v65 = v51;
      sub_273D8F688();
      sub_273D8ED88();
      sub_273DA1C5C();
      return (*(v48 + 8))(v36, v53);
    }

    goto LABEL_5;
  }

  if (v37)
  {
LABEL_5:
    sub_273D8EF2C(v2, &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v39 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v40 = swift_allocObject();
    v41 = sub_273D8F094(&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39);
    MEMORY[0x28223BE20](v41);
    *(&v54 - 2) = v2;
    sub_273D82D04(&qword_280925FA0, &qword_273DA3B50);
    sub_273D8EE40();
    sub_273DA19AC();
    v42 = v57;
    (*(v11 + 16))(v7, v16, v57);
    swift_storeEnumTagMultiPayload();
    sub_273D8F6B4(&qword_280925F90, &qword_280925F50, &qword_273DA3B20);
    sub_273DA1C5C();
    (*(v11 + 8))(v16, v42);
    goto LABEL_6;
  }

  *v7 = v38;
  swift_storeEnumTagMultiPayload();

  sub_273D82D04(&qword_280925FA0, &qword_273DA3B50);
  sub_273D8F6B4(&qword_280925F90, &qword_280925F50, &qword_273DA3B20);
  sub_273D8EE40();
  sub_273DA1C5C();
LABEL_6:
  sub_273D8EEBC(v21, v61);
  swift_storeEnumTagMultiPayload();
  sub_273D8F670();
  v46 = sub_273D86338(v43, v44, v45);
  v64 = v58;
  v65 = v46;
  sub_273D8F688();
  sub_273D8ED88();
  sub_273DA1C5C();
  return sub_273D884D0(v21, &qword_280925F58, &qword_273DA3B28);
}

uint64_t sub_273D8E058@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_273D82D04(&qword_280925FA8, &qword_273DA3B58);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v50 = sub_273D82D04(&qword_280925DF0, &qword_273DA3B60);
  v10 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v12 = (&v44 - v11);
  v13 = sub_273D82D04(&qword_280925FB0, &qword_273DA3B68);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v44 - v15);
  v17 = sub_273D82D04(&qword_280925FB8, &qword_273DA3B70);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v52 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v44 - v21;
  sub_273DA244C();
  v51 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = a1[4];
  if (v23)
  {
    v47 = v13;
    v48 = a1;

    *v16 = sub_273DA22CC();
    v16[1] = v24;
    v46 = sub_273DA243C();
    sub_273DA242C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v49 = v7;
    v45 = v16 + *(sub_273D82D04(&qword_280925FD0, &qword_273DA3B88) + 44);
    v25 = sub_273DA20FC();
    v26 = *(sub_273D82D04(&qword_280925DE0, &unk_273DA3B90) + 36);
    v44 = v16;
    v27 = (v12 + v26);
    v28 = *(sub_273D82D04(&qword_280925DE8, &qword_273DA3580) + 28);
    v29 = *MEMORY[0x277CE1048];
    v30 = sub_273DA217C();
    (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
    *v27 = swift_getKeyPath();
    *v12 = v23;
    v12[1] = v25;

    v31 = sub_273DA1F0C();
    KeyPath = swift_getKeyPath();
    v33 = (v12 + *(v50 + 36));
    *v33 = KeyPath;
    v33[1] = v31;
    if (qword_280925810 != -1)
    {
      swift_once();
    }

    v34 = sub_273D82D04(&qword_280925908, &qword_273DA3C00);
    sub_273D833F0(v34, qword_280927820);
    sub_273D8F280();
    sub_273D86338(&qword_280925918, &qword_280925908, &qword_273DA3C00);
    v35 = v45;
    sub_273DA1FEC();
    sub_273D884D0(v12, &qword_280925DF0, &qword_273DA3B60);
    sub_273DA22DC();
    sub_273DA18EC();

    v36 = &v35[*(sub_273D82D04(&qword_280926010, &qword_273DA3C20) + 36)];
    v37 = v55;
    *v36 = v54;
    *(v36 + 1) = v37;
    *(v36 + 2) = v56;
    sub_273D8F4A8(v44, v22);
    v38 = 0;
    a1 = v48;
    v7 = v49;
    v13 = v47;
  }

  else
  {
    v38 = 1;
  }

  sub_273D83074(v22, v38, 1, v13);
  *v9 = sub_273DA1C1C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v39 = sub_273D82D04(&qword_280925FC0, &qword_273DA3B78);
  sub_273D8E654(a1, &v9[*(v39 + 44)]);
  v40 = v52;
  sub_273D8F510(v22, v52, &qword_280925FB8, &qword_273DA3B70);
  sub_273D8F510(v9, v7, &qword_280925FA8, &qword_273DA3B58);
  v41 = v53;
  sub_273D8F510(v40, v53, &qword_280925FB8, &qword_273DA3B70);
  v42 = sub_273D82D04(&qword_280925FC8, &qword_273DA3B80);
  sub_273D8F510(v7, v41 + *(v42 + 48), &qword_280925FA8, &qword_273DA3B58);
  sub_273D884D0(v9, &qword_280925FA8, &qword_273DA3B58);
  sub_273D884D0(v22, &qword_280925FB8, &qword_273DA3B70);
  sub_273D884D0(v7, &qword_280925FA8, &qword_273DA3B58);
  sub_273D884D0(v40, &qword_280925FB8, &qword_273DA3B70);
}

uint64_t sub_273D8E654@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v3 = sub_273D82D04(&qword_280926018, &qword_273DA3C28);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v72 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = &v64 - v7;
  v8 = sub_273D82D04(&qword_280925C40, &qword_273DA3C30);
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v64 - v12;
  sub_273DA244C();
  v66 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = a1[1];
  v74 = *a1;
  v75 = v13;
  v14 = sub_273D8951C();

  v64 = v14;
  v15 = sub_273DA1F7C();
  v17 = v16;
  v19 = v18;
  sub_273DA1EBC();
  v20 = sub_273DA1F5C();
  v22 = v21;
  v65 = a1;
  v24 = v23;

  sub_273D842B8(v15, v17, v19 & 1);

  sub_273DA1EEC();
  v25 = sub_273DA1F2C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_273D842B8(v20, v22, v24 & 1);

  v74 = v25;
  v75 = v27;
  v76 = v29 & 1;
  v77 = v31;
  if (qword_280925810 != -1)
  {
    swift_once();
  }

  v32 = sub_273D82D04(&qword_280925908, &qword_273DA3C00);
  v33 = sub_273D833F0(v32, qword_280927820);
  v34 = sub_273D86338(&qword_280925918, &qword_280925908, &qword_273DA3C00);
  sub_273DA1FEC();
  sub_273D842B8(v25, v27, v29 & 1);

  v35 = v65[3];
  if (v35)
  {
    v74 = v65[2];
    v75 = v35;

    v36 = sub_273DA1F7C();
    v38 = v37;
    v40 = v39;
    sub_273DA1EBC();
    v41 = sub_273DA1F5C();
    v43 = v42;
    v64 = v33;
    v65 = v34;
    v45 = v44;

    sub_273D842B8(v36, v38, v40 & 1);

    LODWORD(v74) = sub_273DA1CFC();
    v46 = sub_273DA1F4C();
    v48 = v47;
    LOBYTE(v38) = v49;
    v51 = v50;
    sub_273D842B8(v41, v43, v45 & 1);

    v74 = v46;
    v75 = v48;
    v76 = v38 & 1;
    v77 = v51;
    v52 = v67;
    sub_273DA1FEC();
    sub_273D842B8(v46, v48, v38 & 1);

    v54 = v68;
    v53 = v69;
    v55 = v70;
    (*(v69 + 32))(v68, v52, v70);
    v56 = 0;
  }

  else
  {
    v56 = 1;
    v53 = v69;
    v55 = v70;
    v52 = v67;
    v54 = v68;
  }

  sub_273D83074(v54, v56, 1, v55);
  v57 = *(v53 + 16);
  v58 = v73;
  v57(v52, v73, v55);
  v59 = v72;
  sub_273D8F510(v54, v72, &qword_280926018, &qword_273DA3C28);
  v60 = v71;
  v57(v71, v52, v55);
  v61 = sub_273D82D04(&qword_280926020, &qword_273DA3C38);
  sub_273D8F510(v59, &v60[*(v61 + 48)], &qword_280926018, &qword_273DA3C28);
  sub_273D884D0(v54, &qword_280926018, &qword_273DA3C28);
  v62 = *(v53 + 8);
  v62(v58, v55);
  sub_273D884D0(v59, &qword_280926018, &qword_273DA3C28);
  v62(v52, v55);
}

uint64_t sub_273D8EC3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 48);

  *a2 = v4;
  return result;
}

uint64_t sub_273D8ECE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 40);

  *a2 = v4;
  return result;
}

unint64_t sub_273D8ED88()
{
  result = qword_280925F88;
  if (!qword_280925F88)
  {
    sub_273D832AC(&qword_280925F58, &qword_273DA3B28);
    sub_273D86338(&qword_280925F90, &qword_280925F50, &qword_273DA3B20);
    sub_273D8EE40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925F88);
  }

  return result;
}

unint64_t sub_273D8EE40()
{
  result = qword_280925F98;
  if (!qword_280925F98)
  {
    sub_273D832AC(&qword_280925FA0, &qword_273DA3B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925F98);
  }

  return result;
}

uint64_t sub_273D8EEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_273D82D04(&qword_280925F58, &qword_273DA3B28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D8EF2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeListItemView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D8EF90()
{
  v1 = *(type metadata accessor for WelcomeListItemView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 48);

  v10 = *(type metadata accessor for WelcomeListItem() + 36);
  v11 = sub_273DA178C();
  sub_273D86380(v11);
  (*(v12 + 8))(v0 + v3 + v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_273D8F094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeListItemView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D8F0F8@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeListItemView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_273D8EC3C(v4, a1);
}

uint64_t sub_273D8F1B8(uint64_t a1)
{
  v2 = sub_273DA217C();
  v3 = sub_273D8AF94(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_273DA1A9C();
}

unint64_t sub_273D8F280()
{
  result = qword_280925FD8;
  if (!qword_280925FD8)
  {
    sub_273D832AC(&qword_280925DF0, &qword_273DA3B60);
    sub_273D8F338();
    sub_273D86338(&qword_280925B30, &qword_280925B38, &qword_273DA30E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925FD8);
  }

  return result;
}

unint64_t sub_273D8F338()
{
  result = qword_280925FE0;
  if (!qword_280925FE0)
  {
    sub_273D832AC(&qword_280925DE0, &unk_273DA3B90);
    sub_273D8F3F0();
    sub_273D86338(&qword_280926008, &qword_280925DE8, &qword_273DA3580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925FE0);
  }

  return result;
}

unint64_t sub_273D8F3F0()
{
  result = qword_280925FE8;
  if (!qword_280925FE8)
  {
    sub_273D832AC(&qword_280925FF0, &qword_273DA3C08);
    sub_273D86338(&qword_280925FF8, &qword_280926000, &unk_273DA3C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925FE8);
  }

  return result;
}

uint64_t sub_273D8F4A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_273D82D04(&qword_280925FB0, &qword_273DA3B68);
  sub_273D86380(v4);
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_273D8F510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_273D82D04(a3, a4);
  sub_273D86380(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_273D8F574()
{
  result = qword_280926028;
  if (!qword_280926028)
  {
    sub_273D832AC(&qword_280926030, qword_273DA3C40);
    sub_273D832AC(&qword_280925F68, &qword_273DA3B38);
    sub_273D86338(&qword_280925F80, &qword_280925F68, &qword_273DA3B38);
    swift_getOpaqueTypeConformance2();
    sub_273D8ED88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926028);
  }

  return result;
}

uint64_t sub_273D8F688()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_273D8F6B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_273D86338(a1, a2, a3);
}

unint64_t sub_273D8F6EC()
{
  result = qword_280926038;
  if (!qword_280926038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926038);
  }

  return result;
}

id sub_273D8F740(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CB85E0]) init];
  [v3 setPlayer_];
  [v3 setShowsPlaybackControls_];
  v4 = v3;
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];

    [v4 setVideoGravity_];
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_273D8F83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_273D8F92C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_273D8F8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_273D8F92C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_273D8F904()
{
  sub_273D8F92C();
  sub_273DA1DFC();
  __break(1u);
}

unint64_t sub_273D8F92C()
{
  result = qword_280926040;
  if (!qword_280926040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926040);
  }

  return result;
}

uint64_t KeyPathAccessible.set<A>(_:_:)(uint64_t *a1)
{
  sub_273D8FBC0(a1);
  sub_273D8FB90(v3 + *MEMORY[0x277D84568]);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_273D8FB78(v7, v12);
  v9(v8);
  swift_setAtReferenceWritableKeyPath();
  sub_273D8FBA8();
  return (*(v10 + 16))(v2, v1);
}

uint64_t KeyPathAccessible.with<A>(_:_:)(uint64_t *a1)
{
  sub_273D8FBC0(a1);
  sub_273D8FB90(v3 + *MEMORY[0x277D84308]);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_273D8FB78(v7, v12);
  v9(v8);
  swift_setAtWritableKeyPath();
  sub_273D8FBA8();
  return (*(v10 + 32))(v2, v1);
}

double sub_273D8FC00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_273DA1A4C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_273DA1A6C();
  v7 = sub_273D8AF94(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_273D82D04(&qword_280926048, &qword_273DA3E18);
  v15 = sub_273D8AF94(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v25[-v20];
  v26 = a1;
  sub_273D82D04(&qword_280926050, &qword_273DA3E20);
  sub_273D90104();
  sub_273DA22BC();
  sub_273DA1A3C();
  sub_273DA1A5C();
  sub_273D86338(&qword_280926068, &qword_280926048, &qword_273DA3E18);
  sub_273DA1F8C();
  (*(v9 + 8))(v13, v6);
  (*(v17 + 8))(v21, v14);
  v22 = sub_273DA1E6C();
  v23 = a2 + *(sub_273D82D04(&qword_280926070, &qword_273DA3E28) + 36);
  *v23 = v22;
  result = 0.0;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 1;
  return result;
}

uint64_t sub_273D8FE8C()
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D82D04(&qword_280925D70, &qword_273DA34C8);
  sub_273DA178C();
  type metadata accessor for CarouselListItemView();
  sub_273D86338(&qword_280926078, &qword_280925D70, &qword_273DA34C8);
  sub_273D901B8(&qword_280926060, type metadata accessor for CarouselListItemView);
  sub_273D901B8(&qword_280926080, type metadata accessor for WelcomeListItem);
  sub_273DA228C();
}

uint64_t sub_273D90048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D888E4(a1, a2);
}

unint64_t sub_273D90104()
{
  result = qword_280926058;
  if (!qword_280926058)
  {
    sub_273D832AC(&qword_280926050, &qword_273DA3E20);
    sub_273D901B8(&qword_280926060, type metadata accessor for CarouselListItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926058);
  }

  return result;
}

uint64_t sub_273D901B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_273D90204()
{
  result = qword_280926088;
  if (!qword_280926088)
  {
    sub_273D832AC(&qword_280926070, &qword_273DA3E28);
    sub_273D832AC(&qword_280926048, &qword_273DA3E18);
    sub_273DA1A6C();
    sub_273D86338(&qword_280926068, &qword_280926048, &qword_273DA3E18);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926088);
  }

  return result;
}

uint64_t WelcomeListItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeListItem() + 36);
  v4 = sub_273DA178C();
  sub_273D84B6C(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for WelcomeListItem()
{
  result = qword_280926090;
  if (!qword_280926090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WelcomeListItem.init(title:description:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = a6 + *(type metadata accessor for WelcomeListItem() + 36);
  result = sub_273DA177C();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[5] = 0;
  a6[6] = 0;
  a6[4] = a5;
  return result;
}

uint64_t WelcomeListItem.init<A>(customTitleView:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  sub_273D84B6C(a2);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  sub_273D8A384();
  v8 = a3 + *(type metadata accessor for WelcomeListItem() + 36);
  v9 = sub_273DA177C();
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = 0;
  a1(v9);
  result = sub_273DA222C();
  a3[5] = result;
  a3[6] = 0;
  return result;
}

uint64_t WelcomeListItem.init<A, B>(collapsedView:expandedView:)@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X5>, void *a4@<X8>)
{
  sub_273D84B6C(a3);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  sub_273D8A384();
  sub_273D84B6C(v10);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  sub_273D8A384();
  v14 = a4 + *(type metadata accessor for WelcomeListItem() + 36);
  v15 = sub_273DA177C();
  *a4 = 0;
  a4[1] = 0xE000000000000000;
  a4[3] = 0;
  a4[4] = 0;
  a4[2] = 0;
  a1(v15);
  a4[5] = sub_273DA222C();
  a2();
  result = sub_273DA222C();
  a4[6] = result;
  return result;
}

unint64_t sub_273D90644()
{
  result = qword_280925D48;
  if (!qword_280925D48)
  {
    sub_273DA178C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925D48);
  }

  return result;
}

uint64_t sub_273D906B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_273DA178C();
    v9 = a1 + *(a3 + 36);

    return sub_273D82FAC(v9, a2, v8);
  }
}

uint64_t sub_273D90750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_273DA178C();
    v8 = v5 + *(a4 + 36);

    return sub_273D83074(v8, a2, a2, v7);
  }

  return result;
}

void sub_273D907D0()
{
  sub_273D908BC(319, &qword_280925EB0);
  if (v0 <= 0x3F)
  {
    sub_273D908BC(319, &qword_2809260A0);
    if (v1 <= 0x3F)
    {
      sub_273D908BC(319, &qword_2809260A8);
      if (v2 <= 0x3F)
      {
        sub_273DA178C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_273D908BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_273DA24FC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void UIViewController.presentWelcome(_:animated:)(void *a1, char a2)
{
  v3 = v2;
  v6 = a1[3];
  v7 = a1[4];
  sub_273D8339C(a1, v6);
  if ((*(v7 + 160))(v6, v7))
  {
    sub_273D82E38(a1, v13);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v10 = a2 & 1;
    *(v9 + 24) = v10;
    v11 = objc_allocWithZone(type metadata accessor for WelcomeUIViewController());
    v12 = WelcomeUIViewController.init(_:onContinue:)(v13, sub_273D90AF8, v9);
    [v3 presentViewController:v12 animated:v10 completion:0];
  }
}

uint64_t sub_273D90A20()
{
  MEMORY[0x2743DE800](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_273D90A58(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong dismissViewControllerAnimated:a2 & 1 completion:0];
  }
}

uint64_t sub_273D90AC0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_273D90B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for WelcomeListItem();
  v6 = v5;
  if (v4)
  {
    sub_273D964B8(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, type metadata accessor for WelcomeListItem);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_273D83074(a2, v7, 1, v6);
}

double sub_273D90BBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_273D82E38(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t WelcomeDismissalType.hashValue.getter()
{
  v1 = *v0;
  sub_273DA26FC();
  MEMORY[0x2743DE210](v1);
  return sub_273DA271C();
}

unint64_t sub_273D90C7C()
{
  result = qword_2809260B0;
  if (!qword_2809260B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809260B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WelcomeDismissalType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for WelcomeDismissalType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x273D90E24);
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

uint64_t sub_273D90E7C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_273D97410(*a1);
  }

  v7 = sub_273DA1BFC();
  v8 = a1 + *(a3 + 20);

  return sub_273D82FAC(v8, a2, v7);
}

void *sub_273D90F0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_273DA1BFC();
    v8 = v5 + *(a4 + 20);

    return sub_273D83074(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_273D90FAC()
{
  sub_273D91154(319, &qword_2809260C8, &qword_2809260D0, &unk_273DA3F30, MEMORY[0x277D83940]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_273DA1BFC();
    if (v3 <= 0x3F)
    {
      sub_273D967EC(319, &qword_2809260D8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      v1 = v4;
      if (v5 <= 0x3F)
      {
        sub_273D967EC(319, &qword_2809260E0, MEMORY[0x277D83B88], MEMORY[0x277CE10B8]);
        if (v7 > 0x3F)
        {
          return v6;
        }

        else
        {
          sub_273D91154(319, &qword_280925860, &qword_280925868, "2 ", MEMORY[0x277D83D88]);
          v1 = v8;
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_273D91154(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_273D832AC(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_273D911D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a1;
  v48 = a2;
  v47 = sub_273D82D04(&qword_2809260E8, &qword_273DA3F90);
  v4 = sub_273D86380(v47);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v43 - v7;
  v9 = type metadata accessor for WelcomeSheet(0);
  v10 = sub_273D8AF94(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = sub_273D82D04(&qword_2809260F0, &qword_273DA3F98);
  v16 = sub_273D8AF94(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = v43 - v21;
  sub_273D90BBC(*v3, &v51);
  v23 = v54;
  if (v54)
  {
    v44 = v12;
    v45 = v18;
    v24 = v55;
    sub_273D8339C(&v51, v54);
    v25 = (*(v24 + 160))(v23, v24);
    sub_273D82E9C(&v51);
    if (v25)
    {
      v26 = v3 + *(v9 + 24);
      v27 = *v26;
      v28 = *(v26 + 1);
      v49 = v27;
      v50 = v28;
      sub_273D82D04(&qword_280926140, &qword_273DA3FC8);
      sub_273DA21EC();
      v43[3] = v53;
      sub_273D964B8(v3, v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeSheet);
      v29 = (*(v44 + 80) + 16) & ~*(v44 + 80);
      v30 = swift_allocObject();
      sub_273D96B20(v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for WelcomeSheet);
      v31 = sub_273D82D04(&qword_280926100, &qword_273DA3FA8);
      v44 = sub_273D82D04(&qword_280926108, &qword_273DA3FB0);
      sub_273D97344();
      v41 = sub_273D86338(v32, &qword_280926100, &qword_273DA3FA8);
      v42 = sub_273D93AA0();
      sub_273DA209C();

      v33 = v45;
      (*(v45 + 16))(v8, v22, v15);
      swift_storeEnumTagMultiPayload();
      v51 = v31;
      v52 = v44;
      v53 = v41;
      v54 = v42;
      sub_273D9735C();
      sub_273D973DC();
      sub_273DA1C5C();
      return (*(v33 + 8))(v22, v15);
    }
  }

  else
  {
    sub_273D884D0(&v51, &qword_2809260F8, &qword_273DA3FA0);
  }

  v35 = sub_273D82D04(&qword_280926100, &qword_273DA3FA8);
  sub_273D86380(v35);
  (*(v36 + 16))(v8, v46, v35);
  swift_storeEnumTagMultiPayload();
  v37 = sub_273D832AC(&qword_280926108, &qword_273DA3FB0);
  sub_273D97344();
  v39 = sub_273D86338(v38, &qword_280926100, &qword_273DA3FA8);
  v40 = sub_273D93AA0();
  v51 = v35;
  v52 = v37;
  v53 = v39;
  v54 = v40;
  sub_273D9735C();
  sub_273D973DC();
  return sub_273DA1C5C();
}

uint64_t sub_273D9164C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for WelcomeSheet(0);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_273D82D04(&qword_280926120, &qword_273DA3FB8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v36 - v10;
  sub_273DA244C();
  v36[1] = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D964B8(a1, v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeSheet);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_273D96B20(v6, v13 + v12, type metadata accessor for WelcomeSheet);
  v38 = sub_273D93D80;
  v39 = v13;
  sub_273D82D04(&qword_280926148, &qword_273DA3FD0);
  v14 = sub_273DA1BFC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_273DA3280;
  (*(v15 + 16))(v18 + v17, a1 + v3[5], v14);
  sub_273D95A3C(v18);
  v19 = sub_273D82D04(&qword_280926128, &qword_273DA3FC0);
  v20 = sub_273D86338(&qword_280926130, &qword_280926128, &qword_273DA3FC0);
  sub_273DA203C();

  v38 = v19;
  v39 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v37;
  sub_273DA208C();
  (*(v8 + 8))(v11, v7);
  v22 = *(a1 + v3[10]);
  v23 = a1 + v3[11];
  v24 = *v23;
  v25 = *(v23 + 8);
  v41 = v24;
  v42 = v25;
  sub_273D82D04(&qword_280926140, &qword_273DA3FC8);
  sub_273DA21EC();
  v26 = v38;
  v27 = v39;
  LOBYTE(v20) = v40;
  v28 = (a1 + v3[12]);
  v29 = *v28;
  v30 = v28[1];
  v31 = (v21 + *(sub_273D82D04(&qword_280926108, &qword_273DA3FB0) + 36));
  *v31 = swift_getKeyPath();
  sub_273D82D04(&qword_280926150, &qword_273DA4008);
  swift_storeEnumTagMultiPayload();
  v32 = type metadata accessor for WelcomeSheetCloseButton(0);
  *(v31 + v32[5]) = v22;
  v33 = v31 + v32[6];
  *v33 = v26;
  *(v33 + 1) = v27;
  v33[16] = v20;
  v34 = (v31 + v32[7]);
  *v34 = v29;
  v34[1] = v30;
  sub_273D839C8(v29);
}

uint64_t sub_273D91AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v16 = a2;
  v17 = a1;
  v18 = a3;
  v3 = sub_273DA192C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = type metadata accessor for WelcomeSheet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D964B8(v16, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeSheet);
  (*(v4 + 16))(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v3);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v8 + *(v4 + 80) + v10) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_273D96B20(v9, v12 + v10, type metadata accessor for WelcomeSheet);
  (*(v4 + 32))(v12 + v11, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  v14 = v18;
  *v18 = sub_273D95E04;
  v14[1] = v12;
  return result;
}

uint64_t sub_273D91D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a1;
  v97 = a4;
  v6 = sub_273DA1A0C();
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = *(v93 + 64);
  MEMORY[0x28223BE20](v6);
  v90 = v8;
  v92 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for WelcomeSheet(0);
  v100 = *(v102 - 8);
  v9 = *(v100 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = v10;
  v95 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_273DA1D8C();
  v99 = *(v84 - 8);
  v11 = *(v99 + 64);
  MEMORY[0x28223BE20](v84);
  v98 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_273DA1D6C();
  v76 = *(v78 - 1);
  v13 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v75 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_273D82D04(&qword_280926170, &qword_273DA4018);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v70 - v18;
  v73 = sub_273D82D04(&qword_280926178, &qword_273DA4020);
  v71 = *(v73 - 8);
  v20 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v22 = &v70 - v21;
  v79 = sub_273D82D04(&qword_280926180, &qword_273DA4028);
  v74 = *(v79 - 8);
  v23 = *(v74 + 64);
  MEMORY[0x28223BE20](v79);
  v72 = &v70 - v24;
  v82 = sub_273D82D04(&qword_280926188, &qword_273DA4030);
  v80 = *(v82 - 8);
  v25 = *(v80 + 64);
  MEMORY[0x28223BE20](v82);
  v77 = &v70 - v26;
  v86 = sub_273D82D04(&qword_280926190, &qword_273DA4038);
  v83 = *(v86 - 8);
  v27 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v81 = &v70 - v28;
  v89 = sub_273D82D04(&qword_280926198, &qword_273DA4040);
  v88 = *(v89 - 8);
  v29 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v70 - v30;
  sub_273DA244C();
  v85 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = sub_273DA1E3C();
  MEMORY[0x28223BE20](v31);
  v96 = a2;
  *(&v70 - 2) = a2;
  *(&v70 - 1) = a3;
  sub_273D82D04(&qword_2809261A0, &qword_273DA4048);
  sub_273D86338(&qword_2809261A8, &qword_2809261A0, &qword_273DA4048);
  sub_273DA183C();
  v32 = sub_273D86338(&qword_2809261B0, &qword_280926170, &qword_273DA4018);
  sub_273DA1FDC();
  (*(v16 + 8))(v19, v15);
  v33 = v75;
  sub_273DA1D4C();
  sub_273D82D04(&qword_280925A18, &qword_273DA4050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_273DA2DD0;
  v35 = sub_273DA1E5C();
  *(inited + 32) = v35;
  v36 = sub_273DA1E3C();
  *(inited + 33) = v36;
  sub_273DA1E4C();
  sub_273DA1E4C();
  if (sub_273DA1E4C() != v35)
  {
    sub_273DA1E4C();
  }

  sub_273DA1E4C();
  if (sub_273DA1E4C() != v36)
  {
    sub_273DA1E4C();
  }

  *&v103 = v15;
  *(&v103 + 1) = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v72;
  v39 = v73;
  sub_273DA200C();
  (*(v76 + 8))(v33, v78);
  (*(v71 + 8))(v22, v39);
  v40 = v98;
  sub_273DA1D7C();
  *&v103 = v39;
  *(&v103 + 1) = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = MEMORY[0x277CDE3A8];
  v43 = v77;
  v44 = v79;
  v45 = v84;
  sub_273DA205C();
  (*(v99 + 8))(v40, v45);
  (*(v74 + 8))(v38, v44);
  v47 = v95;
  v46 = v96;
  v78 = type metadata accessor for WelcomeSheet;
  sub_273D964B8(v96, v95, type metadata accessor for WelcomeSheet);
  v48 = *(v100 + 80);
  v49 = (v48 + 16) & ~v48;
  v99 = v49;
  v100 = v48 | 7;
  v101 += v49;
  v50 = swift_allocObject();
  v98 = type metadata accessor for WelcomeSheet;
  sub_273D96B20(v47, v50 + v49, type metadata accessor for WelcomeSheet);
  *&v103 = v44;
  *(&v103 + 1) = v45;
  v104 = v41;
  v105 = v42;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v81;
  v53 = v82;
  sub_273DA202C();

  (*(v80 + 8))(v43, v53);
  v103 = *(v46 + *(v102 + 28));
  sub_273D82D04(&qword_2809261B8, &qword_273DA4058);
  sub_273DA21CC();
  sub_273D964B8(v46, v47, type metadata accessor for WelcomeSheet);
  v55 = v92;
  v54 = v93;
  v56 = v94;
  (*(v93 + 16))(v92, v91, v94);
  v57 = (v101 + *(v54 + 80)) & ~*(v54 + 80);
  v58 = swift_allocObject();
  sub_273D96B20(v47, v58 + v99, v98);
  (*(v54 + 32))(v58 + v57, v55, v56);
  *&v103 = v53;
  *(&v103 + 1) = v51;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = MEMORY[0x277D83B88];
  v61 = MEMORY[0x277D83BA8];
  v62 = v87;
  v63 = v86;
  sub_273DA20CC();

  (*(v83 + 8))(v52, v63);
  v64 = v46 + *(v102 + 32);
  v65 = *v64;
  v66 = *(v64 + 8);
  LOBYTE(v103) = v65;
  *(&v103 + 1) = v66;
  sub_273D82D04(&qword_280926140, &qword_273DA3FC8);
  sub_273DA21CC();
  sub_273D964B8(v46, v47, v78);
  v67 = swift_allocObject();
  sub_273D96B20(v47, v67 + v99, v98);
  *&v103 = v63;
  *(&v103 + 1) = v60;
  v104 = v59;
  v105 = v61;
  swift_getOpaqueTypeConformance2();
  v68 = v89;
  sub_273DA20CC();

  (*(v88 + 8))(v62, v68);
}

uint64_t sub_273D92A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_273DA1CDC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *&v8[-4] = a1;
  *&v8[-2] = a2;
  _s7Welcome0A7ContentPAAE15headerAlignment7SwiftUI08VerticalD0Vvg_0();
  v8[3] = 0;
  sub_273D95DA4(&qword_2809261C0, MEMORY[0x277CE0428]);
  sub_273DA276C();
  sub_273D82D04(&qword_2809261C8, &qword_273DA4060);
  sub_273D9627C();
  sub_273DA182C();
}

uint64_t sub_273D92BD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v18 = a3;
  v4 = sub_273DA192C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = type metadata accessor for WelcomeSheet(0);
  v15 = *(v7 - 8);
  v8 = *(v15 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *a1;
  KeyPath = swift_getKeyPath();
  sub_273D964B8(a1, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeSheet);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v4);
  v10 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v11 = (v8 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_273D96B20(v9, v12 + v10, type metadata accessor for WelcomeSheet);
  (*(v5 + 32))(v12 + v11, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_273D82D04(&qword_2809261F0, &qword_273DA4098);
  sub_273D82D04(&qword_2809261E0, &qword_273DA4068);
  sub_273D86338(&qword_2809261F8, &qword_2809261F0, &qword_273DA4098);
  sub_273D96300();
  sub_273DA227C();
}

uint64_t sub_273D92EF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_273D8339C(a1, v3);
  result = (*(v4 + 48))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

double sub_273D92F48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a3;
  v7 = type metadata accessor for WelcomeSheet(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_273DA244C();
  v24[0] = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D82E38(a1, a4);
  v10 = a2 + *(v7 + 32);
  v11 = *v10;
  v12 = *(v10 + 8);
  LOBYTE(v25) = v11;
  v26 = v12;
  sub_273D82D04(&qword_280926140, &qword_273DA3FC8);
  sub_273DA21EC();
  v13 = v27;
  v14 = v28;
  sub_273D964B8(a2, v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeSheet);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_273D96B20(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for WelcomeSheet);
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 1;
  *(a4 + 104) = swift_getKeyPath();
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  v25 = 0;
  sub_273DA21BC();
  v17 = *(&v27 + 1);
  *(a4 + 128) = v27;
  *(a4 + 136) = v17;
  v18 = type metadata accessor for WelcomeView();
  v19 = *(v18 + 44);
  *(a4 + v19) = swift_getKeyPath();
  sub_273D82D04(&qword_280925828, &qword_273DA2E38);
  swift_storeEnumTagMultiPayload();
  v20 = *(v18 + 48);
  *(a4 + v20) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(a4 + 40) = v13;
  *(a4 + 56) = v14;
  *(a4 + 64) = sub_273D96474;
  *(a4 + 72) = v16;
  sub_273DA191C();
  sub_273DA191C();
  sub_273DA22DC();
  sub_273DA18EC();

  v21 = (a4 + *(sub_273D82D04(&qword_2809261E0, &qword_273DA4068) + 36));
  v22 = v28;
  *v21 = v27;
  v21[1] = v22;
  result = *&v29;
  v21[2] = v29;
  return result;
}

uint64_t sub_273D9325C(uint64_t a1)
{
  result = type metadata accessor for WelcomeSheet(0);
  v3 = a1 + *(result + 48);
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);
    v6 = 0;
    return v4(&v6);
  }

  return result;
}

void sub_273D932B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_273DA199C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v34 - v11;
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((sub_273DA187C() & 1) == 0)
  {

    goto LABEL_9;
  }

  sub_273DA1D1C();
  sub_273DA198C();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = *(v6 + 8);
  v21(v12, v5);
  v37.origin.x = v14;
  v37.origin.y = v16;
  v37.size.width = v18;
  v37.size.height = v20;
  if (CGRectGetWidth(v37) <= 0.0)
  {
LABEL_9:

    return;
  }

  sub_273DA1D1C();
  sub_273DA197C();
  v23 = v22;
  v21(v12, v5);
  sub_273DA1D1C();
  sub_273DA198C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v21(v10, v5);
  v38.origin.x = v25;
  v38.origin.y = v27;
  v38.size.width = v29;
  v38.size.height = v31;
  v32 = v23 / CGRectGetWidth(v38) + 0.5;
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v32 < 9.22337204e18)
  {
    v33 = v32;
    v35 = *(a4 + *(type metadata accessor for WelcomeSheet(0) + 28));
    v34[1] = v33;
    sub_273D82D04(&qword_2809261B8, &qword_273DA4058);
    sub_273DA21DC();
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_273D935C0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = type metadata accessor for WelcomeSheet(0);
  if (v4 >= *(a3 + *(result + 36)))
  {
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *(*a3 + 16))
    {
      v6 = sub_273D82E38(*a3 + 40 * v4 + 32, v7);
      MEMORY[0x28223BE20](v6);
      sub_273DA22FC();
      sub_273DA193C();

      sub_273D82E9C(v7);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_273D93748(uint64_t a1, void *a2)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a2[3];
  v4 = a2[4];
  sub_273D8339C(a2, v3);
  (*(v4 + 48))(v3, v4);
  sub_273DA19FC();
}

uint64_t sub_273D93860(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v4)
  {
  }

  v6 = type metadata accessor for WelcomeSheet(0);
  v7 = (a3 + v6[7]);
  v9 = *v7;
  v8 = v7[1];

  sub_273D82D04(&qword_2809261B8, &qword_273DA4058);
  result = sub_273DA21CC();
  if (!__OFADD__(v16, 1))
  {
    sub_273DA21DC();

    sub_273DA21CC();
    if (v9 == *(a3 + v6[9]))
    {
      v10 = (a3 + v6[6]);
      v11 = *v10;
      v12 = *(v10 + 1);

      sub_273D82D04(&qword_280926140, &qword_273DA3FC8);
      sub_273DA21CC();
      sub_273DA21DC();
    }

    else
    {
      v13 = (a3 + v6[8]);
      v14 = *v13;
      v15 = *(v13 + 1);
      sub_273D82D04(&qword_280926140, &qword_273DA3FC8);
      sub_273DA21DC();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_273D93AA0()
{
  result = qword_280926118;
  if (!qword_280926118)
  {
    sub_273D832AC(&qword_280926108, &qword_273DA3FB0);
    sub_273D832AC(&qword_280926120, &qword_273DA3FB8);
    sub_273D832AC(&qword_280926128, &qword_273DA3FC0);
    sub_273D86338(&qword_280926130, &qword_280926128, &qword_273DA3FC0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_273D95DA4(&qword_280926138, type metadata accessor for WelcomeSheetCloseButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926118);
  }

  return result;
}

uint64_t sub_273D93C60()
{
  v1 = (type metadata accessor for WelcomeSheet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_273DA1BFC();
  sub_273D86380(v7);
  (*(v8 + 8))(v0 + v3 + v6);
  sub_273D97424(v1[8]);
  sub_273D97424(v1[9]);
  sub_273D97424(v1[10]);
  sub_273D97424(v1[13]);
  v9 = (v0 + v3 + v1[14]);
  if (*v9)
  {
    v10 = v9[1];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_273D93D80()
{
  v3 = sub_273D973F4();
  sub_273D8D8A8(v3);
  v5 = *(v4 + 80);
  sub_273D973D0();

  return sub_273D91AD0(v0, v1 + v6, v2);
}

uint64_t sub_273D93DEC(uint64_t a1)
{
  v3 = sub_273D82D04(&qword_280926230, &qword_273DA41B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = sub_273D82D04(&qword_280926238, &qword_273DA41B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = type metadata accessor for WelcomeSheetCloseButton(0);
  if (*(v1 + *(v12 + 20)) == 1)
  {
    MEMORY[0x28223BE20](v12);
    *(&v15 - 2) = a1;
    *(&v15 - 1) = v1;
    sub_273D82D04(&qword_280926258, &qword_273DA41C8);
    sub_273D96984();
    sub_273DA19DC();
    (*(v8 + 16))(v6, v11, v7);
    swift_storeEnumTagMultiPayload();
    sub_273D82D04(&qword_280926240, &qword_273DA41C0);
    sub_273D86338(&qword_280926248, &qword_280926238, &qword_273DA41B8);
    sub_273D86338(&qword_280926250, &qword_280926240, &qword_273DA41C0);
    sub_273DA1C5C();
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    v14 = sub_273D82D04(&qword_280926240, &qword_273DA41C0);
    (*(*(v14 - 8) + 16))(v6, a1, v14);
    swift_storeEnumTagMultiPayload();
    sub_273D86338(&qword_280926248, &qword_280926238, &qword_273DA41B8);
    sub_273D86338(&qword_280926250, &qword_280926240, &qword_273DA41C0);
    return sub_273DA1C5C();
  }
}

uint64_t sub_273D94150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v25 = a3;
  v4 = type metadata accessor for WelcomeSheetCloseButton(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D964B8(a2, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeSheetCloseButton);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v9 = sub_273D96B20(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for WelcomeSheetCloseButton);
  MEMORY[0x28223BE20](v9);
  *(&v24 - 2) = sub_273D96B80;
  *(&v24 - 1) = v8;
  sub_273D82D04(&qword_280926240, &qword_273DA41C0);
  sub_273D82D04(&qword_280926268, &qword_273DA41D0);
  sub_273D86338(&qword_280926250, &qword_280926240, &qword_273DA41C0);
  v10 = sub_273D832AC(&qword_280926270, &qword_273DA41D8);
  v11 = sub_273D86338(&qword_280926278, &qword_280926270, &qword_273DA41D8);
  v26 = v10;
  v27 = v11;
  swift_getOpaqueTypeConformance2();
  v12 = v25;
  sub_273DA20AC();

  v13 = sub_273DA1E8C();
  sub_273DA181C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  result = sub_273D82D04(&qword_280926258, &qword_273DA41C8);
  v23 = v12 + *(result + 36);
  *v23 = v13;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_273D9447C(uint64_t a1)
{
  v2 = sub_273DA1CAC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_273D82D04(&qword_280926270, &qword_273DA41D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_273DA1C9C();
  v12 = a1;
  sub_273D82D04(&qword_280926280, &qword_273DA41E0);
  sub_273D96C40();
  sub_273DA188C();
  v9 = sub_273D86338(&qword_280926278, &qword_280926270, &qword_273DA41D8);
  MEMORY[0x2743DD7F0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_273D94634(void (*a1)(uint64_t))
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_273D946EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v45 = a2;
  v2 = type metadata accessor for WelcomeSheetCloseButton(0);
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = v4;
  v44 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_273D82D04(&qword_2809262A0, &qword_273DA41F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = sub_273DA17AC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_273DA16CC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_273DA238C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v39 = sub_273DA16DC();
  v37 = *(v39 - 8);
  v21 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_273D82D04(&qword_280926298, &qword_273DA41E8);
  v38 = *(v40 - 8);
  v24 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v36 = &v35 - v25;
  sub_273DA244C();
  v35 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273DA237C();
  if (qword_280925820 != -1)
  {
    swift_once();
  }

  v26 = sub_273D833F0(v14, qword_280927840);
  (*(v15 + 16))(v18, v26, v14);
  sub_273DA179C();
  sub_273DA16EC();
  sub_273DA17FC();
  v27 = sub_273DA180C();
  sub_273D83074(v11, 0, 1, v27);
  v28 = v44;
  sub_273D964B8(v43, v44, type metadata accessor for WelcomeSheetCloseButton);
  v29 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v30 = swift_allocObject();
  sub_273D96B20(v28, v30 + v29, type metadata accessor for WelcomeSheetCloseButton);
  v31 = sub_273D8F510(v11, v9, &qword_2809262A0, &qword_273DA41F0);
  MEMORY[0x28223BE20](v31);
  *(&v35 - 4) = v23;
  *(&v35 - 3) = 0x6B72616D78;
  *(&v35 - 2) = 0xE500000000000000;
  sub_273D82D04(&qword_2809262A8, &qword_273DA41F8);
  sub_273D86338(&qword_2809262B0, &qword_2809262A8, &qword_273DA41F8);
  v32 = v36;
  sub_273DA220C();
  sub_273D884D0(v11, &qword_2809262A0, &qword_273DA41F0);
  (*(v37 + 8))(v23, v39);
  sub_273D86338(&qword_280926290, &qword_280926298, &qword_273DA41E8);
  v33 = v40;
  sub_273DA206C();
  (*(v38 + 8))(v32, v33);
}

uint64_t sub_273D94D64(uint64_t a1)
{
  v26 = a1;
  v1 = type metadata accessor for WelcomeSheetCloseButton(0);
  v25 = *(v1 - 8);
  v2 = *(v25 + 64);
  MEMORY[0x28223BE20](v1);
  v3 = sub_273D82D04(&qword_2809262B8, &unk_273DA4200);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = sub_273DA190C();
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = v26;
  v12 = v26 + *(v1 + 28);
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 8);
    LOBYTE(v28[0]) = 1;
    v13(v28);
    v15 = sub_273DA246C();
    sub_273D83074(v6, 1, 1, v15);
    sub_273D964B8(v11, &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeSheetCloseButton);
    v16 = sub_273DA243C();
    v17 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = MEMORY[0x277D85700];
    sub_273D96B20(&v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for WelcomeSheetCloseButton);
    sub_273D9D89C(0, 0, v6, &unk_273DA4218, v18);
  }

  else
  {
    v19 = v26 + *(v1 + 24);
    v20 = *v19;
    v21 = *(v19 + 8);
    LOBYTE(v19) = *(v19 + 16);
    v28[0] = v20;
    v28[1] = v21;
    v29 = v19;
    v27 = 1;
    sub_273D82D04(&qword_280925C48, &qword_273DA3270);
    sub_273DA224C();
    sub_273D955C0(v10);
    sub_273DA18FC();
    (*(v24 + 8))(v10, v7);
  }
}

uint64_t sub_273D950C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_273DA190C();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = sub_273DA25EC();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  sub_273DA244C();
  v4[15] = sub_273DA243C();
  v12 = sub_273DA242C();
  v4[16] = v12;
  v4[17] = v11;

  return MEMORY[0x2822009F8](sub_273D95218, v12, v11);
}

uint64_t sub_273D95218()
{
  v1 = *(v0 + 112);
  sub_273DA26DC();
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_273D952E4;
  v3 = *(v0 + 112);

  return sub_273DA0910();
}

uint64_t sub_273D952E4()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 144);
  v5 = *v1;

  v6 = v2[14];
  v7 = v2[13];
  v8 = v2[12];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[16];
    v10 = v3[17];
    v11 = sub_273D97340;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[16];
    v10 = v3[17];
    v11 = sub_273D95478;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_273D95478()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);

  v3 = (v2 + *(type metadata accessor for WelcomeSheetCloseButton(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  *(v0 + 16) = *v3;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  sub_273D82D04(&qword_280925C48, &qword_273DA3270);
  MEMORY[0x2743DDD40]();
  if ((*(v0 + 33) & 1) == 0)
  {
    *(v0 + 34) = 1;
    v7 = *(v0 + 88);
    v8 = *(v0 + 80);
    v9 = *(v0 + 72);
    v10 = *(v0 + 64);
    *(v0 + 40) = v4;
    *(v0 + 48) = v5;
    *(v0 + 56) = v6;
    sub_273DA224C();
    sub_273D955C0(v7);
    sub_273DA18FC();
    (*(v8 + 8))(v7, v9);
  }

  v11 = *(v0 + 112);
  v12 = *(v0 + 88);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_273D955C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_273DA1B6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_273D82D04(&qword_280926150, &qword_273DA4008);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_273D8F510(v2, &v17 - v11, &qword_280926150, &qword_273DA4008);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_273DA190C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_273DA24BC();
    v16 = sub_273DA1E2C();
    sub_273DA17BC();

    sub_273DA1B5C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_273D957C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_273DA16DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v10, a1, v6);
  v15 = v10;
  v13 = a2;
  v14 = a3;
  sub_273DA21AC();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_273D9591C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_273DA16DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = sub_273DA1F6C();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_273D959F4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_273DA214C();
  *a1 = result;
  return result;
}

uint64_t sub_273D95A3C(uint64_t a1)
{
  v2 = sub_273DA1BFC();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  sub_273D82D04(&qword_280926158, &qword_273DA4010);
  result = sub_273DA253C();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    sub_273D95DA4(&qword_280926160, MEMORY[0x277CDDE90]);
    v16 = sub_273DA234C();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      sub_273D95DA4(&qword_280926168, MEMORY[0x277CDDE90]);
      v23 = sub_273DA236C();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_273D95DA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_273D95E04()
{
  v0 = sub_273D973F4();
  sub_273D973A8(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_273DA192C();
  sub_273D8D8A8(v5);
  v7 = *(v6 + 80);
  v8 = sub_273D97388();

  return sub_273D91D30(v8, v9, v10, v11);
}

void sub_273D95EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for WelcomeSheet(0);
  sub_273D8D8A8(v7);
  v9 = *(v8 + 80);
  sub_273D973D0();

  sub_273D932B0(a1, a2, a3, v3 + v10);
}

uint64_t sub_273D95F58(uint64_t (*a1)(void))
{
  v3 = (type metadata accessor for WelcomeSheet(0) - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v21 = *(*v3 + 64);
  v6 = a1(0);
  sub_273D8AF94(v6);
  v8 = v7;
  v9 = *(v7 + 80);
  v11 = *(v10 + 64);
  v12 = *(v1 + v5);

  v13 = v3[7];
  v14 = sub_273DA1BFC();
  sub_273D86380(v14);
  (*(v15 + 8))(v1 + v5 + v13);
  sub_273D9743C(v3[8]);
  sub_273D9743C(v3[9]);
  sub_273D9743C(v3[10]);
  sub_273D9743C(v3[13]);
  v16 = (v1 + v5 + v3[14]);
  if (*v16)
  {
    v17 = v16[1];
  }

  v18 = v4 | v9;
  v19 = (v5 + v21 + v9) & ~v9;
  (*(v8 + 8))(v1 + v19, v6);

  return MEMORY[0x2821FE8E8](v1, v19 + v11, v18 | 7);
}

uint64_t sub_273D96108(uint64_t a1, unint64_t *a2)
{
  v5 = type metadata accessor for WelcomeSheet(0);
  sub_273D973A8(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_273DA1A0C();
  sub_273D8D8A8(v10);
  v12 = v2 + ((v7 + v9 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_273D935C0(a1, a2, v2 + v7);
}

uint64_t sub_273D961E0(uint64_t a1, char *a2)
{
  v5 = type metadata accessor for WelcomeSheet(0);
  sub_273D8D8A8(v5);
  v7 = *(v6 + 80);
  sub_273D973D0();

  return sub_273D93860(a1, a2, v2 + v8);
}

unint64_t sub_273D9627C()
{
  result = qword_2809261D0;
  if (!qword_2809261D0)
  {
    sub_273D832AC(&qword_2809261C8, &qword_273DA4060);
    sub_273D96300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809261D0);
  }

  return result;
}

unint64_t sub_273D96300()
{
  result = qword_2809261D8;
  if (!qword_2809261D8)
  {
    sub_273D832AC(&qword_2809261E0, &qword_273DA4068);
    sub_273D95DA4(&qword_2809261E8, type metadata accessor for WelcomeView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809261D8);
  }

  return result;
}

double sub_273D963C0()
{
  v0 = sub_273D973F4();
  sub_273D973A8(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_273DA192C();
  sub_273D8D8A8(v5);
  v7 = *(v6 + 80);
  v8 = sub_273D97388();

  return sub_273D92F48(v8, v9, v10, v11);
}

uint64_t sub_273D964B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_273D86380(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_273D9652C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_273D82D04(&qword_280926200, &unk_273DA4130);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_273D97410(*(a1 + *(a3 + 24) + 8));
  }

  return sub_273D82FAC(a1, a2, v6);
}

uint64_t sub_273D965F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_273D82D04(&qword_280926200, &unk_273DA4130);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_273D83074(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_273D966A8()
{
  sub_273D96794();
  if (v0 <= 0x3F)
  {
    sub_273D967EC(319, &qword_280925858, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_273D91154(319, &qword_280925860, &qword_280925868, "2 ", MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_273D96794()
{
  if (!qword_280926218)
  {
    sub_273DA190C();
    v0 = sub_273DA186C();
    if (!v1)
    {
      atomic_store(v0, &qword_280926218);
    }
  }
}

void sub_273D967EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_273D96840()
{
  result = qword_280926220;
  if (!qword_280926220)
  {
    sub_273D832AC(&qword_280926228, "*<");
    sub_273D832AC(&qword_280926100, &qword_273DA3FA8);
    sub_273D832AC(&qword_280926108, &qword_273DA3FB0);
    sub_273D86338(&qword_280926110, &qword_280926100, &qword_273DA3FA8);
    sub_273D93AA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926220);
  }

  return result;
}

unint64_t sub_273D96984()
{
  result = qword_280926260;
  if (!qword_280926260)
  {
    sub_273D832AC(&qword_280926258, &qword_273DA41C8);
    sub_273D832AC(&qword_280926240, &qword_273DA41C0);
    sub_273D832AC(&qword_280926268, &qword_273DA41D0);
    sub_273D86338(&qword_280926250, &qword_280926240, &qword_273DA41C0);
    sub_273D832AC(&qword_280926270, &qword_273DA41D8);
    sub_273D86338(&qword_280926278, &qword_280926270, &qword_273DA41D8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926260);
  }

  return result;
}

uint64_t sub_273D96B20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_273D86380(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_273D96BAC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  sub_273D8D8A8(v3);
  v5 = *(v4 + 80);
  sub_273D973D0();

  return a2(v2 + v6);
}

unint64_t sub_273D96C40()
{
  result = qword_280926288;
  if (!qword_280926288)
  {
    sub_273D832AC(&qword_280926280, &qword_273DA41E0);
    sub_273D86338(&qword_280926290, &qword_280926298, &qword_273DA41E8);
    sub_273D95DA4(&qword_280925AF8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926288);
  }

  return result;
}

uint64_t sub_273D96D28()
{
  v2 = type metadata accessor for WelcomeSheetCloseButton(0);
  sub_273D973B8(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = (v1 + v5);
  sub_273D82D04(&qword_280926150, &qword_273DA4008);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_273DA190C();
    sub_273D86380(v9);
    (*(v10 + 8))(v1 + v5);
  }

  else
  {
    v11 = *v8;
  }

  v12 = (v8 + *(v0 + 24));
  v13 = *v12;

  v14 = v12[1];

  v15 = (v8 + *(v0 + 28));
  if (*v15)
  {
    v16 = v15[1];
  }

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_273D96E88(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  sub_273D8D8A8(v3);
  v5 = *(v4 + 80);
  sub_273D973D0();

  return a2(v2 + v6);
}

uint64_t sub_273D96F10@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_273D959F4(a1);
}

uint64_t sub_273D96F18()
{
  v2 = type metadata accessor for WelcomeSheetCloseButton(0);
  sub_273D973B8(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  v9 = (v1 + v5);
  sub_273D82D04(&qword_280926150, &qword_273DA4008);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_273DA190C();
    sub_273D86380(v10);
    (*(v11 + 8))(v1 + v5);
  }

  else
  {
    v12 = *v9;
  }

  v13 = (v9 + *(v0 + 24));
  v14 = *v13;

  v15 = v13[1];

  v16 = (v9 + *(v0 + 28));
  if (*v16)
  {
    v17 = v16[1];
  }

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_273D97054(uint64_t a1)
{
  v4 = type metadata accessor for WelcomeSheetCloseButton(0);
  sub_273D8D8A8(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_273D97140;

  return sub_273D950C8(a1, v7, v8, v1 + v6);
}

uint64_t sub_273D97140()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_273D97238()
{
  result = qword_2809262C0;
  if (!qword_2809262C0)
  {
    sub_273D832AC(&qword_2809262C8, &qword_273DA4220);
    sub_273D86338(&qword_280926248, &qword_280926238, &qword_273DA41B8);
    sub_273D86338(&qword_280926250, &qword_280926240, &qword_273DA41C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809262C0);
  }

  return result;
}

uint64_t sub_273D9735C()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_273D973F4()
{

  return type metadata accessor for WelcomeSheet(0);
}

uint64_t sub_273D97410@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_273D97424@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_273D9743C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_273D97454@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_273DA1C0C();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = sub_273D82D04(&qword_2809262D0, &qword_273DA4228);
  sub_273D97528(a1, a2 + *(v4 + 44));
}

uint64_t sub_273D97528@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v81 = sub_273D82D04(&qword_2809262D8, &qword_273DA4230);
  v3 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v5 = &v72 - v4;
  v6 = sub_273D82D04(&qword_2809262E0, &qword_273DA4238);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v80 = &v72 - v8;
  v9 = sub_273D82D04(&qword_2809262E8, &qword_273DA4240);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v77 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v76 = &v72 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v75 = &v72 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v72 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v72 = &v72 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - v22;
  sub_273DA244C();
  v74 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v73 = v19;
  v24 = a1[3];
  v25 = a1[4];
  sub_273D8339C(a1, v24);
  (*(v25 + 112))(&v82, v24, v25);
  v26 = v83;
  v79 = v23;
  if (v83)
  {
    v27 = *(&v82 + 1);
    v28 = v6;
    v29 = v82;
    sub_273D980B8(a1, &v82);
    v30 = swift_allocObject();
    v31 = v83;
    *(v30 + 16) = v82;
    *(v30 + 32) = v31;
    *(v30 + 48) = v84;
    *(v30 + 64) = v85;
    *(v30 + 72) = v29;
    *(v30 + 80) = v27;
    *(v30 + 88) = v26;
    MEMORY[0x28223BE20](v30);
    *(&v72 - 4) = a1;
    *(&v72 - 24) = v29;
    *(&v72 - 2) = v27;
    *(&v72 - 1) = v26;

    sub_273D82D04(&qword_280925C30, &qword_273DA3268);
    sub_273D8611C();
    sub_273DA221C();
    v23 = v79;
    sub_273DA22DC();
    sub_273DA18EC();
    v32 = &v5[*(sub_273D82D04(&qword_2809262F8, &qword_273DA4250) + 36)];
    v33 = v87;
    *v32 = v86;
    *(v32 + 1) = v33;
    *(v32 + 2) = v88;
    v34 = &v5[*(sub_273D82D04(&qword_280926300, &qword_273DA4258) + 36)];
    *v34 = v29;
    v6 = v28;
    *(v34 + 1) = v27;
    *(v34 + 2) = v26;
    *&v5[*(v81 + 36)] = 256;
    sub_273D98510();
    v35 = v80;
    sub_273DA206C();
    sub_273D884D0(v5, &qword_2809262D8, &qword_273DA4230);
    sub_273D889A0(v35, v23, &qword_2809262E0, &qword_273DA4238);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  sub_273D83074(v23, v36, 1, v6);
  v37 = a1[3];
  v38 = a1[4];
  sub_273D8339C(a1, v37);
  (*(v38 + 120))(&v82, v37, v38);
  v39 = v83;
  if (v83)
  {
    v40 = *(&v82 + 1);
    v41 = v6;
    v42 = v82;
    sub_273D980B8(a1, &v82);
    v43 = swift_allocObject();
    v44 = v83;
    *(v43 + 16) = v82;
    *(v43 + 32) = v44;
    *(v43 + 48) = v84;
    *(v43 + 64) = v85;
    *(v43 + 72) = v42;
    *(v43 + 80) = v40;
    *(v43 + 88) = v39;
    MEMORY[0x28223BE20](v43);
    *(&v72 - 4) = a1;
    *(&v72 - 24) = v42;
    *(&v72 - 2) = v40;
    *(&v72 - 1) = v39;

    sub_273D82D04(&qword_280925C30, &qword_273DA3268);
    sub_273D8611C();
    sub_273DA221C();
    sub_273DA22DC();
    sub_273DA18EC();
    v45 = &v5[*(sub_273D82D04(&qword_2809262F8, &qword_273DA4250) + 36)];
    v46 = v90;
    *v45 = v89;
    *(v45 + 1) = v46;
    *(v45 + 2) = v91;
    v47 = &v5[*(sub_273D82D04(&qword_280926300, &qword_273DA4258) + 36)];
    *v47 = v42;
    v6 = v41;
    *(v47 + 1) = v40;
    *(v47 + 2) = v39;
    *&v5[*(v81 + 36)] = 256;
    sub_273D98510();
    v48 = v80;
    sub_273DA206C();
    sub_273D884D0(v5, &qword_2809262D8, &qword_273DA4230);
    v49 = v72;
    sub_273D889A0(v48, v72, &qword_2809262E0, &qword_273DA4238);
    v50 = 0;
  }

  else
  {
    v50 = 1;
    v49 = v72;
  }

  sub_273D83074(v49, v50, 1, v6);
  v51 = a1[3];
  v52 = a1[4];
  sub_273D8339C(a1, v51);
  (*(v52 + 128))(&v82, v51, v52);
  v53 = v83;
  if (v83)
  {
    v54 = *(&v82 + 1);
    v55 = v82;
    sub_273D980B8(a1, &v82);
    v56 = swift_allocObject();
    v57 = v83;
    *(v56 + 16) = v82;
    *(v56 + 32) = v57;
    *(v56 + 48) = v84;
    *(v56 + 64) = v85;
    *(v56 + 72) = v55;
    *(v56 + 80) = v54;
    *(v56 + 88) = v53;
    MEMORY[0x28223BE20](v56);
    *(&v72 - 4) = a1;
    *(&v72 - 24) = v55;
    *(&v72 - 2) = v54;
    *(&v72 - 1) = v53;

    sub_273D82D04(&qword_280925C30, &qword_273DA3268);
    sub_273D8611C();
    sub_273DA221C();
    sub_273DA22DC();
    sub_273DA18EC();
    v58 = &v5[*(sub_273D82D04(&qword_2809262F8, &qword_273DA4250) + 36)];
    v59 = v83;
    *v58 = v82;
    *(v58 + 1) = v59;
    *(v58 + 2) = v84;
    v60 = &v5[*(sub_273D82D04(&qword_280926300, &qword_273DA4258) + 36)];
    *v60 = v55;
    *(v60 + 1) = v54;
    *(v60 + 2) = v53;
    *&v5[*(v81 + 36)] = 256;
    sub_273D98510();
    v61 = v80;
    sub_273DA206C();
    sub_273D884D0(v5, &qword_2809262D8, &qword_273DA4230);
    v62 = v73;
    sub_273D889A0(v61, v73, &qword_2809262E0, &qword_273DA4238);
    v63 = 0;
  }

  else
  {
    v63 = 1;
    v62 = v73;
  }

  sub_273D83074(v62, v63, 1, v6);
  v64 = v79;
  v65 = v75;
  sub_273D97F74(v79, v75);
  v66 = v76;
  sub_273D97F74(v49, v76);
  v67 = v49;
  v68 = v77;
  sub_273D97F74(v62, v77);
  v69 = v78;
  sub_273D97F74(v65, v78);
  v70 = sub_273D82D04(&qword_2809262F0, &qword_273DA4248);
  sub_273D97F74(v66, v69 + *(v70 + 48));
  sub_273D97F74(v68, v69 + *(v70 + 64));
  sub_273D884D0(v62, &qword_2809262E8, &qword_273DA4240);
  sub_273D884D0(v67, &qword_2809262E8, &qword_273DA4240);
  sub_273D884D0(v64, &qword_2809262E8, &qword_273DA4240);
  sub_273D884D0(v68, &qword_2809262E8, &qword_273DA4240);
  sub_273D884D0(v66, &qword_2809262E8, &qword_273DA4240);
  sub_273D884D0(v65, &qword_2809262E8, &qword_273DA4240);
}

uint64_t sub_273D97F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_273D82D04(&qword_2809262E8, &qword_273DA4240);
  sub_273D86380(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_273D97FDC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 48);
    v11[0] = a2;
    v12 = a3;
    v13 = a4;
    v8(v11);
  }
}

uint64_t sub_273D98128@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = sub_273D82D04(&qword_280925C40, &qword_273DA3C30);
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = v31 - v7;
  v32 = sub_273D82D04(&qword_280925C30, &qword_273DA3268);
  v8 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v10 = v31 - v9;
  sub_273DA244C();
  v31[1] = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __src[0] = a1;
  __src[1] = a2;
  sub_273D8951C();

  v11 = sub_273DA1F7C();
  v13 = v12;
  v15 = v14;
  sub_273DA1EBC();
  v16 = sub_273DA1F5C();
  v18 = v17;
  v20 = v19;

  sub_273D842B8(v11, v13, v15 & 1);

  sub_273DA1EDC();
  v21 = sub_273DA1F2C();
  v23 = v22;
  LOBYTE(v11) = v24;
  v26 = v25;
  sub_273D842B8(v16, v18, v20 & 1);

  __src[0] = v21;
  __src[1] = v23;
  v27 = v11 & 1;
  LOBYTE(__src[2]) = v27;
  __src[3] = v26;
  if (qword_280925810 != -1)
  {
    swift_once();
  }

  v28 = sub_273D82D04(&qword_280925908, &qword_273DA3C00);
  sub_273D833F0(v28, qword_280927820);
  sub_273D86338(&qword_280925918, &qword_280925908, &qword_273DA3C00);
  v29 = v33;
  sub_273DA1FEC();
  sub_273D842B8(v21, v23, v27);

  sub_273DA22DC();
  sub_273DA1A7C();
  (*(v34 + 32))(v10, v29, v35);
  memcpy(&v10[*(v32 + 36)], __src, 0x70uLL);
  sub_273D889A0(v10, v36, &qword_280925C30, &qword_273DA3268);
}

uint64_t sub_273D98500@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_273D98128(*(v1 + 32), *(v1 + 40), a1);
}

unint64_t sub_273D98510()
{
  result = qword_280926308;
  if (!qword_280926308)
  {
    sub_273D832AC(&qword_2809262D8, &qword_273DA4230);
    sub_273D9859C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926308);
  }

  return result;
}

unint64_t sub_273D9859C()
{
  result = qword_280926310;
  if (!qword_280926310)
  {
    sub_273D832AC(&qword_280926300, &qword_273DA4258);
    sub_273D98628();
    sub_273D986E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926310);
  }

  return result;
}

unint64_t sub_273D98628()
{
  result = qword_280926318;
  if (!qword_280926318)
  {
    sub_273D832AC(&qword_2809262F8, &qword_273DA4250);
    sub_273D86338(&qword_280925C18, &qword_280925C20, &qword_273DA3260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926318);
  }

  return result;
}

unint64_t sub_273D986E0()
{
  result = qword_280926320;
  if (!qword_280926320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926320);
  }

  return result;
}

uint64_t sub_273D98734()
{
  sub_273D82E9C(v0 + 2);
  if (v0[7])
  {
    v1 = v0[8];
  }

  v2 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_273D98794()
{
  v0 = sub_273DA17EC();
  sub_273D9880C(v0, qword_280927808);
  sub_273D833F0(v0, qword_280927808);
  return sub_273DA17DC();
}

uint64_t *sub_273D9880C(uint64_t a1, uint64_t *a2)
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

uint64_t WelcomeContent.dismissButtonTitle.getter()
{
  v0 = sub_273DA17AC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_273D8A384();
  v2 = sub_273DA16CC();
  v3 = sub_273D8AF94(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_273D8A384();
  v10 = v9 - v8;
  v11 = sub_273DA238C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_273D8A384();
  sub_273DA237C();
  if (qword_280925820 != -1)
  {
    swift_once();
  }

  v13 = sub_273D833F0(v2, qword_280927840);
  (*(v5 + 16))(v10, v13, v2);
  sub_273DA179C();
  return sub_273DA16EC();
}