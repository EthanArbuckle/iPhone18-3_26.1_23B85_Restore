@interface TVStackingPosterView
@end

@implementation TVStackingPosterView

void __58___TVStackingPosterView_setComponents_mainImageComponent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [v12 attributedText];
  v6 = [v5 copy];

  if (a3)
  {
    v7 = [v12 highlightedTextColor];

    if (v7)
    {
      v8 = [v6 mutableCopy];
      v9 = *MEMORY[0x277D740C0];
      v10 = [v12 highlightedTextColor];
      [v8 addAttribute:v9 value:v10 range:{0, objc_msgSend(v8, "length")}];

      v11 = [v8 copy];
      v6 = v11;
    }
  }

  [*(a1 + 32) addObject:v6];
}

void __54___TVStackingPosterView_setNeedsUpdateComponentLayout__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [v12 attributedText];
  v6 = [v5 copy];

  if (a3)
  {
    v7 = [v12 highlightedTextColor];

    if (v7)
    {
      v8 = [v6 mutableCopy];
      v9 = *MEMORY[0x277D740C0];
      v10 = [v12 highlightedTextColor];
      [v8 addAttribute:v9 value:v10 range:{0, objc_msgSend(v8, "length")}];

      v11 = [v8 copy];
      v6 = v11;
    }
  }

  [*(a1 + 32) addObject:v6];
}

void __90___TVStackingPosterView_setSelected_animated_focusUpdateContext_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) filteredComponents];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (v7 != *(*(a1 + 32) + 528))
        {
          [v7 setHighlighted:*(a1 + 48) animated:*(a1 + 49) withAnimationCoordinator:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

uint64_t __90___TVStackingPosterView_setSelected_animated_focusUpdateContext_withAnimationCoordinator___block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  [*(result + 32) size];
  [v1 selectionMarginsForSize:?];
  v4 = v3;
  v44 = v6;
  v45 = v5;
  v8 = v7;
  v9 = [*(v2 + 40) layer];
  v10 = [v9 hasBeenCommitted];

  [*(v2 + 40) bounds];
  v12 = v11;
  v14 = v13;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v15 = *(v2 + 40);
  if (v15)
  {
    [v15 cellMetrics];
    v17 = *(&v50 + 1);
    v16 = *&v50;
    v18 = *(&v51 + 1);
    v19 = *&v51;
    v15 = *(v2 + 40);
  }

  else
  {
    v19 = 0.0;
    v16 = 0.0;
    v18 = 0.0;
    v17 = 0.0;
  }

  v20 = [v15 overlayView];
  if (*(v2 + 48) == 1)
  {
    v21 = fmin((v44 + v45 + v12 - (v17 + v18)) / (v12 - (v17 + v18)), (v8 + v4 + v14 - (v16 + v19)) / (v14 - (v16 + v19)));
    CGAffineTransformMakeScale(&v48, v21, v21);
  }

  else
  {
    v22 = *(MEMORY[0x277CBF2C0] + 16);
    *&v48.a = *MEMORY[0x277CBF2C0];
    *&v48.c = v22;
    *&v48.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  [v20 setTransform:&v48];

  v23 = *(v2 + 40);
  v24 = *(v23 + 448);
  if (*(v2 + 48))
  {
    v24 = v4 + v24;
  }

  [*(v23 + 416) setConstant:v24];
  v25 = *(v2 + 40);
  v26 = *(v25 + 456);
  if (*(v2 + 48))
  {
    v26 = v8 + v26;
  }

  [*(v25 + 424) setConstant:v26];
  v27 = [*(v2 + 32) valueForTVViewStyle:@"tv-focus-align"];
  v28 = [v27 isEqualToString:@"bottom"];

  if (v28)
  {
    v29 = *(v2 + 40);
    v30 = *(v29 + 464);
    if (*(v2 + 48))
    {
      v30 = v30 - v8;
    }

    [*(v29 + 432) setConstant:v30];
    v31 = *(v2 + 40);
    v32 = *(v31 + 440);
    v33 = *(v2 + 48);
    v34 = *(v31 + 472);
    v35 = v34 - v8;
LABEL_20:
    if (v33)
    {
      v34 = v35;
    }

    [v32 setConstant:v34];
    goto LABEL_23;
  }

  v36 = [*(v2 + 32) valueForTVViewStyle:@"tv-focus-align"];
  v37 = [v36 isEqualToString:@"top"];

  if (v37)
  {
    v38 = *(v2 + 40);
    v39 = *(v38 + 464);
    if (*(v2 + 48))
    {
      v39 = v8 + v39;
    }

    [*(v38 + 432) setConstant:v39];
    v40 = *(v2 + 40);
    v32 = *(v40 + 440);
    v33 = *(v2 + 48);
    v34 = *(v40 + 472);
    v35 = v8 + v34;
    goto LABEL_20;
  }

LABEL_23:
  v41 = *(v2 + 40);
  if (*(v2 + 49) & v10)
  {
    [v41 layoutIfNeeded];
  }

  else if (v41[408] == 1)
  {
    [v41 _configureSubviews];
    *(*(v2 + 40) + 408) = 0;
  }

  v42 = *(v2 + 40);
  v43 = *(v42 + 488);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __90___TVStackingPosterView_setSelected_animated_focusUpdateContext_withAnimationCoordinator___block_invoke_3;
  v46[3] = &unk_279D6F880;
  v46[4] = v42;
  v47 = *(v2 + 48);
  return [v43 enumerateObjectsUsingBlock:v46];
}

void __90___TVStackingPosterView_setSelected_animated_focusUpdateContext_withAnimationCoordinator___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = v5[60];
  v7 = a2;
  v11 = [v5 visibleLabelWidths];
  v8 = [v11 objectAtIndex:a3];
  [v8 doubleValue];
  v10 = 0.0;
  if (*(a1 + 40))
  {
    v10 = v6;
  }

  [v7 setConstant:v9 + v10];
}

void __90___TVStackingPosterView_setSelected_animated_focusUpdateContext_withAnimationCoordinator___block_invoke_4(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1 + 32) filteredComponents];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    v16 = v18;
    v15 = @"marquee-and-show-on-highlight";
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [*(a1 + 32) layer];
        v9 = [v8 hasBeenCommitted];

        if (v7 != *(*(a1 + 32) + 528))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [v7 valueForTVViewStyle:@"tv-text-highlight-style"];
            if ([v7 tv_showOnHighlight])
            {
              if (*(a1 + 48))
              {
                v11 = 1.0;
                goto LABEL_20;
              }

              if (*(a1 + 49) & v9)
              {
                v17[0] = MEMORY[0x277D85DD0];
                v17[1] = 3221225472;
                v18[0] = __90___TVStackingPosterView_setSelected_animated_focusUpdateContext_withAnimationCoordinator___block_invoke_5;
                v18[1] = &unk_279D6E7F8;
                v18[2] = v7;
                [MEMORY[0x277D75D18] animateWithDuration:2084 delay:v17 options:0 animations:0.2 completion:0.0];
              }

              else
              {
                v11 = 0.0;
LABEL_20:
                [v7 setAlpha:v11];
              }
            }

            else
            {
              [*(a1 + 32) _updateShadowForLabel:v7 inFocus:*(a1 + 48)];
              [v7 setHighlighted:*(a1 + 48)];
            }

            if ([v7 tv_marqueeOnHighlight])
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (*(a1 + 48) == 1)
                {
                  v13 = v7;
                  v14 = 1;
                  goto LABEL_28;
                }

                if ([v10 isEqualToString:v15])
                {
                  [v7 stopAnimatingWithoutResetWithDuration:*(a1 + 40)];
                }

                else
                {
                  v14 = *(a1 + 48);
                  v13 = v7;
LABEL_28:
                  [v13 setAnimating:v14];
                }
              }
            }

            continue;
          }

          if ([v7 tv_showOnHighlight])
          {
            if (*(a1 + 48))
            {
              v12 = 1.0;
            }

            else
            {
              v12 = 0.0;
            }

            [v7 setAlpha:v12];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }
}

void __90___TVStackingPosterView_setSelected_animated_focusUpdateContext_withAnimationCoordinator___block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __90___TVStackingPosterView_setSelected_animated_focusUpdateContext_withAnimationCoordinator___block_invoke_7;
  v3[3] = &unk_279D6F8D0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 tv_performByPreventingAdditiveAnimations:v3];
}

uint64_t __90___TVStackingPosterView_setSelected_animated_focusUpdateContext_withAnimationCoordinator___block_invoke_7(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __63___TVStackingPosterView__updateSubviewHeirarchyWithComponents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 40) sendSubviewToBack:v3];
  }

  else
  {
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(a1 + 40) insertSubview:v3 atIndex:0];
  }
}

uint64_t __43___TVStackingPosterView__configureSubviews__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  [a2 constant];

  return [v2 numberWithDouble:?];
}

id __52___TVStackingPosterView__updateComponentConstraints__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  v11 = *v23;
  do
  {
    v12 = 0;
    do
    {
      if (*v23 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v22 + 1) + 8 * v12);
      v14 = [v13 firstItem];
      if (v14 != v6)
      {
        goto LABEL_9;
      }

      v15 = [v13 secondItem];
      v16 = v15;
      if (v15 != v7)
      {

LABEL_9:
        goto LABEL_10;
      }

      v17 = [v13 firstAttribute];

      if (v17 == a4)
      {
        v19 = v13;
        goto LABEL_16;
      }

LABEL_10:
      ++v12;
    }

    while (v10 != v12);
    v18 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    v10 = v18;
  }

  while (v18);
LABEL_15:
  v19 = 0;
LABEL_16:

  return v19;
}

void __48___TVStackingPosterView__cellMetricsForMaxSize___block_invoke(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v28 = a2;
  [v28 tv_margin];
  v8 = v7;
  [v28 tv_alignmentInsetsForExpectedWidth:*(a1 + 72) - (v9 + v10)];
  v12 = v11;
  if (!a3)
  {
    [v28 tv_margin];
    v14 = *(*(a1 + 64) + 8);
    v15 = v12 + v13 + *(v14 + 32);
    *(v14 + 32) = v15;
    *(*(*(a1 + 56) + 8) + 32) = v15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && *(a1 + 32) && [v28 tv_showOnHighlight])
  {
    v16 = [*(a1 + 40) objectAtIndex:a3 + 1];
    [v16 tv_margin];
    v18 = v17;
    [v16 tv_alignmentInsetsForExpectedWidth:*(a1 + 72) - (v19 + v20)];
    v22 = v21;
    v23 = *(a1 + 48);
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v25 = [v23 objectForKeyedSubscript:v24];
    [v25 doubleValue];
    *(*(*(a1 + 56) + 8) + 32) = *(*(*(a1 + 56) + 8) + 32) + v22 + fmax(v8, v18) + v26 - v12;

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  *a4 = v27;
}

void __48___TVStackingPosterView__cellMetricsForMaxSize___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v28 = a2;
  [v28 tv_margin];
  v8 = v7;
  [v28 tv_alignmentInsetsForExpectedWidth:*(a1 + 72) - (v9 + v10)];
  v12 = v11;
  if ([*(a1 + 32) count] - 1 == a3)
  {
    [v28 tv_margin];
    v14 = *(*(a1 + 64) + 8);
    v15 = v12 + v13 + *(v14 + 48);
    *(v14 + 48) = v15;
    *(*(*(a1 + 56) + 8) + 48) = v15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && *(a1 + 40) && [v28 tv_showOnHighlight])
  {
    v16 = [*(a1 + 32) objectAtIndex:a3 - 1];
    [v16 tv_margin];
    v18 = v17;
    [v16 tv_alignmentInsetsForExpectedWidth:*(a1 + 72) - (v19 + v20)];
    v22 = v21;
    v23 = *(a1 + 48);
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v25 = [v23 objectForKeyedSubscript:v24];
    [v25 doubleValue];
    *(*(*(a1 + 56) + 8) + 48) = *(*(*(a1 + 56) + 8) + 48) + v22 + fmax(v8, v18) + v26 - v12;

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  *a4 = v27;
}

@end