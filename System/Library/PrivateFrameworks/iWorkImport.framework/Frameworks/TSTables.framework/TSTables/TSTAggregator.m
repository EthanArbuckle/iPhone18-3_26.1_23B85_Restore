@interface TSTAggregator
- (TSKUIDStruct)columnUid;
- (TSTAggregator)initWithArchive:(const void *)a3 groupBy:(id)a4;
- (TSTAggregator)initWithColumn:(TSKUIDStruct)a3 context:(id)a4;
- (TSTAggregator)initWithColumn:(TSKUIDStruct)a3 forGroupBy:(id)a4;
- (TSTCategoryOwner)categoryOwner;
- (TSTGroupBy)groupBy;
- (id)aggNodeForGroupNode:(id)a3;
- (id)description;
- (vector<TSCECellRef,)cellRefsForAggNodesAtGroup:(TSTAggregator *)self;
- (vector<TSCECellRef,)cellRefsForRowIndexes:(TSTAggregator *)self tableUID:(SEL)a3;
- (void)clearAggFormulas:(id)a3;
- (void)encodeToArchive:(void *)a3;
- (void)loadFromArchive:(const void *)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)rebuildAggFormulas;
- (void)saveToArchiver:(id)a3;
- (void)unpackAfterUnarchiveForGroupBy:(id)a3;
- (void)upgradeForNewAggregateTypes:(id)a3;
@end

@implementation TSTAggregator

- (TSTAggregator)initWithColumn:(TSKUIDStruct)a3 context:(id)a4
{
  upper = a3._upper;
  lower = a3._lower;
  v7.receiver = self;
  v7.super_class = TSTAggregator;
  result = [(TSTAggregator *)&v7 initWithContext:a4];
  if (result)
  {
    result->_columnUid._lower = lower;
    result->_columnUid._upper = upper;
  }

  return result;
}

- (TSTAggregator)initWithColumn:(TSKUIDStruct)a3 forGroupBy:(id)a4
{
  upper = a3._upper;
  lower = a3._lower;
  v7 = a4;
  v12 = objc_msgSend_context(v7, v8, v9, v10, v11);
  v14 = objc_msgSend_initWithColumn_context_(self, v13, lower, upper, v12);

  if (v14)
  {
    objc_storeWeak(&v14->_groupBy, v7);
  }

  return v14;
}

- (TSTAggregator)initWithArchive:(const void *)a3 groupBy:(id)a4
{
  v7 = a4;
  if (*(a3 + 3))
  {
    v8 = *(a3 + 3);
  }

  else
  {
    v8 = MEMORY[0x277D809E0];
  }

  v9 = TSKUIDStruct::loadFromMessage(v8, v6);
  v11 = objc_msgSend_initWithColumn_forGroupBy_(self, v10, v9, v10, v7);
  if (v11 && (*(a3 + 16) & 2) != 0)
  {
    v12 = [TSTAggNode alloc];
    if (*(a3 + 4))
    {
      v15 = objc_msgSend_initWithArchive_aggregator_(v12, v13, *(a3 + 4), v11, v14);
    }

    else
    {
      v15 = objc_msgSend_initWithArchive_aggregator_(v12, v13, &TST::_GroupByArchive_AggNodeArchive_default_instance_, v11, v14);
    }

    aggRoot = v11->_aggRoot;
    v11->_aggRoot = v15;
  }

  return v11;
}

- (void)loadFromArchive:(const void *)a3
{
  if (*(a3 + 3))
  {
    v5 = *(a3 + 3);
  }

  else
  {
    v5 = MEMORY[0x277D809E0];
  }

  self->_columnUid._lower = TSKUIDStruct::loadFromMessage(v5, a2);
  self->_columnUid._upper = v6;
  if ((*(a3 + 16) & 2) != 0)
  {
    v7 = [TSTAggNode alloc];
    if (*(a3 + 4))
    {
      v10 = objc_msgSend_initWithArchive_aggregator_(v7, v8, *(a3 + 4), self, v9);
    }

    else
    {
      v10 = objc_msgSend_initWithArchive_aggregator_(v7, v8, &TST::_GroupByArchive_AggNodeArchive_default_instance_, self, v9);
    }

    aggRoot = self->_aggRoot;
    self->_aggRoot = v10;
  }
}

- (void)encodeToArchive:(void *)a3
{
  *(a3 + 4) |= 1u;
  v5 = *(a3 + 3);
  if (!v5)
  {
    v6 = *(a3 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = MEMORY[0x223DA0360](v6);
    *(a3 + 3) = v5;
  }

  TSKUIDStruct::saveToMessage(&self->_columnUid, v5);
  aggRoot = self->_aggRoot;
  if (aggRoot)
  {
    *(a3 + 4) |= 2u;
    v11 = *(a3 + 4);
    if (!v11)
    {
      v12 = *(a3 + 1);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_AggNodeArchive>(v12);
      *(a3 + 4) = v11;
    }

    objc_msgSend_encodeToArchive_(aggRoot, v7, v11, v8, v9);
  }
}

- (void)unpackAfterUnarchiveForGroupBy:(id)a3
{
  v7 = a3;
  objc_storeWeak(&self->_groupBy, v7);
  objc_msgSend_unpackAfterUnarchiveForGroupBy_(self->_aggRoot, v4, v7, v5, v6);
}

- (void)loadFromUnarchiver:(id)a3
{
  v11 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v11, v4, off_2812E4498[266], v5, v6);

  objc_msgSend_loadFromArchive_(self, v8, v7, v9, v10);
}

- (void)saveToArchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v10, v4, sub_22120FC00, off_2812E4498[266], v5);

  objc_msgSend_encodeToArchive_(self, v7, v6, v8, v9);
}

- (TSTCategoryOwner)categoryOwner
{
  WeakRetained = objc_loadWeakRetained(&self->_groupBy);
  v7 = objc_msgSend_categoryOwner(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- (vector<TSCECellRef,)cellRefsForRowIndexes:(TSTAggregator *)self tableUID:(SEL)a3
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x4812000000;
  v36 = sub_22120F1BC;
  v37 = sub_22120F1E0;
  v38 = &unk_22188E88F;
  v40 = 0;
  v41 = 0;
  __p = 0;
  if (!TSUIndexSet::count(a4))
  {
    goto LABEL_7;
  }

  v13 = objc_msgSend_categoryOwner(self, v9, v10, v11, v12);
  v18 = objc_msgSend_tableModel(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_columnRowUIDMap(v18, v19, v20, v21, v22);

  if (*&self->_columnUid == 0)
  {
    v26 = 0;
LABEL_5:
    v27 = v34;
    v28 = TSUIndexSet::count(a4);
    sub_22120F1F8(v27 + 6, v28);
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x4812000000;
    v31[3] = sub_22120F2B8;
    v31[4] = nullsub_29;
    v31[5] = &unk_22188E88F;
    v31[6] = v26 << 32;
    v32 = *a5;
    TSUIndexSet::enumerateIndexesUsingBlock();
    _Block_object_dispose(v31, 8);
    goto LABEL_6;
  }

  v26 = objc_msgSend_columnIndexForColumnUID_(v23, v24, self->_columnUid._lower, self->_columnUid._upper, v25);
  if (v26 != 0x7FFF)
  {
    goto LABEL_5;
  }

LABEL_6:

LABEL_7:
  v29 = v34;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_22120FC6C(retstr, v29[6], v29[7], 0xAAAAAAAAAAAAAAABLL * ((v29[7] - v29[6]) >> 3));
  _Block_object_dispose(&v33, 8);
  result = __p;
  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_groupBy);
  v6 = TSKUIDStruct::description(&self->_columnUid);
  v10 = objc_msgSend_stringWithFormat_(v3, v7, @"%@ group-by: %@ for column: %@", v8, v9, v4, WeakRetained, v6);

  return v10;
}

- (vector<TSCECellRef,)cellRefsForAggNodesAtGroup:(TSTAggregator *)self
{
  v6 = a4;
  v11 = objc_msgSend_groupBy(self, v7, v8, v9, v10);
  v21 = 0;
  v22 = &v21;
  v23 = 0x4812000000;
  v24 = sub_22120F1BC;
  v25 = sub_22120F1E0;
  v26 = &unk_22188E88F;
  v28 = 0;
  v29 = 0;
  __p = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22120F650;
  v18[3] = &unk_278461598;
  v18[4] = self;
  v12 = v11;
  v19 = v12;
  v20 = &v21;
  objc_msgSend_enumerateDirectChildren_(v6, v13, v18, v14, v15);
  v16 = v22;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_22120FC6C(retstr, v16[6], v16[7], 0xAAAAAAAAAAAAAAABLL * ((v16[7] - v16[6]) >> 3));

  _Block_object_dispose(&v21, 8);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  return result;
}

- (id)aggNodeForGroupNode:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_groupBy(self, v5, v6, v7, v8);
  v36[0] = objc_msgSend_columnUid(self, v10, v11, v12, v13);
  v36[1] = v14;
  v21 = objc_msgSend_aggNodeForColumnUid_(v4, v14, v36, v15, v16);
  if (!v21)
  {
    NextAggFormulaCoord = objc_msgSend_getNextAggFormulaCoord(v9, v17, v18, v19, v20);
    v23 = [TSTAggNode alloc];
    v21 = objc_msgSend_initWithFormulaCoord_groupNode_aggregator_(v23, v24, NextAggFormulaCoord, v4, self);
    objc_msgSend_addAggNode_(v4, v25, v21, v26, v27);
    if (objc_msgSend_isRebuildFormulasDeferred(v9, v28, v29, v30, v31))
    {
      objc_msgSend_setNeedsRebuildOfAggFormulas_(v9, v32, 1, v33, v34);
    }

    else
    {
      objc_msgSend_rebuildFormulasForAggNode_(v4, v32, v21, v33, v34);
    }
  }

  return v21;
}

- (void)rebuildAggFormulas
{
  v6 = objc_msgSend_categoryOwner(self, a2, v2, v3, v4);
  if (objc_msgSend_allowRegistrationOfAggFormulas(v6, v7, v8, v9, v10))
  {
    objc_msgSend_willModify(self, v11, v12, v13, v14);
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_22120F980;
    v24 = sub_22120F990;
    v25 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_groupBy);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22120F998;
    v19[3] = &unk_2784615C0;
    v19[4] = self;
    v19[5] = &v20;
    objc_msgSend_enumerateAllGroupsWithBlock_(WeakRetained, v16, v19, v17, v18);

    objc_storeStrong(&self->_aggRoot, v21[5]);
    _Block_object_dispose(&v20, 8);
  }
}

- (void)clearAggFormulas:(id)a3
{
  v4 = a3;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  aggRoot = self->_aggRoot;
  v14 = objc_msgSend_groupBy(self, v10, v11, v12, v13);
  v21[0] = objc_msgSend_groupByUid(v14, v15, v16, v17, v18);
  v21[1] = v19;
  objc_msgSend_clearAggFormulas_inOwner_(aggRoot, v19, v4, v21, v20);
}

- (void)upgradeForNewAggregateTypes:(id)a3
{
  v4 = a3;
  aggRoot = self->_aggRoot;
  v10 = objc_msgSend_groupBy(self, v6, v7, v8, v9);
  v17[0] = objc_msgSend_groupByUid(v10, v11, v12, v13, v14);
  v17[1] = v15;
  objc_msgSend_upgradeForNewAggregateTypes_inOwner_(aggRoot, v15, v4, v17, v16);
}

- (TSTGroupBy)groupBy
{
  WeakRetained = objc_loadWeakRetained(&self->_groupBy);

  return WeakRetained;
}

- (TSKUIDStruct)columnUid
{
  p_columnUid = &self->_columnUid;
  lower = self->_columnUid._lower;
  upper = p_columnUid->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end