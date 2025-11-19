@interface TSTMutableCellRegion
- (void)addColumns:(id)a3;
- (void)addRegion:(id)a3;
- (void)addRows:(id)a3;
- (void)clear;
- (void)p_addRange:(TSUCellRect)a3 calculateAncillaryInfo:(BOOL)a4;
- (void)removeColumns:(id)a3;
- (void)removeRows:(id)a3;
@end

@implementation TSTMutableCellRegion

- (void)clear
{
  self->super._cellRanges.__end_ = self->super._cellRanges.__begin_;
  self->super._boundingCellRange = xmmword_2217E0780;
  intersectingColumnsIndexSet = self->super._intersectingColumnsIndexSet;
  self->super._cellCount = 0;
  self->super._intersectingColumnsIndexSet = 0;

  intersectingRowsIndexSet = self->super._intersectingRowsIndexSet;
  self->super._intersectingRowsIndexSet = 0;

  *&self->super._firstCellID.row = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
}

- (void)p_addRange:(TSUCellRect)a3 calculateAncillaryInfo:(BOOL)a4
{
  origin = a3.origin;
  v38[1] = *MEMORY[0x277D85DE8];
  if (a3.origin.row != 0x7FFFFFFF && (*&a3.origin & 0xFFFF00000000) != 0x7FFF00000000)
  {
    size = a3.size;
    if (a3.size.numberOfRows)
    {
      if (a3.size.numberOfColumns)
      {
        if (objc_msgSend_isValid(self, a2, *&a3.origin, *&a3.size, a4))
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          sub_22116C9DC(&v33, self->super._cellRanges.__begin_, self->super._cellRanges.__end_, self->super._cellRanges.__end_ - self->super._cellRanges.__begin_);
          v30 = 0;
          v31 = 0;
          v32 = 0;
          sub_22116C9DC(&v30, v33, v34, (v34 - v33) >> 4);
          objc_msgSend_clear(self, v10, v11, v12, v13);
          v36 = origin;
          v37 = size;
          v28 = 0;
          v29 = 0;
          v27 = 0;
          sub_2214539F0(&v27, &v36, v38, 1uLL);
          v36 = 0;
          v37 = 0;
          v38[0] = 0;
          sub_22116C9DC(&v36, v27, v28, (v28 - v27) >> 4);
          objc_msgSend_combineNonOverlappingCellRanges_addingOverlappingCellRanges_(TSTCellRegion, v14, &v33, &v27, v15);
          for (i = __p; i != v26; i += 2)
          {
            objc_msgSend_p_insertRangeIntoRegion_(self, v16, *i, i[1], v19);
          }

          if (a4)
          {
            objc_msgSend_p_calculateAncillaryInformation(self, v16, v17, v18, v19);
          }

          if (__p)
          {
            operator delete(__p);
          }

          if (v36)
          {
            v37 = v36;
            operator delete(v36);
          }

          if (v27)
          {
            v28 = v27;
            operator delete(v27);
          }

          if (v30)
          {
            v31 = v30;
            operator delete(v30);
          }

          if (v33)
          {
            v34 = v33;
            operator delete(v33);
          }
        }

        else
        {
          objc_msgSend_p_insertRangeIntoRegion_(self, v8, origin, size, v9);

          objc_msgSend_p_calculateAncillaryInformation(self, v21, v22, v23, v24);
        }
      }
    }
  }
}

- (void)addRegion:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4 && objc_msgSend_isValid(v4, v5, v6, v7, v8))
  {
    if (objc_msgSend_isValid(self, v10, v11, v12, v13))
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      sub_22116C9DC(&v39, self->super._cellRanges.__begin_, self->super._cellRanges.__end_, self->super._cellRanges.__end_ - self->super._cellRanges.__begin_);
      objc_msgSend_clear(self, v17, v18, v19, v20);
      v21 = v9;
      v26 = objc_msgSend_cellRanges(v21, v22, v23, v24, v25);
      v36 = 0;
      v37 = 0;
      v38 = 0;
      sub_22116C9DC(&v36, *v26, v26[1], (v26[1] - *v26) >> 4);
      objc_msgSend_combineNonOverlappingCellRanges_addingOverlappingCellRanges_(TSTCellRegion, v27, &v39, &v36, v28);
      for (i = __p; i != v35; i += 2)
      {
        objc_msgSend_p_insertRangeIntoRegion_(self, v29, *i, i[1], v32);
      }

      objc_msgSend_p_calculateAncillaryInformation(self, v29, v30, v31, v32);
      if (__p)
      {
        operator delete(__p);
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }
    }

    else
    {
      objc_msgSend_p_copyFromRegion_(self, v14, v9, v15, v16);
    }
  }
}

- (void)addColumns:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v14[3] = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_221452BA0;
    v13[3] = &unk_2784623E0;
    v13[4] = self;
    v13[5] = v14;
    objc_msgSend_enumerateRangesUsingBlock_(v4, v5, v13, v6, v7);
    objc_msgSend_p_calculateAncillaryInformation(self, v9, v10, v11, v12);
    _Block_object_dispose(v14, 8);
  }
}

- (void)addRows:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v14[3] = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_221452F18;
    v13[3] = &unk_2784623E0;
    v13[4] = self;
    v13[5] = v14;
    objc_msgSend_enumerateRangesUsingBlock_(v4, v5, v13, v6, v7);
    objc_msgSend_p_calculateAncillaryInformation(self, v9, v10, v11, v12);
    _Block_object_dispose(v14, 8);
  }
}

- (void)removeRows:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_boundingCellRange(self, v9, v10, v11, v12);
    if (v14 >> 32)
    {
      v18 = v13 == 0x7FFFFFFF;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      v19 = 0x80000000;
    }

    else
    {
      v19 = (HIDWORD(v14) + v13);
    }

    v20 = objc_msgSend_mutableCopy(self, v14, v15, v16, v17);
    objc_msgSend_clear(self, v21, v22, v23, v24);
    v27 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v25, 0, v19, v26);
    objc_msgSend_removeIndexes_(v27, v28, v4, v29, v30);
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x2020000000;
    v49[3] = 0;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v48 = 0;
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = sub_221453378;
    v42 = &unk_2784655C0;
    v45 = v47;
    v46 = v49;
    v31 = v20;
    v43 = v31;
    v44 = self;
    objc_msgSend_enumerateRangesUsingBlock_(v27, v32, &v39, v33, v34);
    objc_msgSend_p_calculateAncillaryInformation(self, v35, v36, v37, v38, v39, v40, v41, v42);

    _Block_object_dispose(v47, 8);
    _Block_object_dispose(v49, 8);
  }
}

- (void)removeColumns:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_boundingCellRange(self, v9, v10, v11, v12);
    if (v14)
    {
      v18 = (v13 & 0xFFFF00000000) == 0x7FFF00000000;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      v19 = 0x8000;
    }

    else
    {
      v19 = (v14 + WORD2(v13) - 1) + 1;
    }

    v20 = objc_msgSend_mutableCopy(self, v14, v15, v16, v17);
    objc_msgSend_clear(self, v21, v22, v23, v24);
    v27 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v25, 0, v19, v26);
    objc_msgSend_removeIndexes_(v27, v28, v4, v29, v30);
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x2020000000;
    v49[3] = 0;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v48 = 0;
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = sub_22145366C;
    v42 = &unk_2784655C0;
    v45 = v47;
    v46 = v49;
    v31 = v20;
    v43 = v31;
    v44 = self;
    objc_msgSend_enumerateRangesUsingBlock_(v27, v32, &v39, v33, v34);
    objc_msgSend_p_calculateAncillaryInformation(self, v35, v36, v37, v38, v39, v40, v41, v42);

    _Block_object_dispose(v47, 8);
    _Block_object_dispose(v49, 8);
  }
}

@end