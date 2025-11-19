@interface PLYearGroupingRule
- (BOOL)highlightItem:(id)a3 belongsToHighlightItemList:(id)a4;
- (PLYearGroupingRule)init;
- (unint64_t)dominantYearForStartDate:(id)a3 endDate:(id)a4;
- (void)titlesForHighlightItemList:(id)a3 dateRangeTitleGenerator:(id)a4 forceUpdateLocale:(BOOL)a5 resultBlock:(id)a6;
@end

@implementation PLYearGroupingRule

- (BOOL)highlightItem:(id)a3 belongsToHighlightItemList:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 startDate];
  v9 = [v6 endDate];

  v10 = [(PLYearGroupingRule *)self dominantYearForStartDate:v8 endDate:v9];
  v11 = [v7 startDate];
  v12 = [v7 endDate];

  v13 = [(PLYearGroupingRule *)self dominantYearForStartDate:v11 endDate:v12];
  return v10 == v13;
}

- (unint64_t)dominantYearForStartDate:(id)a3 endDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLYearGroupingRule *)self calendar];
  [v6 timeIntervalSinceDate:v7];
  v10 = v9;

  v11 = [v7 dateByAddingTimeInterval:v10 * 0.5];

  v12 = [v8 component:4 fromDate:v11];
  return v12;
}

- (void)titlesForHighlightItemList:(id)a3 dateRangeTitleGenerator:(id)a4 forceUpdateLocale:(BOOL)a5 resultBlock:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = a4;
  v18 = [a3 sortedChildHighlightItems];
  v11 = [v18 firstObject];
  v12 = [v18 lastObject];
  v13 = [v11 endDate];
  v14 = [v12 startDate];
  [v14 timeIntervalSinceDate:v13];
  v16 = [v13 dateByAddingTimeInterval:v15 * 0.5];
  v17 = [v10 dateRangeTitleWithStartDate:v16 endDate:v16 category:0 kind:2 type:0 options:v6];

  v9[2](v9, v17, 0);
}

- (PLYearGroupingRule)init
{
  v6.receiver = self;
  v6.super_class = PLYearGroupingRule;
  v2 = [(PLYearGroupingRule *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DEE8] currentCalendar];
    calendar = v2->_calendar;
    v2->_calendar = v3;
  }

  return v2;
}

@end