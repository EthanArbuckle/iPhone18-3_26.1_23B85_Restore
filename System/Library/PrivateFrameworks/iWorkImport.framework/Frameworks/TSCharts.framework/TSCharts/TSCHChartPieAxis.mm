@interface TSCHChartPieAxis
- (double)totalForGroupIndex:(unint64_t)index;
- (id)formattedStringForSeries:(id)series groupIndex:(unint64_t)index;
@end

@implementation TSCHChartPieAxis

- (double)totalForGroupIndex:(unint64_t)index
{
  v4.receiver = self;
  v4.super_class = TSCHChartPieAxis;
  [(TSCHChartStackedPercentValueAxis *)&v4 totalForGroupIndex:index series:0];
  return result;
}

- (id)formattedStringForSeries:(id)series groupIndex:(unint64_t)index
{
  seriesCopy = series;
  v11 = objc_msgSend_valueForAxis_groupIndex_(seriesCopy, v7, v8, v9, v10, self, index);
  objc_msgSend_totalForGroupIndex_(self, v12, v13, v14, v15, 0);
  v17 = v16;
  v21 = objc_msgSend_model(self, v18, v16, v19, v20);
  v26 = objc_msgSend_chartInfo(v21, v22, v23, v24, v25);
  isSingleCircleSpecialCase = objc_msgSend_isSingleCircleSpecialCase(v26, v27, v28, v29, v30);

  if (!v11)
  {
    v36 = 0;
    if (!isSingleCircleSpecialCase)
    {
      goto LABEL_18;
    }
  }

  v38 = objc_msgSend_intValueForProperty_defaultValue_(seriesCopy, v32, v33, v34, v35, 1167, 0);
  if (v11)
  {
    objc_msgSend_doubleValue(v11, v37, v39, v40, v41);
  }

  else
  {
    v42 = NAN;
  }

  v43 = 1.0;
  if (v38 == 4)
  {
    v44 = 1.0;
  }

  else
  {
    v44 = v42;
  }

  if ((v38 != 4) | isSingleCircleSpecialCase & 1)
  {
    goto LABEL_14;
  }

  if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    objc_msgSend_doubleModelToAxisValue_forSeries_(self, v37, v42, v44, v41, seriesCopy);
    v46 = fabs(v45);
    v47 = NAN;
    if (v17 != 0.0)
    {
      v47 = v17;
    }

    v44 = v46 / v47;
LABEL_14:
    v43 = v44;
  }

  v48 = fabs(v43);
  if (v48 == INFINITY)
  {
    v43 = 0.0;
  }

  v49 = objc_msgSend_dataFormatterForSeries_groupIndex_(self, v37, v48, INFINITY, v41, seriesCopy, index);
  v53 = objc_msgSend_numberValueWithDouble_(TSCHChartGridValue, v50, v43, v51, v52);
  v58 = objc_msgSend_locale(self, v54, v55, v56, v57);
  v36 = objc_msgSend_chartFormattedStringForValue_locale_(v49, v59, v60, v61, v62, v53, v58);

LABEL_18:

  return v36;
}

@end