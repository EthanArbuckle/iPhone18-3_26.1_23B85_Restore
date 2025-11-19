@interface TSTHiddenStateIndexSet
- (TSTHiddenStateIndexSet)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)visibleIndices;
- (unint64_t)findNthNextVisibleIndex:(unint64_t)a3 fromIndex:(unint64_t)a4;
- (unint64_t)findNthPreviousVisibleIndex:(unint64_t)a3 fromIndex:(unint64_t)a4;
- (void)enumerateVisibleIndexesInRange:(_NSRange)a3 usingBlock:(id)a4;
- (void)setHidden:(BOOL)a3 atIndex:(unint64_t)a4;
- (void)setHidden:(BOOL)a3 atIndexes:(id)a4;
- (void)setHidden:(BOOL)a3 inRange:(_NSRange)a4;
- (void)swapIndex:(unint64_t)a3 withIndex:(unint64_t)a4;
@end

@implementation TSTHiddenStateIndexSet

- (TSTHiddenStateIndexSet)init
{
  v6.receiver = self;
  v6.super_class = TSTHiddenStateIndexSet;
  v2 = [(TSTHiddenStateIndexSet *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
    visibleIndexSet = v2->_visibleIndexSet;
    v2->_visibleIndexSet = v3;
  }

  return v2;
}

- (void)setHidden:(BOOL)a3 atIndex:(unint64_t)a4
{
  visibleIndexSet = self->_visibleIndexSet;
  if (a3)
  {
    objc_msgSend_removeIndex_(visibleIndexSet, a2, a4, a4, v4);
  }

  else
  {
    objc_msgSend_addIndex_(visibleIndexSet, a2, a4, a4, v4);
  }
}

- (void)setHidden:(BOOL)a3 atIndexes:(id)a4
{
  visibleIndexSet = self->_visibleIndexSet;
  if (a3)
  {
    objc_msgSend_removeIndexes_(visibleIndexSet, a2, a4, a4, v4);
  }

  else
  {
    objc_msgSend_addIndexes_(visibleIndexSet, a2, a4, a4, v4);
  }
}

- (void)setHidden:(BOOL)a3 inRange:(_NSRange)a4
{
  visibleIndexSet = self->_visibleIndexSet;
  if (a3)
  {
    objc_msgSend_removeIndexesInRange_(visibleIndexSet, a2, a4.location, a4.length, a4.length);
  }

  else
  {
    objc_msgSend_addIndexesInRange_(visibleIndexSet, a2, a4.location, a4.length, a4.length);
  }
}

- (id)visibleIndices
{
  v5 = objc_msgSend_copy(self->_visibleIndexSet, a2, v2, v3, v4);

  return v5;
}

- (unint64_t)findNthPreviousVisibleIndex:(unint64_t)a3 fromIndex:(unint64_t)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = a4;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = a3;
  visibleIndexSet = self->_visibleIndexSet;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221219314;
  v7[3] = &unk_2784616A8;
  v7[4] = v8;
  v7[5] = &v9;
  objc_msgSend_enumerateRangesInRange_options_usingBlock_(visibleIndexSet, a2, 0, a4, 2, v7);
  v5 = v10[3];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (unint64_t)findNthNextVisibleIndex:(unint64_t)a3 fromIndex:(unint64_t)a4
{
  Index = objc_msgSend_lastIndex(self->_visibleIndexSet, a2, a3, a4, v4);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = a3;
  visibleIndexSet = self->_visibleIndexSet;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2212194B8;
  v13[3] = &unk_2784616A8;
  v13[4] = &v14;
  v13[5] = &v18;
  objc_msgSend_enumerateRangesInRange_options_usingBlock_(visibleIndexSet, v10, a4, Index + 1, 0, v13);
  if (v15[3])
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v19[3] = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v19[3];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v11;
}

- (void)enumerateVisibleIndexesInRange:(_NSRange)a3 usingBlock:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  visibleIndexSet = self->_visibleIndexSet;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2212195BC;
  v11[3] = &unk_2784616D0;
  v12 = v7;
  v9 = v7;
  objc_msgSend_enumerateIndexesInRange_options_usingBlock_(visibleIndexSet, v10, location, length, 0, v11);
}

- (void)swapIndex:(unint64_t)a3 withIndex:(unint64_t)a4
{
  isIndexHidden = objc_msgSend_isIndexHidden_(self, a2, a3, a4, v4);
  v12 = objc_msgSend_isIndexHidden_(self, v9, a4, v10, v11);
  objc_msgSend_setHidden_atIndex_(self, v13, isIndexHidden, a4, v14);

  objc_msgSend_setHidden_atIndex_(self, v15, v12, a3, v16);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, a3, v7, v8);
  v14 = objc_msgSend_init(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_mutableCopy(self->_visibleIndexSet, v15, v16, v17, v18);
  objc_msgSend_setVisibleIndexSet_(v14, v20, v19, v21, v22);

  return v14;
}

@end