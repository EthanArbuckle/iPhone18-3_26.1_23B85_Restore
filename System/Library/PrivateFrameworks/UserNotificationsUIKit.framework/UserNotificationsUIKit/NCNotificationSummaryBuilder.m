@interface NCNotificationSummaryBuilder
- (NCNotificationSummaryBuilder)initWithStyle:(unint64_t)a3;
- (id)_buildSummaryText;
- (id)_defaultLocalizedSummaryWithNotificationsCount:(unint64_t)a3;
- (id)_defaultLocalizedSummaryWithNotificationsCount:(unint64_t)a3 arguments:(id)a4;
- (id)_filteredArgumentsArrayWithArguments:(id)a3;
- (id)_formatListWithArguments:(id)a3 truncated:(BOOL)a4 truncatedArgumentsCount:(unint64_t *)a5;
- (id)_localizedSummaryWithFormat:(id)a3 notificationsCount:(unint64_t)a4 arguments:(id)a5;
- (id)_localizedSummaryWithFormats:(id)a3 andCounts:(id)a4;
- (id)description;
- (unint64_t)_summaryNotificationsCount;
- (void)_addNotificationRequest:(id)a3;
- (void)_insertString:(id)a3 intoSequence:(id)a4 withCounters:(id)a5;
- (void)_updateSummaryText;
- (void)updateWithNotificationRequests:(id)a3;
@end

@implementation NCNotificationSummaryBuilder

- (void)_updateSummaryText
{
  self->_summaryText = [(NCNotificationSummaryBuilder *)self _buildSummaryText];

  MEMORY[0x2821F96F8]();
}

- (id)_buildSummaryText
{
  v3 = [(NCNotificationSummaryBuilder *)self _summaryNotificationsCount];
  if (v3)
  {
    v4 = v3;
    if (self->_style == 1)
    {
      goto LABEL_3;
    }

    v7 = self->_defaultFormatsCount + [(NSMutableOrderedSet *)self->_formatStrings count];
    formatStrings = self->_formatStrings;
    if (v7 != 1)
    {
      if (self->_defaultFormatsCount + [(NSMutableOrderedSet *)formatStrings count]>= 2 && ![(NSMutableDictionary *)self->_argumentsCounts count])
      {
        v5 = [(NCNotificationSummaryBuilder *)self _localizedSummaryWithFormats:self->_formatStrings andCounts:self->_formatStringsCounts];
        goto LABEL_4;
      }

      if ([(NSMutableOrderedSet *)self->_arguments count]&& !self->_emptyArgumentsCount)
      {
        v5 = [(NCNotificationSummaryBuilder *)self _defaultLocalizedSummaryWithNotificationsCount:v4 arguments:self->_arguments];
        goto LABEL_4;
      }

LABEL_3:
      v5 = [(NCNotificationSummaryBuilder *)self _defaultLocalizedSummaryWithNotificationsCount:v4];
LABEL_4:
      v6 = v5;
      goto LABEL_8;
    }

    v9 = [(NSMutableOrderedSet *)formatStrings firstObject];
    v6 = [(NCNotificationSummaryBuilder *)self _localizedSummaryWithFormat:v9 notificationsCount:v4 arguments:self->_arguments];
  }

  else
  {
    v6 = 0;
  }

LABEL_8:

  return v6;
}

- (unint64_t)_summaryNotificationsCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  notificationRequests = self->_notificationRequests;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__NCNotificationSummaryBuilder__summaryNotificationsCount__block_invoke;
  v5[3] = &unk_278371C30;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableArray *)notificationRequests bs_each:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NCNotificationSummaryBuilder)initWithStyle:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = NCNotificationSummaryBuilder;
  result = [(NCNotificationSummaryBuilder *)&v5 init];
  if (result)
  {
    result->_style = a3;
  }

  return result;
}

- (void)updateWithNotificationRequests:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  notificationRequests = self->_notificationRequests;
  self->_notificationRequests = v5;

  v7 = objc_opt_new();
  formatStrings = self->_formatStrings;
  self->_formatStrings = v7;

  v9 = objc_opt_new();
  formatStringsCounts = self->_formatStringsCounts;
  self->_formatStringsCounts = v9;

  v11 = objc_opt_new();
  arguments = self->_arguments;
  self->_arguments = v11;

  v13 = objc_opt_new();
  argumentsCounts = self->_argumentsCounts;
  self->_argumentsCounts = v13;

  self->_defaultFormatsCount = 0;
  self->_emptyArgumentsCount = 0;
  summaryText = self->_summaryText;
  self->_summaryText = 0;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = v4;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(NCNotificationSummaryBuilder *)self _addNotificationRequest:*(*(&v23 + 1) + 8 * v20++), v23];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  if ([(NCNotificationSummaryBuilder *)self _includeLeadingNotificationRequest])
  {
    v21 = 0;
  }

  else
  {
    v21 = [v16 firstObject];
  }

  leadingNotificationRequest = self->_leadingNotificationRequest;
  self->_leadingNotificationRequest = v21;

  [(NCNotificationSummaryBuilder *)self _updateSummaryText];
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(NCNotificationSummaryBuilder *)self summaryText];
  [v3 appendString:v4 withName:@"summaryText"];

  v5 = [v3 appendUnsignedInteger:-[NSMutableArray count](self->_notificationRequests withName:{"count"), @"notificationRequests"}];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __43__NCNotificationSummaryBuilder_description__block_invoke;
  v12 = &unk_27836F560;
  v13 = v3;
  v14 = self;
  v6 = v3;
  [v6 appendBodySectionWithName:0 multilinePrefix:0 block:&v9];
  v7 = [v6 build];

  return v7;
}

void __43__NCNotificationSummaryBuilder_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 24);
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v3, "count")}];
  v5 = [v3 objectsAtIndexes:v4];
  [v2 appendArraySection:v5 withName:@"formatStrings" skipIfEmpty:0];

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 40);
  v9 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v7, "count")}];
  v8 = [v7 objectsAtIndexes:v9];
  [v6 appendArraySection:v8 withName:@"arguments" skipIfEmpty:0];
}

- (void)_addNotificationRequest:(id)a3
{
  v8 = a3;
  [(NSMutableArray *)self->_notificationRequests addObject:v8];
  v4 = [v8 content];
  v5 = [v4 categorySummaryFormat];

  if (![v5 length])
  {
    ++self->_defaultFormatsCount;
  }

  [(NCNotificationSummaryBuilder *)self _insertString:v5 intoSequence:self->_formatStrings withCounters:self->_formatStringsCounts];
  v6 = [v8 content];
  v7 = [v6 summaryArgument];

  if (![v7 length])
  {
    ++self->_emptyArgumentsCount;
  }

  [(NCNotificationSummaryBuilder *)self _insertString:v7 intoSequence:self->_arguments withCounters:self->_argumentsCounts];
}

void __58__NCNotificationSummaryBuilder__summaryNotificationsCount__block_invoke(uint64_t a1, void *a2)
{
  if (*(*(a1 + 32) + 8) != a2)
  {
    v3 = [a2 content];
    v4 = [v3 summaryArgumentCount];

    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    *(*(*(a1 + 40) + 8) + 24) += v5;
  }
}

- (id)_defaultLocalizedSummaryWithNotificationsCount:(unint64_t)a3
{
  style = self->_style;
  if (!style)
  {
    v6 = @"DEFAULT_CATEGORY_SUMMARY_FORMAT";
    goto LABEL_5;
  }

  if (style == 1)
  {
    v6 = @"DEFAULT_PRIORITY_CATEGORY_SUMMARY_FORMAT";
LABEL_5:
    v7 = NCUserNotificationsUIKitFrameworkBundle();
    v8 = [v7 localizedStringForKey:v6 value:&stru_282FE84F8 table:0];

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v9 = [(NCNotificationSummaryBuilder *)self _localizedSummaryWithFormat:v8 notificationsCount:a3 arguments:0];

  return v9;
}

- (id)_defaultLocalizedSummaryWithNotificationsCount:(unint64_t)a3 arguments:(id)a4
{
  v6 = a4;
  style = self->_style;
  if (!style)
  {
    v8 = @"DEFAULT_CATEGORY_SUMMARY_FORMAT_WITH_ARGUMENTS";
    goto LABEL_5;
  }

  if (style == 1)
  {
    v8 = @"DEFAULT_PRIORITY_CATEGORY_SUMMARY_FORMAT_WITH_ARGUMENTS";
LABEL_5:
    v9 = NCUserNotificationsUIKitFrameworkBundle();
    v10 = [v9 localizedStringForKey:v8 value:&stru_282FE84F8 table:0];

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v11 = [(NCNotificationSummaryBuilder *)self _localizedSummaryWithFormat:v10 notificationsCount:a3 arguments:v6];

  return v11;
}

- (id)_localizedSummaryWithFormats:(id)a3 andCounts:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v27 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        v14 = [v13 unsignedIntegerValue];

        if (![(NCNotificationSummaryBuilder *)self _includeLeadingNotificationRequest])
        {
          v15 = [(NCNotificationRequest *)self->_leadingNotificationRequest content];
          v16 = [v15 categorySummaryFormat];
          v17 = [v12 isEqualToString:v16];

          v14 -= v17 & 1;
        }

        if (v14)
        {
          v18 = [(NCNotificationSummaryBuilder *)self _localizedSummaryWithFormat:v12 notificationsCount:v14 arguments:0];
          [v27 addObject:v18];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  defaultFormatsCount = self->_defaultFormatsCount;
  if (defaultFormatsCount)
  {
    if (![(NCNotificationSummaryBuilder *)self _includeLeadingNotificationRequest])
    {
      v20 = [(NCNotificationRequest *)self->_leadingNotificationRequest content];
      v21 = [v20 categorySummaryFormat];
      v22 = [v21 length] == 0;

      defaultFormatsCount -= v22;
    }

    v23 = [(NCNotificationSummaryBuilder *)self _defaultLocalizedSummaryWithNotificationsCount:defaultFormatsCount];
    [v27 addObject:v23];
  }

  v24 = [(NCNotificationSummaryBuilder *)self _formatListWithArguments:v27];

  return v24;
}

- (id)_localizedSummaryWithFormat:(id)a3 notificationsCount:(unint64_t)a4 arguments:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v31 = 0;
    v10 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v8 validFormatSpecifiers:@"%u" error:&v31, a4];
    v11 = v31;
    v12 = v11;
    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 0;
    }

    v14 = v10;
    if (v13)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v12 = 0;
    v10 = 0;
  }

  if ([v9 count] && self->_emptyArgumentsCount)
  {
    v15 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21E77E000, v15, OS_LOG_TYPE_INFO, "Ignoring category format because the group contains mixed notifications with and without arguments", buf, 2u);
    }

    v14 = [(NCNotificationSummaryBuilder *)self _defaultLocalizedSummaryWithNotificationsCount:a4];
    goto LABEL_36;
  }

  v16 = [(NCNotificationSummaryBuilder *)self _filteredArgumentsArrayWithArguments:v9];
  v17 = [(NCNotificationSummaryBuilder *)self _formatListWithArguments:v16];

  if (v8)
  {
    v30 = 0;
    v14 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v8 validFormatSpecifiers:@"%u%@" error:&v30, a4, v17];
    v18 = v30;

    if (!v14)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v18 = 0;
    v14 = v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (!v18)
  {
    if (![v9 count])
    {
      v19 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
      {
        [NCNotificationSummaryBuilder _localizedSummaryWithFormat:v19 notificationsCount:? arguments:?];
      }

      v20 = [(NCNotificationSummaryBuilder *)self _defaultLocalizedSummaryWithNotificationsCount:a4];

      v10 = v17;
      v12 = v16;
      v14 = v20;
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_23:
  *buf = 0;
  v21 = [(NCNotificationSummaryBuilder *)self _formatListWithArguments:v16 truncated:1 truncatedArgumentsCount:buf];

  if (v8)
  {
    v28 = 0;
    v22 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v8 validFormatSpecifiers:@"%u%@%u" error:&v28, a4, v21, *buf];
    v23 = v28;

    v14 = v22;
    if (!v22)
    {
LABEL_31:
      v25 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
      {
        [NCNotificationSummaryBuilder _localizedSummaryWithFormat:v8 notificationsCount:v25 arguments:v23];
      }

LABEL_33:
      v26 = [(NCNotificationSummaryBuilder *)self _defaultLocalizedSummaryWithNotificationsCount:a4];

      v14 = v26;
      goto LABEL_34;
    }
  }

  else
  {
    v23 = 0;
    if (!v14)
    {
      goto LABEL_31;
    }
  }

  if (v23)
  {
    goto LABEL_31;
  }

  if (![v9 count])
  {
    v24 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [NCNotificationSummaryBuilder _localizedSummaryWithFormat:v24 notificationsCount:? arguments:?];
    }

    goto LABEL_33;
  }

LABEL_34:

LABEL_35:
  v10 = v17;
  v12 = v16;
LABEL_36:

LABEL_37:

  return v14;
}

- (id)_formatListWithArguments:(id)a3 truncated:(BOOL)a4 truncatedArgumentsCount:(unint64_t *)a5
{
  v6 = a4;
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (a5)
  {
    *a5 = 0;
  }

  if (![v7 count])
  {
    v9 = &stru_282FE84F8;
    goto LABEL_16;
  }

  if ([v8 count] == 1)
  {
    v9 = [v8 objectAtIndexedSubscript:0];
    goto LABEL_16;
  }

  if ([v8 count] == 2)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = NCUserNotificationsUIKitFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"CATEGORY_SUMMARY_LIST_TWO_ELEMENTS_FORMAT" value:&stru_282FE84F8 table:0];
    v13 = [v8 objectAtIndexedSubscript:0];
    v14 = [v8 objectAtIndexedSubscript:1];
    v9 = [v10 localizedStringWithFormat:v12, v13, v14, 0];

LABEL_9:
    goto LABEL_16;
  }

  if (v6 && [v8 count] >= 5)
  {
    v11 = [v8 subarrayWithRange:{0, 3}];
    if (a5)
    {
      v15 = [v8 count];
      *a5 = v15 - [v11 count];
    }

    v16 = NCUserNotificationsUIKitFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"CATEGORY_SUMMARY_LIST_SEPARATOR" value:&stru_282FE84F8 table:0];
    v9 = [v11 componentsJoinedByString:v17];

    goto LABEL_9;
  }

  v18 = [v8 lastObject];
  v27[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v20 = [v8 arrayByExcludingObjectsInArray:v19];

  v21 = NCUserNotificationsUIKitFrameworkBundle();
  v22 = [v21 localizedStringForKey:@"CATEGORY_SUMMARY_LIST_SEPARATOR" value:&stru_282FE84F8 table:0];
  v23 = [v20 componentsJoinedByString:v22];

  v24 = NCUserNotificationsUIKitFrameworkBundle();
  v25 = [v24 localizedStringForKey:@"CATEGORY_SUMMARY_LIST_SEPARATOR_LAST_ELEMENT" value:&stru_282FE84F8 table:0];
  v9 = [v23 stringByAppendingFormat:v25, v18];

LABEL_16:

  return v9;
}

- (id)_filteredArgumentsArrayWithArguments:(id)a3
{
  v4 = MEMORY[0x277CCAA78];
  v5 = a3;
  v6 = [v4 indexSetWithIndexesInRange:{0, objc_msgSend(v5, "count")}];
  v7 = [v5 objectsAtIndexes:v6];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__NCNotificationSummaryBuilder__filteredArgumentsArrayWithArguments___block_invoke;
  v10[3] = &unk_278371B40;
  v10[4] = self;
  v8 = [v7 bs_filter:v10];

  return v8;
}

uint64_t __69__NCNotificationSummaryBuilder__filteredArgumentsArrayWithArguments___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  v5 = [v3 content];
  v6 = [v5 summaryArgument];
  v7 = [v6 isEqualToString:v4];

  v8 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:v4];

  v9 = [v8 integerValue];
  if (v9 == 1)
  {
    return v7 ^ 1u;
  }

  else
  {
    return 1;
  }
}

- (void)_insertString:(id)a3 intoSequence:(id)a4 withCounters:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  if ([v12 length])
  {
    if ([v7 containsObject:v12])
    {
      [v7 removeObject:v12];
    }

    [v7 addObject:v12];
    v9 = MEMORY[0x277CCABB0];
    v10 = [v8 objectForKeyedSubscript:v12];
    v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "unsignedIntegerValue") + 1}];
    [v8 setObject:v11 forKeyedSubscript:v12];
  }
}

- (void)_localizedSummaryWithFormat:(uint64_t)a1 notificationsCount:(void *)a2 arguments:(void *)a3 .cold.3(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 description];
  v7 = 138543618;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_21E77E000, v5, OS_LOG_TYPE_ERROR, "Ignoring invalid category summary format: %{public}@: %@", &v7, 0x16u);
}

@end