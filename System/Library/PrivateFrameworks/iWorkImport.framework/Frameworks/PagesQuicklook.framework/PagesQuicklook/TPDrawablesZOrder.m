@interface TPDrawablesZOrder
- (TPDrawablesZOrder)initWithContext:(id)a3;
- (id)drawableAtZOrder:(unint64_t)a3;
- (id)orderedDrawables:(id)a3;
- (unint64_t)insertDrawable:(id)a3 atZOrder:(unint64_t)a4;
- (unint64_t)zOrderOfDrawable:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)moveDrawable:(id)a3 toZOrder:(unint64_t)a4;
- (void)moveDrawableAtZOrder:(unint64_t)a3 toZOrder:(unint64_t)a4;
- (void)moveDrawables:(id)a3 toIndexes:(id)a4;
- (void)moveDrawables:(id)a3 toZOrder:(unint64_t)a4;
- (void)removeDrawable:(id)a3;
- (void)removeDrawableAtZOrder:(unint64_t)a3;
- (void)saveToArchiver:(id)a3;
- (void)swapDrawableAtZOrder:(unint64_t)a3 withDrawableAtZOrder:(unint64_t)a4;
@end

@implementation TPDrawablesZOrder

- (TPDrawablesZOrder)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TPDrawablesZOrder;
  return [(TPDrawablesZOrder *)&v4 initWithContext:a3];
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v10 = objc_msgSend_messageWithDescriptor_(v4, v5, v6, v7, v8, v9, off_2812F85B8[18]);

  v11 = *(v10 + 24);
  if (v11)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_275FDE848;
    v18[3] = &unk_27A6A8740;
    v18[4] = self;
    v18[5] = v11;
    sub_275FDE79C(v4, v10 + 16, &unk_2885108A0, v18);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_275FDE9FC;
    v17[3] = &unk_27A6A8768;
    v17[4] = self;
    objc_msgSend_addFinalizeHandler_(v4, v12, v13, v14, v15, v16, v17);
  }
}

- (void)saveToArchiver:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v10 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, v6, v7, v8, v9, sub_275FDFB2C, off_2812F85B8[18]);

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = self->_drawables;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v13, v14, v15, v16, &v37, v41, 16);
  if (v18)
  {
    v23 = *v38;
    do
    {
      v24 = 0;
      do
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v11);
        }

        v25 = *(*(&v37 + 1) + 8 * v24);
        v26 = *(v10 + 32);
        if (!v26)
        {
          goto LABEL_11;
        }

        v27 = *(v10 + 24);
        v28 = *v26;
        if (v27 < *v26)
        {
          *(v10 + 24) = v27 + 1;
          objc_msgSend_setStrongReference_message_(v4, v17, v19, v20, v21, v22, v25, *&v26[2 * v27 + 2], v37);
          goto LABEL_13;
        }

        if (v28 == *(v10 + 28))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v10 + 16));
          v26 = *(v10 + 32);
          v28 = *v26;
        }

        *v26 = v28 + 1;
        v29 = MEMORY[0x277C92D60](*(v10 + 16));
        v30 = *(v10 + 24);
        v31 = *(v10 + 32) + 8 * v30;
        *(v10 + 24) = v30 + 1;
        *(v31 + 8) = v29;
        objc_msgSend_setStrongReference_message_(v4, v32, v33, v34, v35, v36, v25, v29, v37);
LABEL_13:
        ++v24;
      }

      while (v18 != v24);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, v19, v20, v21, v22, &v37, v41, 16);
    }

    while (v18);
  }
}

- (id)drawableAtZOrder:(unint64_t)a3
{
  drawables = self->_drawables;
  if (drawables)
  {
    if (objc_msgSend_count(drawables, a2, v3, v4, v5, v6) <= a3)
    {
      drawables = 0;
    }

    else
    {
      drawables = objc_msgSend_objectAtIndexedSubscript_(self->_drawables, v10, v11, v12, v13, v14, a3);
    }
  }

  return drawables;
}

- (unint64_t)zOrderOfDrawable:(id)a3
{
  v5 = a3;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5)
  {
    drawables = self->_drawables;
    if (drawables)
    {
      v10 = objc_msgSend_indexOfObjectIdenticalTo_(drawables, v4, v6, v7, v8, v9, v5);
    }
  }

  return v10;
}

- (void)moveDrawables:(id)a3 toIndexes:(id)a4
{
  v94 = a3;
  v7 = a4;
  if (v94 && v7)
  {
    v12 = objc_msgSend_count(self->_drawables, v6, v8, v9, v10, v11);
    v18 = objc_msgSend_count(v94, v13, v14, v15, v16, v17);
    v24 = objc_msgSend_count(v7, v19, v20, v21, v22, v23);
    Index = objc_msgSend_lastIndex(v7, v25, v26, v27, v28, v29);
    if (v18 != v24)
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v32, v33, v34, v35, "[TPDrawablesZOrder moveDrawables:toIndexes:]");
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDrawablesZOrder.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v44, v45, v46, v47, v48, v37, v43, 147, 0, "Can't move drawables to indexes, counts don't match.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52, v53);
    }

    if (Index >= v12)
    {
      v54 = MEMORY[0x277D81150];
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v32, v33, v34, v35, "[TPDrawablesZOrder moveDrawables:toIndexes:]");
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDrawablesZOrder.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v62, v63, v64, v65, v66, v55, v61, 148, 0, "Can't move drawables to indexes, one or more indexes out of range.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70, v71);
    }

    v72 = objc_msgSend_count(v94, v30, v32, v33, v34, v35);
    v78 = objc_msgSend_count(v7, v73, v74, v75, v76, v77);
    if (Index < v12 && v72 == v78)
    {
      objc_msgSend_willModify(self, v79, v80, v81, v82, v83);
      objc_msgSend_removeObjectsInArray_(self->_drawables, v84, v85, v86, v87, v88, v94);
      objc_msgSend_insertObjects_atIndexes_(self->_drawables, v89, v90, v91, v92, v93, v94, v7);
    }
  }
}

- (unint64_t)insertDrawable:(id)a3 atZOrder:(unint64_t)a4
{
  v7 = a3;
  v38 = v7;
  if (v7)
  {
    drawables = self->_drawables;
    if (drawables)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
      if (objc_msgSend_indexOfObjectIdenticalTo_(drawables, v6, v8, v9, v10, v11, v7) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = objc_msgSend_count(self->_drawables, v13, v14, v15, v16, v17);
        objc_msgSend_willModify(self, v19, v20, v21, v22, v23);
        if (v18 >= a4)
        {
          v18 = a4;
        }

        objc_msgSend_insertObject_atIndex_(self->_drawables, v24, v25, v26, v27, v28, v7, v18);
      }
    }

    else
    {
      objc_msgSend_willModify(self, v6, v8, v9, v10, v11);
      v29 = objc_alloc(MEMORY[0x277CBEB18]);
      v35 = objc_msgSend_initWithObjects_count_(v29, v30, v31, v32, v33, v34, &v38, 1);
      v36 = self->_drawables;
      self->_drawables = v35;

      v18 = 0;
      v7 = v38;
    }
  }

  else
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v18;
}

- (void)removeDrawableAtZOrder:(unint64_t)a3
{
  drawables = self->_drawables;
  if (drawables && objc_msgSend_count(drawables, a2, v3, v4, v5, v6) > a3)
  {
    objc_msgSend_willModify(self, v10, v11, v12, v13, v14);
    v20 = self->_drawables;

    objc_msgSend_removeObjectAtIndex_(v20, v15, v16, v17, v18, v19, a3);
  }
}

- (void)removeDrawable:(id)a3
{
  v15 = a3;
  v9 = objc_msgSend_zOrderOfDrawable_(self, v4, v5, v6, v7, v8);
  objc_msgSend_removeDrawableAtZOrder_(self, v10, v11, v12, v13, v14, v9);
}

- (void)moveDrawableAtZOrder:(unint64_t)a3 toZOrder:(unint64_t)a4
{
  if (a3 != a4 && a3 + 1 != a4)
  {
    v11 = objc_msgSend_count(self->_drawables, a2, v4, v5, v6, v7);
    if (a4 != 0xFFFFFFFF || v11 - 1 != a3)
    {
      objc_msgSend_willModify(self, v12, v13, v14, v15, v16);
      v38 = objc_msgSend_objectAtIndexedSubscript_(self->_drawables, v17, v18, v19, v20, v21, a3);
      objc_msgSend_removeObjectAtIndex_(self->_drawables, v22, v23, v24, v25, v26, a3);
      if (a4 == 0xFFFFFFFF)
      {
        v32 = objc_msgSend_count(self->_drawables, v27, v28, v29, v30, v31);
      }

      else
      {
        v32 = (__PAIR128__(a4, a3) - a4) >> 64;
      }

      if (v32 > objc_msgSend_count(self->_drawables, v27, v28, v29, v30, v31))
      {
        v32 = objc_msgSend_count(self->_drawables, v33, v34, v35, v36, v37);
      }

      objc_msgSend_insertObject_atIndex_(self->_drawables, v33, v34, v35, v36, v37, v38, v32);
    }
  }
}

- (void)moveDrawable:(id)a3 toZOrder:(unint64_t)a4
{
  v17 = a3;
  v11 = objc_msgSend_zOrderOfDrawable_(self, v6, v7, v8, v9, v10);
  objc_msgSend_moveDrawableAtZOrder_toZOrder_(self, v12, v13, v14, v15, v16, v11, a4);
}

- (void)moveDrawables:(id)a3 toZOrder:(unint64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = a3;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, v8, v9, v10, v11, &v20, v24, 16);
  if (v13)
  {
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_moveDrawable_toZOrder_(self, v12, v14, v15, v16, v17, *(*(&v20 + 1) + 8 * v19), a4, v20);
        if (a4 != 0xFFFFFFFF)
        {
          ++a4;
        }

        ++v19;
      }

      while (v13 != v19);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v12, v14, v15, v16, v17, &v20, v24, 16);
    }

    while (v13);
  }
}

- (void)swapDrawableAtZOrder:(unint64_t)a3 withDrawableAtZOrder:(unint64_t)a4
{
  v11 = objc_msgSend_count(self->_drawables, a2, v4, v5, v6, v7);
  if (a3 != a4 && v11 > a3 && v11 > a4)
  {
    objc_msgSend_willModify(self, v12, v13, v14, v15, v16);
    drawables = self->_drawables;

    MEMORY[0x2821F9670](drawables, sel_exchangeObjectAtIndex_withObjectAtIndex_, v18, v19, v20, v21);
  }
}

- (id)orderedDrawables:(id)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && self->_drawables)
  {
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v67 = v4;
    if (objc_opt_respondsToSelector())
    {
      v10 = objc_msgSend_count(v67, v5, v6, v7, v8, v9);
      sub_275FDF91C(&v75, v10);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v67;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, v12, v13, v14, v15, &v71, v78, 16);
    if (v17)
    {
      v69 = *v72;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v72 != v69)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v71 + 1) + 8 * i);
          j = objc_msgSend_indexOfObjectIdenticalTo_(self->_drawables, v16, v18, v19, v20, v21, v23);
          isInlineWithText = objc_msgSend_isInlineWithText(v23, v25, v26, v27, v28, v29);
          if (j == 0x7FFFFFFFFFFFFFFFLL)
          {
            v31 = isInlineWithText;
          }

          else
          {
            v31 = 0;
          }

          if (v31 == 1)
          {
            v33 = v23;
            for (j = 0x7FFFFFFFFFFFFFFFLL; j == 0x7FFFFFFFFFFFFFFFLL; j = objc_msgSend_indexOfObjectIdenticalTo_(self->_drawables, v39, v40, v41, v42, v43, v38))
            {
              v38 = objc_msgSend_parentInfo(v33, v32, v34, v35, v36, v37);

              if (!v38)
              {
                v33 = 0;
                break;
              }

              v33 = v38;
            }
          }

          if (j != 0x7FFFFFFFFFFFFFFFLL)
          {
            v45 = v75;
            v44 = v76;
            v46 = v23;
            if (v44 != v45)
            {
              v47 = (v44 - v45) >> 4;
              do
              {
                v48 = v47 >> 1;
                v49 = v45 + 16 * (v47 >> 1);
                v50 = *(v49 + 8);
                v51 = v49 + 16;
                v47 += ~(v47 >> 1);
                if (v50 < j)
                {
                  v45 = v51;
                }

                else
                {
                  v47 = v48;
                }
              }

              while (v47);
              v44 = v45;
            }

            v52 = v46;
            v70[0] = v52;
            v70[1] = j;
            sub_275FDF9D8(&v75, v44, v70);
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, v18, v19, v20, v21, &v71, v78, 16);
      }

      while (v17);
    }

    if (v76 == v75)
    {
      v59 = 0;
    }

    else
    {
      v59 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v53, v54, v55, v56, v57, (v76 - v75) >> 4);
      v64 = v75;
      v65 = v76;
      while (v64 != v65)
      {
        objc_msgSend_addObject_(v59, v58, v60, v61, v62, v63, *v64);
        v64 += 2;
      }
    }

    v70[0] = &v75;
    sub_275FDFB98(v70);
    v4 = v67;
  }

  else
  {
    v59 = 0;
  }

  return v59;
}

@end