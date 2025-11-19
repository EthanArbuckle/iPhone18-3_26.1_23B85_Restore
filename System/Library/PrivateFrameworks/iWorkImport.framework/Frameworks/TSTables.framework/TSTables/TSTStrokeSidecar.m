@interface TSTStrokeSidecar
- (BOOL)isEmpty;
- (BOOL)mightHaveCellBorderAtCellID:(TSUCellCoord)a3;
- (TSTStrokeSidecar)initWithTableModel:(id)a3;
- (TSUCellRect)p_strokeRect;
- (id)cellBorderAtCellID:(TSUCellCoord)a3;
- (id)initForUpgradeWithTableModel:(id)a3;
- (id)p_flattenMajorStrokeLayer:(id)a3 minorStrokeLayer:(id)a4;
- (id)strokeLayerForBottomOfRow:(unsigned int)a3;
- (id)strokeLayerForLeftSideOfColumn:(unsigned __int16)a3;
- (id)strokeLayerForRightSideOfColumn:(unsigned __int16)a3;
- (id)strokeLayerForTopOfRow:(unsigned int)a3;
- (id)unretainedStrokeLayerForBottomOfRow:(unsigned int)a3;
- (id)unretainedStrokeLayerForLeftSideOfColumn:(unsigned __int16)a3;
- (id)unretainedStrokeLayerForRightSideOfColumn:(unsigned __int16)a3;
- (id)unretainedStrokeLayerForTopOfRow:(unsigned int)a3;
- (vector<TSTCellBorder)accumulateCellBordersConcurrentlyInRow:(TSTStrokeSidecar *)self atColumns:(SEL)a3;
- (void)enumerateStrokesInRegion:(id)a3 usingTopStrokeBlock:(id)a4 usingBottomStrokeBlock:(id)a5 usingLeftStrokeBlock:(id)a6 usingRightStrokeBlock:(id)a7;
- (void)flattenStrokeOrder;
- (void)insertColumns:(_NSRange)a3;
- (void)insertRows:(_NSRange)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)moveColumnIndexRange:(_NSRange)a3 toIndex:(unsigned __int16)a4;
- (void)moveRowIndexRange:(_NSRange)a3 toIndex:(unsigned int)a4;
- (void)p_setBottomStroke:(id)a3 order:(int)a4 atCellID:(TSUCellCoord)a5;
- (void)p_setLeftStroke:(id)a3 order:(int)a4 atCellID:(TSUCellCoord)a5;
- (void)p_setRightStroke:(id)a3 order:(int)a4 atCellID:(TSUCellCoord)a5;
- (void)p_setStroke:(id)a3 order:(int)a4 inStrokesArray:(id)a5 atIndex:(unsigned int)a6 atRange:(TSTSimpleRange)a7;
- (void)p_setTopStroke:(id)a3 order:(int)a4 atCellID:(TSUCellCoord)a5;
- (void)removeColumns:(_NSRange)a3;
- (void)removeRows:(_NSRange)a3;
- (void)saveToArchiver:(id)a3;
- (void)setBordersWithCellMap:(id)a3;
- (void)setBordersWithConcurrentCellMap:(id)a3 forTableInfo:(id)a4;
- (void)setCellBorder:(id)a3 atCellID:(TSUCellCoord)a4;
- (void)setMaxOrder:(int)a3;
- (void)setStroke:(id)a3 forBottomOfRow:(unsigned int)a4 order:(int)a5 columnRange:(TSTSimpleRange)a6;
- (void)setStroke:(id)a3 forLeftOfColumn:(unsigned __int16)a4 order:(int)a5 rowRange:(TSTSimpleRange)a6;
- (void)setStroke:(id)a3 forRightOfColumn:(unsigned __int16)a4 order:(int)a5 rowRange:(TSTSimpleRange)a6;
- (void)setStroke:(id)a3 forTopOfRow:(unsigned int)a4 order:(int)a5 columnRange:(TSTSimpleRange)a6;
- (void)setStrokeLayer:(id)a3 forBottomOfRow:(unsigned int)a4;
- (void)setStrokeLayer:(id)a3 forLeftOfColumn:(unsigned __int16)a4;
- (void)setStrokeLayer:(id)a3 forRightOfColumn:(unsigned __int16)a4;
- (void)setStrokeLayer:(id)a3 forTopOfRow:(unsigned int)a4;
- (void)swapRowAtIndex:(unsigned int)a3 withRowAtIndex:(unsigned int)a4;
- (void)updateForTableSize:(id)a3;
@end

@implementation TSTStrokeSidecar

- (void)setMaxOrder:(int)a3
{
  if (self->_maxOrder != a3)
  {
    objc_msgSend_willModify(self, a2, *&a3, v3, v4);
    self->_maxOrder = a3;
  }
}

- (TSTStrokeSidecar)initWithTableModel:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_context(v4, v5, v6, v7, v8);
  v72.receiver = self;
  v72.super_class = TSTStrokeSidecar;
  v10 = [(TSTStrokeSidecar *)&v72 initWithContext:v9];

  if (v10)
  {
    v15 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v11, v12, v13, v14);
    leftColumnStrokes = v10->_leftColumnStrokes;
    v10->_leftColumnStrokes = v15;

    v21 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v17, v18, v19, v20);
    rightColumnStrokes = v10->_rightColumnStrokes;
    v10->_rightColumnStrokes = v21;

    v27 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v23, v24, v25, v26);
    topRowStrokes = v10->_topRowStrokes;
    v10->_topRowStrokes = v27;

    v33 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v29, v30, v31, v32);
    bottomRowStrokes = v10->_bottomRowStrokes;
    v10->_bottomRowStrokes = v33;

    v10->_maxOrder = 2;
    v35 = v10->_leftColumnStrokes;
    v40 = objc_msgSend_numberOfColumns(v4, v36, v37, v38, v39);
    objc_msgSend_setCount_(v35, v41, v40, v42, v43);
    v44 = v10->_rightColumnStrokes;
    v49 = objc_msgSend_numberOfColumns(v4, v45, v46, v47, v48);
    objc_msgSend_setCount_(v44, v50, v49, v51, v52);
    v53 = v10->_topRowStrokes;
    v58 = objc_msgSend_numberOfRows(v4, v54, v55, v56, v57);
    objc_msgSend_setCount_(v53, v59, v58, v60, v61);
    v62 = v10->_bottomRowStrokes;
    v67 = objc_msgSend_numberOfRows(v4, v63, v64, v65, v66);
    objc_msgSend_setCount_(v62, v68, v67, v69, v70);
  }

  return v10;
}

- (id)initForUpgradeWithTableModel:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_initWithTableModel_(self, v5, v4, v6, v7);
  v13 = v8;
  if (v8)
  {
    v14 = objc_msgSend_documentRoot(v8, v9, v10, v11, v12);
    v19 = objc_msgSend_stylesheet(v14, v15, v16, v17, v18);

    v24 = objc_msgSend_newCell(v4, v20, v21, v22, v23);
    v38[0] = objc_msgSend_range(v4, v25, v26, v27, v28);
    v38[1] = v29;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_2211DCB38;
    v33[3] = &unk_278460FF8;
    v30 = v24;
    v34 = v30;
    v35 = v4;
    v36 = v13;
    v31 = v19;
    v37 = v31;
    sub_2211DCA74(v38, v33);
  }

  return v13;
}

- (void)p_setStroke:(id)a3 order:(int)a4 inStrokesArray:(id)a5 atIndex:(unsigned int)a6 atRange:(TSTSimpleRange)a7
{
  length = a7.length;
  origin = a7.origin;
  v9 = *&a6;
  v11 = *&a4;
  v49 = a3;
  v13 = a5;
  if (objc_msgSend_count(v13, v14, v15, v16, v17) <= v9)
  {
    objc_msgSend_setCount_(v13, v18, (v9 + 1), v19, v20);
  }

  v25 = objc_msgSend_pointerAtIndex_(v13, v18, v9, v19, v20);
  if (v49 | v25)
  {
    objc_msgSend_willModify(self, v21, v22, v23, v24);
    if (!v25)
    {
      v28 = [TSTMutableStrokeLayer alloc];
      v33 = objc_msgSend_context(self, v29, v30, v31, v32);
      v25 = objc_msgSend_initWithContext_columnOrRowIndex_(v28, v34, v33, v9, v35);

      objc_msgSend_replacePointerAtIndex_withPointer_(v13, v36, v9, v25, v37);
    }

    objc_msgSend_invalidateRange_(v25, v26, origin, length, v27);
    if (v49)
    {
      v42 = objc_msgSend_maxOrder(self, v38, v39, v40, v41);
      if (v42 <= v11)
      {
        objc_msgSend_setMaxOrder_(self, v43, v11, v44, v45);
      }

      else
      {
        objc_msgSend_setMaxOrder_(self, v43, v42, v44, v45);
      }

      objc_msgSend_setStroke_inRange_order_(v25, v46, v49, origin, length, v11);
    }

    else if (objc_msgSend_isEmpty(v25, v38, v39, v40, v41))
    {
      objc_msgSend_replacePointerAtIndex_withPointer_(v13, v47, v9, 0, v48);
    }
  }

  else
  {
    v25 = 0;
  }
}

- (void)p_setLeftStroke:(id)a3 order:(int)a4 atCellID:(TSUCellCoord)a5
{
  v6 = *&a4;
  v14 = a3;
  v12 = objc_msgSend_leftColumnStrokes(self, v8, v9, v10, v11);
  objc_msgSend_p_setStroke_order_inStrokesArray_atIndex_atRange_(self, v13, v14, v6, v12, a5.column, a5.row, 1);
}

- (void)p_setRightStroke:(id)a3 order:(int)a4 atCellID:(TSUCellCoord)a5
{
  v6 = *&a4;
  v14 = a3;
  v12 = objc_msgSend_rightColumnStrokes(self, v8, v9, v10, v11);
  objc_msgSend_p_setStroke_order_inStrokesArray_atIndex_atRange_(self, v13, v14, v6, v12, a5.column, a5.row, 1);
}

- (void)p_setTopStroke:(id)a3 order:(int)a4 atCellID:(TSUCellCoord)a5
{
  v6 = *&a4;
  v14 = a3;
  v12 = objc_msgSend_topRowStrokes(self, v8, v9, v10, v11);
  objc_msgSend_p_setStroke_order_inStrokesArray_atIndex_atRange_(self, v13, v14, v6, v12, a5, a5.column, 1);
}

- (void)p_setBottomStroke:(id)a3 order:(int)a4 atCellID:(TSUCellCoord)a5
{
  v6 = *&a4;
  v14 = a3;
  v12 = objc_msgSend_bottomRowStrokes(self, v8, v9, v10, v11);
  objc_msgSend_p_setStroke_order_inStrokesArray_atIndex_atRange_(self, v13, v14, v6, v12, a5, a5.column, 1);
}

- (BOOL)isEmpty
{
  v77 = *MEMORY[0x277D85DE8];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v6 = objc_msgSend_leftColumnStrokes(self, a2, v2, v3, v4);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v69, v76, 16);
  if (v12)
  {
    v13 = *v70;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v70 != v13)
      {
        objc_enumerationMutation(v6);
      }

      v15 = *(*(&v69 + 1) + 8 * v14);
      if (v15)
      {
        if ((objc_msgSend_isEmpty(v15, v8, v9, v10, v11) & 1) == 0)
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v69, v76, 16);
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v6 = objc_msgSend_rightColumnStrokes(self, v16, v17, v18, v19);
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v20, &v65, v75, 16);
    if (v25)
    {
      v26 = *v66;
LABEL_12:
      v27 = 0;
      while (1)
      {
        if (*v66 != v26)
        {
          objc_enumerationMutation(v6);
        }

        v28 = *(*(&v65 + 1) + 8 * v27);
        if (v28)
        {
          if ((objc_msgSend_isEmpty(v28, v21, v22, v23, v24) & 1) == 0)
          {
            break;
          }
        }

        if (v25 == ++v27)
        {
          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v21, &v65, v75, 16);
          if (v25)
          {
            goto LABEL_12;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v6 = objc_msgSend_topRowStrokes(self, v29, v30, v31, v32);
      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v33, &v61, v74, 16);
      if (v38)
      {
        v39 = *v62;
LABEL_21:
        v40 = 0;
        while (1)
        {
          if (*v62 != v39)
          {
            objc_enumerationMutation(v6);
          }

          v41 = *(*(&v61 + 1) + 8 * v40);
          if (v41)
          {
            if ((objc_msgSend_isEmpty(v41, v34, v35, v36, v37) & 1) == 0)
            {
              break;
            }
          }

          if (v38 == ++v40)
          {
            v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v34, &v61, v74, 16);
            if (v38)
            {
              goto LABEL_21;
            }

            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v6 = objc_msgSend_bottomRowStrokes(self, v42, v43, v44, v45, 0);
        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v46, &v57, v73, 16);
        if (!v51)
        {
          v55 = 1;
          goto LABEL_39;
        }

        v52 = *v58;
LABEL_30:
        v53 = 0;
        while (1)
        {
          if (*v58 != v52)
          {
            objc_enumerationMutation(v6);
          }

          v54 = *(*(&v57 + 1) + 8 * v53);
          if (v54)
          {
            if ((objc_msgSend_isEmpty(v54, v47, v48, v49, v50) & 1) == 0)
            {
              break;
            }
          }

          if (v51 == ++v53)
          {
            v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v47, &v57, v73, 16);
            v55 = 1;
            if (v51)
            {
              goto LABEL_30;
            }

            goto LABEL_39;
          }
        }
      }
    }
  }

  v55 = 0;
LABEL_39:

  return v55;
}

- (BOOL)mightHaveCellBorderAtCellID:(TSUCellCoord)a3
{
  v7 = objc_msgSend_unretainedStrokeLayerForTopOfRow_(self, a2, *&a3, v3, v4);
  result = 1;
  if (!v7 || objc_msgSend_isEmpty(v7, v8, v9, v10, v11))
  {
    v12 = objc_msgSend_unretainedStrokeLayerForLeftSideOfColumn_(self, v8, a3.column, v10, v11);
    if (!v12 || objc_msgSend_isEmpty(v12, v13, v14, v15, v16))
    {
      v17 = objc_msgSend_unretainedStrokeLayerForBottomOfRow_(self, v13, *&a3, v15, v16);
      if (!v17 || objc_msgSend_isEmpty(v17, v18, v19, v20, v21))
      {
        v22 = objc_msgSend_unretainedStrokeLayerForRightSideOfColumn_(self, v18, a3.column, v20, v21);
        if (!v22 || objc_msgSend_isEmpty(v22, v23, v24, v25, v26))
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (id)cellBorderAtCellID:(TSUCellCoord)a3
{
  v7 = objc_msgSend_cellBorder(TSTCellBorder, a2, *&a3, v3, v4);
  v11 = objc_msgSend_strokeLayerForTopOfRow_(self, v8, *&a3, v9, v10);
  v15 = v11;
  if (v11)
  {
    v16 = objc_msgSend_findStrokeAndRangeAtIndex_(v11, v12, a3.column, v13, v14);
    v21 = v16;
    if (v16)
    {
      v22 = objc_msgSend_range(v16, v17, v18, v19, v20);
      if (v23)
      {
        if (v22 <= a3.column && &v23[v22 - 1] >= a3.column)
        {
          v27 = objc_msgSend_stroke(v21, v23, v24, v25, v26);
          v32 = objc_msgSend_order(v21, v28, v29, v30, v31);
          objc_msgSend_setTopStroke_order_(v7, v33, v27, v32, v34);
        }
      }
    }
  }

  v35 = objc_msgSend_strokeLayerForLeftSideOfColumn_(self, v12, a3.column, v13, v14);
  v39 = v35;
  if (v35)
  {
    v40 = objc_msgSend_findStrokeAndRangeAtIndex_(v35, v36, a3.row, v37, v38);
    v45 = v40;
    if (v40)
    {
      v46 = objc_msgSend_range(v40, v41, v42, v43, v44);
      if (v47)
      {
        if (v46 <= a3.row && &v47[v46 - 1] >= a3.row)
        {
          v51 = objc_msgSend_stroke(v45, v47, v48, v49, v50);
          v56 = objc_msgSend_order(v45, v52, v53, v54, v55);
          objc_msgSend_setLeftStroke_order_(v7, v57, v51, v56, v58);
        }
      }
    }
  }

  v59 = objc_msgSend_strokeLayerForBottomOfRow_(self, v36, *&a3, v37, v38);
  v63 = v59;
  if (v59)
  {
    v64 = objc_msgSend_findStrokeAndRangeAtIndex_(v59, v60, a3.column, v61, v62);
    v69 = v64;
    if (v64)
    {
      v70 = objc_msgSend_range(v64, v65, v66, v67, v68);
      if (v71)
      {
        if (v70 <= a3.column && &v71[v70 - 1] >= a3.column)
        {
          v75 = objc_msgSend_stroke(v69, v71, v72, v73, v74);
          v80 = objc_msgSend_order(v69, v76, v77, v78, v79);
          objc_msgSend_setBottomStroke_order_(v7, v81, v75, v80, v82);
        }
      }
    }
  }

  v83 = objc_msgSend_strokeLayerForRightSideOfColumn_(self, v60, a3.column, v61, v62);
  v87 = v83;
  if (v83)
  {
    v88 = objc_msgSend_findStrokeAndRangeAtIndex_(v83, v84, a3.row, v85, v86);
    v93 = v88;
    if (v88)
    {
      v94 = objc_msgSend_range(v88, v89, v90, v91, v92);
      if (v95)
      {
        if (v94 <= a3.row && &v95[v94 - 1] >= a3.row)
        {
          v99 = objc_msgSend_stroke(v93, v95, v96, v97, v98);
          v104 = objc_msgSend_order(v93, v100, v101, v102, v103);
          objc_msgSend_setRightStroke_order_(v7, v105, v99, v104, v106);
        }
      }
    }
  }

  return v7;
}

- (void)setCellBorder:(id)a3 atCellID:(TSUCellCoord)a4
{
  v50 = a3;
  v10 = objc_msgSend_topStroke(v50, v6, v7, v8, v9);
  v15 = objc_msgSend_topStrokeOrder(v50, v11, v12, v13, v14);
  objc_msgSend_p_setTopStroke_order_atCellID_(self, v16, v10, v15, *&a4);

  v21 = objc_msgSend_leftStroke(v50, v17, v18, v19, v20);
  v26 = objc_msgSend_leftStrokeOrder(v50, v22, v23, v24, v25);
  objc_msgSend_p_setLeftStroke_order_atCellID_(self, v27, v21, v26, *&a4);

  v32 = objc_msgSend_bottomStroke(v50, v28, v29, v30, v31);
  v37 = objc_msgSend_bottomStrokeOrder(v50, v33, v34, v35, v36);
  objc_msgSend_p_setBottomStroke_order_atCellID_(self, v38, v32, v37, *&a4);

  v43 = objc_msgSend_rightStroke(v50, v39, v40, v41, v42);
  v48 = objc_msgSend_rightStrokeOrder(v50, v44, v45, v46, v47);
  objc_msgSend_p_setRightStroke_order_atCellID_(self, v49, v43, v48, *&a4);
}

- (void)setBordersWithCellMap:(id)a3
{
  v4 = a3;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2211DDF30;
  v12[3] = &unk_27845DE10;
  v12[4] = self;
  objc_msgSend_enumerateCellsWithIDsUsingBlock_(v4, v9, v12, v10, v11);
}

- (void)setStroke:(id)a3 forTopOfRow:(unsigned int)a4 order:(int)a5 columnRange:(TSTSimpleRange)a6
{
  length = a6.length;
  origin = a6.origin;
  v8 = *&a5;
  v9 = *&a4;
  v40 = a3;
  objc_msgSend_willModify(self, v11, v12, v13, v14);
  v19 = objc_msgSend_topRowStrokes(self, v15, v16, v17, v18);
  v23 = objc_msgSend_pointerAtIndex_(v19, v20, v9, v21, v22);

  if (!v23)
  {
    v25 = [TSTMutableStrokeLayer alloc];
    v30 = objc_msgSend_context(self, v26, v27, v28, v29);
    v23 = objc_msgSend_initWithContext_columnOrRowIndex_(v25, v31, v30, v9, v32);

    v37 = objc_msgSend_topRowStrokes(self, v33, v34, v35, v36);
    objc_msgSend_replacePointerAtIndex_withPointer_(v37, v38, v9, v23, v39);
  }

  objc_msgSend_setStroke_inRange_order_(v23, v24, v40, origin, length, v8);
}

- (void)setStroke:(id)a3 forBottomOfRow:(unsigned int)a4 order:(int)a5 columnRange:(TSTSimpleRange)a6
{
  length = a6.length;
  origin = a6.origin;
  v8 = *&a5;
  v9 = *&a4;
  v40 = a3;
  objc_msgSend_willModify(self, v11, v12, v13, v14);
  v19 = objc_msgSend_bottomRowStrokes(self, v15, v16, v17, v18);
  v23 = objc_msgSend_pointerAtIndex_(v19, v20, v9, v21, v22);

  if (!v23)
  {
    v25 = [TSTMutableStrokeLayer alloc];
    v30 = objc_msgSend_context(self, v26, v27, v28, v29);
    v23 = objc_msgSend_initWithContext_columnOrRowIndex_(v25, v31, v30, v9, v32);

    v37 = objc_msgSend_bottomRowStrokes(self, v33, v34, v35, v36);
    objc_msgSend_replacePointerAtIndex_withPointer_(v37, v38, v9, v23, v39);
  }

  objc_msgSend_setStroke_inRange_order_(v23, v24, v40, origin, length, v8);
}

- (void)setStroke:(id)a3 forLeftOfColumn:(unsigned __int16)a4 order:(int)a5 rowRange:(TSTSimpleRange)a6
{
  length = a6.length;
  origin = a6.origin;
  v8 = *&a5;
  v9 = a4;
  v40 = a3;
  objc_msgSend_willModify(self, v11, v12, v13, v14);
  v19 = objc_msgSend_leftColumnStrokes(self, v15, v16, v17, v18);
  v23 = objc_msgSend_pointerAtIndex_(v19, v20, v9, v21, v22);

  if (!v23)
  {
    v25 = [TSTMutableStrokeLayer alloc];
    v30 = objc_msgSend_context(self, v26, v27, v28, v29);
    v23 = objc_msgSend_initWithContext_columnOrRowIndex_(v25, v31, v30, v9, v32);

    v37 = objc_msgSend_leftColumnStrokes(self, v33, v34, v35, v36);
    objc_msgSend_replacePointerAtIndex_withPointer_(v37, v38, v9, v23, v39);
  }

  objc_msgSend_setStroke_inRange_order_(v23, v24, v40, origin, length, v8);
}

- (void)setStroke:(id)a3 forRightOfColumn:(unsigned __int16)a4 order:(int)a5 rowRange:(TSTSimpleRange)a6
{
  length = a6.length;
  origin = a6.origin;
  v8 = *&a5;
  v9 = a4;
  v40 = a3;
  objc_msgSend_willModify(self, v11, v12, v13, v14);
  v19 = objc_msgSend_rightColumnStrokes(self, v15, v16, v17, v18);
  v23 = objc_msgSend_pointerAtIndex_(v19, v20, v9, v21, v22);

  if (!v23)
  {
    v25 = [TSTMutableStrokeLayer alloc];
    v30 = objc_msgSend_context(self, v26, v27, v28, v29);
    v23 = objc_msgSend_initWithContext_columnOrRowIndex_(v25, v31, v30, v9, v32);

    v37 = objc_msgSend_rightColumnStrokes(self, v33, v34, v35, v36);
    objc_msgSend_replacePointerAtIndex_withPointer_(v37, v38, v9, v23, v39);
  }

  objc_msgSend_setStroke_inRange_order_(v23, v24, v40, origin, length, v8);
}

- (id)p_flattenMajorStrokeLayer:(id)a3 minorStrokeLayer:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [TSTMutableStrokeLayer alloc];
  v12 = objc_msgSend_context(v5, v8, v9, v10, v11);
  v17 = objc_msgSend_columnOrRowIndex(v5, v13, v14, v15, v16);
  v20 = objc_msgSend_initWithContext_columnOrRowIndex_(v7, v18, v12, v17, v19);

  v21 = [TSTMutableStrokeLayer alloc];
  v26 = objc_msgSend_context(v6, v22, v23, v24, v25);
  v31 = objc_msgSend_columnOrRowIndex(v6, v27, v28, v29, v30);
  v34 = objc_msgSend_initWithContext_columnOrRowIndex_(v21, v32, v26, v31, v33);

  v35 = [TSTStrokeOrderedLayer alloc];
  v37 = objc_msgSend_initWithContext_majorStrokeLayer_minorStrokeLayer_(v35, v36, 0, v5, v6);
  v47 = MEMORY[0x277D85DD0];
  v48 = 3221225472;
  v49 = sub_2211DE734;
  v50 = &unk_278461020;
  v38 = v20;
  v51 = v38;
  v39 = v34;
  v52 = v39;
  objc_msgSend_enumerateRawStrokesSegmentsUsingBlock_(v37, v40, &v47, v41, v42);
  v45 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v43, v38, v39, v44, v47, v48, v49, v50);

  return v45;
}

- (void)flattenStrokeOrder
{
  objc_msgSend_willModify(self, a2, v2, v3, v4);
  v10 = objc_msgSend_leftColumnStrokes(self, v6, v7, v8, v9);
  v15 = objc_msgSend_count(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_rightColumnStrokes(self, v16, v17, v18, v19);
  v25 = objc_msgSend_count(v20, v21, v22, v23, v24);

  if (v15 != v25)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSTStrokeSidecar flattenStrokeOrder]", v28, v29);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeSidecar.mm", v33, v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v31, v35, 482, 0, "left and right column stroke count should be identical");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  v41 = objc_msgSend_topRowStrokes(self, v26, v27, v28, v29);
  v46 = objc_msgSend_count(v41, v42, v43, v44, v45);
  v51 = objc_msgSend_bottomRowStrokes(self, v47, v48, v49, v50);
  v56 = objc_msgSend_count(v51, v52, v53, v54, v55);

  if (v46 != v56)
  {
    v61 = MEMORY[0x277D81150];
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "[TSTStrokeSidecar flattenStrokeOrder]", v59, v60);
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeSidecar.mm", v64, v65);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v67, v62, v66, 483, 0, "top and bottom row stroke count should be identical");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
  }

  v72 = objc_msgSend_leftColumnStrokes(self, v57, v58, v59, v60);
  v77 = objc_msgSend_count(v72, v73, v74, v75, v76);

  if (v77 != -1)
  {
    for (i = 0; v77 + 1 != i; ++i)
    {
      if (i >= v77)
      {
        v88 = 0;
        v89 = 0;
        if (!i)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v83 = objc_msgSend_leftColumnStrokes(self, v78, v79, v80, v81);
        v87 = objc_msgSend_pointerAtIndex_(v83, v84, i, v85, v86);

        if (!i)
        {
          v89 = 0;
          v88 = 0;
          if (v87)
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }

        v88 = v87;
      }

      v90 = objc_msgSend_rightColumnStrokes(self, v78, v79, v80, v81);
      v89 = objc_msgSend_pointerAtIndex_(v90, v91, i - 1, v92, v93);

      if (!v88 || !v89)
      {
        if (!v88)
        {
          v88 = 0;
          if (v89)
          {
            objc_msgSend_flattenStrokeOrder(v89, v78, v79, v80, v81);
          }

          goto LABEL_18;
        }

        v87 = v88;
LABEL_17:
        v88 = v87;
        objc_msgSend_flattenStrokeOrder(v87, v78, v79, v80, v81);
        goto LABEL_18;
      }

      v94 = objc_msgSend_p_flattenMajorStrokeLayer_minorStrokeLayer_(self, v78, v88, v89, v81);
      v99 = objc_msgSend_leftColumnStrokes(self, v95, v96, v97, v98);
      v104 = objc_msgSend_first(v94, v100, v101, v102, v103);
      objc_msgSend_replacePointerAtIndex_withPointer_(v99, v105, i, v104, v106);

      v111 = objc_msgSend_rightColumnStrokes(self, v107, v108, v109, v110);
      v116 = objc_msgSend_second(v94, v112, v113, v114, v115);
      objc_msgSend_replacePointerAtIndex_withPointer_(v111, v117, i - 1, v116, v118);

LABEL_18:
    }
  }

  v119 = objc_msgSend_topRowStrokes(self, v78, v79, v80, v81);
  v124 = objc_msgSend_count(v119, v120, v121, v122, v123);

  if (v124 != -1)
  {
    for (j = 0; v124 + 1 != j; ++j)
    {
      if (j >= v124)
      {
        v135 = 0;
        v136 = 0;
        if (!j)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v130 = objc_msgSend_topRowStrokes(self, v125, v126, v127, v128);
        v134 = objc_msgSend_pointerAtIndex_(v130, v131, j, v132, v133);

        if (!j)
        {
          v136 = 0;
          v135 = 0;
          if (v134)
          {
            goto LABEL_35;
          }

          goto LABEL_36;
        }

        v135 = v134;
      }

      v137 = objc_msgSend_bottomRowStrokes(self, v125, v126, v127, v128);
      v136 = objc_msgSend_pointerAtIndex_(v137, v138, j - 1, v139, v140);

      if (!v135 || !v136)
      {
        if (!v135)
        {
          v135 = 0;
          if (v136)
          {
            objc_msgSend_flattenStrokeOrder(v136, v125, v126, v127, v128);
          }

          goto LABEL_36;
        }

        v134 = v135;
LABEL_35:
        v135 = v134;
        objc_msgSend_flattenStrokeOrder(v134, v125, v126, v127, v128);
        goto LABEL_36;
      }

      v141 = objc_msgSend_p_flattenMajorStrokeLayer_minorStrokeLayer_(self, v125, v135, v136, v128);
      v146 = objc_msgSend_topRowStrokes(self, v142, v143, v144, v145);
      v151 = objc_msgSend_first(v141, v147, v148, v149, v150);
      objc_msgSend_replacePointerAtIndex_withPointer_(v146, v152, j, v151, v153);

      v158 = objc_msgSend_bottomRowStrokes(self, v154, v155, v156, v157);
      v163 = objc_msgSend_second(v141, v159, v160, v161, v162);
      objc_msgSend_replacePointerAtIndex_withPointer_(v158, v164, j - 1, v163, v165);

LABEL_36:
    }
  }
}

- (void)updateForTableSize:(id)a3
{
  var0 = a3.var0;
  var1 = a3.var1;
  v32 = objc_msgSend_topRowStrokes(self, a2, *&a3, v3, v4);
  objc_msgSend_setCount_(v32, v8, var1, v9, v10);

  v33 = objc_msgSend_bottomRowStrokes(self, v11, v12, v13, v14);
  objc_msgSend_setCount_(v33, v15, var1, v16, v17);

  v34 = objc_msgSend_leftColumnStrokes(self, v18, v19, v20, v21);
  objc_msgSend_setCount_(v34, v22, var0, v23, v24);

  v35 = objc_msgSend_rightColumnStrokes(self, v25, v26, v27, v28);
  objc_msgSend_setCount_(v35, v29, var0, v30, v31);
}

- (TSUCellRect)p_strokeRect
{
  v6 = objc_msgSend_count(self->_topRowStrokes, a2, v2, v3, v4);
  v11 = objc_msgSend_count(self->_bottomRowStrokes, v7, v8, v9, v10);
  if (v6 >= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = v6;
  }

  v17 = objc_msgSend_count(self->_leftColumnStrokes, v12, v13, v14, v15);
  v22 = objc_msgSend_count(self->_rightColumnStrokes, v18, v19, v20, v21);
  if (v17 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v17;
  }

  v24 = v23 | (v16 << 32);
  v25 = 0;
  result.size = v24;
  result.origin = v25;
  return result;
}

- (void)enumerateStrokesInRegion:(id)a3 usingTopStrokeBlock:(id)a4 usingBottomStrokeBlock:(id)a5 usingLeftStrokeBlock:(id)a6 usingRightStrokeBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21 = objc_msgSend_p_strokeRect(self, v17, v18, v19, v20);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2211DF084;
  v30[3] = &unk_278461098;
  v35 = v21;
  v36 = v22;
  v23 = v13;
  v30[4] = self;
  v31 = v23;
  v24 = v14;
  v32 = v24;
  v25 = v15;
  v33 = v25;
  v26 = v16;
  v34 = v26;
  objc_msgSend_enumerateCellRangesUsingBlock_(v12, v27, v30, v28, v29);
}

- (void)insertColumns:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v53 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, a3.location, a3.length, v3);
  v11 = objc_msgSend_leftColumnStrokes(self, v7, v8, v9, v10);
  objc_msgSend_tsu_insertRange_(v11, v12, location, length, v13);

  v18 = objc_msgSend_rightColumnStrokes(self, v14, v15, v16, v17);
  objc_msgSend_tsu_insertRange_(v18, v19, location, length, v20);

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v25 = objc_msgSend_topRowStrokes(self, v21, v22, v23, v24);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v47, v52, 16);
  if (v29)
  {
    v30 = *v48;
    do
    {
      v31 = 0;
      do
      {
        if (*v48 != v30)
        {
          objc_enumerationMutation(v25);
        }

        objc_msgSend_insertSpaceAtRange_(*(*(&v47 + 1) + 8 * v31++), v27, location, length, v28);
      }

      while (v29 != v31);
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v47, v52, 16);
    }

    while (v29);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = objc_msgSend_bottomRowStrokes(self, v32, v33, v34, v35, 0);
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v43, v51, 16);
  if (v40)
  {
    v41 = *v44;
    do
    {
      v42 = 0;
      do
      {
        if (*v44 != v41)
        {
          objc_enumerationMutation(v36);
        }

        objc_msgSend_insertSpaceAtRange_(*(*(&v43 + 1) + 8 * v42++), v38, location, length, v39);
      }

      while (v40 != v42);
      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v38, &v43, v51, 16);
    }

    while (v40);
  }
}

- (void)removeColumns:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v53 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, a3.location, a3.length, v3);
  v11 = objc_msgSend_leftColumnStrokes(self, v7, v8, v9, v10);
  objc_msgSend_tsu_removeRange_(v11, v12, location, length, v13);

  v18 = objc_msgSend_rightColumnStrokes(self, v14, v15, v16, v17);
  objc_msgSend_tsu_removeRange_(v18, v19, location, length, v20);

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v25 = objc_msgSend_topRowStrokes(self, v21, v22, v23, v24);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v47, v52, 16);
  if (v29)
  {
    v30 = *v48;
    do
    {
      v31 = 0;
      do
      {
        if (*v48 != v30)
        {
          objc_enumerationMutation(v25);
        }

        objc_msgSend_removeRange_(*(*(&v47 + 1) + 8 * v31++), v27, location, length, v28);
      }

      while (v29 != v31);
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v47, v52, 16);
    }

    while (v29);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = objc_msgSend_bottomRowStrokes(self, v32, v33, v34, v35, 0);
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v43, v51, 16);
  if (v40)
  {
    v41 = *v44;
    do
    {
      v42 = 0;
      do
      {
        if (*v44 != v41)
        {
          objc_enumerationMutation(v36);
        }

        objc_msgSend_removeRange_(*(*(&v43 + 1) + 8 * v42++), v38, location, length, v39);
      }

      while (v40 != v42);
      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v38, &v43, v51, 16);
    }

    while (v40);
  }
}

- (void)insertRows:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v53 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, a3.location, a3.length, v3);
  v11 = objc_msgSend_topRowStrokes(self, v7, v8, v9, v10);
  objc_msgSend_tsu_insertRange_(v11, v12, location, length, v13);

  v18 = objc_msgSend_bottomRowStrokes(self, v14, v15, v16, v17);
  objc_msgSend_tsu_insertRange_(v18, v19, location, length, v20);

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v25 = objc_msgSend_leftColumnStrokes(self, v21, v22, v23, v24);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v47, v52, 16);
  if (v29)
  {
    v30 = *v48;
    do
    {
      v31 = 0;
      do
      {
        if (*v48 != v30)
        {
          objc_enumerationMutation(v25);
        }

        objc_msgSend_insertSpaceAtRange_(*(*(&v47 + 1) + 8 * v31++), v27, location, length, v28);
      }

      while (v29 != v31);
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v47, v52, 16);
    }

    while (v29);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = objc_msgSend_rightColumnStrokes(self, v32, v33, v34, v35, 0);
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v43, v51, 16);
  if (v40)
  {
    v41 = *v44;
    do
    {
      v42 = 0;
      do
      {
        if (*v44 != v41)
        {
          objc_enumerationMutation(v36);
        }

        objc_msgSend_insertSpaceAtRange_(*(*(&v43 + 1) + 8 * v42++), v38, location, length, v39);
      }

      while (v40 != v42);
      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v38, &v43, v51, 16);
    }

    while (v40);
  }
}

- (void)removeRows:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v53 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, a3.location, a3.length, v3);
  v11 = objc_msgSend_topRowStrokes(self, v7, v8, v9, v10);
  objc_msgSend_tsu_removeRange_(v11, v12, location, length, v13);

  v18 = objc_msgSend_bottomRowStrokes(self, v14, v15, v16, v17);
  objc_msgSend_tsu_removeRange_(v18, v19, location, length, v20);

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v25 = objc_msgSend_leftColumnStrokes(self, v21, v22, v23, v24);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v47, v52, 16);
  if (v29)
  {
    v30 = *v48;
    do
    {
      v31 = 0;
      do
      {
        if (*v48 != v30)
        {
          objc_enumerationMutation(v25);
        }

        objc_msgSend_removeRange_(*(*(&v47 + 1) + 8 * v31++), v27, location, length, v28);
      }

      while (v29 != v31);
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v47, v52, 16);
    }

    while (v29);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = objc_msgSend_rightColumnStrokes(self, v32, v33, v34, v35, 0);
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v43, v51, 16);
  if (v40)
  {
    v41 = *v44;
    do
    {
      v42 = 0;
      do
      {
        if (*v44 != v41)
        {
          objc_enumerationMutation(v36);
        }

        objc_msgSend_removeRange_(*(*(&v43 + 1) + 8 * v42++), v38, location, length, v39);
      }

      while (v40 != v42);
      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v38, &v43, v51, 16);
    }

    while (v40);
  }
}

- (void)moveColumnIndexRange:(_NSRange)a3 toIndex:(unsigned __int16)a4
{
  v4 = a4;
  length = a3.length;
  location = a3.location;
  v125 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, a3.location, a3.length, a4);
  v113 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v8, v9, v10, v11);
  v114 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v12, v13, v14, v15);
  objc_msgSend_setCount_(v113, v16, length, v17, v18);
  objc_msgSend_setCount_(v114, v19, length, v20, v21);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v27 = objc_msgSend_leftColumnStrokes(self, v22, v23, v24, v25);
      v31 = objc_msgSend_pointerAtIndex_(v27, v28, location + i, v29, v30);

      v36 = objc_msgSend_rightColumnStrokes(self, v32, v33, v34, v35);
      v40 = objc_msgSend_pointerAtIndex_(v36, v37, location + i, v38, v39);

      objc_msgSend_replacePointerAtIndex_withPointer_(v113, v41, i, v31, v42);
      objc_msgSend_replacePointerAtIndex_withPointer_(v114, v43, i, v40, v44);
    }
  }

  v45 = objc_msgSend_leftColumnStrokes(self, v22, v23, v24, v25);
  objc_msgSend_tsu_removeRange_(v45, v46, location, length, v47);

  v52 = objc_msgSend_rightColumnStrokes(self, v48, v49, v50, v51);
  objc_msgSend_tsu_removeRange_(v52, v53, location, length, v54);

  if (location >= v4)
  {
    v59 = 0;
  }

  else
  {
    v59 = length;
  }

  v60 = objc_msgSend_leftColumnStrokes(self, v55, v56, v57, v58);
  v61 = (v4 - v59);
  objc_msgSend_tsu_insertRange_(v60, v62, v61, length, v63);

  v68 = objc_msgSend_rightColumnStrokes(self, v64, v65, v66, v67);
  objc_msgSend_tsu_insertRange_(v68, v69, v61, length, v70);

  if (length)
  {
    v75 = 0;
    v76 = v61;
    v77 = length;
    do
    {
      v78 = objc_msgSend_pointerAtIndex_(v113, v71, v75, v73, v74);
      v82 = objc_msgSend_pointerAtIndex_(v114, v79, v75, v80, v81);
      v87 = objc_msgSend_leftColumnStrokes(self, v83, v84, v85, v86);
      objc_msgSend_replacePointerAtIndex_withPointer_(v87, v88, v76, v78, v89);

      v94 = objc_msgSend_rightColumnStrokes(self, v90, v91, v92, v93);
      objc_msgSend_replacePointerAtIndex_withPointer_(v94, v95, v76, v82, v96);

      ++v75;
      ++v76;
      --v77;
    }

    while (v77);
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v97 = objc_msgSend_topRowStrokes(self, v71, v72, v73, v74);
  v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v98, &v119, v124, 16);
  if (v100)
  {
    v101 = *v120;
    do
    {
      for (j = 0; j != v100; ++j)
      {
        if (*v120 != v101)
        {
          objc_enumerationMutation(v97);
        }

        objc_msgSend_moveRange_toIndex_(*(*(&v119 + 1) + 8 * j), v99, location, length, v61);
      }

      v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v99, &v119, v124, 16);
    }

    while (v100);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v107 = objc_msgSend_bottomRowStrokes(self, v103, v104, v105, v106);
  v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v108, &v115, v123, 16);
  if (v110)
  {
    v111 = *v116;
    do
    {
      for (k = 0; k != v110; ++k)
      {
        if (*v116 != v111)
        {
          objc_enumerationMutation(v107);
        }

        objc_msgSend_moveRange_toIndex_(*(*(&v115 + 1) + 8 * k), v109, location, length, v61);
      }

      v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v109, &v115, v123, 16);
    }

    while (v110);
  }
}

- (void)moveRowIndexRange:(_NSRange)a3 toIndex:(unsigned int)a4
{
  length = a3.length;
  location = a3.location;
  v125 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, a3.location, a3.length, *&a4);
  v113 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v8, v9, v10, v11);
  v114 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v12, v13, v14, v15);
  objc_msgSend_setCount_(v113, v16, length, v17, v18);
  objc_msgSend_setCount_(v114, v19, length, v20, v21);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v27 = objc_msgSend_topRowStrokes(self, v22, v23, v24, v25);
      v31 = objc_msgSend_pointerAtIndex_(v27, v28, location + i, v29, v30);

      v36 = objc_msgSend_bottomRowStrokes(self, v32, v33, v34, v35);
      v40 = objc_msgSend_pointerAtIndex_(v36, v37, location + i, v38, v39);

      objc_msgSend_replacePointerAtIndex_withPointer_(v113, v41, i, v31, v42);
      objc_msgSend_replacePointerAtIndex_withPointer_(v114, v43, i, v40, v44);
    }
  }

  v45 = objc_msgSend_topRowStrokes(self, v22, v23, v24, v25);
  objc_msgSend_tsu_removeRange_(v45, v46, location, length, v47);

  v52 = objc_msgSend_bottomRowStrokes(self, v48, v49, v50, v51);
  objc_msgSend_tsu_removeRange_(v52, v53, location, length, v54);

  if (location >= a4)
  {
    v59 = 0;
  }

  else
  {
    v59 = length;
  }

  v60 = objc_msgSend_topRowStrokes(self, v55, v56, v57, v58);
  v61 = a4 - v59;
  objc_msgSend_tsu_insertRange_(v60, v62, v61, length, v63);

  v68 = objc_msgSend_bottomRowStrokes(self, v64, v65, v66, v67);
  objc_msgSend_tsu_insertRange_(v68, v69, v61, length, v70);

  if (length)
  {
    v75 = 0;
    v76 = v61;
    v77 = length;
    do
    {
      v78 = objc_msgSend_pointerAtIndex_(v113, v71, v75, v73, v74);
      v82 = objc_msgSend_pointerAtIndex_(v114, v79, v75, v80, v81);
      v87 = objc_msgSend_topRowStrokes(self, v83, v84, v85, v86);
      objc_msgSend_replacePointerAtIndex_withPointer_(v87, v88, v76, v78, v89);

      v94 = objc_msgSend_bottomRowStrokes(self, v90, v91, v92, v93);
      objc_msgSend_replacePointerAtIndex_withPointer_(v94, v95, v76, v82, v96);

      ++v75;
      ++v76;
      --v77;
    }

    while (v77);
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v97 = objc_msgSend_leftColumnStrokes(self, v71, v72, v73, v74);
  v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v98, &v119, v124, 16);
  if (v100)
  {
    v101 = *v120;
    do
    {
      v102 = 0;
      do
      {
        if (*v120 != v101)
        {
          objc_enumerationMutation(v97);
        }

        objc_msgSend_moveRange_toIndex_(*(*(&v119 + 1) + 8 * v102++), v99, location, length, v61);
      }

      while (v100 != v102);
      v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v99, &v119, v124, 16);
    }

    while (v100);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v107 = objc_msgSend_rightColumnStrokes(self, v103, v104, v105, v106);
  v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v108, &v115, v123, 16);
  if (v110)
  {
    v111 = *v116;
    do
    {
      v112 = 0;
      do
      {
        if (*v116 != v111)
        {
          objc_enumerationMutation(v107);
        }

        objc_msgSend_moveRange_toIndex_(*(*(&v115 + 1) + 8 * v112++), v109, location, length, v61);
      }

      while (v110 != v112);
      v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v109, &v115, v123, 16);
    }

    while (v110);
  }
}

- (void)swapRowAtIndex:(unsigned int)a3 withRowAtIndex:(unsigned int)a4
{
  v106 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, *&a3, *&a4, v4);
  v12 = objc_msgSend_topRowStrokes(self, v8, v9, v10, v11);
  v13 = a3;
  v95 = objc_msgSend_pointerAtIndex_(v12, v14, a3, v15, v16);

  v21 = objc_msgSend_bottomRowStrokes(self, v17, v18, v19, v20);
  v25 = objc_msgSend_pointerAtIndex_(v21, v22, a3, v23, v24);

  v30 = objc_msgSend_topRowStrokes(self, v26, v27, v28, v29);
  v31 = a4;
  v35 = objc_msgSend_pointerAtIndex_(v30, v32, a4, v33, v34);

  v40 = objc_msgSend_bottomRowStrokes(self, v36, v37, v38, v39);
  v44 = objc_msgSend_pointerAtIndex_(v40, v41, v31, v42, v43);

  v49 = objc_msgSend_topRowStrokes(self, v45, v46, v47, v48);
  objc_msgSend_replacePointerAtIndex_withPointer_(v49, v50, a3, v35, v51);

  v56 = objc_msgSend_bottomRowStrokes(self, v52, v53, v54, v55);
  objc_msgSend_replacePointerAtIndex_withPointer_(v56, v57, a3, v44, v58);

  v63 = objc_msgSend_topRowStrokes(self, v59, v60, v61, v62);
  objc_msgSend_replacePointerAtIndex_withPointer_(v63, v64, v31, v95, v65);

  v70 = objc_msgSend_bottomRowStrokes(self, v66, v67, v68, v69);
  objc_msgSend_replacePointerAtIndex_withPointer_(v70, v71, v31, v25, v72);

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v77 = objc_msgSend_leftColumnStrokes(self, v73, v74, v75, v76);
  v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, &v100, v105, 16);
  if (v81)
  {
    v82 = *v101;
    do
    {
      v83 = 0;
      do
      {
        if (*v101 != v82)
        {
          objc_enumerationMutation(v77);
        }

        objc_msgSend_swapSegmentAtIndex_withSegmentAtIndex_(*(*(&v100 + 1) + 8 * v83++), v79, v13, v31, v80);
      }

      while (v81 != v83);
      v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v79, &v100, v105, 16);
    }

    while (v81);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v88 = objc_msgSend_rightColumnStrokes(self, v84, v85, v86, v87);
  v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v96, v104, 16);
  if (v92)
  {
    v93 = *v97;
    do
    {
      v94 = 0;
      do
      {
        if (*v97 != v93)
        {
          objc_enumerationMutation(v88);
        }

        objc_msgSend_swapSegmentAtIndex_withSegmentAtIndex_(*(*(&v96 + 1) + 8 * v94++), v90, v13, v31, v91);
      }

      while (v92 != v94);
      v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v90, &v96, v104, 16);
    }

    while (v92);
  }
}

- (id)strokeLayerForLeftSideOfColumn:(unsigned __int16)a3
{
  v5 = a3;
  if (objc_msgSend_count(self->_leftColumnStrokes, a2, a3, v3, v4) <= a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_pointerAtIndex_(self->_leftColumnStrokes, v7, v5, v8, v9);
  }

  return v10;
}

- (id)strokeLayerForRightSideOfColumn:(unsigned __int16)a3
{
  v5 = a3;
  if (objc_msgSend_count(self->_rightColumnStrokes, a2, a3, v3, v4) <= a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_pointerAtIndex_(self->_rightColumnStrokes, v7, v5, v8, v9);
  }

  return v10;
}

- (id)strokeLayerForTopOfRow:(unsigned int)a3
{
  if (objc_msgSend_count(self->_topRowStrokes, a2, *&a3, v3, v4) <= a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_pointerAtIndex_(self->_topRowStrokes, v7, a3, v8, v9);
  }

  return v10;
}

- (id)strokeLayerForBottomOfRow:(unsigned int)a3
{
  if (objc_msgSend_count(self->_bottomRowStrokes, a2, *&a3, v3, v4) <= a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_pointerAtIndex_(self->_bottomRowStrokes, v7, a3, v8, v9);
  }

  return v10;
}

- (id)unretainedStrokeLayerForLeftSideOfColumn:(unsigned __int16)a3
{
  v5 = a3;
  if (objc_msgSend_count(self->_leftColumnStrokes, a2, a3, v3, v4) <= a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_pointerAtIndex_(self->_leftColumnStrokes, v7, v5, v8, v9);
  }

  return v10;
}

- (id)unretainedStrokeLayerForRightSideOfColumn:(unsigned __int16)a3
{
  v5 = a3;
  if (objc_msgSend_count(self->_rightColumnStrokes, a2, a3, v3, v4) <= a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_pointerAtIndex_(self->_rightColumnStrokes, v7, v5, v8, v9);
  }

  return v10;
}

- (id)unretainedStrokeLayerForTopOfRow:(unsigned int)a3
{
  if (objc_msgSend_count(self->_topRowStrokes, a2, *&a3, v3, v4) <= a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_pointerAtIndex_(self->_topRowStrokes, v7, a3, v8, v9);
  }

  return v10;
}

- (id)unretainedStrokeLayerForBottomOfRow:(unsigned int)a3
{
  if (objc_msgSend_count(self->_bottomRowStrokes, a2, *&a3, v3, v4) <= a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_pointerAtIndex_(self->_bottomRowStrokes, v7, a3, v8, v9);
  }

  return v10;
}

- (void)setBordersWithConcurrentCellMap:(id)a3 forTableInfo:(id)a4
{
  v5 = a3;
  objc_msgSend_willModify(self, v6, v7, v8, v9);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2211E0F48;
  v11[3] = &unk_27845FB10;
  v12 = v5;
  v13 = self;
  v10 = v5;
  dispatch_apply(4uLL, 0, v11);
}

- (vector<TSTCellBorder)accumulateCellBordersConcurrentlyInRow:(TSTStrokeSidecar *)self atColumns:(SEL)a3
{
  v5 = a5;
  v6 = *&a4._row;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  sub_2211E18CC(retstr, (*(a5 + 1) - *a5) >> 1);
  v12 = objc_msgSend_count(self->_leftColumnStrokes, v8, v9, v10, v11);
  v17 = objc_msgSend_count(self->_rightColumnStrokes, v13, v14, v15, v16);
  v123 = v6;
  if (objc_msgSend_count(self->_topRowStrokes, v18, v19, v20, v21) <= v6)
  {
    v26 = 0;
  }

  else
  {
    v26 = objc_msgSend_unretainedStrokeLayerForTopOfRow_(self, v22, v6, v24, v25);
  }

  result = objc_msgSend_count(self->_bottomRowStrokes, v22, v23, v24, v25);
  if (result <= v6)
  {
    v32 = 0;
  }

  else
  {
    v32 = objc_msgSend_unretainedStrokeLayerForBottomOfRow_(self, v28, v6, v30, v31);
  }

  v33 = *v5;
  if (v5[1] != *v5)
  {
    v34 = 0;
    v121 = v5;
    do
    {
      v35 = *(v33 + 2 * v34);
      if (v12 <= v35)
      {
        v36 = 0;
      }

      else
      {
        v36 = objc_msgSend_unretainedStrokeLayerForLeftSideOfColumn_(self, v28, *(v33 + 2 * v34), v30, v31);
      }

      if (v17 <= v35)
      {
        v37 = 0;
        if (v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v37 = objc_msgSend_unretainedStrokeLayerForRightSideOfColumn_(self, v28, v35, v30, v31);

        if (v26)
        {
          goto LABEL_19;
        }
      }

      if (v36 || v32 || v37)
      {
LABEL_19:
        v38 = v17;
        v39 = v12;
        v40 = self;
        v124 = objc_msgSend_cellBorder(TSTCellBorder, v28, v29, v30, v31);
        if (v26)
        {
          v44 = objc_msgSend_findStrokeAndRangeAtIndex_(v26, v41, v35, v42, v43);
          v49 = v44;
          if (v44)
          {
            v50 = objc_msgSend_range(v44, v45, v46, v47, v48);
            if (v51)
            {
              if (v50 <= v35 && &v51[v50 - 1] >= v35)
              {
                v120 = objc_msgSend_stroke(v49, v51, v52, v53, v54);
                v59 = objc_msgSend_order(v49, v55, v56, v57, v58);
                objc_msgSend_setTopStroke_order_(v124, v60, v120, v59, v61);
              }
            }
          }
        }

        if (v36)
        {
          v62 = objc_msgSend_findStrokeAndRangeAtIndex_(v36, v41, v123, v42, v43);
          v67 = v62;
          if (v62)
          {
            v68 = objc_msgSend_range(v62, v63, v64, v65, v66);
            if (v69)
            {
              if (v68 <= v123 && &v69[v68 - 1] >= v123)
              {
                v73 = objc_msgSend_stroke(v67, v69, v70, v71, v72);
                v78 = objc_msgSend_order(v67, v74, v75, v76, v77);
                objc_msgSend_setLeftStroke_order_(v124, v79, v73, v78, v80);
              }
            }
          }
        }

        if (v32)
        {
          v81 = objc_msgSend_findStrokeAndRangeAtIndex_(v32, v41, v35, v42, v43);
          v86 = v81;
          if (v81)
          {
            v87 = objc_msgSend_range(v81, v82, v83, v84, v85);
            if (v88)
            {
              if (v87 <= v35 && &v88[v87 - 1] >= v35)
              {
                v92 = objc_msgSend_stroke(v86, v88, v89, v90, v91);
                v97 = objc_msgSend_order(v86, v93, v94, v95, v96);
                objc_msgSend_setBottomStroke_order_(v124, v98, v92, v97, v99);
              }
            }
          }
        }

        if (v37)
        {
          v100 = objc_msgSend_findStrokeAndRangeAtIndex_(v37, v41, v123, v42, v43);
          v105 = v100;
          if (v100)
          {
            v106 = objc_msgSend_range(v100, v101, v102, v103, v104);
            if (v107)
            {
              if (v106 <= v123 && &v107[v106 - 1] >= v123)
              {
                v111 = objc_msgSend_stroke(v105, v107, v108, v109, v110);
                v116 = objc_msgSend_order(v105, v112, v113, v114, v115);
                objc_msgSend_setRightStroke_order_(v124, v117, v111, v116, v118);
              }
            }
          }
        }

        v119 = retstr->var0[v34];
        retstr->var0[v34] = v124;

        self = v40;
        v12 = v39;
        v17 = v38;
        v5 = v121;
      }

      ++v34;
      v33 = *v5;
    }

    while (v34 < (v5[1] - *v5) >> 1);
  }

  return result;
}

- (void)setStrokeLayer:(id)a3 forTopOfRow:(unsigned int)a4
{
  v24 = a3;
  v10 = objc_msgSend_topRowStrokes(self, v6, v7, v8, v9);
  v15 = objc_msgSend_count(v10, v11, v12, v13, v14);
  v16 = a4;

  if (v15 > a4)
  {
    v21 = objc_msgSend_topRowStrokes(self, v17, v18, v19, v20);
    objc_msgSend_replacePointerAtIndex_withPointer_(v21, v22, v16, v24, v23);
  }
}

- (void)setStrokeLayer:(id)a3 forBottomOfRow:(unsigned int)a4
{
  v24 = a3;
  v10 = objc_msgSend_bottomRowStrokes(self, v6, v7, v8, v9);
  v15 = objc_msgSend_count(v10, v11, v12, v13, v14);
  v16 = a4;

  if (v15 > a4)
  {
    v21 = objc_msgSend_bottomRowStrokes(self, v17, v18, v19, v20);
    objc_msgSend_replacePointerAtIndex_withPointer_(v21, v22, v16, v24, v23);
  }
}

- (void)setStrokeLayer:(id)a3 forLeftOfColumn:(unsigned __int16)a4
{
  v4 = a4;
  v24 = a3;
  v10 = objc_msgSend_leftColumnStrokes(self, v6, v7, v8, v9);
  v15 = objc_msgSend_count(v10, v11, v12, v13, v14);
  v16 = v4;

  if (v15 > v4)
  {
    v21 = objc_msgSend_leftColumnStrokes(self, v17, v18, v19, v20);
    objc_msgSend_replacePointerAtIndex_withPointer_(v21, v22, v16, v24, v23);
  }
}

- (void)setStrokeLayer:(id)a3 forRightOfColumn:(unsigned __int16)a4
{
  v4 = a4;
  v24 = a3;
  v10 = objc_msgSend_rightColumnStrokes(self, v6, v7, v8, v9);
  v15 = objc_msgSend_count(v10, v11, v12, v13, v14);
  v16 = v4;

  if (v15 > v4)
  {
    v21 = objc_msgSend_rightColumnStrokes(self, v17, v18, v19, v20);
    objc_msgSend_replacePointerAtIndex_withPointer_(v21, v22, v16, v24, v23);
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812E4498[96], v6, v7);

  v13 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v9, v10, v11, v12);
  leftColumnStrokes = self->_leftColumnStrokes;
  self->_leftColumnStrokes = v13;

  v19 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v15, v16, v17, v18);
  rightColumnStrokes = self->_rightColumnStrokes;
  self->_rightColumnStrokes = v19;

  v25 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v21, v22, v23, v24);
  topRowStrokes = self->_topRowStrokes;
  self->_topRowStrokes = v25;

  v31 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v27, v28, v29, v30);
  bottomRowStrokes = self->_bottomRowStrokes;
  self->_bottomRowStrokes = v31;

  objc_msgSend_setMaxOrder_(self, v33, v8[30], v34, v35);
  v37 = v8[31];
  v36 = v8[32];
  v42 = objc_msgSend_leftColumnStrokes(self, v38, v39, v40, v41);
  objc_msgSend_setCount_(v42, v43, v37, v44, v45);

  v50 = objc_msgSend_rightColumnStrokes(self, v46, v47, v48, v49);
  objc_msgSend_setCount_(v50, v51, v37, v52, v53);

  v58 = objc_msgSend_topRowStrokes(self, v54, v55, v56, v57);
  objc_msgSend_setCount_(v58, v59, v36, v60, v61);

  v66 = objc_msgSend_bottomRowStrokes(self, v62, v63, v64, v65);
  objc_msgSend_setCount_(v66, v67, v36, v68, v69);

  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = sub_2211E21E8;
  v88[3] = &unk_278461108;
  v88[4] = self;
  v89 = &unk_2834A2E28;
  v70 = v4;
  v71 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v70, v72, (v8 + 6), v71, 0, v88);

  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = sub_2211E2278;
  v86[3] = &unk_278461108;
  v86[4] = self;
  v87 = &unk_2834A2E28;
  v73 = v70;
  v74 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v73, v75, (v8 + 12), v74, 0, v86);

  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = sub_2211E2308;
  v84[3] = &unk_278461108;
  v84[4] = self;
  v85 = &unk_2834A2E28;
  v76 = v73;
  v77 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v76, v78, (v8 + 18), v77, 0, v84);

  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = sub_2211E2398;
  v82[3] = &unk_278461108;
  v82[4] = self;
  v83 = &unk_2834A2E28;
  v79 = v76;
  v80 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v79, v81, (v8 + 24), v80, 0, v82);
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_topRowStrokes(self, v5, v6, v7, v8);
  v14 = objc_msgSend_count(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_bottomRowStrokes(self, v15, v16, v17, v18);
  v24 = objc_msgSend_count(v19, v20, v21, v22, v23);

  if (v14 != v24)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTStrokeSidecar saveToArchiver:]", v27, v28);
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeSidecar.mm", v32, v33);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v35, v30, v34, 1021, 0, "top and bottom stroke run arrays have different counts");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  }

  v40 = objc_msgSend_leftColumnStrokes(self, v25, v26, v27, v28);
  v45 = objc_msgSend_count(v40, v41, v42, v43, v44);
  v50 = objc_msgSend_rightColumnStrokes(self, v46, v47, v48, v49);
  v55 = objc_msgSend_count(v50, v51, v52, v53, v54);

  if (v45 != v55)
  {
    v59 = MEMORY[0x277D81150];
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "[TSTStrokeSidecar saveToArchiver:]", v57, v58);
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeSidecar.mm", v62, v63);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v65, v60, v64, 1022, 0, "left and right stroke run arrays have different counts");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
  }

  v70 = v4;
  google::protobuf::internal::AssignDescriptors();
  v73 = objc_msgSend_messageWithNewFunction_descriptor_(v70, v71, sub_2211E35D0, off_2812E4498[96], v72);

  v78 = objc_msgSend_maxOrder(self, v74, v75, v76, v77);
  v73[4] |= 1u;
  v73[30] = v78;
  v83 = objc_msgSend_leftColumnStrokes(self, v79, v80, v81, v82);
  v88 = objc_msgSend_count(v83, v84, v85, v86, v87);
  v73[4] |= 2u;
  v73[31] = v88;

  v93 = objc_msgSend_topRowStrokes(self, v89, v90, v91, v92);
  v98 = objc_msgSend_count(v93, v94, v95, v96, v97);
  v73[4] |= 4u;
  v73[32] = v98;

  v103 = objc_msgSend_topRowStrokes(self, v99, v100, v101, v102);
  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 3221225472;
  v144[2] = sub_2211E290C;
  v144[3] = &unk_278461130;
  v104 = v70;
  v145 = v104;
  v146 = v73;
  objc_msgSend_tsu_enumerateNonNullPointersUsingBlock_(v103, v105, v144, v106, v107);

  v112 = objc_msgSend_leftColumnStrokes(self, v108, v109, v110, v111);
  v141[0] = MEMORY[0x277D85DD0];
  v141[1] = 3221225472;
  v141[2] = sub_2211E2A20;
  v141[3] = &unk_278461130;
  v113 = v104;
  v142 = v113;
  v143 = v73;
  objc_msgSend_tsu_enumerateNonNullPointersUsingBlock_(v112, v114, v141, v115, v116);

  v121 = objc_msgSend_bottomRowStrokes(self, v117, v118, v119, v120);
  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 3221225472;
  v138[2] = sub_2211E2B34;
  v138[3] = &unk_278461130;
  v122 = v113;
  v139 = v122;
  v140 = v73;
  objc_msgSend_tsu_enumerateNonNullPointersUsingBlock_(v121, v123, v138, v124, v125);

  v130 = objc_msgSend_rightColumnStrokes(self, v126, v127, v128, v129);
  v135[0] = MEMORY[0x277D85DD0];
  v135[1] = 3221225472;
  v135[2] = sub_2211E2C48;
  v135[3] = &unk_278461130;
  v131 = v122;
  v136 = v131;
  v137 = v73;
  objc_msgSend_tsu_enumerateNonNullPointersUsingBlock_(v130, v132, v135, v133, v134);
}

@end