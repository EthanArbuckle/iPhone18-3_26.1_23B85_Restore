@interface TSTCellRangeCache
- (BOOL)hasRangeSpanningRowsForCellRange:(TSUModelCellRect)a3;
- (BOOL)hasRangeSpanningRowsForCellRect:(TSUModelCellRect)a3;
- (BOOL)hasRangeSpanningRowsForCellRegion:(id)a3;
- (BOOL)partiallyIntersectsBaseCellRect:(TSUModelCellRect)a3;
- (BOOL)partiallyIntersectsBaseCellRegion:(id)a3;
- (TSUModelCellRect)cellRangeAtIndex:(unint64_t)a3;
- (TSUModelCellRect)expandBaseCellRectToCoverMergedCells:(TSUModelCellRect)a3;
- (TSUModelCellRect)mergedRangeForBaseCellCoord:(TSUModelCellCoord)a3;
- (id).cxx_construct;
- (id)expandBaseCellRegionToCoverMergedCells:(id)a3;
- (id)indexesForBaseCellRegion:(id)a3;
- (id)indexesForRange:(TSUModelCellRect)a3;
- (id)mergedGridIndicesForDimension:(int64_t)a3;
- (vector<TSUModelCellRect,)mergeRanges;
- (vector<TSUModelCellRect,)mergeRangesIntersectingBaseCellRect:(TSTCellRangeCache *)self includeCrumbs:(SEL)a3;
- (vector<TSUModelCellRect,)mergeRangesIntersectingBaseCellRegion:(TSTCellRangeCache *)self;
- (void)clear;
- (void)collectIndexes:(id)a3 forRange:(TSUModelCellRect)a4;
- (void)commitRewritingTransaction;
- (void)dealloc;
- (void)enumerateCacheItemsIntersectingBaseCellRect:(TSUModelCellRect)a3 includeCrumbs:(BOOL)a4 usingBlock:(id)a5;
- (void)enumerateCacheItemsIntersectingBaseCellRegion:(id)a3 usingBlock:(id)a4;
- (void)enumerateCacheItemsUsingBlock:(id)a3;
- (void)openRewritingTransaction;
- (void)p_updateIndexesForReplacingRangeAtIndex:(unint64_t)a3 withRange:(TSUModelCellRect)a4;
- (void)removeCellRangeAtIndex:(unint64_t)a3;
- (void)setCellRange:(TSUModelCellRect)a3 atIndex:(unint64_t)a4;
@end

@implementation TSTCellRangeCache

- (void)dealloc
{
  transaction = self->_transaction;
  if (transaction)
  {
    v4 = transaction[4];
    if (v4)
    {
      transaction[5] = v4;
      operator delete(v4);
    }

    v5 = transaction[1];
    if (v5)
    {
      transaction[2] = v5;
      operator delete(v5);
    }

    MEMORY[0x223DA1450](transaction, 0x20C400FA29667);
  }

  self->_transaction = 0;
  v6.receiver = self;
  v6.super_class = TSTCellRangeCache;
  [(TSTCellRangeCache *)&v6 dealloc];
}

- (void)clear
{
  if (self->_transaction)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellRangeCache clear]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRangeCache.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 39, 0, "Clear with a BitGridTransaction open");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  }

  sub_2210BE918(&self->_mergeRanges.__table_.__bucket_list_.__ptr_);
  sub_22116D454(&self->_mergeRangesRTree);
}

- (TSUModelCellRect)cellRangeAtIndex:(unint64_t)a3
{
  v7 = a3;
  v3 = sub_2210BE30C(&self->_mergeRanges.__table_.__bucket_list_.__ptr_, &v7);
  v4 = (v3 + 3);
  if (!v3)
  {
    v4 = &xmmword_2217E0780;
  }

  v5 = *v4;
  v6 = *(v4 + 1);
  result.var0.size = v6;
  result.var0.origin = v5;
  return result;
}

- (void)openRewritingTransaction
{
  if (!self->_transaction)
  {
    operator new();
  }
}

- (void)commitRewritingTransaction
{
  transaction = self->_transaction;
  if (transaction)
  {
    sub_2215C2D78(transaction);
    v4 = self->_transaction;
    if (v4)
    {
      v5 = v4[4];
      if (v5)
      {
        v4[5] = v5;
        operator delete(v5);
      }

      v6 = v4[1];
      if (v6)
      {
        v4[2] = v6;
        operator delete(v6);
      }

      MEMORY[0x223DA1450](v4, 0x20C400FA29667);
    }

    self->_transaction = 0;
  }
}

- (void)p_updateIndexesForReplacingRangeAtIndex:(unint64_t)a3 withRange:(TSUModelCellRect)a4
{
  var0 = a4.var0;
  v23.origin = objc_msgSend_cellRangeAtIndex_(self, a2, a3, *&a4.var0.origin, *&a4.var0.size);
  v23.size = v6;
  v21 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v6, a3, v7, v8) & 0xFFFFFFFFFFFFLL;
  v22 = 0xFFFF;
  if (TSUCellRect::isValid(&v23))
  {
    transaction = self->_transaction;
    v10 = TSUCellRect::columns(&v23);
    v12 = v11;
    v13 = TSUCellRect::rows(&v23);
    if (transaction)
    {
      v25.origin = v10;
      v25.size = v12;
      v26 = v13;
      v27 = v14;
      sub_22112A984(transaction + 8, &v25);
    }

    else
    {
      sub_2215C3428(&self->_mergedAtCellIds, v10, v12, v13, v14);
    }

    v25 = v23;
    sub_22116D44C(&self->_mergeRangesRTree, &v25, &v21);
  }

  if (TSUCellRect::isValid(&var0))
  {
    v15 = self->_transaction;
    v16 = TSUCellRect::columns(&var0);
    v18 = v17;
    v19 = TSUCellRect::rows(&var0);
    if (v15)
    {
      v25.origin = v16;
      v25.size = v18;
      v26 = v19;
      v27 = v20;
      sub_22112A984(v15 + 32, &v25);
    }

    else
    {
      sub_2215C32FC(&self->_mergedAtCellIds, v16, v18, v19, v20);
    }

    v25 = var0;
    sub_22116D448(&self->_mergeRangesRTree, &v25, &v21);
  }
}

- (void)setCellRange:(TSUModelCellRect)a3 atIndex:(unint64_t)a4
{
  var0 = a3.var0;
  v8 = a4;
  if (TSUCellRect::isEmpty(&var0))
  {
    var0 = xmmword_2217E0780;
    objc_msgSend_p_updateIndexesForReplacingRangeAtIndex_withRange_(self, v6, a4, 0x7FFF7FFFFFFFLL, 0);
  }

  else
  {
    objc_msgSend_p_updateIndexesForReplacingRangeAtIndex_withRange_(self, v6, a4, *&var0.origin, *&var0.size);
  }

  if (TSUCellRect::isValid(&var0))
  {
    v10 = &v8;
    v7 = sub_2211E5868(&self->_mergeRanges.__table_.__bucket_list_.__ptr_, &v8);
    *(v7 + 3) = var0;
  }

  else
  {
    sub_2211E5A9C(&self->_mergeRanges.__table_.__bucket_list_.__ptr_, &v8);
  }
}

- (void)removeCellRangeAtIndex:(unint64_t)a3
{
  v4 = a3;
  objc_msgSend_p_updateIndexesForReplacingRangeAtIndex_withRange_(self, a2, a3, 0x7FFF7FFFFFFFLL, 0);
  sub_2211E5A9C(&self->_mergeRanges.__table_.__bucket_list_.__ptr_, &v4);
}

- (void)collectIndexes:(id)a3 forRange:(TSUModelCellRect)a4
{
  var0 = a4.var0;
  v5 = a3;
  if (TSUCellRect::isValid(&var0) && objc_msgSend_count(self, v6, v7, v8, v9))
  {
    v12 = var0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2211E3C34;
    v10[3] = &unk_278461180;
    v11 = v5;
    sub_22116D450(&self->_mergeRangesRTree, &v12, v10);
  }
}

- (id)indexesForRange:(TSUModelCellRect)a3
{
  var0 = a3.var0;
  if (TSUCellRect::isValid(&var0) && objc_msgSend_count(self, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v8, v9, v10, v11);
    objc_msgSend_collectIndexes_forRange_(self, v13, v12, *&var0.origin, *&var0.size);
    if (objc_msgSend_count(v12, v14, v15, v16, v17))
    {
      goto LABEL_6;
    }
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (id)indexesForBaseCellRegion:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_2211E3E88;
  v24 = sub_2211E3E98;
  v25 = 0;
  if (objc_msgSend_isValid(v4, v5, v6, v7, v8) && (objc_msgSend_isEmpty(v4, v9, v10, v11, v12) & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2211E3EA0;
    v19[3] = &unk_2784611A8;
    v19[4] = self;
    v19[5] = &v20;
    objc_msgSend_enumerateModelCellRectsUsingBlock_(v4, v14, v19, v15, v16);
    objc_autoreleasePoolPop(v13);
  }

  v17 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v17;
}

- (void)enumerateCacheItemsUsingBlock:(id)a3
{
  v4 = a3;
  v6 = 0;
  p_first_node = &self->_mergeRanges.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    v4[2](v4, p_first_node[2].__next_, p_first_node[3].__next_, p_first_node[4].__next_, &v6);
  }

  while ((v6 & 1) == 0);
}

- (void)enumerateCacheItemsIntersectingBaseCellRect:(TSUModelCellRect)a3 includeCrumbs:(BOOL)a4 usingBlock:(id)a5
{
  var0 = a3.var0;
  v7 = a5;
  if (TSUCellRect::isValid(&var0))
  {
    v10 = objc_msgSend_indexesForRange_(self, v8, *&var0.origin, *&var0.size, v9);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2211E40A8;
    v14[3] = &unk_2784611D0;
    v14[4] = self;
    v16 = a4;
    v15 = v7;
    objc_msgSend_enumerateIndexesUsingBlock_(v10, v11, v14, v12, v13);
  }
}

- (void)enumerateCacheItemsIntersectingBaseCellRegion:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_isValid(v6, v8, v9, v10, v11) && (objc_msgSend_isEmpty(v6, v12, v13, v14, v15) & 1) == 0)
  {
    v19 = objc_msgSend_indexesForBaseCellRegion_(self, v16, v6, v17, v18);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2211E4244;
    v23[3] = &unk_27845FE28;
    v23[4] = self;
    v24 = v7;
    objc_msgSend_enumerateIndexesUsingBlock_(v19, v20, v23, v21, v22);
  }
}

- (id)mergedGridIndicesForDimension:(int64_t)a3
{
  v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, a3, v3, v4);
  v11 = v7;
  if (!a3)
  {
    v12 = v31;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2211E44F0;
    v31[3] = &unk_2784611F8;
    v31[4] = v7;
    objc_msgSend_enumerateCacheItemsUsingBlock_(self, v16, v31, v17, v18);
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v12 = v32;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2211E44A4;
    v32[3] = &unk_2784611F8;
    v32[4] = v7;
    objc_msgSend_enumerateCacheItemsUsingBlock_(self, v13, v32, v14, v15);
LABEL_5:

    goto LABEL_7;
  }

  v19 = MEMORY[0x277D81150];
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCellRangeCache mergedGridIndicesForDimension:]", v9, v10);
  v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRangeCache.mm", v22, v23);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 260, 0, "Invalid table dimension");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
LABEL_7:

  return v11;
}

- (vector<TSUModelCellRect,)mergeRanges
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4812000000;
  v12 = sub_2211E4660;
  v13 = sub_2211E4684;
  v14 = &unk_22188E88F;
  v16 = 0;
  v17 = 0;
  __p = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211E469C;
  v8[3] = &unk_278461220;
  v8[4] = &v9;
  objc_msgSend_enumerateCacheItemsUsingBlock_(self, a3, v8, v3, v4);
  v6 = v10;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  sub_2211E5AD4(retstr, v6[6], v6[7], (v6[7] - v6[6]) >> 4);
  _Block_object_dispose(&v9, 8);
  result = __p;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return result;
}

- (vector<TSUModelCellRect,)mergeRangesIntersectingBaseCellRect:(TSTCellRangeCache *)self includeCrumbs:(SEL)a3
{
  v5 = a5;
  size = a4.var0.size;
  origin = a4.var0.origin;
  v14 = 0;
  v15 = &v14;
  v16 = 0x4812000000;
  v17 = sub_2211E4660;
  v18 = sub_2211E4684;
  v19 = &unk_22188E88F;
  v21 = 0;
  v22 = 0;
  __p = 0;
  if ((objc_msgSend_isEmpty(self, a3, *&a4.var0.origin, *&a4.var0.size, a5) & 1) == 0)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2211E4834;
    v13[3] = &unk_278461220;
    v13[4] = &v14;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_includeCrumbs_usingBlock_(self, v10, origin, size, v5, v13);
  }

  v11 = v15;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  sub_2211E5AD4(retstr, v11[6], v11[7], (v11[7] - v11[6]) >> 4);
  _Block_object_dispose(&v14, 8);
  result = __p;
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return result;
}

- (vector<TSUModelCellRect,)mergeRangesIntersectingBaseCellRegion:(TSTCellRangeCache *)self
{
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x4812000000;
  v19 = sub_2211E4660;
  v20 = sub_2211E4684;
  v21 = &unk_22188E88F;
  v23 = 0;
  v24 = 0;
  __p = 0;
  if ((objc_msgSend_isEmpty(self, v7, v8, v9, v10) & 1) == 0)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2211E49CC;
    v15[3] = &unk_278461220;
    v15[4] = &v16;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRegion_usingBlock_(self, v11, v6, v15, v12);
  }

  v13 = v17;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  sub_2211E5AD4(retstr, v13[6], v13[7], (v13[7] - v13[6]) >> 4);
  _Block_object_dispose(&v16, 8);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  return result;
}

- (TSUModelCellRect)mergedRangeForBaseCellCoord:(TSUModelCellCoord)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x4012000000;
  v14 = sub_2211E4B48;
  v15 = nullsub_25;
  v16 = &unk_22188E88F;
  v17 = xmmword_2217E0780;
  if (a3._coord.row != 0x7FFFFFFF && (*&a3 & 0xFFFF00000000) != 0x7FFF00000000 && sub_2215C3528(&self->_mergedAtCellIds._tiles.__begin_, a3._coord.column, a3._coord.row))
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2211E4B58;
    v10[3] = &unk_278461220;
    v10[4] = &v11;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_usingBlock_(self, v5, *&a3, 0x100000001, v10);
  }

  v6 = v12[6];
  v7 = v12[7];
  _Block_object_dispose(&v11, 8);
  v8 = v6;
  v9 = v7;
  result.var0.size = v9;
  result.var0.origin = v8;
  return result;
}

- (BOOL)partiallyIntersectsBaseCellRect:(TSUModelCellRect)a3
{
  var0 = a3.var0;
  if (!TSUCellRect::isValid(&var0) || (TSUCellRect::isEmpty(&var0) & 1) != 0 || (objc_msgSend_isEmpty(self, v4, v5, v6, v7) & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2211E4C70;
    v11[3] = &unk_278461248;
    v12 = var0;
    v11[4] = &v13;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_usingBlock_(self, v8, *&var0.origin, *&var0.size, v11);
    v9 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  return v9 & 1;
}

- (BOOL)partiallyIntersectsBaseCellRegion:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!v4 || (objc_msgSend_isEmpty(v4, v5, v6, v7, v8) & 1) != 0 || (objc_msgSend_isEmpty(self, v10, v11, v12, v13) & 1) != 0)
  {
    v18 = 0;
  }

  else
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v20 = objc_msgSend_boundingCellRange(v9, v14, v15, v16, v17);
    v22 = v21;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2211E4E44;
    v24[3] = &unk_278461270;
    v25 = v9;
    v26 = &v27;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_usingBlock_(self, v23, v20, v22, v24);
    v18 = *(v28 + 24);

    _Block_object_dispose(&v27, 8);
  }

  return v18 & 1;
}

- (BOOL)hasRangeSpanningRowsForCellRect:(TSUModelCellRect)a3
{
  size = a3.var0.size;
  origin = a3.var0.origin;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ((objc_msgSend_isEmpty(self, a2, *&a3.var0.origin, *&a3.var0.size, v3) & 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2211E4F70;
    v10[3] = &unk_278461220;
    v10[4] = &v11;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_usingBlock_(self, v7, origin, size, v10);
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (TSUModelCellRect)expandBaseCellRectToCoverMergedCells:(TSUModelCellRect)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x4012000000;
  v19 = sub_2211E4B48;
  v20 = nullsub_25;
  v21 = &unk_22188E88F;
  v22 = a3;
  isEmpty = objc_msgSend_isEmpty(self, a2, *&a3.var0.origin, *&a3.var0.size, v3);
  v7 = v17;
  if (isEmpty)
  {
    v9 = v17[6];
    v8 = v17[7];
  }

  else
  {
    v10 = MEMORY[0x277D85DD0];
    v9 = v17[6];
    do
    {
      do
      {
        v11 = v9;
        v8 = v7[7];
        v15[0] = v10;
        v15[1] = 3221225472;
        v15[2] = sub_2211E5110;
        v15[3] = &unk_278461220;
        v15[4] = &v16;
        objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_usingBlock_(self, v6, v9, v8, v15);
        v7 = v17;
        v9 = v17[6];
      }

      while (v9 != v11);
    }

    while (((v9 ^ v11) & 0x101FFFF00000000) != 0 || v17[7] != v8);
  }

  _Block_object_dispose(&v16, 8);
  v13 = v9;
  v14 = v8;
  result.var0.size = v14;
  result.var0.origin = v13;
  return result;
}

- (id)expandBaseCellRegionToCoverMergedCells:(id)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_2211E3E88;
  v22 = sub_2211E3E98;
  v4 = a3;
  v23 = v4;
  if ((objc_msgSend_isEmpty(self, v5, v6, v7, v8) & 1) == 0)
  {
    v13 = objc_msgSend_boundingCellRange(v4, v9, v10, v11, v12);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2211E52A8;
    v17[3] = &unk_278461220;
    v17[4] = &v18;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_usingBlock_(self, v14, v13, v14, v17);
  }

  v15 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v15;
}

- (BOOL)hasRangeSpanningRowsForCellRange:(TSUModelCellRect)a3
{
  size = a3.var0.size;
  origin = a3.var0.origin;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ((objc_msgSend_isEmpty(self, a2, *&a3.var0.origin, *&a3.var0.size, v3) & 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2211E543C;
    v10[3] = &unk_278461220;
    v10[4] = &v11;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_usingBlock_(self, v7, origin, size, v10);
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (BOOL)hasRangeSpanningRowsForCellRegion:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if ((objc_msgSend_isEmpty(self, v5, v6, v7, v8) & 1) == 0)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2211E5544;
    v13[3] = &unk_278461220;
    v13[4] = &v14;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRegion_usingBlock_(self, v9, v4, v13, v10);
  }

  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (id).cxx_construct
{
  *&self->_mergeRanges.__table_.__first_node_.__next_ = 0u;
  self->_mergeRanges.__table_.__bucket_list_ = 0u;
  self->_mergeRanges.__table_.__max_load_factor_ = 1.0;
  sub_22116D444(&self->_mergeRangesRTree, a2);
  self->_mergedAtCellIds._lastTileFoundAtIndex = 0;
  *&self->_mergedAtCellIds._tiles.__cap_ = 0u;
  *&self->_mergedAtCellIds._tiles.__begin_ = 0u;
  return self;
}

@end