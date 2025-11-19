@interface TSCHChartReferenceLineLabelPaddingLayoutItem
- (BOOL)p_hasReferenceLineLabelsWithModel:(id)a3;
- (CGSize)calcMinSize;
- (CGSize)p_calcMinSizeForModel:(id)a3;
- (TSCHChartReferenceLineLabelPaddingLayoutItem)initWithParent:(id)a3 axisID:(id)a4;
@end

@implementation TSCHChartReferenceLineLabelPaddingLayoutItem

- (TSCHChartReferenceLineLabelPaddingLayoutItem)initWithParent:(id)a3 axisID:(id)a4
{
  v7 = a4;
  v29.receiver = self;
  v29.super_class = TSCHChartReferenceLineLabelPaddingLayoutItem;
  v9 = [(TSCHChartLayoutItem *)&v29 initWithParent:a3];
  if (v9)
  {
    if (!a3)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartReferenceLineLabelPaddingLayoutItem initWithParent:axisID:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartReferenceLineLabelPaddingLayoutItem.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 27, 0, "invalid nil value for '%{public}s'", "parent");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    }

    objc_storeStrong(&v9->_axisID, a4);
  }

  return v9;
}

- (CGSize)calcMinSize
{
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3010000000;
  v25 = &unk_27657B92B;
  v26 = *MEMORY[0x277CBF3A8];
  if (objc_msgSend_isMultiData(v6, v7, *&v26, v8, v9))
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2762A9900;
    v21[3] = &unk_27A6B7408;
    v21[4] = self;
    v21[5] = &v22;
    objc_msgSend_enumerateMultiDataModelsUsingBlock_(v6, v10, COERCE_DOUBLE(3221225472), v12, v13, v21);
    v14 = v23[4];
    v15 = v23[5];
  }

  else
  {
    objc_msgSend_p_calcMinSizeForModel_(self, v10, v11, v12, v13, v6);
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

- (CGSize)p_calcMinSizeForModel:(id)a3
{
  v8 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  if (objc_msgSend_p_hasReferenceLineLabelsWithModel_(self, a2, v3, v4, v5, a3))
  {
    v13 = objc_msgSend_parent(self, v9, v10, v11, v12);
    v18 = objc_msgSend_axisPosition(v13, v14, v15, v16, v17);
    if (v18 == 2)
    {
      objc_msgSend_referenceLineLabelTopAxisPadding(TSCHElementBuilder, v19, v20, v21, v22);
      v7 = v7 + v24;
    }

    else if (v18 == 3)
    {
      objc_msgSend_referenceLineLabelRightAxisPadding(TSCHElementBuilder, v19, v20, v21, v22);
      v8 = v8 + v23;
    }
  }

  v25 = v8;
  v26 = v7;
  result.height = v26;
  result.width = v25;
  return result;
}

- (BOOL)p_hasReferenceLineLabelsWithModel:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_axisID(self, v5, v6, v7, v8);
  v14 = objc_msgSend_axisForID_(v4, v10, v11, v12, v13, v9);

  if (objc_msgSend_supportsReferenceLines(v14, v15, v16, v17, v18))
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v22 = objc_msgSend_referenceLines(v14, v19, 0.0, v20, v21);
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, v24, v25, v26, &v49, v53, 16);
    if (v28)
    {
      v48 = v4;
      v32 = *v50;
      while (2)
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v50 != v32)
          {
            objc_enumerationMutation(v22);
          }

          v34 = *(*(&v49 + 1) + 8 * i);
          if (objc_msgSend_intValueForProperty_defaultValue_(v34, v27, v29, v30, v31, 1223, 0))
          {
            v29 = sub_276297280(v34);
            v35 = (*&v29 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
            v36 = v29 < 0.0 && ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
            if (v29 >= 0.0)
            {
              v35 = 0;
            }

            v37 = (*&v29 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v35;
            if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
            {
              v37 = 1;
            }

            if (((v37 | v36) & 1) == 0 && v29 <= 1.0)
            {
              v38 = objc_msgSend_objectValueForProperty_(v34, v27, v29, v30, v31, 1219);
              if (objc_msgSend_intValueForProperty_defaultValue_(v34, v39, v40, v41, v42, 1222, 0) && v38 && objc_msgSend_length(v38, v43, v44, v45, v46) || objc_msgSend_intValueForProperty_defaultValue_(v34, v43, v44, v45, v46, 1224, 0))
              {

                LOBYTE(v28) = 1;
                goto LABEL_30;
              }
            }
          }
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v27, v29, v30, v31, &v49, v53, 16);
        if (v28)
        {
          continue;
        }

        break;
      }

LABEL_30:
      v4 = v48;
    }
  }

  else
  {
    LOBYTE(v28) = 0;
  }

  return v28;
}

@end