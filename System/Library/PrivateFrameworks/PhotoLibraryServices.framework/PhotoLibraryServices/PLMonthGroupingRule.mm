@interface PLMonthGroupingRule
- (BOOL)highlightItem:(id)item belongsToHighlightItemList:(id)list;
- (BOOL)highlightItemHasMinimumRequirementToBePromoted:(id)promoted withSharingConsideration:(int64_t)consideration;
- (PLMonthGroupingRule)init;
- (id)dominantMonthDateComponentForStartDateComponents:(id)components endDateComponents:(id)dateComponents numberOfDaysInMonthOfStartDate:(int64_t)date;
- (id)fallbackHighlightItemFromAllHighlightItems:(id)items withSharingConsideration:(int64_t)consideration;
- (id)highlightItemsSortedByImportance:(id)importance withSharingConsideration:(int64_t)consideration;
- (unint64_t)_extendedAssetsCountThresholdForHighlightItem:(id)item;
- (unint64_t)maximumNumberOfHighlightItemsToPromote;
- (void)titlesForHighlightItemList:(id)list dateRangeTitleGenerator:(id)generator forceUpdateLocale:(BOOL)locale resultBlock:(id)block;
@end

@implementation PLMonthGroupingRule

- (id)fallbackHighlightItemFromAllHighlightItems:(id)items withSharingConsideration:(int64_t)consideration
{
  allObjects = [items allObjects];
  v6 = [allObjects mutableCopy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__PLMonthGroupingRule_fallbackHighlightItemFromAllHighlightItems_withSharingConsideration___block_invoke;
  v11[3] = &__block_descriptor_40_e44_B24__0___PLHighlightItem__8__NSDictionary_16l;
  v11[4] = consideration;
  v7 = [MEMORY[0x1E696AE18] predicateWithBlock:v11];
  [v6 filterUsingPredicate:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__PLMonthGroupingRule_fallbackHighlightItemFromAllHighlightItems_withSharingConsideration___block_invoke_2;
  v10[3] = &__block_descriptor_40_e49_q24__0___PLHighlightItem__8___PLHighlightItem__16l;
  v10[4] = consideration;
  [v6 sortUsingComparator:v10];
  firstObject = [v6 firstObject];

  return firstObject;
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

- (id)highlightItemsSortedByImportance:(id)importance withSharingConsideration:(int64_t)consideration
{
  allObjects = [importance allObjects];
  v6 = [allObjects mutableCopy];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__PLMonthGroupingRule_highlightItemsSortedByImportance_withSharingConsideration___block_invoke;
  v8[3] = &__block_descriptor_40_e49_q24__0___PLHighlightItem__8___PLHighlightItem__16l;
  v8[4] = consideration;
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

- (unint64_t)_extendedAssetsCountThresholdForHighlightItem:(id)item
{
  itemCopy = item;
  v4 = _os_feature_enabled_impl();
  type = [itemCopy type];

  v7 = type == 4 || (type - 1) < 2;
  if (v4)
  {
    v7 = type == 5;
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

- (BOOL)highlightItemHasMinimumRequirementToBePromoted:(id)promoted withSharingConsideration:(int64_t)consideration
{
  promotedCopy = promoted;
  v7 = _os_feature_enabled_impl();
  type = [promotedCopy type];
  if (v7)
  {
    if (type == 6 || [promotedCopy kind])
    {
      goto LABEL_10;
    }
  }

  else if (type == 3 || [promotedCopy type] == 6 || objc_msgSend(promotedCopy, "type") == 5)
  {
    goto LABEL_10;
  }

  [promotedCopy promotionScore];
  if (v9 > 0.2 && ([promotedCopy isRecent] & 1) == 0)
  {
    v12 = [(PLMonthGroupingRule *)self _extendedAssetsCountThresholdForHighlightItem:promotedCopy];
    v10 = [promotedCopy numberOfAssetsInExtendedForSharingConsideration:consideration] > v12;
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

- (BOOL)highlightItem:(id)item belongsToHighlightItemList:(id)list
{
  v49 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  listCopy = list;
  groupingStartDate = [listCopy groupingStartDate];
  if (groupingStartDate)
  {
    v9 = groupingStartDate;
    groupingEndDate = [listCopy groupingEndDate];

    if (groupingEndDate)
    {
      calendar = [(PLMonthGroupingRule *)self calendar];
      groupingStartDate2 = [listCopy groupingStartDate];
      v13 = [calendar components:28 fromDate:groupingStartDate2];

      groupingEndDate2 = [listCopy groupingEndDate];
      v15 = [calendar components:28 fromDate:groupingEndDate2];

      startDate = [itemCopy startDate];
      v17 = [calendar components:28 fromDate:startDate];

      endDate = [itemCopy endDate];
      v19 = [calendar components:28 fromDate:endDate];

      v46 = v13;
      year = [v13 year];
      if (year != [v17 year])
      {
        year2 = [v15 year];
        if (year2 != [v19 year])
        {
          v34 = 0;
LABEL_18:

          goto LABEL_19;
        }
      }

      groupingStartDate3 = [listCopy groupingStartDate];
      [calendar rangeOfUnit:16 inUnit:8 forDate:groupingStartDate3];
      v24 = v23;

      startDate2 = [itemCopy startDate];
      [calendar rangeOfUnit:16 inUnit:8 forDate:startDate2];
      v27 = v26;

      v43 = v24;
      v45 = v15;
      v28 = [(PLMonthGroupingRule *)self dominantMonthDateComponentForStartDateComponents:v46 endDateComponents:v15 numberOfDaysInMonthOfStartDate:v24];
      v29 = [(PLMonthGroupingRule *)self dominantMonthDateComponentForStartDateComponents:v17 endDateComponents:v19 numberOfDaysInMonthOfStartDate:v27];
      month = [v28 month];
      if (month == [v29 month])
      {
        year3 = [v28 year];
        if (year3 == [v29 year])
        {
          month2 = [v28 month];
          if (month2 == [v19 month])
          {
            year4 = [v28 year];
            if (year4 == [v19 year])
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
          v42 = [calendar dateFromComponents:v36];
          endDate2 = [itemCopy endDate];
          v38 = [calendar components:16 fromDate:v42 toDate:endDate2 options:0];

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
    v48 = listCopy;
    _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "unexpected nil startDate/endDate for: %@", buf, 0xCu);
  }

  v34 = 0;
LABEL_19:

  return v34;
}

- (id)dominantMonthDateComponentForStartDateComponents:(id)components endDateComponents:(id)dateComponents numberOfDaysInMonthOfStartDate:(int64_t)date
{
  componentsCopy = components;
  dateComponentsCopy = dateComponents;
  if (date - [componentsCopy day] >= 5)
  {
    goto LABEL_2;
  }

  month = [componentsCopy month];
  month2 = [dateComponentsCopy month];
  year = [dateComponentsCopy year];
  year2 = [componentsCopy year];
  v16 = month - month2 - 12 * (year - year2);
  if (v16 < 0)
  {
    v16 = 12 * (year - year2) - (month - month2);
  }

  if (v16 < 2)
  {
    v17 = date - [componentsCopy day];
    if (v17 < [dateComponentsCopy day])
    {
      v9 = dateComponentsCopy;
      goto LABEL_3;
    }

LABEL_2:
    v9 = componentsCopy;
LABEL_3:
    v10 = v9;
    goto LABEL_4;
  }

  v10 = [componentsCopy copy];
  [v10 setMonth:{objc_msgSend(v10, "month") + 1}];
  if ([v10 month] >= 13)
  {
    [v10 setMonth:1];
    [v10 setYear:{objc_msgSend(v10, "year") + 1}];
  }

LABEL_4:

  return v10;
}

- (void)titlesForHighlightItemList:(id)list dateRangeTitleGenerator:(id)generator forceUpdateLocale:(BOOL)locale resultBlock:(id)block
{
  localeCopy = locale;
  v39 = *MEMORY[0x1E69E9840];
  listCopy = list;
  generatorCopy = generator;
  blockCopy = block;
  calendar = [(PLMonthGroupingRule *)self calendar];
  sortedChildHighlightItems = [listCopy sortedChildHighlightItems];
  if ([sortedChildHighlightItems count])
  {
    firstObject = [sortedChildHighlightItems firstObject];
    endDate = [firstObject endDate];

    lastObject = [sortedChildHighlightItems lastObject];
    startDate = [lastObject startDate];

    if (startDate && endDate)
    {
      v19 = [startDate earlierDate:endDate];

      v35 = localeCopy;
      if (v19)
      {
        v20 = startDate;

        endDate = v20;
      }

      v34 = sortedChildHighlightItems;
      v36 = listCopy;
      v21 = [calendar components:30 fromDate:endDate];
      v22 = [calendar components:30 fromDate:startDate];
      month = [v21 month];
      if (month != [v22 month])
      {
        [calendar rangeOfUnit:16 inUnit:8 forDate:endDate];
        if (v24 - [v21 day] <= 5)
        {
          [v21 setMonth:{objc_msgSend(v21, "month") + 1}];
          [v21 setDay:10];
        }

        month2 = [v21 month];
        if (month2 != [v22 month] && objc_msgSend(v22, "day") <= 4)
        {
          [v22 setMonth:{objc_msgSend(v22, "month") - 1}];
          [v22 setDay:10];
        }
      }

      v26 = [calendar dateFromComponents:v21];
      [calendar dateFromComponents:v22];
      v28 = v27 = calendar;
      [generatorCopy dateRangeTitleWithStartDate:v26 endDate:v28 category:0 kind:1 type:0 options:v35];
      v29 = endDate;
      v31 = v30 = v22;
      blockCopy[2](blockCopy, 0, v31);

      calendar = v27;
      endDate = v29;

      listCopy = v36;
      sortedChildHighlightItems = v34;
    }

    else
    {
      v33 = PLMomentsGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v38 = listCopy;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_FAULT, "Cannot generate title, unexpected nil startDate/endDate for: %@", buf, 0xCu);
      }

      blockCopy[2](blockCopy, 0, 0);
    }
  }

  else
  {
    v32 = PLMomentsGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v38 = listCopy;
      _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_FAULT, "Cannot generate title, no child highlights for: %@", buf, 0xCu);
    }

    blockCopy[2](blockCopy, 0, 0);
  }
}

- (PLMonthGroupingRule)init
{
  v6.receiver = self;
  v6.super_class = PLMonthGroupingRule;
  v2 = [(PLMonthGroupingRule *)&v6 init];
  if (v2)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    calendar = v2->_calendar;
    v2->_calendar = currentCalendar;
  }

  return v2;
}

@end