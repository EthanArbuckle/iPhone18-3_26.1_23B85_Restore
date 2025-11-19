@interface STUsageDetailsViewModel
+ (id)keyPathsForValuesAffectingHasUsageData;
+ (id)keyPathsForValuesAffectingSelectedUsageReport;
+ (void)_enumerateDayReportStartDatesWithStartOfWeek:(id)a3 ascending:(BOOL)a4 block:(id)a5;
+ (void)_enumerateWeeklyReportStartDatesWithReferenceDate:(id)a3 ascending:(BOOL)a4 block:(id)a5;
- (BOOL)hasUsageData;
- (STUsageDetailsViewModel)init;
- (STUsageReport)selectedUsageReport;
- (unint64_t)_mostRecentAvailableWeekday;
- (void)_mostRecentAvailableWeekday;
- (void)selectToday;
- (void)setSelectedDay:(unint64_t)a3;
- (void)setSelectedWeek:(unint64_t)a3;
- (void)setSelectedWeek:(unint64_t)a3 selectedDay:(unint64_t)a4;
- (void)setWeekReportUsageItems:(id)a3 weekStartDate:(id)a4 lastUpdatedDate:(id)a5;
@end

@implementation STUsageDetailsViewModel

- (STUsageDetailsViewModel)init
{
  v3.receiver = self;
  v3.super_class = STUsageDetailsViewModel;
  result = [(STUsageDetailsViewModel *)&v3 init];
  result->_selectedWeek = 0;
  result->_selectedDay = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

- (void)setSelectedWeek:(unint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(STUsageDetailsViewModel *)self weekUsageReports];
  v6 = v5;
  if (v5 && [v5 count] <= a3)
  {
    v7 = +[STUILog usage];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      selectedItemDisplayName = self->_selectedItemDisplayName;
      v15 = 138543874;
      v16 = selectedItemDisplayName;
      v17 = 2048;
      v18 = [v6 count];
      v19 = 2048;
      v20 = a3;
      _os_log_fault_impl(&dword_264BA2000, v7, OS_LOG_TYPE_FAULT, "STUsageDetailsViewModel: selectedWeek out of range, will reset for device: %{public}@, week usage report count: %lu, selectedWeek: %lus", &v15, 0x20u);
    }

    a3 = 0;
  }

  v8 = [(STUsageDetailsViewModel *)self selectedDay];
  v9 = v8;
  if (!a3 && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(STUsageDetailsViewModel *)self dayUsageReportByWeekdays];
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (!v13)
    {
      v9 = [(STUsageDetailsViewModel *)self _mostRecentAvailableWeekday];
    }
  }

  [(STUsageDetailsViewModel *)self setSelectedWeek:a3 selectedDay:v9];
}

- (void)setSelectedDay:(unint64_t)a3
{
  v5 = [(STUsageDetailsViewModel *)self selectedWeek];

  [(STUsageDetailsViewModel *)self setSelectedWeek:v5 selectedDay:a3];
}

- (void)selectToday
{
  v3 = [(STUsageDetailsViewModel *)self _mostRecentAvailableWeekday];

  [(STUsageDetailsViewModel *)self setSelectedWeek:0 selectedDay:v3];
}

- (unint64_t)_mostRecentAvailableWeekday
{
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = objc_opt_new();
  v5 = [v3 component:512 fromDate:v4];
  v6 = [(STUsageDetailsViewModel *)self dayUsageReportByWeekdays];
  v7 = [v6 objectAtIndexedSubscript:0];

  if (v7 && ([MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9) && (objc_msgSend(v3, "dateByAddingUnit:value:toDate:options:", 16, -1, v4, 512), v10 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "component:fromDate:", 512, v10), objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", v5), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, !v12) || v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = +[STUILog usage];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [STUsageDetailsViewModel _mostRecentAvailableWeekday];
    }

    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)setSelectedWeek:(unint64_t)a3 selectedDay:(unint64_t)a4
{
  self->_selectedWeek = a3;
  self->_selectedDay = a4;
  v7 = [(STUsageDetailsViewModel *)self weekUsageReports];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectAtIndexedSubscript:a3];
    [(STUsageDetailsViewModel *)self setSelectedWeekUsageReport:v9];
  }

  v10 = [(STUsageDetailsViewModel *)self dayUsageReportByWeekdays];
  v11 = v10;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL || !v10)
  {
    [(STUsageDetailsViewModel *)self setSelectedDayUsageReport:0];
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__STUsageDetailsViewModel_setSelectedWeek_selectedDay___block_invoke;
    v12[3] = &unk_279B7E530;
    v12[4] = self;
    v12[5] = a3;
    v12[6] = a4;
    [v10 enumerateObjectsUsingBlock:v12];
  }
}

void __55__STUsageDetailsViewModel_setSelectedWeek_selectedDay___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 40) == a3)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = *(a1 + 48);
    v7 = a2;
    v9 = [v5 numberWithUnsignedInteger:v6];
    v8 = [v7 objectForKeyedSubscript:v9];

    [*(a1 + 32) setSelectedDayUsageReport:v8];
  }
}

- (void)setWeekReportUsageItems:(id)a3 weekStartDate:(id)a4 lastUpdatedDate:(id)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(STUsageDetailsViewModel *)self setRawUsageItems:v10];
  [(STUsageDetailsViewModel *)self setLastUpdatedDate:v8];
  v11 = [[STUsageReport alloc] initWithReportType:0 startDate:v9 lastUpdatedDate:v8 firstPickup:0 usageItems:v10];

  [(STUsageDetailsViewModel *)self setSelectedWeekUsageReport:v11];
  v13[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [(STUsageDetailsViewModel *)self setWeekUsageReports:v12];
}

+ (id)keyPathsForValuesAffectingSelectedUsageReport
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"selectedWeekUsageReport", @"selectedDayUsageReport", 0}];

  return v2;
}

- (STUsageReport)selectedUsageReport
{
  v3 = [(STUsageDetailsViewModel *)self selectedDayUsageReport];
  if ([(STUsageDetailsViewModel *)self selectedDay]== 0x7FFFFFFFFFFFFFFFLL || v3)
  {
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = [(STUsageDetailsViewModel *)self selectedWeekUsageReport];
    }

    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)keyPathsForValuesAffectingHasUsageData
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"weekUsageReports", @"selectedWeekUsageReport", 0}];

  return v2;
}

- (BOOL)hasUsageData
{
  v3 = [(STUsageDetailsViewModel *)self selectedWeekUsageReport];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  [v3 totalScreenTime];
  if (v4 > 0.0)
  {
    v6 = 1;
  }

  else
  {
    v5 = [v3 appAndWebUsages];
    if ([v5 count])
    {
      v6 = 1;
    }

    else
    {
      v7 = [v3 categoryUsages];
      v6 = [v7 count] != 0;
    }
  }

  v15 = v6;
  if (v13[3])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(STUsageDetailsViewModel *)self weekUsageReports];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__STUsageDetailsViewModel_hasUsageData__block_invoke;
    v11[3] = &unk_279B7E558;
    v11[4] = &v12;
    [v9 enumerateObjectsUsingBlock:v11];

    v8 = *(v13 + 24);
  }

  _Block_object_dispose(&v12, 8);

  return v8 & 1;
}

void __39__STUsageDetailsViewModel_hasUsageData__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  [v14 totalScreenTime];
  if (v6 > 0.0)
  {
    v10 = *(a1 + 32);
    v8 = a1 + 32;
    *(*(v10 + 8) + 24) = 1;
  }

  else
  {
    v7 = [v14 appAndWebUsages];
    if ([v7 count])
    {
      v9 = *(a1 + 32);
      v8 = a1 + 32;
      *(*(v9 + 8) + 24) = 1;
    }

    else
    {
      v11 = [v14 categoryUsages];
      v12 = [v11 count] != 0;
      v13 = *(a1 + 32);
      v8 = a1 + 32;
      *(*(v13 + 8) + 24) = v12;
    }
  }

  if (*(*(*v8 + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

+ (void)_enumerateWeeklyReportStartDatesWithReferenceDate:(id)a3 ascending:(BOOL)a4 block:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = MEMORY[0x277CBEA80];
  v9 = a3;
  v10 = [v8 currentCalendar];
  v11 = [v10 firstWeekday];
  v12 = [v10 startOfDayForDate:v9];

  if ([v10 component:512 fromDate:v12] == v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = [v10 nextDateAfterDate:v12 matchingUnit:512 value:v11 options:260];
  }

  v14 = v13;
  v15 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, 4}];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __93__STUsageDetailsViewModel__enumerateWeeklyReportStartDatesWithReferenceDate_ascending_block___block_invoke;
  v20[3] = &unk_279B7E580;
  if (v5)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  v21 = v10;
  v22 = v14;
  v23 = v7;
  v17 = v7;
  v18 = v14;
  v19 = v10;
  [v15 enumerateIndexesWithOptions:v16 usingBlock:v20];
}

void __93__STUsageDetailsViewModel__enumerateWeeklyReportStartDatesWithReferenceDate_ascending_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) dateByAddingUnit:0x2000 value:-a2 toDate:*(a1 + 40) options:0];
  (*(*(a1 + 48) + 16))();
}

+ (void)_enumerateDayReportStartDatesWithStartOfWeek:(id)a3 ascending:(BOOL)a4 block:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = [v9 firstWeekday];
  v11 = [v9 maximumRangeOfUnit:512];
  v13 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{v11, v12}];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__STUsageDetailsViewModel__enumerateDayReportStartDatesWithStartOfWeek_ascending_block___block_invoke;
  v18[3] = &unk_279B7E5A8;
  if (v6)
  {
    v14 = 0;
  }

  else
  {
    v14 = 2;
  }

  v19 = v7;
  v20 = v9;
  v21 = v8;
  v22 = v10;
  v15 = v8;
  v16 = v9;
  v17 = v7;
  [v13 enumerateIndexesWithOptions:v14 usingBlock:v18];
}

void __88__STUsageDetailsViewModel__enumerateDayReportStartDatesWithStartOfWeek_ascending_block___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == a2)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = [*(a1 + 40) nextDateAfterDate:*(a1 + 32) matchingUnit:512 value:a2 options:256];
  }

  v4 = v3;
  (*(*(a1 + 48) + 16))();
}

- (void)_mostRecentAvailableWeekday
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_264BA2000, v0, OS_LOG_TYPE_FAULT, "Usage data has been loaded with no daily reports for today or yesterday: %{public}@", v1, 0xCu);
}

@end