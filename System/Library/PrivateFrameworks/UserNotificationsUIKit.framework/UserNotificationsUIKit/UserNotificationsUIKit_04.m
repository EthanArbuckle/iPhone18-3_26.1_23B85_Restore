__CFString *sub_21E8DFACC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v135 = a2;
  v136 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED75A0);
  MEMORY[0x28223BE20](v11 - 8);
  v137 = &v134 - v12;
  *&v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_materialRecipe] = 1;
  *&v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_layoutConstraints] = MEMORY[0x277D84F90];
  *&v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectViewWidthLayoutConstraint] = 0;
  *&v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectViewHeightLayoutConstraint] = 0;
  v13 = OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_featureFlagEnabled;
  v144 = &type metadata for NotificationsUIFeatureFlags;
  v145 = sub_21E8B8B00();
  v143[0] = 1;
  v14 = sub_21E9297F8();
  __swift_destroy_boxed_opaque_existential_1Tm(v143);
  v6[v13] = v14 & 1;
  v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_hideViews] = 0;
  v15 = &v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectsOutsets];
  v16 = *(MEMORY[0x277D768C8] + 16);
  *v15 = *MEMORY[0x277D768C8];
  v15[1] = v16;
  *&v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_backlightTraitChangeRegistration] = 0;
  *&v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_dropletRadius] = 0;
  *&v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectsIntensity] = 0;
  v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectDisabledForAOD] = 0;
  v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_performingWakeAnimation] = 0;
  v17 = &v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lastSetLightsEffectState];
  *v17 = 0;
  *(v17 + 4) = 256;
  v18 = [objc_allocWithZone(MEMORY[0x277D069F0]) init];
  v19 = OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_dropletContextView;
  *&v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_dropletContextView] = v18;
  v20 = v18;
  v21 = sub_21E92A428();
  [v20 setAccessibilityIdentifier_];

  [*&v6[v19] setAlpha_];
  [*&v6[v19] setDisableDropletEffectFilters_];
  [*&v6[v19] setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v23 = OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_backgroundContainer;
  *&v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_backgroundContainer] = v22;
  v24 = v22;
  v25 = sub_21E92A428();
  [v24 setAccessibilityIdentifier_];

  [*&v6[v23] setAlpha_];
  [*&v6[v23] setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v27 = OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_portalContainer;
  *&v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_portalContainer] = v26;
  v28 = v26;
  v29 = sub_21E92A428();
  [v28 setAccessibilityIdentifier_];

  [*&v6[v27] setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_accessoryView] = v30;
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v32 = OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectView;
  *&v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectView] = v31;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
  v33 = swift_allocObject();
  v138 = xmmword_21E9468F0;
  *(v33 + 16) = xmmword_21E9468F0;
  v34 = v31;
  result = _NCNotificationListGroupName();
  if (result)
  {
    v36 = result;
    v37 = sub_21E92A458();
    v39 = v38;

    v40 = type metadata accessor for DropletMaterialEffect();
    v41 = objc_allocWithZone(v40);
    *&v41[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_recipe] = 0;
    v42 = &v41[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_groupNameBase];
    *v42 = v37;
    v42[1] = v39;
    v142.receiver = v41;
    v142.super_class = v40;
    *(v33 + 32) = objc_msgSendSuper2(&v142, sel_init);
    sub_21E796644(0, &unk_280D03E68);
    v43 = sub_21E92A518();

    [v34 setContentEffects_];

    v44 = [*&v6[v32] layer];
    [v44 setAllowsHitTesting_];

    [*&v6[v32] setTranslatesAutoresizingMaskIntoConstraints_];
    v45 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
    v46 = OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_blurEffectView;
    *&v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_blurEffectView] = v45;
    v47 = [v45 layer];
    [v47 setAllowsHitTesting_];

    [*&v6[v46] setTranslatesAutoresizingMaskIntoConstraints_];
    v48 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
    v49 = OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_edgeEffectView;
    *&v6[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_edgeEffectView] = v48;
    v50 = swift_allocObject();
    *(v50 + 16) = v138;
    v51 = v48;
    result = _NCNotificationListGroupName();
    if (result)
    {
      v52 = result;
      v53 = sub_21E92A458();
      v55 = v54;

      v56 = objc_allocWithZone(v40);
      *&v56[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_recipe] = 0;
      v57 = &v56[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_groupNameBase];
      *v57 = v53;
      v57[1] = v55;
      v141.receiver = v56;
      v141.super_class = v40;
      *(v50 + 32) = objc_msgSendSuper2(&v141, sel_init);
      v58 = sub_21E92A518();

      [v51 setContentEffects_];

      v59 = [*&v6[v49] layer];
      [v59 setAllowsHitTesting_];

      [*&v6[v49] setTranslatesAutoresizingMaskIntoConstraints_];
      v60 = type metadata accessor for HighlightsOverlayView();
      v140.receiver = v6;
      v140.super_class = v60;
      v61 = objc_msgSendSuper2(&v140, sel_initWithFrame_, a3, a4, a5, a6);
      *&v61[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_delegate + 8] = v135;
      swift_unknownObjectWeakAssign();
      v62 = v61;
      v63 = sub_21E92A428();
      [v62 setAccessibilityIdentifier_];

      v64 = OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_dropletContextView;
      [v62 addSubview_];
      v65 = OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_backgroundContainer;
      [v62 addSubview_];
      v66 = OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_portalContainer;
      [v62 addSubview_];
      *&v138 = OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_accessoryView;
      [v62 addSubview_];
      v67 = OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectView;
      v68 = [*&v62[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectView] widthAnchor];
      v69 = [v62 widthAnchor];
      v70 = &v62[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectsOutsets];
      v71 = [v68 constraintEqualToAnchor:v69 constant:*&v62[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectsOutsets + 8] + *&v62[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectsOutsets + 24]];

      v72 = *&v62[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectViewWidthLayoutConstraint];
      *&v62[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectViewWidthLayoutConstraint] = v71;

      v73 = [*&v62[v67] heightAnchor];
      v74 = [v62 heightAnchor];
      v75 = [v73 constraintEqualToAnchor:v74 constant:*v70 + v70[2]];

      v76 = *&v62[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectViewHeightLayoutConstraint];
      *&v62[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectViewHeightLayoutConstraint] = v75;

      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_21E948180;
      v78 = [*&v62[v64] leadingAnchor];
      v79 = [v62 &selRef_isViewVisibleForNotificationGroupList_ + 1];
      v80 = [v78 constraintEqualToAnchor_];

      *(v77 + 32) = v80;
      v81 = [*&v62[v64] trailingAnchor];
      v82 = [v62 &selRef_userNotificationDigest + 4];
      v83 = [v81 constraintEqualToAnchor_];

      *(v77 + 40) = v83;
      v84 = [*&v62[v64] topAnchor];
      v85 = [v62 topAnchor];
      v86 = [v84 constraintEqualToAnchor_];

      *(v77 + 48) = v86;
      v87 = [*&v62[v64] bottomAnchor];
      v88 = [v62 bottomAnchor];
      v89 = [v87 constraintEqualToAnchor_];

      *(v77 + 56) = v89;
      v90 = [*&v62[v65] leadingAnchor];
      v91 = [v62 leadingAnchor];
      v92 = [v90 constraintEqualToAnchor_];

      *(v77 + 64) = v92;
      v93 = [*&v62[v65] trailingAnchor];
      v94 = [v62 trailingAnchor];
      v95 = [v93 constraintEqualToAnchor_];

      *(v77 + 72) = v95;
      v96 = [*&v62[v65] topAnchor];
      v97 = [v62 topAnchor];
      v98 = [v96 constraintEqualToAnchor_];

      *(v77 + 80) = v98;
      v99 = [*&v62[v65] bottomAnchor];
      v100 = [v62 bottomAnchor];
      v101 = [v99 constraintEqualToAnchor_];

      *(v77 + 88) = v101;
      v102 = [*&v62[v66] leadingAnchor];
      v103 = [v62 leadingAnchor];
      v104 = [v102 constraintEqualToAnchor_];

      *(v77 + 96) = v104;
      v105 = [*&v62[v66] trailingAnchor];
      v106 = [v62 trailingAnchor];
      v107 = [v105 constraintEqualToAnchor_];

      *(v77 + 104) = v107;
      v108 = [*&v62[v66] topAnchor];
      v109 = [v62 topAnchor];
      v110 = [v108 constraintEqualToAnchor_];

      *(v77 + 112) = v110;
      v111 = [*&v62[v66] bottomAnchor];
      v112 = [v62 bottomAnchor];
      v113 = [v111 constraintEqualToAnchor_];

      *(v77 + 120) = v113;
      v114 = v138;
      v115 = [*&v62[v138] leadingAnchor];
      v116 = [v62 leadingAnchor];
      v117 = [v115 constraintEqualToAnchor_];

      *(v77 + 128) = v117;
      v118 = [*&v62[v114] trailingAnchor];
      v119 = [v62 trailingAnchor];
      v120 = [v118 constraintEqualToAnchor_];

      *(v77 + 136) = v120;
      v121 = [*&v62[v114] topAnchor];
      v122 = [v62 topAnchor];
      v123 = [v121 constraintEqualToAnchor_];

      *(v77 + 144) = v123;
      v124 = [*&v62[v114] bottomAnchor];
      v125 = [v62 bottomAnchor];
      v126 = [v124 constraintEqualToAnchor_];

      *(v77 + 152) = v126;
      *&v62[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_layoutConstraints] = v77;

      v127 = objc_opt_self();
      sub_21E796644(0, &qword_280D03E38);

      v128 = sub_21E92A518();

      [v127 activateConstraints_];

      v129 = sub_21E92A5B8();
      v130 = v137;
      (*(*(v129 - 8) + 56))(v137, 1, 1, v129);
      sub_21E92A598();
      v131 = sub_21E92A588();
      v132 = swift_allocObject();
      v133 = MEMORY[0x277D85700];
      v132[2] = v131;
      v132[3] = v133;
      v132[4] = v62;
      sub_21E8E8A7C(0, 0, v130, &unk_21E9482C0, v132);

      return v62;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__CFString *sub_21E8E0A60(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
  if (a2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_21E9468F0;
    result = _NCNotificationListGroupName();
    if (result)
    {
      v5 = result;
      v6 = sub_21E92A458();
      v8 = v7;

      v9 = type metadata accessor for DropletMaterialEffect();
      v10 = objc_allocWithZone(v9);
      *&v10[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_recipe] = 0;
      v11 = &v10[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_groupNameBase];
      *v11 = v6;
      v11[1] = v8;
      v21.receiver = v10;
      v21.super_class = v9;
      *(v3 + 32) = objc_msgSendSuper2(&v21, sel_init);
      return v3;
    }

    __break(1u);
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_21E9473D0;
    result = _NCNotificationListGroupName();
    if (result)
    {
      v12 = result;
      v13 = sub_21E92A458();
      v15 = v14;

      v16 = type metadata accessor for DropletMaterialEffect();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_recipe] = 0;
      v18 = &v17[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_groupNameBase];
      *v18 = v13;
      v18[1] = v15;
      v22.receiver = v17;
      v22.super_class = v16;
      *(v3 + 32) = objc_msgSendSuper2(&v22, sel_init);
      v19 = [objc_opt_self() sharedLight];
      v20 = [objc_allocWithZone(MEMORY[0x277D76028]) initWithLightSource_];

      [v20 setActivationTransitionDirection_];
      [v20 setDeactivationTransitionDirection_];
      *(v3 + 40) = v20;
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E8E0C44(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21E92A828())
  {
    v4 = sub_21E796644(0, &qword_280D03C48);
    v5 = sub_21E8E0F28();
    result = MEMORY[0x223D64790](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223D64A50](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_21E8DEED8(&v11, v9, &qword_280D03C48, 0x277D75D18, &qword_27CED7590, &unk_21E9482A0);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_21E92A828();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_21E8E0DB8()
{
  *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_materialRecipe) = 1;
  *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_layoutConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectViewWidthLayoutConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectViewHeightLayoutConstraint) = 0;
  v1 = OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_featureFlagEnabled;
  v7 = &type metadata for NotificationsUIFeatureFlags;
  v8 = sub_21E8B8B00();
  v6[0] = 1;
  v2 = sub_21E9297F8();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  *(v0 + v1) = v2 & 1;
  *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_hideViews) = 0;
  v3 = (v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectsOutsets);
  v4 = *(MEMORY[0x277D768C8] + 16);
  *v3 = *MEMORY[0x277D768C8];
  v3[1] = v4;
  *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_backlightTraitChangeRegistration) = 0;
  *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_dropletRadius) = 0;
  *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectsIntensity) = 0;
  *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectDisabledForAOD) = 0;
  *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_performingWakeAnimation) = 0;
  v5 = v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lastSetLightsEffectState;
  *v5 = 0;
  *(v5 + 8) = 256;
  sub_21E92A988();
  __break(1u);
}

unint64_t sub_21E8E0F28()
{
  result = qword_27CED7588;
  if (!qword_27CED7588)
  {
    sub_21E796644(255, &qword_280D03C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7588);
  }

  return result;
}

uint64_t sub_21E8E0F90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21E8B8A0C;

  return sub_21E8DD07C(a1, v4, v5, v6);
}

uint64_t sub_21E8E1044()
{
  result = os_variant_has_internal_diagnostics();
  byte_280D05F38 = result;
  return result;
}

void sub_21E8E106C()
{
  if (qword_280D03DC0 != -1)
  {
    goto LABEL_17;
  }

  while (byte_280D05F38 == 1)
  {
    v32 = sub_21E8E5000();
    v31 = v32[2];
    if (!v31)
    {
LABEL_14:

      return;
    }

    v0 = 0;
    v1 = v32 + 5;
    while (v0 < v32[2])
    {
      v2 = *(v1 - 1);
      v3 = *v1;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      ObjectType = swift_getObjectType();
      v6 = v2;
      [ObjCClassFromMetadata configureDebugGuidesIfNecessaryForView_];
      v7 = (*(v3 + 16))(ObjectType, v3);
      if (v7)
      {
        v8 = v7;
        v41 = v6;
        v39 = sub_21E8D9944();
        v38 = v9 & 1;
        v37 = sub_21E8D9C64();
        v36 = v10 & 1;
        v35 = sub_21E8D9F7C();
        v34 = v11 & 1;
        v12 = sub_21E8DA388();
        v14 = v13 & 1;
        v15 = sub_21E8DA794();
        v17 = v16 & 1;
        v18 = sub_21E8DABA0();
        v20 = v19 & 1;
        v21 = sub_21E8DAFAC();
        v40 = v22;
        v23 = v21;
        v33 = &v30;
        v43 = v39;
        v44 = v38;
        v45 = v37;
        v46 = v36;
        v47 = v35;
        v48 = v34;
        v49 = v12;
        v50 = v14;
        v51 = v15;
        v52 = v17;
        v53 = v18;
        v54 = v20;
        v55 = v21;
        v56 = v22 & 1;
        MEMORY[0x28223BE20](v21);
        *(&v30 - 2) = MEMORY[0x277D839B0];
        *(&v30 - 1) = MEMORY[0x277D839C8];
        swift_getKeyPath();
        v24 = MEMORY[0x277D85000];
        v42 = v23;
        sub_21E8DB5C0();
        sub_21E9297A8();

        v25 = *((*v24 & *v23) + 0x70);
        swift_beginAccess();
        v26 = *(v23 + v25);
        sub_21E8E6208(&v43);
        v27 = v40;
        if (v26 != 2)
        {
          v27 = v26;
        }

        v28 = v8[OBJC_IVAR___NCNotificationListDebugView_layoutAtBottom];
        v29 = v27 & 1;
        v8[OBJC_IVAR___NCNotificationListDebugView_layoutAtBottom] = v29;
        if (v29 != v28)
        {
          sub_21E8E2294();
        }
      }

      else
      {
      }

      ++v0;
      v1 += 2;
      if (v31 == v0)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }
}

void sub_21E8E144C(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR___NCNotificationListDebugView_cachedHeight] = 0xBFF0000000000000;
  *&v5[OBJC_IVAR___NCNotificationListDebugView_renderedHeight] = 0xBFF0000000000000;
  *&v5[OBJC_IVAR___NCNotificationListDebugView_borderedLayoutConstraints] = 0;
  v12 = &v5[OBJC_IVAR___NCNotificationListDebugView_depth];
  *v12 = 0;
  v12[8] = 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v13 = &v5[OBJC_IVAR___NCNotificationListDebugView_debugHost];
  *(v13 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR___NCNotificationListDebugView_additionalRectsByName] = MEMORY[0x277D84F98];
  v14 = OBJC_IVAR___NCNotificationListDebugView_color;
  *&v6[v14] = [objc_opt_self() blackColor];
  *&v6[OBJC_IVAR___NCNotificationListDebugView_listViewObservers] = MEMORY[0x277D84F90];
  swift_getObjectType();
  v15 = swift_conformsToProtocol2();
  if (!v15)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  *(v13 + 1) = v15;
  swift_unknownObjectWeakAssign();
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = a1;
  }

  swift_unknownObjectWeakAssign();

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = a1;
  }

  v88 = a1;
  swift_unknownObjectWeakAssign();

  *&v6[OBJC_IVAR___NCNotificationListDebugView_label] = [objc_allocWithZone(type metadata accessor for DebugLabel()) init];
  v94 = sub_21E8D9944();
  v93 = v20 & 1;
  v92 = sub_21E8D9C64();
  v91 = v21 & 1;
  v89 = sub_21E8D9F7C();
  v23 = v22 & 1;
  v24 = sub_21E8DA388();
  v26 = v25 & 1;
  v27 = sub_21E8DA794();
  v29 = v28 & 1;
  v30 = sub_21E8DABA0();
  v32 = v31 & 1;
  v33 = sub_21E8DAFAC();
  v95 = v34;
  v90 = &v88;
  v98 = v94;
  v99 = v93;
  v100 = v92;
  v101 = v91;
  v102 = v89;
  v103 = v23;
  v104 = v24;
  v105 = v26;
  v106 = v27;
  v107 = v29;
  v108 = v30;
  v109 = v32;
  v110 = v33;
  v111 = v34 & 1;
  MEMORY[0x28223BE20](v33);
  v86 = MEMORY[0x277D839B0];
  v87 = MEMORY[0x277D839C8];
  swift_getKeyPath();
  v35 = MEMORY[0x277D85000];
  v96[0] = v33;
  sub_21E8DB5C0();
  sub_21E9297A8();

  v36 = *((*v35 & *v33) + 0x70);
  swift_beginAccess();
  v37 = *(v33 + v36);
  sub_21E8E6208(&v98);
  v38 = v95;
  if (v37 != 2)
  {
    v38 = v37;
  }

  v6[OBJC_IVAR___NCNotificationListDebugView_layoutAtBottom] = v38 & 1;
  v97.receiver = v6;
  v97.super_class = NCNotificationListDebugView;
  v39 = objc_msgSendSuper2(&v97, sel_initWithFrame_, a2, a3, a4, a5, v86, v87);
  v40 = OBJC_IVAR___NCNotificationListDebugView_label;
  v41 = *&v39[OBJC_IVAR___NCNotificationListDebugView_label];
  v42 = v39;
  [v42 addSubview_];
  sub_21E8E2294();
  v43 = *&v39[v40];
  v44 = objc_opt_self();
  v45 = *MEMORY[0x277D74418];
  v46 = v43;
  v47 = [v44 monospacedSystemFontOfSize:10.0 weight:v45];
  [v46 setFont_];

  [*&v39[v40] setTranslatesAutoresizingMaskIntoConstraints_];
  v48 = [v42 layer];
  [v48 setBorderWidth_];

  v49 = [objc_opt_self() standardDefaults];
  v50 = sub_21E92A428();
  sub_21E796644(0, &qword_280D03E40);
  v51 = sub_21E92A6C8();
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v96[4] = sub_21E8E625C;
  v96[5] = v52;
  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 1107296256;
  v96[2] = sub_21E792C28;
  v96[3] = &block_descriptor_4;
  v53 = _Block_copy(v96);

  v54 = [v49 observeDefault:v50 onQueue:v51 withBlock:v53];
  _Block_release(v53);
  swift_unknownObjectRelease();

  [v42 setUserInteractionEnabled_];
  if (!*&v42[OBJC_IVAR___NCNotificationListDebugView_borderedLayoutConstraints])
  {
    goto LABEL_38;
  }

  v55 = objc_opt_self();
  sub_21E796644(0, &qword_280D03E38);

  v56 = sub_21E92A518();

  [v55 activateConstraints_];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    swift_getKeyPath();
    v58 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v96[0] = v42;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_21E8E6330;
    *(v59 + 24) = v58;
    swift_retain_n();
    sub_21E929758();

    v60 = OBJC_IVAR___NCNotificationListDebugView_listViewObservers;
    v61 = swift_beginAccess();
    MEMORY[0x223D646A0](v61);
    if (*((*&v42[v60] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v42[v60] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E92A548();
    }

    sub_21E92A568();
    swift_endAccess();
    swift_beginAccess();
    v62 = swift_unknownObjectWeakLoadStrong();
    if (v62)
    {
      v63 = v62;
      [v62 updateText];
    }

    else
    {
    }

    swift_getKeyPath();
    v64 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v96[0] = v42;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_21E8E6330;
    *(v65 + 24) = v64;
    swift_retain_n();
    sub_21E929758();

    v66 = swift_beginAccess();
    MEMORY[0x223D646A0](v66);
    if (*((*&v42[v60] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v42[v60] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E92A548();
    }

    sub_21E92A568();
    swift_endAccess();
    swift_beginAccess();
    v67 = swift_unknownObjectWeakLoadStrong();
    if (v67)
    {
      v68 = v67;
      [v67 updateText];
    }

    else
    {
    }

    swift_getKeyPath();
    v69 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v96[0] = v42;
    v70 = swift_allocObject();
    *(v70 + 16) = sub_21E8E6330;
    *(v70 + 24) = v69;
    swift_retain_n();
    sub_21E929758();

    v71 = swift_beginAccess();
    MEMORY[0x223D646A0](v71);
    if (*((*&v42[v60] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v42[v60] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E92A548();
    }

    sub_21E92A568();
    swift_endAccess();
    swift_beginAccess();
    v72 = swift_unknownObjectWeakLoadStrong();
    if (v72)
    {
      v73 = v72;
      [v72 updateText];
    }

    else
    {
    }

    swift_getKeyPath();
    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v96[0] = v42;
    v75 = swift_allocObject();
    *(v75 + 16) = sub_21E8E6330;
    *(v75 + 24) = v74;
    swift_retain_n();
    sub_21E929758();

    v76 = swift_beginAccess();
    MEMORY[0x223D646A0](v76);
    if (*((*&v42[v60] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v42[v60] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E92A548();
    }

    sub_21E92A568();
    swift_endAccess();
    swift_beginAccess();
    v77 = swift_unknownObjectWeakLoadStrong();
    if (v77)
    {
      v78 = v77;
      [v77 updateText];
    }

    else
    {
    }
  }

  v79 = swift_unknownObjectWeakLoadStrong();
  if (v79)
  {

    swift_getKeyPath();
    v80 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v96[0] = v42;
    v81 = swift_allocObject();
    *(v81 + 16) = sub_21E8E6288;
    *(v81 + 24) = v80;
    swift_retain_n();
    sub_21E929758();

    v82 = OBJC_IVAR___NCNotificationListDebugView_listViewObservers;
    v83 = swift_beginAccess();
    MEMORY[0x223D646A0](v83);
    if (*((*&v42[v82] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v42[v82] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E92A548();
    }

    sub_21E92A568();
    swift_endAccess();
    swift_beginAccess();
    v84 = swift_unknownObjectWeakLoadStrong();
    if (v84)
    {
      v85 = v84;
      [v84 updateText];
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_21E8E2294()
{
  v1 = OBJC_IVAR___NCNotificationListDebugView_borderedLayoutConstraints;
  if (*&v0[OBJC_IVAR___NCNotificationListDebugView_borderedLayoutConstraints])
  {
    v2 = objc_opt_self();
    sub_21E796644(0, &qword_280D03E38);

    v3 = sub_21E92A518();

    [v2 deactivateConstraints_];
  }

  v4 = v0[OBJC_IVAR___NCNotificationListDebugView_layoutAtBottom];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
  if (v4 == 1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_21E948160;
    v6 = OBJC_IVAR___NCNotificationListDebugView_label;
    v7 = [*&v0[OBJC_IVAR___NCNotificationListDebugView_label] leadingAnchor];
    v8 = [v0 leadingAnchor];
    v9 = &selRef_constraintEqualToAnchor_constant_;
    v10 = [v7 constraintEqualToAnchor:v8 constant:2.0];

    *(v5 + 32) = v10;
    v11 = [v0 trailingAnchor];
    v12 = [*&v0[v6] trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:2.0];

    *(v5 + 40) = v13;
    v14 = (v5 + 48);
    v15 = [v0 bottomAnchor];
    v16 = [*&v0[v6] bottomAnchor];
  }

  else
  {
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_21E947680;
    v17 = OBJC_IVAR___NCNotificationListDebugView_label;
    v18 = [*&v0[OBJC_IVAR___NCNotificationListDebugView_label] leadingAnchor];
    v19 = [v0 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:2.0];

    *(v5 + 32) = v20;
    v21 = [v0 trailingAnchor];
    v22 = [*&v0[v17] trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:2.0];

    *(v5 + 40) = v23;
    v24 = [*&v0[v17] topAnchor];
    v25 = [v0 topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:2.0];

    *(v5 + 48) = v26;
    v14 = (v5 + 56);
    v15 = [*&v0[v17] topAnchor];
    v16 = [v0 bottomAnchor];
    v9 = &selRef_constraintGreaterThanOrEqualToAnchor_constant_;
  }

  v27 = v16;
  v28 = [v15 *v9];

  *v14 = v28;
  *&v0[v1] = v5;

  v29 = objc_opt_self();
  sub_21E796644(0, &qword_280D03E38);
  v30 = sub_21E92A518();

  [v29 activateConstraints_];
}

void sub_21E8E26BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong superview];
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        v6 = [v4 superview];
        if (v6)
        {
          v7 = v6;
          while (1)
          {
            objc_opt_self();
            v8 = swift_dynamicCastObjCClass();
            if (!v8)
            {
              break;
            }

            v9 = v8;

            v7 = [v9 superview];
            v5 = v9;
            if (!v7)
            {
              goto LABEL_13;
            }
          }
        }

        v9 = v5;
LABEL_13:
        [v1 setNeedsLayout];
        [v9 setNeedsLayout];

        goto LABEL_14;
      }
    }

    [v1 setNeedsLayout];
LABEL_14:
  }
}

id sub_21E8E27F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 listView];
  *a2 = result;
  return result;
}

void sub_21E8E2844(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21E92A458();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_21E8E28AC(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_21E92A428();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTitle_];
}

Swift::Void __swiftcall NCNotificationListDebugView.didMoveToWindow()()
{
  v14.super_class = NCNotificationListDebugView;
  objc_msgSendSuper2(&v14, sel_didMoveToWindow);
  v1 = [v0 superview];
  if (!v1)
  {
    v10 = &v0[OBJC_IVAR___NCNotificationListDebugView_depth];
    *v10 = 0;
    v10[8] = 1;
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong superview];
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        while (1)
        {
          v9 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          v5 = [v7 superview];

          if (!v5)
          {
            goto LABEL_14;
          }

          objc_opt_self();
          v7 = swift_dynamicCastObjCClass();
          ++v8;
          if (!v7)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        return;
      }

      v9 = 0;
LABEL_13:
    }

    else
    {
      v9 = 0;
    }

LABEL_14:
    v11 = &v0[OBJC_IVAR___NCNotificationListDebugView_depth];
    v12 = *&v0[OBJC_IVAR___NCNotificationListDebugView_depth];
    v13 = v0[OBJC_IVAR___NCNotificationListDebugView_depth + 8];
    *v11 = v9;
    v11[8] = 0;
    if ((v13 & 1) != 0 || v9 != v12)
    {
      sub_21E8E32C8();
      [v0 updateText];
    }
  }
}

id sub_21E8E2BA0()
{
  v1 = v0;
  v2 = OBJC_IVAR___NCNotificationListDebugView_listViewObservers;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21E92A828())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D64A50](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_21E9296E8();

      ++v5;
      if (v8 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  v10.receiver = v1;
  v10.super_class = NCNotificationListDebugView;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

void sub_21E8E2D90(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = OBJC_IVAR___NCNotificationListDebugView_additionalRectsByName;
  swift_beginAccess();
  v15 = *&v6[v14];
  if (*(v15 + 16) && (v16 = sub_21E795DB0(a1, a2), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    swift_endAccess();
    v19 = v18;
  }

  else
  {
    swift_endAccess();
    type metadata accessor for AccessoryView();
    v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v21 = OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_label;
    v22 = *&v20[OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_label];
    v23 = v20;
    v24 = v22;
    v25 = sub_21E92A428();
    [v24 setText_];

    v26 = *&v7[OBJC_IVAR___NCNotificationListDebugView_color];
    v27 = *&v20[v21];
    v19 = v23;
    v28 = v26;
    v29 = v27;
    sub_21E8E3CC4(v28);

    v30 = *&v19[OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_dashedBorder];
    v31 = [v28 CGColor];
    [v30 setStrokeColor_];

    [v7 addSubview_];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *&v7[v14];
    *&v7[v14] = 0x8000000000000000;
    sub_21E8F80EC(v19, a1, a2, isUniquelyReferenced_nonNull_native);

    *&v7[v14] = v40;
    swift_endAccess();
  }

  [v19 setFrame_];
  v33 = [v19 subviews];

  v34 = sub_21E796644(0, &qword_280D03C48);
  v35 = sub_21E92A528();

  if (!(v35 >> 62))
  {
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_17:

    return;
  }

  if (!sub_21E92A828())
  {
    goto LABEL_17;
  }

LABEL_7:
  if ((v35 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x223D64A50](0, v35);
  }

  else
  {
    if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v36 = *(v35 + 32);
  }

  v33 = v36;

  v37 = [v19 subviews];
  v34 = sub_21E92A528();

  if (!(v34 >> 62))
  {
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_20:

    goto LABEL_21;
  }

  if (!sub_21E92A828())
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v34 & 0xC000000000000001) != 0)
  {
LABEL_23:
    v38 = MEMORY[0x223D64A50](0, v34);
    goto LABEL_15;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(v34 + 32);
LABEL_15:
    v39 = v38;

    [v39 frame];

LABEL_21:
    [v19 bounds];
    UIRectCenteredIntegralRect();
    [v33 setFrame_];

    return;
  }

  __break(1u);
}

id NCNotificationListDebugView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

uint64_t sub_21E8E32C8()
{
  v1 = v0;
  if (v0[OBJC_IVAR___NCNotificationListDebugView_depth + 8])
  {
    v2 = [objc_opt_self() whiteColor];
    goto LABEL_13;
  }

  v3 = *&v0[OBJC_IVAR___NCNotificationListDebugView_depth];
  v4 = &v0[OBJC_IVAR___NCNotificationListDebugView_debugHost];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 48))(ObjectType, v7);
    v10 = v9;

    v11 = v3;
    if (v10)
    {
      goto LABEL_9;
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = *(v4 + 1);
      v15 = swift_getObjectType();
      v11 = (*(v14 + 48))(v15, v14);
      v17 = v16;

      if ((v17 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  v11 = v3;
LABEL_9:
  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18 || (v19 = v18, v20 = *(v4 + 1), v21 = swift_getObjectType(), (*(v20 + 48))(v21, v20), LOBYTE(v20) = v22, v19, v23 = 10.0, (v20 & 1) != 0))
  {
    v23 = 3.0;
  }

  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:vabdd_f64(1.0 - v11 / v23 saturation:trunc(1.0 - v11 / v23)) brightness:1.0 alpha:{v3 * -0.2 + 1.0, 0.8}];
LABEL_13:
  v24 = *&v1[OBJC_IVAR___NCNotificationListDebugView_color];
  *&v1[OBJC_IVAR___NCNotificationListDebugView_color] = v2;

  return sub_21E8E35EC(v1);
}

id NCNotificationListDebugView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

uint64_t sub_21E8E35EC(char *a1)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v2 = OBJC_IVAR___NCNotificationListDebugView_color;
  v3 = *&a1[OBJC_IVAR___NCNotificationListDebugView_color];
  v4 = [a1 layer];
  v5 = [v3 CGColor];
  [v4 setBorderColor_];

  v31 = v2;
  v6 = *&a1[v2];
  v7 = *&a1[OBJC_IVAR___NCNotificationListDebugView_label];
  v8 = v6;
  sub_21E8E3CC4(v8);

  v9 = OBJC_IVAR___NCNotificationListDebugView_additionalRectsByName;
  swift_beginAccess();
  v10 = *&a1[v9];
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_9:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = *(*(v10 + 56) + ((v16 << 9) | (8 * v17)));
      v19 = *&a1[v31];
      v20 = *&v18[OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_label];
      v32[0] = 0;
      v21 = v18;
      v22 = v19;
      v23 = v20;
      [v22 getHue:0 saturation:0 brightness:v32 alpha:0];
      v24 = *v32;
      v25 = objc_opt_self();
      v26 = &selRef_blackColor;
      if (v24 <= 0.8)
      {
        v26 = &selRef_whiteColor;
      }

      v27 = [v25 *v26];
      [v23 setTextColor_];
      [v23 setBackgroundColor_];

      v28 = *&v21[OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_dashedBorder];
      v29 = [v22 CGColor];
      [v28 setStrokeColor_];

      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }
}

void sub_21E8E38E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong updateText];
  }
}

void sub_21E8E3940()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR___NCNotificationListDebugView_debugHost;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = Strong, v5 = *(v2 + 8), ObjectType = swift_getObjectType(), (*(v5 + 48))(ObjectType, v5), v8 = v7, v4, (v8 & 1) == 0))
  {
    v11 = sub_21E92AA28();
    MEMORY[0x223D64660](v11);

    v9 = 0x3D7865646E492CLL;
    v10 = 0xE700000000000000;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  if (*(v1 + OBJC_IVAR___NCNotificationListDebugView_depth + 8))
  {
    v12 = 0xED00003E726F7272;
    v13 = 0x652068747065643CLL;
  }

  else
  {
    v13 = sub_21E92AA28();
    v12 = v14;
  }

  MEMORY[0x223D64660](v13, v12);

  MEMORY[0x223D64660](v9, v10);

  MEMORY[0x223D64660](8285, 0xE200000000000000);
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = *(v2 + 8);
    v18 = swift_getObjectType();
    v19 = (*(v17 + 8))(v18, v17);
    v21 = v20;
  }

  else
  {
    v21 = 0xEF3E726F72726520;
    v19 = 0x746E65746E6F633CLL;
  }

  v22 = *(v1 + OBJC_IVAR___NCNotificationListDebugView_label);
  MEMORY[0x223D64660](v19, v21);

  v23 = sub_21E92A428();

  [v22 setText_];
}

void sub_21E8E3CC4(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  [a1 getHue:0 saturation:0 brightness:v7 alpha:0];
  v3 = *v7;
  v4 = objc_opt_self();
  v5 = &selRef_blackColor;
  if (v3 <= 0.8)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  [v1 setTextColor_];
  [v1 setBackgroundColor_];
}

void sub_21E8E3E00()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for AccessoryView();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  sub_21E8E402C();
  [v0 frame];
  if (v1 + -4.0 < 0.0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = v1 + -4.0;
  }

  [v0 frame];
  if (v3 + -4.0 < 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3 + -4.0;
  }

  v5 = OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_label;
  [*&v0[OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_label] sizeThatFits_];
  if (v6 < v4)
  {
    v4 = v6;
  }

  v7 = *&v0[v5];
  [v0 frame];
  [v7 setFrame_];

  v9 = OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_dashedBorder;
  v10 = *&v0[OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_dashedBorder];
  [v0 bounds];
  [v10 setFrame_];

  [v0 bounds];
  v12 = v11 + -2.0;
  [v0 bounds];
  v14 = v13 + -2.0;
  v15 = *&v0[v9];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 bezierPathWithRect_];
  v19 = [v18 CGPath];

  [v17 setPath_];
}

void sub_21E8E402C()
{
  v1 = OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_label;
  v2 = [*&v0[OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_label] superview];
  if (v2)
  {
  }

  else
  {
    v3 = OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_dashedBorder;
    v4 = *&v0[OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_dashedBorder];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_21E9473D0;
    v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v7 = v4;
    *(v5 + 32) = [v6 initWithDouble_];
    *(v5 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    sub_21E796644(0, &unk_27CED7650);
    v8 = sub_21E92A518();

    [v7 setLineDashPattern_];

    [*&v0[v3] setLineWidth_];
    [*&v0[v3] setFillColor_];
    v9 = [v0 layer];
    [v9 addSublayer_];

    v10 = *&v0[v1];
    v11 = objc_opt_self();
    v12 = *MEMORY[0x277D74408];
    v13 = v10;
    v14 = [v11 monospacedSystemFontOfSize:9.0 weight:v12];
    [v13 setFont_];

    v15 = *&v0[v1];

    [v0 addSubview_];
  }
}

id sub_21E8E4338(void *a1)
{
  v3 = OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_label;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for DebugLabel()) init];
  v4 = OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_dashedBorder;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *&v1[OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_borderWidth] = 0x4000000000000000;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AccessoryView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_21E8E4438(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21E8E44C4()
{
  v1 = [v0 layer];
  v2 = [v1 presentationLayer];

  if (v2)
  {
    [v2 opacity];
    v4 = v3;
  }

  else
  {
    [v0 alpha];
    v4 = v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7670);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21E9482E0;
  v7 = [v0 purposeHashed_];
  v8 = sub_21E92A458();
  v10 = v9;

  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_21E7966E0();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  [v0 alpha];
  v12 = v11;
  v13 = MEMORY[0x277D85048];
  *(v6 + 96) = MEMORY[0x277D85048];
  v14 = sub_21E79668C();
  *(v6 + 104) = v14;
  v15 = MEMORY[0x277D83A90];
  v16 = MEMORY[0x277D83B08];
  *(v6 + 72) = v12;
  *(v6 + 136) = v15;
  *(v6 + 144) = v16;
  *(v6 + 112) = v4;
  v17 = [v0 isRevealed];
  v18 = MEMORY[0x277D839F0];
  *(v6 + 176) = MEMORY[0x277D839B0];
  *(v6 + 184) = v18;
  *(v6 + 152) = v17;
  [v0 revealPercentage];
  *(v6 + 216) = v13;
  *(v6 + 224) = v14;
  *(v6 + 192) = v19;
  [v0 groupedOverlapHeightMultiple];
  *(v6 + 256) = v13;
  *(v6 + 264) = v14;
  *(v6 + 232) = v20;

  return sub_21E92A468();
}

uint64_t sub_21E8E46AC()
{
  v1 = [v0 dataSource];
  if (!v1)
  {
    return 4;
  }

  v2 = v1;
  sub_21E796644(0, &qword_280D03E00);
  if ([v2 isKindOfClass_])
  {
    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    sub_21E796644(0, &qword_280D03CC8);
    if ([v2 isKindOfClass_] || (sub_21E796644(0, &unk_280D03CB8), ObjCClassFromMetadata = swift_getObjCClassFromMetadata(), objc_msgSend(v2, sel_isKindOfClass_, ObjCClassFromMetadata)))
    {
      swift_unknownObjectRelease();
      return 1;
    }

    else
    {
      sub_21E796644(0, &qword_280D03DF0);
      if ([v2 isKindOfClass_])
      {
        swift_unknownObjectRelease();
        return 2;
      }

      else
      {
        v5 = [v2 isKindOfClass_];
        swift_unknownObjectRelease();
        if (v5)
        {
          return 2;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

id sub_21E8E4824()
{
  v1 = [v0 index];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

uint64_t sub_21E8E488C()
{
  v0 = sub_21E8E4B30();
  if (!v0)
  {
    return 0x3E726F7272653CLL;
  }

  v1 = v0;
  v2 = 7104878;
  v3 = [v0 secondaryText];
  if (v3)
  {

    result = [v1 secondaryText];
    if (!result)
    {
      __break(1u);
      goto LABEL_20;
    }

    v5 = result;
    v6 = [result nc_contentType];

    v7 = NCNotificationBodyContentTypeString(v6);
    v8 = sub_21E92A458();
    v10 = v9;
  }

  else
  {
    v10 = 0xE300000000000000;
    v8 = 7104878;
  }

  v11 = [v1 secondaryTextCompact];
  if (!v11)
  {
    v16 = 0xE300000000000000;
    goto LABEL_11;
  }

  result = [v1 secondaryTextCompact];
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = [result nc_contentType];

  v14 = NCNotificationBodyContentTypeString(v13);
  v2 = sub_21E92A458();
  v16 = v15;

LABEL_11:
  sub_21E92A8A8();
  MEMORY[0x223D64660](0xD000000000000015, 0x800000021E958350);
  v17 = [v1 alignContentToBottom];
  v18 = v17 == 0;
  if (v17)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v18)
  {
    v20 = 0xE500000000000000;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  MEMORY[0x223D64660](v19, v20);

  MEMORY[0x223D64660](0x61646E6F6365732CLL, 0xEF3D657079547972);
  MEMORY[0x223D64660](v8, v10);
  MEMORY[0x223D64660](0xD000000000000016, 0x800000021E958370);
  MEMORY[0x223D64660](v8, v10);

  MEMORY[0x223D64660](0xD000000000000016, 0x800000021E958390);
  MEMORY[0x223D64660](v2, v16);

  return 0;
}

uint64_t sub_21E8E4B30()
{
  v1 = [v0 subviews];
  v2 = sub_21E796644(0, &qword_280D03C48);
  v3 = sub_21E92A528();

  if (v3 >> 62)
  {
    if (!sub_21E92A828())
    {
      goto LABEL_60;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_60;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D64A50](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_46:
      v7 = MEMORY[0x223D64A50](0, v3);
      goto LABEL_11;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  v6 = [v5 subviews];

  v3 = sub_21E92A528();
  if (v3 >> 62)
  {
    if (!sub_21E92A828())
    {
      goto LABEL_60;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_60;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_46;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_50:
    v10 = MEMORY[0x223D64A50](0, v3);
    goto LABEL_16;
  }

  v7 = *(v3 + 32);
LABEL_11:
  v8 = v7;

  v9 = [v8 subviews];

  v3 = sub_21E92A528();
  if (v3 >> 62)
  {
    if (!sub_21E92A828())
    {
      goto LABEL_60;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_60;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_50;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_54:
    v13 = MEMORY[0x223D64A50](0, v3);
    goto LABEL_21;
  }

  v10 = *(v3 + 32);
LABEL_16:
  v11 = v10;

  v12 = [v11 subviews];

  v3 = sub_21E92A528();
  if (v3 >> 62)
  {
    if (!sub_21E92A828())
    {
      goto LABEL_60;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_60;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_54;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_58:
    v17 = MEMORY[0x223D64A50](0, v3);
    goto LABEL_26;
  }

  v13 = *(v3 + 32);
LABEL_21:
  v14 = v13;

  v15 = [v14 subviews];

  v3 = sub_21E92A528();
  if (v3 >> 62)
  {
    v16 = sub_21E92A828();
    if (!v16)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_60;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_58;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v17 = *(v3 + 32);
LABEL_26:
  v18 = v17;

  v19 = [v18 subviews];

  v3 = sub_21E92A528();
  if (v3 >> 62)
  {
    v20 = sub_21E92A828();
    if (!v20)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_60;
    }
  }

  v21 = __OFSUB__(v20, 1);
  v16 = v20 - 1;
  if (v21)
  {
    goto LABEL_64;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_65:
    v22 = MEMORY[0x223D64A50](v16, v3);
    goto LABEL_33;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_67;
  }

  if (v16 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_70;
  }

  v22 = *(v3 + 8 * v16 + 32);
LABEL_33:
  v23 = v22;

  v24 = [v23 subviews];

  v2 = sub_21E92A528();
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_35;
    }

LABEL_60:

    return 0;
  }

LABEL_67:
  result = sub_21E92A828();
  if (!result)
  {
    goto LABEL_60;
  }

LABEL_35:
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v26 = *(v2 + 32);
    goto LABEL_38;
  }

LABEL_70:
  v26 = MEMORY[0x223D64A50](0, v2);
LABEL_38:
  v27 = v26;

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return result;
  }

  return 0;
}

void *sub_21E8E5000()
{
  v0 = sub_21E929748();
  v51 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0);
  v56 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v52 = &v47 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v47 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v57 = &v47 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - v10;
  v12 = objc_opt_self();
  v13 = &selRef_setIsCollapsedNotification_;
  v14 = [v12 sharedInstance];
  v58 = v0;
  if (v14)
  {
    v15 = v14;
    v16 = [v14 rootListView];
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = sub_21E924A7C(0, 1, 1, MEMORY[0x277D84F90]);
      v21 = v19[2];
      v20 = v19[3];
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        goto LABEL_72;
      }

      goto LABEL_4;
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_7:
  v24 = [v12 *(v13 + 3536)];
  v50 = v12;
  if (v24)
  {
    v55 = v24;
    v54 = [v24 notificationSections];
    sub_21E92A768();
    sub_21E8E62CC();
    sub_21E92A7B8();
    while (v66)
    {
      sub_21E8D9170(&v65, v64);
      sub_21E79872C(v64, &v62);
      sub_21E796644(0, &qword_280D03CC8);
      if (swift_dynamicCast())
      {
        v25 = *&v61[0];
        result = [*&v61[0] listView];
        if (!result)
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          return result;
        }

        v27 = result;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_21E924A7C(0, v19[2] + 1, 1, v19);
        }

        v29 = v19[2];
        v28 = v19[3];
        if (v29 >= v28 >> 1)
        {
          v19 = sub_21E924A7C((v28 > 1), v29 + 1, 1, v19);
        }

        v19[2] = v29 + 1;
        v30 = &v19[2 * v29];
        v30[4] = v27;
        v30[5] = &off_282FE5D38;

        __swift_destroy_boxed_opaque_existential_1Tm(v64);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
      }

      sub_21E92A7B8();
    }

    v0 = v58;
    (*(v51 + 8))(v11, v58);
    v12 = v50;
    v13 = &selRef_setIsCollapsedNotification_;
  }

  v31 = [v12 *(v13 + 3536)];
  if (v31)
  {
    v49 = v31;
    v48 = [v31 notificationSections];
    sub_21E92A768();
    sub_21E8E62CC();
    sub_21E92A7B8();
    if (v66)
    {
      v53 = (v51 + 8);
      do
      {
        sub_21E8D9170(&v65, v64);
        sub_21E79872C(v64, &v62);
        sub_21E796644(0, &qword_280D03CC8);
        if (swift_dynamicCast())
        {
          v55 = *&v61[0];
          result = [*&v61[0] notificationGroups];
          if (!result)
          {
            goto LABEL_74;
          }

          v54 = result;
          sub_21E92A768();
          while (1)
          {
            sub_21E92A7B8();
            if (!v63)
            {
              break;
            }

            sub_21E8D9170(&v62, v61);
            sub_21E79872C(v61, v60);
            sub_21E796644(0, &qword_280D03DF0);
            if (swift_dynamicCast())
            {
              v32 = v59;
              v33 = [v59 listView];
              objc_opt_self();
              v34 = swift_dynamicCastObjCClass();
              if (v34)
              {
                v35 = v34;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v19 = sub_21E924A7C(0, v19[2] + 1, 1, v19);
                }

                v37 = v19[2];
                v36 = v19[3];
                if (v37 >= v36 >> 1)
                {
                  v19 = sub_21E924A7C((v36 > 1), v37 + 1, 1, v19);
                }

                v19[2] = v37 + 1;
                v38 = &v19[2 * v37];
                v38[4] = v35;
                v38[5] = &off_282FE5D38;
                v0 = v58;
              }

              else
              {

                v32 = v33;
              }
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v61);
          }

          (*v53)(v7, v0);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        sub_21E92A7B8();
      }

      while (v66);
    }

    (*(v51 + 8))(v57, v0);
    v12 = v50;
    v13 = &selRef_setIsCollapsedNotification_;
  }

  v39 = [v12 *(v13 + 3536)];
  v40 = v56;
  if (v39)
  {
    v49 = v39;
    v48 = [v39 notificationSections];
    sub_21E92A768();
    v41 = sub_21E8E62CC();
    sub_21E92A7B8();
    if (v66)
    {
      v50 = (v51 + 8);
      v12 = &qword_280D03DF0;
      v55 = v41;
      do
      {
        sub_21E8D9170(&v65, v64);
        sub_21E79872C(v64, &v62);
        sub_21E796644(0, &qword_280D03CC8);
        if (swift_dynamicCast())
        {
          v54 = *&v61[0];
          result = [*&v61[0] notificationGroups];
          if (!result)
          {
            goto LABEL_75;
          }

          v53 = result;
          sub_21E92A768();
          while (1)
          {
            v15 = v40;
            sub_21E92A7B8();
            if (!v63)
            {
              break;
            }

            sub_21E8D9170(&v62, v61);
            sub_21E79872C(v61, v60);
            sub_21E796644(0, &qword_280D03DF0);
            if (swift_dynamicCast())
            {
              v57 = v59;
              v42 = [v59 allAvailableCells];
              sub_21E796644(0, &unk_280D03E08);
              v11 = sub_21E92A528();

              if (v11 >> 62)
              {
                v22 = sub_21E92A828();
                if (v22)
                {
LABEL_53:
                  v18 = 0;
                  v21 = v11 & 0xC000000000000001;
                  v7 = (v11 & 0xFFFFFFFFFFFFFF8);
                  do
                  {
                    if (v21)
                    {
                      v43 = MEMORY[0x223D64A50](v18, v11);
                      v15 = (v18 + 1);
                      if (__OFADD__(v18, 1))
                      {
                        goto LABEL_70;
                      }
                    }

                    else
                    {
                      v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (v18 >= v20)
                      {
                        goto LABEL_71;
                      }

                      v43 = *(v11 + 8 * v18 + 32);
                      v15 = (v18 + 1);
                      if (__OFADD__(v18, 1))
                      {
LABEL_70:
                        __break(1u);
LABEL_71:
                        __break(1u);
LABEL_72:
                        v19 = sub_21E924A7C((v20 > 1), v22, 1, v19);
LABEL_4:

                        v19[2] = v22;
                        v23 = &v19[2 * v21];
                        v23[4] = v18;
                        v23[5] = &off_282FE5D38;
                        v0 = v58;
                        goto LABEL_7;
                      }
                    }

                    v44 = v43;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v19 = sub_21E924A7C(0, v19[2] + 1, 1, v19);
                    }

                    v13 = v19[2];
                    v45 = v19[3];
                    v12 = (v13 + 1);
                    if (v13 >= v45 >> 1)
                    {
                      v19 = sub_21E924A7C((v45 > 1), v13 + 1, 1, v19);
                    }

                    v19[2] = v12;
                    v46 = &v19[2 * v13];
                    v46[4] = v44;
                    v46[5] = &off_282FE5D70;

                    ++v18;
                  }

                  while (v15 != v22);
                }
              }

              else
              {
                v22 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v22)
                {
                  goto LABEL_53;
                }
              }

              __swift_destroy_boxed_opaque_existential_1Tm(v61);
              v0 = v58;
              v40 = v56;
              v12 = &qword_280D03DF0;
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v61);
            }
          }

          (*v50)(v40, v0);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        sub_21E92A7B8();
      }

      while (v66);
    }

    (*(v51 + 8))(v52, v0);
  }

  return v19;
}

void sub_21E8E5B34(void *a1)
{
  if (qword_280D03DC0 != -1)
  {
    swift_once();
  }

  if (byte_280D05F38 == 1)
  {
    swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      if (a1)
      {
        v3 = v2;
        v35 = a1;
        v34 = sub_21E8D9944();
        v33 = v4 & 1;
        v5 = sub_21E8D9C64();
        v36 = v6;
        v38 = v3;
        v39 = v34;
        v40 = v33;
        v41 = v5;
        v42 = v6 & 1;
        v43 = sub_21E8D9F7C();
        v44 = v7 & 1;
        v45 = sub_21E8DA388();
        v46 = v8 & 1;
        v47 = sub_21E8DA794();
        v48 = v9 & 1;
        v49 = sub_21E8DABA0();
        v50 = v10 & 1;
        v51 = sub_21E8DAFAC();
        v52 = v11 & 1;
        MEMORY[0x28223BE20](v51);
        swift_getKeyPath();
        v12 = MEMORY[0x277D85000];
        sub_21E8DB5C0();
        sub_21E9297A8();
        v13 = v3;
        v14 = v35;

        v15 = *((*v12 & *v5) + 0x70);
        swift_beginAccess();
        if (*(v5 + v15) == 2)
        {
          v16 = v36;
        }

        else
        {
          v16 = *(v5 + v15);
        }

        ObjectType = swift_getObjectType();
        v18 = (*(v13 + 40))(ObjectType, v13);
        if (v18 <= 1u)
        {
          if (v18)
          {
            if ((v16 & 1) == 0)
            {
              goto LABEL_26;
            }

            v19 = v35;
            v20 = v45;
            v21 = v46;
          }

          else
          {
            if ((v16 & 1) == 0)
            {
              goto LABEL_26;
            }

            v19 = v35;
            v20 = v43;
            v21 = v44;
          }
        }

        else if (v18 == 2)
        {
          if ((v16 & 1) == 0)
          {
            goto LABEL_26;
          }

          v19 = v35;
          v20 = v47;
          v21 = v48;
        }

        else
        {
          if (v18 != 3 || (v16 & 1) == 0)
          {
            goto LABEL_26;
          }

          v19 = v35;
          v20 = v49;
          v21 = v50;
        }

        v37 = v21;
        MEMORY[0x28223BE20](v18);
        swift_getKeyPath();
        sub_21E9297A8();

        v22 = *((*v12 & *v20) + 0x70);
        swift_beginAccess();
        v23 = *(v20 + v22);
        v13 = v38;
        v14 = v19;
        if (v23 == 2)
        {
          LOBYTE(v23) = v37;
        }

        if (v23)
        {
          v24 = (*(v38 + 16))(ObjectType, v38);
          if (v24)
          {
          }

          else
          {
            [v19 frame];
            v28 = v27;
            [v19 frame];
            v30 = [objc_allocWithZone(NCNotificationListDebugView) initWithFrame:v19 debugHost:{0.0, 0.0, v28, v29}];
            v31 = *(v38 + 24);
            v32 = v30;
            v31(v30, ObjectType, v38);
            [v14 addSubview_];
            [v14 bringSubviewToFront_];
          }

          goto LABEL_29;
        }

LABEL_26:
        v25 = (*(v13 + 16))(ObjectType, v13);
        if (v25)
        {
          v26 = v25;
          [v25 removeFromSuperview];
          (*(v13 + 24))(0, ObjectType, v13);
          sub_21E8E6208(&v39);

LABEL_30:
          return;
        }

LABEL_29:
        sub_21E8E6208(&v39);
        goto LABEL_30;
      }
    }
  }
}

void _sSo27NCNotificationListDebugViewC22UserNotificationsUIKitE5coderABSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR___NCNotificationListDebugView_cachedHeight) = 0xBFF0000000000000;
  *(v0 + OBJC_IVAR___NCNotificationListDebugView_renderedHeight) = 0xBFF0000000000000;
  *(v0 + OBJC_IVAR___NCNotificationListDebugView_borderedLayoutConstraints) = 0;
  v1 = v0 + OBJC_IVAR___NCNotificationListDebugView_depth;
  *v1 = 0;
  *(v1 + 8) = 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___NCNotificationListDebugView_debugHost + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___NCNotificationListDebugView_additionalRectsByName) = MEMORY[0x277D84F98];
  v2 = OBJC_IVAR___NCNotificationListDebugView_color;
  *(v0 + v2) = [objc_opt_self() blackColor];
  *(v0 + OBJC_IVAR___NCNotificationListDebugView_listViewObservers) = MEMORY[0x277D84F90];
  sub_21E92A988();
  __break(1u);
}

unint64_t sub_21E8E62CC()
{
  result = qword_27CED7660;
  if (!qword_27CED7660)
  {
    sub_21E929748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7660);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21E8E6360(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_21E8E63A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_21E8E6410(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_21E8E66BC(v11, v13);
}

uint64_t sub_21E8E647C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_21E9296F8();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x223D64A50](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x223D64A50](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_21E92A788();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_21E92A788();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_21E92A828();
  }

  result = sub_21E92A828();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

BOOL sub_21E8E66BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = sub_21E787444(*a1, *a2);
  result = 0;
  if ((v8 & 1) != 0 && v4 == v6 && v5 == v7)
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }

    v11 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
    v12 = v11 && *(a1 + 48) == *(a2 + 48);
    if (!v12 || *(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }

    v13 = *(a2 + 80);
    if (*(a1 + 80))
    {
      if (!*(a2 + 80))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 72) != *(a2 + 72))
      {
        v13 = 1;
      }

      if (v13)
      {
        return 0;
      }
    }

    return *(a1 + 88) == *(a2 + 88) && *(a1 + 96) == *(a2 + 96);
  }

  return result;
}

id sub_21E8E68C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DropletMaterialEffect();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21E8E6A10(void *a1)
{
  v3 = OBJC_IVAR____TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF19MaskedMaterialEntry__maskedMaterialView;
  v4 = *(v1 + OBJC_IVAR____TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF19MaskedMaterialEntry__maskedMaterialView);
  v5 = &selRef_appendString_withName_;
  v6 = &selRef_revealHintingAnimationTension;
  v7 = &selRef_revealHintingAnimationTension;
  if (v4)
  {
    goto LABEL_2;
  }

  v9 = *(*(v1 + OBJC_IVAR____TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF19MaskedMaterialEntry_contentProxy) + OBJC_IVAR____TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF12ContentProxy_contentView);
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR____TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF19MaskedMaterialEntry_recipe);
    v11 = type metadata accessor for DropletMaterialEffect.MaskedMaterialView();
    v24.receiver = objc_allocWithZone(v11);
    v24.super_class = v11;

    v12 = v9;
    v13 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 materialViewWithRecipe_];
    if (!v16)
    {
      __break(1u);
      return;
    }

    v17 = v16;
    [v15 bounds];
    [v17 setFrame_];
    [v17 setAutoresizingMask_];

    v18 = sub_21E92A428();

    [v17 setGroupNameBase_];

    [v15 addSubview_];
    v19 = [objc_allocWithZone(MEMORY[0x277D76180]) initWithSourceView_];
    [v19 setMatchesAlpha_];
    [v19 setMatchesPosition_];
    [v19 setMatchesTransform_];
    [v19 setHidesSourceView_];
    v20 = v19;
    [v15 addSubview_];
    v21 = [v20 layer];

    v22 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    [v21 setCompositingFilter_];

    v7 = &selRef_revealHintingAnimationTension;
    v5 = &selRef_appendString_withName_;

    v23 = *(v1 + v3);
    *(v1 + v3) = v15;
    v6 = &selRef_revealHintingAnimationTension;

    v4 = *(v1 + v3);
    if (v4)
    {
LABEL_2:
      v8 = v4;
      [a1 v5[87]];
      [v8 v6[398]];
      [v8 v7[165]];
      [a1 addSubview_];
    }
  }
}

id sub_21E8E6FDC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21E8E7038(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_21E8E705C(void *a1)
{
  v3 = [objc_allocWithZone(type metadata accessor for DropletMaterialEffect.ContentProxy()) init];
  v4 = *(v1 + OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_recipe);
  v6 = *(v1 + OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_groupNameBase);
  v5 = *(v1 + OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_groupNameBase + 8);
  v7 = type metadata accessor for DropletMaterialEffect.MaskedMaterialEntry();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF19MaskedMaterialEntry__maskedMaterialView] = 0;
  *&v8[OBJC_IVAR____TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF19MaskedMaterialEntry_contentProxy] = v3;
  *&v8[OBJC_IVAR____TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF19MaskedMaterialEntry_recipe] = v4;
  v9 = &v8[OBJC_IVAR____TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF19MaskedMaterialEntry_groupNameBase];
  *v9 = v6;
  *(v9 + 1) = v5;
  v13.receiver = v8;
  v13.super_class = v7;
  v10 = v3;

  v11 = objc_msgSendSuper2(&v13, sel_init);
  if (a1)
  {
    v12 = v11;
    [a1 addViewEffect_];
    [a1 addOverlay_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21E8E7178(void *a1)
{
  v1 = [a1 subviews];
  sub_21E8E75B0();
  v2 = sub_21E92A528();

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21E92A828())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x223D64A50](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 removeFromSuperview];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

void sub_21E8E7290()
{
  v1 = *(v0 + OBJC_IVAR____TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF19MaskedMaterialEntry__maskedMaterialView);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_21E8E759C;
    *(v4 + 24) = v3;
    v7[4] = sub_21E8C07E8;
    v7[5] = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_21E799D8C;
    v7[3] = &block_descriptor_29;
    v5 = _Block_copy(v7);
    v6 = v1;

    [v2 performWithoutAnimation_];

    _Block_release(v5);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }
}

void sub_21E8E740C()
{
  v1 = *(v0 + OBJC_IVAR____TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF19MaskedMaterialEntry__maskedMaterialView);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_21E8E7588;
    *(v4 + 24) = v3;
    v7[4] = sub_21E8C073C;
    v7[5] = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_21E799D8C;
    v7[3] = &block_descriptor_5;
    v5 = _Block_copy(v7);
    v6 = v1;

    [v2 performWithoutAnimation_];

    _Block_release(v5);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }
}

unint64_t sub_21E8E75B0()
{
  result = qword_280D03C48;
  if (!qword_280D03C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D03C48);
  }

  return result;
}

uint64_t sub_21E8E7608()
{
  type metadata accessor for AutomationService();
  v0 = swift_allocObject();
  result = swift_unknownObjectUnownedInit();
  qword_280D049C0 = v0;
  return result;
}

uint64_t static AutomationService.shared.getter()
{
  if (qword_280D049B8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21E8E76A8()
{
  result = swift_unknownObjectUnownedLoadStrong();
  if (result)
  {
    v1 = result;
    sub_21E8CE120();
    v3 = v2;

    return v3 & 1;
  }

  return result;
}

uint64_t AutomationService.__deallocating_deinit()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_21E8E779C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_21E92A958();

    if (v3)
    {
      type metadata accessor for HighlightsDroplet();
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_21E8F68D8(a1);
    if (v5)
    {
    }
  }

  return 0;
}

void sub_21E8E784C(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v5 = sub_21E8F68D8(a3);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v3;
      v13 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_21E90B71C();
        v9 = v13;
      }

      sub_21E8F74E4(v7, v9);
      *v4 = v9;
    }

    else
    {
    }
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_21E8F7E78(a3, v11, *&a1);

    *v3 = v14;
  }
}

unint64_t sub_21E8E7950(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_21E8F84C0(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_21E8F69B4(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_21E90BB48();
        v11 = v13;
      }

      result = sub_21E8F7670(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

id sub_21E8E7A10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bounds];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_21E8E7A60(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, _BYTE *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E948160;
  v13 = v6[3];
  *(inited + 32) = v13;
  v14 = v6[4];
  *(inited + 40) = v14;
  v15 = v6[5];
  *(inited + 48) = v15;
  v16 = inited & 0xC000000000000001;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  if ((inited & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x223D64A50](0, inited);
  }

  else
  {
    v20 = v17;
  }

  v28 = v20;
  v21 = v20;
  swift_getAtKeyPath();

  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  if (CGRectEqualToRect(*v27, v31))
  {

    if (v16)
    {
LABEL_6:
      v22 = MEMORY[0x223D64A50](1, inited);
      goto LABEL_9;
    }
  }

  else
  {
    *v27 = a1;
    *&v27[8] = a2;
    *&v27[16] = a3;
    *&v27[24] = a4;
    swift_setAtWritableKeyPath();

    *a6 = 1;
    if (v16)
    {
      goto LABEL_6;
    }
  }

  v22 = *(inited + 40);
LABEL_9:
  v29 = v22;
  v23 = v22;
  swift_getAtKeyPath();

  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  if (CGRectEqualToRect(*v27, v32))
  {

    if (v16)
    {
LABEL_11:
      v24 = MEMORY[0x223D64A50](2, inited);
      goto LABEL_14;
    }
  }

  else
  {
    *v27 = a1;
    *&v27[8] = a2;
    *&v27[16] = a3;
    *&v27[24] = a4;
    swift_setAtWritableKeyPath();

    *a6 = 1;
    if (v16)
    {
      goto LABEL_11;
    }
  }

  v24 = *(inited + 48);
LABEL_14:
  v30 = v24;
  v25 = v24;
  swift_getAtKeyPath();

  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  if (CGRectEqualToRect(*v27, v33))
  {
  }

  else
  {
    swift_setAtWritableKeyPath();

    *a6 = 1;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  return sub_21E8B4D48();
}

id sub_21E8E7CEC(double a1, double a2, uint64_t a3, _BYTE *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E948160;
  v9 = v4[3];
  *(inited + 32) = v9;
  v10 = v4[4];
  *(inited + 40) = v10;
  v11 = v4[5];
  *(inited + 48) = v11;
  v12 = inited & 0xC000000000000001;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  if ((inited & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x223D64A50](0, inited);
  }

  else
  {
    v16 = v13;
  }

  v25 = v16;
  v17 = v16;
  swift_getAtKeyPath();

  if (v23 != a1 || v24 != a2)
  {
    v23 = a1;
    v24 = a2;
    swift_setAtWritableKeyPath();

    *a4 = 1;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_9:
    v18 = MEMORY[0x223D64A50](1, inited);
    goto LABEL_10;
  }

  if (v12)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = *(inited + 40);
LABEL_10:
  v26 = v18;
  v19 = v18;
  swift_getAtKeyPath();

  if (v23 != a1 || v24 != a2)
  {
    v23 = a1;
    v24 = a2;
    swift_setAtWritableKeyPath();

    *a4 = 1;
    if (!v12)
    {
      goto LABEL_13;
    }

LABEL_15:
    v20 = MEMORY[0x223D64A50](2, inited);
    goto LABEL_16;
  }

  if (v12)
  {
    goto LABEL_15;
  }

LABEL_13:
  v20 = *(inited + 48);
LABEL_16:
  v27 = v20;
  v21 = v20;
  swift_getAtKeyPath();

  if (v23 == a1 && v24 == a2)
  {
  }

  else
  {
    swift_setAtWritableKeyPath();

    *a4 = 1;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  return sub_21E8B4D48();
}

id sub_21E8E7F44(double a1, uint64_t a2, _BYTE *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E948160;
  v7 = v3[3];
  *(inited + 32) = v7;
  v8 = v3[4];
  *(inited + 40) = v8;
  v9 = v3[5];
  *(inited + 48) = v9;
  v10 = inited & 0xC000000000000001;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  if ((inited & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x223D64A50](0, inited);
  }

  else
  {
    v14 = v11;
  }

  v22 = v14;
  v15 = v14;
  swift_getAtKeyPath();

  if (v21 == a1)
  {

    if (v10)
    {
LABEL_6:
      v16 = MEMORY[0x223D64A50](1, inited);
      goto LABEL_9;
    }
  }

  else
  {
    swift_setAtWritableKeyPath();

    *a3 = 1;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  v16 = *(inited + 40);
LABEL_9:
  v23 = v16;
  v17 = v16;
  swift_getAtKeyPath();

  if (v21 == a1)
  {

    if (v10)
    {
LABEL_11:
      v18 = MEMORY[0x223D64A50](2, inited);
      goto LABEL_14;
    }
  }

  else
  {
    swift_setAtWritableKeyPath();

    *a3 = 1;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  v18 = *(inited + 48);
LABEL_14:
  v24 = v18;
  v19 = v18;
  swift_getAtKeyPath();

  if (v21 == a1)
  {
  }

  else
  {
    swift_setAtWritableKeyPath();

    *a3 = 1;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  return sub_21E8B4D48();
}

id sub_21E8E8174(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = v3;
  v45 = a3;
  v51 = a1;
  v52 = a2;
  v5 = sub_21E929B18();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7890);
  MEMORY[0x28223BE20](v48 - 8);
  v9 = v38 - v8;
  v10 = &unk_27CED7880;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED7880);
  MEMORY[0x28223BE20](v11 - 8);
  v44 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v38 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v38 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E948160;
  v20 = v4[3];
  *(inited + 32) = v20;
  v38[0] = inited + 32;
  v21 = v4[4];
  *(inited + 40) = v21;
  v38[1] = v4;
  v22 = v4[5];
  *(inited + 48) = v22;
  v49 = inited;
  v46 = inited & 0xC000000000000001;
  v39 = (v6 + 32);
  v42 = (v6 + 8);
  v23 = (v6 + 48);
  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = 0;
  v47 = v15;
  v43 = v23;
  do
  {
    if (v46)
    {
      v28 = MEMORY[0x223D64A50](v27, v49);
    }

    else
    {
      v28 = *(v49 + 8 * v27 + 32);
    }

    v53 = v28;
    v54 = v28;
    v29 = v28;
    swift_getAtKeyPath();
    v50 = v29;

    v30 = *(v48 + 48);
    sub_21E8B4BF0(v18, v9, v10);
    sub_21E8B4BF0(v52, &v9[v30], v10);
    v31 = v10;
    v32 = *v23;
    if ((*v23)(v9, 1, v5) == 1)
    {
      sub_21E8B4CAC(v18, v31);
      v33 = v32(&v9[v30], 1, v5);
      v10 = v31;
      if (v33 == 1)
      {
        sub_21E8B4CAC(v9, v31);
LABEL_3:

        goto LABEL_4;
      }

      goto LABEL_13;
    }

    sub_21E8B4BF0(v9, v47, v31);
    if (v32(&v9[v30], 1, v5) == 1)
    {
      sub_21E8B4CAC(v18, v31);
      (*v42)(v47, v5);
      v10 = v31;
      v23 = v43;
LABEL_13:
      sub_21E8B4CAC(v9, &qword_27CED7890);
      goto LABEL_14;
    }

    v34 = v40;
    (*v39)(v40, &v9[v30], v5);
    sub_21E8FA4E8(&qword_27CED7898, MEMORY[0x277D74CD0]);
    v35 = v47;
    v41 = sub_21E92A418();
    v36 = *v42;
    (*v42)(v34, v5);
    sub_21E8B4CAC(v18, v31);
    v36(v35, v5);
    sub_21E8B4CAC(v9, v31);
    v10 = v31;
    v23 = v43;
    if (v41)
    {
      goto LABEL_3;
    }

LABEL_14:
    sub_21E8B4BF0(v52, v44, v10);
    swift_setAtWritableKeyPath();

    *v45 = 1;
LABEL_4:
    ++v27;
  }

  while (v27 != 3);
  swift_setDeallocating();
  swift_arrayDestroy();
  return sub_21E8B4D48();
}

id sub_21E8E86B8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E948160;
  v6 = v3[3];
  *(inited + 32) = v6;
  v7 = v3[4];
  *(inited + 40) = v7;
  v8 = v3[5];
  *(inited + 48) = v8;
  v9 = inited & 0xC000000000000001;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  if ((inited & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x223D64A50](0, inited);
  }

  else
  {
    v13 = v10;
  }

  v20 = v13;
  v14 = v13;
  swift_getAtKeyPath();

  if (sub_21E92A658())
  {

    if (v9)
    {
LABEL_6:
      v15 = MEMORY[0x223D64A50](1, inited);
      goto LABEL_9;
    }
  }

  else
  {
    swift_setAtWritableKeyPath();

    *a3 = 1;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  v15 = *(inited + 40);
LABEL_9:
  v21 = v15;
  v16 = v15;
  swift_getAtKeyPath();

  if (sub_21E92A658())
  {

    if (v9)
    {
LABEL_11:
      v17 = MEMORY[0x223D64A50](2, inited);
      goto LABEL_14;
    }
  }

  else
  {
    swift_setAtWritableKeyPath();

    *a3 = 1;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  v17 = *(inited + 48);
LABEL_14:
  v22 = v17;
  v18 = v17;
  swift_getAtKeyPath();

  if (sub_21E92A658())
  {
  }

  else
  {
    swift_setAtWritableKeyPath();

    *a3 = 1;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  return sub_21E8B4D48();
}

id sub_21E8E8940@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 center];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

id sub_21E8E8988@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alpha];
  *a2 = v4;
  return result;
}

uint64_t sub_21E8E89D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED7880);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21E8B4BF0(a1, &v5 - v3, &unk_27CED7880);
  return sub_21E92A748();
}

uint64_t sub_21E8E8A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED75A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21E8B4BF0(a3, v25 - v10, &unk_27CED75A0);
  v12 = sub_21E92A5B8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21E8B4CAC(v11, &unk_27CED75A0);
  }

  else
  {
    sub_21E92A5A8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21E92A578();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21E92A488() + 32;
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

      sub_21E8B4CAC(a3, &unk_27CED75A0);

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

  sub_21E8B4CAC(a3, &unk_27CED75A0);
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

unint64_t sub_21E8E8D7C(unint64_t a1, void *a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_24:
    v22 = a1;
    a1 = sub_21E92A828();
    v4 = v22;
    v5 = a1;
  }

  else
  {
    v4 = a1;
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = v4 & 0xC000000000000001;
  v23 = v4;
  v8 = v4 + 32;
  v28 = v5;
  v26 = v3;
  v27 = a2;
  v24 = v4 + 32;
  v25 = v4 & 0xC000000000000001;
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    if (v7)
    {
      v12 = MEMORY[0x223D64A50](v6, v23);
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v12 = *(v8 + 8 * v6);
    }

    v13 = v12;
    v14 = *a2;
    if ((*a2 & 0xC000000000000001) != 0)
    {

      v9 = v13;
      v10 = sub_21E92A858();

      if (v10)
      {
        return v6;
      }

      goto LABEL_5;
    }

    if (!*(v14 + 16))
    {

      goto LABEL_5;
    }

    sub_21E796644(0, &qword_280D03E18);

    v15 = sub_21E92A778();
    v16 = -1 << *(v14 + 32);
    v17 = v15 & ~v16;
    if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
    {
      break;
    }

LABEL_16:

    v5 = v28;
    v3 = v26;
    a2 = v27;
    v8 = v24;
    v7 = v25;
LABEL_5:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_23;
    }
  }

  v18 = ~v16;
  while (1)
  {
    v19 = *(*(v14 + 48) + 8 * v17);
    v20 = sub_21E92A788();

    if (v20)
    {
      break;
    }

    v17 = (v17 + 1) & v18;
    if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  return v6;
}

void sub_21E8E8FA4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_21E8E901C()
{
  v9.super_class = NCNotificationListHighlights;
  v1 = objc_msgSendSuper2(&v9, sel_allNotificationGroups);
  sub_21E796644(0, &qword_280D03DF0);
  v2 = sub_21E92A528();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:

    return;
  }

  v3 = sub_21E92A828();
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D64A50](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      v7 = v6;
      v8 = [v0 delegate];
      if (v8)
      {
        [v8 notificationListBaseComponent:v0 closeSwipeInteractions:1];
        swift_unknownObjectRelease();
      }

      v4 = v4 || ([v7 isGrouped] & 1) == 0 && objc_msgSend(v7, sel_notificationCount) > 1;
      if (([v7 isGrouped] & 1) == 0)
      {
        [v7 toggleGroupedState];
      }
    }

    goto LABEL_19;
  }

  __break(1u);
}

void __swiftcall NCNotificationListHighlightsDragState.init()(NCNotificationListHighlightsDragState *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_21E8E9218(unsigned __int8 a1, uint64_t a2, double a3, double a4)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  result = 0;
  for (i = (a2 + 48); ; i += 3)
  {
    v8 = *(i - 1) != a3;
    if (*i != a4)
    {
      v8 = 1;
    }

    if (*(i - 16) == a1 && !v8)
    {
      break;
    }

    if (v4 == ++result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_21E8E927C(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_21E92A828();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223D64A50](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_21E796644(0, &qword_280D03DF0);
    v8 = sub_21E92A788();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

id NCNotificationListHighlightsDragState.init()()
{
  v1 = (v0 + OBJC_IVAR___NCNotificationListHighlightsDragState_translation);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR___NCNotificationListHighlightsDragState_velocity);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___NCNotificationListHighlightsDragState_startPoint);
  *v3 = 0;
  v3[1] = 0;
  v5.super_class = NCNotificationListHighlightsDragState;
  return objc_msgSendSuper2(&v5, sel_init);
}

int64_t sub_21E8E9548()
{
  v1 = v0;
  v2 = [v0 allNotificationRequests];
  sub_21E796644(0, &qword_280D03E18);
  v3 = sub_21E92A528();

  v38 = v3;
  v37 = MEMORY[0x277D84FA0];
  sub_21E8F56CC(1);
  v5 = v4;
  [v1 availableHeight];
  v6 = 0;
  if (v5 < v7)
  {
    sub_21E8F56CC(2);
    v9 = v8;
    [v1 availableHeight];
    if (v9 >= v10)
    {
      v6 = 1;
    }

    else
    {
      sub_21E8F56CC(3);
      v12 = v11;
      [v1 availableHeight];
      if (v12 >= v13)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }
    }
  }

  if (v6 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v6;
  }

  v36.receiver = v1;
  v36.super_class = NCNotificationListHighlights;
  v15 = objc_msgSendSuper2(&v36, sel_allNotificationGroups);
  sub_21E796644(0, &qword_280D03DF0);
  v16 = sub_21E92A528();

  if (v16 >> 62)
  {
    goto LABEL_31;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v17 >= v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = v17;
  }

  while (v17)
  {
    v19 = 0;
    while (1)
    {
      v35.receiver = v1;
      v35.super_class = NCNotificationListHighlights;
      v14 = objc_msgSendSuper2(&v35, sel_allNotificationGroups);
      v20 = sub_21E92A528();

      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x223D64A50](v19, v20);
        goto LABEL_20;
      }

      if ((v19 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v19 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v21 = *(v20 + 8 * v19 + 32);
LABEL_20:
      v22 = v21;
      ++v19;

      v23 = [v22 allNotificationRequests];

      v24 = sub_21E92A528();
      sub_21E8F91F4(v24);

      if (v18 == v19)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v17 = sub_21E92A828();

    if (v17 >= v14)
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_36:
      v34 = result;
      v26 = sub_21E92A828();
      result = v34;
      if (v26 < v34)
      {
        goto LABEL_37;
      }

LABEL_25:
      sub_21E8F93DC(result, v26);
      v27 = *&v1[OBJC_IVAR___NCNotificationListHighlights_showMoreSummaryBuilder];
      v28 = sub_21E92A518();

      [v27 updateWithNotificationRequests_];

      v29 = *&v1[OBJC_IVAR___NCNotificationListHighlights_showMoreLabel];
      v30 = [v27 summaryText];
      if (v30)
      {
        v31 = v30;
        sub_21E92A458();

        v32 = *(v29 + OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsShowMoreLabel_button);
        v33 = sub_21E92A428();
      }

      else
      {
        v33 = 0;
        v32 = *(v29 + OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsShowMoreLabel_button);
      }

      [v32 setTitle:v33 forState:0];
    }
  }

LABEL_23:
  result = sub_21E8F87D4(&v38, &v37);
  if (v38 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v26 >= result)
  {
    goto LABEL_25;
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_21E8E99E4(double a1)
{
  v2 = 1.0;
  if (a1 <= 1.0)
  {
    v2 = a1;
  }

  v3 = a1 < 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = v2;
  }

  *&v1[OBJC_IVAR___NCNotificationListHighlights__mappedExpandedPercentage] = sub_21E8E9A6C(v4);
  v5 = [v1 listView];
  if (v5)
  {
    v6 = v5;
    [v5 setNeedsLayout];

    v1[OBJC_IVAR___NCNotificationListHighlights_needsExpansionStateUpdate] = 1;
  }

  else
  {
    __break(1u);
  }
}

double sub_21E8E9A6C(double a1)
{
  if (qword_280D03DB0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *&a1 = a1;
  [qword_280D05F30 _solveForInput_];
  return v1;
}

id sub_21E8E9ADC()
{
  v1 = OBJC_IVAR___NCNotificationListHighlights____lazy_storage___springBehavior;
  v2 = *(v0 + OBJC_IVAR___NCNotificationListHighlights____lazy_storage___springBehavior);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___NCNotificationListHighlights____lazy_storage___springBehavior);
LABEL_5:
    v6 = v2;
    return v3;
  }

  result = [objc_opt_self() behaviorWithDampingRatio:0.73333 response:0.62832];
  if (result)
  {
    v5 = *(v0 + v1);
    *(v0 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_21E8E9BE8(_BYTE *a1, uint64_t a2, char a3, void *a4)
{
  a1[*a4] = a3;
  v6 = a1;
  v4 = [v6 listView];
  if (v4)
  {
    v5 = v4;
    [v4 setNeedsLayout];

    v6[OBJC_IVAR___NCNotificationListHighlights_needsExpansionStateUpdate] = 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_21E8E9CF8()
{
  v1 = v0;
  *(*&v0[OBJC_IVAR___NCNotificationListHighlights_dropletLayout] + 41) = *&v0[OBJC_IVAR___NCNotificationListHighlights_dragState] != 0;
  sub_21E8AD340();
  v2 = [v0 listView];
  if (v2)
  {
    v3 = v2;
    [v2 setNeedsLayout];

    v1[OBJC_IVAR___NCNotificationListHighlights_needsExpansionStateUpdate] = 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21E8E9DF8(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR___NCNotificationListHighlights_contentSize);
  *v3 = a1;
  v3[1] = a2;
  v15 = _sSo28NCNotificationListHighlightsC22UserNotificationsUIKitE11overlayView015forNotificationB0So6UIViewCSo0abH8Protocol_p_tF_0();
  sub_21E8EF6D0();
  v7 = v15;
  v8 = (v15 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectsOutsets);
  v9 = *(&v15->isa + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectsOutsets);
  v10 = *(&v15->data + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectsOutsets);
  *v8 = v11.f64[0];
  v8[1] = v5;
  v8[2] = v12.f64[0];
  v8[3] = v6;
  v11.f64[1] = v5;
  v12.f64[1] = v6;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v11, v9), vceqq_f64(v12, v10)))) & 1) == 0)
  {
    v13 = *(&v15->isa + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectViewWidthLayoutConstraint);
    if (v13)
    {
      [v13 setConstant_];
      v7 = v15;
    }

    v4 = *(&v7->isa + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectViewHeightLayoutConstraint);
    if (v4)
    {
      v4 = [v4 setConstant_];
    }
  }

  return MEMORY[0x2821F96F8](v4);
}

void sub_21E8E9F48(char a1)
{
  v3 = *(v1 + OBJC_IVAR___NCNotificationListHighlights_dropletLayout);
  v4 = OBJC_IVAR___NCNotificationListHighlights_isCollapsed;
  v5 = *(v1 + OBJC_IVAR___NCNotificationListHighlights_isCollapsed);
  v6 = *(v3 + 40);
  *(v3 + 40) = v5;
  if ((v6 & 1) == 0 && v5)
  {
    sub_21E8AE3F4();
    swift_beginAccess();
    *(v3 + 16) = MEMORY[0x277D84F98];
  }

  if (*(v1 + v4) == 1 && (a1 & 1) == 0)
  {
    sub_21E8E901C();
  }
}

void sub_21E8EA080()
{
  if (v0[OBJC_IVAR___NCNotificationListHighlights_needsExpansionStateUpdate] == 1)
  {
    v1 = v0;
    v0[OBJC_IVAR___NCNotificationListHighlights_needsExpansionStateUpdate] = 0;
    v2 = *&v0[OBJC_IVAR___NCNotificationListHighlights_dropletLayout];
    *(v2 + 176) = [v0 isExpanded];
    v3 = [v0 dragState];
    v4 = *(v2 + 48);
    *(v2 + 48) = v3;
    v5 = v3;
    sub_21E8AD3DC(v4);

    [v0 expandedPercentage];
    v7 = v6;
    v8 = _sSo28NCNotificationListHighlightsC22UserNotificationsUIKitE11overlayView015forNotificationB0So6UIViewCSo0abH8Protocol_p_tF_0();
    [v1 expandedPercentage];
    v10 = v9 + -0.5 + v9 + -0.5;
    v11 = 0.0;
    if (v10 < 0.0 || (v12 = 1.0, v11 = v9 + -0.5 + v9 + -0.5, v10 <= 1.0))
    {
      v12 = v11 + 0.0;
    }

    *(&v8->isa + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_dropletRadius) = (1.0 - v12) * 6.64285714 + 2.85714286;
    [*(&v8->isa + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_dropletContextView) setDropletRadius_];

    v13 = *&v1[OBJC_IVAR___NCNotificationListHighlights____lazy_storage___overlayView];
    v14 = [v1 isExpanded];
    v15 = 1.0 - v7;
    if (v14)
    {
      v15 = 0.0;
    }

    *&v13[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectsIntensity] = v15;
    sub_21E8DDBD8();

    *(v2 + 120) = v7;
    v17 = [v1 listView];
    if (v17)
    {
      [v1 expandedPercentage];
      [v17 setVisibleRectIsBounds_];
    }

    else
    {
      __break(1u);
    }
  }
}

__CFString *_sSo28NCNotificationListHighlightsC22UserNotificationsUIKitE11overlayView015forNotificationB0So6UIViewCSo0abH8Protocol_p_tF_0()
{
  v1 = OBJC_IVAR___NCNotificationListHighlights____lazy_storage___overlayView;
  v2 = *&v0[OBJC_IVAR___NCNotificationListHighlights____lazy_storage___overlayView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___NCNotificationListHighlights____lazy_storage___overlayView];
  }

  else
  {
    v4 = sub_21E8EF8A8(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_21E8EA388()
{
  v1 = v0;
  v581 = sub_21E929B78();
  v557 = *(v581 - 8);
  MEMORY[0x28223BE20](v581);
  v580 = &v553 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v593 = sub_21E929BC8();
  v556 = *(v593 - 8);
  MEMORY[0x28223BE20](v593);
  v592 = &v553 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v591 = &v553 - v5;
  MEMORY[0x28223BE20](v6);
  v590 = &v553 - v7;
  v589 = sub_21E929C88();
  v555 = *(v589 - 8);
  MEMORY[0x28223BE20](v589);
  v588 = &v553 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v587 = &v553 - v10;
  MEMORY[0x28223BE20](v11);
  v586 = &v553 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED7880);
  MEMORY[0x28223BE20](v13 - 8);
  v566 = &v553 - v14;
  v15 = sub_21E929B18();
  v565 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v564 = &v553 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v571 = sub_21E929AF8();
  v563 = *(v571 - 8);
  MEMORY[0x28223BE20](v571);
  v562 = &v553 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v561 = &v553 - v19;
  MEMORY[0x28223BE20](v20);
  v560 = &v553 - v21;
  MEMORY[0x28223BE20](v22);
  v559 = &v553 - v23;
  MEMORY[0x28223BE20](v24);
  v570 = &v553 - v25;
  v26 = *&v0[OBJC_IVAR___NCNotificationListHighlights_dropletLayout];
  sub_21E8AE3F4();
  swift_beginAccess();
  *(v26 + 192) = MEMORY[0x277D84F98];

  v27 = *&v0[OBJC_IVAR___NCNotificationListHighlights_headerLabel];
  [v27 bounds];
  *(v26 + 168) = CGRectGetWidth(v680);
  v28 = _sSo28NCNotificationListHighlightsC22UserNotificationsUIKitE11overlayView015forNotificationB0So6UIViewCSo0abH8Protocol_p_tF_0();
  [(__CFString *)v28 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  *(v26 + 136) = v30;
  *(v26 + 144) = v32;
  *(v26 + 152) = v34;
  *(v26 + 160) = v36;
  *(v26 + 184) = *&v1[OBJC_IVAR___NCNotificationListHighlights_layoutContentOffset];
  v37 = [v1 listView];
  if (!v37)
  {
    __break(1u);
    goto LABEL_479;
  }

  v38 = v37;
  v558 = v15;
  v39 = [v37 window];

  if (!v39)
  {
LABEL_6:
    v573 = OBJC_IVAR___NCNotificationListHighlights____lazy_storage___overlayView;
    v51 = *&v1[OBJC_IVAR___NCNotificationListHighlights____lazy_storage___overlayView];
    if ([v1 count])
    {
      v52 = [v1 isExpanded];
      v53 = v51[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_hideViews];
      v51[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_hideViews] = v52;
      if (v52 == v53)
      {
LABEL_9:

        v55 = [v1 isExpanded];
        v597 = 1.0;
        if ((v55 & 1) == 0)
        {
          [v1 expandedPercentage];
          v597 = (v56 + -0.5) / 0.4 + 0.0;
        }

        v613.receiver = v1;
        v613.super_class = NCNotificationListHighlights;
        v57 = objc_msgSendSuper2(&v613, sel_allNotificationGroups);
        *&v599 = COERCE_DOUBLE(sub_21E796644(0, &qword_280D03DF0));
        v58 = sub_21E92A528();

        v605 = v26;
        v569 = v27;
        if (v58 >> 62)
        {
          goto LABEL_466;
        }

        v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
        v60 = &selRef_isClearingAllNotificationRequestsForCellHorizontalSwipe;
        v582 = OBJC_IVAR___NCNotificationListHighlights_listCellsToSwipeOffsets;
        v601 = v1;
        if (*&v59 != 0.0)
        {
          v61 = 0;
          *&v602 = &v1[OBJC_IVAR___NCNotificationListHighlights_recentlyInsertedIndex];
          *&v604 = v58 & 0xC000000000000001;
          *&v603 = v58 & 0xFFFFFFFFFFFFFF8;
          v30 = 1.0;
          v34 = 0.0;
          v600 = *&v59;
          do
          {
            if (v604 == 0.0)
            {
              if (v61 >= *(v603 + 16))
              {
                goto LABEL_454;
              }

              v66 = *(v58 + 8 * v61 + 32);
            }

            else
            {
              v66 = MEMORY[0x223D64A50](v61, v58);
            }

            v63 = v66;
            v67 = v61 + 1;
            if (__OFADD__(v61, 1))
            {
              goto LABEL_453;
            }

            v65 = [v66 v60[210]];
            v68 = [v65 visibleViewAtIndex_];
            if (v68)
            {
              v69 = v68;
              v70 = v58;
              objc_opt_self();
              v71 = swift_dynamicCastObjCClass();
              if (v71)
              {
                v72 = v71;
                if ((*(v602 + 9) & 1) == 0 && ((*(v602 + 8) & 1) != 0 || v61 != *v602))
                {
                  v642.i8[0] = 0;
                  v640[0] = 1;
                  LOBYTE(v637[0]) = 1;
                  v671 = 0x3FD51EB851EB851FLL;
                  v672 = 0;
                  v673 = 0;
                  v674 = 0;
                  v675 = 1;
                  v676 = 0u;
                  v677 = 0u;
                  v678 = 0u;
                  v679 = 1;
                  sub_21E8AE208(v61, 0, &v671);
                }

                v73 = v582;
                v74 = v601;
                swift_beginAccess();
                v75 = *&v74[v73];
                if (*(v75 + 16) && (v76 = sub_21E8F68D8(v72), (v77 & 1) != 0))
                {
                  v78 = *(*(v75 + 56) + 8 * v76);
                  swift_endAccess();
                  v79 = (fabs(v78) + -40.0) / 80.0;
                  if (v79 <= 1.0)
                  {
                    v80 = v79;
                  }

                  else
                  {
                    v80 = 1.0;
                  }

                  v81 = v80 * 20.0 + 0.0;
                  if (v79 >= 0.0)
                  {
                    v36 = v81;
                  }

                  else
                  {
                    v36 = 0.0;
                  }

                  if (([v601 isExpanded] & 1) == 0)
                  {
                    v82 = *(v605 + 184);
                    if (v82 > -v36)
                    {
                      v82 = -v36;
                    }

                    *(v605 + 184) = v82;
                  }

                  v642.i8[0] = 1;
                  v640[0] = 0;
                  LOBYTE(v637[0]) = 1;
                  v662 = 0;
                  v663 = 1;
                  v664 = 3;
                  v665 = v36;
                  v666 = 0;
                  v667 = 0u;
                  v668 = 0u;
                  v669 = 0u;
                  v670 = 1;
                  sub_21E8AE208(v61, 0, &v662);
                }

                else
                {
                  swift_endAccess();
                }

                v62 = v65;
                v65 = v69;
              }

              else
              {
                v62 = v63;
                v63 = v69;
              }

              v58 = v70;
              v64 = v63;

              v63 = v65;
              v65 = v64;
              v60 = &selRef_isClearingAllNotificationRequestsForCellHorizontalSwipe;
              *&v59 = v600;
              v1 = v601;
            }

            ++v61;
          }

          while (v67 != v59);
        }

        v83 = OBJC_IVAR___NCNotificationListHighlights_indexSeparations;
        swift_beginAccess();
        v568 = v83;
        v84 = *&v1[v83];
        v85 = 1 << *(v84 + 32);
        v86 = -1;
        if (v85 < 64)
        {
          v86 = ~(-1 << v85);
        }

        v87 = v86 & *(v84 + 64);
        v88 = (v85 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v58 = 0;
        if (v87)
        {
          while (1)
          {
            v89 = v58;
LABEL_52:
            v90 = __clz(__rbit64(v87));
            v87 &= v87 - 1;
            v91 = (v89 << 10) | (16 * v90);
            v92 = *(v84 + 56);
            v93 = *(v84 + 48) + v91;
            v94 = *v93;
            v95 = *(v93 + 8);
            v642.i8[0] = 1;
            v640[0] = 0;
            LOBYTE(v637[0]) = 1;
            v645 = 0;
            v646 = 1;
            v647 = *(v92 + v91);
            v648 = 0;
            v649 = 0u;
            v650 = 0u;
            v651 = 0u;
            v652 = 1;
            sub_21E8AE208(v94, v95, &v645);
            if (!v87)
            {
              goto LABEL_48;
            }
          }
        }

        while (1)
        {
LABEL_48:
          v89 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            __break(1u);
LABEL_451:
            __break(1u);
            goto LABEL_452;
          }

          if (v89 >= v88)
          {
            break;
          }

          v87 = *(v84 + 64 + 8 * v89);
          ++v58;
          if (v87)
          {
            v58 = v89;
            goto LABEL_52;
          }
        }

        v96 = OBJC_IVAR___NCNotificationListHighlights_cellTransforms;
        swift_beginAccess();
        v567 = v96;
        v97 = *&v1[v96];
        v98 = 1 << *(v97 + 32);
        v99 = -1;
        if (v98 < 64)
        {
          v99 = ~(-1 << v98);
        }

        v100 = v99 & *(v97 + 64);
        v101 = (v98 + 63) >> 6;
        v58 = &v653;
        swift_bridgeObjectRetain_n();
        v102 = 0;
        v103 = &selRef_isClearingAllNotificationRequestsForCellHorizontalSwipe;
        if (v100)
        {
          while (1)
          {
            v104 = v102;
LABEL_62:
            v105 = __clz(__rbit64(v100)) | (v104 << 6);
            v106 = *(v97 + 48) + 16 * v105;
            v107 = *v106;
            v108 = *(v106 + 8);
            v109 = (*(v97 + 56) + 48 * v105);
            v642.i8[0] = 1;
            v110 = v109[1];
            v658 = *v109;
            v100 &= v100 - 1;
            v640[0] = 1;
            LOBYTE(v637[0]) = 0;
            v653 = 0;
            v654 = 1;
            v655 = 0;
            v656 = 0;
            v657 = 1;
            v659 = v110;
            v660 = v109[2];
            v661 = 0;
            sub_21E8AE208(v107, v108, &v653);
            v103 = &selRef_isClearingAllNotificationRequestsForCellHorizontalSwipe;
            if (!v100)
            {
              goto LABEL_58;
            }
          }
        }

        while (1)
        {
LABEL_58:
          v104 = v102 + 1;
          if (__OFADD__(v102, 1))
          {
            goto LABEL_451;
          }

          if (v104 >= v101)
          {
            break;
          }

          v100 = *(v97 + 64 + 8 * v104);
          ++v102;
          if (v100)
          {
            v102 = v104;
            goto LABEL_62;
          }
        }

        v111 = [v1 v103[210]];
        if (v111)
        {
          v112 = v111;
          v113 = v605;
          [v111 setAdditionalYOffset_];

          sub_21E8F56CC(1);
          v115 = v114;
          v116 = &_OBJC_LABEL_PROTOCOL___NCNotificationListCoalescingControlsHandlerDelegate;
          [v1 availableHeight];
          if (v115 >= v117)
          {
            v124 = 0;
          }

          else
          {
            sub_21E8F56CC(2);
            v119 = v118;
            [v1 availableHeight];
            if (v119 >= v120)
            {
              v124 = 1;
            }

            else
            {
              sub_21E8F56CC(3);
              v122 = v121;
              [v1 availableHeight];
              if (v122 >= v123)
              {
                v124 = 2;
              }

              else
              {
                v124 = 3;
              }
            }
          }

          v126 = MEMORY[0x277D84F98];
          if (v124 <= 1)
          {
            v124 = 1;
          }

          *(v113 + 128) = v124;
          v612[0] = 0;
          v611 = v126;
          v610 = v126;
          [v1 expandedPercentage];
          v128 = v127;
          v129 = [v1 listView];
          if (v129)
          {
            v130 = v129;
            v131 = (v128 + -0.8) / 0.2;
            v132 = 1.0;
            if (v131 <= 1.0)
            {
              v132 = (v128 + -0.8) / 0.2;
            }

            v133 = v132 + 0.0;
            if (v131 >= 0.0)
            {
              v134 = v133;
            }

            else
            {
              v134 = 0.0;
            }

            [v129 setShadowAlphaFactor_];

            v609.receiver = v1;
            v609.super_class = NCNotificationListHighlights;
            v135 = objc_msgSendSuper2(&v609, sel_allNotificationGroups);
            v136 = sub_21E92A528();

            v572 = v136;
            if (v136 >> 62)
            {
              *&v137 = COERCE_DOUBLE(sub_21E92A828());
            }

            else
            {
              v137 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v574 = OBJC_IVAR___NCNotificationListHighlights_listCellsToDroplets;
            if (*&v137 != 0.0)
            {
              v138 = 0;
              *&v603 = v572 & 0xC000000000000001;
              *&v602 = v572 & 0xFFFFFFFFFFFFFF8;
              *&v600 = v572 + 32;
              v554 = "v16@?0@NSTimer8";
              v34 = 0.3;
              v139 = 1.0;
              v36 = -0.65;
              v140 = 0.15;
              v596 = 0.001;
              v598 = 0.01;
              v575 = xmmword_21E948160;
              v577 = xmmword_21E946910;
              v576 = xmmword_21E946900;
              v30 = 0.4;
              v599 = v137;
              v583 = 0.3;
              *&v578 = 0.15;
              *&v579 = -0.65;
              while (1)
              {
                if (v603)
                {
                  v141 = COERCE_DOUBLE(MEMORY[0x223D64A50](v138, v572));
                }

                else
                {
                  if (v138 >= *(v602 + 16))
                  {
                    goto LABEL_456;
                  }

                  *&v141 = *(*&v600 + 8 * v138);
                }

                v142 = v141;
                v143 = (v138 + 1);
                if (__OFADD__(v138, 1))
                {
                  goto LABEL_455;
                }

                sub_21E8F56CC(1);
                v145 = v144;
                [v1 v116[369]];
                if (v145 >= v146)
                {
                  v153 = 0;
                }

                else
                {
                  sub_21E8F56CC(2);
                  v148 = v147;
                  [v1 v116[369]];
                  if (v148 >= v149)
                  {
                    v153 = 1;
                  }

                  else
                  {
                    sub_21E8F56CC(3);
                    v151 = v150;
                    [v1 v116[369]];
                    if (v151 >= v152)
                    {
                      v153 = 2;
                    }

                    else
                    {
                      v153 = 3;
                    }
                  }
                }

                if (v153 <= 1)
                {
                  v58 = 1;
                }

                else
                {
                  v58 = v153;
                }

                v604 = v142;
                v101 = [*&v142 listView];
                [v101 revealPercentage];
                v155 = v154;
                [v1 expandedPercentage];
                if (v156 >= v155)
                {
                  v156 = v155;
                }

                [v101 setRevealPercentage_];
                if (v138 >= v58)
                {
                  *&v165 = sub_21E8ADE68(v138, 0, v614).n128_u64[0];
                  v166 = *&v614[6];
                  [v1 &selRef:v165 :? alertActionForMaterialRecipe:? + 2];
                  v168 = (v167 + -0.7) / v34;
                  v169 = v168 + 0.0;
                  if (v168 + 0.0 > v139)
                  {
                    v169 = v139;
                  }

                  if (v168 >= 0.0)
                  {
                    v170 = v169;
                  }

                  else
                  {
                    v170 = 0.0;
                  }

                  [v101 setGroupingViewOverlapCompressionFactor_];
                  [v1 &selRef__alertActionForMaterialRecipe_ + 2];
                  v172 = (v171 + v36) / v140;
                  v173 = v172 + 0.0;
                  if (v172 + 0.0 > v139)
                  {
                    v173 = v139;
                  }

                  if (v172 >= 0.0)
                  {
                    v174 = v173;
                  }

                  else
                  {
                    v174 = 0.0;
                  }

                  v164 = v166 * v174;
                }

                else
                {
                  [v1 expandedPercentage];
                  v158 = (v157 + -0.7) / v34;
                  v159 = v158 + 0.0;
                  if (v158 + 0.0 > v139)
                  {
                    v159 = v139;
                  }

                  if (v158 >= 0.0)
                  {
                    v160 = v159;
                  }

                  else
                  {
                    v160 = 0.0;
                  }

                  [v101 setGroupingViewOverlapCompressionFactor_];
                  [v1 expandedPercentage];
                  v162 = (v161 + v36) / v140;
                  v163 = v162 + 0.0;
                  if (v162 + 0.0 > v139)
                  {
                    v163 = v139;
                  }

                  if (v162 >= 0.0)
                  {
                    v164 = v163;
                  }

                  else
                  {
                    v164 = 0.0;
                  }
                }

                [v101 setGroupingViewOverlapAlphaFactor_];
                v175 = [objc_opt_self() rootSettings];
                v176 = [v175 listAnimationSettings];

                [v176 groupListMaxViewCount];
                v128 = v177;
                v178 = v177;

                if ((*&v178 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                {
LABEL_457:
                  __break(1u);
LABEL_458:
                  __break(1u);
LABEL_459:
                  __break(1u);
LABEL_460:
                  __break(1u);
LABEL_461:
                  __break(1u);
LABEL_462:
                  __break(1u);
LABEL_463:
                  __break(1u);
LABEL_464:
                  __break(1u);
LABEL_465:
                  __break(1u);
LABEL_466:
                  *&v59 = COERCE_DOUBLE(sub_21E92A828());
                  goto LABEL_13;
                }

                if (v128 <= -9.22337204e18)
                {
                  goto LABEL_458;
                }

                if (v128 >= 9.22337204e18)
                {
                  goto LABEL_459;
                }

                v100 = v128;
                if (v128 < 1)
                {
                  goto LABEL_460;
                }

                if (v128 != 1)
                {
                  v213 = 1;
                  do
                  {
                    v214 = [v101 visibleViewAtIndex_];
                    if (v214)
                    {
                      v215 = v214;
                      objc_opt_self();
                      v216 = swift_dynamicCastObjCClass();
                      if (v216)
                      {
                        v217 = v216;
                        [v1 expandedPercentage];
                        [v217 setBackgroundHidden_];
                      }
                    }

                    ++v213;
                  }

                  while (v100 != v213);
                }

                v179 = [v101 visibleViewAtIndex_];
                if (!v179)
                {
                  break;
                }

                v180 = v179;
                objc_opt_self();
                v181 = swift_dynamicCastObjCClass();
                if (!v181)
                {

                  v101 = v180;
                  goto LABEL_87;
                }

                v182 = v181;
                v183 = sub_21E8EF328();
                if (__OFADD__(v183, 1))
                {
                  goto LABEL_462;
                }

                if (v138 >= v183 + 1)
                {
                  v219 = [v1 isExpanded];
                  v36 = v618;
                  v34 = 1.0;
                  if (v219)
                  {
                    v128 = 1.0;
                  }

                  else
                  {
                    v128 = v618;
                  }

                  if (([v1 isExpanded] & 1) == 0)
                  {
                    v220 = sub_21E8EE738();
                    if (__OFADD__(v220, 1))
                    {
                      goto LABEL_465;
                    }

                    if (v220 + 1 < v138)
                    {
                      v34 = (v36 + -0.6) / 0.4 + 0.0;
                    }
                  }

                  v221 = v596;
                  v222 = v597;
                  v223 = [v1 isExpanded];
                  if (v223)
                  {
                    v224 = 0.0;
                  }

                  else
                  {
                    v224 = v621;
                  }

                  if (v223)
                  {
                    v225 = 0.0;
                  }

                  else
                  {
                    v225 = v622;
                  }

                  if (v223)
                  {
                    v226 = -1;
                  }

                  else
                  {
                    v226 = 0;
                  }

                  v227 = vdupq_n_s64(v226);
                  v595 = vbslq_s8(v227, v577, v619);
                  v594 = vbslq_s8(v227, v576, v620);
                  [v182 setCompositeAlpha_];
                  [v182 setBackgroundAlpha_];
                  [v182 setContentAlpha_];
                  v228 = v180;
                  [v182 setAlpha_];
                  v643 = v594;
                  v642 = v595;
                  *&v644 = v224;
                  *(&v644 + 1) = v225;
                  [v182 setContentTransform_];
                  [v182 setHidden_];

                  [v182 setBackgroundHidden_];
                  [v182 setDisableDimming_];
                  [v182 setAllowContentToCrossFade_];
                  [v182 setHideDate_];
                  [v182 setDateAlpha_];

                  v116 = &_OBJC_LABEL_PROTOCOL___NCNotificationListCoalescingControlsHandlerDelegate;
                  v34 = v583;
                  v140 = *&v578;
                  v36 = *&v579;
                  v139 = 1.0;
                  v101 = *&v604;
                }

                else
                {
                  v184 = v138 < v58;
                  v128 = v597;
                  v185 = v597 <= v596;
                  if ([v1 isExpanded])
                  {
                    v186 = v139;
                  }

                  else
                  {
                    v186 = 0.0;
                  }

                  [v182 setBackgroundAlpha_];
                  [v182 setContentAlpha_];
                  [v182 setCompositeAlpha_];
                  v187 = v180;
                  v188 = &selRef_isClearingAllNotificationRequestsForCellHorizontalSwipe;
                  v189 = v187;
                  [v182 setAlpha_];
                  v643.i64[0] = 0;
                  v642 = 0x3FF0000000000000uLL;
                  v643.i64[1] = 0x3FF0000000000000;
                  v644 = 0uLL;
                  [v182 setContentTransform_];
                  [v182 setHidden_];
                  v595.i64[0] = v189;

                  [v182 setDisableDimming_];
                  [v182 setHideDate_];
                  [v182 setAllowContentToCrossFade_];
                  [v182 setDateAlpha_];
                  [v182 setBackgroundHidden_];
                  v190 = v574;
                  swift_beginAccess();
                  v100 = sub_21E8E779C(v182, *&v1[v190]);
                  swift_endAccess();
                  if (v100)
                  {
                    goto LABEL_141;
                  }

                  v229 = [*&v1[v573] window];
                  v58 = &selRef_appendString_withName_;
                  if (v229)
                  {

                    v230 = [v182 contentView];
                    v231 = [v230 window];

                    if (v231)
                    {

                      v232 = *&v1[v573];
                      v58 = [v182 contentView];
                      v100 = sub_21E8B58FC(v58, 0xD000000000000036, (v554 | 0x8000000000000000));

                      if (v100)
                      {
                        v188 = &selRef_isClearingAllNotificationRequestsForCellHorizontalSwipe;
LABEL_141:
                        v191 = v582;
                        swift_beginAccess();
                        v192 = *&v1[v191];
                        v193 = 0.0;
                        if (*(v192 + 16))
                        {
                          v194 = sub_21E8F68D8(v182);
                          if (v195)
                          {
                            v193 = *(*(v192 + 56) + 8 * v194);
                          }
                        }

                        v584 = (v138 + 1);
                        swift_endAccess();
                        sub_21E8F3D40(v100, v138, 0, 0, 0, v612, v193);
                        if (v138 == sub_21E8EF328() && ([v1 v188[41]] & 1) == 0)
                        {
                          [*(v100 + 40) alpha];
                          if (v196 != 0.0)
                          {
                            [*(v100 + 40) setAlpha_];
                            v612[0] = 1;
                          }
                        }

                        sub_21E8ADE68(v138, 0, &v615);
                        v128 = v616;
                        *(v100 + 77) = v616 < v598;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
                        v197 = swift_allocObject();
                        *(v197 + 16) = v575;
                        v198 = *(v100 + 24);
                        *(v197 + 32) = v198;
                        v199 = *(v100 + 32);
                        *(v197 + 40) = v199;
                        v594.i64[0] = v100;
                        v200 = *(v100 + 40);
                        *(v197 + 48) = v200;
                        v201 = (v197 & 0xC000000000000001) == 0;
                        sub_21E8E7038(0, v201, v197);
                        sub_21E8E7038(2uLL, v201, v197);
                        v585 = (v197 & 0xC000000000000001);
                        if ((v197 & 0xC000000000000001) != 0)
                        {
                          v247 = v198;
                          v248 = v199;
                          v249 = v200;
                          v206 = MEMORY[0x223D64A50](0, v197);
                        }

                        else
                        {
                          v202 = *(v197 + 32);
                          v203 = v198;
                          v204 = v199;
                          v205 = v200;
                          v206 = v202;
                        }

                        v207 = v206;
                        v208 = v598;
                        v209 = v128 < v598;
                        v210 = [v206 isHidden];
                        v100 = v594.i64[0];
                        v143 = v584;
                        v211 = v585;
                        if ((v209 ^ v210))
                        {
                          [v207 setHidden_];

                          v612[0] = 1;
                          if (v211)
                          {
                            goto LABEL_152;
                          }

LABEL_181:
                          v212 = *(v197 + 40);
                        }

                        else
                        {

                          if (!v211)
                          {
                            goto LABEL_181;
                          }

LABEL_152:
                          v212 = MEMORY[0x223D64A50](1, v197);
                        }

                        v233 = v212;
                        v234 = v598;
                        v235 = v128 < v598;
                        if ((v235 ^ [v212 isHidden]))
                        {
                          [v233 setHidden_];

                          v612[0] = 1;
                          if (v211)
                          {
                            goto LABEL_184;
                          }

LABEL_186:
                          v236 = *(v197 + 48);
                        }

                        else
                        {

                          if (!v211)
                          {
                            goto LABEL_186;
                          }

LABEL_184:
                          v236 = MEMORY[0x223D64A50](2, v197);
                        }

                        v237 = v236;
                        v238 = v598;
                        v239 = v128 < v598;
                        if ((v239 ^ [v236 isHidden]))
                        {
                          [v237 setHidden_];

                          v612[0] = 1;
                        }

                        else
                        {
                        }

                        v116 = &_OBJC_LABEL_PROTOCOL___NCNotificationListCoalescingControlsHandlerDelegate;
                        swift_setDeallocating();
                        sub_21E91C958();
                        sub_21E8B4D48();
                        v240 = v595.i64[0];

                        sub_21E8F6E80(v241, v182);

                        v242 = v582;
                        swift_beginAccess();
                        v243 = *&v1[v242];
                        if (*(v243 + 16) && (v244 = sub_21E8F68D8(v182), (v245 & 1) != 0))
                        {
                          v246 = 0;
                          v58 = *(*(v243 + 56) + 8 * v244);
                        }

                        else
                        {
                          v58 = 0;
                          v246 = 1;
                        }

                        swift_endAccess();
                        sub_21E8E784C(v58, v246, v182);

                        v101 = *&v604;
                        goto LABEL_88;
                      }
                    }
                  }

                  v116 = &_OBJC_LABEL_PROTOCOL___NCNotificationListCoalescingControlsHandlerDelegate;
                  v101 = *&v604;
                }

LABEL_88:

                v138 = v143;
                v113 = v605;
                if (v143 == v599)
                {
                  goto LABEL_198;
                }
              }

LABEL_87:
              v116 = &_OBJC_LABEL_PROTOCOL___NCNotificationListCoalescingControlsHandlerDelegate;
              goto LABEL_88;
            }

LABEL_198:

            if (swift_unknownObjectWeakLoadStrong())
            {
              v250 = *(v113 + 96);
              ObjectType = swift_getObjectType();
              v252 = (*(v250 + 48))(v113, ObjectType, v250);
              swift_unknownObjectRelease();
              LODWORD(v253) = v252 > 0;
            }

            else
            {
              LODWORD(v253) = 0;
            }

            v254 = &selRef_appendString_withName_;
            *&v255 = COERCE_DOUBLE(sub_21E8F9008());
            if (*&v255 == 0.0)
            {
              goto LABEL_312;
            }

            v256 = v255;

            sub_21E8ADE68(0, 1, v623);
            v30 = *&v623[2];
            v128 = *&v623[3];
            v34 = *&v623[4];
            v36 = *&v623[5];
            *&v603 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
            v257 = swift_allocObject();
            v602 = xmmword_21E948160;
            *(v257 + 16) = xmmword_21E948160;
            v258 = v256[3];
            *(v257 + 32) = v258;
            v259 = v256[4];
            *(v257 + 40) = v259;
            v604 = *&v256;
            v260 = v256[5];
            *(v257 + 48) = v260;
            *&v261 = v257 & 0xC000000000000001;
            v262 = v258;
            v263 = v259;
            v264 = v260;
            if ((v257 & 0xC000000000000001) != 0)
            {
              goto LABEL_469;
            }

            for (i = v262; ; i = MEMORY[0x223D64A50](0, v257))
            {
              v266 = i;
              [i v254[87]];
              v692.origin.x = v30;
              v692.origin.y = v128;
              v692.size.width = v34;
              v692.size.height = v36;
              if (CGRectEqualToRect(v681, v692))
              {

                if (v261 != 0.0)
                {
                  goto LABEL_206;
                }
              }

              else
              {
                [v266 setBounds_];

                v612[0] = 1;
                if (v261 != 0.0)
                {
LABEL_206:
                  v267 = MEMORY[0x223D64A50](1, v257);
                  goto LABEL_209;
                }
              }

              v267 = *(v257 + 40);
LABEL_209:
              v268 = v267;
              [v267 v254[87]];
              v693.origin.x = v30;
              v693.origin.y = v128;
              v693.size.width = v34;
              v693.size.height = v36;
              if (CGRectEqualToRect(v682, v693))
              {

                if (v261 != 0.0)
                {
                  goto LABEL_211;
                }
              }

              else
              {
                [v268 setBounds_];

                v612[0] = 1;
                if (v261 != 0.0)
                {
LABEL_211:
                  v269 = MEMORY[0x223D64A50](2, v257);
                  goto LABEL_214;
                }
              }

              v269 = *(v257 + 48);
LABEL_214:
              v270 = v269;
              [v269 v254[87]];
              v694.origin.x = v30;
              v694.origin.y = v128;
              v694.size.width = v34;
              v694.size.height = v36;
              if (CGRectEqualToRect(v683, v694))
              {
              }

              else
              {
                [v270 setBounds_];

                v612[0] = 1;
              }

              v271 = v604;
              swift_setDeallocating();
              sub_21E91C958();
              sub_21E8B4D48();
              v272 = *v623;
              v273 = *&v623[1];
              v274 = swift_allocObject();
              *(v274 + 16) = v602;
              v275 = *(*&v271 + 24);
              *(v274 + 32) = v275;
              v276 = *(*&v271 + 32);
              *(v274 + 40) = v276;
              v277 = *(*&v271 + 40);
              *(v274 + 48) = v277;
              v278 = v274 & 0xC000000000000001;
              v279 = (v274 & 0xC000000000000001) == 0;
              sub_21E8E7038(0, v279, v274);
              sub_21E8E7038(2uLL, v279, v274);
              if ((v274 & 0xC000000000000001) != 0)
              {
                v535 = v275;
                v536 = v276;
                v537 = v277;
                v284 = MEMORY[0x223D64A50](0, v274);
              }

              else
              {
                v280 = *(v274 + 32);
                v281 = v275;
                v282 = v276;
                v283 = v277;
                v284 = v280;
              }

              v285 = v284;
              [v284 center];
              if (v287 == v272 && v286 == v273)
              {

                if (v278)
                {
                  goto LABEL_224;
                }
              }

              else
              {
                [v285 setCenter_];

                v612[0] = 1;
                if (v278)
                {
LABEL_224:
                  v288 = MEMORY[0x223D64A50](1, v274);
                  goto LABEL_225;
                }
              }

              v288 = *(v274 + 40);
LABEL_225:
              v289 = v288;
              [v288 center];
              if (v291 == v272 && v290 == v273)
              {

                if (v278)
                {
                  goto LABEL_230;
                }
              }

              else
              {
                [v289 setCenter_];

                v612[0] = 1;
                if (v278)
                {
LABEL_230:
                  v292 = MEMORY[0x223D64A50](2, v274);
                  goto LABEL_231;
                }
              }

              v292 = *(v274 + 48);
LABEL_231:
              v293 = v292;
              [v292 center];
              if (v295 == v272 && v294 == v273)
              {
              }

              else
              {
                [v293 setCenter_];

                v612[0] = 1;
              }

              swift_setDeallocating();
              sub_21E91C958();
              sub_21E8B4D48();
              v296 = *&v623[6];
              v297 = swift_allocObject();
              *(v297 + 16) = v602;
              v298 = *(*&v271 + 24);
              *(v297 + 32) = v298;
              v299 = *(*&v271 + 32);
              *(v297 + 40) = v299;
              v300 = *(*&v271 + 40);
              *(v297 + 48) = v300;
              v301 = v297 & 0xC000000000000001;
              v302 = (v297 & 0xC000000000000001) == 0;
              sub_21E8E7038(0, v302, v297);
              sub_21E8E7038(2uLL, v302, v297);
              if ((v297 & 0xC000000000000001) != 0)
              {
                v538 = v298;
                v539 = v299;
                v540 = v300;
                v307 = MEMORY[0x223D64A50](0, v297);
              }

              else
              {
                v303 = *(v297 + 32);
                v304 = v298;
                v305 = v299;
                v306 = v300;
                v307 = v303;
              }

              v308 = v307;
              [v307 alpha];
              if (v309 == v296)
              {

                if (v301)
                {
                  goto LABEL_239;
                }
              }

              else
              {
                [v308 setAlpha_];

                v612[0] = 1;
                if (v301)
                {
LABEL_239:
                  v310 = MEMORY[0x223D64A50](1, v297);
                  goto LABEL_242;
                }
              }

              v310 = *(v297 + 40);
LABEL_242:
              v311 = v310;
              [v310 alpha];
              if (v312 == v296)
              {

                if (v301)
                {
                  goto LABEL_244;
                }
              }

              else
              {
                [v311 setAlpha_];

                v612[0] = 1;
                if (v301)
                {
LABEL_244:
                  v313 = MEMORY[0x223D64A50](2, v297);
                  goto LABEL_247;
                }
              }

              v313 = *(v297 + 48);
LABEL_247:
              v314 = v313;
              [v313 alpha];
              if (v315 == v296)
              {
              }

              else
              {
                [v314 setAlpha_];

                v612[0] = 1;
              }

              swift_setDeallocating();
              sub_21E91C958();
              sub_21E8B4D48();
              *(*&v271 + 76) = v624;
              sub_21E8B4D48();
              v316 = [v1 isExpanded];
              LODWORD(v600) = v253;
              if (v316)
              {
                v317 = *(*&v271 + 32);
                *&v644 = 0;
                v643 = 0u;
                v642 = 0u;
                v318 = v317;
                sub_21E92A718();
              }

              else
              {
                v319 = *&v1[OBJC_IVAR___NCNotificationListHighlights_lightHandle];

                v320 = [v1 listView];
                if (!v320)
                {
                  goto LABEL_483;
                }

                v321 = v320;
                v322 = [v320 traitCollection];

                [v322 glassLuminanceValue];
                v324 = v323;

                v325 = v324;
                sub_21E8B4E68(v319, 13.5, v325);
              }

              v326 = v570;
              sub_21E929AE8();
              [v1 expandedPercentage];
              v34 = v327 * 23.5;
              sub_21E8ADE68(0, 0, &v625);
              v328 = (v626 + -0.001) / 19.999;
              if (v328 <= 1.0)
              {
                v329 = (v626 + -0.001) / 19.999;
              }

              else
              {
                v329 = 1.0;
              }

              v36 = 0.0;
              v330 = v329 + 0.0;
              if (v328 >= 0.0)
              {
                v331 = v330;
              }

              else
              {
                v331 = 0.0;
              }

              v332 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
              LODWORD(v333) = 1057803469;
              LODWORD(v334) = 1055286886;
              LODWORD(v335) = 1.0;
              v336 = [v332 initWithControlPoints__:0.0 :{v333, v334, v335}];
              *&v337 = v331;
              [v336 _solveForInput_];
              v339 = v338;

              v340 = v339 * 23.5;
              sub_21E8F8E00(0);
              v342 = fabs(v341);
              v343 = (v342 + -20.0) / 80.0;
              if (v343 <= 1.0)
              {
                v344 = (v342 + -20.0) / 80.0;
              }

              else
              {
                v344 = 1.0;
              }

              v345 = v344 * 23.5;
              v346 = v342 / 11.75;
              if (v346 > 1.0)
              {
                v346 = 1.0;
              }

              v347 = v345 + 0.0;
              if (v343 >= 0.0)
              {
                v348 = v347;
              }

              else
              {
                v348 = 0.0;
              }

              v349 = v346 * 23.5 + 0.0;
              if (v341 >= 0.0)
              {
                v349 = 0.0;
                v348 = 0.0;
              }

              v350 = v341 / 11.75;
              if (v341 / 11.75 > 1.0)
              {
                v350 = 1.0;
              }

              v351 = (v341 + -20.0) / 80.0;
              if (v351 <= 1.0)
              {
                v352 = (v341 + -20.0) / 80.0;
              }

              else
              {
                v352 = 1.0;
              }

              v353 = v350 * 23.5 + 0.0;
              v354 = v352 * 23.5 + 0.0;
              if (v351 >= 0.0)
              {
                v355 = v354;
              }

              else
              {
                v355 = 0.0;
              }

              v356 = v341 <= 0.0;
              if (v341 > 0.0)
              {
                v357 = v355;
              }

              else
              {
                v357 = v349;
              }

              if (v356)
              {
                v358 = v348;
              }

              else
              {
                v358 = v353;
              }

              if (v340 > v358)
              {
                v358 = v340;
              }

              if (v34 > v358)
              {
                v30 = v34;
              }

              else
              {
                v30 = v358;
              }

              if (v340 > v357)
              {
                v357 = v340;
              }

              if (v34 > v357)
              {
                v128 = v34;
              }

              else
              {
                v128 = v357;
              }

              v359 = v563;
              v360 = *(v563 + 16);
              v361 = v571;
              v360(v559, v326, v571);
              v360(v560, v326, v361);
              sub_21E929AE8();
              sub_21E929AE8();
              v362 = *MEMORY[0x277CDA138];
              v253 = v564;
              sub_21E929B08();
              KeyPath = swift_getKeyPath();
              v365 = v565;
              v364 = v566;
              v366 = v558;
              (*(v565 + 16))(v566, v253, v558);
              v367 = 1;
              (*(v365 + 56))(v364, 0, 1, v366);
              sub_21E8E8174(KeyPath, v364, v612);

              sub_21E8B4CAC(v364, &unk_27CED7880);
              (*(v365 + 8))(v253, v366);
              (*(v359 + 8))(v570, v571);
              LODWORD(v253) = LODWORD(v600);
              if (LOBYTE(v600))
              {
                v367 = [v1 isExpanded];
              }

              v368 = v604;
              *(*&v604 + 77) = v367;
              v369 = swift_allocObject();
              *(v369 + 16) = v602;
              v101 = *(*&v368 + 24);
              *(v369 + 32) = v101;
              v100 = *(*&v368 + 32);
              *(v369 + 40) = v100;
              v58 = *(*&v368 + 40);
              *(v369 + 48) = v58;
              v370 = v369 & 0xC000000000000001;
              LOBYTE(v368) = (v369 & 0xC000000000000001) == 0;
              sub_21E8E7038(0, SLOBYTE(v368), v369);
              sub_21E8E7038(2uLL, SLOBYTE(v368), v369);
              if ((v369 & 0xC000000000000001) != 0)
              {
                v541 = v101;
                v542 = v100;
                v543 = v58;
                v375 = MEMORY[0x223D64A50](0, v369);
              }

              else
              {
                v371 = *(v369 + 32);
                v372 = v101;
                v373 = v100;
                v374 = v58;
                v375 = v371;
              }

              v376 = v375;
              if (v367 == [v375 isHidden])
              {

                if (v370)
                {
LABEL_300:
                  v377 = MEMORY[0x223D64A50](1, v369);
                  goto LABEL_303;
                }
              }

              else
              {
                [v376 setHidden_];

                v612[0] = 1;
                if (v370)
                {
                  goto LABEL_300;
                }
              }

              v377 = *(v369 + 40);
LABEL_303:
              v378 = v377;
              if (v367 == [v377 isHidden])
              {

                if (!v370)
                {
LABEL_307:
                  v379 = *(v369 + 48);
                  goto LABEL_308;
                }
              }

              else
              {
                [v378 setHidden_];

                v612[0] = 1;
                if (!v370)
                {
                  goto LABEL_307;
                }
              }

              v379 = MEMORY[0x223D64A50](2, v369);
LABEL_308:
              v380 = v379;
              v381 = [v379 isHidden];
              v113 = v605;
              if (v367 == v381)
              {
              }

              else
              {
                [v380 setHidden_];

                v612[0] = 1;
              }

              swift_setDeallocating();
              sub_21E91C958();
              sub_21E8B4D48();

LABEL_312:
              v382 = v569;
              [v569 setHidden_];
              sub_21E8ADE68(0, 1, v627);
              v383 = *&v382[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_contentView];
              v642 = v627[4];
              v643 = v627[5];
              v644 = v627[6];
              [v383 setTransform_];
              v254 = v113;
              v261 = COERCE_DOUBLE(&OBJC_PROTOCOL___UIContentSizeCategoryAdjusting.prots);
              if (sub_21E8ADCA4())
              {
                v261 = *&v1[OBJC_IVAR___NCNotificationListHighlights_showMoreLabel];
                sub_21E8ADE68(1, 1, v628);
                [*&v261 setFrame_];
                v384 = sub_21E8F90F4();
                if (v384)
                {
                  v385 = v384;
                  v604 = v261;

                  sub_21E8F3D40(v386, 1, 1, 0, 1, v612, 0.0);
                  [v1 expandedPercentage];
                  v388 = v387 / 0.4;
                  v389 = 1.0 - v388;
                  if (v388 > 1.0)
                  {
                    v389 = 0.0;
                  }

                  if (v388 >= 0.0)
                  {
                    v30 = v389;
                  }

                  else
                  {
                    v30 = 1.0;
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
                  v257 = swift_allocObject();
                  v603 = xmmword_21E948160;
                  *(v257 + 16) = xmmword_21E948160;
                  v254 = *(v385 + 3);
                  *(v257 + 32) = v254;
                  v100 = *(v385 + 4);
                  *(v257 + 40) = v100;
                  v58 = *(v385 + 5);
                  *(v257 + 48) = v58;
                  v101 = v257 & 0xC000000000000001;
                  v390 = (v257 & 0xC000000000000001) == 0;
                  sub_21E8E7038(0, v390, v257);
                  sub_21E8E7038(2uLL, v390, v257);
                  if ((v257 & 0xC000000000000001) == 0)
                  {
                    v391 = *(v257 + 32);
                    v392 = v254;
                    v393 = v100;
                    v394 = v58;
                    v395 = v391;
                    goto LABEL_321;
                  }

                  goto LABEL_474;
                }

                goto LABEL_365;
              }

              v399 = sub_21E8F90F4();
              if (v399)
              {
                v400 = v399;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
                v401 = swift_allocObject();
                *(v401 + 16) = xmmword_21E948160;
                v402 = v400[3];
                *(v401 + 32) = v402;
                v101 = v400[4];
                *(v401 + 40) = v101;
                v58 = v400[5];
                *(v401 + 48) = v58;
                v253 = (v401 & 0xC000000000000001);

                v403 = v402;
                v404 = v101;
                v405 = v58;
                if ((v401 & 0xC000000000000001) != 0)
                {
                  v406 = MEMORY[0x223D64A50](0, v401);
                }

                else
                {
                  v406 = v403;
                }

                v407 = v406;
                [v406 alpha];
                if (v408 == 0.0)
                {

                  if (v253)
                  {
                    goto LABEL_329;
                  }

LABEL_336:
                  v409 = *(v401 + 40);
                }

                else
                {
                  [v407 setAlpha_];

                  v612[0] = 1;
                  if (!v253)
                  {
                    goto LABEL_336;
                  }

LABEL_329:
                  v409 = MEMORY[0x223D64A50](1, v401);
                }

                v413 = v409;
                [v409 alpha];
                if (v414 == 0.0)
                {

                  if (v253)
                  {
                    goto LABEL_339;
                  }

LABEL_345:
                  v415 = *(v401 + 48);
                }

                else
                {
                  [v413 setAlpha_];

                  v612[0] = 1;
                  if (!v253)
                  {
                    goto LABEL_345;
                  }

LABEL_339:
                  v415 = MEMORY[0x223D64A50](2, v401);
                }

                v418 = v415;
                [v415 alpha];
                if (v419 == 0.0)
                {
                }

                else
                {
                  [v418 setAlpha_];

                  v612[0] = 1;
                }

                swift_setDeallocating();
                sub_21E91C958();
                sub_21E8B4D48();
              }

              v433 = sub_21E8F90F4();
              if (v433)
              {
                v434 = v433;
                *(v433 + 77) = 1;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
                v435 = swift_allocObject();
                *(v435 + 16) = xmmword_21E948160;
                v100 = v434[3];
                *(v435 + 32) = v100;
                v58 = v434[4];
                *(v435 + 40) = v58;
                v101 = v434[5];
                *(v435 + 48) = v101;
                v253 = (v435 & 0xC000000000000001);
                v436 = (v435 & 0xC000000000000001) == 0;
                sub_21E8E7038(0, v436, v435);
                sub_21E8E7038(2uLL, v436, v435);
                if ((v435 & 0xC000000000000001) != 0)
                {

                  v550 = v100;
                  v551 = v58;
                  v552 = v101;
                  v441 = MEMORY[0x223D64A50](0, v435);
                }

                else
                {
                  v437 = *(v435 + 32);

                  v438 = v100;
                  v439 = v58;
                  v440 = v101;
                  v441 = v437;
                }

                v442 = v441;
                if ([v441 isHidden])
                {

                  if (v253)
                  {
                    goto LABEL_373;
                  }

LABEL_375:
                  v443 = *(v435 + 40);
                }

                else
                {
                  v101 = 1;
                  [v442 setHidden_];

                  v612[0] = 1;
                  if (!v253)
                  {
                    goto LABEL_375;
                  }

LABEL_373:
                  v443 = MEMORY[0x223D64A50](1, v435);
                }

                v444 = v443;
                if ([v443 isHidden])
                {

                  if (v253)
                  {
                    goto LABEL_378;
                  }

LABEL_380:
                  v445 = *(v435 + 48);
                }

                else
                {
                  v101 = 1;
                  [v444 setHidden_];

                  v612[0] = 1;
                  if (!v253)
                  {
                    goto LABEL_380;
                  }

LABEL_378:
                  v445 = MEMORY[0x223D64A50](2, v435);
                }

                v446 = v445;
                if ([v445 isHidden])
                {
                }

                else
                {
                  LODWORD(v253) = 1;
                  [v446 setHidden_];

                  v612[0] = 1;
                }

                swift_setDeallocating();
                sub_21E91C958();
                sub_21E8B4D48();
              }

              [*&v1[OBJC_IVAR___NCNotificationListHighlights_showMoreLabel] setHidden_];
              v254 = v605;
              while (1)
              {
                v385 = sub_21E8ADCA4();
                v257 = v1;
                v447 = sub_21E8EE738();
                if ((v385 & 1) == 0)
                {
                  break;
                }

                v448 = __OFADD__(v447++, 1);
                if (!v448)
                {
                  break;
                }

                __break(1u);
LABEL_474:
                v544 = v254;
                v545 = v100;
                v546 = v58;
                v395 = MEMORY[0x223D64A50](0, v257);
LABEL_321:
                v396 = v395;
                [v395 alpha];
                if (v397 == v30)
                {

                  if (v101)
                  {
                    goto LABEL_323;
                  }
                }

                else
                {
                  [v396 setAlpha_];

                  v612[0] = 1;
                  if (v101)
                  {
LABEL_323:
                    v398 = MEMORY[0x223D64A50](1, v257);
                    goto LABEL_332;
                  }
                }

                v398 = *(v257 + 40);
LABEL_332:
                v410 = v398;
                [v398 alpha];
                if (v411 == v30)
                {

                  if (v101)
                  {
                    goto LABEL_334;
                  }
                }

                else
                {
                  [v410 setAlpha_];

                  v612[0] = 1;
                  if (v101)
                  {
LABEL_334:
                    v412 = MEMORY[0x223D64A50](2, v257);
                    goto LABEL_342;
                  }
                }

                v412 = *(v257 + 48);
LABEL_342:
                v416 = v412;
                [v412 alpha];
                if (v417 == v30)
                {
                }

                else
                {
                  [v416 setAlpha_];

                  v612[0] = 1;
                }

                swift_setDeallocating();
                sub_21E91C958();
                sub_21E8B4D48();
                v253 = [v1 isExpanded];
                *(v385 + 77) = v253;
                v420 = swift_allocObject();
                *(v420 + 16) = v603;
                v421 = *(v385 + 3);
                *(v420 + 32) = v421;
                v100 = *(v385 + 4);
                *(v420 + 40) = v100;
                v58 = *(v385 + 5);
                *(v420 + 48) = v58;
                v101 = v420 & 0xC000000000000001;
                v422 = (v420 & 0xC000000000000001) == 0;
                sub_21E8E7038(0, v422, v420);
                sub_21E8E7038(2uLL, v422, v420);
                if ((v420 & 0xC000000000000001) != 0)
                {
                  v547 = v421;
                  v548 = v100;
                  v549 = v58;
                  v427 = MEMORY[0x223D64A50](0, v420);
                }

                else
                {
                  v423 = *(v420 + 32);
                  v424 = v421;
                  v425 = v100;
                  v426 = v58;
                  v427 = v423;
                }

                v428 = v427;
                if (v253 == [v427 isHidden])
                {

                  if (v101)
                  {
LABEL_353:
                    v429 = MEMORY[0x223D64A50](1, v420);
                    goto LABEL_356;
                  }
                }

                else
                {
                  [v428 setHidden_];

                  v612[0] = 1;
                  if (v101)
                  {
                    goto LABEL_353;
                  }
                }

                v429 = *(v420 + 40);
LABEL_356:
                v430 = v429;
                if (v253 == [v429 isHidden])
                {

                  if (!v101)
                  {
LABEL_360:
                    v431 = *(v420 + 48);
                    goto LABEL_361;
                  }
                }

                else
                {
                  [v430 setHidden_];

                  v612[0] = 1;
                  if (!v101)
                  {
                    goto LABEL_360;
                  }
                }

                v431 = MEMORY[0x223D64A50](2, v420);
LABEL_361:
                v432 = v431;
                if (v253 == [v431 isHidden])
                {
                }

                else
                {
                  [v432 setHidden_];

                  v612[0] = 1;
                }

                swift_setDeallocating();
                sub_21E91C958();
                sub_21E8B4D48();

                v261 = v604;
                v254 = v605;
LABEL_365:
                [*&v261 setHidden_];
              }

              if ((v447 & 0x8000000000000000) == 0)
              {
                v594.i64[0] = v447;
                if (v447)
                {
                  v585 = objc_opt_self();
                  v449 = 0;
                  LODWORD(v579) = *MEMORY[0x277D74DE8];
                  v578 = v557 + 104;
                  v577.i64[0] = v557 + 8;
                  v584 = (v556 + 8);
                  v576.i64[0] = "undStyle";
                  v58 = v555 + 8;
                  *&v575 = "lockscreenNotifications";
                  v34 = 0.5;
                  v583 = 0.001;
                  while (v449)
                  {
                    if (v449 != sub_21E8EE738())
                    {
                      sub_21E8ADE68((v449 - 1), 0, v637);
                      v462 = v638;
                      v463 = v639;
                      v604 = v637[2] + v637[0] - v638 * v34;
                      v469 = v637[3] + v637[1] - v639 * v34;
                      sub_21E8ADE68((v449 - 1), 0, v640);
                      v599 = v641;
                      v470 = &v642;
                      v471 = &v642;
                      v472 = v449;
                      goto LABEL_400;
                    }

                    v460 = sub_21E8EE738();
                    v448 = __OFSUB__(v460, 1);
                    v461 = v460 - 1;
                    if (v448)
                    {
                      goto LABEL_463;
                    }

                    sub_21E8ADE68(v461, 0, v634);
                    v30 = *&v634[2];
                    v36 = *&v634[3];
                    v462 = *&v634[4];
                    v463 = *&v634[5];
                    v464 = *v634;
                    v465 = *&v634[1];
                    v466 = sub_21E8EE738();
                    v448 = __OFSUB__(v466, 1);
                    v467 = v466 - 1;
                    if (v448)
                    {
                      goto LABEL_464;
                    }

                    v468 = v464 - v462 * v34;
                    v469 = v36 + v465 - v463 * v34;
                    v604 = v30 + v468;
                    sub_21E8ADE68(v467, 0, v635);
                    v599 = v635[6];
                    v470 = v636;
                    v471 = v636;
                    v472 = 1;
                    v473 = 1;
LABEL_401:
                    sub_21E8ADE68(v472, v473, v471);
                    *&v603 = v469;
                    v474 = v470[2];
                    v475 = v470[3];
                    v476 = v470[4];
                    *&v602 = v470[5];
                    v477 = v474 + *v470 - v476 * v34;
                    v478 = v475 + v470[1] - *&v602 * v34;
                    v479 = sub_21E8F4DE0(v449);
                    v480 = v604;
                    v686.origin.x = v604;
                    v686.origin.y = v469;
                    v686.size.width = v462;
                    v686.size.height = v463;
                    MinX = CGRectGetMinX(v686);
                    v687.origin.x = v477;
                    v482 = v477;
                    *v595.i64 = v477;
                    v687.origin.y = v478;
                    v687.size.width = v476;
                    *&v687.size.height = v602;
                    v483 = CGRectGetMinX(v687);
                    if (MinX > v483)
                    {
                      v483 = MinX;
                    }

                    v597 = v483;
                    v688.origin.x = v480;
                    *&v688.origin.y = v603;
                    v688.size.width = v462;
                    v688.size.height = v463;
                    MaxX = CGRectGetMaxX(v688);
                    v689.origin.x = v482;
                    v689.origin.y = v478;
                    v689.size.width = v476;
                    v485 = *&v602;
                    *&v689.size.height = v602;
                    v486 = CGRectGetMaxX(v689);
                    if (v486 >= MaxX)
                    {
                      v486 = MaxX;
                    }

                    v598 = v486;
                    v487 = v479;
                    v690.origin.x = v480;
                    v488 = *&v603;
                    *&v690.origin.y = v603;
                    v600 = v462;
                    v690.size.width = v462;
                    v596 = v463;
                    v690.size.height = v463;
                    v489 = *v595.i64;
                    MaxY = CGRectGetMaxY(v690);
                    v691.origin.x = v489;
                    v691.origin.y = v478;
                    v691.size.width = v476;
                    v691.size.height = v485;
                    v491 = (MaxY + CGRectGetMinY(v691)) * 0.5;
                    [v487 frame];
                    [v487 setFrame_];
                    [v487 frame];
                    [v487 setFrame_];
                    if ([v585 useRegularMaterial])
                    {
                      v450 = v592;
                      sub_21E929BA8();
                      v453 = v591;
                      sub_21E929BB8();
                    }

                    else
                    {
                      v450 = v592;
                      sub_21E929B98();
                      v452 = v580;
                      v451 = v581;
                      (*v578)(v580, v579, v581);
                      v453 = v591;
                      sub_21E929B88();
                      (*v577.i64[0])(v452, v451);
                    }

                    v492 = *v584;
                    v493 = v593;
                    (*v584)(v450, v593);
                    sub_21E929B38();
                    v492(v453, v493);
                    v494 = v588;
                    sub_21E929C98();
                    v495 = v587;
                    sub_21E929BD8();
                    v454 = *v58;
                    v455 = v589;
                    (*v58)(v494, v589);
                    v456 = v586;
                    sub_21E929BE8();
                    v454(v495, v455);
                    v608[3] = v455;
                    v608[4] = MEMORY[0x277D74E20];
                    __swift_allocate_boxed_opaque_existential_1(v608);
                    sub_21E929C68();
                    v454(v456, v455);
                    sub_21E92A718();
                    v36 = *&v599;
                    ++v449;
                    v684.origin.x = v489;
                    v684.origin.y = v478;
                    v684.size.width = v476;
                    v684.size.height = v485;
                    MinY = CGRectGetMinY(v684);
                    v685.origin.x = v604;
                    v685.origin.y = v488;
                    v685.size.width = v600;
                    v685.size.height = v596;
                    v30 = MinY - CGRectGetMaxY(v685);
                    v1 = v601;
                    [v601 expandedPercentage];
                    [v487 setAlpha_];
                    [v487 alpha];
                    [v487 setHidden_];

                    v34 = 0.5;
                    if (v594.i64[0] == v449)
                    {
                      goto LABEL_407;
                    }
                  }

                  sub_21E8ADE68(0, 1, v629);
                  v462 = v630;
                  v463 = v631;
                  v604 = v629[2] + v629[0] - v630 * v34;
                  v469 = v629[3] + v629[1] - v631 * v34;
                  sub_21E8ADE68(0, 1, v632);
                  v599 = v632[6];
                  v470 = v633;
                  v471 = v633;
                  v472 = 0;
LABEL_400:
                  v473 = 0;
                  goto LABEL_401;
                }

LABEL_407:
                v496 = OBJC_IVAR___NCNotificationListHighlights_separators;
                swift_beginAccess();
                v497 = v594.i64[0];
                while (1)
                {
                  v498 = *&v1[v496];
                  if (v498 >> 62)
                  {
                    if (v497 >= sub_21E92A828())
                    {
LABEL_425:
                      v506 = v574;
                      swift_beginAccess();
                      v507 = *&v1[v506];
                      if ((v507 & 0xC000000000000001) != 0)
                      {
                        v508 = 0;
                        v509 = 0;
                        v58 = 0;
                        v510 = sub_21E92A938() | 0x8000000000000000;
                      }

                      else
                      {
                        v511 = -1 << *(v507 + 32);
                        v509 = ~v511;
                        v508 = v507 + 64;
                        v512 = -v511;
                        if (v512 < 64)
                        {
                          v513 = ~(-1 << v512);
                        }

                        else
                        {
                          v513 = -1;
                        }

                        v58 = v513 & *(v507 + 64);
                        v510 = v507;
                      }

                      v514 = 0;
                      *&v603 = v509;
                      v515 = (v509 + 64) >> 6;
                      v604 = *&v510;
                      while (2)
                      {
                        if ((v510 & 0x8000000000000000) != 0)
                        {
                          v524 = sub_21E92A968();
                          if (!v524 || (v526 = v525, v606 = v524, sub_21E796644(0, &unk_280D03E08), swift_dynamicCast(), v523 = v607, v606 = v526, type metadata accessor for HighlightsDroplet(), swift_dynamicCast(), v522 = v607, v519 = v514, v520 = v58, !v523))
                          {
LABEL_449:
                            sub_21E8FA42C();
                            *&v1[v574] = v611;

                            v531 = v610;
                            v532 = v582;
                            swift_beginAccess();
                            *&v1[v532] = v531;

                            v533 = v568;
                            swift_beginAccess();
                            sub_21E8F5040(&v1[v533], sub_21E8F7320, sub_21E90B5AC);
                            swift_endAccess();
                            v534 = v567;
                            swift_beginAccess();
                            sub_21E8F5040(&v1[v534], sub_21E8F714C, sub_21E90B434);
                            swift_endAccess();
                            sub_21E8F38A0(v612);
                            return;
                          }
                        }

                        else
                        {
                          v517 = v514;
                          v518 = v58;
                          v519 = v514;
                          if (!v58)
                          {
                            while (1)
                            {
                              v519 = v517 + 1;
                              if (__OFADD__(v517, 1))
                              {
                                break;
                              }

                              if (v519 >= v515)
                              {
                                goto LABEL_449;
                              }

                              v518 = *(v508 + 8 * v519);
                              ++v517;
                              if (v518)
                              {
                                goto LABEL_439;
                              }
                            }

LABEL_452:
                            __break(1u);
LABEL_453:
                            __break(1u);
LABEL_454:
                            __break(1u);
LABEL_455:
                            __break(1u);
LABEL_456:
                            __break(1u);
                            goto LABEL_457;
                          }

LABEL_439:
                          v520 = (v518 - 1) & v518;
                          v521 = (v519 << 9) | (8 * __clz(__rbit64(v518)));
                          v522 = *(*(v510 + 56) + v521);
                          v523 = *(*(v510 + 48) + v521);

                          if (!v523)
                          {
                            goto LABEL_449;
                          }
                        }

                        v605 = v520;
                        if ((v611 & 0xC000000000000001) != 0)
                        {

                          v527 = v523;
                          v528 = sub_21E92A978();

                          if (v528)
                          {
                            goto LABEL_448;
                          }

LABEL_432:
                          [v523 setBackgroundAlpha_];
                          [v523 setDisableDimming_];
                          [v523 setBackgroundHidden_];
                          v516 = *&v1[v573];
                          sub_21E8B5C34(v522);

                          v612[0] = 1;
                        }

                        else
                        {
                          if (!*(v611 + 16))
                          {
                            goto LABEL_432;
                          }

                          sub_21E8F68D8(v523);
                          v530 = v529;

                          if ((v530 & 1) == 0)
                          {
                            goto LABEL_432;
                          }

LABEL_448:
                        }

                        v514 = v519;
                        *&v510 = v604;
                        v58 = v605;
                        continue;
                      }
                    }
                  }

                  else if (v497 >= *((v498 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_425;
                  }

                  swift_beginAccess();
                  v58 = *&v1[v496];
                  if (v58 >> 62)
                  {
                    if (sub_21E92A828())
                    {
LABEL_413:
                      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
                      *&v1[v496] = v58;
                      if (v58 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
                      {
                        v58 = sub_21E925434(v58);
                        *&v1[v496] = v58;
                      }

                      v500 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (!v500)
                      {
                        goto LABEL_461;
                      }

                      v501 = v500 - 1;
                      v502 = *((v58 & 0xFFFFFFFFFFFFFF8) + 8 * v501 + 0x20);
                      *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) = v501;
                      *&v1[v496] = v58;
                      swift_endAccess();
                      [v502 removeFromSuperview];
LABEL_408:

                      continue;
                    }
                  }

                  else if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_413;
                  }

                  swift_endAccess();
                  if (qword_27CED6AD0 != -1)
                  {
                    swift_once();
                  }

                  v503 = sub_21E929A78();
                  __swift_project_value_buffer(v503, qword_27CED9E90);
                  v502 = sub_21E929A58();
                  v504 = sub_21E92A628();
                  if (!os_log_type_enabled(v502, v504))
                  {
                    goto LABEL_408;
                  }

                  v505 = swift_slowAlloc();
                  *v505 = 0;
                  _os_log_impl(&dword_21E77E000, v502, v504, "Separator array contains nil element", v505, 2u);
                  MEMORY[0x223D65FB0](v505, -1, -1);
                }
              }

              __break(1u);
LABEL_469:
              ;
            }
          }

          goto LABEL_480;
        }

LABEL_479:
        __break(1u);
LABEL_480:
        __break(1u);
        goto LABEL_481;
      }
    }

    else
    {
      v125 = v51[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_hideViews];
      v51[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_hideViews] = 1;
      if (v125)
      {
        goto LABEL_9;
      }
    }

    v54 = &v51[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lastSetLightsEffectState];
    *v54 = 0;
    *(v54 + 4) = 256;
    sub_21E8DDBD8();
    goto LABEL_9;
  }

  v40 = [v1 listView];
  if (!v40)
  {
LABEL_481:
    __break(1u);
    goto LABEL_482;
  }

  v41 = v40;
  v42 = [v1 listView];
  if (v42)
  {
    v43 = v42;
    [v42 bounds];
    v45 = v44;
    v47 = v46;

    [v41 convertPoint:v39 toCoordinateSpace:{v45, v47}];
    v30 = v48;
    v50 = v49;

    *(v26 + 104) = v30;
    *(v26 + 112) = v50;
    goto LABEL_6;
  }

LABEL_482:
  __break(1u);
LABEL_483:
  __break(1u);
}

void sub_21E8EDEFC(unint64_t a1, char a2, char a3)
{
  LOBYTE(v4) = a3;
  v45.super_class = NCNotificationListHighlights;
  v7 = objc_msgSendSuper2(&v45, sel_allNotificationGroups);
  v8 = sub_21E796644(0, &qword_280D03DF0);
  v9 = sub_21E92A528();

  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x223D64A50](a1, v9);
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    v27 = MEMORY[0x223D64A50](a1, v9);
    goto LABEL_18;
  }

  v10 = *(v9 + 8 * a1 + 32);
LABEL_5:
  v11 = v10;

  v12 = [v11 isGrouped];

  if ((a2 & 1) == 0 && (v12 & 1) == 0 && (v4 & 1) == 0)
  {
    v44.receiver = v3;
    v44.super_class = NCNotificationListHighlights;
    v13 = objc_msgSendSuper2(&v44, sel_allNotificationGroups);
    v4 = sub_21E92A528();

    if ((v4 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x223D64A50](a1, v4);
LABEL_12:
      v15 = v14;

      v16 = [v15 listView];

      v17 = [v3 listView];
      if (v17)
      {
        v18 = v17;
        [v17 frame];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v46.origin.x = v20;
        v46.origin.y = v22;
        v46.size.width = v24;
        v46.size.height = v26;
        [v16 sizeThatFits_];

        return;
      }

      goto LABEL_36;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v14 = *(v4 + 8 * a1 + 32);
        goto LABEL_12;
      }

      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v43.receiver = v3;
  v43.super_class = NCNotificationListHighlights;
  v13 = objc_msgSendSuper2(&v43, sel_allNotificationGroups);
  v9 = sub_21E92A528();

  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_27;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v27 = *(v9 + 8 * a1 + 32);
LABEL_18:
  v13 = v27;

  v42.receiver = v3;
  v42.super_class = NCNotificationListHighlights;
  v28 = objc_msgSendSuper2(&v42, sel_allNotificationGroups);
  v8 = sub_21E92A528();

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v29 = MEMORY[0x223D64A50](a1, v8);
    goto LABEL_22;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v29 = *(v8 + 8 * a1 + 32);
LABEL_22:
  v30 = v29;

  v31 = [v30 listView];

  v32 = [v3 listView];
  if (v32)
  {
    v33 = v32;
    [v32 frame];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v47.origin.x = v35;
    v47.origin.y = v37;
    v47.size.width = v39;
    v47.size.height = v41;
    [v13 notificationListView:v31 heightForItemAtIndex:0 withWidth:0 inDisplayListAsStackMode:v4 & 1 ignoreExpandedGroupStack:CGRectGetWidth(v47)];

    return;
  }

LABEL_37:
  __break(1u);
}

unint64_t sub_21E8EE314(char a1)
{
  result = [v1 count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v4 = result;
  if (result)
  {
    v5 = 0;
    v6 = 0.0;
    do
    {
      v7 = v5 + 1;
      sub_21E8EDEFC(v5, 0, a1 & 1);
      v6 = v6 + v8;
      v5 = v7;
    }

    while (v4 != v7);
  }

  result = [v1 count];
  if (__OFSUB__(result, 1))
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t NCNotificationListHighlights.collapsedHeight.getter()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___NCNotificationListHighlights_dropletLayout];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_10;
  }

  v3 = *(v2 + 96);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 48))(v2, ObjectType, v3);
  swift_unknownObjectRelease();
  if (v5 < 1)
  {
    goto LABEL_10;
  }

  v32.receiver = v0;
  v32.super_class = NCNotificationListHighlights;
  v6 = objc_msgSendSuper2(&v32, sel_allNotificationGroups);
  sub_21E796644(0, &qword_280D03DF0);
  v7 = sub_21E92A528();

  if (v7 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21E92A828())
  {

    if (i >= 1)
    {
      v9 = *&v1[OBJC_IVAR___NCNotificationListHighlights_headerLabel];
      v10 = [*&v9[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_imageView] image];
      if (v10)
      {
        v11 = v10;
        [v10 size];
        v13 = v12;

        v14 = v13 + 24.0;
      }

      else
      {
        v14 = 24.0;
      }

      v15 = *&v9[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_label];
      [v9 bounds];
      [v15 sizeThatFits_];
    }

LABEL_10:
    sub_21E8F56CC(1);
    v17 = v16;
    [v1 availableHeight];
    if (v17 >= v18)
    {
      v24 = 0;
    }

    else
    {
      sub_21E8F56CC(2);
      v20 = v19;
      [v1 availableHeight];
      if (v20 >= v21)
      {
        v24 = 1;
      }

      else
      {
        sub_21E8F56CC(3);
        v23 = v22;
        [v1 availableHeight];
        v24 = 2;
        if (v23 < v25)
        {
          v24 = 3;
        }
      }
    }

    v26 = v24 <= 1 ? 1 : v24;
    v27 = [v1 count];
    v28 = (v27 >= v26 ? v26 : v27);
    if ((v27 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_32:
    ;
  }

  if (v27)
  {
    sub_21E8EDEFC(0, 1, 1);
    if (v28 != 1)
    {
      sub_21E8EDEFC(1uLL, 1, 1);
      if (v28 != 2)
      {
        sub_21E8EDEFC(2uLL, 1, 1);
      }
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v30 = *(v2 + 96);
    v31 = swift_getObjectType();
    (*(v30 + 48))(v2, v31, v30);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21E8EE738()
{
  sub_21E8F56CC(1);
  v2 = v1;
  [v0 availableHeight];
  if (v2 >= v3)
  {
    v9 = 0;
  }

  else
  {
    sub_21E8F56CC(2);
    v5 = v4;
    [v0 availableHeight];
    if (v5 >= v6)
    {
      v9 = 1;
    }

    else
    {
      sub_21E8F56CC(3);
      v8 = v7;
      [v0 availableHeight];
      v9 = 2;
      if (v8 < v10)
      {
        v9 = 3;
      }
    }
  }

  if (v9 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  result = [v0 count];
  if (result >= v11)
  {
    return v11;
  }

  return result;
}

void sub_21E8EE7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED75A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v97 - v8;
  *&v3[OBJC_IVAR___NCNotificationListHighlights__mappedExpandedPercentage] = 0;
  *&v3[OBJC_IVAR___NCNotificationListHighlights_availableHeight] = 0x7FF0000000000000;
  *&v3[OBJC_IVAR___NCNotificationListHighlights____lazy_storage___springBehavior] = 0;
  v3[OBJC_IVAR___NCNotificationListHighlights__isExpanded] = 0;
  v3[OBJC_IVAR___NCNotificationListHighlights_forceExpanded] = 0;
  *&v3[OBJC_IVAR___NCNotificationListHighlights_dragState] = 0;
  v10 = &v3[OBJC_IVAR___NCNotificationListHighlights_contentSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v3[OBJC_IVAR___NCNotificationListHighlights_isCollapsed] = 0;
  *&v3[OBJC_IVAR___NCNotificationListHighlights_backlightState] = 2;
  v3[OBJC_IVAR___NCNotificationListHighlights_needsExpansionStateUpdate] = 0;
  *&v3[OBJC_IVAR___NCNotificationListHighlights_glassLuminanceValueTraitChangeRegistration] = 0;
  v3[OBJC_IVAR___NCNotificationListHighlights_isOnScreen] = 0;
  v11 = OBJC_IVAR___NCNotificationListHighlights_lightHandle;
  sub_21E929C58();
  swift_allocObject();
  *&v3[v11] = sub_21E929C08();
  v3[OBJC_IVAR___NCNotificationListHighlights_wakeLightEffectInProgress] = 0;
  v3[OBJC_IVAR___NCNotificationListHighlights_hasPendingWakeLightEffect] = 0;
  *&v3[OBJC_IVAR___NCNotificationListHighlights_wakeLightDismissalTimer] = 0;
  v3[OBJC_IVAR___NCNotificationListHighlights_lastKnownIsCoverSheetVisible] = 1;
  *&v3[OBJC_IVAR___NCNotificationListHighlights_headerLabelDropletBacking] = 0;
  *&v3[OBJC_IVAR___NCNotificationListHighlights_showMoreDropletBacking] = 0;
  *&v3[OBJC_IVAR___NCNotificationListHighlights_separators] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR___NCNotificationListHighlights____lazy_storage___overlayView] = 0;
  v12 = MEMORY[0x277D84F98];
  *&v3[OBJC_IVAR___NCNotificationListHighlights_listViewsToDroplets] = MEMORY[0x277D84F98];
  *&v3[OBJC_IVAR___NCNotificationListHighlights_listCellsToDroplets] = v12;
  *&v3[OBJC_IVAR___NCNotificationListHighlights_listCellsToSwipeOffsets] = v12;
  *&v3[OBJC_IVAR___NCNotificationListHighlights_indexSeparations] = v12;
  *&v3[OBJC_IVAR___NCNotificationListHighlights_cellTransforms] = v12;
  v13 = &v3[OBJC_IVAR___NCNotificationListHighlights_recentlyInsertedIndex];
  *v13 = 0;
  *(v13 + 4) = 256;
  v14 = &v3[OBJC_IVAR___NCNotificationListHighlights_recentlyRemovedIndex];
  *v14 = 0;
  *(v14 + 4) = 256;
  *&v3[OBJC_IVAR___NCNotificationListHighlights_layoutContentOffset] = 0;
  v15 = [objc_allocWithZone(type metadata accessor for HighlightsTitleView()) initWithFrame_];
  v16 = OBJC_IVAR___NCNotificationListHighlights_headerLabel;
  *&v4[OBJC_IVAR___NCNotificationListHighlights_headerLabel] = v15;
  *&v4[OBJC_IVAR___NCNotificationListHighlights_showMoreLabel] = [objc_allocWithZone(type metadata accessor for HighlightsShowMoreLabel()) initWithFrame_];
  v17 = [objc_allocWithZone(NCNotificationSummaryBuilder) initWithStyle_];
  *&v4[OBJC_IVAR___NCNotificationListHighlights_showMoreSummaryBuilder] = v17;
  [*&v4[v16] setHidden_];
  type metadata accessor for HighlightsDropletLayout();
  swift_allocObject();
  *&v4[OBJC_IVAR___NCNotificationListHighlights_dropletLayout] = sub_21E8B164C();
  if (a2)
  {

    v18 = sub_21E92A428();
  }

  else
  {
    v18 = 0;
  }

  v101.receiver = v4;
  v101.super_class = NCNotificationListHighlights;
  v19 = objc_msgSendSuper2(&v101, sel_initWithTitle_sectionType_, v18, a3);

  v20 = v19;
  v21 = [v20 listView];
  if (!v21)
  {
    __break(1u);
    goto LABEL_32;
  }

  v22 = v21;
  [v21 setReactiveLayout_];

  v23 = [v20 listView];
  if (!v23)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v24 = v23;
  [v23 setSupportsGrouping_];

  v25 = [v20 listView];
  if (!v25)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v26 = v25;
  [v25 setFooterViewVerticalMargin_];

  v27 = [v20 listView];
  if (!v27)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v28 = v27;
  [v27 setPreferredBottomTransitionTransformer_];

  v29 = [v20 listView];
  if (!v29)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  [v29 setSupportsHeaderViewRollUnder_];

  v30 = OBJC_IVAR___NCNotificationListHighlights_dropletLayout;
  *(*&v20[OBJC_IVAR___NCNotificationListHighlights_dropletLayout] + 96) = &off_282FE61F8;
  swift_unknownObjectWeakAssign();
  v31 = *&v20[v30];

  sub_21E8F56CC(1);
  v33 = v32;
  [v20 availableHeight];
  if (v33 >= v34)
  {
    v41 = 0;
  }

  else
  {
    sub_21E8F56CC(2);
    v36 = v35;
    [v20 availableHeight];
    if (v36 >= v37)
    {
      v41 = 1;
    }

    else
    {
      sub_21E8F56CC(3);
      v39 = v38;
      [v20 availableHeight];
      if (v39 >= v40)
      {
        v41 = 2;
      }

      else
      {
        v41 = 3;
      }
    }
  }

  v100 = v9;
  if (v41 <= 1)
  {
    v41 = 1;
  }

  *(v31 + 128) = v41;

  v42 = *&v20[OBJC_IVAR___NCNotificationListHighlights_showMoreLabel];
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = &v42[OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsShowMoreLabel_action];
  v45 = *&v42[OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsShowMoreLabel_action];
  *v44 = sub_21E8FA200;
  v44[1] = v43;
  v46 = v42;

  sub_21E792694(v45);

  v47 = NCUserNotificationsUIKitFrameworkBundle();
  if (!v47)
  {
    goto LABEL_36;
  }

  v48 = v47;

  v97 = OBJC_IVAR___NCNotificationListHighlights_headerLabel;
  v49 = *&v20[OBJC_IVAR___NCNotificationListHighlights_headerLabel];
  v50 = sub_21E92A428();
  v51 = sub_21E92A428();
  v99 = v48;
  v52 = [v48 localizedStringForKey:v50 value:v51 table:0];

  sub_21E92A458();
  v53 = OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_label;
  v54 = *&v49[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_label];
  v55 = sub_21E92A428();

  [v54 setText_];

  v56 = *&v49[v53];
  v98 = objc_opt_self();
  v57 = [v98 labelColor];
  [v56 setTextColor_];

  v58 = *&v49[v53];
  v59 = objc_opt_self();
  v60 = [v59 sharedApplication];
  v61 = [v60 preferredContentSizeCategory];

  LODWORD(v60) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  v62 = *MEMORY[0x277D76988];
  v63 = *MEMORY[0x277D76918];
  if (v60)
  {
    v64 = *MEMORY[0x277D76918];
  }

  else
  {
    v64 = *MEMORY[0x277D76988];
  }

  v65 = *MEMORY[0x277D74420];
  v66 = v64;
  v67 = [v59 &selRef_setSubtitle_ + 4];
  v68 = [v67 preferredContentSizeCategory];

  LODWORD(v67) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  [v49 _updateTextAttributesForLabel_withTextStyle_fontWeight_additionalTraits_maximumNumberOfLines_];

  v69 = *&v20[v97];
  v70 = sub_21E92A428();
  v71 = [objc_opt_self() _systemImageNamed_];

  v72 = OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_image;
  v73 = *&v69[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_image];
  *&v69[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_image] = v71;
  v74 = v71;

  v75 = [v59 sharedApplication];
  v76 = [v75 preferredContentSizeCategory];

  LODWORD(v75) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  if (v75)
  {
    v77 = v63;
  }

  else
  {
    v77 = v62;
  }

  v78 = v77;
  v79 = [v69 _preferredFont_textStyle_weight_additionalTraits_];

  v80 = objc_opt_self();
  v81 = [v80 configurationWithFont_];
  v82 = [v98 labelColor];
  v83 = [v80 configurationWithHierarchicalColor_];

  v84 = [v81 configurationByApplyingConfiguration_];
  v85 = *&v69[v72];
  if (v85)
  {
    v86 = [v85 imageByApplyingSymbolConfiguration_];
    v87 = v100;
    if (v86)
    {
      v88 = v86;
      v89 = [v86 imageWithRenderingMode_];
    }

    else
    {
      v89 = 0;
    }
  }

  else
  {
    v89 = 0;
    v87 = v100;
  }

  v90 = v99;
  [*&v69[OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_imageView] setImage_];

  v91 = _sSo28NCNotificationListHighlightsC22UserNotificationsUIKitE11overlayView015forNotificationB0So6UIViewCSo0abH8Protocol_p_tF_0();
  [v20 expandedPercentage];
  *(&v91->isa + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectsIntensity) = 1.0 - v92;
  sub_21E8DDBD8();

  sub_21E8E9548();
  v93 = sub_21E92A5B8();
  (*(*(v93 - 8) + 56))(v87, 1, 1, v93);
  sub_21E92A598();
  v94 = sub_21E92A588();
  v95 = swift_allocObject();
  v96 = MEMORY[0x277D85700];
  v95[2] = v94;
  v95[3] = v96;
  v95[4] = v20;
  sub_21E8E8A7C(0, 0, v87, &unk_21E9487F0, v95);
}

uint64_t sub_21E8EF328()
{
  sub_21E8F56CC(1);
  v2 = v1;
  [v0 availableHeight];
  if (v2 >= v3)
  {
    v10 = 0;
  }

  else
  {
    sub_21E8F56CC(2);
    v5 = v4;
    [v0 availableHeight];
    if (v5 >= v6)
    {
      v10 = 1;
    }

    else
    {
      sub_21E8F56CC(3);
      v8 = v7;
      [v0 availableHeight];
      if (v8 >= v9)
      {
        v10 = 2;
      }

      else
      {
        v10 = 3;
      }
    }
  }

  if (v10 <= 1)
  {
    return 1;
  }

  else
  {
    return v10;
  }
}

void sub_21E8EF3D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(*(Strong + OBJC_IVAR___NCNotificationListHighlights_dropletLayout) + 41) = 0;
    sub_21E8AD340();
    if (![v1 delegate])
    {
LABEL_5:

      return;
    }

    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      (*(v3 + 8))(v1, ObjectType, v3);
      swift_unknownObjectRelease();
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_21E8EF4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  sub_21E92A598();
  *(v4 + 56) = sub_21E92A588();
  v6 = sub_21E92A578();

  return MEMORY[0x2822009F8](sub_21E8EF554, v6, v5);
}

id sub_21E8EF554()
{
  result = [*(v0 + 48) listView];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED75B0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_21E947520;
    v5 = sub_21E8C065C();
    *(v4 + 32) = &type metadata for NCGlassLuminanceValueTraits;
    *(v4 + 40) = v5;
    *(v0 + 40) = type metadata accessor for NCNotificationListHighlights(v5);
    *(v0 + 16) = v3;
    v6 = v3;
    v7 = MEMORY[0x223D648C0](v4, v0 + 16, sel_glassLuminanceChanged);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    [v6 setGlassLuminanceValueTraitChangeRegistration_];
    swift_unknownObjectRelease();
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21E8EF6D0()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 != 1)
  {
    return;
  }

  v3 = [v0 listView];
  if (!v3)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 window];

  if (v5)
  {
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v25.origin.x = v7;
    v25.origin.y = v9;
    v25.size.width = v11;
    v25.size.height = v13;
    CGRectGetHeight(v25);
  }

  v14 = [v0 listView];
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 window];

  if (v16)
  {
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v26.origin.x = v18;
    v26.origin.y = v20;
    v26.size.width = v22;
    v26.size.height = v24;
    CGRectGetWidth(v26);
  }

  [v0 contentSize];
}

__CFString *sub_21E8EF8A8(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for HighlightsOverlayView());
  v3 = a1;
  v4 = sub_21E8DFACC(a1, &off_282FE6238, 0.0, 0.0, 0.0, 0.0);

  [v3 expandedPercentage];
  v6 = v5 + -0.5 + v5 + -0.5;
  v7 = 0.0;
  if (v6 < 0.0 || (v8 = 1.0, v7 = v6, v6 <= 1.0))
  {
    v8 = v7 + 0.0;
  }

  *(&v4->isa + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_dropletRadius) = (1.0 - v8) * 6.64285714 + 2.85714286;
  [*(&v4->isa + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_dropletContextView) setDropletRadius_];
  sub_21E8EF6D0();
  v11 = (v4 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectsOutsets);
  v12 = *(&v4->isa + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectsOutsets);
  v13 = *(&v4->data + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectsOutsets);
  *v11 = v14.f64[0];
  v11[1] = v9;
  v11[2] = v15.f64[0];
  v11[3] = v10;
  v14.f64[1] = v9;
  v15.f64[1] = v10;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v14, v12), vceqq_f64(v15, v13)))) & 1) == 0)
  {
    v16 = *(&v4->isa + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectViewWidthLayoutConstraint);
    if (v16)
    {
      [v16 setConstant_];
    }

    v17 = *(&v4->isa + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectViewHeightLayoutConstraint);
    if (v17)
    {
      [v17 setConstant_];
    }
  }

  [(__CFString *)v4 setUserInteractionEnabled:0];
  return v4;
}

uint64_t NCNotificationListHighlights._groupingSetting(forSectionIdentifier:)()
{
  v1 = [objc_opt_self() standardDefaults];
  v2 = [v1 allowStackingInHighlights];

  if (!v2)
  {
    return 2;
  }

  v3 = sub_21E92A428();
  v6.receiver = v0;
  v6.super_class = NCNotificationListHighlights;
  v4 = objc_msgSendSuper2(&v6, sel__groupingSettingForSectionIdentifier_, v3);

  return v4;
}

Swift::Bool __swiftcall NCNotificationListHighlights.adjustForContentSizeCategoryChange()()
{
  v2.super_class = NCNotificationListHighlights;
  objc_msgSendSuper2(&v2, sel_adjustForContentSizeCategoryChange);
  [*(v0 + OBJC_IVAR___NCNotificationListHighlights_headerLabel) adjustForContentSizeCategoryChange];
  [*(v0 + OBJC_IVAR___NCNotificationListHighlights_showMoreLabel) adjustForContentSizeCategoryChange];
  return 1;
}

id NCNotificationListHighlights.insert(_:)(void *a1)
{
  result = [v1 containsNotificationRequest_];
  if (!a1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  v5 = [v1 existingIndexOfGroupForNotificationRequestForInsertion_];
  v6 = sub_21E9296D8();
  v18.receiver = v1;
  v18.super_class = NCNotificationListHighlights;
  result = objc_msgSendSuper2(&v18, sel_insertNotificationRequest_, a1);
  if (result == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else if ((result != 0) | v4 & 1)
  {
    return result;
  }

  v7 = result;
  result = [v1 listView];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = [result window];

  if (v9)
  {
    v10 = [v9 windowScene];

    if (v10)
    {
      v9 = [v10 _FBSScene];
    }

    else
    {
      v9 = 0;
    }
  }

  v11 = v5 == v6;
  v12 = [objc_opt_self() sharedManager];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  *(v14 + 32) = v11;
  v17[4] = sub_21E8F65AC;
  v17[5] = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_21E8E8FA4;
  v17[3] = &block_descriptor_6;
  v15 = _Block_copy(v17);
  v16 = a1;

  [v12 queue:2 acquireAssertionWithReason:v9 onScene:v15 completion:?];
  _Block_release(v15);

  return v7;
}

void sub_21E8EFF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_21E8F94B4(a5 & 1);
  }
}

void sub_21E8EFFCC(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.4, 0.4);
  v2 = OBJC_IVAR___NCNotificationListHighlights_cellTransforms;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(a1 + v2);
  *(a1 + v2) = 0x8000000000000000;
  sub_21E8F8230(&v5, 0, 0, isUniquelyReferenced_nonNull_native);
  *(a1 + v2) = v4;
  swift_endAccess();
  *(a1 + OBJC_IVAR___NCNotificationListHighlights_layoutContentOffset) = 0;
  sub_21E8EA388();
}

uint64_t sub_21E8F0080(uint64_t a1, void *a2)
{
  v40 = sub_21E92A2F8();
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E92A318();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_21E92A2E8();
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_21E92A348();
  v44 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v35 = &v32 - v13;
  v14 = [a2 animator];
  v15 = sub_21E8E9ADC();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v49 = sub_21E8FA564;
  v50 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_21E792C28;
  v48 = &block_descriptor_143;
  v17 = _Block_copy(&aBlock);
  v33 = a2;

  v49 = CGRectMake;
  v50 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_21E799760;
  v48 = &block_descriptor_146;
  v18 = _Block_copy(&aBlock);
  [v14 animateUsingSpringBehavior:v15 tracking:0 type:0 animations:v17 completion:v18];
  _Block_release(v18);
  _Block_release(v17);
  swift_unknownObjectRelease();

  sub_21E796644(0, &qword_280D03E40);
  v34 = sub_21E92A6C8();
  sub_21E92A328();
  *v8 = 330;
  v19 = v37;
  (*(v6 + 104))(v8, *MEMORY[0x277D85178], v37);
  v20 = v35;
  sub_21E92A338();
  (*(v6 + 8))(v8, v19);
  v21 = *(v44 + 8);
  v44 += 8;
  v22 = v36;
  v21(v10, v36);
  v23 = swift_allocObject();
  v24 = v33;
  *(v23 + 16) = v33;
  v49 = sub_21E8FA56C;
  v50 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_21E792C28;
  v48 = &block_descriptor_152;
  v25 = _Block_copy(&aBlock);
  v26 = v24;

  v27 = v38;
  sub_21E92A308();
  aBlock = MEMORY[0x277D84F90];
  sub_21E8FA4E8(&qword_280D03F00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED78A0);
  sub_21E8C04E4();
  v29 = v39;
  v28 = v40;
  sub_21E92A7E8();
  v30 = v34;
  MEMORY[0x223D64810](v20, v27, v29, v25);
  _Block_release(v25);

  (*(v43 + 8))(v29, v28);
  (*(v41 + 8))(v27, v42);
  return (v21)(v20, v22);
}

void sub_21E8F0658(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR___NCNotificationListHighlights_recentlyInsertedIndex;
  *v2 = 0;
  *(v2 + 8) = 0;
  v3 = OBJC_IVAR___NCNotificationListHighlights_indexSeparations;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + v3);
  *(a1 + v3) = 0x8000000000000000;
  sub_21E8F836C(2, 0, 0, isUniquelyReferenced_nonNull_native, 14.0);
  *(a1 + v3) = v11;
  swift_endAccess();
  v5 = OBJC_IVAR___NCNotificationListHighlights_cellTransforms;
  swift_beginAccess();
  v6 = sub_21E8F6848(0, 0);
  if (v7)
  {
    v8 = v6;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + v5);
    *(a1 + v5) = 0x8000000000000000;
    if (!v9)
    {
      sub_21E90B434();
    }

    sub_21E8F714C(v8, v10);
    *(a1 + v5) = v10;
  }

  swift_endAccess();
  *(a1 + OBJC_IVAR___NCNotificationListHighlights_layoutContentOffset) = 0xC034000000000000;
  sub_21E8EA388();
}

void sub_21E8F0790(void *a1)
{
  v2 = [a1 animator];
  v3 = sub_21E8E9ADC();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v14 = sub_21E8FA574;
  v15 = v4;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_21E792C28;
  v13 = &block_descriptor_158;
  v5 = _Block_copy(&v10);
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v14 = sub_21E8FA57C;
  v15 = v7;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_21E799760;
  v13 = &block_descriptor_164;
  v8 = _Block_copy(&v10);
  v9 = v6;

  [v2 animateUsingSpringBehavior:v3 tracking:0 type:0 animations:v5 completion:v8];
  _Block_release(v8);
  _Block_release(v5);
  swift_unknownObjectRelease();
}

id sub_21E8F0948(char *a1)
{
  v2 = OBJC_IVAR___NCNotificationListHighlights_indexSeparations;
  swift_beginAccess();
  v3 = sub_21E8F6848(0, 0);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *&a1[v2];
    *&a1[v2] = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21E90B5AC();
    }

    sub_21E8F7320(v5, v7);
    *&a1[v2] = v7;
  }

  swift_endAccess();
  v8 = OBJC_IVAR___NCNotificationListHighlights_cellTransforms;
  swift_beginAccess();
  v9 = sub_21E8F6848(0, 0);
  if (v10)
  {
    v11 = v9;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *&a1[v8];
    *&a1[v8] = 0x8000000000000000;
    if (!v12)
    {
      sub_21E90B434();
    }

    sub_21E8F714C(v11, v13);
    *&a1[v8] = v13;
  }

  swift_endAccess();
  *&a1[OBJC_IVAR___NCNotificationListHighlights_layoutContentOffset] = 0;
  sub_21E8EA388();
  result = [a1 delegate];
  if (result)
  {
    ObjectType = swift_getObjectType();
    v16 = swift_conformsToProtocol2();
    if (v16)
    {
      (*(v16 + 16))(a1, ObjectType, v16);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21E8F0AE8(int a1, int a2, id a3)
{
  v4 = [a3 animator];
  v5 = sub_21E8E9ADC();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v14 = sub_21E8FA584;
  v15 = v6;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_21E792C28;
  v13 = &block_descriptor_170;
  v7 = _Block_copy(&v10);
  v8 = a3;

  v14 = sub_21E8F0C74;
  v15 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_21E799760;
  v13 = &block_descriptor_173;
  v9 = _Block_copy(&v10);
  [v4 animateUsingSpringBehavior:v5 tracking:0 type:0 animations:v7 completion:v9];
  _Block_release(v9);
  _Block_release(v7);
  swift_unknownObjectRelease();
}

void sub_21E8F0C74(char a1, char a2)
{
  v4 = sub_21E92A2F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E92A318();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && (a2 & 1) == 0)
  {
    sub_21E796644(0, &qword_280D03E40);
    v12 = sub_21E92A6C8();
    aBlock[4] = sub_21E8FA628;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E792C28;
    aBlock[3] = &block_descriptor_176;
    v13 = _Block_copy(aBlock);
    sub_21E92A308();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21E8FA4E8(&qword_280D03F00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED78A0);
    sub_21E8C04E4();
    sub_21E92A7E8();
    MEMORY[0x223D64870](0, v11, v7, v13);
    _Block_release(v13);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }
}

void sub_21E8F0F1C()
{
  v0 = [objc_opt_self() sharedManager];
  [v0 queue:2 releaseAssertionWithReason:?];
}

id NCNotificationListHighlights.remove(_:)(uint64_t a1)
{
  v3.super_class = NCNotificationListHighlights;
  v1 = objc_msgSendSuper2(&v3, sel_removeNotificationRequest_, a1);
  sub_21E8E9548();
  sub_21E8EA388();
  return v1;
}

void NCNotificationListHighlights.notificationListComponent(_:willRemove:)(uint64_t a1, uint64_t a2)
{
  v56.super_class = NCNotificationListHighlights;
  v4 = objc_msgSendSuper2(&v56, sel_allNotificationGroups);
  sub_21E796644(0, &qword_280D03DF0);
  v5 = sub_21E92A528();

  if (v5 >> 62)
  {
LABEL_36:
    v6 = sub_21E92A828();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {

      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D64A50](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = [v8 containsNotificationRequest_];

    if (v10)
    {
      break;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_35;
    }
  }

  v12 = v2;
  v55.receiver = v2;
  v55.super_class = NCNotificationListHighlights;
  v13 = objc_msgSendSuper2(&v55, sel_allNotificationGroups);
  v14 = sub_21E92A528();

  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x223D64A50](v7, v14);
  }

  else
  {
    if (v7 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v15 = *(v14 + 8 * v7 + 32);
  }

  v16 = v15;

  v17 = v16;
  v18 = [v17 listView];

  v19 = OBJC_IVAR___NCNotificationListHighlights_listViewsToDroplets;
  swift_beginAccess();
  v20 = *&v12[v19];
  if (*(v20 + 16) && (v21 = sub_21E8F69B4(v18), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);
    swift_endAccess();

    v24 = _sSo28NCNotificationListHighlightsC22UserNotificationsUIKitE11overlayView015forNotificationB0So6UIViewCSo0abH8Protocol_p_tF_0();
    sub_21E8B5C34(v23);

    v25 = [v17 listView];
    swift_beginAccess();
    sub_21E8E7950(0, v25);
    swift_endAccess();
  }

  else
  {

    swift_endAccess();
  }

  sub_21E8ADE68(v7, 0, v57);
  Height = CGRectGetHeight(v58);
  if (v59)
  {
    Height = Height + v60;
  }

  if ((v59 & 2) != 0)
  {
    v27 = v60 + Height;
  }

  else
  {
    v27 = Height;
  }

  if (!v7)
  {
    goto LABEL_30;
  }

  v28 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
LABEL_30:
    v28 = 0;
  }

  v54.receiver = v12;
  v54.super_class = NCNotificationListHighlights;
  objc_msgSendSuper2(&v54, sel_notificationListComponent_willRemoveNotificationRequest_, a1, a2);
  sub_21E8E9548();
  v29 = sub_21E8B10C0(v28, v7 == 0);
  if ((v30 & 0x100) != 0)
  {
    sub_21E8EA388();
  }

  else
  {
    v31 = v29;
    v32 = v30;
    v33 = v7 == 0;
    v34 = v27 * 0.5;
    v35 = OBJC_IVAR___NCNotificationListHighlights_indexSeparations;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *&v12[v35];
    *&v12[v35] = 0x8000000000000000;
    sub_21E8F836C(2, v28, v7 == 0, isUniquelyReferenced_nonNull_native, v34);
    *&v12[v35] = v46;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v47 = *&v12[v35];
    *&v12[v35] = 0x8000000000000000;
    v38 = v32 & 1;
    sub_21E8F836C(1, v31, v32 & 1, v37, v34);
    *&v12[v35] = v47;
    swift_endAccess();
    sub_21E8EA388();
    v39 = [v12 animator];
    v40 = sub_21E8E9ADC();
    v41 = swift_allocObject();
    *(v41 + 16) = v12;
    *(v41 + 24) = v28;
    *(v41 + 32) = v33;
    *(v41 + 40) = v31;
    *(v41 + 48) = v38;
    v52 = sub_21E8F69F8;
    v53 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v49 = 1107296256;
    v50 = sub_21E792C28;
    v51 = &block_descriptor_9;
    v42 = _Block_copy(&aBlock);
    v43 = v12;

    v52 = CGRectMake;
    v53 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v49 = 1107296256;
    v50 = sub_21E799760;
    v51 = &block_descriptor_12;
    v44 = _Block_copy(&aBlock);
    [v39 animateUsingSpringBehavior:v40 tracking:1 type:0 animations:v42 completion:v44];

    _Block_release(v44);
    _Block_release(v42);
    swift_unknownObjectRelease();
  }
}

void sub_21E8F15D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v10 = OBJC_IVAR___NCNotificationListHighlights_indexSeparations;
  swift_beginAccess();
  v11 = sub_21E8F6848(a2, a3 & 1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(a1 + v10);
    *(a1 + v10) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21E90B5AC();
    }

    sub_21E8F7320(v13, v15);
    *(a1 + v10) = v15;
  }

  v16 = sub_21E8F6848(a4, a5 & 1);
  if (v17)
  {
    v18 = v16;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a1 + v10);
    *(a1 + v10) = 0x8000000000000000;
    if (!v19)
    {
      sub_21E90B5AC();
    }

    sub_21E8F7320(v18, v20);
    *(a1 + v10) = v20;
  }

  swift_endAccess();
  sub_21E8EA388();
}

void sub_21E8F17A4(char *a1, uint64_t a2)
{
  if (!a2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = sub_21E8F18B4(a2);
  if (v4)
  {
    return;
  }

  v5 = v3;
  v6 = OBJC_IVAR___NCNotificationListHighlights_indexSeparations;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *&a1[v6];
  *&a1[v6] = 0x8000000000000000;
  sub_21E8F836C(3, v5, 0, isUniquelyReferenced_nonNull_native, 20.0);
  *&a1[v6] = v12;
  swift_endAccess();
  v8 = [a1 listView];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  [v8 setNeedsLayout];

  v10 = [a1 listView];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 layoutIfNeeded];
}

unint64_t sub_21E8F18B4(uint64_t a1)
{
  v12.super_class = NCNotificationListHighlights;
  v2 = objc_msgSendSuper2(&v12, sel_allNotificationGroups);
  sub_21E796644(0, &qword_280D03DF0);
  v3 = sub_21E92A528();

  if (v3 >> 62)
  {
LABEL_16:
    v4 = sub_21E92A828();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223D64A50](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v9 = [v7 containsNotificationRequest_];

    v5 = v6 + 1;
    if (v9)
    {
      v10 = v6;
      goto LABEL_13;
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

void sub_21E8F1A64(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = a2;
    v15[4] = a5;
    v15[5] = v11;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_21E792C28;
    v15[3] = a6;
    v12 = _Block_copy(v15);
    v13 = a2;
    v14 = v6;

    [a3 addAnimations_];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_21E8F1B40(char *a1, uint64_t a2)
{
  if (!a2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = sub_21E8F18B4(a2);
  if (v4)
  {
    return;
  }

  v5 = OBJC_IVAR___NCNotificationListHighlights_indexSeparations;
  v6 = v3;
  swift_beginAccess();
  v7 = sub_21E8F6848(v6, 0);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *&a1[v5];
    *&a1[v5] = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21E90B5AC();
    }

    sub_21E8F7320(v9, v11);
    *&a1[v5] = v11;
  }

  swift_endAccess();
  v12 = [a1 listView];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  [v12 setNeedsLayout];

  v14 = [a1 listView];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 layoutIfNeeded];
}

void sub_21E8F1C90(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a4;
    v18[4] = a7;
    v18[5] = v13;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_21E792C28;
    v18[3] = a8;
    v14 = _Block_copy(v18);
    v15 = a4;
    v16 = a1;
    v17 = v15;
    swift_unknownObjectRetain();

    [a5 addAnimations_];

    swift_unknownObjectRelease();
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

void sub_21E8F1DC0(uint64_t a1, SEL *a2)
{
  v2.super_class = NCNotificationListHighlights;
  objc_msgSendSuper2(&v2, *a2, a1);
  sub_21E8E9548();
  sub_21E8EA388();
}

void sub_21E8F1E0C(void *a1, uint64_t a2, void *a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = NCNotificationListHighlights;
  v5 = *a4;
  v6 = a3;
  v7 = a1;
  objc_msgSendSuper2(&v8, v5, v6);
  sub_21E8E9548();
  sub_21E8EA388();
}

Swift::Void __swiftcall NCNotificationListHighlights.notificationListWillLayoutSubviews()()
{
  v1 = [v0 count];
  v2 = [v0 listView];
  v13 = v2;
  if (v1 >= 1)
  {
    if (v2)
    {
      [v0 expandedPercentage];
      v4 = v3;
      v5 = [v0 count];
      v6 = v5 - 1;
      if (__OFSUB__(v5, 1))
      {
        __break(1u);
      }

      else
      {
        v14.receiver = v0;
        v14.super_class = NCNotificationListHighlights;
        v7 = objc_msgSendSuper2(&v14, sel_allNotificationGroups);
        sub_21E796644(0, &qword_280D03DF0);
        v0 = sub_21E92A528();

        if ((v0 & 0xC000000000000001) == 0)
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v6 < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v8 = *(v0 + 8 * v6 + 32);
LABEL_8:
            v9 = v8;

            v10 = [v9 listView];

            [v10 stackedItemSizes];
            v12 = v11;

            [v13 setAdditionalBottomSpace_];
            return;
          }

          __break(1u);
          goto LABEL_17;
        }
      }

      v8 = MEMORY[0x223D64A50](v6, v0);
      goto LABEL_8;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v2)
  {
LABEL_18:
    __break(1u);
    return;
  }

  [v2 setAdditionalBottomSpace_];
}

void NCNotificationListHighlights.notificationListView(_:viewForItemAt:)(uint64_t a1, unint64_t a2)
{
  v8.super_class = NCNotificationListHighlights;
  v3 = objc_msgSendSuper2(&v8, sel_allNotificationGroups);
  sub_21E796644(0, &qword_280D03DF0);
  v4 = sub_21E92A528();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223D64A50](a2, v4);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v5 = *(v4 + 8 * a2 + 32);
LABEL_5:
    v6 = v5;

    v7 = [v6 listView];

    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    return;
  }

  __break(1u);
}

uint64_t NCNotificationListHighlights.notificationListViewNumberOfItems(forList:)()
{
  v4.super_class = NCNotificationListHighlights;
  v0 = objc_msgSendSuper2(&v4, sel_allNotificationGroups);
  sub_21E796644(0, &qword_280D03DF0);
  v1 = sub_21E92A528();

  if (v1 >> 62)
  {
    v2 = sub_21E92A828();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

Swift::Void __swiftcall NCNotificationListHighlights.notificationListDidLayoutSubviews()()
{
  v13.super_class = NCNotificationListHighlights;
  objc_msgSendSuper2(&v13, sel_notificationListDidLayoutSubviews);
  sub_21E8EA080();
  sub_21E8EA388();
  [v0 expandedPercentage];
  if (v1 <= 0.8 && [v0 backlightState] == 2)
  {
    v2 = v0[OBJC_IVAR___NCNotificationListHighlights_lastKnownIsCoverSheetVisible];
  }

  else
  {
    v2 = 0;
  }

  v3 = OBJC_IVAR___NCNotificationListHighlights_wakeLightEffectInProgress;
  if (v0[OBJC_IVAR___NCNotificationListHighlights_wakeLightEffectInProgress])
  {
    [v0 expandedPercentage];
    if (v4 <= 0.4)
    {
      return;
    }

    v0[v3] = 0;
    v5 = *&v0[OBJC_IVAR___NCNotificationListHighlights_wakeLightDismissalTimer];
    if (v5)
    {
      [v5 invalidate];
    }
  }

  else
  {

    v6 = sub_21E929C38();

    v7 = sub_21E929C18();

    if (((v2 ^ v6) & 1) == 0 && (v7 & 1) == 0)
    {
      return;
    }
  }

  if (qword_27CED6AD0 != -1)
  {
    swift_once();
  }

  v8 = sub_21E929A78();
  __swift_project_value_buffer(v8, qword_27CED9E90);
  v9 = sub_21E929A58();
  v10 = sub_21E92A648();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67240448;
    *(v11 + 4) = v2;
    *(v11 + 8) = 1026;
    *(v11 + 10) = 0;
    _os_log_impl(&dword_21E77E000, v9, v10, "HighlightsList light effect changing to: (fill: %{BOOL,public}d, edge: %{BOOL,public}d), reason: layout", v11, 0xEu);
    MEMORY[0x223D65FB0](v11, -1, -1);
  }

  v12 = sub_21E796644(0, &qword_280D03C48);
  MEMORY[0x28223BE20](v12);
  sub_21E92A758();
}