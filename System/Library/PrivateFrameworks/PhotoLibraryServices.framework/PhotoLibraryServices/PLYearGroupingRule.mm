@interface PLYearGroupingRule
- (BOOL)highlightItem:(id)item belongsToHighlightItemList:(id)list;
- (PLYearGroupingRule)init;
- (unint64_t)dominantYearForStartDate:(id)date endDate:(id)endDate;
- (void)titlesForHighlightItemList:(id)list dateRangeTitleGenerator:(id)generator forceUpdateLocale:(BOOL)locale resultBlock:(id)block;
@end

@implementation PLYearGroupingRule

- (BOOL)highlightItem:(id)item belongsToHighlightItemList:(id)list
{
  listCopy = list;
  itemCopy = item;
  startDate = [listCopy startDate];
  endDate = [listCopy endDate];

  v10 = [(PLYearGroupingRule *)self dominantYearForStartDate:startDate endDate:endDate];
  startDate2 = [itemCopy startDate];
  endDate2 = [itemCopy endDate];

  v13 = [(PLYearGroupingRule *)self dominantYearForStartDate:startDate2 endDate:endDate2];
  return v10 == v13;
}

- (unint64_t)dominantYearForStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  calendar = [(PLYearGroupingRule *)self calendar];
  [endDateCopy timeIntervalSinceDate:dateCopy];
  v10 = v9;

  v11 = [dateCopy dateByAddingTimeInterval:v10 * 0.5];

  v12 = [calendar component:4 fromDate:v11];
  return v12;
}

- (void)titlesForHighlightItemList:(id)list dateRangeTitleGenerator:(id)generator forceUpdateLocale:(BOOL)locale resultBlock:(id)block
{
  localeCopy = locale;
  blockCopy = block;
  generatorCopy = generator;
  sortedChildHighlightItems = [list sortedChildHighlightItems];
  firstObject = [sortedChildHighlightItems firstObject];
  lastObject = [sortedChildHighlightItems lastObject];
  endDate = [firstObject endDate];
  startDate = [lastObject startDate];
  [startDate timeIntervalSinceDate:endDate];
  v16 = [endDate dateByAddingTimeInterval:v15 * 0.5];
  v17 = [generatorCopy dateRangeTitleWithStartDate:v16 endDate:v16 category:0 kind:2 type:0 options:localeCopy];

  blockCopy[2](blockCopy, v17, 0);
}

- (PLYearGroupingRule)init
{
  v6.receiver = self;
  v6.super_class = PLYearGroupingRule;
  v2 = [(PLYearGroupingRule *)&v6 init];
  if (v2)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    calendar = v2->_calendar;
    v2->_calendar = currentCalendar;
  }

  return v2;
}

@end