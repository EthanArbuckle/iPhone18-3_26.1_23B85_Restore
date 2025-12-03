@interface TSCHChartAxisSeriesLabelsLayoutItem
- (BOOL)showLabelsForAxis:(id)axis;
- (CGSize)calcMinSize;
- (TSCHChartAxisSeriesLabelsLayoutItem)initWithParent:(id)parent;
- (double)unitSpaceValueForAxis:(id)axis index:(unint64_t)index;
- (id)labelStringForAxis:(id)axis index:(unint64_t)index;
- (id)selectionPathLabelType;
- (unint64_t)numberOfLabelsForAxis:(id)axis;
@end

@implementation TSCHChartAxisSeriesLabelsLayoutItem

- (TSCHChartAxisSeriesLabelsLayoutItem)initWithParent:(id)parent
{
  v4.receiver = self;
  v4.super_class = TSCHChartAxisSeriesLabelsLayoutItem;
  return [(TSCHChartCategoryAxisLabelsLayoutItem *)&v4 initWithParent:parent];
}

- (CGSize)calcMinSize
{
  v20.receiver = self;
  v20.super_class = TSCHChartAxisSeriesLabelsLayoutItem;
  [(TSCHChartAxisLabelsLayoutItem *)&v20 calcMinSize];
  v6 = v5;
  v8 = v7;
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  if (*MEMORY[0x277CBF3A8] != v5 || v9 != v8)
  {
    v11 = objc_msgSend_parent(self, v3, *MEMORY[0x277CBF3A8], v9, v4);
    v16 = objc_msgSend_axisPosition(v11, v12, v13, v14, v15);
    if (v16 <= 5 && ((1 << v16) & 0x2A) != 0)
    {
      v6 = v6 + 12.0;
    }

    else if (v16 == 4 || v16 == 2)
    {
      v8 = v8 + 5.0;
    }
  }

  v18 = v6;
  v19 = v8;
  result.height = v19;
  result.width = v18;
  return result;
}

- (BOOL)showLabelsForAxis:(id)axis
{
  axisCopy = axis;
  v8 = objc_msgSend_model(axisCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_chartInfo(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_chartType(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_supportsSeriesLabels(v18, v19, v20, v21, v22);

  if (v23)
  {
    v28 = objc_msgSend_intValueForProperty_defaultValue_(axisCopy, v24, v25, v26, v27, 1059, 0) != 0;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (unint64_t)numberOfLabelsForAxis:(id)axis
{
  axisCopy = axis;
  if (objc_msgSend_isCategory(axisCopy, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_model(axisCopy, v8, v9, v10, v11);
    v17 = objc_msgSend_numberOfValues(v12, v13, v14, v15, v16);

    v22 = objc_msgSend_model(axisCopy, v18, v19, v20, v21);
    v27 = objc_msgSend_numberOfSeries(v22, v23, v24, v25, v26);

    v28 = v27 * v17;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (double)unitSpaceValueForAxis:(id)axis index:(unint64_t)index
{
  axisCopy = axis;
  v10 = objc_msgSend_model(axisCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_numberOfSeries(v10, v11, v12, v13, v14);

  if (objc_msgSend_isRangeContinuous(axisCopy, v16, v17, v18, v19))
  {
    objc_msgSend_unitSpaceValueForDataSpaceValue_(axisCopy, v20, index, v21, v22);
    v24 = v23;
  }

  else
  {
    if (v15 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v15;
    }

    v26 = index % v25;
    objc_msgSend_unitSpaceValueForCountSpaceValue_(axisCopy, v20, (index / v25), v21, v22);
    v28 = v27;
    v39 = 0;
    v38 = 0.0;
    v32 = objc_msgSend_model(axisCopy, v29, v27, v30, v31);
    LODWORD(v33) = 1.0;
    objc_msgSend_calculateGapsForChartModel_forTotalWidth_outBarWidth_outBarGroupGap_outBarGap_(TSCHBarColumnElementBuilder, v34, v33, v35, v36, v32, &v39 + 4, &v38, &v39);

    v24 = *(&v39 + 1) * 0.5 + v28 + v38 + (*(&v39 + 1) * v26) + (*&v39 * v26);
  }

  return v24;
}

- (id)labelStringForAxis:(id)axis index:(unint64_t)index
{
  axisCopy = axis;
  if (objc_msgSend_isCategory(axisCopy, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_model(axisCopy, v10, v11, v12, v13);
    v19 = objc_msgSend_numberOfSeries(v14, v15, v16, v17, v18);

    if (v19 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v19;
    }

    v25 = index % v24;
    v26 = objc_msgSend_model(axisCopy, v20, v21, v22, v23);
    v31 = objc_msgSend_nameForSeries_(v26, v27, v28, v29, v30, v25);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)selectionPathLabelType
{
  v5 = objc_msgSend_model(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chartInfo(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_chartType(v10, v11, v12, v13, v14);
  isMultiData = objc_msgSend_isMultiData(v15, v16, v17, v18, v19);

  if (isMultiData)
  {
    objc_msgSend_seriesLabelType(TSCHSelectionPathType, v21, v22, v23, v24);
  }

  else
  {
    objc_msgSend_axisLabelsType(TSCHSelectionPathType, v21, v22, v23, v24);
  }
  v25 = ;

  return v25;
}

@end