uint64_t sub_20BA72398()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E27BC);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

uint64_t NavigationRequest.init(resource:intent:source:routingBehavior:priority:annotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  sub_20BA7269C(a1, a7, type metadata accessor for NavigationResource);
  v13 = type metadata accessor for NavigationRequest();
  sub_20BA7269C(a2, a7 + v13[5], type metadata accessor for NavigationIntent);
  result = sub_20BA7269C(a3, a7 + v13[6], type metadata accessor for NavigationSource);
  *(a7 + v13[7]) = v10;
  *(a7 + v13[8]) = v11;
  *(a7 + v13[9]) = v12;
  return result;
}

uint64_t type metadata accessor for NavigationRequest()
{
  result = qword_281103420;
  if (!qword_281103420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BA7269C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BA727D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t NavigationRequest.routingBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NavigationRequest();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t NavigationRequest.priority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NavigationRequest();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t NavigationRequest.annotation.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for NavigationRequest();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t NavigationRequest.hash(into:)(uint64_t a1)
{
  NavigationResource.hash(into:)(a1);
  v3 = type metadata accessor for NavigationRequest();
  NavigationIntent.hash(into:)();
  NavigationSource.hash(into:)(a1);
  MEMORY[0x20F2F58E0](*(v1 + v3[7]));
  MEMORY[0x20F2F58E0](*(v1 + v3[8]));
  return MEMORY[0x20F2F58E0](*(v1 + v3[9]));
}

uint64_t NavigationRequest.hashValue.getter()
{
  sub_20C13E164();
  NavigationResource.hash(into:)(v3);
  v1 = type metadata accessor for NavigationRequest();
  NavigationIntent.hash(into:)();
  NavigationSource.hash(into:)(v3);
  MEMORY[0x20F2F58E0](*(v0 + v1[7]));
  MEMORY[0x20F2F58E0](*(v0 + v1[8]));
  MEMORY[0x20F2F58E0](*(v0 + v1[9]));
  return sub_20C13E1B4();
}

uint64_t sub_20BA72A04(int *a1)
{
  sub_20C13E164();
  NavigationResource.hash(into:)(v4);
  NavigationIntent.hash(into:)();
  NavigationSource.hash(into:)(v4);
  MEMORY[0x20F2F58E0](*(v1 + a1[7]));
  MEMORY[0x20F2F58E0](*(v1 + a1[8]));
  MEMORY[0x20F2F58E0](*(v1 + a1[9]));
  return sub_20C13E1B4();
}

uint64_t sub_20BA72AA4(uint64_t a1, int *a2)
{
  NavigationResource.hash(into:)(a1);
  NavigationIntent.hash(into:)();
  NavigationSource.hash(into:)(a1);
  MEMORY[0x20F2F58E0](*(v2 + a2[7]));
  MEMORY[0x20F2F58E0](*(v2 + a2[8]));
  return MEMORY[0x20F2F58E0](*(v2 + a2[9]));
}

uint64_t sub_20BA72B20(uint64_t a1, int *a2)
{
  sub_20C13E164();
  NavigationResource.hash(into:)(v5);
  NavigationIntent.hash(into:)();
  NavigationSource.hash(into:)(v5);
  MEMORY[0x20F2F58E0](*(v2 + a2[7]));
  MEMORY[0x20F2F58E0](*(v2 + a2[8]));
  MEMORY[0x20F2F58E0](*(v2 + a2[9]));
  return sub_20C13E1B4();
}

BOOL _s9SeymourUI17NavigationRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s9SeymourUI18NavigationResourceO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) != 0 && (v4 = type metadata accessor for NavigationRequest(), (static NavigationIntent.== infix(_:_:)(a1 + v4[5], a2 + v4[5])) && (static NavigationSource.== infix(_:_:)(a1 + v4[6], a2 + v4[6]) & 1) != 0 && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_20BA72C70()
{
  result = qword_27C769858;
  if (!qword_27C769858)
  {
    type metadata accessor for NavigationRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769858);
  }

  return result;
}

uint64_t sub_20BA72CF0()
{
  result = type metadata accessor for NavigationResource();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NavigationIntent();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for NavigationSource();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

char *sub_20BA72DA8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_showSeparator] = 1;
  *&v4[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_contentViewBottomConstraint] = 0;
  v11 = _UISolariumEnabled();
  v12 = 0.0;
  if (v11)
  {
    v12 = 7.0;
  }

  v13 = &v4[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_layout];
  *v13 = xmmword_20C1697A0;
  *(v13 + 1) = xmmword_20C15E900;
  *(v13 + 2) = xmmword_20C1697B0;
  *(v13 + 6) = v12;
  *&v4[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_titleLabelTopConstraint] = 0;
  v14 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v15 = 26.0;
  }

  else
  {
    v15 = 6.0;
  }

  v16 = &v4[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView];
  v17 = [v14 layer];
  [v17 setCornerRadius_];

  [v14 setClipsToBounds_];
  *v16 = v14;
  v16[1] = &off_2822B63E8;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsFontForContentSizeCategory_];
  v19 = *MEMORY[0x277D76940];
  v191 = objc_opt_self();
  v186 = v19;
  v20 = [v191 preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:0];
  v21 = [v20 fontDescriptorWithSymbolicTraits_];
  if (v21)
  {
    v22 = v21;

    v20 = v22;
  }

  v23 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_captionLabel;
  v190 = objc_opt_self();
  v24 = [v190 fontWithDescriptor:v20 size:0.0];

  [v18 setFont_];
  [v18 setLineBreakMode_];
  [v18 setNumberOfLines_];
  [v18 setAllowsDefaultTighteningForTruncation_];
  v25 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v18 setTextColor_];

  *&v4[v23] = v18;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 setAdjustsFontForContentSizeCategory_];
  v27 = [v191 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  v28 = [v27 fontDescriptorWithSymbolicTraits_];
  if (v28)
  {
    v29 = v28;

    v27 = v29;
  }

  v30 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_titleLabel;
  v31 = [v190 fontWithDescriptor:v27 size:0.0];

  [v26 setFont_];
  [v26 setLineBreakMode_];
  [v26 setNumberOfLines_];
  [v26 setAllowsDefaultTighteningForTruncation_];
  v32 = objc_opt_self();
  v33 = [v32 whiteColor];
  [v26 setTextColor_];

  *&v4[v30] = v26;
  v34 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [v34 setAdjustsFontForContentSizeCategory_];
  v35 = [v191 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v36 = [v35 fontDescriptorWithSymbolicTraits_];
  if (v36)
  {
    v37 = v36;

    v35 = v37;
  }

  v38 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_subtitleLabel;
  v39 = [v190 fontWithDescriptor:v35 size:0.0];

  [v34 setFont_];
  [v34 setLineBreakMode_];
  [v34 setNumberOfLines_];
  [v34 setAllowsDefaultTighteningForTruncation_];
  v40 = [v32 secondaryLabelColor];
  [v34 setTextColor_];

  *&v4[v38] = v34;
  v41 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_separator;
  v42 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v42 setTranslatesAutoresizingMaskIntoConstraints_];
  v43 = [v32 separatorColor];
  [v42 setBackgroundColor_];

  *&v4[v41] = v42;
  v44 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_swapButton;
  type metadata accessor for IconButton();
  v45 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v45 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v44] = v45;
  v46 = type metadata accessor for ActionButtonTemplateBuilder();
  v47 = swift_allocObject();
  type metadata accessor for ActionButtonTemplateParser();
  v48 = swift_allocObject();
  v49 = qword_27C760AA0;

  v188 = v48;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = qword_27C76CF70;
  if (qword_27C760AA8 != -1)
  {
    swift_once();
  }

  v51 = qword_27C76CF78;
  v201[3] = v46;
  v201[4] = &off_2822EEB00;
  v185 = v47;
  v201[0] = v47;
  v199 = &type metadata for ActionButtonViewFactory;
  v200 = &off_2822B2B20;
  v52 = type metadata accessor for ActionButtonContainerView();
  v53 = objc_allocWithZone(v52);
  v54 = __swift_mutable_project_boxed_opaque_existential_1(v201, v46);
  v55 = MEMORY[0x28223BE20](v54);
  v57 = (&v177 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v58 + 16))(v57, v55);
  __swift_mutable_project_boxed_opaque_existential_1(v198, v199);
  v59 = *v57;
  v197[3] = v46;
  v197[4] = &off_2822EEB00;
  v197[0] = v59;
  v195 = &type metadata for ActionButtonViewFactory;
  v196 = &off_2822B2B20;
  *&v53[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v53[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_buttonActions] = MEMORY[0x277D84F90];
  *&v53[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_rootStackView] = 0;
  sub_20B51CC64(v197, &v53[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateBuilder]);
  v60 = &v53[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateParser];
  *v60 = v188;
  v60[1] = &off_28229AE20;
  sub_20B51CC64(v194, &v53[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_viewFactory]);
  *&v53[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interGroupSpacing] = v50;
  *&v53[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interItemSpacing] = v51;
  v193.receiver = v53;
  v193.super_class = v52;
  v61 = objc_msgSendSuper2(&v193, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_destroy_boxed_opaque_existential_1(v194);
  __swift_destroy_boxed_opaque_existential_1(v197);
  v62 = v61;
  __swift_destroy_boxed_opaque_existential_1(v198);
  __swift_destroy_boxed_opaque_existential_1(v201);
  [v62 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v4[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_actionButtonContainerView] = v62;
  v63 = type metadata accessor for WorkoutPlanBrickItemCell();
  v192.receiver = v4;
  v192.super_class = v63;
  v64 = objc_msgSendSuper2(&v192, sel_initWithFrame_, a1, a2, a3, a4);
  v65 = [v64 contentView];
  v187 = &v64[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView];
  [v65 addSubview_];

  v66 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v66 setAxis_];
  v67 = &v64[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_layout];
  [v66 setSpacing_];
  [v66 addArrangedSubview_];
  [v66 addArrangedSubview_];
  [v66 addArrangedSubview_];
  v68 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v68 setTranslatesAutoresizingMaskIntoConstraints_];
  [v68 setAxis_];
  [v68 setAlignment_];
  v69 = v67;
  [v68 setSpacing_];
  [v68 addArrangedSubview_];
  v70 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_swapButton;
  [v68 addArrangedSubview_];
  v71 = *&v64[v70];
  v72 = [v32 whiteColor];
  [v71 setTintColor_];

  v73 = [v191 preferredFontDescriptorWithTextStyle:v186 compatibleWithTraitCollection:0];
  v74 = [v73 fontDescriptorWithSymbolicTraits_];
  if (v74)
  {
    v75 = v74;

    v73 = v75;
  }

  v76 = [v190 fontWithDescriptor:v73 size:0.0];

  v77 = [objc_opt_self() configurationWithFont_];
  v78 = *&v64[v70];
  v79 = v77;
  v80 = sub_20C13C914();
  v81 = objc_opt_self();
  v82 = v70;
  v83 = v79;
  v191 = v79;
  v84 = [v81 systemImageNamed:v80 withConfiguration:v79];

  v85 = *&v78[OBJC_IVAR____TtC9SeymourUI10IconButton_image];
  *&v78[OBJC_IVAR____TtC9SeymourUI10IconButton_image] = v84;

  [v78 setNeedsUpdateConfiguration];
  v184 = v82;
  [*&v64[v82] addTarget:v64 action:sel_swapButtonTapped_ forControlEvents:64];
  LODWORD(v86) = 1148846080;
  [*&v64[v82] setContentHuggingPriority:0 forAxis:v86];
  LODWORD(v87) = 1132068864;
  [v66 setContentHuggingPriority:0 forAxis:v87];
  v88 = v64;
  v183 = v88;
  v89 = [v88 contentView];
  [v89 addSubview_];

  v186 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_separator;
  v90 = *&v88[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_separator];
  v91 = v88;
  v190 = v66;
  v92 = v91;
  [v91 addSubview_];
  v93 = *&v92[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_actionButtonContainerView];
  v94 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_actionButtonContainerView;
  v179 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_actionButtonContainerView;
  *(v93 + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8) = &off_2822C6B70;
  swift_unknownObjectWeakAssign();
  v95 = [v92 contentView];
  [v95 addSubview_];

  v189 = v68;
  v96 = *v187;
  v97 = *(v187 + 1);
  v98 = v187;
  ObjectType = swift_getObjectType();
  v178 = v69;
  v100 = v69[6];
  v101 = *(v97 + 248);
  v102 = v96;
  v101(ObjectType, v97, v100, v100, v100, v100);

  v182 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_20C1697C0;
  v104 = [*v98 leadingAnchor];
  v105 = [v92 contentView];
  v106 = [v105 leadingAnchor];

  v107 = [v104 constraintEqualToAnchor_];
  *(v103 + 32) = v107;
  v108 = [*v98 trailingAnchor];
  v109 = [v92 contentView];
  v110 = [v109 trailingAnchor];

  v111 = [v108 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  v113 = v112;
  v198[0] = 1148846080;
  LODWORD(v197[0]) = 1065353216;
  v181 = sub_20B60B184();
  v180 = v113;
  sub_20C13BBA4();
  LODWORD(v114) = v201[0];
  [v111 setPriority_];
  *(v103 + 40) = v111;
  v115 = [*v98 topAnchor];
  v116 = [v92 contentView];
  v117 = [v116 &selRef_setLineBreakMode_];

  v118 = [v115 constraintEqualToAnchor_];
  *(v103 + 48) = v118;
  v119 = [*v98 widthAnchor];
  v120 = [v92 contentView];
  v121 = [v120 &selRef_traitCollection + 6];

  v122 = [v119 constraintEqualToAnchor_];
  *(v103 + 56) = v122;
  v123 = [*v98 heightAnchor];
  v124 = [*v98 &selRef_traitCollection + 6];
  v125 = v178;
  v126 = [v123 constraintEqualToAnchor:v124 multiplier:v178[5]];

  *(v103 + 64) = v126;
  v127 = v189;
  v128 = [v189 leadingAnchor];
  v129 = [v92 contentView];
  v130 = [v129 leadingAnchor];

  v131 = [v128 constraintEqualToAnchor_];
  *(v103 + 72) = v131;
  v132 = [v127 topAnchor];
  v133 = [*v98 bottomAnchor];
  v134 = [v132 constraintEqualToAnchor:v133 constant:*v125];

  *(v103 + 80) = v134;
  v135 = [v127 trailingAnchor];
  v136 = [v92 contentView];
  v137 = [v136 trailingAnchor];

  v138 = [v135 constraintEqualToAnchor_];
  *(v103 + 88) = v138;
  v139 = v179;
  v140 = [*&v92[v179] leadingAnchor];
  v177 = v64;
  v141 = [v92 &selRef_setMaximumFractionDigits_];
  v142 = [v141 leadingAnchor];

  v143 = [v140 constraintEqualToAnchor_];
  *(v103 + 96) = v143;
  v144 = [*&v92[v139] trailingAnchor];
  v145 = [v92 &selRef_setMaximumFractionDigits_];
  v146 = [v145 trailingAnchor];

  v147 = [v144 constraintEqualToAnchor_];
  *(v103 + 104) = v147;
  v148 = [*&v92[v139] topAnchor];
  v149 = v189;
  v150 = [v189 bottomAnchor];

  v151 = [v148 constraintEqualToAnchor:v150 constant:v125[2]];
  *(v103 + 112) = v151;
  v152 = [*&v92[v139] bottomAnchor];
  v153 = [v92 &selRef_setMaximumFractionDigits_];

  v154 = [v153 bottomAnchor];
  v155 = [v152 constraintEqualToAnchor:v154 constant:-v125[4]];

  v198[0] = 1148846080;
  LODWORD(v197[0]) = 1065353216;
  sub_20C13BBA4();
  LODWORD(v156) = v201[0];
  [v155 setPriority_];
  *(v103 + 120) = v155;
  v157 = v184;
  v158 = v177;
  v159 = [*&v177[v184] heightAnchor];
  v160 = [*&v158[v157] widthAnchor];
  v161 = [v159 constraintEqualToAnchor_];

  *(v103 + 128) = v161;
  v162 = v186;
  v163 = v183;
  v164 = [*&v183[v186] leadingAnchor];
  v165 = [*v187 leadingAnchor];
  v166 = [v164 constraintEqualToAnchor_];

  *(v103 + 136) = v166;
  v167 = [*&v163[v162] trailingAnchor];
  v168 = [v92 trailingAnchor];

  v169 = [v167 constraintEqualToAnchor_];
  *(v103 + 144) = v169;
  v170 = [*&v163[v162] bottomAnchor];
  v171 = [v92 bottomAnchor];

  v172 = [v170 constraintEqualToAnchor_];
  *(v103 + 152) = v172;
  v173 = [*&v163[v162] heightAnchor];
  sub_20C1387F4();
  v174 = [v173 constraintEqualToConstant_];

  *(v103 + 160) = v174;
  sub_20B51C88C(0, &qword_281100500);
  v175 = sub_20C13CC54();

  [v182 activateConstraints_];

  return v92;
}

uint64_t sub_20BA74590()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for WorkoutPlanBrickItemCell();
  v12.receiver = v0;
  v12.super_class = v4;
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView];
  v6 = [v5 layer];
  [v6 setBorderColor_];

  v7 = [v5 layer];
  [v7 setBorderWidth_];

  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v3, &v0[v9]);
  return swift_endAccess();
}

id sub_20BA7483C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutPlanBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WorkoutPlanBrickItemCell()
{
  result = qword_281102040;
  if (!qword_281102040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BA749B4()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BA74AA0(uint64_t a1)
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

      sub_20C0C1CDC(v6, sub_20B5E275C);
      (*(v4 + 8))(v6, v3);
    }

    swift_unknownObjectRelease();
    return sub_20B5F6724(v9, type metadata accessor for ShelfItemAction);
  }

  return result;
}

uint64_t sub_20BA74CB4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BA74D00@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BA74D58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_20BA74DBC(int a1, id a2)
{
  [objc_msgSend(a2 container)];
  v3 = v2;
  swift_unknownObjectRelease();

  return sub_20B72097C(5, 1.0, v3);
}

id sub_20BA74E30(char a1)
{
  v2 = *v1;
  *(v2 + OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_showSeparator) = a1;
  return [*(v2 + OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_separator) setHidden_];
}

void sub_20BA74E80(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v424 = *(v2 - 8);
  v425 = v2;
  MEMORY[0x28223BE20](v2);
  v423 = &v379 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v411 = *(v412 - 8);
  MEMORY[0x28223BE20](v412);
  v408 = &v379 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v409 = &v379 - v6;
  v407 = v7;
  MEMORY[0x28223BE20](v8);
  v410 = &v379 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v379 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v413 = &v379 - v14;
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v421 = *(v422 - 8);
  MEMORY[0x28223BE20](v422);
  v16 = &v379 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v406 = &v379 - v18;
  v405 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v379 - v21;
  v419 = sub_20C1391C4();
  v418 = *(v419 - 8);
  MEMORY[0x28223BE20](v419);
  v420 = &v379 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v416 = sub_20C138A64();
  v415 = *(v416 - 8);
  MEMORY[0x28223BE20](v416);
  v25 = &v379 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v414 = &v379 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v28 - 8);
  v417 = &v379 - v29;
  v30 = sub_20C13C554();
  v433 = *(v30 - 8);
  v434 = v30;
  MEMORY[0x28223BE20](v30);
  v432 = (&v379 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_20C137C24();
  v436 = *(v32 - 8);
  v437 = v32;
  MEMORY[0x28223BE20](v32);
  v34 = &v379 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v435 = &v379 - v36;
  v426 = v37;
  MEMORY[0x28223BE20](v38);
  v428 = &v379 - v39;
  v40 = sub_20C136CD4();
  v429 = *(v40 - 8);
  v430 = v40;
  MEMORY[0x28223BE20](v40);
  v42 = &v379 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v427 = &v379 - v44;
  v45 = sub_20C134E44();
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v379 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v431 = &v379 - v49;
  v50 = sub_20C134014();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v53 = &v379 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v57 = (a1 >> 57) & 0x78 | a1 & 7;
  switch(v57)
  {
    case 'J':
      v388 = v12;
      v413 = v47;
      v403 = v42;
      v401 = v34;
      v389 = v25;
      v390 = v16;
      v93 = v55;
      v94 = v51;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A70);
      v96 = swift_projectBox();
      v97 = *(v96 + v95[16]);
      v98 = v96 + v95[20];
      v99 = *v98;
      v427 = *(v98 + 8);
      v428 = v99;
      v100 = v438;
      v102 = *(v98 + 16);
      v101 = *(v98 + 24);
      v103 = *(v98 + 32);
      v423 = *(v98 + 40);
      v424 = v101;
      v104 = (v96 + v95[24]);
      v105 = *v104;
      v106 = v104[1];
      LODWORD(v402) = *(v96 + v95[28]);
      LODWORD(v397) = *(v96 + v95[32]);
      LODWORD(v396) = *(v96 + v95[36]);
      v425 = v94;
      v107 = *(v94 + 16);
      v431 = v53;
      v404 = v93;
      v107(v53, v96, v93);
      v108 = v100;
      v414 = *&v100[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_captionLabel];
      v399 = v102;
      v398 = v103;
      v395 = v97;
      if (v106 >= 2)
      {
        v439 = v105;
        v440 = v106;
        sub_20B5F6EB0();

        v109 = v428;
        v127 = v428;
        v128 = v427;
        v129 = v427;
        v130 = v102;

        sub_20C13D9E4();
        v114 = sub_20C13C914();

        v111 = v128;
      }

      else
      {

        v109 = v428;
        v110 = v428;
        v111 = v427;
        v112 = v427;
        v113 = v102;

        v114 = 0;
      }

      v131 = v414;
      [v414 setText_];

      v132 = v108;
      v73 = *&v108[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_titleLabel];
      [v73 setAttributedText_];
      v133 = *&v132[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_subtitleLabel];
      [v133 setAttributedText_];
      v393 = objc_opt_self();
      v134 = [v393 clearColor];
      v74 = &off_277D9A000;
      [v131 setBackgroundColor_];

      if (v402)
      {
        v135 = v403;
        if (v402 == 1)
        {
          v149 = 0x27C760000;
          if (qword_27C760D20 == -1)
          {
            goto LABEL_22;
          }

          goto LABEL_78;
        }

        v145 = v393;
        v146 = [v393 clearColor];
        [v73 setBackgroundColor_];

        v147 = v145;
        v74 = &off_277D9A000;
        v148 = [v147 clearColor];
        v149 = v401;
        goto LABEL_28;
      }

      v138 = v393;
      v139 = [v393 systemBackgroundColor];
      [v73 setBackgroundColor_];

      v137 = [v138 systemBackgroundColor];
      goto LABEL_26;
    case '!':
      v81 = v438;
      v82 = *&v438[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_captionLabel];
      v83 = sub_20C13C914();
      [v82 setText_];

      v84 = *&v81[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_titleLabel];
      v85 = sub_20C13C914();
      [v84 setText_];

      v86 = *&v81[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_subtitleLabel];
      v87 = sub_20C13C914();
      [v86 setText_];

      sub_20BA1DAB8();
      v88 = *&v81[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView];
      v89 = *&v81[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      (*(v89 + 264))(0, ObjectType, v89);
      (*(v89 + 296))(0, 0, ObjectType, v89);
      v91 = [v88 layer];
      [v91 setBorderColor_];

      v92 = [v88 layer];
      [v92 setBorderWidth_];

      sub_20BC96528(MEMORY[0x277D84F90], 0, 1, 0, 0, 1, 0, 1);
      [*&v81[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_swapButton] setHidden_];
      [v82 setAlpha_];
      [v84 setAlpha_];

      [v86 setAlpha_];
      break;
    case ' ':
      v390 = v22;
      v58 = &v379 - v56;
      v59 = v55;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
      v61 = swift_projectBox();
      v62 = v61 + v60[16];
      v64 = *v62;
      v63 = *(v62 + 8);
      v65 = *(v62 + 24);
      v423 = *(v62 + 16);
      v424 = v63;
      v402 = v65;
      v67 = *(v62 + 32);
      v66 = *(v62 + 40);
      v401 = v67;
      v400 = v66;
      v68 = (v61 + v60[20]);
      v69 = v68[1];
      v397 = *v68;
      v398 = v68[3];
      v70 = v59;
      v71 = *(v61 + v60[28]);
      v399 = *(v61 + v60[32]);
      v425 = v51;
      v72 = *(v51 + 16);
      v403 = v58;
      v404 = v70;
      v72(v58, v61);
      if (v71)
      {
        v73 = v436;
        v74 = v428;
        if (v71 == 1)
        {
          v75 = v64;
          v76 = v424;
          v77 = v424;
          v78 = v423;

          sub_20B6543CC(v397, v69);
          v79 = qword_27C760D20;

          if (v79 != -1)
          {
            swift_once();
          }

          v80 = qword_27C79D6D8;
        }

        else
        {
          v223 = objc_opt_self();
          v224 = v64;
          v76 = v424;
          v225 = v424;
          v226 = v423;

          sub_20B6543CC(v397, v69);

          v80 = [v223 clearColor];
        }

        v144 = v80;
        v132 = v438;
      }

      else
      {
        v140 = objc_opt_self();
        v141 = v64;
        v76 = v424;
        v142 = v424;
        v143 = v423;

        sub_20B6543CC(v397, v69);

        v144 = [v140 systemBackgroundColor];
        v132 = v438;
        v73 = v436;
        v74 = v428;
      }

      v227 = *&v132[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_captionLabel];
      if (v69 == 1 || (, !v69))
      {
        v228 = 0;
      }

      else
      {
        v439 = v397;
        v440 = v69;
        sub_20B5F6EB0();
        sub_20C13D9E4();

        v228 = sub_20C13C914();
      }

      [v227 setText_];

      v229 = *&v132[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_titleLabel];
      [v229 setAttributedText_];
      v230 = *&v132[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_subtitleLabel];
      [v230 setAttributedText_];
      v231 = v144;
      v395 = v227;
      [v227 setBackgroundColor_];
      [v229 setBackgroundColor_];
      v394 = v230;
      [v230 setBackgroundColor_];
      v396 = v231;

      sub_20C133F04();
      v392 = sub_20C138054();
      v398 = v232;
      v149 = v427;
      sub_20C134E34();
      sub_20C136CB4();
      v391 = sub_20C136CC4();
      v397 = v233;
      sub_20B51C88C(0, &qword_281100530);
      v234 = sub_20C13D374();
      v133 = v432;
      v235 = v433;
      *v432 = v234;
      v236 = v434;
      (*(v235 + 104))(v133, *MEMORY[0x277D85200], v434);
      v237 = sub_20C13C584();
      (*(v235 + 8))(v133, v236);
      if (v237)
      {
        v432 = v64;
        v238 = *&v132[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView];
        v239 = *&v132[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView + 8];
        v240 = swift_getObjectType();
        [v238 setContentMode_];
        v241 = sub_20BA66C54(v74, v238, v239, 0);
        v433 = v240;
        v434 = v239;
        v393 = v238;
        if (v241)
        {
          v389 = v229;
          v242 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v243 = *(v73 + 16);
          v244 = v74;
          v245 = v437;
          v387 = (v73 + 16);
          v386 = v243;
          v243(v435, v244, v437);
          v246 = *(v73 + 80);
          v247 = (v246 + 24) & ~v246;
          v382 = (v426 + 7);
          v248 = (v426 + 7 + v247) & 0xFFFFFFFFFFFFFFF8;
          v249 = (v248 + 23) & 0xFFFFFFFFFFFFFFF8;
          v250 = (v249 + 23) & 0xFFFFFFFFFFFFFFF8;
          v388 = (v250 + 15) & 0xFFFFFFFFFFFFFFF8;
          v251 = (v250 + 31) & 0xFFFFFFFFFFFFFFF8;
          v385 = v246;
          v252 = swift_allocObject();
          *(v252 + 16) = v242;
          v384 = *(v73 + 32);
          v383 = v73 + 32;
          (v384)(v252 + v247, v435, v245);
          v253 = (v252 + v248);
          v254 = v397;
          *v253 = v391;
          v253[1] = v254;
          v255 = (v252 + v249);
          v256 = v398;
          *v255 = v392;
          v255[1] = v256;
          *(v252 + v250) = 2;
          v239 = v434;
          v257 = v252 + v388;
          *v257 = MEMORY[0x277D84F90];
          *(v257 + 8) = 0;
          v258 = (v252 + v251);
          *v258 = 0;
          v258[1] = 0;
          v259 = *(v239 + 152);

          v260 = v433;
          v259(sub_20BA78A58, v252, v433, v239);

          [v238 bounds];
          if (v261 <= 0.0 || (v263 = v262, v262 <= 0.0))
          {

            v287 = v437;
            v132 = v438;
            v288 = v436;
            v290 = v429;
            v289 = v430;
            v149 = v427;
            v74 = v428;
            v229 = v389;
          }

          else
          {
            v264 = v261;
            v265 = v260;
            v388 = ~v385;
            (*(v239 + 120))(0, v260, v239);
            v266 = v417;
            v267 = v428;
            v268 = v437;
            (v386)(v417, v428, v437);
            (*(v436 + 56))(v266, 0, 1, v268);
            (*(v239 + 16))(v266, v265, v239);
            sub_20B51C88C(0, &qword_27C762070);
            v269 = v267;
            sub_20C137BC4();
            v270 = sub_20C13D5A4();
            [v238 setBackgroundColor_];

            (*(v239 + 176))(COERCE_DOUBLE(*&v264), COERCE_DOUBLE(*&v263), 0, v265, v239);
            v271 = swift_allocObject();
            v132 = v438;
            swift_unknownObjectWeakInit();
            v272 = v435;
            v273 = v269;
            v274 = v437;
            (v386)(v435, v269, v437);
            v275 = (v385 + 16) & v388;
            v276 = (v382 + v275) & 0xFFFFFFFFFFFFFFF8;
            v277 = (v276 + 15) & 0xFFFFFFFFFFFFFFF8;
            v278 = swift_allocObject();
            (v384)(v278 + v275, v272, v274);
            *(v278 + v276) = v271;
            v279 = (v278 + v277);
            *v279 = v264;
            v279[1] = v263;
            v417 = v278;
            v280 = (v278 + ((v277 + 23) & 0xFFFFFFFFFFFFFFF8));
            *v280 = 0;
            v280[1] = 0;
            v281 = v273;
            v282 = v386;
            (v386)(v272, v281, v274);
            (*(v418 + 104))(v420, *MEMORY[0x277D542A8], v419);

            v283 = v414;
            sub_20C138A54();
            v284 = v413;
            sub_20B5F1C58(v283, v413);
            v285 = v421;
            v286 = v422;
            if ((*(v421 + 48))(v284, 1, v422) == 1)
            {
              sub_20B520158(v284, &unk_27C766670);
              sub_20BA1DAB8();

              (*(v415 + 8))(v283, v416);
              v288 = v436;
              v287 = v437;
            }

            else
            {
              v420 = *(v285 + 32);
              (v420)(v390, v284, v286);
              v331 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v332 = v437;
              v282(v272, v428, v437);
              v333 = (v385 + 40) & v388;
              v334 = v333 + v426;
              v335 = (v333 + v426) & 0xFFFFFFFFFFFFFFF8;
              v336 = v285;
              v337 = swift_allocObject();
              *(v337 + 2) = v331;
              v337[3] = v264;
              v337[4] = v263;
              (v384)(v337 + v333, v272, v332);
              *(v337 + v334) = 0;
              v338 = v337 + v335;
              *(v338 + 1) = 0;
              *(v338 + 2) = 0;
              v339 = swift_allocObject();
              *(v339 + 16) = sub_20BA78A40;
              *(v339 + 24) = v337;
              v340 = v406;
              v341 = v422;
              (*(v336 + 16))(v406, v390, v422);
              v342 = (*(v336 + 80) + 16) & ~*(v336 + 80);
              v343 = (v405 + v342 + 7) & 0xFFFFFFFFFFFFFFF8;
              v344 = swift_allocObject();
              (v420)(v344 + v342, v340, v341);
              v345 = (v344 + v343);
              *v345 = sub_20B5F7760;
              v345[1] = v339;
              v346 = v409;
              sub_20C137C94();
              v347 = swift_allocObject();
              v348 = v417;
              *(v347 + 16) = sub_20BA78A5C;
              *(v347 + 24) = v348;
              v349 = swift_allocObject();
              *(v349 + 16) = sub_20B5F7790;
              *(v349 + 24) = v347;
              v350 = v411;
              v351 = v408;
              v352 = v412;
              (*(v411 + 16))(v408, v346, v412);
              v353 = (*(v350 + 80) + 16) & ~*(v350 + 80);
              v354 = (v407 + v353 + 7) & 0xFFFFFFFFFFFFFFF8;
              v355 = swift_allocObject();
              (*(v350 + 32))(v355 + v353, v351, v352);
              v356 = (v355 + v354);
              *v356 = sub_20B5F7764;
              v356[1] = v349;

              v357 = v410;
              sub_20C137C94();
              v358 = *(v350 + 8);
              v358(v346, v352);
              v359 = sub_20C137CB4();
              v360 = swift_allocObject();
              *(v360 + 16) = 0;
              *(v360 + 24) = 0;
              v359(sub_20B5DF6DC, v360);

              v288 = v436;

              v358(v357, v352);
              (*(v421 + 8))(v390, v422);
              (*(v415 + 8))(v414, v416);
              v287 = v437;
            }

            v290 = v429;
            v289 = v430;
            v149 = v427;
            v74 = v428;
            v229 = v389;
            v239 = v434;
          }
        }

        else
        {

          v287 = v437;
          v290 = v429;
          v289 = v430;
          v288 = v73;
        }

        (*(v288 + 8))(v74, v287);
        (*(v290 + 8))(v149, v289);

        sub_20B5F6724(v431, MEMORY[0x277D51268]);
        v361 = sub_20C133EB4() > 0;
        v362 = v433;
        (*(v239 + 264))(v361, v433, v239);
        v363 = sub_20C133E54();
        (*(v239 + 296))(v363);

        v364 = sub_20C133FF4();
        v366 = v365;
        v368 = v367;
        sub_20B5F09EC(v364, v365, v367);
        sub_20B584078(v364, v366, v368);
        v369 = v399;
        if (v399[2])
        {
          v370 = sub_20B65CEBC(0);
          v371 = v394;
          v372 = v404;
          if (v373)
          {
            v374 = *(v369[7] + 8 * v370);
          }

          else
          {
            v374 = MEMORY[0x277D84F90];
          }
        }

        else
        {
          v374 = MEMORY[0x277D84F90];
          v371 = v394;
          v372 = v404;
        }

        sub_20BC96528(v374, 0, 1, 0, 0, 1, 0, 1);

        [*&v132[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_swapButton] setHidden_];
        [v395 setAlpha_];
        [v229 setAlpha_];
        [v371 setAlpha_];
        v375 = v434;
        (*(v434 + 280))(v362, v434, 1.0);
        v376 = (*(v375 + 32))(v362, v375);
        if (v376)
        {
          v377 = v376;
          v378 = [objc_opt_self() whiteColor];
          [*&v377[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_imageView] setTintColor_];

          (*(v425 + 8))(v403, v372);
        }

        else
        {

          (*(v425 + 8))(v403, v372);
        }

        return;
      }

      while (1)
      {
        __break(1u);
LABEL_78:
        swift_once();
LABEL_22:
        v136 = qword_27C79D6D8;
        [v73 v74[81]];

        if (*(v149 + 420) != -1)
        {
          swift_once();
        }

        v137 = qword_27C79D6D8;
LABEL_26:
        v148 = v137;
        v149 = v401;
        v135 = v403;
LABEL_28:
        [v133 v74[81]];

        sub_20C133F04();
        v392 = sub_20C138054();
        v402 = v150;
        sub_20C134E34();
        sub_20C136CB4();
        v391 = sub_20C136CC4();
        v400 = v151;
        sub_20B51C88C(0, &qword_281100530);
        v152 = sub_20C13D374();
        v154 = v432;
        v153 = v433;
        *v432 = v152;
        v74 = v434;
        (*(v153 + 104))(v154, *MEMORY[0x277D85200], v434);
        v155 = sub_20C13C584();
        (*(v153 + 8))(v154, v74);
        if (v155)
        {
          break;
        }

        __break(1u);
      }

      v394 = v133;
      v432 = v73;
      v156 = *&v132[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView];
      v157 = *&v132[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView + 8];
      v158 = swift_getObjectType();
      [v156 setContentMode_];
      v159 = sub_20BA66C54(v149, v156, v157, 0);
      v433 = v157;
      v434 = v158;
      if (v159)
      {
        v160 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v161 = v436;
        v162 = *(v436 + 16);
        v387 = v156;
        v163 = v437;
        v383 = v436 + 16;
        v385 = v162;
        v162(v435, v149, v437);
        v164 = *(v161 + 80);
        v165 = (v164 + 24) & ~v164;
        v380 = v426 + 7;
        v166 = (v426 + 7 + v165) & 0xFFFFFFFFFFFFFFF8;
        v167 = (v166 + 23) & 0xFFFFFFFFFFFFFFF8;
        v168 = (v167 + 23) & 0xFFFFFFFFFFFFFFF8;
        v386 = (v168 + 15) & 0xFFFFFFFFFFFFFFF8;
        v384 = v164;
        v169 = swift_allocObject();
        *(v169 + 16) = v160;
        v170 = v169 + v165;
        v171 = v387;
        v382 = *(v161 + 32);
        v381 = v161 + 32;
        v382(v170, v435, v163);
        v172 = (v169 + v166);
        v173 = v400;
        *v172 = v391;
        v172[1] = v173;
        v174 = (v169 + v167);
        v175 = v402;
        *v174 = v392;
        v174[1] = v175;
        *(v169 + v168) = 2;
        v176 = v169 + v386;
        *v176 = MEMORY[0x277D84F90];
        *(v176 + 8) = 0;
        v177 = (v169 + ((v168 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v177 = 0;
        v177[1] = 0;
        v178 = *(v157 + 152);

        v179 = v434;
        v178(sub_20BA77EF8, v169, v434, v157);

        [v171 bounds];
        if (v180 <= 0.0 || (v182 = v181, v181 <= 0.0))
        {

          v203 = v437;
          v132 = v438;
          v208 = v436;
          v205 = v429;
          v204 = v430;
          v206 = v431;
          v149 = v401;
          v135 = v403;
          v207 = v413;
        }

        else
        {
          v183 = v180;
          v386 = ~v384;
          v184 = v433;
          (*(v433 + 120))(0, v179, v433);
          v185 = v417;
          v186 = v401;
          v187 = v437;
          (v385)(v417, v401, v437);
          (*(v436 + 56))(v185, 0, 1, v187);
          (*(v184 + 16))(v185, v179, v184);
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v188 = sub_20C13D5A4();
          [v171 setBackgroundColor_];

          v189 = v186;
          (*(v184 + 176))(COERCE_DOUBLE(*&v183), COERCE_DOUBLE(*&v182), 0, v179, v184);
          v417 = swift_allocObject();
          v132 = v438;
          swift_unknownObjectWeakInit();
          v190 = v435;
          (v385)(v435, v186, v187);
          v191 = (v384 + 16) & v386;
          v192 = (v380 + v191) & 0xFFFFFFFFFFFFFFF8;
          v193 = (v192 + 15) & 0xFFFFFFFFFFFFFFF8;
          v194 = (v193 + 23) & 0xFFFFFFFFFFFFFFF8;
          v195 = swift_allocObject();
          v382(v195 + v191, v190, v187);
          *(v195 + v192) = v417;
          v196 = (v195 + v193);
          v197 = v190;
          *v196 = v183;
          v196[1] = v182;
          v417 = v195;
          v198 = (v195 + v194);
          *v198 = 0;
          v198[1] = 0;
          (v385)(v190, v189, v187);
          (*(v418 + 104))(v420, *MEMORY[0x277D542A8], v419);

          v199 = v389;
          sub_20C138A54();
          v200 = v388;
          sub_20B5F1C58(v199, v388);
          v201 = v421;
          v202 = v422;
          if ((*(v421 + 48))(v200, 1, v422) == 1)
          {
            sub_20B520158(v200, &unk_27C766670);
            sub_20BA1DAB8();

            (*(v415 + 8))(v199, v416);
            v203 = v187;
            v205 = v429;
            v204 = v430;
            v206 = v431;
            v149 = v189;
            v135 = v403;
            v207 = v413;
            v208 = v436;
          }

          else
          {
            v300 = v201;
            v420 = *(v201 + 32);
            (v420)(v390, v200, v202);
            v301 = v202;
            v302 = swift_allocObject();
            swift_unknownObjectWeakInit();
            (v385)(v197, v189, v437);
            v303 = (v384 + 40) & v386;
            v304 = v303 + v426;
            v305 = (v303 + v426) & 0xFFFFFFFFFFFFFFF8;
            v306 = swift_allocObject();
            *(v306 + 2) = v302;
            v306[3] = v183;
            v306[4] = v182;
            v382(v306 + v303, v197, v437);
            *(v306 + v304) = 0;
            v307 = v306 + v305;
            *(v307 + 1) = 0;
            *(v307 + 2) = 0;
            v308 = swift_allocObject();
            *(v308 + 16) = sub_20BA77F00;
            *(v308 + 24) = v306;
            v309 = v406;
            (*(v300 + 16))(v406, v390, v301);
            v310 = (*(v300 + 80) + 16) & ~*(v300 + 80);
            v311 = (v405 + v310 + 7) & 0xFFFFFFFFFFFFFFF8;
            v312 = swift_allocObject();
            (v420)(v312 + v310, v309, v301);
            v313 = (v312 + v311);
            *v313 = sub_20B5F67A4;
            v313[1] = v308;
            v314 = v409;
            sub_20C137C94();
            v315 = swift_allocObject();
            v316 = v417;
            *(v315 + 16) = sub_20BA77EFC;
            *(v315 + 24) = v316;
            v317 = swift_allocObject();
            *(v317 + 16) = sub_20B5F67D4;
            *(v317 + 24) = v315;
            v318 = v411;
            v319 = v408;
            v320 = v412;
            (*(v411 + 16))(v408, v314, v412);
            v321 = (*(v318 + 80) + 16) & ~*(v318 + 80);
            v322 = (v407 + v321 + 7) & 0xFFFFFFFFFFFFFFF8;
            v323 = swift_allocObject();
            (*(v318 + 32))(v323 + v321, v319, v320);
            v324 = (v323 + v322);
            *v324 = sub_20B5DF204;
            v324[1] = v317;

            v325 = v410;
            sub_20C137C94();
            v326 = *(v318 + 8);
            v326(v314, v320);
            v327 = sub_20C137CB4();
            v328 = swift_allocObject();
            *(v328 + 16) = 0;
            *(v328 + 24) = 0;
            v327(sub_20B52347C, v328);

            v329 = v437;

            v330 = v325;
            v208 = v436;
            v326(v330, v320);
            (*(v421 + 8))(v390, v422);
            (*(v415 + 8))(v389, v416);
            v203 = v329;
            v205 = v429;
            v204 = v430;
            v206 = v431;
            v149 = v401;
            v135 = v403;
            v207 = v413;
          }
        }
      }

      else
      {

        v208 = v436;
        v203 = v437;
        v205 = v429;
        v204 = v430;
        v207 = v413;
        v206 = v431;
      }

      (*(v208 + 8))(v149, v203);
      (*(v205 + 8))(v135, v204);

      sub_20B5F6724(v207, MEMORY[0x277D51268]);
      v209 = sub_20C133EB4() > 0;
      v210 = v433;
      v211 = *(v433 + 264);
      v211(v209, v434, v433);
      v212 = sub_20C133E54();
      (*(v210 + 296))(v212);

      v213 = sub_20C133FF4();
      v215 = v214;
      v217 = v216;
      sub_20B5F09EC(v213, v214, v216);
      sub_20B584078(v213, v215, v217);
      v218 = v395;
      if (*(v395 + 2))
      {
        v219 = sub_20B65CEBC(0);
        v220 = v399;
        if (v221)
        {
          v222 = *(v218[7] + 8 * v219);
        }

        else
        {
          v222 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v222 = MEMORY[0x277D84F90];
        v220 = v399;
      }

      sub_20BC96528(v222, 0, 1, 0, 0, 1, 0, 1);

      [*&v132[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_swapButton] setHidden_];
      if (v397)
      {
        v291 = v434;
        v211(1, v434, v210);
        v292 = (*(v210 + 32))(v291, v210);
        if (v292)
        {
          v293 = v292;
          v294 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
          v295 = 0.5;
          v296 = 0.3;
LABEL_60:
          v299 = v404;
          [*&v293[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_imageView] setTintColor_];

LABEL_64:
          (*(v210 + 280))(v291, v210, v296);
          [v414 setAlpha_];
          [v432 setAlpha_];
          [v394 setAlpha_];

          (*(v425 + 8))(v206, v299);
          return;
        }

        v295 = 0.5;
        v296 = 0.3;
      }

      else
      {
        v297 = sub_20C133EB4() > 0;
        v291 = v434;
        v211(v297, v434, v210);
        v298 = (*(v210 + 32))(v291, v210);
        if (v298)
        {
          v293 = v298;
          v294 = [v393 whiteColor];
          v296 = 1.0;
          v295 = 1.0;
          goto LABEL_60;
        }

        v296 = 1.0;
        v295 = 1.0;
      }

      v299 = v404;
      goto LABEL_64;
    default:
      v115 = v423;
      sub_20C13B534();

      v116 = v438;
      v117 = sub_20C13BB74();
      v118 = sub_20C13D1D4();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v439 = v121;
        *v119 = 138543618;
        *(v119 + 4) = v116;
        *v120 = v116;
        *(v119 + 12) = 2082;
        v441 = a1;
        v122 = sub_20B5F66D0();
        v123 = v116;
        v124 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v122);
        v126 = sub_20B51E694(v124, v125, &v439);

        *(v119 + 14) = v126;
        _os_log_impl(&dword_20B517000, v117, v118, "Attempted to configure %{public}@ with item: %{public}s", v119, 0x16u);
        sub_20B520158(v120, &unk_27C762E30);
        MEMORY[0x20F2F6A40](v120, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v121);
        MEMORY[0x20F2F6A40](v121, -1, -1);
        MEMORY[0x20F2F6A40](v119, -1, -1);
      }

      (*(v424 + 1))(v115, v425);
      break;
  }
}

void sub_20BA77F18()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA4F09C(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BA77FF0(void *a1)
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

  sub_20BA63770(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BA780AC(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2FCC(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20BA78160()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_showSeparator) = 1;
  *(v0 + OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_contentViewBottomConstraint) = 0;
  v3 = _UISolariumEnabled();
  v4 = 0.0;
  if (v3)
  {
    v4 = 7.0;
  }

  v5 = v0 + OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_layout;
  *v5 = xmmword_20C1697A0;
  *(v5 + 16) = xmmword_20C15E900;
  *(v5 + 32) = xmmword_20C1697B0;
  *(v5 + 48) = v4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_titleLabelTopConstraint) = 0;
  v6 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v7 = 26.0;
  }

  else
  {
    v7 = 6.0;
  }

  v8 = (v0 + OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView);
  v9 = [v6 layer];
  [v9 setCornerRadius_];

  [v6 setClipsToBounds_];
  *v8 = v6;
  v8[1] = &off_2822B63E8;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAdjustsFontForContentSizeCategory_];
  v11 = *MEMORY[0x277D76940];
  v12 = objc_opt_self();
  v13 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
  v14 = [v13 fontDescriptorWithSymbolicTraits_];
  if (v14)
  {
    v15 = v14;

    v13 = v15;
  }

  v16 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_captionLabel;
  v17 = objc_opt_self();
  v18 = [v17 fontWithDescriptor:v13 size:0.0];

  [v10 setFont_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];
  [v10 setAllowsDefaultTighteningForTruncation_];
  v19 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v10 setTextColor_];

  *(v0 + v16) = v10;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setAdjustsFontForContentSizeCategory_];
  v21 = [v12 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  v22 = [v21 fontDescriptorWithSymbolicTraits_];
  if (v22)
  {
    v23 = v22;

    v21 = v23;
  }

  v24 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_titleLabel;
  v25 = [v17 fontWithDescriptor:v21 size:0.0];

  [v20 setFont_];
  [v20 setLineBreakMode_];
  [v20 setNumberOfLines_];
  [v20 setAllowsDefaultTighteningForTruncation_];
  v26 = objc_opt_self();
  v27 = [v26 whiteColor];
  [v20 setTextColor_];

  *(v0 + v24) = v20;
  v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  [v28 setAdjustsFontForContentSizeCategory_];
  v29 = [v12 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v30 = [v29 fontDescriptorWithSymbolicTraits_];
  if (v30)
  {
    v31 = v30;

    v29 = v31;
  }

  v32 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_subtitleLabel;
  v33 = [v17 fontWithDescriptor:v29 size:0.0];

  [v28 setFont_];
  [v28 setLineBreakMode_];
  [v28 setNumberOfLines_];
  [v28 setAllowsDefaultTighteningForTruncation_];
  v34 = [v26 secondaryLabelColor];
  [v28 setTextColor_];

  *(v0 + v32) = v28;
  v35 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_separator;
  v36 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  v37 = [v26 separatorColor];
  [v36 setBackgroundColor_];

  *(v0 + v35) = v36;
  v38 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_swapButton;
  type metadata accessor for IconButton();
  v39 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v38) = v39;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BA78844()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    *v7 = 0;
    v10 = swift_storeEnumTagMultiPayload();
    *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E2A84);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5F6724(v7, type metadata accessor for ShelfItemAction);
  }

  return result;
}

uint64_t sub_20BA78A60()
{
  sub_20C1380F4();
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  Width = CGRectGetWidth(v17);
  v11 = [v0 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  v14 = sub_20C138104();
  result = sub_20C138104();
  if (v14 == result)
  {
    v16 = 43.0;
  }

  else
  {
    v16 = 17.0;
    if (Width / v13 > 375.0)
    {
      v16 = 27.0;
      if (Width / v13 < 834.0)
      {
        v16 = 23.0;
      }
    }
  }

  qword_27C769868 = *&v16;
  return result;
}

uint64_t sub_20BA78B94()
{
  sub_20C1380F4();
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  Width = CGRectGetWidth(v17);
  v11 = [v0 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  v14 = sub_20C138104();
  result = sub_20C138104();
  v16 = 7.0;
  if (v14 != result)
  {
    v16 = 2.5;
    if (Width / v13 > 375.0)
    {
      v16 = 4.0;
      if (Width / v13 < 834.0)
      {
        v16 = 3.5;
      }
    }
  }

  dword_27C769870 = LODWORD(v16);
  return result;
}

void sub_20BA78D6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_label;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = [objc_opt_self() whiteColor];
  [v4 setTextColor_];

  v6 = sub_20C1380F4();
  v7 = sub_20BA6C508(v6);
  [v4 setFont_];

  [v4 setAdjustsFontForContentSizeCategory_];
  *&v1[v3] = v4;
  v1[OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_behavior] = 0;
  *&v1[OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_presenter] = a1;
  v8 = objc_allocWithZone(MEMORY[0x277CE8E90]);

  v9 = [v8 initWithNumberOfRings_];
  v10 = OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_ringGroup;
  *&v1[OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_ringGroup] = v9;
  v11 = objc_opt_self();
  v12 = v9;
  v13 = [v11 elapsedTimeColors];
  if (!v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v13;
  v15 = [v13 gradientDarkColor];

  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = [v11 elapsedTimeColors];
  if (!v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v16;
  v18 = [v16 gradientLightColor];

  if (!v18)
  {
LABEL_18:
    __break(1u);
    return;
  }

  [v12 setTopColor:v15 bottomColor:v18 ofRingAtIndex:0];

  v19 = [objc_allocWithZone(MEMORY[0x277CE8EA8]) initWithRingGroup_];
  *&v1[OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_ringsView] = v19;
  v39.receiver = v1;
  v39.super_class = type metadata accessor for SessionTimeProgressView();
  v20 = objc_msgSendSuper2(&v39, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *(a1 + 24) = &off_2822C6E78;
  swift_unknownObjectWeakAssign();
  v21 = OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_ringsView;
  v22 = *&v20[OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_ringsView];
  v23 = v20;
  [v22 setOpaque_];
  v24 = OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_label;
  [v23 addSubview_];
  [v23 addSubview_];
  v25 = OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_ringGroup;
  v26 = qword_27C7608D0;
  v27 = *&v23[OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_ringGroup];
  if (v26 != -1)
  {
    swift_once();
  }

  HIDWORD(v28) = HIDWORD(qword_27C769868);
  *&v28 = *&qword_27C769868;
  [v27 setGroupDiameter_];

  v29 = *&v23[v25];
  v30 = qword_27C7608D8;
  v31 = v29;
  if (v30 != -1)
  {
    swift_once();
  }

  LODWORD(v32) = dword_27C769870;
  [v31 setThickness_];

  v33 = *&v23[v24];
  v34 = qword_27C760838;
  v35 = v33;
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = [qword_27C768310 stringFromTimeInterval_];
  if (v36)
  {
    v37 = v36;
    sub_20C13C954();

    v38 = sub_20C13C914();
  }

  else
  {
    v38 = 0;
  }

  [v35 setText_];
}

id sub_20BA791B4()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SessionTimeProgressView();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_label];
  [v1 sizeToFit];
  if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_])
  {
    v2 = *&v0[OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_ringsView];
    [v1 smu_firstLineCapFrameOriginY];
    v4 = v3;
    if (qword_27C7608D0 != -1)
    {
      swift_once();
    }

    v5 = 0.0;
    [v2 setFrame_];
    [v2 frame];
    MaxX = CGRectGetMaxX(v13);
    [v1 frame];
  }

  else
  {
    [v1 bounds];
    [v1 setFrame_];
    v9 = *&v0[OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_ringsView];
    [v1 frame];
    MaxX = CGRectGetMaxX(v14);
    [v1 smu_firstLineCapFrameOriginY];
    v5 = v10;
    if (qword_27C7608D0 != -1)
    {
      swift_once();
    }

    v7 = *&qword_27C769868;
    v8 = *&qword_27C769868;
    v1 = v9;
  }

  return [v1 setFrame_];
}

id sub_20BA79448()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionTimeProgressView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BA7950C(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_behavior;
  v4 = sub_20C136974();
  v6 = v5;
  if (v4 == sub_20C136974() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_20C13DFF4();

    if (v9)
    {
      return;
    }

    v10 = sub_20C136974();
    v12 = v11;
    v13 = 1;
    if (v10 != sub_20C136974() || v12 != v14)
    {
      v13 = sub_20C13DFF4();
    }

    v1[v3] = a1;
    v16 = sub_20C136974();
    v18 = v17;
    if (v16 == sub_20C136974() && v18 == v19)
    {

LABEL_18:
      v21 = objc_opt_self();
      v22 = swift_allocObject();
      *(v22 + 16) = v1;
      v31 = sub_20BA79A38;
      v32 = v22;
      v27 = MEMORY[0x277D85DD0];
      v28 = 1107296256;
      v23 = &block_descriptor_10;
LABEL_19:
      v29 = sub_20B7B548C;
      v30 = v23;
      v24 = _Block_copy(&v27);
      v25 = v1;

      [v21 animateWithDuration:v24 animations:{0.2, v27, v28}];
      _Block_release(v24);
      return;
    }

    v20 = sub_20C13DFF4();

    if (v20)
    {
      goto LABEL_18;
    }

    if (v13)
    {
      v21 = objc_opt_self();
      v26 = swift_allocObject();
      *(v26 + 16) = v1;
      v31 = sub_20BA79A24;
      v32 = v26;
      v27 = MEMORY[0x277D85DD0];
      v28 = 1107296256;
      v23 = &block_descriptor_70;
      goto LABEL_19;
    }
  }
}

id sub_20BA797E8(double a1, double a2)
{
  if (v2[OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_behavior])
  {
    v4 = 0.0;
    if (v2[OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_behavior] != 1)
    {
      v4 = a2 - a1;
    }
  }

  else
  {
    v4 = a1;
  }

  v5 = *&v2[OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_label];
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (qword_27C760838 != -1)
  {
    swift_once();
  }

  v6 = [qword_27C768310 stringFromTimeInterval_];
  if (v6)
  {
    v7 = v6;
    sub_20C13C954();

    v8 = sub_20C13C914();
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

  [v5 setText_];

  v9 = 0.0;
  if (v4 / a2 >= 0.0)
  {
    v9 = v4 / a2;
  }

  if (v4 / a2 <= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = v10;
  *&v10 = v11;
  [*&v2[OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_ringGroup] setPercentage:0 ofRingAtIndex:{v10, v9}];
  [v2 invalidateIntrinsicContentSize];
  *&v12 = v11;

  return [v2 accessibilityDidUpdateTimer:v4 percentage:v12];
}

void sub_20BA79A4C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_label;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = [objc_opt_self() whiteColor];
  [v2 setTextColor_];

  v4 = sub_20C1380F4();
  v5 = sub_20BA6C508(v4);
  [v2 setFont_];

  [v2 setAdjustsFontForContentSizeCategory_];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_behavior) = 0;
  sub_20C13DE24();
  __break(1u);
}

double sub_20BA79B70(uint64_t a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      v33.origin.x = a4;
      v33.origin.y = a5;
      v33.size.width = a6;
      v33.size.height = a7;
      MinX = CGRectGetMinX(v33) + -13.0 - a2;
    }

    else
    {
      if (a1 != 8)
      {
        goto LABEL_8;
      }

      v32.origin.x = a4;
      v32.origin.y = a5;
      v32.size.width = a6;
      v32.size.height = a7;
      MinX = CGRectGetMinX(v32);
    }

    v34.origin.x = a4;
    v34.origin.y = a5;
    v34.size.width = a6;
    v34.size.height = a7;
    CGRectGetMinY(v34);
    return MinX;
  }

  if (a1 == 1 || a1 == 2)
  {
    v30.origin.x = a4;
    v30.origin.y = a5;
    v30.size.width = a6;
    v30.size.height = a7;
    MinX = CGRectGetMinX(v30);
    v31.origin.x = a4;
    v31.origin.y = a5;
    v31.size.width = a6;
    v31.size.height = a7;
    CGRectGetMinY(v31);
    return MinX;
  }

LABEL_8:
  v19 = v15;
  sub_20C13B534();
  v20 = sub_20C13BB74();
  v21 = sub_20C13D1F4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v29 = v23;
    *v22 = 136315138;
    *&v28[1] = a4;
    *&v28[2] = a5;
    *&v28[3] = a6;
    *&v28[4] = a7;
    type metadata accessor for CGRect(0);
    v24 = sub_20C13C9D4();
    v26 = sub_20B51E694(v24, v25, &v29);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_20B517000, v20, v21, "Unknown arrow direction given, unable to calculate representative rect for source rect %s.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x20F2F6A40](v23, -1, -1);
    MEMORY[0x20F2F6A40](v22, -1, -1);
  }

  (*(v14 + 8))(v17, v19);
  return 0.0;
}

uint64_t sub_20BA79E84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13B0B4();
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x28223BE20](v4);
  v81 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x28223BE20](v6);
  v75 = &v71 - v7;
  v8 = sub_20C137C24();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x28223BE20](v8);
  v72 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7698B8);
  MEMORY[0x28223BE20](v10 - 8);
  v80 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v71 - v13;
  v14 = sub_20C134784();
  v73 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_20C13BB84();
  v17 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v71 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v71 - v27;
  v74 = a1;
  v29 = sub_20C134754();
  v31 = v29;
  if (v32)
  {
    if (*(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_isShowingMediaMoment))
    {
      sub_20C13B574();
      v33 = sub_20C13BB74();
      v34 = sub_20C13D1F4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_20B517000, v33, v34, "[SessionMediaPlayerPresenter] Exiting early because the commentary event started in the middle of a media moment", v35, 2u);
        MEMORY[0x20F2F6A40](v35, -1, -1);
      }

      return (*(v17 + 8))(v22, v85);
    }

    v71 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_catalogWorkout;
    v40 = sub_20C1344B4();
    if (v42)
    {
      if (v40 - 2 >= 2)
      {
        if (v40)
        {
          if (!v31)
          {
            sub_20C13CDC4();
            v47 = sub_20C13CDF4();
            (*(*(v47 - 8) + 56))(v28, 0, 1, v47);
            v44 = swift_allocObject();
            v44[2] = 0;
            v44[3] = 0;
            v44[4] = v2;

            v45 = &unk_20C1699B0;
            goto LABEL_19;
          }

          if (v31 == 1)
          {
            sub_20C13CDC4();
            v46 = sub_20C13CDF4();
            (*(*(v46 - 8) + 56))(v28, 0, 1, v46);
            v44 = swift_allocObject();
            v44[2] = 0;
            v44[3] = 0;
            v44[4] = v2;

            v45 = &unk_20C1699A0;
            goto LABEL_19;
          }
        }

        else if (v31 == 2)
        {
          sub_20C13CDC4();
          v43 = sub_20C13CDF4();
          (*(*(v43 - 8) + 56))(v28, 0, 1, v43);
          v44 = swift_allocObject();
          v44[2] = 0;
          v44[3] = 0;
          v44[4] = v2;

          v45 = &unk_20C1699C0;
LABEL_19:
          sub_20B6383D0(0, 0, v28, v45, v44);
        }
      }
    }

    else
    {
      sub_20B583F4C(v40, v41, 0);
    }

    sub_20C13B574();
    v48 = v73;
    (*(v73 + 16))(v16, v74, v14);
    v49 = sub_20C13BB74();
    v50 = sub_20C13D1F4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      sub_20C134774();
      v53 = v52;
      (*(v48 + 8))(v16, v14);
      *(v51 + 4) = v53;
      _os_log_impl(&dword_20B517000, v49, v50, "[SessionMediaPlayerPresenter] Commentary event started at %f", v51, 0xCu);
      MEMORY[0x20F2F6A40](v51, -1, -1);
    }

    else
    {

      (*(v48 + 8))(v16, v14);
    }

    v54 = v77;
    (*(v17 + 8))(v25, v85);
    v85 = sub_20BA7E498();
    v77 = v55;
    v56 = v79;
    v57 = *(v78 + 7);
    v58 = v84;
    v57(v84, 1, 1, v79);
    sub_20C1344C4();
    v59 = v75;
    sub_20C138D44();
    v60 = v76;
    if ((*(v76 + 48))(v59, 1, v54) == 1)
    {
      sub_20B520158(v59, &unk_27C766680);
    }

    else
    {
      sub_20B520158(v58, &qword_27C7698B8);
      v61 = v59;
      v62 = *(v60 + 32);
      v78 = v57;
      v63 = v72;
      v62(v72, v61, v54);
      v62(v58, v63, v54);
      (*(v60 + 56))(v58, 0, 1, v54);
      v78(v58, 0, 1, v56);
    }

    v64 = sub_20C1344B4();
    if (v66)
    {
      if (v64 - 2 >= 2)
      {
        if (v64)
        {
          sub_20BA7E294();
        }

        else
        {
          sub_20BA7E090();
        }
      }

      else
      {
        sub_20C134404();
      }
    }

    else
    {
      sub_20B583F4C(v64, v65, 0);
    }

    swift_getObjectType();
    v67 = v84;
    sub_20B52F9E8(v84, v80, &qword_27C7698B8);
    v68 = v81;
    sub_20C13B0A4();
    v69 = v83;
    sub_20C13A764();
    (*(v82 + 8))(v68, v69);
    v70 = v71;
    sub_20BF75330();
    sub_20BA7D3F4(v2 + v70);
    return sub_20B520158(v67, &qword_27C7698B8);
  }

  sub_20B583F4C(v29, v30, 0);
  sub_20C13B574();
  v37 = sub_20C13BB74();
  v38 = sub_20C13D1F4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_20B517000, v37, v38, "[SessionMediaPlayerPresenter] No topic, exiting early", v39, 2u);
    MEMORY[0x20F2F6A40](v39, -1, -1);
  }

  return (*(v17 + 8))(v19, v85);
}

uint64_t sub_20BA7A920(uint64_t a1)
{
  v3 = sub_20C134784();
  v61 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - v10;
  MEMORY[0x28223BE20](v12);
  v60 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v58 - v18;
  v20 = sub_20C134754();
  v22 = v20;
  if (v23)
  {
    v24 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_catalogWorkout;
    v59 = v1;
    v25 = sub_20C1344B4();
    if (v27)
    {
      if (v25)
      {
        v28 = 0;
      }

      else
      {
        v28 = v22 == 2;
      }

      if (v28)
      {
        sub_20C13CDC4();
        v29 = sub_20C13CDF4();
        (*(*(v29 - 8) + 56))(v19, 0, 1, v29);
        v30 = swift_allocObject();
        v30[2] = 0;
        v30[3] = 0;
        v30[4] = v59;

        sub_20B6383D0(0, 0, v19, &unk_20C169990, v30);
      }
    }

    else
    {
      sub_20B583F4C(v25, v26, 0);
    }

    v35 = sub_20C134794();
    v37 = v36;
    if (v35 == sub_20C134794() && v37 == v38)
    {

LABEL_17:
      sub_20C13B574();
      v40 = v61;
      (*(v61 + 16))(v5, a1, v3);
      v41 = sub_20C13BB74();
      v42 = sub_20C13D1F4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 134217984;
        sub_20C134774();
        v45 = v44;
        sub_20C134764();
        v47 = v46;
        (*(v40 + 8))(v5, v3);
        *(v43 + 4) = v45 + v47;
        _os_log_impl(&dword_20B517000, v41, v42, "[SessionMediaPlayerPresenter] Commentary event ended at %f)", v43, 0xCu);
        MEMORY[0x20F2F6A40](v43, -1, -1);
      }

      else
      {

        (*(v40 + 8))(v5, v3);
      }

      v48 = v59;
      v49 = v63;
      v50 = *(v62 + 8);
      v50(v16, v63);
      if ((*(v48 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_isShowingMediaMoment) & 1) == 0)
      {
        return sub_20BA7D3F4(v48 + v24);
      }

      v51 = v60;
      sub_20C13B574();
      v52 = sub_20C13BB74();
      v53 = sub_20C13D1F4();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_20B517000, v52, v53, "[SessionMediaPlayerPresenter] Exiting early because the commentary event ended in the middle of a media moment", v54, 2u);
        MEMORY[0x20F2F6A40](v54, -1, -1);
      }

      return (v50)(v51, v49);
    }

    v39 = sub_20C13DFF4();

    if (v39)
    {
      goto LABEL_17;
    }

    sub_20C13B584();
    v55 = sub_20C13BB74();
    v56 = sub_20C13D1F4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_20B517000, v55, v56, "[SessionMediaPlayerPresenter] Commentary event is non-narrative. Returning", v57, 2u);
      MEMORY[0x20F2F6A40](v57, -1, -1);
    }

    return (*(v62 + 8))(v11, v63);
  }

  else
  {
    sub_20B583F4C(v20, v21, 0);
    sub_20C13B574();
    v31 = sub_20C13BB74();
    v32 = sub_20C13D1F4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_20B517000, v31, v32, "[SessionMediaPlayerPresenter] No topic, exiting early", v33, 2u);
      MEMORY[0x20F2F6A40](v33, -1, -1);
    }

    return (*(v62 + 8))(v8, v63);
  }
}

uint64_t sub_20BA7AF5C(uint64_t a1)
{
  v116 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7698B8);
  MEMORY[0x28223BE20](v2 - 8);
  v111 = &v102 - v3;
  v4 = sub_20C13B0B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v113 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C133474();
  v114 = *(v7 - 8);
  v115 = v7;
  MEMORY[0x28223BE20](v7);
  v109 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C137C24();
  v112 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v117 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763248);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v102 - v12;
  v118 = sub_20C13BB84();
  v14 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v16 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v102 - v18;
  MEMORY[0x28223BE20](v20);
  v110 = &v102 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v102 - v23;
  v25 = sub_20C1344B4();
  if (v27)
  {
    if (*(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_isShowingMediaMoment))
    {
      sub_20C13B574();
      v28 = sub_20C13BB74();
      v29 = sub_20C13D1F4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_20B517000, v28, v29, "[SessionMediaPlayerPresenter] Exiting early because the music track started in the middle of a media moment", v30, 2u);
        MEMORY[0x20F2F6A40](v30, -1, -1);
      }

      return (*(v14 + 8))(v19, v118);
    }

    else
    {
      v107 = v25;
      v108 = v1;
      v105 = v5;
      sub_20C13B584();
      v35 = sub_20C13BB74();
      v36 = sub_20C13D1F4();
      v37 = os_log_type_enabled(v35, v36);
      v106 = v4;
      v104 = v9;
      if (v37)
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v119 = v39;
        *v38 = 136315138;
        v40 = sub_20C134B94();
        v42 = sub_20B51E694(v40, v41, &v119);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_20B517000, v35, v36, "[SessionMediaPlayerPresenter] Music track started for mediaType %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x20F2F6A40](v39, -1, -1);
        MEMORY[0x20F2F6A40](v38, -1, -1);
      }

      v103 = *(v14 + 8);
      v103(v24, v118);
      v43 = v115;
      v44 = v116;
      v45 = v114;
      v46 = *(v114 + 16);
      v46(v13, v116, v115);
      (*(v45 + 56))(v13, 0, 1, v43);
      v47 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentMusicTrack;
      v48 = v108;
      swift_beginAccess();
      sub_20BA7E6B8(v13, v48 + v47);
      swift_endAccess();
      sub_20C133444();
      LODWORD(v47) = v107;
      v49 = sub_20C133424();
      v51 = v50;
      v52 = sub_20C133434();
      v54 = v53;
      if (v47 > 1)
      {
        v72 = HIBYTE(v51) & 0xF;
        if ((v51 & 0x2000000000000000) == 0)
        {
          v72 = v49 & 0xFFFFFFFFFFFFLL;
        }

        if (v72)
        {
          v119 = v49;
          v120 = v51;

          MEMORY[0x20F2F4230](0x20A280E220, 0xA500000000000000);
          MEMORY[0x20F2F4230](v52, v54);
          v73 = v52;
          v75 = v119;
          v74 = v120;
          v119 = v49;
          v120 = v51;

          MEMORY[0x20F2F4230](2108704, 0xE300000000000000);
          MEMORY[0x20F2F4230](v73, v54);

          v118 = v119;
          v116 = v120;
          v54 = v74;
          v52 = v75;
        }

        else
        {

          swift_bridgeObjectRetain_n();
          v118 = v52;
          v116 = v54;
        }

        v83 = HIBYTE(v54) & 0xF;
        if ((v54 & 0x2000000000000000) == 0)
        {
          v83 = v52 & 0xFFFFFFFFFFFFLL;
        }

        if (!v83)
        {

          v52 = 0;
        }

        v115 = v52;
        __swift_project_boxed_opaque_existential_1((v108 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_mediaTagStringBuilder), *(v108 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_mediaTagStringBuilder + 24));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
        v84 = *(sub_20C138094() - 8);
        v85 = *(v84 + 72);
        v86 = (*(v84 + 80) + 32) & ~*(v84 + 80);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_20C1517D0;
        v88 = (v87 + v86);
        *v88 = 0x636973756DLL;
        v88[1] = 0xE500000000000000;
        swift_storeEnumTagMultiPayload();
        *(v88 + v85) = 3;
        swift_storeEnumTagMultiPayload();
        v89 = (v88 + 2 * v85);
        v90 = v116;
        *v89 = v118;
        v89[1] = v90;
        swift_storeEnumTagMultiPayload();
        v91 = sub_20C138544();

        swift_getObjectType();
        v92 = sub_20C138644();
        if (v92)
        {
          v93 = v92;
          v94 = [v92 currentItem];

          if (v94)
          {
            sub_20C13D134();
          }
        }

        swift_getObjectType();
        v95 = v111;
        v96 = v112;
        v97 = v117;
        v98 = v104;
        (*(v112 + 16))(v111, v117, v104);
        (*(v96 + 56))(v95, 0, 1, v98);
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
        (*(*(v99 - 8) + 56))(v95, 0, 1, v99);
        v100 = v113;
        sub_20C13B0A4();
        v101 = v106;
        sub_20C13A764();

        (*(v105 + 8))(v100, v101);
        return (*(v96 + 8))(v97, v98);
      }

      else
      {
        v107 = v49;
        v55 = sub_20C133414();
        v57 = v56;
        v58 = HIBYTE(v54) & 0xF;
        if ((v54 & 0x2000000000000000) == 0)
        {
          v58 = v52 & 0xFFFFFFFFFFFFLL;
        }

        if (!v58)
        {
          v59 = v55;

          v55 = v59;
          v52 = 0;
        }

        v60 = v115;
        v61 = v109;
        v62 = HIBYTE(v57) & 0xF;
        if ((v57 & 0x2000000000000000) == 0)
        {
          v62 = v55 & 0xFFFFFFFFFFFFLL;
        }

        if (!v62)
        {

          v55 = 0;
          v57 = 0xE000000000000000;
        }

        v102 = v55;
        v63 = HIBYTE(v51) & 0xF;
        if ((v51 & 0x2000000000000000) == 0)
        {
          v63 = v107 & 0xFFFFFFFFFFFFLL;
        }

        v109 = v57;
        if (!v63)
        {

          v107 = 0;
        }

        sub_20C13B574();
        v46(v61, v44, v60);
        v64 = sub_20C13BB74();
        v65 = v61;
        v66 = v60;
        v67 = sub_20C13D1F4();
        v68 = os_log_type_enabled(v64, v67);
        v115 = v52;
        if (v68)
        {
          v69 = swift_slowAlloc();
          *v69 = 134217984;
          sub_20C133464();
          v71 = v70;
          (*(v114 + 8))(v65, v66);
          *(v69 + 4) = v71;
          _os_log_impl(&dword_20B517000, v64, v67, "[SessionMediaPlayerPresenter] isAudio Music track started %f", v69, 0xCu);
          MEMORY[0x20F2F6A40](v69, -1, -1);
        }

        else
        {

          (*(v114 + 8))(v65, v66);
        }

        v103(v110, v118);
        swift_getObjectType();
        v76 = v111;
        v77 = v112;
        v78 = v117;
        v79 = v104;
        (*(v112 + 16))(v111, v117, v104);
        (*(v77 + 56))(v76, 0, 1, v79);
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
        (*(*(v80 - 8) + 56))(v76, 0, 1, v80);
        v81 = v113;
        sub_20C13B0A4();
        v82 = v106;
        sub_20C13A764();
        (*(v105 + 8))(v81, v82);
        sub_20BF75128();
        return (*(v77 + 8))(v78, v79);
      }
    }
  }

  else
  {
    sub_20B583F4C(v25, v26, 0);
    sub_20C13B574();
    v32 = sub_20C13BB74();
    v33 = sub_20C13D1F4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_20B517000, v32, v33, "[SessionMediaPlayerPresenter] No media type, exiting early", v34, 2u);
      MEMORY[0x20F2F6A40](v34, -1, -1);
    }

    return (*(v14 + 8))(v16, v118);
  }
}

uint64_t sub_20BA7BC90(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C133474();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763248);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v34 - v16;
  (*(v5 + 56))(&v34 - v16, 1, 1, v4, v15);
  v18 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentMusicTrack;
  swift_beginAccess();
  sub_20BA7E6B8(v17, v2 + v18);
  swift_endAccess();
  sub_20C13B574();
  (*(v5 + 16))(v7, a1, v4);
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = v8;
    v22 = v21;
    *v21 = 134217984;
    sub_20C133464();
    v24 = v23;
    sub_20C133454();
    v26 = v25;
    (*(v5 + 8))(v7, v4);
    *(v22 + 1) = v24 + v26;
    _os_log_impl(&dword_20B517000, v19, v20, "[SessionMediaPlayerPresenter] Music track ended %f", v22, 0xCu);
    v27 = v22;
    v8 = v35;
    MEMORY[0x20F2F6A40](v27, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v28 = *(v9 + 8);
  v28(v13, v8);
  if ((*(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_isShowingMediaMoment) & 1) == 0)
  {
    return sub_20BA7D3F4(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_catalogWorkout);
  }

  v29 = v36;
  sub_20C13B574();
  v30 = sub_20C13BB74();
  v31 = sub_20C13D1F4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_20B517000, v30, v31, "[SessionMediaPlayerPresenter] Exiting early because the music track ended in the middle of a media moment", v32, 2u);
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  return (v28)(v29, v8);
}

uint64_t sub_20BA7C070(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7698B8);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v42 - v5;
  v46 = sub_20C13B0B4();
  v56 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v54 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C133634();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13BB84();
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_20C137C24();
  v14 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_isShowingMediaMoment) = 1;
  v17 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_catalogWorkout;
  v18 = sub_20BA7E498();
  v49 = v19;
  v50 = v18;
  v52 = v16;
  v20 = a1;
  sub_20C133604();
  v21 = sub_20C1344B4();
  v51 = v17;
  if (v23)
  {
    if (v21 - 2 >= 2)
    {
      if (v21)
      {
        v24 = sub_20BA7E294();
      }

      else
      {
        v24 = sub_20BA7E090();
      }
    }

    else
    {
      v24 = sub_20C134404();
    }

    v44 = v25;
    v45 = v24;
  }

  else
  {
    sub_20B583F4C(v21, v22, 0);
    v44 = 0;
    v45 = 0;
  }

  sub_20C13B574();
  (*(v8 + 16))(v10, a1, v7);
  v26 = v7;
  v27 = sub_20C13BB74();
  v28 = sub_20C13D1F4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v43 = v2;
    v30 = v20;
    v31 = v29;
    *v29 = 134217984;
    sub_20C133624();
    v33 = v32;
    (*(v8 + 8))(v10, v26);
    *(v31 + 1) = v33;
    _os_log_impl(&dword_20B517000, v27, v28, "[SessionMediaPlayerPresenter] Media Moment started %f", v31, 0xCu);
    v34 = v31;
    v20 = v30;
    v2 = v43;
    MEMORY[0x20F2F6A40](v34, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v26);
  }

  (*(v47 + 8))(v13, v48);
  swift_getObjectType();
  v35 = v55;
  v37 = v52;
  v36 = v53;
  (*(v14 + 16))(v55, v52, v53);
  (*(v14 + 56))(v35, 0, 1, v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  (*(*(v38 - 8) + 56))(v35, 0, 1, v38);
  v39 = v54;
  sub_20C13B0A4();
  v40 = v46;
  sub_20C13A764();
  (*(v56 + 8))(v39, v40);
  sub_20BF74F98(v20);
  sub_20BF74B80(v2 + v51);
  return (*(v14 + 8))(v37, v36);
}

uint64_t sub_20BA7C60C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v37 - v5;
  v42 = sub_20C137C24();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763248);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v37 - v8;
  v45 = sub_20C133474();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C133634();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13BB84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_isShowingMediaMoment) = 0;
  sub_20C13B574();
  (*(v11 + 16))(v13, a1, v10);
  v18 = sub_20C13BB74();
  v19 = sub_20C13D1F4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v2;
    v21 = v20;
    *v20 = 134217984;
    sub_20C133624();
    v23 = v22;
    sub_20C133614();
    v25 = v24;
    (*(v11 + 8))(v13, v10);
    *(v21 + 1) = v23 + v25;
    _os_log_impl(&dword_20B517000, v18, v19, "[SessionMediaPlayerPresenter] Media Moment ended %f", v21, 0xCu);
    v26 = v21;
    v2 = v37;
    MEMORY[0x20F2F6A40](v26, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  (*(v15 + 8))(v17, v14);
  v27 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentMusicTrack;
  swift_beginAccess();
  v28 = v44;
  sub_20B52F9E8(v2 + v27, v44, &qword_27C763248);
  v29 = v43;
  v30 = v45;
  if ((*(v43 + 48))(v28, 1, v45) == 1)
  {
    sub_20B520158(v28, &qword_27C763248);
    sub_20BA7D3F4(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_catalogWorkout);
    sub_20C1344C4();
    v31 = v41;
    sub_20C138D44();
    v32 = v40;
    v33 = v42;
    if ((*(v40 + 48))(v31, 1, v42) == 1)
    {
      return sub_20B520158(v31, &unk_27C766680);
    }

    else
    {
      v36 = v38;
      (*(v32 + 32))(v38, v31, v33);
      sub_20BF7312C();
      return (*(v32 + 8))(v36, v33);
    }
  }

  else
  {
    v35 = v39;
    (*(v29 + 32))(v39, v28, v30);
    sub_20BA7AF5C(v35);
    sub_20BF75128();
    return (*(v29 + 8))(v35, v30);
  }
}

uint64_t sub_20BA7CBC0(char *a1)
{
  v68 = a1;
  v2 = sub_20C138EA4();
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x28223BE20](v2);
  v69 = (&v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_20C13BB84();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x28223BE20](v4);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v60 - v7;
  v8 = sub_20C138184();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v64 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v61 = &v60 - v12;
  MEMORY[0x28223BE20](v13);
  v62 = &v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  v21 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_playbackSnapshot;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v21, v20, &unk_27C768AF0);
  v73 = v9;
  v22 = *(v9 + 48);
  v23 = v8;
  LODWORD(v8) = v22(v20, 1, v8);
  sub_20B520158(v20, &unk_27C768AF0);
  if (v8 == 1)
  {
    sub_20BA7D3F4(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_catalogWorkout);
  }

  v72 = v1;
  sub_20B52F9E8(v1 + v21, v17, &unk_27C768AF0);
  if (v22(v17, 1, v23))
  {
    sub_20B520158(v17, &unk_27C768AF0);
    v25 = v67;
    v24 = v68;
    v26 = v66;
  }

  else
  {
    v27 = v73;
    v28 = *(v73 + 16);
    v29 = v62;
    v28(v62, v17, v23);
    sub_20B520158(v17, &unk_27C768AF0);
    sub_20C138134();
    v31 = v30;
    v32 = *(v27 + 8);
    v32(v29, v23);
    v24 = v68;
    sub_20C138134();
    v26 = v66;
    v25 = v67;
    if (v33 < v31)
    {
      sub_20C13B574();
      v34 = v61;
      v28(v61, v24, v23);
      v35 = sub_20C13BB74();
      v36 = v23;
      v37 = sub_20C13D1F4();
      if (os_log_type_enabled(v35, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134218240;
        *(v38 + 4) = v31;
        *(v38 + 12) = 2048;
        v62 = v36;
        sub_20C138134();
        v40 = v39;
        v41 = v34;
        v42 = v62;
        v32(v41, v62);
        *(v38 + 14) = v40;
        _os_log_impl(&dword_20B517000, v35, v37, "[SessionMediaPlayerPresenter] onPlayback calling handlePreEventRegion lastplaybacksnapshot %f currentplaybacksnapshotelapsedtime %f", v38, 0x16u);
        MEMORY[0x20F2F6A40](v38, -1, -1);

        v23 = v42;
      }

      else
      {

        v32(v34, v36);
        v23 = v36;
      }

      (*(v26 + 8))(v63, v25);
      sub_20C138134();
      sub_20BA7DB68(v43);
    }
  }

  v44 = v65;
  sub_20C13B574();
  v45 = v73;
  v46 = v64;
  (*(v73 + 16))(v64, v24, v23);
  v47 = sub_20C13BB74();
  v48 = sub_20C13D1F4();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = v46;
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    sub_20C138134();
    v52 = v51;
    (*(v45 + 8))(v49, v23);
    *(v50 + 4) = v52;
    _os_log_impl(&dword_20B517000, v47, v48, "[SessionMediaPlayerPresenter] onplayback elapsedtime %f", v50, 0xCu);
    MEMORY[0x20F2F6A40](v50, -1, -1);
  }

  else
  {

    (*(v45 + 8))(v46, v23);
  }

  (*(v26 + 8))(v44, v25);
  v53 = sub_20C138174();
  v76 = v53;
  v77 = BYTE4(v53) & 1;
  v74 = 0;
  v75 = 1;
  sub_20B682CA4();
  sub_20B682CF8();
  if (sub_20C133BF4())
  {
    v54 = 1.0;
  }

  else
  {
    v54 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1((v72 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater), *(v72 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater + 24));
  sub_20C138134();
  v56 = v69;
  v55 = v70;
  *v69 = v54;
  *(v56 + 1) = v57;
  v58 = v71;
  (*(v55 + 104))(v56, *MEMORY[0x277D541B0], v71);
  sub_20C138AA4();
  return (*(v55 + 8))(v56, v58);
}

uint64_t sub_20BA7D304()
{
  *(v0 + 24) = *(*(v0 + 16) + 256);
  sub_20C138F44();
  sub_20BA7E7DC();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BA7D394, v2, v1);
}

uint64_t sub_20BA7D394()
{
  sub_20C138F24();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BA7D3F4(uint64_t a1)
{
  v3 = sub_20C1344C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20C13BB84();
  v48 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v43);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v46 = sub_20BA7E498();
  v47 = v14;
  v49 = v1;
  sub_20BA7DD04(v13);
  v15 = sub_20C1344B4();
  if (v17)
  {
    if (v15 - 2 >= 2)
    {
      if (v15)
      {
        v18 = sub_20BA7E294();
      }

      else
      {
        v18 = sub_20BA7E090();
      }
    }

    else
    {
      v18 = sub_20C134404();
    }

    v20 = v18;
    v21 = v19;
  }

  else
  {
    sub_20B583F4C(v15, v16, 0);
    v20 = 0;
    v21 = 0;
  }

  sub_20C13B574();
  sub_20B52F9E8(v13, v10, &unk_27C766680);
  (*(v4 + 16))(v6, a1, v3);

  v22 = v8;
  v23 = sub_20C13BB74();
  v24 = sub_20C13D1F4();
  v44 = v3;
  v25 = v24;

  if (os_log_type_enabled(v23, v25))
  {
    v26 = swift_slowAlloc();
    v42 = a1;
    v27 = v26;
    v39 = swift_slowAlloc();
    v51 = v21;
    v52 = v39;
    *v27 = 136315650;
    v41 = v13;
    v50 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
    v40 = v22;
    v28 = sub_20C13D8F4();
    v30 = sub_20B51E694(v28, v29, &v52);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    v31 = sub_20C13D8F4();
    v33 = v32;
    sub_20B520158(v10, &unk_27C766680);
    v34 = sub_20B51E694(v31, v33, &v52);
    v13 = v41;

    *(v27 + 14) = v34;
    *(v27 + 22) = 2048;
    sub_20C134464();
    v36 = v35;
    (*(v4 + 8))(v6, v44);
    *(v27 + 24) = v36;
    _os_log_impl(&dword_20B517000, v23, v25, "[SessionMediaPlayerPresenter] Configuring default playback info with title %s, artwork: %s, duration %f", v27, 0x20u);
    v37 = v39;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v37, -1, -1);
    MEMORY[0x20F2F6A40](v27, -1, -1);

    (*(v48 + 8))(v40, v45);
  }

  else
  {

    (*(v4 + 8))(v6, v44);
    sub_20B520158(v10, &unk_27C766680);
    (*(v48 + 8))(v22, v45);
  }

  __swift_project_boxed_opaque_existential_1((v49 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater), *(v49 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater + 24));
  sub_20C134464();
  sub_20C138A94();

  return sub_20B520158(v13, &unk_27C766680);
}

uint64_t sub_20BA7D918()
{
  *(v0 + 24) = *(*(v0 + 16) + 256);
  sub_20C138F44();
  sub_20BA7E7DC();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BA7EA54, v2, v1);
}

uint64_t sub_20BA7D9C8()
{
  *(v0 + 24) = *(*(v0 + 16) + 256);
  sub_20C138F44();
  sub_20BA7E7DC();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BA7EA50, v2, v1);
}

uint64_t sub_20BA7DA78()
{
  *(v0 + 24) = *(*(v0 + 16) + 256);
  sub_20C138F44();
  sub_20BA7E7DC();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BA7DB08, v2, v1);
}

uint64_t sub_20BA7DB08()
{
  sub_20C138EF4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BA7DB68(double a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_catalogWorkout;
  started = CatalogWorkout.firstEventStartTime()();
  if ((v8 & 1) != 0 || *&started.is_nil <= a1)
  {
    sub_20C13B574();
    v10 = sub_20C13BB74();
    v11 = sub_20C13D1F4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20B517000, v10, v11, "[SessionMediaPlayerPresenter] handlePreEventRegion early exit", v12, 2u);
      MEMORY[0x20F2F6A40](v12, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  else
  {

    return sub_20BA7D3F4(v1 + v7);
  }
}

uint64_t sub_20BA7DD04@<X0>(char *a1@<X8>)
{
  v33 = a1;
  v41 = sub_20C136154();
  v1 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C137C24();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v32 - v8;
  v9 = sub_20C134434();
  v10 = v9;
  v11 = v9 + 56;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v9 + 56);
  v15 = (v12 + 63) >> 6;
  v42 = v4 + 32;
  v43 = v4;
  v36 = (v1 + 8);
  v37 = v4 + 16;
  v35 = (v4 + 8);

  v17 = 0;
  v39 = result;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
LABEL_8:
      v19 = *(v10 + 48);
      v20 = v43;
      v21 = v38;
      (*(v43 + 16))(v38, v19 + *(v43 + 72) * (__clz(__rbit64(v14)) | (v18 << 6)), v3);
      v34 = *(v20 + 32);
      v34(v6, v21, v3);
      v22 = v40;
      sub_20C137BD4();
      v23 = sub_20C136144();
      v24 = v3;
      v26 = v25;
      v28 = v27;
      (*v36)(v22, v41);
      v45 = v23;
      v46 = v26;
      v28 &= 1u;
      v47 = v28;
      v44 = 4;
      sub_20BA7E610();
      sub_20BA7E664();
      LOBYTE(v22) = sub_20C133C04();
      sub_20B583F4C(v23, v26, v28);
      if (v22)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v35)(v6, v24);
      v17 = v18;
      v3 = v24;
      v10 = v39;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v31 = v33;
    v34(v33, v6, v24);
    v30 = v31;
    v29 = 0;
    v3 = v24;
LABEL_12:
    (*(v43 + 56))(v30, v29, 1, v3);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        v29 = 1;
        v30 = v33;
        goto LABEL_12;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20BA7E090()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_storefrontLocalizer + 24));
  v2 = sub_20C138D34();
  v4 = v3;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v5 = sub_20C138D34();
  v7 = v6;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_mediaTagStringBuilder), *(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_mediaTagStringBuilder + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
  v8 = *(sub_20C138094() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20C14F980;
  v11 = (v10 + v9);
  *v11 = v2;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v7;
  swift_storeEnumTagMultiPayload();
  v12 = sub_20C138544();

  v13 = [v12 string];

  v14 = sub_20C13C954();
  return v14;
}

uint64_t sub_20BA7E294()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_storefrontLocalizer + 24));
  v2 = sub_20C138D34();
  v4 = v3;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v5 = sub_20C138D34();
  v7 = v6;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_mediaTagStringBuilder), *(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_mediaTagStringBuilder + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
  v8 = *(sub_20C138094() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20C14F980;
  v11 = (v10 + v9);
  *v11 = v2;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v7;
  swift_storeEnumTagMultiPayload();
  v12 = sub_20C138544();

  v13 = [v12 string];

  v14 = sub_20C13C954();
  return v14;
}

uint64_t sub_20BA7E498()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7698B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_20C1344B4();
  if (v5)
  {
    if (v3 - 2 >= 2)
    {
      if (!v3)
      {
        return sub_20C134474();
      }

      v7 = sub_20C134374();
      sub_20BEDD510(v7, v2);

      v8 = sub_20C1335F4();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(v2, 1, v8) != 1)
      {
        v10 = sub_20C1335D4();
        (*(v9 + 8))(v2, v8);
        return v10;
      }

      sub_20B520158(v2, &qword_27C7698B0);
    }
  }

  else
  {
    sub_20B583F4C(v3, v4, 0);
  }

  return 0;
}

unint64_t sub_20BA7E610()
{
  result = qword_27C76BCE0;
  if (!qword_27C76BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76BCE0);
  }

  return result;
}

unint64_t sub_20BA7E664()
{
  result = qword_27C7698A8;
  if (!qword_27C7698A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7698A8);
  }

  return result;
}

uint64_t sub_20BA7E6B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763248);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BA7E728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BA7D2E4(a1, v4, v5, v6);
}

unint64_t sub_20BA7E7DC()
{
  result = qword_27C76C6B0;
  if (!qword_27C76C6B0)
  {
    sub_20C138F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C6B0);
  }

  return result;
}

uint64_t sub_20BA7E834(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BA7DA58(a1, v4, v5, v6);
}

uint64_t sub_20BA7E8E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BA7D9A8(a1, v4, v5, v6);
}

uint64_t sub_20BA7E99C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BA7D8F8(a1, v4, v5, v6);
}

uint64_t sub_20BA7EA58(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI29BurnBarPulseGradientContainer_centerWidth] = 0x4042800000000000;
  v10 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150040;
  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  v14 = [v13 colorWithAlphaComponent_];

  *(inited + 32) = v14;
  v15 = [v12 whiteColor];
  v16 = [v15 colorWithAlphaComponent_];

  *(inited + 40) = v16;
  *(inited + 48) = [v12 clearColor];
  sub_20B84A274(inited);
  v17 = [v10 layer];
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18 && ([v18 setType_], v17, v17 = objc_msgSend(v10, sel_layer), objc_opt_self(), (v19 = swift_dynamicCastObjCClass()) != 0) && (objc_msgSend(v19, sel_setStartPoint_, 0.5, 0.5), v17, v17 = objc_msgSend(v10, sel_layer), objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) != 0))
  {
    v21 = OBJC_IVAR____TtC9SeymourUI29BurnBarPulseGradientContainer_gradient;
    [v20 setEndPoint_];

    *&v5[v21] = v10;
    v39.receiver = v5;
    v39.super_class = type metadata accessor for BurnBarPulseGradientContainer();
    v22 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
    v23 = OBJC_IVAR____TtC9SeymourUI29BurnBarPulseGradientContainer_gradient;
    v24 = *&v22[OBJC_IVAR____TtC9SeymourUI29BurnBarPulseGradientContainer_gradient];
    v25 = v22;
    [v25 addSubview_];
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_20C150040;
    v27 = [*&v22[v23] heightAnchor];
    v28 = [*&v22[v23] widthAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 multiplier:1.0];

    *(v26 + 32) = v29;
    v30 = [*&v22[v23] widthAnchor];
    v31 = [v25 widthAnchor];

    v32 = [v30 constraintEqualToAnchor:v31 multiplier:1.0];
    *(v26 + 40) = v32;
    v33 = [*&v22[v23] centerYAnchor];
    v34 = [v25 centerYAnchor];

    v35 = [v33 constraintEqualToAnchor_];
    *(v26 + 48) = v35;
    v36 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500);
    v37 = sub_20C13CC54();

    [v36 activateConstraints_];

    return v25;
  }

  else
  {

    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

void sub_20BA7EF54(char a1, double a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC9SeymourUI29BurnBarPulseGradientContainer_gradient];
  [v6 bounds];
  if (CGRectGetWidth(v23) > 0.0)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI29BurnBarPulseGradientContainer_centerWidth] = a2;
    [v6 bounds];
    v7 = a2 / CGRectGetWidth(v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7698D0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20C1517D0;
    *(v8 + 32) = 0;
    *(v8 + 40) = v7;
    *(v8 + 48) = 0x3FF0000000000000;
    v9 = sub_20B84A6AC();
    if (a1)
    {
      v21[0] = MEMORY[0x277D84F90];
      sub_20C13DD64();
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      v10 = sub_20C13C914();
      v11 = [objc_opt_self() animationWithKeyPath_];

      if (v9)
      {
        sub_20B51C88C(0, &qword_27C765490);
        v12 = sub_20C13CC54();
      }

      else
      {
        v12 = 0;
      }

      [v11 setFromValue_];
      swift_unknownObjectRelease();
      sub_20B51C88C(0, &qword_27C765490);
      v14 = sub_20C13CC54();

      [v11 setToValue_];

      v15 = [v6 layer];
      v16 = sub_20C13C914();
      [v15 addAnimation:v11 forKey:v16];

      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v3;
      *(v18 + 24) = v8;
      v21[4] = sub_20BA7F470;
      v21[5] = v18;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 1107296256;
      v21[2] = sub_20B7B548C;
      v21[3] = &block_descriptor_71;
      v19 = _Block_copy(v21);
      v20 = v3;

      [v17 setCompletionBlock_];
      _Block_release(v19);
    }

    else
    {

      v13 = objc_opt_self();
      [v13 begin];
      [v13 setDisableActions_];
      sub_20B84A4C0(v8);

      [v13 commit];
    }
  }
}

id sub_20BA7F408()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BurnBarPulseGradientContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BA7F4A4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI29BurnBarPulseGradientContainer_centerWidth) = 0x4042800000000000;
  v2 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150040;
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v5 colorWithAlphaComponent_];

  *(inited + 32) = v6;
  v7 = [v4 whiteColor];
  v8 = [v7 colorWithAlphaComponent_];

  *(inited + 40) = v8;
  *(inited + 48) = [v4 clearColor];
  sub_20B84A274(inited);
  v9 = [v2 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10 && ([v10 setType_], v9, v9 = objc_msgSend(v2, sel_layer), objc_opt_self(), (v11 = swift_dynamicCastObjCClass()) != 0) && (objc_msgSend(v11, sel_setStartPoint_, 0.5, 0.5), v9, v9 = objc_msgSend(v2, sel_layer), objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) != 0))
  {
    v13 = OBJC_IVAR____TtC9SeymourUI29BurnBarPulseGradientContainer_gradient;
    [v12 setEndPoint_];

    *(v1 + v13) = v2;
  }

  else
  {
  }

  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BA7F784()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 128);
    MEMORY[0x28223BE20](result);
    os_unfair_lock_lock((v1 + 20));
    sub_20BA81140((v1 + 16));
    os_unfair_lock_unlock((v1 + 20));
  }

  return result;
}

uint64_t sub_20BA7F838()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13B574();
    sub_20C13BB64();
    (*(v1 + 8))(v3, v0);
    swift_getObjectType();
    sub_20B9C7664();
    sub_20C13A764();
  }

  return result;
}

void sub_20BA7F990()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v0 = sub_20C1384D4();
    sub_20BA7FA04();
  }
}

uint64_t sub_20BA7FA04()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v18 - v3;
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766448);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  (*(v10 + 16))(v18 - v12, v1 + OBJC_IVAR____TtC9SeymourUI31SessionExternalOverlayPresenter__scottyFeatures, v9, v11);
  sub_20C13A344();
  (*(v10 + 8))(v13, v9);
  v14 = *(v18[1] + 16);

  if (v14)
  {
    sub_20C13B574();
    sub_20C13BB64();
    (*(v6 + 8))(v8, v5);
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_20C131E84();
    v16 = sub_20C13CDF4();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v1;

    sub_20B6383D0(0, 0, v4, &unk_20C169AD0, v17);
  }

  return result;
}

uint64_t sub_20BA7FD04()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766448);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    (*(v5 + 16))(v7, result + OBJC_IVAR____TtC9SeymourUI31SessionExternalOverlayPresenter__scottyFeatures, v4);
    sub_20C13A344();
    (*(v5 + 8))(v7, v4);
    v10 = *(v11 + 16);

    if (v10)
    {
      sub_20C13B574();
      sub_20C13BB64();
      (*(v1 + 8))(v3, v0);
      __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
      sub_20C131E64();
    }
  }

  return result;
}

uint64_t sub_20BA7FF44(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 128);
    os_unfair_lock_lock((v3 + 20));
    *(v3 + 16) = v1;
    os_unfair_lock_unlock((v3 + 20));
  }

  return result;
}

uint64_t sub_20BA7FFDC()
{
  v0[3] = *__swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20BA80080;

  return sub_20BD49114();
}

uint64_t sub_20BA80080()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20BA801BC, 0, 0);
  }
}

uint64_t sub_20BA801BC()
{
  v1 = *(v0[3] + 88);
  os_unfair_lock_lock((v1 + 24));
  v2 = 3;
  if ((sub_20B8DD120(3, *(v1 + 16)) & 1) == 0)
  {
    v2 = 0;
    if ((sub_20B8DD120(0, *(v1 + 16)) & 1) == 0)
    {
      v2 = 4;
      if ((sub_20B8DD120(4, *(v1 + 16)) & 1) == 0)
      {
        if (sub_20B8DD120(1, *(v1 + 16)))
        {
          v2 = 1;
        }

        else
        {
          v2 = 2;
        }
      }
    }
  }

  v3 = v0[2];
  os_unfair_lock_unlock((v1 + 24));
  v4 = *(v3 + 128);
  os_unfair_lock_lock((v4 + 20));
  *(v4 + 16) = v2;
  os_unfair_lock_unlock((v4 + 20));
  v5 = v0[1];

  return v5();
}

void sub_20BA802A8(_BYTE *a1, void *a2, uint64_t a3)
{
  v75 = a3;
  v76 = a2;
  v5 = sub_20C13BB84();
  v77 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v66 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v66 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7698F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v66 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7698F8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v66 - v18;
  v20 = sub_20C131EE4();
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  if (!*a1)
  {
    v68 = v26;
    v69 = v25;
    v70 = v16;
    v71 = v7;
    v72 = &v66 - v23;
    v73 = v5;
    v67 = v10;
    v74 = v3;
    v27 = v76;
    v78 = v76;
    v28 = v24;
    v29 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v30 = v20;
    v31 = swift_dynamicCast();
    v32 = *(v28 + 56);
    if (v31)
    {
      v32(v19, 0, 1, v20);
      v33 = v72;
      (*(v28 + 32))(v72, v19, v30);
      v34 = v13;
      sub_20C13B574();
      v35 = *(v28 + 16);
      v36 = v69;
      v35(v69, v33, v30);
      v37 = sub_20C13BB74();
      v38 = sub_20C13D1D4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v78 = v76;
        *v39 = 136446210;
        LODWORD(v75) = v38;
        v35(v68, v36, v30);
        v40 = sub_20C13C9D4();
        v42 = v41;
        v43 = *(v28 + 8);
        v43(v36, v30);
        v44 = v43;
        v45 = sub_20B51E694(v40, v42, &v78);

        *(v39 + 4) = v45;
        _os_log_impl(&dword_20B517000, v37, v75, "AirPlay adaptor error: %{public}s", v39, 0xCu);
        v46 = v76;
        __swift_destroy_boxed_opaque_existential_1(v76);
        MEMORY[0x20F2F6A40](v46, -1, -1);
        MEMORY[0x20F2F6A40](v39, -1, -1);

        (*(v77 + 8))(v34, v73);
        v44(v72, v30);
      }

      else
      {

        v64 = *(v28 + 8);
        v64(v36, v30);
        (*(v77 + 8))(v34, v73);
        v64(v33, v30);
      }

      return;
    }

    v32(v19, 1, 1, v20);
    sub_20B520158(v19, &qword_27C7698F8);
    v78 = v27;
    v47 = v27;
    v48 = sub_20C131E34();
    v49 = v70;
    v50 = swift_dynamicCast();
    v51 = *(*(v48 - 8) + 56);
    if ((v50 & 1) == 0)
    {
      v51(v49, 1, 1, v48);
      sub_20B520158(v49, &qword_27C7698F0);
      v56 = v77;
      v57 = v71;
LABEL_13:
      sub_20C13B574();
      sub_20C13BB64();
      (*(v56 + 8))(v57, v73);
      swift_getObjectType();
      v78 = v27;
      v65 = v27;
      sub_20B9C7338();
      sub_20C13A764();

      return;
    }

    v52 = *(v48 - 8);
    v51(v49, 0, 1, v48);
    v53 = (*(v52 + 88))(v49, v48);
    v54 = *MEMORY[0x277CE9B80];
    (*(v52 + 8))(v49, v48);
    v55 = v53 == v54;
    v56 = v77;
    v57 = v71;
    if (!v55)
    {
      goto LABEL_13;
    }

    v58 = v67;
    sub_20C13B574();
    v59 = sub_20C13BB74();
    v60 = sub_20C13D1D4();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v73;
    if (v61)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_20B517000, v59, v60, "AirPlay Route doesn't not support data channel!", v63, 2u);
      MEMORY[0x20F2F6A40](v63, -1, -1);
    }

    (*(v56 + 8))(v58, v62);
  }
}

uint64_t sub_20BA80A30()
{
  v1 = v0[2];
  v2 = sub_20BA956C8();
  v3 = sub_20BE4D234();
  sub_20B8D9970(v3);
  v4 = sub_20B717D04(v2);
  v0[3] = v4;

  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  v7 = *(v6 + 8);
  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = sub_20BA80B38;

  return MEMORY[0x28213B738](v4, v5, v7);
}

uint64_t sub_20BA80B38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20BA80C48()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC9SeymourUI31SessionExternalOverlayPresenter__scottyFeatures;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766448);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionExternalOverlayPresenter()
{
  result = qword_27C7698E0;
  if (!qword_27C7698E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BA80D74()
{
  sub_20B817B00();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BA80E9C()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_20BA80F54;

  return MEMORY[0x28213B6F8](v2, v3);
}

uint64_t sub_20BA80F54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20BA8108C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BA80A10(a1, v4, v5, v6);
}

void sub_20BA8119C(uint64_t a1, id *a2, void *a3)
{
  v5 = objc_opt_self();
  v6 = *a2;
  v7 = [v5 preferredFontForTextStyle_];

  *a3 = v7;
}

char *sub_20BA8120C(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_20C1344C4();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_imageView;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for InstructionsImageView()) init];
  v6 = OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_workoutTitleLabel;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C7608E0 != -1)
  {
    swift_once();
  }

  [v7 setFont_];
  v8 = objc_opt_self();
  v9 = [v8 whiteColor];
  [v7 setTextColor_];

  [v7 setTextAlignment_];
  [v7 setLineBreakMode_];
  [v7 setNumberOfLines_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v6] = v7;
  v10 = OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_workoutDetailLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C7608E8 != -1)
  {
    swift_once();
  }

  [v11 setFont_];
  v12 = [v8 whiteColor];
  [v11 setTextColor_];

  [v11 setTextAlignment_];
  [v11 setLineBreakMode_];
  [v11 setNumberOfLines_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v10] = v11;
  v13 = OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_gymKitLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C7608F0 != -1)
  {
    swift_once();
  }

  [v14 setFont_];
  v15 = [v8 whiteColor];
  [v14 setTextColor_];

  [v14 setTextAlignment_];
  [v14 setLineBreakMode_];
  [v14 setNumberOfLines_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v13] = v14;
  v16 = OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_gymKitConnectingView;
  v17 = [objc_allocWithZone(type metadata accessor for GymKitConnectingView()) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v16] = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_gymKitConnectedView;
  v19 = [objc_allocWithZone(type metadata accessor for GymKitConnectedView()) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v18] = v19;
  v20 = OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_stackView;
  v21 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v21 setAxis_];
  [v21 setAlignment_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v20] = v21;
  *&v2[OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_topOffest] = 0xBFF0000000000000;
  v22 = v39;
  v23 = v40;
  *&v2[OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_presenter] = v40;
  (*(v37 + 16))(v22, v23 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_catalogWorkout, v38);
  v24 = objc_allocWithZone(type metadata accessor for StartWorkoutView());

  v25 = sub_20C004698(v22, 0.0, 0.0, 0.0, 0.0);
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_startWorkoutView] = v25;
  type metadata accessor for ProductPlacementView();
  v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_productPlacementView] = v26;
  v27 = type metadata accessor for TVSessionInstructionsView();
  v41.receiver = v2;
  v41.super_class = v27;
  v28 = objc_msgSendSuper2(&v41, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v29 = *&v28[OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_productPlacementView];
  v30 = v28;
  [v29 setHidden_];
  *(v23 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display + 8) = &off_2822C7070;
  swift_unknownObjectWeakAssign();
  [*(*&v30[OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_startWorkoutView] + OBJC_IVAR____TtC9SeymourUI16StartWorkoutView_playButton) addTarget:v30 action:sel_startButtonTapped forControlEvents:0x2000];
  v31 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v30 action:sel_startButtonTapped];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_20C14F580;
  v33 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v34 = v31;
  *(v32 + 32) = [v33 initWithInteger_];
  sub_20B51C88C(0, &qword_27C765490);
  v35 = sub_20C13CC54();

  [v34 setAllowedPressTypes_];

  [v30 addGestureRecognizer_];

  return v30;
}

uint64_t sub_20BA81960()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20B517000, v6, v7, "Play button tapped. Starting countown.", v8, 2u);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  v10 = *(*(v1 + OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_presenter) + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_onStartCountdown);
  if (v10)
  {

    v10(v11);
    return sub_20B583ECC(v10);
  }

  return result;
}

id sub_20BA81C10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSessionInstructionsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BA81D34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, unsigned __int8 a6, unsigned __int8 a7)
{
  v8 = v7;
  v10 = *&v7[OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_gymKitConnectingView];
  v11 = [*&v10[OBJC_IVAR____TtC9SeymourUI20GymKitConnectingView_spriteView] layer];
  v12 = sub_20C13C914();
  [v11 removeAnimationForKey_];

  v13 = *&v8[OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_imageView];
  [v13 removeFromSuperview];
  v14 = *&v8[OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_workoutTitleLabel];
  [v14 removeFromSuperview];
  v47 = *&v8[OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_workoutDetailLabel];
  [v47 removeFromSuperview];
  v48 = *&v8[OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_gymKitLabel];
  [v48 removeFromSuperview];
  v46 = v10;
  [v10 removeFromSuperview];
  v45 = *&v8[OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_gymKitConnectedView];
  [v45 removeFromSuperview];
  v51 = *&v8[OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_startWorkoutView];
  [v51 removeFromSuperview];
  v52 = *&v8[OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_productPlacementView];
  [v52 removeFromSuperview];
  v15 = *&v8[OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_stackView];
  [v15 removeFromSuperview];
  [v15 addArrangedSubview_];
  if (a2)
  {
    v16 = v13;
    v17 = sub_20C13C914();
    [v14 setText_];

    [v15 setCustomSpacing:v16 afterView:45.0];
    [v15 addArrangedSubview_];

    v13 = v14;
  }

  v18 = v13;
  if (a3)
  {
    v19 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v20 = a3;
    v21 = [v19 initWithAttributedString_];
    v22 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v22 setAlignment_];
    v23 = v21;
    v24 = [v23 length];
    [v23 addAttribute:*MEMORY[0x277D74118] value:v22 range:{0, v24}];

    [v47 setAttributedText_];
    [v15 setCustomSpacing:v18 afterView:25.0];
    [v15 addArrangedSubview_];

    v18 = v47;
    v25 = a4;
    if (a4)
    {
LABEL_5:
      v26 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
      v27 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
      [v27 setAlignment_];
      v28 = v26;
      v29 = [v28 length];
      [v28 addAttribute:*MEMORY[0x277D74118] value:v27 range:{0, v29}];

      goto LABEL_8;
    }
  }

  else
  {
    v25 = a4;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v27 = sub_20C13C914();
  v28 = [v30 initWithString_];
LABEL_8:

  [v48 setAttributedText_];
  [v15 setCustomSpacing:v18 afterView:5.0];
  [v15 addArrangedSubview_];

  v31 = v48;
  if (a6)
  {
    [v15 setCustomSpacing:v31 afterView:40.0];
    [v15 addArrangedSubview_];
    sub_20B91909C();

    v31 = v46;
  }

  if (a7)
  {
    [v15 setCustomSpacing:v31 afterView:51.0];
    [v15 addArrangedSubview_];

    v31 = v45;
  }

  [v15 setCustomSpacing:v31 afterView:51.0];
  [v15 addArrangedSubview_];

  v32 = v51;
  [v8 setNeedsFocusUpdate];
  v33 = 1.0;
  if ((a6 | a7))
  {
    v33 = 0.0;
  }

  [v32 setAlpha_];
  sub_20C004ED8(a5 & 1);

  v56 = v32;
  [v15 addArrangedSubview_];
  [v15 setCustomSpacing:v56 afterView:70.0];
  [v8 addSubview_];
  v34 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20C150040;
  v36 = [v52 widthAnchor];
  v37 = [v36 constraintEqualToConstant_];

  *(v35 + 32) = v37;
  v38 = [v15 centerXAnchor];
  v39 = [v8 centerXAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v35 + 40) = v40;
  v41 = [v15 centerYAnchor];
  v42 = [v8 centerYAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v35 + 48) = v43;
  sub_20B51C88C(0, &qword_281100500);
  v44 = sub_20C13CC54();

  [v34 activateConstraints_];

  [v8 layoutIfNeeded];
}

void sub_20BA82490()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_productPlacementView);

    [v2 setHidden_];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 layoutIfNeeded];
  }
}

id sub_20BA82570(char a1, char a2)
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

id sub_20BA82650()
{
  if (qword_27C7608F0 != -1)
  {
    swift_once();
  }

  v0 = qword_27C769910;

  return [v0 capHeight];
}

void sub_20BA826B4(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_20B9EC7C0;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_20B7B548C;
  v7[3] = &block_descriptor_7;
  v6 = _Block_copy(v7);

  [v4 animateWithDuration:0 delay:v6 usingSpringWithDamping:0 initialSpringVelocity:a1 options:a2 animations:1.0 completion:0.0];
  _Block_release(v6);
}

uint64_t sub_20BA827C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_productPlacementView);
  v2 = v1;
  return sub_20B7F9F58(v1, &off_28229C680);
}

void sub_20BA82808()
{
  [v0 layoutIfNeeded];
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_20BA8290C;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_20B7B548C;
  v4[3] = &block_descriptor_72;
  v3 = _Block_copy(v4);

  [v1 animateWithDuration:v3 animations:0.3];
  _Block_release(v3);
}

void sub_20BA82914()
{
  v1 = OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_imageView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for InstructionsImageView()) init];
  v2 = OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_workoutTitleLabel;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C7608E0 != -1)
  {
    swift_once();
  }

  [v3 setFont_];
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  [v3 setTextColor_];

  [v3 setTextAlignment_];
  [v3 setLineBreakMode_];
  [v3 setNumberOfLines_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  v6 = OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_workoutDetailLabel;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C7608E8 != -1)
  {
    swift_once();
  }

  [v7 setFont_];
  v8 = [v4 whiteColor];
  [v7 setTextColor_];

  [v7 setTextAlignment_];
  [v7 setLineBreakMode_];
  [v7 setNumberOfLines_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v6) = v7;
  v9 = OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_gymKitLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C7608F0 != -1)
  {
    swift_once();
  }

  [v10 setFont_];
  v11 = [v4 whiteColor];
  [v10 setTextColor_];

  [v10 setTextAlignment_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v9) = v10;
  v12 = OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_gymKitConnectingView;
  v13 = [objc_allocWithZone(type metadata accessor for GymKitConnectingView()) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v12) = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_gymKitConnectedView;
  v15 = [objc_allocWithZone(type metadata accessor for GymKitConnectedView()) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v14) = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_stackView;
  v17 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v17 setAxis_];
  [v17 setAlignment_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v16) = v17;
  *(v0 + OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_topOffest) = 0xBFF0000000000000;
  sub_20C13DE24();
  __break(1u);
}

uint64_t type metadata accessor for MetadataEntry()
{
  result = qword_27C769970;
  if (!qword_27C769970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BA82E04()
{
  sub_20B51C88C(319, &qword_281100520);
  if (v0 <= 0x3F)
  {
    sub_20B52CA84();
    if (v1 <= 0x3F)
    {
      sub_20C132EE4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20BA82EB8()
{
  sub_20C13D604();
  v1 = *(v0 + 8);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      if (v1 == 0x8000000000000000 && *(v0 + 16) == 0)
      {
        v4 = 0;
      }

      else
      {
        v4 = 3;
      }

      MEMORY[0x20F2F58E0](v4);
      if (*(v0 + 40))
      {
        goto LABEL_6;
      }

LABEL_14:
      sub_20C13E184();
      goto LABEL_15;
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x20F2F58E0](v2);
  MEMORY[0x20F2F58E0](v1 & 1);
  sub_20C13CA64();
  if (!*(v0 + 40))
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_20C13E184();
  sub_20C13CA64();
LABEL_15:
  type metadata accessor for MetadataEntry();
  sub_20C132EE4();
  sub_20BA830CC(&qword_27C7675A0, MEMORY[0x277CC95F0]);
  return sub_20C13C7C4();
}

uint64_t sub_20BA83000()
{
  sub_20C13E164();
  sub_20BA82EB8();
  return sub_20C13E1B4();
}

uint64_t sub_20BA83044()
{
  sub_20C13E164();
  sub_20BA82EB8();
  return sub_20C13E1B4();
}

uint64_t sub_20BA830CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BA83114(void *a1, void *a2)
{
  sub_20B51C88C(0, &qword_27C7654B0);
  if ((sub_20C13D5F4() & 1) == 0 || (sub_20B8649B4(a1[1], a1[2], a1[3], a2[1], a2[2], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[5];
  v5 = a2[5];
  if (v4)
  {
    if (v5 && (a1[4] == a2[4] && v4 == v5 || (sub_20C13DFF4() & 1) != 0))
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:
  type metadata accessor for MetadataEntry();

  return sub_20C132EC4();
}

unint64_t sub_20BA83208()
{
  result = qword_27C769988;
  if (!qword_27C769988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769988);
  }

  return result;
}

uint64_t sub_20BA8325C()
{
  v16 = sub_20C138B94();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_20C138894();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_marketingOffer;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v11, v6, &unk_27C768660);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20B520158(v6, &unk_27C768660);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = sub_20C138824();
    if (*(v12 + 16))
    {
      v13 = v16;
      (*(v1 + 16))(v3, v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v16);

      v14 = sub_20C138B64();
      (*(v8 + 8))(v10, v7);
      (*(v1 + 8))(v3, v13);
      return v14;
    }

    (*(v8 + 8))(v10, v7);
  }

  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_storefrontLocalizer + 24));
  return sub_20C138D34();
}

uint64_t sub_20BA83580()
{
  v18 = sub_20C138B94();
  v1 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_20C138894();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_marketingOffer;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v11, v6, &unk_27C768660);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20B520158(v6, &unk_27C768660);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = sub_20C138824();
    if (*(v12 + 16))
    {
      v13 = v18;
      (*(v1 + 16))(v3, v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v18);

      v14 = sub_20C138B84();
      v16 = v15;
      (*(v8 + 8))(v10, v7);
      (*(v1 + 8))(v3, v13);
      if (v16)
      {
        return v14;
      }
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }
  }

  return 0;
}

uint64_t sub_20BA8385C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80);
  v148 = *(v1 - 8);
  v149 = v1;
  MEMORY[0x28223BE20](v1);
  v144 = v2;
  v145 = v123 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v146 = v123 - v4;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v139 = v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v5;
  MEMORY[0x28223BE20](v6);
  v140 = v123 - v7;
  v128 = sub_20C1344C4();
  v127 = *(v128 - 1);
  MEMORY[0x28223BE20](v128);
  v126 = v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623E0);
  v133 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v130 = v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = v123 - v11;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v158 = *(v150 - 8);
  v12 = *(v158 + 64);
  MEMORY[0x28223BE20](v150);
  v147 = v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v151 = v123 - v14;
  MEMORY[0x28223BE20](v15);
  v153 = v123 - v16;
  MEMORY[0x28223BE20](v17);
  v157 = v123 - v18;
  MEMORY[0x28223BE20](v19);
  v156 = v123 - v20;
  MEMORY[0x28223BE20](v21);
  v155 = v123 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v123 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = v123 - v27;
  v29 = sub_20C135AE4();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v137 = v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v31;
  MEMORY[0x28223BE20](v32);
  v34 = v123 - v33;
  v35 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutDetail;
  swift_beginAccess();
  v154 = v0;
  sub_20B52F9E8(v0 + v35, v28, &qword_27C7620C8);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    return sub_20B520158(v28, &qword_27C7620C8);
  }

  v134 = v30;
  v37 = *(v30 + 32);
  v123[1] = v30 + 32;
  v124 = v37;
  v141 = v34;
  v135 = v29;
  v37(v34, v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  v125 = swift_allocBox();
  v39 = v38;
  v40 = sub_20C135734();
  (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A90);
  v132 = swift_allocBox();
  v42 = v41;
  v43 = sub_20C133524();
  (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
  v44 = sub_20C134D54();
  (*(*(v44 - 8) + 56))(v25, 1, 1, v44);
  v45 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_resumableSession;
  v46 = v154;
  swift_beginAccess();
  sub_20B5DF2D4(v25, v46 + v45, &unk_27C7623D0);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1((v46 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_archivedSessionClient), *(v46 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_archivedSessionClient + 24));
  v47 = v126;
  sub_20C135AA4();
  sub_20C134324();
  (*(v127 + 8))(v47, v128);
  v48 = v131;
  sub_20C139B74();

  v49 = swift_allocObject();
  *(v49 + 16) = sub_20BA8DD68;
  *(v49 + 24) = v46;
  v50 = v133;
  v51 = v130;
  v52 = v152;
  v133[2](v130, v48, v152);
  v53 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v54 = (v129 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v50[4]((v55 + v53), v51, v52);
  v56 = (v55 + v54);
  *v56 = sub_20B5DF1D4;
  v56[1] = v49;
  v57 = v46;

  v58 = v156;
  sub_20C137C94();
  (v50[1])(v48, v52);
  v59 = swift_allocObject();
  *(v59 + 16) = sub_20BA84E54;
  *(v59 + 24) = 0;
  v60 = v158;
  v61 = *(v158 + 16);
  v127 = v158 + 16;
  v128 = v61;
  v62 = v157;
  v63 = v150;
  v61(v157, v58, v150);
  v64 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v152 = *(v60 + 80);
  v65 = v12 + v64;
  v66 = v64;
  v130 = v64;
  v67 = (v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v126 = v67;
  v68 = swift_allocObject();
  v69 = *(v60 + 32);
  v129 = v60 + 32;
  v131 = v69;
  (v69)(v68 + v66, v62, v63);
  v70 = (v68 + v67);
  *v70 = sub_20B5F7764;
  v70[1] = v59;
  sub_20C137C94();
  v71 = *(v60 + 8);
  v158 = v60 + 8;
  v133 = v71;
  (v71)(v58, v63);
  __swift_project_boxed_opaque_existential_1((v57 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_subscriptionCache), *(v57 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_subscriptionCache + 24));
  v72 = v140;
  sub_20C1392E4();
  v73 = swift_allocObject();
  v74 = v125;
  *(v73 + 16) = sub_20BA8DDAC;
  *(v73 + 24) = v74;
  v75 = v142;
  v76 = v139;
  v77 = v143;
  (*(v142 + 16))(v139, v72, v143);
  v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v79 = (v138 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  (*(v75 + 32))(v80 + v78, v76, v77);
  v81 = (v80 + v79);
  *v81 = sub_20B5D9E70;
  v81[1] = v73;

  v82 = v157;
  sub_20C137C94();
  (*(v75 + 8))(v72, v77);
  v83 = swift_allocObject();
  *(v83 + 16) = sub_20BA84FBC;
  *(v83 + 24) = 0;
  v84 = v153;
  v85 = v82;
  v128(v153, v82, v63);
  v86 = v126;
  v87 = swift_allocObject();
  (v131)(&v130[v87], v84, v63);
  v88 = &v86[v87];
  *v88 = sub_20B5F7764;
  v88[1] = v83;
  sub_20C137C94();
  (v133)(v85, v63);
  __swift_project_boxed_opaque_existential_1((v154 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_assetClient), *(v154 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_assetClient + 24));
  v89 = v146;
  sub_20C139DF4();
  v90 = v134;
  v91 = v137;
  v92 = v135;
  (*(v134 + 16))(v137, v141, v135);
  v93 = (*(v90 + 80) + 24) & ~*(v90 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = v132;
  v124(v94 + v93, v91, v92);
  v95 = swift_allocObject();
  *(v95 + 16) = sub_20BA8DDF0;
  *(v95 + 24) = v94;
  v97 = v148;
  v96 = v149;
  v98 = v145;
  (*(v148 + 16))(v145, v89, v149);
  v99 = (*(v97 + 80) + 16) & ~*(v97 + 80);
  v100 = (v144 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v101 = swift_allocObject();
  (*(v97 + 32))(v101 + v99, v98, v96);
  v102 = (v101 + v100);
  *v102 = sub_20B8FD7C0;
  v102[1] = v95;

  v103 = v157;
  sub_20C137C94();
  (*(v97 + 8))(v89, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v104 = *(v158 + 64);
  v105 = (v152 + 32) & ~v152;
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_20C1517D0;
  v107 = v106 + v105;
  v108 = v128;
  v128(v107, v155, v63);
  v108(v107 + v104, v156, v63);
  v108(v107 + 2 * v104, v103, v63);
  sub_20B51C88C(0, &qword_281100530);
  v109 = sub_20C13D374();
  sub_20C13A7C4();
  v110 = v151;
  sub_20C137C74();

  v111 = swift_allocObject();
  v112 = v132;
  v111[2] = v125;
  v111[3] = v112;
  v111[4] = v154;
  v113 = swift_allocObject();
  *(v113 + 16) = sub_20BA8DE98;
  *(v113 + 24) = v111;
  v114 = swift_allocObject();
  *(v114 + 16) = sub_20B5DF3B8;
  *(v114 + 24) = v113;
  v115 = v147;
  v108(v147, v110, v63);
  v116 = v126;
  v117 = swift_allocObject();
  (v131)(&v130[v117], v115, v63);
  v118 = &v116[v117];
  *v118 = sub_20B5DF3D4;
  v118[1] = v114;

  v119 = v153;
  sub_20C137C94();
  v120 = v133;
  (v133)(v110, v63);
  v121 = sub_20C137CB4();
  v122 = swift_allocObject();
  *(v122 + 16) = 0;
  *(v122 + 24) = 0;
  v121(sub_20B5DF6DC, v122);

  (v120)(v119, v63);
  (v120)(v157, v63);
  (v120)(v156, v63);
  (v120)(v155, v63);
  (*(v134 + 8))(v141, v135);
}

uint64_t sub_20BA84A98(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v28 - v5;
  v6 = sub_20C134D54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BB84();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v13 = *(v7 + 16);
  v35 = a1;
  v32 = v13;
  v13(v9, a1, v6);
  v14 = sub_20C13BB74();
  v15 = sub_20C13D1F4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v16;
    v30 = swift_slowAlloc();
    v37[0] = v30;
    *v16 = 136315138;
    sub_20B530088(&unk_27C769AA0, MEMORY[0x277D51098]);
    v17 = sub_20C13DFA4();
    v31 = v2;
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20 = sub_20B51E694(v17, v19, v37);

    v21 = v29;
    *(v29 + 1) = v20;
    v22 = v21;
    _os_log_impl(&dword_20B517000, v14, v15, "Resumable Session found: %s", v21, 0xCu);
    v23 = v30;
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x20F2F6A40](v23, -1, -1);
    MEMORY[0x20F2F6A40](v22, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  (*(v33 + 8))(v12, v34);
  v24 = v36;
  v32(v36, v35, v6);
  (*(v7 + 56))(v24, 0, 1, v6);
  v25 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_resumableSession;
  v26 = v38;
  swift_beginAccess();
  sub_20B5DF2D4(v24, v26 + v25, &unk_27C7623D0);
  return swift_endAccess();
}

uint64_t sub_20BA84E74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = swift_projectBox();
  v6 = sub_20C135734();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4, a1, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  swift_beginAccess();
  return sub_20B5DF2D4(v4, v5, &unk_27C762390);
}

uint64_t sub_20BA84FDC(void *a1, const char *a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v9 = a1;
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20[1] = v2;
    v15 = v14;
    v21 = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v16 = MEMORY[0x20F2F5850](v20[3], v20[4]);
    v18 = sub_20B51E694(v16, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20B517000, v10, v11, v20[0], v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F2F6A40](v15, -1, -1);
    MEMORY[0x20F2F6A40](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20BA851BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12[-v6];
  v8 = *a1;
  v9 = swift_projectBox();
  v13 = a3;

  v10 = sub_20BEE08A4(sub_20BA8DF78, v12, v8);
  sub_20BEDD708(v10, v7);

  swift_beginAccess();
  return sub_20B5DF2D4(v7, v9, &unk_27C769A90);
}

uint64_t sub_20BA852E0()
{
  v0 = sub_20C1344C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C133504();
  v6 = v5;
  sub_20C135AA4();
  v7 = sub_20C134324();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  if (v4 == v7 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20C13DFF4();
  }

  return v11 & 1;
}

uint64_t sub_20BA85424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v52 - v6;
  MEMORY[0x28223BE20](v7);
  v57 = &v52 - v8;
  v9 = sub_20C13BB84();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x28223BE20](v9);
  v54 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v52 - v14;
  v16 = sub_20C132E94();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C135734();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_projectBox();
  v25 = swift_projectBox();
  swift_beginAccess();
  if ((*(v21 + 48))(v24, 1, v20))
  {
    v26 = 0;
  }

  else
  {
    (*(v21 + 16))(v23, v24, v20);
    sub_20C132E84();
    v26 = sub_20C135704();
    (*(v17 + 8))(v19, v16);
    (*(v21 + 8))(v23, v20);
  }

  swift_beginAccess();
  sub_20B52F9E8(v25, v15, &unk_27C769A90);
  v27 = sub_20C133524();
  v28 = (*(*(v27 - 8) + 48))(v15, 1, v27);
  sub_20B520158(v15, &unk_27C769A90);
  if (v28 != 1 || (v26 & 1) != 0)
  {
    v48 = v53;
    sub_20C13B4A4();
    v49 = sub_20C13BB74();
    v50 = sub_20C13D1F4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_20B517000, v49, v50, "User is subscribed, building start workout row", v51, 2u);
      MEMORY[0x20F2F6A40](v51, -1, -1);
    }

    (*(v61 + 8))(v48, v62);
    return sub_20BA86768();
  }

  else
  {
    v29 = v54;
    sub_20C13B4A4();
    v30 = sub_20C13BB74();
    v31 = sub_20C13D1F4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20B517000, v30, v31, "User is not subscribed, building upsell row", v32, 2u);
      MEMORY[0x20F2F6A40](v32, -1, -1);
    }

    (*(v61 + 8))(v29, v62);
    v33 = v63;
    sub_20BA87938(1, 1);
    v34 = v56;
    sub_20BA88214(v56);
    v35 = swift_allocObject();
    *(v35 + 16) = sub_20BA8DEA4;
    *(v35 + 24) = v33;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_20B66A8BC;
    *(v36 + 24) = v35;
    v38 = v58;
    v37 = v59;
    v39 = v55;
    (*(v58 + 16))(v55, v34, v59);
    v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v41 = swift_allocObject();
    (*(v38 + 32))(v41 + v40, v39, v37);
    v42 = (v41 + ((v4 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v42 = sub_20B66A8B4;
    v42[1] = v36;

    v43 = v57;
    sub_20C137C94();
    v44 = *(v38 + 8);
    v44(v34, v37);
    v45 = sub_20C137CB4();
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    v45(sub_20B5DF6DC, v46);

    return (v44)(v43, v37);
  }
}

uint64_t sub_20BA85B64@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v41 - v4;
  v50 = sub_20C1344C4();
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v51 = sub_20C134284();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - v12;
  v14 = sub_20C135AE4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutDetail;
  swift_beginAccess();
  v48 = v2;
  sub_20B52F9E8(v2 + v18, v13, &qword_27C7620C8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v19 = &qword_27C7620C8;
    v20 = v13;
LABEL_5:
    sub_20B520158(v20, v19);
    v23 = type metadata accessor for ButtonAction(0);
    return (*(*(v23 - 8) + 56))(v53, 1, 1, v23);
  }

  (*(v15 + 32))(v17, v13, v14);
  sub_20C135AA4();
  sub_20C134444();
  v21 = v52 + 8;
  v22 = *(v52 + 8);
  v22(v9, v50);
  if ((*(v49 + 48))(v5, 1, v51) == 1)
  {
    (*(v15 + 8))(v17, v14);
    v19 = &unk_27C7623C0;
    v20 = v5;
    goto LABEL_5;
  }

  v25 = v49;
  v26 = v47;
  (*(v49 + 32))(v47, v5, v51);
  v52 = v21;
  __swift_project_boxed_opaque_existential_1((v48 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_storefrontLocalizer), *(v48 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_storefrontLocalizer + 24));
  v27 = sub_20C138D34();
  v44 = v28;
  v45 = v27;
  v29 = type metadata accessor for ButtonAction(0);
  v42 = v22;
  v43 = v29;
  v30 = v53;
  v31 = v53 + *(v29 + 28);
  v32 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200) + 48)];
  v33 = v51;
  (*(v25 + 16))(v31, v26, v51);
  v34 = v46;
  sub_20C135AA4();
  v35 = sub_20C134324();
  v41 = v36;
  v42(v34, v50);
  (*(v25 + 8))(v47, v33);
  (*(v15 + 8))(v17, v14);
  v37 = v41;
  *v32 = v35;
  v32[1] = v37;
  type metadata accessor for ButtonAction.ActionType(0);
  swift_storeEnumTagMultiPayload();
  v38 = *(v48 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_previewIconName);
  v39 = *(v48 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_previewIconName + 8);
  *v30 = 0;
  v30[1] = 0;
  v30[2] = v38;
  v30[3] = v39;
  v40 = v44;
  v30[4] = v45;
  v30[5] = v40;
  (*(*(v43 - 8) + 56))(v30, 0, 1);
}

uint64_t sub_20BA86100(uint64_t a1, int a2, char a3)
{
  v4 = v3;
  v65 = a2;
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13C554();
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = (&v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 16))
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a3 & 1;
    *(v14 + 32) = 0;
    *(v14 + 40) = 1;
    v15 = v14 | 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_20C14F980;
    *(v16 + 32) = v15;
    v68 = 0uLL;
    LOBYTE(v69) = 1;
    *(&v69 + 1) = 0;
    *&v70 = 0;
    WORD4(v70) = 128;
    v71 = 0uLL;
    *&v72 = 0xD000000000000020;
    *(&v72 + 1) = 0x800000020C169C60;
    v73 = 0uLL;
    LOBYTE(v74) = 0;
    *(&v74 + 1) = v16;
    *&v75[0] = MEMORY[0x277D84F90];
    *(v75 + 8) = 0u;
    *(&v75[1] + 8) = 0u;
    *(&v75[2] + 1) = 0;
    v76 = 2;
    nullsub_1(&v68);
    v17 = v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row;
    v18 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 144);
    v85 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 128);
    v86 = v18;
    v87 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 160);
    v19 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 80);
    v81 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 64);
    v82 = v19;
    v20 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 112);
    v83 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 96);
    v84 = v20;
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 16);
    v77 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row);
    v78 = v21;
    v22 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 48);
    v79 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 32);
    v80 = v22;
    v23 = v75[2];
    *(v17 + 128) = v75[1];
    *(v17 + 144) = v23;
    *(v17 + 160) = v76;
    v24 = v73;
    *(v17 + 64) = v72;
    *(v17 + 80) = v24;
    v25 = v75[0];
    *(v17 + 96) = v74;
    *(v17 + 112) = v25;
    v26 = v69;
    *v17 = v68;
    *(v17 + 16) = v26;
    v27 = v71;
    *(v17 + 32) = v70;
    *(v17 + 48) = v27;

    sub_20B520158(&v77, &qword_27C762340);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
    }

    v29 = Strong;
    if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      goto LABEL_19;
    }

    v30 = sub_20B61DBF8(v4, Strong);
    if (!v31)
    {
      sub_20C0C2D50(0);
LABEL_19:

      return swift_unknownObjectRelease();
    }

    v33 = v31;
    v34 = v32;
    v64 = v30;
    sub_20B51C88C(0, &qword_281100530);
    *v13 = sub_20C13D374();
    v36 = v66;
    v35 = v67;
    (*(v66 + 104))(v13, *MEMORY[0x277D85200], v67);
    v37 = sub_20C13C584();
    result = (*(v36 + 8))(v13, v35);
    if (v37)
    {
      if ((v65 & 0x80) != 0)
      {
        sub_20C10BD44(v4, v64, v65 & 1, v29);
      }

      else
      {
        sub_20B621244(v64, v33, v34, v4, v65 & 1, v29);
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  sub_20C13B534();
  v39 = sub_20C13BB74();
  v40 = sub_20C13D1C4();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_20B517000, v39, v40, "Tried to build CatalogWorkoutDetailActionsShelf row with no actions", v41, 2u);
    MEMORY[0x20F2F6A40](v41, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v68 = 0uLL;
  LOBYTE(v69) = 1;
  *(&v69 + 1) = 0;
  *&v70 = 0;
  WORD4(v70) = 128;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  LOBYTE(v74) = 0;
  *(&v74 + 1) = MEMORY[0x277D84F90];
  *&v75[0] = MEMORY[0x277D84F90];
  *(v75 + 8) = 0u;
  *(&v75[1] + 8) = 0u;
  *(&v75[2] + 1) = 0;
  v76 = 2;
  nullsub_1(&v68);
  v42 = v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row;
  v43 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 144);
  v85 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 128);
  v86 = v43;
  v87 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 160);
  v44 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 80);
  v81 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 64);
  v82 = v44;
  v45 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 112);
  v83 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 96);
  v84 = v45;
  v46 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 16);
  v77 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row);
  v78 = v46;
  v47 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 48);
  v79 = *(v4 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 32);
  v80 = v47;
  v48 = v75[2];
  *(v42 + 128) = v75[1];
  *(v42 + 144) = v48;
  *(v42 + 160) = v76;
  v49 = v73;
  *(v42 + 64) = v72;
  *(v42 + 80) = v49;
  v50 = v75[0];
  *(v42 + 96) = v74;
  *(v42 + 112) = v50;
  v51 = v69;
  *v42 = v68;
  *(v42 + 16) = v51;
  v52 = v71;
  *(v42 + 32) = v70;
  *(v42 + 48) = v52;
  sub_20B520158(&v77, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v53 = result;
      v54 = sub_20B61DBF8(v4, result);
      if (!v55)
      {
        sub_20C0C2D50(0);
        return swift_unknownObjectRelease();
      }

      v57 = v54;
      v58 = v55;
      v59 = v56;
      sub_20B51C88C(0, &qword_281100530);
      *v13 = sub_20C13D374();
      v61 = v66;
      v60 = v67;
      (*(v66 + 104))(v13, *MEMORY[0x277D85200], v67);
      v62 = sub_20C13C584();
      result = (*(v61 + 8))(v13, v60);
      if ((v62 & 1) == 0)
      {
        goto LABEL_25;
      }

      sub_20B621244(v57, v58, v59, v4, 1, v53);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BA86768()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v156 = *(v2 - 8);
  v157 = v2;
  MEMORY[0x28223BE20](v2);
  v154 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v147 = &v132 - v5;
  v161 = type metadata accessor for ButtonAction(0);
  v159 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v148 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v143 = &v132 - v8;
  MEMORY[0x28223BE20](v9);
  v136 = &v132 - v10;
  MEMORY[0x28223BE20](v11);
  v152 = &v132 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330);
  v141 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v153 = (&v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v142 = (&v132 - v16);
  MEMORY[0x28223BE20](v17);
  v137 = (&v132 - v18);
  MEMORY[0x28223BE20](v19);
  v155 = &v132 - v20;
  MEMORY[0x28223BE20](v21);
  v158 = &v132 - v22;
  MEMORY[0x28223BE20](v23);
  v144 = (&v132 - v24);
  v140 = sub_20C134734();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0);
  MEMORY[0x28223BE20](v26 - 8);
  v145 = &v132 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800);
  MEMORY[0x28223BE20](v28 - 8);
  v146 = &v132 - v29;
  v150 = sub_20C134104();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v31 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C135AE4();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v132 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v132 - v37;
  v39 = sub_20C1344C4();
  v151 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v41 = &v132 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v132 - v43;
  v45 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v45, v38, &qword_27C7620C8);
  if ((*(v33 + 48))(v38, 1, v32))
  {
    v46 = &qword_27C7620C8;
    v47 = v38;
LABEL_5:
    sub_20B520158(v47, v46);
    v60 = v154;
    sub_20C13B534();
    v61 = sub_20C13BB74();
    v62 = sub_20C13D1D4();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_20B517000, v61, v62, "Unable to build row without workout and configuration", v63, 2u);
      MEMORY[0x20F2F6A40](v63, -1, -1);
    }

    (*(v156 + 8))(v60, v157);
    v64 = v153;
    sub_20BA85B64(v153);
    v65 = v159;
    if ((*(v159 + 48))(v64, 1, v161) == 1)
    {
      return sub_20B520158(v64, &qword_27C770330);
    }

    v67 = v64;
    v68 = v148;
    sub_20BA8DAB0(v67, v148, type metadata accessor for ButtonAction);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0);
    v69 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_20C14F980;
    sub_20B7F11D4(v68, v70 + v69, type metadata accessor for ButtonAction);
    sub_20BA86100(v70, 1, 0);

    return sub_20BA8DB90(v68, type metadata accessor for ButtonAction);
  }

  v48 = v145;
  v49 = v147;
  v135 = v31;
  (*(v33 + 16))(v35, v38, v32);
  sub_20B520158(v38, &qword_27C7620C8);
  sub_20C135AA4();
  (*(v33 + 8))(v35, v32);
  v50 = v151;
  (*(v151 + 32))(v44, v41, v39);
  v51 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_config;
  v52 = v160;
  swift_beginAccess();
  v53 = v52 + v51;
  v54 = v146;
  sub_20B52F9E8(v53, v146, &qword_27C761800);
  v55 = v149;
  v56 = v150;
  v57 = (*(v149 + 48))(v54, 1, v150);
  v58 = v39;
  v59 = v50;
  if (v57 == 1)
  {
    (*(v50 + 8))(v44, v58);
    v46 = &qword_27C761800;
    v47 = v54;
    goto LABEL_5;
  }

  v71 = v58;
  v72 = v135;
  (*(v55 + 32))(v135, v54, v56);
  v73 = sub_20C1344B4();
  if ((v75 & 1) == 0)
  {
    v93 = v72;
    sub_20B583F4C(v73, v74, 0);
    v94 = v49;
    sub_20C13B534();
    v95 = sub_20C13BB74();
    v96 = sub_20C13D1C4();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_20B517000, v95, v96, "Unknown media type, hiding start workout shelf", v97, 2u);
      v98 = v97;
      v94 = v49;
      MEMORY[0x20F2F6A40](v98, -1, -1);
    }

    (*(v156 + 8))(v94, v157);
    v99 = v142;
    sub_20BA85B64(v142);
    v100 = v159;
    v101 = (*(v159 + 48))(v99, 1, v161);
    v102 = v143;
    if (v101 == 1)
    {
      sub_20B520158(v99, &qword_27C770330);
    }

    else
    {
      sub_20BA8DAB0(v99, v143, type metadata accessor for ButtonAction);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0);
      v103 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_20C14F980;
      sub_20B7F11D4(v102, v104 + v103, type metadata accessor for ButtonAction);
      sub_20BA86100(v104, 1, 0);

      sub_20BA8DB90(v102, type metadata accessor for ButtonAction);
    }

    v105 = v71;
    (*(v55 + 8))(v93, v56);
    return (*(v59 + 8))(v44, v105);
  }

  if ((v73 & 0xFE) == 0)
  {
    v76 = sub_20C138104();
    if (v76 != sub_20C138104())
    {
      v124 = v137;
      sub_20BA85B64(v137);
      v125 = v159;
      if ((*(v159 + 48))(v124, 1, v161) == 1)
      {
        sub_20B520158(v124, &qword_27C770330);
      }

      else
      {
        v126 = v124;
        v127 = v72;
        v128 = v136;
        sub_20BA8DAB0(v126, v136, type metadata accessor for ButtonAction);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0);
        v129 = (*(v125 + 80) + 32) & ~*(v125 + 80);
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_20C14F980;
        sub_20B7F11D4(v128, v130 + v129, type metadata accessor for ButtonAction);
        sub_20BA86100(v130, 1, 0);

        v131 = v128;
        v72 = v127;
        sub_20BA8DB90(v131, type metadata accessor for ButtonAction);
      }

      v105 = v71;
      (*(v55 + 8))(v72, v56);
      return (*(v59 + 8))(v44, v105);
    }
  }

  v77 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_resumableSession;
  v78 = v160;
  swift_beginAccess();
  v79 = v48;
  sub_20B52F9E8(v78 + v77, v48, &unk_27C7623D0);
  v80 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_storefrontLocalizer;
  v81 = *(v78 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_platform);
  v82 = sub_20C1344B4();
  v134 = v71;
  v133 = v44;
  if (v84)
  {
    v85 = v160 + v80;
    v86 = v138;
    v87 = v82;
    sub_20C134484();
    v88 = sub_20C1346F4();
    MEMORY[0x28223BE20](v88);
    *(&v132 - 2) = v135;
    *(&v132 - 8) = v87;
    if ((v87 & 0xFE) != 0)
    {
      v89 = sub_20B622280;
    }

    else
    {
      v89 = sub_20B6222C8;
    }

    v90 = sub_20B613908(v89, (&v132 - 4), v88);

    v91 = (*(v139 + 8))(v86, v140);
    MEMORY[0x28223BE20](v91);
    *(&v132 - 48) = v87;
    *(&v132 - 5) = v85;
    *(&v132 - 4) = v44;
    *(&v132 - 3) = v90;
    *(&v132 - 2) = v79;
    *(&v132 - 8) = v81;
    v92 = sub_20B6142EC(sub_20B6222A0, (&v132 - 8), v90);
  }

  else
  {
    sub_20B583F4C(v82, v83, 0);
    v92 = MEMORY[0x277D84F90];
  }

  v106 = v151;
  v107 = v141;
  sub_20B520158(v79, &unk_27C7623D0);
  v108 = sub_20BEF6570(v92);

  v109 = v144;
  sub_20BA85B64(v144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A70);
  v110 = *(v107 + 72);
  v111 = (*(v107 + 80) + 32) & ~*(v107 + 80);
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_20C14F980;
  sub_20B52F9E8(v109, v112 + v111, &qword_27C770330);
  v162 = v108;

  sub_20B8DB598(v112);
  v157 = v162;
  v113 = *(v162 + 16);
  v114 = v155;
  if (v113)
  {
    v156 = v108;
    v115 = v158;
    v116 = v157 + v111;
    v117 = (v159 + 48);
    v118 = MEMORY[0x277D84F90];
    v119 = v152;
    do
    {
      sub_20B52F9E8(v116, v115, &qword_27C770330);
      sub_20B5DF134(v115, v114, &qword_27C770330);
      if ((*v117)(v114, 1, v161) == 1)
      {
        sub_20B520158(v114, &qword_27C770330);
      }

      else
      {
        sub_20BA8DAB0(v114, v119, type metadata accessor for ButtonAction);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_20BC05920(0, v118[2] + 1, 1, v118);
        }

        v121 = v118[2];
        v120 = v118[3];
        if (v121 >= v120 >> 1)
        {
          v118 = sub_20BC05920(v120 > 1, v121 + 1, 1, v118);
        }

        v118[2] = v121 + 1;
        v122 = v118 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v121;
        v119 = v152;
        sub_20BA8DAB0(v152, v122, type metadata accessor for ButtonAction);
        v114 = v155;
      }

      v116 += v110;
      --v113;
      v115 = v158;
    }

    while (v113);

    v106 = v151;
    v109 = v144;
    v108 = v156;
  }

  else
  {

    v118 = MEMORY[0x277D84F90];
  }

  v123 = *(v108 + 16);

  sub_20BA86100(v118, 1, v123 > 1);

  sub_20B520158(v109, &qword_27C770330);
  (*(v149 + 8))(v135, v150);
  return (*(v106 + 8))(v133, v134);
}

uint64_t sub_20BA87938(int a1, int a2)
{
  v63 = a2;
  v65 = type metadata accessor for ButtonAction(0);
  v67 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v66 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330);
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v53 - v8;
  v9 = sub_20C138894();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v53 - v14;
  v54 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v54);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v68 = v2;
  if ((a1 & 1) == 0)
  {
    v20 = sub_20BA8325C();
    v21 = v22;
    v18 = sub_20BA83580();
    v2 = v68;
  }

  v55 = v19;
  v56 = v18;
  v57 = v21;
  v58 = v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8);
  v24 = *(v23 + 48);
  v62 = a1;
  v60 = a1 & 1;
  *v17 = a1 & 1;
  v25 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_marketingOffer;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v25, v15, &unk_27C768660);
  if ((*(v10 + 48))(v15, 1, v9))
  {
    sub_20B520158(v15, &unk_27C768660);
    v26 = sub_20C138B94();
    (*(*(v26 - 8) + 56))(&v17[v24], 1, 1, v26);
  }

  else
  {
    (*(v10 + 16))(v12, v15, v9);
    sub_20B520158(v15, &unk_27C768660);
    v27 = sub_20C138824();
    (*(v10 + 8))(v12, v9);
    if (*(v27 + 16))
    {
      v28 = sub_20C138B94();
      v29 = *(v28 - 8);
      (*(v29 + 16))(&v17[v24], v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80)), v28);

      (*(v29 + 56))(&v17[v24], 0, 1, v28);
    }

    else
    {

      v30 = sub_20C138B94();
      (*(*(v30 - 8) + 56))(&v17[v24], 1, 1, v30);
    }

    v2 = v68;
  }

  sub_20B52F9E8(v2 + v25, &v17[*(v23 + 64)], &unk_27C768660);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A70);
  v31 = *(v59 + 72);
  v32 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v33 = (swift_allocObject() + v32);
  v34 = v65;
  sub_20B7F11D4(v17, v33 + *(v65 + 28), type metadata accessor for ButtonAction.ActionType);
  v35 = v55;
  *v33 = v56;
  v33[1] = v35;
  v33[2] = 0;
  v33[3] = 0;
  v36 = v57;
  v33[4] = v58;
  v33[5] = v36;
  v37 = v67;
  (*(v67 + 56))(v33, 0, 1, v34);
  sub_20BA85B64((v33 + v31));
  v38 = v64;
  sub_20B52F9E8(v33, v64, &qword_27C770330);
  sub_20B5DF134(v38, v6, &qword_27C770330);
  v39 = *(v37 + 48);
  if (v39(v6, 1, v34) == 1)
  {
    sub_20B520158(v6, &qword_27C770330);
    v40 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_20BA8DAB0(v6, v66, type metadata accessor for ButtonAction);
    v40 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_20BC05920(0, v40[2] + 1, 1, v40);
    }

    v42 = v40[2];
    v41 = v40[3];
    if (v42 >= v41 >> 1)
    {
      v40 = sub_20BC05920(v41 > 1, v42 + 1, 1, v40);
    }

    v40[2] = v42 + 1;
    sub_20BA8DAB0(v66, v40 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v42, type metadata accessor for ButtonAction);
  }

  v43 = v33 + v31;
  v44 = v64;
  sub_20B52F9E8(v43, v64, &qword_27C770330);
  sub_20B5DF134(v44, v6, &qword_27C770330);
  if (v39(v6, 1, v65) == 1)
  {
    sub_20B520158(v6, &qword_27C770330);
    v45 = v68;
    v46 = v62;
  }

  else
  {
    sub_20BA8DAB0(v6, v66, type metadata accessor for ButtonAction);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v62;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = sub_20BC05920(0, v40[2] + 1, 1, v40);
    }

    v49 = v40[2];
    v48 = v40[3];
    if (v49 >= v48 >> 1)
    {
      v40 = sub_20BC05920(v48 > 1, v49 + 1, 1, v40);
    }

    v40[2] = v49 + 1;
    sub_20BA8DAB0(v66, v40 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v49, type metadata accessor for ButtonAction);
    v45 = v68;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v50 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_isUpsellRowLoading;
  if ((*(v45 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_isUpsellRowLoading) == 2) | ((*(v45 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_isUpsellRowLoading) ^ v46) | v63) & 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = -127;
  }

  sub_20BA86100(v40, v51, 0);

  result = sub_20BA8DB90(v17, type metadata accessor for ButtonAction.ActionType);
  *(v45 + v50) = v60;
  return result;
}

uint64_t sub_20BA88214@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = sub_20C1344C4();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v48 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C135AE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A60);
  v10 = *(v56 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v15 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v54 = v16;
  v55 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v57 = &v46 - v18;
  v19 = *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_marketingItemProvider + 24);
  v52 = *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_marketingItemProvider + 32);
  v51 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_marketingItemProvider), v19);
  v20 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v20, v9, &qword_27C7620C8);
  if ((*(v5 + 48))(v9, 1, v4))
  {
    sub_20B520158(v9, &qword_27C7620C8);
  }

  else
  {
    v21 = v47;
    (*(v5 + 16))(v47, v9, v4);
    sub_20B520158(v9, &qword_27C7620C8);
    v22 = v48;
    sub_20C135AA4();
    (*(v5 + 8))(v21, v4);
    v23 = sub_20C1344B4();
    v25 = v24;
    v27 = v26;
    (*(v49 + 8))(v22, v50);
    if (v27)
    {
      sub_20C134BA4();
    }

    else
    {
      sub_20B583F4C(v23, v25, 0);
    }
  }

  sub_20C138E74();

  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_20BA8DD08;
  *(v29 + 24) = v28;
  v30 = v53;
  v31 = v56;
  (*(v10 + 16))(v53, v14, v56);
  v32 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v33 = (v11 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v10 + 32))(v34 + v32, v30, v31);
  v35 = (v34 + v33);
  *v35 = sub_20B80E568;
  v35[1] = v29;
  v36 = v57;
  sub_20C137C94();
  (*(v10 + 8))(v14, v31);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_20BA8DD4C;
  *(v38 + 24) = v37;
  v39 = v55;
  v40 = v58;
  (*(v15 + 16))(v55, v36, v58);
  v41 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v42 = (v54 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v15 + 32))(v43 + v41, v39, v40);
  v44 = (v43 + v42);
  *v44 = sub_20B5F7764;
  v44[1] = v38;
  sub_20C137C94();
  return (*(v15 + 8))(v36, v40);
}

uint64_t sub_20BA888B4(void **a1)
{
  v2 = sub_20C139594();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20C138E94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19[-v11];
  v13 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    (*(v7 + 104))(v9, *MEMORY[0x277D54190], v6);
    (*(v3 + 104))(v5, *MEMORY[0x277D54408], v2);
    v16 = v13;
    sub_20C138854();
    v17 = sub_20C138894();
    (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
    v18 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_marketingOffer;
    swift_beginAccess();
    sub_20B5DF2D4(v12, v15 + v18, &unk_27C768660);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20BA88B50(void *a1, uint64_t a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v9 = a1;
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20[1] = v2;
    v15 = v14;
    v21[0] = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v16 = MEMORY[0x20F2F5850](v20[3], v20[4]);
    v18 = sub_20B51E694(v16, v17, v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20B517000, v10, v11, "Marketing item fetch failed with error: %{public}s. Switching back to upsell row.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F2F6A40](v15, -1, -1);
    MEMORY[0x20F2F6A40](v13, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BA87938(0, 0);
  }

  return result;
}

uint64_t sub_20BA88D70(uint64_t a1, uint64_t a2)
{
  v176 = a1;
  v164 = sub_20C138894();
  v162 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v159 = v3;
  v161 = &v149 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_20C138B94();
  v155 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v152 = v4;
  v153 = &v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450);
  v165 = *(v5 - 8);
  v166 = v5;
  MEMORY[0x28223BE20](v5);
  v156 = &v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v6;
  MEMORY[0x28223BE20](v7);
  v173 = &v149 - v8;
  v178 = sub_20C132C14();
  v9 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v177 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v170 = *(v11 - 8);
  v171 = v11;
  MEMORY[0x28223BE20](v11);
  v160 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v163 = &v149 - v14;
  MEMORY[0x28223BE20](v15);
  v169 = &v149 - v16;
  MEMORY[0x28223BE20](v17);
  v151 = &v149 - v18;
  v168 = v19;
  MEMORY[0x28223BE20](v20);
  v167 = (&v149 - v21);
  v22 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v22);
  v172 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v149 - v25;
  v27 = sub_20C1388B4();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = (&v149 - v32);
  v34 = sub_20C136E94();
  v180 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v36 = &v149 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = a2;
  sub_20C138814();
  v179 = v36;
  sub_20C136DF4();
  sub_20C138B74();
  v37 = (*(v28 + 88))(v33, v27);
  v38 = *MEMORY[0x277D540C8];
  v174 = v34;
  if (v37 == v38)
  {
    (*(v28 + 96))(v33, v27);
    v177 = *v33;
    sub_20C138B74();
    v39 = sub_20C1388A4();
    v41 = v40;
    (*(v28 + 8))(v30, v27);
    v42 = sub_20C136664();
    (*(*(v42 - 8) + 56))(v26, 1, 1, v42);
    v43 = v22[5];
    v44 = *MEMORY[0x277D513C8];
    v45 = sub_20C134F24();
    (*(*(v45 - 8) + 104))(&v26[v43], v44, v45);
    v9[7](&v26[v22[6]], 1, 1, v178);
    v46 = v22[8];
    v47 = sub_20C135ED4();
    (*(*(v47 - 8) + 56))(&v26[v46], 1, 1, v47);
    v48 = sub_20C134A04();
    v50 = v49;
    v51 = v22[10];
    v52 = *MEMORY[0x277D51768];
    v53 = sub_20C1352E4();
    (*(*(v53 - 8) + 104))(&v26[v51], v52, v53);
    v54 = v22[11];
    v56 = v179;
    v55 = v180;
    (*(v180 + 16))(&v26[v54], v179, v34);
    (*(v55 + 56))(&v26[v54], 0, 1, v34);
    v57 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    v58 = &v26[v22[7]];
    *v58 = v39;
    v58[1] = v41;
    v59 = &v26[v22[9]];
    *v59 = v48;
    v59[1] = v50;
    *&v26[v22[12]] = v57;
    v60 = v175;
    Strong = swift_unknownObjectWeakLoadStrong();
    v62 = v55;
    v63 = v56;
    if (Strong)
    {
      sub_20BFA039C(v60, v26, Strong);
      swift_unknownObjectRelease();
    }

    v64 = swift_unknownObjectWeakLoadStrong();
    if (v64)
    {
      v65 = v64;
      v181[3] = sub_20B51C88C(0, &unk_27C769A50);
      v181[4] = &off_2822D7AE8;
      v66 = v177;
      v181[0] = v177;
      v67 = v65 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      v68 = swift_unknownObjectWeakLoadStrong();
      v150 = v26;
      if (v68)
      {
        v69 = *(v67 + 8);
        ObjectType = swift_getObjectType();
        v71 = *(v69 + 304);
        v72 = v66;
        v73 = v151;
        v71(v65, v181, ObjectType, v69);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        sub_20B5D9BA8();
        v132 = swift_allocError();
        *v133 = 11;
        *(swift_allocObject() + 16) = v132;
        v134 = v66;
        v135 = v132;
        v73 = v151;
        sub_20C137CA4();
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_1(v181);
      v136 = swift_allocObject();
      *(v136 + 16) = sub_20BA89EE4;
      *(v136 + 24) = 0;
      v137 = v169;
      v138 = v170;
      v139 = v171;
      (*(v170 + 16))(v169, v73, v171);
      v140 = (*(v138 + 80) + 16) & ~*(v138 + 80);
      v141 = (v168 + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
      v142 = swift_allocObject();
      (*(v138 + 32))(v142 + v140, v137, v139);
      v143 = (v142 + v141);
      *v143 = sub_20B5F7764;
      v143[1] = v136;
      v144 = v167;
      sub_20C137C94();
      v145 = *(v138 + 8);
      v145(v73, v139);
      v146 = sub_20C137CB4();
      v147 = swift_allocObject();
      *(v147 + 16) = 0;
      *(v147 + 24) = 0;
      v146(sub_20B5DF6DC, v147);

      v145(v144, v139);
      v62 = v180;
      v26 = v150;
    }

    else
    {
    }

    sub_20BA8DB90(v26, type metadata accessor for ShelfMetricAction);
    return (*(v62 + 8))(v63, v174);
  }

  v167 = v9;
  if (v37 == *MEMORY[0x277D540D0])
  {
    (*(v28 + 96))(v33, v27);
    v74 = v167;
    v76 = v177;
    v75 = v178;
    v167[4](v177, v33, v178);
    v77 = sub_20C136664();
    v78 = v172;
    (*(*(v77 - 8) + 56))(v172, 1, 1, v77);
    v79 = v22[5];
    v80 = *MEMORY[0x277D51398];
    v81 = sub_20C134F24();
    (*(*(v81 - 8) + 104))(v78 + v79, v80, v81);
    v82 = v22[6];
    v74[2]((v78 + v82), v76, v75);
    (v74[7])(v78 + v82, 0, 1, v75);
    v83 = sub_20C1349D4();
    v85 = v84;
    v86 = v22[8];
    v87 = sub_20C135ED4();
    (*(*(v87 - 8) + 56))(v78 + v86, 1, 1, v87);
    v88 = sub_20C134A04();
    v90 = v89;
    v91 = v22[10];
    v92 = *MEMORY[0x277D51768];
    v93 = sub_20C1352E4();
    (*(*(v93 - 8) + 104))(v78 + v91, v92, v93);
    v94 = v22[11];
    v95 = v180;
    (*(v180 + 16))(v78 + v94, v179, v34);
    (*(v95 + 56))(v78 + v94, 0, 1, v34);
    v96 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    v97 = (v78 + v22[7]);
    *v97 = v83;
    v97[1] = v85;
    v98 = (v78 + v22[9]);
    *v98 = v88;
    v98[1] = v90;
    *(v78 + v22[12]) = v96;
    v99 = v175;
    v100 = swift_unknownObjectWeakLoadStrong();
    if (v100)
    {
      sub_20BFA039C(v99, v78, v100);
      swift_unknownObjectRelease();
    }

    swift_getObjectType();
    sub_20C13D234();
    v101 = swift_allocObject();
    swift_weakInit();
    v102 = v155;
    v103 = v153;
    v104 = v157;
    (*(v155 + 16))(v153, v176, v157);
    v105 = v162;
    v106 = v161;
    v107 = v164;
    (*(v162 + 16))(v161, v158, v164);
    v108 = (*(v102 + 80) + 24) & ~*(v102 + 80);
    v109 = (v152 + *(v105 + 80) + v108) & ~*(v105 + 80);
    v110 = swift_allocObject();
    *(v110 + 16) = v101;
    (*(v102 + 32))(v110 + v108, v103, v104);
    (*(v105 + 32))(v110 + v109, v106, v107);
    v112 = v165;
    v111 = v166;
    v113 = v156;
    v114 = v173;
    (*(v165 + 16))(v156, v173, v166);
    v115 = (*(v112 + 80) + 16) & ~*(v112 + 80);
    v116 = (v154 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
    v117 = swift_allocObject();
    (*(v112 + 32))(v117 + v115, v113, v111);
    v118 = (v117 + v116);
    *v118 = sub_20BA8DC20;
    v118[1] = v110;
    v119 = v163;
    sub_20C137C94();
    (*(v112 + 8))(v114, v111);
    v120 = swift_allocObject();
    *(v120 + 16) = sub_20BA8DF98;
    *(v120 + 24) = 0;
    v122 = v170;
    v121 = v171;
    v123 = v160;
    (*(v170 + 16))(v160, v119, v171);
    v124 = (*(v122 + 80) + 16) & ~*(v122 + 80);
    v125 = (v168 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
    v126 = swift_allocObject();
    (*(v122 + 32))(v126 + v124, v123, v121);
    v127 = (v126 + v125);
    *v127 = sub_20B5F7764;
    v127[1] = v120;
    v128 = v169;
    sub_20C137C94();
    v129 = *(v122 + 8);
    v129(v119, v121);
    v130 = sub_20C137CB4();
    v131 = swift_allocObject();
    *(v131 + 16) = 0;
    *(v131 + 24) = 0;
    v130(sub_20B5DF6DC, v131);

    v129(v128, v121);
    sub_20BA8DB90(v172, type metadata accessor for ShelfMetricAction);
    (v167[1])(v177, v178);
    v63 = v179;
    v62 = v180;
    return (*(v62 + 8))(v63, v174);
  }

  result = sub_20C13DFE4();
  __break(1u);
  return result;
}

void sub_20BA89F04(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a1;
  v32 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v30 - v10;
  v12 = sub_20C1388F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_7;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (!v17)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_20B5D9BA8();
    v25 = swift_allocError();
    *v26 = 11;
    *(swift_allocObject() + 16) = v25;
    sub_20C137CA4();
    return;
  }

  v30[1] = v17;
  v18 = sub_20C138B94();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v11, a2, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  v20 = sub_20C138894();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v8, a3, v20);
  (*(v21 + 56))(v8, 0, 1, v20);
  sub_20C1388C4();
  v22 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v22 + 8);
    ObjectType = swift_getObjectType();
    (*(v23 + 296))(Strong, v31, v15, ObjectType, v23);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v13 + 8))(v15, v12);
  }

  else
  {
    sub_20B5D9BA8();
    v27 = swift_allocError();
    *v28 = 11;
    *(swift_allocObject() + 16) = v27;
    v29 = v27;
    sub_20C137CA4();
    swift_unknownObjectRelease();

    (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_20BA8A380()
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450);
  v57 = *(v59 - 8);
  v0 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v54 = &v52 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v55 = &v52 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v52 - v6;
  v56 = v7;
  MEMORY[0x28223BE20](v8);
  v61 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - v11;
  v13 = sub_20C132C14();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v64 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C13BB84();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  sub_20C13B534();
  sub_20C13BB64();
  v23 = *(v17 + 8);
  v23(v22, v16);
  sub_20C136634();
  v24 = v14;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C7617F0);
    sub_20C13B534();
    v25 = sub_20C13BB74();
    v26 = sub_20C13D1D4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20B517000, v25, v26, "Fallback marketing url is invalid", v27, 2u);
      MEMORY[0x20F2F6A40](v27, -1, -1);
    }

    return (v23)(v19, v16);
  }

  else
  {
    v29 = *(v14 + 32);
    v53 = v13;
    v29(v64, v12, v13);
    swift_getObjectType();
    v30 = v55;
    sub_20C13D234();
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = v57;
    v33 = v54;
    v34 = v59;
    (*(v57 + 16))(v54, v30, v59);
    v35 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v36 = (v0 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    (*(v32 + 32))(v37 + v35, v33, v34);
    v38 = (v37 + v36);
    *v38 = sub_20BA8DBF0;
    v38[1] = v31;
    v39 = v60;
    sub_20C137C94();
    (*(v32 + 8))(v30, v34);
    v40 = swift_allocObject();
    *(v40 + 16) = sub_20BA8DF98;
    *(v40 + 24) = 0;
    v42 = v62;
    v41 = v63;
    v43 = v58;
    (*(v62 + 16))(v58, v39, v63);
    v44 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v45 = (v56 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    (*(v42 + 32))(v46 + v44, v43, v41);
    v47 = (v46 + v45);
    *v47 = sub_20B5DF204;
    v47[1] = v40;
    v48 = v61;
    sub_20C137C94();
    v49 = *(v42 + 8);
    v49(v39, v41);
    v50 = sub_20C137CB4();
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    v50(sub_20B5DF6DC, v51);

    v49(v48, v41);
    return (*(v24 + 8))(v64, v53);
  }
}

void sub_20BA8AAB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23[-v6];
  v8 = sub_20C1388F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_7;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_20B5D9BA8();
    v18 = swift_allocError();
    *v19 = 11;
    *(swift_allocObject() + 16) = v18;
    sub_20C137CA4();
    return;
  }

  v13 = sub_20C138B94();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = sub_20C138894();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_20C1388C4();
  v15 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    (*(v16 + 296))(Strong, a1, v11, ObjectType, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_20B5D9BA8();
    v20 = swift_allocError();
    *v21 = 11;
    *(swift_allocObject() + 16) = v20;
    v22 = v20;
    sub_20C137CA4();
    swift_unknownObjectRelease();

    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_20BA8AEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ShelfMetricAction();
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C136664();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = v8[7];
  v13 = *MEMORY[0x277D513F8];
  v14 = sub_20C134F24();
  (*(*(v14 - 8) + 104))(&v10[v12], v13, v14);
  v15 = v8[8];
  v16 = sub_20C132C14();
  (*(*(v16 - 8) + 56))(&v10[v15], 1, 1, v16);
  v17 = v8[10];
  v18 = *MEMORY[0x277D52388];
  v19 = sub_20C135ED4();
  v20 = *(v19 - 8);
  (*(v20 + 104))(&v10[v17], v18, v19);
  (*(v20 + 56))(&v10[v17], 0, 1, v19);
  v21 = v8[12];
  v22 = *MEMORY[0x277D51768];
  v23 = sub_20C1352E4();
  (*(*(v23 - 8) + 104))(&v10[v21], v22, v23);
  v24 = v8[13];
  v25 = sub_20C136E94();
  (*(*(v25 - 8) + 56))(&v10[v24], 1, 1, v25);
  v26 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v27 = &v10[v8[9]];
  *v27 = a2;
  *(v27 + 1) = a3;
  v28 = &v10[v8[11]];
  *v28 = 0;
  *(v28 + 1) = 0;
  *&v10[v8[14]] = v26;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_20BFA039C(v3, v10, Strong);
    swift_unknownObjectRelease();
  }

  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = v30;
    v32 = v30 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = *(v32 + 8);
      ObjectType = swift_getObjectType();
      (*(v33 + 80))(v31, a1, a2, a3, ObjectType, v33);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return sub_20BA8DB90(v10, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20BA8B224()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_archivedSessionClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_assetClient);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_healthDataClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_configurationClient);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_marketingItemProvider);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_subscriptionCache);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_config, &qword_27C761800);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_marketingOffer, &unk_27C768660);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_resumableSession, &unk_27C7623D0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutDetail, &qword_27C7620C8);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_catalogClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_storefrontLocalizer);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutPlanClient);

  return v0;
}

uint64_t sub_20BA8B46C()
{
  sub_20BA8B224();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogWorkoutDetailActionsShelf()
{
  result = qword_27C769A28;
  if (!qword_27C769A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BA8B518()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20BA8B780(319, &qword_281103BF0, MEMORY[0x277D50560]);
    if (v1 <= 0x3F)
    {
      sub_20BA8B780(319, &qword_281103B50, MEMORY[0x277D540B0]);
      if (v2 <= 0x3F)
      {
        sub_20BA8B780(319, &qword_27C762128, MEMORY[0x277D51098]);
        if (v3 <= 0x3F)
        {
          sub_20BA8B780(319, &qword_27C762120, MEMORY[0x277D51E68]);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_20BA8B780(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_20BA8B7D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762330);
  v3 = *(v2 - 8);
  v30 = v2;
  v31 = v3;
  MEMORY[0x28223BE20](v2);
  v29 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v13 = *(v12 - 8);
  v27 = v12;
  v28 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_configurationClient), *(v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_configurationClient + 24));
  sub_20C1398E4();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20BA8DB18;
  *(v16 + 24) = v1;
  (*(v6 + 16))(v8, v11, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, v8, v5);
  v19 = (v18 + ((v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_20B58D058;
  v19[1] = v16;

  sub_20C137C94();
  (*(v6 + 8))(v11, v5);
  v20 = v27;
  v21 = sub_20C137CB4();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v21(sub_20B52347C, v22);

  (*(v28 + 8))(v15, v20);
  v23 = v29;
  sub_20C13B6E4();
  swift_allocObject();
  swift_weakInit();
  sub_20B5D9D0C();
  v24 = v30;
  v25 = sub_20C13C1C4();

  (*(v31 + 8))(v23, v24);
  *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_multiUserEligibilitySubscription) = v25;

  swift_getObjectType();
  sub_20C13B0D4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v32);
  sub_20C139454();
  swift_allocObject();
  swift_weakInit();
  sub_20B530088(&unk_281103B10, MEMORY[0x277D543B0]);

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v32);

  sub_20C138F84();
  swift_allocObject();
  swift_weakInit();
  sub_20B530088(&qword_27C76C460, MEMORY[0x277D541F0]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v32);
  sub_20C138FA4();
  swift_allocObject();
  swift_weakInit();
  sub_20B530088(&qword_27C769A40, MEMORY[0x277D54200]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v32);
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_20BA8BF38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_20C134104();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_config;
  swift_beginAccess();
  sub_20B5DF2D4(v6, a2 + v9, &qword_27C761800);
  return swift_endAccess();
}

uint64_t sub_20BA8C084()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BA8385C();
  }

  return result;
}

uint64_t sub_20BA8C0DC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BA86768();
  }

  return result;
}

uint64_t sub_20BA8C134()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BA87938(1, 0);
  }

  return result;
}

uint64_t sub_20BA8C194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v141 = a1;
  v142 = a3;
  v147 = a2;
  v3 = type metadata accessor for PageAlertAction();
  v4 = *(v3 - 8);
  v143 = v3;
  v144 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v134 = &v122 - v8;
  v9 = sub_20C134284();
  v135 = *(v9 - 8);
  v136 = v9;
  MEMORY[0x28223BE20](v9);
  v132 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_20C13BB84();
  v138 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v12 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v133 = (&v122 - v14);
  MEMORY[0x28223BE20](v15);
  v129 = &v122 - v16;
  v125 = sub_20C138894();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v122 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_20C138B94();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v123 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v137 = &v122 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622F0);
  MEMORY[0x28223BE20](v24 - 8);
  v126 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v131 = &v122 - v27;
  v28 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v28);
  v30 = (&v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for ButtonAction(0);
  v130 = *(v31 - 8);
  v32 = *(v130 + 64);
  MEMORY[0x28223BE20](v31);
  v140 = &v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v139 = &v122 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = (&v122 - v36);
  v38 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v38);
  v40 = &v122 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B7F11D4(v147, v40, type metadata accessor for ShelfItemAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20BA8DAB0(v40, v37, type metadata accessor for ButtonAction);
    sub_20B7F11D4(v37 + *(v31 + 28), v30, type metadata accessor for ButtonAction.ActionType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 7)
    {
      switch(EnumCaseMultiPayload)
      {
        case 8:
          v55 = *v30;
          v54 = v30[1];
          v56 = v30[2];
          v57 = *(v56 + 2);
          if (v57)
          {
            v131 = *v30;
            v132 = v54;
            v133 = v37;
            v148 = MEMORY[0x277D84F90];
            sub_20BB5DA68(0, v57, 0);
            v58 = v148;
            v138 = *(v130 + 80);
            v59 = (v138 + 32) & ~v138;
            v129 = v56;
            v60 = &v56[v59];
            v136 = *(v130 + 72);
            v137 = v59;
            v135 = (v32 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v147 = v57;
              v61 = v139;
              sub_20B7F11D4(v60, v139, type metadata accessor for ButtonAction);
              v62 = *(v61 + 40);
              v146 = *(v61 + 32);
              v63 = swift_allocObject();
              swift_weakInit();
              v64 = v58;
              v65 = v6;
              v66 = v140;
              sub_20B7F11D4(v61, v140, type metadata accessor for ButtonAction);
              v67 = v135;
              v68 = swift_allocObject();
              v69 = v141;
              *(v68 + 16) = v63;
              *(v68 + 24) = v69;
              v70 = v66;
              v6 = v65;
              v58 = v64;
              sub_20BA8DAB0(v70, v68 + v137, type metadata accessor for ButtonAction);
              *(v68 + v67) = v142;

              sub_20C132ED4();
              sub_20BA8DB90(v61, type metadata accessor for ButtonAction);

              v71 = v143;
              v72 = &v6[*(v143 + 24)];
              *v72 = v146;
              v72[1] = v62;
              v6[*(v71 + 20)] = 0;
              v73 = &v6[*(v71 + 28)];
              *v73 = sub_20BA8DA10;
              v73[1] = v68;
              v148 = v64;
              v75 = v64[2];
              v74 = v64[3];
              if (v75 >= v74 >> 1)
              {
                sub_20BB5DA68(v74 > 1, v75 + 1, 1);
                v58 = v148;
              }

              v58[2] = v75 + 1;
              sub_20BA8DAB0(v6, v58 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v75, type metadata accessor for PageAlertAction);
              v60 += v136;
              v57 = v147 - 1;
            }

            while (v147 != 1);

            v37 = v133;
            v97 = v134;
            v55 = v131;
            v54 = v132;
          }

          else
          {

            v58 = MEMORY[0x277D84F90];
            v97 = v134;
          }

          __swift_project_boxed_opaque_existential_1((v145 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_storefrontLocalizer), *(v145 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_storefrontLocalizer + 24));
          v98 = sub_20C138D34();
          v100 = v99;
          sub_20C132ED4();
          v101 = v143;
          v102 = (v97 + *(v143 + 24));
          *v102 = v98;
          v102[1] = v100;
          *(v97 + *(v101 + 20)) = 2;
          v103 = (v97 + *(v101 + 28));
          *v103 = 0;
          v103[1] = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_20BC07260(0, v58[2] + 1, 1, v58);
          }

          v105 = v58[2];
          v104 = v58[3];
          if (v105 >= v104 >> 1)
          {
            v58 = sub_20BC07260(v104 > 1, v105 + 1, 1, v58);
          }

          v58[2] = v105 + 1;
          sub_20BA8DAB0(v97, v58 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v105, type metadata accessor for PageAlertAction);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v107 = Strong;
            type metadata accessor for DefaultPageAlertPresenter();
            v108 = swift_allocObject();
            *(v108 + 24) = 0;
            swift_unknownObjectWeakInit();
            *(v108 + 32) = v58;
            *(v108 + 40) = MEMORY[0x277D84F90];
            *(v108 + 48) = v55;
            *(v108 + 56) = v54;
            *(v108 + 64) = 0;
            *(v108 + 88) = 0;
            *(v108 + 72) = 0;
            *(v108 + 80) = 0;
            v109 = v107 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v110 = *(v109 + 8);
              ObjectType = swift_getObjectType();
              (*(v110 + 224))(v107, v108, &off_2822DD358, ObjectType, v110);
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          else
          {
          }

          goto LABEL_44;
        case 10:
          v76 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200) + 48));
          v77 = *v76;
          v78 = v76[1];
          v79 = v135;
          v80 = v132;
          v81 = v30;
          v82 = v136;
          (*(v135 + 32))(v132, v81, v136);
          sub_20BA8AEB8(v80, v77, v78);

          (*(v79 + 8))(v80, v82);
          goto LABEL_44;
        case 12:
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0);
          v43 = (v42 + 48);
          v44 = (v42 + 64);
LABEL_13:
          v51 = *v43;
          v52 = *v44;
          v53 = sub_20C137254();
          (*(*(v53 - 8) + 8))(v30 + v52, v53);
          sub_20B520158(v30 + v51, &qword_27C76A410);
          sub_20BA8DB90(v30, type metadata accessor for StartWorkoutSessionRequest);
          sub_20B5DA9E8(v37);
LABEL_44:
          v48 = type metadata accessor for ButtonAction;
          v49 = v37;
          return sub_20BA8DB90(v49, v48);
      }

LABEL_24:
      v93 = v133;
      sub_20C13B534();
      v94 = sub_20C13BB74();
      v95 = sub_20C13D1D4();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_20B517000, v94, v95, "[CatalogWorkoutDetailActionsShelf] Unexpected action type for start workout shelf item action", v96, 2u);
        MEMORY[0x20F2F6A40](v96, -1, -1);
      }

      (*(v138 + 8))(v93, v146);
      sub_20BA8DB90(v37, type metadata accessor for ButtonAction);
      v48 = type metadata accessor for ButtonAction.ActionType;
      v49 = v30;
      return sub_20BA8DB90(v49, v48);
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0);
        v43 = (v50 + 64);
        v44 = (v50 + 80);
        goto LABEL_13;
      }

      goto LABEL_24;
    }

    v83 = v21;
    v84 = *v30;
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8);
    v86 = *(v85 + 64);
    v87 = v131;
    sub_20B5DF134(v30 + *(v85 + 48), v131, &qword_27C7622F0);
    v88 = v137;
    sub_20B5DF134(v30 + v86, v137, &unk_27C768660);
    if ((v84 & 1) == 0)
    {
      v89 = v126;
      sub_20B52F9E8(v87, v126, &qword_27C7622F0);
      v90 = v127;
      v91 = v128;
      if ((*(v127 + 48))(v89, 1, v128) == 1)
      {
        sub_20B520158(v89, &qword_27C7622F0);
        v92 = v129;
LABEL_38:
        sub_20C13B534();
        v117 = sub_20C13BB74();
        v118 = sub_20C13D1D4();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          *v119 = 0;
          _os_log_impl(&dword_20B517000, v117, v118, "[CatalogWorkoutDetailActionsShelf] Marketing offer or item missing unexpectedly", v119, 2u);
          MEMORY[0x20F2F6A40](v119, -1, -1);
        }

        (*(v138 + 8))(v92, v146);
        sub_20BA8A380();
        goto LABEL_43;
      }

      v112 = v123;
      (*(v90 + 32))(v123, v89, v91);
      v113 = v83;
      sub_20B52F9E8(v88, v83, &unk_27C768660);
      v114 = v124;
      v115 = v125;
      v116 = (*(v124 + 48))(v83, 1, v125);
      v92 = v129;
      if (v116 == 1)
      {
        (*(v90 + 8))(v112, v91);
        sub_20B520158(v113, &unk_27C768660);
        goto LABEL_38;
      }

      v120 = v122;
      (*(v114 + 32))(v122, v113, v115);
      sub_20BA87938(1, 0);
      sub_20BA88D70(v112, v120);
      (*(v114 + 8))(v120, v115);
      (*(v90 + 8))(v112, v91);
    }

LABEL_43:
    sub_20B520158(v88, &unk_27C768660);
    sub_20B520158(v87, &qword_27C7622F0);
    goto LABEL_44;
  }

  sub_20C13B534();
  v45 = sub_20C13BB74();
  v46 = sub_20C13D1D4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_20B517000, v45, v46, "[CatalogWorkoutDetailActionsShelf] Unexpected shelf item action", v47, 2u);
    MEMORY[0x20F2F6A40](v47, -1, -1);
  }

  (*(v138 + 8))(v12, v146);
  v48 = type metadata accessor for ShelfItemAction;
  v49 = v40;
  return sub_20BA8DB90(v49, v48);
}

uint64_t sub_20BA8D204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B7F11D4(a4, v10, type metadata accessor for ButtonAction);
    swift_storeEnumTagMultiPayload();
    sub_20BA8C194(a3, v10, a5);

    return sub_20BA8DB90(v10, type metadata accessor for ShelfItemAction);
  }

  return result;
}

uint64_t sub_20BA8D320@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BA8D398@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row + 32);
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

uint64_t sub_20BA8D4B4()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v2 = v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_row;
  sub_20B5D8060(v20);
  v3 = v20[9];
  *(v2 + 128) = v20[8];
  *(v2 + 144) = v3;
  *(v2 + 160) = v21;
  v4 = v20[5];
  *(v2 + 64) = v20[4];
  *(v2 + 80) = v4;
  v5 = v20[7];
  *(v2 + 96) = v20[6];
  *(v2 + 112) = v5;
  v6 = v20[1];
  *v2 = v20[0];
  *(v2 + 16) = v6;
  v7 = v20[3];
  *(v2 + 32) = v20[2];
  *(v2 + 48) = v7;
  v8 = (v0 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_previewIconName);
  *v8 = 0xD000000000000010;
  v8[1] = 0x800000020C1A5120;
  v9 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_multiUserEligibilityObserver;
  sub_20C13B704();
  *(v0 + v9) = sub_20C13B6F4();
  v10 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_config;
  v11 = sub_20C134104();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_isUpsellRowLoading) = 2;
  v12 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_marketingOffer;
  v13 = sub_20C138894();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_multiUserEligibilitySubscription) = 0;
  v14 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_resumableSession;
  v15 = sub_20C134D54();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutDetail;
  v17 = sub_20C135AE4();
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  sub_20B51C710(v19, v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_archivedSessionClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(v19, v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_assetClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_bag) = *&v19[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v19, v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E30);
  sub_20C133AA4();
  sub_20B51C710(v19, v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_healthDataClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(v19, v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_configurationClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_eventHub) = v19[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768650);
  sub_20C133AA4();
  sub_20B51C710(v19, v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_marketingItemProvider);
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_platform) = v19[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v19, v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_subscriptionCache);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v19, v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B51C710(v19, v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutPlanClient);
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI32CatalogWorkoutDetailActionsShelf_workoutPlanStringBuilder) = *&v19[0];
  return v1;
}

uint64_t sub_20BA8DA10(uint64_t a1)
{
  v3 = *(type metadata accessor for ButtonAction(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_20BA8D204(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_20BA8DAB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BA8DB90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20BA8DC20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_20C138B94() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C138894() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_20BA89F04(a1, v2 + v6, v9, a2);
}

uint64_t sub_20BA8DEB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BA8DFC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13A814();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 104);
  v9(v8, *MEMORY[0x277D4F068], v4, v6);
  LOBYTE(v13[0]) = 1;
  sub_20C13A384();
  (v9)(v8, *MEMORY[0x277D4EFA8], v4);
  LOBYTE(v13[0]) = 0;
  sub_20C13A384();
  v10 = OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_state;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  *(v2 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_eventHub) = v13[0];
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_platform) = v13[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E00);
  sub_20C133AA4();
  sub_20B51C710(v13, v2 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_privacyPreferencesClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DE0);
  sub_20C133AA4();
  sub_20B51C710(v13, v2 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_engagementClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v13, v2 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_subscriptionToken) = sub_20C13A914();
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20BA92304();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v13);

  return v2;
}

uint64_t sub_20BA8E3A8()
{
  v1 = v0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v51 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v51);
  v53 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v56 = v48 - v5;
  MEMORY[0x28223BE20](v6);
  v54 = v48 - v7;
  v8 = type metadata accessor for WelcomeAcknowledgementInterceptor.State(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NavigationRequest();
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v55 = v48 - v15;
  v16 = sub_20C13BB84();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v17 + 8))(v19, v16);
  v20 = OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_state;
  swift_beginAccess();
  sub_20BA91E28(v1 + v20, v10, type metadata accessor for WelcomeAcknowledgementInterceptor.State);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  if ((*(*(v21 - 8) + 48))(v10, 1, v21) == 1)
  {
    v22 = type metadata accessor for WelcomeAcknowledgementInterceptor.State;
    v23 = v10;
  }

  else
  {
    v24 = &v10[*(v21 + 48)];
    v25 = *v24;
    v26 = v24[1];
    v49 = v2;
    v50 = v25;
    v27 = &v10[*(v21 + 64)];
    v28 = *(v27 + 1);
    v48[0] = *v27;
    v48[2] = v28;
    v29 = v10;
    v30 = v55;
    sub_20B77FF08(v29, v55, type metadata accessor for NavigationRequest);
    v48[1] = v1;
    sub_20BA8EB88(v25, v26);
    sub_20BA91E28(v30, v13, type metadata accessor for NavigationRequest);
    v31 = (*(v52 + 80) + 40) & ~*(v52 + 80);
    v32 = swift_allocObject();
    v33 = v48[0];
    v32[2] = v1;
    v32[3] = v33;
    v32[4] = v28;
    sub_20B77FF08(v13, v32 + v31, type metadata accessor for NavigationRequest);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_20BA9229C;
    *(v34 + 24) = v32;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_20B66A8BC;
    *(v35 + 24) = v34;
    v36 = v49;
    v37 = v53;
    v38 = v56;
    v39 = v51;
    (*(v49 + 16))(v53, v56, v51);
    v40 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v41 = swift_allocObject();
    (*(v36 + 32))(v41 + v40, v37, v39);
    v42 = (v41 + ((v3 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v42 = sub_20B66A8B4;
    v42[1] = v35;

    v43 = v54;
    sub_20C137C94();
    v44 = *(v36 + 8);
    v44(v38, v39);
    v45 = sub_20C137CB4();
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    v45(sub_20B52347C, v46);

    swift_unknownObjectRelease();

    v44(v43, v39);
    v22 = type metadata accessor for NavigationRequest;
    v23 = v55;
  }

  return sub_20BA91E90(v23, v22);
}

uint64_t sub_20BA8E9CC(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for WelcomeAcknowledgementInterceptor.State(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_state;
  swift_beginAccess();
  sub_20BA91FCC(v12, a1 + v14);
  swift_endAccess();
  sub_20BA91E28(a4, v9, type metadata accessor for NavigationRequest);
  swift_storeEnumTagMultiPayload();
  a2(v9);
  return sub_20B520158(v9, &unk_27C76D250);
}

uint64_t sub_20BA8EB88(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_platform) > 1u)
  {
    if (*(v2 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_platform) == 3)
    {
      ObjectType = swift_getObjectType();
      return (*(a2 + 56))(1, ObjectType, a2);
    }

    else
    {
      result = sub_20C13DE24();
      __break(1u);
    }
  }

  else if (*(v2 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_platform))
  {
    v16 = v10;
    v17 = swift_getObjectType();
    (*(a2 + 48))(0, v17, a2);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_20BA92240;
    *(v19 + 24) = v18;
    (*(v6 + 16))(v8, v12, v16);
    v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v21 = swift_allocObject();
    (*(v6 + 32))(v21 + v20, v8, v16);
    v22 = (v21 + ((v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = sub_20B64B960;
    v22[1] = v19;
    swift_unknownObjectRetain();
    sub_20C137C94();
    return (*(v6 + 8))(v12, v16);
  }

  else
  {
    v13 = swift_getObjectType();
    return (*(a2 + 56))(0, v13, a2);
  }

  return result;
}

uint64_t sub_20BA8EE8C(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v119 = a8;
  v117 = a7;
  v114 = a6;
  v135 = a5;
  v108 = a4;
  v131 = a2;
  v127 = a1;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647E0);
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v116 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v10;
  MEMORY[0x28223BE20](v11);
  v134 = &v103 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v122 = *(v13 - 8);
  v123 = v13;
  MEMORY[0x28223BE20](v13);
  v118 = &v103 - v14;
  v128 = type metadata accessor for NavigationSource();
  v130 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v112 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NavigationIntent();
  v125 = *(v16 - 8);
  v126 = v16;
  MEMORY[0x28223BE20](v16);
  v132 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for NavigationResource();
  v106 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v129 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767800);
  MEMORY[0x28223BE20](v19 - 8);
  v111 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v103 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E40);
  MEMORY[0x28223BE20](v24 - 8);
  v105 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v103 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767810);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v103 - v33;
  v35 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v35);
  v133 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250);
  MEMORY[0x28223BE20](v37);
  v39 = (&v103 - v38);
  v40 = type metadata accessor for WelcomeAcknowledgementInterceptor.State(0);
  MEMORY[0x28223BE20](v40 - 8);
  v110 = &v103 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v103 - v43;
  v45 = OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_state;
  swift_beginAccess();
  v113 = a3;
  v109 = v45;
  sub_20BA91E28(a3 + v45, v44, type metadata accessor for WelcomeAcknowledgementInterceptor.State);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  v107 = *(v46 - 8);
  LODWORD(a3) = (*(v107 + 48))(v44, 1, v46);
  sub_20BA91E90(v44, type metadata accessor for WelcomeAcknowledgementInterceptor.State);
  if (a3 == 1)
  {
    v47 = v106;
    v48 = v124;
    (*(v106 + 56))(v34, 1, 1, v124);
    v49 = v28;
    (*(v125 + 56))(v28, 1, 1, v126);
    v50 = *(v130 + 56);
    v104 = v23;
    v51 = v23;
    v52 = v47;
    v50(v51, 1, 1, v128);
    v53 = v108;
    v54 = *(v108 + v35[9]);
    sub_20B5DF134(v34, v31, &unk_27C767810);
    v55 = *(v52 + 48);
    if (v55(v31, 1, v48) == 1)
    {
      sub_20BA91E28(v53, v129, type metadata accessor for NavigationResource);
      v56 = v55(v31, 1, v124);
      v57 = v105;
      if (v56 != 1)
      {
        sub_20B520158(v31, &unk_27C767810);
      }
    }

    else
    {
      sub_20B77FF08(v31, v129, type metadata accessor for NavigationResource);
      v57 = v105;
    }

    v61 = v54 | 1;
    sub_20B5DF134(v49, v57, &qword_27C764E40);
    v62 = v126;
    v63 = *(v125 + 48);
    if (v63(v57, 1, v126) == 1)
    {
      sub_20BA91E28(v53 + v35[5], v132, type metadata accessor for NavigationIntent);
      v64 = v63(v57, 1, v62) == 1;
      v65 = v127;
      v66 = v112;
      v67 = v104;
      if (!v64)
      {
        v68 = v104;
        sub_20B520158(v57, &qword_27C764E40);
        v67 = v68;
      }
    }

    else
    {
      sub_20B77FF08(v57, v132, type metadata accessor for NavigationIntent);
      v65 = v127;
      v66 = v112;
      v67 = v104;
    }

    LODWORD(v127) = a9;
    v69 = v111;
    sub_20B5DF134(v67, v111, &unk_27C767800);
    v70 = *(v130 + 48);
    v71 = v128;
    if (v70(v69, 1, v128) == 1)
    {
      sub_20BA91E28(v53 + v35[6], v66, type metadata accessor for NavigationSource);
      v72 = v70(v69, 1, v71);
      v73 = v131;
      if (v72 != 1)
      {
        sub_20B520158(v69, &unk_27C767800);
      }
    }

    else
    {
      sub_20B77FF08(v69, v66, type metadata accessor for NavigationSource);
      v73 = v131;
    }

    v74 = *(v53 + v35[8]);
    v75 = v133;
    sub_20B77FF08(v129, v133, type metadata accessor for NavigationResource);
    sub_20B77FF08(v132, v75 + v35[5], type metadata accessor for NavigationIntent);
    sub_20B77FF08(v66, v75 + v35[6], type metadata accessor for NavigationSource);
    *(v75 + v35[7]) = 0;
    *(v75 + v35[8]) = v74;
    *(v75 + v35[9]) = v61;
    v76 = v75;
    v77 = v110;
    v78 = (v110 + *(v46 + 48));
    v79 = (v110 + *(v46 + 64));
    sub_20BA91E28(v76, v110, type metadata accessor for NavigationRequest);
    v80 = v135;
    v81 = v114;
    *v78 = v135;
    v78[1] = v81;
    *v79 = v65;
    v79[1] = v73;
    (*(v107 + 56))(v77, 0, 1, v46);
    v82 = v113;
    v83 = v109;
    swift_beginAccess();
    swift_unknownObjectRetain();

    sub_20BA91FCC(v77, v82 + v83);
    swift_endAccess();
    v132 = *(v82 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_dependencies);
    v84 = v132;
    __swift_project_boxed_opaque_existential_1((v82 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_engagementClient), *(v82 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_engagementClient + 24));
    v85 = v134;
    sub_20C1396E4();
    v86 = swift_allocObject();
    swift_weakInit();
    v87 = swift_allocObject();
    v88 = v117;
    *(v87 + 16) = v84;
    *(v87 + 24) = v88;
    v89 = v119;
    *(v87 + 32) = v119;
    LOBYTE(v83) = v127 & 1;
    *(v87 + 40) = v127 & 1;
    *(v87 + 48) = v86;
    *(v87 + 56) = v80;
    *(v87 + 64) = v81;
    v90 = swift_allocObject();
    *(v90 + 16) = sub_20BA933F0;
    *(v90 + 24) = v87;
    v91 = v120;
    v92 = v116;
    v93 = v85;
    v94 = v121;
    (*(v120 + 16))(v116, v93, v121);
    v95 = (*(v91 + 80) + 16) & ~*(v91 + 80);
    v96 = (v115 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
    v97 = swift_allocObject();
    (*(v91 + 32))(v97 + v95, v92, v94);
    v98 = (v97 + v96);
    *v98 = sub_20BA9341C;
    v98[1] = v90;
    swift_unknownObjectRetain();

    sub_20B6A6418(v88, v89, v83);
    v99 = v118;
    sub_20C137C94();
    (*(v91 + 8))(v134, v94);
    v100 = v123;
    v101 = sub_20C137CB4();
    v102 = swift_allocObject();
    *(v102 + 16) = 0;
    *(v102 + 24) = 0;
    v101(sub_20B5DF6DC, v102);

    (*(v122 + 8))(v99, v100);
    return sub_20BA91E90(v133, type metadata accessor for NavigationRequest);
  }

  else
  {
    sub_20B5D9BA8();
    v58 = swift_allocError();
    *v59 = 9;
    *v39 = v58;
    swift_storeEnumTagMultiPayload();
    v127(v39);
    return sub_20B520158(v39, &unk_27C76D250);
  }
}

void sub_20BA8FC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(), uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v29 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v17 = sub_20C133354();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, a1, v18);
  objc_allocWithZone(type metadata accessor for WelcomeViewController());

  sub_20B6A6418(a3, a4, a5 & 1);
  v22 = sub_20BDD62C0(a2, a3, a4, a5 & 1, v20);

  v23 = &v22[OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_dismissHandler];
  v24 = *&v22[OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_dismissHandler];
  *v23 = sub_20BA9344C;
  v23[1] = a6;

  sub_20B583ECC(v24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BA8FF88(v22, v27, v28);

    v25 = sub_20C137CB4();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    v25(sub_20B5DF6DC, v26);

    (*(v29 + 8))(v16, v14);
  }

  else
  {
  }
}

uint64_t sub_20BA8FF30()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BA8E3A8();
  }

  return result;
}

uint64_t sub_20BA8FF88(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_platform) > 1u)
  {
    if (*(v3 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_platform) == 3)
    {
      ObjectType = swift_getObjectType();
      return (*(a3 + 8))(a1, 0, ObjectType, a3);
    }

    else
    {
      result = sub_20C13DE24();
      __break(1u);
    }
  }

  else if (*(v3 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_platform))
  {
    v12 = swift_getObjectType();
    return (*(a3 + 24))(a1, 1, v12, a3);
  }

  else
  {
    v6 = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20C14F580;
    *(v7 + 32) = a1;
    v8 = *(a3 + 16);
    v9 = a1;
    v8(v7, 0, v6, a3);
  }

  return result;
}

uint64_t WelcomeAcknowledgementInterceptor.deinit()
{
  sub_20BA91E90(v0 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_state, type metadata accessor for WelcomeAcknowledgementInterceptor.State);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_privacyPreferencesClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_engagementClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_storefrontLocalizer);

  v1 = OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor__welcomeAcknowledgementShowingEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor__forceWelcomeAcknowledgement, v2);
  return v0;
}

uint64_t WelcomeAcknowledgementInterceptor.__deallocating_deinit()
{
  WelcomeAcknowledgementInterceptor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_20BA902EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_privacyPreferencesClient), *(v1 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_privacyPreferencesClient + 24));
  sub_20C139BD4();
  (*(v3 + 16))(v5, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v13, v5, v2);
  v15 = (v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_20BA905A4;
  v15[1] = 0;
  sub_20C136354();
  sub_20C137C94();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_20BA905A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C136354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = v6;
  v31 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v28 - v8;
  v29 = sub_20C13BB84();
  v10 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v13 = a1;
  v14 = sub_20C13BB74();
  v15 = sub_20C13D1D4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28[1] = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v28[0] = v9;
    v19 = v18;
    v34 = v18;
    *v17 = 136446210;
    swift_getErrorValue();
    v20 = MEMORY[0x20F2F5850](v32, v33);
    v22 = sub_20B51E694(v20, v21, &v34);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_20B517000, v14, v15, "Unable to fetch notice privacy preference: %{public}s. Assuming needs acknowledgment.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v23 = v19;
    v9 = v28[0];
    MEMORY[0x20F2F6A40](v23, -1, -1);
    MEMORY[0x20F2F6A40](v17, -1, -1);
  }

  (*(v10 + 8))(v12, v29);
  sub_20C136334();
  sub_20C136314();
  v24 = v31;
  (*(v5 + 16))(v31, v9, v4);
  v25 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v26 = swift_allocObject();
  (*(v5 + 32))(v26 + v25, v24, v4);
  sub_20C137CA4();
  return (*(v5 + 8))(v9, v4);
}

uint64_t WelcomeAcknowledgementInterceptor.interceptRequest(_:display:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a4;
  v54 = a3;
  v57 = a2;
  v60 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647D0);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v5;
  MEMORY[0x28223BE20](v6);
  v56 = &v52 - v7;
  v64 = type metadata accessor for NavigationRequest();
  v61 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = v8;
  v63 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v16 = sub_20C13BB84();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  sub_20C13B534();
  sub_20C13BB64();
  v23 = *(v17 + 8);
  v23(v22, v16);
  (*(v13 + 16))(v15, v66 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor__welcomeAcknowledgementShowingEnabled, v12);
  sub_20C13A344();
  (*(v13 + 8))(v15, v12);
  if (v67 != 1)
  {
    v29 = v60;
    sub_20C13B534();
    v30 = sub_20C13BB74();
    v31 = sub_20C13D1F4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20B517000, v30, v31, "Welcome acknowledgement showing has been disabled", v32, 2u);
      MEMORY[0x20F2F6A40](v32, -1, -1);
    }

    v23(v19, v16);
    v33 = v63;
    sub_20BA91E28(v29, v63, type metadata accessor for NavigationRequest);
    v34 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v35 = swift_allocObject();
    sub_20B77FF08(v33, v35 + v34, type metadata accessor for NavigationRequest);
    return sub_20C137CA4();
  }

  v24 = v60;
  sub_20BA91E28(v60, v11, type metadata accessor for NavigationResource);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v25 = sub_20C132C14();
    (*(*(v25 - 8) + 8))(v11, v25);
    v26 = v63;
    sub_20BA91E28(v24, v63, type metadata accessor for NavigationRequest);
    v27 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v28 = swift_allocObject();
    sub_20B77FF08(v26, v28 + v27, type metadata accessor for NavigationRequest);
    return sub_20C137CA4();
  }

  sub_20BA91E90(v11, type metadata accessor for NavigationResource);
  v37 = v56;
  v38 = v66;
  sub_20BA902EC();
  v39 = v63;
  sub_20BA91E28(v24, v63, type metadata accessor for NavigationRequest);
  v40 = (*(v61 + 80) + 24) & ~*(v61 + 80);
  v41 = (v62 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *(v42 + 16) = v38;
  sub_20B77FF08(v39, v42 + v40, type metadata accessor for NavigationRequest);
  v43 = (v42 + v41);
  v44 = v58;
  v45 = v54;
  v46 = v55;
  *v43 = v57;
  v43[1] = v45;
  v47 = v59;
  (*(v44 + 16))(v46, v37, v59);
  v48 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v49 = (v53 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  (*(v44 + 32))(v50 + v48, v46, v47);
  v51 = (v50 + v49);
  *v51 = sub_20BA91EF0;
  v51[1] = v42;

  swift_unknownObjectRetain();
  sub_20C137C94();
  return (*(v44 + 8))(v37, v47);
}

uint64_t sub_20BA91030@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v54 = a4;
  v55 = a3;
  v56 = a2;
  v58 = a5;
  v59 = type metadata accessor for NavigationRequest();
  v57 = *(v59 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v53 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  (*(v15 + 16))(&v51 - v17, a1 + OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor__forceWelcomeAcknowledgement, v14, v16);
  sub_20C13A344();
  (*(v15 + 8))(v18, v14);
  if (v60 == 1)
  {
    v19 = sub_20C136344();
    v53 = v20;
    v22 = v21;
    sub_20C13B534();
    sub_20C13BB64();
    (*(v9 + 8))(v13, v8);
    sub_20BA91E28(v56, &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
    v23 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v24 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    sub_20B77FF08(&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v23, type metadata accessor for NavigationRequest);
    v26 = (v25 + v24);
    v27 = v54;
    *v26 = v55;
    v26[1] = v27;
    v28 = v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
    v29 = v53;
    *v28 = v19;
    *(v28 + 8) = v29;
    *(v28 + 16) = v22 & 1;

    swift_unknownObjectRetain();
    return sub_20C137C94();
  }

  v30 = v8;
  v51 = a1;
  v52 = v6;
  sub_20C136324();
  if ((v31 & 1) == 0 || (v32 = sub_20C136304(), v32 != sub_20C136304()))
  {
    v40 = sub_20C136344();
    v42 = v41;
    v44 = v43;
    sub_20C13B534();
    sub_20C13BB64();
    (*(v9 + 8))(v13, v8);
    sub_20BA91E28(v56, v7, type metadata accessor for NavigationRequest);
    v45 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v46 = (v52 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    *(v47 + 16) = v51;
    sub_20B77FF08(v7, v47 + v45, type metadata accessor for NavigationRequest);
    v48 = (v47 + v46);
    v49 = v54;
    *v48 = v55;
    v48[1] = v49;
    v50 = v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v50 = v40;
    *(v50 + 8) = v42;
    *(v50 + 16) = v44 & 1;

    swift_unknownObjectRetain();
    return sub_20C137C94();
  }

  v33 = v53;
  sub_20C13B534();
  v34 = sub_20C13BB74();
  v35 = sub_20C13D1F4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_20B517000, v34, v35, "Welcome acknowledged!", v36, 2u);
    MEMORY[0x20F2F6A40](v36, -1, -1);
  }

  (*(v9 + 8))(v33, v30);
  sub_20BA91E28(v56, &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v37 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v38 = swift_allocObject();
  sub_20B77FF08(&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37, type metadata accessor for NavigationRequest);
  return sub_20C137CA4();
}

uint64_t WelcomeAcknowledgementInterceptor.cancel()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v48 - v6;
  MEMORY[0x28223BE20](v7);
  v56 = &v48 - v8;
  v9 = type metadata accessor for WelcomeAcknowledgementInterceptor.State(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v54 = 0x800000020C1A51B0;
  sub_20C13BB64();
  (*(v16 + 8))(v18, v15);
  v19 = OBJC_IVAR____TtC9SeymourUI33WelcomeAcknowledgementInterceptor_state;
  swift_beginAccess();
  sub_20BA91E28(v2 + v19, v14, type metadata accessor for WelcomeAcknowledgementInterceptor.State);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_20BA91E90(v14, type metadata accessor for WelcomeAcknowledgementInterceptor.State);
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  else
  {
    v23 = &v14[*(v20 + 48)];
    v25 = *v23;
    v24 = *(v23 + 1);
    v26 = &v14[*(v20 + 64)];
    v27 = *(v26 + 1);
    v51 = *v26;
    v53 = v27;
    sub_20BA91E90(v14, type metadata accessor for NavigationRequest);
    (*(v21 + 56))(v11, 1, 1, v20);
    swift_beginAccess();
    sub_20BA91FCC(v11, v2 + v19);
    swift_endAccess();
    v52 = v25;
    ObjectType = swift_getObjectType();
    v29 = v59;
    (*(v24 + 56))(0, ObjectType, v24);
    v30 = swift_allocObject();
    *(v30 + 16) = v51;
    *(v30 + 24) = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_20BA92030;
    *(v31 + 24) = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_20B5DF3B8;
    *(v32 + 24) = v31;
    v34 = v57;
    v33 = v58;
    v51 = *(v57 + 16);
    v35 = v55;
    v51(v55, v29, v58);
    v36 = *(v34 + 80);
    v50 = (v36 + 16) & ~v36;
    v37 = (v4 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = v37;
    v38 = swift_allocObject();
    v49 = *(v34 + 32);
    v49(v38 + ((v36 + 16) & ~v36), v35, v33);
    v39 = (v38 + v37);
    *v39 = sub_20B5DF3D4;
    v39[1] = v32;

    v40 = v56;
    sub_20C137C94();
    v57 = *(v34 + 8);
    v41 = v59;
    v42 = v33;
    (v57)(v59, v33);
    v43 = swift_allocObject();
    v43[2] = 0xD000000000000031;
    v43[3] = v54;
    v43[4] = 189;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_20B5D9EA0;
    *(v44 + 24) = v43;
    v51(v41, v40, v33);
    v45 = v48;
    v46 = swift_allocObject();
    v49(v46 + v50, v41, v42);
    v47 = (v46 + v45);
    *v47 = sub_20B5D9EC0;
    v47[1] = v44;

    sub_20C137C94();

    swift_unknownObjectRelease();
    return (v57)(v40, v42);
  }
}

uint64_t sub_20BA91CB8(void (*a1)(uint64_t *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250);
  MEMORY[0x28223BE20](v2);
  v4 = (&v8 - v3);
  sub_20B5D9BA8();
  v5 = swift_allocError();
  *v6 = 2;
  *v4 = v5;
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_20B520158(v4, &unk_27C76D250);
}

uint64_t sub_20BA91E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BA91E90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BA91EF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NavigationRequest() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_20BA91030(v5, v1 + v4, v7, v8, a1);
}

uint64_t sub_20BA91FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeAcknowledgementInterceptor.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_20BA92060(uint64_t a1)
{
  result = sub_20BA92088();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20BA92088()
{
  result = qword_27C769AC0;
  if (!qword_27C769AC0)
  {
    type metadata accessor for WelcomeAcknowledgementInterceptor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769AC0);
  }

  return result;
}

void sub_20BA92108()
{
  type metadata accessor for WelcomeAcknowledgementInterceptor.State(319);
  if (v0 <= 0x3F)
  {
    sub_20B52432C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20BA92240()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 56))(0, ObjectType, v1);
}

uint64_t sub_20BA9229C()
{
  v1 = *(type metadata accessor for NavigationRequest() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_20BA8E9CC(v2, v3, v4, v5);
}

unint64_t sub_20BA92304()
{
  result = qword_27C769AE8;
  if (!qword_27C769AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769AE8);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &qword_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v2;
    v27 = (v2 + 16) & ~v2;
    v28 = v0;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v0 = v28;
    v3 = v27;
    v2 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_77Tm()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &qword_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v36 = v11[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v5 + v36, 1, v37))
        {
          (*(v38 + 8))(v5 + v36, v37);
        }

        v39 = v11[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v5 + v39, 1, v40))
        {
          (*(v41 + 8))(v5 + v39, v40);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v42 = v11[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v5 + v42, 1, v43))
        {
          (*(v44 + 8))(v5 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v46 = v0;
    v27 = v2;
    v28 = (v2 + 24) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v46;
  }

  v35 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_20B583F4C(*(v0 + v35), *(v0 + v35 + 8), *(v0 + v35 + 16));

  return MEMORY[0x2821FE8E8](v0, v35 + 17, v2 | 7);
}