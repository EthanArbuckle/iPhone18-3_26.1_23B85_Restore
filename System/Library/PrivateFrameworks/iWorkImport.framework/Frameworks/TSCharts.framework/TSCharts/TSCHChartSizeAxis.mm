@interface TSCHChartSizeAxis
- (double)doubleModelToAxisValue:(double)a3 forSeries:(id)a4;
- (void)adjustMinMaxForDataRangeInAnalysis:(id)a3;
- (void)updateGridValueTypeInterceptInAnalysis:(id)a3;
@end

@implementation TSCHChartSizeAxis

- (void)adjustMinMaxForDataRangeInAnalysis:(id)a3
{
  v26 = a3;
  if (objc_msgSend_gridValueType(self, v4, v5, v6, v7) == 2)
  {
    v12 = objc_msgSend_distantPast(MEMORY[0x277CBEAA8], v8, v9, v10, v11);
    v17 = objc_msgSend_dateValueWithNSDate_(TSCHChartGridValue, v13, v14, v15, v16, v12);
    objc_msgSend_doubleValue(v17, v18, v19, v20, v21);
    objc_msgSend_setMin_(v26, v22, v23, v24, v25);
  }

  else
  {
    objc_msgSend_setMin_(v26, v8, 0.0, v10, v11);
  }
}

- (void)updateGridValueTypeInterceptInAnalysis:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TSCHChartSizeAxis;
  [(TSCHChartAxis *)&v13 updateGridValueTypeInterceptInAnalysis:v4];
  if (objc_msgSend_gridValueType(v4, v5, v6, v7, v8) == 2)
  {
    objc_msgSend_updateAxisDateInterceptInAnalysis_(self, v9, v10, v11, v12, v4);
  }
}

- (double)doubleModelToAxisValue:(double)a3 forSeries:(id)a4
{
  v6 = a4;
  objc_msgSend_axisInterceptPosition(self, v7, v8, v9, v10);
  v15 = a3 - v12;
  if (v6 && v15 < 0.0)
  {
    v16 = objc_msgSend_intValueForProperty_defaultValue_(v6, v11, v12, v13, v14, 1177, 0);
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

  else if (!v6)
  {
LABEL_8:
    v17 = sqrt(v15 / 3.14159265);
    v15 = v17 + v17;
    goto LABEL_9;
  }

  if (!objc_msgSend_intValueForProperty_defaultValue_(v6, v11, v12, v13, v14, 1182, 0))
  {
    goto LABEL_8;
  }

LABEL_9:

  return v15;
}

@end