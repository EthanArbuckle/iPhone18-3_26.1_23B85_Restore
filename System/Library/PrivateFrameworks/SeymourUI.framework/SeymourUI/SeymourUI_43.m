unint64_t sub_20B9E4760()
{
  result = qword_27C768D88;
  if (!qword_27C768D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768D88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProgramTextItemLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1F)
  {
    goto LABEL_17;
  }

  if (a2 + 225 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 225) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 225;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 225;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 225;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0x1E | (*a1 >> 7)) ^ 0x1F;
  if (v6 >= 0x1E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ProgramTextItemLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 225 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 225) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1F)
  {
    v4 = 0;
  }

  if (a2 > 0x1E)
  {
    v5 = ((a2 - 31) >> 8) + 1;
    *result = a2 - 31;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20B9E4934()
{
  sub_20B583E6C(v0 + 16);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  v1 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanCalendarPresenter_currentDate;
  v2 = sub_20C132E94();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanCalendarPresenter_startOfFirstWeek, &qword_27C762AC0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanCalendarPresenter_workoutPlan, &unk_27C76A970);
  return v0;
}

uint64_t sub_20B9E4A04()
{
  sub_20B9E4934();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanCalendarPresenter()
{
  result = qword_27C768DC8;
  if (!qword_27C768DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B9E4AB0()
{
  sub_20C132E94();
  if (v0 <= 0x3F)
  {
    sub_20B9E4C40(319, &qword_27C76BB60, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_20B9E4C40(319, &qword_27C7629F8, MEMORY[0x277D50180]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20B9E4C40(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_20B9E4C94(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 32) = a1;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = a2 & 1;
    if (a3)
    {
      sub_20B821834(a3, v8);
    }

    else
    {
      sub_20B821370(a1, v8);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B9E4D3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C133154();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_20C132E94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = MEMORY[0x277D84F90];
  sub_20C132E84();
  sub_20C133014();
  sub_20C132D64();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  *(v2 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanCalendarPresenter_daysToStartOfPlan) = 0;
  v12 = v2 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanCalendarPresenter_pendingOffset;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v2 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanCalendarPresenter_selectedOffset;
  *v13 = 0;
  *(v13 + 8) = 1;
  (*(v9 + 56))(v2 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanCalendarPresenter_startOfFirstWeek, 1, 1, v8);
  v14 = v2 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanCalendarPresenter_weekCount;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanCalendarPresenter_workoutPlan;
  v16 = sub_20C133954();
  (*(*(v16 - 8) + 56))(v2 + v15, 1, 1, v16);
  *(v2 + 40) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v2 + 48) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B52E424(&v20, v2 + 72);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + 64) = sub_20C13A914();
  v21 = type metadata accessor for WorkoutPlanCalendarPresenter();
  v22 = &off_2822BCDC0;

  *&v20 = v2;
  sub_20B51CC64(&v20, v19);
  swift_beginAccess();
  sub_20B9E5264(v19, a1 + 24);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(&v20);
  return v2;
}

uint64_t sub_20B9E50BC()
{
  v0 = sub_20C133154();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D84F90];
  sub_20B526D44(0, 7, 0);
  v4 = 0;
  v5 = v17;
  v6 = (v1 + 8);
  while (1)
  {
    v7 = *(&unk_28228D3F0 + v4 + 32);
    sub_20C133014();
    v8 = sub_20C1330B4();
    result = (*v6)(v3, v0);
    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v8 + 16))
    {
      goto LABEL_9;
    }

    v10 = v8 + 16 * v7;
    v12 = *(v10 + 32);
    v11 = *(v10 + 40);

    v17 = v5;
    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_20B526D44((v13 > 1), v14 + 1, 1);
      v5 = v17;
    }

    *(v5 + 16) = v14 + 1;
    v15 = v5 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v11;
    v4 += 8;
    if (v4 == 56)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_20B9E5264(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768738);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B9E52D4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAdjustsFontForContentSizeCategory_];
  v11 = objc_opt_self();
  v12 = [v11 whiteColor];
  [v10 setTextColor_];

  v13 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v14 = [v13 fontDescriptorWithSymbolicTraits_];
  if (v14)
  {
    v15 = v14;

    v13 = v15;
  }

  v16 = OBJC_IVAR___SMUGradientBackedLabelView_label;
  v17 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];

  [v10 setFont_];
  LODWORD(v18) = 1148846080;
  [v10 setContentCompressionResistancePriority:0 forAxis:v18];
  LODWORD(v19) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v19];
  LODWORD(v20) = 1148846080;
  [v10 setContentHuggingPriority:0 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v10 setContentHuggingPriority:1 forAxis:v21];
  v22 = [v11 blackColor];
  [v10 setBackgroundColor_];

  *&v5[v16] = v10;
  v23 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C151490;
  *(inited + 32) = [v11 clearColor];
  *(inited + 40) = [v11 blackColor];
  sub_20B84A274(inited);
  sub_20B84A4C0(&unk_28228D9C8);
  v25 = [v23 layer];
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26 && ([v26 setStartPoint_], v25, v25 = objc_msgSend(v23, sel_layer), objc_opt_self(), (v27 = swift_dynamicCastObjCClass()) != 0))
  {
    v28 = OBJC_IVAR___SMUGradientBackedLabelView_gradientView;
    [v27 setEndPoint_];

    *&v5[v28] = v23;
    v64.receiver = v5;
    v64.super_class = type metadata accessor for GradientBackedLabelView();
    v29 = objc_msgSendSuper2(&v64, sel_initWithFrame_, a1, a2, a3, a4);
    v30 = OBJC_IVAR___SMUGradientBackedLabelView_gradientView;
    v31 = *&v29[OBJC_IVAR___SMUGradientBackedLabelView_gradientView];
    v32 = v29;
    [v32 addSubview_];
    v33 = OBJC_IVAR___SMUGradientBackedLabelView_label;
    [v32 addSubview_];
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_20C150050;
    v35 = [*&v29[v30] leadingAnchor];
    v36 = [v32 leadingAnchor];
    v37 = [v35 constraintEqualToAnchor_];

    *(v34 + 32) = v37;
    v38 = [*&v29[v30] topAnchor];
    v39 = [v32 &selRef_setLineBreakMode_];

    v40 = [v38 constraintEqualToAnchor_];
    *(v34 + 40) = v40;
    v41 = [*&v29[v30] bottomAnchor];
    v42 = [v32 &selRef_secondaryLabel + 5];

    v43 = [v41 constraintEqualToAnchor_];
    *(v34 + 48) = v43;
    v44 = [*&v29[v30] trailingAnchor];
    v45 = [*&v32[v33] leadingAnchor];
    v46 = [v44 constraintEqualToAnchor_];

    *(v34 + 56) = v46;
    v47 = [*&v29[v30] widthAnchor];
    v48 = [*&v29[v30] heightAnchor];
    v49 = [v47 constraintEqualToAnchor:v48 multiplier:1.5];

    *(v34 + 64) = v49;
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_20C150040;
    v51 = [*&v32[v33] topAnchor];
    v52 = [v32 topAnchor];

    v53 = [v51 constraintEqualToAnchor_];
    *(v50 + 32) = v53;
    v54 = [*&v32[v33] bottomAnchor];
    v55 = [v32 bottomAnchor];

    v56 = [v54 constraintEqualToAnchor_];
    *(v50 + 40) = v56;
    v57 = [*&v32[v33] trailingAnchor];
    v58 = [v32 trailingAnchor];

    v59 = [v57 constraintEqualToAnchor_];
    *(v50 + 48) = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
    v60 = swift_initStackObject();
    *(v60 + 16) = xmmword_20C14F320;
    *(v60 + 32) = v34;
    *(v60 + 40) = v50;
    v61 = objc_opt_self();
    sub_20BE54D20(v60);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
    swift_arrayDestroy();
    sub_20B5E29D0();
    v62 = sub_20C13CC54();

    [v61 activateConstraints_];

    return v32;
  }

  else
  {

    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

void sub_20B9E5B70()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for GradientBackedLabelView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = [v0 effectiveUserInterfaceLayoutDirection];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  if (v1 == 1)
  {
    v2 = &selRef_blackColor;
  }

  else
  {
    v2 = &selRef_clearColor;
  }

  if (v1 == 1)
  {
    v3 = &selRef_clearColor;
  }

  else
  {
    v3 = &selRef_blackColor;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C151490;
  v5 = objc_opt_self();
  *(inited + 32) = [v5 *v2];
  *(inited + 40) = [v5 *v3];
  sub_20B84A274(inited);
}

char *sub_20B9E5D70(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_onMoreTapped];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_linkIconsAndTitles] = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_linksBottomConstraint;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *&v4[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_tapGestureRecognizer] = 0;
  v11 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabelBottomConstraint;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *&v4[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabelTruncatedLines] = 4;
  v4[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_state] = 0;
  v12 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_moreTextLabel;
  v13 = [objc_allocWithZone(type metadata accessor for GradientBackedLabelView()) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v14) = 1148846080;
  [v13 setContentCompressionResistancePriority:0 forAxis:v14];

  *&v4[v12] = v13;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setAdjustsFontForContentSizeCategory_];
  v81 = objc_opt_self();
  v16 = [v81 systemGrayColor];
  [v15 setTextColor_];

  v17 = *MEMORY[0x277D76918];
  v18 = objc_opt_self();
  v19 = [v18 preferredFontDescriptorWithTextStyle:v17 compatibleWithTraitCollection:0];
  v20 = [v19 fontDescriptorWithSymbolicTraits_];
  if (v20)
  {
    v21 = v20;

    v19 = v21;
  }

  v22 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabel;
  v23 = objc_opt_self();
  v24 = [v23 fontWithDescriptor:v19 size:0.0];

  [v15 setFont_];
  *&v4[v22] = v15;
  v25 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  [v25 setAdjustsFontForContentSizeCategory_];
  v26 = [v18 preferredFontDescriptorWithTextStyle:v17 compatibleWithTraitCollection:0];
  v27 = [v26 fontDescriptorWithSymbolicTraits_];
  if (v27)
  {
    v28 = v27;

    v26 = v28;
  }

  v29 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_sizingLabel;
  v30 = [v23 fontWithDescriptor:v26 size:0.0];

  [v25 setFont_];
  *&v4[v29] = v25;
  v31 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_tapTargetView;
  v32 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = [v81 clearColor];
  [v32 setBackgroundColor_];

  *&v4[v31] = v32;
  v34 = &v4[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_layout];
  *v34 = xmmword_20C15FDA0;
  *(v34 + 2) = 0x4030000000000000;
  v83.receiver = v4;
  v83.super_class = type metadata accessor for ExpandableTextView();
  v35 = objc_msgSendSuper2(&v83, sel_initWithFrame_, a1, a2, a3, a4);
  v36 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabel;
  v37 = *&v35[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabel];
  v38 = v35;
  [v38 addSubview_];
  v79 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_moreTextLabel;
  [v38 addSubview_];
  v39 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_tapTargetView;
  v78 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_tapTargetView;
  [v38 addSubview_];
  v82 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v38 action:sel_handleTapGesture_];
  [*&v38[v39] addGestureRecognizer_];
  v40 = [*&v35[v36] bottomAnchor];
  v41 = [v38 &selRef_secondaryLabel + 5];
  v42 = [v40 constraintEqualToAnchor:v41 constant:-20.0];

  v43 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabelBottomConstraint;
  v44 = *&v38[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabelBottomConstraint];
  *&v38[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabelBottomConstraint] = v42;

  v80 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_20C14FF90;
  v46 = [*&v35[v36] leadingAnchor];
  v47 = [v38 leadingAnchor];

  v48 = [v46 constraintEqualToAnchor_];
  *(v45 + 32) = v48;
  v49 = [*&v35[v36] topAnchor];
  v50 = [v38 &selRef_setLineBreakMode_];

  v51 = [v49 constraintEqualToAnchor_];
  *(v45 + 40) = v51;
  v52 = [*&v35[v36] trailingAnchor];
  v53 = [v38 trailingAnchor];

  v54 = [v52 constraintEqualToAnchor_];
  *(v45 + 48) = v54;
  v55 = *&v38[v43];
  *(v45 + 56) = v55;
  v56 = *&v38[v79];
  v57 = v55;
  v58 = [v56 trailingAnchor];
  v59 = [v38 trailingAnchor];

  v60 = [v58 constraintLessThanOrEqualToAnchor_];
  *(v45 + 64) = v60;
  v61 = [*&v38[v79] firstBaselineAnchor];
  v62 = [*&v35[v36] lastBaselineAnchor];
  v63 = [v61 constraintEqualToAnchor_];

  *(v45 + 72) = v63;
  v64 = [*&v38[v78] leadingAnchor];
  v65 = [v38 centerXAnchor];

  v66 = [v64 constraintEqualToAnchor_];
  *(v45 + 80) = v66;
  v67 = [*&v38[v78] topAnchor];
  v68 = [v38 centerYAnchor];

  v69 = [v67 constraintEqualToAnchor_];
  *(v45 + 88) = v69;
  v70 = [*&v38[v78] trailingAnchor];
  v71 = [v38 trailingAnchor];

  v72 = [v70 constraintEqualToAnchor_];
  *(v45 + 96) = v72;
  v73 = [*&v38[v78] bottomAnchor];
  v74 = [v38 bottomAnchor];

  v75 = [v73 constraintEqualToAnchor_];
  *(v45 + 104) = v75;
  sub_20B5E29D0();
  v76 = sub_20C13CC54();

  [v80 activateConstraints_];

  return v38;
}

void sub_20B9E67B4(uint64_t a1)
{
  v3 = *a1;
  if (*(a1 + 16))
  {
    v4 = *(a1 + 8);
    v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabel);

    v6 = sub_20C13C914();
    sub_20B9E75BC(v3, v4, 1);
    [v5 setText_];
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabel);
    [v5 setAttributedText_];
  }

  [v5 setFont_];
  v7 = *(a1 + 72);
  [v5 setNumberOfLines_];
  *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabelTruncatedLines) = v7;
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_moreTextLabel);
  v9 = OBJC_IVAR___SMUGradientBackedLabelView_label;
  [*(v8 + OBJC_IVAR___SMUGradientBackedLabelView_label) setFont_];
  v10 = *(v8 + v9);
  v11 = sub_20C13C914();
  [v10 setText_];

  [*(v8 + v9) setTextColor_];
  v12 = *(a1 + 32);

  sub_20B9E6ACC(v12);
}

id sub_20B9E6914(char a1)
{
  v1[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_state] = a1 & 1;
  v2 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabelTruncatedLines;
  if (!*&v1[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabelTruncatedLines] || (v4 = *&v1[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_sizingLabel], v5 = *&v1[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabel], v6 = [v5 text], objc_msgSend(v4, sel_setText_, v6), v6, objc_msgSend(v4, sel_setNumberOfLines_, *&v1[v2]), objc_msgSend(v1, sel_bounds), objc_msgSend(v4, sel_sizeThatFits_, v7, 1.79769313e308), v9 = v8, objc_msgSend(v4, sel_setNumberOfLines_, 0), objc_msgSend(v1, sel_bounds), objc_msgSend(v4, sel_sizeThatFits_, v10, 1.79769313e308), v9 >= v11) || (a1 & 1) != 0)
  {
    [*&v1[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabel] setNumberOfLines_];
    v13 = 0;
    v12 = 1;
  }

  else
  {
    [v5 setNumberOfLines_];
    v12 = 0;
    v13 = 1;
  }

  [*&v1[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_moreTextLabel] setHidden_];
  [*&v1[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_tapTargetView] setHidden_];

  return sub_20B9E718C(v13);
}

void sub_20B9E6ACC(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(type metadata accessor for LinkAnnotation() - 8);
    v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      sub_20B9E6DD4(v6, v1, v3);
      v6 += v7;
      --v4;
    }

    while (v4);
  }

  [v3 setAxis_];
  [v3 setSpacing_];
  [v1 addSubview_];
  v8 = [v3 bottomAnchor];
  v9 = [v1 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:-20.0];

  v11 = *&v1[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_linksBottomConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_linksBottomConstraint] = v10;

  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20C151490;
  v14 = [v3 leadingAnchor];
  v15 = *&v1[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabel];
  v16 = [v15 leadingAnchor];
  v17 = [v14 constraintEqualToAnchor_];

  *(v13 + 32) = v17;
  v18 = [v3 topAnchor];

  v19 = [v15 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:10.0];

  *(v13 + 40) = v20;
  sub_20B5E29D0();
  v21 = sub_20C13CC54();

  [v12 activateConstraints_];
}

void sub_20B9E6DD4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v10 = [v9 fontDescriptorWithSymbolicTraits_];
  if (v10)
  {
    v11 = v10;

    v9 = v11;
  }

  v12 = [objc_opt_self() fontWithDescriptor:v9 size:0.0];

  v13 = *(type metadata accessor for LinkAnnotation() + 20);
  type metadata accessor for URLButton();
  v14 = [swift_getObjCClassFromMetadata() buttonWithType_];
  v15 = sub_20C13C914();
  [v14 setTitle:v15 forState:0];

  sub_20B7F30D8(v12, 0, 1);
  v16 = sub_20C132C14();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v8, a1 + v13, v16);
  (*(v17 + 56))(v8, 0, 1, v16);
  v18 = OBJC_IVAR____TtC9SeymourUI9URLButton_url;
  swift_beginAccess();
  sub_20B9E754C(v8, v14 + v18);
  swift_endAccess();
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for UILayoutPriority(0);
  v25 = 1144750080;
  v24 = 1065353216;
  sub_20B9E8084(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BB94();
  LODWORD(v19) = v23;
  [v14 setContentCompressionResistancePriority:0 forAxis:v19];
  [v14 addTarget:a2 action:sel_didTapLink_ forControlEvents:64];
  v20 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_linkIconsAndTitles;
  swift_beginAccess();
  v21 = v14;
  MEMORY[0x20F2F43B0]();
  if (*((*(a2 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20C13CCA4();
  }

  sub_20C13CCE4();
  swift_endAccess();
  [v21 setHidden_];
  [a3 addArrangedSubview_];
}

id sub_20B9E718C(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_linkIconsAndTitles;
  swift_beginAccess();
  v14 = v3;
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20C13DB34())
  {

    if (!i)
    {
      break;
    }

    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2F5430](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 setHidden_];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_12:

  if (a1)
  {
    goto LABEL_20;
  }

  v10 = *(v1 + v14);
  if (v10 >> 62)
  {
    if (sub_20C13DB34())
    {
      goto LABEL_15;
    }

LABEL_20:
    v11 = &OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabelBottomConstraint;
    v12 = &OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_linksBottomConstraint;
    goto LABEL_21;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_15:
  v11 = &OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_linksBottomConstraint;
  v12 = &OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabelBottomConstraint;
LABEL_21:
  [*(v1 + *v12) setActive_];
  return [*(v1 + *v11) setActive_];
}

id sub_20B9E7420(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_20B9E754C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_20B9E75BC(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_20B9E75CC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  [v2 setTextColor_];

  v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v6 = [v5 fontDescriptorWithSymbolicTraits_];
  if (v6)
  {
    v7 = v6;

    v5 = v7;
  }

  v8 = OBJC_IVAR___SMUGradientBackedLabelView_label;
  v9 = [objc_opt_self() fontWithDescriptor:v5 size:0.0];

  [v2 setFont_];
  LODWORD(v10) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [v2 setContentHuggingPriority:1 forAxis:v13];
  v14 = [v3 blackColor];
  [v2 setBackgroundColor_];

  *(v1 + v8) = v2;
  v15 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C151490;
  *(inited + 32) = [v3 clearColor];
  *(inited + 40) = [v3 blackColor];
  sub_20B84A274(inited);
  sub_20B84A4C0(&unk_28228D9F8);
  v17 = [v15 layer];
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18 && ([v18 setStartPoint_], v17, v17 = objc_msgSend(v15, sel_layer), objc_opt_self(), (v19 = swift_dynamicCastObjCClass()) != 0))
  {
    v20 = OBJC_IVAR___SMUGradientBackedLabelView_gradientView;
    [v19 setEndPoint_];

    *(v1 + v20) = v15;
  }

  else
  {
  }

  sub_20C13DE24();
  __break(1u);
}

void sub_20B9E79B4()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_onMoreTapped);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_linkIconsAndTitles) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_linksBottomConstraint;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_tapGestureRecognizer) = 0;
  v3 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabelBottomConstraint;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabelTruncatedLines) = 4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_state) = 0;
  v4 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_moreTextLabel;
  v5 = [objc_allocWithZone(type metadata accessor for GradientBackedLabelView()) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v6) = 1148846080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v6];

  *(v0 + v4) = v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setAdjustsFontForContentSizeCategory_];
  v27 = objc_opt_self();
  v8 = [v27 systemGrayColor];
  [v7 setTextColor_];

  v9 = *MEMORY[0x277D76918];
  v10 = objc_opt_self();
  v11 = [v10 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:0];
  v12 = [v11 fontDescriptorWithSymbolicTraits_];
  if (v12)
  {
    v13 = v12;

    v11 = v13;
  }

  v14 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_textLabel;
  v15 = objc_opt_self();
  v16 = [v15 fontWithDescriptor:v11 size:0.0];

  [v7 setFont_];
  *(v0 + v14) = v7;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setAdjustsFontForContentSizeCategory_];
  v18 = [v10 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:0];
  v19 = [v18 fontDescriptorWithSymbolicTraits_];
  if (v19)
  {
    v20 = v19;

    v18 = v20;
  }

  v21 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_sizingLabel;
  v22 = [v15 fontWithDescriptor:v18 size:0.0];

  [v17 setFont_];
  *(v0 + v21) = v17;
  v23 = OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_tapTargetView;
  v24 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = [v27 clearColor];
  [v24 setBackgroundColor_];

  *(v0 + v23) = v24;
  v26 = v0 + OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_layout;
  *v26 = xmmword_20C15FDA0;
  *(v26 + 16) = 0x4030000000000000;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B9E7DB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_20C132C14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9SeymourUI9URLButton_url;
  swift_beginAccess();
  sub_20B6A6860(a1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_20B9E801C(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  v11 = [objc_opt_self() sharedApplication];
  v12 = sub_20C132B64();
  sub_20B6B3B84(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_20B9E8084(&qword_27C761D60, type metadata accessor for OpenExternalURLOptionsKey);
  v13 = sub_20C13C744();

  [v11 openURL:v12 options:v13 completionHandler:0];

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20B9E801C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B9E8084(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20B9E80DC()
{
  v76 = sub_20C13BB84();
  v1 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v80 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C134A74();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768E58);
  MEMORY[0x28223BE20](v6);
  v8 = (&v60 - v7);
  v9 = sub_20C135D04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v73 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v0;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_lockupGroups);
  v13 = *(v12 + 16);
  if (!v13)
  {
    v49 = MEMORY[0x277D84F90];
    v48 = *(MEMORY[0x277D84F90] + 16);
    if (!v48)
    {
LABEL_52:

      return;
    }

LABEL_35:
    v50 = 0;
    v51 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v50 >= *(v49 + 16))
      {
        goto LABEL_56;
      }

      v52 = *(v49 + 8 * v50 + 32);
      v53 = *(v52 + 16);
      v54 = *(v51 + 2);
      v55 = v54 + v53;
      if (__OFADD__(v54, v53))
      {
        goto LABEL_57;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v55 <= *(v51 + 3) >> 1)
      {
        if (!*(v52 + 16))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v54 <= v55)
        {
          v57 = v54 + v53;
        }

        else
        {
          v57 = v54;
        }

        v51 = sub_20BC05D3C(isUniquelyReferenced_nonNull_native, v57, 1, v51);
        if (!*(v52 + 16))
        {
LABEL_36:

          if (v53)
          {
            goto LABEL_58;
          }

          goto LABEL_37;
        }
      }

      if ((*(v51 + 3) >> 1) - *(v51 + 2) < v53)
      {
        goto LABEL_60;
      }

      swift_arrayInitWithCopy();

      if (v53)
      {
        v58 = *(v51 + 2);
        v38 = __OFADD__(v58, v53);
        v59 = v58 + v53;
        if (v38)
        {
          goto LABEL_61;
        }

        *(v51 + 2) = v59;
      }

LABEL_37:
      if (v48 == ++v50)
      {
        goto LABEL_52;
      }
    }
  }

  v82 = MEMORY[0x277D84F90];
  v65 = v13;
  v68 = v12;
  sub_20BB5D8AC(0, v13, 0);
  v14 = 0;
  v15 = 0;
  v70 = v82;
  v16 = v68;
  v67 = v68 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v78 = OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_lazyLockupFetcher;
  v66 = v10 + 16;
  v75 = (v1 + 8);
  v64 = (v10 + 8);
  *&v17 = 134349312;
  v72 = v17;
  v74 = v6;
  v63 = v9;
  v62 = v10;
  while (1)
  {
    if (v14 >= *(v16 + 16))
    {
      goto LABEL_59;
    }

    v18 = *(v10 + 72);
    v69 = v14;
    (*(v10 + 16))(v73, v67 + v18 * v14, v9);
    v19 = sub_20C135CF4();
    v20 = *(v19 + 16);
    if (v20)
    {
      break;
    }

    v71 = MEMORY[0x277D84F90];
LABEL_30:

    (*v64)(v73, v9);
    v45 = v70;
    v82 = v70;
    v47 = *(v70 + 16);
    v46 = *(v70 + 24);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      sub_20BB5D8AC((v46 > 1), v47 + 1, 1);
      v45 = v82;
    }

    v14 = v69 + 1;
    *(v45 + 16) = v48;
    v70 = v45;
    *(v45 + 8 * v47 + 32) = v71;
    v16 = v68;
    if (v14 == v65)
    {
      v49 = v70;
      goto LABEL_35;
    }
  }

  v21 = 0;
  v77 = *(v19 + 16);
  v61 = v20 - 1;
  v71 = MEMORY[0x277D84F90];
LABEL_6:
  v22 = v21;
  v23 = v77;
  while (v22 < *(v19 + 16))
  {
    v29 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v30 = *(v4 + 72);
    v31 = *(v6 + 48);
    *v8 = v22;
    sub_20B864C34(v19 + v29 + v30 * v22, v8 + v31);
    v32 = *(v81 + v78);
    v33 = *(v32 + 152);
    if (v15 >= *(v33 + 16))
    {
      sub_20C13B534();

      v34 = sub_20C13BB74();
      v35 = sub_20C13D1D4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = v72;
        *(v36 + 4) = v15;
        *(v36 + 12) = 2050;
        *(v36 + 14) = *(*(v32 + 152) + 16);

        _os_log_impl(&dword_20B517000, v34, v35, "[ShelfLazyLockupFetcher] requesting index %{public}ld, only %{public}ld lockups", v36, 0x16u);
        v37 = v36;
        v23 = v77;
        MEMORY[0x20F2F6A40](v37, -1, -1);
      }

      else
      {
      }

      (*v75)(v80, v76);
      v38 = __OFADD__(v15++, 1);
      if (v38)
      {
        goto LABEL_54;
      }

      v28 = 0xF000000000000007;
    }

    else
    {
      if (v15 < 0)
      {
        goto LABEL_55;
      }

      sub_20B864C34(v33 + v29 + v30 * v15, v79);
      if (v22)
      {
        v24 = 0;
        v26 = 0;
      }

      else
      {
        v24 = sub_20C135CE4();
        v26 = v25;
      }

      ++v15;
      v27 = v79;
      v28 = sub_20C02A8B8(v79);
      sub_20B9EA71C(v27, MEMORY[0x277D50C70]);
      if ((~v28 & 0xF000000000000007) != 0)
      {
        v39 = swift_allocObject();
        *(v39 + 16) = v24;
        *(v39 + 24) = v26;
        *(v39 + 32) = v28;
        sub_20B520158(v8, &qword_27C768E58);
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v6 = v74;
        if ((v40 & 1) == 0)
        {
          v71 = sub_20BC05D3C(0, *(v71 + 2) + 1, 1, v71);
        }

        v42 = *(v71 + 2);
        v41 = *(v71 + 3);
        if (v42 >= v41 >> 1)
        {
          v71 = sub_20BC05D3C((v41 > 1), v42 + 1, 1, v71);
        }

        v21 = v22 + 1;
        v43 = v71;
        *(v71 + 2) = v42 + 1;
        *&v43[8 * v42 + 32] = v39 | 0x3000000000000004;
        v44 = v61 == v22;
        v9 = v63;
        v10 = v62;
        if (v44)
        {
          goto LABEL_30;
        }

        goto LABEL_6;
      }

      v6 = v74;
      v23 = v77;
    }

    ++v22;
    sub_20B520158(v8, &qword_27C768E58);
    sub_20B9EAE04(v28);
    if (v23 == v22)
    {
      v9 = v63;
      v10 = v62;
      goto LABEL_30;
    }
  }

  __break(1u);
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
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t sub_20B9E88A0()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = (&v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B9E80DC();
  v57 = v4;
  sub_20C135DA4();
  v5 = sub_20C1352B4();
  v7 = v6;
  if (v5 == sub_20C1352B4() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_20C13DFF4();

    if ((v10 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_storefrontLocalizer + 24));
      v11 = sub_20C138D34();
      v55 = v12;
      v56 = v11;
      goto LABEL_9;
    }
  }

  v55 = 0;
  v56 = 0;
LABEL_9:
  v13 = (v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_mediaTagStringBuilder);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_mediaTagStringBuilder + 24));
  sub_20C135E04();
  v14 = sub_20C138544();

  v15 = [v14 string];

  v16 = sub_20C13C954();
  v18 = v17;

  __swift_project_boxed_opaque_existential_1(v13, v13[3]);

  sub_20C135D84();
  v19 = sub_20C138544();

  v20 = [v19 string];

  v21 = sub_20C13C954();
  v23 = v22;

  v24 = *(*(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_lazyLockupFetcher) + 144);
  LOBYTE(v20) = (v24 < 0x2F) & (0x4CE7B617E7E2uLL >> v24);
  v25 = sub_20C135D64();
  *&v58 = v56;
  *(&v58 + 1) = v55;
  LOBYTE(v59) = 1;
  *(&v59 + 1) = 0;
  *&v60 = 0;
  BYTE8(v60) = 0x80;
  BYTE9(v60) = v20;
  v61 = 0uLL;
  *&v62 = v25;
  *(&v62 + 1) = v26;
  *&v63 = v16;
  *(&v63 + 1) = v18;
  LOBYTE(v64) = 0;
  *(&v64 + 1) = v57;
  *&v65 = MEMORY[0x277D84F90];
  *(&v65 + 1) = v21;
  *&v66 = v23;
  *(&v66 + 1) = v16;
  *v67 = v18;
  *&v67[8] = xmmword_20C150190;
  nullsub_1(&v58);
  v27 = v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row;
  v28 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 144);
  v68[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 128);
  v68[9] = v28;
  v69 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 160);
  v29 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 80);
  v68[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 64);
  v68[5] = v29;
  v30 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 112);
  v68[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 96);
  v68[7] = v30;
  v31 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 16);
  v68[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row);
  v68[1] = v31;
  v32 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 48);
  v68[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 32);
  v68[3] = v32;
  v33 = *v67;
  *(v27 + 128) = v66;
  *(v27 + 144) = v33;
  *(v27 + 160) = *&v67[16];
  v34 = v63;
  *(v27 + 64) = v62;
  *(v27 + 80) = v34;
  v35 = v65;
  *(v27 + 96) = v64;
  *(v27 + 112) = v35;
  v36 = v59;
  *v27 = v58;
  *(v27 + 16) = v36;
  v37 = v61;
  *(v27 + 32) = v60;
  *(v27 + 48) = v37;
  sub_20B520158(v68, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v39 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v40 = sub_20B61DB80(v1, result);
      if (v41)
      {
        v43 = v40;
        v44 = v41;
        v45 = v42;
        sub_20B5E2E18();
        v46 = sub_20C13D374();
        v48 = v52;
        v47 = v53;
        *v52 = v46;
        v49 = v54;
        (*(v47 + 104))(v48, *MEMORY[0x277D85200], v54);
        v50 = sub_20C13C584();
        result = (*(v47 + 8))(v48, v49);
        if ((v50 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B621178(v43, v44, v45, v1, 1, v39);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B9E8D48()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_descriptor;
  v4 = sub_20C135E14();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_mediaTagStringBuilder);

  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 128);
  v11[9] = v5;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 160);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 64);
  v11[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 96);
  v11[7] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row);
  v11[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 32);
  v11[3] = v9;
  sub_20B520158(v11, &qword_27C762340);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_storefrontLocalizer);

  return v0;
}

uint64_t sub_20B9E8EBC()
{
  sub_20B9E8D48();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChartLockupsShelf()
{
  result = qword_27C768E48;
  if (!qword_27C768E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B9E8F68()
{
  result = sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    result = sub_20C135E14();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_20B9E907C()
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0);
  v1 = *(v43 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v43);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v40 - v10;
  MEMORY[0x28223BE20](v11);
  v48 = &v40 - v12;
  v44 = v0;
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_lazyLockupFetcher);
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_lazyLockups);
  v16 = v13[10];
  v15 = v13[11];
  __swift_project_boxed_opaque_existential_1(v13 + 7, v16);
  v17 = *(v15 + 8);
  v41 = v6;
  v17(v16, v15);
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v18 + 24) = v13;
  v19 = v6;
  v20 = v43;
  (*(v1 + 16))(v3, v19, v43);
  v21 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v22 = swift_allocObject();
  (*(v1 + 32))(v22 + v21, v3, v20);
  v23 = (v22 + ((v2 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_20B9EA780;
  v23[1] = v18;

  v24 = v42;
  sub_20C137C94();
  (*(v1 + 8))(v41, v20);
  v25 = swift_allocObject();
  v26 = v44;
  *(v25 + 16) = sub_20B9EAE1C;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_20B849B38;
  *(v27 + 24) = v25;
  v29 = v45;
  v28 = v46;
  v30 = v47;
  (*(v46 + 16))(v45, v24, v47);
  v31 = v28;
  v32 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v33 = swift_allocObject();
  (*(v31 + 32))(v33 + v32, v29, v30);
  v34 = (v33 + ((v8 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v34 = sub_20B66A8B4;
  v34[1] = v27;

  v35 = v48;
  sub_20C137C94();
  v36 = *(v31 + 8);
  v36(v24, v30);
  v37 = sub_20C137CB4();
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  v37(sub_20B5DF6DC, v38);

  v36(v35, v30);
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_20B9E95F4(uint64_t a1)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = v6;
    v34 = v9;
    sub_20C13B534();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1F4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20B517000, v16, v17, "[ChartLockupsShelf] archived sessions updated; updating row", v18, 2u);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    (*(v11 + 8))(v13, v10);

    v19 = sub_20C13AEB4();
    v20 = v33;
    sub_20C02CCD0(v19, v33);

    v21 = swift_allocObject();
    *(v21 + 16) = sub_20B9EAE1C;
    *(v21 + 24) = v15;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_20B849B38;
    *(v22 + 24) = v21;
    v23 = v32;
    (*(v2 + 16))(v32, v20, v1);
    v24 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v25 = swift_allocObject();
    (*(v2 + 32))(v25 + v24, v23, v1);
    v26 = (v25 + ((v3 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = sub_20B66A8B4;
    v26[1] = v22;

    v27 = v34;
    sub_20C137C94();
    v28 = *(v2 + 8);
    v28(v20, v1);
    v29 = sub_20C137CB4();
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v29(sub_20B5DF6DC, v30);

    return (v28)(v27, v1);
  }

  return result;
}

uint64_t sub_20B9E9A24(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20C02C77C(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B9EA77C;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B622D08;
  *(v15 + 24) = v14;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B5DF3D4;
  v18[1] = v15;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B52347C, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20B9E9CE8()
{
  v82 = sub_20C134014();
  v84 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v73 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_20C134A74();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v73 - v7;
  v9 = sub_20C136594();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v87 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v73);
  v74 = v0;
  v75 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_lazyLockups);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v88 = MEMORY[0x277D84F90];
    sub_20BB5D604(0, v14, 0);
    v15 = v88;
    v16 = v3;
    v17 = v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v85 = *(v16 + 72);
    v86 = (v10 + 32);
    v76 = (v84 + 8);
    v77 = (v84 + 32);
    v18 = v10;
    v79 = v2;
    v80 = v10;
    v78 = v5;
    do
    {
      sub_20B864C34(v17, v8);
      sub_20B864C34(v8, v5);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = v81;
        v20 = v82;
        (*v77)(v81, v5, v82);
        v21 = sub_20C133E44();
        v83 = v22;
        v84 = v21;
        sub_20C133E94();
        sub_20C133FA4();
        v5 = v78;
        sub_20C136554();
        v23 = v19;
        v18 = v80;
        (*v76)(v23, v20);
        sub_20B9EA71C(v8, MEMORY[0x277D50C70]);
      }

      else
      {
        sub_20B9EA71C(v8, MEMORY[0x277D50C70]);
        (*v86)(v87, v5, v9);
      }

      v88 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_20BB5D604(v24 > 1, v25 + 1, 1);
        v18 = v80;
        v15 = v88;
      }

      *(v15 + 16) = v25 + 1;
      (*(v18 + 32))(v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v25, v87, v9);
      v17 += v85;
      --v14;
    }

    while (v14);
  }

  v26 = sub_20C136664();
  v27 = v75;
  (*(*(v26 - 8) + 56))(v75, 1, 1, v26);
  v28 = v73;
  v29 = *(v73 + 20);
  v30 = *MEMORY[0x277D51488];
  v31 = sub_20C134F24();
  (*(*(v31 - 8) + 104))(v27 + v29, v30, v31);
  v32 = v28[6];
  v33 = sub_20C132C14();
  (*(*(v33 - 8) + 56))(v27 + v32, 1, 1, v33);
  v34 = v74;
  v87 = OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_descriptor;
  v35 = sub_20C135D64();
  v37 = v36;
  v38 = v28[8];
  v39 = *MEMORY[0x277D523F0];
  v40 = sub_20C135ED4();
  v41 = *(v40 - 8);
  (*(v41 + 104))(v27 + v38, v39, v40);
  (*(v41 + 56))(v27 + v38, 0, 1, v40);
  v42 = v28[10];
  v43 = *MEMORY[0x277D51788];
  v44 = sub_20C1352E4();
  (*(*(v44 - 8) + 104))(v27 + v42, v43, v44);
  v45 = v28[11];
  v46 = sub_20C136E94();
  v47 = v27 + v45;
  v48 = v27;
  (*(*(v46 - 8) + 56))(v47, 1, 1, v46);
  v49 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v50 = (v27 + v28[7]);
  *v50 = v35;
  v50[1] = v37;
  v51 = (v27 + v28[9]);
  *v51 = 0;
  v51[1] = 0;
  *(v27 + v28[12]) = v49;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BFA0360(v34, v27, Strong);
    swift_unknownObjectRelease();
  }

  v53 = swift_unknownObjectWeakLoadStrong();
  if (v53)
  {
    v54 = v53;
    v86 = v15;
    v55 = (v34 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_mediaTagStringBuilder);
    __swift_project_boxed_opaque_existential_1((v34 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_mediaTagStringBuilder), *(v34 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_mediaTagStringBuilder + 24));
    sub_20C135D94();
    v56 = sub_20C138544();

    v57 = [v56 string];

    v84 = sub_20C13C954();
    v85 = v58;

    __swift_project_boxed_opaque_existential_1(v55, v55[3]);
    sub_20C135DD4();
    v59 = sub_20C138544();

    v60 = [v59 string];

    v61 = sub_20C13C954();
    v63 = v62;

    v64 = sub_20C135D64();
    v66 = v65;
    v67 = sub_20C135DA4();
    v68 = sub_20C135DC4();
    v69 = v54 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v70 = *(v69 + 8);
      ObjectType = swift_getObjectType();
      (*(v70 + 96))(v54, v84, v85, v61, v63, v64, v66, v67, v68, v86, ObjectType, v70);
      swift_unknownObjectRelease();
    }

    v48 = v75;
    swift_unknownObjectRelease();
  }

  return sub_20B9EA71C(v48, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20B9EA588@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B9EA600@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
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

BOOL sub_20B9EA6B8(_BOOL8 result)
{
  if (!__OFADD__(result, 1))
  {
    return 0xAAAAAAAAAAAAAAABLL * (result + 1) + 0x2AAAAAAAAAAAAAAALL > 0x5555555555555554;
  }

  __break(1u);
  return result;
}

uint64_t sub_20B9EA71C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B9EA790(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B9EA858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v53 = sub_20C135D04();
  v8 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v11 = v4 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_row;
  sub_20B5D8060(v55);
  v12 = v55[9];
  *(v11 + 128) = v55[8];
  *(v11 + 144) = v12;
  *(v11 + 160) = v56;
  v13 = v55[5];
  *(v11 + 64) = v55[4];
  *(v11 + 80) = v13;
  v14 = v55[7];
  *(v11 + 96) = v55[6];
  *(v11 + 112) = v14;
  v15 = v55[1];
  *v11 = v55[0];
  *(v11 + 16) = v15;
  v16 = v55[3];
  *(v11 + 32) = v55[2];
  *(v11 + 48) = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_descriptor;
  v18 = sub_20C135E14();
  v48 = *(v18 - 8);
  v19 = *(v48 + 16);
  v49 = v18;
  v19(v4 + v17, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v4 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_eventHub) = v54[0];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v54, v4 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_mediaTagStringBuilder);
  *(v4 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_lockupGroups) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  v50 = a1;
  sub_20C133AA4();
  sub_20B51C710(v54, v4 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_subscriptionToken) = sub_20C13A914();
  v20 = *(a2 + 16);
  if (!v20)
  {

    v26 = MEMORY[0x277D84F90];
LABEL_20:
    v39 = MEMORY[0x277D84F90];
    *(v4 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_lazyLockups) = v26;
    v40 = sub_20C135D74();
    type metadata accessor for ShelfLazyLockupFetcher();
    v41 = swift_allocObject();
    *(v41 + 152) = v39;
    v42 = sub_20B6B0C04(v39);
    v43 = MEMORY[0x277D84FA0];
    *(v41 + 160) = v42;
    *(v41 + 168) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
    sub_20C133AA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0);
    sub_20C133AA4();
    sub_20C133AA4();
    (*(v48 + 8))(a3, v49);
    *(v41 + 136) = 20;
    *(v41 + 144) = v40;
    *(v41 + 145) = 0;
    *(v4 + OBJC_IVAR____TtC9SeymourUI17ChartLockupsShelf_lazyLockupFetcher) = v41;
    return v4;
  }

  v45 = a3;
  v46 = v4;
  v22 = *(v8 + 16);
  v21 = v8 + 16;
  v52 = v22;
  v23 = (*(v21 + 64) + 32) & ~*(v21 + 64);
  v44 = a2;
  v24 = a2 + v23;
  v51 = *(v21 + 56);
  v25 = (v21 - 8);
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    v28 = v53;
    v52(v10, v24, v53);
    v29 = sub_20C135CF4();
    result = (*v25)(v10, v28);
    v30 = *(v29 + 16);
    v31 = v26[2];
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v32 <= v26[3] >> 1)
    {
      if (*(v29 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v31 <= v32)
      {
        v34 = v31 + v30;
      }

      else
      {
        v34 = v31;
      }

      v26 = sub_20BC07AB8(isUniquelyReferenced_nonNull_native, v34, 1, v26);
      if (*(v29 + 16))
      {
LABEL_14:
        v35 = (v26[3] >> 1) - v26[2];
        result = sub_20C134A74();
        if (v35 < v30)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v30)
        {
          v36 = v26[2];
          v37 = __OFADD__(v36, v30);
          v38 = v36 + v30;
          if (v37)
          {
            goto LABEL_24;
          }

          v26[2] = v38;
        }

        goto LABEL_4;
      }
    }

    if (v30)
    {
      goto LABEL_22;
    }

LABEL_4:
    v24 += v51;
    if (!--v20)
    {

      v4 = v46;
      a3 = v45;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20B9EAE04(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t WorkoutPlanRepetitionRequested.template.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C137374();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutPlanRepetitionRequested.init(template:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C137374();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t static WorkoutPlanRepetitionRequested.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for WorkoutPlanRepetitionRequested()
{
  result = qword_27C768E60;
  if (!qword_27C768E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B9EAFE0()
{
  result = sub_20C137374();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20B9EB074(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:0];
  v8 = [v7 fontDescriptorWithSymbolicTraits_];
  if (v8)
  {
    v9 = v8;

    v7 = v9;
  }

  v10 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];

  *a3 = v10;
}

void sub_20B9EB164(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = *MEMORY[0x277D74418];
  v6 = objc_opt_self();
  v7 = v4;
  v8 = [v6 preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v10 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v11 = swift_initStackObject();
  v12 = MEMORY[0x277D74430];
  *(v11 + 16) = xmmword_20C14F980;
  v13 = *v12;
  *(v11 + 32) = *v12;
  *(v11 + 40) = v5;
  v14 = v10;
  v15 = v13;
  v16 = sub_20B6B134C(v11);
  swift_setDeallocating();
  sub_20B520158(v11 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v16;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v17 = sub_20C13C744();

  v18 = [v8 fontDescriptorByAddingAttributes_];

  v19 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
  *a3 = v19;
}

uint64_t sub_20B9EB398()
{
  result = _UISolariumEnabled();
  v1 = 12.0;
  if (result)
  {
    v1 = -12.0;
  }

  qword_27C768E90 = *&v1;
  return result;
}

uint64_t sub_20B9EB3C8()
{
  result = _UISolariumEnabled();
  v1 = 20.0;
  if (result)
  {
    v1 = 0.0;
  }

  qword_27C768E98 = *&v1;
  return result;
}

uint64_t sub_20B9EB3F8()
{
  result = _UISolariumEnabled();
  v1 = 20.0;
  if (result)
  {
    v1 = -12.0;
  }

  qword_27C768EA0 = *&v1;
  return result;
}

id sub_20B9EB428()
{
  result = [objc_opt_self() whiteColor];
  qword_27C768EA8 = result;
  return result;
}

char *sub_20B9EB464(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_20C1380F4();
  v4 = sub_20C138104();
  if (v4 == sub_20C138104())
  {
    if (qword_27C760868 != -1)
    {
      swift_once();
    }

    v5 = &qword_27C768E70;
  }

  else
  {
    if (qword_27C760870 != -1)
    {
      swift_once();
    }

    v5 = &qword_27C768E78;
  }

  v6 = OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutTitleLabel;
  [v3 setFont_];
  v7 = [objc_opt_self() labelColor];
  [v3 setTextColor_];

  [v3 setLineBreakMode_];
  [v3 setNumberOfLines_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v6] = v3;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_20C1380F4();
  v9 = sub_20C138104();
  if (v9 == sub_20C138104())
  {
    if (qword_27C760878 != -1)
    {
      swift_once();
    }

    v10 = &qword_27C768E80;
  }

  else
  {
    if (qword_27C760880 != -1)
    {
      swift_once();
    }

    v10 = &qword_27C768E88;
  }

  v11 = OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutDetailLabel;
  [v8 setFont_];
  if (qword_27C7608A0 != -1)
  {
    swift_once();
  }

  [v8 setTextColor_];
  [v8 setLineBreakMode_];
  [v8 setNumberOfLines_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v11] = v8;
  v12 = OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutInstructionStackView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v13 setAxis_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v12] = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutInstructionsStackViewBottomConstraint;
  *&v1[v14] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *&v1[OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_presenter] = a1;
  v24.receiver = v1;
  v24.super_class = type metadata accessor for PhoneSessionInstructionsView();

  v15 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *(a1 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display + 8) = &off_2822BD170;
  swift_unknownObjectWeakAssign();
  v16 = OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutInstructionStackView;
  v17 = *&v15[OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutInstructionStackView];
  v18 = v15;
  [v18 addSubview_];
  v19 = OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutTitleLabel;
  [*&v15[v16] addArrangedSubview_];
  if (_UISolariumEnabled())
  {
    [*&v18[v19] setHidden_];
  }

  sub_20C1380F4();
  v20 = sub_20C138104();
  v21 = sub_20C138104();
  v22 = 5.0;
  if (v20 == v21)
  {
    v22 = 0.0;
  }

  [*&v15[v16] setCustomSpacing:*&v18[v19] afterView:v22];
  [*&v15[v16] addArrangedSubview_];
  [v18 setUserInteractionEnabled_];
  sub_20B9EBAC8();

  return v18;
}

id sub_20B9EB928()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for PhoneSessionInstructionsView();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v1 = sub_20C138104();
  if (v1 == sub_20C138104())
  {
    [v0 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v14.width = 16.0;
    v14.height = 9.0;
    v16.origin.x = v3;
    v16.origin.y = v5;
    v16.size.width = v7;
    v16.size.height = v9;
    v15 = AVMakeRectWithAspectRatioInsideRect(v14, v16);
    if (qword_27C760898 != -1)
    {
      y = v15.origin.y;
      swift_once();
      v15.origin.y = y;
    }

    v10 = v15.origin.y + *&qword_27C768EA0;
  }

  else
  {
    if (qword_27C760898 != -1)
    {
      swift_once();
    }

    v10 = *&qword_27C768EA0;
  }

  [*&v0[OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutInstructionsStackViewBottomConstraint] setConstant_];
  return [v0 setNeedsUpdateConstraints];
}

void sub_20B9EBAC8()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutInstructionStackView];
  v2 = [v1 bottomAnchor];
  v3 = [v0 bottomAnchor];
  v4 = [v2 constraintLessThanOrEqualToAnchor_];

  v5 = OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutInstructionsStackViewBottomConstraint;
  v6 = *&v0[OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutInstructionsStackViewBottomConstraint];
  *&v0[OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutInstructionsStackViewBottomConstraint] = v4;

  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20C14FE90;
  v9 = [v1 bottomAnchor];
  v10 = [v0 safeAreaLayoutGuide];
  v11 = [v10 bottomAnchor];

  if (qword_27C760888 != -1)
  {
    swift_once();
  }

  v12 = [v9 constraintEqualToAnchor:v11 constant:-*&qword_27C768E90];

  LODWORD(v13) = 1144750080;
  [v12 setPriority_];
  v14 = *&v0[v5];
  *(v8 + 32) = v12;
  *(v8 + 40) = v14;
  v15 = v14;
  v16 = [v1 leadingAnchor];
  v17 = [v0 safeAreaLayoutGuide];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  LODWORD(v20) = 1144750080;
  [v19 setPriority_];
  *(v8 + 48) = v19;
  v21 = [v1 leadingAnchor];
  v22 = [v0 leadingAnchor];
  if (qword_27C760890 != -1)
  {
    swift_once();
  }

  v23 = [v21 constraintGreaterThanOrEqualToAnchor:v22 constant:*&qword_27C768E98];

  *(v8 + 56) = v23;
  v24 = sub_20B9EBE24();
  sub_20B8D9310(v24);
  sub_20B5E29D0();
  v25 = sub_20C13CC54();

  [v7 activateConstraints_];
}

uint64_t sub_20B9EBE24()
{
  sub_20C1380F4();
  v1 = sub_20C138104();
  v2 = sub_20C138104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  if (v1 == v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_20C14FE90;
    v4 = *&v0[OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutInstructionStackView];
    v5 = [v4 trailingAnchor];
    v6 = [v0 safeAreaLayoutGuide];
    v7 = [v6 trailingAnchor];

    v8 = [v5 constraintEqualToAnchor_];
    LODWORD(v9) = 1144750080;
    [v8 setPriority_];
    *(v3 + 32) = v8;
    v10 = [v4 trailingAnchor];
    v11 = [v0 trailingAnchor];
    if (qword_27C760890 != -1)
    {
      swift_once();
    }

    v12 = [v10 constraintLessThanOrEqualToAnchor:v11 constant:-*&qword_27C768E98];

    *(v3 + 40) = v12;
    v13 = [*&v0[OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutTitleLabel] widthAnchor];
    v14 = [v4 widthAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v3 + 48) = v15;
    v16 = (v3 + 56);
    v17 = [*&v0[OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutDetailLabel] widthAnchor];
    v18 = [v4 widthAnchor];
    v19 = [v17 constraintEqualToAnchor_];
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_20C151490;
    v20 = [*&v0[OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutTitleLabel] widthAnchor];
    v21 = [v0 safeAreaLayoutGuide];
    v22 = [v21 widthAnchor];

    v23 = [v20 constraintEqualToAnchor:v22 multiplier:0.75];
    *(v3 + 32) = v23;
    v16 = (v3 + 40);
    v17 = [*&v0[OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutDetailLabel] widthAnchor];
    v24 = [v0 safeAreaLayoutGuide];
    v18 = [v24 widthAnchor];

    v19 = [v17 constraintEqualToAnchor:v18 multiplier:0.75];
  }

  v25 = v19;

  *v16 = v25;
  return v3;
}

id sub_20B9EC1EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhoneSessionInstructionsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20B9EC2C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutDetailLabel);
  [v2 setAttributedText_];
  v3 = [objc_opt_self() whiteColor];
  [v2 setTextColor_];

  return [v2 setHidden_];
}

uint64_t sub_20B9EC358(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  sub_20BC04528(sub_20B9ECB3C, v2);
}

id sub_20B9EC3C8()
{
  v1 = sub_20C138104();
  if (v1 == sub_20C138104())
  {
    [v0 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v14.width = 16.0;
    v14.height = 9.0;
    v16.origin.x = v3;
    v16.origin.y = v5;
    v16.size.width = v7;
    v16.size.height = v9;
    v15 = AVMakeRectWithAspectRatioInsideRect(v14, v16);
    if (qword_27C760898 != -1)
    {
      y = v15.origin.y;
      swift_once();
      v15.origin.y = y;
    }

    v10 = v15.origin.y + *&qword_27C768EA0;
  }

  else
  {
    if (qword_27C760898 != -1)
    {
      swift_once();
    }

    v10 = *&qword_27C768EA0;
  }

  [*&v0[OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutInstructionsStackViewBottomConstraint] setConstant_];

  return [v0 setNeedsUpdateConstraints];
}

void sub_20B9EC514()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setAlpha_];
  }
}

id sub_20B9EC574(char a1, char a2)
{
  if (a2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = a1 & 1;
    v5 = v2;
    sub_20BC04528(sub_20B9ECB5C, v4);
  }

  else
  {
    v7 = 0.0;
    if (a1)
    {
      v7 = 1.0;
    }

    return [v2 setAlpha_];
  }
}

void sub_20B9EC644()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutDetailLabel) font];
  if (v1)
  {
    v2 = v1;
    [v1 capHeight];
  }

  else
  {
    __break(1u);
  }
}

void sub_20B9EC6B0(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_20B9EC7C0;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_20B7B548C;
  v7[3] = &block_descriptor_66;
  v6 = _Block_copy(v7);

  [v4 animateWithDuration:0 delay:v6 usingSpringWithDamping:0 initialSpringVelocity:a1 options:a2 animations:1.0 completion:0.0];
  _Block_release(v6);
}

id sub_20B9EC7C8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *&v4[OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutTitleLabel];
  v9 = _UISolariumEnabled();
  if (a2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  [v8 setHidden_];
  if (a2)
  {
    v11 = sub_20C13C914();
    [v8 setText_];
  }

  v12 = *&v4[OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutDetailLabel];
  [v12 setHidden_];
  if (a3)
  {
    v13 = a3;
    [v12 setAttributedText_];
    if (qword_27C7608A0 != -1)
    {
      swift_once();
    }

    [v12 setTextColor_];
  }

  if (a4)
  {
    v14 = a4;
    [v12 setAlpha_];
    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = v4;
    v17 = objc_opt_self();
    v29 = sub_20B9ECB2C;
    v30 = v15;
    v25 = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_20B7B548C;
    v28 = &block_descriptor_13_1;
    v18 = _Block_copy(&v25);
    v19 = v4;
    v20 = v14;
    v21 = v19;

    v22 = swift_allocObject();
    *(v22 + 16) = sub_20B9ECB34;
    *(v22 + 24) = v16;
    v29 = sub_20B78E220;
    v30 = v22;
    v25 = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_20BC044C8;
    v28 = &block_descriptor_19_1;
    v23 = _Block_copy(&v25);

    [v17 smu:v18 animateUsingSpringWithTension:v23 friction:500.0 animations:40.0 completion:?];
    _Block_release(v23);
    _Block_release(v18);
  }

  else
  {
    [v12 setAlpha_];

    return [v12 setHidden_];
  }
}

id sub_20B9ECB5C()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha_];
}

void sub_20B9ECB80()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_20C1380F4();
  v2 = sub_20C138104();
  if (v2 == sub_20C138104())
  {
    if (qword_27C760868 != -1)
    {
      swift_once();
    }

    v3 = &qword_27C768E70;
  }

  else
  {
    if (qword_27C760870 != -1)
    {
      swift_once();
    }

    v3 = &qword_27C768E78;
  }

  v4 = OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutTitleLabel;
  [v1 setFont_];
  v5 = [objc_opt_self() labelColor];
  [v1 setTextColor_];

  [v1 setLineBreakMode_];
  [v1 setNumberOfLines_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v1;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_20C1380F4();
  v7 = sub_20C138104();
  if (v7 == sub_20C138104())
  {
    if (qword_27C760878 != -1)
    {
      swift_once();
    }

    v8 = &qword_27C768E80;
  }

  else
  {
    if (qword_27C760880 != -1)
    {
      swift_once();
    }

    v8 = &qword_27C768E88;
  }

  v9 = OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutDetailLabel;
  [v6 setFont_];
  if (qword_27C7608A0 != -1)
  {
    swift_once();
  }

  [v6 setTextColor_];
  [v6 setLineBreakMode_];
  [v6 setNumberOfLines_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v9) = v6;
  v10 = OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutInstructionStackView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v11 setAxis_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v10) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI28PhoneSessionInstructionsView_workoutInstructionsStackViewBottomConstraint;
  *(v0 + v12) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t WorkoutPlanWeekdayDetailViewController.resignActiveObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

char *WorkoutPlanWeekdayDetailViewController.__allocating_init(dependencies:pageNavigator:workoutPlan:offset:completedReferencesMetrics:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v41 = a4;
  v36 = a3;
  v37 = a2;
  v38 = a1;
  v7 = sub_20C135214();
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  MEMORY[0x28223BE20](v7);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = sub_20C133954();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  sub_20B51CC64(a2, v43);
  v20 = *(v14 + 16);
  v20(v19, a3, v13);
  v21 = *(v8 + 16);
  v35 = v12;
  v22 = v33;
  v21(v12, v41, v33);
  v20(v16, v19, v13);
  v23 = v32;
  v21(v32, v12, v22);
  type metadata accessor for WorkoutPlanWeekdayDetailPageDataProvider();
  swift_allocObject();
  v24 = v38;
  v25 = sub_20B58C3D4(v38, v16, v23, v39, 0, 0);
  sub_20B51CC64(v43, v42);
  v26 = objc_allocWithZone(v40);
  v27 = sub_20B9EE32C(v24, v25, v42);

  v28 = *(v34 + 8);
  v28(v41, v22);
  v29 = *(v14 + 8);
  v29(v36, v13);
  __swift_destroy_boxed_opaque_existential_1(v37);
  v28(v35, v22);
  v29(v19, v13);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v27;
}

char *WorkoutPlanWeekdayDetailViewController.__allocating_init(dependencies:pageNavigator:workoutPlan:offset:completedReferencesMetrics:pageContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v25 = a5;
  v26 = a6;
  v11 = sub_20C135214();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C133954();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a3, v15, v17);
  (*(v12 + 16))(v14, a4, v11);
  type metadata accessor for WorkoutPlanWeekdayDetailPageDataProvider();
  swift_allocObject();
  v20 = sub_20B58C3D4(a1, v19, v14, v25, v26, v27);
  sub_20B51CC64(a2, v29);
  v21 = objc_allocWithZone(v28);
  v22 = sub_20B9EE32C(a1, v20, v29);

  (*(v12 + 8))(a4, v11);
  (*(v16 + 8))(a3, v15);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v22;
}

Swift::Void __swiftcall WorkoutPlanWeekdayDetailViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_20B794934(0);
  sub_20B7960C4();
  [*(*(*&v0[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider] + 256) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setAlwaysBounceVertical_];
}

Swift::Void __swiftcall WorkoutPlanWeekdayDetailViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidAppear_, a1);
  sub_20B589790();
  sub_20B9EE6E8(&qword_27C768EF8);
  sub_20B9EE6E8(&qword_27C768F00);
  sub_20C139364();
}

Swift::Void __swiftcall WorkoutPlanWeekdayDetailViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_viewWillDisappear_, a1, v6);
  v10 = v1;
  sub_20C132E84();
  sub_20B9EE6E8(&qword_27C768EF8);
  sub_20C139274();
  (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall WorkoutPlanWeekdayDetailViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1);
  sub_20B9EE6E8(&qword_27C768EF8);
  sub_20B9EE6E8(&qword_27C768F00);
  sub_20C139374();
}

Swift::Void __swiftcall WorkoutPlanWeekdayDetailViewController.viewDidLayoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  v1 = *(*&v0[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider] + 256);
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v3 = v1;
  [v2 bounds];
  sub_20B9D8614(v4, v5, v6, v7);
}

id WorkoutPlanWeekdayDetailViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WorkoutPlanWeekdayDetailViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B9EE09C@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(*(*v1 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider) + 256) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker);
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v4 - 8) + 16);

  return v8(boxed_opaque_existential_1, v6, v4);
}

uint64_t sub_20B9EE1C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20B9EE2A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v5 = sub_20B9EE6E8(&qword_27C768EF8);

  return a3(ObjectType, v5, a2);
}

char *sub_20B9EE32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dynamicOfferCoordinator;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v10 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_purchaseCoordinator;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v11 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_purchaseHandler;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  v12 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_webUserInterfaceCoordinator;
  *&v4[v12] = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  v4[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_visibility] = 1;
  *&v4[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_resignActiveObserver] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider] = a2;
  *&v4[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *&v4[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_bag] = *&v19[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v4[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_eventHub] = v19[0];
  sub_20B51CC64(a3, &v4[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_pageNavigator]);
  sub_20C133AA4();
  v4[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_platform] = v19[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v19, &v4[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v19, &v4[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer]);
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(a3);
  *(*&v13[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider] + 24) = &off_2822BD358;
  swift_unknownObjectWeakAssign();
  v14 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_purchaseHandler;
  v15 = &v13[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_eventHub];
  *(*&v13[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_purchaseHandler] + OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub + 8) = *&v13[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_eventHub + 8];
  swift_unknownObjectWeakAssign();
  *(*&v13[v14] + OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub + 8) = *(v15 + 1);
  swift_unknownObjectWeakAssign();
  v16 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_purchaseCoordinator;
  swift_unknownObjectWeakAssign();
  *(*&v13[v16] + OBJC_IVAR____TtC9SeymourUI28MarketingPurchaseCoordinator_eventHub + 8) = *(v15 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *(*&v13[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dynamicOfferCoordinator] + OBJC_IVAR____TtC9SeymourUI32MarketingDynamicOfferCoordinator_eventHub + 8) = *(v15 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  return v13;
}

uint64_t sub_20B9EE6E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutPlanWeekdayDetailViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20B9EE77C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dynamicOfferCoordinator;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v2 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_purchaseCoordinator;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v3 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_purchaseHandler;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  v4 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_webUserInterfaceCoordinator;
  *(v0 + v4) = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_visibility) = 1;
  *(v0 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_resignActiveObserver) = 0;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20B9EE890(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_layout];
  *v11 = xmmword_20C167B70;
  *(v11 + 1) = xmmword_20C167B80;
  *(v11 + 4) = 0x4034000000000000;
  v12 = &v4[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_artworkView];
  v13 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *v12 = v13;
  *(v12 + 1) = &off_2822B63E8;
  v14 = OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_shadowView;
  v15 = [objc_allocWithZone(type metadata accessor for VibrantShadowView()) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v14] = v15;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setAdjustsFontForContentSizeCategory_];
  v17 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8] compatibleWithTraitCollection:0];
  v18 = [v17 fontDescriptorWithSymbolicTraits_];
  if (v18)
  {
    v19 = v18;

    v17 = v19;
  }

  v20 = OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_titleLabel;
  v21 = [objc_opt_self() fontWithDescriptor:v17 size:0.0];

  [v16 setFont_];
  [v16 setAllowsDefaultTighteningForTruncation_];
  LODWORD(v22) = 1148846080;
  [v16 setContentCompressionResistancePriority:0 forAxis:v22];

  v23 = [objc_opt_self() whiteColor];
  [v16 setTextColor_];

  [v16 setLineBreakMode_];
  [v16 setNumberOfLines_];
  *&v4[v20] = v16;
  v24 = OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_textContainer;
  v25 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v24] = v25;
  v26 = &v4[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_oldSize];
  v27 = type metadata accessor for RoundedDetailHeaderCell();
  *v26 = 0;
  *(v26 + 1) = 0;
  v113.receiver = v4;
  v113.super_class = v27;
  v28 = objc_msgSendSuper2(&v113, sel_initWithFrame_, a1, a2, a3, a4);
  v29 = [v28 contentView];
  [v29 setClipsToBounds_];

  v30 = [v28 &selRef_setMaximumFractionDigits_];
  v31 = [v30 layer];

  [v31 setCornerRadius_];
  v32 = [v28 &selRef_setMaximumFractionDigits_];
  v33 = [v32 layer];

  [v33 setCornerCurve_];
  v34 = &v28[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_artworkView];
  v35 = *&v28[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_artworkView];
  v36 = *&v28[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_artworkView + 8];
  ObjectType = swift_getObjectType();
  v38 = *(v36 + 288);
  v39 = v35;
  v38(2, ObjectType, v36);

  v40 = [v28 &selRef_setMaximumFractionDigits_];
  [v40 addSubview_];

  v41 = [v28 &selRef_setMaximumFractionDigits_];
  v110 = OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_shadowView;
  [v41 addSubview_];

  v42 = [v28 &selRef_setMaximumFractionDigits_];
  v43 = OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_textContainer;
  [v42 addSubview_];

  v109 = OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_titleLabel;
  [*&v28[v43] addSubview_];
  v111 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_20C1530F0;
  v45 = [*v34 leadingAnchor];
  v46 = [v28 &selRef_setMaximumFractionDigits_];
  v47 = [v46 leadingAnchor];

  v48 = [v45 constraintEqualToAnchor_];
  *(v44 + 32) = v48;
  v49 = [*v34 trailingAnchor];
  v50 = [v28 &selRef_setMaximumFractionDigits_];
  v51 = [v50 trailingAnchor];

  v52 = [v49 constraintEqualToAnchor_];
  *(v44 + 40) = v52;
  v53 = [*v34 topAnchor];
  v54 = [v28 &selRef_setMaximumFractionDigits_];
  v55 = [v54 &selRef_setLineBreakMode_];

  v56 = [v53 constraintEqualToAnchor_];
  *(v44 + 48) = v56;
  v57 = [*v34 bottomAnchor];
  v58 = [v28 &selRef_setMaximumFractionDigits_];
  v59 = [v58 &selRef_secondaryLabel + 5];

  v60 = [v57 constraintEqualToAnchor_];
  *(v44 + 56) = v60;
  v61 = [*v34 heightAnchor];
  v62 = [v28 &selRef_setMaximumFractionDigits_];
  v63 = [v62 widthAnchor];

  v64 = [v61 constraintEqualToAnchor:v63 multiplier:0.5625];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v65) = v112;
  [v64 setPriority_];
  *(v44 + 64) = v64;
  v66 = [*&v28[v43] leadingAnchor];
  v67 = [v28 &selRef_setMaximumFractionDigits_];
  v68 = [v67 leadingAnchor];

  v69 = [v66 constraintEqualToAnchor_];
  *(v44 + 72) = v69;
  v70 = [*&v28[v43] trailingAnchor];
  v71 = [v28 &selRef_setMaximumFractionDigits_];
  v72 = [v71 trailingAnchor];

  v73 = [v70 constraintEqualToAnchor_];
  *(v44 + 80) = v73;
  v74 = [*&v28[v43] topAnchor];
  v75 = [v28 &selRef_setMaximumFractionDigits_];
  v76 = [v75 topAnchor];

  v77 = [v74 constraintEqualToAnchor_];
  *(v44 + 88) = v77;
  v78 = [*&v28[v43] bottomAnchor];
  v79 = [v28 &selRef_setMaximumFractionDigits_];
  v80 = [v79 bottomAnchor];

  v81 = [v78 constraintEqualToAnchor_];
  *(v44 + 96) = v81;
  v82 = [*&v28[v109] leadingAnchor];
  v83 = [*&v28[v43] leadingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:20.0];

  *(v44 + 104) = v84;
  v85 = [*&v28[v109] trailingAnchor];
  v86 = [*&v28[v43] trailingAnchor];
  v87 = [v85 constraintLessThanOrEqualToAnchor:v86 constant:-20.0];

  *(v44 + 112) = v87;
  v88 = [*&v28[v109] lastBaselineAnchor];
  v89 = [*&v28[v43] bottomAnchor];
  v90 = [v88 constraintEqualToAnchor:v89 constant:-21.0];

  *(v44 + 120) = v90;
  v91 = [*&v28[v110] leadingAnchor];
  v92 = [v28 contentView];
  v93 = [v92 leadingAnchor];

  v94 = [v91 constraintEqualToAnchor_];
  *(v44 + 128) = v94;
  v95 = [*&v28[v110] trailingAnchor];
  v96 = [v28 contentView];
  v97 = [v96 trailingAnchor];

  v98 = [v95 constraintEqualToAnchor_];
  *(v44 + 136) = v98;
  v99 = [*&v28[v110] topAnchor];
  v100 = [v28 contentView];
  v101 = [v100 topAnchor];

  v102 = [v99 constraintEqualToAnchor_];
  *(v44 + 144) = v102;
  v103 = [*&v28[v110] bottomAnchor];
  v104 = [v28 contentView];

  v105 = [v104 bottomAnchor];
  v106 = [v103 constraintEqualToAnchor_];

  *(v44 + 152) = v106;
  sub_20B51C88C(0, &qword_281100500);
  v107 = sub_20C13CC54();

  [v111 activateConstraints_];

  return v28;
}

void sub_20B9EFA78(void *a1, void *a2)
{
  v5 = [v2 window];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;

  if (a2)
  {
    v11 = a2;
    v12 = [v11 preferredContentSizeCategory];
    v13 = [a1 preferredContentSizeCategory];
    v14 = sub_20C13C954();
    v16 = v15;
    if (v14 == sub_20C13C954() && v16 == v17)
    {

      v18 = 0;
    }

    else
    {
      v21 = sub_20C13DFF4();

      v18 = v21 ^ 1;
    }

    v19 = &v2[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_oldSize];
    if (*&v2[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_oldSize] == v8 && *&v2[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_oldSize + 8] == v10)
    {
      if ((v18 & 1) == 0)
      {
        return;
      }

      goto LABEL_19;
    }

LABEL_17:
    *v19 = v8;
    v19[1] = v10;
LABEL_19:

    sub_20B9EFDD0(a1, v8, v10);
    return;
  }

  v19 = &v2[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_oldSize];
  if (*&v2[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_oldSize] != v8 || *&v2[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_oldSize + 8] != v10)
  {
    goto LABEL_17;
  }
}

void sub_20B9EFC30(uint64_t a1, uint64_t a2, char a3, void *a4, void *a5)
{
  if (a3)
  {
    return;
  }

  v7 = *&a1;
  v8 = *&a2;
  if (a5)
  {
    v9 = a1;
    v10 = a2;
    v11 = a5;
    v12 = [v11 preferredContentSizeCategory];
    v13 = [a4 preferredContentSizeCategory];
    v14 = sub_20C13C954();
    v16 = v15;
    if (v14 == sub_20C13C954() && v16 == v17)
    {

      v20 = 0;
    }

    else
    {
      v19 = sub_20C13DFF4();

      v20 = v19 ^ 1;
    }

    v21 = (v5 + OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_oldSize);
    v23 = *(v5 + OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_oldSize) == v7 && *(v5 + OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_oldSize + 8) == v8;
    a2 = v10;
    a1 = v9;
    if (v23)
    {
      if ((v20 & 1) == 0)
      {
        return;
      }

      goto LABEL_21;
    }

LABEL_19:
    *v21 = *&a1;
    v21[1] = *&a2;
LABEL_21:

    sub_20B9EFDD0(a4, v7, v8);
    return;
  }

  v21 = (v5 + OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_oldSize);
  if (*(v5 + OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_oldSize) != *&a1 || *(v5 + OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_oldSize + 8) != *&a2)
  {
    goto LABEL_19;
  }
}

void sub_20B9EFDD0(void *a1, double a2, double a3)
{
  sub_20B9F1C3C(&v34, a2, a3);
  v5 = v40;
  if (v40)
  {
    v7 = v38;
    v6 = v39;
    v30 = v42;
    v31 = v41;
    v8 = v44;
    v29 = v43;
    [v3 bounds];
    Width = CGRectGetWidth(v53);
    [v3 bounds];
    Height = CGRectGetHeight(v54);
    v11 = *&v3[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_titleLabel];
    v12 = [v11 attributedText];
    if (v12 && (v13 = v12, v45 = v34, v46 = v35, v47 = v36, v48 = v37, v14 = sub_20B7C6A74(a1), v15 = sub_20B914D2C(v14, 1, Width + -40.0, Height), v13, v14, !v15))
    {
      v25 = [v11 attributedText];
      if (v25)
      {
        v26 = v25;
        v28 = a1;
        *&v49 = v7;
        *(&v49 + 1) = v6;
        *&v50 = v5;
        *(&v50 + 1) = v31;
        *&v51 = v30;
        *(&v51 + 1) = v29;
        v52 = v8;
        v33[0] = v7;
        v33[1] = v6;
        v33[2] = v5;
        v33[3] = v31;
        v33[4] = v30;
        v33[5] = v29;
        v33[6] = v8;
        sub_20B7B2490(v33, v32);
        v27 = sub_20B7C6A74(a1);
        sub_20B7B2434(v7, v6, v5);
        v19 = sub_20B915158(v27);

        goto LABEL_11;
      }
    }

    else
    {
      v16 = [v11 attributedText];
      if (v16)
      {
        v17 = v16;
        v49 = v34;
        v50 = v35;
        v51 = v36;
        v52 = v37;
        v18 = sub_20B7C6A74(a1);
        v19 = sub_20B915158(v18);

LABEL_11:
        [v11 setAttributedText_];
        sub_20B7B0844(&v34);

        return;
      }
    }

    v19 = 0;
    goto LABEL_11;
  }

  v20 = *&v3[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_titleLabel];
  v21 = [v20 attributedText];
  if (v21)
  {
    v22 = v21;
    v49 = v34;
    v50 = v35;
    v51 = v36;
    v52 = v37;
    v23 = sub_20B7C6A74(a1);
    v24 = sub_20B915158(v23);
  }

  else
  {
    v24 = 0;
  }

  [v20 setAttributedText_];

  sub_20B7B0844(&v34);
}

id sub_20B9F00B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundedDetailHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for RoundedDetailHeaderCell()
{
  result = qword_27C768F90;
  if (!qword_27C768F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B9F01D8()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B9F02B4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B9F0300@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B9F0358(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B9F03D8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v187 = *(v4 - 8);
  v188 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v173 = *(v7 - 8);
  v174 = v7;
  MEMORY[0x28223BE20](v7);
  v171 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v172 = &v148 - v10;
  v170 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v148 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v15 - 8);
  v179 = &v148 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v182 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v169 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = v18;
  MEMORY[0x28223BE20](v19);
  v184 = &v148 - v20;
  v178 = sub_20C1391C4();
  v176 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v177 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C138A64();
  v180 = *(v22 - 8);
  v181 = v22;
  MEMORY[0x28223BE20](v22);
  v183 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v24 - 8);
  v175 = &v148 - v25;
  v26 = sub_20C13C554();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = (&v148 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_20C137C24();
  MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v31);
  v36 = &v148 - v35;
  if (((a1 >> 57) & 0x78 | a1 & 7) != 8)
  {
    sub_20C13B534();

    v48 = v2;
    v49 = sub_20C13BB74();
    v50 = sub_20C13D1D4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v189 = a1;
      v190 = v53;
      *v51 = 138543618;
      *(v51 + 4) = v48;
      *v52 = v48;
      *(v51 + 12) = 2082;
      v54 = sub_20B5F66D0();
      v55 = v48;
      v56 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v54);
      v58 = sub_20B51E694(v56, v57, &v190);

      *(v51 + 14) = v58;
      _os_log_impl(&dword_20B517000, v49, v50, "Attempted to configure %{public}@ with item: %{public}s", v51, 0x16u);
      sub_20B520158(v52, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x20F2F6A40](v53, -1, -1);
      MEMORY[0x20F2F6A40](v51, -1, -1);
    }

    return (*(v187 + 1))(v6, v188);
  }

  v162 = v34;
  v165 = v33;
  v187 = v2;
  v161 = v17;
  v37 = v32;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E00);
  v39 = swift_projectBox();
  v40 = *v39;
  v41 = v38[12];
  v42 = (v39 + v38[16]);
  v44 = *v42;
  v43 = v42[1];
  v164 = v44;
  v188 = v43;
  v45 = *(v39 + v38[20]);
  v185 = v37;
  v186 = v36;
  v166 = *(v37 + 16);
  v166(v36, v39 + v41, v30);
  v167 = v37 + 16;
  if (v45 == 1)
  {
    v46 = 15;
    v47 = v187;
  }

  else
  {
    v47 = v187;
    if (v45 != 2)
    {
LABEL_21:
      result = sub_20C13DE24();
      __break(1u);
      return result;
    }

    v46 = 3;
  }

  v60 = v40;

  v61 = [v47 contentView];
  v62 = [v61 layer];

  [v62 setMaskedCorners_];
  [*&v47[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_titleLabel] setAttributedText_];
  sub_20B86E3F4(*&v47[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_textContainer]);
  v163 = sub_20C138054();
  v64 = v63;
  sub_20B51C88C(0, &qword_281100530);
  *v29 = sub_20C13D374();
  (*(v27 + 104))(v29, *MEMORY[0x277D85200], v26);
  v65 = sub_20C13C584();
  (*(v27 + 8))(v29, v26);
  if ((v65 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v66 = *&v47[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_artworkView];
  v67 = *&v47[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_artworkView + 8];
  ObjectType = swift_getObjectType();
  [v66 setContentMode_];
  v69 = v186;
  if ((sub_20BA66C54(v186, v66, v67, 0) & 1) == 0)
  {

    return (*(v185 + 8))(v69, v30);
  }

  v158 = v60;
  v150 = v14;
  v70 = swift_allocObject();
  v155 = ObjectType;
  v71 = v70;
  swift_unknownObjectWeakInit();
  v160 = v64;
  v72 = v165;
  v166(v165, v69, v30);
  v73 = v185;
  v74 = *(v185 + 80);
  v75 = (v74 + 24) & ~v74;
  v151 = v162 + 7;
  v157 = v67;
  v76 = (v162 + 7 + v75) & 0xFFFFFFFFFFFFFFF8;
  v156 = v66;
  v77 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
  v154 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
  v153 = v74;
  v79 = swift_allocObject();
  *(v79 + 16) = v71;
  v80 = *(v73 + 32);
  v159 = v30;
  v152 = v80;
  v80(v79 + v75, v72, v30);
  v81 = (v79 + v76);
  v82 = v157;
  v83 = v188;
  *v81 = v164;
  v81[1] = v83;
  v84 = (v79 + v77);
  v85 = v156;
  v86 = v160;
  *v84 = v163;
  v84[1] = v86;
  *(v79 + v78) = 2;
  v87 = v79 + v154;
  *v87 = MEMORY[0x277D84F90];
  *(v87 + 8) = 0;
  v88 = (v79 + ((v78 + 31) & 0xFFFFFFFFFFFFFFF8));
  *v88 = 0;
  v88[1] = 0;
  v89 = *(v82 + 152);

  v90 = v155;
  v89(sub_20B9F1680, v79, v155, v82);

  [v85 bounds];
  if (v91 <= 0.0)
  {

    return (*(v185 + 8))(v186, v159);
  }

  v93 = v92;
  v154 = v73 + 32;
  v94 = v159;
  if (v92 > 0.0)
  {
    v95 = v91;
    v96 = v153;
    v149 = ~v153;
    (*(v82 + 120))(0, v90, v82);
    v97 = v175;
    v98 = v82;
    v99 = v186;
    v166(v175, v186, v94);
    (*(v185 + 56))(v97, 0, 1, v94);
    (*(v98 + 16))(v97, v90, v98);
    sub_20B51C88C(0, &qword_27C762070);
    sub_20C137BC4();
    v100 = sub_20C13D5A4();
    [v85 setBackgroundColor_];

    (*(v98 + 176))(COERCE_DOUBLE(*&v95), COERCE_DOUBLE(*&v93), 0, v90, v98);
    v101 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v102 = v165;
    v103 = v99;
    v104 = v166;
    v166(v165, v103, v94);
    v105 = (v96 + 16) & v149;
    v106 = (v151 + v105) & 0xFFFFFFFFFFFFFFF8;
    v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
    v108 = swift_allocObject();
    v152(v108 + v105, v102, v94);
    *(v108 + v106) = v101;
    v109 = v94;
    v110 = v104;
    v111 = (v108 + v107);
    *v111 = v95;
    v111[1] = v93;
    v175 = v108;
    v112 = (v108 + ((v107 + 23) & 0xFFFFFFFFFFFFFFF8));
    v113 = v186;
    *v112 = 0;
    v112[1] = 0;
    v104(v102, v113, v109);
    (*(v176 + 104))(v177, *MEMORY[0x277D542A8], v178);
    v114 = v183;
    sub_20C138A54();
    v115 = v179;
    sub_20B5F1B68(v114, v179);
    v116 = v182;
    v117 = v161;
    if ((*(v182 + 48))(v115, 1, v161) == 1)
    {
      sub_20B520158(v115, &unk_27C766670);
      sub_20BA1DA70();

      (*(v180 + 8))(v114, v181);
      return (*(v185 + 8))(v186, v109);
    }

    v188 = *(v116 + 32);
    v188(v184, v115, v117);
    v118 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v110(v102, v186, v109);
    v119 = (v153 + 40) & v149;
    v120 = v119 + v162;
    v121 = (v119 + v162) & 0xFFFFFFFFFFFFFFF8;
    v122 = swift_allocObject();
    v123 = v109;
    v124 = v122;
    v122[2] = v118;
    *(v122 + 3) = v95;
    *(v122 + 4) = v93;
    v152(v122 + v119, v102, v123);
    *(v124 + v120) = 0;
    v125 = v124 + v121;
    *(v125 + 1) = 0;
    *(v125 + 2) = 0;
    v126 = swift_allocObject();
    *(v126 + 16) = sub_20B9F1814;
    *(v126 + 24) = v124;
    v127 = v169;
    v128 = v161;
    (*(v116 + 16))(v169, v184, v161);
    v129 = (*(v116 + 80) + 16) & ~*(v116 + 80);
    v130 = (v168 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
    v131 = swift_allocObject();
    v188(v131 + v129, v127, v128);
    v132 = (v131 + v130);
    *v132 = sub_20B5F67A4;
    v132[1] = v126;
    v133 = v172;
    sub_20C137C94();
    v134 = swift_allocObject();
    v135 = v175;
    *(v134 + 16) = sub_20B9F1758;
    *(v134 + 24) = v135;
    v136 = swift_allocObject();
    *(v136 + 16) = sub_20B5F67D4;
    *(v136 + 24) = v134;
    v138 = v173;
    v137 = v174;
    v139 = v171;
    (*(v173 + 16))(v171, v133, v174);
    v140 = (*(v138 + 80) + 16) & ~*(v138 + 80);
    v141 = (v170 + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
    v142 = swift_allocObject();
    (*(v138 + 32))(v142 + v140, v139, v137);
    v143 = (v142 + v141);
    *v143 = sub_20B5DF204;
    v143[1] = v136;

    v144 = v150;
    sub_20C137C94();
    v145 = *(v138 + 8);
    v145(v133, v137);
    v146 = sub_20C137CB4();
    v147 = swift_allocObject();
    *(v147 + 16) = 0;
    *(v147 + 24) = 0;
    v146(sub_20B52347C, v147);

    v145(v144, v137);
    (*(v116 + 8))(v184, v161);
    (*(v180 + 8))(v183, v181);
    return (*(v185 + 8))(v186, v159);
  }

  return (*(v185 + 8))(v186, v94);
}

void sub_20B9F1680()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA48E34(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B9F1758(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA636B0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B9F1814(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2F0C(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20B9F18C8()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_layout;
  *v3 = xmmword_20C167B70;
  *(v3 + 16) = xmmword_20C167B80;
  *(v3 + 32) = 0x4034000000000000;
  v4 = (v0 + OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_artworkView);
  v5 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *v4 = v5;
  v4[1] = &off_2822B63E8;
  v6 = OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_shadowView;
  v7 = [objc_allocWithZone(type metadata accessor for VibrantShadowView()) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v6) = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAdjustsFontForContentSizeCategory_];
  v9 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8] compatibleWithTraitCollection:0];
  v10 = [v9 fontDescriptorWithSymbolicTraits_];
  if (v10)
  {
    v11 = v10;

    v9 = v11;
  }

  v12 = OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_titleLabel;
  v13 = [objc_opt_self() fontWithDescriptor:v9 size:0.0];

  [v8 setFont_];
  [v8 setAllowsDefaultTighteningForTruncation_];
  LODWORD(v14) = 1148846080;
  [v8 setContentCompressionResistancePriority:0 forAxis:v14];

  v15 = [objc_opt_self() whiteColor];
  [v8 setTextColor_];

  [v8 setLineBreakMode_];
  [v8 setNumberOfLines_];
  *(v0 + v12) = v8;
  v16 = OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_textContainer;
  v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v16) = v17;
  v18 = (v0 + OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_oldSize);
  *v18 = 0;
  v18[1] = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B9F1C3C@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = *MEMORY[0x277D76838];
  v47 = *MEMORY[0x277D76838];
  if (a3 >= a2)
  {
    v24 = *MEMORY[0x277D76A08];
    v50 = MEMORY[0x277D84FA0];
    v42 = v4;
    sub_20B6FF83C(v49, 1);
    v52 = 0;
    v7 = v50;
    sub_20C13E164();
    v46 = v24;
    sub_20C13CA64();
    v25 = sub_20C13E1B4();
    v26 = -1 << *(v7 + 32);
    v27 = v25 & ~v26;
    if ((*(v7 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
    {
      v28 = ~v26;
      while (1)
      {
        v29 = *(*(v7 + 48) + v27);
        if (v29 > 1 && v29 != 3 && v29 != 4)
        {
          break;
        }

        v30 = sub_20C13DFF4();

        if (v30)
        {
          goto LABEL_19;
        }

        v27 = (v27 + 1) & v28;
        if (((*(v7 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_18:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v7;
      sub_20B706478(2, v27, isUniquelyReferenced_nonNull_native);
      v7 = v49[0];
    }

LABEL_19:
    v51 = 1;
    v44 = v52;
    v32 = *MEMORY[0x277D76A20];
    v48 = MEMORY[0x277D84FA0];
    v33 = v42;
    sub_20B6FF83C(v49, 1);
    v20 = v48;
    sub_20C13E164();
    v43 = v32;
    sub_20C13CA64();
    v34 = sub_20C13E1B4();
    v35 = -1 << *(v48 + 32);
    v36 = v34 & ~v35;
    if ((*(v48 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
    {
      v37 = ~v35;
      while (1)
      {
        v38 = *(*(v48 + 48) + v36);
        if (v38 > 1 && v38 != 3 && v38 != 4)
        {
          break;
        }

        v39 = sub_20C13DFF4();

        if (v39)
        {
          goto LABEL_27;
        }

        v36 = (v36 + 1) & v37;
        if (((*(v48 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_26:
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v48;
      result = sub_20B706478(2, v36, v40);
      v20 = v49[0];
    }

LABEL_27:
    LOBYTE(v49[0]) = 1;
    v19 = 1;
    v18 = 0x90000008002;
    v23 = v46;
    v22 = v47;
    v16 = v47;
    v21 = v44;
    v17 = v43;
  }

  else
  {
    v5 = *MEMORY[0x277D769A8];
    v50 = MEMORY[0x277D84FA0];
    v6 = v4;
    sub_20B6FF83C(v49, 1);
    v7 = v50;
    sub_20C13E164();
    v45 = v5;
    sub_20C13CA64();
    v8 = sub_20C13E1B4();
    v9 = -1 << *(v7 + 32);
    v10 = v8 & ~v9;
    if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v11 = ~v9;
      while (1)
      {
        v12 = *(*(v7 + 48) + v10);
        if (v12 > 1 && v12 != 3 && v12 != 4)
        {
          break;
        }

        v13 = sub_20C13DFF4();

        if (v13)
        {
          goto LABEL_10;
        }

        v10 = (v10 + 1) & v11;
        if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v7;
      result = sub_20B706478(2, v10, v15);
      v7 = v49[0];
    }

LABEL_10:
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    LOBYTE(v49[0]) = 1;
    v21 = 0;
    v23 = v45;
    v22 = v47;
  }

  v41 = v21 & 1;
  LOBYTE(v49[0]) = v41;
  LOBYTE(v50) = 1;
  *a1 = 0;
  *(a1 + 8) = v22;
  *(a1 + 16) = v23;
  *(a1 + 24) = 32770;
  *(a1 + 28) = v41;
  *(a1 + 29) = 9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v7;
  *(a1 + 56) = 0;
  *(a1 + 64) = v16;
  *(a1 + 72) = v17;
  *(a1 + 80) = v18;
  *(a1 + 88) = 0;
  *(a1 + 96) = v19;
  *(a1 + 104) = v20;
  return result;
}

uint64_t sub_20B9F2208(void *a1)
{
  v1 = [a1 description];
  v2 = sub_20C13C954();

  return v2;
}

uint64_t sub_20B9F22C0(void *a1)
{
  sub_20C13E164();
  MEMORY[0x20F2F58E0]([a1 hash]);
  return sub_20C13E1B4();
}

uint64_t sub_20B9F2324()
{
  sub_20C13E164();
  sub_20B9F2288(&v2, *v0);
  return sub_20C13E1B4();
}

double sub_20B9F2370(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  if ((a3 & 0x80) != 0)
  {
    v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_contentInsetInitialBehavior + 8);
    if (v8 == 3)
    {
      v9 = 64;
    }

    else
    {
      v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_contentInsetInitialBehavior + 8);
    }

    if (v9 < 0)
    {
        ;
      }
    }

    v5 = v9;
    a2 = v8 == 3;
    if (v8 == 3)
    {
      *&a1 = 0.0;
    }

    else
    {
      a1 = *(v4 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_contentInsetInitialBehavior);
    }
  }

  v10 = (v4 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_currentContentInsetBehavior);
  v11 = *(v4 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_currentContentInsetBehavior + 16);
  if (v11 > 0xFB)
  {
LABEL_10:
    *(v4 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_isTransitioningContentInset) = 1;
    v12 = v5;
    if (v5 < 0x40u)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v14 = *v10;
  v13 = v10[1];
  if (v5 > 0x3Fu)
  {
    if ((v11 & 0xC0) == 0x40)
    {
      if (a2)
      {
        if (LOBYTE(v13))
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = *&a1;
        if (!(LOBYTE(v13) & 1 | (*&a1 != v14)))
        {
          goto LABEL_30;
        }
      }
    }

    *(v4 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_isTransitioningContentInset) = 1;
LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  if (v11 >= 0x40 || ((result = *&a2, v11 == v5) ? (v16 = *&a1 == v14) : (v16 = 0), v16 ? (v17 = *&a2 == v13) : (v17 = 0), !v17))
  {
    *(v4 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_isTransitioningContentInset) = 1;
    v12 = v5;
LABEL_28:
    sub_20BE8F76C(v12);
    sub_20B9F4C18(a1, a2, v5, &OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_currentContentInsetBehavior, &OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_isTransitioningContentInset, &OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_page);
    return result;
  }

LABEL_30:
  if (a4)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_20B9F24F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  if ((a3 & 0x80) != 0)
  {
    v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_contentInsetInitialBehavior + 8);
    if (v8 == 3)
    {
      v9 = 64;
    }

    else
    {
      v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_contentInsetInitialBehavior + 8);
    }

    if (v9 < 0)
    {
        ;
      }
    }

    v5 = v9;
    a2 = v8 == 3;
    if (v8 == 3)
    {
      *&a1 = 0.0;
    }

    else
    {
      a1 = *(v4 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_contentInsetInitialBehavior);
    }
  }

  v10 = (v4 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_currentContentInsetBehavior);
  v11 = *(v4 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_currentContentInsetBehavior + 16);
  if (v11 > 0xFB)
  {
LABEL_10:
    *(v4 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_isTransitioningContentInset) = 1;
    v12 = v5;
    if (v5 < 0x40u)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v14 = *v10;
  v13 = v10[1];
  if (v5 > 0x3Fu)
  {
    if ((v11 & 0xC0) == 0x40)
    {
      if (a2)
      {
        if (LOBYTE(v13))
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = *&a1;
        if (!(LOBYTE(v13) & 1 | (*&a1 != v14)))
        {
          goto LABEL_30;
        }
      }
    }

    *(v4 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_isTransitioningContentInset) = 1;
LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  if (v11 >= 0x40 || ((result = *&a2, v11 == v5) ? (v16 = *&a1 == v14) : (v16 = 0), v16 ? (v17 = *&a2 == v13) : (v17 = 0), !v17))
  {
    *(v4 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_isTransitioningContentInset) = 1;
    v12 = v5;
LABEL_28:
    sub_20BE8F76C(v12);
    sub_20B9F4F80(a1, a2, v5, &OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_currentContentInsetBehavior, &OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_isTransitioningContentInset, &OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider);
    return result;
  }

LABEL_30:
  if (a4)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_20B9F2678(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  if ((a3 & 0x80) != 0)
  {
    v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_contentInsetInitialBehavior + 8);
    if (v8 == 3)
    {
      v9 = 64;
    }

    else
    {
      v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_contentInsetInitialBehavior + 8);
    }

    if (v9 < 0)
    {
        ;
      }
    }

    v5 = v9;
    a2 = v8 == 3;
    if (v8 == 3)
    {
      *&a1 = 0.0;
    }

    else
    {
      a1 = *(v4 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_contentInsetInitialBehavior);
    }
  }

  v10 = (v4 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentContentInsetBehavior);
  v11 = *(v4 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentContentInsetBehavior + 16);
  if (v11 > 0xFB)
  {
LABEL_10:
    *(v4 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_isTransitioningContentInset) = 1;
    v12 = v5;
    if (v5 < 0x40u)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v14 = *v10;
  v13 = v10[1];
  if (v5 > 0x3Fu)
  {
    if ((v11 & 0xC0) == 0x40)
    {
      if (a2)
      {
        if (LOBYTE(v13))
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = *&a1;
        if (!(LOBYTE(v13) & 1 | (*&a1 != v14)))
        {
          goto LABEL_30;
        }
      }
    }

    *(v4 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_isTransitioningContentInset) = 1;
LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  if (v11 >= 0x40 || ((result = *&a2, v11 == v5) ? (v16 = *&a1 == v14) : (v16 = 0), v16 ? (v17 = *&a2 == v13) : (v17 = 0), !v17))
  {
    *(v4 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_isTransitioningContentInset) = 1;
    v12 = v5;
LABEL_28:
    sub_20BE8F76C(v12);
    sub_20B9F4954(a1, a2, v5, &OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentContentInsetBehavior, &OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_isTransitioningContentInset, &OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page);
    return result;
  }

LABEL_30:
  if (a4)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_20B9F2800(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  if ((a3 & 0x80) != 0)
  {
    v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_contentInsetInitialBehavior + 8);
    if (v8 == 3)
    {
      v9 = 64;
    }

    else
    {
      v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_contentInsetInitialBehavior + 8);
    }

    if (v9 < 0)
    {
        ;
      }
    }

    v5 = v9;
    a2 = v8 == 3;
    if (v8 == 3)
    {
      *&a1 = 0.0;
    }

    else
    {
      a1 = *(v4 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_contentInsetInitialBehavior);
    }
  }

  v10 = (v4 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_currentContentInsetBehavior);
  v11 = *(v4 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_currentContentInsetBehavior + 16);
  if (v11 > 0xFB)
  {
LABEL_10:
    *(v4 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_isTransitioningContentInset) = 1;
    v12 = v5;
    if (v5 < 0x40u)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v14 = *v10;
  v13 = v10[1];
  if (v5 > 0x3Fu)
  {
    if ((v11 & 0xC0) == 0x40)
    {
      if (a2)
      {
        if (LOBYTE(v13))
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = *&a1;
        if (!(LOBYTE(v13) & 1 | (*&a1 != v14)))
        {
          goto LABEL_30;
        }
      }
    }

    *(v4 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_isTransitioningContentInset) = 1;
LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  if (v11 >= 0x40 || ((result = *&a2, v11 == v5) ? (v16 = *&a1 == v14) : (v16 = 0), v16 ? (v17 = *&a2 == v13) : (v17 = 0), !v17))
  {
    *(v4 + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_isTransitioningContentInset) = 1;
    v12 = v5;
LABEL_28:
    sub_20BE8F76C(v12);
    sub_20B9F4C18(a1, a2, v5, &OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_currentContentInsetBehavior, &OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_isTransitioningContentInset, &OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_page);
    return result;
  }

LABEL_30:
  if (a4)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_20B9F2988(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  if ((a3 & 0x80) != 0)
  {
    v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI18RootViewController_contentInsetInitialBehavior + 8);
    if (v8 == 3)
    {
      v9 = 64;
    }

    else
    {
      v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI18RootViewController_contentInsetInitialBehavior + 8);
    }

    if (v9 < 0)
    {
        ;
      }
    }

    v5 = v9;
    a2 = v8 == 3;
    if (v8 == 3)
    {
      *&a1 = 0.0;
    }

    else
    {
      a1 = *(v4 + OBJC_IVAR____TtC9SeymourUI18RootViewController_contentInsetInitialBehavior);
    }
  }

  v10 = (v4 + OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior);
  v11 = *(v4 + OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior + 16);
  if (v11 > 0xFB)
  {
    goto LABEL_10;
  }

  v14 = *v10;
  v13 = v10[1];
  if (v5 > 0x3Fu)
  {
    if ((v11 & 0xC0) == 0x40)
    {
      if (a2)
      {
        if (LOBYTE(v13))
        {
          goto LABEL_32;
        }
      }

      else
      {
        result = *&a1;
        if (!(LOBYTE(v13) & 1 | (*&a1 != v14)))
        {
          goto LABEL_32;
        }
      }
    }

    *(v4 + OBJC_IVAR____TtC9SeymourUI18RootViewController_isTransitioningContentInset) = 1;
LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  if (v11 < 0x40)
  {
    result = *&a2;
    v16 = v11 == v5 && *&a1 == v14;
    if (v16 && *&a2 == v13)
    {
LABEL_32:
      if ((a4 & 1) == 0)
      {
        return result;
      }

LABEL_10:
      *(v4 + OBJC_IVAR____TtC9SeymourUI18RootViewController_isTransitioningContentInset) = 1;
      v12 = v5;
      if (v5 < 0x40u)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  *(v4 + OBJC_IVAR____TtC9SeymourUI18RootViewController_isTransitioningContentInset) = 1;
  v12 = v5;
LABEL_28:
  sub_20BE8F76C(v12);

  sub_20B9F45B4(a1, a2, v5);
  return result;
}

double sub_20B9F2B08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  if ((a3 & 0x80) != 0)
  {
    v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_contentInsetInitialBehavior + 8);
    if (v8 == 3)
    {
      v9 = 64;
    }

    else
    {
      v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_contentInsetInitialBehavior + 8);
    }

    if (v9 < 0)
    {
        ;
      }
    }

    v5 = v9;
    a2 = v8 == 3;
    if (v8 == 3)
    {
      *&a1 = 0.0;
    }

    else
    {
      a1 = *(v4 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_contentInsetInitialBehavior);
    }
  }

  v10 = (v4 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_currentContentInsetBehavior);
  v11 = *(v4 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_currentContentInsetBehavior + 16);
  if (v11 > 0xFB)
  {
LABEL_10:
    *(v4 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_isTransitioningContentInset) = 1;
    v12 = v5;
    if (v5 < 0x40u)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v14 = *v10;
  v13 = v10[1];
  if (v5 > 0x3Fu)
  {
    if ((v11 & 0xC0) == 0x40)
    {
      if (a2)
      {
        if (LOBYTE(v13))
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = *&a1;
        if (!(LOBYTE(v13) & 1 | (*&a1 != v14)))
        {
          goto LABEL_30;
        }
      }
    }

    *(v4 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_isTransitioningContentInset) = 1;
LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  if (v11 >= 0x40 || ((result = *&a2, v11 == v5) ? (v16 = *&a1 == v14) : (v16 = 0), v16 ? (v17 = *&a2 == v13) : (v17 = 0), !v17))
  {
    *(v4 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_isTransitioningContentInset) = 1;
    v12 = v5;
LABEL_28:
    sub_20BE8F76C(v12);
    sub_20B9F4954(a1, a2, v5, &OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_currentContentInsetBehavior, &OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_isTransitioningContentInset, &OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_page);
    return result;
  }

LABEL_30:
  if (a4)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_20B9F2C90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  if ((a3 & 0x80) != 0)
  {
    v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_contentInsetInitialBehavior + 8);
    if (v8 == 3)
    {
      v9 = 64;
    }

    else
    {
      v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_contentInsetInitialBehavior + 8);
    }

    if (v9 < 0)
    {
        ;
      }
    }

    v5 = v9;
    a2 = v8 == 3;
    if (v8 == 3)
    {
      *&a1 = 0.0;
    }

    else
    {
      a1 = *(v4 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_contentInsetInitialBehavior);
    }
  }

  v10 = (v4 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentContentInsetBehavior);
  v11 = *(v4 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentContentInsetBehavior + 16);
  if (v11 > 0xFB)
  {
LABEL_10:
    *(v4 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isTransitioningContentInset) = 1;
    v12 = v5;
    if (v5 < 0x40u)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v14 = *v10;
  v13 = v10[1];
  if (v5 > 0x3Fu)
  {
    if ((v11 & 0xC0) == 0x40)
    {
      if (a2)
      {
        if (LOBYTE(v13))
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = *&a1;
        if (!(LOBYTE(v13) & 1 | (*&a1 != v14)))
        {
          goto LABEL_30;
        }
      }
    }

    *(v4 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isTransitioningContentInset) = 1;
LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  if (v11 >= 0x40 || ((result = *&a2, v11 == v5) ? (v16 = *&a1 == v14) : (v16 = 0), v16 ? (v17 = *&a2 == v13) : (v17 = 0), !v17))
  {
    *(v4 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isTransitioningContentInset) = 1;
    v12 = v5;
LABEL_28:
    sub_20BE8F76C(v12);
    sub_20B9F4954(a1, a2, v5, &OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentContentInsetBehavior, &OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isTransitioningContentInset, &OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_page);
    return result;
  }

LABEL_30:
  if (a4)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_20B9F2E18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  if ((a3 & 0x80) != 0)
  {
    v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_contentInsetInitialBehavior + 8);
    if (v8 == 3)
    {
      v9 = 64;
    }

    else
    {
      v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_contentInsetInitialBehavior + 8);
    }

    if (v9 < 0)
    {
        ;
      }
    }

    v5 = v9;
    a2 = v8 == 3;
    if (v8 == 3)
    {
      *&a1 = 0.0;
    }

    else
    {
      a1 = *(v4 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_contentInsetInitialBehavior);
    }
  }

  v10 = (v4 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentContentInsetBehavior);
  v11 = *(v4 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentContentInsetBehavior + 16);
  if (v11 > 0xFB)
  {
LABEL_10:
    *(v4 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isTransitioningContentInset) = 1;
    v12 = v5;
    if (v5 < 0x40u)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v14 = *v10;
  v13 = v10[1];
  if (v5 > 0x3Fu)
  {
    if ((v11 & 0xC0) == 0x40)
    {
      if (a2)
      {
        if (LOBYTE(v13))
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = *&a1;
        if (!(LOBYTE(v13) & 1 | (*&a1 != v14)))
        {
          goto LABEL_30;
        }
      }
    }

    *(v4 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isTransitioningContentInset) = 1;
LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  if (v11 >= 0x40 || ((result = *&a2, v11 == v5) ? (v16 = *&a1 == v14) : (v16 = 0), v16 ? (v17 = *&a2 == v13) : (v17 = 0), !v17))
  {
    *(v4 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isTransitioningContentInset) = 1;
    v12 = v5;
LABEL_28:
    sub_20BE8F76C(v12);
    sub_20B9F4C18(a1, a2, v5, &OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentContentInsetBehavior, &OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isTransitioningContentInset, &OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_page);
    return result;
  }

LABEL_30:
  if (a4)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_20B9F2FA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  if ((a3 & 0x80) != 0)
  {
    v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_contentInsetInitialBehavior + 8);
    if (v8 == 3)
    {
      v9 = 64;
    }

    else
    {
      v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_contentInsetInitialBehavior + 8);
    }

    if (v9 < 0)
    {
        ;
      }
    }

    v5 = v9;
    a2 = v8 == 3;
    if (v8 == 3)
    {
      *&a1 = 0.0;
    }

    else
    {
      a1 = *(v4 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_contentInsetInitialBehavior);
    }
  }

  v10 = (v4 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_currentContentInsetBehavior);
  v11 = *(v4 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_currentContentInsetBehavior + 16);
  if (v11 > 0xFB)
  {
LABEL_10:
    *(v4 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_isTransitioningContentInset) = 1;
    v12 = v5;
    if (v5 < 0x40u)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v14 = *v10;
  v13 = v10[1];
  if (v5 > 0x3Fu)
  {
    if ((v11 & 0xC0) == 0x40)
    {
      if (a2)
      {
        if (LOBYTE(v13))
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = *&a1;
        if (!(LOBYTE(v13) & 1 | (*&a1 != v14)))
        {
          goto LABEL_30;
        }
      }
    }

    *(v4 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_isTransitioningContentInset) = 1;
LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  if (v11 >= 0x40 || ((result = *&a2, v11 == v5) ? (v16 = *&a1 == v14) : (v16 = 0), v16 ? (v17 = *&a2 == v13) : (v17 = 0), !v17))
  {
    *(v4 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_isTransitioningContentInset) = 1;
    v12 = v5;
LABEL_28:
    sub_20BE8F76C(v12);
    sub_20B9F4C18(a1, a2, v5, &OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_currentContentInsetBehavior, &OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_isTransitioningContentInset, &OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_page);
    return result;
  }

LABEL_30:
  if (a4)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_20B9F3128(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  if ((a3 & 0x80) != 0)
  {
    v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_contentInsetInitialBehavior + 8);
    if (v8 == 3)
    {
      v9 = 64;
    }

    else
    {
      v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_contentInsetInitialBehavior + 8);
    }

    if (v9 < 0)
    {
        ;
      }
    }

    v5 = v9;
    a2 = v8 == 3;
    if (v8 == 3)
    {
      *&a1 = 0.0;
    }

    else
    {
      a1 = *(v4 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_contentInsetInitialBehavior);
    }
  }

  v10 = (v4 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentContentInsetBehavior);
  v11 = *(v4 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentContentInsetBehavior + 16);
  if (v11 > 0xFB)
  {
LABEL_10:
    *(v4 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isTransitioningContentInset) = 1;
    v12 = v5;
    if (v5 < 0x40u)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v14 = *v10;
  v13 = v10[1];
  if (v5 > 0x3Fu)
  {
    if ((v11 & 0xC0) == 0x40)
    {
      if (a2)
      {
        if (LOBYTE(v13))
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = *&a1;
        if (!(LOBYTE(v13) & 1 | (*&a1 != v14)))
        {
          goto LABEL_30;
        }
      }
    }

    *(v4 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isTransitioningContentInset) = 1;
LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  if (v11 >= 0x40 || ((result = *&a2, v11 == v5) ? (v16 = *&a1 == v14) : (v16 = 0), v16 ? (v17 = *&a2 == v13) : (v17 = 0), !v17))
  {
    *(v4 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isTransitioningContentInset) = 1;
    v12 = v5;
LABEL_28:
    sub_20BE8F76C(v12);
    sub_20B9F4F80(a1, a2, v5, &OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentContentInsetBehavior, &OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isTransitioningContentInset, &OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_dataProvider);
    return result;
  }

LABEL_30:
  if (a4)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_20B9F32A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  if ((a3 & 0x80) != 0)
  {
    v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_contentInsetInitialBehavior + 8);
    if (v8 == 3)
    {
      v9 = 64;
    }

    else
    {
      v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_contentInsetInitialBehavior + 8);
    }

    if (v9 < 0)
    {
        ;
      }
    }

    v5 = v9;
    a2 = v8 == 3;
    if (v8 == 3)
    {
      *&a1 = 0.0;
    }

    else
    {
      a1 = *(v4 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_contentInsetInitialBehavior);
    }
  }

  v10 = (v4 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_currentContentInsetBehavior);
  v11 = *(v4 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_currentContentInsetBehavior + 16);
  if (v11 > 0xFB)
  {
LABEL_10:
    *(v4 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_isTransitioningContentInset) = 1;
    v12 = v5;
    if (v5 < 0x40u)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v14 = *v10;
  v13 = v10[1];
  if (v5 > 0x3Fu)
  {
    if ((v11 & 0xC0) == 0x40)
    {
      if (a2)
      {
        if (LOBYTE(v13))
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = *&a1;
        if (!(LOBYTE(v13) & 1 | (*&a1 != v14)))
        {
          goto LABEL_30;
        }
      }
    }

    *(v4 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_isTransitioningContentInset) = 1;
LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  if (v11 >= 0x40 || ((result = *&a2, v11 == v5) ? (v16 = *&a1 == v14) : (v16 = 0), v16 ? (v17 = *&a2 == v13) : (v17 = 0), !v17))
  {
    *(v4 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_isTransitioningContentInset) = 1;
    v12 = v5;
LABEL_28:
    sub_20BE8F76C(v12);
    sub_20B9F4954(a1, a2, v5, &OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_currentContentInsetBehavior, &OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_isTransitioningContentInset, &OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_page);
    return result;
  }

LABEL_30:
  if (a4)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_20B9F3430(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  if ((a3 & 0x80) != 0)
  {
    v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_contentInsetInitialBehavior + 8);
    if (v8 == 3)
    {
      v9 = 64;
    }

    else
    {
      v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_contentInsetInitialBehavior + 8);
    }

    if (v9 < 0)
    {
        ;
      }
    }

    v5 = v9;
    a2 = v8 == 3;
    if (v8 == 3)
    {
      *&a1 = 0.0;
    }

    else
    {
      a1 = *(v4 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_contentInsetInitialBehavior);
    }
  }

  v10 = (v4 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentContentInsetBehavior);
  v11 = *(v4 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentContentInsetBehavior + 16);
  if (v11 > 0xFB)
  {
LABEL_10:
    *(v4 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isTransitioningContentInset) = 1;
    v12 = v5;
    if (v5 < 0x40u)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v14 = *v10;
  v13 = v10[1];
  if (v5 > 0x3Fu)
  {
    if ((v11 & 0xC0) == 0x40)
    {
      if (a2)
      {
        if (LOBYTE(v13))
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = *&a1;
        if (!(LOBYTE(v13) & 1 | (*&a1 != v14)))
        {
          goto LABEL_30;
        }
      }
    }

    *(v4 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isTransitioningContentInset) = 1;
LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  if (v11 >= 0x40 || ((result = *&a2, v11 == v5) ? (v16 = *&a1 == v14) : (v16 = 0), v16 ? (v17 = *&a2 == v13) : (v17 = 0), !v17))
  {
    *(v4 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isTransitioningContentInset) = 1;
    v12 = v5;
LABEL_28:
    sub_20BE8F76C(v12);
    sub_20B9F4954(a1, a2, v5, &OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentContentInsetBehavior, &OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isTransitioningContentInset, &OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_page);
    return result;
  }

LABEL_30:
  if (a4)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_20B9F35B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  if ((a3 & 0x80) != 0)
  {
    v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_contentInsetInitialBehavior + 8);
    if (v8 == 3)
    {
      v9 = 64;
    }

    else
    {
      v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_contentInsetInitialBehavior + 8);
    }

    if (v9 < 0)
    {
        ;
      }
    }

    v5 = v9;
    a2 = v8 == 3;
    if (v8 == 3)
    {
      *&a1 = 0.0;
    }

    else
    {
      a1 = *(v4 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_contentInsetInitialBehavior);
    }
  }

  v10 = (v4 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentContentInsetBehavior);
  v11 = *(v4 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentContentInsetBehavior + 16);
  if (v11 > 0xFB)
  {
LABEL_10:
    *(v4 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_isTransitioningContentInset) = 1;
    v12 = v5;
    if (v5 < 0x40u)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v14 = *v10;
  v13 = v10[1];
  if (v5 > 0x3Fu)
  {
    if ((v11 & 0xC0) == 0x40)
    {
      if (a2)
      {
        if (LOBYTE(v13))
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = *&a1;
        if (!(LOBYTE(v13) & 1 | (*&a1 != v14)))
        {
          goto LABEL_30;
        }
      }
    }

    *(v4 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_isTransitioningContentInset) = 1;
LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  if (v11 >= 0x40 || ((result = *&a2, v11 == v5) ? (v16 = *&a1 == v14) : (v16 = 0), v16 ? (v17 = *&a2 == v13) : (v17 = 0), !v17))
  {
    *(v4 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_isTransitioningContentInset) = 1;
    v12 = v5;
LABEL_28:
    sub_20BE8F76C(v12);
    sub_20B9F4954(a1, a2, v5, &OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentContentInsetBehavior, &OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_isTransitioningContentInset, &OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_page);
    return result;
  }

LABEL_30:
  if (a4)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_20B9F3740(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  if ((a3 & 0x80) != 0)
  {
    v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_contentInsetInitialBehavior + 8);
    if (v8 == 3)
    {
      v9 = 64;
    }

    else
    {
      v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_contentInsetInitialBehavior + 8);
    }

    if (v9 < 0)
    {
        ;
      }
    }

    v5 = v9;
    a2 = v8 == 3;
    if (v8 == 3)
    {
      *&a1 = 0.0;
    }

    else
    {
      a1 = *(v4 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_contentInsetInitialBehavior);
    }
  }

  v10 = (v4 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentContentInsetBehavior);
  v11 = *(v4 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentContentInsetBehavior + 16);
  if (v11 > 0xFB)
  {
LABEL_10:
    *(v4 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_isTransitioningContentInset) = 1;
    v12 = v5;
    if (v5 < 0x40u)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v14 = *v10;
  v13 = v10[1];
  if (v5 > 0x3Fu)
  {
    if ((v11 & 0xC0) == 0x40)
    {
      if (a2)
      {
        if (LOBYTE(v13))
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = *&a1;
        if (!(LOBYTE(v13) & 1 | (*&a1 != v14)))
        {
          goto LABEL_30;
        }
      }
    }

    *(v4 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_isTransitioningContentInset) = 1;
LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  if (v11 >= 0x40 || ((result = *&a2, v11 == v5) ? (v16 = *&a1 == v14) : (v16 = 0), v16 ? (v17 = *&a2 == v13) : (v17 = 0), !v17))
  {
    *(v4 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_isTransitioningContentInset) = 1;
    v12 = v5;
LABEL_28:
    sub_20BE8F76C(v12);
    sub_20B9F4954(a1, a2, v5, &OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentContentInsetBehavior, &OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_isTransitioningContentInset, &OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_page);
    return result;
  }

LABEL_30:
  if (a4)
  {
    goto LABEL_10;
  }

  return result;
}

id BrowsingViewController.currentViewController.getter()
{
  result = [v0 topViewController];
  if (!result)
  {

    return v2;
  }

  return result;
}

uint64_t BrowsingViewController.pushViewController(_:animated:)(uint64_t a1, char a2)
{
  [v2 pushViewController:a1 animated:a2 & 1];

  return sub_20C137CA4();
}

uint64_t BrowsingViewController.setViewControllers(_:animated:)(uint64_t a1, char a2)
{
  sub_20B62BB28();
  v4 = sub_20C13CC54();
  [v2 setViewControllers:v4 animated:a2 & 1];

  return sub_20C137CA4();
}

uint64_t BrowsingViewController.present(_:animated:)(uint64_t a1, char a2)
{
  [v2 presentViewController:a1 animated:a2 & 1 completion:0];

  return sub_20C137CA4();
}

uint64_t BrowsingViewController.popViewController(animated:)(char a1)
{
  v2 = [v1 popViewControllerAnimated_];
  *(swift_allocObject() + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766F30);

  return sub_20C137CA4();
}

uint64_t BrowsingViewController.popToRootViewController(animated:)(char a1)
{
  v2 = [v1 popToRootViewControllerAnimated_];
  if (v2)
  {
    v3 = v2;
    sub_20B62BB28();
    v4 = sub_20C13CC74();
  }

  else
  {
    v4 = 0;
  }

  *(swift_allocObject() + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D58);

  return sub_20C137CA4();
}

uint64_t BrowsingViewController.reset(animated:)(char a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C14F580;
  v5 = *&v1[OBJC_IVAR____TtC9SeymourUI22BrowsingViewController_rootViewController];
  *(v4 + 32) = v5;
  sub_20B62BB28();
  v6 = v5;
  v7 = sub_20C13CC54();

  [v2 setViewControllers:v7 animated:a1 & 1];

  v8 = v6[OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior + 16];
  if (v8 <= 0xFB)
  {
    sub_20B9F2988(*&v6[OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior], *&v6[OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior + 8], v8, 1);
  }

  return sub_20C137CA4();
}

uint64_t BrowsingViewController.dismiss(animated:)(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;

  return sub_20C137C94();
}

void sub_20B9F3DE0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_20B5D9B44;
  *(v9 + 24) = v8;
  v11[4] = sub_20B89522C;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_20B7B548C;
  v11[3] = &block_descriptor_67;
  v10 = _Block_copy(v11);

  [a3 dismissViewControllerAnimated:a4 & 1 completion:v10];
  _Block_release(v10);
}

uint64_t sub_20B9F3F00(uint64_t a1, char a2)
{
  [v2 pushViewController:a1 animated:a2 & 1];

  return sub_20C137CA4();
}

uint64_t sub_20B9F3F74(uint64_t a1, char a2)
{
  sub_20B62BB28();
  v4 = sub_20C13CC54();
  [v2 setViewControllers:v4 animated:a2 & 1];

  return sub_20C137CA4();
}

uint64_t sub_20B9F4010(uint64_t a1, char a2)
{
  [v2 presentViewController:a1 animated:a2 & 1 completion:0];

  return sub_20C137CA4();
}

uint64_t sub_20B9F4088(char a1)
{
  v2 = [v1 popViewControllerAnimated_];
  *(swift_allocObject() + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766F30);

  return sub_20C137CA4();
}

uint64_t sub_20B9F4130(char a1)
{
  v2 = [v1 popToRootViewControllerAnimated_];
  if (v2)
  {
    v3 = v2;
    sub_20B62BB28();
    v4 = sub_20C13CC74();
  }

  else
  {
    v4 = 0;
  }

  *(swift_allocObject() + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D58);

  return sub_20C137CA4();
}

uint64_t sub_20B9F4200(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;

  return sub_20C137C94();
}

id sub_20B9F428C()
{
  result = [v0 topViewController];
  if (!result)
  {

    return v2;
  }

  return result;
}

void sub_20B9F42E8()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior + 16);
  if (v2 <= 0xFB && (v2 & 0xC0) == 0x40 && (*(v1 + 8) & 1) == 0)
  {
    v3 = *v1;
    v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider);
    [*(*(v4 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) safeAreaInsets];
    [*(*(v4 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
    v6 = *(*(v4 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);

    [v6 setVerticalScrollIndicatorInsets_];
  }
}

void *sub_20B9F43DC(void *result, void *a2)
{
  v3 = v2 + *result;
  v4 = *(v3 + 16);
  if (v4 <= 0xFB && (v4 & 0xC0) == 0x40 && (*(v3 + 8) & 1) == 0)
  {
    v5 = *v3;
    v6 = *(v2 + *a2);
    [*(*(v6 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) safeAreaInsets];
    [*(*(v6 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
    v8 = *(*(v6 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);

    return [v8 setVerticalScrollIndicatorInsets_];
  }

  return result;
}

void *sub_20B9F44C0(void *result, void *a2, uint64_t *a3)
{
  v4 = v3 + *result;
  v5 = *(v4 + 16);
  if (v5 <= 0xFB && (v5 & 0xC0) == 0x40 && (*(v4 + 8) & 1) == 0)
  {
    v6 = *(v3 + *a2);
    v7 = *a3;
    v8 = *v4;
    [*(*(v6 + *a3) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) safeAreaInsets];
    [*(*(v6 + v7) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
    v10 = *(*(v6 + v7) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);

    return [v10 setVerticalScrollIndicatorInsets_];
  }

  return result;
}

void sub_20B9F45B4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = &v3[OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior];
  v9 = *&v3[OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior];
  v8 = *&v3[OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior + 8];
  v10 = v3[OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior + 16];
  v12 = v10 < 0xFC && (v10 & 0xC0) == 64;
  sub_20BE84CBC(a1, a2, a3);
  v3[OBJC_IVAR____TtC9SeymourUI18RootViewController_isTransitioningContentInset] = 0;
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if (a2)
      {
        if (v12 && (v8 & 1) == 0)
        {
          v31 = *v7;
          v32 = *(v7 + 1);
          v33 = v7[16];
          *v7 = v9;
          *(v7 + 1) = 0;
          v7[16] = 64;
          if (v33 <= 0xFB && (v33 & 0xC0) == 0x40 && (v32 & 1) == 0 && v31 == v9)
          {
            LOBYTE(v30) = 64;
          }

          else
          {
            v3[OBJC_IVAR____TtC9SeymourUI18RootViewController_hasContentInsetChanged] = 1;
            v30 = v7[16];
            if (v30 > 0xFB)
            {
              goto LABEL_37;
            }
          }

LABEL_31:
          if (sub_20B92B998(*&v9, v8, v10, *v7, *(v7 + 1), v30))
          {
            return;
          }

          goto LABEL_37;
        }

        v13 = *v7;
        v14 = *(v7 + 1);
        v15 = v7[16];
        *v7 = 0;
        *(v7 + 1) = 0;
        v7[16] = 64;
        if (v15 > 0xFB || (v15 & 0xC0) != 0x40 || (v14 & 1) != 0 || v13 != 0.0)
        {
          v3[OBJC_IVAR____TtC9SeymourUI18RootViewController_hasContentInsetChanged] = 1;
        }
      }

      v30 = v7[16];
      if (v10 > 0xFB)
      {
        if (v30 > 0xFB)
        {
          return;
        }

        goto LABEL_37;
      }

      if (v30 <= 0xFB)
      {
        goto LABEL_31;
      }

LABEL_37:

      sub_20B9F42E8();
      return;
    }

    sub_20C1380E4();
  }

  else
  {
    v16 = *&v3[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider];
    [*(*(v16 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
    [*(*(v16 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];
    if (v18 <= 0.0 && v12)
    {
      v20 = v17;
      v21 = [v3 navigationController];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 navigationBar];

        if (v23)
        {
          v34 = v23;
          [v34 sizeThatFits_];
          v25 = v24;
          [v34 frame];
          v27 = v26;

          v28 = -(v25 + v27);
          [*(*(v16 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentOffset_];
          v29 = *(*(v16 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
          [v29 setContentOffset_];
        }
      }
    }
  }
}

void sub_20B9F4954(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, void *a5, void *a6, uint64_t *a7)
{
  v11 = &v7[*a4];
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = v11[16];
  v16 = v14 < 0xFC && (v14 & 0xC0) == 64;
  *v11 = a1;
  *(v11 + 1) = a2;
  v11[16] = a3;
  v7[*a5] = 0;
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if (a2)
      {
        if (v16 && (v13 & 1) == 0)
        {
          a2 = 0;
          *v11 = v12;
          *(v11 + 1) = 0;
          a3 = 64;
          v11[16] = 64;
          a1 = v12;
          goto LABEL_28;
        }

        a1 = 0;
        a2 = 0;
        *v11 = 0;
        *(v11 + 1) = 0;
        a3 = 64;
        v11[16] = 64;
      }

      if (v14 > 0xFB)
      {
LABEL_29:
        sub_20B9F44C0(a4, a6, a7);
        return;
      }

LABEL_28:
      v32 = a4;
      v33 = a6;
      v34 = a7;
      v35 = sub_20B92B998(v12, v13, v14, a1, a2, a3);
      a4 = v32;
      a6 = v33;
      a7 = v34;
      if (v35)
      {
        return;
      }

      goto LABEL_29;
    }

    sub_20C1380E4();
  }

  else
  {
    v17 = *&v7[*a6];
    v18 = *a7;
    [*(*(v17 + *a7) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
    [*(*(v17 + v18) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];
    if (v20 <= 0.0 && v16)
    {
      v22 = v19;
      v23 = [v7 navigationController];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 navigationBar];

        if (v25)
        {
          v36 = v25;
          [v36 sizeThatFits_];
          v27 = v26;
          [v36 frame];
          v29 = v28;

          v30 = -(v27 + v29);
          [*(*(v17 + v18) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentOffset_];
          v31 = *(*(v17 + v18) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
          [v31 setContentOffset_];
        }
      }
    }
  }
}

void sub_20B9F4C18(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, void *a5, void *a6, void *a7)
{
  v11 = &v7[*a4];
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = v11[16];
  v16 = v14 < 0xFC && (v14 & 0xC0) == 64;
  *v11 = *&a1;
  *(v11 + 1) = a2;
  v11[16] = a3;
  v7[*a5] = 0;
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if (a2)
      {
        if (v16 && (v13 & 1) == 0)
        {
          a2 = 0;
          *v11 = v12;
          *(v11 + 1) = 0;
          a3 = 64;
          v11[16] = 64;
          a1 = v12;
          goto LABEL_28;
        }

        *&a1 = 0.0;
        a2 = 0;
        *v11 = 0;
        *(v11 + 1) = 0;
        a3 = 64;
        v11[16] = 64;
      }

      if (v14 > 0xFB)
      {
LABEL_29:
        if ((a3 & 0xC0) == 0x40 && (a2 & 1) == 0)
        {
          v36 = *&v7[*a6];
          v37 = *a7;
          [*(*(v36 + *a7) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) safeAreaInsets];
          [*(*(v36 + v37) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
          v39 = *(*(v36 + v37) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);

          [v39 setVerticalScrollIndicatorInsets_];
        }

        return;
      }

LABEL_28:
      v33 = a6;
      v34 = a7;
      v35 = sub_20B92B998(v12, v13, v14, a1, a2, a3);
      a6 = v33;
      a7 = v34;
      if (v35)
      {
        return;
      }

      goto LABEL_29;
    }

    sub_20C1380E4();
  }

  else
  {
    v17 = *&v7[*a6];
    v18 = *&a1;
    v19 = *a7;
    [*(*(v17 + *a7) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
    [*(*(v17 + v19) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];
    if (v21 <= 0.0 && v16)
    {
      v23 = v20;
      v24 = [v7 navigationController];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 navigationBar];

        if (v26)
        {
          v40 = v26;
          [v40 sizeThatFits_];
          v28 = v27;
          [v40 frame];
          v30 = v29;

          v31 = -(v28 + v30);
          [*(*(v17 + v19) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentOffset_];
          v32 = *(*(v17 + v19) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
          [v32 setContentOffset_];
        }
      }
    }
  }
}

void sub_20B9F4F80(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, void *a5, void *a6)
{
  v10 = &v6[*a4];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = v10[16];
  v15 = v13 < 0xFC && (v13 & 0xC0) == 64;
  *v10 = a1;
  *(v10 + 1) = a2;
  v10[16] = a3;
  v6[*a5] = 0;
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if (a2)
      {
        if (v15 && (v12 & 1) == 0)
        {
          a2 = 0;
          *v10 = v11;
          *(v10 + 1) = 0;
          a3 = 64;
          v10[16] = 64;
          a1 = v11;
          goto LABEL_28;
        }

        a1 = 0;
        a2 = 0;
        *v10 = 0;
        *(v10 + 1) = 0;
        a3 = 64;
        v10[16] = 64;
      }

      if (v13 > 0xFB)
      {
LABEL_29:
        sub_20B9F43DC(a4, a6);
        return;
      }

LABEL_28:
      v30 = a4;
      v31 = a6;
      v32 = sub_20B92B998(v11, v12, v13, a1, a2, a3);
      a4 = v30;
      a6 = v31;
      if (v32)
      {
        return;
      }

      goto LABEL_29;
    }

    sub_20C1380E4();
  }

  else
  {
    v16 = *&v6[*a6];
    [*(*(v16 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
    [*(*(v16 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];
    if (v18 <= 0.0 && v15)
    {
      v20 = v17;
      v21 = [v6 navigationController];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 navigationBar];

        if (v23)
        {
          v33 = v23;
          [v33 sizeThatFits_];
          v25 = v24;
          [v33 frame];
          v27 = v26;

          v28 = -(v25 + v27);
          [*(*(v16 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentOffset_];
          v29 = *(*(v16 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
          [v29 setContentOffset_];
        }
      }
    }
  }
}

id sub_20B9F5224@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

void sub_20B9F5370()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for TVUpNextQueueListViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  sub_20B79596C(0);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_dataProvider];
  v2 = OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_page;
  v3 = *(*(v1 + OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor_];

  [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
  [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInsetAdjustmentBehavior_];
  [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setClipsToBounds_];
  v7 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_handleBackButtonPressed_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20C14F580;
  v9 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v10 = v7;
  *(v8 + 32) = [v9 initWithInteger_];
  sub_20B8602D4();
  v11 = sub_20C13CC54();

  [v10 setAllowedPressTypes_];

  [v10 setDelegate_];
  [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) addGestureRecognizer_];
  sub_20B7963A8();
}

id sub_20B9F5A68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVUpNextQueueListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVUpNextQueueListViewController()
{
  result = qword_27C769000;
  if (!qword_27C769000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B9F5BF0()
{
  sub_20B595A38();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B9F5CE0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_lastFocusedIndexPath;
  swift_beginAccess();
  return sub_20B800360(v1 + v3, a1);
}

uint64_t sub_20B9F5D38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_lastFocusedIndexPath;
  swift_beginAccess();
  sub_20B59784C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B9F5DF8(uint64_t result)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_onFocusSettled);
  if (v2)
  {
    v3 = result;

    v2(v3);

    return sub_20B5E0F50(v2);
  }

  return result;
}

void sub_20B9F5E84()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 setNeedsLayout];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = v3;
  [v3 setNeedsDisplay];
}

id sub_20B9F5F30@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_dataProvider);
  *a1 = v2;
  return v2;
}

uint64_t sub_20B9F6068(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20B9F6120()
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20B9F6184()
{
  swift_getWitnessTable();

  return sub_20C139374();
}

id sub_20B9F61F4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v22[3] = a5;
  v22[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v12 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_dynamicOfferCoordinator;
  *&a4[v12] = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v13 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_purchaseCoordinator;
  *&a4[v13] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v14 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_purchaseHandler;
  *&a4[v14] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  v15 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_webUserInterfaceCoordinator;
  *&a4[v15] = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  a4[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_visibility] = 1;
  *&a4[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_resignActiveObserver] = 0;
  v16 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_lastFocusedIndexPath;
  v17 = sub_20C133244();
  (*(*(v17 - 8) + 56))(&a4[v16], 1, 1, v17);
  *&a4[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_settlingTimer] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_bag] = v21;
  *&a4[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(&v21, &a4[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_timerProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_eventHub] = v21;
  *&a4[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_dataProvider] = a2;
  sub_20B51CC64(v22, &a4[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_pageNavigator]);
  v20.receiver = a4;
  v20.super_class = type metadata accessor for TVUpNextQueueListViewController();
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v18;
}

void sub_20B9F6480(uint64_t a1, unsigned __int8 a2)
{
  v5 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v18[-v10];
  v12 = sub_20C133244();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!v5)
  {
    v16 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_lastFocusedIndexPath;
    swift_beginAccess();
    sub_20B800360(v2 + v16, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_20B8002F8(v11);
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
      v17 = sub_20C133234();
      MEMORY[0x20F2EA980](a1, v17);
      (*(v13 + 8))(v15, v12);
      (*(v13 + 56))(v8, 0, 1, v12);
      swift_beginAccess();
      sub_20B59784C(v8, v2 + v16);
      swift_endAccess();
    }
  }

  sub_20B85EEA4(a1, a2);
}

uint64_t sub_20B9F66D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TVUpNextQueueListViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20B9F6718()
{
  v1 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_dynamicOfferCoordinator;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v2 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_purchaseCoordinator;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v3 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_purchaseHandler;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  v4 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_webUserInterfaceCoordinator;
  *(v0 + v4) = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_visibility) = 1;
  *(v0 + OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_resignActiveObserver) = 0;
  v5 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_lastFocusedIndexPath;
  v6 = sub_20C133244();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_settlingTimer) = 0;
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20B9F687C()
{
  result = qword_27C769028;
  if (!qword_27C769028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769028);
  }

  return result;
}

uint64_t CGRect.logOutput.getter()
{
  type metadata accessor for CGRect(0);
  sub_20C13DDF4();
  return 0;
}

uint64_t UIEdgeInsets.logOutput.getter()
{
  type metadata accessor for UIEdgeInsets(0);
  sub_20C13DDF4();
  return 0;
}

uint64_t sub_20B9F6A10(void (*a1)(void))
{
  a1(0);
  sub_20C13DDF4();
  return 0;
}

unint64_t sub_20B9F6AE0()
{
  result = qword_27C769030;
  if (!qword_27C769030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769030);
  }

  return result;
}

uint64_t sub_20B9F6B34()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_catalogClient);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanCatalogThemePickerShelf()
{
  result = qword_27C769048;
  if (!qword_27C769048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B9F6C9C()
{
  result = sub_20C132EE4();
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

unint64_t sub_20B9F6D6C()
{
  result = qword_27C769058;
  if (!qword_27C769058)
  {
    type metadata accessor for WorkoutPlanCatalogThemePickerOption();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769058);
  }

  return result;
}

void sub_20B9F6DC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_activationState) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_activationState) = 1;
    sub_20C13CDC4();
    v4 = sub_20C13CDF4();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v0;

    sub_20B614F94(0, 0, v3, &unk_20C168388, v5);
  }
}

uint64_t sub_20B9F6EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769060);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B9F6FB8, 0, 0);
}

uint64_t sub_20B9F6FB8()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_catalogClient), *(v0[3] + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_catalogClient + 24));
  sub_20C139FC4();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "SeymourUI/WorkoutPlanCatalogThemePickerShelf.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 59;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769068);
  *v3 = v0;
  v3[1] = sub_20B9F710C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B9F78D4, v2, v4);
}

uint64_t sub_20B9F710C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {

    v3 = sub_20B9245A0;
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v6 = v2[4];
    v2[10] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20B9F726C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B9F726C()
{
  sub_20B9F78E4(*(v0 + 80));
  v2 = v1;

  sub_20B5FA850(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20B9F7314@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B9F738C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
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

uint64_t sub_20B9F746C(uint64_t a1)
{
  v3 = sub_20C13C554();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_20C132964();
  v11 = v10;

  v34 = 0uLL;
  LOBYTE(v35) = 1;
  *(&v35 + 1) = 0;
  *&v36 = 0;
  WORD4(v36) = 128;
  v37 = 0uLL;
  v38 = xmmword_20C168270;
  *&v39 = v9;
  *(&v39 + 1) = v11;
  LOBYTE(v40) = 0;
  *(&v40 + 1) = a1;
  v41 = MEMORY[0x277D84F90];
  *&v42 = 0;
  *(&v42 + 1) = v9;
  *v43 = v11;
  *&v43[8] = xmmword_20C150190;
  nullsub_1(&v34);
  v12 = v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row;
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 144);
  v44[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 128);
  v44[9] = v13;
  v45 = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 160);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 80);
  v44[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 64);
  v44[5] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 112);
  v44[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 96);
  v44[7] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 16);
  v44[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row);
  v44[1] = v16;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 48);
  v44[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row + 32);
  v44[3] = v17;
  v18 = *v43;
  *(v12 + 128) = v42;
  *(v12 + 144) = v18;
  *(v12 + 160) = *&v43[16];
  v19 = v39;
  *(v12 + 64) = v38;
  *(v12 + 80) = v19;
  v20 = v41;
  *(v12 + 96) = v40;
  *(v12 + 112) = v20;
  v21 = v35;
  *v12 = v34;
  *(v12 + 16) = v21;
  v22 = v37;
  *(v12 + 32) = v36;
  *(v12 + 48) = v22;

  sub_20B634408(v44);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v25 = sub_20B61DBA8(v1, result);
      if (v26)
      {
        v28 = v25;
        v29 = v26;
        v30 = v27;
        v31 = v1;
        sub_20B5E2E18();
        *v6 = sub_20C13D374();
        (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
        v32 = sub_20C13C584();
        result = (*(v4 + 8))(v6, v3);
        if ((v32 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B6211BC(v28, v29, v30, v31, 0, v24);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B9F7820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B9F6EEC(a1, v4, v5, v6);
}

void sub_20B9F78E4(int64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanCatalogThemePickerOption();
  v78 = *(v2 - 8);
  v79 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (&v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_20C133A74();
  v82 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v77 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v69 - v8;
  MEMORY[0x28223BE20](v9);
  v71 = &v69 - v10;
  MEMORY[0x28223BE20](v11);
  v80 = &v69 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v69 - v14;
  v76 = sub_20C1359B4();
  MEMORY[0x28223BE20](v76);
  v74 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = MEMORY[0x277D84F90];
  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  *&v75 = v16;
  v69 = v16 + 8;
  v70 = (v16 + 16);
  v81 = a1;

  v23 = 0;
  v73 = v15;
  v24 = v76;
  if (v21)
  {
    while (1)
    {
      v25 = v23;
LABEL_9:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = v74;
      v28 = v75;
      (*(v75 + 16))(v74, *(v81 + 48) + *(v75 + 72) * (v26 | (v25 << 6)), v24);
      v29 = sub_20C1359A4();
      (*(v28 + 8))(v27, v24);
      sub_20B8DAE78(v29);
      v15 = v73;
      if (!v21)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v25 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v25);
    ++v23;
    if (v21)
    {
      v23 = v25;
      goto LABEL_9;
    }
  }

  v30 = v83;
  v31 = *(v83 + 16);
  v76 = v4;
  *&v75 = v5;
  v81 = v31;
  if (v31)
  {
    v32 = 0;
    v74 = (v82 + 16);
    v33 = (v82 + 32);
    v70 = (v82 + 8);
    v34 = MEMORY[0x277D84F90];
    while (v32 < *(v30 + 16))
    {
      v35 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v36 = *(v82 + 72);
      (*(v82 + 16))(v15, v30 + v35 + v36 * v32, v5);
      if (sub_20C133A64())
      {
        v37 = *v33;
        (*v33)(v80, v15, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D868(0, *(v34 + 16) + 1, 1);
          v34 = v83;
        }

        v40 = *(v34 + 16);
        v39 = *(v34 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_20BB5D868(v39 > 1, v40 + 1, 1);
          v34 = v83;
        }

        *(v34 + 16) = v40 + 1;
        v41 = v34 + v35 + v40 * v36;
        v5 = v75;
        v37(v41, v80, v75);
        v4 = v76;
        v15 = v73;
      }

      else
      {
        (*v70)(v15, v5);
      }

      if (v81 == ++v32)
      {
        goto LABEL_23;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_23:
  v83 = v34;
  swift_getKeyPath();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769070);
  v43 = sub_20B9F8170();
  v73 = v42;
  v70 = v43;
  v69 = sub_20C13CBF4();

  v44 = MEMORY[0x277D84F90];
  if (v81)
  {
    v45 = 0;
    v46 = (v82 + 8);
    v80 = (v82 + 32);
    v47 = v71;
    v74 = (v82 + 16);
    while (v45 < *(v30 + 16))
    {
      v48 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v49 = *(v82 + 72);
      (*(v82 + 16))(v47, v30 + v48 + v49 * v45, v5);
      if (sub_20C133A64())
      {
        (*v46)(v47, v5);
      }

      else
      {
        v50 = *v80;
        (*v80)(v72, v47, v5);
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v44;
        if ((v51 & 1) == 0)
        {
          sub_20BB5D868(0, *(v44 + 16) + 1, 1);
          v44 = v83;
        }

        v53 = *(v44 + 16);
        v52 = *(v44 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_20BB5D868(v52 > 1, v53 + 1, 1);
          v44 = v83;
        }

        *(v44 + 16) = v53 + 1;
        v54 = v44 + v48 + v53 * v49;
        v5 = v75;
        v50(v54, v72, v75);
        v4 = v76;
        v47 = v71;
      }

      if (v81 == ++v45)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_43;
  }

LABEL_34:

  v83 = v44;
  swift_getKeyPath();
  v55 = sub_20C13CBF4();

  v83 = v69;
  sub_20B8D91F0(v55);
  v56 = v83;
  v57 = *(v83 + 16);
  if (v57)
  {
    v83 = MEMORY[0x277D84F90];
    sub_20BB5DB28(0, v57, 0);
    v58 = v83;
    v80 = *(v82 + 16);
    v59 = *(v82 + 80);
    v74 = v56;
    v60 = &v56[(v59 + 32) & ~v59];
    v76 = *(v82 + 72);
    v82 += 16;
    v61 = (v82 - 8);
    v75 = xmmword_20C14F980;
    v81 = v57;
    do
    {
      v62 = v77;
      v63 = v80;
      (v80)(v77, v60, v5);
      v64 = v79;
      (v63)(v4 + *(v79 + 20), v62, v5);
      v65 = sub_20C133A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768728);
      v66 = swift_allocObject();
      *(v66 + 16) = v75;
      *(v66 + 32) = v81;
      (*v61)(v62, v5);
      *v4 = 0;
      v4[1] = 0xE000000000000000;
      *(v4 + *(v64 + 24)) = v65;
      *(v4 + *(v64 + 28)) = v66;
      v83 = v58;
      v68 = *(v58 + 16);
      v67 = *(v58 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_20BB5DB28(v67 > 1, v68 + 1, 1);
        v58 = v83;
      }

      *(v58 + 16) = v68 + 1;
      sub_20B6069D4(v4, v58 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v68);
      v60 += v76;
      --v57;
    }

    while (v57);
  }
}

unint64_t sub_20B9F8170()
{
  result = qword_27C769078;
  if (!qword_27C769078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C769070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769078);
  }

  return result;
}

void *sub_20B9F81D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView);
  v2 = v1;
  return v1;
}

char *sub_20B9F8208(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_layout];
  *v11 = xmmword_20C168410;
  *(v11 + 2) = 0x407E400000000000;
  v12 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView;
  v13 = [objc_allocWithZone(type metadata accessor for TVArtworkView()) initWithFrame_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v14 = *&qword_27C79ACA0;
  v15 = [v13 config];
  [v15 setCornerRadius_];

  v16 = [v13 config];
  [v16 setScaleSizeIncrease_];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v12] = v13;
  v17 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_titleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v19 = sub_20C13C914();
  [v18 setText_];

  [v18 setNumberOfLines_];
  v20 = objc_opt_self();
  v21 = [v20 preferredFontForTextStyle_];
  [v18 setFont_];

  v22 = objc_opt_self();
  v23 = [v22 labelColor];
  [v18 setTextColor_];

  v24 = v18;
  [v24 &selRef_count + 2];
  [v24 setAdjustsFontForContentSizeCategory_];
  LODWORD(v25) = 1148846080;
  [v24 setContentCompressionResistancePriority:1 forAxis:v25];

  *&v4[v17] = v24;
  v26 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_subtitleLabel;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v28 = sub_20C13C914();
  [v27 setText_];

  [v27 setLineBreakMode_];
  [v27 setNumberOfLines_];
  v29 = [v20 preferredFontForTextStyle_];
  [v27 setFont_];

  v30 = [v22 secondaryLabelColor];
  [v27 setTextColor_];

  v31 = v27;
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  [v31 setAdjustsFontForContentSizeCategory_];
  LODWORD(v32) = 1148846080;
  [v31 setContentCompressionResistancePriority:1 forAxis:v32];

  *&v4[v26] = v31;
  v89.receiver = v4;
  v89.super_class = type metadata accessor for TVWorkoutPlanShowcaseBrickItemCell();
  v33 = objc_msgSendSuper2(&v89, sel_initWithFrame_, a1, a2, a3, a4);
  v34 = [v33 contentView];
  v35 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView;
  v36 = *&v33[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView];
  [v34 addSubview_];

  v37 = [v33 &selRef_setMaximumFractionDigits_];
  v38 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_titleLabel;
  [v37 addSubview_];

  v39 = [v33 &selRef_setMaximumFractionDigits_];
  v86 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_subtitleLabel;
  [v39 addSubview_];

  v40 = *&v33[v35];
  v41 = &v40[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets];
  *v41 = v14;
  v41[1] = v14;
  v41[2] = v14;
  v41[3] = v14;
  v87 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C1615B0;
  v43 = [v40 leadingAnchor];
  v44 = [v33 &selRef_setMaximumFractionDigits_];
  v45 = [v44 leadingAnchor];

  v46 = [v43 constraintEqualToAnchor_];
  *(v42 + 32) = v46;
  v47 = [*&v33[v35] trailingAnchor];
  v48 = [v33 &selRef_setMaximumFractionDigits_];
  v49 = [v48 trailingAnchor];

  v50 = [v47 constraintEqualToAnchor_];
  *(v42 + 40) = v50;
  v51 = [*&v33[v35] topAnchor];
  v52 = [v33 &selRef_setMaximumFractionDigits_];
  v53 = [v52 topAnchor];

  v54 = [v51 constraintEqualToAnchor_];
  *(v42 + 48) = v54;
  v55 = [*&v33[v35] heightAnchor];
  v56 = [v55 constraintEqualToConstant_];

  *(v42 + 56) = v56;
  v57 = [*&v33[v38] leadingAnchor];
  v58 = [v33 &selRef_setMaximumFractionDigits_];
  v59 = [v58 leadingAnchor];

  v60 = [v57 constraintEqualToAnchor_];
  *(v42 + 64) = v60;
  v61 = [*&v33[v38] topAnchor];
  v62 = [*&v33[v35] bottomAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:23.0];

  *(v42 + 72) = v63;
  v64 = [*&v33[v38] trailingAnchor];
  v65 = [v33 &selRef_setMaximumFractionDigits_];
  v66 = [v65 trailingAnchor];

  v67 = [v64 constraintEqualToAnchor_];
  *(v42 + 80) = v67;
  v68 = [*&v33[v86] topAnchor];
  v69 = [*&v33[v38] bottomAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  *(v42 + 88) = v70;
  v71 = [*&v33[v86] leadingAnchor];
  v72 = [v33 contentView];
  v73 = [v72 leadingAnchor];

  v74 = [v71 constraintEqualToAnchor_];
  *(v42 + 96) = v74;
  v75 = [*&v33[v86] trailingAnchor];
  v76 = [v33 contentView];
  v77 = [v76 trailingAnchor];

  v78 = [v75 constraintEqualToAnchor_];
  *(v42 + 104) = v78;
  v79 = [*&v33[v86] bottomAnchor];
  v80 = [v33 contentView];

  v81 = [v80 bottomAnchor];
  v82 = [v79 constraintEqualToAnchor_];

  type metadata accessor for UILayoutPriority(0);
  sub_20B5F7718(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v83) = v88;
  [v82 setPriority_];
  *(v42 + 112) = v82;
  sub_20B51C88C(0, &qword_281100500);
  v84 = sub_20C13CC54();

  [v87 activateConstraints_];

  return v33;
}

id sub_20B9F8F64(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    v23 = a1;
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v6 = [v2 contentView];
    v7 = [v6 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v8 = sub_20C13CC74();

    v24[0] = MEMORY[0x277D84FA0];
    if (v8 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x20F2F5430](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        sub_20B6FFB30(&v27, v11);

        ++v10;
        if (v12 == i)
        {
          v13 = v24[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v13 = MEMORY[0x277D84FA0];
LABEL_16:

    v28 = v13;
    sub_20B6FFB30(v24, *&v3[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView]);

    v14 = sub_20B8E9218(v28);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + 32;
      do
      {
        sub_20B51CC64(v16, v24);
        v17 = *&v3[v4];
        v18 = v25;
        v19 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (*(v19 + 16))(v17, a2 & 1, v18, v19);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v16 += 40;
        --v15;
      }

      while (v15);
    }

    LOBYTE(a1) = v23;
  }

  v20 = *&v3[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_titleLabel];
  if ((a1 & 8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = 4;
  }

  [v20 setSmu:(a1 & 8) >> 3 marqueeEnabled:?];
  return [v20 setLineBreakMode_];
}

void sub_20B9F91F8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v7 = [v3 contentView];
    v8 = [v7 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v9 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v9 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x20F2F5430](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        sub_20B6FFB30(&v29, v12);

        ++v11;
        if (v13 == i)
        {
          v14 = aBlock[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v30 = v14;
    sub_20B6FFB30(aBlock, *&v3[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView]);

    v15 = sub_20B8E9218(v30);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, aBlock);
        v18 = *&v3[v6];
        v19 = v26;
        v20 = v27;
        __swift_project_boxed_opaque_existential_1(aBlock, v26);
        (*(v20 + 3))(v18, a2, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  if (a2)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v3;
    *(v21 + 24) = v5;
    v27 = sub_20B9FC54C;
    v28 = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    v26 = &block_descriptor_68;
    v22 = _Block_copy(aBlock);
    v23 = v3;

    [a2 addCoordinatedAnimations:v22 completion:0];
    _Block_release(v22);
  }
}

void sub_20B9F94FC()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_itemInfo, &qword_27C762550);

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_subtitleLabel);
}

id sub_20B9F957C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVWorkoutPlanShowcaseBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVWorkoutPlanShowcaseBrickItemCell()
{
  result = qword_27C769088;
  if (!qword_27C769088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B9F9694()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B9F975C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B9F97A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20B9F9810(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5DF2D4(a1, v1 + v3, &qword_27C762550);
  return swift_endAccess();
}

void sub_20B9F9894(double a1)
{
  v2 = 1.0 - a1;
  v3 = 0.0;
  if (v2 < 0.7)
  {
    v4 = v2 / -0.7 + 1.0;
    if (v4 <= 0.0)
    {
      v4 = 0.0;
    }

    v3 = 1.0;
    if (v4 <= 1.0)
    {
      v3 = v4;
    }
  }

  v5 = [*v1 contentView];
  [v5 setAlpha_];
}

uint64_t sub_20B9F9964(uint64_t a1, void *a2, int a3)
{
  v35 = a3;
  v5 = sub_20C137C24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v12 - 8);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
  swift_beginAccess();
  (*(v6 + 16))(v16, a1, v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v18 = *(v9 + 56);
  v34 = a2;
  sub_20B52F9E8(a2 + v17, v11, &unk_27C766680);
  sub_20B52F9E8(v16, &v11[v18], &unk_27C766680);
  v19 = *(v6 + 48);
  if (v19(v11, 1, v5) != 1)
  {
    v21 = v36;
    sub_20B52F9E8(v11, v36, &unk_27C766680);
    if (v19(&v11[v18], 1, v5) != 1)
    {
      v22 = v33;
      (*(v6 + 32))(v33, &v11[v18], v5);
      sub_20B5F7718(&qword_27C7626D8, MEMORY[0x277D53A78]);
      v23 = sub_20C13C894();
      v24 = *(v6 + 8);
      v24(v22, v5);
      sub_20B520158(v16, &unk_27C766680);
      v24(v21, v5);
      sub_20B520158(v11, &unk_27C766680);
      v20 = v23 ^ 1;
      if ((v23 ^ 1) & 1) != 0 || (v35)
      {
        return v20 & 1;
      }

      goto LABEL_10;
    }

    sub_20B520158(v16, &unk_27C766680);
    (*(v6 + 8))(v21, v5);
LABEL_7:
    sub_20B520158(v11, &qword_27C7626D0);
    v20 = 1;
    return v20 & 1;
  }

  sub_20B520158(v16, &unk_27C766680);
  if (v19(&v11[v18], 1, v5) != 1)
  {
    goto LABEL_7;
  }

  sub_20B520158(v11, &unk_27C766680);
  if (v35)
  {
    v20 = 0;
    return v20 & 1;
  }

LABEL_10:
  v25 = v34;
  [v34 bounds];
  v26 = [v25 stackImage];
  if (v26)
  {
    v27 = v26;
    [v26 size];
  }

  sub_20C13D504();
  v30 = round(fabs(v29)) > 1.0;
  v20 = round(fabs(v28)) > 1.0 || v30;
  return v20 & 1;
}

id sub_20B9F9E50(unint64_t a1)
{
  v347 = sub_20C13BB84();
  v346 = *(v347 - 8);
  MEMORY[0x28223BE20](v347);
  v345 = &v313 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v332 = *(v333 - 8);
  MEMORY[0x28223BE20](v333);
  v330 = &v313 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v331 = &v313 - v5;
  v329 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v313 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v313 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v334 = &v313 - v14;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v343 = *(v344 - 8);
  MEMORY[0x28223BE20](v344);
  v16 = &v313 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v328 = &v313 - v18;
  v327 = v19;
  MEMORY[0x28223BE20](v20);
  v335 = &v313 - v21;
  v341 = sub_20C1391C4();
  v340 = *(v341 - 8);
  MEMORY[0x28223BE20](v341);
  v342 = &v313 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = sub_20C138A64();
  v337 = *(v338 - 8);
  MEMORY[0x28223BE20](v338);
  v24 = &v313 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v336 = &v313 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v27 - 8);
  v339 = &v313 - v28;
  v29 = sub_20C13C554();
  v356 = *(v29 - 8);
  v357 = v29;
  MEMORY[0x28223BE20](v29);
  v355 = &v313 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C137C24();
  v358 = *(v31 - 8);
  v359 = v31;
  MEMORY[0x28223BE20](v31);
  v33 = &v313 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v348 = v36;
  v349 = &v313 - v35;
  MEMORY[0x28223BE20](v37);
  v352 = &v313 - v38;
  v39 = sub_20C136CD4();
  v353 = *(v39 - 8);
  v354 = v39;
  MEMORY[0x28223BE20](v39);
  v41 = &v313 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v350 = &v313 - v43;
  v44 = sub_20C134E44();
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v313 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v351 = &v313 - v48;
  v360 = sub_20C134014();
  v49 = *(v360 - 8);
  MEMORY[0x28223BE20](v360);
  v51 = &v313 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v54 = (a1 >> 57) & 0x78 | a1 & 7;
  switch(v54)
  {
    case 'J':
      v317 = v12;
      v350 = v41;
      v351 = v46;
      v352 = v33;
      v318 = v24;
      v319 = v16;
      v326 = v9;
      v148 = v49;
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A70);
      v150 = swift_projectBox();
      v151 = v150 + *(v149 + 80);
      v152 = *v151;
      v153 = *(v151 + 8);
      v154 = *(v151 + 24);
      v346 = *(v151 + 16);
      v156 = *(v151 + 32);
      v155 = *(v151 + 40);
      LOBYTE(v149) = *(v150 + *(v149 + 128));
      v347 = v148;
      (*(v148 + 16))(v51, v150, v360);
      v157 = v361;
      v158 = *&v361[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_titleLabel];
      v159 = v152;
      v160 = v153;
      v346 = v346;
      v335 = v154;

      v334 = v156;

      v324 = v155;

      v325 = v159;
      [v158 setAttributedText_];
      v161 = *&v157[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_subtitleLabel];
      v323 = v160;
      [v161 setAttributedText_];
      v162 = v51;
      if (v149)
      {
        v163 = *&v157[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView];
        sub_20B6262FC(1);
        v164 = *&v163[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_completedIconView];
        v165 = v352;
        if (v164)
        {
          v166 = objc_allocWithZone(MEMORY[0x277D75348]);
          v167 = v164;
          v168 = [v166 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
LABEL_26:
          v184 = v168;
          v185 = v346;
          v345 = v163;
          [*&v167[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_imageView] setTintColor_];

          goto LABEL_29;
        }
      }

      else
      {
        v181 = sub_20C133EB4() > 0;
        v163 = *&v157[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView];
        sub_20B6262FC(v181);
        v182 = *&v163[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_completedIconView];
        v165 = v352;
        if (v182)
        {
          v183 = objc_opt_self();
          v167 = v182;
          v168 = [v183 whiteColor];
          goto LABEL_26;
        }
      }

      v345 = v163;
      v185 = v346;
LABEL_29:
      if ((*&v157[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8) != 0)
      {
        v190 = 2;
      }

      else
      {
        v190 = 4;
      }

      [v158 setSmu:(*&v157[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8uLL) >> 3 marqueeEnabled:?];
      [v158 setLineBreakMode_];
      v191 = v351;
      sub_20C133F04();
      v321 = sub_20C138054();
      v193 = v192;
      v194 = v350;
      sub_20C134E34();
      sub_20C136CB4();
      v320 = sub_20C136CC4();
      v336 = v195;
      sub_20B51C88C(0, &qword_281100530);
      v196 = sub_20C13D374();
      v197 = v355;
      v198 = v356;
      *v355 = v196;
      v199 = v357;
      (*(v198 + 104))(v197, *MEMORY[0x277D85200], v357);
      v200 = sub_20C13C584();
      result = (*(v198 + 8))(v197, v199);
      if ((v200 & 1) == 0)
      {
        __break(1u);
LABEL_51:
        __break(1u);
        return result;
      }

      v201 = v345;
      [v345 setContentMode_];
      if (sub_20B9F9964(v165, v201, 0))
      {
        v357 = v162;
        v202 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v203 = v358;
        v204 = *(v358 + 16);
        v205 = v349;
        v206 = v165;
        v207 = v359;
        v315 = v358 + 16;
        v355 = v204;
        (v204)(v349, v206, v359);
        v208 = *(v203 + 80);
        v209 = (v208 + 24) & ~v208;
        v314 = (v348 + 7);
        v210 = (v348 + 7 + v209) & 0xFFFFFFFFFFFFFFF8;
        v211 = (v210 + 23) & 0xFFFFFFFFFFFFFFF8;
        v212 = (v211 + 23) & 0xFFFFFFFFFFFFFFF8;
        v356 = (v212 + 15) & 0xFFFFFFFFFFFFFFF8;
        v316 = v208;
        v213 = swift_allocObject();
        v322 = v193;
        v214 = v213;
        *(v213 + 16) = v202;
        v215 = v205;
        v216 = *(v203 + 32);
        v217 = v207;
        v218 = v203 + 32;
        v216(v213 + v209, v215, v217);
        v219 = (v214 + v210);
        v220 = v336;
        *v219 = v320;
        v219[1] = v220;
        v221 = (v214 + v211);
        v222 = v322;
        *v221 = v321;
        v221[1] = v222;
        *(v214 + v212) = 2;
        v223 = v214 + v356;
        *v223 = MEMORY[0x277D84F90];
        *(v223 + 8) = 0;
        v224 = (v214 + ((v212 + 31) & 0xFFFFFFFFFFFFFFF8));
        v225 = v345;
        *v224 = 0;
        v224[1] = 0;
        v226 = &v225[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        v227 = *&v225[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        *v226 = sub_20B9FC2E4;
        *(v226 + 1) = v214;

        sub_20B583ECC(v227);

        [v225 bounds];
        if (v228 <= 0.0)
        {

          v252 = v359;
          v231 = v360;
        }

        else
        {
          v230 = v229;
          v231 = v360;
          if (v229 > 0.0)
          {
            v232 = v228;
            v233 = ~v316;
            [v225 setStackImage_];
            v234 = v339;
            v356 = v218;
            v165 = v352;
            v235 = v359;
            (v355)(v339, v352, v359);
            (*(v358 + 56))(v234, 0, 1, v235);
            v236 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
            swift_beginAccess();
            sub_20B5DF2D4(v234, &v225[v236], &unk_27C766680);
            swift_endAccess();
            sub_20B51C88C(0, &qword_27C762070);
            sub_20C137BC4();
            v237 = sub_20C13D5A4();
            [v225 setBackgroundColor_];

            v238 = &v225[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize];
            *v238 = v232;
            v238[1] = v230;
            *(v238 + 16) = 0;
            v239 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v240 = v349;
            v241 = v359;
            (v355)(v349, v165, v359);
            v339 = v233;
            v242 = (v316 + 16) & v233;
            v243 = (v314 + v242) & 0xFFFFFFFFFFFFFFF8;
            v244 = (v243 + 15) & 0xFFFFFFFFFFFFFFF8;
            v245 = swift_allocObject();
            v314 = v216;
            v216(&v245[v242], v240, v241);
            *&v245[v243] = v239;
            v246 = &v245[v244];
            *v246 = v232;
            v246[1] = v230;
            v345 = v245;
            v247 = &v245[(v244 + 23) & 0xFFFFFFFFFFFFFFF8];
            *v247 = 0;
            *(v247 + 1) = 0;
            (v355)(v240, v165, v241);
            (*(v340 + 104))(v342, *MEMORY[0x277D542A8], v341);

            v248 = v318;
            sub_20C138A54();
            v249 = v317;
            sub_20B5F1ED8(v248, v317);
            v250 = v343;
            v251 = v344;
            if ((*(v343 + 48))(v249, 1, v344) == 1)
            {
              sub_20B520158(v249, &unk_27C766670);
              sub_20BA1DB78();

              (*(v337 + 8))(v248, v338);
              v252 = v359;
              v231 = v360;
            }

            else
            {
              v342 = *(v250 + 32);
              (v342)(v319, v249, v251);
              v255 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v256 = v359;
              (v355)(v240, v165, v359);
              v257 = (v316 + 40) & v339;
              v258 = v257 + v348;
              v259 = (v257 + v348) & 0xFFFFFFFFFFFFFFF8;
              v260 = swift_allocObject();
              *(v260 + 2) = v255;
              v260[3] = v232;
              v260[4] = v230;
              v314(v260 + v257, v240, v256);
              *(v260 + v258) = 0;
              v261 = v260 + v259;
              *(v261 + 1) = 0;
              *(v261 + 2) = 0;
              v262 = swift_allocObject();
              *(v262 + 16) = sub_20B9FC2EC;
              *(v262 + 24) = v260;
              v263 = v328;
              (*(v250 + 16))(v328, v319, v251);
              v264 = (*(v250 + 80) + 16) & ~*(v250 + 80);
              v265 = (v327 + v264 + 7) & 0xFFFFFFFFFFFFFFF8;
              v266 = swift_allocObject();
              (v342)(v266 + v264, v263, v251);
              v267 = (v266 + v265);
              *v267 = sub_20B5F67A4;
              v267[1] = v262;
              v268 = v331;
              sub_20C137C94();
              v269 = swift_allocObject();
              v270 = v345;
              *(v269 + 16) = sub_20B9FC2E8;
              *(v269 + 24) = v270;
              v271 = swift_allocObject();
              *(v271 + 16) = sub_20B5F67D4;
              *(v271 + 24) = v269;
              v272 = v332;
              v273 = v330;
              v274 = v333;
              (*(v332 + 16))(v330, v268, v333);
              v275 = (*(v272 + 80) + 16) & ~*(v272 + 80);
              v276 = (v329 + v275 + 7) & 0xFFFFFFFFFFFFFFF8;
              v277 = swift_allocObject();
              (*(v272 + 32))(v277 + v275, v273, v274);
              v278 = (v277 + v276);
              *v278 = sub_20B5DF204;
              v278[1] = v271;

              v279 = v326;
              sub_20C137C94();
              v280 = *(v272 + 8);
              v280(v268, v274);
              v281 = sub_20C137CB4();
              v282 = swift_allocObject();
              *(v282 + 16) = 0;
              *(v282 + 24) = 0;
              v281(sub_20B52347C, v282);
              v165 = v352;
              v231 = v360;

              v280(v279, v274);
              (*(v343 + 8))(v319, v344);
              (*(v337 + 8))(v318, v338);
              v252 = v359;
            }

            v254 = v353;
            v253 = v354;
            v194 = v350;
            v191 = v351;
            v162 = v357;
            v185 = v346;
            goto LABEL_48;
          }

          v252 = v359;
        }

        v254 = v353;
        v253 = v354;
        v191 = v351;
        v165 = v352;
        v194 = v350;
        v162 = v357;
        v185 = v346;
      }

      else
      {

        v252 = v359;
        v231 = v360;
        v254 = v353;
        v253 = v354;
      }

LABEL_48:
      (*(v358 + 8))(v165, v252);
      (*(v254 + 8))(v194, v253);

      sub_20B62A2AC(v191);
      return (*(v347 + 8))(v162, v231);
    case '!':
      v142 = v361;
      v143 = *&v361[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_titleLabel];
      v144 = sub_20C13C914();
      [v143 setText_];

      v145 = *&v142[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_subtitleLabel];
      v146 = sub_20C13C914();
      [v145 setText_];

      v147 = *&v142[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView];
      if (qword_27C760828 != -1)
      {
        v312 = *&v142[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView];
        swift_once();
        v147 = v312;
      }

      [v147 setBackgroundColor_];

      return sub_20BA1DB78();
    case ' ':
      v326 = v9;
      v55 = &v313 - v53;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
      v57 = swift_projectBox();
      v58 = v57 + *(v56 + 64);
      v59 = *v58;
      v60 = *(v58 + 8);
      v61 = *(v58 + 16);
      v62 = *(v58 + 24);
      v63 = *(v58 + 32);
      v64 = *(v58 + 40);
      v347 = v49;
      (*(v49 + 16))(v55, v57, v360);
      v65 = v361;
      v66 = *&v361[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_titleLabel];
      v67 = v59;
      v68 = v60;
      v69 = v61;
      v70 = v64;
      v320 = v69;
      v324 = v62;

      v323 = v63;

      v322 = v67;
      [v66 setAttributedText_];
      v71 = *&v65[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_subtitleLabel];
      v321 = v68;
      [v71 setAttributedText_];
      v72 = sub_20C133EB4() > 0;
      v73 = *&v65[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView];
      sub_20B6262FC(v72);
      if ((*&v65[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8) != 0)
      {
        v74 = 2;
      }

      else
      {
        v74 = 4;
      }

      [v66 setSmu:(*&v65[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8uLL) >> 3 marqueeEnabled:?];
      [v66 setLineBreakMode_];
      v75 = v351;
      v325 = v55;
      sub_20C133F04();
      v319 = sub_20C138054();
      v346 = v76;
      v77 = v350;
      sub_20C134E34();
      v78 = v352;
      sub_20C136CB4();
      v318 = sub_20C136CC4();
      v345 = v79;
      sub_20B51C88C(0, &qword_281100530);
      v80 = sub_20C13D374();
      v82 = v355;
      v81 = v356;
      *v355 = v80;
      v83 = v357;
      (*(v81 + 104))(v82, *MEMORY[0x277D85200], v357);
      v84 = sub_20C13C584();
      result = (*(v81 + 8))(v82, v83);
      if (v84)
      {
        [v73 setContentMode_];
        if ((sub_20B9F9964(v78, v73, 0) & 1) == 0)
        {

          v141 = v359;
          v187 = v353;
          v186 = v354;
          v188 = v320;
          v189 = v322;
LABEL_42:
          (*(v358 + 8))(v78, v141);
          (*(v187 + 8))(v77, v186);

          sub_20B62A2AC(v75);
          return (*(v347 + 8))(v325, v360);
        }

        v86 = v73;
        v357 = v70;
        v87 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v88 = v358;
        v89 = *(v358 + 16);
        v90 = v349;
        v91 = v78;
        v92 = v359;
        v316 = v358 + 16;
        v317 = v89;
        (v89)(v349, v91, v359);
        v93 = *(v88 + 80);
        v94 = (v93 + 24) & ~v93;
        v313 = v348 + 7;
        v95 = (v348 + 7 + v94) & 0xFFFFFFFFFFFFFFF8;
        v96 = (v95 + 23) & 0xFFFFFFFFFFFFFFF8;
        v97 = (v96 + 23) & 0xFFFFFFFFFFFFFFF8;
        v355 = ((v97 + 15) & 0xFFFFFFFFFFFFFFF8);
        v356 = v86;
        v315 = v93;
        v98 = swift_allocObject();
        *(v98 + 16) = v87;
        v100 = *(v88 + 32);
        v99 = v88 + 32;
        v314 = v100;
        v100((v98 + v94), v90, v92);
        v101 = (v98 + v95);
        v102 = v345;
        *v101 = v318;
        v101[1] = v102;
        v103 = (v98 + v96);
        v104 = v346;
        *v103 = v319;
        v103[1] = v104;
        *(v98 + v97) = 2;
        v105 = &v355[v98];
        *v105 = MEMORY[0x277D84F90];
        v105[8] = 0;
        v106 = (v98 + ((v97 + 31) & 0xFFFFFFFFFFFFFFF8));
        v107 = v356;
        *v106 = 0;
        v106[1] = 0;
        v108 = &v107[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        v109 = *&v107[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        *v108 = sub_20B9FCA2C;
        *(v108 + 1) = v98;

        sub_20B583ECC(v109);

        [v107 bounds];
        if (v110 <= 0.0 || (v112 = v111, v111 <= 0.0))
        {
        }

        else
        {
          v113 = v110;
          v114 = v315;
          v115 = ~v315;
          [v107 setStackImage_];
          v116 = v339;
          v117 = v352;
          v118 = v359;
          v317(v339);
          (*(v358 + 56))(v116, 0, 1, v118);
          v119 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
          swift_beginAccess();
          sub_20B5DF2D4(v116, &v107[v119], &unk_27C766680);
          swift_endAccess();
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v120 = sub_20C13D5A4();
          [v107 setBackgroundColor_];

          v121 = &v107[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize];
          *v121 = v113;
          v121[1] = v112;
          *(v121 + 16) = 0;
          v122 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v123 = v349;
          v124 = v117;
          v125 = v118;
          v126 = v118;
          v127 = v317;
          (v317)(v349, v124, v126);
          v356 = v99;
          v339 = v115;
          v128 = (v114 + 16) & v115;
          v129 = (v313 + v128) & 0xFFFFFFFFFFFFFFF8;
          v130 = (v129 + 15) & 0xFFFFFFFFFFFFFFF8;
          v131 = swift_allocObject();
          v132 = v131 + v128;
          v133 = v127;
          v314(v132, v123, v125);
          *(v131 + v129) = v122;
          v134 = (v131 + v130);
          *v134 = v113;
          v134[1] = v112;
          v355 = v131;
          v135 = (v131 + ((v130 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v135 = 0;
          v135[1] = 0;
          v136 = v125;
          v133(v123, v352, v125);
          (*(v340 + 104))(v342, *MEMORY[0x277D542A8], v341);

          v137 = v336;
          sub_20C138A54();
          v138 = v334;
          sub_20B5F1ED8(v137, v334);
          v139 = v343;
          v140 = v344;
          if ((*(v343 + 48))(v138, 1, v344) == 1)
          {
            sub_20B520158(v138, &unk_27C766670);
            sub_20BA1DB78();

            (*(v337 + 8))(v137, v338);
            v141 = v125;
LABEL_41:
            v187 = v353;
            v186 = v354;
            v75 = v351;
            v78 = v352;
            v77 = v350;
            v189 = v322;
            v188 = v320;
            goto LABEL_42;
          }

          v345 = *(v139 + 32);
          v283 = v140;
          (v345)(v335, v138, v140);
          v284 = swift_allocObject();
          swift_unknownObjectWeakInit();
          (v317)(v123, v352, v125);
          v285 = (v315 + 40) & v339;
          v286 = v285 + v348;
          v287 = (v285 + v348) & 0xFFFFFFFFFFFFFFF8;
          v288 = swift_allocObject();
          *(v288 + 2) = v284;
          v288[3] = v113;
          v288[4] = v112;
          v314(v288 + v285, v123, v136);
          *(v288 + v286) = 0;
          v289 = v288 + v287;
          *(v289 + 1) = 0;
          *(v289 + 2) = 0;
          v290 = swift_allocObject();
          *(v290 + 16) = sub_20B9FCA14;
          *(v290 + 24) = v288;
          v291 = v328;
          (*(v139 + 16))(v328, v335, v283);
          v292 = (*(v139 + 80) + 16) & ~*(v139 + 80);
          v293 = (v327 + v292 + 7) & 0xFFFFFFFFFFFFFFF8;
          v294 = swift_allocObject();
          (v345)(v294 + v292, v291, v283);
          v295 = (v294 + v293);
          *v295 = sub_20B5F7760;
          v295[1] = v290;
          v296 = v331;
          sub_20C137C94();
          v297 = swift_allocObject();
          v298 = v355;
          *(v297 + 16) = sub_20B9FCA30;
          *(v297 + 24) = v298;
          v299 = swift_allocObject();
          *(v299 + 16) = sub_20B5F7790;
          *(v299 + 24) = v297;
          v300 = v332;
          v301 = v330;
          v302 = v139;
          v303 = v333;
          (*(v332 + 16))(v330, v296, v333);
          v304 = (*(v300 + 80) + 16) & ~*(v300 + 80);
          v305 = (v329 + v304 + 7) & 0xFFFFFFFFFFFFFFF8;
          v306 = swift_allocObject();
          (*(v300 + 32))(v306 + v304, v301, v303);
          v307 = (v306 + v305);
          *v307 = sub_20B5F7764;
          v307[1] = v299;

          v308 = v326;
          sub_20C137C94();
          v309 = *(v300 + 8);
          v309(v296, v303);
          v310 = sub_20C137CB4();
          v311 = swift_allocObject();
          *(v311 + 16) = 0;
          *(v311 + 24) = 0;
          v310(sub_20B5DF6DC, v311);

          v309(v308, v303);
          (*(v302 + 8))(v335, v344);
          (*(v337 + 8))(v336, v338);
        }

        v141 = v359;
        goto LABEL_41;
      }

      goto LABEL_51;
    default:
      v169 = v345;
      sub_20C13B534();

      v170 = v361;
      v171 = sub_20C13BB74();
      v172 = sub_20C13D1D4();

      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v362[0] = v175;
        *v173 = 138543618;
        *(v173 + 4) = v170;
        *v174 = v170;
        *(v173 + 12) = 2082;
        v362[3] = a1;
        v176 = sub_20B5F66D0();
        v177 = v170;
        v178 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v176);
        v180 = sub_20B51E694(v178, v179, v362);

        *(v173 + 14) = v180;
        _os_log_impl(&dword_20B517000, v171, v172, "Attempted to configure %{public}@ with item: %{public}s", v173, 0x16u);
        sub_20B520158(v174, &unk_27C762E30);
        MEMORY[0x20F2F6A40](v174, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v175);
        MEMORY[0x20F2F6A40](v175, -1, -1);
        MEMORY[0x20F2F6A40](v173, -1, -1);
      }

      return (*(v346 + 1))(v169, v347);
  }
}

void sub_20B9FC304()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA5F854(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B9FC3DC(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63970(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B9FC498(uint64_t *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F31AC(*a1, *(v1 + 16), v1 + v4, *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

id sub_20B9FC54C()
{
  v1 = (*(v0 + 24) & 8uLL) >> 3;
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_titleLabel);
  if ((*(v0 + 24) & 8) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  [v2 setSmu:v1 marqueeEnabled:?];

  return [v2 setLineBreakMode_];
}

void sub_20B9FC5BC()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_layout;
  *v3 = xmmword_20C168410;
  *(v3 + 16) = 0x407E400000000000;
  v4 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView;
  v5 = [objc_allocWithZone(type metadata accessor for TVArtworkView()) initWithFrame_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v6 = *&qword_27C79ACA0;
  v7 = [v5 config];
  [v7 setCornerRadius_];

  v8 = [v5 config];
  [v8 setScaleSizeIncrease_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  v9 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_titleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = sub_20C13C914();
  [v10 setText_];

  [v10 setNumberOfLines_];
  v12 = objc_opt_self();
  v13 = [v12 preferredFontForTextStyle_];
  [v10 setFont_];

  v14 = objc_opt_self();
  v15 = [v14 labelColor];
  [v10 setTextColor_];

  v16 = v10;
  [v16 &selRef_count + 2];
  [v16 setAdjustsFontForContentSizeCategory_];
  LODWORD(v17) = 1148846080;
  [v16 setContentCompressionResistancePriority:1 forAxis:v17];

  *(v0 + v9) = v16;
  v18 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_subtitleLabel;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  v20 = sub_20C13C914();
  [v19 setText_];

  [v19 setLineBreakMode_];
  [v19 setNumberOfLines_];
  v21 = [v12 preferredFontForTextStyle_];
  [v19 setFont_];

  v22 = [v14 secondaryLabelColor];
  [v19 setTextColor_];

  v23 = v19;
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 setAdjustsFontForContentSizeCategory_];
  LODWORD(v24) = 1148846080;
  [v23 setContentCompressionResistancePriority:1 forAxis:v24];

  *(v0 + v18) = v23;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B9FCA34()
{
  v1 = type metadata accessor for MetadataEntry();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_20C135A64();
  v6 = OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_accessibilityTags;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_accessibilityTags) = v5;

  if (*(*(v0 + v6) + 16))
  {
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_storefrontLocalizer + 24));
    v8 = sub_20C138D34();
    v10 = v9;
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_mediaTagStringBuilder), *(v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_mediaTagStringBuilder + 24));

    v11 = sub_20C138544();

    sub_20C132ED4();
    v4[4] = 0;
    v4[5] = 0;
    *v4 = v11;
    v4[1] = 1;
    v4[2] = v8;
    v4[3] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7690A8);
    v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_20C14F980;
    sub_20B9FD7D8(v4, v13 + v12, type metadata accessor for MetadataEntry);
    sub_20B9FCC54(v13);

    return sub_20B9FD758(v4, type metadata accessor for MetadataEntry);
  }

  return result;
}

uint64_t sub_20B9FCC54(uint64_t a1)
{
  v3 = sub_20C13C554();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = 1;
  v6 = v5 | 0x4000000000000004;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_storefrontLocalizer + 24));

  v7 = sub_20C138D34();
  v9 = v8;
  if (sub_20C1380F4() == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20C14F980;
  *(v11 + 32) = v6;
  v42 = 0uLL;
  LOBYTE(v43) = 1;
  *(&v43 + 1) = 0;
  *&v44 = 0;
  WORD4(v44) = 128;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  LOBYTE(v48) = 0;
  *(&v48 + 1) = v11;
  v49 = MEMORY[0x277D84F90];
  *&v50 = 0;
  *(&v50 + 1) = v7;
  v51 = v9;
  v52 = v10;
  v12 = v41;
  nullsub_1(&v42);
  v13 = v12 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row;
  v14 = *(v12 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 144);
  v53[8] = *(v12 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 128);
  v53[9] = v14;
  v54 = *(v12 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 160);
  v15 = *(v12 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 80);
  v53[4] = *(v12 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 64);
  v53[5] = v15;
  v16 = *(v12 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 112);
  v53[6] = *(v12 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 96);
  v53[7] = v16;
  v17 = *(v12 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 16);
  v53[0] = *(v12 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row);
  v53[1] = v17;
  v18 = *(v12 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 48);
  v53[2] = *(v12 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 32);
  v53[3] = v18;
  v19 = v51;
  *(v13 + 128) = v50;
  *(v13 + 144) = v19;
  *(v13 + 160) = v52;
  v20 = v47;
  *(v13 + 64) = v46;
  *(v13 + 80) = v20;
  v21 = v49;
  *(v13 + 96) = v48;
  *(v13 + 112) = v21;
  v22 = v43;
  *v13 = v42;
  *(v13 + 16) = v22;
  v23 = v45;
  *(v13 + 32) = v44;
  *(v13 + 48) = v23;

  sub_20B634408(v53);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v25 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    v26 = sub_20B61DBD0(v12, Strong);
    if (v27)
    {
      v29 = v27;
      v30 = v28;
      v37 = v26;
      sub_20B5E2E18();
      v31 = sub_20C13D374();
      v33 = v38;
      v32 = v39;
      *v38 = v31;
      v34 = v40;
      (*(v32 + 104))(v33, *MEMORY[0x277D85200], v40);
      v35 = sub_20C13C584();
      result = (*(v32 + 8))(v33, v34);
      if ((v35 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      sub_20B621200(v37, v29, v30, v12, 1, v25);
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20B9FCFC8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_storefrontLocalizer);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessibilityShelf()
{
  result = qword_27C769098;
  if (!qword_27C769098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B9FD130()
{
  result = sub_20C132EE4();
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

id sub_20B9FD1F0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for MetadataEntry();
  v7 = *(v6 + 28);
  if ((sub_20C132EC4() & 1) == 0)
  {
    return sub_20B9FD7D8(a1, a3, type metadata accessor for MetadataEntry);
  }

  v8 = a1[1];
  if (v8 < 0)
  {
    return sub_20B9FD7D8(a1, a3, type metadata accessor for MetadataEntry);
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = *(a2 + 8);
  if (v11 < 0 || (v11 & 1) == 0)
  {
    v12 = 0x4000000000000001;
  }

  else
  {
    v12 = 0x4000000000000000;
  }

  v14 = *(v6 + 28);
  v15 = sub_20C132EE4();
  (*(*(v15 - 8) + 16))(&a3[v14], a1 + v7, v15);
  v16 = *a1;
  v17 = a1[4];
  v18 = a1[5];
  *(a3 + 4) = v17;
  *(a3 + 5) = v18;
  *a3 = v16;
  *(a3 + 1) = v12;
  *(a3 + 2) = v9;
  *(a3 + 3) = v10;
  sub_20B9FD840(v8);

  return v16;
}

uint64_t sub_20B9FD31C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B9FD394@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
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

uint64_t sub_20B9FD444()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_row;
  sub_20B5D8060(v9);
  v2 = v9[9];
  *(v1 + 128) = v9[8];
  *(v1 + 144) = v2;
  *(v1 + 160) = v10;
  v3 = v9[5];
  *(v1 + 64) = v9[4];
  *(v1 + 80) = v3;
  v4 = v9[7];
  *(v1 + 96) = v9[6];
  *(v1 + 112) = v4;
  v5 = v9[1];
  *v1 = v9[0];
  *(v1 + 16) = v5;
  v6 = v9[3];
  *(v1 + 32) = v9[2];
  *(v1 + 48) = v6;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_accessibilityTags) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v8, v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v8, v0 + OBJC_IVAR____TtC9SeymourUI18AccessibilityShelf_storefrontLocalizer);
  return v0;
}

uint64_t sub_20B9FD584(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for MetadataEntry();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20B9FD7D8(a2, v6, type metadata accessor for ShelfItemAction);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v10 = sub_20B60E3E0(v6, v9);
    if (((a1 >> 57) & 0x78 | a1 & 7) == 0x24)
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      MEMORY[0x28223BE20](v10);
      *&v16[-16] = v9;

      v12 = sub_20B5E6F7C(sub_20B9FD7B8, &v16[-32], v11);

      sub_20B9FCC54(v12);
    }

    v13 = type metadata accessor for MetadataEntry;
    v14 = v9;
  }

  else
  {
    v13 = type metadata accessor for ShelfItemAction;
    v14 = v6;
  }

  return sub_20B9FD758(v14, v13);
}

uint64_t sub_20B9FD758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B9FD7D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B9FD840(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

id TVBrowsingNavigationController.allowsModalMessageDisplay.getter()
{
  result = [v0 topViewController];
  if (result)
  {
    v2 = result;
    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = (*(v4 + 8))(ObjectType, v4);

      return (v5 == 1);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_20B9FD904()
{
  result = [v0 topViewController];
  if (result)
  {
    v2 = result;
    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = (*(v4 + 8))(ObjectType, v4);

      return (v5 == 1);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_20B9FD99C()
{
  v0 = sub_20C136084();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_20C13B234();
    v6 = *(v4 + 128);
    MEMORY[0x28223BE20](v5);
    *(&v9 - 2) = v2;
    *(&v9 - 1) = v4;
    v7 = *(*v6 + *MEMORY[0x277D841D0] + 16);
    v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v6 + v8));
    sub_20B9FF8EC(v6 + v7);
    os_unfair_lock_unlock((v6 + v8));

    return sub_20B9FF908(v2, MEMORY[0x277D525B8]);
  }

  return result;
}

uint64_t sub_20B9FDB04()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20B517000, v4, v5, "RemoteBrowsingEnvironment update requested", v6, 2u);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 128);
    v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
    v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v8 + v10));
    sub_20B9FF9D0(v8 + v9);
    os_unfair_lock_unlock((v8 + v10));
  }

  return result;
}

uint64_t sub_20B9FDCD8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 128);
    v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
    v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v1 + v3));
    sub_20B9FF9D0(v1 + v2);
    os_unfair_lock_unlock((v1 + v3));
  }

  return result;
}

uint64_t sub_20B9FDD98()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 128);
    v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
    v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v1 + v3));
    sub_20B9FF8D0(v1 + v2);
    os_unfair_lock_unlock((v1 + v3));
  }

  return result;
}

uint64_t sub_20B9FDE58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764680);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = sub_20C136C64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C136084();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B9FF908(a1, type metadata accessor for RemoteBrowsingSourceCoordinator.State);
  sub_20B9FF968(a2, v13, MEMORY[0x277D525B8]);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766A10);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    sub_20C13A404();
  }

  else
  {
    (*(v8 + 32))(v10, &v13[*(v14 + 48)], v7);
    (*(v8 + 16))(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_20C13A424();
    sub_20B520158(v6, &qword_27C764680);
    (*(v8 + 8))(v10, v7);
    v15 = sub_20C135174();
    (*(*(v15 - 8) + 8))(v13, v15);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A510);
  return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
}

uint64_t sub_20B9FE16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a4;
  v95 = a3;
  v100 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v78 - v6;
  v85 = sub_20C13BB84();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v91 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C136C64();
  v97 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v88 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v83 = &v78 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764680);
  MEMORY[0x28223BE20](v96);
  v89 = (&v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v93 = (&v78 - v14);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7690C0);
  MEMORY[0x28223BE20](v99);
  v16 = &v78 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v17 - 8);
  v98 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v78 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v78 - v23;
  v25 = type metadata accessor for RemoteBrowsingSourceCoordinator.State();
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C135174();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v90 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v78 - v32;
  v94 = a1;
  sub_20B9FF968(a1, v27, type metadata accessor for RemoteBrowsingSourceCoordinator.State);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A510);
  v92 = *(v34 - 8);
  if ((*(v92 + 48))(v27, 1, v34) == 1)
  {
    return sub_20B9FF908(v27, type metadata accessor for RemoteBrowsingSourceCoordinator.State);
  }

  v80 = v34;
  v81 = v8;
  v79 = v29[4];
  v79(v33, v27, v28);
  v36 = v29[2];
  v82 = v33;
  v36(v24, v33, v28);
  v101 = v29;
  v37 = v29[7];
  v37(v24, 0, 1, v28);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 80, v103);

    __swift_project_boxed_opaque_existential_1(v103, v104);
    sub_20C13B184();
    __swift_destroy_boxed_opaque_existential_1(v103);
  }

  else
  {
    v37(v21, 1, 1, v28);
  }

  v39 = v28;
  v40 = *(v99 + 48);
  sub_20B52F9E8(v24, v16, &unk_27C76BC00);
  sub_20B52F9E8(v21, &v16[v40], &unk_27C76BC00);
  v41 = v101[6];
  if (v41(v16, 1, v39) == 1)
  {
    sub_20B520158(v21, &unk_27C76BC00);
    sub_20B520158(v24, &unk_27C76BC00);
    v42 = v39;
    if (v41(&v16[v40], 1, v39) == 1)
    {
      sub_20B520158(v16, &unk_27C76BC00);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v43 = v98;
  sub_20B52F9E8(v16, v98, &unk_27C76BC00);
  if (v41(&v16[v40], 1, v39) == 1)
  {
    sub_20B520158(v21, &unk_27C76BC00);
    sub_20B520158(v24, &unk_27C76BC00);
    v42 = v39;
    (v101[1])(v43, v39);
LABEL_11:
    sub_20B520158(v16, &unk_27C7690C0);
    v44 = v101[1];
    return v44(v82, v42);
  }

  v45 = v90;
  v79(v90, &v16[v40], v39);
  sub_20B9FF878();
  v46 = sub_20C13C894();
  v44 = v101[1];
  v44(v45, v39);
  sub_20B520158(v21, &unk_27C76BC00);
  sub_20B520158(v24, &unk_27C76BC00);
  v42 = v39;
  v44(v98, v39);
  sub_20B520158(v16, &unk_27C76BC00);
  if ((v46 & 1) == 0)
  {
    return v44(v82, v42);
  }

LABEL_14:
  v47 = v94;
  sub_20B9FF908(v94, type metadata accessor for RemoteBrowsingSourceCoordinator.State);
  (*(v92 + 56))(v47, 1, 1, v80);
  v48 = v93;
  sub_20B52F9E8(v95, v93, &qword_27C764680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = *v48;
    v50 = v91;
    sub_20C13B484();
    v51 = v49;
    v52 = sub_20C13BB74();
    v53 = sub_20C13D1D4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v103[0] = v55;
      *v54 = 136446210;
      v102 = v49;
      v56 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
      v57 = sub_20C13C9D4();
      v59 = sub_20B51E694(v57, v58, v103);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_20B517000, v52, v53, "Refreshing remote browsing environment failed: %{public}s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x20F2F6A40](v55, -1, -1);
      MEMORY[0x20F2F6A40](v54, -1, -1);

      (*(v84 + 8))(v91, v85);
    }

    else
    {

      (*(v84 + 8))(v50, v85);
    }

    v65 = v42;
    v66 = v97;
    v67 = v88;
    __swift_project_boxed_opaque_existential_1((v86 + 80), *(v86 + 104));
    v68 = v87;
    sub_20C13B174();
    v69 = v68;
    v70 = v68;
    v71 = v81;
    if ((*(v66 + 48))(v70, 1, v81) == 1)
    {
      sub_20B520158(v69, &qword_27C768690);
      swift_beginAccess();
      v72 = swift_weakLoadStrong();
      v73 = v101;
      if (v72)
      {

        v74 = v89;
        *v89 = v49;
        swift_storeEnumTagMultiPayload();
        v75 = v49;
        sub_20C13A424();

        sub_20B520158(v74, &qword_27C764680);
      }

      else
      {
      }
    }

    else
    {
      (*(v66 + 32))(v67, v69, v71);
      swift_beginAccess();
      v76 = swift_weakLoadStrong();
      v73 = v101;
      if (v76)
      {

        v77 = v89;
        (*(v66 + 16))(v89, v67, v71);
        swift_storeEnumTagMultiPayload();
        sub_20C13A424();

        sub_20B520158(v77, &qword_27C764680);
      }

      else
      {
      }

      (*(v66 + 8))(v67, v71);
    }

    return (v73[1])(v82, v65);
  }

  else
  {
    v60 = v97;
    v61 = v83;
    v62 = v81;
    (*(v97 + 32))(v83, v48, v81);
    swift_beginAccess();
    v63 = swift_weakLoadStrong();
    if (v63)
    {
      sub_20B51CC64(v63 + 80, v103);

      __swift_project_boxed_opaque_existential_1(v103, v104);
      sub_20C13B1B4();
      __swift_destroy_boxed_opaque_existential_1(v103);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v64 = v89;
      (*(v60 + 16))(v89, v61, v62);
      swift_storeEnumTagMultiPayload();
      sub_20C13A424();

      sub_20B520158(v64, &qword_27C764680);
    }

    (*(v60 + 8))(v61, v62);
    return (v101[1])(v82, v42);
  }
}

uint64_t sub_20B9FEF44(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764678);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = v33 - v5;
  v6 = sub_20C13BB84();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v33 - v10;
  v12 = sub_20C135174();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v36 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RemoteBrowsingSourceCoordinator.State();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  sub_20B9FF968(a1, v17, type metadata accessor for RemoteBrowsingSourceCoordinator.State);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A510);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) != 1)
  {
    return (*(v13 + 8))(v17, v12);
  }

  v33[1] = v2;
  __swift_project_boxed_opaque_existential_1((v40 + 80), *(v40 + 104));
  sub_20C13B184();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_20B520158(v11, &unk_27C76BC00);
  }

  v22 = v18;
  sub_20B9FF908(v18, type metadata accessor for RemoteBrowsingSourceCoordinator.State);
  v23 = *(v13 + 32);
  v24 = v12;
  v25 = v36;
  v26 = v24;
  v33[0] = v24;
  v23();
  sub_20C13B484();
  sub_20C13BB64();
  (*(v34 + 8))(v8, v35);
  v27 = v40;
  sub_20C13A404();
  (*(v13 + 16))(v22, v25, v26);
  (*(v20 + 56))(v22, 0, 1, v19);
  __swift_project_boxed_opaque_existential_1((v27 + 40), *(v27 + 64));
  v28 = v37;
  sub_20C139984();
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = v39;
  v31 = sub_20C137CB4();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_20B9FF850;
  *(v32 + 24) = v29;

  v31(sub_20B52F238, v32);

  (*(v38 + 8))(v28, v30);
  return (*(v13 + 8))(v25, v33[0]);
}