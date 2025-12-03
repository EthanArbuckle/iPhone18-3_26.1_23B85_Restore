@interface TSCHChartSizeAxis
- (double)doubleModelToAxisValue:(double)value forSeries:(id)series;
- (void)adjustMinMaxForDataRangeInAnalysis:(id)analysis;
- (void)updateGridValueTypeInterceptInAnalysis:(id)analysis;
@end

@implementation TSCHChartSizeAxis

- (void)adjustMinMaxForDataRangeInAnalysis:(id)analysis
{
  analysisCopy = analysis;
  if (objc_msgSend_gridValueType(self, v4, v5, v6, v7) == 2)
  {
    v12 = objc_msgSend_distantPast(MEMORY[0x277CBEAA8], v8, v9, v10, v11);
    v17 = objc_msgSend_dateValueWithNSDate_(TSCHChartGridValue, v13, v14, v15, v16, v12);
    objc_msgSend_doubleValue(v17, v18, v19, v20, v21);
    objc_msgSend_setMin_(analysisCopy, v22, v23, v24, v25);
  }

  else
  {
    objc_msgSend_setMin_(analysisCopy, v8, 0.0, v10, v11);
  }
}

- (void)updateGridValueTypeInterceptInAnalysis:(id)analysis
{
  analysisCopy = analysis;
  v13.receiver = self;
  v13.super_class = TSCHChartSizeAxis;
  [(TSCHChartAxis *)&v13 updateGridValueTypeInterceptInAnalysis:analysisCopy];
  if (objc_msgSend_gridValueType(analysisCopy, v5, v6, v7, v8) == 2)
  {
    objc_msgSend_updateAxisDateInterceptInAnalysis_(self, v9, v10, v11, v12, analysisCopy);
  }
}

- (double)doubleModelToAxisValue:(double)value forSeries:(id)series
{
  seriesCopy = series;
  objc_msgSend_axisInterceptPosition(self, v7, v8, v9, v10);
  v15 = value - v12;
  if (seriesCopy && v15 < 0.0)
  {
    v16 = objc_msgSend_intValueForProperty_defaultValue_(seriesCopy, v11, v12, v13, v14, 1177, 0);
    v12 = -v15;
    v13 = NAN;
    if (v16)
    {
      v15 = -v15;
    }

    else
    {
      v15 = NAN;
    }
  }

  else if (!seriesCopy)
  {
LABEL_8:
    v17 = sqrt(v15 / 3.14159265);
    v15 = v17 + v17;
    goto LABEL_9;
  }

  if (!objc_msgSend_intValueForProperty_defaultValue_(seriesCopy, v11, v12, v13, v14, 1182, 0))
  {
    goto LABEL_8;
  }

LABEL_9:

  return v15;
}

@end