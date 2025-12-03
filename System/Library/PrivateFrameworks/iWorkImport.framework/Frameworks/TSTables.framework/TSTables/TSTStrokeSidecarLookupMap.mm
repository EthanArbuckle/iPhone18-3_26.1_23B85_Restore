@interface TSTStrokeSidecarLookupMap
- (BOOL)anyCellBordersInThisRow;
- (BOOL)cellBorderAtColumn:(unsigned __int16)column;
- (TSTStrokeSidecarLookupMap)initWithStrokeSidecar:(id)sidecar region:(id)region;
- (void)setIteratorToRow:(unsigned int)row;
@end

@implementation TSTStrokeSidecarLookupMap

- (TSTStrokeSidecarLookupMap)initWithStrokeSidecar:(id)sidecar region:(id)region
{
  sidecarCopy = sidecar;
  regionCopy = region;
  v12.receiver = self;
  v12.super_class = TSTStrokeSidecarLookupMap;
  v9 = [(TSTStrokeSidecarLookupMap *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_strokeSidecar, sidecar);
    objc_storeStrong(&v10->_region, region);
  }

  return v10;
}

- (void)setIteratorToRow:(unsigned int)row
{
  v5 = *&row;
  v7 = objc_msgSend_intersectingColumnsInRow_(self->_region, a2, *&row, v3, v4);
  if (objc_msgSend_count(v7, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_mutableCopy(v7, v12, v13, v14, v15);
    v21 = objc_msgSend_strokeSidecar(self, v17, v18, v19, v20);
    v25 = objc_msgSend_strokeLayerForTopOfRow_(v21, v22, v5, v23, v24);

    Index = objc_msgSend_firstIndex(v16, v26, v27, v28, v29);
    if (Index == 0x7FFFFFFFFFFFFFFFLL)
    {
      v34 = 0;
    }

    else
    {
      v35 = 0;
      do
      {
        v34 = objc_msgSend_findStrokeAndRangeAtIndex_(v25, v30, Index, v32, v33);

        v40 = objc_msgSend_range(v34, v36, v37, v38, v39);
        v41 = v30;
        if (!v30)
        {
          break;
        }

        v42 = v40;
        objc_msgSend_removeIndexesInRange_(v16, v30, v40, v30, v33);
        v46 = &v41[v42] >= v42 ? objc_msgSend_indexGreaterThanOrEqualToIndex_(v16, v43, &v41[v42], v44, v45) : objc_msgSend_indexGreaterThanOrEqualToIndex_(v16, v43, 0x7FFFFFFFFFFFFFFFLL, v44, v45);
        Index = v46;
        v35 = v34;
      }

      while (v46 != 0x7FFFFFFFFFFFFFFFLL);
    }

    v47 = objc_msgSend_strokeSidecar(self, v30, Index, v32, v33);
    v51 = objc_msgSend_strokeLayerForBottomOfRow_(v47, v48, v5, v49, v50);

    v57 = objc_msgSend_firstIndex(v16, v52, v53, v54, v55);
    if (v57 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v60 = v34;
    }

    else
    {
      do
      {
        v60 = objc_msgSend_findStrokeAndRangeAtIndex_(v51, v56, v57, v58, v59);

        v65 = objc_msgSend_range(v60, v61, v62, v63, v64);
        v66 = v56;
        if (!v56)
        {
          break;
        }

        v67 = v65;
        objc_msgSend_removeIndexesInRange_(v16, v56, v65, v56, v59);
        v71 = &v66[v67] >= v67 ? objc_msgSend_indexGreaterThanOrEqualToIndex_(v16, v68, &v66[v67], v69, v70) : objc_msgSend_indexGreaterThanOrEqualToIndex_(v16, v68, 0x7FFFFFFFFFFFFFFFLL, v69, v70);
        v57 = v71;
        v34 = v60;
      }

      while (v71 != 0x7FFFFFFFFFFFFFFFLL);
    }

    v72 = objc_msgSend_mutableCopy(v16, v56, v57, v58, v59);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = sub_2211E31D4;
    v83[3] = &unk_278461158;
    v83[4] = self;
    v85 = v5;
    v73 = v16;
    v84 = v73;
    objc_msgSend_enumerateIndexesUsingBlock_(v72, v74, v83, v75, v76);
    objc_msgSend_removeIndexes_(v7, v77, v73, v78, v79);
    objc_msgSend_setColumnIndexesInRow_(self, v80, v7, v81, v82);
  }

  else
  {
    objc_msgSend_setColumnIndexesInRow_(self, v12, 0, v14, v15);
  }
}

- (BOOL)anyCellBordersInThisRow
{
  v5 = objc_msgSend_columnIndexesInRow(self, a2, v2, v3, v4);
  v10 = objc_msgSend_count(v5, v6, v7, v8, v9) != 0;

  return v10;
}

- (BOOL)cellBorderAtColumn:(unsigned __int16)column
{
  columnCopy = column;
  v6 = objc_msgSend_columnIndexesInRow(self, a2, column, v3, v4);
  LOBYTE(columnCopy) = objc_msgSend_containsIndex_(v6, v7, columnCopy, v8, v9);

  return columnCopy;
}

@end