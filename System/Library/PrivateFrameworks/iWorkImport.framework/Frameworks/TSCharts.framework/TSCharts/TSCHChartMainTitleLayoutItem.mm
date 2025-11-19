@interface TSCHChartMainTitleLayoutItem
- (BOOL)isTitleOn;
- (BOOL)shouldPlaceTitleAtCenter;
- (id)titleTextForModel:(id)a3;
- (unint64_t)titleParagraphStyleIndex;
@end

@implementation TSCHChartMainTitleLayoutItem

- (BOOL)isTitleOn
{
  v5 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_intValueForProperty_defaultValue_(v5, v6, v7, v8, v9, 1114, 0) != 0;

  return v10;
}

- (BOOL)shouldPlaceTitleAtCenter
{
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chartType(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_supportsPlaceTitleAtCenter(v11, v12, v13, v14, v15);

  if (!v16)
  {
    return 0;
  }

  v21 = objc_msgSend_chartInfo(self, v17, v18, v19, v20);
  v26 = objc_msgSend_intValueForProperty_defaultValue_(v21, v22, v23, v24, v25, 1100, 1) != 0;

  return v26;
}

- (id)titleTextForModel:(id)a3
{
  v6 = objc_msgSend_chartInfo(self, a2, v3, v4, v5, a3);
  v11 = objc_msgSend_objectValueForProperty_(v6, v7, v8, v9, v10, 1124);

  return v11;
}

- (unint64_t)titleParagraphStyleIndex
{
  v5 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_intValueForProperty_defaultValue_(v5, v6, v7, v8, v9, 1126, 0);

  return v10;
}

@end