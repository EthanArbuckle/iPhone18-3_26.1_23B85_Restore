@interface STUIStatusBarVisualProvider
@end

@implementation STUIStatusBarVisualProvider

void __71__STUIStatusBarVisualProvider_Pad_actionable_highlighted_initialPress___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = MEMORY[0x277D75348];
    v3 = a2;
    v4 = [v2 colorWithWhite:0.0 alpha:0.3];
    [v3 setBackgroundColor:?];
  }

  else
  {
    v4 = a2;
    [v4 setBackgroundColor:0];
  }
}

void __71__STUIStatusBarVisualProvider_Pad__updateConstraintsForAvoidanceFrame___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) statusBar];
  [v1 updateWithAnimations:MEMORY[0x277CBEBF8]];
}

void __55__STUIStatusBarVisualProvider_Pad_modeUpdatedFromMode___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) statusBar];
  [v1 updateWithAnimations:MEMORY[0x277CBEBF8]];
}

void __79__STUIStatusBarVisualProvider_LegacyPhone_actionable_highlighted_initialPress___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = MEMORY[0x277D75348];
    v3 = a2;
    v4 = [v2 colorWithWhite:0.0 alpha:0.3];
    [v3 setBackgroundColor:?];
  }

  else
  {
    v4 = a2;
    [v4 setBackgroundColor:0];
  }
}

void __71__STUIStatusBarVisualProvider_LegacyPhone__updateLowerRegionsWithData___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 statusBar];
  v10 = [v5 regionWithIdentifier:v4];

  v6 = [v10 isEnabled];
  if (*(a1 + 48) == 1)
  {
    [v10 enableWithToken:12];
  }

  else
  {
    [v10 disableWithToken:12];
  }

  v7 = *(*(a1 + 40) + 8);
  if (*(v7 + 24))
  {
    v8 = 1;
    v9 = v10;
  }

  else
  {
    v8 = v6 ^ [v10 isEnabled];
    v9 = v10;
    v7 = *(*(a1 + 40) + 8);
  }

  *(v7 + 24) = v8;
}

uint64_t __72__STUIStatusBarVisualProvider_LegacyPhone__updateExpandedTrailingRegion__block_invoke(uint64_t a1)
{
  [*(a1 + 32) expandedBaselineOffset];
  v3 = v2;
  v4 = [*(a1 + 32) statusBar];
  v5 = [v4 regionWithIdentifier:@"expandedLowerLeading"];
  v6 = [v5 displayItems];
  v7 = [v6 count];

  if (v7)
  {
    [*(a1 + 32) dualLineExpandedBaselineOffset];
    v3 = v8;
  }

  result = [*(*(a1 + 32) + 208) constant];
  if (v3 != v10)
  {
    [*(*(a1 + 32) + 208) setConstant:v3];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__STUIStatusBarVisualProvider_LegacyPhone__updateExpandedTrailingRegion__block_invoke_2;
    v11[3] = &unk_279D37F00;
    v11[4] = *(a1 + 32);
    return [MEMORY[0x277D75D18] animateWithDuration:v11 animations:0.25];
  }

  return result;
}

void __72__STUIStatusBarVisualProvider_LegacyPhone__updateExpandedTrailingRegion__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) statusBar];
  [v1 layoutIfNeeded];
}

void __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (CGRectIsNull(*(*(*(a1 + 32) + 8) + 32)) || CGRectIsNull(*(*(*(a1 + 40) + 8) + 32)))
  {
    v7[2](v7, 1);
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 8);
    v19 = *(v9 + 40);
    v20 = *(v9 + 56);
    MinX = CGRectGetMinX(*(*(v8 + 8) + 32));
    v11 = MEMORY[0x277D75D18];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_2;
    v14[3] = &unk_279D38038;
    v15 = v6;
    v16 = MinX;
    v17 = v19;
    v18 = v20;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_3;
    v12[3] = &unk_279D38060;
    v13 = v7;
    [v11 _animateUsingSpringWithTension:0 friction:v14 interactive:v12 animations:100.0 completion:20.0];
  }
}

uint64_t __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);

  return [v6 setAbsoluteFrame:{v2, v3, v4, v5}];
}

uint64_t __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 absoluteFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v4 view];
  v14 = [v13 window];
  if (v14)
  {
    v15 = v14;
    v19.origin.x = v6;
    v19.origin.y = v8;
    v19.size.width = v10;
    v19.size.height = v12;
    v16 = CGRectContainsRect(*(a1 + 40), v19);

    if (v16)
    {
      v17 = *(*(a1 + 32) + 8);
      v17[4] = v6;
      v17[5] = v8;
      v17[6] = v10;
      v17[7] = v12;
    }
  }

  else
  {
  }

  [v4 setFloating:1];

  return 1;
}

void __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ([a2 type] == 1 && (objc_msgSend(v7, "absoluteFrame"), v9 = *(*(a1 + 32) + 8), v9[4] = v10, v9[5] = v11, v9[6] = v12, v9[7] = v13, !CGRectIsNull(*(*(*(a1 + 40) + 8) + 32))))
  {
    v14 = *(*(a1 + 32) + 8);
    [v7 setAbsoluteFrame:{CGRectGetMinX(*(*(*(a1 + 40) + 8) + 32)), v14[5], v14[6], v14[7]}];
    [v7 setAlpha:0.0];
    v15 = MEMORY[0x277D75D18];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_6;
    v23[3] = &unk_279D37FC0;
    v16 = v7;
    v17 = *(a1 + 32);
    v24 = v16;
    v25 = v17;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_7;
    v21[3] = &unk_279D38060;
    v22 = v8;
    [v15 _animateUsingSpringWithTension:0 friction:v23 interactive:v21 animations:100.0 completion:20.0];
    v18 = MEMORY[0x277D75D18];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_8;
    v19[3] = &unk_279D37F00;
    v20 = v16;
    [v18 animateWithDuration:0 delay:v19 options:0 animations:0.2 completion:0.0];
  }

  else
  {
    (*(v8 + 2))(v8, 1);
  }
}

void __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_9(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ([a2 type] == 3)
  {
    [v7 absoluteFrame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v7 identifier];
    v18 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarFullBackgroundActivityItem];
    v19 = 40;
    if (v17 == v18)
    {
      v19 = 32;
    }

    v20 = *(*(a1 + v19) + 8);
    v21 = v20[4];
    v22 = v20[5];
    v23 = v20[6];
    v24 = v20[7];

    v34.origin.x = v21;
    v34.origin.y = v22;
    v34.size.width = v23;
    v34.size.height = v24;
    if (!CGRectIsNull(v34))
    {
      [v7 setAbsoluteFrame:{v21, v22, v23, v24}];
    }

    v25 = MEMORY[0x277D75D18];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_10;
    v28[3] = &unk_279D38038;
    v29 = v7;
    v30 = v10;
    v31 = v12;
    v32 = v14;
    v33 = v16;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_11;
    v26[3] = &unk_279D38060;
    v27 = v8;
    [v25 _animateUsingSpringWithTension:0 friction:v28 interactive:v26 animations:100.0 completion:20.0];
  }

  else
  {
    (*(v8 + 2))(v8, 1);
  }
}

uint64_t __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_12(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 absoluteFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v4 view];
  v14 = [v13 window];
  if (v14)
  {
    v15 = v14;
    v22.origin.x = v6;
    v22.origin.y = v8;
    v22.size.width = v10;
    v22.size.height = v12;
    v16 = CGRectContainsRect(*(a1 + 48), v22);

    if (v16)
    {
      v17 = [v4 identifier];
      v18 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarFullBackgroundActivityItem];

      if (v17 == v18)
      {
        v19 = *(a1 + 32);
      }

      else
      {
        v19 = *(a1 + 40);
      }

      v20 = *(v19 + 8);
      v20[4] = v6;
      v20[5] = v8;
      v20[6] = v10;
      v20[7] = v12;
    }
  }

  else
  {
  }

  return 1;
}

void __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 region];
  v9 = [v8 identifier];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(a1 + 32);
  v65 = *(*(*(a1 + 40) + 8) + 40);
  v13 = *(*(*(a1 + 48) + 8) + 24);
  v14 = v65;
  [v12 airplaneTravelOffsetInProposedPartWithIdentifier:&v65 animationType:v13];
  v57 = v15;
  v16 = v65;

  [v6 absoluteFrame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [*(a1 + 32) statusBar];
  [v25 frameForPartWithIdentifier:v16 includeInternalItems:1];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v34 = v18;
    v35 = v20;
    v36 = v22;
    v37 = v24;
    if (*(a1 + 64))
    {
      MinX = CGRectGetMinX(*&v34);
      v66.origin.x = v27;
      v66.origin.y = v29;
      v66.size.width = v31;
      v66.size.height = v33;
      v39 = MinX - CGRectGetMaxX(v66) - v57;
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v34);
      v68.origin.x = v27;
      v68.origin.y = v29;
      v68.size.width = v31;
      v68.size.height = v33;
      v39 = v57 + MaxX - CGRectGetMinX(v68);
    }

    CGAffineTransformMakeTranslation(&v64, -v39, 0.0);
    v63 = v64;
    [v6 setTransform:&v63];
    v46 = 0x20000;
  }

  else
  {
    v40 = v27;
    v41 = v29;
    v42 = v31;
    v43 = v33;
    if (*(a1 + 64))
    {
      v44 = CGRectGetMinX(*&v40);
      v67.origin.x = v18;
      v67.origin.y = v20;
      v67.size.width = v22;
      v67.size.height = v24;
      v39 = v44 - CGRectGetMaxX(v67) - v57;
    }

    else
    {
      v47 = CGRectGetMaxX(*&v40);
      v69.origin.x = v18;
      v69.origin.y = v20;
      v69.size.width = v22;
      v69.size.height = v24;
      v39 = v57 + v47 - CGRectGetMinX(v69);
    }

    v46 = 0x10000;
  }

  [*(a1 + 32) airplaneSpeedForAnimationType:*(*(*(a1 + 48) + 8) + 24)];
  v49 = 1.0 / v48;
  v50 = -v39;
  if (v39 >= 0.0)
  {
    v50 = v39;
  }

  *(*(*(a1 + 56) + 8) + 24) = v50 * v49;
  [*(a1 + 32) airplaneShouldFadeForAnimationType:*(*(*(a1 + 48) + 8) + 24)];
  v51 = *(a1 + 48);
  if (v52 != 0.0 && *(*(v51 + 8) + 24) == 1)
  {
    [v6 setAlpha:0.0];
    v51 = *(a1 + 48);
  }

  v53 = MEMORY[0x277D75D18];
  v54 = *(*(*(a1 + 56) + 8) + 24);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_2;
  v58[3] = &unk_279D38450;
  v61 = v51;
  v62 = v39;
  v55 = *(a1 + 32);
  v59 = v6;
  v60 = v55;
  v56 = v6;
  [v53 animateWithDuration:v46 delay:v58 options:v7 animations:v54 completion:0.0];
}

uint64_t __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = *(MEMORY[0x277CBF2C0] + 16);
    *&v8.a = *MEMORY[0x277CBF2C0];
    *&v8.c = v2;
    *&v8.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  else
  {
    CGAffineTransformMakeTranslation(&v8, *(a1 + 56), 0.0);
  }

  v3 = *(a1 + 32);
  v7 = v8;
  [v3 setTransform:&v7];
  result = [*(a1 + 40) airplaneShouldFadeForAnimationType:*(*(*(a1 + 48) + 8) + 24)];
  if (v5 != 0.0)
  {
    v6 = 1.0;
    if (*(*(*(a1 + 48) + 8) + 24) == 2)
    {
      v6 = 0.0;
    }

    return [*(a1 + 32) setAlpha:v6];
  }

  return result;
}

uint64_t __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 type];
  if (*(*(*(a1 + 32) + 8) + 24) == 2)
  {
    [v5 setFloating:1];
  }

  return 1;
}

void __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 region];
  v11 = [v10 identifier];
  v12 = [v11 isEqual:*(*(*(a1 + 40) + 8) + 40)];

  if (!v12)
  {
    v9[2](v9, 1);
    goto LABEL_18;
  }

  v13 = *(*(*(a1 + 48) + 8) + 24);
  if (v13 == 1)
  {
    if ([v7 type] == 2)
    {
      v14 = MEMORY[0x277D75D18];
      v15 = *(*(*(a1 + 56) + 8) + 24) * 0.5;
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_5;
      v90[3] = &unk_279D37F00;
      v91 = v8;
      [v14 animateWithDuration:v90 animations:v9 completion:v15];

      goto LABEL_18;
    }

    v13 = *(*(*(a1 + 48) + 8) + 24);
  }

  if (v13 != 2)
  {
    v44 = *(*(*(a1 + 64) + 8) + 40);
    v45 = [v8 identifier];
    v46 = [v44 objectForKeyedSubscript:v45];

    if (v46)
    {
      [v46 CGRectValue];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;
      [v8 absoluteFrame];
      x = v92.origin.x;
      y = v92.origin.y;
      width = v92.size.width;
      height = v92.size.height;
      v93.origin.x = v48;
      v93.origin.y = v50;
      v93.size.width = v52;
      v93.size.height = v54;
      if (CGRectEqualToRect(v92, v93))
      {
        v9[2](v9, 1);
LABEL_17:

        goto LABEL_18;
      }

      [v8 setAbsoluteFrame:{v48, v50, v52, v54}];
      v61 = MEMORY[0x277D75D18];
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_11;
      v70[3] = &unk_279D38038;
      v71 = v8;
      v72 = x;
      v73 = y;
      v74 = width;
      v75 = height;
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_12;
      v68[3] = &unk_279D38060;
      v69 = v9;
      [v61 _animateUsingSpringWithTension:0 friction:v70 interactive:v68 animations:100.0 completion:20.0];

      v60 = v71;
    }

    else
    {
      [v8 setAlpha:0.0];
      v59 = MEMORY[0x277D75D18];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_13;
      v66[3] = &unk_279D37F00;
      v67 = v8;
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_14;
      v64[3] = &unk_279D38060;
      v65 = v9;
      [v59 _animateUsingSpringWithTension:0 friction:v66 interactive:v64 animations:100.0 completion:20.0];

      v60 = v67;
    }

    goto LABEL_17;
  }

  v16 = [*(a1 + 32) statusBar];
  v17 = [v16 regions];
  v18 = [v17 objectForKeyedSubscript:*(*(*(a1 + 40) + 8) + 40)];
  v19 = [v18 displayItems];

  v20 = *(*(*(a1 + 56) + 8) + 24);
  v21 = v20 / [v19 count];
  v62 = v21 * ([v19 indexOfObject:v8] + 1);
  v63 = v21 + *(*(*(a1 + 56) + 8) + 24);
  v22 = *(*(*(a1 + 64) + 8) + 40);
  v23 = [v8 identifier];
  v24 = [v22 objectForKeyedSubscript:v23];
  [v24 CGRectValue];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [v8 absoluteFrame];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  if ([v7 type] == 3)
  {
    [v8 setAbsoluteFrame:{v26, v28, v30, v32}];
  }

  v41 = MEMORY[0x277D75D18];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_6;
  v76[3] = &unk_279D384A0;
  v42 = v7;
  v43 = *(a1 + 32);
  v77 = v42;
  v78 = v43;
  v79 = v8;
  v80 = v26;
  v81 = v28;
  v82 = v30;
  v83 = v32;
  v84 = v34;
  v85 = v36;
  v86 = v38;
  v87 = v40;
  v88 = v62;
  v89 = v63;
  [v41 animateKeyframesWithDuration:0 delay:v76 options:v9 animations:? completion:?];

LABEL_18:
}

void __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  v3 = MEMORY[0x277D75D18];
  if (v2 == 3)
  {
    [*(a1 + 40) airplaneObstacleFadeOutDuration];
    v5 = v4;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_7;
    v23[3] = &unk_279D38038;
    v6 = &v24;
    v24 = *(a1 + 48);
    v7 = *(a1 + 72);
    v25 = *(a1 + 56);
    v26 = v7;
    [v3 addKeyframeWithRelativeStartTime:v23 relativeDuration:0.0 animations:v5];
    v8 = MEMORY[0x277D75D18];
    [*(a1 + 40) airplaneObstacleFadeOutDuration];
    v10 = v9;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_8;
    v19[3] = &unk_279D38038;
    v20 = *(a1 + 48);
    v21 = *(a1 + 88);
    v22 = *(a1 + 104);
    [v8 addKeyframeWithRelativeStartTime:v19 relativeDuration:v10 animations:0.0];
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_9;
    v17[3] = &unk_279D37F00;
    v6 = &v18;
    v18 = *(a1 + 48);
    [v3 addKeyframeWithRelativeStartTime:v17 relativeDuration:0.0 animations:0.0];
  }

  v11 = MEMORY[0x277D75D18];
  v12 = *(a1 + 120) / *(a1 + 128);
  [*(a1 + 40) airplaneObstacleFadeInDuration];
  v14 = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_10;
  v15[3] = &unk_279D37F00;
  v16 = *(a1 + 48);
  [v11 addKeyframeWithRelativeStartTime:v15 relativeDuration:v12 animations:v14];
}

uint64_t __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);

  return [v6 setAbsoluteFrame:{v2, v3, v4, v5}];
}

uint64_t __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 displayItemAbsoluteFrames];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [v7 type];
  if (v11 == 2)
  {
    [v5 setFloating:1];
  }

  return 1;
}

void __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_16(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
  if ([v5 isEqual:v3])
  {
  }

  else
  {
    v4 = [*(a1 + 32) containsObject:v5];

    if ((v4 & 1) == 0)
    {
      [*(a1 + 40) addSubAnimation:*(a1 + 48) forDisplayItemWithIdentifier:v5];
      [*(a1 + 32) addObject:v5];
    }
  }
}

void __64__STUIStatusBarVisualProvider_iOS_animationForProminentLocation__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  v6 = MEMORY[0x277D75D18];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__STUIStatusBarVisualProvider_iOS_animationForProminentLocation__block_invoke_2;
  v8[3] = &unk_279D37F00;
  v9 = v5;
  v7 = v5;
  [v6 animateWithDuration:4 delay:v8 options:a4 animations:0.333333333 completion:0.0];
}

void __64__STUIStatusBarVisualProvider_iOS_animationForProminentLocation__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  [v6 absoluteFrame];
  UIRectGetCenter();
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeTranslation(&v16, *(*(*(a1 + 32) + 8) + 32) - v8, *(*(*(a1 + 32) + 8) + 40) - v9);
  v14 = v16;
  CGAffineTransformScale(&v15, &v14, 0.66, 0.66);
  v16 = v15;
  [v6 setAlpha:0.0];
  v15 = v16;
  [v6 setTransform:&v15];
  v10 = MEMORY[0x277D75D18];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__STUIStatusBarVisualProvider_iOS_animationForProminentLocation__block_invoke_4;
  v12[3] = &unk_279D37F00;
  v13 = v6;
  v11 = v6;
  [v10 animateWithDuration:v12 animations:v7 completion:0.333333333];
}

uint64_t __64__STUIStatusBarVisualProvider_iOS_animationForProminentLocation__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v2 setTransform:v5];
}

uint64_t __64__STUIStatusBarVisualProvider_iOS_animationForProminentLocation__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 absoluteFrame];
  UIRectGetCenter();
  v5 = *(*(a1 + 32) + 8);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  [v4 setFloating:1];

  return 1;
}

void __67__STUIStatusBarVisualProvider_DynamicSplit_leadingItemCutoffWidths__block_invoke()
{
  v0 = qword_280C1E788;
  qword_280C1E788 = &unk_287D1AE88;
}

void __68__STUIStatusBarVisualProvider_DynamicSplit_trailingItemCutoffWidths__block_invoke()
{
  v0 = qword_280C1E798;
  qword_280C1E798 = &unk_287D1AEA0;
}

uint64_t __88__STUIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toDynamicallyHidden_scale___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
  v4 = [*(a1 + 32) view];
  v5 = [v4 layer];
  v6 = [v5 presentationLayer];
  v7 = [v6 valueForKeyPath:@"filters.gaussianBlur.inputRadius"];

  if (v2 == 1)
  {
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = &unk_287D1B240;
    }

    [v3 setFromValue:v8];
    [v3 setToValue:&unk_287D1B250];
    [v3 setDuration:*(a1 + 40) * 0.35];
    LODWORD(v9) = 1045220557;
    LODWORD(v10) = 1.0;
    LODWORD(v11) = 1.0;
    v12 = [MEMORY[0x277CD9EF8] functionWithControlPoints:0.0 :v9 :v10 :v11];
    [v3 setTimingFunction:v12];

    v13 = [*(a1 + 32) view];
    v14 = [v13 layer];
    [v14 addAnimation:v3 forKey:@"blur"];

    [*(a1 + 32) setDynamicHidingAlpha:0.0];
    CGAffineTransformMakeScale(&v32, 0.5, 0.5);
    v15 = *(a1 + 32);
    *&v31.a = *&v32.a;
    *&v31.c = *&v32.c;
    v16 = *&v32.tx;
  }

  else
  {
    if (v7)
    {
      [v7 doubleValue];
      if (v17 == 0.0)
      {
        v18 = &unk_287D1B250;
      }

      else
      {
        v18 = v7;
      }
    }

    else
    {
      v18 = &unk_287D1B250;
    }

    [v3 setFromValue:v18];
    [v3 setToValue:&unk_287D1B240];
    [v3 setDuration:*(a1 + 40)];
    LODWORD(v19) = 1045220557;
    LODWORD(v20) = 1.0;
    LODWORD(v21) = 1.0;
    v22 = [MEMORY[0x277CD9EF8] functionWithControlPoints:0.0 :v19 :v20 :v21];
    [v3 setTimingFunction:v22];

    v23 = [*(a1 + 32) view];
    v24 = [v23 layer];
    [v24 addAnimation:v3 forKey:@"blur"];

    [*(a1 + 32) setDynamicHidingAlpha:1.0];
    v15 = *(a1 + 32);
    v25 = *(MEMORY[0x277CBF2C0] + 16);
    *&v31.a = *MEMORY[0x277CBF2C0];
    *&v31.c = v25;
    v16 = *(MEMORY[0x277CBF2C0] + 32);
  }

  *&v31.tx = v16;
  [v15 setDynamicHidingTransform:&v31];

  CGAffineTransformMakeScale(&v30, *(a1 + 48), *(a1 + 48));
  v26 = *(a1 + 32);
  v31 = v30;
  result = [v26 setDynamicScaleTransform:&v31];
  if ((*(a1 + 56) & 1) == 0)
  {
    CGAffineTransformMakeScale(&v29, *(a1 + 48), *(a1 + 48));
    v28 = *(a1 + 32);
    v31 = v29;
    return [v28 setDynamicScaleTransform:&v31];
  }

  return result;
}

uint64_t __88__STUIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toDynamicallyHidden_scale___block_invoke_94(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, *(a1 + 40), *(a1 + 40));
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setDynamicScaleTransform:&v4];
}

uint64_t __70__STUIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toScale___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, *(a1 + 40), *(a1 + 40));
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setDynamicScaleTransform:&v4];
}

uint64_t __70__STUIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toScale___block_invoke_2(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, *(a1 + 40), *(a1 + 40));
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setDynamicScaleTransform:&v4];
}

void __105__STUIStatusBarVisualProvider_DynamicSplit_avoidanceFrameUpdatedFromFrame_withAnimationSettings_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cutoutLayoutGuide];
  v1 = [v2 owningView];
  [v1 layoutSubviews];
}

void __105__STUIStatusBarVisualProvider_DynamicSplit_avoidanceFrameUpdatedFromFrame_withAnimationSettings_options___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cutoutLayoutGuide];
  v1 = [v2 owningView];
  [v1 layoutSubviews];
}

void __105__STUIStatusBarVisualProvider_DynamicSplit_avoidanceFrameUpdatedFromFrame_withAnimationSettings_options___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) statusBar];
  [v1 updateWithAnimations:MEMORY[0x277CBEBF8]];
}

void __73__STUIStatusBarVisualProvider_DynamicSplitMedium_leadingItemCutoffWidths__block_invoke()
{
  v0 = qword_280C1E7A8;
  qword_280C1E7A8 = &unk_287D1AEB8;
}

void __74__STUIStatusBarVisualProvider_DynamicSplitMedium_trailingItemCutoffWidths__block_invoke()
{
  v0 = qword_280C1E7B8;
  qword_280C1E7B8 = &unk_287D1AED0;
}

void __110__STUIStatusBarVisualProvider_PillRegionCoordinator__updateBackgroundActivityWithEntry_timeEntry_needsUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideActivityDetailAndUpdate:1];
}

void __104__STUIStatusBarVisualProvider_PillRegionCoordinator_updateRegion_highlighted_initialPress_cornerRadius___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = MEMORY[0x277D75348];
    v3 = a2;
    v4 = [v2 colorWithWhite:0.0 alpha:0.3];
    [v3 setBackgroundColor:?];
  }

  else
  {
    v4 = a2;
    [v4 setBackgroundColor:0];
  }
}

id __88__STUIStatusBarVisualProvider_Split_visualProviderSubclassForScreen_visualProviderInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 nativeDisplayWidth];
  if (vabdd_f64(v8, *(a1 + 48)) <= 0.0001)
  {
    [*(a1 + 32) _nativeScale];
    v10 = v9;
    if (objc_opt_respondsToSelector())
    {
      [a2 referenceScreenScale];
    }

    else
    {
      [*(a1 + 32) _scale];
    }

    v12 = v10 / v11;
    v13 = *(a1 + 64);
    v14 = *(a1 + 56) * v12;
    result = [a2 notchSize];
    if (vabdd_f64(v16, v14) <= 0.0001 && vabdd_f64(v15, v12 * v13) <= 0.0001)
    {
      result = STUIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(a2, *(a1 + 32), 0);
      *(*(*(a1 + 40) + 8) + 24) = result;
      *a4 = 1;
    }
  }

  return result;
}

void __66__STUIStatusBarVisualProvider_Split_animationForProminentLocation__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  [v6 absoluteFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v6 setAbsoluteFrame:{*(*(*(a1 + 32) + 8) + 32), *(*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 32) + 8) + 48), *(*(*(a1 + 32) + 8) + 56)}];
  v16 = MEMORY[0x277D75D18];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__STUIStatusBarVisualProvider_Split_animationForProminentLocation__block_invoke_2;
  v21[3] = &unk_279D38038;
  v22 = v6;
  v23 = v9;
  v24 = v11;
  v25 = v13;
  v26 = v15;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__STUIStatusBarVisualProvider_Split_animationForProminentLocation__block_invoke_3;
  v19[3] = &unk_279D38060;
  v20 = v7;
  v17 = v7;
  v18 = v6;
  [v16 _animateUsingSpringWithTension:0 friction:v21 interactive:v19 animations:100.0 completion:20.0];
}

uint64_t __66__STUIStatusBarVisualProvider_Split_animationForProminentLocation__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 absoluteFrame];
  v4 = *(*(a1 + 32) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  return 1;
}

void __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = a2;
  [(STUIStatusBarVisualProvider_Split *)&v22 _collapseChargingBoltTransformForDisplayItem:v9, v7];
  v21 = v22;
  [v7 setTransform:&v21];
  [v7 setAlpha:0.0];
  v11 = MEMORY[0x277D75D18];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_2;
  v18[3] = &unk_279D38150;
  v12 = *(a1 + 32);
  v19 = v7;
  v20 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_3;
  v16[3] = &unk_279D390E0;
  v16[4] = v12;
  v17 = v8;
  v13 = v8;
  v14 = v7;
  [v11 animateWithDuration:v18 animations:v16 completion:0.3];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_5;
  v15[3] = &unk_279D37F00;
  v15[4] = *(a1 + 32);
  [v10 addTimeout:v15 withHandler:0.6];
}

uint64_t __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_2(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v3 + 8))
  {
    v4 = [v2 view];
    if ([v4 _shouldReverseLayoutDirection])
    {
      v5 = 7.0;
    }

    else
    {
      v5 = -7.0;
    }

    CGAffineTransformMakeTranslation(&v8, v5, -1.66666667);
    v2 = *(a1 + 32);
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  v7 = v8;
  [v2 setTransform:&v7];
  return [*(a1 + 32) setAlpha:1.0];
}

uint64_t __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_initWeak(&location, *(a1 + 32));
    v3 = MEMORY[0x277CBEBB8];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_4;
    v9 = &unk_279D38178;
    objc_copyWeak(&v10, &location);
    v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:&v6 block:3.0];
    [*(a1 + 32) setBatteryExpansionTimer:{v4, v6, v7, v8, v9}];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    [(STUIStatusBarVisualProvider_Split *)*(a1 + 32) _collapseBattery];
  }

  return (*(*(a1 + 40) + 16))();
}

void __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(STUIStatusBarVisualProvider_Split *)WeakRetained _collapseBattery];
}

void __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_6(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 view];
  v9 = [v6 item];
  [v8 center];
  v11 = v10;
  v13 = v12;
  [v8 setCenter:{*(*(*(a1 + 32) + 8) + 32), *(*(*(a1 + 32) + 8) + 40)}];
  v14 = [v8 layer];
  [v14 setShouldRasterize:0];

  memset(&v31, 0, sizeof(v31));
  CGAffineTransformMakeScale(&v31, 1.4, 1.4);
  v15 = [v8 _shouldReverseLayoutDirection];
  v16 = -6.0;
  if (v15)
  {
    v16 = 6.0;
  }

  t2 = v31;
  CGAffineTransformTranslate(&v30, &t2, v16, -1.0);
  v31 = v30;
  if (v8)
  {
    [v8 transform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  t1 = v31;
  CGAffineTransformConcat(&v30, &t1, &t2);
  v31 = v30;
  v17 = MEMORY[0x277D75D18];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_7;
  v21[3] = &unk_279D39108;
  v25 = v30;
  v22 = v6;
  v23 = v8;
  v26 = v11;
  v27 = v13;
  v24 = v9;
  v18 = v9;
  v19 = v8;
  v20 = v6;
  [v17 animateWithDuration:v21 animations:v7 completion:0.3];
}

uint64_t __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 72);
  v4[0] = *(a1 + 56);
  v4[1] = v2;
  v4[2] = *(a1 + 88);
  [*(a1 + 32) setTransform:v4];
  [*(a1 + 40) setCenter:{*(a1 + 104), *(a1 + 112)}];
  return [*(a1 + 48) setHighlighted:1];
}

uint64_t __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 view];
  [v4 center];
  v5 = *(*(a1 + 32) + 8);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;

  return 1;
}

void __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_9(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D75D18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_10;
  v13[3] = &unk_279D37F00;
  v14 = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_11;
  v10[3] = &unk_279D390E0;
  v11 = v14;
  v12 = v6;
  v8 = v6;
  v9 = v14;
  [v7 animateWithDuration:v13 animations:v10 completion:0.1];
}

uint64_t __73__STUIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_11(uint64_t a1)
{
  [*(a1 + 32) setFloating:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 40) + 8);
  v10 = v9[4];
  v11 = v9[5];
  v12 = v9[6];
  v13 = v9[7];
  v14 = a2;
  [v7 setAbsoluteFrame:{v10, v11, v12, v13}];
  v15 = MEMORY[0x277D75D18];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_2;
  v22[3] = &unk_279D38150;
  v16 = *(a1 + 32);
  v23 = v7;
  v24 = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_3;
  v20[3] = &unk_279D390E0;
  v20[4] = v16;
  v21 = v8;
  v17 = v8;
  v18 = v7;
  [v15 animateWithDuration:v22 animations:v20 completion:0.3];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_4;
  v19[3] = &unk_279D37F00;
  v19[4] = *(a1 + 32);
  [v14 addTimeout:v19 withHandler:0.6];
}

uint64_t __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_2(uint64_t a1)
{
  [(STUIStatusBarVisualProvider_Split *)&v5 _collapseChargingBoltTransformForDisplayItem:*(a1 + 32)];
  v2 = *(a1 + 32);
  v4 = v5;
  [v2 setTransform:&v4];
  return [*(a1 + 32) setAlpha:0.0];
}

uint64_t __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_3(uint64_t a1)
{
  if ([*(*(a1 + 32) + 144) isEnabled])
  {
    [*(*(a1 + 32) + 144) setEnabled:0];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 144) isEnabled])
  {
    [*(*(a1 + 32) + 144) setEnabled:0];
    v2 = *(a1 + 32);

    [(STUIStatusBarVisualProvider_Split *)v2 _resetBattery];
  }
}

uint64_t __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 absoluteFrame];
  v5 = *(*(a1 + 32) + 8);
  v5[4] = v6;
  v5[5] = v7;
  v5[6] = v8;
  v5[7] = v9;
  [v4 setFloating:1];

  return 1;
}

void __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_6(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 view];
  v9 = [v6 item];
  [v8 center];
  v11 = v10;
  v13 = v12;
  [v8 setCenter:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
  v14 = MEMORY[0x277D75D18];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_7;
  v24[3] = &unk_279D39178;
  v25 = v6;
  v28 = v11;
  v29 = v13;
  v26 = v8;
  v27 = v9;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_8;
  v20[3] = &unk_279D391A0;
  v15 = *(a1 + 32);
  v21 = v26;
  v22 = v15;
  v23 = v7;
  v16 = v7;
  v17 = v26;
  v18 = v9;
  v19 = v6;
  [v14 animateWithDuration:v24 animations:v20 completion:0.3];
}

uint64_t __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  [*(a1 + 40) setCenter:{*(a1 + 56), *(a1 + 64)}];
  return [*(a1 + 48) setHighlighted:0];
}

uint64_t __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setShouldRasterize:1];

  [(STUIStatusBarVisualProvider_Split *)*(a1 + 40) _resetBattery];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

uint64_t __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 view];
  [v4 center];
  v5 = *(*(a1 + 32) + 8);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;

  return 1;
}

void __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  [v5 setAlpha:0.0];
  v7 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__STUIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_11;
  v9[3] = &unk_279D37F00;
  v10 = v5;
  v8 = v5;
  [v7 animateWithDuration:0 delay:v9 options:v6 animations:0.15 completion:0.2];
}

void __67__STUIStatusBarVisualProvider_Split__controlCenterGrabberAnimation__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [a2 type];
  [objc_opt_class() height];
  if (v8 == 1)
  {
    v10 = v9;
    [v6 setAlpha:0.0];
    CGAffineTransformMakeTranslation(&v22, 0.0, v10 * -0.5);
    v21 = v22;
    [v6 setTransform:&v21];
    v11 = 0.25;
    v12 = 0x20000;
  }

  else
  {
    v11 = 0.0;
    v12 = 0x10000;
  }

  v13 = MEMORY[0x277D75D18];
  v17 = v7;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__STUIStatusBarVisualProvider_Split__controlCenterGrabberAnimation__block_invoke_2;
  v18[3] = &unk_279D38628;
  v19 = v6;
  v20 = v8;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__STUIStatusBarVisualProvider_Split__controlCenterGrabberAnimation__block_invoke_3;
  v16[3] = &unk_279D38810;
  v14 = v7;
  v15 = v6;
  [v13 animateWithDuration:v12 delay:v18 options:v16 animations:0.66 completion:v11];
}

uint64_t __67__STUIStatusBarVisualProvider_Split__controlCenterGrabberAnimation__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v6[0] = *MEMORY[0x277CBF2C0];
  v6[1] = v3;
  v6[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v6];
  v4 = 0.0;
  if (*(a1 + 40) == 1)
  {
    v4 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v4];
}

uint64_t __67__STUIStatusBarVisualProvider_Split__controlCenterGrabberAnimation__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if ([a2 type] == 2)
  {
    [v4 setFloating:1];
  }

  return 1;
}

void __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v55 = a4;
  v9 = [v8 view];
  v10 = [*(a1 + 32) statusBar];
  v11 = [v10 regions];
  v12 = [v11 objectForKeyedSubscript:@"systemUpdates"];

  v13 = [v7 type];
  [v9 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [*(a1 + 32) statusBar];
  v23 = [v22 containerView];
  [v9 convertRect:v23 toView:{v15, v17, v19, v21}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  if (*(a1 + 48) == 1)
  {
    [v9 bounds];
    v33 = v32;
    v34 = v9;
  }

  else
  {
    if (*(a1 + 49) == (v13 == 1))
    {
      v35 = [v12 layoutItem];
      [v35 _ui_frame];
      MaxX = CGRectGetMaxX(v72);
      v73.origin.x = v25;
      v73.origin.y = v27;
      v73.size.width = v29;
      v73.size.height = v31;
      v33 = MaxX - CGRectGetMaxX(v73);
    }

    else
    {
      v74.origin.x = v25;
      v74.origin.y = v27;
      v74.size.width = v29;
      v74.size.height = v31;
      MinX = CGRectGetMinX(v74);
      v35 = [v12 layoutItem];
      [v35 _ui_frame];
      v33 = MinX - CGRectGetMinX(v75);
    }

    v34 = 0;
    if (*(a1 + 49))
    {
      v33 = -v33;
    }
  }

  if (v13 != 1)
  {
    v39 = [*(a1 + 32) systemUpdatesTimer];
    [v39 invalidate];

    [*(a1 + 32) setSystemUpdatesTimer:0];
    [(STUIStatusBarVisualProvider_Split *)*(a1 + 32) _resumeSystemUpdateData];
    v40 = *(a1 + 48);
    if (v40 != 1)
    {
      v38 = 0.0;
      goto LABEL_19;
    }

    objc_initWeak(&location, v34);
    v41 = dispatch_time(0, 217800000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_4;
    block[3] = &unk_279D391E8;
    v42 = &v67;
    objc_copyWeak(&v67, &location);
    dispatch_after(v41, MEMORY[0x277D85CD0], block);
    v38 = 0.0;
    goto LABEL_18;
  }

  v38 = 0.25;
  if (*(a1 + 48) & 1) != 0 || (v38 = vcvtd_n_f64_u64([*(a1 + 40) count], 2uLL), (*(a1 + 48)))
  {
    [v34 setHideWithWipe:1];
  }

  else
  {
    [v8 setAlpha:0.0];
    CGAffineTransformMakeTranslation(&v71, -v33, 0.0);
    location = v71;
    [v8 setTransform:&location];
  }

  LOBYTE(v40) = *(a1 + 48);
  if (v40)
  {
    v54 = v12;
    objc_initWeak(&location, v34);
    v43 = [MEMORY[0x277CE15C0] disappearUpEffect];
    v44 = [v43 effectWithByLayer];
    v45 = [MEMORY[0x277CE15D8] optionsWithNonRepeating];
    [v34 addSymbolEffect:v44 options:v45 animated:0];

    v46 = dispatch_time(0, ((v38 + 0.165) * 1000000000.0));
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_2;
    v68[3] = &unk_279D391E8;
    v42 = &v69;
    objc_copyWeak(&v69, &location);
    dispatch_after(v46, MEMORY[0x277D85CD0], v68);
    v12 = v54;
LABEL_18:
    objc_destroyWeak(v42);
    objc_destroyWeak(&location);
    LOBYTE(v40) = *(a1 + 48);
  }

LABEL_19:
  v47 = v13 == 1;
  v48 = v13 == 1;
  v49 = MEMORY[0x277D75D18];
  if (v47)
  {
    v50 = 0x20000;
  }

  else
  {
    v50 = 0x10000;
  }

  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_5;
  v60[3] = &unk_279D39210;
  v64 = v48;
  v65 = v40;
  v61 = v34;
  v62 = v8;
  v63 = v33;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_6;
  v57[3] = &unk_279D39238;
  v59 = v48;
  v57[4] = *(a1 + 32);
  v58 = v55;
  v51 = v55;
  v52 = v8;
  v53 = v34;
  [v49 animateWithDuration:v50 delay:v60 options:v57 animations:0.66 completion:v38];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_9;
  v56[3] = &unk_279D37F00;
  v56[4] = *(a1 + 32);
  [v7 addTimeout:v56 withHandler:2.0];
}

void __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CE15B0] appearUpEffect];
  v2 = [v1 effectWithByLayer];
  v3 = [MEMORY[0x277CE15D8] optionsWithNonRepeating];
  [WeakRetained addSymbolEffect:v2 options:v3 animated:1 completion:&__block_literal_global_153];
}

void __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CE15C0] disappearDownEffect];
  v2 = [v1 effectWithByLayer];
  v3 = [MEMORY[0x277CE15D8] optionsWithNonRepeating];
  [WeakRetained addSymbolEffect:v2 options:v3 animated:1];
}

uint64_t __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 57))
    {
      v2 = *(a1 + 32);

      return [v2 setHideWithWipe:0];
    }

    v5 = *(a1 + 40);
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *&v11.a = *MEMORY[0x277CBF2C0];
    *&v11.c = v6;
    *&v11.tx = *(MEMORY[0x277CBF2C0] + 32);
    [v5 setTransform:&v11];
    v7 = *(a1 + 40);
    v8 = 1.0;
    return [v7 setAlpha:v8];
  }

  if (!*(a1 + 57))
  {
    CGAffineTransformMakeTranslation(&v10, *(a1 + 48), 0.0);
    v9 = *(a1 + 40);
    v11 = v10;
    [v9 setTransform:&v11];
    v7 = *(a1 + 40);
    v8 = 0.0;
    return [v7 setAlpha:v8];
  }

  [*(a1 + 32) setHideWithWipe:0];
  v4 = *(a1 + 32);

  return [v4 setAlpha:0.99];
}

uint64_t __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_6(uint64_t a1, int a2)
{
  v2 = a1;
  location[16] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*(a1 + 48) == 1)
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        v4 = +[STUIStatusBarSettingsDomain rootSettings];
        v5 = [v4 visualProviderSettings];
        v6 = [v5 showVPNDisconnect];

        if (v6)
        {
          v7 = [v3 delayedSystemUpdateDataToken];

          if (!v7)
          {
            v23 = [v3 statusBar];
            v22 = [v23 dataAggregator];
            v8 = [MEMORY[0x277CBEB58] set];
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            obj = [v3 orderedDisplayItemPlacementsInRegionWithIdentifier:@"systemUpdates"];
            v9 = [obj countByEnumeratingWithState:&v29 objects:location count:16];
            if (v9)
            {
              v10 = *v30;
              do
              {
                v11 = 0;
                do
                {
                  if (*v30 != v10)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v12 = *(*(&v29 + 1) + 8 * v11);
                  v13 = [v3 statusBar];
                  v14 = [v12 identifier];
                  v15 = [STUIStatusBarItem itemIdentifierForDisplayItemIdentifier:v14];
                  v16 = [v13 itemWithIdentifier:v15];

                  v17 = [v16 dependentEntryKeys];
                  [v8 unionSet:v17];

                  ++v11;
                }

                while (v9 != v11);
                v9 = [obj countByEnumeratingWithState:&v29 objects:location count:16];
              }

              while (v9);
            }

            v18 = [v22 beginDelayingUpdatesForEntryKeys:v8];
            [v3 setDelayedSystemUpdateDataToken:v18];
          }
        }
      }

      objc_initWeak(location, *(a1 + 32));
      v19 = MEMORY[0x277CBEBB8];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_7;
      v27[3] = &unk_279D38178;
      objc_copyWeak(&v28, location);
      v20 = [v19 scheduledTimerWithTimeInterval:0 repeats:v27 block:2.0];
      [*(a1 + 32) setSystemUpdatesTimer:v20];

      [(STUIStatusBarVisualProvider_Split *)*(a1 + 32) _collapseBattery];
      objc_destroyWeak(&v28);
      objc_destroyWeak(location);
      v2 = a1;
    }

    return (*(*(v2 + 40) + 16))();
  }

  else
  {
    [(STUIStatusBarVisualProvider_Split *)*(a1 + 32) _disableSystemUpdates];
    (*(*(v2 + 40) + 16))();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_8;
    v26[3] = &unk_279D37F00;
    v26[4] = *(v2 + 32);
    return [MEMORY[0x277D75D18] performWithoutAnimation:v26];
  }
}

void __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [(STUIStatusBarVisualProvider_Split *)WeakRetained _disableSystemUpdates];
    v2 = [v3 statusBar];
    [v2 updateWithAnimations:MEMORY[0x277CBEBF8]];

    [(STUIStatusBarVisualProvider_Split *)v3 _resumeSystemUpdateData];
    WeakRetained = v3;
  }
}

void __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) statusBar];
  [v2 updateWithAnimations:MEMORY[0x277CBEBF8]];

  v3 = *(a1 + 32);

  [(STUIStatusBarVisualProvider_Split *)v3 _resumeSystemUpdateData];
}

uint64_t __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_9(uint64_t a1)
{
  [(STUIStatusBarVisualProvider_Split *)*(a1 + 32) _disableSystemUpdates];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_10;
  v3[3] = &unk_279D37F00;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

void __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_10(uint64_t a1)
{
  v2 = [*(a1 + 32) statusBar];
  [v2 updateWithAnimations:MEMORY[0x277CBEBF8]];

  v3 = *(a1 + 32);

  [(STUIStatusBarVisualProvider_Split *)v3 _resumeSystemUpdateData];
}

uint64_t __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if ([a2 type] == 2)
  {
    [v4 setFloating:1];
  }

  return 1;
}

void __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_12(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [a2 type];
  if ((v9 - 1) > 1)
  {
    v8[2](v8, 1);
  }

  else
  {
    v10 = v9;
    if (v9 == 2)
    {
      v11 = *(a1 + 32);
      v12 = [v7 identifier];
      v13 = [v11 objectForKeyedSubscript:v12];
      v14 = [v13 integerValue];
    }

    else
    {
      v15 = [v7 region];
      v16 = [v15 displayItems];
      v14 = [v16 indexOfObject:v7];

      [v7 setAlpha:0.0];
    }

    v17 = v14 * 0.2;
    v18 = 0.0;
    if (*(a1 + 40))
    {
      v17 = 0.0;
    }

    v19 = MEMORY[0x277D75D18];
    if (v10 == 1)
    {
      v18 = 0.5;
    }

    v20 = v18 + v17;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_13;
    v21[3] = &unk_279D38628;
    v22 = v7;
    v23 = v10;
    [v19 animateWithDuration:0 delay:v21 options:v8 animations:0.25 completion:v20];
  }
}

uint64_t __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_13(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  v3 = 0.0;
  if (*(v2 + 8) == 1)
  {
    v3 = 1.0;
  }

  return [v1 setAlpha:v3];
}

uint64_t __88__STUIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 type] == 2)
  {
    [v5 setFloating:1];
    v6 = [v5 region];
    v7 = [v6 displayItems];
    v8 = [v7 indexOfObject:v5];

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
    v10 = *(a1 + 32);
    v11 = [v5 identifier];
    [v10 setObject:v9 forKeyedSubscript:v11];
  }

  return 1;
}

void __65__STUIStatusBarVisualProvider_Split__updateLowerRegionsWithData___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) regionWithIdentifier:a2];
  v3 = [v7 isEnabled];
  if (*(a1 + 48) == 1)
  {
    [v7 enableWithToken:12];
  }

  else
  {
    [v7 disableWithToken:12];
  }

  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    v5 = 1;
    v6 = v7;
  }

  else
  {
    v5 = v3 ^ [v7 isEnabled];
    v6 = v7;
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = v5;
}

void __66__STUIStatusBarVisualProvider_Split__updateExpandedTrailingRegion__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) orientation] - 1;
  v3 = [*(a1 + 40) expandedPillPlacement];
  v4 = [v3 isEnabled];

  if ((((v2 < 2) ^ v4) & 1) == 0)
  {
    v5 = [*(a1 + 40) expandedPillPlacement];
    [v5 setEnabled:v2 > 1];

    [*(a1 + 32) setNeedsLayout];
  }

  v6 = [*(a1 + 32) currentAggregatedData];
  v7 = [v6 secondaryCellularEntry];

  if (v7)
  {
    v8 = [v7 isEnabled] ^ 1;
    if (v2 > 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = [*(a1 + 32) regionWithIdentifier:@"expandedLeading"];
  v11 = [v10 displayItems];
  v12 = [v11 count];

  v13 = [*(a1 + 32) regionWithIdentifier:@"expandedLowerTrailing"];
  v14 = [v13 displayItems];
  v15 = [v14 count];

  if (v12 || v15 || (v16 = 0.0, v9))
  {
    [*(a1 + 40) lowerExpandedBaselineOffset];
    v16 = v17;
  }

  [*(*(a1 + 40) + 176) constant];
  if (v16 != v18)
  {
    [*(*(a1 + 40) + 176) setConstant:v16];
    v19 = MEMORY[0x277D75D18];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __66__STUIStatusBarVisualProvider_Split__updateExpandedTrailingRegion__block_invoke_2;
    v20[3] = &unk_279D37F00;
    v21 = *(a1 + 32);
    [v19 animateWithDuration:v20 animations:0.25];
  }
}

BOOL __71__STUIStatusBarVisualProvider_FixedSplit__orderedDisplayItemPlacements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() showsLargeBatteryChargingAnimation];
  v4 = [v2 identifier];

  if (v3)
  {
    +[STUIStatusBarBatteryItem iconDisplayIdentifier];
  }

  else
  {
    +[STUIStatusBarBatteryItem staticIconDisplayIdentifier];
  }
  v5 = ;
  v6 = v4 == v5;

  return v6;
}

BOOL __71__STUIStatusBarVisualProvider_FixedSplit__orderedDisplayItemPlacements__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
  v4 = v2 == v3;

  return v4;
}

BOOL __71__STUIStatusBarVisualProvider_FixedSplit__orderedDisplayItemPlacements__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = +[STUIStatusBarCellularCondensedItem dualSignalStrengthDisplayIdentifier];
  v4 = v2 == v3;

  return v4;
}

BOOL __71__STUIStatusBarVisualProvider_FixedSplit__orderedDisplayItemPlacements__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = +[(STUIStatusBarItem *)STUIStatusBarThermalItem];
  v4 = v2 == v3;

  return v4;
}

void __74__STUIStatusBarVisualProvider_FixedSplit__updateSystemNavigationWithData___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) statusBar];
  [v1 updateWithAnimations:MEMORY[0x277CBEBF8]];
}

@end