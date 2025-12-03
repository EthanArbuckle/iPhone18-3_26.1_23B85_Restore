@interface TSTCellStateForLayout
- (BOOL)hasContent;
- (CGSize)maxSize;
- (CGSize)minSize;
- (CGSize)sizeOfText;
- (TSTCellStateForLayout)init;
- (TSUCellRect)layoutMergeRange;
- (UIEdgeInsets)paddingInsets;
- (id)copyWithZone:(_NSZone *)zone;
- (id)p_generateCellContentsAndReturnContents:(BOOL)contents;
@end

@implementation TSTCellStateForLayout

- (TSTCellStateForLayout)init
{
  v13.receiver = self;
  v13.super_class = TSTCellStateForLayout;
  v2 = [(TSTCellStateForLayout *)&v13 init];
  v3 = v2;
  if (v2)
  {
    cell = v2->_cell;
    v2->_modelCellID = 0x7FFF7FFFFFFFLL;
    v2->_cell = 0;

    v3->_layoutMergeRange = xmmword_2217E1AF8;
    v3->_forDrawing = 0;
    wpColumn = v3->_wpColumn;
    v3->_wpColumn = 0;

    v12 = *MEMORY[0x277CBF3A8];
    v3->_minSize = *MEMORY[0x277CBF3A8];
    v3->_maxSize = v12;
    v6 = *(MEMORY[0x277D81428] + 16);
    *&v3->_paddingInsets.top = *MEMORY[0x277D81428];
    *&v3->_paddingInsets.bottom = v6;
    v3->_verticalAlignment = 0;
    textStyleHandle = v3->_textStyleHandle;
    v3->_maxWidthForChildren = 1.79769313e308;
    v3->_textStyleHandle = 0;

    cellContents = v3->_cellContents;
    v3->_cellContents = 0;

    v3->_hasContentIsCached = 0;
    *&v3->_inDynamicLayout = 0;
    keyVal = v3->_keyVal;
    v3->_keyVal = 0;

    *&v3->_cellPropsRowHeight = 0;
    v3->_layoutCacheFlags = 15;
    v3->_sizeOfText = v12;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    *&v3->_pageNumber = vnegq_f64(v10);
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);
  v14 = objc_msgSend_init(v9, v10, v11, v12, v13);
  v15 = v14;
  if (v14)
  {
    *(v14 + 24) = self->_modelCellID;
    objc_storeStrong((v14 + 32), self->_cell);
    *(v15 + 96) = self->_layoutMergeRange;
    *(v15 + 12) = self->_forDrawing;
    objc_storeStrong((v15 + 72), self->_wpColumn);
    *(v15 + 112) = self->_minSize;
    *(v15 + 128) = self->_maxSize;
    *(v15 + 48) = self->_maxWidthForChildren;
    v16 = *&self->_paddingInsets.bottom;
    *(v15 + 160) = *&self->_paddingInsets.top;
    *(v15 + 176) = v16;
    *(v15 + 16) = self->_verticalAlignment;
    objc_storeStrong((v15 + 56), self->_textStyleHandle);
    objc_storeStrong((v15 + 40), self->_cellContents);
    *(v15 + 14) = self->_hasContent;
    *(v15 + 15) = self->_hasContentIsCached;
    *(v15 + 13) = self->_inDynamicLayout;
    objc_storeStrong((v15 + 64), self->_keyVal);
    *(v15 + 9) = self->_cellWraps;
    *(v15 + 8) = self->_cellPropsRowHeight;
    *(v15 + 10) = self->_needWPColumn;
    *(v15 + 11) = self->_shouldFastPathMeasureFitWidth;
    *(v15 + 20) = self->_layoutCacheFlags;
    *(v15 + 144) = self->_sizeOfText;
    *(v15 + 80) = self->_pageNumber;
    *(v15 + 88) = self->_pageCount;
  }

  return v15;
}

- (BOOL)hasContent
{
  if (!self->_hasContentIsCached)
  {
    v5 = objc_msgSend_p_generateCellContentsAndReturnContents_(self, a2, 0, v2, v3);
  }

  return self->_hasContent;
}

- (id)p_generateCellContentsAndReturnContents:(BOOL)contents
{
  contentsCopy = contents;
  if (self->_cellContents)
  {
    goto LABEL_17;
  }

  cell = self->_cell;
  if (!cell)
  {
    goto LABEL_17;
  }

  v8 = objc_msgSend_valueType(cell, a2, contents, v3, v4);
  if (v8 == 6)
  {
    if (objc_msgSend_formatType(self->_cell, v9, v10, v11, v12) == 263)
    {
      goto LABEL_6;
    }

LABEL_9:
    v26 = objc_msgSend_formattedValue(self->_cell, v9, v10, v11, v12);
    cellContents = self->_cellContents;
    self->_cellContents = v26;

    v25 = self->_cellContents;
    goto LABEL_10;
  }

  if (v8 != 9)
  {
    if (v8 == 8)
    {
LABEL_6:
      v13 = self->_cellContents;
      self->_cellContents = 0;

      v18 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v19 = objc_msgSend_richTextValue(self->_cell, v9, v10, v11, v12);
  v20 = self->_cellContents;
  self->_cellContents = v19;

  v25 = objc_msgSend_string(self->_cellContents, v21, v22, v23, v24);
LABEL_10:
  v18 = v25;
LABEL_11:
  if (objc_msgSend_currentFormatUsesAccountingStyle(self->_cell, v14, v15, v16, v17) && v18 && objc_msgSend_length(v18, v28, v29, v30, v31) && !self->_forDrawing)
  {
    v34 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v18, v32, @"\t", &stru_2834BADA0, v33);
    v35 = self->_cellContents;
    self->_cellContents = v34;
  }

LABEL_17:
  if (!self->_hasContentIsCached)
  {
    v36 = self->_cellContents;
    if (v36)
    {
      v37 = objc_msgSend_length(v36, a2, contents, v3, v4) != 0;
    }

    else
    {
      v37 = 0;
    }

    self->_hasContent = v37;
    self->_hasContentIsCached = 1;
  }

  if (contentsCopy)
  {
    v38 = self->_cellContents;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (TSUCellRect)layoutMergeRange
{
  size = self->_layoutMergeRange.size;
  origin = self->_layoutMergeRange.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (CGSize)minSize
{
  width = self->_minSize.width;
  height = self->_minSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)paddingInsets
{
  top = self->_paddingInsets.top;
  left = self->_paddingInsets.left;
  bottom = self->_paddingInsets.bottom;
  right = self->_paddingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)sizeOfText
{
  width = self->_sizeOfText.width;
  height = self->_sizeOfText.height;
  result.height = height;
  result.width = width;
  return result;
}

@end