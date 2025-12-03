@interface TSCHChartDataSetNameLayoutItem
- (BOOL)isAboveChartBody;
- (CGSize)calcMinSize;
- (id)titleSelectionPath;
- (id)titleTextForModel:(id)model;
- (unint64_t)titleParagraphStyleIndex;
@end

@implementation TSCHChartDataSetNameLayoutItem

- (CGSize)calcMinSize
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3010000000;
  v25 = &unk_27657B92B;
  v26 = *MEMORY[0x277CBF3A8];
  v5 = objc_msgSend_model(self, a2, *&v26, v2, v3);
  if (objc_msgSend_isMultiData(v5, v6, v7, v8, v9))
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_276382968;
    v21[3] = &unk_27A6B7408;
    v21[4] = self;
    v21[5] = &v22;
    objc_msgSend_enumerateMultiDataModelsUsingBlock_(v5, v10, COERCE_DOUBLE(3221225472), v12, v13, v21);
    v14 = v23[4];
    v15 = v23[5];
  }

  else
  {
    objc_msgSend_calcMinSizeForModel_(self, v10, v11, v12, v13, v5);
    v14 = v16;
    v15 = v17;
    v18 = v23;
    v23[4] = v16;
    v18[5] = v17;
  }

  _Block_object_dispose(&v22, 8);
  v19 = v14;
  v20 = v15;
  result.height = v20;
  result.width = v19;
  return result;
}

- (id)titleTextForModel:(id)model
{
  modelCopy = model;
  v9 = objc_msgSend_editedString(self, v5, v6, v7, v8);
  v14 = v9;
  if (v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = objc_msgSend_dataSetNameForMultiDataModel(modelCopy, v10, v11, v12, v13);
  }

  v16 = v15;

  return v16;
}

- (unint64_t)titleParagraphStyleIndex
{
  v5 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_intValueForProperty_defaultValue_(v5, v6, v7, v8, v9, 1099, 0);

  return v10;
}

- (id)titleSelectionPath
{
  v5 = objc_msgSend_chartDataSetNameType(TSCHSelectionPathType, a2, v2, v3, v4);
  v10 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v6, v7, v8, v9, v5, 0);

  return v10;
}

- (BOOL)isAboveChartBody
{
  v5 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_intValueForProperty_defaultValue_(v5, v6, v7, v8, v9, 1098, 0) == 1;

  return v10;
}

@end