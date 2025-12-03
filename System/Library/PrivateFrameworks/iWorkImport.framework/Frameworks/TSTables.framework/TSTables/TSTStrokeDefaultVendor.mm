@interface TSTStrokeDefaultVendor
- (BOOL)validateGeometry;
- (TSTStrokeDefaultVendor)initWithStrokeProvider:(id)provider tableProvider:(id)tableProvider tableInfo:(id)info;
- (TSTTableHiddenRowColumnProviding)tableProvider;
- (TSTTableInfo)tableInfo;
- (TSTTableStrokeProviding)strokeProvider;
- (_NSRange)bodySideBorderColumnRange;
- (_NSRange)bottomBorderRowRange;
- (_NSRange)footerColumnSeparatorColumnRange;
- (_NSRange)footerRowSeparatorRowRange;
- (_NSRange)headerColumnSeparatorColumnRange;
- (_NSRange)headerRowSeparatorRowRange;
- (_NSRange)headerSideBorderColumnRange;
- (_NSRange)topBorderRowRange;
- (id)strokeLayerForColumn:(unsigned int)column;
- (id)strokeLayerForRow:(unsigned int)row;
- (id)strokeLayerForStrokeType:(unint64_t)type;
- (id)strokeLayerStackForColumn:(unsigned int)column;
- (id)strokeLayerStackForRow:(unsigned int)row;
- (id)strokeLayerStackForStrokeType:(unint64_t)type;
- (int)validateChangeDescriptors:(id)descriptors;
- (unint64_t)p_strokeTypeForColumn:(unsigned int)column;
- (unint64_t)p_strokeTypeForRow:(unsigned int)row;
- (void)enumerateLayerAndStackForGridColumnRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block;
- (void)enumerateLayerAndStackForGridRowRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block;
- (void)p_updateStrokeLayer:(id)layer forColumnStrokeType:(unint64_t)type;
- (void)p_updateStrokeLayer:(id)layer forRowStrokeType:(unint64_t)type;
@end

@implementation TSTStrokeDefaultVendor

- (TSTStrokeDefaultVendor)initWithStrokeProvider:(id)provider tableProvider:(id)tableProvider tableInfo:(id)info
{
  providerCopy = provider;
  tableProviderCopy = tableProvider;
  infoCopy = info;
  v32.receiver = self;
  v32.super_class = TSTStrokeDefaultVendor;
  v11 = [(TSTStrokeDefaultVendor *)&v32 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_strokeProvider, providerCopy);
    objc_storeWeak(&v12->_tableProvider, tableProviderCopy);
    objc_storeWeak(&v12->_tableInfo, infoCopy);
    v17 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v13, v14, v15, v16);
    strokeTypeToLayerMap = v12->_strokeTypeToLayerMap;
    v12->_strokeTypeToLayerMap = v17;

    objc_msgSend_setCount_(v12->_strokeTypeToLayerMap, v19, 52, v20, v21);
    v26 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v22, v23, v24, v25);
    strokeTypeToLayerStackMap = v12->_strokeTypeToLayerStackMap;
    v12->_strokeTypeToLayerStackMap = v26;

    objc_msgSend_setCount_(v12->_strokeTypeToLayerStackMap, v28, 52, v29, v30);
  }

  return v12;
}

- (id)strokeLayerForColumn:(unsigned int)column
{
  v7 = objc_msgSend_p_strokeTypeForColumn_(self, a2, *&column, v3, v4);

  return objc_msgSend_strokeLayerForStrokeType_(self, v6, v7, v8, v9);
}

- (id)strokeLayerForRow:(unsigned int)row
{
  v7 = objc_msgSend_p_strokeTypeForRow_(self, a2, *&row, v3, v4);

  return objc_msgSend_strokeLayerForStrokeType_(self, v6, v7, v8, v9);
}

- (id)strokeLayerForStrokeType:(unint64_t)type
{
  objc_opt_class();
  v9 = objc_msgSend_strokeTypeToLayerMap(self, v5, v6, v7, v8);
  objc_msgSend_pointerAtIndex_(v9, v10, type, v11, v12);
  v13 = TSUCheckedDynamicCast();

  return v13;
}

- (id)strokeLayerStackForColumn:(unsigned int)column
{
  v7 = objc_msgSend_p_strokeTypeForColumn_(self, a2, *&column, v3, v4);

  return objc_msgSend_strokeLayerStackForStrokeType_(self, v6, v7, v8, v9);
}

- (id)strokeLayerStackForRow:(unsigned int)row
{
  v7 = objc_msgSend_p_strokeTypeForRow_(self, a2, *&row, v3, v4);

  return objc_msgSend_strokeLayerStackForStrokeType_(self, v6, v7, v8, v9);
}

- (void)enumerateLayerAndStackForGridRowRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v49 = 0;
  if (options)
  {
    if (options != 2)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTStrokeDefaultVendor enumerateLayerAndStackForGridRowRange:options:usingBlock:]", v10, v11);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeDefaultVendor.mm", v16, v17);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 109, 0, "only handling normal and reverse enumeration");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    }

    v24 = 0;
    v25 = 0;
    v26 = location + length;
    v27 = (location + length - 1);
    v28 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (v26 < v27)
      {
        break;
      }

      v32 = objc_msgSend_p_strokeTypeForRow_(self, v9, v27, v10, v11);
      if (v28 != v32)
      {
        v33 = objc_msgSend_strokeLayerForStrokeType_(self, v29, v32, v30, v31);

        v37 = objc_msgSend_strokeLayerStackForStrokeType_(self, v34, v32, v35, v36);

        v24 = v37;
        v25 = v33;
        v28 = v32;
      }

      blockCopy[2](blockCopy, v27, v25, v24, &v49);
      v27 = (v27 - 1);
    }

    while (v49 != 1);
LABEL_16:

    goto LABEL_17;
  }

  v38 = location + length;
  if (location + length > location)
  {
    v25 = 0;
    v24 = 0;
    v39 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v43 = objc_msgSend_p_strokeTypeForRow_(self, v9, location, v10, v11);
      if (v39 != v43)
      {
        v44 = objc_msgSend_strokeLayerForStrokeType_(self, v40, v43, v41, v42);

        v48 = objc_msgSend_strokeLayerStackForStrokeType_(self, v45, v43, v46, v47);

        v24 = v48;
        v25 = v44;
        v39 = v43;
      }

      blockCopy[2](blockCopy, location, v25, v24, &v49);
      location = (location + 1);
    }

    while (v38 > location && (v49 & 1) == 0);
    goto LABEL_16;
  }

LABEL_17:
}

- (void)enumerateLayerAndStackForGridColumnRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v49 = 0;
  if (options)
  {
    if (options != 2)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTStrokeDefaultVendor enumerateLayerAndStackForGridColumnRange:options:usingBlock:]", v10, v11);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeDefaultVendor.mm", v16, v17);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 154, 0, "only handling normal and reverse enumeration");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    }

    v24 = 0;
    v25 = 0;
    v26 = location + length;
    v27 = (location + length - 1);
    v28 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (v26 < v27)
      {
        break;
      }

      v32 = objc_msgSend_p_strokeTypeForColumn_(self, v9, v27, v10, v11);
      if (v28 != v32)
      {
        v33 = objc_msgSend_strokeLayerForStrokeType_(self, v29, v32, v30, v31);

        v37 = objc_msgSend_strokeLayerStackForStrokeType_(self, v34, v32, v35, v36);

        v24 = v37;
        v25 = v33;
        v28 = v32;
      }

      blockCopy[2](blockCopy, v27, v25, v24, &v49);
      v27 = (v27 - 1);
    }

    while (v49 != 1);
LABEL_16:

    goto LABEL_17;
  }

  v38 = location + length;
  if (location + length > location)
  {
    v25 = 0;
    v24 = 0;
    v39 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v43 = objc_msgSend_p_strokeTypeForColumn_(self, v9, location, v10, v11);
      if (v39 != v43)
      {
        v44 = objc_msgSend_strokeLayerForStrokeType_(self, v40, v43, v41, v42);

        v48 = objc_msgSend_strokeLayerStackForStrokeType_(self, v45, v43, v46, v47);

        v24 = v48;
        v25 = v44;
        v39 = v43;
      }

      blockCopy[2](blockCopy, location, v25, v24, &v49);
      location = (location + 1);
    }

    while (v38 > location && (v49 & 1) == 0);
    goto LABEL_16;
  }

LABEL_17:
}

- (id)strokeLayerStackForStrokeType:(unint64_t)type
{
  objc_opt_class();
  v9 = objc_msgSend_strokeTypeToLayerStackMap(self, v5, v6, v7, v8);
  objc_msgSend_pointerAtIndex_(v9, v10, type, v11, v12);
  v13 = TSUCheckedDynamicCast();

  v18 = v13;
  if (!v13)
  {
    v18 = objc_msgSend_defaultsOnlyStrokeLayerStack(TSTStrokeLayerStack, v14, v15, v16, v17);
    objc_msgSend_lockForWrite(v18, v19, v20, v21, v22);
    v26 = objc_msgSend_strokeLayerForStrokeType_(self, v23, type, v24, v25);
    objc_msgSend_replaceDefaultStrokeLayerWith_(v18, v27, v26, v28, v29);

    objc_msgSend_unlock(v18, v30, v31, v32, v33);
    v38 = objc_msgSend_strokeTypeToLayerStackMap(self, v34, v35, v36, v37);
    objc_msgSend_replacePointerAtIndex_withPointer_(v38, v39, type, v18, v40);
  }

  return v18;
}

- (BOOL)validateGeometry
{
  WeakRetained = objc_loadWeakRetained(&self->_tableProvider);
  v8 = objc_msgSend_numberOfHeaderColumns(WeakRetained, v4, v5, v6, v7);

  v9 = objc_loadWeakRetained(&self->_tableProvider);
  v14 = objc_msgSend_numberOfGrandTotalColumns(v9, v10, v11, v12, v13);

  v15 = objc_loadWeakRetained(&self->_tableProvider);
  v20 = objc_msgSend_numberOfColumns(v15, v16, v17, v18, v19);

  v21 = objc_loadWeakRetained(&self->_tableProvider);
  v26 = objc_msgSend_numberOfHeaderRows(v21, v22, v23, v24, v25);

  v27 = objc_loadWeakRetained(&self->_tableProvider);
  v32 = objc_msgSend_numberOfFooterOrGrandTotalRows(v27, v28, v29, v30, v31);

  v33 = objc_loadWeakRetained(&self->_tableProvider);
  v38 = objc_msgSend_numberOfRows(v33, v34, v35, v36, v37);

  v39 = objc_loadWeakRetained(&self->_tableProvider);
  v43 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(v39, v40, 0, v41, v42) + 1;

  if (self->_headerSideBorderColumnRange.location)
  {
    v44 = 0;
  }

  else
  {
    v44 = self->_headerSideBorderColumnRange.length == v43;
  }

  v45 = !v44;
  if (!v44)
  {
    self->_headerSideBorderColumnRange.location = 0;
    self->_headerSideBorderColumnRange.length = v43;
  }

  v46 = MEMORY[0x277D81490];
  if (!v8)
  {
    goto LABEL_17;
  }

  v47 = v8 - 1;
  v48 = objc_loadWeakRetained(&self->_tableProvider);
  v52 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(v48, v49, (v8 - 1), v50, v51);

  v53 = objc_loadWeakRetained(&self->_tableProvider);
  v57 = objc_msgSend_indexOfVisibleColumnAfterColumnAtIndex_(v53, v54, v47, v55, v56);

  if (v52 == 0x7FFF || v57 == 0x7FFF)
  {
    v46 = MEMORY[0x277D81490];
LABEL_17:
    v59 = *v46;
    v60 = v46[1];
    goto LABEL_18;
  }

  v58 = v52 + 1;
  if (v52 > v57)
  {
    v59 = v57 + 1;
  }

  else
  {
    v58 = v57 + 1;
    v59 = v52 + 1;
  }

  v60 = v58 - v59;
  v46 = MEMORY[0x277D81490];
LABEL_18:
  if (self->_headerColumnSeparatorColumnRange.location == v59 && self->_headerColumnSeparatorColumnRange.length == v60)
  {
    if (!v14)
    {
      goto LABEL_29;
    }
  }

  else
  {
    self->_headerColumnSeparatorColumnRange.location = v59;
    self->_headerColumnSeparatorColumnRange.length = v60;
    v45 = 1;
    if (!v14)
    {
LABEL_29:
      v73 = *v46;
      v74 = v46[1];
      goto LABEL_30;
    }
  }

  v61 = v20 + ~v14;
  v62 = objc_loadWeakRetained(&self->_tableProvider);
  v66 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(v62, v63, v61, v64, v65);

  v67 = objc_loadWeakRetained(&self->_tableProvider);
  v71 = objc_msgSend_indexOfVisibleColumnAfterColumnAtIndex_(v67, v68, v61, v69, v70);

  if (v66 == 0x7FFF || v71 == 0x7FFF)
  {
    goto LABEL_29;
  }

  v72 = v66 + 1;
  if (v66 > v71)
  {
    v73 = v71 + 1;
  }

  else
  {
    v72 = v71 + 1;
    v73 = v66 + 1;
  }

  v74 = v72 - v73;
LABEL_30:
  if (self->_footerColumnSeparatorColumnRange.location != v73 || self->_footerColumnSeparatorColumnRange.length != v74)
  {
    self->_footerColumnSeparatorColumnRange.location = v73;
    self->_footerColumnSeparatorColumnRange.length = v74;
    v45 = 1;
  }

  v75 = objc_loadWeakRetained(&self->_tableProvider);
  v79 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(v75, v76, (v20 - 1), v77, v78);
  if (v79 <= v20)
  {
    v80 = v20 + 1;
  }

  else
  {
    v80 = v79 + 1;
  }

  if (v79 <= v20)
  {
    v81 = v79 + 1;
  }

  else
  {
    v81 = v20 + 1;
  }

  v82 = v80 - v81;

  if (self->_bodySideBorderColumnRange.location != v81 || self->_bodySideBorderColumnRange.length != v82)
  {
    self->_bodySideBorderColumnRange.location = v81;
    self->_bodySideBorderColumnRange.length = v82;
    v45 = 1;
  }

  v83 = objc_loadWeakRetained(&self->_tableProvider);
  v87 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(v83, v84, 0, v85, v86) + 1;

  if (self->_topBorderRowRange.location || self->_topBorderRowRange.length != v87)
  {
    self->_topBorderRowRange.location = 0;
    self->_topBorderRowRange.length = v87;
    v45 = 1;
    if (!v26)
    {
LABEL_56:
      v99 = *v46;
      v101 = v46[1];
      goto LABEL_57;
    }
  }

  else if (!v26)
  {
    goto LABEL_56;
  }

  v88 = (v26 - 1);
  v89 = objc_loadWeakRetained(&self->_tableProvider);
  v93 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v89, v90, v88, v91, v92);

  v94 = objc_loadWeakRetained(&self->_tableProvider);
  v98 = objc_msgSend_indexOfVisibleRowAfterRowAtIndex_(v94, v95, v88, v96, v97);

  if (v93 == 0x7FFFFFFF || v98 == 0x7FFFFFFF)
  {
    goto LABEL_56;
  }

  LODWORD(v99) = v93 + 1;
  if (v93 + 1 <= (v98 + 1))
  {
    v100 = (v98 + 1);
  }

  else
  {
    v100 = v99;
  }

  if (v93 + 1 >= (v98 + 1))
  {
    v99 = (v98 + 1);
  }

  else
  {
    v99 = v99;
  }

  v101 = v100 - v99;
LABEL_57:
  if (self->_headerRowSeparatorRowRange.location == v99 && self->_headerRowSeparatorRowRange.length == v101)
  {
    if (!v32)
    {
      goto LABEL_71;
    }
  }

  else
  {
    self->_headerRowSeparatorRowRange.location = v99;
    self->_headerRowSeparatorRowRange.length = v101;
    v45 = 1;
    if (!v32)
    {
LABEL_71:
      v113 = *v46;
      v115 = v46[1];
      goto LABEL_72;
    }
  }

  v102 = ~v32;
  v103 = objc_loadWeakRetained(&self->_tableProvider);
  v107 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v103, v104, (v38 + ~v32), v105, v106);

  v108 = objc_loadWeakRetained(&self->_tableProvider);
  v112 = objc_msgSend_indexOfVisibleRowAfterRowAtIndex_(v108, v109, (v38 + v102), v110, v111);

  if (v107 == 0x7FFFFFFF || v112 == 0x7FFFFFFF)
  {
    goto LABEL_71;
  }

  LODWORD(v113) = v107 + 1;
  if (v107 + 1 <= (v112 + 1))
  {
    v114 = (v112 + 1);
  }

  else
  {
    v114 = v113;
  }

  if (v107 + 1 >= (v112 + 1))
  {
    v113 = (v112 + 1);
  }

  else
  {
    v113 = v113;
  }

  v115 = v114 - v113;
LABEL_72:
  if (self->_footerRowSeparatorRowRange.location != v113 || self->_footerRowSeparatorRowRange.length != v115)
  {
    self->_footerRowSeparatorRowRange.location = v113;
    self->_footerRowSeparatorRowRange.length = v115;
    v45 = 1;
  }

  v116 = objc_loadWeakRetained(&self->_tableProvider);
  v120 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v116, v117, (v38 - 1), v118, v119) + 1;
  if (v120 <= v38 + 1)
  {
    v121 = (v38 + 1);
  }

  else
  {
    v121 = v120;
  }

  if (v120 >= v38 + 1)
  {
    v122 = (v38 + 1);
  }

  else
  {
    v122 = v120;
  }

  v123 = v121 - v122;

  if (self->_bottomBorderRowRange.location != v122 || self->_bottomBorderRowRange.length != v123)
  {
    self->_bottomBorderRowRange.location = v122;
    self->_bottomBorderRowRange.length = v123;
    return 1;
  }

  return v45;
}

- (int)validateChangeDescriptors:(id)descriptors
{
  v239 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  v8 = objc_msgSend_validateGeometry(self, v4, v5, v6, v7);
  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  obj = descriptorsCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v234, v238, 16);
  v216 = v8;
  v15 = 0;
  if (v14)
  {
    v16 = *v235;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v235 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = objc_msgSend_changeDescriptor(*(*(&v234 + 1) + 8 * i), v10, v11, v12, v13);
        if (v18 <= 0x2F)
        {
          if (((1 << v18) & 0x800000006000) != 0)
          {
            v15 = 1;
          }

          else if (((1 << v18) & 0x10000400) != 0)
          {
            WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
            v24 = objc_msgSend_numberOfCategoryLevels(WeakRetained, v20, v21, v22, v23) != 0;

            v15 |= v24;
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v234, v238, 16);
    }

    while (v14);
  }

  if (v216 & 1 | ((objc_msgSend_isValid(self, v25, v26, v27, v28) & 1) == 0) | v15 & 1)
  {
    for (j = 0; j != 52; ++j)
    {
      objc_opt_class();
      v34 = objc_msgSend_strokeTypeToLayerMap(self, v30, v31, v32, v33);
      objc_msgSend_pointerAtIndex_(v34, v35, j, v36, v37);
      v38 = TSUCheckedDynamicCast();

      if (!v38)
      {
        v43 = objc_msgSend_strokeLayer(TSTMutableStrokeLayer, v39, v40, v41, v42);
        v48 = objc_msgSend_strokeTypeToLayerMap(self, v44, v45, v46, v47);
        objc_msgSend_replacePointerAtIndex_withPointer_(v48, v49, j, v43, v50);

        v55 = objc_msgSend_strokeTypeToLayerStackMap(self, v51, v52, v53, v54);
        objc_msgSend_replacePointerAtIndex_withPointer_(v55, v56, j, 0, v57);

        v38 = v43;
      }

      if (j > 0x14)
      {
        objc_msgSend_p_updateStrokeLayer_forRowStrokeType_(self, v39, v38, j, v42);
      }

      else
      {
        objc_msgSend_p_updateStrokeLayer_forColumnStrokeType_(self, v39, v38, j, v42);
      }
    }

    objc_msgSend_setIsValid_(self, v58, 1, v59, v60);
    v65 = objc_msgSend_tableInfo(self, v61, v62, v63, v64);
    isCategorized = objc_msgSend_isCategorized(v65, v66, v67, v68, v69);

    if (isCategorized)
    {
      objc_opt_class();
      v79 = objc_msgSend_strokeTypeToLayerMap(self, v75, v76, v77, v78);
      objc_msgSend_pointerAtIndex_(v79, v80, 1, v81, v82);
      v207 = TSUCheckedDynamicCast();

      objc_opt_class();
      v87 = objc_msgSend_strokeTypeToLayerMap(self, v83, v84, v85, v86);
      objc_msgSend_pointerAtIndex_(v87, v88, 2, v89, v90);
      v205 = TSUCheckedDynamicCast();

      objc_opt_class();
      v95 = objc_msgSend_strokeTypeToLayerMap(self, v91, v92, v93, v94);
      objc_msgSend_pointerAtIndex_(v95, v96, 5, v97, v98);
      v203 = TSUCheckedDynamicCast();

      v103 = objc_msgSend_tableInfo(self, v99, v100, v101, v102);
      v108 = objc_msgSend_numberOfCategoryLevels(v103, v104, v105, v106, v107);

      if (v108)
      {
        v209 = 0;
        v210 = 0;
        v113 = 0;
        v114 = 0;
        v211 = 0;
        v212 = 0;
        v214 = 0;
        v217 = 0;
        v213 = 0;
        v115 = 0;
        v116 = 1;
        while (1)
        {
          v117 = objc_msgSend_tableInfo(self, v109, v110, v111, v112);
          v121 = objc_msgSend_indexesForSummaryRowsAtGroupLevel_(v117, v118, v116, v119, v120);

          v126 = objc_msgSend_tableInfo(self, v122, v123, v124, v125);
          v130 = objc_msgSend_indexesForLabelRowsAtGroupLevel_(v126, v127, v116, v128, v129);

          if (objc_msgSend_count(v130, v131, v132, v133, v134))
          {
            v138 = objc_msgSend_tsu_indexSetByAddingIndexes_(v121, v135, v130, v136, v137);

            v121 = v138;
          }

          v139 = v121;
          if (v116 > 2u)
          {
            if (v116 == 3)
            {

              v144 = objc_msgSend_strokeProvider(self, v178, v179, v180, v181);
              v186 = objc_msgSend_categoryLevel3InteriorStroke(v144, v182, v183, v184, v185);
              v150 = v114;
              v212 = v139;
              v114 = v186;
              goto LABEL_36;
            }

            if (v116 != 4)
            {
              goto LABEL_33;
            }

            v144 = objc_msgSend_strokeProvider(self, v151, v152, v153, v154);
            v159 = objc_msgSend_categoryLevel4InteriorStroke(v144, v155, v156, v157, v158);
            v150 = v113;
            v214 = v139;
            v113 = v159;
          }

          else
          {
            if (v116 == 1)
            {

              v144 = objc_msgSend_strokeProvider(self, v169, v170, v171, v172);
              v177 = objc_msgSend_categoryLevel1InteriorStroke(v144, v173, v174, v175, v176);
              v150 = v211;
              v115 = v139;
              v211 = v177;
              goto LABEL_36;
            }

            if (v116 != 2)
            {
LABEL_33:

              v144 = objc_msgSend_strokeProvider(self, v160, v161, v162, v163);
              v168 = objc_msgSend_categoryLevel5InteriorStroke(v144, v164, v165, v166, v167);
              v150 = v210;
              v217 = v139;
              v210 = v168;
              goto LABEL_36;
            }

            v144 = objc_msgSend_strokeProvider(self, v140, v141, v142, v143);
            v149 = objc_msgSend_categoryLevel2InteriorStroke(v144, v145, v146, v147, v148);
            v150 = v209;
            v213 = v139;
            v209 = v149;
          }

LABEL_36:

          if (++v116 > v108)
          {
            goto LABEL_41;
          }
        }
      }

      v115 = 0;
      v212 = 0;
      v213 = 0;
      v214 = 0;
      v217 = 0;
      v210 = 0;
      v211 = 0;
      v209 = 0;
      v114 = 0;
      v113 = 0;
LABEL_41:
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2212FA10C;
      block[3] = &unk_278462D50;
      v221 = v207;
      v222 = v211;
      v223 = v115;
      v224 = v209;
      v225 = v213;
      v226 = v114;
      v227 = v212;
      v228 = v113;
      v229 = v214;
      v230 = v210;
      v231 = v217;
      v232 = v205;
      v233 = v203;
      v204 = v203;
      v202 = v205;
      v206 = v217;
      v218 = v210;
      v193 = v214;
      v215 = v113;
      v194 = v212;
      v195 = v114;
      v196 = v213;
      v197 = v209;
      v198 = v115;
      v199 = v211;
      v188 = v207;
      dispatch_apply(3uLL, 0, block);
    }

    else
    {
      v188 = objc_msgSend_tableInfo(self, v71, v72, v73, v74);
      objc_msgSend_isAPivotTable(v188, v189, v190, v191, v192);
    }

    v187 = 2;
  }

  else
  {
    v187 = 0;
  }

  if (v15)
  {
    v200 = v187 | 8;
  }

  else
  {
    v200 = v187;
  }

  return v200;
}

- (unint64_t)p_strokeTypeForColumn:(unsigned int)column
{
  v7 = objc_msgSend_tableInfo(self, a2, *&column, v3, v4);
  IsValid = objc_msgSend_p_headerColumnSeparatorColumnRangeIsValid(self, v8, v9, v10, v11);
  v18 = self->_footerColumnSeparatorColumnRange.location != *MEMORY[0x277D81490] || self->_footerColumnSeparatorColumnRange.length != *(MEMORY[0x277D81490] + 8);
  if (objc_msgSend_isAPivotTable(v7, v12, v13, v14, v15))
  {
    v23 = objc_msgSend_isEmptyPivot(v7, v19, v20, v21, v22) ^ 1;
  }

  else
  {
    v23 = 0;
  }

  location = self->_headerSideBorderColumnRange.location;
  v25 = column >= location;
  v26 = column - location;
  if (v25 && v26 < self->_headerSideBorderColumnRange.length)
  {
    v27 = 0;
    goto LABEL_18;
  }

  v28 = self->_bodySideBorderColumnRange.location;
  v25 = column >= v28;
  v29 = column - v28;
  if (v25 && v29 < self->_bodySideBorderColumnRange.length)
  {
    v27 = 20;
    goto LABEL_18;
  }

  if (IsValid)
  {
    v31 = self->_headerColumnSeparatorColumnRange.location;
    v25 = column >= v31;
    v32 = column - v31;
    if (!v25)
    {
      if (v23)
      {
        v27 = 3;
      }

      else
      {
        v27 = 1;
      }

      goto LABEL_18;
    }

    if (v32 < self->_headerColumnSeparatorColumnRange.length)
    {
      if (v23)
      {
        v27 = 4;
      }

      else
      {
        v27 = 2;
      }

      goto LABEL_18;
    }
  }

  if (v18)
  {
    v34 = self->_footerColumnSeparatorColumnRange.location;
    length = self->_footerColumnSeparatorColumnRange.length;
    if (v34 + length - 1 < column)
    {
      if ((v23 & 1) == 0)
      {
        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTStrokeDefaultVendor p_strokeTypeForColumn:]", v21, v22);
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeDefaultVendor.mm", v38, v39);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v41, v36, v40, 523, 0, "expected a pivot table for footer columns");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
      }

      v27 = 19;
      goto LABEL_18;
    }

    v25 = column >= v34;
    v46 = column - v34;
    if (v25 && v46 < length)
    {
      if ((v23 & 1) == 0)
      {
        v47 = MEMORY[0x277D81150];
        v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTStrokeDefaultVendor p_strokeTypeForColumn:]", v21, v22);
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeDefaultVendor.mm", v50, v51);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v53, v48, v52, 527, 0, "expected a pivot table for footer columns");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
      }

      v27 = 13;
      goto LABEL_18;
    }
  }

  if (!v23)
  {
    v27 = 5;
    goto LABEL_18;
  }

  v58 = objc_msgSend_groupLevelAtSummaryColumn_(v7, v19, column, v21, v22);
  v62 = objc_msgSend_groupLevelAtSummaryColumn_(v7, v59, (column - 1), v60, v61);
  if (v58 >= v62)
  {
    v67 = v62;
  }

  else
  {
    v67 = v58;
  }

  v27 = 6;
  if (v67 <= 2)
  {
    if (v67 == 1)
    {
      v68 = v62 == 255;
      v69 = 14;
      v70 = 8;
    }

    else
    {
      if (v67 != 2)
      {
        goto LABEL_58;
      }

      v68 = v62 == 255;
      v69 = 15;
      v70 = 9;
    }
  }

  else
  {
    switch(v67)
    {
      case 3:
        v68 = v62 == 255;
        v69 = 16;
        v70 = 10;
        break;
      case 4:
        v68 = v62 == 255;
        v69 = 17;
        v70 = 11;
        break;
      case 5:
        v68 = v62 == 255;
        v69 = 18;
        v70 = 12;
        break;
      default:
        goto LABEL_58;
    }
  }

  if (v68)
  {
    v27 = v70;
  }

  else
  {
    v27 = v69;
  }

LABEL_58:
  if (objc_msgSend_columnAggregateGroupSize(v7, v63, v64, v65, v66) >= 2)
  {
    if (v67 == 255)
    {
      v84 = objc_msgSend_maxColumnLevel(v7, v71, v72, v73, v74);
      v75 = objc_msgSend_indexesForLeadingColumnsAtGroupLevel_(v7, v85, v84, v86, v87);
      v91 = objc_msgSend_indexLessThanOrEqualToIndex_(v75, v88, column, v89, v90);
      if (!((column - v91) % objc_msgSend_columnAggregateGroupSize(v7, v92, v93, v94, v95)))
      {
        v27 = 7;
      }
    }

    else
    {
      v75 = objc_msgSend_indexesForLeadingSummaryColumnsAtGroupLevel_(v7, v71, v67, v73, v74);
      v79 = objc_msgSend_indexLessThanOrEqualToIndex_(v75, v76, column, v77, v78);
      if ((column - v79) % objc_msgSend_columnAggregateGroupSize(v7, v80, v81, v82, v83))
      {
        v27 = 6;
      }
    }
  }

LABEL_18:

  return v27;
}

- (unint64_t)p_strokeTypeForRow:(unsigned int)row
{
  v5 = *&row;
  v7 = objc_msgSend_tableInfo(self, a2, *&row, v3, v4);
  IsValid = objc_msgSend_p_headerRowSeparatorRowRangeIsValid(self, v8, v9, v10, v11);
  v18 = self->_footerRowSeparatorRowRange.location != *MEMORY[0x277D81490] || self->_footerRowSeparatorRowRange.length != *(MEMORY[0x277D81490] + 8);
  isCategorized = objc_msgSend_isCategorized(v7, v12, v13, v14, v15);
  if (objc_msgSend_isAPivotTable(v7, v20, v21, v22, v23))
  {
    v28 = objc_msgSend_isEmptyPivot(v7, v24, v25, v26, v27) ^ 1;
  }

  else
  {
    v28 = 0;
  }

  location = self->_topBorderRowRange.location;
  v30 = v5 >= location;
  v31 = v5 - location;
  if (v30 && v31 < self->_topBorderRowRange.length)
  {
    v32 = 21;
    goto LABEL_18;
  }

  v33 = self->_bottomBorderRowRange.location;
  v30 = v5 >= v33;
  v34 = v5 - v33;
  if (v30 && v34 < self->_bottomBorderRowRange.length)
  {
    v32 = 51;
    goto LABEL_18;
  }

  if (IsValid)
  {
    v36 = self->_headerRowSeparatorRowRange.location;
    v30 = v5 >= v36;
    v37 = v5 - v36;
    if (!v30)
    {
      if (!v28)
      {
        v32 = 22;
        goto LABEL_18;
      }

      if (!objc_msgSend_numberOfRowLevels(v7, v24, v25, v26, v27))
      {
        v32 = 23;
        goto LABEL_18;
      }

      v38 = self->_headerRowSeparatorRowRange.location - 1 == v5;
      v39 = 23;
      goto LABEL_63;
    }

    if (v37 < self->_headerRowSeparatorRowRange.length)
    {
      if (isCategorized)
      {
        v32 = 26;
      }

      else
      {
        v32 = 25;
      }

      goto LABEL_18;
    }
  }

  if (v18)
  {
    v41 = self->_footerRowSeparatorRowRange.location;
    length = self->_footerRowSeparatorRowRange.length;
    if (v41 + length - 1 < v5)
    {
      v32 = 50;
      goto LABEL_18;
    }

    v30 = v5 >= v41;
    v42 = v5 - v41;
    if (v30 && v42 < length)
    {
      v32 = 49;
      goto LABEL_18;
    }
  }

  if (isCategorized)
  {
    v43 = objc_msgSend_groupLevelAtRow_(v7, v24, v5, v26, v27);
    v47 = objc_msgSend_groupLevelAtRow_(v7, v44, (v5 - 1), v45, v46);
    v32 = 41;
    if (v43 <= 3)
    {
      switch(v43)
      {
        case 1:
          v38 = v47 == 1;
          v39 = 26;
          break;
        case 2:
          v38 = v47 == 2;
          v39 = 29;
          break;
        case 3:
          v38 = v47 == 3;
          v39 = 32;
          break;
        default:
          goto LABEL_18;
      }

      goto LABEL_63;
    }

    switch(v43)
    {
      case 4:
        v38 = v47 == 4;
        v39 = 35;
        break;
      case 5:
        v38 = v47 == 5;
        v39 = 38;
        break;
      case 255:
        if ((v47 - 1) < 5)
        {
          v57 = 3 * (v47 - 1) + 28;
LABEL_51:
          v32 = v57;
          goto LABEL_18;
        }

LABEL_52:
        v32 = 41;
        goto LABEL_18;
      default:
        goto LABEL_18;
    }

LABEL_63:
    if (v38)
    {
      v32 = v39 + 1;
    }

    else
    {
      v32 = v39;
    }

    goto LABEL_18;
  }

  if (!v28)
  {
    goto LABEL_52;
  }

  v48 = objc_msgSend_groupLevelAtRow_(v7, v24, (v5 - 1), v26, v27);
  if (objc_msgSend_rowAggregateGroupSize(v7, v49, v50, v51, v52) == 1)
  {
    if ((v48 - 1) >= 5)
    {
      v32 = 42;
      goto LABEL_18;
    }

    v57 = v48 + 43;
    goto LABEL_51;
  }

  if (v48 <= 3)
  {
    switch(v48)
    {
      case 1:
        v58 = 44;
        goto LABEL_79;
      case 2:
        v58 = 45;
        goto LABEL_79;
      case 3:
        v58 = 46;
LABEL_79:
        v72 = objc_msgSend_indexesForLeadingSummaryRowsAtGroupLevel_(v7, v53, v48, v55, v56);
        v76 = objc_msgSend_indexLessThanOrEqualToIndex_(v72, v73, (v5 - 1), v74, v75);
        if (v5 - v76 == objc_msgSend_rowAggregateGroupSize(v7, v77, v78, v79, v80))
        {
          v32 = v58;
        }

        else
        {
          v32 = 43;
        }

        goto LABEL_18;
    }

LABEL_76:
    v58 = 42;
    goto LABEL_79;
  }

  if (v48 == 4)
  {
    v58 = 47;
    goto LABEL_79;
  }

  if (v48 == 5)
  {
    v58 = 48;
    goto LABEL_79;
  }

  if (v48 != 255)
  {
    goto LABEL_76;
  }

  v59 = objc_msgSend_maxRowLevel(v7, v53, v54, v55, v56);
  v63 = objc_msgSend_indexesForLeadingRowsAtGroupLevel_(v7, v60, v59, v61, v62);
  v67 = objc_msgSend_indexLessThanOrEqualToIndex_(v63, v64, v5, v65, v66);
  if ((v5 - v67) % objc_msgSend_rowAggregateGroupSize(v7, v68, v69, v70, v71))
  {
    v32 = 43;
  }

  else
  {
    v32 = 42;
  }

LABEL_18:
  return v32;
}

- (void)p_updateStrokeLayer:(id)layer forColumnStrokeType:(unint64_t)type
{
  layerCopy = layer;
  v10 = objc_msgSend_tableInfo(self, v6, v7, v8, v9);
  WeakRetained = objc_loadWeakRetained(&self->_tableProvider);
  v16 = objc_msgSend_numberOfHeaderColumns(WeakRetained, v12, v13, v14, v15);

  v17 = objc_loadWeakRetained(&self->_tableProvider);
  v22 = objc_msgSend_numberOfHeaderRows(v17, v18, v19, v20, v21);

  v23 = objc_loadWeakRetained(&self->_tableProvider);
  v28 = objc_msgSend_numberOfFooterOrGrandTotalRows(v23, v24, v25, v26, v27);

  v29 = objc_loadWeakRetained(&self->_tableProvider);
  v34 = objc_msgSend_numberOfRows(v29, v30, v31, v32, v33);

  if (objc_msgSend_hasHeaderRowForAggregateNames(v10, v35, v36, v37, v38))
  {
    v43 = objc_msgSend_columnAggregateGroupSize(v10, v39, v40, v41, v42) < 2;
  }

  else
  {
    v43 = 0;
  }

  v44 = 0x7FFFFFFFFFFFFFFFLL;
  if (v22)
  {
    v45 = 0;
  }

  else
  {
    v45 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v44 = v34 - v28;
  }

  v1012 = v44;
  objc_msgSend_invalidate(layerCopy, v39, v40, v41, v42);
  v50 = v22;
  v1011 = v28;
  v51 = v34 - (v28 + v22);
  switch(type)
  {
    case 0uLL:
      v52 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
      v57 = objc_msgSend_headerRowBorderStroke(v52, v53, v54, v55, v56);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v58, v57, v45, v50, 1);

      v67 = objc_msgSend_strokeProvider(self, v59, v60, v61, v62);
      if (v16)
      {
        objc_msgSend_headerColumnBorderStroke(v67, v63, v64, v65, v66);
      }

      else
      {
        objc_msgSend_defaultVerticalBorderStroke(v67, v63, v64, v65, v66);
      }
      v68 = ;
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v69, v68, v50, v51, 1);

      v164 = objc_msgSend_strokeProvider(self, v1002, v1003, v1004, v1005);
      v169 = objc_msgSend_footerRowBorderStroke(v164, v1006, v1007, v1008, v1009);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v1010, v169, v1012, v1011, 1);
      goto LABEL_200;
    case 1uLL:
      v348 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
      v353 = objc_msgSend_headerRowBodyColumnStroke(v348, v349, v350, v351, v352);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v354, v353, v45, v50, 1);

      v359 = objc_msgSend_strokeProvider(self, v355, v356, v357, v358);
      v364 = objc_msgSend_headerColumnBodyColumnStroke(v359, v360, v361, v362, v363);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v365, v364, v50, v51, 1);

      v164 = objc_msgSend_strokeProvider(self, v366, v367, v368, v369);
      v169 = objc_msgSend_footerRowBodyColumnStroke(v164, v370, v371, v372, v373);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v374, v169, v1012, v1011, 1);
      goto LABEL_200;
    case 2uLL:
      v235 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
      v240 = objc_msgSend_headerRowBodyColumnStroke(v235, v236, v237, v238, v239);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v241, v240, v45, v50, 1);

      v246 = objc_msgSend_strokeProvider(self, v242, v243, v244, v245);
      v251 = objc_msgSend_headerColumnSeparatorStroke(v246, v247, v248, v249, v250);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v252, v251, v50, v51, 1);

      v164 = objc_msgSend_strokeProvider(self, v253, v254, v255, v256);
      v169 = objc_msgSend_footerRowBodyColumnStroke(v164, v257, v258, v259, v260);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v261, v169, v1012, v1011, 1);
      goto LABEL_200;
    case 3uLL:
      v294 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
      v299 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v294, v295, v296, v297, v298);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v300, v299, v45, v50, 1);

      v305 = objc_msgSend_strokeProvider(self, v301, v302, v303, v304);
      v310 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v305, v306, v307, v308, v309);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v311, v310, v50, v51, 1);

      v164 = objc_msgSend_strokeProvider(self, v312, v313, v314, v315);
      v169 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v164, v316, v317, v318, v319);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v320, v169, v1012, v1011, 1);
      goto LABEL_200;
    case 4uLL:
      v142 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
      v147 = objc_msgSend_headerRowPivotGroupVerticalStroke(v142, v143, v144, v145, v146);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v148, v147, v45, v50, 1);

      v153 = objc_msgSend_strokeProvider(self, v149, v150, v151, v152);
      v158 = objc_msgSend_headerColumnPivotSeparatorStroke(v153, v154, v155, v156, v157);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v159, v158, v50, v51, 1);

      v164 = objc_msgSend_strokeProvider(self, v160, v161, v162, v163);
      v169 = objc_msgSend_footerRowPivotGroupVerticalStroke(v164, v165, v166, v167, v168);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v170, v169, v1012, v1011, 1);
      goto LABEL_200;
    case 5uLL:
      v420 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
      v425 = objc_msgSend_headerRowBodyColumnStroke(v420, v421, v422, v423, v424);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v426, v425, v45, v50, 1);

      v431 = objc_msgSend_strokeProvider(self, v427, v428, v429, v430);
      v436 = objc_msgSend_bodyColumnStroke(v431, v432, v433, v434, v435);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v437, v436, v50, v51, 1);

      v164 = objc_msgSend_strokeProvider(self, v438, v439, v440, v441);
      v169 = objc_msgSend_footerRowBodyColumnStroke(v164, v442, v443, v444, v445);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v446, v169, v1012, v1011, 1);
      goto LABEL_200;
    case 6uLL:
      v485 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
      v491 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v485, v486, v487, v488, v489);
      if (v43)
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v490, v491, 0, v22 - 2, 1);

        v496 = objc_msgSend_strokeProvider(self, v492, v493, v494, v495);
        v501 = objc_msgSend_headerRowBodyColumnStroke(v496, v497, v498, v499, v500);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v502, v501, v22 - 2, 1, 1);

        v507 = objc_msgSend_strokeProvider(self, v503, v504, v505, v506);
        objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v507, v508, v509, v510, v511);
      }

      else
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v490, v491, 0, v22 - 1, 1);

        v507 = objc_msgSend_strokeProvider(self, v807, v808, v809, v810);
        objc_msgSend_headerRowBodyColumnStroke(v507, v811, v812, v813, v814);
      }
      v512 = ;
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v513, v512, v22 - 1, 1, 1);

      v819 = objc_msgSend_strokeProvider(self, v815, v816, v817, v818);
      v824 = objc_msgSend_bodyColumnStroke(v819, v820, v821, v822, v823);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v825, v824, v50, v51, 1);

      v164 = objc_msgSend_strokeProvider(self, v826, v827, v828, v829);
      v169 = objc_msgSend_footerRowBodyColumnStroke(v164, v830, v831, v832, v833);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v834, v169, v1012, v1011, 1);
      goto LABEL_200;
    case 7uLL:
      v321 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
      v326 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v321, v322, v323, v324, v325);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v327, v326, 0, v22 - 2, 1);

      v332 = objc_msgSend_strokeProvider(self, v328, v329, v330, v331);
      v338 = objc_msgSend_headerRowPivotGroupVerticalStroke(v332, v333, v334, v335, v336);
      if (v43)
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v337, v338, v22 - 2, 1, 1);

        v332 = objc_msgSend_strokeProvider(self, v339, v340, v341, v342);
        v338 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v332, v343, v344, v345, v346);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v347, v338, v22 - 1, 1, 1);
      }

      else
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v337, v338, v22 - 2, 2, 1);
      }

      v956 = objc_msgSend_strokeProvider(self, v952, v953, v954, v955);
      v961 = objc_msgSend_bodyPivotEmphasisVerticalStroke(v956, v957, v958, v959, v960);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v962, v961, v50, v51, 1);

      v164 = objc_msgSend_strokeProvider(self, v963, v964, v965, v966);
      v169 = objc_msgSend_footerRowPivotGroupVerticalStroke(v164, v967, v968, v969, v970);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v971, v169, v1012, v1011, 1);
      goto LABEL_200;
    case 8uLL:
      objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
      if (v43)
        v575 = {;
        v580 = objc_msgSend_headerRowPivotGroupVerticalStroke(v575, v576, v577, v578, v579);
        v581 = v22 - 1;
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v582, v580, 0, v581, 1);

        v587 = objc_msgSend_strokeProvider(self, v583, v584, v585, v586);
        v592 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v587, v588, v589, v590, v591);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v593, v592, v581, 1, 1);
      }

      else
        v587 = {;
        v592 = objc_msgSend_headerRowPivotGroupVerticalStroke(v587, v895, v896, v897, v898);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v899, v592, v45, v50, 1);
      }

      if (objc_msgSend_columnAggregateGroupSize(v10, v900, v901, v902, v903) == 1)
      {
        goto LABEL_188;
      }

      goto LABEL_197;
    case 9uLL:
      if (v43)
      {
        v203 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
        v208 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v203, v204, v205, v206, v207);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v209, v208, 0, 1, 1);

        v214 = objc_msgSend_strokeProvider(self, v210, v211, v212, v213);
        v220 = objc_msgSend_headerRowPivotGroupVerticalStroke(v214, v215, v216, v217, v218);
        v221 = v22 - 1;
        v222 = 0x7FFFFFFFFFFFFFFFLL;
        if (v22 == 1)
        {
          v222 = 0;
        }

        if (v221 > 1)
        {
          v223 = 1;
        }

        else
        {
          v223 = v222;
        }

        if (v221 <= 1)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v219, v220, v223, v221 ^ 1, 1);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v219, v220, v223, v221 - 1, 1);
        }

        v228 = objc_msgSend_strokeProvider(self, v224, v225, v226, v227);
        v233 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v228, v229, v230, v231, v232);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v234, v233, v22 - 1, 1, 1);
      }

      else
      {
        v729 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
        v734 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v729, v730, v731, v732, v733);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v735, v734, 0, 1, 1);

        v228 = objc_msgSend_strokeProvider(self, v736, v737, v738, v739);
        v233 = objc_msgSend_headerRowPivotGroupVerticalStroke(v228, v740, v741, v742, v743);
        v745 = 0x7FFFFFFFFFFFFFFFLL;
        if (!v22)
        {
          v745 = 0;
        }

        if (v22 > 1)
        {
          v746 = 1;
        }

        else
        {
          v746 = v745;
        }

        if (v22 <= 1)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v744, v233, v746, v22 ^ 1, 1);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v744, v233, v746, v22 - 1, 1);
        }
      }

      if (objc_msgSend_columnAggregateGroupSize(v10, v747, v748, v749, v750) == 1)
      {
        goto LABEL_188;
      }

      goto LABEL_197;
    case 0xAuLL:
      if (v43)
      {
        v543 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
        v548 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v543, v544, v545, v546, v547);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v549, v548, 0, 2, 1);

        v554 = objc_msgSend_strokeProvider(self, v550, v551, v552, v553);
        v560 = objc_msgSend_headerRowPivotGroupVerticalStroke(v554, v555, v556, v557, v558);
        v561 = v22 - 1;
        v562 = 0x7FFFFFFFFFFFFFFFLL;
        if (v22 != 3)
        {
          v562 = v22 - 1;
        }

        if (v561 <= 2)
        {
          v563 = v562;
        }

        else
        {
          v563 = 2;
        }

        if (v561 <= 2)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v559, v560, v563, 2 - v561, 1);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v559, v560, v563, v561 - 2, 1);
        }

        v568 = objc_msgSend_strokeProvider(self, v564, v565, v566, v567);
        v573 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v568, v569, v570, v571, v572);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v574, v573, v22 - 1, 1, 1);
      }

      else
      {
        v873 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
        v878 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v873, v874, v875, v876, v877);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v879, v878, 0, 2, 1);

        v568 = objc_msgSend_strokeProvider(self, v880, v881, v882, v883);
        v573 = objc_msgSend_headerRowPivotGroupVerticalStroke(v568, v884, v885, v886, v887);
        v889 = 0x7FFFFFFFFFFFFFFFLL;
        if (v22 != 2)
        {
          v889 = v22;
        }

        if (v22 <= 2)
        {
          v890 = v889;
        }

        else
        {
          v890 = 2;
        }

        if (v22 <= 2)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v888, v573, v890, 2 - v22, 1);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v888, v573, v890, v22 - 2, 1);
        }
      }

      if (objc_msgSend_columnAggregateGroupSize(v10, v891, v892, v893, v894) == 1)
      {
        goto LABEL_188;
      }

LABEL_197:
      v987 = objc_msgSend_strokeProvider(self, v688, v689, v690, v691);
      v992 = objc_msgSend_bodyPivotEmphasisVerticalStroke(v987, v988, v989, v990, v991);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v993, v992, v50, v51, 1);

      v164 = objc_msgSend_strokeProvider(self, v994, v995, v996, v997);
      objc_msgSend_footerRowPivotGroupVerticalStroke(v164, v998, v999, v1000, v1001);
      goto LABEL_189;
    case 0xBuLL:
      if (v43)
      {
        v110 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
        v115 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v110, v111, v112, v113, v114);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v116, v115, 0, 3, 1);

        v121 = objc_msgSend_strokeProvider(self, v117, v118, v119, v120);
        v127 = objc_msgSend_headerRowPivotGroupVerticalStroke(v121, v122, v123, v124, v125);
        v128 = v22 - 1;
        v129 = 0x7FFFFFFFFFFFFFFFLL;
        if (v22 != 4)
        {
          v129 = v22 - 1;
        }

        if (v128 <= 3)
        {
          v130 = v129;
        }

        else
        {
          v130 = 3;
        }

        if (v128 <= 3)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v126, v127, v130, 3 - v128, 1);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v126, v127, v130, v128 - 3, 1);
        }

        v135 = objc_msgSend_strokeProvider(self, v131, v132, v133, v134);
        v140 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v135, v136, v137, v138, v139);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v141, v140, v22 - 1, 1, 1);
      }

      else
      {
        v666 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
        v671 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v666, v667, v668, v669, v670);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v672, v671, 0, 3, 1);

        v135 = objc_msgSend_strokeProvider(self, v673, v674, v675, v676);
        v140 = objc_msgSend_headerRowPivotGroupVerticalStroke(v135, v677, v678, v679, v680);
        v682 = 0x7FFFFFFFFFFFFFFFLL;
        if (v22 != 3)
        {
          v682 = v22;
        }

        if (v22 <= 3)
        {
          v683 = v682;
        }

        else
        {
          v683 = 3;
        }

        if (v22 <= 3)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v681, v140, v683, 3 - v22, 1);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v681, v140, v683, v22 - 3, 1);
        }
      }

      if (objc_msgSend_columnAggregateGroupSize(v10, v684, v685, v686, v687) != 1)
      {
        goto LABEL_195;
      }

LABEL_188:
      v904 = objc_msgSend_strokeProvider(self, v688, v689, v690, v691);
      v909 = objc_msgSend_bodyColumnStroke(v904, v905, v906, v907, v908);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v910, v909, v50, v51, 1);

      v164 = objc_msgSend_strokeProvider(self, v911, v912, v913, v914);
      objc_msgSend_footerRowBodyColumnStroke(v164, v915, v916, v917, v918);
      goto LABEL_189;
    case 0xCuLL:
      if (v43)
      {
        v171 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
        v176 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v171, v172, v173, v174, v175);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v177, v176, 0, 4, 1);

        v182 = objc_msgSend_strokeProvider(self, v178, v179, v180, v181);
        v188 = objc_msgSend_headerRowPivotGroupVerticalStroke(v182, v183, v184, v185, v186);
        v189 = v22 - 1;
        v190 = 0x7FFFFFFFFFFFFFFFLL;
        if (v189 != 4)
        {
          v190 = v189;
        }

        if (v189 <= 4)
        {
          v191 = v190;
        }

        else
        {
          v191 = 4;
        }

        if (v189 <= 4)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v187, v188, v191, 4 - v189, 1);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v187, v188, v191, v189 - 4, 1);
        }

        v196 = objc_msgSend_strokeProvider(self, v192, v193, v194, v195);
        v201 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v196, v197, v198, v199, v200);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v202, v201, v189, 1, 1);
      }

      else
      {
        v692 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
        v697 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v692, v693, v694, v695, v696);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v698, v697, 0, 4, 1);

        v196 = objc_msgSend_strokeProvider(self, v699, v700, v701, v702);
        v201 = objc_msgSend_headerRowPivotGroupVerticalStroke(v196, v703, v704, v705, v706);
        v708 = 0x7FFFFFFFFFFFFFFFLL;
        if (v22 != 4)
        {
          v708 = v22;
        }

        if (v22 <= 4)
        {
          v709 = v708;
        }

        else
        {
          v709 = 4;
        }

        if (v22 <= 4)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v707, v201, v709, 4 - v22, 1);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v707, v201, v709, v22 - 4, 1);
        }
      }

      if (objc_msgSend_columnAggregateGroupSize(v10, v710, v711, v712, v713) == 1)
      {
        v714 = objc_msgSend_strokeProvider(self, v688, v689, v690, v691);
        v719 = objc_msgSend_bodyColumnStroke(v714, v715, v716, v717, v718);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v720, v719, v50, v51, 1);

        v164 = objc_msgSend_strokeProvider(self, v721, v722, v723, v724);
        objc_msgSend_footerRowBodyColumnStroke(v164, v725, v726, v727, v728);
      }

      else
      {
LABEL_195:
        v972 = objc_msgSend_strokeProvider(self, v688, v689, v690, v691);
        v977 = objc_msgSend_bodyPivotEmphasisVerticalStroke(v972, v973, v974, v975, v976);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v978, v977, v50, v51, 1);

        v164 = objc_msgSend_strokeProvider(self, v979, v980, v981, v982);
        objc_msgSend_footerRowPivotGroupVerticalStroke(v164, v983, v984, v985, v986);
      }

      v169 = LABEL_189:;
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v919, v169, v1012, v1011, 1);
      goto LABEL_200;
    case 0xDuLL:
      v458 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
      v463 = objc_msgSend_headerRowPivotGroupVerticalStroke(v458, v459, v460, v461, v462);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v464, v463, v45, v50, 1);

      v469 = objc_msgSend_strokeProvider(self, v465, v466, v467, v468);
      v474 = objc_msgSend_headerColumnPivotSeparatorStroke(v469, v470, v471, v472, v473);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v475, v474, v50, v51, 1);

      v164 = objc_msgSend_strokeProvider(self, v476, v477, v478, v479);
      v169 = objc_msgSend_footerRowPivotGroupVerticalStroke(v164, v480, v481, v482, v483);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v484, v169, v1012, v1011, 1);
      goto LABEL_200;
    case 0xEuLL:
      objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
      if (v43)
        v91 = {;
        v96 = objc_msgSend_headerRowPivotGroupVerticalStroke(v91, v92, v93, v94, v95);
        v97 = v22 - 1;
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v98, v96, 0, v97, 2);

        v103 = objc_msgSend_strokeProvider(self, v99, v100, v101, v102);
        v108 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v103, v104, v105, v106, v107);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v109, v108, v97, 1, 2);
      }

      else
        v103 = {;
        v108 = objc_msgSend_headerRowPivotGroupVerticalStroke(v103, v641, v642, v643, v644);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v645, v108, v45, v50, 2);
      }

      v650 = objc_msgSend_strokeProvider(self, v646, v647, v648, v649);
      v655 = objc_msgSend_bodyPivotGroupVerticalStroke(v650, v651, v652, v653, v654);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v656, v655, v50, v51, 2);

      v164 = objc_msgSend_strokeProvider(self, v657, v658, v659, v660);
      v169 = objc_msgSend_footerRowPivotGroupVerticalStroke(v164, v661, v662, v663, v664);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v665, v169, v1012, v1011, 2);
      goto LABEL_200;
    case 0xFuLL:
      if (v43)
      {
        v262 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
        v267 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v262, v263, v264, v265, v266);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v268, v267, 0, 1, 2);

        v273 = objc_msgSend_strokeProvider(self, v269, v270, v271, v272);
        v279 = objc_msgSend_headerRowPivotGroupVerticalStroke(v273, v274, v275, v276, v277);
        v280 = v22 - 1;
        v281 = 0x7FFFFFFFFFFFFFFFLL;
        if (v22 == 1)
        {
          v281 = 0;
        }

        if (v280 > 1)
        {
          v282 = 1;
        }

        else
        {
          v282 = v281;
        }

        if (v280 <= 1)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v278, v279, v282, v280 ^ 1, 2);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v278, v279, v282, v280 - 1, 2);
        }

        v287 = objc_msgSend_strokeProvider(self, v283, v284, v285, v286);
        v292 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v287, v288, v289, v290, v291);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v293, v292, v22 - 1, 1, 2);
      }

      else
      {
        v751 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
        v756 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v751, v752, v753, v754, v755);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v757, v756, 0, 1, 2);

        v287 = objc_msgSend_strokeProvider(self, v758, v759, v760, v761);
        v292 = objc_msgSend_headerRowPivotGroupVerticalStroke(v287, v762, v763, v764, v765);
        v767 = 0x7FFFFFFFFFFFFFFFLL;
        if (!v22)
        {
          v767 = 0;
        }

        if (v22 > 1)
        {
          v768 = 1;
        }

        else
        {
          v768 = v767;
        }

        if (v22 <= 1)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v766, v292, v768, v22 ^ 1, 2);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v766, v292, v768, v22 - 1, 2);
        }
      }

      v773 = objc_msgSend_strokeProvider(self, v769, v770, v771, v772);
      v778 = objc_msgSend_bodyPivotGroupVerticalStroke(v773, v774, v775, v776, v777);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v779, v778, v50, v51, 2);

      v164 = objc_msgSend_strokeProvider(self, v780, v781, v782, v783);
      v169 = objc_msgSend_footerRowPivotGroupVerticalStroke(v164, v784, v785, v786, v787);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v788, v169, v1012, v1011, 2);
      goto LABEL_200;
    case 0x10uLL:
      if (v43)
      {
        v70 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
        v75 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v70, v71, v72, v73, v74);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v76, v75, 0, 2, 2);

        v81 = objc_msgSend_strokeProvider(self, v77, v78, v79, v80);
        v87 = objc_msgSend_headerRowPivotGroupVerticalStroke(v81, v82, v83, v84, v85);
        v88 = v22 - 1;
        v89 = 0x7FFFFFFFFFFFFFFFLL;
        if (v88 != 2)
        {
          v89 = v88;
        }

        if (v88 <= 2)
        {
          v90 = v89;
        }

        else
        {
          v90 = 2;
        }

        if (v88 <= 2)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v86, v87, v90, 2 - v88, 2);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v86, v87, v90, v88 - 2, 2);
        }

        goto LABEL_93;
      }

      v623 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
      v628 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v623, v624, v625, v626, v627);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v629, v628, 0, 2, 2);

      v536 = objc_msgSend_strokeProvider(self, v630, v631, v632, v633);
      v541 = objc_msgSend_headerRowPivotGroupVerticalStroke(v536, v634, v635, v636, v637);
      v639 = 0x7FFFFFFFFFFFFFFFLL;
      if (v22 != 2)
      {
        v639 = v22;
      }

      if (v22 <= 2)
      {
        v640 = v639;
      }

      else
      {
        v640 = 2;
      }

      if (v22 <= 2)
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v638, v541, v640, 2 - v22, 2);
      }

      else
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v638, v541, v640, v22 - 2, 2);
      }

      break;
    case 0x11uLL:
      if (v43)
      {
        v375 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
        v380 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v375, v376, v377, v378, v379);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v381, v380, 0, 3, 2);

        v81 = objc_msgSend_strokeProvider(self, v382, v383, v384, v385);
        v87 = objc_msgSend_headerRowPivotGroupVerticalStroke(v81, v386, v387, v388, v389);
        v88 = v22 - 1;
        v391 = 0x7FFFFFFFFFFFFFFFLL;
        if (v88 != 3)
        {
          v391 = v88;
        }

        if (v88 <= 3)
        {
          v392 = v391;
        }

        else
        {
          v392 = 3;
        }

        if (v88 <= 3)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v390, v87, v392, 3 - v88, 2);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v390, v87, v392, v88 - 3, 2);
        }

        goto LABEL_93;
      }

      v789 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
      v794 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v789, v790, v791, v792, v793);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v795, v794, 0, 3, 2);

      v536 = objc_msgSend_strokeProvider(self, v796, v797, v798, v799);
      v541 = objc_msgSend_headerRowPivotGroupVerticalStroke(v536, v800, v801, v802, v803);
      v805 = 0x7FFFFFFFFFFFFFFFLL;
      if (v22 != 3)
      {
        v805 = v22;
      }

      if (v22 <= 3)
      {
        v806 = v805;
      }

      else
      {
        v806 = 3;
      }

      if (v22 <= 3)
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v804, v541, v806, 3 - v22, 2);
      }

      else
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v804, v541, v806, v22 - 3, 2);
      }

      break;
    case 0x12uLL:
      if (v43)
      {
        v514 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
        v519 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v514, v515, v516, v517, v518);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v520, v519, 0, 4, 2);

        v81 = objc_msgSend_strokeProvider(self, v521, v522, v523, v524);
        v87 = objc_msgSend_headerRowPivotGroupVerticalStroke(v81, v525, v526, v527, v528);
        v88 = v22 - 1;
        v530 = 0x7FFFFFFFFFFFFFFFLL;
        if (v88 != 4)
        {
          v530 = v88;
        }

        if (v88 <= 4)
        {
          v531 = v530;
        }

        else
        {
          v531 = 4;
        }

        if (v88 <= 4)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v529, v87, v531, 4 - v88, 2);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v529, v87, v531, v88 - 4, 2);
        }

LABEL_93:

        v536 = objc_msgSend_strokeProvider(self, v532, v533, v534, v535);
        v541 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v536, v537, v538, v539, v540);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v542, v541, v88, 1, 2);
      }

      else
      {
        v835 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
        v840 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v835, v836, v837, v838, v839);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v841, v840, 0, 4, 2);

        v536 = objc_msgSend_strokeProvider(self, v842, v843, v844, v845);
        v541 = objc_msgSend_headerRowPivotGroupVerticalStroke(v536, v846, v847, v848, v849);
        v851 = 0x7FFFFFFFFFFFFFFFLL;
        if (v22 != 4)
        {
          v851 = v22;
        }

        if (v22 <= 4)
        {
          v852 = v851;
        }

        else
        {
          v852 = 4;
        }

        if (v22 <= 4)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v850, v541, v852, 4 - v22, 2);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v850, v541, v852, v22 - 4, 2);
        }
      }

      break;
    case 0x13uLL:
      v594 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
      objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v594, v595, v596, v597, v598);
      if (v43)
        v599 = {;
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v600, v599, 0, v22 - 2, 1);

        v605 = objc_msgSend_strokeProvider(self, v601, v602, v603, v604);
        v610 = objc_msgSend_headerRowBodyColumnStroke(v605, v606, v607, v608, v609);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v611, v610, v22 - 2, 1, 1);

        v616 = objc_msgSend_strokeProvider(self, v612, v613, v614, v615);
        v621 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v616, v617, v618, v619, v620);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v622, v621, v22 - 1, 1, 1);
      }

      else
        v920 = {;
        v921 = v22 - 1;
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v922, v920, 0, v921, 1);

        v616 = objc_msgSend_strokeProvider(self, v923, v924, v925, v926);
        v621 = objc_msgSend_headerRowBodyColumnStroke(v616, v927, v928, v929, v930);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v931, v621, v921, 1, 1);
      }

      v936 = objc_msgSend_strokeProvider(self, v932, v933, v934, v935);
      v941 = objc_msgSend_headerColumnBodyColumnStroke(v936, v937, v938, v939, v940);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v942, v941, v50, v51, 1);

      v164 = objc_msgSend_strokeProvider(self, v943, v944, v945, v946);
      v169 = objc_msgSend_footerRowBodyColumnStroke(v164, v947, v948, v949, v950);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v951, v169, v1012, v1011, 1);
      goto LABEL_200;
    case 0x14uLL:
      v393 = objc_msgSend_strokeProvider(self, v46, v47, v48, v49);
      v398 = objc_msgSend_headerRowBorderStroke(v393, v394, v395, v396, v397);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v399, v398, v45, v50, 1);

      v404 = objc_msgSend_strokeProvider(self, v400, v401, v402, v403);
      v409 = objc_msgSend_defaultVerticalBorderStroke(v404, v405, v406, v407, v408);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v410, v409, v50, v51, 1);

      v164 = objc_msgSend_strokeProvider(self, v411, v412, v413, v414);
      v169 = objc_msgSend_footerRowBorderStroke(v164, v415, v416, v417, v418);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v419, v169, v1012, v1011, 1);
      goto LABEL_200;
    default:
      v447 = MEMORY[0x277D81150];
      v448 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TSTStrokeDefaultVendor p_updateStrokeLayer:forColumnStrokeType:]", v48, v49);
      v452 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v449, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeDefaultVendor.mm", v450, v451);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v447, v453, v448, v452, 990, 0, "unexpected column strokeType %zu", type);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v454, v455, v456, v457);
      goto LABEL_201;
  }

  v857 = objc_msgSend_strokeProvider(self, v853, v854, v855, v856);
  v862 = objc_msgSend_bodyPivotGroupVerticalStroke(v857, v858, v859, v860, v861);
  objc_msgSend_appendStroke_inRange_order_(layerCopy, v863, v862, v50, v51, 2);

  v164 = objc_msgSend_strokeProvider(self, v864, v865, v866, v867);
  v169 = objc_msgSend_footerRowPivotGroupVerticalStroke(v164, v868, v869, v870, v871);
  objc_msgSend_appendStroke_inRange_order_(layerCopy, v872, v169, v1012, v1011, 2);
LABEL_200:

LABEL_201:
}

- (void)p_updateStrokeLayer:(id)layer forRowStrokeType:(unint64_t)type
{
  layerCopy = layer;
  v521 = objc_msgSend_tableInfo(self, v6, v7, v8, v9);
  WeakRetained = objc_loadWeakRetained(&self->_tableProvider);
  v15 = objc_msgSend_numberOfHeaderRows(WeakRetained, v11, v12, v13, v14);

  v16 = objc_loadWeakRetained(&self->_tableProvider);
  v21 = objc_msgSend_numberOfFooterOrGrandTotalRows(v16, v17, v18, v19, v20);

  v22 = objc_loadWeakRetained(&self->_tableProvider);
  v27 = objc_msgSend_numberOfHeaderColumns(v22, v23, v24, v25, v26);

  v28 = objc_loadWeakRetained(&self->_tableProvider);
  v33 = objc_msgSend_numberOfGrandTotalColumns(v28, v29, v30, v31, v32);

  v34 = objc_loadWeakRetained(&self->_tableProvider);
  v39 = objc_msgSend_numberOfColumns(v34, v35, v36, v37, v38);

  if (v27)
  {
    v44 = 0;
  }

  else
  {
    v44 = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_msgSend_invalidate(layerCopy, v40, v41, v42, v43);
  v49 = type - 21;
  v50 = v27;
  v51 = v39 - (v33 + v27);
  v52 = v39;
  v53 = v39 - v33;
  switch(v49)
  {
    case 0uLL:
      objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      if (v15)
        v54 = {;
        v59 = objc_msgSend_headerRowBorderStroke(v54, v55, v56, v57, v58);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v60, v59, 0, v52, 1);
      }

      else
        v477 = {;
        v482 = objc_msgSend_headerColumnBorderStroke(v477, v478, v479, v480, v481);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v483, v482, v44, v27, 1);

        v54 = objc_msgSend_strokeProvider(self, v484, v485, v486, v487);
        v59 = objc_msgSend_defaultHorizontalBorderStroke(v54, v488, v489, v490, v491);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v492, v59, v27, v51, 1);
      }

      goto LABEL_84;
    case 1uLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_headerRowBodyRowStroke(v54, v234, v235, v236, v237);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v238, v59, 0, v52, 1);
      goto LABEL_84;
    case 2uLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v54, v214, v215, v216, v217);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v218, v59, 0, v52, 1);
      goto LABEL_84;
    case 3uLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_headerRowPivotTitleStroke(v54, v224, v225, v226, v227);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v228, v59, 0, v52, 1);
      goto LABEL_84;
    case 4uLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_headerRowSeparatorStroke(v54, v117, v118, v119, v120);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v121, v59, 0, v52, 1);
      goto LABEL_84;
    case 5uLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_categoryLevel1TopStroke(v54, v271, v272, v273, v274);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v275, v59, 0, v52, 1);
      goto LABEL_84;
    case 6uLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_categoryLevel1LabelSeparatorStroke(v54, v304, v305, v306, v307);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v308, v59, 0, v52, 1);
      goto LABEL_84;
    case 7uLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_categoryLevel1BottomStroke(v54, v229, v230, v231, v232);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v233, v59, 0, v52, 1);
      goto LABEL_84;
    case 8uLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_categoryLevel2TopStroke(v54, v319, v320, v321, v322);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v323, v59, 0, v52, 1);
      goto LABEL_84;
    case 9uLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_categoryLevel2LabelSeparatorStroke(v54, v127, v128, v129, v130);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v131, v59, 0, v52, 1);
      goto LABEL_84;
    case 0xAuLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_categoryLevel2BottomStroke(v54, v314, v315, v316, v317);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v318, v59, 0, v52, 1);
      goto LABEL_84;
    case 0xBuLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_categoryLevel3TopStroke(v54, v112, v113, v114, v115);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v116, v59, 0, v52, 1);
      goto LABEL_84;
    case 0xCuLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_categoryLevel3LabelSeparatorStroke(v54, v122, v123, v124, v125);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v126, v59, 0, v52, 1);
      goto LABEL_84;
    case 0xDuLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_categoryLevel3BottomStroke(v54, v299, v300, v301, v302);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v303, v59, 0, v52, 1);
      goto LABEL_84;
    case 0xEuLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_categoryLevel4TopStroke(v54, v107, v108, v109, v110);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v111, v59, 0, v52, 1);
      goto LABEL_84;
    case 0xFuLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_categoryLevel4LabelSeparatorStroke(v54, v219, v220, v221, v222);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v223, v59, 0, v52, 1);
      goto LABEL_84;
    case 0x10uLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_categoryLevel4BottomStroke(v54, v102, v103, v104, v105);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v106, v59, 0, v52, 1);
      goto LABEL_84;
    case 0x11uLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_categoryLevel5TopStroke(v54, v250, v251, v252, v253);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v254, v59, 0, v52, 1);
      goto LABEL_84;
    case 0x12uLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_categoryLevel5LabelSeparatorStroke(v54, v309, v310, v311, v312);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v313, v59, 0, v52, 1);
      goto LABEL_84;
    case 0x13uLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_categoryLevel5BottomStroke(v54, v357, v358, v359, v360);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v361, v59, 0, v52, 1);
      goto LABEL_84;
    case 0x14uLL:
      v255 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v260 = objc_msgSend_headerColumnBodyRowStroke(v255, v256, v257, v258, v259);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v261, v260, v44, v27, 1);

      v54 = objc_msgSend_strokeProvider(self, v262, v263, v264, v265);
      v59 = objc_msgSend_bodyRowStroke(v54, v266, v267, v268, v269);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v270, v59, v27, v51, 1);
      goto LABEL_84;
    case 0x15uLL:
      v276 = v33;
      if (objc_msgSend_rowAggregateGroupSize(v521, v45, v46, v47, v48) < 2)
      {
        v441 = objc_msgSend_strokeProvider(self, v277, v278, v279, v280);
        v446 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v441, v442, v443, v444, v445);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v447, v446, 0, v27 - 1, 1);

        v292 = objc_msgSend_strokeProvider(self, v448, v449, v450, v451);
        v297 = objc_msgSend_headerColumnBodyRowStroke(v292, v452, v453, v454, v455);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v456, v297, v27 - 1, 1, 1);
      }

      else
      {
        v281 = objc_msgSend_strokeProvider(self, v277, v278, v279, v280);
        v286 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v281, v282, v283, v284, v285);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v287, v286, 0, v27 - 2, 1);

        v292 = objc_msgSend_strokeProvider(self, v288, v289, v290, v291);
        v297 = objc_msgSend_headerColumnBodyRowStroke(v292, v293, v294, v295, v296);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v298, v297, v27 - 2, 2, 1);
      }

      v461 = objc_msgSend_strokeProvider(self, v457, v458, v459, v460);
      v466 = objc_msgSend_bodyRowStroke(v461, v462, v463, v464, v465);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v467, v466, v27, v51, 1);

      if (!v33)
      {
        goto LABEL_85;
      }

      v54 = objc_msgSend_strokeProvider(self, v468, v469, v470, v471);
      v59 = objc_msgSend_headerColumnBodyRowStroke(v54, v472, v473, v474, v475);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v476, v59, v53, v276, 1);
      goto LABEL_84;
    case 0x16uLL:
      v329 = v33;
      v330 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v335 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v330, v331, v332, v333, v334);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v336, v335, v44, v27, 1);

      v341 = objc_msgSend_strokeProvider(self, v337, v338, v339, v340);
      v346 = objc_msgSend_bodyPivotDeEmphasisHorizontalStroke(v341, v342, v343, v344, v345);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v347, v346, v27, v51, 1);

      if (!v33)
      {
        goto LABEL_85;
      }

      v54 = objc_msgSend_strokeProvider(self, v348, v349, v350, v351);
      v59 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v54, v352, v353, v354, v355);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v356, v59, v53, v329, 1);
      goto LABEL_84;
    case 0x17uLL:
      v362 = v33;
      v363 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v368 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v363, v364, v365, v366, v367);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v369, v368, v44, v27, 7);

      v374 = objc_msgSend_strokeProvider(self, v370, v371, v372, v373);
      v379 = objc_msgSend_bodyPivotGroupHorizontalStroke(v374, v375, v376, v377, v378);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v380, v379, v27, v51, 7);

      if (!v33)
      {
        goto LABEL_85;
      }

      v54 = objc_msgSend_strokeProvider(self, v381, v382, v383, v384);
      v59 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v54, v385, v386, v387, v388);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v389, v59, v53, v362, 7);
      goto LABEL_84;
    case 0x18uLL:
      v173 = v33;
      v174 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v179 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v174, v175, v176, v177, v178);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v180, v179, 0, 1, 6);

      v185 = objc_msgSend_strokeProvider(self, v181, v182, v183, v184);
      v191 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v185, v186, v187, v188, v189);
      v192 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v27)
      {
        v192 = 0;
      }

      if (v27 > 1)
      {
        v193 = 1;
      }

      else
      {
        v193 = v192;
      }

      if (v27 <= 1)
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v190, v191, v193, v27 ^ 1, 6);
      }

      else
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v190, v191, v193, v27 - 1, 6);
      }

      v198 = objc_msgSend_strokeProvider(self, v194, v195, v196, v197);
      v203 = objc_msgSend_bodyPivotGroupHorizontalStroke(v198, v199, v200, v201, v202);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v204, v203, v27, v51, 6);

      if (!v33)
      {
        goto LABEL_85;
      }

      v54 = objc_msgSend_strokeProvider(self, v205, v206, v207, v208);
      v59 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v54, v209, v210, v211, v212);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v213, v59, v53, v173, 6);
      goto LABEL_84;
    case 0x19uLL:
      v132 = v33;
      v133 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v138 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v133, v134, v135, v136, v137);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v139, v138, 0, 2, 5);

      v144 = objc_msgSend_strokeProvider(self, v140, v141, v142, v143);
      v150 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v144, v145, v146, v147, v148);
      v151 = 0x7FFFFFFFFFFFFFFFLL;
      if (v27 != 2)
      {
        v151 = v27;
      }

      if (v27 <= 2)
      {
        v152 = v151;
      }

      else
      {
        v152 = 2;
      }

      if (v27 <= 2)
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v149, v150, v152, 2 - v27, 5);
      }

      else
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v149, v150, v152, v27 - 2, 5);
      }

      v157 = objc_msgSend_strokeProvider(self, v153, v154, v155, v156);
      v162 = objc_msgSend_bodyPivotGroupHorizontalStroke(v157, v158, v159, v160, v161);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v163, v162, v27, v51, 5);

      if (!v33)
      {
        goto LABEL_85;
      }

      v54 = objc_msgSend_strokeProvider(self, v164, v165, v166, v167);
      v59 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v54, v168, v169, v170, v171);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v172, v59, v53, v132, 5);
      goto LABEL_84;
    case 0x1AuLL:
      v400 = v33;
      v401 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v406 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v401, v402, v403, v404, v405);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v407, v406, 0, 3, 4);

      v412 = objc_msgSend_strokeProvider(self, v408, v409, v410, v411);
      v418 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v412, v413, v414, v415, v416);
      v419 = 0x7FFFFFFFFFFFFFFFLL;
      if (v27 != 3)
      {
        v419 = v27;
      }

      if (v27 <= 3)
      {
        v420 = v419;
      }

      else
      {
        v420 = 3;
      }

      if (v27 <= 3)
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v417, v418, v420, 3 - v27, 4);
      }

      else
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v417, v418, v420, v27 - 3, 4);
      }

      v425 = objc_msgSend_strokeProvider(self, v421, v422, v423, v424);
      v430 = objc_msgSend_bodyPivotGroupHorizontalStroke(v425, v426, v427, v428, v429);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v431, v430, v27, v51, 4);

      if (!v33)
      {
        goto LABEL_85;
      }

      v54 = objc_msgSend_strokeProvider(self, v432, v433, v434, v435);
      v59 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v54, v436, v437, v438, v439);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v440, v59, v53, v400, 4);
      goto LABEL_84;
    case 0x1BuLL:
      v61 = v33;
      v62 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v67 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v62, v63, v64, v65, v66);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v68, v67, 0, 4, 3);

      v73 = objc_msgSend_strokeProvider(self, v69, v70, v71, v72);
      v79 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v73, v74, v75, v76, v77);
      v80 = 0x7FFFFFFFFFFFFFFFLL;
      if (v27 != 4)
      {
        v80 = v27;
      }

      if (v27 <= 4)
      {
        v81 = v80;
      }

      else
      {
        v81 = 4;
      }

      if (v27 <= 4)
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v78, v79, v81, 4 - v27, 3);
      }

      else
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v78, v79, v81, v27 - 4, 3);
      }

      v86 = objc_msgSend_strokeProvider(self, v82, v83, v84, v85);
      v91 = objc_msgSend_bodyPivotGroupHorizontalStroke(v86, v87, v88, v89, v90);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v92, v91, v27, v51, 3);

      if (!v33)
      {
        goto LABEL_85;
      }

      v54 = objc_msgSend_strokeProvider(self, v93, v94, v95, v96);
      v59 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v54, v97, v98, v99, v100);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v101, v59, v53, v61, 3);
      goto LABEL_84;
    case 0x1CuLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_footerRowSeparatorStroke(v54, v390, v391, v392, v393);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v394, v59, 0, v52, 1);
      goto LABEL_84;
    case 0x1DuLL:
      v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
      v59 = objc_msgSend_footerRowBodyRowStroke(v54, v395, v396, v397, v398);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v399, v59, 0, v52, 1);
      goto LABEL_84;
    case 0x1EuLL:
      if (v21)
      {
        v54 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
        v59 = objc_msgSend_footerRowBorderStroke(v54, v324, v325, v326, v327);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v328, v59, 0, v52, 1);
      }

      else
      {
        v493 = v33;
        v494 = objc_msgSend_strokeProvider(self, v45, v46, v47, v48);
        v499 = objc_msgSend_headerColumnBorderStroke(v494, v495, v496, v497, v498);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v500, v499, v44, v50, 1);

        v505 = objc_msgSend_strokeProvider(self, v501, v502, v503, v504);
        v510 = objc_msgSend_defaultHorizontalBorderStroke(v505, v506, v507, v508, v509);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v511, v510, v50, v51, 1);

        if (!v33)
        {
          goto LABEL_85;
        }

        v54 = objc_msgSend_strokeProvider(self, v512, v513, v514, v515);
        v59 = objc_msgSend_headerColumnBorderStroke(v54, v516, v517, v518, v519);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v520, v59, v53, v493, 1);
      }

LABEL_84:

LABEL_85:

      return;
    default:
      v239 = MEMORY[0x277D81150];
      v240 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSTStrokeDefaultVendor p_updateStrokeLayer:forRowStrokeType:]", v47, v48);
      v244 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v241, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeDefaultVendor.mm", v242, v243);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v239, v245, v240, v244, 1167, 0, "unexpected row strokeType %zu", v51);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v246, v247, v248, v249);
      goto LABEL_85;
  }
}

- (TSTTableStrokeProviding)strokeProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_strokeProvider);

  return WeakRetained;
}

- (TSTTableHiddenRowColumnProviding)tableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_tableProvider);

  return WeakRetained;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

  return WeakRetained;
}

- (_NSRange)headerSideBorderColumnRange
{
  length = self->_headerSideBorderColumnRange.length;
  location = self->_headerSideBorderColumnRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)headerColumnSeparatorColumnRange
{
  length = self->_headerColumnSeparatorColumnRange.length;
  location = self->_headerColumnSeparatorColumnRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)footerColumnSeparatorColumnRange
{
  length = self->_footerColumnSeparatorColumnRange.length;
  location = self->_footerColumnSeparatorColumnRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)bodySideBorderColumnRange
{
  length = self->_bodySideBorderColumnRange.length;
  location = self->_bodySideBorderColumnRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)topBorderRowRange
{
  length = self->_topBorderRowRange.length;
  location = self->_topBorderRowRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)headerRowSeparatorRowRange
{
  length = self->_headerRowSeparatorRowRange.length;
  location = self->_headerRowSeparatorRowRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)footerRowSeparatorRowRange
{
  length = self->_footerRowSeparatorRowRange.length;
  location = self->_footerRowSeparatorRowRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)bottomBorderRowRange
{
  length = self->_bottomBorderRowRange.length;
  location = self->_bottomBorderRowRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end