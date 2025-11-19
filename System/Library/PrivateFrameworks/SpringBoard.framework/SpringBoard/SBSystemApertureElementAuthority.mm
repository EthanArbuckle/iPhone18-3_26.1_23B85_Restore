@interface SBSystemApertureElementAuthority
- (BOOL)elementRequiresBeingDisplayedAlone:(id)a3;
- (SBSystemApertureElementAuthorityDelegate)elementAuthorityDelegate;
- (id)elementsOrderedByPromotionFromTemporallyOrderedElements:(id)a3 withPreviousOrdering:(id)a4;
@end

@implementation SBSystemApertureElementAuthority

- (id)elementsOrderedByPromotionFromTemporallyOrderedElements:(id)a3 withPreviousOrdering:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count] <= 1)
  {
    v8 = v6;
    goto LABEL_29;
  }

  v9 = SBLogSystemApertureMediation();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 bs_mapNoNulls:&__block_literal_global_30_2];
    v11 = [v7 bs_mapNoNulls:&__block_literal_global_32_3];
    *buf = 138543618;
    v40 = v10;
    v41 = 2114;
    v42 = v11;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Ordering elements by promotion: temporallyOrderedElements: %{public}@; previouslyOrderedElements: %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_elementAuthorityDelegate);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __113__SBSystemApertureElementAuthority_elementsOrderedByPromotionFromTemporallyOrderedElements_withPreviousOrdering___block_invoke_33;
  v35[3] = &unk_2783BAAC0;
  v13 = WeakRetained;
  v36 = v13;
  v37 = self;
  v38 = v6;
  v8 = [v38 sortedArrayUsingComparator:v35];
  v14 = SBLogSystemApertureMediation();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v8 bs_mapNoNulls:&__block_literal_global_69_1];
    *buf = 138543362;
    v40 = v15;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Ordered elements after initial sort: %{public}@", buf, 0xCu);
  }

  v16 = [v13 systemApertureApertureElementAuthorityMaximumNumberOfSimultaneouslyVisibleElements:self];
  if ([v8 count] <= v16)
  {
    goto LABEL_28;
  }

  v17 = [v8 firstObject];
  v18 = [v13 systemApertureApertureElementAuthority:self preferredLayoutModeForElement:v17];

  if (v18 > 2)
  {
    goto LABEL_28;
  }

  v33 = v7;
  v34 = v6;
  if (![v8 count])
  {
    v20 = 0;
    v19 = 0;
    goto LABEL_25;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  while (1)
  {
    v22 = [v8 objectAtIndexedSubscript:v21];
    v23 = [v13 systemApertureApertureElementAuthority:self isElementPreferringToRemainVisible:v22];
    if (((v23 | [v13 systemApertureApertureElementAuthority:self isElementRequiredPriority:v22]) & 1) != 0 && v21 >= v16)
    {
      break;
    }

LABEL_19:

    if (++v21 >= [v8 count])
    {
      goto LABEL_25;
    }
  }

  if (v19)
  {
    if (v20)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v20)
    {
      goto LABEL_15;
    }
  }

  v20 = objc_alloc_init(MEMORY[0x277CCAB58]);
LABEL_15:
  if ([v19 count] < v16)
  {
    v24 = SBLogSystemApertureMediation();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = _SBShortElementDescription(v22);
      *buf = 138543362;
      v40 = v25;
      _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Prioritizing '%{public}@' since it prefers visibility", buf, 0xCu);
    }

    [v19 addObject:v22];
    [v20 addIndex:v21];
    goto LABEL_19;
  }

LABEL_25:
  v26 = [v19 count];
  v7 = v33;
  if (v26)
  {
    v27 = v26;
    v28 = [v8 mutableCopy];
    [v28 removeObjectsAtIndexes:v20];
    v29 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{v16 - v27, v27}];
    [v28 insertObjects:v19 atIndexes:v29];

    v8 = v28;
  }

  v6 = v34;
LABEL_28:

LABEL_29:
  v30 = SBLogSystemApertureMediation();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v8 bs_mapNoNulls:&__block_literal_global_75_0];
    *buf = 138543362;
    v40 = v31;
    _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_DEFAULT, "Elements ordered by promotion: %{public}@", buf, 0xCu);
  }

  return v8;
}

uint64_t __113__SBSystemApertureElementAuthority_elementsOrderedByPromotionFromTemporallyOrderedElements_withPreviousOrdering___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) systemApertureApertureElementAuthority:*(a1 + 40) preferredLayoutModeForElement:v5];
  v8 = [*(a1 + 32) systemApertureApertureElementAuthority:*(a1 + 40) preferredLayoutModeForElement:v6];
  if (v7 <= 0 && v8 < 1)
  {
    v33 = 0;
    v32 = @"Neither element visible";
    goto LABEL_41;
  }

  v10 = v8;
  if (v7 >= 1 && v8 <= 0)
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = _SBShortElementDescription(v5);
    v28 = _SBShortElementDescription(v6);
    v32 = [v26 stringWithFormat:@"Element '%@' visible while '%@' is not", v27, v28];

    v33 = -1;
    goto LABEL_41;
  }

  if (v7 <= 0 && v8 >= 1)
  {
    v29 = MEMORY[0x277CCACA8];
    v30 = _SBShortElementDescription(v6);
    v31 = _SBShortElementDescription(v5);
    v32 = [v29 stringWithFormat:@"Element '%@' visible while '%@' is not", v30, v31];

    v33 = 1;
    goto LABEL_41;
  }

  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __113__SBSystemApertureElementAuthority_elementsOrderedByPromotionFromTemporallyOrderedElements_withPreviousOrdering___block_invoke_2_37;
  v59[3] = &unk_2783BAA98;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v60 = v13;
  v61 = v14;
  v15 = MEMORY[0x223D6F7F0](v59);
  v16 = [*(a1 + 32) systemApertureApertureElementAuthority:*(a1 + 40) isElementRequiredPriority:v5];
  v17 = [*(a1 + 32) systemApertureApertureElementAuthority:*(a1 + 40) isElementRequiredPriority:v6];
  v57 = [*(a1 + 32) systemApertureApertureElementAuthority:*(a1 + 40) isElementUrgentlyVisible:v5];
  v18 = [*(a1 + 32) systemApertureApertureElementAuthority:*(a1 + 40) isElementUrgentlyVisible:v6];
  v19 = (v15)[2](v15, v5, v7);
  v20 = (v15)[2](v15, v6, v10);
  if (v16 && v17)
  {
    v21 = [*(a1 + 48) indexOfObject:v5];
    v22 = [*(a1 + 48) indexOfObject:v6];
    v23 = MEMORY[0x277CCACA8];
    if (v21 <= v22)
    {
      v24 = _SBShortElementDescription(v5);
      v25 = v6;
    }

    else
    {
      v24 = _SBShortElementDescription(v6);
      v25 = v5;
    }

    v40 = _SBShortElementDescription(v25);
    v32 = [v23 stringWithFormat:@"Both elements required priority, element '%@' temporally after '%@'", v24, v40];
    if (v21 > v22)
    {
      goto LABEL_28;
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v16)
  {
    v34 = MEMORY[0x277CCACA8];
    v35 = _SBShortElementDescription(v5);
    v36 = _SBShortElementDescription(v6);
    [v34 stringWithFormat:@"Element '%@' is required priority while '%@' is not", v35, v36];
    v32 = LABEL_22:;

LABEL_39:
    v33 = -1;
    goto LABEL_40;
  }

  if (v17)
  {
    v37 = MEMORY[0x277CCACA8];
    v38 = _SBShortElementDescription(v6);
    v39 = _SBShortElementDescription(v5);
    [v37 stringWithFormat:@"Element '%@' is required priority while '%@' is not", v38, v39];
    goto LABEL_25;
  }

  if ((v57 & v18) == 1)
  {
    v41 = [*(a1 + 48) indexOfObject:v5];
    v42 = [*(a1 + 48) indexOfObject:v6];
    v43 = MEMORY[0x277CCACA8];
    if (v41 <= v42)
    {
      v24 = _SBShortElementDescription(v6);
      v44 = v5;
    }

    else
    {
      v24 = _SBShortElementDescription(v5);
      v44 = v6;
    }

    v40 = _SBShortElementDescription(v44);
    [v43 stringWithFormat:@"Both elements urgent and important, element '%@' temporally after '%@'", v24, v40];
    goto LABEL_37;
  }

  if (v57)
  {
    v45 = MEMORY[0x277CCACA8];
    v35 = _SBShortElementDescription(v5);
    v36 = _SBShortElementDescription(v6);
    [v45 stringWithFormat:@"Element '%@' is urgent while '%@' is not", v35, v36];
    goto LABEL_22;
  }

  if (v18)
  {
    v52 = MEMORY[0x277CCACA8];
    v38 = _SBShortElementDescription(v6);
    v39 = _SBShortElementDescription(v5);
    [v52 stringWithFormat:@"Element '%@' is urgent while '%@' is not", v38, v39];
    goto LABEL_25;
  }

  if ((v19 & v20) == 1)
  {
    v41 = [*(a1 + 48) indexOfObject:v5];
    v42 = [*(a1 + 48) indexOfObject:v6];
    v53 = MEMORY[0x277CCACA8];
    if (v41 <= v42)
    {
      v24 = _SBShortElementDescription(v6);
      v54 = v5;
    }

    else
    {
      v24 = _SBShortElementDescription(v5);
      v54 = v6;
    }

    v40 = _SBShortElementDescription(v54);
    [v53 stringWithFormat:@"Both elements alerts, alerting activities, or expanded due to user interaction, element '%@' temporally after '%@'", v24, v40];
    v32 = LABEL_37:;
    if (v41 <= v42)
    {
LABEL_28:

      goto LABEL_29;
    }

    goto LABEL_38;
  }

  if (v19)
  {
    v55 = MEMORY[0x277CCACA8];
    v35 = _SBShortElementDescription(v5);
    v36 = _SBShortElementDescription(v6);
    [v55 stringWithFormat:@"Element '%@' is an alert, alerting activity, or expanded due to user interaction while '%@' is not", v35, v36];
    goto LABEL_22;
  }

  if (!v20)
  {
    v58 = 0;
    v33 = _CompareActivityElementsByElementIdentifier(v5, v6, &v58);
    v32 = v58;
    goto LABEL_40;
  }

  v56 = MEMORY[0x277CCACA8];
  v38 = _SBShortElementDescription(v6);
  v39 = _SBShortElementDescription(v5);
  [v56 stringWithFormat:@"Element '%@' is an alert, alerting activity, or expanded due to user interaction while '%@' is not", v38, v39];
  v32 = LABEL_25:;

LABEL_29:
  v33 = 1;
LABEL_40:

LABEL_41:
  v46 = SBLogSystemApertureMediation();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    if (v33 == 1)
    {
      v47 = _SBShortElementDescription(v6);
      v48 = @"over";
      v49 = v5;
    }

    else
    {
      v47 = _SBShortElementDescription(v5);
      if (v33)
      {
        v48 = @"over";
      }

      else
      {
        v48 = @"same as";
      }

      v49 = v6;
    }

    v50 = _SBShortElementDescription(v49);
    *buf = 138544130;
    v63 = v47;
    v64 = 2114;
    v65 = v48;
    v66 = 2114;
    v67 = v50;
    v68 = 2114;
    v69 = v32;
    _os_log_impl(&dword_21ED4E000, v46, OS_LOG_TYPE_DEFAULT, "Prioritizing '%{public}@' %{public}@ '%{public}@' (%{public}@)", buf, 0x2Au);
  }

  return v33;
}

uint64_t __113__SBSystemApertureElementAuthority_elementsOrderedByPromotionFromTemporallyOrderedElements_withPreviousOrdering___block_invoke_2_37(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (SAHasAlertBehavior() & 1) != 0 || SAHasActivityBehavior() && ([*(a1 + 32) systemApertureApertureElementAuthority:*(a1 + 40) isActivityElementAlerting:v5])
  {
    v6 = 1;
  }

  else if (a3 == 3)
  {
    v6 = [*(a1 + 32) systemApertureApertureElementAuthority:*(a1 + 40) isElementExpandedDueToUserInteraction:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)elementRequiresBeingDisplayedAlone:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_elementAuthorityDelegate);
  if (SAHasActivityBehavior() && ([WeakRetained systemApertureApertureElementAuthority:self isActivityElementAlerting:v4] & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = [WeakRetained systemApertureApertureElementAuthority:self isElementUrgentlyVisible:v4];
  }

  return v6;
}

- (SBSystemApertureElementAuthorityDelegate)elementAuthorityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_elementAuthorityDelegate);

  return WeakRetained;
}

@end