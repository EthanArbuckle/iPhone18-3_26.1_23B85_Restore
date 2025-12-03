@interface TSTCellBorder
+ (id)cellBorder;
+ (id)cellBorderForResettingAllStrokes;
+ (id)cellDiffProperties;
- (BOOL)hasContent;
- (BOOL)hasEqualStrokes:(id)strokes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromMessage:(const void *)message unarchiver:(id)unarchiver;
- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap;
- (void)_clearBottomStroke;
- (void)_clearLeftStroke;
- (void)_clearRightStroke;
- (void)_clearTopStroke;
- (void)applyToCell:(id)cell;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
- (void)setBottomStroke:(id)stroke order:(int)order;
- (void)setLeftStroke:(id)stroke order:(int)order;
- (void)setRightStroke:(id)stroke order:(int)order;
- (void)setTopStroke:(id)stroke order:(int)order;
@end

@implementation TSTCellBorder

+ (id)cellBorder
{
  v2 = objc_alloc_init(TSTCellBorder);

  return v2;
}

+ (id)cellBorderForResettingAllStrokes
{
  v5 = objc_msgSend_cellBorder(TSTCellBorder, a2, v2, v3, v4);
  objc_msgSend_setTopStroke_order_(v5, v6, 0, 0, v7);
  objc_msgSend_setBottomStroke_order_(v5, v8, 0, 0, v9);
  objc_msgSend_setLeftStroke_order_(v5, v10, 0, 0, v11);
  objc_msgSend_setRightStroke_order_(v5, v12, 0, 0, v13);

  return v5;
}

- (void)setTopStroke:(id)stroke order:(int)order
{
  objc_storeStrong(&self->_topStroke, stroke);
  self->_topStrokeOrder = order;
  *&self->_definedTopStroke = 257;
}

- (void)setLeftStroke:(id)stroke order:(int)order
{
  objc_storeStrong(&self->_leftStroke, stroke);
  self->_leftStrokeOrder = order;
  *&self->_definedLeftStroke = 257;
}

- (void)setBottomStroke:(id)stroke order:(int)order
{
  objc_storeStrong(&self->_bottomStroke, stroke);
  self->_bottomStrokeOrder = order;
  *&self->_definedBottomStroke = 257;
}

- (void)setRightStroke:(id)stroke order:(int)order
{
  objc_storeStrong(&self->_rightStroke, stroke);
  self->_rightStrokeOrder = order;
  *&self->_definedRightStroke = 257;
}

- (void)_clearTopStroke
{
  topStroke = self->_topStroke;
  self->_topStroke = 0;

  self->_topStrokeOrder = 0;
  *&self->_definedTopStroke = 0;
}

- (void)_clearLeftStroke
{
  leftStroke = self->_leftStroke;
  self->_leftStroke = 0;

  self->_leftStrokeOrder = 0;
  *&self->_definedLeftStroke = 0;
}

- (void)_clearBottomStroke
{
  bottomStroke = self->_bottomStroke;
  self->_bottomStroke = 0;

  self->_bottomStrokeOrder = 0;
  *&self->_definedBottomStroke = 0;
}

- (void)_clearRightStroke
{
  rightStroke = self->_rightStroke;
  self->_rightStroke = 0;

  self->_rightStrokeOrder = 0;
  *&self->_definedRightStroke = 0;
}

- (void)applyToCell:(id)cell
{
  v53 = objc_msgSend_cellBorder(cell, a2, cell, v3, v4);
  if (!v53)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCellBorder applyToCell:]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellBorder.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 118, 0, "invalid nil value for '%{public}s'", "currentCellBorder");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (self->_definedTopStroke)
  {
    if (self->_topStroke)
    {
      v21 = objc_msgSend_topStroke(self, v6, v7, v8, v9);
      v26 = objc_msgSend_topStrokeOrder(self, v22, v23, v24, v25);
      objc_msgSend_setTopStroke_order_(v53, v27, v21, v26, v28);
    }

    else
    {
      objc_msgSend__clearTopStroke(v53, v6, v7, v8, v9);
    }
  }

  if (self->_definedLeftStroke)
  {
    if (self->_leftStroke)
    {
      v29 = objc_msgSend_leftStroke(self, v6, v7, v8, v9);
      v34 = objc_msgSend_leftStrokeOrder(self, v30, v31, v32, v33);
      objc_msgSend_setLeftStroke_order_(v53, v35, v29, v34, v36);
    }

    else
    {
      objc_msgSend__clearLeftStroke(v53, v6, v7, v8, v9);
    }
  }

  if (self->_definedBottomStroke)
  {
    if (self->_bottomStroke)
    {
      v37 = objc_msgSend_bottomStroke(self, v6, v7, v8, v9);
      v42 = objc_msgSend_bottomStrokeOrder(self, v38, v39, v40, v41);
      objc_msgSend_setBottomStroke_order_(v53, v43, v37, v42, v44);
    }

    else
    {
      objc_msgSend__clearBottomStroke(v53, v6, v7, v8, v9);
    }
  }

  if (self->_definedRightStroke)
  {
    if (self->_rightStroke)
    {
      v45 = objc_msgSend_rightStroke(self, v6, v7, v8, v9);
      v50 = objc_msgSend_rightStrokeOrder(self, v46, v47, v48, v49);
      objc_msgSend_setRightStroke_order_(v53, v51, v45, v50, v52);
    }

    else
    {
      objc_msgSend__clearRightStroke(v53, v6, v7, v8, v9);
    }
  }
}

- (BOOL)hasContent
{
  v10 = objc_msgSend_topStroke(self, a2, v2, v3, v4);
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v16 = objc_msgSend_leftStroke(self, v6, v7, v8, v9);
    if (v16)
    {
      v11 = 1;
    }

    else
    {
      v21 = objc_msgSend_bottomStroke(self, v12, v13, v14, v15);
      if (v21)
      {
        v11 = 1;
      }

      else
      {
        v22 = objc_msgSend_rightStroke(self, v17, v18, v19, v20);
        v11 = v22 != 0;
      }
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6 = objc_msgSend_allocWithZone_(TSTCellBorder, a2, zone, v3, v4);
  v15 = objc_msgSend_init(v6, v7, v8, v9, v10);
  if (self->_definedTopStroke)
  {
    v16 = objc_msgSend_topStroke(self, v11, v12, v13, v14);
    v21 = objc_msgSend_topStrokeOrder(self, v17, v18, v19, v20);
    objc_msgSend_setTopStroke_order_(v15, v22, v16, v21, v23);
  }

  if (self->_definedLeftStroke)
  {
    v24 = objc_msgSend_leftStroke(self, v11, v12, v13, v14);
    v29 = objc_msgSend_leftStrokeOrder(self, v25, v26, v27, v28);
    objc_msgSend_setLeftStroke_order_(v15, v30, v24, v29, v31);
  }

  if (self->_definedBottomStroke)
  {
    v32 = objc_msgSend_bottomStroke(self, v11, v12, v13, v14);
    v37 = objc_msgSend_bottomStrokeOrder(self, v33, v34, v35, v36);
    objc_msgSend_setBottomStroke_order_(v15, v38, v32, v37, v39);
  }

  if (self->_definedRightStroke)
  {
    v40 = objc_msgSend_rightStroke(self, v11, v12, v13, v14);
    v45 = objc_msgSend_rightStrokeOrder(self, v41, v42, v43, v44);
    objc_msgSend_setRightStroke_order_(v15, v46, v40, v45, v47);
  }

  return v15;
}

- (id)initFromMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v13 = objc_msgSend_init(self, v7, v8, v9, v10);
  if (v13)
  {
    v14 = *(message + 4);
    if ((v14 & 0x10) != 0)
    {
      if (v14)
      {
        v15 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(message + 3), unarchiverCopy, v12);
        v16 = *(v13 + 8);
        *(v13 + 8) = v15;
      }

      *(v13 + 16) = *(message + 14);
      *(v13 + 68) = 257;
      v14 = *(message + 4);
    }

    if ((v14 & 0x80) != 0)
    {
      if ((v14 & 8) != 0)
      {
        v17 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(message + 6), unarchiverCopy, v12);
        v18 = *(v13 + 56);
        *(v13 + 56) = v17;
      }

      *(v13 + 64) = *(message + 17);
      *(v13 + 74) = 257;
      v14 = *(message + 4);
    }

    if ((v14 & 0x40) != 0)
    {
      if ((v14 & 4) != 0)
      {
        v19 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(message + 5), unarchiverCopy, v12);
        v20 = *(v13 + 40);
        *(v13 + 40) = v19;
      }

      *(v13 + 48) = *(message + 16);
      *(v13 + 72) = 257;
      v14 = *(message + 4);
    }

    if ((v14 & 0x20) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v21 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(message + 4), unarchiverCopy, v12);
        v22 = *(v13 + 24);
        *(v13 + 24) = v21;
      }

      *(v13 + 32) = *(message + 15);
      *(v13 + 70) = 257;
    }
  }

  return v13;
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  if (self->_definedTopStroke)
  {
    if (self->_topStroke)
    {
      v12 = objc_msgSend_topStroke(self, v6, v7, v8, v9);
      *(message + 4) |= 1u;
      v13 = *(message + 3);
      if (!v13)
      {
        v14 = *(message + 1);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x223DA0290](v14);
        *(message + 3) = v13;
      }

      objc_msgSend_saveToArchive_archiver_(v12, v10, v13, archiverCopy, v11);
    }

    v15 = objc_msgSend_topStrokeOrder(self, v6, v7, v8, v9);
    *(message + 4) |= 0x10u;
    *(message + 14) = v15;
  }

  if (self->_definedLeftStroke)
  {
    if (self->_leftStroke)
    {
      v18 = objc_msgSend_leftStroke(self, v6, v7, v8, v9);
      *(message + 4) |= 8u;
      v19 = *(message + 6);
      if (!v19)
      {
        v20 = *(message + 1);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = MEMORY[0x223DA0290](v20);
        *(message + 6) = v19;
      }

      objc_msgSend_saveToArchive_archiver_(v18, v16, v19, archiverCopy, v17);
    }

    v21 = objc_msgSend_leftStrokeOrder(self, v6, v7, v8, v9);
    *(message + 4) |= 0x80u;
    *(message + 17) = v21;
  }

  if (self->_definedBottomStroke)
  {
    if (self->_bottomStroke)
    {
      v24 = objc_msgSend_bottomStroke(self, v6, v7, v8, v9);
      *(message + 4) |= 4u;
      v25 = *(message + 5);
      if (!v25)
      {
        v26 = *(message + 1);
        if (v26)
        {
          v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
        }

        v25 = MEMORY[0x223DA0290](v26);
        *(message + 5) = v25;
      }

      objc_msgSend_saveToArchive_archiver_(v24, v22, v25, archiverCopy, v23);
    }

    v27 = objc_msgSend_bottomStrokeOrder(self, v6, v7, v8, v9);
    *(message + 4) |= 0x40u;
    *(message + 16) = v27;
  }

  if (self->_definedRightStroke)
  {
    if (self->_rightStroke)
    {
      v30 = objc_msgSend_rightStroke(self, v6, v7, v8, v9);
      *(message + 4) |= 2u;
      v31 = *(message + 4);
      if (!v31)
      {
        v32 = *(message + 1);
        if (v32)
        {
          v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
        }

        v31 = MEMORY[0x223DA0290](v32);
        *(message + 4) = v31;
      }

      objc_msgSend_saveToArchive_archiver_(v30, v28, v31, archiverCopy, v29);
    }

    v33 = objc_msgSend_rightStrokeOrder(self, v6, v7, v8, v9);
    *(message + 4) |= 0x20u;
    *(message + 15) = v33;
  }
}

+ (id)cellDiffProperties
{
  if (qword_27CFB5490 != -1)
  {
    sub_2216F7884();
  }

  v3 = qword_27CFB5488;

  return v3;
}

- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap
{
  inMapCopy = inMap;
  setPropertyMapCopy = setPropertyMap;
  v17 = objc_msgSend_objectForProperty_(map, v11, 912, v12, v13);
  if (v17)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTCellBorder objectByRemovingPropertiesInMap:addingPropertiesInMap:updateInverseResetPropertyMap:updateInverseSetPropertyMap:]", v15, v16);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellBorder.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 290, 0, "shouldn't remove the cell border from a cell");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_objectForProperty_(inMapCopy, v14, 912, v15, v16);
  v34 = objc_msgSend_cellBorder(TSTCellBorder, v30, v31, v32, v33);
  if (objc_msgSend_definedTopStroke(v29, v35, v36, v37, v38))
  {
    v43 = objc_msgSend_topStroke(self, v39, v40, v41, v42);
    v48 = objc_msgSend_topStrokeOrder(self, v44, v45, v46, v47);
    objc_msgSend_setTopStroke_order_(v34, v49, v43, v48, v50);
  }

  if (objc_msgSend_definedLeftStroke(v29, v39, v40, v41, v42))
  {
    v55 = objc_msgSend_leftStroke(self, v51, v52, v53, v54);
    v60 = objc_msgSend_leftStrokeOrder(self, v56, v57, v58, v59);
    objc_msgSend_setLeftStroke_order_(v34, v61, v55, v60, v62);
  }

  if (objc_msgSend_definedBottomStroke(v29, v51, v52, v53, v54))
  {
    v67 = objc_msgSend_bottomStroke(self, v63, v64, v65, v66);
    v72 = objc_msgSend_bottomStrokeOrder(self, v68, v69, v70, v71);
    objc_msgSend_setBottomStroke_order_(v34, v73, v67, v72, v74);
  }

  if (objc_msgSend_definedRightStroke(v29, v63, v64, v65, v66))
  {
    v79 = objc_msgSend_rightStroke(self, v75, v76, v77, v78);
    v84 = objc_msgSend_rightStrokeOrder(self, v80, v81, v82, v83);
    objc_msgSend_setRightStroke_order_(v34, v85, v79, v84, v86);
  }

  objc_msgSend_setObject_forProperty_(setPropertyMapCopy, v75, v34, 912, v78);

  return v29;
}

- (BOOL)hasEqualStrokes:(id)strokes
{
  strokesCopy = strokes;
  v9 = strokesCopy;
  if (strokesCopy && (definedTopStroke = self->_definedTopStroke, definedTopStroke == objc_msgSend_definedTopStroke(strokesCopy, v5, v6, v7, v8)) && (definedLeftStroke = self->_definedLeftStroke, definedLeftStroke == objc_msgSend_definedLeftStroke(v9, v11, v12, v13, v14)) && (definedBottomStroke = self->_definedBottomStroke, definedBottomStroke == objc_msgSend_definedBottomStroke(v9, v16, v17, v18, v19)) && (definedRightStroke = self->_definedRightStroke, definedRightStroke == objc_msgSend_definedRightStroke(v9, v21, v22, v23, v24)) && (!self->_definedTopStroke || (topStroke = self->_topStroke, objc_msgSend_topStroke(v9, v26, v27, v28, v29), v31 = objc_claimAutoreleasedReturnValue(), LOBYTE(topStroke) = objc_msgSend_isEqual_(topStroke, v32, v31, v33, v34), v31, (topStroke & 1) != 0)) && (!self->_definedLeftStroke || (leftStroke = self->_leftStroke, objc_msgSend_leftStroke(v9, v26, v27, v28, v29), v36 = objc_claimAutoreleasedReturnValue(), LOBYTE(leftStroke) = objc_msgSend_isEqual_(leftStroke, v37, v36, v38, v39), v36, (leftStroke & 1) != 0)) && (!self->_definedRightStroke || (rightStroke = self->_rightStroke, objc_msgSend_rightStroke(v9, v26, v27, v28, v29), v41 = objc_claimAutoreleasedReturnValue(), LOBYTE(rightStroke) = objc_msgSend_isEqual_(rightStroke, v42, v41, v43, v44), v41, (rightStroke & 1) != 0)))
  {
    if (self->_definedBottomStroke)
    {
      bottomStroke = self->_bottomStroke;
      v46 = objc_msgSend_bottomStroke(v9, v26, v27, v28, v29);
      isEqual = objc_msgSend_isEqual_(bottomStroke, v47, v46, v48, v49);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual & 1;
}

@end