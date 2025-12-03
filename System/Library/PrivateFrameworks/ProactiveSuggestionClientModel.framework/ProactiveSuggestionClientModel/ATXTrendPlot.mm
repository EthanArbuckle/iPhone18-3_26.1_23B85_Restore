@interface ATXTrendPlot
- (ATXTrendPlot)initWithStartDate:(id)date endDate:(id)endDate granularity:(int64_t)granularity binInitialDataProvider:(id)provider;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXTrendPlot:(id)plot;
- (NSDate)endDate;
- (NSDate)startDate;
- (id)_dateComponentsForGranularity:(int64_t)granularity;
- (id)binAtDate:(id)date;
- (unint64_t)_binIndexForDate:(id)date;
- (unint64_t)hash;
@end

@implementation ATXTrendPlot

- (ATXTrendPlot)initWithStartDate:(id)date endDate:(id)endDate granularity:(int64_t)granularity binInitialDataProvider:(id)provider
{
  dateCopy = date;
  endDateCopy = endDate;
  providerCopy = provider;
  v33.receiver = self;
  v33.super_class = ATXTrendPlot;
  v13 = [(ATXTrendPlot *)&v33 init];
  v14 = v13;
  if (v13)
  {
    v13->_granularity = granularity;
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v16 = [(ATXTrendPlot *)v14 _dateComponentsForGranularity:v14->_granularity];
    v17 = MEMORY[0x1E695DF70];
    v18 = [[ATXTrendPlotBin alloc] initWithStartDate:dateCopy];
    v19 = [v17 arrayWithObject:v18];

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __77__ATXTrendPlot_initWithStartDate_endDate_granularity_binInitialDataProvider___block_invoke;
    v30[3] = &unk_1E86A4EE8;
    v20 = endDateCopy;
    v31 = v20;
    v21 = v19;
    v32 = v21;
    [currentCalendar enumerateDatesStartingAfterDate:dateCopy matchingComponents:v16 options:2 usingBlock:v30];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __77__ATXTrendPlot_initWithStartDate_endDate_granularity_binInitialDataProvider___block_invoke_2;
    v26[3] = &unk_1E86A4F10;
    v22 = v21;
    v27 = v22;
    v28 = v20;
    v29 = providerCopy;
    [(NSArray *)v22 enumerateObjectsUsingBlock:v26];
    bins = v14->_bins;
    v14->_bins = v22;
    v24 = v22;
  }

  return v14;
}

void __77__ATXTrendPlot_initWithStartDate_endDate_granularity_binInitialDataProvider___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 laterDate:*(a1 + 32)];

  v7 = v10;
  if (v6 == v10)
  {
    *a4 = 1;
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [[ATXTrendPlotBin alloc] initWithStartDate:v10];
    [v8 addObject:v9];

    v7 = v10;
  }
}

void __77__ATXTrendPlot_initWithStartDate_endDate_granularity_binInitialDataProvider___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = a3 + 1;
  if (v5 >= [*(a1 + 32) count])
  {
    [v10 setEndDate:*(a1 + 40)];
  }

  else
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:v5];
    [v10 setNext:v6];

    v7 = [v10 next];
    v8 = [v7 startDate];
    [v10 setEndDate:v8];
  }

  v9 = (*(*(a1 + 48) + 16))();
  [v10 setData:v9];
}

- (NSDate)startDate
{
  firstObject = [(NSArray *)self->_bins firstObject];
  startDate = [firstObject startDate];

  return startDate;
}

- (NSDate)endDate
{
  lastObject = [(NSArray *)self->_bins lastObject];
  endDate = [lastObject endDate];

  return endDate;
}

- (id)binAtDate:(id)date
{
  v4 = [(ATXTrendPlot *)self _binIndexForDate:date];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_bins objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (unint64_t)_binIndexForDate:(id)date
{
  dateCopy = date;
  if (![(NSArray *)self->_bins count])
  {
    goto LABEL_7;
  }

  [dateCopy timeIntervalSinceReferenceDate];
  v6 = v5;
  startDate = [(ATXTrendPlot *)self startDate];
  [startDate timeIntervalSinceReferenceDate];
  if (v6 < v8)
  {

LABEL_7:
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_8;
  }

  [dateCopy timeIntervalSinceReferenceDate];
  v10 = v9;
  endDate = [(ATXTrendPlot *)self endDate];
  [endDate timeIntervalSinceReferenceDate];
  v13 = v12;

  if (v10 >= v13)
  {
    goto LABEL_7;
  }

  [dateCopy timeIntervalSinceReferenceDate];
  v15 = v14;
  lastObject = [(NSArray *)self->_bins lastObject];
  startDate2 = [lastObject startDate];
  [startDate2 timeIntervalSinceReferenceDate];
  v19 = v18;

  if (v15 >= v19)
  {
    v25 = [(NSArray *)self->_bins count]- 1;
  }

  else
  {
    v20 = [[ATXTrendPlotBin alloc] initWithStartDate:dateCopy];
    v21 = [(NSArray *)self->_bins indexOfObject:v20 inSortedRange:0 options:[(NSArray *)self->_bins count]- 1 usingComparator:1024, &__block_literal_global_20];
    v22 = [(NSArray *)self->_bins objectAtIndexedSubscript:v21];
    startDate3 = [v22 startDate];
    v24 = [startDate3 isEqualToDate:dateCopy];

    v25 = v21 - (v24 ^ 1u);
  }

LABEL_8:

  return v25;
}

uint64_t __33__ATXTrendPlot__binIndexForDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_dateComponentsForGranularity:(int64_t)granularity
{
  v4 = objc_opt_new();
  v5 = v4;
  switch(granularity)
  {
    case 3:
      [v4 setWeekday:2];
      break;
    case 2:
      [v4 setHour:0];
      break;
    case 1:
      [v4 setMinute:0];
      break;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXTrendPlot *)self isEqualToATXTrendPlot:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXTrendPlot:(id)plot
{
  plotCopy = plot;
  if (self->_granularity == plotCopy[1] && (v5 = -[NSArray count](self->_bins, "count"), v5 == [plotCopy[2] count]))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 1;
    bins = self->_bins;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__ATXTrendPlot_isEqualToATXTrendPlot___block_invoke;
    v9[3] = &unk_1E86A4F58;
    v10 = plotCopy;
    v11 = &v12;
    [(NSArray *)bins enumerateObjectsUsingBlock:v9];
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void __38__ATXTrendPlot_isEqualToATXTrendPlot___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:a3];
  v8 = [v13 startDate];
  v9 = [v7 startDate];
  if (([v8 isEqualToDate:v9] & 1) == 0)
  {

    goto LABEL_5;
  }

  v10 = [v13 data];
  v11 = [v7 data];
  v12 = [v10 isEqual:v11];

  if ((v12 & 1) == 0)
  {
LABEL_5:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (unint64_t)hash
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  granularity = self->_granularity;
  v3 = self->_bins;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        startDate = [v8 startDate];
        v10 = [startDate hash] - granularity + 32 * granularity;

        data = [v8 data];
        granularity = [data hash] - v10 + 32 * v10;
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
  return granularity;
}

@end