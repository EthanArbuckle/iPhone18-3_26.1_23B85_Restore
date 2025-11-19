uint64_t sub_20B875AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 272) = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_bookmark;
  v9 = sub_20C138034();
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_workoutDetail;
  v11 = sub_20C135AE4();
  (*(*(v11 - 8) + 56))(v4 + v10, 1, 1, v11);
  *(v4 + OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_upNextQueueItems) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v13, v4 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v13, v4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(v13, v4 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(v13, v4 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v4 + 16) = v13[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v13, v4 + 152);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + 192) = sub_20C13A914();
  *(v4 + 240) = a2;
  *(v4 + 248) = a3;
  *(v4 + 256) = a4;
  return v4;
}

uint64_t objectdestroy_18Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t sub_20B875E48(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v3 + v6, v7);
}

uint64_t sub_20B875EFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B876074(void *a1)
{
  *(v1 + OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_upNextQueueItems) = *a1;
}

uint64_t sub_20B8760D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void SessionViewController.playerViewController(_:willTransitionToVisibilityOfPlaybackControls:with:)(uint64_t a1, char a2, void *a3)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v5;
  v8[4] = sub_20B8764FC;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_20B7B548C;
  v8[3] = &block_descriptor_29;
  v7 = _Block_copy(v8);

  [a3 addCoordinatedAnimations:v7 completion:0];
  _Block_release(v7);
}

void sub_20B8762C4(char a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13B574();
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a1 & 1;
    _os_log_impl(&dword_20B517000, v6, v7, "player willTransitionToVisibilityOfPlaybackControls: %{BOOL}d", v8, 8u);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;

    swift_unknownObjectRetain();

    sub_20B6776DC((a1 & 1) == 0);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
    v13 = v11;
    v14 = *(v11 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);

    ObjectType = swift_getObjectType();
    (*(v12 + 240))(a1 & 1, ObjectType, v12);
  }
}

uint64_t sub_20B87664C(void *a1)
{
  v2 = [a1 mediaCharacteristic];
  if (qword_27C7607D0 != -1)
  {
    swift_once();
  }

  v3 = sub_20C13C954();
  v5 = v4;
  if (v3 == sub_20C13C954() && v5 == v6)
  {

    return 0;
  }

  else
  {
    v8 = sub_20C13DFF4();

    result = 0;
    if ((v8 & 1) == 0)
    {
      v10 = [a1 mediaCharacteristic];
      if (qword_27C7607D8 != -1)
      {
        swift_once();
      }

      v11 = sub_20C13C954();
      v13 = v12;
      if (v11 == sub_20C13C954() && v13 == v14)
      {

        return 1;
      }

      else
      {
        v15 = sub_20C13DFF4();

        if (v15)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t sub_20B8768AC(void *a1)
{
  v109 = sub_20C13BB84();
  v2 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v4 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13B074();
  v127 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v125 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_20C1391E4();
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v123 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C134C44();
  MEMORY[0x28223BE20](v8 - 8);
  v122 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v10 - 8);
  v121 = &v96 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v12 - 8);
  v120 = &v96 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v14 - 8);
  v118 = &v96 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v16 - 8);
  v115 = &v96 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v18 - 8);
  v114 = &v96 - v19;
  v111 = sub_20C135D24();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v113 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_20C134F74();
  v117 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v112 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v116 = &v96 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v24 - 8);
  v108 = &v96 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v26 - 8);
  v107 = &v96 - v27;
  v28 = sub_20C1333A4();
  v132 = *(v28 - 8);
  v133 = v28;
  MEMORY[0x28223BE20](v28);
  v131 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v30 - 8);
  v105 = &v96 - v31;
  v103 = sub_20C1352E4();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v104 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v33 - 8);
  v106 = &v96 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v96 - v36;
  v38 = sub_20C134F24();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v96 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v96 - v43;
  v45 = sub_20C133654();
  v129 = *(v45 - 8);
  v130 = v45;
  MEMORY[0x28223BE20](v45);
  v128 = &v96 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20B87664C(a1);
  if (v47 == 2)
  {
    sub_20C13B544();
    v48 = a1;
    v49 = sub_20C13BB74();
    v50 = sub_20C13D1F4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v48;
      *v52 = v48;
      v53 = v48;
      _os_log_impl(&dword_20B517000, v49, v50, "Player didSelect mediaPresentationSetting: %@ is not an Audio Focus selection", v51, 0xCu);
      sub_20B64F5CC(v52);
      MEMORY[0x20F2F6A40](v52, -1, -1);
      MEMORY[0x20F2F6A40](v51, -1, -1);
    }

    return (*(v2 + 8))(v4, v109);
  }

  else
  {
    v109 = v5;
    v55 = 0xEF636973754D7375;
    v56 = 0x636F466F69647541;
    v101 = v47;
    v57 = sub_20C135464();
    v59 = v58;
    if (v57 == sub_20C135464() && v59 == v60)
    {

      v100 = 0x636F466F69647541;
    }

    else
    {
      v61 = sub_20C13DFF4();

      if ((v61 & 1) == 0)
      {
        v56 = 0xD000000000000011;
      }

      v100 = v56;
      if ((v61 & 1) == 0)
      {
        v55 = 0x800000020C19DAD0;
      }
    }

    v99 = v55;
    v62 = *MEMORY[0x277D52B38];
    v63 = sub_20C136664();
    v64 = *(v63 - 8);
    (*(v64 + 104))(v44, v62, v63);
    (*(v64 + 56))(v44, 0, 1, v63);
    (*(v39 + 104))(v41, *MEMORY[0x277D51450], v38);
    v65 = sub_20C132C14();
    v66 = *(v65 - 8);
    v97 = *(v66 + 56);
    v98 = v66 + 56;
    v67 = v37;
    v97(v37, 1, 1, v65);
    v68 = sub_20C135ED4();
    v96 = *(*(v68 - 8) + 56);
    v69 = v106;
    v96(v106, 1, 1, v68);
    (*(v102 + 104))(v104, *MEMORY[0x277D51768], v103);
    v70 = sub_20C136E94();
    (*(*(v70 - 8) + 56))(v105, 1, 1, v70);
    v71 = v128;
    sub_20C133644();
    v72 = *MEMORY[0x277D517C0];
    v73 = sub_20C1352F4();
    v74 = *(v73 - 8);
    v75 = v107;
    (*(v74 + 104))(v107, v72, v73);
    (*(v74 + 56))(v75, 0, 1, v73);
    v97(v67, 1, 1, v65);
    v96(v69, 1, 1, v68);
    v76 = sub_20C136914();
    (*(*(v76 - 8) + 56))(v108, 1, 1, v76);
    v77 = v131;
    sub_20C133384();
    v78 = v113;
    (*(v129 + 16))(v113, v71, v130);
    (*(v110 + 104))(v78, *MEMORY[0x277D52120], v111);
    v79 = v132;
    v80 = v114;
    v81 = v77;
    v82 = v133;
    (*(v132 + 16))(v114, v81, v133);
    (*(v79 + 56))(v80, 0, 1, v82);
    v83 = sub_20C135664();
    (*(*(v83 - 8) + 56))(v115, 1, 1, v83);
    v84 = sub_20C135674();
    (*(*(v84 - 8) + 56))(v118, 1, 1, v84);
    v85 = v120;
    sub_20C134F94();
    v86 = sub_20C134FB4();
    (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
    (*(*(v87 - 8) + 56))(v121, 1, 1, v87);
    v88 = sub_20C135F14();
    (*(*(v88 - 8) + 56))(v122, 1, 1, v88);
    v89 = v116;
    sub_20C134F54();
    v90 = v117;
    v91 = v119;
    (*(v117 + 16))(v112, v89, v119);
    v92 = v123;
    sub_20C1391F4();
    swift_getObjectType();
    sub_20B877A50();
    v93 = v126;
    sub_20C13A764();
    v94 = v125;
    sub_20C13B064();
    v95 = v109;
    sub_20C13A764();
    (*(v127 + 8))(v94, v95);
    (*(v124 + 8))(v92, v93);
    (*(v90 + 8))(v89, v91);
    (*(v132 + 8))(v131, v133);
    return (*(v129 + 8))(v128, v130);
  }
}

unint64_t sub_20B877A50()
{
  result = qword_281103B30;
  if (!qword_281103B30)
  {
    sub_20C1391E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281103B30);
  }

  return result;
}

uint64_t sub_20B877AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_20C13C554();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v5;
  (*(a5 + 8))(a3, a5, v10);
  sub_20B5E2E18();
  *v12 = sub_20C13D374();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v13 = sub_20C13C584();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v15 = sub_20B5E2B78();
    swift_unknownObjectRelease();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20B877C48()
{
  v1 = [v0 attributedText];

  return v1;
}

void sub_20B877C80(void *a1)
{
  [v1 setAttributedText_];
}

id sub_20B877DAC(double a1, double a2, double a3, double a4)
{
  v148 = sub_20C13BBC4();
  v147 = *(v148 - 1);
  MEMORY[0x28223BE20](v148);
  v10 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D20);
  MEMORY[0x28223BE20](v11 - 8);
  v144 = &v140 - v12;
  v146 = sub_20C13BC44();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v14 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D30);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v140 - v16;
  v18 = sub_20C13BD14();
  v19 = *(v18 - 8);
  v149 = v18;
  v150 = v19;
  MEMORY[0x28223BE20](v18);
  v151 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_itemInfo;
  v22 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v22 - 8) + 56))(&v4[v21], 1, 1, v22);
  v23 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_iconView;
  type metadata accessor for RoundedIconView();
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v23] = v24;
  v25 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separator;
  v26 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v25] = v26;
  v27 = &v4[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_styleProvider];
  sub_20B879E14(v156);
  v28 = v156[3];
  *(v27 + 2) = v156[2];
  *(v27 + 3) = v28;
  *(v27 + 8) = v157;
  v29 = v156[1];
  *v27 = v156[0];
  *(v27 + 1) = v29;
  *(v27 + 72) = xmmword_20C15E8F0;
  *(v27 + 88) = xmmword_20C15E900;
  *(v27 + 13) = 0x4014000000000000;
  v30 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_subtitleLabel;
  v31 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  [v31 setAdjustsFontForContentSizeCategory_];
  *&v4[v30] = v31;
  v32 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_titleLabel;
  v33 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  [v33 setAdjustsFontForContentSizeCategory_];
  *&v4[v32] = v33;
  v34 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separatorHeightConstraint;
  *&v4[v34] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v35 = type metadata accessor for WeekdayPlannerModalityCell();
  v155.receiver = v4;
  v155.super_class = v35;
  v36 = objc_msgSendSuper2(&v155, sel_initWithFrame_, a1, a2, a3, a4);
  v37 = v151;
  sub_20C13BCC4();
  v38 = &v36[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_styleProvider];
  v39 = *&v36[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_styleProvider];
  sub_20C13BCD4();
  v40 = v149;
  v41 = v150;
  (*(v150 + 16))(v17, v37, v149);
  (*(v41 + 56))(v17, 0, 1, v40);
  v42 = v36;
  MEMORY[0x20F2F4B70](v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D28);
  sub_20C13BC74();
  *(swift_allocObject() + 16) = xmmword_20C14F980;
  v43 = sub_20C13BBF4();
  (*(*(v43 - 8) + 56))(v144, 1, 1, v43);
  v44 = [objc_opt_self() secondaryLabelColor];
  sub_20C13BC34();
  v45 = v147;
  v46 = v148;
  (*(v147 + 104))(v10, *MEMORY[0x277D74A98], v148);
  sub_20C13BC04();
  (*(v45 + 8))(v10, v46);
  (*(v145 + 8))(v14, v146);
  sub_20C13D464();

  v47 = v42;
  [v47 directionalLayoutMargins];
  [v47 setDirectionalLayoutMargins_];
  v48 = [v47 layer];
  [v48 setCornerRadius_];

  v49 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_iconView;
  [*(v47 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_iconView) setBackgroundColor_];
  [*(v47 + v49) setTintColor_];
  v50 = [v47 contentView];
  [v50 addSubview_];

  v51 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_titleLabel;
  [*(v47 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_titleLabel) setFont_];
  [*(v47 + v51) setTextColor_];
  v52 = *(v47 + v51);
  v144 = v51;
  LODWORD(v53) = 1148846080;
  [v52 setContentCompressionResistancePriority:1 forAxis:v53];
  v54 = [v47 &selRef_setMaximumFractionDigits_];
  [v54 addSubview_];

  v55 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_subtitleLabel;
  [*(v47 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_subtitleLabel) setFont_];
  [*(v47 + v55) setTextColor_];
  v56 = *(v47 + v55);
  v57 = v55;
  v145 = v55;
  LODWORD(v58) = 1148846080;
  [v56 setContentCompressionResistancePriority:1 forAxis:v58];
  v59 = [v47 &selRef_setMaximumFractionDigits_];
  [v59 addSubview_];

  v60 = *(v47 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separator);
  v61 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separator;
  v146 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separator;
  [v60 setBackgroundColor_];
  v62 = [v47 &selRef_setMaximumFractionDigits_];
  [v62 addSubview_];

  v63 = [*(v47 + v61) heightAnchor];
  v64 = [v47 window];

  sub_20C138804();
  v66 = v65;

  v67 = [v63 constraintEqualToConstant_];
  v147 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separatorHeightConstraint;
  v68 = *(v47 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separatorHeightConstraint);
  *(v47 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separatorHeightConstraint) = v67;

  v148 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_20C15E910;
  v70 = [*(v47 + v49) leadingAnchor];
  v71 = [v47 &selRef_setMaximumFractionDigits_];
  v72 = [v71 leadingAnchor];

  v73 = [v70 constraintEqualToAnchor:v72 constant:*(v38 + 9)];
  *(v69 + 32) = v73;
  v74 = [*(v47 + v49) widthAnchor];
  v75 = [*(v47 + v49) heightAnchor];
  v76 = [v74 constraintEqualToAnchor_];

  *(v69 + 40) = v76;
  v77 = [*(v47 + v49) topAnchor];
  v78 = [v47 &selRef_setMaximumFractionDigits_];
  v79 = [v78 &selRef_setLineBreakMode_];

  v80 = [v77 constraintEqualToAnchor:v79 constant:*(v38 + 13)];
  *(v69 + 48) = v80;
  v81 = [*(v47 + v49) bottomAnchor];
  v82 = [v47 &selRef_setMaximumFractionDigits_];
  v83 = [v82 &selRef_secondaryLabel + 5];

  v84 = [v81 constraintLessThanOrEqualToAnchor:v83 constant:-*(v38 + 13)];
  type metadata accessor for UILayoutPriority(0);
  v86 = v85;
  v152 = 1065353216;
  v153 = 1148846080;
  v143 = sub_20B7AA590(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v87) = v154;
  [v84 setPriority_];
  *(v69 + 56) = v84;
  v88 = [*(v47 + v49) centerYAnchor];
  v89 = [v47 &selRef_setMaximumFractionDigits_];
  v90 = [v89 centerYAnchor];

  v91 = [v88 constraintEqualToAnchor_];
  v152 = 0x40000000;
  v153 = 1148846080;
  v142 = v86;
  sub_20C13BBA4();
  LODWORD(v92) = v154;
  [v91 setPriority_];
  *(v69 + 64) = v91;
  v93 = [*(v47 + v49) heightAnchor];
  v94 = [v93 constraintEqualToConstant_];

  *(v69 + 72) = v94;
  v95 = v144;
  v96 = [*&v144[v47] leadingAnchor];
  v97 = *(v47 + v49);
  v141 = v49;
  v98 = [v97 trailingAnchor];
  v99 = [v96 constraintEqualToAnchor:v98 constant:*(v38 + 11)];

  *(v69 + 80) = v99;
  v100 = [*&v95[v47] trailingAnchor];
  v101 = [v47 contentView];
  v102 = [v101 trailingAnchor];

  v103 = [v100 constraintEqualToAnchor:v102 constant:-*(v38 + 9)];
  *(v69 + 88) = v103;
  v104 = [*&v95[v47] topAnchor];
  v105 = [*(v47 + v49) topAnchor];
  v106 = [v104 &selRef_passwordEntryCancelledHandler + 6];

  *(v69 + 96) = v106;
  v107 = v145;
  v108 = [*(v47 + v145) leadingAnchor];
  v109 = [*&v95[v47] leadingAnchor];
  v110 = [v108 constraintEqualToAnchor_];

  *(v69 + 104) = v110;
  v111 = [*(v47 + v107) trailingAnchor];
  v112 = [*&v95[v47] trailingAnchor];
  v113 = [v111 constraintEqualToAnchor_];

  *(v69 + 112) = v113;
  v114 = [*(v47 + v107) topAnchor];
  v115 = [*&v95[v47] bottomAnchor];
  v116 = [v114 constraintGreaterThanOrEqualToAnchor_];

  *(v69 + 120) = v116;
  v117 = [*(v47 + v107) bottomAnchor];
  v118 = [v47 contentView];
  v119 = [v118 bottomAnchor];

  v120 = [v117 constraintEqualToAnchor:v119 constant:-*(v38 + 12)];
  *(v69 + 128) = v120;
  v121 = [*(v47 + v107) bottomAnchor];
  v122 = [*(v47 + v141) bottomAnchor];
  v123 = [v121 constraintEqualToAnchor:v122 constant:-*(v38 + 12)];

  v152 = 0x40000000;
  v153 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v124) = v154;
  [v123 setPriority_];
  *(v69 + 136) = v123;
  v125 = v146;
  v126 = [*(v47 + v146) leadingAnchor];
  v127 = [*&v95[v47] leadingAnchor];
  v128 = [v126 constraintEqualToAnchor_];

  *(v69 + 144) = v128;
  v129 = [*(v47 + v125) trailingAnchor];
  v130 = [v47 trailingAnchor];

  v131 = [v129 constraintEqualToAnchor_];
  *(v69 + 152) = v131;
  v132 = [*(v47 + v125) &selRef_secondaryLabel + 5];
  v133 = [v47 contentView];

  v134 = [v133 &selRef_secondaryLabel + 5];
  v135 = [v132 constraintEqualToAnchor_];

  *(v69 + 160) = v135;
  v136 = *(v47 + v147);
  *(v69 + 168) = v136;
  sub_20B5E29D0();
  v137 = v136;
  v138 = sub_20C13CC54();

  [v148 activateConstraints_];

  (*(v150 + 8))(v151, v149);
  return v47;
}

id sub_20B8792CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeekdayPlannerModalityCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WeekdayPlannerModalityCell()
{
  result = qword_281101330;
  if (!qword_281101330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B879468()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B879524(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_20B87956C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20B8795D8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B879624@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B87967C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_20B8796E0(uint64_t a1, void *a2)
{
  sub_20C1380F4();
  v3 = sub_20C138104();
  v4 = sub_20C138104();
  [objc_msgSend(a2 container)];
  v6 = v5;
  swift_unknownObjectRelease();
  v7 = 48.0;
  if (v3 == v4)
  {
    v7 = 72.0;
  }

  return v6 - v7;
}

void sub_20B879778(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v51 - v9;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x42)
  {
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = *(v11 + 24);
    v14 = *(v11 + 32);
    v15 = *(v11 + 40);
    if (v15 == 2)
    {
      v16 = *(v11 + 41);
      v17 = *&v1[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_iconView];
      v18 = v13;
      v55 = v14;
      sub_20B9C7E94(v12);
      v19 = sub_20C13C914();

      v20 = [objc_opt_self() smm:v19 systemImageNamed:?];

      v21 = [v20 imageWithRenderingMode_];
      [*(v17 + OBJC_IVAR____TtC9SeymourUI15RoundedIconView_imageView) setImage_];

      [*&v1[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_titleLabel] setAttributedText_];
      [*&v1[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_subtitleLabel] setAttributedText_];
      v22 = [v1 layer];
      [v22 setMaskedCorners_];

      if (v16)
      {
        v23 = v16 == 3;
      }

      else
      {
        v23 = 1;
      }

      v24 = !v23;
      [*&v1[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separator] setHidden_];

      v25 = v55;
    }

    else
    {
      v55 = v3;
      sub_20C13B534();
      sub_20B7C3220(v12, v13, v14, v15);
      v39 = v1;
      v40 = sub_20C13BB74();
      v41 = sub_20C13D1D4();

      sub_20B7C3288(v12, v13, v14, v15);
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = v40;
        v43 = v52;
        v54 = swift_slowAlloc();
        v58 = v54;
        *v42 = 138543874;
        *(v42 + 4) = v39;
        *v43 = v39;
        *(v42 + 12) = 2160;
        *(v42 + 14) = 1752392040;
        *(v42 + 22) = 2080;
        v56[0] = v12;
        v56[1] = v13;
        v56[2] = v14;
        v57 = v15;
        v44 = sub_20B879DC0();
        v45 = v39;
        v46 = MEMORY[0x20F2EFA40](&type metadata for WeekdayPlannerItem, v44);
        v48 = sub_20B51E694(v46, v47, &v58);

        *(v42 + 24) = v48;
        v40 = v53;
        _os_log_impl(&dword_20B517000, v53, v41, "Attempted to configure %{public}@ with weekday planner item: %{mask.hash}s", v42, 0x20u);
        v49 = v52;
        sub_20B520158(v52, &unk_27C762E30);
        MEMORY[0x20F2F6A40](v49, -1, -1);
        v50 = v54;
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x20F2F6A40](v50, -1, -1);
        MEMORY[0x20F2F6A40](v42, -1, -1);
      }

      (*(v4 + 8))(v10, v55);
    }
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_titleLabel] setAttributedText_];
    [*&v1[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_subtitleLabel] setAttributedText_];
    [*(*&v1[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_iconView] + OBJC_IVAR____TtC9SeymourUI15RoundedIconView_imageView) setImage_];
    v26 = [v1 layer];
    [v26 setMaskedCorners_];

    sub_20C13B534();

    v27 = v1;
    v28 = sub_20C13BB74();
    v29 = sub_20C13D1D4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v55 = v3;
      v56[0] = v32;
      v33 = v32;
      *v30 = 138543874;
      *(v30 + 4) = v27;
      *v31 = v27;
      *(v30 + 12) = 2160;
      *(v30 + 14) = 1752392040;
      *(v30 + 22) = 2080;
      v58 = a1;
      v34 = sub_20B5F66D0();
      v35 = v27;
      v36 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v34);
      v38 = sub_20B51E694(v36, v37, v56);

      *(v30 + 24) = v38;
      _os_log_impl(&dword_20B517000, v28, v29, "Attempted to configure %{public}@ with item: %{mask.hash}s", v30, 0x20u);
      sub_20B520158(v31, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x20F2F6A40](v33, -1, -1);
      MEMORY[0x20F2F6A40](v30, -1, -1);

      (*(v4 + 8))(v6, v55);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }
}

unint64_t sub_20B879DC0()
{
  result = qword_27C766CB0;
  if (!qword_27C766CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766CB0);
  }

  return result;
}

id sub_20B879E14@<X0>(void *a1@<X8>)
{
  if (qword_27C760708 != -1)
  {
    swift_once();
  }

  v2 = qword_27C760710;
  v31 = qword_27C79A1B0;
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_27C79A1B8;
  v4 = objc_opt_self();
  v30 = v3;
  v29 = [v4 systemGray4Color];
  v28 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v27 = [v4 separatorColor];
  v5 = *MEMORY[0x277D769D0];
  v6 = objc_opt_self();
  v7 = [v6 preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:0];
  v8 = [v7 fontDescriptorWithSymbolicTraits_];
  if (v8)
  {
    v9 = v8;

    v7 = v9;
  }

  v10 = objc_opt_self();
  v26 = [v10 fontWithDescriptor:v7 size:0.0];

  v25 = [v4 secondaryLabelColor];
  v11 = *MEMORY[0x277D74420];
  v12 = [v6 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v14 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v15 = swift_initStackObject();
  v16 = MEMORY[0x277D74430];
  *(v15 + 16) = xmmword_20C14F980;
  v17 = *v16;
  *(v15 + 32) = *v16;
  *(v15 + 40) = v11;
  v18 = v14;
  v19 = v17;
  v20 = sub_20B6B134C(v15);
  swift_setDeallocating();
  sub_20B520158(v15 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v20;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B7AA590(&qword_27C7618A0, type metadata accessor for AttributeName);
  v21 = sub_20C13C744();

  v22 = [v12 fontDescriptorByAddingAttributes_];

  v23 = [v10 fontWithDescriptor:v22 size:0.0];
  result = [v4 whiteColor];
  *a1 = v31;
  a1[1] = v30;
  a1[2] = v29;
  a1[3] = v28;
  a1[4] = v27;
  a1[5] = v26;
  a1[6] = v25;
  a1[7] = v23;
  a1[8] = result;
  return result;
}

void sub_20B87A234()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_iconView;
  type metadata accessor for RoundedIconView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separator;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v7 = v0 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_styleProvider;
  sub_20B879E14(v15);
  v8 = v15[3];
  *(v7 + 32) = v15[2];
  *(v7 + 48) = v8;
  *(v7 + 64) = v16;
  v9 = v15[1];
  *v7 = v15[0];
  *(v7 + 16) = v9;
  *(v7 + 72) = xmmword_20C15E8F0;
  *(v7 + 88) = xmmword_20C15E900;
  *(v7 + 104) = 0x4014000000000000;
  v10 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_subtitleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  *(v0 + v10) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_titleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAdjustsFontForContentSizeCategory_];
  *(v0 + v12) = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separatorHeightConstraint;
  *(v0 + v14) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B87A470(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_20B87A4B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_20B87A518(uint64_t *a1, void *a2)
{
  v2 = *a1;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    sub_20B51C88C(0, &qword_27C7654B0);
    return sub_20C13D5F4() & 1;
  }

  return result;
}

uint64_t sub_20B87A588()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_state;
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_state);
  if (v3)
  {
    sub_20B51CC64(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator, &v21);
    v4 = v23;
    __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
    v5 = *(v4 + 24);
    v6 = v3;
    v5();

    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  sub_20B583E6C(v0 + 16);
  v7 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_identifier;
  v8 = sub_20C132EE4();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);

  sub_20B880DDC(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 144);
  v29 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 128);
  v30 = v9;
  v31 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 160);
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 80);
  v25 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 64);
  v26 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 112);
  v27 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 96);
  v28 = v11;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 16);
  v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row);
  v22 = v12;
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 48);
  v23 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 32);
  v24 = v13;
  sub_20B520158(&v21, &qword_27C762340);
  sub_20B520158(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_serviceSubscription, &unk_27C762390);
  v14 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_content;
  v15 = sub_20C135EB4();
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  v16 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_descriptor;
  v17 = sub_20C135E14();
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_localImageLoader);
  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_subscriptionCache);

  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_configurationClient);
  v18 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf__marketingBannerEnabled;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  (*(*(v19 - 8) + 8))(v1 + v18, v19);
  return v1;
}

uint64_t sub_20B87A85C()
{
  sub_20B87A588();

  return swift_deallocClassInstance();
}

void sub_20B87A8DC()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MarketingHeaderBannerShelf.BannerSource(319);
    if (v1 <= 0x3F)
    {
      sub_20B87D5A8();
      if (v2 <= 0x3F)
      {
        sub_20C135EB4();
        if (v3 <= 0x3F)
        {
          sub_20C135E14();
          if (v4 <= 0x3F)
          {
            sub_20B52432C();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_20B87AAF0(char *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v74 = a2;
  v75 = a1;
  v8 = sub_20C13BB84();
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x28223BE20](v8);
  v67 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_20C135E74();
  MEMORY[0x28223BE20](v72);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C137124();
  v71 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  v18 = sub_20C1362B4();
  v70 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v64 - v25;
  v27 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource;
  swift_beginAccess();
  v73 = v5;
  sub_20B880D74(v5 + v27, v26, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30);
  v29 = *(*(v28 - 8) + 48);
  v76 = v26;
  v30 = v29(v26, 2, v28);
  if (v30)
  {
    v31 = v73;
    v32 = v75;
    if (v30 != 1)
    {
      if (sub_20C135D64() == v32 && v33 == v74)
      {
      }

      else
      {
        v57 = sub_20C13DFF4();

        if ((v57 & 1) == 0)
        {
          return sub_20B880DDC(v76, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
        }
      }

      if ((*(v31 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerVideoPreviewDurationThresholdInSeconds + 8) & 1) == 0 && *(v31 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerVideoPreviewDurationThresholdInSeconds) <= a3)
      {
        v58 = *(v31 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator + 24);
        v59 = *(v31 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator + 32);
        __swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator), v58);
        (*(v59 + 72))(v32, v74, v58, v59);
      }
    }
  }

  else
  {
    v34 = v71;
    v64 = v14;
    v65 = v12;
    sub_20B880D74(v76, v23, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);

    v35 = v70;
    v36 = *(v70 + 32);
    v66 = v18;
    v36(v20, v23, v18);
    if (sub_20C136234() == v75 && v37 == v74)
    {

      v38 = v11;
    }

    else
    {
      v39 = sub_20C13DFF4();

      v38 = v11;
      if ((v39 & 1) == 0)
      {
        (*(v35 + 8))(v20, v66);
        return sub_20B880DDC(v76, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
      }
    }

    sub_20C136284();
    v40 = v35;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v75 = v20;
      v41 = v34;
      v42 = a3 / a4;
      v43 = v17;
      v44 = v65;
      (*(v34 + 32))(v17, v38, v65);
      sub_20C137104();
      v45 = v66;
      if (v46 <= v42)
      {
        v60 = *(v73 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator + 32);
        __swift_project_boxed_opaque_existential_1((v73 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator), *(v73 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator + 24));
        v61 = sub_20C1370D4();
        (*(v60 + 40))(v61);

        (*(v34 + 8))(v43, v44);
        (*(v40 + 8))(v75, v45);
      }

      else
      {
        v47 = v17;
        v48 = v67;
        sub_20C13B424();
        v49 = v64;
        (*(v41 + 16))(v64, v17, v44);
        v50 = sub_20C13BB74();
        v51 = sub_20C13D1F4();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = v41;
          v53 = swift_slowAlloc();
          *v53 = 134349312;
          *(v53 + 4) = v42;
          *(v53 + 12) = 2050;
          sub_20C137104();
          v55 = v54;
          v56 = *(v52 + 8);
          v56(v49, v44);
          *(v53 + 14) = v55;
          _os_log_impl(&dword_20B517000, v50, v51, "Banner video was not watched long enough to report event: %{public}f %{public}f", v53, 0x16u);
          MEMORY[0x20F2F6A40](v53, -1, -1);

          (*(v68 + 8))(v48, v69);
          v56(v47, v44);
        }

        else
        {

          v62 = *(v41 + 8);
          v62(v49, v44);
          (*(v68 + 8))(v48, v69);
          v62(v47, v44);
        }

        (*(v40 + 8))(v75, v66);
      }
    }

    else
    {
      (*(v35 + 8))(v20, v66);
      sub_20B880DDC(v38, MEMORY[0x277D52358]);
    }
  }

  return sub_20B880DDC(v76, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
}

uint64_t sub_20B87B268(uint64_t a1)
{
  v2 = v1;
  v79 = a1;
  v3 = sub_20C132C14();
  v68 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v70 = v6;
  v71 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = &v65 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v69 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v65 - v11;
  v73 = v12;
  MEMORY[0x28223BE20](v13);
  v77 = &v65 - v14;
  v15 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C1362B4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v66 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v65 - v22;
  v24 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource;
  swift_beginAccess();
  sub_20B880D74(v2 + v24, v17, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30);
  v26 = (*(*(v25 - 8) + 48))(v17, 2, v25);
  v67 = v18;
  if (v26)
  {
    sub_20B880DDC(v17, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
    v27 = v79;
  }

  else
  {

    (*(v19 + 32))(v23, v17, v18);
    v27 = v79;
    v28 = sub_20C136254();
    result = (*(v19 + 8))(v23, v18);
    if (v28)
    {
      return result;
    }
  }

  v65 = v2;
  *(v2 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementImageLoading) = 1;
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_localImageLoader), *(v2 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_localImageLoader + 24));
  v30 = v3;
  v31 = v27;
  sub_20C136294();
  v32 = sub_20C132BD4();
  v34 = v33;
  (*(v68 + 8))(v5, v30);
  v35 = v69;
  v36 = off_2822D4BB8[0];
  type metadata accessor for LocalImageLoader();
  v36(v32, v34);

  v37 = swift_allocObject();
  swift_weakInit();
  v38 = v66;
  v39 = v31;
  v40 = v67;
  (*(v19 + 16))(v66, v39, v67);
  v41 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v37;
  (*(v19 + 32))(v42 + v41, v38, v40);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_20B88110C;
  *(v43 + 24) = v42;
  v44 = v71;
  v45 = v72;
  v46 = v80;
  v47 = v74;
  (*(v72 + 16))(v71, v80, v74);
  v48 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v49 = (v70 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  (*(v45 + 32))(v50 + v48, v44, v47);
  v51 = (v50 + v49);
  *v51 = sub_20B5F67A4;
  v51[1] = v43;
  v52 = v76;
  sub_20C137C94();
  (*(v45 + 8))(v46, v47);
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20B8811B4;
  *(v54 + 24) = v53;
  v55 = v75;
  v56 = v78;
  (*(v35 + 16))(v75, v52, v78);
  v57 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v58 = (v73 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  (*(v35 + 32))(v59 + v57, v55, v56);
  v60 = (v59 + v58);
  *v60 = sub_20B5F7764;
  v60[1] = v54;
  v61 = v77;
  sub_20C137C94();
  v62 = *(v35 + 8);
  v62(v52, v56);
  v63 = sub_20C137CB4();
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  v63(sub_20B5DF6DC, v64);

  return (v62)(v61, v56);
}

uint64_t sub_20B87BA8C(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementImageLoading) = 0;
  }

  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30);
    v13 = *(v12 + 48);
    v14 = sub_20C1362B4();
    (*(*(v14 - 8) + 16))(v7, a3, v14);
    *&v7[v13] = v8;
    (*(*(v12 - 8) + 56))(v7, 0, 2, v12);
    v15 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource;
    swift_beginAccess();
    v16 = v8;
    sub_20B880FE8(v7, v11 + v15);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B87BDD4();
  }

  return result;
}

uint64_t sub_20B87BC78()
{
  v0 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementImageLoading) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30);
    (*(*(v6 - 8) + 56))(v2, 2, 2, v6);
    v7 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource;
    swift_beginAccess();
    sub_20B880FE8(v2, v5 + v7);
    swift_endAccess();
    sub_20B87BDD4();
  }

  return result;
}

uint64_t sub_20B87BDD4()
{
  v1 = v0;
  v163 = sub_20C132C14();
  v161 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v164 = &v159 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C13C554();
  v166 = *(v3 - 8);
  v167 = v3;
  MEMORY[0x28223BE20](v3);
  v165 = (&v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v162 = sub_20C1362B4();
  v172 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v159 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v174 = *(v6 - 8);
  v175 = v6;
  MEMORY[0x28223BE20](v6);
  v173 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v169 = &v159 - v9;
  v10 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  MEMORY[0x28223BE20](v10 - 8);
  v168 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C132E94();
  v170 = *(v12 - 1);
  v171 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C135734();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v159 - v20;
  v22 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_serviceSubscription;
  swift_beginAccess();
  v23 = v1 + v22;
  v24 = v1;
  sub_20B52F9E8(v23, v21, &unk_27C762390);
  if ((*(v16 + 48))(v21, 1, v15))
  {
    sub_20B520158(v21, &unk_27C762390);
    goto LABEL_10;
  }

  v26 = v168;
  v25 = v169;
  v27 = v172;
  (*(v16 + 16))(v18, v21, v15);
  sub_20B520158(v21, &unk_27C762390);
  sub_20C132E84();
  v28 = sub_20C135704();
  (*(v170 + 8))(v14, v171);
  result = (*(v16 + 8))(v18, v15);
  if (v28)
  {
    if (*(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementImageLoading))
    {
      return result;
    }

    v30 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource;
    swift_beginAccess();
    sub_20B880D74(v24 + v30, v26, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30);
    v32 = (*(*(v31 - 8) + 48))(v26, 2, v31);
    if (v32)
    {
      if (v32 == 1)
      {
        sub_20C13B424();
        v33 = sub_20C13BB74();
        v34 = sub_20C13D1F4();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_20B517000, v33, v34, "Engagement banner still initializing", v35, 2u);
          MEMORY[0x20F2F6A40](v35, -1, -1);
        }

        return v174[1](v25, v175);
      }

      v94 = (v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_mediaTagStringBuilder);
      __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_mediaTagStringBuilder), *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_mediaTagStringBuilder + 24));
      v95 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_descriptor;
      sub_20C135E04();
      v96 = v24;
      v97 = sub_20C138544();

      v98 = [v97 string];

      v99 = sub_20C13C954();
      v172 = v100;
      v173 = v99;

      __swift_project_boxed_opaque_existential_1(v94, v94[3]);
      sub_20C135E04();
      v171 = sub_20C138544();

      __swift_project_boxed_opaque_existential_1(v94, v94[3]);
      sub_20C135D84();
      v169 = sub_20C138544();

      v168 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
      v175 = sub_20C135E04();
      v174 = sub_20C135D84();
      sub_20C135E84();
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F20);
      v102 = swift_allocBox();
      v104 = v103;
      v105 = v101[16];
      v106 = (v103 + v101[20]);
      v162 = v101[24];
      v170 = v95;
      *v103 = sub_20C135D64();
      v104[1] = v107;
      sub_20C135E94();
      *(v104 + v105) = sub_20C135D74();
      v108 = v171;
      v110 = v168;
      v109 = v169;
      *v106 = v171;
      v106[1] = v109;
      v111 = MEMORY[0x277D84F90];
      v113 = v174;
      v112 = v175;
      v106[2] = v110;
      v106[3] = v112;
      v106[4] = v113;
      v106[5] = v111;
      v114 = v161;
      (*(v161 + 16))(v104 + v162, v164, v163);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
      v115 = swift_allocObject();
      *(v115 + 16) = xmmword_20C14F980;
      *(v115 + 32) = v102 | 0x4000000000000002;
      v162 = v102;

      v171 = v108;
      v169 = v109;
      v116 = v110;
      v117 = v96;
      v118 = v116;

      v119 = MEMORY[0x277D84F90];

      v120 = sub_20C135D64();
      v180 = 0uLL;
      LOBYTE(v181) = 1;
      *(&v181 + 1) = v179[0];
      DWORD1(v181) = *(v179 + 3);
      *(&v181 + 1) = 0;
      *&v182 = 0;
      WORD4(v182) = 384;
      *(&v182 + 10) = v177;
      HIWORD(v182) = v178;
      v183 = 0uLL;
      *&v184 = v120;
      *(&v184 + 1) = v121;
      *&v185 = v173;
      *(&v185 + 1) = v172;
      LOBYTE(v186) = 0;
      *(&v186 + 1) = *v176;
      DWORD1(v186) = *&v176[3];
      *(&v186 + 1) = v115;
      *&v187[0] = v119;
      *(v187 + 8) = 0u;
      *(&v187[1] + 8) = 0u;
      *(&v187[2] + 1) = 0;
      v188 = 2;
      nullsub_1(&v180);
      v122 = v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row;
      v123 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 144);
      v197 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 128);
      v198 = v123;
      v199 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 160);
      v124 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 80);
      v193 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 64);
      v194 = v124;
      v125 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 112);
      v195 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 96);
      v196 = v125;
      v126 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 16);
      v189 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row);
      v190 = v126;
      v127 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 48);
      v191 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 32);
      v192 = v127;
      v128 = v187[2];
      *(v122 + 128) = v187[1];
      *(v122 + 144) = v128;
      *(v122 + 160) = v188;
      v129 = v185;
      *(v122 + 64) = v184;
      *(v122 + 80) = v129;
      v130 = v187[0];
      *(v122 + 96) = v186;
      *(v122 + 112) = v130;
      v131 = v181;
      *v122 = v180;
      *(v122 + 16) = v131;
      v132 = v183;
      *(v122 + 32) = v182;
      *(v122 + 48) = v132;
      sub_20B520158(&v189, &qword_27C762340);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v134 = v118;
        if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
        {
          v148 = Strong;
          v149 = sub_20B61DA18(v96, Strong);
          if (v150)
          {
            v152 = v149;
            v153 = v150;
            v173 = v151;
            sub_20B51C88C(0, &qword_281100530);
            v154 = sub_20C13D374();
            v156 = v165;
            v155 = v166;
            *v165 = v154;
            v157 = v167;
            (*(v155 + 104))(v156, *MEMORY[0x277D85200], v167);
            v158 = sub_20C13C584();
            result = (*(v155 + 8))(v156, v157);
            if ((v158 & 1) == 0)
            {
LABEL_43:
              __break(1u);
              return result;
            }

            sub_20B620F14(v152, v153, v173, v117, 1, v148);

            swift_unknownObjectRelease();

            v137 = v163;
            v136 = v164;
            v114 = v161;
            return (*(v114 + 8))(v136, v137);
          }

          sub_20C0C2D50(0);

          swift_unknownObjectRelease();
          v114 = v161;
LABEL_31:
          v137 = v163;
          v136 = v164;
          return (*(v114 + 8))(v136, v137);
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      goto LABEL_31;
    }

    v63 = *(v26 + *(v31 + 48));
    v64 = v160;
    (*(v27 + 32))(v160, v26, v162);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D58);
    v66 = swift_allocBox();
    v68 = v67;
    v69 = v65[12];
    v70 = v65[16];
    v175 = v24;
    v71 = (v67 + v70);
    v72 = (v67 + v65[20]);
    sub_20C136284();
    *(v68 + v69) = v63;
    v73 = v63;
    *v71 = sub_20C1362A4();
    v71[1] = v74;
    v75 = v64;
    v76 = v175;
    *v72 = sub_20C136264();
    v72[1] = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_20C14F980;
    *(v78 + 32) = v66 | 0x2000000000000000;

    v79 = sub_20C135D64();
    v180 = 0uLL;
    LOBYTE(v181) = 1;
    *(&v181 + 1) = v179[0];
    DWORD1(v181) = *(v179 + 3);
    *(&v181 + 1) = 0;
    *&v182 = 0;
    WORD4(v182) = 384;
    *(&v182 + 10) = v177;
    HIWORD(v182) = v178;
    v183 = 0uLL;
    *&v184 = v79;
    *(&v184 + 1) = v80;
    v185 = 0uLL;
    LOBYTE(v186) = 0;
    *(&v186 + 1) = *v176;
    DWORD1(v186) = *&v176[3];
    *(&v186 + 1) = v78;
    *&v187[0] = MEMORY[0x277D84F90];
    *(v187 + 8) = 0u;
    *(&v187[1] + 8) = 0u;
    *(&v187[2] + 1) = 0;
    v188 = 2;
    nullsub_1(&v180);
    v81 = v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row;
    v82 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 144);
    v197 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 128);
    v198 = v82;
    v199 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 160);
    v83 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 80);
    v193 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 64);
    v194 = v83;
    v84 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 112);
    v195 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 96);
    v196 = v84;
    v85 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 16);
    v189 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row);
    v190 = v85;
    v86 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 48);
    v191 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 32);
    v192 = v86;
    v87 = v187[2];
    *(v81 + 128) = v187[1];
    *(v81 + 144) = v87;
    *(v81 + 160) = v188;
    v88 = v185;
    *(v81 + 64) = v184;
    *(v81 + 80) = v88;
    v89 = v187[0];
    *(v81 + 96) = v186;
    *(v81 + 112) = v89;
    v90 = v181;
    *v81 = v180;
    *(v81 + 16) = v90;
    v91 = v183;
    *(v81 + 32) = v182;
    *(v81 + 48) = v91;
    sub_20B520158(&v189, &qword_27C762340);
    v92 = swift_unknownObjectWeakLoadStrong();
    if (v92)
    {
      v93 = v27;
      if (*&v92[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v174 = v92;
        v138 = sub_20B61DA18(v76, v92);
        if (v139)
        {
          v141 = v139;
          v142 = v140;
          v173 = v138;
          sub_20B51C88C(0, &qword_281100530);
          v143 = sub_20C13D374();
          v145 = v165;
          v144 = v166;
          *v165 = v143;
          v146 = v167;
          (*(v144 + 104))(v145, *MEMORY[0x277D85200], v167);
          v147 = sub_20C13C584();
          result = (*(v144 + 8))(v145, v146);
          if ((v147 & 1) == 0)
          {
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          sub_20B620F14(v173, v141, v142, v175, 1, v174);

          swift_unknownObjectRelease();

          v135 = v162;
          v93 = v27;
          v75 = v160;
          return (*(v93 + 8))(v75, v135);
        }

        sub_20C0C2D50(0);

        swift_unknownObjectRelease();
      }
    }

    else
    {

      v93 = v27;
    }

    v135 = v162;
    return (*(v93 + 8))(v75, v135);
  }

LABEL_10:
  v36 = v173;
  sub_20C13B424();
  v37 = sub_20C13BB74();
  v38 = sub_20C13D1F4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_20B517000, v37, v38, "Hiding engagement banner, user not subscribed", v39, 2u);
    MEMORY[0x20F2F6A40](v39, -1, -1);
  }

  v174[1](v36, v175);
  v180 = 0uLL;
  LOBYTE(v181) = 1;
  *(&v181 + 1) = 0;
  *&v182 = 0;
  WORD4(v182) = 128;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  LOBYTE(v186) = 0;
  *(&v186 + 1) = MEMORY[0x277D84F90];
  *&v187[0] = MEMORY[0x277D84F90];
  *(v187 + 8) = 0u;
  *(&v187[1] + 8) = 0u;
  *(&v187[2] + 1) = 0;
  v188 = 2;
  nullsub_1(&v180);
  v40 = v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row;
  v41 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 144);
  v197 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 128);
  v198 = v41;
  v199 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 160);
  v42 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 80);
  v193 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 64);
  v194 = v42;
  v43 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 112);
  v195 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 96);
  v196 = v43;
  v44 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 16);
  v189 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row);
  v190 = v44;
  v45 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 48);
  v191 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 32);
  v192 = v45;
  v46 = v187[2];
  *(v40 + 128) = v187[1];
  *(v40 + 144) = v46;
  *(v40 + 160) = v188;
  v47 = v185;
  *(v40 + 64) = v184;
  *(v40 + 80) = v47;
  v48 = v187[0];
  *(v40 + 96) = v186;
  *(v40 + 112) = v48;
  v49 = v181;
  *v40 = v180;
  *(v40 + 16) = v49;
  v50 = v183;
  *(v40 + 32) = v182;
  *(v40 + 48) = v50;
  sub_20B520158(&v189, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      return swift_unknownObjectRelease();
    }

    v51 = result;
    v52 = sub_20B61DA18(v24, result);
    if (!v53)
    {
      sub_20C0C2D50(0);
      return swift_unknownObjectRelease();
    }

    v55 = v52;
    v56 = v53;
    v57 = v54;
    sub_20B51C88C(0, &qword_281100530);
    v58 = sub_20C13D374();
    v60 = v165;
    v59 = v166;
    *v165 = v58;
    v61 = v167;
    (*(v59 + 104))(v60, *MEMORY[0x277D85200], v167);
    v62 = sub_20C13C584();
    result = (*(v59 + 8))(v60, v61);
    if (v62)
    {
      sub_20B620F14(v55, v56, v57, v24, 1, v51);

      return swift_unknownObjectRelease();
    }

    __break(1u);
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_20B87CFA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v43 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v51 = *(v47 - 8);
  v9 = v51[8];
  MEMORY[0x28223BE20](v47);
  v46 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = v43 - v11;
  MEMORY[0x28223BE20](v12);
  v50 = v43 - v13;
  MEMORY[0x28223BE20](v14);
  v48 = v43 - v15;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_subscriptionCache), *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_subscriptionCache + 24));
  sub_20C1392E4();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20B88104C;
  *(v16 + 24) = v1;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20B881054;
  *(v17 + 24) = v16;
  (*(v3 + 16))(v5, v8, v2);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  (*(v3 + 32))(v19 + v18, v5, v2);
  v20 = (v19 + ((v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_20B5D9E70;
  v20[1] = v17;
  v43[1] = v1;

  v21 = v49;
  sub_20C137C94();
  (*(v3 + 8))(v8, v2);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_20B881098;
  *(v22 + 24) = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20B622D08;
  *(v23 + 24) = v22;
  v24 = v51;
  v45 = v51[2];
  v26 = v46;
  v25 = v47;
  v45(v46, v21, v47);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v44 = v28;
  v29 = (v9 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v27[4];
  v31(v30 + v28, v26, v25);
  v32 = (v30 + v29);
  *v32 = sub_20B5DF3D4;
  v32[1] = v23;

  v33 = v50;
  sub_20C137C94();
  v34 = v51[1];
  ++v51;
  v35 = v49;
  v34(v49, v25);
  v36 = swift_allocObject();
  *(v36 + 16) = sub_20B87D918;
  *(v36 + 24) = 0;
  v45(v35, v33, v25);
  v37 = swift_allocObject();
  v31(v37 + v44, v35, v25);
  v38 = (v37 + v29);
  *v38 = sub_20B5DF204;
  v38[1] = v36;
  v39 = v48;
  sub_20C137C94();
  v34(v50, v25);
  v40 = sub_20C137CB4();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  v40(sub_20B5DF6DC, v41);

  return (v34)(v39, v25);
}

void sub_20B87D5A8()
{
  if (!qword_27C762130)
  {
    sub_20C135734();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C762130);
    }
  }
}

uint64_t sub_20B87D600(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B87D650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_20B87D6A4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_20B87D6BC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_20B87D714()
{
  sub_20B87D76C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_20B87D76C()
{
  if (!qword_27C766D48)
  {
    sub_20C1362B4();
    sub_20B51C88C(255, &qword_27C7626E8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C766D48);
    }
  }
}

uint64_t sub_20B87D7EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_20C135734();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_serviceSubscription;
  swift_beginAccess();
  sub_20B88109C(v6, a2 + v9);
  return swift_endAccess();
}

uint64_t sub_20B87D918(void *a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  v7 = a1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1B4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = MEMORY[0x20F2F5850](v17[3], v17[4]);
    v15 = sub_20B51E694(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20B517000, v8, v9, "[MarketingHeaderBanner] error: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_20B87DAF4()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v60 = *(v2 - 8);
  v61 = v2;
  MEMORY[0x28223BE20](v2);
  v64 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v62 = *(v4 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v63 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  if (!*(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_state))
  {
    v17 = v1;
    v18 = v64;
    v54 = v5;
    v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_state;
    v58 = v8;
    v59 = v4;
    v56 = v9;
    v19 = v17;
    (*(v13 + 16))(v16, v17 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf__marketingBannerEnabled, v12, v14);
    sub_20C13A344();
    (*(v13 + 8))(v16, v12);
    if (v65[0] == 1)
    {
      sub_20C135EA4();
      v20 = sub_20C135EC4();
      v22 = v21;
      v23 = type metadata accessor for EngagementMessageTarget();
      v24 = objc_allocWithZone(v23);
      v25 = &v24[OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_onBannerUpdate];
      *v25 = 0;
      *(v25 + 1) = 0;
      v26 = &v24[OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_onBannerRemoval];
      *v26 = 0;
      *(v26 + 1) = 0;
      v27 = &v24[OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_identifier];
      *v27 = v20;
      v27[1] = v22;
      v66.receiver = v24;
      v66.super_class = v23;
      v28 = objc_msgSendSuper2(&v66, sel_init);
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = &v28[OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_onBannerUpdate];
      v31 = v28;
      v32 = *&v28[OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_onBannerUpdate];
      *v30 = sub_20B880EA4;
      v30[1] = v29;

      sub_20B583ECC(v32);

      v33 = swift_allocObject();
      swift_weakInit();
      v34 = &v31[OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_onBannerRemoval];
      v64 = v31;
      v35 = *&v31[OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_onBannerRemoval];
      *v34 = sub_20B880EAC;
      v34[1] = v33;

      sub_20B583ECC(v35);

      v36 = *(v19 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator + 24);
      v37 = *(v19 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator + 32);
      __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator), v36);
      (*(v37 + 16))(v31, v36, v37);
      swift_getObjectType();
      swift_allocObject();
      swift_weakInit();
      sub_20B880EBC();
      sub_20C13A784();

      __swift_destroy_boxed_opaque_existential_1(v65);
      sub_20C13B0D4();
      swift_allocObject();
      swift_weakInit();
      sub_20C13A784();

      __swift_destroy_boxed_opaque_existential_1(v65);
      sub_20C139454();
      swift_allocObject();
      swift_weakInit();
      sub_20B880F2C(&unk_281103B10, MEMORY[0x277D543B0]);
      sub_20C13A784();

      __swift_destroy_boxed_opaque_existential_1(v65);
      __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_configurationClient), *(v19 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_configurationClient + 24));
      v38 = v58;
      sub_20C1398E4();
      v39 = swift_allocObject();
      *(v39 + 16) = sub_20B880F74;
      *(v39 + 24) = v19;
      v40 = v62;
      v41 = v55;
      v42 = v59;
      (*(v62 + 16))(v55, v38, v59);
      v43 = (*(v40 + 80) + 16) & ~*(v40 + 80);
      v44 = (v54 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
      v45 = swift_allocObject();
      (*(v40 + 32))(v45 + v43, v41, v42);
      v46 = (v45 + v44);
      *v46 = sub_20B58D058;
      v46[1] = v39;

      sub_20C137C94();
      (*(v40 + 8))(v38, v42);
      v47 = v56;
      v48 = sub_20C137CB4();
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      *(v49 + 24) = 0;
      v48(sub_20B52347C, v49);

      (*(v63 + 8))(v11, v47);
      sub_20B87CFA8();
      v50 = *(v19 + v57);
      *(v19 + v57) = v64;
    }

    else
    {
      sub_20C13B424();
      v51 = sub_20C13BB74();
      v52 = sub_20C13D1D4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        MEMORY[0x20F2F6A40](v53, -1, -1);
      }

      (*(v60 + 8))(v18, v61);
    }
  }
}

uint64_t sub_20B87E38C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B87B268(a1);
  }

  return result;
}

uint64_t sub_20B87E3EC()
{
  v0 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30);
    (*(*(v5 - 8) + 56))(v2, 2, 2, v5);
    v6 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource;
    swift_beginAccess();
    sub_20B880FE8(v2, v4 + v6);
    swift_endAccess();
    sub_20B87BDD4();
  }

  return result;
}

uint64_t sub_20B87E50C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B87AAF0(v1, v2, v3, v4);
  }

  return result;
}

uint64_t sub_20B87E590()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B87CFA8();
  }

  return result;
}

uint64_t sub_20B87E5E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B87E660@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 32);
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

uint64_t sub_20B87E754(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C1362B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v15 = &v27 + *(v14 + 56) - v12;
  sub_20B880D74(a1, &v27 - v12, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  sub_20B880D74(a2, v15, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v13, 2, v16);
  if (!v18)
  {
    v28 = v5;
    sub_20B880D74(v13, v10, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
    v19 = *(v16 + 48);
    v20 = *&v10[v19];
    if (!v17(v15, 2, v16))
    {
      v23 = *&v15[v19];
      v24 = v28;
      (*(v28 + 32))(v7, v15, v4);
      v25 = sub_20C136254();
      v26 = *(v24 + 8);
      v26(v10, v4);
      if (v25)
      {
        sub_20B51C88C(0, &qword_27C7654B0);
        v21 = sub_20C13D5F4();

        v26(v7, v4);
        sub_20B880DDC(v13, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
        return v21 & 1;
      }

      v26(v7, v4);

      sub_20B880DDC(v13, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
      goto LABEL_10;
    }

    (*(v28 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v18 != 1)
  {
    if (v17(v15, 2, v16) == 2)
    {
      goto LABEL_8;
    }

LABEL_9:
    sub_20B520158(v13, &qword_27C766D50);
LABEL_10:
    v21 = 0;
    return v21 & 1;
  }

  if (v17(v15, 2, v16) != 1)
  {
    goto LABEL_9;
  }

LABEL_8:
  sub_20B880DDC(v13, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_20B87EB28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0);
  MEMORY[0x28223BE20](v1 - 8);
  v266 = &v228 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v267 = &v228 - v4;
  MEMORY[0x28223BE20](v5);
  v247 = &v228 - v6;
  MEMORY[0x28223BE20](v7);
  v255 = &v228 - v8;
  v265 = sub_20C137124();
  v260 = *(v265 - 8);
  MEMORY[0x28223BE20](v265);
  v258 = &v228 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = type metadata accessor for ShelfMetricAction();
  v270 = *(v277 - 8);
  MEMORY[0x28223BE20](v277);
  v253 = &v228 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v272 = &v228 - v12;
  MEMORY[0x28223BE20](v13);
  v231 = &v228 - v14;
  MEMORY[0x28223BE20](v15);
  v259 = &v228 - v16;
  MEMORY[0x28223BE20](v17);
  v241 = &v228 - v18;
  v240 = type metadata accessor for NavigationRequested();
  MEMORY[0x28223BE20](v240);
  v239 = &v228 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_20C13BB84();
  v245 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v244 = &v228 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = type metadata accessor for NavigationSource();
  v252 = *(v261 - 8);
  MEMORY[0x28223BE20](v261);
  v235 = &v228 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v234 = &v228 - v23;
  MEMORY[0x28223BE20](v24);
  v242 = &v228 - v25;
  MEMORY[0x28223BE20](v26);
  v248 = &v228 - v27;
  v230 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v230);
  v236 = &v228 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v229 = &v228 - v30;
  MEMORY[0x28223BE20](v31);
  v257 = &v228 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767800);
  MEMORY[0x28223BE20](v33 - 8);
  v233 = &v228 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v268 = &v228 - v36;
  v37 = sub_20C132C14();
  v278 = *(v37 - 8);
  v279 = v37;
  MEMORY[0x28223BE20](v37);
  v275 = &v228 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v271 = &v228 - v40;
  MEMORY[0x28223BE20](v41);
  v254 = &v228 - v42;
  MEMORY[0x28223BE20](v43);
  v250 = &v228 - v44;
  MEMORY[0x28223BE20](v45);
  v251 = &v228 - v46;
  MEMORY[0x28223BE20](v47);
  v256 = &v228 - v48;
  v238 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v238);
  v237 = &v228 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v249 = &v228 - v51;
  v263 = sub_20C136DD4();
  v269 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v243 = &v228 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v262 = &v228 - v54;
  v264 = sub_20C135E74();
  MEMORY[0x28223BE20](v264);
  v56 = &v228 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_20C1362B4();
  v273 = *(v57 - 8);
  v274 = v57;
  MEMORY[0x28223BE20](v57);
  v276 = &v228 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  MEMORY[0x28223BE20](v59 - 8);
  v61 = &v228 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v64 = &v228 - v63;
  MEMORY[0x28223BE20](v65);
  v67 = &v228 - v66;
  v68 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource;
  swift_beginAccess();
  sub_20B880D74(v0 + v68, v67, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30);
  v70 = *(v69 - 8);
  (*(v70 + 56))(v64, 1, 2, v69);
  v71 = sub_20B87E754(v67, v64);
  sub_20B880DDC(v64, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  result = sub_20B880DDC(v67, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  if (v71)
  {
    return result;
  }

  sub_20B880D74(v0 + v68, v61, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  v73 = (*(v70 + 48))(v61, 2, v69);
  v232 = v0;
  if (!v73)
  {

    (*(v273 + 32))(v276, v61, v274);
    sub_20C136284();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v109 = v279;
    v110 = v277;
    if (EnumCaseMultiPayload == 1)
    {
      v111 = v279;
      v112 = v260;
      v113 = v258;
      (*(v260 + 32))(v258, v56, v265);
      v275 = sub_20C1355B4();
      v115 = v114;
      v116 = sub_20C136664();
      v117 = v259;
      (*(*(v116 - 8) + 56))(v259, 1, 1, v116);
      v118 = v110[5];
      v119 = *MEMORY[0x277D513F8];
      v120 = sub_20C134F24();
      (*(*(v120 - 8) + 104))(v117 + v118, v119, v120);
      (*(v278 + 56))(v117 + v110[6], 1, 1, v111);
      v121 = v110[8];
      v122 = *MEMORY[0x277D523B8];
      v123 = sub_20C135ED4();
      v124 = *(v123 - 8);
      (*(v124 + 104))(v117 + v121, v122, v123);
      (*(v124 + 56))(v117 + v121, 0, 1, v123);
      v125 = v110[10];
      v126 = *MEMORY[0x277D51760];
      v127 = sub_20C1352E4();
      (*(*(v127 - 8) + 104))(v117 + v125, v126, v127);
      v128 = v110[11];
      v129 = sub_20C136E94();
      (*(*(v129 - 8) + 56))(v117 + v128, 1, 1, v129);
      v130 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v131 = (v117 + v110[7]);
      *v131 = v275;
      v131[1] = v115;
      v132 = (v117 + v110[9]);
      *v132 = 0;
      v132[1] = 0;
      *(v117 + v110[12]) = v130;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v134 = Strong;
        sub_20C137114();
        v135 = sub_20C136234();
        v137 = v136;
        v138 = v117;
        v139 = v255;
        sub_20B880D74(v138, v255, type metadata accessor for ShelfMetricAction);
        v140 = v270;
        (*(v270 + 7))(v139, 0, 1, v110);
        v141 = v139;
        v142 = v247;
        sub_20B52F9E8(v141, v247, &unk_27C7622D0);
        v143 = v113;
        if ((*(v140 + 6))(v142, 1, v110) == 1)
        {
          sub_20B520158(v142, &unk_27C7622D0);
        }

        else
        {
          v174 = v231;
          sub_20B880E3C(v142, v231, type metadata accessor for ShelfMetricAction);
          sub_20BF9FD30(v232, v174, v134);
          sub_20B880DDC(v174, type metadata accessor for ShelfMetricAction);
        }

        v175 = v265;
        v176 = v274;
        v177 = v260;
        v178 = v279;
        v179 = v134 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v180 = *(v179 + 8);
          ObjectType = swift_getObjectType();
          v182 = v254;
          (*(v180 + 72))(v134, v254, v135, v137, ObjectType, v180);
          swift_unknownObjectRelease();
          v143 = v258;
        }

        else
        {
          v182 = v254;
        }

        swift_unknownObjectRelease();

        sub_20B520158(v255, &unk_27C7622D0);
        (*(v278 + 8))(v182, v178);
        sub_20B880DDC(v259, type metadata accessor for ShelfMetricAction);
        (*(v177 + 8))(v143, v175);
        v184 = v232;
        v183 = v176;
      }

      else
      {
        sub_20B880DDC(v117, type metadata accessor for ShelfMetricAction);
        (*(v112 + 8))(v113, v265);
        v183 = v274;
        v184 = v232;
      }

LABEL_44:
      v225 = *(v184 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator + 24);
      v226 = *(v184 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator + 32);
      __swift_project_boxed_opaque_existential_1((v184 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator), v225);
      v227 = v276;
      (*(v226 + 32))(v276, v225, v226);
      return (*(v273 + 8))(v227, v183);
    }

    (*(v269 + 32))(v262, v56, v263);
    v150 = v256;
    sub_20C136DC4();
    v151 = v252;
    v152 = v261;
    (*(v252 + 56))(v268, 1, 1, v261);
    v153 = v278;
    v154 = (v278 + 16);
    v155 = *(v278 + 16);
    v156 = v251;
    v155(v251, v150, v109);
    sub_20BBD6CD8(v156, v257);
    v157 = v250;
    v270 = v155;
    v271 = v154;
    v155(v250, v150, v109);
    v158 = type metadata accessor for NavigationSharingURLInfo();
    v159 = *(v153 + 56);
    v160 = v248;
    v161 = v248 + *(v158 + 20);
    v275 = (v153 + 56);
    v272 = v159;
    (v159)(v161, 1, 1, v109);
    (*(v153 + 32))(v160, v157, v109);
    v162 = (v160 + *(v158 + 24));
    *v162 = 0;
    v162[1] = 0;
    swift_storeEnumTagMultiPayload();
    v163 = v233;
    sub_20B52F9E8(v268, v233, &unk_27C767800);
    v164 = *(v151 + 48);
    v165 = v164(v163, 1, v152);
    if (v165 == 1)
    {
      v166 = v242;
      sub_20B880D74(v160, v242, type metadata accessor for NavigationSource);
      v167 = v164(v163, 1, v152) == 1;
      v168 = v257;
      v169 = v238;
      v170 = v163;
      v171 = v236;
      v183 = v274;
      v172 = v235;
      v184 = v232;
      v173 = v277;
      if (!v167)
      {
        sub_20B520158(v170, &unk_27C767800);
      }
    }

    else
    {
      v166 = v242;
      sub_20B880E3C(v163, v242, type metadata accessor for NavigationSource);
      v168 = v257;
      v169 = v238;
      v171 = v236;
      v183 = v274;
      v172 = v235;
      v184 = v232;
      v173 = v277;
    }

    v185 = v234;
    sub_20B880D74(v166, v234, type metadata accessor for NavigationSource);
    if (swift_getEnumCaseMultiPayload())
    {
      v186 = type metadata accessor for NavigationSource;
    }

    else
    {
      sub_20B880DDC(v185, type metadata accessor for NavigationSharingURLInfo);
      v185 = v229;
      sub_20B880D74(v168, v229, type metadata accessor for NavigationResource);
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        sub_20B880DDC(v248, type metadata accessor for NavigationSource);
        sub_20B520158(v268, &unk_27C767800);
        v187 = v279;
        (*(v278 + 8))(v256, v279);
        v188 = v168;
        v189 = v237;
        sub_20B880E3C(v188, v237, type metadata accessor for NavigationResource);
        *(v189 + v169[5]) = 0;
        type metadata accessor for NavigationIntent();
        v190 = 2;
        v191 = v189;
        swift_storeEnumTagMultiPayload();
LABEL_41:
        sub_20B880E3C(v166, v191 + v169[6], type metadata accessor for NavigationSource);
        *(v191 + v169[7]) = 0;
        *(v191 + v169[8]) = v190;
        *(v191 + v169[9]) = 0;
        v201 = v249;
        sub_20B880E3C(v191, v249, type metadata accessor for NavigationRequest);
        swift_getObjectType();
        v202 = v201;
        v203 = v239;
        sub_20B880D74(v202, v239, type metadata accessor for NavigationRequest);
        sub_20B880F2C(&unk_27C7706F0, type metadata accessor for NavigationRequested);
        sub_20C13A764();
        sub_20B880DDC(v203, type metadata accessor for NavigationRequested);
        v204 = sub_20C1355B4();
        v206 = v205;
        v207 = sub_20C136664();
        v208 = v241;
        (*(*(v207 - 8) + 56))(v241, 1, 1, v207);
        v209 = v173[5];
        v210 = *MEMORY[0x277D513F8];
        v211 = sub_20C134F24();
        (*(*(v211 - 8) + 104))(v208 + v209, v210, v211);
        (v272)(v208 + v173[6], 1, 1, v187);
        v212 = v173[8];
        v213 = *MEMORY[0x277D523B8];
        v214 = sub_20C135ED4();
        v215 = *(v214 - 8);
        (*(v215 + 104))(v208 + v212, v213, v214);
        (*(v215 + 56))(v208 + v212, 0, 1, v214);
        v216 = v173[10];
        v217 = *MEMORY[0x277D51760];
        v218 = sub_20C1352E4();
        (*(*(v218 - 8) + 104))(v208 + v216, v217, v218);
        v219 = v173[11];
        v220 = sub_20C136E94();
        (*(*(v220 - 8) + 56))(v208 + v219, 1, 1, v220);
        v221 = sub_20B6B29D4(MEMORY[0x277D84F90]);
        v222 = (v208 + v173[7]);
        *v222 = v204;
        v222[1] = v206;
        v223 = (v208 + v173[9]);
        *v223 = 0;
        v223[1] = 0;
        *(v208 + v173[12]) = v221;
        v224 = swift_unknownObjectWeakLoadStrong();
        if (v224)
        {
          sub_20BF9FD30(v184, v208, v224);
          swift_unknownObjectRelease();
        }

        sub_20B880DDC(v208, type metadata accessor for ShelfMetricAction);
        sub_20B880DDC(v249, type metadata accessor for NavigationRequest);
        (*(v269 + 8))(v262, v263);
        goto LABEL_44;
      }

      v186 = type metadata accessor for NavigationResource;
    }

    sub_20B880DDC(v185, v186);
    sub_20B880D74(v166, v172, type metadata accessor for NavigationSource);
    if (swift_getEnumCaseMultiPayload())
    {
      v192 = type metadata accessor for NavigationSource;
      v193 = v172;
    }

    else
    {
      sub_20B880DDC(v172, type metadata accessor for NavigationSharingURLInfo);
      sub_20B880D74(v168, v171, type metadata accessor for NavigationResource);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_20B880DDC(v248, type metadata accessor for NavigationSource);
        sub_20B520158(v268, &unk_27C767800);
        v194 = v279;
        v195 = *(v278 + 8);
        v195(v256, v279);
        v196 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0) + 48);
        v197 = sub_20C1388F4();
        (*(*(v197 - 8) + 8))(v171 + v196, v197);
        v195(v171, v194);
        v166 = v242;
        v191 = v237;
        sub_20B880E3C(v168, v237, type metadata accessor for NavigationResource);
        *(v191 + v169[5]) = 1;
        type metadata accessor for NavigationIntent();
        swift_storeEnumTagMultiPayload();
        v190 = 2;
LABEL_40:
        v187 = v194;
        v173 = v277;
        goto LABEL_41;
      }

      v192 = type metadata accessor for NavigationResource;
      v193 = v171;
    }

    sub_20B880DDC(v193, v192);
    v198 = v237;
    sub_20B880D74(v168, v237, type metadata accessor for NavigationResource);
    v199 = v250;
    v200 = v256;
    v194 = v279;
    v270(v250, v256, v279);
    v191 = v198;
    sub_20BB7F2E8(v199, 1, v198 + v169[5]);
    sub_20B880DDC(v248, type metadata accessor for NavigationSource);
    sub_20B880DDC(v168, type metadata accessor for NavigationResource);
    sub_20B520158(v268, &unk_27C767800);
    (*(v278 + 8))(v200, v194);
    v190 = 0;
    goto LABEL_40;
  }

  sub_20B880DDC(v61, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  v74 = v271;
  sub_20C135E84();
  v75 = sub_20BD09848();
  if (!v76)
  {
    v75 = sub_20BD09C88();
    if (!v76)
    {
      v75 = sub_20C132B54();
    }
  }

  v77 = v75;
  v78 = v76;
  v79 = v278;
  v80 = v279;
  v276 = *(v278 + 8);
  (v276)(v74, v279);
  v81 = sub_20C136664();
  v82 = v272;
  (*(*(v81 - 8) + 56))(v272, 1, 1, v81);
  v83 = v277;
  v84 = *(v277 + 20);
  v85 = *MEMORY[0x277D513F8];
  v86 = sub_20C134F24();
  (*(*(v86 - 8) + 104))(v82 + v84, v85, v86);
  (*(v79 + 56))(v82 + v83[6], 1, 1, v80);
  v87 = v83[8];
  v88 = *MEMORY[0x277D523B8];
  v89 = sub_20C135ED4();
  v90 = *(v89 - 8);
  (*(v90 + 104))(v82 + v87, v88, v89);
  (*(v90 + 56))(v82 + v87, 0, 1, v89);
  v91 = v83[10];
  v92 = *MEMORY[0x277D51760];
  v93 = sub_20C1352E4();
  (*(*(v93 - 8) + 104))(v82 + v91, v92, v93);
  v94 = v83[11];
  v95 = sub_20C136E94();
  (*(*(v95 - 8) + 56))(v82 + v94, 1, 1, v95);
  v96 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v97 = (v82 + v83[7]);
  *v97 = v77;
  v97[1] = v78;
  v98 = (v82 + v83[9]);
  *v98 = 0;
  v98[1] = 0;
  *(v82 + v83[12]) = v96;
  v99 = v232;
  v100 = swift_unknownObjectWeakLoadStrong();
  if (v100)
  {
    v101 = v100;
    sub_20C135E84();
    v102 = sub_20C135D64();
    v104 = v103;
    v105 = v267;
    sub_20B880D74(v82, v267, type metadata accessor for ShelfMetricAction);
    v106 = v270;
    (*(v270 + 7))(v105, 0, 1, v83);
    v107 = v266;
    sub_20B52F9E8(v105, v266, &unk_27C7622D0);
    if ((*(v106 + 6))(v107, 1, v83) == 1)
    {
      sub_20B520158(v107, &unk_27C7622D0);
    }

    else
    {
      v144 = v253;
      sub_20B880E3C(v107, v253, type metadata accessor for ShelfMetricAction);
      sub_20BF9FD30(v99, v144, v101);
      sub_20B880DDC(v144, type metadata accessor for ShelfMetricAction);
    }

    v145 = v101 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    v146 = swift_unknownObjectWeakLoadStrong();
    v147 = v275;
    if (v146)
    {
      v148 = *(v145 + 8);
      v149 = swift_getObjectType();
      (*(v148 + 72))(v101, v147, v102, v104, v149, v148);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();

    sub_20B520158(v105, &unk_27C7622D0);
    (v276)(v147, v279);
  }

  return sub_20B880DDC(v82, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20B880D74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B880DDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B880E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20B880EBC()
{
  result = qword_27C771DE0;
  if (!qword_27C771DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771DE0);
  }

  return result;
}

uint64_t sub_20B880F2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B880F74()
{
  result = sub_20C1340E4();
  v2 = v0 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerVideoPreviewDurationThresholdInSeconds;
  *v2 = v3;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_20B880FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B88109C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8811D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

id sub_20B881460()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackTrackMask();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20B8814B8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI12FilterButton_highlightTimer] = 0;
  v4[OBJC_IVAR____TtC9SeymourUI12FilterButton_shouldShowHighlight] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for FilterButton();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 addTarget:v9 action:sel_handleTouchUp_ forControlEvents:256];
  [v9 addTarget:v9 action:sel_handleTouchDown_ forControlEvents:1];
  [v9 addTarget:v9 action:sel_handleTouchUp_ forControlEvents:32];
  [v9 addTarget:v9 action:sel_handleTouchUp_ forControlEvents:64];
  [v9 addTarget:v9 action:sel_handleTouchUp_ forControlEvents:128];

  return v9;
}

void sub_20B881704(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FilterButton();
  objc_msgSendSuper2(&v9, sel_setHighlighted_, a1 & 1);
  if (![v1 buttonType] && (!objc_msgSend(v1, sel_isHighlighted) || *(v1 + OBJC_IVAR____TtC9SeymourUI12FilterButton_shouldShowHighlight) == 1))
  {
    *(v1 + OBJC_IVAR____TtC9SeymourUI12FilterButton_shouldShowHighlight) = 0;
    if ([v1 isHighlighted])
    {
      v3 = 0.165;
    }

    else
    {
      v3 = 0.25;
    }

    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v8[4] = sub_20B8819CC;
    v8[5] = v5;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_20B7B548C;
    v8[3] = &block_descriptor_30;
    v6 = _Block_copy(v8);
    v7 = v1;

    [v4 animateWithDuration:6 delay:v6 options:0 animations:v3 completion:0.0];
    _Block_release(v6);
  }
}

id sub_20B881964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FilterButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20B8819CC()
{
  v1 = *(v0 + 16);
  v2 = [v1 isHighlighted];
  v3 = 1.0;
  if (v2)
  {
    v3 = 0.75;
  }

  return [v1 setAlpha_];
}

char *sub_20B881A38(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v3 setAlpha_];
  sub_20C1380F4();
  v4 = sub_20C138104();
  if (v4 == sub_20C138104())
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_imageView;
  [v3 setContentMode_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v1[v6] = v3;
  v7 = OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_blackView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v8 setAlpha_];
  v9 = [objc_opt_self() blackColor];
  [v8 setBackgroundColor_];

  [v8 setClipsToBounds_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v7] = v8;
  *&v1[OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_presenter] = a1;
  v66.receiver = v1;
  v66.super_class = type metadata accessor for PhoneSessionBackgroundView();

  v10 = objc_msgSendSuper2(&v66, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *(a1 + OBJC_IVAR____TtC9SeymourUI26SessionBackgroundPresenter_display + 8) = &off_2822AEEC8;
  swift_unknownObjectWeakAssign();
  v11 = OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_imageView;
  v12 = *&v10[OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_imageView];
  v13 = v10;
  [v13 addSubview_];
  v64 = OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_blackView;
  [v13 addSubview_];
  v65 = objc_opt_self();
  v14 = *MEMORY[0x277D768C8];
  v15 = *(MEMORY[0x277D768C8] + 8);
  v17 = *(MEMORY[0x277D768C8] + 16);
  v16 = *(MEMORY[0x277D768C8] + 24);
  v18 = *&v10[v11];
  v19 = [v18 leadingAnchor];
  v20 = [v13 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:v15];

  LODWORD(v22) = 1148846080;
  [v21 setPriority_];
  v23 = v21;
  v24 = [v18 trailingAnchor];
  v25 = [v13 trailingAnchor];
  v26 = -v16;
  v27 = [v24 constraintEqualToAnchor:v25 constant:v26];

  LODWORD(v28) = 1148846080;
  [v27 setPriority_];
  v29 = v27;
  v30 = [v18 topAnchor];
  v31 = [v13 &selRef_setLineBreakMode_];
  v32 = [v30 constraintEqualToAnchor:v31 constant:v14];

  LODWORD(v33) = 1148846080;
  [v32 setPriority_];
  v34 = [v18 bottomAnchor];
  v35 = [v13 &selRef_secondaryLabel + 5];
  v36 = -v17;
  v37 = [v34 constraintEqualToAnchor:v35 constant:v36];

  LODWORD(v38) = 1148846080;
  [v37 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_20C14FE90;
  *(v39 + 32) = v23;
  *(v39 + 40) = v29;
  *(v39 + 48) = v32;
  *(v39 + 56) = v37;
  v40 = v32;

  v41 = *&v13[v64];
  v42 = [v41 leadingAnchor];
  v43 = [v13 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:v15];

  LODWORD(v45) = 1148846080;
  [v44 &selRef_meterUnit];
  v46 = v44;
  v47 = [v41 trailingAnchor];
  v48 = [v13 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:v26];

  LODWORD(v50) = 1148846080;
  [v49 &selRef_meterUnit];
  v51 = v49;
  v52 = [v41 topAnchor];
  v53 = [v13 topAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:v14];

  LODWORD(v55) = 1148846080;
  [v54 &selRef_meterUnit];
  v56 = [v41 bottomAnchor];
  v57 = [v13 bottomAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:v36];

  LODWORD(v59) = 1148846080;
  [v58 &selRef_meterUnit];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  *(inited + 32) = v46;
  *(inited + 40) = v51;
  *(inited + 48) = v54;
  *(inited + 56) = v58;
  v61 = v54;

  sub_20B8D9310(inited);
  sub_20B5E29D0();
  v62 = sub_20C13CC54();

  [v65 activateConstraints_];

  return v13;
}

id sub_20B882188()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhoneSessionBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20B88223C(uint64_t a1)
{
  [*&v1[OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_imageView] setImage_];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_20B882808;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_20B7B548C;
  v6[3] = &block_descriptor_3;
  v4 = _Block_copy(v6);

  [v2 animateWithDuration:v4 animations:0.2];
  _Block_release(v4);
  return [v1 layoutIfNeeded];
}

void sub_20B882358()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_imageView);

    [v2 setAlpha_];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_blackView);

    [v5 setAlpha_];
  }
}

double sub_20B882430()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 nativeBounds];
  v6 = v5;

  v7 = sub_20C138104();
  if (v7 == sub_20C138104())
  {
    v9.width = 16.0;
    v9.height = 9.0;
    v11.origin.x = 0.0;
    v11.origin.y = 0.0;
    v11.size.width = v3;
    v11.size.height = v6;
    v10 = AVMakeRectWithAspectRatioInsideRect(v9, v11);
    return v10.size.width;
  }

  return v3;
}

id sub_20B882528(uint64_t (*a1)(id), uint64_t a2, double a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_blackView);
  v8 = [v7 alpha];
  if (v9 >= 1.0)
  {
    return a1(v8);
  }

  v10 = objc_opt_self();
  [v10 begin];
  v17[4] = a1;
  v17[5] = a2;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_20B7B548C;
  v17[3] = &block_descriptor_31;
  v11 = _Block_copy(v17);

  [v10 setCompletionBlock_];
  _Block_release(v11);
  [v7 alpha];
  v13 = v12;
  [v7 setAlpha_];
  v14 = [v7 layer];
  v15 = sub_20B8826C8(v13, a3);
  [v14 addAnimation:v15 forKey:0];

  return [v10 commit];
}

id sub_20B8826C8(double a1, double a2)
{
  v3 = sub_20C13C914();
  v4 = [objc_opt_self() animationWithKeyPath_];

  v5 = sub_20C138374();
  [v4 setFromValue_];

  v6 = sub_20C138374();
  [v4 setToValue_];

  v7 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  v8 = v4;
  LODWORD(v9) = 1051260355;
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1051260355;
  v12 = [v7 initWithControlPoints__:v9 :{0.0, v11, v10}];
  [v8 setTimingFunction_];

  [v8 setDuration_];
  return v8;
}

void sub_20B882810()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v1 setAlpha_];
  sub_20C1380F4();
  v2 = sub_20C138104();
  if (v2 == sub_20C138104())
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_imageView;
  [v1 setContentMode_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v4) = v1;
  v5 = OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_blackView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v6 setAlpha_];
  v7 = [objc_opt_self() blackColor];
  [v6 setBackgroundColor_];

  [v6 setClipsToBounds_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20B8829AC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_layout];
  *v12 = 0x3FDB6DB6DB6DB6DBLL;
  v12[8] = 0;
  *&v5[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_activatedConstraints] = MEMORY[0x277D84F90];
  v13 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_artworkView;
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v55 = 1;
  v14 = objc_allocWithZone(type metadata accessor for WorkoutPlanArtworkView());
  v15 = WorkoutPlanArtworkView.init(artwork:appearance:)(v56, &v55);
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v13] = v15;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setAdjustsFontForContentSizeCategory_];
  v17 = *MEMORY[0x277D76988];
  v18 = objc_opt_self();
  v19 = [v18 preferredFontDescriptorWithTextStyle:v17 compatibleWithTraitCollection:0];
  v20 = [v19 fontDescriptorWithSymbolicTraits_];
  if (v20)
  {
    v21 = v20;

    v19 = v21;
  }

  v22 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_titleLabel;
  v23 = objc_opt_self();
  v24 = [v23 fontWithDescriptor:v19 size:0.0];

  [v16 setFont_];
  [v16 setLineBreakMode_];
  [v16 setNumberOfLines_];
  v25 = objc_opt_self();
  v26 = [v25 whiteColor];
  [v16 setTextColor_];

  [v16 setAllowsDefaultTighteningForTruncation_];
  *&v5[v22] = v16;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 setAdjustsFontForContentSizeCategory_];
  v28 = [v18 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v29 = [v28 fontDescriptorWithSymbolicTraits_];
  if (v29)
  {
    v30 = v29;

    v28 = v30;
  }

  v31 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_subtitleLabel;
  v32 = [v23 fontWithDescriptor:v28 size:{0.0, ObjectType}];

  [v27 setFont_];
  v33 = [v25 secondaryLabelColor];
  [v27 setTextColor_];

  [v27 setLineBreakMode_];
  [v27 setNumberOfLines_];
  [v27 setAllowsDefaultTighteningForTruncation_];
  *&v5[v31] = v27;
  v34 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v34 &selRef_count + 2];
  [v34 setAdjustsFontForContentSizeCategory_];
  [v34 setLineBreakMode_];
  [v34 setNumberOfLines_];
  [v34 setLineBreakMode_];
  [v34 setAllowsDefaultTighteningForTruncation_];
  v35 = [v18 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] compatibleWithTraitCollection:0];
  v36 = [v35 fontDescriptorWithSymbolicTraits_];
  if (v36)
  {
    v37 = v36;

    v35 = v37;
  }

  v38 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_detailLabel;
  v39 = [v23 fontWithDescriptor:v35 size:0.0];

  [v34 setFont_];
  v40 = [v25 secondaryLabelColor];
  [v34 setTextColor_];

  *&v5[v38] = v34;
  v54.receiver = v5;
  v54.super_class = v53;
  v41 = objc_msgSendSuper2(&v54, sel_initWithFrame_, a1, a2, a3, a4);
  v42 = [v41 traitCollection];
  v43 = [v25 systemBackgroundColor];
  v44 = sub_20C13D3B4();
  v45 = [v43 resolvedColorWithTraitCollection_];

  [v41 setBackgroundColor_];
  v46 = [v41 layer];
  [v46 setCornerRadius_];

  [v41 setClipsToBounds_];
  v47 = [v41 contentView];
  [v47 addSubview_];

  v48 = [v41 contentView];
  [v48 addSubview_];

  v49 = [v41 contentView];
  [v49 addSubview_];

  v50 = [v41 contentView];
  [v50 addSubview_];

  sub_20B883144();
  return v41;
}

void sub_20B883144()
{
  v1 = v0;
  v79 = objc_opt_self();
  v78 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_activatedConstraints;
  sub_20B5E29D0();

  v2 = sub_20C13CC54();

  [v79 deactivateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C150930;
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_artworkView];
  v5 = [v4 topAnchor];
  v6 = [v1 contentView];
  v7 = [v6 &selRef_setLineBreakMode_];

  v77 = &v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_layout];
  v8 = [v5 constraintEqualToAnchor:v7 constant:0.0];

  *(v3 + 32) = v8;
  v9 = [v4 leadingAnchor];
  v10 = [v1 &selRef_setMaximumFractionDigits_];
  v11 = [v10 leadingAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v3 + 40) = v12;
  v13 = [v4 trailingAnchor];
  v14 = [v1 &selRef_setMaximumFractionDigits_];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v3 + 48) = v16;
  v17 = [v4 widthAnchor];
  v18 = [v1 &selRef_setMaximumFractionDigits_];
  v19 = [v18 widthAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v21) = v80;
  [v20 setPriority_];
  *(v3 + 56) = v20;
  v22 = [v4 heightAnchor];
  v23 = [v4 widthAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 multiplier:*v77];

  sub_20C13BBA4();
  LODWORD(v25) = v80;
  [v24 setPriority_];
  *(v3 + 64) = v24;
  v26 = *&v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_titleLabel];
  v27 = [v26 topAnchor];
  v28 = [v4 bottomAnchor];
  v29 = 10.0;
  if (*(v77 + 8))
  {
    v29 = 24.0;
  }

  v30 = [v27 constraintEqualToAnchor:v28 constant:v29];

  *(v3 + 72) = v30;
  v31 = [v26 leadingAnchor];
  v32 = [v1 contentView];
  v33 = [v32 leadingAnchor];

  if (*(v77 + 8))
  {
    v34 = 24.0;
  }

  else
  {
    v34 = 16.0;
  }

  v35 = [v31 constraintEqualToAnchor:v33 constant:v34];

  *(v3 + 80) = v35;
  v36 = [v26 trailingAnchor];
  v37 = [v1 contentView];
  v38 = [v37 trailingAnchor];

  if (*(v77 + 8))
  {
    v39 = -24.0;
  }

  else
  {
    v39 = -16.0;
  }

  v40 = [v36 constraintEqualToAnchor:v38 constant:v39];

  *(v3 + 88) = v40;
  v41 = *&v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_subtitleLabel];
  v42 = [v41 topAnchor];
  v43 = [v26 bottomAnchor];
  v44 = 4.0;
  if (*(v77 + 8))
  {
    v44 = 8.0;
  }

  v45 = [v42 constraintEqualToAnchor:v43 constant:v44];

  *(v3 + 96) = v45;
  v46 = [v41 leadingAnchor];
  v47 = [v1 contentView];
  v48 = [v47 leadingAnchor];

  if (*(v77 + 8))
  {
    v49 = 24.0;
  }

  else
  {
    v49 = 16.0;
  }

  v50 = [v46 constraintEqualToAnchor:v48 constant:v49];

  *(v3 + 104) = v50;
  v51 = [v41 trailingAnchor];
  v52 = [v1 contentView];
  v53 = [v52 trailingAnchor];

  if (*(v77 + 8))
  {
    v54 = -24.0;
  }

  else
  {
    v54 = -16.0;
  }

  v55 = [v51 constraintEqualToAnchor:v53 constant:v54];

  *(v3 + 112) = v55;
  v56 = *&v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_detailLabel];
  v57 = [v56 topAnchor];
  v58 = [v41 bottomAnchor];
  v59 = 12.0;
  if (!*(v77 + 8))
  {
    v59 = 8.0;
  }

  v60 = [v57 constraintEqualToAnchor:v58 constant:v59];

  *(v3 + 120) = v60;
  v61 = [v56 leadingAnchor];
  v62 = [v1 contentView];
  v63 = [v62 leadingAnchor];

  if (*(v77 + 8))
  {
    v64 = 24.0;
  }

  else
  {
    v64 = 16.0;
  }

  v65 = [v61 constraintEqualToAnchor:v63 constant:v64];

  *(v3 + 128) = v65;
  v66 = [v56 trailingAnchor];
  v67 = [v1 contentView];
  v68 = [v67 trailingAnchor];

  if (*(v77 + 8))
  {
    v69 = -24.0;
  }

  else
  {
    v69 = -16.0;
  }

  v70 = [v66 constraintEqualToAnchor:v68 constant:v69];

  *(v3 + 136) = v70;
  v71 = [v56 bottomAnchor];
  v72 = [v1 contentView];
  v73 = [v72 bottomAnchor];

  v74 = -14.0;
  if (*(v77 + 8))
  {
    v74 = -24.0;
  }

  v75 = [v71 constraintLessThanOrEqualToAnchor:v73 constant:v74];

  *(v3 + 144) = v75;
  *&v1[v78] = v3;

  v76 = sub_20C13CC54();

  [v79 activateConstraints_];
}

uint64_t type metadata accessor for WorkoutPlanGalleryBrickItemCell()
{
  result = qword_2811008D0;
  if (!qword_2811008D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B883C68()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for WorkoutPlanGalleryBrickItemCell.Layout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanGalleryBrickItemCell.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_20B883DC8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B883E14@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20B883E7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B883EE0(unint64_t a1, void *a2)
{
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x48)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v13[0] = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13[1] = v2;
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x40);
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x30);
    v15 = v3;
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x60);
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x50);
    v17 = v4;
    *v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x70);
    *&v18[9] = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x79);
    v10 = v13[0];
    v9 = *(&v14 + 1);
    v5 = v15;
    v6 = v16;
    sub_20B52F9E8(v13, v12, &qword_27C765648);
    sub_20B884510(v5, *(&v5 + 1), v6, *(&v6 + 1));

    v7 = sub_20C1380F4();
    return sub_20BD8E578(v10, a2, v7);
  }

  else
  {
    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

BOOL sub_20B884050()
{
  sub_20C1380F4();
  v0 = sub_20C138104();
  return v0 == sub_20C138104();
}

void sub_20B884088(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_artworkView);
  v8 = &v7[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_artwork];
  swift_beginAccess();
  v51[0] = *v8;
  v9 = *(v8 + 1);
  v10 = *(v8 + 2);
  v11 = *(v8 + 3);
  v52 = *(v8 + 8);
  v51[2] = v10;
  v51[3] = v11;
  v51[1] = v9;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 8) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  sub_20B520158(v51, &qword_27C765640);
  v12 = &v7[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_renderedRect];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  [v7 setNeedsDisplay];
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x48)
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v44 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = v13;
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x30);
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x60);
    v48 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x50);
    v49 = v15;
    v50[0] = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x70);
    *(v50 + 9) = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x79);
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x40);
    v46 = v14;
    v47 = v16;
    v17 = v44;
    v39[1] = *(&v45 + 1);
    v40 = *(&v14 + 1);
    v18 = v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_layout;
    if (v44 == *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_layout + 8))
    {
      sub_20B52F9E8(&v44, v42, &qword_27C765648);
    }

    else
    {
      *v18 = 0x3FDB6DB6DB6DB6DBLL;
      *(v18 + 8) = v17;
      sub_20B52F9E8(&v44, v42, &qword_27C765648);
      sub_20B883144();
    }

    v42[0] = *v8;
    v27 = *(v8 + 1);
    v28 = *(v8 + 2);
    v29 = *(v8 + 3);
    v43 = *(v8 + 8);
    v42[2] = v28;
    v42[3] = v29;
    v42[1] = v27;
    v31 = v49;
    v30 = v50[0];
    v32 = v48;
    *(v8 + 8) = *&v50[1];
    *(v8 + 2) = v31;
    *(v8 + 3) = v30;
    *(v8 + 1) = v32;
    *v8 = v47;
    sub_20B52F9E8(&v47, &v41, &qword_27C765640);
    sub_20B520158(v42, &qword_27C765640);
    *v12 = 0u;
    *(v12 + 1) = 0u;
    [v7 setNeedsDisplay];
    v33 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_titleLabel);
    v34 = sub_20C13C914();

    [v33 setText_];

    v35 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_subtitleLabel);
    v36 = sub_20C13C914();

    [v35 setText_];

    v37 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_detailLabel);
    v38 = v40;
    [v37 setAttributedText_];
    sub_20B520158(&v47, &qword_27C765640);
  }

  else
  {
    sub_20C13B4A4();

    v19 = sub_20C13BB74();
    v20 = sub_20C13D1D4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = v3;
      v23 = swift_slowAlloc();
      *&v44 = v23;
      *v21 = 136315138;
      *&v42[0] = a1;

      v24 = sub_20C13C9D4();
      v26 = sub_20B51E694(v24, v25, &v44);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_20B517000, v19, v20, "Unsupported shelf item for WorkoutPlanGalleryBrickItemCell: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x20F2F6A40](v23, -1, -1);
      MEMORY[0x20F2F6A40](v21, -1, -1);

      (*(v4 + 8))(v6, v22);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }
}

void *sub_20B884510(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
  }

  return result;
}

void sub_20B88456C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_layout;
  *v4 = 0x3FDB6DB6DB6DB6DBLL;
  *(v4 + 8) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_activatedConstraints) = MEMORY[0x277D84F90];
  v5 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_artworkView;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = 1;
  v6 = objc_allocWithZone(type metadata accessor for WorkoutPlanArtworkView());
  v7 = WorkoutPlanArtworkView.init(artwork:appearance:)(v34, &v33);
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v5) = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAdjustsFontForContentSizeCategory_];
  v9 = *MEMORY[0x277D76988];
  v10 = objc_opt_self();
  v11 = [v10 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:0];
  v12 = [v11 fontDescriptorWithSymbolicTraits_];
  if (v12)
  {
    v13 = v12;

    v11 = v13;
  }

  v14 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_titleLabel;
  v15 = objc_opt_self();
  v16 = [v15 fontWithDescriptor:v11 size:0.0];

  [v8 setFont_];
  [v8 setLineBreakMode_];
  [v8 setNumberOfLines_];
  v17 = objc_opt_self();
  v18 = [v17 whiteColor];
  [v8 setTextColor_];

  [v8 setAllowsDefaultTighteningForTruncation_];
  *(v1 + v14) = v8;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAdjustsFontForContentSizeCategory_];
  v20 = [v10 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v21 = [v20 fontDescriptorWithSymbolicTraits_];
  if (v21)
  {
    v22 = v21;

    v20 = v22;
  }

  v23 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_subtitleLabel;
  v24 = [v15 fontWithDescriptor:v20 size:0.0];

  [v19 setFont_];
  v25 = [v17 secondaryLabelColor];
  [v19 setTextColor_];

  [v19 setLineBreakMode_];
  [v19 setNumberOfLines_];
  [v19 setAllowsDefaultTighteningForTruncation_];
  *(v1 + v23) = v19;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v26 &selRef_count + 2];
  [v26 setAdjustsFontForContentSizeCategory_];
  [v26 setLineBreakMode_];
  [v26 setNumberOfLines_];
  [v26 setLineBreakMode_];
  [v26 setAllowsDefaultTighteningForTruncation_];
  v27 = [v10 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] compatibleWithTraitCollection:0];
  v28 = [v27 fontDescriptorWithSymbolicTraits_];
  if (v28)
  {
    v29 = v28;

    v27 = v29;
  }

  v30 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_detailLabel;
  v31 = [v15 fontWithDescriptor:v27 size:0.0];

  [v26 setFont_];
  v32 = [v17 secondaryLabelColor];
  [v26 setTextColor_];

  *(v1 + v30) = v26;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20B884B10(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_indexPath;
  v10 = sub_20C133244();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_subHeaderLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v12 setLineBreakMode_];
  [v12 setNumberOfLines_];
  v13 = [objc_opt_self() preferredFontForTextStyle_];
  [v12 setFont_];

  [v12 setAllowsDefaultTighteningForTruncation_];
  if (qword_27C760810 != -1)
  {
    swift_once();
  }

  [v12 setTextColor_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setAdjustsFontForContentSizeCategory_];
  *&v4[v11] = v12;
  v47.receiver = v4;
  v47.super_class = type metadata accessor for TVShelfSubHeaderView();
  v14 = objc_msgSendSuper2(&v47, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_subHeaderLabel;
  v16 = *&v14[OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_subHeaderLabel];
  v17 = v14;
  [v17 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v20 = *MEMORY[0x277D768C8];
  v19 = *(MEMORY[0x277D768C8] + 8);
  v21 = *(MEMORY[0x277D768C8] + 16);
  v22 = *(MEMORY[0x277D768C8] + 24);
  v23 = *&v14[v15];
  v24 = [v23 leadingAnchor];
  v25 = [v17 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:v19];

  LODWORD(v27) = 1148846080;
  [v26 setPriority_];
  v28 = v26;
  v29 = [v23 trailingAnchor];
  v30 = [v17 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-v22];

  LODWORD(v32) = 1148846080;
  [v31 setPriority_];
  v33 = v31;
  v34 = [v23 topAnchor];
  v35 = [v17 topAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:v20];

  LODWORD(v37) = 1148846080;
  [v36 setPriority_];
  v38 = [v23 bottomAnchor];
  v39 = [v17 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:-v21];

  LODWORD(v41) = 1148846080;
  [v40 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C14FE90;
  *(v42 + 32) = v28;
  *(v42 + 40) = v33;
  *(v42 + 48) = v36;
  *(v42 + 56) = v40;
  v43 = v36;

  *(inited + 32) = v42;
  v44 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C7677E0);
  sub_20B5E29D0();
  v45 = sub_20C13CC54();

  [v44 activateConstraints_];

  return v17;
}

id sub_20B8851DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVShelfSubHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVShelfSubHeaderView()
{
  result = qword_27C766D90;
  if (!qword_27C766D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8852D4()
{
  sub_20B595A38();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_20B8853A4()
{
  if (qword_27C760660 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() itemWithLayoutSize_];

  return v0;
}

uint64_t sub_20B885428@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_indexPath;
  swift_beginAccess();
  return sub_20B800360(v1 + v3, a1);
}

uint64_t sub_20B885480(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_20B8854CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (((a3 >> 57) & 0x78 | a3 & 7) == 0x1C)
  {
    v4 = *(v3 + OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_subHeaderLabel);
    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x18))
    {
      v5 = sub_20C13C914();
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    [v4 setText_];
  }
}

void sub_20B885568()
{
  v1 = OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_indexPath;
  v2 = sub_20C133244();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_subHeaderLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v4 setLineBreakMode_];
  [v4 setNumberOfLines_];
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [v4 setFont_];

  [v4 setAllowsDefaultTighteningForTruncation_];
  if (qword_27C760810 != -1)
  {
    swift_once();
  }

  [v4 setTextColor_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAdjustsFontForContentSizeCategory_];
  *(v0 + v3) = v4;
  sub_20C13DE24();
  __break(1u);
}

id sub_20B885750(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(type metadata accessor for TVShelfSubHeaderView()) initWithFrame_];
  v9 = *&v8[OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_subHeaderLabel];
  if (*(a1 + 144))
  {
    v10 = sub_20C13C914();
  }

  else
  {
    v10 = 0;
  }

  [v9 setText_];

  [objc_msgSend(a2 container)];
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();
  [objc_msgSend(a2 container)];
  v16 = v15;
  swift_unknownObjectRelease();
  v17 = v16 - v12 - v14 - a3 - a4 + 20.0;
  LODWORD(v18) = 1148846080;
  LODWORD(v19) = 1112014848;
  [v8 systemLayoutSizeFittingSize:v17 withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:{v18, v19}];
  v21 = v20;
  v22 = objc_opt_self();
  v23 = [v22 absoluteDimension_];
  v24 = [v22 estimatedDimension_];
  v25 = [objc_opt_self() sizeWithWidthDimension:v23 heightDimension:v24];

  v26 = sub_20C13C914();
  v27 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v25 elementKind:v26 alignment:2 absoluteOffset:{20.0, 0.0}];

  return v27;
}

char *sub_20B8859A4()
{
  v1 = OBJC_IVAR____TtC9SeymourUI21InstructionsImageView_imageView;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v3 = [v2 layer];
  [v3 setCornerRadius_];

  [v2 setClipsToBounds_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v0[v1] = v2;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for InstructionsImageView();
  v4 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = [v4 layer];
  [v5 setShadowRadius_];

  v6 = [v4 layer];
  LODWORD(v7) = 0.25;
  [v6 setShadowOpacity_];

  v8 = [v4 layer];
  [v8 setShadowOffset_];

  v9 = OBJC_IVAR____TtC9SeymourUI21InstructionsImageView_imageView;
  [v4 addSubview_];
  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20C14FE90;
  v12 = [*&v4[v9] widthAnchor];
  v13 = [v12 constraintEqualToConstant_];

  *(v11 + 32) = v13;
  v14 = [*&v4[v9] heightAnchor];
  v15 = [v14 constraintEqualToConstant_];

  *(v11 + 40) = v15;
  v16 = [*&v4[v9] centerXAnchor];
  v17 = [v4 centerXAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v11 + 48) = v18;
  v19 = [*&v4[v9] centerYAnchor];
  v20 = [v4 centerYAnchor];

  v21 = [v19 constraintEqualToAnchor_];
  *(v11 + 56) = v21;
  sub_20B5E29D0();
  v22 = sub_20C13CC54();

  [v10 activateConstraints_];

  return v4;
}

id sub_20B885EC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstructionsImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B885F28()
{
  v1 = OBJC_IVAR____TtC9SeymourUI21InstructionsImageView_imageView;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v3 = [v2 layer];
  [v3 setCornerRadius_];

  [v2 setClipsToBounds_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v1) = v2;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B886034(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = (*(a6 + 8))(a1, a2, a4, a6);
  v12 = [v6 contentView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  v36 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20C150050;
  v14 = [v7 contentView];
  v15 = [v14 topAnchor];

  v16 = [v7 topAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v13 + 32) = v17;
  v18 = [v7 contentView];
  v19 = [v18 bottomAnchor];

  v20 = [v7 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v13 + 40) = v21;
  v22 = [v7 contentView];
  v23 = [v22 leadingAnchor];

  v24 = [v7 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v13 + 48) = v25;
  v26 = [v7 contentView];
  v27 = [v26 trailingAnchor];

  v28 = [v7 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v13 + 56) = v29;
  v30 = [v7 contentView];
  v31 = [v30 widthAnchor];

  v32 = [v31 constraintEqualToConstant_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v33) = v38;
  [v32 setPriority_];
  *(v13 + 64) = v32;
  sub_20B5E29D0();
  v34 = sub_20C13CC54();

  [v36 activateConstraints_];

  return (*(a5 + 64))(a1, a3, a4, a5);
}

void sub_20B886780(unint64_t a1, void *a2)
{
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x48)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v41[0] = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41[1] = v2;
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x40);
    v42 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x30);
    v43 = v3;
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x60);
    v44 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x50);
    v45 = v4;
    *v46 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x70);
    *&v46[9] = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x79);
    v36 = v41[0];
    v35 = *(&v42 + 1);
    v5 = v43;
    v6 = v44;
    v7 = *&v46[16];
    sub_20B886C20(v41, v40);
    sub_20B884510(v5, *(&v5 + 1), v6, *(&v6 + 1));

    v8 = sub_20C1380F4();
    sub_20BD8E578(v36, a2, v8);
    v10 = v9;
    v11 = [v38 contentView];
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];

    v12 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_20C150050;
    v14 = [v38 contentView];
    v15 = [v14 topAnchor];

    v16 = [v38 topAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v13 + 32) = v17;
    v18 = [v38 contentView];
    v19 = [v18 bottomAnchor];

    v20 = [v38 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor_];

    *(v13 + 40) = v21;
    v22 = [v38 contentView];
    v23 = [v22 leadingAnchor];

    v24 = [v38 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor_];

    *(v13 + 48) = v25;
    v26 = [v38 contentView];
    v27 = [v26 trailingAnchor];

    v28 = [v38 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    *(v13 + 56) = v29;
    v30 = [v38 contentView];
    v31 = [v30 widthAnchor];

    v32 = [v31 constraintEqualToConstant_];
    type metadata accessor for UILayoutPriority(0);
    sub_20B60B184();
    sub_20C13BBA4();
    LODWORD(v33) = v40[0];
    [v32 setPriority_];
    *(v13 + 64) = v32;
    sub_20B5E29D0();
    v34 = sub_20C13CC54();

    [v12 activateConstraints_];

    sub_20B884088(a1);
  }

  else
  {
    sub_20C13DE24();
    __break(1u);
  }
}

uint64_t sub_20B886C20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765648);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_20B886C90(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerFooterView_blurView;
  v10 = [objc_opt_self() effectWithStyle_];
  v11 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v4[v9] = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerFooterView_separatorView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v47.receiver = v4;
  v47.super_class = type metadata accessor for SessionRoutePickerFooterView();
  v13 = objc_msgSendSuper2(&v47, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerFooterView_blurView;
  v15 = *&v13[OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerFooterView_blurView];
  v16 = v13;
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = v16;
  v18 = *&v13[v14];
  v19 = v17;
  [v19 addSubview_];
  v20 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerFooterView_separatorView;
  [*&v19[OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerFooterView_separatorView] setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = *&v19[v20];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 lightTextColor];
  [v23 setBackgroundColor_];

  [v19 addSubview_];
  v25 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C151850;
  v27 = [*&v13[v14] widthAnchor];
  v28 = [v19 widthAnchor];

  v29 = [v27 constraintEqualToAnchor_];
  *(v26 + 32) = v29;
  v30 = [*&v13[v14] heightAnchor];
  v31 = [v19 heightAnchor];

  v32 = [v30 constraintEqualToAnchor_];
  *(v26 + 40) = v32;
  v33 = [*&v19[v20] topAnchor];
  v34 = [v19 topAnchor];

  v35 = [v33 constraintEqualToAnchor_];
  *(v26 + 48) = v35;
  v36 = [*&v19[v20] bottomAnchor];
  v37 = [v19 topAnchor];

  v38 = [v36 constraintEqualToAnchor:v37 constant:0.5];
  *(v26 + 56) = v38;
  v39 = [*&v19[v20] leadingAnchor];
  v40 = [v19 leadingAnchor];

  v41 = [v39 constraintEqualToAnchor_];
  *(v26 + 64) = v41;
  v42 = [*&v19[v20] trailingAnchor];
  v43 = [v19 trailingAnchor];

  v44 = [v42 constraintEqualToAnchor_];
  *(v26 + 72) = v44;
  sub_20B5E29D0();
  v45 = sub_20C13CC54();

  [v25 activateConstraints_];

  return v19;
}

id sub_20B88718C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionRoutePickerFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B887230()
{
  v1 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerFooterView_blurView;
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v0 + v1) = v3;
  v4 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerFooterView_separatorView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B887320()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980);
  sub_20C133AA4();
  sub_20B51C710(v2, v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v0 + 104) = v2[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v2, v0 + 120);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v0 + 160) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(v2, v0 + 168);
  swift_getObjectType();
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v2);

  return v0;
}

uint64_t sub_20B88755C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20B695AF8;

    return sub_20B8876D4();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B887644()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20B8876D4();
}

uint64_t sub_20B8876D4()
{
  v1[17] = v0;
  v2 = sub_20C13BB84();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v1[21] = v3;
  v4 = *(v3 - 8);
  v1[22] = v4;
  v1[23] = *(v4 + 64);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  sub_20C13CDA4();
  v1[27] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v1[28] = v6;
  v1[29] = v5;

  return MEMORY[0x2822009F8](sub_20B887850, v6, v5);
}

uint64_t sub_20B887850()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_1(v6 + 21, v6[24]);
  sub_20C139724();
  v7 = *__swift_project_boxed_opaque_existential_1(v6 + 8, v6[11]);
  *(v0 + 40) = type metadata accessor for ContentAvailabilityFilter();
  *(v0 + 48) = &off_2822C8E88;
  *(v0 + 16) = v7;
  sub_20B51CC64(v0 + 16, v0 + 56);
  v8 = swift_allocObject();
  sub_20B51C710((v0 + 56), v8 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_20B888250;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_20B8404CC;
  *(v10 + 24) = v9;
  (*(v5 + 16))(v2, v1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v2, v4);
  v13 = (v12 + ((v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = sub_20B8404D4;
  v13[1] = v10;
  *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766750);
  sub_20C137C94();
  v14 = *(v5 + 8);
  *(v0 + 248) = v14;
  *(v0 + 256) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v1, v4);

  return MEMORY[0x2822009F8](sub_20B887AB4, 0, 0);
}

uint64_t sub_20B887AB4()
{
  v1 = v0[26];
  v2 = swift_task_alloc();
  v0[33] = v2;
  *(v2 + 16) = "SeymourUI/UpNextQueueButtonPresenter.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 60;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_20B887BC4;
  v4 = v0[30];

  return MEMORY[0x2822008A0](v0 + 15, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B888314, v2, v4);
}

uint64_t sub_20B887BC4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {

    v3 = sub_20B887E48;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v2[31];
    v7 = v2[26];
    v8 = v2[21];
    v2[36] = v2[15];

    v6(v7, v8);
    v4 = v2[28];
    v5 = v2[29];
    v3 = sub_20B887D30;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20B887D30()
{
  v1 = *(v0 + 288);

  v2 = *(v1 + 16);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_queueCount) = v2;
    sub_20BAB8C50();
    sub_20BAB8EF0(*(v4 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_isBeyondScrollBoundary), 0);
    swift_unknownObjectRelease();
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    *(v5 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_queueCount) = v2;
    sub_20BAB8C50();
    sub_20BAB8EF0(*(v6 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_isBeyondScrollBoundary), 0);
    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20B887E48()
{
  (*(v0 + 248))(*(v0 + 208), *(v0 + 168));
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return MEMORY[0x2822009F8](sub_20B887EB4, v1, v2);
}

uint64_t sub_20B887EB4()
{
  v20 = v0;
  v1 = *(v0 + 280);

  sub_20C13B444();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 280);
    v6 = *(v0 + 152);
    v18 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x20F2F5850](*(v0 + 104), *(v0 + 112));
    v12 = sub_20B51E694(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "[UpNextQueueButtonPresenter] Failed to query up next queue: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v15 = *(v0 + 144);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_20B8880B4(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_20B51CC64(a1, v7);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_20B51C710(v7, v4 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = "SeymourUI/ContentAvailabilityFilter.swift";
  *(v5 + 24) = 41;
  *(v5 + 32) = 2;
  *(v5 + 40) = 25;
  *(v5 + 48) = &unk_20C15D270;
  *(v5 + 56) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766750);
  return sub_20C137C94();
}

uint64_t sub_20B8881BC()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);
  sub_20B583ECC(*(v0 + 48));
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);

  __swift_destroy_boxed_opaque_existential_1(v0 + 168);

  return swift_deallocClassInstance();
}

uint64_t sub_20B888258(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E081C(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_20B888324()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20B88753C(v0);
}

uint64_t static AccountFitnessSettingsChanged.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for RemoteBrowsingWorkoutCompleted()
{
  result = qword_27C766DB8;
  if (!qword_27C766DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8884A0()
{
  sub_20B8885B4(319, &qword_27C766DC8, MEMORY[0x277D50400]);
  if (v0 <= 0x3F)
  {
    sub_20B8885B4(319, &qword_27C766DD0, MEMORY[0x277D502A0]);
    if (v1 <= 0x3F)
    {
      sub_20B8885B4(319, &qword_27C766DD8, MEMORY[0x277D51EA0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20B8885B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for RemoteParticipantButton()
{
  result = qword_27C766DE0;
  if (!qword_27C766DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B888654()
{
  sub_20B8886CC();
  if (v0 <= 0x3F)
  {
    sub_20B88872C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20B8886CC()
{
  if (!qword_27C766DF0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C766DF0);
    }
  }
}

void sub_20B88872C()
{
  if (!qword_27C766DF8)
  {
    sub_20C135174();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C766E00);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C766DF8);
    }
  }
}

uint64_t sub_20B8887AC()
{
  v1 = v0;
  v2 = sub_20C135174();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RemoteParticipantButton();
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B864224(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = 3;
      goto LABEL_6;
    }

    return MEMORY[0x20F2F58E0](2);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v10 = 0;
LABEL_6:
      MEMORY[0x20F2F58E0](v10);
      sub_20C13CA64();

      sub_20C13CA64();
    }

    v12 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7654B8) + 48)];
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x20F2F58E0](1);
    sub_20B888B00(&unk_27C764640, MEMORY[0x277D515D0]);
    sub_20C13C7C4();
    sub_20C13E184();
    if (v12)
    {
      sub_20C13CA64();
      sub_20B7A7B44(v12);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_20B888A34()
{
  sub_20C13E164();
  sub_20B8887AC();
  return sub_20C13E1B4();
}

uint64_t sub_20B888A78()
{
  sub_20C13E164();
  sub_20B8887AC();
  return sub_20C13E1B4();
}

uint64_t sub_20B888B00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B888B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C135174();
  v56 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RemoteParticipantButton();
  MEMORY[0x28223BE20](v7);
  v9 = (v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = v52 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = (v52 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E10);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v52 - v17;
  v20 = (v52 + *(v19 + 56) - v17);
  sub_20B864224(a1, v52 - v17);
  sub_20B864224(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
LABEL_27:
        sub_20B889164(v18);
        return 0;
      }

      goto LABEL_53;
    }

    sub_20B864224(v18, v9);
    v27 = *v9;
    v26 = v9[1];
    v25 = v9[2];
    v24 = v9[3];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_25:

      goto LABEL_27;
    }

    v29 = v20[2];
    v28 = v20[3];
    if (v27 != *v20 || v26 != v20[1])
    {
      v31 = sub_20C13DFF4();

      if ((v31 & 1) == 0)
      {
LABEL_33:

        goto LABEL_49;
      }

      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_20B864224(v18, v15);
    v23 = *v15;
    v22 = v15[1];
    v25 = v15[2];
    v24 = v15[3];
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_25;
    }

    v29 = v20[2];
    v28 = v20[3];
    if (v23 != *v20 || v22 != v20[1])
    {
      v47 = sub_20C13DFF4();

      if ((v47 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

LABEL_36:

LABEL_37:
    if (v25 == v29 && v24 == v28)
    {
    }

    else
    {
      v50 = sub_20C13DFF4();

      if ((v50 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_53;
  }

  sub_20B864224(v18, v12);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7654B8) + 48);
  v34 = *&v12[v32];
  v33 = *&v12[v32 + 8];
  v35 = *&v12[v32 + 16];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20B7A7B44(v34);
    (*(v56 + 8))(v12, v4);
    goto LABEL_27;
  }

  v54 = v35;
  v55 = v34;
  v53 = v33;
  v36 = *(v20 + v32);
  v37 = *(v20 + v32 + 8);
  v38 = *(v20 + v32 + 16);
  v39 = v56;
  (*(v56 + 32))(v6, v20, v4);
  v40 = MEMORY[0x20F2EC8B0](v12, v6);
  v41 = *(v39 + 8);
  v41(v12, v4);
  if ((v40 & 1) == 0)
  {
    v41(v6, v4);
    sub_20B7A7B44(v36);
    v48 = v55;
LABEL_48:
    sub_20B7A7B44(v48);
    goto LABEL_49;
  }

  v42 = v37;
  v43 = v55;
  if (!v55)
  {
    v41(v6, v4);
    v44 = v36;
    if (!v36)
    {
      v43 = 0;
LABEL_52:
      sub_20B7A7B44(v43);
      goto LABEL_53;
    }

    goto LABEL_47;
  }

  v44 = v36;
  if (!v36)
  {
    sub_20B889228(v55);
    v41(v6, v4);

    v43 = v55;

LABEL_47:
    sub_20B7A7B44(v43);
    v48 = v44;
    goto LABEL_48;
  }

  if (v53 == v42 && v54 == v38)
  {
    sub_20B889228(v55);
    v41(v6, v4);
    sub_20B7A7B44(v36);

    goto LABEL_52;
  }

  v52[1] = v42;
  LODWORD(v56) = sub_20C13DFF4();
  sub_20B889228(v43);
  v41(v6, v4);
  sub_20B7A7B44(v36);

  sub_20B7A7B44(v43);
  if ((v56 & 1) == 0)
  {
LABEL_49:
    sub_20B8891CC(v18);
    return 0;
  }

LABEL_53:
  sub_20B8891CC(v18);
  return 1;
}

uint64_t sub_20B889164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B8891CC(uint64_t a1)
{
  v2 = type metadata accessor for RemoteParticipantButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_20B889228(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

id sub_20B8893D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TintableLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_20B8894BC(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_20B88FD2C(a4, a5);
  }

  while ((sub_20C13C894() & 1) == 0);
  return v9 != v10;
}

BOOL sub_20B8895C4(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xED000073676E6952;
    v9 = 0x7974697669746361;
    switch(*v4)
    {
      case 1:
        v8 = 0xE700000000000000;
        v9 = 0x7261426E727562;
        break;
      case 2:
        v8 = 0xE700000000000000;
        v10 = 0x636E65646163;
        goto LABEL_20;
      case 3:
        v8 = 0xE800000000000000;
        v9 = 0x65636E6174736964;
        break;
      case 4:
        v8 = 0xE600000000000000;
        v9 = 0x796772656E65;
        break;
      case 5:
        v9 = 0x7461527472616568;
        v8 = 0xE900000000000065;
        break;
      case 6:
        v8 = 0xE900000000000074;
        v9 = 0x6867696C68676968;
        break;
      case 7:
        v8 = 0xE900000000000079;
        v9 = 0x7469736E65746E69;
        break;
      case 8:
        v8 = 0xE700000000000000;
        v10 = 0x6E696C636E69;
LABEL_20:
        v9 = v10 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        break;
      case 9:
        v8 = 0xE300000000000000;
        v9 = 7172210;
        break;
      case 0xA:
        v8 = 0xE900000000000072;
        v9 = 0x6F74617261706573;
        break;
      case 0xB:
        v9 = 7172211;
        v8 = 0xE300000000000000;
        break;
      case 0xC:
        v8 = 0xE800000000000000;
        v9 = 0x73736572676F7270;
        break;
      case 0xD:
        v8 = 0xE500000000000000;
        v9 = 0x72656D6974;
        break;
      case 0xE:
        v9 = 0x617254636973756DLL;
        v8 = 0xEA00000000006B63;
        break;
      default:
        break;
    }

    v11 = 0x7974697669746361;
    v12 = 0xED000073676E6952;
    switch(a1)
    {
      case 1:
        v12 = 0xE700000000000000;
        if (v9 == 0x7261426E727562)
        {
          goto LABEL_47;
        }

        goto LABEL_2;
      case 2:
        v12 = 0xE700000000000000;
        v13 = 0x636E65646163;
        goto LABEL_50;
      case 3:
        v12 = 0xE800000000000000;
        if (v9 != 0x65636E6174736964)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 4:
        v12 = 0xE600000000000000;
        if (v9 != 0x796772656E65)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 5:
        v12 = 0xE900000000000065;
        if (v9 != 0x7461527472616568)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 6:
        v12 = 0xE900000000000074;
        if (v9 != 0x6867696C68676968)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 7:
        v12 = 0xE900000000000079;
        if (v9 != 0x7469736E65746E69)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 8:
        v12 = 0xE700000000000000;
        v13 = 0x6E696C636E69;
LABEL_50:
        if (v9 != (v13 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 9:
        v12 = 0xE300000000000000;
        if (v9 != 7172210)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 10:
        v12 = 0xE900000000000072;
        v11 = 0x6F74617261706573;
        goto LABEL_46;
      case 11:
        v12 = 0xE300000000000000;
        if (v9 != 7172211)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 12:
        v12 = 0xE800000000000000;
        if (v9 != 0x73736572676F7270)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 13:
        v12 = 0xE500000000000000;
        if (v9 != 0x72656D6974)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 14:
        v12 = 0xEA00000000006B63;
        if (v9 != 0x617254636973756DLL)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      default:
LABEL_46:
        if (v9 != v11)
        {
          goto LABEL_2;
        }

LABEL_47:
        if (v8 != v12)
        {
LABEL_2:
          v5 = sub_20C13DFF4();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

BOOL sub_20B889A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  v6 = (a2 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = a3(*v6);
    v11 = v10;
    if (v9 == a3(a1) && v11 == v12)
    {

      return v7 != 0;
    }

    v14 = sub_20C13DFF4();

    ++v6;
  }

  while ((v14 & 1) == 0);
  return v7 != 0;
}

BOOL sub_20B889B14(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xED000073676E6952;
    v9 = 0x7974697669746361;
    switch(*v4)
    {
      case 1:
        v8 = 0xE700000000000000;
        v9 = 0x7261426E727562;
        break;
      case 2:
        v8 = 0xE700000000000000;
        v10 = 0x636E65646163;
        goto LABEL_19;
      case 3:
        v8 = 0xE800000000000000;
        v9 = 0x65636E6174736964;
        break;
      case 4:
        v8 = 0xE600000000000000;
        v9 = 0x796772656E65;
        break;
      case 5:
        v9 = 0x7461527472616568;
        v8 = 0xE900000000000065;
        break;
      case 6:
        v8 = 0xE900000000000074;
        v9 = 0x6867696C68676968;
        break;
      case 7:
        v8 = 0xE900000000000079;
        v9 = 0x7469736E65746E69;
        break;
      case 8:
        v8 = 0xE700000000000000;
        v10 = 0x6E696C636E69;
LABEL_19:
        v9 = v10 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        break;
      case 9:
        v8 = 0xE300000000000000;
        v9 = 7172210;
        break;
      case 0xA:
        v8 = 0xE900000000000072;
        v9 = 0x6F74617261706573;
        break;
      case 0xB:
        v9 = 7172211;
        v8 = 0xE300000000000000;
        break;
      case 0xC:
        v8 = 0xE800000000000000;
        v9 = 0x73736572676F7270;
        break;
      case 0xD:
        v8 = 0xE500000000000000;
        v9 = 0x72656D6974;
        break;
      default:
        break;
    }

    v11 = 0x7974697669746361;
    v12 = 0xED000073676E6952;
    switch(a1)
    {
      case 1:
        v12 = 0xE700000000000000;
        if (v9 == 0x7261426E727562)
        {
          goto LABEL_44;
        }

        goto LABEL_2;
      case 2:
        v12 = 0xE700000000000000;
        v13 = 0x636E65646163;
        goto LABEL_47;
      case 3:
        v12 = 0xE800000000000000;
        if (v9 != 0x65636E6174736964)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 4:
        v12 = 0xE600000000000000;
        if (v9 != 0x796772656E65)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 5:
        v12 = 0xE900000000000065;
        if (v9 != 0x7461527472616568)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 6:
        v12 = 0xE900000000000074;
        if (v9 != 0x6867696C68676968)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 7:
        v12 = 0xE900000000000079;
        if (v9 != 0x7469736E65746E69)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 8:
        v12 = 0xE700000000000000;
        v13 = 0x6E696C636E69;
LABEL_47:
        if (v9 != (v13 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 9:
        v12 = 0xE300000000000000;
        if (v9 != 7172210)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 10:
        v12 = 0xE900000000000072;
        v11 = 0x6F74617261706573;
        goto LABEL_43;
      case 11:
        v12 = 0xE300000000000000;
        if (v9 != 7172211)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 12:
        v12 = 0xE800000000000000;
        if (v9 != 0x73736572676F7270)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 13:
        v12 = 0xE500000000000000;
        if (v9 != 0x72656D6974)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      default:
LABEL_43:
        if (v9 != v11)
        {
          goto LABEL_2;
        }

LABEL_44:
        if (v8 != v12)
        {
LABEL_2:
          v5 = sub_20C13DFF4();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

uint64_t sub_20B889EDC(uint64_t a1, void *a2, char *a3, unint64_t a4, void (*a5)(void, void, void), uint64_t a6, uint64_t a7, unint64_t a8, unsigned __int8 a9)
{
  v678 = a8;
  v679 = a2;
  v681 = a6;
  v682 = a5;
  v674 = a4;
  v680 = a3;
  v685 = a1;
  LODWORD(v693) = a9;
  v725 = *MEMORY[0x277D85DE8];
  v9 = sub_20C133A74();
  v10 = *(v9 - 8);
  v683 = v9;
  v684 = v10;
  MEMORY[0x28223BE20](v9);
  v677 = &v637 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  MEMORY[0x28223BE20](v12 - 8);
  v645 = &v637 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v639 = &v637 - v15;
  MEMORY[0x28223BE20](v16);
  v637 = &v637 - v17;
  MEMORY[0x28223BE20](v18);
  v644 = &v637 - v19;
  MEMORY[0x28223BE20](v20);
  v643 = &v637 - v21;
  MEMORY[0x28223BE20](v22);
  v642 = &v637 - v23;
  MEMORY[0x28223BE20](v24);
  v641 = &v637 - v25;
  v695 = sub_20C134EC4();
  v692 = *(v695 - 8);
  MEMORY[0x28223BE20](v695);
  v673 = (&v637 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v671 = &v637 - v28;
  MEMORY[0x28223BE20](v29);
  v667 = &v637 - v30;
  MEMORY[0x28223BE20](v31);
  v672 = &v637 - v32;
  MEMORY[0x28223BE20](v33);
  v670 = &v637 - v34;
  MEMORY[0x28223BE20](v35);
  v666 = &v637 - v36;
  MEMORY[0x28223BE20](v37);
  v669 = &v637 - v38;
  MEMORY[0x28223BE20](v39);
  v694 = &v637 - v40;
  v675 = v41;
  MEMORY[0x28223BE20](v42);
  v668 = (&v637 - v43);
  v44 = sub_20C135524();
  v45 = *(v44 - 8);
  v690 = v44;
  v691 = v45;
  MEMORY[0x28223BE20](v44);
  v665 = &v637 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v664 = &v637 - v48;
  MEMORY[0x28223BE20](v49);
  v663 = &v637 - v50;
  MEMORY[0x28223BE20](v51);
  v662 = &v637 - v52;
  MEMORY[0x28223BE20](v53);
  v638 = &v637 - v54;
  MEMORY[0x28223BE20](v55);
  v647 = &v637 - v56;
  MEMORY[0x28223BE20](v57);
  v661 = &v637 - v58;
  MEMORY[0x28223BE20](v59);
  v660 = &v637 - v60;
  MEMORY[0x28223BE20](v61);
  v659 = &v637 - v62;
  MEMORY[0x28223BE20](v63);
  v658 = &v637 - v64;
  MEMORY[0x28223BE20](v65);
  v657 = &v637 - v66;
  MEMORY[0x28223BE20](v67);
  v656 = &v637 - v68;
  MEMORY[0x28223BE20](v69);
  v640 = &v637 - v70;
  MEMORY[0x28223BE20](v71);
  v651 = &v637 - v72;
  MEMORY[0x28223BE20](v73);
  v688 = &v637 - v74;
  MEMORY[0x28223BE20](v75);
  v687 = &v637 - v76;
  MEMORY[0x28223BE20](v77);
  v649 = &v637 - v78;
  MEMORY[0x28223BE20](v79);
  v648 = &v637 - v80;
  v676 = 0;
  v696 = sub_20C133E24();
  v689 = *(v696 - 8);
  MEMORY[0x28223BE20](v696);
  v655 = &v637 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v653 = &v637 - v83;
  MEMORY[0x28223BE20](v84);
  v646 = &v637 - v85;
  MEMORY[0x28223BE20](v86);
  v654 = &v637 - v87;
  MEMORY[0x28223BE20](v88);
  v652 = &v637 - v89;
  MEMORY[0x28223BE20](v90);
  v650 = &v637 - v91;
  MEMORY[0x28223BE20](v92);
  v94 = &v637 - v93;
  MEMORY[0x28223BE20](v95);
  v686 = &v637 - v96;
  MEMORY[0x28223BE20](v97);
  v99 = &v637 - v98;
  v100.i64[0] = *(sub_20C135894() + 16);
  v700 = v100;

  v101 = sub_20C1358F4();
  v102.i64[0] = v700.i64[0];
  v102.i64[1] = *(v101 + 16);
  v700 = v102;

  v103.i64[0] = *(sub_20C135904() + 16);
  v699 = v103;

  v104 = sub_20C1358A4();
  v105.i64[0] = v699.i64[0];
  v105.i64[1] = *(v104 + 16);
  v699 = v105;

  v106.i64[0] = *(sub_20C135874() + 16);
  v698 = v106;

  v107 = sub_20C1358B4();
  v108.i64[0] = v698.i64[0];
  v108.i64[1] = *(v107 + 16);
  v698 = v108;

  sub_20C135864();
  v109 = sub_20C13CFB4();

  v110.i64[0] = *(v109 + 16);
  v697 = v110;

  v111 = *(sub_20C1358E4() + 16);

  if (v111)
  {
    v112 = 8;
  }

  else
  {
    v112 = 9;
  }

  v113 = sub_20C1358C4();
  v114.i64[0] = v697.i64[0];
  v114.i64[1] = *(v113 + 16);
  v697 = v114;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E18);
  v115 = swift_allocObject();
  v115[4] = vbsl_s8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(v700), vceqzq_s64(v699)), vuzp1q_s32(vceqzq_s64(v698), vceqzq_s64(v697)))), 0x909090909090909, 0x706050304010200);
  v115[5].i8[0] = v112;
  v116 = MEMORY[0x277D84F90];
  for (i = 32; i != 41; ++i)
  {
    v118 = v115->u8[i];
    if (v118 != 9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = sub_20BC07848(0, *(v116 + 2) + 1, 1, v116);
      }

      v120 = *(v116 + 2);
      v119 = *(v116 + 3);
      if (v120 >= v119 >> 1)
      {
        v116 = sub_20BC07848((v119 > 1), v120 + 1, 1, v116);
      }

      *(v116 + 2) = v120 + 1;
      v116[v120 + 32] = v118;
    }
  }

  swift_setDeallocating();
  swift_deallocClassInstance();
  v121 = *(v116 + 2);
  v122 = (v116 + 32);
  v123 = v693;
  if (v693 <= 3u)
  {
    if (v693 > 1u)
    {
      goto LABEL_41;
    }

    if (v693)
    {
      goto LABEL_36;
    }

    do
    {
      if (!v121)
      {
        goto LABEL_28;
      }

      v161 = *v122++;
      --v121;
    }

    while (v161);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20);
    v700.i64[0] = swift_allocObject();
    *(v700.i64[0] + 16) = xmmword_20C14F980;
    v162 = sub_20C135894();
    v94 = *(v689 + 16);
    (v94)(v99, v679, v696);
    v163 = v690;
    v164 = (v691 + 2);
    v165 = v691[2];
    v165(v648, v680, v690);
    v699.i64[0] = v164;
    v698.i64[0] = v165;
    v165(v649, v681, v163);
    v166 = (v692 + 16);
    v167 = *(v692 + 16);
    (v167)(v668, v682, v695);
    sub_20B6AE918(v674, v641);
    type metadata accessor for BodyFocusFilterOptionsShelf();
    v168 = swift_allocObject();
    *(v168 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_20C132ED4();
    v169 = v168 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row;
    sub_20B5D8060(&v714);
    v170 = v723;
    *(v169 + 128) = v722;
    *(v169 + 144) = v170;
    *(v169 + 160) = v724;
    v171 = v719;
    *(v169 + 64) = v718;
    *(v169 + 80) = v171;
    v172 = v721;
    *(v169 + 96) = v720;
    *(v169 + 112) = v172;
    v173 = v715;
    *v169 = v714;
    *(v169 + 16) = v173;
    v174 = v717;
    *(v169 + 32) = v716;
    *(v169 + 48) = v174;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
    sub_20C133AA4();
    v175 = *(v162 + 16);
    if (!v175)
    {
      goto LABEL_95;
    }

    v176 = sub_20BEDE884(*(v162 + 16), 0);
    v177 = *(sub_20C138244() - 8);
    v178 = sub_20BEE20B4(v713, (v176 + ((*(v177 + 80) + 32) & ~*(v177 + 80))), v175, v162);
    sub_20B583EDC();
    if (v178 == v175)
    {
      goto LABEL_96;
    }

    __break(1u);
    do
    {
LABEL_36:
      if (!v121)
      {
        goto LABEL_28;
      }

      v179 = *v122++;
      --v121;
    }

    while (v179 != 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20);
    v700.i64[0] = swift_allocObject();
    *(v700.i64[0] + 16) = xmmword_20C14F980;
    v180 = sub_20C135904();
    v181 = *(v689 + 16);
    v181(v94, v679, v696);
    v182 = v690;
    v183 = (v691 + 2);
    v184 = v691[2];
    v184(v651, v680, v690);
    v699.i64[0] = v183;
    v698.i64[0] = v184;
    v184(v640, v681, v182);
    v186 = (v692 + 16);
    v185 = *(v692 + 16);
    v185(v669, v682, v695);
    sub_20B6AE918(v674, v642);
    type metadata accessor for EquipmentFilterOptionsShelf();
    v131 = swift_allocObject();
    *(v131 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_20C132ED4();
    v187 = v131 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row;
    sub_20B5D8060(&v714);
    v188 = v723;
    *(v187 + 128) = v722;
    *(v187 + 144) = v188;
    *(v187 + 160) = v724;
    v189 = v719;
    *(v187 + 64) = v718;
    *(v187 + 80) = v189;
    v190 = v721;
    *(v187 + 96) = v720;
    *(v187 + 112) = v190;
    v191 = v715;
    *v187 = v714;
    *(v187 + 16) = v191;
    v192 = v717;
    *(v187 + 32) = v716;
    *(v187 + 48) = v192;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
    sub_20C133AA4();
    v193 = *(v180 + 16);
    if (v193)
    {
      v194 = sub_20BEDE8AC(*(v180 + 16), 0);
      v195 = *(sub_20C1382B4() - 8);
      v196 = sub_20BEE209C(v713, (v194 + ((*(v195 + 80) + 32) & ~*(v195 + 80))), v193, v180);
      sub_20B583EDC();
      if (v196 != v193)
      {
        __break(1u);
LABEL_41:
        if (v123 != 2)
        {
          goto LABEL_47;
        }

        do
        {
          if (!v121)
          {
            goto LABEL_28;
          }

          v197 = *v122++;
          --v121;
        }

        while (v197 != 2);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20);
        v700.i64[0] = swift_allocObject();
        *(v700.i64[0] + 16) = xmmword_20C14F980;
        v198 = sub_20C1358F4();
        v199 = *(v689 + 16);
        v199(v652, v679, v696);
        v200 = v690;
        v201 = v691[2];
        v201(v658, v680, v690);
        v699.i64[0] = v201;
        v201(v659, v681, v200);
        v202 = (v692 + 16);
        v203 = *(v692 + 16);
        v203(v670, v682, v695);
        sub_20B6AE918(v674, v643);
        type metadata accessor for DurationFilterOptionsShelf();
        v131 = swift_allocObject();
        *(v131 + 24) = 0;
        swift_unknownObjectWeakInit();
        sub_20C132ED4();
        v204 = v131 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row;
        sub_20B5D8060(&v714);
        v205 = v719;
        *(v204 + 64) = v718;
        *(v204 + 80) = v205;
        *(v204 + 160) = v724;
        v206 = v723;
        *(v204 + 128) = v722;
        *(v204 + 144) = v206;
        v207 = v721;
        *(v204 + 96) = v720;
        *(v204 + 112) = v207;
        v208 = v715;
        *v204 = v714;
        *(v204 + 16) = v208;
        v209 = v717;
        *(v204 + 32) = v716;
        *(v204 + 48) = v209;
        v210 = *(v198 + 16);
        if (v210)
        {
          v211 = sub_20BEDE80C(*(v198 + 16), 0);
          v212 = *(sub_20C1341A4() - 8);
          v213 = sub_20BEE2054(&v702, (v211 + ((*(v212 + 80) + 32) & ~*(v212 + 80))), v210, v198);
          sub_20B583EDC();
          if (v213 != v210)
          {
            __break(1u);
            do
            {
LABEL_47:
              if (!v121)
              {
                goto LABEL_28;
              }

              v214 = *v122++;
              --v121;
            }

            while (v214 != 3);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20);
            v700.i64[0] = swift_allocObject();
            *(v700.i64[0] + 16) = xmmword_20C14F980;
            v215 = sub_20C135874();
            v698.i64[0] = *(v689 + 16);
            (v698.i64[0])(v650, v679, v696);
            v216 = v690;
            v217 = v691[2];
            v217(v656, v680, v690);
            v217(v657, v681, v216);
            v218 = *(v692 + 16);
            v218(v666, v682, v695);
            type metadata accessor for ModalityFilterOptionsShelf();
            v131 = swift_allocObject();
            *(v131 + 24) = 0;
            swift_unknownObjectWeakInit();
            sub_20C132ED4();
            v219 = v131 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row;
            sub_20B5D8060(&v714);
            v220 = v719;
            *(v219 + 64) = v718;
            *(v219 + 80) = v220;
            *(v219 + 160) = v724;
            v221 = v723;
            *(v219 + 128) = v722;
            *(v219 + 144) = v221;
            v222 = v721;
            *(v219 + 96) = v720;
            *(v219 + 112) = v222;
            v223 = v715;
            *v219 = v714;
            *(v219 + 16) = v223;
            v224 = v717;
            *(v219 + 32) = v716;
            *(v219 + 48) = v224;
            v225 = *(v215 + 16);
            if (v225)
            {
              v226 = sub_20BEDE834(*(v215 + 16), 0);
              v227 = *(sub_20C1365F4() - 8);
              v228 = sub_20BEE2024(&v702, (v226 + ((*(v227 + 80) + 32) & ~*(v227 + 80))), v225, v215);
              sub_20B583EDC();
              if (v228 != v225)
              {
                __break(1u);
                goto LABEL_52;
              }
            }

            else
            {

              v226 = MEMORY[0x277D84F90];
            }

            v312 = v676;
            *&v702 = v226;

            sub_20B98080C(&v702);
            if (v312)
            {
              goto LABEL_131;
            }

            v699.i64[0] = v702;
            (v698.i64[0])(v686, v650, v696);
            v432 = v690;
            v217(v687, v656, v690);
            v218(v694, v666, v695);
            v217(v688, v657, v432);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E60);
            v433 = swift_allocObject();
            *(v433 + 48) = 0u;
            *(v433 + 64) = 0u;
            *(v433 + 80) = 0u;
            *(v433 + 96) = 0u;
            *(v433 + 112) = 0u;
            v434 = *(*v433 + 176);
            v435 = sub_20C1365F4();
            v436 = *(*(v435 - 8) + 56);
            v436(v433 + v434, 1, 1, v435);
            v436(v433 + *(*v433 + 184), 1, 1, v435);
            v436(v433 + *(*v433 + 192), 1, 1, v435);
            *(v433 + 40) = v685;

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
            sub_20C133AA4();
            v437 = *(&v702 + 1);
            *(v433 + 16) = v702;
            *(v433 + 24) = v437;
            sub_20C13A924();
            swift_allocObject();
            swift_unknownObjectRetain();
            *(v433 + 32) = sub_20C13A914();
            v438 = v699.i64[0];
            *(v433 + *(*v433 + 216)) = v699.i64[0];
            *(v433 + *(*v433 + 224)) = v438;
            *(v433 + *(*v433 + 208)) = 3;
            *(v433 + *(*v433 + 200)) = v678;
            v439 = v217;
            v440 = v689;
            (*(v689 + 32))(v433 + qword_27C79BF30, v686, v696);
            v441 = v687;
            v439(v433 + qword_27C79BF38, v687, v432);
            v442 = v691;
            v443 = v691[4];
            v443(v433 + *(*v433 + 232), v441, v432);
            v443(v433 + *(*v433 + 240), v688, v432);
            v444 = *(*v433 + 248);
            v445 = v692 + 32;
            v698.i64[0] = *(v692 + 32);
            (v698.i64[0])(v433 + v444, v694, v695);
            *(v131 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_coordinator) = v433;

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
            sub_20C133AA4();
            v446 = v442[1];
            v446(v657, v432);
            v446(v656, v432);
            (*(v440 + 8))(v650, v696);
            sub_20B52E424(&v702, v131 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_storefrontLocalizer);
            v447 = *(v131 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_coordinator);
            v448 = OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_coordinator;
            v449 = swift_allocObject();
            swift_weakInit();
            v450 = *(v447 + 48);
            *(v447 + 48) = sub_20B88FB50;
            *(v447 + 56) = v449;

            sub_20B583ECC(v450);

            v451 = *(v131 + v448);
            v699.i64[0] = v448;
            v452 = swift_allocObject();
            swift_weakInit();
            v453 = *(v451 + 64);
            *(v451 + 64) = sub_20B88FB58;
            *(v451 + 72) = v452;

            sub_20B583ECC(v453);

            v454 = *(v131 + v448);
            v455 = swift_allocObject();
            swift_weakInit();
            v457 = v694;
            v456 = v695;
            v458 = v698.i64[0];
            (v698.i64[0])(v694, v666, v695);
            v459 = (*(v445 + 48) + 24) & ~*(v445 + 48);
            v460 = swift_allocObject();
            *(v460 + 16) = v455;
            v458(v460 + v459, v457, v456);
            v461 = *(v454 + 80);
            *(v454 + 80) = sub_20B88FB60;
            *(v454 + 88) = v460;

            sub_20B583ECC(v461);

            v462 = v699.i64[0];
            v463 = *(v131 + v699.i64[0]);
            v464 = swift_allocObject();
            swift_weakInit();
            v465 = *(v463 + 96);
            *(v463 + 96) = sub_20B7E05FC;
            *(v463 + 104) = v464;

            sub_20B583ECC(v465);

            v466 = *(v131 + v462);
            v467 = swift_allocObject();
            swift_weakInit();

            v468 = *(v466 + 112);
            *(v466 + 112) = sub_20B88FB78;
            *(v466 + 120) = v467;
            swift_retain_n();
            sub_20B583ECC(v468);

            v353 = &off_2822A84F8;
LABEL_116:
            result = v700.i64[0];
            *(v700.i64[0] + 32) = v131;
            goto LABEL_117;
          }
        }

        else
        {

          v211 = MEMORY[0x277D84F90];
        }

        v312 = v676;
        *&v702 = v211;

        sub_20B9808B4(&v702);
        if (v312)
        {
          goto LABEL_131;
        }

        v698.i64[0] = v702;
        v199(v686, v652, v696);
        v394 = v690;
        v395 = v699.i64[0];
        (v699.i64[0])(v687, v658, v690);
        v203(v694, v670, v695);
        v395(v688, v659, v394);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E58);
        v396 = swift_allocObject();
        *(v396 + 48) = 0u;
        *(v396 + 64) = 0u;
        *(v396 + 80) = 0u;
        *(v396 + 96) = 0u;
        *(v396 + 112) = 0u;
        v397 = *(*v396 + 176);
        v398 = sub_20C1341A4();
        v399 = *(*(v398 - 8) + 56);
        v697.i64[0] = v203;
        v399(v396 + v397, 1, 1, v398);
        v399(v396 + *(*v396 + 184), 1, 1, v398);
        v399(v396 + *(*v396 + 192), 1, 1, v398);
        *(v396 + 40) = v685;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
        sub_20C133AA4();
        v400 = *(&v702 + 1);
        *(v396 + 16) = v702;
        *(v396 + 24) = v400;
        sub_20C13A924();
        swift_allocObject();
        swift_unknownObjectRetain();
        *(v396 + 32) = sub_20C13A914();
        v401 = v698.i64[0];
        *(v396 + *(*v396 + 216)) = v698.i64[0];
        *(v396 + *(*v396 + 224)) = v401;
        *(v396 + *(*v396 + 208)) = 2;
        *(v396 + *(*v396 + 200)) = v678;
        v693 = v202;
        v402 = v689;
        (*(v689 + 32))(v396 + qword_27C79BF30, v686, v696);
        v403 = v687;
        (v699.i64[0])(v396 + qword_27C79BF38, v687, v394);
        v404 = v691;
        v405 = v691[4];
        v405(v396 + *(*v396 + 232), v403, v394);
        v405(v396 + *(*v396 + 240), v688, v394);
        v406 = *(*v396 + 248);
        v407 = v692 + 32;
        v699.i64[0] = *(v692 + 32);
        v408 = v695;
        (v699.i64[0])(v396 + v406, v694, v695);
        *(v131 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_coordinator) = v396;
        v409 = v643;
        sub_20B6AE918(v643, v131 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality);
        (v697.i64[0])(v131 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_filterRoot, v670, v408);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
        sub_20C133AA4();
        sub_20B520158(v409, &unk_27C7710A0);
        v410 = v404[1];
        v410(v659, v394);
        v410(v658, v394);
        (*(v402 + 8))(v652, v696);
        sub_20B52E424(&v702, v131 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_storefrontLocalizer);
        v411 = OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_coordinator;
        v412 = *(v131 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_coordinator);
        v413 = swift_allocObject();
        swift_weakInit();
        v414 = *(v412 + 48);
        *(v412 + 48) = sub_20B88FB20;
        *(v412 + 56) = v413;

        sub_20B583ECC(v414);

        v415 = *(v131 + v411);
        v698.i64[0] = v411;
        v416 = swift_allocObject();
        swift_weakInit();
        v417 = *(v415 + 64);
        *(v415 + 64) = sub_20B88FB28;
        *(v415 + 72) = v416;

        sub_20B583ECC(v417);

        v418 = *(v131 + v411);
        v419 = swift_allocObject();
        swift_weakInit();
        v420 = v694;
        v421 = v699.i64[0];
        (v699.i64[0])(v694, v670, v408);
        v422 = (*(v407 + 48) + 24) & ~*(v407 + 48);
        v423 = swift_allocObject();
        *(v423 + 16) = v419;
        v421(v423 + v422, v420, v408);
        v424 = *(v418 + 80);
        *(v418 + 80) = sub_20B88FB30;
        *(v418 + 88) = v423;

        sub_20B583ECC(v424);

        v425 = v698.i64[0];
        v426 = *(v131 + v698.i64[0]);
        v427 = swift_allocObject();
        swift_weakInit();
        v428 = *(v426 + 96);
        *(v426 + 96) = sub_20B7E05FC;
        *(v426 + 104) = v427;

        sub_20B583ECC(v428);

        v429 = *(v131 + v425);
        v430 = swift_allocObject();
        swift_weakInit();

        v431 = *(v429 + 112);
        *(v429 + 112) = sub_20B88FB48;
        *(v429 + 120) = v430;
        swift_retain_n();
        sub_20B583ECC(v431);

        v353 = &off_2822A2058;
        goto LABEL_116;
      }
    }

    else
    {

      v194 = MEMORY[0x277D84F90];
    }

    v312 = v676;
    v354 = v185;
    *&v713[0] = v194;

    sub_20B98095C(v713);
    if (v312)
    {
LABEL_132:

      __break(1u);
      goto LABEL_133;
    }

    v697.i64[0] = *&v713[0];
    v181(v686, v94, v696);
    v355 = v690;
    v356 = v698.i64[0];
    (v698.i64[0])(v687, v651, v690);
    v693 = v354;
    v354(v694, v669, v695);
    v684 = v186;
    v357 = v640;
    v356(v688, v640, v355);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E68);
    v358 = swift_allocObject();
    *(v358 + 48) = 0u;
    *(v358 + 64) = 0u;
    *(v358 + 80) = 0u;
    *(v358 + 96) = 0u;
    *(v358 + 112) = 0u;
    v359 = *(*v358 + 176);
    v360 = sub_20C1382B4();
    v361 = *(*(v360 - 8) + 56);
    v361(v358 + v359, 1, 1, v360);
    v361(v358 + *(*v358 + 184), 1, 1, v360);
    v361(v358 + *(*v358 + 192), 1, 1, v360);
    *(v358 + 40) = v685;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
    sub_20C133AA4();
    v362 = *(&v713[0] + 1);
    *(v358 + 16) = *&v713[0];
    *(v358 + 24) = v362;
    sub_20C13A924();
    swift_allocObject();
    swift_unknownObjectRetain();
    v363 = sub_20C13A914();
    v364 = v691;
    v365 = v691[1];
    v365(v357, v355);
    v365(v651, v355);
    v366 = v689;
    v367 = v696;
    (*(v689 + 8))(v94, v696);
    *(v358 + 32) = v363;
    v368 = v697.i64[0];
    *(v358 + *(*v358 + 216)) = v697.i64[0];
    *(v358 + *(*v358 + 224)) = v368;
    *(v358 + *(*v358 + 208)) = 1;
    *(v358 + *(*v358 + 200)) = v678;
    (*(v366 + 32))(v358 + qword_27C79BF30, v686, v367);
    v369 = v687;
    (v698.i64[0])(v358 + qword_27C79BF38, v687, v355);
    v370 = v364[4];
    v370(v358 + *(*v358 + 232), v369, v355);
    v370(v358 + *(*v358 + 240), v688, v355);
    v371 = *(*v358 + 248);
    v372 = v692 + 32;
    v699.i64[0] = *(v692 + 32);
    v373 = v695;
    (v699.i64[0])(v358 + v371, v694, v695);
    *(v131 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_coordinator) = v358;
    sub_20B6AE988(v642, v131 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_rootModality);
    v693(v131 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_filterRoot, v669, v373);
    sub_20B52E424(&v702, v131 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_storefrontLocalizer);
    v374 = swift_allocObject();
    swift_weakInit();
    v375 = *(v358 + 48);
    *(v358 + 48) = sub_20B88FB80;
    *(v358 + 56) = v374;

    sub_20B583ECC(v375);

    v376 = *(v131 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_coordinator);
    v377 = OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_coordinator;
    v698.i64[0] = OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_coordinator;
    v378 = swift_allocObject();
    swift_weakInit();
    v379 = *(v376 + 64);
    *(v376 + 64) = sub_20B88FB88;
    *(v376 + 72) = v378;

    sub_20B583ECC(v379);

    v380 = *(v131 + v377);
    v381 = swift_allocObject();
    swift_weakInit();
    v382 = v694;
    v383 = v699.i64[0];
    (v699.i64[0])(v694, v669, v373);
    v384 = (*(v372 + 48) + 24) & ~*(v372 + 48);
    v385 = swift_allocObject();
    *(v385 + 16) = v381;
    v383(v385 + v384, v382, v373);
    v386 = *(v380 + 80);
    *(v380 + 80) = sub_20B88FB90;
    *(v380 + 88) = v385;

    sub_20B583ECC(v386);

    v387 = v698.i64[0];
    v388 = *(v131 + v698.i64[0]);
    v389 = swift_allocObject();
    swift_weakInit();
    v390 = *(v388 + 96);
    *(v388 + 96) = sub_20B7E05FC;
    *(v388 + 104) = v389;

    sub_20B583ECC(v390);

    v391 = *(v131 + v387);
    v392 = swift_allocObject();
    swift_weakInit();

    v393 = *(v391 + 112);
    *(v391 + 112) = sub_20B88FBA8;
    *(v391 + 120) = v392;
    swift_retain_n();
    sub_20B583ECC(v393);

    v353 = &off_2822DF8B8;
    goto LABEL_116;
  }

  if (v693 > 5u)
  {
    if (v693 == 6)
    {
      goto LABEL_27;
    }

    if (v693 == 7)
    {
      do
      {
        if (!v121)
        {
          goto LABEL_28;
        }

        v124 = *v122++;
        --v121;
      }

      while (v124 != 7);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20);
      v700.i64[0] = swift_allocObject();
      *(v700.i64[0] + 16) = xmmword_20C14F980;
      v125 = sub_20C1358C4();
      v126 = *(v689 + 16);
      v126(v653, v679, v696);
      v127 = v690;
      v128 = v691[2];
      v128(v662, v680, v690);
      v699.i64[0] = v128;
      v128(v663, v681, v127);
      v129 = (v692 + 16);
      v130 = *(v692 + 16);
      v130(v671, v682, v695);
      type metadata accessor for TipCategoryFilterOptionsShelf();
      v131 = swift_allocObject();
      *(v131 + 24) = 0;
      swift_unknownObjectWeakInit();
      sub_20C132ED4();
      v132 = v131 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row;
      sub_20B5D8060(&v714);
      v133 = v719;
      *(v132 + 64) = v718;
      *(v132 + 80) = v133;
      *(v132 + 160) = v724;
      v134 = v723;
      *(v132 + 128) = v722;
      *(v132 + 144) = v134;
      v135 = v721;
      *(v132 + 96) = v720;
      *(v132 + 112) = v135;
      v136 = v715;
      *v132 = v714;
      *(v132 + 16) = v136;
      v137 = v717;
      *(v132 + 32) = v716;
      *(v132 + 48) = v137;
      v138 = *(v125 + 16);
      if (v138)
      {
        v139 = sub_20BEDE924(*(v125 + 16), 0);
        v140 = *(sub_20C1370C4() - 8);
        v141 = sub_20BEE20E4(&v702, (v139 + ((*(v140 + 80) + 32) & ~*(v140 + 80))), v138, v125);
        sub_20B583EDC();
        if (v141 != v138)
        {
          __break(1u);
          goto LABEL_21;
        }
      }

      else
      {

        v139 = MEMORY[0x277D84F90];
      }

      v312 = v676;
      *&v702 = v139;

      sub_20B980A04(&v702);
      if (!v312)
      {

        v698.i64[0] = v702;
        v126(v686, v653, v696);
        v469 = v690;
        v470 = v699.i64[0];
        (v699.i64[0])(v687, v662, v690);
        v130(v694, v671, v695);
        v470(v688, v663, v469);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E30);
        v471 = swift_allocObject();
        *(v471 + 48) = 0u;
        *(v471 + 64) = 0u;
        *(v471 + 80) = 0u;
        *(v471 + 96) = 0u;
        *(v471 + 112) = 0u;
        v472 = *(*v471 + 176);
        v473 = sub_20C1370C4();
        v474 = *(*(v473 - 8) + 56);
        v697.i64[0] = v130;
        v474(v471 + v472, 1, 1, v473);
        v474(v471 + *(*v471 + 184), 1, 1, v473);
        v474(v471 + *(*v471 + 192), 1, 1, v473);
        *(v471 + 40) = v685;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
        sub_20C133AA4();
        v475 = *(&v702 + 1);
        *(v471 + 16) = v702;
        *(v471 + 24) = v475;
        sub_20C13A924();
        swift_allocObject();
        swift_unknownObjectRetain();
        *(v471 + 32) = sub_20C13A914();
        v476 = v698.i64[0];
        *(v471 + *(*v471 + 216)) = v698.i64[0];
        *(v471 + *(*v471 + 224)) = v476;
        *(v471 + *(*v471 + 208)) = 7;
        *(v471 + *(*v471 + 200)) = v678;
        v693 = v129;
        v477 = v689;
        (*(v689 + 32))(v471 + qword_27C79BF30, v686, v696);
        v478 = v687;
        (v699.i64[0])(v471 + qword_27C79BF38, v687, v469);
        v479 = v691;
        v480 = v691[4];
        v480(v471 + *(*v471 + 232), v478, v469);
        v480(v471 + *(*v471 + 240), v688, v469);
        v481 = *(*v471 + 248);
        v482 = v692 + 32;
        v699.i64[0] = *(v692 + 32);
        v483 = v695;
        (v699.i64[0])(v471 + v481, v694, v695);
        *(v131 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_coordinator) = v471;
        (v697.i64[0])(v131 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_filterRoot, v671, v483);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
        sub_20C133AA4();
        v484 = v479[1];
        v484(v663, v469);
        v484(v662, v469);
        (*(v477 + 8))(v653, v696);
        sub_20B52E424(&v702, v131 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_storefrontLocalizer);
        v485 = OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_coordinator;
        v486 = *(v131 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_coordinator);
        v487 = swift_allocObject();
        swift_weakInit();
        v488 = *(v486 + 48);
        *(v486 + 48) = sub_20B88FA2C;
        *(v486 + 56) = v487;

        sub_20B583ECC(v488);

        v489 = *(v131 + v485);
        v698.i64[0] = v485;
        v490 = swift_allocObject();
        swift_weakInit();
        v491 = *(v489 + 64);
        *(v489 + 64) = sub_20B88FA34;
        *(v489 + 72) = v490;

        sub_20B583ECC(v491);

        v492 = *(v131 + v485);
        v493 = swift_allocObject();
        swift_weakInit();
        v494 = v694;
        v495 = v699.i64[0];
        (v699.i64[0])(v694, v671, v483);
        v496 = (*(v482 + 48) + 24) & ~*(v482 + 48);
        v497 = swift_allocObject();
        *(v497 + 16) = v493;
        v495(v497 + v496, v494, v483);
        v498 = *(v492 + 80);
        *(v492 + 80) = sub_20B88FA3C;
        *(v492 + 88) = v497;

        sub_20B583ECC(v498);

        v499 = v698.i64[0];
        v500 = *(v131 + v698.i64[0]);
        v501 = swift_allocObject();
        swift_weakInit();
        v502 = *(v500 + 96);
        *(v500 + 96) = sub_20B7E05FC;
        *(v500 + 104) = v501;

        sub_20B583ECC(v502);

        v503 = *(v131 + v499);
        v504 = swift_allocObject();
        swift_weakInit();

        v505 = *(v503 + 112);
        *(v503 + 112) = sub_20B88FA54;
        *(v503 + 120) = v504;
        swift_retain_n();
        sub_20B583ECC(v505);

        v353 = &off_2822FBFE0;
        goto LABEL_116;
      }

      goto LABEL_131;
    }

    do
    {
LABEL_21:
      if (!v121)
      {
        goto LABEL_28;
      }

      v142 = *v122++;
      --v121;
    }

    while (v142 != 8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20);
    v700.i64[0] = swift_allocObject();
    *(v700.i64[0] + 16) = xmmword_20C14F980;
    v143 = sub_20C1358E4();
    v144 = *(v689 + 16);
    v144(v655, v679, v696);
    v145 = v690;
    v146 = v691[2];
    v146(v664, v680, v690);
    v699.i64[0] = v146;
    v146(v665, v681, v145);
    v147 = (v692 + 16);
    v148 = *(v692 + 16);
    v148(v673, v682, v695);
    sub_20B6AE918(v674, v645);
    type metadata accessor for TrainerFilterOptionsShelf();
    v131 = swift_allocObject();
    *(v131 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_20C132ED4();
    v149 = v131 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row;
    sub_20B5D8060(&v714);
    v150 = v719;
    *(v149 + 64) = v718;
    *(v149 + 80) = v150;
    *(v149 + 160) = v724;
    v151 = v723;
    *(v149 + 128) = v722;
    *(v149 + 144) = v151;
    v152 = v721;
    *(v149 + 96) = v720;
    *(v149 + 112) = v152;
    v153 = v715;
    *v149 = v714;
    *(v149 + 16) = v153;
    v154 = v717;
    *(v149 + 32) = v716;
    *(v149 + 48) = v154;
    v155 = *(v143 + 16);
    if (v155)
    {
      v156 = sub_20BEDE7E4(*(v143 + 16), 0);
      v157 = *(sub_20C134E04() - 8);
      v158 = sub_20BEE203C(&v702, (v156 + ((*(v157 + 80) + 32) & ~*(v157 + 80))), v155, v143);
      sub_20B583EDC();
      if (v158 != v155)
      {
        __break(1u);
        while (1)
        {
          v159 = *v122++;
          --v121;
          if (v159 == 6)
          {
            break;
          }

LABEL_27:
          if (!v121)
          {
            goto LABEL_28;
          }
        }

        sub_20C135864();
        v259 = sub_20C13CFB4();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20);
        v700.i64[0] = swift_allocObject();
        *(v700.i64[0] + 16) = xmmword_20C14F980;
        v669 = *(v689 + 16);
        v670 = (v689 + 16);
        (v669)(v646, v679, v696);
        v260 = v690;
        v261 = v691 + 2;
        v262 = v691[2];
        v262(v647, v680, v690);
        v679 = v261;
        v671 = v262;
        v262(v638, v681, v260);
        v263 = *(v692 + 16);
        v264 = v682;
        v693 = (v692 + 16);
        v682 = v263;
        v263(v667, v264, v695);
        sub_20B6AE918(v674, v639);
        v666 = type metadata accessor for TVCatalogThemeFilterOptionsShelf();
        v265 = swift_allocObject();
        *(v265 + 24) = 0;
        swift_unknownObjectWeakInit();
        sub_20C132ED4();
        v672 = v265;
        v266 = v265 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row;
        sub_20B5D8060(&v714);
        v267 = v723;
        *(v266 + 128) = v722;
        *(v266 + 144) = v267;
        *(v266 + 160) = v724;
        v268 = v719;
        *(v266 + 64) = v718;
        *(v266 + 80) = v268;
        v269 = v721;
        *(v266 + 96) = v720;
        *(v266 + 112) = v269;
        v270 = v715;
        *v266 = v714;
        *(v266 + 16) = v270;
        v271 = v717;
        *(v266 + 32) = v716;
        *(v266 + 48) = v271;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
        sub_20C133AA4();
        v272 = *(v259 + 32);
        LODWORD(v261) = v272 & 0x3F;
        v674 = ((1 << v272) + 63) >> 6;
        v273 = (8 * v674);
        v274 = swift_bridgeObjectRetain_n();
        v699.i64[0] = v259;
        if (v261 > 0xD)
        {
          goto LABEL_120;
        }

        while (1)
        {
          v673 = &v637;
          MEMORY[0x28223BE20](v274);
          v680 = &v637 - ((v273 + 15) & 0x3FFFFFFFFFFFFFF0);
          bzero(v680, v273);
          v681 = 0;
          v275 = 0;
          v276 = v259 + 56;
          v277 = 1 << *(v259 + 32);
          v278 = -1;
          if (v277 < 64)
          {
            v278 = ~(-1 << v277);
          }

          v279 = v278 & *(v259 + 56);
          v280 = (v277 + 63) >> 6;
          v698.i64[0] = (v684 + 2);
          v697.i64[0] = (v684 + 1);
          v281 = v684;
          while (v279)
          {
            v282 = __clz(__rbit64(v279));
            v279 &= v279 - 1;
LABEL_72:
            v285 = v282 | (v275 << 6);
            v273 = v677;
            v286 = v683;
            v281[2](v677, *(v699.i64[0] + 48) + v281[9] * v285, v683);
            v287 = sub_20C133A64();
            (v281[1])(v273, v286);
            if (v287)
            {
              *&v680[(v285 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v285;
              v288 = __OFADD__(v681++, 1);
              if (v288)
              {
                __break(1u);
LABEL_76:
                v289 = v699.i64[0];
                v290 = sub_20BC0E730(v680, v674, v681, v699.i64[0]);
                goto LABEL_77;
              }
            }
          }

          v283 = v275;
          while (1)
          {
            v275 = v283 + 1;
            if (__OFADD__(v283, 1))
            {
              break;
            }

            if (v275 >= v280)
            {
              goto LABEL_76;
            }

            v284 = *(v276 + 8 * v275);
            ++v283;
            if (v284)
            {
              v282 = __clz(__rbit64(v284));
              v279 = (v284 - 1) & v284;
              goto LABEL_72;
            }
          }

          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:

          if (!swift_stdlib_isStackAllocationSafe())
          {
            break;
          }

          v259 = v699.i64[0];
        }

        v583 = swift_slowAlloc();
        v584 = v676;
        v585 = sub_20B9840FC(v583, v674, v699.i64[0], sub_20BC68DB0, 0);
        v676 = v584;
        if (v584)
        {
          goto LABEL_135;
        }

        v586 = v585;
        v289 = v699.i64[0];

        MEMORY[0x20F2F6A40](v583, -1, -1);
        v290 = v586;
LABEL_77:
        *&v702 = v290;
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E38);
        sub_20B88FA5C();
        v273 = &v702;
        v673 = sub_20C13CBF4();

        v292 = *(v289 + 32);
        v293 = v292 & 0x3F;
        v294 = ((1 << v292) + 63) >> 6;
        v674 = v294;
        if (v293 > 0xD)
        {
          v582 = 8 * v294;

          v273 = v582;
          if (!swift_stdlib_isStackAllocationSafe())
          {
            v587 = swift_slowAlloc();
            v588 = v676;
            v589 = sub_20B9840FC(v587, v674, v699.i64[0], sub_20BC68DE4, 0);
            v676 = v588;
            if (v588)
            {

              v636 = v587;
              goto LABEL_137;
            }

            v309 = v589;

            MEMORY[0x20F2F6A40](v587, -1, -1);
            v167 = *(v309 + 16);
            if (v167)
            {
              goto LABEL_93;
            }

            goto LABEL_128;
          }

          v289 = v699.i64[0];
        }

        v668 = &v637;
        MEMORY[0x28223BE20](v291);
        v680 = &v637 - ((v295 + 15) & 0x3FFFFFFFFFFFFFF0);
        bzero(v680, v295);
        v681 = 0;
        v296 = 0;
        v297 = v289 + 56;
        v298 = 1 << *(v289 + 32);
        v299 = -1;
        if (v298 < 64)
        {
          v299 = ~(-1 << v298);
        }

        v300 = v299 & *(v289 + 56);
        v301 = (v298 + 63) >> 6;
        v698.i64[0] = (v684 + 2);
        v697.i64[0] = (v684 + 1);
        while (1)
        {
          if (v300)
          {
            v302 = __clz(__rbit64(v300));
            v300 &= v300 - 1;
          }

          else
          {
            v303 = v296;
            do
            {
              v296 = v303 + 1;
              if (__OFADD__(v303, 1))
              {
                goto LABEL_119;
              }

              if (v296 >= v301)
              {
                goto LABEL_92;
              }

              v304 = *(v297 + 8 * v296);
              ++v303;
            }

            while (!v304);
            v302 = __clz(__rbit64(v304));
            v300 = (v304 - 1) & v304;
          }

          v305 = v302 | (v296 << 6);
          v307 = v683;
          v306 = v684;
          v273 = v677;
          v684[2](v677, *(v699.i64[0] + 48) + v684[9] * v305, v683);
          v308 = sub_20C133A64();
          v306[1](v273, v307);
          if (!v308)
          {
            *&v680[(v305 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v305;
            v288 = __OFADD__(v681++, 1);
            if (v288)
            {
              break;
            }
          }
        }

        __break(1u);
LABEL_92:
        v309 = sub_20BC0E730(v680, v674, v681, v699.i64[0]);
        v167 = *(v309 + 16);
        if (v167)
        {
LABEL_93:
          v310 = sub_20BEDE94C(v167, 0);
          v311 = sub_20BEE2084(&v702, &v310[(*(v684 + 80) + 32) & ~*(v684 + 80)], v167, v309);
          v99 = *(&v702 + 1);
          v94 = v702;
          v166 = v703;
          v168 = v704;

          sub_20B583EDC();
          if (v311 != v167)
          {
            __break(1u);
LABEL_95:

            v176 = MEMORY[0x277D84F90];
LABEL_96:
            v312 = v676;
            *&v713[0] = v176;

            sub_20B9809B0(v713);
            if (!v312)
            {

              v697.i64[0] = *&v713[0];
              (v94)(v686, v99, v696);
              v313 = v690;
              v314 = v698.i64[0];
              (v698.i64[0])(v687, v648, v690);
              (v167)(v694, v668, v695);
              v314(v688, v649, v313);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E70);
              v315 = swift_allocObject();
              *(v315 + 48) = 0u;
              *(v315 + 64) = 0u;
              *(v315 + 80) = 0u;
              *(v315 + 96) = 0u;
              *(v315 + 112) = 0u;
              v316 = *v315;
              v693 = v166;
              v317 = *(v316 + 176);
              v318 = sub_20C138244();
              v319 = *(v318 - 8);
              v684 = v167;
              v320 = *(v319 + 56);
              v320(v315 + v317, 1, 1, v318);
              v320(v315 + *(*v315 + 184), 1, 1, v318);
              v320(v315 + *(*v315 + 192), 1, 1, v318);
              *(v315 + 40) = v685;

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
              sub_20C133AA4();
              v321 = *(&v713[0] + 1);
              *(v315 + 16) = *&v713[0];
              *(v315 + 24) = v321;
              sub_20C13A924();
              swift_allocObject();
              swift_unknownObjectRetain();
              v322 = sub_20C13A914();
              v323 = v691;
              v324 = v691[1];
              v324(v649, v313);
              v324(v648, v313);
              v325 = v689;
              v326 = v696;
              (*(v689 + 8))(v99, v696);
              *(v315 + 32) = v322;
              v327 = v697.i64[0];
              *(v315 + *(*v315 + 216)) = v697.i64[0];
              *(v315 + *(*v315 + 224)) = v327;
              *(v315 + *(*v315 + 208)) = 0;
              *(v315 + *(*v315 + 200)) = v678;
              (*(v325 + 32))(v315 + qword_27C79BF30, v686, v326);
              v328 = v687;
              (v698.i64[0])(v315 + qword_27C79BF38, v687, v313);
              v329 = v323[4];
              v329(v315 + *(*v315 + 232), v328, v313);
              v329(v315 + *(*v315 + 240), v688, v313);
              v330 = *(*v315 + 248);
              v331 = v692 + 32;
              v699.i64[0] = *(v692 + 32);
              v332 = v695;
              (v699.i64[0])(v315 + v330, v694, v695);
              *(v168 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_coordinator) = v315;
              sub_20B6AE988(v641, v168 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_rootModality);
              (v684)(v168 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_filterRoot, v668, v332);
              sub_20B52E424(&v702, v168 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_storefrontLocalizer);
              v333 = swift_allocObject();
              swift_weakInit();
              v334 = *(v315 + 48);
              *(v315 + 48) = sub_20B88FBB0;
              *(v315 + 56) = v333;

              sub_20B583ECC(v334);

              v335 = *(v168 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_coordinator);
              v336 = OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_coordinator;
              v698.i64[0] = OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_coordinator;
              v337 = swift_allocObject();
              swift_weakInit();
              v338 = *(v335 + 64);
              *(v335 + 64) = sub_20B88FBB8;
              *(v335 + 72) = v337;

              sub_20B583ECC(v338);

              v339 = *(v168 + v336);
              v340 = swift_allocObject();
              swift_weakInit();
              v341 = v694;
              v342 = v699.i64[0];
              (v699.i64[0])(v694, v668, v332);
              v343 = (*(v331 + 48) + 24) & ~*(v331 + 48);
              v344 = swift_allocObject();
              *(v344 + 16) = v340;
              v342(v344 + v343, v341, v332);
              v345 = *(v339 + 80);
              *(v339 + 80) = sub_20B88FC84;
              *(v339 + 88) = v344;

              sub_20B583ECC(v345);

              v346 = v698.i64[0];
              v347 = *(v168 + v698.i64[0]);
              v348 = swift_allocObject();
              swift_weakInit();
              v349 = *(v347 + 96);
              *(v347 + 96) = sub_20B7E05FC;
              *(v347 + 104) = v348;

              sub_20B583ECC(v349);

              v350 = *(v168 + v346);
              v351 = swift_allocObject();
              swift_weakInit();

              v352 = *(v350 + 112);
              *(v350 + 112) = sub_20B88FD24;
              *(v350 + 120) = v351;
              swift_retain_n();
              sub_20B583ECC(v352);

              v353 = &off_2822F26E8;
              result = v700.i64[0];
              *(v700.i64[0] + 32) = v168;
LABEL_117:
              *(result + 40) = v353;
              return result;
            }

            goto LABEL_132;
          }

LABEL_129:
          v701 = v310;
          v312 = v676;
          sub_20C06364C(&v701);
          if (!v312)
          {

            *&v702 = v673;
            sub_20B8D91F0(v701);
            v698.i64[0] = v702;
            v590 = v696;
            (v669)(v686, v646, v696);
            v591 = v690;
            v592 = v671;
            (v671)(v687, v647, v690);
            v682(v694, v667, v695);
            v593 = v638;
            v592(v688, v638, v591);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E48);
            v594 = swift_allocObject();
            *(v594 + 48) = 0u;
            *(v594 + 64) = 0u;
            *(v594 + 80) = 0u;
            *(v594 + 96) = 0u;
            *(v594 + 112) = 0u;
            v595 = v683;
            v596 = v684[7];
            (v596)(v594 + *(*v594 + 176), 1, 1, v683);
            (v596)(v594 + *(*v594 + 184), 1, 1, v595);
            (v596)(v594 + *(*v594 + 192), 1, 1, v595);
            *(v594 + 40) = v685;

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
            sub_20C133AA4();
            v597 = *(&v702 + 1);
            *(v594 + 16) = v702;
            *(v594 + 24) = v597;
            sub_20C13A924();
            swift_allocObject();
            swift_unknownObjectRetain();
            v598 = sub_20C13A914();
            v599 = v691;
            v600 = v691[1];
            v600(v593, v591);
            v600(v647, v591);
            v601 = v689;
            (*(v689 + 8))(v646, v590);
            *(v594 + 32) = v598;
            v602 = v698.i64[0];
            *(v594 + *(*v594 + 216)) = v698.i64[0];
            *(v594 + *(*v594 + 224)) = v602;
            *(v594 + *(*v594 + 208)) = 6;
            *(v594 + *(*v594 + 200)) = v678;
            (*(v601 + 32))(v594 + qword_27C79BF30, v686, v590);
            v603 = v687;
            v592((v594 + qword_27C79BF38), v687, v591);
            v604 = v599[4];
            v604(v594 + *(*v594 + 232), v603, v591);
            v604(v594 + *(*v594 + 240), v688, v591);
            v605 = *(*v594 + 248);
            v606 = v692 + 32;
            v697.i64[0] = *(v692 + 32);
            v607 = v695;
            (v697.i64[0])(v594 + v605, v694, v695);
            v608 = v672;
            *&v672[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator] = v594;
            sub_20B6AE988(v639, &v608[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_rootModality]);
            v682(&v608[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_filterRoot], v667, v607);
            sub_20B52E424(v713, &v608[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_storefrontLocalizer]);
            *&v608[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_content] = v699.i64[0];
            v609 = swift_allocObject();
            swift_weakInit();
            v610 = *(v594 + 48);
            *(v594 + 48) = sub_20B88FAC0;
            *(v594 + 56) = v609;

            sub_20B583ECC(v610);

            v611 = *&v608[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator];
            v612 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator;
            v699.i64[0] = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator;
            v613 = swift_allocObject();
            swift_weakInit();
            v614 = *(v611 + 64);
            *(v611 + 64) = sub_20B88FAC8;
            *(v611 + 72) = v613;

            sub_20B583ECC(v614);

            v615 = *&v608[v612];
            v616 = swift_allocObject();
            swift_weakInit();
            v617 = v694;
            v618 = v697.i64[0];
            (v697.i64[0])(v694, v667, v607);
            v619 = (*(v606 + 48) + 24) & ~*(v606 + 48);
            v620 = swift_allocObject();
            *(v620 + 16) = v616;
            v618(v620 + v619, v617, v607);
            v621 = *(v615 + 80);
            *(v615 + 80) = sub_20B88FAD0;
            *(v615 + 88) = v620;

            sub_20B583ECC(v621);

            v622 = v699.i64[0];
            v623 = *&v608[v699.i64[0]];
            v624 = swift_allocObject();
            swift_weakInit();
            v625 = *(v623 + 96);
            *(v623 + 96) = sub_20B7E05FC;
            *(v623 + 104) = v624;

            sub_20B583ECC(v625);

            v626 = *&v608[v622];
            v627 = swift_allocObject();
            swift_weakInit();

            v628 = *(v626 + 112);
            *(v626 + 112) = sub_20B88FAE8;
            *(v626 + 120) = v627;
            swift_retain_n();
            sub_20B583ECC(v628);

            v353 = &off_2822D9808;
            result = v700.i64[0];
            *(v700.i64[0] + 32) = v608;
            goto LABEL_117;
          }

LABEL_133:

          while (1)
          {
            v629 = v672;
            sub_20B583E6C((v672 + 16));
            v583 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_identifier;
            v630 = sub_20C132EE4();
            (*(*(v630 - 8) + 8))(&v583[v629], v630);
            v631 = *&v629[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 144];
            v710 = *&v629[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 128];
            v711 = v631;
            v712 = *&v629[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 160];
            v632 = *&v629[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 80];
            v706 = *&v629[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 64];
            v707 = v632;
            v633 = *&v629[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 112];
            v708 = *&v629[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 96];
            v709 = v633;
            v634 = *&v629[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 16];
            v702 = *&v629[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row];
            v703 = v634;
            v635 = *&v629[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 48];
            v704 = *&v629[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 32];
            v705 = v635;
            sub_20B520158(&v702, &qword_27C762340);
            swift_deallocPartialClassInstance();
            __break(1u);
LABEL_135:

            v636 = v583;
LABEL_137:
            MEMORY[0x20F2F6A40](v636, -1, -1);
          }
        }

LABEL_128:
        v310 = MEMORY[0x277D84F90];
        goto LABEL_129;
      }
    }

    else
    {

      v156 = MEMORY[0x277D84F90];
    }

    v312 = v676;
    *&v702 = v156;

    sub_20B980860(&v702);
    if (!v312)
    {

      v698.i64[0] = v702;
      v144(v686, v655, v696);
      v506 = v690;
      v507 = v699.i64[0];
      (v699.i64[0])(v687, v664, v690);
      v148(v694, v673, v695);
      v507(v688, v665, v506);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E28);
      v508 = swift_allocObject();
      *(v508 + 48) = 0u;
      *(v508 + 64) = 0u;
      *(v508 + 80) = 0u;
      *(v508 + 96) = 0u;
      *(v508 + 112) = 0u;
      v509 = *(*v508 + 176);
      v510 = sub_20C134E04();
      v511 = *(*(v510 - 8) + 56);
      v697.i64[0] = v148;
      v511(v508 + v509, 1, 1, v510);
      v511(v508 + *(*v508 + 184), 1, 1, v510);
      v511(v508 + *(*v508 + 192), 1, 1, v510);
      *(v508 + 40) = v685;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
      sub_20C133AA4();
      v512 = *(&v702 + 1);
      *(v508 + 16) = v702;
      *(v508 + 24) = v512;
      sub_20C13A924();
      swift_allocObject();
      swift_unknownObjectRetain();
      *(v508 + 32) = sub_20C13A914();
      v513 = v698.i64[0];
      *(v508 + *(*v508 + 216)) = v698.i64[0];
      *(v508 + *(*v508 + 224)) = v513;
      *(v508 + *(*v508 + 208)) = 8;
      *(v508 + *(*v508 + 200)) = v678;
      v693 = v147;
      v514 = v689;
      (*(v689 + 32))(v508 + qword_27C79BF30, v686, v696);
      v515 = v687;
      (v699.i64[0])(v508 + qword_27C79BF38, v687, v506);
      v516 = v691;
      v517 = v691[4];
      v517(v508 + *(*v508 + 232), v515, v506);
      v517(v508 + *(*v508 + 240), v688, v506);
      v518 = *(*v508 + 248);
      v519 = v692 + 32;
      v699.i64[0] = *(v692 + 32);
      v520 = v695;
      (v699.i64[0])(v508 + v518, v694, v695);
      *(v131 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_coordinator) = v508;
      v521 = v645;
      sub_20B6AE918(v645, v131 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_rootModality);
      (v697.i64[0])(v131 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_filterRoot, v673, v520);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
      sub_20C133AA4();
      sub_20B520158(v521, &unk_27C7710A0);
      v522 = v516[1];
      v522(v665, v506);
      v522(v664, v506);
      (*(v514 + 8))(v655, v696);
      sub_20B52E424(&v702, v131 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_storefrontLocalizer);
      v523 = OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_coordinator;
      v524 = *(v131 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_coordinator);
      v525 = swift_allocObject();
      swift_weakInit();
      v526 = *(v524 + 48);
      *(v524 + 48) = sub_20B88F9FC;
      *(v524 + 56) = v525;

      sub_20B583ECC(v526);

      v527 = *(v131 + v523);
      v698.i64[0] = v523;
      v528 = swift_allocObject();
      swift_weakInit();
      v529 = *(v527 + 64);
      *(v527 + 64) = sub_20B88FA04;
      *(v527 + 72) = v528;

      sub_20B583ECC(v529);

      v530 = *(v131 + v523);
      v531 = swift_allocObject();
      swift_weakInit();
      v532 = v694;
      v533 = v699.i64[0];
      (v699.i64[0])(v694, v673, v520);
      v534 = (*(v519 + 48) + 24) & ~*(v519 + 48);
      v535 = swift_allocObject();
      *(v535 + 16) = v531;
      v533(v535 + v534, v532, v520);
      v536 = *(v530 + 80);
      *(v530 + 80) = sub_20B88FA0C;
      *(v530 + 88) = v535;

      sub_20B583ECC(v536);

      v537 = v698.i64[0];
      v538 = *(v131 + v698.i64[0]);
      v539 = swift_allocObject();
      swift_weakInit();
      v540 = *(v538 + 96);
      *(v538 + 96) = sub_20B7E05FC;
      *(v538 + 104) = v539;

      sub_20B583ECC(v540);

      v541 = *(v131 + v537);
      v542 = swift_allocObject();
      swift_weakInit();

      v543 = *(v541 + 112);
      *(v541 + 112) = sub_20B88FA24;
      *(v541 + 120) = v542;
      swift_retain_n();
      sub_20B583ECC(v543);

      v353 = &off_2822E87E0;
      goto LABEL_116;
    }

LABEL_131:

    __break(1u);
    goto LABEL_132;
  }

LABEL_52:
  if (v123 != 4)
  {
    goto LABEL_58;
  }

  do
  {
    if (!v121)
    {
      goto LABEL_28;
    }

    v229 = *v122++;
    --v121;
  }

  while (v229 != 4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20);
  v700.i64[0] = swift_allocObject();
  *(v700.i64[0] + 16) = xmmword_20C14F980;
  v230 = sub_20C1358A4();
  v231 = *(v689 + 16);
  v231(v654, v679, v696);
  v232 = v690;
  v233 = v691[2];
  v233(v660, v680, v690);
  v699.i64[0] = v233;
  v233(v661, v681, v232);
  v234 = (v692 + 16);
  v235 = *(v692 + 16);
  v235(v672, v682, v695);
  sub_20B6AE918(v674, v644);
  type metadata accessor for MusicGenreFilterOptionsShelf();
  v131 = swift_allocObject();
  *(v131 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v236 = v131 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row;
  sub_20B5D8060(&v714);
  v237 = v719;
  *(v236 + 64) = v718;
  *(v236 + 80) = v237;
  *(v236 + 160) = v724;
  v238 = v723;
  *(v236 + 128) = v722;
  *(v236 + 144) = v238;
  v239 = v721;
  *(v236 + 96) = v720;
  *(v236 + 112) = v239;
  v240 = v715;
  *v236 = v714;
  *(v236 + 16) = v240;
  v241 = v717;
  *(v236 + 32) = v716;
  *(v236 + 48) = v241;
  v242 = *(v230 + 16);
  if (!v242)
  {

    v243 = MEMORY[0x277D84F90];
LABEL_114:
    v312 = v676;
    *&v702 = v243;

    sub_20B980908(&v702);
    if (!v312)
    {

      v698.i64[0] = v702;
      v231(v686, v654, v696);
      v544 = v690;
      v545 = v699.i64[0];
      (v699.i64[0])(v687, v660, v690);
      v235(v694, v672, v695);
      v545(v688, v661, v544);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E50);
      v546 = swift_allocObject();
      *(v546 + 48) = 0u;
      *(v546 + 64) = 0u;
      *(v546 + 80) = 0u;
      *(v546 + 96) = 0u;
      *(v546 + 112) = 0u;
      v547 = *(*v546 + 176);
      v548 = sub_20C1333E4();
      v549 = *(*(v548 - 8) + 56);
      v697.i64[0] = v235;
      v549(v546 + v547, 1, 1, v548);
      v549(v546 + *(*v546 + 184), 1, 1, v548);
      v549(v546 + *(*v546 + 192), 1, 1, v548);
      *(v546 + 40) = v685;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
      sub_20C133AA4();
      v550 = *(&v702 + 1);
      *(v546 + 16) = v702;
      *(v546 + 24) = v550;
      sub_20C13A924();
      swift_allocObject();
      swift_unknownObjectRetain();
      *(v546 + 32) = sub_20C13A914();
      v551 = v698.i64[0];
      *(v546 + *(*v546 + 216)) = v698.i64[0];
      *(v546 + *(*v546 + 224)) = v551;
      *(v546 + *(*v546 + 208)) = 4;
      *(v546 + *(*v546 + 200)) = v678;
      v693 = v234;
      v552 = v689;
      (*(v689 + 32))(v546 + qword_27C79BF30, v686, v696);
      v553 = v687;
      (v699.i64[0])(v546 + qword_27C79BF38, v687, v544);
      v554 = v691;
      v555 = v691[4];
      v555(v546 + *(*v546 + 232), v553, v544);
      v555(v546 + *(*v546 + 240), v688, v544);
      v556 = *(*v546 + 248);
      v557 = v692 + 32;
      v699.i64[0] = *(v692 + 32);
      v558 = v695;
      (v699.i64[0])(v546 + v556, v694, v695);
      *(v131 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_coordinator) = v546;
      v559 = v644;
      sub_20B6AE918(v644, v131 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_rootModality);
      (v697.i64[0])(v131 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_filterRoot, v672, v558);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
      sub_20C133AA4();
      sub_20B520158(v559, &unk_27C7710A0);
      v560 = v554[1];
      v560(v661, v544);
      v560(v660, v544);
      (*(v552 + 8))(v654, v696);
      sub_20B52E424(&v702, v131 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_storefrontLocalizer);
      v561 = OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_coordinator;
      v562 = *(v131 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_coordinator);
      v563 = swift_allocObject();
      swift_weakInit();
      v564 = *(v562 + 48);
      *(v562 + 48) = sub_20B88FAF0;
      *(v562 + 56) = v563;

      sub_20B583ECC(v564);

      v565 = *(v131 + v561);
      v698.i64[0] = v561;
      v566 = swift_allocObject();
      swift_weakInit();
      v567 = *(v565 + 64);
      *(v565 + 64) = sub_20B88FAF8;
      *(v565 + 72) = v566;

      sub_20B583ECC(v567);

      v568 = *(v131 + v561);
      v569 = swift_allocObject();
      swift_weakInit();
      v570 = v694;
      v571 = v699.i64[0];
      (v699.i64[0])(v694, v672, v558);
      v572 = (*(v557 + 48) + 24) & ~*(v557 + 48);
      v573 = swift_allocObject();
      *(v573 + 16) = v569;
      v571(v573 + v572, v570, v558);
      v574 = *(v568 + 80);
      *(v568 + 80) = sub_20B88FB00;
      *(v568 + 88) = v573;

      sub_20B583ECC(v574);

      v575 = v698.i64[0];
      v576 = *(v131 + v698.i64[0]);
      v577 = swift_allocObject();
      swift_weakInit();
      v578 = *(v576 + 96);
      *(v576 + 96) = sub_20B7E05FC;
      *(v576 + 104) = v577;

      sub_20B583ECC(v578);

      v579 = *(v131 + v575);
      v580 = swift_allocObject();
      swift_weakInit();

      v581 = *(v579 + 112);
      *(v579 + 112) = sub_20B88FB18;
      *(v579 + 120) = v580;
      swift_retain_n();
      sub_20B583ECC(v581);

      v353 = &off_2822E91C0;
      goto LABEL_116;
    }

    goto LABEL_131;
  }

  v243 = sub_20BEDE8D4(*(v230 + 16), 0);
  v244 = *(sub_20C1333E4() - 8);
  v245 = sub_20BEE206C(&v702, (v243 + ((*(v244 + 80) + 32) & ~*(v244 + 80))), v242, v230);
  sub_20B583EDC();
  if (v245 == v242)
  {
    goto LABEL_114;
  }

  __break(1u);
LABEL_58:
  while (v121)
  {
    v246 = *v122++;
    --v121;
    if (v246 == 5)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20);
      v247 = swift_allocObject();
      *(v247 + 16) = xmmword_20C14F980;
      v248 = sub_20C1358B4();
      v249 = sub_20C1358D4();
      v250 = v686;
      (*(v689 + 16))(v686, v679, v696);
      v251 = v690;
      v252 = v691[2];
      v253 = v687;
      v252(v687, v680, v690);
      v254 = v688;
      v252(v688, v681, v251);
      v255 = v694;
      (*(v692 + 16))(v694, v682, v695);
      v256 = v637;
      sub_20B6AE918(v674, v637);
      type metadata accessor for SkillLevelFilterOptionsShelf();
      swift_allocObject();

      v258 = sub_20B7DC03C(v257, v248, v249, v250, v253, v254, v255, v256, v678);
      result = v247;
      *(v247 + 32) = v258;
      *(v247 + 40) = &off_2822A7FB8;
      return result;
    }
  }

LABEL_28:

  return MEMORY[0x277D84F90];
}

unint64_t sub_20B88FA5C()
{
  result = qword_27C766E40;
  if (!qword_27C766E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C766E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766E40);
  }

  return result;
}

uint64_t objectdestroy_4Tm_0()
{
  v1 = sub_20C134EC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B88FC9C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_20C134EC4() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_20B88FD2C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20B88FD74(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  v8 = (a5 >> 5) & 3;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      MEMORY[0x20F2F58E0](6);
      v11 = a2 & 1;
    }

    else
    {
      v13 = a4 | a3;
      if (a4 | a3 | a2 || a5 != 96)
      {
        if (a5 == 96 && a2 == 1 && !v13)
        {
          v11 = 2;
        }

        else if (a5 == 96 && a2 == 2 && !v13)
        {
          v11 = 4;
        }

        else if (a5 == 96 && a2 == 3 && !v13)
        {
          v11 = 5;
        }

        else
        {
          v11 = 7;
        }
      }

      else
      {
        v11 = 1;
      }
    }

    MEMORY[0x20F2F58E0](v11);
  }

  else
  {
    if (!v8)
    {
      MEMORY[0x20F2F58E0](0);
      sub_20C13CA64();
      if (a4)
      {
        sub_20C13E184();
        v10 = a4;
        sub_20C13D604();

        if ((a5 & 0x80) == 0)
        {
LABEL_5:
          MEMORY[0x20F2F58E0](0);
LABEL_26:
          sub_20C13CA64();

          return;
        }
      }

      else
      {
        sub_20C13E184();
        if ((a5 & 0x80) == 0)
        {
          goto LABEL_5;
        }
      }

      MEMORY[0x20F2F58E0](1);
      goto LABEL_26;
    }

    MEMORY[0x20F2F58E0](3);
    if (a2)
    {
      sub_20C13E184();
      v12 = a2;
      sub_20C13D604();

      sub_20B8403A8(a2, a3, a4, a5);
    }

    else
    {
      sub_20C13E184();
    }
  }
}

uint64_t sub_20B890004()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_20C13E164();
  sub_20B88FD74(v6, v1, v2, v3, v4);
  return sub_20C13E1B4();
}

uint64_t sub_20B890078()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_20C13E164();
  sub_20B88FD74(v6, v1, v2, v3, v4);
  return sub_20C13E1B4();
}

unint64_t sub_20B890100()
{
  result = qword_27C766E80;
  if (!qword_27C766E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766E80);
  }

  return result;
}

uint64_t sub_20B890154(unint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, unint64_t a5, uint64_t a6, unint64_t a7, unsigned int a8)
{
  v8 = (a4 >> 5) & 3;
  if (v8 <= 1)
  {
    if (!v8)
    {
      if ((a8 & 0x60) != 0)
      {
        return 0;
      }

      if (a1 != a5 || a2 != a6)
      {
        v9 = a3;
        v10 = a4;
        v11 = a8;
        v12 = a7;
        v13 = sub_20C13DFF4();
        a3 = v9;
        LOBYTE(a4) = v10;
        a7 = v12;
        LOBYTE(a8) = v11;
        if ((v13 & 1) == 0)
        {
          return 0;
        }
      }

      if (a3)
      {
        if (!a7)
        {
          return 0;
        }

        v14 = a3;
        v15 = a8;
        v16 = a7;
        v17 = a4;
        sub_20B51C88C(0, &qword_27C7626E8);
        v18 = v16;
        v19 = v14;
        v20 = sub_20C13D5F4();

        LOBYTE(a4) = v17;
        LOBYTE(a8) = v15;
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      else if (a7)
      {
        return 0;
      }

      return (sub_20B660644(a4, a8) & 1) != 0;
    }

    if ((a8 & 0x60) != 0x20)
    {
      return 0;
    }

    if (a1)
    {
      if (a5)
      {
        v24 = a3;
        v25 = a8;
        v26 = a7;
        v29 = a4;
        sub_20B51C88C(0, &qword_27C762910);
        sub_20B890480(a5, a6, v26, v25);
        sub_20B890480(a1, a2, v24, v29);
        v30 = sub_20C13D5F4();
        sub_20B8403A8(a1, a2, v24, v29);
        sub_20B8403A8(a5, a6, v26, v25);
        if (v30)
        {
          return 1;
        }
      }

      return 0;
    }

    return !a5;
  }

  if (v8 == 2)
  {
    if ((a8 & 0x60) == 0x40)
    {
      return ((a5 ^ a1) & 1) == 0;
    }

    return 0;
  }

  v31 = a3 | a2;
  if (!(a3 | a2 | a1) && a4 == 96)
  {
    return (~a8 & 0x60) == 0 && !(a7 | a6 | a5) && a8 == 96;
  }

  if (a4 == 96 && a1 == 1 && !v31)
  {
    if ((~a8 & 0x60) != 0 || a8 != 96 || a5 != 1)
    {
      return 0;
    }
  }

  else if (a4 == 96 && a1 == 2 && !v31)
  {
    if ((~a8 & 0x60) != 0 || a8 != 96 || a5 != 2)
    {
      return 0;
    }
  }

  else if (a4 == 96 && a1 == 3 && !v31)
  {
    if ((~a8 & 0x60) != 0 || a8 != 96 || a5 != 3)
    {
      return 0;
    }
  }

  else if ((~a8 & 0x60) != 0 || a8 != 96 || a5 != 4)
  {
    return 0;
  }

  return !(a7 | a6);
}

id sub_20B890480(id result, uint64_t a2, void *a3, unsigned int a4)
{
  v5 = (a4 >> 5) & 3;
  if (v5 == 1)
  {

    return result;
  }

  else if (!v5)
  {
    v6 = a3;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI17UpNextQueueActionO(uint64_t a1)
{
  v1 = (*(a1 + 24) >> 5) & 3;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_20B8904F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1D && *(a1 + 25))
  {
    return (*a1 + 29);
  }

  v3 = (*(a1 + 24) & 0x1C | (*(a1 + 24) >> 5) & 3) ^ 0x1F;
  if (v3 >= 0x1C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_20B890548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 29;
    if (a3 >= 0x1D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * ((((-a2 >> 2) & 7) - 8 * a2) & 0x1F);
    }
  }

  return result;
}

uint64_t sub_20B8905B4(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 24) = *(result + 24) & 0x83 | (32 * a2);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    *(result + 24) = 96;
  }

  return result;
}

uint64_t NavigationRequestApplying<>.allowedToApplyRequest(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NavigationIntent();
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationRequest();
  sub_20B895280(a1 + v10[5], v9, type metadata accessor for NavigationIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v30 = sub_20C139144();
      (*(*(v30 - 8) + 8))(v9, v30);
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 4)
    {

      v35 = [v2 presentedViewController];
      if (v35)
      {
        v36 = v35;
        type metadata accessor for SessionViewController();
        v37 = swift_dynamicCastClass();
        if (!v37)
        {
        }
      }

      else
      {
        v37 = 0;
      }

      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);

      sub_20B895280(a1 + v10[6], v6, type metadata accessor for NavigationSource);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = sub_20C135024();
        (*(*(v39 - 8) + 8))(v6, v39);
        sub_20B520158(&v9[v38], &qword_27C766E88);
        v22 = 1;
      }

      else
      {
        v22 = v37 == 0;
        sub_20B8954F0(v6, type metadata accessor for NavigationSource);
        sub_20B520158(&v9[v38], &qword_27C766E88);
      }

      return v22 & 1;
    }

    sub_20B8954F0(v9, type metadata accessor for NavigationIntent);
    v20 = [v2 presentedViewController];
    if (v20)
    {
      v21 = v20;
      type metadata accessor for QueuedSessionViewController();
      v22 = swift_dynamicCastClass() == 0;

      return v22 & 1;
    }

LABEL_25:
    v22 = 1;
    return v22 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    v23 = [v2 presentedViewController];
    if (v23)
    {
      v24 = v23;
      ObjectType = swift_getObjectType();
      v26 = swift_conformsToProtocol2();
      if (!v26)
      {

        v22 = 1;
        return v22 & 1;
      }

      if (*(a1 + v10[8]))
      {
        v27 = *(v26 + 8);
        v28 = v26;
        v29 = v24;
        v22 = v27(a1, ObjectType, v28);

        return v22 & 1;
      }

LABEL_18:
      v22 = 0;
      return v22 & 1;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v31 = [v2 topViewController];
    if (v31)
    {
      v32 = v31;
      v33 = swift_getObjectType();
      v34 = swift_conformsToProtocol2();
      if (v34)
      {
        v22 = (*(v34 + 8))(a1, v33, v34);

        return v22 & 1;
      }
    }

    v22 = *(a1 + v10[8]) != 0;
    return v22 & 1;
  }

  v12 = [v2 presentedViewController];
  v13 = v12;
  if (v12)
  {
  }

  v14 = *(a1 + v10[8]);
  v15 = [v2 presentedViewController];
  if (v15)
  {
    v16 = v15;
    v17 = swift_getObjectType();
    v18 = swift_conformsToProtocol2();
    if (v18)
    {
      v19 = (*(v18 + 8))(a1, v17, v18);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v13)
  {
    v40 = v14 == 2;
  }

  else
  {
    v40 = 1;
  }

  v41 = v40;
  v22 = v41 | v19;
  return v22 & 1;
}

void NavigationRequestApplying<>.apply(request:using:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a6;
  v66 = a5;
  v63 = a2;
  v9 = type metadata accessor for NavigationRequest();
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = v10;
  v64 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D260);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - v15;
  v17 = sub_20C13BB84();
  v58 = *(v17 - 8);
  v59 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v20);
  v22 = (&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = a1;
  sub_20B895280(a1, v22, type metadata accessor for NavigationResource);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v23 = *v22;
    v24 = *(a4 + 16);
    v25 = v24(a3, a4);
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v27 = v24(a3, a4);
      [v23 setDelegate_];

      v28 = swift_allocObject();
      *(v28 + 16) = Strong;
      *(v28 + 24) = v23;
      sub_20C137C94();
    }

    else
    {
      sub_20C13B424();
      v51 = sub_20C13BB74();
      v52 = sub_20C13D1E4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_20B517000, v51, v52, "Purchase handler not configured to handle Purchase!", v53, 2u);
        MEMORY[0x20F2F6A40](v53, -1, -1);
      }

      (*(v58 + 8))(v19, v59);
      sub_20B5D9BA8();
      v54 = swift_allocError();
      *v55 = 11;
      *(swift_allocObject() + 16) = v54;
      sub_20C137CA4();
    }
  }

  else
  {
    sub_20B8954F0(v22, type metadata accessor for NavigationResource);
    v59 = v13;
    v29 = a4;
    v30 = v63;
    v31 = v63[3];
    v32 = v63[4];
    v33 = __swift_project_boxed_opaque_existential_1(v63, v31);
    v57 = v16;
    v58 = v11;
    v56 = v33;
    v34 = a3;
    v35 = (*(v29 + 24))(a3, v29);
    v36 = (*(v29 + 32))(v34, v29);
    v37 = v62;
    (*(v32 + 16))(v62, v35, v36, v31, v32);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v38 = v64;
    sub_20B895280(v37, v64, type metadata accessor for NavigationRequest);
    sub_20B51CC64(v30, v69);
    v39 = (*(v60 + 80) + 48) & ~*(v60 + 80);
    v40 = (v61 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    *(v41 + 2) = v34;
    *(v41 + 3) = v29;
    v42 = v68;
    *(v41 + 4) = v66;
    *(v41 + 5) = v42;
    sub_20B895488(v38, v41 + v39, type metadata accessor for NavigationRequest);
    sub_20B51C710(v69, v41 + v40);
    v43 = v65;
    v45 = v57;
    v44 = v58;
    (*(v12 + 16))(v65, v57, v58);
    v46 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v47 = (v59 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    (*(v12 + 32))(v48 + v46, v43, v44);
    v49 = (v48 + v47);
    *v49 = sub_20B894468;
    v49[1] = v41;
    v50 = v42;
    sub_20C137C94();
    (*(v12 + 8))(v45, v44);
  }
}

uint64_t sub_20B8911B0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  v12 = (*(v11 + 8))(v10, v11);
  (*(a6 + 56))(v9, a3, v12, a5, a6);
}

void sub_20B89127C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_20C138F84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();

    sub_20C138F74();
    sub_20B89556C(&qword_27C76C460, MEMORY[0x277D541F0]);
    sub_20C13A764();
    swift_unknownObjectRelease();
    (*(v9 + 8))(v11, v8);
  }

  else
  {
  }

  v13 = [a4 performPurchase];
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = sub_20B5DF614;
  v14[4] = v12;
  aBlock[4] = sub_20B895550;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B98FE2C;
  aBlock[3] = &block_descriptor_124_0;
  v15 = _Block_copy(aBlock);
  v16 = a3;

  [v13 addFinishBlock_];
  _Block_release(v15);
}

uint64_t sub_20B8914F8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_20C13C4B4();
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20C13C4F4();
  v13 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51C88C(0, &qword_281100530);
  v24 = sub_20C13D374();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_20B89555C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_130;
  v17 = _Block_copy(aBlock);
  v18 = a3;
  v19 = a1;
  v20 = a2;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B89556C(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  v21 = v24;
  MEMORY[0x20F2F4AF0](0, v15, v12, v17);
  _Block_release(v17);

  (*(v26 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v25);
}

void sub_20B8917EC(uint64_t a1, void *a2, void *a3, void (*a4)(void *, void))
{
  sub_20C065618(a2, a3, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
  sub_20C13E1D4();
  a4(v5, v6);
  sub_20B583FB8(v5, v6);
}

uint64_t NavigationRequestApplying<>.apply(viewController:from:dependencies:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v145 = a5;
  v146 = a6;
  v143 = a1;
  v144 = a4;
  v141 = a3;
  v153 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764410);
  v137 = *(v10 - 8);
  v138 = v10;
  MEMORY[0x28223BE20](v10);
  v134 = v11;
  v135 = &v130[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v136 = &v130[-v13];
  v133 = sub_20C13A484();
  MEMORY[0x28223BE20](v133);
  v142 = &v130[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for NavigationRequest();
  v139 = *(v15 - 8);
  v16 = *(v139 + 64);
  MEMORY[0x28223BE20](v15);
  v140 = &v130[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v150 = *(v17 - 8);
  v151 = v17;
  MEMORY[0x28223BE20](v17);
  v147 = v18;
  v148 = &v130[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v149 = &v130[-v20];
  v21 = type metadata accessor for NavigationIntent();
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v24 = &v130[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = [v8 presentedViewController];
  v26 = v25;
  if (v25)
  {
  }

  v27 = *(v15 + 32);
  v28 = a2;
  v29 = *(a2 + v27);
  v152 = v8;
  if (v29 == 2 || (v30 = [v8 presentedViewController]) != 0 && (v31 = v30, type metadata accessor for UpNextPopoverNavigationController(), v32 = swift_dynamicCastClass(), v31, v32))
  {
    v33 = 1;
    if (v26)
    {
      v34 = 0;
      v35 = v28;
      goto LABEL_15;
    }
  }

  else
  {
    v36 = [v8 presentedViewController];
    if (v36)
    {
      v37 = v36;
      type metadata accessor for UpNextQueueViewController();
      v38 = swift_dynamicCastClass();
      v34 = v38 == 0;
      v33 = v38 != 0;

      v35 = v28;
      if (v26)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v33 = 0;
    if (v26)
    {
      v34 = 1;
      v35 = v28;
      goto LABEL_15;
    }
  }

  v35 = v28;
LABEL_14:
  v34 = 1;
LABEL_15:
  sub_20B895280(v35 + *(v15 + 20), v24, type metadata accessor for NavigationIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v40 = *v24;
        v41 = v140;
        sub_20B895280(v35, v140, type metadata accessor for NavigationRequest);
        v42 = (*(v139 + 80) + 41) & ~*(v139 + 80);
        v43 = swift_allocObject();
        v45 = v144;
        v44 = v145;
        *(v43 + 16) = v144;
        *(v43 + 24) = v44;
        v46 = v146;
        *(v43 + 32) = v146;
        *(v43 + 40) = v33;
        sub_20B895488(v41, v43 + v42, type metadata accessor for NavigationRequest);
        v47 = v43 + ((v16 + v42 + 7) & 0xFFFFFFFFFFFFFFF8);
        v48 = v152;
        *v47 = v152;
        *(v47 + 8) = v40;
        v49 = v48;
        v50 = v149;
        sub_20C137C94();
        v51 = swift_allocObject();
        *(v51 + 16) = v45;
        *(v51 + 24) = v44;
        *(v51 + 32) = v46;
        *(v51 + 40) = v49;
        v52 = v143;
        *(v51 + 48) = v143;
        *(v51 + 56) = v40;
        v53 = swift_allocObject();
        *(v53 + 16) = sub_20B894868;
        *(v53 + 24) = v51;
        v55 = v150;
        v54 = v151;
        v56 = v148;
        (*(v150 + 16))(v148, v50, v151);
        v57 = (*(v55 + 80) + 16) & ~*(v55 + 80);
        v58 = (v147 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
        v59 = swift_allocObject();
        (*(v55 + 32))(v59 + v57, v56, v54);
        v60 = (v59 + v58);
        *v60 = sub_20B8955C4;
        v60[1] = v53;
        v61 = v49;
        v62 = v52;
LABEL_22:
        sub_20C137C94();
        return (*(v55 + 8))(v50, v54);
      }

      v88 = *v24;
      if (v26)
      {
        if (v33)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
          v89 = swift_allocObject();
          *(v89 + 16) = xmmword_20C14F580;
          v90 = v143;
          *(v89 + 32) = v143;
          sub_20B51C88C(0, &qword_281100550);
          v91 = v90;
          v92 = sub_20C13CC54();

          v93 = v152;
          [v152 setViewControllers:v92 animated:v34 & v88];

          [v93 dismissViewControllerAnimated:v88 & 1 completion:0];
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_20C14F580;
        v96 = v143;
        *(v95 + 32) = v143;
        sub_20B51C88C(0, &qword_281100550);
        v97 = v96;
        v98 = sub_20C13CC54();

        [v152 setViewControllers:v98 animated:v88 & 1];
      }

      return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
    }

    v83 = *v24;
    if (*(v35 + v27) == 1)
    {
      v84 = v152;
      v85 = [v152 presentedViewController];
      if (!v85)
      {
        v85 = v84;
      }

      v86 = v85;
      [v85 presentViewController:v143 animated:v83 completion:0];

      return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
    }

    v94 = v152;
    if (v26)
    {
      if (!v33)
      {
        return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
      }

      [v152 dismissViewControllerAnimated:0 completion:0];
    }

    [v94 presentViewController:v143 animated:v83 completion:0];
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  if (EnumCaseMultiPayload == 3)
  {
    _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
    v87 = sub_20C139144();
    return (*(*(v87 - 8) + 8))(v24, v87);
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v63 = v26 != 0;
      v64 = *v24;
      v65 = objc_allocWithZone(type metadata accessor for QueuedSessionViewController());

      v67 = QueuedSessionViewController.init(dependencies:queueItems:playContext:)(v66, v64, 0, 0);
      [v67 setModalPresentationStyle_];
      v68 = swift_allocObject();
      v70 = v144;
      v69 = v145;
      *(v68 + 16) = v144;
      *(v68 + 24) = v69;
      v71 = v146;
      *(v68 + 32) = v146;
      *(v68 + 40) = v63;
      v72 = v152;
      *(v68 + 48) = v152;
      v73 = v72;
      v50 = v149;
      sub_20C137C94();
      v74 = swift_allocObject();
      v74[2] = v70;
      v74[3] = v69;
      v74[4] = v71;
      v74[5] = v73;
      v74[6] = v67;
      v75 = swift_allocObject();
      *(v75 + 16) = sub_20B89474C;
      *(v75 + 24) = v74;
      v55 = v150;
      v54 = v151;
      v76 = v148;
      (*(v150 + 16))(v148, v50, v151);
      v77 = (*(v55 + 80) + 16) & ~*(v55 + 80);
      v78 = (v147 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
      v79 = swift_allocObject();
      (*(v55 + 32))(v79 + v77, v76, v54);
      v80 = (v79 + v78);
      *v80 = sub_20B7F133C;
      v80[1] = v75;
      v81 = v73;
      goto LABEL_22;
    }

    if (!*(v24 + 3))
    {
      sub_20C13CA04();
    }

    v131 = v26 != 0;
    v143 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
    sub_20C13A334();
    swift_allocObject();
    v99 = sub_20C13A314();
    v100 = v142;
    *v142 = v99;
    v132 = v99;
    swift_storeEnumTagMultiPayload();
    v101 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v102 = v140;
    sub_20B895280(v35, v140, type metadata accessor for NavigationRequest);
    v103 = (*(v139 + 80) + 48) & ~*(v139 + 80);
    v104 = swift_allocObject();
    v105 = v145;
    v104[2] = v144;
    v104[3] = v105;
    v104[4] = v146;
    v104[5] = v101;
    sub_20B895488(v102, v104 + v103, type metadata accessor for NavigationRequest);
    v106 = v104 + ((v16 + v103 + 7) & 0xFFFFFFFFFFFFFFF8);
    v107 = v141;
    *v106 = v141;
    v106[8] = v131;

    v108 = v136;
    sub_20BD23C88(v107, v100, v136);
    v109 = swift_allocObject();
    v152 = sub_20B894594;
    *(v109 + 16) = sub_20B894594;
    *(v109 + 24) = v104;
    v110 = swift_allocObject();
    *(v110 + 16) = sub_20B894660;
    *(v110 + 24) = v109;
    v111 = swift_allocObject();
    *(v111 + 16) = sub_20B7DB918;
    *(v111 + 24) = v110;
    v113 = v137;
    v112 = v138;
    v114 = v135;
    v115 = v108;
    (*(v137 + 16))(v135, v108, v138);
    v116 = (*(v113 + 80) + 16) & ~*(v113 + 80);
    v117 = (v134 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
    v118 = swift_allocObject();
    (*(v113 + 32))(v118 + v116, v114, v112);
    v119 = (v118 + v117);
    *v119 = sub_20B89467C;
    v119[1] = v111;

    v120 = v149;
    sub_20C137C94();
    (*(v113 + 8))(v115, v112);
    v121 = swift_allocObject();
    *(v121 + 16) = v152;
    *(v121 + 24) = v104;
    v122 = swift_allocObject();
    *(v122 + 16) = sub_20B8946AC;
    *(v122 + 24) = v121;
    v124 = v150;
    v123 = v151;
    v125 = v148;
    (*(v150 + 16))(v148, v120, v151);
    v126 = (*(v124 + 80) + 16) & ~*(v124 + 80);
    v127 = (v147 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
    v128 = swift_allocObject();
    (*(v124 + 32))(v128 + v126, v125, v123);
    v129 = (v128 + v127);
    *v129 = sub_20B8946F4;
    v129[1] = v122;
    sub_20C137C94();

    (*(v124 + 8))(v120, v123);
    sub_20B8954F0(v142, MEMORY[0x277D4DFB8]);
    return sub_20B520158(v143 + v24, &qword_27C766E88);
  }
}

void sub_20B8926F4(void (*a1)(void **), uint64_t a2, char a3, uint64_t a4, void *a5, int a6)
{
  v36 = a6;
  v37 = a5;
  v10 = type metadata accessor for NavigationRequest();
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_20C13BB84();
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v15);
  v17 = (&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  if (a3)
  {
    *v17 = 0x3932343038373431;
    v17[1] = 0xEA00000000003738;
    swift_storeEnumTagMultiPayload();

    v19 = _s9SeymourUI18NavigationResourceO2eeoiySbAC_ACtFZ_0(a4, v17);
    sub_20B8954F0(v17, type metadata accessor for NavigationResource);
    if (v19)
    {
      sub_20C13B524();
      v20 = v37;
      v21 = sub_20C13BB74();
      v22 = sub_20C13D1F4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = [v20 presentedViewController];
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&dword_20B517000, v21, v22, "[105249313] About to dismiss %@", v23, 0xCu);
        sub_20B520158(v24, &unk_27C762E30);
        MEMORY[0x20F2F6A40](v24, -1, -1);
        MEMORY[0x20F2F6A40](v23, -1, -1);
      }

      (*(v33 + 8))(v14, v34);
    }

    sub_20B895280(a4, &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
    v26 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v27 = swift_allocObject();
    sub_20B895488(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for NavigationRequest);
    v28 = (v27 + ((v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v28 = sub_20B5D9B44;
    v28[1] = v18;
    v42 = sub_20B89519C;
    v43 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_20B7B548C;
    v41 = &block_descriptor_32;
    v29 = _Block_copy(&aBlock);

    [v37 dismissViewControllerAnimated:v36 & 1 completion:v29];
    _Block_release(v29);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    sub_20C13E1D4();
    v30 = aBlock;
    v31 = v39;
    v44 = aBlock;
    v45 = v39;
    a1(&v44);
    sub_20B583FB8(v30, v31);
  }
}

void sub_20B892B80(uint64_t a1, void (*a2)(void *, void))
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = 0x3932343038373431;
  v10[1] = 0xEA00000000003738;
  swift_storeEnumTagMultiPayload();
  LOBYTE(a1) = _s9SeymourUI18NavigationResourceO2eeoiySbAC_ACtFZ_0(a1, v10);
  sub_20B8954F0(v10, type metadata accessor for NavigationResource);
  if (a1)
  {
    sub_20C13B524();
    v11 = sub_20C13BB74();
    v12 = sub_20C13D1F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20B517000, v11, v12, "[105249313] Dismiss completion called", v13, 2u);
      MEMORY[0x20F2F6A40](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
  sub_20C13E1D4();
  v14 = v16;
  v15 = v17;
  a2(v16, v17);
  sub_20B583FB8(v14, v15);
}

void sub_20B892DBC(void (*a1)(id *), uint64_t a2, char a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  if (a3)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_20B5DF614;
    *(v9 + 24) = v8;
    v15 = sub_20B89522C;
    v16 = v9;
    v11 = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_20B7B548C;
    v14 = &block_descriptor_102_0;
    v10 = _Block_copy(&v11);

    [a4 dismissViewControllerAnimated:1 completion:v10];
    _Block_release(v10);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    sub_20C13E1D4();
    v17 = v11;
    v18 = v12;
    a1(&v17);
    sub_20B583FB8(v11, v12);
  }
}

void sub_20B892F40(void (*a1)(void *, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
  sub_20C13E1D4();
  a1(v2, v3);
  sub_20B583FB8(v2, v3);
}

void sub_20B892FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = a8;
  v75 = a7;
  v67 = a5;
  v71 = a4;
  v74 = a3;
  v69 = sub_20C13BB84();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = &v65 - v13;
  v14 = type metadata accessor for NavigationRequest();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v77 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E90);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v76 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - v24;
  swift_beginAccess();
  v72 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  v70 = a6;
  if (Strong)
  {
    v27 = Strong;
    v28 = v21;
    v29 = v15;
    v30 = a1;
    v31 = [Strong presentedViewController];

    if (v31)
    {
      type metadata accessor for SessionViewController();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
      }
    }

    else
    {
      v32 = 0;
    }

    a1 = v30;
    v15 = v29;
    v21 = v28;
  }

  else
  {
    v32 = 0;
  }

  sub_20B8952E8(a1, v25);
  sub_20B895280(v74, v19, type metadata accessor for NavigationRequest);
  sub_20B8952E8(v25, v76);
  sub_20B895280(v19, v77, type metadata accessor for NavigationRequest);
  v33 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v34 = (v22 + *(v15 + 80) + v33) & ~*(v15 + 80);
  v35 = (v16 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v70;
  v38 = v75;
  v36[2] = v70;
  v36[3] = v38;
  v39 = v73;
  v36[4] = v73;
  v36[5] = v32;
  sub_20B5DF134(v25, v36 + v33, &qword_27C766E90);
  sub_20B895488(v19, v36 + v34, type metadata accessor for NavigationRequest);
  v40 = v71;
  *(v36 + v35) = v71;
  v41 = v72;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v72;
  v42 = v41;
  swift_beginAccess();
  v43 = swift_unknownObjectWeakLoadStrong();
  if (v43)
  {
    v44 = v43;
    v45 = *(v39 + 8);
    v46 = v32;

    v47 = v45(v37, v39);

    if (v47)
    {
      v48 = v65;
      sub_20C13B594();
      v49 = sub_20C13BB74();
      v50 = sub_20C13D1F4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_20B517000, v49, v50, "NavigationRequest: Stopping PiP", v51, 2u);
        MEMORY[0x20F2F6A40](v51, -1, -1);
      }

      (*(v68 + 8))(v48, v69);
      swift_beginAccess();
      v52 = swift_unknownObjectWeakLoadStrong();
      if (v52)
      {
        v53 = v52;
        type metadata accessor for BrowsingViewController();
        v54 = swift_dynamicCastClass();
        if (v54)
        {
          v55 = *(v54 + OBJC_IVAR____TtC9SeymourUI22BrowsingViewController_pictureInPicturePresenter);

          v53 = v55;
          sub_20BDDD674();
        }
      }

      goto LABEL_18;
    }
  }

  else
  {
    v46 = v32;
  }

  if ((v67 & 1) == 0)
  {
    v64 = v76;
    v63 = v77;
    sub_20B893774(v32, v76, v77, v40, v42, v37, v75, v39);

    sub_20B8954F0(v63, type metadata accessor for NavigationRequest);
    sub_20B520158(v64, &qword_27C766E90);
    return;
  }

LABEL_18:
  sub_20B8954F0(v77, type metadata accessor for NavigationRequest);
  sub_20B520158(v76, &qword_27C766E90);
  v56 = v66;
  sub_20C13B594();
  v57 = sub_20C13BB74();
  v58 = sub_20C13D1F4();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_20B517000, v57, v58, "NavigationRequest: Dismissing presented controller.", v59, 2u);
    MEMORY[0x20F2F6A40](v59, -1, -1);
  }

  (*(v68 + 8))(v56, v69);
  swift_beginAccess();
  v60 = swift_unknownObjectWeakLoadStrong();
  if (v60)
  {
    v61 = v60;
    aBlock[4] = sub_20B895358;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_111;
    v62 = _Block_copy(aBlock);

    [v61 dismissViewControllerAnimated:0 completion:v62];

    _Block_release(v62);
  }

  else
  {
  }
}