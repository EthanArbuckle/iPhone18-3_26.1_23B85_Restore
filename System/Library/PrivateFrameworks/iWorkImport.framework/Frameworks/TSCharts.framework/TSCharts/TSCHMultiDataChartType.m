@interface TSCHMultiDataChartType
+ (id)g_genericToSpecificPropertyMapCategoryAxis;
- (id)cellsCreatedWarning;
- (id)p_genericToSpecificPropertyMap;
@end

@implementation TSCHMultiDataChartType

- (id)p_genericToSpecificPropertyMap
{
  v4.receiver = self;
  v4.super_class = TSCHMultiDataChartType;
  v2 = [(TSCHChartType *)&v4 genericToSpecificPropertyMap];

  return v2;
}

- (id)cellsCreatedWarning
{
  v6 = MEMORY[0x277CCACA8];
  v7 = sub_276360774(v2, v3, v4);
  v12 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, v9, v10, v11, @"Interactive charts can’t be created with more than %@ references in a series. Try again with fewer selected cells.", &stru_288528678, @"TSCharts");
  v17 = objc_msgSend_maxCellsForInsert(self, v13, v14, v15, v16);
  v18 = sub_27624B840(v17);
  v23 = objc_msgSend_stringWithFormat_(v6, v19, v20, v21, v22, v12, v18);

  return v23;
}

+ (id)g_genericToSpecificPropertyMapCategoryAxis
{
  if (qword_280A47410 != -1)
  {
    sub_2764A794C();
  }

  v3 = qword_280A47408;

  return v3;
}

@end