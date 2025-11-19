void sub_269C69B58(uint64_t a1)
{
  v2 = v1;
  sub_269C6C1A4(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v53 - v5;
  v7 = sub_269D971F0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v60 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - v11;
  v13 = (a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  swift_beginAccess();
  v14 = v13[1];
  v62 = *v13;
  v63[0] = v14;
  *(v63 + 11) = *(v13 + 27);
  v56 = a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
  sub_269D1E794(*(a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144));
  v59 = v2;
  v15 = v2 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model;
  swift_beginAccess();
  v16 = type metadata accessor for SleepScheduleComponentsViewModel();
  v17 = v16[9];
  v61 = v8;
  v18 = *(v8 + 24);
  v57 = v12;
  v55 = v18;
  v18(v15 + v17, v12, v7);
  v19 = *(v15 + v16[7]);
  v58 = v7;
  if (!v19)
  {
    v26 = v16[15];
    v54 = v16 + 15;
    *(v15 + v26) = 0;
LABEL_8:
    v24 = 0;
    v25 = 0;
    goto LABEL_10;
  }

  v20 = sub_269D09440() & 1;
  v21 = sub_269D09680();
  v22 = v20 | 2;
  if ((v21 & 1) == 0)
  {
    v22 = v20;
  }

  v23 = v16[15];
  v54 = v16 + 15;
  *(v15 + v23) = v22;
  if ((v22 & 1) == 0)
  {
    if (v22)
    {
      v24 = 0;
      v25 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v25 = 0;
  v24 = 1;
LABEL_10:
  *(v15 + v16[13]) = v24;
  *(v15 + v16[14]) = v25;
  sub_269D97720();
  v27 = sub_269D0CBC0(v6, v15);
  v29 = v28;
  sub_269C67C78(v6);
  v30 = (v15 + v16[18]);

  *v30 = v27;
  v30[1] = v29;
  sub_269D97720();
  v31 = sub_269D0CBC0(v6, v15);
  v33 = v32;
  sub_269C67C78(v6);
  v34 = (v15 + v16[19]);

  *v34 = v31;
  v34[1] = v33;
  sub_269D0A9B8();
  v35 = *(v61 + 8);
  v36 = v57;
  v37 = v58;
  v61 += 8;
  v57 = v35;
  v35(v36, v58);
  swift_endAccess();
  v38 = v13[1];
  v62 = *v13;
  v63[0] = v38;
  *(v63 + 11) = *(v13 + 27);
  v39 = v60;
  sub_269D1EA14(*(v56 + 144));
  swift_beginAccess();
  v55(v15 + v16[10], v39, v37);
  if (!*(v15 + v16[7]))
  {
    *(v15 + *v54) = 0;
LABEL_17:
    v43 = 0;
    v44 = 0;
    goto LABEL_19;
  }

  v40 = sub_269D09440() & 1;
  v41 = sub_269D09680();
  v42 = v40 | 2;
  if ((v41 & 1) == 0)
  {
    v42 = v40;
  }

  *(v15 + v16[15]) = v42;
  if (v42)
  {
    v44 = 0;
    v43 = 1;
    goto LABEL_19;
  }

  if (!v42)
  {
    goto LABEL_17;
  }

  v43 = 0;
  v44 = 1;
LABEL_19:
  *(v15 + v16[13]) = v43;
  *(v15 + v16[14]) = v44;
  sub_269D97720();
  v45 = sub_269D0CBC0(v6, v15);
  v47 = v46;
  sub_269C67C78(v6);
  v48 = (v15 + v16[18]);

  *v48 = v45;
  v48[1] = v47;
  sub_269D97720();
  v49 = sub_269D0CBC0(v6, v15);
  v51 = v50;
  sub_269C67C78(v6);
  v52 = (v15 + v16[19]);

  *v52 = v49;
  v52[1] = v51;
  sub_269D0A9B8();
  v57(v60, v37);
  swift_endAccess();
  sub_269C6A388();
}

uint64_t sub_269C6A150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v8 = Strong;
  if ([Strong respondsToSelector_])
  {
    [v8 *a5];
  }

  return swift_unknownObjectRelease();
}

void sub_269C6A260()
{
  v1 = v0;
  sub_269C49A1C(&unk_287A9F6F8);
  sub_269C6C154(0, &qword_280C0B4F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_269C4BE38();
  v2 = sub_269D9A520();
  v4 = v3;

  v5 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_timeInBed);

  MEMORY[0x26D650930](0x6F6974617275442ELL, 0xED0000747865546ELL);

  v6 = sub_269D9A5F0();

  [v5 setAccessibilityIdentifier_];
}

void sub_269C6A388()
{
  v1 = v0;
  v2 = type metadata accessor for SleepScheduleComponentsViewModel();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v30[-v6];
  v8 = *&v0[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader];
  if (v8)
  {
    v9 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model;
    swift_beginAccess();
    sub_269C6C0F0(&v1[v9], v7);
    v10 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_model;
    swift_beginAccess();
    sub_269C6C0F0(v8 + v10, v5);
    swift_beginAccess();
    sub_269C6C210(v7, v8 + v10);
    swift_endAccess();
    sub_269CFEB34(v5);
    sub_269C6C03C(v5);
    sub_269C6C03C(v7);
  }

  v11 = *&v1[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_timeInBed];
  v12 = sub_269C684BC();
  v13 = *&v1[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clock];
  v14 = (v13 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  swift_beginAccess();
  *&v34[11] = *(v14 + 27);
  v33 = *v14;
  *v34 = v14[1];
  v15 = v13 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
  v16 = *(v13 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144);
  if (v34[26])
  {
    sub_269CD2560();
  }

  else
  {
    sub_269C67AF0();
  }

  v18 = [v12 stringFromTimeInterval_];

  [v11 setText_];
  v19 = &v1[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model];
  v20 = swift_beginAccess();
  v21 = *&v19[*(v2 + 60)];
  if (v21)
  {
    v24 = 2;
  }

  else if ((v21 & 2) != 0)
  {
    v24 = 3;
  }

  else
  {
    *&v32[11] = *(v14 + 27);
    v22 = v14[1];
    v31 = *v14;
    *v32 = v22;
    if (v32[24])
    {
      v23 = *&v1[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockCaption];
      if (*(v23 + OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_message) == 6)
      {
        return;
      }

      *(v23 + OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_message) = 6;
      goto LABEL_20;
    }

    v25 = *(v15 + 144);
    v26 = *&v32[16];
    if (v32[26])
    {
      sub_269CD2560();
    }

    else
    {
      sub_269C67AF0();
    }

    v24 = v26 > v25 * round(v27 / v25);
  }

  v28 = *&v1[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockCaption];
  v29 = *(v28 + OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_message);
  if (v29 == 6 || v29 != v24)
  {
    *(v28 + OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_message) = v24;
LABEL_20:
    sub_269C858CC(v20);
    [v1 setNeedsLayout];
  }
}

id sub_269C6A798(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *a4);

  return v6;
}

id SleepScheduleComponentsEditView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SleepScheduleComponentsEditView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepScheduleComponentsEditView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SleepScheduleComponentsEditView()
{
  result = qword_28034E5D8;
  if (!qword_28034E5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269C6AC1C()
{
  result = type metadata accessor for SleepScheduleComponentsViewModel();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_269C6AE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  LODWORD(v125) = a6;
  v124 = a5;
  v12 = type metadata accessor for SleepScheduleComponentsViewModel();
  MEMORY[0x28223BE20](v12 - 8);
  v123 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_timeInBed;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v16 = [objc_opt_self() labelColor];
  [v15 setTextColor_];

  [v15 setNumberOfLines_];
  [v15 setAdjustsFontSizeToFitWidth_];
  v17 = sub_269C1B0B8(0, &qword_28034E5F0);
  v18 = *MEMORY[0x277D74420];
  v120 = *MEMORY[0x277D76A28];
  v121 = v18;
  v122 = v17;
  v19 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v120, 0, 1, 0, 0, 0, 1, v18, 0);
  [v15 setFont_];

  *&v7[v14] = v15;
  *&v7[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockWidthConstraint] = 0;
  *&v7[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_captionTopConstraint] = 0;
  *&v7[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView____lazy_storage___formatter] = 0;
  v134 = 1;
  *&v128 = a1;
  *(&v128 + 1) = a2;
  v129 = a3;
  v130 = a4;
  v131 = 0;
  v132 = 1;
  v133 = 1;
  if (qword_28034D720 != -1)
  {
    swift_once();
  }

  memcpy(v135, &xmmword_28035E530, 0x188uLL);
  v20 = objc_allocWithZone(type metadata accessor for SleepScheduleClock());
  sub_269C6AAB4(v135, &v127);
  v21 = sub_269CCC4EC(&v128, v135);
  *&v7[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clock] = v21;
  v22 = v124;
  sub_269C6C0F0(v124, &v7[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model]);
  objc_allocWithZone(type metadata accessor for SleepScheduleClockCaption());
  v23 = v21;
  v24 = sub_269C84C5C(0);
  v25 = 0;
  *&v7[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockCaption] = v24;
  if (v125)
  {
    v26 = v22;
    v27 = v123;
    sub_269C6C0F0(v26, v123);
    v28 = objc_allocWithZone(type metadata accessor for SleepScheduleComponentsHeader());
    v25 = sub_269CFFE6C(v27);
  }

  *&v7[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader] = v25;
  v29 = type metadata accessor for SleepScheduleComponentsEditView();
  v126.receiver = v7;
  v126.super_class = v29;
  v30 = objc_msgSendSuper2(&v126, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_269C6A388();
  v31 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader;
  if (*&v30[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader])
  {
    [v30 addSubview_];
  }

  v32 = v23;
  v33 = v30;
  v34 = v32;
  v35 = v33;
  v36 = v34;
  v37 = v35;
  v38 = v36;
  v39 = v37;
  [v39 addSubview_];
  v119 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_timeInBed;
  [v39 addSubview_];
  v40 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockCaption;
  [v39 addSubview_];
  v41 = *&v30[v31];
  if (v41)
  {
    [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v39 + v40) setTranslatesAutoresizingMaskIntoConstraints_];
  v42 = [v38 widthAnchor];
  v43 = [v42 constraintEqualToConstant_];

  v44 = *(v39 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockWidthConstraint);
  v123 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockWidthConstraint;
  *(v39 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockWidthConstraint) = v43;

  v118 = v40;
  v45 = [*(v39 + v40) topAnchor];
  v46 = [v38 bottomAnchor];

  v47 = [v45 constraintEqualToAnchor_];
  v48 = *(v39 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_captionTopConstraint);
  v125 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_captionTopConstraint;
  *(v39 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_captionTopConstraint) = v47;

  v49 = *&v30[v31];
  v50 = MEMORY[0x277D84F68];
  if (v49)
  {
    v51 = v49;

    v117 = objc_opt_self();
    sub_269C6C154(0, &qword_280C0AD70, v50 + 8, MEMORY[0x277D84560]);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_269DA23C0;
    v53 = v51;
    v54 = [v53 leadingAnchor];
    v55 = [v39 &off_279C86528 + 1];
    v56 = [v54 constraintEqualToAnchor_];

    *(v52 + 32) = v56;
    v57 = [v53 topAnchor];
    v58 = [v39 topAnchor];

    v59 = [v57 constraintEqualToAnchor:v58 constant:20.0];
    *(v52 + 40) = v59;
    v60 = [v39 trailingAnchor];

    v61 = [v53 trailingAnchor];
    v62 = [v60 &selRef:v61 setLargeContentImage:? + 5];

    *(v52 + 48) = v62;
    sub_269C1B0B8(0, &qword_28034E1C0);
    v63 = sub_269D9A7D0();
    v50 = MEMORY[0x277D84F68];

    [v117 activateConstraints_];

    v64 = [v53 bottomAnchor];
  }

  else
  {

    v64 = [v39 topAnchor];
  }

  sub_269C6C154(0, &qword_280C0AD70, v50 + 8, MEMORY[0x277D84560]);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_269DA23D0;
  v66 = v64;
  v67 = [v38 widthAnchor];

  v68 = [v38 heightAnchor];
  v69 = [v67 constraintEqualToAnchor_];

  *(v65 + 32) = v69;
  v70 = *&v123[v39];
  v71 = v125;
  if (!v70)
  {
    __break(1u);
    goto LABEL_22;
  }

  *(v65 + 40) = v70;
  v72 = v70;
  v73 = [v38 topAnchor];

  v74 = [v73 constraintEqualToAnchor:v66 constant:12.0];
  v117 = v66;

  *(v65 + 48) = v74;
  v75 = [v38 centerXAnchor];
  v123 = v38;

  v76 = v39;
  v77 = [v76 centerXAnchor];
  v78 = [v75 &selRef:v77 setLargeContentImage:? + 5];

  *(v65 + 56) = v78;
  v79 = *(v39 + v71);
  if (!v79)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v116 = objc_opt_self();
  *(v65 + 64) = v79;
  v80 = v118;
  v81 = *(v39 + v118);
  v82 = v79;
  v83 = [v81 leadingAnchor];
  v84 = [v76 layoutMarginsGuide];
  v85 = [v84 leadingAnchor];

  v86 = [v83 &selRef:v85 setLargeContentImage:? + 5];
  *(v65 + 72) = v86;
  v87 = [v76 layoutMarginsGuide];
  v88 = [v87 trailingAnchor];

  v89 = [*(v39 + v80) trailingAnchor];
  v90 = [v88 &selRef:v89 setLargeContentImage:? + 5];

  *(v65 + 80) = v90;
  v91 = [v76 bottomAnchor];

  v92 = [*(v39 + v80) bottomAnchor];
  v93 = [v91 constraintEqualToAnchor:v92 constant:20.0];

  *(v65 + 88) = v93;
  sub_269C1B0B8(0, &qword_28034E1C0);
  v94 = sub_269D9A7D0();

  [v116 activateConstraints_];

  v95 = v119;
  v96 = *(v39 + v119);
  v97 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v120, 0, 1, 0, 0, 0, 1, v121, 0);
  [v96 setFont_];

  v98 = *(v39 + v95);
  v99 = [v76 traitCollection];
  v100 = [v99 preferredContentSizeCategory];

  LOBYTE(v99) = sub_269D9ACF0();
  if (v99)
  {
    v101 = 4;
  }

  else
  {
    v101 = 1;
  }

  [v98 setTextAlignment_];
  v102 = *(v39 + v125);
  v103 = v123;
  if (!v102)
  {
    goto LABEL_20;
  }

  v104 = *(v39 + v95);
  v105 = v102;
  v106 = [v104 font];
  if (v106)
  {
    v107 = v106;
    [v106 lineHeight];
    v109 = v108;

    [v105 setConstant_];
LABEL_20:
    [v76 invalidateIntrinsicContentSize];
    [v76 setNeedsLayout];
    sub_269C6A260();
    v110 = v76;
    [v103 addTarget:v110 action:sel_clockDidChange_ forControlEvents:0x20000];
    [v103 addTarget:v110 action:sel_editingDidChange_ forControlEvents:0x20000];
    [v103 addTarget:v110 action:sel_editingDidEnd_ forControlEvents:0x40000];
    sub_269C6C1A4(0, &qword_28034E1D0, sub_269C2FFF4, MEMORY[0x277D84560]);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_269D9EBF0;
    v112 = sub_269D983D0();
    v113 = MEMORY[0x277D74DB8];
    *(v111 + 32) = v112;
    *(v111 + 40) = v113;
    v114 = sub_269D98270();
    v115 = MEMORY[0x277D74BA0];
    *(v111 + 48) = v114;
    *(v111 + 56) = v115;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_269C30054();
    sub_269D9AD50();

    swift_unknownObjectRelease();

    sub_269C6C03C(v124);
    return;
  }

LABEL_23:
  __break(1u);
}

id sub_269C6BB98(void *a1)
{
  v2 = v1;
  v4 = [v2 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_269D9A630();
  v9 = v8;
  if (v7 == sub_269D9A630() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_269D9B280();

    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v13 = [v2 traitCollection];
  v14 = [v13 legibilityWeight];

  result = [a1 legibilityWeight];
  if (v14 == result)
  {
    return result;
  }

LABEL_11:
  v16 = *&v2[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_timeInBed];
  sub_269C1B0B8(0, &qword_28034E5F0);
  v17 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76A28], 0, 1, 0, 0, 0, 1, *MEMORY[0x277D74420], 0);
  [v16 setFont_];

  v18 = [v2 traitCollection];
  v19 = [v18 preferredContentSizeCategory];

  LOBYTE(v18) = sub_269D9ACF0();
  if (v18)
  {
    v20 = 4;
  }

  else
  {
    v20 = 1;
  }

  [v16 setTextAlignment_];
  v21 = *&v2[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_captionTopConstraint];
  if (v21)
  {
    v22 = v21;
    result = [v16 font];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v23 = result;
    [result lineHeight];
    v25 = v24;

    [v22 setConstant_];
  }

  [v2 invalidateIntrinsicContentSize];

  return [v2 setNeedsLayout];
}

void sub_269C6BEA0()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_timeInBed;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = [objc_opt_self() labelColor];
  [v3 setTextColor_];

  [v3 setNumberOfLines_];
  [v3 setAdjustsFontSizeToFitWidth_];
  sub_269C1B0B8(0, &qword_28034E5F0);
  v5 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76A28], 0, 1, 0, 0, 0, 1, *MEMORY[0x277D74420], 0);
  [v3 setFont_];

  *(v1 + v2) = v3;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_captionTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView____lazy_storage___formatter) = 0;
  sub_269D9B100();
  __break(1u);
}

uint64_t sub_269C6C03C(uint64_t a1)
{
  v2 = type metadata accessor for SleepScheduleComponentsViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269C6C098()
{
  result = qword_28034FAE0;
  if (!qword_28034FAE0)
  {
    sub_269D971F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FAE0);
  }

  return result;
}

uint64_t sub_269C6C0F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScheduleComponentsViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269C6C154(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269C6C1A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269C6C210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScheduleComponentsViewModel();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t CurrentWeatherModel.currentWeather.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269D97920();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CurrentWeatherModel.hourlyForecast.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CurrentWeatherModel(0) + 20);
  sub_269C6C388();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_269C6C388()
{
  if (!qword_28034E5F8)
  {
    sub_269D978B0();
    v0 = MEMORY[0x277CE31A0];
    sub_269C6C48C(&qword_28034E600, MEMORY[0x277CE31A0]);
    sub_269C6C48C(&qword_28034E608, v0);
    sub_269C6C48C(&qword_28034E610, v0);
    v1 = sub_269D97A10();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E5F8);
    }
  }
}

uint64_t sub_269C6C48C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CurrentWeatherModel.dailyForecast.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CurrentWeatherModel(0) + 24);
  sub_269C6C550();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_269C6C550()
{
  if (!qword_28034E618)
  {
    sub_269D978A0();
    v0 = MEMORY[0x277CE3158];
    sub_269C6C48C(&qword_28034E620, MEMORY[0x277CE3158]);
    sub_269C6C48C(&qword_28034E628, v0);
    sub_269C6C48C(&qword_28034E630, v0);
    v1 = sub_269D97A10();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E618);
    }
  }
}

uint64_t sub_269C6C654()
{
  swift_getObjectType();
  v2 = sub_269D9B4D0();
  MEMORY[0x26D650930](58, 0xE100000000000000);
  MEMORY[0x26D650930](*(v0 + OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier), *(v0 + OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier + 8));
  return v2;
}

uint64_t sub_269C6C6BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();
}

uint64_t sub_269C6C738(uint64_t a1, void **a2)
{
  sub_269C6C9C4(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  sub_269C7162C(a1, &v13 - v8, sub_269C6C9C4);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269C7162C(v9, v7, sub_269C6C9C4);
  v11 = v10;
  sub_269D98890();
  return sub_269C715C4(v9, sub_269C6C9C4);
}

uint64_t sub_269C6C860()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();
}

uint64_t sub_269C6C8D8(uint64_t a1)
{
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269C7162C(a1, v5, sub_269C6C9C4);
  v6 = v1;
  sub_269D98890();
  return sub_269C715C4(a1, sub_269C6C9C4);
}

void (*sub_269C6C9F8(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_269D98870();
  return sub_269C458D0;
}

uint64_t sub_269C6CA9C()
{
  swift_beginAccess();
  sub_269C6CD98(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269C6CB38(uint64_t a1)
{
  sub_269C6CD98(0, &unk_28034E9E0, sub_269C6C9C4, MEMORY[0x277CBCEC0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_269C6CD98(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_269C6CD00()
{
  swift_beginAccess();
  sub_269C6CD98(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

void sub_269C6CD98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269C6CDFC(uint64_t a1)
{
  sub_269C6CD98(0, &unk_28034E9E0, sub_269C6C9C4, MEMORY[0x277CBCEC0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v7 - v5, a1, v3);
  swift_beginAccess();
  sub_269C6CD98(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void (*sub_269C6CF78(uint64_t *a1))(uint64_t a1, char a2)
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
  sub_269C6CD98(0, &unk_28034E9E0, sub_269C6C9C4, MEMORY[0x277CBCEC0]);
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

  v10 = OBJC_IVAR____TtC13SleepHealthUI12WeatherModel__currentWeatherModel;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_269C6CD98(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_269D98850();
  swift_endAccess();
  return sub_269C45F6C;
}

id WeatherModel.__allocating_init(debugIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for LocationModel());

  v5 = LocationModel.init(debugIdentifier:)(a1, a2);
  v6 = objc_allocWithZone(type metadata accessor for WeatherModel(0));
  return WeatherModel.init(locationModel:debugIdentifier:)(v5, a1, a2);
}

id WeatherModel.init(locationModel:debugIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  sub_269C6CD98(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  sub_269C6C9C4(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = OBJC_IVAR____TtC13SleepHealthUI12WeatherModel__currentWeatherModel;
  v18 = type metadata accessor for CurrentWeatherModel(0);
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_269C7162C(v16, v14, sub_269C6C9C4);
  sub_269D98840();
  sub_269C715C4(v16, sub_269C6C9C4);
  (*(v8 + 32))(&v3[v17], v10, v7);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_weatherService] = 0;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_cancellables] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel____lazy_storage___gradientManager] = 0;
  v19 = &v3[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier];
  *v19 = a2;
  *(v19 + 1) = a3;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_locationModel] = v23;
  v20 = type metadata accessor for WeatherModel(0);
  v24.receiver = v3;
  v24.super_class = v20;
  return objc_msgSendSuper2(&v24, sel_init);
}

void sub_269C6D47C()
{
  v1 = v0;
  swift_getObjectType();
  sub_269C71370(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C71538(0, &qword_2803517D0, MEMORY[0x277CBCEC0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  sub_269C7140C();
  v11 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_weatherService;
  if (!*&v1[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_weatherService])
  {
    v31 = v7;
    v33 = v12;
    v34 = v11;
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v32 = v6;
    v16 = sub_269D98250();
    __swift_project_value_buffer(v16, qword_280351208);
    v17 = v1;
    v18 = sub_269D98230();
    v19 = sub_269D9AB80();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30 = v19;
      v21 = v20;
      v29 = swift_slowAlloc();
      v35 = v29;
      *v21 = 136446210;
      v36 = sub_269D9B4D0();
      v37 = v22;
      MEMORY[0x26D650930](58, 0xE100000000000000);
      MEMORY[0x26D650930](*&v17[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier], *&v17[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier + 8]);
      v23 = sub_269C2EACC(v36, v37, &v35);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_269C18000, v18, v30, "[%{public}s] starting", v21, 0xCu);
      v24 = v29;
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x26D652460](v24, -1, -1);
      MEMORY[0x26D652460](v21, -1, -1);
    }

    sub_269D97980();
    *&v1[v15] = sub_269D97970();

    sub_269D6C308();
    swift_beginAccess();
    sub_269C71538(0, &qword_28034E680, MEMORY[0x277CBCED0]);
    sub_269D98850();
    swift_endAccess();
    sub_269C1B0B8(0, &qword_280C0AEB0);
    v25 = sub_269D9AC40();
    v36 = v25;
    v26 = sub_269D9AC30();
    (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
    sub_269C714C4();
    sub_269C2FC08();
    v27 = v32;
    sub_269D988E0();
    sub_269C715C4(v4, sub_269C71370);

    (*(v31 + 8))(v9, v27);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_269C6C48C(&qword_28034E688, sub_269C7140C);
    v28 = v34;
    sub_269D98900();

    (*(v33 + 8))(v14, v28);
    swift_beginAccess();
    sub_269D98740();
    swift_endAccess();

    sub_269D6BE00();
  }
}

void sub_269C6D9E4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      v4 = v1;
      sub_269C6DC70(v4);
      v5 = *&v3[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_locationModel];
      sub_269D6C110();

      v3 = v5;
    }
  }
}

uint64_t sub_269C6DA78()
{
  result = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_weatherService;
  if (*&v0[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_weatherService])
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v3 = sub_269D98250();
    __swift_project_value_buffer(v3, qword_280351208);
    v4 = v0;
    v5 = sub_269D98230();
    v6 = sub_269D9AB80();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      v11 = sub_269D9B4D0();
      v12 = v9;
      MEMORY[0x26D650930](58, 0xE100000000000000);
      MEMORY[0x26D650930](*&v4[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier], *&v4[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier + 8]);
      v10 = sub_269C2EACC(v11, v12, &v13);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] stopping", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D652460](v8, -1, -1);
      MEMORY[0x26D652460](v7, -1, -1);
    }

    sub_269D6C110();
    *&v0[v2] = 0;
  }

  return result;
}

uint64_t sub_269C6DC70(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_269C6CD98(0, &unk_280351880, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v7 = sub_269D98250();
  __swift_project_value_buffer(v7, qword_280351208);
  v8 = v2;
  v9 = a1;
  v10 = sub_269D98230();
  v11 = sub_269D9AB80();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31 = v6;
    v13 = v12;
    v14 = swift_slowAlloc();
    v34 = v14;
    *v13 = 136446467;
    v32 = sub_269D9B4D0();
    v33 = v15;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*&v8[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier], *&v8[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier + 8]);
    v16 = sub_269C2EACC(v32, v33, &v34);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2081;
    v17 = v9;
    v18 = [v17 description];
    v19 = sub_269D9A630();
    v21 = v20;

    v22 = sub_269C2EACC(v19, v21, &v34);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_269C18000, v10, v11, "[%{public}s] fetching current weather for location: %{private}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v14, -1, -1);
    v23 = v13;
    v6 = v31;
    MEMORY[0x26D652460](v23, -1, -1);
  }

  v24 = sub_269D9A900();
  (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  sub_269D9A8E0();
  v25 = v8;
  v26 = v9;
  v27 = sub_269D9A8D0();
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = v25;
  v28[5] = v26;
  sub_269C79F94(0, 0, v6, &unk_269DA2600, v28);
}

uint64_t sub_269C6DFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  sub_269C6C9C4(0);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v6 = MEMORY[0x277CE31F0];
  sub_269C6CD98(0, &qword_28034E6E0, sub_269C6C550, MEMORY[0x277CE31F0]);
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  sub_269C6CD98(0, &qword_28034E6E8, sub_269C6C388, v6);
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  sub_269C6CD98(0, &unk_28034E6F0, MEMORY[0x277CE31E0], v6);
  v5[25] = v9;
  v5[26] = *(v9 - 8);
  v5[27] = swift_task_alloc();
  sub_269C6C550();
  v5[28] = v10;
  v5[29] = *(v10 - 8);
  v5[30] = swift_task_alloc();
  sub_269C6C388();
  v5[31] = v11;
  v5[32] = *(v11 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v12 = sub_269D97920();
  v5[36] = v12;
  v5[37] = *(v12 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  sub_269D9A8E0();
  v5[42] = sub_269D9A8D0();
  v14 = sub_269D9A880();
  v5[43] = v14;
  v5[44] = v13;

  return MEMORY[0x2822009F8](sub_269C6E360, v14, v13);
}

uint64_t sub_269C6E360()
{
  v25 = v0;
  v1 = *(v0[15] + OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_weatherService);
  v0[45] = v1;
  if (v1)
  {
    v2 = v0[35];
    v3 = v0[36];
    v4 = v0[30];
    v5 = v0[31];
    v7 = v0[27];
    v6 = v0[28];
    v8 = v0[24];
    v9 = v0[21];
    v0[2] = v0[41];
    v0[3] = v2;
    v0[4] = v4;

    sub_269D97950();
    v0[5] = v7;
    sub_269D97940();
    v0[6] = v8;
    sub_269D97930();
    v0[7] = v9;
    v10 = swift_task_alloc();
    v0[8] = v3;
    v0[46] = v10;
    v0[9] = v5;
    v0[10] = v6;
    *v10 = v0;
    v10[1] = sub_269C6E69C;
    v11 = v0[16];

    return MEMORY[0x282135610](v0 + 2, v11, v0 + 5, 3, v0 + 8);
  }

  else
  {

    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v12 = v0[15];
    v13 = sub_269D98250();
    __swift_project_value_buffer(v13, qword_280351208);
    v14 = v12;
    v15 = sub_269D98230();
    v16 = sub_269D9AB60();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136446210;
      v19 = sub_269C6C654();
      v21 = sub_269C2EACC(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_269C18000, v15, v16, "[%{public}s] weatherService is nil", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x26D652460](v18, -1, -1);
      MEMORY[0x26D652460](v17, -1, -1);
    }

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_269C6E69C()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = v2[43];
    v4 = v2[44];
    v5 = sub_269C6EE88;
  }

  else
  {
    v7 = v2[26];
    v6 = v2[27];
    v9 = v2[24];
    v8 = v2[25];
    v10 = v2[22];
    v11 = v2[23];
    (*(v2[20] + 8))(v2[21], v2[19]);
    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);
    v3 = v2[43];
    v4 = v2[44];
    v5 = sub_269C6E81C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_269C6E81C()
{
  v75 = v0;

  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v2 = v0[41];
  v67 = v0[39];
  v3 = v0[36];
  v4 = v0[37];
  v5 = v0[34];
  v73 = v0[35];
  v6 = v0[31];
  v7 = v0[32];
  v70 = v0[15];
  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280351208);
  v9 = *(v4 + 16);
  v9(v1, v2, v3);
  v72 = *(v7 + 16);
  v72(v5, v73, v6);
  v9(v67, v2, v3);
  v10 = v70;
  v11 = sub_269D98230();
  v12 = sub_269D9AB80();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[40];
  v68 = v0[39];
  if (v13)
  {
    log = v11;
    v15 = v0[37];
    v16 = v0[38];
    v17 = v0[36];
    v64 = v0[33];
    v65 = v0[34];
    v18 = v0[32];
    v57 = v9;
    v58 = v0[31];
    v61 = v12;
    v19 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v74 = v59;
    *v19 = 136446979;
    v20 = sub_269C6C654();
    v22 = sub_269C2EACC(v20, v21, &v74);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2081;
    v56 = v16;
    v9(v16, v14, v17);
    v23 = sub_269D9A660();
    v25 = v24;
    v26 = *(v15 + 8);
    v26(v14, v17);
    v27 = sub_269C2EACC(v23, v25, &v74);

    *(v19 + 14) = v27;
    *(v19 + 22) = 2081;
    v28 = v65;
    v72(v64, v65, v58);
    v29 = sub_269D9A660();
    v31 = v30;
    v66 = *(v18 + 8);
    v66(v28, v58);
    v32 = sub_269C2EACC(v29, v31, &v74);

    *(v19 + 24) = v32;
    *(v19 + 32) = 2081;
    v33 = v68;
    v57(v56, v68, v17);
    v34 = sub_269D9A660();
    v36 = v35;
    v69 = v26;
    v26(v33, v17);
    v37 = sub_269C2EACC(v34, v36, &v74);

    *(v19 + 34) = v37;
    _os_log_impl(&dword_269C18000, log, v61, "[%{public}s] fetched current weather: %{private}s, hourly forecast: %{private}s, daily forecast: %{private}s", v19, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v59, -1, -1);
    MEMORY[0x26D652460](v19, -1, -1);

    v38 = v57;
  }

  else
  {
    v40 = v0[36];
    v39 = v0[37];
    v41 = v0[34];
    v42 = v0[31];
    v43 = v0[32];

    v44 = *(v39 + 8);
    v44(v68, v40);
    v66 = *(v43 + 8);
    v66(v41, v42);
    v69 = v44;
    v44(v14, v40);
    v38 = v9;
  }

  v71 = v0[41];
  v45 = v0[35];
  loga = v0[36];
  v47 = v0[30];
  v46 = v0[31];
  v49 = v0[28];
  v48 = v0[29];
  v51 = v0[17];
  v50 = v0[18];
  v60 = v0[15];
  v38(v50);
  v52 = type metadata accessor for CurrentWeatherModel(0);
  v72(v50 + *(v52 + 20), v45, v46);
  (*(v48 + 16))(v50 + *(v52 + 24), v47, v49);
  (*(*(v52 - 8) + 56))(v50, 0, 1, v52);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269C7162C(v50, v51, sub_269C6C9C4);
  v53 = v60;
  sub_269D98890();

  sub_269C715C4(v50, sub_269C6C9C4);
  (*(v48 + 8))(v47, v49);
  v66(v45, v46);
  v69(v71, loga);

  v54 = v0[1];

  return v54();
}

uint64_t sub_269C6EE88()
{
  v31 = v0;
  v1 = v0[26];
  v29 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];

  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v3, v4);
  (*(v1 + 8))(v29, v2);
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v9 = v0[47];
  v10 = v0[15];
  v11 = sub_269D98250();
  __swift_project_value_buffer(v11, qword_280351208);
  v12 = v10;
  v13 = v9;
  v14 = sub_269D98230();
  v15 = sub_269D9AB60();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136446466;
    v18 = sub_269C6C654();
    v20 = sub_269C2EACC(v18, v19, &v30);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    swift_getErrorValue();
    v21 = *(v0[12] - 8);
    swift_task_alloc();
    (*(v21 + 16))();
    v22 = sub_269D9A660();
    v24 = v23;

    v25 = sub_269C2EACC(v22, v24, &v30);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_269C18000, v14, v15, "[%{public}s] error fetching current weather: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v17, -1, -1);
    MEMORY[0x26D652460](v16, -1, -1);
  }

  v26 = v0[47];
  sub_269C6DA78();

  v27 = v0[1];

  return v27();
}

uint64_t sub_269C6F220()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI12WeatherModel____lazy_storage___gradientManager;
  if (*(v0 + OBJC_IVAR____TtC13SleepHealthUI12WeatherModel____lazy_storage___gradientManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI12WeatherModel____lazy_storage___gradientManager);
  }

  else
  {
    v3 = v0;
    sub_269D9A3E0();
    swift_allocObject();
    v2 = sub_269D9A3D0();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_269C6F29C()
{
  v58[1] = swift_getObjectType();
  v1 = sub_269D9A430();
  v80 = *(v1 - 8);
  v81 = v1;
  MEMORY[0x28223BE20](v1);
  v79 = v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_269D979F0();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D9A410();
  MEMORY[0x28223BE20](v5 - 8);
  v75 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_269D9A3A0();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v72 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269D979B0();
  MEMORY[0x28223BE20](v8 - 8);
  v70 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269D9A3B0();
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x28223BE20](v10);
  v71 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_269D97580();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_269D9A470();
  v69 = *(v85 - 8);
  v13 = MEMORY[0x28223BE20](v85);
  v65 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = v58 - v15;
  sub_269C6CD98(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v59 = v58 - v17;
  v18 = sub_269D97810();
  MEMORY[0x28223BE20](v18 - 8);
  v58[2] = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_269D97E00();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v84 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CurrentWeatherModel(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_269D97920();
  v82 = *(v28 - 8);
  v83 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = v58 - v32;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  v34 = v86;
  if (!v86)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  if ((*(v22 + 48))(v27, 1, v21))
  {

    sub_269C715C4(v27, sub_269C6C9C4);
    return 0;
  }

  sub_269C7162C(v27, v24, type metadata accessor for CurrentWeatherModel);
  sub_269C715C4(v27, sub_269C6C9C4);
  v37 = v82;
  v36 = v83;
  (*(v82 + 16))(v31, v24, v83);
  sub_269C715C4(v24, type metadata accessor for CurrentWeatherModel);
  (*(v37 + 32))(v33, v31, v36);
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v38 = sub_269D98250();
  __swift_project_value_buffer(v38, qword_280351208);
  v39 = v0;
  v40 = sub_269D98230();
  v41 = sub_269D9AB80();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v88 = v43;
    *v42 = 136446210;
    v86 = sub_269D9B4D0();
    v87 = v44;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*&v39[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier], *&v39[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier + 8]);
    v45 = sub_269C2EACC(v86, v87, &v88);

    *(v42 + 4) = v45;
    _os_log_impl(&dword_269C18000, v40, v41, "[%{public}s] loading gradient for current weather", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x26D652460](v43, -1, -1);
    MEMORY[0x26D652460](v42, -1, -1);
  }

  sub_269D97800();
  [v34 coordinate];
  v46 = v61;
  v47 = v62;
  (*(v61 + 56))(v59, 1, 1, v62);
  sub_269D97DF0();
  v48 = v60;
  sub_269D97550();
  v59 = v39;
  v49 = v66;
  sub_269D9A3F0();
  (*(v46 + 8))(v48, v47);
  sub_269D97910();
  v50 = v69;
  (*(v69 + 16))(v65, v49, v85);
  sub_269D978D0();
  v51 = *MEMORY[0x277D7B410];
  v52 = sub_269D9A390();
  v53 = v72;
  (*(*(v52 - 8) + 104))(v72, v51, v52);
  (*(v67 + 104))(v53, *MEMORY[0x277D7B420], v68);
  sub_269D978C0();
  v54 = v76;
  sub_269D978F0();
  sub_269D979C0();
  sub_269D979E0();
  sub_269D979D0();
  sub_269D9A400();
  (*(v77 + 8))(v54, v78);
  v55 = v71;
  sub_269D9A380();
  sub_269C6F220();
  v56 = v79;
  sub_269D9A3C0();

  v57 = sub_269D9A420();

  (*(v80 + 8))(v56, v81);
  (*(v73 + 8))(v55, v74);
  (*(v50 + 8))(v49, v85);
  (*(v63 + 8))(v84, v64);
  (*(v82 + 8))(v33, v83);
  return v57;
}

uint64_t CurrentWeather.predominateCloudAltitudeKind.getter()
{
  v0 = sub_269D979F0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D978F0();
  sub_269D979C0();
  sub_269D979E0();
  sub_269D979D0();
  sub_269D9A400();
  return (*(v1 + 8))(v3, v0);
}

id WeatherModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WeatherModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269C701F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WeatherModel(0);
  result = sub_269D98770();
  *a1 = result;
  return result;
}

uint64_t CurrentWeatherModel.naturalLanguageDescription.getter()
{
  sub_269D9A460();
  swift_allocObject();
  sub_269D9A450();
  type metadata accessor for CurrentWeatherModel(0);
  v0 = sub_269D9A440();
  v2 = v1;

  if (v2)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t CurrentWeatherModel.todaysWeather.getter()
{
  v0 = sub_269D97810();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269D97580();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CurrentWeatherModel(0);
  sub_269D97900();
  sub_269D97800();
  sub_269D97A00();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t CurrentWeather.conditionsIcon.getter()
{
  v0 = sub_269D979B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97910();
  sub_269D978D0();
  sub_269D97990();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_269C7054C(unsigned int *a1)
{
  sub_269C71694(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D979B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D9A360();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97910();
  sub_269D978D0();
  sub_269D97990();
  (*(v6 + 8))(v8, v5);
  sub_269D9A350();
  (*(v10 + 8))(v12, v9);
  sub_269D99D60();
  v13 = *a1;
  v14 = sub_269D99DA0();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v4, v13, v14);
  (*(v15 + 56))(v4, 0, 1, v14);
  v16 = sub_269D99D80();

  sub_269C715C4(v4, sub_269C71694);
  return v16;
}

uint64_t CurrentWeather.accessibilityDescription.getter()
{
  v0 = sub_269D979B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97910();
  v4 = sub_269D979A0();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t CurrentWeather.temperatureText.getter()
{
  v0 = sub_269D9A370();
  v14 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269D9AC20();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C713A4(0, &qword_28034E698, &qword_28034E6A0, 0x277CCAE48, MEMORY[0x277CC87D0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  sub_269D978E0();
  sub_269D9A340();
  (*(v1 + 104))(v3, *MEMORY[0x277D7B408], v0);
  sub_269D97DE0();
  sub_269D97DD0();
  sub_269C6C48C(&qword_28034E6A8, MEMORY[0x277D7B508]);
  v12 = sub_269D96F10();

  (*(v1 + 8))(v3, v14);
  (*(v15 + 8))(v6, v4);
  (*(v9 + 8))(v11, v8);
  return v12;
}

double sub_269C70BF4(void (*a1)(uint64_t))
{
  sub_269C713A4(0, &qword_28034E698, &qword_28034E6A0, 0x277CCAE48, MEMORY[0x277CC87D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  a1(v8);
  sub_269D96F20();
  v11 = *(v4 + 8);
  v11(v10, v3);
  sub_269D96F00();
  v13 = v12;
  v11(v7, v3);
  return v13;
}

uint64_t DayWeather.shortNaturalLanguageDescription.getter()
{
  v0 = sub_269D9A370();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_269D9AC20();
  v38 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C713A4(0, &qword_28034E698, &qword_28034E6A0, 0x277CCAE48, MEMORY[0x277CC87D0]);
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  sub_269D97890();
  sub_269D9A340();
  v32 = *MEMORY[0x277D7B408];
  v31 = *(v1 + 104);
  v31(v3);
  v30 = sub_269D97DE0();
  sub_269D97DD0();
  v29 = sub_269C6C48C(&qword_28034E6A8, MEMORY[0x277D7B508]);
  v10 = v33;
  v11 = sub_269D96F10();
  v34 = v12;
  v35 = v11;

  v13 = *(v1 + 8);
  v27 = v1 + 8;
  v28 = v13;
  v13(v3, v0);
  v14 = *(v38 + 8);
  v38 += 8;
  v26 = v14;
  v14(v5, v10);
  v15 = *(v37 + 8);
  v37 += 8;
  v15(v9, v7);
  sub_269D97880();
  sub_269D9A340();
  (v31)(v3, v32, v0);
  sub_269D97DD0();
  v16 = sub_269D96F10();
  v36 = v17;

  v28(v3, v0);
  v26(v5, v10);
  v15(v9, v7);
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v18 = qword_280C0D990;
  sub_269D972C0();

  sub_269C6CD98(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_269D9EBF0;
  v20 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  v21 = sub_269C7172C();
  v22 = v34;
  *(v19 + 32) = v35;
  *(v19 + 40) = v22;
  *(v19 + 96) = v20;
  *(v19 + 104) = v21;
  *(v19 + 64) = v21;
  *(v19 + 72) = v16;
  *(v19 + 80) = v36;
  v23 = sub_269D9A640();

  return v23;
}

uint64_t sub_269C7125C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  *a1 = v3;
  return result;
}

uint64_t sub_269C712DC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_269D98890();
}

void sub_269C713A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_269C1B0B8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_269C7140C()
{
  if (!qword_28034E670)
  {
    sub_269C71538(255, &qword_2803517D0, MEMORY[0x277CBCEC0]);
    sub_269C1B0B8(255, &qword_280C0AEB0);
    sub_269C714C4();
    sub_269C2FC08();
    v0 = sub_269D98710();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E670);
    }
  }
}

unint64_t sub_269C714C4()
{
  result = qword_28034E678;
  if (!qword_28034E678)
  {
    sub_269C71538(255, &qword_2803517D0, MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E678);
  }

  return result;
}

void sub_269C71538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_269C713A4(255, &qword_2803517C0, &qword_28034E668, 0x277CE41F8, MEMORY[0x277D83D88]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_269C715C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269C7162C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_269C716C8()
{
  result = qword_28034FC00;
  if (!qword_28034FC00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28034FC00);
  }

  return result;
}

unint64_t sub_269C7172C()
{
  result = qword_28034E6B8;
  if (!qword_28034E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E6B8);
  }

  return result;
}

void sub_269C717A8()
{
  sub_269D97920();
  if (v0 <= 0x3F)
  {
    sub_269C6C388();
    if (v1 <= 0x3F)
    {
      sub_269C6C550();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_269C7184C()
{
  sub_269C6CD98(319, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_269C71B48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_269C71C08;

  return sub_269C6DFB8(a1, v4, v5, v7, v6);
}

uint64_t sub_269C71C08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_269C71CFC(uint64_t a1, uint64_t a2)
{
  sub_269D9A8D0();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_269C7495C(v10);
    if (v2)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return isEscapingClosureAtFileLocation;
      }

      __break(1u);
    }

    else
    {
      isEscapingClosureAtFileLocation = v10[0];
      v7 = swift_isEscapingClosureAtFileLocation();

      if ((v7 & 1) == 0)
      {
        return isEscapingClosureAtFileLocation;
      }
    }

    __break(1u);
  }

  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_269D9B000();
  MEMORY[0x26D650930](0xD00000000000003FLL, 0x8000000269DAE680);
  v9 = sub_269D9B4D0();
  MEMORY[0x26D650930](v9);

  MEMORY[0x26D650930](46, 0xE100000000000000);
  result = sub_269D9B100();
  __break(1u);
  return result;
}

uint64_t sub_269C71EBC(uint64_t a1, uint64_t a2)
{
  sub_269D9A8D0();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_269C74A7C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_269D9B000();
    MEMORY[0x26D650930](0xD00000000000003FLL, 0x8000000269DAE680);
    v8 = sub_269D9B4D0();
    MEMORY[0x26D650930](v8);

    MEMORY[0x26D650930](46, 0xE100000000000000);
    result = sub_269D9B100();
    __break(1u);
  }

  return result;
}

uint64_t sub_269C72044@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  *a1 = v3;
  return result;
}

uint64_t sub_269C720C4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_269D98890();
}

uint64_t sub_269C72134()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();
}

uint64_t sub_269C721AC()
{
  swift_beginAccess();
  sub_269C74908(0, &qword_28034E708, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269C72234(uint64_t a1)
{
  sub_269C74908(0, &qword_28034E838, MEMORY[0x277CBCEC0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_269C74908(0, &qword_28034E708, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_269C723D8()
{
  swift_beginAccess();
  sub_269C74908(0, &qword_28034E708, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269C72498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  swift_beginAccess();
  sub_269C749A0(0, a5, a6, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269C7252C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, unint64_t *a8)
{
  v20 = a8;
  sub_269C749A0(0, a5, a6, MEMORY[0x277CBCEC0]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  v18 = *(v12 + 16);
  v18(&v20 - v16, a1, v11);
  v18(v15, v17, v11);
  swift_beginAccess();
  sub_269C749A0(0, v20, a6, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_269C72708(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  sub_269C749A0(0, a2, a3, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269C727AC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  *a1 = v3;
  return result;
}

uint64_t sub_269C7283C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_269D98890();
}

uint64_t sub_269C728C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  return v1;
}

uint64_t sub_269C72958()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  v0 = *&v4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 24];
  v1 = *&v4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 32];
  __swift_project_boxed_opaque_existential_1Tm(&v4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider], v0);
  v2 = (*(v1 + 8))(v0, v1);

  return v2;
}

id sub_269C72A10()
{
  v0 = sub_269D97580();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  v4 = v10;
  v5 = *&v10[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 24];
  v6 = *&v10[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 32];
  __swift_project_boxed_opaque_existential_1Tm(&v10[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider], v5);
  (*&v4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_currentDateProvider])();
  v7 = SleepScheduleProviding.upcomingResolvedOccurrence(forCurrentDate:)(v3, v5, v6);

  (*(v1 + 8))(v3, v0);
  return v7;
}

uint64_t sub_269C72B7C@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  return sub_269C5BE08(v1, a1);
}

char *sub_269C72C0C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  result = [*&v3[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_behavior] isDeviceSupported];
  if (result && v4 >= 2u)
  {
    *a1 = v3;

    return v3;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

id SleepActivityConfigurationModel.__allocating_init(sleepScheduleProvider:sleepSettingsProvider:featureAvailability:watchAppInstalledProvider:behavior:currentDateProvider:userDefaults:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = *(a1 + 24);
  v12 = *(a1 + 32);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  ObjectType = swift_getObjectType();
  v19 = sub_269C742CC(v14, v17, a3, a4, a5, a6, a7, a8, v21, v13, ObjectType, v15, v12, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v19;
}

id SleepActivityConfigurationModel.init(sleepScheduleProvider:sleepSettingsProvider:featureAvailability:watchAppInstalledProvider:behavior:currentDateProvider:userDefaults:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v30 = a6;
  v31 = a7;
  v32 = a8;
  v13 = *(a1 + 24);
  v28 = *(a1 + 32);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v19 = *(a2 + 24);
  v18 = *(a2 + 32);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a2, v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  ObjectType = swift_getObjectType();
  v25 = sub_269C73D4C(v16, v22, a3, a4, a5, v30, v31, v32, v29, v13, ObjectType, v19, v28, v18);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v25;
}

uint64_t sub_269C72FDC()
{
  sub_269C749A0(0, &qword_280C0AED0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  sub_269C4CBC4();
  v17 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  v7 = v18;
  type metadata accessor for SleepScheduleModel();
  sub_269C74A04(&qword_28034E860, type metadata accessor for SleepScheduleModel);
  v8 = sub_269D98770();

  v18 = v8;
  sub_269D98820();
  v9 = sub_269D988B0();

  v18 = v9;
  sub_269C1B0B8(0, &qword_280C0AEB0);
  v10 = sub_269D9AC40();
  v19 = v10;
  v11 = sub_269D9AC30();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  sub_269C4CC90();
  sub_269C74A04(&unk_28034E850, sub_269C4CC90);
  sub_269C2FC08();
  sub_269D988E0();
  sub_269C476EC(v2);

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_269C74A4C;
  *(v13 + 24) = v12;
  sub_269C74A04(&qword_28034E018, sub_269C4CBC4);
  v14 = v17;
  sub_269D98900();

  (*(v4 + 8))(v6, v14);
  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();
}

void sub_269C733C8()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_269C734BC();
  }

  else
  {
  }
}

uint64_t sub_269C734BC()
{
  sub_269C73580(&v5);
  v1 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  if (v1 != v4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v0;
    return sub_269D98890();
  }

  return result;
}

uint64_t sub_269C73580@<X0>(unint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_behavior);
  result = [v3 hksp_supportsSleep];
  if (result)
  {
    ObjectType = swift_getObjectType();
    if (HKFeatureAvailabilityProviding.isFeatureOnboarded.getter(ObjectType))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_269D98880();

      v6 = *&v19[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule];
      v7 = v6;

      if (v6)
      {
        if ([v7 isEnabled])
        {
          v8 = [v7 occurrences];
          sub_269C1B0B8(0, &qword_28034E050);
          v9 = sub_269D9A7E0();

          v20 = MEMORY[0x277D84F90];
          if (v9 >> 62)
          {
            goto LABEL_25;
          }

          for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_269D9AF50())
          {
            v17 = v7;
            v18 = a1;
            a1 = 0;
            v7 = (v9 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if ((v9 & 0xC000000000000001) != 0)
              {
                v11 = MEMORY[0x26D651260](a1, v9);
              }

              else
              {
                if (a1 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_24;
                }

                v11 = *(v9 + 8 * a1 + 32);
              }

              v12 = v11;
              v13 = (a1 + 1);
              if (__OFADD__(a1, 1))
              {
                break;
              }

              sub_269D9A8E0();
              sub_269D9A8D0();
              sub_269D9A880();
              if ((swift_task_isCurrentExecutor() & 1) == 0)
              {
                swift_task_reportUnexpectedExecutor();
              }

              v14 = [v12 isSingleDayOverride];

              if (v14)
              {
              }

              else
              {
                sub_269D9B050();
                sub_269D9B090();
                sub_269D9B0A0();
                sub_269D9B060();
              }

              ++a1;
              if (v13 == i)
              {
                a1 = v18;
                v15 = v20;
                v7 = v17;
                goto LABEL_27;
              }
            }

            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            ;
          }

          v15 = MEMORY[0x277D84F90];
LABEL_27:

          if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
          {
            v16 = sub_269D9AF50();
          }

          else
          {
            v16 = *(v15 + 16);
          }

          if (v16)
          {
            result = 4;
          }

          else
          {
            result = 3;
          }
        }

        else
        {

          result = 2;
        }
      }

      else
      {
        result = 3;
      }
    }

    else
    {
      result = [v3 isDeviceSupported];
    }
  }

  *a1 = result;
  return result;
}

id SleepActivityConfigurationModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepActivityConfigurationModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepActivityConfigurationModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269C73B74@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SleepActivityConfigurationModel();
  result = sub_269D98770();
  *a1 = result;
  return result;
}

uint64_t SleepActivityConfigurationModel.featureAvailabilityProvidingDidUpdateOnboardingCompletion(_:)()
{
  sub_269D9A8E0();
  v3 = v0;
  return sub_269C71EBC(sub_269C744D8, &v2);
}

uint64_t sub_269C73C28()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269C734BC();
}

id sub_269C73D4C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v75 = a5;
  v76 = a8;
  v72 = a6;
  v73 = a3;
  v74 = a4;
  v63[1] = a1;
  v64 = a2;
  v68 = a14;
  v69 = a13;
  v70 = a7;
  sub_269C74908(0, &qword_28034E708, MEMORY[0x277CBCED0]);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v63 - v18;
  v63[0] = a12;
  v20 = *(a12 - 8);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v63 - v25;
  v27 = *(a10 - 8);
  v65 = a10;
  v66 = v27;
  v28 = MEMORY[0x28223BE20](v24);
  v30 = v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v67 = v63 - v31;
  (*(v32 + 32))();
  v33 = v20;
  v71 = v20;
  (*(v20 + 32))(v26, v64, a12);
  v34 = OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel__layout;
  v79 = 0;
  sub_269D98840();
  (*(v16 + 32))(&a9[v34], v19, v15);
  v35 = &a9[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_configUIVisitedKey];
  *v35 = sub_269D9A630();
  v35[1] = v36;
  *&a9[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_subscriptions] = MEMORY[0x277D84FA0];
  sub_269D97D80();
  v37 = sub_269D97D70();
  v38 = objc_allocWithZone(type metadata accessor for SleepSettingsModel());
  v39 = *(v33 + 16);
  v40 = v26;
  v41 = v63[0];
  v39(v23, v26, v63[0]);
  v42 = v23;
  v43 = v41;
  v44 = sub_269CB57AC(v42, v37, v38, v41, v68);

  swift_beginAccess();
  v78 = v44;
  sub_269D98840();
  swift_endAccess();
  v45 = objc_allocWithZone(type metadata accessor for SleepScheduleModel());
  v46 = v66;
  v47 = v67;
  v48 = v65;
  (*(v66 + 16))(v30, v67, v65);
  v49 = v70;

  v50 = sub_269C797E4(v30, v72, v49, v45, v48, v69);

  swift_beginAccess();
  v78 = v50;
  sub_269D98840();
  swift_endAccess();
  v51 = v73;
  v52 = v74;
  *&a9[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_featureAvailability] = v73;
  *&a9[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_watchAppInstalledProvider] = v52;
  v53 = v75;
  *&a9[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_behavior] = v75;
  v54 = type metadata accessor for SleepActivityConfigurationModel();
  v77.receiver = a9;
  v77.super_class = v54;
  v55 = v51;
  swift_unknownObjectRetain();
  v56 = v52;
  v57 = v53;
  v58 = objc_msgSendSuper2(&v77, sel_init);

  v59 = sub_269D9A5F0();

  v60 = v76;
  [v76 setBool:1 forKey:v59];

  sub_269C734BC();
  sub_269C72FDC();
  sub_269C1B0B8(0, &qword_280C0AEB0);
  v61 = sub_269D9AC40();
  [v55 registerObserver:v58 queue:v61];
  swift_unknownObjectRelease();

  (*(v71 + 8))(v40, v43);
  (*(v46 + 8))(v47, v48);
  return v58;
}

id sub_269C742CC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v31 = a7;
  v32 = a8;
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v25 = a14;
  v26 = a13;
  v16 = *(a12 - 8);
  v17 = MEMORY[0x28223BE20](a1);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a10 - 8);
  MEMORY[0x28223BE20](v17);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = objc_allocWithZone(type metadata accessor for SleepActivityConfigurationModel());
  (*(v20 + 16))(v22, a1, a10);
  (*(v16 + 16))(v19, a2, a12);
  return sub_269C73D4C(v22, v19, v27, v28, v29, v30, v31, v32, v23, a10, a11, a12, v26, v25);
}

uint64_t type metadata accessor for SleepActivityConfigurationModel()
{
  result = qword_28034E750;
  if (!qword_28034E750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269C744FC()
{
  sub_269C74908(319, &qword_28034E708, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_269C749A0(319, &qword_28034E718, type metadata accessor for SleepScheduleModel, MEMORY[0x277CBCED0]);
    if (v1 <= 0x3F)
    {
      sub_269C749A0(319, &qword_28034E728, type metadata accessor for SleepSettingsModel, MEMORY[0x277CBCED0]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_269C74908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SleepActivityConfigurationSectionLayout);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_269C7495C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

void sub_269C749A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269C74A04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Publisher.mapToVoid()(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_269D988C0();
}

uint64_t HKSPWeekdays.id.getter()
{
  v0 = HKSPIdentifierStringForWeekdays();
  v1 = sub_269D9A630();

  return v1;
}

uint64_t HKSPWeekdays.description.getter()
{
  v0 = NSStringFromHKSPWeekdays();
  v1 = sub_269D9A630();

  return v1;
}

uint64_t sub_269C74BF0()
{
  v0 = NSStringFromHKSPWeekdays();
  v1 = sub_269D9A630();

  return v1;
}

void sub_269C74C40(uint64_t *a1@<X8>)
{
  v2 = HKSPIdentifierStringForWeekdays();
  v3 = sub_269D9A630();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
}

unint64_t sub_269C74CA4()
{
  result = qword_28034DAF0;
  if (!qword_28034DAF0)
  {
    type metadata accessor for HKSPWeekdays(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034DAF0);
  }

  return result;
}

UIContentSizeCategory __swiftcall UIContentSizeCategory.sizeSmaller()()
{
  v0 = sub_269C75E94();

  return v0;
}

char *static UIContentSizeCategory.contentSizeCategoryFitting(startingAt:strings:size:)(id a1, unint64_t a2, double a3, double a4)
{
  v72 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_86;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  a1 = a1;
  v7 = a1;
  if (v6)
  {
    v8 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        a1 = MEMORY[0x26D651260](v8, a2);
      }

      else
      {
        if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        a1 = *(a2 + 8 * v8 + 32);
      }

      v9 = a1;
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_83;
      }

      v11 = v7;
      sub_269D9AD10();

      ++v8;
    }

    while (v10 != v6);
  }

  if (v72)
  {
    v12 = sub_269D9AF50();
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  v73 = v12;
  v71 = v12 & ~(v12 >> 63);
  if (v12)
  {
    v74 = MEMORY[0x277D84F90];
    result = sub_269C754F8(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return result;
    }

    v13 = v74;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      do
      {
        MEMORY[0x26D651260](v15, a2);
        sub_269D9AC70();
        v17 = v16;
        swift_unknownObjectRelease();
        v19 = *(v74 + 16);
        v18 = *(v74 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_269C754F8((v18 > 1), v19 + 1, 1);
        }

        ++v15;
        *(v74 + 16) = v19 + 1;
        *(v74 + 8 * v19 + 32) = v17;
      }

      while (v73 != v15);
    }

    else
    {
      v20 = (a2 + 32);
      do
      {
        v21 = *v20;
        sub_269D9AC70();
        v23 = v22;

        v25 = *(v74 + 16);
        v24 = *(v74 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_269C754F8((v24 > 1), v25 + 1, 1);
        }

        *(v74 + 16) = v25 + 1;
        *(v74 + 8 * v25 + 32) = v23;
        ++v20;
        --v12;
      }

      while (v12);
    }
  }

  v26 = *(v13 + 16);
  if (v26)
  {
    if (v26 > 3)
    {
      v27 = v26 & 0x7FFFFFFFFFFFFFFCLL;
      v29 = (v13 + 48);
      v28 = 0.0;
      v30 = v26 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v28 = v28 + *(v29 - 2) + *(v29 - 1) + *v29 + v29[1];
        v29 += 4;
        v30 -= 4;
      }

      while (v30);
      if (v26 == v27)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v27 = 0;
      v28 = 0.0;
    }

    v31 = v26 - v27;
    v32 = (v13 + 8 * v27 + 32);
    do
    {
      v33 = *v32++;
      v28 = v28 + v33;
      --v31;
    }

    while (v31);
  }

  else
  {
    v28 = 0.0;
  }

LABEL_36:

  if (v28 > a4)
  {
    v34 = a2 & 0xC000000000000001;
    v35 = v73;
    do
    {
      v37 = sub_269C75E94();
      v38 = sub_269D9A630();
      v40 = v39;
      if (v38 == sub_269D9A630() && v40 == v41)
      {

        return v7;
      }

      v42 = sub_269D9B280();
      v43 = v37;

      if (v42)
      {

        return v7;
      }

      v44 = v43;

      if (v72)
      {
        a1 = sub_269D9AF50();
        v45 = a1;
        v7 = v44;
        if (a1)
        {
LABEL_47:
          v46 = 0;
          while (1)
          {
            if (v34)
            {
              a1 = MEMORY[0x26D651260](v46, a2);
            }

            else
            {
              if (v46 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_82;
              }

              a1 = *(a2 + 8 * v46 + 32);
            }

            v47 = a1;
            v48 = (v46 + 1);
            if (__OFADD__(v46, 1))
            {
              break;
            }

            v49 = v7;
            sub_269D9AD10();

            ++v46;
            if (v48 == v45)
            {
              goto LABEL_55;
            }
          }

          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          v70 = a1;
          v6 = sub_269D9AF50();
          a1 = v70;
          goto LABEL_3;
        }
      }

      else
      {
        v45 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v7 = v44;
        if (v45)
        {
          goto LABEL_47;
        }
      }

LABEL_55:
      if (v35)
      {
        v75 = MEMORY[0x277D84F90];
        a1 = sub_269C754F8(0, v71, 0);
        if (v35 < 0)
        {
          goto LABEL_85;
        }

        v50 = v75;
        if (v34)
        {
          for (i = 0; i != v35; ++i)
          {
            MEMORY[0x26D651260](i, a2);
            sub_269D9AC70();
            v53 = v52;
            swift_unknownObjectRelease();
            v55 = *(v75 + 16);
            v54 = *(v75 + 24);
            if (v55 >= v54 >> 1)
            {
              sub_269C754F8((v54 > 1), v55 + 1, 1);
            }

            *(v75 + 16) = v55 + 1;
            *(v75 + 8 * v55 + 32) = v53;
          }
        }

        else
        {
          v63 = (a2 + 32);
          v64 = v35;
          do
          {
            v65 = *v63;
            sub_269D9AC70();
            v67 = v66;

            v69 = *(v75 + 16);
            v68 = *(v75 + 24);
            if (v69 >= v68 >> 1)
            {
              sub_269C754F8((v68 > 1), v69 + 1, 1);
            }

            *(v75 + 16) = v69 + 1;
            *(v75 + 8 * v69 + 32) = v67;
            ++v63;
            --v64;
            v35 = v73;
          }

          while (v64);
        }
      }

      else
      {
        v50 = MEMORY[0x277D84F90];
      }

      v56 = *(v50 + 16);
      if (v56)
      {
        if (v56 > 3)
        {
          v57 = v56 & 0x7FFFFFFFFFFFFFFCLL;
          v58 = (v50 + 48);
          v36 = 0.0;
          v59 = v56 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v36 = v36 + *(v58 - 2) + *(v58 - 1) + *v58 + v58[1];
            v58 += 4;
            v59 -= 4;
          }

          while (v59);
          if (v56 == v57)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v57 = 0;
          v36 = 0.0;
        }

        v60 = v56 - v57;
        v61 = (v50 + 8 * v57 + 32);
        do
        {
          v62 = *v61++;
          v36 = v36 + v62;
          --v60;
        }

        while (v60);
      }

      else
      {
        v36 = 0.0;
      }

LABEL_39:
    }

    while (v36 > a4);
  }

  return v7;
}

void *sub_269C75338(void *a1, int64_t a2, char a3)
{
  result = sub_269C75944(a1, a2, a3, *v3, &qword_28034E868, &qword_280350880);
  *v3 = result;
  return result;
}

char *sub_269C75370(char *a1, int64_t a2, char a3)
{
  result = sub_269C75628(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_269C75390(size_t a1, int64_t a2, char a3)
{
  result = sub_269C75CB4(a1, a2, a3, *v3, &qword_28034E3C8, MEMORY[0x277D10F78], MEMORY[0x277D10F78]);
  *v3 = result;
  return result;
}

char *sub_269C753E0(char *a1, int64_t a2, char a3)
{
  result = sub_269C75738(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_269C75400(size_t a1, int64_t a2, char a3)
{
  result = sub_269C75CB4(a1, a2, a3, *v3, &qword_280C0BBA8, type metadata accessor for SleepStageSegment, type metadata accessor for SleepStageSegment);
  *v3 = result;
  return result;
}

size_t sub_269C75450(size_t a1, int64_t a2, char a3)
{
  result = sub_269C75CB4(a1, a2, a3, *v3, &qword_280C0AD98, MEMORY[0x277CC88A8], MEMORY[0x277CC88A8]);
  *v3 = result;
  return result;
}

char *sub_269C754A0(char *a1, int64_t a2, char a3)
{
  result = sub_269C75840(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_269C754C0(void *a1, int64_t a2, char a3)
{
  result = sub_269C75944(a1, a2, a3, *v3, &qword_28034E100, &qword_28034E550);
  *v3 = result;
  return result;
}

char *sub_269C754F8(char *a1, int64_t a2, char a3)
{
  result = sub_269C75A98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_269C75518(size_t a1, int64_t a2, char a3)
{
  result = sub_269C75CB4(a1, a2, a3, *v3, &qword_28034E888, type metadata accessor for ScheduleOccurrenceViewModel, type metadata accessor for ScheduleOccurrenceViewModel);
  *v3 = result;
  return result;
}

char *sub_269C75568(char *a1, int64_t a2, char a3)
{
  result = sub_269C75BA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_269C75588(size_t a1, int64_t a2, char a3)
{
  result = sub_269C75CB4(a1, a2, a3, *v3, &qword_28034E878, type metadata accessor for SleepScoreComponentModel, type metadata accessor for SleepScoreComponentModel);
  *v3 = result;
  return result;
}

size_t sub_269C755D8(size_t a1, int64_t a2, char a3)
{
  result = sub_269C75CB4(a1, a2, a3, *v3, &qword_28034E870, MEMORY[0x277CC8918], MEMORY[0x277CC8918]);
  *v3 = result;
  return result;
}

char *sub_269C75628(char *result, int64_t a2, char a3, char *a4)
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
    sub_269C5C1B8(0, &qword_280C0B440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_269C75738(char *result, int64_t a2, char a3, char *a4)
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
    sub_269C5C1B8(0, &qword_280C0BBA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_269C75840(char *result, int64_t a2, char a3, char *a4)
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
    sub_269C5C1B8(0, &unk_28034E890);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_269C75944(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_269C764A0(0, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_269C3232C(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_269C75A98(char *result, int64_t a2, char a3, char *a4)
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
    sub_269C5C1B8(0, &qword_280C0B458);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_269C75BA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_269C7644C(0, &qword_28034E880, type metadata accessor for HKCategoryValueSleepAnalysis);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_269C75CB4(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_269C7644C(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_269C75E94()
{
  v0 = sub_269D9A630();
  v2 = v1;
  if (v0 == sub_269D9A630() && v2 == v3)
  {

    v6 = MEMORY[0x277D767F0];
  }

  else
  {
    v5 = sub_269D9B280();

    v6 = MEMORY[0x277D767F0];
    if ((v5 & 1) == 0)
    {
      v7 = sub_269D9A630();
      v9 = v8;
      if (v7 == sub_269D9A630() && v9 == v10)
      {

        v6 = MEMORY[0x277D767F8];
      }

      else
      {
        v12 = sub_269D9B280();

        v6 = MEMORY[0x277D767F8];
        if ((v12 & 1) == 0)
        {
          v13 = sub_269D9A630();
          v15 = v14;
          if (v13 == sub_269D9A630() && v15 == v16)
          {

            v6 = MEMORY[0x277D76800];
          }

          else
          {
            v18 = sub_269D9B280();

            v6 = MEMORY[0x277D76800];
            if ((v18 & 1) == 0)
            {
              v19 = sub_269D9A630();
              v21 = v20;
              if (v19 == sub_269D9A630() && v21 == v22)
              {

                v6 = MEMORY[0x277D76808];
              }

              else
              {
                v23 = sub_269D9B280();

                v6 = MEMORY[0x277D76808];
                if ((v23 & 1) == 0)
                {
                  v24 = sub_269D9A630();
                  v26 = v25;
                  if (v24 == sub_269D9A630() && v26 == v27)
                  {

                    v6 = MEMORY[0x277D76818];
                  }

                  else
                  {
                    v28 = sub_269D9B280();

                    v6 = MEMORY[0x277D76818];
                    if ((v28 & 1) == 0)
                    {
                      v29 = sub_269D9A630();
                      v31 = v30;
                      if (v29 == sub_269D9A630() && v31 == v32)
                      {

                        v6 = MEMORY[0x277D76820];
                      }

                      else
                      {
                        v33 = sub_269D9B280();

                        v6 = MEMORY[0x277D76820];
                        if ((v33 & 1) == 0)
                        {
                          v34 = sub_269D9A630();
                          v36 = v35;
                          if (v34 == sub_269D9A630() && v36 == v37)
                          {

                            v6 = MEMORY[0x277D76828];
                          }

                          else
                          {
                            v38 = sub_269D9B280();

                            v6 = MEMORY[0x277D76828];
                            if ((v38 & 1) == 0)
                            {
                              v39 = sub_269D9A630();
                              v41 = v40;
                              if (v39 == sub_269D9A630() && v41 == v42)
                              {

                                v6 = MEMORY[0x277D76838];
                              }

                              else
                              {
                                v43 = sub_269D9B280();

                                v6 = MEMORY[0x277D76838];
                                if ((v43 & 1) == 0)
                                {
                                  v44 = sub_269D9A630();
                                  v46 = v45;
                                  if (v44 == sub_269D9A630() && v46 == v47)
                                  {

                                    v6 = MEMORY[0x277D76840];
                                  }

                                  else
                                  {
                                    v48 = sub_269D9B280();

                                    v6 = MEMORY[0x277D76840];
                                    if ((v48 & 1) == 0)
                                    {
                                      v49 = sub_269D9A630();
                                      v51 = v50;
                                      if (v49 == sub_269D9A630() && v51 == v52)
                                      {

                                        v6 = MEMORY[0x277D76858];
                                      }

                                      else
                                      {
                                        v53 = sub_269D9B280();

                                        v6 = MEMORY[0x277D76858];
                                        if ((v53 & 1) == 0)
                                        {
                                          v54 = sub_269D9A630();
                                          v56 = v55;
                                          if (v54 == sub_269D9A630() && v56 == v57)
                                          {

                                            v6 = MEMORY[0x277D76830];
                                          }

                                          else
                                          {
                                            v58 = sub_269D9B280();

                                            v6 = MEMORY[0x277D76860];
                                            if (v58)
                                            {
                                              v6 = MEMORY[0x277D76830];
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
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return *v6;
}

void sub_269C7644C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9B240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269C764A0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_269C3232C(255, a3);
    v4 = sub_269D9B240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t HKSPSleepSchedule.sleepDurationGoalIfSet.getter()
{
  [v0 sleepDurationGoal];
  if (v1 <= 0.0)
  {
    return 0;
  }

  [v0 sleepDurationGoal];
  return v3;
}

uint64_t SleepSettingsProviding.sleepSettings.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  sub_269D987C0();

  return v3;
}

id sub_269C765C0(uint64_t a1, uint64_t a2, SEL *a3)
{
  (*(a2 + 24))();
  sub_269D987C0();

  if (!v6)
  {
    return 0;
  }

  v4 = [v6 *a3];

  return v4;
}

id SleepSettingsProvider.init(sleepStore:sleepSettings:)(void *a1, void *a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI21SleepSettingsProvider_sleepStore] = a1;
  sub_269C4CA64();
  swift_allocObject();
  v6 = a1;
  v7 = a2;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI21SleepSettingsProvider_currentSettingsPublisher] = sub_269D987F0();
  v11 = [v6 sleepFocusConfiguration];
  sub_269C767CC();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC13SleepHealthUI21SleepSettingsProvider_currentSleepFocusConfigurationPublisher] = sub_269D987F0();
  v10.receiver = v3;
  v10.super_class = type metadata accessor for SleepSettingsProvider();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  [v6 addObserver_];

  return v8;
}

void sub_269C767CC()
{
  if (!qword_28034E8C8)
  {
    sub_269C77450(255, &qword_28034E8D0, &qword_28034E8D8);
    v0 = sub_269D987E0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E8C8);
    }
  }
}

id SleepSettingsProvider.__allocating_init(sleepStore:)(void *a1)
{
  v2 = HKSPSleepStore.settings.getter();
  v3 = objc_allocWithZone(type metadata accessor for SleepSettingsProvider());
  return SleepSettingsProvider.init(sleepStore:sleepSettings:)(a1, v2);
}

id SleepSettingsProvider.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC13SleepHealthUI21SleepSettingsProvider_sleepStore] removeObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepSettingsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SleepSettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_269C76B94(void *a1)
{
  swift_getObjectType();
  v2 = sub_269D9A2A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269C1B0B8(0, &qword_280C0AEB0);
  *v5 = sub_269D9AC40();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v6 = sub_269D9A2B0();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_280C0B218 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = sub_269D98250();
  __swift_project_value_buffer(v7, qword_280C0B220);
  v8 = a1;
  v9 = sub_269D98230();
  v10 = sub_269D9AB80();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v11 = 136446466;
    v13 = sub_269D9B4D0();
    v15 = sub_269C2EACC(v13, v14, &v28);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2114;
    *(v11 + 14) = v8;
    *v12 = v8;
    v16 = v8;
    _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] Settings did change: %{public}@", v11, 0x16u);
    sub_269C773DC(v12);
    MEMORY[0x26D652460](v12, -1, -1);
    v17 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x26D652460](v17, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }

  sub_269D987C0();
  v18 = v28;
  sub_269C1B0B8(0, &qword_28034E8C0);
  v19 = sub_269D9ADD0();

  if (v19)
  {
    v20 = sub_269D98230();
    v21 = sub_269D9AB80();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136446210;
      v24 = sub_269D9B4D0();
      v26 = sub_269C2EACC(v24, v25, &v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_269C18000, v20, v21, "[%{public}s] Updated settings matched previous settings. Not publishing.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x26D652460](v23, -1, -1);
      MEMORY[0x26D652460](v22, -1, -1);
    }
  }

  else
  {
    v28 = v8;
    sub_269D987B0();
  }
}

void sub_269C76F78(void *a1)
{
  swift_getObjectType();
  v2 = sub_269D9A2A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269C1B0B8(0, &qword_280C0AEB0);
  *v5 = sub_269D9AC40();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v6 = sub_269D9A2B0();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_280C0B218 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = sub_269D98250();
  __swift_project_value_buffer(v7, qword_280C0B220);
  v8 = a1;
  v9 = sub_269D98230();
  v10 = sub_269D9AB80();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v11 = 136446466;
    v13 = sub_269D9B4D0();
    v15 = sub_269C2EACC(v13, v14, &v30);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2114;
    *(v11 + 14) = v8;
    *v12 = v8;
    v16 = v8;
    _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] Sleep focus did change: %{public}@", v11, 0x16u);
    sub_269C773DC(v12);
    MEMORY[0x26D652460](v12, -1, -1);
    v17 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x26D652460](v17, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }

  sub_269D987C0();
  v18 = v30;
  if (v30 && (sub_269C1B0B8(0, &qword_28034E8D8), v19 = v8, v20 = sub_269D9ADD0(), v19, v18, (v20 & 1) != 0))
  {
    v21 = sub_269D98230();
    v22 = sub_269D9AB80();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136446210;
      v25 = sub_269D9B4D0();
      v27 = sub_269C2EACC(v25, v26, &v30);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_269C18000, v21, v22, "[%{public}s] Updated sleep focus config matched previous config. Not publishing.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D652460](v24, -1, -1);
      MEMORY[0x26D652460](v23, -1, -1);
    }
  }

  else
  {
    v30 = v8;
    v28 = v8;
    sub_269D987B0();
  }
}

uint64_t sub_269C773DC(uint64_t a1)
{
  sub_269C77450(0, &unk_280C0ADC0, &qword_280C0ADD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269C77450(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_269C1B0B8(255, a3);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t CurrentValueSubject<>.updateValueIfDifferent(_:)(uint64_t a1)
{
  v3 = *(*v1 + *MEMORY[0x277CBCE38]);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - v5;
  sub_269D987C0();
  v7 = sub_269D9A560();
  result = (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    (*(v4 + 16))(v6, a1, v3);
    return sub_269D987D0();
  }

  return result;
}

id sub_269C77610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_269D9A5F0();
  }

  else
  {
    v5 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for EditScheduleLinkTableViewCell();
  v6 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_, a1, v5);

  v7 = qword_280C0AE70;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v12[3] = &type metadata for EditScheduleLinkTableViewCell.Model;
  v12[4] = &off_287AA2FC0;
  v12[0] = sub_269D972C0();
  v12[1] = v9;
  v12[2] = 0;
  v10 = OBJC_IVAR____TtC13SleepHealthUI17TextTableViewCell_model;
  swift_beginAccess();
  sub_269C77A80(v12, v8 + v10);
  swift_endAccess();
  sub_269D42C98();
  sub_269C77BA0(v12);
  sub_269C778FC();

  return v8;
}

void sub_269C778FC()
{
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    [v1 setTextAlignment_];
  }

  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v6[4] = sub_269CC7C58;
  v6[5] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_269CC7F6C;
  v6[3] = &block_descriptor_3;
  v4 = _Block_copy(v6);
  v5 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  [v0 setBackgroundColor_];
}

id sub_269C77A10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditScheduleLinkTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269C77A80(uint64_t a1, uint64_t a2)
{
  sub_269C77AE4();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_269C77AE4()
{
  if (!qword_28034E940)
  {
    sub_269C77B3C();
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E940);
    }
  }
}

unint64_t sub_269C77B3C()
{
  result = qword_28034E948;
  if (!qword_28034E948)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28034E948);
  }

  return result;
}

uint64_t sub_269C77BA0(uint64_t a1)
{
  sub_269C77AE4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269C77BFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_269C77C44(uint64_t result, int a2, int a3)
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

uint64_t SleepOnboardingAnalyticsTracking<>.analyticsManager.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 8))(a1, a3);
  sub_269C2DB5C(v3 + 88, v8);

  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  v6 = (*(*(v5 + 8) + 8))(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t SleepOnboardingAnalyticsTracking<>.context.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = (*(a2 + 8))(a1, a2);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v7 = *(v4 + 16);

  *a3 = v7;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  return result;
}

void SleepOnboardingAnalyticsTracking<>.trackOnboardingStep(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a4 + 8))(a3, a4);
  v10 = *(a5 + 8);
  v11 = *(v10(a3, a5) + 24);

  v12 = [objc_allocWithZone(MEMORY[0x277D62420]) initWithStep:a1 action:a2 entryPoint:v11];
  v13 = *(v10(a3, a5) + 16);

  v14 = [objc_allocWithZone(MEMORY[0x277D62418]) initWithOnboardingInfo:v12 provenanceInfo:v13];

  [v9 trackEvent_];
}

void SleepOnboardingAnalyticsTracking<>.trackOnboardingPromotion(context:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (*(*(a3 + 8) + 8))(a2);
  v6 = [objc_allocWithZone(MEMORY[0x277D62420]) initWithStep:0 action:0 entryPoint:v4];
  v7 = [objc_allocWithZone(MEMORY[0x277D62418]) initWithOnboardingInfo:v6 provenanceInfo:v3];

  [v5 trackEvent_];
}

uint64_t sub_269C77FE0()
{
  v0 = sub_269D98250();
  __swift_allocate_value_buffer(v0, qword_28035E4B8);
  __swift_project_value_buffer(v0, qword_28035E4B8);
  return sub_269D98240();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id SleepScheduleModel.__allocating_init(sleepScheduleProvider:currentDateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = sub_269C799A8(v9, a2, a3, v3, v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

id SleepScheduleModel.__allocating_init(sleepStore:)(void *a1)
{
  type metadata accessor for SleepScheduleProvider();
  v2 = a1;
  v3 = SleepScheduleProvider.__allocating_init(sleepStore:)(v2);
  v4 = HKSPCurrentDateProvider();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = objc_allocWithZone(type metadata accessor for SleepScheduleModel());
  v7 = sub_269C79AD0(v3, sub_269C79AA4, v5, v6);

  return v7;
}

void sub_269C781F0(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  sub_269D97540();
}

id SleepScheduleModel.init(sleepScheduleProvider:currentDateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_269C797E4(v11, a2, a3, v3, v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v13;
}

void *sub_269C78358()
{
  result = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
  if (result)
  {
    [result windDownTime];
    return (v2 > 0.0);
  }

  return result;
}

double sub_269C78390()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
  if (!v1)
  {
    return 0.0;
  }

  [v1 windDownTime];
  return result;
}

void sub_269C783B4()
{
  [*(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule) setWindDownTime_];

  sub_269C78F44();
}

void (*sub_269C783F0(void *a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    [v4 windDownTime];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_269C78458;
}

uint64_t sub_269C78490()
{
  v1 = sub_269D9ACD0();
  v2 = *(v1 - 8);
  v36 = v1;
  v37 = v2;
  MEMORY[0x28223BE20](v1);
  v34 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C2FB3C();
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  MEMORY[0x28223BE20](v4);
  v35 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C71370(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C79DAC();
  v33 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 24);
  v15 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 32);
  __swift_project_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider), v14);
  v40 = (*(v15 + 24))(v14, v15);
  v16 = MEMORY[0x277CBCE30];
  sub_269C79E98(0, &qword_280C0B140, MEMORY[0x277CBCE30]);
  sub_269C79F20(&qword_28034D970, &qword_280C0B140, v16);
  v17 = sub_269D988B0();

  v40 = v17;
  sub_269C1B0B8(0, &qword_280C0AEB0);
  v18 = sub_269D9AC40();
  v41 = v18;
  v19 = sub_269D9AC30();
  v20 = *(v19 - 8);
  v31 = *(v20 + 56);
  v32 = v20 + 56;
  v31(v9, 1, 1, v19);
  v21 = MEMORY[0x277CBCD88];
  sub_269C79E98(0, &qword_28034E988, MEMORY[0x277CBCD88]);
  sub_269C79F20(&qword_28034E990, &qword_28034E988, v21);
  v30[2] = sub_269C2FC08();
  sub_269D988E0();
  sub_269C476EC(v9);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C79D64(&qword_28034E998, 255, sub_269C79DAC);
  v22 = v33;
  sub_269D98900();

  (*(v11 + 8))(v13, v22);
  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();

  v23 = [objc_opt_self() defaultCenter];
  v24 = v34;
  sub_269D9ACE0();

  v25 = sub_269D9AC40();
  v40 = v25;
  v31(v9, 1, 1, v19);
  sub_269C79D64(&qword_280C0B4B0, 255, MEMORY[0x277CC9DB0]);
  v27 = v35;
  v26 = v36;
  sub_269D988E0();
  sub_269C476EC(v9);

  (*(v37 + 8))(v24, v26);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C79D64(&qword_280C0B178, 255, sub_269C2FB3C);
  v28 = v38;
  sub_269D98900();

  (*(v39 + 8))(v27, v28);
  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();
}

void sub_269C78AFC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_269C78C04(v1);
  }
}

uint64_t sub_269C78B58()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    type metadata accessor for SleepScheduleModel();
    sub_269C79D64(&qword_28034E860, v2, type metadata accessor for SleepScheduleModel);
    sub_269D98770();

    sub_269D98810();
  }

  return result;
}

void sub_269C78C04(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (!a1)
  {
    v5 = (v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
    v6 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
LABEL_10:
    if (!v6)
    {
      return;
    }

    v4 = 0;
    goto LABEL_12;
  }

  [a1 mutableCopy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034E978);
  if (swift_dynamicCast())
  {
    v4 = v26;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D62488]) init];
  }

  v5 = (v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
  v6 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
  if (!v4)
  {
    goto LABEL_10;
  }

  if (!v6 || (v7 = v6, v8 = v4, v9 = sub_269D9ADD0(), v8, v7, (v9 & 1) == 0))
  {
LABEL_12:
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v10 = sub_269D98250();
    __swift_project_value_buffer(v10, qword_280C0B220);
    v11 = v4;
    v12 = sub_269D98230();
    v13 = sub_269D9AB40();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25[0] = v15;
      *v14 = 136446466;
      v16 = sub_269D9B4D0();
      v18 = sub_269C2EACC(v16, v17, v25);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v26 = v4;
      sub_269C77450(0, &qword_28034E970, &qword_28034E978);
      v19 = v11;
      v20 = sub_269D9A660();
      v22 = sub_269C2EACC(v20, v21, v25);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_269C18000, v12, v13, "[%{public}s] Updating sleep schedule: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v15, -1, -1);
      MEMORY[0x26D652460](v14, -1, -1);
    }

    v23 = *v5;
    *v5 = v4;
    v8 = v11;

    type metadata accessor for SleepScheduleModel();
    sub_269C79D64(&qword_28034E860, v24, type metadata accessor for SleepScheduleModel);
    sub_269D98770();
    sub_269D98810();
  }
}

void sub_269C78F44()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule;
  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule];
  if (v4)
  {
    v5 = ObjectType;
    v6 = qword_280C0B218;
    v7 = v4;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_269D98250();
    __swift_project_value_buffer(v8, qword_280C0B220);
    v9 = v1;
    v10 = sub_269D98230();
    v11 = sub_269D9AB40();

    if (os_log_type_enabled(v10, v11))
    {
      v29 = v7;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136446466;
      v14 = sub_269D9B4D0();
      v16 = sub_269C2EACC(v14, v15, aBlock);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      v30 = *&v1[v3];
      sub_269C77450(0, &qword_28034E970, &qword_28034E978);
      v17 = v30;
      v18 = sub_269D9A660();
      v20 = sub_269C2EACC(v18, v19, aBlock);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_269C18000, v10, v11, "[%{public}s] Saving sleep schedule: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v13, -1, -1);
      v21 = v12;
      v7 = v29;
      MEMORY[0x26D652460](v21, -1, -1);
    }

    v22 = &v9[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider];
    v23 = *&v9[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 24];
    v24 = *(v22 + 4);
    __swift_project_boxed_opaque_existential_1Tm(v22, v23);
    v25 = (*(v24 + 8))(v23, v24);
    v26 = swift_allocObject();
    *(v26 + 16) = v5;
    aBlock[4] = sub_269C79F74;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_269C7A600;
    aBlock[3] = &block_descriptor_4;
    v27 = _Block_copy(aBlock);
    v28 = v7;

    [v25 saveCurrentSleepSchedule:v28 completion:v27];
    _Block_release(v27);
  }
}

void sub_269C7923C(char a1, id a2)
{
  if (a1)
  {
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v2 = sub_269D98250();
    __swift_project_value_buffer(v2, qword_280C0B220);
    v27 = sub_269D98230();
    v3 = sub_269D9AB40();
    if (os_log_type_enabled(v27, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v29 = v5;
      *v4 = 136446210;
      v6 = sub_269D9B4D0();
      v8 = sub_269C2EACC(v6, v7, &v29);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_269C18000, v27, v3, "[%{public}s] Successfully saved sleep schedule.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x26D652460](v5, -1, -1);
      MEMORY[0x26D652460](v4, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (a2)
    {
      v9 = a2;
    }

    else
    {
      type metadata accessor for HKError(0);
      v28 = 0;
      sub_269C581B0(MEMORY[0x277D84F90]);
      sub_269C79D64(&qword_28034DB88, 255, type metadata accessor for HKError);
      sub_269D97340();
      a2 = 0;
      v9 = v29;
    }

    v10 = a2;
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v11 = sub_269D98250();
    __swift_project_value_buffer(v11, qword_280C0B220);
    v12 = v9;
    v13 = sub_269D98230();
    v14 = sub_269D9AB60();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136446466;
      v17 = sub_269D9B4D0();
      v19 = sub_269C2EACC(v17, v18, &v29);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v22 + 16))(&v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      v23 = sub_269D9A660();
      v25 = sub_269C2EACC(v23, v24, &v29);

      *(v15 + 14) = v25;
      _os_log_impl(&dword_269C18000, v13, v14, "[%{public}s] Error saving sleep schedule: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v16, -1, -1);
      MEMORY[0x26D652460](v15, -1, -1);
    }

    else
    {
    }
  }
}

id SleepScheduleModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepScheduleModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepScheduleModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269C797A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SleepScheduleModel();
  result = sub_269D98770();
  *a1 = result;
  return result;
}

id sub_269C797E4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v23[3] = a5;
  v23[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v13 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule;
  *&a4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule] = 0;
  *&a4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_subscriptions] = MEMORY[0x277D84FA0];
  sub_269C2DB5C(v23, &a4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider]);
  v14 = &a4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_currentDateProvider];
  *v14 = a2;
  *(v14 + 1) = a3;

  v15 = SleepScheduleProviding.sleepSchedule.getter(a5, a6);
  if (v15)
  {
    v16 = v15;
    [v15 mutableCopy];
    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034E978);
    if (swift_dynamicCast())
    {
      v17 = v21;
    }

    else
    {
      v17 = [objc_allocWithZone(MEMORY[0x277D62488]) init];
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *&a4[v13];
  *&a4[v13] = v17;

  v22.receiver = a4;
  v22.super_class = type metadata accessor for SleepScheduleModel();
  v19 = objc_msgSendSuper2(&v22, sel_init);
  sub_269C78490();

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  return v19;
}

id sub_269C799A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(type metadata accessor for SleepScheduleModel());
  (*(v11 + 16))(v13, a1, a5);
  return sub_269C797E4(v13, a2, a3, v14, a5, a6);
}

id sub_269C79AD0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v17[3] = type metadata accessor for SleepScheduleProvider();
  v17[4] = &protocol witness table for SleepScheduleProvider;
  v17[0] = a1;
  v8 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule;
  *&a4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule] = 0;
  *&a4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_subscriptions] = MEMORY[0x277D84FA0];
  sub_269C2DB5C(v17, &a4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider]);
  v9 = &a4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_currentDateProvider];
  *v9 = a2;
  *(v9 + 1) = a3;

  sub_269D987C0();
  if (v15)
  {
    [v15 mutableCopy];
    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034E978);
    if (swift_dynamicCast())
    {
      v10 = v14;
    }

    else
    {
      v10 = [objc_allocWithZone(MEMORY[0x277D62488]) init];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *&a4[v8];
  *&a4[v8] = v10;

  v16.receiver = a4;
  v16.super_class = type metadata accessor for SleepScheduleModel();
  v12 = objc_msgSendSuper2(&v16, sel_init);
  sub_269C78490();

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v12;
}

uint64_t sub_269C79D64(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_269C79DAC()
{
  if (!qword_28034E980)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_269C79E98(255, &qword_28034E988, MEMORY[0x277CBCD88]);
    sub_269C1B0B8(255, &qword_280C0AEB0);
    sub_269C79F20(&qword_28034E990, &qword_28034E988, v0);
    sub_269C2FC08();
    v1 = sub_269D98710();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E980);
    }
  }
}

void sub_269C79E98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_269C77450(255, &qword_280C0AEE0, &qword_280C0AEF0);
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_269C79F20(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_269C79E98(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269C79F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_269C7FD00(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C807A0(a3, v11, sub_269C7FD00);
  v12 = sub_269D9A900();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_269C80808(v11, sub_269C7FD00);
  }

  else
  {
    sub_269D9A8F0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_269D9A880();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_269D9A680() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_269C80808(a3, sub_269C7FD00);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_269C80808(a3, sub_269C7FD00);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_269C7A29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_269C7FD00(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C807A0(a3, v11, sub_269C7FD00);
  v12 = sub_269D9A900();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_269C80808(v11, sub_269C7FD00);
  }

  else
  {
    sub_269D9A8F0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_269D9A880();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_269D9A680() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_269C80920(0, &unk_28034EA80, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_269C80808(v25[0], sub_269C7FD00);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_269C80808(a3, sub_269C7FD00);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_269C80920(0, &unk_28034EA80, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_269C7A600(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_269C7A678()
{
  swift_getObjectType();
  v2 = sub_269D9B4D0();
  MEMORY[0x26D650930](58, 0xE100000000000000);
  MEMORY[0x26D650930](*(v0 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier), *(v0 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier + 8));
  return v2;
}

uint64_t sub_269C7A6F0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  *a1 = v3;
  return result;
}

uint64_t sub_269C7A770(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_269D98890();
  return sub_269C7A7EC();
}

uint64_t sub_269C7A7EC()
{
  swift_getObjectType();
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v1 = sub_269D98250();
  __swift_project_value_buffer(v1, qword_280351208);
  v2 = v0;
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446466;
    v13 = sub_269D9B4D0();
    v14 = v7;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*&v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier], *&v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier + 8]);
    v8 = sub_269C2EACC(v13, v14, &v15);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_269D98880();

    v9 = sub_269D9A660();
    v11 = sub_269C2EACC(v9, v10, &v15);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] updated state: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  if (v13 == 3)
  {
    sub_269CB85C4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  LOBYTE(v15) = v13;
  return sub_269D98780();
}

uint64_t sub_269C7AAD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();
}

uint64_t sub_269C7AB4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_269D98890();
  return sub_269C7A7EC();
}

uint64_t (*sub_269C7ABC0(void *a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  return sub_269C7AC58;
}

uint64_t sub_269C7AC58(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  *(a1 + 9) = v2;
  v4 = v3;
  sub_269D98890();
  return sub_269C7A7EC();
}

void (*sub_269C7AD10(uint64_t *a1))(uint64_t, char)
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
  sub_269C80920(0, &qword_28034E9C0, &type metadata for LockScreenContentState, MEMORY[0x277CBCEC0]);
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

  v10 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_269C80920(0, &qword_28034E9B8, &type metadata for LockScreenContentState, MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_269D98850();
  swift_endAccess();
  return sub_269C80D18;
}

uint64_t sub_269C7AEB0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  *a1 = v3;
  return result;
}

uint64_t sub_269C7AF30(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_269D98890();
}

uint64_t sub_269C7AFA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  return v1;
}

uint64_t sub_269C7B014()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_269D98890();
}

void (*sub_269C7B080(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_269D98870();
  return sub_269C458D0;
}

uint64_t sub_269C7B124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  swift_beginAccess();
  sub_269C80920(0, a5, a6, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269C7B1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  v20 = a8;
  sub_269C80920(0, a5, a6, MEMORY[0x277CBCEC0]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  v18 = *(v12 + 16);
  v18(&v20 - v16, a1, v11);
  v18(v15, v17, v11);
  swift_beginAccess();
  sub_269C80920(0, v20, a6, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_269C7B388(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  sub_269C80920(0, a2, a3, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269C7B43C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  sub_269C80920(0, a2, a3, MEMORY[0x277CBCEC0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  (*(v10 + 16))(&v13 - v11, a1, v9);
  swift_beginAccess();
  sub_269C80920(0, a5, a3, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v10 + 8))(a1, v9);
}

void (*sub_269C7B59C(uint64_t *a1))(uint64_t, char)
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
  sub_269C80920(0, &qword_28034DEF0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
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

  v10 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel__alarmButtonPressed;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_269C80920(0, &qword_28034E9D0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_269D98850();
  swift_endAccess();
  return sub_269C7B73C;
}

uint64_t sub_269C7B740@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269D97670();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269C41A14(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v17[-v11];
  v13 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel____lazy_storage___gregorianCalendar;
  swift_beginAccess();
  sub_269C807A0(v1 + v13, v12, sub_269C41A14);
  v14 = sub_269D977A0();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return (*(v15 + 32))(a1, v12, v14);
  }

  sub_269C80808(v12, sub_269C41A14);
  (*(v4 + 104))(v6, *MEMORY[0x277CC9830], v3);
  sub_269D97680();
  (*(v4 + 8))(v6, v3);
  (*(v15 + 16))(v10, a1, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  swift_beginAccess();
  sub_269C80A28(v10, v1 + v13);
  return swift_endAccess();
}

void LockScreenContentModel.init(debugIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v81 = a2;
  v76 = a1;
  sub_269C7C508(0);
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  v73 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D839B0];
  sub_269C80920(0, &qword_28034DEF0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x28223BE20](v7);
  v78 = &v72 - v8;
  v9 = MEMORY[0x277CBCED0];
  sub_269C80920(0, &qword_28034E9D0, v6, MEMORY[0x277CBCED0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v72 - v13;
  sub_269C80920(0, &qword_28034E9B8, &type metadata for LockScreenContentState, v9);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v72 - v18;
  v20 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_stateDidChange;
  sub_269C7C53C();
  swift_allocObject();
  *&v3[v20] = sub_269D98790();
  v21 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel__state;
  LOBYTE(aBlock[0]) = 0;
  sub_269D98840();
  (*(v17 + 32))(&v3[v21], v19, v16);
  v22 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel__alarmButtonPressed;
  LOBYTE(aBlock[0]) = 0;
  sub_269D98840();
  v23 = *(v12 + 32);
  v77 = v11;
  v23(&v3[v22], v14, v11);
  v24 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepStore;
  if (qword_28034D630 != -1)
  {
    swift_once();
  }

  v25 = qword_28035E468;
  v26 = objc_allocWithZone(MEMORY[0x277D62528]);
  v27 = v25;
  v28 = sub_269D9A5F0();
  v29 = [v26 initWithIdentifier:v28 healthStore:v27];

  *&v3[v24] = v29;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_alarmProvider] = 0;
  v30 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel____lazy_storage___gregorianCalendar;
  v31 = sub_269D977A0();
  (*(*(v31 - 8) + 56))(&v3[v30], 1, 1, v31);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_cancellables] = MEMORY[0x277D84FA0];
  v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_visible] = 0;
  v32 = &v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_lockScreenState];
  *v32 = 0;
  v32[8] = 1;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepScheduleModel] = 0;
  v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState] = 4;
  v33 = &v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier];
  v34 = v76;
  v35 = v81;
  *v33 = v76;
  v33[1] = v35;
  v36 = objc_allocWithZone(type metadata accessor for LocationModel());
  swift_bridgeObjectRetain_n();
  v37 = LocationModel.init(debugIdentifier:)(v34, v35);
  v38 = objc_allocWithZone(type metadata accessor for WeatherModel(0));
  v39 = WeatherModel.init(locationModel:debugIdentifier:)(v37, v34, v35);
  v40 = *&v3[v24];
  v41 = objc_allocWithZone(type metadata accessor for WeatherPrefetchScheduler());
  v42 = WeatherPrefetchScheduler.init(sleepStore:)(v40);
  type metadata accessor for WeatherPrefetcher();
  swift_allocObject();
  v43 = v39;
  v72 = v42;
  v44 = sub_269CB9254(v43, v42);

  *&v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_weatherPrefetcher] = v44;
  type metadata accessor for ContentAppearenceProvider();
  swift_allocObject();

  *&v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_contentAppearanceProvider] = sub_269CEE6F4(v34, v35);
  v45 = type metadata accessor for LockScreenContentModel();
  v83.receiver = v3;
  v83.super_class = v45;
  v46 = objc_msgSendSuper2(&v83, sel_init);
  v47 = qword_28034D750;
  v48 = v46;
  if (v47 != -1)
  {
    swift_once();
  }

  v49 = sub_269D98250();
  __swift_project_value_buffer(v49, qword_280351238);
  v50 = sub_269D98230();
  v51 = sub_269D9AB80();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136446210;
    v54 = sub_269C7A678();
    v56 = sub_269C2EACC(v54, v55, aBlock);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_269C18000, v50, v51, "[%{public}s] init", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x26D652460](v53, -1, -1);
    MEMORY[0x26D652460](v52, -1, -1);
  }

  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for AlarmProvider();
  swift_allocObject();
  v58 = v48;
  v59 = sub_269D5C3C0(sub_269C7FBB8, v57);

  v60 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_alarmProvider;
  *&v58[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_alarmProvider] = v59;

  swift_beginAccess();

  v61 = v78;
  sub_269D98850();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C7FBC8();
  v62 = v80;
  sub_269D98900();

  (*(v79 + 8))(v61, v62);
  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();

  v63 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepStore;
  [*&v58[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepStore] addObserver_];
  v64 = *&v58[v63];
  v65 = swift_allocObject();
  *(v65 + 16) = v58;
  aBlock[4] = sub_269C7FC44;
  aBlock[5] = v65;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269C4D5F0;
  aBlock[3] = &block_descriptor_5;
  v66 = _Block_copy(aBlock);
  v67 = v58;

  [v64 sleepScheduleModelWithCompletion_];
  _Block_release(v66);
  if (*&v58[v60])
  {

    sub_269D5B5D8();

    swift_beginAccess();
    sub_269C80C2C(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);

    v68 = v73;
    sub_269D98850();
    swift_endAccess();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_269C80BB0(&qword_28034EA48, sub_269C7C508);
    v69 = v75;
    sub_269D98900();

    (*(v74 + 8))(v68, v69);
    swift_beginAccess();
    sub_269D98740();
    swift_endAccess();

    v70 = byte_28034E9A0;

    v71 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
    swift_beginAccess();
    v67[v71] = v70;
  }

  else
  {
    __break(1u);
  }
}

void sub_269C7C53C()
{
  if (!qword_28034E9F0)
  {
    v0 = sub_269D987A0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E9F0);
    }
  }
}

void sub_269C7C59C(uint64_t a1)
{
  v2 = type metadata accessor for Alarm();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  sub_269C7FC6C(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v37 = v3;
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v20 = sub_269D98250();
    __swift_project_value_buffer(v20, qword_280351208);
    sub_269C807A0(a1, v17, sub_269C7FC6C);
    v21 = v19;
    v22 = sub_269D98230();
    v23 = sub_269D9AB80();

    if (os_log_type_enabled(v22, v23))
    {
      v35 = v23;
      v24 = v21;
      v25 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = v34;
      *v25 = 136446466;
      v36 = v24;
      v26 = sub_269C7A678();
      v28 = sub_269C2EACC(v26, v27, &v38);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2082;
      sub_269C807A0(v17, v15, sub_269C7FC6C);
      sub_269C807A0(v15, v12, sub_269C7FC6C);
      if ((*(v37 + 48))(v12, 1, v2) == 1)
      {
        v29 = 0xE300000000000000;
        v30 = 7104878;
      }

      else
      {
        sub_269C80C90(v12, v8);
        sub_269C807A0(v8, v6, type metadata accessor for Alarm);
        v30 = sub_269D9A660();
        v29 = v31;
        sub_269C80808(v8, type metadata accessor for Alarm);
      }

      sub_269C80808(v15, sub_269C7FC6C);
      sub_269C80808(v17, sub_269C7FC6C);
      v32 = sub_269C2EACC(v30, v29, &v38);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_269C18000, v22, v35, "[%{public}s] updated alarm: %{public}s", v25, 0x16u);
      v33 = v34;
      swift_arrayDestroy();
      MEMORY[0x26D652460](v33, -1, -1);
      MEMORY[0x26D652460](v25, -1, -1);

      v21 = v36;
    }

    else
    {

      sub_269C80808(v17, sub_269C7FC6C);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_269D98880();

    if (v38)
    {
      if (v38 != 3)
      {
        type metadata accessor for LockScreenContentModel();
        sub_269C80BB0(&unk_28034EA90, type metadata accessor for LockScreenContentModel);
        sub_269D98770();
        sub_269D98810();
      }
    }
  }
}

void sub_269C7CA78(char *a1)
{
  v1 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_visible) = v1;
    sub_269C7D050();
  }

  else
  {
  }
}

void sub_269C7CB5C()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_269D98880();

    if (v2 == 3)
    {
      type metadata accessor for LockScreenContentModel();
      sub_269C80BB0(&unk_28034EA90, type metadata accessor for LockScreenContentModel);
      sub_269D98770();
      sub_269D98810();
    }
  }

  else
  {
  }
}

id LockScreenContentModel.__deallocating_deinit()
{
  swift_getObjectType();
  if (qword_28034D750 != -1)
  {
    swift_once();
  }

  v1 = sub_269D98250();
  __swift_project_value_buffer(v1, qword_280351238);
  v2 = v0;
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v11 = sub_269D9B4D0();
    v12 = v7;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*&v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier], *&v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier + 8]);
    v8 = sub_269C2EACC(v11, v12, &v13);

    *(v5 + 4) = v8;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v9 = type metadata accessor for LockScreenContentModel();
  v14.receiver = v2;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, sel_dealloc);
}

void sub_269C7D050()
{
  swift_getObjectType();
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v1 = sub_269D98250();
  __swift_project_value_buffer(v1, qword_280351208);
  v2 = v0;
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446466;
    v12 = sub_269D9B4D0();
    v13 = v7;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*&v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier], *&v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier + 8]);
    v8 = sub_269C2EACC(v12, v13, &v14);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    if (v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_visible])
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_visible])
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = sub_269C2EACC(v9, v10, &v14);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] updated visible: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  if (v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_visible] == 1)
  {
    sub_269C7DAE8();
  }
}

id sub_269C7D268()
{
  result = *(v0 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepScheduleModel);
  if (result)
  {
    result = [result sleepSettings];
    if (result)
    {
      v2 = result;
      v3 = [result sleepModeOptions];

      return ((v3 >> 3) & 1);
    }
  }

  return result;
}

uint64_t sub_269C7D2C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_alarmProvider);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC13SleepHealthUI13AlarmProvider_alarm;
    swift_beginAccess();
    return sub_269C807A0(v3 + v4, a1, sub_269C7FC6C);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_269C7D34C(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_280351208);
  v5 = sub_269D98230();
  v6 = sub_269D9AB80();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    v9 = sub_269D9B4D0();
    v11 = sub_269C2EACC(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] dismiss active alarm", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D652460](v8, -1, -1);
    MEMORY[0x26D652460](v7, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_alarmProvider))
  {

    sub_269D5AF64(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_269C7D4E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_269D97580();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v7 = sub_269D98250();
  __swift_project_value_buffer(v7, qword_280351208);
  v8 = sub_269D98230();
  v9 = sub_269D9AB80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136446210;
    v12 = sub_269D9B4D0();
    v20 = v4;
    v14 = sub_269C2EACC(v12, v13, aBlock);
    v4 = v20;

    *(v10 + 4) = v14;
    _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] skip upcoming alarm", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D652460](v11, -1, -1);
    MEMORY[0x26D652460](v10, -1, -1);
  }

  v15 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepStore);
  sub_269D97570();
  v16 = sub_269D974B0();
  (*(v4 + 8))(v6, v3);
  v17 = swift_allocObject();
  *(v17 + 16) = ObjectType;
  aBlock[4] = sub_269C7FCA0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269C7A600;
  aBlock[3] = &block_descriptor_19;
  v18 = _Block_copy(aBlock);

  [v15 skipUpcomingWakeUpAlarmForDate:v16 completion:v18];
  _Block_release(v18);
}

void sub_269C7D7C0(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v3 = sub_269D98250();
    __swift_project_value_buffer(v3, qword_280351208);
    v4 = a2;
    oslog = sub_269D98230();
    v5 = sub_269D9AB60();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136446466;
      v8 = sub_269D9B4D0();
      v10 = sub_269C2EACC(v8, v9, &v17);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2082;
      if (a2)
      {
        v11 = a2;
        sub_269C80B44();
        v12 = sub_269D9A660();
        v14 = v13;
      }

      else
      {
        v14 = 0xE300000000000000;
        v12 = 7104878;
      }

      v15 = sub_269C2EACC(v12, v14, &v17);

      *(v6 + 14) = v15;
      _os_log_impl(&dword_269C18000, oslog, v5, "[%{public}s] failed to skip upcoming alarm: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v7, -1, -1);
      MEMORY[0x26D652460](v6, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_269C7D9BC()
{
  v1 = v0 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_lockScreenState;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_269C7DA08(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_lockScreenState;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return sub_269C7DAE8();
}

uint64_t (*sub_269C7DA6C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_269C7DAD0;
}

uint64_t sub_269C7DAE8()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  swift_beginAccess();
  if (v0[v1] != 4)
  {
    goto LABEL_3;
  }

  v2 = &v0[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_lockScreenState];
  swift_beginAccess();
  if (v2[8])
  {
    goto LABEL_3;
  }

  v5 = *v2;
  if (*v2 > 1)
  {
    if (v5 == 2 || v5 == 3)
    {
      goto LABEL_3;
    }
  }

  else if (v5 <= 1)
  {
LABEL_3:
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v0;
    sub_269D98890();
    return sub_269C7A7EC();
  }

  result = sub_269D9B100();
  __break(1u);
  return result;
}

void sub_269C7DD34(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v8 = *&v4[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepStore];
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  v12[4] = a2;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_269C7A600;
  v12[3] = a3;
  v10 = _Block_copy(v12);
  v11 = v4;

  [v8 *a4];
  _Block_release(v10);
}

void sub_269C7DE04(char a1, void *a2, void *a3, const char *a4, const char *a5)
{
  swift_getObjectType();
  if (a1)
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v10 = sub_269D98250();
    __swift_project_value_buffer(v10, qword_280351208);
    v11 = a3;
    oslog = sub_269D98230();
    v12 = sub_269D9AB80();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v36 = v14;
      *v13 = 136446210;
      v32 = sub_269D9B4D0();
      v34 = v15;
      MEMORY[0x26D650930](58, 0xE100000000000000);
      MEMORY[0x26D650930](*&v11[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier], *&v11[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier + 8]);
      v16 = sub_269C2EACC(v32, v34, &v36);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_269C18000, oslog, v12, a4, v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x26D652460](v14, -1, -1);
      v17 = v13;
LABEL_16:
      MEMORY[0x26D652460](v17, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v18 = sub_269D98250();
    __swift_project_value_buffer(v18, qword_280351208);
    v19 = a3;
    v20 = a2;
    oslog = sub_269D98230();
    v21 = sub_269D9AB60();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136446466;
      v33 = sub_269D9B4D0();
      v35 = v24;
      MEMORY[0x26D650930](58, 0xE100000000000000);
      MEMORY[0x26D650930](*&v19[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier], *&v19[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier + 8]);
      v25 = sub_269C2EACC(v33, v35, &v36);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      if (a2)
      {
        v26 = a2;
        sub_269C80B44();
        v27 = sub_269D9A660();
        v29 = v28;
      }

      else
      {
        v29 = 0xE300000000000000;
        v27 = 7104878;
      }

      v30 = sub_269C2EACC(v27, v29, &v36);

      *(v22 + 14) = v30;
      _os_log_impl(&dword_269C18000, oslog, v21, a5, v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v23, -1, -1);
      v17 = v22;
      goto LABEL_16;
    }
  }
}

void sub_269C7E194(void *a1, void *a2, void *a3)
{
  swift_getObjectType();
  v6 = sub_269D9A260();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269D9A290();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v35 = v12;
    sub_269C1B0B8(0, &qword_280C0AEB0);
    v15 = a1;
    v16 = sub_269D9AC40();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = v15;
    v40 = sub_269C80BA8;
    v41 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = sub_269CA6718;
    v39 = &block_descriptor_94;
    v18 = _Block_copy(&aBlock);
    v19 = v15;
    v20 = a3;
    sub_269D9A280();
    v42 = MEMORY[0x277D84F90];
    sub_269C80BB0(&qword_28034EAA0, MEMORY[0x277D85198]);
    sub_269C80BF8(0);
    sub_269C80BB0(qword_28034EAB0, sub_269C80BF8);
    sub_269D9AEF0();
    MEMORY[0x26D650EA0](0, v14, v9, v18);
    _Block_release(v18);

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v14, v35);
  }

  else
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v21 = sub_269D98250();
    __swift_project_value_buffer(v21, qword_280351208);
    v22 = a3;
    v23 = a2;
    v35 = sub_269D98230();
    v24 = sub_269D9AB60();

    if (os_log_type_enabled(v35, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v42 = v26;
      *v25 = 136446466;
      aBlock = sub_269D9B4D0();
      v37 = v27;
      MEMORY[0x26D650930](58, 0xE100000000000000);
      MEMORY[0x26D650930](*&v22[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier], *&v22[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier + 8]);
      v28 = sub_269C2EACC(aBlock, v37, &v42);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2082;
      if (a2)
      {
        aBlock = a2;
        v29 = a2;
        sub_269C80B44();
        v30 = sub_269D9A660();
        v32 = v31;
      }

      else
      {
        v32 = 0xE300000000000000;
        v30 = 7104878;
      }

      v34 = sub_269C2EACC(v30, v32, &v42);

      *(v25 + 14) = v34;
      _os_log_impl(&dword_269C18000, v35, v24, "[%{public}s] failed to retrieve sleep schedule model: %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v26, -1, -1);
      MEMORY[0x26D652460](v25, -1, -1);
    }

    else
    {
      v33 = v35;
    }
  }
}

uint64_t sub_269C7E6A8(uint64_t a1, void *a2)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepScheduleModel);
  *(a1 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepScheduleModel) = a2;
  v5 = a2;

  sub_269C7DAE8();
}

uint64_t sub_269C7E76C(uint64_t a1, void *a2)
{
  sub_269C7FD00(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D9A900();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_269D9A8E0();
  v8 = v2;
  v9 = a2;
  v10 = sub_269D9A8D0();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = v9;
  sub_269C79F94(0, 0, v6, &unk_269DA2AD8, v11);
}

uint64_t sub_269C7E89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_269D9A8E0();
  v5[4] = sub_269D9A8D0();
  v7 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269C7E934, v7, v6);
}

uint64_t sub_269C7E934()
{
  v27 = v0;

  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_269D98250();
  __swift_project_value_buffer(v3, qword_280351208);
  v4 = v2;
  v5 = v1;
  v6 = sub_269D98230();
  v7 = sub_269D9AB80();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136446466;
    v11 = sub_269C7A678();
    v13 = sub_269C2EACC(v11, v12, &v26);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = v8;
    v15 = [v14 description];
    v16 = sub_269D9A630();
    v18 = v17;

    v19 = sub_269C2EACC(v16, v18, &v26);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_269C18000, v6, v7, "[%{public}s] updated sleep schedule model: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v10, -1, -1);
    MEMORY[0x26D652460](v9, -1, -1);
  }

  v21 = v0[2];
  v20 = v0[3];
  v22 = *(v21 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepScheduleModel);
  *(v21 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepScheduleModel) = v20;
  v23 = v20;

  sub_269C7DAE8();
  v24 = v0[1];

  return v24();
}

uint64_t sub_269C7ECB0()
{
  swift_getObjectType();
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v1 = sub_269D98250();
  __swift_project_value_buffer(v1, qword_280351208);
  v2 = v0;
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446466;
    v17 = sub_269D9B4D0();
    v18 = v7;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*&v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier], *&v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier + 8]);
    v8 = sub_269C2EACC(v17, v18, &v16);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    v9 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
    swift_beginAccess();
    if (v2[v9] == 4)
    {
      v10 = 0xE300000000000000;
      v11 = 7104878;
    }

    else
    {
      LOBYTE(v17) = v2[v9];
      v11 = sub_269D9A660();
      v10 = v12;
    }

    v13 = sub_269C2EACC(v11, v10, &v16);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] updated demo state: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  sub_269C7DAE8();
  v14 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  result = swift_beginAccess();
  byte_28034E9A0 = v2[v14];
  return result;
}

uint64_t sub_269C7EEF8@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_269C7EF4C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  swift_beginAccess();
  *(v1 + v3) = v2;
  return sub_269C7ECB0();
}

uint64_t (*sub_269C7EFA0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_269C7F004;
}

uint64_t sub_269C7F01C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_269C7F060()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  swift_beginAccess();
  if (*(v0 + v1) != 4)
  {
    v4 = 4;
LABEL_11:
    *(v0 + v1) = v4;
    return sub_269C7ECB0();
  }

  *(v0 + v1) = 0;
  result = sub_269C7ECB0();
  v3 = *(v0 + v1);
  if (v3 <= 1)
  {
    if (*(v0 + v1))
    {
      v4 = 2;
      goto LABEL_11;
    }

LABEL_8:
    v4 = 1;
    goto LABEL_11;
  }

  if (v3 == 2)
  {
    v4 = 3;
    goto LABEL_11;
  }

  if (v3 == 3)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_269C7F0FC()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  v2 = 1;
  result = swift_beginAccess();
  v4 = *(v0 + v1);
  if (v4 <= 1)
  {
    if (*(v0 + v1))
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v2 = 3;
    goto LABEL_9;
  }

  if (v4 == 3)
  {
LABEL_9:
    *(v0 + v1) = v2;
    return sub_269C7ECB0();
  }

  return result;
}

uint64_t sub_269C7F184()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  v4 = 2;
  if (v3 <= 1)
  {
    if (*(v0 + v1))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    goto LABEL_9;
  }

  if (v3 == 2)
  {
    v4 = 1;
    goto LABEL_9;
  }

  if (v3 == 3)
  {
LABEL_9:
    *(v0 + v1) = v4;
    return sub_269C7ECB0();
  }

  return result;
}

void sub_269C7F204(uint64_t a1)
{
  v2 = v1;
  v4 = sub_269D977A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269D975C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C7FC6C(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C807A0(a1, v14, sub_269C7FC6C);
  v15 = type metadata accessor for Alarm();
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_269C80808(v14, sub_269C7FC6C);
  }

  else
  {
    v16 = *&v14[*(v15 + 20)];
    sub_269C80808(v14, type metadata accessor for Alarm);
    v17 = [v16 alarmID];

    sub_269D975A0();
    sub_269D97590();
    (*(v9 + 8))(v11, v8);
  }

  v18 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  sub_269C7B740(v7);
  v19 = sub_269D976E0();
  (*(v5 + 8))(v7, v4);
  v20 = [v18 hk:v19 morningIndexWithCalendar:?];

  v21 = objc_allocWithZone(MEMORY[0x277D62438]);
  v22 = sub_269D9A5F0();

  v23 = [v21 initWithWindDownAction:3 wasUsed:1 identifier:v22];

  v24 = [*(v2 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepStore) analyticsManager];
  v25 = [v24 analyticsStore];

  sub_269C80920(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_269DA2A30;
  *(v26 + 32) = v23;
  sub_269C1B0B8(0, &unk_28034EA58);
  v27 = v23;
  v28 = sub_269D9A7D0();

  [v25 updateWindDownActions:v28 onMorningIndex:v20];
}

id LockScreenContentModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_269C7F734@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LockScreenContentModel();
  result = sub_269D98770();
  *a1 = result;
  return result;
}

uint64_t sub_269C7F774(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_269C7F86C;

  return v6(a1);
}

uint64_t sub_269C7F86C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_269C7F964(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_269C7FA58;

  return v5(v2 + 32);
}

uint64_t sub_269C7FA58()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t type metadata accessor for LockScreenContentModel()
{
  result = qword_28034EA68;
  if (!qword_28034EA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_269C7FBC8()
{
  result = qword_28034EA38;
  if (!qword_28034EA38)
  {
    sub_269C80920(255, &qword_28034DEF0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034EA38);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269C7FD34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_269C80D04;

  return sub_269C7E89C(a1, v4, v5, v7, v6);
}

void sub_269C7FDFC()
{
  sub_269C80920(319, &qword_28034E9B8, &type metadata for LockScreenContentState, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_269C80920(319, &qword_28034E9D0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v1 <= 0x3F)
    {
      sub_269C41A14(319);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t objectdestroy_33Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C806E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_269C71C08;

  return sub_269C7E89C(a1, v4, v5, v7, v6);
}

uint64_t sub_269C807A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269C80808(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269C80868(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269C80D04;

  return sub_269C7F964(a1, v4);
}

void sub_269C80920(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_269C80970(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269C71C08;

  return sub_269C7F964(a1, v4);
}

uint64_t sub_269C80A28(uint64_t a1, uint64_t a2)
{
  sub_269C41A14(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C80A8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269C80D04;

  return sub_269C7F774(a1, v4);
}

unint64_t sub_269C80B44()
{
  result = qword_280351A50;
  if (!qword_280351A50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280351A50);
  }

  return result;
}

uint64_t sub_269C80BB0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269C80C2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269C80C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alarm();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SleepScoreComponent.color.getter()
{
  SleepScoreComponent.uiColor.getter();

  return sub_269D99CC0();
}

id SleepScoreComponent.uiColor.getter()
{
  v1 = v0;
  v2 = sub_269D97AC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D62590])
  {
    v7 = [objc_opt_self() hk_sleepScoreDurationComponentColor];
  }

  else if (v6 == *MEMORY[0x277D62588])
  {
    v7 = [objc_opt_self() hk_sleepScoreBedtimeComponentColor];
  }

  else
  {
    v8 = *MEMORY[0x277D62580];
    v9 = v6;
    v10 = objc_opt_self();
    if (v9 != v8)
    {
      v12 = [v10 blackColor];
      (*(v3 + 8))(v5, v2);
      return v12;
    }

    v7 = [v10 hk_sleepScoreInterruptionsComponentColor];
  }

  return v7;
}

uint64_t OptionalContentGroup.init(showContent:content:elseContent:)@<X0>(char a1@<W0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t (*a3)(uint64_t)@<X3>, _BYTE *a4@<X8>)
{
  *a4 = a1;
  v6 = type metadata accessor for OptionalContentGroup();
  v10 = a2(v6, v7, v8, v9);
  return a3(v10);
}

uint64_t OptionalContentGroup.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = *(a1 + 24);
  v32 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  v11 = *(v8 + 16);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = sub_269D992E0();
  v19 = *(v18 - 8);
  v33 = v18;
  v34 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v32 - v20;
  v22 = v2;
  if (*v2 == 1)
  {
    v23 = *(a1 + 32);
    sub_269CE81C8(&v22[*(a1 + 52)], v11, v23);
    sub_269CE81C8(v17, v11, v23);
    v24 = v12;
    v25 = *(a1 + 40);
    sub_269CE3A44(v15, v11);
    v26 = *(v24 + 8);
    v26(v15, v11);
    v26(v17, v11);
  }

  else
  {
    v25 = *(a1 + 40);
    sub_269CE81C8(&v2[*(a1 + 56)], v4, v25);
    sub_269CE81C8(v10, v4, v25);
    v27 = v32;
    v23 = *(a1 + 32);
    sub_269CE3B3C(v7, v11, v4);
    v28 = *(v27 + 8);
    v28(v7, v4);
    v28(v10, v4);
  }

  v36 = v23;
  v37 = v25;
  v29 = v33;
  WitnessTable = swift_getWitnessTable();
  sub_269CE81C8(v21, v29, WitnessTable);
  return (*(v34 + 8))(v21, v29);
}

uint64_t OptionalContentGroup<>.init(showContent:content:)@<X0>(char a1@<W0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v4 = type metadata accessor for OptionalContentGroup();
  return a2(v4, v5, v6, v7);
}

uint64_t sub_269C813DC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_269C81478(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 1) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *&a1[v15];
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFE)
      {
        v26 = &a1[v9 + 1] & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v26);
        }

        else
        {
          return (*(v7 + 48))((v26 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *a1;
        v24 = v23 >= 2;
        v25 = (v23 + 2147483646) & 0x7FFFFFFF;
        if (v24)
        {
          return (v25 + 1);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = a1[v15];
  if (!a1[v15])
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (a1[2] << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_269C816A4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 1) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_51:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v13 > 0xFE)
  {
    v24 = &a1[v10 + 1] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}

id ScheduleOccurrenceAlarmSnoozeTableViewCell.apply(_:)(uint64_t a1)
{
  v2 = [*(a1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v2 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C60AF4();
  swift_dynamicCast();
  v3 = [v5 allowsSnooze];

  return [v1 setOn:v3 animated:1];
}

void sub_269C81C50()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  v1 = sub_269D9A5F0();

  [v0 setDisplayText_];

  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  aBlock[4] = sub_269CC7C58;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269CC7F6C;
  aBlock[3] = &block_descriptor_6;
  v3 = _Block_copy(aBlock);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  [v0 setBackgroundColor_];
}

id ScheduleOccurrenceAlarmSnoozeTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleOccurrenceAlarmSnoozeTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_269C81E7C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_background;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v8 = OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v9 = OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_elsewhereIndicator;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_isSelectedElsewhere] = 0;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_day] = a1;
  v10 = &v3[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_configuration];
  v11 = *(a3 + 48);
  *(v10 + 2) = *(a3 + 32);
  *(v10 + 3) = v11;
  *(v10 + 4) = *(a3 + 64);
  *(v10 + 10) = *(a3 + 80);
  v12 = *(a3 + 16);
  *v10 = *a3;
  *(v10 + 1) = v12;
  sub_269C835D8(a3, v29);
  v28.receiver = v3;
  v28.super_class = type metadata accessor for SleepScheduleDayPickerDay();
  v13 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel;
  v15 = *&v13[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel];
  v16 = v13;
  v17 = v15;
  NSDateFormatter.veryShortStandaloneWeekdaySymbol(for:)(a1);
  if (v18)
  {
    v19 = sub_269D9A5F0();
  }

  else
  {
    v19 = 0;
  }

  [v17 setText_];

  v20 = v16;
  NSDateFormatter.standaloneWeekdaySymbol(for:)(a1);
  if (v21)
  {
    v22 = sub_269D9A5F0();
  }

  else
  {
    v22 = 0;
  }

  [v20 setLargeContentTitle_];

  v23 = [v20 layer];
  [v23 addSublayer_];

  [v20 addSubview_];
  [v20 addSubview_];
  sub_269C82178();
  sub_269C822E0();
  sub_269C57F8C();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_269D9EBE0;
  v25 = sub_269D983D0();
  v26 = MEMORY[0x277D74DB8];
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C30054();
  sub_269D9AD50();
  swift_unknownObjectRelease();

  sub_269C83618(a3);

  return v20;
}

id sub_269C82178()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel];
  v3 = &v0[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_configuration];
  v4 = (*&v0[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_configuration])();
  [v2 setFont_];

  v5 = v3[7];
  v6 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_elsewhereIndicator];
  [v6 setBackgroundColor_];
  [v6 setBounds_];
  v7 = [v6 layer];
  [v7 setCornerRadius_];

  [v1 setShowsLargeContentViewer_];
  [v1 setScalesLargeContentImage_];
  v8 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v1 addInteraction_];

  sub_269C82B24();

  return [v1 setNeedsLayout];
}

void sub_269C822E0()
{
  v1 = v0;
  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269D9EBF0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000269DAEC70;
  v3 = NSStringForHKSPDay();
  v4 = sub_269D9A630();
  v6 = v5;

  *(inited + 48) = v4;
  *(inited + 56) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_269DA0D60;
  *(v7 + 32) = sub_269D9A630();
  *(v7 + 40) = v8;
  *(v7 + 48) = 0x7065656C53;
  *(v7 + 56) = 0xE500000000000000;
  strcpy((v7 + 64), "ScheduleEditor");
  *(v7 + 79) = -18;
  v16 = v7;

  sub_269C49A1C(v9);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v10 = sub_269D9A520();
  v12 = v11;

  swift_setDeallocating();
  swift_arrayDestroy();
  v13 = sub_269D9A5F0();
  [v1 setAccessibilityIdentifier_];

  v14 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel];

  MEMORY[0x26D650930](0x747865547961442ELL, 0xE800000000000000);

  v15 = sub_269D9A5F0();

  [v14 setAccessibilityIdentifier_];
}

void sub_269C8253C()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_269C82178();
  }

  else
  {
  }
}

id sub_269C826B4()
{
  v1 = v0;
  swift_getObjectType();
  v37.receiver = v0;
  v37.super_class = type metadata accessor for SleepScheduleDayPickerDay();
  objc_msgSendSuper2(&v37, sel_layoutSubviews);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = sub_269D98230();
  v4 = sub_269D9AB50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *&v6 = COERCE_DOUBLE(swift_slowAlloc());
    v33 = *&v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v33);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Layout subviews", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v11 = &v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_configuration];
  v12 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_configuration + 72];
  v13 = [v1 traitCollection];
  [v10 scaledValueForValue:v13 compatibleWithTraitCollection:v12];
  v15 = v14;

  [v1 bounds];
  Height = CGRectGetHeight(v38);
  v17 = v11[10];
  [v1 bounds];
  Width = CGRectGetWidth(v39);
  if (v15 > v12)
  {
    v19 = v15;
  }

  else
  {
    v19 = v12;
  }

  v20 = Width - v17;
  if (v20 >= Height - v17)
  {
    v20 = Height - v17;
  }

  if (v19 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v22 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_background];
  v40.origin.x = 0.0;
  v40.origin.y = 0.0;
  v40.size.width = v21;
  v40.size.height = v21;
  v23 = CGPathCreateWithEllipseInRect(v40, 0);
  [v22 setPath_];

  v24 = [v22 path];
  [v22 setShadowPath_];

  [v22 setFrame_];
  [v1 bounds];
  sub_269D9AD20();
  [v22 frame];
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  sub_269D9AD30();
  [v22 setFrame_];
  v29 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel];
  [v29 sizeToFit];
  [v1 bounds];
  sub_269D9AD20();
  [v29 setCenter_];
  v30 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_elsewhereIndicator];
  [v1 bounds];
  MidX = CGRectGetMidX(v41);
  [v1 bounds];
  return [v30 setCenter_];
}

void sub_269C82B24()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = sub_269D98230();
  v4 = sub_269D9AB50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v31);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Updating style", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  if ([v1 isSelected])
  {
    v10 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_background];
    v11 = [v1 tintColor];
    if (!v11)
    {
      __break(1u);
      return;
    }

    v12 = v11;
    v13 = [v1 traitCollection];
    v14 = [v12 resolvedColorWithTraitCollection_];
    v15 = [v14 CGColor];

    [v10 setFillColor_];
    [*&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel] setTextColor_];
    [*&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_elsewhereIndicator] setHidden_];
    v16 = sub_269D9A5F0();
    v29 = [objc_opt_self() systemImageNamed_];

    isa = v29;
  }

  else
  {
    v18 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_background];
    v19 = &v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_configuration];
    if (v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_isSelectedElsewhere] == 1)
    {
      v20 = *(v19 + 4);
      v21 = [v1 traitCollection];
      v22 = [v20 resolvedColorWithTraitCollection_];
      v23 = [v22 CGColor];

      [v18 setFillColor_];
      [*&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel] setTextColor_];
      [*&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_elsewhereIndicator] setHidden_];
      v32 = 28672;
    }

    else
    {
      v25 = *(v19 + 2);
      v26 = [v1 traitCollection];
      v27 = [v25 resolvedColorWithTraitCollection_];
      v28 = [v27 CGColor];

      [v18 setFillColor_];
      [*&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel] setTextColor_];
      [*&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_elsewhereIndicator] setHidden_];
      v33 = 28672;
    }

    v24.value.super.isa = 0;
    isa = Symbol.uiImage(configuration:)(v24).super.isa;
  }

  v30 = isa;
  [v1 setLargeContentImage_];
}

id sub_269C833A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepScheduleDayPickerDay();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_269C834D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_269C8351C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_269C83580()
{
  result = [objc_opt_self() _preferredFontForTextStyle_variant_maximumContentSizeCategory_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_269C83648()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_background;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v2 = OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_elsewhereIndicator;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_isSelectedElsewhere) = 0;
  sub_269D9B100();
  __break(1u);
}

id sub_269C8371C()
{
  result = [objc_opt_self() hk_sleepKeyColor];
  qword_280C0B4A0 = result;
  return result;
}

id static UIColor.primarySleep.getter()
{
  if (qword_280C0B498 != -1)
  {
    swift_once();
  }

  v1 = qword_280C0B4A0;

  return v1;
}

uint64_t sub_269C837B4()
{
  if (qword_280C0B498 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0B4A0;
  result = sub_269D99CC0();
  qword_280C0AFD8 = result;
  return result;
}

uint64_t sub_269C838F0(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_269D99CC0();
  *a3 = result;
  return result;
}

uint64_t sub_269C8395C(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

double Color.computeContrastRatio(with:)()
{
  Color.linearRGB.getter();
  v3 = v2 * 0.0722 + v0 * 0.2126 + v1 * 0.7152;
  Color.linearRGB.getter();
  v7 = v6 * 0.0722 + v4 * 0.2126 + v5 * 0.7152;
  if (v3 > v7)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (v7 >= v3)
  {
    v7 = v3;
  }

  return (v8 + 0.05) / (v7 + 0.05);
}

void Color.linearRGB.getter()
{
  sub_269C83CE4();

  v0 = sub_269D9AD90();
  v1 = [v0 CGColor];

  v2 = sub_269D9AA70();
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v3 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < 3)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);

  if (v4 <= 0.03928)
  {
    if (v5 <= 0.03928)
    {
LABEL_7:
      if (v6 <= 0.03928)
      {
        return;
      }

LABEL_11:
      pow((v6 + 0.055) / 1.055, 2.4);
      return;
    }
  }

  else
  {
    pow((v4 + 0.055) / 1.055, 2.4);
    if (v5 <= 0.03928)
    {
      goto LABEL_7;
    }
  }

  pow((v5 + 0.055) / 1.055, 2.4);
  if (v6 > 0.03928)
  {
    goto LABEL_11;
  }
}

void Color.rgb.getter()
{
  sub_269C83CE4();

  v0 = sub_269D9AD90();
  v1 = [v0 CGColor];

  v2 = sub_269D9AA70();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    if (v3 != 1)
    {
      if (v3 >= 3)
      {

        return;
      }

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  __break(1u);
}

unint64_t sub_269C83CE4()
{
  result = qword_280350120;
  if (!qword_280350120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280350120);
  }

  return result;
}

Swift::Void __swiftcall UITextView.adjustContentInsetForLineFragmentPadding()()
{
  v1 = [v0 textContainer];
  [v1 lineFragmentPadding];
  v3 = v2;

  [v0 setContentInset_];
}

id sub_269C83DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = &v3[OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_item];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_titleLabel;
  v8 = *MEMORY[0x277D76918];
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_269C1B0B8(0, &qword_28034E5F0);
  v10 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v8, 2, 0, 0, 0, 0, 0, 0, 1);
  [v9 setFont_];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setLineBreakMode_];
  [v9 setNumberOfLines_];
  *&v3[v7] = v9;
  v11 = *MEMORY[0x277D769D0];
  v12 = [objc_opt_self() secondaryLabelColor];
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v14 = v13;
  if (v12)
  {
    [v13 setTextColor_];
  }

  v15 = OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_detailLabel;
  v16 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v11, 0, 0, 0, 0, 0, 0, 0, 1);
  [v14 setFont_];

  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setAdjustsFontForContentSizeCategory_];
  [v14 setLineBreakMode_];
  [v14 setNumberOfLines_];

  *&v4[v15] = v14;
  if (a3)
  {
    v17 = sub_269D9A5F0();
  }

  else
  {
    v17 = 0;
  }

  v22.receiver = v4;
  v22.super_class = type metadata accessor for AddScheduleTableViewCell();
  v18 = objc_msgSendSuper2(&v22, sel_initWithStyle_reuseIdentifier_, a1, v17);

  v19 = v18;
  [v19 setAccessoryType_];
  [v19 setSelectionStyle_];
  sub_269C84228();

  return v19;
}

void sub_269C84228()
{
  v1 = v0;
  sub_269C4E764();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269DA13E0;
  v3 = *&v0[OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_titleLabel];
  *(inited + 32) = v3;
  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_detailLabel];
  *(inited + 40) = v4;
  v5 = v3;
  v6 = v4;
  v7 = [v1 contentView];
  UIView.addSubviews(_:useAutoLayout:)(inited, 1);

  v8 = [v1 contentView];
  UIView.constraints(verticallyStackedViews:interitemSpacing:contentInsets:)(inited, 4.0, 11.0, 16.0, 11.0, 16.0);
  v10 = v9;

  v11 = [v1 contentView];
  v12 = [v11 heightAnchor];

  v13 = [v12 constraintGreaterThanOrEqualToConstant_];
  v14 = v13;
  MEMORY[0x26D650A10]();
  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_269D9A7F0();
  }

  sub_269D9A820();
  v15 = objc_opt_self();
  sub_269C1B0B8(0, &qword_28034E1C0);
  v16 = sub_269D9A7D0();

  [v15 activateConstraints_];
}

id sub_269C8442C()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_item;
  swift_beginAccess();
  sub_269C63264(v0 + v1, v14);
  if (!v15)
  {
    sub_269C8492C(v14, &qword_28034E548, &qword_28034E550);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    goto LABEL_8;
  }

  sub_269C3232C(0, &qword_28034E550);
  sub_269C3232C(0, &unk_28034EBB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_8;
  }

  if (!*(&v17 + 1))
  {
LABEL_8:
    sub_269C8492C(&v16, &qword_28034EBA8, &unk_28034EBB0);
    [*(v0 + OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_titleLabel) setText_];
    return [*(v0 + OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_detailLabel) setText_];
  }

  sub_269C25520(&v16, v19);
  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_titleLabel);
  v4 = v20;
  v5 = v21;
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  (*(v5 + 8))(v4, v5);
  if (v6)
  {
    v7 = sub_269D9A5F0();
  }

  else
  {
    v7 = 0;
  }

  [v3 setText_];

  v9 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_detailLabel);
  v10 = v20;
  v11 = v21;
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  (*(v11 + 16))(v10, v11);
  if (v12)
  {
    v13 = sub_269D9A5F0();
  }

  else
  {
    v13 = 0;
  }

  [v9 setText_];

  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

id sub_269C84678()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddScheduleTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269C84744@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_item;
  swift_beginAccess();
  return sub_269C63264(v1 + v3, a1);
}

uint64_t sub_269C8479C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_item;
  swift_beginAccess();
  sub_269C6314C(a1, v1 + v3);
  swift_endAccess();
  sub_269C8442C();
  return sub_269C8492C(a1, &qword_28034E548, &qword_28034E550);
}

id (*sub_269C84820(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_269C84884;
}

id sub_269C84884(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_269C8442C();
  }

  return result;
}

uint64_t sub_269C8492C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_269C84988(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_269C84988(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_269C3232C(255, a3);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269C849E0()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_item;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_titleLabel;
  v4 = *MEMORY[0x277D76918];
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_269C1B0B8(0, &qword_28034E5F0);
  v6 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v4, 2, 0, 0, 0, 0, 0, 0, 1);
  [v5 setFont_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setAdjustsFontForContentSizeCategory_];
  [v5 setLineBreakMode_];
  [v5 setNumberOfLines_];
  *(v0 + v3) = v5;
  v7 = *MEMORY[0x277D769D0];
  v8 = [objc_opt_self() secondaryLabelColor];
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = v9;
  if (v8)
  {
    [v9 setTextColor_];
  }

  v11 = OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_detailLabel;
  v12 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v7, 0, 0, 0, 0, 0, 0, 0, 1);
  [v10 setFont_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAdjustsFontForContentSizeCategory_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];

  *(v1 + v11) = v10;
  sub_269D9B100();
  __break(1u);
}

char *sub_269C84C5C(char a1)
{
  sub_269C86644(0, &unk_2803505A0, MEMORY[0x277D12720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v51 - v4;
  v52 = v1;
  v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_message] = a1;
  v57 = MEMORY[0x277D84F90];
  sub_269D9B080();
  v55 = sub_269D9A8E0();
  v5 = objc_opt_self();
  v6 = 0;
  *&v53 = "eepScheduleClockCaption.swift";
  do
  {
    v10 = byte_287A9F6A0[v6 + 32];
    sub_269D9A8D0();
    sub_269D9A880();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    v12 = [v5 secondaryLabelColor];
    [v11 setTextColor_];

    [v11 setNumberOfLines_];
    [v11 setLineBreakMode_];
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    result = [v11 font];
    if (!result)
    {
      goto LABEL_23;
    }

    v14 = result;
    result = [v11 textColor];
    if (!result)
    {
      goto LABEL_24;
    }

    v15 = result;
    if (v10)
    {
      sub_269C1B0B8(0, &unk_28034EBF0);
      v16 = [v5 systemOrangeColor];
      v17 = sub_269D9ACA0();
      (*(*(v17 - 8) + 56))(v54, 1, 1, v17);
      sub_269C85F54(v10);
      v9 = sub_269D9AC90();
    }

    else
    {
      sub_269C85F54(0);
      v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v8 = sub_269D9A5F0();

      v9 = [v7 initWithString_];
    }

    ++v6;
    [v11 setAttributedText_];

    sub_269D9B050();
    sub_269D9B090();
    sub_269D9B0A0();
    sub_269D9B060();
  }

  while (v6 != 6);
  v18 = v52;
  *&v52[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_labels] = v57;
  v19 = type metadata accessor for SleepScheduleClockCaption();
  v56.receiver = v18;
  v56.super_class = v19;
  v20 = objc_msgSendSuper2(&v56, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_269C858CC(v20);
  sub_269C85AA0();
  v22 = *&v20[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_labels];
  if (!(v22 >> 62))
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_12;
    }

LABEL_19:
    LODWORD(v21) = 1148846080;
    [v20 setContentHuggingPriority:1 forAxis:v21];
    sub_269C86644(0, &qword_28034E1D0, sub_269C2FFF4, MEMORY[0x277D84560]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_269D9EBF0;
    v47 = sub_269D983D0();
    v48 = MEMORY[0x277D74DB8];
    *(v46 + 32) = v47;
    *(v46 + 40) = v48;
    v49 = sub_269D98270();
    v50 = MEMORY[0x277D74BA0];
    *(v46 + 48) = v49;
    *(v46 + 56) = v50;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_269C30054();
    sub_269D9AD50();
    swift_unknownObjectRelease();

    return v20;
  }

  v23 = sub_269D9AF50();
  if (!v23)
  {
    goto LABEL_19;
  }

LABEL_12:
  result = objc_opt_self();
  v55 = result;
  if (v23 >= 1)
  {
    v54 = (v22 & 0xC000000000000001);

    v24 = 0;
    v53 = xmmword_269DA13F0;
    v52 = v23;
    do
    {
      if (v54)
      {
        v25 = MEMORY[0x26D651260](v24, v22);
      }

      else
      {
        v25 = *(v22 + 8 * v24 + 32);
      }

      ++v24;
      v26 = v25;
      [v20 addSubview_];
      sub_269C865F4(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v27 = swift_allocObject();
      *(v27 + 16) = v53;
      v28 = [v26 leadingAnchor];
      v29 = [v20 leadingAnchor];
      v30 = [v28 constraintEqualToAnchor_];

      *(v27 + 32) = v30;
      v31 = [v26 topAnchor];

      v32 = [v20 topAnchor];
      v33 = [v31 constraintGreaterThanOrEqualToAnchor_];

      *(v27 + 40) = v33;
      v34 = [v20 trailingAnchor];
      v35 = [v26 trailingAnchor];

      v36 = [v34 constraintEqualToAnchor_];
      *(v27 + 48) = v36;
      v37 = [v20 bottomAnchor];
      v38 = [v26 bottomAnchor];

      v39 = [v37 constraintGreaterThanOrEqualToAnchor_];
      *(v27 + 56) = v39;
      v40 = [v20 centerYAnchor];
      v41 = [v26 centerYAnchor];

      v42 = [v40 constraintEqualToAnchor_];
      *(v27 + 64) = v42;
      sub_269C1B0B8(0, &qword_28034E1C0);
      v43 = sub_269D9A7D0();

      [v55 activateConstraints_];

      LODWORD(v44) = 1148846080;
      [v26 setContentHuggingPriority:1 forAxis:v44];
      LODWORD(v45) = 1132068864;
      [v26 setContentHuggingPriority:0 forAxis:v45];
    }

    while (v52 != v24);

    goto LABEL_19;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_269C85524(uint64_t a1, void *a2)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_269C866B0(a2);
  }

  else
  {
  }
}

double sub_269C856D0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_labels];
  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = 0.0; v3; i = 0.0)
  {
    v22 = v1;
    v5 = 0;
    v1 = (v2 & 0xC000000000000001);
    while (1)
    {
      if (v1)
      {
        v6 = MEMORY[0x26D651260](v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_269D9A8E0();
      sub_269D9A8D0();
      sub_269D9A880();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v9 = [v7 isHidden];

      if (!v9)
      {
        [v7 frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        v23.origin.x = v11;
        v23.origin.y = v13;
        v23.size.width = v15;
        v23.size.height = v17;
        i = CGRectGetMinY(v23);
LABEL_15:
        v1 = v22;
        goto LABEL_16;
      }

      ++v5;
      if (v8 == v3)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v3 = sub_269D9AF50();
  }

LABEL_16:
  v18 = [v1 superview];
  [v1 convertPoint:v18 toView:{0.0, i}];
  v20 = v19;

  return v20;
}

void sub_269C858CC(unint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_labels];
  if (v2 >> 62)
  {
    a1 = sub_269D9AF50();
    v3 = a1;
    if (!a1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    goto LABEL_31;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D651260](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v5 setHidden_];
  }

LABEL_10:
  v7 = v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_message];
  if (v7 != 6)
  {
    if (byte_287A9F278 == v7)
    {
      a1 = 0;
      goto LABEL_23;
    }

    if (byte_287A9F279 == v7)
    {
      a1 = 1;
      goto LABEL_23;
    }

    if (byte_287A9F27A == v7)
    {
      a1 = 2;
      goto LABEL_23;
    }

    if (byte_287A9F27B == v7)
    {
      a1 = 3;
      goto LABEL_23;
    }

    if (byte_287A9F27C == v7)
    {
      a1 = 4;
      goto LABEL_23;
    }

    if (byte_287A9F27D == v7)
    {
      a1 = 5;
LABEL_23:
      if ((v2 & 0xC000000000000001) == 0)
      {
        if (a1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v8 = *(v2 + 8 * a1 + 32);
        goto LABEL_26;
      }

LABEL_31:
      v8 = MEMORY[0x26D651260](a1, v2);
LABEL_26:
      v9 = v8;
      [v8 setHidden_];
    }
  }

  [v1 setNeedsLayout];

  sub_269C85C44();
}

void sub_269C85AA0()
{
  v9 = [objc_opt_self() preferredFontForTextStyle_];
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_269D9ACF0();
  if (v1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_labels];
  if (v4 >> 62)
  {
    v5 = sub_269D9AF50();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D651260](v6, v4);
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    [v7 setFont_];
    [v8 setTextAlignment_];
  }

  while (v5 != v6);
LABEL_13:
  [v0 invalidateIntrinsicContentSize];
  [v0 setNeedsLayout];
}

void sub_269C85C44()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_labels);
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_269D9AF50())
  {
    for (j = 0; ; ++j)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x26D651260](j, v1);
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v4 = *(v1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_269D9A8E0();
      sub_269D9A8D0();
      sub_269D9A880();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v7 = v5;
      v8 = [v7 isHidden];

      if (!v8)
      {
        v9 = MEMORY[0x277D837D0];
        sub_269C865F4(0, &qword_280C0B440, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_269DA0D60;
        *(v10 + 32) = sub_269D9A630();
        *(v10 + 40) = v11;
        *(v10 + 48) = 0x7065656C53;
        *(v10 + 56) = 0xE500000000000000;
        strcpy((v10 + 64), "ScheduleEditor");
        *(v10 + 79) = -18;
        sub_269C49A1C(&unk_287A9F228);
        sub_269C865F4(0, &qword_280C0B4F0, v9, MEMORY[0x277D83940]);
        sub_269C8659C(&qword_280C0AF30, &qword_280C0B4F0, v9);
        v12 = sub_269D9A520();
        v14 = v13;

        sub_269C4BEAC(&unk_287A9F248);
        v16 = v14;

        MEMORY[0x26D650930](0x6E6F69747061432ELL, 0xEC00000074786554);

        v15 = sub_269D9A5F0();

        [v7 setAccessibilityIdentifier_];

        return;
      }

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}