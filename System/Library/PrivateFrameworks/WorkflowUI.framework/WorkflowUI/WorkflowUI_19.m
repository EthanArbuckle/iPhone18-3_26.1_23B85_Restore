uint64_t sub_2748F1D5C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ShortcutDetailsViewModel();
  sub_2748E9FC0(&qword_280967808);

  v2 = sub_2749FAD84();
  v4 = v3;
  result = sub_2749FC5B4();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_2748F1E1C(uint64_t a1)
{
  sub_2748F5914(a1, v4);
  v1 = swift_allocObject();
  v2 = v4[1];
  *(v1 + 16) = v4[0];
  *(v1 + 32) = v2;
  *(v1 + 48) = v4[2];
  *(v1 + 64) = v5;
  return sub_2749FC624();
}

uint64_t sub_2748F1F00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ECF8);
  sub_27488EE4C(&unk_28096ED00);
  return sub_2749FBE34();
}

uint64_t sub_2748F1FA8@<X0>(char *a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v40 = a5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED08);
  MEMORY[0x28223BE20](v38);
  v34 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED10);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED18);
  v36 = *(v39 - 8);
  v16 = MEMORY[0x28223BE20](v39);
  v37 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - v18;
  v35 = a1;
  v41 = a1;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096ED20);
  sub_27488EE4C(&qword_2809689C0);
  v20 = v19;
  sub_2749FC794();
  if (sub_2747D93B8())
  {
    v21 = v34;
    sub_2748F233C(v35, a2, a3, a4, v34);
    sub_27475CF54(v21, v15, &qword_28096ED08);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v22, 1, v38);
  v23 = v36;
  v24 = v37;
  v25 = *(v36 + 16);
  v26 = v20;
  v27 = v39;
  v25(v37, v20, v39);
  sub_27473F28C(v15, v13, &qword_28096ED10);
  v28 = v13;
  v29 = v40;
  v25(v40, v24, v27);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED30);
  sub_27473F28C(v28, &v29[*(v30 + 48)], &qword_28096ED10);
  sub_27478C584(v15, &qword_28096ED10);
  v31 = *(v23 + 8);
  v31(v26, v27);
  sub_27478C584(v28, &qword_28096ED10);
  return (v31)(v24, v27);
}

uint64_t sub_2748F233C@<X0>(char *a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v118 = a2;
  v119 = a3;
  v117 = a1;
  v108 = a5;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED38);
  v110 = *(v111 - 8);
  v6 = MEMORY[0x28223BE20](v111);
  v109 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v115 = &v102 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED40);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v102 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED48);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v107 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v102 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED50);
  v103 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v102 = &v102 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED58);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v114 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v120 = &v102 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED60);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v102 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED68);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v113 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v102 - v28;
  v30 = sub_2747D753C();
  v31 = sub_27472D918(v30);

  v112 = v14;
  v116 = v29;
  if (v31)
  {
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v32 = qword_28159E448;
    v33 = sub_2749FCD64();
    v34 = sub_2749FCD64();

    v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

    v36 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v38 = v37;

    v121 = v36;
    v122 = v38;
    v123 = 0;
    v124 = 0;
    MEMORY[0x28223BE20](v39);
    v40 = v118;
    *(&v102 - 4) = v117;
    *(&v102 - 3) = v40;
    v100 = v119;
    v101 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096ED70);
    sub_2748550D0();
    sub_2748F54CC();
    sub_2749FC784();
    v29 = v116;
    (*(v22 + 32))(v116, v24, v21);
    v41 = 0;
    v14 = v112;
  }

  else
  {
    v41 = 1;
  }

  v42 = 1;
  __swift_storeEnumTagSinglePayload(v29, v41, 1, v21);
  v43 = *(sub_2747D7114() + 16);

  if (v43)
  {
    v121 = sub_2747D7114();
    swift_getKeyPath();
    v44 = swift_allocObject();
    v44[2] = v117;
    v45 = v119;
    v44[3] = v118;
    v44[4] = v45;
    v44[5] = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ED90);
    sub_27488EE4C(&unk_28096ED98);
    sub_2748F555C();
    v100 = sub_2748F55B0();
    v46 = v102;
    sub_2749FC754();
    v47 = v120;
    (*(v103 + 32))(v120, v46, v15);
    v42 = 0;
  }

  else
  {
    v47 = v120;
  }

  v48 = 1;
  __swift_storeEnumTagSinglePayload(v47, v42, 1, v15);
  v49 = sub_2747D7100();
  v50 = sub_27472D918(v49);

  if (v50)
  {
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v51 = qword_28159E448;
    v52 = sub_2749FCD64();
    v53 = sub_2749FCD64();

    v54 = [v51 localizedStringForKey:v52 value:v53 table:0];

    v55 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v57 = v56;

    sub_2749FCE14();
    v58 = sub_2749FCD64();
    v59 = sub_2749FCD64();

    v60 = [v51 localizedStringForKey:v58 value:v59 table:0];

    v61 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v63 = v62;

    v121 = v55;
    v122 = v57;
    v123 = v61;
    v124 = v63;
    MEMORY[0x28223BE20](v64);
    v65 = v118;
    *(&v102 - 4) = v117;
    *(&v102 - 3) = v65;
    v100 = v119;
    v101 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EDB0);
    sub_2748550D0();
    sub_2748F5654();
    v66 = v104;
    sub_2749FC784();
    v67 = v106;
    (*(v105 + 32))(v14, v66, v106);
    v48 = 0;
  }

  else
  {
    v67 = v106;
  }

  __swift_storeEnumTagSinglePayload(v14, v48, 1, v67);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v68 = qword_28159E448;
  v69 = sub_2749FCD64();
  v70 = sub_2749FCD64();

  v71 = [v68 localizedStringForKey:v69 value:v70 table:0];

  v72 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v74 = v73;

  v121 = v72;
  v122 = v74;
  sub_27475D0D0();
  v75 = sub_2749FBEE4();
  v77 = v76;
  LOBYTE(v74) = v78;
  v80 = v79;
  v81 = sub_2749FBC74();
  v82 = sub_2749FA9E4();
  v132 = v74 & 1;
  v131 = 0;
  v121 = v75;
  v122 = v77;
  LOBYTE(v123) = v74 & 1;
  v124 = v80;
  v125 = v81;
  v126 = v83;
  v127 = v84;
  v128 = v85;
  v129 = v86;
  v130 = 0;
  MEMORY[0x28223BE20](v82);
  v87 = v118;
  *(&v102 - 4) = v117;
  *(&v102 - 3) = v87;
  v100 = v119;
  v101 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096EDD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F68);
  sub_27489FAD0();
  sub_27478081C();
  v88 = v115;
  sub_2749FC7A4();
  v89 = v113;
  sub_27473F28C(v116, v113, &qword_28096ED68);
  v90 = v114;
  sub_27473F28C(v120, v114, &qword_28096ED58);
  v91 = v107;
  sub_27473F28C(v14, v107, &qword_28096ED48);
  v92 = v110;
  v93 = *(v110 + 16);
  v94 = v109;
  v95 = v111;
  v93(v109, v88, v111);
  v96 = v108;
  sub_27473F28C(v89, v108, &qword_28096ED68);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096EDE0);
  sub_27473F28C(v90, v96 + v97[12], &qword_28096ED58);
  sub_27473F28C(v91, v96 + v97[16], &qword_28096ED48);
  v93((v96 + v97[20]), v94, v95);
  v98 = *(v92 + 8);
  v98(v115, v95);
  sub_27478C584(v112, &qword_28096ED48);
  sub_27478C584(v120, &qword_28096ED58);
  sub_27478C584(v116, &qword_28096ED68);
  v98(v94, v95);
  sub_27478C584(v91, &qword_28096ED48);
  sub_27478C584(v114, &qword_28096ED58);
  return sub_27478C584(v113, &qword_28096ED68);
}

uint64_t sub_2748F305C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2747D753C();
  swift_getKeyPath();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969110);
  sub_27488EE4C(&unk_28096EDF0);
  sub_2748F0FD0(&qword_2809688B0);
  sub_27486A944();
  return sub_2749FC754();
}

uint64_t sub_2748F31A8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_2747DDFC8([*a1 contentDestination]);
  v6 = v5;
  v7 = [v3 contentDestination];
  v8 = [v7 icon];

  result = sub_2747D9438(v3);
  *a2 = 2;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = result;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  return result;
}

uint64_t sub_2748F325C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v10 = qword_28159E448;
  v11 = sub_2749FCD64();
  v12 = sub_2749FCD64();

  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  sub_27475D0D0();

  sub_2749FC644();
  v15 = sub_2749FC424();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096EDD0);
  v18 = (a5 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = v15;
  return result;
}

uint64_t sub_2748F3414(__int128 *a1)
{
  v12 = *a1;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v1 = qword_28159E448;
  v2 = sub_2749FCD64();
  v3 = sub_2749FCD64();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_274A0EF10;
  v6 = [v12 localizedName];
  v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v9 = v8;

  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_27475C4F4();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_2749FCD74();

  MEMORY[0x28223BE20](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096ED70);
  sub_2748550D0();
  sub_2748F54CC();
  return sub_2749FC784();
}

uint64_t sub_2748F366C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969110);
  sub_27488EE4C(&unk_28096EDF0);
  sub_2748F0FD0(&qword_2809688B0);
  sub_27486A944();
  return sub_2749FC754();
}

uint64_t sub_2748F37BC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 sourceContentAttribution];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 origin];

    v5 = sub_2747DDFC8(v6);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 sourceContentAttribution];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 origin];

    v10 = [v11 icon];
  }

  result = sub_2747D9438(v3);
  *a2 = 0;
  *(a2 + 8) = v5;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = result;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  return result;
}

uint64_t sub_2748F38C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2749FD0A4();

  v8 = sub_2749FD094();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  v9[7] = a4;

  v11 = sub_2749FD094();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a4;
  sub_2749FC6F4();
  return v14;
}

void sub_2748F39E0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  [*(a5 + 16) setDisabledOnLockScreen_];

  sub_2748F3A50(a4, a5, a6, a7);
}

void sub_2748F3A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 16);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v11[4] = sub_2748F5888;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_274865810;
  v11[3] = &block_descriptor_37;
  v10 = _Block_copy(v11);

  [v8 saveWithCompletionBlock_];
  _Block_release(v10);
}

uint64_t sub_2748F3B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2748F38C4(a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809689C8);
  sub_27488EE4C(&qword_28096EC60);
  return sub_2749FC674();
}

uint64_t sub_2748F3C34()
{
  sub_2749FA304();
  sub_2748E9FC0(&qword_28159E800);
  return sub_2749FC584();
}

uint64_t sub_2748F3CFC@<X0>(uint64_t a1@<X8>)
{
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_27475D0D0();
  result = sub_2749FBEE4();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_2748F3E1C@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = sub_2749FA2F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2749FA2C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2748F404C();
  v11 = v10;
  v12 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
  v13 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

  v14 = objc_allocWithZone(MEMORY[0x277D7A158]);
  sub_27491A250(v9, v11, v13);
  (*(v6 + 104))(v8, *MEMORY[0x277D7D6A0], v5);
  (*(v2 + 104))(v4, *MEMORY[0x277D7D6D0], v1);
  return sub_2749FA314();
}

uint64_t sub_2748F404C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 idiom];

  result = 0x7369642E6B636F6CLL;
  switch(v1)
  {
    case 0uLL:
    case 4uLL:
      result = 0x6870692E6B636F6CLL;
      break;
    case 1uLL:
      result = 0x6170692E6B636F6CLL;
      break;
    case 2uLL:
      return result;
    case 3uLL:
      result = 0x7070612E6B636F6CLL;
      break;
    default:
      result = 1801678700;
      break;
  }

  return result;
}

uint64_t sub_2748F4154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2749FCA74();
  v20 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2749FCAA4();
  v12 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27471CF08(0, &qword_28159E4E0);
  v15 = sub_2749FD404();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  aBlock[4] = sub_2748F589C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_152;
  v17 = _Block_copy(aBlock);

  sub_2749FCA94();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2748E9FC0(&qword_28159E580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27488EE4C(&qword_28159E530);
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v14, v11, v17);
  _Block_release(v17);

  (*(v20 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v19);
}

uint64_t sub_2748F4464()
{
  type metadata accessor for ShortcutDetailsViewModel();
  sub_2748E9FC0(&qword_280967808);
  sub_2749FA874();
  sub_2749FA894();
}

uint64_t sub_2748F44F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v31 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EE90) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EE98);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = sub_2749FB644();
  v35 = 0;
  sub_2748F4834(a1, a2, v33);
  memcpy(v36, v33, 0x51uLL);
  memcpy(__dst, v33, 0x51uLL);
  sub_27473F28C(v36, &v32, &qword_28096EEA0);
  sub_27478C584(__dst, &qword_28096EEA0);
  memcpy(&v34[7], v36, 0x51uLL);
  v17 = v35;
  v18 = &v11[*(v8 + 44)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EEA8) + 28);
  v20 = sub_2749FBEA4();
  __swift_storeEnumTagSinglePayload(v18 + v19, 1, 1, v20);
  *v18 = swift_getKeyPath();
  *v11 = v16;
  *(v11 + 1) = 0x4010000000000000;
  v11[16] = v17;
  memcpy(v11 + 17, v34, 0x58uLL);
  v21 = sub_2749FBC54();
  v22 = [objc_opt_self() mainScreen];
  [v22 bounds];
  v24 = v23;

  if (v24 > 320.0)
  {
    v25 = [objc_opt_self() currentDevice];
    [v25 userInterfaceIdiom];
  }

  sub_2749FA9E4();
  OUTLINED_FUNCTION_36();
  sub_27475CF54(v11, v15, &qword_28096EE90);
  v26 = &v15[*(v12 + 36)];
  *v26 = v21;
  *(v26 + 1) = v24;
  *(v26 + 2) = v3;
  *(v26 + 3) = v4;
  *(v26 + 4) = v5;
  v26[40] = 0;
  v27 = sub_2749FBC84();
  sub_2749FA9E4();
  OUTLINED_FUNCTION_36();
  v28 = v31;
  sub_27475CF54(v15, v31, &qword_28096EE98);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EEB0);
  v30 = v28 + *(result + 36);
  *v30 = v27;
  *(v30 + 8) = v24;
  *(v30 + 16) = v3;
  *(v30 + 24) = v4;
  *(v30 + 32) = v5;
  *(v30 + 40) = 0;
  return result;
}

uint64_t sub_2748F4834@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    v23 = 0;
    v47 = 0;
    v48 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v34 = 0;
    v36 = 0;
    v41 = 0;
    v39 = 0;
    KeyPath = 0;
    v42 = 0;
    goto LABEL_6;
  }

  sub_27475D0D0();
  v45 = a2;

  v4 = sub_2749FBEE4();
  v6 = v5;
  v8 = v7;
  sub_2749FBD94();
  sub_2749FBD54();
  sub_2749FBDA4();

  v9 = sub_2749FBEC4();
  v11 = v10;
  v13 = v12;

  sub_27477656C(v4, v6, v8 & 1);

  sub_2749FC494();
  v14 = sub_2749FBE84();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_27477656C(v9, v11, v13 & 1);

  v21 = v18 & 1;
  v22 = v20;
  v23 = v14;
  v47 = v21;
  v48 = v16;
  sub_274754DBC(v14, v16, v21);

  if (!v45)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_27475D0D0();

  v24 = sub_2749FBEE4();
  v26 = v25;
  v28 = v27;
  sub_2749FBCE4();
  v29 = sub_2749FBEC4();
  v31 = v30;
  v33 = v32;

  sub_27477656C(v24, v26, v28 & 1);

  sub_2749FC4A4();
  v34 = sub_2749FBE84();
  v36 = v35;
  v44 = v37;
  v39 = v38;

  sub_27477656C(v29, v31, v33 & 1);

  KeyPath = swift_getKeyPath();
  v41 = v44 & 1;
  sub_274754DBC(v34, v36, v44 & 1);

  v42 = 1;
LABEL_6:
  sub_2747FF76C(v23, v48, v47, v22);
  sub_2748555E8(v34, v36, v41, v39);
  sub_2747FF7B8(v23, v48, v47, v22);
  sub_274855638(v34, v36, v41, v39);
  *a3 = v23;
  *(a3 + 8) = v48;
  *(a3 + 16) = v47;
  *(a3 + 24) = v22;
  *(a3 + 32) = v34;
  *(a3 + 40) = v36;
  *(a3 + 48) = v41;
  *(a3 + 56) = v39;
  *(a3 + 64) = KeyPath;
  *(a3 + 72) = 0;
  *(a3 + 80) = v42;
  sub_274855638(v34, v36, v41, v39);
  return sub_2747FF7B8(v23, v48, v47, v22);
}

uint64_t sub_2748F4C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  sub_27473F28C(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_2748F4CC0(void *a1)
{
  v2 = [a1 searchAttributionAppBundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

unint64_t sub_2748F4D40()
{
  result = qword_28096EB90;
  if (!qword_28096EB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EB98);
    sub_27488EE4C(&unk_28096EBA0);
    sub_2748E9FC0(&qword_28159E5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EB90);
  }

  return result;
}

unint64_t sub_2748F4E40()
{
  result = qword_28096EBE8;
  if (!qword_28096EBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EBE0);
    sub_27488EE4C(&unk_28096EBF0);
    sub_27488EE4C(&unk_28096EC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EBE8);
  }

  return result;
}

unint64_t sub_2748F4F4C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_1(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_108(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2748F50A4()
{
  result = qword_28096EC90;
  if (!qword_28096EC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B3D8);
    sub_2748E9FC0(&qword_28159E800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EC90);
  }

  return result;
}

uint64_t objectdestroy_83Tm()
{
  swift_unknownObjectRelease();

  sub_274877EBC(*(v0 + 64), *(v0 + 72));
  __swift_destroy_boxed_opaque_existential_0(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_2748F5294(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2748F52D4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *sub_2748F5340(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_6_29(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2748F541C()
{
  result = qword_28096ECF0;
  if (!qword_28096ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096ECF0);
  }

  return result;
}

unint64_t sub_2748F54CC()
{
  result = qword_28096ED80;
  if (!qword_28096ED80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096ED70);
    sub_27486A944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096ED80);
  }

  return result;
}

unint64_t sub_2748F555C()
{
  result = qword_28096EDA0;
  if (!qword_28096EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EDA0);
  }

  return result;
}

unint64_t sub_2748F55B0()
{
  result = qword_28096EDA8;
  if (!qword_28096EDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096ED60);
    sub_2748550D0();
    sub_2748F54CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EDA8);
  }

  return result;
}

unint64_t sub_2748F5654()
{
  result = qword_28096EDB8;
  if (!qword_28096EDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EDB0);
    sub_2748F5704(&qword_28096EDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EDB8);
  }

  return result;
}

unint64_t sub_2748F5704(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_1(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_108(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

id sub_2748F57F4@<X0>(_BYTE *a1@<X8>)
{
  result = [*(*(v1 + 40) + 16) disabledOnLockScreen];
  *a1 = result ^ 1;
  return result;
}

uint64_t objectdestroy_139Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_2748F58B8()
{
  result = qword_28096EE48;
  if (!qword_28096EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EE48);
  }

  return result;
}

uint64_t sub_2748F5954(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2748F59A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2748F5A0C()
{
  result = qword_28096EE70;
  if (!qword_28096EE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EE18);
    sub_27488EE4C(&unk_28096EE78);
    sub_27488EE4C(&unk_28096EE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EE70);
  }

  return result;
}

unint64_t sub_2748F5B3C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_1(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_108(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2748F5BB8()
{
  result = qword_28096EED0;
  if (!qword_28096EED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EE90);
    sub_27488EE4C(&unk_28096EED8);
    sub_27488EE4C(&unk_28096EEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EED0);
  }

  return result;
}

uint64_t sub_2748F5CC0()
{
  type metadata accessor for GalleryLoader();
  swift_allocObject();
  result = sub_2748F6664();
  qword_28096EEF0 = result;
  return result;
}

uint64_t static GalleryLoader.shared.getter()
{
  if (qword_280966C58 != -1)
  {
    swift_once();
  }
}

uint64_t static GalleryLoader.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v3 == 1)
    {
      if (v5 == 1)
      {
        swift_getErrorValue();
        v6 = 1;
        v7 = OUTLINED_FUNCTION_78_0();
        sub_27483019C(v7, v8);
        v9 = OUTLINED_FUNCTION_92();
        sub_27483019C(v9, v10);
        v11 = OUTLINED_FUNCTION_78_0();
        sub_27483019C(v11, v12);
        v13 = OUTLINED_FUNCTION_92();
        sub_27483019C(v13, v14);
        v15 = sub_2749FDD84();
        v17 = v16;
        swift_getErrorValue();
        if (v15 != sub_2749FDD84() || v17 != v18)
        {
          v6 = sub_2749FDCC4();
        }

        v20 = OUTLINED_FUNCTION_78_0();
        sub_2748301B8(v20, v21);
        v22 = OUTLINED_FUNCTION_92();
        sub_2748301B8(v22, v23);
        v24 = OUTLINED_FUNCTION_92();
        sub_2748301B8(v24, v25);
        v26 = OUTLINED_FUNCTION_78_0();
        sub_2748301B8(v26, v27);
        return v6 & 1;
      }
    }

    else if (v5 == 2 && v4 == 0)
    {
      sub_2748301B8(*a1, 2u);
      sub_2748301B8(0, 2u);
      v6 = 1;
      return v6 & 1;
    }
  }

  else if (!*(a2 + 8))
  {
    sub_27471CF08(0, &qword_28159E390);
    v28 = OUTLINED_FUNCTION_14_16();
    sub_27483019C(v28, v29);
    sub_27483019C(v2, 0);
    v30 = sub_2749FD604();
    sub_2748301B8(v2, 0);
    v31 = OUTLINED_FUNCTION_14_16();
    sub_2748301B8(v31, v32);
    return v30 & 1;
  }

  sub_27483019C(*a2, *(a2 + 8));
  sub_27483019C(v2, v3);
  sub_2748301B8(v2, v3);
  sub_2748301B8(v4, v5);
  v6 = 0;
  return v6 & 1;
}

uint64_t sub_2748F5F48@<X0>(uint64_t a1@<X8>)
{
  result = sub_2748F62A0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void sub_2748F5FD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2749FCB04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = *(a1 + 8);
  sub_27471CF08(0, &qword_28159E4E0);
  *v7 = sub_2749FD404();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  LOBYTE(a1) = sub_2749FCB24();
  (*(v5 + 8))(v7, v4);
  if ((a1 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  v10 = v26;
  v11 = v27;
  v30 = v26;
  v31 = v27;
  v28 = v8;
  v29 = v9;
  v12 = static GalleryLoader.State.== infix(_:_:)(&v30, &v28);
  sub_2748301B8(v10, v11);
  if ((v12 & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_observers;
    swift_beginAccess();
    v25 = v2;
    v14 = *(v2 + v13);
    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v14 + 64);
    v18 = (v15 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v19 = 0;
    while (v17)
    {
      v20 = v19;
LABEL_11:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v22 = *(*(v14 + 56) + ((v20 << 10) | (16 * v21)) + 8);
      ObjectType = swift_getObjectType();
      v24 = *(v22 + 8);
      swift_unknownObjectRetain();
      v24(v25, ObjectType, v22);
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        return;
      }

      v17 = *(v14 + 64 + 8 * v20);
      ++v19;
      if (v17)
      {
        v19 = v20;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_2748F62A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  sub_2749FA904();
}

void sub_2748F6314()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  sub_2749FA904();

  v0 = v2;
  v1 = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2749FA914();
  sub_2748F5FD4(&v2);
  sub_2748301B8(v0, v1);
}

uint64_t sub_2748F6400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F030);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_2748F6540(v4);
}

uint64_t sub_2748F64D4()
{
  OUTLINED_FUNCTION_10_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EF08);
  sub_2749FA8D4();
  return swift_endAccess();
}

uint64_t sub_2748F6540(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F030);
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  (*(v4 + 16))(&v8 - v6, a1, v2);
  OUTLINED_FUNCTION_10_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EF08);
  sub_2749FA8E4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_2748F6664()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EF08);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_lastDonationsLoadDate;
  v6 = sub_2749F90F4();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader__state;
  v11 = 0;
  v12 = 2;
  sub_2749FA8C4();
  (*(v2 + 32))(v0 + v7, v4, v1);
  *(v0 + OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_loadTimer) = 0;
  v8 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_observers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096EF20);
  *(v0 + v8) = sub_2749FCCB4();
  sub_2748F69BC();
  v9 = [objc_opt_self() defaultCenter];
  [v9 addObserver:v0 selector:sel_applicationBecameActive name:*MEMORY[0x277D76648] object:0];

  return v0;
}

uint64_t sub_2748F6824(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_observers;
  OUTLINED_FUNCTION_10_3();
  swift_unknownObjectRetain();
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + v5);
  sub_2748FA640(a1, a2, a1);
  *(v2 + v5) = v7;
  return swift_endAccess();
}

uint64_t sub_2748F68B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_observers;
  OUTLINED_FUNCTION_10_3();
  sub_2747986A8(a1);
  if (v4)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v1 + v3);
    *(v1 + v3) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EF18);
    sub_2749FDA84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096EF20);
    sub_2749FDAA4();
    *(v1 + v3) = v6;
    swift_unknownObjectRelease();
  }

  return swift_endAccess();
}

void sub_2748F69BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  v2 = OUTLINED_FUNCTION_34(v1);
  MEMORY[0x28223BE20](v2);
  v67 = &v56 - v3;
  sub_2749FA454();
  OUTLINED_FUNCTION_43();
  v63 = v5;
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_1();
  v57 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  v59 = sub_2749FA474();
  OUTLINED_FUNCTION_43();
  v58 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_1();
  v56 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  v66 = sub_2749FA394();
  OUTLINED_FUNCTION_43();
  v60 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v62 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v19;
  MEMORY[0x28223BE20](v18);
  v65 = &v56 - v20;
  v21 = sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = 0;
  v72 = 2;
  v68 = v0;
  sub_2748F6314();
  sub_2749FA3D4();
  v27 = sub_2749FA4D4();
  v28 = sub_2749FD2E4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_12_2();
    *v29 = 0;
    _os_log_impl(&dword_274719000, v27, v28, "Gallery is loading", v29, 2u);
    OUTLINED_FUNCTION_31();
  }

  (*(v23 + 8))(v26, v21);
  v30 = OUTLINED_FUNCTION_42_7();
  *(v30 + 16) = 32;
  v31 = OUTLINED_FUNCTION_42_7();
  *(v31 + 16) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EF30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A11F50;
  *(inited + 32) = sub_2748FA770;
  *(inited + 40) = v30;
  *(inited + 48) = sub_2748FB29C;
  *(inited + 56) = v31;
  *(inited + 64) = sub_2748FB294;
  *(inited + 72) = 0;
  sub_2749FA354();
  sub_2749FA464();
  v33 = v9;
  sub_2749FA434();
  v34 = sub_2749FA464();
  v35 = sub_2749FD464();
  if (sub_2749FD6B4())
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = 0;
    v69 = v37;
    v70 = 0;
    *v36 = 258;
    v71 = v36 + 2;
    while (v38 != 48)
    {
      v39 = *(inited + v38 + 32);

      v39(&v71, &v70, &v69);

      v38 += 16;
    }

    v40 = v33;
    v41 = sub_2749FA444();
    _os_signpost_emit_with_name_impl(&dword_274719000, v34, v35, v41, "LoadGallery", "%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();
  }

  else
  {

    v40 = v33;
  }

  v43 = v63;
  v42 = v64;
  (*(v63 + 16))(v57, v40, v64);
  sub_2749FA4B4();
  swift_allocObject();
  OUTLINED_FUNCTION_78_0();
  sub_2749FA4A4();
  v44 = v58;
  v45 = v59;
  (*(v58 + 16))(v56, v15, v59);
  v46 = v65;
  sub_2749FA3A4();
  (*(v43 + 8))(v40, v42);
  (*(v44 + 8))(v15, v45);
  v47 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v67, 1, 1, v47);
  v48 = v60;
  v49 = v62;
  v50 = v66;
  (*(v60 + 16))(v62, v46, v66);
  sub_2749FD0A4();
  v51 = v68;

  v52 = sub_2749FD094();
  v53 = (*(v48 + 80) + 40) & ~*(v48 + 80);
  v54 = swift_allocObject();
  v55 = MEMORY[0x277D85700];
  *(v54 + 2) = v52;
  *(v54 + 3) = v55;
  *(v54 + 4) = v51;
  (*(v48 + 32))(&v54[v53], v49, v50);
  sub_27479930C();

  (*(v48 + 8))(v46, v50);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2748F70BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_2749FA4E4();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = sub_2749FA484();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v8 = sub_2749FA454();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v9 = sub_2749FA474();
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D2F0);
  v5[24] = swift_task_alloc();
  v5[25] = sub_2749FD0A4();
  v5[26] = sub_2749FD094();
  v10 = swift_task_alloc();
  v5[27] = v10;
  *v10 = v5;
  v10[1] = sub_2748F730C;

  return sub_2748F7A4C();
}

uint64_t sub_2748F730C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_8_1();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 224) = v1;

  if (v1)
  {
    v6 = sub_2749FD044();
    v8 = v7;
    v9 = sub_2748F76C0;
  }

  else
  {
    *(v4 + 232) = a1;
    v6 = sub_2749FD044();
    v8 = v10;
    v9 = sub_2748F7484;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

void sub_2748F7484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_0();
  v17 = v14[29];

  LOBYTE(a11) = 0;
  sub_2748F6314();
  OUTLINED_FUNCTION_40_11();
  sub_2749F90F4();
  v18 = OUTLINED_FUNCTION_14_16();
  __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
  v21 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_lastDonationsLoadDate;
  OUTLINED_FUNCTION_10_3();
  sub_2748FB084(v17, v15 + v21, &unk_28096D2F0);
  swift_endAccess();
  sub_2749FA344();
  v22 = sub_2749FA374();
  v24 = v23;
  sub_2749FA384();
  sub_2749FA464();
  OUTLINED_FUNCTION_33_10();
  sub_2749FD454();
  if (sub_2749FD6B4())
  {
    if ((v24 & 1) == 0)
    {
      if (v22)
      {
LABEL_8:

        sub_2749FA4C4();

        v26 = OUTLINED_FUNCTION_37_11();
        if (v27(v26) == *MEMORY[0x277D85B00])
        {
          v24 = "[Error] Interval already ended";
        }

        else
        {
          (*(v14[16] + 8))(v14[17], v14[15]);
          v24 = "";
        }

        v16 = OUTLINED_FUNCTION_12_2();
        *v16 = 0;
        v28 = sub_2749FA444();
        OUTLINED_FUNCTION_8_27(&dword_274719000, v29, v30, v28);
        OUTLINED_FUNCTION_31();
        goto LABEL_12;
      }

      __break(1u);
    }

    if (HIDWORD(v22))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_28_13();
      if (v25)
      {
LABEL_17:
        __break(1u);
        return;
      }

      if (v22 >> 16 <= 0x10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  OUTLINED_FUNCTION_24_15();

  (*(v17 + 8))(v24, v16);
  v31 = OUTLINED_FUNCTION_13_20();
  v32(v31);

  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_9_4();

  v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, v17, a11, a12, a13, a14);
}

void sub_2748F76C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _WORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_17();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_18_0();
  a20 = v22;
  v26 = v22[28];

  sub_2749FA3D4();
  v27 = v26;
  v28 = sub_2749FA4D4();
  v29 = sub_2749FD2C4();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = v22[13];
    v30 = v22[14];
    v32 = v22[12];
    v33 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    a10 = v23;
    *v33 = 136315138;
    swift_getErrorValue();
    v34 = sub_2749FDD84();
    v36 = sub_2747AF460(v34, v35, &a10);

    *(v33 + 4) = v36;
    _os_log_impl(&dword_274719000, v28, v29, "Gallery load failed: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();

    (*(v31 + 8))(v30, v32);
  }

  else
  {
    v37 = v22[13];

    v32 = v37 + 8;
    v38 = OUTLINED_FUNCTION_32();
    v39(v38);
  }

  v40 = v22[28];
  a10 = v40;
  LOBYTE(a11) = 1;
  v41 = v40;
  sub_2748F6314();

  OUTLINED_FUNCTION_40_11();
  sub_2749F90F4();
  v42 = OUTLINED_FUNCTION_14_16();
  __swift_storeEnumTagSinglePayload(v42, v43, 1, v44);
  v45 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_lastDonationsLoadDate;
  OUTLINED_FUNCTION_10_3();
  sub_2748FB084(v40, v32 + v45, &unk_28096D2F0);
  swift_endAccess();
  sub_2749FA344();
  v46 = sub_2749FA374();
  v48 = v47;
  sub_2749FA384();
  sub_2749FA464();
  OUTLINED_FUNCTION_33_10();
  sub_2749FD454();
  if (sub_2749FD6B4())
  {
    if ((v48 & 1) == 0)
    {
      if (v46)
      {
LABEL_11:

        sub_2749FA4C4();

        v50 = OUTLINED_FUNCTION_37_11();
        if (v51(v50) == *MEMORY[0x277D85B00])
        {
          v48 = "[Error] Interval already ended";
        }

        else
        {
          (*(v22[16] + 8))(v22[17], v22[15]);
          v48 = "";
        }

        v23 = OUTLINED_FUNCTION_12_2();
        *v23 = 0;
        v52 = sub_2749FA444();
        OUTLINED_FUNCTION_8_27(&dword_274719000, v53, v54, v52);
        OUTLINED_FUNCTION_31();
        goto LABEL_15;
      }

      __break(1u);
    }

    if (HIDWORD(v46))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_28_13();
      if (v49)
      {
LABEL_20:
        __break(1u);
        return;
      }

      if (v46 >> 16 <= 0x10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_15:
  OUTLINED_FUNCTION_24_15();

  (*(v40 + 1))(v48, v23);
  v55 = OUTLINED_FUNCTION_13_20();
  v56(v55);

  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_9_4();

  v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2748F7A4C()
{
  OUTLINED_FUNCTION_79();
  v0[3] = sub_2749FD0A4();
  v0[4] = sub_2749FD094();
  v2 = sub_2749FD044();
  v0[5] = v2;
  v0[6] = v1;

  return MEMORY[0x2822009F8](sub_2748F7AE0, v2, v1);
}

uint64_t sub_2748F7AE0()
{
  OUTLINED_FUNCTION_79();
  v1 = sub_2749FD094();
  *(v0 + 56) = v1;
  v2 = sub_27471CF08(0, &qword_28096F010);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_2748F7BDC;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200740](v0 + 16, &type metadata for GalleryLoader.GalleryComponent, v2, v1, v4, &unk_274A22348, 0, &type metadata for GalleryLoader.GalleryComponent);
}

uint64_t sub_2748F7BDC()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v5 = v4;
  v3[9] = v0;

  if (v0)
  {
    v6 = v3[5];
    v7 = v3[6];
    v8 = sub_2748F7D4C;
  }

  else
  {

    v6 = v3[5];
    v7 = v3[6];
    v8 = sub_2748F7CE8;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2748F7CE8()
{
  OUTLINED_FUNCTION_79();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2748F7D4C()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_2748F7DB4(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  v2[6] = swift_task_alloc();
  v2[7] = sub_2749FD0A4();
  v2[8] = sub_2749FD094();
  v4 = sub_2749FD044();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x2822009F8](sub_2748F7E88, v4, v3);
}

uint64_t sub_2748F7E88()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[6];
  sub_2749FD0E4();
  v2 = OUTLINED_FUNCTION_78_0();
  __swift_storeEnumTagSinglePayload(v2, v3, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_2748F8DF0(v1, &unk_274A22358, v5);
  sub_27472ECBC(v1, &unk_28096C960);
  v6 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v0[11] = 0;
  v0[12] = v6;
  v7 = sub_2749FD094();
  v0[13] = v7;
  v8 = swift_task_alloc();
  v0[14] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F018);
  *v8 = v0;
  v8[1] = sub_2748F7FD8;
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822004D0](v0 + 3, v7, v10, v9);
}

uint64_t sub_2748F7FD8()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v3 = v2;
  *v3 = *v1;
  v2[15] = v0;

  if (v0)
  {

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_2748F8308;
  }

  else
  {

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_2748F8114;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2748F8114()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    MEMORY[0x277C5ECC0]();
    if (*(*(v0 + 16) + 16) >= *(*(v0 + 16) + 24) >> 1)
    {
      sub_2749FCFB4();
    }

    v3 = *(v0 + 88);
    sub_2749FCFF4();
    v4 = *(v0 + 16);

    *(v0 + 88) = v1;
    *(v0 + 96) = v4;
    v5 = sub_2749FD094();
    *(v0 + 104) = v5;
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F018);
    *v6 = v0;
    v6[1] = sub_2748F7FD8;
    v8 = MEMORY[0x277D85700];

    return MEMORY[0x2822004D0](v0 + 24, v5, v8, v7);
  }

  else
  {
    v9 = *(v0 + 88);

    if (v9)
    {
      **(v0 + 32) = *(v0 + 88);
    }

    else
    {
      sub_2748FB030();
      swift_allocError();
      swift_willThrow();
    }

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_2748F8308()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_48_0();

  return v2();
}

uint64_t sub_2748F8374(uint64_t a1)
{
  v1[30] = a1;
  v2 = sub_2749FA484();
  v1[31] = v2;
  v1[32] = *(v2 - 8);
  v1[33] = swift_task_alloc();
  v3 = sub_2749FA454();
  v1[34] = v3;
  v1[35] = *(v3 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v4 = sub_2749FA474();
  v1[39] = v4;
  v1[40] = *(v4 - 8);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v5 = sub_2749FA394();
  v1[44] = v5;
  v1[45] = *(v5 - 8);
  v1[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2748F8578, 0, 0);
}

uint64_t sub_2748F8578()
{
  v28 = v0;
  v1 = OUTLINED_FUNCTION_42_7();
  *(v1 + 16) = 32;
  v2 = OUTLINED_FUNCTION_42_7();
  *(v2 + 16) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EF30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A11F50;
  *(inited + 32) = sub_2748FB29C;
  *(inited + 40) = v1;
  *(inited + 48) = sub_2748FB29C;
  *(inited + 56) = v2;
  *(inited + 64) = sub_2748FB294;
  *(inited + 72) = 0;
  sub_2749FA354();
  sub_2749FA464();
  sub_2749FA434();
  v4 = sub_2749FA464();
  v5 = sub_2749FD464();
  if (sub_2749FD6B4())
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = 0;
    v26 = 0;
    v27 = v7;
    *v6 = 258;
    v25 = v6 + 2;
    while (v8 != 48)
    {
      v9 = *(inited + v8 + 32);

      v9(&v25, &v26, &v27);

      v8 += 16;
    }

    v10 = sub_2749FA444();
    _os_signpost_emit_with_name_impl(&dword_274719000, v4, v5, v10, "LoadMainPage", "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();
  }

  else
  {
  }

  v12 = v0[42];
  v11 = v0[43];
  v14 = v0[39];
  v13 = v0[40];
  v15 = v0[38];
  v17 = v0[34];
  v16 = v0[35];
  v18 = OUTLINED_FUNCTION_37_11();
  v19(v18);
  sub_2749FA4B4();
  swift_allocObject();
  sub_2749FA4A4();
  (*(v13 + 16))(v12, v11, v14);
  sub_2749FA3A4();
  v20 = *(v16 + 8);
  v0[47] = v20;
  v0[48] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v15, v17);
  v21 = *(v13 + 8);
  v0[49] = v21;
  v0[50] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v11, v14);
  v22 = [objc_opt_self() sharedManager];
  v0[51] = v22;
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_2748F8978;
  v23 = swift_continuation_init();
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F028);
  v0[20] = MEMORY[0x277D85DD0];
  v0[21] = 1107296256;
  v0[22] = sub_2748AECCC;
  v0[23] = &block_descriptor_50;
  v0[24] = v23;
  [v22 getHomeWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2748F8978()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 416) = v2;
  if (v2)
  {
    v3 = sub_2748F8CF4;
  }

  else
  {
    v3 = sub_2748F8A80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_2748F8A80()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 224);

  sub_2749FA344();
  v3 = sub_2749FA374();
  v5 = v4;
  sub_2749FA384();
  sub_2749FA464();
  OUTLINED_FUNCTION_33_10();
  sub_2749FD454();
  if (sub_2749FD6B4())
  {
    if ((v5 & 1) == 0)
    {
      if (v3)
      {
LABEL_8:

        sub_2749FA4C4();

        v7 = OUTLINED_FUNCTION_37_11();
        if (v8(v7) != *MEMORY[0x277D85B00])
        {
          (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
        }

        *OUTLINED_FUNCTION_12_2() = 0;
        v9 = sub_2749FA444();
        OUTLINED_FUNCTION_8_27(&dword_274719000, v10, v11, v9);
        OUTLINED_FUNCTION_31();
        goto LABEL_11;
      }

      __break(1u);
    }

    if (HIDWORD(v3))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_28_13();
      if (v6)
      {
LABEL_16:
        __break(1u);
        return;
      }

      if (v3 >> 16 <= 0x10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_11:
  v12 = *(v0 + 376);
  v22 = *(v0 + 392);
  v14 = *(v0 + 360);
  v13 = *(v0 + 368);
  v24 = *(v0 + 352);
  v15 = *(v0 + 328);
  v23 = v2;
  v16 = *(v0 + 312);
  v17 = *(v0 + 288);
  v18 = v1;
  v19 = *(v0 + 272);
  v20 = *(v0 + 240);

  v12(v17, v19);
  v22(v15, v16);
  (*(v14 + 8))(v13, v24);
  *v20 = v23;

  OUTLINED_FUNCTION_48_0();

  v21();
}

uint64_t sub_2748F8CF4()
{
  v1 = v0[51];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[44];
  swift_willThrow();
  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_48_0();

  return v5();
}

uint64_t sub_2748F8DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  sub_27473F28C(a1, v17 - v8, &unk_28096C960);
  v10 = sub_2749FD0E4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_27472ECBC(v9, &unk_28096C960);
  }

  else
  {
    sub_2749FD0D4();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = sub_2749FD044();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  v15 = (v13 | v11);
  if (v13 | v11)
  {
    v18[0] = 0;
    v18[1] = 0;
    v15 = v18;
    v18[2] = v11;
    v18[3] = v13;
  }

  v17[1] = 1;
  v17[2] = v15;
  v17[3] = v14;
  swift_task_create();
}

uint64_t sub_2748F8FB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  v3 = OUTLINED_FUNCTION_34(v2);
  MEMORY[0x28223BE20](v3);
  sub_2749FD0E4();
  v4 = OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
  sub_2749FD0A4();

  v7 = sub_2749FD094();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  sub_27479930C();
}

uint64_t sub_2748F90B0()
{
  v0[2] = sub_2749FD0A4();
  v0[3] = sub_2749FD094();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2747EC4A8;

  return sub_2748F9198();
}

uint64_t sub_2748F9198()
{
  OUTLINED_FUNCTION_79();
  v1[27] = v0;
  v2 = sub_2749FA4E4();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D2F0);
  OUTLINED_FUNCTION_34(v3);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v4 = sub_2749F90F4();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  sub_2749FD0A4();
  v1[39] = sub_2749FD094();
  v6 = sub_2749FD044();
  v1[40] = v6;
  v1[41] = v5;

  return MEMORY[0x2822009F8](sub_2748F9348, v6, v5);
}

uint64_t sub_2748F9348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  v15 = *(v14 + 192);
  *(v14 + 336) = v15;
  if (*(v14 + 200))
  {
    sub_2748301B8(v15, *(v14 + 200));

LABEL_5:
    sub_2749FA3D4();
    v25 = sub_2749FA4D4();
    v26 = sub_2749FD2E4();
    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v14 + 232);
    v28 = *(v14 + 240);
    v30 = *(v14 + 224);
    if (v27)
    {
      v31 = OUTLINED_FUNCTION_12_2();
      *v31 = 0;
      _os_log_impl(&dword_274719000, v25, v26, "Not reloading donations, since we haven't initially loaded yet", v31, 2u);
      OUTLINED_FUNCTION_31();
    }

    (*(v29 + 8))(v28, v30);
    goto LABEL_8;
  }

  v17 = *(v14 + 264);
  v16 = *(v14 + 272);
  v18 = *(v14 + 216);
  v19 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_lastDonationsLoadDate;
  *(v14 + 344) = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_lastDonationsLoadDate;
  swift_beginAccess();
  sub_27473F28C(v18 + v19, v17, &unk_28096D2F0);
  v20 = OUTLINED_FUNCTION_92();
  if (__swift_getEnumTagSinglePayload(v20, v21, v16) == 1)
  {
    v22 = *(v14 + 264);

    v23 = OUTLINED_FUNCTION_14_16();
    sub_2748301B8(v23, v24);
    sub_27472ECBC(v22, &unk_28096D2F0);
    goto LABEL_5;
  }

  v41 = *(v14 + 296);
  v43 = *(v14 + 280);
  v42 = *(v14 + 288);
  v44 = *(v14 + 272);
  (*(v43 + 32))(*(v14 + 304), *(v14 + 264), v44);
  sub_2749F90A4();
  sub_2749F90E4();
  v45 = sub_2749F90C4();
  v46 = *(v43 + 8);
  *(v14 + 352) = v46;
  *(v14 + 360) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46(v42, v44);
  v46(v41, v44);
  if (v45)
  {

    sub_2749FA3D4();
    v47 = sub_2749FA4D4();
    v48 = sub_2749FD2E4();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v14 + 304);
    a11 = *(v14 + 272);
    if (v49)
    {
      a10 = *(v14 + 304);
      v51 = OUTLINED_FUNCTION_12_2();
      *v51 = 0;
      _os_log_impl(&dword_274719000, v47, v48, "Not reloading donations, since they were fetched recently", v51, 2u);
      OUTLINED_FUNCTION_31();

      v52 = OUTLINED_FUNCTION_14_16();
      sub_2748301B8(v52, v53);
      v54 = OUTLINED_FUNCTION_13_20();
      v55(v54);
      v56 = a10;
    }

    else
    {

      v61 = OUTLINED_FUNCTION_14_16();
      sub_2748301B8(v61, v62);
      v63 = OUTLINED_FUNCTION_13_20();
      v64(v63);
      v56 = v50;
    }

    v46(v56, a11);
LABEL_8:
    OUTLINED_FUNCTION_41_10();

    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_9_4();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  v57 = [objc_opt_self() sharedRecommender];
  *(v14 + 368) = v57;
  *(v14 + 16) = v14;
  *(v14 + 56) = v14 + 208;
  *(v14 + 24) = sub_2748F97E0;
  v58 = swift_continuation_init();
  *(v14 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F000);
  *(v14 + 80) = MEMORY[0x277D85DD0];
  *(v14 + 88) = 1107296256;
  *(v14 + 96) = sub_2748F9A5C;
  *(v14 + 104) = &block_descriptor_38;
  *(v14 + 112) = v58;
  [v57 fetchRecommendedDonationsForAppPredictionsWithCompletionHandler_];
  OUTLINED_FUNCTION_9_4();

  return MEMORY[0x282200938](v59);
}

uint64_t sub_2748F97E0()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v1 = *(v0 + 328);
  v2 = *(v0 + 320);

  return MEMORY[0x2822009F8](sub_2748F98E0, v2, v1);
}

uint64_t sub_2748F98E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_0();
  v15 = v14[46];

  v16 = v14[26];

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F008);
    v17 = sub_2749FCF74();
  }

  else
  {
    v17 = 0;
  }

  v18 = v14[44];
  v19 = v14[42];
  v20 = v14[43];
  v21 = v14[38];
  v22 = v14[34];
  v23 = v14[32];
  v24 = v14[27];
  [v19 setDonationsGroupedByApp_];

  LOBYTE(a11) = 0;
  v25 = v19;
  sub_2748F6314();
  sub_2749F90E4();
  sub_2748301B8(v19, 0);
  v18(v21, v22);
  v26 = OUTLINED_FUNCTION_14_16();
  __swift_storeEnumTagSinglePayload(v26, v27, 1, v22);
  OUTLINED_FUNCTION_10_3();
  sub_2748FB084(v23, v24 + v20, &unk_28096D2F0);
  swift_endAccess();
  OUTLINED_FUNCTION_41_10();

  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_9_4();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v19, a11, a12, a13, a14);
}

uint64_t sub_2748F9A5C(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F008);
    v4 = sub_2749FCF84();
  }

  else
  {
    v4 = 0;
  }

  return sub_27491BB90(v3, v4);
}

uint64_t GalleryLoader.deinit()
{
  sub_27472ECBC(v0 + OBJC_IVAR____TtC10WorkflowUI13GalleryLoader_lastDonationsLoadDate, &unk_28096D2F0);
  v1 = OBJC_IVAR____TtC10WorkflowUI13GalleryLoader__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EF08);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t GalleryLoader.__deallocating_deinit()
{
  GalleryLoader.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2748F9BCC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GalleryLoader();
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

uint64_t sub_2748F9C0C(unint64_t **a1, uint64_t a2, uint64_t *a3)
{
  sub_2749FA364();
  v5 = sub_2749FD954();
  v7 = sub_2747AF460(v5, v6, a3);

  v9 = *a1;
  *v9 = v7;
  *a1 = v9 + 1;
  return result;
}

void sub_2748F9C64(uint64_t a1, uint64_t a2)
{
  v5 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274797E40();
  OUTLINED_FUNCTION_0_33();
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EFE0);
  if ((OUTLINED_FUNCTION_10_28() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_274797E40();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    sub_2749FDD54();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *v2;
  if (v15)
  {
    *(v18[7] + 8 * v14) = a1;
    OUTLINED_FUNCTION_46();
  }

  else
  {
    (*(v7 + 16))(v10, a2, v5);
    sub_2748FABCC(v14, v10, a1, v18);
    OUTLINED_FUNCTION_46();
  }
}

void sub_2748F9E1C()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_5_33();
  sub_274799308(v3 & 1);
  OUTLINED_FUNCTION_0_33();
  if (v6)
  {
    __break(1u);
LABEL_11:
    sub_2749FDD54();
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096F040);
  OUTLINED_FUNCTION_11_24();
  if (sub_2749FDA84())
  {
    sub_274799308(v2 & 1);
    OUTLINED_FUNCTION_4_32();
    if (!v10)
    {
      goto LABEL_11;
    }

    v7 = v9;
  }

  if (v8)
  {
    v11 = OUTLINED_FUNCTION_32();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v11);
    OUTLINED_FUNCTION_34(v12);
    OUTLINED_FUNCTION_18_19(*(v13 + 72));
  }

  else
  {
    sub_2748FAE64(v7, v2 & 1, v0, *v1, &qword_280967DA8);
  }

  OUTLINED_FUNCTION_50_0();
}

void sub_2748F9F14()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_2_35(v2, v3, v4);
  OUTLINED_FUNCTION_0_33();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_2749FDD54();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F088);
  if (OUTLINED_FUNCTION_10_28())
  {
    OUTLINED_FUNCTION_32_12();
    OUTLINED_FUNCTION_4_32();
    if (!v11)
    {
      goto LABEL_12;
    }

    v8 = v10;
  }

  if (v9)
  {
    *(*(*v1 + 56) + 8 * v8) = v0;
    OUTLINED_FUNCTION_50_0();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_12_24();
    sub_2748FAC84(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_50_0();
  }
}

uint64_t sub_2748F9FD4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_2747984F8(a2, a3, a4);
  OUTLINED_FUNCTION_0_33();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F070);
  if ((sub_2749FDA84() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_2747984F8(a2, a3, a4);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_2749FDD54();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  if (v13)
  {
    OUTLINED_FUNCTION_46();

    return sub_2748FB0D4(v16, v17);
  }

  else
  {
    sub_2748FACCC(v12, a2, a3, a4, a1, *v4);
    OUTLINED_FUNCTION_46();

    return sub_27477D408(v20, v21, v22);
  }
}

void sub_2748FA118()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_5_33();
  sub_2747985F4();
  OUTLINED_FUNCTION_0_33();
  if (v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v2;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F068);
  OUTLINED_FUNCTION_11_24();
  if ((sub_2749FDA84() & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = sub_2747985F4();
  if ((v6 & 1) != (v8 & 1))
  {
LABEL_13:
    sub_2749FDD54();
    __break(1u);
    return;
  }

  v5 = v7;
LABEL_5:
  if (v6)
  {
    *(*(*v1 + 56) + 8 * v5) = v0;
    OUTLINED_FUNCTION_50_0();
  }

  else
  {
    OUTLINED_FUNCTION_50_0();

    sub_2748FAD34(v11, v12, v13, v14);
  }
}

void sub_2748FA210()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_5_33();
  sub_2747985F4();
  OUTLINED_FUNCTION_0_33();
  if (v1)
  {
    __break(1u);
LABEL_11:
    sub_2749FDD54();
    __break(1u);
    return;
  }

  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F058);
  OUTLINED_FUNCTION_11_24();
  if (sub_2749FDA84())
  {
    sub_2747985F4();
    OUTLINED_FUNCTION_4_32();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v2)
  {
    v4 = OUTLINED_FUNCTION_32();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
    OUTLINED_FUNCTION_34(v5);
    OUTLINED_FUNCTION_18_19(*(v6 + 72));
    OUTLINED_FUNCTION_50_0();
  }

  else
  {
    OUTLINED_FUNCTION_50_0();

    sub_2748FAD78(v7, v8, v9, v10);
  }
}

void sub_2748FA344(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), uint64_t *a5)
{
  a4(a2 & 1);
  OUTLINED_FUNCTION_0_33();
  if (v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  if ((sub_2749FDA84() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = (a4)(a2 & 1);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_2749FDD54();
    __break(1u);
    return;
  }

  v13 = v15;
LABEL_5:
  v17 = *v5;
  if (v14)
  {
    v18 = *(v17 + 56);
    v19 = *(v18 + 8 * v13);
    *(v18 + 8 * v13) = a1;
  }

  else
  {
    sub_2748FAE30(v13, a2 & 1, a1, v17);
  }
}

void sub_2748FA474()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_5_33();
  sub_274799308(v3 & 1);
  OUTLINED_FUNCTION_0_33();
  if (v6)
  {
    __break(1u);
LABEL_11:
    sub_2749FDD54();
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EFE8);
  OUTLINED_FUNCTION_11_24();
  if (sub_2749FDA84())
  {
    sub_274799308(v2 & 1);
    OUTLINED_FUNCTION_4_32();
    if (!v10)
    {
      goto LABEL_11;
    }

    v7 = v9;
  }

  if (v8)
  {
    v11 = OUTLINED_FUNCTION_32();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v11);
    OUTLINED_FUNCTION_34(v12);
    OUTLINED_FUNCTION_18_19(*(v13 + 72));
  }

  else
  {
    sub_2748FAE64(v7, v2 & 1, v0, *v1, &qword_28096EFF0);
  }

  OUTLINED_FUNCTION_50_0();
}

uint64_t sub_2748FA56C()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_2_35(v2, v3, v4);
  OUTLINED_FUNCTION_0_33();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_2749FDD54();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F038);
  if (OUTLINED_FUNCTION_10_28())
  {
    OUTLINED_FUNCTION_32_12();
    OUTLINED_FUNCTION_4_32();
    if (!v11)
    {
      goto LABEL_14;
    }

    v8 = v10;
  }

  if (v9)
  {
    *(*(*v1 + 56) + 8 * v8) = v0;
    OUTLINED_FUNCTION_50_0();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_12_24();
    sub_2748FAC84(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_50_0();
  }
}

unint64_t sub_2748FA640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2747986A8(a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EF18);
  if ((sub_2749FDA84() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_2747986A8(a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_2749FDD54();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = (v15[7] + 16 * v11);
    *v16 = a1;
    v16[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_2748FB130(v11, a3, a1, a2, v15);
  }
}

uint64_t sub_2748FA778()
{
  v1 = sub_2749FA394();
  OUTLINED_FUNCTION_34(v1);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18(v4);
  *v5 = v6;
  v5[1] = sub_2747F2F14;
  v7 = OUTLINED_FUNCTION_27_9();

  return sub_2748F70BC(v7, v8, v2, v3, v9);
}

uint64_t type metadata accessor for GalleryLoader()
{
  result = qword_28096EF58;
  if (!qword_28096EF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2748FA8C4()
{
  sub_2748A954C();
  if (v0 <= 0x3F)
  {
    sub_2748FAA7C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2748FAA7C()
{
  if (!qword_28096EF70)
  {
    v0 = sub_2749FA924();
    if (!v1)
    {
      atomic_store(v0, &qword_28096EF70);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI13GalleryLoaderC5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_2748FAAF8()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_2_35(v2, v3, v4);
  OUTLINED_FUNCTION_0_33();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_2749FDD54();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096F078);
  if (OUTLINED_FUNCTION_10_28())
  {
    OUTLINED_FUNCTION_32_12();
    OUTLINED_FUNCTION_4_32();
    if (!v11)
    {
      goto LABEL_14;
    }

    v8 = v10;
  }

  if (v9)
  {
    *(*(*v1 + 56) + 8 * v8) = v0;
    OUTLINED_FUNCTION_50_0();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_12_24();
    sub_2748FAC84(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_50_0();
  }
}

uint64_t sub_2748FABCC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2749F9284();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_2748FAC84(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_2748FACCC(unint64_t result, uint64_t a2, uint64_t a3, char a4, _OWORD *a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  v7 = (a6[7] + (result << 6));
  v8 = a5[1];
  *v7 = *a5;
  v7[1] = v8;
  v7[2] = a5[2];
  *(v7 + 41) = *(a5 + 41);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

unint64_t sub_2748FAD34(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_2748FAD78(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F060);
  result = sub_27475CF54(a3, v7 + *(*(v8 - 8) + 72) * a1, &qword_28096F060);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_2748FAE30(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_25_11(a1, a2, a3, a4);
  *(*(v5 + 56) + 8 * result) = v6;
  v7 = *(v5 + 16);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v9;
  }

  return result;
}

uint64_t sub_2748FAE64(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_25_11(a1, a2, a3, a4);
  v10 = *(v9 + 56);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v11);
  OUTLINED_FUNCTION_34(v12);
  result = sub_27475CF54(a3, v10 + *(v13 + 72) * a1, a5);
  v15 = *(a4 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v17;
  }

  return result;
}

uint64_t sub_2748FAEF8()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = sub_2747ED3A8;
  OUTLINED_FUNCTION_27_9();

  return sub_2748F90B0();
}

uint64_t sub_2748FAF98()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = sub_2747ED3A8;
  v3 = OUTLINED_FUNCTION_27_9();

  return sub_2748F8374(v3);
}

unint64_t sub_2748FB030()
{
  result = qword_28096F020;
  if (!qword_28096F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F020);
  }

  return result;
}

uint64_t sub_2748FB084(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_47(a1, a2, a3);
  OUTLINED_FUNCTION_9();
  (*(v5 + 40))(v3, v4);
  return v3;
}

unint64_t sub_2748FB130(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GalleryLoaderError(_BYTE *result, int a2, int a3)
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

unint64_t sub_2748FB238()
{
  result = qword_28096F090;
  if (!qword_28096F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F090);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_19@<X0>(uint64_t a1@<X8>)
{

  return sub_2748FB084(v1, v4 + a1 * v3, v2);
}

uint64_t OUTLINED_FUNCTION_33_10()
{

  return MEMORY[0x282200DB0]();
}

uint64_t sub_2748FB2DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_2748FB350()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_2748FB3C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_2748FB434()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_2748FB4A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_2748FB518()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_2748FB594()
{
  v1 = OBJC_IVAR____TtCC10WorkflowUI13WFIconPreviewP33_80F92779D897A46549571E219A3CDF5016IconPreviewModel__icon;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F0F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC10WorkflowUI13WFIconPreviewP33_80F92779D897A46549571E219A3CDF5016IconPreviewModel__shadowColor;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F0F8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC10WorkflowUI13WFIconPreviewP33_80F92779D897A46549571E219A3CDF5016IconPreviewModel__accessibilityLabel;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809683D8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_2748FB698()
{
  v0 = sub_2748FB594();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2748FB6EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809683D8);
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - v2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F0F8);
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F0F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtCC10WorkflowUI13WFIconPreviewP33_80F92779D897A46549571E219A3CDF5016IconPreviewModel__icon;
  v12 = [objc_opt_self() clearColor];
  v13 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

  v14 = [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph:61440 background:v13];
  v23 = v14;
  sub_27471CF08(0, &qword_280970690);
  sub_2749FA8C4();
  (*(v8 + 32))(v0 + v11, v10, v7);
  v15 = OBJC_IVAR____TtCC10WorkflowUI13WFIconPreviewP33_80F92779D897A46549571E219A3CDF5016IconPreviewModel__shadowColor;
  v16 = [objc_opt_self() systemGray3Color];
  v23 = sub_2749FC3E4();
  sub_2749FA8C4();
  (*(v4 + 32))(v0 + v15, v6, v20);
  v17 = OBJC_IVAR____TtCC10WorkflowUI13WFIconPreviewP33_80F92779D897A46549571E219A3CDF5016IconPreviewModel__accessibilityLabel;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_2749FA8C4();
  (*(v21 + 32))(v0 + v17, v3, v22);
  return v0;
}

id sub_2748FBA10()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI13WFIconPreview____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC10WorkflowUI13WFIconPreview____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10WorkflowUI13WFIconPreview____lazy_storage___iconView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for WFIconPreview.IconPreviewModel();
    sub_2748FCE98(&qword_28096F100, type metadata accessor for WFIconPreview.IconPreviewModel);

    sub_2749FAD84();
    v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F108));
    v6 = sub_2749FADF4();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_2748FBB0C@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v18[0] = sub_2749FA2F4();
  v1 = *(v18[0] - 8);
  MEMORY[0x28223BE20](v18[0]);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F0E0);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - v5;
  v7 = sub_2749FA2C4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  *(v18 - v12) = vdupq_n_s64(0x4056600000000000uLL);
  (*(v8 + 104))(v18 - v12, *MEMORY[0x277D7D690], v7);
  sub_2748FB2DC();
  (*(v8 + 16))(v11, v13, v7);
  (*(v1 + 104))(v3, *MEMORY[0x277D7D6D0], v18[0]);
  sub_2749FA314();
  v14 = sub_2748FB3C0();
  v15 = &v6[*(v4 + 36)];
  *v15 = v14;
  *(v15 + 8) = xmmword_274A224D0;
  *(v15 + 3) = 0x4024000000000000;
  v18[2] = sub_2748FB4A4();
  v18[3] = v16;
  sub_2748FCBB0();
  sub_27475D0D0();
  sub_2749FC0F4();

  sub_2748FCC6C(v6);
  return (*(v8 + 8))(v13, v7);
}

id sub_2748FBDE8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10WorkflowUI13WFIconPreview_model;
  type metadata accessor for WFIconPreview.IconPreviewModel();
  swift_allocObject();
  *&v4[v9] = sub_2748FB6EC();
  *&v4[OBJC_IVAR____TtC10WorkflowUI13WFIconPreview____lazy_storage___iconView] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for WFIconPreview();
  v10 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = sub_2748FBA10();
  [v10 addSubview_];

  return v10;
}

void sub_2748FBEEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFIconPreview();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = sub_2748FBA10();
  [v0 bounds];
  [v1 setFrame_];
}

uint64_t sub_2748FBF9C(void *a1)
{
  sub_27490C85C(a1);
  if (v2)
  {
    sub_27471CF08(0, &qword_28096BB10);

    sub_274903E28();
    sub_2748FB350();

    v3 = objc_opt_self();

    v4 = [v3 systemGray3Color];
    sub_2749FC3E4();
    sub_2749FC484();

    sub_2748FB434();

    sub_2749F93D4();
    sub_2749F93C4();
    v5 = sub_2749F93B4();
    v7 = v6;

    if (!v7)
    {
      sub_2749FCE14();
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v8 = qword_28159E448;
      v9 = sub_2749FCD64();
      v10 = sub_2749FCD64();

      v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

      v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v7 = v12;
    }

    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v13 = sub_2749FCD64();
    v14 = sub_2749FCD64();

    v16 = OUTLINED_FUNCTION_52(v15, sel_localizedStringForKey_value_table_);

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_274A0EF10;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_27475C4F4();
    *(v17 + 32) = v5;
    *(v17 + 40) = v7;
    sub_2749FCD74();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_2_36();
    v19 = [v18 backgroundColor];
    v20 = [v19 gradient];

    v63 = [objc_allocWithZone(MEMORY[0x277D79FC0]) initWithGradient_];

    v21 = OUTLINED_FUNCTION_2_36();
    v22 = [v21 backgroundColor];
    v23 = [v22 gradient];

    v24 = [v23 baseColor];
    v25 = [v24 platformColor];

    sub_2749FC3E4();
    sub_2749FC484();

    sub_2748FB434();

    v26 = OUTLINED_FUNCTION_2_36();
    [v26 glyphCharacter];

    v27 = WFNameForGlyphCharacter();
    if (!v27)
    {
      sub_2749FCE14();
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v28 = sub_2749FCD64();
      v29 = sub_2749FCD64();

      v27 = OUTLINED_FUNCTION_52(v30, sel_localizedStringForKey_value_table_);
    }

    v31 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v33 = v32;

    v34 = OUTLINED_FUNCTION_2_36();
    v35 = [v34 backgroundColor];

    v36 = sub_2748FCD6C(v35);
    if (v37)
    {
      v38 = v36;
      v39 = v37;
    }

    else
    {
      sub_2749FCE14();
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v40 = qword_28159E448;
      v41 = sub_2749FCD64();
      v42 = sub_2749FCD64();

      v43 = [v40 localizedStringForKey:v41 value:v42 table:0];

      v38 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v39 = v44;
    }

    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v45 = qword_28159E448;
    v46 = sub_2749FCD64();
    v47 = sub_2749FCD64();

    v48 = [v45 localizedStringForKey:v46 value:v47 table:0];

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_274A0F620;
    v50 = MEMORY[0x277D837D0];
    *(v49 + 56) = MEMORY[0x277D837D0];
    v51 = sub_27475C4F4();
    *(v49 + 32) = v31;
    *(v49 + 40) = v33;
    *(v49 + 96) = v50;
    *(v49 + 104) = v51;
    *(v49 + 64) = v51;
    *(v49 + 72) = v38;
    *(v49 + 80) = v39;
    sub_2749FCD74();

    v52 = [a1 icon];
    [v52 glyphCharacter];

    v53 = WFSystemImageNameForGlyphCharacter();
    if (v53)
    {
      v54 = v53;
      v55 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v57 = v56;

      v58 = objc_allocWithZone(MEMORY[0x277D7A158]);

      v59 = v63;
      sub_27491A250(v55, v57, v59);
      sub_2748FB350();
    }

    else
    {

      v60 = [a1 icon];
      v61 = [v60 glyphCharacter];

      [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph:v61 background:v63];
      sub_2748FB350();
    }
  }

  sub_2748FB518();
}

void sub_2748FC80C()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI13WFIconPreview_model;
  type metadata accessor for WFIconPreview.IconPreviewModel();
  swift_allocObject();
  *(v0 + v1) = sub_2748FB6EC();
  *(v0 + OBJC_IVAR____TtC10WorkflowUI13WFIconPreview____lazy_storage___iconView) = 0;
  sub_2749FDAE4();
  __break(1u);
}

id sub_2748FC8C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFIconPreview();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WFIconPreview.IconPreviewModel()
{
  result = qword_28096F0C8;
  if (!qword_28096F0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2748FC9BC()
{
  sub_2748FCAE0();
  if (v0 <= 0x3F)
  {
    sub_2747254DC(319, &qword_28159E770);
    if (v1 <= 0x3F)
    {
      sub_2747254DC(319, &qword_28159E768);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2748FCAE0()
{
  if (!qword_28096F0D8)
  {
    sub_27471CF08(255, &qword_280970690);
    v0 = sub_2749FA924();
    if (!v1)
    {
      atomic_store(v0, &qword_28096F0D8);
    }
  }
}

uint64_t sub_2748FCB74@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WFIconPreview();
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

unint64_t sub_2748FCBB0()
{
  result = qword_28096F0E8;
  if (!qword_28096F0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F0E0);
    sub_2748FCE98(&qword_28159E800, MEMORY[0x277D7D6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F0E8);
  }

  return result;
}

uint64_t sub_2748FCC6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F0E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2748FCD6C(void *a1)
{
  v2 = [a1 localizedPaletteName];

  if (!v2)
  {
    return 0;
  }

  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

unint64_t sub_2748FCDDC()
{
  result = qword_28096F110;
  if (!qword_28096F110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F118);
    sub_2748FCBB0();
    sub_2748FCE98(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F110);
  }

  return result;
}

uint64_t sub_2748FCE98(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2748FCEE0(void *a1)
{
  v2 = sub_2749F8FD4();
  v3 = [swift_getObjCClassFromMetadata() alertWithError_];

  return v3;
}

uint64_t MoveToFolderCoordinator.__allocating_init(database:)(void *a1)
{
  OUTLINED_FUNCTION_3_43();
  v2 = swift_allocObject();
  MoveToFolderCoordinator.init(database:)(a1);
  return v2;
}

uint64_t sub_2748FCF84(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_2747878A4(v2, v1);
}

void (*sub_2748FCFC0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_2747A88D4;
}

uint64_t MoveToFolderCoordinator.init(database:)(void *a1)
{
  *(v1 + 40) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + 56) = 0;
  *(v1 + 60) = 1;
  *(v1 + 16) = a1;
  type metadata accessor for ShortcutMoveService();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v1 + 24) = v3;
  v4 = a1;
  return v1;
}

uint64_t MoveToFolderCoordinator.__allocating_init(database:service:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_43();
  v4 = swift_allocObject();
  MoveToFolderCoordinator.init(database:service:)(a1, a2);
  return v4;
}

uint64_t MoveToFolderCoordinator.init(database:service:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v2 + 56) = 0;
  *(v2 + 60) = 1;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void sub_2748FD154(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectWeakAssign();
  v6 = *(v3 + 16);
  v7 = objc_allocWithZone(type metadata accessor for MoveToFolderViewController());
  v8 = v6;

  v9 = MoveToFolderViewController.init(database:shortcutsToMove:)(v8, a1);
  v10 = &v9[OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_delegate];
  swift_beginAccess();
  *(v10 + 1) = &protocol witness table for MoveToFolderCoordinator;
  swift_unknownObjectWeakAssign();
  v11 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v11 setModalPresentationStyle_];
  [a2 presentViewController:v11 animated:1 completion:0];
}

void sub_2748FD264(uint64_t a1, void *a2, int a3)
{
  *(v3 + 56) = a3;
  *(v3 + 60) = 0;
  sub_2748FD154(a1, a2);
}

uint64_t MoveToFolderCoordinator.deinit()
{

  sub_2747545BC(v0 + 32);
  MEMORY[0x277C61150](v0 + 48);
  return v0;
}

uint64_t MoveToFolderCoordinator.__deallocating_deinit()
{
  MoveToFolderCoordinator.deinit();
  v0 = OUTLINED_FUNCTION_3_43();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t MoveToFolderCoordinator.moveToFolderViewController(_:didRequestNewFolderCreationFor:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2749FA3C4();
  OUTLINED_FUNCTION_43();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  (*(v8 + 104))(v11 - v10, *MEMORY[0x277D79BB8], v6);
  v13 = sub_2749FA3B4();
  (*(v8 + 8))(v12, v6);
  if (v13)
  {
    v14 = *(v3 + 56);
    v15 = *(v3 + 60) != 0;
    v17 = *(v3 + 16);
    v16 = *(v3 + 24);
    aBlock = a2;
    v39 = v16;
    LODWORD(v40) = v14;
    BYTE4(v40) = v15 | 0x40;
    v18 = objc_allocWithZone(type metadata accessor for WFCollectionConfigurationViewController());

    v19 = WFCollectionConfigurationViewController.init(mode:updatingWithDatabase:)(&aBlock, v17);
    v20 = objc_allocWithZone(type metadata accessor for WFPreviewNavigationController());
    v21 = v19;
    v22 = sub_2748B8F5C();
    [a1 presentViewController:v22 animated:1 completion:0];
  }

  else
  {
    aBlock = a2;
    LOBYTE(v39) = 0;
    v23 = objc_opt_self();

    v24 = [v23 defaultGlyphCharacter];
    v25 = objc_allocWithZone(type metadata accessor for NameIconComposeViewController());
    v26 = NameIconComposeViewController.init(_:glyphCharacter:)(&aBlock, v24);
    v27 = &v26[OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_delegate];
    swift_beginAccess();
    *(v27 + 1) = &protocol witness table for MoveToFolderCoordinator;
    swift_unknownObjectWeakAssign();
    v21 = v26;
    v28 = [v23 defaultName];
    v29 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v31 = v30;

    sub_2747F9654(v29, v31, v21);
    v22 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

    [v22 setModalPresentationStyle_];
    v32 = swift_allocObject();
    *(v32 + 16) = a1;
    v42 = sub_2748FE6AC;
    v43 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_274760264;
    v41 = &block_descriptor_39;
    v33 = _Block_copy(&aBlock);
    v34 = a1;

    [v34 presentViewController:v22 animated:1 completion:v33];
    _Block_release(v33);
  }

  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v36 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    (*(v36 + 8))(v3, a2, ObjectType, v36);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t MoveToFolderCoordinator.moveToFolderViewController(_:didRequestMoving:to:)(void *a1, uint64_t a2, void *a3)
{
  sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v8 = *(v3 + 56);
  v9 = *(v3 + 60);
  v13 = a2;
  sub_2748E6B98(a2, a3, 0, 0);
  sub_2748E6E80(v8 | (v9 << 32));
  [a1 dismissViewControllerAnimated:1 completion:0];
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(v3, v13, a3, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

void MoveToFolderCoordinator.nameIconComposeViewController(_:didFinish:with:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  if ((*(a2 + 8) & 1) == 0)
  {
    MEMORY[0x28223BE20](v12);
    *(&v14 - 6) = v5;
    *(&v14 - 5) = a3;
    *(&v14 - 4) = a4;
    *(&v14 - 3) = a5;
    *(&v14 - 2) = v13;
    *(&v14 - 1) = a1;
    sub_2749FD234();
  }
}

void sub_2748FDF20(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v60 = a5;
  v61 = a4;
  aBlock[7] = *MEMORY[0x277D85DE8];
  v9 = sub_2749FA4E4();
  v58 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2749FCA74();
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_2749FCAA4();
  v52 = *(v15 - 8);
  v53 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(a1 + 16);
  if (a3)
  {
    a3 = sub_2749FCD64();
  }

  v19 = [v61 glyphCharacter];
  aBlock[0] = 0;
  v20 = [v18 createFolderWithName:a3 icon:v19 error:aBlock];

  if (!v20)
  {
    v57 = a6;
    v28 = aBlock[0];
    v27 = sub_2749F8FE4();

    swift_willThrow();
    goto LABEL_8;
  }

  v56 = v20;
  v21 = v9;
  v22 = v60;
  if (!v60)
  {
    v39 = aBlock[0];
    goto LABEL_13;
  }

  v57 = a6;
  v51 = *(a1 + 56);
  v50 = *(a1 + 60);
  v23 = aBlock[0];
  v24 = v56;
  v25 = v56;
  v26 = v59;
  sub_2748E6B98(v22, v24, 0, 0);
  v27 = v26;
  if (!v26)
  {
    v59 = 0;
    LOBYTE(aBlock[0]) = v50;
    sub_2748E6E80(v51 | (v50 << 32));

    a6 = v57;
LABEL_13:
    sub_27471CF08(0, &qword_28159E4E0);
    v40 = sub_2749FD404();
    v41 = swift_allocObject();
    v41[2] = a6;
    v41[3] = a1;
    aBlock[4] = sub_2748FE83C;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274760264;
    aBlock[3] = &block_descriptor_13;
    v42 = _Block_copy(aBlock);
    v43 = a6;

    sub_2749FCA94();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_27473FC78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
    sub_27473FCD0();
    v44 = v55;
    sub_2749FD7B4();
    MEMORY[0x277C5F170](0, v17, v14, v42);
    _Block_release(v42);

    (*(v54 + 8))(v14, v44);
    (*(v52 + 8))(v17, v53);
    v45 = [objc_allocWithZone(MEMORY[0x277D7C2C0]) init];
    sub_27484DB24(0x6F466F5465766F4DLL, 0xEC0000007265646CLL, v45, &selRef_setFolderSource_);
    v46 = v56;
    if (v60)
    {
      v47 = sub_27472D918(v60);
      if ((v47 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      v48 = v47;
      if (!HIDWORD(v47))
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    v48 = 0;
LABEL_18:
    [v45 setShortcutCount_];
    [v45 setIcon_];
    [v45 track];

    return;
  }

  v9 = v21;
LABEL_8:
  aBlock[0] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C18);
  sub_27471CF08(0, qword_280967C90);
  swift_dynamicCast();
  v29 = aBlock[6];
  sub_2749FA3D4();
  v30 = v29;
  v31 = sub_2749FA4D4();
  v32 = sub_2749FD2C4();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138543362;
    *(v33 + 4) = v30;
    *v34 = v30;
    v35 = v30;
    _os_log_impl(&dword_274719000, v31, v32, "An error occurred while creating a folder in LibraryViewController: %{public}@", v33, 0xCu);
    sub_274793F58(v34);
    MEMORY[0x277C61040](v34, -1, -1);
    MEMORY[0x277C61040](v33, -1, -1);
  }

  (*(v58 + 8))(v11, v9);
  v36 = WFUserInterfaceFromViewController();
  sub_27471CF08(0, &qword_28096D720);
  v37 = v30;
  v38 = sub_2748FCEE0(v37);
  [v36 presentAlert_];

  swift_unknownObjectRelease();
}

void sub_2748FE604(void *a1)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = [Strong presentedViewController];

  [v2 dismissViewControllerAnimated:1 completion:0];
}

void sub_2748FE854(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  v13 = type metadata accessor for GalleryImportView();
  sub_27473ADB8(v1 + *(v13 + 32), v12, &qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v14 + 32))(a1, v12);
  }

  else
  {
    sub_2749FD2D4();
    v15 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    (*(v5 + 8))(v9, v3);
  }

  OUTLINED_FUNCTION_46();
}

void sub_2748FEA2C(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v65 = sub_2749FB4F4();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F140);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F148);
  OUTLINED_FUNCTION_43();
  v64 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F150);
  OUTLINED_FUNCTION_43();
  v66 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  v63 = &v61 - v19;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F158);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  v72 = &v61 - v21;
  v70 = sub_2749FB9A4();
  OUTLINED_FUNCTION_43();
  v62 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F160);
  OUTLINED_FUNCTION_43();
  v61 = v27;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  v30 = &v61 - v29;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F168);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v61 - v33;
  if (*(v2 + 40))
  {
    *v12 = sub_2749FB634();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F170);
    sub_2748FF530(v2, &v12[*(v35 + 44)]);
    v36 = sub_2749FAEE4();
    v37 = sub_2749FBC64();
    v38 = &v12[*(v9 + 36)];
    *v38 = v36;
    v38[8] = v37;
    v39 = v65;
    (*(v4 + 104))(v8, *MEMORY[0x277CDDDC0], v65);
    v40 = sub_274902B50();
    sub_2749FC224();
    (*(v4 + 8))(v8, v39);
    sub_27478C584(v12, &qword_28096F140);
    v75 = v9;
    v76 = v40;
    v41 = OUTLINED_FUNCTION_4_34();
    v42 = v63;
    v43 = v69;
    sub_2749FC194();
    (*(v64 + 8))(v16, v43);
    v44 = v66;
    v45 = v73;
    (*(v66 + 16))(v72, v42, v73);
    swift_storeEnumTagMultiPayload();
    v46 = OUTLINED_FUNCTION_7_24(&qword_28096F190, &qword_28096F160);
    OUTLINED_FUNCTION_3_44();
    v49 = sub_27490398C(v47, 255, v48);
    v75 = v67;
    v76 = v70;
    v77 = v46;
    v78 = v49;
    OUTLINED_FUNCTION_6_30();
    v75 = v43;
    v76 = v41;
    OUTLINED_FUNCTION_5_34();
    sub_2749FB7B4();
    (*(v44 + 8))(v42, v45);
  }

  else
  {
    MEMORY[0x28223BE20](v32);
    *(&v61 - 2) = v2;
    v51 = v50;
    v52 = sub_274902B50();
    v75 = v9;
    v76 = v52;
    v53 = OUTLINED_FUNCTION_4_34();
    v75 = v69;
    v76 = v53;
    v69 = OUTLINED_FUNCTION_5_34();
    sub_2749FAD74();
    sub_2749FB994();
    v54 = OUTLINED_FUNCTION_7_24(&qword_28096F190, &qword_28096F160);
    OUTLINED_FUNCTION_3_44();
    v57 = sub_27490398C(v55, 255, v56);
    v58 = v67;
    v59 = v70;
    sub_2749FBF54();
    (*(v62 + 8))(v26, v59);
    (*(v61 + 8))(v30, v58);
    v60 = v71;
    (*(v51 + 16))(v72, v34, v71);
    swift_storeEnumTagMultiPayload();
    v75 = v58;
    v76 = v59;
    v77 = v54;
    v78 = v57;
    OUTLINED_FUNCTION_6_30();
    sub_2749FB7B4();
    (*(v51 + 8))(v34, v60);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_2748FF124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = sub_2749FB4F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F140);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F148);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - v12;
  *v9 = sub_2749FB634();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F170);
  sub_2748FF530(a1, &v9[*(v14 + 44)]);
  v15 = sub_2749FAEE4();
  v16 = sub_2749FBC64();
  v17 = &v9[*(v7 + 36)];
  *v17 = v15;
  v17[8] = v16;
  (*(v4 + 104))(v6, *MEMORY[0x277CDDDC0], v3);
  v18 = sub_274902B50();
  sub_2749FC224();
  (*(v4 + 8))(v6, v3);
  sub_27478C584(v9, &qword_28096F140);
  v20[2] = v7;
  v20[3] = v18;
  swift_getOpaqueTypeConformance2();
  sub_2749FC194();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2748FF3D8()
{
  v0 = sub_2749FAA94();
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  sub_2748FE854(&v13 - v7);
  (*(v2 + 104))(v6, *MEMORY[0x277CDF3C0], v0);
  v9 = sub_2749FAA84();
  v10 = *(v2 + 8);
  v10(v6, v0);
  v10(v8, v0);
  if ((v9 & 1) == 0)
  {
    return sub_2749FC474();
  }

  v11 = [objc_opt_self() secondarySystemBackgroundColor];
  return sub_2749FC3E4();
}

uint64_t sub_2748FF530@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v143 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F198);
  v4 = MEMORY[0x28223BE20](v3);
  v145 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v115 - v6;
  v129 = sub_2749FAF34();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v127 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1A0);
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v120 = &v115 - v9;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1A8);
  MEMORY[0x28223BE20](v124);
  v125 = &v115 - v10;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1B0);
  MEMORY[0x28223BE20](v139);
  v126 = &v115 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1B8);
  MEMORY[0x28223BE20](v12);
  v138 = &v115 - v13;
  v135 = sub_2749FBAE4();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for GalleryImportView();
  v137 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v146 = v15;
  v16 = (&v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1C0);
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v115 - v17;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1C8);
  MEMORY[0x28223BE20](v136);
  v121 = &v115 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1D0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v144 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v148 = &v115 - v22;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1D8);
  v140 = *(v142 - 8);
  v23 = MEMORY[0x28223BE20](v142);
  v141 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v115 - v25;
  v149 = a1;
  sub_2749FBC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1E0);
  v27 = a1;
  sub_27472AC38(&qword_28096F1E8, &qword_28096F1E0);
  v147 = v26;
  sub_2749FAA54();
  v28 = *a1;
  v29 = [*a1 importQuestions];
  sub_27471CF08(0, &qword_28096EA30);
  v30 = sub_2749FCF84();

  v31 = sub_27472D918(v30);

  if (__OFSUB__(v31, 1))
  {
    __break(1u);
  }

  else
  {
    v130 = v12;
    v131 = v3;
    v132 = v7;
    v33 = *(a1 + 40);
    if (v33 >= v31 - 1)
    {
      sub_274902C18(a1, v16);
      v61 = v137;
      v62 = (*(v137 + 80) + 16) & ~*(v137 + 80);
      v63 = swift_allocObject();
      v64 = sub_274902C7C(v16, v63 + v62);
      MEMORY[0x28223BE20](v64);
      *(&v115 - 2) = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1F0);
      sub_274902CE8();
      v65 = v120;
      sub_2749FC624();
      v66 = v133;
      sub_2749FBAD4();
      sub_27472AC38(&qword_28096F230, &qword_28096F1A0);
      sub_27490398C(&qword_28096D440, 255, MEMORY[0x277CDE400]);
      v67 = v125;
      v68 = v123;
      v69 = v135;
      sub_2749FBFC4();
      (*(v134 + 8))(v66, v69);
      (*(v122 + 8))(v65, v68);
      v70 = sub_2749FC434();
      KeyPath = swift_getKeyPath();
      v150 = v70;
      v72 = sub_2749FABC4();
      v73 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F238) + 36));
      *v73 = KeyPath;
      v73[1] = v72;
      v74 = (v67 + *(v124 + 36));
      v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D900) + 28);
      v76 = *MEMORY[0x277CDF420];
      v77 = sub_2749FAAA4();
      (*(*(v77 - 8) + 104))(v74 + v75, v76, v77);
      *v74 = swift_getKeyPath();
      v78 = v127;
      sub_2749FAF24();
      sub_2749031F4(&qword_28096F240, &qword_28096F1A8, &unk_274A22990, sub_274902FC0);
      v79 = v126;
      sub_2749FC0B4();
      (*(v128 + 8))(v78, v129);
      sub_27478C584(v67, &qword_28096F1A8);
      LOBYTE(v76) = sub_2749FBC54();
      sub_2749FA9E4();
      v80 = v138;
      v81 = v79 + *(v139 + 36);
      *v81 = v76;
      *(v81 + 8) = v82;
      *(v81 + 16) = v83;
      *(v81 + 24) = v84;
      *(v81 + 32) = v85;
      *(v81 + 40) = 0;
      sub_27473ADB8(v79, v80, &qword_28096F1B0);
      swift_storeEnumTagMultiPayload();
      sub_27490313C();
      sub_27490341C();
      v60 = v148;
      sub_2749FB7B4();
      sub_27478C584(v79, &qword_28096F1B0);
    }

    else
    {
      v35 = *(a1 + 24);
      v34 = *(a1 + 32);
      v36 = v33 + 1;
      v37 = a1;
      v38 = *(a1 + 8);
      v39 = *(a1 + 16);
      v40 = *(v116 + 32);
      *(v16 + v40) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
      swift_storeEnumTagMultiPayload();
      *v16 = v28;
      v16[1] = v38;
      v16[2] = v39;
      v16[3] = v35;
      v16[4] = v34;
      v16[5] = v36;

      v41 = v28;
      v27 = v37;
      sub_27475D1E4(v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C050);
      sub_27475C60C();
      sub_27490398C(&qword_28096D7F0, 255, type metadata accessor for GalleryImportView);
      v42 = v117;
      sub_2749FAD24();
      v43 = v133;
      sub_2749FBAD4();
      sub_27472AC38(&qword_28096F288, &qword_28096F1C0);
      sub_27490398C(&qword_28096D440, 255, MEMORY[0x277CDE400]);
      v44 = v121;
      v45 = v119;
      v46 = v135;
      sub_2749FBFC4();
      (*(v134 + 8))(v43, v46);
      (*(v118 + 8))(v42, v45);
      v47 = sub_2749FC434();
      v48 = swift_getKeyPath();
      v150 = v47;
      v49 = sub_2749FABC4();
      v50 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F280) + 36));
      *v50 = v48;
      v50[1] = v49;
      v51 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F270) + 36));
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D900) + 28);
      v53 = *MEMORY[0x277CDF420];
      v54 = sub_2749FAAA4();
      (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
      *v51 = swift_getKeyPath();
      LOBYTE(v53) = sub_2749FBC54();
      sub_2749FA9E4();
      v55 = v44 + *(v136 + 36);
      *v55 = v53;
      *(v55 + 8) = v56;
      *(v55 + 16) = v57;
      *(v55 + 24) = v58;
      *(v55 + 32) = v59;
      *(v55 + 40) = 0;
      sub_27473ADB8(v44, v138, &qword_28096F1C8);
      swift_storeEnumTagMultiPayload();
      sub_27490313C();
      sub_27490341C();
      v60 = v148;
      sub_2749FB7B4();
      sub_27478C584(v44, &qword_28096F1C8);
      v61 = v137;
    }

    sub_274902C18(v27, v16);
    v86 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v87 = swift_allocObject();
    sub_274902C7C(v16, v87 + v86);
    v88 = v132;
    sub_2749FC624();
    v89 = sub_2749FBC84();
    sub_2749FA9E4();
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v98 = v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FC20) + 36);
    *v98 = v89;
    *(v98 + 8) = v91;
    *(v98 + 16) = v93;
    *(v98 + 24) = v95;
    *(v98 + 32) = v97;
    *(v98 + 40) = 0;
    v99 = sub_2749FBC74();
    sub_2749FA9E4();
    v100 = v88 + *(v131 + 36);
    *v100 = v99;
    *(v100 + 8) = v101;
    *(v100 + 16) = v102;
    *(v100 + 24) = v103;
    *(v100 + 32) = v104;
    *(v100 + 40) = 0;
    v105 = v140;
    v106 = v141;
    v107 = *(v140 + 16);
    v108 = v142;
    v107(v141, v147, v142);
    v109 = v144;
    sub_27473ADB8(v60, v144, &qword_28096F1D0);
    v110 = v145;
    sub_27473ADB8(v88, v145, &qword_28096F198);
    v111 = v143;
    v107(v143, v106, v108);
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F298);
    v113 = &v111[v112[12]];
    *v113 = 0;
    v113[8] = 1;
    sub_27473ADB8(v109, &v111[v112[16]], &qword_28096F1D0);
    sub_27473ADB8(v110, &v111[v112[20]], &qword_28096F198);
    sub_27478C584(v88, &qword_28096F198);
    sub_27478C584(v148, &qword_28096F1D0);
    v114 = *(v105 + 8);
    v114(v147, v108);
    sub_27478C584(v110, &qword_28096F198);
    sub_27478C584(v109, &qword_28096F1D0);
    return (v114)(v106, v108);
  }

  return result;
}

uint64_t sub_274900654@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v114 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F2A8);
  v3 = MEMORY[0x28223BE20](v107);
  v110 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v109 = (&v94 - v5);
  v104 = sub_2749FB5D4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v100 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF90);
  MEMORY[0x28223BE20](v7 - 8);
  v102 = &v94 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D9C8);
  v9 = MEMORY[0x28223BE20](v101);
  v106 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v99 = &v94 - v12;
  MEMORY[0x28223BE20](v11);
  v105 = &v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F2B0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v113 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v112 = &v94 - v17;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v18 = qword_28159E448;
  v19 = sub_2749FCD64();
  v20 = sub_2749FCD64();

  v97 = v18;
  v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

  v22 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v24 = v23;

  v115 = v22;
  v116 = v24;
  v98 = sub_27475D0D0();
  v25 = sub_2749FBEE4();
  v27 = v26;
  LOBYTE(v24) = v28;
  sub_2749FBD14();
  v29 = sub_2749FBEC4();
  v31 = v30;
  v33 = v32;

  sub_27477656C(v25, v27, v24 & 1);

  v34 = sub_2749FBEB4();
  v36 = v35;
  v111 = v37;
  v39 = v38;
  sub_27477656C(v29, v31, v33 & 1);

  v40 = *(a1 + 40);
  v108 = a1;
  v41 = *a1;
  v42 = [*a1 importQuestions];
  sub_27471CF08(0, &qword_28096EA30);
  v43 = sub_2749FCF84();

  v44 = sub_27472D918(v43);

  if (v40 >= v44)
  {
    v55 = 1;
    v47 = v112;
  }

  else
  {
    v45 = [v41 importQuestions];
    v46 = sub_2749FCF84();

    sub_2747B2790(v40, (v46 & 0xC000000000000001) == 0, v46);
    v47 = v112;
    v94 = v36;
    if ((v46 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x277C5F6D0](v40, v46);
    }

    else
    {
      v48 = *(v46 + 8 * v40 + 32);
    }

    v49 = v48;

    v50 = v49;
    v51 = sub_2749036A0(v49);
    v96 = v39;
    v95 = v34;
    if (v52)
    {
      v53 = v51;
      v54 = v52;
    }

    else
    {
      sub_2749FCE14();
      v56 = sub_2749FCD64();
      v57 = sub_2749FCD64();

      v58 = [v97 localizedStringForKey:v56 value:v57 table:0];

      v53 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v54 = v59;
    }

    v115 = v53;
    v116 = v54;
    v60 = sub_2749FBEE4();
    v62 = v61;
    v115 = v60;
    v116 = v61;
    v64 = v63 & 1;
    v117 = v63 & 1;
    v118 = v65;
    v66 = v100;
    sub_2749FB5C4();
    v67 = v102;
    sub_2749FC1D4();
    (*(v103 + 8))(v66, v104);
    sub_27477656C(v60, v62, v64);

    LOBYTE(v60) = sub_2749FBC64();
    sub_2749FA9E4();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v76 = v99;
    sub_2747D31F8(v67, v99, &qword_28096CF90);
    v77 = v76 + *(v101 + 36);
    *v77 = v60;
    *(v77 + 8) = v69;
    *(v77 + 16) = v71;
    *(v77 + 24) = v73;
    *(v77 + 32) = v75;
    *(v77 + 40) = 0;
    v78 = v105;
    sub_2747D31F8(v76, v105, &qword_28096D9C8);
    v79 = sub_2749FB644();
    v80 = v109;
    *v109 = v79;
    *(v80 + 8) = 0;
    *(v80 + 16) = 0;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F2C8);
    sub_274900F98(v50, (v80 + *(v81 + 44)));
    v82 = sub_2748FF3D8();
    v83 = sub_2749FBC64();
    v84 = v106;
    v85 = v80 + *(v107 + 36);
    *v85 = v82;
    *(v85 + 8) = v83;
    sub_27473ADB8(v78, v84, &qword_28096D9C8);
    v86 = v110;
    sub_27473ADB8(v80, v110, &qword_28096F2A8);
    sub_27473ADB8(v84, v47, &qword_28096D9C8);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F2D0);
    sub_27473ADB8(v86, v47 + *(v87 + 48), &qword_28096F2A8);

    sub_27478C584(v80, &qword_28096F2A8);
    sub_27478C584(v78, &qword_28096D9C8);
    sub_27478C584(v86, &qword_28096F2A8);
    sub_27478C584(v84, &qword_28096D9C8);
    v55 = 0;
    v39 = v96;
    v34 = v95;
    v36 = v94;
  }

  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F2B8);
  __swift_storeEnumTagSinglePayload(v47, v55, 1, v88);
  v89 = v113;
  sub_27473ADB8(v47, v113, &qword_28096F2B0);
  v90 = v114;
  *v114 = v34;
  v90[1] = v36;
  v91 = v111 & 1;
  *(v90 + 16) = v111 & 1;
  v90[3] = v39;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F2C0);
  sub_27473ADB8(v89, v90 + *(v92 + 48), &qword_28096F2B0);
  sub_274754DBC(v34, v36, v91);

  sub_27478C584(v47, &qword_28096F2B0);
  sub_27478C584(v89, &qword_28096F2B0);
  sub_27477656C(v34, v36, v91);
}

uint64_t sub_274900F98@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = sub_2749FC744();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v53 = &v45 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  sub_2749FC734();
  v52 = swift_allocObject();
  *(v52 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A0F620;
  v51 = a1;
  v15 = sub_2749FBC94();
  *(inited + 32) = v15;
  v16 = sub_2749FBCB4();
  *(inited + 33) = v16;
  v17 = sub_2749FBCA4();
  sub_2749FBCA4();
  if (sub_2749FBCA4() != v15)
  {
    v17 = sub_2749FBCA4();
  }

  sub_2749FBCA4();
  if (sub_2749FBCA4() == v16)
  {
    v50 = v17;
  }

  else
  {
    v50 = sub_2749FBCA4();
  }

  sub_2749FA9E4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v78 = 0;
  v77 = 0;
  v26 = sub_2749FBC84();
  sub_2749FA9E4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v79 = 0;
  sub_2749FC734();
  v35 = v11;
  v46 = v11;
  v47 = v13;
  v36 = *(v4 + 16);
  v37 = v53;
  v36(v53, v13, v3);
  v38 = v48;
  v36(v48, v35, v3);
  v39 = v3;
  v40 = v49;
  v36(v49, v37, v39);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F2D8);
  v42 = *(v41 + 48);
  v45 = sub_274903700;
  v58[0] = v51;
  v58[1] = sub_274903700;
  v58[2] = v52;
  LOBYTE(v58[3]) = 0;
  *(&v58[3] + 1) = *v57;
  HIDWORD(v58[3]) = *&v57[3];
  LOBYTE(v58[4]) = v50;
  *(&v58[4] + 1) = *v56;
  HIDWORD(v58[4]) = *&v56[3];
  v58[5] = v19;
  v58[6] = v21;
  v58[7] = v23;
  v58[8] = v25;
  LOBYTE(v58[9]) = 0;
  HIDWORD(v58[9]) = *&v55[3];
  *(&v58[9] + 1) = *v55;
  LOBYTE(v58[10]) = v26;
  HIDWORD(v58[10]) = *&v54[3];
  *(&v58[10] + 1) = *v54;
  v58[11] = v28;
  v58[12] = v30;
  v58[13] = v32;
  v58[14] = v34;
  LOBYTE(v58[15]) = 0;
  memcpy(&v40[v42], v58, 0x79uLL);
  v36(&v40[*(v41 + 64)], v38, v39);
  sub_27473ADB8(v58, v59, &qword_28096F2E0);
  v43 = *(v4 + 8);
  v43(v46, v39);
  v43(v47, v39);
  v43(v38, v39);
  v59[0] = v51;
  v59[1] = v45;
  v59[2] = v52;
  v60 = 0;
  *v61 = *v57;
  *&v61[3] = *&v57[3];
  v62 = v50;
  *v63 = *v56;
  *&v63[3] = *&v56[3];
  v64 = v19;
  v65 = v21;
  v66 = v23;
  v67 = v25;
  v68 = 0;
  *&v69[3] = *&v55[3];
  *v69 = *v55;
  v70 = v26;
  *&v71[3] = *&v54[3];
  *v71 = *v54;
  v72 = v28;
  v73 = v30;
  v74 = v32;
  v75 = v34;
  v76 = 0;
  sub_27478C584(v59, &qword_28096F2E0);
  return (v43)(v53, v39);
}

void *sub_274901450@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __src - v3;
  v5 = sub_2749FBE14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = __src - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749FCE14();
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v9 = qword_28159E448;
  v10 = sub_2749FCD64();

  v11 = sub_2749FCD64();

  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  v13 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v15 = v14;

  __src[0] = v13;
  __src[1] = v15;
  sub_27475D0D0();
  v16 = sub_2749FBEE4();
  v18 = v17;
  v20 = v19;
  (*(v6 + 104))(v8, *MEMORY[0x277CE0AC0], v5);
  v21 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v21);
  sub_2749FBD74();
  sub_27478C584(v4, &unk_28096C0A0);
  (*(v6 + 8))(v8, v5);
  sub_2749FBD54();
  sub_2749FBDA4();

  v22 = sub_2749FBEC4();
  v24 = v23;
  LOBYTE(v9) = v25;
  v27 = v26;

  sub_27477656C(v16, v18, v20 & 1);

  sub_2749FC914();
  sub_2749FB004();
  *a1 = v22;
  *(a1 + 8) = v24;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v27;
  return memcpy((a1 + 32), __src, 0x70uLL);
}

void *sub_2749017C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - v4;
  v6 = sub_2749FBE14();
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D8E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F2A0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F208);
  MEMORY[0x28223BE20](v48);
  v16 = &v40 - v15;
  v17 = *(a1 + 32);
  if (v17)
  {
    __src[0] = *(a1 + 24);
    __src[1] = v17;
    sub_27475D0D0();

    *v14 = sub_2749FBEE4();
    *(v14 + 1) = v18;
    v14[16] = v19 & 1;
    *(v14 + 3) = v20;
    swift_storeEnumTagMultiPayload();
    sub_27472AC38(&unk_28096DEF0, &unk_28096D8E0);
    sub_2749FB7B4();
    v21 = v50;
  }

  else
  {
    v41 = v11;
    v42 = v12;
    v43 = v9;
    v44 = v8;
    v45 = v6;
    v46 = v5;
    sub_2749FCE14();
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v22 = qword_28159E448;
    v23 = sub_2749FCD64();

    v24 = sub_2749FCD64();

    v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

    v26 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v28 = v27;

    __src[0] = v26;
    __src[1] = v28;
    sub_27475D0D0();
    v29 = v41;
    sub_2749FC594();
    v30 = v43;
    v31 = v44;
    (*(v43 + 16))(v14, v29, v44);
    swift_storeEnumTagMultiPayload();
    sub_27472AC38(&unk_28096DEF0, &unk_28096D8E0);
    sub_2749FB7B4();
    (*(v30 + 8))(v29, v31);
    v21 = v50;
    v6 = v45;
    v5 = v46;
  }

  v32 = v49;
  v33 = v47;
  (*(v49 + 104))(v47, *MEMORY[0x277CE0AC0], v6);
  v34 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v34);
  sub_2749FBD74();
  sub_27478C584(v5, &unk_28096C0A0);
  (*(v32 + 8))(v33, v6);
  sub_2749FBD54();
  v35 = sub_2749FBDA4();

  KeyPath = swift_getKeyPath();
  v37 = &v16[*(v48 + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  sub_2749FC914();
  sub_2749FB004();
  sub_2747D31F8(v16, v21, &qword_28096F208);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F1F0);
  return memcpy((v21 + *(v38 + 36)), __src, 0x70uLL);
}

uint64_t sub_274901DF4(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {

    v1(v2);
    v3 = OUTLINED_FUNCTION_44();

    return sub_27471F8A4(v3);
  }

  return result;
}

uint64_t sub_274901E4C@<X0>(uint64_t a1@<X8>)
{
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_27475D0D0();
  v6 = sub_2749FBEE4();
  v8 = v7;
  LOBYTE(v2) = v9;
  sub_2749FBD44();
  v10 = sub_2749FBE74();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_27477656C(v6, v8, v2 & 1);

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_274901FD8(void *a1)
{
  type metadata accessor for GalleryImportQuestionStateStore();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = a1;
  v3 = a1;
  return v2;
}

void sub_27490201C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v45 = a4;
  v46 = a3;
  v44 = a2;
  v7 = sub_2749F9C04();
  OUTLINED_FUNCTION_43();
  v47 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = sub_2749F9BD4();
  OUTLINED_FUNCTION_43();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B3C0);
  OUTLINED_FUNCTION_43();
  v22 = v21;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  v25 = &v40 - v24;
  v26 = [a1 parameter];
  if (v26)
  {
    v27 = v26;
    type metadata accessor for GalleryImportQuestionStateStore();
    v41 = v7;
    v42 = v13;
    sub_27490398C(&qword_28096F2E8, v28, type metadata accessor for GalleryImportQuestionStateStore);
    v43 = v20;
    v40 = v27;
    sub_2749FAB04();
    v29 = v15;
    sub_2749F9C44();
    swift_allocObject();
    v46 = a5;
    sub_27490398C(&qword_28096F300, v30, type metadata accessor for GalleryImportQuestionStateStore);
    sub_2749F9C54();
    (*(v47 + 104))(v12, *MEMORY[0x277D7BD78], v41);
    v31 = v40;
    sub_2749F9BC4();
    sub_27490398C(&qword_28096B3C8, 255, MEMORY[0x277D7BD30]);
    v32 = v42;
    sub_2749FBEF4();

    (*(v29 + 8))(v19, v32);
    v33 = v46;
    v34 = v43;
    (*(v22 + 32))(v46, v25, v43);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v34);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_46();

    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  }
}

id sub_2749023D8()
{
  v1 = *(v0 + 16);
  v2 = [v1 action];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v1 parameter];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  if ((*(v0 + 24) & 1) != 0 || (v6 = [v1 defaultState]) == 0)
  {
    v8 = [v5 key];
    if (!v8)
    {
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v8 = sub_2749FCD64();
    }

    v7 = [v3 parameterStateForKey_];
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

uint64_t sub_2749024E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = [v4 action];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 parameter];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for GalleryImportQuestionStateStore();
      sub_27490398C(&qword_28096F2E8, v9, type metadata accessor for GalleryImportQuestionStateStore);
      sub_2749FA874();
      sub_2749FA894();

      *(v2 + 24) = 1;
      v10 = [v8 key];
      if (!v10)
      {
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v10 = sub_2749FCD64();
      }

      [v6 setParameterState:a1 forKey:v10];
    }

    else
    {
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_2749026B4()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t sub_274902710()
{
  sub_2749FDDF4();
  sub_2749FD614();
  return sub_2749FDE44();
}

uint64_t type metadata accessor for GalleryImportView()
{
  result = qword_28096F120;
  if (!qword_28096F120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2749027C8()
{
  sub_27471CF08(319, &qword_28096BF80);
  if (v0 <= 0x3F)
  {
    sub_274776B60();
    if (v1 <= 0x3F)
    {
      sub_274902894();
      if (v2 <= 0x3F)
      {
        sub_2747B708C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_274902894()
{
  if (!qword_28096D810)
  {
    v0 = sub_2749FD6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_28096D810);
    }
  }
}

uint64_t (*sub_2749028EC(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2749023D8();
  return sub_274902934;
}

uint64_t sub_274902934(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_2749024E8(*a1);
  }

  v2 = swift_unknownObjectRetain();
  sub_2749024E8(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_2749029BC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GalleryImportQuestionStateStore();
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

uint64_t sub_274902A40()
{
  sub_2749FDDF4();
  sub_27490263C();
  return sub_2749FDE44();
}

unint64_t sub_274902B50()
{
  result = qword_28096F178;
  if (!qword_28096F178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F140);
    sub_27472AC38(&qword_28096F180, &unk_28096F188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F178);
  }

  return result;
}

uint64_t sub_274902C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GalleryImportView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274902C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GalleryImportView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_274902CE8()
{
  result = qword_28096F1F8;
  if (!qword_28096F1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F1F0);
    sub_274902D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F1F8);
  }

  return result;
}

unint64_t sub_274902D74()
{
  result = qword_28096F200;
  if (!qword_28096F200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F208);
    sub_274902E2C();
    sub_27472AC38(&qword_28159E5C0, &unk_28096D8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F200);
  }

  return result;
}

unint64_t sub_274902E2C()
{
  result = qword_28096F210;
  if (!qword_28096F210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F218);
    sub_274902EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F210);
  }

  return result;
}

unint64_t sub_274902EB0()
{
  result = qword_28096F220;
  if (!qword_28096F220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F228);
    sub_27472AC38(&unk_28096DEF0, &unk_28096D8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F220);
  }

  return result;
}

uint64_t sub_274902F68@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x277C5D140]();
  *a1 = result;
  return result;
}

unint64_t sub_274902FC0()
{
  result = qword_28096F248;
  if (!qword_28096F248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F1A0);
    sub_2749FBAE4();
    sub_27472AC38(&qword_28096F230, &qword_28096F1A0);
    sub_27490398C(&qword_28096D440, 255, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_27472AC38(&qword_28096F250, &unk_28096F258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F248);
  }

  return result;
}

unint64_t sub_27490313C()
{
  result = qword_28096F260;
  if (!qword_28096F260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F1C8);
    sub_2749031F4(&qword_28096F268, &unk_28096F270, &unk_274A22A70, sub_2749032A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F260);
  }

  return result;
}

uint64_t sub_2749031F4(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_108(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    sub_27472AC38(&qword_28096C070, &qword_28096D900);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2749032A0()
{
  result = qword_28096F278;
  if (!qword_28096F278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F280);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F1C0);
    sub_2749FBAE4();
    sub_27472AC38(&qword_28096F288, &qword_28096F1C0);
    sub_27490398C(&qword_28096D440, 255, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_27472AC38(&qword_28096F250, &unk_28096F258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F278);
  }

  return result;
}

unint64_t sub_27490341C()
{
  result = qword_28096F290;
  if (!qword_28096F290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F1B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F1A8);
    sub_2749031F4(&qword_28096F240, &qword_28096F1A8, &unk_274A22990, sub_274902FC0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F290);
  }

  return result;
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for GalleryImportView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 8))
  {
  }

  v5 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v6 + 8))(v0 + v3 + v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2749036A0(void *a1)
{
  v1 = [a1 question];
  if (v1)
  {
    v2 = v1;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_274903714(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_274903754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2749037A8()
{
  result = qword_28096F2F0;
  if (!qword_28096F2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F2F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F160);
    sub_2749FB9A4();
    sub_27472AC38(&qword_28096F190, &qword_28096F160);
    sub_27490398C(&qword_28096CA60, 255, MEMORY[0x277CDE2A0]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F148);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F140);
    sub_274902B50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F2F0);
  }

  return result;
}

uint64_t sub_27490398C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2749039D4()
{
  result = qword_28096F308;
  if (!qword_28096F308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F310);
    sub_2749F9BD4();
    sub_27490398C(&qword_28096B3C8, 255, MEMORY[0x277D7BD30]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F308);
  }

  return result;
}

uint64_t sub_274903B04()
{
  OUTLINED_FUNCTION_30_10();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_42_8();
  v1();
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_35_11();
}

uint64_t sub_274903BAC()
{
  OUTLINED_FUNCTION_30_10();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_9_3();
  (*(v4 + 16))(v2, v1, v0);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_35_11();
}

uint64_t sub_274903C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2749FD6C4();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

uint64_t sub_274903CC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_2_0();
    v9 = v8 - v7;
    for (i = 0; a2 != i; ++i)
    {
      *(v9 + 8 * i) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  OUTLINED_FUNCTION_9_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  if (a2)
  {
    v15 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v16 = (TupleTypeMetadata + 32);
    v17 = a2;
    do
    {
      if (a2 == 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = *v16;
      }

      v20 = *v15++;
      v19 = v20;
      v21 = *v5++;
      (*(*(v19 - 8) + 16))(v14 + v18, v21);
      v16 += 4;
      --v17;
    }

    while (v17);
  }

  return sub_2749FC9E4();
}

id sub_274903E28()
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_96();
  v2 = sub_2749FCD64();

  v3 = [v0 initWithBundleIdentifier_];

  return v3;
}

uint64_t IconEditorViewModel.__allocating_init(editedObject:)(void *a1)
{
  v2 = swift_allocObject();
  IconEditorViewModel.init(editedObject:)(a1);
  return v2;
}

uint64_t WorkflowIcon.id.getter()
{
  if (*(v0 + 8))
  {
    return 0x6E6F6349707041;
  }

  else
  {
    return 0x6870796C47;
  }
}

void WFWorkflow.workflowIcon.getter(uint64_t a1@<X8>)
{
  sub_27490C938(v1, &selRef_associatedAppBundleIdentifier);
  v4 = v3;
  if (v3)
  {
    sub_27471CF08(0, &qword_28096BB10);
    OUTLINED_FUNCTION_32();
    v5 = sub_274903E28();
  }

  else
  {
    v6 = [v1 icon];
    v5 = [v6 icon];
  }

  *a1 = v5;
  *(a1 + 8) = v4 != 0;
}

uint64_t EditorIconPickerView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = sub_274908988();
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = sub_2749089D8();
  *(a2 + 48) = v6;
  *(a2 + 56) = sub_274908B04;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  OUTLINED_FUNCTION_21_17();
  v7 = *(type metadata accessor for EditorIconPickerView() + 52);
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  swift_storeEnumTagMultiPayload();

  result = sub_2749088AC();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 80) = sub_27490C880;
  *(a2 + 88) = a1;
  *(a2 + 96) = 0;
  return result;
}

uint64_t ColorIconPopoverView.init(viewModel:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADE0);
  OUTLINED_FUNCTION_34(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  v6 = type metadata accessor for ColorIconPopoverView();
  v7 = sub_2749F9D74();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  sub_274906BA8(v5);
  v8 = *(v6 + 40);
  *(a1 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  swift_storeEnumTagMultiPayload();
  result = sub_2749088AC();
  *a1 = result;
  a1[1] = v10;
  return result;
}

id WFWorkflow.setIconGlyph(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 icon];
  v5 = [v4 backgroundColorValue];

  v6 = objc_allocWithZone(MEMORY[0x277D7A1E0]);
  v7 = sub_27490C76C(v5, a1, 0, 0xF000000000000000);
  [v2 setIcon_];

  return [v2 save];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WFWorkflow.setAssociatedAppBundleIdentifier(to:)(Swift::String_optional to)
{
  if (to.value._object)
  {
    v2 = sub_2749FCD64();
  }

  else
  {
    v2 = 0;
  }

  [v1 setAssociatedAppBundleIdentifier_];

  [v1 save];
}

id WFWorkflow.setIconColor(to:)(void *a1)
{
  v2 = v1;
  v3 = [a1 RGBAValue];
  v4 = [v2 icon];
  v5 = [v4 glyphCharacter];

  v6 = objc_allocWithZone(MEMORY[0x277D7A1E0]);
  v7 = sub_27490C76C(v3, v5, 0, 0xF000000000000000);
  [v2 setIcon_];

  return [v2 save];
}

uint64_t WFWorkflow.editableName.getter()
{
  sub_2748BF950(v0);
  if (v1)
  {
    OUTLINED_FUNCTION_84();
  }

  else
  {
    v2 = [objc_opt_self() defaultName];
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_84();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t WorkflowIcon.hash(into:)()
{
  sub_2749FCE24();

  return sub_2749FD614();
}

uint64_t static WorkflowIcon.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_27471CF08(0, &qword_28159E390);
  v5 = v3;
  v6 = v2;
  v7 = sub_2749FD604();

  return v7 & 1;
}

uint64_t WorkflowIcon.hashValue.getter()
{
  sub_2749FDDF4();
  sub_2749FCE24();

  sub_2749FD614();
  return sub_2749FDE44();
}

uint64_t sub_274904638()
{
  sub_2749FDDF4();
  WorkflowIcon.hash(into:)();
  return sub_2749FDE44();
}

uint64_t sub_274904688@<X0>(uint64_t *a1@<X8>)
{
  result = WorkflowIcon.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id WFWorkflow.editableIconBackgroundColor.getter()
{
  v1 = [v0 icon];
  v2 = [v1 backgroundColor];

  return v2;
}

id WFWorkflow.editableIconGlyph.getter()
{
  v1 = [v0 icon];
  v2 = [v1 glyphCharacter];

  return v2;
}

id sub_274904768@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 record];
  *a2 = result;
  return result;
}

id WFWorkflow.collection.getter()
{
  v1 = [v0 reference];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_opt_self() defaultDatabase];
  v4 = [v3 folderForWorkflowReference_];

  return v4;
}

uint64_t WFWorkflow.nameIfNonDefaultOrEmpty.getter()
{
  v1 = sub_2748BF950(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = [objc_opt_self() defaultName];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  LOBYTE(v4) = sub_2749FCE84();

  if (v4)
  {

    return 0;
  }

  return v3;
}

id sub_274904904(void *a1)
{
  v1 = a1;
  WFWorkflow.appBundleIdentifier.getter();
  v3 = v2;

  if (v3)
  {
    v4 = sub_2749FCD64();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void WFWorkflow.setCollection(to:)(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [v2 reference];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() defaultDatabase];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
    OUTLINED_FUNCTION_23_2();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_274A11F70;
    *(v7 + 32) = v5;
    sub_27471CF08(0, &qword_28159E4A8);
    v8 = v5;
    v9 = sub_2749FCF74();

    v13[0] = 0;
    v10 = [v6 moveReferences:v9 toIndex:sub_2749F8E24() ofCollection:a1 error:v13];

    if (v10)
    {
      v11 = v13[0];
    }

    else
    {
      v12 = v13[0];
      sub_2749F8FE4();

      swift_willThrow();
    }
  }

  else
  {
    sub_27490C990();
    swift_allocError();
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WFWorkflow.rename(to:)(Swift::String to)
{
  v2 = v1;
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [v1 reference];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() defaultDatabase];
    OUTLINED_FUNCTION_43_0();
    v6 = sub_2749FCD64();
    v12[0] = 0;
    v7 = [v5 renameReference:v4 to:v6 error:v12];

    if (v7)
    {
      v8 = v12[0];

      v9 = OUTLINED_FUNCTION_43_0();
      sub_27490C9E4(v9, v10, v2);
      [v2 save];
    }

    else
    {
      v11 = v12[0];
      sub_2749F8FE4();

      swift_willThrow();
    }
  }

  else
  {
    sub_27490C990();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t WFWorkflow.availableIcons.getter()
{
  v1 = v0;
  sub_27490C938(v0, &selRef_appBundleIdentifier);
  if (v2)
  {
    OUTLINED_FUNCTION_84();
    sub_27471CF08(0, &qword_28096BB10);
    OUTLINED_FUNCTION_44();
    v3 = sub_274903E28();
    sub_274763D14();
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6 >= *(v4 + 24) >> 1)
    {
      sub_274763D14();
      v5 = v15;
    }

    *(v5 + 16) = v6 + 1;
    v7 = v5 + 16 * v6;
    *(v7 + 32) = v3;
    *(v7 + 40) = 1;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v8 = [v1 icon];
  v9 = [v8 icon];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274763D14();
    v5 = v13;
  }

  v10 = *(v5 + 16);
  if (v10 >= *(v5 + 24) >> 1)
  {
    sub_274763D14();
    v5 = v14;
  }

  *(v5 + 16) = v10 + 1;
  v11 = v5 + 16 * v10;
  *(v11 + 32) = v9;
  *(v11 + 40) = 0;
  return v5;
}

void WFWorkflow.setWorkflowIcon(to:)(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v1 = [*a1 bundleIdentifier];
    v2 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v4 = v3;

    v5.value._countAndFlagsBits = v2;
    v5.value._object = v4;
    WFWorkflow.setAssociatedAppBundleIdentifier(to:)(v5);
  }

  else
  {
    WFWorkflow.setAssociatedAppBundleIdentifier(to:)(0);
  }
}

uint64_t WFWorkflowCollection.editableName.getter()
{
  v1 = [v0 name];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return OUTLINED_FUNCTION_32();
}

uint64_t WFWorkflowCollection.nameIfNonDefaultOrEmpty.getter()
{
  v1 = [v0 name];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  v2 = [objc_opt_self() defaultName];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  OUTLINED_FUNCTION_42();
  LOBYTE(v2) = sub_2749FCE84();

  if ((v2 & 1) == 0)
  {
    v3 = [v0 name];
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_84();
  }

  return OUTLINED_FUNCTION_44();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WFWorkflowCollection.rename(to:)(Swift::String to)
{
  v2 = [objc_opt_self() defaultDatabase];
  [v1 glyphCharacter];
  OUTLINED_FUNCTION_42_8();
  v8 = sub_27490CA3C(v3, v4, v5, v6, v7, v2);

  v9 = 0;
  if (v8)
  {
  }

  else
  {
    v10 = v9;
    sub_2749F8FE4();

    swift_willThrow();
  }
}

void WFWorkflowCollection.setIconGlyph(to:)(unsigned __int16 a1)
{
  v2 = v1;
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() defaultDatabase];
  v5 = [v2 name];
  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;

  v12[0] = 0;
  v9 = sub_27490C8A0(v2, v6, v8, a1, v12, v4);

  v10 = v12[0];
  if (v9)
  {
  }

  else
  {
    v11 = v10;
    sub_2749F8FE4();

    swift_willThrow();
  }
}

void WFWorkflowCollection.workflowIcon.getter(uint64_t a1@<X8>)
{
  v3 = [v1 glyphCharacter];
  v4 = [objc_opt_self() clearBackground];
  v5 = [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph:v3 background:v4];

  *a1 = v5;
  *(a1 + 8) = 0;
}

uint64_t WFWorkflowCollection.availableIcons.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A78);
  OUTLINED_FUNCTION_49_0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_274A0EF10;
  WFWorkflowCollection.workflowIcon.getter(v0 + 32);
  return v0;
}

uint64_t IconEditorViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_2815A2A20;
  sub_2749F9164();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_274905604()
{
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_20_16();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_2749056B0()
{
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_20_16();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_27490579C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  sub_2749FD0A4();
  v10 = v7;

  v11 = sub_2749FD094();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = v2;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  sub_27479930C();
}

uint64_t sub_2749058B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  *(v6 + 48) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  *(v6 + 32) = *a4;
  sub_2749FD0A4();
  *(v6 + 40) = sub_2749FD094();
  v8 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_27490597C, v8, v7);
}

uint64_t sub_27490597C()
{
  v8 = v0;
  v1 = *(v0 + 32);

  sub_274905A70();
  v6 = v4;
  v7 = v5;
  (*(*(v1 + 88) + 144))(&v6, *(v1 + 80));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_274905A70()
{
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_20_16();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  sub_2749FA904();
}

void sub_274905B20()
{
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_20_16();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  sub_2749FA904();

  v0 = v1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2749FA914();
  sub_27490579C(&v1);
}

char *IconEditorViewModel.init(editedObject:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C210);
  v6 = sub_2749FD5E4();
  OUTLINED_FUNCTION_1_41();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_17();
  v97 = v7;
  sub_2749FA804();
  OUTLINED_FUNCTION_43();
  v92 = v9;
  v93 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14();
  v91 = v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F320);
  OUTLINED_FUNCTION_19_18();
  v85 = v12;
  v84 = sub_2749FD5E4();
  OUTLINED_FUNCTION_43();
  v83 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14();
  v82 = v15;
  sub_27471CF08(255, &qword_28159E520);
  OUTLINED_FUNCTION_19_18();
  v94 = v16;
  sub_2749FD5E4();
  OUTLINED_FUNCTION_43();
  v89 = v18;
  v90 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14();
  v88 = v20;
  v98 = v6;
  v96 = *(v6 - 8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14();
  v95 = v22;
  OUTLINED_FUNCTION_19_18();
  sub_2749FD5E4();
  OUTLINED_FUNCTION_43();
  v86 = v24;
  v87 = v23;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  v27 = &v82 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_43();
  v30 = v29;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  v33 = &v82 - v32;
  sub_2749F9154();
  v34 = qword_28159F5E8;
  v35 = *(v4 + 88);
  sub_274905584();
  (*(v30 + 32))(&v2[v34], v33, v28);
  if (sub_27472D918(MEMORY[0x277D84F90]))
  {
    sub_2747AF9E0(MEMORY[0x277D84F90], v36, v37, v38, v39, v40, v41, v42, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
  }

  else
  {
    v43 = MEMORY[0x277D84FA0];
  }

  *&v2[qword_28159F5E0] = v43;
  *(v2 + 2) = a1;
  v44 = v35[17];
  v45 = a1;
  *&v2[qword_2815A2A28] = v44(v5, v35);
  v46 = OUTLINED_FUNCTION_7_25();
  v47(v46);
  OUTLINED_FUNCTION_17_20();
  sub_2749055B4();
  swift_endAccess();
  v48 = OUTLINED_FUNCTION_7_25();
  v49(v48);
  v50 = v102;
  v51 = v103;
  OUTLINED_FUNCTION_17_20();
  v100 = v50;
  v101 = v51;
  sub_274905760();
  swift_endAccess();
  v52 = v35[5];
  v53 = OUTLINED_FUNCTION_7_25();
  if (v52(v53))
  {
    OUTLINED_FUNCTION_19_18();
    sub_2749FDEA4();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_46_7();
      OUTLINED_FUNCTION_86();
      swift_allocObject();
      OUTLINED_FUNCTION_25_12();
      OUTLINED_FUNCTION_23_2();
      v54 = swift_allocObject();
      v54[2] = v5;
      v54[3] = v35;
      v54[4] = v50;
      OUTLINED_FUNCTION_1_41();
      swift_getWitnessTable();
      v50 = v27;
      sub_2749FA974();
      OUTLINED_FUNCTION_96();

      v55 = OUTLINED_FUNCTION_42();
      v56(v55);
      OUTLINED_FUNCTION_17_20();
      sub_2749FA834();
      swift_endAccess();

      goto LABEL_12;
    }
  }

  v57 = OUTLINED_FUNCTION_7_25();
  if (v52(v57))
  {
    OUTLINED_FUNCTION_19_18();
    sub_2749FDEA4();
    if (swift_dynamicCastClass())
    {
      v58 = v95;
      OUTLINED_FUNCTION_46_7();
      OUTLINED_FUNCTION_86();
      swift_allocObject();
      OUTLINED_FUNCTION_25_12();
      OUTLINED_FUNCTION_23_2();
      v59 = swift_allocObject();
      v59[2] = v5;
      v59[3] = v35;
      v59[4] = v50;
      v60 = v98;
      v50 = v58;
      sub_2749FA974();
      OUTLINED_FUNCTION_96();

      (*(v96 + 8))(v58, v60);
      OUTLINED_FUNCTION_17_20();
      sub_2749FA834();
      swift_endAccess();
    }
  }

LABEL_12:
  v61 = v35[4];
  v62 = OUTLINED_FUNCTION_7_25();
  if (v61(v62))
  {
    OUTLINED_FUNCTION_19_18();
    sub_2749FDEA4();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_46_7();
      OUTLINED_FUNCTION_86();
      swift_allocObject();
      OUTLINED_FUNCTION_25_12();
      OUTLINED_FUNCTION_49_0();
      v63 = swift_allocObject();
      v63[2] = v5;
      v63[3] = v35;
      v63[4] = v50;
      v63[5] = v45;
      v64 = v45;
      OUTLINED_FUNCTION_1_41();
      swift_getWitnessTable();
      sub_2749FA974();
      OUTLINED_FUNCTION_96();

      v65 = OUTLINED_FUNCTION_53_6();
      v66(v65);
      OUTLINED_FUNCTION_17_20();
      sub_2749FA834();
      swift_endAccess();
LABEL_19:

      goto LABEL_20;
    }
  }

  v67 = OUTLINED_FUNCTION_7_25();
  if (!v61(v67))
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_19_18();
  sub_2749FDEA4();
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_46_7();
    OUTLINED_FUNCTION_86();
    swift_allocObject();
    OUTLINED_FUNCTION_25_12();
    OUTLINED_FUNCTION_49_0();
    v68 = swift_allocObject();
    v68[2] = v5;
    v68[3] = v35;
    v68[4] = v50;
    v68[5] = v45;
    v69 = v45;
    OUTLINED_FUNCTION_1_41();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_43_4();
    sub_2749FA974();

    v70 = OUTLINED_FUNCTION_53_6();
    v71(v70);
    OUTLINED_FUNCTION_17_20();
    sub_2749FA834();
    swift_endAccess();
    goto LABEL_19;
  }

LABEL_20:

LABEL_21:
  v72 = OUTLINED_FUNCTION_7_25();
  if (v73(v72))
  {
    OUTLINED_FUNCTION_19_18();
    sub_2749FDEA4();
    if (swift_dynamicCastClass())
    {
      v74 = v95;
      OUTLINED_FUNCTION_46_7();
      sub_2747B26B0();
      v75 = v91;
      sub_2749FA964();
      v76 = OUTLINED_FUNCTION_43_0();
      v77(v76);
      OUTLINED_FUNCTION_86();
      swift_allocObject();
      OUTLINED_FUNCTION_25_12();
      OUTLINED_FUNCTION_49_0();
      v78 = swift_allocObject();
      v78[2] = v5;
      v78[3] = v35;
      v78[4] = v74;
      v78[5] = v45;
      v79 = v45;
      v80 = v93;
      swift_getWitnessTable();
      OUTLINED_FUNCTION_43_4();
      sub_2749FA974();

      (*(v92 + 8))(v75, v80);
      OUTLINED_FUNCTION_17_20();
      sub_2749FA834();
      swift_endAccess();
    }

    else
    {
    }
  }

  else
  {
  }

  return v2;
}

uint64_t sub_274906688()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_21_17();
    type metadata accessor for IconEditorViewModel();
    OUTLINED_FUNCTION_0_34();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_107();
    sub_2749FA874();

    sub_2749FA894();
  }

  return result;
}

uint64_t sub_274906724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_21_17();
    type metadata accessor for IconEditorViewModel();
    OUTLINED_FUNCTION_0_34();
    swift_getWitnessTable();
    sub_2749FA874();

    sub_2749FA894();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(a5 + 128))(a4, a5);
    sub_2749056B0();
  }

  return result;
}

uint64_t sub_274906824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for IconEditorViewModel();
    swift_getWitnessTable();
    sub_2749FA874();

    sub_2749FA894();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(a5 + 128))(a4, a5);
    sub_2749056B0();
  }

  return result;
}

uint64_t IconEditorViewModel.deinit()
{
  v1 = qword_2815A2A20;
  sub_2749F9164();
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  v3 = qword_28159F5E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_1_2();
  (*(v4 + 8))(v0 + v3);

  v5 = qword_28159F5F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F328);
  OUTLINED_FUNCTION_1_2();
  (*(v6 + 8))(v0 + v5);
  v7 = qword_28159F5F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F330);
  OUTLINED_FUNCTION_1_2();
  (*(v8 + 8))(v0 + v7);
  return v0;
}

uint64_t IconEditorViewModel.__deallocating_deinit()
{
  IconEditorViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_274906ACC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for IconEditorViewModel();
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

WorkflowUI::ColorIconPopoverField_optional __swiftcall ColorIconPopoverField.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_274906B70@<X0>(uint64_t *a1@<X8>)
{
  result = ColorIconPopoverField.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274906BA8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADE0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  sub_27490E8D8(a1, &v5 - v3, &qword_28096ADE0);
  OUTLINED_FUNCTION_43_0();
  sub_2749FC5B4();
  return sub_2747359D0(a1, &qword_28096ADE0);
}

uint64_t sub_274906C60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADE0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_27490E8D8(a1, &v5 - v3, &qword_28096ADE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B858);
  sub_2749FC5D4();
  return sub_2747359D0(a1, &qword_28096ADE0);
}

uint64_t ColorIconPopoverView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B8B8);
  OUTLINED_FUNCTION_34(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = v33 - v8;
  v10 = OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_16();
  *v3 = sub_2749FB634();
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F340);
  sub_274907094(v2, *(a1 + 16), *(a1 + 24), v3 + *(v12 + 44));
  sub_274906D38();
  sub_2749F9D74();
  OUTLINED_FUNCTION_43_4();
  sub_27472AB6C(v13, v14);
  sub_27490E5C8(&qword_28096B7C8, MEMORY[0x277D7D2C8]);
  sub_2749FC254();
  sub_2747359D0(v9, &qword_28096B8B8);
  OUTLINED_FUNCTION_43_4();
  sub_2747359D0(v15, v16);
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F350) + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D900) + 28);
  v19 = *MEMORY[0x277CDF440];
  sub_2749FAAA4();
  OUTLINED_FUNCTION_9();
  (*(v20 + 104))(v17 + v18, v19);
  *v17 = swift_getKeyPath();
  sub_2749FC914();
  sub_2749FABB4();
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F358) + 36));
  v22 = v33[1];
  *v21 = v33[0];
  v21[1] = v22;
  v21[2] = v33[2];
  LOBYTE(v19) = sub_2749FBCC4();
  sub_2749FA9E4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F360);
  v32 = a2 + *(result + 36);
  *v32 = v19;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_274907094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v210 = a2;
  v207 = a4;
  v186 = type metadata accessor for GlyphPickerView(0);
  MEMORY[0x28223BE20](v186);
  v187 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F620);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v206 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v208 = &v181 - v10;
  v209 = a3;
  v11 = type metadata accessor for ColorIconPopoverView();
  v200 = *(v11 - 8);
  v203 = *(v200 + 64);
  MEMORY[0x28223BE20](v11);
  v199 = &v181 - v12;
  v188 = type metadata accessor for ColorPickerView(0);
  MEMORY[0x28223BE20](v188);
  v189 = (&v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F608);
  MEMORY[0x28223BE20](v14 - 8);
  v194 = &v181 - v15;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F628);
  v16 = MEMORY[0x28223BE20](v193);
  v197 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v191 = &v181 - v19;
  MEMORY[0x28223BE20](v18);
  v196 = &v181 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F630);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v205 = &v181 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v181 - v24;
  v26 = sub_2749FC744();
  v202 = *(v26 - 8);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v181 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF08);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v204 = &v181 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v181 - v35;
  v37 = a1;
  v38 = *(a1 + 8);

  v39 = sub_274905604();

  v40 = *(v39 + 16);
  v41 = v210;

  v212 = v25;
  v213 = v36;
  v211 = v37;
  v201 = v11;
  v195 = v26;
  v192 = v29;
  v190 = v31;
  if (v40 < 2)
  {
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF00);
    __swift_storeEnumTagSinglePayload(v36, 1, 1, v66);
    v62 = v36;
    v64 = v25;
    v63 = v209;
  }

  else
  {

    v198 = sub_274905604();

    v42 = sub_274908928();
    MEMORY[0x28223BE20](v42);
    v43 = v209;
    *(&v181 - 2) = v41;
    *(&v181 - 1) = v43;
    swift_getKeyPath();
    type metadata accessor for IconEditorViewModel();
    swift_getWitnessTable();
    sub_2749FADA4();

    v44 = v217;
    v184 = v217;
    v45 = *(&v218 + 1);
    v182 = v218;
    LODWORD(v43) = v219;
    v46 = sub_2749FBC84();
    v47 = v46;
    LODWORD(v185) = v46;
    sub_2749FA9E4();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    LOBYTE(v217) = v43;
    v183 = v43;
    LOBYTE(__src[0]) = 0;
    sub_2749FC734();
    v56 = v29;
    v57 = v202;
    v58 = *(v202 + 16);
    v58(v56, v31, v26);
    __src[0] = v198;
    __src[1] = v44;
    v59 = v182;
    __src[2] = v182;
    __src[3] = v45;
    LOBYTE(__src[4]) = v43;
    *(&__src[4] + 1) = *v215;
    HIDWORD(__src[4]) = *&v215[3];
    LOBYTE(__src[5]) = v47;
    *(&__src[5] + 1) = *v214;
    HIDWORD(__src[5]) = *&v214[3];
    __src[6] = v49;
    __src[7] = v51;
    __src[8] = v53;
    __src[9] = v55;
    LOBYTE(__src[10]) = 0;
    memcpy(v213, __src, 0x51uLL);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF28);
    v58(&v213[*(v60 + 48)], v56, v26);
    sub_27490E8D8(__src, &v217, &qword_28096BF30);
    v61 = *(v57 + 8);
    v61(v31, v26);
    v61(v56, v26);
    v217 = v198;
    *&v218 = v184;
    *(&v218 + 1) = v59;
    v219 = v45;
    v62 = v213;
    v220 = v183;
    v63 = v209;
    *v221 = *v215;
    *&v221[3] = *&v215[3];
    v222 = v185;
    *v223 = *v214;
    *&v223[3] = *&v214[3];
    v224 = v49;
    v225 = v51;
    v226 = v53;
    v227 = v55;
    v64 = v212;
    v228 = 0;
    sub_2747359D0(&v217, &qword_28096BF30);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF00);
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v65);
    v38 = *(v211 + 8);
  }

  v67 = &unk_2815A2000;
  v68 = *(v38 + qword_2815A2A28);

  v69 = 1;
  v70 = sub_2747B2784(1, v68);

  if (v70)
  {
    v71 = *(v63 + 16);
    v72 = *(v38 + 16);
    v73 = v210;
    v74 = v71(v210, v63);

    if (v74)
    {
      sub_2749FD0A4();
      v75 = v74;
      v76 = sub_2749FD094();
      v77 = swift_allocObject();
      v77[2] = v76;
      v78 = MEMORY[0x277D85700];
      v77[3] = MEMORY[0x277D85700];
      v77[4] = v75;
      v198 = v75;
      v79 = v200;
      v80 = v199;
      v81 = v201;
      (*(v200 + 16))(v199, v211, v201);
      v82 = sub_2749FD094();
      v83 = (*(v79 + 80) + 48) & ~*(v79 + 80);
      v84 = swift_allocObject();
      *(v84 + 2) = v82;
      *(v84 + 3) = v78;
      *(v84 + 4) = v73;
      *(v84 + 5) = v63;
      (*(v79 + 32))(&v84[v83], v80, v81);
      sub_27471CF08(0, &qword_280968670);
      sub_2749FC6F4();
      v85 = v217;
      v185 = v218;
      KeyPath = swift_getKeyPath();
      v87 = v189;
      *v189 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
      swift_storeEnumTagMultiPayload();
      v88 = v188;
      v89 = v87 + *(v188 + 20);
      *v89 = v85;
      *(v89 + 8) = v185;
      *(v87 + v88[6]) = MEMORY[0x277D84F90];
      *(v87 + v88[7]) = 0x4030000000000000;
      *(v87 + v88[8]) = 6;
      sub_2749FCE14();
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v90 = qword_28159E448;
      v91 = sub_2749FCD64();
      v92 = sub_2749FCD64();

      v93 = [v90 localizedStringForKey:v91 value:v92 table:0];

      v94 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v96 = v95;

      v217 = v94;
      *&v218 = v96;
      sub_27490E5C8(&qword_28096F610, type metadata accessor for ColorPickerView);
      sub_27475D0D0();
      v97 = v194;
      sub_2749FC0F4();

      sub_27490E610(v87, type metadata accessor for ColorPickerView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FDC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_274A0F620;
      v99 = sub_2749FBC94();
      *(inited + 32) = v99;
      v100 = sub_2749FBCB4();
      *(inited + 33) = v100;
      v101 = sub_2749FBCA4();
      sub_2749FBCA4();
      if (sub_2749FBCA4() != v99)
      {
        v101 = sub_2749FBCA4();
      }

      sub_2749FBCA4();
      v102 = sub_2749FBCA4();
      v103 = v195;
      v104 = v202;
      v105 = v190;
      if (v102 != v100)
      {
        v101 = sub_2749FBCA4();
      }

      v106 = v192;
      sub_2749FA9E4();
      v108 = v107;
      v110 = v109;
      v112 = v111;
      v114 = v113;
      v115 = v97;
      v116 = v191;
      sub_27490E880(v115, v191, &qword_28096F608);
      v117 = v116 + *(v193 + 36);
      *v117 = v101;
      *(v117 + 8) = v108;
      *(v117 + 16) = v110;
      *(v117 + 24) = v112;
      *(v117 + 32) = v114;
      *(v117 + 40) = 0;
      v118 = v196;
      sub_27490E880(v116, v196, &qword_28096F628);
      sub_2749FC734();
      v119 = v105;
      v120 = v197;
      sub_27490E8D8(v118, v197, &qword_28096F628);
      v121 = *(v104 + 16);
      v121(v106, v119, v103);
      v122 = v106;
      v123 = v212;
      sub_27490E8D8(v120, v212, &qword_28096F628);
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F658);
      v121((v123 + *(v124 + 48)), v122, v103);

      v125 = *(v104 + 8);
      v64 = v123;
      v125(v119, v103);
      sub_2747359D0(v118, &qword_28096F628);
      v125(v122, v103);
      sub_2747359D0(v120, &qword_28096F628);
      v69 = 0;
      v62 = v213;
      v67 = &unk_2815A2000;
    }

    else
    {
      v69 = 1;
      v67 = &unk_2815A2000;
      v62 = v213;
    }
  }

  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F638);
  v127 = 1;
  __swift_storeEnumTagSinglePayload(v64, v69, 1, v126);
  v128 = v211;
  v129 = *(*(v211 + 8) + v67[325]);

  v130 = sub_2747B2784(0, v129);

  v131 = v208;
  if (v130)
  {

    sub_274905A70();

    v132 = v218;

    if (v132)
    {
      v127 = 1;
    }

    else
    {
      v133 = v200;
      v202 = *(v200 + 16);
      v134 = v199;
      v135 = v201;
      (v202)(v199, v128, v201);
      v198 = sub_2749FD0A4();
      v136 = sub_2749FD094();
      v137 = (*(v133 + 80) + 48) & ~*(v133 + 80);
      v138 = swift_allocObject();
      v138[2] = v136;
      v139 = v128;
      v140 = v210;
      v138[3] = MEMORY[0x277D85700];
      v138[4] = v140;
      v141 = v209;
      v138[5] = v209;
      v200 = *(v133 + 32);
      (v200)(v138 + v137, v134, v135);
      (v202)(v134, v139, v135);
      v142 = sub_2749FD094();
      v143 = swift_allocObject();
      v143[2] = v142;
      v144 = v210;
      v143[3] = MEMORY[0x277D85700];
      v143[4] = v144;
      v145 = v141;
      v143[5] = v141;
      (v200)(v143 + v137, v134, v135);
      type metadata accessor for WFGlyphCharacter(0);
      sub_2749FC6F4();
      v146 = v217;
      v147 = v218;
      v148 = WORD4(v218);
      v149 = v211;
      v150 = v145;
      v151 = *(v145 + 152);
      v152 = *(*(v211 + 8) + 16);
      v153 = v151(v144, v150);

      v154 = *(*(v149 + 8) + 16);
      v155 = v150;
      v156 = *(v150 + 160);
      v157 = v154;
      LOBYTE(v151) = v156(v144, v155);

      v158 = v186;
      v159 = *(v186 + 20);
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF10);
      v161 = v187;
      __swift_storeEnumTagSinglePayload(&v187[v159], 1, 1, v160);
      *v161 = v146;
      *(v161 + 8) = v147;
      *(v161 + 16) = v148;
      v162 = swift_allocObject();
      *(v162 + 16) = v151 & 1;
      v163 = v161 + *(v158 + 24);
      *v163 = sub_27487463C;
      *(v163 + 8) = v162;
      *(v163 + 16) = 0;
      v164 = swift_allocObject();
      *(v164 + 16) = v153 & 1;
      *(v164 + 17) = v151 & 1;
      v165 = v161 + *(v158 + 28);
      *v165 = sub_274874644;
      *(v165 + 8) = v164;
      *(v165 + 16) = 0;
      sub_2749FCE14();
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v166 = qword_28159E448;
      v167 = sub_2749FCD64();
      v168 = sub_2749FCD64();

      v169 = [v166 localizedStringForKey:v167 value:v168 table:0];

      v170 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v172 = v171;

      v217 = v170;
      *&v218 = v172;
      sub_27490E5C8(&qword_28096F650, type metadata accessor for GlyphPickerView);
      sub_27475D0D0();
      v131 = v208;
      sub_2749FC0F4();

      sub_27490E610(v161, type metadata accessor for GlyphPickerView);
      v127 = 0;
      v64 = v212;
      v62 = v213;
    }
  }

  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F640);
  __swift_storeEnumTagSinglePayload(v131, v127, 1, v173);
  v174 = v204;
  sub_27490E8D8(v62, v204, &qword_28096BF08);
  v175 = v62;
  v176 = v205;
  sub_27490E8D8(v64, v205, &qword_28096F630);
  v177 = v206;
  sub_27490E8D8(v131, v206, &qword_28096F620);
  v178 = v207;
  sub_27490E8D8(v174, v207, &qword_28096BF08);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F648);
  sub_27490E8D8(v176, v178 + *(v179 + 48), &qword_28096F630);
  sub_27490E8D8(v177, v178 + *(v179 + 64), &qword_28096F620);
  sub_2747359D0(v131, &qword_28096F620);
  sub_2747359D0(v212, &qword_28096F630);
  sub_2747359D0(v175, &qword_28096BF08);
  sub_2747359D0(v177, &qword_28096F620);
  sub_2747359D0(v176, &qword_28096F630);
  return sub_2747359D0(v174, &qword_28096BF08);
}

uint64_t sub_2749085EC@<X0>(uint64_t a1@<X8>)
{
  result = sub_274905A70();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void sub_274908674(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADE0);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = *(a6 + 88);
  v12 = *a1;
  v13 = *(*(a4 + 8) + 16);
  v11(v12, a5, a6);
}

uint64_t sub_2749087E0(uint64_t a1)
{
  v2 = sub_2749F9D74();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2749FC364();
}

uint64_t sub_2749088AC()
{
  type metadata accessor for IconEditorViewModel();
  OUTLINED_FUNCTION_0_34();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_44();

  return sub_2749FAD84();
}

uint64_t sub_274908928()
{
  type metadata accessor for IconEditorViewModel();
  OUTLINED_FUNCTION_0_34();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_44();

  return sub_2749FAD94();
}

uint64_t sub_274908988()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C210);
  sub_2749FC5B4();
  return v1;
}

uint64_t sub_2749089D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A998);
  sub_2749FC5B4();
  return v1;
}

uint64_t sub_274908A74()
{
  sub_2749F9DB4();
  sub_27490E5C8(&qword_28096C598, MEMORY[0x277D7D2E0]);

  return sub_2749FAB04();
}

uint64_t sub_274908B04()
{
  sub_2749F9DB4();
  swift_allocObject();
  return sub_2749F9DA4();
}

uint64_t sub_274908B4C()
{
  type metadata accessor for GlyphRegistry();
  sub_27490E5C8(&qword_28096C5A8, type metadata accessor for GlyphRegistry);

  return sub_2749FAB04();
}

uint64_t sub_274908BDC(uint64_t a1)
{
  v1 = *(*a1 + 88);
  v2 = *(*a1 + 80);
  v3 = (*(v1 + 152))(v2, v1);
  LOBYTE(v1) = (*(v1 + 160))(v2, v1);
  type metadata accessor for GlyphRegistry();
  swift_allocObject();
  return GlyphRegistry.init(useSystemGlyphsOnly:useOutlineGlyphsOnly:hiddenCategories:)(v3 & 1, v1 & 1, &unk_28838F7F8);
}

uint64_t EditorIconPickerView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v44 = sub_2749FBAC4();
  OUTLINED_FUNCTION_43();
  v43 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v42 = v6 - v5;
  v39 = *(a1 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F368);
  v10 = *(a1 + 24);
  v38 = *(a1 + 16);
  v37 = v10;
  type metadata accessor for EditorIconPickerView.GroupBackground();
  OUTLINED_FUNCTION_1();
  sub_2749FAEA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F370);
  OUTLINED_FUNCTION_18_20();
  sub_2749FAEA4();
  OUTLINED_FUNCTION_5_35();
  sub_2749FB7C4();
  OUTLINED_FUNCTION_18_20();
  sub_2749FD6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F378);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F380);
  OUTLINED_FUNCTION_18_20();
  sub_2749FAEA4();
  sub_2749FAEA4();
  sub_2749FAEA4();
  OUTLINED_FUNCTION_18_20();
  sub_2749FD6C4();
  OUTLINED_FUNCTION_1();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_18_20();
  sub_2749FC9D4();
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_5_35();
  sub_2749FC694();
  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_5_35();
  sub_2749FAA44();
  OUTLINED_FUNCTION_14_17();
  v33[1] = swift_getWitnessTable();
  v33[0] = sub_2749FAFE4();
  v11 = sub_2749FAEA4();
  v35 = v11;
  OUTLINED_FUNCTION_13_21();
  WitnessTable = swift_getWitnessTable();
  v52 = WitnessTable;
  v53 = MEMORY[0x277CDF918];
  OUTLINED_FUNCTION_0_8();
  v36 = swift_getWitnessTable();
  *&v54[0] = v11;
  *(&v54[0] + 1) = v36;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_43();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v33 - v19;
  v21 = v39;
  v22 = v9;
  (*(v39 + 16))(v9, v41, a1);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  v25 = v37;
  *(v24 + 16) = v38;
  *(v24 + 24) = v25;
  (*(v21 + 32))(v24 + v23, v22, a1);
  swift_checkMetadataState();
  *&v54[0] = sub_2749FAFD4();
  *(&v54[0] + 1) = v26;
  sub_2749FBC54();
  swift_checkMetadataState();
  sub_2749FC2B4();

  v54[0] = v49;
  v54[1] = v50;
  *v55 = v51[0];
  *&v55[9] = *(v51 + 9);
  v46 = v49;
  v47 = v50;
  v48[0] = v51[0];
  *(v48 + 9) = *(v51 + 9);
  v27 = v42;
  sub_2749FBAB4();
  v28 = swift_checkMetadataState();
  sub_2749FC204();
  (*(v43 + 8))(v27, v44);
  OUTLINED_FUNCTION_9_3();
  (*(v29 + 8))(v54, v28);
  v30 = *(v14 + 16);
  v30(v20, v18, OpaqueTypeMetadata2);
  v31 = *(v14 + 8);
  v31(v18, OpaqueTypeMetadata2);
  v30(v45, v20, OpaqueTypeMetadata2);
  return (v31)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_274909274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v20 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F368);
  type metadata accessor for EditorIconPickerView.GroupBackground();
  sub_2749FAEA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F370);
  sub_2749FAEA4();
  sub_2749FB7C4();
  sub_2749FD6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F378);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F380);
  sub_2749FAEA4();
  sub_2749FAEA4();
  sub_2749FAEA4();
  sub_2749FD6C4();
  swift_getTupleTypeMetadata3();
  sub_2749FC9D4();
  swift_getWitnessTable();
  sub_2749FC694();
  swift_getWitnessTable();
  v9 = sub_2749FAA44();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  sub_2749FBC44();
  v21 = a3;
  v22 = a4;
  v23 = a2;
  v24 = a1;
  sub_2749FAA54();
  swift_getWitnessTable();
  v16 = *(v10 + 16);
  v16(v15, v13, v9);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v16(v20, v15, v9);
  return (v17)(v15, v9);
}

uint64_t sub_274909594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v20 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F368);
  type metadata accessor for EditorIconPickerView.GroupBackground();
  sub_2749FAEA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F370);
  sub_2749FAEA4();
  sub_2749FB7C4();
  sub_2749FD6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F378);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F380);
  sub_2749FAEA4();
  sub_2749FAEA4();
  sub_2749FAEA4();
  sub_2749FD6C4();
  swift_getTupleTypeMetadata3();
  sub_2749FC9D4();
  swift_getWitnessTable();
  v9 = sub_2749FC694();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v21 = a3;
  v22 = a4;
  v23 = a1;
  v24 = a2;
  sub_2749FB634();
  sub_2749FC684();
  swift_getWitnessTable();
  v16 = *(v10 + 16);
  v16(v15, v13, v9);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v16(v20, v15, v9);
  return (v17)(v15, v9);
}

uint64_t sub_274909888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v286 = a2;
  v312 = a5;
  v287 = type metadata accessor for GlyphPickerCachedView(0);
  MEMORY[0x28223BE20](v287);
  v290 = &v267 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F380);
  MEMORY[0x28223BE20](v9);
  v288 = &v267 - v10;
  v11 = type metadata accessor for EditorIconPickerView.GroupBackground();
  v289 = v9;
  v12 = sub_2749FAEA4();
  v292 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v291 = &v267 - v13;
  v324 = v14;
  v15 = sub_2749FAEA4();
  v295 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v293 = &v267 - v16;
  v323 = v17;
  v18 = sub_2749FAEA4();
  v297 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v296 = &v267 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v294 = &v267 - v21;
  v325 = v22;
  v311 = sub_2749FD6C4();
  v308 = *(v311 - 8);
  v23 = MEMORY[0x28223BE20](v311);
  v322 = &v267 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v310 = &v267 - v25;
  v298 = type metadata accessor for ColorPickerView(0);
  MEMORY[0x28223BE20](v298);
  v299 = (&v267 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F578);
  MEMORY[0x28223BE20](v314);
  v300 = &v267 - v27;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F378);
  v28 = MEMORY[0x28223BE20](v307);
  v309 = &v267 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v328 = &v267 - v30;
  v313 = type metadata accessor for EditorIconPickerView();
  v301 = *(v313 - 8);
  v302 = *(v301 + 64);
  MEMORY[0x28223BE20](v313);
  v303 = &v267 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F580);
  MEMORY[0x28223BE20](v32 - 8);
  v279 = &v267 - v33;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F588);
  MEMORY[0x28223BE20](v278);
  v280 = &v267 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F370);
  MEMORY[0x28223BE20](v35);
  v281 = &v267 - v36;
  v37 = sub_2749FAEA4();
  v284 = *(v37 - 8);
  v38 = MEMORY[0x28223BE20](v37);
  *&v283 = &v267 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v267 - v41;
  MEMORY[0x28223BE20](v40);
  v282 = &v267 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F368);
  v317 = v11;
  v45 = sub_2749FAEA4();
  v320 = v37;
  v46 = sub_2749FB7C4();
  v306 = *(v46 - 8);
  v47 = MEMORY[0x28223BE20](v46);
  v305 = &v267 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v285 = &v267 - v49;
  v319 = v50;
  v321 = sub_2749FD6C4();
  v318 = *(v321 - 8);
  v51 = MEMORY[0x28223BE20](v321);
  v327 = &v267 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v326 = &v267 - v53;
  v315 = a1;
  v54 = *(a1 + 8);
  v55 = *(v54 + qword_2815A2A28);

  LOBYTE(a1) = sub_2747B2784(1, v55);

  v316 = v45;
  *&v304 = a4;
  if ((a1 & 1) == 0)
  {
    goto LABEL_7;
  }

  v56 = *(a4 + 16);
  v57 = *(v54 + 16);
  v58 = v56(a3, a4);

  if (!v58)
  {
    goto LABEL_7;
  }

  v59 = v315;
  v60 = *(*(v315 + 8) + qword_2815A2A28);

  v61 = sub_2747B2784(0, v60);

  if ((v61 & 1) == 0)
  {

LABEL_7:
    v86 = v327;
    __swift_storeEnumTagSinglePayload(v327, 1, 1, v319);
    v87 = sub_27490DAD8();
    WitnessTable = swift_getWitnessTable();
    v386 = v87;
    v387 = WitnessTable;
    v89 = swift_getWitnessTable();
    v384 = sub_27490DC44();
    v385 = WitnessTable;
    v90 = swift_getWitnessTable();
    v382 = v89;
    v383 = v90;
    swift_getWitnessTable();
    v91 = v325;
    goto LABEL_8;
  }

  v62 = sub_274905604();

  v63 = *(v62 + 16);

  v277 = a3;
  if (v63 < 2)
  {
    v271 = v42;
    sub_2749FD0A4();
    v209 = v58;
    v210 = sub_2749FD094();
    v211 = swift_allocObject();
    v211[2] = v210;
    v211[3] = MEMORY[0x277D85700];
    v211[4] = v209;
    v270 = v209;
    v212 = v301;
    v213 = *(v301 + 16);
    v269 = v301 + 16;
    v272 = v213;
    v213(v303, v59, v313);
    v214 = sub_2749FD094();
    v268 = *(v212 + 80);
    v215 = (v268 + 48) & ~v268;
    v216 = swift_allocObject();
    *(v216 + 2) = v214;
    *(v216 + 3) = MEMORY[0x277D85700];
    *(v216 + 4) = a3;
    v217 = a3;
    *(v216 + 5) = v304;
    v273 = *(v212 + 32);
    v274 = v212 + 32;
    v218 = v215;
    v219 = v303;
    v273(&v216[v215], v303, v313);
    sub_27471CF08(0, &qword_280968670);
    sub_2749FC6F4();
    v275 = *&v345[8];
    v276 = *v345;
    v267 = *&v345[16];
    v272(v219, v59, v313);
    v220 = sub_2749FD094();
    v221 = swift_allocObject();
    *(v221 + 2) = v220;
    *(v221 + 3) = MEMORY[0x277D85700];
    *(v221 + 4) = v217;
    v222 = v303;
    v223 = v304;
    *(v221 + 5) = v304;
    v273(&v221[v215], v222, v313);
    v272(v222, v59, v313);
    v224 = sub_2749FD094();
    v225 = swift_allocObject();
    *(v225 + 2) = v224;
    v226 = v277;
    *(v225 + 3) = MEMORY[0x277D85700];
    *(v225 + 4) = v226;
    *(v225 + 5) = v223;
    v227 = v267;
    v273(&v225[v218], v303, v313);
    type metadata accessor for WFGlyphCharacter(0);
    sub_2749FC6F4();
    *v345 = v276;
    *&v345[8] = v275;
    *&v345[16] = v227;
    *&v345[24] = v344[0];
    *&v345[32] = v344[1];
    *&v345[40] = v344[2];
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v228 = qword_28159E448;
    v229 = sub_2749FCD64();
    v230 = sub_2749FCD64();

    v231 = [v228 localizedStringForKey:v229 value:v230 table:0];

    v232 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v234 = v233;

    v344[0] = v232;
    v344[1] = v234;
    sub_27490DE18();
    sub_27475D0D0();
    v235 = v279;
    sub_2749FC0F4();

    sub_2749FC914();
    sub_2749FB004();
    v236 = v235;
    v237 = v280;
    sub_27490E880(v236, v280, &qword_28096F580);
    memcpy((v237 + *(v278 + 36)), v345, 0x70uLL);
    LOBYTE(v231) = sub_2749FBCC4();
    sub_2749FA9E4();
    v239 = v238;
    v241 = v240;
    v243 = v242;
    v245 = v244;
    v246 = v281;
    sub_27490E880(v237, v281, &qword_28096F588);
    v247 = v246 + *(v35 + 36);
    *v247 = v231;
    *(v247 + 8) = v239;
    *(v247 + 16) = v241;
    *(v247 + 24) = v243;
    *(v247 + 32) = v245;
    *(v247 + 40) = 0;
    v248 = sub_27490DC44();
    v249 = v271;
    MEMORY[0x277C5E040](v248, v35, v317, v248);
    sub_2747359D0(v246, &qword_28096F370);
    v250 = swift_getWitnessTable();
    v354 = v248;
    v355 = v250;
    v251 = v320;
    v281 = swift_getWitnessTable();
    v252 = v284;
    v253 = v284[2];
    v254 = v282;
    v253(v282, v249, v251);
    v255 = v252[1];
    v255(v249, v251);
    v256 = v283;
    v253(v283, v254, v251);
    v352 = sub_27490DAD8();
    v353 = v250;
    swift_getWitnessTable();
    v257 = v285;
    sub_274903BAC();

    v255(v256, v251);
    v255(v254, v251);
    v85 = v257;
  }

  else
  {

    v64 = sub_274905604();
    v284 = v58;
    v65 = v64;

    v66 = sub_274908928();
    MEMORY[0x28223BE20](v66);
    swift_getKeyPath();
    type metadata accessor for IconEditorViewModel();
    swift_getWitnessTable();
    sub_2749FADA4();

    v283 = *v345;
    v67 = *&v345[16];
    v68 = v345[24];
    sub_2749FC914();
    sub_2749FB004();
    v343[120] = v68;
    memcpy(&v343[7], __src, 0x70uLL);
    v69 = v68;
    v70 = sub_2749FBC64();
    sub_2749FA9E4();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v343[128] = 0;
    *&v345[8] = v283;
    *v345 = v65;
    *&v345[24] = v67;
    v345[32] = v69;
    memcpy(&v345[33], v343, 0x77uLL);
    v345[152] = v70;
    *&v345[160] = v72;
    *&v345[168] = v74;
    *&v345[176] = v76;
    *&v345[184] = v78;
    v345[192] = 0;
    v79 = sub_27490DAD8();
    MEMORY[0x277C5E040](v344, v79, v44, v317, v79);
    memcpy(v335, v345, 0xC1uLL);
    sub_2747359D0(v335, &qword_28096F368);
    memcpy(v342, v344, 0xC1uLL);
    v80 = swift_getWitnessTable();
    v333 = v79;
    v334 = v80;
    v81 = v316;
    swift_getWitnessTable();
    v82 = *(v81 - 8);
    v83 = *(v82 + 16);
    v83(v345, v342, v81);
    memcpy(v336, v342, 0xC1uLL);
    v84 = *(v82 + 8);
    v84(v336, v81);
    memcpy(v337, v345, 0xC1uLL);
    memcpy(v342, v345, 0xC1uLL);
    v83(v332, v342, v81);
    memcpy(v338, v342, 0xC1uLL);
    v83(v341, v337, v81);
    v84(v338, v81);
    memcpy(v339, v332, 0xC1uLL);
    memcpy(v331, v332, sizeof(v331));
    v83(v342, v339, v81);
    v329 = sub_27490DC44();
    v330 = v80;
    swift_getWitnessTable();
    v85 = v285;
    sub_274903B04();

    memcpy(v340, v331, 0xC1uLL);
    v84(v340, v81);
    memcpy(v341, v332, 0xC1uLL);
    v84(v341, v81);
    memcpy(v342, v345, 0xC1uLL);
    v84(v342, v81);
  }

  v258 = sub_27490DAD8();
  v259 = swift_getWitnessTable();
  v350 = v258;
  v351 = v259;
  v260 = swift_getWitnessTable();
  v348 = sub_27490DC44();
  v349 = v259;
  v261 = swift_getWitnessTable();
  v346 = v260;
  v347 = v261;
  v262 = v319;
  swift_getWitnessTable();
  v264 = v305;
  v263 = v306;
  (*(v306 + 16))(v305, v85, v262);
  (*(v263 + 8))(v85, v262);
  v86 = v327;
  (*(v263 + 32))(v327, v264, v262);
  __swift_storeEnumTagSinglePayload(v86, 0, 1, v262);
  v91 = v325;
  a3 = v277;
LABEL_8:
  sub_274903C58(v86, v326);
  v305 = *(v318 + 8);
  v306 = v318 + 8;
  (v305)(v86, v321);
  v92 = v315;
  v93 = *(*(v315 + 8) + qword_2815A2A28);

  v94 = 1;
  v95 = sub_2747B2784(1, v93);

  if (v95)
  {
    v96 = *(*(v92 + 8) + 16);
    v97 = a3;
    v98 = v304;
    v99 = v92;
    v100 = *(v304 + 16);
    v101 = v96;
    v102 = v100(v97, v98);

    if (v102)
    {
      sub_2749FD0A4();
      v103 = v102;
      v104 = sub_2749FD094();
      v105 = swift_allocObject();
      v105[2] = v104;
      v105[3] = MEMORY[0x277D85700];
      v105[4] = v103;
      v285 = v103;
      v106 = v301;
      v107 = v303;
      v108 = v99;
      v109 = v313;
      (*(v301 + 16))(v303, v108, v313);
      v110 = sub_2749FD094();
      v111 = (*(v106 + 80) + 48) & ~*(v106 + 80);
      v112 = swift_allocObject();
      *(v112 + 2) = v110;
      *(v112 + 3) = MEMORY[0x277D85700];
      *(v112 + 4) = v97;
      *(v112 + 5) = v98;
      (*(v106 + 32))(&v112[v111], v107, v109);
      sub_27471CF08(0, &qword_280968670);
      sub_2749FC6F4();
      v113 = v344[0];
      v304 = *&v344[1];
      KeyPath = swift_getKeyPath();
      v115 = v299;
      *v299 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
      swift_storeEnumTagMultiPayload();
      v116 = v298;
      v117 = v115 + *(v298 + 20);
      *v117 = v113;
      *(v117 + 8) = v304;
      *(v115 + v116[6]) = MEMORY[0x277D84F90];
      *(v115 + v116[7]) = 0x4030000000000000;
      *(v115 + v116[8]) = 6;
      sub_2749FCE14();
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v118 = qword_28159E448;
      v119 = sub_2749FCD64();
      v120 = sub_2749FCD64();

      v121 = [v118 localizedStringForKey:v119 value:v120 table:0];

      v122 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v124 = v123;

      v344[0] = v122;
      v344[1] = v124;
      sub_27490E5C8(&qword_28096F610, type metadata accessor for ColorPickerView);
      sub_27475D0D0();
      v125 = v300;
      sub_2749FC0F4();

      sub_27490E610(v115, type metadata accessor for ColorPickerView);
      v126 = [objc_opt_self() systemBackgroundColor];
      v127 = sub_2749FC3E4();
      LOBYTE(v122) = sub_2749FBC64();

      v128 = v125 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F5F8) + 36);
      *v128 = v127;
      *(v128 + 8) = v122;
      v129 = (v125 + *(v314 + 36));
      v130 = *(sub_2749FAFC4() + 20);
      v131 = *MEMORY[0x277CE0118];
      v132 = sub_2749FB584();
      (*(*(v132 - 8) + 104))(&v129[v130], v131, v132);
      __asm { FMOV            V0.2D, #10.0 }

      *v129 = _Q0;
      *&v129[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969C20) + 36)] = 256;
      sub_27490E880(v125, v328, &qword_28096F578);
      v94 = 0;
      v92 = v315;
      v91 = v325;
    }

    else
    {
      v94 = 1;
      v92 = v99;
    }
  }

  __swift_storeEnumTagSinglePayload(v328, v94, 1, v314);
  v138 = *(*(v92 + 8) + qword_2815A2A28);

  v139 = sub_2747B2784(0, v138);

  v140 = MEMORY[0x277CDFC60];
  if ((v139 & 1) != 0 && (, sub_274905A70(), , v141 = v344[1], v344[0], (v141 & 1) == 0))
  {
    v147 = sub_27490BD84(v313);
    v149 = v148;
    v151 = v150;
    v152 = v287;
    v153 = *(v287 + 20);
    v154 = sub_2749FAF04();
    v155 = v290;
    (*(*(v154 - 8) + 16))(&v290[v153], v286, v154);
    __swift_storeEnumTagSinglePayload(v155 + v153, 0, 1, v154);
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF10);
    __swift_storeEnumTagSinglePayload(v155 + v153, 0, 1, v156);
    sub_274908A74();
    sub_274908B4C();
    *v155 = v147;
    *(v155 + 8) = v149;
    *(v155 + 16) = v151;
    v157 = (v155 + v152[6]);
    sub_2749F9DB4();
    sub_27490E5C8(&qword_28096C598, MEMORY[0x277D7D2E0]);
    *v157 = sub_2749FAD84();
    v157[1] = v158;
    v159 = (v155 + v152[7]);
    type metadata accessor for GlyphRegistry();
    sub_27490E5C8(&qword_28096C5A8, type metadata accessor for GlyphRegistry);
    *v159 = sub_2749FAD84();
    v159[1] = v160;
    v161 = (v155 + v152[8]);
    *v161 = 0;
    v161[1] = 0;
    v162 = v155 + v152[9];
    v342[0] = 0;
    v342[1] = 0xE000000000000000;
    sub_2749FC5B4();
    v163 = v344[2];
    *v162 = *v344;
    *(v162 + 16) = v163;
    v164 = v155 + v152[10];
    LOBYTE(v342[0]) = 0;
    sub_2749FC5B4();
    v165 = v344[1];
    *v164 = v344[0];
    *(v164 + 8) = v165;
    v166 = v155 + v152[11];
    v342[0] = 0;
    v342[1] = 0xE000000000000000;
    sub_2749FC5B4();
    v167 = v344[2];
    *v166 = *v344;
    *(v166 + 16) = v167;
    v168 = (v155 + v152[12]);
    v344[0] = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C760);
    v344[0] = sub_2749FCDC4();
    v344[1] = v169;

    MEMORY[0x277C5EBC0](0xD000000000000010, 0x8000000274A30D80);

    v170 = v344[1];
    *v168 = v344[0];
    v168[1] = v170;
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v171 = qword_28159E448;
    v172 = sub_2749FCD64();
    v173 = sub_2749FCD64();

    v174 = [v171 localizedStringForKey:v172 value:v173 table:0];

    v175 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v177 = v176;

    v344[0] = v175;
    v344[1] = v177;
    sub_27490E5C8(&qword_28096C7B0, type metadata accessor for GlyphPickerCachedView);
    sub_27475D0D0();
    v178 = v288;
    sub_2749FC0F4();

    sub_27490E610(v155, type metadata accessor for GlyphPickerCachedView);
    v179 = sub_27490DE6C();
    v180 = v291;
    MEMORY[0x277C5E040](v179, v289, v317, v179);
    sub_2747359D0(v178, &qword_28096F380);
    sub_2749FC8E4();
    v181 = swift_getWitnessTable();
    v360 = v179;
    v361 = v181;
    v265 = v324;
    v266 = swift_getWitnessTable();
    v182 = v293;
    sub_2749FC264();
    (*(v292 + 8))(v180, v265);
    LOBYTE(v174) = sub_2749FBC44();
    v183 = sub_2749FC8F4();
    LOBYTE(v344[0]) = v174;
    v344[1] = v183;
    v344[2] = v184;
    v358 = v266;
    v359 = MEMORY[0x277CDFC60];
    v185 = v323;
    v186 = swift_getWitnessTable();
    v187 = v296;
    MEMORY[0x277C5E040](v344, v185, &type metadata for ContainerMinimumDimensionModifier, v186);
    (*(v295 + 8))(v182, v185);
    v188 = sub_27490DF58();
    v356 = v186;
    v357 = v188;
    v189 = v325;
    swift_getWitnessTable();
    v190 = v297;
    v191 = *(v297 + 16);
    v192 = v294;
    v191(v294, v187, v189);
    v193 = *(v190 + 8);
    v193(v187, v189);
    v191(v187, v192, v189);
    v193(v192, v189);
    v142 = v322;
    (*(v190 + 32))(v322, v187, v189);
    __swift_storeEnumTagSinglePayload(v142, 0, 1, v189);
  }

  else
  {
    v142 = v322;
    __swift_storeEnumTagSinglePayload(v322, 1, 1, v91);
    v143 = sub_27490DE6C();
    v144 = swift_getWitnessTable();
    v380 = v143;
    v381 = v144;
    v378 = swift_getWitnessTable();
    v379 = v140;
    v145 = swift_getWitnessTable();
    v146 = sub_27490DF58();
    v376 = v145;
    v377 = v146;
    swift_getWitnessTable();
  }

  v194 = v327;
  v195 = v310;
  sub_274903C58(v142, v310);
  v196 = v308;
  v315 = *(v308 + 8);
  v197 = v311;
  (v315)(v142, v311);
  v198 = v321;
  (*(v318 + 16))(v194, v326, v321);
  v344[0] = v194;
  v199 = v309;
  sub_27490E8D8(v328, v309, &qword_28096F378);
  v344[1] = v199;
  (*(v196 + 16))(v142, v195, v197);
  v344[2] = v142;
  v342[0] = v198;
  v342[1] = v307;
  v342[2] = v197;
  v200 = sub_27490DAD8();
  v201 = swift_getWitnessTable();
  v374 = v200;
  v375 = v201;
  v202 = swift_getWitnessTable();
  v372 = sub_27490DC44();
  v373 = v201;
  v203 = swift_getWitnessTable();
  v370 = v202;
  v371 = v203;
  v369 = swift_getWitnessTable();
  v341[0] = swift_getWitnessTable();
  v341[1] = sub_27490DFAC();
  v367 = sub_27490DE6C();
  v368 = v201;
  v365 = swift_getWitnessTable();
  v366 = MEMORY[0x277CDFC60];
  v204 = swift_getWitnessTable();
  v205 = sub_27490DF58();
  v363 = v204;
  v364 = v205;
  v362 = swift_getWitnessTable();
  v341[2] = swift_getWitnessTable();
  sub_274903CC0(v344, 3, v342);
  v206 = v315;
  (v315)(v195, v197);
  sub_2747359D0(v328, &qword_28096F378);
  v207 = v305;
  (v305)(v326, v198);
  v206(v322, v197);
  sub_2747359D0(v199, &qword_28096F378);
  return (v207)(v327, v198);
}

void sub_27490BCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 96);
  v7 = *(*(a4 + 8) + 16);
  OUTLINED_FUNCTION_29_13();
  v6();
}

uint64_t sub_27490BD84(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v21 = *(v3 + 16);
  v21(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2749FD0A4();
  v7 = sub_2749FD094();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v10 = *(a1 + 16);
  v19 = *(a1 + 24);
  v11 = v19;
  v20 = v10;
  v8[4] = v10;
  v8[5] = v11;
  v12 = *(v3 + 32);
  OUTLINED_FUNCTION_29_13();
  v12();
  (v21)(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22, a1);
  v13 = sub_2749FD094();
  v14 = swift_allocObject();
  v14[2] = v13;
  v15 = v19;
  v16 = v20;
  v14[3] = MEMORY[0x277D85700];
  v14[4] = v16;
  v14[5] = v15;
  OUTLINED_FUNCTION_29_13();
  v12();
  type metadata accessor for WFGlyphCharacter(0);
  sub_2749FC6F4();
  return v23;
}

void sub_27490BF6C(uint64_t a1@<X2>, uint64_t a2@<X4>, _WORD *a3@<X8>)
{
  v4 = a2;
  v6 = *(a2 + 24);
  v7 = *(*(a1 + 8) + 16);
  v8 = OUTLINED_FUNCTION_96();
  LOWORD(v4) = v6(v8, v4);

  *a3 = v4;
}

void sub_27490BFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 88);
  v7 = *(*(a4 + 8) + 16);
  OUTLINED_FUNCTION_42_8();
  v6();
}

uint64_t sub_27490C0B0@<X0>(char *a1@<X8>)
{
  v21 = a1;
  type metadata accessor for EditorIconPickerView.GroupBackground();
  swift_getWitnessTable();
  sub_2749FB894();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D7E0);
  v1 = sub_2749FAEA4();
  v20 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - v2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969C20);
  v4 = sub_2749FAEA4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = [objc_opt_self() systemBackgroundColor];
  v26 = sub_2749FC3E4();
  WitnessTable = swift_getWitnessTable();
  sub_2749FBC64();
  sub_2749FBF94();

  v13 = sub_27472AB6C(&unk_28096BFB0, &qword_28096D7E0);
  v24 = WitnessTable;
  v25 = v13;
  v14 = swift_getWitnessTable();
  sub_2749FC054();
  (*(v20 + 8))(v3, v1);
  v15 = sub_27472AB6C(&qword_28159E720, &qword_280969C20);
  v22 = v14;
  v23 = v15;
  swift_getWitnessTable();
  v16 = *(v5 + 16);
  v16(v10, v8, v4);
  v17 = *(v5 + 8);
  v17(v8, v4);
  v16(v21, v10, v4);
  return (v17)(v10, v4);
}

uint64_t sub_27490C448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  *a4 = a2;
  *(a4 + 1) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F558);
  return sub_27490C4BC(a1, &a4[*(v6 + 44)]);
}

uint64_t sub_27490C4BC@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F560);
  v23 = *(v2 - 8);
  v3 = v23;
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F568);
  v24 = *(v6 - 8);
  v7 = v24;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v27 = sub_2749FC464();
  sub_2749FC914();
  sub_2749FC1E4();

  v13 = *(v7 + 16);
  v13(v10, v12, v6);
  v14 = *(v3 + 16);
  v15 = v5;
  v16 = v5;
  v17 = v2;
  v14(v16, v25, v2);
  v18 = v26;
  v13(v26, v10, v6);
  v19 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F570) + 48)];
  v14(v19, v15, v17);
  v20 = *(v24 + 8);
  v20(v12, v6);
  (*(v23 + 8))(v15, v17);
  return (v20)(v10, v6);
}

id sub_27490C76C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  if (a4 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_7(a1, a2, a3);
    v7 = sub_2749F9074();
    v8 = OUTLINED_FUNCTION_43_0();
    sub_2747BD018(v8, v9);
  }

  v10 = [v4 initWithBackgroundColorValue:a1 glyphCharacter:v5 customImageData:v7];

  return v10;
}

uint64_t sub_27490C7F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274905604();
  *a1 = result;
  return result;
}

id sub_27490C8A0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, uint64_t a5, void *a6)
{
  v10 = sub_2749FCD64();

  v11 = [a6 updateFolder:a1 newName:v10 newIcon:a4 error:a5];

  return v11;
}

uint64_t sub_27490C938(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_84();
  }

  return OUTLINED_FUNCTION_44();
}

unint64_t sub_27490C990()
{
  result = qword_28096F318;
  if (!qword_28096F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F318);
  }

  return result;
}

void sub_27490C9E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();
  [a3 setName_];
}

id sub_27490CA3C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, uint64_t a5, void *a6)
{
  v10 = sub_2749FCD64();
  v11 = [a6 updateFolder:a1 newName:v10 newIcon:a4 error:a5];

  return v11;
}

uint64_t objectdestroy_16Tm()
{

  OUTLINED_FUNCTION_49_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_27490CB5C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  OUTLINED_FUNCTION_19_18();
  v7 = type metadata accessor for EditorIconPickerView();
  OUTLINED_FUNCTION_34(v7);
  v9 = v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_274909274(a1, v9, v5, v6, a2);
}

unint64_t sub_27490CBF4()
{
  result = qword_28096F388;
  if (!qword_28096F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F388);
  }

  return result;
}

unint64_t sub_27490CC4C()
{
  result = qword_28096F390;
  if (!qword_28096F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F390);
  }

  return result;
}

unint64_t sub_27490CCA4()
{
  result = qword_28096F398;
  if (!qword_28096F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F398);
  }

  return result;
}

unint64_t sub_27490CD44()
{
  result = qword_28096F3A0;
  if (!qword_28096F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F3A0);
  }

  return result;
}

uint64_t sub_27490D068(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_31_4();
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

_BYTE *sub_27490D0B4(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ColorIconPopoverField(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_27490D268()
{
  type metadata accessor for IconEditorViewModel();
  swift_getWitnessTable();
  sub_2749FADB4();
  if (v0 <= 0x3F)
  {
    sub_27472D100(319, &qword_28096B888, &qword_28096ADE0, &unk_274A19718, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_27472D100(319, &qword_28096D3A0, &qword_28096B2A0, &unk_274A11BA0, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27490D3B8()
{
  type metadata accessor for IconEditorViewModel();
  swift_getWitnessTable();
  sub_2749FADB4();
  if (v0 <= 0x3F)
  {
    sub_27472D100(319, &qword_28096DDE8, &qword_28096C210, &unk_274A12840, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_27472D100(319, &qword_28096F4B8, &qword_28096A998, &unk_274A18B20, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_27490D57C();
        if (v3 <= 0x3F)
        {
          sub_27490D610();
          if (v4 <= 0x3F)
          {
            sub_27472D100(319, &qword_28096D3A0, &qword_28096B2A0, &unk_274A11BA0, MEMORY[0x277CDF468]);
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

void sub_27490D57C()
{
  if (!qword_28096C5D8)
  {
    sub_2749F9DB4();
    sub_27490E5C8(&qword_28096C598, MEMORY[0x277D7D2E0]);
    v0 = sub_2749FAB24();
    if (!v1)
    {
      atomic_store(v0, &qword_28096C5D8);
    }
  }
}

void sub_27490D610()
{
  if (!qword_28096C5E0)
  {
    type metadata accessor for GlyphRegistry();
    sub_27490E5C8(&qword_28096C5A8, type metadata accessor for GlyphRegistry);
    v0 = sub_2749FAB24();
    if (!v1)
    {
      atomic_store(v0, &qword_28096C5E0);
    }
  }
}

unint64_t sub_27490D6A4()
{
  result = qword_28096F4C0;
  if (!qword_28096F4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F360);
    sub_27490D730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F4C0);
  }

  return result;
}

unint64_t sub_27490D730()
{
  result = qword_28096F4C8;
  if (!qword_28096F4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F358);
    sub_27490D7BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F4C8);
  }

  return result;
}

unint64_t sub_27490D7BC()
{
  result = qword_28096F4D0[0];
  if (!qword_28096F4D0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F338);
    sub_2749F9D74();
    sub_27472AB6C(&qword_28096F348, &qword_28096F338);
    sub_27490E5C8(&qword_28096B7C8, MEMORY[0x277D7D2C8]);
    swift_getOpaqueTypeConformance2();
    sub_27472AB6C(&qword_28096C070, &qword_28096D900);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28096F4D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContainerMinimumDimensionModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContainerMinimumDimensionModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_27490D9F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27475F680;

  return sub_2749058B8(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_27490DAD8()
{
  result = qword_28096F590;
  if (!qword_28096F590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F368);
    sub_27490DB64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F590);
  }

  return result;
}

unint64_t sub_27490DB64()
{
  result = qword_28096F598;
  if (!qword_28096F598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F5A0);
    sub_27490DBF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F598);
  }

  return result;
}

unint64_t sub_27490DBF0()
{
  result = qword_28096F5A8;
  if (!qword_28096F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5A8);
  }

  return result;
}

unint64_t sub_27490DC44()
{
  result = qword_28096F5B0;
  if (!qword_28096F5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F370);
    sub_27490DCD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5B0);
  }

  return result;
}

unint64_t sub_27490DCD0()
{
  result = qword_28096F5B8;
  if (!qword_28096F5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F588);
    sub_27490DD5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5B8);
  }

  return result;
}

unint64_t sub_27490DD5C()
{
  result = qword_28096F5C0;
  if (!qword_28096F5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F580);
    sub_27490DE18();
    sub_27490E5C8(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5C0);
  }

  return result;
}

unint64_t sub_27490DE18()
{
  result = qword_28096F5C8;
  if (!qword_28096F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5C8);
  }

  return result;
}

unint64_t sub_27490DE6C()
{
  result = qword_28096F5D0;
  if (!qword_28096F5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F380);
    sub_27490E5C8(&qword_28096C7B0, type metadata accessor for GlyphPickerCachedView);
    sub_27490E5C8(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5D0);
  }

  return result;
}

unint64_t sub_27490DF58()
{
  result = qword_28096F5D8;
  if (!qword_28096F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5D8);
  }

  return result;
}

unint64_t sub_27490DFAC()
{
  result = qword_28096F5E0;
  if (!qword_28096F5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F378);
    sub_27490E030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5E0);
  }

  return result;
}

unint64_t sub_27490E030()
{
  result = qword_28096F5E8;
  if (!qword_28096F5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F578);
    sub_27490E0E8();
    sub_27472AB6C(&qword_28159E720, &qword_280969C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5E8);
  }

  return result;
}

unint64_t sub_27490E0E8()
{
  result = qword_28096F5F0;
  if (!qword_28096F5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F5F8);
    sub_27490E1A0();
    sub_27472AB6C(&unk_28096BFB0, &qword_28096D7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F5F0);
  }

  return result;
}

unint64_t sub_27490E1A0()
{
  result = qword_28096F600;
  if (!qword_28096F600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F608);
    sub_27490E5C8(&qword_28096F610, type metadata accessor for ColorPickerView);
    sub_27490E5C8(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F600);
  }

  return result;
}

void sub_27490E2A4()
{
  v0 = OUTLINED_FUNCTION_8_28();
  v2 = v1(v0);
  OUTLINED_FUNCTION_34(v2);
  v3 = OUTLINED_FUNCTION_6_31();
  sub_27490BCFC(v3, v4, v5, v6, v7, v8);
}

void sub_27490E320(_WORD *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_8_28();
  v6 = v5(v4);
  OUTLINED_FUNCTION_34(v6);
  sub_27490BF6C(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v2, a1);
}

uint64_t objectdestroy_97Tm()
{
  type metadata accessor for EditorIconPickerView();
  OUTLINED_FUNCTION_49();
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_47_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  OUTLINED_FUNCTION_107();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0) + 32);
    sub_2749FAF84();
    OUTLINED_FUNCTION_1_2();
    (*(v9 + 8))(v0 + v8);
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

void sub_27490E4EC()
{
  OUTLINED_FUNCTION_8_28();
  v0 = type metadata accessor for EditorIconPickerView();
  OUTLINED_FUNCTION_34(v0);
  v1 = OUTLINED_FUNCTION_6_31();
  sub_27490BFD8(v1, v2, v3, v4, v5, v6);
}