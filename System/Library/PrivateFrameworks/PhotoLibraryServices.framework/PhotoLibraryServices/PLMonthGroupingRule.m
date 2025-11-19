@interface PLMonthGroupingRule
- (BOOL)highlightItem:(id)a3 belongsToHighlightItemList:(id)a4;
- (BOOL)highlightItemHasMinimumRequirementToBePromoted:(id)a3 withSharingConsideration:(int64_t)a4;
- (PLMonthGroupingRule)init;
- (id)dominantMonthDateComponentForStartDateComponents:(id)a3 endDateComponents:(id)a4 numberOfDaysInMonthOfStartDate:(int64_t)a5;
- (id)fallbackHighlightItemFromAllHighlightItems:(id)a3 withSharingConsideration:(int64_t)a4;
- (id)highlightItemsSortedByImportance:(id)a3 withSharingConsideration:(int64_t)a4;
- (unint64_t)_extendedAssetsCountThresholdForHighlightItem:(id)a3;
- (unint64_t)maximumNumberOfHighlightItemsToPromote;
- (void)titlesForHighlightItemList:(id)a3 dateRangeTitleGenerator:(id)a4 forceUpdateLocale:(BOOL)a5 resultBlock:(id)a6;
@end

@implementation PLMonthGroupingRule

- (id)fallbackHighlightItemFromAllHighlightItems:(id)a3 withSharingConsideration:(int64_t)a4
{
  v5 = [a3 allObjects];
  v6 = [v5 mutableCopy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__PLMonthGroupingRule_fallbackHighlightItemFromAllHighlightItems_withSharingConsideration___block_invoke;
  v11[3] = &__block_descriptor_40_e44_B24__0___PLHighlightItem__8__NSDictionary_16l;
  v11[4] = a4;
  v7 = [MEMORY[0x1E696AE18] predicateWithBlock:v11];
  [v6 filterUsingPredicate:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__PLMonthGroupingRule_fallbackHighlightItemFromAllHighlightItems_withSharingConsideration___block_invoke_2;
  v10[3] = &__block_descriptor_40_e49_q24__0___PLHighlightItem__8___PLHighlightItem__16l;
  v10[4] = a4;
  [v6 sortUsingComparator:v10];
  v8 = [v6 firstObject];

  return v8;
}

BOOL __91__PLMonthGroupingRule_fallbackHighlightItemFromAllHighlightItems_withSharingConsideration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isRecent])
  {
    _os_feature_enabled_impl();
LABEL_3:
    v4 = 0;
    goto LABEL_4;
  }

  [v3 promotionScore];
  v7 = v6;
  if (_os_feature_enabled_impl())
  {
    if (v7 <= 0.2 || [v3 kind])
    {
      goto LABEL_3;
    }
  }

  else if (v7 <= 0.2 || [v3 type] == 6 || objc_msgSend(v3, "type") == 5)
  {
    goto LABEL_3;
  }

  v4 = *(a1 + 32) == 2 || [v3 numberOfAssetsInExtendedForSharingConsideration:?] != 0;
LABEL_4:

  return v4;
}

uint64_t __91__PLMonthGroupingRule_fallbackHighlightItemFromAllHighlightItems_withSharingConsideration___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _os_feature_enabled_impl();
  v8 = [v5 type];
  if (v7)
  {
    if (v8 == 6 && [v6 type] != 6)
    {
      goto LABEL_12;
    }

    if ([v5 type] != 6 && objc_msgSend(v6, "type") == 6)
    {
LABEL_14:
      v10 = 1;
      goto LABEL_16;
    }
  }

  else
  {
    if (v8 == 3 && [v6 type] != 3)
    {
      goto LABEL_12;
    }

    if ([v5 type] != 3 && objc_msgSend(v6, "type") == 3)
    {
      goto LABEL_14;
    }
  }

  v9 = [v5 numberOfAssetsInExtendedForSharingConsideration:*(a1 + 32)];
  if (v9 <= [v6 numberOfAssetsInExtendedForSharingConsideration:*(a1 + 32)])
  {
    v11 = [v5 numberOfAssetsInExtendedForSharingConsideration:*(a1 + 32)];
    if (v11 >= [v6 numberOfAssetsInExtendedForSharingConsideration:*(a1 + 32)])
    {
      v12 = [v5 startDate];
      v13 = [v6 startDate];
      v10 = [v12 compare:v13];

      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_12:
  v10 = -1;
LABEL_16:

  return v10;
}

- (id)highlightItemsSortedByImportance:(id)a3 withSharingConsideration:(int64_t)a4
{
  v5 = [a3 allObjects];
  v6 = [v5 mutableCopy];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__PLMonthGroupingRule_highlightItemsSortedByImportance_withSharingConsideration___block_invoke;
  v8[3] = &__block_descriptor_40_e49_q24__0___PLHighlightItem__8___PLHighlightItem__16l;
  v8[4] = a4;
  [v6 sortUsingComparator:v8];

  return v6;
}

uint64_t __81__PLMonthGroupingRule_highlightItemsSortedByImportance_withSharingConsideration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _os_feature_enabled_impl();
  v8 = [v5 type];
  v9 = v8;
  if (v7)
  {
    v10 = [v6 type];
    if (v9 == 5 && v10 != 5)
    {
      goto LABEL_24;
    }

    if (v9 != 5 && v10 == 5)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v11 = v8 - 1;
  v12 = [v6 type];
  v14 = v12 != 4 && v12 - 3 < 0xFFFFFFFE;
  v15 = v11 < 2 || v9 == 4;
  if (!v15 || (v16 = -1, v12 <= 4) && ((1 << v12) & 0x16) != 0)
  {
    if (v14 || (v16 = 1, v9 <= 4) && ((1 << v9) & 0x16) != 0)
    {
LABEL_23:
      v17 = [v5 numberOfAssetsInExtendedForSharingConsideration:*(a1 + 32)];
      v18 = [v6 numberOfAssetsInExtendedForSharingConsideration:*(a1 + 32)];
      if (v17 > v18)
      {
LABEL_24:
        v16 = -1;
        goto LABEL_28;
      }

      if (v17 >= v18)
      {
        v19 = [v5 startDate];
        v20 = [v6 startDate];
        v16 = [v19 compare:v20];

        goto LABEL_28;
      }

LABEL_26:
      v16 = 1;
    }
  }

LABEL_28:

  return v16;
}

- (unint64_t)_extendedAssetsCountThresholdForHighlightItem:(id)a3
{
  v3 = a3;
  v4 = _os_feature_enabled_impl();
  v5 = [v3 type];

  v7 = v5 == 4 || (v5 - 1) < 2;
  if (v4)
  {
    v7 = v5 == 5;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

- (BOOL)highlightItemHasMinimumRequirementToBePromoted:(id)a3 withSharingConsideration:(int64_t)a4
{
  v6 = a3;
  v7 = _os_feature_enabled_impl();
  v8 = [v6 type];
  if (v7)
  {
    if (v8 == 6 || [v6 kind])
    {
      goto LABEL_10;
    }
  }

  else if (v8 == 3 || [v6 type] == 6 || objc_msgSend(v6, "type") == 5)
  {
    goto LABEL_10;
  }

  [v6 promotionScore];
  if (v9 > 0.2 && ([v6 isRecent] & 1) == 0)
  {
    v12 = [(PLMonthGroupingRule *)self _extendedAssetsCountThresholdForHighlightItem:v6];
    v10 = [v6 numberOfAssetsInExtendedForSharingConsideration:a4] > v12;
    goto LABEL_11;
  }

LABEL_10:
  v10 = 0;
LABEL_11:

  return v10;
}

- (unint64_t)maximumNumberOfHighlightItemsToPromote
{
  if (_os_feature_enabled_impl())
  {
    return 6;
  }

  else
  {
    return 5;
  }
}

- (BOOL)highlightItem:(id)a3 belongsToHighlightItemList:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 groupingStartDate];
  if (v8)
  {
    v9 = v8;
    v10 = [v7 groupingEndDate];

    if (v10)
    {
      v11 = [(PLMonthGroupingRule *)self calendar];
      v12 = [v7 groupingStartDate];
      v13 = [v11 components:28 fromDate:v12];

      v14 = [v7 groupingEndDate];
      v15 = [v11 components:28 fromDate:v14];

      v16 = [v6 startDate];
      v17 = [v11 components:28 fromDate:v16];

      v18 = [v6 endDate];
      v19 = [v11 components:28 fromDate:v18];

      v46 = v13;
      v20 = [v13 year];
      if (v20 != [v17 year])
      {
        v21 = [v15 year];
        if (v21 != [v19 year])
        {
          v34 = 0;
LABEL_18:

          goto LABEL_19;
        }
      }

      v22 = [v7 groupingStartDate];
      [v11 rangeOfUnit:16 inUnit:8 forDate:v22];
      v24 = v23;

      v25 = [v6 startDate];
      [v11 rangeOfUnit:16 inUnit:8 forDate:v25];
      v27 = v26;

      v43 = v24;
      v45 = v15;
      v28 = [(PLMonthGroupingRule *)self dominantMonthDateComponentForStartDateComponents:v46 endDateComponents:v15 numberOfDaysInMonthOfStartDate:v24];
      v29 = [(PLMonthGroupingRule *)self dominantMonthDateComponentForStartDateComponents:v17 endDateComponents:v19 numberOfDaysInMonthOfStartDate:v27];
      v30 = [v28 month];
      if (v30 == [v29 month])
      {
        v31 = [v28 year];
        if (v31 == [v29 year])
        {
          v32 = [v28 month];
          if (v32 == [v19 month])
          {
            v33 = [v28 year];
            if (v33 == [v19 year])
            {
              v34 = 1;
LABEL_17:

              v15 = v45;
              goto LABEL_18;
            }
          }

          v36 = [v28 copy];
          [v36 setMonth:{objc_msgSend(v36, "month") + 1}];
          [v36 setDay:0];
          v42 = [v11 dateFromComponents:v36];
          v37 = [v6 endDate];
          v38 = [v11 components:16 fromDate:v42 toDate:v37 options:0];

          v39 = v43 - [v17 day];
          v44 = [v38 day];

          v40 = v39;
          v34 = 1;
          if (v40 > 3 || v40 + 1 >= v44)
          {
            goto LABEL_17;
          }
        }
      }

      v34 = 0;
      goto LABEL_17;
    }
  }

  v35 = PLMomentsGetLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v48 = v7;
    _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "unexpected nil startDate/endDate for: %@", buf, 0xCu);
  }

  v34 = 0;
LABEL_19:

  return v34;
}

- (id)dominantMonthDateComponentForStartDateComponents:(id)a3 endDateComponents:(id)a4 numberOfDaysInMonthOfStartDate:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (a5 - [v7 day] >= 5)
  {
    goto LABEL_2;
  }

  v12 = [v7 month];
  v13 = [v8 month];
  v14 = [v8 year];
  v15 = [v7 year];
  v16 = v12 - v13 - 12 * (v14 - v15);
  if (v16 < 0)
  {
    v16 = 12 * (v14 - v15) - (v12 - v13);
  }

  if (v16 < 2)
  {
    v17 = a5 - [v7 day];
    if (v17 < [v8 day])
    {
      v9 = v8;
      goto LABEL_3;
    }

LABEL_2:
    v9 = v7;
LABEL_3:
    v10 = v9;
    goto LABEL_4;
  }

  v10 = [v7 copy];
  [v10 setMonth:{objc_msgSend(v10, "month") + 1}];
  if ([v10 month] >= 13)
  {
    [v10 setMonth:1];
    [v10 setYear:{objc_msgSend(v10, "year") + 1}];
  }

LABEL_4:

  return v10;
}

- (void)titlesForHighlightItemList:(id)a3 dateRangeTitleGenerator:(id)a4 forceUpdateLocale:(BOOL)a5 resultBlock:(id)a6
{
  v7 = a5;
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(PLMonthGroupingRule *)self calendar];
  v14 = [v10 sortedChildHighlightItems];
  if ([v14 count])
  {
    v15 = [v14 firstObject];
    v16 = [v15 endDate];

    v17 = [v14 lastObject];
    v18 = [v17 startDate];

    if (v18 && v16)
    {
      v19 = [v18 earlierDate:v16];

      v35 = v7;
      if (v19)
      {
        v20 = v18;

        v16 = v20;
      }

      v34 = v14;
      v36 = v10;
      v21 = [v13 components:30 fromDate:v16];
      v22 = [v13 components:30 fromDate:v18];
      v23 = [v21 month];
      if (v23 != [v22 month])
      {
        [v13 rangeOfUnit:16 inUnit:8 forDate:v16];
        if (v24 - [v21 day] <= 5)
        {
          [v21 setMonth:{objc_msgSend(v21, "month") + 1}];
          [v21 setDay:10];
        }

        v25 = [v21 month];
        if (v25 != [v22 month] && objc_msgSend(v22, "day") <= 4)
        {
          [v22 setMonth:{objc_msgSend(v22, "month") - 1}];
          [v22 setDay:10];
        }
      }

      v26 = [v13 dateFromComponents:v21];
      [v13 dateFromComponents:v22];
      v28 = v27 = v13;
      [v11 dateRangeTitleWithStartDate:v26 endDate:v28 category:0 kind:1 type:0 options:v35];
      v29 = v16;
      v31 = v30 = v22;
      v12[2](v12, 0, v31);

      v13 = v27;
      v16 = v29;

      v10 = v36;
      v14 = v34;
    }

    else
    {
      v33 = PLMomentsGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v38 = v10;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_FAULT, "Cannot generate title, unexpected nil startDate/endDate for: %@", buf, 0xCu);
      }

      v12[2](v12, 0, 0);
    }
  }

  else
  {
    v32 = PLMomentsGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v38 = v10;
      _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_FAULT, "Cannot generate title, no child highlights for: %@", buf, 0xCu);
    }

    v12[2](v12, 0, 0);
  }
}

- (PLMonthGroupingRule)init
{
  v6.receiver = self;
  v6.super_class = PLMonthGroupingRule;
  v2 = [(PLMonthGroupingRule *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DEE8] currentCalendar];
    calendar = v2->_calendar;
    v2->_calendar = v3;
  }

  return v2;
}

@end