uint64_t sub_20BC5FF7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_20BC5FFE8()
{
  result = qword_27C76C9E8;
  if (!qword_27C76C9E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C76C9E8);
  }

  return result;
}

void *sub_20BC60034(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_artworkView;
  v12 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_platterView;
  v14 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v13] = v14;
  v15 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_titleLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setAdjustsFontForContentSizeCategory_];
  [v16 setLineBreakMode_];
  [v16 setNumberOfLines_];
  *&v4[v15] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_subtitleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsFontForContentSizeCategory_];
  [v18 setLineBreakMode_];
  [v18 setNumberOfLines_];
  *&v4[v17] = v18;
  v19 = objc_opt_self();
  v20 = *MEMORY[0x277D76918];
  v225 = v19;
  v226 = [v19 preferredFontForTextStyle_];
  v228 = objc_opt_self();
  v224 = [v228 secondaryLabelColor];
  v21 = *MEMORY[0x277D743F8];
  v22 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:0];
  v23 = [v22 fontDescriptorWithSymbolicTraits_];
  if (v23)
  {
    v24 = v23;

    v22 = v24;
  }

  v25 = &v4[OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_styleProvider];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  v223 = xmmword_20C14F980;
  *(inited + 16) = xmmword_20C14F980;
  v27 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v28 = swift_initStackObject();
  v29 = MEMORY[0x277D74430];
  *(v28 + 16) = v223;
  v30 = *v29;
  *(v28 + 32) = *v29;
  *(v28 + 40) = v21;
  v31 = v27;
  v32 = v30;
  v33 = sub_20B6B134C(v28);
  swift_setDeallocating();
  sub_20B520158(v28 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v33;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v34 = sub_20C13C744();

  v35 = [v22 fontDescriptorByAddingAttributes_];

  v36 = [v225 fontWithDescriptor:v35 size:0.0];
  v37 = [v228 whiteColor];
  v38 = v226;
  *v25 = 0x4024000000000000;
  *(v25 + 1) = v38;
  *(v25 + 2) = v224;
  *(v25 + 3) = v36;
  *(v25 + 4) = v37;
  *(v25 + 40) = xmmword_20C174E90;
  *(v25 + 56) = xmmword_20C174EA0;
  *(v25 + 72) = xmmword_20C150E50;
  *(v25 + 88) = xmmword_20C150E50;
  *(v25 + 13) = 0x4071800000000000;
  v39 = type metadata accessor for ActionButtonTemplateBuilder();
  v40 = swift_allocObject();
  type metadata accessor for ActionButtonTemplateParser();
  v41 = swift_allocObject();
  v42 = qword_27C760AA0;

  v226 = v41;

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
  v236[3] = v39;
  v236[4] = &off_2822EEB00;
  v236[0] = v40;
  v234 = &type metadata for ActionButtonViewFactory;
  v235 = &off_2822B2B20;
  v45 = type metadata accessor for ActionButtonContainerView();
  v46 = objc_allocWithZone(v45);
  v222 = v40;
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v236, v39);
  v225 = &v215;
  v48 = MEMORY[0x28223BE20](v47);
  v50 = (&v215 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50, v48);
  __swift_mutable_project_boxed_opaque_existential_1(v233, v234);
  v52 = *v50;
  v232[3] = v39;
  v232[4] = &off_2822EEB00;
  v231[4] = &off_2822B2B20;
  v232[0] = v52;
  v231[3] = &type metadata for ActionButtonViewFactory;
  *&v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_buttonActions] = MEMORY[0x277D84F90];
  *&v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_rootStackView] = 0;
  sub_20B51CC64(v232, &v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateBuilder]);
  v53 = &v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateParser];
  *v53 = v226;
  *(v53 + 1) = &off_28229AE20;
  sub_20B51CC64(v231, &v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_viewFactory]);
  *&v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interGroupSpacing] = v43;
  *&v46[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interItemSpacing] = v44;
  v230.receiver = v46;
  v230.super_class = v45;
  v54 = objc_msgSendSuper2(&v230, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_destroy_boxed_opaque_existential_1(v231);
  __swift_destroy_boxed_opaque_existential_1(v232);
  v55 = v54;
  __swift_destroy_boxed_opaque_existential_1(v233);
  __swift_destroy_boxed_opaque_existential_1(v236);
  [v55 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v4[OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_actionButtonContainerView] = v55;
  v229.receiver = v4;
  v229.super_class = ObjectType;
  v56 = objc_msgSendSuper2(&v229, sel_initWithFrame_, a1, a2, a3, a4);
  v57 = *&v56[OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_platterView];
  v58 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_platterView;
  v59 = v56;
  v60 = v57;
  v61 = [v59 traitCollection];
  v62 = [v228 systemBackgroundColor];
  v63 = sub_20C13D3B4();
  v64 = [v62 resolvedColorWithTraitCollection_];

  [v60 setBackgroundColor_];
  v65 = [*&v56[v58] layer];
  [v65 setCornerRadius_];

  [*&v56[v58] setClipsToBounds_];
  v66 = [v59 contentView];
  v67 = *&v56[v58];
  v68 = v58;
  v218 = v58;
  v219 = v56;
  [v66 addSubview_];

  v69 = *&v59[OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_artworkView];
  v70 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_artworkView;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v72 = objc_opt_self();
  v73 = v69;
  v74 = [v72 bundleForClass_];
  v75 = sub_20C13C914();
  v76 = [objc_opt_self() imageNamed:v75 inBundle:v74 compatibleWithTraitCollection:0];

  [v73 setImage_];
  v220 = v70;
  [*&v59[v70] setContentMode_];
  [*&v59[v70] setClipsToBounds_];
  [*&v56[v68] addSubview_];
  v77 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v77 setTranslatesAutoresizingMaskIntoConstraints_];
  [v77 setAlignment_];
  [v77 setAxis_];
  v78 = &v59[OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_styleProvider];
  [v77 setSpacing_];
  v79 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_titleLabel;
  [*&v59[OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_titleLabel] setFont_];
  [*&v59[v79] setTextColor_];
  [v77 addArrangedSubview_];
  v80 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_subtitleLabel;
  [*&v59[OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_subtitleLabel] setFont_];
  v81 = *&v59[v80];
  v82 = *(v78 + 2);
  ObjectType = v78;
  [v81 setTextColor_];
  v217 = v59;
  v83 = *&v59[v80];
  v224 = v77;
  [v77 addArrangedSubview_];
  v84 = v59;
  v85 = [v84 contentView];
  [v85 addSubview_];

  v86 = *&v84[OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_actionButtonContainerView];
  v87 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_actionButtonContainerView;
  v225 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_actionButtonContainerView;
  *(v86 + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8) = &off_2822D9338;
  swift_unknownObjectWeakAssign();

  v88 = [v84 contentView];
  [v88 &selRef_onDisplayDisconnected];

  v89 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v228 = v89;
  v90 = v84;
  v91 = [v84 &selRef_setMaximumFractionDigits_];
  [v91 addLayoutGuide_];

  v92 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *&v223 = v92;
  v93 = [v84 &selRef_setMaximumFractionDigits_];
  [v93 addLayoutGuide_];

  v221 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_20C174EB0;
  v95 = [v84 &selRef_setMaximumFractionDigits_];
  v96 = [v95 heightAnchor];

  v97 = [v96 constraintGreaterThanOrEqualToConstant_];
  *(v94 + 32) = v97;
  v99 = v218;
  v98 = v219;
  v100 = [*&v219[v218] leadingAnchor];
  v101 = [v90 &selRef_setMaximumFractionDigits_];
  v102 = [v101 leadingAnchor];

  v103 = [v100 constraintEqualToAnchor_];
  *(v94 + 40) = v103;
  v104 = [*&v98[v99] trailingAnchor];
  v105 = [v90 contentView];
  v106 = [v105 trailingAnchor];

  v107 = [v104 &selRef:v106 alertControllerReleasedDictationButton:? + 5];
  *(v94 + 48) = v107;
  v108 = [*&v98[v99] topAnchor];
  v109 = [v90 contentView];
  v110 = [v109 &selRef_setLineBreakMode_];

  v111 = [v108 &selRef:v110 alertControllerReleasedDictationButton:? + 5];
  *(v94 + 56) = v111;
  v112 = [*&v98[v99] bottomAnchor];
  v113 = [v90 contentView];
  v114 = [v113 &selRef_secondaryLabel + 5];

  v115 = [v112 &selRef:v114 alertControllerReleasedDictationButton:? + 5];
  *(v94 + 64) = v115;
  v116 = v220;
  v117 = v217;
  v118 = [*&v217[v220] trailingAnchor];
  v119 = [v228 leadingAnchor];
  v120 = [v118 &selRef:v119 alertControllerReleasedDictationButton:? + 5];

  *(v94 + 72) = v120;
  v121 = [*&v117[v116] topAnchor];
  v122 = [v90 contentView];
  v123 = [v122 topAnchor];

  v124 = [v121 constraintLessThanOrEqualToAnchor_];
  *(v94 + 80) = v124;
  v125 = [*&v117[v116] &selRef_secondaryLabel + 5];
  v126 = [v90 contentView];
  v127 = [v126 &selRef_secondaryLabel + 5];

  v128 = [v125 constraintGreaterThanOrEqualToAnchor_];
  *(v94 + 88) = v128;
  v129 = v94;
  v130 = [*&v117[v116] widthAnchor];
  v131 = [v90 contentView];
  v132 = [v131 heightAnchor];

  v133 = ObjectType;
  v134 = [v130 constraintEqualToAnchor:v132 multiplier:ObjectType[5]];

  *(v94 + 96) = v134;
  v135 = [*&v117[v116] leadingAnchor];
  v136 = [v90 contentView];
  v137 = [v136 leadingAnchor];

  v138 = [v135 constraintLessThanOrEqualToAnchor_];
  *(v94 + 104) = v138;
  v139 = [*&v117[v116] centerYAnchor];
  v140 = [v90 contentView];
  v141 = [v140 &selRef_setNumberOfTapsRequired_];

  v142 = [v139 constraintEqualToAnchor_];
  *(v94 + 112) = v142;
  v143 = v228;
  v144 = [v228 widthAnchor];
  v145 = [v90 contentView];
  v146 = [v145 widthAnchor];

  v147 = [v144 constraintEqualToAnchor:v146 multiplier:v133[6]];
  *(v94 + 120) = v147;
  v148 = [v143 trailingAnchor];
  v149 = [v90 contentView];
  v150 = [v149 trailingAnchor];

  v151 = [v148 constraintEqualToAnchor_];
  *(v94 + 128) = v151;
  v152 = [v143 topAnchor];
  v216 = v90;
  v153 = [v90 contentView];
  v154 = [v153 topAnchor];

  v155 = [v152 &selRef:v154 alertControllerReleasedDictationButton:? + 5];
  *(v94 + 136) = v155;
  v156 = [v143 bottomAnchor];
  v157 = [v90 &selRef_setMaximumFractionDigits_];
  v158 = [v157 bottomAnchor];

  v159 = [v156 &selRef:v158 alertControllerReleasedDictationButton:? + 5];
  *(v94 + 144) = v159;
  v160 = v224;
  v161 = [v224 leadingAnchor];
  v162 = v223;
  v163 = [v223 leadingAnchor];
  v164 = ObjectType;
  v165 = [v161 constraintEqualToAnchor:v163 constant:ObjectType[10]];

  v129[19] = v165;
  v166 = [v160 trailingAnchor];
  v167 = [v162 trailingAnchor];
  v168 = [v166 constraintEqualToAnchor:v167 constant:-v164[12]];

  v129[20] = v168;
  v169 = [v160 topAnchor];
  v170 = v216;
  v171 = [v216 contentView];
  v172 = [v171 topAnchor];

  v173 = [v169 constraintGreaterThanOrEqualToAnchor:v172 constant:v164[9]];
  v129[21] = v173;
  v174 = v225;
  v175 = v170;
  v176 = [*&v225[v170] leadingAnchor];
  v177 = [v160 leadingAnchor];
  v178 = [v176 constraintEqualToAnchor_];

  v129[22] = v178;
  v179 = *&v174[v170];
  v180 = v174;
  v181 = [v179 trailingAnchor];
  v182 = [v160 trailingAnchor];
  v183 = [v181 constraintEqualToAnchor_];

  v184 = v129;
  v129[23] = v183;
  v185 = v180;
  v186 = [*&v180[v175] topAnchor];
  v187 = [v160 bottomAnchor];
  v188 = ObjectType;
  v189 = [v186 constraintEqualToAnchor:v187 constant:ObjectType[8]];

  v129[24] = v189;
  v190 = [*&v185[v175] bottomAnchor];
  v191 = v175;
  v192 = [v175 contentView];

  v193 = [v192 bottomAnchor];
  v194 = [v190 constraintLessThanOrEqualToAnchor:v193 constant:-v188[11]];

  v129[25] = v194;
  v195 = v223;
  v196 = [v223 centerYAnchor];
  v197 = v228;
  v198 = [v228 centerYAnchor];
  v199 = [v196 constraintEqualToAnchor_];

  v184[26] = v199;
  v200 = [v195 centerXAnchor];
  v201 = [v197 centerXAnchor];
  v202 = [v200 constraintEqualToAnchor_];

  v184[27] = v202;
  v203 = [v195 widthAnchor];
  v204 = [v197 widthAnchor];
  v205 = [v203 constraintEqualToAnchor:v204 multiplier:v188[7]];

  v184[28] = v205;
  v206 = [v195 topAnchor];
  v207 = v224;
  v208 = [v224 topAnchor];

  v209 = [v206 constraintEqualToAnchor_];
  v184[29] = v209;
  v210 = [v195 bottomAnchor];
  v211 = [*&v225[v191] bottomAnchor];
  v212 = [v210 constraintEqualToAnchor_];

  v184[30] = v212;
  sub_20B5E29D0();
  v213 = sub_20C13CC54();

  [v221 activateConstraints_];

  return v191;
}

uint64_t type metadata accessor for TabletWorkoutPlanBannerCell()
{
  result = qword_27C76CA20;
  if (!qword_27C76CA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BC61BD8()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BC61C94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_20BC61CDC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_20BC61D48(uint64_t a1)
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

uint64_t sub_20BC61F48(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BC61F94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20BC61FFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BC62060(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767B00);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x45)
  {
    v6 = swift_projectBox();
    sub_20B52F9E8(v6, v5, &qword_27C767B00);
    v7 = *(v3 + 64);

    v8 = *&v5[*(v3 + 96)];
    sub_20B520158(&v5[v7], &unk_27C766680);
    v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_titleLabel);
    v10 = sub_20C13C914();

    [v9 setText_];

    v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_subtitleLabel);
    v12 = sub_20C13C914();

    [v11 setText_];

    sub_20BC96528(v8, 1, 1, 0, 0, 1, 0, 1);
  }
}

void sub_20BC6220C()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_artworkView;
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_platterView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_titleLabel;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAdjustsFontForContentSizeCategory_];
  [v8 setLineBreakMode_];
  [v8 setNumberOfLines_];
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_subtitleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAdjustsFontForContentSizeCategory_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];
  *(v0 + v9) = v10;
  v11 = objc_opt_self();
  v31 = [v11 preferredFontForTextStyle_];
  v12 = objc_opt_self();
  v30 = [v12 secondaryLabelColor];
  v13 = *MEMORY[0x277D743F8];
  v14 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:0];
  v15 = [v14 fontDescriptorWithSymbolicTraits_];
  if (v15)
  {
    v16 = v15;

    v14 = v16;
  }

  v17 = v0 + OBJC_IVAR____TtC9SeymourUI27TabletWorkoutPlanBannerCell_styleProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v19 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v20 = swift_initStackObject();
  v21 = MEMORY[0x277D74430];
  *(v20 + 16) = xmmword_20C14F980;
  v22 = *v21;
  *(v20 + 32) = *v21;
  *(v20 + 40) = v13;
  v23 = v19;
  v24 = v22;
  v25 = sub_20B6B134C(v20);
  swift_setDeallocating();
  sub_20B520158(v20 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v25;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v26 = sub_20C13C744();

  v27 = [v14 fontDescriptorByAddingAttributes_];

  v28 = [v11 fontWithDescriptor:v27 size:0.0];
  v29 = [v12 whiteColor];
  *v17 = 0x4024000000000000;
  *(v17 + 8) = v31;
  *(v17 + 16) = v30;
  *(v17 + 24) = v28;
  *(v17 + 32) = v29;
  *(v17 + 40) = xmmword_20C174E90;
  *(v17 + 56) = xmmword_20C174EA0;
  *(v17 + 72) = xmmword_20C150E50;
  *(v17 + 88) = xmmword_20C150E50;
  *(v17 + 104) = 0x4071800000000000;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BC6271C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD7090]) init];
  v1 = [v0 attributes];
  v2 = [v1 objectAtIndexedSubscript_];

  if (!v2)
  {
    goto LABEL_21;
  }

  [v2 setFormat_];

  v3 = [v0 attributes];
  v4 = [v3 objectAtIndexedSubscript_];

  if (!v4)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v4 setOffset_];

  v5 = [v0 attributes];
  v6 = [v5 objectAtIndexedSubscript_];

  if (!v6)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v6 setBufferIndex_];

  v7 = [v0 attributes];
  v8 = [v7 objectAtIndexedSubscript_];

  if (!v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v8 setFormat_];

  v9 = [v0 attributes];
  v10 = [v9 objectAtIndexedSubscript_];

  if (!v10)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v10 setOffset_];

  v11 = [v0 attributes];
  v12 = [v11 objectAtIndexedSubscript_];

  if (!v12)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v12 setBufferIndex_];

  v13 = [v0 attributes];
  v14 = [v13 objectAtIndexedSubscript_];

  if (!v14)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v14 setFormat_];

  v15 = [v0 attributes];
  v16 = [v15 objectAtIndexedSubscript_];

  if (!v16)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = [v0 attributes];
  v18 = [v17 objectAtIndexedSubscript_];

  if (!v18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v19 = [v18 offset];

  if (__OFADD__(v19, 16))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v16 setOffset_];

  v20 = [v0 attributes];
  v21 = [v20 objectAtIndexedSubscript_];

  if (!v21)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v21 setBufferIndex_];

  v22 = [v0 attributes];
  v23 = [v22 objectAtIndexedSubscript_];

  if (!v23)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v23 setFormat_];

  v24 = [v0 attributes];
  v25 = [v24 objectAtIndexedSubscript_];

  if (!v25)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v26 = [v0 attributes];
  v27 = [v26 objectAtIndexedSubscript_];

  if (!v27)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v28 = [v27 offset];

  if (__OFADD__(v28, 16))
  {
    goto LABEL_20;
  }

  [v25 setOffset_];

  v29 = [v0 attributes];
  v30 = [v29 objectAtIndexedSubscript_];

  if (!v30)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v30 setBufferIndex_];

  v31 = [v0 layouts];
  v32 = [v31 objectAtIndexedSubscript_];

  if (v32)
  {
    [v32 setStride_];

    return;
  }

LABEL_35:
  __break(1u);
}

double sub_20BC62C54()
{
  result = 0.00781250557;
  xmmword_27C79BDF0 = xmmword_20C175000;
  unk_27C79BE00 = xmmword_20C175000;
  qword_27C79BE10 = 0;
  xmmword_27C79BE20 = xmmword_20C175000;
  return result;
}

double sub_20BC62C74()
{
  result = -0.00781250185;
  xmmword_27C79BE30 = xmmword_20C175010;
  unk_27C79BE40 = xmmword_20C175010;
  __asm { FMOV            V1.2S, #1.0 }

  qword_27C79BE50 = _D1;
  xmmword_27C79BE60 = xmmword_20C175010;
  return result;
}

double sub_20BC62C98()
{
  result = -0.00781250557;
  xmmword_27C79BE70 = xmmword_20C175020;
  unk_27C79BE80 = xmmword_20C175020;
  qword_27C79BE90 = 0x3F80000000000000;
  xmmword_27C79BEA0 = xmmword_20C175020;
  return result;
}

double sub_20BC62CC0()
{
  result = 0.00781250185;
  xmmword_27C79BEB0 = xmmword_20C175030;
  unk_27C79BEC0 = xmmword_20C175030;
  qword_27C79BED0 = 1065353216;
  xmmword_27C79BEE0 = xmmword_20C175030;
  return result;
}

double sub_20BC62CE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BED0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20C152DF0;
  if (qword_27C760A58 != -1)
  {
    v14 = v0;
    swift_once();
    v0 = v14;
  }

  v1 = unk_27C79BE80;
  v2 = qword_27C79BE90;
  v3 = xmmword_27C79BEA0;
  *(v0 + 32) = xmmword_27C79BE70;
  *(v0 + 48) = v1;
  *(v0 + 64) = v2;
  *(v0 + 80) = v3;
  if (qword_27C760A48 != -1)
  {
    v15 = v0;
    swift_once();
    v0 = v15;
  }

  v4 = unk_27C79BE00;
  v5 = qword_27C79BE10;
  v6 = xmmword_27C79BE20;
  *(v0 + 96) = xmmword_27C79BDF0;
  *(v0 + 112) = v4;
  *(v0 + 128) = v5;
  *(v0 + 144) = v6;
  if (qword_27C760A60 != -1)
  {
    v16 = v0;
    swift_once();
    v0 = v16;
  }

  v7 = unk_27C79BEC0;
  v8 = qword_27C79BED0;
  v9 = xmmword_27C79BEE0;
  *(v0 + 160) = xmmword_27C79BEB0;
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 208) = v9;
  if (qword_27C760A50 != -1)
  {
    v17 = v0;
    swift_once();
    v0 = v17;
  }

  result = *&xmmword_27C79BE30;
  v11 = unk_27C79BE40;
  v12 = qword_27C79BE50;
  v13 = xmmword_27C79BE60;
  *(v0 + 224) = xmmword_27C79BE30;
  *(v0 + 240) = v11;
  *(v0 + 256) = v12;
  *(v0 + 272) = v13;
  qword_27C79BEF0 = v0;
  return result;
}

void *sub_20BC62EA8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v39 = sub_20C132C14();
  v6 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v32 = &v30 - v9;
  v35 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20C13DAE4();
    sub_20B51C88C(0, &qword_27C76AF80);
    sub_20B7187E0(&qword_27C770710, &qword_27C76AF80);
    result = sub_20C13CFF4();
    a1 = v41;
    v11 = v42;
    v12 = v43;
    v13 = v44;
    v14 = v45;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v11 = a1 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a1 + 56);

    v13 = 0;
  }

  v34 = v12;
  v37 = (v6 + 48);
  v38 = (v6 + 56);
  v30 = v6;
  v31 = (v6 + 32);
  v36 = MEMORY[0x277D84F90];
  while (a1 < 0)
  {
    v21 = sub_20C13DB64();
    if (!v21 || (v40 = v21, sub_20B51C88C(0, &qword_27C76AF80), swift_dynamicCast(), (v20 = v46) == 0))
    {
LABEL_24:
      sub_20B583EDC();
      return v36;
    }

LABEL_17:
    v22 = [v20 URL];
    sub_20C132B94();

    v23 = v39;
    (*v38)(v5, 0, 1, v39);

    if ((*v37)(v5, 1, v23) == 1)
    {
      result = sub_20B9E801C(v5);
    }

    else
    {
      v24 = *v31;
      v25 = v39;
      (*v31)(v32, v5, v39);
      v24(v33, v32, v25);
      v26 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_20BC08108(0, v36[2] + 1, 1, v36);
      }

      v28 = v36[2];
      v27 = v36[3];
      if (v28 >= v27 >> 1)
      {
        v36 = sub_20BC08108(v27 > 1, v28 + 1, 1, v36);
      }

      v29 = v36;
      v36[2] = v28 + 1;
      result = (v26)(v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v28, v33, v39);
    }
  }

  v18 = v13;
  v19 = v14;
  if (v14)
  {
LABEL_13:
    v14 = (v19 - 1) & v19;
    v20 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v13 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v13 >= ((v12 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v19 = *(v11 + 8 * v13);
    ++v18;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_20BC63304(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v41 = sub_20C132C14();
  v6 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v34 = &v32 - v9;
  v37 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20C13DAE4();
    sub_20B51C88C(0, &qword_27C76AF78);
    sub_20B7187E0(&qword_27C76CA30, &qword_27C76AF78);
    result = sub_20C13CFF4();
    a1 = v43;
    v11 = v44;
    v12 = v45;
    v13 = v46;
    v14 = v47;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v11 = a1 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a1 + 56);

    v13 = 0;
  }

  v36 = v12;
  v39 = (v6 + 48);
  v40 = (v6 + 56);
  v32 = v6;
  v33 = (v6 + 32);
  v38 = MEMORY[0x277D84F90];
  while (a1 < 0)
  {
    v21 = sub_20C13DB64();
    if (!v21 || (v42 = v21, sub_20B51C88C(0, &qword_27C76AF78), swift_dynamicCast(), (v20 = v48) == 0))
    {
LABEL_27:
      sub_20B583EDC();
      return v38;
    }

LABEL_17:
    v22 = [v20 referrerURL];
    if (v22)
    {
      v23 = v22;
      sub_20C132B94();

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = v41;
    (*v40)(v5, v24, 1, v41);

    if ((*v39)(v5, 1, v25) == 1)
    {
      result = sub_20B9E801C(v5);
    }

    else
    {
      v26 = *v33;
      v27 = v41;
      (*v33)(v34, v5, v41);
      v26(v35, v34, v27);
      v28 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_20BC08108(0, v38[2] + 1, 1, v38);
      }

      v30 = v38[2];
      v29 = v38[3];
      if (v30 >= v29 >> 1)
      {
        v38 = sub_20BC08108(v29 > 1, v30 + 1, 1, v38);
      }

      v31 = v38;
      v38[2] = v30 + 1;
      result = (v28)(v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v30, v35, v41);
    }
  }

  v18 = v13;
  v19 = v14;
  if (v14)
  {
LABEL_13:
    v14 = (v19 - 1) & v19;
    v20 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v13 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v13 >= ((v12 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v19 = *(v11 + 8 * v13);
    ++v18;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id URL.remoteDisplayUserActivity.getter()
{
  v1 = sub_20C132C14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132AE4();
  if (v9 && (, sub_20C132B04(), (v10 & 1) == 0))
  {
    v22 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v23 = sub_20C13C914();
    v24 = [v22 initWithActivityType_];

    v25 = sub_20C13C914();
    [v24 setTargetContentIdentifier_];

    v26 = sub_20C132B64();
    [v24 setReferrerURL_];

    return v24;
  }

  else
  {
    sub_20C13B534();
    (*(v2 + 16))(v4, v0, v1);
    v11 = sub_20C13BB74();
    v12 = sub_20C13D1D4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v29 = v5;
      v14 = v13;
      v15 = swift_slowAlloc();
      v28 = v6;
      v16 = v15;
      v30 = v15;
      *v14 = 136446210;
      sub_20B9080CC();
      v17 = sub_20C13DFA4();
      v19 = v18;
      (*(v2 + 8))(v4, v1);
      v20 = sub_20B51E694(v17, v19, &v30);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_20B517000, v11, v12, "%{public}s didn't include a session identifier", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x20F2F6A40](v16, -1, -1);
      MEMORY[0x20F2F6A40](v14, -1, -1);

      (*(v28 + 8))(v8, v29);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
      (*(v6 + 8))(v8, v5);
    }

    return 0;
  }
}

uint64_t NSUserActivity.isRemoteDisplayActivity.getter()
{
  v1 = [v0 activityType];
  v2 = sub_20C13C954();
  v4 = v3;

  if (v2 == 0xD00000000000001FLL && 0x800000020C1AD8D0 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_20C13DFF4();
  }

  return v6 & 1;
}

id NSUserActivity.sessionIdentifier.getter()
{
  v1 = [v0 activityType];
  v2 = sub_20C13C954();
  v4 = v3;

  if (v2 == 0xD00000000000001FLL && 0x800000020C1AD8D0 == v4)
  {
  }

  else
  {
    v6 = sub_20C13DFF4();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  result = [v0 targetContentIdentifier];
  if (result)
  {
    v8 = result;
    v9 = sub_20C13C954();

    return v9;
  }

  return result;
}

unint64_t Collection<>.remoteDisplayUserActivity.getter()
{
  sub_20B51C88C(0, &qword_27C76AF78);
  result = sub_20C13CC04();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v3 = result;
  v4 = sub_20C13DB34();
  result = v3;
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x20F2F5430](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
LABEL_6:
    v2 = v1;

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_20BC63D88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_20C132C14();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*a1 URL];
  sub_20C132B94();

  v10 = URL.remoteDisplayUserActivity.getter();
  result = (*(v5 + 8))(v8, v4);
  *a2 = v10;
  return result;
}

uint64_t sub_20BC63EE8(id *a1)
{
  v1 = [*a1 activityType];
  v2 = sub_20C13C954();
  v4 = v3;

  if (v2 == 0xD00000000000001FLL && 0x800000020C1AD8D0 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_20C13DFF4();
  }

  return v6 & 1;
}

uint64_t UISceneConnectionOptions.sessionURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v28[-v8];
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v28[-v12];
  v14 = [v2 URLContexts];
  sub_20B51C88C(0, &qword_27C76AF80);
  sub_20B7187E0(&qword_27C770710, &qword_27C76AF80);
  v15 = sub_20C13CF74();

  v16 = sub_20BC62EA8(v15);

  if (v16[2])
  {
    v17 = sub_20C132C14();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v13, v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v17);

    (*(v18 + 56))(v13, 0, 1, v17);
  }

  else
  {

    v19 = sub_20C132C14();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  }

  v20 = [v2 userActivities];
  sub_20B51C88C(0, &qword_27C76AF78);
  sub_20B7187E0(&qword_27C76CA30, &qword_27C76AF78);
  v21 = sub_20C13CF74();

  v22 = sub_20BC63304(v21);

  if (v22[2])
  {
    v23 = sub_20C132C14();
    v24 = *(v23 - 8);
    (*(v24 + 16))(v9, v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v23);

    (*(v24 + 56))(v9, 0, 1, v23);
  }

  else
  {

    v23 = sub_20C132C14();
    (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  }

  sub_20B6A69B4(v13, v6);
  sub_20C132C14();
  v25 = *(v23 - 8);
  v26 = *(v25 + 48);
  if (v26(v6, 1, v23) == 1)
  {
    sub_20B6A69B4(v9, a1);
    result = v26(v6, 1, v23);
    if (result != 1)
    {
      return sub_20B9E801C(v6);
    }
  }

  else
  {
    sub_20B9E801C(v9);
    (*(v25 + 32))(a1, v6, v23);
    return (*(v25 + 56))(a1, 0, 1, v23);
  }

  return result;
}

uint64_t WorkoutPlanScheduleViewController.resignActiveObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id WorkoutPlanScheduleViewController.__allocating_init(dependencies:selectedDayOffset:pageContext:pageNavigator:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v12 = *(a5 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  v14 = sub_20BC67B50(a1, a2, a3, a4, v13, v5, v11, v12);

  __swift_destroy_boxed_opaque_existential_1(a5);
  return v14;
}

id WorkoutPlanScheduleViewController.init(dependencies:selectedDayOffset:pageContext:pageNavigator:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v12 = *(a5 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_20BC676BC(a1, a2, a3, a4, v16, v5, v11, v12);

  __swift_destroy_boxed_opaque_existential_1(a5);
  return v18;
}

Swift::Void __swiftcall WorkoutPlanScheduleViewController.viewDidLoad()()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  sub_20BC64964();
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_dataProvider];
  v2 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_page;
  sub_20BCCF690();
  sub_20BC64D0C();
  [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_collectionView) setAlwaysBounceVertical_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C151490;
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_navigationTitleView];
  v6 = [v5 widthAnchor];
  v7 = [v6 constraintGreaterThanOrEqualToConstant_];

  *(v4 + 32) = v7;
  v8 = [v5 heightAnchor];
  v9 = [v8 constraintGreaterThanOrEqualToConstant_];

  *(v4 + 40) = v9;
  sub_20B51C88C(0, &qword_281100500);
  v10 = sub_20C13CC54();

  [v3 activateConstraints_];
}

void sub_20BC64964()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_dataProvider];
  v2 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_page;
  *(*(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_page) + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_delegate + 8) = &off_2822D9590;
  swift_unknownObjectWeakAssign();
  [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_collectionView) setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = *(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_collectionView);
  [v4 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20C14FE90;
  v7 = [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_collectionView) leadingAnchor];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 leadingAnchor];

  v11 = [v7 constraintEqualToAnchor_];
  *(v6 + 32) = v11;
  v12 = [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_collectionView) trailingAnchor];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [v13 trailingAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v6 + 40) = v16;
  v17 = [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_collectionView) topAnchor];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = v18;
  v20 = [v18 topAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v6 + 48) = v21;
  v22 = [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_collectionView) bottomAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = objc_opt_self();
  v26 = [v24 bottomAnchor];

  v27 = [v22 constraintEqualToAnchor_];
  *(v6 + 56) = v27;
  sub_20B51C88C(0, &qword_281100500);
  v28 = sub_20C13CC54();

  [v25 activateConstraints_];
}

void sub_20BC64D0C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode_];

  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    [v5 setTintColor_];
  }

  v7 = [v1 navigationController];
  v8 = MEMORY[0x277D740C0];
  if (v7)
  {
    v9 = v7;
    v10 = [v7 navigationBar];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    v12 = *v8;
    *(inited + 32) = *v8;
    v13 = objc_opt_self();
    v14 = v12;
    v15 = [v13 whiteColor];
    *(inited + 64) = sub_20B51C88C(0, &qword_27C762070);
    *(inited + 40) = v15;
    sub_20B6B1650(inited);
    swift_setDeallocating();
    v8 = MEMORY[0x277D740C0];
    sub_20B520158(inited + 32, &qword_27C763978);
    type metadata accessor for Key(0);
    sub_20BC689D0(&qword_27C761D80, 255, type metadata accessor for Key);
    v16 = sub_20C13C744();

    [v10 setTitleTextAttributes_];
  }

  v17 = [v1 navigationController];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 navigationBar];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_20C14F980;
    v21 = *v8;
    *(v20 + 32) = *v8;
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 whiteColor];
    *(v20 + 64) = sub_20B51C88C(0, &qword_27C762070);
    *(v20 + 40) = v24;
    sub_20B6B1650(v20);
    swift_setDeallocating();
    sub_20B520158(v20 + 32, &qword_27C763978);
    type metadata accessor for Key(0);
    sub_20BC689D0(&qword_27C761D80, 255, type metadata accessor for Key);
    v25 = sub_20C13C744();

    [v19 setLargeTitleTextAttributes_];
  }

  sub_20B51C88C(0, &qword_27C770510);
  v26 = sub_20C13C914();
  v27 = [objc_opt_self() systemImageNamed_];

  sub_20BC664C8(&unk_28228E048);
  v28 = sub_20C13D264();
  v29 = [v1 navigationController];
  v30 = 0x277D75000uLL;
  if (v29)
  {
    v31 = v29;
    v32 = swift_getObjectType();
    v33 = swift_conformsToProtocol2();
    if (v33)
    {
      sub_20BEBFEE4(v1, *&v1[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_dataProvider], &off_2822DD928, v32, v33, 86.0);
    }
  }

  v34 = [v1 navigationItem];
  [v34 setTitleView_];

  v35 = [v1 navigationController];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 navigationBar];

    v38 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    [v37 setTintColor_];
  }

  v39 = [v1 navigationItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_20C14F580;
  *(v40 + 32) = v28;
  v41 = v28;
  v42 = sub_20C13CC54();

  [v39 setRightBarButtonItems_];

  v68 = ObjectType;
  v67[0] = v1;
  v43 = v1;
  v44 = sub_20C13C914();
  v45 = ObjectType;
  if (ObjectType)
  {
    v46 = __swift_project_boxed_opaque_existential_1(v67, v68);
    v47 = *(ObjectType - 8);
    v48 = MEMORY[0x28223BE20](v46);
    v50 = v67 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0) + 136;
    (*(v47 + 16))(v50, v48);
    v51 = sub_20C13DFD4();
    (*(v47 + 8))(v50, v45);
    v30 = 0x277D75000;
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    v51 = 0;
  }

  v52 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v44 style:0 target:v51 action:sel_backButtonPressed];

  swift_unknownObjectRelease();
  v53 = [objc_allocWithZone(*(v30 + 840)) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v52 setTintColor_];

  v54 = [v43 navigationController];
  if (!v54)
  {
    goto LABEL_25;
  }

  v55 = v54;
  v56 = [v54 viewControllers];

  sub_20B51C88C(0, &qword_281100550);
  v57 = sub_20C13CC74();

  if (v57 >> 62)
  {
    if (sub_20C13DB34())
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:

LABEL_25:
    v59 = 0;
    goto LABEL_26;
  }

LABEL_19:
  if ((v57 & 0xC000000000000001) != 0)
  {
    v58 = MEMORY[0x20F2F5430](0, v57);
  }

  else
  {
    if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v58 = *(v57 + 32);
  }

  v59 = v58;

  v60 = [v59 navigationItem];
  [v60 setBackBarButtonItem_];

LABEL_26:
  v61 = [v43 navigationController];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 navigationBar];

    v64 = [v63 topItem];
    if (v64)
    {
      v65 = v52;
      [v64 setBackBarButtonItem_];
    }
  }
}

Swift::Void __swiftcall WorkoutPlanScheduleViewController.viewDidLayoutSubviews()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLayoutSubviews);
  v1 = *(*&v0[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_page);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_impressionsTracker), *(v1 + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_impressionsTracker + 24));
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_collectionView);
  swift_unknownObjectRetain();
  [v2 bounds];
  sub_20B9D8614(v3, v4, v5, v6);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall WorkoutPlanScheduleViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  sub_20BC64D0C();
  sub_20B9AD530();
}

Swift::Void __swiftcall WorkoutPlanScheduleViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.receiver = v2;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, sel_viewWillDisappear_, a1, v7);
  v10 = [v2 navigationController];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 viewControllers];

  sub_20B51C88C(0, &qword_281100550);
  v13 = sub_20C13CC74();

  if (v13 >> 62)
  {
    if (sub_20C13DB34())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x20F2F5430](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v14 = *(v13 + 32);
  }

  v15 = v14;

  v16 = [v15 navigationItem];
  [v16 setBackBarButtonItem_];

LABEL_11:
  v17 = [v2 navigationController];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 navigationBar];

    v20 = [v19 topItem];
    if (v20)
    {
      [v20 setBackBarButtonItem_];
    }
  }

  v21 = [v2 navigationController];
  if (v21)
  {
    v22 = v21;
    v23 = swift_getObjectType();
    v24 = swift_conformsToProtocol2();
    if (v24)
    {
      (*(v24 + 16))(v2, v23, v24);
    }
  }

  v33 = v2;
  sub_20C132E84();
  sub_20BC689D0(&qword_27C76CA58, v25, type metadata accessor for WorkoutPlanScheduleViewController);
  sub_20C139274();
  (*(v6 + 8))(v9, v5);
  v26 = [v2 navigationController];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 &selRef_energyColors];
    sub_20B51C88C(0, &qword_281100550);
    v29 = sub_20C13CC74();

    v33 = v2;
    MEMORY[0x28223BE20](v30);
    *(&v32 - 2) = &v33;
    LOBYTE(v28) = sub_20B79AEEC(sub_20B5978BC, (&v32 - 4), v29);

    if ((v28 & 1) == 0)
    {
      v33 = v2;
      sub_20BC689D0(&qword_27C76CA68, v31, type metadata accessor for WorkoutPlanScheduleViewController);
      sub_20C138C64();
    }
  }
}

uint64_t sub_20BC65E50(char a1, SEL *a2, uint64_t (*a3)(objc_class *, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v13.receiver = v3;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, *a2, a1 & 1);
  v9 = sub_20BC689D0(&qword_27C76CA58, v8, type metadata accessor for WorkoutPlanScheduleViewController);
  v11 = sub_20BC689D0(&qword_27C76CA60, v10, type metadata accessor for WorkoutPlanScheduleViewController);
  return a3(ObjectType, v9, v11);
}

void sub_20BC65F44(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(objc_class *, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v10 = *a4;
  v11 = a1;
  objc_msgSendSuper2(&v16, v10, a3);
  v13 = sub_20BC689D0(&qword_27C76CA58, v12, type metadata accessor for WorkoutPlanScheduleViewController);
  v15 = sub_20BC689D0(&qword_27C76CA60, v14, type metadata accessor for WorkoutPlanScheduleViewController);
  a5(ObjectType, v13, v15);
}

void WorkoutPlanScheduleViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v19.receiver = v3;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  *(v3 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_isViewTransitioningToSize) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v17 = sub_20BC67C88;
  v18 = v7;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_20B863940;
  v16 = &block_descriptor_113;
  v8 = _Block_copy(&v13);
  v9 = v3;

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v17 = sub_20BC67C90;
  v18 = v10;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_20B863940;
  v16 = &block_descriptor_6_2;
  v11 = _Block_copy(&v13);
  v12 = v9;

  [a1 animateAlongsideTransition:v8 completion:v11];
  _Block_release(v11);
  _Block_release(v8);
}

uint64_t sub_20BC661E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C133244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_dataProvider);
  v8 = *(*(v7 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_page) + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_collectionView);
  v9 = [v8 collectionViewLayout];
  [v9 invalidateLayout];

  MEMORY[0x20F2EA980](*(v7 + 16), 0);
  v10 = sub_20C133234();
  if (v10 < [v8 numberOfSections])
  {
    v11 = sub_20C133224();
    if (v11 < [v8 numberOfItemsInSection_])
    {
      v12 = sub_20C1331B4();
      [v8 scrollToItemAtIndexPath:v12 atScrollPosition:8 animated:0];

      v8 = v12;
    }
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_20BC66384(int a1, char *a2)
{
  v3 = [a2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    if (v5)
    {
      [v5 bounds];
      v10 = v6;
      v11 = v7;

      *&v8 = v10;
      *(&v8 + 1) = v11;
    }

    else
    {
      v8 = 0uLL;
    }

    v9 = &a2[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_latestContentSize];
    *v9 = v8;
    v9[16] = v5 == 0;
    a2[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_isViewTransitioningToSize] = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20BC664C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_20C13DD64();
    v23 = objc_opt_self();
    sub_20B51C88C(0, &qword_27C7713A0);
    v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_workoutPlanStringBuilder);
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      __swift_project_boxed_opaque_existential_1((v5 + 48), *(v5 + 72));
      v8 = sub_20B5E107C();
      v10 = v9;

      v11 = sub_20C13C914();

      v12 = [v23 systemImageNamed_];

      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v8;
      *(v14 + 24) = v10;
      *(v14 + 32) = v12;
      *(v14 + 40) = v7;
      *(v14 + 48) = v13;

      v15 = v12;
      sub_20C13D624();
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      --v2;
    }

    while (v2);
    v3 = aBlock[0];
  }

  v16 = objc_opt_self();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v3;
  aBlock[4] = sub_20BC689C8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BDAD46C;
  aBlock[3] = &block_descriptor_37_1;
  v19 = _Block_copy(aBlock);

  v20 = [v16 elementWithUncachedProvider_];
  _Block_release(v19);
  sub_20B51C88C(0, &unk_27C76FED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20C14F580;
  *(v21 + 32) = v20;
  return sub_20C13D554();
}

void sub_20BC66924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_20BCD02DC(a5);
  }

  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      swift_beginAccess();
      v12 = swift_unknownObjectWeakLoadStrong();
      if (!v12)
      {
        return;
      }

      v11 = v12;
      sub_20BCCFA60();
    }

    else
    {
      swift_beginAccess();
      v13 = swift_unknownObjectWeakLoadStrong();
      if (!v13)
      {
        return;
      }

      v11 = v13;
      sub_20BCCFCA4();
    }

    goto LABEL_12;
  }

  if (a5)
  {
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = [v8 navigationItem];
      v11 = [v10 rightBarButtonItem];

      sub_20BCCF8B8(v11);
LABEL_12:
    }
  }
}

uint64_t sub_20BC66A88(void (*a1)(unint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_20BC66B90();
  }

  if (a4 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764F30);

    v9 = sub_20C13DE34();

    a4 = v9;
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
  }

  a1(a4);
}

uint64_t sub_20BC66B90()
{
  v19[1] = swift_getObjectType();
  v20 = sub_20C1333A4();
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v7 = sub_20C1352E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134F24();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v0;
  (*(v12 + 104))(v15, *MEMORY[0x277D51390], v11, v13);
  (*(v8 + 104))(v10, *MEMORY[0x277D51768], v7);
  v16 = sub_20C135ED4();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_20BCD19C0(v3);
  sub_20BC689D0(&qword_27C76CAC8, v17, type metadata accessor for WorkoutPlanScheduleViewController);
  sub_20C138D94();
  (*(v1 + 8))(v3, v20);
  sub_20B520158(v6, &unk_27C7621D0);
  (*(v8 + 8))(v10, v7);
  return (*(v12 + 8))(v15, v11);
}

id WorkoutPlanScheduleViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id WorkoutPlanScheduleViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WorkoutPlanScheduleViewController.impressionsConsumer.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(*(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_page) + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_impressionsTracker);
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v4 - 8) + 16);

  return v8(boxed_opaque_existential_1, v6, v4);
}

uint64_t sub_20BC672B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(*(*v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_page) + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_impressionsTracker);
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v4 - 8) + 16);

  return v8(boxed_opaque_existential_1, v6, v4);
}

uint64_t sub_20BC673E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20BC674C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v6 = sub_20BC689D0(&qword_27C76CA58, v5, type metadata accessor for WorkoutPlanScheduleViewController);

  return a3(ObjectType, v6, a2);
}

uint64_t sub_20BC67578(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [v3 navigationItem];
  v6 = [v5 titleView];

  if (v6 && (sub_20B51C88C(0, &qword_27C762910), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CAC0), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v11 + 1))
    {
      v7 = *(*__swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1)) + *a3);
      v8 = sub_20C13C914();
      [v7 setText_];

      return __swift_destroy_boxed_opaque_existential_1(&v10);
    }
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  return sub_20B520158(&v10, &qword_27C76CAB8);
}

id sub_20BC676BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v32 = a2;
  v33 = a8;
  ObjectType = swift_getObjectType();
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](ObjectType);
  v17 = &boxed_opaque_existential_1 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[3] = a7;
  v37[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(v15 + 32))(boxed_opaque_existential_1, a5, a7);
  *&a6[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_resignActiveObserver] = 0;
  v18 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_navigationTitleView;
  v19 = [objc_allocWithZone(type metadata accessor for CalendarTitleView()) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a6[v18] = v19;
  a6[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_isViewTransitioningToSize] = 0;
  v20 = &a6[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_latestContentSize];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  type metadata accessor for WorkoutPlanCalendarCoordinator();
  v21 = swift_allocObject();
  *(v21 + 24) = 0u;
  *(v21 + 40) = 0u;
  *(v21 + 56) = 0u;
  *(v21 + 72) = 1;
  v22 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_metadata;
  v23 = type metadata accessor for WorkoutPlanScheduleMetadata();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  v24 = v21 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_weekdayDelegate;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_workoutPlan;
  v26 = sub_20C133954();
  (*(*(v26 - 8) + 56))(v21 + v25, 1, 1, v26);
  type metadata accessor for WorkoutPlanStringBuilder();

  sub_20C133AA4();

  *(v21 + 16) = v36;
  *&a6[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a6[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_eventHub] = v36;
  sub_20B51CC64(v37, &a6[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_pageNavigator]);
  sub_20C133AA4();
  a6[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_platform] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B52E424(&v36, &a6[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_storefrontLocalizer]);
  type metadata accessor for WorkoutPlanSchedulePageDataProviderX();
  swift_allocObject();

  sub_20B58C2C8(a3, a4);
  v27 = sub_20BCD6F5C(v21, a1, a3, a4, v32);

  *&a6[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_dataProvider] = v27;
  *&a6[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_calendarCoordinator] = v21;
  type metadata accessor for WorkoutPlanHostedContentCoordinator();
  v28 = swift_allocObject();
  (*(v15 + 16))(v17, boxed_opaque_existential_1, a7);

  *&a6[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_hostedContentCoordinator] = sub_20BD94CC4(a1, v17, a3, a4, v28, a7, v33);
  sub_20C133AA4();
  *&a6[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_workoutPlanStringBuilder] = v36;
  v35.receiver = a6;
  v35.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v35, sel_initWithNibName_bundle_, 0, 0);

  __swift_destroy_boxed_opaque_existential_1(v37);
  return v29;
}

id sub_20BC67B50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v18);
  (*(v15 + 16))(v17, a5, a7);
  return sub_20BC676BC(a1, a2, a3, a4, v17, v19, a7, a8);
}

void sub_20BC67CD0()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_resignActiveObserver) = 0;
  v1 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_navigationTitleView;
  v2 = [objc_allocWithZone(type metadata accessor for CalendarTitleView()) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_isViewTransitioningToSize) = 0;
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_latestContentSize;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20BC67DAC(char *a1)
{
  v2 = v1;
  v3 = sub_20BD940EC(a1);
  if (v3)
  {
    v4 = [v2 childViewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v5 = sub_20C13CC74();

    v9 = v3;
    MEMORY[0x28223BE20](v6);
    v8[2] = &v9;
    LOBYTE(v4) = sub_20B79AEEC(sub_20BC68A24, v8, v5);

    if ((v4 & 1) == 0)
    {
      [v2 addChildViewController_];
    }
  }

  return v3;
}

void sub_20BC67EC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C133954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v72 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = &v67 - v8;
  MEMORY[0x28223BE20](v9);
  v79 = &v67 - v10;
  v92 = sub_20C135214();
  v11 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v71 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = &v67 - v14;
  MEMORY[0x28223BE20](v15);
  v77 = &v67 - v16;
  MEMORY[0x28223BE20](v17);
  v93 = &v67 - v18;
  v19 = type metadata accessor for HostedContentIdentifier() - 8;
  MEMORY[0x28223BE20](v19);
  v70 = (&v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v84 = &v67 - v22;
  MEMORY[0x28223BE20](v23);
  v26 = &v67 - v25;
  v27 = *(a1 + 16);
  if (v27)
  {
    v28 = *(v2 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_hostedContentCoordinator);
    v29 = a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v30 = (v11 + 32);
    v88 = (v5 + 8);
    v89 = v28;
    v82 = (v11 + 8);
    v81 = *(v24 + 72);
    v69 = (v5 + 32);
    v68 = (v5 + 16);
    v67 = (v11 + 16);
    v90 = v4;
    v83 = (v11 + 32);
    v87 = &v67 - v25;
    do
    {
      v91 = v27;
      sub_20BC688F4(v29, v26);
      v58 = v84;
      sub_20BC688F4(v26, v84);

      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
      v60 = *(v59 + 64);
      v61 = *v30;
      (*v30)(v93, v58 + *(v59 + 48), v92);
      v85 = *v88;
      v85(v58 + v60, v4);
      v62 = *(v89 + 96);
      v63 = sub_20B51C88C(0, &qword_27C765490);
      v64 = v62;
      sub_20C135204();
      v86 = v63;
      v65 = sub_20C13D5D4();
      v66 = [v64 objectForKey_];

      if (v66)
      {

        (*v82)(v93, v92);
      }

      else
      {
        v31 = v70;
        sub_20BC688F4(v87, v70);
        v75 = *v31;
        v32 = *(v59 + 64);
        v33 = v92;
        v61(v77, v31 + *(v59 + 48), v92);
        v34 = v31 + v32;
        v35 = v79;
        v36 = v90;
        (*v69)(v79, v34, v90);
        v37 = v89;
        v74 = *(v89 + 32);
        sub_20B51CC64(v89 + 40, v95);
        v38 = *v68;
        v39 = v80;
        (*v68)(v80, v35, v36);
        v40 = *v67;
        v76 = v29;
        v41 = v78;
        v40();
        v42 = *(v37 + 80);
        v43 = *(v37 + 88);
        v73 = v42;
        v44 = v72;
        v38(v72, v39, v36);
        v45 = v71;
        v46 = v41;
        v29 = v76;
        (v40)(v71, v46, v33);
        type metadata accessor for WorkoutPlanWeekdayDetailPageDataProvider();
        swift_allocObject();
        v47 = v74;
        swift_retain_n();
        v48 = v73;
        sub_20B58C2C8(v73, v43);
        v49 = v93;
        v50 = sub_20B58C3D4(v47, v44, v45, v75, v48, v43);

        sub_20B51CC64(v95, v94);
        v51 = objc_allocWithZone(type metadata accessor for WorkoutPlanWeekdayDetailViewController());
        v52 = sub_20B9EE32C(v47, v50, v94);

        v53 = *v82;
        (*v82)(v78, v33);
        v54 = v90;
        v55 = v85;
        v85(v80, v90);
        __swift_destroy_boxed_opaque_existential_1(v95);
        v55(v79, v54);
        v53(v77, v33);
        v56 = *(v89 + 96);
        sub_20C135204();
        v57 = sub_20C13D5D4();
        [v56 setObject:v52 forKey:v57];

        v53(v49, v33);
      }

      v26 = v87;
      sub_20BC68958(v87);
      v29 += v81;
      v4 = v90;
      v27 = v91 - 1;
      v30 = v83;
    }

    while (v91 != 1);
  }
}

void sub_20BC68620(void *a1)
{
  v2 = v1;
  v4 = sub_20C133244();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 view];
  if (v9)
  {
    v10 = v9;
    v27 = [v9 window];

    v11 = v27;
    if (v27)
    {
      v12 = &v2[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_latestContentSize];
      if ((v2[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_latestContentSize + 16] & 1) != 0 || (v13 = *v12, [v27 bounds], v11 = v27, ceil(v14) == ceil(v13)))
      {
        [v11 bounds];
        *v12 = v15;
        *(v12 + 1) = v16;
        v12[16] = 0;
        if ((v2[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_isViewTransitioningToSize] & 1) == 0 && (![a1 _isAnimatingScroll] || UIAccessibilityIsVoiceOverRunning()))
        {
          [a1 contentOffset];
          v18 = v17;
          [a1 contentSize];
          sub_20BCD0C6C(v18 / v19);
        }

        v20 = v27;
      }

      else
      {
        v21 = *&v2[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_dataProvider];
        MEMORY[0x20F2EA980](*(v21 + 16), 0);
        v22 = *(*(v21 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_page) + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_collectionView);
        v23 = sub_20C133234();
        if (v23 >= [v22 numberOfSections] || (v24 = sub_20C133224(), v24 >= objc_msgSend(v22, sel_numberOfItemsInSection_, sub_20C133234())))
        {
        }

        else
        {
          v25 = sub_20C1331B4();
          [v22 scrollToItemAtIndexPath:v25 atScrollPosition:8 animated:0];
        }

        (*(v5 + 8))(v8, v4);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20BC688F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedContentIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BC68958(uint64_t a1)
{
  v2 = type metadata accessor for HostedContentIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BC689D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

BOOL sub_20BC68A48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_20BC68AA4(v7, v9);
}

BOOL sub_20BC68AA4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v2 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v2 || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v5 = *(a1 + 64);
  v6 = *(a2 + 64);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      return v5 == 3;
    }

    else if (v6 == 4)
    {
      return v5 == 4;
    }

    else
    {
      return v5 == 5;
    }
  }

  else if (*(a2 + 64))
  {
    if (v6 == 1)
    {
      return v5 == 1;
    }

    return v5 == 2;
  }

  else
  {
    return !*(a1 + 64);
  }
}

uint64_t sub_20BC68BA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 65))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_20BC68BE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_20BC68C50()
{
  v1 = *v0;
  sub_20C13E164();
  if (v1)
  {
    MEMORY[0x20F2F58E0](0);
    sub_20BBA8010(v3, v1);
  }

  else
  {
    MEMORY[0x20F2F58E0](1);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20BC68CB4(__int128 *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    return MEMORY[0x20F2F58E0](1);
  }

  MEMORY[0x20F2F58E0](0);

  return sub_20BBA8010(a1, v3);
}

uint64_t sub_20BC68D24()
{
  v1 = *v0;
  sub_20C13E164();
  if (v1)
  {
    MEMORY[0x20F2F58E0](0);
    sub_20BBA8010(v3, v1);
  }

  else
  {
    MEMORY[0x20F2F58E0](1);
  }

  return sub_20C13E1B4();
}

void sub_20BC68D84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    sub_20BDA3364(v2, v3);
  }
}

uint64_t sub_20BC68E28(uint64_t a1, int a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BC69240(a2);
  }

  return result;
}

uint64_t sub_20BC68E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767600);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  v8 = sub_20C134EC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ThemeFilterUpdated();
  MEMORY[0x28223BE20](v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator);

    v24[1] = *(v16 + 24);
    swift_unknownObjectRetain();

    v17 = *(v9 + 16);
    v25 = v8;
    v17(v11, a3, v8);
    sub_20B52F9E8(a1, v7, &unk_27C767600);
    v18 = sub_20C133A74();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) == 1)
    {
      sub_20B520158(v7, &unk_27C767600);
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = sub_20C133A34();
      v21 = v22;
      (*(v19 + 8))(v7, v18);
    }

    swift_getObjectType();
    (*(v9 + 32))(v14, v11, v25);
    v23 = &v14[*(v12 + 20)];
    *v23 = v20;
    v23[1] = v21;
    sub_20BC6A1E4(&qword_27C7667C0, type metadata accessor for ThemeFilterUpdated);
    sub_20C13A764();
    swift_unknownObjectRelease();
    return sub_20BC6A188(v14);
  }

  return result;
}

uint64_t sub_20BC691B8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BF9FDE4(v3, a1, Strong);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

char *sub_20BC69240(int a1)
{
  v2 = v1;
  v86 = sub_20C13BB84();
  v4 = *(v86 - 1);
  MEMORY[0x28223BE20](v86);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13C554();
  v81 = *(v7 - 8);
  v82 = v7;
  MEMORY[0x28223BE20](v7);
  v80 = (&v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_20C132EE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v14 = &v70 - v13;
  if ((sub_20BF7A8FC(8, v1 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_rootModality) & 1) == 0)
  {
    sub_20C13B534();
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1F4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v102[0] = v26;
      *v25 = 141558274;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2080;
      v27 = sub_20C1368A4();
      v29 = sub_20B51E694(v27, v28, v102);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_20B517000, v23, v24, "Unsupported property type: %{mask.hash}s. Aborting row creation.", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x20F2F6A40](v26, -1, -1);
      MEMORY[0x20F2F6A40](v25, -1, -1);
    }

    return (*(v4 + 8))(v6, v86);
  }

  v86 = v14;
  v72 = a1;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator);
  v16 = (v1 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_storefrontLocalizer + 24));
  v17 = sub_20C138D34();
  v19 = sub_20BC74C88(v17, v18, 0xD000000000000014, 0x800000020C1ADA60, v15);

  if ((*(v15 + *(*v15 + 200)) & 8) != 0 || !*(v1 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_content))
  {
    v20 = 0;
    v22 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v20 = sub_20C138D34();
    v22 = v21;
  }

  v31 = v86;
  v92 = 0uLL;
  LOBYTE(v93) = 1;
  *(&v93 + 1) = 0;
  *&v94 = 0;
  WORD4(v94) = 128;
  v95 = 0uLL;
  v96 = xmmword_20C168270;
  *&v97 = v20;
  *(&v97 + 1) = v22;
  LOBYTE(v98) = 0;
  *(&v98 + 1) = v19;
  v99 = MEMORY[0x277D84F90];
  *&v100 = 0;
  *(&v100 + 1) = v20;
  *v101 = v22;
  *&v101[8] = xmmword_20C150190;
  nullsub_1(&v92);
  v32 = v2;
  v33 = v2 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row;
  v34 = *(v33 + 144);
  v102[8] = *(v33 + 128);
  v102[9] = v34;
  v103 = *(v33 + 160);
  v35 = *(v33 + 80);
  v102[4] = *(v33 + 64);
  v102[5] = v35;
  v36 = *(v33 + 112);
  v102[6] = *(v33 + 96);
  v102[7] = v36;
  v37 = *(v33 + 16);
  v102[0] = *v33;
  v102[1] = v37;
  v38 = *(v33 + 48);
  v102[2] = *(v33 + 32);
  v102[3] = v38;
  v39 = *v101;
  *(v33 + 128) = v100;
  *(v33 + 144) = v39;
  *(v33 + 160) = *&v101[16];
  v40 = v97;
  *(v33 + 64) = v96;
  *(v33 + 80) = v40;
  v41 = v99;
  *(v33 + 96) = v98;
  *(v33 + 112) = v41;
  v42 = v93;
  *v33 = v92;
  *(v33 + 16) = v42;
  v43 = v95;
  *(v33 + 32) = v94;
  *(v33 + 48) = v43;

  sub_20B520158(v102, &qword_27C762340);
  v84 = v32;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
    return swift_unknownObjectRelease();
  }

  v71 = result;
  if (![*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource])
  {
LABEL_28:
    sub_20C0C2D50(0);
    return swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v44 = v85;
  v45 = sub_20C13BE74();
  result = (*(v83 + 8))(v31, v44);
  v83 = v45;
  v79 = *(v45 + 16);
  if (!v79)
  {
LABEL_26:

    goto LABEL_28;
  }

  v46 = 0;
  v77 = v83 + 32;
  v78 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_identifier;
  v75 = (v10 + 8);
  v76 = (v10 + 16);
  while (2)
  {
    if (v46 < *(v83 + 16))
    {
      v47 = (v77 + 24 * v46);
      v48 = v47[1];
      v74 = *v47;
      v49 = v47[2];
      v85 = v46 + 1;
      (*v76)(v12, v84 + v78, v9);
      v50 = *(v48 + 16);

      v86 = v49;

      v51 = 0;
      do
      {
        if (v50 == v51)
        {
          (*v75)(v12, v9);
          goto LABEL_16;
        }

        v52 = v51 + 1;
        sub_20BC6A1E4(&qword_27C7641A0, MEMORY[0x277CC95F0]);
        v53 = sub_20C13C894();
        v51 = v52;
      }

      while ((v53 & 1) == 0);
      (*v75)(v12, v9);
      v54 = *(v33 + 128);
      v55 = *(v33 + 144);
      v56 = *(v33 + 96);
      v88[7] = *(v33 + 112);
      v89 = v54;
      v90 = v55;
      v91 = *(v33 + 160);
      v57 = *(v33 + 80);
      v88[4] = *(v33 + 64);
      v88[5] = v57;
      v88[6] = v56;
      v58 = *(v33 + 16);
      v88[0] = *v33;
      v88[1] = v58;
      v59 = *(v33 + 48);
      v88[2] = *(v33 + 32);
      v88[3] = v59;
      v60 = sub_20B5EAF8C(v88);
      if (v60 == 1)
      {
        v61 = 0;
        v62 = 0;
      }

      else
      {
        v61 = *(&v89 + 1);
        v62 = v90;
      }

      v63 = v86;
      v73 = &v70;
      v87[0] = v61;
      v87[1] = v62;
      MEMORY[0x28223BE20](v60);
      *(&v70 - 2) = v87;
      v64 = sub_20B796758(sub_20B5EAFA4, (&v70 - 4), v63);

      if ((v64 & 1) == 0)
      {
LABEL_16:

        v46 = v85;
        if (v85 == v79)
        {
          goto LABEL_26;
        }

        continue;
      }

      sub_20B5E2E18();
      v65 = sub_20C13D374();
      v67 = v80;
      v66 = v81;
      *v80 = v65;
      v68 = v82;
      (*(v66 + 104))(v67, *MEMORY[0x277D85200], v82);
      v69 = sub_20C13C584();
      result = (*(v66 + 8))(v67, v68);
      if ((v69 & 1) == 0)
      {
        goto LABEL_37;
      }

      if ((v72 & 0x80) != 0)
      {
        sub_20C10C9F0(v84, v74, v72 & 1, v71);
      }

      else
      {
        sub_20B61F648(v74, v48, v86, v84, v72 & 1, v71);
      }

      return swift_unknownObjectRelease();
    }

    break;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_20BC69BF4()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_rootModality, &unk_27C7710A0);
  v3 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_filterRoot;
  v4 = sub_20C134EC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 128);
  v11[9] = v5;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 160);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 64);
  v11[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 96);
  v11[7] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row);
  v11[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 32);
  v11[3] = v9;
  sub_20B520158(v11, &qword_27C762340);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_storefrontLocalizer);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVCatalogThemeFilterOptionsShelf()
{
  result = qword_27C76CAD0;
  if (!qword_27C76CAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BC69DCC()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B723EF4();
    if (v1 <= 0x3F)
    {
      sub_20C134EC4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_20BC69F18()
{
  result = qword_27C76CAE0[0];
  if (!qword_27C76CAE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C76CAE0);
  }

  return result;
}

uint64_t sub_20BC69F6C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BC69FE4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 32);
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

uint64_t sub_20BC6A188(uint64_t a1)
{
  v2 = type metadata accessor for ThemeFilterUpdated();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BC6A1E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BC6A278()
{

  return swift_deallocClassInstance();
}

uint64_t sub_20BC6A2F8(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_20C13D914();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  (*(a2 + 40))(a1, a2, v11);
  sub_20BD1DEB0(v8);

  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v13, v8, AssociatedTypeWitness);
    v15 = (*(a2 + 48))(v13, a1, a2);
    (*(v9 + 8))(v13, AssociatedTypeWitness);
    return v15;
  }
}

uint64_t sub_20BC6A538(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))();
  sub_20BD1F858();
}

uint64_t sub_20BC6A59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 40))(a2, a3);
  sub_20BD1F2C4(a1);
}

uint64_t sub_20BC6A610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  (*(a4 + 40))(a3, a4);
  v10 = (*(a4 + 72))(a1, a3, a4);
  a5(v10, a2);
}

uint64_t sub_20BC6A6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_20C13D914();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v26 = a2;
  v27 = a3;
  v28 = v3;
  result = sub_20B6B7654(sub_20BC6AB3C, v25, a1);
  if (v18 <= 0xFBu)
  {
    v23 = v9;
    v24 = v8;
    v19 = result;
    v20 = v17;
    v21 = v18;
    (*(a3 + 56))();
    sub_20BC6AB28(v19, v20, v21);
    if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
    {
      (*(v23 + 8))(v11, v24);
      return 0;
    }

    else
    {
      (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
      v22 = (*(a3 + 48))(v15, a2, a3);
      (*(v12 + 8))(v15, AssociatedTypeWitness);
      return v22;
    }
  }

  return result;
}

uint64_t sub_20BC6A954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[2] = a3;
  v15[3] = a4;
  result = sub_20B6B7654(sub_20BC6AB60, v15, a1);
  if (v8 <= 0xFBu)
  {
    v9 = *(a4 + 40);
    v10 = result;
    v11 = a3;
    v12 = v7;
    v13 = a4;
    v14 = v8;
    v9(v11, v13);
    sub_20BD1E6E8(v10, v12, v14);

    return sub_20BC6AB28(v10, v12, v14);
  }

  return result;
}

uint64_t sub_20BC6AAB8@<X0>(uint64_t (*a1)(void)@<X5>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_20BC6AB28(uint64_t result, uint64_t a2, char a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_20B6D8758(result, a2, a3);
  }

  return result;
}

char *sub_20BC6AB7C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_dayLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_highlightView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_indicatorView;
  type metadata accessor for CalendarDayIndicatorView();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v13] = v14;
  v15 = &v4[OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_styleProvider];
  sub_20BC6BB68(v70);
  v16 = v70[1];
  *v15 = v70[0];
  *(v15 + 1) = v16;
  v17 = v70[3];
  *(v15 + 2) = v70[2];
  *(v15 + 3) = v17;
  *(v15 + 4) = vdupq_n_s64(0x4041800000000000uLL);
  *(v15 + 5) = xmmword_20C175470;
  *(v15 + 12) = 0x401C000000000000;
  v69.receiver = v4;
  v69.super_class = type metadata accessor for CalendarDayCell();
  v18 = objc_msgSendSuper2(&v69, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_highlightView;
  v20 = *&v18[OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_highlightView];
  v21 = v18;
  [v20 setHidden_];
  v22 = [*&v18[v19] layer];
  v23 = &v21[OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_styleProvider];
  [v22 setCornerRadius_];

  v24 = [v21 contentView];
  [v24 addSubview_];

  v25 = OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_dayLabel;
  v68 = v23;
  [*&v21[OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_dayLabel] setFont_];
  [*&v21[v25] setTextColor_];
  v26 = [v21 &selRef_setMaximumFractionDigits_];
  [v26 addSubview_];

  v27 = [v21 &selRef_setMaximumFractionDigits_];
  v66 = OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_indicatorView;
  [v27 addSubview_];

  v67 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C1615B0;
  v29 = [*&v18[v19] topAnchor];
  v30 = [v21 &selRef_setMaximumFractionDigits_];
  v31 = [v30 topAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  *(v28 + 32) = v32;
  v33 = [*&v18[v19] centerXAnchor];
  v34 = [v21 &selRef_setMaximumFractionDigits_];
  v35 = [v34 &selRef_handleMenuButtonTapped + 2];

  v36 = [v33 constraintEqualToAnchor_];
  *(v28 + 40) = v36;
  v37 = [*&v18[v19] widthAnchor];
  v38 = [v37 constraintEqualToConstant_];

  *(v28 + 48) = v38;
  v39 = [*&v18[v19] heightAnchor];
  v40 = [v39 &selRef_visibleCells + 1];

  *(v28 + 56) = v40;
  v41 = [*&v21[v25] centerXAnchor];
  v42 = [v21 &selRef_setMaximumFractionDigits_];
  v43 = [v42 centerXAnchor];

  v44 = [v41 constraintEqualToAnchor_];
  *(v28 + 64) = v44;
  v45 = [*&v21[v25] centerYAnchor];
  v46 = [*&v18[v19] centerYAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v28 + 72) = v47;
  v48 = [*&v21[v66] centerXAnchor];
  v49 = [v21 contentView];
  v50 = [v49 centerXAnchor];

  v51 = [v48 constraintEqualToAnchor_];
  *(v28 + 80) = v51;
  v52 = [*&v21[v66] widthAnchor];
  v53 = [v52 constraintEqualToConstant_];

  *(v28 + 88) = v53;
  v54 = [*&v21[v66] heightAnchor];
  v55 = [*&v21[v66] widthAnchor];
  v56 = [v54 constraintEqualToAnchor_];

  *(v28 + 96) = v56;
  v57 = [*&v21[v66] topAnchor];
  v58 = [*&v18[v19] bottomAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:v68[10]];

  *(v28 + 104) = v59;
  v60 = [*&v21[v66] bottomAnchor];
  v61 = [v21 contentView];

  v62 = [v61 bottomAnchor];
  v63 = [v60 constraintEqualToAnchor:v62 constant:-v68[11]];

  *(v28 + 112) = v63;
  sub_20B5E29D0();
  v64 = sub_20C13CC54();

  [v67 activateConstraints_];

  return v21;
}

id sub_20BC6B334()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CalendarDayCell();
  objc_msgSendSuper2(&v4, sel_prepareForReuse);
  [*&v0[OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_highlightView] setHidden_];
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_indicatorView];
  [v1 setHidden_];
  v2 = OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_shapeLayer;
  [*&v1[OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_shapeLayer] setFillColor_];
  [*&v1[v2] setStrokeColor_];
  return [v1 setAccessibilityLabel_];
}

void sub_20BC6B43C(_BYTE *a1)
{
  if (a1[8])
  {
    v2 = (v1 + OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_styleProvider + 32);
    v3 = 24;
  }

  else
  {
    if (a1[9])
    {
      v2 = (v1 + OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_styleProvider + 56);
    }

    else
    {
      v4 = 40;
      if (a1[56] == 1)
      {
        v4 = 0;
      }

      v2 = (v1 + OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_styleProvider + v4);
    }

    v3 = 8;
  }

  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_dayLabel);
  v7 = *v2;
  [v5 setTextColor_];
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_styleProvider + v3);
  [v5 setFont_];
}

id sub_20BC6B52C(_BYTE *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_highlightView);
  [v3 setHidden_];
  if (a1[56] == 1)
  {
    v4 = v3;
    v5 = 0;
  }

  else
  {
    v6 = v1 + OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_styleProvider;
    if (a1[9])
    {
      v5 = *(v6 + 48);
    }

    else
    {
      v5 = *(v6 + 16);
    }

    v4 = v3;
  }

  return [v4 setBackgroundColor_];
}

void sub_20BC6B5D8(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_20C133154();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 setIsAccessibilityElement_];
  [v2 setAccessibilityTraits_];
  if (a1[8])
  {
    v9 = *MEMORY[0x277D76598];
    v10 = [v2 accessibilityTraits];
    if ((v9 & ~v10) != 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    [v2 setAccessibilityTraits_];
  }

  if (a1[56] == 1)
  {
    v12 = *MEMORY[0x277D76580];
    v13 = [v2 accessibilityTraits];
    if ((v12 & ~v13) != 0)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    [v2 setAccessibilityTraits_];
  }

  if (a1[9])
  {
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    v17 = sub_20C132964();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v43[6] = v17;
  v43[7] = v19;
  sub_20C133014();
  v20 = sub_20C1330C4();
  (*(v5 + 8))(v8, v4);
  v21 = sub_20C137F44();
  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v21 < *(v20 + 16))
  {
    v22 = v20 + 16 * v21;
    v24 = *(v22 + 32);
    v23 = *(v22 + 40);

    v43[8] = v24;
    v43[9] = v23;
    v25 = [*&v2[OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_dayLabel] accessibilityLabel];
    if (v25)
    {
      v26 = v25;
      v27 = sub_20C13C954();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = 0;
    v43[10] = v27;
    v43[11] = v29;
    v31 = MEMORY[0x277D84F90];
LABEL_20:
    if (v30 <= 3)
    {
      v32 = 3;
    }

    else
    {
      v32 = v30;
    }

    v33 = v32 + 1;
    v34 = 16 * v30 + 40;
    while (1)
    {
      if (v30 == 3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
        swift_arrayDestroy();
        v43[1] = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218);
        sub_20B86A1D4();
        sub_20C13C824();

        v41 = sub_20C13C914();

        [v2 setAccessibilityLabel_];

        v42 = [*&v2[OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_indicatorView] accessibilityLabel];
        [v2 setAccessibilityValue_];

        return;
      }

      if (v33 == ++v30)
      {
        break;
      }

      v35 = v34 + 16;
      v36 = *(&v43[2] + v34);
      v34 += 16;
      if (v36)
      {
        v37 = *(&v43[-1] + v35);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_20BC05BA4(0, *(v31 + 2) + 1, 1, v31);
        }

        v39 = *(v31 + 2);
        v38 = *(v31 + 3);
        if (v39 >= v38 >> 1)
        {
          v31 = sub_20BC05BA4((v38 > 1), v39 + 1, 1, v31);
        }

        *(v31 + 2) = v39 + 1;
        v40 = &v31[16 * v39];
        *(v40 + 4) = v37;
        *(v40 + 5) = v36;
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_35:
  __break(1u);
}

id sub_20BC6BA48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarDayCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20BC6BB68@<X0>(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 tertiaryLabelColor];
  v4 = objc_opt_self();
  v5 = [v4 systemFontOfSize_];
  v6 = [v2 whiteColor];
  v7 = [v4 systemFontOfSize:18.0 weight:*MEMORY[0x277D74420]];
  v8 = [v2 systemBackgroundColor];
  v9 = [v2 whiteColor];
  v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  *a1 = v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  a1[7] = result;
  return result;
}

void sub_20BC6BCE0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_dayLabel;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_highlightView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_indicatorView;
  type metadata accessor for CalendarDayIndicatorView();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v7 = v0 + OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_styleProvider;
  sub_20BC6BB68(v10);
  v8 = v10[1];
  *v7 = v10[0];
  *(v7 + 16) = v8;
  v9 = v10[3];
  *(v7 + 32) = v10[2];
  *(v7 + 48) = v9;
  *(v7 + 64) = vdupq_n_s64(0x4041800000000000uLL);
  *(v7 + 80) = xmmword_20C175470;
  *(v7 + 96) = 0x401C000000000000;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BC6BE48()
{
  v1 = v0;
  v2 = sub_20C136864();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for WorkoutPlanScheduledItemUpdate.Operation(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B7C3528(v1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v8, v11, v2);
    v13 = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v3 + 32))(v8, v11, v2);
    v13 = 1;
LABEL_5:
    MEMORY[0x20F2F58E0](v13);
    sub_20BC6C41C(&qword_27C76CB90, MEMORY[0x277D52CE0]);
    sub_20C13C7C4();
    return (*(v3 + 8))(v8, v2);
  }

  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765860) + 48);
  v16 = *(v3 + 32);
  v16(v8, v11, v2);
  v16(v5, &v11[v15], v2);
  MEMORY[0x20F2F58E0](2);
  sub_20BC6C41C(&qword_27C76CB90, MEMORY[0x277D52CE0]);
  sub_20C13C7C4();
  sub_20C13C7C4();
  v17 = *(v3 + 8);
  v17(v5, v2);
  return (v17)(v8, v2);
}

uint64_t sub_20BC6C138()
{
  sub_20C13E164();
  sub_20BC6BE48();
  return sub_20C13E1B4();
}

uint64_t sub_20BC6C17C()
{
  sub_20C13E164();
  sub_20BC6BE48();
  return sub_20C13E1B4();
}

uint64_t sub_20BC6C1BC()
{
  sub_20C13E164();
  if (*(v0 + 8) == 1)
  {
    sub_20C13E184();
  }

  else
  {
    v1 = *v0;
    sub_20C13E184();
    MEMORY[0x20F2F58E0](v1);
  }

  sub_20BC6BE48();
  v2 = sub_20C137F94();
  MEMORY[0x20F2F58E0](v2);
  return sub_20C13E1B4();
}

uint64_t sub_20BC6C260()
{
  if (*(v0 + 8) == 1)
  {
    sub_20C13E184();
  }

  else
  {
    v1 = *v0;
    sub_20C13E184();
    MEMORY[0x20F2F58E0](v1);
  }

  sub_20BC6BE48();
  v2 = sub_20C137F94();
  return MEMORY[0x20F2F58E0](v2);
}

uint64_t sub_20BC6C2F0()
{
  sub_20C13E164();
  if (*(v0 + 8) == 1)
  {
    sub_20C13E184();
  }

  else
  {
    v1 = *v0;
    sub_20C13E184();
    MEMORY[0x20F2F58E0](v1);
  }

  sub_20BC6BE48();
  v2 = sub_20C137F94();
  MEMORY[0x20F2F58E0](v2);
  return sub_20C13E1B4();
}

uint64_t sub_20BC6C41C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BC6C464(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v55 = sub_20C136864();
  v3 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v51 - v6;
  MEMORY[0x28223BE20](v7);
  v54 = &v51 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v15 = type metadata accessor for WorkoutPlanScheduledItemUpdate.Operation(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CB98);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v51 - v25;
  v28 = &v51 + *(v27 + 56) - v25;
  sub_20B7C3528(a1, &v51 - v25);
  sub_20B7C3528(v56, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20B7C3528(v26, v20);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = v55;
        (*(v3 + 32))(v11, v28, v55);
        v31 = sub_20C136844();
        v32 = *(v3 + 8);
        v32(v11, v30);
        v32(v20, v30);
LABEL_17:
        sub_20BC6CA90(v26);
        return v31 & 1;
      }

      (*(v3 + 8))(v20, v55);
      goto LABEL_13;
    }

    sub_20B7C3528(v26, v17);
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765860) + 48);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v34 = *(v3 + 32);
      v36 = v54;
      v35 = v55;
      v34(v54, v28, v55);
      v37 = v53;
      v34(v53, &v17[v33], v35);
      v38 = &v28[v33];
      v39 = v52;
      v34(v52, v38, v35);
      v40 = sub_20C136844();
      v41 = *(v3 + 8);
      v41(v17, v35);
      if ((v40 & 1) == 0)
      {
        v41(v39, v35);
        v41(v37, v35);
        v41(v36, v35);
        sub_20BC6CA90(v26);
        goto LABEL_14;
      }

      v42 = sub_20C136844();
      v43 = v39;
      v31 = v42;
      v41(v43, v35);
      v41(v37, v35);
      v44 = v36;
      v45 = v35;
LABEL_16:
      v41(v44, v45);
      goto LABEL_17;
    }

    v46 = *(v3 + 8);
    v47 = &v17[v33];
    v48 = v55;
    v46(v47, v55);
    v46(v17, v48);
  }

  else
  {
    sub_20B7C3528(v26, v23);
    if (!swift_getEnumCaseMultiPayload())
    {
      v49 = v55;
      (*(v3 + 32))(v14, v28, v55);
      v31 = sub_20C136844();
      v41 = *(v3 + 8);
      v41(v14, v49);
      v44 = v23;
      v45 = v49;
      goto LABEL_16;
    }

    (*(v3 + 8))(v23, v55);
  }

LABEL_13:
  sub_20BC6CA28(v26);
LABEL_14:
  v31 = 0;
  return v31 & 1;
}

BOOL sub_20BC6C988(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = type metadata accessor for WorkoutPlanScheduledItemUpdate(0);
  if (sub_20BC6C464(a1 + *(v5 + 20), a2 + *(v5 + 20)))
  {
    v6 = sub_20C137F94();
    return v6 == sub_20C137F94();
  }

  return 0;
}

uint64_t sub_20BC6CA28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CB98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BC6CA90(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanScheduledItemUpdate.Operation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20BC6CAEC()
{
  sub_20BC6CB84(319, &qword_27C76CBB0);
  if (v0 <= 0x3F)
  {
    sub_20BC6CB84(319, &qword_27C76CBB8);
    if (v1 <= 0x3F)
    {
      sub_20BC6CBCC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_20BC6CB84(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_20C136864();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_20BC6CBCC()
{
  if (!qword_27C76CBC0)
  {
    sub_20C136864();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C76CBC0);
    }
  }
}

void sub_20BC6CC5C()
{
  sub_20B52CE30();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WorkoutPlanScheduledItemUpdate.Operation(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20BC6CD30(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BC6CD90(a1);
  }

  return result;
}

uint64_t sub_20BC6CD90(uint64_t a1)
{
  v16 = a1;
  v3 = type metadata accessor for RemoteBrowsingWorkoutCompleted();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_20C13CDF4();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  sub_20BC71070(a1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;
  sub_20BC710D4(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);

  sub_20B614F94(0, 0, v8, &unk_20C175770, v12);

  v10(v8, 1, 1, v9);
  sub_20BC71070(v16, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v1;
  sub_20BC710D4(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11);

  sub_20B614F94(0, 0, v8, &unk_20C175780, v13);
}

uint64_t sub_20BC6CFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_20BC6CFFC, 0, 0);
}

uint64_t sub_20BC6CFFC()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for RemoteBrowsingWorkoutCompleted();
  v3 = *(v1 + v2[5]);
  v4 = v2[8];
  v5 = (v1 + v2[11]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v1 + v2[6]);
  v9 = *(v1 + v2[10]);
  v10 = swift_task_alloc();
  *(v0 + 32) = v10;
  *v10 = v0;
  v10[1] = sub_20BC731A8;
  v11 = *(v0 + 24);

  return sub_20BC6D204(v11, v3, v1 + v4, v6, v7, v8, v9);
}

uint64_t sub_20BC6D0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_20BC6D10C, 0, 0);
}

uint64_t sub_20BC6D10C()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for RemoteBrowsingWorkoutCompleted();
  v3 = *(v1 + v2[5]);
  v4 = *(v1 + v2[6]);
  v5 = v2[7];
  v6 = v2[8];
  v7 = (v1 + v2[11]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v2[10]);
  v11 = swift_task_alloc();
  *(v0 + 32) = v11;
  *v11 = v0;
  v11[1] = sub_20B772B0C;

  return sub_20BC71598(v3, v1 + v5, v4, v10, v1 + v6, v8, v9);
}

uint64_t sub_20BC6D204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v8 + 72) = v7;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v9 = sub_20C134D54();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  sub_20C132E94();
  *(v8 + 104) = swift_task_alloc();
  v10 = sub_20C137404();
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763830);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  v11 = sub_20C136C94();
  *(v8 + 152) = v11;
  *(v8 + 160) = *(v11 - 8);
  *(v8 + 168) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  *(v8 + 176) = v12;
  *(v8 + 184) = *(v12 - 8);
  *(v8 + 192) = swift_task_alloc();
  v13 = sub_20C134104();
  *(v8 + 200) = v13;
  *(v8 + 208) = *(v13 - 8);
  *(v8 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  *(v8 + 224) = swift_task_alloc();
  v14 = sub_20C135B74();
  *(v8 + 232) = v14;
  *(v8 + 240) = *(v14 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v15 = sub_20C13B0C4();
  *(v8 + 264) = v15;
  *(v8 + 272) = *(v15 - 8);
  *(v8 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  *(v8 + 288) = swift_task_alloc();
  v16 = sub_20C133D84();
  *(v8 + 296) = v16;
  *(v8 + 304) = *(v16 - 8);
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  *(v8 + 328) = swift_task_alloc();
  v17 = sub_20C136C64();
  *(v8 + 336) = v17;
  *(v8 + 344) = *(v17 - 8);
  *(v8 + 352) = swift_task_alloc();
  v18 = sub_20C13BB84();
  *(v8 + 360) = v18;
  *(v8 + 368) = *(v18 - 8);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BC6D7A0, 0, 0);
}

uint64_t sub_20BC6D7A0()
{
  v94 = v0;
  v1 = v0[54];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[42];
  v5 = v0[43];
  v6 = v0[41];
  v7 = v0[9];
  sub_20C13B4A4();
  sub_20C13BB64();
  v8 = *(v3 + 8);
  v0[55] = v8;
  v0[56] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v92 = v8;
  v8(v1, v2);
  __swift_project_boxed_opaque_existential_1((v7 + 56), *(v7 + 80));
  sub_20C13B174();
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_20B520158(v0[41], &qword_27C768690);
    sub_20C13B4A4();
    v9 = sub_20C13BB74();
    v10 = sub_20C13D1D4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20B517000, v9, v10, "Completed workout but no active environment, not updating", v11, 2u);
      MEMORY[0x20F2F6A40](v11, -1, -1);
    }

    v92(v0[47], v0[45]);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[37];
    v15 = v0[38];
    v16 = v0[36];
    v17 = v0[2];
    (*(v0[43] + 32))(v0[44], v0[41], v0[42]);
    sub_20B52F9E8(v17, v16, &unk_27C765120);
    if ((*(v15 + 48))(v16, 1, v14) == 1)
    {
      sub_20B520158(v0[36], &unk_27C765120);
    }

    else
    {
      v19 = v0[39];
      v18 = v0[40];
      v20 = v0[37];
      v21 = v0[38];
      (*(v21 + 32))(v18, v0[36], v20);
      sub_20C13B4A4();
      v22 = *(v21 + 16);
      v22(v19, v18, v20);
      v23 = sub_20C13BB74();
      v88 = sub_20C13D1F4();
      v24 = os_log_type_enabled(v23, v88);
      v25 = v0[53];
      v26 = v0[45];
      v28 = v0[38];
      v27 = v0[39];
      v29 = v0[37];
      if (v24)
      {
        v86 = v22;
        v30 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v93 = v84;
        *v30 = 136315138;
        sub_20BC730FC(&qword_27C76CBE8, MEMORY[0x277D50400]);
        v80 = v25;
        v82 = v26;
        v31 = sub_20C13DFA4();
        v33 = v32;
        v90 = *(v28 + 8);
        v90(v27, v29);
        v34 = sub_20B51E694(v31, v33, &v93);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_20B517000, v23, v88, "Remote Browsing Environment - updating rings to %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v84);
        MEMORY[0x20F2F6A40](v84, -1, -1);
        v35 = v30;
        v22 = v86;
        MEMORY[0x20F2F6A40](v35, -1, -1);

        v36 = v80;
        v37 = v82;
      }

      else
      {

        v90 = *(v28 + 8);
        v90(v27, v29);
        v36 = v25;
        v37 = v26;
      }

      v92(v36, v37);
      v38 = v0[40];
      v39 = v0[37];
      v41 = v0[34];
      v40 = v0[35];
      v42 = v0[33];
      v22(v40, v38, v39);
      v43 = *MEMORY[0x277D4F5F8];
      v44 = sub_20C13B254();
      (*(*(v44 - 8) + 104))(v40, v43, v44);
      (*(v41 + 104))(v40, *MEMORY[0x277D4F528], v42);
      __swift_project_boxed_opaque_existential_1((v7 + 56), *(v7 + 80));
      sub_20C13B2A4();
      (*(v41 + 8))(v40, v42);
      v90(v38, v39);
    }

    v45 = v0[29];
    v46 = v0[30];
    v47 = v0[28];
    sub_20B52F9E8(v0[4], v47, &unk_27C7650D0);
    if ((*(v46 + 48))(v47, 1, v45) == 1)
    {
      sub_20B520158(v0[28], &unk_27C7650D0);
    }

    else
    {
      v49 = v0[31];
      v48 = v0[32];
      v50 = v0[29];
      v51 = v0[30];
      (*(v51 + 32))(v48, v0[28], v50);
      sub_20C13B4A4();
      v52 = *(v51 + 16);
      v52(v49, v48, v50);
      v53 = sub_20C13BB74();
      v89 = sub_20C13D1F4();
      v54 = os_log_type_enabled(v53, v89);
      v55 = v0[52];
      v56 = v0[45];
      v58 = v0[30];
      v57 = v0[31];
      v59 = v0[29];
      if (v54)
      {
        v87 = v52;
        v60 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v93 = v85;
        *v60 = 136315138;
        sub_20BC730FC(&qword_27C76CBE0, MEMORY[0x277D51EA0]);
        v81 = v55;
        v83 = v56;
        v61 = sub_20C13DFA4();
        v63 = v62;
        v91 = *(v58 + 8);
        v91(v57, v59);
        v64 = sub_20B51E694(v61, v63, &v93);

        *(v60 + 4) = v64;
        _os_log_impl(&dword_20B517000, v53, v89, "Remote Browsing Environment - updating mindfulMinutes to %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v85);
        MEMORY[0x20F2F6A40](v85, -1, -1);
        v65 = v60;
        v52 = v87;
        MEMORY[0x20F2F6A40](v65, -1, -1);

        v66 = v81;
        v67 = v83;
      }

      else
      {

        v91 = *(v58 + 8);
        v91(v57, v59);
        v66 = v55;
        v67 = v56;
      }

      v92(v66, v67);
      v69 = v0[34];
      v68 = v0[35];
      v70 = v0[32];
      v71 = v0[33];
      v72 = v0[29];
      v52(v68, v70, v72);
      v73 = *MEMORY[0x277D4F648];
      v74 = sub_20C13B254();
      (*(*(v74 - 8) + 104))(v68, v73, v74);
      (*(v69 + 104))(v68, *MEMORY[0x277D4F528], v71);
      __swift_project_boxed_opaque_existential_1((v7 + 56), *(v7 + 80));
      sub_20C13B2A4();
      (*(v69 + 8))(v68, v71);
      v91(v70, v72);
    }

    v75 = v0[24];
    __swift_project_boxed_opaque_existential_1((v0[9] + 16), *(v0[9] + 40));
    sub_20C1398E4();
    v76 = swift_task_alloc();
    v0[57] = v76;
    *(v76 + 16) = "SeymourUI/RemoteBrowsingCompletedWorkoutObserver.swift";
    *(v76 + 24) = 54;
    *(v76 + 32) = 2;
    *(v76 + 40) = 91;
    *(v76 + 48) = v75;
    v77 = swift_task_alloc();
    v0[58] = v77;
    *v77 = v0;
    v77[1] = sub_20BC6E258;
    v78 = v0[27];
    v79 = v0[25];

    return MEMORY[0x2822008A0](v78, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BC70A4C, v76, v79);
  }
}

uint64_t sub_20BC6E258()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {

    v3 = sub_20BC6EF10;
  }

  else
  {
    v5 = v2[23];
    v4 = v2[24];
    v6 = v2[22];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BC6E3B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BC6E3B0()
{
  v108 = v0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 56);
  v5 = v4 / *(v0 + 64);
  sub_20C1340F4();
  v7 = v6;
  sub_20C1340A4();
  sub_20C136C74();
  v9 = v8;
  v10 = *(v2 + 8);
  v10(v1, v3);
  if (v9 >= v4)
  {
    v17 = 0;
    if (v7 > v5)
    {
LABEL_3:
      sub_20C13B4A4();
      v18 = sub_20C13BB74();
      v19 = sub_20C13D1F4();
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 440);
      v22 = *(v0 + 400);
      v23 = *(v0 + 360);
      if (v20)
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_20B517000, v18, v19, "Workout does not meet completion threshold, not journaling", v24, 2u);
        MEMORY[0x20F2F6A40](v24, -1, -1);

        v21(v22, v23);
        if (!v17)
        {
LABEL_5:
          sub_20C13B4A4();
          v25 = sub_20C13BB74();
          v26 = sub_20C13D1F4();
          v27 = os_log_type_enabled(v25, v26);
          v28 = *(v0 + 440);
          v29 = *(v0 + 384);
          v30 = *(v0 + 360);
          v31 = *(v0 + 344);
          v32 = *(v0 + 208);
          v103 = *(v0 + 216);
          v33 = *(v0 + 200);
          if (v27)
          {
            v34 = *(v0 + 344);
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_20B517000, v25, v26, "Workout does not meet resumable session threshold, not journaling", v35, 2u);
            v36 = v35;
            v31 = v34;
            MEMORY[0x20F2F6A40](v36, -1, -1);
          }

          v28(v29, v30);
          (*(v32 + 8))(v103, v33);
LABEL_25:
          (*(v31 + 8))(*(v0 + 352), *(v0 + 336));

          v67 = *(v0 + 8);

          return v67();
        }
      }

      else
      {

        v21(v22, v23);
        if (!v17)
        {
          goto LABEL_5;
        }
      }

LABEL_14:
      sub_20C13B4A4();
      v53 = sub_20C13BB74();
      v54 = sub_20C13D1F4();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_20B517000, v53, v54, "Workout meets resumable session threshold, journaling", v55, 2u);
        MEMORY[0x20F2F6A40](v55, -1, -1);
      }

      v91 = *(v0 + 440);
      v89 = *(v0 + 360);
      v90 = *(v0 + 392);
      v56 = *(v0 + 272);
      v57 = *(v0 + 280);
      v102 = *(v0 + 216);
      v105 = *(v0 + 344);
      v95 = *(v0 + 264);
      v97 = *(v0 + 208);
      v99 = *(v0 + 200);
      v58 = v53;
      v60 = *(v0 + 88);
      v59 = *(v0 + 96);
      v61 = *(v0 + 72);
      v62 = *(v0 + 80);

      v91(v90, v89);

      v93 = v59;
      sub_20C134D34();
      (*(v60 + 16))(v57, v59, v62);
      v63 = *MEMORY[0x277D4F620];
      v64 = sub_20C13B254();
      (*(*(v64 - 8) + 104))(v57, v63, v64);
      (*(v56 + 104))(v57, *MEMORY[0x277D4F518], v95);
      __swift_project_boxed_opaque_existential_1((v61 + 56), *(v61 + 80));
      sub_20C13B2A4();
      (*(v56 + 8))(v57, v95);
      (*(v60 + 8))(v93, v62);
      v31 = v105;
      (*(v97 + 8))(v102, v99);
      goto LABEL_25;
    }
  }

  else
  {
    v11 = *(v0 + 168);
    v12 = *(v0 + 152);
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    sub_20C1340A4();
    sub_20C136C84();
    v16 = v15;
    v10(v11, v12);
    v17 = v13 - v16 > v14;
    if (v7 > v5)
    {
      goto LABEL_3;
    }
  }

  v101 = v17;
  sub_20C13B4A4();
  v37 = sub_20C13BB74();
  v38 = sub_20C13D1F4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_20B517000, v37, v38, "Workout meets completion threshold, journaling", v39, 2u);
    MEMORY[0x20F2F6A40](v39, -1, -1);
  }

  v40 = *(v0 + 472);
  v41 = *(v0 + 440);
  v42 = *(v0 + 408);
  v43 = *(v0 + 360);
  v45 = *(v0 + 40);
  v44 = *(v0 + 48);

  v41(v42, v43);
  v46 = sub_20C136B64();

  v47 = sub_20BC70CC8(v46, v45, v44);

  v48 = *(v47 + 16);
  if (v48)
  {
    v104 = v40;
    v49 = *(v0 + 120);
    v50 = sub_20BEDE99C(v48, 0);
    v51 = sub_20BEE2114(&v107, &v50[(*(v49 + 80) + 32) & ~*(v49 + 80)], v48, v47);

    result = sub_20B583EDC();
    if (v51 != v48)
    {
      __break(1u);
      return result;
    }

    v40 = v104;
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
  }

  v107 = v50;
  sub_20BC6F158(&v107);
  if (!v40)
  {

    v65 = *(v107 + 2);
    if (v65)
    {
      (*(*(v0 + 120) + 16))(*(v0 + 144), &v107[((*(*(v0 + 120) + 80) + 32) & ~*(*(v0 + 120) + 80)) + *(*(v0 + 120) + 72) * (v65 - 1)], *(v0 + 112));
      v66 = 0;
    }

    else
    {
      v66 = 1;
    }

    v69 = *(v0 + 136);
    v68 = *(v0 + 144);
    v70 = *(v0 + 112);
    v71 = *(v0 + 120);

    (*(v71 + 56))(v68, v66, 1, v70);
    sub_20B52F9E8(v68, v69, &qword_27C763830);
    v72 = (*(v71 + 48))(v69, 1, v70);
    v73 = *(v0 + 136);
    if (v72 == 1)
    {
      sub_20B520158(*(v0 + 136), &qword_27C763830);
    }

    else
    {
      v74 = *(v0 + 112);
      v75 = *(v0 + 120);
      sub_20C1373D4();
      (*(v75 + 8))(v73, v74);
    }

    v76 = *(v0 + 280);
    v106 = *(v0 + 272);
    v77 = *(v0 + 120);
    v78 = *(v0 + 128);
    v79 = *(v0 + 112);
    v80 = *(v0 + 72);
    v94 = *(v0 + 264);
    v96 = *(v0 + 48);
    v98 = *(v0 + 40);
    v100 = *(v0 + 144);
    sub_20C132E84();

    sub_20C1373E4();
    __swift_project_boxed_opaque_existential_1((v80 + 56), *(v80 + 80));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762668);
    v81 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_20C14F980;
    (*(v77 + 16))(v82 + v81, v78, v79);
    v83 = sub_20BE8CE0C(v82);
    swift_setDeallocating();
    v92 = *(v77 + 8);
    v92(v82 + v81, v79);
    swift_deallocClassInstance();
    *v76 = v83;
    v84 = *MEMORY[0x277D4F650];
    v85 = sub_20C13B254();
    v88 = *(*(v85 - 8) + 104);
    v88(v76, v84, v85);
    v86 = *(v106 + 104);
    v86(v76, *MEMORY[0x277D4F518], v94);
    sub_20C13B2A4();
    v87 = *(v106 + 8);
    v87(v76, v94);
    __swift_project_boxed_opaque_existential_1((v80 + 56), *(v80 + 80));
    *v76 = v98;
    v76[1] = v96;
    v88(v76, *MEMORY[0x277D4F608], v85);
    v86(v76, *MEMORY[0x277D4F520], v94);

    sub_20C13B2A4();
    v87(v76, v94);
    v92(v78, v79);
    sub_20B520158(v100, &qword_27C763830);
    if (!v101)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }
}

uint64_t sub_20BC6EF10()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v1 + 8))(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BC6F0E4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  return swift_deallocClassInstance();
}

void sub_20BC6F158(void **a1)
{
  v2 = *(sub_20C137404() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0EC0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BC6F200(v5);
  *a1 = v3;
}

void sub_20BC6F200(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C137404();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C137404() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_20BC6F6CC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20BC6F32C(0, v2, 1, a1);
  }
}

void sub_20BC6F32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_20C132E94();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v41 - v11;
  v12 = sub_20C137404();
  MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v41 - v15;
  v18 = MEMORY[0x28223BE20](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      (v54)(v56, v26, v12, v18);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_20C1373C4();
      v32 = v59;
      sub_20C1373C4();
      v62 = sub_20C132E04();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20BC6F6CC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v160 = sub_20C132E94();
  v8 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v134 - v11;
  v12 = sub_20C137404();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v157 = &v134 - v18;
  v20 = MEMORY[0x28223BE20](v19);
  v161 = &v134 - v21;
  v22 = a3[1];
  v146 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v138;
    if (!*v138)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_20B6A07A0(v12);
    }

    v163 = v12;
    v130 = *(v12 + 16);
    if (v130 >= 2)
    {
      while (*v52)
      {
        v131 = *(v12 + 16 * v130);
        v132 = *(v12 + 16 * (v130 - 1) + 40);
        sub_20BC702CC(*v52 + *(v13 + 72) * v131, *v52 + *(v13 + 72) * *(v12 + 16 * (v130 - 1) + 32), *v52 + *(v13 + 72) * v132, v24);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v132 < v131)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_20B6A07A0(v12);
        }

        if (v130 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v133 = (v12 + 16 * v130);
        *v133 = v131;
        v133[1] = v132;
        v163 = v12;
        sub_20B6A0714(v130 - 1);
        v12 = v163;
        v130 = *(v163 + 16);
        if (v130 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v134 = a4;
  v23 = 0;
  v154 = (v8 + 8);
  v155 = v13 + 16;
  v152 = (v13 + 32);
  v153 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v156 = v12;
  v137 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v146;
    }

    else
    {
      v147 = v22;
      v135 = v24;
      v136 = v5;
      v26 = v23;
      v139 = v23;
      v27 = *v146;
      v162 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v161, v29, v12, v20);
      v32 = v157;
      v148 = v31;
      (v31)(v157, v27 + v28 * v26, v30);
      v33 = v158;
      sub_20C1373C4();
      v34 = v159;
      sub_20C1373C4();
      LODWORD(v149) = sub_20C132E04();
      v35 = *v154;
      v36 = v34;
      v37 = v160;
      (*v154)(v36, v160);
      v145 = v35;
      (v35)(v33, v37);
      v38 = *(v137 + 8);
      v24 = v153;
      v38(v32, v30);
      v144 = v38;
      v38(v161, v30);
      v39 = v139 + 2;
      v151 = v28;
      v40 = v162 + v28 * (v139 + 2);
      while (1)
      {
        v41 = v147;
        if (v147 == v39)
        {
          break;
        }

        v42 = v156;
        v43 = v148;
        v148();
        v44 = v157;
        v43(v157, v29, v42);
        v45 = v158;
        sub_20C1373C4();
        v46 = v159;
        sub_20C1373C4();
        LOBYTE(v162) = sub_20C132E04() & 1;
        LODWORD(v162) = v162;
        v47 = v46;
        v48 = v160;
        v49 = v29;
        v50 = v145;
        (v145)(v47, v160);
        v50(v45, v48);
        v24 = v153;
        v51 = v144;
        (v144)(v44, v42);
        v51(v161, v42);
        ++v39;
        v40 += v151;
        v29 = &v151[v49];
        if ((v149 & 1) != v162)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v136;
      v52 = v146;
      v13 = v137;
      v12 = v156;
      v23 = v139;
      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v139)
      {
        goto LABEL_125;
      }

      if (v139 < v41)
      {
        v53 = v41;
        v54 = v151 * (v41 - 1);
        v55 = v41 * v151;
        v147 = v41;
        v56 = v139;
        v57 = v139 * v151;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v152;
            (*v152)(v141, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59((v58 + v54), v141, v12);
            v52 = v146;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v53);
        v5 = v136;
        v13 = v137;
        v24 = v135;
        v23 = v139;
        v41 = v147;
      }

      else
      {
LABEL_23:
        v24 = v135;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v134)
      {
        if (__OFADD__(v23, v134))
        {
          goto LABEL_126;
        }

        if (v23 + v134 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v134;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_20BC05740(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_20BC05740((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v138;
    if (!*v138)
    {
      goto LABEL_133;
    }

    v142 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
          goto LABEL_127;
        }

        if (!*v146)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_20BC702CC(*v146 + v52[9] * v107, *v146 + v52[9] * *&v24[16 * v68 + 32], *v146 + v52[9] * v108, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_20B6A07A0(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v163 = v24;
        sub_20B6A0714(v68);
        v24 = v163;
        v65 = *(v163 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v146[1];
    v23 = v142;
    v13 = v52;
    if (v142 >= v22)
    {
      goto LABEL_96;
    }
  }

  v135 = v24;
  v136 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v151 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v148 = -v111;
  v139 = v23;
  v113 = (v23 - v41);
  v149 = v110;
  v140 = v111;
  v114 = v110 + v41 * v111;
  v142 = v61;
LABEL_87:
  v147 = v41;
  v143 = v114;
  v144 = v113;
  v115 = v114;
  v145 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v161;
    v117 = v151;
    (v151)(v161, v115, v12, v20);
    v118 = v157;
    v117(v157, v116, v12);
    v119 = v158;
    sub_20C1373C4();
    v120 = v159;
    sub_20C1373C4();
    LODWORD(v162) = sub_20C132E04();
    v121 = *v154;
    v122 = v120;
    v123 = v160;
    (*v154)(v122, v160);
    v124 = v119;
    v12 = v156;
    v121(v124, v123);
    v125 = *v153;
    (*v153)(v118, v12);
    v125(v52, v12);
    if ((v162 & 1) == 0)
    {
LABEL_86:
      v41 = v147 + 1;
      v112 = &v145[v140];
      v113 = v144 - 1;
      v62 = v142;
      v114 = v143 + v140;
      if (v147 + 1 != v142)
      {
        goto LABEL_87;
      }

      v5 = v136;
      v13 = v137;
      v24 = v135;
      v23 = v139;
      if (v142 < v139)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v149)
    {
      break;
    }

    v126 = *v152;
    v127 = v150;
    (*v152)(v150, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v148 + v116;
    v115 += v148;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_20BC702CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v67 = sub_20C132E94();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v55 - v10;
  v71 = sub_20C137404();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v55 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v75 = a1;
  v74 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v20;
    if (v20 >= 1)
    {
      v38 = -v16;
      v59 = (v7 + 8);
      v60 = (v11 + 16);
      v57 = a4;
      v58 = (v11 + 8);
      v39 = v37;
      v70 = a1;
      v61 = -v16;
      v40 = v71;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            v43 = v72;
            if (v41 <= a1)
            {
              v75 = v41;
              v73 = v55;
              goto LABEL_59;
            }

            v56 = v37;
            v72 += v38;
            v44 = v39 + v38;
            v45 = *v60;
            (*v60)();
            v46 = v64;
            (v45)(v64, v42, v40);
            v47 = v65;
            sub_20C1373C4();
            v48 = v66;
            sub_20C1373C4();
            v68 = sub_20C132E04();
            v49 = *v59;
            v50 = v48;
            v51 = v67;
            (*v59)(v50, v67);
            v49(v47, v51);
            v52 = *v58;
            (*v58)(v46, v40);
            v52(v69, v40);
            if (v68)
            {
              break;
            }

            v37 = v44;
            v53 = v57;
            if (v43 < v39 || v72 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v38 = v61;
            }

            else
            {
              v42 = v63;
              v38 = v61;
              if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v44;
            a1 = v70;
            v41 = v62;
            if (v44 <= v53)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          v54 = v57;
          if (v43 < v62 || v72 >= v62)
          {
            break;
          }

          a2 = v63;
          a1 = v70;
          v37 = v56;
          v38 = v61;
          if (v43 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v70;
        v37 = v56;
        v38 = v61;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v73 = a4 + v19;
    if (v19 >= 1 && a2 < v72)
    {
      v22 = *(v11 + 16);
      v59 = (v7 + 8);
      v60 = v22;
      v61 = v16;
      v62 = v11 + 16;
      v58 = (v11 + 8);
      v23 = v71;
      do
      {
        v70 = a1;
        v24 = v69;
        v25 = v60;
        (v60)(v69, a2, v23);
        v26 = v64;
        (v25)(v64, a4, v23);
        v27 = v65;
        sub_20C1373C4();
        v28 = v66;
        sub_20C1373C4();
        v68 = sub_20C132E04();
        v29 = a2;
        v30 = *v59;
        v31 = v28;
        v32 = a4;
        v33 = v67;
        (*v59)(v31, v67);
        v30(v27, v33);
        v34 = *v58;
        (*v58)(v26, v23);
        v34(v24, v23);
        if (v68)
        {
          v35 = v61;
          a2 = v29 + v61;
          v36 = v70;
          a4 = v32;
          if (v70 < v29 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v61;
          a4 = v32 + v61;
          v36 = v70;
          if (v70 < v32 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = a4;
        }

        a1 = v36 + v35;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_20B6A08E8(&v75, &v74, &v73);
}

unint64_t *sub_20BC709A8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20BC70A50(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

void sub_20BC70A50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  v35 = a5;
  v36 = a4;
  v29 = a1;
  v6 = sub_20C137404();
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v33 = v7;
  v34 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v32 = v7 + 16;
  v30 = 0;
  v31 = (v7 + 8);
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_12:
    v23 = v20 | (v11 << 6);
    (*(v33 + 16))(v10, *(v34 + 48) + *(v33 + 72) * v23, v6, v8);
    if (sub_20C1373F4() == v36 && v24 == v35)
    {

      (*v31)(v10, v6);
      goto LABEL_15;
    }

    v19 = sub_20C13DFF4();

    (*v31)(v10, v6);
    if (v19)
    {
LABEL_15:
      *(v29 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_18:
        v26 = v34;

        sub_20BC0F700(v29, v28, v30, v26);
        return;
      }
    }
  }

  v21 = v11;
  while (1)
  {
    v11 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_18;
    }

    v22 = *(v13 + 8 * v11);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v17 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_20BC70CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = a2;
  v38 = *MEMORY[0x277D85DE8];
  v37 = sub_20C137404();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v10 = v8 & 0x3F;
  v11 = ((1 << v8) + 63) >> 6;
  v12 = 8 * v11;
  v35 = a3;

  if (v10 > 0xD)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v28 = v11;
    v29 = v4;
    v27 = &v27;
    MEMORY[0x28223BE20](v13);
    v30 = &v27 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v12);
    v14 = 0;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v11 = v16 & *(a1 + 56);
    v4 = (v15 + 63) >> 6;
    v33 = v7 + 16;
    v34 = v7;
    v31 = 0;
    v32 = (v7 + 8);
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v20 = v17 | (v14 << 6);
      v7 = a1;
      (*(v34 + 16))(v9, *(a1 + 48) + *(v34 + 72) * v20, v37);
      if (sub_20C1373F4() == v36 && v21 == v35)
      {

        (*v32)(v9, v37);
        goto LABEL_16;
      }

      v12 = sub_20C13DFF4();

      (*v32)(v9, v37);
      if (v12)
      {
LABEL_16:
        *&v30[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_19:
          v23 = sub_20BC0F700(v30, v28, v31, a1);

          return v23;
        }
      }
    }

    v18 = v14;
    while (1)
    {
      v14 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v14 >= v4)
      {
        goto LABEL_19;
      }

      v19 = *(a1 + 56 + 8 * v14);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v11 = (v19 - 1) & v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v25 = swift_slowAlloc();
  v26 = v35;

  v23 = sub_20BC709A8(v25, v11, a1, v36, v26);

  MEMORY[0x20F2F6A40](v25, -1, -1);

  return v23;
}

uint64_t sub_20BC71070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingWorkoutCompleted();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BC710D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingWorkoutCompleted();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BC71138(uint64_t a1)
{
  v4 = *(type metadata accessor for RemoteBrowsingWorkoutCompleted() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20B52AC14;

  return sub_20BC6CFDC(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for RemoteBrowsingWorkoutCompleted();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = sub_20C133D84();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = *(v1 + 28);
  v9 = sub_20C133B04();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v5 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = *(v1 + 32);
  v12 = sub_20C135B74();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20BC714A0(uint64_t a1)
{
  v4 = *(type metadata accessor for RemoteBrowsingWorkoutCompleted() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20B52A9D4;

  return sub_20BC6D0EC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20BC71598(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = v7;
  *(v8 + 56) = a4;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 32) = a2;
  *(v8 + 24) = a3;
  *(v8 + 16) = a1;
  v9 = sub_20C13B0C4();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  v10 = sub_20C137294();
  *(v8 + 96) = v10;
  *(v8 + 104) = *(v10 - 8);
  *(v8 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770CE0);
  *(v8 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  *(v8 + 128) = swift_task_alloc();
  v11 = sub_20C136104();
  *(v8 + 136) = v11;
  *(v8 + 144) = *(v11 - 8);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  *(v8 + 168) = v12;
  *(v8 + 176) = *(v12 - 8);
  *(v8 + 184) = swift_task_alloc();
  v13 = sub_20C134104();
  *(v8 + 192) = v13;
  *(v8 + 200) = *(v13 - 8);
  *(v8 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CBF0);
  *(v8 + 216) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772270);
  *(v8 + 224) = v14;
  *(v8 + 232) = *(v14 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CBF8);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CC00);
  *(v8 + 312) = swift_task_alloc();
  v15 = sub_20C133154();
  *(v8 + 320) = v15;
  *(v8 + 328) = *(v15 - 8);
  *(v8 + 336) = swift_task_alloc();
  v16 = sub_20C133594();
  *(v8 + 344) = v16;
  *(v8 + 352) = *(v16 - 8);
  *(v8 + 360) = swift_task_alloc();
  v17 = sub_20C132E94();
  *(v8 + 368) = v17;
  *(v8 + 376) = *(v17 - 8);
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  v18 = sub_20C133954();
  *(v8 + 400) = v18;
  *(v8 + 408) = *(v18 - 8);
  *(v8 + 416) = swift_task_alloc();
  v19 = sub_20C13BB84();
  *(v8 + 424) = v19;
  *(v8 + 432) = *(v19 - 8);
  *(v8 + 440) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BC71B90, 0, 0);
}

uint64_t sub_20BC71B90()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v4 = v0[8];
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  v5 = v4[16];
  v6 = v4[17];
  __swift_project_boxed_opaque_existential_1(v4 + 13, v5);
  v7 = swift_task_alloc();
  v0[56] = v7;
  *v7 = v0;
  v7[1] = sub_20BC71CB0;
  v8 = v0[52];

  return MEMORY[0x2821ADE88](v8, v5, v6);
}

uint64_t sub_20BC71CB0()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_20BC72F68;
  }

  else
  {
    v2 = sub_20BC71DC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BC71DC4()
{
  v1 = v0[45];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[41];
  v5 = v0[42];
  v6 = v0[40];
  sub_20C133944();
  sub_20C133014();
  sub_20C133564();
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v1, v2);
  sub_20C132E64();
  sub_20BC730FC(&qword_27C763ED0, MEMORY[0x277CC9578]);
  if ((sub_20C13C834() & 1) == 0)
  {
    v13 = sub_20C13C844();
    if (v13)
    {
      v21 = v0[48];
      v22 = v0[46];
      v23 = v0[47];
      v24 = v0[39];
      v85 = v0[38];
      v25 = v0[36];
      v26 = v0[37];
      v27 = v0[35];
      v82 = v0[28];
      v28 = v23[2];
      v28(v26, v0[49], v22);
      v28(v26 + *(v27 + 48), v21, v22);
      sub_20B52F9E8(v26, v25, &qword_27C76CBF8);
      v29 = *(v27 + 48);
      v30 = v23[4];
      v30(v24, v25, v22);
      v31 = v23[1];
      v0[58] = v31;
      v0[59] = (v23 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31(v25 + v29, v22);
      sub_20B5DF134(v26, v25, &qword_27C76CBF8);
      v30(v24 + *(v85 + 36), v25 + *(v27 + 48), v22);
      v79 = v31;
      v31(v25, v22);
      sub_20BC73144();
      v32 = sub_20C133844();
      v33 = v32 + 64;
      v34 = -1;
      v35 = -1 << *(v32 + 32);
      if (-v35 < 64)
      {
        v34 = ~(-1 << -v35);
      }

      v36 = v34 & *(v32 + 64);
      v37 = (63 - v35) >> 6;
      v83 = v32;

      v38 = 0;
      v80 = v37;
      v81 = v33;
      if (v36)
      {
        while (1)
        {
          v39 = v38;
LABEL_11:
          v41 = v0[32];
          v40 = v0[33];
          v84 = v0[31];
          v87 = v0[6];
          v86 = v0[5];
          v42 = __clz(__rbit64(v36)) | (v39 << 6);
          v43 = *(v83 + 48);
          v44 = sub_20C135C54();
          v45 = *(v44 - 8);
          (*(v45 + 16))(v40, v43 + *(v45 + 72) * v42, v44);
          v46 = (*(v83 + 56) + 16 * v42);
          v47 = *v46;
          v48 = v46[1];
          v49 = (v40 + *(v82 + 48));
          *v49 = v47;
          v49[1] = v48;
          sub_20B5DF134(v40, v41, &unk_27C772270);
          sub_20B52F9E8(v41, v84, &unk_27C772270);

          v50 = sub_20C1367E4();
          v52 = v51;

          v53 = v50;
          v54 = v0[31];
          if (v53 == v86 && v52 == v87)
          {
            break;
          }

          v56 = sub_20C13DFF4();

          (*(v45 + 8))(v54, v44);
          if (v56)
          {
            goto LABEL_20;
          }

          v36 &= v36 - 1;
          v13 = sub_20B520158(v0[32], &unk_27C772270);
          v38 = v39;
          v37 = v80;
          v33 = v81;
          if (!v36)
          {
            goto LABEL_8;
          }
        }

        (*(v45 + 8))(v54, v44);
LABEL_20:

        v60 = v0[28];
        v61 = v0[29];
        v62 = v0[27];
        sub_20B5DF134(v0[32], v62, &unk_27C772270);
        (*(v61 + 56))(v62, 0, 1, v60);
LABEL_21:
        v63 = v0[28];
        v64 = v0[29];
        v65 = v0[27];

        if ((*(v64 + 48))(v65, 1, v63) == 1)
        {
          v67 = v0[51];
          v66 = v0[52];
          v69 = v0[49];
          v68 = v0[50];
          v70 = v0[48];
          v71 = v0[46];
          v72 = v0[27];
          sub_20B520158(v0[39], &qword_27C76CC00);
          v79(v70, v71);
          v79(v69, v71);
          (*(v67 + 8))(v66, v68);
          sub_20B520158(v72, &qword_27C76CBF0);
          goto LABEL_23;
        }

        v75 = v0[23];
        v76 = v0[8];
        sub_20B5DF134(v0[27], v0[34], &unk_27C772270);
        __swift_project_boxed_opaque_existential_1((v76 + 16), *(v76 + 40));
        sub_20C1398E4();
        v77 = swift_task_alloc();
        v0[60] = v77;
        *(v77 + 16) = "SeymourUI/RemoteBrowsingCompletedWorkoutObserver.swift";
        *(v77 + 24) = 54;
        *(v77 + 32) = 2;
        *(v77 + 40) = 159;
        *(v77 + 48) = v75;
        v78 = swift_task_alloc();
        v0[61] = v78;
        *v78 = v0;
        v78[1] = sub_20BC72658;
        v13 = v0[26];
        v20 = v0[24];
        v18 = sub_20BC731AC;
        v17 = 0x800000020C192D10;
        v14 = 0;
        v15 = 0;
        v16 = 0xD000000000000013;
        v19 = v77;

        return MEMORY[0x2822008A0](v13, v14, v15, v16, v17, v18, v19, v20);
      }

LABEL_8:
      while (1)
      {
        v39 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v39 >= v37)
        {
          v57 = v0[28];
          v58 = v0[29];
          v59 = v0[27];

          (*(v58 + 56))(v59, 1, 1, v57);
          goto LABEL_21;
        }

        v36 = *(v33 + 8 * v39);
        ++v38;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
    return MEMORY[0x2822008A0](v13, v14, v15, v16, v17, v18, v19, v20);
  }

  v8 = v0[51];
  v7 = v0[52];
  v10 = v0[49];
  v9 = v0[50];
  v11 = v0[46];
  v12 = *(v0[47] + 8);
  v12(v0[48], v11);
  v12(v10, v11);
  (*(v8 + 8))(v7, v9);
LABEL_23:

  v73 = v0[1];

  return v73();
}

uint64_t sub_20BC72658()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = sub_20BC72D3C;
  }

  else
  {
    (*(v2[22] + 8))(v2[23], v2[21]);
    v3 = sub_20BC727A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BC727A8()
{
  v1 = v0[16];
  v2 = v0[4];
  sub_20C1340D4();
  sub_20B52F9E8(v2, v1, &qword_27C768B30);
  v3 = sub_20C133B04();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[16];
  if (v5 == 1)
  {
    sub_20B520158(v0[16], &qword_27C768B30);
  }

  else
  {
    sub_20C133AF4();
    (*(v4 + 8))(v6, v3);
  }

  v30 = v0[58];
  v31 = v0[51];
  v32 = v0[50];
  v28 = v0[48];
  v29 = v0[49];
  v27 = v0[46];
  v25 = v0[52];
  v26 = v0[39];
  v36 = v0[34];
  v7 = v0[30];
  v22 = v0[25];
  v23 = v0[24];
  v24 = v0[26];
  v35 = v0[20];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[19];
  v8 = v0[15];
  v9 = v0[13];
  v33 = v0[14];
  v34 = v0[12];
  v11 = v0[10];
  v10 = v0[11];
  v20 = v0[9];
  v21 = v0[8];

  sub_20C133804();
  v12 = sub_20C132EE4();
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  sub_20C1360B4();
  sub_20B52F9E8(v36, v7, &unk_27C772270);

  (*(v17 + 16))(v19, v35, v18);
  sub_20C137274();
  (*(v9 + 16))(v10, v33, v34);
  (*(v9 + 56))(v10, 0, 1, v34);
  v13 = *MEMORY[0x277D4F6A8];
  v14 = sub_20C13B254();
  (*(*(v14 - 8) + 104))(v10, v13, v14);
  (*(v11 + 104))(v10, *MEMORY[0x277D4F518], v20);
  __swift_project_boxed_opaque_existential_1((v21 + 56), *(v21 + 80));
  sub_20C13B2A4();
  (*(v11 + 8))(v10, v20);
  (*(v9 + 8))(v33, v34);
  (*(v17 + 8))(v35, v18);
  (*(v22 + 8))(v24, v23);
  sub_20B520158(v36, &unk_27C772270);
  sub_20B520158(v26, &qword_27C76CC00);
  v30(v28, v27);
  v30(v29, v27);
  (*(v31 + 8))(v25, v32);

  v15 = v0[1];

  return v15();
}

uint64_t sub_20BC72D3C()
{
  v1 = v0[58];
  v2 = v0[51];
  v11 = v0[52];
  v4 = v0[49];
  v3 = v0[50];
  v5 = v0[48];
  v6 = v0[46];
  v7 = v0[39];
  v8 = v0[34];
  (*(v0[22] + 8))(v0[23], v0[21]);
  sub_20B520158(v8, &unk_27C772270);
  sub_20B520158(v7, &qword_27C76CC00);
  v1(v5, v6);
  v1(v4, v6);
  (*(v2 + 8))(v11, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20BC72F68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BC730FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20BC73144()
{
  result = qword_27C76CC08;
  if (!qword_27C76CC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76CC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76CC08);
  }

  return result;
}

void sub_20BC731D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = objc_allocWithZone(type metadata accessor for TextInputController());
  v7 = swift_unknownObjectRetain();
  v8 = sub_20BAF2DCC(v7, a3);
  [v4 presentViewController:v8 animated:1 completion:0];
}

void sub_20BC73280(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = objc_allocWithZone(type metadata accessor for TextInputController());
  v6 = swift_unknownObjectRetain();
  v7 = sub_20BAF2DCC(v6, a2);
  [v3 presentViewController:v7 animated:1 completion:0];
}

uint64_t sub_20BC73310(void *a1)
{
  v2 = type metadata accessor for ShelfItemX();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v22 = type metadata accessor for WorkoutPlanWeekdayCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76CCB0);
  sub_20C13C9D4();
  v9 = sub_20C13C914();
  v10 = sub_20C1331B4();
  v11 = [a1 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v10];

  swift_getObjectType();
  if (!swift_conformsToProtocol2() || !v11)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return v11;
  }

  v13 = *(Strong + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_shelves);
  v14 = Strong;

  v15 = sub_20C133234();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v15 >= *(v13 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = *(v13 + 16 * v15 + 32);
  swift_unknownObjectRetain();

  v17 = *(v16 + 32);
  if (!v17)
  {
    swift_unknownObjectRelease();
    return v11;
  }

  v18 = sub_20C133224();
  if ((v18 & 0x8000000000000000) == 0)
  {
    if (v18 < *(v17 + 16))
    {
      sub_20B8D1410(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v5);

      sub_20BC74A08(v5, v8, type metadata accessor for ShelfItemX);
      sub_20BC03B68(v8);
      swift_unknownObjectRelease();
      sub_20BC74A70(v8, type metadata accessor for ShelfItemX);
      return v11;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_20C13DC94();

  v22 = 0xD000000000000027;
  v23 = 0x800000020C1ADD00;
  sub_20C133244();
  sub_20BC73EC0();
  v20 = sub_20C13DFA4();
  MEMORY[0x20F2F4230](v20);

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

id sub_20BC73660(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_collectionView);

    [v5 adjustedContentInset];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = *MEMORY[0x277D768C8];
    v9 = *(MEMORY[0x277D768C8] + 16);
  }

  v10 = objc_opt_self();
  v11 = [v10 fractionalWidthDimension_];
  [objc_msgSend(a2 container)];
  v13 = v12;
  swift_unknownObjectRelease();
  v14 = [v10 absoluteDimension_];
  v15 = [objc_opt_self() sizeWithWidthDimension:v11 heightDimension:v14];

  v16 = [objc_opt_self() itemWithLayoutSize_];
  v17 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20C14F580;
  *(v18 + 32) = v16;
  sub_20BC73F18();
  v19 = v16;
  v20 = sub_20C13CC54();

  v21 = [v17 horizontalGroupWithLayoutSize:v15 subitems:v20];

  v22 = [objc_opt_self() sectionWithGroup_];
  v23 = [v22 orthogonalScrollingProperties];
  [v23 setBounce_];

  [v22 setOrthogonalScrollingBehavior_];
  [v22 setContentInsets_];

  return v22;
}

id sub_20BC73958()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogPageX();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BC73A4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;

  v4 = sub_20C133234();
  if (*(v3 + 16) && (sub_20B65AFAC(v4), (v5 & 1) != 0))
  {
    v6 = sub_20C133234();
    v8 = sub_20BC4820C(v21, v6);
    if (*v7)
    {
      v9 = v7;
      v10 = sub_20C133224();
      v11 = *v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v9 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_20BC08130(0, *(v11 + 2) + 1, 1, v11);
        *v9 = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v20 = sub_20BC08130((v13 > 1), v14 + 1, 1, v11);
        v15 = v14 + 1;
        v11 = v20;
        *v9 = v20;
      }

      *(v11 + 2) = v15;
      *&v11[8 * v14 + 32] = v10;
      result = (v8)(v21, 0);
    }

    else
    {
      result = (v8)(v21, 0);
    }
  }

  else
  {
    v17 = sub_20C133234();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768728);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_20C14F980;
    *(v18 + 32) = sub_20C133224();
    v19 = swift_isUniquelyReferenced_nonNull_native();
    result = sub_20B91E4E0(v18, v17, v19);
    v22 = v3;
  }

  *a2 = v22;
  return result;
}

uint64_t sub_20BC73DA4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = sub_20C133244();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_20BC73EC0()
{
  result = qword_27C772940;
  if (!qword_27C772940)
  {
    sub_20C133244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772940);
  }

  return result;
}

unint64_t sub_20BC73F18()
{
  result = qword_27C764D08;
  if (!qword_27C764D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C764D08);
  }

  return result;
}

void sub_20BC73F64(uint64_t a1)
{
  v2 = type metadata accessor for HostedContentIdentifier();
  v50 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v38 - v5;
  v7 = sub_20C133954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F98];
  v55[0] = MEMORY[0x277D84F98];
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(sub_20C133244() - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    do
    {
      sub_20BC73A4C(v55, &v56);

      v10 = v56;
      v55[0] = v56;
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  v38[1] = 0;
  v15 = 0;
  v16 = v10 + 64;
  v17 = 1 << *(v10 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v10 + 64);
  v20 = (v17 + 63) >> 6;
  v45 = (v8 + 48);
  v46 = OBJC_IVAR____TtC9SeymourUI12CatalogPageX_shelves;
  v48 = v10 + 64;
  v49 = (v8 + 16);
  v41 = (v8 + 8);
  v42 = (v8 + 32);
  v43 = v10;
  v44 = v20;
  v39 = v6;
  v52 = v7;
  if (v19)
  {
LABEL_13:
    while (1)
    {
      v22 = (v15 << 9) | (8 * __clz(__rbit64(v19)));
      v23 = *(*(v10 + 48) + v22);
      if ((v23 & 0x8000000000000000) != 0)
      {
        break;
      }

      v24 = *(v47 + v46);
      if (v23 >= *(v24 + 16))
      {
        goto LABEL_32;
      }

      v19 &= v19 - 1;
      v25 = *(*(v10 + 56) + v22);
      v26 = v6;
      v27 = v7;
      v28 = *(v24 + 16 * v23 + 32);
      v29 = OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_workoutPlan;
      swift_beginAccess();
      v54 = v28;
      v30 = v28 + v29;
      v7 = v27;
      v6 = v26;
      sub_20B52F9E8(v30, v26, &unk_27C76A970);
      if ((*v45)(v26, 1, v7) == 1)
      {
        sub_20B520158(v26, &unk_27C76A970);
        v16 = v48;
        if (!v19)
        {
          goto LABEL_9;
        }
      }

      else
      {
        (*v42)(v53, v26, v7);
        v31 = *(v25 + 16);
        v16 = v48;
        if (v31)
        {
          v56 = MEMORY[0x277D84F90];
          swift_unknownObjectRetain();

          sub_20BB5E7C4(0, v31, 0);
          v32 = v56;
          v51 = OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_completedReferencesMetrics;
          v33 = 32;
          v34 = v40;
          do
          {
            v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0) + 64);
            *v34 = *(v54 + v51);

            sub_20C1351F4();
            (*v49)(&v34[v35], v53, v52);
            v56 = v32;
            v37 = *(v32 + 16);
            v36 = *(v32 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_20BB5E7C4(v36 > 1, v37 + 1, 1);
              v34 = v40;
              v32 = v56;
            }

            *(v32 + 16) = v37 + 1;
            sub_20BC74A08(v34, v32 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v37, type metadata accessor for HostedContentIdentifier);
            v33 += 8;
            --v31;
          }

          while (v31);

          v6 = v39;
          v7 = v52;
          v16 = v48;
          v20 = v44;
        }

        else
        {
          swift_unknownObjectRetain();
          v32 = MEMORY[0x277D84F90];
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_20BC67EC0(v32);
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          v20 = v44;
        }

        swift_unknownObjectRelease();
        (*v41)(v53, v7);
        v10 = v43;
        if (!v19)
        {
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
LABEL_9:
    while (1)
    {
      v21 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v21 >= v20)
      {

        return;
      }

      v19 = *(v16 + 8 * v21);
      ++v15;
      if (v19)
      {
        v15 = v21;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_20BC74530(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76CCC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for HostedContentIdentifier();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkoutPlanWeekdayCell();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanWeekdayCell_hostedContentIdentifier;
    v11 = v9;
    swift_beginAccess();
    sub_20B52F9E8(v11 + v10, v4, &unk_27C76CCC0);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_20B520158(v4, &unk_27C76CCC0);
      return;
    }

    sub_20BC74A08(v4, v8, type metadata accessor for HostedContentIdentifier);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = a1;
      v13 = sub_20BC67DAC(v8);
      swift_unknownObjectRelease();
      if (!v13)
      {
        sub_20BC74A70(v8, type metadata accessor for HostedContentIdentifier);

        return;
      }

      if (swift_dynamicCastClass())
      {
        sub_20BC03390(v13);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [v13 didMoveToParentViewController_];

        swift_unknownObjectRelease();
        v12 = v13;
      }

      else
      {
      }
    }

    sub_20BC74A70(v8, type metadata accessor for HostedContentIdentifier);
  }
}

void sub_20BC747D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76CCC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  type metadata accessor for WorkoutPlanWeekdayCell();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanWeekdayCell_hostedContent);
    if (v6)
    {
      v7 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanWeekdayCell_hostedContentIdentifier;
      v8 = v5;
      swift_beginAccess();
      sub_20B52F9E8(v8 + v7, v4, &unk_27C76CCC0);
      v9 = type metadata accessor for HostedContentIdentifier();
      if ((*(*(v9 - 8) + 48))(v4, 1, v9) == 1)
      {
        sub_20B520158(v4, &unk_27C76CCC0);
      }

      else
      {
        v10 = a1;
        v11 = v6;
        sub_20B520158(v4, &unk_27C76CCC0);
        if (swift_dynamicCastClass())
        {
          v12 = v10;
          if ((sub_20BC03184() & 1) == 0)
          {
            goto LABEL_11;
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [v11 willMoveToParentViewController_];
            swift_unknownObjectRelease();
          }

          sub_20BC03770();
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_unknownObjectRelease();
            [v11 removeFromParentViewController];
          }

          else
          {
LABEL_11:
          }
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_20BC74A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BC74A70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BC74AD0()
{
  result = sub_20C133E24();
  if (v1 <= 0x3F)
  {
    result = sub_20C135524();
    if (v2 <= 0x3F)
    {
      result = sub_20C13D914();
      if (v3 <= 0x3F)
      {
        result = sub_20C134EC4();
        if (v4 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_20BC74CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t *))
{
  v12 = *(*a5 + 224);
  v29 = MEMORY[0x277D84F90];

  v14 = a6(v13, a5, &v29);

  *(a5 + v12) = v29;

  v15 = *(a5 + *(*a5 + 200));
  if ((v15 & 0x40) != 0)
  {
    v16 = (v15 & 0x100) != 0 || *(*(a5 + v12) + 16) != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AE20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v19 = 0xF000000000000007;
  if (v16)
  {
    v19 = v17 | 0x8000000000000003;
  }

  *(inited + 32) = v19;

  v20 = sub_20BEF68DC(v14);

  v28 = inited;
  result = sub_20B8D9550(v20);
  v22 = 0;
  v23 = *(v28 + 16);
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v23 == v22)
    {

      return v24;
    }

    if (v22 >= *(v28 + 16))
    {
      break;
    }

    v25 = *(v28 + 8 * v22++ + 32);
    if ((~v25 & 0xF000000000000007) != 0)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v24 + 16) + 1, 1, v24);
        v24 = result;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_20BC05D3C((v26 > 1), v27 + 1, 1, v24);
        v24 = result;
      }

      *(v24 + 16) = v27 + 1;
      *(v24 + 8 * v27 + 32) = v25;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BC74F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t *, uint64_t))
{
  v14 = *(*a5 + 224);
  v31 = MEMORY[0x277D84F90];

  v16 = a7(v15, a5, &v31, a6);

  *(a5 + v14) = v31;

  v17 = *(a5 + *(*a5 + 200));
  if ((v17 & 0x40) != 0)
  {
    v18 = (v17 & 0x100) != 0 || *(*(a5 + v14) + 16) != 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AE20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v21 = 0xF000000000000007;
  if (v18)
  {
    v21 = v19 | 0x8000000000000003;
  }

  *(inited + 32) = v21;

  v22 = sub_20BEF68DC(v16);

  v30 = inited;
  result = sub_20B8D9550(v22);
  v24 = 0;
  v25 = *(v30 + 16);
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v25 == v24)
    {

      return v26;
    }

    if (v24 >= *(v30 + 16))
    {
      break;
    }

    v27 = *(v30 + 8 * v24++ + 32);
    if ((~v27 & 0xF000000000000007) != 0)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v26 + 16) + 1, 1, v26);
        v26 = result;
      }

      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_20BC05D3C((v28 > 1), v29 + 1, 1, v26);
        v26 = result;
      }

      *(v26 + 16) = v29 + 1;
      *(v26 + 8 * v29 + 32) = v27;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_20BC75208()
{
  swift_unknownObjectRelease();

  sub_20B583ECC(v0[6]);
  sub_20B583ECC(v0[8]);
  sub_20B583ECC(v0[10]);
  sub_20B583ECC(v0[12]);
  sub_20B583ECC(v0[14]);
  v1 = qword_27C79BF30;
  v2 = sub_20C133E24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_27C79BF38;
  v4 = sub_20C135524();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = *(*v0 + 176);
  v7 = sub_20C13D914();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + *(*v0 + 184), v7);
  v8(v0 + *(*v0 + 192), v7);

  v5(v0 + *(*v0 + 232), v4);
  v5(v0 + *(*v0 + 240), v4);
  v9 = *(*v0 + 248);
  v10 = sub_20C134EC4();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t sub_20BC75490()
{
  sub_20BC75208();

  return swift_deallocClassInstance();
}

char *sub_20BC75500(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v42 = a4;
  v43 = a3;
  v41 = a2;
  v44 = sub_20C138244();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AC8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v40 = &v32 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = *(v5 + 16);
  v12 = v5 + 16;
  v14 = *(v12 + 56);
  v36 = (*(v12 + 64) + 32) & ~*(v12 + 64);
  v37 = v13;
  v15 = a1 + v36;
  v33 = (v12 + 16);
  v34 = (v12 + 40);
  v16 = MEMORY[0x277D84F90];
  v38 = v7;
  v39 = v12;
  v35 = v14;
  do
  {
    v17 = v40;
    v18 = v44;
    v19 = v37;
    (v37)(v40, v15, v44, v9);
    (*v34)(v17, 0, 1, v18);
    v20 = sub_20B735E44(v17);
    sub_20B520158(v17, &qword_27C764AC8);
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = sub_20C138234();
    *(v21 + 32) = v22;
    *(v21 + 40) = v42;
    v19(v7, v15, v18);
    v23 = v43;
    v24 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v23 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_20BC05EC0(0, v24[2] + 1, 1, v24);
      *v43 = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_20BC05EC0(v26 > 1, v27 + 1, 1, v24);
      *v43 = v24;
    }

    v24[2] = v27 + 1;
    v28 = v35;
    v7 = v38;
    (*v33)(v24 + v36 + v27 * v35, v38, v44);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_20BC05D3C(0, *(v16 + 2) + 1, 1, v16);
    }

    v30 = *(v16 + 2);
    v29 = *(v16 + 3);
    if (v30 >= v29 >> 1)
    {
      v16 = sub_20BC05D3C((v29 > 1), v30 + 1, 1, v16);
    }

    *(v16 + 2) = v30 + 1;
    *&v16[8 * v30 + 32] = v21 | 6;
    v15 += v28;
    --v11;
  }

  while (v11);
  return v16;
}

char *sub_20BC7584C(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v56 = a3;
  v57 = a2;
  v6 = sub_20C1341A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649A8);
  MEMORY[0x28223BE20](v10 - 8);
  v55 = &v47 - v11;
  v12 = *(a1 + 16);
  v13 = OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_storefrontLocalizer;

  if (v12)
  {
    v53 = (a4 + v13);
    v15 = *(v7 + 16);
    v14 = v7 + 16;
    v61 = v15;
    v16 = *(v14 + 56);
    v52 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v17 = a1 + v52;
    v49 = "DurationFilterOptionsShelf";
    v50 = (v14 + 40);
    v48 = (v14 + 16);
    v62 = MEMORY[0x277D84F90];
    v54 = a4;
    v51 = v16;
    do
    {
      v59 = v17;
      v60 = v12;
      v18 = v55;
      v61(v55, v17, v6);
      (*v50)(v18, 0, 1, v6);

      v58 = sub_20B7344F4(v18);
      sub_20B520158(v18, &qword_27C7649A8);
      sub_20C134194();
      v19 = v53;
      v21 = v20 / 60.0;
      __swift_project_boxed_opaque_existential_1(v53, v53[3]);
      v63 = v21;
      v22 = sub_20C138CA4();
      v24 = v9;
      v25 = v14;
      v26 = v6;
      if (v23)
      {
        v27 = v22;
      }

      else
      {
        v27 = 0;
      }

      if (v23)
      {
        v28 = v23;
      }

      else
      {
        v28 = 0xE000000000000000;
      }

      v29 = v19[3];
      v30 = v19;
      v31 = v59;
      __swift_project_boxed_opaque_existential_1(v30, v29);
      v32 = sub_20C138D34();
      v34 = v33;
      v35 = swift_allocObject();
      *(v35 + 16) = v58;
      *(v35 + 24) = v27;
      *(v35 + 32) = v28;
      v6 = v26;
      v14 = v25;
      v9 = v24;
      *(v35 + 40) = v32;
      *(v35 + 48) = v34;
      v61(v24, v31, v6);
      v36 = v56;
      v37 = *v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v36 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_20BC05E70(0, v37[2] + 1, 1, v37);
        *v56 = v37;
      }

      v40 = v37[2];
      v39 = v37[3];
      if (v40 >= v39 >> 1)
      {
        v37 = sub_20BC05E70(v39 > 1, v40 + 1, 1, v37);
        *v56 = v37;
      }

      v37[2] = v40 + 1;
      v41 = v37 + v52 + v40 * v51;
      v42 = v51;
      (*v48)(v41, v9, v6);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_20BC05D3C(0, *(v62 + 2) + 1, 1, v62);
      }

      v44 = *(v62 + 2);
      v43 = *(v62 + 3);
      if (v44 >= v43 >> 1)
      {
        v62 = sub_20BC05D3C((v43 > 1), v44 + 1, 1, v62);
      }

      v45 = v62;
      *(v62 + 2) = v44 + 1;
      *&v45[8 * v44 + 32] = v35 | 0x1000000000000005;
      v17 = v31 + v42;
      v12 = v60 - 1;
    }

    while (v60 != 1);
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
  }

  return v62;
}

char *sub_20BC75CC4(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v42 = a4;
  v43 = a3;
  v41 = a2;
  v44 = sub_20C1382B4();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A60);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v40 = &v32 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = *(v5 + 16);
  v12 = v5 + 16;
  v36 = (*(v12 + 64) + 32) & ~*(v12 + 64);
  v37 = v13;
  v14 = a1 + v36;
  v35 = (v12 + 40);
  v15 = MEMORY[0x277D84F90];
  v16 = *(v12 + 56);
  v33 = (v12 + 16);
  v34 = v16;
  v38 = v7;
  v39 = v12;
  do
  {
    v17 = v40;
    v18 = v44;
    v19 = v37;
    (v37)(v40, v14, v44, v9);
    (*v35)(v17, 0, 1, v18);
    v20 = sub_20B736B3C(v17);
    sub_20B520158(v17, &qword_27C764A60);
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = sub_20C1382A4();
    *(v21 + 32) = v22;
    *(v21 + 40) = v42;
    v19(v7, v14, v18);
    v23 = v43;
    v24 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v23 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_20BC05EE8(0, v24[2] + 1, 1, v24);
      *v43 = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_20BC05EE8(v26 > 1, v27 + 1, 1, v24);
      *v43 = v24;
    }

    v24[2] = v27 + 1;
    v28 = v34;
    v7 = v38;
    (*v33)(v24 + v36 + v27 * v34, v38, v44);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_20BC05D3C(0, *(v15 + 2) + 1, 1, v15);
    }

    v30 = *(v15 + 2);
    v29 = *(v15 + 3);
    if (v30 >= v29 >> 1)
    {
      v15 = sub_20BC05D3C((v29 > 1), v30 + 1, 1, v15);
    }

    *(v15 + 2) = v30 + 1;
    *&v15[8 * v30 + 32] = v21 | 0x2000000000000001;
    v14 += v28;
    --v11;
  }

  while (v11);
  return v15;
}

uint64_t sub_20BC76018(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  v64 = a5;
  v65 = a3;
  v81 = a2;
  v82 = sub_20C1334D4();
  v7 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C135654();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v85 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0);
  MEMORY[0x28223BE20](v13 - 8);
  v78 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v67 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A08);
  MEMORY[0x28223BE20](v17 - 8);
  v77 = &v61 - v18;
  v79 = a1;
  v19 = *(a1 + 16);
  v87 = OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_filterConfiguration;

  if (!v19)
  {
    v66 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v21 = 0;
  v80 = (v7 + 16);
  v69 = (v7 + 56);
  v86 = (v11 + 48);
  v84 = (v11 + 8);
  v68 = (v11 + 32);
  v62 = (v7 + 32);
  v66 = MEMORY[0x277D84F90];
  v63 = v9;
  v70 = v19;
  do
  {
    v22 = v21;
    while (1)
    {
      if (v22 >= v19)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        return result;
      }

      if (__OFADD__(v22, 1))
      {
        goto LABEL_35;
      }

      v89 = v22 + 1;
      v76 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v75 = *(v7 + 72);
      v23 = v79 + v76 + v75 * v22;
      v24 = v77;
      v25 = v82;
      v74 = *v80;
      v74(v77, v23, v82);
      (*v69)(v24, 0, 1, v25);

      v73 = sub_20B73852C(v24);
      v26 = v23;
      sub_20B520158(v24, &qword_27C764A08);
      v27 = sub_20C1334B4();
      if (v28)
      {
        v29 = v28;
        v30 = v27;
        v31 = v67;
        sub_20B6232F4(a4 + v87, v67);
        if ((*v86)(v31, 1, v10) == 1)
        {

          sub_20B520158(v31, &qword_27C762AE0);
        }

        else
        {
          v32 = v26;
          v33 = sub_20C135624();
          (*v84)(v31, v10);
          if (*(v33 + 16))
          {
            v34 = sub_20B65AA60(v30, v29);
            v36 = v35;

            if (v36)
            {
              v37 = (*(v33 + 56) + 16 * v34);
              v38 = v37[1];
              v71 = *v37;

              v26 = v32;
              goto LABEL_17;
            }
          }

          else
          {
          }

          v26 = v32;
        }
      }

      v71 = sub_20C1334C4();
      v38 = v39;
LABEL_17:
      v40 = v78;
      sub_20B6232F4(a4 + v87, v78);
      v41 = (*v86)(v40, 1, v10);
      v42 = v85;
      v72 = v26;
      if (v41 == 1)
      {
        break;
      }

      v43 = v38;
      (*v68)(v85, v40, v10);
      v44 = sub_20C1334B4();
      if (v45)
      {
        v46 = v44;
        v47 = v45;
        v48 = sub_20C135614();
        v88[0] = v46;
        v88[1] = v47;
        MEMORY[0x28223BE20](v48);
        *(&v61 - 2) = v88;
        v49 = v83;
        LOBYTE(v46) = sub_20B79692C(sub_20B606650, (&v61 - 4), v48);
        v83 = v49;

        (*v84)(v85, v10);

        v38 = v43;
        if (v46)
        {
          goto LABEL_22;
        }
      }

      else
      {
        (*v84)(v42, v10);
      }

      ++v22;
      v19 = v70;
      if (v89 == v70)
      {
        goto LABEL_33;
      }
    }

    sub_20B520158(v40, &qword_27C762AE0);
LABEL_22:
    v50 = swift_allocObject();
    *(v50 + 16) = v73;
    v51 = v72;
    *(v50 + 24) = v71;
    *(v50 + 32) = v38;
    *(v50 + 40) = v64;
    v52 = v63;
    v74(v63, v51, v82);
    v53 = v65;
    v54 = *v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v53 = v54;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v54 = sub_20BC05F38(0, v54[2] + 1, 1, v54);
      *v65 = v54;
    }

    v57 = v54[2];
    v56 = v54[3];
    if (v57 >= v56 >> 1)
    {
      v54 = sub_20BC05F38(v56 > 1, v57 + 1, 1, v54);
      *v65 = v54;
    }

    v54[2] = v57 + 1;
    (*v62)(v54 + v76 + v57 * v75, v52, v82);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20BC05D3C(0, *(v66 + 2) + 1, 1, v66);
      v66 = result;
    }

    v59 = *(v66 + 2);
    v58 = *(v66 + 3);
    if (v59 >= v58 >> 1)
    {
      result = sub_20BC05D3C((v58 > 1), v59 + 1, 1, v66);
      v66 = result;
    }

    v60 = v66;
    *(v66 + 2) = v59 + 1;
    *&v60[8 * v59 + 32] = v50 | 0x6000000000000007;
    v19 = v70;
    v21 = v89;
  }

  while (v89 != v70);
LABEL_33:

  return v66;
}

void sub_20BC76808(uint64_t a1, uint64_t a2, void **a3)
{
  v36 = a3;
  v42 = a2;
  v44 = sub_20C1365F4();
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A28);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v40 = &v34 - v9;
  v41 = a1;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v43 = v4 + 16;
    v38 = v4 + 56;
    v37 = MEMORY[0x277D84F90];
    v34 = (v4 + 32);
    v35 = v6;
    v39 = v10;
    do
    {
      v12 = v11;
      while (1)
      {
        if (v12 >= v10)
        {
          __break(1u);
LABEL_21:
          __break(1u);
          return;
        }

        if (__OFADD__(v12, 1))
        {
          goto LABEL_21;
        }

        v45 = v12 + 1;
        v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v14 = v40;
        v15 = *(v4 + 72);
        v16 = v41 + v13 + v15 * v12;
        v17 = *(v4 + 16);
        v18 = v44;
        v17(v40, v16, v44, v8);
        v19 = v4;
        (*(v4 + 56))(v14, 0, 1, v18);
        v20 = sub_20B73514C(v14);
        sub_20B520158(v14, &qword_27C764A28);
        v21 = sub_20C1365C4();
        if (*(v21 + 16))
        {
          break;
        }

        ++v12;
        v10 = v39;
        v4 = v19;
        if (v45 == v39)
        {
          return;
        }
      }

      v22 = *(v21 + 32);

      v23 = swift_allocObject();
      *(v23 + 16) = v20;
      *(v23 + 24) = sub_20C1365E4();
      *(v23 + 32) = v24;
      *(v23 + 40) = v22;
      v25 = v35;
      (v17)(v35, v16, v44);
      v26 = v36;
      v27 = *v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v26 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_20BC05E98(0, v27[2] + 1, 1, v27);
        *v36 = v27;
      }

      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_20BC05E98(v29 > 1, v30 + 1, 1, v27);
        *v36 = v27;
      }

      v27[2] = v30 + 1;
      (*v34)(v27 + v13 + v30 * v15, v25, v44);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_20BC05D3C(0, *(v37 + 2) + 1, 1, v37);
      }

      v4 = v19;
      v10 = v39;
      v11 = v45;
      v32 = *(v37 + 2);
      v31 = *(v37 + 3);
      if (v32 >= v31 >> 1)
      {
        v37 = sub_20BC05D3C((v31 > 1), v32 + 1, 1, v37);
      }

      v33 = v37;
      *(v37 + 2) = v32 + 1;
      *&v33[8 * v32 + 32] = v23 | 0x4000000000000006;
    }

    while (v11 != v10);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }
}

char *sub_20BC76BC4(uint64_t a1, uint64_t a2, void **a3)
{
  v40 = a2;
  v41 = a3;
  v42 = sub_20C133A74();
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v39 = &v31 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(v4 + 16);
  v11 = v4 + 16;
  v35 = (*(v11 + 64) + 32) & ~*(v11 + 64);
  v36 = v12;
  v13 = a1 + v35;
  v34 = (v11 + 40);
  v14 = MEMORY[0x277D84F90];
  v15 = *(v11 + 56);
  v32 = (v11 + 16);
  v33 = v15;
  v37 = v6;
  v38 = v11;
  do
  {
    v16 = v39;
    v17 = v42;
    v18 = v36;
    (v36)(v39, v13, v42, v8);
    (*v34)(v16, 0, 1, v17);
    v19 = sub_20B739F1C(v16);
    sub_20B520158(v16, &qword_27C764A40);
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = sub_20C133A54();
    *(v20 + 32) = v21;
    v18(v6, v13, v17);
    v22 = v41;
    v23 = *v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v22 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_20BC05FB0(0, v23[2] + 1, 1, v23);
      *v41 = v23;
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = sub_20BC05FB0(v25 > 1, v26 + 1, 1, v23);
      *v41 = v23;
    }

    v23[2] = v26 + 1;
    v27 = v33;
    v6 = v37;
    (*v32)(v23 + v35 + v26 * v33, v37, v42);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_20BC05D3C(0, *(v14 + 2) + 1, 1, v14);
    }

    v29 = *(v14 + 2);
    v28 = *(v14 + 3);
    if (v29 >= v28 >> 1)
    {
      v14 = sub_20BC05D3C((v28 > 1), v29 + 1, 1, v14);
    }

    *(v14 + 2) = v29 + 1;
    *&v14[8 * v29 + 32] = v20 | 0x7000000000000002;
    v13 += v27;
    --v10;
  }

  while (v10);
  return v14;
}

void sub_20BC76F0C(uint64_t a1, uint64_t a2, void **a3)
{
  v29 = a3;
  v39 = sub_20C134E04();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A88);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v34 = &v28 - v8;
  v35 = v4;
  v9 = 0;
  v10 = *(a1 + 16);
  v36 = a1;
  v37 = v4 + 16;
  v33 = v4 + 56;
  v28 = (v4 + 32);
  v31 = MEMORY[0x277D84F90];
  v38 = v10;
  while (v10 != v9)
  {
    if (v9 >= v10)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    if (__OFADD__(v9, 1))
    {
      goto LABEL_17;
    }

    v32 = v9 + 1;
    v12 = v34;
    v11 = v35;
    v13 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v14 = *(v35 + 72);
    v15 = v36 + v13 + v14 * v9;
    v16 = *(v35 + 16);
    v17 = v39;
    v16(v34, v15, v39, v7);
    (*(v11 + 56))(v12, 0, 1, v17);
    LOBYTE(v17) = sub_20B7337FC(v12);
    sub_20B520158(v12, &qword_27C764A88);
    v18 = sub_20BDF1A08(v15, v17);
    v10 = v38;
    ++v9;
    if ((~v18 & 0xF000000000000007) != 0)
    {
      v19 = v18;
      (v16)(v30, v15, v39);
      v20 = v29;
      v21 = *v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_20BC05E48(0, v21[2] + 1, 1, v21);
        *v29 = v21;
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_20BC05E48(v23 > 1, v24 + 1, 1, v21);
        *v29 = v21;
      }

      v21[2] = v24 + 1;
      (*v28)(v21 + v13 + v24 * v14, v30, v39);
      v25 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_20BC05D3C(0, *(v25 + 2) + 1, 1, v25);
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_20BC05D3C((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      v31 = v25;
      *&v25[8 * v27 + 32] = v19;
      v9 = v32;
      v10 = v38;
    }
  }
}

char *sub_20BC7726C(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v42 = a4;
  v43 = a3;
  v41 = a2;
  v44 = sub_20C1333E4();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v40 = &v32 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = *(v5 + 16);
  v12 = v5 + 16;
  v36 = (*(v12 + 64) + 32) & ~*(v12 + 64);
  v37 = v13;
  v14 = a1 + v36;
  v35 = (v12 + 40);
  v15 = MEMORY[0x277D84F90];
  v16 = *(v12 + 56);
  v33 = (v12 + 16);
  v34 = v16;
  v38 = v7;
  v39 = v12;
  do
  {
    v17 = v40;
    v18 = v44;
    v19 = v37;
    (v37)(v40, v14, v44, v9);
    (*v35)(v17, 0, 1, v18);
    v20 = sub_20B737834(v17);
    sub_20B520158(v17, &qword_27C764AB0);
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = sub_20C1333D4();
    *(v21 + 32) = v22;
    *(v21 + 40) = v42;
    v19(v7, v14, v18);
    v23 = v43;
    v24 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v23 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_20BC05F10(0, v24[2] + 1, 1, v24);
      *v43 = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_20BC05F10(v26 > 1, v27 + 1, 1, v24);
      *v43 = v24;
    }

    v24[2] = v27 + 1;
    v28 = v34;
    v7 = v38;
    (*v33)(v24 + v36 + v27 * v34, v38, v44);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_20BC05D3C(0, *(v15 + 2) + 1, 1, v15);
    }

    v30 = *(v15 + 2);
    v29 = *(v15 + 3);
    if (v30 >= v29 >> 1)
    {
      v15 = sub_20BC05D3C((v29 > 1), v30 + 1, 1, v15);
    }

    *(v15 + 2) = v30 + 1;
    *&v15[8 * v30 + 32] = v21 | 0x3000000000000002;
    v14 += v28;
    --v11;
  }

  while (v11);
  return v15;
}

char *sub_20BC775C0(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v41 = a3;
  v42 = a2;
  v43 = sub_20C1370C4();
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v44 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AF0);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v31 - v9;
  v10 = *(a1 + 16);
  v40 = OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_coordinator;

  if (v10)
  {
    v12 = *(v6 + 16);
    v11 = v6 + 16;
    v35 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v36 = v12;
    v13 = a1 + v35;
    v34 = (v11 + 40);
    v14 = MEMORY[0x277D84F90];
    v15 = *(v11 + 56);
    v32 = (v11 + 16);
    v33 = v15;
    v37 = v11;
    v38 = a4;
    do
    {
      v16 = v39;
      v17 = v43;
      v18 = v36;
      v36(v39, v13, v43);
      (*v34)(v16, 0, 1, v17);

      v19 = sub_20B739224(v16);
      sub_20B520158(v16, &qword_27C764AF0);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = sub_20C1370B4();
      *(v20 + 32) = v21;
      *(v20 + 40) = *(*(*(a4 + v40) + *(**(a4 + v40) + 224)) + 16);
      v18(v44, v13, v17);
      v22 = v41;
      v23 = *v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v22 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_20BC05F88(0, v23[2] + 1, 1, v23);
        *v41 = v23;
      }

      v26 = v23[2];
      v25 = v23[3];
      v27 = v33;
      if (v26 >= v25 >> 1)
      {
        v23 = sub_20BC05F88(v25 > 1, v26 + 1, 1, v23);
        *v41 = v23;
      }

      v23[2] = v26 + 1;
      (*v32)(v23 + v35 + v26 * v27, v44, v43);
      a4 = v38;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_20BC05D3C(0, *(v14 + 2) + 1, 1, v14);
      }

      v29 = *(v14 + 2);
      v28 = *(v14 + 3);
      if (v29 >= v28 >> 1)
      {
        v14 = sub_20BC05D3C((v28 > 1), v29 + 1, 1, v14);
      }

      *(v14 + 2) = v29 + 1;
      *&v14[8 * v29 + 32] = v20 | 0x7000000000000003;
      v13 += v27;
      --v10;
    }

    while (v10);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  return v14;
}

uint64_t sub_20BC7798C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(*a5 + 224);
  v31 = MEMORY[0x277D84F90];

  v15 = sub_20BC76018(v14, a5, &v31, a6, a7);

  *(a5 + v13) = v31;

  v16 = *(a5 + *(*a5 + 200));
  if ((v16 & 0x40) != 0)
  {
    v17 = (v16 & 0x100) != 0 || *(*(a5 + v13) + 16) != 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AE20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v20 = 0xF000000000000007;
  if (v17)
  {
    v20 = v18 | 0x8000000000000003;
  }

  *(inited + 32) = v20;

  v21 = sub_20BEF68DC(v15);

  v30 = inited;
  result = sub_20B8D9550(v21);
  v23 = 0;
  v24 = *(v30 + 16);
  v25 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v24 == v23)
    {

      return v25;
    }

    if (v23 >= *(v30 + 16))
    {
      break;
    }

    v26 = *(v30 + 8 * v23++ + 32);
    if ((~v26 & 0xF000000000000007) != 0)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v25 + 16) + 1, 1, v25);
        v25 = result;
      }

      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_20BC05D3C((v27 > 1), v28 + 1, 1, v25);
        v25 = result;
      }

      *(v25 + 16) = v28 + 1;
      *(v25 + 8 * v28 + 32) = v26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BC77C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t *, uint64_t))
{
  v13 = *(*a5 + 224);
  v31 = MEMORY[0x277D84F90];

  v15 = a7(v14, a5, &v31, a6);

  *(a5 + v13) = v31;

  v16 = *(a5 + *(*a5 + 200));
  if ((v16 & 0x40) != 0)
  {
    v17 = (v16 & 0x100) != 0 || *(*(a5 + v13) + 16) != 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AE20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v20 = 0xF000000000000007;
  if (v17)
  {
    v20 = v18 | 0x8000000000000003;
  }

  *(inited + 32) = v20;

  v21 = sub_20BEF68DC(v15);

  v30 = inited;
  result = sub_20B8D9550(v21);
  v23 = 0;
  v24 = *(v30 + 16);
  v25 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v24 == v23)
    {

      return v25;
    }

    if (v23 >= *(v30 + 16))
    {
      break;
    }

    v26 = *(v30 + 8 * v23++ + 32);
    if ((~v26 & 0xF000000000000007) != 0)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v25 + 16) + 1, 1, v25);
        v25 = result;
      }

      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_20BC05D3C((v27 > 1), v28 + 1, 1, v25);
        v25 = result;
      }

      *(v25 + 16) = v28 + 1;
      *(v25 + 8 * v28 + 32) = v26;
    }
  }

  __break(1u);
  return result;
}

uint64_t RemoteParticipantAccountImageUpdated.altDSID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static RemoteParticipantAccountImageUpdated.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20BC77F80(uint64_t a1, uint64_t (*a2)(void), double (*a3)(uint64_t))
{
  v38 = a3;
  v37 = a2(0);
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v29 - v7;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v29[1] = v3;
  v41 = MEMORY[0x277D84F90];
  v31 = v6;
  sub_20BB5E868(0, v8, 0);
  v9 = v41;
  v40 = v31 + 64;
  result = sub_20C13DAA4();
  v11 = result;
  v12 = v31;
  v13 = 0;
  v34 = v5 + 8;
  v35 = v5 + 16;
  v30 = v31 + 72;
  v32 = v8;
  v33 = v5;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v12 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v40 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v39 = *(v12 + 36);
    v16 = v36;
    v17 = v37;
    v18 = (*(v5 + 16))(v36, *(v12 + 56) + *(v5 + 72) * v11, v37);
    v19 = v38(v18);
    result = (*(v5 + 8))(v16, v17);
    v41 = v9;
    v21 = *(v9 + 16);
    v20 = *(v9 + 24);
    if (v21 >= v20 >> 1)
    {
      result = sub_20BB5E868((v20 > 1), v21 + 1, 1);
      v9 = v41;
    }

    *(v9 + 16) = v21 + 1;
    *(v9 + 8 * v21 + 32) = v19;
    v14 = 1 << *(v12 + 32);
    if (v11 >= v14)
    {
      goto LABEL_22;
    }

    v22 = *(v40 + 8 * v15);
    if ((v22 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v39 != *(v12 + 36))
    {
      goto LABEL_24;
    }

    v23 = v22 & (-2 << (v11 & 0x3F));
    if (v23)
    {
      v14 = __clz(__rbit64(v23)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v5 = v33;
    }

    else
    {
      v24 = v15 << 6;
      v25 = v15 + 1;
      v26 = (v30 + 8 * v15);
      v5 = v33;
      while (v25 < (v14 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_20B526EA4(v11, v39, 0);
          v12 = v31;
          v14 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_20B526EA4(v11, v39, 0);
      v12 = v31;
    }

LABEL_4:
    ++v13;
    v11 = v14;
    if (v13 == v32)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20BC782A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764410);
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v2);
  v52 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v51 - v10;
  MEMORY[0x28223BE20](v11);
  v57 = &v51 - v12;
  v13 = sub_20C134DC4();
  v61 = *(v13 - 8);
  v62 = v13;
  MEMORY[0x28223BE20](v13);
  v60 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  sub_20C13B444();
  sub_20C13BB64();
  v22 = *(v16 + 8);
  result = v22(v21, v15);
  v24 = *(v1 + 504);
  v25 = *(v1 + 456);
  if (v24 >= *(v25 + 16))
  {
    sub_20C13B444();
    v48 = sub_20C13BB74();
    v49 = sub_20C13D1F4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_20B517000, v48, v49, "No current session to present, exiting queued session", v50, 2u);
      MEMORY[0x20F2F6A40](v50, -1, -1);
    }

    v22(v18, v15);
    return sub_20BC7BFA8();
  }

  else if (v24 < 0)
  {
    __break(1u);
  }

  else
  {
    v26 = v60;
    (*(v61 + 16))(v60, v25 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v24, v62);
    v51 = v1;
    sub_20BC7C21C(v26, v6);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BC87ED4;
    *(v28 + 24) = v27;
    v30 = v52;
    v29 = v53;
    v31 = v54;
    (*(v53 + 16))(v52, v6, v54);
    v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v33 = swift_allocObject();
    (*(v29 + 32))(v33 + v32, v30, v31);
    v34 = (v33 + ((v3 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v34 = sub_20B89467C;
    v34[1] = v28;
    v35 = v56;
    sub_20C137C94();
    (*(v29 + 8))(v6, v31);
    v36 = swift_allocObject();
    swift_weakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = sub_20BC87F18;
    *(v37 + 24) = v36;
    v39 = v58;
    v38 = v59;
    v40 = v55;
    (*(v58 + 16))(v55, v35, v59);
    v41 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v42 = swift_allocObject();
    (*(v39 + 32))(v42 + v41, v40, v38);
    v43 = (v42 + ((v8 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v43 = sub_20B5DF204;
    v43[1] = v37;
    v44 = v57;
    sub_20C137C94();
    v45 = *(v39 + 8);
    v45(v35, v38);
    v46 = sub_20C137CB4();
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    v46(sub_20B52347C, v47);

    v45(v44, v38);
    return (*(v61 + 8))(v60, v62);
  }

  return result;
}

uint64_t sub_20BC789AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v10 = MEMORY[0x277D84F90];
  *(v5 + 480) = 0x8000000000000000;
  *(v5 + 488) = v10;
  *(v5 + 496) = v10;
  *(v5 + 504) = 0;
  *(v5 + 512) = sub_20B6B3378(v10);
  *(v5 + 520) = sub_20B6B3564(v10);
  *(v5 + 528) = sub_20B6B3668(v10);
  *(v5 + 536) = 4;
  *(v5 + 544) = 0;
  *(v5 + 552) = 1;
  *(v5 + 560) = xmmword_20C1759C0;
  *(v5 + 576) = 1;
  *(v5 + 584) = 0u;
  type metadata accessor for QueuedSessionPresenter.RemoteDisplayState(0);
  swift_storeEnumTagMultiPayload();
  sub_20C138F44();
  sub_20C133AA4();
  *(v5 + 80) = *&v13[0];
  *(v5 + 208) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v13, v5 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v13, v5 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(v13, v5 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v5 + 216) = v13[0];
  sub_20C133AA4();
  *(v5 + 32) = v13[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7689E0);
  sub_20C133AA4();
  sub_20B51C710(v13, v5 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810);
  sub_20C133AA4();
  sub_20B51C710(v13, v5 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76CDC0);
  sub_20C133AA4();
  sub_20B51C710(v13, v5 + 312);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v13, v5 + 40);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v5 + 352) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(v13, v5 + 360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(v13, v5 + 400);
  *(v5 + 440) = sub_20C13CA04();
  *(v5 + 448) = v11;
  *(v5 + 456) = a2;
  *(v5 + 464) = a3;
  *(v5 + 472) = a4;
  swift_getObjectType();
  sub_20C13AC64();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v13);

  swift_getObjectType();
  sub_20C13AA24();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v13);
  swift_getObjectType();
  sub_20C13A904();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v13);
  swift_getObjectType();
  sub_20C13B2F4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v13);
  swift_getObjectType();
  type metadata accessor for RemoteDisplayConnected();
  swift_allocObject();
  swift_weakInit();
  sub_20BC88820(&qword_27C76B9C0, type metadata accessor for RemoteDisplayConnected);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v13);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();

  sub_20B9C7294();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v13);

  return v5;
}

uint64_t sub_20BC79114()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[7] = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BC79204, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20BC79204()
{

  sub_20BC79274();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_20BC79274()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  result = (*(v3 + 8))(v5, v2);
  v7 = *(v1 + 480);
  v8 = v7 >> 61;
  if ((v7 >> 61) <= 1)
  {
    v9 = *(v1 + 480);
    if (v8)
    {
      return result;
    }
  }

  else
  {
    if (v8 != 2 && v8 != 3)
    {
      return result;
    }

    v9 = v7 & 0x1FFFFFFFFFFFFFFFLL;
  }

  sub_20BC88210(*(v1 + 480));
  sub_20BC7BAF4();
  v10 = *(v1 + 480);
  *(v1 + 480) = v9 | 0x2000000000000000;
  sub_20BC88210(v7);
  sub_20BC7BF70(v10);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20B6A5144();
    swift_unknownObjectRelease();
  }

  sub_20BC809C0(v9);
  return sub_20BC7BF70(v7);
}

uint64_t sub_20BC793FC(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_20C13BB84();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_20C137EA4();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BC79518, 0, 0);
}

uint64_t sub_20BC79518()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_20C13AA14();
    sub_20C13CDA4();
    v0[18] = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BC79628, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20BC79628()
{
  v1 = v0[16];

  sub_20BC79904(v1);
  v0[19] = 0;
  (*(v0[15] + 8))(v0[16], v0[14]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_20BC7971C()
{
  v20 = v0;
  v1 = *(v0 + 152);
  sub_20C13B444();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 96);
    v18 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_20C13E094();
    v12 = sub_20B51E694(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to handle deactivated session with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 88);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_20BC79904(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v4 - 8);
  v178 = &v147 - v5;
  v177 = sub_20C134514();
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v174 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_20C133B04();
  v173 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v172 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_20C137EA4();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v151 = v8;
  v152 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v156 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v9;
  MEMORY[0x28223BE20](v10);
  v169 = &v147 - v11;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v157 = &v147 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BBB0);
  MEMORY[0x28223BE20](v13 - 8);
  v181 = &v147 - v14;
  v180 = type metadata accessor for QueuedSessionPresenter.RemoteDisplayState(0);
  MEMORY[0x28223BE20](v180);
  v168 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v147 - v17;
  v167 = sub_20C135174();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v165 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v147 - v21;
  v23 = sub_20C13BB84();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v170 = &v147 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v147 - v30;
  sub_20C13B444();
  sub_20C13BB64();
  v34 = *(v24 + 8);
  v32 = v24 + 8;
  v33 = v34;
  v34(v31, v23);
  v35 = v2[60];
  if (v35 >> 61 != 1)
  {
    sub_20BC88288();
    swift_allocError();
    *v40 = 0;
    return swift_willThrow();
  }

  v162 = v33;
  v148 = v26;
  v163 = v32;
  v164 = v23;
  v36 = v2 + 67;
  v149 = v35;
  v150 = v35 & 0x1FFFFFFFFFFFFFFFLL;

  v179 = v2;
  sub_20BC7D9D0();
  v37 = a1;
  sub_20C137E44();
  v38 = sub_20C136484();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v22, 1, v38) == 1)
  {
    sub_20B520158(v22, &unk_27C765CB0);
LABEL_9:
    v47 = v179;
    v48 = v37;
    goto LABEL_10;
  }

  v42 = sub_20C136464();
  v44 = v43;
  v46 = v45;
  (*(v39 + 8))(v22, v38);
  if ((v46 & 1) == 0)
  {
    sub_20B583F4C(v42, v44, 0);
    goto LABEL_9;
  }

  v47 = v179;
  v48 = v37;
  if (v42 == 4)
  {
    v49 = v179[70];
    v50 = v179[71];
    v51 = *(v36 + 40);
    v147 = xmmword_20C1759C0;
    *(v179 + 35) = xmmword_20C1759C0;
    *(v36 + 40) = 1;
    sub_20B583F4C(v49, v50, v51);
    v52 = v47[67];
    v53 = v47[68];
    v54 = *(v36 + 16);
    *v36 = v147;
    goto LABEL_11;
  }

LABEL_10:
  v55 = v47[70];
  v56 = v47[71];
  v57 = *(v36 + 40);
  *(v47 + 35) = xmmword_20C1522F0;
  *(v36 + 40) = 1;
  sub_20B583F4C(v55, v56, v57);
  v52 = v47[67];
  v53 = v47[68];
  v54 = *(v36 + 16);
  *(v47 + 67) = 0u;
LABEL_11:
  *(v36 + 16) = 1;
  sub_20B583F4C(v52, v53, v54);
  v58 = v181;
  v59 = OBJC_IVAR____TtC9SeymourUI22QueuedSessionPresenter_remoteDisplayState;
  swift_beginAccess();
  sub_20BC880A0(v47 + v59, v18, type metadata accessor for QueuedSessionPresenter.RemoteDisplayState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_20BC884C0(v18, type metadata accessor for QueuedSessionPresenter.RemoteDisplayState);
  }

  else
  {
    v60 = *(v166 + 32);
    v61 = v48;
    v62 = v165;
    v63 = v18;
    v64 = v167;
    v60(v165, v63, v167);
    v65 = v168;
    v66 = v62;
    v48 = v61;
    v47 = v179;
    v60(v168, v66, v64);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_20BC88870(v65, v47 + v59);
    swift_endAccess();
  }

  sub_20C137DC4();
  v67 = sub_20C134A44();
  v68 = *(v67 - 8);
  if ((*(v68 + 48))(v58, 1, v67) == 1)
  {
    sub_20B520158(v58, &qword_27C76BBB0);
  }

  else
  {
    sub_20C134A34();
    v70 = v69;
    (*(v68 + 8))(v58, v67);
    if (v70)
    {
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v47 + 50, v47[53]);
      sub_20C139724();
      v71 = swift_allocObject();
      swift_weakInit();
      v72 = v154;
      v73 = v152;
      v74 = v155;
      (*(v154 + 16))(v152, v48, v155);
      v75 = (*(v72 + 80) + 16) & ~*(v72 + 80);
      v76 = (v151 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
      v77 = swift_allocObject();
      (*(v72 + 32))(v77 + v75, v73, v74);
      *(v77 + v76) = v71;
      v78 = swift_allocObject();
      *(v78 + 16) = sub_20BC889D0;
      *(v78 + 24) = v77;
      v79 = v158;
      v80 = v156;
      v81 = v159;
      (*(v158 + 16))(v156, v169, v159);
      v82 = (*(v79 + 80) + 16) & ~*(v79 + 80);
      v83 = (v153 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
      v84 = swift_allocObject();
      (*(v79 + 32))(v84 + v82, v80, v81);
      v85 = (v84 + v83);
      *v85 = sub_20B87619C;
      v85[1] = v78;
      v86 = v157;
      sub_20C137C94();
      (*(v79 + 8))(v169, v81);
      v87 = v161;
      v88 = sub_20C137CB4();
      v89 = swift_allocObject();
      *(v89 + 16) = 0;
      *(v89 + 24) = 0;
      v88(sub_20B5DF6DC, v89);

      (*(v160 + 8))(v86, v87);
    }
  }

  sub_20B51CC64(v150 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_standaloneWorkoutTimeProvider, &v182);
  sub_20BC7E058(v48, &v182);
  sub_20BC7E2C8();
  sub_20BC7E53C();
  result = swift_beginAccess();
  v90 = 0;
  v91 = v47[65];
  v92 = 1 << *(v91 + 32);
  v93 = -1;
  if (v92 < 64)
  {
    v93 = ~(-1 << v92);
  }

  v94 = v93 & *(v91 + 64);
  v95 = (v92 + 63) >> 6;
  v96 = 0.0;
  if (v94)
  {
    while (1)
    {
      v97 = v90;
LABEL_27:
      v98 = __clz(__rbit64(v94));
      v94 &= v94 - 1;
      v96 = v96 + *(*(v91 + 56) + ((v97 << 9) | (8 * v98)));
      if (!v94)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
LABEL_23:
    v97 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      __break(1u);
      return result;
    }

    if (v97 >= v95)
    {
      break;
    }

    v94 = *(v91 + 64 + 8 * v97);
    ++v90;
    if (v94)
    {
      v90 = v97;
      goto LABEL_27;
    }
  }

  swift_beginAccess();

  v100 = v171;
  v101 = sub_20BC77F80(v99, MEMORY[0x277D50860], MEMORY[0x277D50858]);

  v102 = *(v101 + 16);
  v103 = 0.0;
  if (v102)
  {
    if (v102 <= 3)
    {
      v104 = 0;
LABEL_35:
      v107 = v102 - v104;
      v108 = (v101 + 8 * v104 + 32);
      do
      {
        v109 = *v108++;
        v103 = v103 + v109;
        --v107;
      }

      while (v107);
      goto LABEL_37;
    }

    v104 = v102 & 0x7FFFFFFFFFFFFFFCLL;
    v105 = (v101 + 48);
    v106 = v102 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v103 = v103 + *(v105 - 2) + *(v105 - 1) + *v105 + v105[1];
      v105 += 4;
      v106 -= 4;
    }

    while (v106);
    if (v102 != v104)
    {
      goto LABEL_35;
    }
  }

LABEL_37:

  swift_beginAccess();

  v111 = sub_20BC77F80(v110, MEMORY[0x277D502A0], MEMORY[0x277D50298]);

  v112 = *(v111 + 16);
  if (!v112)
  {
    goto LABEL_45;
  }

  if (v112 <= 3)
  {
    v113 = 0;
    v114 = 0.0;
LABEL_43:
    v117 = v112 - v113;
    v118 = (v111 + 8 * v113 + 32);
    do
    {
      v119 = *v118++;
      v114 = v114 + v119;
      --v117;
    }

    while (v117);
    goto LABEL_45;
  }

  v113 = v112 & 0x7FFFFFFFFFFFFFFCLL;
  v115 = (v111 + 48);
  v114 = 0.0;
  v116 = v112 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v114 = v114 + *(v115 - 2) + *(v115 - 1) + *v115 + v115[1];
    v115 += 4;
    v116 -= 4;
  }

  while (v116);
  if (v112 != v113)
  {
    goto LABEL_43;
  }

LABEL_45:

  v121 = sub_20BC77F80(v120, MEMORY[0x277D502A0], MEMORY[0x277D50290]);

  v122 = *(v121 + 16);
  if (v122)
  {
    if (v122 > 3)
    {
      v123 = v122 & 0x7FFFFFFFFFFFFFFCLL;
      v125 = (v121 + 48);
      v124 = 0.0;
      v126 = v122 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v124 = v124 + *(v125 - 2) + *(v125 - 1) + *v125 + v125[1];
        v125 += 4;
        v126 -= 4;
      }

      while (v126);
      if (v122 == v123)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v123 = 0;
      v124 = 0.0;
    }

    v127 = v122 - v123;
    v128 = (v121 + 8 * v123 + 32);
    do
    {
      v129 = *v128++;
      v124 = v124 + v129;
      --v127;
    }

    while (v127);
  }

LABEL_54:

  sub_20C13CE94();
  v130 = v172;
  sub_20C133AE4();
  sub_20C13CE94();
  LOBYTE(v183) = 1;
  v131 = v174;
  sub_20C1344F4();
  sub_20BB3F19C(v130, v131, v96);
  (*(v176 + 8))(v131, v177);
  (*(v173 + 8))(v130, v175);
  sub_20BC7E7B0(v48);
  if (v100)
  {
    v132 = v170;
    sub_20C13B444();
    v133 = v100;
    v134 = sub_20C13BB74();
    v135 = sub_20C13D1F4();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v183 = v137;
      *v136 = 136315138;
      swift_getErrorValue();
      v138 = sub_20C13E094();
      v140 = sub_20B51E694(v138, v139, &v183);

      *(v136 + 4) = v140;
      _os_log_impl(&dword_20B517000, v134, v135, "Failed to update completed modalities with error %s", v136, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v137);
      MEMORY[0x20F2F6A40](v137, -1, -1);
      MEMORY[0x20F2F6A40](v136, -1, -1);
    }

    else
    {
    }

    v162(v132, v164);
  }

  sub_20BC7EC90();
  v141 = v178;
  sub_20C13CDC4();
  v142 = sub_20C13CDF4();
  (*(*(v142 - 8) + 56))(v141, 0, 1, v142);
  v143 = swift_allocObject();
  swift_weakInit();
  sub_20C13CDA4();

  v144 = sub_20C13CD94();
  v145 = swift_allocObject();
  v146 = MEMORY[0x277D85700];
  v145[2] = v144;
  v145[3] = v146;
  v145[4] = v143;

  sub_20B6383D0(0, 0, v141, &unk_20C175D20, v145);

  sub_20BC7BF70(v149);
  return __swift_destroy_boxed_opaque_existential_1(&v182);
}