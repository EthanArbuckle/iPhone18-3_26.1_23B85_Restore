@interface ATXTrendPlot
- (ATXTrendPlot)initWithStartDate:(id)a3 endDate:(id)a4 granularity:(int64_t)a5 binInitialDataProvider:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXTrendPlot:(id)a3;
- (NSDate)endDate;
- (NSDate)startDate;
- (id)_dateComponentsForGranularity:(int64_t)a3;
- (id)binAtDate:(id)a3;
- (unint64_t)_binIndexForDate:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXTrendPlot

- (ATXTrendPlot)initWithStartDate:(id)a3 endDate:(id)a4 granularity:(int64_t)a5 binInitialDataProvider:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v33.receiver = self;
  v33.super_class = ATXTrendPlot;
  v13 = [(ATXTrendPlot *)&v33 init];
  v14 = v13;
  if (v13)
  {
    v13->_granularity = a5;
    v15 = [MEMORY[0x1E695DEE8] currentCalendar];
    v16 = [(ATXTrendPlot *)v14 _dateComponentsForGranularity:v14->_granularity];
    v17 = MEMORY[0x1E695DF70];
    v18 = [[ATXTrendPlotBin alloc] initWithStartDate:v10];
    v19 = [v17 arrayWithObject:v18];

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __77__ATXTrendPlot_initWithStartDate_endDate_granularity_binInitialDataProvider___block_invoke;
    v30[3] = &unk_1E86A4EE8;
    v20 = v11;
    v31 = v20;
    v21 = v19;
    v32 = v21;
    [v15 enumerateDatesStartingAfterDate:v10 matchingComponents:v16 options:2 usingBlock:v30];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __77__ATXTrendPlot_initWithStartDate_endDate_granularity_binInitialDataProvider___block_invoke_2;
    v26[3] = &unk_1E86A4F10;
    v22 = v21;
    v27 = v22;
    v28 = v20;
    v29 = v12;
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
  v2 = [(NSArray *)self->_bins firstObject];
  v3 = [v2 startDate];

  return v3;
}

- (NSDate)endDate
{
  v2 = [(NSArray *)self->_bins lastObject];
  v3 = [v2 endDate];

  return v3;
}

- (id)binAtDate:(id)a3
{
  v4 = [(ATXTrendPlot *)self _binIndexForDate:a3];
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

- (unint64_t)_binIndexForDate:(id)a3
{
  v4 = a3;
  if (![(NSArray *)self->_bins count])
  {
    goto LABEL_7;
  }

  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = [(ATXTrendPlot *)self startDate];
  [v7 timeIntervalSinceReferenceDate];
  if (v6 < v8)
  {

LABEL_7:
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_8;
  }

  [v4 timeIntervalSinceReferenceDate];
  v10 = v9;
  v11 = [(ATXTrendPlot *)self endDate];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  if (v10 >= v13)
  {
    goto LABEL_7;
  }

  [v4 timeIntervalSinceReferenceDate];
  v15 = v14;
  v16 = [(NSArray *)self->_bins lastObject];
  v17 = [v16 startDate];
  [v17 timeIntervalSinceReferenceDate];
  v19 = v18;

  if (v15 >= v19)
  {
    v25 = [(NSArray *)self->_bins count]- 1;
  }

  else
  {
    v20 = [[ATXTrendPlotBin alloc] initWithStartDate:v4];
    v21 = [(NSArray *)self->_bins indexOfObject:v20 inSortedRange:0 options:[(NSArray *)self->_bins count]- 1 usingComparator:1024, &__block_literal_global_20];
    v22 = [(NSArray *)self->_bins objectAtIndexedSubscript:v21];
    v23 = [v22 startDate];
    v24 = [v23 isEqualToDate:v4];

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

- (id)_dateComponentsForGranularity:(int64_t)a3
{
  v4 = objc_opt_new();
  v5 = v4;
  switch(a3)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXTrendPlot *)self isEqualToATXTrendPlot:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXTrendPlot:(id)a3
{
  v4 = a3;
  if (self->_granularity == v4[1] && (v5 = -[NSArray count](self->_bins, "count"), v5 == [v4[2] count]))
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
    v10 = v4;
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
        v9 = [v8 startDate];
        v10 = [v9 hash] - granularity + 32 * granularity;

        v11 = [v8 data];
        granularity = [v11 hash] - v10 + 32 * v10;
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
  return granularity;
}

@end