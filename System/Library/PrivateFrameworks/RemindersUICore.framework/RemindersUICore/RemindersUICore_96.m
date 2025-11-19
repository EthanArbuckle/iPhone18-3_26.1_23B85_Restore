void **sub_21D9EC2D4(void **a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_21DBF54CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v5;
  if (v9(a2 + v6, 1, v7))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(a1 + v6, a2 + v6, *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  return a1;
}

void **sub_21D9EC3F4(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = sub_21DBF54CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  LODWORD(v7) = v12(a1 + v9, 1, v10);
  v13 = v12(a2 + v9, 1, v10);
  if (!v7)
  {
    if (!v13)
    {
      (*(v11 + 24))(a1 + v9, a2 + v9, v10);
      return a1;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(a1 + v9, a2 + v9, *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v11 + 16))(a1 + v9, a2 + v9, v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
  return a1;
}

char *sub_21D9EC57C(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

void **sub_21D9EC690(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_21DBF54CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      return a1;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(a1 + v7, a2 + v7, *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
  return a1;
}

void sub_21D9EC83C()
{
  sub_21D514D00();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_21D9EC920(unint64_t *a1, void (*a2)(uint64_t))
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

id TTRIDebugDropIndicatorView.continueShowing(in:dropSession:dropContext:)(void *a1, void *a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  v8 = __swift_project_boxed_opaque_existential_1(a3, v6);

  return sub_21D9EE598(a1, a2, v8, v3, v6, v7);
}

Swift::Void __swiftcall TTRIDebugDropIndicatorView.stopShowing()()
{
  [v0 removeFromSuperview];
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForActiveDropTargetView;
  sub_21D0D8CF0(0, &qword_280D177D0);
  sub_21DBF8E0C();
  v3 = sub_21DBFA5DC();

  [v1 deactivateConstraints_];

  *&v0[v2] = MEMORY[0x277D84F90];

  v4 = *&v0[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_lineYPositionInTargetViewConstraint];
  *&v0[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_lineYPositionInTargetViewConstraint] = 0;
}

uint64_t static TTRIDebugDropIndicatorView.isEnabled.setter(char a1)
{
  result = swift_beginAccess();
  byte_27CE64978 = a1;
  return result;
}

uint64_t TTRIDebugDropIndicatorView.currentDropContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext);
  swift_beginAccess();
  sub_21D9EEC34(a1, v4);
  swift_endAccess();
  v5 = v4[3];
  if (v5)
  {
    v6 = v4[4];
    v7 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v8 = *(v5 - 8);
    v9 = MEMORY[0x28223BE20](v7);
    v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = (*(v6 + 16))(v5, v6);
    (*(v8 + 8))(v11, v5);
  }

  else
  {
    v12 = [objc_opt_self() grayColor];
  }

  [*(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_line) setBackgroundColor_];

  v13 = *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_info);
  v14 = v4[3];
  if (v14)
  {
    v15 = v4[4];
    v16 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v17 = *(v14 - 8);
    v18 = MEMORY[0x28223BE20](v16);
    v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    (*(v15 + 8))(v14, v15);
    (*(v17 + 8))(v20, v14);
  }

  v21 = sub_21DBFA12C();

  [v13 setText_];

  return sub_21D9EECA4(a1);
}

uint64_t TTRIDebugDropIndicatorView.currentDropContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext;
  swift_beginAccess();
  return sub_21D9EED0C(v1 + v3, a1);
}

uint64_t sub_21D9ECEEC(uint64_t a1, uint64_t *a2)
{
  sub_21D9EED0C(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext;
  swift_beginAccess();
  sub_21D9EEC34(v6, v3 + v4);
  swift_endAccess();
  sub_21D9ECF60();
  sub_21D9ED0F0();
  return sub_21D9EECA4(v6);
}

void sub_21D9ECF60()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext);
  swift_beginAccess();
  v3 = v2[3];
  if (v3)
  {
    v4 = v2[4];
    v5 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v6 = *(v3 - 8);
    v7 = MEMORY[0x28223BE20](v5);
    v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = (*(v4 + 16))(v3, v4);
    (*(v6 + 8))(v9, v3);
  }

  else
  {
    v10 = [objc_opt_self() grayColor];
  }

  [*(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_line) setBackgroundColor_];
}

void sub_21D9ED0F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_info);
  v2 = (v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext);
  swift_beginAccess();
  v3 = v2[3];
  if (v3)
  {
    v4 = v2[4];
    v5 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v6 = *(v3 - 8);
    v7 = MEMORY[0x28223BE20](v5);
    v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    (*(v4 + 8))(v3, v4);
    (*(v6 + 8))(v9, v3);
  }

  v10 = sub_21DBFA12C();

  [v1 setText_];
}

void (*TTRIDebugDropIndicatorView.currentDropContext.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21D9ED318;
}

void sub_21D9ED318(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = v5 + v4;
    v7 = *(v5 + v4 + 24);
    if (v7)
    {
      v8 = *(v6 + 32);
      v9 = __swift_project_boxed_opaque_existential_1((v5 + v4), *(v5 + v4 + 24));
      v10 = *(v7 - 8);
      v11 = MEMORY[0x28223BE20](v9);
      v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = (*(v8 + 16))(v7, v8);
      (*(v10 + 8))(v13, v7);
    }

    else
    {
      v14 = [objc_opt_self() grayColor];
    }

    v15 = v3[3];
    [*(v15 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_line) setBackgroundColor_];

    v16 = *(v15 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_info);
    v17 = *(v6 + 24);
    if (v17)
    {
      v18 = (v3[3] + v3[4]);
      v19 = v18[4];
      v20 = __swift_project_boxed_opaque_existential_1(v18, v17);
      v21 = *(v17 - 8);
      v22 = MEMORY[0x28223BE20](v20);
      v24 = &v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v24, v22);
      (*(v19 + 8))(v17, v19);
      (*(v21 + 8))(v24, v17);
    }

    v25 = sub_21DBFA12C();

    [v16 setText_];
  }

  free(v3);
}

char *sub_21D9ED5F0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_lineYPositionInTargetViewConstraint] = 0;
  v10 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForInfoContainerAboveLine] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForInfoContainerBelowLine] = v10;
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForActiveDropTargetView] = v10;
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_activeDropTargetView] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_shouldPositionInfoContainerAboveLine] = 1;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_line] = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v13 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_infoContainer;
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_infoContainer] = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = [*&v4[v13] layer];
  v15 = objc_opt_self();
  v16 = [v15 blackColor];
  v17 = [v16 CGColor];

  [v14 setBorderColor_];
  v18 = [*&v4[v13] layer];
  [v18 setBorderWidth_];

  v19 = *&v4[v13];
  v20 = [v15 whiteColor];
  [v19 setBackgroundColor_];

  v21 = [*&v4[v13] layer];
  [v21 setCornerRadius_];

  v22 = [*&v4[v13] layer];
  [v22 setCornerCurve_];

  [*&v4[v13] setClipsToBounds_];
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v24 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_info;
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_info] = v23;
  [v23 setNumberOfLines_];
  [*&v4[v24] setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = *&v4[v24];
  v26 = sub_21DBFA12C();
  v27 = [objc_opt_self() fontWithName:v26 size:12.0];

  [v25 setFont_];
  v28 = *&v4[v24];
  v29 = [v15 blackColor];
  [v28 setTextColor_];

  v30 = *&v4[v24];
  v31 = sub_21DBFA12C();
  [v30 setText_];

  LODWORD(v32) = 1144750080;
  [*&v4[v24] setContentCompressionResistancePriority:1 forAxis:v32];
  v86.receiver = v4;
  v86.super_class = ObjectType;
  v33 = objc_msgSendSuper2(&v86, sel_initWithFrame_, a1, a2, a3, a4);
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_infoContainer;
  [v33 addSubview_];
  v35 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_info;
  [*&v33[v34] addSubview_];
  v36 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_line;
  [v33 addSubview_];
  v85 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_21DC357A0;
  v38 = [*&v33[v34] trailingAnchor];
  v39 = [v33 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v37 + 32) = v40;
  v41 = [*&v33[v34] topAnchor];
  v42 = [*&v33[v35] topAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:-10.0];

  *(v37 + 40) = v43;
  v44 = [*&v33[v34] leftAnchor];
  v45 = [*&v33[v35] leftAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:-10.0];

  *(v37 + 48) = v46;
  v47 = [*&v33[v34] rightAnchor];
  v48 = [*&v33[v35] rightAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:10.0];

  *(v37 + 56) = v49;
  v50 = [*&v33[v34] bottomAnchor];
  v51 = [*&v33[v35] bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:10.0];

  *(v37 + 64) = v52;
  v53 = [*&v33[v36] leadingAnchor];
  v54 = [v33 leadingAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v37 + 72) = v55;
  v56 = [*&v33[v36] trailingAnchor];
  v57 = [v33 trailingAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  *(v37 + 80) = v58;
  v59 = [*&v33[v36] heightAnchor];
  v60 = [v59 constraintEqualToConstant_];

  *(v37 + 88) = v60;
  sub_21D0D8CF0(0, &qword_280D177D0);
  v61 = sub_21DBFA5DC();

  [v85 activateConstraints_];

  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_21DC0BFD0;
  v63 = [*&v33[v34] topAnchor];
  v64 = [v33 topAnchor];
  v65 = [v63 constraintEqualToAnchor_];

  *(v62 + 32) = v65;
  v66 = [*&v33[v36] bottomAnchor];
  v67 = [v33 bottomAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v62 + 40) = v68;
  v69 = [*&v33[v34] bottomAnchor];
  v70 = [*&v33[v36] topAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:-40.0];

  *(v62 + 48) = v71;
  *&v33[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForInfoContainerAboveLine] = v62;

  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_21DC0BFD0;
  v73 = [*&v33[v34] bottomAnchor];
  v74 = [v33 bottomAnchor];
  v75 = [v73 constraintEqualToAnchor_];

  *(v72 + 32) = v75;
  v76 = [*&v33[v36] topAnchor];
  v77 = [v33 topAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  *(v72 + 40) = v78;
  v79 = [*&v33[v34] topAnchor];
  v80 = [*&v33[v36] bottomAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:40.0];

  *(v72 + 48) = v81;
  *&v33[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForInfoContainerBelowLine] = v72;

  LODWORD(v82) = 1148846080;
  [v33 setContentCompressionResistancePriority:1 forAxis:v82];
  [v33 setUserInteractionEnabled_];
  [v33 setClipsToBounds_];

  [v33 setNeedsUpdateConstraints];
  return v33;
}

Swift::Void __swiftcall TTRIDebugDropIndicatorView.layoutSubviews()()
{
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 safeAreaInsets];
    v12 = v11;
    v14 = v13;

    v15 = UIEdgeInsetsInsetRect(v4, v6, v8, v10, v12, v14);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [*&v0[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_infoContainer] bounds];
    v23 = v22;
    v24 = *&v0[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_line];
    [v24 bounds];
    [v2 convertRect:v24 fromCoordinateSpace:?];
    MinY = CGRectGetMinY(v30);
    v31.origin.x = v15;
    v31.origin.y = v17;
    v31.size.width = v19;
    v31.size.height = v21;
    v26 = MinY - CGRectGetMinY(v31);
    if (v26 < 0.0)
    {
      v26 = 0.0;
    }

    v27 = v23 + 40.0 <= v26;
    v28 = v0[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_shouldPositionInfoContainerAboveLine];
    v0[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_shouldPositionInfoContainerAboveLine] = v27;
    if (v28 != v27)
    {
      [v0 setNeedsUpdateConstraints];
    }
  }
}

Swift::Void __swiftcall TTRIDebugDropIndicatorView.updateConstraints()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_updateConstraints);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v1 = objc_opt_self();
  sub_21D0D8CF0(0, &qword_280D177D0);
  v2 = sub_21DBFA5DC();

  [v1 deactivateConstraints_];

  v3 = sub_21DBFA5DC();

  [v1 activateConstraints_];
}

id TTRIDebugDropIndicatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21D9EE598(void *a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v58[3] = a5;
  v58[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v58);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a3, a5);
  result = [a4 window];
  if (!result)
  {
    result = [a1 window];
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  v13 = result;
  v14 = [a4 window];
  if (v14)
  {
    v15 = v14;
    sub_21D0D8CF0(0, &qword_27CE629A8);
    v16 = sub_21DBFB63C();

    if (v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  TTRIDebugDropIndicatorView.stopShowing()();
  v17 = v13;
  [v17 addSubview_];
  v18 = [a4 widthAnchor];
  v19 = [a1 widthAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  v21 = [a4 leadingAnchor];
  v22 = [a1 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  v24 = [*&a4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_line] centerYAnchor];
  v25 = [v17 topAnchor];

  v26 = [v24 constraintEqualToAnchor_];
  v27 = *&a4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_lineYPositionInTargetViewConstraint];
  *&a4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_lineYPositionInTargetViewConstraint] = v26;
  v28 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_21DC0BFD0;
  *(v29 + 32) = v20;
  *(v29 + 40) = v23;
  *(v29 + 48) = v28;
  *&a4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForActiveDropTargetView] = v29;
  v30 = v28;
  v31 = v20;
  v32 = v23;

  v33 = objc_opt_self();
  sub_21D0D8CF0(0, &qword_280D177D0);
  sub_21DBF8E0C();
  v34 = sub_21DBFA5DC();

  [v33 activateConstraints_];

  [a4 setHidden_];
LABEL_8:
  v35 = *&a4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_lineYPositionInTargetViewConstraint];
  if (v35)
  {
    v36 = v35;
    [a2 locationInView_];
    [v36 setConstant_];
  }

  [v13 bringSubviewToFront_];
  [a4 setNeedsLayout];
  sub_21D0D32E4(v58, v57);
  v38 = &a4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext];
  swift_beginAccess();
  sub_21D9EEC34(v57, v38);
  swift_endAccess();
  v39 = *(v38 + 3);
  if (v39)
  {
    v40 = *(v38 + 4);
    v41 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
    v42 = *(v39 - 8);
    v43 = MEMORY[0x28223BE20](v41);
    v45 = v57 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v42 + 16))(v45, v43);
    v46 = (*(v40 + 16))(v39, v40);
    (*(v42 + 8))(v45, v39);
  }

  else
  {
    v46 = [objc_opt_self() grayColor];
  }

  [*&a4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_line] setBackgroundColor_];

  v47 = *&a4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_info];
  v48 = *(v38 + 3);
  if (v48)
  {
    v49 = *(v38 + 4);
    v50 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
    v51 = *(v48 - 8);
    v52 = MEMORY[0x28223BE20](v50);
    v54 = v57 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v51 + 16))(v54, v52);
    (*(v49 + 8))(v48, v49);
    (*(v51 + 8))(v54, v48);
  }

  v55 = sub_21DBFA12C();

  [v47 setText_];

  sub_21D9EECA4(v57);
  return __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t sub_21D9EEC34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64998);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D9EECA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D9EED0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64998);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21D9EEDC8()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_lineYPositionInTargetViewConstraint) = 0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForInfoContainerAboveLine) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForInfoContainerBelowLine) = v2;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForActiveDropTargetView) = v2;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_activeDropTargetView) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_shouldPositionInfoContainerAboveLine) = 1;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t sub_21D9EEE90()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE649D8);
  v1 = __swift_project_value_buffer(v0, qword_27CE649D8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D9EEF5C()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    if (sub_21DBFBD7C() != 1 || !sub_21DBFBD7C())
    {
      return;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    return;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x223D44740](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 32);
  }

  v3 = v2;
  v4 = [v2 objectID];
  v5 = v4;
  v6 = v0[4];
  if (*(v6 + 16) && (v7 = sub_21D17E07C(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    sub_21DBF8E0C();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (*(v9 + 16) == 1)
  {
    v10 = *(v9 + 40);
    v11 = *(v9 + 32);

    v12 = v11;
    v13 = v12;
    if (v10)
    {
      v14 = [v12 name];
    }

    else
    {
      v14 = [v12 displayName];
    }

    v15 = v14;
    sub_21DBFA16C();
  }

  else
  {
  }
}

uint64_t TTRAccountsListsDeleteArgumentsType.singleItemName.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  v3 = sub_21D0D8CF0(0, &qword_27CE5DDD0);
  sub_21D9EFC18(v3, &v13);

  v4 = v13;
  if (!v13)
  {
    return 0;
  }

  v5 = [v13 objectID];
  (*(a2 + 56))();

  sub_21D9EFC18(&type metadata for TTRListOrCustomSmartList, &v13);

  v6 = v14;
  if (v14 == 255)
  {

    return 0;
  }

  v7 = v13;
  v8 = v13;
  if (v6)
  {
    v9 = [v8 name];
  }

  else
  {
    v9 = [v8 displayName];
  }

  v11 = v9;
  v12 = sub_21DBFA16C();

  sub_21D157864(v7, v6);
  sub_21D157864(v7, v6);

  return v12;
}

uint64_t TTRAccountsListsDeleteArgumentsType.hasOnlyGroupsToDelete.getter(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = (*(a2 + 16))();
  v7[2] = a1;
  v7[3] = v3;
  v8 = v2;
  LOBYTE(v3) = sub_21D3233D4(sub_21D9EFCFC, v7, v5);

  return v3 & 1;
}

char *sub_21D9EF308()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v3 = 0;
    v4 = *(v42 + 32);
    v40 = v1 & 0xC000000000000001;
    v36 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = MEMORY[0x277D84F90];
    v37 = v1;
    v38 = v4;
    v35 = (v1 + 32);
    v39 = i;
    while (1)
    {
      if (v40)
      {
        v6 = MEMORY[0x223D44740](v3, v37);
      }

      else
      {
        if (v3 >= *(v36 + 16))
        {
          goto LABEL_58;
        }

        v6 = *&v35[8 * v3];
      }

      v7 = v6;
      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        goto LABEL_53;
      }

      v9 = [v6 objectID];
      v10 = v9;
      if (*(v4 + 16) && (v11 = sub_21D17E07C(v9), (v12 & 1) != 0))
      {
        v13 = *(*(v4 + 56) + 8 * v11);
        sub_21DBF8E0C();
      }

      else
      {
        v13 = MEMORY[0x277D84F90];
      }

      v14 = *(v13 + 16);
      v1 = *(v5 + 2);
      v15 = (v1 + v14);
      if (__OFADD__(v1, v14))
      {
        break;
      }

      sub_21DBF8E0C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v15 <= *(v5 + 3) >> 1)
      {
        if (*(v13 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v1 <= v15)
        {
          v19 = v1 + v14;
        }

        else
        {
          v19 = v1;
        }

        v5 = sub_21D2146A4(isUniquelyReferenced_nonNull_native, v19, 1, v5);
        if (*(v13 + 16))
        {
LABEL_18:
          if ((*(v5 + 3) >> 1) - *(v5 + 2) < v14)
          {
            goto LABEL_56;
          }

          swift_arrayInitWithCopy();

          if (v14)
          {
            v17 = *(v5 + 2);
            v8 = __OFADD__(v17, v14);
            v18 = v17 + v14;
            if (v8)
            {
              goto LABEL_57;
            }

            *(v5 + 2) = v18;
          }

          goto LABEL_27;
        }
      }

      if (v14)
      {
        goto LABEL_55;
      }

LABEL_27:
      v41 = v7;
      v20 = *(v13 + 16);
      if (v20)
      {
        v1 = v13 + 40;
        do
        {
          if (*v1)
          {
            goto LABEL_30;
          }

          v21 = *(v1 - 8);
          if (![v21 isGroup])
          {

            goto LABEL_30;
          }

          v22 = [v21 objectID];
          v23 = v22;
          v24 = *(v42 + 40);
          if (*(v24 + 16) && (v25 = sub_21D17E07C(v22), (v26 & 1) != 0))
          {
            v27 = *(*(v24 + 56) + 8 * v25);
            sub_21DBF8E0C();
          }

          else
          {
            v27 = MEMORY[0x277D84F90];
          }

          v28 = *(v27 + 16);
          v29 = *(v5 + 2);
          v30 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            goto LABEL_50;
          }

          if (v30 > *(v5 + 3) >> 1)
          {
            if (v29 <= v30)
            {
              v33 = v29 + v28;
            }

            else
            {
              v33 = *(v5 + 2);
            }

            v5 = sub_21D2146A4(1, v33, 1, v5);
            v29 = *(v5 + 2);
            if (*(v27 + 16))
            {
LABEL_40:
              if (((*(v5 + 3) >> 1) - v29) < v28)
              {
                goto LABEL_51;
              }

              swift_arrayInitWithCopy();

              if (v28)
              {
                v31 = *(v5 + 2);
                v8 = __OFADD__(v31, v28);
                v32 = v31 + v28;
                if (v8)
                {
                  goto LABEL_52;
                }

                *(v5 + 2) = v32;
              }

              goto LABEL_30;
            }
          }

          else if (v28)
          {
            goto LABEL_40;
          }

          if (v28)
          {
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

LABEL_30:
          v1 += 16;
          --v20;
        }

        while (v20);
      }

      v4 = v38;
      if (v3 == v39)
      {
        return v5;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t TTRAccountsListsDeleteArgumentsType.allListsToDelete()(uint64_t a1, uint64_t (**a2)(void))
{
  isUniquelyReferenced_nonNull_native = a2[2]();
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_51;
  }

  v4 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  v32 = isUniquelyReferenced_nonNull_native;
  while (v4)
  {
    v5 = 0;
    v34 = a2[7];
    v35 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v30 = isUniquelyReferenced_nonNull_native + 32;
    v31 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v6 = MEMORY[0x277D84F90];
    v33 = v4;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x223D44740](v5, v32);
      }

      else
      {
        if (v5 >= *(v31 + 16))
        {
          goto LABEL_50;
        }

        isUniquelyReferenced_nonNull_native = *(v30 + 8 * v5);
      }

      v7 = isUniquelyReferenced_nonNull_native;
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        goto LABEL_45;
      }

      v9 = [isUniquelyReferenced_nonNull_native objectID];
      v10 = v34();

      v11 = *(v10 + 16);
      v12 = *(v6 + 16);
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        break;
      }

      sub_21DBF8E0C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v13 <= *(v6 + 24) >> 1)
      {
        if (*(v10 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v12 <= v13)
        {
          v16 = v12 + v11;
        }

        else
        {
          v16 = v12;
        }

        isUniquelyReferenced_nonNull_native = sub_21D2146A4(isUniquelyReferenced_nonNull_native, v16, 1, v6);
        v6 = isUniquelyReferenced_nonNull_native;
        if (*(v10 + 16))
        {
LABEL_14:
          if ((*(v6 + 24) >> 1) - *(v6 + 16) < v11)
          {
            goto LABEL_48;
          }

          swift_arrayInitWithCopy();

          if (v11)
          {
            v14 = *(v6 + 16);
            v8 = __OFADD__(v14, v11);
            v15 = v14 + v11;
            if (v8)
            {
              goto LABEL_49;
            }

            *(v6 + 16) = v15;
          }

          goto LABEL_23;
        }
      }

      if (v11)
      {
        goto LABEL_47;
      }

LABEL_23:
      v36 = v7;
      v17 = *(v10 + 16);
      if (v17)
      {
        v18 = (v10 + 40);
        do
        {
          if (*v18)
          {
            goto LABEL_26;
          }

          v19 = *(v18 - 1);
          if (![v19 isGroup])
          {

            goto LABEL_26;
          }

          v20 = [v19 objectID];
          v21 = a2[8]();

          v22 = *(v21 + 16);
          v23 = *(v6 + 16);
          v24 = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            goto LABEL_42;
          }

          if (v24 > *(v6 + 24) >> 1)
          {
            if (v23 <= v24)
            {
              v27 = v23 + v22;
            }

            else
            {
              v27 = *(v6 + 16);
            }

            isUniquelyReferenced_nonNull_native = sub_21D2146A4(1, v27, 1, v6);
            v6 = isUniquelyReferenced_nonNull_native;
            v23 = *(isUniquelyReferenced_nonNull_native + 16);
            if (*(v21 + 16))
            {
LABEL_32:
              if (((*(v6 + 24) >> 1) - v23) < v22)
              {
                goto LABEL_43;
              }

              swift_arrayInitWithCopy();

              if (v22)
              {
                v25 = *(v6 + 16);
                v8 = __OFADD__(v25, v22);
                v26 = v25 + v22;
                if (v8)
                {
                  goto LABEL_44;
                }

                *(v6 + 16) = v26;
              }

              goto LABEL_26;
            }
          }

          else if (v22)
          {
            goto LABEL_32;
          }

          if (v22)
          {
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

LABEL_26:
          v18 += 16;
          --v17;
        }

        while (v17);
      }

      if (v5 == v33)
      {
        goto LABEL_53;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v28 = isUniquelyReferenced_nonNull_native;
    v4 = sub_21DBFBD7C();
    isUniquelyReferenced_nonNull_native = v28;
    v32 = v28;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_53:

  return v6;
}

void sub_21D9EFA30(void *a1, uint64_t a2)
{
  v3 = [a1 objectID];
  v4 = v3;
  v5 = *(a2 + 32);
  if (*(v5 + 16) && (v6 = sub_21D17E07C(v3), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    sub_21DBF8E0C();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = (v8 + 40);
  v10 = -*(v8 + 16);
  v11 = -1;
  while (1)
  {
    if (v10 + v11 == -1)
    {
LABEL_10:

      return;
    }

    if (++v11 >= *(v8 + 16))
    {
      break;
    }

    if ((*v9 & 1) == 0)
    {
      v12 = v9 + 16;
      v13 = [*(v9 - 1) isGroup];
      v9 = v12;
      if (v13)
      {
        continue;
      }
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_21D9EFB28(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [*a1 objectID];
  v6 = (*(a4 + 56))();

  v7 = (v6 + 40);
  v8 = -*(v6 + 16);
  v9 = -1;
  while (1)
  {
    if (v8 + v9 == -1)
    {
LABEL_6:

      return;
    }

    if (++v9 >= *(v6 + 16))
    {
      break;
    }

    if ((*v7 & 1) == 0)
    {
      v10 = v7 + 16;
      v11 = [*(v7 - 1) isGroup];
      v7 = v10;
      if (v11)
      {
        continue;
      }
    }

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_21D9EFC18@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (sub_21DBFA6DC() == 1)
  {
    sub_21DBFA74C();
    swift_getWitnessTable();
    return sub_21DBFACEC();
  }

  else
  {
    v5 = *(*(a1 - 8) + 56);

    return v5(a2, 1, 1, a1);
  }
}

uint64_t TTRAccountsListsInteractorDeleteArguments.init(items:viewModel:currentList:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v301 = *MEMORY[0x277D85DE8];
  v248 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v8 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v10 = &v239 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v239 - v12;
  v276 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v268 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v269 = (&v239 - v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v239 - v19;
  v26 = MEMORY[0x28223BE20](v21);
  v27 = &v239 - v22;
  v260 = *a3;
  v267 = *(a3 + 8);
  v279 = MEMORY[0x277D84F90];
  v264 = *(a1 + 16);
  v254 = a4;
  if (!v264)
  {
    v215 = 0;
    v214 = 0;
    v277 = 0;
    v213 = 0;
    v210 = 0;
    v211 = MEMORY[0x277D84F90];
    v209 = MEMORY[0x277D84F98];
    v212 = MEMORY[0x277D84F98];
    goto LABEL_169;
  }

  v256 = v10;
  v257 = 0;
  v243 = v8;
  v244 = v25;
  v242 = v24;
  v245 = v23;
  v246 = 0;
  v28 = 0;
  v261 = 0;
  v252 = 0;
  v270 = 0;
  v273 = 0;
  v274 = OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree;
  v255 = OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes;
  v29 = MEMORY[0x277D84F98];
  v26.n128_u64[0] = 138412290;
  v241 = v26;
  v258 = &v239 - v22;
  v259 = MEMORY[0x277D84F90];
  v249 = a1;
  v250 = MEMORY[0x277D84F98];
  v265 = v20;
  v266 = a2;
  v271 = v13;
  while (2)
  {
    if (v28 >= *(a1 + 16))
    {
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      swift_once();
LABEL_172:
      v198 = sub_21DBF84BC();
      __swift_project_value_buffer(v198, qword_27CE649D8);
      v199 = v245;
      sub_21D0FE6CC(v27, v245, type metadata accessor for TTRAccountsListsViewModel.Item);
      v200 = sub_21DBF84AC();
      v201 = sub_21DBFAEBC();
      if (os_log_type_enabled(v200, v201))
      {
        v202 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        *&v288 = v203;
        *v202 = 136315138;
        v204 = sub_21D25D428();
        v206 = v205;
        sub_21D1013F0(v199, type metadata accessor for TTRAccountsListsViewModel.Item);
        v207 = sub_21D0CDFB4(v204, v206, &v288);

        *(v202 + 4) = v207;
        _os_log_impl(&dword_21D0C9000, v200, v201, "Unexpected item for TTRAccountsListsInteractorDeleteArguments {item: %s}", v202, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v203);
        MEMORY[0x223D46520](v203, -1, -1);
        MEMORY[0x223D46520](v202, -1, -1);
        goto LABEL_189;
      }

      v208 = v199;
      goto LABEL_191;
    }

    v275 = v28 + 1;
    sub_21D0FE6CC(a1 + ((*(v268 + 80) + 32) & ~*(v268 + 80)) + *(v268 + 72) * v28, v27, type metadata accessor for TTRAccountsListsViewModel.Item);
    sub_21D0FE6CC(v27, v20, type metadata accessor for TTRAccountsListsViewModel.Item);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:

        sub_21D157864(v260, v267);

        sub_21D1013F0(v20, type metadata accessor for TTRAccountsListsViewModel.Item);
        goto LABEL_171;
      case 5u:
      case 7u:
        sub_21D1013F0(v20, type metadata accessor for TTRAccountsListsViewModel.Item);
        TTRAccountsListsViewModel.listOrCustomSmartList(for:)(v27, &v288);
        if (BYTE8(v288) == 255)
        {

          sub_21D157864(v260, v267);

          goto LABEL_178;
        }

        if (BYTE8(v288))
        {
          sub_21D157864(v288, SBYTE8(v288));

          sub_21D157864(v260, v267);

LABEL_178:

          v272 = v29;
          if (qword_27CE56F40 == -1)
          {
LABEL_179:
            v216 = sub_21DBF84BC();
            __swift_project_value_buffer(v216, qword_27CE649D8);
            v217 = v27;
            v218 = v244;
            goto LABEL_187;
          }

LABEL_211:
          swift_once();
          goto LABEL_179;
        }

        v263 = BYTE8(v288);
        v277 = v288;
        v30 = [v288 account];
        v31 = [v30 objectID];
        v32 = v31;
        if (v29[2] && (sub_21D17E07C(v31), (v33 & 1) != 0))
        {

          v34 = v273;
        }

        else
        {

          v35 = v30;
          MEMORY[0x223D42D80]();
          v34 = v273;
          if (*((v279 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v279 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          v259 = v279;
        }

        v36 = [v30 objectID];
        sub_21D0D0E88(v34);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v288 = v29;
        v39 = sub_21D17E07C(v36);
        v40 = v29[2];
        v41 = (v38 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          goto LABEL_204;
        }

        v43 = v38;
        if (v29[3] >= v42)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v46 = v288;
            if (v38)
            {
              goto LABEL_28;
            }
          }

          else
          {
            sub_21D225F64();
            v46 = v288;
            if (v43)
            {
              goto LABEL_28;
            }
          }

LABEL_26:
          v46[(v39 >> 6) + 8] |= 1 << v39;
          *(v46[6] + 8 * v39) = v36;
          *(v46[7] + 8 * v39) = MEMORY[0x277D84F90];
          v55 = v46[2];
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          if (v56)
          {
            goto LABEL_206;
          }

          v46[2] = v57;
          v58 = v36;
          goto LABEL_28;
        }

        sub_21D21F318(v42, isUniquelyReferenced_nonNull_native);
        sub_21D0D8CF0(0, &qword_280D17880);
        v44 = sub_21D17E07C(v36);
        if ((v43 & 1) != (v45 & 1))
        {
          sub_21DBFC70C();
          __break(1u);
LABEL_215:
          result = sub_21DBFC70C();
          __break(1u);
          return result;
        }

        v39 = v44;
        v46 = v288;
        if ((v43 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_28:
        v272 = v46;
        v59 = v46[7];
        v60 = *(v59 + 8 * v39);
        v61 = v277;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        *(v59 + 8 * v39) = v60;
        v262 = v30;
        if ((v62 & 1) == 0)
        {
          v60 = sub_21D2146A4(0, *(v60 + 2) + 1, 1, v60);
          *(v59 + 8 * v39) = v60;
        }

        v64 = *(v60 + 2);
        v63 = *(v60 + 3);
        if (v64 >= v63 >> 1)
        {
          *(v59 + 8 * v39) = sub_21D2146A4((v63 > 1), v64 + 1, 1, v60);
        }

        v65 = *(v59 + 8 * v39);
        *(v65 + 16) = v64 + 1;
        v66 = v65 + 16 * v64;
        *(v66 + 32) = v277;
        *(v66 + 40) = 0;
        v67 = v267;
        if ((v267 & 1) == 0)
        {
          sub_21D0D8CF0(0, &qword_280D17680);
          v68 = v260;
          v69 = [v260 objectID];
          v70 = [v61 objectID];
          v71 = sub_21DBFB63C();
          sub_21D157864(v68, v67);

          v261 = v71 | v261;
        }

        break;
      case 6u:
        sub_21D1013F0(v20, type metadata accessor for TTRAccountsListsViewModel.Item);
        TTRAccountsListsViewModel.listOrCustomSmartList(for:)(v27, &v288);
        v47 = BYTE8(v288);
        if (BYTE8(v288) == 255)
        {

          sub_21D157864(v260, v267);
        }

        else
        {
          if (BYTE8(v288))
          {
            v277 = v288;
            v48 = [v288 accountID];
            sub_21DA1CE20(v48, &v288);

            v49 = v288;
            v50 = BYTE8(v288);
            if (BYTE8(v288))
            {
              if (BYTE8(v288) == 255)
              {
              }

              else
              {

                sub_21D103A34(v49, v50);
              }

              sub_21D157864(v260, v267);

              v230 = v277;
              v229 = v254;
              if (qword_27CE56F40 != -1)
              {
                swift_once();
              }

              v231 = sub_21DBF84BC();
              __swift_project_value_buffer(v231, qword_27CE649D8);
              v232 = v230;
              v233 = sub_21DBF84AC();
              v234 = sub_21DBFAEBC();
              sub_21D157864(v230, v47);
              if (os_log_type_enabled(v233, v234))
              {
                v235 = swift_slowAlloc();
                v236 = swift_slowAlloc();
                *v235 = v241.n128_u32[0];
                v237 = [v232 objectID];
                *(v235 + 4) = v237;
                *v236 = v237;
                _os_log_impl(&dword_21D0C9000, v233, v234, "Failed to fetch account for smart list {remSmartList.objectID: %@}", v235, 0xCu);
                sub_21D0CF7E0(v236, &unk_27CE60070);
                MEMORY[0x223D46520](v236, -1, -1);
                MEMORY[0x223D46520](v235, -1, -1);

                sub_21D157864(v230, v47);
                v238 = v258;
              }

              else
              {
                sub_21D157864(v230, v47);

                v238 = v27;
              }

              sub_21D1013F0(v238, type metadata accessor for TTRAccountsListsViewModel.Item);

              sub_21D0D0E88(v273);
              result = sub_21D0D0E88(v257);
              goto LABEL_193;
            }

            v51 = [v288 objectID];
            v52 = v51;
            if (v29[2] && (sub_21D17E07C(v51), (v53 & 1) != 0))
            {

              v54 = v257;
            }

            else
            {

              v73 = sub_21D0FF19C(v49, 0);
              MEMORY[0x223D42D80](v73);
              v54 = v257;
              if (*((v279 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v279 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_21DBFA63C();
              }

              sub_21DBFA6CC();
              v259 = v279;
            }

            v74 = [v49 objectID];
            sub_21D0D0E88(v54);
            v75 = swift_isUniquelyReferenced_nonNull_native();
            *&v288 = v29;
            v27 = sub_21D17E07C(v74);
            v77 = v29[2];
            v78 = (v76 & 1) == 0;
            v79 = v77 + v78;
            if (__OFADD__(v77, v78))
            {
              goto LABEL_207;
            }

            v80 = v76;
            if (v29[3] >= v79)
            {
              v83 = a2;
              if (v75)
              {
                v84 = v288;
                if (v76)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                sub_21D225F64();
                v84 = v288;
                if (v80)
                {
                  goto LABEL_49;
                }
              }
            }

            else
            {
              sub_21D21F318(v79, v75);
              sub_21D0D8CF0(0, &qword_280D17880);
              v81 = sub_21D17E07C(v74);
              if ((v80 & 1) != (v82 & 1))
              {
                goto LABEL_215;
              }

              v27 = v81;
              v83 = a2;
              v84 = v288;
              if (v80)
              {
                goto LABEL_49;
              }
            }

            v84[(v27 >> 6) + 8] |= 1 << v27;
            *(v84[6] + 8 * v27) = v74;
            *(v84[7] + 8 * v27) = MEMORY[0x277D84F90];
            v85 = v84[2];
            v56 = __OFADD__(v85, 1);
            v86 = v85 + 1;
            if (v56)
            {
              __break(1u);
              goto LABEL_211;
            }

            v84[2] = v86;
            v87 = v74;
LABEL_49:
            v88 = v84[7];
            v89 = *(v88 + 8 * v27);
            v90 = swift_isUniquelyReferenced_nonNull_native();
            *(v88 + 8 * v27) = v89;
            if ((v90 & 1) == 0)
            {
              v89 = sub_21D2146A4(0, *(v89 + 2) + 1, 1, v89);
              *(v88 + 8 * v27) = v89;
            }

            v92 = *(v89 + 2);
            v91 = *(v89 + 3);
            if (v92 >= v91 >> 1)
            {
              *(v88 + 8 * v27) = sub_21D2146A4((v91 > 1), v92 + 1, 1, v89);
            }

            sub_21D103A34(v49, 0);
            v93 = v258;
            sub_21D1013F0(v258, type metadata accessor for TTRAccountsListsViewModel.Item);
            v94 = *(v88 + 8 * v27);
            v27 = v93;
            *(v94 + 16) = v92 + 1;
            v95 = v94 + 16 * v92;
            *(v95 + 32) = v277;
            v252 = 1;
            *(v95 + 40) = 1;
            v257 = sub_21D9F2F78;
            v29 = v84;
            a2 = v83;
            a1 = v249;
LABEL_54:
            v20 = v265;
            goto LABEL_55;
          }

          sub_21D157864(v288, SBYTE8(v288));

          sub_21D157864(v260, v267);
        }

        v272 = v29;
        if (qword_27CE56F40 != -1)
        {
          goto LABEL_213;
        }

        goto LABEL_186;
      case 0xFu:
      case 0x10u:

        sub_21D157864(v260, v267);

        goto LABEL_171;
      default:

        sub_21D157864(v260, v267);

        v219 = sub_21DBF56BC();
        (*(*(v219 - 8) + 8))(v20, v219);
LABEL_171:
        v272 = v29;
        if (qword_27CE56F40 == -1)
        {
          goto LABEL_172;
        }

        goto LABEL_209;
    }

    a2 = v266;
    v72 = v271;
    v29 = v272;
    sub_21D0FE6CC(v27, v269, type metadata accessor for TTRAccountsListsViewModel.Item);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 6u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
        sub_21D1013F0(v27, type metadata accessor for TTRAccountsListsViewModel.Item);

        sub_21D157864(v277, v263);
        sub_21D1013F0(v269, type metadata accessor for TTRAccountsListsViewModel.Item);
        goto LABEL_36;
      case 5u:
        v128 = v269[11];
        v298 = v269[10];
        v299 = v128;
        v300[0] = v269[12];
        *(v300 + 10) = *(v269 + 202);
        v129 = v269[7];
        v294 = v269[6];
        v295 = v129;
        v130 = v269[9];
        v296 = v269[8];
        v297 = v130;
        v131 = v269[3];
        v290 = v269[2];
        v291 = v131;
        v132 = v269[5];
        v292 = v269[4];
        v293 = v132;
        v133 = v269[1];
        v288 = *v269;
        v289 = v133;
        if (!__OFADD__(v246, *(&v133 + 1)))
        {
          v246 += *(&v133 + 1);
          if (v252)
          {
            sub_21D1013F0(v27, type metadata accessor for TTRAccountsListsViewModel.Item);

            sub_21D157864(v277, v263);
            sub_21D1077D8(&v288);
            v134 = 1;
          }

          else
          {
            v284 = 0;
            v135 = [v61 fetchRemindersCountWithError_];
            if (!v135)
            {
              v182 = v284;
              v183 = sub_21DBF52DC();

              swift_willThrow();
              if (qword_27CE56F40 != -1)
              {
                swift_once();
              }

              v270 = 0;
              v184 = sub_21DBF84BC();
              __swift_project_value_buffer(v184, qword_27CE649D8);
              v185 = v61;
              v186 = sub_21DBF84AC();
              v187 = sub_21DBFAEBC();
              v188 = v277;
              v189 = v263;
              sub_21D157864(v277, v263);
              if (os_log_type_enabled(v186, v187))
              {
                v190 = v188;
                v191 = swift_slowAlloc();
                v192 = swift_slowAlloc();
                *v191 = v241.n128_u32[0];
                v193 = [v185 objectID];
                *(v191 + 4) = v193;
                *v192 = v193;
                _os_log_impl(&dword_21D0C9000, v186, v187, "Unable to fetch reminders count {remList.objectID: %@}", v191, 0xCu);
                sub_21D0CF7E0(v192, &unk_27CE60070);
                v194 = v192;
                v27 = v258;
                MEMORY[0x223D46520](v194, -1, -1);
                MEMORY[0x223D46520](v191, -1, -1);

                sub_21D1077D8(&v288);
                sub_21D157864(v190, v263);
              }

              else
              {

                sub_21D157864(v188, v189);
                sub_21D1077D8(&v288);
              }

              sub_21D1013F0(v27, type metadata accessor for TTRAccountsListsViewModel.Item);
              v252 = 0;
              v20 = v265;
              v29 = v272;
              goto LABEL_103;
            }

            v136 = v135;
            v137 = v284;
            v138 = [v136 integerValue];

            sub_21D1077D8(&v288);
            sub_21D157864(v277, v263);

            sub_21D1013F0(v27, type metadata accessor for TTRAccountsListsViewModel.Item);
            v134 = v138 > 0;
          }

          v252 = v134;
          v20 = v265;
LABEL_103:
          v273 = sub_21D9F2F78;
LABEL_55:
          v28 = v275;
          if (v275 == v264)
          {
            v209 = v29;
            v277 = (v252 & 1);
            v210 = v261 & 1;
            v211 = v259;
            v212 = v250;
            v213 = v246;
            v214 = v257;
            v215 = v273;
LABEL_169:
            sub_21D157864(v260, v267);

            sub_21D0D0E88(v215);
            result = sub_21D0D0E88(v214);
            v196 = v254;
            v197 = v277;
            *v254 = v211;
            v196[1] = v197;
            v196[2] = v213;
            v196[3] = v210;
            v196[4] = v209;
            v196[5] = v212;
            return result;
          }

          continue;
        }

        __break(1u);
LABEL_213:
        swift_once();
LABEL_186:
        v220 = sub_21DBF84BC();
        __swift_project_value_buffer(v220, qword_27CE649D8);
        v217 = v27;
        v218 = v242;
LABEL_187:
        sub_21D0FE6CC(v217, v218, type metadata accessor for TTRAccountsListsViewModel.Item);
        v200 = sub_21DBF84AC();
        v221 = sub_21DBFAEBC();
        if (!os_log_type_enabled(v200, v221))
        {

          v208 = v218;
LABEL_191:
          sub_21D1013F0(v208, type metadata accessor for TTRAccountsListsViewModel.Item);
          v228 = v27;
          goto LABEL_192;
        }

        v222 = swift_slowAlloc();
        v223 = swift_slowAlloc();
        *&v288 = v223;
        *v222 = 136315138;
        v224 = sub_21D25D428();
        v226 = v225;
        sub_21D1013F0(v218, type metadata accessor for TTRAccountsListsViewModel.Item);
        v227 = sub_21D0CDFB4(v224, v226, &v288);

        *(v222 + 4) = v227;
        _os_log_impl(&dword_21D0C9000, v200, v221, "Failed to find model for item -- failed delete {item: %s}", v222, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v223);
        MEMORY[0x223D46520](v223, -1, -1);
        MEMORY[0x223D46520](v222, -1, -1);
LABEL_189:

        v228 = v258;
LABEL_192:
        sub_21D1013F0(v228, type metadata accessor for TTRAccountsListsViewModel.Item);

        sub_21D0D0E88(v273);
        result = sub_21D0D0E88(v257);
        v229 = v254;
LABEL_193:
        v229[1] = 0u;
        v229[2] = 0u;
        *v229 = 0u;
        return result;
      case 7u:
        v96 = v269[1];
        v280 = *v269;
        v281 = v96;
        v97 = v269[3];
        v282 = v269[2];
        v283 = v97;
        v240 = v97;
        v98 = sub_21DA1A714(v97);
        if (v98)
        {
          v99 = v98;
        }

        else
        {
          v99 = MEMORY[0x277D84F90];
        }

        v100 = *(v99 + 16);
        v251 = v99;
        if (!v100)
        {
          v247 = MEMORY[0x277D84F90];
          goto LABEL_105;
        }

        v101 = 0;
        v102 = v99 + 32;
        v253 = v100 - 1;
        v247 = MEMORY[0x277D84F90];
        v273 = v99 + 32;
        while (1)
        {
          v27 = v102 + 224 * v101;
          v103 = v101;
          while (1)
          {
            if (v103 >= *(v99 + 16))
            {
              goto LABEL_202;
            }

            v105 = *(v27 + 16);
            v288 = *v27;
            v289 = v105;
            v106 = *(v27 + 32);
            v107 = *(v27 + 48);
            v108 = *(v27 + 80);
            v292 = *(v27 + 64);
            v293 = v108;
            v290 = v106;
            v291 = v107;
            v109 = *(v27 + 96);
            v110 = *(v27 + 112);
            v111 = *(v27 + 144);
            v296 = *(v27 + 128);
            v297 = v111;
            v294 = v109;
            v295 = v110;
            v112 = *(v27 + 160);
            v113 = *(v27 + 176);
            v114 = *(v27 + 192);
            *(v300 + 10) = *(v27 + 202);
            v299 = v113;
            v300[0] = v114;
            v298 = v112;
            v115 = BYTE2(v111);
            v116 = v288;
            if (BYTE2(v111) != 2 && (BYTE2(v111) & 1) != 0)
            {
              break;
            }

            sub_21D567868(&v288, &v284);
            sub_21DA1CE20(v116, &v286);
            if (v287 != 255)
            {
              if (v287 == 1 || v287 == 4)
              {
                v120 = v286;
                sub_21D1077D8(&v288);
                v121 = 0;
                goto LABEL_89;
              }

              sub_21D103A34(v286, v287);
            }

            if (v115 == 2 || (v115 & 1) == 0)
            {
              sub_21DA1CE20(v116, &v284);
              if (v285 != 255)
              {
                v104 = v284;
                if (v285 == 2)
                {
LABEL_87:
                  v120 = v104;
                  sub_21D1077D8(&v288);
                  v121 = 1;
                  goto LABEL_89;
                }

                sub_21D103A34(v284, v285);
              }

              goto LABEL_66;
            }

LABEL_81:
            v286 = *(a2 + v255);
            MEMORY[0x28223BE20](v118);
            *(&v239 - 2) = v116;
            sub_21DBF8E0C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90);
            sub_21D9F2B60();
            v119 = v270;
            sub_21DBFA48C();
            v270 = v119;

            if (v285 == 255)
            {
              v98 = sub_21D1077D8(&v288);
              v72 = v271;
              v99 = v251;
              goto LABEL_67;
            }

            v104 = v284;
            v72 = v271;
            v99 = v251;
            if (v285)
            {
              goto LABEL_87;
            }

            sub_21D157864(v284, v285);
LABEL_66:
            v98 = sub_21D1077D8(&v288);
LABEL_67:
            ++v103;
            v27 += 224;
            if (v100 == v103)
            {
              v27 = v258;
              goto LABEL_105;
            }
          }

          v278 = *(a2 + v255);
          MEMORY[0x28223BE20](v98);
          *(&v239 - 2) = v116;
          sub_21D567868(&v288, &v284);
          sub_21DBF8E0C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90);
          sub_21D9F2B60();
          v117 = v270;
          sub_21DBFA48C();
          v270 = v117;

          if (v287 == 255)
          {
            goto LABEL_74;
          }

          if (v287)
          {
            break;
          }

          v120 = v286;
          sub_21D1077D8(&v288);
          v121 = 0;
          a2 = v266;
          v99 = v251;
LABEL_89:
          v98 = swift_isUniquelyReferenced_nonNull_native();
          v27 = v258;
          if ((v98 & 1) == 0)
          {
            v98 = sub_21D2146A4(0, *(v247 + 2) + 1, 1, v247);
            v247 = v98;
          }

          v122 = v120;
          v124 = *(v247 + 2);
          v123 = *(v247 + 3);
          if (v124 >= v123 >> 1)
          {
            v98 = sub_21D2146A4((v123 > 1), v124 + 1, 1, v247);
            v247 = v98;
            v122 = v120;
          }

          v101 = v103 + 1;
          v125 = v247;
          *(v247 + 2) = v124 + 1;
          v126 = &v125[16 * v124];
          *(v126 + 4) = v122;
          v126[40] = v121;
          v72 = v271;
          v102 = v273;
          if (v253 == v103)
          {
LABEL_105:
            v288 = v280;
            v289 = v281;
            v290 = v282;
            v291 = v283;
            v139 = TTRAccountsListsViewModel.pinnedLists(in:)(&v288);
            v140 = *(v139 + 16);
            if (!v140)
            {

              v162 = MEMORY[0x277D84F90];
LABEL_142:
              v163 = v247;
              *&v288 = v247;
              sub_21DBF8E0C();
              sub_21D563720(v162);
              v164 = v288;
              v165 = v240;
              v166 = v250;
              v167 = swift_isUniquelyReferenced_nonNull_native();
              *&v288 = v166;
              sub_21D479824(v164, v165, v167);

              v250 = v288;
              v168 = *(v163 + 2);
              v169 = v168 != 0;
              v20 = v265;
              v170 = v251;
              if ((v261 | v267))
              {
                a1 = v249;
              }

              else
              {
                LODWORD(v253) = v168 != 0;
                v171 = (v163 + 32);
                v273 = v260;
                v172 = -v168;
                v27 = -1;
                do
                {
                  v261 = v172 + v27 != -1;
                  if (v172 + v27 == -1)
                  {
                    break;
                  }

                  if (++v27 >= *(v247 + 2))
                  {
                    goto LABEL_208;
                  }

                  v173 = v171 + 2;
                  v174 = *v171;
                  v175 = [v273 objectID];
                  v176 = [v174 objectID];
                  sub_21D0D8CF0(0, &qword_280D17680);
                  v177 = sub_21DBFB63C();

                  v170 = v251;
                  v20 = v265;

                  v171 = v173;
                }

                while ((v177 & 1) == 0);
                sub_21D157864(v260, v267);
                v27 = v258;
                a1 = v249;
                v169 = v253;
              }

              v178 = v246;
              if (v100)
              {
                v179 = *(v170 + 16);
                v180 = (v170 + 248);
                while (v179)
                {
                  if ((*v180 & 1) == 0)
                  {
                    v181 = *(v180 - 24);
                    v56 = __OFADD__(v178, v181);
                    v178 += v181;
                    if (v56)
                    {
                      goto LABEL_205;
                    }
                  }

                  --v179;
                  v180 += 224;
                  if (!--v100)
                  {
                    goto LABEL_157;
                  }
                }

                goto LABEL_203;
              }

LABEL_157:
              v246 = v178;
              v252 = v169 | v252;
              sub_21D1013F0(v27, type metadata accessor for TTRAccountsListsViewModel.Item);

              sub_21D9F2BC4(&v280);
              sub_21D157864(v277, v263);

              v273 = sub_21D9F2F78;
              v29 = v272;
              goto LABEL_55;
            }

            v141 = *(v243 + 80);
            v239 = v139;
            v142 = v139 + ((v141 + 32) & ~v141);
            v273 = *(v243 + 72);
            v253 = MEMORY[0x277D84F90];
            while (2)
            {
              sub_21D0FE6CC(v142, v72, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
              v143 = v256;
              sub_21D0FE6CC(v72, v256, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              if (EnumCaseMultiPayload != 1)
              {
                sub_21D1013F0(v72, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
                sub_21D1013F0(v143, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
                goto LABEL_108;
              }

              v145 = v143[11];
              v298 = v143[10];
              v299 = v145;
              v300[0] = v143[12];
              *(v300 + 10) = *(v143 + 202);
              v146 = v143[7];
              v294 = v143[6];
              v295 = v146;
              v147 = v143[9];
              v296 = v143[8];
              v297 = v147;
              v148 = v143[3];
              v290 = v143[2];
              v291 = v148;
              v149 = v143[5];
              v292 = v143[4];
              v293 = v149;
              v150 = v143[1];
              v288 = *v143;
              v289 = v150;
              v151 = v288;
              v152 = BYTE2(v297);
              if (BYTE2(v297) != 2 && (BYTE2(v297) & 1) != 0)
              {
                v286 = *(a2 + v255);
                MEMORY[0x28223BE20](EnumCaseMultiPayload);
                *(&v239 - 2) = v151;
                sub_21DBF8E0C();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90);
                sub_21D9F2B60();
                v153 = v270;
                sub_21DBFA48C();
                v270 = v153;

                if (v285 == 255)
                {
                  goto LABEL_122;
                }

                v155 = v284;
                if (v285)
                {
                  sub_21D157864(v284, v285);
                  goto LABEL_122;
                }

                v72 = v271;
LABEL_132:
                sub_21D1013F0(v72, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
                sub_21D1077D8(&v288);
                v157 = 0;
                v27 = v258;
LABEL_133:
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v158 = v253;
                }

                else
                {
                  v158 = sub_21D2146A4(0, *(v253 + 2) + 1, 1, v253);
                }

                v160 = *(v158 + 2);
                v159 = *(v158 + 3);
                if (v160 >= v159 >> 1)
                {
                  v158 = sub_21D2146A4((v159 > 1), v160 + 1, 1, v158);
                }

                *(v158 + 2) = v160 + 1;
                v253 = v158;
                v161 = &v158[16 * v160];
                *(v161 + 4) = v155;
                v161[40] = v157;
                a2 = v266;
LABEL_138:
                v72 = v271;
LABEL_108:
                v142 += v273;
                if (!--v140)
                {

                  v162 = v253;
                  goto LABEL_142;
                }

                continue;
              }

              break;
            }

            sub_21DA1CE20(v288, &v284);
            v155 = v284;
            if (v285 == 1)
            {
              goto LABEL_132;
            }

            if (v285 != 255)
            {
              if (v285 == 4)
              {
                goto LABEL_132;
              }

              sub_21D103A34(v284, v285);
            }

            if (v152 == 2 || (v152 & 1) == 0)
            {
              sub_21DA1CE20(v151, &v284);
              sub_21D1013F0(v72, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
              if (v285 == 255)
              {
                sub_21D1077D8(&v288);
                v27 = v258;
                goto LABEL_108;
              }

              v155 = v284;
              v27 = v258;
              if (v285 != 2)
              {
                sub_21D103A34(v284, v285);
                sub_21D1077D8(&v288);
                goto LABEL_108;
              }
            }

            else
            {
LABEL_122:
              v286 = *(v266 + v255);
              MEMORY[0x28223BE20](v154);
              *(&v239 - 2) = v151;
              sub_21DBF8E0C();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90);
              sub_21D9F2B60();
              v156 = v270;
              sub_21DBFA48C();
              v270 = v156;
              sub_21D1013F0(v271, type metadata accessor for TTRAccountsListsViewModel.PinnedList);

              if (v285 == 255)
              {
                sub_21D1077D8(&v288);
                a2 = v266;
                v27 = v258;
                goto LABEL_138;
              }

              v155 = v284;
              a2 = v266;
              v27 = v258;
              if ((v285 & 1) == 0)
              {
                sub_21D157864(v284, v285);
                sub_21D1077D8(&v288);
                goto LABEL_138;
              }
            }

            sub_21D1077D8(&v288);
            v157 = 1;
            goto LABEL_133;
          }
        }

        sub_21D157864(v286, v287);
LABEL_74:
        a2 = v266;
        goto LABEL_81;
      case 0xFu:
      case 0x10u:
        sub_21D1013F0(v27, type metadata accessor for TTRAccountsListsViewModel.Item);

        sub_21D157864(v277, v263);
        goto LABEL_36;
      default:
        sub_21D1013F0(v27, type metadata accessor for TTRAccountsListsViewModel.Item);

        sub_21D157864(v277, v263);
        v127 = sub_21DBF56BC();
        (*(*(v127 - 8) + 8))(v269, v127);
LABEL_36:
        v273 = sub_21D9F2F78;
        goto LABEL_54;
    }
  }
}

void TTRAccountsListsInteractorDeleteArguments.init(pinnedLists:viewModel:currentList:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v49 = a2;
  v50 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46[-v7];
  v9 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v9);
  v54 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = *a3;
  v47 = *(a3 + 8);
  v53 = *(a1 + 16);
  if (v53)
  {
    v12 = 0;
    v13 = (a1 + 32);
    v14 = MEMORY[0x277D84F90];
    v51 = v10;
    v52 = a1;
    v15 = (v10 + 56);
    while (v12 < *(a1 + 16))
    {
      v16 = v13[11];
      v17 = v13[9];
      v68 = v13[10];
      v69 = v16;
      v18 = v13[11];
      v70[0] = v13[12];
      *(v70 + 10) = *(v13 + 202);
      v19 = v13[7];
      v20 = v13[5];
      v64 = v13[6];
      v65 = v19;
      v21 = v13[7];
      v22 = v13[9];
      v66 = v13[8];
      v67 = v22;
      v23 = v13[3];
      v24 = v13[1];
      v60 = v13[2];
      v61 = v23;
      v25 = v13[3];
      v26 = v13[5];
      v62 = v13[4];
      v63 = v26;
      v27 = v13[1];
      v58 = *v13;
      v59 = v27;
      v81 = v68;
      v82 = v18;
      v83[0] = v13[12];
      *(v83 + 10) = *(v13 + 202);
      v77 = v64;
      v78 = v21;
      v79 = v66;
      v80 = v17;
      v73 = v60;
      v74 = v25;
      v75 = v62;
      v76 = v20;
      v71 = v58;
      v72 = v24;
      v28 = sub_21D1577AC(&v71);
      v29 = sub_21D14D0D4(&v71);
      if (v28 == 1)
      {
        v30 = v29[1];
        *v8 = *v29;
        v8[1] = v30;
        v31 = v29[5];
        v33 = v29[2];
        v32 = v29[3];
        v8[4] = v29[4];
        v8[5] = v31;
        v8[2] = v33;
        v8[3] = v32;
        v34 = v29[9];
        v36 = v29[6];
        v35 = v29[7];
        v8[8] = v29[8];
        v8[9] = v34;
        v8[6] = v36;
        v8[7] = v35;
        v37 = *(v29 + 202);
        v38 = v29[12];
        v39 = v29[10];
        v8[11] = v29[11];
        v8[12] = v38;
        v8[10] = v39;
        *(v8 + 202) = v37;
        swift_storeEnumTagMultiPayload();
        (*v15)(v8, 0, 1, v9);
        sub_21D9F2C18(v8, v54);
        v56[10] = v68;
        v56[11] = v69;
        v57[0] = v70[0];
        *(v57 + 10) = *(v70 + 10);
        v56[6] = v64;
        v56[7] = v65;
        v56[8] = v66;
        v56[9] = v67;
        v56[2] = v60;
        v56[3] = v61;
        v56[4] = v62;
        v56[5] = v63;
        v56[0] = v58;
        v56[1] = v59;
        v40 = sub_21D14D0D4(v56);
        sub_21D567868(v40, &v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_21D103C5C(0, v14[2] + 1, 1, v14);
        }

        v42 = v14[2];
        v41 = v14[3];
        if (v42 >= v41 >> 1)
        {
          v14 = sub_21D103C5C(v41 > 1, v42 + 1, 1, v14);
        }

        v14[2] = v42 + 1;
        sub_21D9F2C18(v54, v14 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v42);
        a1 = v52;
      }

      else
      {
        (*v15)(v8, 1, 1, v9);
        sub_21D0CF7E0(v8, &qword_27CE5A490);
      }

      ++v12;
      v13 += 14;
      if (v53 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_13:

    *&v58 = v48;
    BYTE8(v58) = v47;
    TTRAccountsListsInteractorDeleteArguments.init(items:viewModel:currentList:)(v14, v49, &v58, &v71);
    v43 = v72;
    v44 = v73;
    v45 = v50;
    *v50 = v71;
    v45[1] = v43;
    v45[2] = v44;
  }
}

uint64_t TTRAccountsListsInteractorDeleteArguments.listsToDelete(forAccountID:)(uint64_t a1)
{
  if (*(*(v1 + 32) + 16) && (sub_21D17E07C(a1), (v2 & 1) != 0))
  {
    return sub_21DBF8E0C();
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t TTRAccountsListsInteractorDeleteArguments.sublistsToDelete(forGroupID:)(uint64_t a1)
{
  if (*(*(v1 + 40) + 16) && (sub_21D17E07C(a1), (v2 & 1) != 0))
  {
    return sub_21DBF8E0C();
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

void TTRAccountsListsInteractorDeleteArguments.description.getter()
{
  v1 = v0[1];
  v25[0] = *v0;
  v25[1] = v1;
  v26 = v0[2];
  v2 = *&v25[0];
  if (*&v25[0] >> 62)
  {
    v22 = sub_21DBFBD7C();
    v2 = *&v25[0];
    v3 = v22;
    if (!v22)
    {
      return;
    }
  }

  else
  {
    v3 = *((*&v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = v26;
    v23 = v2 & 0xC000000000000001;
    v24 = v2;
    do
    {
      if (v23)
      {
        v16 = MEMORY[0x223D44740](v4);
      }

      else
      {
        v16 = *(v2 + 8 * v4 + 32);
      }

      v17 = v16;
      v18 = [v16 objectID];
      v19 = v18;
      if (*(v5 + 16) && (v20 = sub_21D17E07C(v18), (v21 & 1) != 0))
      {
        v6 = *(*(v5 + 56) + 8 * v20);
        sub_21DBF8E0C();
      }

      else
      {
        v6 = MEMORY[0x277D84F90];
      }

      ++v4;

      sub_21D9F2594(v6, v25);
      v8 = v7;
      v10 = v9;

      sub_21DBFBEEC();

      v11 = [v17 objectID];
      v12 = [v11 description];
      v13 = sub_21DBFA16C();
      v15 = v14;

      MEMORY[0x223D42AA0](v13, v15);

      MEMORY[0x223D42AA0](8236, 0xE200000000000000);
      MEMORY[0x223D42AA0](v8, v10);

      MEMORY[0x223D42AA0](8236, 0xE200000000000000);
      MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC733F0);

      v2 = v24;
    }

    while (v3 != v4);
  }
}

void sub_21D9F2594(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
LABEL_17:
    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    return;
  }

  v3 = a2;
  v4 = 0;
  v5 = a1 + 32;
  v37 = a1 + 32;
  v38 = *(a1 + 16);
  while (1)
  {
    v14 = v5 + 16 * v4;
    v15 = *v14;
    if (*(v14 + 8))
    {
      v6 = *v14;
      v7 = v15;
      sub_21DBFBEEC();

      v42 = 0xD00000000000001ALL;
      v43 = 0x800000021DC73410;
      v8 = [v7 objectID];
      v9 = [v8 description];
      goto LABEL_4;
    }

    v16 = *(v3 + 40);
    v17 = v15;
    v18 = [v17 objectID];
    v19 = v18;
    if (*(v16 + 16))
    {
      v20 = sub_21D17E07C(v18);
      if (v21)
      {
        break;
      }
    }

    v6 = v15;

LABEL_15:
    sub_21DBFBEEC();

    v42 = 0x6A626F2E7473696CLL;
    v43 = 0xEF203A4449746365;
    v8 = [v17 objectID];
    v9 = [v8 description];
LABEL_4:
    v10 = v9;
    v11 = sub_21DBFA16C();
    v13 = v12;

    MEMORY[0x223D42AA0](v11, v13);

    MEMORY[0x223D42AA0](8236, 0xE200000000000000);
    MEMORY[0x223D42AA0](v42, v43);
LABEL_5:
    ++v4;

    if (v4 == v2)
    {
      goto LABEL_17;
    }
  }

  v41 = v17;
  v22 = *(*(v16 + 56) + 8 * v20);
  sub_21DBF8E0C();

  v23 = *(v22 + 16);
  if (!v23)
  {
    v6 = v15;

    v17 = v41;
    goto LABEL_15;
  }

  v40 = v15;
  v24 = 0;
  v25 = 32;
  while (v24 < *(v22 + 16))
  {
    ++v24;
    v26 = *(v22 + v25);
    v27 = [v26 objectID];
    v28 = [v27 description];
    v29 = sub_21DBFA16C();
    v31 = v30;

    MEMORY[0x223D42AA0](v29, v31);

    MEMORY[0x223D42AA0](8236, 0xE200000000000000);
    MEMORY[0x223D42AA0](0, 0xE000000000000000);

    v25 += 16;
    if (v23 == v24)
    {

      sub_21DBFBEEC();

      v32 = [v41 objectID];
      v33 = [v32 description];
      v34 = sub_21DBFA16C();
      v36 = v35;

      MEMORY[0x223D42AA0](v34, v36);

      MEMORY[0x223D42AA0](0x73696C627573202CLL, 0xEC000000203A7374);
      MEMORY[0x223D42AA0](0, 0xE000000000000000);

      MEMORY[0x223D42AA0](0xD000000000000010, 0x800000021DC73430);
      v2 = v38;
      v3 = a2;
      v5 = v37;
      v6 = v40;
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_21D9F2A18()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = *(v0 + 32);
  v5[2] = &v6;
  return sub_21D3233D4(sub_21D9F2F38, v5, v6) & 1;
}

uint64_t sub_21D9F2ACC(uint64_t a1)
{
  if (*(*(v1 + 32) + 16) && (sub_21D17E07C(a1), (v2 & 1) != 0))
  {
    return sub_21DBF8E0C();
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_21D9F2B14(uint64_t a1)
{
  if (*(*(v1 + 40) + 16) && (sub_21D17E07C(a1), (v2 & 1) != 0))
  {
    return sub_21DBF8E0C();
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

unint64_t sub_21D9F2B60()
{
  result = qword_280D0C3F0;
  if (!qword_280D0C3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE61C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0C3F0);
  }

  return result;
}

uint64_t sub_21D9F2C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D9F2C7C(uint64_t a1)
{
  result = sub_21D9F2CA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21D9F2CA4()
{
  result = qword_27CE649F0;
  if (!qword_27CE649F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE649F0);
  }

  return result;
}

uint64_t destroy for TTRAccountsListsInteractorDeleteArguments()
{
}

uint64_t initializeWithCopy for TTRAccountsListsInteractorDeleteArguments(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsInteractorDeleteArguments(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRAccountsListsInteractorDeleteArguments(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t sub_21D9F2F38(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = v2[1];
  v7[0] = *v2;
  v7[1] = v4;
  v7[2] = v2[2];
  sub_21D9EFA30(v3, v7);
  return v5 & 1;
}

Swift::Void __swiftcall TTRWidgetCenter.reloadAllTimelines()()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_21DBFA16C();
  v4 = v3;

  if (v2 == 0xD000000000000011 && 0x800000021DC4A6B0 == v4)
  {
  }

  else
  {
    v6 = sub_21DBFC64C();

    if ((v6 & 1) == 0)
    {
      if (qword_280D0F1A8 != -1)
      {
        swift_once();
      }

      v7 = sub_21DBF84BC();
      __swift_project_value_buffer(v7, qword_280D0F1B0);
      v8 = sub_21DBF84AC();
      v9 = sub_21DBFAEDC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_21D0C9000, v8, v9, "TTRWidgetCenter will reload all timelines", v10, 2u);
        MEMORY[0x223D46520](v10, -1, -1);
      }

      sub_21DBF9DFC();
      return;
    }
  }

  if (qword_280D0F1A8 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_280D0F1B0);
  v12 = sub_21DBF84AC();
  v13 = sub_21DBFAEDC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21D0C9000, v12, v13, "TTRWidgetCenter will refresh widgets", v14, 2u);
    MEMORY[0x223D46520](v14, -1, -1);
  }

  sub_21DBF615C();
  MEMORY[0x223D3E900]();
}

uint64_t sub_21D9F31D8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F1B0);
  v1 = __swift_project_value_buffer(v0, qword_280D0F1B0);
  if (qword_280D0C8A0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRWidgetCenter.__allocating_init(widgetCenter:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TTRWidgetCenter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AttributedString.ttr_stringValue.getter()
{
  v0 = sub_21DBF50EC();
  MEMORY[0x28223BE20](v0);
  sub_21DBF50DC();
  sub_21D9F33F4();
  return sub_21DBFA3DC();
}

unint64_t sub_21D9F33F4()
{
  result = qword_27CE649F8;
  if (!qword_27CE649F8)
  {
    sub_21DBF50EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE649F8);
  }

  return result;
}

uint64_t UIScrollView.bottomContentInset(forAvoiding:of:)(uint64_t a1)
{
  [v1 convertRect:a1 fromView:?];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v1 coordinateSpace];
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v1 safeAreaInsets];
  v20 = v18 - v19;
  [objc_msgSend(v1 coordinateSpace)];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  swift_unknownObjectRelease();
  v34.origin.x = v22;
  v34.origin.y = v24;
  v34.size.width = v26;
  v34.size.height = v28;
  v38.origin.x = v12;
  v38.origin.y = v14;
  v38.size.width = v16;
  v38.size.height = v20;
  v35 = CGRectIntersection(v34, v38);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  if (!CGRectIsEmpty(v35))
  {
    v36.origin.x = v12;
    v36.origin.y = v14;
    v36.size.width = v16;
    v36.size.height = v20;
    CGRectGetMaxY(v36);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    CGRectGetMinY(v37);
  }

  return swift_unknownObjectRelease();
}

uint64_t UIScrollView.iterativelyScrollRectToFullyVisible(with:)(uint64_t (*a1)(void *))
{
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  height = 0.0;
  width = 0.0;
  y = 0.0;
  x = 0.0;
  while (1)
  {
    v10 = x;
    v11 = y;
    v12 = width;
    v13 = height;
    v14 = a1(v2);
    sub_21D9F3A04(v14, &v33);

    if ((v34 & 1) != 0 || (x = v33.origin.x, y = v33.origin.y, width = v33.size.width, height = v33.size.height, v35.origin.x = v10, v35.origin.y = v11, v35.size.width = v12, v35.size.height = v13, CGRectEqualToRect(v33, v35)))
    {
      v25 = v5;
LABEL_12:
      sub_21D0D0E88(v25);
      return sub_21D0D0E88(v4);
    }

    [v2 scrollRectToVisible:0 animated:{x, y, width, height}];
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    v17 = v2;
    sub_21D0D0E88(v5);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_21D9F40C4;
    *(v18 + 24) = v16;
    v31 = sub_21D0E6070;
    v32 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_21D0E6204;
    v30 = &block_descriptor_130;
    v19 = _Block_copy(&aBlock);

    [v15 performWithoutAnimation_];
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      break;
    }

    if (!v3)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        [v17 scrollRectToVisible:0 animated:{x, y, width, height}];
        v21 = swift_allocObject();
        *(v21 + 16) = v17;
        v22 = v17;
        sub_21D0D0E88(v4);
        v23 = swift_allocObject();
        v4 = sub_21D9F3B84;
        *(v23 + 16) = sub_21D9F3B84;
        *(v23 + 24) = v21;
        v31 = sub_21D0E622C;
        v32 = v23;
        aBlock = MEMORY[0x277D85DD0];
        v28 = 1107296256;
        v29 = sub_21D0E6204;
        v30 = &block_descriptor_13_7;
        v24 = _Block_copy(&aBlock);

        [v15 performWithoutAnimation_];
        _Block_release(v24);
        LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

        if (v24)
        {
          goto LABEL_14;
        }
      }
    }

    --v3;
    v5 = sub_21D9F40C4;
    if (v3 == -10)
    {
      v25 = sub_21D9F40C4;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_21D9F3A04@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = result;
  v6 = *(result + 16);
  v7 = (result + 56);
  v8 = v6 + 1;
  while (--v8)
  {
    v9 = v7 + 4;
    v11 = *(v7 - 1);
    v10 = *v7;
    v32 = *(v7 - 3);
    [v3 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [v3 adjustedContentInset];
    v24 = UIEdgeInsetsInsetRect_0(v13, v15, v17, v19, v20, v21, v22, v23);
    v26 = v25;
    v33.origin.x = 0.0;
    v33.origin.y = 0.0;
    v33.size.width = v11;
    v33.size.height = v10;
    v35 = CGRectInset(v33, 0.1, 0.1);
    v34.origin.x = 0.0;
    v34.origin.y = 0.0;
    v34.size.width = v24;
    v34.size.height = v26;
    result = CGRectContainsRect(v34, v35);
    v7 = v9;
    if (result)
    {
      v27 = 0;
      v28 = v11;
      v29 = v10;
      v30 = v32;
      goto LABEL_8;
    }
  }

  if (v6)
  {
    v27 = 0;
    v31 = (v4 + 32 * v6);
    v30 = *v31;
    v28 = v31[2];
    v29 = v31[3];
  }

  else
  {
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0uLL;
    v27 = 1;
  }

LABEL_8:
  *a2 = v30;
  *(a2 + 16) = v28;
  *(a2 + 24) = v29;
  *(a2 + 32) = v27;
  return result;
}

Swift::Void __swiftcall UIScrollView.scrollRectToFullyVisibleAnimated(_:)(Swift::OpaquePointer a1)
{
  sub_21D9F3A04(a1._rawValue, v6);
  if ((v7 & 1) == 0)
  {
    v2 = *&v6[2];
    v3 = *&v6[3];
    v4 = *v6;
    v5 = *&v6[1];

    [v1 scrollRectToVisible:1 animated:{v4, v5, v2, v3}];
  }
}

Swift::Bool __swiftcall UIScrollView.canScrollRectToFullVisible(_:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  [v1 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v1 adjustedContentInset];
  v16 = UIEdgeInsetsInsetRect_0(v5, v7, v9, v11, v12, v13, v14, v15);
  v18 = v17;
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = width;
  v20.size.height = height;
  v22 = CGRectInset(v20, 0.1, 0.1);
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v16;
  v21.size.height = v18;
  return CGRectContainsRect(v21, v22);
}

double UIScrollView.bottomContentInset(forAvoidingKeyboardWith:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = [v1 window];
  v9 = 0.0;
  if (v8)
  {
    v10 = v8;
    sub_21D1B2ABC();
    v11 = [v10 screen];
    v12 = sub_21DBFB63C();

    if (v12)
    {
      v13 = [v3 coordinateSpace];
      [v2 bounds];
      v15 = v14;
      v38 = v16;
      v18 = v17;
      v20 = v19;
      [v2 safeAreaInsets];
      v22 = v20 - v21;
      [objc_msgSend(v2 coordinateSpace)];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      swift_unknownObjectRelease();
      v39.origin.x = v24;
      v39.origin.y = v26;
      v39.size.width = v28;
      v39.size.height = v30;
      v43.origin.x = v15;
      v43.origin.y = v38;
      v43.size.width = v18;
      v43.size.height = v22;
      v40 = CGRectIntersection(v39, v43);
      x = v40.origin.x;
      y = v40.origin.y;
      width = v40.size.width;
      height = v40.size.height;
      if (!CGRectIsEmpty(v40))
      {
        v41.size.width = v18;
        v41.origin.x = v15;
        v41.origin.y = v38;
        v41.size.height = v22;
        MaxY = CGRectGetMaxY(v41);
        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = height;
        MinY = CGRectGetMinY(v42);
        swift_unknownObjectRelease();

        return MaxY - MinY;
      }

      swift_unknownObjectRelease();
    }
  }

  return v9;
}

double UIScrollView.bottomInsetRelativeToBounds(forAvoidingKeyboardWith:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = [v1 window];
  v9 = 0.0;
  if (v8)
  {
    v10 = v8;
    sub_21D1B2ABC();
    v11 = [v10 screen];
    v12 = sub_21DBFB63C();

    if (v12)
    {
      v13 = [v3 coordinateSpace];
      [v2 bounds];
      v15 = v14;
      v17 = v16;
      v36 = v18;
      v20 = v19;
      [objc_msgSend(v2 coordinateSpace)];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      swift_unknownObjectRelease();
      v37.origin.x = v22;
      v37.origin.y = v24;
      v37.size.width = v26;
      v37.size.height = v28;
      v41.origin.x = v15;
      v41.origin.y = v17;
      v41.size.width = v36;
      v41.size.height = v20;
      v38 = CGRectIntersection(v37, v41);
      x = v38.origin.x;
      y = v38.origin.y;
      width = v38.size.width;
      height = v38.size.height;
      if (!CGRectIsEmpty(v38))
      {
        v39.origin.x = v15;
        v39.origin.y = v17;
        v39.size.width = v36;
        v39.size.height = v20;
        MaxY = CGRectGetMaxY(v39);
        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        MinY = CGRectGetMinY(v40);
        swift_unknownObjectRelease();

        return MaxY - MinY;
      }

      swift_unknownObjectRelease();
    }
  }

  return v9;
}

void *TTRSectionLite.init(sectionID:displayName:canonicalName:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = *result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t TTRSectionLite.init(sectionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF6F4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D453E0])
  {
    (*(v5 + 8))(a1, v4);
    result = (*(v5 + 96))(v8, v4);
    v11 = *v8;
    v12 = *(v8 + 1);
    v13 = *(v8 + 2);
    v14 = *(v8 + 24);
LABEL_5:
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    return result;
  }

  if (v9 == *MEMORY[0x277D453D8])
  {
    result = (*(v5 + 8))(a1, v4);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0uLL;
    goto LABEL_5;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

id TTRSectionID.remObjectID.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRSectionID.description.getter()
{
  if (!*v0)
  {
    return 0x6C6E6F6974636573;
  }

  v1 = [*v0 description];
  v2 = sub_21DBFA16C();

  return v2;
}

uint64_t TTRSectionID.hash(into:)()
{
  if (!*v0)
  {
    return MEMORY[0x223D44FA0](1);
  }

  MEMORY[0x223D44FA0](0);
  return sub_21DBFB64C();
}

uint64_t TTRSectionID.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1)
  {
    MEMORY[0x223D44FA0](0);
    sub_21DBFB64C();
  }

  else
  {
    MEMORY[0x223D44FA0](1);
  }

  return sub_21DBFC82C();
}

uint64_t sub_21D9F43E0()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1)
  {
    MEMORY[0x223D44FA0](0);
    sub_21DBFB64C();
  }

  else
  {
    MEMORY[0x223D44FA0](1);
  }

  return sub_21DBFC82C();
}

uint64_t sub_21D9F4444()
{
  if (!*v0)
  {
    return MEMORY[0x223D44FA0](1);
  }

  MEMORY[0x223D44FA0](0);
  return sub_21DBFB64C();
}

uint64_t sub_21D9F449C()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1)
  {
    MEMORY[0x223D44FA0](0);
    sub_21DBFB64C();
  }

  else
  {
    MEMORY[0x223D44FA0](1);
  }

  return sub_21DBFC82C();
}

uint64_t sub_21D9F44FC()
{
  if (!*v0)
  {
    return 0x6C6E6F6974636573;
  }

  v1 = [*v0 description];
  v2 = sub_21DBFA16C();

  return v2;
}

id TTRSectionLite.sectionID.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t TTRSectionLite.displayName.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRSectionLite.canonicalName.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

BOOL _s15RemindersUICore12TTRSectionIDO2eeoiySbAC_ACtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_21D1B2ABC();
      v4 = v3;
      v5 = v2;
      v6 = sub_21DBFB63C();

      return v6 & 1;
    }

    return 0;
  }

  return !v3;
}

BOOL _s15RemindersUICore14TTRSectionLiteV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (*a1)
  {
    if (!v8)
    {
      return 0;
    }

    v21 = *(a2 + 32);
    v12 = *(a1 + 32);
    v13 = *(a2 + 24);
    v14 = *(a1 + 24);
    sub_21D1B2ABC();
    v15 = v8;
    v16 = v2;
    v17 = sub_21DBFB63C();

    v4 = v14;
    v9 = v13;
    v6 = v12;
    v11 = v21;
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }

    if (v3 != v7 || v5 != v10)
    {
      v18 = v4;
      v19 = sub_21DBFC64C();
      v4 = v18;
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    return v11 && (v4 == v9 && v6 == v11 || (sub_21DBFC64C() & 1) != 0);
  }

  return !v11;
}

unint64_t sub_21D9F47B4()
{
  result = qword_27CE64A00;
  if (!qword_27CE64A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64A00);
  }

  return result;
}

uint64_t static TTRLocalizableStrings.InCellQuickBar.none.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.InCellQuickBar.custom.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t sub_21D9F49A0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64A08);
  v1 = __swift_project_value_buffer(v0, qword_27CE64A08);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static TTRLocalizableStrings.InCellQuickBar.today.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.InCellQuickBar.tomorrow.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

void _s15RemindersUICore21TTRLocalizableStringsO14InCellQuickBarO9timeOfDayySSSo016REMLocalizedTimejK0VFZ_0(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      case 4:
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      case 5:
        if (qword_280D1BAA8 == -1)
        {
LABEL_19:
          sub_21DBF516C();
          return;
        }

LABEL_20:
        swift_once();
        goto LABEL_19;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      case 1:
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      case 2:
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
    }
  }

  if (qword_27CE56F48 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE64A08);
  v2 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v2);
  sub_21DAEAB00("Unknown time of day", 19, 2);
  __break(1u);
}

uint64_t TTRObservationTrackingUpdateHelper.__allocating_init(loggingPrefix:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *v4;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 16) = (*(*(v5 + 88) + 16))();
  return v4;
}

BOOL TTRObservationTrackingUpdateHelper.hasUpdates.getter()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  v0 = sub_21DBFAB4C();

  return (v0 & 1) == 0;
}

uint64_t TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a2;
  v60 = a3;
  v6 = *v3;
  v7 = *(v6 + 80);
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v50[-v10];
  v62 = *(v7 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v50[-v16];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v65 = &v50[-v18];
  swift_beginAccess();
  v19 = *(*(v6 + 88) + 8);
  sub_21DBF8E0C();
  v64 = v19;
  LOBYTE(v19) = sub_21DBFAB6C();

  if (v19)
  {
    v54 = v14;
    v21 = *(v4 + 56);
    v56 = v9;
    v57 = v8;
    v63 = a1;
    v22 = v11;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = sub_21D9F5C10(v4);
    }

    v55 = *(v62 + 16);
    v55(v17, v63, v7);
    swift_beginAccess();
    v24 = sub_21DBFABAC();

    v25 = v65;
    v58 = v24;
    v26 = sub_21DBFAB2C();
    v27 = swift_endAccess();
    *v25 = v26 & 1;
    v28 = v22;
    if ((v26 & 1) == 0)
    {
      if (qword_27CE56F50 != -1)
      {
        swift_once();
      }

      v29 = sub_21DBF84BC();
      __swift_project_value_buffer(v29, qword_27CE64A20);
      v30 = v54;
      v55(v54, v63, v7);

      v31 = sub_21DBF84AC();
      v32 = sub_21DBFAEBC();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v67[0] = v53;
        *v33 = 136315394;
        v52 = v31;
        v34 = sub_21D9F5CD0();
        v36 = sub_21D0CDFB4(v34, v35, v67);
        v51 = v32;
        v37 = v36;

        *(v33 + 4) = v37;
        *(v33 + 12) = 2080;
        v55(v17, v30, v7);
        v38 = sub_21DBFA1AC();
        v40 = v39;
        (*(v62 + 8))(v30, v7);
        v41 = sub_21D0CDFB4(v38, v40, v67);

        *(v33 + 14) = v41;
        v42 = v52;
        _os_log_impl(&dword_21D0C9000, v52, v51, "%s: unexpected nested updateIfNeeded calls with the same update flag. This will not work correctly {updateFlag: %s}", v33, 0x16u);
        v43 = v53;
        swift_arrayDestroy();
        MEMORY[0x223D46520](v43, -1, -1);
        MEMORY[0x223D46520](v33, -1, -1);
      }

      else
      {

        v27 = (*(v62 + 8))(v30, v7);
      }
    }

    v44 = v23[2];
    MEMORY[0x28223BE20](v27);
    v45 = v60;
    *&v50[-16] = v59;
    *&v50[-8] = v45;
    MEMORY[0x28223BE20](v46);
    *&v50[-16] = v4;
    *&v50[-8] = v44;
    sub_21DBF8E0C();
    sub_21DBF5D7C();

    swift_beginAccess();
    sub_21DBFAB3C();
    swift_endAccess();
    v47 = v57;
    v48 = *(v56 + 8);
    v48(v28, v57);
    sub_21DBF8E0C();
    v49 = sub_21DBFAB4C();

    if (v49)
    {
      *(v4 + 56) = 0;
    }

    swift_beginAccess();
    sub_21DBFAB3C();
    swift_endAccess();

    v48(v28, v47);
    return (*(v61 + 8))(v65, TupleTypeMetadata2);
  }

  return result;
}

uint64_t sub_21D9F584C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64A20);
  v1 = __swift_project_value_buffer(v0, qword_27CE64A20);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D9F594C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21D9F59E0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 24);
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t TTRObservationTrackingUpdateHelper.scheduleUpdate.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRObservationTrackingUpdateHelper.scheduleUpdate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_21D0D0E88(v5);
}

uint64_t *TTRObservationTrackingUpdateHelper.init(loggingPrefix:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v2 + 5) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 7) = 0u;
  v2[5] = a1;
  v2[6] = a2;
  v2[2] = (*(*(v3 + 88) + 16))();
  return v2;
}

void *sub_21D9F5C10(uint64_t a1)
{
  type metadata accessor for TTRObservationTrackingUpdateHelper.UpdateContext();
  swift_allocObject();
  v2 = sub_21D9F6588();
  *(a1 + 56) = v2;

  return v2;
}

unint64_t sub_21D9F5CD0()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    sub_21DBFBEEC();

    v2 = sub_21DBFC8EC();
    MEMORY[0x223D42AA0](v2);

    MEMORY[0x223D42AA0](62, 0xE100000000000000);
    v1 = 0xD000000000000023;
  }

  sub_21DBF8E0C();
  return v1;
}

uint64_t (*sub_21D9F5DAC(uint64_t *a1, uint64_t a2))()
{
  v3 = *a1;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = *(v3 + 80);
  v5[3] = *(v3 + 88);
  v5[4] = v4;
  v5[5] = a2;
  sub_21DBF8E0C();
  return sub_21D9F6B48;
}

uint64_t sub_21D9F5E80()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D9F5EE0();
  }

  return result;
}

uint64_t sub_21D9F5EE0()
{
  if (*(v0 + 56))
  {
    swift_beginAccess();
    v1 = qword_27CE56F50;
    sub_21DBF8E0C();
    if (v1 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_27CE64A20);
    sub_21DBF8E0C();

    sub_21DBF8E0C();
    v3 = sub_21DBF84AC();
    v4 = sub_21DBFAEBC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v5 = 136315650;
      v6 = sub_21D9F5CD0();
      v8 = sub_21D0CDFB4(v6, v7, &v18);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2080;
      sub_21DBFABAC();
      swift_getWitnessTable();
      v9 = sub_21DBFC5BC();
      v11 = sub_21D0CDFB4(v9, v10, &v18);

      *(v5 + 14) = v11;
      *(v5 + 22) = 2080;
      v12 = sub_21DBFC5BC();
      v14 = v13;

      v15 = sub_21D0CDFB4(v12, v14, &v18);

      *(v5 + 24) = v15;
      _os_log_impl(&dword_21D0C9000, v3, v4, "%s: @Observable object changed during update unexpectedly. This may result in an update loop {tryingToAdd: %s, whileUpdating: %s}", v5, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v17, -1, -1);
      MEMORY[0x223D46520](v5, -1, -1);
    }

    else
    {
    }
  }

  return TTRObservationTrackingUpdateHelper.markAsDirty(_:)();
}

Swift::Bool __swiftcall TTRObservationTrackingUpdateHelper.assertNoRemainingUpdates()()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  v0 = sub_21DBFAB4C();

  if ((v0 & 1) == 0)
  {
    if (qword_27CE56F50 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    __swift_project_value_buffer(v1, qword_27CE64A20);

    v2 = sub_21DBF84AC();
    v3 = sub_21DBFAEBC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v13 = v5;
      *v4 = 136315394;
      v6 = sub_21D9F5CD0();
      v8 = sub_21D0CDFB4(v6, v7, &v13);

      *(v4 + 4) = v8;
      *(v4 + 12) = 2080;
      sub_21DBFABAC();
      swift_getWitnessTable();
      v9 = sub_21DBFC5BC();
      v11 = sub_21D0CDFB4(v9, v10, &v13);

      *(v4 + 14) = v11;
      swift_arrayDestroy();
      MEMORY[0x223D46520](v5, -1, -1);
      MEMORY[0x223D46520](v4, -1, -1);
    }
  }

  return v0 & 1;
}

uint64_t TTRObservationTrackingUpdateHelper.markAsDirty(_:)()
{
  swift_beginAccess();
  sub_21DBFABAC();
  sub_21DBF8E0C();
  swift_getWitnessTable();
  sub_21DBFAB8C();
  swift_endAccess();
  sub_21DBF8E0C();
  v1 = sub_21DBFAB4C();

  if ((v1 & 1) == 0 && !*(v0 + 64))
  {
    result = swift_beginAccess();
    v3 = *(v0 + 24);
    if (v3)
    {

      v3(v4);
      return sub_21D0D0E88(v3);
    }
  }

  return result;
}

uint64_t (*TTRObservationTrackingUpdateHelper.withUpdateSchedulingDisabled<A>(_:)(uint64_t (*result)(void)))(void)
{
  v2 = *(v1 + 64);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 64) = v4;
    result = result();
    v5 = *(v1 + 64);
    v3 = __OFSUB__(v5, 1);
    v6 = v5 - 1;
    if (!v3)
    {
      *(v1 + 64) = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *sub_21D9F6588()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_21DBFA68C();
  if (sub_21DBFA6DC())
  {
    v4 = sub_21D495A08(v3, v2, *(*(v1 + 88) + 8));
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  v0[2] = v4;
  return v0;
}

uint64_t TTRObservationTrackingUpdateHelper.deinit()
{

  sub_21D0D0E88(*(v0 + 24));

  return v0;
}

uint64_t TTRObservationTrackingUpdateHelper.__deallocating_deinit()
{
  TTRObservationTrackingUpdateHelper.deinit();

  return swift_deallocClassInstance();
}

uint64_t TTRObservationTrackingUpdateHelper.description.getter()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  sub_21DBF8E0C();
  LOBYTE(v2) = sub_21DBFAB4C();

  if (v2)
  {
    v5 = 0xE700000000000000;
    v6 = 0x297974706D6528;
  }

  else
  {
    v7 = *(v4 + 16);
    sub_21DBF8E0C();
    v7(v3, v4);
    v8 = sub_21DBFAADC();

    if (v8)
    {
      v5 = 0xEC00000029676E69;
      v6 = 0x6874797265766528;
    }

    else
    {
      sub_21DBFABAC();
      swift_getWitnessTable();
      sub_21DBFC5FC();
      v6 = 0;
      v5 = 0xE000000000000000;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D20;
  *(v9 + 32) = sub_21D9F5CD0();
  *(v9 + 40) = v10;
  sub_21DBFBEEC();

  MEMORY[0x223D42AA0](v6, v5);

  *(v9 + 48) = 0xD000000000000011;
  *(v9 + 56) = 0x800000021DC73760;
  if (v1[7])
  {
    swift_beginAccess();
    sub_21DBF8E0C();
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD000000000000018, 0x800000021DC73780);
    sub_21DBFABAC();
    swift_getWitnessTable();
    sub_21DBFC5FC();

    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_21D210A84((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 16) = v12 + 1;
    v13 = v9 + 16 * v12;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v14 = sub_21DBFA07C();
  v16 = v15;

  MEMORY[0x223D42AA0](v14, v16);

  MEMORY[0x223D42AA0](62, 0xE100000000000000);
  return 60;
}

uint64_t TTRReminderCellHashtagTextUpdate.HashtagAndRange.init(hashtag:range:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

RemindersUICore::TTRReminderCellHashtagTextUpdate __swiftcall TTRReminderCellHashtagTextUpdate.init(hashtagsToAdd:expectedCurrentText:)(Swift::OpaquePointer hashtagsToAdd, Swift::String expectedCurrentText)
{
  *v2 = hashtagsToAdd;
  *(v2 + 8) = expectedCurrentText;
  result.expectedCurrentText = expectedCurrentText;
  result.hashtagsToAdd = hashtagsToAdd;
  return result;
}

uint64_t TTRReminderCellTextHighlights.init(expectedCurrentText:highlights:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void __swiftcall TTRReminderTextChangeDetail.init(originalText:originalRangeReplaced:replacementText:)(RemindersUICore::TTRReminderTextChangeDetail *__return_ptr retstr, NSAttributedString originalText, __C::_NSRange originalRangeReplaced, Swift::String_optional replacementText)
{
  retstr->originalText = originalText;
  retstr->originalRangeReplaced = originalRangeReplaced;
  retstr->replacementText = replacementText;
}

RemindersUICore::TTRReminderCellStyleAttributeUpdate __swiftcall TTRReminderCellStyleAttributeUpdate.init(rangeToChange:attributes:)(__C::_NSRange rangeToChange, Swift::OpaquePointer attributes)
{
  *v2 = rangeToChange;
  *(v2 + 16) = attributes;
  result.rangeToChange = rangeToChange;
  result.attributes = attributes;
  return result;
}

RemindersUICore::TTRReminderCellTextReplacement __swiftcall TTRReminderCellTextReplacement.init(rangeToChange:replacementText:)(__C::_NSRange rangeToChange, Swift::String replacementText)
{
  *v2 = rangeToChange;
  *(v2 + 16) = replacementText;
  result.replacementText = replacementText;
  result.rangeToChange = rangeToChange;
  return result;
}

uint64_t static TTRReminderCellInlineHashtagVisibility.showAll.getter@<X0>(void *a1@<X8>)
{
  if (qword_280D0F940 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_280D0F948;

  return sub_21DBF8E0C();
}

uint64_t TTRReminderCellInlineHashtagVisibility.unhiding(objectIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (v4)
  {
    if (*(a1 + 16) <= *(v4 + 16) >> 3)
    {
      sub_21DBF8E0C();
      sub_21D9F86E8(a1);
      result = v4;
    }

    else
    {
      sub_21DBF8E0C();
      result = sub_21D9F8D40(a1, v4);
    }
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

RemindersUICore::TTRReminderCellTextHighlights::Highlight __swiftcall TTRReminderCellTextHighlights.Highlight.init(range:type:)(__C::_NSRange range, RemindersUICore::TTRReminderCellTextHighlights::HighlightType type)
{
  v3 = *type;
  *v2 = range;
  *(v2 + 16) = v3;
  result.range = range;
  result.type = type;
  return result;
}

uint64_t TTRReminderCellTextReplacement.resultantRangeOfReplacementText.getter()
{
  v1 = *v0;
  MEMORY[0x223D42B30](v0[2], v0[3]);
  return v1;
}

__n128 TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange.init(paragraphStyleWithOrderInfo:range:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u8[0];
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u8[0] = v4;
  a4[1].n128_u64[1] = a2;
  a4[2].n128_u64[0] = a3;
  return result;
}

Swift::Void __swiftcall NSMutableAttributedString.addParagraphStyles(_:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    [v1 beginEditing];
    sub_21D9F82C4(v1, a1._rawValue);

    [v1 endEditing];
  }
}

Swift::Void __swiftcall NSMutableAttributedString.addHashtags(_:removingUncommittedAttributes:)(Swift::OpaquePointer _, Swift::Bool removingUncommittedAttributes)
{
  if (*(_._rawValue + 2))
  {
    [v2 beginEditing];
    sub_21D9F80F0(v2, _._rawValue, removingUncommittedAttributes);

    [v2 endEditing];
  }
}

uint64_t static TTRReminderCellInlineHashtagVisibility.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_21DBF8E0C();
      v3 = sub_21DBF8E0C();
      v4 = sub_21D3220EC(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t TTRReminderCellTextHighlights.rebased(forCurrentText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A38);
  MEMORY[0x28223BE20](v7);
  v9 = v60 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A40);
  v10 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = v60 - v11;
  v12 = v3[2];
  if (!*(v12 + 16) || (v14 = *v3, v13 = v3[1], v14 == a1) && v13 == a2 || (sub_21DBFC64C() & 1) != 0)
  {
    *a3 = a1;
    a3[1] = a2;
    a3[2] = v12;
    sub_21DBF8E0C();
    return sub_21DBF8E0C();
  }

  v61 = a3;
  v68[0] = a1;
  v68[1] = a2;
  v68[5] = v14;
  v68[6] = v13;
  sub_21D9FD848();
  sub_21DBF8E0C();
  v60[1] = v13;
  sub_21DBF8E0C();
  sub_21DBFA06C();
  v16 = *(v12 + 16);
  v62 = v10;
  v63 = a1;
  if (v16)
  {
    v17 = sub_21D9D63C8(v16, 0);
    v18 = sub_21D9D4E8C(v68, (v17 + 4), v16, v12);
    v64 = v68[4];
    v65 = v68[3];
    sub_21DBF8E0C();
    result = sub_21D0CFAF8();
    if (v18 != v16)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v19 = v67;
  v20 = sub_21D7F5CEC(v17);

  (*(v62 + 16))(v9, v66, v19);
  v21 = *(v7 + 36);
  sub_21D0D0F1C(&qword_280D0C160, &qword_27CE64A40);
  sub_21DBFAC3C();
  sub_21DBFACAC();
  if (*&v9[v21] == v68[0])
  {
    v22 = v20;
LABEL_52:
    sub_21D0CF7E0(v9, &qword_27CE64A38);
    v45 = a2;
    v46 = sub_21DBFA12C();
    v47 = *(v22 + 16);
    if (v47)
    {
      sub_21DBF8E0C();
      v48 = 0;
      v49 = 0;
      v50 = v22;
      do
      {
        v52 = v22 + v48;
        if (*(v22 + v48 + 48) != 2)
        {
          v54 = *(v52 + 32);
          v53 = *(v52 + 40);
          if ([v46 rangeOfComposedCharacterSequencesForRange_] != v54 || v55 != v53)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_21D256B64(v50);
              v50 = result;
            }

            if (v49 >= *(v50 + 16))
            {
              __break(1u);
              goto LABEL_68;
            }

            v51 = v50 + v48;
            *(v51 + 32) = 0;
            *(v51 + 40) = 0;
            *(v51 + 48) = 2;
          }
        }

        ++v49;
        v48 += 24;
      }

      while (v47 != v49);
    }

    else
    {
      v50 = v22;
    }

    v68[0] = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A48);
    sub_21D0D0F1C(&qword_280D0C3E0, &qword_27CE64A48);
    v57 = sub_21DBFA41C();

    v58 = sub_21D19F0A4(v57);

    (*(v62 + 8))(v66, v67);
    v59 = v61;
    *v61 = v63;
    v59[1] = v45;
    v59[2] = v58;
    return sub_21DBF8E0C();
  }

  v60[0] = a2;
LABEL_14:
  v64 = v20;
  while (1)
  {
    v23 = sub_21DBFAD3C();
    v25 = *v24;
    v26 = *(v24 + 25);
    v23(v68, 0);
    sub_21DBFACBC();
    v27 = *(v20 + 16);
    if ((v26 & 1) == 0)
    {
      break;
    }

    if (v27)
    {
      v65 = v25;
      sub_21DBF8E0C();
      v28 = 0;
      v29 = 32;
      v22 = v20;
      while (1)
      {
        v31 = (v20 + v29);
        v32 = *(v20 + v29 + 16);
        if (v32 == 2)
        {
          goto LABEL_22;
        }

        v34 = *v31;
        v33 = v31[1];
        if (v65 < *v31)
        {
          break;
        }

        if (v65 >= v33 + v34)
        {
          goto LABEL_21;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v20 = v64;
        if ((result & 1) == 0)
        {
          result = sub_21D256B64(v22);
          v22 = result;
        }

        if (v28 >= *(v22 + 16))
        {
          goto LABEL_71;
        }

        v35 = v22 + v29;
        *v35 = 0;
        *(v35 + 8) = 0;
        *(v35 + 16) = 2;
LABEL_22:
        ++v28;
        v29 += 24;
        if (v27 == v28)
        {
          goto LABEL_49;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21D256B64(v22);
        v22 = result;
      }

      if (v28 >= *(v22 + 16))
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v30 = v22 + v29;
      *v30 = v34 - 1;
      *(v30 + 8) = v33;
      *(v30 + 16) = v32 & 1;
LABEL_21:
      v20 = v64;
      goto LABEL_22;
    }

LABEL_16:
    sub_21DBFACAC();
    if (*&v9[v21] == v68[0])
    {
      v22 = v20;
      a2 = v60[0];
      goto LABEL_52;
    }
  }

  if (!v27)
  {
    goto LABEL_16;
  }

  v65 = v25;
  result = sub_21DBF8E0C();
  v36 = 0;
  v37 = 48;
  v22 = v20;
  while (1)
  {
    v39 = v20 + v37;
    v40 = *(v20 + v37);
    if (v40 == 2)
    {
      goto LABEL_36;
    }

    v41 = *(v39 - 16);
    v42 = *(v39 - 8);
    if (v41 < v65)
    {
      if (v65 < v42 + v41)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21D256B64(v22);
          v22 = result;
        }

        if (v36 >= *(v22 + 16))
        {
          goto LABEL_72;
        }

        v43 = (v22 + v37);
        *(v43 - 2) = 0;
        *(v43 - 1) = 0;
        *v43 = 2;
      }

      goto LABEL_36;
    }

    v44 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      goto LABEL_69;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21D256B64(v22);
      v22 = result;
    }

    if (v36 >= *(v22 + 16))
    {
      break;
    }

    v38 = (v22 + v37);
    *(v38 - 2) = v44;
    *(v38 - 1) = v42;
    *v38 = v40 & 1;
    v20 = v64;
LABEL_36:
    ++v36;
    v37 += 24;
    if (v27 == v36)
    {
LABEL_49:

      sub_21DBFACAC();
      v20 = v22;
      a2 = v60[0];
      if (*&v9[v21] == v68[0])
      {
        goto LABEL_52;
      }

      goto LABEL_14;
    }
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_21D9F75F0()
{
  result = sub_21DBFA12C();
  qword_280D177C0 = result;
  return result;
}

id static NSAttributedStringKey.ttr_uncommittedHashtag.getter()
{
  if (qword_280D177B8 != -1)
  {
    swift_once();
  }

  v1 = qword_280D177C0;

  return v1;
}

void static TTRReminderCellStyleAttributeUpdate.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    sub_21D37135C(a1[2], a2[2]);
  }
}

void sub_21D9F76B4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    sub_21D37135C(a1[2], a2[2]);
  }
}

unint64_t TTRReminderCellStyleAttributeUpdate.description.getter()
{
  sub_21DBFBEEC();

  v0 = sub_21DBFB9BC();
  MEMORY[0x223D42AA0](v0);

  MEMORY[0x223D42AA0](0x203A68746977202CLL, 0xE800000000000000);
  type metadata accessor for Key(0);
  sub_21D0D8CF0(0, &qword_280D17680);
  sub_21D9FE5DC(&qword_280D17790, type metadata accessor for Key);
  v1 = sub_21DBF9E7C();
  MEMORY[0x223D42AA0](v1);

  MEMORY[0x223D42AA0](125, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

uint64_t TTRReminderCellTextReplacement.rangeToChange.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t TTRReminderCellTextReplacement.replacementText.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderCellTextReplacement.replacementText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static TTRReminderCellTextReplacement.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_21DBFC64C();
  }
}

uint64_t sub_21D9F7924(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_21DBFC64C();
  }
}

uint64_t TTRReminderCellTextReplacement.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21DBFBEEC();

  v3 = sub_21DBFB9BC();
  MEMORY[0x223D42AA0](v3);

  MEMORY[0x223D42AA0](0x203A68746977202CLL, 0xE800000000000000);
  MEMORY[0x223D42AA0](v1, v2);
  MEMORY[0x223D42AA0](125, 0xE100000000000000);
  return 0x6563616C7065727BLL;
}

uint64_t TTRReminderCellTextHighlights.HighlightType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRReminderCellTextHighlights.Highlight.range.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t static TTRReminderCellTextHighlights.Highlight.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t TTRReminderCellTextHighlights.Highlight.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x223D44FA0](*v0);
  MEMORY[0x223D44FA0](v1);
  return MEMORY[0x223D44FA0](v2);
}

uint64_t TTRReminderCellTextHighlights.Highlight.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  MEMORY[0x223D44FA0](v2);
  MEMORY[0x223D44FA0](v3);
  return sub_21DBFC82C();
}

uint64_t sub_21D9F7BF0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  MEMORY[0x223D44FA0](v2);
  MEMORY[0x223D44FA0](v3);
  return sub_21DBFC82C();
}

uint64_t sub_21D9F7C5C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x223D44FA0](*v0);
  MEMORY[0x223D44FA0](v1);
  return MEMORY[0x223D44FA0](v2);
}

uint64_t sub_21D9F7CA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  MEMORY[0x223D44FA0](v2);
  MEMORY[0x223D44FA0](v3);
  return sub_21DBFC82C();
}

uint64_t sub_21D9F7D0C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t TTRReminderCellTextHighlights.expectedCurrentText.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t static TTRReminderCellTextHighlights.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  return sub_21D321F28(v2, v3);
}

uint64_t sub_21D9F7DEC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  return sub_21D321F28(v2, v3);
}

id TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange.paragraphStyleWithOrderInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_21D749C9C(v2, v3, v4);
}

id TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange.remParagraphStyle.getter()
{
  v1 = *(v0 + 16);
  if (v1 > 1)
  {
    return 0;
  }

  v2 = *v0;
  sub_21D749C9C(*v0, *(v0 + 8), v1);
  return v2;
}

uint64_t TTRReminderCellHashtagTextUpdate.expectedCurrentText.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21D9F7F20(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_21DBF8E0C();
      v3 = sub_21DBF8E0C();
      v4 = sub_21D3220EC(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t TTRReminderCellInlineHashtagVisibility.description.getter()
{
  if (*v0)
  {
    if (*(*v0 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B3E0);
      sub_21D0D0F1C(&qword_27CE5B3E8, &qword_27CE5B3E0);
      sub_21D176F0C();
      v1 = sub_21DBFA5AC();
      v3 = v2;
      sub_21DBFBEEC();

      strcpy(v6, "hideSpecific(");
      HIWORD(v6[1]) = -4864;
      MEMORY[0x223D42AA0](v1, v3);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      return v6[0];
    }

    v5 = 2003789939;
  }

  else
  {
    v5 = 1701079400;
  }

  return v5 | 0x6C6C4100000000;
}

void sub_21D9F80F0(void *a1, uint64_t a2, char a3)
{
  v6 = [a1 string];
  v7 = sub_21DBFA16C();
  v9 = v8;

  v10 = MEMORY[0x223D42B30](v7, v9);

  v11 = *(a2 + 16);
  if (!v11)
  {
    return;
  }

  v12 = (a2 + 48);
  v13 = *MEMORY[0x277D740E8];
  v14 = &selRef_setQueryFragment_;
  while (1)
  {
    v16 = *(v12 - 1);
    v17 = v16 + *v12;
    if (__OFADD__(v16, *v12))
    {
      break;
    }

    v18 = *(v12 - 2);
    if (v17 >= v10)
    {
      v19 = v10;
    }

    else
    {
      v19 = v16 + *v12;
    }

    if (v16 < 0 || v16 >= v10)
    {
      if (v16 > 0 || v17 <= 0)
      {
        goto LABEL_5;
      }

      v16 = 0;
      if (a3)
      {
LABEL_20:
        v22 = qword_280D177B8;
        swift_unknownObjectRetain();
        if (v22 != -1)
        {
          swift_once();
        }

        v14 = &selRef_setQueryFragment_;
        [a1 removeAttribute:qword_280D177C0 range:{v16, v19}];
        goto LABEL_4;
      }
    }

    else
    {
      v20 = __OFSUB__(v19, v16);
      v19 -= v16;
      if (v20)
      {
        goto LABEL_25;
      }

      if (a3)
      {
        goto LABEL_20;
      }
    }

    swift_unknownObjectRetain();
LABEL_4:
    [a1 v14[109]];
    v15 = [objc_opt_self() attributeFromHashtag_];
    [a1 rem:v15 addHashtag:v16 range:v19];
    swift_unknownObjectRelease();

    v14 = &selRef_setQueryFragment_;
LABEL_5:
    v12 += 3;
    if (!--v11)
    {
      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_21D9F82C4(void *a1, uint64_t a2)
{
  v4 = [a1 string];
  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = MEMORY[0x223D42B30](v5, v7);

  v9 = *(a2 + 16);
  if (!v9)
  {
    return;
  }

  v10 = (a2 + 64);
  v11 = &selRef_setDisplayText_;
  v23 = *MEMORY[0x277D44C88];
  while (1)
  {
    v13 = *(v10 - 1);
    v14 = v13 + *v10;
    if (__OFADD__(v13, *v10))
    {
      break;
    }

    v15 = *(v10 - 4);
    v16 = *(v10 - 3);
    v17 = *(v10 - 16);
    if (v14 >= v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = v13 + *v10;
    }

    if (v13 < 0 || v13 >= v8)
    {
      if (v13 > 0 || v14 <= 0)
      {
        goto LABEL_5;
      }

      v13 = 0;
    }

    else
    {
      v19 = __OFSUB__(v18, v13);
      v18 -= v13;
      if (v19)
      {
        goto LABEL_27;
      }
    }

    v21 = *(v10 - 4);
    v22 = *(v10 - 3);
    if (!*(v10 - 16))
    {
      sub_21D749C9C(v21, v22, 0);
      [a1 rem:objc_msgSend(v15 addParagraphNamedStyle:v11[270]) inRange:{v13, v18}];
      goto LABEL_24;
    }

    if (v17 != 1)
    {
      sub_21D749C9C(v21, v22, 2u);
      [a1 rem:v13 removeParagraphNamedStyleFromRange:v18];
LABEL_24:
      [a1 removeAttribute:v23 range:{v13, v18}];
      goto LABEL_4;
    }

    sub_21D749C9C(v21, v22, 1u);
    [a1 rem:objc_msgSend(v15 addParagraphNamedStyle:v11[270]) inRange:{v13, v18}];
    v12 = sub_21DBFABEC();
    [a1 addAttribute:v23 value:v12 range:{v13, v18}];

    v11 = &selRef_setDisplayText_;
LABEL_4:
    sub_21D228468(v15, v16, v17);
LABEL_5:
    v10 += 5;
    if (!--v9)
    {
      return;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_21D9F84C8(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_21DBFBD7C())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D17880);
    sub_21D183A0C();
    sub_21DBFAB5C();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);
    sub_21DBF8E0C();
    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_21D0CFAF8();
      return;
    }

    while (1)
    {
      v16 = sub_21D1AABD8(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_21DBFBDBC())
      {
        sub_21D0D8CF0(0, &qword_280D17880);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_21D9F86E8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_21DBF8E0C();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_21DBF8E0C();
        sub_21D1AAFC8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_21D9F8814(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    sub_21DBF8E0C();
    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_21D9FE6EC(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21D1AB104(v9, v5);
      sub_21D9FE624(v9, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21D0CF7E0(v5, &qword_27CE5A018);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_21D9F8A0C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;
    sub_21DBF8E0C();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * v10)));
        v12 = sub_21D1ABB04(v11);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_21D9F8B24(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;
    sub_21DBF8E0C();
    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_21D1ABD98(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_21D0CF7E0(v5, &qword_27CE5EA20);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21D9F8D40(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);
  v13 = sub_21DBF8E0C();
  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_21DBFC7DC();
    sub_21DBF8E0C();
    sub_21DBFA27C();
    v23 = sub_21DBFC82C();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_21DBFC64C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_21D7C0054(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_21DBFC7DC();
            sub_21DBF8E0C();
            sub_21DBFA27C();
            v41 = sub_21DBFC82C();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_21DBFC64C() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_21D9FBDE4(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x223D46520](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_21D0CFAF8();
    return v5;
  }

  result = MEMORY[0x223D46520](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_21D9F92B0(unint64_t a1, uint64_t a2)
{
  v272 = *MEMORY[0x277D85DE8];
  v251 = sub_21DBF563C();
  v266 = *(v251 - 8);
  MEMORY[0x28223BE20](v251);
  v5 = &v222 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v244 = &v222 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B38);
  MEMORY[0x28223BE20](v8);
  v226 = &v222 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v222 - v11;
  v13 = type metadata accessor for TTRRecurrenceEndModel(0);
  v263 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v230 = (&v222 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v229 = &v222 - v16;
  MEMORY[0x28223BE20](v17);
  v232 = &v222 - v18;
  MEMORY[0x28223BE20](v19);
  v252 = (&v222 - v20);
  MEMORY[0x28223BE20](v21);
  v250 = &v222 - v22;
  MEMORY[0x28223BE20](v23);
  v258 = &v222 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v25 - 8);
  v231 = &v222 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v254 = &v222 - v28;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B40);
  MEMORY[0x28223BE20](v261);
  v30 = &v222 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v222 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  MEMORY[0x28223BE20](v34 - 8);
  v225 = &v222 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v222 - v37;
  v39 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v40);
  v233 = &v222 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v222 - v43;
  MEMORY[0x28223BE20](v45);
  v264 = &v222 - v49;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v239 = v38;
  v256 = v12;
  v228 = v47;
  v257 = v46;
  v227 = v30;
  v260 = v13;
  v224 = v5;
  v51 = a1 + 56;
  v50 = *(a1 + 56);
  v52 = -1 << *(a1 + 32);
  v242 = ~v52;
  if (-v52 < 64)
  {
    v53 = ~(-1 << -v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = (v53 & v50);
  v234 = (63 - v52) >> 6;
  v241 = (v48 + 56);
  v245 = v48;
  v240 = (v48 + 48);
  v255 = a2;
  v265 = (a2 + 56);
  v55 = (v263 + 48);
  v243 = (v266 + 32);
  v249 = (v266 + 8);
  sub_21DBF8E0C();
  v253 = v8;
  v56 = v55;
  v57 = a1;
  v58 = 0;
  v223 = 0;
  v259 = v55;
  v238 = v57;
  for (i = v51; ; v51 = i)
  {
    v266 = v54;
    if (v54)
    {
      v59 = v54;
      v60 = v58;
LABEL_16:
      v64 = (v59 - 1) & v59;
      v65 = v239;
      sub_21D9FE6EC(*(v57 + 48) + *(v245 + 72) * (__clz(__rbit64(v59)) | (v60 << 6)), v239, type metadata accessor for TTRRecurrenceRuleModel);
      v66 = 0;
      v62 = v60;
    }

    else
    {
      if (v234 <= v58 + 1)
      {
        v61 = v58 + 1;
      }

      else
      {
        v61 = v234;
      }

      v62 = v61 - 1;
      v63 = v58;
      while (1)
      {
        v60 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          __break(1u);
          goto LABEL_123;
        }

        if (v60 >= v234)
        {
          break;
        }

        v59 = *(v51 + 8 * v60);
        ++v63;
        if (v59)
        {
          goto LABEL_16;
        }
      }

      v64 = 0;
      v66 = 1;
      v65 = v239;
    }

    v67 = v257;
    v236 = *v241;
    v236(v65, v66, 1, v257);
    v267 = v57;
    v268 = v51;
    v269 = v242;
    v270 = v62;
    v271 = v64;
    v235 = *v240;
    if (v235(v65, 1, v67) == 1)
    {
      sub_21D0CF7E0(v65, &qword_27CE5A018);
      sub_21D0CFAF8();
      return v255;
    }

    v246 = v64;
    v247 = v62;
    v62 = v264;
    sub_21D9FE684(v65, v264, type metadata accessor for TTRRecurrenceRuleModel);
    v58 = v255;
    sub_21DBFC7DC();
    TTRRecurrenceRuleModel.hash(into:)();
    v68 = sub_21DBFC82C();
    v69 = -1 << *(v58 + 32);
    v57 = v68 & ~v69;
    v30 = v57 >> 6;
    v60 = 1 << v57;
    if (((1 << v57) & v265[v57 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_21D9FE624(v62, type metadata accessor for TTRRecurrenceRuleModel);
    v58 = v247;
    v54 = v246;
    v57 = v238;
  }

  v262 = ~v69;
  v263 = *(v245 + 72);
  v70 = v254;
  while (1)
  {
    sub_21D9FE6EC(*(v58 + 48) + v263 * v57, v44, type metadata accessor for TTRRecurrenceRuleModel);
    v71 = *(v261 + 48);
    sub_21D3139B4(v44, v33);
    sub_21D3139B4(v62, &v33[v71]);
    v72 = v260;
    v266 = *v56;
    if ((v266)(v33, 1, v260) == 1)
    {
      v73 = (v266)(&v33[v71], 1, v72);
      v62 = v264;
      if (v73 != 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_21D3139B4(v33, v70);
      if ((v266)(&v33[v71], 1, v72) == 1)
      {
        sub_21D9FE624(v70, type metadata accessor for TTRRecurrenceEndModel);
        v56 = v259;
        v62 = v264;
LABEL_21:
        sub_21D0CF7E0(v33, &qword_27CE61B40);
        goto LABEL_22;
      }

      v83 = v70;
      v84 = v258;
      sub_21D9FE684(&v33[v71], v258, type metadata accessor for TTRRecurrenceEndModel);
      v85 = *(v253 + 48);
      v86 = v83;
      v87 = v256;
      sub_21D9FE6EC(v86, v256, type metadata accessor for TTRRecurrenceEndModel);
      v88 = v87;
      sub_21D9FE6EC(v84, v87 + v85, type metadata accessor for TTRRecurrenceEndModel);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21D9FE6EC(v87, v252, type metadata accessor for TTRRecurrenceEndModel);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v56 = v259;
        v70 = v254;
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_47;
        }

        v90 = v88;
        v91 = *v252;
        v92 = *(v90 + v85);
        sub_21D9FE624(v90, type metadata accessor for TTRRecurrenceEndModel);
        v62 = v264;
        if (v91 != v92)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v93 = v250;
        sub_21D9FE6EC(v87, v250, type metadata accessor for TTRRecurrenceEndModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v249)(v93, v251);
          v56 = v259;
          v70 = v254;
LABEL_47:
          sub_21D0CF7E0(v88, &qword_27CE61B38);
          v62 = v264;
LABEL_48:
          sub_21D9FE624(v258, type metadata accessor for TTRRecurrenceEndModel);
          sub_21D9FE624(v70, type metadata accessor for TTRRecurrenceEndModel);
          sub_21D0CF7E0(v33, &unk_27CE62610);
          v58 = v255;
          goto LABEL_22;
        }

        v94 = v244;
        v95 = v251;
        (*v243)(v244, v88 + v85, v251);
        v248 = sub_21DBF55EC();
        v96 = *v249;
        (*v249)(v94, v95);
        v96(v93, v95);
        sub_21D9FE624(v256, type metadata accessor for TTRRecurrenceEndModel);
        v56 = v259;
        v70 = v254;
        v62 = v264;
        if ((v248 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      sub_21D9FE624(v258, type metadata accessor for TTRRecurrenceEndModel);
      sub_21D9FE624(v70, type metadata accessor for TTRRecurrenceEndModel);
      v58 = v255;
    }

    sub_21D0CF7E0(v33, &unk_27CE62610);
    if (*&v44[v257[5]] != *(v62 + v257[5]) || *&v44[v257[6]] != *(v62 + v257[6]) || *&v44[v257[7]] != *(v62 + v257[7]))
    {
      goto LABEL_22;
    }

    v75 = v257[8];
    v76 = *&v44[v75];
    v77 = *(v62 + v75);
    if (!v76)
    {
      if (v77)
      {
        goto LABEL_22;
      }

      goto LABEL_52;
    }

    if (!v77)
    {
      goto LABEL_22;
    }

    v78 = v76[1].i64[0];
    if (v78 != v77[1].i64[0])
    {
      goto LABEL_22;
    }

    v79 = !v78 || v76 == v77;
    if (!v79)
    {
      break;
    }

LABEL_52:
    v97 = v257[9];
    v98 = *&v44[v97];
    v99 = *(v62 + v97);
    if (v98)
    {
      if (!v99)
      {
        goto LABEL_22;
      }

      v100 = *(v98 + 16);
      if (v100 != *(v99 + 16))
      {
        goto LABEL_22;
      }

      if (v100)
      {
        v101 = v98 == v99;
      }

      else
      {
        v101 = 1;
      }

      if (!v101)
      {
        v102 = (v98 + 32);
        v103 = (v99 + 32);
        while (v100)
        {
          if (*v102 != *v103)
          {
            goto LABEL_22;
          }

          ++v102;
          ++v103;
          if (!--v100)
          {
            goto LABEL_65;
          }
        }

        __break(1u);
        goto LABEL_250;
      }
    }

    else if (v99)
    {
      goto LABEL_22;
    }

LABEL_65:
    v104 = v257[10];
    v105 = *&v44[v104];
    v106 = *(v62 + v104);
    if (v105)
    {
      if (!v106)
      {
        goto LABEL_22;
      }

      v107 = *(v105 + 16);
      if (v107 != *(v106 + 16))
      {
        goto LABEL_22;
      }

      if (v107)
      {
        v108 = v105 == v106;
      }

      else
      {
        v108 = 1;
      }

      if (!v108)
      {
        v109 = (v105 + 32);
        v110 = (v106 + 32);
        while (v107)
        {
          if (*v109 != *v110)
          {
            goto LABEL_22;
          }

          ++v109;
          ++v110;
          if (!--v107)
          {
            goto LABEL_78;
          }
        }

LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
        goto LABEL_254;
      }
    }

    else if (v106)
    {
      goto LABEL_22;
    }

LABEL_78:
    v111 = v257[11];
    v112 = *&v44[v111];
    v113 = *(v62 + v111);
    if (v112)
    {
      if (!v113)
      {
        goto LABEL_22;
      }

      v114 = *(v112 + 16);
      if (v114 != *(v113 + 16))
      {
        goto LABEL_22;
      }

      if (v114)
      {
        v115 = v112 == v113;
      }

      else
      {
        v115 = 1;
      }

      if (!v115)
      {
        v116 = (v112 + 32);
        v117 = (v113 + 32);
        while (v114)
        {
          if (*v116 != *v117)
          {
            goto LABEL_22;
          }

          ++v116;
          ++v117;
          if (!--v114)
          {
            goto LABEL_91;
          }
        }

        goto LABEL_252;
      }
    }

    else if (v113)
    {
      goto LABEL_22;
    }

LABEL_91:
    v118 = v257[12];
    v119 = *&v44[v118];
    v120 = *(v62 + v118);
    if (v119)
    {
      if (!v120)
      {
        goto LABEL_22;
      }

      v121 = *(v119 + 16);
      if (v121 != *(v120 + 16))
      {
        goto LABEL_22;
      }

      if (v121)
      {
        v122 = v119 == v120;
      }

      else
      {
        v122 = 1;
      }

      if (!v122)
      {
        v123 = (v119 + 32);
        v124 = (v120 + 32);
        while (v121)
        {
          if (*v123 != *v124)
          {
            goto LABEL_22;
          }

          ++v123;
          ++v124;
          if (!--v121)
          {
            goto LABEL_104;
          }
        }

        goto LABEL_253;
      }
    }

    else if (v120)
    {
      goto LABEL_22;
    }

LABEL_104:
    v125 = v257[13];
    v126 = *&v44[v125];
    v127 = *(v62 + v125);
    if (v126)
    {
      if (v127)
      {
        v128 = *(v126 + 16);
        if (v128 == *(v127 + 16))
        {
          if (v128)
          {
            v129 = v126 == v127;
          }

          else
          {
            v129 = 1;
          }

          if (v129)
          {
            goto LABEL_124;
          }

          v130 = (v126 + 32);
          v131 = (v127 + 32);
          while (v128)
          {
            if (*v130 != *v131)
            {
              goto LABEL_22;
            }

            ++v130;
            ++v131;
            if (!--v128)
            {
              goto LABEL_124;
            }
          }

LABEL_254:
          __break(1u);
          goto LABEL_255;
        }
      }
    }

    else if (!v127)
    {
      goto LABEL_124;
    }

LABEL_22:
    sub_21D9FE624(v44, type metadata accessor for TTRRecurrenceRuleModel);
    v57 = (v57 + 1) & v262;
    v30 = v57 >> 6;
    v60 = 1 << v57;
    if (((1 << v57) & v265[v57 >> 6]) == 0)
    {
      goto LABEL_6;
    }
  }

  v80 = v76 + 2;
  v81 = v77 + 2;
  while (v78)
  {
    v82 = vmovn_s64(vceqq_s64(*v80, *v81));
    if ((v82.i32[0] & v82.i32[1] & 1) == 0)
    {
      goto LABEL_22;
    }

    ++v80;
    ++v81;
    if (!--v78)
    {
      goto LABEL_52;
    }
  }

LABEL_123:
  __break(1u);
LABEL_124:
  sub_21D9FE624(v44, type metadata accessor for TTRRecurrenceRuleModel);
  v134 = sub_21D9FE624(v62, type metadata accessor for TTRRecurrenceRuleModel);
  v135 = *(v58 + 32);
  v256 = ((1 << v135) + 63) >> 6;
  v74 = 8 * v256;
  if ((v135 & 0x3Fu) > 0xD)
  {
    goto LABEL_258;
  }

  while (2)
  {
    v254 = &v222;
    MEMORY[0x28223BE20](v134);
    v137 = &v222 - ((v136 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v137, v265, v136);
    v138 = *&v137[8 * v30] & ~v60;
    v262 = v137;
    *&v137[8 * v30] = v138;
    v258 = *(v58 + 16) - 1;
    v139 = v226;
    while (1)
    {
LABEL_127:
      v140 = v238;
      v57 = v225;
      v141 = i;
      v142 = v234;
      v143 = v247;
      v144 = v246;
LABEL_128:
      if (v144)
      {
        v145 = v143;
LABEL_138:
        v148 = __clz(__rbit64(v144));
        v149 = (v144 - 1) & v144;
        sub_21D9FE6EC(*(v140 + 48) + (v148 | (v145 << 6)) * v263, v57, type metadata accessor for TTRRecurrenceRuleModel);
        v150 = 0;
      }

      else
      {
        v146 = v142 <= v143 + 1 ? v143 + 1 : v142;
        v147 = v146 - 1;
        while (1)
        {
          v145 = v143 + 1;
          if (__OFADD__(v143, 1))
          {
            goto LABEL_251;
          }

          if (v145 >= v142)
          {
            break;
          }

          v144 = *(v141 + 8 * v145);
          ++v143;
          if (v144)
          {
            v143 = v145;
            goto LABEL_138;
          }
        }

        v149 = 0;
        v150 = 1;
        v143 = v147;
      }

      v151 = v257;
      v236(v57, v150, 1, v257);
      v267 = v140;
      v268 = v141;
      v269 = v242;
      v270 = v143;
      v271 = v149;
      if (v235(v57, 1, v151) == 1)
      {
        sub_21D0CF7E0(v57, &qword_27CE5A018);
        v132 = sub_21D7C0278(v262, v256, v258, v58);
        goto LABEL_248;
      }

      v246 = v149;
      v247 = v143;
      v60 = v233;
      sub_21D9FE684(v57, v233, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21DBFC7DC();
      TTRRecurrenceRuleModel.hash(into:)();
      v152 = sub_21DBFC82C();
      v153 = -1 << *(v58 + 32);
      v140 = v152 & ~v153;
      v30 = v140 >> 6;
      v154 = 1 << v140;
      if (((1 << v140) & v265[v140 >> 6]) != 0)
      {
        break;
      }

LABEL_126:
      sub_21D9FE624(v60, type metadata accessor for TTRRecurrenceRuleModel);
      v58 = v255;
    }

    v264 = ~v153;
    v57 = v231;
    v155 = v227;
    v156 = v228;
    while (2)
    {
      sub_21D9FE6EC(*(v255 + 48) + v140 * v263, v156, type metadata accessor for TTRRecurrenceRuleModel);
      v159 = *(v261 + 48);
      sub_21D3139B4(v156, v155);
      sub_21D3139B4(v60, v155 + v159);
      v160 = v260;
      v161 = v259;
      if ((v266)(v155, 1, v260) != 1)
      {
        sub_21D3139B4(v155, v57);
        if ((v266)(v155 + v159, 1, v160) == 1)
        {
          sub_21D9FE624(v57, type metadata accessor for TTRRecurrenceEndModel);
          v60 = v233;
LABEL_143:
          v157 = v155;
          v158 = &qword_27CE61B40;
LABEL_144:
          sub_21D0CF7E0(v157, v158);
          goto LABEL_145;
        }

        v171 = v155 + v159;
        v172 = v232;
        sub_21D9FE684(v171, v232, type metadata accessor for TTRRecurrenceEndModel);
        v173 = *(v253 + 48);
        v161 = v139;
        sub_21D9FE6EC(v57, v139, type metadata accessor for TTRRecurrenceEndModel);
        sub_21D9FE6EC(v172, v139 + v173, type metadata accessor for TTRRecurrenceEndModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21D9FE6EC(v139, v230, type metadata accessor for TTRRecurrenceEndModel);
          v174 = swift_getEnumCaseMultiPayload();
          v155 = v227;
          v156 = v228;
          v60 = v233;
          if (v174 == 1)
          {
            v175 = *v230;
            v176 = *(v139 + v173);
            sub_21D9FE624(v139, type metadata accessor for TTRRecurrenceEndModel);
            if (v175 == v176)
            {
              goto LABEL_173;
            }

            goto LABEL_171;
          }
        }

        else
        {
          v177 = v229;
          sub_21D9FE6EC(v139, v229, type metadata accessor for TTRRecurrenceEndModel);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v178 = v224;
            v179 = v251;
            (*v243)(v224, v139 + v173, v251);
            v180 = v177;
            v181 = sub_21DBF55EC();
            v182 = *v249;
            v183 = v178;
            v161 = v226;
            (*v249)(v183, v179);
            v182(v180, v179);
            v139 = v161;
            sub_21D9FE624(v161, type metadata accessor for TTRRecurrenceEndModel);
            v155 = v227;
            v156 = v228;
            v60 = v233;
            if (v181)
            {
LABEL_173:
              sub_21D9FE624(v232, type metadata accessor for TTRRecurrenceEndModel);
              v57 = v231;
              sub_21D9FE624(v231, type metadata accessor for TTRRecurrenceEndModel);
              goto LABEL_148;
            }

LABEL_171:
            sub_21D9FE624(v232, type metadata accessor for TTRRecurrenceEndModel);
            v57 = v231;
            sub_21D9FE624(v231, type metadata accessor for TTRRecurrenceEndModel);
            v157 = v155;
            v158 = &unk_27CE62610;
            goto LABEL_144;
          }

          (*v249)(v177, v251);
          v155 = v227;
          v156 = v228;
          v60 = v233;
        }

        sub_21D0CF7E0(v139, &qword_27CE61B38);
        goto LABEL_171;
      }

      v162 = (v266)(v155 + v159, 1, v160);
      v60 = v233;
      if (v162 != 1)
      {
        goto LABEL_143;
      }

LABEL_148:
      sub_21D0CF7E0(v155, &unk_27CE62610);
      if (*(v156 + v257[5]) != *(v60 + v257[5]) || *(v156 + v257[6]) != *(v60 + v257[6]) || *(v156 + v257[7]) != *(v60 + v257[7]))
      {
        goto LABEL_145;
      }

      v163 = v257[8];
      v164 = *(v156 + v163);
      v165 = *(v60 + v163);
      if (!v164)
      {
        if (v165)
        {
          goto LABEL_145;
        }

LABEL_175:
        v184 = v257[9];
        v185 = *(v156 + v184);
        v186 = *(v60 + v184);
        if (v185)
        {
          if (!v186)
          {
            goto LABEL_145;
          }

          v187 = *(v185 + 16);
          if (v187 != *(v186 + 16))
          {
            goto LABEL_145;
          }

          if (v187)
          {
            v188 = v185 == v186;
          }

          else
          {
            v188 = 1;
          }

          if (!v188)
          {
            v189 = (v185 + 32);
            v190 = (v186 + 32);
            while (v187)
            {
              if (*v189 != *v190)
              {
                goto LABEL_145;
              }

              ++v189;
              ++v190;
              if (!--v187)
              {
                goto LABEL_188;
              }
            }

            goto LABEL_256;
          }
        }

        else if (v186)
        {
          goto LABEL_145;
        }

LABEL_188:
        v191 = v257[10];
        v192 = *(v156 + v191);
        v193 = *(v60 + v191);
        if (v192)
        {
          if (!v193)
          {
            goto LABEL_145;
          }

          v194 = *(v192 + 16);
          if (v194 != *(v193 + 16))
          {
            goto LABEL_145;
          }

          if (v194)
          {
            v195 = v192 == v193;
          }

          else
          {
            v195 = 1;
          }

          if (!v195)
          {
            v196 = (v192 + 32);
            v197 = (v193 + 32);
            while (v194)
            {
              if (*v196 != *v197)
              {
                goto LABEL_145;
              }

              ++v196;
              ++v197;
              if (!--v194)
              {
                goto LABEL_201;
              }
            }

            goto LABEL_257;
          }
        }

        else if (v193)
        {
          goto LABEL_145;
        }

LABEL_201:
        v198 = v257[11];
        v199 = *(v156 + v198);
        v200 = *(v60 + v198);
        if (v199)
        {
          if (!v200)
          {
            goto LABEL_145;
          }

          v201 = *(v199 + 16);
          if (v201 != *(v200 + 16))
          {
            goto LABEL_145;
          }

          if (v201)
          {
            v202 = v199 == v200;
          }

          else
          {
            v202 = 1;
          }

          if (!v202)
          {
            v203 = (v199 + 32);
            v204 = (v200 + 32);
            while (v201)
            {
              if (*v203 != *v204)
              {
                goto LABEL_145;
              }

              ++v203;
              ++v204;
              if (!--v201)
              {
                goto LABEL_214;
              }
            }

            __break(1u);
            goto LABEL_261;
          }
        }

        else if (v200)
        {
          goto LABEL_145;
        }

LABEL_214:
        v205 = v257[12];
        v206 = *(v156 + v205);
        v207 = *(v60 + v205);
        if (v206)
        {
          if (!v207)
          {
            goto LABEL_145;
          }

          v208 = *(v206 + 16);
          if (v208 != *(v207 + 16))
          {
            goto LABEL_145;
          }

          if (v208)
          {
            v209 = v206 == v207;
          }

          else
          {
            v209 = 1;
          }

          if (!v209)
          {
            v210 = (v206 + 32);
            v211 = (v207 + 32);
            while (v208)
            {
              if (*v210 != *v211)
              {
                goto LABEL_145;
              }

              ++v210;
              ++v211;
              if (!--v208)
              {
                goto LABEL_227;
              }
            }

            __break(1u);
            goto LABEL_264;
          }
        }

        else if (v207)
        {
          goto LABEL_145;
        }

LABEL_227:
        v212 = v257[13];
        v213 = *(v156 + v212);
        v214 = *(v60 + v212);
        if (v213)
        {
          if (v214)
          {
            v215 = *(v213 + 16);
            if (v215 == *(v214 + 16))
            {
              if (v215)
              {
                v216 = v213 == v214;
              }

              else
              {
                v216 = 1;
              }

              if (!v216)
              {
                v217 = (v213 + 32);
                v218 = (v214 + 32);
                v139 = v226;
                v57 = v231;
                v155 = v227;
                v156 = v228;
                v60 = v233;
                while (v215)
                {
                  if (*v217 != *v218)
                  {
                    goto LABEL_145;
                  }

                  ++v217;
                  ++v218;
                  if (!--v215)
                  {
                    goto LABEL_243;
                  }
                }

LABEL_264:
                __break(1u);
                goto LABEL_265;
              }

              v139 = v226;
              v156 = v228;
              v60 = v233;
LABEL_243:
              sub_21D9FE624(v156, type metadata accessor for TTRRecurrenceRuleModel);
              sub_21D9FE624(v60, type metadata accessor for TTRRecurrenceRuleModel);
              v219 = *(v262 + 8 * v30);
              *(v262 + 8 * v30) = v219 & ~v154;
              v79 = (v219 & v154) == 0;
              v58 = v255;
              v140 = v238;
              v57 = v225;
              v141 = i;
              v142 = v234;
              v143 = v247;
              v144 = v246;
              if (v79)
              {
                goto LABEL_128;
              }

              if (__OFSUB__(v258--, 1))
              {
LABEL_265:
                __break(1u);
                goto LABEL_266;
              }

              v58 = v255;
              v139 = v226;
              if (v258)
              {
                goto LABEL_127;
              }

              v132 = MEMORY[0x277D84FA0];
LABEL_248:
              sub_21D0CFAF8();
              return v132;
            }
          }
        }

        else if (!v214)
        {
          goto LABEL_243;
        }

LABEL_145:
        sub_21D9FE624(v156, type metadata accessor for TTRRecurrenceRuleModel);
        v140 = (v140 + 1) & v264;
        v30 = v140 >> 6;
        v154 = 1 << v140;
        if (((1 << v140) & v265[v140 >> 6]) == 0)
        {
          goto LABEL_126;
        }

        continue;
      }

      break;
    }

    if (!v165)
    {
      goto LABEL_145;
    }

    v166 = v164[1].i64[0];
    if (v166 != v165[1].i64[0])
    {
      goto LABEL_145;
    }

    if (v166)
    {
      v167 = v164 == v165;
    }

    else
    {
      v167 = 1;
    }

    if (v167)
    {
      goto LABEL_175;
    }

    v168 = v164 + 2;
    v169 = v165 + 2;
    while (v166)
    {
      v170 = vmovn_s64(vceqq_s64(*v168, *v169));
      if ((v170.i32[0] & v170.i32[1] & 1) == 0)
      {
        goto LABEL_145;
      }

      ++v168;
      ++v169;
      if (!--v166)
      {
        goto LABEL_175;
      }
    }

LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    v221 = v74;

    v161 = v221;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v58 = v255;

      continue;
    }

    break;
  }

LABEL_261:
  v140 = swift_slowAlloc();
  memcpy(v140, v265, v161);
  v60 = v223;
  v132 = sub_21D9FC01C(v140, v256, v255, v57, &v267);

  if (!v60)
  {

    MEMORY[0x223D46520](v140, -1, -1);
    goto LABEL_248;
  }

LABEL_266:

  result = MEMORY[0x223D46520](v140, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_21D9FAEE8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v56 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1 << *(a1 + 32);
    v48 = ~v8;
    v49 = a1;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v6;
    v11 = (63 - v8) >> 6;
    v12 = a2 + 56;
    sub_21DBF8E0C();
    v50 = 0;
    while (1)
    {
      do
      {
        if (!v10)
        {
          v14 = v49;
          v15 = v50;
          while (1)
          {
            v16 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            if (v16 >= v11)
            {
              goto LABEL_41;
            }

            v10 = *(v7 + 8 * v16);
            ++v15;
            if (v10)
            {
              v50 = v16;
              goto LABEL_13;
            }
          }

LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v14 = v49;
LABEL_13:
        v17 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v18 = *(*(v14 + 48) + ((v50 << 9) | (8 * v17)));
        sub_21DBFC7DC();
        MEMORY[0x223D44FA0](v18);
        v19 = sub_21DBFC82C();
        v20 = *(v5 + 32);
        v2 = v19 & ~(-1 << v20);
        v4 = v2 >> 6;
        v3 = 1 << v2;
      }

      while (((1 << v2) & *(v12 + 8 * (v2 >> 6))) == 0);
      v21 = *(v5 + 48);
      if (*(v21 + 8 * v2) == v18)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~(-1 << v20);
        v4 = v2 >> 6;
        v3 = 1 << v2;
        if (((1 << v2) & *(v12 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v2) == v18)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v22 = v20 & 0x3F;
    v53 = v48;
    v54 = v50;
    v55 = v10;
    v52[0] = v49;
    v52[1] = v7;
    v45 = ((1 << v22) + 63) >> 6;
    v13 = 8 * v45;
    if (v22 <= 0xD)
    {
      goto LABEL_18;
    }

LABEL_45:
    v41 = v13;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v42 = swift_slowAlloc();
      memcpy(v42, (v5 + 56), v41);
      v43 = sub_21D9FCDBC(v42, v45, v5, v2, v52);

      MEMORY[0x223D46520](v42, -1, -1);
      v48 = v53;
      v50 = v54;
      v5 = v43;
      goto LABEL_41;
    }

LABEL_18:
    v46 = &v44;
    MEMORY[0x28223BE20](v19);
    v24 = (&v44 - v23);
    memcpy(&v44 - v23, (v5 + 56), v25);
    v26 = *(v5 + 16);
    v24[v4] &= ~v3;
    v27 = v26 - 1;
    v3 = v49;
LABEL_19:
    v47 = v27;
    while (v10)
    {
LABEL_27:
      v31 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v4 = *(*(v3 + 48) + ((v50 << 9) | (8 * v31)));
      sub_21DBFC7DC();
      v2 = &v51;
      MEMORY[0x223D44FA0](v4);
      v32 = sub_21DBFC82C();
      v33 = -1 << *(v5 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & *(v12 + 8 * (v34 >> 6))) != 0)
      {
        v37 = *(v5 + 48);
        if (*(v37 + 8 * v34) == v4)
        {
LABEL_20:
          v28 = v24[v35];
          v24[v35] = v28 & ~v36;
          if ((v28 & v36) != 0)
          {
            v27 = v47 - 1;
            if (__OFSUB__(v47, 1))
            {
              __break(1u);
            }

            if (v47 == 1)
            {

              v5 = MEMORY[0x277D84FA0];
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & *(v12 + 8 * (v34 >> 6))) == 0)
            {
              break;
            }

            if (*(v37 + 8 * v34) == v4)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v29 = v50;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v30 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v30);
      ++v29;
      if (v10)
      {
        v50 = v30;
        goto LABEL_27;
      }
    }

    if (v11 <= v50 + 1)
    {
      v39 = v50 + 1;
    }

    else
    {
      v39 = v11;
    }

    v50 = v39 - 1;
    v5 = sub_21D7C06E4(v24, v45, v47, v5);
LABEL_41:
    sub_21D0CFAF8();
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v5;
}

uint64_t sub_21D9FB380(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v65 - v9);
  v11 = sub_21DBF54CC();
  MEMORY[0x28223BE20](v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v65 - v14);
  MEMORY[0x28223BE20](v16);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);
  sub_21DBF8E0C();
  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_21D0CF7E0(v30, &qword_27CE5EA20);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_21D9FE5DC(&qword_280D171E0, MEMORY[0x277CC9260]);
    v32 = sub_21DBF9FFC();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, *(a2 + 48) + v84 * v24, v11);
    v35 = sub_21D9FE5DC(&qword_280D171D0, MEMORY[0x277CC9260]);
    v36 = sub_21DBFA10C();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x28223BE20](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_21D0CF7E0(v24, &qword_27CE5EA20);
        a2 = sub_21D7C0BBC(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_21DBF9FFC();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_21DBFA10C();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, *(v52 + 48) + v54 * v84, v11);
            v57 = sub_21DBFA10C();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  sub_21D9FCF94(v63, v65, v80, v24, &v89);
  a2 = v64;

  MEMORY[0x223D46520](v63, -1, -1);
LABEL_52:
  sub_21D0CFAF8();
  return a2;
}

uint64_t sub_21D9FBDE4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_21D7C0054(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_21DBFC7DC();
        sub_21DBF8E0C();
        sub_21DBFA27C();
        v19 = sub_21DBFC82C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_21DBFC64C() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_21D9FC01C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v130 = a5;
  v121 = a2;
  v134 = sub_21DBF563C();
  v8 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v128 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B38);
  MEMORY[0x28223BE20](v138 - 8);
  v139 = &v120 - v10;
  v149 = type metadata accessor for TTRRecurrenceEndModel(0);
  v11 = *(v149 - 8);
  MEMORY[0x28223BE20](v149 - 8);
  v135 = (&v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v133 = &v120 - v14;
  MEMORY[0x28223BE20](v15);
  v141 = &v120 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v120 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B40);
  MEMORY[0x28223BE20](v20);
  v22 = &v120 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  MEMORY[0x28223BE20](v23 - 8);
  v126 = &v120 - v24;
  v140 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v140);
  v145 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v148 = &v120 - v27;
  v28 = *(a3 + 16);
  v29 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v30 = *(a1 + v29) & ((-1 << a4) - 1);
  v123 = a1;
  *(a1 + v29) = v30;
  v31 = v19;
  v32 = v20;
  v122 = v28 - 1;
  v125 = (v33 + 56);
  v129 = v33;
  v124 = (v33 + 48);
  v146 = a3 + 56;
  v147 = a3;
  v142 = (v11 + 48);
  v127 = (v8 + 32);
  v132 = (v8 + 8);
  v137 = v20;
  v136 = v31;
  while (1)
  {
LABEL_3:
    v35 = *v130;
    v34 = v130[1];
    v37 = v130[2];
    v36 = v130[3];
    v38 = v130[4];
    v144 = v37;
    if (v38)
    {
      v39 = v36;
LABEL_12:
      v43 = (v38 - 1) & v38;
      v44 = v126;
      sub_21D9FE6EC(*(v35 + 48) + *(v129 + 72) * (__clz(__rbit64(v38)) | (v39 << 6)), v126, type metadata accessor for TTRRecurrenceRuleModel);
      v45 = 0;
      v42 = v39;
    }

    else
    {
      v40 = (v37 + 64) >> 6;
      v41 = v40 <= v36 + 1 ? v36 + 1 : (v37 + 64) >> 6;
      v42 = v41 - 1;
      while (1)
      {
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          return MEMORY[0x277D84FA0];
        }

        if (v39 >= v40)
        {
          break;
        }

        v38 = *(v34 + 8 * v39);
        ++v36;
        if (v38)
        {
          goto LABEL_12;
        }
      }

      v43 = 0;
      v45 = 1;
      v44 = v126;
    }

    v46 = v140;
    (*v125)(v44, v45, 1, v140);
    v47 = v130;
    *v130 = v35;
    v47[1] = v34;
    v47[2] = v144;
    v47[3] = v42;
    v47[4] = v43;
    if ((*v124)(v44, 1, v46) == 1)
    {
      sub_21D0CF7E0(v44, &qword_27CE5A018);
      v119 = v147;

      return sub_21D7C0278(v123, v121, v122, v119);
    }

    sub_21D9FE684(v44, v148, type metadata accessor for TTRRecurrenceRuleModel);
    v48 = v147;
    sub_21DBFC7DC();
    TTRRecurrenceRuleModel.hash(into:)();
    v49 = sub_21DBFC82C();
    v50 = -1 << *(v48 + 32);
    v51 = v49 & ~v50;
    v52 = v51 >> 6;
    v53 = 1 << v51;
    if (((1 << v51) & *(v146 + 8 * (v51 >> 6))) != 0)
    {
      break;
    }

LABEL_2:
    sub_21D9FE624(v148, type metadata accessor for TTRRecurrenceRuleModel);
  }

  v143 = ~v50;
  v144 = *(v129 + 72);
  v54 = v145;
  while (1)
  {
    sub_21D9FE6EC(*(v147 + 48) + v144 * v51, v54, type metadata accessor for TTRRecurrenceRuleModel);
    v57 = *(v32 + 48);
    sub_21D3139B4(v54, v22);
    sub_21D3139B4(v148, &v22[v57]);
    v58 = *v142;
    if ((*v142)(v22, 1, v149) != 1)
    {
      sub_21D3139B4(v22, v31);
      if (v58(&v22[v57], 1, v149) == 1)
      {
        sub_21D9FE624(v31, type metadata accessor for TTRRecurrenceEndModel);
LABEL_17:
        v55 = v22;
        v56 = &qword_27CE61B40;
      }

      else
      {
        v67 = v31;
        v68 = v141;
        sub_21D9FE684(&v22[v57], v141, type metadata accessor for TTRRecurrenceEndModel);
        v69 = *(v138 + 48);
        v70 = v67;
        v71 = v139;
        sub_21D9FE6EC(v70, v139, type metadata accessor for TTRRecurrenceEndModel);
        sub_21D9FE6EC(v68, v71 + v69, type metadata accessor for TTRRecurrenceEndModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21D9FE6EC(v71, v135, type metadata accessor for TTRRecurrenceEndModel);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v31 = v136;
          if (EnumCaseMultiPayload != 1)
          {
            goto LABEL_44;
          }

          v73 = v71;
          v74 = *v135;
          v75 = *(v73 + v69);
          sub_21D9FE624(v73, type metadata accessor for TTRRecurrenceEndModel);
          v32 = v137;
          if (v74 != v75)
          {
            goto LABEL_45;
          }

          goto LABEL_47;
        }

        v76 = v133;
        sub_21D9FE6EC(v71, v133, type metadata accessor for TTRRecurrenceEndModel);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v77 = v71 + v69;
          v78 = v128;
          v79 = v134;
          (*v127)(v128, v77, v134);
          v131 = sub_21DBF55EC();
          v80 = *v132;
          (*v132)(v78, v79);
          v80(v76, v79);
          sub_21D9FE624(v139, type metadata accessor for TTRRecurrenceEndModel);
          v31 = v136;
          v32 = v137;
          if ((v131 & 1) == 0)
          {
            goto LABEL_45;
          }

LABEL_47:
          sub_21D9FE624(v141, type metadata accessor for TTRRecurrenceEndModel);
          sub_21D9FE624(v31, type metadata accessor for TTRRecurrenceEndModel);
          goto LABEL_22;
        }

        (*v132)(v76, v134);
        v31 = v136;
LABEL_44:
        sub_21D0CF7E0(v71, &qword_27CE61B38);
        v32 = v137;
LABEL_45:
        sub_21D9FE624(v141, type metadata accessor for TTRRecurrenceEndModel);
        sub_21D9FE624(v31, type metadata accessor for TTRRecurrenceEndModel);
        v55 = v22;
        v56 = &unk_27CE62610;
      }

      sub_21D0CF7E0(v55, v56);
      v54 = v145;
      goto LABEL_19;
    }

    if (v58(&v22[v57], 1, v149) != 1)
    {
      goto LABEL_17;
    }

LABEL_22:
    sub_21D0CF7E0(v22, &unk_27CE62610);
    v54 = v145;
    if (*(v145 + v140[5]) != *(v148 + v140[5]) || *(v145 + v140[6]) != *(v148 + v140[6]) || *(v145 + v140[7]) != *(v148 + v140[7]))
    {
      goto LABEL_19;
    }

    v59 = v140[8];
    v60 = *(v145 + v59);
    v61 = *(v148 + v59);
    if (v60)
    {
      if (!v61)
      {
        goto LABEL_19;
      }

      v62 = v60[1].i64[0];
      if (v62 != v61[1].i64[0])
      {
        goto LABEL_19;
      }

      if (v62)
      {
        v63 = v60 == v61;
      }

      else
      {
        v63 = 1;
      }

      if (!v63)
      {
        v64 = v60 + 2;
        v65 = v61 + 2;
        while (v62)
        {
          v66 = vmovn_s64(vceqq_s64(*v64, *v65));
          if ((v66.i32[0] & v66.i32[1] & 1) == 0)
          {
            goto LABEL_19;
          }

          ++v64;
          ++v65;
          if (!--v62)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_121;
      }
    }

    else if (v61)
    {
      goto LABEL_19;
    }

LABEL_49:
    v81 = v140[9];
    v82 = *(v145 + v81);
    v83 = *(v148 + v81);
    if (v82)
    {
      if (!v83)
      {
        goto LABEL_19;
      }

      v84 = *(v82 + 16);
      if (v84 != *(v83 + 16))
      {
        goto LABEL_19;
      }

      if (v84)
      {
        v85 = v82 == v83;
      }

      else
      {
        v85 = 1;
      }

      if (!v85)
      {
        v86 = (v82 + 32);
        v87 = (v83 + 32);
        while (v84)
        {
          if (*v86 != *v87)
          {
            goto LABEL_19;
          }

          ++v86;
          ++v87;
          if (!--v84)
          {
            goto LABEL_62;
          }
        }

        goto LABEL_122;
      }
    }

    else if (v83)
    {
      goto LABEL_19;
    }

LABEL_62:
    v88 = v140[10];
    v89 = *(v145 + v88);
    v90 = *(v148 + v88);
    if (v89)
    {
      if (!v90)
      {
        goto LABEL_19;
      }

      v91 = *(v89 + 16);
      if (v91 != *(v90 + 16))
      {
        goto LABEL_19;
      }

      if (v91)
      {
        v92 = v89 == v90;
      }

      else
      {
        v92 = 1;
      }

      if (!v92)
      {
        v93 = (v89 + 32);
        v94 = (v90 + 32);
        while (v91)
        {
          if (*v93 != *v94)
          {
            goto LABEL_19;
          }

          ++v93;
          ++v94;
          if (!--v91)
          {
            goto LABEL_75;
          }
        }

        goto LABEL_123;
      }
    }

    else if (v90)
    {
      goto LABEL_19;
    }

LABEL_75:
    v95 = v140[11];
    v96 = *(v145 + v95);
    v97 = *(v148 + v95);
    if (v96)
    {
      if (!v97)
      {
        goto LABEL_19;
      }

      v98 = *(v96 + 16);
      if (v98 != *(v97 + 16))
      {
        goto LABEL_19;
      }

      if (v98)
      {
        v99 = v96 == v97;
      }

      else
      {
        v99 = 1;
      }

      if (!v99)
      {
        v100 = (v96 + 32);
        v101 = (v97 + 32);
        while (v98)
        {
          if (*v100 != *v101)
          {
            goto LABEL_19;
          }

          ++v100;
          ++v101;
          if (!--v98)
          {
            goto LABEL_88;
          }
        }

        goto LABEL_124;
      }
    }

    else if (v97)
    {
      goto LABEL_19;
    }

LABEL_88:
    v102 = v140[12];
    v103 = *(v145 + v102);
    v104 = *(v148 + v102);
    if (v103)
    {
      if (!v104)
      {
        goto LABEL_19;
      }

      v105 = *(v103 + 16);
      if (v105 != *(v104 + 16))
      {
        goto LABEL_19;
      }

      if (v105)
      {
        v106 = v103 == v104;
      }

      else
      {
        v106 = 1;
      }

      if (!v106)
      {
        v107 = (v103 + 32);
        v108 = (v104 + 32);
        while (v105)
        {
          if (*v107 != *v108)
          {
            goto LABEL_19;
          }

          ++v107;
          ++v108;
          if (!--v105)
          {
            goto LABEL_101;
          }
        }

        goto LABEL_125;
      }
    }

    else if (v104)
    {
      goto LABEL_19;
    }

LABEL_101:
    v109 = v140[13];
    v110 = *(v145 + v109);
    v111 = *(v148 + v109);
    if (v110)
    {
      break;
    }

    if (!v111)
    {
      goto LABEL_114;
    }

LABEL_19:
    sub_21D9FE624(v54, type metadata accessor for TTRRecurrenceRuleModel);
    v51 = (v51 + 1) & v143;
    v52 = v51 >> 6;
    v53 = 1 << v51;
    if (((1 << v51) & *(v146 + 8 * (v51 >> 6))) == 0)
    {
      goto LABEL_2;
    }
  }

  if (!v111)
  {
    goto LABEL_19;
  }

  v112 = *(v110 + 16);
  if (v112 != *(v111 + 16))
  {
    goto LABEL_19;
  }

  if (v112)
  {
    v113 = v110 == v111;
  }

  else
  {
    v113 = 1;
  }

  if (!v113)
  {
    v114 = (v110 + 32);
    v115 = (v111 + 32);
    while (v112)
    {
      if (*v114 != *v115)
      {
        goto LABEL_19;
      }

      ++v114;
      ++v115;
      if (!--v112)
      {
        goto LABEL_114;
      }
    }

    goto LABEL_126;
  }

LABEL_114:
  sub_21D9FE624(v145, type metadata accessor for TTRRecurrenceRuleModel);
  result = sub_21D9FE624(v148, type metadata accessor for TTRRecurrenceRuleModel);
  v117 = v123[v52];
  v123[v52] = v117 & ~v53;
  if ((v117 & v53) == 0)
  {
    goto LABEL_3;
  }

  v118 = v122 - 1;
  if (__OFSUB__(v122, 1))
  {
    __break(1u);
    return result;
  }

  --v122;
  if (v118)
  {
    goto LABEL_3;
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21D9FCDBC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_21DBFC7DC();
    MEMORY[0x223D44FA0](v17);
    result = sub_21DBFC82C();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + 8 * v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + 8 * v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_21D7C06E4(v7, a2, v9, a3);
}

void sub_21D9FCF94(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_21DBF54CC();
  MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_21D0CF7E0(v11, &qword_27CE5EA20);
          v45 = v61;

          sub_21D7C0BBC(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_21D9FE5DC(&qword_280D171E0, MEMORY[0x277CC9260]);
        v35 = sub_21DBF9FFC();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_21D9FE5DC(&qword_280D171D0, MEMORY[0x277CC9260]);
        v43 = sub_21DBFA10C();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t _s15RemindersUICore27TTRReminderTextChangeDetailV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  sub_21D0D8CF0(0, &qword_280D17680);
  v10 = sub_21DBFB63C();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v4 == v8)
  {
    if (v5)
    {
      if (v9 && (v3 == v7 && v5 == v9 || (sub_21DBFC64C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v9)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s15RemindersUICore38TTRReminderCellTextEditingAugmentationO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if (!v3)
  {
    if (!v7)
    {
      v3 = 0;
      v11 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!v7 || (v2 == v6 ? (v10 = v3 == v7) : (v10 = 0), !v10 && (sub_21DBFC64C() & 1) == 0 || (sub_21D321F28(v4, v8) & 1) == 0))
  {
LABEL_11:
    sub_21D24A7C4(v6, v7);
    sub_21D24A7C4(v2, v3);
    v11 = 0;
    goto LABEL_12;
  }

  sub_21D24A7C4(v6, v7);
  sub_21D24A7C4(v2, v3);
  v11 = sub_21D1D56D8(v5, v9);
LABEL_12:
  sub_21D24A814(v2, v3);
  sub_21D24A814(v6, v7);
  return v11 & 1;
}

uint64_t _s15RemindersUICore38TTRReminderCellTextEditingAugmentationO16effectivelyEqualySbACSg_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if (v2 >= 2 && (*(v4 + 16) || *(v5 + 16)))
  {
    v16 = *a1;
    v17 = v2;
    v18 = v4;
    v19 = v5;
    if (v6 == 1)
    {
      sub_21D64CAB0(v3, v2);
      sub_21D64CAB0(v7, 1);
      sub_21D64CAB0(v3, v2);
      sub_21D24A814(v3, v2);
LABEL_12:
      sub_21D301F20(v3, v2);
      sub_21D301F20(v7, v6);
      v10 = 0;
      return v10 & 1;
    }

    goto LABEL_14;
  }

  if (v6 >= 2 && (*(v8 + 16) || *(v9 + 16)))
  {
    if (v2 == 1)
    {
      sub_21D64CAB0(*a1, 1);
      sub_21D64CAB0(v7, v6);
      goto LABEL_12;
    }

    v16 = *a1;
    v17 = v2;
    v18 = v4;
    v19 = v5;
LABEL_14:
    v12 = v7;
    v13 = v6;
    v14 = v8;
    v15 = v9;
    sub_21D64CAB0(v3, v2);
    sub_21D64CAB0(v7, v6);
    sub_21D64CAB0(v3, v2);
    v10 = _s15RemindersUICore38TTRReminderCellTextEditingAugmentationO2eeoiySbAC_ACtFZ_0(&v16, &v12);
    sub_21D24A814(v12, v13);
    sub_21D24A814(v16, v17);
    sub_21D301F20(v3, v2);
    return v10 & 1;
  }

  v10 = 1;
  return v10 & 1;
}

unint64_t sub_21D9FD848()
{
  result = qword_280D0C400;
  if (!qword_280D0C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0C400);
  }

  return result;
}

unint64_t sub_21D9FD8A0()
{
  result = qword_27CE64A50;
  if (!qword_27CE64A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64A50);
  }

  return result;
}

unint64_t sub_21D9FD93C()
{
  result = qword_280D18EA0;
  if (!qword_280D18EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D18EA0);
  }

  return result;
}

uint64_t destroy for TTRReminderTextChangeDetail(id *a1)
{
}

uint64_t initializeWithCopy for TTRReminderTextChangeDetail(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  v5 = v3;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRReminderTextChangeDetail(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRReminderTextChangeDetail(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  return a1;
}

uint64_t initializeWithCopy for TTRReminderCellTextReplacement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRReminderCellTextReplacement(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRReminderCellTextReplacement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderCellTextReplacement(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}