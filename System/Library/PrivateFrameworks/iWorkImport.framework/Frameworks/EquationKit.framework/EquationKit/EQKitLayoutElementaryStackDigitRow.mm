@interface EQKitLayoutElementaryStackDigitRow
- (EQKitLayoutElementaryStackDigitRow)initWithChildren:(id)children decimalPoint:(unint64_t)point position:(int64_t)position followingSpace:(double)space;
- (id)newBoxWithStackWidth:(double)width columnWidthIter:(__wrap_iter<double *>)iter iterMax:(__wrap_iter<double *>)max previousRow:(id)row layoutManager:(const void *)manager;
- (id)p_crossoutDigitBox:(id)box crossout:(int)crossout layoutManager:(const void *)manager;
- (void)dealloc;
- (void)populateMaxColumnWidths:(__wrap_iter<double *>)widths;
@end

@implementation EQKitLayoutElementaryStackDigitRow

- (EQKitLayoutElementaryStackDigitRow)initWithChildren:(id)children decimalPoint:(unint64_t)point position:(int64_t)position followingSpace:(double)space
{
  v14.receiver = self;
  v14.super_class = EQKitLayoutElementaryStackDigitRow;
  v10 = [(EQKitLayoutElementaryStackDigitRow *)&v14 init];
  if (v10)
  {
    childrenCopy = children;
    v10->mFollowingSpace = space;
    v12 = v10->mAlignmentShift - (position + point);
    v10->mColumnBoxes = childrenCopy;
    v10->mAlignmentShift = v12;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitLayoutElementaryStackDigitRow;
  [(EQKitLayoutElementaryStackDigitRow *)&v3 dealloc];
}

- (void)populateMaxColumnWidths:(__wrap_iter<double *>)widths
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mColumnBoxes = self->mColumnBoxes;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(mColumnBoxes, a2, &v13, v17, 16);
  if (v5)
  {
    v9 = v5;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(mColumnBoxes);
        }

        objc_msgSend_width(*(*(&v13 + 1) + 8 * i), v6, v7, v8);
        if (*widths.var0 >= v12)
        {
          v12 = *widths.var0;
        }

        *widths.var0 = v12;
        widths.var0 += 8;
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(mColumnBoxes, v6, &v13, v17, 16);
    }

    while (v9);
  }
}

- (id)p_crossoutDigitBox:(id)box crossout:(int)crossout layoutManager:(const void *)manager
{
  boxCopy = box;
  if (crossout)
  {
    objc_msgSend_width(box, a2, box, *&crossout);
    if (v11 != 0.0)
    {
      objc_msgSend_height(boxCopy, v8, v9, v10);
      if (v12 != 0.0)
      {
        if ((crossout - 2) >= 3)
        {
          crossoutCopy = 1;
        }

        else
        {
          crossoutCopy = crossout;
        }

        v14 = sub_275CA36B0(manager, boxCopy, crossoutCopy);
        v15 = [EQKitPathBox alloc];
        objc_msgSend_height(boxCopy, v16, v17, v18);
        v20 = v19;
        v21 = *(sub_275CA3150(manager) + 112);
        v22 = sub_275CA3150(manager);
        v24 = v22;
        v25 = *(v22 + 88);
        if (*(v22 + 120))
        {
          v23.n128_u64[0] = *(v22 + 128);
        }

        else
        {
          v23.n128_f64[0] = sub_275CB80C0(v22);
        }

        v26 = (*(*v25 + 40))(v25, 23, v24 + 8, v23);
        v28 = objc_msgSend_initWithCGPath_height_cgColor_drawingMode_lineWidth_(v15, v27, v14, v21, 2, v20, v26);
        v29 = [EQKitOverlayBox alloc];
        boxCopy = objc_msgSend_initWithBox_overlayBox_(v29, v30, boxCopy, v28);

        CGPathRelease(v14);
      }
    }
  }

  return boxCopy;
}

- (id)newBoxWithStackWidth:(double)width columnWidthIter:(__wrap_iter<double *>)iter iterMax:(__wrap_iter<double *>)max previousRow:(id)row layoutManager:(const void *)manager
{
  v65 = *MEMORY[0x277D85DE8];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    row = 0;
  }

  mFirstColumnIndex = self->mFirstColumnIndex;
  ColumnIndex = objc_msgSend_firstColumnIndex(row, v11, v12, v13);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  selfCopy = self;
  obj = self->mColumnBoxes;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v60, v64, 16);
  if (v17)
  {
    v20 = v17;
    v21 = mFirstColumnIndex - ColumnIndex;
    v59 = *v61;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v61 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v60 + 1) + 8 * i);
        v24 = *iter.var0;
        if (row && (v21 & 0x8000000000000000) == 0)
        {
          v25 = objc_msgSend_crossoutAtColumnIndex_(row, v18, v21, v19);
          v23 = objc_msgSend_p_crossoutDigitBox_crossout_layoutManager_(selfCopy, v26, v23, v25, manager);
        }

        v27 = [EQKitHSpace alloc];
        objc_msgSend_width(v23, v28, v29, v30);
        v35 = objc_msgSend_initWithWidth_(v27, v32, v33, v34, (v24 - v31) * 0.5);
        v36 = [EQKitHSpace alloc];
        objc_msgSend_width(v23, v37, v38, v39);
        v44 = objc_msgSend_initWithWidth_(v36, v41, v42, v43, (v24 - v40) * 0.5);
        objc_msgSend_addObject_(v10, v45, v35, v46);
        objc_msgSend_addObject_(v10, v47, v23, v48);
        objc_msgSend_addObject_(v10, v49, v44, v50);

        iter.var0 += 8;
        ++v21;
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v60, v64, 16);
    }

    while (v20);
  }

  v51 = [EQKitHBox alloc];
  v54 = objc_msgSend_initWithChildBoxes_(v51, v52, v10, v53);

  return v54;
}

@end