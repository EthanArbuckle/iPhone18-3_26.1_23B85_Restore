char *sub_20BBCD7A0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_contentViewBottomConstraint] = 0;
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_layout];
  *v11 = xmmword_20C171EE0;
  *(v11 + 1) = xmmword_20C171EF0;
  *&v4[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_titleLabelTopConstraint] = 0;
  v12 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v13 = 16.0;
  }

  else
  {
    v13 = 6.0;
  }

  v14 = &v4[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_artworkView];
  v15 = [v12 layer];
  [v15 setCornerRadius_];

  [v12 setClipsToBounds_];
  *v14 = v12;
  *(v14 + 1) = &off_2822B63E8;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setAdjustsFontForContentSizeCategory_];
  v17 = *MEMORY[0x277D769D0];
  v18 = objc_opt_self();
  v19 = [v18 preferredFontDescriptorWithTextStyle:v17 compatibleWithTraitCollection:0];
  v20 = [v19 fontDescriptorWithSymbolicTraits_];
  if (v20)
  {
    v21 = v20;

    v19 = v21;
  }

  v22 = OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_titleLabel;
  v23 = objc_opt_self();
  v24 = [v23 fontWithDescriptor:v19 size:0.0];

  [v16 setFont_];
  [v16 setLineBreakMode_];
  [v16 setNumberOfLines_];
  [v16 setAllowsDefaultTighteningForTruncation_];
  v25 = objc_opt_self();
  v26 = [v25 whiteColor];
  [v16 setTextColor_];

  v27 = [v25 systemBackgroundColor];
  [v16 setBackgroundColor_];

  *&v4[v22] = v16;
  v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  [v28 setAdjustsFontForContentSizeCategory_];
  v29 = [v18 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v30 = [v29 fontDescriptorWithSymbolicTraits_];
  if (v30)
  {
    v31 = v30;

    v29 = v31;
  }

  v32 = OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_subtitleLabel;
  v33 = [v23 fontWithDescriptor:v29 size:0.0];

  [v28 setFont_];
  [v28 setLineBreakMode_];
  [v28 setNumberOfLines_];
  [v28 setAllowsDefaultTighteningForTruncation_];
  v34 = [v25 whiteColor];
  [v28 setTextColor_];

  v35 = [v25 systemBackgroundColor];
  [v28 setBackgroundColor_];

  *&v4[v32] = v28;
  v36 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  [v36 setAdjustsFontForContentSizeCategory_];
  v37 = [v18 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940] compatibleWithTraitCollection:0];
  v38 = [v37 fontDescriptorWithSymbolicTraits_];
  if (v38)
  {
    v39 = v38;

    v37 = v39;
  }

  v40 = OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_captionLabel;
  v41 = [v23 fontWithDescriptor:v37 size:0.0];

  [v36 setFont_];
  [v36 setLineBreakMode_];
  [v36 setNumberOfLines_];
  [v36 setAllowsDefaultTighteningForTruncation_];
  v42 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v36 setTextColor_];

  v43 = [v25 systemBackgroundColor];
  [v36 setBackgroundColor_];

  *&v4[v40] = v36;
  v115.receiver = v4;
  v115.super_class = type metadata accessor for StandardBrickItemCell();
  v44 = objc_msgSendSuper2(&v115, &selRef__hysteresis, a1, a2, a3, a4);
  v45 = [v44 contentView];
  v46 = OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_artworkView;
  [v45 addSubview_];

  v47 = [v44 contentView];
  v110 = OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_captionLabel;
  [v47 addSubview_];

  v48 = [v44 contentView];
  v111 = OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_titleLabel;
  [v48 addSubview_];

  v49 = [v44 contentView];
  v112 = OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_subtitleLabel;
  [v49 addSubview_];

  v113 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_20C1580B0;
  v51 = [*&v44[v46] leadingAnchor];
  v52 = [v44 contentView];
  v53 = [v52 leadingAnchor];

  v54 = [v51 constraintEqualToAnchor_];
  *(v50 + 32) = v54;
  v55 = [*&v44[v46] trailingAnchor];
  v56 = [v44 contentView];
  v57 = [v56 trailingAnchor];

  v58 = [v55 &selRef:v57 alertControllerReleasedDictationButton:? + 5];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v59) = v114;
  [v58 setPriority_];
  *(v50 + 40) = v58;
  v60 = [*&v44[v46] topAnchor];
  v61 = [v44 contentView];
  v62 = [v61 &selRef_setLineBreakMode_];

  v63 = [v60 &selRef:v62 alertControllerReleasedDictationButton:? + 5];
  *(v50 + 48) = v63;
  v64 = [*&v44[v46] widthAnchor];
  v65 = [v44 contentView];
  v66 = [v65 widthAnchor];

  v67 = [v64 &selRef:v66 alertControllerReleasedDictationButton:? + 5];
  sub_20C13BBA4();
  LODWORD(v68) = v114;
  [v67 setPriority_];
  *(v50 + 56) = v67;
  v69 = [*&v44[v46] heightAnchor];
  v70 = [*&v44[v46] widthAnchor];
  v71 = &v44[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_layout];
  v72 = [v69 constraintEqualToAnchor:v70 multiplier:*&v44[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_layout + 24]];

  sub_20C13BBA4();
  LODWORD(v73) = v114;
  [v72 setPriority_];
  *(v50 + 64) = v72;
  v74 = [*&v44[v110] leadingAnchor];
  v75 = [v44 contentView];
  v76 = [v75 leadingAnchor];

  v77 = [v74 constraintEqualToAnchor_];
  *(v50 + 72) = v77;
  v78 = [*&v44[v110] topAnchor];
  v79 = [*&v44[v46] bottomAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:*v71];

  *(v50 + 80) = v80;
  v81 = [*&v44[v110] trailingAnchor];
  v82 = [v44 contentView];
  v83 = [v82 trailingAnchor];

  v84 = [v81 constraintEqualToAnchor_];
  *(v50 + 88) = v84;
  v85 = [*&v44[v111] leadingAnchor];
  v86 = [v44 contentView];
  v87 = [v86 leadingAnchor];

  v88 = [v85 constraintEqualToAnchor_];
  *(v50 + 96) = v88;
  v89 = [*&v44[v111] trailingAnchor];
  v90 = [v44 contentView];
  v91 = [v90 trailingAnchor];

  v92 = [v89 constraintEqualToAnchor_];
  *(v50 + 104) = v92;
  v93 = [*&v44[v112] leadingAnchor];
  v94 = [v44 contentView];
  v95 = [v94 leadingAnchor];

  v96 = [v93 constraintEqualToAnchor_];
  *(v50 + 112) = v96;
  v97 = [*&v44[v112] topAnchor];
  v98 = [*&v44[v111] bottomAnchor];
  v99 = [v97 constraintEqualToAnchor_];

  *(v50 + 120) = v99;
  v100 = [*&v44[v112] trailingAnchor];
  v101 = [v44 contentView];
  v102 = [v101 trailingAnchor];

  v103 = [v100 constraintEqualToAnchor_];
  *(v50 + 128) = v103;
  v104 = [*&v44[v112] bottomAnchor];
  v105 = [v44 contentView];

  v106 = [v105 bottomAnchor];
  v107 = [v104 constraintLessThanOrEqualToAnchor_];

  *(v50 + 136) = v107;
  sub_20B51C88C(0, &qword_281100500);
  v108 = sub_20C13CC54();

  [v113 activateConstraints_];

  sub_20BBCE9CC();
  return v44;
}

uint64_t sub_20BBCE780()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for StandardBrickItemCell();
  v12.receiver = v0;
  v12.super_class = v4;
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_artworkView];
  v6 = [v5 layer];
  [v6 setBorderColor_];

  v7 = [v5 layer];
  [v7 setBorderWidth_];

  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v3, &v0[v9]);
  return swift_endAccess();
}

void sub_20BBCE9CC()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_captionLabel];
  v2 = [v1 text];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  v4 = sub_20C13C954();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_titleLabelTopConstraint;
    v9 = *&v0[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_titleLabelTopConstraint];
    if (v9)
    {
      [v9 setActive_];
    }

    v10 = [*&v0[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_titleLabel] topAnchor];
    v11 = [v1 bottomAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    v13 = *&v0[v8];
    *&v0[v8] = v12;
    v14 = v12;

    if (v14)
    {
      [v14 setActive_];
    }

    v15 = &v0[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_contentViewBottomConstraint];
    v16 = *&v0[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_contentViewBottomConstraint];
    if (v16)
    {
      [v16 setActive_];
    }

    v17 = [v1 firstBaselineAnchor];
    v18 = [v0 contentView];
    v19 = [v18 bottomAnchor];

    v20 = [v17 constraintEqualToAnchor:v19 constant:-*&v0[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_layout + 8]];
  }

  else
  {
LABEL_12:
    v21 = OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_titleLabelTopConstraint;
    v22 = *&v0[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_titleLabelTopConstraint];
    if (v22)
    {
      [v22 setActive_];
    }

    v23 = *&v0[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_titleLabel];
    v24 = [v23 topAnchor];
    v25 = [*&v0[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_artworkView] bottomAnchor];
    v26 = &v0[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_layout];
    v27 = [v24 constraintEqualToAnchor:v25 constant:*&v0[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_layout]];

    v28 = *&v0[v21];
    *&v0[v21] = v27;
    v29 = v27;

    if (v29)
    {
      [v29 setActive_];
    }

    v15 = &v0[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_contentViewBottomConstraint];
    v30 = *&v0[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_contentViewBottomConstraint];
    if (v30)
    {
      [v30 setActive_];
    }

    v31 = [v23 firstBaselineAnchor];
    v32 = [v0 contentView];
    v33 = [v32 bottomAnchor];

    v20 = [v31 constraintEqualToAnchor:v33 constant:-v26[2]];
  }

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v34) = v37;
  [v20 setPriority_];
  v35 = *v15;
  *v15 = v20;
  v36 = v20;

  [v36 setActive_];
}

id sub_20BBCEDAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StandardBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StandardBrickItemCell()
{
  result = qword_281102828;
  if (!qword_281102828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BBCEEF4()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BBCEFD0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BBCF01C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BBCF074(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BBCF0FC(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v245 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v202 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v227 = &v202 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v228 = &v202 - v9;
  v226 = v10;
  MEMORY[0x28223BE20](v11);
  v229 = &v202 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v13 - 8);
  v236 = &v202 - v14;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v237 = *(v240 - 8);
  v15 = *(v237 + 64);
  MEMORY[0x28223BE20](v240);
  MEMORY[0x28223BE20](v16);
  v238 = &v202 - v17;
  v234 = sub_20C1391C4();
  v233 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v235 = &v202 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_20C138A64();
  v230 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v239 = &v202 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v20 - 8);
  v232 = &v202 - v21;
  v22 = sub_20C13C554();
  v247 = *(v22 - 8);
  v248 = v22;
  MEMORY[0x28223BE20](v22);
  v246 = (&v202 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v252 = sub_20C137C24();
  v250 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v241 = v24;
  v242 = &v202 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v251 = &v202 - v26;
  v27 = sub_20C136CD4();
  v243 = *(v27 - 8);
  v244 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = (&v202 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_20C134E44();
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v202 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C134014();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v249 = &v202 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v37 == 33)
  {
    v59 = v253;
    v60 = *&v253[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_captionLabel];
    v61 = sub_20C13C914();
    [v60 setText_];

    v62 = *&v59[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_titleLabel];
    v63 = sub_20C13C914();
    [v62 setText_];

    v64 = *&v59[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_subtitleLabel];
    v65 = sub_20C13C914();
    [v64 setText_];

    sub_20BA1DA04();
    sub_20BBCE9CC();
    v66 = &v59[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_artworkView];
    v68 = *&v59[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_artworkView];
    v67 = *(v66 + 1);
    ObjectType = swift_getObjectType();
    (*(v67 + 264))(0, ObjectType, v67);
    (*(v67 + 296))(0, 0, ObjectType, v67);
    v70 = [v68 layer];
    [v70 setBorderColor_];

    v253 = [v68 layer];
    [v253 setBorderWidth_];
    v71 = v253;
  }

  else
  {
    if (v37 == 32)
    {
      v209 = v15;
      v210 = &v202 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v225 = v32;
      v245 = v29;
      v211 = v6;
      v212 = v5;
      v38 = v35;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
      v40 = swift_projectBox();
      v41 = v40 + v39[16];
      v42 = *v41;
      v43 = *(v41 + 8);
      v44 = *(v41 + 16);
      v45 = *(v41 + 24);
      v46 = *(v41 + 40);
      v224 = *(v41 + 32);
      v47 = (v40 + v39[20]);
      v49 = *v47;
      v48 = v47[1];
      LODWORD(v222) = *(v40 + v39[28]);
      v218 = v34;
      v50 = *(v34 + 16);
      v51 = v249;
      v219 = v38;
      v50(v249, v40, v38);
      v52 = *&v253[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_captionLabel];
      v221 = v44;
      v220 = v45;
      if (v48 >= 2)
      {
        v254[0] = v49;
        v254[1] = v48;
        sub_20B5F6EB0();
        v53 = v42;
        v83 = v42;
        v55 = v43;
        v84 = v43;
        v85 = v44;

        sub_20C13D9E4();
        v58 = sub_20C13C914();
      }

      else
      {
        v53 = v42;
        v54 = v42;
        v55 = v43;
        v56 = v43;
        v57 = v44;

        v58 = 0;
      }

      v86 = v46;
      [v52 setText_];

      v87 = v253;
      v88 = *&v253[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_titleLabel];
      [v88 setAttributedText_];
      v89 = *&v87[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_subtitleLabel];
      [v89 setAttributedText_];
      v90 = &off_277D9A000;
      v223 = v55;
      v217 = v53;
      v216 = v86;
      if (v222)
      {
        if (v222 == 1)
        {
          v91 = 0x27C760000;
          if (qword_27C760D20 != -1)
          {
            goto LABEL_35;
          }

          while (1)
          {
            v92 = qword_27C79D6D8;
            [v88 v90[81]];

            v93 = *(v91 + 420);
            v94 = v252;
            v91 = v253;
            if (v93 != -1)
            {
              swift_once();
            }

            v95 = qword_27C79D6D8;
            v96 = v251;
LABEL_21:
            [v89 v90[81]];

            sub_20BBCE9CC();
            sub_20C133F04();
            v90 = sub_20C138054();
            v88 = v99;
            sub_20C134E34();
            sub_20C136CB4();
            v215 = sub_20C136CC4();
            v222 = v100;
            sub_20B51C88C(0, &qword_281100530);
            v101 = sub_20C13D374();
            v103 = v246;
            v102 = v247;
            *v246 = v101;
            v104 = v248;
            (*(v102 + 104))(v103, *MEMORY[0x277D85200], v248);
            v89 = sub_20C13C584();
            (*(v102 + 8))(v103, v104);
            if (v89)
            {
              break;
            }

            __break(1u);
LABEL_35:
            swift_once();
          }

          v105 = *&v91[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_artworkView];
          v106 = *&v91[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_artworkView + 8];
          v107 = swift_getObjectType();
          [v105 setContentMode_];
          v108 = sub_20BA66C54(v96, v105, v106, 0);
          v247 = v106;
          v248 = v107;
          if (v108)
          {
            v109 = swift_allocObject();
            v246 = v88;
            v110 = v109;
            swift_unknownObjectWeakInit();
            v214 = v90;
            v111 = v250;
            v112 = *(v250 + 16);
            v213 = v105;
            v113 = v242;
            v204 = v250 + 16;
            v206 = v112;
            v112(v242, v96, v94);
            v114 = *(v111 + 80);
            v115 = (v114 + 24) & ~v114;
            v203 = v241 + 7;
            v116 = (v241 + 7 + v115) & 0xFFFFFFFFFFFFFFF8;
            v117 = (v116 + 23) & 0xFFFFFFFFFFFFFFF8;
            v118 = (v117 + 23) & 0xFFFFFFFFFFFFFFF8;
            v208 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
            v207 = v114;
            v119 = swift_allocObject();
            *(v119 + 16) = v110;
            v121 = *(v111 + 32);
            v120 = v111 + 32;
            v122 = v113;
            v123 = v213;
            v205 = v121;
            v121(v119 + v115, v122, v252);
            v124 = (v119 + v116);
            v125 = v222;
            *v124 = v215;
            v124[1] = v125;
            v126 = (v119 + v117);
            v127 = v246;
            *v126 = v214;
            v126[1] = v127;
            *(v119 + v118) = 2;
            v128 = v119 + v208;
            *v128 = MEMORY[0x277D84F90];
            *(v128 + 8) = 0;
            v129 = (v119 + ((v118 + 31) & 0xFFFFFFFFFFFFFFF8));
            *v129 = 0;
            v129[1] = 0;
            v130 = *(v106 + 152);

            v131 = v248;
            v130(sub_20BBD0A50, v119, v248, v106);

            [v123 bounds];
            if (v132 <= 0.0)
            {

              v51 = v249;
              v96 = v251;
              v157 = v243;
              v135 = v223;
            }

            else
            {
              v134 = v133;
              v208 = v120;
              v135 = v223;
              if (v133 > 0.0)
              {
                v136 = v132;
                v137 = v106;
                v202 = ~v207;
                (*(v106 + 120))(0, v131, v106);
                v138 = v232;
                v139 = v251;
                v140 = v252;
                v206(v232, v251, v252);
                (*(v250 + 56))(v138, 0, 1, v140);
                (*(v137 + 16))(v138, v131, v137);
                sub_20B51C88C(0, &qword_27C762070);
                sub_20C137BC4();
                v141 = sub_20C13D5A4();
                [v123 setBackgroundColor_];

                (*(v137 + 176))(COERCE_DOUBLE(*&v136), COERCE_DOUBLE(*&v134), 0, v131, v137);
                v232 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v142 = v242;
                v143 = v206;
                v206(v242, v139, v140);
                v144 = (v207 + 16) & v202;
                v145 = (v203 + v144) & 0xFFFFFFFFFFFFFFF8;
                v146 = (v145 + 15) & 0xFFFFFFFFFFFFFFF8;
                v147 = (v146 + 23) & 0xFFFFFFFFFFFFFFF8;
                v148 = swift_allocObject();
                v205(v148 + v144, v142, v140);
                *(v148 + v145) = v232;
                v149 = (v148 + v146);
                v150 = v142;
                *v149 = v136;
                v149[1] = v134;
                v232 = v148;
                v151 = (v148 + v147);
                v96 = v251;
                *v151 = 0;
                v151[1] = 0;
                v143(v142, v96, v140);
                (*(v233 + 104))(v235, *MEMORY[0x277D542A8], v234);

                v152 = v239;
                sub_20C138A54();
                v153 = v236;
                sub_20B5F1A00(v152, v236);
                v154 = v140;
                v155 = v237;
                v156 = v240;
                if ((*(v237 + 48))(v153, 1) != 1)
                {
                  v235 = *(v155 + 32);
                  (v235)(v238, v153, v156);
                  v166 = v154;
                  v167 = v143;
                  v168 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v169 = v166;
                  v167(v150, v251, v166);
                  v170 = (v207 + 40) & v202;
                  v171 = v170 + v241;
                  v172 = (v170 + v241) & 0xFFFFFFFFFFFFFFF8;
                  v173 = swift_allocObject();
                  v174 = v150;
                  v175 = v173;
                  v173[2] = v168;
                  *(v173 + 3) = v136;
                  *(v173 + 4) = v134;
                  v205(v173 + v170, v174, v169);
                  *(v175 + v171) = 0;
                  v176 = v175 + v172;
                  *(v176 + 1) = 0;
                  *(v176 + 2) = 0;
                  v177 = swift_allocObject();
                  *(v177 + 16) = sub_20BBD0BE4;
                  *(v177 + 24) = v175;
                  v178 = v210;
                  v179 = v156;
                  (*(v155 + 16))(v210, v238, v156);
                  v180 = v155;
                  v181 = (*(v155 + 80) + 16) & ~*(v155 + 80);
                  v182 = (v209 + v181 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v183 = swift_allocObject();
                  (v235)(v183 + v181, v178, v179);
                  v184 = (v183 + v182);
                  *v184 = sub_20B5F67A4;
                  v184[1] = v177;
                  v185 = v228;
                  sub_20C137C94();
                  v186 = swift_allocObject();
                  v187 = v232;
                  *(v186 + 16) = sub_20BBD0B28;
                  *(v186 + 24) = v187;
                  v188 = swift_allocObject();
                  *(v188 + 16) = sub_20B5F67D4;
                  *(v188 + 24) = v186;
                  v189 = v211;
                  v190 = v227;
                  v191 = v212;
                  (*(v211 + 16))(v227, v185, v212);
                  v192 = (*(v189 + 80) + 16) & ~*(v189 + 80);
                  v193 = (v226 + v192 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v194 = swift_allocObject();
                  (*(v189 + 32))(v194 + v192, v190, v191);
                  v195 = (v194 + v193);
                  *v195 = sub_20B5DF204;
                  v195[1] = v188;

                  v196 = v229;
                  sub_20C137C94();
                  v197 = *(v189 + 8);
                  v197(v185, v191);
                  v198 = sub_20C137CB4();
                  v199 = swift_allocObject();
                  *(v199 + 16) = 0;
                  *(v199 + 24) = 0;
                  v198(sub_20B52347C, v199);

                  v200 = v196;
                  v135 = v223;
                  v201 = v191;
                  v96 = v251;
                  v197(v200, v201);
                  (*(v180 + 8))(v238, v240);
                  (*(v230 + 8))(v239, v231);
                  v51 = v249;
                  v94 = v252;
                  v157 = v243;
                  v158 = v221;
                  goto LABEL_32;
                }

                sub_20B520158(v153, &unk_27C766670);
                sub_20BA1DA04();

                (*(v230 + 8))(v152, v231);
                v51 = v249;
                v94 = v154;
                v157 = v243;
                v158 = v221;
                goto LABEL_28;
              }

              v51 = v249;
              v96 = v251;
              v157 = v243;
            }

            v158 = v221;
            v94 = v252;
            goto LABEL_32;
          }

          v157 = v243;
          v158 = v221;
LABEL_28:
          v135 = v223;
LABEL_32:
          (*(v250 + 8))(v96, v94);
          (*(v157 + 8))(v245, v244);

          sub_20B62A2AC(v225);
          v159 = sub_20C133EB4() > 0;
          v160 = v247;
          (*(v247 + 264))(v159, v248, v247);
          v161 = sub_20C133E54();
          (*(v160 + 296))(v161);

          v162 = sub_20C133FF4();
          v164 = v163;
          LOBYTE(v160) = v165;
          sub_20B5F09C8(v162, v163, v165);
          sub_20B584078(v162, v164, v160);

          (*(v218 + 8))(v51, v219);
          return;
        }

        v98 = [objc_opt_self() clearColor];
        [v88 setBackgroundColor_];

        v95 = [objc_opt_self() clearColor];
        v96 = v251;
        v94 = v252;
      }

      else
      {
        v97 = [objc_opt_self() systemBackgroundColor];
        [v88 setBackgroundColor_];

        v95 = [objc_opt_self() systemBackgroundColor];
        v96 = v251;
        v94 = v252;
      }

      v91 = v253;
      goto LABEL_21;
    }

    sub_20C13B534();

    v72 = v253;
    v73 = sub_20C13BB74();
    v74 = sub_20C13D1D4();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v254[0] = v77;
      *v75 = 138543618;
      *(v75 + 4) = v72;
      *v76 = v72;
      *(v75 + 12) = 2082;
      v254[2] = a1;
      v78 = sub_20B5F66D0();
      v79 = v72;
      v80 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v78);
      v82 = sub_20B51E694(v80, v81, v254);

      *(v75 + 14) = v82;
      _os_log_impl(&dword_20B517000, v73, v74, "Attempted to configure %{public}@ with item: %{public}s", v75, 0x16u);
      sub_20B520158(v76, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v76, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x20F2F6A40](v77, -1, -1);
      MEMORY[0x20F2F6A40](v75, -1, -1);
    }

    v245[1](v4, v2);
  }
}

void sub_20BBD0A50()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA3FC8C(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BBD0B28(void *a1)
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

  sub_20BA630A0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BBD0BE4(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F27A8(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

unint64_t sub_20BBD0C98(void *a1)
{
  v2 = sub_20C1380F4();
  if (v2 == 1)
  {
    v3 = 0;
  }

  else
  {
    if (v2)
    {
      result = sub_20C13DE24();
      __break(1u);
      return result;
    }

    v3 = 5;
  }

  [objc_msgSend(a1 container)];
  v5 = v4;
  swift_unknownObjectRelease();

  return sub_20B72097C(v3, 1.0, v5);
}

void sub_20BBD0D84()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_contentViewBottomConstraint) = 0;
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_layout);
  *v3 = xmmword_20C171EE0;
  v3[1] = xmmword_20C171EF0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_titleLabelTopConstraint) = 0;
  v4 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v5 = 16.0;
  }

  else
  {
    v5 = 6.0;
  }

  v6 = (v0 + OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_artworkView);
  v7 = [v4 layer];
  [v7 setCornerRadius_];

  [v4 setClipsToBounds_];
  *v6 = v4;
  v6[1] = &off_2822B63E8;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAdjustsFontForContentSizeCategory_];
  v9 = *MEMORY[0x277D769D0];
  v10 = objc_opt_self();
  v11 = [v10 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:0];
  v12 = [v11 fontDescriptorWithSymbolicTraits_];
  if (v12)
  {
    v13 = v12;

    v11 = v13;
  }

  v14 = OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_titleLabel;
  v15 = objc_opt_self();
  v16 = [v15 fontWithDescriptor:v11 size:0.0];

  [v8 setFont_];
  [v8 setLineBreakMode_];
  [v8 setNumberOfLines_];
  [v8 setAllowsDefaultTighteningForTruncation_];
  v17 = objc_opt_self();
  v18 = [v17 whiteColor];
  [v8 setTextColor_];

  v19 = [v17 systemBackgroundColor];
  [v8 setBackgroundColor_];

  *(v0 + v14) = v8;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setAdjustsFontForContentSizeCategory_];
  v21 = [v10 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v22 = [v21 fontDescriptorWithSymbolicTraits_];
  if (v22)
  {
    v23 = v22;

    v21 = v23;
  }

  v24 = OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_subtitleLabel;
  v25 = [v15 fontWithDescriptor:v21 size:0.0];

  [v20 setFont_];
  [v20 setLineBreakMode_];
  [v20 setNumberOfLines_];
  [v20 setAllowsDefaultTighteningForTruncation_];
  v26 = [v17 whiteColor];
  [v20 setTextColor_];

  v27 = [v17 systemBackgroundColor];
  [v20 setBackgroundColor_];

  *(v0 + v24) = v20;
  v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  [v28 setAdjustsFontForContentSizeCategory_];
  v29 = [v10 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940] compatibleWithTraitCollection:0];
  v30 = [v29 fontDescriptorWithSymbolicTraits_];
  if (v30)
  {
    v31 = v30;

    v29 = v31;
  }

  v32 = OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_captionLabel;
  v33 = [v15 fontWithDescriptor:v29 size:0.0];

  [v28 setFont_];
  [v28 setLineBreakMode_];
  [v28 setNumberOfLines_];
  [v28 setAllowsDefaultTighteningForTruncation_];
  v34 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v28 setTextColor_];

  v35 = [v17 systemBackgroundColor];
  [v28 setBackgroundColor_];

  *(v0 + v32) = v28;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BBD14D0(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, void), void (*a4)(uint64_t, uint64_t, unint64_t), uint64_t (*a5)(uint64_t))
{
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v5 = a2;
  v6 = a1;
  if (a1)
  {
    v26 = a5;
    v28 = MEMORY[0x277D84F90];
    v29 = MEMORY[0x277D84F90];
    v7 = a2 & 0xFFFFFFFFFFFFFF8;
    if (!(a2 >> 62))
    {
      v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_5;
      }

      goto LABEL_29;
    }

LABEL_28:
    v8 = sub_20C13DB34();
    if (v8)
    {
LABEL_5:
      v9 = 0;
      v27 = 0;
      while (1)
      {
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x20F2F5430](v9, v5);
          }

          else
          {
            if (v9 >= *(v7 + 16))
            {
              goto LABEL_26;
            }

            v10 = *(v5 + 8 * v9 + 32);
          }

          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v13 = v28;
          v14 = *(v28 + 16);
          if (v14 >= v6)
          {
            break;
          }

          sub_20C13DD34();
          sub_20C13DD74();
          sub_20C13DD84();
          sub_20C13DD44();
          ++v9;
          if (v12 == v8)
          {
            goto LABEL_29;
          }
        }

        if (v27 >= v14)
        {
          break;
        }

        *(v28 + 8 * v27 + 32);
        sub_20C13DD34();
        sub_20C13DD74();
        sub_20C13DD84();
        sub_20C13DD44();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = v26(v28);
          v28 = v13;
        }

        if (v27 >= *(v13 + 16))
        {
          goto LABEL_32;
        }

        v15 = v13 + 8 * v27;
        v16 = *(v15 + 32);
        *(v15 + 32) = v11;

        sub_20C13DD44();
        if ((v27 + 1) < v6)
        {
          v17 = v27 + 1;
        }

        else
        {
          v17 = 0;
        }

        v27 = v17;
        v9 = v12;
        if (v12 == v8)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_29:

    v18 = v29;

    return v18;
  }

  if (!(a2 >> 62))
  {
    return a2 & 0xFFFFFFFFFFFFFF8;
  }

LABEL_33:
  v20 = a3;
  v21 = a4;
  v22 = sub_20C13DB34();
  if (!v22)
  {
LABEL_36:

    return MEMORY[0x277D84F90];
  }

  v23 = v22;
  v18 = v20(v22, 0);
  v21(v18 + 32, v23, v5);
  v25 = v24;

  if (v25 != v23)
  {
    __break(1u);
    goto LABEL_36;
  }

  return v18;
}

uint64_t sub_20BBD1754(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_20C13DD64();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x20F2F5430](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_20C13DB34();
    sub_20C13DD64();
  }

  return v8;
}

uint64_t sub_20BBD18BC(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_20C13DD64();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x20F2F5430](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for TVButton();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_20C13DB34();
    sub_20C13DD64();
  }

  return v8;
}

char *sub_20BBD1A54(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_layout];
  v12 = [objc_opt_self() mainScreen];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v165.origin.x = v14;
  v165.origin.y = v16;
  v165.size.width = v18;
  v165.size.height = v20;
  Width = CGRectGetWidth(v165);
  *v11 = xmmword_20C172010;
  *(v11 + 1) = xmmword_20C172020;
  *(v11 + 2) = vdupq_n_s64(0x4044000000000000uLL);
  *(v11 + 3) = xmmword_20C172030;
  *(v11 + 4) = xmmword_20C172040;
  *(v11 + 5) = xmmword_20C172050;
  *(v11 + 6) = xmmword_20C172060;
  *(v11 + 14) = Width;
  *&v4[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_carouselItemDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_avPlayer] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_avPlayerLayer] = 0;
  v22 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_blurView;
  v23 = [objc_opt_self() effectWithStyle_];
  v24 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v22] = v24;
  v25 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonStackView;
  v26 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v26 setAxis_];
  [v26 setAlignment_];
  [v26 setDistribution_];
  [v26 setSpacing_];
  [v26 &selRef_count + 2];
  *&v4[v25] = v26;
  v27 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_textStackView;
  v28 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v28 setAxis_];
  [v28 setAlignment_];
  [v28 setSpacing_];
  [v28 setDistribution_];
  [v28 &selRef_count + 2];
  *&v4[v27] = v28;
  v29 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_captionLabel;
  v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v30 setTextAlignment_];
  [v30 setLineBreakMode_];
  [v30 setNumberOfLines_];
  [v30 setAllowsDefaultTighteningForTruncation_];
  v31 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v30 setTextColor_];

  [v30 &selRef_count + 2];
  [v30 setAdjustsFontForContentSizeCategory_];
  *&v4[v29] = v30;
  v32 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_titleLabel;
  v33 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v33 setTextAlignment_];
  [v33 setLineBreakMode_];
  [v33 setNumberOfLines_];
  [v33 setAllowsDefaultTighteningForTruncation_];
  v34 = objc_opt_self();
  v35 = [v34 whiteColor];
  [v33 setTextColor_];

  [v33 &selRef_count + 2];
  [v33 setAdjustsFontForContentSizeCategory_];
  *&v4[v32] = v33;
  v36 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_subtitleLabel;
  v37 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v37 setTextAlignment_];
  [v37 setLineBreakMode_];
  [v37 setNumberOfLines_];
  [v37 setAllowsDefaultTighteningForTruncation_];
  v38 = objc_opt_self();
  v39 = [v38 preferredFontForTextStyle_];
  [v39 pointSize];
  v41 = v40;

  v42 = [v38 systemFontOfSize_];
  [v37 setFont_];

  v43 = [v34 secondaryLabelColor];
  [v37 setTextColor_];

  [v37 &selRef_count + 2];
  [v37 setAdjustsFontForContentSizeCategory_];
  *&v4[v36] = v37;
  v44 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_focusContainerGuide;
  *&v4[v44] = [objc_opt_self() smu_focusContainerGuide];
  v45 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonWidthConstraint;
  *&v4[v45] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v46 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v46 setClipsToBounds_];
  [v46 &selRef_count + 2];
  v47 = &v4[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_artworkView];
  *v47 = v46;
  *(v47 + 1) = &off_2822B63E8;
  v48 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttons] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonActions] = v48;
  v164.receiver = v4;
  v164.super_class = type metadata accessor for TVRootShowcaseCarouselItemCell();
  v49 = v46;
  v50 = objc_msgSendSuper2(&v164, sel_initWithFrame_, a1, a2, a3, a4);
  v51 = qword_27C760828;
  v52 = v50;
  if (v51 != -1)
  {
    swift_once();
  }

  [v49 setBackgroundColor_];

  [*&v49[OBJC_IVAR____TtC9SeymourUI11ArtworkView_imageView] setContentMode_];
  v53 = [v52 contentView];
  [v53 addSubview_];

  v54 = [v52 &selRef_setMaximumFractionDigits_];
  v55 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_blurView;
  [v54 addSubview_];

  v56 = [*&v52[v55] &selRef_setMaximumFractionDigits_];
  v162 = v49;
  v57 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonStackView;
  [v56 addSubview_];

  v58 = [*&v52[v55] &selRef_setMaximumFractionDigits_];
  v59 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_textStackView;
  v158 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_textStackView;
  [v58 addSubview_];

  v60 = &v52[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_layout];
  [*&v52[v55] smu:*&v52[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_layout + 64] setContinuousCornerRadius:?];
  [*&v52[v59] addArrangedSubview_];
  [*&v52[v59] addArrangedSubview_];
  [*&v52[v59] addArrangedSubview_];
  v61 = [v52 &selRef_setMaximumFractionDigits_];
  v160 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_focusContainerGuide;
  [v61 addLayoutGuide_];

  v62 = [*&v52[v57] widthAnchor];
  v63 = [v62 constraintEqualToConstant_];

  v159 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonWidthConstraint;
  v64 = *&v52[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonWidthConstraint];
  *&v52[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonWidthConstraint] = v63;

  v163 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_20C1638B0;
  v66 = [v52 &selRef_setMaximumFractionDigits_];
  v67 = [v66 &selRef_traitCollection + 6];

  v68 = [v67 constraintEqualToConstant_];
  *(v65 + 32) = v68;
  v69 = [v52 &selRef_setMaximumFractionDigits_];
  v70 = [v69 heightAnchor];

  v71 = [v70 constraintEqualToConstant_];
  *(v65 + 40) = v71;
  v72 = [*&v52[v55] leadingAnchor];
  v73 = [v52 &selRef_setMaximumFractionDigits_];
  v74 = [v73 leadingAnchor];

  v75 = [v72 constraintEqualToAnchor:v74 constant:v60[1]];
  *(v65 + 48) = v75;
  v76 = [*&v52[v55] bottomAnchor];
  v77 = [v52 &selRef_setMaximumFractionDigits_];
  v78 = [v77 &selRef_secondaryLabel + 5];

  v79 = [v76 &selRef_passwordEntryCancelledHandler + 6];
  *(v65 + 56) = v79;
  v80 = [*&v52[v55] widthAnchor];
  v81 = [v80 constraintLessThanOrEqualToConstant_];

  *(v65 + 64) = v81;
  v82 = [*&v52[v57] topAnchor];
  v83 = [*&v52[v55] &selRef_setMaximumFractionDigits_];
  v84 = [v83 &selRef_setLineBreakMode_];

  v85 = [v82 constraintGreaterThanOrEqualToAnchor:v84 constant:v60[4]];
  *(v65 + 72) = v85;
  v86 = [*&v52[v57] leadingAnchor];
  v87 = [*&v52[v55] &selRef_setMaximumFractionDigits_];
  v88 = [v87 leadingAnchor];

  v89 = [v86 constraintEqualToAnchor:v88 constant:v60[5]];
  *(v65 + 80) = v89;
  v90 = [*&v52[v57] bottomAnchor];
  v91 = [*&v52[v55] &selRef_setMaximumFractionDigits_];
  v92 = [v91 bottomAnchor];

  v93 = [v90 constraintLessThanOrEqualToAnchor:v92 constant:-v60[6]];
  *(v65 + 88) = v93;
  v94 = [*&v52[v57] centerYAnchor];
  v95 = [*&v52[v55] &selRef_setNumberOfTapsRequired_];
  v96 = [v94 constraintEqualToAnchor_];

  *(v65 + 96) = v96;
  v97 = *&v52[v159];
  *(v65 + 104) = v97;
  v98 = *&v52[v158];
  v99 = v97;
  v100 = [v98 topAnchor];
  v101 = [*&v52[v55] contentView];
  v102 = [v101 topAnchor];

  v103 = [v100 constraintGreaterThanOrEqualToAnchor:v102 constant:v60[4]];
  *(v65 + 112) = v103;
  v104 = [*&v52[v158] leadingAnchor];
  v105 = [*&v52[v57] trailingAnchor];
  v106 = [v104 constraintEqualToAnchor:v105 constant:v60[13]];

  *(v65 + 120) = v106;
  v107 = [*&v52[v158] trailingAnchor];
  v108 = [*&v52[v55] trailingAnchor];
  v109 = [v107 constraintEqualToAnchor:v108 constant:-v60[7]];

  *(v65 + 128) = v109;
  v110 = [*&v52[v158] bottomAnchor];
  v111 = [*&v52[v55] contentView];
  v112 = [v111 bottomAnchor];

  v113 = [v110 constraintLessThanOrEqualToAnchor:v112 constant:-v60[6]];
  *(v65 + 136) = v113;
  v114 = [*&v52[v158] centerYAnchor];
  v115 = [*&v52[v55] centerYAnchor];
  v116 = [v114 constraintEqualToAnchor_];

  *(v65 + 144) = v116;
  v117 = [*&v52[v160] leadingAnchor];
  v118 = [v52 contentView];
  v119 = [v118 leadingAnchor];

  v120 = [v117 constraintEqualToAnchor_];
  *(v65 + 152) = v120;
  v121 = [*&v52[v160] trailingAnchor];
  v122 = [v52 contentView];
  v123 = [v122 trailingAnchor];

  v124 = [v121 &selRef:v123 alertControllerReleasedDictationButton:? + 5];
  *(v65 + 160) = v124;
  v125 = [*&v52[v160] bottomAnchor];
  v126 = [v52 contentView];
  v127 = [v126 bottomAnchor];

  v128 = [v125 &selRef:v127 alertControllerReleasedDictationButton:? + 5];
  *(v65 + 168) = v128;
  v129 = [*&v52[v160] topAnchor];
  v130 = [*&v52[v55] topAnchor];
  v131 = [v129 &selRef:v130 alertControllerReleasedDictationButton:? + 5];

  *(v65 + 176) = v131;
  v132 = [v52 contentView];

  v134 = *MEMORY[0x277D768C8];
  v133 = *(MEMORY[0x277D768C8] + 8);
  v135 = *(MEMORY[0x277D768C8] + 16);
  v136 = *(MEMORY[0x277D768C8] + 24);
  v137 = [v162 leadingAnchor];
  v138 = [v132 leadingAnchor];
  v139 = [v137 constraintEqualToAnchor:v138 constant:v133];

  LODWORD(v140) = 1148846080;
  [v139 setPriority_];
  v161 = v139;
  v141 = [v162 trailingAnchor];
  v142 = [v132 trailingAnchor];
  v143 = [v141 constraintEqualToAnchor:v142 constant:-v136];

  LODWORD(v144) = 1148846080;
  [v143 setPriority_];
  v145 = v143;
  v146 = [v162 topAnchor];
  v147 = [v132 topAnchor];
  v148 = [v146 constraintEqualToAnchor:v147 constant:v134];

  LODWORD(v149) = 1148846080;
  [v148 setPriority_];
  v150 = [v162 bottomAnchor];
  v151 = [v132 bottomAnchor];
  v152 = [v150 constraintEqualToAnchor:v151 constant:-v135];

  LODWORD(v153) = 1148846080;
  [v152 setPriority_];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  *(inited + 32) = v161;
  *(inited + 40) = v145;
  *(inited + 48) = v148;
  *(inited + 56) = v152;
  v155 = v148;

  sub_20B8D9310(inited);
  sub_20B51C88C(0, &qword_281100500);
  v156 = sub_20C13CC54();

  [v163 activateConstraints_];

  return v52;
}

uint64_t sub_20BBD3004()
{
  v23 = sub_20C13C4B4();
  v26 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C13C4F4();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C514();
  v22 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for TVRootShowcaseCarouselItemCell();
  v28.receiver = v0;
  v28.super_class = v13;
  objc_msgSendSuper2(&v28, sel_didMoveToWindow);
  sub_20B51C88C(0, &qword_281100530);
  v14 = sub_20C13D374();
  sub_20C13C504();
  sub_20C13C574();
  v15 = *(v7 + 8);
  v15(v9, v6);
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  aBlock[4] = sub_20BBD6618;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_97;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  v19 = v23;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v12, v5, v2, v17);
  _Block_release(v17);

  (*(v26 + 8))(v2, v19);
  (*(v24 + 8))(v5, v25);
  return (v15)(v12, v22);
}

void sub_20BBD3398(char *a1)
{
  [*&a1[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_avPlayer] play];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_20BBD6620;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_20B7B548C;
  v6[3] = &block_descriptor_82_0;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 animateWithDuration:v4 animations:3.0];
  _Block_release(v4);
}

void sub_20BBD34E4(unint64_t a1)
{
  v2 = v1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAC0);
  MEMORY[0x28223BE20](v90);
  v89 = (&v86 - v4);
  v86 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonActions;
  *(v2 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonActions) = a1;

  v91 = *(a1 + 16);
  v5 = 88;
  if (v91)
  {
    v5 = 72;
  }

  v6 = *(v2 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_layout + v5);
  v7 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttons;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (v8 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20C13DB34())
  {
    v10 = *(*(v2 + v86) + 16);
    v11 = *(v2 + v7);
    v12 = v11 >> 62;
    if (v10 >= i)
    {
      break;
    }

    if (v12)
    {
      v13 = sub_20C13DB34();
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13 >= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v13;
    }

    if (v13 < 0)
    {
      v14 = v10;
    }

    if (v10)
    {
      v10 = v14;
    }

    else
    {
      v10 = 0;
    }

    if (v13 < v10)
    {
      __break(1u);
LABEL_62:
      v49 = sub_20C13DB34();
      v10 = *(*(v2 + v86) + 16);
      if (v49 >= v10)
      {
        goto LABEL_63;
      }

      goto LABEL_22;
    }

    if (v12)
    {
      if (sub_20C13DB34() < v10)
      {
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v15 = sub_20C13DB34();
    }

    else
    {
      v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15 < v10)
      {
        goto LABEL_90;
      }
    }

    if (v15 < v13)
    {
      goto LABEL_91;
    }

    if (v13 < 0)
    {
      goto LABEL_92;
    }

    if ((v11 & 0xC000000000000001) == 0 || v10 == v13)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      if (v10 >= v13)
      {
        goto LABEL_99;
      }

      type metadata accessor for TVButton();
      swift_bridgeObjectRetain_n();

      v30 = v10;
      do
      {
        v31 = v30 + 1;
        sub_20C13DCB4();
        v30 = v31;
      }

      while (v13 != v31);
    }

    if (v12)
    {
      v34 = sub_20C13DE54();
      v33 = v35;
      v10 = v36;
      v38 = v37;

      v32 = v34;
      v13 = v38 >> 1;
    }

    else
    {
      v32 = v11 & 0xFFFFFFFFFFFFFF8;
      v33 = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v39 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonStackView;
    v88 = v32;
    swift_unknownObjectRetain();
    v40 = v13 - v10;
    if (v13 == v10)
    {
LABEL_54:
      swift_unknownObjectRelease_n();
      a1 = *(v2 + v7);
      if (!(a1 >> 62))
      {
        v46 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_56;
      }

LABEL_93:
      v46 = sub_20C13DB34();
LABEL_56:
      v47 = *(*(v2 + v86) + 16);
      v48 = v46 - v47;
      if (!__OFSUB__(v46, v47))
      {

        *(v2 + v7) = sub_20BBD14D0(v48, a1, sub_20BEE31C4, sub_20B8DC064, sub_20B52C3B0);

        goto LABEL_64;
      }

      __break(1u);
LABEL_95:
      v85 = sub_20C13DB34();
      v18 = v10 - v85;
      if (!__OFSUB__(v10, v85))
      {
        goto LABEL_24;
      }

LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    if (v10 <= v13)
    {
      v41 = v13;
    }

    else
    {
      v41 = v10;
    }

    v42 = v41 - v10;
    v10 = v33 + 8 * v10;
    a1 = &off_277D9A000;
    while (v42)
    {
      v43 = *v10;
      v10 += 8;
      v44 = *(v2 + v39);
      v45 = v43;
      [v44 removeArrangedSubview_];
      [v45 removeFromSuperview];

      --v42;
      if (!--v40)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_59:
    ;
  }

  if (v12)
  {
    goto LABEL_62;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10)
  {
LABEL_63:

    goto LABEL_64;
  }

LABEL_22:
  v16 = *(v2 + v7);
  if (v16 >> 62)
  {
    goto LABEL_95;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v18 = v10 - v17;
  if (__OFSUB__(v10, v17))
  {
    goto LABEL_97;
  }

LABEL_24:
  if (v18 < 0)
  {
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    return;
  }

  if (!v18)
  {
    goto LABEL_63;
  }

  v19 = objc_opt_self();
  v20 = *(v2 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonStackView);
  v21 = type metadata accessor for TVButtonTextContentView();

  do
  {
    v22 = objc_allocWithZone(v21);
    v23 = TVButtonTextContentView.init(title:)(0, 0);
    v24 = objc_allocWithZone(type metadata accessor for TVButton());
    v25 = sub_20BB87F6C(v23, 0, 0, v24, 0.0, 0.0, 0.0, 0.0);
    v26 = OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView;
    [*&v25[OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView] setHidden_];
    [*&v25[v26] setAlpha_];
    [v19 smu_canDecodeOnRenderThread];
    v27 = [objc_opt_self() effectWithStyle_];
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      [v28 setEffect_];
    }

    swift_beginAccess();
    v29 = v25;
    MEMORY[0x20F2F43B0]();
    if (*((*(v2 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();
    swift_endAccess();
    [v20 addArrangedSubview_];

    --v18;
  }

  while (v18);
LABEL_64:
  v50 = *(v2 + v7);
  v51 = *(v2 + v86);
  v52 = v2;
  if (v50 >> 62)
  {
    goto LABEL_88;
  }

  v53 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_66:

  if (v53)
  {
    v54 = 0;
    v87 = v50 & 0xFFFFFFFFFFFFFF8;
    v88 = v50 & 0xC000000000000001;
    do
    {
      if (v88)
      {
        v56 = MEMORY[0x20F2F5430](v54, v50);
        v55 = v52;
      }

      else
      {
        if (v54 >= *(v87 + 16))
        {
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          v53 = sub_20C13DB34();
          goto LABEL_66;
        }

        v55 = v52;
        v56 = *(v50 + 8 * v54 + 32);
      }

      v57 = *(v51 + 16);
      if (v54 == v57)
      {

        goto LABEL_78;
      }

      if (v54 >= v57)
      {
        goto LABEL_87;
      }

      v58 = v54 + 1;
      v59 = v91 != 0;
      v60 = *(type metadata accessor for ButtonAction(0) - 8);
      v61 = v51 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v54;
      v62 = v90[12];
      v63 = v55;
      v64 = v89;
      *v89 = v56;
      sub_20B7632E0(v61, v64 + v62, type metadata accessor for ButtonAction);
      v52 = v63;
      sub_20BBD3FB0(v56, (v64 + v62), v63, v59);
      sub_20B520158(v64, &unk_27C76BAC0);
      v54 = v58;
    }

    while (v53 != v58);
  }

  v55 = v52;
LABEL_78:

  v65 = *(v55 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonStackView);
  v66 = 14.0;
  if (*(*(v55 + v86) + 16) > 3uLL)
  {
    v66 = 7.0;
  }

  v90 = *(v55 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonStackView);
  [v65 setSpacing_];
  [*(v55 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonWidthConstraint) setConstant_];
  v67 = *(v55 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_textStackView);
  v68 = *(v55 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_captionLabel);
  if (v91)
  {
    [*(v55 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_textStackView) setCustomSpacing:*(v55 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_captionLabel) afterView:8.0];
    v69 = *(v55 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_titleLabel);
    [v67 setCustomSpacing:v69 afterView:11.0];
    v70 = objc_opt_self();
    v71 = [v70 preferredFontForTextStyle_];
    [v71 pointSize];
    v73 = v72;

    v74 = [v70 boldSystemFontOfSize_];
    v75 = MEMORY[0x277D76A28];
  }

  else
  {
    [*(v55 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_textStackView) setCustomSpacing:*(v55 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_captionLabel) afterView:4.0];
    v69 = *(v55 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_titleLabel);
    [v67 setCustomSpacing:v69 afterView:2.0];
    v70 = objc_opt_self();
    v74 = [v70 preferredFontForTextStyle_];
    v75 = MEMORY[0x277D76920];
  }

  v76 = v74;
  [v68 setFont_];

  v77 = [v70 &selRef:*v75 :? setSpeedBumpEdges:?];
  [v77 pointSize];
  v79 = v78;

  v80 = [v70 boldSystemFontOfSize_];
  [v69 setFont_];

  v81 = *(v55 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_focusContainerGuide);
  v82 = [v90 arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910);
  v83 = sub_20C13CC74();

  if (v83 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
    sub_20C13DE34();
  }

  else
  {
    sub_20C13E004();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v84 = sub_20C13CC54();

  [v81 setPreferredFocusEnvironments_];
}

void sub_20BBD3FB0(_BYTE *a1, void *a2, uint64_t a3, int a4)
{
  LODWORD(v4) = a4;
  v8 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v17 = *(type metadata accessor for ButtonAction(0) + 28);
  sub_20B7632E0(a2 + v17, v16, type metadata accessor for ButtonAction.ActionType);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    if ((*v16 & 1) == 0)
    {
      v18 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());
      v19 = TVButtonTextContentView.init(title:)(0, 0);
      sub_20BB88C24(v19, a1);
      a1[OBJC_IVAR____TtC9SeymourUI8TVButton_isLoading] = 1;
      sub_20B9DDDD4();
      [a1 removeTarget:a3 action:sel_handleTappedButton_ forControlEvents:0x2000];
      goto LABEL_15;
    }
  }

  else
  {
    sub_20BBD65B8(v16, type metadata accessor for ButtonAction.ActionType);
  }

  sub_20B7632E0(a2 + v17, v13, type metadata accessor for ButtonAction.ActionType);
  if (swift_getEnumCaseMultiPayload() == 13)
  {

    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210) + 48);
    v21 = sub_20C132C14();
    (*(*(v21 - 8) + 8))(&v13[v20], v21);
    if (a2[3])
    {
      if (a2[5])
      {
        v51 = a2[4];
        v22 = sub_20C13C914();
        v52 = v4;
        v4 = v22;
        v23 = [objc_opt_self() systemImageNamed_];

        LOBYTE(v4) = v52;
        if (v23)
        {
          v24 = v23;
          v25 = [objc_opt_self() textAttachmentWithImage_];
          v50 = v25;
          sub_20B51C88C(0, &qword_27C766940);
          v26 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
          v27 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v4 = sub_20C13C914();
          v28 = [v27 initWithString_];

          [v26 appendAttributedString_];
          v29 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v30 = sub_20C13C914();
          v31 = [v29 initWithString_];

          LOBYTE(v4) = v52;
          [v26 appendAttributedString_];

          v32 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());
          v33 = v26;
          v19 = TVButtonTextContentView.init(attributedTitle:)(v26);
          sub_20BB88C24(v19, a1);
          a1[OBJC_IVAR____TtC9SeymourUI8TVButton_isLoading] = 0;
          sub_20B9DDDD4();
          v34 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
          v35 = *&a1[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView];
          [v35 setBackgroundColor:v34 forState:8];
          [v35 setBackgroundColor:v34 forState:1];

          [a1 addTarget:a3 action:sel_handleTappedButton_ forControlEvents:0x2000];
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    sub_20BBD65B8(v13, type metadata accessor for ButtonAction.ActionType);
  }

  v36 = a2[4];
  v37 = a2[5];
  objc_allocWithZone(type metadata accessor for TVButtonTextContentView());

  v19 = TVButtonTextContentView.init(title:)(v36, v37);
  sub_20BB88C24(v19, a1);
  a1[OBJC_IVAR____TtC9SeymourUI8TVButton_isLoading] = 0;
  sub_20B9DDDD4();
  sub_20B7632E0(a2 + v17, v10, type metadata accessor for ButtonAction.ActionType);
  if (swift_getEnumCaseMultiPayload() == 12)
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0);
    v39 = *(v38 + 48);
    v40 = *(v38 + 64);
    v41 = sub_20C137254();
    (*(*(v41 - 8) + 8))(&v10[v40], v41);
    sub_20B520158(&v10[v39], &qword_27C76A410);
    sub_20BBD65B8(v10, type metadata accessor for StartWorkoutSessionRequest);
    v42 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    v43 = *&a1[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView];
    [v43 setBackgroundColor:v42 forState:8];
    [v43 setBackgroundColor:v42 forState:1];
  }

  else
  {
    sub_20BBD65B8(v10, type metadata accessor for ButtonAction.ActionType);
  }

  [a1 addTarget:a3 action:sel_handleTappedButton_ forControlEvents:0x2000];
LABEL_15:

  v44 = [a1 heightAnchor];
  v45 = a3 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_layout;
  v46 = [v44 constraintEqualToConstant_];

  [v46 setActive_];
  v47 = [a1 heightAnchor];
  v48 = [v47 constraintEqualToConstant_];

  [v48 setActive_];
}

uint64_t sub_20BBD46AC(uint64_t a1)
{
  v3 = sub_20C133244();
  v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ButtonAction(0);
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9 - 8).n128_u64[0];
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [*(v1 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonStackView) subviews];
  sub_20B51C88C(0, &qword_27C762910);
  v15 = sub_20C13CC74();

  v16 = sub_20BBD18BC(v15);

  if (v16)
  {
    v18 = sub_20BD904F4(a1, v16);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonActions);
      if (v18 < *(v21 + 16))
      {
        if (v18 < 0)
        {
          __break(1u);
          return result;
        }

        sub_20B7632E0(v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v13, type metadata accessor for ButtonAction);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v23 = Strong;
          v24 = swift_unknownObjectWeakLoadStrong();
          if (v24)
          {
            v25 = v24;
            sub_20B7632E0(v13, v8, type metadata accessor for ButtonAction);
            v26 = swift_storeEnumTagMultiPayload();
            *&v27 = MEMORY[0x28223BE20](v26).n128_u64[0];
            *(&v32 - 4) = 0;
            *(&v32 - 24) = 1;
            *(&v32 - 2) = v8;
            *(&v32 - 1) = v25;
            v28 = [*(v25 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
            if (v28)
            {
              v29 = v28;
              sub_20C1331E4();

              sub_20C0C1CDC(v5, sub_20B5E27BC);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              (*(v33 + 8))(v5, v3);
            }

            else
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            sub_20BBD65B8(v13, type metadata accessor for ButtonAction);
            v30 = type metadata accessor for ShelfItemAction;
            v31 = v8;
            return sub_20BBD65B8(v31, v30);
          }

          swift_unknownObjectRelease();
        }

        v30 = type metadata accessor for ButtonAction;
        v31 = v13;
        return sub_20BBD65B8(v31, v30);
      }
    }
  }

  return result;
}

void sub_20BBD4BA0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v158 = *(v4 - 8);
  v5 = *(v158 + 64);
  MEMORY[0x28223BE20](v4);
  v155 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v156 = &v134 - v7;
  MEMORY[0x28223BE20](v8);
  v157 = &v134 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v165 = &v134 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v168 = *(v12 - 8);
  v169 = v12;
  MEMORY[0x28223BE20](v12);
  v154 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v13;
  MEMORY[0x28223BE20](v14);
  v166 = &v134 - v15;
  v164 = sub_20C1391C4();
  v162 = *(v164 - 1);
  MEMORY[0x28223BE20](v164);
  v163 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C138A64();
  v159 = *(v17 - 8);
  v160 = v17;
  MEMORY[0x28223BE20](v17);
  v167 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20C13C554();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v23 - 8);
  v161 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v134 - v26;
  v28 = sub_20C137C24();
  v29 = *(v28 - 8);
  v173 = v28;
  v174 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  *&v34 = MEMORY[0x28223BE20](v31).n128_u64[0];
  v35 = *(v2 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_captionLabel);
  if (*(a1 + 16) == 1)
  {
    v149 = v4;
    v36 = *(a1 + 56);
    v170 = a1;
    v151 = v33;
    v171 = &v134 - v32;
    if (v36 >= 2)
    {
      v175 = *(a1 + 48);
      v176 = v36;
      sub_20B5F6EB0();
      sub_20C13D9E4();
      v37 = sub_20C13C914();
      a1 = v170;
    }

    else
    {
      v37 = 0;
    }

    [v35 setText_];

    v44 = *(v2 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_titleLabel);
    v45 = *(a1 + 96);
    v172 = v2;
    if (v45)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    [v44 setAttributedText_];

    v47 = *(v172 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_subtitleLabel);
    if (v45)
    {
      v48 = v170;
      v49 = *(v170 + 104);
    }

    else
    {
      v49 = 0;
      v48 = v170;
    }

    [v47 setAttributedText_];

    v152 = type metadata accessor for RootShowcaseItem();
    sub_20B52F9E8(v48 + *(v152 + 36), v27, &unk_27C766680);
    v51 = v173;
    v50 = v174;
    if ((*(v174 + 48))(v27, 1, v173) == 1)
    {
      sub_20B520158(v27, &unk_27C766680);
LABEL_27:
      sub_20BBD34E4(*(v48 + *(v152 + 44)));
      return;
    }

    v52 = *(v50 + 32);
    v148 = v50 + 32;
    v147 = v52;
    v52(v171, v27, v51);
    v146 = sub_20C138044();
    v150 = v53;
    v145 = sub_20C138054();
    v55 = v54;
    sub_20B51C88C(0, &qword_281100530);
    *v22 = sub_20C13D374();
    (*(v20 + 104))(v22, *MEMORY[0x277D85200], v19);
    v56 = sub_20C13C584();
    (*(v20 + 8))(v22, v19);
    if (v56)
    {
      v58 = *(v172 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_artworkView);
      v57 = *(v172 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_artworkView + 8);
      ObjectType = swift_getObjectType();
      [v58 setContentMode_];
      if (sub_20BA66C54(v171, v58, v57, 0))
      {
        v135 = v5;
        v60 = swift_allocObject();
        v144 = v55;
        v61 = v60;
        swift_unknownObjectWeakInit();
        v142 = ObjectType;
        v62 = v174 + 16;
        v63 = v151;
        v139 = *(v174 + 16);
        v139(v151, v171, v51);
        v138 = v62;
        v64 = *(v62 + 64);
        v65 = (v64 + 24) & ~v64;
        v136 = v30 + 7;
        v66 = (v30 + 7 + v65) & 0xFFFFFFFFFFFFFFF8;
        v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
        v68 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
        v140 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
        v143 = v57;
        v141 = v58;
        v137 = v64;
        v69 = swift_allocObject();
        *(v69 + 16) = v61;
        v147(v69 + v65, v63, v51);
        v70 = (v69 + v66);
        v71 = v150;
        *v70 = v146;
        v70[1] = v71;
        v72 = (v69 + v67);
        v73 = v144;
        *v72 = v145;
        v72[1] = v73;
        *(v69 + v68) = 2;
        v74 = v69 + v140;
        *v74 = MEMORY[0x277D84F90];
        *(v74 + 8) = 0;
        v75 = (v69 + ((v68 + 31) & 0xFFFFFFFFFFFFFFF8));
        v76 = v143;
        *v75 = 0;
        v75[1] = 0;
        v77 = *(v76 + 152);

        v78 = v69;
        v79 = v141;
        v80 = v142;
        v77(sub_20BBD6370, v78);

        v81 = v79;
        [v79 bounds];
        if (v82 <= 0.0)
        {

          (*(v174 + 8))(v171, v173);
        }

        else
        {
          v84 = v83;
          v85 = v171;
          if (v83 <= 0.0)
          {

            (*(v174 + 8))(v85, v173);
          }

          else
          {
            v86 = v82;
            v140 = ~v137;
            (*(v76 + 120))(0, v80, v76);
            v87 = v161;
            v88 = v173;
            v139(v161, v85, v173);
            (*(v174 + 56))(v87, 0, 1, v88);
            (*(v76 + 16))(v87, v80, v76);
            sub_20B51C88C(0, &qword_27C762070);
            sub_20C137BC4();
            v89 = sub_20C13D5A4();
            [v81 setBackgroundColor_];

            (*(v76 + 176))(COERCE_DOUBLE(*&v86), COERCE_DOUBLE(*&v84), 0, v80, v76);
            v90 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v91 = v151;
            v139(v151, v85, v88);
            v92 = (v137 + 16) & v140;
            v93 = (v136 + v92) & 0xFFFFFFFFFFFFFFF8;
            v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
            v95 = swift_allocObject();
            v147(v95 + v92, v91, v88);
            *(v95 + v93) = v90;
            v96 = (v95 + v94);
            *v96 = v86;
            v96[1] = v84;
            v161 = v95;
            v97 = (v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8));
            *v97 = 0;
            v97[1] = 0;
            v98 = v171;
            (v139)(v91);
            (*(v162 + 104))(v163, *MEMORY[0x277D542A8], v164);
            v99 = v167;
            v100 = v91;
            sub_20C138A54();
            v101 = v165;
            sub_20B5F1F00(v99, v165);
            v102 = v168;
            v103 = v169;
            if ((*(v168 + 48))(v101, 1, v169) == 1)
            {
              sub_20B520158(v101, &unk_27C766670);
              sub_20BA1DD38();

              (*(v159 + 8))(v99, v160);
              (*(v174 + 8))(v98, v173);
            }

            else
            {
              v164 = *(v102 + 32);
              v164(v166, v101, v103);
              v104 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v105 = v91;
              v106 = v173;
              v139(v105, v98, v173);
              v107 = (v137 + 40) & v140;
              v108 = v107 + v30;
              v109 = swift_allocObject();
              *(v109 + 2) = v104;
              v109[3] = v86;
              v109[4] = v84;
              v147(v109 + v107, v100, v106);
              *(v109 + v108) = 0;
              v110 = v109 + (v108 & 0xFFFFFFFFFFFFFFF8);
              *(v110 + 1) = 0;
              *(v110 + 2) = 0;
              v111 = swift_allocObject();
              *(v111 + 16) = sub_20BBD6504;
              *(v111 + 24) = v109;
              v112 = v168;
              v113 = v169;
              v114 = v154;
              (*(v168 + 16))(v154, v166, v169);
              v115 = (*(v112 + 80) + 16) & ~*(v112 + 80);
              v116 = (v153 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
              v117 = swift_allocObject();
              v164((v117 + v115), v114, v113);
              v118 = (v117 + v116);
              *v118 = sub_20B5F67A4;
              v118[1] = v111;
              v119 = v156;
              sub_20C137C94();
              v120 = swift_allocObject();
              v121 = v161;
              *(v120 + 16) = sub_20BBD6448;
              *(v120 + 24) = v121;
              v122 = swift_allocObject();
              *(v122 + 16) = sub_20B5F67D4;
              *(v122 + 24) = v120;
              v123 = v158;
              v124 = v155;
              v125 = v149;
              (*(v158 + 16))(v155, v119, v149);
              v126 = (*(v123 + 80) + 16) & ~*(v123 + 80);
              v127 = (v135 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
              v128 = swift_allocObject();
              (*(v123 + 32))(v128 + v126, v124, v125);
              v129 = (v128 + v127);
              *v129 = sub_20B5DF204;
              v129[1] = v122;

              v130 = v157;
              sub_20C137C94();
              v131 = *(v123 + 8);
              v131(v119, v125);
              v132 = sub_20C137CB4();
              v133 = swift_allocObject();
              *(v133 + 16) = 0;
              *(v133 + 24) = 0;
              v132(sub_20B52347C, v133);

              v131(v130, v125);
              (*(v168 + 8))(v166, v169);
              (*(v159 + 8))(v167, v160);
              (*(v174 + 8))(v171, v173);
            }
          }
        }

        v48 = v170;
      }

      else
      {

        (*(v174 + 8))(v171, v51);
      }

      goto LABEL_27;
    }

    __break(1u);
  }

  else
  {
    v38 = sub_20C13C914();
    [v35 setText_];

    v39 = *(v2 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_titleLabel);
    v40 = sub_20C13C914();
    [v39 setText_];

    v41 = *(v2 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_subtitleLabel);
    v42 = sub_20C13C914();
    [v41 setText_];

    sub_20BA1DD38();
    v43 = MEMORY[0x277D84F90];

    sub_20BBD34E4(v43);
  }
}

uint64_t sub_20BBD5DDC()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_itemInfo, &qword_27C762550);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_carouselItemDelegate);
}

id sub_20BBD5F0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVRootShowcaseCarouselItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVRootShowcaseCarouselItemCell()
{
  result = qword_27C76BAA0;
  if (!qword_27C76BAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BBD60D4()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BBD61B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20BBD61D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 120) = v3;
  return result;
}

uint64_t sub_20BBD6230(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BBD627C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20BBD62E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BBD6370()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA60814(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BBD6448(void *a1)
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

  sub_20BA63990(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BBD6504(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F31CC(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_20BBD65B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20BBD6620(double a1)
{
  result = *(*(v1 + 16) + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_avPlayerLayer);
  if (result)
  {
    LODWORD(a1) = 1.0;
    return [result setOpacity_];
  }

  return result;
}

void sub_20BBD6648()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_layout;
  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v38.origin.x = v6;
  v38.origin.y = v8;
  v38.size.width = v10;
  v38.size.height = v12;
  Width = CGRectGetWidth(v38);
  *v3 = xmmword_20C172010;
  *(v3 + 16) = xmmword_20C172020;
  *(v3 + 32) = vdupq_n_s64(0x4044000000000000uLL);
  *(v3 + 48) = xmmword_20C172030;
  *(v3 + 64) = xmmword_20C172040;
  *(v3 + 80) = xmmword_20C172050;
  *(v3 + 96) = xmmword_20C172060;
  *(v3 + 112) = Width;
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_carouselItemDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_avPlayer) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_avPlayerLayer) = 0;
  v14 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_blurView;
  v15 = [objc_opt_self() effectWithStyle_];
  v16 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v14) = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonStackView;
  v18 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v18 setAxis_];
  [v18 setAlignment_];
  [v18 setDistribution_];
  [v18 setSpacing_];
  [v18 &selRef_count + 2];
  *(v0 + v17) = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_textStackView;
  v20 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v20 setAxis_];
  [v20 setAlignment_];
  [v20 setSpacing_];
  [v20 setDistribution_];
  [v20 &selRef_count + 2];
  *(v0 + v19) = v20;
  v21 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_captionLabel;
  v22 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v22 setTextAlignment_];
  [v22 setLineBreakMode_];
  [v22 setNumberOfLines_];
  [v22 setAllowsDefaultTighteningForTruncation_];
  v23 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v22 setTextColor_];

  [v22 &selRef_count + 2];
  [v22 setAdjustsFontForContentSizeCategory_];
  *(v0 + v21) = v22;
  v24 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_titleLabel;
  v25 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v25 setTextAlignment_];
  [v25 setLineBreakMode_];
  [v25 setNumberOfLines_];
  [v25 setAllowsDefaultTighteningForTruncation_];
  v26 = objc_opt_self();
  v27 = [v26 whiteColor];
  [v25 setTextColor_];

  [v25 &selRef_count + 2];
  [v25 setAdjustsFontForContentSizeCategory_];
  *(v0 + v24) = v25;
  v28 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_subtitleLabel;
  v29 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v29 setTextAlignment_];
  [v29 setLineBreakMode_];
  [v29 setNumberOfLines_];
  [v29 setAllowsDefaultTighteningForTruncation_];
  v30 = objc_opt_self();
  v31 = [v30 preferredFontForTextStyle_];
  [v31 pointSize];
  v33 = v32;

  v34 = [v30 systemFontOfSize_];
  [v29 setFont_];

  v35 = [v26 secondaryLabelColor];
  [v29 setTextColor_];

  [v29 &selRef_count + 2];
  [v29 setAdjustsFontForContentSizeCategory_];
  *(v0 + v28) = v29;
  v36 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_focusContainerGuide;
  *(v0 + v36) = [objc_opt_self() smu_focusContainerGuide];
  v37 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonWidthConstraint;
  *(v0 + v37) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BBD6CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_20C132C14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v9 - 8);
  v39 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v38 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665D8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v38 - v15;
  v17 = sub_20C132704();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132684();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_20B91588C(v16);
    sub_20B5D9BA8();
    swift_allocError();
    *v21 = 14;
    swift_willThrow();
    return (*(v4 + 8))(a1, v3);
  }

  v38 = a1;
  (*(v18 + 32))(v20, v16, v17);
  v23 = sub_20C1326C4();
  if (v24)
  {
    if (v23 == 1886680168 && v24 == 0xE400000000000000)
    {
      goto LABEL_18;
    }

    v26 = sub_20C13DFF4();

    if (v26)
    {
      goto LABEL_19;
    }
  }

  v27 = sub_20C1326C4();
  if (v28)
  {
    if (v27 == 0x7370747468 && v28 == 0xE500000000000000)
    {
      goto LABEL_18;
    }

    v30 = sub_20C13DFF4();

    if (v30)
    {
      goto LABEL_19;
    }
  }

  v31 = sub_20C1326A4();
  if (!v32)
  {
    goto LABEL_22;
  }

  if (v31 == 0xD000000000000011 && v32 == 0x800000020C196B80)
  {
LABEL_18:

    goto LABEL_19;
  }

  v35 = sub_20C13DFF4();

  if ((v35 & 1) == 0)
  {
LABEL_22:
    v36 = v40;
    v33 = v38;
    (*(v4 + 16))(v40, v38, v3);
    v13 = v39;
    v37 = v42;
    sub_20B829F84(v36, v39);
    if (v37)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

LABEL_19:
  v33 = v38;
  (*(v4 + 16))(v8, v38, v3);
  v34 = v42;
  sub_20B6AECA8(v8, v13);
  if (v34)
  {
LABEL_20:
    (*(v4 + 8))(v33, v3);
    return (*(v18 + 8))(v20, v17);
  }

LABEL_23:
  (*(v4 + 8))(v33, v3);
  (*(v18 + 8))(v20, v17);
  return sub_20BBD7188(v13, v41);
}

uint64_t sub_20BBD7188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationResource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BBD71EC()
{
  v1 = sub_20C13C554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_platform) == 3)
  {
    v34 = 0uLL;
    LOBYTE(v35) = 1;
    *(&v35 + 1) = 0;
    *&v36 = 0;
    WORD4(v36) = 128;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    LOBYTE(v40) = 0;
    *(&v40 + 1) = &unk_282286488;
    *&v41[0] = MEMORY[0x277D84F90];
    *(v41 + 8) = 0u;
    *(&v41[1] + 8) = 0u;
    *(&v41[2] + 1) = 0;
  }

  else
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 2;
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    v8 = sub_20C132964();
    v10 = v9;

    *(v5 + 40) = v8;
    *(v5 + 48) = v10;
    *(v5 + 24) = 0;
    *(v5 + 56) = 0u;
    *(v5 + 72) = 0u;
    *(v5 + 88) = 0u;
    *(v5 + 32) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_20C14F980;
    *(v11 + 32) = v5 | 0x1000000000000006;
    v34 = 0uLL;
    LOBYTE(v35) = 1;
    *(&v35 + 1) = 0;
    *&v36 = 0;
    WORD4(v36) = 128;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    LOBYTE(v40) = 0;
    *(&v40 + 1) = v11;
    *&v41[0] = MEMORY[0x277D84F90];
    *(v41 + 8) = 0u;
    *(&v41[1] + 8) = 0u;
    *(&v41[2] + 1) = 0;
  }

  v42 = 2;
  nullsub_1(&v34);
  v12 = v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row;
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 144);
  v43[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 128);
  v43[9] = v13;
  v44 = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 160);
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 80);
  v43[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 64);
  v43[5] = v14;
  v15 = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 112);
  v43[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 96);
  v43[7] = v15;
  v16 = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 16);
  v43[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row);
  v43[1] = v16;
  v17 = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 48);
  v43[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 32);
  v43[3] = v17;
  v18 = v41[2];
  *(v12 + 128) = v41[1];
  *(v12 + 144) = v18;
  *(v12 + 160) = v42;
  v19 = v39;
  *(v12 + 64) = v38;
  *(v12 + 80) = v19;
  v20 = v41[0];
  *(v12 + 96) = v40;
  *(v12 + 112) = v20;
  v21 = v35;
  *v12 = v34;
  *(v12 + 16) = v21;
  v22 = v37;
  *(v12 + 32) = v36;
  *(v12 + 48) = v22;
  sub_20B634408(v43);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v25 = sub_20B61C8CC(v0, result);
      if (v26)
      {
        v28 = v25;
        v29 = v26;
        v30 = v27;
        v31 = v0;
        sub_20B5E2E18();
        *v4 = sub_20C13D374();
        (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
        v32 = sub_20C13C584();
        result = (*(v2 + 8))(v4, v1);
        if ((v32 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B61F868(v28, v29, v30, v31, 0, v24);
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

uint64_t sub_20BBD75F8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI12LoadingShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LoadingShelf()
{
  result = qword_27C76BAE0;
  if (!qword_27C76BAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BBD7730()
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

uint64_t sub_20BBD77E0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI12LoadingShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BBD7858@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row + 32);
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

uint64_t sub_20BBD7908()
{
  v0 = sub_20BBFEFF0();
  sub_20B51C88C(0, &qword_27C7654B0);
  v1 = objc_opt_self();
  v2 = [v1 kilocalorieUnit];
  v3 = sub_20C13D5F4();

  if (v3)
  {

    return 1;
  }

  else
  {
    v5 = [v1 largeCalorieUnit];
    v6 = sub_20C13D5F4();

    if (v6)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_20BBD7A5C()
{
  v0 = sub_20C134864();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_state))
    {
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), *(result + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24));
      sub_20C13CE94();
      sub_20C134854();
      sub_20C13A464();
      sub_20C13A164();

      return (*(v1 + 8))(v3, v0);
    }
  }

  return result;
}

void sub_20BBD7BD8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 72) + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(0, 0, ObjectType, v4);
    }

    else
    {
    }
  }
}

uint64_t sub_20BBD7CF4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v2 = Strong + OBJC_IVAR____TtC9SeymourUI21SessionViewController_miniPlayerHost;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v3 = *(v2 + 8);
        ObjectType = swift_getObjectType();
        (*(v3 + 8))(Strong, ObjectType, v3);
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BBD7DB8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_20BFE6278();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_20BBD7E28()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = *(v1 + 136);
      v5 = objc_allocWithZone(type metadata accessor for SessionRoutePickerViewController());
      v6 = sub_20B961894(v4);
      [v6 setModalPresentationStyle_];
      [v3 presentViewController:v6 animated:1 completion:0];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_20BBD7EF8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_20B97F5B4();
    v2 = swift_allocObject();
    swift_weakInit();
    sub_20BC001A8(v1, v2, 0.15);
  }

  return result;
}

uint64_t sub_20BBD7F98()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_20BDE3794();
    v2 = swift_allocObject();
    swift_weakInit();
    sub_20BC009D8(v1, v2, 0.15);
  }

  return result;
}

void sub_20BBD8050()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 80);

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_20BB9A740(1);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_20BBD80F8()
{
  v0 = sub_20C138284();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAF8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-v5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_20C13A724();
    (*(v1 + 56))(v6, 0, 1, v0);
    v9 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_countdown;
    swift_beginAccess();
    sub_20B5DF2D4(v6, v8 + v9, &qword_27C76BAF8);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13A724();
    sub_20BBF27DC(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20BBD83F0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BBD9A10();
  }

  return result;
}

uint64_t sub_20BBD84A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11[-v1];
  v3 = sub_20C138184();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_20C13A694();
    (*(v4 + 16))(v2, v6, v3);
    (*(v4 + 56))(v2, 0, 1, v3);
    v9 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_playback;
    swift_beginAccess();
    sub_20B5DF2D4(v2, v8 + v9, &unk_27C768AF0);
    swift_endAccess();
    v10 = sub_20C138174();
    if ((v10 & 0x100000000) != 0 && v10 >= 3u)
    {
      sub_20BBF9564(7);
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_20BBD86DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7[-v1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_20C13A8F4();
    v5 = sub_20C1337D4();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
    v6 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_termination;
    swift_beginAccess();
    sub_20B5DF2D4(v2, v4 + v6, &unk_27C765090);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20BBD8810()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_20C13AE94();
    v4 = sub_20C134A94();
    (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
    sub_20B52A094(v2);

    return sub_20B520158(v2, &unk_27C768AD0);
  }

  return result;
}

uint64_t sub_20BBD894C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_20C138584();
    sub_20BBDF764(v1);
  }

  return result;
}

void sub_20BBD89C4()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v0 = sub_20C1384C4();
    sub_20BBDCDD4(v0);
  }
}

uint64_t sub_20BBD8A38()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_20C1385D4();
    v3 = v2;
    v5 = v4;
    v6 = sub_20C1385C4();
    sub_20BBEF550(v1, v3, v5, v6, v7, v8);
  }

  return result;
}

uint64_t sub_20BBD8AD4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B8B4974(v1);
  }

  return result;
}

uint64_t sub_20BBD8B34()
{
  v0 = sub_20C136784();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13B334();
    v5 = sub_20C136774();
    v7 = v6;
    v9 = v8;
    (*(v1 + 8))(v3, v0);
    sub_20BBF1F50(v5, v7, v9 & 1);

    return sub_20B583F4C(v5, v7, v9 & 1);
  }

  return result;
}

uint64_t sub_20BBD8CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v10);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_20BBD8DD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7[-v1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_20C13AED4();
    v5 = sub_20C134C04();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
    v6 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_gymKitConnection;
    swift_beginAccess();
    sub_20B5DF2D4(v2, v4 + v6, &unk_27C7650F0);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20BBD8F2C()
{
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_audioSessionCoordinator);
  sub_20C138F44();
  sub_20BC026A4(&qword_27C76C6B0, MEMORY[0x277D541D0]);
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BA7DB08, v2, v1);
}

uint64_t sub_20BBD9014()
{
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_audioSessionCoordinator);
  sub_20C138F44();
  sub_20BC026A4(&qword_27C76C6B0, MEMORY[0x277D541D0]);
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BBD90DC, v2, v1);
}

uint64_t sub_20BBD90DC()
{
  sub_20C138F14();
  v1 = *(v0 + 8);

  return v1();
}

id *SessionPresenter.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_brokerDistributedSessionRetryTimer;
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_brokerDistributedSessionRetryTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_20C13D3D4();
    swift_unknownObjectRelease();
  }

  *(v0 + v2) = 0;
  swift_unknownObjectRelease();
  sub_20B583E6C((v0 + 2));

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_activityTypeBehavior;
  v4 = sub_20C137254();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_assetClient);
  v5 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogWorkout;
  v6 = sub_20C1344C4();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_multiUserClient);
  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogClient);
  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_contentAvailabilityClient);

  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionPreferenceClient);
  sub_20BC0245C(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutSessionConfiguration, type metadata accessor for WorkoutSessionConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_privacyPreferenceClient);

  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_remoteBrowsingSource);
  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient);
  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_healthStore);
  sub_20BC0245C(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionOrigin, MEMORY[0x277D4DFB8]);

  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_timerProvider);

  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_standaloneWorkoutTimeProvider);

  sub_20B520158(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_playback, &unk_27C768AF0);
  sub_20B520158(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_startDate, &qword_27C762AC0);
  sub_20B520158(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutDeviceConnection, &unk_27C765CB0);
  sub_20B520158(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_heartRateDeviceConnection, &unk_27C767260);
  sub_20B520158(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_countdown, &qword_27C76BAF8);
  sub_20B520158(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_initiatedGroupActivity, &unk_27C7622A0);
  sub_20B520158(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_gymKitConnection, &unk_27C7650F0);
  sub_20B520158(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_termination, &unk_27C765090);
  sub_20B520158(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workout, &unk_27C768AC0);
  sub_20B583ECC(*(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_onTransitioningToPostSession));
  sub_20B583ECC(*(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_onSessionCreationError));
  sub_20B583ECC(*(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_onWillPresentSessionSummary));
  swift_unknownObjectRelease();
  v7 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter__showEstimatedCaloriePrompt;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762648);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  return v1;
}

uint64_t SessionPresenter.__deallocating_deinit()
{
  SessionPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_20BBD9678(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_20BBD96F8(a2, a1);
  }

  return result;
}

uint64_t sub_20BBD96F8(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_20B9C7BD0();
  sub_20C13A764();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20BB9AC20(1.0);
    swift_unknownObjectRelease();
  }

  v5 = *(v2 + 32);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v8 = v5 + OBJC_IVAR____TtC9SeymourUI26SessionBackgroundPresenter_display;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 24);

    v11(sub_20BC02AC4, v7, ObjectType, v9, 1.0);

    swift_unknownObjectRelease();
  }

  else
  {

    sub_20BBD98B0(v12, a1, a2);
  }
}

uint64_t sub_20BBD98B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 72);

    v7 = v6 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v10 + 56))(ObjectType, v10, 0.5, 0.5);
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = swift_unknownObjectWeakLoadStrong();

    if (v13)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = a2;
      *(v14 + 24) = a3;

      sub_20BFE713C(sub_20B5E4150, v14, 0.5, 0.5);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_20BBD9A10()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_state) == 2)
  {
    sub_20C13B4A4();
    v6 = sub_20C13BB74();
    v7 = sub_20C13D1F4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20B517000, v6, v7, "Ignoring remote display connection as session has ended", v8, 2u);
      MEMORY[0x20F2F6A40](v8, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_20B680E78();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_20BFE6790();
      swift_unknownObjectRelease();
    }

    v9 = sub_20C135154();
    if (!v10)
    {
      v9 = sub_20C135104();
    }

    v11 = v9;
    v12 = v10;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = *(Strong + OBJC_IVAR____TtC9SeymourUI18SessionCastingView_castingLabel);
      if (qword_27C760A80 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_20C14F980;
      *(v15 + 56) = MEMORY[0x277D837D0];
      *(v15 + 64) = sub_20B5D91B8();
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      sub_20C13C9A4();
      v18 = sub_20C13C914();

      [v14 setText_];
      swift_unknownObjectRelease();
      v16 = v18;
    }

    else
    {
    }
  }
}

id sub_20BBD9CFC()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  sub_20C13B4A4();
  sub_20C13BB64();
  v9 = *(v3 + 8);
  v9(v8, v2);
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_state) == 2)
  {
    sub_20C13B4A4();
    v10 = sub_20C13BB74();
    v11 = sub_20C13D1F4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20B517000, v10, v11, "State is ended, casting view should already be dismissed", v12, 2u);
      MEMORY[0x20F2F6A40](v12, -1, -1);
    }

    return (v9)(v5, v2);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      [*(Strong + OBJC_IVAR____TtC9SeymourUI21SessionViewController_castingView) removeFromSuperview];
      result = [v15 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v16 = result;
      [result addSubview_];

      sub_20BFE31BC();
      swift_unknownObjectRelease();
    }

    return sub_20B67E598();
  }
}

uint64_t sub_20BBD9F50()
{
  v1 = v0;
  v2 = sub_20C138284();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    *(v12 + 4) = 0x3FE3333333333333;
    _os_log_impl(&dword_20B517000, v10, v11, "[Countdown] Starting countdown with start time delay: %{public}f", v12, 0xCu);
    MEMORY[0x20F2F6A40](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_20C13CEC4();
  sub_20C13CE94();
  sub_20C138264();
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), *(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24));
  sub_20C13A464();
  sub_20C13A144();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20BBDA1C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - v4;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), *(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24));
  sub_20C13A0E4();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = sub_20C137CB4();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_20BC02A64;
  *(v12 + 24) = v10;

  v11(sub_20B52F238, v12);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20BBDA434(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BD50);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = &v46 - v3;
  v4 = sub_20C135024();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v47 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v49 = sub_20C13BB84();
  v13 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764790);
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v19 = sub_20C137EA4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B52F9E8(v53, v18, &qword_27C764790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20B520158(v18, &qword_27C764790);
    sub_20C13B4A4();
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20B517000, v23, v24, "Expected session when tapping exit.", v25, 2u);
      MEMORY[0x20F2F6A40](v25, -1, -1);
    }

    (*(v13 + 8))(v15, v49);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_20BBF9564(10);
    }
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    sub_20C137CE4();
    v27 = sub_20C134CD4();
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    if (v29(v12, 1, v27) == 1)
    {
      sub_20B520158(v12, &unk_27C768B10);
    }

    else
    {
      v53 = v20;
      v30 = v19;
      v31 = sub_20C134CB4();
      v33 = v32;
      v35 = v34;
      v36 = v12;
      v37 = *(v28 + 8);
      v37(v36, v27);
      if (v35)
      {
        v19 = v30;
        v20 = v53;
        if (v31 == 1)
        {
          v38 = v48;
          sub_20C137CE4();
          if (v29(v38, 1, v27) != 1)
          {
            v40 = v46;
            sub_20C134CC4();
            v37(v38, v27);
            v41 = v19;
            v43 = v50;
            v42 = v51;
            v44 = v47;
            (*(v50 + 32))(v47, v40, v51);
            v45 = v52;
            (*(v43 + 16))(v52, v44, v42);
            (*(v43 + 56))(v45, 0, 1, v42);
            sub_20BBDAACC(v45);
            sub_20B520158(v45, &qword_27C76BD50);
            (*(v43 + 8))(v44, v42);
            return (*(v20 + 8))(v22, v41);
          }

          sub_20B520158(v38, &unk_27C768B10);
        }
      }

      else
      {
        sub_20B583F4C(v31, v33, 0);
        v19 = v30;
        v20 = v53;
      }
    }

    v39 = v52;
    (*(v50 + 56))(v52, 1, 1, v51);
    sub_20BBDAACC(v39);
    sub_20B520158(v39, &qword_27C76BD50);
    return (*(v20 + 8))(v22, v19);
  }

  return result;
}

uint64_t sub_20BBDAACC(void (*a1)(char *, uint64_t, uint64_t))
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAF8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_countdown;
    v11 = Strong;
    swift_beginAccess();
    sub_20B52F9E8(v11 + v10, v8, &qword_27C76BAF8);

    v12 = sub_20C138284();
    if ((*(*(v12 - 8) + 48))(v8, 1, v12) != 1)
    {
      sub_20B520158(v8, &qword_27C76BAF8);
LABEL_10:
      v19 = sub_20C135024();
      v20 = (*(*(v19 - 8) + 48))(a1, 1, v19);
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      sub_20BBDAE74(a1, v20 == 1);
    }
  }

  else
  {
    v13 = sub_20C138284();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  sub_20B520158(v8, &qword_27C76BAF8);
  v14 = sub_20C135024();
  if ((*(*(v14 - 8) + 48))(a1, 1, v14) != 1)
  {
    goto LABEL_10;
  }

  sub_20C13B4A4();
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_20B517000, v15, v16, "Session hasn't started countdown. Ending session without confirmation.", v17, 2u);
    MEMORY[0x20F2F6A40](v17, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BBF9564(8);
  }

  return result;
}

uint64_t sub_20BBDAE74(void (*a1)(char *, uint64_t, uint64_t), int a2)
{
  v123 = a2;
  v112 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BD50);
  MEMORY[0x28223BE20](v2 - 8);
  v113 = &v105 - v3;
  v4 = sub_20C135024();
  v121 = *(v4 - 8);
  v122 = v4;
  MEMORY[0x28223BE20](v4);
  v106 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v5;
  MEMORY[0x28223BE20](v6);
  v120 = &v105 - v7;
  v8 = type metadata accessor for PageAlertAction();
  v116 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v108 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v107 = &v105 - v11;
  MEMORY[0x28223BE20](v12);
  v119 = &v105 - v13;
  MEMORY[0x28223BE20](v14);
  v124 = &v105 - v15;
  v16 = sub_20C139654();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C13BB84();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v24 = sub_20C13BB74();
  v25 = sub_20C13D1F4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_20B517000, v24, v25, "Presenting end workout confirmation dialog", v26, 2u);
    MEMORY[0x20F2F6A40](v26, -1, -1);
  }

  v109 = v8;

  (*(v21 + 8))(v23, v20);
  v27 = *(v125 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_eventHub);
  v28 = *(v125 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_eventHub + 8);
  swift_getObjectType();
  sub_20C139644();
  sub_20BC026A4(&qword_27C76BD58, MEMORY[0x277D54450]);
  v117 = v28;
  v118 = v27;
  sub_20C13A764();
  (*(v17 + 8))(v19, v16);
  if (v123)
  {
    swift_getObjectType();
    sub_20C138714();
  }

  v29 = sub_20C1344B4();
  v31 = v30;
  v126[0] = v29;
  v126[1] = v30;
  v33 = v32 & 1;
  v127 = v32 & 1;
  v128 = xmmword_20C14F2B0;
  v129 = 1;
  sub_20B590B28();
  sub_20B590B7C();
  v34 = sub_20C133BF4();
  sub_20B583F4C(v29, v31, v33);
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v36 = objc_opt_self();
  v37 = [v36 bundleForClass_];
  LODWORD(v111) = v34;
  v114 = sub_20C132964();
  v115 = v38;

  v110 = ObjCClassFromMetadata;
  v39 = [v36 bundleForClass_];
  v40 = sub_20C132964();
  v42 = v41;

  if (_UISolariumEnabled())
  {
    v43 = 0;
  }

  else
  {
    v43 = 2;
  }

  v44 = swift_allocObject();
  swift_weakInit();
  v45 = v124;
  sub_20C132ED4();
  v46 = v109;
  v47 = (v45 + v109[6]);
  *v47 = v40;
  v47[1] = v42;
  *(v45 + v46[5]) = v43;
  v48 = (v45 + v46[7]);
  *v48 = sub_20BC026EC;
  v48[1] = v44;
  v49 = v113;
  sub_20B52F9E8(v112, v113, &qword_27C76BD50);
  v51 = v121;
  v50 = v122;
  if ((*(v121 + 48))(v49, 1, v122) == 1)
  {
    sub_20B520158(v49, &qword_27C76BD50);
    v52 = [objc_opt_self() bundleForClass_];
    v53 = sub_20C132964();
    v55 = v54;

    v56 = swift_allocObject();
    swift_weakInit();
    v57 = v119;
    sub_20C132ED4();
    v58 = (v57 + v46[6]);
    *v58 = v53;
    v58[1] = v55;
    *(v57 + v46[5]) = 1;
    v59 = (v57 + v46[7]);
    *v59 = sub_20BC026F4;
    v59[1] = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
    v60 = *(v116 + 72);
    v61 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_20C14F320;
    v63 = v62 + v61;
    sub_20BC023F4(v57, v63, type metadata accessor for PageAlertAction);
    sub_20BC023F4(v45, v63 + v60, type metadata accessor for PageAlertAction);
    sub_20BC0245C(v57, type metadata accessor for PageAlertAction);
  }

  else
  {
    v112 = *(v51 + 32);
    v112(v120, v49, v50);
    v64 = objc_opt_self();
    v65 = v110;
    v66 = [v64 bundleForClass_];
    v67 = sub_20C132964();
    v111 = v68;

    v69 = [v64 bundleForClass_];
    v70 = sub_20C132964();
    v113 = v71;

    v72 = swift_allocObject();
    swift_weakInit();
    v73 = v119;
    sub_20C132ED4();
    v74 = (v73 + v46[6]);
    v75 = v111;
    *v74 = v67;
    v74[1] = v75;
    *(v73 + v46[5]) = 1;
    v76 = (v73 + v46[7]);
    *v76 = sub_20BC02724;
    v76[1] = v72;
    v77 = swift_allocObject();
    swift_weakInit();
    v78 = v121;
    v79 = v106;
    v80 = v122;
    (*(v121 + 16))(v106, v120, v122);
    v81 = (*(v78 + 80) + 24) & ~*(v78 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = v77;
    v112((v82 + v81), v79, v80);
    v83 = v107;
    sub_20C132ED4();
    v84 = (v83 + v46[6]);
    v85 = v113;
    *v84 = v70;
    v84[1] = v85;
    *(v83 + v46[5]) = 1;
    v86 = (v83 + v46[7]);
    *v86 = sub_20BC02810;
    v86[1] = v82;
    v87 = [objc_opt_self() bundleForClass_];
    v88 = sub_20C132964();
    v90 = v89;

    v91 = v108;
    sub_20C132ED4();
    v92 = (v91 + v46[6]);
    *v92 = v88;
    v92[1] = v90;
    *(v91 + v46[5]) = 2;
    v93 = (v91 + v46[7]);
    *v93 = nullsub_1;
    v93[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
    v94 = *(v116 + 72);
    v95 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_20C1517D0;
    v96 = v62 + v95;
    sub_20BC023F4(v73, v96, type metadata accessor for PageAlertAction);
    sub_20BC023F4(v83, v96 + v94, type metadata accessor for PageAlertAction);
    sub_20BC000F4(v91, v96 + 2 * v94);
    sub_20BC0245C(v83, type metadata accessor for PageAlertAction);
    sub_20BC0245C(v73, type metadata accessor for PageAlertAction);
    (*(v121 + 8))(v120, v122);
  }

  v97 = sub_20C138104();
  LOBYTE(v97) = v97 == sub_20C138104();
  type metadata accessor for SessionDismissalAlertPresenter();
  v98 = swift_allocObject();
  *(v98 + 24) = 0;
  swift_unknownObjectWeakInit();
  v99 = MEMORY[0x277D84F90];
  *(v98 + 32) = v62;
  *(v98 + 40) = v99;
  *(v98 + 48) = 0;
  *(v98 + 56) = 0;
  v100 = v115;
  *(v98 + 64) = v114;
  *(v98 + 72) = v100;
  *(v98 + 80) = v97;
  v101 = v117;
  *(v98 + 88) = v118;
  *(v98 + 96) = v101;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v102 = sub_20C13A914();
  *(v98 + 120) = v123 & 1;
  *(v98 + 104) = 0;
  *(v98 + 112) = v102;
  swift_getObjectType();
  sub_20C13A6A4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v126);
  swift_getObjectType();
  sub_20C13AA24();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v126);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BC01208(v98, 0, 0, Strong, sub_20BBFFAB0, &block_descriptor_451);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_20BC0245C(v124, type metadata accessor for PageAlertAction);
}

uint64_t sub_20BBDBE20()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20C138724();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BBDBEB4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v47 = v11;
    sub_20B51CC64(result + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_multiUserClient, v52);

    v50 = v12;
    __swift_project_boxed_opaque_existential_1(v52, v52[3]);
    v40 = v8;
    sub_20C13A254();
    v17 = swift_allocObject();
    v17[2] = 0xD000000000000020;
    v17[3] = 0x800000020C1AB570;
    v17[4] = 1144;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_20B5DF5EC;
    *(v18 + 24) = v17;
    v49 = v13;
    v46 = *(v4 + 16);
    v19 = v51;
    v46(v51, v8, v3);
    v48 = v15;
    v20 = *(v4 + 80);
    v44 = (v20 + 16) & ~v20;
    v45 = v20;
    v21 = v5 + v44;
    v22 = v44;
    v23 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = v23;
    v24 = swift_allocObject();
    v41 = a2;
    v43 = *(v4 + 32);
    v43(v24 + v22, v19, v3);
    v25 = (v24 + v23);
    *v25 = sub_20B5DF4B0;
    v25[1] = v18;
    v26 = v40;
    v27 = v47;
    sub_20C137C94();
    v28 = *(v4 + 8);
    v28(v26, v3);
    __swift_destroy_boxed_opaque_existential_1(v52);
    v29 = swift_allocObject();
    v30 = v41;
    *(v29 + 16) = sub_20BC02884;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_20B5DF6A0;
    *(v31 + 24) = v29;
    v46(v26, v27, v3);
    v32 = v42;
    v33 = swift_allocObject();
    v43(v33 + v44, v26, v3);
    v34 = (v33 + v32);
    *v34 = sub_20B5DF4E8;
    v34[1] = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
    v35 = v48;
    sub_20C137C94();
    v28(v27, v3);
    v36 = v50;
    v37 = sub_20C137CB4();
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    v37(sub_20B5DF6DC, v38);

    return (*(v49 + 8))(v35, v36);
  }

  return result;
}

BOOL sub_20BBDC3D8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20BBF9564(4);
  }

  return Strong == 0;
}

uint64_t sub_20BBDC43C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7645F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v10 = *(v9 - 8);
  v26 = v9;
  v27 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B594();
  sub_20C13BB64();
  (*(v14 + 8))(v16, v13);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_multiUserClient), *(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_multiUserClient + 24));
  sub_20C13A274();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_20BC02658;
  *(v18 + 24) = v17;
  (*(v3 + 16))(v5, v8, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v5, v2);
  v21 = (v20 + ((v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_20BC02674;
  v21[1] = v18;
  sub_20C137C94();
  (*(v3 + 8))(v8, v2);
  v22 = v26;
  v23 = sub_20C137CB4();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v23(sub_20B5DF6DC, v24);

  return (*(v27 + 8))(v12, v22);
}

uint64_t sub_20BBDC838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v40 - v5;
  v6 = sub_20C135024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BB84();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13A484();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C134FF4();
  v18 = v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v42 = a2;
  v48 = a1;
  sub_20BC023F4(Strong + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionOrigin, v15, MEMORY[0x277D4DFB8]);

  sub_20C13A464();
  sub_20BC0245C(v15, MEMORY[0x277D4DFB8]);
  v20 = sub_20C13A324();
  v22 = v21;

  if (v16 == v20 && v18 == v22)
  {

    v26 = v48;
  }

  else
  {
    v24 = sub_20C13DFF4();

    v26 = v48;
    if ((v24 & 1) == 0)
    {
      return result;
    }
  }

  sub_20C13B594();
  (*(v7 + 16))(v9, v26, v6);
  v27 = sub_20C13BB74();
  v28 = sub_20C13D1F4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v7;
    v30 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v49[0] = v41;
    *v30 = 136315138;
    sub_20BC026A4(&qword_27C766E98, MEMORY[0x277D51510]);
    v31 = sub_20C13DFA4();
    v33 = v32;
    (*(v29 + 8))(v9, v6);
    v34 = sub_20B51E694(v31, v33, v49);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_20B517000, v27, v28, "Client: Leaving activity because of terminal session condition for %s", v30, 0xCu);
    v35 = v41;
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x20F2F6A40](v35, -1, -1);
    MEMORY[0x20F2F6A40](v30, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  (*(v46 + 8))(v12, v47);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B51CC64(result + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_multiUserClient, v49);

    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    v36 = v43;
    sub_20C13A234();
    v37 = v45;
    v38 = sub_20C137CB4();
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    v38(sub_20B5DF6DC, v39);

    (*(v44 + 8))(v36, v37);
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  return result;
}

void sub_20BBDCDD4(void *a1)
{
  v2 = v1;
  v51 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = v46 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30);
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v50);
  MEMORY[0x28223BE20](v7);
  v9 = v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v11 = *(v10 - 8);
  v52 = v10;
  v53 = v11;
  MEMORY[0x28223BE20](v10);
  v49 = v46 - v12;
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v14 + 8))(v16, v13);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogClient), *(v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogClient + 24));
  v46[1] = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogWorkout;
  v48 = v2;
  sub_20C134324();
  sub_20C13A0C4();

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v19 = v51;
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_20BC02534;
  *(v20 + 24) = v18;
  v21 = v50;
  (*(v5 + 16))(v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v50);
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v5 + 32))(v23 + v22, v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  v24 = (v23 + ((v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20B80E4B0;
  v24[1] = v20;
  v25 = v19;
  v26 = v49;
  sub_20C137C94();
  v27 = v48;
  (*(v5 + 8))(v9, v21);
  v28 = v52;
  v29 = v26;
  v30 = sub_20C137CB4();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v30(sub_20B5DF6DC, v31);

  (*(v53 + 8))(v29, v28);
  v32 = sub_20C13AAC4();
  v59 = v32;
  v60 = sub_20BC026A4(&qword_281103AF0, MEMORY[0x277D4F200]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  (*(*(v32 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4F1F8], v32);
  LOBYTE(v32) = sub_20C1383C4();
  __swift_destroy_boxed_opaque_existential_1(v57);
  if (v32)
  {
    v34 = sub_20C1344B4();
    v36 = v35;
    v57[0] = v34;
    v57[1] = v35;
    v38 = v37 & 1;
    v58 = v37 & 1;
    v54 = 0;
    v55 = 0;
    v56 = 1;
    sub_20B590B28();
    sub_20B590B7C();
    v39 = sub_20C133BF4();
    v40 = sub_20B583F4C(v34, v36, v38);
    if (v39)
    {
      v41 = *(*(v27 + 128) + OBJC_IVAR____TtC9SeymourUI27AudioLanguageTrackPresenter_state);
      MEMORY[0x28223BE20](v40);
      v46[-2] = v25;
      v46[-1] = v42;

      os_unfair_lock_lock(v41 + 15);
      sub_20BC0262C(&v41[4]);
      os_unfair_lock_unlock(v41 + 15);
    }

    v43 = sub_20C13CDF4();
    v44 = v47;
    (*(*(v43 - 8) + 56))(v47, 1, 1, v43);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v27;

    sub_20B6383D0(0, 0, v44, &unk_20C172510, v45);
  }

  if (*(v27 + 112))
  {
    sub_20C0E4ECC(v25);
  }

  sub_20B932908(v25, *(v27 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_timeline));
}

void sub_20BBDD4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v13 = sub_20C1344C4();
  v3 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_mediaTagStringBuilder, v15);

    __swift_project_boxed_opaque_existential_1(v15, v16);
    sub_20C135AD4();
    v7 = sub_20C138544();

    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v8 = swift_weakLoadStrong();
  if (v8)
  {
    sub_20B51CC64(v8 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_mediaTagStringBuilder, v15);

    __swift_project_boxed_opaque_existential_1(v15, v16);
    sub_20C1359F4();
    v9 = sub_20C138544();

    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v9 = 0;
  }

  sub_20C135AA4();
  sub_20C134344();
  (*(v3 + 8))(v5, v13);
  if (v7)
  {
    v10 = [v7 string];
    sub_20C13C954();
  }

  sub_20C13D104();

  if (v9)
  {
    v11 = [v9 string];
    sub_20C13C954();
  }

  sub_20C13D114();

  sub_20C13D124();
}

uint64_t sub_20BBDD7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  v4[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  v4[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  v4[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  v4[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  v4[26] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD40);
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BBDDDEC, 0, 0);
}

uint64_t sub_20BBDDDEC()
{
  v1 = v0[29];
  __swift_project_boxed_opaque_existential_1((v0[2] + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionPreferenceClient), *(v0[2] + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionPreferenceClient + 24));
  sub_20C139C94();
  v2 = swift_task_alloc();
  v0[31] = v2;
  *(v2 + 16) = "SeymourUI/SessionPresenter.swift";
  *(v2 + 24) = 32;
  *(v2 + 32) = 2;
  *(v2 + 40) = 1208;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[32] = v3;
  v4 = sub_20C136194();
  v0[33] = v4;
  *v3 = v0;
  v3[1] = sub_20BBDDF38;
  v5 = v0[30];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BC02648, v2, v4);
}

uint64_t sub_20BBDDF38()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_20BBDEBF8;
  }

  else
  {
    v5 = v2[28];
    v4 = v2[29];
    v6 = v2[27];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BBDE0A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BBDE0A4()
{
  v43 = v0[30];
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v51 = v0[17];
  v52 = v0[18];
  v46 = v0[15];
  v47 = v0[16];
  v49 = v0[13];
  v50 = v0[14];
  v48 = v0[12];
  v44 = v0[11];
  v36 = v0[10];
  v37 = v0[9];
  v38 = v0[8];
  v39 = v0[7];
  v45 = v0[6];
  v40 = v0[5];
  v41 = v0[4];
  v42 = v0[3];
  v9 = v0[2];
  (*(*(v0[33] - 8) + 56))();
  __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), *(v9 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24));
  sub_20C13A464();
  v10 = sub_20C133D84();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  v11 = sub_20C135854();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  v12 = sub_20C133DD4();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = sub_20C135274();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = sub_20C134514();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = sub_20C133B04();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = sub_20C134C04();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v17 = sub_20C1368F4();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = sub_20C134914();
  (*(*(v18 - 8) + 56))(v52, 1, 1, v18);
  v19 = sub_20C133374();
  (*(*(v19 - 8) + 56))(v51, 1, 1, v19);
  v20 = sub_20C135B74();
  (*(*(v20 - 8) + 56))(v47, 1, 1, v20);
  v21 = sub_20C134CD4();
  (*(*(v21 - 8) + 56))(v46, 1, 1, v21);
  v22 = sub_20C136EB4();
  (*(*(v22 - 8) + 56))(v50, 1, 1, v22);
  v23 = sub_20C133494();
  (*(*(v23 - 8) + 56))(v49, 1, 1, v23);
  v24 = sub_20C134594();
  (*(*(v24 - 8) + 56))(v48, 1, 1, v24);
  v25 = sub_20C138184();
  (*(*(v25 - 8) + 56))(v44, 1, 1, v25);
  v26 = sub_20C1363D4();
  (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
  v27 = sub_20C1337A4();
  (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
  v28 = sub_20C1337D4();
  (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
  v29 = sub_20C134A94();
  (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
  v30 = sub_20C135364();
  (*(*(v30 - 8) + 56))(v45, 1, 1, v30);
  v31 = sub_20C136484();
  (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
  v32 = sub_20C136784();
  (*(*(v32 - 8) + 56))(v41, 1, 1, v32);
  v33 = sub_20C137FE4();
  (*(*(v33 - 8) + 56))(v42, 1, 1, v33);
  sub_20C13A174();

  sub_20B520158(v42, &unk_27C768AC0);
  sub_20B520158(v41, &unk_27C765070);
  sub_20B520158(v40, &unk_27C765CB0);
  sub_20B520158(v45, &unk_27C765080);
  sub_20B520158(v39, &unk_27C768AD0);
  sub_20B520158(v38, &unk_27C765090);
  sub_20B520158(v37, &unk_27C768AE0);
  sub_20B520158(v36, &unk_27C7650A0);
  sub_20B520158(v44, &unk_27C768AF0);
  sub_20B520158(v48, &unk_27C7650B0);
  sub_20B520158(v49, &unk_27C768B00);
  sub_20B520158(v50, &unk_27C7650C0);
  sub_20B520158(v46, &unk_27C768B10);
  sub_20B520158(v47, &unk_27C7650D0);
  sub_20B520158(v51, &unk_27C768B20);
  sub_20B520158(v52, &unk_27C7650E0);
  sub_20B520158(v8, &unk_27C767260);
  sub_20B520158(v7, &unk_27C7650F0);
  sub_20B520158(v6, &qword_27C768B30);
  sub_20B520158(v5, &unk_27C765050);
  sub_20B520158(v4, &unk_27C765100);
  sub_20B520158(v3, &unk_27C7687F0);
  sub_20B520158(v2, &unk_27C76BBF0);
  sub_20B520158(v1, &unk_27C765120);
  sub_20B520158(v43, &unk_27C765110);

  v34 = v0[1];

  return v34();
}

uint64_t sub_20BBDEBF8()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  v43 = v0[30];
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v51 = v0[17];
  v52 = v0[18];
  v46 = v0[15];
  v47 = v0[16];
  v49 = v0[13];
  v50 = v0[14];
  v48 = v0[12];
  v44 = v0[11];
  v36 = v0[10];
  v37 = v0[9];
  v38 = v0[8];
  v39 = v0[7];
  v45 = v0[6];
  v40 = v0[5];
  v41 = v0[4];
  v42 = v0[3];
  v9 = v0[2];
  (*(*(v0[33] - 8) + 56))();
  __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), *(v9 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24));
  sub_20C13A464();
  v10 = sub_20C133D84();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  v11 = sub_20C135854();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  v12 = sub_20C133DD4();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = sub_20C135274();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = sub_20C134514();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = sub_20C133B04();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = sub_20C134C04();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v17 = sub_20C1368F4();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = sub_20C134914();
  (*(*(v18 - 8) + 56))(v52, 1, 1, v18);
  v19 = sub_20C133374();
  (*(*(v19 - 8) + 56))(v51, 1, 1, v19);
  v20 = sub_20C135B74();
  (*(*(v20 - 8) + 56))(v47, 1, 1, v20);
  v21 = sub_20C134CD4();
  (*(*(v21 - 8) + 56))(v46, 1, 1, v21);
  v22 = sub_20C136EB4();
  (*(*(v22 - 8) + 56))(v50, 1, 1, v22);
  v23 = sub_20C133494();
  (*(*(v23 - 8) + 56))(v49, 1, 1, v23);
  v24 = sub_20C134594();
  (*(*(v24 - 8) + 56))(v48, 1, 1, v24);
  v25 = sub_20C138184();
  (*(*(v25 - 8) + 56))(v44, 1, 1, v25);
  v26 = sub_20C1363D4();
  (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
  v27 = sub_20C1337A4();
  (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
  v28 = sub_20C1337D4();
  (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
  v29 = sub_20C134A94();
  (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
  v30 = sub_20C135364();
  (*(*(v30 - 8) + 56))(v45, 1, 1, v30);
  v31 = sub_20C136484();
  (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
  v32 = sub_20C136784();
  (*(*(v32 - 8) + 56))(v41, 1, 1, v32);
  v33 = sub_20C137FE4();
  (*(*(v33 - 8) + 56))(v42, 1, 1, v33);
  sub_20C13A174();

  sub_20B520158(v42, &unk_27C768AC0);
  sub_20B520158(v41, &unk_27C765070);
  sub_20B520158(v40, &unk_27C765CB0);
  sub_20B520158(v45, &unk_27C765080);
  sub_20B520158(v39, &unk_27C768AD0);
  sub_20B520158(v38, &unk_27C765090);
  sub_20B520158(v37, &unk_27C768AE0);
  sub_20B520158(v36, &unk_27C7650A0);
  sub_20B520158(v44, &unk_27C768AF0);
  sub_20B520158(v48, &unk_27C7650B0);
  sub_20B520158(v49, &unk_27C768B00);
  sub_20B520158(v50, &unk_27C7650C0);
  sub_20B520158(v46, &unk_27C768B10);
  sub_20B520158(v47, &unk_27C7650D0);
  sub_20B520158(v51, &unk_27C768B20);
  sub_20B520158(v52, &unk_27C7650E0);
  sub_20B520158(v8, &unk_27C767260);
  sub_20B520158(v7, &unk_27C7650F0);
  sub_20B520158(v6, &qword_27C768B30);
  sub_20B520158(v5, &unk_27C765050);
  sub_20B520158(v4, &unk_27C765100);
  sub_20B520158(v3, &unk_27C7687F0);
  sub_20B520158(v2, &unk_27C76BBF0);
  sub_20B520158(v1, &unk_27C765120);
  sub_20B520158(v43, &unk_27C765110);

  v34 = v0[1];

  return v34();
}

uint64_t sub_20BBDF764(void *a1)
{
  v2 = type metadata accessor for PageAlertAction();
  v3 = *(v2 - 8);
  v152 = v2;
  v153 = v3;
  MEMORY[0x28223BE20](v2);
  v159 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641B0);
  v144 = *(v5 - 8);
  v145 = v5;
  MEMORY[0x28223BE20](v5);
  v142 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v6;
  MEMORY[0x28223BE20](v7);
  v143 = &v135 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v149 = *(v9 - 8);
  v150 = v9;
  MEMORY[0x28223BE20](v9);
  v148 = &v135 - v10;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v147 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v146 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v139 = &v135 - v13;
  MEMORY[0x28223BE20](v14);
  v140 = &v135 - v15;
  v155 = v16;
  MEMORY[0x28223BE20](v17);
  v154 = &v135 - v18;
  v19 = sub_20C13BB84();
  v157 = *(v19 - 8);
  v158 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v135 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD18);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v135 - v26;
  v28 = sub_20C134144();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v135 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v135 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v135 - v36;
  v38 = a1;
  v151 = a1;
  sub_20C134134();
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_20B520158(v27, &unk_27C76BD18);
    v39 = v147;
  }

  else
  {
    v137 = v21;
    (*(v29 + 32))(v37, v27, v28);
    sub_20C13B574();
    v40 = *(v29 + 16);
    v138 = v37;
    v40(v34, v37, v28);
    v41 = sub_20C13BB74();
    v42 = sub_20C13D1D4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v135 = v43;
      v136 = swift_slowAlloc();
      *v43 = 138543362;
      sub_20BC026A4(&qword_27C76BD30, MEMORY[0x277D505D8]);
      swift_allocError();
      v40(v44, v34, v28);
      v45 = _swift_stdlib_bridgeErrorToNSError();
      v46 = *(v29 + 8);
      v46(v34, v28);
      v47 = v135;
      *(v135 + 1) = v45;
      v48 = v136;
      *v136 = v45;
      v49 = v42;
      v50 = v47;
      _os_log_impl(&dword_20B517000, v41, v49, "Media Playback failed, key error encountered: %{public}@", v47, 0xCu);
      sub_20B520158(v48, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v48, -1, -1);
      MEMORY[0x20F2F6A40](v50, -1, -1);

      v51 = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    }

    else
    {

      v46 = *(v29 + 8);
      v51 = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v46(v34, v28);
    }

    (*(v157 + 8))(v24, v158);
    v52 = *(v29 + 104);
    v52(v31, *MEMORY[0x277D505C0], v28);
    sub_20BC026A4(&qword_27C76BD28, MEMORY[0x277D505D8]);
    v53 = v138;
    sub_20C13CC34();
    sub_20C13CC34();
    v46(v31, v28);
    if (v162[0] == v161 || (v52(v31, *MEMORY[0x277D505C8], v28), sub_20C13CC34(), sub_20C13CC34(), v46(v31, v28), v162[0] == v161) || (v52(v31, *MEMORY[0x277D505D0], v28), sub_20C13CC34(), sub_20C13CC34(), v46(v31, v28), v162[0] == v161))
    {
      __swift_project_boxed_opaque_existential_1((v160 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_assetClient), *(v160 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_assetClient + 24));
      v54 = v140;
      sub_20C139E74();
      v55 = swift_allocObject();
      *(v55 + 16) = sub_20BBE0A94;
      *(v55 + 24) = 0;
      v39 = v147;
      v56 = *(v147 + 16);
      v136 = v46;
      v57 = v139;
      v135 = v51;
      v58 = v156;
      v56(v139, v54, v156);
      v59 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v60 = (v155 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
      v61 = swift_allocObject();
      (*(v39 + 32))(v61 + v59, v57, v58);
      v62 = (v61 + v60);
      *v62 = sub_20B5F7764;
      v62[1] = v55;
      v63 = v154;
      sub_20C137C94();
      v64 = *(v39 + 8);
      v64(v54, v58);
      v65 = sub_20C137CB4();
      v66 = swift_allocObject();
      *(v66 + 16) = 0;
      *(v66 + 24) = 0;
      v65(sub_20B5DF6DC, v66);

      v64(v63, v58);
      v136(v138, v28);
    }

    else
    {
      v46(v53, v28);
      v39 = v147;
    }

    v21 = v137;
  }

  swift_getObjectType();
  sub_20C138714();
  sub_20BBDC43C();
  sub_20C13B574();
  v67 = v151;
  v68 = v151;
  v69 = sub_20C13BB74();
  v70 = sub_20C13D1D4();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = v21;
    v73 = swift_slowAlloc();
    v161 = v67;
    v162[0] = v73;
    *v71 = 136446210;
    v74 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v75 = sub_20C13C9D4();
    v77 = sub_20B51E694(v75, v76, v162);

    *(v71 + 4) = v77;
    _os_log_impl(&dword_20B517000, v69, v70, "Fatal MediaPlayer error: %{public}s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v73);
    MEMORY[0x20F2F6A40](v73, -1, -1);
    MEMORY[0x20F2F6A40](v71, -1, -1);

    (*(v157 + 8))(v72, v158);
  }

  else
  {

    (*(v157 + 8))(v21, v158);
  }

  LODWORD(v158) = *(v160 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_platform);
  if (sub_20C1380B4())
  {
    v78 = v146;
    _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v160 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_privacyPreferenceClient), *(v160 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_privacyPreferenceClient + 24));
    v79 = v143;
    sub_20C139BB4();
    v81 = v144;
    v80 = v145;
    v82 = v142;
    (*(v144 + 16))(v142, v79, v145);
    v83 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v84 = (v141 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
    v85 = swift_allocObject();
    (*(v81 + 32))(v85 + v83, v82, v80);
    v86 = (v85 + v84);
    *v86 = sub_20BBE0B90;
    v86[1] = 0;
    v78 = v146;
    sub_20C137C94();
    (*(v81 + 8))(v79, v80);
  }

  v87 = swift_allocObject();
  swift_weakInit();
  v88 = swift_allocObject();
  *(v88 + 16) = v87;
  *(v88 + 24) = v67;
  v89 = swift_allocObject();
  *(v89 + 16) = sub_20BC024E4;
  *(v89 + 24) = v88;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_20B5D9CB0;
  *(v90 + 24) = v89;
  v91 = v154;
  v92 = v156;
  (*(v39 + 16))(v154, v78, v156);
  v93 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v94 = (v155 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  (*(v39 + 32))(v95 + v93, v91, v92);
  v96 = (v95 + v94);
  *v96 = sub_20B5D9CCC;
  v96[1] = v90;
  v97 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v98 = v148;
  sub_20C137C94();
  (*(v39 + 8))(v78, v92);
  v99 = v150;
  v100 = sub_20C137CB4();
  v101 = swift_allocObject();
  *(v101 + 16) = 0;
  *(v101 + 24) = 0;
  v100(sub_20B52347C, v101);

  (*(v149 + 8))(v98, v99);
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v103 = objc_opt_self();
  v104 = [v103 bundleForClass_];
  v105 = sub_20C132964();
  v107 = v106;

  v162[0] = v67;
  v108 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
  v109 = sub_20C13C9D4();
  v111 = v110;
  if (sub_20C1380B4())
  {
    strcpy(v162, "\n\n[Internal] ");
    HIWORD(v162[1]) = -4864;
    MEMORY[0x20F2F4230](v109, v111);

    v113 = v162[0];
    v112 = v162[1];
  }

  else
  {

    v113 = 0;
    v112 = 0xE000000000000000;
  }

  v162[0] = v105;
  v162[1] = v107;

  MEMORY[0x20F2F4230](v113, v112);

  v156 = v162[1];
  v157 = v162[0];
  v114 = [v103 &selRef:ObjCClassFromMetadata :?speedBumpEdges + 3];
  v115 = sub_20C132964();
  v117 = v116;

  v118 = swift_allocObject();
  swift_weakInit();
  v119 = v159;
  sub_20C132ED4();
  v120 = v152;
  v121 = (v119 + *(v152 + 24));
  *v121 = v115;
  v121[1] = v117;
  *(v119 + *(v120 + 20)) = 1;
  v122 = (v119 + *(v120 + 28));
  *v122 = sub_20BC02514;
  v122[1] = v118;
  v123 = sub_20C138104();
  LOBYTE(v115) = v123 == sub_20C138104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
  v124 = (*(v153 + 80) + 32) & ~*(v153 + 80);
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_20C14F980;
  sub_20BC023F4(v119, v125 + v124, type metadata accessor for PageAlertAction);
  v126 = [v103 bundleForClass_];
  v127 = sub_20C132964();
  v129 = v128;

  type metadata accessor for DefaultPageAlertPresenter();
  v130 = swift_allocObject();
  *(v130 + 24) = 0;
  swift_unknownObjectWeakInit();
  v131 = MEMORY[0x277D84F90];
  *(v130 + 32) = v125;
  *(v130 + 40) = v131;
  *(v130 + 48) = v127;
  *(v130 + 56) = v129;
  v132 = v156;
  *(v130 + 64) = v157;
  *(v130 + 72) = v132;
  *(v130 + 80) = v115;
  *(v130 + 88) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BC01208(v130, 0, 0, Strong, sub_20BBFF48C, &block_descriptor_98);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_20BC0245C(v159, type metadata accessor for PageAlertAction);
}

BOOL sub_20BBE0AC8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20BBE0CD8(a2);
  }

  return Strong == 0;
}

uint64_t sub_20BBE0B30(uint64_t a1, uint64_t a2, int a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BBF9564(a3);
  }

  return result;
}

uint64_t sub_20BBE0B90()
{
  v0 = sub_20C135FE4();
  if ((v1 & 1) != 0 && v0 == 1)
  {

    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  else
  {
    v3 = sub_20C136074();
    sub_20BC026A4(&qword_27C76BD38, MEMORY[0x277D525A8]);
    v4 = swift_allocError();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D525A0], v3);
    *(swift_allocObject() + 16) = v4;

    return sub_20C137CA4();
  }
}

uint64_t sub_20BBE0CD8(void *a1)
{
  v3 = sub_20C13ADA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaPlaybackFailedAnalyticsEvent();
  MEMORY[0x28223BE20](v7);
  v9 = &v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_activityTypeBehavior;
  v11 = sub_20C137254();
  (*(*(v11 - 8) + 16))(v9, v1 + v10, v11);
  v12 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogWorkout;
  v13 = v7[5];
  v14 = sub_20C1344C4();
  (*(*(v14 - 8) + 16))(&v9[v13], v1 + v12, v14);
  v15 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_playback;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v15, &v9[v7[6]], &unk_27C768AF0);
  sub_20BC023F4(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionOrigin, &v9[v7[7]], MEMORY[0x277D4DFB8]);
  v16 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutDeviceConnection;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v16, &v9[v7[8]], &unk_27C765CB0);
  *&v9[v7[9]] = a1;
  swift_getObjectType();
  v21[3] = v7;
  v21[4] = sub_20BC026A4(&qword_27C76BD10, type metadata accessor for MediaPlaybackFailedAnalyticsEvent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  sub_20BC023F4(v9, boxed_opaque_existential_1, type metadata accessor for MediaPlaybackFailedAnalyticsEvent);
  v18 = a1;
  sub_20C13AD94();
  sub_20C13A764();
  (*(v4 + 8))(v6, v3);
  return sub_20BC0245C(v9, type metadata accessor for MediaPlaybackFailedAnalyticsEvent);
}

uint64_t sub_20BBE1000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a1;
  v157 = a2;
  v158 = sub_20C137EA4();
  v156 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v154 = v3;
  v155 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v146 = &v132 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  MEMORY[0x28223BE20](v6 - 8);
  v145 = &v132 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v144 = &v132 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v10 - 8);
  v143 = &v132 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v12 - 8);
  v142 = &v132 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v14 - 8);
  v153 = &v132 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v16 - 8);
  v141 = &v132 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  MEMORY[0x28223BE20](v18 - 8);
  v152 = &v132 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v20 - 8);
  v151 = &v132 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  MEMORY[0x28223BE20](v22 - 8);
  v150 = &v132 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  MEMORY[0x28223BE20](v24 - 8);
  v149 = &v132 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  MEMORY[0x28223BE20](v26 - 8);
  v148 = &v132 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v28 - 8);
  v171 = &v132 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  MEMORY[0x28223BE20](v30 - 8);
  v170 = &v132 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  MEMORY[0x28223BE20](v32 - 8);
  v169 = &v132 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v34 - 8);
  v168 = &v132 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v36 - 8);
  v167 = &v132 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v38 - 8);
  v166 = &v132 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  MEMORY[0x28223BE20](v40 - 8);
  v165 = &v132 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v42 - 8);
  v164 = &v132 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v44 - 8);
  v163 = &v132 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v46 - 8);
  v162 = &v132 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v48 - 8);
  v161 = &v132 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v50 - 8);
  v160 = &v132 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD00);
  MEMORY[0x28223BE20](v52 - 8);
  v139 = &v132 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v56 = &v132 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762D08);
  MEMORY[0x28223BE20](v57 - 8);
  v59 = &v132 - v58;
  v60 = sub_20C133D84();
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v138 = &v132 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v147 = &v132 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v65 - 8);
  v67 = &v132 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v68 - 8);
  v159 = &v132 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v72 = &v132 - v71;
  MEMORY[0x28223BE20](v73);
  v75 = &v132 - v74;
  v140 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_remoteBrowsingSource), *(v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_remoteBrowsingSource + 24));
  sub_20C13B174();
  v76 = sub_20C136C64();
  v77 = *(v76 - 8);
  if ((*(v77 + 48))(v67, 1, v76) == 1)
  {
    sub_20B520158(v67, &qword_27C768690);
    (*(v61 + 56))(v75, 1, 1, v60);
  }

  else
  {
    sub_20C1369F4();
    (*(v77 + 8))(v67, v76);
  }

  v78 = v60;
  sub_20B52F9E8(v75, v72, &unk_27C765120);
  if ((*(v61 + 48))(v72, 1, v60) == 1)
  {
    sub_20B520158(v72, &unk_27C765120);
    v80 = v155;
    v79 = v156;
    v81 = v158;
    (*(v156 + 16))(v155, v172, v158);
    v82 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v83 = swift_allocObject();
    (*(v79 + 32))(v83 + v82, v80, v81);
    sub_20C137CA4();
  }

  else
  {
    v84 = sub_20C134B64();
    (*(*(v84 - 8) + 56))(v59, 1, 1, v84);
    v85 = sub_20C133984();
    v86 = *(v85 - 8);
    v137 = v75;
    v87 = *(v86 + 56);
    v87(v56, 1, 1, v85);
    v88 = v139;
    v87(v139, 1, 1, v85);
    sub_20C13CE94();
    v89 = v138;
    sub_20C133D54();
    sub_20B520158(v88, &unk_27C76BD00);
    sub_20B520158(v56, &unk_27C76BD00);
    sub_20B520158(v59, &qword_27C762D08);
    v90 = *(v61 + 8);
    v136 = v61 + 8;
    v139 = v90;
    (v90)(v72, v78);
    v91 = v147;
    (*(v61 + 32))(v147, v89, v78);
    v134 = *(v140 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24);
    v135 = *(v140 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 32);
    v140 = __swift_project_boxed_opaque_existential_1((v140 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), v134);
    v138 = sub_20C137D14();
    v92 = v159;
    (*(v61 + 16))(v159, v91, v78);
    (*(v61 + 56))(v92, 0, 1, v78);
    v93 = sub_20C135854();
    (*(*(v93 - 8) + 56))(v160, 1, 1, v93);
    v94 = sub_20C136194();
    (*(*(v94 - 8) + 56))(v161, 1, 1, v94);
    v95 = sub_20C133DD4();
    (*(*(v95 - 8) + 56))(v162, 1, 1, v95);
    v96 = sub_20C135274();
    (*(*(v96 - 8) + 56))(v163, 1, 1, v96);
    v97 = sub_20C134514();
    (*(*(v97 - 8) + 56))(v164, 1, 1, v97);
    v98 = sub_20C133B04();
    (*(*(v98 - 8) + 56))(v165, 1, 1, v98);
    v99 = sub_20C134C04();
    (*(*(v99 - 8) + 56))(v166, 1, 1, v99);
    v100 = sub_20C1368F4();
    (*(*(v100 - 8) + 56))(v167, 1, 1, v100);
    v101 = sub_20C134914();
    (*(*(v101 - 8) + 56))(v168, 1, 1, v101);
    v102 = sub_20C133374();
    (*(*(v102 - 8) + 56))(v169, 1, 1, v102);
    v103 = sub_20C135B74();
    (*(*(v103 - 8) + 56))(v170, 1, 1, v103);
    v104 = sub_20C134CD4();
    (*(*(v104 - 8) + 56))(v171, 1, 1, v104);
    v105 = sub_20C136EB4();
    (*(*(v105 - 8) + 56))(v148, 1, 1, v105);
    v106 = sub_20C133494();
    (*(*(v106 - 8) + 56))();
    v107 = sub_20C134594();
    (*(*(v107 - 8) + 56))(v150, 1, 1, v107);
    v108 = sub_20C138184();
    (*(*(v108 - 8) + 56))(v151, 1, 1, v108);
    v109 = sub_20C1363D4();
    (*(*(v109 - 8) + 56))(v152, 1, 1, v109);
    v110 = sub_20C1337A4();
    v111 = v141;
    (*(*(v110 - 8) + 56))(v141, 1, 1, v110);
    v112 = sub_20C1337D4();
    (*(*(v112 - 8) + 56))();
    v113 = sub_20C134A94();
    v114 = v142;
    (*(*(v113 - 8) + 56))(v142, 1, 1, v113);
    v115 = sub_20C135364();
    v116 = *(*(v115 - 8) + 56);
    v133 = v78;
    v117 = v143;
    v116(v143, 1, 1, v115);
    v118 = sub_20C136484();
    v119 = v144;
    (*(*(v118 - 8) + 56))(v144, 1, 1, v118);
    v120 = sub_20C136784();
    v121 = v145;
    (*(*(v120 - 8) + 56))(v145, 1, 1, v120);
    v122 = sub_20C137FE4();
    v123 = v146;
    (*(*(v122 - 8) + 56))(v146, 1, 1, v122);
    v124 = v152;
    v125 = v148;
    sub_20C13A174();

    sub_20B520158(v123, &unk_27C768AC0);
    sub_20B520158(v121, &unk_27C765070);
    sub_20B520158(v119, &unk_27C765CB0);
    sub_20B520158(v117, &unk_27C765080);
    sub_20B520158(v114, &unk_27C768AD0);
    sub_20B520158(v153, &unk_27C765090);
    sub_20B520158(v111, &unk_27C768AE0);
    sub_20B520158(v124, &unk_27C7650A0);
    v75 = v137;
    sub_20B520158(v151, &unk_27C768AF0);
    sub_20B520158(v150, &unk_27C7650B0);
    sub_20B520158(v149, &unk_27C768B00);
    sub_20B520158(v125, &unk_27C7650C0);
    sub_20B520158(v171, &unk_27C768B10);
    sub_20B520158(v170, &unk_27C7650D0);
    sub_20B520158(v169, &unk_27C768B20);
    sub_20B520158(v168, &unk_27C7650E0);
    sub_20B520158(v167, &unk_27C767260);
    sub_20B520158(v166, &unk_27C7650F0);
    sub_20B520158(v165, &qword_27C768B30);
    sub_20B520158(v164, &unk_27C765050);
    sub_20B520158(v163, &unk_27C765100);
    sub_20B520158(v162, &unk_27C7687F0);
    sub_20B520158(v161, &unk_27C765110);
    sub_20B520158(v160, &unk_27C76BBF0);
    sub_20B520158(v159, &unk_27C765120);
    v127 = v155;
    v126 = v156;
    v128 = v158;
    (*(v156 + 16))(v155, v172, v158);
    v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
    v130 = swift_allocObject();
    (*(v126 + 32))(v130 + v129, v127, v128);
    sub_20C137CA4();
    (v139)(v147, v133);
  }

  return sub_20B520158(v75, &unk_27C765120);
}

uint64_t sub_20BBE28F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v2 - 8);
  v138 = &v116 - v3;
  v4 = sub_20C135274();
  v137 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v135 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_20C137EA4();
  v136 = *(v139 - 1);
  MEMORY[0x28223BE20](v139);
  v119 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AA0);
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v121 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v122 = &v116 - v9;
  MEMORY[0x28223BE20](v10);
  v123 = &v116 - v11;
  v120 = v12;
  MEMORY[0x28223BE20](v13);
  v124 = &v116 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v133 = *(v15 - 8);
  v134 = v15;
  MEMORY[0x28223BE20](v15);
  v126 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v129 = &v116 - v18;
  MEMORY[0x28223BE20](v19);
  v130 = &v116 - v20;
  MEMORY[0x28223BE20](v21);
  v131 = &v116 - v22;
  v125 = v23;
  MEMORY[0x28223BE20](v24);
  v132 = &v116 - v25;
  v26 = sub_20C13A484();
  MEMORY[0x28223BE20](v26);
  v28 = (&v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_20C13BB84();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v30 + 8))(v32, v29);
  sub_20B7E341C();
  v33 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogWorkout;
  v34 = sub_20C1344B4();
  v36 = v35;
  v38 = v37;
  v39 = sub_20C133B84();
  sub_20B583F4C(v34, v36, v38 & 1);
  if (v39)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v41 = Strong;
      [*(Strong + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonView) setHidden_];
      v42 = *(v41 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_productPlacementView);
      if (v42)
      {
        [v42 setHidden_];
      }

      swift_unknownObjectRelease();
    }
  }

  v43 = *(v1 + 72);
  sub_20BCE9748();
  v44 = v43 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
  v45 = swift_unknownObjectWeakLoadStrong();
  if (v45)
  {
    v46 = v45;
    v47 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    (*(v47 + 16))(0, 0, ObjectType, v47);
  }

  sub_20BAC24D4();
  sub_20B67E598();
  sub_20B681720();
  v49 = swift_unknownObjectWeakLoadStrong();
  if (v49)
  {
    [*(v49 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceView) setHidden_];
    swift_unknownObjectRelease();
  }

  sub_20BC023F4(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionOrigin, v28, MEMORY[0x277D4DFB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = v136;
    v51 = v119;
    v52 = v139;
    (*(v136 + 32))(v119, v28, v139);
    sub_20BBED254(v51);
    (*(v50 + 8))(v51, v52);
  }

  else
  {
    v119 = v33;
    v117 = v4;
    v136 = *v28;
    v53 = v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_activityTypeBehavior;
    v54 = *(sub_20C1371D4() + 16);
    v140 = v1;
    if (v54)
    {
      v118 = v53;
      v143 = MEMORY[0x277D84F90];
      sub_20BB5E808(0, v54, 0);
      v55 = 32;
      v56 = v143;
      do
      {
        v141 = sub_20C134224();
        v142 = v57;
        sub_20BC02AD8();
        sub_20C133BC4();
        v58 = v144;
        v59 = v145;
        v143 = v56;
        v61 = *(v56 + 16);
        v60 = *(v56 + 24);
        if (v61 >= v60 >> 1)
        {
          v116 = v144;
          sub_20BB5E808((v60 > 1), v61 + 1, 1);
          v58 = v116;
          v56 = v143;
        }

        *(v56 + 16) = v61 + 1;
        v62 = v56 + 24 * v61;
        *(v62 + 32) = v58;
        *(v62 + 48) = v59;
        ++v55;
        --v54;
      }

      while (v54);

      v1 = v140;
    }

    else
    {
    }

    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), *(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24));
    sub_20C1371C4();
    type metadata accessor for WorkoutSessionConfiguration();
    v63 = v122;
    sub_20C13A134();

    v64 = swift_allocObject();
    swift_weakInit();
    v65 = swift_allocObject();
    *(v65 + 16) = sub_20BC02B2C;
    *(v65 + 24) = v64;
    v66 = v127;
    v67 = *(v127 + 16);
    *&v116 = v127 + 16;
    v119 = v67;
    v68 = v121;
    v69 = v128;
    (v67)(v121, v63, v128);
    v70 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v118 = v70;
    v71 = (v120 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    v120 = *(v66 + 32);
    v120(v72 + v70, v68, v69);
    v73 = (v72 + v71);
    *v73 = sub_20BC02B48;
    v73[1] = v65;
    v74 = v123;
    sub_20C137C94();
    v127 = *(v66 + 8);
    (v127)(v63, v69);
    v75 = swift_allocObject();
    swift_weakInit();
    (v119)(v63, v74, v69);
    v76 = swift_allocObject();
    v120(v76 + v118, v63, v69);
    v77 = (v76 + v71);
    *v77 = sub_20BC02B78;
    v77[1] = v75;
    v78 = v124;
    sub_20C137C94();
    (v127)(v74, v69);
    v79 = swift_allocObject();
    swift_weakInit();
    (v119)(v74, v78, v69);
    v80 = swift_allocObject();
    v120(v80 + v118, v74, v69);
    v81 = (v80 + v71);
    *v81 = sub_20BC02BA8;
    v81[1] = v79;
    v82 = v129;
    sub_20C137C94();
    (v127)(v78, v69);
    v83 = swift_allocObject();
    swift_weakInit();
    v84 = swift_allocObject();
    *(v84 + 16) = sub_20BC02BD8;
    *(v84 + 24) = v83;
    v86 = v133;
    v85 = v134;
    v87 = *(v133 + 16);
    v128 = v133 + 16;
    v139 = v87;
    v88 = v126;
    (v87)(v126, v82, v134);
    v89 = (*(v86 + 80) + 16) & ~*(v86 + 80);
    v124 = *(v86 + 80);
    v127 = v89;
    v90 = (v125 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
    v91 = swift_allocObject();
    v125 = *(v86 + 32);
    v125(v91 + v89, v88, v85);
    v92 = (v91 + v90);
    *v92 = sub_20B683080;
    v92[1] = v84;
    v93 = v130;
    sub_20C137C94();
    v133 = *(v86 + 8);
    (v133)(v82, v85);
    v94 = swift_allocObject();
    swift_weakInit();
    v95 = swift_allocObject();
    v96 = v136;
    *(v95 + 16) = v94;
    *(v95 + 24) = v96;
    v97 = swift_allocObject();
    *(v97 + 16) = sub_20BC02C30;
    *(v97 + 24) = v95;
    (v139)(v82, v93, v85);
    v98 = swift_allocObject();
    v125(v98 + v127, v82, v85);
    v99 = (v98 + v90);
    *v99 = sub_20B683080;
    v99[1] = v97;

    v100 = v131;
    sub_20C137C94();
    v101 = v133;
    (v133)(v93, v85);
    v102 = swift_allocObject();
    swift_weakInit();
    v103 = swift_allocObject();
    *(v103 + 16) = sub_20BC02C38;
    *(v103 + 24) = v102;
    (v139)(v93, v100, v85);
    v104 = swift_allocObject();
    v125(v104 + v127, v93, v85);
    v1 = v140;
    v105 = (v104 + v90);
    *v105 = sub_20B5F7764;
    v105[1] = v103;
    v106 = v132;
    sub_20C137C94();
    v101(v100, v85);
    v107 = sub_20C137CB4();
    v108 = swift_allocObject();
    *(v108 + 16) = 0;
    *(v108 + 24) = 0;
    v107(sub_20B5DF6DC, v108);

    v101(v106, v85);
    v4 = v117;
  }

  v109 = *(v1 + 88);
  if (sub_20C1371F4())
  {
    sub_20BB7550C();
  }

  sub_20B698D64();
  v110 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_displayPreferences;
  swift_beginAccess();
  v111 = v109 + v110;
  v112 = v138;
  sub_20B52F9E8(v111, v138, &unk_27C765100);
  v113 = v137;
  if ((*(v137 + 48))(v112, 1, v4) == 1)
  {
    sub_20B520158(v112, &unk_27C765100);
  }

  else
  {
    v114 = v135;
    (*(v113 + 32))(v135, v112, v4);
    sub_20B8222C8(v114);
    (*(v113 + 8))(v114, v4);
  }

  return sub_20B647174();
}

id sub_20BBE39F4(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BBECC24(a1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BBDC43C();
  }

  swift_willThrow();
  return a1;
}

uint64_t sub_20BBE3AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BBE1000(a1, v6);

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AA0);
    v8 = *(v7 - 8);
    (*(v8 + 56))(v6, 0, 1, v7);
    return (*(v8 + 32))(a2, v6, v7);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AA0);
    v11 = *(v10 - 8);
    (*(v11 + 56))(v6, 1, 1, v10);
    v12 = sub_20C133CC4();
    sub_20BC026A4(&qword_27C766EF8, MEMORY[0x277D503C8]);
    v13 = swift_allocError();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D50358], v12);
    *(swift_allocObject() + 16) = v13;
    sub_20C137EA4();
    sub_20C137CA4();
    result = (*(v11 + 48))(v6, 1, v10);
    if (result != 1)
    {
      return sub_20B520158(v6, &unk_27C76BD80);
    }
  }

  return result;
}

uint64_t sub_20BBE3D80@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764698);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BBE4938(v4);

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
    v6 = *(v5 - 8);
    (*(v6 + 56))(v4, 0, 1, v5);
    return (*(v6 + 32))(a1, v4, v5);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
    v9 = *(v8 - 8);
    (*(v9 + 56))(v4, 1, 1, v8);
    v10 = sub_20C133CC4();
    sub_20BC026A4(&qword_27C766EF8, MEMORY[0x277D503C8]);
    v11 = swift_allocError();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D50358], v10);
    *(swift_allocObject() + 16) = v11;
    sub_20C137CA4();
    result = (*(v9 + 48))(v4, 1, v8);
    if (result != 1)
    {
      return sub_20B520158(v4, &qword_27C764698);
    }
  }

  return result;
}

uint64_t sub_20BBE4050@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764698);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_contentAvailabilityClient + 24);
    v25 = a1;
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_contentAvailabilityClient), v13);
    sub_20C139D64();
    (*(v3 + 16))(v5, v8, v2);
    v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v15 = swift_allocObject();
    (*(v3 + 32))(v15 + v14, v5, v2);
    v16 = (v15 + ((v4 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v16 = sub_20BBE4810;
    v16[1] = 0;
    sub_20C137C94();

    (*(v3 + 8))(v8, v2);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
    v18 = *(v17 - 8);
    (*(v18 + 56))(v11, 0, 1, v17);
    return (*(v18 + 32))(v25, v11, v17);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
    v21 = *(v20 - 8);
    (*(v21 + 56))(v11, 1, 1, v20);
    v22 = sub_20C133CC4();
    sub_20BC026A4(&qword_27C766EF8, MEMORY[0x277D503C8]);
    v23 = swift_allocError();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D50358], v22);
    *(swift_allocObject() + 16) = v23;
    sub_20C137CA4();
    result = (*(v21 + 48))(v11, 1, v20);
    if (result != 1)
    {
      return sub_20B520158(v11, &qword_27C764698);
    }
  }

  return result;
}

uint64_t sub_20BBE44CC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764698);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BBF4E04(v4);

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
    v6 = *(v5 - 8);
    (*(v6 + 56))(v4, 0, 1, v5);
    return (*(v6 + 32))(a1, v4, v5);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
    v9 = *(v8 - 8);
    (*(v9 + 56))(v4, 1, 1, v8);
    v10 = sub_20C133CC4();
    sub_20BC026A4(&qword_27C766EF8, MEMORY[0x277D503C8]);
    v11 = swift_allocError();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D50358], v10);
    *(swift_allocObject() + 16) = v11;
    sub_20C137CA4();
    result = (*(v9 + 48))(v4, 1, v8);
    if (result != 1)
    {
      return sub_20B520158(v4, &qword_27C764698);
    }
  }

  return result;
}

uint64_t sub_20BBE479C(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BBE707C(a1);
  }

  return result;
}

uint64_t sub_20BBE4810(_BYTE *a1)
{
  if (*a1 == 1)
  {

    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  else
  {
    v3 = sub_20C133CC4();
    sub_20BC026A4(&qword_27C766EF8, MEMORY[0x277D503C8]);
    v4 = swift_allocError();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D50368], v3);
    *(swift_allocObject() + 16) = v4;

    return sub_20C137CA4();
  }
}

uint64_t sub_20BBE4938@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v102 = a1;
  v3 = sub_20C13BB84();
  v97 = *(v3 - 8);
  v98 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v107 = *(v96 - 8);
  v6 = *(v107 + 64);
  MEMORY[0x28223BE20](v96);
  v93 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v92 = &v80 - v8;
  MEMORY[0x28223BE20](v9);
  v100 = &v80 - v10;
  MEMORY[0x28223BE20](v11);
  v103 = &v80 - v12;
  MEMORY[0x28223BE20](v13);
  v94 = &v80 - v14;
  MEMORY[0x28223BE20](v15);
  v95 = &v80 - v16;
  v17 = sub_20C13BA24();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v80 - v22;
  v105 = sub_20C135024();
  v101 = *(v105 - 8);
  v24 = *(v101 + 64);
  MEMORY[0x28223BE20](v105);
  v99 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v80 - v26;
  MEMORY[0x28223BE20](v28);
  v104 = &v80 - v29;
  v30 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_initiatedGroupActivity;
  swift_beginAccess();
  v106 = v2;
  sub_20B52F9E8(v2 + v30, v23, &unk_27C7622A0);
  if ((*(v18 + 48))(v23, 1, v17))
  {
    sub_20B520158(v23, &unk_27C7622A0);
    sub_20C13B594();
    v31 = sub_20C13BB74();
    v32 = sub_20C13D1F4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_20B517000, v31, v32, "Client: User is not initiator of group activity.", v33, 2u);
      MEMORY[0x20F2F6A40](v33, -1, -1);
    }

    (*(v97 + 8))(v5, v98);
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  else
  {
    (*(v18 + 16))(v20, v23, v17);
    sub_20B520158(v23, &unk_27C7622A0);
    sub_20C13B9F4();
    (*(v18 + 8))(v20, v17);
    v35 = v101;
    v36 = v101 + 32;
    v37 = *(v101 + 32);
    v38 = v104;
    v39 = v105;
    v37(v104, v27, v105);
    v40 = v37;
    v86 = v37;
    v87 = v36;
    __swift_project_boxed_opaque_existential_1((v106 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_multiUserClient), *(v106 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_multiUserClient + 24));
    sub_20C13A264();
    v41 = *(v35 + 16);
    v88 = v35 + 16;
    v89 = v41;
    v42 = v99;
    v41(v99, v38, v39);
    v85 = *(v35 + 80);
    v43 = (v85 + 24) & ~v85;
    v84 = v43;
    v44 = swift_allocObject();
    *(v44 + 16) = v106;
    v40(v44 + v43, v42, v39);

    v45 = v100;
    sub_20C137C94();
    v46 = v107;
    v48 = v107 + 16;
    v47 = *(v107 + 16);
    v49 = v92;
    v50 = v96;
    v47(v92, v45, v96);
    v83 = v47;
    v98 = v48;
    v90 = *(v46 + 80);
    v51 = (v90 + 16) & ~v90;
    v52 = v51 + v6;
    v81 = swift_allocObject();
    v53 = *(v46 + 32);
    v97 = v51;
    v53(v81 + v51, v49, v50);
    v91 = v46 + 32;
    v82 = v53;
    v54 = v93;
    v47(v93, v103, v50);
    v55 = (v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v92 = v55;
    v56 = swift_allocObject();
    v53(v56 + v51, v54, v50);
    v57 = (v56 + v55);
    v58 = v81;
    *v57 = sub_20B8F5774;
    v57[1] = v58;
    v59 = v94;
    sub_20C137C94();
    v60 = *(v46 + 8);
    v107 = v46 + 8;
    v93 = v60;
    (v60)(v100, v50);
    v61 = v103;
    (v60)(v103, v50);
    v62 = v99;
    v63 = v105;
    v89(v99, v104, v105);
    v64 = v84;
    v65 = swift_allocObject();
    *(v65 + 16) = v106;
    v86(v65 + v64, v62, v63);
    v66 = swift_allocObject();
    *(v66 + 16) = sub_20BC02104;
    *(v66 + 24) = v65;
    v67 = v61;
    v68 = v61;
    v69 = v83;
    v83(v68, v59, v50);
    v70 = v92;
    v71 = swift_allocObject();
    v72 = v82;
    v82(v71 + v97, v67, v50);
    v73 = &v70[v71];
    *v73 = sub_20B64B960;
    v73[1] = v66;

    v74 = v95;
    sub_20C137C94();
    v75 = v93;
    (v93)(v59, v50);
    v76 = swift_allocObject();
    v76[2] = 0xD000000000000020;
    v76[3] = 0x800000020C1AB570;
    v76[4] = 1374;
    v77 = swift_allocObject();
    *(v77 + 16) = sub_20B5D9EA0;
    *(v77 + 24) = v76;
    v69(v59, v74, v50);
    v78 = swift_allocObject();
    v72(v78 + v97, v59, v50);
    v79 = &v70[v78];
    *v79 = sub_20B5D9EC0;
    v79[1] = v77;
    sub_20C137C94();
    v75(v74, v50);
    return (*(v101 + 8))(v104, v105);
  }
}

uint64_t sub_20BBE5398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v33 = a3;
  v29 = sub_20C135024();
  v4 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13BB84();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13BA24();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - v14;
  v16 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_initiatedGroupActivity;
  swift_beginAccess();
  sub_20B52F9E8(a1 + v16, v15, &unk_27C7622A0);
  if ((*(v10 + 48))(v15, 1, v9))
  {
    sub_20B520158(v15, &unk_27C7622A0);
  }

  else
  {
    (*(v10 + 16))(v12, v15, v9);
    sub_20B520158(v15, &unk_27C7622A0);
    sub_20BC026A4(&unk_27C76BCC0, MEMORY[0x277D4FB20]);
    sub_20C13B784();
    (*(v10 + 8))(v12, v9);
  }

  v17 = v30;
  sub_20C13B594();
  v18 = v29;
  (*(v4 + 16))(v6, v28, v29);
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = v22;
    *v21 = 136315138;
    sub_20BC026A4(&qword_27C766E98, MEMORY[0x277D51510]);
    v23 = sub_20C13DFA4();
    v25 = v24;
    (*(v4 + 8))(v6, v18);
    v26 = sub_20B51E694(v23, v25, &v34);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_20B517000, v19, v20, "Client: Activated %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x20F2F6A40](v22, -1, -1);
    MEMORY[0x20F2F6A40](v21, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v18);
  }

  (*(v31 + 8))(v17, v32);
  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

void sub_20BBE583C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = a4;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30);
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v110 = v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v7;
  MEMORY[0x28223BE20](v8);
  v111 = v102 - v9;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCD0);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v10;
  MEMORY[0x28223BE20](v11);
  v116 = v102 - v12;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v119 = v102 - v13;
  v104 = sub_20C135024();
  v129 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v128 = v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_20C13BB84();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_20C136154();
  v16 = *(v135 - 1);
  MEMORY[0x28223BE20](v135);
  v134 = v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v18 - 8);
  v127 = v102 - v19;
  v20 = sub_20C137C24();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v103 = v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v102 - v24;
  MEMORY[0x28223BE20](v26);
  v132 = v102 - v27;
  v102[2] = v28;
  MEMORY[0x28223BE20](v29);
  v126 = v102 - v30;
  v31 = swift_allocObject();
  v124 = a1;
  v125 = v31;
  *(v31 + 16) = a1;
  *(v31 + 24) = a2;
  v32 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogWorkout;
  v123 = a2;

  v121 = a3;
  v102[1] = v32;
  v33 = sub_20C134434();
  v34 = v25;
  v35 = v33;
  v36 = v33 + 56;
  v37 = 1 << *(v33 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v33 + 56);
  v40 = (v37 + 63) >> 6;
  v139 = v21 + 32;
  v131 = (v16 + 8);
  v136 = (v21 + 8);
  v137 = v21 + 16;

  v42 = 0;
  v138 = v21;
  v133 = v41;
  if (v39)
  {
    while (1)
    {
      v43 = v42;
LABEL_8:
      v44 = *(v35 + 48) + *(v21 + 72) * (__clz(__rbit64(v39)) | (v43 << 6));
      v45 = v132;
      (*(v21 + 16))(v132, v44, v20);
      v130 = *(v21 + 32);
      v130(v34, v45, v20);
      v46 = v134;
      v47 = v34;
      sub_20C137BD4();
      v48 = sub_20C136144();
      v50 = v49;
      v52 = v51;
      (*v131)(v46, v135);
      v142 = v48;
      v143 = v50;
      v52 &= 1u;
      v144 = v52;
      LOBYTE(v140) = 4;
      sub_20BA7E610();
      sub_20BA7E664();
      LOBYTE(v46) = sub_20C133C04();
      sub_20B583F4C(v48, v50, v52);
      if (v46)
      {
        break;
      }

      v39 &= v39 - 1;
      (*v136)(v47, v20);
      v42 = v43;
      v21 = v138;
      v34 = v47;
      v35 = v133;
      if (!v39)
      {
        goto LABEL_5;
      }
    }

    v54 = v127;
    v130(v127, v47, v20);
    v53 = 0;
    v21 = v138;
LABEL_12:
    (*(v21 + 56))(v54, v53, 1, v20);

    v55 = (*(v21 + 48))(v54, 1, v20);
    v56 = v128;
    v57 = v129;
    if (v55 == 1)
    {

      sub_20B520158(v54, &unk_27C766680);
      v58 = v105;
      sub_20C13B594();
      v59 = v104;
      (*(v57 + 16))(v56, v107, v104);
      v60 = sub_20C13BB74();
      v61 = sub_20C13D1F4();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v142 = v63;
        *v62 = 136315138;
        sub_20BC026A4(&qword_27C766E98, MEMORY[0x277D51510]);
        v64 = sub_20C13DFA4();
        v65 = v56;
        v67 = v66;
        (*(v57 + 8))(v65, v59);
        v68 = sub_20B51E694(v64, v67, &v142);

        *(v62 + 4) = v68;
        _os_log_impl(&dword_20B517000, v60, v61, "Failed to query artwork details for %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x20F2F6A40](v63, -1, -1);
        MEMORY[0x20F2F6A40](v62, -1, -1);
      }

      else
      {

        (*(v57 + 8))(v56, v59);
      }

      (*(v106 + 8))(v58, v108);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
      sub_20C13E1D4();
      v100 = v142;
      v101 = v143;
      v140 = v142;
      v141 = v143;
      v124(&v140);
      sub_20B583FB8(v100, v101);
    }

    else
    {
      v135 = *(v21 + 32);
      v135(v126, v54, v20);
      v69 = v121;
      __swift_project_boxed_opaque_existential_1((v121 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogClient), *(v121 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogClient + 24));
      sub_20C134324();
      v70 = v111;
      sub_20C13A0B4();

      v71 = swift_allocObject();
      *(v71 + 16) = sub_20BC021A0;
      *(v71 + 24) = v69;
      v72 = v112;
      v73 = v110;
      v74 = v114;
      (*(v112 + 16))(v110, v70, v114);
      v75 = (*(v72 + 80) + 16) & ~*(v72 + 80);
      v76 = (v109 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
      v77 = swift_allocObject();
      (*(v72 + 32))(v77 + v75, v73, v74);
      v78 = (v77 + v76);
      *v78 = sub_20BC021BC;
      v78[1] = v71;

      v79 = v20;
      v80 = v116;
      sub_20C137C94();
      (*(v72 + 8))(v70, v74);
      v81 = v138;
      v82 = *(v138 + 16);
      v83 = v103;
      v84 = v126;
      v102[0] = v79;
      v82(v103, v126, v79);
      v85 = (*(v81 + 80) + 24) & ~*(v81 + 80);
      v86 = swift_allocObject();
      *(v86 + 16) = v69;
      v135((v86 + v85), v83, v79);
      v87 = v117;
      v88 = v115;
      v89 = v118;
      (*(v117 + 16))(v115, v80, v118);
      v90 = (*(v87 + 80) + 16) & ~*(v87 + 80);
      v91 = (v113 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
      v92 = swift_allocObject();
      (*(v87 + 32))(v92 + v90, v88, v89);
      v93 = (v92 + v91);
      *v93 = sub_20BC021EC;
      v93[1] = v86;

      v94 = v119;
      sub_20C137C94();
      (*(v87 + 8))(v80, v89);
      v95 = swift_allocObject();
      v96 = v125;
      *(v95 + 16) = sub_20B5D9B44;
      *(v95 + 24) = v96;
      v97 = v122;
      v98 = sub_20C137CB4();
      v99 = swift_allocObject();
      *(v99 + 16) = sub_20BC02298;
      *(v99 + 24) = v95;

      v98(sub_20B5DF6DC, v99);

      (*(v120 + 8))(v94, v97);
      (*(v138 + 8))(v84, v102[0]);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v43 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v43 >= v40)
      {

        v53 = 1;
        v54 = v127;
        goto LABEL_12;
      }

      v39 = *(v36 + 8 * v43);
      ++v42;
      if (v39)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_20BBE6664(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_mediaTagStringBuilder), *(a1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_mediaTagStringBuilder + 24));
  sub_20C1359D4();
  v3 = sub_20C138544();

  v4 = [v3 string];

  v5 = sub_20C13C954();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_20BBE6720@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v28 = a4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v6 = *(v27 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v27);
  v26 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v22 - v9;
  v11 = *a1;
  v23 = a1[1];
  v24 = v11;
  v22[1] = a2;
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_assetClient), *(a2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_assetClient + 24));
  sub_20C138044();
  sub_20C138054();
  sub_20C139E54();

  v12 = swift_allocObject();
  v14 = v23;
  v13 = v24;
  v12[2] = a2;
  v12[3] = v13;
  v12[4] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20BC022A0;
  *(v15 + 24) = v12;
  v16 = v26;
  v17 = v27;
  (*(v6 + 16))(v26, v10, v27);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v18, v16, v17);
  v20 = (v19 + ((v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_20B5F67A4;
  v20[1] = v15;

  sub_20C137C94();
  return (*(v6 + 8))(v10, v17);
}

uint64_t sub_20BBE69CC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v41 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCF0);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v37 - v7;
  v8 = sub_20C13BA24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_20C13B754();
  v16 = *(v15 - 8);
  v42 = v15;
  v43 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  v22 = *a1;
  v23 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_initiatedGroupActivity;
  swift_beginAccess();
  sub_20B52F9E8(a2 + v23, v14, &unk_27C7622A0);
  v24 = *(v9 + 48);
  if (v24(v14, 1, v8))
  {
    return sub_20B520158(v14, &unk_27C7622A0);
  }

  v37 = v22;
  (*(v9 + 16))(v11, v14, v8);
  sub_20B520158(v14, &unk_27C7622A0);
  sub_20C13BA14();
  (*(v9 + 8))(v11, v8);
  (*(v43 + 32))(v21, v18, v42);
  v27 = v38;
  v26 = v39;
  v44[0] = v38;
  v44[1] = v39;
  sub_20B5F6EB0();
  if (sub_20C13DA54())
  {
    v28 = MEMORY[0x20F2F2EA0]();
    v26 = v29;
  }

  else
  {
    v28 = v27;
  }

  v30 = v40;
  v31 = v37;
  MEMORY[0x20F2F2EB0](v28, v26);
  v32 = [v31 CGImage];
  sub_20C13B714();
  sub_20C13B724();
  v33 = sub_20BBD79E4();
  if (v24(v34, 1, v8))
  {
    (v33)(v44, 0);
    v36 = v42;
    v35 = v43;
  }

  else
  {
    v36 = v42;
    v35 = v43;
    (*(v43 + 16))(v30, v21, v42);
    (*(v35 + 56))(v30, 0, 1, v36);
    sub_20C13B9E4();
    (v33)(v44, 0);
  }

  return (*(v35 + 8))(v21, v36);
}

void sub_20BBE6E10(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v10 = *a1;
    v11 = *a1;
    sub_20C13B594();
    v12 = v10;
    v13 = sub_20C13BB74();
    v14 = sub_20C13D1F4();
    sub_20B583FB8(v10, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = a2;
      v16 = v15;
      v17 = swift_slowAlloc();
      v25 = a3;
      v18 = v17;
      v29 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v19 = MEMORY[0x20F2F5850](v27, v28);
      v21 = sub_20B51E694(v19, v20, &v29);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_20B517000, v13, v14, "Failed to amend metadata with error %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x20F2F6A40](v18, -1, -1);
      v22 = v16;
      a2 = v26;
      MEMORY[0x20F2F6A40](v22, -1, -1);

      sub_20B583FB8(v10, 1);
    }

    else
    {
      sub_20B583FB8(v10, 1);
    }

    (*(v7 + 8))(v9, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
  sub_20C13E1D4();
  v23 = v29;
  v24 = v30;
  a2(v29, v30);
  sub_20B583FB8(v23, v24);
}

uint64_t sub_20BBE707C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v180 = &v170 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  MEMORY[0x28223BE20](v6 - 8);
  v179 = &v170 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v178 = &v170 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v10 - 8);
  v177 = &v170 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v12 - 8);
  v176 = &v170 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v14 - 8);
  v184 = &v170 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v16 - 8);
  v189 = &v170 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  MEMORY[0x28223BE20](v18 - 8);
  v188 = &v170 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v20 - 8);
  v187 = &v170 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  MEMORY[0x28223BE20](v22 - 8);
  v186 = &v170 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  MEMORY[0x28223BE20](v24 - 8);
  v185 = &v170 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  MEMORY[0x28223BE20](v26 - 8);
  v190 = &v170 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v28 - 8);
  v203 = &v170 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  MEMORY[0x28223BE20](v30 - 8);
  v202 = &v170 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  MEMORY[0x28223BE20](v32 - 8);
  v201 = &v170 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v34 - 8);
  v200 = &v170 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v36 - 8);
  v199 = &v170 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v38 - 8);
  v198 = &v170 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  MEMORY[0x28223BE20](v40 - 8);
  v197 = &v170 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v42 - 8);
  v196 = &v170 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v44 - 8);
  v195 = &v170 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v46 - 8);
  v194 = &v170 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v48 - 8);
  v193 = &v170 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v50 - 8);
  v192 = &v170 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v52 - 8);
  v191 = &v170 - v53;
  v54 = sub_20C133CC4();
  v183 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v182 = &v170 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_20C13BB84();
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v171 = &v170 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v172 = &v170 - v60;
  MEMORY[0x28223BE20](v61);
  v173 = &v170 - v62;
  MEMORY[0x28223BE20](v63);
  v65 = &v170 - v64;
  sub_20C13B4A4();
  v66 = a1;
  v67 = a1;
  v68 = sub_20C13BB74();
  v69 = sub_20C13D1D4();

  v70 = os_log_type_enabled(v68, v69);
  v181 = v2;
  v174 = v57;
  if (v70)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v206 = v72;
    *v71 = 136446210;
    swift_getErrorValue();
    v170 = v54;
    v73 = MEMORY[0x20F2F5850](v204, v205);
    v75 = sub_20B51E694(v73, v74, &v206);
    v54 = v170;

    *(v71 + 4) = v75;
    _os_log_impl(&dword_20B517000, v68, v69, "Brokering distributed session failed with error: %{public}s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x20F2F6A40](v72, -1, -1);
    MEMORY[0x20F2F6A40](v71, -1, -1);
  }

  v175 = *(v57 + 8);
  v175(v65, v56);
  swift_getErrorValue();
  v76 = sub_20C13E0B4();
  v77 = v183;
  v78 = v183[13];
  v79 = v182;
  v78(v182, *MEMORY[0x277D50380], v54);
  sub_20BC026A4(&qword_27C766EF8, MEMORY[0x277D503C8]);
  v80 = sub_20C13E0B4();
  v81 = v77[1];
  v81(v79, v54);
  if (v80 == v76)
  {
    v82 = v173;
    sub_20C13B4A4();
    v83 = sub_20C13BB74();
    v84 = sub_20C13D1D4();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_20B517000, v83, v84, "Requested distributed session participant has active session", v85, 2u);
      MEMORY[0x20F2F6A40](v85, -1, -1);
    }

    v175(v82, v56);
    v86 = v181;
    sub_20B680E78();
    v174 = *(v86 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24);
    v182 = *(v86 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 32);
    v183 = __swift_project_boxed_opaque_existential_1((v86 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), v174);
    v175 = sub_20C13A464();
    v87 = sub_20C133D84();
    (*(*(v87 - 8) + 56))(v191, 1, 1, v87);
    v88 = sub_20C135854();
    (*(*(v88 - 8) + 56))(v192, 1, 1, v88);
    v89 = sub_20C136194();
    (*(*(v89 - 8) + 56))(v193, 1, 1, v89);
    v90 = sub_20C133DD4();
    (*(*(v90 - 8) + 56))(v194, 1, 1, v90);
    v91 = sub_20C135274();
    (*(*(v91 - 8) + 56))(v195, 1, 1, v91);
    v92 = sub_20C134514();
    (*(*(v92 - 8) + 56))(v196, 1, 1, v92);
    v93 = sub_20C133B04();
    (*(*(v93 - 8) + 56))(v197, 1, 1, v93);
    v94 = sub_20C134C04();
    (*(*(v94 - 8) + 56))(v198, 1, 1, v94);
    v95 = sub_20C1368F4();
    (*(*(v95 - 8) + 56))(v199, 1, 1, v95);
    v96 = sub_20C134914();
    (*(*(v96 - 8) + 56))(v200, 1, 1, v96);
    v97 = sub_20C133374();
    (*(*(v97 - 8) + 56))(v201, 1, 1, v97);
    v98 = sub_20C135B74();
    (*(*(v98 - 8) + 56))(v202, 1, 1, v98);
    v99 = sub_20C134CD4();
    (*(*(v99 - 8) + 56))(v203, 1, 1, v99);
    v100 = sub_20C136EB4();
    (*(*(v100 - 8) + 56))(v190, 1, 1, v100);
    v101 = sub_20C133494();
    (*(*(v101 - 8) + 56))(v185, 1, 1, v101);
    v102 = sub_20C134594();
    (*(*(v102 - 8) + 56))();
    v103 = sub_20C138184();
    (*(*(v103 - 8) + 56))(v187, 1, 1, v103);
    v104 = sub_20C1363D4();
    (*(*(v104 - 8) + 56))();
    v105 = sub_20C1337A4();
    (*(*(v105 - 8) + 56))(v189, 1, 1, v105);
    v106 = sub_20C1337D4();
    (*(*(v106 - 8) + 56))();
    v107 = sub_20C134A94();
    v108 = v176;
    (*(*(v107 - 8) + 56))(v176, 1, 1, v107);
    v109 = sub_20C135364();
    v110 = v177;
    (*(*(v109 - 8) + 56))(v177, 1, 1, v109);
    __swift_project_boxed_opaque_existential_1((v86 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_remoteBrowsingSource), *(v86 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_remoteBrowsingSource + 24));
    sub_20C13B194();
    sub_20C13CE94();
    v111 = v178;
    sub_20C136454();
    v112 = sub_20C136484();
    (*(*(v112 - 8) + 56))(v111, 0, 1, v112);
    v113 = sub_20C136784();
    v114 = v179;
    (*(*(v113 - 8) + 56))(v179, 1, 1, v113);
    v115 = sub_20C137FE4();
    v116 = v180;
    (*(*(v115 - 8) + 56))(v180, 1, 1, v115);
    v117 = v189;
    v118 = v187;
    v119 = v185;
    sub_20C13A174();

    sub_20B520158(v116, &unk_27C768AC0);
    sub_20B520158(v114, &unk_27C765070);
    sub_20B520158(v111, &unk_27C765CB0);
    sub_20B520158(v110, &unk_27C765080);
    sub_20B520158(v108, &unk_27C768AD0);
    sub_20B520158(v184, &unk_27C765090);
    sub_20B520158(v117, &unk_27C768AE0);
    sub_20B520158(v188, &unk_27C7650A0);
    sub_20B520158(v118, &unk_27C768AF0);
    sub_20B520158(v186, &unk_27C7650B0);
    v120 = v119;
LABEL_16:
    sub_20B520158(v120, &unk_27C768B00);
    sub_20B520158(v190, &unk_27C7650C0);
    sub_20B520158(v203, &unk_27C768B10);
    sub_20B520158(v202, &unk_27C7650D0);
    sub_20B520158(v201, &unk_27C768B20);
    sub_20B520158(v200, &unk_27C7650E0);
    sub_20B520158(v199, &unk_27C767260);
    sub_20B520158(v198, &unk_27C7650F0);
    sub_20B520158(v197, &qword_27C768B30);
    sub_20B520158(v196, &unk_27C765050);
    sub_20B520158(v195, &unk_27C765100);
    sub_20B520158(v194, &unk_27C7687F0);
    sub_20B520158(v193, &unk_27C765110);
    sub_20B520158(v192, &unk_27C76BBF0);
    return sub_20B520158(v191, &unk_27C765120);
  }

  v78(v79, *MEMORY[0x277D503A8], v54);
  v121 = sub_20C13E0B4();
  v81(v79, v54);
  if (v121 == v76)
  {
    v122 = v172;
    sub_20C13B4A4();
    v123 = sub_20C13BB74();
    v124 = sub_20C13D1D4();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_20B517000, v123, v124, "Requested distributed session participant does not have host app", v125, 2u);
      MEMORY[0x20F2F6A40](v125, -1, -1);
    }

    v126 = v175;
    v175(v122, v56);
    v127 = v181;
    v128 = sub_20C138104();
    if (v128 == sub_20C138104() && (sub_20C13A474() & 1) != 0)
    {
      sub_20C13B574();
      v129 = sub_20C13BB74();
      v130 = sub_20C13D1B4();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = v127;
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&dword_20B517000, v129, v130, "Deactivating media player presenter on tv due to app install state", v132, 2u);
        v133 = v132;
        v127 = v131;
        MEMORY[0x20F2F6A40](v133, -1, -1);
      }

      v126(v171, v56);
      sub_20B680E78();
    }

    v174 = *(v127 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24);
    v175 = *(v127 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 32);
    v183 = __swift_project_boxed_opaque_existential_1((v127 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), v174);
    v182 = sub_20C13A464();
    v134 = sub_20C133D84();
    (*(*(v134 - 8) + 56))(v191, 1, 1, v134);
    v135 = sub_20C135854();
    (*(*(v135 - 8) + 56))(v192, 1, 1, v135);
    v136 = sub_20C136194();
    (*(*(v136 - 8) + 56))(v193, 1, 1, v136);
    v137 = sub_20C133DD4();
    (*(*(v137 - 8) + 56))(v194, 1, 1, v137);
    v138 = sub_20C135274();
    (*(*(v138 - 8) + 56))(v195, 1, 1, v138);
    v139 = sub_20C134514();
    (*(*(v139 - 8) + 56))(v196, 1, 1, v139);
    v140 = sub_20C133B04();
    (*(*(v140 - 8) + 56))(v197, 1, 1, v140);
    v141 = sub_20C134C04();
    (*(*(v141 - 8) + 56))(v198, 1, 1, v141);
    v142 = sub_20C1368F4();
    (*(*(v142 - 8) + 56))(v199, 1, 1, v142);
    v143 = sub_20C134914();
    (*(*(v143 - 8) + 56))(v200, 1, 1, v143);
    v144 = sub_20C133374();
    (*(*(v144 - 8) + 56))(v201, 1, 1, v144);
    v145 = sub_20C135B74();
    (*(*(v145 - 8) + 56))(v202, 1, 1, v145);
    v146 = sub_20C134CD4();
    (*(*(v146 - 8) + 56))(v203, 1, 1, v146);
    v147 = sub_20C136EB4();
    (*(*(v147 - 8) + 56))(v190, 1, 1, v147);
    v148 = sub_20C133494();
    (*(*(v148 - 8) + 56))(v185, 1, 1, v148);
    v149 = sub_20C134594();
    (*(*(v149 - 8) + 56))();
    v150 = sub_20C138184();
    (*(*(v150 - 8) + 56))(v187, 1, 1, v150);
    v151 = sub_20C1363D4();
    (*(*(v151 - 8) + 56))();
    v152 = sub_20C1337A4();
    (*(*(v152 - 8) + 56))(v189, 1, 1, v152);
    v153 = sub_20C1337D4();
    v154 = v184;
    (*(*(v153 - 8) + 56))(v184, 1, 1, v153);
    v155 = sub_20C134A94();
    v156 = v176;
    (*(*(v155 - 8) + 56))(v176, 1, 1, v155);
    v157 = sub_20C135364();
    v158 = v177;
    (*(*(v157 - 8) + 56))(v177, 1, 1, v157);
    v159 = sub_20C136484();
    v160 = v178;
    (*(*(v159 - 8) + 56))(v178, 1, 1, v159);
    sub_20C13CE94();
    v161 = v179;
    sub_20C136764();
    v162 = sub_20C136784();
    (*(*(v162 - 8) + 56))(v161, 0, 1, v162);
    v163 = sub_20C137FE4();
    v164 = v180;
    (*(*(v163 - 8) + 56))(v180, 1, 1, v163);
    v165 = v187;
    v166 = v185;
    sub_20C13A174();

    sub_20B520158(v164, &unk_27C768AC0);
    sub_20B520158(v161, &unk_27C765070);
    sub_20B520158(v160, &unk_27C765CB0);
    sub_20B520158(v158, &unk_27C765080);
    sub_20B520158(v156, &unk_27C768AD0);
    sub_20B520158(v154, &unk_27C765090);
    sub_20B520158(v189, &unk_27C768AE0);
    sub_20B520158(v188, &unk_27C7650A0);
    sub_20B520158(v165, &unk_27C768AF0);
    sub_20B520158(v186, &unk_27C7650B0);
    v120 = v166;
    goto LABEL_16;
  }

  v78(v79, *MEMORY[0x277D50368], v54);
  v168 = sub_20C13E0B4();
  v81(v79, v54);
  if (v168 == v76)
  {
    return sub_20BDE3794();
  }

  v78(v79, *MEMORY[0x277D50340], v54);
  v169 = sub_20C13E0B4();
  result = (v81)(v79, v54);
  if (v169 == v76)
  {
    return sub_20BDE3794();
  }

  return result;
}

uint64_t sub_20BBE92F4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v15);
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_allowDistributedSessionBrokering) == 1)
  {
    v41 = v16;
    v42 = a2;
    v39 = a1;
    v19 = *(v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_contentAvailabilityClient + 24);
    v38[0] = v38 - v17;
    v40 = v18;
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_contentAvailabilityClient), v19);
    v38[1] = v2;
    sub_20C139D64();
    (*(v6 + 16))(v8, v11, v5);
    v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v21 = (v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    (*(v6 + 32))(v22 + v20, v8, v5);
    v23 = (v22 + v21);
    *v23 = sub_20BBE4810;
    v23[1] = 0;
    v24 = v38[0];
    sub_20C137C94();
    (*(v6 + 8))(v11, v5);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v39;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_20BC02074;
    *(v27 + 24) = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20B5DF3B8;
    *(v28 + 24) = v27;
    v30 = v40;
    v29 = v41;
    (*(v13 + 16))(v40, v24, v41);
    v31 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v32 = swift_allocObject();
    (*(v13 + 32))(v32 + v31, v30, v29);
    v33 = (v32 + ((v14 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_20B5DF3D4;
    v33[1] = v28;
    sub_20C137C94();
    return (*(v13 + 8))(v24, v29);
  }

  else
  {
    v35 = sub_20C133CC4();
    sub_20BC026A4(&qword_27C766EF8, MEMORY[0x277D503C8]);
    v36 = swift_allocError();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D50340], v35);
    *(swift_allocObject() + 16) = v36;

    return sub_20C137CA4();
  }
}

uint64_t sub_20BBE9818(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v4 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();
    v5 = swift_allocObject();
    swift_weakLoadStrong();

    swift_weakInit();

    v6 = qword_27C7609A8;

    if (v6 != -1)
    {
      swift_once();
    }

    sub_20BDE19E8(a2, sub_20BC01ED4, v4, sub_20BC02DD0, v5);
  }

  return result;
}

uint64_t sub_20BBE99B0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7645E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v35 - v8;
  v10 = sub_20C13AAC4();
  v40 = v10;
  v41 = sub_20BC026A4(&qword_281103AF0, MEMORY[0x277D4F200]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(v10 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4F1F0], v10);
  LOBYTE(v10) = sub_20C1383C4();
  __swift_destroy_boxed_opaque_existential_1(v38);
  if ((v10 & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_allowDistributedSessionBrokering) == 1)
    {
      v35[1] = a1;
      v15 = v1;
      v16 = sub_20C1344B4();
      v18 = v17;
      v38[0] = v16;
      v38[1] = v17;
      v20 = v19 & 1;
      v39 = v19 & 1;
      v36 = xmmword_20C14F2B0;
      v37 = 1;
      sub_20B590B28();
      sub_20B590B7C();
      v21 = sub_20C133BF4();
      sub_20B583F4C(v16, v18, v20);
      if ((v21 & 1) == 0)
      {
        v29 = swift_allocObject();
        *(v29 + 16) = "SeymourUI/SessionPresenter.swift";
        *(v29 + 24) = 32;
        *(v29 + 32) = 2;
        *(v29 + 40) = 1498;
        *(v29 + 48) = &unk_20C1724D8;
        *(v29 + 56) = v15;

        sub_20C137C94();
        v30 = swift_allocObject();
        swift_weakInit();
        v31 = swift_allocObject();
        *(v31 + 16) = sub_20BC01FF0;
        *(v31 + 24) = v30;
        (*(v4 + 16))(v6, v9, v3);
        v32 = (*(v4 + 80) + 16) & ~*(v4 + 80);
        v33 = swift_allocObject();
        (*(v4 + 32))(v33 + v32, v6, v3);
        v34 = (v33 + ((v5 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v34 = sub_20BC0200C;
        v34[1] = v31;
        sub_20C137C94();
        return (*(v4 + 8))(v9, v3);
      }

      v22 = sub_20C133CC4();
      sub_20BC026A4(&qword_27C766EF8, MEMORY[0x277D503C8]);
      v23 = swift_allocError();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D50388], v22);
      *(swift_allocObject() + 16) = v23;
    }

    else
    {
      v25 = sub_20C133CC4();
      sub_20BC026A4(&qword_27C766EF8, MEMORY[0x277D503C8]);
      v26 = swift_allocError();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D50340], v25);
      *(swift_allocObject() + 16) = v26;
    }
  }

  else
  {
    v12 = sub_20C133CC4();
    sub_20BC026A4(&qword_27C766EF8, MEMORY[0x277D503C8]);
    v13 = swift_allocError();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D503A0], v12);
    *(swift_allocObject() + 16) = v13;
  }

  return sub_20C137CA4();
}

uint64_t sub_20BBEA000(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v3 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();
    v4 = swift_allocObject();
    swift_weakLoadStrong();

    swift_weakInit();

    v5 = qword_27C760960;

    if (v5 != -1)
    {
      swift_once();
    }

    sub_20B97E798(v1, sub_20BC0203C, v3, sub_20BC02DD0, v4, *&qword_27C79B550);
  }

  return result;
}

uint64_t sub_20BBEA1AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 64);

    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    if (v2)
    {
      v4 = *(v2 + 176);
      v3 = *(v2 + 184);
      swift_unknownObjectRetain();

      v5 = swift_allocObject();
      swift_weakInit();
      v6 = *(v4 + 56);
      *(v4 + 56) = sub_20BC02044;
      *(v4 + 64) = v5;
      swift_unknownObjectRetain();

      sub_20B583ECC(v6);

      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        (*(v7 + 40))(v4, v3, ObjectType, v7);

        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease_n();
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + 72);

    v11 = v10 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = *(v11 + 8);
      v15 = swift_getObjectType();
      (*(v14 + 16))(0, 0, v15, v14);
    }
  }

  return result;
}

uint64_t sub_20BBEA3CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20BBEA3EC, 0, 0);
}

uint64_t sub_20BBEA3EC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_20BBEA488;

  return sub_20C0823A8();
}

uint64_t sub_20BBEA488(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_20BBEA5D4, 0, 0);
  }
}

uint64_t sub_20BBEA5F8()
{
  v1 = sub_20C13BB84();
  MEMORY[0x28223BE20](v1);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v3 - 8);
  v103 = v93 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  MEMORY[0x28223BE20](v5 - 8);
  v102 = v93 - v6;
  v94 = sub_20C134B64();
  v93[1] = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93[0] = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v8 - 8);
  v96 = v93 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v101 = v93 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v12 - 8);
  v109 = v93 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v14 - 8);
  v108 = v93 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v16 - 8);
  v107 = v93 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v18 - 8);
  v106 = v93 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  MEMORY[0x28223BE20](v20 - 8);
  v105 = v93 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v22 - 8);
  v126 = v93 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  MEMORY[0x28223BE20](v24 - 8);
  v125 = v93 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  MEMORY[0x28223BE20](v26 - 8);
  v124 = v93 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  MEMORY[0x28223BE20](v28 - 8);
  v123 = v93 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v30 - 8);
  v122 = v93 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  MEMORY[0x28223BE20](v32 - 8);
  v121 = v93 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  MEMORY[0x28223BE20](v34 - 8);
  v120 = v93 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v36 - 8);
  v119 = v93 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v38 - 8);
  v118 = v93 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v40 - 8);
  v117 = v93 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  MEMORY[0x28223BE20](v42 - 8);
  v116 = v93 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v44 - 8);
  v115 = v93 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v46 - 8);
  v114 = v93 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v48 - 8);
  v113 = v93 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v50 - 8);
  v112 = v93 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v52 - 8);
  v111 = v93 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v54 - 8);
  v95 = v93 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v110 = v93 - v57;
  v100 = v0;
  v58 = (v0 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_healthStore);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_healthStore), *(v0 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_healthStore + 24));
  LOBYTE(v99) = sub_20C13B1E4() & 1;
  v99 = v99;
  v98 = 1;
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  sub_20C13B1F4();
  sub_20B51CC64(v100 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient, v127);
  v104 = __swift_project_boxed_opaque_existential_1(v127, v127[3]);
  v97 = sub_20C13A464();
  v59 = sub_20C133D84();
  (*(*(v59 - 8) + 56))(v110, 1, 1, v59);
  v60 = sub_20C135854();
  (*(*(v60 - 8) + 56))(v111, 1, 1, v60);
  v61 = sub_20C136194();
  (*(*(v61 - 8) + 56))(v112, 1, 1, v61);
  v62 = sub_20C133DD4();
  (*(*(v62 - 8) + 56))(v113, 1, 1, v62);
  v63 = sub_20C135274();
  (*(*(v63 - 8) + 56))(v114, 1, 1, v63);
  v64 = sub_20C134514();
  (*(*(v64 - 8) + 56))(v115, 1, 1, v64);
  v65 = sub_20C133B04();
  (*(*(v65 - 8) + 56))(v116, 1, 1, v65);
  v66 = sub_20C134C04();
  (*(*(v66 - 8) + 56))(v117, 1, 1, v66);
  v67 = sub_20C1368F4();
  (*(*(v67 - 8) + 56))(v118, 1, 1, v67);
  v68 = sub_20C134914();
  (*(*(v68 - 8) + 56))(v119, 1, 1, v68);
  v69 = sub_20C133374();
  (*(*(v69 - 8) + 56))(v120, 1, 1, v69);
  v70 = sub_20C135B74();
  (*(*(v70 - 8) + 56))(v121, 1, 1, v70);
  v71 = sub_20C134CD4();
  (*(*(v71 - 8) + 56))(v122, 1, 1, v71);
  v72 = sub_20C136EB4();
  (*(*(v72 - 8) + 56))(v123, 1, 1, v72);
  v73 = sub_20C133494();
  (*(*(v73 - 8) + 56))(v124, 1, 1, v73);
  v74 = sub_20C134594();
  (*(*(v74 - 8) + 56))(v125, 1, 1, v74);
  v75 = sub_20C138184();
  (*(*(v75 - 8) + 56))(v126, 1, 1, v75);
  v76 = sub_20C1363D4();
  (*(*(v76 - 8) + 56))(v105, 1, 1, v76);
  v77 = sub_20C1337A4();
  (*(*(v77 - 8) + 56))(v106, 1, 1, v77);
  v78 = sub_20C1337D4();
  (*(*(v78 - 8) + 56))(v107, 1, 1, v78);
  v79 = sub_20C134A94();
  (*(*(v79 - 8) + 56))(v108, 1, 1, v79);
  v80 = sub_20C135364();
  (*(*(v80 - 8) + 56))(v109, 1, 1, v80);
  sub_20C13CE94();
  v81 = v101;
  sub_20C136454();
  v82 = sub_20C136484();
  (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
  v83 = sub_20C136784();
  v84 = v102;
  (*(*(v83 - 8) + 56))(v102, 1, 1, v83);
  v85 = sub_20C137FE4();
  v86 = v103;
  (*(*(v85 - 8) + 56))(v103, 1, 1, v85);
  v87 = v109;
  v88 = v108;
  v89 = v107;
  v90 = v106;
  v91 = v105;
  sub_20C13A174();

  sub_20B520158(v86, &unk_27C768AC0);
  sub_20B520158(v84, &unk_27C765070);
  sub_20B520158(v81, &unk_27C765CB0);
  sub_20B520158(v87, &unk_27C765080);
  sub_20B520158(v88, &unk_27C768AD0);
  sub_20B520158(v89, &unk_27C765090);
  sub_20B520158(v90, &unk_27C768AE0);
  sub_20B520158(v91, &unk_27C7650A0);
  sub_20B520158(v126, &unk_27C768AF0);
  sub_20B520158(v125, &unk_27C7650B0);
  sub_20B520158(v124, &unk_27C768B00);
  sub_20B520158(v123, &unk_27C7650C0);
  sub_20B520158(v122, &unk_27C768B10);
  sub_20B520158(v121, &unk_27C7650D0);
  sub_20B520158(v120, &unk_27C768B20);
  sub_20B520158(v119, &unk_27C7650E0);
  sub_20B520158(v118, &unk_27C767260);
  sub_20B520158(v117, &unk_27C7650F0);
  sub_20B520158(v116, &qword_27C768B30);
  sub_20B520158(v115, &unk_27C765050);
  sub_20B520158(v114, &unk_27C765100);
  sub_20B520158(v113, &unk_27C7687F0);
  sub_20B520158(v112, &unk_27C765110);
  sub_20B520158(v111, &unk_27C76BBF0);
  sub_20B520158(v110, &unk_27C765120);
  return __swift_destroy_boxed_opaque_existential_1(v127);
}

uint64_t sub_20BBEBFD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v21[0] = a2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C136034();
  v12 = v11;
  v21[2] = v10;
  v21[3] = v11;
  v14 = v13 & 1;
  v22 = v13 & 1;
  v23 = 0;
  v24 = 0;
  v25 = 1;
  sub_20BB411BC();
  sub_20BB41210();
  v15 = sub_20C133BF4();
  v16 = sub_20B583F4C(v10, v12, v14);
  if ((v15 & 1) == 0)
  {
    return a3(v16);
  }

  sub_20C13B4A4();
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1F4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_20B517000, v17, v18, "Estimated Metrics Prompt isn't acknowledged. Presenting.", v19, 2u);
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BBEC3E0(a3, a4);
  }

  return result;
}

uint64_t sub_20BBEC1F8(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v10 = a1;
  v11 = sub_20C13BB74();
  v12 = sub_20C13D1D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21[1] = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22 = a2;
    v16 = v15;
    *v14 = 138412290;
    v17 = a1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_20B517000, v11, v12, "Error getting Estimated Metrics Prompt Acknowledgement: %@", v14, 0xCu);
    sub_20B520158(v16, &unk_27C762E30);
    a2 = v22;
    MEMORY[0x20F2F6A40](v16, -1, -1);
    MEMORY[0x20F2F6A40](v14, -1, -1);
  }

  v19 = (*(v7 + 8))(v9, v6);
  return a2(v19);
}

uint64_t sub_20BBEC3E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  v10 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_privacyPreferenceClient;
  v11 = swift_allocObject();
  swift_weakInit();
  sub_20B51CC64(v3 + v10, v16);
  v12 = swift_allocObject();
  sub_20B52E424(v16, (v12 + 2));
  v12[7] = v11;
  v12[8] = a1;
  v12[9] = a2;

  v13 = sub_20BBD7908();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20BFE5A8C(v13, sub_20BC01F30);

    result = swift_unknownObjectRelease();
  }

  else
  {
  }

  *(v3 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_estimatedMetricsPromptVisible) = 1;
  return result;
}

uint64_t sub_20BBEC5DC(int a1, void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v40 = a3;
  v41 = a5;
  v36 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v38 = &v35 - v11;
  MEMORY[0x28223BE20](v12);
  v39 = &v35 - v13;
  v14 = sub_20C13BB84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v18 = sub_20C13BB74();
  v19 = sub_20C13D1F4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = a4;
    v21 = v20;
    *v20 = 67109120;
    *(v20 + 4) = v36 & 1;
    _os_log_impl(&dword_20B517000, v18, v19, "Estimated Metrics - user selected %{BOOL}d", v20, 8u);
    v22 = v21;
    a4 = v35;
    MEMORY[0x20F2F6A40](v22, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v23 = v38;
  sub_20C139C44();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_20BBECA08;
  *(v24 + 24) = 0;
  v25 = v37;
  (*(v8 + 16))(v37, v23, v7);
  v26 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v27 = swift_allocObject();
  (*(v8 + 32))(v27 + v26, v25, v7);
  v28 = (v27 + ((v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_20B5F7764;
  v28[1] = v24;
  v29 = v39;
  sub_20C137C94();
  v30 = *(v8 + 8);
  v30(v23, v7);
  v31 = sub_20C137CB4();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  v31(sub_20B5DF6DC, v32);

  v30(v29, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_estimatedMetricsPromptVisible) = 0;
  }

  return a4(Strong);
}

uint64_t sub_20BBECA3C(void *a1, void (*a2)(__n128), const char *a3)
{
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  v12 = a1;
  v13 = sub_20C13BB74();
  v14 = sub_20C13D1D4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23[0] = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v23[1] = v3;
    v18 = v17;
    v24 = v17;
    *v16 = 136446210;
    swift_getErrorValue();
    v19 = MEMORY[0x20F2F5850](v23[3], v23[4]);
    v21 = sub_20B51E694(v19, v20, &v24);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_20B517000, v13, v14, v23[0], v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x20F2F6A40](v18, -1, -1);
    MEMORY[0x20F2F6A40](v16, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_20BBECC24(void *a1)
{
  v2 = type metadata accessor for PageAlertAction();
  v42 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v9 = a1;
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v41 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v45 = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v15 = MEMORY[0x20F2F5850](v43, v44);
    v17 = sub_20B51E694(v15, v16, &v45);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_20B517000, v10, v11, "CreateSession failed with error: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F2F6A40](v14, -1, -1);
    MEMORY[0x20F2F6A40](v13, -1, -1);

    (*(v6 + 8))(v8, v41);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass_];
  v21 = sub_20C132964();
  v23 = v22;

  v24 = swift_allocObject();
  swift_weakInit();
  sub_20C132ED4();
  v25 = &v4[v2[6]];
  *v25 = v21;
  v25[1] = v23;
  v4[v2[5]] = 2;
  v26 = &v4[v2[7]];
  *v26 = sub_20BC01F28;
  v26[1] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
  v27 = (v42[80] + 32) & ~v42[80];
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C14F980;
  v42 = v4;
  sub_20BC023F4(v4, v28 + v27, type metadata accessor for PageAlertAction);
  v29 = [v19 bundleForClass_];
  v30 = sub_20C132964();
  v32 = v31;

  v33 = [v19 bundleForClass_];
  v34 = sub_20C132964();
  v36 = v35;

  type metadata accessor for DefaultPageAlertPresenter();
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  swift_unknownObjectWeakInit();
  v38 = MEMORY[0x277D84F90];
  *(v37 + 32) = v28;
  *(v37 + 40) = v38;
  *(v37 + 48) = v30;
  *(v37 + 56) = v32;
  *(v37 + 64) = v34;
  *(v37 + 72) = v36;
  *(v37 + 80) = 1;
  *(v37 + 88) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BC01208(v37, 0, 0, Strong, sub_20BBFF48C, &block_descriptor_98);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_20BC0245C(v42, type metadata accessor for PageAlertAction);
}

uint64_t sub_20BBED194()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BBFA2F4();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_onSessionCreationError);
    sub_20B584050(v1);

    if (v1)
    {
      v1(result);
      return sub_20B583ECC(v1);
    }
  }

  return result;
}

uint64_t sub_20BBED254(uint64_t a1)
{
  v2 = sub_20C136484();
  v240 = *(v2 - 8);
  v241 = v2;
  MEMORY[0x28223BE20](v2);
  v213 = &v193 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C135B74();
  v226 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v198 = &v193 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_20C133D84();
  v224 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v197 = &v193 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAF8);
  MEMORY[0x28223BE20](v7 - 8);
  v210 = &v193 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v9 - 8);
  v223 = &v193 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  MEMORY[0x28223BE20](v11 - 8);
  v208 = &v193 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v13 - 8);
  v211 = &v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v207 = &v193 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v17 - 8);
  v206 = &v193 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v19 - 8);
  v205 = &v193 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v21 - 8);
  v204 = &v193 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v23 - 8);
  v221 = &v193 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  MEMORY[0x28223BE20](v25 - 8);
  v220 = &v193 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v27 - 8);
  v222 = &v193 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  MEMORY[0x28223BE20](v29 - 8);
  v219 = &v193 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  MEMORY[0x28223BE20](v31 - 8);
  v218 = &v193 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  MEMORY[0x28223BE20](v33 - 8);
  v217 = &v193 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v35 - 8);
  v238 = &v193 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  MEMORY[0x28223BE20](v37 - 8);
  v209 = &v193 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v242 = &v193 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  MEMORY[0x28223BE20](v41 - 8);
  v237 = &v193 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v43 - 8);
  v236 = &v193 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v45 - 8);
  v235 = &v193 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v47 - 8);
  v239 = &v193 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  MEMORY[0x28223BE20](v49 - 8);
  v234 = &v193 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v51 - 8);
  v233 = &v193 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v53 - 8);
  v232 = &v193 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v55 - 8);
  v231 = &v193 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v57 - 8);
  v230 = &v193 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v59 - 8);
  v229 = &v193 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v61 - 8);
  v203 = &v193 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v228 = &v193 - v64;
  v65 = sub_20C137EA4();
  v66 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v68 = &v193 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_20C13BB84();
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v196 = &v193 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v193 = &v193 - v73;
  MEMORY[0x28223BE20](v74);
  v76 = &v193 - v75;
  sub_20C13B4A4();
  v77 = *(v66 + 16);
  v212 = a1;
  v77(v68, a1, v65);
  v78 = sub_20C13BB74();
  v79 = sub_20C13D1F4();
  v80 = os_log_type_enabled(v78, v79);
  v216 = v4;
  v215 = v69;
  v214 = v70;
  if (v80)
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v243 = v82;
    *v81 = 136446210;
    sub_20BC026A4(&unk_27C76BCA0, MEMORY[0x277D53AE0]);
    v83 = sub_20C13DFA4();
    v85 = v84;
    (*(v66 + 8))(v68, v65);
    v86 = sub_20B51E694(v83, v85, &v243);

    *(v81 + 4) = v86;
    _os_log_impl(&dword_20B517000, v78, v79, "Handling remote distributed session: %{public}s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v82);
    MEMORY[0x20F2F6A40](v82, -1, -1);
    v87 = v81;
    v4 = v216;
    MEMORY[0x20F2F6A40](v87, -1, -1);

    (*(v214 + 8))(v76, v215);
  }

  else
  {

    (*(v66 + 8))(v68, v65);
    (*(v70 + 8))(v76, v69);
  }

  v199 = *(v227 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24);
  v200 = *(v227 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 32);
  v202 = __swift_project_boxed_opaque_existential_1((v227 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), v199);
  v201 = sub_20C13A464();
  (*(v224 + 56))(v228, 1, 1, v225);
  v88 = sub_20C135854();
  (*(*(v88 - 8) + 56))(v229, 1, 1, v88);
  v89 = sub_20C136194();
  (*(*(v89 - 8) + 56))(v230, 1, 1, v89);
  v90 = sub_20C133DD4();
  (*(*(v90 - 8) + 56))(v231, 1, 1, v90);
  v91 = sub_20C135274();
  (*(*(v91 - 8) + 56))(v232, 1, 1, v91);
  v92 = sub_20C134514();
  (*(*(v92 - 8) + 56))(v233, 1, 1, v92);
  v93 = sub_20C133B04();
  (*(*(v93 - 8) + 56))(v234, 1, 1, v93);
  v94 = sub_20C134C04();
  (*(*(v94 - 8) + 56))(v239, 1, 1, v94);
  v95 = sub_20C1368F4();
  (*(*(v95 - 8) + 56))(v235, 1, 1, v95);
  v96 = sub_20C134914();
  (*(*(v96 - 8) + 56))(v236, 1, 1, v96);
  v97 = sub_20C133374();
  (*(*(v97 - 8) + 56))(v237, 1, 1, v97);
  v98 = *(v226 + 56);
  v195 = v226 + 56;
  v194 = v98;
  v98(v242, 1, 1, v4);
  v99 = sub_20C134CD4();
  (*(*(v99 - 8) + 56))(v238, 1, 1, v99);
  v100 = sub_20C136EB4();
  (*(*(v100 - 8) + 56))(v217, 1, 1, v100);
  v101 = sub_20C133494();
  (*(*(v101 - 8) + 56))();
  v102 = sub_20C134594();
  (*(*(v102 - 8) + 56))(v219, 1, 1, v102);
  v103 = sub_20C138184();
  (*(*(v103 - 8) + 56))(v222, 1, 1, v103);
  sub_20C13CE94();
  v104 = v220;
  sub_20C1363B4();
  v105 = sub_20C1363D4();
  (*(*(v105 - 8) + 56))(v104, 0, 1, v105);
  v106 = sub_20C1337A4();
  (*(*(v106 - 8) + 56))(v221, 1, 1, v106);
  v107 = sub_20C1337D4();
  v108 = v204;
  (*(*(v107 - 8) + 56))(v204, 1, 1, v107);
  v109 = sub_20C134A94();
  v110 = v205;
  (*(*(v109 - 8) + 56))(v205, 1, 1, v109);
  v111 = sub_20C135364();
  v112 = v206;
  (*(*(v111 - 8) + 56))(v206, 1, 1, v111);
  v113 = v207;
  (*(v240 + 56))(v207, 1, 1, v241);
  v114 = sub_20C136784();
  v115 = v208;
  (*(*(v114 - 8) + 56))(v208, 1, 1, v114);
  v116 = sub_20C137FE4();
  v117 = v223;
  (*(*(v116 - 8) + 56))(v223, 1, 1, v116);
  v118 = v222;
  v119 = v217;
  sub_20C13A174();

  sub_20B520158(v117, &unk_27C768AC0);
  sub_20B520158(v115, &unk_27C765070);
  sub_20B520158(v113, &unk_27C765CB0);
  sub_20B520158(v112, &unk_27C765080);
  sub_20B520158(v110, &unk_27C768AD0);
  sub_20B520158(v108, &unk_27C765090);
  sub_20B520158(v221, &unk_27C768AE0);
  sub_20B520158(v220, &unk_27C7650A0);
  sub_20B520158(v118, &unk_27C768AF0);
  sub_20B520158(v219, &unk_27C7650B0);
  sub_20B520158(v218, &unk_27C768B00);
  sub_20B520158(v119, &unk_27C7650C0);
  sub_20B520158(v238, &unk_27C768B10);
  sub_20B520158(v242, &unk_27C7650D0);
  sub_20B520158(v237, &unk_27C768B20);
  sub_20B520158(v236, &unk_27C7650E0);
  sub_20B520158(v235, &unk_27C767260);
  v120 = v239;
  sub_20B520158(v239, &unk_27C7650F0);
  sub_20B520158(v234, &qword_27C768B30);
  v121 = v227;
  sub_20B520158(v233, &unk_27C765050);
  sub_20B520158(v232, &unk_27C765100);
  sub_20B520158(v231, &unk_27C7687F0);
  sub_20B520158(v230, &unk_27C765110);
  sub_20B520158(v229, &unk_27C76BBF0);
  sub_20B520158(v228, &unk_27C765120);
  v122 = v210;
  sub_20C137E94();
  v123 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_countdown;
  swift_beginAccess();
  sub_20B5DF2D4(v122, v121 + v123, &qword_27C76BAF8);
  swift_endAccess();
  sub_20C137DE4();
  v124 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_gymKitConnection;
  swift_beginAccess();
  sub_20B5DF2D4(v120, v121 + v124, &unk_27C7650F0);
  swift_endAccess();
  sub_20C137E84();
  v125 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_playback;
  swift_beginAccess();
  v126 = v224;
  v127 = v225;
  sub_20B5DF2D4(v118, v121 + v125, &unk_27C768AF0);
  swift_endAccess();
  v128 = v223;
  sub_20C137E74();
  v129 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workout;
  swift_beginAccess();
  sub_20B5DF2D4(v128, v121 + v129, &unk_27C768AC0);
  swift_endAccess();
  v130 = v203;
  sub_20C137D74();
  if ((*(v126 + 48))(v130, 1, v127) == 1)
  {
    sub_20B520158(v130, &unk_27C765120);
  }

  else
  {
    v131 = v197;
    (*(v126 + 32))(v197, v130, v127);

    sub_20BACD748(v131);

    sub_20B8BFD54(v131);
    (*(v126 + 8))(v131, v127);
  }

  v132 = v213;
  v133 = v209;

  sub_20C0F7938();

  sub_20C137E24();
  v134 = v226;
  v135 = v216;
  v136 = (*(v226 + 48))(v133, 1, v216);
  v137 = v215;
  if (v136 == 1)
  {
    sub_20B520158(v133, &unk_27C7650D0);
  }

  else
  {
    v138 = *(v134 + 32);
    v139 = v198;
    v138(v198, v133, v135);
    v140 = v121[18];
    v141 = v242;
    v138(v242, v139, v135);
    v194(v141, 0, 1, v135);
    v142 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_mindfulMinutesMetric;
    swift_beginAccess();
    sub_20B5DF2D4(v141, v140 + v142, &unk_27C7650D0);
    swift_endAccess();
  }

  v143 = v214;
  v144 = swift_allocObject();
  swift_weakInit();
  v145 = swift_allocObject();
  swift_weakInit();
  v146 = v211;
  sub_20C137E44();
  if ((*(v240 + 48))(v146, 1, v241) != 1)
  {
    (*(v240 + 32))(v132, v146, v241);
    if (*(v121 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_allowDistributedSessionBrokering) == 1)
    {
      v152 = sub_20C136464();
      if ((v154 & 1) == 0)
      {
        sub_20B583F4C(v152, v153, 0);
        goto LABEL_42;
      }

      v155 = v152;
      sub_20BBF08B8(v132);
      if (v155 <= 2u)
      {
        if (v155)
        {
          if (v155 == 1)
          {
            v156 = v227[21];
            if (swift_unknownObjectWeakLoadStrong())
            {
              v157 = *(v156 + 24);
              ObjectType = swift_getObjectType();
              (*(v157 + 8))(1, ObjectType, v157);
              swift_unknownObjectRelease();
            }

            sub_20BBDC43C();
          }

          else
          {
            v178 = v227[20];
            if (swift_unknownObjectWeakLoadStrong())
            {
              v179 = *(v178 + 24);
              v180 = swift_getObjectType();
              (*(v179 + 8))(1, v180, v179);
              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
          v159 = v193;
          sub_20C13B4A4();
          v160 = sub_20C13BB74();
          v161 = sub_20C13D1D4();
          v162 = os_log_type_enabled(v160, v161);
          v163 = v227;
          if (v162)
          {
            v164 = swift_slowAlloc();
            *v164 = 0;
            _os_log_impl(&dword_20B517000, v160, v161, "Workout device state is discovering watch", v164, 2u);
            v165 = v164;
            v159 = v193;
            MEMORY[0x20F2F6A40](v165, -1, -1);
          }

          (*(v143 + 8))(v159, v137);
          sub_20C13CE94();
          v167 = sub_20B85D3B4(v166);
          v169 = v163[22];
          v168 = v163[23];
          if (v167)
          {
            v170 = v163[9];
            v171 = swift_allocObject();
            swift_weakInit();
            v172 = *(v169 + 56);
            *(v169 + 56) = sub_20BC02DCC;
            *(v169 + 64) = v171;
            swift_unknownObjectRetain();

            sub_20B583ECC(v172);

            v173 = v170 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v175 = *(v173 + 8);
              v176 = Strong;
              v177 = swift_getObjectType();
              (*(v175 + 64))(v169, v168, v177, v175);
              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            v186 = swift_unknownObjectWeakLoadStrong();
            v132 = v213;
            v187 = v227;
            if (v186)
            {
              v188 = v186;
              v189 = *(v173 + 8);
              v190 = swift_getObjectType();
              (*(v189 + 16))(1, 0, v190, v189);
            }

            __swift_project_boxed_opaque_existential_1((v187 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_remoteBrowsingSource), *(v187 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_remoteBrowsingSource + 24));
            v191 = sub_20C13B194();
            if (qword_27C7609A8 != -1)
            {
              v192 = v191;
              swift_once();
              v191 = v192;
            }

            sub_20BDE19E8(v191, sub_20BC01ED4, v144, sub_20BC01F04, v145);
          }

          else
          {
            v181 = v163[19];
            v182 = swift_allocObject();
            swift_weakInit();
            v183 = *(v169 + 56);
            *(v169 + 56) = sub_20BC01F20;
            *(v169 + 64) = v182;
            swift_unknownObjectRetain();

            sub_20B583ECC(v183);

            if (swift_unknownObjectWeakLoadStrong())
            {
              v184 = *(v181 + 40);
              v185 = swift_getObjectType();
              (*(v184 + 56))(v169, v168, v185, v184);
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
            sub_20BDE3018(sub_20BC01ED4, v144, sub_20BC01F04, v145);
            v132 = v213;
          }
        }

        goto LABEL_42;
      }
    }

    sub_20BBF24A8();
LABEL_42:

    return (*(v240 + 8))(v132, v241);
  }

  sub_20B520158(v146, &unk_27C765CB0);
  v147 = v196;
  sub_20C13B4A4();
  v148 = sub_20C13BB74();
  v149 = sub_20C13D1D4();
  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    *v150 = 0;
    _os_log_impl(&dword_20B517000, v148, v149, "Remote session started when no watch connection attached to session. This is unexpected", v150, 2u);
    MEMORY[0x20F2F6A40](v150, -1, -1);
  }

  return (*(v143 + 8))(v147, v137);
}

uint64_t sub_20BBEF340(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 152);

    swift_beginAccess();
    v5 = swift_weakLoadStrong();
    if (v5)
    {
      v6 = *(v5 + 176);
      v7 = *(v5 + 184);
      swift_unknownObjectRetain();

      v8 = swift_allocObject();
      swift_weakInit();
      v9 = *(v6 + 56);
      *(v6 + 56) = a2;
      *(v6 + 64) = v8;
      swift_unknownObjectRetain();

      sub_20B583ECC(v9);

      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v4 + 40);
        ObjectType = swift_getObjectType();
        (*(v10 + 56))(v6, v7, ObjectType, v10);

        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease_n();
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(result + 72);

    v14 = v13 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = *(v14 + 8);
      v18 = swift_getObjectType();
      (*(v17 + 16))(0, 0, v18, v17);
    }
  }

  return result;
}

uint64_t sub_20BBEF550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v30[3] = a5;
  v30[4] = a6;
  v30[1] = a3;
  v30[2] = a4;
  v8 = sub_20C137FE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v30 - v13;
  v15 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workout;
  swift_beginAccess();
  sub_20B52F9E8(v7 + v15, v14, &unk_27C768AC0);
  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_20B520158(v14, &unk_27C768AC0);
    v16 = 0.0;
  }

  else
  {
    (*(v9 + 16))(v11, v14, v8);
    sub_20B520158(v14, &unk_27C768AC0);
    sub_20C13CE94();
    sub_20C137FA4();
    v16 = v17;
    (*(v9 + 8))(v11, v8);
  }

  sub_20C13D544();
  v19 = v18;
  sub_20C13D544();
  v21 = v20;
  sub_20B60E9C8(v19);
  sub_20BB79FC0(v19, v16);
  sub_20B82271C(v19, v21, v16);
  v22 = *(*(v7 + 96) + 240);
  swift_getObjectType();
  sub_20C138624();
  v24 = v23;
  result = sub_20C138754();
  if ((*(v22 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_state) & 1) == 0)
  {
    v27 = v26;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v28 = *(v22 + 24);
      ObjectType = swift_getObjectType();
      (*(v28 + 56))(ObjectType, v28, v24, v27);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BBEF84C(char a1)
{
  v105 = sub_20C134864();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C1391E4();
  v128 = *(v3 - 8);
  v129 = v3;
  MEMORY[0x28223BE20](v3);
  v127 = v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C134C44();
  MEMORY[0x28223BE20](v5 - 8);
  v126 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v7 - 8);
  v125 = v95 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v9 - 8);
  v124 = v95 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v11 - 8);
  v123 = v95 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v95 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v95 - v17;
  v19 = sub_20C135D24();
  v115 = *(v19 - 8);
  v116 = v19;
  MEMORY[0x28223BE20](v19);
  v119 = v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C134F74();
  v121 = *(v21 - 8);
  v122 = v21;
  MEMORY[0x28223BE20](v21);
  v118 = v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v120 = v95 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v25 - 8);
  v114 = v95 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v27 - 8);
  v112 = v95 - v28;
  v117 = sub_20C1333A4();
  v29 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v130 = v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v31 - 8);
  v110 = v95 - v32;
  v108 = sub_20C1352E4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v109 = v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = v95 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = v95 - v38;
  v40 = sub_20C134F24();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = v95 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = v95 - v45;
  v47 = sub_20C133654();
  MEMORY[0x28223BE20](v47);
  v51 = v95 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v113 = v48;
    v111 = v49;
    v106 = v51;
    v52 = sub_20C136664();
    (*(*(v52 - 8) + 56))(v46, 1, 1, v52);
    (*(v41 + 104))(v43, *MEMORY[0x277D513F8], v40);
    v53 = sub_20C132C14();
    v101 = v18;
    v98 = v53;
    v54 = *(v53 - 8);
    v97 = *(v54 + 56);
    v99 = v54 + 56;
    v97(v39, 1, 1, v53);
    v100 = v29;
    v55 = v131;
    v56 = v39;
    v95[2] = sub_20C134324();
    v95[1] = v57;
    v102 = v15;
    v58 = *MEMORY[0x277D52408];
    v59 = sub_20C135ED4();
    v60 = *(v59 - 8);
    (*(v60 + 104))(v36, v58, v59);
    v96 = *(v60 + 56);
    v96(v36, 0, 1, v59);
    (*(v107 + 104))(v109, *MEMORY[0x277D51768], v108);
    v61 = sub_20C136E94();
    (*(*(v61 - 8) + 56))(v110, 1, 1, v61);
    v62 = v106;
    sub_20C133644();
    v110 = sub_20C134324();
    v109 = v63;
    v64 = *MEMORY[0x277D51840];
    v65 = sub_20C1352F4();
    v66 = *(v65 - 8);
    v67 = v112;
    (*(v66 + 104))(v112, v64, v65);
    (*(v66 + 56))(v67, 0, 1, v65);
    v68 = v55 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutSessionConfiguration;
    v69 = (v68 + *(type metadata accessor for WorkoutSessionConfiguration() + 44));
    v70 = *v69;
    v71 = v69[1];
    v97(v56, 1, 1, v98);
    v96(v36, 1, 1, v59);
    v72 = sub_20C136914();
    (*(*(v72 - 8) + 56))(v114, 1, 1, v72);
    sub_20B58C2C8(v70, v71);
    v73 = v130;
    sub_20C133384();
    v74 = v119;
    (*(v111 + 16))(v119, v62, v113);
    (*(v115 + 104))(v74, *MEMORY[0x277D52120], v116);
    v75 = v100;
    v76 = v101;
    v77 = v117;
    (*(v100 + 16))(v101, v73, v117);
    (*(v75 + 56))(v76, 0, 1, v77);
    v78 = sub_20C135664();
    (*(*(v78 - 8) + 56))(v102, 1, 1, v78);
    v79 = sub_20C135674();
    (*(*(v79 - 8) + 56))(v123, 1, 1, v79);
    v80 = v124;
    sub_20C134F94();
    v81 = sub_20C134FB4();
    (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
    (*(*(v82 - 8) + 56))(v125, 1, 1, v82);
    v83 = sub_20C135F14();
    (*(*(v83 - 8) + 56))(v126, 1, 1, v83);
    v84 = v120;
    sub_20C134F54();
    v86 = v121;
    v85 = v122;
    (*(v121 + 16))(v118, v84, v122);
    v87 = v127;
    sub_20C1391F4();
    swift_getObjectType();
    sub_20BC026A4(&qword_281103B30, MEMORY[0x277D542C0]);
    v88 = v129;
    sub_20C13A764();
    (*(v128 + 8))(v87, v88);
    (*(v86 + 8))(v84, v85);
    (*(v75 + 8))(v130, v77);
    (*(v111 + 8))(v106, v113);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v90 = Strong;
    [*(Strong + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonView) setHidden_];
    v91 = *(v90 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_productPlacementView);
    if (v91)
    {
      [v91 setHidden_];
    }

    swift_unknownObjectRelease();
  }

  v92 = v131;
  result = sub_20BBEA5F8();
  if (!*(v92 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_state))
  {
    __swift_project_boxed_opaque_existential_1((v131 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), *(v131 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24));
    sub_20C13CE94();
    v94 = v103;
    sub_20C134854();
    sub_20C13A464();
    sub_20C13A164();

    return (*(v104 + 8))(v94, v105);
  }

  return result;
}

unint64_t sub_20BBF08B8(uint64_t a1)
{
  v2 = v1;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v84[-v4];
  v5 = sub_20C136484();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v98 = &v84[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v89 = &v84[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC68);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v84[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v14 - 8);
  v96 = &v84[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v100 = &v84[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v84[-v19];
  v21 = sub_20C13BB84();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v93 = &v84[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v26 = &v84[-v25];
  sub_20C13B4A4();
  sub_20C13BB64();
  v27 = *(v22 + 8);
  v94 = v22 + 8;
  v95 = v21;
  v91 = v27;
  v27(v26, v21);
  v28 = *(v6 + 16);
  v99 = a1;
  v102 = v28;
  v97 = v6 + 16;
  v28(v20, a1, v5);
  v92 = *(v6 + 56);
  v92(v20, 0, 1, v5);
  v29 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutDeviceConnection;
  swift_beginAccess();
  v30 = *(v11 + 56);
  sub_20B52F9E8(v20, v13, &unk_27C765CB0);
  v101 = v2;
  sub_20B52F9E8(&v29[v2], &v13[v30], &unk_27C765CB0);
  v31 = *(v6 + 48);
  if (v31(v13, 1, v5) == 1)
  {
    sub_20B520158(v20, &unk_27C765CB0);
    if (v31(&v13[v30], 1, v5) == 1)
    {
      return sub_20B520158(v13, &unk_27C765CB0);
    }
  }

  else
  {
    sub_20B52F9E8(v13, v100, &unk_27C765CB0);
    if (v31(&v13[v30], 1, v5) != 1)
    {
      v90 = v6 + 56;
      v54 = v89;
      (*(v6 + 32))(v89, &v13[v30], v5);
      sub_20BC026A4(&unk_27C76BC80, MEMORY[0x277D529D8]);
      v55 = v100;
      v85 = sub_20C13C894();
      v56 = *(v6 + 8);
      v56(v54, v5);
      sub_20B520158(v20, &unk_27C765CB0);
      v56(v55, v5);
      result = sub_20B520158(v13, &unk_27C765CB0);
      v33 = v101;
      v34 = v98;
      if (v85)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_20B520158(v20, &unk_27C765CB0);
    (*(v6 + 8))(v100, v5);
  }

  v90 = v6 + 56;
  sub_20B520158(v13, &unk_27C76BC68);
  v33 = v101;
  v34 = v98;
LABEL_7:
  v100 = v29;
  v35 = v93;
  sub_20C13B4A4();
  v36 = v99;
  v102(v34, v99, v5);
  v37 = sub_20C13BB74();
  v38 = sub_20C13D1F4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = v35;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v103[0] = v41;
    *v40 = 136446210;
    sub_20BC026A4(&qword_27C76BC78, MEMORY[0x277D529D8]);
    v42 = sub_20C13DFA4();
    v43 = v34;
    v45 = v44;
    (*(v6 + 8))(v43, v5);
    v46 = sub_20B51E694(v42, v45, v103);

    *(v40 + 4) = v46;
    _os_log_impl(&dword_20B517000, v37, v38, "Workout Device Connection Updated: %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v47 = v41;
    v36 = v99;
    MEMORY[0x20F2F6A40](v47, -1, -1);
    MEMORY[0x20F2F6A40](v40, -1, -1);

    v48 = v39;
    v33 = v101;
  }

  else
  {

    (*(v6 + 8))(v34, v5);
    v48 = v35;
  }

  v91(v48, v95);
  v49 = v96;
  v102(v96, v36, v5);
  v92(v49, 0, 1, v5);
  v50 = v100;
  swift_beginAccess();
  sub_20B5DF2D4(v49, &v50[v33], &unk_27C765CB0);
  swift_endAccess();
  result = sub_20C136464();
  if ((v52 & 1) == 0)
  {
    return sub_20B583F4C(result, v51, 0);
  }

  if (result <= 1u)
  {
    if (result)
    {
      v57 = *(v33 + 168);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v58 = *(v57 + 24);
        ObjectType = swift_getObjectType();
        (*(v58 + 8))(1, ObjectType, v58);
        swift_unknownObjectRelease();
      }

      v60 = *(v33 + 160);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v61 = *(v60 + 24);
        v62 = swift_getObjectType();
        (*(v61 + 8))(0, v62, v61);
        swift_unknownObjectRelease();
      }

      sub_20BDE3794();
      return sub_20BBDC43C();
    }
  }

  else if (result == 2)
  {
    v63 = *(v33 + 160);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v64 = *(v63 + 24);
      v65 = swift_getObjectType();
      (*(v64 + 8))(1, v65, v64);
      swift_unknownObjectRelease();
    }

    v66 = *(v33 + 168);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v67 = *(v66 + 24);
      v68 = swift_getObjectType();
      (*(v67 + 8))(0, v68, v67);
      swift_unknownObjectRelease();
    }

    return sub_20BDE3794();
  }

  else if (result == 3)
  {
    v53 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_brokerDistributedSessionRetryTimer;
    if (*(v33 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_brokerDistributedSessionRetryTimer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_20C13D3D4();
      swift_unknownObjectRelease();
    }

    *(v33 + v53) = 0;
    swift_unknownObjectRelease();
    v70 = sub_20C13AAC4();
    v103[3] = v70;
    v103[4] = sub_20BC026A4(&qword_281103AF0, MEMORY[0x277D4F200]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v103);
    (*(*(v70 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4F1F0], v70);
    LOBYTE(v70) = sub_20C1383C4();
    __swift_destroy_boxed_opaque_existential_1(v103);
    if (v70 & 1) == 0 && (result = os_variant_has_internal_content(), (result) || (result = sub_20C136474(), (v72 & 1) == 0) || result)
    {
      if ((*(v33 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_estimatedMetricsPromptVisible) & 1) == 0)
      {
        return sub_20BBF24A8();
      }
    }

    else
    {
      sub_20BDE3794();
      v73 = *(v33 + 160);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v74 = *(v73 + 24);
        v75 = swift_getObjectType();
        (*(v74 + 16))(v75, v74);
        swift_unknownObjectRelease();
      }

      v76 = *(v33 + 168);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v77 = *(v76 + 24);
        v78 = swift_getObjectType();
        (*(v77 + 16))(v78, v77);
        swift_unknownObjectRelease();
      }

      v79 = v86;
      sub_20BBE99B0(v86);
      v80 = swift_allocObject();
      swift_weakInit();
      v81 = v88;
      v82 = sub_20C137CB4();
      v83 = swift_allocObject();
      *(v83 + 16) = sub_20BC01ECC;
      *(v83 + 24) = v80;

      v82(sub_20B5DF6DC, v83);

      return (*(v87 + 8))(v79, v81);
    }
  }

  else
  {
    v69 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_brokerDistributedSessionRetryTimer;
    if (*(v33 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_brokerDistributedSessionRetryTimer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_20C13D3D4();
      swift_unknownObjectRelease();
    }

    *(v33 + v69) = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BBF1528(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong || (v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_estimatedMetricsPromptVisible), result = , (v2 & 1) == 0))
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        sub_20BBF24A8();
      }
    }
  }

  return result;
}

unint64_t sub_20BBF15C4(uint64_t a1)
{
  v2 = v1;
  v85 = a1;
  v71 = sub_20C136484();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v66[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v66[-v5];
  v6 = sub_20C1368F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v81 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v72 = &v66[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BC50);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v66[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v15 - 8);
  v79 = &v66[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v66[-v18];
  MEMORY[0x28223BE20](v20);
  v22 = &v66[-v21];
  v23 = sub_20C13BB84();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v83 = &v66[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v28 = &v66[-v27];
  sub_20C13B4A4();
  sub_20C13BB64();
  v29 = *(v24 + 8);
  v77 = v24 + 8;
  v78 = v23;
  v74 = v29;
  v29(v28, v23);
  v84 = *(v7 + 16);
  v80 = v7 + 16;
  v84(v22, v85, v6);
  v75 = *(v7 + 56);
  v76 = v7 + 56;
  v75(v22, 0, 1, v6);
  v30 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_heartRateDeviceConnection;
  swift_beginAccess();
  v31 = *(v12 + 56);
  sub_20B52F9E8(v22, v14, &unk_27C767260);
  v82 = v2;
  sub_20B52F9E8(v2 + v30, &v14[v31], &unk_27C767260);
  v32 = *(v7 + 48);
  if (v32(v14, 1, v6) == 1)
  {
    sub_20B520158(v22, &unk_27C767260);
    if (v32(&v14[v31], 1, v6) == 1)
    {
      v33 = &unk_27C767260;
      v34 = v14;
      return sub_20B520158(v34, v33);
    }

    goto LABEL_6;
  }

  sub_20B52F9E8(v14, v19, &unk_27C767260);
  if (v32(&v14[v31], 1, v6) == 1)
  {
    sub_20B520158(v22, &unk_27C767260);
    (*(v7 + 8))(v19, v6);
LABEL_6:
    v73 = v30;
    sub_20B520158(v14, &qword_27C76BC50);
    v35 = v81;
    v36 = v82;
    goto LABEL_7;
  }

  v73 = v30;
  v58 = v72;
  (*(v7 + 32))(v72, &v14[v31], v6);
  sub_20BC026A4(&qword_27C76BC60, MEMORY[0x277D52DE8]);
  v67 = sub_20C13C894();
  v59 = *(v7 + 8);
  v59(v58, v6);
  sub_20B520158(v22, &unk_27C767260);
  v59(v19, v6);
  result = sub_20B520158(v14, &unk_27C767260);
  v35 = v81;
  v36 = v82;
  if (v67)
  {
    return result;
  }

LABEL_7:
  v37 = v83;
  sub_20C13B4A4();
  v84(v35, v85, v6);
  v38 = sub_20C13BB74();
  v39 = sub_20C13D1F4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v86[0] = v41;
    *v40 = 136446210;
    sub_20BC026A4(&qword_27C76BC58, MEMORY[0x277D52DE8]);
    v42 = sub_20C13DFA4();
    v43 = v35;
    v45 = v44;
    (*(v7 + 8))(v43, v6);
    v46 = sub_20B51E694(v42, v45, v86);

    *(v40 + 4) = v46;
    _os_log_impl(&dword_20B517000, v38, v39, "Heart Rate Device Connection Updated: %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x20F2F6A40](v41, -1, -1);
    MEMORY[0x20F2F6A40](v40, -1, -1);

    v47 = v83;
  }

  else
  {

    (*(v7 + 8))(v35, v6);
    v47 = v37;
  }

  v74(v47, v78);
  v48 = v79;
  v84(v79, v85, v6);
  v75(v48, 0, 1, v6);
  v49 = v73;
  swift_beginAccess();
  sub_20B5DF2D4(v48, v36 + v49, &unk_27C767260);
  swift_endAccess();
  result = sub_20C1368D4();
  if ((v52 & 1) == 0)
  {
    return sub_20B583F4C(result, v51, 0);
  }

  if ((result & 1) == 0)
  {
    return result;
  }

  v53 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutDeviceConnection;
  swift_beginAccess();
  v54 = v36 + v53;
  v55 = v69;
  sub_20B52F9E8(v54, v69, &unk_27C765CB0);
  v56 = v70;
  v57 = v71;
  if ((*(v70 + 48))(v55, 1, v71))
  {
    v33 = &unk_27C765CB0;
    v34 = v55;
    return sub_20B520158(v34, v33);
  }

  v60 = v68;
  (*(v56 + 16))(v68, v55, v57);
  sub_20B520158(v55, &unk_27C765CB0);
  v61 = sub_20C136464();
  v63 = v62;
  v65 = v64;
  (*(v56 + 8))(v60, v57);
  if ((v65 & 1) == 0)
  {
    result = v61;
    v51 = v63;
    return sub_20B583F4C(result, v51, 0);
  }

  result = sub_20B97F5B4();
  if (v61 - 3 < 2)
  {
    return sub_20BBF24A8();
  }

  return result;
}