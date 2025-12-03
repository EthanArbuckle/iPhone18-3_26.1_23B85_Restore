@interface STUsageDetailsViewModel
+ (id)keyPathsForValuesAffectingHasUsageData;
+ (id)keyPathsForValuesAffectingSelectedUsageReport;
+ (void)_enumerateDayReportStartDatesWithStartOfWeek:(id)week ascending:(BOOL)ascending block:(id)block;
+ (void)_enumerateWeeklyReportStartDatesWithReferenceDate:(id)date ascending:(BOOL)ascending block:(id)block;
- (BOOL)hasUsageData;
- (STUsageDetailsViewModel)init;
- (STUsageReport)selectedUsageReport;
- (unint64_t)_mostRecentAvailableWeekday;
- (void)_mostRecentAvailableWeekday;
- (void)selectToday;
- (void)setSelectedDay:(unint64_t)day;
- (void)setSelectedWeek:(unint64_t)week;
- (void)setSelectedWeek:(unint64_t)week selectedDay:(unint64_t)day;
- (void)setWeekReportUsageItems:(id)items weekStartDate:(id)date lastUpdatedDate:(id)updatedDate;
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

- (void)setSelectedWeek:(unint64_t)week
{
  v21 = *MEMORY[0x277D85DE8];
  weekUsageReports = [(STUsageDetailsViewModel *)self weekUsageReports];
  v6 = weekUsageReports;
  if (weekUsageReports && [weekUsageReports count] <= week)
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
      weekCopy = week;
      _os_log_fault_impl(&dword_264BA2000, v7, OS_LOG_TYPE_FAULT, "STUsageDetailsViewModel: selectedWeek out of range, will reset for device: %{public}@, week usage report count: %lu, selectedWeek: %lus", &v15, 0x20u);
    }

    week = 0;
  }

  selectedDay = [(STUsageDetailsViewModel *)self selectedDay];
  _mostRecentAvailableWeekday = selectedDay;
  if (!week && selectedDay != 0x7FFFFFFFFFFFFFFFLL)
  {
    dayUsageReportByWeekdays = [(STUsageDetailsViewModel *)self dayUsageReportByWeekdays];
    v11 = [dayUsageReportByWeekdays objectAtIndexedSubscript:0];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_mostRecentAvailableWeekday];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (!v13)
    {
      _mostRecentAvailableWeekday = [(STUsageDetailsViewModel *)self _mostRecentAvailableWeekday];
    }
  }

  [(STUsageDetailsViewModel *)self setSelectedWeek:week selectedDay:_mostRecentAvailableWeekday];
}

- (void)setSelectedDay:(unint64_t)day
{
  selectedWeek = [(STUsageDetailsViewModel *)self selectedWeek];

  [(STUsageDetailsViewModel *)self setSelectedWeek:selectedWeek selectedDay:day];
}

- (void)selectToday
{
  _mostRecentAvailableWeekday = [(STUsageDetailsViewModel *)self _mostRecentAvailableWeekday];

  [(STUsageDetailsViewModel *)self setSelectedWeek:0 selectedDay:_mostRecentAvailableWeekday];
}

- (unint64_t)_mostRecentAvailableWeekday
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = objc_opt_new();
  v5 = [currentCalendar component:512 fromDate:v4];
  dayUsageReportByWeekdays = [(STUsageDetailsViewModel *)self dayUsageReportByWeekdays];
  v7 = [dayUsageReportByWeekdays objectAtIndexedSubscript:0];

  if (v7 && ([MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9) && (objc_msgSend(currentCalendar, "dateByAddingUnit:value:toDate:options:", 16, -1, v4, 512), v10 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(currentCalendar, "component:fromDate:", 512, v10), objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", v5), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, !v12) || v5 == 0x7FFFFFFFFFFFFFFFLL)
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

- (void)setSelectedWeek:(unint64_t)week selectedDay:(unint64_t)day
{
  self->_selectedWeek = week;
  self->_selectedDay = day;
  weekUsageReports = [(STUsageDetailsViewModel *)self weekUsageReports];
  v8 = weekUsageReports;
  if (weekUsageReports)
  {
    v9 = [weekUsageReports objectAtIndexedSubscript:week];
    [(STUsageDetailsViewModel *)self setSelectedWeekUsageReport:v9];
  }

  dayUsageReportByWeekdays = [(STUsageDetailsViewModel *)self dayUsageReportByWeekdays];
  v11 = dayUsageReportByWeekdays;
  if (day == 0x7FFFFFFFFFFFFFFFLL || !dayUsageReportByWeekdays)
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
    v12[5] = week;
    v12[6] = day;
    [dayUsageReportByWeekdays enumerateObjectsUsingBlock:v12];
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

- (void)setWeekReportUsageItems:(id)items weekStartDate:(id)date lastUpdatedDate:(id)updatedDate
{
  v13[1] = *MEMORY[0x277D85DE8];
  updatedDateCopy = updatedDate;
  dateCopy = date;
  itemsCopy = items;
  [(STUsageDetailsViewModel *)self setRawUsageItems:itemsCopy];
  [(STUsageDetailsViewModel *)self setLastUpdatedDate:updatedDateCopy];
  v11 = [[STUsageReport alloc] initWithReportType:0 startDate:dateCopy lastUpdatedDate:updatedDateCopy firstPickup:0 usageItems:itemsCopy];

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
  selectedDayUsageReport = [(STUsageDetailsViewModel *)self selectedDayUsageReport];
  if ([(STUsageDetailsViewModel *)self selectedDay]== 0x7FFFFFFFFFFFFFFFLL || selectedDayUsageReport)
  {
    if (selectedDayUsageReport)
    {
      selectedWeekUsageReport = selectedDayUsageReport;
    }

    else
    {
      selectedWeekUsageReport = [(STUsageDetailsViewModel *)self selectedWeekUsageReport];
    }

    v4 = selectedWeekUsageReport;
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
  selectedWeekUsageReport = [(STUsageDetailsViewModel *)self selectedWeekUsageReport];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  [selectedWeekUsageReport totalScreenTime];
  if (v4 > 0.0)
  {
    v6 = 1;
  }

  else
  {
    appAndWebUsages = [selectedWeekUsageReport appAndWebUsages];
    if ([appAndWebUsages count])
    {
      v6 = 1;
    }

    else
    {
      categoryUsages = [selectedWeekUsageReport categoryUsages];
      v6 = [categoryUsages count] != 0;
    }
  }

  v15 = v6;
  if (v13[3])
  {
    v8 = 1;
  }

  else
  {
    weekUsageReports = [(STUsageDetailsViewModel *)self weekUsageReports];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__STUsageDetailsViewModel_hasUsageData__block_invoke;
    v11[3] = &unk_279B7E558;
    v11[4] = &v12;
    [weekUsageReports enumerateObjectsUsingBlock:v11];

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

+ (void)_enumerateWeeklyReportStartDatesWithReferenceDate:(id)date ascending:(BOOL)ascending block:(id)block
{
  ascendingCopy = ascending;
  blockCopy = block;
  v8 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v8 currentCalendar];
  firstWeekday = [currentCalendar firstWeekday];
  v12 = [currentCalendar startOfDayForDate:dateCopy];

  if ([currentCalendar component:512 fromDate:v12] == firstWeekday)
  {
    v13 = v12;
  }

  else
  {
    v13 = [currentCalendar nextDateAfterDate:v12 matchingUnit:512 value:firstWeekday options:260];
  }

  v14 = v13;
  v15 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, 4}];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __93__STUsageDetailsViewModel__enumerateWeeklyReportStartDatesWithReferenceDate_ascending_block___block_invoke;
  v20[3] = &unk_279B7E580;
  if (ascendingCopy)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  v21 = currentCalendar;
  v22 = v14;
  v23 = blockCopy;
  v17 = blockCopy;
  v18 = v14;
  v19 = currentCalendar;
  [v15 enumerateIndexesWithOptions:v16 usingBlock:v20];
}

void __93__STUsageDetailsViewModel__enumerateWeeklyReportStartDatesWithReferenceDate_ascending_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) dateByAddingUnit:0x2000 value:-a2 toDate:*(a1 + 40) options:0];
  (*(*(a1 + 48) + 16))();
}

+ (void)_enumerateDayReportStartDatesWithStartOfWeek:(id)week ascending:(BOOL)ascending block:(id)block
{
  ascendingCopy = ascending;
  weekCopy = week;
  blockCopy = block;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  firstWeekday = [currentCalendar firstWeekday];
  v11 = [currentCalendar maximumRangeOfUnit:512];
  v13 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{v11, v12}];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__STUsageDetailsViewModel__enumerateDayReportStartDatesWithStartOfWeek_ascending_block___block_invoke;
  v18[3] = &unk_279B7E5A8;
  if (ascendingCopy)
  {
    v14 = 0;
  }

  else
  {
    v14 = 2;
  }

  v19 = weekCopy;
  v20 = currentCalendar;
  v21 = blockCopy;
  v22 = firstWeekday;
  v15 = blockCopy;
  v16 = currentCalendar;
  v17 = weekCopy;
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