@interface TSTCellMapIterator
- (TSTCellMapIterator)initWithCellMap:(id)a3;
- (pair<TSTCell)nextCellAndCellUID;
@end

@implementation TSTCellMapIterator

- (TSTCellMapIterator)initWithCellMap:(id)a3
{
  v5 = a3;
  v44.receiver = self;
  v44.super_class = TSTCellMapIterator;
  v6 = [(TSTCellMapIterator *)&v44 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cellMap, a3);
    v12 = objc_msgSend_cellUIDs(v5, v8, v9, v10, v11);
    v17 = objc_msgSend_iterator(v12, v13, v14, v15, v16);
    cellUIDIterator = v7->_cellUIDIterator;
    v7->_cellUIDIterator = v17;

    v7->_index = 0;
    v23 = objc_msgSend_cellLists(v5, v19, v20, v21, v22);
    v28 = objc_msgSend_firstObject(v23, v24, v25, v26, v27);
    v33 = objc_msgSend_count(v28, v29, v30, v31, v32);
    v38 = objc_msgSend_cellUIDs(v5, v34, v35, v36, v37);
    v7->_oneToMany = v33 != objc_msgSend_count(v38, v39, v40, v41, v42);
  }

  return v7;
}

- (pair<TSTCell)nextCellAndCellUID
{
  cellUIDIterator = self->_cellUIDIterator;
  if (cellUIDIterator)
  {
    objc_msgSend_nextCellUID(cellUIDIterator, a3, v3, v4, v5);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  self->_currentCellUID._column = v12;
  self->_currentCellUID._row = v13;
  v9 = objc_msgSend_cellAtIndex_(self->_cellMap, a3, self->_index, v4, v5, v12, v13);
  currentCell = self->_currentCell;
  self->_currentCell = v9;

  if (!self->_oneToMany)
  {
    ++self->_index;
  }

  result = self->_currentCell;
  retstr->var0 = result;
  retstr->var1._column = self->_currentCellUID._column;
  retstr->var1._row = self->_currentCellUID._row;
  return result;
}

@end