@interface SBSwitcherModifierQuerySnapshot
- (SBSwitcherModifierQuerySnapshot)initWithModifier:(id)modifier;
- (void)_buildFromModifier:(id)modifier;
@end

@implementation SBSwitcherModifierQuerySnapshot

- (SBSwitcherModifierQuerySnapshot)initWithModifier:(id)modifier
{
  modifierCopy = modifier;
  if (!modifierCopy)
  {
    [SBSwitcherModifierQuerySnapshot initWithModifier:];
  }

  v8.receiver = self;
  v8.super_class = SBSwitcherModifierQuerySnapshot;
  v5 = [(SBSwitcherModifierQuerySnapshot *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SBSwitcherModifierQuerySnapshot *)v5 _buildFromModifier:modifierCopy];
  }

  return v6;
}

- (void)_buildFromModifier:(id)modifier
{
  v3 = MEMORY[0x28223BE20](self);
  v506 = v4;
  v508 = v3;
  v796[1] = *MEMORY[0x277D85DE8];
  v6 = v5;
  obj = objc_alloc_init(MEMORY[0x277CBEB38]);
  appLayouts = [v6 appLayouts];
  v7 = NSStringFromSelector(sel_adjustedAppLayoutsForAppLayouts_);
  v795 = v7;
  v8 = [v6 adjustedAppLayoutsForAppLayouts:appLayouts];
  sb_switcherModifierDebugTimelineDescription = [v8 sb_switcherModifierDebugTimelineDescription];
  v796[0] = sb_switcherModifierDebugTimelineDescription;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v796 forKeys:&v795 count:1];
  [obj addEntriesFromDictionary:v10];

  v783[0] = MEMORY[0x277D85DD0];
  v783[1] = 3221225472;
  v783[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke;
  v783[3] = &unk_2783B1D60;
  v11 = v6;
  v784 = v11;
  v12 = _SBCallDescriptionBlock(v783);
  v13 = NSStringFromSelector(sel_visibleAppLayouts);
  [obj setObject:v12 forKey:v13];

  v781[0] = MEMORY[0x277D85DD0];
  v781[1] = 3221225472;
  v781[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_2;
  v781[3] = &unk_2783B1D60;
  v14 = v11;
  v782 = v14;
  v15 = _SBCallDescriptionBlock(v781);
  v16 = NSStringFromSelector(sel_foregroundAppLayouts);
  [obj setObject:v15 forKey:v16];

  v779[0] = MEMORY[0x277D85DD0];
  v779[1] = 3221225472;
  v779[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_3;
  v779[3] = &unk_2783C2C80;
  v17 = v14;
  v780 = v17;
  v18 = _SBCallDescriptionBlockForEachVisibleAppLayout(v17, v779);
  v19 = NSStringFromSelector(sel_activityModeForAppLayout_);
  [obj setObject:v18 forKey:v19];

  v777[0] = MEMORY[0x277D85DD0];
  v777[1] = 3221225472;
  v777[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_4;
  v777[3] = &unk_2783C2CA8;
  v20 = v17;
  v778 = v20;
  v21 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v20, v777);
  v22 = NSStringFromSelector(sel_frameForIndex_);
  [obj setObject:v21 forKey:v22];

  v775[0] = MEMORY[0x277D85DD0];
  v775[1] = 3221225472;
  v775[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_5;
  v775[3] = &unk_2783C2CA8;
  v23 = v20;
  v776 = v23;
  v24 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v23, v775);
  v25 = NSStringFromSelector(sel_scaleForIndex_);
  [obj setObject:v24 forKey:v25];

  v773[0] = MEMORY[0x277D85DD0];
  v773[1] = 3221225472;
  v773[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_6;
  v773[3] = &unk_2783C2CA8;
  v26 = v23;
  v774 = v26;
  v27 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v26, v773);
  v28 = NSStringFromSelector(sel_anchorPointForIndex_);
  [obj setObject:v27 forKey:v28];

  v771[0] = MEMORY[0x277D85DD0];
  v771[1] = 3221225472;
  v771[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_7;
  v771[3] = &unk_2783C2CA8;
  v29 = v26;
  v772 = v29;
  v30 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v29, v771);
  v31 = NSStringFromSelector(sel_perspectiveAngleForIndex_);
  [obj setObject:v30 forKey:v31];

  v769[0] = MEMORY[0x277D85DD0];
  v769[1] = 3221225472;
  v769[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_8;
  v769[3] = &unk_2783C2CA8;
  v32 = v29;
  v770 = v32;
  v33 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v32, v769);
  v34 = NSStringFromSelector(sel_shouldPinLayoutRolesToSpace_);
  [obj setObject:v33 forKey:v34];

  v767[0] = MEMORY[0x277D85DD0];
  v767[1] = 3221225472;
  v767[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_9;
  v767[3] = &unk_2783C2CA8;
  v35 = v32;
  v768 = v35;
  v36 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v35, v767);
  v37 = NSStringFromSelector(sel_shouldUseAnchorPointToPinLayoutRolesToSpace_);
  [obj setObject:v36 forKey:v37];

  v765[0] = MEMORY[0x277D85DD0];
  v765[1] = 3221225472;
  v765[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_10;
  v765[3] = &unk_2783C2CA8;
  v38 = v35;
  v766 = v38;
  v39 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v38, v765);
  v40 = NSStringFromSelector(sel_clipsToUnobscuredMarginAtIndex_);
  [obj setObject:v39 forKey:v40];

  v763[0] = MEMORY[0x277D85DD0];
  v763[1] = 3221225472;
  v763[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_11;
  v763[3] = &unk_2783C2CA8;
  v41 = v38;
  v764 = v41;
  v42 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v41, v763);
  v43 = NSStringFromSelector(sel_visibleMarginForItemContainerAtIndex_);
  [obj setObject:v42 forKey:v43];

  v761[0] = MEMORY[0x277D85DD0];
  v761[1] = 3221225472;
  v761[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_12;
  v761[3] = &unk_2783C2CA8;
  v44 = v41;
  v762 = v44;
  v45 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v44, v761);
  v46 = NSStringFromSelector(sel_wallpaperOverlayAlphaForIndex_);
  [obj setObject:v45 forKey:v46];

  v759[0] = MEMORY[0x277D85DD0];
  v759[1] = 3221225472;
  v759[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_13;
  v759[3] = &unk_2783C2CA8;
  v47 = v44;
  v760 = v47;
  v48 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v47, v759);
  v49 = NSStringFromSelector(sel_lighteningAlphaForIndex_);
  [obj setObject:v48 forKey:v49];

  v757[0] = MEMORY[0x277D85DD0];
  v757[1] = 3221225472;
  v757[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_14;
  v757[3] = &unk_2783C2CA8;
  v50 = v47;
  v758 = v50;
  v51 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v50, v757);
  v52 = NSStringFromSelector(sel_headerStyleForIndex_);
  [obj setObject:v51 forKey:v52];

  v755[0] = MEMORY[0x277D85DD0];
  v755[1] = 3221225472;
  v755[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_15;
  v755[3] = &unk_2783C2CA8;
  v53 = v50;
  v756 = v53;
  v54 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v53, v755);
  v55 = NSStringFromSelector(sel_titleOpacityForIndex_);
  [obj setObject:v54 forKey:v55];

  v753[0] = MEMORY[0x277D85DD0];
  v753[1] = 3221225472;
  v753[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_16;
  v753[3] = &unk_2783C2CA8;
  v56 = v53;
  v754 = v56;
  v57 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v56, v753);
  v58 = NSStringFromSelector(sel_isContentStatusBarVisibleForIndex_);
  [obj setObject:v57 forKey:v58];

  v751[0] = MEMORY[0x277D85DD0];
  v751[1] = 3221225472;
  v751[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_17;
  v751[3] = &unk_2783C2CA8;
  v59 = v56;
  v752 = v59;
  v60 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v59, v751);
  v61 = NSStringFromSelector(sel_shouldUseBrightMaterialForIndex_);
  [obj setObject:v60 forKey:v61];

  v749[0] = MEMORY[0x277D85DD0];
  v749[1] = 3221225472;
  v749[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_18;
  v749[3] = &unk_2783C2CA8;
  v62 = v59;
  v750 = v62;
  v63 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v62, v749);
  v64 = NSStringFromSelector(sel_cornerRadiiForIndex_);
  [obj setObject:v63 forKey:v64];

  v747[0] = MEMORY[0x277D85DD0];
  v747[1] = 3221225472;
  v747[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_19;
  v747[3] = &unk_2783C2CA8;
  v65 = v62;
  v748 = v65;
  v66 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v65, v747);
  v67 = NSStringFromSelector(sel_maskedCornersForIndex_);
  [obj setObject:v66 forKey:v67];

  v745[0] = MEMORY[0x277D85DD0];
  v745[1] = 3221225472;
  v745[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_20;
  v745[3] = &unk_2783C2CA8;
  v68 = v65;
  v746 = v68;
  v69 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v68, v745);
  v70 = NSStringFromSelector(sel_isIndexRubberbandableForSwipeToKill_);
  [obj setObject:v69 forKey:v70];

  v743[0] = MEMORY[0x277D85DD0];
  v743[1] = 3221225472;
  v743[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_21;
  v743[3] = &unk_2783C2CA8;
  v71 = v68;
  v744 = v71;
  v72 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v71, v743);
  v73 = NSStringFromSelector(sel_minimumTranslationToKillIndex_);
  [obj setObject:v72 forKey:v73];

  v741[0] = MEMORY[0x277D85DD0];
  v741[1] = 3221225472;
  v741[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_22;
  v741[3] = &unk_2783C2CA8;
  v74 = v71;
  v742 = v74;
  v75 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v74, v741);
  v76 = NSStringFromSelector(sel_backgroundOpacityForIndex_);
  [obj setObject:v75 forKey:v76];

  v739[0] = MEMORY[0x277D85DD0];
  v739[1] = 3221225472;
  v739[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_23;
  v739[3] = &unk_2783C2CA8;
  v77 = v74;
  v740 = v77;
  v78 = _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(v77, v739);
  v79 = NSStringFromSelector(sel_clipsToBoundsAtIndex_);
  [obj setObject:v78 forKey:v79];

  v80 = v77;
  p = NSStringFromSelector(sel_clippingFrameForIndex_withBounds_);
  v81 = objc_alloc_init(MEMORY[0x277CBEB18]);
  visibleAppLayouts = [v80 visibleAppLayouts];
  appLayouts2 = [v80 appLayouts];
  v84 = [v80 methodSignatureForSelector:sel_clippingFrameForIndex_withBounds_];
  if (v84)
  {
    *outCount = MEMORY[0x277D85DD0];
    v786 = 3221225472;
    v787 = ___SBCallDescriptionBlockForEachVisibleAppLayoutByIndexWithBounds_block_invoke;
    v788 = &unk_2783C2D40;
    v789 = visibleAppLayouts;
    v790 = v80;
    v791 = v84;
    v793 = &__block_literal_global_192;
    v794 = sel_clippingFrameForIndex_withBounds_;
    v85 = v81;
    v792 = v85;
    [appLayouts2 enumerateObjectsUsingBlock:outCount];
    sb_switcherModifierDebugTimelineDescription2 = [v85 sb_switcherModifierDebugTimelineDescription];
  }

  else
  {
    sb_switcherModifierDebugTimelineDescription2 = [MEMORY[0x277CCACA8] stringWithFormat:@"No context method for %@", p];
  }

  v87 = NSStringFromSelector(sel_clippingFrameForIndex_withBounds_);
  [obj setObject:sb_switcherModifierDebugTimelineDescription2 forKey:v87];

  v88 = v80;
  pa = NSStringFromSelector(sel_clippingFrameForLayoutRole_inAppLayout_atIndex_withBounds_);
  v89 = objc_alloc_init(MEMORY[0x277CBEB18]);
  visibleAppLayouts2 = [v88 visibleAppLayouts];
  appLayouts3 = [v88 appLayouts];
  v92 = [v88 methodSignatureForSelector:sel_clippingFrameForLayoutRole_inAppLayout_atIndex_withBounds_];
  if (v92)
  {
    *outCount = MEMORY[0x277D85DD0];
    v786 = 3221225472;
    v787 = ___SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayoutWithIndexAndBounds_block_invoke;
    v788 = &unk_2783C2D40;
    v789 = visibleAppLayouts2;
    v790 = v88;
    v791 = v92;
    v793 = &__block_literal_global_196_1;
    v794 = sel_clippingFrameForLayoutRole_inAppLayout_atIndex_withBounds_;
    v93 = v89;
    v792 = v93;
    [appLayouts3 enumerateObjectsUsingBlock:outCount];
    sb_switcherModifierDebugTimelineDescription3 = [v93 sb_switcherModifierDebugTimelineDescription];
  }

  else
  {
    sb_switcherModifierDebugTimelineDescription3 = [MEMORY[0x277CCACA8] stringWithFormat:@"No context method for %@", pa];
  }

  v95 = NSStringFromSelector(sel_clippingFrameForLayoutRole_inAppLayout_atIndex_withBounds_);
  [obj setObject:sb_switcherModifierDebugTimelineDescription3 forKey:v95];

  v96 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout(v88, sel_snapshotScaleForLayoutRole_inAppLayout_, &__block_literal_global_200_1);
  v97 = NSStringFromSelector(sel_snapshotScaleForLayoutRole_inAppLayout_);
  [obj setObject:v96 forKey:v97];

  v98 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout(v88, sel_scaleForLayoutRole_inAppLayout_, &__block_literal_global_204_0);
  v99 = NSStringFromSelector(sel_scaleForLayoutRole_inAppLayout_);
  [obj setObject:v98 forKey:v99];

  v100 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout(v88, sel_isLayoutRoleBlurred_inAppLayout_, &__block_literal_global_208_1);
  v101 = NSStringFromSelector(sel_isLayoutRoleBlurred_inAppLayout_);
  [obj setObject:v100 forKey:v101];

  v102 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout(v88, sel_blurDelayForLayoutRole_inAppLayout_, &__block_literal_global_212);
  v103 = NSStringFromSelector(sel_blurDelayForLayoutRole_inAppLayout_);
  [obj setObject:v102 forKey:v103];

  v104 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout(v88, sel_blurTargetPreferenceForLayoutRole_inAppLayout_, &__block_literal_global_216_0);
  v105 = NSStringFromSelector(sel_blurTargetPreferenceForLayoutRole_inAppLayout_);
  [obj setObject:v104 forKey:v105];

  v106 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout(v88, sel_dimmingAlphaForLayoutRole_inAppLayout_, &__block_literal_global_220_2);
  v107 = NSStringFromSelector(sel_dimmingAlphaForLayoutRole_inAppLayout_);
  [obj setObject:v106 forKey:v107];

  v108 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout(v88, sel_shouldSuppressHighlightEffectForLayoutRole_inAppLayout_, &__block_literal_global_224_0);
  v109 = NSStringFromSelector(sel_shouldSuppressHighlightEffectForLayoutRole_inAppLayout_);
  [obj setObject:v108 forKey:v109];

  v110 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout(v88, sel_isLayoutRoleMatchMovedToScene_inAppLayout_, &__block_literal_global_228_1);
  v111 = NSStringFromSelector(sel_isLayoutRoleMatchMovedToScene_inAppLayout_);
  [obj setObject:v110 forKey:v111];

  v112 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout(v88, sel_isLayoutRoleSelectable_inAppLayout_, &__block_literal_global_232_0);
  v113 = NSStringFromSelector(sel_isLayoutRoleSelectable_inAppLayout_);
  [obj setObject:v112 forKey:v113];

  v114 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout(v88, sel_isLayoutRoleDraggable_inAppLayout_, &__block_literal_global_236_0);
  v115 = NSStringFromSelector(sel_isLayoutRoleDraggable_inAppLayout_);
  [obj setObject:v114 forKey:v115];

  v116 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout(v88, sel_shouldUseNonuniformSnapshotScalingForLayoutRole_inAppLayout_, &__block_literal_global_240);
  v117 = NSStringFromSelector(sel_shouldUseNonuniformSnapshotScalingForLayoutRole_inAppLayout_);
  [obj setObject:v116 forKey:v117];

  v118 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout(v88, sel_hiddenContentStatusBarPartsForLayoutRole_inAppLayout_, &__block_literal_global_244_0);
  v119 = NSStringFromSelector(sel_hiddenContentStatusBarPartsForLayoutRole_inAppLayout_);
  [obj setObject:v118 forKey:v119];

  v120 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout(v88, sel_shadowStyleForLayoutRole_inAppLayout_, &__block_literal_global_248);
  v121 = NSStringFromSelector(sel_shadowStyleForLayoutRole_inAppLayout_);
  [obj setObject:v120 forKey:v121];

  v122 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout(v88, sel_isItemResizingAllowedForLayoutRole_inAppLayout_, &__block_literal_global_252);
  v123 = NSStringFromSelector(sel_isItemResizingAllowedForLayoutRole_inAppLayout_);
  [obj setObject:v122 forKey:v123];

  v124 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout(v88, sel_shouldAllowContentViewTouchesForLayoutRole_inAppLayout_, &__block_literal_global_256_1);
  v125 = NSStringFromSelector(sel_shouldAllowContentViewTouchesForLayoutRole_inAppLayout_);
  [obj setObject:v124 forKey:v125];

  v126 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayoutAtIndex(v88, sel_opacityForLayoutRole_inAppLayout_atIndex_, &__block_literal_global_260);
  v127 = NSStringFromSelector(sel_opacityForLayoutRole_inAppLayout_atIndex_);
  [obj setObject:v126 forKey:v127];

  v128 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayoutAtIndex(v88, sel_isLayoutRoleKillable_inAppLayout_atIndex_, &__block_literal_global_264);
  v129 = NSStringFromSelector(sel_isLayoutRoleKillable_inAppLayout_atIndex_);
  [obj setObject:v128 forKey:v129];

  v130 = v88;
  pb = NSStringFromSelector(sel_frameForLayoutRole_inAppLayout_withBounds_);
  v131 = objc_alloc_init(MEMORY[0x277CBEB18]);
  visibleAppLayouts3 = [v130 visibleAppLayouts];
  appLayouts4 = [v130 appLayouts];
  v134 = [v130 methodSignatureForSelector:sel_frameForLayoutRole_inAppLayout_withBounds_];
  if (v134)
  {
    *outCount = MEMORY[0x277D85DD0];
    v786 = 3221225472;
    v787 = ___SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayoutWithBounds_block_invoke;
    v788 = &unk_2783C2D40;
    v789 = visibleAppLayouts3;
    v790 = v130;
    v791 = v134;
    v793 = &__block_literal_global_268_0;
    v794 = sel_frameForLayoutRole_inAppLayout_withBounds_;
    v135 = v131;
    v792 = v135;
    [appLayouts4 enumerateObjectsUsingBlock:outCount];
    sb_switcherModifierDebugTimelineDescription4 = [v135 sb_switcherModifierDebugTimelineDescription];
  }

  else
  {
    sb_switcherModifierDebugTimelineDescription4 = [MEMORY[0x277CCACA8] stringWithFormat:@"No context method for %@", pb];
  }

  v137 = NSStringFromSelector(sel_frameForLayoutRole_inAppLayout_withBounds_);
  [obj setObject:sb_switcherModifierDebugTimelineDescription4 forKey:v137];

  v737[0] = MEMORY[0x277D85DD0];
  v737[1] = 3221225472;
  v737[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_44;
  v737[3] = &unk_2783C2C80;
  v138 = v130;
  v738 = v138;
  v139 = _SBCallDescriptionBlockForEachVisibleAppLayout(v138, v737);
  v140 = NSStringFromSelector(sel_animationAttributesForLayoutElement_);
  [obj setObject:v139 forKey:v140];

  v735[0] = MEMORY[0x277D85DD0];
  v735[1] = 3221225472;
  v735[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_45;
  v735[3] = &unk_2783C2C80;
  v141 = v138;
  v736 = v141;
  v142 = _SBCallDescriptionBlockForEachVisibleAppLayout(v141, v735);
  v143 = NSStringFromSelector(sel_frameForIconOverlayInAppLayout_);
  [obj setObject:v142 forKey:v143];

  v733[0] = MEMORY[0x277D85DD0];
  v733[1] = 3221225472;
  v733[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_46;
  v733[3] = &unk_2783C2C80;
  v144 = v141;
  v734 = v144;
  v145 = _SBCallDescriptionBlockForEachVisibleAppLayout(v144, v733);
  v146 = NSStringFromSelector(sel_isFocusEnabledForAppLayout_);
  [obj setObject:v145 forKey:v146];

  v731[0] = MEMORY[0x277D85DD0];
  v731[1] = 3221225472;
  v731[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_47;
  v731[3] = &unk_2783C2C80;
  v147 = v144;
  v732 = v147;
  v148 = _SBCallDescriptionBlockForEachVisibleAppLayout(v147, v731);
  v149 = NSStringFromSelector(sel_multipleWindowsIndicatorLayoutRolesForAppLayout_);
  [obj setObject:v148 forKey:v149];

  v729[0] = MEMORY[0x277D85DD0];
  v729[1] = 3221225472;
  v729[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_48;
  v729[3] = &unk_2783C2C80;
  v150 = v147;
  v730 = v150;
  v151 = _SBCallDescriptionBlockForEachVisibleAppLayout(v150, v729);
  v152 = NSStringFromSelector(sel_preferredSnapshotOrientationForAppLayout_);
  [obj setObject:v151 forKey:v152];

  v727[0] = MEMORY[0x277D85DD0];
  v727[1] = 3221225472;
  v727[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_49;
  v727[3] = &unk_2783C2C80;
  v153 = v150;
  v728 = v153;
  v154 = _SBCallDescriptionBlockForEachVisibleAppLayout(v153, v727);
  v155 = NSStringFromSelector(sel_wantsSceneResizesHostedContextForAppLayout_);
  [obj setObject:v154 forKey:v155];

  v725[0] = MEMORY[0x277D85DD0];
  v725[1] = 3221225472;
  v725[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_50;
  v725[3] = &unk_2783C2C80;
  v156 = v153;
  v726 = v156;
  v157 = _SBCallDescriptionBlockForEachVisibleAppLayout(v156, v725);
  v158 = NSStringFromSelector(sel_canSelectLeafWithModifierKeysInAppLayout_);
  [obj setObject:v157 forKey:v158];

  v723[0] = MEMORY[0x277D85DD0];
  v723[1] = 3221225472;
  v723[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_51;
  v723[3] = &unk_2783C2C80;
  v159 = v156;
  v724 = v159;
  v160 = _SBCallDescriptionBlockForEachVisibleAppLayout(v159, v723);
  v161 = NSStringFromSelector(sel_shouldAllowGroupOpacityForAppLayout_);
  [obj setObject:v160 forKey:v161];

  v721[0] = MEMORY[0x277D85DD0];
  v721[1] = 3221225472;
  v721[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_52;
  v721[3] = &unk_2783C2C80;
  v162 = v159;
  v722 = v162;
  v163 = _SBCallDescriptionBlockForEachVisibleAppLayout(v162, v721);
  v164 = NSStringFromSelector(sel_asyncRenderingAttributesForAppLayout_);
  [obj setObject:v163 forKey:v164];

  v719[0] = MEMORY[0x277D85DD0];
  v719[1] = 3221225472;
  v719[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_53;
  v719[3] = &unk_2783B1D60;
  v165 = v162;
  v720 = v165;
  v166 = _SBCallDescriptionBlock(v719);
  v167 = NSStringFromSelector(sel_contentViewScale);
  [obj setObject:v166 forKey:v167];

  v717[0] = MEMORY[0x277D85DD0];
  v717[1] = 3221225472;
  v717[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_54;
  v717[3] = &unk_2783B1D60;
  v168 = v165;
  v718 = v168;
  v169 = _SBCallDescriptionBlock(v717);
  v170 = NSStringFromSelector(sel_homeScreenAlpha);
  [obj setObject:v169 forKey:v170];

  v715[0] = MEMORY[0x277D85DD0];
  v715[1] = 3221225472;
  v715[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_55;
  v715[3] = &unk_2783B1D60;
  v171 = v168;
  v716 = v171;
  v172 = _SBCallDescriptionBlock(v715);
  v173 = NSStringFromSelector(sel_homeScreenBackdropBlurProgress);
  [obj setObject:v172 forKey:v173];

  v713[0] = MEMORY[0x277D85DD0];
  v713[1] = 3221225472;
  v713[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_56;
  v713[3] = &unk_2783B1D60;
  v174 = v171;
  v714 = v174;
  v175 = _SBCallDescriptionBlock(v713);
  v176 = NSStringFromSelector(sel_homeScreenScale);
  [obj setObject:v175 forKey:v176];

  v711[0] = MEMORY[0x277D85DD0];
  v711[1] = 3221225472;
  v711[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_57;
  v711[3] = &unk_2783B1D60;
  v177 = v174;
  v712 = v177;
  v178 = _SBCallDescriptionBlock(v711);
  v179 = NSStringFromSelector(sel_wallpaperScale);
  [obj setObject:v178 forKey:v179];

  v709[0] = MEMORY[0x277D85DD0];
  v709[1] = 3221225472;
  v709[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_58;
  v709[3] = &unk_2783B1D60;
  v180 = v177;
  v710 = v180;
  v181 = _SBCallDescriptionBlock(v709);
  v182 = NSStringFromSelector(sel_homeScreenDimmingAlpha);
  [obj setObject:v181 forKey:v182];

  v707[0] = MEMORY[0x277D85DD0];
  v707[1] = 3221225472;
  v707[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_59;
  v707[3] = &unk_2783B1D60;
  v183 = v180;
  v708 = v183;
  v184 = _SBCallDescriptionBlock(v707);
  v185 = NSStringFromSelector(sel_containerStatusBarAnimationDuration);
  [obj setObject:v184 forKey:v185];

  v705[0] = MEMORY[0x277D85DD0];
  v705[1] = 3221225472;
  v705[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_60;
  v705[3] = &unk_2783B1D60;
  v186 = v183;
  v706 = v186;
  v187 = _SBCallDescriptionBlock(v705);
  v188 = NSStringFromSelector(sel_hiddenContainerStatusBarParts);
  [obj setObject:v187 forKey:v188];

  v703[0] = MEMORY[0x277D85DD0];
  v703[1] = 3221225472;
  v703[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_61;
  v703[3] = &unk_2783B1D60;
  v189 = v186;
  v704 = v189;
  v190 = _SBCallDescriptionBlock(v703);
  v191 = NSStringFromSelector(sel_dockProgress);
  [obj setObject:v190 forKey:v191];

  v701[0] = MEMORY[0x277D85DD0];
  v701[1] = 3221225472;
  v701[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_62;
  v701[3] = &unk_2783B1D60;
  v192 = v189;
  v702 = v192;
  v193 = _SBCallDescriptionBlock(v701);
  v194 = NSStringFromSelector(sel_dockWindowLevelPriority);
  [obj setObject:v193 forKey:v194];

  v699[0] = MEMORY[0x277D85DD0];
  v699[1] = 3221225472;
  v699[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_63;
  v699[3] = &unk_2783B1D60;
  v195 = v192;
  v700 = v195;
  v196 = _SBCallDescriptionBlock(v699);
  v197 = NSStringFromSelector(sel_dockWindowLevel);
  [obj setObject:v196 forKey:v197];

  v697[0] = MEMORY[0x277D85DD0];
  v697[1] = 3221225472;
  v697[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_64;
  v697[3] = &unk_2783B1D60;
  v198 = v195;
  v698 = v198;
  v199 = _SBCallDescriptionBlock(v697);
  v200 = NSStringFromSelector(sel_shelfBackgroundBlurOpacity);
  [obj setObject:v199 forKey:v200];

  v695[0] = MEMORY[0x277D85DD0];
  v695[1] = 3221225472;
  v695[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_65;
  v695[3] = &unk_2783B1D60;
  v201 = v198;
  v696 = v201;
  v202 = _SBCallDescriptionBlock(v695);
  v203 = NSStringFromSelector(sel_shelfBackgroundBlurFrame);
  [obj setObject:v202 forKey:v203];

  v693[0] = MEMORY[0x277D85DD0];
  v693[1] = 3221225472;
  v693[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_66;
  v693[3] = &unk_2783B1D60;
  v204 = v201;
  v694 = v204;
  v205 = _SBCallDescriptionBlock(v693);
  v206 = NSStringFromSelector(sel_wantsSlideOverTongue);
  [obj setObject:v205 forKey:v206];

  v691[0] = MEMORY[0x277D85DD0];
  v691[1] = 3221225472;
  v691[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_67;
  v691[3] = &unk_2783B1D60;
  v207 = v204;
  v692 = v207;
  v208 = _SBCallDescriptionBlock(v691);
  v209 = NSStringFromSelector(sel_slideOverTongueState);
  [obj setObject:v208 forKey:v209];

  v689[0] = MEMORY[0x277D85DD0];
  v689[1] = 3221225472;
  v689[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_68;
  v689[3] = &unk_2783B1D60;
  v210 = v207;
  v690 = v210;
  v211 = _SBCallDescriptionBlock(v689);
  v212 = NSStringFromSelector(sel_slideOverTongueDirection);
  [obj setObject:v211 forKey:v212];

  v687[0] = MEMORY[0x277D85DD0];
  v687[1] = 3221225472;
  v687[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_69;
  v687[3] = &unk_2783B1D60;
  v213 = v210;
  v688 = v213;
  v214 = _SBCallDescriptionBlock(v687);
  v215 = NSStringFromSelector(sel_appLayoutToAttachSlideOverTongue);
  [obj setObject:v214 forKey:v215];

  v685[0] = MEMORY[0x277D85DD0];
  v685[1] = 3221225472;
  v685[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_70;
  v685[3] = &unk_2783B1D60;
  v216 = v213;
  v686 = v216;
  v217 = _SBCallDescriptionBlock(v685);
  v218 = NSStringFromSelector(sel_isScrollEnabled);
  [obj setObject:v217 forKey:v218];

  v683[0] = MEMORY[0x277D85DD0];
  v683[1] = 3221225472;
  v683[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_71;
  v683[3] = &unk_2783B1D60;
  v219 = v216;
  v684 = v219;
  v220 = _SBCallDescriptionBlock(v683);
  v221 = NSStringFromSelector(sel_shouldScrollViewBlockTouches);
  [obj setObject:v220 forKey:v221];

  v681[0] = MEMORY[0x277D85DD0];
  v681[1] = 3221225472;
  v681[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_72;
  v681[3] = &unk_2783B1D60;
  v222 = v219;
  v682 = v222;
  v223 = _SBCallDescriptionBlock(v681);
  v224 = NSStringFromSelector(sel_isContainerStatusBarVisible);
  [obj setObject:v223 forKey:v224];

  v679[0] = MEMORY[0x277D85DD0];
  v679[1] = 3221225472;
  v679[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_73;
  v679[3] = &unk_2783B1D60;
  v225 = v222;
  v680 = v225;
  v226 = _SBCallDescriptionBlock(v679);
  v227 = NSStringFromSelector(sel_wantsMenuBar);
  [obj setObject:v226 forKey:v227];

  v677[0] = MEMORY[0x277D85DD0];
  v677[1] = 3221225472;
  v677[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_74;
  v677[3] = &unk_2783B1D60;
  v228 = v225;
  v678 = v228;
  v229 = _SBCallDescriptionBlock(v677);
  v230 = NSStringFromSelector(sel_isWallpaperRequiredForSwitcher);
  [obj setObject:v229 forKey:v230];

  v675[0] = MEMORY[0x277D85DD0];
  v675[1] = 3221225472;
  v675[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_75;
  v675[3] = &unk_2783B1D60;
  v231 = v228;
  v676 = v231;
  v232 = _SBCallDescriptionBlock(v675);
  v233 = NSStringFromSelector(sel_isHomeScreenContentRequired);
  [obj setObject:v232 forKey:v233];

  v673[0] = MEMORY[0x277D85DD0];
  v673[1] = 3221225472;
  v673[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_76;
  v673[3] = &unk_2783B1D60;
  v234 = v231;
  v674 = v234;
  v235 = _SBCallDescriptionBlock(v673);
  v236 = NSStringFromSelector(sel_isSwitcherWindowVisible);
  [obj setObject:v235 forKey:v236];

  v671[0] = MEMORY[0x277D85DD0];
  v671[1] = 3221225472;
  v671[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_77;
  v671[3] = &unk_2783B1D60;
  v237 = v234;
  v672 = v237;
  v238 = _SBCallDescriptionBlock(v671);
  v239 = NSStringFromSelector(sel_isSwitcherWindowUserInteractionEnabled);
  [obj setObject:v238 forKey:v239];

  v669[0] = MEMORY[0x277D85DD0];
  v669[1] = 3221225472;
  v669[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_78;
  v669[3] = &unk_2783B1D60;
  v240 = v237;
  v670 = v240;
  v241 = _SBCallDescriptionBlock(v669);
  v242 = NSStringFromSelector(sel_shouldAcceleratedHomeButtonPressBegin);
  [obj setObject:v241 forKey:v242];

  v667[0] = MEMORY[0x277D85DD0];
  v667[1] = 3221225472;
  v667[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_79;
  v667[3] = &unk_2783B1D60;
  v243 = v240;
  v668 = v243;
  v244 = _SBCallDescriptionBlock(v667);
  v245 = NSStringFromSelector(sel_shouldFireTransitionCompletionInDefaultRunLoopMode);
  [obj setObject:v244 forKey:v245];

  v665[0] = MEMORY[0x277D85DD0];
  v665[1] = 3221225472;
  v665[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_80;
  v665[3] = &unk_2783B1D60;
  v246 = v243;
  v666 = v246;
  v247 = _SBCallDescriptionBlock(v665);
  v248 = NSStringFromSelector(sel_wantsDockBehaviorAssertion);
  [obj setObject:v247 forKey:v248];

  v663[0] = MEMORY[0x277D85DD0];
  v663[1] = 3221225472;
  v663[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_81;
  v663[3] = &unk_2783B1D60;
  v249 = v246;
  v664 = v249;
  v250 = _SBCallDescriptionBlock(v663);
  v251 = NSStringFromSelector(sel_wantsDockWindowLevelAssertion);
  [obj setObject:v250 forKey:v251];

  v661[0] = MEMORY[0x277D85DD0];
  v661[1] = 3221225472;
  v661[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_82;
  v661[3] = &unk_2783B1D60;
  v252 = v249;
  v662 = v252;
  v253 = _SBCallDescriptionBlock(v661);
  v254 = NSStringFromSelector(sel_wantsAsynchronousSurfaceRetentionAssertion);
  [obj setObject:v253 forKey:v254];

  v659[0] = MEMORY[0x277D85DD0];
  v659[1] = 3221225472;
  v659[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_83;
  v659[3] = &unk_2783B1D60;
  v255 = v252;
  v660 = v255;
  v256 = _SBCallDescriptionBlock(v659);
  v257 = NSStringFromSelector(sel_isItemContainerPointerInteractionEnabled);
  [obj setObject:v256 forKey:v257];

  v657[0] = MEMORY[0x277D85DD0];
  v657[1] = 3221225472;
  v657[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_84;
  v657[3] = &unk_2783B1D60;
  v258 = v255;
  v658 = v258;
  v259 = _SBCallDescriptionBlock(v657);
  v260 = NSStringFromSelector(sel_shouldRubberbandFullScreenHomeGrabberView);
  [obj setObject:v259 forKey:v260];

  v655[0] = MEMORY[0x277D85DD0];
  v655[1] = 3221225472;
  v655[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_85;
  v655[3] = &unk_2783B1D60;
  v261 = v258;
  v656 = v261;
  v262 = _SBCallDescriptionBlock(v655);
  v263 = NSStringFromSelector(sel_wallpaperStyle);
  [obj setObject:v262 forKey:v263];

  v653[0] = MEMORY[0x277D85DD0];
  v653[1] = 3221225472;
  v653[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_86;
  v653[3] = &unk_2783B1D60;
  v264 = v261;
  v654 = v264;
  v265 = _SBCallDescriptionBlock(v653);
  v266 = NSStringFromSelector(sel_homeScreenBackdropBlurType);
  [obj setObject:v265 forKey:v266];

  v651[0] = MEMORY[0x277D85DD0];
  v651[1] = 3221225472;
  v651[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_87;
  v651[3] = &unk_2783B1D60;
  v267 = v264;
  v652 = v267;
  v268 = _SBCallDescriptionBlock(v651);
  v269 = NSStringFromSelector(sel_dockUpdateMode);
  [obj setObject:v268 forKey:v269];

  v649[0] = MEMORY[0x277D85DD0];
  v649[1] = 3221225472;
  v649[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_88;
  v649[3] = &unk_2783B1D60;
  v270 = v267;
  v650 = v270;
  v271 = _SBCallDescriptionBlock(v649);
  v272 = NSStringFromSelector(sel_appLayoutToScrollToBeforeTransitioning);
  [obj setObject:v271 forKey:v272];

  v647[0] = MEMORY[0x277D85DD0];
  v647[1] = 3221225472;
  v647[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_89;
  v647[3] = &unk_2783B1D60;
  v273 = v270;
  v648 = v273;
  v274 = _SBCallDescriptionBlock(v647);
  v275 = NSStringFromSelector(sel_appLayoutToScrollToBeforeReopeningClosedWindows);
  [obj setObject:v274 forKey:v275];

  v645[0] = MEMORY[0x277D85DD0];
  v645[1] = 3221225472;
  v645[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_90;
  v645[3] = &unk_2783B1D60;
  v276 = v273;
  v646 = v276;
  v277 = _SBCallDescriptionBlock(v645);
  v278 = NSStringFromSelector(sel_topMostLayoutElements);
  [obj setObject:v277 forKey:v278];

  v643[0] = MEMORY[0x277D85DD0];
  v643[1] = 3221225472;
  v643[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_91;
  v643[3] = &unk_2783B1D60;
  v279 = v276;
  v644 = v279;
  v280 = _SBCallDescriptionBlock(v643);
  v281 = NSStringFromSelector(sel_appLayoutsToCacheSnapshots);
  [obj setObject:v280 forKey:v281];

  v641[0] = MEMORY[0x277D85DD0];
  v641[1] = 3221225472;
  v641[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_92;
  v641[3] = &unk_2783B1D60;
  v282 = v279;
  v642 = v282;
  v283 = _SBCallDescriptionBlock(v641);
  v284 = NSStringFromSelector(sel_appLayoutsToCacheFullsizeSnapshots);
  [obj setObject:v283 forKey:v284];

  v639[0] = MEMORY[0x277D85DD0];
  v639[1] = 3221225472;
  v639[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_93;
  v639[3] = &unk_2783B1D60;
  v285 = v282;
  v640 = v285;
  v286 = _SBCallDescriptionBlock(v639);
  v287 = NSStringFromSelector(sel_appLayoutsToResignActive);
  [obj setObject:v286 forKey:v287];

  v637[0] = MEMORY[0x277D85DD0];
  v637[1] = 3221225472;
  v637[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_94;
  v637[3] = &unk_2783B1D60;
  v288 = v285;
  v638 = v288;
  v289 = _SBCallDescriptionBlock(v637);
  v290 = NSStringFromSelector(sel_keyboardSuppressionMode);
  [obj setObject:v289 forKey:v290];

  v635[0] = MEMORY[0x277D85DD0];
  v635[1] = 3221225472;
  v635[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_95;
  v635[3] = &unk_2783B1D60;
  v291 = v288;
  v636 = v291;
  v292 = _SBCallDescriptionBlock(v635);
  v293 = NSStringFromSelector(sel_keyboardFocusedAppLayout);
  [obj setObject:v292 forKey:v293];

  v633[0] = MEMORY[0x277D85DD0];
  v633[1] = 3221225472;
  v633[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_96;
  v633[3] = &unk_2783B1D60;
  v294 = v291;
  v634 = v294;
  v295 = _SBCallDescriptionBlock(v633);
  v296 = NSStringFromSelector(sel_leafAppLayoutForKeyboardFocusedScene);
  [obj setObject:v295 forKey:v296];

  v631[0] = MEMORY[0x277D85DD0];
  v631[1] = 3221225472;
  v631[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_97;
  v631[3] = &unk_2783B1D60;
  v297 = v294;
  v632 = v297;
  v298 = _SBCallDescriptionBlock(v631);
  v299 = NSStringFromSelector(sel_shelfFocusedDisplayItems);
  [obj setObject:v298 forKey:v299];

  v629[0] = MEMORY[0x277D85DD0];
  v629[1] = 3221225472;
  v629[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_98;
  v629[3] = &unk_2783B1D60;
  v300 = v297;
  v630 = v300;
  v301 = _SBCallDescriptionBlock(v629);
  v302 = NSStringFromSelector(sel_activeLeafAppLayoutsReachableByKeyboardShortcut);
  [obj setObject:v301 forKey:v302];

  v627[0] = MEMORY[0x277D85DD0];
  v627[1] = 3221225472;
  v627[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_99;
  v627[3] = &unk_2783B1D60;
  v303 = v300;
  v628 = v303;
  v304 = _SBCallDescriptionBlock(v627);
  v305 = NSStringFromSelector(sel_inactiveAppLayoutsReachableByKeyboardShortcut);
  [obj setObject:v304 forKey:v305];

  v625[0] = MEMORY[0x277D85DD0];
  v625[1] = 3221225472;
  v625[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_100;
  v625[3] = &unk_2783B1D60;
  v306 = v303;
  v626 = v306;
  v307 = _SBCallDescriptionBlock(v625);
  v308 = NSStringFromSelector(sel_destinationAppLayoutForDismissingCurrentMode);
  [obj setObject:v307 forKey:v308];

  v623[0] = MEMORY[0x277D85DD0];
  v623[1] = 3221225472;
  v623[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_101;
  v623[3] = &unk_2783C2C80;
  v309 = v306;
  v624 = v309;
  v310 = _SBCallDescriptionBlockForEachVisibleAppLayout(v309, v623);
  v311 = NSStringFromSelector(sel_isHomeAffordanceSupportedForAppLayout_);
  [obj setObject:v310 forKey:v311];

  v621[0] = MEMORY[0x277D85DD0];
  v621[1] = 3221225472;
  v621[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_102;
  v621[3] = &unk_2783B1D60;
  v312 = v309;
  v622 = v312;
  v313 = _SBCallDescriptionBlock(v621);
  v314 = NSStringFromSelector(sel_visibleHomeAffordanceLayoutElements);
  [obj setObject:v313 forKey:v314];

  v619[0] = MEMORY[0x277D85DD0];
  v619[1] = 3221225472;
  v619[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_103;
  v619[3] = &unk_2783C2C80;
  v315 = v312;
  v620 = v315;
  v316 = _SBCallDescriptionBlockForEachVisibleAppLayout(v315, v619);
  v317 = NSStringFromSelector(sel_shouldAccessoryDrawShadowForAppLayout_);
  [obj setObject:v316 forKey:v317];

  v617[0] = MEMORY[0x277D85DD0];
  v617[1] = 3221225472;
  v617[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_104;
  v617[3] = &unk_2783C2C80;
  v318 = v315;
  v618 = v318;
  v319 = _SBCallDescriptionBlockForEachVisibleAppLayout(v318, v617);
  v320 = NSStringFromSelector(sel_isResizeGrabberVisibleForAppLayout_);
  [obj setObject:v319 forKey:v320];

  v615[0] = MEMORY[0x277D85DD0];
  v615[1] = 3221225472;
  v615[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_105;
  v615[3] = &unk_2783B1D60;
  v321 = v318;
  v616 = v321;
  v322 = _SBCallDescriptionBlock(v615);
  v323 = NSStringFromSelector(sel_visibleShelves);
  [obj setObject:v322 forKey:v323];

  v613[0] = MEMORY[0x277D85DD0];
  v613[1] = 3221225472;
  v613[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_106;
  v613[3] = &unk_2783C2CF0;
  v324 = v321;
  v614 = v324;
  v325 = _SBCallDescriptionBlockForEachShelf(v324, v613);
  v326 = NSStringFromSelector(sel_containerLeafAppLayoutForShelf_);
  [obj setObject:v325 forKey:v326];

  v611[0] = MEMORY[0x277D85DD0];
  v611[1] = 3221225472;
  v611[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_107;
  v611[3] = &unk_2783C2CF0;
  v327 = v324;
  v612 = v327;
  v328 = _SBCallDescriptionBlockForEachShelf(v327, v611);
  v329 = NSStringFromSelector(sel_frameForShelf_);
  [obj setObject:v328 forKey:v329];

  v609[0] = MEMORY[0x277D85DD0];
  v609[1] = 3221225472;
  v609[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_108;
  v609[3] = &unk_2783C2CF0;
  v330 = v327;
  v610 = v330;
  v331 = _SBCallDescriptionBlockForEachShelf(v330, v609);
  v332 = NSStringFromSelector(sel_presentationAttributesForShelf_);
  [obj setObject:v331 forKey:v332];

  v607[0] = MEMORY[0x277D85DD0];
  v607[1] = 3221225472;
  v607[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_109;
  v607[3] = &unk_2783C2CF0;
  v333 = v330;
  v608 = v333;
  v334 = _SBCallDescriptionBlockForEachShelf(v333, v607);
  v335 = NSStringFromSelector(sel_focusedAppLayoutForShelf_);
  [obj setObject:v334 forKey:v335];

  v605[0] = MEMORY[0x277D85DD0];
  v605[1] = 3221225472;
  v605[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_110;
  v605[3] = &unk_2783C2CF0;
  v336 = v333;
  v606 = v336;
  v337 = _SBCallDescriptionBlockForEachShelf(v336, v605);
  v338 = NSStringFromSelector(sel_ignoredDisplayItemsForShelf_);
  [obj setObject:v337 forKey:v338];

  v603[0] = MEMORY[0x277D85DD0];
  v603[1] = 3221225472;
  v603[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_111;
  v603[3] = &unk_2783C2CF0;
  v339 = v336;
  v604 = v339;
  v340 = _SBCallDescriptionBlockForEachShelf(v339, v603);
  v341 = NSStringFromSelector(sel_hiddenAppLayoutsInShelf_);
  [obj setObject:v340 forKey:v341];

  v601[0] = MEMORY[0x277D85DD0];
  v601[1] = 3221225472;
  v601[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_112;
  v601[3] = &unk_2783B1D60;
  v342 = v339;
  v602 = v342;
  v343 = _SBCallDescriptionBlock(v601);
  v344 = NSStringFromSelector(sel_animatablePropertyIdentifiers);
  [obj setObject:v343 forKey:v344];

  v599[0] = MEMORY[0x277D85DD0];
  v599[1] = 3221225472;
  v599[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_113;
  v599[3] = &unk_2783B1D60;
  v345 = v342;
  v600 = v345;
  v346 = _SBCallDescriptionBlock(v599);
  v347 = NSStringFromSelector(sel_appExposeAccessoryButtonsBundleIdentifier);
  [obj setObject:v346 forKey:v347];

  v597[0] = MEMORY[0x277D85DD0];
  v597[1] = 3221225472;
  v597[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_114;
  v597[3] = &unk_2783B1D60;
  v348 = v345;
  v598 = v348;
  v349 = _SBCallDescriptionBlock(v597);
  v350 = NSStringFromSelector(sel_plusButtonAlpha);
  [obj setObject:v349 forKey:v350];

  v595[0] = MEMORY[0x277D85DD0];
  v595[1] = 3221225472;
  v595[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_115;
  v595[3] = &unk_2783B1D60;
  v351 = v348;
  v596 = v351;
  v352 = _SBCallDescriptionBlock(v595);
  v353 = NSStringFromSelector(sel_reopenClosedWindowsButtonAlpha);
  [obj setObject:v352 forKey:v353];

  v593[0] = MEMORY[0x277D85DD0];
  v593[1] = 3221225472;
  v593[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_116;
  v593[3] = &unk_2783B1D60;
  v354 = v351;
  v594 = v354;
  v355 = _SBCallDescriptionBlock(v593);
  v356 = NSStringFromSelector(sel_reopenClosedWindowsButtonScale);
  [obj setObject:v355 forKey:v356];

  v591[0] = MEMORY[0x277D85DD0];
  v591[1] = 3221225472;
  v591[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_117;
  v591[3] = &unk_2783B1D60;
  v357 = v354;
  v592 = v357;
  v358 = _SBCallDescriptionBlock(v591);
  v359 = NSStringFromSelector(sel_appExposeAccessoryButtonsOverrideUserInterfaceStyle);
  [obj setObject:v358 forKey:v359];

  v589[0] = MEMORY[0x277D85DD0];
  v589[1] = 3221225472;
  v589[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_118;
  v589[3] = &unk_2783B1D60;
  v360 = v357;
  v590 = v360;
  v361 = _SBCallDescriptionBlock(v589);
  v362 = NSStringFromSelector(sel_plusButtonStyle);
  [obj setObject:v361 forKey:v362];

  v587[0] = MEMORY[0x277D85DD0];
  v587[1] = 3221225472;
  v587[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_119;
  v587[3] = &unk_2783B1D60;
  v363 = v360;
  v588 = v363;
  v364 = _SBCallDescriptionBlock(v587);
  v365 = NSStringFromSelector(sel_wantsContinuousExposeHoverGesture);
  [obj setObject:v364 forKey:v365];

  v585[0] = MEMORY[0x277D85DD0];
  v585[1] = 3221225472;
  v585[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_120;
  v585[3] = &unk_2783B1D60;
  v366 = v363;
  v586 = v366;
  v367 = _SBCallDescriptionBlock(v585);
  v368 = NSStringFromSelector(sel_isContinuousExposeStripVisible);
  [obj setObject:v367 forKey:v368];

  v583[0] = MEMORY[0x277D85DD0];
  v583[1] = 3221225472;
  v583[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_121;
  v583[3] = &unk_2783B1D60;
  v369 = v366;
  v584 = v369;
  v370 = _SBCallDescriptionBlock(v583);
  v371 = NSStringFromSelector(sel_wantsContinuousExposeHoverGesture);
  [obj setObject:v370 forKey:v371];

  v581[0] = MEMORY[0x277D85DD0];
  v581[1] = 3221225472;
  v581[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_122;
  v581[3] = &unk_2783B1D60;
  v372 = v369;
  v582 = v372;
  v373 = _SBCallDescriptionBlock(v581);
  v374 = NSStringFromSelector(sel_continuousExposeStripTongueAttributes);
  [obj setObject:v373 forKey:v374];

  objc_storeStrong((v508 + 24), obj);
  v375 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v376 = objc_alloc_init(MEMORY[0x277CBEB18]);
  baseClassForQueryProtocol = [objc_opt_class() baseClassForQueryProtocol];
  outCount[0] = 0;
  v378 = +[(SBSwitcherModifierBase *)SBSwitcherModifier];
  if (v378)
  {
    v379 = v378;
    v380 = &selRef_refreshContextMenuForIconView_;
    while (1)
    {
      pc = v379;
      if (protocol_isEqual(v379, v380[174]))
      {
        break;
      }

      v381 = protocol_copyMethodDescriptionList(pc, 1, 1, outCount);
      v382 = v381;
      if (outCount[0])
      {
        v383 = 0;
        v384 = v381;
        do
        {
          name = v384->name;
          v386 = [objc_opt_class() instanceMethodForSelector:v384->name];
          v387 = [baseClassForQueryProtocol instanceMethodForSelector:name];
          v388 = NSStringFromSelector(name);
          if (v386 == v387 || v386 == 0)
          {
            v390 = v376;
          }

          else
          {
            v390 = v375;
          }

          [v390 addObject:v388];

          ++v383;
          ++v384;
        }

        while (v383 < outCount[0]);
      }

      free(v382);
      v580 = 0;
      v391 = protocol_copyProtocolList(pc, &v580);
      if (!v580)
      {

        goto LABEL_28;
      }

      v392 = v391;
      if (v580 != 1)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:v506 object:v508 file:@"SBSwitcherModifierTimelineEntry.m" lineNumber:843 description:@"Multiple sub protocols not currently supported"];
      }

      v393 = *v392;

      free(v392);
      v379 = v393;
      v380 = &selRef_refreshContextMenuForIconView_;
      if (!v393)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_28:
    pc = 0;
  }

  [v375 sortUsingSelector:?];
  [v376 sortUsingSelector:sel_compare_];
  v395 = *(v508 + 8);
  *(v508 + 8) = v375;
  v505 = v375;

  v396 = *(v508 + 16);
  *(v508 + 16) = v376;
  v504 = v376;

  v397 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v578[0] = MEMORY[0x277D85DD0];
  v578[1] = 3221225472;
  v578[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_123;
  v578[3] = &unk_2783B1D60;
  v398 = v372;
  v579 = v398;
  v399 = _SBCallDescriptionBlock(v578);
  v400 = NSStringFromSelector(sel_appLayouts);
  [v397 setObject:v399 forKey:v400];

  v576[0] = MEMORY[0x277D85DD0];
  v576[1] = 3221225472;
  v576[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_124;
  v576[3] = &unk_2783B1D60;
  v401 = v398;
  v577 = v401;
  v402 = _SBCallDescriptionBlock(v576);
  v403 = NSStringFromSelector(sel_appLayoutsGenerationCount);
  [v397 setObject:v402 forKey:v403];

  v574[0] = MEMORY[0x277D85DD0];
  v574[1] = 3221225472;
  v574[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_125;
  v574[3] = &unk_2783B1D60;
  v404 = v401;
  v575 = v404;
  v405 = _SBCallDescriptionBlock(v574);
  v406 = NSStringFromSelector(sel_continuousExposeIdentifiersInStrip);
  [v397 setObject:v405 forKey:v406];

  v572[0] = MEMORY[0x277D85DD0];
  v572[1] = 3221225472;
  v572[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_126;
  v572[3] = &unk_2783B1D60;
  v407 = v404;
  v573 = v407;
  v408 = _SBCallDescriptionBlock(v572);
  v409 = NSStringFromSelector(sel_continuousExposeIdentifiersInSwitcher);
  [v397 setObject:v408 forKey:v409];

  v570[0] = MEMORY[0x277D85DD0];
  v570[1] = 3221225472;
  v570[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_127;
  v570[3] = &unk_2783B1D60;
  v410 = v407;
  v571 = v410;
  v411 = _SBCallDescriptionBlock(v570);
  v412 = NSStringFromSelector(sel_containerViewBounds);
  [v397 setObject:v411 forKey:v412];

  v568[0] = MEMORY[0x277D85DD0];
  v568[1] = 3221225472;
  v568[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_128;
  v568[3] = &unk_2783B1D60;
  v413 = v410;
  v569 = v413;
  v414 = _SBCallDescriptionBlock(v568);
  v415 = NSStringFromSelector(sel_switcherViewBounds);
  [v397 setObject:v414 forKey:v415];

  v566[0] = MEMORY[0x277D85DD0];
  v566[1] = 3221225472;
  v566[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_129;
  v566[3] = &unk_2783B1D60;
  v416 = v413;
  v567 = v416;
  v417 = _SBCallDescriptionBlock(v566);
  v418 = NSStringFromSelector(sel_isDevicePad);
  [v397 setObject:v417 forKey:v418];

  v564[0] = MEMORY[0x277D85DD0];
  v564[1] = 3221225472;
  v564[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_130;
  v564[3] = &unk_2783B1D60;
  v419 = v416;
  v565 = v419;
  v420 = _SBCallDescriptionBlock(v564);
  v421 = NSStringFromSelector(sel_hasHomeButton);
  [v397 setObject:v420 forKey:v421];

  v562[0] = MEMORY[0x277D85DD0];
  v562[1] = 3221225472;
  v562[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_131;
  v562[3] = &unk_2783B1D60;
  v422 = v419;
  v563 = v422;
  v423 = _SBCallDescriptionBlock(v562);
  v424 = NSStringFromSelector(sel_isReduceMotionEnabled);
  [v397 setObject:v423 forKey:v424];

  v560[0] = MEMORY[0x277D85DD0];
  v560[1] = 3221225472;
  v560[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_132;
  v560[3] = &unk_2783B1D60;
  v425 = v422;
  v561 = v425;
  v426 = _SBCallDescriptionBlock(v560);
  v427 = NSStringFromSelector(sel_isRTLEnabled);
  [v397 setObject:v426 forKey:v427];

  v558[0] = MEMORY[0x277D85DD0];
  v558[1] = 3221225472;
  v558[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_133;
  v558[3] = &unk_2783B1D60;
  v428 = v425;
  v559 = v428;
  v429 = _SBCallDescriptionBlock(v558);
  v430 = NSStringFromSelector(sel_isFloatingDockSupported);
  [v397 setObject:v429 forKey:v430];

  v556[0] = MEMORY[0x277D85DD0];
  v556[1] = 3221225472;
  v556[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_134;
  v556[3] = &unk_2783B1D60;
  v431 = v428;
  v557 = v431;
  v432 = _SBCallDescriptionBlock(v556);
  v433 = NSStringFromSelector(sel_isStudyLogEnabled);
  [v397 setObject:v432 forKey:v433];

  v554[0] = MEMORY[0x277D85DD0];
  v554[1] = 3221225472;
  v554[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_135;
  v554[3] = &unk_2783B1D60;
  v434 = v431;
  v555 = v434;
  v435 = _SBCallDescriptionBlock(v554);
  v436 = NSStringFromSelector(sel_isMedusaCapable);
  [v397 setObject:v435 forKey:v436];

  v552[0] = MEMORY[0x277D85DD0];
  v552[1] = 3221225472;
  v552[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_136;
  v552[3] = &unk_2783B1D60;
  v437 = v434;
  v553 = v437;
  v438 = _SBCallDescriptionBlock(v552);
  v439 = NSStringFromSelector(sel_isSplitViewSupported);
  [v397 setObject:v438 forKey:v439];

  v550[0] = MEMORY[0x277D85DD0];
  v550[1] = 3221225472;
  v550[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_137;
  v550[3] = &unk_2783B1D60;
  v440 = v437;
  v551 = v440;
  v441 = _SBCallDescriptionBlock(v550);
  v442 = NSStringFromSelector(sel_isInMedusaCapableSpace);
  [v397 setObject:v441 forKey:v442];

  v548[0] = MEMORY[0x277D85DD0];
  v548[1] = 3221225472;
  v548[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_138;
  v548[3] = &unk_2783B1D60;
  v443 = v440;
  v549 = v443;
  v444 = _SBCallDescriptionBlock(v548);
  v445 = NSStringFromSelector(sel_prefersStripHidden);
  [v397 setObject:v444 forKey:v445];

  v546[0] = MEMORY[0x277D85DD0];
  v546[1] = 3221225472;
  v546[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_139;
  v546[3] = &unk_2783B1D60;
  v446 = v443;
  v547 = v446;
  v447 = _SBCallDescriptionBlock(v546);
  v448 = NSStringFromSelector(sel_prefersDockHidden);
  [v397 setObject:v447 forKey:v448];

  v544[0] = MEMORY[0x277D85DD0];
  v544[1] = 3221225472;
  v544[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_140;
  v544[3] = &unk_2783B1D60;
  v449 = v446;
  v545 = v449;
  v450 = _SBCallDescriptionBlock(v544);
  v451 = NSStringFromSelector(sel_isSoftwareKeyboardVisible);
  [v397 setObject:v450 forKey:v451];

  v542[0] = MEMORY[0x277D85DD0];
  v542[1] = 3221225472;
  v542[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_141;
  v542[3] = &unk_2783B1D60;
  v452 = v449;
  v543 = v452;
  v453 = _SBCallDescriptionBlock(v542);
  v454 = NSStringFromSelector(sel_isDisplayEmbedded);
  [v397 setObject:v453 forKey:v454];

  v540[0] = MEMORY[0x277D85DD0];
  v540[1] = 3221225472;
  v540[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_142;
  v540[3] = &unk_2783C2C80;
  v455 = v452;
  v541 = v455;
  v456 = _SBCallDescriptionBlockForEachVisibleAppLayout(v455, v540);
  v457 = NSStringFromSelector(sel_appLayoutContainsOnlyResizableApps_);
  [v397 setObject:v456 forKey:v457];

  v538[0] = MEMORY[0x277D85DD0];
  v538[1] = 3221225472;
  v538[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_143;
  v538[3] = &unk_2783C2C80;
  v458 = v455;
  v539 = v458;
  v459 = _SBCallDescriptionBlockForEachVisibleAppLayout(v458, v538);
  v460 = NSStringFromSelector(sel_appLayoutContainsAnUnoccludedMaximizedDisplayItem_);
  [v397 setObject:v459 forKey:v460];

  v536[0] = MEMORY[0x277D85DD0];
  v536[1] = 3221225472;
  v536[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_144;
  v536[3] = &unk_2783C2C80;
  v461 = v458;
  v537 = v461;
  v462 = _SBCallDescriptionBlockForEachVisibleAppLayout(v461, v536);
  v463 = NSStringFromSelector(sel_homeScreenIconFrameForAppLayout_);
  [v397 setObject:v462 forKey:v463];

  v534[0] = MEMORY[0x277D85DD0];
  v534[1] = 3221225472;
  v534[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_145;
  v534[3] = &unk_2783C2C80;
  v464 = v461;
  v535 = v464;
  v465 = _SBCallDescriptionBlockForEachVisibleAppLayout(v464, v534);
  v466 = NSStringFromSelector(sel_homeScreenIconScaleForAppLayout_);
  [v397 setObject:v465 forKey:v466];

  v532[0] = MEMORY[0x277D85DD0];
  v532[1] = 3221225472;
  v532[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_146;
  v532[3] = &unk_2783C2C80;
  v467 = v464;
  v533 = v467;
  v468 = _SBCallDescriptionBlockForEachVisibleAppLayout(v467, v532);
  v469 = NSStringFromSelector(sel_homeScreenIconCornerRadiusForAppLayout_);
  [v397 setObject:v468 forKey:v469];

  v530[0] = MEMORY[0x277D85DD0];
  v530[1] = 3221225472;
  v530[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_147;
  v530[3] = &unk_2783C2C80;
  v470 = v467;
  v531 = v470;
  v471 = _SBCallDescriptionBlockForEachVisibleAppLayout(v470, v530);
  v472 = NSStringFromSelector(sel_homeScreenIconLocationForAppLayout_);
  [v397 setObject:v471 forKey:v472];

  v528[0] = MEMORY[0x277D85DD0];
  v528[1] = 3221225472;
  v528[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_148;
  v528[3] = &unk_2783C2C80;
  v473 = v470;
  v529 = v473;
  v474 = _SBCallDescriptionBlockForEachVisibleAppLayout(v473, v528);
  v475 = NSStringFromSelector(sel_homeScreenIconGridSizeClassForAppLayout_);
  [v397 setObject:v474 forKey:v475];

  v526[0] = MEMORY[0x277D85DD0];
  v526[1] = 3221225472;
  v526[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_149;
  v526[3] = &unk_2783C2C80;
  v476 = v473;
  v527 = v476;
  v477 = _SBCallDescriptionBlockForEachVisibleAppLayout(v476, v526);
  v478 = NSStringFromSelector(sel_itemContainerForAppLayoutOverlapsFloatingDock_);
  [v397 setObject:v477 forKey:v478];

  v524[0] = MEMORY[0x277D85DD0];
  v524[1] = 3221225472;
  v524[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_150;
  v524[3] = &unk_2783B1D60;
  v479 = v476;
  v525 = v479;
  v480 = _SBCallDescriptionBlock(v524);
  v481 = NSStringFromSelector(sel_keyboardFocusedAppLayout);
  [v397 setObject:v480 forKey:v481];

  v522[0] = MEMORY[0x277D85DD0];
  v522[1] = 3221225472;
  v522[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_151;
  v522[3] = &unk_2783B1D60;
  v482 = v479;
  v523 = v482;
  v483 = _SBCallDescriptionBlock(v522);
  v484 = NSStringFromSelector(sel_leafAppLayoutForKeyboardFocusedScene);
  [v397 setObject:v483 forKey:v484];

  v520[0] = MEMORY[0x277D85DD0];
  v520[1] = 3221225472;
  v520[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_152;
  v520[3] = &unk_2783B1D60;
  v485 = v482;
  v521 = v485;
  v486 = _SBCallDescriptionBlock(v520);
  v487 = NSStringFromSelector(sel_shelfFocusedDisplayItems);
  [v397 setObject:v486 forKey:v487];

  v518[0] = MEMORY[0x277D85DD0];
  v518[1] = 3221225472;
  v518[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_153;
  v518[3] = &unk_2783B1D60;
  v488 = v485;
  v519 = v488;
  v489 = _SBCallDescriptionBlock(v518);
  v490 = NSStringFromSelector(sel_userInterfaceStyle);
  [v397 setObject:v489 forKey:v490];

  v516[0] = MEMORY[0x277D85DD0];
  v516[1] = 3221225472;
  v516[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_154;
  v516[3] = &unk_2783B1D60;
  v491 = v488;
  v517 = v491;
  v492 = _SBCallDescriptionBlock(v516);
  v493 = NSStringFromSelector(sel_draggingAppLayoutsForWindowDrag);
  [v397 setObject:v492 forKey:v493];

  v514[0] = MEMORY[0x277D85DD0];
  v514[1] = 3221225472;
  v514[2] = __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_155;
  v514[3] = &unk_2783B1D60;
  v515 = v491;
  v494 = v491;
  v495 = _SBCallDescriptionBlock(v514);
  v496 = NSStringFromSelector(sel_proposedAppLayoutsForWindowDrag);
  [v397 setObject:v495 forKey:v496];

  v497 = _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout(v494, sel_isLayoutRoleContentReady_inAppLayout_, &__block_literal_global_536_0);
  v498 = NSStringFromSelector(sel_isLayoutRoleContentReady_inAppLayout_);
  [v397 setObject:v497 forKey:v498];

  v499 = *(v508 + 40);
  *(v508 + 40) = v397;
  v500 = v397;

  allKeys = [v500 allKeys];
  v502 = [allKeys sortedArrayUsingSelector:sel_compare_];
  v503 = *(v508 + 32);
  *(v508 + 32) = v502;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) visibleAppLayouts];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) foregroundAppLayouts];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) activityModeForAppLayout:a2];

  return NSStringFromFBSSceneActivityMode();
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCAE60];
  [*(a1 + 32) frameForIndex:a2];
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = [v2 valueWithBytes:v10 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v8 = [v7 description];

  return v8;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 32) scaleForIndex:a2];
  v3 = [v2 numberWithDouble:?];
  v4 = [v3 description];

  return v4;
}

NSString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_6(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) anchorPointForIndex:a2];

  return NSStringFromCGPoint(*&v2);
}

NSString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_7(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) perspectiveAngleForIndex:a2];

  return NSStringFromCGPoint(*&v2);
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) shouldPinLayoutRolesToSpace:a2];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_9(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) shouldUseAnchorPointToPinLayoutRolesToSpace:a2];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_10(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) clipsToUnobscuredMarginAtIndex:a2];

  return NSStringFromBOOL();
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_11(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 32) visibleMarginForItemContainerAtIndex:a2];
  v3 = [v2 numberWithDouble:?];
  v4 = [v3 description];

  return v4;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_12(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 32) wallpaperOverlayAlphaForIndex:a2];
  v3 = [v2 numberWithDouble:?];
  v4 = [v3 description];

  return v4;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_13(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 32) lighteningAlphaForIndex:a2];
  v3 = [v2 numberWithDouble:?];
  v4 = [v3 description];

  return v4;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_14(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "headerStyleForIndex:", a2)}];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_15(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 32) titleOpacityForIndex:a2];
  v3 = [v2 numberWithDouble:?];
  v4 = [v3 description];

  return v4;
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_16(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) isContentStatusBarVisibleForIndex:a2];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_17(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) shouldUseBrightMaterialForIndex:a2];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_18(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) cornerRadiiForIndex:a2];

  return MEMORY[0x2821CD940](v2);
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_19(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) maskedCornersForIndex:a2];

  return MEMORY[0x2821CD938](v2);
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_20(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isIndexRubberbandableForSwipeToKill:", a2)}];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_21(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 32) minimumTranslationToKillIndex:a2];
  v3 = [v2 numberWithDouble:?];
  v4 = [v3 description];

  return v4;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_22(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 32) backgroundOpacityForIndex:a2];
  v3 = [v2 numberWithDouble:?];
  v4 = [v3 description];

  return v4;
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_23(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) clipsToBoundsAtIndex:a2];

  return NSStringFromBOOL();
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_24(uint64_t a1, void *a2)
{
  v6 = 0u;
  v7 = 0u;
  [a2 getReturnValue:&v6];
  v5[0] = v6;
  v5[1] = v7;
  v2 = [MEMORY[0x277CCAE60] valueWithBytes:v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_25(uint64_t a1, void *a2)
{
  v6 = 0u;
  v7 = 0u;
  [a2 getReturnValue:&v6];
  v5[0] = v6;
  v5[1] = v7;
  v2 = [MEMORY[0x277CCAE60] valueWithBytes:v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_26(uint64_t a1, void *a2)
{
  v5 = 0.0;
  [a2 getReturnValue:&v5];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_27(uint64_t a1, void *a2)
{
  v5 = 0.0;
  [a2 getReturnValue:&v5];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_28(uint64_t a1, void *a2)
{
  v5 = 0;
  [a2 getReturnValue:&v5];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_29(uint64_t a1, void *a2)
{
  v5 = 0.0;
  [a2 getReturnValue:&v5];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_30(uint64_t a1, void *a2)
{
  v4 = 0;
  [a2 getReturnValue:&v4];
  v2 = SBStringForBlurTargetPreference(v4);

  return v2;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_31(uint64_t a1, void *a2)
{
  v5 = 0.0;
  [a2 getReturnValue:&v5];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_32(uint64_t a1, void *a2)
{
  v5 = 0;
  [a2 getReturnValue:&v5];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_33(uint64_t a1, void *a2)
{
  v5 = 0;
  [a2 getReturnValue:&v5];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_34(uint64_t a1, void *a2)
{
  v5 = 0;
  [a2 getReturnValue:&v5];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_35(uint64_t a1, void *a2)
{
  v5 = 0;
  [a2 getReturnValue:&v5];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_36(uint64_t a1, void *a2)
{
  v5 = 0;
  [a2 getReturnValue:&v5];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_37(uint64_t a1, void *a2)
{
  v5 = 0;
  [a2 getReturnValue:&v5];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_38(uint64_t a1, void *a2)
{
  v5 = 0;
  [a2 getReturnValue:&v5];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_39(uint64_t a1, void *a2)
{
  v5 = 0;
  [a2 getReturnValue:&v5];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_40(uint64_t a1, void *a2)
{
  v5 = 0;
  [a2 getReturnValue:&v5];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_41(uint64_t a1, void *a2)
{
  v5 = 0.0;
  [a2 getReturnValue:&v5];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_42(uint64_t a1, void *a2)
{
  v5 = 0;
  [a2 getReturnValue:&v5];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_43(uint64_t a1, void *a2)
{
  v6 = 0u;
  v7 = 0u;
  [a2 getReturnValue:&v6];
  v5[0] = v6;
  v5[1] = v7;
  v2 = [MEMORY[0x277CCAE60] valueWithBytes:v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_44(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) animationAttributesForLayoutElement:a2];
  v3 = [v2 sb_switcherModifierDebugTimelineDescription];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_45(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCAE60];
  [*(a1 + 32) frameForIconOverlayInAppLayout:a2];
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = [v2 valueWithBytes:v10 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v8 = [v7 description];

  return v8;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_46(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isFocusEnabledForAppLayout:", a2)}];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_47(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) multipleWindowsIndicatorLayoutRolesForAppLayout:a2];
  v3 = [v2 sb_switcherModifierDebugTimelineDescription];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_48(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "preferredSnapshotOrientationForAppLayout:", a2)}];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_49(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "wantsSceneResizesHostedContextForAppLayout:", a2)}];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_50(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "canSelectLeafWithModifierKeysInAppLayout:", a2)}];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_51(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "shouldAllowGroupOpacityForAppLayout:", a2)}];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_52(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) asyncRenderingAttributesForAppLayout:a2];

  return SBStringForSwitcherAsyncRenderingAttributes();
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_53(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) contentViewScale];
  v2 = [v1 numberWithDouble:?];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_54(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) homeScreenAlpha];
  v2 = [v1 numberWithDouble:?];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_55(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) homeScreenBackdropBlurProgress];
  v2 = [v1 numberWithDouble:?];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_56(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) homeScreenScale];
  v2 = [v1 numberWithDouble:?];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_57(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) wallpaperScale];
  v2 = [v1 numberWithDouble:?];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_58(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) homeScreenDimmingAlpha];
  v2 = [v1 numberWithDouble:?];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_59(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) containerStatusBarAnimationDuration];
  v2 = [v1 numberWithDouble:?];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_60(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "hiddenContainerStatusBarParts")}];
  v2 = [v1 description];

  return v2;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_61(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) dockProgress];
  v2 = [v1 numberWithDouble:?];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_62(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "dockWindowLevelPriority")}];
  v2 = [v1 description];

  return v2;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_63(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) dockWindowLevel];
  v2 = [v1 numberWithDouble:?];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_64(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) shelfBackgroundBlurOpacity];
  v2 = [v1 numberWithDouble:?];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_65(uint64_t a1)
{
  v1 = MEMORY[0x277CCAE60];
  [*(a1 + 32) shelfBackgroundBlurFrame];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [v1 valueWithBytes:v9 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v7 = [v6 description];

  return v7;
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_66(uint64_t a1)
{
  [*(a1 + 32) wantsSlideOverTongue];

  return NSStringFromBOOL();
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_67(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "slideOverTongueState")}];
  v2 = [v1 description];

  return v2;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_68(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "slideOverTongueDirection")}];
  v2 = [v1 description];

  return v2;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_69(uint64_t a1)
{
  v1 = [*(a1 + 32) appLayoutToAttachSlideOverTongue];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_70(uint64_t a1)
{
  [*(a1 + 32) isScrollEnabled];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_71(uint64_t a1)
{
  [*(a1 + 32) shouldScrollViewBlockTouches];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_72(uint64_t a1)
{
  [*(a1 + 32) isContainerStatusBarVisible];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_73(uint64_t a1)
{
  [*(a1 + 32) wantsMenuBar];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_74(uint64_t a1)
{
  [*(a1 + 32) isWallpaperRequiredForSwitcher];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_75(uint64_t a1)
{
  [*(a1 + 32) isHomeScreenContentRequired];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_76(uint64_t a1)
{
  [*(a1 + 32) isSwitcherWindowVisible];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_77(uint64_t a1)
{
  [*(a1 + 32) isSwitcherWindowUserInteractionEnabled];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_78(uint64_t a1)
{
  [*(a1 + 32) shouldAcceleratedHomeButtonPressBegin];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_79(uint64_t a1)
{
  [*(a1 + 32) shouldFireTransitionCompletionInDefaultRunLoopMode];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_80(uint64_t a1)
{
  [*(a1 + 32) wantsDockBehaviorAssertion];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_81(uint64_t a1)
{
  [*(a1 + 32) wantsDockWindowLevelAssertion];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_82(uint64_t a1)
{
  [*(a1 + 32) wantsAsynchronousSurfaceRetentionAssertion];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_83(uint64_t a1)
{
  [*(a1 + 32) isItemContainerPointerInteractionEnabled];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_84(uint64_t a1)
{
  [*(a1 + 32) shouldRubberbandFullScreenHomeGrabberView];

  return NSStringFromBOOL();
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_85(uint64_t a1)
{
  v1 = [*(a1 + 32) wallpaperStyle];

  return SBStringForSwitcherWallpaperStyle(v1);
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_86(uint64_t a1)
{
  v1 = [*(a1 + 32) homeScreenBackdropBlurType];

  return SBStringForSwitcherHomeScreenBackdropBlurType(v1);
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_87(uint64_t a1)
{
  [*(a1 + 32) dockUpdateMode];

  return SBStringFromAnimationUpdateMode();
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_88(uint64_t a1)
{
  v1 = [*(a1 + 32) appLayoutToScrollToBeforeTransitioning];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_89(uint64_t a1)
{
  v1 = [*(a1 + 32) appLayoutToScrollToBeforeReopeningClosedWindows];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_90(uint64_t a1)
{
  v1 = [*(a1 + 32) topMostLayoutElements];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_91(uint64_t a1)
{
  v1 = [*(a1 + 32) appLayoutsToCacheSnapshots];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_92(uint64_t a1)
{
  v1 = [*(a1 + 32) appLayoutsToCacheFullsizeSnapshots];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_93(uint64_t a1)
{
  v1 = [*(a1 + 32) appLayoutsToResignActive];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_94(uint64_t a1)
{
  v1 = [*(a1 + 32) keyboardSuppressionMode];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_95(uint64_t a1)
{
  v1 = [*(a1 + 32) keyboardFocusedAppLayout];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_96(uint64_t a1)
{
  v1 = [*(a1 + 32) leafAppLayoutForKeyboardFocusedScene];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_97(uint64_t a1)
{
  v1 = [*(a1 + 32) shelfFocusedDisplayItems];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_98(uint64_t a1)
{
  v1 = [*(a1 + 32) activeLeafAppLayoutsReachableByKeyboardShortcut];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_99(uint64_t a1)
{
  v1 = [*(a1 + 32) inactiveAppLayoutsReachableByKeyboardShortcut];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_100(uint64_t a1)
{
  v1 = [*(a1 + 32) destinationAppLayoutForDismissingCurrentMode];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_101(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isHomeAffordanceSupportedForAppLayout:", a2)}];
  v3 = [v2 description];

  return v3;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_102(uint64_t a1)
{
  v1 = [*(a1 + 32) visibleHomeAffordanceLayoutElements];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_103(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "shouldAccessoryDrawShadowForAppLayout:", a2)}];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_104(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isResizeGrabberVisibleForAppLayout:", a2)}];
  v3 = [v2 description];

  return v3;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_105(uint64_t a1)
{
  v1 = [*(a1 + 32) visibleShelves];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_106(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) containerLeafAppLayoutForShelf:a2];
  v3 = [v2 sb_switcherModifierDebugTimelineDescription];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_107(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCAE60];
  [*(a1 + 32) frameForShelf:a2];
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = [v2 valueWithBytes:v10 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v8 = [v7 description];

  return v8;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 presentationAttributesForShelf:a2];
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
  }

  v3 = SBStringForSwitcherShelfPresentationAttributes(v5);

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_109(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) focusedAppLayoutForShelf:a2];
  v3 = [v2 sb_switcherModifierDebugTimelineDescription];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_110(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) ignoredDisplayItemsForShelf:a2];
  v3 = [v2 sb_switcherModifierDebugTimelineDescription];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_111(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) hiddenAppLayoutsInShelf:a2];
  v3 = [v2 sb_switcherModifierDebugTimelineDescription];

  return v3;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_112(uint64_t a1)
{
  v1 = [*(a1 + 32) animatablePropertyIdentifiers];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_113(uint64_t a1)
{
  v1 = [*(a1 + 32) appExposeAccessoryButtonsBundleIdentifier];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_114(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) plusButtonAlpha];
  v2 = [v1 numberWithDouble:?];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_115(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) reopenClosedWindowsButtonAlpha];
  v2 = [v1 numberWithDouble:?];
  v3 = [v2 description];

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_116(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) reopenClosedWindowsButtonScale];
  v2 = [v1 numberWithDouble:?];
  v3 = [v2 description];

  return v3;
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_117(uint64_t a1)
{
  [*(a1 + 32) appExposeAccessoryButtonsOverrideUserInterfaceStyle];

  return SBFStringForUIUserInterfaceStyle();
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_118(uint64_t a1)
{
  v1 = [*(a1 + 32) plusButtonStyle];

  return SBStringFromSwitcherPlusButtonStyle(v1);
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_119(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "wantsContinuousExposeHoverGesture")}];
  v2 = [v1 description];

  return v2;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_120(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isContinuousExposeStripVisible")}];
  v2 = [v1 description];

  return v2;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_121(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "wantsContinuousExposeHoverGesture")}];
  v2 = [v1 description];

  return v2;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_122(uint64_t a1)
{
  v1 = [*(a1 + 32) continuousExposeStripTongueAttributes];

  return SBSwitcherContinuousExposeStripTongueAttributesDescription(v1, v2);
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_123(uint64_t a1)
{
  v1 = [*(a1 + 32) appLayouts];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_124(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "appLayoutsGenerationCount")}];
  v2 = [v1 description];

  return v2;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_125(uint64_t a1)
{
  v1 = [*(a1 + 32) continuousExposeIdentifiersInStrip];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_126(uint64_t a1)
{
  v1 = [*(a1 + 32) continuousExposeIdentifiersInSwitcher];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_127(uint64_t a1)
{
  v1 = MEMORY[0x277CCAE60];
  [*(a1 + 32) containerViewBounds];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [v1 valueWithBytes:v9 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v7 = [v6 description];

  return v7;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_128(uint64_t a1)
{
  v1 = MEMORY[0x277CCAE60];
  [*(a1 + 32) switcherViewBounds];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [v1 valueWithBytes:v9 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v7 = [v6 description];

  return v7;
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_129(uint64_t a1)
{
  [*(a1 + 32) isDevicePad];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_130(uint64_t a1)
{
  [*(a1 + 32) hasHomeButton];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_131(uint64_t a1)
{
  [*(a1 + 32) isReduceMotionEnabled];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_132(uint64_t a1)
{
  [*(a1 + 32) isRTLEnabled];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_133(uint64_t a1)
{
  [*(a1 + 32) isFloatingDockSupported];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_134(uint64_t a1)
{
  [*(a1 + 32) isStudyLogEnabled];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_135(uint64_t a1)
{
  [*(a1 + 32) isMedusaCapable];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_136(uint64_t a1)
{
  [*(a1 + 32) isSplitViewSupported];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_137(uint64_t a1)
{
  [*(a1 + 32) isInMedusaCapableSpace];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_138(uint64_t a1)
{
  [*(a1 + 32) prefersStripHidden];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_139(uint64_t a1)
{
  [*(a1 + 32) prefersDockHidden];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_140(uint64_t a1)
{
  [*(a1 + 32) isSoftwareKeyboardVisible];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_141(uint64_t a1)
{
  [*(a1 + 32) isDisplayEmbedded];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_142(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appLayoutContainsOnlyResizableApps:a2];

  return NSStringFromBOOL();
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_143(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appLayoutContainsAnUnoccludedMaximizedDisplayItem:a2];

  return NSStringFromBOOL();
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_144(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCAE60];
  [*(a1 + 32) homeScreenIconFrameForAppLayout:a2];
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = [v2 valueWithBytes:v10 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v8 = [v7 description];

  return v8;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_145(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 32) homeScreenIconScaleForAppLayout:a2];
  v3 = [v2 numberWithDouble:?];
  v4 = [v3 description];

  return v4;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_146(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 32) homeScreenIconCornerRadiusForAppLayout:a2];
  v3 = [v2 numberWithDouble:?];
  v4 = [v3 description];

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_147(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) homeScreenIconLocationForAppLayout:a2];
  v3 = [v2 sb_switcherModifierDebugTimelineDescription];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"nil";
  }

  v6 = v5;

  return v5;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_148(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) homeScreenIconGridSizeClassForAppLayout:a2];
  v3 = SBHStringForIconGridSizeClass();

  return v3;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_149(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "itemContainerForAppLayoutOverlapsFloatingDock:", a2)}];
  v3 = [v2 description];

  return v3;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_150(uint64_t a1)
{
  v1 = [*(a1 + 32) keyboardFocusedAppLayout];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_151(uint64_t a1)
{
  v1 = [*(a1 + 32) leafAppLayoutForKeyboardFocusedScene];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_152(uint64_t a1)
{
  v1 = [*(a1 + 32) shelfFocusedDisplayItems];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

uint64_t __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_153(uint64_t a1)
{
  [*(a1 + 32) userInterfaceStyle];

  return SBFStringForUIUserInterfaceStyle();
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_154(uint64_t a1)
{
  v1 = [*(a1 + 32) draggingAppLayoutsForWindowDrag];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

__CFString *__54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_155(uint64_t a1)
{
  v1 = [*(a1 + 32) proposedAppLayoutsForWindowDrag];
  v2 = [v1 sb_switcherModifierDebugTimelineDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  v5 = v4;

  return v4;
}

id __54__SBSwitcherModifierQuerySnapshot__buildFromModifier___block_invoke_156(uint64_t a1, void *a2)
{
  v5 = 0;
  [a2 getReturnValue:&v5];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v3 = [v2 description];

  return v3;
}

- (void)initWithModifier:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"modifier" object:? file:? lineNumber:? description:?];
}

@end