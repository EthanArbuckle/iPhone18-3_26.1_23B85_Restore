@interface TSTLayoutProcessChangesActions
- (TSTLayoutProcessChangesActions)init;
- (void)layoutSpacesInvalidateCoordinatesAfterRow:(id)row;
@end

@implementation TSTLayoutProcessChangesActions

- (TSTLayoutProcessChangesActions)init
{
  v3.receiver = self;
  v3.super_class = TSTLayoutProcessChangesActions;
  result = [(TSTLayoutProcessChangesActions *)&v3 init];
  if (result)
  {
    result->_editingCellIDForInvalidation = 0x7FFF7FFFFFFFLL;
    result->_layoutSpacesInvalidateCoordinatesAfterRow = 0x7FFFFFFF;
  }

  return result;
}

- (void)layoutSpacesInvalidateCoordinatesAfterRow:(id)row
{
  rowCopy = row;
  v13 = objc_msgSend_cellRegion(rowCopy, v5, v6, v7, v8);
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = objc_msgSend_cellRegion(rowCopy, v9, v10, v11, v12);
  if (objc_msgSend_isEmpty(v14, v15, v16, v17, v18))
  {

LABEL_8:
    v31 = 0x7FFFFFFF;
    goto LABEL_9;
  }

  v23 = objc_msgSend_cellRegion(rowCopy, v19, v20, v21, v22);

  if (!v23)
  {
    goto LABEL_8;
  }

  v24 = objc_msgSend_cellRegion(rowCopy, v9, v10, v11, v12);
  v63.origin = objc_msgSend_boundingCellRange(v24, v25, v26, v27, v28);
  v63.size = v29;
  v30 = TSUCellRect::firstRow(&v63);

  if (v30 >= 0x7FFFFFFF)
  {
    v31 = 0x7FFFFFFF;
  }

  else
  {
    v31 = v30;
  }

LABEL_9:
  v36 = objc_msgSend_strokeRegion(rowCopy, v9, v10, v11, v12);
  if (v36)
  {
    v37 = objc_msgSend_strokeRegion(rowCopy, v32, v33, v34, v35);
    if (objc_msgSend_isEmpty(v37, v38, v39, v40, v41))
    {
    }

    else
    {
      v46 = objc_msgSend_strokeRegion(rowCopy, v42, v43, v44, v45);

      if (v46)
      {
        v47 = objc_msgSend_strokeRegion(rowCopy, v32, v33, v34, v35);
        v63.origin = objc_msgSend_boundingCellRange(v47, v48, v49, v50, v51);
        v63.size = v52;
        v53 = TSUCellRect::firstRow(&v63);

        if (v31 >= v53)
        {
          v31 = v53;
        }
      }
    }
  }

  v54 = objc_msgSend_cellID(rowCopy, v32, v33, v34, v35);
  if (v54 != 0x7FFFFFFF && (v54 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v59 = objc_msgSend_cellID(rowCopy, v55, v56, v57, v58);
    if (v31 >= v59)
    {
      v31 = v59;
    }
  }

  layoutSpacesInvalidateCoordinatesAfterRow = self->_layoutSpacesInvalidateCoordinatesAfterRow;
  if (layoutSpacesInvalidateCoordinatesAfterRow >= v31)
  {
    v61 = v31;
  }

  else
  {
    v61 = self->_layoutSpacesInvalidateCoordinatesAfterRow;
  }

  if (layoutSpacesInvalidateCoordinatesAfterRow == 0x7FFFFFFF)
  {
    v62 = v31;
  }

  else
  {
    v62 = v61;
  }

  self->_layoutSpacesInvalidateCoordinatesAfterRow = v62;
}

@end