uint64_t sub_20B598218(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      v3 = -127;
    }

    else
    {
      v3 = 0;
    }

    sub_20B598280(v3);
  }

  return result;
}

uint64_t sub_20B598280(int a1)
{
  v2 = v1;
  v134 = a1;
  v3 = sub_20C13C554();
  v136 = *(v3 - 8);
  v137 = v3;
  MEMORY[0x28223BE20](v3);
  v135 = (&v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_20C138094();
  v138 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v151 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765DA0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v150 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v149 = &v127 - v10;
  v152 = type metadata accessor for ButtonAction(0);
  v143 = *(v152 - 1);
  v11 = MEMORY[0x28223BE20](v152);
  v139 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v155 = &v127 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v153 = &v127 - v16;
  MEMORY[0x28223BE20](v15);
  v154 = &v127 - v17;
  v18 = sub_20C1344C4();
  v141 = *(v18 - 8);
  v142 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v140 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v127 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v127 - v24;
  v26 = sub_20C135AE4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v30, v25, &qword_27C7620C8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    return sub_20B520158(v25, &qword_27C7620C8);
  }

  v129 = v27;
  v130 = v26;
  (*(v27 + 32))(v29, v25, v26);
  v145 = v22;
  sub_20C135AA4();
  v32 = (v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_mediaTagStringBuilder);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_mediaTagStringBuilder), *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_mediaTagStringBuilder + 24));
  sub_20C135A44();
  v156 = v2;
  v33 = sub_20C138544();

  v34 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v128 = v33;
  v35 = [v33 length];
  v36 = *MEMORY[0x277D740A8];
  v37 = [objc_opt_self() preferredFontForTextStyle_];
  v133 = v34;
  [v34 addAttribute:v36 value:v37 range:{0, v35}];

  v38 = v32[3];
  v131 = v32;
  __swift_project_boxed_opaque_existential_1(v32, v38);
  v144 = v29;
  sub_20C1359C4();
  v132 = sub_20C138544();
  v39 = v156;

  v40 = sub_20B59A098(v145);
  v41 = *(v40 + 16);
  v42 = &OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dependencies;
  if (v41)
  {
    *&v169[0] = MEMORY[0x277D84F90];
    sub_20BB5DA24(0, v41, 0);
    v43 = *&v169[0];
    v44 = v143;
    v45 = (*(v143 + 80) + 32) & ~*(v143 + 80);
    v127 = v40;
    v147 = v45;
    v148 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_inProgressButtonActions;
    v46 = v40 + v45;
    swift_beginAccess();
    v146 = *(v44 + 72);
    v48 = v152;
    v47 = v153;
    do
    {
      v153 = v43;
      v49 = sub_20B5DF20C(v46, v47, type metadata accessor for ButtonAction);
      v50 = *(v39 + v148);
      MEMORY[0x28223BE20](v49);
      *(&v127 - 2) = v51;

      v52 = v47;
      v53 = v149;
      sub_20B6B713C(sub_20B5D9870, v50, v149);

      v54 = type metadata accessor for ButtonAction.ActionType(0);
      v55 = (*(*(v54 - 8) + 48))(v53, 1, v54);
      sub_20B520158(v53, &qword_27C765DA0);
      if (v55 == 1)
      {
        sub_20B5D9970(v52, v154, type metadata accessor for ButtonAction);
      }

      else
      {
        sub_20B5DF274(v52, type metadata accessor for ButtonAction);
        v56 = v154;
        *(v154 + *(v48 + 28)) = 0;
        swift_storeEnumTagMultiPayload();
        v56[1] = 0u;
        v56[2] = 0u;
        *v56 = 0u;
      }

      v47 = v52;
      v43 = v153;
      *&v169[0] = v153;
      v58 = *(v153 + 16);
      v57 = *(v153 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_20BB5DA24(v57 > 1, v58 + 1, 1);
        v43 = *&v169[0];
      }

      *(v43 + 16) = v58 + 1;
      v59 = v146;
      sub_20B5D9970(v154, v43 + v147 + v58 * v146, type metadata accessor for ButtonAction);
      v46 += v59;
      --v41;
      v39 = v156;
    }

    while (v41);

    v42 = &OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dependencies;
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  v171 = v43;
  v60 = sub_20B59AB58();
  v61 = *(v60 + 16);
  if (v61)
  {
    *&v169[0] = MEMORY[0x277D84F90];
    sub_20BB5DA24(0, v61, 0);
    v62 = v42[31];
    v63 = v143;
    v64 = (*(v143 + 80) + 32) & ~*(v143 + 80);
    v147 = v60;
    v149 = v64;
    v65 = v60 + v64;
    v153 = v62;
    v154 = *&v169[0];
    swift_beginAccess();
    v148 = *(v63 + 72);
    v66 = v152;
    v67 = v139;
    v68 = v150;
    do
    {
      v69 = sub_20B5DF20C(v65, v67, type metadata accessor for ButtonAction);
      v70 = *(v39 + v153);
      MEMORY[0x28223BE20](v69);
      *(&v127 - 2) = v71;

      sub_20B6B713C(sub_20B5DF5A4, v70, v68);

      v72 = type metadata accessor for ButtonAction.ActionType(0);
      v73 = (*(*(v72 - 8) + 48))(v68, 1, v72);
      sub_20B520158(v68, &qword_27C765DA0);
      if (v73 == 1)
      {
        sub_20B5D9970(v67, v155, type metadata accessor for ButtonAction);
      }

      else
      {
        sub_20B5DF274(v67, type metadata accessor for ButtonAction);
        v74 = v155;
        *(v155 + *(v66 + 28)) = 0;
        swift_storeEnumTagMultiPayload();
        v74[1] = 0u;
        v74[2] = 0u;
        *v74 = 0u;
      }

      v75 = v154;
      *&v169[0] = v154;
      v77 = *(v154 + 16);
      v76 = *(v154 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_20BB5DA24(v76 > 1, v77 + 1, 1);
        v67 = v139;
        v75 = *&v169[0];
      }

      *(v75 + 16) = v77 + 1;
      v154 = v75;
      v78 = v148;
      sub_20B5D9970(v155, v75 + v149 + v77 * v148, type metadata accessor for ButtonAction);
      v65 += v78;
      --v61;
      v39 = v156;
    }

    while (v61);

    v79 = v154;
  }

  else
  {

    v79 = MEMORY[0x277D84F90];
  }

  sub_20B8D9064(v79);
  __swift_project_boxed_opaque_existential_1(v131, v131[3]);
  sub_20C1359E4();
  v80 = sub_20C138544();

  v81 = v171;
  v82 = sub_20C1359C4();
  v83 = *(v82 + 16);
  if (v83)
  {
    v153 = v81;
    v154 = v80;
    *&v169[0] = MEMORY[0x277D84F90];
    sub_20B526D44(0, v83, 0);
    v84 = *&v169[0];
    v85 = *(v138 + 80);
    v152 = v82;
    v86 = v82 + ((v85 + 32) & ~v85);
    v155 = *(v138 + 72);
    do
    {
      v87 = v151;
      sub_20B5DF20C(v86, v151, MEMORY[0x277D53BC8]);
      v88 = MediaTag.accessibilityIdentifier.getter();
      v90 = v89;
      sub_20B5DF274(v87, MEMORY[0x277D53BC8]);
      *&v169[0] = v84;
      v92 = *(v84 + 16);
      v91 = *(v84 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_20B526D44((v91 > 1), v92 + 1, 1);
        v84 = *&v169[0];
      }

      *(v84 + 16) = v92 + 1;
      v93 = v84 + 16 * v92;
      *(v93 + 32) = v88;
      *(v93 + 40) = v90;
      v86 += v155;
      --v83;
    }

    while (v83);

    v81 = v153;
    v80 = v154;
  }

  else
  {

    v84 = MEMORY[0x277D84F90];
  }

  v94 = swift_allocObject();
  v95 = v133;
  *(v94 + 16) = v80;
  *(v94 + 24) = v95;
  v96 = v132;
  *(v94 + 32) = v132;
  *(v94 + 40) = v81;
  v97 = v94 | 0x1000000000000001;
  *(v94 + 48) = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_20C14F980;
  *(v98 + 32) = v97;
  *&v169[0] = 0;
  *(&v169[0] + 1) = 0xE000000000000000;
  v155 = v96;
  v99 = v95;

  sub_20C13DC94();

  *&v169[0] = 0x5F74756F6B726F77;
  *(&v169[0] + 1) = 0xE800000000000000;
  v100 = v140;
  sub_20C135AA4();
  v101 = sub_20C134324();
  v103 = v102;
  v104 = v142;
  v154 = *(v141 + 8);
  (v154)(v100, v142);
  MEMORY[0x20F2F4230](v101, v103);

  MEMORY[0x20F2F4230](0x7265646165685FLL, 0xE700000000000000);
  v160 = 0uLL;
  LOBYTE(v161) = 1;
  *(&v161 + 1) = *v159;
  DWORD1(v161) = *&v159[3];
  *(&v161 + 1) = 0;
  *&v162 = 0;
  WORD4(v162) = 128;
  *(&v162 + 10) = *&v157[7];
  HIWORD(v162) = v158;
  v163 = 0uLL;
  v164 = v169[0];
  v165 = 0uLL;
  LOBYTE(v166) = 0;
  *(&v166 + 1) = *v157;
  DWORD1(v166) = *&v157[3];
  *(&v166 + 1) = v98;
  *&v167[0] = MEMORY[0x277D84F90];
  *(v167 + 8) = 0u;
  *(&v167[1] + 8) = 0u;
  *(&v167[2] + 1) = 0;
  v168 = 2;
  nullsub_1(&v160);
  v105 = v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row;
  v106 = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 144);
  v169[8] = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 128);
  v169[9] = v106;
  v170 = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 160);
  v107 = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 80);
  v169[4] = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 64);
  v169[5] = v107;
  v108 = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 112);
  v169[6] = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 96);
  v169[7] = v108;
  v109 = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 16);
  v169[0] = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row);
  v169[1] = v109;
  v110 = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 48);
  v169[2] = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 32);
  v169[3] = v110;
  v111 = v167[0];
  v112 = v167[2];
  *(v105 + 128) = v167[1];
  *(v105 + 144) = v112;
  *(v105 + 160) = v168;
  v113 = v165;
  *(v105 + 64) = v164;
  *(v105 + 80) = v113;
  *(v105 + 96) = v166;
  *(v105 + 112) = v111;
  v114 = v161;
  *v105 = v160;
  *(v105 + 16) = v114;
  v115 = v163;
  *(v105 + 32) = v162;
  *(v105 + 48) = v115;
  sub_20B520158(v169, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_42;
  }

  v117 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {

    swift_unknownObjectRelease();
LABEL_42:

    (v154)(v145, v104);
    return (*(v129 + 8))(v144, v130);
  }

  v118 = sub_20B61D140(v156, Strong);
  if (!v119)
  {
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();
LABEL_41:
    v104 = v142;
    goto LABEL_42;
  }

  v121 = v119;
  v152 = v118;
  v153 = v120;
  sub_20B51C88C(0, &qword_281100530);
  v122 = sub_20C13D374();
  v123 = v135;
  v124 = v136;
  *v135 = v122;
  v125 = v137;
  (*(v124 + 104))(v123, *MEMORY[0x277D85200], v137);
  v126 = sub_20C13C584();
  result = (*(v124 + 8))(v123, v125);
  if (v126)
  {
    if ((v134 & 0x80) != 0)
    {
      sub_20C10AB60(v156, v152, v134 & 1, v117);
    }

    else
    {
      sub_20B620870(v152, v121, v153, v156, v134 & 1, v117);
    }

    swift_unknownObjectRelease();

    goto LABEL_41;
  }

  __break(1u);
  return result;
}

uint64_t sub_20B59935C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_20C1344C4();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623E0);
  v53 = *(v55 - 8);
  v5 = *(v53 + 64);
  v6 = MEMORY[0x28223BE20](v55);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v54 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v10;
  MEMORY[0x28223BE20](v9);
  v56 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v42 - v13;
  v15 = sub_20C135AE4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v19, v14, &qword_27C7620C8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_20B520158(v14, &qword_27C7620C8);
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  else
  {
    v45 = v15;
    v46 = v16;
    v21 = *(v16 + 32);
    v43 = v5;
    v44 = v18;
    v21(v18, v14, v15);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_archivedSessionClient), *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_archivedSessionClient + 24));
    v22 = v47;
    sub_20C135AA4();
    sub_20C134324();
    (*(v48 + 8))(v22, v49);
    v23 = v52;
    sub_20C139B74();

    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_20B5DF1B8;
    *(v25 + 24) = v24;
    v26 = v53;
    v27 = v50;
    v28 = v55;
    (*(v53 + 16))(v50, v23, v55);
    v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v30 = (v43 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    (*(v26 + 32))(v31 + v29, v27, v28);
    v32 = (v31 + v30);
    *v32 = sub_20B5DF1D4;
    v32[1] = v25;
    v33 = v56;
    sub_20C137C94();
    (*(v26 + 8))(v23, v28);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_20B599B3C;
    *(v34 + 24) = 0;
    v36 = v57;
    v35 = v58;
    v37 = v54;
    (*(v57 + 16))(v54, v33, v58);
    v38 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v39 = (v51 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    (*(v36 + 32))(v40 + v38, v37, v35);
    v41 = (v40 + v39);
    *v41 = sub_20B5DF204;
    v41[1] = v34;
    sub_20C137C94();
    (*(v36 + 8))(v33, v35);
    return (*(v46 + 8))(v44, v45);
  }
}

uint64_t sub_20B5999B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_20C134D54();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v4, a1, v7);
    (*(v8 + 56))(v4, 0, 1, v7);
    v9 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_resumableSession;
    swift_beginAccess();
    sub_20B5DF2D4(v4, v6 + v9, &unk_27C7623D0);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20B599B3C()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20B517000, v4, v5, "No resumable session found", v6, 2u);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_20B599C80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v4 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  sub_20B59935C(v6);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20B5DF19C;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20B5DF6A0;
  *(v17 + 24) = v16;
  (*(v1 + 16))(v4, v6, v0);
  v18 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v19 = (v2 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v1 + 32))(v20 + v18, v4, v0);
  v21 = (v20 + v19);
  *v21 = sub_20B5DF4E8;
  v21[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  sub_20C137C94();
  (*(v1 + 8))(v6, v0);
  v22 = v26;
  v23 = sub_20C137CB4();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v23(sub_20B5DF6DC, v24);

  return (*(v27 + 8))(v10, v22);
}

uint64_t sub_20B59A098(uint64_t a1)
{
  v2 = v1;
  v90 = a1;
  v84 = type metadata accessor for ButtonAction(0);
  v88 = *(v84 - 8);
  v3 = MEMORY[0x28223BE20](v84);
  v77 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v76 = v74 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v86 = (v74 - v8);
  MEMORY[0x28223BE20](v7);
  v85 = v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330);
  v82 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v87 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v83 = v74 - v14;
  MEMORY[0x28223BE20](v13);
  v89 = v74 - v15;
  v16 = sub_20C13BB84();
  v80 = *(v16 - 8);
  v81 = v16;
  MEMORY[0x28223BE20](v16);
  v79 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWorkoutSessionRequest();
  MEMORY[0x28223BE20](started);
  v91 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v74 - v20;
  v22 = sub_20C134734();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = v74 - v27;
  v29 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_marketingOffer;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v29, v28, &unk_27C768660);
  v30 = sub_20C018E84(v28);
  sub_20B520158(v28, &unk_27C768660);
  if (!*(v30 + 16))
  {
    v75 = v30;
    v31 = v90;
    v74[1] = sub_20C134324();
    sub_20C134484();
    v32 = sub_20C1346F4();
    (*(v23 + 8))(v25, v22);
    v33 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_resumableSession;
    swift_beginAccess();
    sub_20B52F9E8(v2 + v33, v21, &unk_27C7623D0);
    v34 = sub_20C1344C4();
    v35 = v91;
    (*(*(v34 - 8) + 16))(v91, v31, v34);
    swift_storeEnumTagMultiPayload();
    v36 = v79;
    sub_20C13B4A4();
    sub_20C13BB64();
    (v80[1])(v36, v81);
    v37 = v89;
    v81 = v21;
    sub_20C01C180(v32, v21, v35, v89);

    v38 = *(v88 + 48);
    v39 = v84;
    v40 = v38(v37, 1, v84);
    MEMORY[0x28223BE20](v40);
    v74[-4] = v2;
    LOBYTE(v74[-3]) = v41;
    v74[-2] = v35;
    v80 = sub_20B613FF8(sub_20B5DF10C, &v74[-6], v32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A70);
    v42 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v43 = swift_allocObject();
    sub_20B52F9E8(v37, v43 + v42, &qword_27C770330);
    v44 = v83;
    sub_20B52F9E8(v43 + v42, v83, &qword_27C770330);
    v45 = v44;
    v46 = v87;
    sub_20B5DF134(v45, v87, &qword_27C770330);
    v47 = v38(v46, 1, v39);
    v48 = v2;
    v49 = v88;
    if (v47 == 1)
    {
      sub_20B520158(v87, &qword_27C770330);
      v50 = MEMORY[0x277D84F90];
      v51 = v81;
    }

    else
    {
      sub_20B5D9970(v87, v85, type metadata accessor for ButtonAction);
      v50 = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_20BC05920(0, v50[2] + 1, 1, v50);
      }

      v53 = v50[2];
      v52 = v50[3];
      v51 = v81;
      if (v53 >= v52 >> 1)
      {
        v50 = sub_20BC05920(v52 > 1, v53 + 1, 1, v50);
      }

      v50[2] = v53 + 1;
      sub_20B5D9970(v85, v50 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v53, type metadata accessor for ButtonAction);
    }

    swift_setDeallocating();
    sub_20B520158(v43 + v42, &qword_27C770330);
    swift_deallocClassInstance();
    v92 = v50;
    sub_20B8D9064(v80);
    sub_20B520158(v51, &unk_27C7623D0);
    v54 = v92;
    sub_20B520158(v89, &qword_27C770330);
    sub_20B5DF274(v91, type metadata accessor for StartWorkoutSessionRequest);
    v55 = v54[2];
    if (v55 < 2)
    {
    }

    else
    {
      type metadata accessor for ButtonAction.ActionType(0);
      v56 = v86;
      swift_storeEnumTagMultiPayload();
      v56[1] = 0u;
      v56[2] = 0u;
      *v56 = 0u;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_20BC05920(0, v55 + 1, 1, v54);
      }

      v58 = v54[2];
      v57 = v54[3];
      if (v58 >= v57 >> 1)
      {
        v54 = sub_20BC05920(v57 > 1, v58 + 1, 1, v54);
      }

      v54[2] = v58 + 1;
      v59 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v60 = *(v49 + 72);
      sub_20B5D9970(v86, v54 + v59 + v60 * v58, type metadata accessor for ButtonAction);
      __swift_project_boxed_opaque_existential_1((v48 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer), *(v48 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer + 24));
      v61 = sub_20C138D34();
      v63 = v62;
      v64 = v76;
      v65 = &v76[*(v39 + 28)];
      *v65 = 0;
      *(v65 + 1) = 0;
      *(v65 + 2) = v54;
      v66 = v64;
      swift_storeEnumTagMultiPayload();
      *v66 = 0u;
      *(v66 + 16) = 0u;
      *(v66 + 32) = v61;
      *(v66 + 40) = v63;
      v67 = v77;
      sub_20B5DF20C(v66, v77, type metadata accessor for ButtonAction);
      v68 = v75;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_20BC05920(0, v68[2] + 1, 1, v68);
      }

      v70 = v68[2];
      v69 = v68[3];
      v71 = v68;
      if (v70 >= v69 >> 1)
      {
        v71 = sub_20BC05920(v69 > 1, v70 + 1, 1, v68);
      }

      sub_20B5DF274(v66, type metadata accessor for ButtonAction);
      *(v71 + 16) = v70 + 1;
      sub_20B5D9970(v67, v71 + v59 + v70 * v60, type metadata accessor for ButtonAction);
      v54 = v71;
    }

    v92 = v54;
    v72 = sub_20B59AF08(v90);
    sub_20B8D9064(v72);
    return v92;
  }

  return v30;
}

uint64_t sub_20B59AB58()
{
  v1 = type metadata accessor for ButtonAction(0);
  v23 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_20C134284();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C134444();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20B520158(v9, &unk_27C7623C0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200) + 48)];
    (*(v11 + 16))(v6, v13, v10);
    *v15 = sub_20C134324();
    v15[1] = v16;
    swift_storeEnumTagMultiPayload();
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer + 24));
    v17 = sub_20C138D34();
    v19 = v18;
    sub_20B5DF20C(v6, &v3[*(v1 + 28)], type metadata accessor for ButtonAction.ActionType);
    *v3 = 0u;
    *(v3 + 1) = 0u;
    *(v3 + 4) = v17;
    *(v3 + 5) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0);
    v20 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_20C14F980;
    sub_20B5D9970(v3, v21 + v20, type metadata accessor for ButtonAction);
    sub_20B5DF274(v6, type metadata accessor for ButtonAction.ActionType);
    (*(v11 + 8))(v13, v10);
    return v21;
  }
}

uint64_t sub_20B59AF08(uint64_t a1)
{
  v52 = a1;
  *&v56 = type metadata accessor for ButtonAction(0);
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v58 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C132E94();
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C138034();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - v8;
  v10 = sub_20C136F94();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v48 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_remoteBrowsingSource), *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_remoteBrowsingSource + 24));
  sub_20C13B174();
  v21 = sub_20C136C64();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v9, 1, v21) == 1)
  {
    sub_20B520158(v9, &qword_27C768690);
    return MEMORY[0x277D84F90];
  }

  sub_20C1369E4();
  (*(v22 + 8))(v9, v21);
  (*(v11 + 32))(v19, v17, v10);
  sub_20C136F24();
  sub_20B5DF0C4(&qword_27C767AF0, MEMORY[0x277D53030]);
  v23 = sub_20C13DA74();
  v26 = *(v11 + 8);
  v24 = v11 + 8;
  v25 = v26;
  v26(v14, v10);
  if ((v23 & 1) == 0)
  {
    v25(v19, v10);
    return MEMORY[0x277D84F90];
  }

  v50 = v24;
  v27 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_bookmarks;
  if (*(*(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_bookmarks) + 16))
  {
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer + 24));
    v28 = sub_20C138D34();
    v30 = v29;
    v31 = *(v20 + v27);
    v32 = v58;
    *&v58[*(v56 + 28)] = v31;
    type metadata accessor for ButtonAction.ActionType(0);
    swift_storeEnumTagMultiPayload();
    *v32 = 0u;
    *(v32 + 16) = 0u;
    *(v32 + 32) = v28;
    *(v32 + 40) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0);
    v33 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_20C14F980;
    sub_20B5D9970(v32, v34 + v33, type metadata accessor for ButtonAction);
  }

  else
  {
    sub_20C134324();
    sub_20C132E84();
    v36 = v55;
    sub_20C138014();
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer + 24));
    v37 = sub_20C138D34();
    v51 = v38;
    v52 = v37;
    v49 = *(v56 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8);
    v39 = v53;
    v40 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v41 = swift_allocObject();
    v56 = xmmword_20C14F980;
    *(v41 + 16) = xmmword_20C14F980;
    v42 = v54;
    (*(v39 + 16))(v41 + v40, v36, v54);
    v43 = sub_20BE8BBF4(v41);
    swift_setDeallocating();
    v44 = *(v39 + 8);
    v44(v41 + v40, v42);
    swift_deallocClassInstance();
    v45 = v58;
    *&v58[v49] = v43;
    type metadata accessor for ButtonAction.ActionType(0);
    swift_storeEnumTagMultiPayload();
    *v45 = 0u;
    *(v45 + 16) = 0u;
    v46 = v51;
    *(v45 + 32) = v52;
    *(v45 + 40) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0);
    v47 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v56;
    sub_20B5D9970(v45, v34 + v47, type metadata accessor for ButtonAction);
    v44(v55, v42);
  }

  v25(v19, v10);
  return v34;
}

uint64_t sub_20B59B61C()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_archivedSessionClient);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_bookmarkClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_catalogClient);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_remoteBrowsingSource);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_mediaTagStringBuilder);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutPlanClient);

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 32);
  v11[3] = v7;
  sub_20B520158(v11, &qword_27C762340);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutDetail, &qword_27C7620C8);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_resumableSession, &unk_27C7623D0);
  v8 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_calendar;
  v9 = sub_20C133154();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_marketingOffer, &unk_27C768660);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_config, &qword_27C761800);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_serviceSubscription, &unk_27C762390);

  return v0;
}

uint64_t sub_20B59B8F0()
{
  sub_20B59B61C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVCatalogWorkoutDetailHeaderShelf()
{
  result = qword_27C762110;
  if (!qword_27C762110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B59B99C()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B59BCA4(319, &qword_27C762120, MEMORY[0x277D51E68]);
    if (v1 <= 0x3F)
    {
      sub_20B59BCA4(319, &qword_27C762128, MEMORY[0x277D51098]);
      if (v2 <= 0x3F)
      {
        sub_20C133154();
        if (v3 <= 0x3F)
        {
          sub_20B59BCA4(319, &qword_281103B50, MEMORY[0x277D540B0]);
          if (v4 <= 0x3F)
          {
            sub_20B59BCA4(319, &qword_281103BF0, MEMORY[0x277D50560]);
            if (v5 <= 0x3F)
            {
              sub_20B59BCA4(319, &qword_27C762130, MEMORY[0x277D51C40]);
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_20B59BCA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20B59BCF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762330);
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x28223BE20](v2);
  v60 = &v51 - v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v4 = *(v56 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v56);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x28223BE20](v9);
  v57 = &v51 - v10;
  v11 = sub_20C13C554();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20C14F980;
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0;
  *(v15 + 32) = v16 | 0x1000000000000001;
  v64 = 0uLL;
  LOBYTE(v65) = 1;
  *(&v65 + 1) = 0;
  *&v66 = 0;
  WORD4(v66) = 128;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  LOBYTE(v70) = 0;
  *(&v70 + 1) = v15;
  *&v71[0] = MEMORY[0x277D84F90];
  *(v71 + 8) = 0u;
  *(&v71[1] + 8) = 0u;
  *(&v71[2] + 1) = 0;
  v72 = 2;
  nullsub_1(&v64);
  v17 = v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row;
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 144);
  v73[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 128);
  v73[9] = v18;
  v74 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 160);
  v19 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 80);
  v73[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 64);
  v73[5] = v19;
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 112);
  v73[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 96);
  v73[7] = v20;
  v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 16);
  v73[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row);
  v73[1] = v21;
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 48);
  v73[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 32);
  v73[3] = v22;
  v23 = v71[2];
  *(v17 + 128) = v71[1];
  *(v17 + 144) = v23;
  *(v17 + 160) = v72;
  v24 = v69;
  *(v17 + 64) = v68;
  *(v17 + 80) = v24;
  v25 = v71[0];
  *(v17 + 96) = v70;
  *(v17 + 112) = v25;
  v26 = v65;
  *v17 = v64;
  *(v17 + 16) = v26;
  v27 = v67;
  *(v17 + 32) = v66;
  *(v17 + 48) = v27;
  sub_20B520158(v73, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v29 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
LABEL_7:
    swift_unknownObjectRelease();
LABEL_8:
    sub_20B59FD70(v8);
    v35 = swift_allocObject();
    swift_weakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = sub_20B5DF584;
    *(v36 + 24) = v35;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_20B5D9CB0;
    *(v37 + 24) = v36;
    v38 = v55;
    v39 = v56;
    (*(v4 + 16))(v55, v8, v56);
    v40 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v41 = (v5 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    (*(v4 + 32))(v42 + v40, v38, v39);
    v43 = (v42 + v41);
    *v43 = sub_20B5D9CCC;
    v43[1] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
    v44 = v57;
    sub_20C137C94();
    (*(v4 + 8))(v8, v39);
    v45 = v59;
    v46 = sub_20C137CB4();
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    v46(sub_20B52347C, v47);

    (*(v58 + 8))(v44, v45);
    swift_getObjectType();
    sub_20C13AEC4();
    swift_allocObject();
    swift_weakInit();

    sub_20C13A7A4();

    __swift_destroy_boxed_opaque_existential_1(&v63);

    v48 = v60;
    sub_20C13B6E4();
    swift_allocObject();
    swift_weakInit();
    sub_20B5D9D0C();
    v49 = v62;
    v50 = sub_20C13C1C4();

    (*(v61 + 8))(v48, v49);
    *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_multiUserEligibilitySubscription) = v50;
  }

  v30 = sub_20B61D140(v1, Strong);
  if (!v31)
  {
    sub_20C0C2D50(0);
    goto LABEL_7;
  }

  v52 = v30;
  v53 = v32;
  v54 = v31;
  sub_20B51C88C(0, &qword_281100530);
  *v14 = sub_20C13D374();
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v33 = sub_20C13C584();
  result = (*(v12 + 8))(v14, v11);
  if (v33)
  {
    sub_20B620870(v52, v54, v53, v1, 1, v29);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_20B59C4E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v181 = a1;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v198 = *(v179 - 8);
  v178 = *(v198 + 64);
  MEMORY[0x28223BE20](v179);
  v192 = &v175 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v177 = &v175 - v5;
  v189 = sub_20C13B894();
  v188 = *(v189 - 1);
  MEMORY[0x28223BE20](v189);
  v187 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v206 = *(v190 - 8);
  v186 = v206[8];
  MEMORY[0x28223BE20](v190);
  v195 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v176 = &v175 - v9;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v211 = *(v212 - 1);
  v209 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v208 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v204 = &v175 - v12;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v13 = *(v203 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v203);
  MEMORY[0x28223BE20](v15);
  v17 = &v175 - v16;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v214 = *(v194 - 8);
  v18 = *(v214 + 64);
  MEMORY[0x28223BE20](v194);
  v180 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v191 = &v175 - v20;
  MEMORY[0x28223BE20](v21);
  v197 = &v175 - v22;
  MEMORY[0x28223BE20](v23);
  v207 = &v175 - v24;
  MEMORY[0x28223BE20](v25);
  v205 = &v175 - v26;
  MEMORY[0x28223BE20](v27);
  v210 = &v175 - v28;
  MEMORY[0x28223BE20](v29);
  v196 = &v175 - v30;
  MEMORY[0x28223BE20](v31);
  v200 = &v175 - v32;
  MEMORY[0x28223BE20](v33);
  v199 = &v175 - v34;
  v35 = sub_20C13BB84();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v213 = 0x800000020C192FE0;
  sub_20C13BB64();
  (*(v36 + 8))(v38, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v219, v219[3]);
  sub_20C1398E4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20B5DEBEC;
  *(v39 + 24) = v2;
  v40 = v17;
  v41 = v17;
  v42 = v203;
  (*(v13 + 16))(&v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v203);
  v43 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v44 = swift_allocObject();
  (*(v13 + 32))(v44 + v43, &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
  v45 = (v44 + ((v14 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_20B5DF4C4;
  v45[1] = v39;

  sub_20C137C94();
  (*(v13 + 8))(v41, v42);
  __swift_project_boxed_opaque_existential_1(v215, v215[3]);
  v46 = v204;
  sub_20C1392E4();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DEC34;
  *(v47 + 24) = v2;
  v193 = v2;
  v48 = v211;
  v49 = v208;
  v50 = v46;
  v51 = v212;
  (*(v211 + 16))(v208, v46, v212);
  v52 = v48;
  v53 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v54 = (v209 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = v55 + v53;
  v57 = v51;
  (*(v52 + 32))(v56, v49, v51);
  v58 = (v55 + v54);
  *v58 = sub_20B5DF4C8;
  v58[1] = v47;

  v59 = v196;
  sub_20C137C94();
  (*(v52 + 8))(v50, v57);
  v60 = swift_allocObject();
  v60[2] = 0xD000000000000029;
  v60[3] = v213;
  v60[4] = 46;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_20B5DF5EC;
  *(v61 + 24) = v60;
  v62 = v214;
  v203 = *(v214 + 16);
  v209 = v214 + 16;
  v63 = v210;
  v64 = v194;
  (v203)(v210, v59, v194);
  v65 = v62;
  v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v208 = *(v62 + 80);
  v67 = v18 + v66;
  v68 = v66;
  v204 = v66;
  v69 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v202 = *(v65 + 32);
  v211 = v65 + 32;
  v202(v70 + v68, v63, v64);
  v71 = (v70 + v69);
  *v71 = sub_20B5DF4B0;
  v71[1] = v61;
  sub_20C137C94();
  v212 = *(v65 + 8);
  v214 = v65 + 8;
  (v212)(v59, v64);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  v72 = v188;
  v73 = v187;
  v74 = v189;
  (*(v188 + 104))(v187, *MEMORY[0x277D4FA68], v189);
  v75 = v176;
  sub_20C13B8F4();
  (*(v72 + 8))(v73, v74);
  v76 = swift_allocObject();
  v77 = v193;
  *(v76 + 16) = sub_20B5DEC7C;
  *(v76 + 24) = v77;
  v78 = v206;
  v79 = v206[2];
  v188 = (v206 + 2);
  v189 = v79;
  v80 = v195;
  v81 = v190;
  (v79)(v195, v75, v190);
  v82 = v78;
  v83 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v187 = *(v78 + 80);
  v185 = v83;
  v84 = (v186 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v182 = v84;
  v85 = swift_allocObject();
  v184 = v82[4];
  v186 = v82 + 4;
  v184(v85 + v83, v80, v81);
  v86 = (v85 + v84);
  *v86 = sub_20B5DF4B4;
  v86[1] = v76;

  v87 = v210;
  sub_20C137C94();
  v88 = v82[1];
  v206 = v82 + 1;
  v183 = v88;
  v89 = v75;
  v88(v75, v81);
  v90 = swift_allocObject();
  v90[2] = 0xD000000000000029;
  v90[3] = v213;
  v90[4] = 50;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_20B5DF5EC;
  *(v91 + 24) = v90;
  v92 = v205;
  v93 = v194;
  (v203)(v205, v87, v194);
  v201 = v69;
  v94 = swift_allocObject();
  v95 = v204;
  v202(&v204[v94], v92, v93);
  v96 = (v94 + v69);
  *v96 = sub_20B5DF4B0;
  v96[1] = v91;
  sub_20C137C94();
  (v212)(v87, v93);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  sub_20C13B954();
  v97 = swift_allocObject();
  *(v97 + 16) = sub_20B5DECC0;
  *(v97 + 24) = v77;
  v98 = v195;
  v99 = v81;
  (v189)(v195, v89, v81);
  v100 = v182;
  v101 = swift_allocObject();
  v184(v101 + v185, v98, v99);
  v102 = (v101 + v100);
  *v102 = sub_20B5DF4B4;
  v102[1] = v97;

  v103 = v205;
  sub_20C137C94();
  v183(v89, v99);
  v104 = swift_allocObject();
  v104[2] = 0xD000000000000029;
  v104[3] = v213;
  v104[4] = 54;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_20B5DF5EC;
  *(v105 + 24) = v104;
  v106 = v207;
  v107 = v203;
  (v203)(v207, v103, v93);
  v108 = v201;
  v109 = swift_allocObject();
  v110 = v202;
  v202(&v95[v109], v106, v93);
  v111 = (v109 + v108);
  *v111 = sub_20B5DF4B0;
  v111[1] = v105;
  sub_20C137C94();
  (v212)(v103, v93);
  v112 = v193;
  sub_20B5AE25C(&v220, &v216, &unk_282295430, sub_20B5DF64C, &unk_282295458, sub_20B5DF64C, v89);
  v113 = swift_allocObject();
  *(v113 + 16) = sub_20B5DED04;
  *(v113 + 24) = v112;
  v114 = v195;
  v115 = v190;
  (v189)(v195, v89, v190);
  v116 = v182;
  v117 = swift_allocObject();
  v184(v117 + v185, v114, v115);
  v118 = (v117 + v116);
  *v118 = sub_20B5DF4B4;
  v118[1] = v113;
  v119 = v112;

  v120 = v207;
  sub_20C137C94();
  v183(v89, v115);
  v121 = swift_allocObject();
  v121[2] = 0xD000000000000029;
  v121[3] = v213;
  v121[4] = 61;
  v122 = swift_allocObject();
  *(v122 + 16) = sub_20B5DF5EC;
  *(v122 + 24) = v121;
  v123 = v197;
  v107(v197, v120, v93);
  v124 = v201;
  v125 = swift_allocObject();
  v110(&v204[v125], v123, v93);
  v126 = (v125 + v124);
  *v126 = sub_20B5DF4B0;
  v126[1] = v122;
  sub_20C137C94();
  (v212)(v120, v93);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  v127 = v177;
  sub_20C139D74();
  v128 = swift_allocObject();
  *(v128 + 16) = sub_20B5DED48;
  *(v128 + 24) = v119;
  v129 = v198;
  v130 = *(v198 + 16);
  v195 = (v198 + 16);
  v206 = v130;
  v131 = v192;
  v132 = v179;
  (v130)(v192, v127, v179);
  v133 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v190 = *(v129 + 80);
  v188 = v133;
  v134 = (v178 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
  v186 = v134;
  v135 = swift_allocObject();
  v187 = *(v129 + 32);
  v189 = (v129 + 32);
  (v187)(v135 + v133, v131, v132);
  v136 = (v135 + v134);
  *v136 = sub_20B5DF4B8;
  v136[1] = v128;

  v137 = v197;
  sub_20C137C94();
  v138 = *(v129 + 8);
  v198 = v129 + 8;
  v139 = v127;
  v138(v127, v132);
  v140 = swift_allocObject();
  v140[2] = 0xD000000000000029;
  v140[3] = v213;
  v140[4] = 65;
  v141 = swift_allocObject();
  *(v141 + 16) = sub_20B5DF5EC;
  *(v141 + 24) = v140;
  v142 = v191;
  v143 = v194;
  (v203)(v191, v137, v194);
  v144 = v201;
  v145 = swift_allocObject();
  v202(&v204[v145], v142, v143);
  v146 = (v145 + v144);
  *v146 = sub_20B5DF4B0;
  v146[1] = v141;
  sub_20C137C94();
  (v212)(v137, v143);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  sub_20C139D64();
  v147 = swift_allocObject();
  v148 = v193;
  *(v147 + 16) = sub_20B5DED60;
  *(v147 + 24) = v148;
  v149 = v192;
  v150 = v139;
  (v206)(v192, v139, v132);
  v151 = v186;
  v152 = swift_allocObject();
  (v187)(v152 + v188, v149, v132);
  v153 = (v151 + v152);
  *v153 = sub_20B5DF4B8;
  v153[1] = v147;

  v154 = v191;
  sub_20C137C94();
  v138(v150, v132);
  v155 = swift_allocObject();
  v155[2] = 0xD000000000000029;
  v155[3] = v213;
  v155[4] = 69;
  v156 = swift_allocObject();
  *(v156 + 16) = sub_20B5DF5EC;
  *(v156 + 24) = v155;
  v157 = v180;
  v158 = v203;
  (v203)(v180, v154, v143);
  v159 = v201;
  v160 = v208;
  v161 = swift_allocObject();
  v202(&v204[v161], v157, v143);
  v162 = (v161 + v159);
  *v162 = sub_20B5DF4B0;
  v162[1] = v156;
  v163 = v197;
  sub_20C137C94();
  v164 = v214;
  (v212)(v154, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v165 = *(v164 + 64);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_20C14F990;
  v167 = v166 + ((v160 + 32) & ~v160);
  v158(v167, v199, v143);
  v158(v167 + v165, v200, v143);
  v158(v167 + 2 * v165, v210, v143);
  v168 = v196;
  v158(v167 + 3 * v165, v196, v143);
  v169 = v207;
  v158(v167 + 4 * v165, v207, v143);
  v158(v167 + 5 * v165, v163, v143);
  v170 = v167 + 6 * v165;
  v171 = v205;
  v158(v170, v205, v143);
  sub_20B51C88C(0, &qword_281100530);
  v172 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v173 = v212;
  (v212)(v163, v143);
  v173(v169, v143);
  v173(v171, v143);
  v173(v210, v143);
  v173(v168, v143);
  v173(v200, v143);
  v173(v199, v143);
  __swift_destroy_boxed_opaque_existential_1(&v216);
  __swift_destroy_boxed_opaque_existential_1(v215);
  __swift_destroy_boxed_opaque_existential_1(&v217);
  __swift_destroy_boxed_opaque_existential_1(v219);
  return __swift_destroy_boxed_opaque_existential_1(&v220);
}

uint64_t sub_20B59E128@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v181 = a1;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v198 = *(v179 - 8);
  v178 = *(v198 + 64);
  MEMORY[0x28223BE20](v179);
  v192 = &v175 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v177 = &v175 - v5;
  v189 = sub_20C13B894();
  v188 = *(v189 - 1);
  MEMORY[0x28223BE20](v189);
  v187 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v206 = *(v190 - 8);
  v186 = v206[8];
  MEMORY[0x28223BE20](v190);
  v195 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v176 = &v175 - v9;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v211 = *(v212 - 1);
  v209 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v208 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v204 = &v175 - v12;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v13 = *(v203 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v203);
  MEMORY[0x28223BE20](v15);
  v17 = &v175 - v16;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v214 = *(v194 - 8);
  v18 = *(v214 + 64);
  MEMORY[0x28223BE20](v194);
  v180 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v191 = &v175 - v20;
  MEMORY[0x28223BE20](v21);
  v197 = &v175 - v22;
  MEMORY[0x28223BE20](v23);
  v207 = &v175 - v24;
  MEMORY[0x28223BE20](v25);
  v205 = &v175 - v26;
  MEMORY[0x28223BE20](v27);
  v210 = &v175 - v28;
  MEMORY[0x28223BE20](v29);
  v196 = &v175 - v30;
  MEMORY[0x28223BE20](v31);
  v200 = &v175 - v32;
  MEMORY[0x28223BE20](v33);
  v199 = &v175 - v34;
  v35 = sub_20C13BB84();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v213 = 0x800000020C192FE0;
  sub_20C13BB64();
  (*(v36 + 8))(v38, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v219, v219[3]);
  sub_20C1398E4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20B5DEA60;
  *(v39 + 24) = v2;
  v40 = v17;
  v41 = v17;
  v42 = v203;
  (*(v13 + 16))(&v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v203);
  v43 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v44 = swift_allocObject();
  (*(v13 + 32))(v44 + v43, &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
  v45 = (v44 + ((v14 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_20B5DF4C4;
  v45[1] = v39;

  sub_20C137C94();
  (*(v13 + 8))(v41, v42);
  __swift_project_boxed_opaque_existential_1(v215, v215[3]);
  v46 = v204;
  sub_20C1392E4();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DEAA8;
  *(v47 + 24) = v2;
  v193 = v2;
  v48 = v211;
  v49 = v208;
  v50 = v46;
  v51 = v212;
  (*(v211 + 16))(v208, v46, v212);
  v52 = v48;
  v53 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v54 = (v209 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = v55 + v53;
  v57 = v51;
  (*(v52 + 32))(v56, v49, v51);
  v58 = (v55 + v54);
  *v58 = sub_20B5DF4C8;
  v58[1] = v47;

  v59 = v196;
  sub_20C137C94();
  (*(v52 + 8))(v50, v57);
  v60 = swift_allocObject();
  v60[2] = 0xD000000000000029;
  v60[3] = v213;
  v60[4] = 46;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_20B5DF5EC;
  *(v61 + 24) = v60;
  v62 = v214;
  v203 = *(v214 + 16);
  v209 = v214 + 16;
  v63 = v210;
  v64 = v194;
  (v203)(v210, v59, v194);
  v65 = v62;
  v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v208 = *(v62 + 80);
  v67 = v18 + v66;
  v68 = v66;
  v204 = v66;
  v69 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v202 = *(v65 + 32);
  v211 = v65 + 32;
  v202(v70 + v68, v63, v64);
  v71 = (v70 + v69);
  *v71 = sub_20B5DF4B0;
  v71[1] = v61;
  sub_20C137C94();
  v212 = *(v65 + 8);
  v214 = v65 + 8;
  (v212)(v59, v64);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  v72 = v188;
  v73 = v187;
  v74 = v189;
  (*(v188 + 104))(v187, *MEMORY[0x277D4FA68], v189);
  v75 = v176;
  sub_20C13B8F4();
  (*(v72 + 8))(v73, v74);
  v76 = swift_allocObject();
  v77 = v193;
  *(v76 + 16) = sub_20B5DEAF0;
  *(v76 + 24) = v77;
  v78 = v206;
  v79 = v206[2];
  v188 = (v206 + 2);
  v189 = v79;
  v80 = v195;
  v81 = v190;
  (v79)(v195, v75, v190);
  v82 = v78;
  v83 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v187 = *(v78 + 80);
  v185 = v83;
  v84 = (v186 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v182 = v84;
  v85 = swift_allocObject();
  v184 = v82[4];
  v186 = v82 + 4;
  v184(v85 + v83, v80, v81);
  v86 = (v85 + v84);
  *v86 = sub_20B5DF4B4;
  v86[1] = v76;

  v87 = v210;
  sub_20C137C94();
  v88 = v82[1];
  v206 = v82 + 1;
  v183 = v88;
  v89 = v75;
  v88(v75, v81);
  v90 = swift_allocObject();
  v90[2] = 0xD000000000000029;
  v90[3] = v213;
  v90[4] = 50;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_20B5DF5EC;
  *(v91 + 24) = v90;
  v92 = v205;
  v93 = v194;
  (v203)(v205, v87, v194);
  v201 = v69;
  v94 = swift_allocObject();
  v95 = v204;
  v202(&v204[v94], v92, v93);
  v96 = (v94 + v69);
  *v96 = sub_20B5DF4B0;
  v96[1] = v91;
  sub_20C137C94();
  (v212)(v87, v93);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  sub_20C13B954();
  v97 = swift_allocObject();
  *(v97 + 16) = sub_20B5DEB34;
  *(v97 + 24) = v77;
  v98 = v195;
  v99 = v81;
  (v189)(v195, v89, v81);
  v100 = v182;
  v101 = swift_allocObject();
  v184(v101 + v185, v98, v99);
  v102 = (v101 + v100);
  *v102 = sub_20B5DF4B4;
  v102[1] = v97;

  v103 = v205;
  sub_20C137C94();
  v183(v89, v99);
  v104 = swift_allocObject();
  v104[2] = 0xD000000000000029;
  v104[3] = v213;
  v104[4] = 54;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_20B5DF5EC;
  *(v105 + 24) = v104;
  v106 = v207;
  v107 = v203;
  (v203)(v207, v103, v93);
  v108 = v201;
  v109 = swift_allocObject();
  v110 = v202;
  v202(&v95[v109], v106, v93);
  v111 = (v109 + v108);
  *v111 = sub_20B5DF4B0;
  v111[1] = v105;
  sub_20C137C94();
  (v212)(v103, v93);
  v112 = v193;
  sub_20B5AE25C(&v220, &v216, &unk_282294EE0, sub_20B5DF64C, &unk_282294F08, sub_20B5DF64C, v89);
  v113 = swift_allocObject();
  *(v113 + 16) = sub_20B5DEB78;
  *(v113 + 24) = v112;
  v114 = v195;
  v115 = v190;
  (v189)(v195, v89, v190);
  v116 = v182;
  v117 = swift_allocObject();
  v184(v117 + v185, v114, v115);
  v118 = (v117 + v116);
  *v118 = sub_20B5DF4B4;
  v118[1] = v113;
  v119 = v112;

  v120 = v207;
  sub_20C137C94();
  v183(v89, v115);
  v121 = swift_allocObject();
  v121[2] = 0xD000000000000029;
  v121[3] = v213;
  v121[4] = 61;
  v122 = swift_allocObject();
  *(v122 + 16) = sub_20B5DF5EC;
  *(v122 + 24) = v121;
  v123 = v197;
  v107(v197, v120, v93);
  v124 = v201;
  v125 = swift_allocObject();
  v110(&v204[v125], v123, v93);
  v126 = (v125 + v124);
  *v126 = sub_20B5DF4B0;
  v126[1] = v122;
  sub_20C137C94();
  (v212)(v120, v93);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  v127 = v177;
  sub_20C139D74();
  v128 = swift_allocObject();
  *(v128 + 16) = sub_20B5DEBBC;
  *(v128 + 24) = v119;
  v129 = v198;
  v130 = *(v198 + 16);
  v195 = (v198 + 16);
  v206 = v130;
  v131 = v192;
  v132 = v179;
  (v130)(v192, v127, v179);
  v133 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v190 = *(v129 + 80);
  v188 = v133;
  v134 = (v178 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
  v186 = v134;
  v135 = swift_allocObject();
  v187 = *(v129 + 32);
  v189 = (v129 + 32);
  (v187)(v135 + v133, v131, v132);
  v136 = (v135 + v134);
  *v136 = sub_20B5DF4B8;
  v136[1] = v128;

  v137 = v197;
  sub_20C137C94();
  v138 = *(v129 + 8);
  v198 = v129 + 8;
  v139 = v127;
  v138(v127, v132);
  v140 = swift_allocObject();
  v140[2] = 0xD000000000000029;
  v140[3] = v213;
  v140[4] = 65;
  v141 = swift_allocObject();
  *(v141 + 16) = sub_20B5DF5EC;
  *(v141 + 24) = v140;
  v142 = v191;
  v143 = v194;
  (v203)(v191, v137, v194);
  v144 = v201;
  v145 = swift_allocObject();
  v202(&v204[v145], v142, v143);
  v146 = (v145 + v144);
  *v146 = sub_20B5DF4B0;
  v146[1] = v141;
  sub_20C137C94();
  (v212)(v137, v143);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  sub_20C139D64();
  v147 = swift_allocObject();
  v148 = v193;
  *(v147 + 16) = sub_20B5DEBD4;
  *(v147 + 24) = v148;
  v149 = v192;
  v150 = v139;
  (v206)(v192, v139, v132);
  v151 = v186;
  v152 = swift_allocObject();
  (v187)(v152 + v188, v149, v132);
  v153 = (v151 + v152);
  *v153 = sub_20B5DF4B8;
  v153[1] = v147;

  v154 = v191;
  sub_20C137C94();
  v138(v150, v132);
  v155 = swift_allocObject();
  v155[2] = 0xD000000000000029;
  v155[3] = v213;
  v155[4] = 69;
  v156 = swift_allocObject();
  *(v156 + 16) = sub_20B5DF5EC;
  *(v156 + 24) = v155;
  v157 = v180;
  v158 = v203;
  (v203)(v180, v154, v143);
  v159 = v201;
  v160 = v208;
  v161 = swift_allocObject();
  v202(&v204[v161], v157, v143);
  v162 = (v161 + v159);
  *v162 = sub_20B5DF4B0;
  v162[1] = v156;
  v163 = v197;
  sub_20C137C94();
  v164 = v214;
  (v212)(v154, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v165 = *(v164 + 64);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_20C14F990;
  v167 = v166 + ((v160 + 32) & ~v160);
  v158(v167, v199, v143);
  v158(v167 + v165, v200, v143);
  v158(v167 + 2 * v165, v210, v143);
  v168 = v196;
  v158(v167 + 3 * v165, v196, v143);
  v169 = v207;
  v158(v167 + 4 * v165, v207, v143);
  v158(v167 + 5 * v165, v163, v143);
  v170 = v167 + 6 * v165;
  v171 = v205;
  v158(v170, v205, v143);
  sub_20B51C88C(0, &qword_281100530);
  v172 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v173 = v212;
  (v212)(v163, v143);
  v173(v169, v143);
  v173(v171, v143);
  v173(v210, v143);
  v173(v168, v143);
  v173(v200, v143);
  v173(v199, v143);
  __swift_destroy_boxed_opaque_existential_1(&v216);
  __swift_destroy_boxed_opaque_existential_1(v215);
  __swift_destroy_boxed_opaque_existential_1(&v217);
  __swift_destroy_boxed_opaque_existential_1(v219);
  return __swift_destroy_boxed_opaque_existential_1(&v220);
}

uint64_t sub_20B59FD70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v181 = a1;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v198 = *(v179 - 8);
  v178 = *(v198 + 64);
  v3 = MEMORY[0x28223BE20](v179);
  v192 = &v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v177 = &v175 - v5;
  v189 = sub_20C13B894();
  v188 = *(v189 - 1);
  MEMORY[0x28223BE20](v189);
  v187 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v206 = *(v190 - 8);
  v186 = v206[8];
  v7 = MEMORY[0x28223BE20](v190);
  v195 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v176 = &v175 - v9;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v211 = *(v212 - 1);
  v209 = *(v211 + 64);
  v10 = MEMORY[0x28223BE20](v212);
  v208 = &v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v204 = &v175 - v12;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v13 = *(v203 - 1);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v203);
  MEMORY[0x28223BE20](v15);
  v17 = &v175 - v16;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v214 = *(v194 - 8);
  v18 = *(v214 + 64);
  v19 = MEMORY[0x28223BE20](v194);
  v180 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v191 = &v175 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v197 = &v175 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v207 = &v175 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v205 = &v175 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v210 = &v175 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v196 = &v175 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v200 = &v175 - v33;
  MEMORY[0x28223BE20](v32);
  v199 = &v175 - v34;
  v35 = sub_20C13BB84();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v213 = 0x800000020C192FE0;
  sub_20C13BB64();
  (*(v36 + 8))(v38, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v219, v219[3]);
  sub_20C1398E4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20B5D9DB8;
  *(v39 + 24) = v2;
  v40 = v17;
  v41 = v17;
  v42 = v203;
  (*(v13 + 16))(&v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v203);
  v43 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v44 = swift_allocObject();
  (*(v13 + 32))(v44 + v43, &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
  v45 = (v44 + ((v14 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_20B58D058;
  v45[1] = v39;

  sub_20C137C94();
  (*(v13 + 8))(v41, v42);
  __swift_project_boxed_opaque_existential_1(v215, v215[3]);
  v46 = v204;
  sub_20C1392E4();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5D9E28;
  *(v47 + 24) = v2;
  v193 = v2;
  v48 = v211;
  v49 = v208;
  v50 = v46;
  v51 = v212;
  (*(v211 + 16))(v208, v46, v212);
  v52 = v48;
  v53 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v54 = (v209 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = v55 + v53;
  v57 = v51;
  (*(v52 + 32))(v56, v49, v51);
  v58 = (v55 + v54);
  *v58 = sub_20B5D9E70;
  v58[1] = v47;

  v59 = v196;
  sub_20C137C94();
  (*(v52 + 8))(v50, v57);
  v60 = swift_allocObject();
  v60[2] = 0xD000000000000029;
  v60[3] = v213;
  v60[4] = 46;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_20B5D9EA0;
  *(v61 + 24) = v60;
  v62 = v214;
  v203 = *(v214 + 16);
  v209 = v214 + 16;
  v63 = v210;
  v64 = v194;
  (v203)(v210, v59, v194);
  v65 = v62;
  v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v208 = *(v62 + 80);
  v67 = v18 + v66;
  v68 = v66;
  v204 = v66;
  v69 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v202 = *(v65 + 32);
  v211 = v65 + 32;
  v202(v70 + v68, v63, v64);
  v71 = (v70 + v69);
  *v71 = sub_20B5D9EC0;
  v71[1] = v61;
  sub_20C137C94();
  v212 = *(v65 + 8);
  v214 = v65 + 8;
  (v212)(v59, v64);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  v72 = v188;
  v73 = v187;
  v74 = v189;
  (*(v188 + 104))(v187, *MEMORY[0x277D4FA68], v189);
  v75 = v176;
  sub_20C13B8F4();
  (*(v72 + 8))(v73, v74);
  v76 = swift_allocObject();
  v77 = v193;
  *(v76 + 16) = sub_20B5D9EF0;
  *(v76 + 24) = v77;
  v78 = v206;
  v79 = v206[2];
  v188 = (v206 + 2);
  v189 = v79;
  v80 = v195;
  v81 = v190;
  (v79)(v195, v75, v190);
  v82 = v78;
  v83 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v187 = *(v78 + 80);
  v185 = v83;
  v84 = (v186 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v182 = v84;
  v85 = swift_allocObject();
  v184 = v82[4];
  v186 = v82 + 4;
  v184(v85 + v83, v80, v81);
  v86 = (v85 + v84);
  *v86 = sub_20B5D9F30;
  v86[1] = v76;

  v87 = v210;
  sub_20C137C94();
  v88 = v82[1];
  v206 = v82 + 1;
  v183 = v88;
  v89 = v75;
  v88(v75, v81);
  v90 = swift_allocObject();
  v90[2] = 0xD000000000000029;
  v90[3] = v213;
  v90[4] = 50;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_20B5DF5EC;
  *(v91 + 24) = v90;
  v92 = v205;
  v93 = v194;
  (v203)(v205, v87, v194);
  v201 = v69;
  v94 = swift_allocObject();
  v95 = v204;
  v202(&v204[v94], v92, v93);
  v96 = (v94 + v69);
  *v96 = sub_20B5DF4B0;
  v96[1] = v91;
  sub_20C137C94();
  (v212)(v87, v93);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  sub_20C13B954();
  v97 = swift_allocObject();
  *(v97 + 16) = sub_20B5D9F60;
  *(v97 + 24) = v77;
  v98 = v195;
  v99 = v81;
  (v189)(v195, v89, v81);
  v100 = v182;
  v101 = swift_allocObject();
  v184(v101 + v185, v98, v99);
  v102 = (v101 + v100);
  *v102 = sub_20B5DF4B4;
  v102[1] = v97;

  v103 = v205;
  sub_20C137C94();
  v183(v89, v99);
  v104 = swift_allocObject();
  v104[2] = 0xD000000000000029;
  v104[3] = v213;
  v104[4] = 54;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_20B5DF5EC;
  *(v105 + 24) = v104;
  v106 = v207;
  v107 = v203;
  (v203)(v207, v103, v93);
  v108 = v201;
  v109 = swift_allocObject();
  v110 = v202;
  v202(&v95[v109], v106, v93);
  v111 = (v109 + v108);
  *v111 = sub_20B5DF4B0;
  v111[1] = v105;
  sub_20C137C94();
  (v212)(v103, v93);
  v112 = v193;
  sub_20B5AE25C(&v220, &v216, &unk_282291010, sub_20B5DA038, &unk_282291038, sub_20B5DF64C, v89);
  v113 = swift_allocObject();
  *(v113 + 16) = sub_20B5D9FA0;
  *(v113 + 24) = v112;
  v114 = v195;
  v115 = v190;
  (v189)(v195, v89, v190);
  v116 = v182;
  v117 = swift_allocObject();
  v184(v117 + v185, v114, v115);
  v118 = (v117 + v116);
  *v118 = sub_20B5DF4B4;
  v118[1] = v113;
  v119 = v112;

  v120 = v207;
  sub_20C137C94();
  v183(v89, v115);
  v121 = swift_allocObject();
  v121[2] = 0xD000000000000029;
  v121[3] = v213;
  v121[4] = 61;
  v122 = swift_allocObject();
  *(v122 + 16) = sub_20B5DF5EC;
  *(v122 + 24) = v121;
  v123 = v197;
  v107(v197, v120, v93);
  v124 = v201;
  v125 = swift_allocObject();
  v110(&v204[v125], v123, v93);
  v126 = (v125 + v124);
  *v126 = sub_20B5DF4B0;
  v126[1] = v122;
  sub_20C137C94();
  (v212)(v120, v93);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  v127 = v177;
  sub_20C139D74();
  v128 = swift_allocObject();
  *(v128 + 16) = sub_20B5D9FE0;
  *(v128 + 24) = v119;
  v129 = v198;
  v130 = *(v198 + 16);
  v195 = (v198 + 16);
  v206 = v130;
  v131 = v192;
  v132 = v179;
  (v130)(v192, v127, v179);
  v133 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v190 = *(v129 + 80);
  v188 = v133;
  v134 = (v178 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
  v186 = v134;
  v135 = swift_allocObject();
  v187 = *(v129 + 32);
  v189 = (v129 + 32);
  (v187)(v135 + v133, v131, v132);
  v136 = (v135 + v134);
  *v136 = sub_20B5D9FF4;
  v136[1] = v128;

  v137 = v197;
  sub_20C137C94();
  v138 = *(v129 + 8);
  v198 = v129 + 8;
  v139 = v127;
  v138(v127, v132);
  v140 = swift_allocObject();
  v140[2] = 0xD000000000000029;
  v140[3] = v213;
  v140[4] = 65;
  v141 = swift_allocObject();
  *(v141 + 16) = sub_20B5DF5EC;
  *(v141 + 24) = v140;
  v142 = v191;
  v143 = v194;
  (v203)(v191, v137, v194);
  v144 = v201;
  v145 = swift_allocObject();
  v202(&v204[v145], v142, v143);
  v146 = (v145 + v144);
  *v146 = sub_20B5DF4B0;
  v146[1] = v141;
  sub_20C137C94();
  (v212)(v137, v143);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  sub_20C139D64();
  v147 = swift_allocObject();
  v148 = v193;
  *(v147 + 16) = sub_20B5DA024;
  *(v147 + 24) = v148;
  v149 = v192;
  v150 = v139;
  (v206)(v192, v139, v132);
  v151 = v186;
  v152 = swift_allocObject();
  (v187)(v152 + v188, v149, v132);
  v153 = (v151 + v152);
  *v153 = sub_20B5DF4B8;
  v153[1] = v147;

  v154 = v191;
  sub_20C137C94();
  v138(v150, v132);
  v155 = swift_allocObject();
  v155[2] = 0xD000000000000029;
  v155[3] = v213;
  v155[4] = 69;
  v156 = swift_allocObject();
  *(v156 + 16) = sub_20B5DF5EC;
  *(v156 + 24) = v155;
  v157 = v180;
  v158 = v203;
  (v203)(v180, v154, v143);
  v159 = v201;
  v160 = v208;
  v161 = swift_allocObject();
  v202(&v204[v161], v157, v143);
  v162 = (v161 + v159);
  *v162 = sub_20B5DF4B0;
  v162[1] = v156;
  v163 = v197;
  sub_20C137C94();
  v164 = v214;
  (v212)(v154, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v165 = *(v164 + 64);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_20C14F990;
  v167 = v166 + ((v160 + 32) & ~v160);
  v158(v167, v199, v143);
  v158(v167 + v165, v200, v143);
  v158(v167 + 2 * v165, v210, v143);
  v168 = v196;
  v158(v167 + 3 * v165, v196, v143);
  v169 = v207;
  v158(v167 + 4 * v165, v207, v143);
  v158(v167 + 5 * v165, v163, v143);
  v170 = v167 + 6 * v165;
  v171 = v205;
  v158(v170, v205, v143);
  sub_20B51C88C(0, &qword_281100530);
  v172 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v173 = v212;
  (v212)(v163, v143);
  v173(v169, v143);
  v173(v171, v143);
  v173(v210, v143);
  v173(v168, v143);
  v173(v200, v143);
  v173(v199, v143);
  __swift_destroy_boxed_opaque_existential_1(&v216);
  __swift_destroy_boxed_opaque_existential_1(v215);
  __swift_destroy_boxed_opaque_existential_1(&v217);
  __swift_destroy_boxed_opaque_existential_1(v219);
  return __swift_destroy_boxed_opaque_existential_1(&v220);
}

uint64_t sub_20B5A19B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v181 = a1;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v198 = *(v179 - 8);
  v178 = *(v198 + 64);
  MEMORY[0x28223BE20](v179);
  v192 = &v175 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v177 = &v175 - v5;
  v189 = sub_20C13B894();
  v188 = *(v189 - 1);
  MEMORY[0x28223BE20](v189);
  v187 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v206 = *(v190 - 8);
  v186 = v206[8];
  MEMORY[0x28223BE20](v190);
  v195 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v176 = &v175 - v9;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v211 = *(v212 - 1);
  v209 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v208 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v204 = &v175 - v12;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v13 = *(v203 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v203);
  MEMORY[0x28223BE20](v15);
  v17 = &v175 - v16;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v214 = *(v194 - 8);
  v18 = *(v214 + 64);
  MEMORY[0x28223BE20](v194);
  v180 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v191 = &v175 - v20;
  MEMORY[0x28223BE20](v21);
  v197 = &v175 - v22;
  MEMORY[0x28223BE20](v23);
  v207 = &v175 - v24;
  MEMORY[0x28223BE20](v25);
  v205 = &v175 - v26;
  MEMORY[0x28223BE20](v27);
  v210 = &v175 - v28;
  MEMORY[0x28223BE20](v29);
  v196 = &v175 - v30;
  MEMORY[0x28223BE20](v31);
  v200 = &v175 - v32;
  MEMORY[0x28223BE20](v33);
  v199 = &v175 - v34;
  v35 = sub_20C13BB84();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v213 = 0x800000020C192FE0;
  sub_20C13BB64();
  (*(v36 + 8))(v38, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v219, v219[3]);
  sub_20C1398E4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20B5DA65C;
  *(v39 + 24) = v2;
  v40 = v17;
  v41 = v17;
  v42 = v203;
  (*(v13 + 16))(&v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v203);
  v43 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v44 = swift_allocObject();
  (*(v13 + 32))(v44 + v43, &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
  v45 = (v44 + ((v14 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_20B5DF4C4;
  v45[1] = v39;

  sub_20C137C94();
  (*(v13 + 8))(v41, v42);
  __swift_project_boxed_opaque_existential_1(v215, v215[3]);
  v46 = v204;
  sub_20C1392E4();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DA6A4;
  *(v47 + 24) = v2;
  v193 = v2;
  v48 = v211;
  v49 = v208;
  v50 = v46;
  v51 = v212;
  (*(v211 + 16))(v208, v46, v212);
  v52 = v48;
  v53 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v54 = (v209 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = v55 + v53;
  v57 = v51;
  (*(v52 + 32))(v56, v49, v51);
  v58 = (v55 + v54);
  *v58 = sub_20B5DF4C8;
  v58[1] = v47;

  v59 = v196;
  sub_20C137C94();
  (*(v52 + 8))(v50, v57);
  v60 = swift_allocObject();
  v60[2] = 0xD000000000000029;
  v60[3] = v213;
  v60[4] = 46;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_20B5DF5EC;
  *(v61 + 24) = v60;
  v62 = v214;
  v203 = *(v214 + 16);
  v209 = v214 + 16;
  v63 = v210;
  v64 = v194;
  (v203)(v210, v59, v194);
  v65 = v62;
  v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v208 = *(v62 + 80);
  v67 = v18 + v66;
  v68 = v66;
  v204 = v66;
  v69 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v202 = *(v65 + 32);
  v211 = v65 + 32;
  v202(v70 + v68, v63, v64);
  v71 = (v70 + v69);
  *v71 = sub_20B5DF4B0;
  v71[1] = v61;
  sub_20C137C94();
  v212 = *(v65 + 8);
  v214 = v65 + 8;
  (v212)(v59, v64);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  v72 = v188;
  v73 = v187;
  v74 = v189;
  (*(v188 + 104))(v187, *MEMORY[0x277D4FA68], v189);
  v75 = v176;
  sub_20C13B8F4();
  (*(v72 + 8))(v73, v74);
  v76 = swift_allocObject();
  v77 = v193;
  *(v76 + 16) = sub_20B5DA6EC;
  *(v76 + 24) = v77;
  v78 = v206;
  v79 = v206[2];
  v188 = (v206 + 2);
  v189 = v79;
  v80 = v195;
  v81 = v190;
  (v79)(v195, v75, v190);
  v82 = v78;
  v83 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v187 = *(v78 + 80);
  v185 = v83;
  v84 = (v186 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v182 = v84;
  v85 = swift_allocObject();
  v184 = v82[4];
  v186 = v82 + 4;
  v184(v85 + v83, v80, v81);
  v86 = (v85 + v84);
  *v86 = sub_20B5DF4B4;
  v86[1] = v76;

  v87 = v210;
  sub_20C137C94();
  v88 = v82[1];
  v206 = v82 + 1;
  v183 = v88;
  v89 = v75;
  v88(v75, v81);
  v90 = swift_allocObject();
  v90[2] = 0xD000000000000029;
  v90[3] = v213;
  v90[4] = 50;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_20B5DF5EC;
  *(v91 + 24) = v90;
  v92 = v205;
  v93 = v194;
  (v203)(v205, v87, v194);
  v201 = v69;
  v94 = swift_allocObject();
  v95 = v204;
  v202(&v204[v94], v92, v93);
  v96 = (v94 + v69);
  *v96 = sub_20B5DF4B0;
  v96[1] = v91;
  sub_20C137C94();
  (v212)(v87, v93);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  sub_20C13B954();
  v97 = swift_allocObject();
  *(v97 + 16) = sub_20B5DA730;
  *(v97 + 24) = v77;
  v98 = v195;
  v99 = v81;
  (v189)(v195, v89, v81);
  v100 = v182;
  v101 = swift_allocObject();
  v184(v101 + v185, v98, v99);
  v102 = (v101 + v100);
  *v102 = sub_20B5DF4B4;
  v102[1] = v97;

  v103 = v205;
  sub_20C137C94();
  v183(v89, v99);
  v104 = swift_allocObject();
  v104[2] = 0xD000000000000029;
  v104[3] = v213;
  v104[4] = 54;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_20B5DF5EC;
  *(v105 + 24) = v104;
  v106 = v207;
  v107 = v203;
  (v203)(v207, v103, v93);
  v108 = v201;
  v109 = swift_allocObject();
  v110 = v202;
  v202(&v95[v109], v106, v93);
  v111 = (v109 + v108);
  *v111 = sub_20B5DF4B0;
  v111[1] = v105;
  sub_20C137C94();
  (v212)(v103, v93);
  v112 = v193;
  sub_20B5AE25C(&v220, &v216, &unk_2822920A0, sub_20B5DF64C, &unk_2822920C8, sub_20B5DF64C, v89);
  v113 = swift_allocObject();
  *(v113 + 16) = sub_20B5DA774;
  *(v113 + 24) = v112;
  v114 = v195;
  v115 = v190;
  (v189)(v195, v89, v190);
  v116 = v182;
  v117 = swift_allocObject();
  v184(v117 + v185, v114, v115);
  v118 = (v117 + v116);
  *v118 = sub_20B5DF4B4;
  v118[1] = v113;
  v119 = v112;

  v120 = v207;
  sub_20C137C94();
  v183(v89, v115);
  v121 = swift_allocObject();
  v121[2] = 0xD000000000000029;
  v121[3] = v213;
  v121[4] = 61;
  v122 = swift_allocObject();
  *(v122 + 16) = sub_20B5DF5EC;
  *(v122 + 24) = v121;
  v123 = v197;
  v107(v197, v120, v93);
  v124 = v201;
  v125 = swift_allocObject();
  v110(&v204[v125], v123, v93);
  v126 = (v125 + v124);
  *v126 = sub_20B5DF4B0;
  v126[1] = v122;
  sub_20C137C94();
  (v212)(v120, v93);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  v127 = v177;
  sub_20C139D74();
  v128 = swift_allocObject();
  *(v128 + 16) = sub_20B5DA7B8;
  *(v128 + 24) = v119;
  v129 = v198;
  v130 = *(v198 + 16);
  v195 = (v198 + 16);
  v206 = v130;
  v131 = v192;
  v132 = v179;
  (v130)(v192, v127, v179);
  v133 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v190 = *(v129 + 80);
  v188 = v133;
  v134 = (v178 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
  v186 = v134;
  v135 = swift_allocObject();
  v187 = *(v129 + 32);
  v189 = (v129 + 32);
  (v187)(v135 + v133, v131, v132);
  v136 = (v135 + v134);
  *v136 = sub_20B5DF4B8;
  v136[1] = v128;

  v137 = v197;
  sub_20C137C94();
  v138 = *(v129 + 8);
  v198 = v129 + 8;
  v139 = v127;
  v138(v127, v132);
  v140 = swift_allocObject();
  v140[2] = 0xD000000000000029;
  v140[3] = v213;
  v140[4] = 65;
  v141 = swift_allocObject();
  *(v141 + 16) = sub_20B5DF5EC;
  *(v141 + 24) = v140;
  v142 = v191;
  v143 = v194;
  (v203)(v191, v137, v194);
  v144 = v201;
  v145 = swift_allocObject();
  v202(&v204[v145], v142, v143);
  v146 = (v145 + v144);
  *v146 = sub_20B5DF4B0;
  v146[1] = v141;
  sub_20C137C94();
  (v212)(v137, v143);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  sub_20C139D64();
  v147 = swift_allocObject();
  v148 = v193;
  *(v147 + 16) = sub_20B5DA7D0;
  *(v147 + 24) = v148;
  v149 = v192;
  v150 = v139;
  (v206)(v192, v139, v132);
  v151 = v186;
  v152 = swift_allocObject();
  (v187)(v152 + v188, v149, v132);
  v153 = (v151 + v152);
  *v153 = sub_20B5DF4B8;
  v153[1] = v147;

  v154 = v191;
  sub_20C137C94();
  v138(v150, v132);
  v155 = swift_allocObject();
  v155[2] = 0xD000000000000029;
  v155[3] = v213;
  v155[4] = 69;
  v156 = swift_allocObject();
  *(v156 + 16) = sub_20B5DF5EC;
  *(v156 + 24) = v155;
  v157 = v180;
  v158 = v203;
  (v203)(v180, v154, v143);
  v159 = v201;
  v160 = v208;
  v161 = swift_allocObject();
  v202(&v204[v161], v157, v143);
  v162 = (v161 + v159);
  *v162 = sub_20B5DF4B0;
  v162[1] = v156;
  v163 = v197;
  sub_20C137C94();
  v164 = v214;
  (v212)(v154, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v165 = *(v164 + 64);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_20C14F990;
  v167 = v166 + ((v160 + 32) & ~v160);
  v158(v167, v199, v143);
  v158(v167 + v165, v200, v143);
  v158(v167 + 2 * v165, v210, v143);
  v168 = v196;
  v158(v167 + 3 * v165, v196, v143);
  v169 = v207;
  v158(v167 + 4 * v165, v207, v143);
  v158(v167 + 5 * v165, v163, v143);
  v170 = v167 + 6 * v165;
  v171 = v205;
  v158(v170, v205, v143);
  sub_20B51C88C(0, &qword_281100530);
  v172 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v173 = v212;
  (v212)(v163, v143);
  v173(v169, v143);
  v173(v171, v143);
  v173(v210, v143);
  v173(v168, v143);
  v173(v200, v143);
  v173(v199, v143);
  __swift_destroy_boxed_opaque_existential_1(&v216);
  __swift_destroy_boxed_opaque_existential_1(v215);
  __swift_destroy_boxed_opaque_existential_1(&v217);
  __swift_destroy_boxed_opaque_existential_1(v219);
  return __swift_destroy_boxed_opaque_existential_1(&v220);
}

uint64_t sub_20B5A35FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v181 = a1;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v198 = *(v179 - 8);
  v178 = *(v198 + 64);
  MEMORY[0x28223BE20](v179);
  v192 = &v175 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v177 = &v175 - v5;
  v189 = sub_20C13B894();
  v188 = *(v189 - 1);
  MEMORY[0x28223BE20](v189);
  v187 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v206 = *(v190 - 8);
  v186 = v206[8];
  MEMORY[0x28223BE20](v190);
  v195 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v176 = &v175 - v9;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v211 = *(v212 - 1);
  v209 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v208 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v204 = &v175 - v12;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v13 = *(v203 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v203);
  MEMORY[0x28223BE20](v15);
  v17 = &v175 - v16;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v214 = *(v194 - 8);
  v18 = *(v214 + 64);
  MEMORY[0x28223BE20](v194);
  v180 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v191 = &v175 - v20;
  MEMORY[0x28223BE20](v21);
  v197 = &v175 - v22;
  MEMORY[0x28223BE20](v23);
  v207 = &v175 - v24;
  MEMORY[0x28223BE20](v25);
  v205 = &v175 - v26;
  MEMORY[0x28223BE20](v27);
  v210 = &v175 - v28;
  MEMORY[0x28223BE20](v29);
  v196 = &v175 - v30;
  MEMORY[0x28223BE20](v31);
  v200 = &v175 - v32;
  MEMORY[0x28223BE20](v33);
  v199 = &v175 - v34;
  v35 = sub_20C13BB84();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v213 = 0x800000020C192FE0;
  sub_20C13BB64();
  (*(v36 + 8))(v38, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v219, v219[3]);
  sub_20C1398E4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20B5DEF04;
  *(v39 + 24) = v2;
  v40 = v17;
  v41 = v17;
  v42 = v203;
  (*(v13 + 16))(&v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v203);
  v43 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v44 = swift_allocObject();
  (*(v13 + 32))(v44 + v43, &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
  v45 = (v44 + ((v14 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_20B5DF4C4;
  v45[1] = v39;

  sub_20C137C94();
  (*(v13 + 8))(v41, v42);
  __swift_project_boxed_opaque_existential_1(v215, v215[3]);
  v46 = v204;
  sub_20C1392E4();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DEF4C;
  *(v47 + 24) = v2;
  v193 = v2;
  v48 = v211;
  v49 = v208;
  v50 = v46;
  v51 = v212;
  (*(v211 + 16))(v208, v46, v212);
  v52 = v48;
  v53 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v54 = (v209 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = v55 + v53;
  v57 = v51;
  (*(v52 + 32))(v56, v49, v51);
  v58 = (v55 + v54);
  *v58 = sub_20B5DF4C8;
  v58[1] = v47;

  v59 = v196;
  sub_20C137C94();
  (*(v52 + 8))(v50, v57);
  v60 = swift_allocObject();
  v60[2] = 0xD000000000000029;
  v60[3] = v213;
  v60[4] = 46;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_20B5DF5EC;
  *(v61 + 24) = v60;
  v62 = v214;
  v203 = *(v214 + 16);
  v209 = v214 + 16;
  v63 = v210;
  v64 = v194;
  (v203)(v210, v59, v194);
  v65 = v62;
  v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v208 = *(v62 + 80);
  v67 = v18 + v66;
  v68 = v66;
  v204 = v66;
  v69 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v202 = *(v65 + 32);
  v211 = v65 + 32;
  v202(v70 + v68, v63, v64);
  v71 = (v70 + v69);
  *v71 = sub_20B5DF4B0;
  v71[1] = v61;
  sub_20C137C94();
  v212 = *(v65 + 8);
  v214 = v65 + 8;
  (v212)(v59, v64);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  v72 = v188;
  v73 = v187;
  v74 = v189;
  (*(v188 + 104))(v187, *MEMORY[0x277D4FA68], v189);
  v75 = v176;
  sub_20C13B8F4();
  (*(v72 + 8))(v73, v74);
  v76 = swift_allocObject();
  v77 = v193;
  *(v76 + 16) = sub_20B5DEF94;
  *(v76 + 24) = v77;
  v78 = v206;
  v79 = v206[2];
  v188 = (v206 + 2);
  v189 = v79;
  v80 = v195;
  v81 = v190;
  (v79)(v195, v75, v190);
  v82 = v78;
  v83 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v187 = *(v78 + 80);
  v185 = v83;
  v84 = (v186 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v182 = v84;
  v85 = swift_allocObject();
  v184 = v82[4];
  v186 = v82 + 4;
  v184(v85 + v83, v80, v81);
  v86 = (v85 + v84);
  *v86 = sub_20B5DF4B4;
  v86[1] = v76;

  v87 = v210;
  sub_20C137C94();
  v88 = v82[1];
  v206 = v82 + 1;
  v183 = v88;
  v89 = v75;
  v88(v75, v81);
  v90 = swift_allocObject();
  v90[2] = 0xD000000000000029;
  v90[3] = v213;
  v90[4] = 50;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_20B5DF5EC;
  *(v91 + 24) = v90;
  v92 = v205;
  v93 = v194;
  (v203)(v205, v87, v194);
  v201 = v69;
  v94 = swift_allocObject();
  v95 = v204;
  v202(&v204[v94], v92, v93);
  v96 = (v94 + v69);
  *v96 = sub_20B5DF4B0;
  v96[1] = v91;
  sub_20C137C94();
  (v212)(v87, v93);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  sub_20C13B954();
  v97 = swift_allocObject();
  *(v97 + 16) = sub_20B5DEFD8;
  *(v97 + 24) = v77;
  v98 = v195;
  v99 = v81;
  (v189)(v195, v89, v81);
  v100 = v182;
  v101 = swift_allocObject();
  v184(v101 + v185, v98, v99);
  v102 = (v101 + v100);
  *v102 = sub_20B5DF4B4;
  v102[1] = v97;

  v103 = v205;
  sub_20C137C94();
  v183(v89, v99);
  v104 = swift_allocObject();
  v104[2] = 0xD000000000000029;
  v104[3] = v213;
  v104[4] = 54;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_20B5DF5EC;
  *(v105 + 24) = v104;
  v106 = v207;
  v107 = v203;
  (v203)(v207, v103, v93);
  v108 = v201;
  v109 = swift_allocObject();
  v110 = v202;
  v202(&v95[v109], v106, v93);
  v111 = (v109 + v108);
  *v111 = sub_20B5DF4B0;
  v111[1] = v105;
  sub_20C137C94();
  (v212)(v103, v93);
  v112 = v193;
  sub_20B5AE25C(&v220, &v216, &unk_282295ED0, sub_20B5DF64C, &unk_282295EF8, sub_20B5DF64C, v89);
  v113 = swift_allocObject();
  *(v113 + 16) = sub_20B5DF01C;
  *(v113 + 24) = v112;
  v114 = v195;
  v115 = v190;
  (v189)(v195, v89, v190);
  v116 = v182;
  v117 = swift_allocObject();
  v184(v117 + v185, v114, v115);
  v118 = (v117 + v116);
  *v118 = sub_20B5DF4B4;
  v118[1] = v113;
  v119 = v112;

  v120 = v207;
  sub_20C137C94();
  v183(v89, v115);
  v121 = swift_allocObject();
  v121[2] = 0xD000000000000029;
  v121[3] = v213;
  v121[4] = 61;
  v122 = swift_allocObject();
  *(v122 + 16) = sub_20B5DF5EC;
  *(v122 + 24) = v121;
  v123 = v197;
  v107(v197, v120, v93);
  v124 = v201;
  v125 = swift_allocObject();
  v110(&v204[v125], v123, v93);
  v126 = (v125 + v124);
  *v126 = sub_20B5DF4B0;
  v126[1] = v122;
  sub_20C137C94();
  (v212)(v120, v93);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  v127 = v177;
  sub_20C139D74();
  v128 = swift_allocObject();
  *(v128 + 16) = sub_20B5DF060;
  *(v128 + 24) = v119;
  v129 = v198;
  v130 = *(v198 + 16);
  v195 = (v198 + 16);
  v206 = v130;
  v131 = v192;
  v132 = v179;
  (v130)(v192, v127, v179);
  v133 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v190 = *(v129 + 80);
  v188 = v133;
  v134 = (v178 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
  v186 = v134;
  v135 = swift_allocObject();
  v187 = *(v129 + 32);
  v189 = (v129 + 32);
  (v187)(v135 + v133, v131, v132);
  v136 = (v135 + v134);
  *v136 = sub_20B5DF4B8;
  v136[1] = v128;

  v137 = v197;
  sub_20C137C94();
  v138 = *(v129 + 8);
  v198 = v129 + 8;
  v139 = v127;
  v138(v127, v132);
  v140 = swift_allocObject();
  v140[2] = 0xD000000000000029;
  v140[3] = v213;
  v140[4] = 65;
  v141 = swift_allocObject();
  *(v141 + 16) = sub_20B5DF5EC;
  *(v141 + 24) = v140;
  v142 = v191;
  v143 = v194;
  (v203)(v191, v137, v194);
  v144 = v201;
  v145 = swift_allocObject();
  v202(&v204[v145], v142, v143);
  v146 = (v145 + v144);
  *v146 = sub_20B5DF4B0;
  v146[1] = v141;
  sub_20C137C94();
  (v212)(v137, v143);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  sub_20C139D64();
  v147 = swift_allocObject();
  v148 = v193;
  *(v147 + 16) = sub_20B5DF078;
  *(v147 + 24) = v148;
  v149 = v192;
  v150 = v139;
  (v206)(v192, v139, v132);
  v151 = v186;
  v152 = swift_allocObject();
  (v187)(v152 + v188, v149, v132);
  v153 = (v151 + v152);
  *v153 = sub_20B5DF4B8;
  v153[1] = v147;

  v154 = v191;
  sub_20C137C94();
  v138(v150, v132);
  v155 = swift_allocObject();
  v155[2] = 0xD000000000000029;
  v155[3] = v213;
  v155[4] = 69;
  v156 = swift_allocObject();
  *(v156 + 16) = sub_20B5DF5EC;
  *(v156 + 24) = v155;
  v157 = v180;
  v158 = v203;
  (v203)(v180, v154, v143);
  v159 = v201;
  v160 = v208;
  v161 = swift_allocObject();
  v202(&v204[v161], v157, v143);
  v162 = (v161 + v159);
  *v162 = sub_20B5DF4B0;
  v162[1] = v156;
  v163 = v197;
  sub_20C137C94();
  v164 = v214;
  (v212)(v154, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v165 = *(v164 + 64);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_20C14F990;
  v167 = v166 + ((v160 + 32) & ~v160);
  v158(v167, v199, v143);
  v158(v167 + v165, v200, v143);
  v158(v167 + 2 * v165, v210, v143);
  v168 = v196;
  v158(v167 + 3 * v165, v196, v143);
  v169 = v207;
  v158(v167 + 4 * v165, v207, v143);
  v158(v167 + 5 * v165, v163, v143);
  v170 = v167 + 6 * v165;
  v171 = v205;
  v158(v170, v205, v143);
  sub_20B51C88C(0, &qword_281100530);
  v172 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v173 = v212;
  (v212)(v163, v143);
  v173(v169, v143);
  v173(v171, v143);
  v173(v210, v143);
  v173(v168, v143);
  v173(v200, v143);
  v173(v199, v143);
  __swift_destroy_boxed_opaque_existential_1(&v216);
  __swift_destroy_boxed_opaque_existential_1(v215);
  __swift_destroy_boxed_opaque_existential_1(&v217);
  __swift_destroy_boxed_opaque_existential_1(v219);
  return __swift_destroy_boxed_opaque_existential_1(&v220);
}

uint64_t sub_20B5A5244@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v181 = a1;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v198 = *(v179 - 8);
  v178 = *(v198 + 64);
  MEMORY[0x28223BE20](v179);
  v192 = &v175 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v177 = &v175 - v5;
  v189 = sub_20C13B894();
  v188 = *(v189 - 1);
  MEMORY[0x28223BE20](v189);
  v187 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v206 = *(v190 - 8);
  v186 = v206[8];
  MEMORY[0x28223BE20](v190);
  v195 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v176 = &v175 - v9;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v211 = *(v212 - 1);
  v209 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v208 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v204 = &v175 - v12;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v13 = *(v203 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v203);
  MEMORY[0x28223BE20](v15);
  v17 = &v175 - v16;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v214 = *(v194 - 8);
  v18 = *(v214 + 64);
  MEMORY[0x28223BE20](v194);
  v180 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v191 = &v175 - v20;
  MEMORY[0x28223BE20](v21);
  v197 = &v175 - v22;
  MEMORY[0x28223BE20](v23);
  v207 = &v175 - v24;
  MEMORY[0x28223BE20](v25);
  v205 = &v175 - v26;
  MEMORY[0x28223BE20](v27);
  v210 = &v175 - v28;
  MEMORY[0x28223BE20](v29);
  v196 = &v175 - v30;
  MEMORY[0x28223BE20](v31);
  v200 = &v175 - v32;
  MEMORY[0x28223BE20](v33);
  v199 = &v175 - v34;
  v35 = sub_20C13BB84();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v213 = 0x800000020C192FE0;
  sub_20C13BB64();
  (*(v36 + 8))(v38, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v219, v219[3]);
  sub_20C1398E4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20B5DED78;
  *(v39 + 24) = v2;
  v40 = v17;
  v41 = v17;
  v42 = v203;
  (*(v13 + 16))(&v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v203);
  v43 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v44 = swift_allocObject();
  (*(v13 + 32))(v44 + v43, &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
  v45 = (v44 + ((v14 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_20B5DF4C4;
  v45[1] = v39;

  sub_20C137C94();
  (*(v13 + 8))(v41, v42);
  __swift_project_boxed_opaque_existential_1(v215, v215[3]);
  v46 = v204;
  sub_20C1392E4();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DEDC0;
  *(v47 + 24) = v2;
  v193 = v2;
  v48 = v211;
  v49 = v208;
  v50 = v46;
  v51 = v212;
  (*(v211 + 16))(v208, v46, v212);
  v52 = v48;
  v53 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v54 = (v209 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = v55 + v53;
  v57 = v51;
  (*(v52 + 32))(v56, v49, v51);
  v58 = (v55 + v54);
  *v58 = sub_20B5DF4C8;
  v58[1] = v47;

  v59 = v196;
  sub_20C137C94();
  (*(v52 + 8))(v50, v57);
  v60 = swift_allocObject();
  v60[2] = 0xD000000000000029;
  v60[3] = v213;
  v60[4] = 46;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_20B5DF5EC;
  *(v61 + 24) = v60;
  v62 = v214;
  v203 = *(v214 + 16);
  v209 = v214 + 16;
  v63 = v210;
  v64 = v194;
  (v203)(v210, v59, v194);
  v65 = v62;
  v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v208 = *(v62 + 80);
  v67 = v18 + v66;
  v68 = v66;
  v204 = v66;
  v69 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v202 = *(v65 + 32);
  v211 = v65 + 32;
  v202(v70 + v68, v63, v64);
  v71 = (v70 + v69);
  *v71 = sub_20B5DF4B0;
  v71[1] = v61;
  sub_20C137C94();
  v212 = *(v65 + 8);
  v214 = v65 + 8;
  (v212)(v59, v64);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  v72 = v188;
  v73 = v187;
  v74 = v189;
  (*(v188 + 104))(v187, *MEMORY[0x277D4FA68], v189);
  v75 = v176;
  sub_20C13B8F4();
  (*(v72 + 8))(v73, v74);
  v76 = swift_allocObject();
  v77 = v193;
  *(v76 + 16) = sub_20B5DEE08;
  *(v76 + 24) = v77;
  v78 = v206;
  v79 = v206[2];
  v188 = (v206 + 2);
  v189 = v79;
  v80 = v195;
  v81 = v190;
  (v79)(v195, v75, v190);
  v82 = v78;
  v83 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v187 = *(v78 + 80);
  v185 = v83;
  v84 = (v186 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v182 = v84;
  v85 = swift_allocObject();
  v184 = v82[4];
  v186 = v82 + 4;
  v184(v85 + v83, v80, v81);
  v86 = (v85 + v84);
  *v86 = sub_20B5DF4B4;
  v86[1] = v76;

  v87 = v210;
  sub_20C137C94();
  v88 = v82[1];
  v206 = v82 + 1;
  v183 = v88;
  v89 = v75;
  v88(v75, v81);
  v90 = swift_allocObject();
  v90[2] = 0xD000000000000029;
  v90[3] = v213;
  v90[4] = 50;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_20B5DF5EC;
  *(v91 + 24) = v90;
  v92 = v205;
  v93 = v194;
  (v203)(v205, v87, v194);
  v201 = v69;
  v94 = swift_allocObject();
  v95 = v204;
  v202(&v204[v94], v92, v93);
  v96 = (v94 + v69);
  *v96 = sub_20B5DF4B0;
  v96[1] = v91;
  sub_20C137C94();
  (v212)(v87, v93);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  sub_20C13B954();
  v97 = swift_allocObject();
  *(v97 + 16) = sub_20B5DEE4C;
  *(v97 + 24) = v77;
  v98 = v195;
  v99 = v81;
  (v189)(v195, v89, v81);
  v100 = v182;
  v101 = swift_allocObject();
  v184(v101 + v185, v98, v99);
  v102 = (v101 + v100);
  *v102 = sub_20B5DF4B4;
  v102[1] = v97;

  v103 = v205;
  sub_20C137C94();
  v183(v89, v99);
  v104 = swift_allocObject();
  v104[2] = 0xD000000000000029;
  v104[3] = v213;
  v104[4] = 54;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_20B5DF5EC;
  *(v105 + 24) = v104;
  v106 = v207;
  v107 = v203;
  (v203)(v207, v103, v93);
  v108 = v201;
  v109 = swift_allocObject();
  v110 = v202;
  v202(&v95[v109], v106, v93);
  v111 = (v109 + v108);
  *v111 = sub_20B5DF4B0;
  v111[1] = v105;
  sub_20C137C94();
  (v212)(v103, v93);
  v112 = v193;
  sub_20B5AE25C(&v220, &v216, &unk_282295980, sub_20B5DF64C, &unk_2822959A8, sub_20B5DF64C, v89);
  v113 = swift_allocObject();
  *(v113 + 16) = sub_20B5DEE90;
  *(v113 + 24) = v112;
  v114 = v195;
  v115 = v190;
  (v189)(v195, v89, v190);
  v116 = v182;
  v117 = swift_allocObject();
  v184(v117 + v185, v114, v115);
  v118 = (v117 + v116);
  *v118 = sub_20B5DF4B4;
  v118[1] = v113;
  v119 = v112;

  v120 = v207;
  sub_20C137C94();
  v183(v89, v115);
  v121 = swift_allocObject();
  v121[2] = 0xD000000000000029;
  v121[3] = v213;
  v121[4] = 61;
  v122 = swift_allocObject();
  *(v122 + 16) = sub_20B5DF5EC;
  *(v122 + 24) = v121;
  v123 = v197;
  v107(v197, v120, v93);
  v124 = v201;
  v125 = swift_allocObject();
  v110(&v204[v125], v123, v93);
  v126 = (v125 + v124);
  *v126 = sub_20B5DF4B0;
  v126[1] = v122;
  sub_20C137C94();
  (v212)(v120, v93);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  v127 = v177;
  sub_20C139D74();
  v128 = swift_allocObject();
  *(v128 + 16) = sub_20B5DEED4;
  *(v128 + 24) = v119;
  v129 = v198;
  v130 = *(v198 + 16);
  v195 = (v198 + 16);
  v206 = v130;
  v131 = v192;
  v132 = v179;
  (v130)(v192, v127, v179);
  v133 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v190 = *(v129 + 80);
  v188 = v133;
  v134 = (v178 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
  v186 = v134;
  v135 = swift_allocObject();
  v187 = *(v129 + 32);
  v189 = (v129 + 32);
  (v187)(v135 + v133, v131, v132);
  v136 = (v135 + v134);
  *v136 = sub_20B5DF4B8;
  v136[1] = v128;

  v137 = v197;
  sub_20C137C94();
  v138 = *(v129 + 8);
  v198 = v129 + 8;
  v139 = v127;
  v138(v127, v132);
  v140 = swift_allocObject();
  v140[2] = 0xD000000000000029;
  v140[3] = v213;
  v140[4] = 65;
  v141 = swift_allocObject();
  *(v141 + 16) = sub_20B5DF5EC;
  *(v141 + 24) = v140;
  v142 = v191;
  v143 = v194;
  (v203)(v191, v137, v194);
  v144 = v201;
  v145 = swift_allocObject();
  v202(&v204[v145], v142, v143);
  v146 = (v145 + v144);
  *v146 = sub_20B5DF4B0;
  v146[1] = v141;
  sub_20C137C94();
  (v212)(v137, v143);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  sub_20C139D64();
  v147 = swift_allocObject();
  v148 = v193;
  *(v147 + 16) = sub_20B5DEEEC;
  *(v147 + 24) = v148;
  v149 = v192;
  v150 = v139;
  (v206)(v192, v139, v132);
  v151 = v186;
  v152 = swift_allocObject();
  (v187)(v152 + v188, v149, v132);
  v153 = (v151 + v152);
  *v153 = sub_20B5DF4B8;
  v153[1] = v147;

  v154 = v191;
  sub_20C137C94();
  v138(v150, v132);
  v155 = swift_allocObject();
  v155[2] = 0xD000000000000029;
  v155[3] = v213;
  v155[4] = 69;
  v156 = swift_allocObject();
  *(v156 + 16) = sub_20B5DF5EC;
  *(v156 + 24) = v155;
  v157 = v180;
  v158 = v203;
  (v203)(v180, v154, v143);
  v159 = v201;
  v160 = v208;
  v161 = swift_allocObject();
  v202(&v204[v161], v157, v143);
  v162 = (v161 + v159);
  *v162 = sub_20B5DF4B0;
  v162[1] = v156;
  v163 = v197;
  sub_20C137C94();
  v164 = v214;
  (v212)(v154, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v165 = *(v164 + 64);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_20C14F990;
  v167 = v166 + ((v160 + 32) & ~v160);
  v158(v167, v199, v143);
  v158(v167 + v165, v200, v143);
  v158(v167 + 2 * v165, v210, v143);
  v168 = v196;
  v158(v167 + 3 * v165, v196, v143);
  v169 = v207;
  v158(v167 + 4 * v165, v207, v143);
  v158(v167 + 5 * v165, v163, v143);
  v170 = v167 + 6 * v165;
  v171 = v205;
  v158(v170, v205, v143);
  sub_20B51C88C(0, &qword_281100530);
  v172 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v173 = v212;
  (v212)(v163, v143);
  v173(v169, v143);
  v173(v171, v143);
  v173(v210, v143);
  v173(v168, v143);
  v173(v200, v143);
  v173(v199, v143);
  __swift_destroy_boxed_opaque_existential_1(&v216);
  __swift_destroy_boxed_opaque_existential_1(v215);
  __swift_destroy_boxed_opaque_existential_1(&v217);
  __swift_destroy_boxed_opaque_existential_1(v219);
  return __swift_destroy_boxed_opaque_existential_1(&v220);
}

BOOL sub_20B5A6E8C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B598280(1);
  }

  return Strong == 0;
}

uint64_t sub_20B5A6EF0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B599C80();
  }

  return result;
}

uint64_t sub_20B5A6F48()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B598280(1);
  }

  return result;
}

void sub_20B5A8768(void (*a1)(unint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, char *, uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (*a19)(char *, char *), void (*a20)(uint64_t, char *, uint64_t), uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void (*a25)(uint64_t, uint64_t, uint64_t), void *a26, void (*a27)(uint64_t, char *, uint64_t), uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v685 = a8;
  v779 = a9;
  v770 = a4;
  v771 = a7;
  v773 = a5;
  v774 = a6;
  v775 = a3;
  v772 = a2;
  v780 = a1;
  v622 = a52;
  v620 = a51;
  v616 = a50;
  v612 = a49;
  v630 = a48;
  v629 = a47;
  v627 = a46;
  v625 = a45;
  v623 = a44;
  v617 = a43;
  v611 = a42;
  v608 = a41;
  v618 = a40;
  v615 = a39;
  v613 = a38;
  v610 = a37;
  v687 = a36;
  v628 = a35;
  v626 = a34;
  v624 = a33;
  v621 = a32;
  v619 = a31;
  v614 = a30;
  v609 = a29;
  v607 = a28;
  v638 = a27;
  v742 = a26;
  v759 = a25;
  v640 = a24;
  v639 = a23;
  v683 = a22;
  v678 = a21;
  v680 = a20;
  v697 = a19;
  v684 = a18;
  v682 = a17;
  v681 = a16;
  v675 = a15;
  v679 = a14;
  v674 = a13;
  v677 = a12;
  v673 = a11;
  v676 = a10;
  v692 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30);
  v691 = *(v692 - 8);
  v52 = MEMORY[0x28223BE20](v692);
  v689 = &v602 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v688 = v53;
  MEMORY[0x28223BE20](v52);
  v690 = &v602 - v54;
  v696 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0);
  v695 = *(v696 - 8);
  v55 = MEMORY[0x28223BE20](v696);
  v694 = &v602 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v693 = v56;
  MEMORY[0x28223BE20](v55);
  v746 = &v602 - v57;
  v758 = sub_20C1344C4();
  v747 = *(v758 - 8);
  v58 = MEMORY[0x28223BE20](v758);
  v756 = &v602 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v686 = v59;
  MEMORY[0x28223BE20](v58);
  v757 = &v602 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0);
  v62 = MEMORY[0x28223BE20](v61 - 8);
  v633 = &v602 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v62);
  v636 = &v602 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v634 = &v602 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v637 = &v602 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v632 = &v602 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v635 = &v602 - v73;
  MEMORY[0x28223BE20](v72);
  v631 = &v602 - v74;
  v670 = sub_20C134284();
  v669 = *(v670 - 8);
  MEMORY[0x28223BE20](v670);
  v668 = &v602 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_20C132C14();
  v77 = *(v76 - 8);
  v768 = v76;
  v769 = v77;
  MEMORY[0x28223BE20](v76);
  v749 = &v602 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v699 = sub_20C138894();
  v698 = *(v699 - 8);
  v79 = MEMORY[0x28223BE20](v699);
  v603 = &v602 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v667 = &v602 - v81;
  v82 = sub_20C137254();
  v763 = *(v82 - 8);
  v764 = v82;
  v83 = MEMORY[0x28223BE20](v82);
  v762 = &v602 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x28223BE20](v83);
  v761 = &v602 - v86;
  v755 = v87;
  MEMORY[0x28223BE20](v85);
  v760 = &v602 - v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v743 = *(v89 - 8);
  v90 = MEMORY[0x28223BE20](v89 - 8);
  v745 = &v602 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = MEMORY[0x28223BE20](v90);
  v754 = &v602 - v93;
  v744 = v94;
  MEMORY[0x28223BE20](v92);
  v753 = &v602 - v95;
  started = type metadata accessor for StartWorkoutSessionRequest();
  v96 = MEMORY[0x28223BE20](started);
  v672 = &v602 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = MEMORY[0x28223BE20](v96);
  v671 = &v602 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v752 = &v602 - v101;
  MEMORY[0x28223BE20](v100);
  v751 = &v602 - v102;
  v740 = sub_20C133954();
  v739 = *(v740 - 8);
  MEMORY[0x28223BE20](v740);
  v748 = &v602 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v738 = sub_20C134014();
  v737 = *(v738 - 8);
  MEMORY[0x28223BE20](v738);
  v736 = &v602 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50);
  v651 = *(v105 - 8);
  v106 = *(v651 + 64);
  v107 = MEMORY[0x28223BE20](v105 - 8);
  v665 = &v602 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = MEMORY[0x28223BE20](v107);
  v659 = &v602 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v661 = &v602 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v650 = &v602 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v663 = &v602 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v656 = &v602 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v654 = &v602 - v119;
  v120 = MEMORY[0x28223BE20](v118);
  v653 = &v602 - v121;
  MEMORY[0x28223BE20](v120);
  v649 = &v602 - v122;
  v123 = sub_20C1352E4();
  v124 = *(v123 - 8);
  v766 = v123;
  v767 = v124;
  v125 = MEMORY[0x28223BE20](v123);
  v666 = &v602 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = MEMORY[0x28223BE20](v125);
  v660 = &v602 - v128;
  v129 = MEMORY[0x28223BE20](v127);
  v662 = &v602 - v130;
  v131 = MEMORY[0x28223BE20](v129);
  v664 = &v602 - v132;
  v133 = MEMORY[0x28223BE20](v131);
  v658 = &v602 - v134;
  v135 = MEMORY[0x28223BE20](v133);
  v657 = &v602 - v136;
  v137 = MEMORY[0x28223BE20](v135);
  v655 = &v602 - v138;
  MEMORY[0x28223BE20](v137);
  v652 = &v602 - v139;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  v648 = *(v140 - 8);
  v141 = *(v648 + 64);
  v142 = MEMORY[0x28223BE20](v140 - 8);
  v733 = &v602 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = MEMORY[0x28223BE20](v142);
  v730 = &v602 - v144;
  v145 = MEMORY[0x28223BE20](v143);
  v731 = &v602 - v146;
  v147 = MEMORY[0x28223BE20](v145);
  v646 = &v602 - v148;
  v149 = MEMORY[0x28223BE20](v147);
  v732 = &v602 - v150;
  v151 = MEMORY[0x28223BE20](v149);
  v729 = &v602 - v152;
  v153 = MEMORY[0x28223BE20](v151);
  v728 = &v602 - v154;
  v155 = MEMORY[0x28223BE20](v153);
  v727 = &v602 - v156;
  MEMORY[0x28223BE20](v155);
  v726 = &v602 - v157;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  v159 = MEMORY[0x28223BE20](v158 - 8);
  v725 = &v602 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = MEMORY[0x28223BE20](v159);
  v722 = &v602 - v162;
  v163 = MEMORY[0x28223BE20](v161);
  v723 = &v602 - v164;
  v165 = MEMORY[0x28223BE20](v163);
  v724 = &v602 - v166;
  v167 = MEMORY[0x28223BE20](v165);
  v721 = &v602 - v168;
  v169 = MEMORY[0x28223BE20](v167);
  v720 = &v602 - v170;
  v171 = MEMORY[0x28223BE20](v169);
  v719 = &v602 - v172;
  MEMORY[0x28223BE20](v171);
  v718 = &v602 - v173;
  v174 = sub_20C134F24();
  v175 = *(v174 - 8);
  v776 = v174;
  v777 = v175;
  v176 = MEMORY[0x28223BE20](v174);
  v717 = &v602 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = MEMORY[0x28223BE20](v176);
  v714 = &v602 - v179;
  v180 = MEMORY[0x28223BE20](v178);
  v715 = &v602 - v181;
  v182 = MEMORY[0x28223BE20](v180);
  v716 = &v602 - v183;
  v184 = MEMORY[0x28223BE20](v182);
  v713 = &v602 - v185;
  v186 = MEMORY[0x28223BE20](v184);
  v712 = &v602 - v187;
  v188 = MEMORY[0x28223BE20](v186);
  v711 = &v602 - v189;
  MEMORY[0x28223BE20](v188);
  v709 = &v602 - v190;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  v192 = MEMORY[0x28223BE20](v191 - 8);
  v710 = &v602 - ((v193 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = MEMORY[0x28223BE20](v192);
  v706 = &v602 - v195;
  v196 = MEMORY[0x28223BE20](v194);
  v707 = &v602 - v197;
  v198 = MEMORY[0x28223BE20](v196);
  v708 = &v602 - v199;
  v200 = MEMORY[0x28223BE20](v198);
  v705 = &v602 - v201;
  v202 = MEMORY[0x28223BE20](v200);
  v704 = &v602 - v203;
  v204 = MEMORY[0x28223BE20](v202);
  v703 = &v602 - v205;
  MEMORY[0x28223BE20](v204);
  v702 = &v602 - v206;
  v765 = type metadata accessor for ShelfMetricAction();
  v750 = *(v765 - 8);
  v207 = MEMORY[0x28223BE20](v765);
  v605 = &v602 - ((v208 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = MEMORY[0x28223BE20](v207);
  v606 = &v602 - v210;
  v211 = MEMORY[0x28223BE20](v209);
  v604 = &v602 - v212;
  v213 = MEMORY[0x28223BE20](v211);
  v735 = &v602 - v214;
  v215 = MEMORY[0x28223BE20](v213);
  v645 = &v602 - v216;
  v217 = MEMORY[0x28223BE20](v215);
  v647 = &v602 - v218;
  v219 = MEMORY[0x28223BE20](v217);
  v734 = &v602 - v220;
  v221 = MEMORY[0x28223BE20](v219);
  v642 = &v602 - v222;
  v223 = MEMORY[0x28223BE20](v221);
  v644 = &v602 - v224;
  v225 = MEMORY[0x28223BE20](v223);
  v643 = &v602 - v226;
  MEMORY[0x28223BE20](v225);
  v641 = &v602 - v227;
  v701 = sub_20C138B94();
  v700 = *(v701 - 8);
  v228 = MEMORY[0x28223BE20](v701);
  v230 = &v602 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v228);
  v232 = &v602 - v231;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  v234 = MEMORY[0x28223BE20](v233 - 8);
  v236 = &v602 - ((v235 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v234);
  v238 = &v602 - v237;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622F0);
  v240 = MEMORY[0x28223BE20](v239 - 8);
  v242 = &v602 - ((v241 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v240);
  v244 = &v602 - v243;
  v245 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v245);
  v247 = &v602 - ((v246 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = type metadata accessor for ButtonAction(0);
  sub_20B5DF20C(v780 + *(v248 + 28), v247, type metadata accessor for ButtonAction.ActionType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8);
      v342 = *(v341 + 64);
      sub_20B5DF134(&v247[*(v341 + 48)], v244, &qword_27C7622F0);
      sub_20B5DF134(&v247[v342], v238, &unk_27C768660);
      sub_20B52F9E8(v244, v242, &qword_27C7622F0);
      v343 = v700;
      v344 = v701;
      if ((*(v700 + 48))(v242, 1, v701) == 1)
      {
        sub_20B520158(v242, &qword_27C7622F0);
      }

      else
      {
        (*(v343 + 32))(v232, v242, v344);
        sub_20B52F9E8(v238, v236, &unk_27C768660);
        v502 = v698;
        v503 = v699;
        if ((*(v698 + 48))(v236, 1, v699) != 1)
        {
          v601 = v603;
          (*(v502 + 32))(v603, v236, v503);
          v697(v232, v601);
          (*(v502 + 8))(v601, v503);
          (*(v343 + 8))(v232, v344);
          sub_20B520158(v238, &unk_27C768660);
          v339 = &qword_27C7622F0;
          v340 = v244;
          goto LABEL_21;
        }

        (*(v343 + 8))(v232, v344);
        sub_20B520158(v236, &unk_27C768660);
      }

      sub_20B5D9900();
      v504 = swift_allocError();
      *(swift_allocObject() + 16) = v504;
      v505 = v504;
      sub_20C137CA4();
      sub_20B520158(v238, &unk_27C768660);
      sub_20B520158(v244, &qword_27C7622F0);

      return;
    case 2u:
      v301 = *v247;
      v302 = sub_20C136664();
      (*(*(v302 - 8) + 56))(v702, 1, 1, v302);
      (*(v777 + 104))(v709, *MEMORY[0x277D513C0], v776);
      (*(v769 + 56))(v718, 1, 1, v768);
      sub_20B52F9E8(v770, v726, &unk_27C7621D0);
      v303 = v649;
      sub_20B52F9E8(v771, v649, &unk_27C765D50);
      v305 = v766;
      v304 = v767;
      v306 = *(v767 + 48);
      v307 = v306(v303, 1, v766);
      v780 = v301;
      if (v307 == 1)
      {
        v308 = v652;
        (*(v304 + 104))(v652, *MEMORY[0x277D51768], v305);
        v309 = v306(v303, 1, v305);
        v310 = v778;
        v312 = v774;
        v311 = v775;
        v313 = v772;
        if (v309 != 1)
        {
          sub_20B520158(v303, &unk_27C765D50);
        }
      }

      else
      {
        v308 = v652;
        (*(v304 + 32))(v652, v303, v305);
        v310 = v778;
        v312 = v774;
        v311 = v775;
        v313 = v772;
      }

      v484 = v765;
      v485 = *(v765 + 44);
      v486 = sub_20C136E94();
      v487 = v641;
      (*(*(v486 - 8) + 56))(&v641[v485], 1, 1, v486);
      v488 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      sub_20B5DF134(v702, v487, &unk_27C7622E0);
      (*(v777 + 32))(v487 + v484[5], v709, v776);
      sub_20B5DF134(v718, v487 + v484[6], &unk_27C7617F0);
      v489 = (v487 + v484[7]);
      *v489 = v313;
      v489[1] = v311;
      sub_20B5DF134(v726, v487 + v484[8], &unk_27C7621D0);
      v490 = (v487 + v484[9]);
      *v490 = v773;
      v490[1] = v312;
      (*(v304 + 32))(v487 + v484[10], v308, v305);
      *(v487 + v484[12]) = v488;
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        v759(v310, v487, Strong);
        swift_unknownObjectRelease();
      }

      __swift_project_boxed_opaque_existential_1((v310 + *v742), *(v310 + *v742 + 24));
      sub_20C13A1E4();
      goto LABEL_65;
    case 3u:
      (*(v737 + 32))(v736, v247, v738);
      v314 = sub_20C136664();
      (*(*(v314 - 8) + 56))(v703, 1, 1, v314);
      (*(v777 + 104))(v711, *MEMORY[0x277D51488], v776);
      (*(v769 + 56))(v719, 1, 1, v768);
      sub_20B52F9E8(v770, v727, &unk_27C7621D0);
      v315 = v653;
      sub_20B52F9E8(v771, v653, &unk_27C765D50);
      v317 = v766;
      v316 = v767;
      v318 = *(v767 + 48);
      if (v318(v315, 1, v766) == 1)
      {
        v319 = v655;
        (*(v316 + 104))(v655, *MEMORY[0x277D51778], v317);
        v272 = v318(v315, 1, v317) == 1;
        v320 = v778;
        v321 = v315;
        v323 = v774;
        v322 = v775;
        v324 = v772;
        v325 = v765;
        if (!v272)
        {
          sub_20B520158(v321, &unk_27C765D50);
        }
      }

      else
      {
        v319 = v655;
        (*(v316 + 32))(v655, v315, v317);
        v320 = v778;
        v323 = v774;
        v322 = v775;
        v324 = v772;
        v325 = v765;
      }

      v492 = v325[11];
      v493 = sub_20C136E94();
      v494 = v643;
      (*(*(v493 - 8) + 56))(&v643[v492], 1, 1, v493);
      v495 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      sub_20B5DF134(v703, v494, &unk_27C7622E0);
      (*(v777 + 32))(v494 + v325[5], v711, v776);
      sub_20B5DF134(v719, v494 + v325[6], &unk_27C7617F0);
      v496 = (v494 + v325[7]);
      *v496 = v324;
      v496[1] = v322;
      sub_20B5DF134(v727, v494 + v325[8], &unk_27C7621D0);
      v497 = (v494 + v325[9]);
      *v497 = v773;
      v497[1] = v323;
      (*(v316 + 32))(v494 + v325[10], v319, v317);
      *(v494 + v325[12]) = v495;
      v498 = swift_unknownObjectWeakLoadStrong();
      if (v498)
      {
        v499 = v498;
        v500 = v631;
        sub_20B5DF20C(v494, v631, type metadata accessor for ShelfMetricAction);
        (*(v750 + 56))(v500, 0, 1, v325);

        v501 = v736;
        sub_20B5D7324(v320, v736, v500, v499, v638);
        swift_unknownObjectRelease();
        sub_20B520158(v500, &unk_27C7622D0);
      }

      else
      {

        v501 = v736;
      }

      _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
      sub_20B5DF274(v494, type metadata accessor for ShelfMetricAction);
      (*(v737 + 8))(v501, v738);
      return;
    case 4u:
      (*(v739 + 32))(v748, v247, v740);
      v266 = sub_20C136664();
      (*(*(v266 - 8) + 56))(v704, 1, 1, v266);
      (*(v777 + 104))(v712, *MEMORY[0x277D51488], v776);
      (*(v769 + 56))(v720, 1, 1, v768);
      sub_20B52F9E8(v770, v728, &unk_27C7621D0);
      v267 = v654;
      sub_20B52F9E8(v771, v654, &unk_27C765D50);
      v269 = v766;
      v268 = v767;
      v270 = *(v767 + 48);
      if (v270(v267, 1, v766) == 1)
      {
        v271 = v657;
        (*(v268 + 104))(v657, *MEMORY[0x277D51778], v269);
        v272 = v270(v267, 1, v269) == 1;
        v273 = v778;
        v274 = v267;
        v276 = v774;
        v275 = v775;
        v277 = v772;
        v278 = v765;
        if (!v272)
        {
          sub_20B520158(v274, &unk_27C765D50);
        }
      }

      else
      {
        v271 = v657;
        (*(v268 + 32))(v657, v267, v269);
        v273 = v778;
        v276 = v774;
        v275 = v775;
        v277 = v772;
        v278 = v765;
      }

      v458 = v278[11];
      v459 = sub_20C136E94();
      v460 = v644;
      (*(*(v459 - 8) + 56))(&v644[v458], 1, 1, v459);
      v461 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      sub_20B5DF134(v704, v460, &unk_27C7622E0);
      (*(v777 + 32))(v460 + v278[5], v712, v776);
      sub_20B5DF134(v720, v460 + v278[6], &unk_27C7617F0);
      v462 = (v460 + v278[7]);
      *v462 = v277;
      v462[1] = v275;
      sub_20B5DF134(v728, v460 + v278[8], &unk_27C7621D0);
      v463 = (v460 + v278[9]);
      *v463 = v773;
      v463[1] = v276;
      (*(v268 + 32))(v460 + v278[10], v271, v269);
      *(v460 + v278[12]) = v461;
      v464 = swift_unknownObjectWeakLoadStrong();
      if (v464)
      {
        v465 = v464;
        v466 = v273;
        v467 = v635;
        sub_20B5DF20C(v460, v635, type metadata accessor for ShelfMetricAction);
        v468 = v750;
        (*(v750 + 56))(v467, 0, 1, v278);
        v469 = v632;
        sub_20B52F9E8(v467, v632, &unk_27C7622D0);
        if ((*(v468 + 48))(v469, 1, v278) == 1)
        {

          sub_20B520158(v469, &unk_27C7622D0);
        }

        else
        {
          v588 = v604;
          sub_20B5D9970(v469, v604, type metadata accessor for ShelfMetricAction);

          v759(v466, v588, v465);
          sub_20B5DF274(v588, type metadata accessor for ShelfMetricAction);
        }

        v589 = v465 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v590 = *(v589 + 8);
          ObjectType = swift_getObjectType();
          (*(v590 + 48))(v465, v748, ObjectType, v590);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        sub_20B520158(v467, &unk_27C7622D0);
      }

      else
      {
      }

      _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
      sub_20B5DF274(v460, type metadata accessor for ShelfMetricAction);
      (*(v739 + 8))(v748, v740);
      return;
    case 5u:
    case 0xEu:
      _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
      return;
    case 6u:
      v345 = *v247;
      v346 = sub_20C136664();
      (*(*(v346 - 8) + 56))(v705, 1, 1, v346);
      (*(v777 + 104))(v713, *MEMORY[0x277D51440], v776);
      (*(v769 + 56))(v721, 1, 1, v768);
      sub_20B52F9E8(v770, v729, &unk_27C7621D0);
      v347 = v656;
      sub_20B52F9E8(v771, v656, &unk_27C765D50);
      v349 = v766;
      v348 = v767;
      v350 = *(v767 + 48);
      v351 = v350(v347, 1, v766);
      v780 = v345;
      if (v351 == 1)
      {
        v352 = v658;
        (*(v348 + 104))(v658, *MEMORY[0x277D51768], v349);
        v353 = v350(v347, 1, v349);
        v354 = v778;
        v356 = v774;
        v355 = v775;
        v357 = v772;
        if (v353 != 1)
        {
          sub_20B520158(v347, &unk_27C765D50);
        }
      }

      else
      {
        v352 = v658;
        (*(v348 + 32))(v658, v347, v349);
        v354 = v778;
        v356 = v774;
        v355 = v775;
        v357 = v772;
      }

      v506 = v765;
      v507 = *(v765 + 44);
      v508 = sub_20C136E94();
      v487 = v642;
      (*(*(v508 - 8) + 56))(&v642[v507], 1, 1, v508);
      v509 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      sub_20B5DF134(v705, v487, &unk_27C7622E0);
      (*(v777 + 32))(v487 + v506[5], v713, v776);
      sub_20B5DF134(v721, v487 + v506[6], &unk_27C7617F0);
      v510 = (v487 + v506[7]);
      *v510 = v357;
      v510[1] = v355;
      sub_20B5DF134(v729, v487 + v506[8], &unk_27C7621D0);
      v511 = (v487 + v506[9]);
      *v511 = v773;
      v511[1] = v356;
      (*(v348 + 32))(v487 + v506[10], v352, v349);
      *(v487 + v506[12]) = v509;
      v512 = swift_unknownObjectWeakLoadStrong();

      if (v512)
      {
        v759(v354, v487, v512);
        swift_unknownObjectRelease();
      }

      __swift_project_boxed_opaque_existential_1((v354 + *v742), *(v354 + *v742 + 24));
      sub_20C13A1F4();
LABEL_65:

      v456 = type metadata accessor for ShelfMetricAction;
      v513 = v487;
      goto LABEL_98;
    case 7u:
      v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0);
      v359 = *&v247[v358[12]];
      v360 = v358[16];
      v361 = v358[20];
      sub_20B5D9970(v247, v751, type metadata accessor for StartWorkoutSessionRequest);
      sub_20B5DF134(&v247[v360], v753, &qword_27C76A410);
      v362 = *(v763 + 32);
      v761 = (v763 + 32);
      v780 = v362;
      v362(v760, &v247[v361], v764);
      v363 = sub_20C136664();
      (*(*(v363 - 8) + 56))(v708, 1, 1, v363);
      (*(v777 + 104))(v716, *MEMORY[0x277D51448], v776);
      (*(v769 + 56))(v724, 1, 1, v768);
      sub_20B52F9E8(v770, v732, &unk_27C7621D0);
      v364 = v663;
      sub_20B52F9E8(v771, v663, &unk_27C765D50);
      v366 = v766;
      v365 = v767;
      v367 = *(v767 + 48);
      if (v367(v364, 1, v766) == 1)
      {
        v368 = v664;
        (*(v365 + 104))(v664, *MEMORY[0x277D51768], v366);
        v369 = v367(v364, 1, v366);
        v370 = v778;
        v372 = v774;
        v371 = v775;
        v373 = v772;
        if (v369 != 1)
        {
          sub_20B520158(v364, &unk_27C765D50);
        }
      }

      else
      {
        v368 = v664;
        (*(v365 + 32))(v664, v364, v366);
        v370 = v778;
        v372 = v774;
        v371 = v775;
        v373 = v772;
      }

      v514 = v765;
      v515 = *(v765 + 44);
      v516 = sub_20C136E94();
      v517 = v734;
      (*(*(v516 - 8) + 56))(v734 + v515, 1, 1, v516);
      v518 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      sub_20B5DF134(v708, v517, &unk_27C7622E0);
      (*(v777 + 32))(v517 + v514[5], v716, v776);
      sub_20B5DF134(v724, v517 + v514[6], &unk_27C7617F0);
      v519 = (v517 + v514[7]);
      *v519 = v373;
      v519[1] = v371;
      sub_20B5DF134(v732, v517 + v514[8], &unk_27C7621D0);
      v520 = (v517 + v514[9]);
      *v520 = v773;
      v520[1] = v372;
      (*(v365 + 32))(v517 + v514[10], v368, v366);
      *(v517 + v514[12]) = v518;
      v521 = swift_unknownObjectWeakLoadStrong();

      if (v521)
      {
        v759(v370, v517, v521);
        swift_unknownObjectRelease();
      }

      sub_20C13CA04();
      sub_20C13A334();
      swift_allocObject();
      v522 = sub_20C13A314();
      v523 = v671;
      sub_20B5DF20C(v751, v671, type metadata accessor for StartWorkoutSessionRequest);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v777 = v522;
      if (EnumCaseMultiPayload == 1)
      {
        __swift_project_boxed_opaque_existential_1((v778 + *v687), *(v778 + *v687 + 24));
        v525 = v690;
        sub_20C13A0B4();

        v526 = v762;
        v527 = v763;
        v528 = v764;
        (*(v763 + 16))(v762, v760, v764);
        v529 = v745;
        sub_20B52F9E8(v753, v745, &qword_27C76A410);
        v530 = (*(v527 + 80) + 24) & ~*(v527 + 80);
        v531 = (v755 + v530 + 7) & 0xFFFFFFFFFFFFFFF8;
        v532 = (v531 + 15) & 0xFFFFFFFFFFFFFFF8;
        v533 = (*(v743 + 80) + v532 + 8) & ~*(v743 + 80);
        v534 = swift_allocObject();
        *(v534 + 16) = v777;
        v780(v534 + v530, v526, v528);
        *(v534 + v531) = v778;
        *(v534 + v532) = v359;
        sub_20B5DF134(v529, v534 + v533, &qword_27C76A410);
        v535 = v691;
        v536 = v689;
        v537 = v692;
        (*(v691 + 16))(v689, v525, v692);
        v538 = (*(v535 + 80) + 16) & ~*(v535 + 80);
        v539 = (v688 + v538 + 7) & 0xFFFFFFFFFFFFFFF8;
        v540 = swift_allocObject();
        (*(v535 + 32))(v540 + v538, v536, v537);
        v541 = (v540 + v539);
        *v541 = v615;
        v541[1] = v534;

        sub_20C137C94();
        (*(v535 + 8))(v525, v537);
        sub_20B5DF274(v734, type metadata accessor for ShelfMetricAction);
        (*(v527 + 8))(v760, v764);
      }

      else
      {
        v542 = v747;
        v776 = *(v747 + 32);
        v543 = v757;
        v544 = v758;
        v776(v757, v523, v758);
        v774 = v542 + 32;
        v545 = sub_20C13A324();
        v769 = v546;
        v771 = *(v542 + 16);
        v771(v756, v543, v544);
        v547 = v763;
        v770 = *(v763 + 16);
        v770(v762, v760, v764);
        v548 = *(v542 + 80);
        v549 = (v548 + 32) & ~v548;
        v772 = *(v547 + 80);
        v773 = v686 + v772;
        v550 = (v686 + v772 + v549) & ~v772;
        v775 = v548 | v772 | 7;
        v551 = swift_allocObject();
        v552 = v769;
        *(v551 + 16) = v545;
        *(v551 + 24) = v552;
        v553 = v756;
        v554 = v758;
        v776((v551 + v549), v756, v758);
        v555 = v762;
        v556 = v764;
        v780(v551 + v550, v762, v764);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
        sub_20C137C94();
        v557 = v553;
        v558 = v554;
        v771(v557, v757, v554);
        v770(v555, v760, v556);
        v559 = v745;
        sub_20B52F9E8(v753, v745, &qword_27C76A410);
        v560 = (v548 + 24) & ~v548;
        v561 = (v773 + v560) & ~v772;
        v562 = (v755 + v561 + 7) & 0xFFFFFFFFFFFFFFF8;
        v563 = (v562 + 15) & 0xFFFFFFFFFFFFFFF8;
        v564 = (v563 + *(v743 + 80) + 8) & ~*(v743 + 80);
        v565 = swift_allocObject();
        *(v565 + 16) = v778;
        v776((v565 + v560), v756, v558);
        v566 = v556;
        v780(v565 + v561, v762, v556);
        *(v565 + v562) = v777;
        *(v565 + v563) = v359;
        sub_20B5DF134(v559, v565 + v564, &qword_27C76A410);
        v567 = swift_allocObject();
        *(v567 + 16) = v621;
        *(v567 + 24) = v565;
        v568 = v695;
        v569 = v694;
        v570 = v746;
        v571 = v696;
        (*(v695 + 16))(v694, v746, v696);
        v572 = (*(v568 + 80) + 16) & ~*(v568 + 80);
        v573 = (v693 + v572 + 7) & 0xFFFFFFFFFFFFFFF8;
        v574 = swift_allocObject();
        (*(v568 + 32))(v574 + v572, v569, v571);
        v575 = (v574 + v573);
        *v575 = v626;
        v575[1] = v567;

        sub_20C137C94();
        (*(v568 + 8))(v570, v571);
        (*(v747 + 8))(v757, v758);
        sub_20B5DF274(v734, type metadata accessor for ShelfMetricAction);
        (*(v763 + 8))(v760, v566);
      }

      sub_20B520158(v753, &qword_27C76A410);
      v456 = type metadata accessor for StartWorkoutSessionRequest;
      v457 = &v781;
      goto LABEL_73;
    case 8u:
      v326 = *(v247 + 1);
      v780 = *v247;
      v327 = *(v247 + 2);
      v328 = v646;
      sub_20B52F9E8(v770, v646, &unk_27C7621D0);
      v329 = v650;
      sub_20B52F9E8(v771, v650, &unk_27C765D50);
      v330 = (*(v648 + 80) + 48) & ~*(v648 + 80);
      v331 = (v141 + v330 + 7) & 0xFFFFFFFFFFFFFFF8;
      v332 = (*(v651 + 80) + v331 + 16) & ~*(v651 + 80);
      v333 = swift_allocObject();
      v333[2] = v327;
      v334 = v772;
      v333[3] = v778;
      v333[4] = v334;
      v333[5] = v775;
      sub_20B5DF134(v328, v333 + v330, &unk_27C7621D0);
      v335 = (v333 + v331);
      v336 = v774;
      *v335 = v773;
      v335[1] = v336;
      sub_20B5DF134(v329, v333 + v332, &unk_27C765D50);
      v337 = (v333 + ((v106 + v332 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v337 = v780;
      v337[1] = v326;

      sub_20C137C94();
      return;
    case 9u:
      v374 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8) + 48);
      v375 = v700;
      v376 = v701;
      (*(v700 + 32))(v230, v247, v701);
      v377 = v698;
      v378 = &v247[v374];
      v379 = v667;
      v380 = v699;
      (*(v698 + 32))(v667, v378, v699);
      v697(v230, v379);
      (*(v377 + 8))(v379, v380);
      (*(v375 + 8))(v230, v376);
      return;
    case 0xAu:
      v294 = &v247[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200) + 48)];
      v295 = *v294;
      v296 = v294[1];
      v297 = v669;
      v298 = v668;
      v299 = v247;
      v300 = v670;
      (*(v669 + 32))(v668, v299, v670);
      sub_20B5BAD10(v298, v295, v296, v680);

      (*(v297 + 8))(v298, v300);
      return;
    case 0xBu:
      sub_20B5BB098(*v247, v247[1]);
      return;
    case 0xCu:
      v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0);
      v250 = *(v249 + 48);
      v251 = *(v249 + 64);
      sub_20B5D9970(v247, v752, type metadata accessor for StartWorkoutSessionRequest);
      sub_20B5DF134(&v247[v250], v754, &qword_27C76A410);
      v252 = (v763 + 32);
      v253 = *(v763 + 32);
      v253(v761, &v247[v251], v764);
      v254 = sub_20C136664();
      (*(*(v254 - 8) + 56))(v710, 1, 1, v254);
      (*(v777 + 104))(v717, *MEMORY[0x277D513F8], v776);
      (*(v769 + 56))(v725, 1, 1, v768);
      sub_20B52F9E8(v770, v733, &unk_27C7621D0);
      v255 = v665;
      sub_20B52F9E8(v771, v665, &unk_27C765D50);
      v257 = v766;
      v256 = v767;
      v258 = *(v767 + 48);
      v259 = v258(v255, 1, v766);
      v760 = v252;
      v780 = v253;
      if (v259 == 1)
      {
        v260 = v666;
        (*(v256 + 104))(v666, *MEMORY[0x277D51768], v257);
        v261 = v258(v255, 1, v257);
        v262 = v778;
        v264 = v774;
        v263 = v775;
        v265 = v772;
        if (v261 != 1)
        {
          sub_20B520158(v255, &unk_27C765D50);
        }
      }

      else
      {
        v260 = v666;
        (*(v256 + 32))(v666, v255, v257);
        v262 = v778;
        v264 = v774;
        v263 = v775;
        v265 = v772;
      }

      v394 = v765;
      v395 = *(v765 + 44);
      v396 = sub_20C136E94();
      v397 = v735;
      (*(*(v396 - 8) + 56))(v735 + v395, 1, 1, v396);
      v398 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      sub_20B5DF134(v710, v397, &unk_27C7622E0);
      (*(v777 + 32))(v397 + v394[5], v717, v776);
      sub_20B5DF134(v725, v397 + v394[6], &unk_27C7617F0);
      v399 = (v397 + v394[7]);
      *v399 = v265;
      v399[1] = v263;
      sub_20B5DF134(v733, v397 + v394[8], &unk_27C7621D0);
      v400 = (v397 + v394[9]);
      *v400 = v773;
      v400[1] = v264;
      (*(v256 + 32))(v397 + v394[10], v260, v257);
      *(v397 + v394[12]) = v398;
      v401 = swift_unknownObjectWeakLoadStrong();

      if (v401)
      {
        v759(v262, v397, v401);
        swift_unknownObjectRelease();
      }

      sub_20C13CA04();
      sub_20C13A334();
      swift_allocObject();
      v402 = sub_20C13A314();
      v403 = v672;
      sub_20B5DF20C(v752, v672, type metadata accessor for StartWorkoutSessionRequest);
      v404 = swift_getEnumCaseMultiPayload();
      v777 = v402;
      if (v404 == 1)
      {
        __swift_project_boxed_opaque_existential_1((v778 + *v687), *(v778 + *v687 + 24));
        v405 = v690;
        sub_20C13A0B4();

        v406 = v762;
        v407 = v763;
        v408 = v764;
        (*(v763 + 16))(v762, v761, v764);
        v409 = v745;
        sub_20B52F9E8(v754, v745, &qword_27C76A410);
        v410 = (*(v407 + 80) + 24) & ~*(v407 + 80);
        v411 = (v755 + v410 + 7) & 0xFFFFFFFFFFFFFFF8;
        v412 = (v411 + 15) & 0xFFFFFFFFFFFFFFF8;
        v413 = (*(v743 + 80) + v412 + 8) & ~*(v743 + 80);
        v414 = swift_allocObject();
        *(v414 + 16) = v777;
        v780(v414 + v410, v406, v408);
        *(v414 + v411) = v778;
        *(v414 + v412) = 0;
        sub_20B5DF134(v409, v414 + v413, &qword_27C76A410);
        v415 = v691;
        v416 = v689;
        v417 = v692;
        (*(v691 + 16))(v689, v405, v692);
        v418 = (*(v415 + 80) + 16) & ~*(v415 + 80);
        v419 = (v688 + v418 + 7) & 0xFFFFFFFFFFFFFFF8;
        v420 = swift_allocObject();
        (*(v415 + 32))(v420 + v418, v416, v417);
        v421 = (v420 + v419);
        *v421 = v620;
        v421[1] = v414;

        sub_20C137C94();
        (*(v415 + 8))(v405, v417);
        sub_20B5DF274(v735, type metadata accessor for ShelfMetricAction);
        (*(v407 + 8))(v761, v764);
      }

      else
      {
        v422 = v747;
        v776 = *(v747 + 32);
        v423 = v757;
        v424 = v758;
        v776(v757, v403, v758);
        v774 = v422 + 32;
        v425 = sub_20C13A324();
        v769 = v426;
        v771 = *(v422 + 16);
        v771(v756, v423, v424);
        v427 = v763;
        v770 = *(v763 + 16);
        v770(v762, v761, v764);
        v428 = *(v422 + 80);
        v429 = (v428 + 32) & ~v428;
        v772 = *(v427 + 80);
        v773 = v686 + v772;
        v430 = (v686 + v772 + v429) & ~v772;
        v775 = v428 | v772 | 7;
        v431 = swift_allocObject();
        v432 = v769;
        *(v431 + 16) = v425;
        *(v431 + 24) = v432;
        v433 = v756;
        v434 = v758;
        v776((v431 + v429), v756, v758);
        v435 = v762;
        v436 = v764;
        v780(v431 + v430, v762, v764);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
        sub_20C137C94();
        v437 = v433;
        v438 = v434;
        v771(v437, v757, v434);
        v770(v435, v761, v436);
        v439 = v745;
        sub_20B52F9E8(v754, v745, &qword_27C76A410);
        v440 = (v428 + 24) & ~v428;
        v441 = (v773 + v440) & ~v772;
        v442 = (v755 + v441 + 7) & 0xFFFFFFFFFFFFFFF8;
        v443 = (v442 + 15) & 0xFFFFFFFFFFFFFFF8;
        v444 = (v443 + *(v743 + 80) + 8) & ~*(v743 + 80);
        v445 = swift_allocObject();
        *(v445 + 16) = v778;
        v776((v445 + v440), v756, v438);
        v446 = v436;
        v780(v445 + v441, v762, v436);
        *(v445 + v442) = v777;
        *(v445 + v443) = 0;
        sub_20B5DF134(v439, v445 + v444, &qword_27C76A410);
        v447 = swift_allocObject();
        *(v447 + 16) = v625;
        *(v447 + 24) = v445;
        v448 = v695;
        v449 = v694;
        v450 = v746;
        v451 = v696;
        (*(v695 + 16))(v694, v746, v696);
        v452 = (*(v448 + 80) + 16) & ~*(v448 + 80);
        v453 = (v693 + v452 + 7) & 0xFFFFFFFFFFFFFFF8;
        v454 = swift_allocObject();
        (*(v448 + 32))(v454 + v452, v449, v451);
        v455 = (v454 + v453);
        *v455 = v629;
        v455[1] = v447;

        sub_20C137C94();
        (*(v448 + 8))(v450, v451);
        (*(v747 + 8))(v757, v758);
        sub_20B5DF274(v735, type metadata accessor for ShelfMetricAction);
        (*(v763 + 8))(v761, v446);
      }

      sub_20B520158(v754, &qword_27C76A410);
      v456 = type metadata accessor for StartWorkoutSessionRequest;
      v457 = &v782;
LABEL_73:
      v513 = *(v457 - 32);
      goto LABEL_98;
    case 0xDu:
      v279 = *(v247 + 1);
      v764 = *v247;
      v780 = v279;
      v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210);
      v282 = v768;
      v281 = v769;
      (*(v769 + 32))(v749, &v247[*(v280 + 48)], v768);
      v283 = sub_20C136664();
      (*(*(v283 - 8) + 56))(v707, 1, 1, v283);
      (*(v777 + 104))(v715, *MEMORY[0x277D513F8], v776);
      (*(v281 + 56))(v723, 1, 1, v282);
      sub_20B52F9E8(v770, v731, &unk_27C7621D0);
      v284 = v661;
      sub_20B52F9E8(v771, v661, &unk_27C765D50);
      v286 = v766;
      v285 = v767;
      v287 = *(v767 + 48);
      if (v287(v284, 1, v766) == 1)
      {
        v288 = v662;
        (*(v285 + 104))(v662, *MEMORY[0x277D51760], v286);
        v289 = v287(v284, 1, v286);
        v290 = v778;
        v292 = v774;
        v291 = v775;
        v293 = v772;
        if (v289 != 1)
        {
          sub_20B520158(v284, &unk_27C765D50);
        }
      }

      else
      {
        v288 = v662;
        (*(v285 + 32))(v662, v284, v286);
        v290 = v778;
        v292 = v774;
        v291 = v775;
        v293 = v772;
      }

      v470 = v765;
      v471 = *(v765 + 44);
      v472 = sub_20C136E94();
      v473 = v647;
      (*(*(v472 - 8) + 56))(&v647[v471], 1, 1, v472);
      v474 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      sub_20B5DF134(v707, v473, &unk_27C7622E0);
      (*(v777 + 32))(v473 + v470[5], v715, v776);
      sub_20B5DF134(v723, v473 + v470[6], &unk_27C7617F0);
      v475 = (v473 + v470[7]);
      *v475 = v293;
      v475[1] = v291;
      sub_20B5DF134(v731, v473 + v470[8], &unk_27C7621D0);
      v476 = (v473 + v470[9]);
      *v476 = v773;
      v476[1] = v292;
      (*(v285 + 32))(v473 + v470[10], v288, v286);
      *(v473 + v470[12]) = v474;
      v477 = swift_unknownObjectWeakLoadStrong();
      if (v477)
      {
        v478 = v477;
        v479 = v637;
        sub_20B5DF20C(v473, v637, type metadata accessor for ShelfMetricAction);
        v480 = v750;
        (*(v750 + 56))(v479, 0, 1, v470);
        v481 = v634;
        sub_20B52F9E8(v479, v634, &unk_27C7622D0);
        v482 = (*(v480 + 48))(v481, 1, v470);
        v483 = v780;
        if (v482 == 1)
        {

          sub_20B520158(v481, &unk_27C7622D0);
        }

        else
        {
          v592 = v481;
          v593 = v606;
          sub_20B5D9970(v592, v606, type metadata accessor for ShelfMetricAction);

          v759(v290, v593, v478);
          sub_20B5DF274(v593, type metadata accessor for ShelfMetricAction);
        }

        v594 = v478 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v595 = *(v594 + 8);
          v596 = swift_getObjectType();
          (*(v595 + 72))(v478, v749, v764, v483, v596, v595);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();

        sub_20B520158(v479, &unk_27C7622D0);
      }

      else
      {
      }

      _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
      sub_20B5DF274(v473, type metadata accessor for ShelfMetricAction);
      (*(v769 + 8))(v749, v768);
      return;
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x13u:
      sub_20B5D9900();
      v393 = swift_allocError();
      *(swift_allocObject() + 16) = v393;
      sub_20C137CA4();
      return;
    case 0x12u:
      v381 = sub_20C136664();
      (*(*(v381 - 8) + 56))(v706, 1, 1, v381);
      (*(v777 + 104))(v714, *MEMORY[0x277D51488], v776);
      (*(v769 + 56))(v722, 1, 1, v768);
      sub_20B52F9E8(v770, v730, &unk_27C7621D0);
      v382 = v659;
      sub_20B52F9E8(v771, v659, &unk_27C765D50);
      v384 = v766;
      v383 = v767;
      v385 = *(v767 + 48);
      if (v385(v382, 1, v766) == 1)
      {
        v386 = v660;
        (*(v383 + 104))(v660, *MEMORY[0x277D51768], v384);
        v272 = v385(v382, 1, v384) == 1;
        v387 = v778;
        v388 = v382;
        v390 = v774;
        v389 = v775;
        v391 = v772;
        v392 = v765;
        if (!v272)
        {
          sub_20B520158(v388, &unk_27C765D50);
        }
      }

      else
      {
        v386 = v660;
        (*(v383 + 32))(v660, v382, v384);
        v387 = v778;
        v390 = v774;
        v389 = v775;
        v391 = v772;
        v392 = v765;
      }

      v576 = v392[11];
      v577 = sub_20C136E94();
      v578 = v645;
      (*(*(v577 - 8) + 56))(&v645[v576], 1, 1, v577);
      v579 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      sub_20B5DF134(v706, v578, &unk_27C7622E0);
      (*(v777 + 32))(v578 + v392[5], v714, v776);
      sub_20B5DF134(v722, v578 + v392[6], &unk_27C7617F0);
      v580 = (v578 + v392[7]);
      *v580 = v391;
      v580[1] = v389;
      sub_20B5DF134(v730, v578 + v392[8], &unk_27C7621D0);
      v581 = (v578 + v392[9]);
      *v581 = v773;
      v581[1] = v390;
      (*(v383 + 32))(v578 + v392[10], v386, v384);
      *(v578 + v392[12]) = v579;
      v582 = swift_unknownObjectWeakLoadStrong();
      if (v582)
      {
        v583 = v582;
        v584 = v387;
        v585 = v636;
        sub_20B5DF20C(v578, v636, type metadata accessor for ShelfMetricAction);
        v586 = v750;
        (*(v750 + 56))(v585, 0, 1, v392);
        v587 = v633;
        sub_20B52F9E8(v585, v633, &unk_27C7622D0);
        if ((*(v586 + 48))(v587, 1, v392) == 1)
        {

          sub_20B520158(v587, &unk_27C7622D0);
        }

        else
        {
          v597 = v605;
          sub_20B5D9970(v587, v605, type metadata accessor for ShelfMetricAction);

          v759(v584, v597, v583);
          sub_20B5DF274(v597, type metadata accessor for ShelfMetricAction);
        }

        v598 = v583 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v599 = *(v598 + 8);
          v600 = swift_getObjectType();
          (*(v599 + 264))(v583, v600, v599);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        sub_20B520158(v585, &unk_27C7622D0);
      }

      else
      {
      }

      _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
      v456 = type metadata accessor for ShelfMetricAction;
      v513 = v578;
LABEL_98:
      sub_20B5DF274(v513, v456);
      break;
    default:
      sub_20B5D9900();
      v338 = swift_allocError();
      *(swift_allocObject() + 16) = v338;
      sub_20C137CA4();
      v339 = &unk_27C762300;
      v340 = v247;
LABEL_21:
      sub_20B520158(v340, v339);
      break;
  }
}

uint64_t sub_20B5AD914(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = a2 + *(type metadata accessor for ButtonAction(0) + 28);
  v7 = MEMORY[0x277D84FA0];
  *v5 = MEMORY[0x277D84FA0];
  swift_storeEnumTagMultiPayload();
  v8 = sub_20BF3C25C(v5);
  sub_20B5DF274(v5, type metadata accessor for ButtonAction.ActionType);
  if ((v8 & 1) == 0)
  {
    *v5 = v7;
    swift_storeEnumTagMultiPayload();
    v9 = sub_20BF3C25C(v5);
    sub_20B5DF274(v5, type metadata accessor for ButtonAction.ActionType);
    if ((v9 & 1) == 0)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v11 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_inProgressButtonActions;
        v12 = Strong;
        v13 = swift_beginAccess();
        v14 = *(v12 + v11);
        MEMORY[0x28223BE20](v13);
        *&v17[-16] = v6;

        v15 = sub_20BEE0D74(sub_20B5D9870, &v17[-32], v14);
        sub_20B5ADF04(v15);
        swift_endAccess();
      }
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B598280(129);
  }

  return result;
}

uint64_t sub_20B5ADB30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_20B5ADBC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

__n128 sub_20B5ADC0C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B5ADD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_20B5ADE04;

  return MEMORY[0x2821AF798](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_20B5ADE04(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_20B5ADF04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765DA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for ButtonAction.ActionType(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  for (i = 0; v11; result = sub_20B5DF274(v8, type metadata accessor for ButtonAction.ActionType))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_20B5DF20C(*(a1 + 48) + *(v6 + 72) * (v16 | (v15 << 6)), v8, type metadata accessor for ButtonAction.ActionType);
    sub_20B6CB364(v8, v4);
    sub_20B520158(v4, &qword_27C765DA0);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(a1 + 56 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B5AE108(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;
  v14 = a5(0);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a1, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = *a6;
  swift_beginAccess();
  sub_20B5DF2D4(v13, a2 + v16, a3);
  return swift_endAccess();
}

void sub_20B5AE25C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a5;
  v41 = a6;
  v46 = a3;
  v47 = a4;
  v39 = a1;
  v48 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_20C135334();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C135D54();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x28223BE20](v14);
  v38 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v37 - v17;
  v19 = sub_20C136C64();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C13BB84();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v24 + 8))(v26, v23);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_20C13B174();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_20B520158(v18, &qword_27C768690);
    v27 = sub_20C13B8A4();
    sub_20B5DF0C4(&qword_27C762380, MEMORY[0x277D4FA88]);
    v28 = swift_allocError();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D4FA70], v27);
    *(swift_allocObject() + 16) = v28;
    sub_20B51C88C(0, &qword_27C7683B0);
    sub_20C137CA4();
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    sub_20C136C24();
    sub_20C135314();
    (*(v42 + 8))(v13, v43);
    v31 = v44;
    v30 = v45;
    if ((*(v44 + 48))(v10, 1, v45) == 1)
    {
      sub_20B520158(v10, &unk_27C762370);
      v32 = sub_20C13B8A4();
      sub_20B5DF0C4(&qword_27C762380, MEMORY[0x277D4FA88]);
      v33 = swift_allocError();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D4FA70], v32);
      *(swift_allocObject() + 16) = v33;
      v35 = v33;
      sub_20B51C88C(0, &qword_27C7683B0);
      sub_20C137CA4();
      (*(v20 + 8))(v22, v19);
    }

    else
    {
      v36 = v38;
      (*(v31 + 32))(v38, v10, v30);
      __swift_project_boxed_opaque_existential_1(v39, v39[3]);
      sub_20C13B934();
      (*(v31 + 8))(v36, v30);
      (*(v20 + 8))(v22, v19);
    }
  }
}

void sub_20B5AE8D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450);
  v127 = *(v8 - 8);
  v128 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v10;
  MEMORY[0x28223BE20](v9);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction();
  v13 = MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FAC4(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5D9BFC;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v24, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FAC4(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5AF744(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FD0C(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DA43C;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FD0C(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5B05BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FD24(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DA89C;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FD24(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5B1434(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FD90(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DA63C;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FD90(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5B22AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FDA8(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DA99C;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FDA8(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5B3124(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FDC0(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DCFEC;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FDC0(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5B3F9C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FE2C(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DD0EC;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FE2C(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5B4E14(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FD54(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DD294;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FD54(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5B5C8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FE44(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DD1C0;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FE44(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5B6B04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FE50(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DE428;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FE50(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

uint64_t sub_20B5B797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t))
{
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v39 = a9;
  v40 = a13;
  v41 = v21;

  v22 = sub_20B5E6864(a14, v33, a3);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    type metadata accessor for DefaultPageAlertPresenter();
    v25 = swift_allocObject();
    *(v25 + 24) = 0;
    swift_unknownObjectWeakInit();
    v26 = MEMORY[0x277D84F90];
    *(v25 + 32) = v22;
    *(v25 + 40) = v26;
    *(v25 + 48) = a10;
    *(v25 + 56) = a11;
    *(v25 + 64) = 0;
    *(v25 + 72) = 0;
    *(v25 + 80) = 1;
    *(v25 + 88) = 0;
    v27 = v24 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v27 + 8);
      ObjectType = swift_getObjectType();
      v30 = *(v28 + 224);

      v30(v24, v25, &off_2822DD358, ObjectType, v28);
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

int *sub_20B5B7B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v61 = a5;
  v62 = a8;
  v69 = a7;
  v70 = a4;
  v60 = a2;
  v72 = a9;
  v71 = a15;
  v64 = a14;
  v65 = a3;
  v58 = a13;
  v67 = a6;
  v68 = a11;
  v66 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50);
  v63 = *(v16 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v52[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  v59 = *(v20 - 8);
  v21 = *(v59 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v57 = &v52[-v22];
  v23 = type metadata accessor for ButtonAction(0);
  v24 = v23 - 8;
  v56 = *(v23 - 8);
  v25 = *(v56 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v52[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20B5DF20C(a1 + *(v24 + 36), v28, type metadata accessor for ButtonAction.ActionType);
  if (swift_getEnumCaseMultiPayload() == 14)
  {
    v29 = *(a1 + 32);
    v54 = *(a1 + 40);
    v55 = v29;

    v53 = 2;
  }

  else
  {
    if (*(a1 + 40))
    {
      v30 = *(a1 + 32);
      v31 = *(a1 + 40);
    }

    else
    {
      v30 = 0;
      v31 = 0xE000000000000000;
    }

    v54 = v31;
    v55 = v30;

    sub_20B5DF274(v28, type metadata accessor for ButtonAction.ActionType);
    v53 = 0;
  }

  v58 = swift_allocObject();
  swift_weakInit();
  v32 = &v52[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20B5DF20C(a1, v32, type metadata accessor for ButtonAction);
  v33 = v57;
  sub_20B52F9E8(v61, v57, &unk_27C7621D0);
  sub_20B52F9E8(v62, v19, &unk_27C765D50);
  v34 = (*(v56 + 80) + 24) & ~*(v56 + 80);
  v35 = (v25 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = *(v59 + 80);
  v62 = v19;
  v37 = (v36 + v35 + 16) & ~v36;
  v38 = (v21 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (*(v63 + 80) + v38 + 16) & ~*(v63 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v58;
  sub_20B5D9970(v32, v40 + v34, type metadata accessor for ButtonAction);
  v41 = (v40 + v35);
  v42 = v70;
  *v41 = v65;
  v41[1] = v42;
  sub_20B5DF134(v33, v40 + v37, &unk_27C7621D0);
  v43 = (v40 + v38);
  v44 = v69;
  *v43 = v67;
  v43[1] = v44;
  sub_20B5DF134(v62, v40 + v39, &unk_27C765D50);
  v45 = (v40 + ((v17 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
  v46 = v68;
  *v45 = v66;
  v45[1] = v46;

  v47 = v72;
  sub_20C132ED4();
  result = type metadata accessor for PageAlertAction();
  v49 = (v47 + result[6]);
  v50 = v54;
  *v49 = v55;
  v49[1] = v50;
  *(v47 + result[5]) = v53;
  v51 = (v47 + result[7]);
  *v51 = v71;
  v51[1] = v40;
  return result;
}

uint64_t sub_20B5B8014(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_282290750, v19, sub_20B5DF58C, &unk_282290728, sub_20B5DF58C, &unk_2822906D8, sub_20B5DF58C, &unk_2822905C0, sub_20B5DF58C, &unk_282290598, sub_20B5D99D8, sub_20B5AE8D0, sub_20BF9FAC4, &unk_282290570, sub_20B5D9954, &unk_282290700, sub_20B5DF58C, sub_20BF9FAC4, &OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_bookmarkClient, sub_20BF9FAC4, &unk_282290638, sub_20B5DF630, &unk_282290660, &unk_282290688, sub_20B5DF508, &unk_2822906B0, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_catalogClient, &unk_2822905E8, &unk_282290610, sub_20B5DF634, sub_20B5DF638, &unk_2822904D0, sub_20B5DF630, &unk_2822904F8, &unk_282290520, sub_20B5DF508, &unk_282290548, sub_20B5D98D0, sub_20B5D98D8, &unk_282290480, &unk_2822904A8, sub_20B5D9890, sub_20B5D98A8);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5D9BA4;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5B8490(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_282291330, v19, sub_20B5DF58C, &unk_282291308, sub_20B5DF58C, &unk_2822912B8, sub_20B5DF58C, &unk_2822911A0, sub_20B5DF58C, &unk_282291178, sub_20B5DA068, sub_20B5AF744, sub_20BF9FD0C, &unk_282291150, sub_20B5DF58C, &unk_2822912E0, sub_20B5DF58C, sub_20BF9FD0C, &OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_bookmarkClient, sub_20BF9FD0C, &unk_282291218, sub_20B5DF630, &unk_282291240, &unk_282291268, sub_20B5DF508, &unk_282291290, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_catalogClient, &unk_2822911C8, &unk_2822911F0, sub_20B5DF664, sub_20B5DF638, &unk_2822910B0, sub_20B5DF630, &unk_2822910D8, &unk_282291100, sub_20B5DF508, &unk_282291128, sub_20B5DF4AC, sub_20B5DF63C, &unk_282291060, &unk_282291088, sub_20B5DA050, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5B8910(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_2822923C0, v19, sub_20B5DF58C, &unk_282292398, sub_20B5DF58C, &unk_282292348, sub_20B5DF58C, &unk_282292230, sub_20B5DF58C, &unk_282292208, sub_20B5DA800, sub_20B5B05BC, sub_20BF9FD24, &unk_2822921E0, sub_20B5DF58C, &unk_282292370, sub_20B5DF58C, sub_20BF9FD24, &OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_bookmarkClient, sub_20BF9FD24, &unk_2822922A8, sub_20B5DF630, &unk_2822922D0, &unk_2822922F8, sub_20B5DF508, &unk_282292320, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_catalogClient, &unk_282292258, &unk_282292280, sub_20B5DF680, sub_20B5DF638, &unk_282292140, sub_20B5DF630, &unk_282292168, &unk_282292190, sub_20B5DF508, &unk_2822921B8, sub_20B5DF4AC, sub_20B5DF63C, &unk_2822920F0, &unk_282292118, sub_20B5DA7E8, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5B8D90(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_2822918D0, v19, sub_20B5DF58C, &unk_2822918A8, sub_20B5DF58C, &unk_282291858, sub_20B5DF58C, &unk_282291740, sub_20B5DF58C, &unk_282291718, sub_20B5DA5A0, sub_20B5B1434, sub_20BF9FD90, &unk_2822916F0, sub_20B5DF58C, &unk_282291880, sub_20B5DF58C, sub_20BF9FD90, &OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_bookmarkClient, sub_20BF9FD90, &unk_2822917B8, sub_20B5DF630, &unk_2822917E0, &unk_282291808, sub_20B5DF508, &unk_282291830, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_catalogClient, &unk_282291768, &unk_282291790, sub_20B5DF674, sub_20B5DF638, &unk_282291650, sub_20B5DF630, &unk_282291678, &unk_2822916A0, sub_20B5DF508, &unk_2822916C8, sub_20B5DF4AC, sub_20B5DF63C, &unk_282291600, &unk_282291628, sub_20B5DA588, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5B9210(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_282292960, v19, sub_20B5DF58C, &unk_282292938, sub_20B5DF58C, &unk_2822928E8, sub_20B5DF58C, &unk_2822927D0, sub_20B5DF58C, &unk_2822927A8, sub_20B5DA900, sub_20B5B22AC, sub_20BF9FDA8, &unk_282292780, sub_20B5DF58C, &unk_282292910, sub_20B5DF58C, sub_20BF9FDA8, &OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_bookmarkClient, sub_20BF9FDA8, &unk_282292848, sub_20B5DF630, &unk_282292870, &unk_282292898, sub_20B5DF508, &unk_2822928C0, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_catalogClient, &unk_2822927F8, &unk_282292820, sub_20B5DF684, sub_20B5DF638, &unk_2822926E0, sub_20B5DF630, &unk_282292708, &unk_282292730, sub_20B5DA8D4, &unk_282292758, sub_20B5DF4AC, sub_20B5DF63C, &unk_282292690, &unk_2822926B8, sub_20B5DA8BC, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5B9690(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_282293090, v19, sub_20B5DF58C, &unk_282293068, sub_20B5DF58C, &unk_282293018, sub_20B5DF58C, &unk_282292F00, sub_20B5DF58C, &unk_282292ED8, sub_20B5DCF50, sub_20B5B3124, sub_20BF9FDC0, &unk_282292EB0, sub_20B5DF58C, &unk_282293040, sub_20B5DF58C, sub_20BF9FDC0, &OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_bookmarkClient, sub_20BF9FDC0, &unk_282292F78, sub_20B5DF630, &unk_282292FA0, &unk_282292FC8, sub_20B5DF538, &unk_282292FF0, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_catalogClient, &unk_282292F28, &unk_282292F50, sub_20B5DF688, sub_20B5DF638, &unk_282292E10, sub_20B5DF630, &unk_282292E38, &unk_282292E60, sub_20B5DCF24, &unk_282292E88, sub_20B5DF4AC, sub_20B5DF63C, &unk_282292DC0, &unk_282292DE8, sub_20B5DCF0C, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5B9B10(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_282293630, v19, sub_20B5DF58C, &unk_282293608, sub_20B5DF58C, &unk_2822935B8, sub_20B5DF58C, &unk_2822934A0, sub_20B5DF58C, &unk_282293478, sub_20B5DD050, sub_20B5B3F9C, sub_20BF9FE2C, &unk_282293450, sub_20B5DF58C, &unk_2822935E0, sub_20B5DF58C, sub_20BF9FE2C, &OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_bookmarkClient, sub_20BF9FE2C, &unk_282293518, sub_20B5DF630, &unk_282293540, &unk_282293568, sub_20B5DF538, &unk_282293590, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_catalogClient, &unk_2822934C8, &unk_2822934F0, sub_20B5DF68C, sub_20B5DF638, &unk_2822933B0, sub_20B5DF630, &unk_2822933D8, &unk_282293400, sub_20B5DF538, &unk_282293428, sub_20B5DF4AC, sub_20B5DF63C, &unk_282293360, &unk_282293388, sub_20B5DD038, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5B9F90(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_282294170, v19, sub_20B5DF58C, &unk_282294148, sub_20B5DF58C, &unk_2822940F8, sub_20B5DF58C, &unk_282293FE0, sub_20B5DF58C, &unk_282293FB8, sub_20B5DD1F8, sub_20B5B4E14, sub_20BF9FD54, &unk_282293F90, sub_20B5DF58C, &unk_282294120, sub_20B5DF58C, sub_20BF9FD54, &OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_bookmarkClient, sub_20BF9FD54, &unk_282294058, sub_20B5DF630, &unk_282294080, &unk_2822940A8, sub_20B5DF538, &unk_2822940D0, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_catalogClient, &unk_282294008, &unk_282294030, sub_20B5DF694, sub_20B5DF638, &unk_282293EF0, sub_20B5DF630, &unk_282293F18, &unk_282293F40, sub_20B5DF538, &unk_282293F68, sub_20B5DF4AC, sub_20B5DF63C, &unk_282293EA0, &unk_282293EC8, sub_20B5DD1E0, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5BA410(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_282293BD0, v19, sub_20B5DF58C, &unk_282293BA8, sub_20B5DF58C, &unk_282293B58, sub_20B5DF58C, &unk_282293A40, sub_20B5DF58C, &unk_282293A18, sub_20B5DD124, sub_20B5B5C8C, sub_20BF9FE44, &unk_2822939F0, sub_20B5DF58C, &unk_282293B80, sub_20B5DF58C, sub_20BF9FE44, &OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_bookmarkClient, sub_20BF9FE44, &unk_282293AB8, sub_20B5DF630, &unk_282293AE0, &unk_282293B08, sub_20B5DF538, &unk_282293B30, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_catalogClient, &unk_282293A68, &unk_282293A90, sub_20B5DF690, sub_20B5DF638, &unk_282293950, sub_20B5DF630, &unk_282293978, &unk_2822939A0, sub_20B5DF538, &unk_2822939C8, sub_20B5DF4AC, sub_20B5DF63C, &unk_282293900, &unk_282293928, sub_20B5DD10C, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5BA890(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_282294710, v19, sub_20B5DF58C, &unk_2822946E8, sub_20B5DF58C, &unk_282294698, sub_20B5DF58C, &unk_282294580, sub_20B5DF58C, &unk_282294558, sub_20B5DD514, sub_20B5B6B04, sub_20BF9FE50, &unk_282294530, sub_20B5DF58C, &unk_2822946C0, sub_20B5DF58C, sub_20BF9FE50, &OBJC_IVAR____TtC9SeymourUI33TVCatalogProgramDetailHeaderShelf_bookmarkClient, sub_20BF9FE50, &unk_2822945F8, sub_20B5DF630, &unk_282294620, &unk_282294648, sub_20B5DF538, &unk_282294670, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI33TVCatalogProgramDetailHeaderShelf_catalogClient, &unk_2822945A8, &unk_2822945D0, sub_20B5DF698, sub_20B5DF638, &unk_282294490, sub_20B5DF630, &unk_2822944B8, &unk_2822944E0, sub_20B5DF538, &unk_282294508, sub_20B5DF4AC, sub_20B5DF63C, &unk_282294440, &unk_282294468, sub_20B5DD2B4, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5BAD10(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, char *, uint64_t))
{
  v38 = a4;
  v5 = v4;
  v9 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      (*(v15 + 80))(v13, a1, a2, a3, ObjectType, v15);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v17 = sub_20C136664();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = v9[5];
  v19 = *MEMORY[0x277D513F8];
  v20 = sub_20C134F24();
  (*(*(v20 - 8) + 104))(&v11[v18], v19, v20);
  v21 = v9[6];
  v22 = sub_20C132C14();
  (*(*(v22 - 8) + 56))(&v11[v21], 1, 1, v22);
  v23 = v9[8];
  v24 = *MEMORY[0x277D52388];
  v25 = sub_20C135ED4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(&v11[v23], v24, v25);
  (*(v26 + 56))(&v11[v23], 0, 1, v25);
  v27 = v9[10];
  v28 = *MEMORY[0x277D51768];
  v29 = sub_20C1352E4();
  (*(*(v29 - 8) + 104))(&v11[v27], v28, v29);
  v30 = v9[11];
  v31 = sub_20C136E94();
  (*(*(v31 - 8) + 56))(&v11[v30], 1, 1, v31);
  v32 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v33 = &v11[v9[7]];
  *v33 = a2;
  *(v33 + 1) = a3;
  v34 = &v11[v9[9]];
  *v34 = 0;
  *(v34 + 1) = 0;
  *&v11[v9[12]] = v32;
  v35 = swift_unknownObjectWeakLoadStrong();

  if (v35)
  {
    v38(v5, v11, v35);
    swift_unknownObjectRelease();
  }

  _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  return sub_20B5DF274(v11, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20B5BB098(char a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (!Strong)
    {
      goto LABEL_10;
    }

    v5 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_9;
    }

    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 280))(ObjectType, v6);
    goto LABEL_8;
  }

  if (!Strong)
  {
    goto LABEL_10;
  }

  v8 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    v10 = swift_getObjectType();
    (*(v9 + 288))(a2 & 1, v10, v9);
LABEL_8:
    swift_unknownObjectRelease();
  }

LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:

  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20B5BB198(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WorkoutSessionConfiguration();
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = sub_20C1344C4();
    (*(*(v18 - 8) + 16))(v15, a4, v18);
    v19 = v13[5];
    v20 = sub_20C137254();
    (*(*(v20 - 8) + 16))(&v15[v19], a5, v20);
    *&v15[v13[7]] = a6;
    sub_20C13A484();
    swift_storeEnumTagMultiPayload();
    sub_20B52F9E8(a1, &v15[v13[9]], &unk_27C7622A0);
    v21 = v13[10];
    v22 = sub_20C134A44();
    (*(*(v22 - 8) + 56))(&v15[v21], 1, 1, v22);
    sub_20B52F9E8(a7, &v15[v13[12]], &qword_27C76A410);
    v15[v13[6]] = 1;
    *&v15[v13[8]] = a2;
    v23 = &v15[v13[11]];
    *v23 = 0;
    *(v23 + 1) = 0;
    v24 = &v15[v13[13]];
    *v24 = 0;
    *(v24 + 1) = 0;
    v25 = v17 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(v25 + 8);
      ObjectType = swift_getObjectType();
      v28 = *(v26 + 112);

      v28(v17, v15, ObjectType, v26);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
    return sub_20B5DF274(v15, type metadata accessor for WorkoutSessionConfiguration);
  }

  return result;
}

uint64_t sub_20B5BB444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  v21 = MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  v24 = MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v18, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v18, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF520;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5D9C44;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5D9C74;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5BBD5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF520;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5BC674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF520;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5BCF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF520;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5BD8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DA9BC;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5BE1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DD00C;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5BEAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF550;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5BF3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF550;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5BFD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF550;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5C061C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF550;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

BOOL sub_20B5C0F34(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for WorkoutSessionConfiguration();
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20C135AA4();
    v16 = v12[5];
    v17 = sub_20C137254();
    (*(*(v17 - 8) + 16))(&v14[v16], a5, v17);
    *&v14[v12[7]] = a6;
    sub_20C13A484();
    swift_storeEnumTagMultiPayload();
    sub_20B52F9E8(a1, &v14[v12[9]], &unk_27C7622A0);
    v18 = v12[10];
    v19 = sub_20C134A44();
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    sub_20B52F9E8(a7, &v14[v12[12]], &qword_27C76A410);
    v14[v12[6]] = 1;
    *&v14[v12[8]] = a2;
    v20 = &v14[v12[11]];
    *v20 = 0;
    *(v20 + 1) = 0;
    v21 = &v14[v12[13]];
    *v21 = 0;
    *(v21 + 1) = 0;
    v22 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v22 + 8);
      ObjectType = swift_getObjectType();
      v25 = *(v23 + 112);

      v25(Strong, v14, ObjectType, v23);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
    sub_20B5DF274(v14, type metadata accessor for WorkoutSessionConfiguration);
  }

  return Strong == 0;
}

void sub_20B5C11B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v30[0] = a5;
  v30[1] = a6;
  v31 = a1;
  v32 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v30 - v14;
  v16 = sub_20C1388F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C138B94();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v15, a2, v20);
  (*(v21 + 56))(v15, 0, 1, v20);
  v22 = sub_20C138894();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v12, a3, v22);
  (*(v23 + 56))(v12, 0, 1, v22);
  sub_20C1388C4();
  v24 = a4 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 8);
    ObjectType = swift_getObjectType();
    (*(v25 + 296))(a4, v31, v19, ObjectType, v25);
    swift_unknownObjectRelease();
    (*(v17 + 8))(v19, v16);
  }

  else
  {
    sub_20B5D9BA8();
    v27 = swift_allocError();
    *v28 = 11;
    *(swift_allocObject() + 16) = v27;
    v29 = v27;
    sub_20C137CA4();
    (*(v17 + 8))(v19, v16);
  }
}

uint64_t sub_20B5C150C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a4;
  v9 = sub_20C13BB84();
  v7[6] = v9;
  v7[7] = *(v9 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = type metadata accessor for ShelfMetricAction();
  v7[10] = swift_task_alloc();
  v10 = sub_20C134F24();
  v7[11] = v10;
  v7[12] = *(v10 - 8);
  v7[13] = swift_task_alloc();
  v11 = sub_20C1344C4();
  v7[14] = v11;
  v7[15] = *(v11 - 8);
  v12 = swift_task_alloc();
  v7[16] = v12;
  v13 = swift_task_alloc();
  v7[17] = v13;
  *v13 = v7;
  v13[1] = sub_20B5C1704;

  return sub_20B5C28B0(v12, a5);
}