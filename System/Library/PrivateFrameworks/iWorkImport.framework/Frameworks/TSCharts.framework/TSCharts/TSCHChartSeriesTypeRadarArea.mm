@interface TSCHChartSeriesTypeRadarArea
- (id)additionalFillSetMutations;
- (id)elementBuilder;
- (id)g_genericToSpecificPropertyMapRadarArea;
- (id)genericToSpecificPropertyMap;
- (id)legendFillForSeries:(id)series;
- (id)p_axisForSeries:(id)series isCategory:(BOOL)category;
@end

@implementation TSCHChartSeriesTypeRadarArea

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276244FD4;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A46EC8 != -1)
  {
    dispatch_once(&qword_280A46EC8, block);
  }

  return qword_280A46EC0;
}

- (id)elementBuilder
{
  if (qword_280A46ED0 != -1)
  {
    sub_2764A7428();
  }

  v3 = qword_280A46ED8;

  return v3;
}

- (id)p_axisForSeries:(id)series isCategory:(BOOL)category
{
  categoryCopy = category;
  seriesCopy = series;
  v10 = objc_msgSend_model(seriesCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_axisIDForAxisType_(seriesCopy, v11, v12, v13, v14, 5);
  v20 = objc_msgSend_axisForID_(v10, v16, v17, v18, v19, v15);

  v25 = objc_msgSend_axisIDForAxisType_(seriesCopy, v21, v22, v23, v24, 6);
  v30 = objc_msgSend_axisForID_(v10, v26, v27, v28, v29, v25);

  if (objc_msgSend_isCategory(v30, v31, v32, v33, v34) != categoryCopy)
  {
    v35 = v20;
  }

  else
  {
    v35 = v30;
  }

  v36 = v35;

  return v35;
}

- (id)legendFillForSeries:(id)series
{
  v6 = objc_msgSend_fillForSeries(series, a2, v3, v4, v5);

  return v6;
}

- (id)additionalFillSetMutations
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = &unk_28856BF60;
  v8[0] = MEMORY[0x277CBEC28];
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v2, v3, v4, v8, &v7, 1);

  return v5;
}

- (id)g_genericToSpecificPropertyMapRadarArea
{
  if (qword_280A47500 != -1)
  {
    sub_2764A7A78();
  }

  v3 = qword_280A474F8;

  return v3;
}

@end