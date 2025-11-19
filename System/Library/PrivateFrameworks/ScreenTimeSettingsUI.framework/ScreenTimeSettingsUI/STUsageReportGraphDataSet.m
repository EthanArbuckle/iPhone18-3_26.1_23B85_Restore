@interface STUsageReportGraphDataSet
- (STUsageReportGraphDataSet)initWithTimePeriod:(unint64_t)a3 itemType:(unint64_t)a4 total:(id)a5 max:(id)a6 average:(id)a7 averageAsPercentageOfMax:(double)a8 dataPoints:(id)a9;
- (id)initEmptyDataSetWithTimePeriod:(unint64_t)a3 referenceDate:(id)a4;
@end

@implementation STUsageReportGraphDataSet

- (STUsageReportGraphDataSet)initWithTimePeriod:(unint64_t)a3 itemType:(unint64_t)a4 total:(id)a5 max:(id)a6 average:(id)a7 averageAsPercentageOfMax:(double)a8 dataPoints:(id)a9
{
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v31.receiver = self;
  v31.super_class = STUsageReportGraphDataSet;
  v20 = [(STUsageReportGraphDataSet *)&v31 init];
  v21 = v20;
  if (v20)
  {
    v20->_timePeriod = a3;
    v20->_itemType = a4;
    v22 = [v16 copy];
    total = v21->_total;
    v21->_total = v22;

    v24 = [v17 copy];
    max = v21->_max;
    v21->_max = v24;

    v26 = [v18 copy];
    average = v21->_average;
    v21->_average = v26;

    v21->_averageAsPercentageOfMax = a8;
    v28 = [v19 copy];
    dataPoints = v21->_dataPoints;
    v21->_dataPoints = v28;
  }

  return v21;
}

- (id)initEmptyDataSetWithTimePeriod:(unint64_t)a3 referenceDate:(id)a4
{
  v7 = a4;
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__9;
  v35 = __Block_byref_object_dispose__9;
  v36 = [v8 startOfDayForDate:v7];
  if (!a3)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"STUsageReportGraphDataSet.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"NO"}];

    v14 = 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:
    v17 = 16;
    v16 = 1;
    goto LABEL_11;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      v9 = [v8 firstWeekday];
      if ([v8 component:512 fromDate:v32[5]] != v9)
      {
        v10 = [v8 nextDateAfterDate:v32[5] matchingUnit:512 value:v9 options:516];
        v11 = v32[5];
        v32[5] = v10;
      }

      v12 = [v8 rangeOfUnit:512 inUnit:0x2000 forDate:v7];
      v14 = v13;
    }

    else
    {
      v14 = 0;
      v12 = 0;
    }

    goto LABEL_10;
  }

  v12 = [v8 rangeOfUnit:32 inUnit:16 forDate:v7];
  v14 = v15;
  v16 = 0;
  v17 = 32;
LABEL_11:
  v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v14];
  v20 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{v12, v14}];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __74__STUsageReportGraphDataSet_initEmptyDataSetWithTimePeriod_referenceDate___block_invoke;
  v25[3] = &unk_279B7EB08;
  v21 = v8;
  v26 = v21;
  v28 = &v31;
  v29 = v17;
  v30 = v16;
  v22 = v19;
  v27 = v22;
  [v20 enumerateIndexesUsingBlock:v25];
  v23 = [(STUsageReportGraphDataSet *)self initWithTimePeriod:a3 itemType:1 total:&unk_28769D718 max:&unk_28769D718 average:&unk_28769D718 averageAsPercentageOfMax:v22 dataPoints:0.0];

  _Block_object_dispose(&v31, 8);
  return v23;
}

void __74__STUsageReportGraphDataSet_initEmptyDataSetWithTimePeriod_referenceDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dateByAddingUnit:*(a1 + 56) value:1 toDate:*(*(*(a1 + 48) + 8) + 40) options:0];
  v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:*(*(*(a1 + 48) + 8) + 40) endDate:v2];
  v3 = [STUsageReportGraphDataPoint alloc];
  v4 = [(STUsageReportGraphDataPoint *)v3 initWithTimePeriod:*(a1 + 64) itemType:1 dateInterval:v7 total:&unk_28769D718 totalAsPercentageOfMax:MEMORY[0x277CBEBF8] segments:0.0];
  [*(a1 + 40) addObject:v4];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v2;
}

@end