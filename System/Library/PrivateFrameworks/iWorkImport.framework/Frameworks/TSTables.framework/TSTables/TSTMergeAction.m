@interface TSTMergeAction
+ (TSKUIDStructTract)cellUIDRangeFromMergeFormula:(SEL)a3 calcEngine:(id)a4;
+ (id)mergeActionForGrowingRange:(const void *)a3 coveringRange:(const void *)a4 inTable:(id)a5;
+ (id)mergeActionForInsertingRange:(const void *)a3 inTable:(id)a4;
+ (id)mergeActionForRemovingRanges:(const void *)a3 inTable:(id)a4;
+ (id)stringForMergeType:(int)a3;
- (BOOL)hasMultiRowMerge;
- (TSTMergeAction)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSTMergeAction)initWithType:(int)a3;
- (TSTMergeAction)initWithType:(int)a3 uidRange:(const void *)a4;
- (TSTMergeAction)initWithType:(int)a3 uidRanges:(const void *)a4;
- (id).cxx_construct;
- (id)actionByExpandingWithAction:(id)a3;
- (id)cellRegionForTable:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)remapUIDsByColumnMap:(const void *)a3 rowMap:(const void *)a4 ownerMap:(const void *)a5;
- (id)shrinkAction;
- (void)addFormula:(id)a3;
- (void)addFormulaIndex:(unint64_t)a3;
- (void)enumerateMergeFormulasUsingBlock:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)setMergeFormulaIndexes:(const void *)a3;
- (void)setMergeFormulas:(const void *)a3;
- (void)setUidRanges:(const void *)a3;
- (void)verify;
@end

@implementation TSTMergeAction

- (void)verify
{
  type = self->_type;
  if (type >= 3)
  {
    if (type == 4)
    {
      if (self->_uidRanges.__end_ == self->_uidRanges.__begin_)
      {
        goto LABEL_2;
      }

      begin = self->_mergeFormulas.__begin_;
      var0 = self->_mergeFormulas.var0;
    }

    else
    {
      if (type != 3)
      {
        return;
      }

      begin = self->_uidRanges.__begin_;
      var0 = self->_uidRanges.__end_;
    }

    if (var0 != begin)
    {
      return;
    }
  }

LABEL_2:
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTMergeAction verify]", v2, v3);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeAction.mm", v9, v10);
  v15 = objc_msgSend_stringForMergeType_(TSTMergeAction, v12, self->_type, v13, v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v16, v7, v11, 87, 0, "%@ has %lu covering ranges and %lu formulas with %lu indexes", v15, 0xAAAAAAAAAAAAAAABLL * ((self->_uidRanges.__end_ - self->_uidRanges.__begin_) >> 4), self->_mergeFormulas.var0 - self->_mergeFormulas.__begin_, self->_mergeFormulaIndexes.__end_ - self->_mergeFormulaIndexes.__begin_);

  v21 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v21, v17, v18, v19, v20);
}

+ (id)stringForMergeType:(int)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_2784642E8[a3];
  }
}

- (TSTMergeAction)initWithType:(int)a3 uidRange:(const void *)a4
{
  v5 = *&a3;
  v19 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_221086EBC(&v13, *a4, *(a4 + 1), (*(a4 + 1) - *a4) >> 4);
  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_221086EBC(&__p, *(a4 + 3), *(a4 + 4), (*(a4 + 4) - *(a4 + 3)) >> 4);
  memset(v11, 0, sizeof(v11));
  sub_2212D8368(v11, &v13, &v19, 1uLL);
  v9 = objc_msgSend_initWithType_uidRanges_(self, v7, v5, v11, v8);
  v12 = v11;
  sub_2210BC30C(&v12);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  return v9;
}

- (TSTMergeAction)initWithType:(int)a3
{
  memset(v6, 0, sizeof(v6));
  v4 = objc_msgSend_initWithType_uidRanges_(self, a2, *&a3, v6, v3);
  v7 = v6;
  sub_2210BC30C(&v7);
  return v4;
}

- (TSTMergeAction)initWithType:(int)a3 uidRanges:(const void *)a4
{
  v7 = objc_msgSend_init(self, a2, *&a3, a4, v4);
  v8 = v7;
  if (v7)
  {
    *(v7 + 8) = a3;
    v9 = v7 + 16;
    if (&v8->_uidRanges != a4)
    {
      sub_2213C3D6C(v9, *a4, *(a4 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 1) - *a4) >> 4));
    }
  }

  return v8;
}

+ (TSKUIDStructTract)cellUIDRangeFromMergeFormula:(SEL)a3 calcEngine:(id)a4
{
  v7 = a4;
  memset(&v19, 0, sizeof(v19));
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v26, a5, &v19);
  v12 = objc_msgSend_const_astNodeArray(v7, v8, v9, v10, v11);
  sub_2212BB9E8(&v19, v12, &v26, 1);
  TSCEASTStreamIterator::rewrite(&v19, v13, v14, v15, v16);
  if (v24 == __p || v22 == v21)
  {
    *&retstr->_colIdList.__cap_ = 0u;
    *&retstr->_rowIdList.__end_ = 0u;
    *&retstr->_colIdList.__begin_ = 0u;
  }

  else
  {
    sub_2210BBBE8(retstr, &__p, &v21);
  }

  v19.coordinate = &unk_2834A3EA8;

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(&v19, v17);
  return result;
}

+ (id)mergeActionForRemovingRanges:(const void *)a3 inTable:(id)a4
{
  v5 = a4;
  if (*(a3 + 1) == *a3)
  {
    v13 = 0;
  }

  else
  {
    v6 = [TSTMergeAction alloc];
    v13 = objc_msgSend_initWithType_uidRanges_(v6, v7, 3, a3, v8);
    v14 = *a3;
    v15 = *(a3 + 1);
    if (*a3 != v15)
    {
      do
      {
        v23[0] = objc_msgSend_tableUID(v5, v9, v10, v11, v12);
        v23[1] = v16;
        v18 = objc_msgSend_createFormulaForUIDRange_tableUID_(TSTFormulaStore, v16, v14, v23, v17);
        objc_msgSend_addFormula_(v13, v19, v18, v20, v21);

        v14 += 48;
      }

      while (v14 != v15);
    }
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v9 = objc_msgSend_type(self, v5, v6, v7, v8);
  objc_msgSend_setType_(v4, v10, v9, v11, v12);
  v13 = self;
  v18 = objc_msgSend_uidRanges(v13, v14, v15, v16, v17);
  objc_msgSend_setUidRanges_(v4, v19, v18, v20, v21);
  v22 = self;
  v27 = objc_msgSend_mergeFormulas(v22, v23, v24, v25, v26);
  objc_msgSend_setMergeFormulas_(v4, v28, v27, v29, v30);
  v31 = self;
  v36 = objc_msgSend_mergeFormulaIndexes(v31, v32, v33, v34, v35);
  objc_msgSend_setMergeFormulaIndexes_(v4, v37, v36, v38, v39);
  return v4;
}

+ (id)mergeActionForGrowingRange:(const void *)a3 coveringRange:(const void *)a4 inTable:(id)a5
{
  v7 = a5;
  if (((*(a4 + 4) - *(a4 + 3)) >> 4) * ((*(a4 + 1) - *a4) >> 4) && ((*(a3 + 4) - *(a3 + 3)) >> 4) * ((*(a3 + 1) - *a3) >> 4))
  {
    v8 = [TSTMergeAction alloc];
    v11 = objc_msgSend_initWithType_uidRange_(v8, v9, 4, a4, v10);
    v23[0] = objc_msgSend_tableUID(v7, v12, v13, v14, v15);
    v23[1] = v16;
    v18 = objc_msgSend_createFormulaForUIDRange_tableUID_(TSTFormulaStore, v16, a3, v23, v17);
    objc_msgSend_addFormula_(v11, v19, v18, v20, v21);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)mergeActionForInsertingRange:(const void *)a3 inTable:(id)a4
{
  v4 = objc_msgSend_mergeActionForGrowingRange_coveringRange_inTable_(a1, a2, a3, a3, a4);

  return v4;
}

- (BOOL)hasMultiRowMerge
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v26);
  begin = self->_mergeFormulas.__begin_;
  var0 = self->_mergeFormulas.var0;
  if (begin == var0)
  {
    return 0;
  }

  v5 = begin + 1;
  do
  {
    v6 = *(v5 - 1);
    v11 = objc_msgSend_const_astNodeArray(v6, v7, v8, v9, v10);
    sub_2212BC6C4(v21, v11, &v26);
    TSCEASTStreamIterator::rewrite(v21, v12, v13, v14, v15);
    v17 = v25 - v24;
    v18 = (v25 - v24) > 0x10;
    v21[0] = &unk_2834A4000;
    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }

    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(v21, v16);

    if (v17 > 0x10)
    {
      break;
    }
  }

  while (v5++ != var0);
  return v18;
}

- (void)addFormula:(id)a3
{
  v4 = a3;
  sub_22139A5DC(&self->_mergeFormulas.__begin_, &v4);
}

- (void)addFormulaIndex:(unint64_t)a3
{
  end = self->_mergeFormulaIndexes.__end_;
  cap = self->_mergeFormulaIndexes.__cap_;
  if (end >= cap)
  {
    begin = self->_mergeFormulaIndexes.__begin_;
    v9 = end - begin;
    v10 = end - begin;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      sub_22107C148();
    }

    v12 = cap - begin;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      sub_2210874C4(&self->_mergeFormulaIndexes, v14);
    }

    v15 = end - begin;
    v16 = (8 * v10);
    v17 = (8 * v10 - 8 * v15);
    *v16 = a3;
    v7 = v16 + 1;
    memcpy(v17, begin, v9);
    v18 = self->_mergeFormulaIndexes.__begin_;
    self->_mergeFormulaIndexes.__begin_ = v17;
    self->_mergeFormulaIndexes.__end_ = v7;
    self->_mergeFormulaIndexes.__cap_ = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *end = a3;
    v7 = end + 1;
  }

  self->_mergeFormulaIndexes.__end_ = v7;
}

- (TSTMergeAction)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v34 = a4;
  v39.receiver = self;
  v39.super_class = TSTMergeAction;
  v6 = [(TSTMergeAction *)&v39 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = *(a3 + 22);
    v8 = *(a3 + 5);
    if (v8)
    {
      v9 = (v8 + 8);
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a3 + 8);
    if (v10)
    {
      v11 = 8 * v10;
      do
      {
        MEMORY[0x223D9FC60](v38, *v9);
        MEMORY[0x223D9F8B0](v35, v38);
        sub_221398734(&v7->_uidRanges, v35);
        if (__p)
        {
          v37 = __p;
          operator delete(__p);
        }

        if (v35[0])
        {
          v35[1] = v35[0];
          operator delete(v35[0]);
        }

        MEMORY[0x223D9FC70](v38);
        ++v9;
        v11 -= 8;
      }

      while (v11);
    }

    v12 = *(a3 + 14);
    sub_2213C3030(&v7->_mergeFormulas.__begin_, v12);
    if (v12 >= 1)
    {
      v13 = 8;
      do
      {
        v14 = [TSCEFormulaObject alloc];
        v38[0] = objc_msgSend_initWithArchive_isPreUFF_(v14, v15, *(*(a3 + 8) + v13), 0, v16);
        sub_22139A5DC(&v7->_mergeFormulas.__begin_, v38);

        v13 += 8;
        --v12;
      }

      while (v12);
    }

    v17 = *(a3 + 18);
    sub_2211687C4(&v7->_mergeFormulaIndexes.__begin_, v17);
    if (v17 >= 1)
    {
      v18 = 0;
      end = v7->_mergeFormulaIndexes.__end_;
      v20 = 4 * v17;
      do
      {
        v21 = *(*(a3 + 10) + v18);
        cap = v7->_mergeFormulaIndexes.__cap_;
        if (end >= cap)
        {
          begin = v7->_mergeFormulaIndexes.__begin_;
          v24 = end - begin;
          v25 = (end - begin) >> 3;
          v26 = v25 + 1;
          if ((v25 + 1) >> 61)
          {
            sub_22107C148();
          }

          v27 = cap - begin;
          if (v27 >> 2 > v26)
          {
            v26 = v27 >> 2;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFF8)
          {
            v28 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            sub_2210874C4(&v7->_mergeFormulaIndexes, v28);
          }

          v29 = (end - begin) >> 3;
          v30 = (8 * v25);
          v31 = (8 * v25 - 8 * v29);
          *v30 = v21;
          end = (v30 + 1);
          memcpy(v31, begin, v24);
          v32 = v7->_mergeFormulaIndexes.__begin_;
          v7->_mergeFormulaIndexes.__begin_ = v31;
          v7->_mergeFormulaIndexes.__end_ = end;
          v7->_mergeFormulaIndexes.__cap_ = 0;
          if (v32)
          {
            operator delete(v32);
          }
        }

        else
        {
          *end = v21;
          end += 8;
        }

        v18 += 4;
        v7->_mergeFormulaIndexes.__end_ = end;
      }

      while (v20 != v18);
    }
  }

  return v7;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v32 = a4;
  type = self->_type;
  *(a3 + 4) |= 1u;
  *(a3 + 22) = type;
  begin = self->_uidRanges.__begin_;
  end = self->_uidRanges.__end_;
  while (begin != end)
  {
    v9 = *(a3 + 5);
    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = *(a3 + 8);
    v11 = *v9;
    if (v10 < *v9)
    {
      *(a3 + 8) = v10 + 1;
      v12 = *&v9[2 * v10 + 2];
      goto LABEL_10;
    }

    if (v11 == *(a3 + 9))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
      v9 = *(a3 + 5);
      v11 = *v9;
    }

    *v9 = v11 + 1;
    v12 = MEMORY[0x223DA0320](*(a3 + 3));
    v13 = *(a3 + 8);
    v14 = *(a3 + 5) + 8 * v13;
    *(a3 + 8) = v13 + 1;
    *(v14 + 8) = v12;
LABEL_10:
    TSKUIDStructTract::saveToMessage(begin++, v12);
  }

  v15 = self->_mergeFormulas.__begin_;
  var0 = self->_mergeFormulas.var0;
  while (v15 != var0)
  {
    v19 = *v15;
    v20 = *(a3 + 8);
    if (!v20)
    {
      goto LABEL_18;
    }

    v21 = *(a3 + 14);
    v22 = *v20;
    if (v21 < *v20)
    {
      *(a3 + 14) = v21 + 1;
      objc_msgSend_encodeToArchive_archiver_(v19, v17, *&v20[2 * v21 + 2], v32, v18);
      goto LABEL_20;
    }

    if (v22 == *(a3 + 15))
    {
LABEL_18:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 48));
      v20 = *(a3 + 8);
      v22 = *v20;
    }

    *v20 = v22 + 1;
    v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(*(a3 + 6));
    v24 = *(a3 + 14);
    v25 = *(a3 + 8) + 8 * v24;
    *(a3 + 14) = v24 + 1;
    *(v25 + 8) = v23;
    objc_msgSend_encodeToArchive_archiver_(v19, v26, v23, v32, v27);
LABEL_20:

    ++v15;
  }

  v28 = self->_mergeFormulaIndexes.__begin_;
  v29 = self->_mergeFormulaIndexes.__end_;
  if (v28 != v29)
  {
    v30 = *(a3 + 18);
    do
    {
      v31 = *v28;
      if (v30 == *(a3 + 19))
      {
        sub_2210BBC64(a3 + 18, v30 + 1);
      }

      *(*(a3 + 10) + 4 * v30++) = v31;
      *(a3 + 18) = v30;
      ++v28;
    }

    while (v28 != v29);
  }
}

- (void)enumerateMergeFormulasUsingBlock:(id)a3
{
  v4 = a3;
  v11 = 0;
  begin = self->_mergeFormulas.__begin_;
  var0 = self->_mergeFormulas.var0;
  if (begin != var0)
  {
    v7 = begin + 1;
    do
    {
      v8 = *(v7 - 1);
      v4[2](v4, v8, &v11);
      v9 = v11;

      if (v9)
      {
        break;
      }
    }

    while (v7++ != var0);
  }
}

- (id)remapUIDsByColumnMap:(const void *)a3 rowMap:(const void *)a4 ownerMap:(const void *)a5
{
  memset(v33, 0, sizeof(v33));
  v9 = self;
  v14 = objc_msgSend_uidRanges(v9, v10, v11, v12, v13);
  v15 = *v14;
  v16 = *(v14 + 8);
  while (v15 != v16)
  {
    TSKUIDStructTract::remap(v30, v15, a3, a4);
    sub_221398734(v33, v30);
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    if (v30[0])
    {
      v30[1] = v30[0];
      operator delete(v30[0]);
    }

    ++v15;
  }

  v17 = [TSTMergeAction alloc];
  v20 = objc_msgSend_initWithType_uidRanges_(v17, v18, self->_type, v33, v19);
  begin = self->_mergeFormulas.__begin_;
  var0 = self->_mergeFormulas.var0;
  while (begin != var0)
  {
    v23 = *begin;
    v25 = objc_msgSend_copyByRemappingUids_rowMap_ownerMap_clearIfMissing_(v23, v24, a3, a4, a5, 1);
    objc_msgSend_addFormula_(v20, v26, v25, v27, v28);

    ++begin;
  }

  v30[0] = v33;
  sub_2210BC30C(v30);

  return v20;
}

- (id)cellRegionForTable:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_invalidRegion(TSTCellRegion, v5, v6, v7, v8);
  v14 = v9;
  begin = self->_uidRanges.__begin_;
  end = self->_uidRanges.__end_;
  if (begin == end)
  {
    v21 = v9;
  }

  else
  {
    do
    {
      v17 = objc_msgSend_cellRegionForUIDRange_(v4, v10, begin, v12, v13);
      v21 = objc_msgSend_regionByAddingRegion_(v14, v18, v17, v19, v20);

      ++begin;
      v14 = v21;
    }

    while (begin != end);
  }

  v22 = self->_mergeFormulas.__begin_;
  var0 = self->_mergeFormulas.var0;
  if (v22 == var0)
  {
    v35 = v21;
  }

  else
  {
    do
    {
      v24 = *v22;
      v25 = objc_msgSend_calcEngine(v4, v10, v11, v12, v13);
      objc_msgSend_cellUIDRangeFromMergeFormula_calcEngine_(TSTMergeAction, v26, v24, v25, v27);

      v31 = objc_msgSend_cellRegionForUIDRange_(v4, v28, v39, v29, v30);
      v35 = objc_msgSend_regionByAddingRegion_(v21, v32, v31, v33, v34);

      if (__p)
      {
        v41 = __p;
        operator delete(__p);
      }

      if (v39[0])
      {
        v39[1] = v39[0];
        operator delete(v39[0]);
      }

      ++v22;
      v21 = v35;
    }

    while (v22 != var0);
  }

  if (objc_msgSend_isValid(v35, v10, v11, v12, v13))
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;

  return v36;
}

- (id)shrinkAction
{
  v3 = [TSTMergeAction alloc];
  v6 = objc_msgSend_initWithType_uidRanges_(v3, v4, 3, &self->_uidRanges, v5);

  return v6;
}

- (id)actionByExpandingWithAction:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_copy(self, v5, v6, v7, v8);
  if (objc_msgSend_hasMergeFormulas(v4, v10, v11, v12, v13))
  {
    v14 = v9;
    v19 = objc_msgSend_uidRanges(v14, v15, v16, v17, v18);
    v88 = 0;
    v89 = 0;
    v90 = 0;
    sub_2210BC83C(&v88, *v19, v19[1], 0xAAAAAAAAAAAAAAABLL * ((v19[1] - *v19) >> 4));
    v20 = v4;
    v25 = objc_msgSend_uidRanges(v20, v21, v22, v23, v24);
    sub_2213C3FCC(&v88, v89, *v25, *(v25 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v25 + 8) - *v25) >> 4));
    v26 = [TSTMergeAction alloc];
    v29 = objc_msgSend_initWithType_uidRanges_(v26, v27, 4, &v88, v28);

    v85 = 0;
    v86 = 0;
    v87 = 0;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v84);
    begin = self->_mergeFormulas.__begin_;
    for (i = self->_mergeFormulas.var0; begin != i; ++begin)
    {
      v32 = *begin;
      v37 = objc_msgSend_const_astNodeArray(v32, v33, v34, v35, v36);
      sub_2212BC6C4(v79, v37, &v84);
      TSCEASTStreamIterator::rewrite(v79, v38, v39, v40, v41);
      v42 = v86;
      if (v86 >= v87)
      {
        v46 = sub_2210BC488(&v85, &v80);
      }

      else
      {
        sub_2212D82F0(&v85, v86, &v80);
        v46 = v42 + 1;
      }

      v86 = v46;
      objc_msgSend_addFormula_(v29, v43, v32, v44, v45);
      v79[0] = &unk_2834A4000;
      if (__p)
      {
        v83 = __p;
        operator delete(__p);
      }

      if (v80)
      {
        v81 = v80;
        operator delete(v80);
      }

      TSCEASTStreamIterator::~TSCEASTStreamIterator(v79, v47);
    }

    v48 = v4;
    v77 = v4;
    v53 = objc_msgSend_mergeFormulas(v48, v49, v50, v51, v52);
    v54 = *v53;
    v55 = *(v53 + 8);
    if (*v53 != v55)
    {
      do
      {
        v56 = *v54;
        v57 = *v54;
        v62 = objc_msgSend_const_astNodeArray(v57, v58, v59, v60, v61);
        sub_2212BC6C4(v79, v62, &v84);
        TSCEASTStreamIterator::rewrite(v79, v63, v64, v65, v66);
        memset(&v78, 0, 24);
        sub_221086EBC(&v78, v80, v81, (v81 - v80) >> 4);
        memset(&v78._rowIdList, 0, sizeof(v78._rowIdList));
        sub_221086EBC(&v78._rowIdList, __p, v83, (v83 - __p) >> 4);
        v70 = v85;
        v71 = v86;
        if (v85 == v86)
        {
LABEL_26:
          objc_msgSend_addFormula_(v29, v67, v57, v68, v69);
        }

        else
        {
          v72 = -1;
          do
          {
            v73 = TSKUIDStructTract::intersects(&v78, v70);
            v74 = v73;
            if (v73)
            {
              if (!TSKUIDStructTract::contains(&v78, v70))
              {
                goto LABEL_24;
              }

              if (((v78._colIdList.__end_ - v78._colIdList.__begin_) >> 4) == ((v70->_colIdList.__end_ - v70->_colIdList.__begin_) >> 4) && ((v78._rowIdList.__end_ - v78._rowIdList.__begin_) >> 4) == ((v70->_rowIdList.__end_ - v70->_rowIdList.__begin_) >> 4))
              {
                goto LABEL_24;
              }

              if ((v72 & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              v72 = 0;
            }

            ++v70;
          }

          while (v70 != v71);
          if ((v74 & 1) == 0)
          {
            goto LABEL_26;
          }

LABEL_24:
          if ((v72 & 0x80000000) == 0)
          {
            objc_storeStrong(v29[5], v56);
          }
        }

LABEL_27:
        if (v78._rowIdList.__begin_)
        {
          v78._rowIdList.__end_ = v78._rowIdList.__begin_;
          operator delete(v78._rowIdList.__begin_);
        }

        if (v78._colIdList.__begin_)
        {
          v78._colIdList.__end_ = v78._colIdList.__begin_;
          operator delete(v78._colIdList.__begin_);
        }

        v79[0] = &unk_2834A4000;
        if (__p)
        {
          v83 = __p;
          operator delete(__p);
        }

        if (v80)
        {
          v81 = v80;
          operator delete(v80);
        }

        TSCEASTStreamIterator::~TSCEASTStreamIterator(v79, v67);

        ++v54;
      }

      while (v54 != v55);
    }

    v79[0] = &v85;
    sub_2210BC30C(v79);
    v79[0] = &v88;
    sub_2210BC30C(v79);
    v4 = v77;
  }

  else
  {
    v29 = v9;
  }

  return v29;
}

- (void)setUidRanges:(const void *)a3
{
  p_uidRanges = &self->_uidRanges;
  if (p_uidRanges != a3)
  {
    sub_2213C3D6C(p_uidRanges, *a3, *(a3 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 4));
  }
}

- (void)setMergeFormulas:(const void *)a3
{
  p_mergeFormulas = &self->_mergeFormulas;
  if (p_mergeFormulas != a3)
  {
    sub_22116CF34(p_mergeFormulas, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 3);
  }
}

- (void)setMergeFormulaIndexes:(const void *)a3
{
  p_mergeFormulaIndexes = &self->_mergeFormulaIndexes;
  if (p_mergeFormulaIndexes != a3)
  {
    sub_22128026C(p_mergeFormulaIndexes, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 3);
  }
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  return self;
}

@end