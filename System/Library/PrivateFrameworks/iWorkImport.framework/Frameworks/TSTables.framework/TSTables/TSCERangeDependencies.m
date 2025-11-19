@interface TSCERangeDependencies
- (BOOL)addRangeReference:(const TSCEInternalCellReference *)a3 toRange:(const TSCERangeCoordinate *)a4;
- (BOOL)cellHasDeepPrecedentInRange:(const TSUCellCoord *)a3 cellRange:(const TSCEInternalRangeReference *)a4;
- (BOOL)hasDependentsAtCoord:(const TSUCellCoord *)a3;
- (BOOL)hasPrecedentsAtCoord:(const TSUCellCoord *)a3;
- (BOOL)isEmpty;
- (TSCERangeDependencies)initWithDependTracker:(id)a3 ownerID:(unsigned __int16)a4;
- (TSKUIDStruct)ownerUID;
- (id)explainDirtyPrecedentCount:(TSUCellCoord)a3 cellIsInACycle:(BOOL)a4;
- (id)findTileForToOwnerId:(unsigned __int16)a3 createIfMissing:(BOOL)a4;
- (id)precedentsAsString:(TSUCellCoord)a3 dirtyOnly:(BOOL)a4;
- (unint64_t)computedNumberOfDirtyPrecedents:(TSUCellCoord)a3 cellIsInACycle:(BOOL)a4;
- (void)RTreeSearchWithBlock:(const TSUCellRect *)a3 block:(id)a4;
- (void)addPrecedentsAtCoord:(const TSUCellCoord *)a3 toReferenceSet:(void *)a4;
- (void)addUnarchivedPrecedent:(const TSCEUnarchiveRangePrecedent *)a3;
- (void)cellRefsForCycleCellsReferringToCell:(const TSUCellCoord *)a3 outCellRefs:(void *)a4;
- (void)decrementReferringDirtyCountAndPushNextLeaves:(const TSCECellToEvaluate *)a3 referencingCellIsInACycle:(BOOL)a4;
- (void)deleteAllReferencesFromThisTable;
- (void)deleteRangeReferencesForFromCell:(const TSUCellCoord *)a3;
- (void)dirtyAllFormulasReferencingRange:(TSCERangeCoordinate)a3;
- (void)dirtyAllReferencingFormulas;
- (void)encodeToArchive:(void *)a3;
- (void)encodeToTiledArchive:(void *)a3 archiver:(id)a4;
- (void)enumerateAllRanges:(id)a3;
- (void)enumerateAllRangesForFromCoord:(const TSUCellCoord *)a3 block:(id)a4;
- (void)formulaCellsReferencingIndexes:(id)a3 rowIndexes:(id)a4 outFormulaCells:(void *)a5;
- (void)formulaCellsReferencingRange:(const TSCERangeCoordinate *)a3 outFormulaCells:(void *)a4;
- (void)formulaCellsReferencingRangesAffectedByRewriteSpec:(id)a3 outFormulaCells:(void *)a4;
- (void)formulaCoordsReferencingRange:(TSCERangeCoordinate)a3 inOwnerID:(unsigned __int16)a4 outFormulaCells:(void *)a5;
- (void)processDependentsForDFS:(id)a3 coord:(const TSUCellCoord *)a4 outCells:(void *)a5;
- (void)pushDependents:(const TSUCellCoord *)a3 outDependents:(id)a4 referencingCellIsInACycle:(BOOL)a5;
- (void)readFromArchive:(const void *)a3;
- (void)readFromExpandedArchive:(const void *)a3;
- (void)readFromTiledArchive:(const void *)a3 unarchiver:(id)a4 ownerDepends:(id)a5;
- (void)unpackAfterUnarchive;
@end

@implementation TSCERangeDependencies

- (TSCERangeDependencies)initWithDependTracker:(id)a3 ownerID:(unsigned __int16)a4
{
  v7.receiver = self;
  v7.super_class = TSCERangeDependencies;
  result = [(TSCERangeDependencies *)&v7 init];
  if (result)
  {
    result->_dependencyTracker = a3;
    result->_internalOwnerID = a4;
  }

  return result;
}

- (void)RTreeSearchWithBlock:(const TSUCellRect *)a3 block:(id)a4
{
  v6 = a4;
  v8[0] = TSUCellRect::nonSpanningCellRectWithTableRange(a3, &unk_2217E1ED0);
  v8[1] = v7;
  sub_221495334(&self->_rTree, v8, v6);
}

- (void)addUnarchivedPrecedent:(const TSCEUnarchiveRangePrecedent *)a3
{
  end = self->_unarchivedPrecedentList.__end_;
  cap = self->_unarchivedPrecedentList.__cap_;
  if (end >= cap)
  {
    begin = self->_unarchivedPrecedentList.__begin_;
    v9 = 0x6DB6DB6DB6DB6DB7 * ((end - begin) >> 2);
    v10 = v9 + 1;
    if ((v9 + 1) > 0x924924924924924)
    {
      sub_22107C148();
    }

    v11 = 0x6DB6DB6DB6DB6DB7 * ((cap - begin) >> 2);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x492492492492492)
    {
      v12 = 0x924924924924924;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_221499AF8(&self->_unarchivedPrecedentList, v12);
    }

    v13 = 28 * v9;
    v14 = *&a3->var0.row;
    *(v13 + 12) = a3->var2;
    *v13 = v14;
    v7 = (28 * v9 + 28);
    v15 = self->_unarchivedPrecedentList.__begin_;
    v16 = (self->_unarchivedPrecedentList.__end_ - v15);
    v17 = (v13 - v16);
    memcpy((v13 - v16), v15, v16);
    v18 = self->_unarchivedPrecedentList.__begin_;
    self->_unarchivedPrecedentList.__begin_ = v17;
    self->_unarchivedPrecedentList.__end_ = v7;
    self->_unarchivedPrecedentList.__cap_ = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *&a3->var0.row;
    end->var2 = a3->var2;
    *&end->var0.row = v6;
    v7 = end + 1;
  }

  self->_unarchivedPrecedentList.__end_ = v7;
}

- (BOOL)addRangeReference:(const TSCEInternalCellReference *)a3 toRange:(const TSCERangeCoordinate *)a4
{
  TSCERangeCoordinate::asCellRect(a4);
  v20[0] = v6;
  v20[1] = v7;
  objc_msgSend_RTreeInsert_fromCellRef_(self, v7, v20, a3, v8);
  v12 = objc_msgSend_dgl_rangeDependenciesForOwnerID_(self->_dependencyTracker, v9, a3->tableID, v10, v11);
  v15 = v12;
  if (v12)
  {
    v16 = objc_msgSend_findTileForToOwnerId_createIfMissing_(v12, v13, self->_internalOwnerID, 1, v14);
    objc_msgSend_addRect_fromCoord_(v16, v17, v20, a3, v18);
  }

  return 1;
}

- (void)deleteRangeReferencesForFromCell:(const TSUCellCoord *)a3
{
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = sub_221495868;
  v44[4] = sub_221495878;
  v45 = 0;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_221495880;
  v43[3] = &unk_278465B28;
  v43[4] = self;
  v43[5] = v44;
  objc_msgSend_enumerateAllRangesForFromCoord_block_(self, a2, a3, v43, v3);
  __src = 0;
  v41 = 0;
  v42 = 0;
  begin = self->_rangePrecedentsTiles.__begin_;
  var0 = self->_rangePrecedentsTiles.var0;
  if (begin != var0)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = begin[v9];
      if (objc_msgSend_containsFromCoord_(v10, v11, a3, v12, v13))
      {
        objc_msgSend_removeRectsForFromCoord_(v10, v14, a3, v15, v16);
        if (objc_msgSend_isEmpty(v10, v17, v18, v19, v20))
        {
          v21 = v41;
          if (v41 >= v42)
          {
            v23 = __src;
            v24 = v41 - __src;
            v25 = (v41 - __src) >> 3;
            v26 = v25 + 1;
            if ((v25 + 1) >> 61)
            {
              sub_22107C148();
            }

            v27 = v42 - __src;
            if ((v42 - __src) >> 2 > v26)
            {
              v26 = v27 >> 2;
            }

            v28 = v27 >= 0x7FFFFFFFFFFFFFF8;
            v29 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v28)
            {
              v29 = v26;
            }

            if (v29)
            {
              sub_2210874C4(&__src, v29);
            }

            *(8 * v25) = v9;
            v22 = 8 * v25 + 8;
            memcpy(0, v23, v24);
            v30 = __src;
            __src = 0;
            v41 = v22;
            v42 = 0;
            if (v30)
            {
              operator delete(v30);
            }
          }

          else
          {
            *v41 = v9;
            v22 = (v21 + 8);
          }

          v41 = v22;
        }
      }

      ++v9;

      ++v8;
    }

    while (&begin[v8] != var0);
    v31 = __src;
    v32 = v41;
    if (__src != v41)
    {
      v33 = self->_rangePrecedentsTiles.var0;
      do
      {
        v34 = *(v32 - 1);
        v32 -= 8;
        v35 = &self->_rangePrecedentsTiles.__begin_[v34];
        v36 = v35 + 1;
        if (v35 + 1 == v33)
        {
          v38 = v33;
          v33 = v35;
        }

        else
        {
          do
          {
            v37 = *(v36 - 1);
            *(v36 - 1) = *v36;
            *v36 = 0;

            ++v36;
          }

          while (v36 != v33);
          v38 = self->_rangePrecedentsTiles.var0;
          v33 = v36 - 1;
        }

        while (v38 != v33)
        {
          v39 = *--v38;
        }

        self->_rangePrecedentsTiles.var0 = v33;
        v31 = __src;
      }

      while (v32 != __src);
    }

    if (v31)
    {
      v41 = v31;
      operator delete(v31);
    }
  }

  _Block_object_dispose(v44, 8);
}

- (void)deleteAllReferencesFromThisTable
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_221495868;
  v9[4] = sub_221495878;
  v10 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221495A40;
  v8[3] = &unk_278465B28;
  v8[4] = self;
  v8[5] = v9;
  objc_msgSend_enumerateAllRanges_(self, a2, v8, v2, v3);
  begin = self->_rangePrecedentsTiles.__begin_;
  for (i = self->_rangePrecedentsTiles.var0; i != begin; --i)
  {
    v7 = *(i - 1);
  }

  self->_rangePrecedentsTiles.var0 = begin;
  _Block_object_dispose(v9, 8);
}

- (void)pushDependents:(const TSUCellCoord *)a3 outDependents:(id)a4 referencingCellIsInACycle:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = v8;
  v10 = *a3;
  v28[0] = *a3;
  v28[1] = 0x100000001;
  if (v5)
  {
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x3032000000;
    v26[3] = sub_221495868;
    v26[4] = sub_221495878;
    v27 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_221495CB0;
    v22[3] = &unk_278465B50;
    v24 = v26;
    v22[4] = self;
    v23 = v8;
    v25 = a3;
    objc_msgSend_RTreeSearchWithBlock_block_(self, v11, v28, v22, v12);

    _Block_object_dispose(v26, 8);
    v13 = v27;
  }

  else
  {
    internalOwnerID = self->_internalOwnerID;
    v15 = *&v10 & 0xFFFFFFFFFFFFLL;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_221495D6C;
    v18[3] = &unk_278465B78;
    v19 = v8;
    v20 = v15;
    v21 = internalOwnerID;
    objc_msgSend_RTreeSearchWithBlock_block_(self, v16, v28, v18, v17);
    v13 = v19;
  }
}

- (void)dirtyAllReferencingFormulas
{
  v4 = xmmword_2217E1EB0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_221495DFC;
  v3[3] = &unk_278461180;
  v3[4] = self;
  objc_msgSend_RTreeSearchWithBlock_block_(self, a2, &v4, v3, v2);
}

- (void)dirtyAllFormulasReferencingRange:(TSCERangeCoordinate)a3
{
  v9 = a3;
  TSCERangeCoordinate::asCellRect(&v9);
  v8[0] = v4;
  v8[1] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221495EA8;
  v7[3] = &unk_278461180;
  v7[4] = self;
  objc_msgSend_RTreeSearchWithBlock_block_(self, v5, v8, v7, v6);
}

- (void)formulaCoordsReferencingRange:(TSCERangeCoordinate)a3 inOwnerID:(unsigned __int16)a4 outFormulaCells:(void *)a5
{
  v14 = a3;
  TSCERangeCoordinate::asCellRect(&v14);
  v13[0] = v8;
  v13[1] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_221495F64;
  v11[3] = &unk_278465B98;
  v12 = a4;
  v11[4] = a5;
  objc_msgSend_RTreeSearchWithBlock_block_(self, v9, v13, v11, v10);
}

- (void)decrementReferringDirtyCountAndPushNextLeaves:(const TSCECellToEvaluate *)a3 referencingCellIsInACycle:(BOOL)a4
{
  v23[0] = a3->var0.coordinate;
  v23[1] = 0x100000001;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_221495868;
  v21[4] = sub_221495878;
  v6 = a3->var1;
  v22 = objc_msgSend_cellDependencies(v6, v7, v8, v9, v10);

  v15 = objc_msgSend_currentCellBeingModified(self->_dependencyTracker, v11, v12, v13, v14);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_221496190;
  v18[3] = &unk_278465BC0;
  v19 = v16;
  v18[5] = v21;
  v18[6] = v15;
  v18[4] = self;
  v20 = a4;
  objc_msgSend_RTreeSearchWithBlock_block_(self, v16, v23, v18, v17);
  _Block_object_dispose(v21, 8);
}

- (BOOL)hasDependentsAtCoord:(const TSUCellCoord *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = *a3;
  v7[1] = 0x100000001;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221496444;
  v6[3] = &unk_278465BE8;
  v6[4] = &v8;
  objc_msgSend_RTreeSearchWithBlock_block_(self, a2, v7, v6, v3);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

- (void)processDependentsForDFS:(id)a3 coord:(const TSUCellCoord *)a4 outCells:(void *)a5
{
  v8 = a3;
  v15[0] = *a4;
  v15[1] = 0x100000001;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_221496528;
  v12[3] = &unk_278465C10;
  v13 = v8;
  v14 = a5;
  v9 = v8;
  objc_msgSend_RTreeSearchWithBlock_block_(self, v10, v15, v12, v11);
}

- (unint64_t)computedNumberOfDirtyPrecedents:(TSUCellCoord)a3 cellIsInACycle:(BOOL)a4
{
  v14 = 0;
  v15 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_221495868;
  v9[4] = sub_221495878;
  v10 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221496664;
  v7[3] = &unk_278465C38;
  v7[4] = self;
  v7[5] = v9;
  v8 = a4;
  v7[6] = &v11;
  objc_msgSend_enumerateAllRangesForFromCoord_block_(self, a2, &v15, v7, v4);
  v5 = v12[3];
  _Block_object_dispose(v9, 8);

  _Block_object_dispose(&v11, 8);
  return v5;
}

- (id)explainDirtyPrecedentCount:(TSUCellCoord)a3 cellIsInACycle:(BOOL)a4
{
  objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], a2, @"Range dependencies:\n", a4, v4);

  return 0;
}

- (id)precedentsAsString:(TSUCellCoord)a3 dirtyOnly:(BOOL)a4
{
  v4 = MEMORY[0x277CCAB68];
  v5 = NSStringFromTSUCellCoord();
  v9 = objc_msgSend_stringWithFormat_(v4, v6, @"%@: Range precedents:\n", v7, v8, v5);

  return v9;
}

- (void)cellRefsForCycleCellsReferringToCell:(const TSUCellCoord *)a3 outCellRefs:(void *)a4
{
  v8[0] = *a3;
  v8[1] = 0x100000001;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_221495868;
  v6[4] = sub_221495878;
  v7 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2214968CC;
  v5[3] = &unk_278465C60;
  v5[4] = self;
  v5[5] = v6;
  v5[6] = a4;
  objc_msgSend_RTreeSearchWithBlock_block_(self, a2, v8, v5, v4);
  _Block_object_dispose(v6, 8);
}

- (BOOL)hasPrecedentsAtCoord:(const TSUCellCoord *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221496A38;
  v6[3] = &unk_278465C88;
  v6[4] = &v7;
  objc_msgSend_enumerateAllRangesForFromCoord_block_(self, a2, a3, v6, v3);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)addPrecedentsAtCoord:(const TSUCellCoord *)a3 toReferenceSet:(void *)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_221496AC0;
  v5[3] = &unk_278465CB0;
  v5[4] = self;
  v5[5] = a4;
  objc_msgSend_enumerateAllRangesForFromCoord_block_(self, a2, a3, v5, v4);
}

- (BOOL)cellHasDeepPrecedentInRange:(const TSUCellCoord *)a3 cellRange:(const TSCEInternalRangeReference *)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221496BEC;
  v7[3] = &unk_278465CD8;
  v7[4] = &v8;
  v7[5] = a4;
  objc_msgSend_enumerateAllRangesForFromCoord_block_(self, a2, a3, v7, v4);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)formulaCellsReferencingRange:(const TSCERangeCoordinate *)a3 outFormulaCells:(void *)a4
{
  TSCERangeCoordinate::asCellRect(a3);
  v21.origin = v6;
  v21.size = v7;
  v20[0] = TSUCellRect::nonSpanningCellRectWithTableRange(&v21, &unk_2217E1ED0);
  v20[1] = v8;
  v12 = 0;
  v13 = &v12;
  v14 = 0x5812000000;
  v15 = sub_221496DF8;
  v16 = sub_221496E04;
  v17 = &unk_22188E88F;
  memset(v18, 0, sizeof(v18));
  v19 = 1065353216;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_221496E0C;
  v11[3] = &unk_278465D00;
  v11[4] = &v12;
  objc_msgSend_RTreeSearchWithBlock_block_(self, v8, v20, v11, v9);
  if (!sub_2212E0280((v13 + 6)))
  {
    sub_2212E0430((v13 + 6), self->_dependencyTracker, &v10);
    TSCECellRefSet::addCellRefs(a4, &v10);
    sub_22107C800(&v10, v10._coordsForOwnerUid.__tree_.__end_node_.__left_);
  }

  _Block_object_dispose(&v12, 8);
  sub_221122744(v18);
}

- (void)formulaCellsReferencingIndexes:(id)a3 rowIndexes:(id)a4 outFormulaCells:(void *)a5
{
  v8 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_221496EE0;
  v13[3] = &unk_278463340;
  v14 = v8;
  v15 = self;
  v16 = a5;
  v9 = v8;
  objc_msgSend_enumerateRangesUsingBlock_(a3, v10, v13, v11, v12);
}

- (void)formulaCellsReferencingRangesAffectedByRewriteSpec:(id)a3 outFormulaCells:(void *)a4
{
  v6 = a3;
  v13[0] = objc_msgSend_affectedRange(v6, v7, v8, v9, v10);
  v13[1] = v11;
  objc_msgSend_formulaCellsReferencingRange_outFormulaCells_(self, v11, v13, a4, v12);
}

- (BOOL)isEmpty
{
  if (self->_rangePrecedentsTiles.__begin_ == self->_rangePrecedentsTiles.var0)
  {
    return sub_221499B54(&self->_rTree, self->_rTree.m_root);
  }

  else
  {
    return 0;
  }
}

- (TSKUIDStruct)ownerUID
{
  v4 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self->_dependencyTracker, a2, self->_internalOwnerID, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (id)findTileForToOwnerId:(unsigned __int16)a3 createIfMissing:(BOOL)a4
{
  if (a3 == 0xFFFF)
  {
    v22 = 0;
    goto LABEL_21;
  }

  v5 = a4;
  v6 = a3;
  v45 = 0;
  p_rangePrecedentsTiles = &self->_rangePrecedentsTiles;
  v9 = 0;
  v10 = self->_rangePrecedentsTiles.var0 - self->_rangePrecedentsTiles.__begin_;
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10 >> 3;
  while (1)
  {
    v12 = v9 + ((v11 - v9) >> 1);
    v13 = p_rangePrecedentsTiles->__begin_[v12];
    if (objc_msgSend_toInternalOwnerID(v13, v14, v15, v16, v17) >= v6)
    {
      break;
    }

    v9 = v12 + 1;
LABEL_8:

    if (v9 >= v11)
    {
      goto LABEL_12;
    }
  }

  if (objc_msgSend_toInternalOwnerID(v13, v18, v19, v20, v21) > v6)
  {
    v11 = v9 + ((v11 - v9) >> 1);
    goto LABEL_8;
  }

  v45 = v13;
  if (!v13)
  {
LABEL_12:
    if (v5)
    {
      if (!self->_dependencyTracker)
      {
        v23 = MEMORY[0x277D81150];
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCERangeDependencies findTileForToOwnerId:createIfMissing:]", a4, v4);
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERangeDependencies.mm", v26, v27);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 479, 0, "invalid nil value for '%{public}s'", "_dependencyTracker", v45);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
      }

      v34 = [TSCERangePrecedentsTile alloc];
      v39 = objc_msgSend_objectContext(self->_dependencyTracker, v35, v36, v37, v38);
      v45 = objc_msgSend_initWithOwnerId_context_(v34, v40, v6, v39, v41);

      begin = self->_rangePrecedentsTiles.__begin_;
      v43 = self->_rangePrecedentsTiles.var0 - begin;
      if (v9 == v43 >> 3)
      {
        sub_2214972D4(p_rangePrecedentsTiles, &v45);
      }

      else
      {
        if (v9 + 1 < v43 >> 3)
        {
          begin = p_rangePrecedentsTiles->__begin_;
        }

        sub_2214973C8(p_rangePrecedentsTiles, &begin[v9], &v45);
      }
    }
  }

  v22 = v45;

LABEL_21:

  return v22;
}

- (void)enumerateAllRangesForFromCoord:(const TSUCellCoord *)a3 block:(id)a4
{
  v10 = a4;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  begin = self->_rangePrecedentsTiles.__begin_;
  for (i = self->_rangePrecedentsTiles.var0; begin != i; ++begin)
  {
    v13 = *begin;
    v14 = objc_msgSend_toInternalOwnerID(*begin, v6, v7, v8, v9);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_22149764C;
    v18[3] = &unk_278465D50;
    v15 = v10;
    v21 = v14;
    v19 = v15;
    v20 = v22;
    objc_msgSend_enumerateAllRangesForFromCoord_usingBlock_(v13, v16, a3, v18, v17);
  }

  _Block_object_dispose(v22, 8);
}

- (void)enumerateAllRanges:(id)a3
{
  v8 = a3;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  begin = self->_rangePrecedentsTiles.__begin_;
  for (i = self->_rangePrecedentsTiles.var0; begin != i; ++begin)
  {
    v11 = *begin;
    v12 = objc_msgSend_toInternalOwnerID(*begin, v4, v5, v6, v7);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2214977E4;
    v17[3] = &unk_278465D50;
    v13 = v8;
    v20 = v12;
    v18 = v13;
    v19 = v21;
    objc_msgSend_enumerateAllRanges_(v11, v14, v17, v15, v16);
  }

  _Block_object_dispose(v21, 8);
}

- (void)encodeToArchive:(void *)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2214978B0;
  v5[3] = &unk_278465D70;
  v5[4] = a3;
  objc_msgSend_enumerateAllRanges_(self, a2, v5, v3, v4);
}

- (void)readFromArchive:(const void *)a3
{
  v3 = *(a3 + 6);
  if (v3 >= 1)
  {
    v68 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v6 = 8;
    v7 = 0x277D81000uLL;
    v8 = &TSCE::_InternalRangeReferenceArchive_default_instance_;
    while (1)
    {
      TSCE::RangeBackDependencyArchive::RangeBackDependencyArchive(v76, *(*(a3 + 4) + v6));
      if (!(v81 >> 15) && (v80 & 0x80000000) == 0)
      {
        break;
      }

LABEL_31:
      TSCE::RangeBackDependencyArchive::~RangeBackDependencyArchive(v76);
      v6 += 8;
      if (!--v3)
      {
        return;
      }
    }

    v75 = v80 | (v81 << 32);
    v73 = v68;
    v74 = 0xFFFF;
    if (v77)
    {
      TSCERangeRefFromArchive(v78, &v71._topLeft);
      dependencyTracker = self->_dependencyTracker;
      if (dependencyTracker)
      {
        objc_msgSend_internalRangeReferenceForRangeRef_(dependencyTracker, v33, &v71, v28, v29);
        v73 = v69;
        v74 = v70;
      }
    }

    else
    {
      if ((v77 & 2) == 0)
      {
        v12 = *(v7 + 336);
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCERangeDependencies readFromArchive:]", v10, v11);
        v14 = v8;
        v15 = v7;
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERangeDependencies.mm", v17, v18);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v20, v13, v19, 565, 0, "corrupted range dependencies archive");

        v7 = v15;
        objc_msgSend_logBacktraceThrottled(*(v15 + 336), v21, v22, v23, v24);
        v8 = v14;
      }

      if (v79)
      {
        v25 = v79;
      }

      else
      {
        v25 = v8;
      }

      sub_2212F4E1C(v25, &v71);
      v73 = v71;
      v74 = v72;
      v30 = self->_dependencyTracker;
      if (v30)
      {
        v31 = objc_msgSend_idMap(v30, v26, v27, v28, v29);
        v32 = v74;
        if (*(v31 + 144))
        {
          v32 = sub_2212602C8(v31, v74);
        }

        LOWORD(v74) = v32;
        goto LABEL_18;
      }
    }

    v32 = v74;
LABEL_18:
    if (v32 != 0xFFFF && v73._topLeft.row != 0x7FFFFFFF && (*&v73._topLeft & 0xFFFF00000000) != 0x7FFF00000000 && v73._bottomRight.row != 0x7FFFFFFF && (*&v73._bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && v73._topLeft.column <= v73._bottomRight.column && v73._topLeft.row <= v73._bottomRight.row)
    {
      if (!self->_dependencyTracker)
      {
        v35 = *(v7 + 336);
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSCERangeDependencies readFromArchive:]", v28, v29);
        v37 = v8;
        v38 = v7;
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERangeDependencies.mm", v40, v41);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v43, v36, v42, 574, 0, "invalid nil value for '%{public}s'", "_dependencyTracker");

        v7 = v38;
        objc_msgSend_logBacktraceThrottled(*(v38 + 336), v44, v45, v46, v47);
        v8 = v37;
        v32 = v74;
      }

      v48 = objc_msgSend_findTileForToOwnerId_createIfMissing_(self, v32, v32, 1, v29);
      objc_msgSend_willModifyForUpgrade(v48, v49, v50, v51, v52);
      TSCERangeCoordinate::asCellRect(&v73);
      v71._topLeft = v53;
      v71._bottomRight = v54;
      objc_msgSend_addRect_fromCoord_(v48, v54, &v71, &v75, v55);
      v60 = objc_msgSend_dgl_rangeDependenciesForOwnerID_(self->_dependencyTracker, v56, v74, v57, v58);
      if (v60 || (objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(self->_dependencyTracker, v59, v74, 0, 0), objc_msgSend_dgl_rangeDependenciesForOwnerID_(self->_dependencyTracker, v61, v74, v62, v63), (v60 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v71 = 0;
        TSCERangeCoordinate::asCellRect(&v73);
        v71._topLeft = v64;
        v71._bottomRight = v65;
        internalOwnerID = self->_internalOwnerID;
        v69._topLeft = (v75 & 0xFFFFFFFFFFFFLL);
        v69._bottomRight.row = internalOwnerID;
        objc_msgSend_RTreeInsert_fromCellRef_(v60, v65, &v71, &v69, v67);
      }
    }

    goto LABEL_31;
  }
}

- (void)readFromExpandedArchive:(const void *)a3
{
  v3 = *(a3 + 6);
  if (v3 >= 1)
  {
    v5 = 8;
    v6 = 0x277D81000uLL;
    v7 = &TSCE::_InternalRangeReferenceArchive_default_instance_;
    do
    {
      TSCE::RangeBackDependencyArchive::RangeBackDependencyArchive(v39, *(*(a3 + 4) + v5));
      v11 = v42;
      if (!(v42 >> 15))
      {
        v12 = v41;
        if ((v41 & 0x80000000) == 0)
        {
          if ((v39[16] & 2) == 0)
          {
            v13 = *(v6 + 336);
            v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCERangeDependencies readFromExpandedArchive:]", v9, v10);
            v15 = v7;
            v16 = v6;
            v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERangeDependencies.mm", v18, v19);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v14, v20, 609, 0, "corrupted range dependencies archive");

            v6 = v16;
            objc_msgSend_logBacktraceThrottled(*(v16 + 336), v22, v23, v24, v25);
            v7 = v15;
          }

          v37._topLeft = 0;
          v37._bottomRight = 0;
          v38 = 0;
          if (v40)
          {
            v26 = v40;
          }

          else
          {
            v26 = v7;
          }

          sub_2212F4E1C(v26, &v37);
          v27 = v38;
          if (v38 != 0xFFFF && v37._topLeft.row != 0x7FFFFFFF && (*&v37._topLeft & 0xFFFF00000000) != 0x7FFF00000000 && v37._bottomRight.row != 0x7FFFFFFF && (*&v37._bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && v37._topLeft.column <= v37._bottomRight.column && v37._topLeft.row <= v37._bottomRight.row)
          {
            TSCERangeCoordinate::asCellRect(&v37);
            v33 = v12 | (v11 << 32);
            v34 = v27;
            v35 = v28;
            v36 = v29;
            objc_msgSend_addUnarchivedPrecedent_(self, v29, &v33, v30, v31);
          }
        }
      }

      TSCE::RangeBackDependencyArchive::~RangeBackDependencyArchive(v39);
      v5 += 8;
      --v3;
    }

    while (v3);
  }
}

- (void)encodeToTiledArchive:(void *)a3 archiver:(id)a4
{
  v23 = a4;
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = objc_msgSend_initWithCapacity_(v6, v7, self->_rangePrecedentsTiles.var0 - self->_rangePrecedentsTiles.__begin_, v8, v9);
  begin = self->_rangePrecedentsTiles.__begin_;
  var0 = self->_rangePrecedentsTiles.var0;
  while (begin != var0)
  {
    v15 = *begin;
    if ((objc_msgSend_isEmpty(v15, v16, v17, v18, v19) & 1) == 0)
    {
      objc_msgSend_addObject_(v12, v20, v15, v21, v22);
    }

    ++begin;
  }

  objc_msgSend_setStrongReferenceArray_message_(v23, v10, v12, a3 + 16, v11);
}

- (void)readFromTiledArchive:(const void *)a3 unarchiver:(id)a4 ownerDepends:(id)a5
{
  v7 = a4;
  v8 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2214981B4;
  v13[3] = &unk_27845D8D8;
  v9 = v8;
  v14 = v9;
  v10 = v7;
  v11 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v10, v12, a3 + 16, v11, 0, v13);
}

- (void)unpackAfterUnarchive
{
  begin = self->_unarchivedPrecedentList.__begin_;
  end = self->_unarchivedPrecedentList.__end_;
  if (begin != end)
  {
    p_var2 = &begin->var2;
    do
    {
      v7 = objc_msgSend_findTileForToOwnerId_createIfMissing_(self, a2, *(p_var2 - 4), 1, v2);
      objc_msgSend_willModifyForUpgrade(v7, v8, v9, v10, v11);
      objc_msgSend_addRect_fromCoord_(v7, v12, p_var2, p_var2 - 12, v13);
      p_var2 += 28;
    }

    while ((p_var2 - 12) != end);
    begin = self->_unarchivedPrecedentList.__begin_;
  }

  self->_unarchivedPrecedentList.__end_ = begin;
  v14 = self->_rangePrecedentsTiles.__begin_;
  var0 = self->_rangePrecedentsTiles.var0;
  if (v14 != var0)
  {
    v16 = 0;
    do
    {
      v17 = *v14;
      v26 = objc_msgSend_toInternalOwnerID(v17, v18, v19, v20, v21);
      if (v16 && objc_msgSend_internalOwnerID(v16, v22, v23, v24, v25) == v26 || (objc_msgSend_dgl_rangeDependenciesForOwnerID_(self->_dependencyTracker, v22, v26, v24, v25), v27 = objc_claimAutoreleasedReturnValue(), v16, (v16 = v27) != 0) || (objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(self->_dependencyTracker, v28, v26, 0, 0), objc_msgSend_dgl_rangeDependenciesForOwnerID_(self->_dependencyTracker, v29, v26, v30, v31), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        internalOwnerID = self->_internalOwnerID;
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = sub_22149859C;
        v50[3] = &unk_278465D98;
        v52 = internalOwnerID;
        v16 = v16;
        v51 = v16;
        objc_msgSend_enumerateAllRanges_(v17, v36, v50, v37, v38);
      }

      else
      {
        v39 = MEMORY[0x277D81150];
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSCERangeDependencies unpackAfterUnarchive]", v33, v34);
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERangeDependencies.mm", v42, v43);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v45, v40, v44, 669, 0, "invalid nil value for '%{public}s'", "precedentRangeDependencies");

        v16 = 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
      }

      ++v14;
    }

    while (v14 != var0);
  }
}

@end