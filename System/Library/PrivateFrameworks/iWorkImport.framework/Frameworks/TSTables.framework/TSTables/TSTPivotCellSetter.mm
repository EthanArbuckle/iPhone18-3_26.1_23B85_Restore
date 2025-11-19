@interface TSTPivotCellSetter
- (TSTPivotCellSetter)initWithPivotTable:(id)a3 minion:(id)a4 preservingStyles:(BOOL)a5;
- (void)applyCellValue:(id)a3 atUidCoord:(TSKUIDStructCoord *)a4 appendTotalForPivotsFlag:(BOOL)a5;
- (void)applyFormula:(id)a3 atUidCoord:(TSKUIDStructCoord *)a4;
- (void)setStringValue:(id)a3 atUidCoord:(TSKUIDStructCoord *)a4;
@end

@implementation TSTPivotCellSetter

- (TSTPivotCellSetter)initWithPivotTable:(id)a3 minion:(id)a4 preservingStyles:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v23.receiver = self;
  v23.super_class = TSTPivotCellSetter;
  v11 = [(TSTPivotCellSetter *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_pivotTable, a3);
    objc_storeStrong(&v12->_minion, a4);
    v12->_preservingStyles = a5;
    v17 = objc_msgSend_newCell(v9, v13, v14, v15, v16);
    cell = v12->_cell;
    v12->_cell = v17;

    v19 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -4);
    v20 = dispatch_queue_create("com.apple.Numbers.TST.PivotCellSetter", v19);
    workerQueue = v12->_workerQueue;
    v12->_workerQueue = v20;
  }

  return v12;
}

- (void)applyFormula:(id)a3 atUidCoord:(TSKUIDStructCoord *)a4
{
  v6 = a3;
  workerQueue = self->_workerQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2211D6EFC;
  v10[3] = &unk_278460F58;
  row = a4->_row;
  column = a4->_column;
  v13 = row;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_async(workerQueue, v10);
}

- (void)applyCellValue:(id)a3 atUidCoord:(TSKUIDStructCoord *)a4 appendTotalForPivotsFlag:(BOOL)a5
{
  v8 = a3;
  workerQueue = self->_workerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2211D705C;
  block[3] = &unk_278460F80;
  row = a4->_row;
  column = a4->_column;
  v15 = row;
  v16 = a5;
  block[4] = self;
  v13 = v8;
  v11 = v8;
  dispatch_async(workerQueue, block);
}

- (void)setStringValue:(id)a3 atUidCoord:(TSKUIDStructCoord *)a4
{
  v6 = a3;
  workerQueue = self->_workerQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2211D7450;
  v10[3] = &unk_278460F58;
  row = a4->_row;
  column = a4->_column;
  v13 = row;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_async(workerQueue, v10);
}

@end