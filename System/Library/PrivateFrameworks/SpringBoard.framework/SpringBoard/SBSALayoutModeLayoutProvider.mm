@interface SBSALayoutModeLayoutProvider
- (NSString)description;
- (SBSALayoutModeLayoutProvider)initWithLayoutMode:(int64_t)a3;
- (id)defaultTransitionSettings;
- (id)preferencesFromContext:(id)a3;
@end

@implementation SBSALayoutModeLayoutProvider

- (id)defaultTransitionSettings
{
  supportedElementLayoutMode = self->_supportedElementLayoutMode;
  switch(supportedElementLayoutMode)
  {
    case 3:
      v3 = [objc_opt_class() settings];
      v4 = [v3 customInterfaceElementTransitionSettings];
LABEL_7:
      v5 = v4;

      if (v5)
      {
        goto LABEL_9;
      }

      break;
    case 2:
      v3 = [objc_opt_class() settings];
      v4 = [v3 compactInterfaceElementTransitionSettings];
      goto LABEL_7;
    case 1:
      v3 = [objc_opt_class() settings];
      v4 = [v3 minimalInterfaceElementTransitionSettings];
      goto LABEL_7;
  }

  v6 = [objc_opt_class() settings];
  v5 = [v6 defaultInterfaceElementTransitionSettings];

LABEL_9:

  return v5;
}

- (SBSALayoutModeLayoutProvider)initWithLayoutMode:(int64_t)a3
{
  if ((a3 - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    [SBSALayoutModeLayoutProvider initWithLayoutMode:];
  }

  v6.receiver = self;
  v6.super_class = SBSALayoutModeLayoutProvider;
  result = [(SBSABasePreferencesProvider *)&v6 init];
  if (result)
  {
    result->_supportedElementLayoutMode = a3;
  }

  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = SAUIStringFromElementViewLayoutMode();
  v6 = [v3 stringWithFormat:@"<%@: %p supportedElementLayoutMode: %@>", v4, self, v5];;

  return v6;
}

- (id)preferencesFromContext:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      [SBSALayoutModeLayoutProvider preferencesFromContext:];
    }
  }

  else
  {
    v7 = 0;
  }

  v55 = v3;

  v8 = [v7 elementContexts];
  v9 = [v7 preferences];
  v10 = objc_opt_class();
  v11 = v9;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v13 elementDescriptions];
  v60 = [v14 mutableCopy];

  v15 = [v13 containerViewDescriptions];
  v59 = [v15 mutableCopy];

  if (self->_supportedElementLayoutMode == 3)
  {
    v16 = [v8 bs_firstObjectPassingTest:&__block_literal_global_266];
    v17 = SBSABehavesLikeCustom([v16 layoutMode], objc_msgSend(v16, "systemApertureCustomLayout"));
  }

  else
  {
    v17 = 0;
  }

  v58 = v7;
  v57 = v17 & ~self->_performedInitialLayoutIfNecessary & 1;
  self->_performedInitialLayoutIfNecessary = 1;
  if ([v8 count])
  {
    v18 = 0;
    v19 = v59;
    v56 = v8;
    while (1)
    {
      v20 = [v8 objectAtIndex:v18];
      v106 = 0x7FFFFFFFFFFFFFFFLL;
      v21 = SBSAElementDescriptionAssociatedWithElementIdentity(v20, v60, &v106);
      if (!SBSALayoutModeAndCustomLayoutOptionBehavesLikeTargetLayoutMode([v20 layoutMode], objc_msgSend(v20, "systemApertureCustomLayout"), self->_supportedElementLayoutMode))
      {
        [SBSALayoutModeLayoutProvider preferencesFromContext:];
      }

      v62 = v21;
      if ([v19 count] <= v18)
      {
        [(SBSALayoutModeLayoutProvider *)a2 preferencesFromContext:v18, v19];
      }

      v22 = v13;
      v23 = [v19 objectAtIndexedSubscript:v18];
      v61 = [v20 systemApertureCustomLayoutCustomAnimationStyle] == 3;
      v103[0] = 0;
      v103[1] = v103;
      v103[2] = 0x4010000000;
      v103[3] = &unk_21F9DA6A3;
      v104 = 0u;
      v105 = 0u;
      *&v104 = SBSAFrameForElementInCollection(v18, v8, v58);
      *(&v104 + 1) = v24;
      *&v105 = v25;
      *(&v105 + 1) = v26;
      v100[0] = 0;
      v100[1] = v100;
      v100[2] = 0x4010000000;
      v100[3] = &unk_21F9DA6A3;
      v101 = 0u;
      v102 = 0u;
      BSRectWithSize();
      *&v101 = v27;
      *(&v101 + 1) = v28;
      *&v102 = v29;
      *(&v102 + 1) = v30;
      v98[0] = 0;
      v98[1] = v98;
      v98[2] = 0x2020000000;
      v99 = 0;
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_2;
      v91[3] = &unk_2783BD068;
      v97 = a2;
      v91[4] = self;
      v31 = v20;
      v92 = v31;
      v94 = v100;
      v95 = v103;
      v96 = v98;
      v32 = v58;
      v93 = v32;
      v33 = [v23 copyWithBlock:v91];

      v89[0] = 0;
      v89[1] = v89;
      v89[2] = 0x3032000000;
      v89[3] = __Block_byref_object_copy__97;
      v89[4] = __Block_byref_object_dispose__97;
      v90 = 0;
      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v88 = 0;
      [v19 replaceObjectAtIndex:v18 withObject:v33];
      v34 = v22;
      v35 = v62;
      if (v106 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_33;
      }

      v36 = [v32 elementSnapshotContexts];
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_35;
      v83[3] = &unk_2783AD728;
      v37 = v31;
      v84 = v37;
      v38 = [v36 bs_firstObjectPassingTest:v83];

      v39 = [v38 snapshotReason];
      v40 = [v34 elementLayoutTransition];
      v41 = [v40 isSingleElementExpansion];

      v42 = BSEqualStrings();
      v43 = v41 | v42;
      if ((v41 | v42))
      {
        v81[0] = MEMORY[0x277D85DD0];
        v81[1] = 3221225472;
        v81[2] = __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_2_37;
        v81[3] = &unk_2783BD090;
        v82 = v42;
        v81[4] = self;
        v81[5] = v89;
        v81[6] = a2;
        v44 = [v62 copyWithBlock:v81];

        v35 = v44;
      }

      if ([v37 systemApertureLayoutCustomizingOptions])
      {
        v80[0] = MEMORY[0x277D85DD0];
        v80[1] = 3221225472;
        v80[2] = __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_3;
        v80[3] = &unk_2783A93E8;
        v80[4] = self;
        v80[5] = a2;
        v45 = [v35 copyWithBlock:v80];

        *(v86 + 24) = 1;
        v35 = v45;
      }

      else if ((v43 & 1) == 0)
      {
        goto LABEL_32;
      }

      [v60 replaceObjectAtIndex:v106 withObject:v35];
LABEL_32:

LABEL_33:
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_4;
      v71[3] = &unk_2783BD0B8;
      v77 = a2;
      v78 = v61;
      v71[4] = self;
      v74 = v98;
      v46 = v33;
      v72 = v46;
      v75 = v89;
      v79 = v57;
      v47 = v35;
      v73 = v47;
      v76 = &v85;
      v48 = [v34 copyWithBlock:v71];

      _Block_object_dispose(&v85, 8);
      _Block_object_dispose(v89, 8);

      _Block_object_dispose(v98, 8);
      _Block_object_dispose(v100, 8);
      _Block_object_dispose(v103, 8);

      ++v18;
      v8 = v56;
      v13 = v48;
      v19 = v59;
      if (v18 >= [v56 count])
      {
        goto LABEL_36;
      }
    }
  }

  v48 = v13;
  v19 = v59;
LABEL_36:
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_5;
  v66[3] = &unk_2783BD0E0;
  v66[4] = self;
  v67 = v19;
  v68 = v60;
  v69 = a2;
  v70 = v57;
  v49 = v19;
  v50 = v60;
  v51 = [v48 copyWithBlock:v66];

  v52 = [v58 copyByUpdatingPreferences:v51];
  v65.receiver = self;
  v65.super_class = SBSALayoutModeLayoutProvider;
  v53 = [(SBSABasePreferencesProvider *)&v65 preferencesFromContext:v52];

  return v53;
}

void __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_2_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  [v7 setAssociatedSystemApertureElementIdentity:*(a1 + 40)];
  [v7 setBounds:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56)}];
  UIRectGetCenter();
  [v7 setCenter:?];
  memset(&v51, 0, sizeof(v51));
  [v7 contentScale];
  SBSAAffineTransformFromContentScale(&v51, v8, v9);
  v10 = *(*(a1 + 56) + 8);
  v49 = v51;
  CGAffineTransformInvert(&v50, &v49);
  v52 = CGRectApplyAffineTransform(v10[1], &v50);
  [v7 setContentBounds:{v52.origin.x, v52.origin.y, v52.size.width, v52.size.height}];
  UIRectGetCenter();
  [v7 setContentCenter:?];
  if (([*(a1 + 40) systemApertureLayoutCustomizingOptions] & 1) != 0 && objc_msgSend(*(a1 + 32), "supportedElementLayoutMode") == 2)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v11 = v3;
    if (v3)
    {
      v12 = objc_opt_self();
      v13 = v11;
      if (v12)
      {
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (!v15)
      {
        __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_2_cold_2();
      }
    }

    else
    {
      v15 = 0;
    }

    memset(&v50, 0, 32);
    v16 = [objc_opt_class() settings];
    [v16 prominentPillScale];
    v18 = v17;

    [v15 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [v15 center];
    v28 = v27;
    v30 = v29;
    v31 = [objc_opt_class() settings];
    [v31 prominentPillVerticalOffsetProportion];
    SBSAScaledAndClippedFrameByScalingLeadingTrailingViews(&v50.a, *(a1 + 48), v20, v22, v24, v26, v28, v30, v18, v18, v32, v33, v34, v35, v36, v37, v38);
    v39 = *(*(a1 + 64) + 8);
    v39[4] = v40;
    v39[5] = v41;
    v39[6] = v42;
    v39[7] = v43;

    BSRectWithSize();
    v44 = *(*(a1 + 56) + 8);
    v44[4] = v45;
    v44[5] = v46;
    v44[6] = v47;
    v44[7] = v48;
    [v15 setBounds:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56)}];
    UIRectGetCenter();
    [v15 setCenter:?];
    [v15 setContentBounds:{v50.a, v50.b, v50.c, v50.d}];
    UIRectGetCenter();
    [v15 setContentCenter:?];
  }
}

void __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_2_37(uint64_t a1, void *a2)
{
  v11 = a2;
  if (v11)
  {
    v3 = objc_opt_self();
    v4 = v11;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (!v6)
    {
      __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_2_37_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 56))
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [v6 setSnapshotViewBlurProgress:v7];
  if (*(a1 + 56))
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  [v6 setSnapshotViewAlpha:v8];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = @"layoutModeLayoutProvider.snapshotReason.transitionToCustom";

  [v6 setSnapshotReason:*(*(*(a1 + 40) + 8) + 40)];
}

void __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (!v6)
    {
      __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_3_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_opt_class() settings];
  [v7 prominentPillContentScale];
  v9 = v8;

  if (v6)
  {
    [v6 leadingViewTransform];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  CGAffineTransformScale(&v11, &v10, v9, v9);
  [v6 setLeadingViewTransform:&v11];
  if (v6)
  {
    [v6 trailingViewTransform];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  CGAffineTransformScale(&v11, &v10, v9, v9);
  [v6 setTrailingViewTransform:&v11];
  if (v6)
  {
    [v6 minimalViewTransform];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  CGAffineTransformScale(&v11, &v10, v9, v9);
  [v6 setMinimalViewTransform:&v11];
}

void __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v50 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v50;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v3 = v50;
    if (!v7)
    {
      __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_4_cold_1();
      v3 = v50;
    }
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 88) == 1)
  {
    v8 = [objc_opt_class() settings];
    v9 = [v8 jindoBoundsOval];

    v10 = [objc_opt_class() settings];
    v11 = [v10 jindoBoundsOval];
LABEL_14:
    v13 = v11;

    goto LABEL_16;
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v12 = [objc_opt_class() settings];
    v9 = [v12 transitionToProminentPillSettings];

    v10 = [objc_opt_class() settings];
    v11 = [v10 transitionToProminentPillSettings];
    goto LABEL_14;
  }

  v9 = [*(a1 + 32) behaviorSettingsForProperty:@"bounds"];
  v13 = [*(a1 + 32) behaviorSettingsForProperty:@"center"];
LABEL_16:
  v14 = [SBSAInterfaceElementPropertyIdentity alloc];
  v15 = [*(a1 + 40) interfaceElementIdentifier];
  v16 = [(SBSAInterfaceElementPropertyIdentity *)v14 initWithAssociatedInterfaceElementIdentifier:v15 andProperty:@"bounds"];

  v17 = [SBSABasePreferencesProvider newAnimatedTransitionDescriptionWithBehaviorSettings:v9];
  [v7 setAnimatedTransitionDescription:v17 forProperty:v16 withMilestones:0];

  v18 = [SBSAInterfaceElementPropertyIdentity alloc];
  v19 = [*(a1 + 40) interfaceElementIdentifier];
  v20 = [(SBSAInterfaceElementPropertyIdentity *)v18 initWithAssociatedInterfaceElementIdentifier:v19 andProperty:@"center"];

  v21 = [SBSABasePreferencesProvider newAnimatedTransitionDescriptionWithBehaviorSettings:v13];
  [v7 setAnimatedTransitionDescription:v21 forProperty:v20 withMilestones:0];

  v22 = [SBSAInterfaceElementPropertyIdentity alloc];
  v23 = [*(a1 + 40) interfaceElementIdentifier];
  v24 = [(SBSAInterfaceElementPropertyIdentity *)v22 initWithAssociatedInterfaceElementIdentifier:v23 andProperty:@"contentBounds"];
  [v7 associateAnimatedTransitionDescriptionOfProperty:v16 withProperty:v24 withMilestones:0];

  v25 = [SBSAInterfaceElementPropertyIdentity alloc];
  v26 = [*(a1 + 40) interfaceElementIdentifier];
  v27 = [(SBSAInterfaceElementPropertyIdentity *)v25 initWithAssociatedInterfaceElementIdentifier:v26 andProperty:@"contentCenter"];
  [v7 associateAnimatedTransitionDescriptionOfProperty:v20 withProperty:v27 withMilestones:0];

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v49 = v13;
    v28 = v9;
    if (*(a1 + 89))
    {
      v29 = [MEMORY[0x277D65E60] unanimatedBehaviorSettings];
    }

    else
    {
      v30 = [objc_opt_class() settings];
      v31 = [v30 elementContentTransitionSettings];
      v29 = [v31 snapshotBehaviorSettings];
    }

    v32 = [SBSAInterfaceElementPropertyIdentity alloc];
    v33 = [*(a1 + 48) interfaceElementIdentifier];
    v34 = [(SBSAInterfaceElementPropertyIdentity *)v32 initWithAssociatedInterfaceElementIdentifier:v33 andProperty:@"snapshotViewBlurProgress"];

    v35 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v29];
    [v7 setAnimatedTransitionDescription:v35 forProperty:v34 withMilestones:0];

    v36 = [SBSAInterfaceElementPropertyIdentity alloc];
    v37 = [*(a1 + 48) interfaceElementIdentifier];
    v38 = [(SBSAInterfaceElementPropertyIdentity *)v36 initWithAssociatedInterfaceElementIdentifier:v37 andProperty:@"snapshotViewAlpha"];

    v39 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v29];
    [v7 setAnimatedTransitionDescription:v39 forProperty:v38 withMilestones:0];

    v9 = v28;
    v13 = v49;
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v40 = [SBSAInterfaceElementPropertyIdentity alloc];
    v41 = [*(a1 + 48) interfaceElementIdentifier];
    v42 = [(SBSAInterfaceElementPropertyIdentity *)v40 initWithAssociatedInterfaceElementIdentifier:v41 andProperty:@"leadingViewTransform"];

    [v7 associateAnimatedTransitionDescriptionOfProperty:v16 withProperty:v42 withMilestones:0];
    v43 = [SBSAInterfaceElementPropertyIdentity alloc];
    v44 = [*(a1 + 48) interfaceElementIdentifier];
    v45 = [(SBSAInterfaceElementPropertyIdentity *)v43 initWithAssociatedInterfaceElementIdentifier:v44 andProperty:@"trailingViewTransform"];

    [v7 associateAnimatedTransitionDescriptionOfProperty:v16 withProperty:v45 withMilestones:0];
    v46 = [SBSAInterfaceElementPropertyIdentity alloc];
    v47 = [*(a1 + 48) interfaceElementIdentifier];
    v48 = [(SBSAInterfaceElementPropertyIdentity *)v46 initWithAssociatedInterfaceElementIdentifier:v47 andProperty:@"minimalViewTransform"];

    [v7 associateAnimatedTransitionDescriptionOfProperty:v16 withProperty:v48 withMilestones:0];
  }
}

void __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_5(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_5_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  [v7 setContainerViewDescriptions:*(a1 + 40)];
  [v7 setElementDescriptions:*(a1 + 48)];
  if (*(a1 + 64) == 1)
  {
    v8 = [v7 actions];
    v9 = [SBSAPreferencesDidChangeAction alloc];
    v15[0] = @"layoutModeLayoutProvider.updateReason.snapshotRequired";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v11 = [(SBSAPreferencesDidChangeAction *)v9 initWithReasons:v10];

    if (v8)
    {
      v12 = [v8 arrayByAddingObject:v11];
    }

    else
    {
      v14 = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    }

    v13 = v12;
    [v7 setActions:v12];
  }
}

- (void)initWithLayoutMode:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  v2 = SAUIStringFromElementViewLayoutMode();
  [v3 handleFailureInMethod:v1 object:v0 file:@"SBSALayoutModeLayoutProvider.m" lineNumber:44 description:{@"Unsupported layout mode: %@", v2}];
}

- (void)preferencesFromContext:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInMethod:v1 object:v0 file:@"SBSALayoutModeLayoutProvider.m" lineNumber:60 description:{@"Unexpected class – expected '%@', got '%@'", v2, v4}];
}

- (void)preferencesFromContext:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v2 supportedElementLayoutMode];
  v4 = SAUIStringFromElementViewLayoutMode();
  [v3 handleFailureInMethod:v1 object:v2 file:@"SBSALayoutModeLayoutProvider.m" lineNumber:79 description:{@"Layout mode of element context doesn't match supported layout mode ('%@'): %@", v4, v0}];
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBSALayoutModeLayoutProvider.m" lineNumber:80 description:{@"No container view description at index '%lu': %@", a3, a4}];
}

void __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = *(v1 + 80);
  v4 = *v0;
  v5 = NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v2 handleFailureInMethod:v3 object:v4 file:@"SBSALayoutModeLayoutProvider.m" lineNumber:99 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

void __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_2_37_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsaelementdes.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsaelementdes.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __55__SBSALayoutModeLayoutProvider_preferencesFromContext___block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

@end