@interface TSCHChartUIState
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TSCHChartUIState)initWithArchive:(const void *)a3;
- (TSCHChartUIState)initWithRowRange:(_NSRange)a3 colRange:(_NSRange)a4 useFullKeyboard:(BOOL)a5 multiDataSetIndex:(unint64_t)a6 validIndex:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)resetForInitialViewing;
- (void)saveToArchive:(void *)a3;
@end

@implementation TSCHChartUIState

- (TSCHChartUIState)initWithRowRange:(_NSRange)a3 colRange:(_NSRange)a4 useFullKeyboard:(BOOL)a5 multiDataSetIndex:(unint64_t)a6 validIndex:(BOOL)a7
{
  length = a4.length;
  location = a4.location;
  v11 = a3.length;
  v12 = a3.location;
  v14.receiver = self;
  v14.super_class = TSCHChartUIState;
  result = [(TSCHChartUIState *)&v14 init];
  if (result)
  {
    result->_lastRowSelectedInCDE = v12;
    result->_lastRowCountInCDE = v11;
    result->_lastColSelectedInCDE = location;
    result->_lastColCountInCDE = length;
    result->_useFullKeyboard = a5;
    result->_multiDataSetIndex = a6;
    result->_isValidMultiDataSetIndex = a7;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = TSUSpecificCast();
  if (v6)
  {
    RowSelectedInCDE = objc_msgSend_lastRowSelectedInCDE(self, v5, v7, v8, v9);
    if (RowSelectedInCDE == objc_msgSend_lastRowSelectedInCDE(v6, v11, v12, v13, v14) && (RowCountInCDE = objc_msgSend_lastRowCountInCDE(self, v15, v16, v17, v18), RowCountInCDE == objc_msgSend_lastRowCountInCDE(v6, v20, v21, v22, v23)) && (ColSelectedInCDE = objc_msgSend_lastColSelectedInCDE(self, v24, v25, v26, v27), ColSelectedInCDE == objc_msgSend_lastColSelectedInCDE(v6, v29, v30, v31, v32)) && (ColCountInCDE = objc_msgSend_lastColCountInCDE(self, v33, v34, v35, v36), ColCountInCDE == objc_msgSend_lastColCountInCDE(v6, v38, v39, v40, v41)) && (v46 = objc_msgSend_useFullKeyboard(self, v42, v43, v44, v45), v46 == objc_msgSend_useFullKeyboard(v6, v47, v48, v49, v50)))
    {
      v57 = objc_msgSend_multiDataSetIndex(self, v51, v52, v53, v54);
      v55 = v57 == objc_msgSend_multiDataSetIndex(v6, v58, v59, v60, v61);
    }

    else
    {
      v55 = 0;
    }
  }

  else
  {
    v62.receiver = self;
    v62.super_class = TSCHChartUIState;
    v55 = [(TSCHChartUIState *)&v62 isEqual:v4];
  }

  return v55;
}

- (NSString)description
{
  v40.receiver = self;
  v40.super_class = TSCHChartUIState;
  v3 = [(TSCHChartUIState *)&v40 description];
  RowSelectedInCDE = objc_msgSend_lastRowSelectedInCDE(self, v4, v5, v6, v7);
  RowCountInCDE = objc_msgSend_lastRowCountInCDE(self, v9, v10, v11, v12);
  ColSelectedInCDE = objc_msgSend_lastColSelectedInCDE(self, v14, v15, v16, v17);
  ColCountInCDE = objc_msgSend_lastColCountInCDE(self, v19, v20, v21, v22);
  v28 = objc_msgSend_useFullKeyboard(self, v24, v25, v26, v27);
  v33 = objc_msgSend_multiDataSetIndex(self, v29, v30, v31, v32);
  if (v28)
  {
    objc_msgSend_stringByAppendingFormat_(v3, v34, v35, v36, v37, @" { lastRowSelectedInCDE = %lu lastRowCountInCDE = %lu lastColSelectedInCDE = %lu lastColCountInCDE = %lu useFullKeyboard = %@ multiDataSetIndex = %lu }", RowSelectedInCDE, RowCountInCDE, ColSelectedInCDE, ColCountInCDE, @"YES", v33);
  }

  else
  {
    objc_msgSend_stringByAppendingFormat_(v3, v34, v35, v36, v37, @" { lastRowSelectedInCDE = %lu lastRowCountInCDE = %lu lastColSelectedInCDE = %lu lastColCountInCDE = %lu useFullKeyboard = %@ multiDataSetIndex = %lu }", RowSelectedInCDE, RowCountInCDE, ColSelectedInCDE, ColCountInCDE, @"NO", v33);
  }
  v38 = ;

  return v38;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  objc_msgSend_lastRowSelectedInCDE(self, v5, v6, v7, v8);
  objc_msgSend_lastRowCountInCDE(self, v9, v10, v11, v12);
  objc_msgSend_lastColSelectedInCDE(self, v13, v14, v15, v16);
  objc_msgSend_lastColCountInCDE(self, v17, v18, v19, v20);
  objc_msgSend_useFullKeyboard(self, v21, v22, v23, v24);
  objc_msgSend_multiDataSetIndex(self, v25, v26, v27, v28);

  return MEMORY[0x2821F9670](v4, sel_initWithRowRange_colRange_useFullKeyboard_multiDataSetIndex_, v29, v30, v31);
}

- (TSCHChartUIState)initWithArchive:(const void *)a3
{
  v4 = *(a3 + 10);
  v5 = *(a3 + 14);
  v6 = *(a3 + 15);
  v7 = *(a3 + 16);
  v8 = *(a3 + 17);
  v9 = *(a3 + 76);
  v10 = *(a3 + 18);
  v11 = *(a3 + 77);
  v12 = google::protobuf::internal::ExtensionSet::Has((a3 + 16));
  if ((v4 & 0x10) != 0)
  {
    v17 = v8;
  }

  else
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((v4 & 4) != 0)
  {
    v18 = v6;
  }

  else
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((v4 & 8) != 0)
  {
    v19 = v7;
  }

  else
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((v4 & 2) != 0)
  {
    v20 = v5;
  }

  else
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return objc_msgSend_initWithRowRange_colRange_useFullKeyboard_multiDataSetIndex_validIndex_(self, v13, v14, v15, v16, v20, v19, v18, v17, *&v9 & ((v4 & 0x40) >> 6), v10 & (v4 << 26 >> 31), v12 | (v11 & ((v4 & 0x80) >> 7)));
}

- (void)saveToArchive:(void *)a3
{
  v8 = *(a3 + 10);
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  *(a3 + 76) = 0;
  *(a3 + 18) = 0;
  *(a3 + 10) = v8 & 0xFFFFFF81;
  if (objc_msgSend_lastRowSelectedInCDE(self, a2, v3, v4, v5) != 0x7FFFFFFFFFFFFFFFLL)
  {
    RowSelectedInCDE = objc_msgSend_lastRowSelectedInCDE(self, v9, v10, v11, v12);
    *(a3 + 10) |= 2u;
    *(a3 + 14) = RowSelectedInCDE;
  }

  if (objc_msgSend_lastColSelectedInCDE(self, v9, v10, v11, v12) != 0x7FFFFFFFFFFFFFFFLL)
  {
    ColSelectedInCDE = objc_msgSend_lastColSelectedInCDE(self, v14, v15, v16, v17);
    *(a3 + 10) |= 4u;
    *(a3 + 15) = ColSelectedInCDE;
  }

  if (objc_msgSend_lastRowCountInCDE(self, v14, v15, v16, v17) != 0x7FFFFFFFFFFFFFFFLL)
  {
    RowCountInCDE = objc_msgSend_lastRowCountInCDE(self, v19, v20, v21, v22);
    *(a3 + 10) |= 8u;
    *(a3 + 16) = RowCountInCDE;
  }

  if (objc_msgSend_lastColCountInCDE(self, v19, v20, v21, v22) != 0x7FFFFFFFFFFFFFFFLL)
  {
    ColCountInCDE = objc_msgSend_lastColCountInCDE(self, v24, v25, v26, v27);
    *(a3 + 10) |= 0x10u;
    *(a3 + 17) = ColCountInCDE;
  }

  v29 = objc_msgSend_useFullKeyboard(self, v24, v25, v26, v27);
  *(a3 + 10) |= 0x40u;
  *(a3 + 76) = v29;
  v34 = objc_msgSend_multiDataSetIndex(self, v30, v31, v32, v33);
  if (v34 >> 31)
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "[TSCHChartUIState saveToArchive:]");
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartUIState.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v52, v53, v54, v55, v46, v51, 112, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
    LODWORD(v34) = 0x7FFFFFFF;
  }

  *(a3 + 10) |= 0x20u;
  *(a3 + 18) = v34;
  isValidMultiDataSetIndex = objc_msgSend_isValidMultiDataSetIndex(self, v35, v36, v37, v38);
  *(a3 + 10) |= 0x80u;
  *(a3 + 77) = isValidMultiDataSetIndex;
  if (objc_msgSend_isValidMultiDataSetIndex(self, v40, v41, v42, v43))
  {
    v44 = TSCH::ChartUIStateMultiDataIndexUpgrade::upgraded_from_model;

    google::protobuf::internal::ExtensionSet::SetBool((a3 + 16), v44, 8, 1, 0);
  }
}

- (void)resetForInitialViewing
{
  *&self->_lastRowSelectedInCDE = xmmword_2764D7130;
  *&self->_lastColSelectedInCDE = xmmword_2764D7130;
  self->_multiDataSetIndex = 0;
}

@end