@interface TSTFilteredTableDynamicContentDelegate
- (BOOL)cell:(id *)a3 forCellID:(TSUCellCoord)a4;
- (TSTFilteredTableDynamicContentDelegate)initWithTableInfo:(id)a3;
@end

@implementation TSTFilteredTableDynamicContentDelegate

- (TSTFilteredTableDynamicContentDelegate)initWithTableInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSTFilteredTableDynamicContentDelegate;
  v6 = [(TSTFilteredTableDynamicContentDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableInfo, a3);
  }

  return v7;
}

- (BOOL)cell:(id *)a3 forCellID:(TSUCellCoord)a4
{
  v7 = objc_msgSend_newCell(self->_tableInfo, a2, a3, *&a4, v4);
  v12 = sub_2214AAEA8(v7, v8, v9, v10, v11);
  v14 = objc_msgSend_localizedStringForKey_value_table_(v12, v13, @"No rows match the filter conditions.", &stru_2834BADA0, @"TSTables");
  objc_msgSend_setStringValue_(v7, v15, v14, v16, v17);

  v22 = objc_msgSend_headerRowCellStyle(self->_tableInfo, v18, v19, v20, v21);
  objc_msgSend_setCellStyle_(v7, v23, v22, v24, v25);

  v30 = objc_msgSend_headerRowTextStyle(self->_tableInfo, v26, v27, v28, v29);
  objc_msgSend_setTextStyle_(v7, v31, v30, v32, v33);

  v34 = v7;
  *a3 = v7;

  return 1;
}

@end