@interface TSTAggNode
- (TSTAggNode)initWithArchive:(const void *)a3 aggregator:(id)a4;
- (TSTAggNode)initWithFormulaCoord:(TSUCellCoord)a3 groupNode:(id)a4 aggregator:(id)a5;
- (TSTAggregator)aggregator;
- (TSTGroupNode)groupNode;
- (id).cxx_construct;
- (id)descriptionWithGroupBy:(id)a3;
- (void)addChild:(id)a3 skipWillModify:(BOOL)a4;
- (void)clearAggFormulas:(id)a3 inOwner:(const TSKUIDStruct *)a4;
- (void)encodeToArchive:(void *)a3;
- (void)enumerateDirectChildren:(id)a3;
- (void)removeChild:(id)a3 skipWillModify:(BOOL)a4;
- (void)setAccumulator:(id)a3;
- (void)unpackAfterUnarchiveForGroupBy:(id)a3;
- (void)upgradeForNewAggregateTypes:(id)a3 inOwner:(const TSKUIDStruct *)a4;
@end

@implementation TSTAggNode

- (TSTAggNode)initWithFormulaCoord:(TSUCellCoord)a3 groupNode:(id)a4 aggregator:(id)a5
{
  v20 = a3;
  v7 = a4;
  v8 = a5;
  v19.receiver = self;
  v19.super_class = TSTAggNode;
  v9 = [(TSTAggNode *)&v19 init];
  if (v9)
  {
    TSUCellCoord::verifyCoordIsSane(&v20);
    v9->_formulaCoord = v20;
    objc_storeWeak(&v9->_groupNode, v7);
    v10 = objc_storeWeak(&v9->_aggregator, v8);
    v15 = objc_msgSend_groupBy(v8, v11, v12, v13, v14);
    objc_msgSend_setAggNode_forFormulaCoord_(v15, v16, v9, &v9->_formulaCoord, v17);
  }

  return v9;
}

- (void)setAccumulator:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_aggregator);
  objc_msgSend_willModify(WeakRetained, v6, v7, v8, v9);

  accumulator = self->_accumulator;
  self->_accumulator = v4;
}

- (void)addChild:(id)a3 skipWillModify:(BOOL)a4
{
  v10 = a3;
  if (v10)
  {
    if (!a4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_aggregator);
      objc_msgSend_willModify(WeakRetained, v12, v13, v14, v15);
    }

    if (!self->_children)
    {
      v16 = objc_opt_new();
      children = self->_children;
      self->_children = v16;
    }

    v25 = objc_msgSend_formulaCoord(v10, v6, v7, v8, v9);
    if ((TSCECellCoordSet::containsCellCoord(&self->_childrenCoordSet, &v25) & 1) == 0)
    {
      objc_msgSend_addObject_(self->_children, v18, v10, v19, v20);
      v25 = objc_msgSend_formulaCoord(v10, v21, v22, v23, v24);
      TSCECellCoordSet::addCellCoord(&self->_childrenCoordSet, &v25);
    }
  }
}

- (void)removeChild:(id)a3 skipWillModify:(BOOL)a4
{
  v10 = a3;
  if (v10)
  {
    if (!a4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_aggregator);
      objc_msgSend_willModify(WeakRetained, v12, v13, v14, v15);
    }

    v19 = objc_msgSend_formulaCoord(v10, v6, v7, v8, v9);
    TSCECellCoordSet::removeCellCoord(&self->_childrenCoordSet, &v19);
    objc_msgSend_removeObjectIdenticalTo_(self->_children, v16, v10, v17, v18);
  }
}

- (void)clearAggFormulas:(id)a3 inOwner:(const TSKUIDStruct *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_msgSend_removeFormulaAt_inOwner_(v6, v7, &self->_formulaCoord, a4, v8);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = self->_children;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
  if (v13)
  {
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_clearAggFormulas_inOwner_(*(*(&v20 + 1) + 8 * v15++), v11, v6, a4, v12, v20);
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v20, v24, 16);
    }

    while (v13);
  }

  objc_msgSend_removeAllObjects(self->_children, v16, v17, v18, v19);
  TSCECellCoordSet::clear(&self->_childrenCoordSet);
}

- (void)upgradeForNewAggregateTypes:(id)a3 inOwner:(const TSKUIDStruct *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_aggregator);
  objc_msgSend_willModifyForUpgrade(WeakRetained, v8, v9, v10, v11);

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = self->_children;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v32, v36, 16);
  if (v16)
  {
    v17 = *v33;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_upgradeForNewAggregateTypes_inOwner_(*(*(&v32 + 1) + 8 * i), v14, v6, a4, v15);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v32, v36, 16);
    }

    while (v16);
  }

  formulaCoord = self->_formulaCoord;
  v31 = *a4;
  v23 = objc_opt_new();
  if (v6)
  {
    objc_msgSend_precedentsOfCell_(v6, v19, &formulaCoord, v21, v22);
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
  }

  v24 = objc_msgSend_referenceSet(v23, v19, v20, v21, v22, *&v29._vptr$TSCEReferenceSet, *&v29._cellRefs.__table_.__bucket_list_, *&v29._cellRefs.__table_.__first_node_.__next_, *&v29._cellRefs.__table_.__max_load_factor_, *&v29._rangeRefs.__tree_.__end_node_.__left_, *&v29._datalessRefs, *&v29._tableUuidRefs, *&v29._spanningRefs, v29._wholeOwnerRefs, formulaCoord, v31, v32);
  TSCEReferenceSet::operator=(v24, &v29);
  TSCEReferenceSet::~TSCEReferenceSet(&v29);
  objc_msgSend_markCellRefsAsDirty_(v6, v25, v23, v26, v27);
  accumulator = self->_accumulator;
  self->_accumulator = 0;
}

- (id)descriptionWithGroupBy:(id)a3
{
  objc_msgSend_formulaCoord(self, a2, a3, v3, v4);
  v5 = MEMORY[0x277CCAB68];
  v6 = objc_opt_class();
  v7 = NSStringFromTSUCellCoord();
  v11 = objc_msgSend_stringWithFormat_(v5, v8, @"%@ @ %@", v9, v10, v6, v7);

  return v11;
}

- (void)enumerateDirectChildren:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_children;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v10, &v11, v15, 16);
    }

    while (v7);
  }
}

- (TSTAggNode)initWithArchive:(const void *)a3 aggregator:(id)a4
{
  v6 = a4;
  if (*(a3 + 6))
  {
    v7 = *(a3 + 6);
  }

  else
  {
    v7 = &TSCE::_CellCoordinateArchive_default_instance_;
  }

  v8 = sub_2212697C0(v7);
  v10 = objc_msgSend_initWithFormulaCoord_groupNode_aggregator_(self, v9, v8, 0, v6);
  if (v10)
  {
    v11 = [TSTAccumulator alloc];
    if (*(a3 + 7))
    {
      v15 = objc_msgSend_initWithArchive_(v11, v12, *(a3 + 7), v13, v14);
    }

    else
    {
      v15 = objc_msgSend_initWithArchive_(v11, v12, &TST::_AccumulatorArchive_default_instance_, v13, v14);
    }

    accumulator = v10->_accumulator;
    v10->_accumulator = v15;

    v17 = *(a3 + 8);
    if (v17 >= 1)
    {
      v18 = 8;
      do
      {
        v19 = [TSTAggNode alloc];
        v22 = objc_msgSend_initWithArchive_aggregator_(v19, v20, *(*(a3 + 5) + v18), v6, v21);
        objc_msgSend_addChild_skipWillModify_(v10, v23, v22, 1, v24);

        v18 += 8;
        --v17;
      }

      while (v17);
    }
  }

  return v10;
}

- (void)encodeToArchive:(void *)a3
{
  v52 = *MEMORY[0x277D85DE8];
  p_formulaCoord = &self->_formulaCoord;
  formulaCoord = self->_formulaCoord;
  v9 = formulaCoord.row == 0x7FFFFFFF || (*&formulaCoord & 0xFFFF00000000) == 0x7FFF00000000;
  if (v9 || (TSUCellCoord::verifyCoordIsSane(&self->_formulaCoord) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTAggNode encodeToArchive:]", v3, v4);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTAggNode.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 198, 0, "Not expecting an invalid coord here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  *(a3 + 4) |= 1u;
  v21 = *(a3 + 6);
  if (!v21)
  {
    v22 = *(a3 + 1);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v22);
    *(a3 + 6) = v21;
  }

  sub_221269820(p_formulaCoord, v21);
  accumulator = self->_accumulator;
  if (accumulator)
  {
    *(a3 + 4) |= 2u;
    v27 = *(a3 + 7);
    if (!v27)
    {
      v28 = *(a3 + 1);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = google::protobuf::Arena::CreateMaybeMessage<TST::AccumulatorArchive>(v28);
      *(a3 + 7) = v27;
    }

    objc_msgSend_saveToArchive_(accumulator, v23, v27, v24, v25);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v29 = self->_children;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v47, v51, 16);
  if (v34)
  {
    v35 = *v48;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v48 != v35)
        {
          objc_enumerationMutation(v29);
        }

        v37 = *(*(&v47 + 1) + 8 * i);
        v38 = *(a3 + 5);
        if (!v38)
        {
          goto LABEL_27;
        }

        v39 = *(a3 + 8);
        v40 = *v38;
        if (v39 < *v38)
        {
          *(a3 + 8) = v39 + 1;
          objc_msgSend_encodeToArchive_(v37, v31, *&v38[2 * v39 + 2], v32, v33, v47);
          continue;
        }

        if (v40 == *(a3 + 9))
        {
LABEL_27:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
          v38 = *(a3 + 5);
          v40 = *v38;
        }

        *v38 = v40 + 1;
        v41 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_AggNodeArchive>(*(a3 + 3));
        v42 = *(a3 + 8);
        v43 = *(a3 + 5) + 8 * v42;
        *(a3 + 8) = v42 + 1;
        *(v43 + 8) = v41;
        objc_msgSend_encodeToArchive_(v37, v44, v41, v45, v46, v47);
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v47, v51, 16);
    }

    while (v34);
  }
}

- (void)unpackAfterUnarchiveForGroupBy:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_aggregator);
  v10 = objc_msgSend_groupBy(WeakRetained, v6, v7, v8, v9);
  objc_msgSend_setAggNode_forFormulaCoord_(v10, v11, self, &self->_formulaCoord, v12);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = self->_children;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v21, v25, 16);
  if (v18)
  {
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_unpackAfterUnarchiveForGroupBy_(*(*(&v21 + 1) + 8 * v20++), v15, v4, v16, v17, v21);
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v21, v25, 16);
    }

    while (v18);
  }
}

- (TSTGroupNode)groupNode
{
  WeakRetained = objc_loadWeakRetained(&self->_groupNode);

  return WeakRetained;
}

- (TSTAggregator)aggregator
{
  WeakRetained = objc_loadWeakRetained(&self->_aggregator);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 7) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = self + 56;
  return self;
}

@end