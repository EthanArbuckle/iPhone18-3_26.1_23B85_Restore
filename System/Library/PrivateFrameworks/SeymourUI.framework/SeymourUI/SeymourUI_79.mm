char *sub_20BE02ECC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_showSeparator] = 1;
  v11 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v12 = 16.0;
  }

  else
  {
    v12 = 4.0;
  }

  v13 = &v4[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView];
  v14 = [v11 layer];
  [v14 setCornerRadius_];

  [v11 setClipsToBounds_];
  *v13 = v11;
  v13[1] = &off_2822B63E8;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setAdjustsFontForContentSizeCategory_];
  v16 = *MEMORY[0x277D76940];
  v17 = objc_opt_self();
  v18 = [v17 preferredFontDescriptorWithTextStyle:v16 compatibleWithTraitCollection:0];
  v19 = [v18 fontDescriptorWithSymbolicTraits_];
  if (v19)
  {
    v20 = v19;

    v18 = v20;
  }

  v21 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_captionLabel;
  v22 = objc_opt_self();
  v23 = [v22 fontWithDescriptor:v18 size:0.0];

  [v15 setFont_];
  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  [v15 setAllowsDefaultTighteningForTruncation_];
  v24 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v15 setTextColor_];

  v25 = objc_opt_self();
  v26 = [v25 systemBackgroundColor];
  [v15 setBackgroundColor_];

  *&v4[v21] = v15;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 setAdjustsFontForContentSizeCategory_];
  v28 = [v17 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
  v29 = [v28 fontDescriptorWithSymbolicTraits_];
  if (v29)
  {
    v30 = v29;

    v28 = v30;
  }

  v31 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_titleLabel;
  v32 = [v22 fontWithDescriptor:v28 size:0.0];

  [v27 setFont_];
  [v27 setAllowsDefaultTighteningForTruncation_];
  v33 = [v25 whiteColor];
  [v27 setTextColor_];

  [v27 setNumberOfLines_];
  [v27 setLineBreakMode_];
  *&v4[v31] = v27;
  v34 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [v34 setAdjustsFontForContentSizeCategory_];
  v35 = [v17 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v36 = [v35 fontDescriptorWithSymbolicTraits_];
  if (v36)
  {
    v37 = v36;

    v35 = v37;
  }

  v38 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_subtitleLabel;
  v39 = [v22 fontWithDescriptor:v35 size:0.0];

  [v34 setFont_];
  [v34 setAllowsDefaultTighteningForTruncation_];
  v40 = [v25 secondaryLabelColor];
  [v34 setTextColor_];

  [v34 setNumberOfLines_];
  [v34 setLineBreakMode_];
  *&v4[v38] = v34;
  v41 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_separator;
  v42 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v42 setTranslatesAutoresizingMaskIntoConstraints_];
  v43 = [v25 separatorColor];
  [v42 setBackgroundColor_];

  *&v4[v41] = v42;
  v44 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_textLayoutGuide;
  *&v4[v44] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *&v4[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_layoutConstraints] = MEMORY[0x277D84F90];
  v45 = &v4[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_layout];
  __asm { FMOV            V0.2D, #10.0 }

  *v45 = _Q0;
  *(v45 + 1) = xmmword_20C163EB0;
  *(v45 + 2) = xmmword_20C17F000;
  *(v45 + 6) = 0;
  v45[56] = 1;
  *(v45 + 8) = 0x3FE2000000000000;
  v59.receiver = v4;
  v59.super_class = type metadata accessor for WorkoutPlanScheduledItemCell();
  v51 = objc_msgSendSuper2(&v59, sel_initWithFrame_, a1, a2, a3, a4);
  v52 = [v51 contentView];
  [v52 addSubview_];

  v53 = [v51 contentView];
  [v53 addSubview_];

  v54 = [v51 contentView];
  [v54 addSubview_];

  v55 = [v51 contentView];
  [v55 addSubview_];

  [v51 addSubview_];
  v56 = [v51 contentView];

  [v56 addLayoutGuide_];
  v57 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  [v51 addLayoutGuide_];
  sub_20BE039B8();

  return v51;
}

uint64_t sub_20BE0376C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for WorkoutPlanScheduledItemCell();
  v12.receiver = v0;
  v12.super_class = v4;
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView];
  v6 = [v5 layer];
  [v6 setBorderColor_];

  v7 = [v5 layer];
  [v7 setBorderWidth_];

  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v3, &v0[v9]);
  return swift_endAccess();
}

void sub_20BE039B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C151850;
  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView];
  v5 = [v4 leadingAnchor];
  v6 = [v1 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  v3[4] = v8;
  v9 = [v4 widthAnchor];
  v10 = &v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_layout];
  swift_beginAccess();
  sub_20BE02D88();
  v12 = v11;
  swift_endAccess();
  v13 = [v9 constraintEqualToConstant_];

  v3[5] = v13;
  v14 = [v4 heightAnchor];
  v15 = [v4 widthAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 multiplier:v10[8]];

  v3[6] = v16;
  v17 = [v4 topAnchor];
  v18 = [v1 &selRef_setMaximumFractionDigits_];
  v19 = [v18 &selRef_setLineBreakMode_];

  v20 = [v17 constraintGreaterThanOrEqualToAnchor:v19 constant:*v10];
  v3[7] = v20;
  v21 = [v4 bottomAnchor];
  v22 = [v1 &selRef_setMaximumFractionDigits_];
  v23 = [v22 &selRef_secondaryLabel + 5];

  v105 = v10;
  v24 = [v21 constraintLessThanOrEqualToAnchor:v23 constant:-*v10];

  v3[8] = v24;
  v108 = v3;
  v25 = [v4 centerYAnchor];
  v26 = [v1 &selRef_setMaximumFractionDigits_];
  v27 = [v26 centerYAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  v3[9] = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20C150050;
  v30 = v29;
  v31 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_textLayoutGuide];
  v32 = [v31 leadingAnchor];
  v33 = [v4 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:v10[1]];

  v30[4] = v34;
  v35 = [v31 centerYAnchor];
  v36 = [v1 contentView];
  v37 = [v36 centerYAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  v30[5] = v38;
  v39 = [v31 trailingAnchor];
  v40 = [v1 contentView];
  v41 = [v40 trailingAnchor];

  v42 = [v39 constraintEqualToAnchor_];
  v30[6] = v42;
  v43 = [v31 topAnchor];
  v44 = [v1 contentView];
  v45 = [v44 topAnchor];

  v46 = [v43 constraintGreaterThanOrEqualToAnchor_];
  v30[7] = v46;
  v107 = v30;
  v47 = [v31 bottomAnchor];
  v48 = [v1 &selRef_setMaximumFractionDigits_];
  v49 = [v48 bottomAnchor];

  v50 = [v47 constraintLessThanOrEqualToAnchor_];
  v30[8] = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_20C150040;
  v52 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_captionLabel];
  v53 = [v52 leadingAnchor];
  v54 = [v31 leadingAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v51 + 32) = v55;
  v56 = [v52 trailingAnchor];
  v57 = [v31 trailingAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  v106 = v51;
  *(v51 + 40) = v58;
  v59 = [v52 topAnchor];
  v60 = [v31 topAnchor];
  v61 = [v59 &selRef:v60 alertControllerReleasedDictationButton:? + 5];

  *(v51 + 48) = v61;
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_20C150040;
  v63 = v62;
  v64 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_titleLabel];
  v65 = [v64 leadingAnchor];
  v66 = [v31 leadingAnchor];
  v67 = [v65 &selRef:v66 alertControllerReleasedDictationButton:? + 5];

  v63[4] = v67;
  v68 = [v64 trailingAnchor];
  v69 = [v31 trailingAnchor];
  v70 = [v68 &selRef:v69 alertControllerReleasedDictationButton:? + 5];

  v63[5] = v70;
  v104 = v63;
  v71 = [v64 topAnchor];
  v72 = [v52 bottomAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:v105[2]];

  v63[6] = v73;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_20C14FE90;
  v75 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_subtitleLabel];
  v76 = [v75 leadingAnchor];
  v77 = [v31 leadingAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  *(v74 + 32) = v78;
  v79 = [v75 trailingAnchor];
  v80 = [v31 trailingAnchor];
  v81 = [v79 constraintEqualToAnchor_];

  *(v74 + 40) = v81;
  v82 = [v75 topAnchor];
  v83 = [v64 bottomAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:v105[3]];

  *(v74 + 48) = v84;
  v85 = [v75 bottomAnchor];
  v86 = [v31 bottomAnchor];
  v87 = [v85 constraintEqualToAnchor_];

  *(v74 + 56) = v87;
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_20C14FE90;
  v89 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_separator];
  v90 = [v89 leadingAnchor];
  v91 = [v31 leadingAnchor];
  v92 = [v90 constraintEqualToAnchor_];

  *(v88 + 32) = v92;
  v93 = [v89 trailingAnchor];
  v94 = [v1 trailingAnchor];
  v95 = [v93 constraintEqualToAnchor_];

  *(v88 + 40) = v95;
  v96 = [v89 bottomAnchor];
  v97 = [v1 bottomAnchor];
  v98 = [v96 constraintEqualToAnchor_];

  *(v88 + 48) = v98;
  v99 = [v89 heightAnchor];
  sub_20C1387F4();
  v100 = [v99 constraintEqualToConstant_];

  *(v88 + 56) = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150DB0;
  *(inited + 32) = v108;
  *(inited + 40) = v107;
  *(inited + 48) = v106;
  *(inited + 56) = v104;
  *(inited + 64) = v74;
  *(inited + 72) = v88;
  v102 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500);
  v103 = sub_20C13CC54();

  [v102 activateConstraints_];
}

id sub_20BE0465C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutPlanScheduledItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WorkoutPlanScheduledItemCell()
{
  result = qword_281100C20;
  if (!qword_281100C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE047B4()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BE048A0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BE048EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BE04944(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20BE049A8(char a1)
{
  v2 = *v1;
  *(v2 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_showSeparator) = a1;
  return [*(v2 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_separator) setHidden_];
}

void sub_20BE049F8(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v229 = &v204 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v230 = &v204 - v7;
  v228 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v204 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v12 - 8);
  v237 = &v204 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v227 = &v204 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = v16;
  MEMORY[0x28223BE20](v17);
  v238 = &v204 - v18;
  v235 = sub_20C1391C4();
  v234 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v236 = &v204 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_20C138A64();
  v231 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v239 = &v204 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v21 - 8);
  v233 = &v204 - v22;
  v23 = sub_20C13C554();
  v246 = *(v23 - 8);
  v247 = v23;
  MEMORY[0x28223BE20](v23);
  v245 = &v204 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20C137C24();
  v251 = *(v25 - 8);
  v252 = v25;
  MEMORY[0x28223BE20](v25);
  v240 = v26;
  v241 = &v204 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v250 = &v204 - v28;
  v29 = sub_20C136CD4();
  v242 = *(v29 - 8);
  v243 = v29;
  MEMORY[0x28223BE20](v29);
  v249 = &v204 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C134E44();
  MEMORY[0x28223BE20](v31 - 8);
  v248 = &v204 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C13BB84();
  v253 = *(v33 - 8);
  v254 = v33;
  MEMORY[0x28223BE20](v33);
  v35 = &v204 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v244 = &v204 - v37;
  v38 = sub_20C134014();
  MEMORY[0x28223BE20](v38);
  MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v40);
  v255 = &v204 - v45;
  v46 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v46 == 33)
  {
    v76 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_captionLabel];
    v77 = sub_20C13C914();
    [v76 setText_];

    v78 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_titleLabel];
    v79 = sub_20C13C914();
    [v78 setText_];

    v80 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_subtitleLabel];
    v81 = sub_20C13C914();
    [v80 setText_];

    sub_20BA1DB30();
    v82 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView];
    v83 = [v82 layer];
    [v83 setBorderColor_];

    v255 = [v82 layer];
    [v255 setBorderWidth_];
    v84 = v255;
  }

  else if (v46 == 32)
  {
    v208 = v15;
    v209 = v14;
    v205 = v11;
    v206 = v4;
    v207 = v3;
    v221 = v1;
    v47 = v41;
    v48 = v42;
    v225 = v43;
    v219 = v44;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v50 = swift_projectBox();
    v51 = v50 + *(v49 + 64);
    v52 = *(v51 + 8);
    v220 = *v51;
    v223 = v52;
    v53 = *(v51 + 24);
    v222 = *(v51 + 16);
    v54 = *(v51 + 32);
    v55 = *(v51 + 40);
    v56 = v50 + *(v49 + 80);
    v57 = *v56;
    v58 = *(v56 + 8);
    v59 = *(v56 + 24);
    v218 = *(v56 + 16);
    v217 = *(v56 + 32);
    v224 = v48;
    v60 = *(v48 + 16);
    LODWORD(v216) = *(v56 + 40);
    v61 = v255;
    v60(v255, v50, v47);
    v220 = v220;
    v223 = v223;
    v211 = v222;
    v214 = v53;

    v213 = v54;

    v212 = v55;
    v62 = v219;

    v210 = v57;
    v222 = v58;
    v218 = v59;
    sub_20B6543CC(v57, v58);
    v63 = v244;
    sub_20C13B524();
    v60(v62, v61, v47);
    v60(v225, v61, v47);
    v64 = sub_20C13BB74();
    v65 = sub_20C13D1F4();
    v66 = os_log_type_enabled(v64, v65);
    v215 = v47;
    if (v66)
    {
      v67 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v256[0] = v217;
      *v67 = 136446466;
      v68 = sub_20C133E44();
      v70 = v69;
      v71 = *(v224 + 8);
      v71(v62, v47);
      v72 = sub_20B51E694(v68, v70, v256);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2050;
      v73 = v225;
      v74 = sub_20C133EB4();
      v71(v73, v47);
      *(v67 + 14) = v74;
      _os_log_impl(&dword_20B517000, v64, v65, "[70636962] Configuring %{public}s with count %{public}ld", v67, 0x16u);
      v75 = v217;
      __swift_destroy_boxed_opaque_existential_1(v217);
      MEMORY[0x20F2F6A40](v75, -1, -1);
      MEMORY[0x20F2F6A40](v67, -1, -1);
    }

    else
    {
      v96 = *(v224 + 8);
      v96(v225, v47);

      v96(v62, v47);
    }

    (*(v253 + 8))(v63, v254);
    v98 = v248;
    v97 = v249;
    v99 = v221;
    v100 = *&v221[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_captionLabel];
    v101 = v250;
    v102 = v220;
    if (v222 == 1 || (, !v222))
    {
      v103 = 0;
    }

    else
    {
      v256[0] = v210;
      v256[1] = v222;
      sub_20B5F6EB0();
      sub_20C13D9E4();

      v103 = sub_20C13C914();
    }

    [v100 setText_];

    [*&v99[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_titleLabel] setAttributedText_];
    [*&v99[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_subtitleLabel] setAttributedText_];
    sub_20C133F04();
    v225 = sub_20C138054();
    v105 = v104;
    sub_20C134E34();
    sub_20C136CB4();
    v222 = sub_20C136CC4();
    v244 = v106;
    sub_20B51C88C(0, &qword_281100530);
    v107 = sub_20C13D374();
    v109 = v245;
    v108 = v246;
    *v245 = v107;
    v110 = v247;
    (*(v108 + 104))(v109, *MEMORY[0x277D85200], v247);
    v111 = sub_20C13C584();
    (*(v108 + 8))(v109, v110);
    if (v111)
    {
      v113 = *&v99[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView];
      v112 = *&v99[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v113 setContentMode_];
      v115 = sub_20BA66C54(v101, v113, v112, 0);
      v253 = ObjectType;
      v254 = v112;
      if (v115)
      {
        v116 = swift_allocObject();
        v247 = v113;
        v117 = v116;
        swift_unknownObjectWeakInit();
        v118 = v251;
        v119 = *(v251 + 16);
        v120 = v241;
        v121 = v101;
        v122 = v252;
        v210 = v251 + 16;
        v218 = v119;
        v119(v241, v121, v252);
        v123 = *(v118 + 80);
        v124 = (v123 + 24) & ~v123;
        v204 = v240 + 7;
        v219 = v105;
        v125 = (v240 + 7 + v124) & 0xFFFFFFFFFFFFFFF8;
        v126 = (v125 + 23) & 0xFFFFFFFFFFFFFFF8;
        v127 = (v126 + 23) & 0xFFFFFFFFFFFFFFF8;
        v245 = v123;
        v246 = (v127 + 15) & 0xFFFFFFFFFFFFFFF8;
        v128 = swift_allocObject();
        *(v128 + 16) = v117;
        v129 = *(v118 + 32);
        v217 = v118 + 32;
        v216 = v129;
        v129(v128 + v124, v120, v122);
        v130 = (v128 + v125);
        v131 = v219;
        v132 = v244;
        *v130 = v222;
        v130[1] = v132;
        v133 = (v128 + v126);
        *v133 = v225;
        v133[1] = v131;
        *(v128 + v127) = 2;
        v134 = v128 + v246;
        *v134 = MEMORY[0x277D84F90];
        *(v134 + 8) = 0;
        v135 = (v128 + ((v127 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v135 = 0;
        v135[1] = 0;
        v136 = v254;
        v137 = *(v254 + 152);

        v138 = v253;
        v137(sub_20BE063E8, v128, v253, v136);
        v139 = v247;

        [v139 bounds];
        if (v140 <= 0.0 || (v142 = v141, v141 <= 0.0))
        {

          v163 = v252;
          v165 = v242;
          v164 = v243;
          v97 = v249;
          v101 = v250;
          v98 = v248;
          v102 = v220;
        }

        else
        {
          v143 = v140;
          v144 = v136;
          v145 = v138;
          v246 = ~v245;
          (*(v144 + 120))(0, v138, v144);
          v146 = v233;
          v101 = v250;
          v147 = v252;
          v218(v233, v250, v252);
          (*(v251 + 56))(v146, 0, 1, v147);
          (*(v144 + 16))(v146, v145, v144);
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v148 = sub_20C13D5A4();
          [v139 setBackgroundColor_];

          (*(v144 + 176))(COERCE_DOUBLE(*&v143), COERCE_DOUBLE(*&v142), 0, v145, v144);
          v233 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v149 = v241;
          v150 = v147;
          v151 = v147;
          v152 = v218;
          v218(v241, v101, v150);
          v153 = (v245 + 16) & v246;
          v154 = (v204 + v153) & 0xFFFFFFFFFFFFFFF8;
          v155 = (v154 + 15) & 0xFFFFFFFFFFFFFFF8;
          v156 = swift_allocObject();
          v216(v156 + v153, v149, v151);
          *(v156 + v154) = v233;
          v157 = (v156 + v155);
          *v157 = v143;
          v157[1] = v142;
          v233 = v156;
          v158 = (v156 + ((v155 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v158 = 0;
          v158[1] = 0;
          v152(v149, v101, v151);
          (*(v234 + 104))(v236, *MEMORY[0x277D542A8], v235);

          v159 = v239;
          sub_20C138A54();
          v160 = v237;
          sub_20B5F1DE8(v159, v237);
          v161 = v208;
          v162 = v209;
          if ((*(v208 + 48))(v160, 1, v209) == 1)
          {
            sub_20B520158(v160, &unk_27C766670);
            sub_20BA1DB30();

            (*(v231 + 8))(v159, v232);
            v163 = v252;
          }

          else
          {
            v174 = *(v161 + 32);
            v244 = (v161 + 32);
            v174(v238, v160, v162);
            v175 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v152(v149, v101, v252);
            v176 = (v245 + 40) & v246;
            v177 = v176 + v240;
            v178 = (v176 + v240) & 0xFFFFFFFFFFFFFFF8;
            v179 = v161;
            v180 = swift_allocObject();
            *(v180 + 2) = v175;
            v180[3] = v143;
            v180[4] = v142;
            v216(v180 + v176, v149, v252);
            *(v180 + v177) = 0;
            v181 = v180 + v178;
            *(v181 + 1) = 0;
            *(v181 + 2) = 0;
            v182 = swift_allocObject();
            *(v182 + 16) = sub_20BE0657C;
            *(v182 + 24) = v180;
            v183 = v227;
            (*(v179 + 16))(v227, v238, v162);
            v184 = (*(v179 + 80) + 16) & ~*(v179 + 80);
            v185 = (v226 + v184 + 7) & 0xFFFFFFFFFFFFFFF8;
            v186 = swift_allocObject();
            v174((v186 + v184), v183, v162);
            v187 = (v186 + v185);
            *v187 = sub_20B5F67A4;
            v187[1] = v182;
            v188 = v230;
            sub_20C137C94();
            v189 = swift_allocObject();
            v190 = v233;
            *(v189 + 16) = sub_20BE064C0;
            *(v189 + 24) = v190;
            v191 = swift_allocObject();
            *(v191 + 16) = sub_20B5F67D4;
            *(v191 + 24) = v189;
            v192 = v206;
            v193 = v229;
            v194 = v207;
            (*(v206 + 16))(v229, v188, v207);
            v195 = (*(v192 + 80) + 16) & ~*(v192 + 80);
            v196 = (v228 + v195 + 7) & 0xFFFFFFFFFFFFFFF8;
            v197 = swift_allocObject();
            (*(v192 + 32))(v197 + v195, v193, v194);
            v198 = (v197 + v196);
            *v198 = sub_20B5DF204;
            v198[1] = v191;

            v199 = v205;
            sub_20C137C94();
            v200 = *(v192 + 8);
            v200(v188, v194);
            v201 = sub_20C137CB4();
            v202 = swift_allocObject();
            *(v202 + 16) = 0;
            *(v202 + 24) = 0;
            v201(sub_20B52347C, v202);

            v203 = v252;

            v200(v199, v194);
            (*(v208 + 8))(v238, v209);
            (*(v231 + 8))(v239, v232);
            v163 = v203;
          }

          v165 = v242;
          v164 = v243;
          v98 = v248;
          v97 = v249;
          v102 = v220;
        }
      }

      else
      {

        v163 = v252;
        v165 = v242;
        v164 = v243;
      }

      (*(v251 + 8))(v101, v163);
      (*(v165 + 8))(v97, v164);

      sub_20B62A2AC(v98);
      v166 = v255;
      v167 = sub_20C133EB4() > 0;
      v168 = v254;
      (*(v254 + 264))(v167, v253, v254);
      v169 = sub_20C133E54();
      (*(v168 + 296))(v169);

      v170 = sub_20C133FF4();
      v172 = v171;
      LOBYTE(v168) = v173;
      sub_20B5F0A28(v170, v171, v173);
      sub_20B584078(v170, v172, v168);

      (*(v224 + 8))(v166, v215);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20C13B534();

    v85 = v1;
    v86 = sub_20C13BB74();
    v87 = sub_20C13D1D4();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v256[0] = v90;
      *v88 = 138543618;
      *(v88 + 4) = v85;
      *v89 = v85;
      *(v88 + 12) = 2082;
      v256[2] = a1;
      v91 = sub_20B5F66D0();
      v92 = v85;
      v93 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v91);
      v95 = sub_20B51E694(v93, v94, v256);

      *(v88 + 14) = v95;
      _os_log_impl(&dword_20B517000, v86, v87, "Attempted to configure %{public}@ with item: %{public}s", v88, 0x16u);
      sub_20B520158(v89, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v89, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v90);
      MEMORY[0x20F2F6A40](v90, -1, -1);
      MEMORY[0x20F2F6A40](v88, -1, -1);
    }

    (*(v253 + 8))(v35, v254);
  }
}

void sub_20BE063E8()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA595EC(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BE064C0(void *a1)
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

  sub_20BA638B0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BE0657C(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F310C(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20BE06630()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_showSeparator) = 1;
  v3 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 4.0;
  }

  v5 = (v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView);
  v6 = [v3 layer];
  [v6 setCornerRadius_];

  [v3 setClipsToBounds_];
  *v5 = v3;
  v5[1] = &off_2822B63E8;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setAdjustsFontForContentSizeCategory_];
  v8 = *MEMORY[0x277D76940];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:0];
  v11 = [v10 fontDescriptorWithSymbolicTraits_];
  if (v11)
  {
    v12 = v11;

    v10 = v12;
  }

  v13 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_captionLabel;
  v14 = objc_opt_self();
  v15 = [v14 fontWithDescriptor:v10 size:0.0];

  [v7 setFont_];
  [v7 setLineBreakMode_];
  [v7 setNumberOfLines_];
  [v7 setAllowsDefaultTighteningForTruncation_];
  v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v7 setTextColor_];

  v17 = objc_opt_self();
  v18 = [v17 systemBackgroundColor];
  [v7 setBackgroundColor_];

  *(v0 + v13) = v7;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAdjustsFontForContentSizeCategory_];
  v20 = [v9 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
  v21 = [v20 fontDescriptorWithSymbolicTraits_];
  if (v21)
  {
    v22 = v21;

    v20 = v22;
  }

  v23 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_titleLabel;
  v24 = [v14 fontWithDescriptor:v20 size:0.0];

  [v19 setFont_];
  [v19 setAllowsDefaultTighteningForTruncation_];
  v25 = [v17 whiteColor];
  [v19 setTextColor_];

  [v19 setNumberOfLines_];
  [v19 setLineBreakMode_];
  *(v0 + v23) = v19;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v26 &selRef_count + 2];
  [v26 setAdjustsFontForContentSizeCategory_];
  v27 = [v9 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v28 = [v27 fontDescriptorWithSymbolicTraits_];
  if (v28)
  {
    v29 = v28;

    v27 = v29;
  }

  v30 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_subtitleLabel;
  v31 = [v14 fontWithDescriptor:v27 size:0.0];

  [v26 setFont_];
  [v26 setAllowsDefaultTighteningForTruncation_];
  v32 = [v17 secondaryLabelColor];
  [v26 setTextColor_];

  [v26 setNumberOfLines_];
  [v26 setLineBreakMode_];
  *(v0 + v30) = v26;
  v33 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_separator;
  v34 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v34 &selRef_count + 2];
  v35 = [v17 separatorColor];
  [v34 setBackgroundColor_];

  *(v0 + v33) = v34;
  v36 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_textLayoutGuide;
  *(v0 + v36) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_layoutConstraints) = MEMORY[0x277D84F90];
  v37 = v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_layout;
  __asm { FMOV            V0.2D, #10.0 }

  *v37 = _Q0;
  *(v37 + 16) = xmmword_20C163EB0;
  *(v37 + 32) = xmmword_20C17F000;
  *(v37 + 48) = 0;
  *(v37 + 56) = 1;
  *(v37 + 64) = 0x3FE2000000000000;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20BE06D08(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *(v4 + OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_contentStackView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAlignment_];
  [v13 setAxis_];
  *(v5 + v12) = v13;
  v114 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_titleLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v14 &selRef_count + 2];
  v15 = *MEMORY[0x277D74420];
  v16 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  v113 = xmmword_20C14F980;
  *(inited + 16) = xmmword_20C14F980;
  v18 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v19 = swift_initStackObject();
  v20 = MEMORY[0x277D74430];
  *(v19 + 16) = v113;
  v21 = *v20;
  *(v19 + 32) = *v20;
  *(v19 + 40) = v15;
  v22 = v18;
  v23 = v21;
  v24 = sub_20B6B134C(v19);
  swift_setDeallocating();
  sub_20B520158(v19 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v24;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v25 = sub_20C13C744();

  v26 = [v16 fontDescriptorByAddingAttributes_];

  v27 = objc_opt_self();
  v28 = [v27 fontWithDescriptor:v26 size:0.0];

  [v14 setFont_];
  [v14 setLineBreakMode_];
  [v14 setNumberOfLines_];
  *(v5 + v114) = v14;
  v29 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_messageLabel;
  v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = *MEMORY[0x277D76918];
  v32 = [v27 preferredFontForTextStyle_];
  [v30 setFont_];

  v33 = objc_opt_self();
  v34 = [v33 systemGrayColor];
  [v30 setTextColor_];

  [v30 setLineBreakMode_];
  [v30 setNumberOfLines_];
  *(v5 + v29) = v30;
  v35 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_footerLabel;
  v36 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  [v36 setTextAlignment_];
  v37 = [v27 preferredFontForTextStyle_];
  [v36 setFont_];

  v38 = [v33 secondaryLabelColor];
  [v36 setTextColor_];

  [v36 setLineBreakMode_];
  [v36 setNumberOfLines_];
  [v36 setAdjustsFontForContentSizeCategory_];
  *(v5 + v35) = v36;
  *&v113 = v5;
  *(v5 + OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_layout) = xmmword_20C156A10;
  v39 = type metadata accessor for ActionButtonTemplateBuilder();
  v40 = swift_allocObject();
  type metadata accessor for ActionButtonTemplateParser();
  v41 = swift_allocObject();
  v42 = qword_27C760AA0;

  v114 = v41;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = qword_27C76CF70;
  if (qword_27C760AA8 != -1)
  {
    swift_once();
  }

  v44 = qword_27C76CF78;
  v122[3] = v39;
  v122[4] = &off_2822EEB00;
  v122[0] = v40;
  v112 = v40;
  v120 = &type metadata for ActionButtonViewFactory;
  v121 = &off_2822B2B20;
  v45 = type metadata accessor for ActionButtonContainerView();
  v46 = objc_allocWithZone(v45);
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v122, v39);
  v48 = MEMORY[0x28223BE20](v47);
  v50 = (&v109 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50, v48);
  __swift_mutable_project_boxed_opaque_existential_1(v119, v120);
  v52 = *v50;
  v118[3] = v39;
  v118[4] = &off_2822EEB00;
  v117[4] = &off_2822B2B20;
  v118[0] = v52;
  v117[3] = &type metadata for ActionButtonViewFactory;
  *&v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_buttonActions] = MEMORY[0x277D84F90];
  *&v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_rootStackView] = 0;
  sub_20B51CC64(v118, &v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateBuilder]);
  v53 = &v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateParser];
  *v53 = v114;
  v53[1] = &off_28229AE20;
  sub_20B51CC64(v117, &v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_viewFactory]);
  *&v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interGroupSpacing] = v43;
  *&v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interItemSpacing] = v44;
  v116.receiver = v46;
  v116.super_class = v45;
  v54 = objc_msgSendSuper2(&v116, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_destroy_boxed_opaque_existential_1(v117);
  __swift_destroy_boxed_opaque_existential_1(v118);
  v55 = v54;
  __swift_destroy_boxed_opaque_existential_1(v119);
  __swift_destroy_boxed_opaque_existential_1(v122);
  [v55 setTranslatesAutoresizingMaskIntoConstraints_];

  v56 = v113;
  *(v113 + OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_actionButtonContainerView) = v55;
  v57 = type metadata accessor for ActionBannerCell();
  v115.receiver = v56;
  v115.super_class = v57;
  v58 = objc_msgSendSuper2(&v115, sel_initWithFrame_, a1, a2, a3, a4);
  v59 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_contentStackView;
  v60 = *&v58[OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_contentStackView];
  v61 = v58;
  [v60 setSpacing_];
  [*&v58[v59] addArrangedSubview_];
  [*&v58[v59] addArrangedSubview_];
  v62 = v61;
  v63 = [v62 contentView];
  [v63 addSubview_];

  v64 = *&v62[OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_actionButtonContainerView];
  v65 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_actionButtonContainerView;
  *&v113 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_actionButtonContainerView;
  *(v64 + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8) = &off_2822E99B0;
  swift_unknownObjectWeakAssign();

  v66 = [v62 &selRef_setMaximumFractionDigits_];
  [v66 addSubview_];

  v67 = [v62 &selRef_setMaximumFractionDigits_];
  v110 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_footerLabel;
  [v67 addSubview_];

  v111 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_20C14FF90;
  v69 = [*&v58[v59] leadingAnchor];
  v70 = [v62 &selRef_setMaximumFractionDigits_];
  v71 = [v70 leadingAnchor];

  v72 = [v69 constraintEqualToAnchor_];
  *(v68 + 32) = v72;
  v73 = [*&v58[v59] trailingAnchor];
  v74 = [v62 &selRef_setMaximumFractionDigits_];
  v75 = [v74 trailingAnchor];

  v76 = [v73 &selRef:v75 alertControllerReleasedDictationButton:? + 5];
  *(v68 + 40) = v76;
  v77 = [*&v58[v59] topAnchor];
  v78 = [v62 contentView];
  v79 = [v78 &selRef_setLineBreakMode_];

  v80 = [v77 &selRef:v79 alertControllerReleasedDictationButton:? + 5];
  *(v68 + 48) = v80;
  v81 = v113;
  v82 = [*&v62[v113] leadingAnchor];
  v83 = [*&v58[v59] leadingAnchor];
  v84 = [v82 &selRef:v83 alertControllerReleasedDictationButton:? + 5];

  *(v68 + 56) = v84;
  v85 = [*&v62[v81] trailingAnchor];
  v86 = [*&v58[v59] trailingAnchor];
  v87 = [v85 constraintEqualToAnchor_];

  *(v68 + 64) = v87;
  v88 = [*&v62[v81] topAnchor];
  v89 = [*&v58[v59] bottomAnchor];
  v90 = [v88 constraintEqualToAnchor:v89 constant:20.0];

  *(v68 + 72) = v90;
  v91 = v110;
  v92 = [*&v62[v110] leadingAnchor];
  v93 = [v62 contentView];
  v94 = [v93 leadingAnchor];

  v95 = [v92 constraintEqualToAnchor_];
  *(v68 + 80) = v95;
  v96 = [*&v62[v91] trailingAnchor];
  v97 = [v62 contentView];
  v98 = [v97 trailingAnchor];

  v99 = [v96 constraintEqualToAnchor_];
  *(v68 + 88) = v99;
  v100 = [*&v62[v91] topAnchor];
  v101 = [*&v62[v113] bottomAnchor];
  v102 = [v100 constraintEqualToAnchor:v101 constant:10.0];

  *(v68 + 96) = v102;
  v103 = [*&v62[v91] bottomAnchor];
  v104 = [v62 contentView];

  v105 = [v104 bottomAnchor];
  v106 = [v103 constraintEqualToAnchor_];

  *(v68 + 104) = v106;
  sub_20B5E29D0();
  v107 = sub_20C13CC54();

  [v111 activateConstraints_];

  return v62;
}

id sub_20BE07CF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionBannerCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActionBannerCell()
{
  result = qword_27C76F458;
  if (!qword_27C76F458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE07E2C()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BE07EF8(uint64_t a1)
{
  v3 = sub_20C133244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_20B5F15A8(a1, v9);
    v12 = swift_storeEnumTagMultiPayload();
    *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
    *(&v16 - 4) = 0;
    *(&v16 - 24) = 1;
    *(&v16 - 2) = v9;
    *(&v16 - 1) = v11;
    v14 = [*(v11 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v14)
    {
      v15 = v14;
      sub_20C1331E4();

      sub_20C0C1CDC(v6, sub_20B5E27BC);
      (*(v4 + 8))(v6, v3);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v9);
  }

  return result;
}

uint64_t sub_20BE080F8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BE08144@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BE0819C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20BE08200(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v8 == 68 || v8 == 3)
  {
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
    v13 = *(v10 + 56);
    v14 = *(v10 + 64);

    v41 = v14;

    v15 = *&v1[OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_titleLabel];
    if (v11)
    {

      v16 = sub_20C13C914();
    }

    else
    {
      v16 = 0;
    }

    [v15 setText_];

    [v15 setHidden_];
    v30 = *&v1[OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_messageLabel];
    if (v12)
    {

      v31 = sub_20C13C914();
    }

    else
    {
      v31 = 0;
    }

    [v30 setText_];

    [v30 setHidden_];
    v32 = *&v1[OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_footerLabel];
    if (v13)
    {

      v33 = sub_20C13C914();
    }

    else
    {
      v33 = 0;
    }

    [v32 setText_];

    [v32 setHidden_];
    v34 = objc_opt_self();
    v35 = swift_allocObject();
    v36 = v41;
    *(v35 + 16) = v1;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_20BE086F8;
    *(v37 + 24) = v35;
    aBlock[4] = sub_20B5E0E90;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BB4C11C;
    aBlock[3] = &block_descriptor_137;
    v38 = _Block_copy(aBlock);
    v39 = v1;

    [v34 performWithoutAnimation_];
    _Block_release(v38);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    v41 = v5;
    sub_20C13B534();

    v17 = v1;
    v18 = sub_20C13BB74();
    v19 = sub_20C13D1D4();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v21 = 138543618;
      *(v21 + 4) = v17;
      *v22 = v17;
      *(v21 + 12) = 2082;
      aBlock[6] = a1;
      v24 = sub_20B5F66D0();
      v25 = v17;
      v26 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v24);
      v28 = sub_20B51E694(v26, v27, aBlock);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_20B517000, v18, v19, "Attempted to configure %{public}@ with item: %{public}s", v21, 0x16u);
      sub_20B520158(v22, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x20F2F6A40](v23, -1, -1);
      MEMORY[0x20F2F6A40](v21, -1, -1);
    }

    return (*(v4 + 8))(v7, v41);
  }

  return result;
}

void sub_20BE08744()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_contentStackView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAlignment_];
  [v4 setAxis_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_titleLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v6 &selRef_count + 2];
  v7 = *MEMORY[0x277D74420];
  v8 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v10 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_20C14F980;
  v12 = *MEMORY[0x277D74430];
  *(v11 + 32) = *MEMORY[0x277D74430];
  *(v11 + 40) = v7;
  v13 = v10;
  v14 = v12;
  v15 = sub_20B6B134C(v11);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v15;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v16 = sub_20C13C744();

  v17 = [v8 fontDescriptorByAddingAttributes_];

  v18 = objc_opt_self();
  v19 = [v18 fontWithDescriptor:v17 size:0.0];

  [v6 setFont_];
  [v6 setLineBreakMode_];
  [v6 setNumberOfLines_];
  *(v0 + v5) = v6;
  v20 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_messageLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = *MEMORY[0x277D76918];
  v23 = [v18 preferredFontForTextStyle_];
  [v21 setFont_];

  v24 = objc_opt_self();
  v25 = [v24 systemGrayColor];
  [v21 setTextColor_];

  [v21 setLineBreakMode_];
  [v21 setNumberOfLines_];
  *(v0 + v20) = v21;
  v26 = OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_footerLabel;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 setTextAlignment_];
  v28 = [v18 preferredFontForTextStyle_];
  [v27 setFont_];

  v29 = [v24 secondaryLabelColor];
  [v27 setTextColor_];

  [v27 setLineBreakMode_];
  [v27 setNumberOfLines_];
  [v27 setAdjustsFontForContentSizeCategory_];
  *(v0 + v26) = v27;
  *(v0 + OBJC_IVAR____TtC9SeymourUI16ActionBannerCell_layout) = xmmword_20C156A10;
  sub_20C13DE24();
  __break(1u);
}

double sub_20BE08C70()
{
  if (qword_27C7606F0 != -1)
  {
    swift_once();
  }

  result = *&xmmword_27C799F60;
  xmmword_27C76F468 = xmmword_27C799F60;
  *algn_27C76F478 = *&qword_27C799F70;
  return result;
}

uint64_t sub_20BE08CD0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    a2();
  }

  return result;
}

void sub_20BE08D7C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PhoneSessionPortraitSummaryViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      v6 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_scrollView];
      [v4 addSubview_];

      v7 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentView];
      [v6 addSubview_];
      [v7 addSubview_];
      [v7 addSubview_];
      [v7 addSubview_];
      [v7 addSubview_];
      [v7 addSubview_];
      sub_20BE09274();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_20BE090B0(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for PhoneSessionPortraitSummaryViewController();
  objc_msgSendSuper2(&v10, sel_viewWillDisappear_, a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v6 = sub_20C13CC74();

    v9 = v1;
    MEMORY[0x28223BE20](v7);
    v8[2] = &v9;
    LOBYTE(v5) = sub_20B79AEEC(sub_20B5978BC, v8, v6);

    if ((v5 & 1) == 0)
    {
      v9 = v1;
      sub_20BE0D2EC(&qword_27C76F530, type metadata accessor for PhoneSessionPortraitSummaryViewController);
      sub_20C138C64();
    }
  }
}

void sub_20BE09274()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_20C14FE90;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_scrollView];
  v3 = [v2 leadingAnchor];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [v4 leadingAnchor];

  v7 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v7;
  v8 = [v2 trailingAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v9 trailingAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  *(v1 + 40) = v12;
  v13 = [v2 topAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  v16 = [v14 safeAreaLayoutGuide];

  v17 = [v16 topAnchor];
  v18 = [v13 constraintEqualToAnchor_];

  *(v1 + 48) = v18;
  v19 = [v2 bottomAnchor];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v20;
  v22 = [v20 bottomAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v1 + 56) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20C151850;
  v25 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentView];
  v26 = [v25 leadingAnchor];
  v27 = [v2 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v24 + 32) = v28;
  v29 = [v25 trailingAnchor];
  v30 = [v2 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v24 + 40) = v31;
  v32 = [v25 topAnchor];
  v33 = [v2 topAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v24 + 48) = v34;
  v35 = [v25 bottomAnchor];
  v36 = [v2 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v24 + 56) = v37;
  v38 = [v25 widthAnchor];
  v39 = [v0 view];
  if (!v39)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v40 = v39;
  v41 = [v39 widthAnchor];

  v42 = [v38 constraintEqualToAnchor_];
  *(v24 + 64) = v42;
  v43 = [v25 heightAnchor];
  v44 = [v0 view];
  if (!v44)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v45 = v44;
  v133 = v1;
  v46 = [v44 safeAreaLayoutGuide];

  v47 = [v46 heightAnchor];
  v48 = [v43 constraintGreaterThanOrEqualToAnchor_];

  *(v24 + 72) = v48;
  v132 = v24;
  v49 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryView];
  v50 = [v49 topAnchor];
  v51 = [v25 topAnchor];
  v52 = [v50 &selRef:v51 alertControllerReleasedDictationButton:? + 5];

  v53 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryViewTopConstraint;
  v54 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryViewTopConstraint];
  *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryViewTopConstraint] = v52;

  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_20C150040;
  v56 = *&v0[v53];
  *(v55 + 32) = v56;
  v57 = v56;
  v58 = [v49 leadingAnchor];
  v59 = [v25 leadingAnchor];
  v60 = v25;
  if (qword_27C760C30 != -1)
  {
    swift_once();
  }

  v61 = [v58 constraintEqualToAnchor:v59 constant:*(&xmmword_27C76F468 + 1)];

  *(v55 + 40) = v61;
  v62 = [v49 trailingAnchor];
  v130 = v60;
  v63 = [v60 trailingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:-*&qword_27C76F480];

  *(v55 + 48) = v64;
  v65 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridView];
  v66 = [v65 heightAnchor];
  v131 = v55;
  v67 = [v66 constraintEqualToConstant_];

  v68 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewHeight;
  v69 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewHeight];
  *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewHeight] = v67;

  v70 = [v65 widthAnchor];
  v71 = [v70 constraintEqualToConstant_];

  v72 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewWidth;
  v73 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewWidth];
  *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewWidth] = v71;

  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_20C150050;
  v75 = *&v0[v68];
  v76 = *&v0[v72];
  *(v74 + 32) = v75;
  *(v74 + 40) = v76;
  v77 = v74;
  v78 = v75;
  v79 = v76;
  v80 = [v65 leadingAnchor];
  v81 = [v49 leadingAnchor];
  v82 = [v80 constraintEqualToAnchor_];

  v77[6] = v82;
  v83 = [v65 trailingAnchor];
  v84 = [v49 trailingAnchor];
  v85 = [v83 constraintLessThanOrEqualToAnchor_];

  v129 = v77;
  v77[7] = v85;
  v86 = [v65 topAnchor];
  v87 = [v49 bottomAnchor];
  v88 = [v86 constraintEqualToAnchor:v87 constant:36.0];

  v77[8] = v88;
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_20C150040;
  v90 = v89;
  v91 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_activityRingsView];
  v92 = [v91 leadingAnchor];
  v93 = [v49 leadingAnchor];
  v94 = [v92 constraintEqualToAnchor_];

  v90[4] = v94;
  v95 = [v91 trailingAnchor];
  v96 = [v49 trailingAnchor];
  v97 = [v95 constraintLessThanOrEqualToAnchor_];

  v90[5] = v97;
  v98 = [v91 topAnchor];
  v99 = [v65 bottomAnchor];
  v100 = [v98 constraintEqualToAnchor:v99 constant:9.0];

  v90[6] = v100;
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_20C14FE90;
  v102 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_bottomStackView];
  v103 = [v102 leadingAnchor];
  v104 = [v49 leadingAnchor];
  v105 = [v103 constraintEqualToAnchor_];

  *(v101 + 32) = v105;
  v106 = [v102 trailingAnchor];
  v107 = [v49 trailingAnchor];
  v108 = [v106 constraintEqualToAnchor_];

  *(v101 + 40) = v108;
  v109 = [v102 topAnchor];
  v110 = [v91 bottomAnchor];
  v111 = [v109 constraintGreaterThanOrEqualToAnchor:v110 constant:36.0];

  *(v101 + 48) = v111;
  v112 = [v102 bottomAnchor];
  v113 = [v130 bottomAnchor];
  v114 = [v112 constraintEqualToAnchor:v113 constant:-16.0];

  *(v101 + 56) = v114;
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_20C150040;
  v116 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_ttrButton];
  v117 = [v116 trailingAnchor];
  v118 = [v49 trailingAnchor];
  v119 = [v117 constraintEqualToAnchor_];

  *(v115 + 32) = v119;
  v120 = [v116 topAnchor];
  v121 = [v91 bottomAnchor];
  v122 = [v120 constraintGreaterThanOrEqualToAnchor_];

  *(v115 + 40) = v122;
  v123 = [v116 bottomAnchor];
  v124 = [v102 topAnchor];
  v125 = [v123 constraintLessThanOrEqualToAnchor:v124 constant:-36.0];

  *(v115 + 48) = v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F990;
  *(inited + 32) = v133;
  *(inited + 40) = v132;
  *(inited + 48) = v131;
  *(inited + 56) = v129;
  *(inited + 64) = v90;
  *(inited + 72) = v101;
  *(inited + 80) = v115;
  v127 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500);
  v128 = sub_20C13CC54();

  [v127 activateConstraints_];
}

void sub_20BE0A0E0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for PhoneSessionPortraitSummaryViewController();
  objc_msgSendSuper2(&v5, sel_viewDidLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      v4 = *&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryViewTopConstraint];
      [v3 bounds];
      [v4 setConstant_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20BE0A204()
{
  v149 = sub_20C1335F4();
  v150 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = &v133 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v148 = &v133 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7698B0);
  MEMORY[0x28223BE20](v4 - 8);
  v145 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v133 - v7;
  v143 = sub_20C137F24();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v141 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C1344C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v151 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v146 = &v133 - v14;
  MEMORY[0x28223BE20](v15);
  v144 = &v133 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v133 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v133 - v21;
  v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v24 = sub_20C13C914();
  v25 = [v23 initWithString_];

  v26 = v0;
  v27 = *(v11 + 16);
  v156 = *(v0 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_presenter);
  v153 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_catalogWorkout;
  v155 = v11 + 16;
  v154 = v27;
  v27(v22, v156 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_catalogWorkout, v10);
  v28 = sub_20C1344B4();
  v30 = v29;
  LOBYTE(v24) = v31;
  v32 = *(v11 + 8);
  v157 = v11 + 8;
  v158 = v32;
  v32(v22, v10);
  v152 = v10;
  if ((v24 & 1) == 0)
  {
    sub_20B583F4C(v28, v30, 0);
    v58 = v25;
    v51 = v158;
    v33 = v26;
LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
    inited = swift_initStackObject();
    v103 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    *(inited + 16) = xmmword_20C14F320;
    v104 = *MEMORY[0x277D76920];
    v105 = objc_opt_self();
    v106 = v103;
    v107 = [v105 preferredFontDescriptorWithTextStyle:v104 compatibleWithTraitCollection:0];
    v108 = [v107 fontDescriptorWithSymbolicTraits_];
    if (v108)
    {
      v109 = v108;

      v107 = v109;
    }

    v110 = [objc_opt_self() fontWithDescriptor:v107 size:0.0];

    v111 = sub_20B51C88C(0, &qword_27C767A60);
    *(inited + 40) = v110;
    v112 = *MEMORY[0x277D740C0];
    *(inited + 64) = v111;
    *(inited + 72) = v112;
    v113 = v112;
    if (sub_20C1380F4() == 3)
    {
      v114 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.607843137 alpha:1.0];
    }

    else
    {
      v114 = [objc_opt_self() systemGrayColor];
    }

    v115 = v114;
    v116 = v156;
    *(inited + 104) = sub_20B51C88C(0, &qword_27C762070);
    *(inited + 80) = v115;
    sub_20B6B1650(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
    swift_arrayDestroy();
    v117 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v118 = sub_20C13C914();

    type metadata accessor for Key(0);
    sub_20BE0D2EC(&qword_27C761D80, type metadata accessor for Key);
    v119 = sub_20C13C744();

    v120 = [v117 initWithString:v118 attributes:v119];

    v121 = *(v33 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryView);
    v122 = OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_labels;
    [*(*&v121[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_labels] + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel) setAttributedText_];
    v123 = *&v121[v122];
    v124 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel;
    [*(v123 + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel) setHidden_];
    [*(v123 + v124) setAttributedText_];
    [v121 invalidateIntrinsicContentSize];
    v125 = v116 + v153;
    v126 = v58;
    v127 = v151;
    v128 = v152;
    v154(v151, v125, v152);
    v129 = sub_20C1344B4();
    v131 = v130;
    LOBYTE(v123) = v132;
    v51(v127, v128);
    v161 = v129;
    v162 = v131;
    LOBYTE(v128) = v123 & 1;
    v163 = v123 & 1;
    v159 = xmmword_20C152300;
    v160 = 1;
    sub_20B6A6418(v129, v131, v123 & 1);
    sub_20B590B28();
    sub_20B590B7C();
    LOBYTE(v123) = sub_20C133BF4();
    sub_20B583F4C(v161, v162, v163);
    sub_20B80447C((v123 & 1) == 0);
    sub_20B583F4C(v129, v131, v128);

    return;
  }

  v140 = v25;
  v137 = v30;
  if (v28 != 1)
  {
    v33 = v26;
    if (v28)
    {
      v58 = v140;
      v51 = v158;
    }

    else
    {
      v34 = (v26 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_storefrontLocalizer);
      __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_storefrontLocalizer), *(v26 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_storefrontLocalizer + 24));
      v35 = sub_20C138D34();
      v37 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      v150 = sub_20C138D34();
      v38 = v33;
      v40 = v39;
      v138 = v38;
      __swift_project_boxed_opaque_existential_1((v38 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_mediaTagStringBuilder), *(v38 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_mediaTagStringBuilder + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
      v41 = *(sub_20C138094() - 8);
      v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_20C14F980;
      v44 = (v43 + v42);
      *v44 = v35;
      v44[1] = v37;
      v44[2] = v150;
      v44[3] = v40;
      swift_storeEnumTagMultiPayload();
      v139 = sub_20C138544();

      v45 = v156;
      v46 = v153;
      v47 = v152;
      v48 = v154;
      v154(v19, v156 + v153, v152);
      sub_20C134474();
      v50 = v49;
      v51 = v158;
      v158(v19, v47);
      if (!v50)
      {
        v52 = v45 + v46;
        v53 = v144;
        v48(v144, v52, v47);
        v54 = sub_20C134494();
        v51(v53, v47);
        if (*(v54 + 16))
        {
          v55 = v142;
          v56 = v141;
          v57 = v143;
          (*(v142 + 16))(v141, v54 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v143);

          sub_20C137F04();
          (*(v55 + 8))(v56, v57);
        }

        else
        {
        }
      }

      v33 = v138;
      v58 = v139;
    }

    goto LABEL_31;
  }

  v134 = v28;
  v135 = v8;
  v59 = (v26 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_storefrontLocalizer), *(v26 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_storefrontLocalizer + 24));
  v60 = sub_20C138D34();
  v62 = v61;
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  v63 = sub_20C138D34();
  v144 = v64;
  v138 = v26;
  __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_mediaTagStringBuilder), *(v26 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_mediaTagStringBuilder + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
  v65 = *(sub_20C138094() - 8);
  v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_20C14F980;
  v68 = (v67 + v66);
  *v68 = v60;
  v68[1] = v62;
  v69 = v144;
  v68[2] = v63;
  v68[3] = v69;
  swift_storeEnumTagMultiPayload();
  v139 = sub_20C138544();

  v70 = v146;
  v154(v146, v156 + v153, v10);
  v71 = sub_20C134374();
  v51 = v158;
  v158(v70, v10);
  v72 = (v71 + 56);
  v73 = 1 << *(v71 + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = v74 & *(v71 + 56);
  v76 = ((v73 + 63) >> 6);
  v142 = v150 + 16;
  v144 = (v150 + 32);
  v146 = (v150 + 8);

  v77 = 0;
  v78 = v149;
  v79 = v147;
  v141 = (v71 + 56);
  v140 = v76;
  v143 = v71;
  if (v75)
  {
    while (1)
    {
      v80 = v77;
LABEL_16:
      v81 = v150;
      v82 = v148;
      (*(v150 + 16))(v148, *(v71 + 48) + *(v150 + 72) * (__clz(__rbit64(v75)) | (v80 << 6)), v78);
      v136 = *(v81 + 32);
      v136(v79, v82, v78);
      v83 = sub_20C1335E4();
      v85 = v84;
      v161 = v83;
      v162 = v84;
      v87 = v86 & 1;
      v163 = v86 & 1;
      LOBYTE(v159) = 4;
      sub_20BE0D244();
      v88 = v79;
      sub_20BE0D298();
      v89 = sub_20C133C04();
      sub_20B583F4C(v83, v85, v87);
      if (v89)
      {

        v51 = v158;
        goto LABEL_26;
      }

      v90 = sub_20C1335E4();
      v92 = v91;
      v161 = v90;
      v162 = v91;
      v94 = v93 & 1;
      v163 = v93 & 1;
      LOBYTE(v159) = 2;
      v95 = sub_20C133C04();
      sub_20B583F4C(v90, v92, v94);
      v51 = v158;
      if (v95)
      {
        break;
      }

      v75 &= v75 - 1;
      v78 = v149;
      (*v146)(v88, v149);
      v77 = v80;
      v79 = v88;
      v71 = v143;
      v72 = v141;
      v76 = v140;
      if (!v75)
      {
        goto LABEL_12;
      }
    }

LABEL_26:
    v78 = v149;
    v136(v135, v147, v149);
    v96 = 0;
    v33 = v138;
    v58 = v139;
LABEL_27:
    v97 = v137;
    v98 = v150;
    v99 = v135;
    (*(v150 + 56))(v135, v96, 1, v78);

    v100 = v99;
    v101 = v145;
    sub_20B52F9E8(v100, v145, &qword_27C7698B0);
    if ((*(v98 + 48))(v101, 1, v78) == 1)
    {
      sub_20B520158(v101, &qword_27C7698B0);
    }

    else
    {
      sub_20C1335D4();
      (*v146)(v101, v78);
    }

    sub_20B583F4C(v134, v97, 1);
    sub_20B520158(v135, &qword_27C7698B0);
    goto LABEL_31;
  }

LABEL_12:
  v58 = v139;
  while (1)
  {
    v80 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      break;
    }

    if (v80 >= v76)
    {

      v96 = 1;
      v33 = v138;
      goto LABEL_27;
    }

    v75 = *&v72[8 * v80];
    ++v77;
    if (v75)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

id sub_20BE0B3B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_summary;
  swift_beginAccess();
  sub_20B52F9E8(&v0[v4], v3, &unk_27C765360);
  v5 = type metadata accessor for SessionSummaryViewModel();
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  result = sub_20B520158(v3, &unk_27C765360);
  if (v4 != 1)
  {
    [*(*&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridView] + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_layout) invalidateLayout];
    result = [v0 view];
    if (result)
    {
      v7 = result;
      v8 = [result safeAreaLayoutGuide];

      [v8 layoutFrame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v21.origin.x = v10;
      v21.origin.y = v12;
      v21.size.width = v14;
      v21.size.height = v16;
      Width = CGRectGetWidth(v21);
      sub_20BA00314(2, Width);
      v19 = v18;
      [*&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewWidth] setConstant_];
      return [*&v0[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewHeight] setConstant_];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_20BE0B5DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhoneSessionPortraitSummaryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PhoneSessionPortraitSummaryViewController()
{
  result = qword_2811005D8;
  if (!qword_2811005D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE0B808()
{
  sub_20B79F044();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_20BE0B8EC(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryView) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridView) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_bottomStackView) setAlpha_];
  v2 = *(a1 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_activityRingsView);

  return [v2 setAlpha_];
}

void sub_20BE0B97C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770980);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for SummaryActivityRingsMetricViewModel();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  sub_20BE0D120(a1, &v24 - v12);
  v14 = type metadata accessor for SessionSummaryViewModel();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v15 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_summary;
  swift_beginAccess();
  sub_20B7A30E4(v13, &v2[v15]);
  swift_endAccess();
  sub_20B52F9E8(a1 + *(v14 + 60), v6, &unk_27C770980);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20B520158(v6, &unk_27C770980);
    [*&v2[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_activityRingsView] setHidden_];
  }

  else
  {
    sub_20BE0D184(v6, v10);
    v16 = *&v2[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_activityRingsView];
    sub_20BC5762C(v10, 1);
    [v16 setHidden_];
    sub_20BE0D1E8(v10);
  }

  v17 = sub_20B839B88();
  sub_20BA006A0(v17);

  sub_20BE0A204();
  v18 = [v2 view];
  if (!v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v19 = v18;
  [v18 setNeedsUpdateConstraints];

  v20 = [v2 view];
  if (!v20)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v21 = v20;
  [v20 setNeedsLayout];

  v22 = [v2 view];
  if (v22)
  {
    v23 = v22;
    [v22 layoutIfNeeded];

    return;
  }

LABEL_10:
  __break(1u);
}

void sub_20BE0BCD8(id a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for PhoneSessionPortraitSummaryViewController();
  objc_msgSendSuper2(&v17, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v5 = sub_20C13C954();
  v7 = v6;
  if (v5 != sub_20C13C954() || v7 != v8)
  {
    v10 = sub_20C13DFF4();

    if (v10)
    {
      return;
    }

LABEL_11:
    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      [v11 setNeedsUpdateConstraints];

      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        [v13 setNeedsLayout];

        v15 = [v1 view];
        if (v15)
        {
          v16 = v15;
          [v15 layoutIfNeeded];

          return;
        }

        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }
}

void sub_20BE0BF58()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_20BE0D118;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_20B7B548C;
  v5[3] = &block_descriptor_138;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.3];
  _Block_release(v3);
}

void sub_20BE0C0EC(uint64_t a1)
{
  v2 = sub_20B84DBE8(a1);
  [v1 presentViewController:v2 animated:1 completion:0];
}

uint64_t sub_20BE0C140@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763250);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_20C1344C4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, *(v1 + OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_presenter) + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_catalogWorkout, v6, v8);
  sub_20C134414();
  (*(v7 + 8))(v10, v6);
  v11 = sub_20C135B04();
  v12 = (*(*(v11 - 8) + 48))(v5, 1, v11);
  sub_20B520158(v5, &qword_27C763250);
  v13 = sub_20C1390D4();
  v14 = MEMORY[0x277D54278];
  if (v12 != 1)
  {
    v14 = MEMORY[0x277D54280];
  }

  return (*(*(v13 - 8) + 104))(a1, *v14, v13);
}

char *sub_20BE0C3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryView;
  v8 = [objc_allocWithZone(type metadata accessor for SummaryContentSummaryView()) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v7] = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_scrollView;
  v10 = [objc_allocWithZone(MEMORY[0x277D759D8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v10 &selRef_count + 2];
  v11 = sub_20C13C914();
  [v10 setAccessibilityIdentifier_];

  *&v6[v9] = v10;
  v12 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v13 &selRef_count + 2];
  v92 = objc_opt_self();
  v14 = [v92 clearColor];
  [v13 setBackgroundColor_];

  *&v6[v12] = v13;
  v15 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridView;
  v16 = [objc_allocWithZone(type metadata accessor for SummaryMetricGridView()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v16 &selRef_count + 2];
  *&v6[v15] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_bottomStackView;
  v18 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v18 &selRef_count + 2];
  [v18 setAlignment_];
  [v18 setAxis_];
  [v18 setDistribution_];
  [v18 setSpacing_];
  *&v6[v17] = v18;
  v94 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_doneButton;
  v19 = type metadata accessor for SummaryPlatterButtonView();
  v20 = [objc_allocWithZone(v19) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v20 &selRef_count + 2];
  v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v20 &:v21 OBJC:? LABEL:? PROTOCOL:? :? :?UINavigationControllerDelegate];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = objc_opt_self();
  v23 = [v22 bundleForClass_];
  sub_20C132964();

  v24 = [v92 blackColor];
  v25 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v26 = *&v20[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v27 = sub_20C13C914();

  [v26 setText_];

  [*&v20[v25] setTextColor_];
  [v20 setNeedsLayout];

  v28 = sub_20C13C914();
  [v20 setAccessibilityIdentifier_];

  *&v6[v94] = v20;
  v29 = [objc_allocWithZone(v19) initWithFrame_];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v28) = sub_20C1380F4();
  v30 = objc_allocWithZone(MEMORY[0x277D75348]);
  v31 = 0.15;
  if (v28 == 3)
  {
    v31 = 0.415686275;
  }

  v32 = [v30 initWithWhite:v31 alpha:1.0];
  v33 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_cooldownButton;
  [v29 setBackgroundColor_];

  v34 = [v22 bundleForClass_];
  sub_20C132964();

  v35 = [v92 whiteColor];
  v36 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v37 = *&v29[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v38 = sub_20C13C914();

  [v37 setText_];

  [*&v29[v36] setTextColor_];
  [v29 setNeedsLayout];

  v39 = sub_20C13C914();
  [v29 setAccessibilityIdentifier_];

  *&v6[v33] = v29;
  v40 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v41 = [objc_opt_self() configurationWithPointSize_];
  v42 = sub_20C13C914();
  v43 = [objc_opt_self() systemImageNamed:v42 withConfiguration:v41];

  if (v43)
  {
    v44 = [v43 imageWithRenderingMode_];
  }

  else
  {
    v44 = 0;
  }

  v45 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_ttrButton;
  [v40 setBackgroundImage:v44 forState:0];

  v46 = v40;
  [v46 setTranslatesAutoresizingMaskIntoConstraints_];
  v47 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v46 setTintColor_];

  *&v6[v45] = v46;
  v48 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_activityRingsToScrollViewBottomConstraint;
  *&v6[v48] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v49 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryViewTopConstraint;
  *&v6[v49] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v50 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewHeight;
  *&v6[v50] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v51 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewWidth;
  *&v6[v51] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v52 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewTopSpacing;
  *&v6[v52] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v53 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_summary;
  v54 = type metadata accessor for SessionSummaryViewModel();
  (*(*(v54 - 8) + 56))(&v6[v53], 1, 1, v54);
  *&v6[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_presenter] = a1;
  v55 = &v6[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_eventHub];
  *v55 = a3;
  *(v55 + 1) = a4;
  sub_20B51CC64(a5, &v6[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_storefrontLocalizer]);
  sub_20B51CC64(a6, &v6[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_mediaTagStringBuilder]);
  v56 = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v103[2] = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
  v103[3] = v56;
  v104 = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v57 = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v103[0] = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v103[1] = v57;
  memmove(&v6[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_stringBuilder], (a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder), 0x42uLL);
  v58 = objc_allocWithZone(type metadata accessor for SummaryActivityRingsView());

  swift_unknownObjectRetain();
  sub_20B7A3194(v103, v102);
  v59 = [v58 init];
  [v59 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_activityRingsView] = v59;
  v101.receiver = v6;
  v101.super_class = type metadata accessor for PhoneSessionPortraitSummaryViewController();
  v60 = objc_msgSendSuper2(&v101, sel_initWithNibName_bundle_, 0, 0);
  *(*&v60[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_presenter] + 24) = &off_2822E9A50;
  swift_unknownObjectWeakAssign();
  v61 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_bottomStackView;
  v62 = *&v60[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_bottomStackView];
  v63 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_doneButton;
  v64 = *&v60[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_doneButton];
  v65 = v60;
  [v62 addArrangedSubview_];
  v66 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_cooldownButton;
  [*&v60[v61] addArrangedSubview_];
  v67 = *&v60[v63];
  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = &v67[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v70 = *&v67[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  *v69 = sub_20BE0D058;
  v69[1] = v68;
  v71 = v67;

  sub_20B583ECC(v70);

  v72 = *&v65[v66];
  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = &v72[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v75 = *&v72[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  *v74 = sub_20BE0D088;
  v74[1] = v73;
  v76 = v65;
  v77 = v72;

  sub_20B583ECC(v75);

  v78 = *&v76[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_ttrButton];
  [v78 addTarget:v76 action:sel_handleGuidedRunButtonTapped forControlEvents:64];

  v79 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryView;
  v80 = *&v76[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryView];
  v81 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v82 = &v80[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onBookmarkTapped];
  v83 = *&v80[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onBookmarkTapped];
  *v82 = sub_20BE0D0B8;
  v82[1] = v81;
  v84 = v80;

  sub_20B583ECC(v83);

  v85 = *&v76[v79];
  v86 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v87 = v85;

  v88 = &v87[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onShareButtonTapped];
  v89 = *&v87[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onShareButtonTapped];
  *v88 = sub_20BE0D0E8;
  v88[1] = v86;

  sub_20B583ECC(v89);

  [*&v76[v79] setAlpha_];
  [*&v76[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridView] setAlpha_];
  [*&v60[v61] setAlpha_];
  [*&v76[OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_activityRingsView] setAlpha_];

  __swift_destroy_boxed_opaque_existential_1(a6);
  __swift_destroy_boxed_opaque_existential_1(a5);
  v90 = sub_20C137254();
  (*(*(v90 - 8) + 8))(a2, v90);
  return v76;
}

uint64_t sub_20BE0D120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionSummaryViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BE0D184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryActivityRingsMetricViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BE0D1E8(uint64_t a1)
{
  v2 = type metadata accessor for SummaryActivityRingsMetricViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20BE0D244()
{
  result = qword_27C76F520;
  if (!qword_27C76F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76F520);
  }

  return result;
}

unint64_t sub_20BE0D298()
{
  result = qword_27C76F528;
  if (!qword_27C76F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76F528);
  }

  return result;
}

uint64_t sub_20BE0D2EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20BE0D510()
{
  v1 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryView;
  v2 = [objc_allocWithZone(type metadata accessor for SummaryContentSummaryView()) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_scrollView;
  v4 = [objc_allocWithZone(MEMORY[0x277D759D8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v4 &selRef_count + 2];
  v5 = sub_20C13C914();
  [v4 setAccessibilityIdentifier_];

  *(v0 + v3) = v4;
  v6 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentView;
  v7 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v7 &selRef_count + 2];
  v49 = objc_opt_self();
  v8 = [v49 clearColor];
  [v7 setBackgroundColor_];

  *(v0 + v6) = v7;
  v9 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridView;
  v10 = [objc_allocWithZone(type metadata accessor for SummaryMetricGridView()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v10 &selRef_count + 2];
  *(v0 + v9) = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_bottomStackView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v12 &selRef_count + 2];
  [v12 setAlignment_];
  [v12 setAxis_];
  [v12 setDistribution_];
  [v12 setSpacing_];
  *(v0 + v11) = v12;
  v51 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_doneButton;
  v13 = type metadata accessor for SummaryPlatterButtonView();
  v14 = [objc_allocWithZone(v13) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v14 &selRef_count + 2];
  v15 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v14 &:v15 OBJC:? LABEL:? PROTOCOL:? :? :?UINavigationControllerDelegate];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass_];
  sub_20C132964();

  v18 = [v49 blackColor];
  v19 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v20 = *&v14[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v21 = sub_20C13C914();

  [v20 setText_];

  [*&v14[v19] setTextColor_];
  [v14 setNeedsLayout];

  v22 = sub_20C13C914();
  [v14 setAccessibilityIdentifier_];

  *(v0 + v51) = v14;
  v23 = [objc_allocWithZone(v13) initWithFrame_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v19) = sub_20C1380F4();
  v24 = objc_allocWithZone(MEMORY[0x277D75348]);
  v25 = 0.15;
  if (v19 == 3)
  {
    v25 = 0.415686275;
  }

  v26 = [v24 initWithWhite:v25 alpha:1.0];
  v27 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_cooldownButton;
  [v23 setBackgroundColor_];

  v28 = [v16 bundleForClass_];
  sub_20C132964();

  v29 = [v49 whiteColor];
  v30 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v31 = *&v23[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v32 = sub_20C13C914();

  [v31 setText_];

  [*&v23[v30] setTextColor_];
  [v23 setNeedsLayout];

  v33 = sub_20C13C914();
  [v23 setAccessibilityIdentifier_];

  *(v0 + v27) = v23;
  v34 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v35 = [objc_opt_self() configurationWithPointSize_];
  v36 = sub_20C13C914();
  v37 = [objc_opt_self() systemImageNamed:v36 withConfiguration:v35];

  if (v37)
  {
    v38 = [v37 imageWithRenderingMode_];
  }

  else
  {
    v38 = 0;
  }

  v39 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_ttrButton;
  [v34 setBackgroundImage:v38 forState:0];

  v40 = v34;
  [v40 setTranslatesAutoresizingMaskIntoConstraints_];
  v41 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v40 setTintColor_];

  *(v0 + v39) = v40;
  v42 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_activityRingsToScrollViewBottomConstraint;
  *(v0 + v42) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v43 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_contentSummaryViewTopConstraint;
  *(v0 + v43) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v44 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewHeight;
  *(v0 + v44) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v45 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewWidth;
  *(v0 + v45) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v46 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_gridViewTopSpacing;
  *(v0 + v46) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v47 = OBJC_IVAR____TtC9SeymourUI41PhoneSessionPortraitSummaryViewController_summary;
  v48 = type metadata accessor for SessionSummaryViewModel();
  (*(*(v48 - 8) + 56))(v0 + v47, 1, 1, v48);
  sub_20C13DE24();
  __break(1u);
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s11EnvironmentVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s11EnvironmentVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t TVNavigationRouterInterceptionPresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_currentHandler;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  swift_storeEnumTagMultiPayload();
  return v0;
}

uint64_t TVNavigationRouterInterceptionPresenter.init()()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_currentHandler;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  swift_storeEnumTagMultiPayload();
  return v0;
}

uint64_t sub_20BE0DF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a2;
  v53 = a1;
  v48 = a3;
  v5 = type metadata accessor for NavigationRequest();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0);
  v58 = *(v7 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v7);
  v59 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v46 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  v17 = sub_20C13BB84();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v18 + 8))(v20, v17);
  v55 = v4;
  v21 = v4 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v57 = Strong;
    v54 = *(v21 + 8);
    v23 = v52;
    sub_20BE103F4(v53, v52, type metadata accessor for NavigationRequest);
    v24 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v25 = swift_allocObject();
    sub_20B75B150(v23, v25 + v24);
    sub_20C137CA4();
    v26 = v58;
    v27 = *(v58 + 16);
    v27(v13, v16, v7);
    v28 = *(v60 + 16);
    v29 = v13;
    if (v28)
    {
      v47 = v16;
      v30 = v60 + 32;
      v52 = v26 + 32;
      v53 = v8 + 7;
      v51 = v26 + 8;
      v46 = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = v59;
      v50 = v27;
      v49 = v5;
      do
      {
        v60 = v30;
        v58 = v28;
        sub_20B51CC64(v30, v62);
        v32 = swift_allocObject();
        swift_weakInit();
        sub_20B51CC64(v62, v61);
        v33 = swift_allocObject();
        sub_20B51C710(v61, v33 + 16);
        v34 = v57;
        *(v33 + 7) = v32;
        *(v33 + 8) = v34;
        *(v33 + 9) = v54;
        v50(v31, v29, v7);
        v35 = (*(v26 + 80) + 16) & ~*(v26 + 80);
        v36 = (v53 + v35) & 0xFFFFFFFFFFFFFFF8;
        v37 = swift_allocObject();
        v38 = *(v26 + 32);
        v38(v37 + v35, v59, v7);
        v39 = (v37 + v36);
        *v39 = sub_20BE11108;
        v39[1] = v33;
        swift_unknownObjectRetain();
        v40 = v56;
        sub_20C137C94();
        __swift_destroy_boxed_opaque_existential_1(v62);
        v41 = *(v26 + 8);
        v41(v29, v7);
        v38(v29, v40, v7);
        v31 = v59;
        v30 = v60 + 40;
        v28 = v58 - 1;
      }

      while (v58 != 1);
      swift_unknownObjectRelease();
      v42 = v48;
      v16 = v47;
    }

    else
    {
      swift_unknownObjectRelease();
      v41 = *(v26 + 8);
      v42 = v48;
    }

    v41(v16, v7);
    return (*(v26 + 32))(v42, v29, v7);
  }

  else
  {
    sub_20B5D9BA8();
    v43 = swift_allocError();
    *v44 = 12;
    *(swift_allocObject() + 16) = v43;
    return sub_20C137CA4();
  }
}

uint64_t sub_20BE0E584@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a6;
  v11 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C13BB84();
  v14 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20B51CC64(a2, v45);
  v43 = a1;
  sub_20BE103F4(a1, v13, type metadata accessor for NavigationRequest);
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1F4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38[1] = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v40 = a5;
    v22 = v21;
    v44[0] = v21;
    *v20 = 136446466;
    v39 = a4;
    __swift_project_boxed_opaque_existential_1(v45, v45[3]);
    v23 = sub_20C1382C4();
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_1(v45);
    v26 = sub_20B51E694(v23, v25, v44);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2082;
    v27 = NavigationRequest.description.getter();
    v29 = v28;
    sub_20B76BB2C(v13, type metadata accessor for NavigationRequest);
    v30 = sub_20B51E694(v27, v29, v44);
    a4 = v39;

    *(v20 + 14) = v30;
    _os_log_impl(&dword_20B517000, v17, v18, "Starting interception using %{public}s for %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v31 = v22;
    a5 = v40;
    MEMORY[0x20F2F6A40](v31, -1, -1);
    MEMORY[0x20F2F6A40](v20, -1, -1);

    (*(v14 + 8))(v16, v41);
  }

  else
  {

    sub_20B76BB2C(v13, type metadata accessor for NavigationRequest);
    (*(v14 + 8))(v16, v41);
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    sub_20B51CC64(a2, v45);
    v34 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_currentHandler;
    swift_beginAccess();
    sub_20BB2C72C(v45, v33 + v34);
    swift_endAccess();
  }

  v35 = a2[3];
  v36 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v35);
  return (*(v36 + 16))(v43, a4, a5, v35, v36);
}

void sub_20BE0E944(void (*a1)(void **), uint64_t a2, uint64_t a3, int a4)
{
  v46 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  v10 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v44 - v14);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_6;
  }

  v44 = v7;
  v45 = v6;
  v18 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
  v19 = Strong;
  swift_beginAccess();
  sub_20BE103F4(v19 + v18, v15, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v21 = *v15;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_6:

    sub_20B5D9BA8();
    v23 = swift_allocError();
    *v24 = 9;
    *&v49[0] = v23;
    BYTE8(v49[0]) = 1;
    a1(v49);
    goto LABEL_17;
  }

  v21 = *v15;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D60);
  sub_20B76BB2C(v15 + *(v22 + 48), type metadata accessor for NavigationRequest);
LABEL_8:
  swift_beginAccess();
  v25 = swift_weakLoadStrong();
  if (v25)
  {
    v26 = v25;
    swift_storeEnumTagMultiPayload();
    v27 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
    swift_beginAccess();
    sub_20BE11140(v12, v26 + v27);
    swift_endAccess();
  }

  swift_beginAccess();
  v28 = swift_weakLoadStrong();
  if (v28)
  {
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    v29 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_currentHandler;
    v30 = v28;
    swift_beginAccess();
    sub_20BB2C72C(v49, v30 + v29);
    swift_endAccess();
  }

  swift_beginAccess();
  v31 = swift_weakLoadStrong();
  if (v31)
  {
    v32 = v31 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display;
    v33 = swift_unknownObjectWeakLoadStrong();
    v34 = *(v32 + 8);

    if (v33)
    {
      ObjectType = swift_getObjectType();
      (*(v34 + 80))(v46 & 1, ObjectType, v34);
      v36 = swift_allocObject();
      v36[2] = v21;
      v36[3] = sub_20B5D9B44;
      v36[4] = v16;
      v37 = v45;
      v38 = sub_20C137CB4();
      v39 = swift_allocObject();
      *(v39 + 16) = sub_20BE112A0;
      *(v39 + 24) = v36;

      v38(sub_20B52347C, v39);
      swift_unknownObjectRelease();

      (*(v44 + 8))(v9, v37);
      return;
    }
  }

  v40 = [v21 view];
  if (!v40)
  {
    __break(1u);
    return;
  }

  v41 = v40;

  v42 = [v41 window];
  [v42 makeKeyAndVisible];
  sub_20B5D9BA8();
  v23 = swift_allocError();
  *v43 = 12;
  v47 = v23;
  v48 = 1;
  a1(&v47);

LABEL_17:
}

void sub_20BE0EEB0(uint64_t *a1, id a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = [a2 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 window];

    [v8 makeKeyAndVisible];
    a3(v4, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20BE0EF6C()
{
  v1 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
  swift_beginAccess();
  sub_20BE103F4(v0 + v4, v3, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_20B76BB2C(v3, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D60);
  sub_20B76BB2C(v3 + *(v5 + 48), type metadata accessor for NavigationRequest);
  v6 = v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 88))(ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TVNavigationRouterInterceptionPresenter.deinit()
{
  sub_20B76BB2C(v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_currentHandler, &qword_27C76A9B8);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display);
  return v0;
}

uint64_t TVNavigationRouterInterceptionPresenter.__deallocating_deinit()
{
  sub_20B76BB2C(v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_currentHandler, &qword_27C76A9B8);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display);

  return swift_deallocClassInstance();
}

uint64_t TVNavigationRouterInterceptionPresenter.activate(with:)(void *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  v8 = a1;
  return sub_20C137C94();
}

void sub_20BE0F368(void (*a1)(void **), uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

LABEL_8:
    sub_20B5D9BA8();
    v29 = swift_allocError();
    *v30 = 3;
    v38 = v29;
    v39 = 1;
    v31 = &v38;
    goto LABEL_10;
  }

  v34 = a4;
  v35 = v9;
  v17 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
  v18 = Strong;
  swift_beginAccess();
  sub_20BE103F4(v18 + v17, v14, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);

  if (swift_getEnumCaseMultiPayload() != 2)
  {

    sub_20B76BB2C(v14, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);
    goto LABEL_8;
  }

  sub_20B76BB2C(v14, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);
  swift_beginAccess();
  v19 = swift_weakLoadStrong();
  if (v19)
  {
    v20 = v19 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display;
    v21 = swift_unknownObjectWeakLoadStrong();
    v22 = *(v20 + 8);

    if (v21)
    {
      ObjectType = swift_getObjectType();
      v24 = v34;
      (*(v22 + 72))(v34, ObjectType, v22);
      v25 = swift_allocObject();
      v25[2] = a3;
      v25[3] = v24;
      v25[4] = sub_20B5DF614;
      v25[5] = v15;

      v26 = v24;
      v27 = sub_20C137CB4();
      v28 = swift_allocObject();
      *(v28 + 16) = sub_20BE112F4;
      *(v28 + 24) = v25;

      v27(sub_20B5DF6DC, v28);
      swift_unknownObjectRelease();

      (*(v35 + 8))(v11, v8);
      return;
    }
  }

  sub_20B5D9BA8();
  v29 = swift_allocError();
  *v32 = 12;
  v36 = v29;
  v37 = 1;
  v31 = &v36;
LABEL_10:
  a1(v31);
}

void sub_20BE0F778(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, void))
{
  v6 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    *v8 = a3;
    swift_storeEnumTagMultiPayload();
    v11 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
    swift_beginAccess();
    v12 = a3;
    sub_20BE11140(v8, v10 + v11);
    swift_endAccess();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
  sub_20C13E1D4();
  v13 = v15;
  v14 = v16;
  a4(v15, v16);
  sub_20B583FB8(v13, v14);
}

uint64_t TVNavigationRouterInterceptionPresenter.deactivate()()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 1;
  return sub_20C137C94();
}

uint64_t TVNavigationRouterInterceptionPresenter.handleNavigationRequest(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a3;
  v5 = type metadata accessor for NavigationRequest();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v9 + 8))(v11, v8);
  v12 = swift_allocObject();
  swift_weakInit();
  sub_20BE103F4(a1, v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  sub_20B75B150(v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  return sub_20C137C94();
}

uint64_t sub_20BE0FCA0(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a5;
  v71 = a4;
  v74 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250);
  MEMORY[0x28223BE20](v73);
  v8 = (&v62 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0);
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v9);
  v65 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - v12;
  MEMORY[0x28223BE20](v14);
  v72 = &v62 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F568);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v69 = &v62 - v20;
  v21 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v26 = (&v62 - v25);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v28 = Strong;
  v64 = v18;
  v70 = a1;
  v29 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
  swift_beginAccess();
  sub_20BE103F4(v28 + v29, v26, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);

  if (swift_getEnumCaseMultiPayload())
  {
    sub_20B76BB2C(v26, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);
    a1 = v70;
LABEL_4:
    sub_20B5D9BA8();
    v30 = swift_allocError();
    *v31 = 9;
    *v8 = v30;
    swift_storeEnumTagMultiPayload();
    a1(v8);
    v32 = &unk_27C76D250;
    v33 = v8;
    return sub_20B520158(v33, v32);
  }

  v35 = *v26;
  swift_beginAccess();
  v36 = swift_weakLoadStrong();
  if (v36)
  {
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D60) + 48);
    *v23 = v35;
    sub_20BE103F4(v71, v23 + v38, type metadata accessor for NavigationRequest);
    swift_storeEnumTagMultiPayload();
    v39 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
    swift_beginAccess();
    v40 = v35;
    sub_20BE11140(v23, v37 + v39);
    swift_endAccess();
  }

  swift_beginAccess();
  v41 = swift_weakLoadStrong();
  v42 = v64;
  v63 = v35;
  if (v41)
  {
    v43 = v72;
    sub_20BE0DF84(v71, v66, v72);

    v44 = swift_allocObject();
    *(v44 + 2) = a3;
    *(v44 + 3) = v35;
    v45 = v74;
    *(v44 + 4) = v70;
    *(v44 + 5) = v45;
    v46 = v67;
    v47 = v68;
    (*(v67 + 16))(v13, v43, v68);
    v48 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v49 = v10 + v48;
    v50 = v46;
    v51 = (v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    (*(v50 + 32))(v52 + v48, v13, v47);
    v53 = (v52 + v51);
    *v53 = sub_20BE111A4;
    v53[1] = v44;
    type metadata accessor for NavigationRequest();
    v54 = v63;

    v55 = v69;
    sub_20C137C94();
    (*(v50 + 8))(v72, v47);
    v56 = 0;
  }

  else
  {
    v56 = 1;
    v47 = v68;
    v55 = v69;
    v50 = v67;
  }

  (*(v50 + 56))(v55, v56, 1, v47);
  sub_20B52F9E8(v55, v42, &qword_27C76F568);
  if ((*(v50 + 48))(v42, 1, v47) == 1)
  {
    sub_20B520158(v42, &qword_27C76F568);
    sub_20B5D9BA8();
    v57 = swift_allocError();
    *v58 = 2;
    *v8 = v57;
    swift_storeEnumTagMultiPayload();
    v70(v8);

    sub_20B520158(v8, &unk_27C76D250);
    v33 = v55;
    v32 = &qword_27C76F568;
  }

  else
  {
    v59 = v65;
    (*(v50 + 32))(v65, v42, v47);
    v60 = sub_20C137CB4();
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    *(v61 + 24) = 0;
    v60(sub_20B52F238, v61);

    (*(v50 + 8))(v59, v47);
    v32 = &qword_27C76F568;
    v33 = v55;
  }

  return sub_20B520158(v33, v32);
}

uint64_t sub_20BE103F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BE1045C(void (*a1)(void), uint64_t a2)
{
  v5 = *(type metadata accessor for NavigationRequest() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_20BE0FCA0(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_20BE1050C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v7 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    *v9 = a3;
    swift_storeEnumTagMultiPayload();
    v12 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
    swift_beginAccess();
    v13 = a3;
    sub_20BE11140(v9, v11 + v12);
    swift_endAccess();
  }

  return a4(a1);
}

uint64_t TVNavigationRouterInterceptionPresenter.cancel()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33[1] = a1;
  v33[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v33[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33[0]);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v33 - v7;
  v9 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v13 + 8))(v15, v12);
  v16 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
  swift_beginAccess();
  sub_20BE103F4(v2 + v16, v11, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D60);
    v19 = type metadata accessor for NavigationRequest;
    v20 = v11 + *(v18 + 48);
  }

  else
  {
    v19 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State;
    v20 = v11;
  }

  sub_20B76BB2C(v20, v19);
  v21 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_currentHandler;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v21, &v34, &qword_27C76A9B8);
  if (v35)
  {
    sub_20B51C710(&v34, v36);
    v22 = v37;
    v23 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    (*(v23 + 24))(v22, v23);
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_20BE10B60;
    *(v25 + 24) = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20B5DF3B8;
    *(v26 + 24) = v25;
    v27 = v33[0];
    (*(v3 + 16))(v5, v8, v33[0]);
    v28 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v29 = (v4 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    (*(v3 + 32))(v30 + v28, v5, v27);
    v31 = (v30 + v29);
    *v31 = sub_20B5DF3D4;
    v31[1] = v26;
    sub_20C137C94();
    (*(v3 + 8))(v8, v27);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  sub_20B520158(&v34, &qword_27C76A9B8);
  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20BE10AD0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    v1 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_currentHandler;
    v2 = result;
    swift_beginAccess();
    sub_20BB2C72C(v3, v2 + v1);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20BE10B68(void *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  v8 = a1;
  return sub_20C137C94();
}

uint64_t sub_20BE10CF4()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 1;
  return sub_20C137C94();
}

uint64_t sub_20BE10EE4()
{
  result = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(319);
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

void sub_20BE10FD8()
{
  sub_20BE1104C();
  if (v0 <= 0x3F)
  {
    sub_20BE11094();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20BE1104C()
{
  if (!qword_27C76F558)
  {
    v0 = sub_20B62BB28();
    if (!v1)
    {
      atomic_store(v0, &qword_27C76F558);
    }
  }
}

void sub_20BE11094()
{
  if (!qword_27C76F560)
  {
    sub_20B62BB28();
    type metadata accessor for NavigationRequest();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C76F560);
    }
  }
}

uint64_t sub_20BE11140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BE111D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t objectdestroy_58Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20BE11308()
{
  sub_20BE1D844();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE1166C()
{
  sub_20BE1E83C();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE119D0()
{
  sub_20BE1F834();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE11D34()
{
  sub_20BE2082C();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE120A4()
{
  sub_20BE21830();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE12408()
{
  sub_20BE22828();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE1276C()
{
  sub_20BE23820();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE12AD0()
{
  sub_20BE24818();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE12E34()
{
  sub_20BE25810();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE131B0()
{
  sub_20BE26850();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE13514()
{
  sub_20BE27848();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE13890()
{
  sub_20BE28888();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE13BF4()
{
  sub_20BE29880();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE13F70()
{
  sub_20BE2A8C0();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE142EC()
{
  sub_20BE2B900();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE14668()
{
  sub_20BE2C940();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE149E4()
{
  sub_20BE2D980();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE14D48()
{
  sub_20BE2E978();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE150AC()
{
  sub_20BE2F970();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE15410()
{
  sub_20BE3096C();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BE1578C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v5 = v4;
  v8 = a1;
  v9 = *(a4 + 16);

  if (v9)
  {
    for (i = (a4 + 32); ; ++i)
    {
      v13 = *i;
      swift_unknownObjectRetain();
      a2(&v12, &v14, &v13);
      if (v5)
      {
        break;
      }

      swift_unknownObjectRelease();
      v8 = v12;
      v14 = v12;
      if (!--v9)
      {
        return v8;
      }
    }

    swift_unknownObjectRelease();
  }

  return v8;
}

uint64_t sub_20BE15860(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v13 = a1;

  if (a4 == a5)
  {
    return v9;
  }

  if (a5 >= a4)
  {
    while (a5 != a4)
    {
      v12 = a4;
      a2(&v11, &v13, &v12);

      if (!v5)
      {
        ++a4;
        v9 = v11;
        v13 = v11;
        if (a5 != a4)
        {
          continue;
        }
      }

      return v9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20BE15914(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v5 = v4;
  v8 = a1;
  v9 = *(a4 + 16);

  if (v9)
  {
    v10 = (a4 + 48);
    while (1)
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v13 = *v10;
      v16[0] = v11;
      v16[1] = v12;
      v17 = v13;
      sub_20B6D8740(v11, v12, v13);
      a2(&v15, &v18, v16);
      if (v5)
      {
        break;
      }

      v10 += 24;
      sub_20B6D8768(v11, v12, v13);

      v8 = v15;
      v18 = v15;
      if (!--v9)
      {
        return v8;
      }
    }

    sub_20B6D8768(v11, v12, v13);
  }

  return v8;
}

uint64_t sub_20BE15A0C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v23 = sub_20C1351B4();
  MEMORY[0x28223BE20](v23);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v10 = a4 + 56;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 56);
  v14 = (v11 + 63) >> 6;
  v19[1] = v7 + 16;
  v20 = v7;
  v22 = (v7 + 8);

  v24 = a4;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
      v18 = v23;
LABEL_9:
      (*(v20 + 16))(v9, *(v24 + 48) + *(v20 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v18);
      v21(&v25, &v26, v9);
      if (v4)
      {
        break;
      }

      v13 &= v13 - 1;
      (*v22)(v9, v18);

      a1 = v25;
      v26 = v25;
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    (*v22)(v9, v18);

LABEL_13:

    return a1;
  }

  else
  {
LABEL_5:
    v18 = v23;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_13;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_20BE15C40(uint64_t a1)
{
  v2 = sub_20C138034();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2, v10);
      (*(v3 + 32))(v5, v12, v2);
      sub_20B6FF26C(v8, v5);
      (*(v3 + 8))(v8, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_20BE15E50(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_20B527618(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_20BE15F54()
{
  v1 = *(*(v0 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v2 = *(v1 + 16);
  if (v2)
  {

    v4 = 0;
    v5 = (v1 + 40);
    while (v4 < *(v1 + 16))
    {
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 40);
      swift_unknownObjectRetain();
      v8(v15, ObjectType, v6);
      v20 = v15[8];
      v21 = v15[9];
      v22 = v16;
      v17[4] = v15[4];
      v17[5] = v15[5];
      v18 = v15[6];
      v19 = v15[7];
      v17[0] = v15[0];
      v17[1] = v15[1];
      v17[2] = v15[2];
      v17[3] = v15[3];
      if (sub_20B5EAF8C(v17) == 1)
      {
        v9 = 1;
      }

      else
      {
        v10 = *(&v18 + 1);
        v23[0] = *(&v18 + 1);
        sub_20B52F9E8(v23, v14, &qword_27C763188);
        sub_20B520158(v15, &qword_27C762340);
        v11 = *(v10 + 16);
        sub_20B520158(v23, &qword_27C763188);
        v9 = v11 == 0;
      }

      type metadata accessor for TVWorkoutPlanDetailNextWorkoutsShelf();
      v12 = swift_dynamicCastClass();
      result = swift_unknownObjectRelease();
      if (v12 && !v9)
      {

        return v4;
      }

      ++v4;
      v5 += 2;
      if (v2 == v4)
      {

        return *(*(*(v13 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves) + 16);
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_20BE16144()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  if (!*(v0 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_state))
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_state) = 1;
    v4 = sub_20C13CDF4();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v5;
    sub_20B6383D0(0, 0, v3, &unk_20C17F630, v6);
  }
}

uint64_t sub_20BE1627C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = sub_20C13CDF4();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v9;
    sub_20B6383D0(0, 0, v6, a3, v10);
  }

  return result;
}

uint64_t sub_20BE163CC(uint64_t *a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v209 = a4;
  *&v220 = a3;
  v217 = a2;
  v201 = *v4;
  v7 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v7 - 8);
  v197 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C132EE4();
  v195 = *(v9 - 8);
  v196 = v9;
  MEMORY[0x28223BE20](v9);
  v194 = &v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_20C133154();
  v199 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v191 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v12 - 8);
  v189 = &v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v187 = &v186 - v15;
  MEMORY[0x28223BE20](v16);
  v190 = &v186 - v17;
  v210 = sub_20C133134();
  v215 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v213 = &v186 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_20C132E94();
  v212 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v188 = &v186 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v198 = &v186 - v21;
  MEMORY[0x28223BE20](v22);
  v218 = &v186 - v23;
  v24 = sub_20C137C24();
  v203 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v193 = &v186 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772000);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v186 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v29 - 8);
  v204 = (&v186 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v33 = &v186 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v186 - v35;
  v37 = sub_20C133954();
  v38 = *(v37 - 8);
  v39 = *(v38 + 16);
  v211 = a1;
  v208 = (v38 + 16);
  v206 = v39;
  v39(v36, a1, v37);
  v41 = *(v38 + 56);
  v40 = (v38 + 56);
  v205 = v41;
  v41(v36, 0, 1, v37);
  v42 = OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_workoutPlan;
  swift_beginAccess();
  sub_20B5DF2D4(v36, v5 + v42, &unk_27C76A970);
  swift_endAccess();
  v43 = OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_workoutPlanSummary;
  swift_beginAccess();
  v219 = v5;
  v44 = v5 + v43;
  v45 = v203;
  sub_20B606B6C(v220, v44, &unk_27C772020);
  swift_endAccess();
  v46 = *(v45 + 56);
  v216 = v33;
  v207 = v24;
  v46(v33, 1, 1, v24);
  sub_20B52F9E8(v217, v28, &unk_27C772000);
  v47 = sub_20C137374();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v28, 1, v47) == 1)
  {
    sub_20B520158(v28, &unk_27C772000);
    v49 = v219;
    __swift_project_boxed_opaque_existential_1((v219[22] + 48), *(v219[22] + 72));
    v200 = sub_20B5E107C();
    v202 = v50;
    v51 = v49;
  }

  else
  {
    v200 = sub_20C137314();
    v202 = v52;
    (*(v48 + 8))(v28, v47);
    v51 = v219;
  }

  v53 = v204;
  sub_20B52F9E8(v216, v204, &unk_27C766680);
  v54 = v207;
  if ((*(v45 + 48))(v53, 1, v207) == 1)
  {
    sub_20B520158(v53, &unk_27C766680);
  }

  else
  {
    v55 = v193;
    (*(v45 + 32))(v193, v53, v54);
    sub_20BC4E008(v55);
    (*(v45 + 8))(v55, v54);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = v51[5];
    ObjectType = swift_getObjectType();
    *&v234 = &off_2822EA028;
    *(&v233 + 1) = v201;
    *&v232 = v51;
    v58 = *(v56 + 16);

    v207 = v36;
    v204 = v40;
    v59 = v37;
    v60 = v216;
    v58(&v232, v216, v200, v202, 0, 0, ObjectType, v56);
    v51 = v219;

    swift_unknownObjectRelease();
    v61 = v60;
    v37 = v59;
    v36 = v207;
    sub_20B520158(v61, &unk_27C766680);
    __swift_destroy_boxed_opaque_existential_1(&v232);
  }

  else
  {
    sub_20B520158(v216, &unk_27C766680);
  }

  v62 = v51[58];
  v63 = v211;
  v206(v36, v211, v37);
  (v205)(v36, 0, 1, v37);
  v64 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
  swift_beginAccess();
  sub_20B5DF2D4(v36, v62 + v64, &unk_27C76A970);
  swift_endAccess();
  v65 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanTemplateMetadata;
  swift_beginAccess();
  sub_20B606B6C(v217, v62 + v65, &unk_27C772000);
  swift_endAccess();
  v66 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanSummary;
  swift_beginAccess();
  sub_20B606B6C(v220, v62 + v66, &unk_27C772020);
  swift_endAccess();
  sub_20C0503AC();
  *&v220 = v62;
  sub_20C04FDFC();
  sub_20C132E64();
  v67 = *MEMORY[0x277CC9968];
  v68 = v215;
  v69 = *(v215 + 104);
  v70 = v213;
  v71 = v210;
  v69(v213, v67, v210);
  v72 = sub_20C133834();
  v75 = *(v68 + 8);
  v74 = v68 + 8;
  v73 = v75;
  v75(v70, v71);
  if (*(v72 + 16))
  {
    v76 = v219;
LABEL_16:
    v87 = v209;
    goto LABEL_17;
  }

  v216 = v73;
  v217 = v69;
  v215 = v74;
  v77 = v190;
  sub_20C1338D4();
  v78 = v212;
  v79 = v214;
  (*(v212 + 56))(v77, 0, 1, v214);
  v208 = *(v78 + 32);
  v208(v198, v77, v79);
  v80 = v191;
  sub_20C133124();
  v81 = v210;
  v217(v70, v67, v210);
  v82 = v187;
  sub_20C1330F4();
  v83 = v70;
  v84 = v212;
  v216(v83, v81);
  v85 = *(v199 + 8);
  v199 += 8;
  v207 = v85;
  (v85)(v80, v192);
  v205 = *(v84 + 48);
  v206 = (v84 + 48);
  if (v205(v82, 1, v79) == 1)
  {
    (*(v84 + 8))(v198, v79);
    v86 = v82;
LABEL_14:
    sub_20B520158(v86, &qword_27C762AC0);
LABEL_15:
    v76 = v219;
    v63 = v211;
    goto LABEL_16;
  }

  v208(v188, v82, v79);
  v170 = v198;
  v171 = v84 + 8;
  if (sub_20C132E04())
  {
    v204 = v171;
    v202 = v171 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v172 = v188;
    LODWORD(v203) = v67;
    while (1)
    {

      v173 = v170;
      v174 = v213;
      v175 = v210;
      v217(v213, v67, v210);
      v72 = sub_20C133834();
      v216(v174, v175);
      if (*(v72 + 16) || (sub_20C132E04() & 1) != 0)
      {
        v184 = *v204;
        v185 = v214;
        (*v204)(v172, v214);
        v184(v173, v185);
        goto LABEL_15;
      }

      v176 = v191;
      sub_20C133124();
      v177 = v67;
      v178 = v213;
      v217(v213, v177, v175);
      v179 = v189;
      sub_20C1330F4();
      v216(v178, v175);
      (v207)(v176, v192);
      v180 = *v204;
      v181 = v214;
      (*v204)(v172, v214);
      if (v205(v179, 1, v181) == 1)
      {
        break;
      }

      v208(v172, v179, v181);
      v170 = v198;
      v182 = sub_20C132E04();
      v67 = v203;
      if ((v182 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    v180(v198, v181);
    v86 = v179;
    goto LABEL_14;
  }

  v180 = *v171;
LABEL_46:
  v76 = v219;
  v87 = v209;
  v183 = v214;
  v180(v188, v214);
  v180(v170, v183);
  v63 = v211;
LABEL_17:
  *&v232 = v72;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E80);
  sub_20B6D6ABC(&qword_27C772280, &qword_27C763E80);
  sub_20BE43E70(&qword_27C762288, MEMORY[0x277D51FE0]);
  v88 = sub_20C13CBF4();

  v89 = v76[59];
  if (v87)
  {
    v90 = v87;
  }

  else
  {
    v90 = MEMORY[0x277D84FA0];
  }

  sub_20B77001C(v63, v88, v90);

  sub_20BE17D1C(v63, v87);
  if (*(v76 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_state) != 1)
  {
    return (*(v212 + 8))(v218, v214);
  }

  *(v76 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_state) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  *(inited + 32) = v220;
  *(inited + 40) = &off_282302E30;
  *(inited + 48) = v89;
  *(inited + 56) = &off_2822A3E08;
  swift_beginAccess();

  v93 = sub_20BEF73DC(v92);

  *&v232 = inited;
  sub_20B8D8FF8(v93);
  v94 = v232;
  v243 = v232;
  swift_beginAccess();
  v95 = v76[61];
  if (v95 >> 62)
  {
    if (!sub_20C13DB34())
    {
      goto LABEL_28;
    }
  }

  else if (!*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1((v76[22] + 48), *(v76[22] + 72));
  v96 = sub_20B5E107C();
  v98 = v97;
  type metadata accessor for TitledSeparatorShelf();
  v99 = swift_allocObject();
  *(v99 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v100 = v99 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_row;
  sub_20B5D8060(&v232);
  v101 = v237;
  *(v100 + 64) = v236;
  *(v100 + 80) = v101;
  *(v100 + 160) = v242;
  v102 = v241;
  *(v100 + 128) = v240;
  *(v100 + 144) = v102;
  v103 = v239;
  *(v100 + 96) = v238;
  *(v100 + 112) = v103;
  v104 = v233;
  *v100 = v232;
  *(v100 + 16) = v104;
  v105 = v235;
  *(v100 + 32) = v234;
  *(v100 + 48) = v105;
  v106 = (v99 + OBJC_IVAR____TtC9SeymourUI20TitledSeparatorShelf_title);
  *v106 = v96;
  v106[1] = v98;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v94 = sub_20BC0577C(0, v94[2] + 1, 1, v94);
  }

  v108 = v94[2];
  v107 = v94[3];
  if (v108 >= v107 >> 1)
  {
    v94 = sub_20BC0577C((v107 > 1), v108 + 1, 1, v94);
  }

  v94[2] = v108 + 1;
  v109 = &v94[2 * v108];
  v109[4] = v99;
  v109[5] = &off_2822CAF68;
  v243 = v94;

  v111 = sub_20BEF73DC(v110);

  sub_20B8D8FF8(v111);
LABEL_28:
  v112 = v194;
  sub_20C133804();
  v113 = sub_20C132EA4();
  v216 = v114;
  v217 = v113;
  (*(v195 + 8))(v112, v196);
  v115 = v243;
  sub_20C133AA4();
  LODWORD(v215) = v231;
  v116 = *(v76[63] + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  sub_20C13C734();
  v213 = v116;
  v117 = sub_20C13C724();
  v118 = type metadata accessor for CatalogPageImpressionTracker();
  v119 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v120 = MEMORY[0x277D221C0];
  v119[2] = sub_20C13C6D4();
  v119[3] = v117;
  v119[4] = v120;
  *(&v233 + 1) = v118;
  v121 = sub_20BE43E70(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  *&v234 = v121;
  *&v232 = v119;
  v122 = type metadata accessor for MetricLocationStore();
  v123 = swift_allocObject();
  v124 = MEMORY[0x277D84F90];
  v125 = MEMORY[0x277D84F98];
  *(v123 + 16) = MEMORY[0x277D84F90];
  *(v123 + 24) = v125;
  v126 = __swift_mutable_project_boxed_opaque_existential_1(&v232, v118);
  v211 = &v186;
  v127 = MEMORY[0x28223BE20](v126);
  v129 = (&v186 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v130 + 16))(v129, v127);
  v131 = *v129;
  v230[4] = v121;
  v230[3] = v118;
  v230[0] = v131;
  v229[3] = v122;
  v229[4] = &off_2822B6968;
  v229[0] = v123;
  v132 = v115[2];
  if (v132)
  {
    v209 = v122;
    v210 = v121;
    v228[0] = v124;
    sub_20BB5D394(0, v132, 0);
    v133 = 4;
    v134 = v228[0];
    do
    {
      v135 = *&v115[v133];
      v228[0] = v134;
      v136 = *(v134 + 16);
      v137 = *(v134 + 24);
      v220 = v135;
      swift_unknownObjectRetain();
      if (v136 >= v137 >> 1)
      {
        sub_20BB5D394((v137 > 1), v136 + 1, 1);
        v134 = v228[0];
      }

      *(v134 + 16) = v136 + 1;
      v138 = v134 + 24 * v136;
      *(v138 + 32) = v220;
      *(v138 + 48) = 0;
      v133 += 2;
      --v132;
    }

    while (v132);

    v122 = v209;
    v121 = v210;
  }

  else
  {

    v134 = MEMORY[0x277D84F90];
  }

  sub_20B51CC64(v230, v228);
  sub_20B51CC64(v229, v227);
  v139 = __swift_mutable_project_boxed_opaque_existential_1(v228, v228[3]);
  v140 = MEMORY[0x28223BE20](v139);
  v142 = (&v186 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v143 + 16))(v142, v140);
  v144 = __swift_mutable_project_boxed_opaque_existential_1(v227, v227[3]);
  v145 = MEMORY[0x28223BE20](v144);
  v147 = (&v186 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v148 + 16))(v147, v145);
  v149 = *v142;
  v150 = *v147;
  v225 = v118;
  v226 = v121;
  v224[0] = v149;
  v222 = v122;
  v223 = &off_2822B6968;
  v221[0] = v150;
  v151 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v152 = __swift_mutable_project_boxed_opaque_existential_1(v224, v225);
  v153 = MEMORY[0x28223BE20](v152);
  v155 = (&v186 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v156 + 16))(v155, v153);
  v157 = __swift_mutable_project_boxed_opaque_existential_1(v221, v222);
  v158 = MEMORY[0x28223BE20](v157);
  v160 = (&v186 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v161 + 16))(v160, v158);
  v162 = sub_20BE3AA74(v217, v216, v134, v215, v213, *v155, *v160, 2, v151);
  __swift_destroy_boxed_opaque_existential_1(v229);
  __swift_destroy_boxed_opaque_existential_1(v230);
  __swift_destroy_boxed_opaque_existential_1(v221);
  __swift_destroy_boxed_opaque_existential_1(v224);
  __swift_destroy_boxed_opaque_existential_1(v227);
  __swift_destroy_boxed_opaque_existential_1(v228);
  __swift_destroy_boxed_opaque_existential_1(&v232);
  v163 = v219;
  v164 = v219[63];
  v219[63] = v162;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v165 = v163[3];
    v166 = swift_getObjectType();
    *&v234 = &off_2822EA1C0;
    *(&v233 + 1) = v201;
    *&v232 = v163;
    v167 = v163[63];

    v168 = v167;
    sub_20B76FFF8(&v232, v168, v166, v165);
    swift_unknownObjectRelease();

    (*(v212 + 8))(v218, v214);
    return __swift_destroy_boxed_opaque_existential_1(&v232);
  }

  return (*(v212 + 8))(v218, v214);
}

uint64_t sub_20BE17D1C(uint64_t a1, uint64_t a2)
{
  v107 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F5B0);
  MEMORY[0x28223BE20](v4);
  v94 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = &v85 - v7;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F5B8);
  MEMORY[0x28223BE20](v93);
  v99 = &v85 - v8;
  v9 = sub_20C133154();
  v10 = *(v9 - 8);
  v101 = v9;
  v102 = v10;
  MEMORY[0x28223BE20](v9);
  v100 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C133594();
  MEMORY[0x28223BE20](v12 - 8);
  v106 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C133A14();
  v108 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v85 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = (&v85 - v21);
  MEMORY[0x28223BE20](v23);
  v96 = &v85 - v24;
  MEMORY[0x28223BE20](v25);
  v97 = &v85 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v85 - v28;
  v30 = sub_20C132E94();
  v103 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v105 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v95 = &v85 - v33;
  v109 = v2;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_state) == 1)
  {
    v34 = v109;
    swift_beginAccess();
    v35 = v30;
    v36 = MEMORY[0x277D84F90];
    v34[60] = MEMORY[0x277D84F90];

    swift_beginAccess();
    v34[61] = v36;
    v30 = v35;

    swift_beginAccess();
    v34[62] = MEMORY[0x277D84F98];
  }

  sub_20C1338D4();
  v104 = v16;
  v92 = v4;
  v91 = v22;
  v37 = v103;
  (*(v103 + 56))(v29, 0, 1, v30);
  v38 = a1;
  v39 = v95;
  (*(v37 + 32))(v95, v29, v30);
  sub_20C133944();
  v40 = v100;
  sub_20C133014();
  sub_20C1339E4();
  sub_20C133014();
  v41 = v96;
  sub_20C1339A4();
  v42 = *(v102 + 8);
  v102 += 8;
  v90 = v42;
  v42(v40, v101);
  v43 = v37;
  v44 = v91;
  (*(v43 + 16))(v105, v39, v30);
  sub_20C133014();
  sub_20C1339F4();
  v87 = sub_20BE43E70(&qword_27C76F5C0, MEMORY[0x277D501F0]);
  if ((sub_20C13C844() & 1) == 0)
  {
    goto LABEL_23;
  }

  v86 = v30;
  v106 = v38;
  v45 = v41;
  v46 = v94;
  v47 = v108;
  v48 = *(v108 + 16);
  v49 = v98;
  v48(v98, v45, v14);
  v50 = v92;
  v51 = v49 + *(v92 + 48);
  v105 = v48;
  v48(v51, v44, v14);
  sub_20B52F9E8(v49, v46, &qword_27C76F5B0);
  v88 = *(v50 + 48);
  v52 = v47;
  v54 = v47 + 32;
  v53 = *(v47 + 32);
  v53(v99, v46, v14);
  v89 = *(v52 + 8);
  v89(v46 + v88, v14);
  sub_20BE43EB8(v98, v46);
  v55 = *(v50 + 48);
  v56 = v99;
  v57 = &v99[*(v93 + 36)];
  v88 = v54;
  v85 = v53;
  v53(v57, v46 + v55, v14);
  v44 = v89;
  v89(v46, v14);
  v58 = v100;
  sub_20C133014();
  v59 = sub_20C133A04();
  v90(v58, v101);
  sub_20B520158(v56, &qword_27C76F5B8);
  v60 = *(v59 + 16);
  if (v60)
  {
    v61 = 0;
    v62 = v105;
    while (v61 < *(v59 + 16))
    {
      (v62)(v19, v59 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v61, v14);
      sub_20BE188B0(v19, v106, v109, v107);
      ++v61;
      v44(v19, v14);
      if (v60 == v61)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v62 = v105;
LABEL_10:

  v63 = v96;
  v64 = v97;
  v19 = v87;
  if (sub_20C13C834())
  {
    v44(v91, v14);
    v44(v63, v14);
    v65 = v64;
    goto LABEL_20;
  }

  if (sub_20C13C844())
  {
    v66 = v98;
    (v62)(v98, v64, v14);
    v67 = v62;
    v68 = v92;
    (v67)(v66 + *(v92 + 48), v63, v14);
    v69 = v94;
    sub_20B52F9E8(v66, v94, &qword_27C76F5B0);
    v70 = *(v68 + 48);
    v71 = v99;
    v72 = v85;
    v85(v99, v69, v14);
    v73 = v69 + v70;
    v74 = v89;
    v89(v73, v14);
    sub_20BE43EB8(v66, v69);
    v72(v71 + *(v93 + 36), v69 + *(v92 + 48), v14);
    v44 = v74;
    v74(v69, v14);
    v75 = v100;
    sub_20C133014();
    v76 = sub_20C133A04();
    v90(v75, v101);
    sub_20B520158(v71, &qword_27C76F5B8);
    v102 = sub_20C01C0D0(1uLL, v76);
    v80 = v79 >> 1;
    if (v78 != v79 >> 1)
    {
      v81 = v77;
      v19 = v78;
      if (v78 <= (v79 >> 1))
      {
        v82 = v79 >> 1;
      }

      else
      {
        v82 = v78;
      }

      while (v82 != v19)
      {
        v83 = v104;
        (v105)(v104, v81 + *(v108 + 72) * v19, v14);
        sub_20BE18E84(v83, v106, v109, v107);
        ++v19;
        v44(v83, v14);
        if (v80 == v19)
        {
          goto LABEL_19;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_19:
    swift_unknownObjectRelease();
    v44(v91, v14);
    v44(v96, v14);
    v65 = v97;
LABEL_20:
    v44(v65, v14);
    return (*(v103 + 8))(v95, v86);
  }

LABEL_24:
  __break(1u);

  result = (v44)(v19, v14);
  __break(1u);
  return result;
}

uint64_t sub_20BE188B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v38 = a2;
  v6 = sub_20C133A14();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133134();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C133154();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C132E94();
  v39 = *(v16 - 8);
  v40 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C133014();
  sub_20C1339D4();
  v35 = a1;
  sub_20C1339B4();
  (*(v13 + 8))(v15, v12);
  v19 = v38;
  (*(v9 + 104))(v11, *MEMORY[0x277CC9940], v8);
  v20 = sub_20C133834();
  (*(v9 + 8))(v11, v8);
  v41 = v20;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E80);
  sub_20B6D6ABC(&qword_27C772280, &qword_27C763E80);
  sub_20BE43E70(&qword_27C762288, MEMORY[0x277D51FE0]);
  v21 = sub_20C13CBF4();

  swift_beginAccess();
  if (*(*(a3 + 496) + 16) && (sub_20B65AD60(v18), (v22 & 1) != 0))
  {
    swift_endAccess();
    swift_beginAccess();
    v23 = *(a3 + 496);
    if (!*(v23 + 16) || (v24 = sub_20B65AD60(v18), (v25 & 1) == 0))
    {
      swift_endAccess();

      return (*(v39 + 8))(v18, v40);
    }

    v26 = *(*(v23 + 56) + 8 * v24);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v27 = v36;
    (*(v33 + 16))(v36, v35, v34);
    type metadata accessor for TVWorkoutPlanDetailWeeklyWorkoutsShelf();
    swift_allocObject();

    v26 = sub_20C0BA87C(v28, v27, 47);
  }

  if (v37)
  {
    v29 = v37;
  }

  else
  {
    v29 = MEMORY[0x277D84FA0];
  }

  sub_20C0B8AFC(v19, v21, v29);

  if (*(a3 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_state) != 1)
  {
    (*(v39 + 8))(v18, v40);
  }

  swift_beginAccess();

  MEMORY[0x20F2F43B0](v30);
  if (*((*(a3 + 480) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 480) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20C13CCA4();
  }

  sub_20C13CCE4();
  swift_endAccess();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(a3 + 496);
  *(a3 + 496) = 0x8000000000000000;
  sub_20B91E994(v26, v18, isUniquelyReferenced_nonNull_native);
  *(a3 + 496) = v42;
  swift_endAccess();

  return (*(v39 + 8))(v18, v40);
}

uint64_t sub_20BE18E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v38 = a2;
  v6 = sub_20C133A14();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133134();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C133154();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C132E94();
  v39 = *(v16 - 8);
  v40 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C133014();
  sub_20C1339D4();
  v35 = a1;
  sub_20C1339B4();
  (*(v13 + 8))(v15, v12);
  v19 = v38;
  (*(v9 + 104))(v11, *MEMORY[0x277CC9940], v8);
  v20 = sub_20C133834();
  (*(v9 + 8))(v11, v8);
  v41 = v20;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E80);
  sub_20B6D6ABC(&qword_27C772280, &qword_27C763E80);
  sub_20BE43E70(&qword_27C762288, MEMORY[0x277D51FE0]);
  v21 = sub_20C13CBF4();

  swift_beginAccess();
  if (*(*(a3 + 496) + 16) && (sub_20B65AD60(v18), (v22 & 1) != 0))
  {
    swift_endAccess();
    swift_beginAccess();
    v23 = *(a3 + 496);
    if (!*(v23 + 16) || (v24 = sub_20B65AD60(v18), (v25 & 1) == 0))
    {
      swift_endAccess();

      return (*(v39 + 8))(v18, v40);
    }

    v26 = *(*(v23 + 56) + 8 * v24);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v27 = v36;
    (*(v33 + 16))(v36, v35, v34);
    type metadata accessor for TVWorkoutPlanDetailWeeklyWorkoutsShelf();
    swift_allocObject();

    v26 = sub_20C0BA87C(v28, v27, 48);
  }

  if (v37)
  {
    v29 = v37;
  }

  else
  {
    v29 = MEMORY[0x277D84FA0];
  }

  sub_20C0B8AFC(v19, v21, v29);

  if (*(a3 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_state) != 1)
  {
    (*(v39 + 8))(v18, v40);
  }

  swift_beginAccess();

  MEMORY[0x20F2F43B0](v30);
  if (*((*(a3 + 488) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 488) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20C13CCA4();
  }

  sub_20C13CCE4();
  swift_endAccess();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(a3 + 496);
  *(a3 + 496) = 0x8000000000000000;
  sub_20B91E994(v26, v18, isUniquelyReferenced_nonNull_native);
  *(a3 + 496) = v42;
  swift_endAccess();

  return (*(v39 + 8))(v18, v40);
}

uint64_t sub_20BE19458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[40] = a4;
  v5 = sub_20C132EE4();
  v4[41] = v5;
  v4[42] = *(v5 - 8);
  v4[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772020);
  v4[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772000);
  v4[45] = swift_task_alloc();
  v6 = sub_20C13BB84();
  v4[46] = v6;
  v4[47] = *(v6 - 8);
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v4[51] = swift_task_alloc();
  v7 = sub_20C133954();
  v4[52] = v7;
  v4[53] = *(v7 - 8);
  v4[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BE19690, 0, 0);
}

uint64_t sub_20BE19690()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 136, (v0 + 2));

    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    v4 = swift_task_alloc();
    v0[55] = v4;
    *v4 = v0;
    v4[1] = sub_20BE198F0;
    v5 = v0[51];

    return MEMORY[0x2821ADE88](v5, v2, v3);
  }

  else
  {
    (*(v0[53] + 56))(v0[51], 1, 1, v0[52]);
    sub_20B520158(v0[51], &unk_27C76A970);
    sub_20C13B454();
    v6 = sub_20C13BB74();
    v7 = sub_20C13D1D4();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[50];
    v10 = v0[46];
    v11 = v0[47];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20B517000, v6, v7, "Couldn't find active plan.", v12, 2u);
      MEMORY[0x20F2F6A40](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_20BE198F0()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_20BE1B1C8;
  }

  else
  {
    v2 = sub_20BE19A04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BE19A04()
{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[51];
  (*(v2 + 56))(v3, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[51], &unk_27C76A970);
    sub_20C13B454();
    v4 = sub_20C13BB74();
    v5 = sub_20C13D1D4();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[50];
    v8 = v0[46];
    v9 = v0[47];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20B517000, v4, v5, "Couldn't find active plan.", v10, 2u);
      MEMORY[0x20F2F6A40](v10, -1, -1);
    }

    (*(v9 + 8))(v7, v8);
    goto LABEL_5;
  }

  (*(v0[53] + 32))(v0[54], v0[51], v0[52]);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = v0[41];
    v15 = v0[42];
    sub_20B51CC64(Strong + 136, (v0 + 7));

    v16 = v0[10];
    v17 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769650);
    v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_20C14F980;
    sub_20C133854();
    v20 = sub_20BE8D710(v19);
    v0[57] = v20;
    swift_setDeallocating();
    (*(v15 + 8))(v19 + v18, v14);
    swift_deallocClassInstance();
    v21 = swift_task_alloc();
    v0[58] = v21;
    *v21 = v0;
    v21[1] = sub_20BE1A10C;

    return MEMORY[0x2821ADEE0](v20, v16, v17);
  }

  else
  {
    v22 = v0[45];
    v23 = sub_20C137374();
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
    sub_20C13B454();
    v24 = sub_20C13BB74();
    v25 = sub_20C13D1D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20B517000, v24, v25, "Couldn't find workout template associated with active plan.", v26, 2u);
      MEMORY[0x20F2F6A40](v26, -1, -1);
    }

    v27 = v0[49];
    v28 = v0[46];
    v29 = v0[47];

    (*(v29 + 8))(v27, v28);
    swift_beginAccess();
    v30 = swift_weakLoadStrong();
    if (v30)
    {
      sub_20B51CC64(v30 + 136, (v0 + 12));

      v31 = v0[15];
      v32 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v31);
      sub_20C133804();
      v33 = swift_task_alloc();
      v0[61] = v33;
      *v33 = v0;
      v33[1] = sub_20BE1A704;
      v35 = v0[43];
      v34 = v0[44];

      return MEMORY[0x2821ADEE8](v34, v35, v31, v32);
    }

    else
    {
      v36 = v0[44];
      v37 = sub_20C1353F4();
      (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
      swift_beginAccess();
      v38 = swift_weakLoadStrong();
      if (v38)
      {
        sub_20B51CC64(v38 + 136, (v0 + 17));

        v39 = v0[20];
        v40 = v0[21];
        __swift_project_boxed_opaque_existential_1(v0 + 17, v39);
        v41 = swift_task_alloc();
        v0[62] = v41;
        *v41 = v0;
        v41[1] = sub_20BE1AB6C;

        return MEMORY[0x2821ADE90](v39, v40);
      }

      else
      {
        v0[64] = 0;
        swift_beginAccess();
        v42 = swift_weakLoadStrong();
        v0[65] = v42;
        if (!v42)
        {

          v46 = v0[53];
          v45 = v0[54];
          v47 = v0[52];
          v48 = v0[45];
          sub_20B520158(v0[44], &unk_27C772020);
          (*(v46 + 8))(v45, v47);
          sub_20B520158(v48, &unk_27C772000);
LABEL_5:

          v11 = v0[1];

          return v11();
        }

        sub_20C13CDA4();
        v0[66] = sub_20C13CD94();
        v44 = sub_20C13CD24();

        return MEMORY[0x2822009F8](sub_20BE1AE60, v44, v43);
      }
    }
  }
}

uint64_t sub_20BE1A10C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 472) = v1;

  if (v1)
  {
    v5 = sub_20BE1B440;
  }

  else
  {
    *(v4 + 480) = a1;
    v5 = sub_20BE1A258;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BE1A258()
{
  v1 = v0[45];
  sub_20BEDD734(v0[60], v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v2 = sub_20C137374();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_20C13B454();
    v3 = sub_20C13BB74();
    v4 = sub_20C13D1D4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20B517000, v3, v4, "Couldn't find workout template associated with active plan.", v5, 2u);
      MEMORY[0x20F2F6A40](v5, -1, -1);
    }

    v6 = v0[49];
    v7 = v0[46];
    v8 = v0[47];

    (*(v8 + 8))(v6, v7);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 136, (v0 + 12));

    v10 = v0[15];
    v11 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v10);
    sub_20C133804();
    v12 = swift_task_alloc();
    v0[61] = v12;
    *v12 = v0;
    v12[1] = sub_20BE1A704;
    v14 = v0[43];
    v13 = v0[44];

    return MEMORY[0x2821ADEE8](v13, v14, v10, v11);
  }

  else
  {
    v15 = v0[44];
    v16 = sub_20C1353F4();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    swift_beginAccess();
    v17 = swift_weakLoadStrong();
    if (v17)
    {
      sub_20B51CC64(v17 + 136, (v0 + 17));

      v18 = v0[20];
      v19 = v0[21];
      __swift_project_boxed_opaque_existential_1(v0 + 17, v18);
      v20 = swift_task_alloc();
      v0[62] = v20;
      *v20 = v0;
      v20[1] = sub_20BE1AB6C;

      return MEMORY[0x2821ADE90](v18, v19);
    }

    else
    {
      v0[64] = 0;
      swift_beginAccess();
      v21 = swift_weakLoadStrong();
      v0[65] = v21;
      if (v21)
      {
        sub_20C13CDA4();
        v0[66] = sub_20C13CD94();
        v23 = sub_20C13CD24();

        return MEMORY[0x2822009F8](sub_20BE1AE60, v23, v22);
      }

      else
      {

        v25 = v0[53];
        v24 = v0[54];
        v26 = v0[52];
        v27 = v0[45];
        sub_20B520158(v0[44], &unk_27C772020);
        (*(v25 + 8))(v24, v26);
        sub_20B520158(v27, &unk_27C772000);

        v28 = v0[1];

        return v28();
      }
    }
  }
}

uint64_t sub_20BE1A704()
{
  v2 = *v1;

  v3 = v2[43];
  v4 = v2[42];
  v5 = v2[41];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_20BE1B6D0;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_20BE1A89C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20BE1A89C()
{
  v1 = v0[44];
  v2 = sub_20C1353F4();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 136, (v0 + 17));

    v4 = v0[20];
    v5 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v4);
    v6 = swift_task_alloc();
    v0[62] = v6;
    *v6 = v0;
    v6[1] = sub_20BE1AB6C;

    return MEMORY[0x2821ADE90](v4, v5);
  }

  else
  {
    v0[64] = 0;
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    v0[65] = v7;
    if (v7)
    {
      sub_20C13CDA4();
      v0[66] = sub_20C13CD94();
      v9 = sub_20C13CD24();

      return MEMORY[0x2822009F8](sub_20BE1AE60, v9, v8);
    }

    else
    {

      v11 = v0[53];
      v10 = v0[54];
      v12 = v0[52];
      v13 = v0[45];
      sub_20B520158(v0[44], &unk_27C772020);
      (*(v11 + 8))(v10, v12);
      sub_20B520158(v13, &unk_27C772000);

      v14 = v0[1];

      return v14();
    }
  }
}

uint64_t sub_20BE1AB6C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_20BE1B9A0;
  }

  else
  {
    *(v4 + 504) = a1;
    v5 = sub_20BE1AC98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BE1AC98()
{
  v1 = v0[63];
  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  v0[64] = v1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[65] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[66] = sub_20C13CD94();
    v4 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BE1AE60, v4, v3);
  }

  else
  {

    v6 = v0[53];
    v5 = v0[54];
    v7 = v0[52];
    v8 = v0[45];
    sub_20B520158(v0[44], &unk_27C772020);
    (*(v6 + 8))(v5, v7);
    sub_20B520158(v8, &unk_27C772000);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_20BE1AE60()
{
  v1 = v0[64];
  v2 = v0[54];
  v4 = v0[44];
  v3 = v0[45];

  sub_20BE163CC(v2, v3, v4, v1);

  return MEMORY[0x2822009F8](sub_20BE1AF0C, 0, 0);
}

uint64_t sub_20BE1AF0C()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  v4 = v0[45];
  sub_20B520158(v0[44], &unk_27C772020);
  (*(v2 + 8))(v1, v3);
  sub_20B520158(v4, &unk_27C772000);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20BE1B01C()
{
  v1 = *(v0 + 544);

  v2 = *(v1 + 504);
  v3 = &v2[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 248);
    v6 = v2;
    v5();
    swift_unknownObjectRelease();
  }

  return MEMORY[0x2822009F8](sub_20BE1B100, 0, 0);
}

uint64_t sub_20BE1B100()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BE1B1C8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[56];
  v0[67] = v1;
  sub_20C13B454();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed fetching workout plan data with error: %@", v5, 0xCu);
    sub_20B520158(v6, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v6, -1, -1);
    MEMORY[0x20F2F6A40](v5, -1, -1);
  }

  v10 = v0[47];
  v9 = v0[48];
  v11 = v0[46];

  (*(v10 + 8))(v9, v11);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[68] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[69] = sub_20C13CD94();
    v14 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BE1B01C, v14, v13);
  }

  else
  {

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_20BE1B440()
{
  (*(v0[53] + 8))(v0[54], v0[52]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v1 = v0[59];
  v0[67] = v1;
  sub_20C13B454();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed fetching workout plan data with error: %@", v5, 0xCu);
    sub_20B520158(v6, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v6, -1, -1);
    MEMORY[0x20F2F6A40](v5, -1, -1);
  }

  v10 = v0[47];
  v9 = v0[48];
  v11 = v0[46];

  (*(v10 + 8))(v9, v11);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[68] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[69] = sub_20C13CD94();
    v14 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BE1B01C, v14, v13);
  }

  else
  {

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_20BE1B6D0()
{
  v1 = v0[44];
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  v2 = sub_20C1353F4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 136, (v0 + 17));

    v4 = v0[20];
    v5 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v4);
    v6 = swift_task_alloc();
    v0[62] = v6;
    *v6 = v0;
    v6[1] = sub_20BE1AB6C;

    return MEMORY[0x2821ADE90](v4, v5);
  }

  else
  {
    v0[64] = 0;
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    v0[65] = v7;
    if (v7)
    {
      sub_20C13CDA4();
      v0[66] = sub_20C13CD94();
      v9 = sub_20C13CD24();

      return MEMORY[0x2822009F8](sub_20BE1AE60, v9, v8);
    }

    else
    {

      v11 = v0[53];
      v10 = v0[54];
      v12 = v0[52];
      v13 = v0[45];
      sub_20B520158(v0[44], &unk_27C772020);
      (*(v11 + 8))(v10, v12);
      sub_20B520158(v13, &unk_27C772000);

      v14 = v0[1];

      return v14();
    }
  }
}

uint64_t sub_20BE1B9A0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  v0[64] = 0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[65] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[66] = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BE1AE60, v3, v2);
  }

  else
  {

    v5 = v0[53];
    v4 = v0[54];
    v6 = v0[52];
    v7 = v0[45];
    sub_20B520158(v0[44], &unk_27C772020);
    (*(v5 + 8))(v4, v6);
    sub_20B520158(v7, &unk_27C772000);

    v8 = v0[1];

    return v8();
  }
}

unint64_t sub_20BE1BB60(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WorkoutPlanSwappableItem();
  v5 = *(v4 - 8);
  v72 = v4;
  v73 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v74 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  v10 = sub_20C136104();
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x28223BE20](v10);
  v69 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F5A8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v59 - v13;
  v15 = sub_20C137294();
  v76 = *(v15 - 8);
  v77 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772270);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  v22 = sub_20C135C54();
  v78 = *(v22 - 8);
  v79 = v22;
  MEMORY[0x28223BE20](v22);
  v80 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  v24 = sub_20C133FE4();
  if (v25)
  {
    return MEMORY[0x277D84F90];
  }

  v66 = v24;
  v67 = v2;
  v68 = v9;
  v26 = *(*(v2 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);

  result = sub_20C133234();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (result >= *(v26 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = *(v26 + 16 * result + 32);
  swift_unknownObjectRetain();

  type metadata accessor for TVWorkoutPlanDetailNextWorkoutsShelf();
  v29 = swift_dynamicCastClass();
  if (v29 && (v30 = *(v29 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_nextScheduledWorkouts)) != 0)
  {
    v65 = v29;

    if (sub_20C133204() < *(v30 + 16))
    {
      result = sub_20C133204();
      if ((result & 0x8000000000000000) == 0)
      {
        v64 = v28;
        if (result < *(v30 + 16))
        {
          sub_20B52F9E8(v30 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * result, v21, &unk_27C772270);

          v32 = v78;
          v31 = v79;
          (*(v78 + 32))(v80, v21, v79);
          v60 = sub_20C133E44();
          v61 = v33;
          v34 = sub_20C133FF4();
          v63 = v35;
          LODWORD(v75) = v36;
          v37 = *(v65 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_workoutPlanReferenceMetrics);
          MEMORY[0x28223BE20](v34);
          swift_unknownObjectRetain();

          v62 = v37;
          sub_20B6B7808(sub_20BE42E9C, v37, v14);
          v38 = v76;
          v39 = v77;
          if ((*(v76 + 48))(v14, 1, v77) == 1)
          {
            sub_20B520158(v14, &qword_27C76F5A8);
            v40 = v68;
LABEL_17:
            (*(v32 + 16))(v40 + *(v72 + 28), v80, v31);
            v44 = v60;
            *v40 = v66;
            *(v40 + 8) = v44;
            *(v40 + 16) = v61;
            *(v40 + 24) = v34;
            v45 = v34;
            v59 = v34;
            v46 = v63;
            *(v40 + 32) = v63;
            v47 = v75;
            *(v40 + 40) = v75;

            sub_20B760050(v45, v46, v47);
            sub_20BE1C408();
            v77 = v48;
            sub_20B51C88C(0, &qword_27C7713A0);
            v49 = sub_20C13C914();
            v50 = [objc_opt_self() systemImageNamed_];

            v51 = swift_allocObject();
            swift_weakInit();
            v52 = v74;
            sub_20B633138(v40, v74);
            v53 = v32;
            v54 = (*(v73 + 80) + 40) & ~*(v73 + 80);
            v55 = swift_allocObject();
            v56 = v65;
            v55[2] = v51;
            v55[3] = v56;
            v55[4] = &off_2822A3E08;
            sub_20BE43808(v52, v55 + v54, type metadata accessor for WorkoutPlanSwappableItem);
            swift_unknownObjectRetain();
            v57 = sub_20C13D624();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
            v58 = swift_allocObject();
            *(v58 + 16) = xmmword_20C14F580;
            *(v58 + 32) = v57;
            sub_20BE42F34(v40, type metadata accessor for WorkoutPlanSwappableItem);

            sub_20B584078(v59, v63, v75);
            swift_unknownObjectRelease_n();

            (*(v53 + 8))(v80, v79);
            return v58;
          }

          (*(v38 + 32))(v17, v14, v39);
          v41 = v69;
          v42 = v38;
          sub_20C137264();
          v43 = sub_20C1360F4();
          (*(v70 + 8))(v41, v71);
          (*(v42 + 8))(v17, v39);
          v40 = v68;
          if ((v43 & 1) == 0)
          {
            goto LABEL_17;
          }

          sub_20B584078(v34, v63, v75);
          swift_unknownObjectRelease_n();

          (*(v32 + 8))(v80, v31);
          return MEMORY[0x277D84F90];
        }

LABEL_21:
        __break(1u);
        return result;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_20BE1C4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47 - v12;
  v14 = sub_20C133954();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    return sub_20B520158(v13, &unk_27C76A970);
  }

  v48 = a4;
  v49 = v17;
  v19 = OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_workoutPlan;
  v20 = Strong;
  swift_beginAccess();
  sub_20B52F9E8(v20 + v19, v13, &unk_27C76A970);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_20B520158(v13, &unk_27C76A970);
  }

  v21 = v49;
  (*(v15 + 32))(v49, v13, v14);
  swift_beginAccess();
  v22 = swift_weakLoadStrong();
  if (!v22)
  {
    return (*(v15 + 8))(v21, v14);
  }

  v23 = *(v22 + 504);

  v24 = sub_20C136664();
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  v25 = v8[5];
  v26 = *MEMORY[0x277D513D8];
  v27 = sub_20C134F24();
  (*(*(v27 - 8) + 104))(&v10[v25], v26, v27);
  v28 = v8[6];
  v29 = sub_20C132C14();
  (*(*(v29 - 8) + 56))(&v10[v28], 1, 1, v29);
  v30 = *(a5 + 16);
  v47 = *(a5 + 8);
  v31 = v8[8];
  v32 = sub_20C135ED4();
  (*(*(v32 - 8) + 56))(&v10[v31], 1, 1, v32);
  v33 = v8[10];
  v34 = *MEMORY[0x277D51768];
  v35 = sub_20C1352E4();
  (*(*(v35 - 8) + 104))(&v10[v33], v34, v35);
  v36 = v8[11];
  v37 = sub_20C136E94();
  (*(*(v37 - 8) + 56))(&v10[v36], 1, 1, v37);

  v38 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v39 = &v10[v8[7]];
  *v39 = v47;
  *(v39 + 1) = v30;
  v40 = &v10[v8[9]];
  *v40 = 0;
  *(v40 + 1) = 0;
  *&v10[v8[12]] = v38;
  ObjectType = swift_getObjectType();
  sub_20BB90F28(a3, v10, v23, ObjectType, v48);
  v42 = &v23[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v43 = *(v42 + 1);
    v44 = swift_getObjectType();
    v45 = v49;
    (*(v43 + 272))(v23, a5, v49, 0, v44, v43);

    swift_unknownObjectRelease();
  }

  else
  {

    v45 = v49;
  }

  sub_20BE42F34(v10, type metadata accessor for ShelfMetricAction);
  return (*(v15 + 8))(v45, v14);
}

uint64_t sub_20BE1C9E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C135C54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C137284();
  v7 = MEMORY[0x20F2ED390](v6, a2);
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

uint64_t sub_20BE1CAD0()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);

  swift_unknownObjectRelease();
  sub_20B58CFB0(*(v0 + 72), *(v0 + 80));

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  __swift_destroy_boxed_opaque_existential_1(v0 + 184);
  __swift_destroy_boxed_opaque_existential_1(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1(v0 + 264);
  __swift_destroy_boxed_opaque_existential_1(v0 + 304);
  __swift_destroy_boxed_opaque_existential_1(v0 + 344);
  __swift_destroy_boxed_opaque_existential_1(v0 + 384);
  __swift_destroy_boxed_opaque_existential_1(v0 + 424);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_workoutPlan, &unk_27C76A970);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_workoutPlanSummary, &unk_27C772020);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_configuration, &qword_27C761800);
  return v0;
}

uint64_t sub_20BE1CC48()
{
  sub_20BE1CAD0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVWorkoutPlanDetailPageDataProvider()
{
  result = qword_27C76F588;
  if (!qword_27C76F588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE1CCF4()
{
  sub_20BE1CED8(319, &qword_27C7629F8, MEMORY[0x277D50180]);
  if (v0 <= 0x3F)
  {
    sub_20BE1CED8(319, &qword_27C76F598, MEMORY[0x277D518F8]);
    if (v1 <= 0x3F)
    {
      sub_20BE1CED8(319, &qword_281103BF0, MEMORY[0x277D50560]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20BE1CED8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_20BE1CF40()
{
  result = qword_27C76F5A0;
  if (!qword_27C76F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76F5A0);
  }

  return result;
}

uint64_t sub_20BE1CF94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v9 - 8);
  v45 = &v41 - v10;
  v11 = sub_20C132E94();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C135214();
  v43 = *(v14 - 8);
  v44 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - v18;
  v20 = sub_20C133954();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v24, v19, &unk_27C76A970);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_20B520158(v19, &unk_27C76A970);
    v25 = sub_20C1352F4();
    (*(*(v25 - 8) + 56))(v45, 1, 1, v25);
    v26 = *(v2 + 72);
    v27 = *(v2 + 80);
    v28 = sub_20C132C14();
    (*(*(v28 - 8) + 56))(v46, 1, 1, v28);
    v29 = sub_20C135ED4();
    (*(*(v29 - 8) + 56))(v47, 1, 1, v29);
    v30 = sub_20C136914();
    (*(*(v30 - 8) + 56))(v48, 1, 1, v30);
    sub_20B58C2C8(v26, v27);
    return sub_20C133384();
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    sub_20C132E64();
    sub_20C1338C4();
    (*(v41 + 8))(v13, v42);
    v32 = sub_20C133874();
    v41 = v33;
    v42 = v32;
    v34 = v45;
    sub_20C133864();
    v35 = sub_20C1352F4();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    v37 = *(v2 + 72);
    v36 = *(v2 + 80);
    v38 = sub_20C132C14();
    (*(*(v38 - 8) + 56))(v46, 1, 1, v38);
    v39 = sub_20C135ED4();
    (*(*(v39 - 8) + 56))(v47, 1, 1, v39);
    v40 = sub_20C136914();
    (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
    sub_20B58C2C8(v37, v36);
    sub_20C133384();
    (*(v43 + 8))(v16, v44);
    return (*(v21 + 8))(v23, v20);
  }
}

uint64_t sub_20BE1D7DC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_configuration;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C761800);
}

uint64_t sub_20BE1D844()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80);
  v136 = *(v2 - 8);
  v137 = v2;
  v135 = *(v136 + 64);
  MEMORY[0x28223BE20](v2);
  v134 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v129 = *(v6 - 8);
  v130 = v6;
  v128 = *(v129 + 64);
  MEMORY[0x28223BE20](v6);
  v125 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v124 = &v108 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v121 = *(v122 - 8);
  v120 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v108 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170);
  v116 = *(v117 - 8);
  v115 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v108 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v111 = *(v112 - 8);
  v110 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v108 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v126 = *(v131 - 8);
  v127 = v131 - 8;
  v138 = v126;
  MEMORY[0x28223BE20](v131 - 8);
  v133 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = &v108 - v30;
  MEMORY[0x28223BE20](v31);
  v143 = &v108 - v32;
  MEMORY[0x28223BE20](v33);
  v142 = &v108 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v108 - v36;
  MEMORY[0x28223BE20](v37);
  v140 = &v108 - v38;
  __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
  sub_20C139BA4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BE44398;
  *(v39 + 24) = v1;
  (*(v20 + 16))(v22, v25, v19);
  v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v41 = swift_allocObject();
  (*(v20 + 32))(v41 + v40, v22, v19);
  v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_20BE447B4;
  v42[1] = v39;

  sub_20C137C94();
  (*(v20 + 8))(v25, v19);
  __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);
  v43 = v108;
  sub_20C13A204();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_20BE443B8;
  *(v44 + 24) = v1;
  v45 = v111;
  v46 = v109;
  v47 = v112;
  (*(v111 + 16))(v109, v43, v112);
  v48 = v45;
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v50 = (v110 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v48 + 32))(v51 + v49, v46, v47);
  v52 = (v51 + v50);
  *v52 = sub_20BE447B8;
  v52[1] = v44;

  sub_20C137C94();
  (*(v48 + 8))(v43, v47);
  __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);
  v53 = v113;
  sub_20C13A214();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20BE443DC;
  *(v54 + 24) = v1;
  v55 = v116;
  v56 = v114;
  v57 = v117;
  (*(v116 + 16))(v114, v53, v117);
  v58 = v55;
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v115 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v56, v57);
  v62 = (v61 + v60);
  *v62 = sub_20BE447BC;
  v62[1] = v54;

  sub_20C137C94();
  (*(v58 + 8))(v53, v57);
  __swift_project_boxed_opaque_existential_1(v1 + 46, v1[49]);
  v63 = v118;
  sub_20C139724();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_20BE443FC;
  *(v64 + 24) = v1;
  v65 = v121;
  v66 = v119;
  v67 = v122;
  (*(v121 + 16))(v119, v63, v122);
  v68 = v65;
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v120 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v68 + 32))(v71 + v69, v66, v67);
  v72 = (v71 + v70);
  *v72 = sub_20BE447C0;
  v72[1] = v64;

  sub_20C137C94();
  (*(v68 + 8))(v63, v67);
  __swift_project_boxed_opaque_existential_1(v1 + 24, v1[27]);
  v73 = v124;
  sub_20C1398E4();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_20BE4445C;
  *(v74 + 24) = v1;
  v75 = v129;
  v76 = v130;
  v77 = v125;
  (*(v129 + 16))(v125, v73, v130);
  v78 = v75;
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v80 = (v128 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (*(v78 + 32))(v81 + v79, v77, v76);
  v82 = (v81 + v80);
  *v82 = sub_20B5DF4C4;
  v82[1] = v74;

  sub_20C137C94();
  (*(v78 + 8))(v73, v76);
  __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  v83 = v132;
  sub_20C139E44();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_20BE44480;
  *(v84 + 24) = v1;
  v85 = v136;
  v86 = v137;
  v87 = v134;
  (*(v136 + 16))(v134, v83, v137);
  v88 = v85;
  v89 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v90 = (v135 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v88 + 32))(v91 + v89, v87, v86);
  v92 = (v91 + v90);
  *v92 = sub_20BE447C4;
  v92[1] = v84;

  v93 = v123;
  sub_20C137C94();
  (*(v88 + 8))(v83, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v94 = *(v126 + 72);
  v95 = v138;
  v96 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_20C150DB0;
  v98 = v97 + v96;
  v99 = *(v95 + 16);
  v100 = v131;
  v99(v98, v140, v131);
  v99(v98 + v94, v141, v100);
  v99(v98 + 2 * v94, v142, v100);
  v99(v98 + 3 * v94, v143, v100);
  v101 = v139;
  v99(v98 + 4 * v94, v139, v100);
  v99(v98 + 5 * v94, v93, v100);
  v144 = v97;
  sub_20B51C88C(0, &qword_281100530);
  v102 = sub_20C13D374();
  sub_20C13A7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798);
  sub_20B6D6ABC(&qword_27C771DC0, &qword_27C76B798);
  v103 = v133;
  sub_20C137C84();

  v104 = sub_20C137CB4();
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *(v105 + 24) = 0;
  v104(sub_20B5DF6DC, v105);

  v106 = *(v138 + 8);
  v106(v103, v100);
  v106(v93, v100);
  v106(v101, v100);
  v106(v143, v100);
  v106(v142, v100);
  v106(v141, v100);
  return (v106)(v140, v100);
}

uint64_t sub_20BE1E83C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80);
  v136 = *(v2 - 8);
  v137 = v2;
  v135 = *(v136 + 64);
  MEMORY[0x28223BE20](v2);
  v134 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v129 = *(v6 - 8);
  v130 = v6;
  v128 = *(v129 + 64);
  MEMORY[0x28223BE20](v6);
  v125 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v124 = &v108 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v121 = *(v122 - 8);
  v120 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v108 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170);
  v116 = *(v117 - 8);
  v115 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v108 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v111 = *(v112 - 8);
  v110 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v108 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v126 = *(v131 - 8);
  v127 = v131 - 8;
  v138 = v126;
  MEMORY[0x28223BE20](v131 - 8);
  v133 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = &v108 - v30;
  MEMORY[0x28223BE20](v31);
  v143 = &v108 - v32;
  MEMORY[0x28223BE20](v33);
  v142 = &v108 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v108 - v36;
  MEMORY[0x28223BE20](v37);
  v140 = &v108 - v38;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C139BA4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BE41B04;
  *(v39 + 24) = v1;
  (*(v20 + 16))(v22, v25, v19);
  v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v41 = swift_allocObject();
  (*(v20 + 32))(v41 + v40, v22, v19);
  v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_20BE447B4;
  v42[1] = v39;

  sub_20C137C94();
  (*(v20 + 8))(v25, v19);
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  v43 = v108;
  sub_20C13A204();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_20BE41B24;
  *(v44 + 24) = v1;
  v45 = v111;
  v46 = v109;
  v47 = v112;
  (*(v111 + 16))(v109, v43, v112);
  v48 = v45;
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v50 = (v110 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v48 + 32))(v51 + v49, v46, v47);
  v52 = (v51 + v50);
  *v52 = sub_20BE447B8;
  v52[1] = v44;

  sub_20C137C94();
  (*(v48 + 8))(v43, v47);
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  v53 = v113;
  sub_20C13A214();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20BE41B48;
  *(v54 + 24) = v1;
  v55 = v116;
  v56 = v114;
  v57 = v117;
  (*(v116 + 16))(v114, v53, v117);
  v58 = v55;
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v115 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v56, v57);
  v62 = (v61 + v60);
  *v62 = sub_20BE447BC;
  v62[1] = v54;

  sub_20C137C94();
  (*(v58 + 8))(v53, v57);
  __swift_project_boxed_opaque_existential_1(v1 + 46, v1[49]);
  v63 = v118;
  sub_20C139724();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_20BE41B68;
  *(v64 + 24) = v1;
  v65 = v121;
  v66 = v119;
  v67 = v122;
  (*(v121 + 16))(v119, v63, v122);
  v68 = v65;
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v120 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v68 + 32))(v71 + v69, v66, v67);
  v72 = (v71 + v70);
  *v72 = sub_20BE447C0;
  v72[1] = v64;

  sub_20C137C94();
  (*(v68 + 8))(v63, v67);
  __swift_project_boxed_opaque_existential_1(v1 + 22, v1[25]);
  v73 = v124;
  sub_20C1398E4();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_20BE41B88;
  *(v74 + 24) = v1;
  v75 = v129;
  v76 = v130;
  v77 = v125;
  (*(v129 + 16))(v125, v73, v130);
  v78 = v75;
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v80 = (v128 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (*(v78 + 32))(v81 + v79, v77, v76);
  v82 = (v81 + v80);
  *v82 = sub_20B5DF4C4;
  v82[1] = v74;

  sub_20C137C94();
  (*(v78 + 8))(v73, v76);
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v83 = v132;
  sub_20C139E44();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_20BE41BAC;
  *(v84 + 24) = v1;
  v85 = v136;
  v86 = v137;
  v87 = v134;
  (*(v136 + 16))(v134, v83, v137);
  v88 = v85;
  v89 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v90 = (v135 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v88 + 32))(v91 + v89, v87, v86);
  v92 = (v91 + v90);
  *v92 = sub_20BE447C4;
  v92[1] = v84;

  v93 = v123;
  sub_20C137C94();
  (*(v88 + 8))(v83, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v94 = *(v126 + 72);
  v95 = v138;
  v96 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_20C150DB0;
  v98 = v97 + v96;
  v99 = *(v95 + 16);
  v100 = v131;
  v99(v98, v140, v131);
  v99(v98 + v94, v141, v100);
  v99(v98 + 2 * v94, v142, v100);
  v99(v98 + 3 * v94, v143, v100);
  v101 = v139;
  v99(v98 + 4 * v94, v139, v100);
  v99(v98 + 5 * v94, v93, v100);
  v144 = v97;
  sub_20B51C88C(0, &qword_281100530);
  v102 = sub_20C13D374();
  sub_20C13A7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798);
  sub_20B6D6ABC(&qword_27C771DC0, &qword_27C76B798);
  v103 = v133;
  sub_20C137C84();

  v104 = sub_20C137CB4();
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *(v105 + 24) = 0;
  v104(sub_20B5DF6DC, v105);

  v106 = *(v138 + 8);
  v106(v103, v100);
  v106(v93, v100);
  v106(v101, v100);
  v106(v143, v100);
  v106(v142, v100);
  v106(v141, v100);
  return (v106)(v140, v100);
}

uint64_t sub_20BE1F834()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80);
  v136 = *(v2 - 8);
  v137 = v2;
  v135 = *(v136 + 64);
  MEMORY[0x28223BE20](v2);
  v134 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v129 = *(v6 - 8);
  v130 = v6;
  v128 = *(v129 + 64);
  MEMORY[0x28223BE20](v6);
  v125 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v124 = &v108 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v121 = *(v122 - 8);
  v120 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v108 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170);
  v116 = *(v117 - 8);
  v115 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v108 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v111 = *(v112 - 8);
  v110 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v108 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v126 = *(v131 - 8);
  v127 = v131 - 8;
  v138 = v126;
  MEMORY[0x28223BE20](v131 - 8);
  v133 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = &v108 - v30;
  MEMORY[0x28223BE20](v31);
  v143 = &v108 - v32;
  MEMORY[0x28223BE20](v33);
  v142 = &v108 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v108 - v36;
  MEMORY[0x28223BE20](v37);
  v140 = &v108 - v38;
  __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
  sub_20C139BA4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BE447FC;
  *(v39 + 24) = v1;
  (*(v20 + 16))(v22, v25, v19);
  v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v41 = swift_allocObject();
  (*(v20 + 32))(v41 + v40, v22, v19);
  v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_20BE447B4;
  v42[1] = v39;

  sub_20C137C94();
  (*(v20 + 8))(v25, v19);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v43 = v108;
  sub_20C13A204();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_20BE44814;
  *(v44 + 24) = v1;
  v45 = v111;
  v46 = v109;
  v47 = v112;
  (*(v111 + 16))(v109, v43, v112);
  v48 = v45;
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v50 = (v110 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v48 + 32))(v51 + v49, v46, v47);
  v52 = (v51 + v50);
  *v52 = sub_20BE447B8;
  v52[1] = v44;

  sub_20C137C94();
  (*(v48 + 8))(v43, v47);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v53 = v113;
  sub_20C13A214();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20BE4482C;
  *(v54 + 24) = v1;
  v55 = v116;
  v56 = v114;
  v57 = v117;
  (*(v116 + 16))(v114, v53, v117);
  v58 = v55;
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v115 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v56, v57);
  v62 = (v61 + v60);
  *v62 = sub_20BE447BC;
  v62[1] = v54;

  sub_20C137C94();
  (*(v58 + 8))(v53, v57);
  __swift_project_boxed_opaque_existential_1(v1 + 45, v1[48]);
  v63 = v118;
  sub_20C139724();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_20BE44844;
  *(v64 + 24) = v1;
  v65 = v121;
  v66 = v119;
  v67 = v122;
  (*(v121 + 16))(v119, v63, v122);
  v68 = v65;
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v120 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v68 + 32))(v71 + v69, v66, v67);
  v72 = (v71 + v70);
  *v72 = sub_20BE447C0;
  v72[1] = v64;

  sub_20C137C94();
  (*(v68 + 8))(v63, v67);
  __swift_project_boxed_opaque_existential_1(v1 + 26, v1[29]);
  v73 = v124;
  sub_20C1398E4();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_20BE42A94;
  *(v74 + 24) = v1;
  v75 = v129;
  v76 = v130;
  v77 = v125;
  (*(v129 + 16))(v125, v73, v130);
  v78 = v75;
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v80 = (v128 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (*(v78 + 32))(v81 + v79, v77, v76);
  v82 = (v81 + v80);
  *v82 = sub_20B5DF4C4;
  v82[1] = v74;

  sub_20C137C94();
  (*(v78 + 8))(v73, v76);
  __swift_project_boxed_opaque_existential_1(v1 + 11, v1[14]);
  v83 = v132;
  sub_20C139E44();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_20BE4485C;
  *(v84 + 24) = v1;
  v85 = v136;
  v86 = v137;
  v87 = v134;
  (*(v136 + 16))(v134, v83, v137);
  v88 = v85;
  v89 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v90 = (v135 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v88 + 32))(v91 + v89, v87, v86);
  v92 = (v91 + v90);
  *v92 = sub_20BE447C4;
  v92[1] = v84;

  v93 = v123;
  sub_20C137C94();
  (*(v88 + 8))(v83, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v94 = *(v126 + 72);
  v95 = v138;
  v96 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_20C150DB0;
  v98 = v97 + v96;
  v99 = *(v95 + 16);
  v100 = v131;
  v99(v98, v140, v131);
  v99(v98 + v94, v141, v100);
  v99(v98 + 2 * v94, v142, v100);
  v99(v98 + 3 * v94, v143, v100);
  v101 = v139;
  v99(v98 + 4 * v94, v139, v100);
  v99(v98 + 5 * v94, v93, v100);
  v144 = v97;
  sub_20B51C88C(0, &qword_281100530);
  v102 = sub_20C13D374();
  sub_20C13A7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798);
  sub_20B6D6ABC(&qword_27C771DC0, &qword_27C76B798);
  v103 = v133;
  sub_20C137C84();

  v104 = sub_20C137CB4();
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *(v105 + 24) = 0;
  v104(sub_20B5DF6DC, v105);

  v106 = *(v138 + 8);
  v106(v103, v100);
  v106(v93, v100);
  v106(v101, v100);
  v106(v143, v100);
  v106(v142, v100);
  v106(v141, v100);
  return (v106)(v140, v100);
}

uint64_t sub_20BE2082C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80);
  v136 = *(v2 - 8);
  v137 = v2;
  v135 = *(v136 + 64);
  MEMORY[0x28223BE20](v2);
  v134 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v129 = *(v6 - 8);
  v130 = v6;
  v128 = *(v129 + 64);
  MEMORY[0x28223BE20](v6);
  v125 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v124 = &v108 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v121 = *(v122 - 8);
  v120 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v108 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170);
  v116 = *(v117 - 8);
  v115 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v108 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v111 = *(v112 - 8);
  v110 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v108 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v126 = *(v131 - 8);
  v127 = v131 - 8;
  v138 = v126;
  MEMORY[0x28223BE20](v131 - 8);
  v133 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = &v108 - v30;
  MEMORY[0x28223BE20](v31);
  v143 = &v108 - v32;
  MEMORY[0x28223BE20](v33);
  v142 = &v108 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v108 - v36;
  MEMORY[0x28223BE20](v37);
  v140 = &v108 - v38;
  __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
  sub_20C139BA4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BE43BA4;
  *(v39 + 24) = v1;
  (*(v20 + 16))(v22, v25, v19);
  v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v41 = swift_allocObject();
  (*(v20 + 32))(v41 + v40, v22, v19);
  v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_20BE447B4;
  v42[1] = v39;

  sub_20C137C94();
  (*(v20 + 8))(v25, v19);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v43 = v108;
  sub_20C13A204();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_20BE43BC4;
  *(v44 + 24) = v1;
  v45 = v111;
  v46 = v109;
  v47 = v112;
  (*(v111 + 16))(v109, v43, v112);
  v48 = v45;
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v50 = (v110 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v48 + 32))(v51 + v49, v46, v47);
  v52 = (v51 + v50);
  *v52 = sub_20BE447B8;
  v52[1] = v44;

  sub_20C137C94();
  (*(v48 + 8))(v43, v47);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v53 = v113;
  sub_20C13A214();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20BE43BE8;
  *(v54 + 24) = v1;
  v55 = v116;
  v56 = v114;
  v57 = v117;
  (*(v116 + 16))(v114, v53, v117);
  v58 = v55;
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v115 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v56, v57);
  v62 = (v61 + v60);
  *v62 = sub_20BE447BC;
  v62[1] = v54;

  sub_20C137C94();
  (*(v58 + 8))(v53, v57);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_upNextQueueClient), *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_upNextQueueClient + 24));
  v63 = v118;
  sub_20C139724();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_20BE43C08;
  *(v64 + 24) = v1;
  v65 = v121;
  v66 = v119;
  v67 = v122;
  (*(v121 + 16))(v119, v63, v122);
  v68 = v65;
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v120 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v68 + 32))(v71 + v69, v66, v67);
  v72 = (v71 + v70);
  *v72 = sub_20BE447C0;
  v72[1] = v64;

  sub_20C137C94();
  (*(v68 + 8))(v63, v67);
  __swift_project_boxed_opaque_existential_1(v1 + 26, v1[29]);
  v73 = v124;
  sub_20C1398E4();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_20BE43C28;
  *(v74 + 24) = v1;
  v75 = v129;
  v76 = v130;
  v77 = v125;
  (*(v129 + 16))(v125, v73, v130);
  v78 = v75;
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v80 = (v128 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (*(v78 + 32))(v81 + v79, v77, v76);
  v82 = (v81 + v80);
  *v82 = sub_20B5DF4C4;
  v82[1] = v74;

  sub_20C137C94();
  (*(v78 + 8))(v73, v76);
  __swift_project_boxed_opaque_existential_1(v1 + 11, v1[14]);
  v83 = v132;
  sub_20C139E44();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_20BE43C4C;
  *(v84 + 24) = v1;
  v85 = v136;
  v86 = v137;
  v87 = v134;
  (*(v136 + 16))(v134, v83, v137);
  v88 = v85;
  v89 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v90 = (v135 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v88 + 32))(v91 + v89, v87, v86);
  v92 = (v91 + v90);
  *v92 = sub_20BE447C4;
  v92[1] = v84;

  v93 = v123;
  sub_20C137C94();
  (*(v88 + 8))(v83, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v94 = *(v126 + 72);
  v95 = v138;
  v96 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_20C150DB0;
  v98 = v97 + v96;
  v99 = *(v95 + 16);
  v100 = v131;
  v99(v98, v140, v131);
  v99(v98 + v94, v141, v100);
  v99(v98 + 2 * v94, v142, v100);
  v99(v98 + 3 * v94, v143, v100);
  v101 = v139;
  v99(v98 + 4 * v94, v139, v100);
  v99(v98 + 5 * v94, v93, v100);
  v144 = v97;
  sub_20B51C88C(0, &qword_281100530);
  v102 = sub_20C13D374();
  sub_20C13A7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798);
  sub_20B6D6ABC(&qword_27C771DC0, &qword_27C76B798);
  v103 = v133;
  sub_20C137C84();

  v104 = sub_20C137CB4();
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *(v105 + 24) = 0;
  v104(sub_20B5DF6DC, v105);

  v106 = *(v138 + 8);
  v106(v103, v100);
  v106(v93, v100);
  v106(v101, v100);
  v106(v143, v100);
  v106(v142, v100);
  v106(v141, v100);
  return (v106)(v140, v100);
}

uint64_t sub_20BE21830()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80);
  v136 = *(v2 - 8);
  v137 = v2;
  v135 = *(v136 + 64);
  MEMORY[0x28223BE20](v2);
  v134 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v129 = *(v6 - 8);
  v130 = v6;
  v128 = *(v129 + 64);
  MEMORY[0x28223BE20](v6);
  v125 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v124 = &v108 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v121 = *(v122 - 8);
  v120 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v108 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170);
  v116 = *(v117 - 8);
  v115 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v108 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v111 = *(v112 - 8);
  v110 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v108 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v126 = *(v131 - 8);
  v127 = v131 - 8;
  v138 = v126;
  MEMORY[0x28223BE20](v131 - 8);
  v133 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = &v108 - v30;
  MEMORY[0x28223BE20](v31);
  v143 = &v108 - v32;
  MEMORY[0x28223BE20](v33);
  v142 = &v108 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v108 - v36;
  MEMORY[0x28223BE20](v37);
  v140 = &v108 - v38;
  __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
  sub_20C139BA4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BE42C30;
  *(v39 + 24) = v1;
  (*(v20 + 16))(v22, v25, v19);
  v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v41 = swift_allocObject();
  (*(v20 + 32))(v41 + v40, v22, v19);
  v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_20BE447B4;
  v42[1] = v39;

  sub_20C137C94();
  (*(v20 + 8))(v25, v19);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v43 = v108;
  sub_20C13A204();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_20BE42C6C;
  *(v44 + 24) = v1;
  v45 = v111;
  v46 = v109;
  v47 = v112;
  (*(v111 + 16))(v109, v43, v112);
  v48 = v45;
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v50 = (v110 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v48 + 32))(v51 + v49, v46, v47);
  v52 = (v51 + v50);
  *v52 = sub_20BE447B8;
  v52[1] = v44;

  sub_20C137C94();
  (*(v48 + 8))(v43, v47);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v53 = v113;
  sub_20C13A214();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20BE42C88;
  *(v54 + 24) = v1;
  v55 = v116;
  v56 = v114;
  v57 = v117;
  (*(v116 + 16))(v114, v53, v117);
  v58 = v55;
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v115 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v56, v57);
  v62 = (v61 + v60);
  *v62 = sub_20BE447BC;
  v62[1] = v54;

  sub_20C137C94();
  (*(v58 + 8))(v53, v57);
  __swift_project_boxed_opaque_existential_1(v1 + 51, v1[54]);
  v63 = v118;
  sub_20C139724();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_20BE42CC4;
  *(v64 + 24) = v1;
  v65 = v121;
  v66 = v119;
  v67 = v122;
  (*(v121 + 16))(v119, v63, v122);
  v68 = v65;
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v120 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v68 + 32))(v71 + v69, v66, v67);
  v72 = (v71 + v70);
  *v72 = sub_20BE447C0;
  v72[1] = v64;

  sub_20C137C94();
  (*(v68 + 8))(v63, v67);
  __swift_project_boxed_opaque_existential_1(v1 + 26, v1[29]);
  v73 = v124;
  sub_20C1398E4();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_20BE42D00;
  *(v74 + 24) = v1;
  v75 = v129;
  v76 = v130;
  v77 = v125;
  (*(v129 + 16))(v125, v73, v130);
  v78 = v75;
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v80 = (v128 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (*(v78 + 32))(v81 + v79, v77, v76);
  v82 = (v81 + v80);
  *v82 = sub_20B5DF4C4;
  v82[1] = v74;

  sub_20C137C94();
  (*(v78 + 8))(v73, v76);
  __swift_project_boxed_opaque_existential_1(v1 + 11, v1[14]);
  v83 = v132;
  sub_20C139E44();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_20BE42D24;
  *(v84 + 24) = v1;
  v85 = v136;
  v86 = v137;
  v87 = v134;
  (*(v136 + 16))(v134, v83, v137);
  v88 = v85;
  v89 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v90 = (v135 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v88 + 32))(v91 + v89, v87, v86);
  v92 = (v91 + v90);
  *v92 = sub_20BE447C4;
  v92[1] = v84;

  v93 = v123;
  sub_20C137C94();
  (*(v88 + 8))(v83, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v94 = *(v126 + 72);
  v95 = v138;
  v96 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_20C150DB0;
  v98 = v97 + v96;
  v99 = *(v95 + 16);
  v100 = v131;
  v99(v98, v140, v131);
  v99(v98 + v94, v141, v100);
  v99(v98 + 2 * v94, v142, v100);
  v99(v98 + 3 * v94, v143, v100);
  v101 = v139;
  v99(v98 + 4 * v94, v139, v100);
  v99(v98 + 5 * v94, v93, v100);
  v144 = v97;
  sub_20B51C88C(0, &qword_281100530);
  v102 = sub_20C13D374();
  sub_20C13A7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798);
  sub_20B6D6ABC(&qword_27C771DC0, &qword_27C76B798);
  v103 = v133;
  sub_20C137C84();

  v104 = sub_20C137CB4();
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *(v105 + 24) = 0;
  v104(sub_20B5DF6DC, v105);

  v106 = *(v138 + 8);
  v106(v103, v100);
  v106(v93, v100);
  v106(v101, v100);
  v106(v143, v100);
  v106(v142, v100);
  v106(v141, v100);
  return (v106)(v140, v100);
}

uint64_t sub_20BE22828()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80);
  v136 = *(v2 - 8);
  v137 = v2;
  v135 = *(v136 + 64);
  MEMORY[0x28223BE20](v2);
  v134 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v129 = *(v6 - 8);
  v130 = v6;
  v128 = *(v129 + 64);
  MEMORY[0x28223BE20](v6);
  v125 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v124 = &v108 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v121 = *(v122 - 8);
  v120 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v108 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170);
  v116 = *(v117 - 8);
  v115 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v108 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v111 = *(v112 - 8);
  v110 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v108 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v126 = *(v131 - 8);
  v127 = v131 - 8;
  v138 = v126;
  MEMORY[0x28223BE20](v131 - 8);
  v133 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = &v108 - v30;
  MEMORY[0x28223BE20](v31);
  v143 = &v108 - v32;
  MEMORY[0x28223BE20](v33);
  v142 = &v108 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v108 - v36;
  MEMORY[0x28223BE20](v37);
  v140 = &v108 - v38;
  __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
  sub_20C139BA4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BE4172C;
  *(v39 + 24) = v1;
  (*(v20 + 16))(v22, v25, v19);
  v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v41 = swift_allocObject();
  (*(v20 + 32))(v41 + v40, v22, v19);
  v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_20BE447B4;
  v42[1] = v39;

  sub_20C137C94();
  (*(v20 + 8))(v25, v19);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v43 = v108;
  sub_20C13A204();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_20BE41744;
  *(v44 + 24) = v1;
  v45 = v111;
  v46 = v109;
  v47 = v112;
  (*(v111 + 16))(v109, v43, v112);
  v48 = v45;
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v50 = (v110 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v48 + 32))(v51 + v49, v46, v47);
  v52 = (v51 + v50);
  *v52 = sub_20BE447B8;
  v52[1] = v44;

  sub_20C137C94();
  (*(v48 + 8))(v43, v47);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v53 = v113;
  sub_20C13A214();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20BE41760;
  *(v54 + 24) = v1;
  v55 = v116;
  v56 = v114;
  v57 = v117;
  (*(v116 + 16))(v114, v53, v117);
  v58 = v55;
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v115 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v56, v57);
  v62 = (v61 + v60);
  *v62 = sub_20BE447BC;
  v62[1] = v54;

  sub_20C137C94();
  (*(v58 + 8))(v53, v57);
  __swift_project_boxed_opaque_existential_1(v1 + 45, v1[48]);
  v63 = v118;
  sub_20C139724();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_20BE41778;
  *(v64 + 24) = v1;
  v65 = v121;
  v66 = v119;
  v67 = v122;
  (*(v121 + 16))(v119, v63, v122);
  v68 = v65;
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v120 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v68 + 32))(v71 + v69, v66, v67);
  v72 = (v71 + v70);
  *v72 = sub_20BE447C0;
  v72[1] = v64;

  sub_20C137C94();
  (*(v68 + 8))(v63, v67);
  __swift_project_boxed_opaque_existential_1(v1 + 26, v1[29]);
  v73 = v124;
  sub_20C1398E4();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_20BE41790;
  *(v74 + 24) = v1;
  v75 = v129;
  v76 = v130;
  v77 = v125;
  (*(v129 + 16))(v125, v73, v130);
  v78 = v75;
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v80 = (v128 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (*(v78 + 32))(v81 + v79, v77, v76);
  v82 = (v81 + v80);
  *v82 = sub_20B5DF4C4;
  v82[1] = v74;

  sub_20C137C94();
  (*(v78 + 8))(v73, v76);
  __swift_project_boxed_opaque_existential_1(v1 + 11, v1[14]);
  v83 = v132;
  sub_20C139E44();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_20BE417B4;
  *(v84 + 24) = v1;
  v85 = v136;
  v86 = v137;
  v87 = v134;
  (*(v136 + 16))(v134, v83, v137);
  v88 = v85;
  v89 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v90 = (v135 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v88 + 32))(v91 + v89, v87, v86);
  v92 = (v91 + v90);
  *v92 = sub_20BE447C4;
  v92[1] = v84;

  v93 = v123;
  sub_20C137C94();
  (*(v88 + 8))(v83, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v94 = *(v126 + 72);
  v95 = v138;
  v96 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_20C150DB0;
  v98 = v97 + v96;
  v99 = *(v95 + 16);
  v100 = v131;
  v99(v98, v140, v131);
  v99(v98 + v94, v141, v100);
  v99(v98 + 2 * v94, v142, v100);
  v99(v98 + 3 * v94, v143, v100);
  v101 = v139;
  v99(v98 + 4 * v94, v139, v100);
  v99(v98 + 5 * v94, v93, v100);
  v144 = v97;
  sub_20B51C88C(0, &qword_281100530);
  v102 = sub_20C13D374();
  sub_20C13A7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798);
  sub_20B6D6ABC(&qword_27C771DC0, &qword_27C76B798);
  v103 = v133;
  sub_20C137C84();

  v104 = sub_20C137CB4();
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *(v105 + 24) = 0;
  v104(sub_20B5DF6DC, v105);

  v106 = *(v138 + 8);
  v106(v103, v100);
  v106(v93, v100);
  v106(v101, v100);
  v106(v143, v100);
  v106(v142, v100);
  v106(v141, v100);
  return (v106)(v140, v100);
}

uint64_t sub_20BE23820()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80);
  v136 = *(v2 - 8);
  v137 = v2;
  v135 = *(v136 + 64);
  MEMORY[0x28223BE20](v2);
  v134 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v129 = *(v6 - 8);
  v130 = v6;
  v128 = *(v129 + 64);
  MEMORY[0x28223BE20](v6);
  v125 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v124 = &v108 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v121 = *(v122 - 8);
  v120 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v108 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170);
  v116 = *(v117 - 8);
  v115 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v108 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v111 = *(v112 - 8);
  v110 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v108 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v126 = *(v131 - 8);
  v127 = v131 - 8;
  v138 = v126;
  MEMORY[0x28223BE20](v131 - 8);
  v133 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = &v108 - v30;
  MEMORY[0x28223BE20](v31);
  v143 = &v108 - v32;
  MEMORY[0x28223BE20](v33);
  v142 = &v108 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v108 - v36;
  MEMORY[0x28223BE20](v37);
  v140 = &v108 - v38;
  __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
  sub_20C139BA4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BE42E18;
  *(v39 + 24) = v1;
  (*(v20 + 16))(v22, v25, v19);
  v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v41 = swift_allocObject();
  (*(v20 + 32))(v41 + v40, v22, v19);
  v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_20BE447B4;
  v42[1] = v39;

  sub_20C137C94();
  (*(v20 + 8))(v25, v19);
  __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);
  v43 = v108;
  sub_20C13A204();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_20BE44874;
  *(v44 + 24) = v1;
  v45 = v111;
  v46 = v109;
  v47 = v112;
  (*(v111 + 16))(v109, v43, v112);
  v48 = v45;
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v50 = (v110 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v48 + 32))(v51 + v49, v46, v47);
  v52 = (v51 + v50);
  *v52 = sub_20BE447B8;
  v52[1] = v44;

  sub_20C137C94();
  (*(v48 + 8))(v43, v47);
  __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);
  v53 = v113;
  sub_20C13A214();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20BE42E38;
  *(v54 + 24) = v1;
  v55 = v116;
  v56 = v114;
  v57 = v117;
  (*(v116 + 16))(v114, v53, v117);
  v58 = v55;
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v115 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v56, v57);
  v62 = (v61 + v60);
  *v62 = sub_20BE447BC;
  v62[1] = v54;

  sub_20C137C94();
  (*(v58 + 8))(v53, v57);
  __swift_project_boxed_opaque_existential_1(v1 + 53, v1[56]);
  v63 = v118;
  sub_20C139724();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_20BE42E58;
  *(v64 + 24) = v1;
  v65 = v121;
  v66 = v119;
  v67 = v122;
  (*(v121 + 16))(v119, v63, v122);
  v68 = v65;
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v120 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v68 + 32))(v71 + v69, v66, v67);
  v72 = (v71 + v70);
  *v72 = sub_20BE447C0;
  v72[1] = v64;

  sub_20C137C94();
  (*(v68 + 8))(v63, v67);
  __swift_project_boxed_opaque_existential_1(v1 + 24, v1[27]);
  v73 = v124;
  sub_20C1398E4();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_20BE42E78;
  *(v74 + 24) = v1;
  v75 = v129;
  v76 = v130;
  v77 = v125;
  (*(v129 + 16))(v125, v73, v130);
  v78 = v75;
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v80 = (v128 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (*(v78 + 32))(v81 + v79, v77, v76);
  v82 = (v81 + v80);
  *v82 = sub_20B5DF4C4;
  v82[1] = v74;

  sub_20C137C94();
  (*(v78 + 8))(v73, v76);
  __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  v83 = v132;
  sub_20C139E44();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_20BE4488C;
  *(v84 + 24) = v1;
  v85 = v136;
  v86 = v137;
  v87 = v134;
  (*(v136 + 16))(v134, v83, v137);
  v88 = v85;
  v89 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v90 = (v135 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v88 + 32))(v91 + v89, v87, v86);
  v92 = (v91 + v90);
  *v92 = sub_20BE447C4;
  v92[1] = v84;

  v93 = v123;
  sub_20C137C94();
  (*(v88 + 8))(v83, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v94 = *(v126 + 72);
  v95 = v138;
  v96 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_20C150DB0;
  v98 = v97 + v96;
  v99 = *(v95 + 16);
  v100 = v131;
  v99(v98, v140, v131);
  v99(v98 + v94, v141, v100);
  v99(v98 + 2 * v94, v142, v100);
  v99(v98 + 3 * v94, v143, v100);
  v101 = v139;
  v99(v98 + 4 * v94, v139, v100);
  v99(v98 + 5 * v94, v93, v100);
  v144 = v97;
  sub_20B51C88C(0, &qword_281100530);
  v102 = sub_20C13D374();
  sub_20C13A7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798);
  sub_20B6D6ABC(&qword_27C771DC0, &qword_27C76B798);
  v103 = v133;
  sub_20C137C84();

  v104 = sub_20C137CB4();
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *(v105 + 24) = 0;
  v104(sub_20B5DF6DC, v105);

  v106 = *(v138 + 8);
  v106(v103, v100);
  v106(v93, v100);
  v106(v101, v100);
  v106(v143, v100);
  v106(v142, v100);
  v106(v141, v100);
  return (v106)(v140, v100);
}

uint64_t sub_20BE24818()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80);
  v136 = *(v2 - 8);
  v137 = v2;
  v135 = *(v136 + 64);
  MEMORY[0x28223BE20](v2);
  v134 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v129 = *(v6 - 8);
  v130 = v6;
  v128 = *(v129 + 64);
  MEMORY[0x28223BE20](v6);
  v125 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v124 = &v108 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v121 = *(v122 - 8);
  v120 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v108 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170);
  v116 = *(v117 - 8);
  v115 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v108 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v111 = *(v112 - 8);
  v110 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v108 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v126 = *(v131 - 8);
  v127 = v131 - 8;
  v138 = v126;
  MEMORY[0x28223BE20](v131 - 8);
  v133 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = &v108 - v30;
  MEMORY[0x28223BE20](v31);
  v143 = &v108 - v32;
  MEMORY[0x28223BE20](v33);
  v142 = &v108 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v108 - v36;
  MEMORY[0x28223BE20](v37);
  v140 = &v108 - v38;
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_20C139BA4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BE445D8;
  *(v39 + 24) = v1;
  (*(v20 + 16))(v22, v25, v19);
  v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v41 = swift_allocObject();
  (*(v20 + 32))(v41 + v40, v22, v19);
  v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_20BE447B4;
  v42[1] = v39;

  sub_20C137C94();
  (*(v20 + 8))(v25, v19);
  __swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
  v43 = v108;
  sub_20C13A204();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_20BE445F8;
  *(v44 + 24) = v1;
  v45 = v111;
  v46 = v109;
  v47 = v112;
  (*(v111 + 16))(v109, v43, v112);
  v48 = v45;
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v50 = (v110 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v48 + 32))(v51 + v49, v46, v47);
  v52 = (v51 + v50);
  *v52 = sub_20BE447B8;
  v52[1] = v44;

  sub_20C137C94();
  (*(v48 + 8))(v43, v47);
  __swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
  v53 = v113;
  sub_20C13A214();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20BE4461C;
  *(v54 + 24) = v1;
  v55 = v116;
  v56 = v114;
  v57 = v117;
  (*(v116 + 16))(v114, v53, v117);
  v58 = v55;
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v115 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v56, v57);
  v62 = (v61 + v60);
  *v62 = sub_20BE447BC;
  v62[1] = v54;

  sub_20C137C94();
  (*(v58 + 8))(v53, v57);
  __swift_project_boxed_opaque_existential_1(v1 + 46, v1[49]);
  v63 = v118;
  sub_20C139724();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_20BE4463C;
  *(v64 + 24) = v1;
  v65 = v121;
  v66 = v119;
  v67 = v122;
  (*(v121 + 16))(v119, v63, v122);
  v68 = v65;
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v120 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v68 + 32))(v71 + v69, v66, v67);
  v72 = (v71 + v70);
  *v72 = sub_20BE447C0;
  v72[1] = v64;

  sub_20C137C94();
  (*(v68 + 8))(v63, v67);
  __swift_project_boxed_opaque_existential_1(v1 + 27, v1[30]);
  v73 = v124;
  sub_20C1398E4();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_20BE4469C;
  *(v74 + 24) = v1;
  v75 = v129;
  v76 = v130;
  v77 = v125;
  (*(v129 + 16))(v125, v73, v130);
  v78 = v75;
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v80 = (v128 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (*(v78 + 32))(v81 + v79, v77, v76);
  v82 = (v81 + v80);
  *v82 = sub_20B5DF4C4;
  v82[1] = v74;

  sub_20C137C94();
  (*(v78 + 8))(v73, v76);
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  v83 = v132;
  sub_20C139E44();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_20BE446C0;
  *(v84 + 24) = v1;
  v85 = v136;
  v86 = v137;
  v87 = v134;
  (*(v136 + 16))(v134, v83, v137);
  v88 = v85;
  v89 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v90 = (v135 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v88 + 32))(v91 + v89, v87, v86);
  v92 = (v91 + v90);
  *v92 = sub_20BE447C4;
  v92[1] = v84;

  v93 = v123;
  sub_20C137C94();
  (*(v88 + 8))(v83, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v94 = *(v126 + 72);
  v95 = v138;
  v96 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_20C150DB0;
  v98 = v97 + v96;
  v99 = *(v95 + 16);
  v100 = v131;
  v99(v98, v140, v131);
  v99(v98 + v94, v141, v100);
  v99(v98 + 2 * v94, v142, v100);
  v99(v98 + 3 * v94, v143, v100);
  v101 = v139;
  v99(v98 + 4 * v94, v139, v100);
  v99(v98 + 5 * v94, v93, v100);
  v144 = v97;
  sub_20B51C88C(0, &qword_281100530);
  v102 = sub_20C13D374();
  sub_20C13A7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798);
  sub_20B6D6ABC(&qword_27C771DC0, &qword_27C76B798);
  v103 = v133;
  sub_20C137C84();

  v104 = sub_20C137CB4();
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *(v105 + 24) = 0;
  v104(sub_20B5DF6DC, v105);

  v106 = *(v138 + 8);
  v106(v103, v100);
  v106(v93, v100);
  v106(v101, v100);
  v106(v143, v100);
  v106(v142, v100);
  v106(v141, v100);
  return (v106)(v140, v100);
}

uint64_t sub_20BE25810()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80);
  v137 = *(v2 - 8);
  v138 = v2;
  v136 = *(v137 + 64);
  MEMORY[0x28223BE20](v2);
  v135 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v133 = &v109 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v130 = *(v6 - 8);
  v131 = v6;
  v129 = *(v130 + 64);
  MEMORY[0x28223BE20](v6);
  v126 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v125 = &v109 - v9;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v122 = *(v123 - 8);
  v121 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v120 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v109 - v12;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170);
  v117 = *(v118 - 8);
  v116 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v115 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = &v109 - v15;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v112 = *(v113 - 8);
  v111 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v110 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v109 = &v109 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v109 - v24;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v127 = *(v132 - 8);
  v128 = v132 - 8;
  v139 = v127;
  MEMORY[0x28223BE20](v132 - 8);
  v134 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v124 = &v109 - v28;
  MEMORY[0x28223BE20](v29);
  v140 = &v109 - v30;
  MEMORY[0x28223BE20](v31);
  v144 = &v109 - v32;
  MEMORY[0x28223BE20](v33);
  v143 = &v109 - v34;
  MEMORY[0x28223BE20](v35);
  v142 = &v109 - v36;
  MEMORY[0x28223BE20](v37);
  v141 = &v109 - v38;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_archivedSessionClient), *(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_archivedSessionClient + 24));
  sub_20C139BA4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BE43DA4;
  *(v39 + 24) = v1;
  (*(v20 + 16))(v22, v25, v19);
  v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v41 = swift_allocObject();
  (*(v20 + 32))(v41 + v40, v22, v19);
  v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_20BE447B4;
  v42[1] = v39;

  sub_20C137C94();
  (*(v20 + 8))(v25, v19);
  v43 = (v1 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_bookmarkClient);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_bookmarkClient), *(v1 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_bookmarkClient + 24));
  v44 = v109;
  sub_20C13A204();
  v45 = swift_allocObject();
  *(v45 + 16) = sub_20BE43DC4;
  *(v45 + 24) = v1;
  v46 = v112;
  v47 = v110;
  v48 = v113;
  (*(v112 + 16))(v110, v44, v113);
  v49 = v46;
  v50 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v51 = (v111 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  (*(v49 + 32))(v52 + v50, v47, v48);
  v53 = (v52 + v51);
  *v53 = sub_20BE447B8;
  v53[1] = v45;

  sub_20C137C94();
  (*(v49 + 8))(v44, v48);
  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  v54 = v114;
  sub_20C13A214();
  v55 = swift_allocObject();
  *(v55 + 16) = sub_20BE43DE8;
  *(v55 + 24) = v1;
  v56 = v117;
  v57 = v115;
  v58 = v118;
  (*(v117 + 16))(v115, v54, v118);
  v59 = v56;
  v60 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v61 = (v116 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  (*(v59 + 32))(v62 + v60, v57, v58);
  v63 = (v62 + v61);
  *v63 = sub_20BE447BC;
  v63[1] = v55;

  sub_20C137C94();
  (*(v59 + 8))(v54, v58);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_upNextQueueClient), *(v1 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_upNextQueueClient + 24));
  v64 = v119;
  sub_20C139724();
  v65 = swift_allocObject();
  *(v65 + 16) = sub_20BE43E08;
  *(v65 + 24) = v1;
  v66 = v122;
  v67 = v120;
  v68 = v123;
  (*(v122 + 16))(v120, v64, v123);
  v69 = v66;
  v70 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v71 = (v121 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  (*(v69 + 32))(v72 + v70, v67, v68);
  v73 = (v72 + v71);
  *v73 = sub_20BE447C0;
  v73[1] = v65;

  sub_20C137C94();
  (*(v69 + 8))(v64, v68);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_configurationClient), *(v1 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_configurationClient + 24));
  v74 = v125;
  sub_20C1398E4();
  v75 = swift_allocObject();
  *(v75 + 16) = sub_20BE43E28;
  *(v75 + 24) = v1;
  v76 = v130;
  v77 = v131;
  v78 = v126;
  (*(v130 + 16))(v126, v74, v131);
  v79 = v76;
  v80 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v81 = (v129 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  (*(v79 + 32))(v82 + v80, v78, v77);
  v83 = (v82 + v81);
  *v83 = sub_20B5DF4C4;
  v83[1] = v75;

  sub_20C137C94();
  (*(v79 + 8))(v74, v77);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_assetClient), *(v1 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_assetClient + 24));
  v84 = v133;
  sub_20C139E44();
  v85 = swift_allocObject();
  *(v85 + 16) = sub_20BE43E4C;
  *(v85 + 24) = v1;
  v86 = v137;
  v87 = v138;
  v88 = v135;
  (*(v137 + 16))(v135, v84, v138);
  v89 = v86;
  v90 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v91 = (v136 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v92 = swift_allocObject();
  (*(v89 + 32))(v92 + v90, v88, v87);
  v93 = (v92 + v91);
  *v93 = sub_20BE447C4;
  v93[1] = v85;

  v94 = v124;
  sub_20C137C94();
  (*(v89 + 8))(v84, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v95 = *(v127 + 72);
  v96 = v139;
  v97 = (*(v139 + 80) + 32) & ~*(v139 + 80);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_20C150DB0;
  v99 = v98 + v97;
  v100 = *(v96 + 16);
  v101 = v132;
  v100(v99, v141, v132);
  v100(v99 + v95, v142, v101);
  v100(v99 + 2 * v95, v143, v101);
  v100(v99 + 3 * v95, v144, v101);
  v102 = v140;
  v100(v99 + 4 * v95, v140, v101);
  v100(v99 + 5 * v95, v94, v101);
  v145 = v98;
  sub_20B51C88C(0, &qword_281100530);
  v103 = sub_20C13D374();
  sub_20C13A7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798);
  sub_20B6D6ABC(&qword_27C771DC0, &qword_27C76B798);
  v104 = v134;
  sub_20C137C84();

  v105 = sub_20C137CB4();
  v106 = swift_allocObject();
  *(v106 + 16) = 0;
  *(v106 + 24) = 0;
  v105(sub_20B5DF6DC, v106);

  v107 = *(v139 + 8);
  v107(v104, v101);
  v107(v94, v101);
  v107(v102, v101);
  v107(v144, v101);
  v107(v143, v101);
  v107(v142, v101);
  return (v107)(v141, v101);
}

uint64_t sub_20BE26850()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80);
  v136 = *(v2 - 8);
  v137 = v2;
  v135 = *(v136 + 64);
  MEMORY[0x28223BE20](v2);
  v134 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v129 = *(v6 - 8);
  v130 = v6;
  v128 = *(v129 + 64);
  MEMORY[0x28223BE20](v6);
  v125 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v124 = &v108 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v121 = *(v122 - 8);
  v120 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v108 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170);
  v116 = *(v117 - 8);
  v115 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v108 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v111 = *(v112 - 8);
  v110 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v108 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v126 = *(v131 - 8);
  v127 = v131 - 8;
  v138 = v126;
  MEMORY[0x28223BE20](v131 - 8);
  v133 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = &v108 - v30;
  MEMORY[0x28223BE20](v31);
  v143 = &v108 - v32;
  MEMORY[0x28223BE20](v33);
  v142 = &v108 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v108 - v36;
  MEMORY[0x28223BE20](v37);
  v140 = &v108 - v38;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C139BA4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BE41904;
  *(v39 + 24) = v1;
  (*(v20 + 16))(v22, v25, v19);
  v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v41 = swift_allocObject();
  (*(v20 + 32))(v41 + v40, v22, v19);
  v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_20BE447B4;
  v42[1] = v39;

  sub_20C137C94();
  (*(v20 + 8))(v25, v19);
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  v43 = v108;
  sub_20C13A204();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_20BE41924;
  *(v44 + 24) = v1;
  v45 = v111;
  v46 = v109;
  v47 = v112;
  (*(v111 + 16))(v109, v43, v112);
  v48 = v45;
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v50 = (v110 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v48 + 32))(v51 + v49, v46, v47);
  v52 = (v51 + v50);
  *v52 = sub_20BE447B8;
  v52[1] = v44;

  sub_20C137C94();
  (*(v48 + 8))(v43, v47);
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  v53 = v113;
  sub_20C13A214();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20BE41948;
  *(v54 + 24) = v1;
  v55 = v116;
  v56 = v114;
  v57 = v117;
  (*(v116 + 16))(v114, v53, v117);
  v58 = v55;
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v115 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v56, v57);
  v62 = (v61 + v60);
  *v62 = sub_20BE447BC;
  v62[1] = v54;

  sub_20C137C94();
  (*(v58 + 8))(v53, v57);
  __swift_project_boxed_opaque_existential_1(v1 + 46, v1[49]);
  v63 = v118;
  sub_20C139724();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_20BE41968;
  *(v64 + 24) = v1;
  v65 = v121;
  v66 = v119;
  v67 = v122;
  (*(v121 + 16))(v119, v63, v122);
  v68 = v65;
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v120 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v68 + 32))(v71 + v69, v66, v67);
  v72 = (v71 + v70);
  *v72 = sub_20BE447C0;
  v72[1] = v64;

  sub_20C137C94();
  (*(v68 + 8))(v63, v67);
  __swift_project_boxed_opaque_existential_1(v1 + 22, v1[25]);
  v73 = v124;
  sub_20C1398E4();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_20BE41988;
  *(v74 + 24) = v1;
  v75 = v129;
  v76 = v130;
  v77 = v125;
  (*(v129 + 16))(v125, v73, v130);
  v78 = v75;
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v80 = (v128 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (*(v78 + 32))(v81 + v79, v77, v76);
  v82 = (v81 + v80);
  *v82 = sub_20B5DF4C4;
  v82[1] = v74;

  sub_20C137C94();
  (*(v78 + 8))(v73, v76);
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v83 = v132;
  sub_20C139E44();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_20BE419AC;
  *(v84 + 24) = v1;
  v85 = v136;
  v86 = v137;
  v87 = v134;
  (*(v136 + 16))(v134, v83, v137);
  v88 = v85;
  v89 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v90 = (v135 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v88 + 32))(v91 + v89, v87, v86);
  v92 = (v91 + v90);
  *v92 = sub_20BE447C4;
  v92[1] = v84;

  v93 = v123;
  sub_20C137C94();
  (*(v88 + 8))(v83, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v94 = *(v126 + 72);
  v95 = v138;
  v96 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_20C150DB0;
  v98 = v97 + v96;
  v99 = *(v95 + 16);
  v100 = v131;
  v99(v98, v140, v131);
  v99(v98 + v94, v141, v100);
  v99(v98 + 2 * v94, v142, v100);
  v99(v98 + 3 * v94, v143, v100);
  v101 = v139;
  v99(v98 + 4 * v94, v139, v100);
  v99(v98 + 5 * v94, v93, v100);
  v144 = v97;
  sub_20B51C88C(0, &qword_281100530);
  v102 = sub_20C13D374();
  sub_20C13A7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798);
  sub_20B6D6ABC(&qword_27C771DC0, &qword_27C76B798);
  v103 = v133;
  sub_20C137C84();

  v104 = sub_20C137CB4();
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *(v105 + 24) = 0;
  v104(sub_20B5DF6DC, v105);

  v106 = *(v138 + 8);
  v106(v103, v100);
  v106(v93, v100);
  v106(v101, v100);
  v106(v143, v100);
  v106(v142, v100);
  v106(v141, v100);
  return (v106)(v140, v100);
}