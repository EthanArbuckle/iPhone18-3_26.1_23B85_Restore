uint64_t sub_274473224@<X0>(uint64_t a1@<X8>)
{
  v155 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C9C0);
  MEMORY[0x28223BE20](v2 - 8);
  v153 = &v145 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E150);
  MEMORY[0x28223BE20](v4 - 8);
  v156 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v176 = &v145 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C9D0);
  MEMORY[0x28223BE20](v8 - 8);
  v170 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v168 = &v145 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E140);
  MEMORY[0x28223BE20](v12 - 8);
  v169 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v177 = &v145 - v15;
  v157 = sub_27463AF6C();
  v159 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v165 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v166 = &v145 - v18;
  MEMORY[0x28223BE20](v19);
  v158 = &v145 - v20;
  MEMORY[0x28223BE20](v21);
  v174 = &v145 - v22;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  *&v151 = *(v152 - 1);
  MEMORY[0x28223BE20](v152);
  v150 = &v145 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E8);
  MEMORY[0x28223BE20](v24 - 8);
  v167 = &v145 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v179[0] = &v145 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C9F0);
  MEMORY[0x28223BE20](v28 - 8);
  v164 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v163 = &v145 - v31;
  MEMORY[0x28223BE20](v32);
  v175 = &v145 - v33;
  MEMORY[0x28223BE20](v34);
  v178 = &v145 - v35;
  v36 = type metadata accessor for ActionView(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CD90);
  v173 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v149 = &v145 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v172 = &v145 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v145 - v43;
  sub_274483F70(v1, &v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionView);
  v45 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v46 = swift_allocObject();
  sub_274480BE8(&v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v45, type metadata accessor for ActionView);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00);
  v48 = sub_27440CA78(&unk_28094CDA0, &unk_28094CA00);
  v162 = v44;
  v49 = v47;
  v50 = v1;
  v154 = v48;
  sub_27463AD5C();
  v161 = *(v1 + 8);
  v160 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
  if ([*(v161 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) isDeletable])
  {
    sub_274483F70(v1, &v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionView);
    v51 = swift_allocObject();
    v52 = sub_274480BE8(&v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v51 + v45, type metadata accessor for ActionView);
    MEMORY[0x28223BE20](v52);
    *(&v145 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA28);
    sub_274483150();
    v53 = v178;
    sub_27463AD5C();
    v54 = 0;
  }

  else
  {
    v54 = 1;
    v53 = v178;
  }

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA10);
  v56 = 1;
  __swift_storeEnumTagSinglePayload(v53, v54, 1, v55);
  v57 = *(v50 + 72);
  v58 = v175;
  if (v57)
  {
    v59 = *(v50 + 64);
    v60 = *(v50 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v59;
    *(v61 + 24) = v57;
    *(v61 + 32) = v60 & 1;
    MEMORY[0x28223BE20](v61);
    *(&v145 - 4) = v59;
    *(&v145 - 3) = v57;
    *(&v145 - 16) = v62;
    sub_274483110(v59, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA28);
    sub_274483150();
    sub_27463AD5C();

    v56 = 0;
  }

  v63 = v161;
  v64 = v160;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA10);
  __swift_storeEnumTagSinglePayload(v58, v56, 1, v65);
  v66 = *(v50 + 88);
  if (!v66)
  {
LABEL_69:
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
    return result;
  }

  v67 = v66 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_27;
  }

  v69 = Strong;
  v70 = *(v67 + 8);
  v71 = *(v63 + v64);
  sub_2746383BC();
  if (!swift_dynamicCastClass() || (objc_opt_self(), (v72 = swift_dynamicCastObjCClass()) == 0))
  {
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v147 = v72;
  v73 = v71;
  if (!sub_27446EEE0())
  {
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  v146 = v70;
  v148 = v73;
  swift_getKeyPath();
  swift_getKeyPath();
  v74 = v150;
  sub_274638FAC();

  v179[1] = *(v63 + v64);
  v75 = v152;
  sub_27463837C();
  (*(v151 + 8))(v74, v75);
  if (!v180)
  {
    swift_unknownObjectRelease();
    v112 = v179;
LABEL_44:

    goto LABEL_27;
  }

  v152 = v180;
  v151 = v181;
  if (!sub_27446EEE0())
  {
    swift_unknownObjectRelease();

    v112 = v182;
    goto LABEL_44;
  }

  v76 = v152;
  v180 = v152;
  v181 = v151;
  v77 = sub_27451FB04(&v180);

  if (v77)
  {
    v145 = v69;
    *&v151 = v50;
    v150 = v49;
    v78 = MEMORY[0x277D84F90];
    v180 = MEMORY[0x277D84F90];
    v79 = sub_274453594(v77);
    v80 = 0;
    while (v79 != v80)
    {
      if ((v77 & 0xC000000000000001) != 0)
      {
        v81 = MEMORY[0x277C58B20](v80, v77);
      }

      else
      {
        if (v80 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v81 = *(v77 + 8 * v80 + 32);
      }

      v82 = v81;
      if (__OFADD__(v80, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x277C57F30]();
        if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_27463B85C();
        }

        sub_27463B8AC();
        v78 = v180;
        ++v80;
      }

      else
      {

        ++v80;
      }
    }

    v113 = sub_274453594(v78);
    v114 = 0;
    v115 = v78 & 0xC000000000000001;
    v58 = v175;
    while (v113 != v114)
    {
      if (v115)
      {
        v116 = MEMORY[0x277C58B20](v114, v78);
      }

      else
      {
        if (v114 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v116 = *(v78 + 8 * v114 + 32);
      }

      v117 = v116;
      if (__OFADD__(v114, 1))
      {
        goto LABEL_65;
      }

      v118 = [v116 mode];

      ++v114;
      if (v118 == 1)
      {
        goto LABEL_55;
      }
    }

    for (i = 0; v113 != i; ++i)
    {
      if (v115)
      {
        v120 = MEMORY[0x277C58B20](i, v78);
      }

      else
      {
        if (i >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v120 = *(v78 + 8 * i + 32);
      }

      v121 = v120;
      if (__OFADD__(i, 1))
      {
        goto LABEL_67;
      }

      if ([v120 mode] == 2)
      {

        v122 = sub_27446EEE0();
        if (!v122)
        {
          swift_unknownObjectRelease();

          goto LABEL_56;
        }

        v123 = *(v122 + 24);

        v124 = [v123 actions];

        sub_274412734(0, &qword_28094E040);
        sub_27463B81C();

        sub_2744B2A9C();
        v126 = v125;
        v128 = v127;

        v129 = v148;
        if (v128)
        {
          swift_unknownObjectRelease();

          v83 = 1;
        }

        else
        {
          v130 = v174;
          sub_27463AF5C();
          v131 = swift_allocObject();
          *(v131 + 24) = v146;
          swift_unknownObjectWeakInit();
          v132 = swift_allocObject();
          v132[2] = v147;
          v132[3] = v131;
          v132[4] = v126;
          v148 = v129;

          v133 = v172;
          sub_27463AD5C();

          v134 = *(v159 + 16);
          v135 = v158;
          v136 = v130;
          v137 = v157;
          v134(v158, v136, v157);
          v138 = *(v173 + 16);
          v139 = v149;
          v140 = v171;
          v138(v149, v133, v171);
          v141 = v179[0];
          v134(v179[0], v135, v137);
          v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA20);
          v138((v141 + *(v142 + 48)), v139, v140);
          swift_unknownObjectRelease();

          v58 = v175;
          v143 = *(v173 + 8);
          v143(v172, v140);
          v144 = *(v159 + 8);
          v144(v174, v137);
          v143(v139, v140);
          v144(v158, v137);
          v83 = 0;
        }

        goto LABEL_57;
      }
    }

LABEL_55:
    swift_unknownObjectRelease();

LABEL_56:
    v83 = 1;
LABEL_57:
    v50 = v151;
    v63 = v161;
    v64 = v160;
    goto LABEL_28;
  }

  swift_unknownObjectRelease();

LABEL_27:
  v83 = 1;
LABEL_28:
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA18);
  v85 = 1;
  __swift_storeEnumTagSinglePayload(v179[0], v83, 1, v84);
  sub_2744764D0(v50, v177);
  sub_27463AF5C();
  sub_27447731C(v50, v168);
  sub_27463AF5C();
  if ([*(v63 + v64) isDeletable])
  {
    v86 = *(v50 + 16);
    if (v86)
    {
      v87 = *(v50 + 24);

      v88 = v153;
      sub_27463904C();
      v89 = sub_27463905C();
      __swift_storeEnumTagSinglePayload(v88, 0, 1, v89);
      v90 = swift_allocObject();
      *(v90 + 16) = v86;
      *(v90 + 24) = v87;

      sub_27463AD4C();
      sub_274406A94(v86);
      v85 = 0;
    }
  }

  v91 = v171;
  __swift_storeEnumTagSinglePayload(v176, v85, 1, v171);
  v92 = v172;
  (*(v173 + 16))(v172, v162, v91);
  v180 = v92;
  v93 = v163;
  sub_274412C20(v178, v163, &unk_28094C9F0);
  *&v181 = v93;
  v94 = v164;
  sub_274412C20(v58, v164, &unk_28094C9F0);
  *(&v181 + 1) = v94;
  v95 = v167;
  sub_274412C20(v179[0], v167, &qword_28094C9E8);
  v182[0] = v95;
  v96 = v169;
  sub_274412C20(v177, v169, &unk_28094E140);
  v182[1] = v96;
  v97 = v159;
  v98 = *(v159 + 16);
  v99 = v174;
  v100 = v166;
  v101 = v157;
  v98(v174, v166, v157);
  v182[2] = v99;
  v102 = v168;
  v103 = v170;
  sub_274412C20(v168, v170, &unk_28094C9D0);
  v182[3] = v103;
  v104 = v158;
  v105 = v165;
  v98(v158, v165, v101);
  v182[4] = v104;
  v106 = v176;
  v107 = v156;
  sub_274412C20(v176, v156, &qword_28094E150);
  v182[5] = v107;
  sub_2744B2260();
  sub_27440CB1C(v106, &qword_28094E150);
  v108 = *(v97 + 8);
  v108(v105, v101);
  sub_27440CB1C(v102, &unk_28094C9D0);
  v108(v100, v101);
  sub_27440CB1C(v177, &unk_28094E140);
  sub_27440CB1C(v179[0], &qword_28094C9E8);
  sub_27440CB1C(v175, &unk_28094C9F0);
  sub_27440CB1C(v178, &unk_28094C9F0);
  v109 = *(v173 + 8);
  v110 = v171;
  v109(v162, v171);
  sub_27440CB1C(v107, &qword_28094E150);
  v108(v104, v101);
  sub_27440CB1C(v170, &unk_28094C9D0);
  v108(v174, v101);
  sub_27440CB1C(v169, &unk_28094E140);
  sub_27440CB1C(v167, &qword_28094C9E8);
  sub_27440CB1C(v164, &unk_28094C9F0);
  sub_27440CB1C(v163, &unk_28094C9F0);
  return (v109)(v172, v110);
}

void sub_274474848(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v5 = *(*(a4 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  a2();
}

uint64_t sub_2744748BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[3];
  v17 = a1[2];
  v7 = a1[4];
  v8 = a1[5];
  v9 = *(a2 + 8);
  v10 = *(a2 + *(type metadata accessor for ActionView(0) + 84)) + 2.0;
  KeyPath = swift_getKeyPath();
  type metadata accessor for ActionViewModel();
  sub_27447FCA0(&qword_28094C460, type metadata accessor for ActionViewModel);
  v12 = v9;

  v13 = v8;
  result = sub_27463950C();
  *a3 = result;
  *(a3 + 8) = v15;
  *(a3 + 16) = v5;
  *(a3 + 24) = v4;
  *(a3 + 32) = v17;
  *(a3 + 40) = v6;
  *(a3 + 48) = v7;
  *(a3 + 56) = v13;
  *(a3 + 64) = v10;
  v16 = MEMORY[0x277D84F90];
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 72) = v16;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = KeyPath;
  *(a3 + 136) = 0;
  return result;
}

uint64_t sub_274474A0C()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_showMoreParameters);
  if (v2 >> 62)
  {
    result = sub_27463C27C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ([*(v1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) parameterCollapsingBehavior] == 2 || *(v1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError))
  {
    return 0;
  }

  else
  {
    return *(v1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_isExpanded);
  }
}

uint64_t sub_274474AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for WorkflowEditorOptions(0);
  sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  v6 = sub_27463979C();
  v8 = v7;
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v6;
  *(a3 + 24) = v8;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 0;
  *(a3 + 48) = v10;
  *(a3 + 56) = 0;
  *(a3 + 64) = result;
  *(a3 + 72) = 0;
  return result;
}

uint64_t sub_274474BB4()
{
  v1 = v0;
  v2 = *(v0 + 88);
  if (v2)
  {
    v3 = v2;
    v4 = sub_27443B4C4();

    if ((v4 & 1) != 0 || (*(v1 + 81) & 1) == 0)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

void sub_274474C6C(BOOL *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C830);
  sub_27463ACEC();
  if (v2)
  {
  }

  *a1 = v2 != 0;
}

_BYTE *sub_274474CDC(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C830);
    return sub_27463ACFC();
  }

  return result;
}

void sub_274474D44(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C830);
  sub_27463ACEC();
  if (v4)
  {
    ObjectType = swift_getObjectType();
    v3 = (*(v5 + 8))(ObjectType);
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
}

double sub_274474DE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_274474EA4(a1);
  WFActionDetailsViewController.contentSizeThatFits(_:)(__PAIR128__(0x7FEFFFFFFFFFFFFFLL, 0x4079000000000000));

  sub_27463B0CC();
  sub_2746392FC();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  result = *&v9;
  *(a2 + 40) = v9;
  return result;
}

uint64_t sub_274474EA4(uint64_t a1)
{
  v2 = type metadata accessor for ActionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_2746381FC();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27463851C();
  sub_27463850C();
  v8 = *(*(a1 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  sub_2746384FC();

  sub_274483F70(a1, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_274480BE8(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ActionView);
  v11 = objc_allocWithZone(type metadata accessor for WFActionDetailsViewController());
  WFActionDetailsViewController.init(action:showCloseButton:appendActionHandler:)(v7, 0, sub_27448275C, v10);
  v13 = v12;
  sub_274483F70(a1, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionView);
  v14 = swift_allocObject();
  sub_274480BE8(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v9, type metadata accessor for ActionView);
  v15 = (v13 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_dismissalHandler);
  swift_beginAccess();
  v16 = *v15;
  *v15 = sub_274482788;
  v15[1] = v14;
  sub_274406A94(v16);
  return v13;
}

uint64_t sub_274475108(uint64_t a1)
{
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 192);
  v7 = *(a1 + 200);

  if ((v7 & 1) == 0)
  {
    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    j__swift_release(v6, 0);
    result = (*(v3 + 8))(v5, v2);
    v6 = v22[1];
  }

  if (v6)
  {
    v10 = *(v6 + 24);

    v11 = [v10 actions];

    sub_274412734(0, &qword_28094E040);
    v12 = sub_27463B81C();

    v13 = sub_274453594(v12);

    v14 = *(a1 + 88);
    if (v14)
    {
      v15 = v14 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v16 = *(v15 + 8);
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_274648560;
        v19 = *(*(a1 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F500);
        v20 = sub_27463B4DC();
        v21 = sub_2745942EC(v20, v19);

        *(v18 + 32) = v21;
        (*(v16 + 32))(v18, v13, ObjectType, v16);

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
      result = sub_27463978C();
      __break(1u);
    }
  }

  return result;
}

void sub_2744754F4()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_274638FAC();

    if (v5)
    {
    }

    else
    {
      v3 = *(v0 + 8);
      if (!sub_2745E2570() && [*(v3 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) displaysParameterSummary] && *(v3 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 24) && !*(v3 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError))
      {
        sub_2745E27D4();
        if (v4)
        {
        }
      }
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

void sub_274475654(uint64_t a1)
{
  v2 = sub_274639FEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BC50);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v30 = a1;
  sub_27446F174(&v28 - v16);
  (*(v3 + 104))(v14, *MEMORY[0x277CE0560], v2);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
  v18 = *(v6 + 56);
  sub_274412C20(v17, v8, &qword_28094A610);
  sub_274412C20(v14, &v8[v18], &qword_28094A610);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_27440CB1C(v14, &qword_28094A610);
    sub_27440CB1C(v17, &qword_28094A610);
    if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) == 1)
    {
      sub_27440CB1C(v8, &qword_28094A610);
LABEL_10:
      v27 = *(v30 + 128);
      v32 = *(v30 + 120);
      v33 = v27;
      v31 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0);
      sub_27463ACFC();
      return;
    }

    goto LABEL_6;
  }

  sub_274412C20(v8, v11, &qword_28094A610);
  if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) == 1)
  {
    sub_27440CB1C(v14, &qword_28094A610);
    sub_27440CB1C(v17, &qword_28094A610);
    (*(v3 + 8))(v11, v2);
LABEL_6:
    sub_27440CB1C(v8, &unk_28094BC50);
    goto LABEL_7;
  }

  v23 = &v8[v18];
  v24 = v29;
  (*(v3 + 32))(v29, v23, v2);
  sub_27447FCA0(&unk_28094BC90, MEMORY[0x277CE0570]);
  v25 = sub_27463B5BC();
  v26 = *(v3 + 8);
  v26(v24, v2);
  sub_27440CB1C(v14, &qword_28094A610);
  sub_27440CB1C(v17, &qword_28094A610);
  v26(v11, v2);
  sub_27440CB1C(v8, &qword_28094A610);
  if (v25)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = *(v30 + 88);
  if (v19)
  {
    v20 = *(*(v30 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    v21 = v19;
    v22 = v20;
    sub_27443E144(v22);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_274475BB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA38);
  MEMORY[0x28223BE20](v2);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  if (*(*(a1 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_isFavorite) == 1)
  {
    sub_27463B70C();
    if (qword_2809492C0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v9 = qword_28094BB00;
  v10 = sub_27463B66C();
  v11 = sub_27463B66C();

  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  v13 = sub_27463B6AC();
  v15 = v14;

  v17[0] = v13;
  v17[1] = v15;
  sub_274412BBC();
  sub_27463ACCC();
  (*(v6 + 16))(v4, v8, v5);
  swift_storeEnumTagMultiPayload();
  sub_27440CA78(&unk_28094CDA0, &unk_28094CA00);
  sub_274639DDC();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_274475F68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20);
  MEMORY[0x277C575F0](&v1);
  return sub_27463AEBC();
}

uint64_t sub_274475FFC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA38);
  MEMORY[0x28223BE20](v6);
  v8 = &v22[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22[-v11];
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20);
  MEMORY[0x277C575F0](&v23, v13);
  if (v23 == 1)
  {
    sub_27463B70C();
    if (qword_2809492C0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v14 = qword_28094BB00;
  v15 = sub_27463B66C();
  v16 = sub_27463B66C();

  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  v18 = sub_27463B6AC();
  v20 = v19;

  v24 = v18;
  v25 = v20;
  sub_274412BBC();
  sub_27463ACCC();
  (*(v10 + 16))(v8, v12, v9);
  swift_storeEnumTagMultiPayload();
  sub_27440CA78(&unk_28094CDA0, &unk_28094CA00);
  sub_274639DDC();
  return (*(v10 + 8))(v12, v9);
}

void sub_2744763E4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 createAccompanyingActionWithMode_];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(v5, a3, ObjectType, v6);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_2744764D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA68);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA70);
  v53 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v63 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v47 - v10;
  v11 = type metadata accessor for ActionView(0);
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA78);
  v52 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v64 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v47 - v15;
  v16 = sub_27463AF6C();
  v59 = *(v16 - 8);
  v60 = v16;
  MEMORY[0x28223BE20](v16);
  v58 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v21 = *(a1 + 8);
  v22 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_accessResourcesAllowingMultipleAccounts;
  if ((sub_274453594(*(v21 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_accessResourcesAllowingMultipleAccounts)) || sub_274453594(*(v21 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_accessResourcesThatCanLogOut))) && (v23 = sub_27446F024()) != 0)
  {
    v54 = v20;
    v55 = v23;
    sub_27463AF5C();
    v65 = *(v21 + v22);
    KeyPath = swift_getKeyPath();
    sub_274483F70(a1, &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionView);
    v24 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v25 = swift_allocObject();
    v49 = v7;
    sub_274480BE8(&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for ActionView);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA80);
    v50 = a2;
    v56 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CD90);
    v51 = v4;
    sub_27440CA78(&qword_28094CA88, &qword_28094CA80);
    sub_274482214(&unk_28094CA90, &unk_2809542B0);
    sub_27440CA78(&qword_28094CAA0, &unk_28094CD90);
    v26 = v57;
    sub_27463AF7C();
    v65 = *(v21 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_accessResourcesThatCanLogOut);
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v55;

    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CAA8);
    sub_27448336C();
    v27 = v62;
    sub_27463AF7C();
    v28 = v58;
    v29 = *(v59 + 16);
    v30 = v60;
    v29(v58, v54, v60);
    v31 = v52;
    KeyPath = *(v52 + 16);
    KeyPath(v64, v26, v61);
    v32 = v53;
    v47 = *(v53 + 16);
    v33 = v27;
    v34 = v49;
    v47(v63, v33, v49);
    v35 = v56;
    v29(v56, v28, v30);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CAB8);
    v37 = v61;
    KeyPath((v35 + *(v36 + 48)), v64, v61);
    v38 = v63;
    v47((v35 + *(v36 + 64)), v63, v34);
    swift_unknownObjectRelease();
    v39 = *(v32 + 8);
    v40 = v34;
    v39(v62, v34);
    v41 = *(v31 + 8);
    v42 = v37;
    v41(v57, v37);
    v43 = v60;
    v44 = *(v59 + 8);
    v44(v54, v60);
    v39(v38, v40);
    v41(v64, v42);
    v44(v58, v43);
    v45 = v50;
    sub_27441277C(v56, v50, &qword_28094CA68);
    return __swift_storeEnumTagSinglePayload(v45, 0, 1, v51);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_274476C64(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *a1;
  sub_274483F70(a2, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_274480BE8(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ActionView);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00);
  sub_27440CA78(&unk_28094CDA0, &unk_28094CA00);
  return sub_27463AD5C();
}

uint64_t sub_274476E14(uint64_t a1, void *a2)
{
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a2))
  {
    v3 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C830);
  return sub_27463ACFC();
}

uint64_t sub_274476EE0(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CAC0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CD90);
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v17 - v10;
  v12 = *a1;
  if ([v12 isAvailable])
  {
    *(swift_allocObject() + 16) = v12;
    v13 = v12;
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = a2;
    v15 = v12;
    swift_unknownObjectRetain();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00);
  sub_27440CA78(&unk_28094CDA0, &unk_28094CA00);
  sub_27463AD5C();
  (*(v8 + 16))(v6, v11, v7);
  swift_storeEnumTagMultiPayload();
  sub_27440CA78(&qword_28094CAA0, &unk_28094CD90);
  sub_274639DDC();
  return (*(v8 + 8))(v11, v7);
}

void sub_27447723C(void *a1, uint64_t a2)
{
  v5[4] = CGSizeMake;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2744458C4;
  v5[3] = &block_descriptor_7;
  v4 = _Block_copy(v5);
  [a1 makeAvailableWithUserInterface:a2 completionHandler:v4];
  _Block_release(v4);
}

uint64_t sub_27447731C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA40);
  MEMORY[0x28223BE20](v69);
  v66 = &v64 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA48);
  MEMORY[0x28223BE20](v4 - 8);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v64 - v7;
  v8 = type metadata accessor for ActionView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CD90);
  v11 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v65 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v68 = &v64 - v14;
  MEMORY[0x28223BE20](v15);
  v64 = &v64 - v16;
  MEMORY[0x28223BE20](v17);
  v77 = &v64 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E150);
  MEMORY[0x28223BE20](v22 - 8);
  v76 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v64 - v25;
  v27 = *(a1 + 48);
  v28 = *(a1 + 56);
  v78 = &v64 - v25;
  v72 = a1;
  v74 = v21;
  v75 = v11;
  v67 = v28;
  if (v27)
  {
    sub_274483F70(a1, &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionView);
    v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v30 = swift_allocObject();
    sub_274480BE8(&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for ActionView);
    v31 = (v30 + ((v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = v27;
    v31[1] = v28;
    sub_2744069F0(v27);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00);
    a1 = v72;
    sub_27440CA78(&unk_28094CDA0, &unk_28094CA00);
    v26 = v78;
    sub_27463AD5C();
    sub_274406A94(v27);
    (*(v75 + 32))(v26, v21, v79);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = 1;
  __swift_storeEnumTagSinglePayload(v26, v32, 1, v79);
  sub_274483F70(a1, &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionView);
  v34 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v35 = swift_allocObject();
  sub_274480BE8(&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for ActionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00);
  sub_27440CA78(&unk_28094CDA0, &unk_28094CA00);
  sub_27463AD5C();
  sub_274412734(0, &qword_28094E040);
  v36 = sub_2744F3CC8();
  if (v27)
  {
    if (v36)
    {
      v37 = *(v72 + 32);
      if (v37)
      {
        v38 = *(v72 + 40);
        v39 = swift_allocObject();
        *(v39 + 16) = v37;
        *(v39 + 24) = v38;
        v72 = v38;
        sub_2744069F0(v37);
        v40 = v67;
        sub_2744069F0(v27);
        sub_2744069F0(v37);
        v41 = v74;
        sub_27463AD5C();
        v42 = swift_allocObject();
        *(v42 + 16) = v27;
        *(v42 + 24) = v40;

        v43 = v64;
        sub_27463AD5C();
        v44 = v75;
        v45 = *(v75 + 16);
        v46 = v68;
        v47 = v79;
        v45(v68, v41, v79);
        v48 = v65;
        v45(v65, v43, v47);
        v49 = v66;
        v45(v66, v46, v47);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA58);
        v45((v49 + *(v50 + 48)), v48, v47);
        sub_274406A94(v27);
        sub_274406A94(v37);
        v51 = *(v44 + 8);
        v51(v43, v47);
        v51(v74, v47);
        v51(v48, v47);
        v51(v68, v47);
        sub_27441277C(v49, v73, &qword_28094CA40);
        v33 = 0;
      }
    }
  }

  v52 = v79;
  v53 = v73;
  __swift_storeEnumTagSinglePayload(v73, v33, 1, v69);
  v54 = v76;
  sub_274412C20(v78, v76, &qword_28094E150);
  v56 = v74;
  v55 = v75;
  v57 = *(v75 + 16);
  v58 = v77;
  v57(v74, v77, v52);
  v59 = v70;
  sub_274412C20(v53, v70, &qword_28094CA48);
  v60 = v71;
  sub_274412C20(v54, v71, &qword_28094E150);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA50);
  v57((v60 + *(v61 + 48)), v56, v52);
  sub_274412C20(v59, v60 + *(v61 + 64), &qword_28094CA48);
  sub_27440CB1C(v53, &qword_28094CA48);
  v62 = *(v55 + 8);
  v62(v58, v52);
  sub_27440CB1C(v78, &qword_28094E150);
  sub_27440CB1C(v59, &qword_28094CA48);
  v62(v56, v52);
  return sub_27440CB1C(v76, &qword_28094E150);
}

uint64_t sub_274477C6C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = sub_274639ABC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 192);
  v14 = *(a1 + 200);

  if ((v14 & 1) == 0)
  {
    sub_27463BC0C();
    v16 = sub_27463A2FC();
    v28 = a1;
    v17 = v5;
    v18 = v6;
    v19 = a2;
    v20 = v16;
    sub_274638CEC();

    a2 = v19;
    v6 = v18;
    v5 = v17;
    a1 = v28;
    sub_274639AAC();
    swift_getAtKeyPath();
    j__swift_release(v13, 0);
    result = (*(v10 + 8))(v12, v9);
    v13 = v31;
  }

  if (v13)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    v30 = *(*(a1 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    sub_27463837C();
    (*(v6 + 8))(v8, v5);
    v21 = v31;
    if (v31)
    {
      v23 = v32;
      v22 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_274648570;
      *(inited + 32) = v21;
      *(inited + 40) = v23;
      *(inited + 48) = v22;
      v25 = v21;
      v26 = sub_27451FC40(inited, 0);
      swift_setDeallocating();
      sub_2744EBBEC();
      a2(v26);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_274477F90()
{
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v0 = qword_28094BB00;
  v1 = sub_27463B66C();
  v2 = sub_27463B66C();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  sub_27463B6AC();
  sub_274412BBC();
  return sub_27463ACCC();
}

uint64_t sub_2744780BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - v4;
  v6 = sub_274639ABC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 192);
  v11 = *(a1 + 200);

  if ((v11 & 1) == 0)
  {
    sub_27463BC0C();
    v13 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    j__swift_release(v10, 0);
    result = (*(v7 + 8))(v9, v6);
    v10 = v21;
  }

  if (v10)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    v20[8] = *(*(a1 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    sub_27463837C();
    (*(v3 + 8))(v5, v2);
    v14 = v21;
    if (v21)
    {
      v16 = v22;
      v15 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CA60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_274648570;
      *(inited + 32) = v14;
      *(inited + 40) = v16;
      *(inited + 48) = v15;
      v18 = v14;
      v19 = sub_27451FC40(inited, 1);
      swift_setDeallocating();
      sub_2744EBBEC();
      sub_274412734(0, &qword_28094E040);
      sub_2744F3BB4(v19);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_274478420(void (*a1)(void))
{
  sub_274412734(0, &qword_28094E040);
  sub_2744F3DF0();
  a1();
}

uint64_t sub_2744784EC()
{
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v0 = qword_28094BB00;
  v1 = sub_27463B66C();
  v2 = sub_27463B66C();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  sub_27463B6AC();
  sub_274412BBC();
  return sub_27463ACCC();
}

uint64_t sub_274478610@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_274639C5C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C628);
  v7 = sub_274547588(v1[1]);
  swift_getKeyPath();
  v3 = swift_allocObject();
  memcpy((v3 + 16), v1, 0x49uLL);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2744821A4;
  *(v4 + 24) = v3;
  sub_2744821DC(v1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C638);
  sub_27440CA78(&qword_28094C640, &qword_28094C630);
  sub_274482214(&qword_28094BD48, &qword_28094AE40);
  sub_27440CA78(&qword_28094C648, &qword_28094C638);
  return sub_27463AF7C();
}

uint64_t sub_2744787EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_274639C5C();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C650);
  return sub_274478858(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t sub_274478858@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a4;
  v74 = sub_274639ABC();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for ParameterRowView();
  MEMORY[0x28223BE20](v65);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C658);
  MEMORY[0x28223BE20](v68);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C660);
  MEMORY[0x28223BE20](v13 - 8);
  v70 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v69 = &v65 - v16;
  v17 = sub_27463AF6C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C668);
  MEMORY[0x28223BE20](v21 - 8);
  v67 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - v24;
  if (a1)
  {
    sub_27463AF5C();
    (*(v18 + 32))(v25, v20, v17);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v25, v26, 1, v17);
  v27 = *(*a3 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  v80 = *(a3 + 32);
  v81 = *(a3 + 40);
  v73 = v27;
  v66 = v25;
  if (v81 == 1)
  {
    v28 = v27;
    v29 = a2;
    sub_274412C20(&v80, v75, &unk_28094C670);
  }

  else
  {
    v30 = v27;
    v31 = a2;
    sub_274412C20(&v80, v75, &unk_28094C670);
    sub_27463BC0C();
    v32 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27440CB1C(&v80, &unk_28094C670);
    (*(v72 + 8))(v8, v74);
  }

  type metadata accessor for ParameterStateStore();
  v33 = ParameterStateStore.__allocating_init(action:parameter:undoManager:)();
  v34 = *(a3 + 64);
  v78 = v34;
  v79 = *(a3 + 72);
  if (v79 != 1)
  {

    sub_27463BC0C();
    v35 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27440CB1C(&v78, &qword_28094CD80);
    (*(v72 + 8))(v8, v74);
    LOBYTE(v34) = v75[0];
  }

  v77 = *(a3 + 56);
  v76 = *(a3 + 48);
  if (v77 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_27463BC0C();
    v36 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27440CB1C(&v76, &unk_28094C680);
    (*(v72 + 8))(v8, v74);
  }

  v37 = *(a3 + 16);
  if (v37)
  {
    swift_unknownObjectWeakInit();
    v38 = v37;
    v10[56] = sub_2746390EC() & 1;
    *(v10 + 8) = v39;
    v10[72] = v40 & 1;
    v41 = v65;
    v42 = *(v65 + 52);
    *&v10[v42] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
    swift_storeEnumTagMultiPayload();
    v43 = &v10[*(v41 + 56)];
    *v43 = swift_getKeyPath();
    v43[8] = 0;
    *v10 = a2;
    *(v10 + 1) = v33;
    v10[16] = v34 & 1;
    v10[17] = 0;
    *(v10 + 3) = 0;
    *(v10 + 16) = 1;
    swift_unknownObjectWeakAssign();
    v44 = a2;
    swift_unknownObjectRelease();
    *(v10 + 6) = v38;
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    v45 = sub_27463979C();
    v47 = v46;
    KeyPath = swift_getKeyPath();
    sub_274480BE8(v10, v12, type metadata accessor for ParameterRowView);
    v49 = &v12[*(v68 + 36)];
    *v49 = v45;
    *(v49 + 1) = v47;
    *(v49 + 2) = KeyPath;
    v49[24] = 0;
    v75[0] = 0;
    v75[1] = 0xE000000000000000;
    sub_27463C38C();

    strcpy(v75, "editor.action.");
    HIBYTE(v75[1]) = -18;
    v50 = [v73 identifier];
    v51 = sub_27463B6AC();
    v53 = v52;

    MEMORY[0x277C57EA0](v51, v53);

    MEMORY[0x277C57EA0](46, 0xE100000000000000);
    v54 = [v44 key];
    v55 = sub_27463B6AC();
    v57 = v56;

    MEMORY[0x277C57EA0](v55, v57);

    sub_274482264();
    v58 = v69;
    sub_27463A86C();

    sub_27440CB1C(v12, &qword_28094C658);
    v60 = v66;
    v59 = v67;
    sub_274412C20(v66, v67, &qword_28094C668);
    v61 = v70;
    sub_274412C20(v58, v70, &qword_28094C660);
    v62 = v71;
    sub_274412C20(v59, v71, &qword_28094C668);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C6A8);
    sub_274412C20(v61, v62 + *(v63 + 48), &qword_28094C660);
    sub_27440CB1C(v58, &qword_28094C660);
    sub_27440CB1C(v60, &qword_28094C668);
    sub_27440CB1C(v61, &qword_28094C660);
    return sub_27440CB1C(v59, &qword_28094C668);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_274479204@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_274639C5C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C6B0);
  v9 = sub_274547588(*v1);
  swift_getKeyPath();
  v11 = *(v1 + 8);
  v10 = *(v1 + 32);
  v3 = swift_allocObject();
  v4 = *(v1 + 16);
  v3[1] = *v1;
  v3[2] = v4;
  v3[3] = *(v1 + 32);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_274482374;
  *(v5 + 24) = v3;

  sub_274412C20(&v11, v8, &qword_28094C6B8);

  sub_274412C20(&v10, v8, &qword_28094C6C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C6C8);
  sub_27440CA78(&qword_28094C640, &qword_28094C630);
  sub_274482214(&qword_28094BD48, &qword_28094AE40);
  OUTLINED_FUNCTION_20_5();
  sub_27440CA78(v6, &qword_28094C6C8);
  return sub_27463AF7C();
}

uint64_t sub_274479420@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a3;
  v106 = a4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C6D8);
  v95 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v94 = &v93 - v6;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C6E0);
  v96 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v98 = &v93 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C6E8);
  MEMORY[0x28223BE20](v99);
  v100 = (&v93 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C6F0);
  MEMORY[0x28223BE20](v9);
  v102 = &v93 - v10;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C6F8);
  MEMORY[0x28223BE20](v104);
  v12 = (&v93 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C700);
  MEMORY[0x28223BE20](v13 - 8);
  v105 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v93 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8D0);
  MEMORY[0x28223BE20](v18);
  v20 = &v93 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C710);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v93 - v25;
  v27 = 1;
  if (a1)
  {
    sub_27463AF5C();
    v28 = sub_27463A35C();
    v29 = &v20[*(v18 + 36)];
    *v29 = v28;
    *(v29 + 8) = 0u;
    *(v29 + 24) = 0u;
    v29[40] = 1;
    sub_27441277C(v20, v26, &qword_28094A8D0);
    v27 = 0;
  }

  __swift_storeEnumTagSinglePayload(v26, v27, 1, v18);
  v30 = [a2 importQuestionBehavior];
  v31 = sub_27463B6AC();
  v33 = v32;
  if (v31 == sub_27463B6AC() && v33 == v34)
  {

    goto LABEL_10;
  }

  v36 = sub_27463C6BC();

  if (v36)
  {

LABEL_10:
    LOBYTE(v117) = 0;
    v113 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C730);
    sub_27448247C();
    sub_274639DDC();
    v37 = v115;
    *v12 = v114;
    v12[1] = v37;
    v12[2] = v116[0];
    *(v12 + 41) = *(v116 + 9);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C750);
    sub_274482534();
    sub_2744825C0();
    sub_274639DDC();
    goto LABEL_11;
  }

  v93 = v9;
  v42 = sub_27463B6AC();
  v44 = v43;
  v45 = sub_27463B6AC();
  v47 = v46;

  if (v42 == v45 && v44 == v47)
  {
  }

  else
  {
    v49 = sub_27463C6BC();

    if ((v49 & 1) == 0)
    {
      v51 = v97;
      v52 = *(v97 + 8);
      *&v114 = a2;
      MEMORY[0x28223BE20](v50);
      *(&v93 - 2) = &v114;
      sub_27446EE0C(sub_2744823A0, (&v93 - 4), v52);
      if (v53)
      {
        v54 = [a2 localizedLabel];
        v55 = sub_27463B6AC();
        v57 = v56;

        sub_27463B70C();
        if (qword_2809492C0 != -1)
        {
          swift_once();
        }

        v58 = qword_28094BB00;
        v59 = sub_27463B66C();
        v60 = sub_27463B66C();

        v61 = [v58 localizedStringForKey:v59 value:v60 table:0];

        v62 = sub_27463B6AC();
        v64 = v63;

        KeyPath = swift_getKeyPath();
        v66 = swift_allocObject();
        *(v66 + 16) = 1;
        v67 = v100;
        *v100 = v55;
        v67[1] = v57;
        v67[2] = v62;
        v67[3] = v64;
        v67[4] = KeyPath;
        v67[5] = sub_2744826D8;
        v67[6] = v66;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C730);
        sub_27448247C();
        v68 = sub_27440CA78(&qword_28094C720, &qword_28094C6D8);
        v69 = sub_274482428();
        *&v114 = v101;
        *(&v114 + 1) = &type metadata for ParameterRowButtonStyle;
        *&v115 = v68;
        *(&v115 + 1) = v69;
        swift_getOpaqueTypeConformance2();
        v70 = v102;
        sub_274639DDC();
      }

      else
      {
        v117 = *v51;
        v107 = *(v51 + 32);
        v84 = swift_allocObject();
        v85 = *(v51 + 16);
        *(v84 + 16) = *v51;
        *(v84 + 32) = v85;
        *(v84 + 48) = *(v51 + 32);
        *(v84 + 64) = a2;
        MEMORY[0x28223BE20](v84);
        *(&v93 - 2) = a2;
        *(&v93 - 1) = v51;
        sub_274412C20(&v117, &v114, &qword_28094C6B8);

        sub_274412C20(&v107, &v114, &qword_28094C6C0);
        sub_2744823D4();
        v86 = a2;
        v87 = v94;
        sub_27463AD5C();
        v97 = sub_27440CA78(&qword_28094C720, &qword_28094C6D8);
        v88 = sub_274482428();
        v89 = v98;
        v90 = v101;
        sub_27463A6AC();
        (*(v95 + 8))(v87, v90);
        v91 = v96;
        v92 = v103;
        (*(v96 + 16))(v100, v89, v103);
        swift_storeEnumTagMultiPayload();
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C730);
        sub_27448247C();
        *&v114 = v90;
        *(&v114 + 1) = &type metadata for ParameterRowButtonStyle;
        *&v115 = v97;
        *(&v115 + 1) = v88;
        swift_getOpaqueTypeConformance2();
        v70 = v102;
        sub_274639DDC();
        (*(v91 + 8))(v98, v92);
      }

      sub_274412C20(v70, v12, &qword_28094C6F0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C750);
      sub_274482534();
      sub_2744825C0();
      sub_274639DDC();
      sub_27440CB1C(v70, &qword_28094C6F0);
      goto LABEL_11;
    }
  }

  v71 = [a2 localizedLabel];
  v103 = sub_27463B6AC();
  v73 = v72;

  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v74 = qword_28094BB00;
  v75 = sub_27463B66C();
  v76 = sub_27463B66C();

  v77 = [v74 localizedStringForKey:v75 value:v76 table:0];

  v78 = sub_27463B6AC();
  v80 = v79;

  v81 = swift_getKeyPath();
  v82 = swift_allocObject();
  *(v82 + 16) = 1;
  LOBYTE(v117) = 1;
  *&v107 = v103;
  *(&v107 + 1) = v73;
  v108 = v78;
  v109 = v80;
  v110 = v81;
  v111 = sub_274484B38;
  v112 = v82;
  v113 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C730);
  sub_27448247C();
  sub_274639DDC();
  v83 = v115;
  *v12 = v114;
  v12[1] = v83;
  v12[2] = v116[0];
  *(v12 + 41) = *(v116 + 9);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C750);
  sub_274482534();
  sub_2744825C0();
  sub_274639DDC();

LABEL_11:
  sub_274412C20(v26, v23, &qword_28094C710);
  v38 = v105;
  sub_274412C20(v17, v105, &unk_28094C700);
  v39 = v106;
  sub_274412C20(v23, v106, &qword_28094C710);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C768);
  sub_274412C20(v38, v39 + *(v40 + 48), &unk_28094C700);
  sub_27440CB1C(v17, &unk_28094C700);
  sub_27440CB1C(v26, &qword_28094C710);
  sub_27440CB1C(v38, &unk_28094C700);
  return sub_27440CB1C(v23, &qword_28094C710);
}

void sub_27447A2D8(uint64_t a1, uint64_t a2)
{
  (*(a1 + 16))(a2);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3;
    sub_27443D214();
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

void sub_27447A3A8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 localizedLabel];
  v4 = sub_27463B6AC();
  v6 = v5;

  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v7 = qword_28094BB00;
  v8 = sub_27463B66C();
  v9 = sub_27463B66C();

  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  v11 = sub_27463B6AC();
  v13 = v12;

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v11;
  a2[3] = v13;
}

void *sub_27447A4D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_274639C5C();
  __src[0] = 1;
  sub_27447A630(a1, v18);
  *&v15[7] = v18[0];
  *&v15[23] = v18[1];
  *&v15[39] = v18[2];
  *&v15[55] = v18[3];
  v5 = sub_27463A38C();
  sub_2746390AC();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_27463B0CC();
  sub_27463973C();
  memcpy(&v16[7], __src, 0x70uLL);
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  memcpy((a2 + 17), v15, 0x47uLL);
  *(a2 + 88) = v5;
  *(a2 + 96) = v7;
  *(a2 + 104) = v9;
  *(a2 + 112) = v11;
  *(a2 + 120) = v13;
  *(a2 + 128) = 0;
  return memcpy((a2 + 129), v16, 0x77uLL);
}

uint64_t sub_27447A630@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_274412BBC();
    swift_bridgeObjectRetain_n();
    v3 = sub_27463A53C();
    v5 = v4;
    v7 = v6;
    sub_27463A46C();
    v8 = sub_27463A50C();
    v33 = v9;
    v34 = v8;
    v11 = v10;
    v32 = v12;

    sub_274412C10(v3, v5, v7 & 1);

    v31 = v11 & 1;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
  }

  sub_274412BBC();

  v13 = sub_27463A53C();
  v15 = v14;
  v17 = v16;
  sub_27463A39C();
  v18 = sub_27463A50C();
  v20 = v19;
  v22 = v21;

  sub_274412C10(v13, v15, v17 & 1);

  sub_27463ABCC();
  v23 = sub_27463A4DC();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_274412C10(v18, v20, v22 & 1);

  *a2 = v34;
  *(a2 + 8) = v33;
  *(a2 + 16) = v31;
  *(a2 + 24) = v32;
  *(a2 + 32) = v23;
  *(a2 + 40) = v25;
  *(a2 + 48) = v27 & 1;
  *(a2 + 56) = v29;
  sub_274483EE8(v34, v33, v31, v32);
  sub_27440B094(v23, v25, v27 & 1);

  sub_274412C10(v23, v25, v27 & 1);

  return sub_274483F2C(v34, v33, v31, v32);
}

uint64_t sub_27447A880@<X0>(uint64_t a1@<X8>)
{
  v29 = sub_274639B2C();
  v36 = 0;
  sub_27447AA3C(v30);
  v27 = v30[1];
  v28 = v30[0];
  v6 = v31;
  v25 = v32;
  v26 = v30[2];
  v24 = v33;
  v7 = v34;
  LOBYTE(v30[0]) = v31;
  v35 = v34;
  v8 = v36;
  v9 = sub_27463AB4C();
  KeyPath = swift_getKeyPath();
  v11 = sub_27463A31C();
  sub_2746390AC();
  OUTLINED_FUNCTION_6_6();
  v36 = 0;
  v12 = sub_27463A38C();
  sub_2746390AC();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  LOBYTE(v30[0]) = 0;
  if (qword_280949280 != -1)
  {
    OUTLINED_FUNCTION_5_14();
  }

  v21 = qword_280965DC8;
  v22 = sub_27463ABDC();
  result = sub_27463A32C();
  *a1 = v29;
  *(a1 + 8) = 0x4018000000000000;
  *(a1 + 16) = v8;
  *(a1 + 24) = v28;
  *(a1 + 32) = v27;
  *(a1 + 40) = v26;
  *(a1 + 48) = v6;
  *(a1 + 56) = v25;
  *(a1 + 64) = v24;
  *(a1 + 72) = v7;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = v9;
  *(a1 + 96) = v11;
  *(a1 + 104) = v1;
  *(a1 + 112) = v2;
  *(a1 + 120) = v3;
  *(a1 + 128) = v4;
  *(a1 + 136) = 0;
  *(a1 + 144) = v12;
  *(a1 + 152) = v14;
  *(a1 + 160) = v16;
  *(a1 + 168) = v18;
  *(a1 + 176) = v20;
  *(a1 + 184) = 0;
  *(a1 + 192) = v22;
  *(a1 + 200) = result;
  return result;
}

uint64_t sub_27447AA3C@<X0>(uint64_t a1@<X8>)
{
  v15 = sub_27463AC2C();
  sub_274412BBC();

  v2 = sub_27463A53C();
  v4 = v3;
  v6 = v5;
  sub_27463A45C();
  v7 = sub_27463A50C();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_274412C10(v2, v4, v6 & 1);

  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11 & 1;
  *(a1 + 32) = v13;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;

  sub_27440B094(v7, v9, v11 & 1);

  sub_274412C10(v7, v9, v11 & 1);
}

void sub_27447AB98(uint64_t a1@<X8>)
{
  *a1 = sub_274639B2C();
  *(a1 + 8) = 0x4018000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC10);
  sub_27447AD14(a1 + *(v2 + 44));
  v3 = sub_27463AB4C();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC18);
  OUTLINED_FUNCTION_14_1();
  *v5 = KeyPath;
  v5[1] = v3;
  LOBYTE(v3) = sub_27463A31C();
  sub_2746390AC();
  OUTLINED_FUNCTION_6_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC20);
  OUTLINED_FUNCTION_14_1();
  *v6 = v3;
  OUTLINED_FUNCTION_10_10(v6);
  LOBYTE(v3) = sub_27463A38C();
  sub_2746390AC();
  OUTLINED_FUNCTION_6_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC28);
  OUTLINED_FUNCTION_14_1();
  *v7 = v3;
  OUTLINED_FUNCTION_10_10(v7);
  if (qword_280949280 != -1)
  {
    OUTLINED_FUNCTION_5_14();
  }

  v8 = qword_280965DC8;
  v9 = sub_27463ABDC();
  v10 = sub_27463A32C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC30);
  OUTLINED_FUNCTION_14_1();
  *v11 = v9;
  *(v11 + 8) = v10;
}

uint64_t sub_27447AD14@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_27463A1FC();
  v3 = *(v2 - 8);
  v44 = v2;
  v45 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC38);
  MEMORY[0x28223BE20](v41);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC40);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v42 = sub_27463AC2C();
  v14 = [objc_opt_self() localizedHomeUpdateRequiredTitle];
  v15 = sub_27463B6AC();
  v17 = v16;

  v46 = v15;
  v47 = v17;
  sub_274412BBC();
  v18 = sub_27463A53C();
  v20 = v19;
  LOBYTE(v14) = v21;
  sub_27463A45C();
  v22 = sub_27463A50C();
  v37 = v23;
  v38 = v22;
  v39 = v24;
  v40 = v25;

  sub_274412C10(v18, v20, v14 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC48);
  sub_274484214();
  sub_27463AD5C();
  v26 = sub_27463AB4C();
  KeyPath = swift_getKeyPath();
  v46 = v26;
  v28 = sub_27463930C();
  v29 = &v7[*(v41 + 36)];
  *v29 = KeyPath;
  v29[1] = v28;
  sub_27463A1EC();
  sub_274484408();
  sub_27447FCA0(&qword_28094CCB0, MEMORY[0x277CDE400]);
  v30 = v44;
  sub_27463A69C();
  (*(v45 + 8))(v5, v30);
  sub_27440CB1C(v7, &qword_28094CC38);
  v31 = &v13[*(v9 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CCB8);
  sub_27463974C();
  *v31 = swift_getKeyPath();
  v32 = v43;
  sub_274412C20(v13, v43, &qword_28094CC40);
  v34 = v37;
  v33 = v38;
  *a1 = v42;
  *(a1 + 8) = v33;
  *(a1 + 16) = v34;
  LOBYTE(v31) = v39 & 1;
  *(a1 + 24) = v39 & 1;
  *(a1 + 32) = v40;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CCC0);
  sub_274412C20(v32, a1 + *(v35 + 80), &qword_28094CC40);

  sub_27440B094(v33, v34, v31);

  sub_27440CB1C(v13, &qword_28094CC40);
  sub_27440CB1C(v32, &qword_28094CC40);
  sub_274412C10(v33, v34, v31);
}

id sub_27447B1B4()
{
  v0 = sub_274638DAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274638C2C();
  v4 = sub_274638D9C();
  v5 = sub_27463BC1C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2743F0000, v4, v5, "Attempting migration to HH2", v6, 2u);
    MEMORY[0x277C5A270](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return [objc_opt_self() updateHomeToHH2];
}

uint64_t sub_27447B30C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() localizedHomeUpdateRequiredButtonLabel];
  sub_27463B6AC();

  sub_274412BBC();
  v3 = sub_27463A53C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_27463A45C();
  KeyPath = swift_getKeyPath();
  v12 = v7 & 1;
  v13 = sub_27463AB8C();
  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v12;
  *(a1 + 24) = v9;
  *(a1 + 32) = 257;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v10;
  *(a1 + 56) = result;
  *(a1 + 64) = v13;
  return result;
}

void sub_27447B400()
{
  OUTLINED_FUNCTION_45_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C7E0);
  OUTLINED_FUNCTION_53_0(v4);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v15[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C7E8) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v15[-v10];
  *v7 = sub_274639C5C();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C7F0);
  sub_27447B594(v1, &v7[*(v12 + 44)]);
  sub_27463B0CC();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_27_3();
  sub_27441277C(v7, v11, &qword_28094C7E0);
  memcpy(&v11[*(v8 + 44)], v15, 0x70uLL);
  v13 = sub_27463A32C();
  sub_2746390AC();
  OUTLINED_FUNCTION_6_6();
  sub_27441277C(v11, v3, &qword_28094C7E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C7F8);
  OUTLINED_FUNCTION_14_1();
  *v14 = v13;
  OUTLINED_FUNCTION_10_10(v14);
  OUTLINED_FUNCTION_44_1();
}

uint64_t sub_27447B594@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v53 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809493A0);
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v48 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C808);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v48 - v7;
  if (!a1)
  {
    sub_27463B70C();
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v14 = qword_28094BB00;
    v15 = sub_27463B66C();
    v16 = sub_27463B66C();

    v8 = [v14 localizedStringForKey:v15 value:v16 table:0];

    v17 = sub_27463B6AC();
LABEL_8:
    v11 = v17;
    v13 = v18;

    goto LABEL_9;
  }

  v8 = a1;
  v9 = [v8 wf:0 localizedErrorStringWithActionName:?];
  if (v9)
  {
    v10 = v9;
    v11 = sub_27463B6AC();
    v13 = v12;

    goto LABEL_9;
  }

  v17 = sub_2744A089C(v8);
  if (v18)
  {
    goto LABEL_8;
  }

  v46 = [v8 localizedDescription];
  v11 = sub_27463B6AC();
  v13 = v47;

LABEL_9:
  v56 = v11;
  v57 = v13;
  sub_274412BBC();
  v19 = sub_27463A53C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v26 = sub_27463A31C();
  sub_2746390AC();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v23 & 1;
  v69 = v23 & 1;
  v68 = 0;
  v36 = 1;
  v37 = v51;
  if (!a1)
  {
    v38 = v48;
    sub_27463AD5C();
    (*(v49 + 32))(v54, v38, v37);
    v36 = 0;
  }

  v39 = v54;
  __swift_storeEnumTagSinglePayload(v54, v36, 1, v37);
  v40 = v52;
  sub_274412C20(v39, v52, &qword_28094C808);
  __src[0] = v19;
  __src[1] = v21;
  LOBYTE(__src[2]) = v35;
  __src[3] = v25;
  v41 = KeyPath;
  __src[4] = KeyPath;
  LOBYTE(__src[5]) = 1;
  LODWORD(v51) = v35;
  v42 = v26;
  LOBYTE(__src[6]) = v26;
  __src[7] = v28;
  __src[8] = v30;
  __src[9] = v32;
  __src[10] = v34;
  LOBYTE(__src[11]) = 0;
  v43 = v53;
  memcpy(v53, __src, 0x59uLL);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C810);
  sub_274412C20(v40, v43 + *(v44 + 48), &qword_28094C808);
  sub_274412C20(__src, &v56, &qword_28094C818);
  sub_27440CB1C(v39, &qword_28094C808);
  sub_27440CB1C(v40, &qword_28094C808);
  v56 = v19;
  v57 = v21;
  v58 = v51;
  v59 = v25;
  v60 = v41;
  v61 = 1;
  v62 = v42;
  v63 = v28;
  v64 = v30;
  v65 = v32;
  v66 = v34;
  v67 = 0;
  return sub_27440CB1C(&v56, &qword_28094C818);
}

void sub_27447BAB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = [objc_opt_self() sharedContext];
  sub_27463B6AC();
  sub_274637E1C();

  v4 = sub_274637E2C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_274637DFC();
    (*(*(v4 - 8) + 8))(v2, v4);
    sub_2744820AC(v5, 0xD000000000000015, 0x800000027468A110, 0, 0, v3);
  }
}

uint64_t sub_27447BC00@<X0>(uint64_t a1@<X8>)
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

void sub_27447BD28()
{
  OUTLINED_FUNCTION_45_1();
  v47 = v0;
  v51 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C770);
  OUTLINED_FUNCTION_53_0(v2);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v41 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C778) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v7);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C780) - 8;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_0();
  v50 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_15_4(v11);
  v12 = sub_27463AF6C();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_0();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8D0);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v21);
  v23 = &v41 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3(v25);
  sub_27463AF5C();
  v26 = sub_27463A33C();
  v27 = [objc_opt_self() systemShortcutsUserDefaults];
  v28 = sub_27463B66C();
  [v27 BOOLForKey_];

  sub_2746390AC();
  OUTLINED_FUNCTION_6_6();
  (*(v14 + 32))(v23, v18, v12);
  v29 = &v23[*(v20 + 44)];
  *v29 = v26;
  OUTLINED_FUNCTION_10_10(v29);
  v30 = v42;
  sub_27441277C(v23, v42, &qword_28094A8D0);
  *v5 = sub_274639C5C();
  *(v5 + 1) = 0x4030000000000000;
  v5[16] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C788);
  sub_27447C218(v47, &v5[*(v31 + 44)]);
  sub_27463B0CC();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_27_3();
  v32 = v45;
  sub_27441277C(v5, v45, &qword_28094C770);
  memcpy((v32 + *(v48 + 44)), v52, 0x70uLL);
  LOBYTE(v5) = sub_27463A32C();
  sub_2746390AC();
  OUTLINED_FUNCTION_6_6();
  v33 = v32;
  v34 = v44;
  sub_27441277C(v33, v44, &qword_28094C778);
  v35 = (v34 + *(v49 + 44));
  *v35 = v5;
  OUTLINED_FUNCTION_10_10(v35);
  v36 = v46;
  sub_27441277C(v34, v46, &qword_28094C780);
  v37 = v43;
  sub_274412C20(v30, v43, &qword_28094A8D0);
  v38 = v50;
  sub_274412C20(v36, v50, &qword_28094C780);
  v39 = v51;
  sub_274412C20(v37, v51, &qword_28094A8D0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C790);
  sub_274412C20(v38, v39 + *(v40 + 48), &qword_28094C780);
  sub_27440CB1C(v36, &qword_28094C780);
  sub_27440CB1C(v30, &qword_28094A8D0);
  sub_27440CB1C(v38, &qword_28094C780);
  sub_27440CB1C(v37, &qword_28094A8D0);
  OUTLINED_FUNCTION_44_1();
}

uint64_t sub_27447C218@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C798);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v44 - v7;
  if (![a1 wf_isUnsupportedOnPlatformError])
  {
    v14 = sub_2744A089C(a1);
    if (v15)
    {
      v11 = v14;
      v13 = v15;
      goto LABEL_6;
    }

LABEL_7:
    v53 = 0;
    v52 = 0;
    v51 = 0;
    KeyPath = 0;
    v49 = 0;
    v30 = 0;
    v20 = 0;
    v70 = 0;
    v23 = 0;
    v25 = 0;
    v27 = 0;
    v29 = 0;
    goto LABEL_8;
  }

  v9 = [a1 wf:0 localizedErrorStringWithActionName:?];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9;
  v11 = sub_27463B6AC();
  v13 = v12;

LABEL_6:
  v57 = v11;
  v58 = v13;
  sub_274412BBC();

  v53 = sub_27463A53C();
  v52 = v16;
  v18 = v17;
  v51 = v19;
  KeyPath = swift_getKeyPath();
  LOBYTE(v57) = v18 & 1;
  v20 = v18 & 1;
  v21 = sub_27463A31C();
  sub_2746390AC();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v70 = 0;
  v49 = v21;
  v30 = 1;
LABEL_8:
  v46 = v20;
  v48 = v30 << 8;
  v31 = v30;
  v47 = v30;
  *v8 = sub_274639B2C();
  *(v8 + 1) = 0x4024000000000000;
  v8[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C7A0);
  v32 = v8;
  v57 = sub_27447C718(a1);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C7A8);
  type metadata accessor for ActionResourceErrorButton(0);
  sub_27440CA78(&qword_28094C7B0, &qword_28094C7A8);
  sub_274482708();
  sub_27447FCA0(&qword_28094C7C0, type metadata accessor for ActionResourceErrorButton);
  v45 = v8;
  sub_27463AF7C();
  v34 = v55;
  sub_274412C20(v32, v55, &qword_28094C798);
  v35 = v53;
  __src[0] = v53;
  v36 = v52;
  __src[1] = v52;
  __src[2] = v20;
  v37 = v51;
  __src[3] = v51;
  v38 = v48;
  __src[4] = v48;
  v39 = KeyPath;
  __src[5] = KeyPath;
  __src[6] = v31;
  v40 = v49;
  __src[7] = v49;
  __src[8] = v23;
  __src[9] = v25;
  __src[10] = v27;
  __src[11] = v29;
  LOBYTE(__src[12]) = 0;
  v41 = v54;
  memcpy(v54, __src, 0x61uLL);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C7C8);
  sub_274412C20(v34, v41 + *(v42 + 48), &qword_28094C798);
  sub_274412C20(__src, &v57, &qword_28094C7D0);
  sub_27440CB1C(v45, &qword_28094C798);
  sub_27440CB1C(v34, &qword_28094C798);
  v57 = v35;
  v58 = v36;
  v59 = v46;
  v60 = v37;
  v61 = v38;
  v62 = v39;
  v63 = v47;
  v64 = v40;
  v65 = v23;
  v66 = v25;
  v67 = v27;
  v68 = v29;
  v69 = 0;
  return sub_27440CB1C(&v57, &qword_28094C7D0);
}

uint64_t sub_27447C718(void *a1)
{
  v1 = sub_274482140(a1);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    v15 = MEMORY[0x277D84F90];
    result = sub_2744513FC(0, v3, 0);
    v5 = 0;
    v6 = v15;
    v14 = *(v2 + 16);
    v7 = (v2 + 40);
    while (v14 != v5)
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_15;
      }

      v8 = v3;
      v10 = *(v7 - 1);
      v9 = *v7;
      v12 = *(v15 + 16);
      v11 = *(v15 + 24);

      if (v12 >= v11 >> 1)
      {
        result = sub_2744513FC((v11 > 1), v12 + 1, 1);
      }

      *(v15 + 16) = v12 + 1;
      v13 = (v15 + 24 * v12);
      v13[4] = v10;
      v13[5] = v9;
      v13[6] = v5++;
      v7 += 2;
      v3 = v8;
      if (v8 == v5)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

double sub_27447C854@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C7D8);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  *a3 = a2;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v14;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  v15 = a2;

  *(a3 + 48) = sub_27463979C();
  *(a3 + 56) = v16;
  v17 = type metadata accessor for ActionResourceErrorButton(0);
  v18 = sub_2746386EC();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v18);
  sub_274412C20(v11, v8, &qword_28094C7D8);
  sub_27463ACDC();
  sub_27440CB1C(v11, &qword_28094C7D8);
  v19 = a3 + *(v17 + 36);
  type metadata accessor for CGRect(0);
  memset(v23, 0, sizeof(v23));
  sub_27463ACDC();
  v20 = v26;
  result = *&v24;
  v22 = v25;
  *v19 = v24;
  *(v19 + 16) = v22;
  *(v19 + 32) = v20;
  return result;
}

BOOL sub_27447CA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v9 = sub_27463C6BC();
  result = 0;
  if (v9)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t sub_27447CAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27463C74C();
  sub_27463B71C();
  MEMORY[0x277C58EA0](a3);
  return sub_27463C7AC();
}

uint64_t sub_27447CB44()
{
  v1 = *(v0 + 16);
  sub_27463C74C();
  sub_27463B71C();
  MEMORY[0x277C58EA0](v1);
  return sub_27463C7AC();
}

uint64_t sub_27447CBC8@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CBC8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - v3;
  v5 = type metadata accessor for ActionResourceErrorButton(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809493A0);
  v9 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CBD0);
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  sub_274483F70(v1, &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionResourceErrorButton);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_274480BE8(&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ActionResourceErrorButton);
  v42 = v1;
  sub_27463AD5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CAC8);
  sub_27463AD0C();
  sub_2746386EC();
  sub_27440CA78(&unk_2809493B0, &unk_2809493A0);
  sub_27447FCA0(&unk_28094CBE0, MEMORY[0x277D7D2C8]);
  v17 = v38;
  sub_27463A8EC();
  sub_27440CB1C(v4, &qword_28094CBC8);
  (*(v9 + 8))(v11, v17);
  v18 = v1 + *(v6 + 44);
  v19 = *(v18 + 32);
  v20 = *(v18 + 16);
  v43 = *v18;
  v44 = v20;
  v45 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E40);
  sub_27463AD0C();
  v21 = *(v1 + 48);
  if (v21)
  {
    v22 = v21 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_coordinateSpaceDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v22 + 8);
      ObjectType = swift_getObjectType();
      v25 = (*(v23 + 8))(ObjectType, v23);
      v27 = v26;
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
    }

    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    *(v28 + 24) = v27;
    v29 = sub_27463B0CC();
    v31 = v30;
    v32 = v41;
    (*(v39 + 32))(v41, v14, v40);
    v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CBF0) + 36));
    *v33 = sub_274484000;
    v33[1] = v28;
    v33[2] = v29;
    v33[3] = v31;
    v34 = swift_allocObject();
    v35 = v47;
    *(v34 + 1) = v46;
    *(v34 + 2) = v35;
    *(v34 + 3) = v48;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CBF8);
    v37 = (v32 + *(result + 36));
    *v37 = sub_274484054;
    v37[1] = v34;
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27447D198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a3;
  v5 = type metadata accessor for ActionResourceErrorButton(0);
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_274639ABC();
  v40 = *(v7 - 8);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v4;
  v12 = [*v4 userInfo];
  v13 = sub_27463B4CC();

  v14 = sub_27463B6AC();
  sub_27452F288(v14, v15, v13, &aBlock);

  if (!*(&v44 + 1))
  {
    return sub_27440CB1C(&aBlock, &unk_28094A230);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CC08);
  result = swift_dynamicCast();
  if (result)
  {
    v17 = *(v4 + 48);
    if (v17)
    {
      v18 = v47;
      v19 = v17 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_coordinateSpaceDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v39 = v18;
        v20 = *(v19 + 8);
        ObjectType = swift_getObjectType();
        v22 = v4 + *(v5 + 36);
        v23 = *(v22 + 32);
        v24 = *(v22 + 16);
        aBlock = *v22;
        v44 = v24;
        v45 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E40);
        sub_27463ACEC();
        v25 = (*(v20 + 16))(ObjectType, v20, v47, v48, v49, v50);
        v27 = v26;
        v29 = v28;
        v31 = v30;
        swift_unknownObjectRelease();
        v32 = sub_27447D850(v11, v25, v27, v29, v31);
        v33 = sub_274637D5C();
        v34 = *(v4 + 32);
        if (*(v4 + 40) == 1)
        {
          swift_unknownObjectRetain();
        }

        else
        {

          sub_27463BC0C();
          v35 = sub_27463A2FC();
          sub_274638CEC();

          sub_274639AAC();
          swift_getAtKeyPath();
          sub_274482198(v34, 0);
          (*(v40 + 8))(v10, v7);
          v34 = aBlock;
        }

        sub_274483F70(v4, &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionResourceErrorButton);
        v36 = (*(v41 + 80) + 16) & ~*(v41 + 80);
        v37 = swift_allocObject();
        sub_274480BE8(&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36, type metadata accessor for ActionResourceErrorButton);
        v45 = sub_27448419C;
        v46 = v37;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v44 = sub_2744458C4;
        *(&v44 + 1) = &block_descriptor_300;
        v38 = _Block_copy(&aBlock);

        [*&v39 attemptRecoveryFromError:v33 optionIndex:v42 userInterface:v34 completionHandler:v38];
        _Block_release(v38);
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
      result = sub_27463978C();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_27447D6C0@<X0>(uint64_t a1@<X8>)
{
  sub_274412BBC();

  v2 = sub_27463A53C();
  v4 = v3;
  v6 = v5;
  v7 = sub_27463A4FC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_274412C10(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_27447D784(uint64_t a1)
{
  v2 = sub_2746386EC();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_27463AADC();
}

id sub_27447D850(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 userInfo];
  v11 = MEMORY[0x277D837D0];
  v12 = sub_27463B4CC();

  sub_27463B6AC();
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  v13 = NSStringFromCGRect(v28);
  v14 = sub_27463B6AC();
  v16 = v15;

  v27 = v11;
  *&v26 = v14;
  *(&v26 + 1) = v16;
  sub_274464A50(&v26, &v25);
  swift_isUniquelyReferenced_nonNull_native();
  sub_2745FC4FC();

  v17 = v12;
  v18 = [a1 domain];
  v19 = sub_27463B6AC();
  v21 = v20;

  v22 = [a1 code];
  v23 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  return sub_274480674(v19, v21, v22, v17);
}

uint64_t sub_27447D9E8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C7D8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  if (a2)
  {
    sub_274637D5C();
    sub_2746386FC();
    v9 = sub_2746386EC();
    v10 = 0;
  }

  else
  {
    v9 = sub_2746386EC();
    v10 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v10, 1, v9);
  type metadata accessor for ActionResourceErrorButton(0);
  sub_274412C20(v8, v5, &qword_28094C7D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CAC8);
  sub_27463ACFC();
  return sub_27440CB1C(v8, &qword_28094C7D8);
}

uint64_t sub_27447DB38()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27463983C();
  *v0 = result;
  return result;
}

uint64_t sub_27447DB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_274639ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_274412C20(v2 + *(a1 + 36), &v15 - v10, &qword_28094D000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_27463918C();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_27463BC0C();
    v14 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_27447DD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v4 = sub_27463918C();
  v108 = *(v4 - 8);
  v109 = v4;
  MEMORY[0x28223BE20](v4);
  v107 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v106 = &v97 - v7;
  v105 = sub_27463970C();
  MEMORY[0x28223BE20](v105);
  v111 = (&v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C5C8);
  MEMORY[0x28223BE20](v113);
  v112 = &v97 - v9;
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  v121 = a1;
  v122 = v11;
  MEMORY[0x28223BE20](v12);
  v116 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v120 = &v97 - v15;
  MEMORY[0x28223BE20](v16);
  v117 = &v97 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C5D0);
  v18 = sub_27463965C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v115 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v110 = &v97 - v22;
  MEMORY[0x28223BE20](v23);
  v114 = &v97 - v24;
  v25 = sub_27463965C();
  v104 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v97 - v29;
  v129 = v31;
  v127 = v18;
  v32 = sub_274639DEC();
  v119 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v118 = &v97 - v36;
  v125 = v37;
  v130 = v10;
  v126 = sub_274639DEC();
  MEMORY[0x28223BE20](v126);
  v123 = &v97 - v39;
  v40 = v2;
  v41 = *v2;
  if (*v2)
  {
    v124 = v38;
    swift_getKeyPath();
    swift_getKeyPath();
    v42 = v41;
    sub_274638FAC();

    v43 = v159;
    v44 = MEMORY[0x277CDF760];
    if (v165 == 1)
    {
      v98 = v19;
      v99 = v34;
      v100 = v164;
      v101 = v163;
      v102 = v162;
      v116 = v161;
      v120 = v160;
      sub_274412734(0, &qword_28094C5E0);
      v45 = v121;
      v46 = sub_27463BF7C();
      v47 = *(v45 + 44);
      v103 = v43;
      if (v46)
      {
        sub_27463AB6C();
        sub_27463ABAC();

        v48 = *(v45 + 24);
        sub_27463A98C();

        v133 = v48;
        v134 = MEMORY[0x277CDF760];
        v49 = v129;
        WitnessTable = swift_getWitnessTable();
        sub_2744E9688(v27, v49, WitnessTable);
        v51 = *(v104 + 8);
        v51(v27, v49);
        sub_2744E9688(v30, v49, WitnessTable);
        v52 = sub_27440CA78(&qword_28094C5D8, &qword_28094C5D0);
        v131 = v48;
        v132 = v52;
        swift_getWitnessTable();
        v53 = v118;
        sub_27456E7CC();
        v51(v27, v49);
        v51(v30, v49);
      }

      else
      {
        (*(v122 + 16))(v117, v2 + v47, v130);
        v62 = *(v105 + 20);
        v63 = *MEMORY[0x277CE0118];
        v64 = sub_274639BFC();
        v65 = v111;
        (*(*(v64 - 8) + 104))(&v111->i8[v62], v63, v64);
        *v65 = vdupq_n_s64(0x403B800000000000uLL);
        v66 = v106;
        sub_27447DB90(v45, v106);
        v68 = v107;
        v67 = v108;
        v69 = v109;
        (*(v108 + 104))(v107, *MEMORY[0x277CDF3D0], v109);
        LOBYTE(v63) = sub_27463917C();
        v70 = *(v67 + 8);
        v70(v68, v69);
        v70(v66, v69);
        if (v63)
        {
          sub_27463AB8C();
        }

        else
        {
          sub_27463AB6C();
        }

        v71 = sub_27463ABAC();
        v72 = v127;

        KeyPath = swift_getKeyPath();
        v74 = v112;
        sub_274480BE8(v65, v112, MEMORY[0x277CDFC08]);
        v75 = (v74 + *(v113 + 36));
        *v75 = KeyPath;
        v75[1] = v71;
        v48 = *(v45 + 24);
        sub_274481F68();
        sub_27463B0CC();
        v76 = v110;
        v77 = v130;
        v78 = v117;
        sub_27463A9CC();
        sub_27440CB1C(v74, &qword_28094C5C8);
        (*(v122 + 8))(v78, v77);
        v79 = sub_27440CA78(&qword_28094C5D8, &qword_28094C5D0);
        v143 = v48;
        v144 = v79;
        v80 = swift_getWitnessTable();
        v81 = v114;
        sub_2744E9688(v76, v72, v80);
        v82 = *(v98 + 8);
        v82(v76, v72);
        v83 = v115;
        sub_2744E9688(v81, v72, v80);
        v141 = v48;
        v142 = MEMORY[0x277CDF760];
        swift_getWitnessTable();
        v53 = v118;
        sub_27456E878();
        v82(v83, v72);
        v82(v81, v72);
      }

      v60 = v123;
      v139 = v48;
      v140 = MEMORY[0x277CDF760];
      v84 = swift_getWitnessTable();
      v85 = sub_27440CA78(&qword_28094C5D8, &qword_28094C5D0);
      v137 = v48;
      v138 = v85;
      v86 = swift_getWitnessTable();
      v135 = v84;
      v136 = v86;
      v87 = v125;
      v88 = swift_getWitnessTable();
      v89 = v99;
      sub_2744E9688(v53, v87, v88);
      sub_27456E7CC();
      sub_27443C9D4(v103, v120, v116, v102, v101, v100, 1);
      v90 = *(v119 + 8);
      v90(v89, v87);
      v90(v53, v87);
      v44 = MEMORY[0x277CDF760];
    }

    else
    {
      sub_27443C9D4(v159, v160, v161, v162, v163, v164, v165);
      v54 = v120;
      v48 = *(v121 + 24);
      v55 = v130;
      sub_2744E9688(v40 + *(v121 + 44), v130, v48);
      v56 = v116;
      sub_2744E9688(v54, v55, v48);
      v157 = v48;
      v158 = v44;
      v57 = swift_getWitnessTable();
      v58 = sub_27440CA78(&qword_28094C5D8, &qword_28094C5D0);
      v155 = v48;
      v156 = v58;
      v59 = swift_getWitnessTable();
      v153 = v57;
      v154 = v59;
      swift_getWitnessTable();
      v60 = v123;
      sub_27456E878();
      v61 = *(v122 + 8);
      v61(v56, v55);
      v61(v120, v55);
    }

    v151 = v48;
    v152 = v44;
    v91 = swift_getWitnessTable();
    v92 = sub_27440CA78(&qword_28094C5D8, &qword_28094C5D0);
    v149 = v48;
    v150 = v92;
    v93 = swift_getWitnessTable();
    v147 = v91;
    v148 = v93;
    v145 = swift_getWitnessTable();
    v146 = v48;
    v94 = v126;
    v95 = swift_getWitnessTable();
    sub_2744E9688(v60, v94, v95);
    return (*(v124 + 8))(v60, v94);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27447EB8C()
{
  sub_274482828();
  sub_274639ACC();
  return v1;
}

uint64_t sub_27447EC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_274639ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  KeyPath = swift_getKeyPath();
  *(v20 + 11) = *(v2 + 19);
  v20[0] = *(v2 + 8);
  if (BYTE10(v20[1]) == 1)
  {
    v10 = *(&v20[0] + 1);
    v11 = *(&v20[0] + 1);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_27463BC0C();
    v12 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27440CB1C(v20, &qword_28094C608);
    (*(v6 + 8))(v8, v5);
    v10 = v19;
    if (!v19)
    {
LABEL_7:
      v14 = 0;
      goto LABEL_8;
    }
  }

  sub_274412734(0, &qword_28094C5E0);
  v13 = sub_27463BF7C();

  if ((v13 & 1) == 0)
  {
    goto LABEL_7;
  }

  v14 = 1;
LABEL_8:
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C610);
  (*(*(v15 - 8) + 16))(a2, a1, v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C618);
  v17 = a2 + *(result + 36);
  *v17 = KeyPath;
  *(v17 + 8) = v14;
  return result;
}

uint64_t sub_27447EE50()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27447EB8C();
  *v0 = result & 1;
  return result;
}

uint64_t sub_27447EEA4()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27452F63C();
  *v0 = result;
  *(v0 + 8) = v2;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  return result;
}

uint64_t sub_27447EF64@<X0>(double (**a1)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v2 = sub_27447EFC8();
  if (v3)
  {
    v4 = 0;
    result = 0;
  }

  else
  {
    v6 = v2;
    result = swift_allocObject();
    *(result + 16) = v6;
    v4 = sub_2744820A4;
  }

  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t sub_27447EFC8()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v17 + 11) = *(v0 + 19);
  v17[0] = *(v0 + 8);
  if (BYTE10(v17[1]) != 1)
  {

    sub_27463BC0C();
    v12 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27440CB1C(v17, &qword_28094C608);
    (*(v2 + 8))(v4, v1);
    v5 = v14;
    v6 = v15;
    v7 = v16;
    if (v14)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v5 = *(&v17[0] + 1);
  v6 = *&v17[1];
  v7 = BYTE8(v17[1]);
  v8 = *(&v17[0] + 1);
  if (!v5)
  {
    return 0;
  }

LABEL_3:
  v9 = *v0;

  v10 = 0x3FF0000000000000;
  if (!v6)
  {
    v10 = 0;
  }

  if ((v7 & 1) == 0)
  {
    v10 = v6;
  }

  if (v9 == v5)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

__n128 sub_27447F180@<Q0>(uint64_t a1@<X8>)
{
  if (qword_280949280 != -1)
  {
    swift_once();
  }

  v2 = qword_280965DC8;
  v3 = sub_27463ABDC();
  sub_2746393BC();
  sub_27463B0CC();
  sub_2746392FC();
  *&v5[6] = v6;
  *&v5[22] = v7;
  *&v5[38] = v8;
  *(a1 + 10) = *v5;
  *a1 = v3;
  *(a1 + 8) = 256;
  *(a1 + 26) = *&v5[16];
  result = *&v5[32];
  *(a1 + 42) = *&v5[32];
  *(a1 + 56) = *(&v8 + 1);
  return result;
}

uint64_t sub_27447F28C()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 8);
  if (*(v0 + 16) != 1)
  {

    sub_27463BC0C();
    v6 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_27447F3D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ActionShadowView(0);
  sub_274412C20(v1 + *(v10 + 24), v9, &qword_28094D000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_27463918C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_27463BC0C();
    v13 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void ActionShadowView.body.getter()
{
  OUTLINED_FUNCTION_45_1();
  v35 = v1;
  v32 = sub_27463918C();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19();
  v9 = v8;
  v10 = sub_27463970C();
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v14 = (v13 - v12);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E400);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_75();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C440);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v19 = *(v11 + 28);
  v20 = *MEMORY[0x277CE0118];
  sub_274639BFC();
  OUTLINED_FUNCTION_7();
  (*(v21 + 104))(&v14->i8[v19], v20);
  *v14 = vdupq_n_s64(0x403B800000000000uLL);
  sub_27447F988();
  sub_27463AB7C();
  LOBYTE(v19) = sub_27463AB3C();

  if (v19)
  {
    v22 = sub_27463AB7C();
  }

  else
  {
    sub_27447F3D4(v9);
    v23 = v32;
    (*(v3 + 104))(v6, *MEMORY[0x277CDF3D0], v32);
    v24 = sub_27463917C();
    v25 = *(v3 + 8);
    v25(v6, v23);
    v25(v9, v23);
    if (v24)
    {
      v22 = sub_27463AB8C();
    }

    else
    {
      v22 = sub_27463AB6C();
    }
  }

  v26 = v22;
  sub_274480BE8(v14, v0, MEMORY[0x277CDFC08]);
  v27 = v33;
  *(v0 + *(v33 + 52)) = v26;
  *(v0 + *(v27 + 56)) = 256;
  LOBYTE(v26) = sub_27463A32C();
  sub_2746390AC();
  OUTLINED_FUNCTION_6_6();
  sub_27441277C(v0, v18, &qword_28094E400);
  v28 = &v18[*(v34 + 36)];
  *v28 = v26;
  OUTLINED_FUNCTION_10_10(v28);
  v29 = sub_27447F988();
  v30 = v35;
  sub_27441277C(v18, v35, &qword_28094C440);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C448) + 36);
  *v31 = v29;
  *(v31 + 8) = xmmword_27464D560;
  *(v31 + 24) = 0x4010000000000000;
  OUTLINED_FUNCTION_44_1();
}

uint64_t sub_27447F988()
{
  if (*v0 == 1)
  {

    return sub_27463AB7C();
  }

  else
  {
    if (sub_27447F28C())
    {
      if (qword_280949280 != -1)
      {
        OUTLINED_FUNCTION_5_14();
      }

      v2 = qword_280965DC8;
      sub_27463ABDC();
    }

    else
    {
      sub_27463AB6C();
    }

    v3 = sub_27463ABAC();

    return v3;
  }
}

uint64_t sub_27447FAAC(uint64_t a1)
{
  v2 = type metadata accessor for RectangleGroupBoxStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27447FB28()
{
  result = qword_28094C3A8;
  if (!qword_28094C3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C310);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C300);
    type metadata accessor for RectangleGroupBoxStyle(255);
    sub_27440CA78(&qword_28094C390, &qword_28094C300);
    sub_27447FCA0(&qword_28094C398, type metadata accessor for RectangleGroupBoxStyle);
    swift_getOpaqueTypeConformance2();
    sub_27440CA78(&qword_28094C3B0, &qword_28094C3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C3A8);
  }

  return result;
}

uint64_t sub_27447FCA0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_27447FCE8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_27447FCF4(BOOL *a1@<X8>)
{
  OUTLINED_FUNCTION_8_7();

  sub_274474C6C(a1);
}

uint64_t objectdestroyTm_0()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ActionView(0);
  OUTLINED_FUNCTION_3_14();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_47_1();
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  if (*(v0 + 72))
  {
  }

  OUTLINED_FUNCTION_2_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  if (OUTLINED_FUNCTION_46_1() == 1)
  {
    v1 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_14_7(v1))
    {
      OUTLINED_FUNCTION_25_0();
      v2 = OUTLINED_FUNCTION_42_2();
      v3(v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

_BYTE *sub_27447FED4()
{
  OUTLINED_FUNCTION_8_7();
  v0 = OUTLINED_FUNCTION_40_2();

  return sub_274474CDC(v0);
}

void sub_27447FF2C(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_30_2();

  sub_274474D44(a1);
}

uint64_t objectdestroy_19Tm()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ActionView(0);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_47_1();
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  if (*(v0 + 72))
  {
  }

  OUTLINED_FUNCTION_2_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  if (OUTLINED_FUNCTION_46_1() == 1)
  {
    v1 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_14_7(v1))
    {
      OUTLINED_FUNCTION_25_0();
      v2 = OUTLINED_FUNCTION_42_2();
      v3(v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

double sub_2744800FC@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_30_2();

  return sub_274474DE4(v1 + v3, a1);
}

uint64_t sub_27448015C()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_30_2();

  return sub_274475498();
}

uint64_t sub_2744801D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274482050();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_27448023C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274482050();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2744802A0()
{
  sub_274482050();
  sub_27463A26C();
  __break(1u);
}

void ActionView.init(viewModel:onDelete:isChildrenCollapsed:isSelected:isDragPlaceholder:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  type metadata accessor for WorkflowEditorOptions(0);
  OUTLINED_FUNCTION_7_12();
  sub_27447FCA0(v17, v18);
  *(a9 + 88) = sub_27463979C();
  *(a9 + 96) = v19;
  type metadata accessor for WorkflowEditorResults(0);
  OUTLINED_FUNCTION_22_4();
  sub_27447FCA0(v20, v21);
  *(a9 + 104) = sub_27463979C();
  *(a9 + 112) = v22;
  sub_27463ACDC();
  *(a9 + 120) = v32;
  *(a9 + 128) = *(&v32 + 1);
  sub_27463ACDC();
  *(a9 + 136) = v32;
  *(a9 + 144) = *(&v32 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DF60);
  sub_27463ACDC();
  *(a9 + 152) = v32;
  *(a9 + 168) = v33;
  *(a9 + 176) = swift_getKeyPath();
  *(a9 + 184) = 0;
  *(a9 + 192) = swift_getKeyPath();
  *(a9 + 200) = 0;
  *(a9 + 208) = swift_getKeyPath();
  *(a9 + 216) = 0;
  v23 = type metadata accessor for ActionView(0);
  v24 = v23[20];
  *(a9 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  swift_storeEnumTagMultiPayload();
  *(a9 + v23[21]) = xmmword_27464D540;
  *(a9 + v23[22]) = 0x4018000000000000;
  type metadata accessor for ActionViewModel();
  OUTLINED_FUNCTION_21_5();
  sub_27447FCA0(v25, v26);
  v27 = a1;
  *a9 = sub_27463950C();
  *(a9 + 8) = v28;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 81) = a7;
  v29 = *&v27[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action];

  objc_opt_self();
  v30 = swift_dynamicCastObjCClass() != 0;

  *(a9 + 82) = 2 * v30;
  *(a9 + 83) = a8;
}

uint64_t sub_274480588()
{
  OUTLINED_FUNCTION_5_3();
  result = MEMORY[0x277C55F30]();
  *v0 = result;
  return result;
}

uint64_t sub_2744805D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A610);
  OUTLINED_FUNCTION_53_0(v2);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  sub_274412C20(a1, &v6 - v4, &qword_28094A610);
  return sub_27463996C();
}

id sub_274480674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_27463B66C();

  if (a4)
  {
    v8 = sub_27463B4BC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_274480724()
{
  v0 = sub_27463B6AC();
  v2 = v1;
  if (v0 == sub_27463B6AC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_27463C6BC();
  }

  return v5 & 1;
}

uint64_t sub_2744807B0()
{
  OUTLINED_FUNCTION_16_6();
  sub_274412734(0, &qword_28094A4D8);
  return OUTLINED_FUNCTION_31_3() & 1;
}

uint64_t sub_274480848()
{
  OUTLINED_FUNCTION_16_6();
  type metadata accessor for WFEditorCell();
  return OUTLINED_FUNCTION_31_3() & 1;
}

uint64_t sub_274480934()
{
  OUTLINED_FUNCTION_16_6();
  sub_274412734(0, &qword_28094E040);
  return OUTLINED_FUNCTION_31_3() & 1;
}

uint64_t sub_274480980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_75();
  (*(v9 + 16))(v6, a1);
  return a6(v6);
}

unint64_t sub_274480A38()
{
  result = qword_28094C420;
  if (!qword_28094C420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809493E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809493E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809493F0);
    sub_27440ABA8();
    sub_27440AD6C();
    swift_getOpaqueTypeConformance2();
    sub_27440ADE8();
    swift_getOpaqueTypeConformance2();
    sub_274480B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C420);
  }

  return result;
}

unint64_t sub_274480B94()
{
  result = qword_28094C428;
  if (!qword_28094C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C428);
  }

  return result;
}

uint64_t sub_274480BE8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_5_0();
  v5(v4);
  return a2;
}

void sub_274480CA4()
{
  sub_274480F90();
  if (v0 <= 0x3F)
  {
    sub_274483760(319, &unk_28094C480, &unk_2809540F0, ">%", MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_274483760(319, &unk_28094C490, &qword_280950E20, &unk_27464D880, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_274481024();
        if (v3 <= 0x3F)
        {
          sub_2744810B8();
          if (v4 <= 0x3F)
          {
            sub_274481254(319, &qword_28094BBF0, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_274483760(319, &qword_28094C4B8, &unk_28094DF60, &unk_27464D6E0, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_274483760(319, &qword_28094C4C0, &qword_28094C4C8, &unk_27464D888, MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_274483760(319, &qword_28094C4D0, &qword_28094C4D8, &unk_27464D890, MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
                  {
                    sub_274483760(319, &qword_28094C4E0, &qword_28094C4E8, &unk_27464D898, MEMORY[0x277CDF468]);
                    if (v9 <= 0x3F)
                    {
                      sub_274483760(319, &qword_28094BC00, &qword_28094A610, &unk_2746493F0, MEMORY[0x277CDF468]);
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for CGPoint(319);
                        if (v11 <= 0x3F)
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
  }
}

void sub_274480F90()
{
  if (!qword_28094C478)
  {
    type metadata accessor for ActionViewModel();
    sub_27447FCA0(&qword_28094C460, type metadata accessor for ActionViewModel);
    v0 = sub_27463953C();
    if (!v1)
    {
      atomic_store(v0, &qword_28094C478);
    }
  }
}

void sub_274481024()
{
  if (!qword_28094C4A0)
  {
    type metadata accessor for WorkflowEditorOptions(255);
    sub_27447FCA0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    v0 = sub_2746397AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28094C4A0);
    }
  }
}

void sub_2744810B8()
{
  if (!qword_28094C4A8)
  {
    type metadata accessor for WorkflowEditorResults(255);
    sub_27447FCA0(&unk_28094C450, type metadata accessor for WorkflowEditorResults);
    v0 = sub_2746397AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28094C4A8);
    }
  }
}

void sub_274481174()
{
  sub_274481254(319, &qword_28094C510, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2744837C0(319, &qword_280949EF8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_274481254(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2744812A8()
{
  result = qword_28094C520;
  if (!qword_28094C520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C448);
    sub_274481334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C520);
  }

  return result;
}

unint64_t sub_274481334()
{
  result = qword_28094C528;
  if (!qword_28094C528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C440);
    sub_27440CA78(qword_28094C530, &qword_28094E400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C528);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActionView.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_274481508(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_274481548(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2744815A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_2744815E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27448164C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_27448168C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2744816F8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_27448174C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_2744817BC()
{
  sub_274481024();
  if (v0 <= 0x3F)
  {
    sub_2744837C0(319, &qword_280949EF8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_274412734(319, &qword_28094E040);
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2744818B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_27463918C() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v6 + 80);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v15 = v12 & 0xF8;
  v16 = v15 | 7;
  v17 = v7 + 8;
  v18 = v13 + 8;
  if (a2 <= v11)
  {
    goto LABEL_28;
  }

  v19 = ((v18 + ((v17 + ((v15 + 23) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + v14;
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v11 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v23 < 2)
    {
LABEL_28:
      v27 = ((v17 + ((a1 + v16 + 16) & ~v16)) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((v27 + v18) & ~v13, v10, v8);
      }

      else
      {
        v28 = *v27;
        if (*v27 >= 0xFFFFFFFF)
        {
          LODWORD(v28) = -1;
        }

        return (v28 + 1);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_28;
  }

LABEL_18:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    switch(v25)
    {
      case 2:
        v26 = *a1;
        break;
      case 3:
        v26 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v26 = *a1;
        break;
      default:
        v26 = *a1;
        break;
    }
  }

  else
  {
    v26 = 0;
  }

  return v11 + (v26 | v24) + 1;
}

void sub_274481B0C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_27463918C() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  v10 = *(a4 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v8 + 80) & 0xF8;
  v15 = v9 + 8;
  v16 = *(v11 + 80);
  v17 = ((v16 + 8 + ((v15 + ((v14 + 23) & ~(v14 | 7))) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + *(v11 + 64);
  v18 = 8 * v17;
  if (a3 <= v13)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v22 = ((a3 - v13 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v13 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_47:
        __break(1u);
        break;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          v25 = ((v15 + (&a1[(v14 | 7) + 16] & ~(v14 | 7))) & 0xFFFFFFFFFFFFFFF8);
          if ((v12 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((v25 + v16 + 8) & ~v16, a2, v12, v10);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v26 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v26 = (a2 - 1);
            }

            *v25 = v26;
          }
        }

        break;
    }
  }

  else
  {
    v20 = ~v13 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v17 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        break;
      case 2:
        *&a1[v17] = v21;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v17] = v21;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_274481EB4()
{
  result = qword_28094C5C0;
  if (!qword_28094C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C5C0);
  }

  return result;
}

unint64_t sub_274481F68()
{
  result = qword_28094C5E8;
  if (!qword_28094C5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C5C8);
    sub_27447FCA0(&unk_28094C5F0, MEMORY[0x277CDFC08]);
    sub_27440CA78(&unk_28094D180, &qword_28094C600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C5E8);
  }

  return result;
}

unint64_t sub_274482050()
{
  result = qword_28094C620;
  if (!qword_28094C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C620);
  }

  return result;
}

void sub_2744820AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_27463B66C();

  [a6 openURL:a1 withBundleIdentifier:v10 userInterface:a4 completionHandler:a5];
}

uint64_t sub_274482140(void *a1)
{
  v1 = [a1 localizedRecoveryOptions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B81C();

  return v3;
}

uint64_t sub_274482198(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_274482214(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_274412734(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_274482264()
{
  result = qword_28094C690;
  if (!qword_28094C690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C658);
    sub_27447FCA0(&qword_28094C698, type metadata accessor for ParameterRowView);
    sub_274482320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C690);
  }

  return result;
}

unint64_t sub_274482320()
{
  result = qword_28094C6A0;
  if (!qword_28094C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C6A0);
  }

  return result;
}

unint64_t sub_2744823D4()
{
  result = qword_28094C718;
  if (!qword_28094C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C718);
  }

  return result;
}

unint64_t sub_274482428()
{
  result = qword_28094C728;
  if (!qword_28094C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C728);
  }

  return result;
}

unint64_t sub_27448247C()
{
  result = qword_28094C738;
  if (!qword_28094C738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C730);
    sub_2744823D4();
    sub_27440CA78(&unk_28094C740, &qword_280949FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C738);
  }

  return result;
}

unint64_t sub_274482534()
{
  result = qword_28094C758;
  if (!qword_28094C758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C750);
    sub_27448247C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C758);
  }

  return result;
}

unint64_t sub_2744825C0()
{
  result = qword_28094C760;
  if (!qword_28094C760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C6F0);
    sub_27448247C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C6D8);
    sub_27440CA78(&qword_28094C720, &qword_28094C6D8);
    sub_274482428();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C760);
  }

  return result;
}

unint64_t sub_274482708()
{
  result = qword_28094C7B8;
  if (!qword_28094C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C7B8);
  }

  return result;
}

uint64_t sub_2744827B4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_30_2();

  return a2(v2 + v4);
}

unint64_t sub_274482828()
{
  result = qword_28094C838;
  if (!qword_28094C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C838);
  }

  return result;
}

void sub_27448287C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a4)
  {

    v6 = a6;
  }
}

uint64_t sub_2744828E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_30_2();

  return sub_2744748BC(a1, v2 + v5, a2);
}

unint64_t sub_274482950()
{
  result = qword_280954750;
  if (!qword_280954750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954750);
  }

  return result;
}

unint64_t sub_2744829A4()
{
  result = qword_28094C8E0;
  if (!qword_28094C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C8E0);
  }

  return result;
}

unint64_t sub_274482A00()
{
  result = qword_28094C900;
  if (!qword_28094C900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C8F8);
    sub_274482A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C900);
  }

  return result;
}

unint64_t sub_274482A8C()
{
  result = qword_280954890;
  if (!qword_280954890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954890);
  }

  return result;
}

unint64_t sub_274482AE0()
{
  result = qword_28094C918;
  if (!qword_28094C918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C890);
    sub_274482B6C();
    sub_274482D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C918);
  }

  return result;
}

unint64_t sub_274482B6C()
{
  result = qword_28094C920;
  if (!qword_28094C920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C888);
    sub_27440CA78(&qword_28094C928, &qword_28094C898);
    sub_274482C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C920);
  }

  return result;
}

unint64_t sub_274482C24()
{
  result = qword_28094C930;
  if (!qword_28094C930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280954810);
    sub_274482CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C930);
  }

  return result;
}

unint64_t sub_274482CB0()
{
  result = qword_28094C940;
  if (!qword_28094C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C940);
  }

  return result;
}

unint64_t sub_274482D04()
{
  result = qword_28094C948;
  if (!qword_28094C948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094C950);
    sub_274482D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C948);
  }

  return result;
}

unint64_t sub_274482D88()
{
  result = qword_280954820;
  if (!qword_280954820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C960);
    sub_274482E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954820);
  }

  return result;
}

unint64_t sub_274482E14()
{
  result = qword_28094C968;
  if (!qword_28094C968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C970);
    sub_274482EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C968);
  }

  return result;
}

unint64_t sub_274482EA0()
{
  result = qword_28094C978;
  if (!qword_28094C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C978);
  }

  return result;
}

unint64_t sub_274482EF4()
{
  result = qword_28094C980;
  if (!qword_28094C980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C860);
    sub_274482A00();
    sub_27440CA78(&qword_28094C910, &qword_28094C848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C980);
  }

  return result;
}

uint64_t sub_274482FAC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_274482FC4();
  }

  return result;
}

uint64_t sub_274482FCC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_274482FE4();
  }

  return result;
}

void sub_274482FEC()
{
  OUTLINED_FUNCTION_8_7();
  v0 = OUTLINED_FUNCTION_40_2();

  sub_274474848(v0, v1, v2, v3);
}

unint64_t sub_274483044()
{
  result = qword_2809505E0;
  if (!qword_2809505E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809505E0);
  }

  return result;
}

uint64_t sub_274483110(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_274483150()
{
  result = qword_28094CA30;
  if (!qword_28094CA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CA28);
    sub_27440CA78(&unk_28094CDA0, &unk_28094CA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CA30);
  }

  return result;
}

uint64_t sub_27448327C()
{
  v1 = type metadata accessor for ActionView(0);
  OUTLINED_FUNCTION_19_0(v1);
  OUTLINED_FUNCTION_43_1();
  v4 = v0 + v3;
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_274477C6C(v0 + v2, v5, v6);
}

uint64_t sub_2744832F4(void **a1)
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_30_2();

  return sub_274476C64(a1, v1 + v3);
}

unint64_t sub_27448336C()
{
  result = qword_28094CAB0;
  if (!qword_28094CAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CAA8);
    sub_27440CA78(&qword_28094CAA0, &unk_28094CD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CAB0);
  }

  return result;
}

uint64_t objectdestroy_221Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2744834A8()
{
  v1 = type metadata accessor for ActionView(0);
  OUTLINED_FUNCTION_19_0(v1);
  OUTLINED_FUNCTION_43_1();
  v4 = *(v0 + v3);

  return sub_274476E14(v0 + v2, v4);
}

uint64_t sub_27448353C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_27448357C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_2744835F4()
{
  sub_274412734(319, &unk_28094C2B0);
  if (v0 <= 0x3F)
  {
    sub_274483760(319, &qword_28094C4E0, &qword_28094C4E8, &unk_27464D898, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_274481024();
      if (v2 <= 0x3F)
      {
        sub_274483760(319, &qword_28094CAF0, &qword_28094C7D8, &unk_27464E310, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2744837C0(319, &qword_28094A880, type metadata accessor for CGRect, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_274483760(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v7 = OUTLINED_FUNCTION_54_1();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2744837C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_54_1();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_274483820(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_274483860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2744838B0()
{
  result = qword_28094CAF8;
  if (!qword_28094CAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C618);
    sub_27440CA78(&qword_28094CB00, &qword_28094C610);
    sub_27440CA78(&unk_280954AE0, &unk_28094AD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CAF8);
  }

  return result;
}

unint64_t sub_274483994()
{
  result = qword_28094CB08;
  if (!qword_28094CB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CB10);
    sub_27440CA78(&qword_28094CB18, &qword_28094CB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CB08);
  }

  return result;
}

unint64_t sub_274483A44()
{
  result = qword_28094CB58;
  if (!qword_28094CB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094C7F8);
    sub_274483AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CB58);
  }

  return result;
}

unint64_t sub_274483AD0()
{
  result = qword_28094CB60;
  if (!qword_28094CB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C7E8);
    sub_27440CA78(&qword_28094CB68, &qword_28094C7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CB60);
  }

  return result;
}

unint64_t sub_274483B88()
{
  result = qword_28094CB70;
  if (!qword_28094CB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CB78);
    sub_274483C40();
    sub_27440CA78(&qword_28094A710, &qword_280951400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CB70);
  }

  return result;
}

unint64_t sub_274483C40()
{
  result = qword_28094CB80;
  if (!qword_28094CB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CB88);
    sub_274483CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CB80);
  }

  return result;
}

unint64_t sub_274483CCC()
{
  result = qword_28094CB90;
  if (!qword_28094CB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CB98);
    sub_274483D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CB90);
  }

  return result;
}

unint64_t sub_274483D58()
{
  result = qword_28094CBA0;
  if (!qword_28094CBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CBA8);
    sub_27440CA78(&qword_28094CBB0, &qword_28094CBB8);
    sub_27440CA78(&unk_28094D180, &qword_28094C600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CBA0);
  }

  return result;
}

unint64_t sub_274483E78()
{
  result = qword_28094CBC0;
  if (!qword_28094CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CBC0);
  }

  return result;
}

uint64_t sub_274483EE8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_27440B094(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_274483F2C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_274412C10(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_274483F70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_5_0();
  v5(v4);
  return a2;
}

uint64_t objectdestroy_224Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_287Tm()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ActionResourceErrorButton(0);
  OUTLINED_FUNCTION_3_14();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_274482198(*(v3 + 32), *(v3 + 40));

  v4 = v3 + *(v0 + 32);
  v5 = sub_2746386EC();
  if (!__swift_getEnumTagSinglePayload(v4, 1, v5))
  {
    OUTLINED_FUNCTION_25_0();
    (*(v6 + 8))(v4, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CAC8);

  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_27448419C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionResourceErrorButton(0);
  OUTLINED_FUNCTION_53_0(v4);
  OUTLINED_FUNCTION_30_2();

  return sub_27447D9E8(a1, a2);
}

unint64_t sub_274484214()
{
  result = qword_28094CC50;
  if (!qword_28094CC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CC48);
    sub_2744842CC();
    sub_27440CA78(&unk_28094D180, &qword_28094C600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CC50);
  }

  return result;
}

unint64_t sub_2744842CC()
{
  result = qword_28094CC58;
  if (!qword_28094CC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CC60);
    sub_274484384();
    sub_27440CA78(&unk_28094AA00, &qword_28094CC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CC58);
  }

  return result;
}

unint64_t sub_274484384()
{
  result = qword_28094CC68;
  if (!qword_28094CC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094CC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CC68);
  }

  return result;
}

unint64_t sub_274484408()
{
  result = qword_28094CC88;
  if (!qword_28094CC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CC38);
    sub_27440CA78(&qword_28094CC90, &qword_28094CC98);
    sub_27440CA78(&unk_28094CCA0, &unk_280954AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CC88);
  }

  return result;
}

unint64_t sub_2744844EC()
{
  result = qword_28094CCC8;
  if (!qword_28094CCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CCD0);
    sub_274484578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CCC8);
  }

  return result;
}

unint64_t sub_274484578()
{
  result = qword_28094CCD8;
  if (!qword_28094CCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CCE0);
    sub_27440CA78(&qword_28094CCE8, &qword_28094CCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CCD8);
  }

  return result;
}

unint64_t sub_274484630()
{
  result = qword_28094CCF8;
  if (!qword_28094CCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094CBF8);
    sub_2744846E8();
    sub_27440CA78(&qword_28094CD18, &qword_28094CD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CCF8);
  }

  return result;
}

unint64_t sub_2744846E8()
{
  result = qword_28094CD00;
  if (!qword_28094CD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CBF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809493A0);
    sub_2746386EC();
    sub_27440CA78(&unk_2809493B0, &unk_2809493A0);
    sub_27447FCA0(&unk_28094CBE0, MEMORY[0x277D7D2C8]);
    swift_getOpaqueTypeConformance2();
    sub_27440CA78(&qword_28094CD08, &qword_28094CD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CD00);
  }

  return result;
}

unint64_t sub_274484860()
{
  result = qword_28094CD28;
  if (!qword_28094CD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CC30);
    sub_274484918();
    sub_27440CA78(&qword_28094A710, &qword_280951400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CD28);
  }

  return result;
}

unint64_t sub_274484918()
{
  result = qword_28094CD30;
  if (!qword_28094CD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CC28);
    sub_2744849A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CD30);
  }

  return result;
}

unint64_t sub_2744849A4()
{
  result = qword_28094CD38;
  if (!qword_28094CD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CC20);
    sub_274484A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CD38);
  }

  return result;
}

unint64_t sub_274484A30()
{
  result = qword_28094CD40;
  if (!qword_28094CD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CC18);
    sub_27440CA78(&qword_28094CD48, &unk_28094CD50);
    sub_27440CA78(&unk_28094D180, &qword_28094C600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CD40);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_11()
{
  sub_27447FCE8(*(v0 + 176), *(v0 + 184));
  j__swift_release(*(v0 + 192), *(v0 + 200));
  return sub_274482198(*(v0 + 208), *(v0 + 216));
}

uint64_t OUTLINED_FUNCTION_5_14()
{

  return swift_once();
}

void OUTLINED_FUNCTION_10_10(uint64_t a1@<X8>)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_14_7(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_25_5(unint64_t *a1, uint64_t *a2)
{

  return sub_27440CA78(a1, a2);
}

uint64_t OUTLINED_FUNCTION_27_3()
{

  return sub_27463973C();
}

uint64_t OUTLINED_FUNCTION_31_3()
{

  return sub_27463BF7C();
}

uint64_t OUTLINED_FUNCTION_46_1()
{

  return swift_getEnumCaseMultiPayload();
}

void OUTLINED_FUNCTION_47_1()
{
  v3 = *(v0 + v1 + 8);
}

uint64_t OUTLINED_FUNCTION_53_1@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_274484EDC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274484EFC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for VelocityFilter(uint64_t a1, int a2)
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

uint64_t sub_274484F78()
{
  v1 = v0;
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  if (v6)
  {
    v7 = type metadata accessor for ActionOutputProvider();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC14WorkflowEditorP33_23FAE8DFB59B376283EF5C63F037C7FD20ActionOutputProvider_editorOptions] = v6;
    v26.receiver = v8;
    v26.super_class = v7;
    v9 = v6;
    v10 = objc_msgSendSuper2(&v26, sel_init);
    v11 = *(*(v1 + 8) + qword_28094A100);
    v23 = *(v1 + 16);
    v24 = *(v1 + 32);
    v12 = v11;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CDB0);
    MEMORY[0x277C575F0](aBlock, v13);
    v14 = aBlock[0];
    v15 = *(v1 + 56);
    v27 = v15;
    v28 = *(v1 + 64);
    if (v28 == 1)
    {
      swift_unknownObjectRetain();
    }

    else
    {

      sub_27463BC0C();
      v16 = sub_27463A2FC();
      sub_274638CEC();

      sub_274639AAC();
      swift_getAtKeyPath();
      sub_274415174(&v27, &unk_28094C680);
      (*(v3 + 8))(v5, v2);
      v15 = v23;
    }

    v17 = swift_allocObject();
    memcpy((v17 + 16), v1, 0x51uLL);
    aBlock[4] = sub_274487A70;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274486F8C;
    aBlock[3] = &block_descriptor_8;
    v18 = _Block_copy(aBlock);
    v19 = v10;
    sub_2744879C8(v1, &v23);

    v20 = [v12 variableMenuElementsWithVariable:v14 parameterState:0 variableProvider:v15 variableUIDelegate:v19 setVariableHandler:v18];
    _Block_release(v18);

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80);
    v21 = sub_27463B81C();

    return v21;
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_274487E9C(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_274485304(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CDB0);
  return sub_27463AEBC();
}

uint64_t sub_274485364@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CD70);
  OUTLINED_FUNCTION_1();
  v30 = v3;
  MEMORY[0x28223BE20](v4);
  v29 = &v28 - v5;
  v6 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CD78);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v18 = sub_274484F78();
  v19 = v18;
  v20 = *(v1 + 72);
  v34 = v20;
  v35 = *(v1 + 80);
  v31 = v2;
  if (v35 != 1)
  {

    sub_27463BC0C();
    v23 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274415174(&v34, &qword_28094CD80);
    v18 = (*(v8 + 8))(v11, v6);
    if (v33 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x28223BE20](v18);
    *(&v28 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CD90);
    sub_27440CA78(&qword_28094CAA0, &unk_28094CD90);
    v24 = v29;
    sub_27463AFCC();
    v22 = v31;
    (*(v30 + 32))(v17, v24, v31);
    v21 = 0;
    goto LABEL_6;
  }

  if (v20)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21 = 1;
  v22 = v31;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v17, v21, 1, v22);
  sub_274439BF0(v17, v14, &qword_28094CD78);
  v25 = v32;
  *v32 = v19;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CD88);
  sub_274439BF0(v14, v25 + *(v26 + 48), &qword_28094CD78);

  sub_274415174(v17, &qword_28094CD78);
  sub_274415174(v14, &qword_28094CD78);
}

uint64_t sub_274485730@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C9C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-v7 - 8];
  sub_27463B70C();
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v9 = qword_28094BB00;
  v10 = sub_27463B66C();

  v11 = sub_27463B66C();

  v12 = [v9 localizedStringForKey:v10 value:v11 table:{0, v20}];

  v13 = sub_27463B6AC();
  v15 = v14;

  sub_27463904C();
  v16 = sub_27463905C();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v16);
  v17 = swift_allocObject();
  memcpy((v17 + 16), a1, 0x51uLL);
  v22[0] = v13;
  v22[1] = v15;
  v18 = sub_274439BF0(v8, v5, &unk_28094C9C0);
  MEMORY[0x28223BE20](v18);
  *(&v20 - 4) = v22;
  *(&v20 - 3) = 0x6B72616D78;
  *(&v20 - 2) = 0xE500000000000000;
  sub_2744879C8(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00);
  sub_27440CA78(&unk_28094CDA0, &unk_28094CA00);
  sub_27463AD4C();
  sub_274415174(v8, &unk_28094C9C0);
}

uint64_t sub_274485AD0()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_274485B6C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_274638DAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE08);
  sub_27463ACDC();
  v6 = v31;
  v29 = v32;
  v30 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE10);
  sub_27463ACDC();
  v8 = v31;
  v7 = v32;
  swift_unknownObjectRetain();
  v9 = sub_274485AD0();
  if (v10 == 0xFF)
  {
    v28 = v3;
    sub_274638C2C();
    swift_unknownObjectRetain();
    v16 = sub_274638D9C();
    v17 = sub_27463BC0C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = v18;
      v26 = swift_slowAlloc();
      v31 = v26;
      *v18 = 136315138;
      swift_getObjectType();
      v19 = sub_27463C7EC();
      v27 = v2;
      LOBYTE(v18) = v17;
      v21 = sub_2745E7980(v19, v20, &v31);

      v22 = v25;
      *(v25 + 1) = v21;
      v23 = v22;
      _os_log_impl(&dword_2743F0000, v16, v18, "Unknown WFMenuElement type %s", v22, 0xCu);
      v24 = v26;
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x277C5A270](v24, -1, -1);
      MEMORY[0x277C5A270](v23, -1, -1);
      swift_unknownObjectRelease();

      result = (*(v28 + 8))(v5, v27);
    }

    else
    {

      swift_unknownObjectRelease();

      result = (*(v28 + 8))(v5, v2);
    }

    v11 = 0;
    v14 = 0;
    v6 = 0;
    v15 = 0;
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v11 = v9;
    v12 = v10;
    result = swift_unknownObjectRelease();
    v14 = v12;
    v15 = v29;
  }

  *a1 = v11;
  a1[1] = v14;
  a1[2] = v6;
  a1[3] = v15;
  a1[4] = v8;
  a1[5] = v7;
  return result;
}

uint64_t sub_274485E6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE28);
  MEMORY[0x28223BE20](v4);
  v6 = (v40 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE30);
  MEMORY[0x28223BE20](v7);
  v9 = (v40 - v8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE38);
  MEMORY[0x28223BE20](v46);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE40);
  MEMORY[0x28223BE20](v12);
  v15 = v40 - v14;
  v16 = *v1;
  if (!*(v1 + 8))
  {
    v42 = v13;
    v22 = swift_allocObject();
    v45 = v4;
    v40[1] = v40;
    *(v22 + 16) = v16;
    MEMORY[0x28223BE20](v22);
    v43 = v11;
    v40[-2] = v16;
    v40[-1] = v1;
    v41 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CEA0);
    v44 = a1;
    sub_27440CA78(&unk_28094CEA8, &qword_28094CEA0);
    sub_27463AD5C();
    v23 = &v15[*(v42 + 36)];
    sub_27463945C();
    sub_27463B9DC();
    v24 = *(v1 + 24);
    v48[0] = *(v1 + 16);
    v25 = *(v1 + 40);
    v50 = *(v1 + 32);
    v51 = v24;
    v49 = v25;
    v26 = swift_allocObject();
    v27 = v41;
    *(v26 + 16) = v41;
    v28 = *(v1 + 16);
    *(v26 + 24) = *v1;
    *(v26 + 40) = v28;
    *(v26 + 56) = *(v1 + 32);
    *v23 = &unk_27464EFA0;
    *(v23 + 1) = v26;
    sub_274439BF0(v15, v9, &qword_28094CE40);
    swift_storeEnumTagMultiPayload();
    v29 = v27;
    sub_274439BF0(v48, v47, &qword_28094CE08);
    sub_274439BF0(&v51, v47, &qword_28094CE50);
    sub_274439BF0(&v50, v47, &qword_28094CE10);
    sub_274439BF0(&v49, v47, &qword_28094CE58);
    sub_274487DB4();
    sub_274487EE4();
    v30 = v43;
    sub_274639DDC();
    sub_274439BF0(v30, v6, &qword_28094CE38);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE60);
    sub_274487D28();
    sub_274487F38();
    sub_274639DDC();

    sub_274415174(v30, &qword_28094CE38);
    v20 = v15;
    v21 = &qword_28094CE40;
    return sub_274415174(v20, v21);
  }

  if (*(v1 + 8) == 1)
  {
    v17 = v16;
    v18 = [v17 menuElements];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80);
    v19 = sub_27463B81C();

    *v9 = v19;
    swift_storeEnumTagMultiPayload();
    sub_274487DB4();
    sub_274487EE4();
    sub_274639DDC();
    sub_274439BF0(v11, v6, &qword_28094CE38);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE60);
    sub_274487D28();
    sub_274487F38();
    sub_274639DDC();

    v20 = v11;
    v21 = &qword_28094CE38;
    return sub_274415174(v20, v21);
  }

  v33 = *(v1 + 40);
  v48[0] = *(v1 + 32);
  v32 = v48[0];
  v48[1] = v33;
  v34 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE48);
  sub_27463ACEC();
  v35 = v51;
  v36 = *(v2 + 16);
  v49 = *(v2 + 24);
  v50 = v36;
  v51 = v32;
  v48[0] = v33;
  v37 = swift_allocObject();
  v38 = *(v2 + 16);
  *(v37 + 24) = *v2;
  *(v37 + 16) = v34;
  *(v37 + 40) = v38;
  *(v37 + 56) = *(v2 + 32);
  *v6 = v35;
  v6[1] = sub_274487D1C;
  v6[2] = v37;
  v6[3] = 0;
  v6[4] = 0;
  swift_storeEnumTagMultiPayload();
  v39 = v34;
  sub_274439BF0(&v50, v47, &qword_28094CE08);
  sub_274439BF0(&v49, v47, &qword_28094CE50);
  sub_274439BF0(&v51, v47, &qword_28094CE10);
  sub_274439BF0(v48, v47, &qword_28094CE58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE60);
  sub_274487D28();
  sub_274487F38();
  return sub_274639DDC();
}

void sub_274486570(void *a1)
{
  v1 = [a1 handler];
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))();

    _Block_release(v2);
  }
}

uint64_t sub_2744865D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CEC0);
  sub_2744881FC(&qword_28094CEC8, &qword_28094CEC0, &unk_27464EFC8, sub_274488278);
  return sub_27463ACAC();
}

uint64_t sub_2744866A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 title];
  sub_27463B6AC();

  sub_274412BBC();
  result = sub_27463A53C();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

void sub_274486728(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CEB8);
  sub_27463ACEC();
  if (v10)
  {
    v5 = v10;
    sub_27463AC5C();

    sub_274639DDC();
  }

  else
  {
    v6 = [a2 icon];
    if (!v6)
    {
      v8 = 0;
      v9 = -1;
      goto LABEL_6;
    }

    v5 = v6;
    v7 = [objc_opt_self() platformImageForIcon_];
    sub_27463AC5C();
    swift_retain_n();
    sub_274639DDC();
  }

  v8 = v11;
  v9 = BYTE8(v11);
LABEL_6:
  *a3 = v8;
  *(a3 + 8) = v9;
}

uint64_t sub_274486888(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  sub_27463B9CC();
  v2[18] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_274486920, v4, v3);
}

uint64_t sub_274486920()
{
  v1 = *(v0 + 128);

  v2 = [v1 icon];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 bundleIdentifier];
      if (!v6)
      {
        sub_27463B6AC();
        v6 = sub_27463B66C();
      }

      v7 = objc_opt_self();
      v8 = [v7 applicationIconImageForBundleIdentifier_];

      if (!v8)
      {
        v8 = [v5 bundleIdentifier];
        if (!v8)
        {
          sub_27463B6AC();
          v8 = sub_27463B66C();
        }

        v9 = *(v0 + 136);
        v10 = [objc_opt_self() currentDevice];
        [v10 screenScale];
        v12 = v11;

        v13 = *v9;
        *(v0 + 72) = *(v9 + 8);
        *(v0 + 64) = v13;
        *(v0 + 96) = *(v9 + 1);
        *(v0 + 112) = *(v9 + 2);
        v14 = swift_allocObject();
        *(v14 + 16) = vdupq_n_s64(0x404A000000000000uLL);
        v16 = *(v9 + 1);
        v15 = *(v9 + 2);
        *(v14 + 32) = *v9;
        *(v14 + 48) = v16;
        *(v14 + 64) = v15;
        *(v0 + 48) = sub_2744880CC;
        *(v0 + 56) = v14;
        *(v0 + 16) = MEMORY[0x277D85DD0];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_274486F8C;
        *(v0 + 40) = &block_descriptor_42_0;
        v17 = _Block_copy((v0 + 16));
        sub_2744880D8(v0 + 64, v0 + 80);
        sub_274439BF0(v0 + 96, v0 + 80, &qword_28094CE08);
        sub_274439BF0(v0 + 104, v0 + 80, &qword_28094CE50);
        sub_274439BF0(v0 + 112, v0 + 80, &qword_28094CE10);
        sub_274439BF0(v0 + 120, v0 + 80, &qword_28094CE58);

        [v7 applicationIconImageForBundleIdentifier:v8 length:v17 scale:52.0 completionHandler:v12];
        _Block_release(v17);
      }
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_274486C20(void *a1, uint64_t *a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22[-v9];
  v11 = a4 * 0.95 * *MEMORY[0x277D7A390];
  v12 = sub_27463B9FC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
  v13 = *a2;
  v28 = *(a2 + 8);
  v14 = a2[3];
  v26 = a2[2];
  v27 = v13;
  v15 = a2[5];
  v24 = a2[4];
  v25 = v14;
  v23 = v15;
  sub_27463B9CC();
  sub_2744880D8(&v27, v22);
  sub_274439BF0(&v26, v22, &qword_28094CE08);
  sub_274439BF0(&v25, v22, &qword_28094CE50);
  sub_274439BF0(&v24, v22, &qword_28094CE10);
  sub_274439BF0(&v23, v22, &qword_28094CE58);
  v16 = a1;
  v17 = sub_27463B9BC();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = *(a2 + 1);
  *(v18 + 32) = *a2;
  *(v18 + 48) = v20;
  *(v18 + 64) = *(a2 + 2);
  *(v18 + 80) = a1;
  *(v18 + 88) = v11;
  *(v18 + 96) = a3;
  *(v18 + 104) = a4;
  sub_274512004();
}

uint64_t sub_274486E0C(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  *(v8 + 56) = a1;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  sub_27463B9CC();
  *(v8 + 80) = sub_27463B9BC();
  v10 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_274486EAC, v10, v9);
}

uint64_t sub_274486EAC()
{
  v1 = *(v0 + 48);

  if (v1)
  {
    v2 = [*(v0 + 48) roundedWithContinuousCornerRadius:*(v0 + 56) size:{*(v0 + 64), *(v0 + 72)}];
    v1 = [v2 platformImage];
  }

  *(v0 + 16) = *(*(v0 + 40) + 16);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CEB8);
  sub_27463ACFC();
  v3 = *(v0 + 8);

  return v3();
}

void sub_274486F8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_274486FF8(void *a1, uint64_t *a2)
{
  v3 = [a1 itemProvider];
  v4 = *a2;
  v19 = *(a2 + 8);
  v5 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v6 = a2[5];
  v15 = a2[4];
  v16 = v5;
  v14 = v6;
  v7 = swift_allocObject();
  v8 = *(a2 + 1);
  v7[1] = *a2;
  v7[2] = v8;
  v7[3] = *(a2 + 2);
  aBlock[4] = sub_2744882F4;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2744871AC;
  aBlock[3] = &block_descriptor_52_0;
  v9 = _Block_copy(aBlock);
  sub_2744880D8(&v18, v12);
  sub_274439BF0(&v17, v12, &qword_28094CE08);
  sub_274439BF0(&v16, v12, &qword_28094CE50);
  sub_274439BF0(&v15, v12, &qword_28094CE10);
  sub_274439BF0(&v14, v12, &qword_28094CE58);
  v10 = v3[2];

  v10(v3, v9);
  _Block_release(v3);

  _Block_release(v9);
}

uint64_t sub_2744871AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80);
  v2 = sub_27463B81C();

  v1(v2);
}

uint64_t sub_27448722C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CE48);
  return sub_27463ACFC();
}

uint64_t sub_2744872C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CDD0);
  sub_274487AC4();
  return sub_27463AFCC();
}

uint64_t sub_274487330(uint64_t a1)
{
  sub_2745475B0(a1);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CDF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CDE8);
  sub_27440CA78(&qword_28094CE00, &qword_28094CDF8);
  sub_2744881FC(&qword_28094CDE0, &qword_28094CDE8, &unk_27464EDF8, sub_274487B74);
  return sub_27463AF7C();
}

double sub_27448745C@<D0>(_OWORD *a1@<X8>)
{
  swift_unknownObjectRetain();
  sub_274485B6C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_2744874A4@<D0>(_OWORD *a1@<X8>)
{
  sub_27448745C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_2744874F4()
{
  swift_unknownObjectRetain();

  return sub_27443CA58();
}

uint64_t sub_27448776C()
{
  v3 = v0;
  v4 = v1;
  sub_274406A94(v2);
}

uint64_t sub_274487854(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_274487894(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274487928()
{
  sub_274412BBC();

  return sub_27463ACCC();
}

uint64_t objectdestroy_15Tm()
{

  sub_274482198(*(v0 + 72), *(v0 + 80));
  sub_2743F45E8(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_274487AC4()
{
  result = qword_28094CDD8;
  if (!qword_28094CDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CDD0);
    sub_2744881FC(&qword_28094CDE0, &qword_28094CDE8, &unk_27464EDF8, sub_274487B74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CDD8);
  }

  return result;
}

unint64_t sub_274487B74()
{
  result = qword_28094CDF0;
  if (!qword_28094CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CDF0);
  }

  return result;
}

uint64_t sub_274487BD4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_274487C14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_274487C70()
{
  result = qword_28094CE18;
  if (!qword_28094CE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CE20);
    sub_274487AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CE18);
  }

  return result;
}

unint64_t sub_274487D28()
{
  result = qword_28094CE68;
  if (!qword_28094CE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CE38);
    sub_274487DB4();
    sub_274487EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CE68);
  }

  return result;
}

unint64_t sub_274487DB4()
{
  result = qword_28094CE70;
  if (!qword_28094CE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CE40);
    sub_27440CA78(&qword_28094CE78, &qword_28094CE80);
    sub_274487E9C(&qword_28094CE88, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CE70);
  }

  return result;
}

uint64_t sub_274487E9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_274487EE4()
{
  result = qword_28094CE90;
  if (!qword_28094CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CE90);
  }

  return result;
}

unint64_t sub_274487F38()
{
  result = qword_28094CE98;
  if (!qword_28094CE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CE60);
    sub_274487EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CE98);
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{

  return swift_deallocObject();
}

uint64_t sub_274488034()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27440F0F4;

  return sub_274486888(v2, v0 + 24);
}

uint64_t sub_274488110(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 10);
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[13];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27448842C;

  return sub_274486E0C(v7, v8, v9, a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_2744881FC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_274488278()
{
  result = qword_28094CED0;
  if (!qword_28094CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CED0);
  }

  return result;
}

uint64_t sub_2744882FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_27448833C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_274488398()
{
  result = qword_28094CEE0;
  if (!qword_28094CEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CEE8);
    sub_274487D28();
    sub_274487F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CEE0);
  }

  return result;
}

id static WFVariableString.attributedString(variable:)(uint64_t a1)
{
  v1 = [objc_opt_self() attributedStringWithVariable_];

  return v1;
}

void WFVariableString.init(attributedString:)(void *a1)
{
  [objc_allocWithZone(MEMORY[0x277D7CA28]) initWithAttributedString_];
  sub_27463821C();
}

id WFVariableString.attributedString.getter()
{
  v0 = sub_27463822C();
  v1 = [v0 attributedString];

  return v1;
}

void WFVariableString.replacingCharacters(in:with:)()
{
  v3 = OUTLINED_FUNCTION_0_19();
  v4 = [v3 stringByReplacingCharactersInRange:v2 withVariable:{v1, v0}];

  sub_27463827C();
}

{
  v2 = OUTLINED_FUNCTION_0_19();
  v3 = sub_27463822C();
  v4 = [v2 stringByReplacingCharactersInRange:v1 withVariableString:{v0, v3}];

  sub_27463827C();
}

void WFVariableString.substring(with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_27463822C();
  v5 = [v4 substringWithRange_];

  sub_27463827C();
}

NSAttributedString __swiftcall WFVariableString.attributedString(byAddingTypingAttributes:)(Swift::OpaquePointer byAddingTypingAttributes)
{
  v1 = sub_27463822C();
  v2 = sub_27463B4BC();
  v3 = [v1 attributedStringByAddingTypingAttributes_];

  return v3;
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return sub_27463822C();
}

id sub_274488774(void *a1)
{
  sub_274638DAC();
  OUTLINED_FUNCTION_1();
  v91 = v3;
  v92 = v2;
  MEMORY[0x28223BE20](v2);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v90 = &v86 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CEF8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v86 - v9;
  v11 = sub_274637C3C();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v20 = &v86 - v19;
  v21 = [a1 userInfo];
  v22 = sub_27463B4CC();

  v23 = sub_274637BBC();
  sub_27452F288(v23, v24, v22, &v96);

  if (!v97)
  {
    sub_274415174(&v96, &unk_28094A230);
    goto LABEL_6;
  }

  v25 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_274638C2C();
    v26 = a1;
    v27 = sub_274638D9C();
    v28 = sub_27463BC1C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v95 = v30;
      *v29 = 136315138;
      v31 = [v26 userInfo];
      v32 = sub_27463B4CC();

      v33 = sub_274637BBC();
      sub_27452F288(v33, v34, v32, &v96);

      if (v97)
      {
        v35 = swift_dynamicCast();
        v36 = v93;
        v37 = v94;
        if (!v35)
        {
          v36 = 0;
          v37 = 0;
        }
      }

      else
      {
        sub_274415174(&v96, &unk_28094A230);
        v36 = 0;
        v37 = 0;
      }

      *&v96 = v36;
      *(&v96 + 1) = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C298);
      v38 = sub_27463B6BC();
      v40 = sub_2745E7980(v38, v39, &v95);

      *(v29 + 4) = v40;
      _os_log_impl(&dword_2743F0000, v27, v28, "Not presenting customized rate limit error for model %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_14_6();
    }

    (*(v91 + 8))(v5, v92);
    return 0;
  }

  sub_274637C2C();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_274415174(v10, &qword_28094CEF8);
    goto LABEL_6;
  }

  (*(v13 + 32))(v20, v10, v11);
  (*(v13 + 104))(v16, *MEMORY[0x277CFC140], v11);
  v43 = sub_2745E14FC(v20, v16);
  v45 = v13 + 8;
  v44 = *(v13 + 8);
  v44(v16, v11);
  if ((v43 & 1) == 0)
  {
    v44(v20, v11);
    goto LABEL_6;
  }

  v87 = v11;
  v88 = v44;
  v89 = v45;
  v46 = v90;
  sub_274638C2C();
  v47 = a1;
  v48 = sub_274638D9C();
  v49 = sub_27463BBEC();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v47;
    *v51 = v47;
    v52 = v47;
    _os_log_impl(&dword_2743F0000, v48, v49, "Presenting customized error alert for rate limit error: %@", v50, 0xCu);
    sub_274415174(v51, &qword_280950E00);
    OUTLINED_FUNCTION_14_6();
    OUTLINED_FUNCTION_14_6();
  }

  (*(v91 + 8))(v46, v92);
  sub_274412734(0, &qword_280952750);
  v53 = v47;
  v41 = sub_27458824C(v47);
  v92 = [objc_allocWithZone(sub_274637C9C()) init];
  v54 = sub_274637C7C();
  if (v55)
  {
    v56 = v54;
  }

  else
  {
    v56 = 0x54504774616843;
  }

  if (v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = 0xE700000000000000;
  }

  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v58 = qword_28094BB00;
  v59 = sub_27463B66C();
  v60 = sub_27463B66C();

  v62 = OUTLINED_FUNCTION_1_12(v61, sel_localizedStringForKey_value_table_);

  v63 = sub_27463B6AC();
  v65 = v64;

  sub_274489640(v63, v65, v41, &selRef_setTitle_);
  sub_27463B70C();
  v66 = sub_27463B66C();
  v67 = sub_27463B66C();

  v68 = [v58 localizedStringForKey:v66 value:v67 table:0];

  sub_27463B6AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_2746486A0;
  *(v69 + 56) = v25;
  v70 = sub_27440F250();
  *(v69 + 32) = v56;
  *(v69 + 40) = v57;
  *(v69 + 96) = v25;
  *(v69 + 104) = v70;
  *(v69 + 64) = v70;
  *(v69 + 72) = v56;
  *(v69 + 80) = v57;
  swift_bridgeObjectRetain_n();
  v71 = sub_27463B67C();
  v73 = v72;

  sub_274489640(v71, v73, v41, &selRef_setMessage_);
  if (v56 != 0x54504774616843 || v57 != 0xE700000000000000)
  {
    sub_27463C6BC();
  }

  sub_27463B70C();
  v75 = sub_27463B66C();
  v76 = sub_27463B66C();

  v78 = OUTLINED_FUNCTION_1_12(v77, sel_localizedStringForKey_value_table_);

  v79 = sub_27463B6AC();
  v81 = v80;

  sub_274412734(0, &unk_28094FE60);
  v82 = swift_allocObject();
  v83 = v92;
  *(v82 + 16) = v92;
  v84 = v83;
  v85 = sub_274489360(v79, v81, 0, 0, sub_2744896AC, v82);
  [v41 addButton_];

  v88(v20, v87);
  return v41;
}

void sub_274489124()
{
  v0 = sub_274637E2C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_274638DAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274638C2C();
  v8 = sub_274638D9C();
  v9 = sub_27463BBEC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2743F0000, v8, v9, "Opening upsell accountUpgradeURL", v10, 2u);
    MEMORY[0x277C5A270](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = [objc_opt_self() sharedContext];
  sub_274637C4C();
  v12 = sub_274637DFC();
  (*(v1 + 8))(v3, v0);
  [v11 openURL_];
}

id sub_274489360(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_27463B66C();

  if (a5)
  {
    v14[4] = a5;
    v14[5] = a6;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_27443E0E8;
    v14[3] = &block_descriptor_9;
    v11 = _Block_copy(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = [swift_getObjCClassFromMetadata() buttonWithTitle:v10 style:a3 preferred:a4 & 1 handler:v11];
  _Block_release(v11);

  return v12;
}

unint64_t sub_274489478()
{
  result = qword_28094CEF0;
  if (!qword_28094CEF0)
  {
    sub_274412734(255, &qword_280954130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CEF0);
  }

  return result;
}

void sub_2744894E4()
{
  swift_getWitnessTable();

  JUMPOUT(0x277C57A20);
}

void sub_274489550()
{
  swift_getWitnessTable();

  JUMPOUT(0x277C57A30);
}

void sub_2744895BC()
{
  swift_getWitnessTable();

  JUMPOUT(0x277C57A10);
}

void sub_274489640(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_27463B66C();

  [a3 *a4];
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id OUTLINED_FUNCTION_1_12(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_2744896FC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_27463B6AC();
  v4 = v3;
  sub_27463C74C();
  sub_27463B71C();
  v5 = sub_27463C7AC();

  v6 = ~(-1 << *(a2 + 32));
  do
  {
    v7 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    v9 = sub_27463B6AC();
    OUTLINED_FUNCTION_8_8();
    if (v9 == sub_27463B6AC() && v4 == v10)
    {

      return 1;
    }

    v12 = OUTLINED_FUNCTION_6_7();

    v5 = (v5 & v6) + 1;
  }

  while ((v12 & 1) == 0);
  return v8;
}

uint64_t sub_27448983C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_27463C74C();
    MEMORY[0x277C58EA0](a1);
    v5 = sub_27463C7AC();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 8 * v7) != a1);
  }

  return v2;
}

BOOL sub_2744898EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_27463C74C();
  sub_27463B71C();
  sub_27463C7AC();
  OUTLINED_FUNCTION_3_15();
  do
  {
    v10 = v9 & v4;
    v11 = (v5 << (v9 & v4)) & *(v3 + (((v9 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v13 = (*(a3 + 48) + 16 * v10);
    if (*v13 == a1 && v13[1] == a2)
    {
      break;
    }

    v15 = sub_27463C6BC();
    v9 = v10 + 1;
  }

  while ((v15 & 1) == 0);
  return v12;
}

BOOL sub_2744899C4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_27463C2EC();
  OUTLINED_FUNCTION_3_15();
  do
  {
    v8 = v7 & v3;
    v9 = (v4 << (v7 & v3)) & *(v2 + (((v7 & v3) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    sub_27448E108(*(a2 + 48) + 40 * v8, v13);
    v11 = MEMORY[0x277C58A40](v13, a1);
    sub_274430664(v13);
    v7 = v8 + 1;
  }

  while ((v11 & 1) == 0);
  return v10;
}

uint64_t WFNumberFieldParameter.view(with:)(uint64_t a1)
{
  sub_274489AE4(v1, a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CF00);
  sub_274489D2C();
  return sub_27463AE9C();
}

void *sub_274489AE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274489DB8();
    sub_274489E0C();
  }

  else
  {
    type metadata accessor for ParameterStateStore();
    sub_27448E730(&qword_28094B550, 255, type metadata accessor for ParameterStateStore);

    sub_27463950C();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_27448E244;
    *(v6 + 24) = a2;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_274458A90;
    *(v7 + 24) = a2;
    __src[0] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274489DB8();
    sub_274489E0C();
    swift_retain_n();
  }

  v8 = a1;
  sub_274639DDC();
  return memcpy(a3, __src, 0x52uLL);
}

unint64_t sub_274489D2C()
{
  result = qword_28094CF08;
  if (!qword_28094CF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CF00);
    sub_274489DB8();
    sub_274489E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CF08);
  }

  return result;
}

unint64_t sub_274489DB8()
{
  result = qword_28094CF10;
  if (!qword_28094CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CF10);
  }

  return result;
}

unint64_t sub_274489E0C()
{
  result = qword_28094CF18;
  if (!qword_28094CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CF18);
  }

  return result;
}

uint64_t sub_274489E64()
{
  result = sub_27463B66C();
  qword_280965E70 = result;
  return result;
}

id WFNumberFieldParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  sub_274412734(0, &qword_28094BD80);
  v3 = [v1 localizedLabel];
  v4 = sub_27463B6AC();
  v6 = v5;

  v7 = sub_27444C12C(v1);
  v9 = v8;
  if (qword_2809492C8 != -1)
  {
    swift_once();
  }

  v10 = sub_27444AEE4(v4, v6, v7, v9, qword_280965E70);
  [v10 setPrefersNoWrapping_];
  if (a1)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      swift_unknownObjectRetain();
      v13 = [v12 variable];
      if (v13)
      {
        v14 = v13;
        [v10 populateWith_];
      }

      else
      {
        v15 = [v12 value];
        if (!v15)
        {
LABEL_10:
          swift_unknownObjectRelease();
          return v10;
        }

        v14 = v15;
        [v10 populateWithString_];
      }

      goto LABEL_10;
    }
  }

  return v10;
}

id sub_27448A044(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFNumberFieldParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

id WFNumberFieldParameter.defaultStateForNewArrayElement()()
{
  sub_274412734(0, &unk_28094D720);
  v0 = sub_27463BFAC();
  v1 = [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithValue_];

  return v1;
}

id sub_27448A124(void *a1)
{
  v1 = a1;
  v2 = WFNumberFieldParameter.defaultStateForNewArrayElement()();

  return v2;
}

uint64_t sub_27448A16C()
{
  static WFNumberFieldParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_27448A214()
{
  OUTLINED_FUNCTION_79();
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_27448A2A8, v3, v2);
}

uint64_t sub_27448A2A8()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_27448A3C0;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_58;
  v0[7].receiver = v2;
  v3 = type metadata accessor for NumberFieldParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_27448A3C0()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_27448A4C4, v2, v1);
}

uint64_t sub_27448A4C4()
{
  OUTLINED_FUNCTION_79();

  sub_27448A8A0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27448A5A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_27448A638, v4, v3);
}

uint64_t sub_27448A638()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_27448A214();
}

id sub_27448A728()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for NumberFieldParameterSummaryEditor();
  v1 = objc_msgSendSuper2(&v3, sel_variableProvider);

  return v1;
}

uint64_t sub_27448A7D0(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for NumberFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v4, sel_setVariableProvider_, a1);
  sub_27448A820();
  return swift_unknownObjectRelease();
}

void sub_27448A820()
{
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_autocompleteDataSource];
  if (v1)
  {
    v3 = v1;
    v2 = [v0 variableProvider];
    sub_2745BEA48();
  }
}

id sub_27448A8A0()
{
  result = [v0 textEntry];
  if (result)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 resignFirstResponder];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_27448A92C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithVariable_];
  }

  else
  {
    return 0;
  }
}

void sub_27448A9E8(void *a1, uint64_t a2)
{
  v3 = v2;
  v24.receiver = v3;
  v24.super_class = type metadata accessor for NumberFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v24, sel_textEntryWillBegin_allowMultipleLines_, a1, a2);
  [a1 setClearsZeroWhenTyping_];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = [v3 parameter];
    v9 = [v8 allowsDecimalNumbers];

    if (v9)
    {
      v10 = 8;
    }

    else
    {
      v10 = 4;
    }

    [v7 setKeyboardType_];
  }

  v11 = [objc_allocWithZone(type metadata accessor for VariableAutocompleter()) init];
  v12 = [v3 variableProvider];
  sub_2745BEA48();
  if (([v3 isProcessing] & 1) != 0 || (v13 = sub_274505FCC(objc_msgSend(v3, sel_parameter))) == 0)
  {

    v13 = MEMORY[0x277D84FA0];
  }

  sub_2745BEB28(v13);
  v14 = *&v3[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_autocompleteDataSource];
  *&v3[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_autocompleteDataSource] = v11;
  v15 = v11;

  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v19 = [v3 parameter];
    v18 = [v19 allowsNegativeNumbers];
  }

  sub_2745BEB90(v18);
  v20 = [objc_allocWithZone(sub_274638A6C()) init];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRetain();
  }

  sub_274638A5C();
  sub_27463885C();
  swift_allocObject();
  sub_27448E730(&qword_28094CF90, 255, type metadata accessor for VariableAutocompleter);
  v21 = v15;
  sub_27463886C();
  sub_274638A3C();
  sub_27448E730(&qword_28094CF98, v22, type metadata accessor for NumberFieldParameterSummaryEditor);
  swift_unknownObjectRetain();
  sub_274638A4C();

  v23 = *&v3[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_autocompleteCoordinator];
  *&v3[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_autocompleteCoordinator] = v20;
}

void sub_27448AD88()
{
  v1 = [v0 textEntry];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 attributedText];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 string];

      v6 = sub_27463B6AC();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    v9 = objc_opt_self();
    sub_27448DF10(v6, v8, v9);
    OUTLINED_FUNCTION_8_8();
    v10 = sub_27463B72C();

    sub_274412734(0, &qword_280953450);
    v11 = sub_2745A9480();
    [v2 wf:0 replaceRange:v10 withAttributedText:v11];
    swift_unknownObjectRelease();
  }
}

id sub_27448AEFC(void *a1)
{
  if (a1)
  {
    v2 = [a1 string];
    sub_27463B6AC();

    v3 = sub_27463B66C();
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_self();
  v5 = [v1 parameter];
  v6 = [v5 allowsNegativeNumbers];

  v7 = [v4 shouldChangeText:v3 allowMinus:v6];
  return v7;
}

void sub_27448B024(id a1)
{
  v20.receiver = v1;
  v20.super_class = type metadata accessor for NumberFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v20, sel_textEntryTextDidChange_, a1);
  if (a1)
  {
    v3 = [a1 string];
    v4 = sub_27463B6AC();
    a1 = v5;

    v6 = sub_27463B66C();
  }

  else
  {
    v6 = 0;
    v4 = 0;
  }

  v7 = objc_opt_self();
  v8 = [v1 parameter];
  v9 = [v8 allowsDecimalNumbers];

  v10 = [v7 stringBySanitizingNumberString:v6 allowDecimalNumbers:v9];
  if (v10)
  {
    v11 = sub_27463B6AC();
    v13 = v12;

    if (a1)
    {
      v14 = v11 == v4 && a1 == v13;
      if (v14 || (sub_27463C6BC() & 1) != 0)
      {

        v15 = sub_27463B66C();

        a1 = [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithValue_];

LABEL_16:
        [v1 stageState_];

        return;
      }
    }
  }

  else if (!a1)
  {
    goto LABEL_16;
  }

  v16 = [v1 textEntry];
  if (v16)
  {
    v17 = v16;
    if (a1)
    {
      v18 = sub_27463B72C();
    }

    else
    {
      v18 = 0;
    }

    sub_274412734(0, &qword_280953450);
    OUTLINED_FUNCTION_5_0();
    v19 = sub_2745A9480();
    [v17 wf:0 replaceRange:v18 withAttributedText:v19];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_27448B320()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for NumberFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v3, sel_textEntryDidFinish);
  v1 = OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_hasStagedChanges;
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_hasStagedChanges) == 1)
  {
    v2 = [v0 currentState];
    [v0 commitState_];

    *(v0 + v1) = 0;
  }

  if ((*(v0 + OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_isPickingActionOutput) & 1) == 0)
  {
    [v0 completeEditing];
  }
}

id sub_27448B418(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for NumberFieldParameterSummaryEditor();
  result = objc_msgSendSuper2(&v4, sel_stageState_, a1);
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_hasStagedChanges) = 1;
  return result;
}

void sub_27448B4D8(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {

      sub_27448AD88();
    }

    else
    {
      v6 = [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithVariable_];
      [v1 stageState_];

      sub_27448A8A0();
    }
  }

  else
  {
    v2 = [v1 variableProvider];
    if (v2)
    {
      v3 = v2;
      v4 = sub_274505FCC([v1 parameter]);
      if (v4)
      {
        v5 = sub_2744896FC(*MEMORY[0x277D7D068], v4);
      }

      else
      {
        v5 = 0;
      }

      *(v1 + OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_isPickingActionOutput) = 1;
      sub_27448A8A0();
      v7 = [v1 variableUIDelegate];
      if (v7)
      {
        v8 = v7;
        v9 = swift_allocObject();
        *(v9 + 16) = v1;
        v12[4] = sub_27448E164;
        v12[5] = v9;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 1107296256;
        v12[2] = sub_274486F8C;
        v12[3] = &block_descriptor_10;
        v10 = _Block_copy(v12);
        v11 = v1;

        [v8 showActionOutputPickerAllowingShortcutInput:v5 & 1 variableProvider:v3 completionHandler:v10];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        _Block_release(v10);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_27448B730(void *a1, id a2)
{
  if (a1)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D7C6A8]);
    v6 = a1;
    v5 = [v4 initWithVariable_];
    [a2 commitState_];

    [a2 completeEditing];
  }

  else
  {
    *(a2 + OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_isPickingActionOutput) = 0;

    [a2 requestTextEntry];
  }
}

id sub_27448B810(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_autocompleteDataSource] = 0;
  v3[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_hasStagedChanges] = 0;
  v3[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_isPickingActionOutput] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_autocompleteCoordinator] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for NumberFieldParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_27448B8EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NumberFieldParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_27448B96C()
{
  sub_27448E094();
  sub_27463880C();
  if (v0 != 2)
  {
    sub_27448B4D8(v0);
    sub_27448E0E8(v0);
  }
}

uint64_t sub_27448B9E4()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    if ((v8 & 1) == 0)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  else
  {

    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v8, 0);
    (*(v2 + 8))(v4, v1);
    if (v13[15] != 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  if (v7)
  {
    if (v6)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  else
  {

    sub_27463BC0C();
    v11 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    if (v13[14])
    {
      return MEMORY[0x277D84FA0];
    }
  }

  v12 = MEMORY[0x277D84FA0];
  result = sub_27448DF90(v5);
  if (!result)
  {
    return v12;
  }

  return result;
}

void sub_27448BC10(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, 0x51uLL);
  v3 = *(v1 + 8);
  v4 = *(v1 + 40);
  v36 = *(v1 + 24);
  v37 = v4;
  v32 = v3;
  v33 = v36;
  v34 = v4;
  v35 = v3;
  v5 = __dst[0];
  v6 = sub_274412C20(&v35, v29, &unk_28094C0E0);
  v7 = sub_274465BE4(v6);
  v9 = v8;
  v11 = v10;
  sub_27440CB1C(&v35, &unk_28094C0E0);
  type metadata accessor for WorkflowEditorOptions(0);
  OUTLINED_FUNCTION_0_20();
  sub_27448E730(v12, 255, v13);
  *(a1 + 208) = sub_27463979C();
  *(a1 + 216) = v14;
  *(a1 + 224) = swift_getKeyPath();
  *(a1 + 232) = 0;
  *(a1 + 240) = swift_getKeyPath();
  *(a1 + 248) = 0;
  *(a1 + 256) = swift_getKeyPath();
  *(a1 + 264) = 0;
  *(a1 + 272) = swift_getKeyPath();
  *(a1 + 312) = 0;
  *(a1 + 320) = swift_getKeyPath();
  *(a1 + 328) = 0;
  sub_27463ACDC();
  v15 = v30;
  *(a1 + 336) = v29[0];
  *(a1 + 344) = v15;
  sub_27463ACDC();
  v16 = v30;
  *(a1 + 352) = v29[0];
  *(a1 + 360) = v16;
  v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
  v18 = v5;
  sub_27444A564(v18);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440);
  *a1 = sub_27463950C();
  *(a1 + 8) = v19;
  v20 = [v18 localizedLabel];
  v21 = sub_27463B6AC();
  v23 = v22;

  *(a1 + 16) = v21;
  *(a1 + 24) = v23;
  v24 = [v18 localizedDescription];
  if (v24)
  {
    v25 = v24;
    v26 = sub_27463B6AC();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  *(a1 + 32) = v26;
  *(a1 + 40) = v28;
  *(a1 + 48) = 1;
  *(a1 + 56) = v7;
  *(a1 + 64) = v9;
  *(a1 + 72) = v11;
  sub_27448BED4(__dst, a1 + 80);

  *(a1 + 200) = 0;
}

double sub_27448BED4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_27444C12C(*a1);
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 48;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE100000000000000;
  }

  memcpy(__dst, a1, sizeof(__dst));
  v9 = sub_27448B9E4();
  v10 = [v4 allowsDecimalNumbers];
  v11 = [v4 allowsNegativeNumbers];
  v12 = [v4 textAlignment];
  WFTextAlignmentFromString();

  LOBYTE(v12) = sub_27463944C();
  v22 = *(a1 + 8);
  v23 = *(a1 + 24);
  v24 = *(a1 + 40);
  *&v21[5] = v22;
  *&v21[21] = v23;
  *&v21[37] = v24;
  v20 = 0;
  sub_274412C20(&v22, v18, &unk_28094C0E0);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_27448E730(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
  v13 = sub_27463979C();
  v14 = *&v21[16];
  *(a2 + 27) = *v21;
  v15 = v20;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 25) = v11;
  *(a2 + 26) = v12;
  *(a2 + 43) = v14;
  result = *&v21[32];
  *(a2 + 59) = *&v21[32];
  *(a2 + 72) = *&v21[45];
  *(a2 + 80) = sub_27448C0A8;
  *(a2 + 88) = 0;
  *(a2 + 96) = v15;
  *(a2 + 104) = v13;
  *(a2 + 112) = v17;
  return result;
}

uint64_t sub_27448C0A8()
{
  v0 = sub_2746382DC();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2746382CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  swift_allocObject();
  return sub_2746388DC();
}

uint64_t sub_27448C144@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v50 = type metadata accessor for VariableTextEditor(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFE0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v48 = &v45 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFE8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  memcpy(v55, v1, sizeof(v55));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  v11 = sub_27440CA78(&unk_28094CFF0, &qword_2809532C0);
  v49 = v10;
  v47 = v11;
  sub_27463920C();
  v12 = v55[13];
  if (v55[13])
  {
    v57[0] = *v1;
    v56 = v55[2];
    OUTLINED_FUNCTION_7_13();
    v46 = swift_allocObject();
    memcpy((v46 + 16), v1, 0x78uLL);
    OUTLINED_FUNCTION_7_13();
    v45 = swift_allocObject();
    memcpy((v45 + 16), v1, 0x78uLL);
    if ((v55[3] & 0x100) != 0)
    {
      v13 = objc_opt_self();
      OUTLINED_FUNCTION_5_15();
      OUTLINED_FUNCTION_5_15();
      v14 = v12;
      sub_27448E448(v57, v54);
      sub_274412C20(&v56, v54, &unk_280953A00);
      v15 = [v13 currentDevice];
      v16 = [v15 userInterfaceIdiom];

      v17 = v16 == 0;
      if ((v55[3] & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if ((v55[3] & 1) == 0)
      {
        OUTLINED_FUNCTION_5_15();
        OUTLINED_FUNCTION_5_15();
        v20 = v12;
        sub_27448E448(v57, v54);
        sub_274412C20(&v56, v54, &unk_280953A00);
        v17 = 0;
LABEL_9:
        v19 = MEMORY[0x277D7A640];
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_5_15();
      OUTLINED_FUNCTION_5_15();
      v18 = v12;
      sub_27448E448(v57, v54);
      sub_274412C20(&v56, v54, &unk_280953A00);
      v17 = 0;
    }

    v19 = MEMORY[0x277D7A620];
LABEL_10:
    v21 = *v19;
    v22 = *MEMORY[0x277D7A5C0];
    *(v4 + 18) = sub_2745BBDFC;
    *(v4 + 19) = 0;
    v4[160] = 0;
    *(v4 + 25) = swift_getKeyPath();
    v4[208] = 0;
    *(v4 + 27) = swift_getKeyPath();
    v4[224] = 0;
    *(v4 + 29) = swift_getKeyPath();
    v4[240] = 0;
    v23 = v50;
    v24 = *(v50 + 108);
    *&v4[v24] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000);
    swift_storeEnumTagMultiPayload();
    v25 = &v4[*(v23 + 112)];
    *v25 = swift_getKeyPath();
    v25[9] = 0;
    *v4 = 1;
    *(v4 + 8) = v57[0];
    *(v4 + 12) = 0;
    *(v4 + 4) = 0;
    *(v4 + 20) = 0;
    *(v4 + 6) = v56;
    *(v4 + 8) = 0;
    v4[104] = v17;
    *(v4 + 14) = v21;
    *(v4 + 15) = v22;
    *(v4 + 8) = xmmword_27464F170;
    type metadata accessor for WorkflowEditorOptions(0);
    OUTLINED_FUNCTION_0_20();
    sub_27448E730(v26, 255, v27);
    v28 = v12;
    v29 = v22;
    *(v4 + 21) = sub_27463950C();
    *(v4 + 22) = v30;
    v31 = sub_27463950C();
    v33 = v32;

    *(v4 + 23) = v31;
    *(v4 + 24) = v33;
    *(v4 + 7) = 1;
    v34 = v45;
    v35 = v46;
    *(v4 + 9) = sub_27448E400;
    *(v4 + 10) = v35;
    *(v4 + 11) = sub_27448E408;
    *(v4 + 12) = v34;
    LOBYTE(v23) = BYTE2(v55[3]);
    KeyPath = swift_getKeyPath();
    v37 = v48;
    sub_27448E4A4(v4, v48);
    v38 = v37 + *(v51 + 36);
    *v38 = KeyPath;
    *(v38 + 8) = v23;
    OUTLINED_FUNCTION_7_13();
    v39 = swift_allocObject();
    memcpy((v39 + 16), v55, 0x78uLL);
    sub_27441277C(v37, v9, &qword_28094CFE0);
    v40 = v53;
    v41 = &v9[*(v52 + 36)];
    *v41 = sub_27448E570;
    v41[1] = v39;
    v41[2] = 0;
    v41[3] = 0;
    sub_27441277C(v9, v40, &qword_28094CFE8);
    return OUTLINED_FUNCTION_5_15();
  }

  type metadata accessor for WorkflowEditorOptions(0);
  OUTLINED_FUNCTION_0_20();
  sub_27448E730(v43, 255, v44);
  result = sub_27463978C();
  __break(1u);
  return result;
}

uint64_t sub_27448C728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(MEMORY[0x277D7C6A8]);
  sub_27448E410(a4, v10);
  v7 = [v6 initWithVariable_];
  v8 = *(a4 + 64);
  v10[0] = v7;
  v8(v10);

  return sub_27448E578(a4);
}

uint64_t sub_27448C7B0(void *a1)
{
  v2 = sub_2746382DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v22[0] = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = a1[10];
  v9 = a1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0);
  v22[1] = v9;
  v22[2] = v8;
  sub_27463920C();
  sub_27463896C();

  v10 = sub_2746382BC();
  v11 = *(v3 + 8);
  v11(v7, v2);
  if (sub_274453594(v10))
  {
    sub_2744535A4(0, (v10 & 0xC000000000000001) == 0);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x277C58B20](0, v10);
    }

    else
    {
      v12 = *(v10 + 32);
    }

    v13 = v12;

    v14 = objc_allocWithZone(MEMORY[0x277D7C6A8]);
    sub_27448E410(a1, v23);
    v15 = [v14 initWithVariable_];
    v16 = a1[8];
    v23[0] = v15;
    v16(v23);
  }

  else
  {

    sub_27448E410(a1, v23);
    sub_27463920C();
    v17 = v22[0];
    sub_27463896C();

    sub_27463826C();
    v11(v17, v2);
    v18 = sub_27463B66C();

    v19 = [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithValue_];

    v20 = a1[8];
    v23[0] = v19;
    v20(v23);
  }

  return sub_27448E578(a1);
}

uint64_t sub_27448CA9C(uint64_t a1)
{
  v2 = sub_2746382DC();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0);
  sub_27463920C();
  (*(a1 + 48))(&v6);
  v3 = v6;
  if (!v6 || (v4 = [v6 value], v3, !v4))
  {
    sub_274412734(0, &unk_28094D720);
    v4 = sub_27463BFAC();
  }

  sub_27463B6AC();

  sub_27463828C();
  sub_27463897C();
}

uint64_t sub_27448CC38()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v0 + 40);
  v5 = *(v0 + 32);
  v14 = v5;
  if (v15 == 1)
  {
    if ((v5 & 1) == 0)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  else
  {

    sub_27463BC0C();
    v6 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27440CB1C(&v14, &qword_28094CD80);
    (*(v2 + 8))(v4, v1);
    if (v12 != 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  v13 = *(v0 + 24);
  v7 = *(v0 + 16);
  v12 = v7;
  if (v13 == 1)
  {
    if (v7)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  else
  {

    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27440CB1C(&v12, &qword_28094CD80);
    (*(v2 + 8))(v4, v1);
    if (v11[15])
    {
      return MEMORY[0x277D84FA0];
    }
  }

  v10 = MEMORY[0x277D84FA0];
  result = sub_27448DF90(*v0);
  if (!result)
  {
    return v10;
  }

  return result;
}

BOOL sub_27448CE8C()
{
  v0 = sub_27448CC38();
  v1 = sub_2744896FC(*MEMORY[0x277D7D040], v0);

  result = 0;
  if ((v1 & 1) == 0)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      if ([v2 isTimePickerParameter])
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_27448CF18@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CF48);
  MEMORY[0x28223BE20](v3);
  v5 = (v22 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CF50);
  MEMORY[0x28223BE20](v6);
  v8 = v22 - v7;
  if (sub_27448CE8C() && (v9 = *v1, objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) != 0))
  {
    v11 = v10;
    v12 = *(v1 + 8);
    type metadata accessor for ParameterStateStore();
    v22[1] = a1;
    sub_27448E730(&qword_28094B550, 255, type metadata accessor for ParameterStateStore);
    v13 = v9;
    swift_retain_n();
    v22[0] = v13;
    v14 = sub_27463950C();
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_27448DF08;
    *(v17 + 24) = v12;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_274458A90;
    *(v18 + 24) = v12;
    KeyPath = swift_getKeyPath();
    v23[0] = 0;
    v20 = swift_getKeyPath();
    v23[88] = 0;
    __src[0] = v11;
    __src[1] = v14;
    __src[2] = v16;
    __src[3] = sub_274458A60;
    __src[4] = v17;
    __src[5] = sub_274458A98;
    __src[6] = v18;
    __src[7] = KeyPath;
    LOBYTE(__src[8]) = v23[0];
    __src[9] = v20;
    LOBYTE(__src[10]) = 0;
    memcpy(v8, __src, 0x51uLL);
    swift_storeEnumTagMultiPayload();

    sub_27448E02C(__src, v23);
    sub_27448DEB4();
    sub_27440CA78(&unk_28094CF60, &qword_28094CF48);
    sub_274639DDC();

    return sub_27448E064(__src);
  }

  else
  {
    sub_27448D2C8(v5);
    sub_274412C20(v5, v8, &qword_28094CF48);
    swift_storeEnumTagMultiPayload();
    sub_27448DEB4();
    sub_27440CA78(&unk_28094CF60, &qword_28094CF48);
    sub_274639DDC();
    return sub_27440CB1C(v5, &qword_28094CF48);
  }
}

uint64_t sub_27448D2C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CF48);
  v5 = v4[14];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v4[15];
  *v6 = swift_getKeyPath();
  *(v6 + 4) = 0;
  v7 = a1 + v4[16];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = a1 + v4[17];
  *v8 = swift_getKeyPath();
  v8[40] = 0;
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
  v10 = v3;
  sub_27444A564(v10);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440);
  *a1 = sub_27463950C();
  a1[1] = v11;
  v12 = [v10 localizedLabel];
  v13 = sub_27463B6AC();
  v15 = v14;

  v16 = [v10 localizedDescription];
  if (v16)
  {
    v17 = v16;
    v18 = sub_27463B6AC();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  a1[2] = v13;
  a1[3] = v15;
  a1[4] = v18;
  a1[5] = v20;
  v21 = a1 + v4[12];
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = v4[11];

  result = sub_27444ACA0(v10, 0, 4, 0, 0, a1 + v22);
  *(a1 + v4[13]) = 0;
  return result;
}

void *sub_27448D520@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, 0x51uLL);
  v3 = sub_274639B2C();
  v9 = 0;
  sub_27448D604(__dst, __src);
  memcpy(v11, __src, 0x81uLL);
  memcpy(v12, __src, 0x81uLL);
  sub_274412C20(v11, v6, &qword_28094CFC8);
  sub_27440CB1C(v12, &qword_28094CFC8);
  memcpy(&v8[7], v11, 0x81uLL);
  v4 = v9;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  return memcpy((a1 + 17), v8, 0x88uLL);
}

uint64_t sub_27448D604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v17 = *(a1 + 8);
  v18 = v3;
  v19 = *(a1 + 40);
  v4 = *a1;
  sub_274412C20(&v17, v21, &qword_28094CFD0);
  v5 = [v4 possibleUnits];
  v6 = sub_27463B81C();

  v7 = v17;
  v8 = v18;
  v9 = v19;
  sub_27463B0CC();
  sub_2746392FC();
  *&__src[56] = v14;
  v13[112] = 1;
  *__src = v7;
  *&__src[16] = v8;
  *&__src[32] = v9;
  *&__src[48] = v6;
  *&__src[72] = v15;
  *&__src[88] = v16;
  memcpy(&v13[7], __src, 0x68uLL);
  v12[104] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  memcpy((a2 + 9), v13, 0x6FuLL);
  v10 = v15;
  v23 = v14;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  v21[0] = v7;
  v21[1] = v8;
  v21[2] = v9;
  v22 = v6;
  v24 = v10;
  v25 = v16;
  sub_274412C20(__src, v12, &qword_28094CFD8);
  return sub_27440CB1C(v21, &qword_28094CFD8);
}

char *sub_27448D7A8()
{
  v1 = v0[1];
  v38 = *v0;
  v39 = v1;
  v40 = v0[2];
  v41 = *(v0 + 6);
  type metadata accessor for DurationPickerView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = v39;
  v4 = v40;
  (v39)(v37);
  v5 = v37[0];
  v6 = 0.0;
  if (v37[0] && (v7 = [v37[0] magnitudeState], v5, v7) && (v8 = objc_msgSend(v7, sel_decimalNumber), v7, v8))
  {
    [v8 doubleValue];
    v6 = v9;

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v3(v37);
  if (v37[0] && (sub_2744A4BEC(v37[0]), v11))
  {
    v12 = sub_27463B66C();

    if (v12)
    {
      v13 = v10;
    }

    else
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      v14 = sub_27463B6AC();
      OUTLINED_FUNCTION_8_8();
      if (v14 == sub_27463B6AC() && v10 == v15)
      {
      }

      else
      {
        v17 = OUTLINED_FUNCTION_6_7();
        v18 = v12;

        if ((v17 & 1) == 0)
        {
          v33 = sub_27463B6AC();
          OUTLINED_FUNCTION_8_8();
          if (v33 == sub_27463B6AC() && v10 == v34)
          {

            v32 = 60.0;
          }

          else
          {
            v36 = OUTLINED_FUNCTION_6_7();

            v32 = 60.0;
            if ((v36 & 1) == 0)
            {
              v32 = 1.0;
            }
          }

          goto LABEL_23;
        }
      }

      v32 = 3600.0;
LABEL_23:
      v26 = v6 * v32;
      goto LABEL_20;
    }
  }

  else
  {
    v12 = 0;
  }

  sub_27463BA1C();
  v19 = sub_27463B66C();

  v20 = [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithValue_];

  v21 = sub_27463B6AC();
  v23 = v22;
  objc_allocWithZone(MEMORY[0x277D7C788]);
  sub_27448E7D0(&v38, v37);
  v24 = v20;
  v25 = sub_2744A4A84(v20, v21, v23);
  v37[0] = v25;
  v4(v37);

  sub_27448E808(&v38);
  v26 = 300.0;
LABEL_20:
  sub_2744CEAF0(v26);

  v27 = swift_allocObject();
  *(v27 + 64) = v41;
  v28 = v40;
  *(v27 + 32) = v39;
  *(v27 + 48) = v28;
  *(v27 + 16) = v38;
  v29 = &v2[OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_onDurationChange];
  v30 = *&v2[OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_onDurationChange];
  *v29 = sub_27448E838;
  v29[1] = v27;
  sub_27448E7D0(&v38, v37);
  sub_274406A94(v30);
  return v2;
}

uint64_t sub_27448DB3C(char a1, uint64_t a2)
{
  sub_27463BA1C();
  v4 = sub_27463B66C();

  v5 = [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithValue_];

  v6 = **(&unk_279EDB558 + a1);
  v7 = sub_27463B6AC();
  v9 = v8;
  objc_allocWithZone(MEMORY[0x277D7C788]);
  v10 = v6;
  sub_27448E7D0(a2, v15);
  v11 = v5;
  v12 = sub_2744A4A84(v5, v7, v9);
  v13 = *(a2 + 32);
  v15[0] = v12;
  v13(v15);

  return sub_27448E808(a2);
}

uint64_t sub_27448DCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27448E840();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_27448DD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27448E840();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_27448DD6C()
{
  sub_27448E840();
  sub_274639D9C();
  __break(1u);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}